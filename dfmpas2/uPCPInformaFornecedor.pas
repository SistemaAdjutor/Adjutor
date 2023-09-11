unit uPCPInformaFornecedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBFormFdac, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Phys.FBDef, FireDAC.UI.Intf, FireDAC.VCLUI.Wait, FireDAC.VCLUI.Error, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Comp.Client, Data.DB, FireDAC.Comp.UI, FireDAC.Phys.IBBase, FireDAC.Comp.DataSet, cxClasses, cxLocalization, ACBrBase, ACBrEnterTab, Vcl.StdCtrls, Data.FMTBcd, Vcl.Buttons, Vcl.Mask,
  JvExMask, JvToolEdit, Data.SqlExpr, SgDbSeachComboUnit;

type
  TfrmPCPInformaFornecedor = class(TfrmBaseDBFDAC)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    PesqFornecedor: TSgDbSearchCombo;
    qforne: TSQLQuery;
    qfornefor_cgc: TStringField;
    qfornefor_codigo: TStringField;
    qfornefor_razao: TStringField;
    qforneFOR_CIDADE: TStringField;
    qfornefor_bairro: TStringField;
    qforneFOR_ATUALIZA_PVENDA: TStringField;
    qforneCCT_CODIGO: TStringField;
    qforneFOR_UF: TStringField;
    edNotaNumber: TEdit;
    mpDataCompra: TJvDateEdit;
    btOk: TBitBtn;
    btCancela: TBitBtn;
    procedure edNotaNumberExit(Sender: TObject);
    procedure btOkClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    var
       pedCodigo, iopCodigo: string;
    { Public declarations }
  end;

var
  frmPCPInformaFornecedor: TfrmPCPInformaFornecedor;

implementation

uses uGerenciamentoPCP, Uteis, InicioDB;

{$R *.dfm}

procedure TfrmPCPInformaFornecedor.btOkClick(Sender: TObject);
begin
  inherited;
  if MessageDlg('Atualiza as informações?', mtConfirmation, [mbYes, mbNo], 0) <> mrYes then
    exit;
  qAux.Close;
  qAux.SQL.Text := 'UPDATE MATERIAPRIMA_ORDEMPRODUCAO ' +
                   ' SET FOR_CODIGO = ' + QuotedStr(PesqFornecedor.idRetorno) + ', ' +
                   '     ENF_NOTANUMBER = ' + QuotedStr(edNotaNumber.Text) + ', ' +
                   '     MP_DATA_COMPRA = ' + DateToSQL(mpDataCompra.Date) +
                   ' WHERE PED_CODIGO = ' + QuotedStr(pedCodigo) +
                   '   AND IOP_CODIGO = ' + QuotedStr(iopCodigo);

  qAux.ExecSQL;
end;

procedure TfrmPCPInformaFornecedor.edNotaNumberExit(Sender: TObject);
begin
  inherited;
  edNotaNumber.Text := strzero(edNotaNumber.Text, 10);
  mpDataCompra.Date := BuscaUmDadoSqlAsDateTime(
                        ' SELECT ENF_ENTRADA ' +
                        ' FROM ENF0001 ' +
                        ' WHERE FOR_CODIGO = ' + QuotedStr(PesqFornecedor.idRetorno) +
                        ' AND ENF_NOTANUMBER = ' + QuotedStr(edNotaNumber.Text)
                       );
end;

procedure TfrmPCPInformaFornecedor.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
  frmPCPInformaFornecedor := nil;
end;

end.
