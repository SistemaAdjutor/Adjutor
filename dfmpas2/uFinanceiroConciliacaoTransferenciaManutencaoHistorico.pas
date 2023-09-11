unit uFinanceiroConciliacaoTransferenciaManutencaoHistorico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBFormFdac, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Phys.FBDef, FireDAC.UI.Intf, FireDAC.VCLUI.Wait, FireDAC.VCLUI.Error, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Comp.Client, Data.DB, FireDAC.Comp.UI, FireDAC.Phys.IBBase, FireDAC.Comp.DataSet, cxClasses, cxLocalization, ACBrBase, ACBrEnterTab, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Mask, JvExMask, JvToolEdit, Vcl.ExtCtrls;

type
  TfrmFinanceiroConciliacaoTransferenciaManutencaoHistorico = class(TfrmBaseDBFDAC)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    edDataFinal: TJvDateEdit;
    edDataInicial: TJvDateEdit;
    btPesquisar: TBitBtn;
    btSair: TBitBtn;
    DBGrid1: TDBGrid;
    dsqAux: TDataSource;
    qAuxEMP_CODIGO: TStringField;
    qAuxBTH_DATA_EXCLUSAO: TSQLTimeStampField;
    qAuxBTR_DATA: TDateField;
    qAuxBTR_DOCUMENTO: TStringField;
    qAuxBTR_OBSERVACAO: TStringField;
    qAuxBTR_VALOR: TFMTBCDField;
    qAuxUSU_CODIGO: TIntegerField;
    qAuxBTH_USU_CODIGO: TIntegerField;
    procedure btSairClick(Sender: TObject);
    procedure btPesquisarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qAuxUSU_CODIGOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure qAuxBTH_USU_CODIGOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFinanceiroConciliacaoTransferenciaManutencaoHistorico: TfrmFinanceiroConciliacaoTransferenciaManutencaoHistorico;

implementation

uses Uteis;

{$R *.dfm}

procedure TfrmFinanceiroConciliacaoTransferenciaManutencaoHistorico.btPesquisarClick(Sender: TObject);
begin
  inherited;
  qAux.Close;
  qAux.SQL.Text := 'SELECT bt.* ' +
                   ' FROM BAN_TRANSFERENCIA_MANUT_HIST bt ' +
                   ' WHERE BTH_DATA_EXCLUSAO BETWEEN ' + DateTimeToSQL(edDataInicial.Date) + ' AND ' + DateTimeToSQL(edDataFinal.Date + 0.99999) +
                   ' ORDER BY BTH_DATA_EXCLUSAO ';
  qAux.Open;
end;

procedure TfrmFinanceiroConciliacaoTransferenciaManutencaoHistorico.btSairClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmFinanceiroConciliacaoTransferenciaManutencaoHistorico.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
  frmFinanceiroConciliacaoTransferenciaManutencaoHistorico := nil;
end;

procedure TfrmFinanceiroConciliacaoTransferenciaManutencaoHistorico.FormShow(Sender: TObject);
begin
  inherited;
  edDataInicial.Date := Date - 60;
  edDataFinal.Date := Date;
  btPesquisar.Click;
end;

procedure TfrmFinanceiroConciliacaoTransferenciaManutencaoHistorico.qAuxBTH_USU_CODIGOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if Sender.AsString <> '' then
    Text := BuscaUmDadoSqlAsString('SELECT USU_NOME FROM USUARIO WHERE USU_CODIGO = ' + Sender.AsString);
end;

procedure TfrmFinanceiroConciliacaoTransferenciaManutencaoHistorico.qAuxUSU_CODIGOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if Sender.AsString <> '' then
    Text := BuscaUmDadoSqlAsString('SELECT USU_NOME FROM USUARIO WHERE USU_CODIGO = ' + Sender.AsString);
end;

end.
