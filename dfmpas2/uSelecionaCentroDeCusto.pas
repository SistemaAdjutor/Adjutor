unit uSelecionaCentroDeCusto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBForm, Data.DBXFirebird, Data.FMTBcd, Data.DB, Data.SqlExpr, ACBrEnterTab, ACBrBase, ACBrCalculadora, Vcl.StdCtrls, Vcl.DBCtrls, Datasnap.Provider,
  Datasnap.DBClient;

type
  TfrmSelecionaCentroDeCusto = class(TfrmBaseDB)
    lkCentroCusto: TDBLookupComboBox;
    edCentroCusto: TEdit;
    dsCentroCusto: TDataSource;
    cdsCentroCusto: TClientDataSet;
    dspCentroCusto: TDataSetProvider;
    procedure lkCentroCustoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSelecionaCentroDeCusto: TfrmSelecionaCentroDeCusto;

implementation

{$R *.dfm}

uses DataMov, Nfs0001, InicioDB;

procedure TfrmSelecionaCentroDeCusto.FormCreate(Sender: TObject);
begin
  inherited;
  cdsCentroCusto.Close;
  qAux.SQL.Text := 'SELECT DISTINCT PCX_CODIGO, PCX_DESCRI ' +
                    ' FROM PCX0000 ' +
                    ' WHERE EMP_CODIGO = ' +  QuotedStr(DBInicio.Emp_Codigo) + ' AND PCX_TIPO = ''L'' ' +
                    ' ORDER BY PCX_DESCRI ';
  cdsCentroCusto.Open;
end;

procedure TfrmSelecionaCentroDeCusto.lkCentroCustoClick(Sender: TObject);
begin
  inherited;
  if DataMovimento.CdsEnf.STATE = dsBrowse then
    DataMovimento.CdsEnf.Edit;
  FormNfEntrada.dbePCX_CODIGO.Text := lkCentroCusto.KeyValue;
  DataMovimento.CdsEnf.Post;
end;

end.
