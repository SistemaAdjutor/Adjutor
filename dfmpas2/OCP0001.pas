{************************************************************************
 Programa...: OCP0001  - Nome formulario = FormOrdCompra
 Objetivo...: Ordem de compra (pela cotação)ou (manual)
 Analista...: Márcio Neu Pacheco
 Programador: Jackson e Márcio

 Comentários:

 Criação..........: Mar/99
 Ultima Alteração.: mar/02
 Alterado por.....: Márcio
*************************************************************************}
unit OCP0001;

interface

uses  System.Variants, Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, DBCtrls, Grids, DBGrids, Mask, ExtCtrls, Db, RwFunc,
  DBTables,  rxToolEdit, RXDBCtrl,  rxCurrEdit, Provider, SqlExpr,SqlClientDataSet, DBClient,
  DBLocal, DBLocalS, Menus, ComboBoxRw, RwSQLComando, frxClass, frxDBSet, system.StrUtils,
  frxExportPDF,JPEG, SimpleDS, Data.DBXFirebird, SgDbSeachComboUnit, Data.FMTBcd, BaseForm, ACBrCalculadora, ACBrBase, ACBrEnterTab, JvExMask, JvToolEdit, JvDBControls,
  JvExControls, JvArrowButton,BaseDBForm;

type
  TFormOrdCompra = class(TfrmBaseDB)
    SqlCdsTra: TSQLClientDataSet;
    SqlCdsRef: TSQLClientDataSet;
    SqlCdsGri: TClientDataSet;
    DsGrid: TDataSource;
    SqlCdsRefPRD_REFER: TStringField;
    SqlCdsRefPRD_DESCRI: TStringField;
    SqlCdsRefPRD_ESTOQUE: TFMTBCdField;
    SqlCdsRefEMP_CODIGO: TStringField;
    SqlCdsTraTRP_CODIGO: TStringField;
    SqlCdsTraTRP_RAZAO: TStringField;
    SqlCdsTraTRP_FONE: TStringField;
    SqlCdsTraTRP_CONTATO: TStringField;
    SqlCdsTraEMP_CODIGO: TStringField;
    SqlCdsGriOCI_TOTAL_CC: TCurrencyField;
    SqlCdsRefPRD_ENTRADA: TFMTBCdField;
    SqlCdsRefPRD_SAIDA: TFMTBCdField;
    PopupMenu1: TPopupMenu;
    Excluir1: TMenuItem;
    Alterar1: TMenuItem;
    SqlCdsRefPRD_PENDENTE: TFMTBCdField;
    SqlCdsGriOCI_STATUS_CC: TStringField;
    frxPedido: TfrxReport;
    frxPDFExport1: TfrxPDFExport;
    frxDBPedido: TfrxDBDataset;
    frxDBPedidoItem: TfrxDBDataset;
    frxDBFornecedor: TfrxDBDataset;
    frxDBTransportadora: TfrxDBDataset;
    SqlCdsGriPRD_FISICO_CC: TCurrencyField;
    SqlCdsRefPRD_PCUSTO: TFMTBCdField;
    Panel1: TPanel;
    Label4: TLabel;
    Label19: TLabel;
    EdtOCP_CODIGO: TEdit;
    DbeRequerente: TDBEdit;
    SqlCdsForRES: TSqlClientDataSet;
    SqlCdsForRESFOR_CODIGO: TStringField;
    SqlCdsForRESFOR_RAZAO: TStringField;
    SqlCdsForRESFOR_FONCONT: TStringField;
    SqlCdsForRESFOR_FAXCONT: TStringField;
    SqlCdsForRESFOR_CONTATO: TStringField;
    SqlCdsForRESFOR_EMAILCONT: TStringField;
    SqlCdsForRESFOR_EMAIL: TStringField;
    SqlCdsForRESPCL_CODIGO: TStringField;
    SqlCdsForRESEMP_CODIGO: TStringField;
    SqlCdsForRESFOR_ENDERE: TStringField;
    SqlCdsForRESFOR_CIDADE: TStringField;
    SqlCdsForRESFOR_BAIRRO: TStringField;
    SqlCdsForRESFOR_UF: TStringField;
    DsFor: TDataSource;
    Panel2: TPanel;
    GrbDados04: TGroupBox;
    Panel4: TPanel;
    Bit_Sair: TBitBtn;
    Bit_Cancelar: TBitBtn;
    Bit_Gravar: TBitBtn;
    Bit_Excluir: TBitBtn;
    Bit_novo: TBitBtn;
    Bit_Lista: TBitBtn;
    Bit_Relatorio: TBitBtn;
    btnMail: TBitBtn;
    DbGridCompra: TDBGrid;
    Panel5: TPanel;
    Label12: TLabel;
    CurrTotal: TCurrencyEdit;
    Label9: TLabel;
    CurreIpi: TCurrencyEdit;
    Label13: TLabel;
    CurrTotGeral: TCurrencyEdit;
    Edt_Status: TEdit;
    Label18: TLabel;
    GbItem: TGroupBox;
    Label10: TLabel;
    Label11: TLabel;
    Label35: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label37: TLabel;
    Label24: TLabel;
    EdDescricao: TEdit;
    CurrQtde: TCurrencyEdit;
    CurrPrecoBruto: TCurrencyEdit;
    CurrSaldo: TCurrencyEdit;
    CurrIpi: TCurrencyEdit;
    edtCusto: TCurrencyEdit;
    SpPesquisa: TSpeedButton;
    qGri: TSQLQuery;
    dspGri: TDataSetProvider;
    cbUnidade: TComboBox;
    SqlCdsRefPRD_UND: TStringField;
    Label25: TLabel;
    GrbDados03: TGroupBox;
    DBM_OBS: TDBMemo;
    Panel3: TPanel;
    SpeedButton1: TSpeedButton;
    CurrICMSstper: TCurrencyEdit;
    Label26: TLabel;
    CurrTotalST: TCurrencyEdit;
    Label28: TLabel;
    Label29: TLabel;
    lcodfornecedor: TLabel;
    SqlCdsRefPRDC_REFERENCIA: TStringField;
    SqlCdsRefPRDC_DESSCRICAO: TStringField;
    ldescricaofornecedor: TLabel;
    Label31: TLabel;
    btnImpressao: TJvArrowButton;
    frxRefEmpresa: TfrxReport;
    frxCodFornecedor: TfrxReport;
    PopupMenu2: TPopupMenu;
    miReferenciaEmpresa: TMenuItem;
    CdigoFornecedor1: TMenuItem;
    EmpresaxFornecedor1: TMenuItem;
    btnEmpresa: TBitBtn;
    btnGravaritem: TBitBtn;
    btnCancelarItem: TBitBtn;
    qProduto: TSQLQuery;
    qProdutoPRD_CODIGO: TStringField;
    qProdutoPRD_REFER: TStringField;
    qProdutoPRD_DESCRI: TStringField;
    qProdutoPRD_CODBARRA: TStringField;
    qProdutoPRD_PRODSERV: TStringField;
    qProdutoPRD_UND: TStringField;
    qProdutoPRD_PVENDA: TFMTBCDField;
    cbReferencia: TSgDbSearchCombo;
    pcabecalho: TPanel;
    GrbFornecedor: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label1: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label23: TLabel;
    DbeFOR_FONCONT: TDBEdit;
    DbeFOR_FAXCONT: TDBEdit;
    DbeFOR_CONTATO: TDBEdit;
    DBeEmailContato: TDBEdit;
    DBeFor_Codigo: TDBEdit;
    DBeEmail: TDBEdit;
    CbFornecedor1: TComboBoxRw;
    GrbDados01: TGroupBox;
    Label20: TLabel;
    Label22: TLabel;
    Label27: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label5: TLabel;
    DBeOCP_FRETE: TDBEdit;
    DBeOCP_DESPESAS: TDBEdit;
    DbeOCP_ICMS: TDBEdit;
    DBePcl_codigo: TDBEdit;
    DbeOCP_DTEntrega: TJvDBDateEdit;
    DbeOCP_DTEMIS: TJvDBDateEdit;
    GrbDados02: TGroupBox;
    Label38: TLabel;
    Label6: TLabel;
    Label21: TLabel;
    DbeTRP_CODIGO: TDBEdit;
    CbFreteT: TComboBox;
    Edt_Fone: TEdit;
    Edt_Contato: TEdit;
    CbTransp1: TComboBoxRw;
    BtnDuplicar: TBitBtn;
    qInscricaoEstadual: TSQLQuery;
    dspInscricaoEstadual: TDataSetProvider;
    cdsInscricaoEstadual: TClientDataSet;
    dsInscricaoEstadual: TDataSource;
    dblcInscricaoEstadual: TDBLookupComboBox;
    lbIE: TLabel;
    Label30: TLabel;
    currICMS: TCurrencyEdit;
    Label32: TLabel;
    currDescontoItem: TCurrencyEdit;
    rgTipoDesconto: TRadioGroup;
    SqlCdsGriOCI_TIPO_DESCONTO_CC: TStringField;
    qGriPRDC_REFERENCIA: TStringField;
    qGriPRDC_DESSCRICAO: TStringField;
    qGriPRD_DESCRI: TMemoField;
    qGriPRD_UND: TStringField;
    qGriPRD_ESTOQUE: TFMTBCDField;
    qGriPRD_ENTRADA: TFMTBCDField;
    qGriPRD_SAIDA: TFMTBCDField;
    qGriPRD_PENDENTE: TFMTBCDField;
    qGriOCI_REGISTRO: TIntegerField;
    qGriOCP_CODIGO: TStringField;
    qGriPRD_REFER: TStringField;
    qGriOCI_QTDES: TFMTBCDField;
    qGriOCI_QTDER: TFMTBCDField;
    qGriOCI_PRECO: TFMTBCDField;
    qGriOCI_IPI: TFMTBCDField;
    qGriOCI_SITUACAO: TStringField;
    qGriEMP_CODIGO: TStringField;
    qGriOCI_ICMS: TFMTBCDField;
    qGriOCI_CFOP: TStringField;
    qGriOCI_DESCRICAO: TMemoField;
    qGriPRD_UND_1: TStringField;
    qGriOCI_PERC_ICMS_ST: TFMTBCDField;
    qGriOCI_NOTADIFERE: TStringField;
    qGriOCI_NOTADIFERE_MOTIVO: TStringField;
    qGriOCI_DESCONTO: TFMTBCDField;
    qGriOCI_TIPO_DESCONTO: TStringField;
    SqlCdsGriPRDC_REFERENCIA: TStringField;
    SqlCdsGriPRDC_DESSCRICAO: TStringField;
    SqlCdsGriPRD_DESCRI: TMemoField;
    SqlCdsGriPRD_UND: TStringField;
    SqlCdsGriPRD_ESTOQUE: TFMTBCDField;
    SqlCdsGriPRD_ENTRADA: TFMTBCDField;
    SqlCdsGriPRD_SAIDA: TFMTBCDField;
    SqlCdsGriPRD_PENDENTE: TFMTBCDField;
    SqlCdsGriOCI_REGISTRO: TIntegerField;
    SqlCdsGriOCP_CODIGO: TStringField;
    SqlCdsGriPRD_REFER: TStringField;
    SqlCdsGriOCI_QTDES: TFMTBCDField;
    SqlCdsGriOCI_QTDER: TFMTBCDField;
    SqlCdsGriOCI_PRECO: TFMTBCDField;
    SqlCdsGriOCI_IPI: TFMTBCDField;
    SqlCdsGriOCI_SITUACAO: TStringField;
    SqlCdsGriEMP_CODIGO: TStringField;
    SqlCdsGriOCI_ICMS: TFMTBCDField;
    SqlCdsGriOCI_CFOP: TStringField;
    SqlCdsGriOCI_DESCRICAO: TMemoField;
    SqlCdsGriPRD_UND_1: TStringField;
    SqlCdsGriOCI_PERC_ICMS_ST: TFMTBCDField;
    SqlCdsGriOCI_NOTADIFERE: TStringField;
    SqlCdsGriOCI_NOTADIFERE_MOTIVO: TStringField;
    SqlCdsGriOCI_DESCONTO: TFMTBCDField;
    SqlCdsGriOCI_TIPO_DESCONTO: TStringField;
    qProdutoLIN_DESCRI: TStringField;
    SqlCdsForRESTRP_CODIGO: TStringField;
    SqlCdsForRESFOR_CGC: TStringField;
    cdsFor: TClientDataSet;
    qFor: TSQLQuery;
    qForFOR_CODIGO: TStringField;
    qForFOR_ENDERE: TStringField;
    qForFOR_CIDADE: TStringField;
    qForFOR_BAIRRO: TStringField;
    qForFOR_UF: TStringField;
    qForFOR_CGC: TStringField;
    qForFOR_RAZAO: TStringField;
    qForFOR_FONCONT: TStringField;
    qForFOR_FAXCONT: TStringField;
    qForFOR_CONTATO: TStringField;
    qForFOR_EMAILCONT: TStringField;
    qForFOR_EMAIL: TStringField;
    qForPCL_CODIGO: TStringField;
    qForEMP_CODIGO: TStringField;
    qForTRP_CODIGO: TStringField;
    dspFor: TDataSetProvider;
    cdsForFOR_CODIGO: TStringField;
    cdsForFOR_ENDERE: TStringField;
    cdsForFOR_CIDADE: TStringField;
    cdsForFOR_BAIRRO: TStringField;
    cdsForFOR_UF: TStringField;
    cdsForFOR_CGC: TStringField;
    cdsForFOR_RAZAO: TStringField;
    cdsForFOR_FONCONT: TStringField;
    cdsForFOR_FAXCONT: TStringField;
    cdsForFOR_CONTATO: TStringField;
    cdsForFOR_EMAILCONT: TStringField;
    cdsForFOR_EMAIL: TStringField;
    cdsForPCL_CODIGO: TStringField;
    cdsForEMP_CODIGO: TStringField;
    cdsForTRP_CODIGO: TStringField;
    procedure MudaCorCampos(Sender: tObject);
    procedure Bit_CancelarClick(Sender: tObject);
    procedure verificaEdicao;
    procedure Bit_SairClick(Sender: tObject);
    procedure CalcTotal;
    procedure FormShow(Sender: tObject);
    procedure DbeFor_CodigoExit(Sender: tObject);
    procedure Bit_GravarClick(Sender: tObject);
    procedure EdtOCP_CODIGOExit(Sender: tObject);
    procedure Bit_ExcluirClick(Sender: tObject);
    procedure Bit_novoClick(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure Bit_ListaClick(Sender: tObject);
    procedure ChekStaTusMouseDown(Sender: tObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Bit_RelatorioClick(Sender: tObject);
    procedure DbGridCompraDblClick(Sender: tObject);
    procedure FormCloseQuery(Sender: tObject; var CanClose: Boolean);
    procedure DbeOCP_DTEMISExit(Sender: tObject);
    procedure DbeTRP_CODIGOExit(Sender: tObject);
    procedure CbFornecedorChange(Sender: tObject);
    procedure CbTranspChange(Sender: tObject);
    procedure FormKeyPress(Sender: tObject; var Key: Char);
    procedure SqlCdsGriCalcFields(DataSet: TDataSet);
    procedure DbGridCompraDrawColumnCell(Sender: tObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure SpPesquisaClick(Sender: tObject);
    procedure DbeOCP_DTEntregaExit(Sender: tObject);
    procedure Excluir1Click(Sender: tObject);
    procedure Alterar1Click(Sender: tObject);
    procedure DbGridCompraKeyPress(Sender: tObject; var Key: Char);
    procedure CbFreteTChange(Sender: tObject);
    procedure EdtOCP_CODIGOClick(Sender: tObject);
    procedure BuscaOC;
    procedure CurrQtdeExit(Sender: tObject);
    procedure CurrPrecoBrutoExit(Sender: tObject);
    procedure DBeFor_CodigoClick(Sender: tObject);
    procedure CbFornecedor1Click(Sender: tObject);
    procedure CbTransp1Click(Sender: tObject);
    procedure frxPedidoGetValue(const VarName: String; var Value: Variant);
    procedure btnMailClick(Sender: tObject);
    procedure SpeedButton1Click(Sender: tObject);
    procedure SqlCdsGriPRD_DESCRIGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure FormCreate(Sender: tObject);
    procedure CbFornecedor1Select(Sender: TObject);
    procedure CbTransp1Select(Sender: TObject);
    procedure SqlCdsGriAfterPost(DataSet: TDataSet);
    procedure SqlCdsGriBeforeDelete(DataSet: TDataSet);
    procedure SqlCdsGriAfterDelete(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure ImprimeModelo1;
    procedure ImprimeModelo2;
    procedure ImprimeModelo3;
    procedure miReferenciaEmpresaClick(Sender: TObject);
    procedure CdigoFornecedor1Click(Sender: TObject);
    procedure EmpresaxFornecedor1Click(Sender: TObject);
    procedure btnEmpresaClick(Sender: TObject);
    procedure btnGravaritemClick(Sender: TObject);
    procedure cbReferenciaExit(Sender: TObject);
    procedure cbReferenciaEnter(Sender: TObject);
    procedure btnCancelarItemClick(Sender: TObject);
    procedure cbReferenciaSelect(Sender: TObject);
    procedure CbFornecedor1ButtonClick(Sender: TObject);
    procedure BtnDuplicarClick(Sender: TObject);
    procedure AlteraCorpo(Sender: TObject);
    procedure qGriPRD_DESCRIGetText(Sender: TField; var Text: string; DisplayText: Boolean);

  private
    bMensagemPedidoCompra : string;
    fAlterou : boolean;
    fAlterandoItem : boolean;
    CampoEdit     :TEdit;
    CampoDBEdit   :TDBEdit;
    CampoData     :TDBDateEdit;
    CampoBox      :TComboBox;
    CampoCombo    :TComboBox;
    CampoCurrency :TCurrencyEdit;
    //
    sMensagem : String;
    //
    procedure MostraDados;
    procedure LimparDados;
    procedure LimparItems;
    procedure HabilitaBotoes;
    procedure BuscaItensOC;
    procedure GravaItem;
    procedure AlteraItem;
    procedure PreenchaCombo(CONST sAcao:String);

    procedure Alterar_Itens;
    procedure VisualizaSaldoEstoque;
    procedure Buscar_Dados_Fornecedor(const sCodForn:String);
    procedure Buscar_Dados_Transportadora(const sCodTra:String);
    procedure SetCommandTextTranspAndOpen(CONST  TxtSql:String );
    function Verifica_Transportadora_Ativo(const sCodTran: String): Boolean;
    procedure HabilitaEdicaoItem(pFlg: Boolean);
    procedure GetCusto;
    procedure AtualizaTipoFrete(codTransp: string);

  public
    { Public declarations }
     TemRecebimento : Boolean;
     wQtdeAnterior  : Currency;
     wRef_anterior  : String;
     wAlterar_Itens : Boolean;
     wIncluir       : Boolean;


     stream:TStream;
     JpedImage:TJPEGImage;
     MinhaImagem:TJPEGImage;
     procedure DesabilitaBotoes;
     procedure BotoesAcesso;
  end;

var
  FormOrdCompra: TFormOrdCompra;

implementation

uses Uteis, GimpOC, DataMov, DataCad, iniciodb,
     Prd0006, Men0001, {uProcedimentos,} EMAIL0001,uCadastroFrases, DataMov2, uPesqEmpresa, uPesqOCP, For0002;

{$R *.DFM}

var WInsert : BOOLEAN;

procedure TFormOrdCompra.MudaCorCampos(Sender: tObject);
begin
    {cor dos campos TDBEdit}
    if Assigned(CampoDbEdit) then
       begin
          CampoDbEdit.color := clWindow;
       end;
    if ActiveControl is TDBEdit then
       begin
          if TDBEdit(ActiveControl).color = $00D7D7D7 then
             begin
                exit;
             end;
          TDBEdit(ActiveControl).color := $0080FFFF;
          CampoDbEdit := TDBEdit(ActiveControl);
       end
    else
       begin
          CampoDbEdit := nil;
       end;
    {CampoEdit :TEdit}
    if Assigned(CampoEdit) then
       begin
          CampoEdit.color := clWindow;
       end;
    if ActiveControl is TEdit then
       begin
          if TEdit(ActiveControl).color = $00D7D7D7 then
             begin
                exit;
             end;
          TEdit(ActiveControl).color := $0080FFFF;
          CampoEdit := TEdit(ActiveControl);
       end
    else
       begin
          CampoEdit := nil;
       end;
    {CampoData  :TDBDateEdit}
    if Assigned(CampoData) then
       begin
          CampoData.color := clWindow;
       end;
    if ActiveControl is TDBDateEdit then
       begin
          TDBDateEdit(ActiveControl).color := $0080FFFF;
          CampoData := TDBDateEdit(ActiveControl);
       end
    else
       begin
          CampoData := nil;
       end;
    {cor dos campos TCampoBox}
    if Assigned(CampoBox) then
       begin
           CampoBox.color := clWindow;
       end;
    if ActiveControl is TComboBox then
       begin
           TComboBox(ActiveControl).color := $0080FFFF;
           CampoBox := TComboBox(ActiveControl);
       end
    else
       begin
           CampoBox := nil;
       end;
    {currency}
    if Assigned(CampoCurrency) then
       begin
          CampoCurrency.color := clWindow;
       end;
    if ActiveControl is TCurrencyEdit then
       begin
          if TComboBox(ActiveControl).color = $00D7D7D7 then
             begin
                 exit;
             end
          else
             begin
                TCurrencyEdit(ActiveControl).color := $0080FFFF;
                CampoCurrency := TCurrencyEdit(ActiveControl);
             end;   
       end
    else
       begin
          CampoCurrency := nil;
       end;
   {CampoComboBox}
    if Assigned(CampoCombo) then
       begin
           CampoCombo.color := clWindow;
       end;
   if ActiveControl is TComboBox then
      begin
          if TComboBox(ActiveControl).color = $00D7D7D7 then
             begin
                 exit;
             end;
          TComboBox(ActiveControl).color := $0080FFFF;
          CampoCombo := TComboBox(ActiveControl);
      end
   else
      begin
          CampoCombo := nil;
      end;
end;

procedure TFormOrdCompra.verificaEdicao;
begin

    // verifica estado da tabela em edicao e inclusao
    if DataMovimento.CdsOrdCompra.State in [dsEdit,dsInsert] then
      begin
          if uteis.confirmacao ( 'Deseja salvar alterações ?') = idyes then
             begin
                DataMovimento.CdsOrdCompra.ApplyUpdates(0);
                HabilitaBotoes;
             end
          else
             begin
                 DataMovimento.CdsOrdCompra.Cancel;
                 HabilitaBotoes;
             end;
      end;

end;

procedure TFormOrdCompra.HabilitaBotoes;
begin
    BotoesAcesso;
    Bit_novo.Enabled      := True;
    Bit_Excluir.Enabled   := not CdsFor.IsEmpty;
    Bit_Sair.Enabled      := True;
    Bit_Relatorio.Enabled := True;
    Bit_Lista.Enabled     := True;
    Bit_Gravar.Enabled    := False;
    Bit_Cancelar.Enabled  := False;
    EdtOCP_CODIGO.Color   := clWindow;
    EdtOCP_CODIGO.Enabled := True;
    btnImpressao.Enabled := True;
    btnMail.Enabled := True;
    btnEmpresa.Enabled :=  not DataMovimento.CdsOrdCompra.IsEmpty and (DataMovimento.CdsOrdCompraOCP_STATUS.AsString = 'P') and NOT TemRecebimento ;
end;

procedure TFormOrdCompra.DesabilitaBotoes;
begin
    BotoesAcesso;
    Bit_novo.Enabled      := False;
    Bit_Excluir.Enabled   := False;
    Bit_Sair.Enabled      := False;
    Bit_Relatorio.Enabled := False;
    Bit_Lista.Enabled     := False;
    Bit_Gravar.Enabled    := True;
    Bit_Cancelar.Enabled  := True;
    btnEmpresa.Enabled    := False;
    btnImpressao.Enabled  := False;
    btnMail.Enabled       := False;
    EdtOCP_CODIGO.Color   := clSilver;
    EdtOCP_CODIGO.Enabled := False;

end;

procedure TFormOrdCompra.FormShow(Sender: tObject);
begin
    inherited;

    EdtOCP_CODIGO.Hint := 'Digite o Código do pedido de compra para consulta. '+#13+'Pressione <Esc> para nova consulta !';    
    {ativa o método ao evento OnActiveControlChange}
    Screen.OnActiveControlChange   := MudaCorCampos;

    PreenchaCombo('A');
    LimparDados;
    HabilitaBotoes;


    wAlterar_Itens := False;
    wIncluir       := False;
    {PARAMETRO PARA CONFIGURAR CASAS DECIMAIS DA ORDEM DE COMPRAS}

    edtCusto.DecimalPlaces := FrmMenu.iCasaDecimaisOcp;
    SqlCdsRefPRD_PCUSTO.DisplayFormat:='###,###,##0.'+StrZero('0', FrmMenu.iCasaDecimaisOcp);

    SqlCdsGriOCI_PRECO.DisplayFormat         := '###,###,##0.'+StrZero('0', FrmMenu.iCasaDecimaisOcp);
    SqlCdsGriOCI_TOTAL_CC.DisplayFormat      := '###,###,##0.'+StrZero('0', FrmMenu.iCasaDecimaisOcp);
    SqlCdsGriOCI_IPI.DisplayFormat           := '###,###,##0.'+StrZero('0', FrmMenu.iCasaDecimaisOcp);
    SqlCdsGriOCI_ICMS.DisplayFormat          := '###,###,##0.'+StrZero('0', FrmMenu.iCasaDecimaisOcp);
    SqlCdsGriOCI_PERC_ICMS_ST.DisplayFormat  := '###,###,##0.'+StrZero('0', FrmMenu.iCasaDecimaisOcp);

    CurrPrecoBruto.DisplayFormat             := '###,###,##0.'+StrZero('0', FrmMenu.iCasaDecimaisOcp);
    CurrPrecoBruto.DecimalPlaces             := FrmMenu.iCasaDecimaisOcp;
    CurreIpi.DisplayFormat                   := '###,###,##0.'+StrZero('0', FrmMenu.iCasaDecimaisOcp);
    CurreIpi.DecimalPlaces                   := FrmMenu.iCasaDecimaisOcp;
    CurrIpi.DisplayFormat                    := '###,###,##0.'+StrZero('0', FrmMenu.iCasaDecimaisOcp);
    CurrIpi.DecimalPlaces                    := FrmMenu.iCasaDecimaisOcp;
    currICMS.DisplayFormat                   := '###,###,##0.'+StrZero('0', FrmMenu.iCasaDecimaisOcp);
    currICMS.DecimalPlaces                   := FrmMenu.iCasaDecimaisOcp;
    CurrICMSstper.DisplayFormat              := '###,###,##0.'+StrZero('0', FrmMenu.iCasaDecimaisOcp);
    CurrICMSstper.DecimalPlaces              := FrmMenu.iCasaDecimaisOcp;

    SpPesquisa.BringToFront ;

    if DBInicio.GetParametroSistema('PMT_MULTIPLAS_IE') = 'S' then
    begin
      qInscricaoEstadual.Close;
      cdsInscricaoEstadual.Close;
      qInscricaoEstadual.SQL.Clear;
      qInscricaoEstadual.SQL.Text := 'SELECT EMI_CODIGO, EMI_IE || CAST('' - '' AS VARCHAR(3)) || EMI_DESCRICAO AS EMI_DESCRICAO FROM EMP_MULTIPLAS_IE;';
      qInscricaoEstadual.Open;
      cdsInscricaoEstadual.Open;
    end
    else
    begin
        lbIE.Visible := False;
        dblcInscricaoEstadual.Visible:= False;
    end;


    application.ProcessMessages;
end;

procedure TFormOrdCompra.Bit_novoClick(Sender: tObject);
begin
  if not fAlterou  then
  begin

  try
    btnEmpresa.Enabled := False;
    WInsert := True;  // util p/ deletar itens no caso de nao confirmar Insert
    wIncluir:= True;  // Utilizado para incluir a ordem de compra;
    LimparDados;
    DbGridCompra.Enabled :=True;

    btnGravaritem.Enabled := False;
    btnCancelarItem.Enabled := False;
    pcabecalho.Enabled := True;
    DbGridCompra.Enabled := True;

      if not DataMovimento.CdsOrdCompra.Active then
         DataMovimento.CdsOrdCompra.open;

      DataMovimento.DsOrdCompra.AutoEdit   := True;

          DataMovimento.CdsOrdCompra.Insert;
          EdtOCP_CODIGO.Text := StrZero(SequenciadorPRC(DataCadastros.SQLConnection1, '001' ,'OCP0000', 'OCP_CODIGO', 0),6);

          DataMovimento.CdsOrdCompraOCP_CODIGO.AsString := EdtOCP_CODIGO.Text;
          DbeOCP_DTEMIS.Date    := now;
          //DBEOpv_codigo.Field.AsString := '004';
          // DataMovimento.CdsOrdCompraOPV_CODIGO.AsString := '004';
          DataMovimento.CdsOrdCompraOCP_STATUS.AsString  := 'P';  // P= PENDENTE C=CONCLUIDO
          DataMovimento.CdsOrdCompraOCP_ICMS.AsCurrency     := 0;
          DataMovimento.CdsOrdCompraOCP_FRETE.AsCurrency    := 0;
          DataMovimento.CdsOrdCompraOCP_DESPESAS.AsCurrency := 0;
          DataMovimento.CdsOrdCompraEMP_CODIGO.AsString     := dbInicio.EMPRESA.EMP_CODIGO;
          DataMovimento.CdsOrdCompraOCP_OBS.AsString        := bMensagemPedidoCompra;
          //
          //DBEOpv_codigo.Enabled := True;
          //CbxOpv.Enabled        := True;
          //
          if DbeRequerente.CanFocus then
            DbeRequerente.SetFocus;
          {limpa dados da tela}
          Edt_Status.Text := 'PENDENTE';
          BuscaItensOC;
          CbFreteT.ItemIndex := -1;
          DesabilitaBotoes;

    finally

    end;
  end;
     fAlterou := False;
     uteis.HabilitaIncluir('MovimentosPedido de Compra',DBInicio.Usuario.CODIGO,FormOrdCompra);
end;

procedure TFormOrdCompra.Bit_ExcluirClick(Sender: tObject);
Var
  wStatus : Boolean;
begin
    if EdtOCP_CODIGO.Text = '' then
       begin
           uteis.aviso('Informe o código do pedido de compra !');
           EdtOCP_CODIGO.SelectAll;
           if EdtOCP_CODIGO.CanFocus then
             EdtOCP_CODIGO.SetFocus;
           exit;
       end;
    if DataMovimento.CdsOrdCompra.IsEmpty Then   //evita exclussão de registro
       begin                                     // em uma Tabela Vazia.
           messagebeep($ffff);
           uteis.aviso('Não existe pedido de compra a ser excluída!');
           exit;
       end;
    if (DataMovimento.CdsOrdCompraOCP_STATUS.AsString = 'P') then
       begin

           SqlCdsGri.DisableControls;
           SqlCdsGri.First;
           wStatus := True;
           while not SqlCdsGri.Eof do
             begin
                 if (SqlCdsGriOCI_SITUACAO.AsString = 'C') OR (SqlCdsGriOCI_SITUACAO.AsString = 'F') then
                    wStatus := False;
                 SqlCdsGri.Next;
             end;
           SqlCdsGri.EnableControls;

           if (wStatus) then
              begin
                  if uteis.confirmacao ( 'Deseja excluir esta ordem?')= Mryes then
                     begin

                         SqlCdsGri.DisableControls;
                         SqlCdsGri.First;
                         while not SqlCdsGri.Eof do
                           begin
                               // estornar a quant. do campo PRD_PENDENTE do estoque de Produto
                               if (SqlCdsGriOCI_SITUACAO.AsString = 'P') then
                                  begin

                                        DataCadastros.sqlUpdate.Close;
                                        DataCadastros.SqlUpdate.sql.text :=SQLDEF('PRODUTOS','Update PRD0000 Set PRD_PENDENTE = (PRD_PENDENTE - '+FloatToSql(SqlCdsGriOCI_QTDES.AsCurrency)+')','where PRD_REFER = '''+SqlCdsGriPRD_REFER.AsString+'''','','');
                                        DataCadastros.sqlUpdate.Execsql;

                                  end;
                               SqlCdsGri.Next;
                           end;
                         SqlCdsGri.EnableControls;
                         // Excluindo os items de Compras;

                           DataCadastros.sqlUpdate.Close;
                           DataCadastros.SqlUpdate.sql.text :=SQLDEF('ORDENSCOMPRA','Delete from OCP_IT01 ','where OCP_CODIGO = '''+EdtOCP_CODIGO.Text+''' and OCI_SITUACAO = ''P''','','');
                           DataCadastros.sqlUpdate.Execsql;
                           SqlCdsGri.Refresh;

                         //Excluir Pedido de Compras
                           DataCadastros.sqlUpdate.Close;
                           DataCadastros.SqlUpdate.sql.text :=SQLDEF('ORDENSCOMPRA','Delete from OCP0000 ','where OCP_CODIGO = '''+EdtOCP_CODIGO.Text+''' and OCP_STATUS = ''P''','','');
                           DataCadastros.sqlUpdate.Execsql;

                         DataMovimento.CdsOrdCompra.Active := False;
                         LimparDados;
                         EdtOCP_CODIGO.text :='';
                         if EdtOCP_CODIGO.CanFocus then
                           EdtOCP_CODIGO.SetFocus;
                         wIncluir := false;

                         Habilitabotoes;
                     end;
                 BuscaItensOC;
                 WInsert := False;
              end
           else
              begin
                  uteis.aviso('Este pedido de compra não pode ser excluído. Tem itens recebido(s) !');
                  if DbGridCompra.CanFocus then
                    DbGridCompra.SetFocus;
              end;
       end
    else
       begin
           uteis.aviso('Pedido de compra não pode ser excluído. Pedido de compra concluído !');
           if DbGridCompra.CanFocus then
             DbGridCompra.SetFocus;
       end;
end;

procedure TFormOrdCompra.Bit_GravarClick(Sender: tObject);
begin
   if (DBePcl_codigo.Text = '') then
   begin
         //beep;
         uteis.aviso('Informe a Condição de Pagamento !');

   end
   else
   if DbeOCP_DTEMIS.Text = '  /  /    ' then
   begin
         //beep;
         uteis.aviso('Digite a data de emissão.');
         if DbeOCP_DTEMIS.CanFocus then
           DbeOCP_DTEMIS.SetFocus;
   end
   else
   begin
         // salva o registro
        if btnGravaritem.Enabled then
          btnGravaritem.Click;

        DataMovimento.CdsOrdCompraOCP_CODIGO.AsString  := StrZero(EdtOCP_CODIGO.text,EdtOCP_CODIGO.MaxLength);

        case CbFreteT.ItemIndex of
          0 : DataMovimento.CdsOrdCompraOCP_TPPAGTO.AsString  := '0';
          1 : DataMovimento.CdsOrdCompraOCP_TPPAGTO.AsString  := '1';
          2 : DataMovimento.CdsOrdCompraOCP_TPPAGTO.AsString  := '2';
          3 : DataMovimento.CdsOrdCompraOCP_TPPAGTO.AsString  := '3';
          4 : DataMovimento.CdsOrdCompraOCP_TPPAGTO.AsString  := '4';
          5 : DataMovimento.CdsOrdCompraOCP_TPPAGTO.AsString  := '9';
        end;
        // DataMovimento.CdsOrdCompraOCP_TPPAGTO.AsString  := IIF(CbFreteT.ItemIndex = 3,'O',IIF(CbFreteT.ItemIndex = 0,'',IIF(CbFreteT.ItemIndex = 1,'C','F')));

        DataMovimento.CdsOrdCompraOCP_ICMSST.AsCurrency := CurrTotalST.Value;
        DataMovimento.cdsOrdCompraTRP_CODIGO.asstring := CbTransp1.IdRetorno;

       DataMovimento.CdsOrdCompraOCP_IPI.AsCurrency      := CurreIPI.Value;
       DataMovimento.CdsOrdCompraEMP_CODIGO.AsString     := dbInicio.Empresa.EMP_CODIGO;
       DataMovimento.CdsOrdCompra.Post;
       DataMovimento.CdsOrdCompra.ApplyUpdates(0);
       LimparItems;
       btnGravaritem.Enabled := False;
       btnCancelarItem.Enabled := False;

         MostraDados;
         {Recalcula o grid}
         CalcTotal;
         {Desabilita alterações do fornecedor}

         wIncluir := false;

         Habilitabotoes;

      end;
end;

procedure TFormOrdCompra.Bit_CancelarClick(Sender: tObject);
begin
   sMensagem := '';
   if (DataMovimento.CdsOrdCompra.State = dsInsert) then
      sMensagem := 'Deseja cancelar a Digitação do Pedido de Compra ?'
   else
   if (DataMovimento.CdsOrdCompra.State = dsEdit) then
      sMensagem := 'Deseja cancelar a Alteração do Pedido de Compra ?';
 {
   else
   if (DataMovimento.CdsOrdCompra.State = dsInactive) then
      sMensagem := 'Deseja Sair do Pedido de Compra ?';  }


  if (uteis.confirmacao ( (sMensagem))= mrYes) then
  begin

     if DataMovimento.CdsOrdCompra.State in [dsInsert] then
        begin
          SequenciadorPRC(DataCadastros.SQLConnection1, '001','OCP0000', 'OCP_CODIGO', 1, EdtOCP_CODIGO.Text);

          DataCadastros.sqlUpdate.Close;
          DataCadastros.SqlUpdate.sql.text :=SQLDEF('ORDENSCOMPRA','Delete From OCP_IT01 ','where OCP_CODIGO = '''+EdtOCP_CODIGO.Text+'''','','');
          DataCadastros.sqlUpdate.Execsql;
        end;
     CbFornecedor1.idRetorno := '';
     DataMovimento.CdsOrdCompra.Cancel;
     DataMovimento.CdsOrdCompra.Active := False;
     if DataMovimento.CdsOrdCompra.IsEmpty Then        //Ao cancelar ultimo record da
        begin                                      //tabela deixa autoedit=true;
            DataMovimento.DsOrdCompra.AutoEdit := False;
            EdtOCP_CODIGO.Enabled := False;
        end;
     LimparDados;
     {Desabilita alterações do fornecedor}

     HabilitaBotoes;
//     if WInsert = True then
//       Calctotal;

     WInsert  := False;
     wIncluir := false;
     SqlCdsGri.Close;
     EdtOCP_CODIGO.Text := '';
     if EdtOCP_CODIGO.CanFocus then
        EdtOCP_CODIGO.SetFocus;

  end;
end;

procedure TFormOrdCompra.Bit_SairClick(Sender: tObject);
begin
    close;
end;

procedure TFormOrdCompra.BotoesAcesso;
begin
     if assigned(FormOrdCompra) then
     begin
       Bit_novo.Enabled := Uteis.AcessoUsuario('MovimentosPedido de Compra',DBInicio.Usuario.CODIGO,FormOrdCompra).Incluir;
       Bit_Excluir.Enabled := Uteis.AcessoUsuario('MovimentosPedido de Compra',DBInicio.Usuario.CODIGO,FormOrdCompra).Exluir;
       Bit_Relatorio.Enabled := Uteis.AcessoUsuario('MovimentosPedido de Compra',DBInicio.Usuario.CODIGO,FormOrdCompra).Relatorio;
       btnImpressao.Enabled := Uteis.AcessoUsuario('MovimentosPedido de Compra',DBInicio.Usuario.CODIGO,FormOrdCompra).Relatorio;
       DsGrid.AutoEdit := Uteis.AcessoUsuario('MovimentosPedido de Compra',DBInicio.Usuario.CODIGO,FormOrdCompra).Alterar;
     end;
end;

procedure TFormOrdCompra.btnGravaritemClick(Sender: TObject);
begin
  inherited;
  DbGridCompra.Enabled := true;
  limpaBufferTeclado;
  application.ProcessMessages;
  fAlterou := False;
  if trim(edDescricao.Text)= '' then
    exit;
  if CbReferencia.idretorno = '' then
  begin
    uteis.aviso('Informe uma referência !');
    CbReferencia.SetFocus;
    exit;
  end;

  if (CurrPrecoBruto.Value = 0) then
  begin
    uteis.aviso('Informe o preço do produto para o pedido de compra !');
    CurrPrecoBruto.SetFocus;
    exit;
  end;

  if  (CurrQtde.Value = 0) then
  begin
    uteis.aviso('Informe a quantidade do produto para o pedido de compra !');
    CurrQtde.SetFocus;
    exit;
  end;

  try
    fAlterou := True ;
    GravaItem;
    CalcTotal;
  finally
    LimparItems;
    HabilitaEdicaoItem( True );
    if CbReferencia.Enabled then
      if CbReferencia.Visible then
       if CbReferencia.CanFocus then
          CbReferencia.SetFocus;
    SqlCdsGri.Last;

  end;



end;

procedure TFormOrdCompra.btnEmpresaClick(Sender: TObject);
var empresa : string ;
begin
  inherited;
  if not Assigned(frmPesqEmpresa) then
    frmPesqEmpresa := TfrmPesqEmpresa.Create(Application);
  frmPesqEmpresa.EmpCodigo :=  DataMovimento.CdsOrdCompraEMP_CODIGO.AsString ;
  frmPesqEmpresa.ShowModal;
  if frmPesqEmpresa.IDRetorno <> '' then
  begin
    empresa:= frmPesqEmpresa.IDRetorno;
    DBInicio.ExecSql(' update OCP_IT01 set emp_codigo = '+QuotedStr( empresa)+
                     ' where ocp_codigo = '+QuotedStr(DataMovimento.CdsOrdCompraOCP_CODIGO.AsString)   );

    DBInicio.ExecSql(' update OCP0000 set emp_codigo = '+QuotedStr( empresa)+
                     ' where ocp_codigo = '+QuotedStr(DataMovimento.CdsOrdCompraOCP_CODIGO.AsString)   );


    MessageDlg('Pedido de compra - No. '+DataMovimento.CdsOrdCompraOCP_CODIGO.AsString + ' da Empresa '+ DBInicio.Empresa.EMP_CODIGO+' - '+dbinicio.Empresa.RAZAO+#13+#10+
    ' transferido com sucesso para empresa ' +empresa + ' - '+ frmPesqEmpresa.cdsBuscoEMP_FANTASIA.AsString, mtInformation, [mbOK], 0);
    SqlCdsGri.Close;
    DataMovimento.CDSOrdCompra.Close;
    Bit_Lista.Click;
    frmPesqEmpresa := nil;
  end;
end;

procedure TFormOrdCompra.btnCancelarItemClick(Sender: TObject);
begin
  inherited;
  btnGravarItem.Enabled := False;
  btnCancelarItem.Enabled := False;
  DbGridCompra.Enabled := True;

  LimparItems;
end;

procedure TFormOrdCompra.BtnDuplicarClick(Sender: TObject);
var
  OCP_CODIGO: string;
begin
  inherited;
  qAux2.Close;
  qAux2.SQL.Clear;
  qAux2.SQL.Text := 'SELECT * FROM OCP0000 WHERE OCP_CODIGO = ' + QuotedStr(EdtOCP_CODIGO.Text);
  qAux2.Open;
  if qAux2.IsEmpty then
  begin
    MessageDlg('Registro não encontrado', mtError, [mbOK], 0);
    Exit;
  end;

  if MessageDlg('Confirma cópia do pedido?', mtConfirmation, [mbYes, mbNo] , 0) <> mrYes then
    exit;



  qAux3.Close;
  qAux3.SQL.Clear;
  qAux3.SQL.Text := 'SELECT * FROM OCP_IT01 WHERE OCP_CODIGO = ' + QuotedStr(EdtOCP_CODIGO.Text);
  qAux3.Open;

  OCP_CODIGO := strzero(RWFunc.SequenciadorPRC(DataCadastros.SQLConnection1, '001' ,'OCP0000', 'OCP_CODIGO', 0),6);
  qAux.Close;
  qAux.SQL.Clear;
  qAux.SQL.Text := 'INSERT INTO OCP0000 (' +
                    ' OCP_CODIGO, COT_CODIGO, OPV_CODIGO, FOR_CODIGO, OCP_DTEMIS, OCP_DTENTREGA,' +
                    ' OCP_REQUERENTE, PCL_CODIGO, OCP_FRETE, OCP_DESPESAS, OCP_ICMS, OCP_IPI, TRP_CODIGO, ' +
                    ' OCP_TPPAGTO, OCP_OBS, OCP_TOTAL, OCP_STATUS, EMP_CODIGO, OCP_PRAZO, OCP_ICMSST ' +
                    ' ) VALUES ('+
                    QuotedStr(OCP_CODIGO) + ',' +
                    QuotedStr(qAux2.FieldByName('COT_CODIGO').AsString) + ',' +
                    iif(qAux2.FieldByName('OPV_CODIGO').AsString = '', '0', qAux2.FieldByName('OPV_CODIGO').AsString) + ',' +
                    QuotedStr(qAux2.FieldByName('FOR_CODIGO').AsString) + ',' +
                    DateToSQL(qAux2.FieldByName('OCP_DTEMIS').AsDateTime) + ',' +
                    DateToSQL(qAux2.FieldByName('OCP_DTENTREGA').AsDateTime) + ',' +
                    QuotedStr(qAux2.FieldByName('OCP_REQUERENTE').AsString) + ',' +
                    QuotedStr(qAux2.FieldByName('PCL_CODIGO').AsString) + ',' +
                    FloatToSQL(qAux2.FieldByName('OCP_FRETE').AsFloat) + ',' +
                    FloatToSQL(qAux2.FieldByName('OCP_DESPESAS').AsFloat) + ',' +
                    FloatToSQL(qAux2.FieldByName('OCP_ICMS').AsFloat) + ',' +
                    FloatToSQL(qAux2.FieldByName('OCP_IPI').AsFloat) + ',' +
                    QuotedStr(qAux2.FieldByName('TRP_CODIGO').AsString) + ',' +
                    QuotedStr(qAux2.FieldByName('OCP_TPPAGTO').AsString) + ',' +
                    QuotedStr(qAux2.FieldByName('OCP_OBS').AsString) + ',' +
                    FloatToSQL(qAux2.FieldByName('OCP_TOTAL').AsFloat) + ',' +
                    QuotedStr(qAux2.FieldByName('OCP_STATUS').AsString) + ',' +
                    QuotedStr(qAux2.FieldByName('EMP_CODIGO').AsString) + ',' +
                    QuotedStr(qAux2.FieldByName('OCP_PRAZO').AsString) + ',' +
                    FloatToSQL(qAux2.FieldByName('OCP_ICMSST').AsFloat) +
                    ')';
  qAux.ExecSQL;

  while not qAux3.Eof do
  begin
    qAux.Close;
    qAux.SQL.Clear;
    qAux.SQL.Text := 'INSERT INTO OCP_IT01 (' +
                      ' OCP_CODIGO, PRD_REFER, OCI_QTDES, OCI_PRECO, OCI_IPI, OCI_SITUACAO, ' +
                      ' EMP_CODIGO, OCI_ICMS, OCI_CFOP, OCI_DESCRICAO, PRD_UND, OCI_PERC_ICMS_ST, ' +
                      ' OCI_NOTADIFERE, OCI_NOTADIFERE_MOTIVO  ' +
                      ' ) VALUES ('+
                      QuotedStr(OCP_CODIGO) + ',' +
                      QuotedStr(qAux3.FieldByName('PRD_REFER').AsString) + ',' +
                      FloatToSQL(qAux3.FieldByName('OCI_QTDES').AsFloat) + ',' +
                      // FloatToSQL(qAux3.FieldByName('OCI_QTDER').AsFloat) + ',' +
                      FloatToSQL(qAux3.FieldByName('OCI_PRECO').AsFloat) + ',' +
                      FloatToSQL(qAux3.FieldByName('OCI_IPI').AsFloat) + ',' +
                      QuotedStr(qAux3.FieldByName('OCI_SITUACAO').AsString) + ',' +
                      QuotedStr(qAux3.FieldByName('EMP_CODIGO').AsString) + ',' +
                      FloatToSQL(qAux3.FieldByName('OCI_ICMS').AsFloat) + ',' +
                      QuotedStr(qAux3.FieldByName('OCI_CFOP').AsString) + ',' +
                      QuotedStr(qAux3.FieldByName('OCI_DESCRICAO').AsString) + ',' +
                      QuotedStr(qAux3.FieldByName('PRD_UND').AsString) + ',' +
                      FloatToSQL(qAux3.FieldByName('OCI_PERC_ICMS_ST').AsFloat) + ',' +
                      QuotedStr(qAux3.FieldByName('OCI_NOTADIFERE').AsString) + ',' +
                      QuotedStr(qAux3.FieldByName('OCI_NOTADIFERE_MOTIVO').AsString) +
                      ')';
    qAux.ExecSQL;
    qAux3.Next;
  end;
  MessageDlg('Pedido de Compra copiado com êxito para o registro nº.' + OCP_CODIGO, mtInformation, [mbOK] , 0);
  EdtOCP_CODIGO.Text := OCP_CODIGO;
  BuscaOC;
  DbeRequerente.SetFocus;
  DataMovimento.CdsOrdCompra.Cancel;
  HabilitaBotoes;
  pcabecalho.Enabled := True;
  DbGridCompra.Enabled := True;
  GbItem.Enabled := True;




end;

procedure TFormOrdCompra.EdtOCP_CODIGOExit(Sender: tObject);
begin

    if wIncluir = False then
       begin
           if EdtOCP_CODIGO.text <> '' then
              begin
                  if (ActiveControl.name = 'Bit_Cancelar') or (ActiveControl.Name = 'Bit_Sair') then
                     begin
                         exit;
                     end;
                  EdtOCP_CODIGO.Text := StrZero(EdtOCP_CODIGO.Text,EdtOCP_CODIGO.MaxLength);

                    DataMovimento.CdsOrdCompra.Close;
                    DataMovimento.CdsOrdCompra.CommandText := SQLDEF('ORDENSCOMPRA','select * from OCP0000','where OCP_CODIGO = '''+StrZero(EdtOCP_CODIGO.Text,EdtOCP_CODIGO.MaxLength)+'''','OCP_CODIGO','');
                    DataMovimento.CdsOrdCompra.Open;
                    if DataMovimento.CdsOrdCompra.IsEmpty then
                       begin
                           uteis.aviso('Ordem de Compra não encontrado...');
                           LimparDados;
                           DataMovimento.CdsOrdCompra.Active := False;

                           EdtOCP_codigo.Text := '';
                           if EdtOCP_CODIGO.CanFocus then
                            EdtOCP_codigo.SetFocus;
                       end
                    else
                       begin
                           if DataMovimento.CdsOrdCompra.Active = false then
                              DataMovimento.CdsOrdCompra.Active := true;
                           DataMovimento.DsOrdCompra.AutoEdit   := True;


                           MostraDados;
                           BuscaItensOC;
                           Calctotal;

                       end;

              end;
       end;

end;

procedure TFormOrdCompra.CalcTotal;
var
 WTotal_1,WVLIPI, vlST, vlICMS, Desconto : Double; // [Total]  [IPI]
 wOcp_Status: string;
 clone: TClientDataSet;
begin

  clone:=TClientDataSet.Create(self);
  try
   clone.CloneCursor(SqlCdsGri,true);
   if not clone.IsEmpty then
    begin
      WTotal_1:= 0; WVLIPI:= 0;  vlST :=0; vlICMS := 0; Desconto := 0;//inicializando variaveis
//      wOcp_Status:='C';
      clone.First;
      while not clone.Eof do
      begin
       WTotal_1 := WTotal_1 + (clone.FieldByName('OCI_QTDES').AsCurrency *clone.FieldByName('OCI_PRECO').AsFloat);
       WVLIPI   := WVLIPI   + (((clone.FieldByName('OCI_QTDES').AsCurrency * clone.FieldByName('OCI_PRECO').AsFloat) * clone.FieldByName('OCI_IPI').AsCurrency)/100);
       vlICMS   := vlICMS   + (((clone.FieldByName('OCI_QTDES').AsCurrency * clone.FieldByName('OCI_PRECO').AsFloat) * clone.FieldByName('OCI_ICMS').AsCurrency)/100);

       if clone.FieldByName('OCI_TIPO_DESCONTO').AsString = 'V' then
        Desconto := Desconto + clone.FieldByName('OCI_DESCONTO').AsFloat
       else if clone.FieldByName('OCI_TIPO_DESCONTO').AsString = 'P' then
        Desconto := Desconto +  (((clone.FieldByName('OCI_QTDES').AsFloat * clone.FieldByName('OCI_PRECO').AsFloat) * clone.FieldByName('OCI_DESCONTO').AsFloat)/100);



       vlST := vlSt +(((clone.FieldByName('OCI_QTDES').AsCurrency * clone.FieldByName('OCI_PRECO').AsFloat) * clone.FieldByName('OCI_PERC_ICMS_ST').AsCurrency)/100);
       // atualizar status F=Pendente , P=Concluida Parcial, T=Concluida Total. Se um item P entao nao tá fechada
       // Atualizar status P=Pendente , T=Concluida Parcial, C=Concluida Total.
       {P=Pendente / C=Concluido / F=PARCIAL = NOVO}

        clone.Next;
      end;
      CurrTotGeral.Value := (WTotal_1 + WVLIPI + vlST + DataMovimento.CdsOrdCompraOCP_FRETE.AsCurrency + DataMovimento.CdsOrdCompraOCP_DESPESAS.AsCurrency) - Desconto;
      CurrTotal.Value    := WTotal_1;
      CurreIPI.Value     := WVLIPI;
      CurrTotalST.Value  := vlST;

     //atualizacao de valor - segundo caso
     if ((int((DataMovimento.CdsOrdCompraOCP_TOTAL.AsCurrency*100)))/100) <> ((int((WTotal_1*100)))/100) then
        begin
           // if DataMovimento.CdsOrdCompra.State in [dsBrowse] then
           //    DataMovimento.CdsOrdCompra.Edit;


            // DataMovimento.CdsOrdCompra.ApplyUpdates(0);
            Habilitabotoes;
            {Atualiza o total da Ordem de compras
             Foi feito assim, porque a inquibra
             precisava gerar O.C no valor de R$ 44.282.947,50
             e o componente nao suportava este valor}
            DataCadastros.sqlUpdate.Close;
            DataCadastros.SqlUpdate.sql.text :=SQLDEF('ORDENSCOMPRA','Update OCP0000 SET OCP_TOTAL = '+FloatToSql(WTotal_1),'Where OCP_CODIGO = '''+EdtOCP_CODIGO.Text+'''','','');
            DataCadastros.sqlUpdate.Execsql;
        end;

    end;
  finally
   FreeAndNil(clone);
  end;


end;

procedure TFormOrdCompra.DbeFor_CodigoExit(Sender: tObject);
begin
    if (ActiveControl <> Nil)
       and(ActiveControl.Name <> 'Bit_Cancelar')
       and(ActiveControl.Name <> 'Bit_Sair')
       and(ActiveControl.Name <> 'EdtOCP_CODIGO') then
    begin
         cbFornecedor1.IdRetorno := StrZero( DbeFor_Codigo.text, 4 );
         if cbFornecedor1.IdRetorno=''  then
             GeraException('Fornecedor não Localizado!');
    end;
  CbTransp1.idRetorno := strzero(DBeFor_Codigo.Text, 3);
end;

procedure TFormOrdCompra.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
    Screen.OnActiveControlChange := NIL;

    DataMovimento.CdsOrdCompra.Close;
    //PreenchaCombo('F');
    CdsFor.Close;

    SqlCdsTra.Close;
    SqlCdsRef.Close;
    SqlCdsGri.Close;
    Action := CaFree;

end;

procedure TFormOrdCompra.Bit_ListaClick(Sender: tObject);
begin
  frmPesqOCP := TfrmPesqOCP.Create(Application);
  try
     frmPesqOCP.ShowModal;
     if frmPesqOCP.ModalResult=mrOk then
     begin
          EdtOCP_CODIGO.Text := frmPesqOCP.idRetorno;
          BuscaOC;
          DbeRequerente.SetFocus;
          DataMovimento.CdsOrdCompra.Cancel;
          HabilitaBotoes;
          pcabecalho.Enabled := True;
          DbGridCompra.Enabled := True;
          GbItem.Enabled := True;
     end;
  finally
     FreeAndNil( frmPesqOCP );
  end;
  if DataMovimento.CdsOrdCompraOCP_TPPAGTO.AsString <> '' then
    case DataMovimento.CdsOrdCompraOCP_TPPAGTO.AsInteger of
      0, 1, 2, 3, 4 : CbFreteT.ItemIndex := DataMovimento.CdsOrdCompraOCP_TPPAGTO.AsInteger;
      9 : CbFreteT.ItemIndex := 5;
    end;

end;

procedure TFormOrdCompra.ChekStaTusMouseDown(Sender: tObject;Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
     if DataMovimento.CdsOrdCompra.State in [dsBrowse]then
        DataMovimento.CdsOrdCompra.Edit;
end;

procedure TFormOrdCompra.Bit_RelatorioClick(Sender: tObject);
begin
  FormGimpOC := TFormGimpOC.Create(Application);
  Try

        FormGimpOC.ShowModal;
      finally
        FormGimpOC.Destroy;
        FormGimpOc:= nil;
        Screen.OnActiveControlChange := MudaCorCampos;
        EdtOCP_CODIGO.SetFocus;
  end;

end;

procedure TFormOrdCompra.DbGridCompraDblClick(Sender: tObject);
begin
    if not SqlCdsGri.IsEmpty then
       Alterar_Itens;
end;

procedure TFormOrdCompra.FormCloseQuery(Sender: tObject;
  var CanClose: Boolean);
begin
    Verificaedicao;
end;

procedure TFormOrdCompra.DbeOCP_DTEMISExit(Sender: tObject);
begin
   DbeOCP_DTEMIS.Text := PreenchaData(DbeOCP_DTEMIS.Text);
   if (not TestaDataStr(DbeOCP_DTEMIS.Text)) then
      DbeOCP_DTEMIS.SetFocus;
end;

procedure TFormOrdCompra.PreenchaCombo(CONST sAcao:String);
begin

   if (sAcao = 'A') then
      begin
         {Tipo}
         {Fornecedor}
         CbFornecedor1.CodigoEmpresa := StrToInt(dbInicio.Empresa.EMP_CODIGO);
         CbFornecedor1.CarregarCombo := True;
         {Transportadora}
         CbTransp1.CodigoEmpresa := StrToInt(dbInicio.Empresa.EMP_CODIGO);
         CbTransp1.CarregarCombo := True;
      end
   else
   if (sAcao = 'F') then
      begin
         {Tipo}
         {Fornecedor}
         CbFornecedor1.CarregarCombo := False;
         {Parcelas}

         {Transportadora}
         CbTransp1.CarregarCombo     := False;
      end;

end;

procedure TFormOrdCompra.qGriPRD_DESCRIGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
   Text := qGriPRD_DESCRI.AsString;
end;

procedure TFormOrdCompra.EmpresaxFornecedor1Click(Sender: TObject);
begin
  inherited;
  ImprimeModelo3;
end;

procedure TFormOrdCompra.DbeTRP_CODIGOExit(Sender: tObject);
begin
    if (ActiveControl <> Nil)
       and(ActiveControl.Name <> 'Bit_Cancelar')
       and(ActiveControl.Name <> 'Bit_Sair')
       and(ActiveControl.Name <> 'EdtOCP_CODIGO') then
    begin
         if (Trim(DataMovimento.CDsOrdCompraTRP_CODIGO.asstring)<> '') then
         begin
                CbTransp1.idRetorno := StrZero(DataMovimento.CDsOrdCompraTRP_CODIGO.asstring,3);
                if (CbTransp1.idRetorno='') then
                begin
                      uteis.aviso('Transportadora não localizado !');
                      DbeTRP_CODIGO.Field.Clear;
                      DbeTRP_CODIGO.SelectAll;
                end
                else
                begin
                     if (DataMovimento.CdsOrdCompra.State in [dsInsert,dsEdit]) then
                     begin
                          if (DbeTRP_codigo.Field.AsString <> '')
                             and(not Verifica_Transportadora_Ativo(StrZero(DbeTRP_CODIGO.Text,3))) then
                          begin
                               uteis.aviso('Transportadora Inativa !');
                               CbTransp1.Text            := '';
                               DataMovimento.CDsOrdCompraTRP_CODIGO.clear;
                               CbFreteT.ItemIndex        := -1;
                          end
                          else
                          begin
                               DbeTRP_CODIGO.Text := StrZero(DbeTRP_CODIGO.Text,3);
                               Buscar_Dados_Transportadora(StrZero(DbeTRP_CODIGO.Text,3));
                               if DataMovimento.CdsOrdCompraOCP_TPPAGTO.AsString <> '' then
                                 case DataMovimento.CdsOrdCompraOCP_TPPAGTO.AsInteger of
                                    0, 1, 2, 3, 4 : CbFreteT.ItemIndex := DataMovimento.CdsOrdCompraOCP_TPPAGTO.AsInteger;
                                    9 : CbFreteT.ItemIndex := 5;
                                 end;
                               //if (CbFreteT.ItemIndex = 0) then
                               //   CbFreteT.ItemIndex := 1;
                          end;
                     end;
                end;
         end;
    end;
end;

procedure TFormOrdCompra.LimparDados;
begin


  CbFornecedor1.idRetorno  := '';
//    DbeFOR_FONCONT.Text := '';
//    DbeFOnoR_FAXCONT.Text := '';
//    DbeFOR_CONTATO.Text := '';
//    DBeEmailContato.Text:= '';
//    DbeEmail.Text       := '';

  CdsFor.Close;
  CbTransp1.Text      := '';
  CbFreteT.Text       := '';
  CbFreteT.ItemIndex  := -1;
  Edt_Fone.Text       := '';
  Edt_Contato.text    := '';
  CbReferencia.idretorno    := '';
  EdDescricao.Text    := '';
  lcodfornecedor.Caption := '';
  ldescricaofornecedor.Caption := '';
  CurrTotal.Value     := 0;
  CurreIPI.Value      := 0;
  CurrTotalST.Value   := 0;
  CurrTotGeral.Value  := 0;
  Edt_Status.Text     := '';
  SqlCdsGri.Close;
end;

procedure TFormOrdCompra.MostraDados;
begin

     EdtOCP_CODIGO.Text := DataMovimento.CdsOrdCompraOCP_CODIGO.AsString;

     CbFornecedor1.idRetorno := StrZero(DbeFor_Codigo.Text,4);
     if CbFornecedor1.idRetorno<>'' then
     begin
          DbeFor_Codigo.Text := CbFornecedor1.idRetorno;
          Buscar_Dados_Fornecedor(CbFornecedor1.idRetorno);
     end
     Else
         DbeFor_Codigo.clear;


     CbTransp1.idRetorno  := StrZero(DbeTRP_CODIGO.Text,3);
     if (CbTransp1.idRetorno='') then
     begin
          CbFreteT.ItemIndex := -1;
          DbeTRP_CODIGO.clear;
          Buscar_Dados_Transportadora('0');
     end
     else
     begin
          DbeTRP_CODIGO.Text := CbTransp1.idRetorno;
          Buscar_Dados_Transportadora(CbTransp1.idRetorno);
//          CbFreteT.ItemIndex := IIF(DataMovimento.CdsOrdCompraOCP_TPPAGTO.AsString = '',0,IIF(DataMovimento.CdsOrdCompraOCP_TPPAGTO.AsString = 'C',1,IIF(DataMovimento.CdsOrdCompraOCP_TPPAGTO.AsString = 'F',2,3)));
     end;
     // CbFreteT.ItemIndex := IIF(DataMovimento.CdsOrdCompraOCP_TPPAGTO.AsString = '',0,IIF(DataMovimento.CdsOrdCompraOCP_TPPAGTO.AsString = 'C',1,IIF(DataMovimento.CdsOrdCompraOCP_TPPAGTO.AsString = 'F',2,3)));
     if DataMovimento.CdsOrdCompraOCP_TPPAGTO.AsString <> '' then
       case DataMovimento.CdsOrdCompraOCP_TPPAGTO.AsInteger of
          0, 1, 2, 3, 4 : CbFreteT.ItemIndex := DataMovimento.CdsOrdCompraOCP_TPPAGTO.AsInteger;
          9 : CbFreteT.ItemIndex := 5;
       end;

     Edt_Status.Text    := IIF(DataMovimento.CdsOrdCompraOCP_STATUS.AsString = 'P','PENDENTE','CONCLUÍDO');

end;

procedure TFormOrdCompra.CbFornecedorChange(Sender: tObject);
begin
    if DataMovimento.CdsOrdCompra.State = DsBrowse then
        DataMovimento.CdsOrdCompra.Edit;
end;

procedure TFormOrdCompra.CbTranspChange(Sender: tObject);
begin
    if DataMovimento.CdsOrdCompra.State = DsBrowse then
        DataMovimento.CdsOrdCompra.Edit;
end;

procedure TFormOrdCompra.CdigoFornecedor1Click(Sender: TObject);
begin
  inherited;
  ImprimeModelo2;
end;

procedure TFormOrdCompra.FormKeyPress(Sender: tObject; var Key: Char);
begin
    if key = #27 then
       begin
          if (Bit_Sair.Enabled) and (Trim(EdtOCP_CODIGO.Text) = '') then
             Bit_Sair.Click
          else
          if (Bit_Sair.Enabled) and(Trim(EdtOCP_CODIGO.Text) <> '') then
             begin
                DataMovimento.CdsOrdCompra.Close;
                SqlCdsGri.Close;
                LimparDados;
                LimparItems;
                EdtOCP_CODIGO.Text :='';
               // EdtOCP_CODIGO.SetFocus;
             end
          else
          if (Bit_Cancelar.Enabled) then
             begin
                Bit_Cancelar.Click;
             end;
         key := #0;
       end;
  If key = #13 then
  Begin
    //se for, passa o foco para o próximo campo, zerando o valor da variável Key
    Key:= #0;
    Perform(Wm_NextDlgCtl,0,0);
  end;
end;

procedure TFormOrdCompra.SqlCdsGriAfterDelete(DataSet: TDataSet);
begin
     CalcTotal;
end;

procedure TFormOrdCompra.SqlCdsGriAfterPost(DataSet: TDataSet);
begin
     SqlCdsGri.ApplyUpdates(0);
     if DataCadastros.sqlconnection1.intransaction then
        DataCadastros.committran;

end;

procedure TFormOrdCompra.SqlCdsGriBeforeDelete(DataSet: TDataSet);
begin
     DataCadastros.sqlconnection1.ExecuteDirect( 'Delete from OCP_IT01 where OCI_REGISTRO = '+qStr( SqlCdsGriOCI_REGISTRO.AsString ) );
end;

procedure TFormOrdCompra.SqlCdsGriCalcFields(DataSet: TDataSet);
begin
  //   if not DataMovimento.CdsOrdCompra.IsEmpty then
     begin
          SqlCdsGriPRD_FISICO_CC.asCurrency := dbInicio.BuscaUmDadoSqlasFloat ( 'SELECT SUM(kas_saldo) '+
                                                                                'FROM kardex_almox_saldo '+
                                                                                'WHERE prd_codigo = ( select prd_codigo from prd0000 prd where prd_refer='+qStr( SqlCdsGriPRD_REFER.asString ) +
                                                                                    ConcatSe(' AND prd.',DBInicio.ExclusivoSql('PRODUTOS'))+                                                                                ' ) '+
                                                                                ConcatSe (' and ',dbInicio.ExclusivoSql('ESTOQUES') ) );
          SqlCdsGriOCI_TOTAL_CC.AsCurrency  := (SqlCdsGriOCI_QTDES.AsCurrency * SqlCdsGriOCI_PRECO.AsFloat);
          if SqlCdsGriOCI_SITUACAO.AsString = 'P' then
             SqlCdsGriOCI_STATUS_CC.AsString   := 'Pendente'
          Else
          if SqlCdsGriOCI_SITUACAO.AsString = 'F' then
             SqlCdsGriOCI_STATUS_CC.AsString   := 'Parcial'
          else
             SqlCdsGriOCI_STATUS_CC.AsString   := 'Recebido';

          if SqlCdsGriOCI_TIPO_DESCONTO.AsString = 'P' then
            SqlCdsGriOCI_TIPO_DESCONTO_CC.AsString := 'Percentual'
          else if SqlCdsGriOCI_TIPO_DESCONTO.AsString = 'V' then
            SqlCdsGriOCI_TIPO_DESCONTO_CC.AsString := 'Valor'
          else
            SqlCdsGriOCI_TIPO_DESCONTO_CC.AsString := '';



     end;
end;

procedure TFormOrdCompra.BuscaItensOC;

begin
  TemRecebimento := False;

  SqlCdsGri.Close;
  qGri.sql.Text := SQLDEF( 'ORDENSCOMPRA',
       ' select' +
       ' (SELECT FIRST 1 pc.PRDC_REFERENCIA from  PRD0000_CODIGO pc where  pc.PRD_CODIGO = e.PRD_CODIGO '+ ConcatSe(' and E.',DBInicio.ExclusivoSql('PRODUTOS')) + ' AND pc.FOR_CODIGO = '+QuotedStr(DBeFor_Codigo.Text)+') PRDC_REFERENCIA, '+
       ' (SELECT FIRST 1 pc.PRDC_DESSCRICAO from  PRD0000_CODIGO pc where  pc.PRD_CODIGO = e.PRD_CODIGO '+ ConcatSe(' and E.',DBInicio.ExclusivoSql('PRODUTOS')) + ' AND pc.FOR_CODIGO = '+QuotedStr(DBeFor_Codigo.Text)+') PRDC_DESSCRICAO, '+
       '  I.OCI_DESCRICAO AS PRD_DESCRI,COALESCE(I.PRD_UND, E.PRD_UND) as PRD_UND ,E.PRD_ESTOQUE,E.PRD_ENTRADA,' +
       '  E.PRD_SAIDA,E.PRD_PENDENTE,' +
//       '  CASE WHEN I.OCI_TIPO_DESCONTO = ''V'' THEN ''VALOR'' WHEN I.OCI_TIPO_DESCONTO = ''P'' THEN ''PERCENTUAL'' ELSE '''' END AS OCI_TIPO_DESCONTO, ' +
       '  I.*' +
       '  from ocp_it01 I '+
       '  JOIN PRD0000 E ON I.PRD_REFER = E.prd_refer '+ ConcatSe ( ' and e.',dbinicio.ExclusivoSql('PRODUTOS')) ,
       ' where I.OCP_CODIGO = '''+EdtOCP_CODIGO.Text+''''
   ,'I.OCI_REGISTRO','I.');
  if DBInicio.IsDesenvolvimento then
    CopyToClipBoard(qGri.sql.Text);
  SqlCdsGri.Open;
 SqlCdsGri.DisableConstraints;
 try
  SqlCdsGri.First;
 while not SqlCdsGri.Eof do
 begin
   if MatchStr(SqlCdsGri.FieldByName('OCI_SITUACAO').AsString,['F','C']) or (SqlCdsGri.FieldByName('OCI_QTDER').AsFloat>0) then
   begin
      TemRecebimento := True;
      Break
   end;

    SqlCdsGri.Next;
  end;
  finally
     SqlCdsGri.EnableConstraints;
   end;



    if SqlCdsGri.IsEmpty  then
    begin
      wAlterar_Itens       := False;
      TemRecebimento := False;
    end;

    SqlCdsGri.First;

end;

procedure TFormOrdCompra.DbGridCompraDrawColumnCell(Sender: tObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
    if Not odd(SqlCdsGri.RecNo) then
       if not (GdSelected in State) then
          begin
            //  DbGridCompra.Canvas.Brush.Color := $00FFEFDF;
              DbGridCompra.Canvas.FillRect(rect);
              DbGridCompra.DefaultDrawDataCell(Rect,column.Field,state);
          end;
end;

procedure TFormOrdCompra.SpPesquisaClick(Sender: tObject);
begin
  if DataMovimento.CdsOrdCompra.State in [dsEdit,dsInsert] then
  begin
    DataMovimento.CdsOrdCompra.ApplyUpdates(0);
    HabilitaBotoes;
  end;

  if (EdtOCP_CODIGO.Text = '') then
    EdtOCP_CODIGO.SetFocus
  else
  begin
    FormProdutoGrid := TFormProdutoGrid.Create(Application);
    try

       FormProdutoGrid.TAG := 2;
       FormProdutoGrid.SoAtivos:=True;
       DesabilitaBotoes;
       FormProdutoGrid.ShowModal;
       if FormProdutoGrid.ReferRetorno<>'' then
       begin
         cbReferencia.idRetorno := FormProdutoGrid.ReferRetorno;
         edDescricao.Text := FormProdutoGrid.DescricaoRetorno;
         lcodfornecedor.Caption := SqlCdsRefPRDC_REFERENCIA.AsString;
         ldescricaofornecedor.Caption := SqlCdsRefPRDC_DESSCRICAO.AsString;
         VisualizaSaldoEstoque;
         GetCusto ;
         HabilitaEdicaoItem( True );
         CurrQtde.SetFocus;
         btnGravarItem.Enabled := True;
         btnCancelarItem.Enabled := True;
       end;

    finally
       FreeAndNil(FormProdutoGrid);
       Screen.OnActiveControlChange   := MudaCorCampos;
    end;
  end;
end;

Procedure TFormOrdCompra.GetCusto;
begin
  if CbReferencia.idRetorno <>'' then
    edtCusto.Value := dbInicio.BuscaUmDadoSqlAsFloat ( 'Select prd_pcusto from prd0000 where prd_refer = '+qStr( cbReferencia.idRetorno )+ConcatSe( ' and ',dbInicio.ExclusivoSql('PRODUTOS') ) );
end;

procedure TFormOrdCompra.GravaItem;
Var
  wQtdePendente : Currency;
  tipoDesconto: string;
begin
  if rgTipoDesconto.ItemIndex = 0 then
    tipoDesconto := 'P'
  else if rgTipoDesconto.ItemIndex = 1 then
    tipoDesconto := 'V'
  else
    tipoDesconto := '';


  if (CbReferencia.idRetorno <> '') then
  begin

   if not wAlterar_Itens then //a variavel walterar_itens só server para fazer alteracao do itens. Aqui so inclusao de itens
      begin
        //Insere um novo item no pedido de compras.
        DataCadastros.sqlUpdate.Close;
        DataCadastros.SqlUpdate.sql.text :='INSERT INTO OCP_IT01 (OCI_DESCRICAO, OCP_CODIGO,OCI_TIPO_DESCONTO,PRD_REFER,OCI_QTDES,OCI_DESCONTO,OCI_ICMS,OCI_PRECO,OCI_IPI,OCI_SITUACAO,EMP_CODIGO, prd_und,'+
                                          'OCI_PERC_ICMS_ST ) Values ('''+
                                          EdDescricao.Text+''','''+
                                          EdtOCP_Codigo.Text+''','''+
                                          tipoDesconto+''','''+
                                          cbReferencia.idRetorno+''','''+
                                          FloatToSQL(CurrQtde.value)+''','''+
                                          FloatToSQL(currDescontoItem.value)+''','''+
                                          FloatToSQL(currICMS.value)+''','''+
                                          FloatToSQL(CurrPrecoBruto.value)+''','''+
                                          FloatTosQL(CurrIPI.value)+''',''P'','+
        QuotedStr(dbInicio.Empresa.EMP_CODIGO)+','+QuotedStr(cbUnidade.Text) + ','+ FloatToSQL(CurrICMSstper.Value)+ ')';
        DataCadastros.sqlUpdate.Execsql;
        //Faz alteracao no arquivo de produtos no campo prd_pendente
        wQtdePendente := CurrQtde.value ; //Atribui o valor

          DataCadastros.sqlUpdate.Close;
          DataCadastros.SqlUpdate.sql.text :=SqlDef('PRODUTOS','Update PRD0000 Set PRD_PENDENTE = (PRD_PENDENTE + '+FloatToSQL(WQTDEPENDENTE)+')','where PRD_REFER = '''+SqlCdsRefPRD_REFER.Text+'''','','');
          DataCadastros.sqlUpdate.Execsql;

            BuscaItensOC;
      end
     else // foi acionado uma alteracao no item do grid.
        begin

              //Faz alteracao no arquivo ocp_it01 nos item de compras
              DataCadastros.sqlUpdate.Close;

              DataCadastros.SqlUpdate.sql.text :=SQLDEF('ORDENSCOMPRA','Update OCP_IT01 set PRD_REFER ='+ QuotedStr(CbREFerencia.idretorno)
                                                      + ', OCI_DESCRICAO = '''+EdDescricao.Text
                                                      + ''', OCI_TIPO_DESCONTO = '''+tipoDesconto
                                                      +''', OCI_PRECO = '''+FloatToSQL(currPrecoBruto.Value)
                                                      +''', OCI_QTDES = '''+FloatToSQL(CurrQtde.Value)
                                                      +''', OCI_DESCONTO = '''+FloatToSQL(currDescontoItem.Value)
                                                      +''', OCI_ICMS = '''+FloatToSQL(currICMS.Value)
                                                      +''', OCI_IPI = '''+FloatToSQL(CurrIPI.Value)+''''
                                                      +', prd_und = '+QuotedStr(cbUnidade.Text)
                                                      +',OCI_PERC_ICMS_ST = ' +QuotedStr(FloatToSQL(CurrICMSstper.Value)) ,
                                                      ' where OCI_REGISTRO = '''+SqlCdsGriOCI_REGISTRO.AsString+'''','','');

              if DBInicio.IsDesenvolvimento then
                CopyToClipBoard(DataCadastros.SqlUpdate.sql.text);

              DataCadastros.sqlUpdate.Execsql;

              //Faz alteracao no arquivo de produtos o campo prd_pendente
              if SqlCdsGriOCI_SITUACAO.AsString = 'P' then
                 begin
                     wQtdePendente := SqlCdsGriPRD_PENDENTE.AsCurrency; //Atribui o valor
                     if wQtdePendente > 0 then
                        wQtdePendente := wQtdePendente + (CurrQtde.Value - wQtdeAnterior);

                       DataCadastros.sqlUpdate.Close;

                       DataCadastros.SqlUpdate.sql.text :=SQLDEF('PRODUTOS','Update PRD0000 Set PRD_PENDENTE = '''+FloatToSQL(WQTDEPENDENTE)+'''',' where PRD_REFER = '''+SqlCdsGriPRD_REFER.AsString+'''','','');
                       DataCadastros.sqlUpdate.Execsql;

                 end;
              BuscaItensOC;
        end;
     CbReferencia.Color    := clWindow;
     CbReferencia.TabStop  := True;
     wAlterar_Itens := False;
     HabilitaEdicaoItem( False );

  end;
end;

procedure TFormOrdCompra.DbeOCP_DTEntregaExit(Sender: tObject);
begin
   DbeOCP_DTEntrega.Text := PreenchaData(DbeOCP_DTEntrega.Text);
   if (not TestaDataStr(DbeOCP_DTEntrega.Text)) then
      DbeOCP_DTEntrega.SetFocus
   else
      begin
         if (DbeOCP_DTEMIS.Date > DbeOCP_DTEntrega.Date) then
            begin
               uteis.aviso('Data de Entrega não pode ser menor que a Data de Emissão !');
               DbeOCP_DTEntrega.SetFocus;
               DbeOCP_DTEntrega.SelectAll;
            end;
      end;
end;

procedure TFormOrdCompra.LimparItems;
begin

  CbReferencia.idRetorno  := '';
  EdDescricao.Text       := '';
  CurrSaldo.Value        := 0;
  CurrPrecoBruto.Value   := 0;
  CurrQtde.Value         := 0;
  currDescontoItem.Value := 0;
  rgTipoDesconto.ItemIndex := -1;
  currICMS.Value         := 0;
  CurrIpi.Value          := 0;
  CurrICMSstper.Value    := 0;
  edtCusto.Value         := 0;
  cbUnidade.ItemIndex    := -1;
  lcodfornecedor.Caption := '';
  ldescricaofornecedor.Caption := '';
end;

procedure TFormOrdCompra.miReferenciaEmpresaClick(Sender: TObject);
begin
  inherited;
  ImprimeModelo1;
end;

procedure TFormOrdCompra.Excluir1Click(Sender: tObject);
Var
  wQtdePendente : Currency;
begin
    if SqlCdsGri.IsEmpty Then   //evita exclussão de registro
       begin                                     // em uma Tabela Vazia.
           messagebeep($ffff);
           uteis.aviso('Não existe itens de compras a ser excluída!');
           exit;
       end;
    if (SqlCdsGriOCI_SITUACAO.AsString = 'P') then
       begin
           if uteis.confirmacao ( ('Confirma exclusão do item '''+SqlCdsGriPRD_REFER.asstring+''' ?'))=mryes then
              begin

                  wQtdePendente := SqlCdsGriPRD_PENDENTE.AsCurrency;

                    //Altera a Pendencia do produto excluido.
                    if wQtdePendente>0 then
                       wQtdePendente := wQtdePendente - SqlCdsGriOCI_QTDES.AsCurrency
                    else
                       wQtdePendente := 0;

                      DataCadastros.sqlUpdate.Close;

                      DataCadastros.SqlUpdate.sql.text :=SQLDEF('PRODUTOS','Update PRD0000 Set PRD_PENDENTE = '''+FloatToSQL(wQtdePendente)+'''','where PRD_REFER = '''+SqlCdsGriPRD_REFER.AsString+'''','','');
                      DataCadastros.sqlUpdate.Execsql;

                      //Exclui o Item de Compras
                      DataCadastros.sqlUpdate.Close;
                      DataCadastros.SqlUpdate.sql.text :=SQLDEF('ORDENSCOMPRA','Delete from OCP_IT01 ','where OCI_REGISTRO = '''+SqlCdsGriOCI_REGISTRO.AsString+'''','','');
                      DataCadastros.sqlUpdate.Execsql;
                   SqlCdsGri.Refresh;
                  CalcTotal;
                  LimparItems;
                  SqlCdsGri.Refresh;
                  DbGridCompra.SetFocus;
              end;
       end
    else
     begin
         if (SqlCdsGriOCI_SITUACAO.AsString = 'F') then
            uteis.aviso('Item de compra não pode ser excluído. Item recebido parcial !')
         else
         if (SqlCdsGriOCI_SITUACAO.AsString = 'C') then
            uteis.aviso('Item de compra não pode ser excluído. Item recebido !');
        DbGridCompra.SetFocus;
     end;
end;

procedure TFormOrdCompra.Alterar1Click(Sender: tObject);
begin
    if (SqlCdsGriOCI_SITUACAO.AsString = 'P') then
       begin
           if not SqlCdsGri.IsEmpty  then
              begin
                  wAlterar_Itens := True;
                  AlteraItem;
              end
           else
              begin
                  CbReferencia.SetFocus;
              end;
       end
    else
       begin
           uteis.aviso('Item de compra não pode ser alterado. Pedido de compra concluído !');
           DbGridCompra.SetFocus;
       end;
end;

procedure TFormOrdCompra.AlteraCorpo(Sender: TObject);
begin
  if DataMovimento.CdsOrdCompra.State = dsBrowse then
    DataMovimento.CdsOrdCompra.Edit;
  DesabilitaBotoes;
  DbGridCompra.Enabled := True;
end;

procedure TFormOrdCompra.AlteraItem;
begin
  DbGridCompra.Enabled := False;
  btnGravarItem.Enabled := True;
  btnCancelarItem.Enabled := True;
  HabilitaEdicaoItem( True );
  fAlterandoItem := True;
  CbReferencia.idretorno      := SqlCdsGriPRD_REFER.asstring;
  CbReferencia.Color          := $00D7D7D7;
  EdDescricao.Text     := SqlCdsGriPRD_DESCRI.AsString;
  CurrPrecoBruto.Value := SqlCdsGriOCI_PRECO.AsFloat;
  wQtdeAnterior        := SqlCdsGriOCI_QTDES.AsCurrency;
  CurrQtde.Value       := SqlCdsGriOCI_QTDES.AsCurrency;
  currDescontoItem.Value       := SqlCdsGriOCI_DESCONTO.AsCurrency;
  if SqlCdsGriOCI_TIPO_DESCONTO.AsString = 'P' then
    rgTipoDesconto.ItemIndex := 0
  else if SqlCdsGriOCI_TIPO_DESCONTO.AsString = 'V' then
    rgTipoDesconto.ItemIndex := 1
  else
    rgTipoDesconto.ItemIndex := -1;


  CurrICMS.Value       := SqlCdsGriOCI_ICMS.AsFloat;
  CurrICMSstper.Value  := SqlCdsGriOCI_PERC_ICMS_ST.AsFloat;
  CurrIpi.Value        := SqlCdsGriOCI_IPI.AsFloat;
  cbUnidade.Text := SqlCdsGriPRD_UND.AsString;
  fAlterandoItem := False;
  //
  VisualizaSaldoEstoque;
  GetCusto;
   GbItem.Enabled := True;
  CurrPrecoBruto.SetFocus;
end;

procedure TFormOrdCompra.VisualizaSaldoEstoque;
begin
    CurrSaldo.Value  := dbInicio.BuscaUmDadoSqlasFloat ( 'SELECT SUM(kas_saldo) '+
                                                         'FROM kardex_almox_saldo '+
                                                         'WHERE prd_codigo = ( select prd_codigo from prd0000 prd where prd_refer='+qStr( CbReferencia.idretorno )+
                                                         ConcatSe(' AND prd.',DBInicio.ExclusivoSql('PRODUTOS'))
                                                          +' ) '+
                                                         ConcatSe (' and emp_codigo = ', QuotedStr(dbInicio.empresa.EMP_CODIGO)));
                                                         // foi retirado o estoque compartilhado, mostra somente da empresa logada
                                                         //         ExclusivoSql('ESTOQUES') ) );
     edtCusto.Value := SqlCdsRefPRD_PCUSTO.AsCurrency ;

end;


procedure TFormOrdCompra.DbGridCompraKeyPress(Sender: tObject;
  var Key: Char);
begin
    if key = #13 then
       begin
           if SqlCdsGri.IsEmpty = false then
              begin
                  Alterar_Itens;
              end
           else
              begin
                  CbReferencia.SetFocus;
              end;
          Key := #0;
       end;

end;

procedure TFormOrdCompra.cbReferenciaEnter(Sender: TObject);
begin
  inherited;
  if DataMovimento.CdsOrdCompra.State = DsBrowse then
     DataMovimento.CdsOrdCompra.Edit;
  btnGravarItem.Enabled := True;
  btnCancelarItem.Enabled := True;
end;

procedure TFormOrdCompra.cbReferenciaExit(Sender: TObject);
begin

  if DataMovimento.CdsOrdCompra.State in [dsInsert,dsEdit] then
  begin
    if cbReferencia.Text <> '' then
    begin
      SqlCdsRef.Close;
      SqlCdsRef.CommandText := SQLDEF('PRODUTOS','select pc.PRDC_REFERENCIA, pc.PRDC_DESSCRICAO, PRD_PCUSTO, e.PRD_REFER, PRD_DESCRI,PRD_ESTOQUE,PRD_ENTRADA, PRD_SAIDA, PRD_PENDENTE, e.EMP_CODIGO, '+
                                      ' prd_und from PRD0000 e LEFT JOIN PRD0000_CODIGO pc ON pc.PRD_CODIGO = e.PRD_CODIGO ' + ConcatSe(' and  e.', dbInicio.ExclusivoSql('PRODUTOS') ) +
                                      iif(DBeFor_Codigo.Text <> '',' AND pc.for_codigo = '+QuotedStr(DBeFor_Codigo.Text),'' ),
                                      ' WHERE e.PRD_STATUS = ''A'' and e.PRD_REFER LIKE '+QuotedStr(CbReferencia.Text+'%' ) ,'e.PRD_REFER','');
      SqlCdsRef.Open;
      if (SqlCdsRef.IsEmpty = true) then
      begin
           uteis.aviso('Produto não encontrado !');
           CbReferencia.Text := '';
           CbReferencia.SetFocus;

      end
      else
      begin
        if not fAlterandoItem then
        begin
              EdDescricao.Text := SqlCdsRefPRD_DESCRI.AsString;
              cbUnidade.Text := SqlCdsRefPRD_UND.AsString;
              lcodfornecedor.Caption := SqlCdsRefPRDC_REFERENCIA.AsString;
              ldescricaofornecedor.Caption := SqlCdsRefPRDC_DESSCRICAO.AsString;
        end;
        // atualiza visualização do saldo atual no kardex do produto
        VisualizaSaldoEstoque;
        edtCusto.Value := SqlCdsRefPRD_PCUSTO.AsCurrency ;
        EdDescricao.SetFocus;
      end;
    end;
  end;
end;

procedure TFormOrdCompra.cbReferenciaSelect(Sender: TObject);
begin
  inherited;
  if EdDescricao.CanFocus then
    EdDescricao.SetFocus;
end;

procedure TFormOrdCompra.CbFreteTChange(Sender: tObject);
begin
   if DataMovimento.CdsOrdCompra.State = DsBrowse then
       DataMovimento.CdsOrdCompra.Edit;
  // AtualizaTipoFrete(DbeTRP_CODIGO.Text);
end;

procedure TFormOrdCompra.EdtOCP_CODIGOClick(Sender: tObject);
begin
    EdtOCP_CODIGO.SelectAll;
end;

procedure TFormOrdCompra.BuscaOC;
begin
  // Busca código digitado na tabela
  if  EdtOCP_CODIGO.Text <> '' then
  begin
    EdtOCP_CODIGO.Text := StrZero(EdtOCP_CODIGO.Text, EdtOCP_CODIGO.MaxLength);

    DataMovimento.CdsOrdCompra.Close;
    DataMovimento.CdsOrdCompra.CommandText := SQLDEF('ORDENSCOMPRA','select * from OCP0000','where OCP_CODIGO = '''+StrZero(EdtOCP_CODIGO.Text,EdtOCP_CODIGO.MaxLength)+'''','OCP_CODIGO','');
    DataMovimento.CdsOrdCompra.Open;

    if DataMovimento.CdsOrdCompra.IsEmpty = false then
    begin
         try
           BuscaItensOC;
           MostraDados;
           CalcTotal;
         except on e: Exception do
            begin
              showmessage(e.message);
            end;
         end;
    end
    else
    begin
         uteis.aviso('Ordem de Compra não encontrado !');
         EdtOCP_CODIGO.SetFocus;
         EdtOCP_CODIGO.SelectAll;
    end;
  end;
end;

procedure TFormOrdCompra.CurrQtdeExit(Sender: tObject);
begin
    if trim(edDescricao.Text)<>'' then
    begin
       if MatchStr(ActiveControl.Name,['Bit_Cancelar','Bit_Sair','CbReferencia','SpPesquisa']) then
          exit;
       if CurrQtde.Value = 0 then
       begin
              uteis.aviso('Informe a quantidade !');
              CurrQtde.SetFocus;
       end;
    end;
end;

procedure TFormOrdCompra.CurrPrecoBrutoExit(Sender: tObject);
begin
    if trim(edDescricao.Text)<>'' then
    begin
    if MatchStr(ActiveControl.Name,['Bit_Cancelar','Bit_Sair','CbReferencia','SpPesquisa','CurrQtde']) then
       exit;
    if CurrPrecoBruto.Value = 0 then
       begin
           uteis.aviso('Informe a o preço !');
           CurrPrecoBruto.SetFocus;
       end;
    end;
end;

procedure TFormOrdCompra.Alterar_Itens;
begin
  if (SqlCdsGriOCI_SITUACAO.AsString <> 'C') then
  begin
   wAlterar_Itens := True;
   AlteraItem;
  end
  else
      uteis.aviso('Item já recebido !');
end;



procedure TFormOrdCompra.AtualizaTipoFrete(codTransp: string);
var
  cod: Integer;
begin
  if codTransp = '' then
    codTransp := '0';

  cod := BuscaUmDadoSqlAsInteger('SELECT FRETE FROM TRP0000 t WHERE TRP_CODIGO = ' + QuotedStr(codTransp));
  case cod of
    0, 1, 2, 3, 4 : CbFreteT.ItemIndex := cod;
    9 : CbFreteT.ItemIndex := 5;
  end;
end;

procedure TFormOrdCompra.DBeFor_CodigoClick(Sender: tObject);
begin
     if DataMovimento.CdsOrdCompra.State = dsBrowse then
        DataMovimento.CdsOrdCompra.Edit;
     DBeFor_Codigo.SelectAll;
end;

procedure TFormOrdCompra.Buscar_Dados_Fornecedor(const sCodForn: String);
begin
   if (sCodForn <> '') then
    begin

       CdsFor.Close;
       qFor.Sql.Text :=
       SQLDEF('FORNECEDORES', 'SELECT T1.FOR_CODIGO,FOR_ENDERE, FOR_CIDADE, FOR_BAIRRO, FOR_UF, FOR_CGC, T1.FOR_RAZAO, T1.FOR_FONCONT,T1.FOR_FAXCONT, T1.FOR_CONTATO, '+
              ' T1.FOR_EMAILCONT, T1.FOR_EMAIL, T1.PCL_CODIGO, t1.TRP_CODIGO, T1.EMP_CODIGO FROM FOR0000 T1','WHERE T1.FOR_CODIGO = '''+sCodForn+'''','','T1.'  );
       CdsFor.Open;

    end
   else
     CdsFor.Close;


end;

procedure TFormOrdCompra.Buscar_Dados_Transportadora(const sCodTra: String);
begin
   {Monta Sql}
   FrmMenu.RwSqlGeralCmd.MontarSql      := False;
   FrmMenu.RwSqlGeralCmd.ResetaCampos   := True;
   FrmMenu.RwSqlGeralCmd.CodigoEmpresa  := StrToInt(dbInicio.Empresa.EMP_CODIGO);
   FrmMenu.RwSqlGeralCmd.MultiEmpresa   := True;
   FrmMenu.RwSqlGeralCmd.TipoSql        := Consultar;
   FrmMenu.RwSqlGeralCmd.Apelido        := 'T1.';
   FrmMenu.RwSqlGeralCmd.Campos         := 'T1.TRP_CODIGO,'+
                                           'T1.TRP_RAZAO,'+
                                           'T1.TRP_FONE,'+
                                           'T1.TRP_CONTATO,'+
                                           'T1.EMP_CODIGO';
   FrmMenu.RwSqlGeralCmd.Tabela         := 'TRP0000';
   FrmMenu.RwSqlGeralCmd.UniaoTabelas   := '';
   FrmMenu.RwSqlGeralCmd.Compartilhar   := 'TRANSPORTADORAS';
   FrmMenu.RwSqlGeralCmd.Condicao       := 'T1.TRP_CODIGO = '''+sCodTra+'''';
   FrmMenu.RwSqlGeralCmd.CamposAgrupar  := '';
   FrmMenu.RwSqlGeralCmd.CamposOrdernar := 'T1.TRP_CODIGO';
   FrmMenu.RwSqlGeralCmd.MontarSql      := True;
   //
   SetCommandTextTranspAndOpen( FrmMenu.RwSqlGeralCmd.ComandoSql );
end;

procedure TFormOrdCompra.SetCommandTextTranspAndOpen( const TxtSql:String ); // ADR 12/2015
begin
   SqlCdsTra.Close;
   SqlCdsTra.CommandText := TxtSql;
   SqlCdsTra.Open;
   if (not SqlCdsTra.IsEmpty) then
      begin
         Edt_Fone.Text      := MascaraFone(SqlCdsTraTRP_FONE.AsString);
         Edt_Contato.Text   := SqlCdsTraTRP_CONTATO.AsString;
      end
   else
      begin
         Edt_Fone.Text      := '';
         Edt_Contato.Text   := '';
      end;
end;

procedure TFormOrdCompra.CbFornecedor1ButtonClick(Sender: TObject);
var tcr: TFormFornecGrid;
begin
  tcr:= TFormFornecGrid.Create(self);
  try
      tcr.ShowModal;
      if tcr.modalresult = mrok then
         CbFornecedor1.idRetorno := tcr.IDRetorno;


  finally
       FreeAndNil(tcr);
  end;
end;

procedure TFormOrdCompra.CbFornecedor1Click(Sender: tObject);
begin
   //CbFornecedor1.SelectAll;
   if DataMovimento.CdsOrdCompra.State = dsBrowse then
      DataMovimento.CdsOrdCompra.Edit;
end;

procedure TFormOrdCompra.CbFornecedor1Select(Sender: TObject);
var forn : string;
begin
  if DataMovimento.CdsOrdCompra.State =  dsInactive then
  begin
    forn :=  CbFornecedor1.idRetorno;
    Bit_novo.Click;
    CbFornecedor1.idRetorno := forn;
  end;
  if CbFornecedor1.idRetorno <> '' then
  begin
    if DataMovimento.CdsOrdCompra.State = dsBrowse then
       DataMovimento.CdsOrdCompra.Edit;
    DataMovimento.cDsOrdCompraFOR_CODIGO.ASSTRING:=CbFornecedor1.idRetorno;
    Buscar_Dados_Fornecedor(DataMovimento.cDsOrdCompraFOR_CODIGO.ASSTRING);

    CbTransp1.idRetorno := CdsForTRP_CODIGO.AsString;
    if CbTransp1.idRetorno = '' then
    begin
      CbFreteT.ItemIndex := -1;
      Edt_Fone.Text := '';
      Edt_Contato.Text := '';
    end;

    if (CdsForPCL_CODIGO.AsString <> '') then
    begin
           if dbInicio.BuscaUmDadoSqlAsiNTEGER ( 'Select cast(count(*) as integer) as conta from    pcl0000 where pcl_codigo='+qStr( CdsForPCL_CODIGO.AsString) )>0 then
              if dbInicio.BuscaUmDadoSqlAsiNTEGER ( 'Select cast(count(*) as integer) as conta from    pcl0000 where pcl_codigo='+qStr( CdsForPCL_CODIGO.AsString) )>0 then
                 DataMovimento.CDsOrdCompraOCP_prazo.AsString := dbInicio.BuscaUmDadoSqlAsString ( 'select pcl_nome from pcl0000 where pcl_codigo='+qStr(CdsForPCL_CODIGO.AsString) );
    end
    Else
      DataMovimento.CDsOrdCompraOCP_prazo.clear;
  end
  Else
  begin if not wIncluir then
    CdsFor.close;
//   if DataMovimento.CdsOrdCompra.State = dsEdit then
//     DataMovimento.cDsOrdCompraFOR_CODIGO.Clear;
  end;
end;

procedure TFormOrdCompra.CbTransp1Click(Sender: tObject);
begin

   if DataMovimento.CdsOrdCompra.State = dsBrowse then
      DataMovimento.CdsOrdCompra.Edit;
end;

procedure TFormOrdCompra.CbTransp1Select(Sender: TObject);
begin
  if not (DataMovimento.CdsOrdCompra.State in [dsInsert,dsEdit]) then
    DataMovimento.CdsOrdCompra.Edit;
  desabilitaBotoes;
  if CbTransp1.IdRetorno<>'' then
  begin
      if (DataMovimento.CdsOrdCompra.State in [dsInsert,dsEdit]) then
      begin
        DataMovimento.CdsOrdCompraTRP_CODIGO.asString:=CbTransp1.IdRetorno;
        Buscar_Dados_Transportadora(StrZero(DbeTRP_CODIGO.Text,3));
      end;
  end
  Else
     DataMovimento.CdsOrdCompraTRP_CODIGO.Clear;
  AtualizaTipoFrete(DbeTRP_CODIGO.Text);
end;

procedure TFormOrdCompra.frxPedidoGetValue(const VarName: String;
  var Value: Variant);
var
  numIE : string;
  desconto, totalDesconto: Double;
  Clone: TClientDataSet;
begin
  if (VarName = 'ICMSST') then
    Value := CurrTotalST.Value
  else
  if (VarName  = 'TIPOFRETE') then
     Value := CbFreteT.Text
  else
  if (VarName  = 'FORFONE') then
     Value := MascaraFone(CdsForFOR_FONCONT.AsString)
  else
  if (VarName  = 'FORFAX') then
     Value := MascaraFone(CdsForFOR_FAXCONT.AsString)
  else
  if (VarName  = 'TRAFONE') then
     if (SqlCdsTra.IsEmpty) then
        Value := ''
     else
        Value := MascaraFone(SqlCdsTraTRP_FONE.AsString)
  else
  if (VarName  = 'LOCALENTREGA') then
     if (Trim(dbInicio.Empresa.END_ENTREGA) = '') then
        Value := 'O MESMO'
     else
        Value := dbInicio.Empresa.END_ENTREGA+' '+dbInicio.Empresa.CID_ENTREGA+' - '+dbInicio.Empresa.UF_ENTREGA+' - CEP: '+dbInicio.Empresa.CEP_ENTREGA
  else
  if (VarName  = 'TOTALCIPI') then
  begin
    Value := CurrTotGeral.Value;
  end
  else
  if (VarName  = 'TOTALPROD') then
     Value := CurrTotal.Value
  else
  if (VarName  = 'IPI') then
     Value := CurreIpi.Value
  else
  if (VarName  = 'PGTO') then
     Value := dbInicio.BuscaUmDadoSqlAsString ( 'select pcl_nome from pcl0000 where pcl_codigo='+qStr(CdsForPCL_CODIGO.AsString) )
  else
  if (VarName  = 'RAZAO') then
     Value := dbInicio.Empresa.FANTASIA
  else
  if (VarName  = 'ENDERECO') then
     Value := dbInicio.Empresa.ENDERECO
  else
  if (VarName  = 'CEP') then
     Value := dbInicio.Empresa.CEP
  else
  if (VarName  = 'CIDADE') then
     Value := dbInicio.Empresa.CIDADE
  else
  if (VarName  = 'UF') then
     Value := dbInicio.Empresa.UF
  else
  if (VarName  = 'FONE') then
     Value := dbInicio.Empresa.FONE
  else
  if (VarName  = 'BAIRRO') then
     Value := dbInicio.Empresa.BAIRRO
  else
  if (VarName  = 'FAX') then
     Value := dbInicio.Empresa.FAX
  else
  if (VarName  = 'EMAIL') then
     Value := dbInicio.Empresa.EMAILCOMPRA
  else
  if (VarName  = 'CNPJ') then
     Value := dbInicio.Empresa.CNPJ_CNPF
  else
  if (VarName  = 'INSCR') then
  begin
    if DBInicio.GetParametroSistema('PMT_MULTIPLAS_IE') = 'S' then
    begin
      NumIE := BuscaUmDadoSqlAsString('SELECT EMI_IE FROM EMP_MULTIPLAS_IE WHERE EMI_CODIGO = ' + VarToStr(dblcInscricaoEstadual.KeyValue)  );
      Value := NumIE;
    end
    else
       Value := dbInicio.Empresa.INSC_EST;
  end
  else
  if (VarName  = 'DESCONTO') then
  begin
    if SqlCdsGriOCI_TIPO_DESCONTO.AsString = 'P' then
    begin
      Value := 'R$' + FormatFloat('###,###,##0.00', ((SqlCdsGriOCI_PRECO.AsFloat * SqlCdsGriOCI_QTDES.AsFloat )/ 100) * SqlCdsGriOCI_DESCONTO.AsFloat);
    end
    else
      Value := 'R$' + FormatFloat('###,###,##0.00', SqlCdsGriOCI_DESCONTO.AsFloat);
  end
  else
  if (VarName  = 'TOTALDESCONTO') then
  begin
    Clone := TClientDataSet.Create(Self);
    Clone.CloneCursor(SqlCdsGri, True);
    Clone.First;
    totalDesconto := 0;
    while not Clone.Eof do
    begin
      if Clone.FieldByName('OCI_TIPO_DESCONTO').AsString = 'P' then
        desconto := ((Clone.FieldByName('OCI_PRECO').AsFloat  * Clone.FieldByName('OCI_QTDES').AsFloat)/ 100) * Clone.FieldByName('OCI_DESCONTO').AsFloat
      else
        desconto := Clone.FieldByName('OCI_DESCONTO').AsFloat;
      totalDesconto := totalDesconto + desconto;
      Clone.Next;
    end;
    Clone.Free;
    Value := totalDesconto;
  end
  ;


end;

procedure TFormOrdCompra.btnMailClick(Sender: tObject);
var tcr: TfrmEMAIL0001;
begin
   if (DataMovimento.CdsOrdCompra.IsEmpty) then
      begin
         uteis.aviso('Nenhum pedido de compra para ser Enviado');
      end
   else
      begin
         if (uteis.confirmacao  ( 'Gostaria de Enviar por Email?')=mrYes) then
              begin
                try
                  CreateDirectory(PWideChar(dbInicio.SistemaLocal+'pedidosCompra'), nil);
                except
                  raise Exception.Create('Error - não é possível criar o diretório');
                end;
                frxPDFExport1.DefaultPath := dbInicio.SistemaLocal+'pedidosCompra';
                frxPDFExport1.FileName    := DataMovimento.CdsOrdCompraOCP_CODIGO.AsString + '.pdf';
                frxPDFExport1.ShowDialog  := False;
                frxPedido.PrepareReport();
                frxPedido.Export(frxPDFExport1);
                tcr := TfrmEMAIL0001.Create(Application);
                try
                  tcr.modulo := 'Pedido de Compra';
                  tcr.titulo := 'Orçamento de Compra ' +  DataMovimento.CdsOrdCompraOCP_CODIGO.AsString + ' - R$ ' + FormatFloat('##0.00', CurrTotGeral.Value);

                  tcr.sCaminhoArquivo := dbInicio.SistemaLocal+'pedidosCompra\'+DataMovimento.CdsOrdCompraOCP_CODIGO.AsString + '.pdf';
                  tcr.email_de_enviado := dbInicio.Empresa.EMAILCOMPRA;
                  tcr.ssenha := Trim(dbInicio.Empresa.EmailPassworldCompras);
                  tcr.nome_envio := DBInicio.Empresa.RAZAO;
                  tcr.sEmailCliente   := DBeEmailContato.Text+';'+DBeEmail.Text;
                  tcr.sAssunto        := 'Orçamento de Compra ' +  DataMovimento.CdsOrdCompraOCP_CODIGO.AsString;
                  tcr.SpeedButton1.Enabled := False;
                  tcr.MMsg.Lines.Add('');
                  tcr.MMsg.Lines.Add('Prezado ' + DbeFOR_CONTATO.Text+',');
                  tcr.MMsg.Lines.Add('');
                  tcr.MMsg.Lines.Add(' Segue em anexo o orçamento de Compra '+ DataMovimento.CdsOrdCompraOCP_CODIGO.AsString+'.');
                  tcr.MMsg.Lines.Add('');
                  tcr.MMsg.Lines.Add(' Atenciosamente, ');
                  tcr.MMsg.Lines.Add('');
                  tcr.MMsg.Lines.Add(' '+DBInicio.empresa.NOMECOMPRADOR);
                  tcr.ProcessarInformacoes;
                  if tcr.ssucesso then
                    GravaHistoricoEmail(tcr.modulo, tcr.EdMail.Text, tcr.titulo, 'F', DBeFor_Codigo.Text, Now, DBInicio.Usuario.CODIGO, tcr.sCaminhoArquivo);
                finally
                  tcr.Destroy;
                  tcr := Nil;
                end;
              end;
     end;
end;

procedure TFormOrdCompra.SpeedButton1Click(Sender: tObject);
begin
  FrmCadastroObservacao := TFrmCadastroObservacao.Create(Application);
   try

      FrmCadastroObservacao.FormStyle := fsNormal;
      FrmCadastroObservacao.Visible := false;
      FrmCadastroObservacao.memo := DBM_OBS;
      FrmCadastroObservacao.ShowModal;
   finally
      FrmCadastroObservacao.Destroy;
      FrmCadastroObservacao :=Nil;
   end;
   if not( DataMovimento.DsOrdCompra.State in dsEditModes) then
     DataMovimento.DsOrdCompra.Edit;
   Bit_Gravar.Enabled := true;
end;

procedure TFormOrdCompra.SqlCdsGriPRD_DESCRIGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  Text := SqlCdsGriPRD_DESCRI.Asstring;
end;

procedure TFormOrdCompra.FormCreate(Sender: tObject);
begin
  inherited;
  SELF.Width:=1127;
  SELF.Height:=630;
  bMensagemPedidoCompra :=  dbInicio.GetParametroSistema('PMT_PEDIDO_COMPRA_MSG');
  SalvaStatusGrid := True;
  fAlterandoItem := False;
  DbGridCompra.Enabled :=True;
  pcabecalho.Enabled := False;
  GbItem.Enabled := False;
  btnGravarItem.Enabled := False;
  btnCancelarItem.Enabled := False;
  cbunidade.Items.Clear;
  OpenAux('SELECT * FROM PRD_UNIDADE');
  qAux.First;
  while NOT qAux.Eof do
  begin
    cbUnidade.Items.Add(qAux.FieldByName('PRD_UNISIGLA').AsString);

    qAux.NEXT;
  end;
end;


procedure TFormOrdCompra.FormDestroy(Sender: TObject);
begin
     FormOrdCompra := Nil;
end;

Function TFormOrdCompra.Verifica_Transportadora_Ativo(const sCodTran:String):Boolean;
begin
  Result := False;
  Result := BuscaUmDadoSqlAsString(SQLDEF('TRANSPORTADORAS', 'SELECT TRP_ATIVO FROM TRP0000 ','WHERE TRP_CODIGO = '+QuotedStr(sCodTran),'','')) = 'S';
end;

Procedure TFormOrdCompra.HabilitaEdicaoItem( pFlg: Boolean );
begin
   CbReferencia.enabled := pFlg ;
   EdDescricao.enabled := pFlg ;
   CurrQtde.enabled := pFlg ;
   currDescontoItem.enabled := pFlg ;
   rgTipoDesconto.Enabled := pFlg;
   currICMS.enabled := pFlg ;
   CurrPrecoBruto.enabled := pFlg ;
   CurrIpi.enabled := pFlg;
   cbUnidade.Enabled := pFlg;
end;

procedure TFormOrdCompra.ImprimeModelo1;
begin
  if (DataMovimento.CdsOrdCompra.IsEmpty) then
  begin
         uteis.aviso('Nenhum pedido de compra para ser impresso');
  end
  else
  begin
     CdsFor.Filtered := False;
     CdsFor.Filter := 'FOR_CODIGO = '+QuotedStr(DataMovimento.CdsOrdCompraFOR_CODIGO.AsString);
     CdsFor.Filtered := True;

     TfrxMemoView(frxRefEmpresa.FindObject('mtotal_cc')).DisplayFormat.FormatStr := '%2.'+IntToStr(FrmMenu.iCasaDecimaisOcp)+ 'n';
     TfrxMemoView(frxRefEmpresa.FindObject('mpreco')).DisplayFormat.FormatStr := '%2.'+IntToStr(FrmMenu.iCasaDecimaisOcp)+ 'n';
     TfrxMemoView(frxRefEmpresa.FindObject('mtotalgeral')).DisplayFormat.FormatStr := '%2.'+IntToStr(FrmMenu.iCasaDecimaisOcp)+ 'n';
     DataCadastros.sqlUpdate.Close;
     DataCadastros.SqlUpdate.sql.text :='SELECT EMP_LOGO FROM EMP0000 WHERE EMP_CODIGO ='+QuotedStr(dbInicio.Empresa.EMP_CODIGO);
     DataCadastros.sqlUpdate.Open;
     if (not DataCadastros.sqlUpdate.IsEmpty) then
     begin
        if (DataCadastros.sqlUpdate.FieldByName('EMP_LOGO').AsString <> '') then
        begin
          stream := DataCadastros.sqlUpdate.CreateBlobStream(DataCadastros.sqlUpdate.FieldByName('EMP_LOGO'),bmRead);
          //FrmMenu.ImglogoMenu.saPicture.sa
          MinhaImagem := TJPEGImage.Create;
          MinhaImagem.LoadFromStream(stream);
          MinhaImagem.SaveToStream(stream);
          TfrxPictureView(frxRefEmpresa.FindObject('LogoEmpresa')).Picture.Assign(MinhaImagem)
        end;
     end;
     frxRefEmpresa.ShowReport();
     CdsFor.Filtered := False;
  end;
end;

procedure TFormOrdCompra.ImprimeModelo2;
begin
  if (DataMovimento.CdsOrdCompra.IsEmpty) then
  begin
         uteis.aviso('Nenhum pedido de compra para ser impresso');
  end
  else
  begin
     CdsFor.Filtered := False;
     CdsFor.Filter := 'FOR_CODIGO = '+QuotedStr(DataMovimento.CdsOrdCompraFOR_CODIGO.AsString);
     CdsFor.Filtered := True;

     TfrxMemoView(frxCodFornecedor.FindObject('mtotal_cc')).DisplayFormat.FormatStr := '%2.'+IntToStr(FrmMenu.iCasaDecimaisOcp)+ 'n';
     TfrxMemoView(frxCodFornecedor.FindObject('mpreco')).DisplayFormat.FormatStr := '%2.'+IntToStr(FrmMenu.iCasaDecimaisOcp)+ 'n';
     TfrxMemoView(frxCodFornecedor.FindObject('mtotalgeral')).DisplayFormat.FormatStr := '%2.'+IntToStr(FrmMenu.iCasaDecimaisOcp)+ 'n';
     DataCadastros.sqlUpdate.Close;
     DataCadastros.SqlUpdate.sql.text :='SELECT EMP_LOGO FROM EMP0000 WHERE EMP_CODIGO ='+QuotedStr(dbInicio.Empresa.EMP_CODIGO);
     DataCadastros.sqlUpdate.Open;
     if (not DataCadastros.sqlUpdate.IsEmpty) then
     begin
        if (DataCadastros.sqlUpdate.FieldByName('EMP_LOGO').AsString <> '') then
        begin
          stream := DataCadastros.sqlUpdate.CreateBlobStream(DataCadastros.sqlUpdate.FieldByName('EMP_LOGO'),bmRead);
          //FrmMenu.ImglogoMenu.saPicture.sa
          MinhaImagem := TJPEGImage.Create;
          MinhaImagem.LoadFromStream(stream);
          MinhaImagem.SaveToStream(stream);
          TfrxPictureView(frxCodFornecedor.FindObject('LogoEmpresa')).Picture.Assign(MinhaImagem)
        end;
     end;

     frxCodFornecedor.ShowReport();
     CdsFor.Filtered := False;
  end;
end;

procedure TFormOrdCompra.ImprimeModelo3;
begin
  if (DataMovimento.CdsOrdCompra.IsEmpty) then
  begin
         uteis.aviso('Nenhum pedido de compra para ser impresso');
  end
  else
  begin
     CdsFor.Filtered := False;
     CdsFor.Filter := 'FOR_CODIGO = '+QuotedStr(DataMovimento.CdsOrdCompraFOR_CODIGO.AsString);
     CdsFor.Filtered := True;

//
     TfrxMemoView(frxPedido.FindObject('mcodfornecedor')).Visible := dbinicio.Empresa.wPMT_ORDEM_CODFORN;
     TfrxMemoView(frxPedido.FindObject('mdescfornecedor')).Visible := dbinicio.Empresa.wPMT_ORDEM_DESCFORN;
     if  not dbinicio.Empresa.wPMT_ORDEM_CODFORN and not dbinicio.Empresa.wPMT_ORDEM_DESCFORN then
     begin
       TfrxMemoView(frxPedido.FindObject('ldescrfornecedor')).Top := 0;
       TfrxMemoView(frxPedido.FindObject('lcodfornecedor')).top := 0;
       TfrxMasterData(frxPedido.FindObject('MasterData1')).Height := 15.11;
     end
     else
       TfrxMasterData(frxPedido.FindObject('MasterData1')).Height := 31.37;
     TfrxMemoView(frxPedido.FindObject('ldescrfornecedor')).Visible := dbinicio.Empresa.wPMT_ORDEM_DESCFORN;
     TfrxMemoView(frxPedido.FindObject('lcodfornecedor')).Visible := dbinicio.Empresa.wPMT_ORDEM_CODFORN;

     TfrxMemoView(frxPedido.FindObject('mtotal_cc')).DisplayFormat.FormatStr := '%2.'+IntToStr(FrmMenu.iCasaDecimaisOcp)+ 'n';
     TfrxMemoView(frxPedido.FindObject('mpreco')).DisplayFormat.FormatStr := '%2.'+IntToStr(FrmMenu.iCasaDecimaisOcp)+ 'n';
     TfrxMemoView(frxPedido.FindObject('mtotalgeral')).DisplayFormat.FormatStr := '%2.'+IntToStr(FrmMenu.iCasaDecimaisOcp)+ 'n';
     DataCadastros.sqlUpdate.Close;
     DataCadastros.SqlUpdate.sql.text :='SELECT EMP_LOGO FROM EMP0000 WHERE EMP_CODIGO ='+QuotedStr(dbInicio.Empresa.EMP_CODIGO);
     DataCadastros.sqlUpdate.Open;
     if (not DataCadastros.sqlUpdate.IsEmpty) then
     begin
        if (DataCadastros.sqlUpdate.FieldByName('EMP_LOGO').AsString <> '') then
        begin
          stream := DataCadastros.sqlUpdate.CreateBlobStream(DataCadastros.sqlUpdate.FieldByName('EMP_LOGO'),bmRead);
          //FrmMenu.ImglogoMenu.saPicture.sa
          MinhaImagem := TJPEGImage.Create;
          MinhaImagem.LoadFromStream(stream);
          MinhaImagem.SaveToStream(stream);
          TfrxPictureView(frxPedido.FindObject('LogoEmpresa')).Picture.Assign(MinhaImagem)
        end;
     end;
     frxPedido.ShowReport();
     CdsFor.Filtered := False;
  end;
end;

end.





