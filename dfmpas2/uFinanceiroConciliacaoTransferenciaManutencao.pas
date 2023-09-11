unit uFinanceiroConciliacaoTransferenciaManutencao;

interface

uses
  Uteis,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBFormFdac, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Phys.FBDef, FireDAC.UI.Intf, FireDAC.VCLUI.Wait, FireDAC.VCLUI.Error, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Comp.Client, Data.DB, FireDAC.Comp.UI, FireDAC.Phys.IBBase, FireDAC.Comp.DataSet, cxClasses, cxLocalization, ACBrBase, ACBrEnterTab, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Mask, JvExMask, JvToolEdit, Vcl.ExtCtrls;

type
  TfrmFinanceiroConciliacaoTransferenciaManutencao = class(TfrmBaseDBFDAC)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    edDataFinal: TJvDateEdit;
    edDataInicial: TJvDateEdit;
    btPesquisar: TBitBtn;
    btSair: TBitBtn;
    qAuxBTR_REGISTRO: TIntegerField;
    qAuxEMP_CODIGO: TStringField;
    qAuxBTR_DATA: TDateField;
    qAuxBTR_TIPO: TStringField;
    qAuxBTR_DOCUMENTO: TStringField;
    qAuxBTR_OBSERVACAO: TStringField;
    qAuxBTR_CONCILIADO: TStringField;
    qAuxBTR_DATA_LANCAMENTO: TDateField;
    qAuxHCO_REGISTRO: TIntegerField;
    qAuxBTR_VALOR: TFMTBCDField;
    qAuxUSU_CODIGO: TIntegerField;
    qAuxBCO_CODIGO: TIntegerField;
    qAuxBTR_REGISTRO_CONTRAPARTIDA: TIntegerField;
    qAuxBOTAO: TStringField;
    dsqAux: TDataSource;
    DBGrid1: TDBGrid;
    procedure btPesquisarClick(Sender: TObject);
    procedure btSairClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qAuxUSU_CODIGOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure qAuxBCO_CODIGOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFinanceiroConciliacaoTransferenciaManutencao: TfrmFinanceiroConciliacaoTransferenciaManutencao;

implementation

{$R *.dfm}

uses InicioDB;

procedure TfrmFinanceiroConciliacaoTransferenciaManutencao.btPesquisarClick(Sender: TObject);
begin
  inherited;
  qAux.Close;
  qAux.SQL.Text := 'SELECT bt.* ' +
                   ' FROM BAN_TRANSFERENCIA bt ' +
                   ' WHERE BTR_DATA BETWEEN ' + DateToSQL(edDataInicial.Date) + ' AND ' + DateToSQL(edDataFinal.Date) +
                   ' ORDER BY BTR_REGISTRO ';
  qAux.Open;

end;

procedure TfrmFinanceiroConciliacaoTransferenciaManutencao.btSairClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmFinanceiroConciliacaoTransferenciaManutencao.DBGrid1CellClick(Column: TColumn);
var
  registro, contrapartida: string;
begin
  inherited;
  if DBGrid1.SelectedField.FieldName = 'BOTAO' then
  begin
    if MessageDlg('Deseja Excluir os registros de Débito/Crédito referente a este registro?', mtConfirmation, [mbYes, mbNo], 0) <> mrYes then
      exit;
    registro := qAuxBTR_REGISTRO.AsString;
    contrapartida := qAuxBTR_REGISTRO_CONTRAPARTIDA.AsString;
    qAux2.SQL.Text := 'DELETE FROM BAN_TRANSFERENCIA WHERE BTR_REGISTRO = ' + registro;
    qAux2.ExecSQL;
    qAux2.SQL.Text := 'DELETE FROM BAN_TRANSFERENCIA WHERE BTR_REGISTRO = ' + contrapartida;
    qAux2.ExecSQL;

    qAux2.SQL.Text := 'INSERT INTO BAN_TRANSFERENCIA_MANUT_HIST VALUES ( ' +
                       QuotedStr(DBInicio.Emp_Codigo) + ', ' +
                       DateTimeToSQL(now) + ', ' +
                       DateToSQL(qAuxBTR_DATA.AsDateTime) + ', ' +
                       QuotedStr(qAuxBTR_DOCUMENTO.AsString) + ', ' +
                       QuotedStr(qAuxBTR_OBSERVACAO.AsString)  + ', ' +
                       FloatToSQL(qAuxBTR_VALOR.AsFloat) + ', ' +
                       qAuxUSU_CODIGO.AsString  + ', ' +
                       DBInicio.Usuario.CODIGO + ')';
    qAux2.ExecSQL;


    qAux.Close;
    qAux.Open;
  end;
end;

procedure TfrmFinanceiroConciliacaoTransferenciaManutencao.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  BUTTON: Integer;
  R: TRect;
  bcolor: TColor;
begin

  if Column.FieldName = 'BOTAO' then
  begin
    DBGrid1.Canvas.FillRect(Rect);
    BUTTON := 0;
    R:=Rect;
    InflateRect(R,-1,-1); //Diminue o tamanho do Botão
    DrawFrameControl(DBGrid1.Canvas.Handle,R,BUTTON, BUTTON or BUTTON);
    bcolor := DBGrid1.Canvas.Brush.Color; // guarda a cor de fundo original
    DBGrid1.Canvas.Brush.Color := clBtnFace; // muda a cor de fundo
    DBGrid1.Canvas.Font.Color := clBlack;
    DrawText(DBGrid1.Canvas.Handle,'Excluir',7,R,DT_VCENTER or DT_CENTER);
    DBGrid1.Canvas.Brush.Color := bcolor; // devolve a cor original
  end;

end;
procedure TfrmFinanceiroConciliacaoTransferenciaManutencao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
  frmFinanceiroConciliacaoTransferenciaManutencao := nil;
end;

procedure TfrmFinanceiroConciliacaoTransferenciaManutencao.FormShow(Sender: TObject);
begin
  inherited;
  edDataInicial.Date := Date - 60;
  edDataFinal.Date := Date;
  btPesquisar.Click;
end;

procedure TfrmFinanceiroConciliacaoTransferenciaManutencao.qAuxBCO_CODIGOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if Sender.AsString <> '' then
    Text := BuscaUmDadoSqlAsString('SELECT BAN_APELIDO FROM BAN0000 WHERE BAN_CODIGO = ' + strzero(Sender.AsString, 4));
end;

procedure TfrmFinanceiroConciliacaoTransferenciaManutencao.qAuxUSU_CODIGOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if Sender.AsString <> '' then
    Text := BuscaUmDadoSqlAsString('SELECT USU_NOME FROM USUARIO WHERE USU_CODIGO = ' + Sender.AsString);
end;

end.
