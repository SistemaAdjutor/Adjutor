program SgDb_Demo;

uses
  Forms,
  Main in 'Main.pas' {frmBaseDB2},
  BaseForm in '..\..\..\BaseForm.pas' {frmBase},
  InicioDB in '..\..\..\InicioDB.pas' {DBInicio},
  BaseDBForm in '..\..\..\BaseDBForm.pas' {frmBaseDB},
  ErrorForm in '..\..\..\ErrorForm.pas' {FrmError},
  Uteis in '..\..\..\Uteis.pas',
  BaseDBPesquisaForm in '..\..\..\BaseDBPesquisaForm.pas' {frmBaseDBPesquisa},
  BaseTelaRelatorioForm in '..\..\..\BaseTelaRelatorioForm.pas' {frmBaseTelaRelatorio},
  BaseReportForm in '..\..\..\BaseReportForm.pas' {frmBaseReport},
  BaseDBEditForm in '..\..\..\BaseDBEditForm.pas' {frmBaseDBEdit},
  Unit1 in 'Unit1.pas' {frmBaseDBPesquisa1},
  Unit2 in 'Unit2.pas' {frmBaseDBEdit2};

{$R *.res}

begin

  Application.Initialize;
  if splashstart(false) then
  begin
    //Application.MainFormOnTaskbar := True;
    Application.CreateForm(TfrmBaseDB2, frmBaseDB2);
  Application.CreateForm(TfrmBaseDBPesquisa1, frmBaseDBPesquisa1);
  Application.CreateForm(TfrmBaseDBEdit2, frmBaseDBEdit2);
  end;
  Application.Run;
end.
