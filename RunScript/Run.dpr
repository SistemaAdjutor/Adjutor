program Run;

uses
  Vcl.Forms,
  runscript in 'runscript.pas' {FrmScripts};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmScripts, FrmScripts);
  Application.Run;
end.
