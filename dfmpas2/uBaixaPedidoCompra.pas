unit uBaixaPedidoCompra;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDbEstoqueForm, Data.DBXFirebird,
  Data.FMTBcd, Data.DB, Data.SqlExpr, ACBrEnterTab, ACBrBase, ACBrCalculadora,
  Vcl.StdCtrls, SgDbSeachComboUnit, ComboBoxRW, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids;

type
  TfrmBaixaPedidoCompra = class(TfrmBaseDbEstoque)
    Panel1: TPanel;
    btnGravaritem: TBitBtn;
    btnCancelarItem: TBitBtn;
    Panel2: TPanel;
    Panel3: TPanel;
    CbAlmoxarifado: TComboBoxRw;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    Label2: TLabel;
    NotaFiscal: TEdit;
    procedure btnGravaritemClick(Sender: TObject);
    procedure NotaFiscalExit(Sender: TObject);
  private
    { Private declarations }
  public
    var Resultado: integer;
    { Public declarations }
  end;

var
  frmBaixaPedidoCompra: TfrmBaixaPedidoCompra;

implementation

uses OCP0001, InicioDB, uteis;

{$R *.dfm}

procedure TfrmBaixaPedidoCompra.btnGravaritemClick(Sender: TObject);
var
  Resultado: integer;
begin
  inherited;
  Resultado := MessageDlg('Confirma Baixa do Pedido?', mtConfirmation, [mbYes, mbNo, mbCancel], 0);
  if Resultado = mrCancel then
    Exit;
  if Resultado = mrNo then
    Close;


  if cbAlmoxarifado.idRetorno = '' then
  begin
    uteis.aviso('Informe o almoxarifado');
    cbAlmoxarifado.SetFocus;
    Exit
  end;

  NotaFiscal.Text := StrZero(NotaFiscal.Text, 10);
  if NotaFiscal.Text = '0000000000' then
  begin
    uteis.aviso('Informe o Nº da Nota Fiscal');
    NotaFiscal.SetFocus;
    Exit;
  end;

  FormOrdCompra.SqlCdsGri.First;
  while not FormOrdCompra.SqlCdsGri.Eof do
  begin
        KardexLancamento('0',
                'MAN',
                cbAlmoxarifado.idRetorno,
                '',
                FormOrdCompra.SqlCdsGriPRD_REFER.AsString,
                '',
                FormOrdCompra.SqlCdsGriPRD_UND.AsString,
                'E',
                '',
                '',
                'Entrada pela baixa do Pedido de Compra: ' + FormOrdCompra.EdtOCP_CODIGO.Text,
                Now,
                FormOrdCompra.SqlCdsGriOCI_QTDER.AsFloat,
                NotaFiscal.Text,
                FormOrdCompra.DBeFor_Codigo.Text,
                FormOrdCompra.SqlCdsGriOCI_PRECO.AsFloat);
    ExecSQL('UPDATE OCP_IT01 SET OCI_QTDER = ' + FloatToSQL(FormOrdCompra.SqlCdsGriOCI_QTDER.AsFloat) +
            ' WHERE OCI_REGISTRO = ' + FormOrdCompra.SqlCdsGriOCI_REGISTRO.AsString);
    // FormOrdCompra.SqlCdsGri.Edit;
    // FormOrdCompra.SqlCdsGri.Post;    não está funcionando...
    FormOrdCompra.SqlCdsGri.Next;
  end;
  Close;
end;

procedure TfrmBaixaPedidoCompra.NotaFiscalExit(Sender: TObject);
begin
  inherited;
  NotaFiscal.Text := StrZero(NotaFiscal.Text, 10);
end;

end.
