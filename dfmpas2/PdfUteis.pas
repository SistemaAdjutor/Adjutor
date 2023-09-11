unit PdfUteis;

interface

const
  GS_ARG_ENCODING_LOCAL = 0;
  GS_ARG_ENCODING_UTF8 = 1;
  e_Quit = -990;

type

  TGSAPIrevision = packed record
    product: PChar;
    copyright: PChar;
    revision: longint;
    revisiondat: longint;
  end;

  PGSAPIrevision = ^TGSAPIrevision;
  Pgs_main_instance = Pointer;
  PPChar = array of PChar;

  { funções e procedure da dll gsdll32.dll }
function gsapi_new_instance(pinstance: Pgs_main_instance;
  caller_handle: Pointer): Integer; stdcall; external 'gsdll32.dll';
function gsapi_init_with_args(pinstance: Pgs_main_instance; argc: Integer;
  argv: PPChar): Integer; stdcall; external 'gsdll32.dll';
function gsapi_exit(pinstance: Pgs_main_instance): Integer; stdcall;
  external 'gsdll32.dll';
procedure gsapi_delete_instance(pinstance: Pgs_main_instance); stdcall;
  external 'gsdll32.dll';
function gsapi_set_arg_encoding(pinstance: Pgs_main_instance; ENCODING: Integer)
  : Integer; stdcall; external 'gsdll32.dll';
function JuntaPdfs(outPdf: ansistring; files: array of ansistring): Integer;

implementation

function JuntaPdfs(outPdf: ansistring; files: array of ansistring): Integer;
const
  GS_ARG_ENCODING_UTF8 = 1;

var
  code, code1, gsargc, i: Integer;
  gsargv: array of pansichar;
  minst: PGSAPIrevision;
begin
  setlength(gsargv, length(gsargv) + 1);
  gsargv[high(gsargv)] := 'gs';
  setlength(gsargv, length(gsargv) + 1);
  gsargv[high(gsargv)] := '-dBATCH';
  setlength(gsargv, length(gsargv) + 1);
  gsargv[high(gsargv)] := '-dNOPAUSE';
  setlength(gsargv, length(gsargv) + 1);
  gsargv[high(gsargv)] := '-q';
  setlength(gsargv, length(gsargv) + 1);
  gsargv[high(gsargv)] := '-sDEVICE=pdfwrite';
  setlength(gsargv, length(gsargv) + 1);
  gsargv[high(gsargv)] := pansichar('-sOutputFile=' + outPdf);
  for i := Low(files) to High(files) do
  begin
    setlength(gsargv, length(gsargv) + 1);
    gsargv[high(gsargv)] := pansichar(files[i]);
  end;
  gsargc := length(gsargv);
  code := gsapi_new_instance(@minst, nil);
  if (code < 0) then
  begin
    result := 1;
    exit;
  end;
  code := gsapi_set_arg_encoding(minst, GS_ARG_ENCODING_UTF8);
  if (code = 0) then
    code := gsapi_init_with_args(minst, gsargc, @gsargv[0]);
  code1 := gsapi_exit(minst);
  if ((code = 0) or (code = e_Quit)) then
    code := code1;
  gsapi_delete_instance(minst);
  if ((code = 0) or (code = e_Quit)) then
  begin
    result := 0;
    exit;
  end;
  result := 1;
end;
end.
