unit uVerificaVersao;
{$D-}

interface

 uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IniFiles,  ShellAPI;



 Function  GetCaminhoIniFile:String;
 function  GetVersion(sFileName:string): string;
 function  EncontrouIni :Boolean;
 function  ValidaExeLocal(exeLocal:String): Boolean;

implementation

uses DataCad, DB;


//Retorna o caminho do arquivo INI
Function GetCaminhoIniFile:String;
begin
  result:= ExtractFileDir(Application.ExeName)+'\Adjutor.ini';
end;

function  EncontrouIni: Boolean;  
begin
  result :=FileExists(GetCaminhoIniFile);
end;

function  ValidaExeLocal(exeLocal:String): Boolean;
begin
  result:=True;
  //verifica se o arquivo local existe
  if not FileExists(exeLocal) then
  begin
    Application.MessageBox(Pchar('O executável local não foi encontrado.'+#13+exeLocal), 'Atenção', MB_OK+MB_ICONEXCLAMATION);
    result :=False;
   end;
end;

{Função que retorna a versão do executável}
function GetVersion(sFileName:string): string;
var
  VerInfoSize  : DWORD;
  VerInfo      : Pointer;
  VerValueSize : DWORD;
  VerValue     : PVSFixedFileInfo;
  Dummy        : DWORD;
begin
try
  VerInfoSize := GetFileVersionInfoSize(PChar(sFileName), Dummy);
  GetMem(VerInfo, VerInfoSize);
  GetFileVersionInfo(PChar(sFileName), 0, VerInfoSize, VerInfo);
  VerQueryValue(VerInfo, '\', Pointer(VerValue), VerValueSize);
  with VerValue^ do
  begin
    Result := IntToStr(dwFileVersionMS shr 16);
    Result := Result + '.' + IntToStr(dwFileVersionMS and $FFFF);
    Result := Result + '.' + IntToStr(dwFileVersionLS shr 16);
    Result := Result + '.' + IntToStr(dwFileVersionLS and $FFFF);
  end;
  FreeMem(VerInfo, VerInfoSize);
  except //se ocorrer um erro retorna a versão 1.0.0.0, vai ocoorer um erro se o arquivo não tiver versão
    Result:='1.0.0.0';
 end;
end;

end.

