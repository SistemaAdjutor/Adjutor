program Serial_Gerador;

uses
  Forms,
  FormGeraCSenha in 'FormGeraCSenha.pas' {FrmGeraCSenha},
  FormPai in 'FormPai.pas' {FrmPai},
  FormDetalhe in 'FormDetalhe.pas' {FrmDetalhe},
  FormDadosGerador in 'FormDadosGerador.pas' {Dados_Gerador: TDataModule},
  FormRel in 'FormRel.pas' {FrmRel},
  cx_pai in 'cx_pai.pas' {Pai};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmPai, FrmPai);
  Application.CreateForm(TDados_Gerador, Dados_Gerador);
  Application.CreateForm(TPai, Pai);
  Application.Run;
end.
