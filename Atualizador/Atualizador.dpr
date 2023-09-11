program Atualizador;

uses
  Forms,
  UAtualizador in 'UAtualizador.pas' {frmAtualizador},
  uVerificaVersao in 'uVerificaVersao.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmAtualizador, frmAtualizador);
  Application.Run;
end.
