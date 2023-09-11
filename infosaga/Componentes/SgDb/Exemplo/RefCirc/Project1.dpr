program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Uteis in '..\..\..\..\Uteis.pas',
  InicioDB in '..\..\..\..\InicioDB.pas',
  BaseForm in '..\..\..\..\BaseForm.pas' {frmBase},
  ErrorForm in '..\..\..\..\ErrorForm.pas' {FrmError},
  SgDbSeachComboUnit in '..\..\SgDbSeachComboUnit.pas',
  BaseDBForm in '..\..\..\..\BaseDBForm.pas' {frmBaseDB},
  BaseDBPesquisaBaseForm in '..\..\..\..\BaseDBPesquisaBaseForm.pas' {frmBaseDBPesquisaBase},
  BaseDBPesquisaForm in '..\..\..\..\BaseDBPesquisaForm.pas' {frmBaseDBPesquisa},
  SgDbAutoF8Unit in '..\..\SgDbAutoF8Unit.pas',
  BaseTelaRelatorioForm in '..\..\..\..\BaseTelaRelatorioForm.pas' {frmBaseTelaRelatorio},
  BaseReportForm in '..\..\..\..\BaseReportForm.pas' {frmBaseReport},
  BaseDBEditForm in '..\..\..\..\BaseDBEditForm.pas' {frmBaseDBEdit},
  SgDbLabeledUnit in '..\..\SgDbLabeledUnit.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TfrmBase, frmBase);
  Application.CreateForm(TFrmError, FrmError);
  Application.CreateForm(TfrmBaseDB, frmBaseDB);
  Application.CreateForm(TfrmBaseDBPesquisaBase, frmBaseDBPesquisaBase);
  Application.CreateForm(TfrmBaseDBPesquisa, frmBaseDBPesquisa);
  Application.CreateForm(TfrmBaseTelaRelatorio, frmBaseTelaRelatorio);
  Application.CreateForm(TfrmBaseReport, frmBaseReport);
  Application.CreateForm(TfrmBaseDBEdit, frmBaseDBEdit);
  Application.Run;
end.
