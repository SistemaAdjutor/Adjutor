unit uCadastroLote;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,  rxCurrEdit, Mask,  rxToolEdit, Buttons, FMTBCd, DBClient,
  Provider, DB, SqlExpr, KAR0003;

type
  TFrmCadastroProdutoLote = class(TForm)
    grp1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    edtReferencia: TEdit;
    edtDescricao: TEdit;
    edtNumeroLote: TEdit;
    RxDataFabricacao: TDateEdit;
    RxDataValidade: TDateEdit;
    CurPrecoMaximo: TCurrencyEdit;
    Bit_Cancelar: TBitBtn;
    Bit_Gravar: TBitBtn;
    SqlCdsLotes: TSQLDataSet;
    SqlCdsLotesPRDL_REGISTRO: TIntegerField;
    SqlCdsLotesEMP_CODIGO: TStringField;
    SqlCdsLotesPRDL_DATA_FABRICACAO: TDateField;
    SqlCdsLotesPRDL_DATA_VALIDADE: TDateField;
    SqlCdsLotesPRDL_LOTE: TStringField;
    SqlCdsLotesPRDL_PRECO_MAXIMO: TFMTBCdField;
    SqlCdsLotesPRDL_SALDO: TFMTBCdField;
    SqlCdsLotesPRD_CODIGO: TStringField;
    DspLotes: TDataSetProvider;
    CdsLotes: TClientDataSet;
    CdsLotesPRDL_REGISTRO: TIntegerField;
    CdsLotesEMP_CODIGO: TStringField;
    CdsLotesPRDL_DATA_FABRICACAO: TDateField;
    CdsLotesPRDL_DATA_VALIDADE: TDateField;
    CdsLotesPRDL_LOTE: TStringField;
    CdsLotesPRDL_PRECO_MAXIMO: TFMTBCdField;
    CdsLotesPRDL_SALDO: TFMTBCdField;
    CdsLotesPRD_CODIGO: TStringField;
    SqlCdsLotesPRDL_CADASTRO: TDateField;
    SqlCdsLotesPRDL_DESCRICAO: TStringField;
    CdsLotesPRDL_CADASTRO: TDateField;
    CdsLotesPRDL_DESCRICAO: TStringField;
    Label7: TLabel;
    edtIdentificacao: TEdit;
    procedure Bit_CancelarClick(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure FormShow(Sender: tObject);
    procedure Bit_GravarClick(Sender: tObject);
  private
    { Private declarations }

    function ValidaLoteCadastro(sLote:String):Boolean;
    function LocalizaLoteProduto(sProduto, sLote:String):Boolean;
    procedure LocalizaProduto;

  public
    { Public declarations }
    sPrdCodido:String;
  end;

var
  FrmCadastroProdutoLote: TFrmCadastroProdutoLote;

implementation

uses
  Uteis, Men0001, RWFunc, DataCad, Nfs0001, iniciodb;





{$R *.dfm}

procedure TFrmCadastroProdutoLote.Bit_CancelarClick(Sender: tObject);
begin
   Close;
end;

function TFrmCadastroProdutoLote.LocalizaLoteProduto(sProduto,sLote: String): Boolean;
begin
   DataCadastros.sqlUpdate.Close;
   DataCadastros.SqlUpdate.sql.text :=SQLDEF('PRODUTOS','SELECT * from PRD_LOTE','where PRD_CODIGO = '''+sPrdCodido+''' and PRDL_LOTE = '+QuotedStr(sLote)+'','PRD_CODIGO','');
   DataCadastros.sqlUpdate.Open;
   result :=  (not DataCadastros.sqlUpdate.IsEmpty) ;
   DataCadastros.sqlUpdate.Close;
end;

procedure TFrmCadastroProdutoLote.LocalizaProduto;
begin
   //Verifica se foi informado o produto
   DataCadastros.sqlUpdate.Close;
   DataCadastros.SqlUpdate.sql.text :=SQLDEF('PRODUTOS','SELECT PRD_REFER,PRD_DESCRI from PRD0000','where PRD_CODIGO = '''+sPrdCodido+'''','PRD_CODIGO','');
   DataCadastros.sqlUpdate.Open;
   if (not DataCadastros.sqlUpdate.IsEmpty) then
      begin
         edtReferencia.Text := DataCadastros.sqlUpdate.FieldByName('PRD_REFER').AsString;
         edtDescricao.Text := DataCadastros.sqlUpdate.FieldByName('PRD_DESCRI').AsString;
      end;
   DataCadastros.sqlUpdate.Close;
end;

function TFrmCadastroProdutoLote.ValidaLoteCadastro(sLote: String): Boolean;
begin
   if (sPrdCodido = '') then
         uteis.aviso('O produto não foi informado')
   else
   if (Trim(edtNumeroLote.Text) = '') then
   begin
         uteis.aviso('Informe número do lote');
         edtNumeroLote.SetFocus;
         edtNumeroLote.SelectAll;
   end
   else
   {if (LocalizaLoteProduto(sPrdCodido,edtNumeroLote.Text)) then
   begin
         uteis.aviso(Pchar('O lote '+edtNumeroLote.Text+' já está cadastrado no sistema para o produto '+edtReferencia.Text+'-'+edtDescricao.Text));
         edtNumeroLote.SetFocus;
         edtNumeroLote.SelectAll;
   end
   else}
   if (uteis.confirmacao ( ('Confirma a gravação do lote '+edtNumeroLote.Text+' para o produto '+edtReferencia.Text+'-'+edtDescricao.Text))=mrYes) then
   begin
       //Grava Lote
       CdsLotes.Insert;
       CdsLotesEMP_CODIGO.AsString := dbInicio.Empresa.EMP_CODIGO;
       CdsLotesPRDL_DATA_FABRICACAO.AsDateTime := RxDataFabricacao.Date;
       CdsLotesPRDL_DATA_VALIDADE.AsDateTime := RxDataValidade.Date;
       CdsLotesPRDL_LOTE.AsString := 'LT'+Trim(edtNumeroLote.Text);
       CdsLotesPRDL_PRECO_MAXIMO.AsCurrency := CurPrecoMaximo.Value;
       CdsLotesPRD_CODIGO.AsString := sPrdCodido;
       CdsLotesPRDL_CADASTRO.AsDateTime := Date;
       CdsLotesPRDL_DESCRICAO.AsString := edtIdentificacao.Text;
       CdsLotes.ApplyUpdates(0);
       CdsLotes.Refresh;
       if (Assigned(FrmKardexLancamentoManual)) then
             FrmKardexLancamentoManual.CbLoteProduto.EditValue := CdsLotesPRDL_REGISTRO.AsInteger
       else
       if (Assigned(FormNfEntrada)) then
             FormNfEntrada.CbLoteProduto.EditValue := CdsLotesPRDL_REGISTRO.AsInteger;
       Close;
     end
     else
     begin
           edtNumeroLote.SetFocus;
           edtNumeroLote.SelectAll;
     end;


end;

procedure TFrmCadastroProdutoLote.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
   CdsLotes.Close;
end;

procedure TFrmCadastroProdutoLote.FormShow(Sender: tObject);
begin
   LocalizaProduto;
   RxDataFabricacao.Date := now;
   CdsLotes.Close;
   if (sPrdCodido <> '') then
      begin
         CdsLotes.CommandText := 'SELECT T1.* FROM PRD_LOTE T1 WHERE T1.PRD_CODIGO = '+QuotedStr(sPrdCodido)+' ORDER BY T1.PRDL_DATA_VALIDADE ';
         CdsLotes.Open;
      end;
end;

procedure TFrmCadastroProdutoLote.Bit_GravarClick(Sender: tObject);
begin
   ValidaLoteCadastro(edtNumeroLote.Text);
end;

end.
