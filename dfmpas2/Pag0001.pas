unit Pag0001;

interface

uses
    Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, BasedbForm, Variants,
    StdCtrls, DBCtrls, Mask, ExtCtrls, ComCtrls, Buttons, DB, Grids, DBGrids, Spin,
    DBTables, Rwfunc, Menus,   Provider, SqlExpr,SqlClientDataSet, DBClient,
    DBLocal, DBLocalS, ImgList, Data.DBXFirebird, System.ImageList, SimpleDS,
  ACBrEnterTab, ACBrBase, ACBrCalculadora, SgDbSeachComboUnit, BaseForm, Data.FMTBCd, ACBrETQ, JvExStdCtrls, JvEdit, JvValidateEdit, JvExMask, JvToolEdit, JvDBControls, For0002;

type
  TFormContasPagar = class(TfrmBaseDB)
    PgParcelas: TPageControl;
    TShParcelas: TTabSheet;
    PagLivro: TTabSheet;
    DbChkPag_livro: TDBCheckBox;
    DBePag_operacao: TDBEdit;
    DBePag_baseicms: TDBEdit;
    DBePag_baseipi: TDBEdit;
    DBePag_serie: TDBEdit;
    DBePag_aliqicms: TDBEdit;
    DBepag_vl_ipi: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    GRP00: TGroupBox;
    Label1: TLabel;
    EdtPag_codigo: TEdit;
    Label16: TLabel;
    DbeDocumento: TDBEdit;
    Label24: TLabel;
    Label11: TLabel;
    DbeFor_codigo: TDBEdit;
    Label12: TLabel;
    DBePag_Vlnota: TDBEdit;
    Label17: TLabel;
    Label14: TLabel;
    DbePag_obs: TDBEdit;
    Label13: TLabel;
    SqlCdsCtaAnalise: TSQLClientDataSet;
    SqlCdsCtaAnaliseCCT_CODIGO: TStringField;
    SqlCdsCtaAnaliseCCT_PROVISAO: TFMTBCdField;
    SqlCdsCtaAnaliseCCT_DESCRI: TStringField;
    SqlCdsCtaAnaliseCEC_CODIGO: TStringField;
    SqlCdsCtaAnaliseCCT_TIPO: TStringField;
    SqlCdsCtaAnaliseCCT_CONTA: TStringField;
    SqlCdsCtaAnaliseEMP_CODIGO: TStringField;
    LblProjCx: TLabel;
    SqlCdsProjCx: TSQLClientDataSet;
    SqlCdsProjCxPCX_CODIGO: TStringField;
    SqlCdsProjCxPCX_DESCRI: TStringField;
    SqlCdsProjCxPCX_INICIO: TSQLTimeStampField;
    SqlCdsProjCxPCX_FIM: TSQLTimeStampField;
    SqlCdsProjCxPCX_TERMINADO: TStringField;
    SqlCdsProjCxEMP_CODIGO: TStringField;
    LblRet: TLabel;
    spdRet: TSpeedButton;
    SqlCdsOpv: TSQLClientDataSet;
    SqlCdsOpvOPV_CODIGO: TIntegerField;
    SqlCdsOpvOPV_DESCRICAO: TStringField;
    SqlCdsOpvOPV_TIPO: TStringField;
    DBeCct_Codigo: TDBEdit;
    DBePcx_Codigo: TDBEdit;
    SqlCdsPagarParc: TSQLClientDataSet;
    DsPagarParcGrid: TDataSource;
    SqlCdsPagarParcPAG_CODIGO: TStringField;
    SqlCdsPagarParcPPC_NUMER: TStringField;
    SqlCdsPagarParcPPC_VLPARC: TFMTBCdField;
    SqlCdsPagarParcPPC_VLPAGO: TFMTBCdField;
    SqlCdsPagarParcPPC_STATUS: TStringField;
    SqlCdsPagarParcBAN_CODIGO: TStringField;
    SqlCdsPagarParcBAN_APELIDO: TStringField;
    DBDtPAG_VL_RET: TDBEdit;
    SqlCdsCtaAnaliseCCT_NIVEL: TStringField;
    SqlCdsCtaAnaliseCCT_STATUS: TStringField;
    DbGridParcelas: TDBGrid;
    SqlCdsPagarParcPPC_SITPAG: TStringField;
    SqlCdsPagarParcPAG_REGISTRO: TIntegerField;
    SqlCdsPagarParcPPC_VENCTO: TSQLTimeStampField;
    SqlCdsPagarParcPPC_PAGTO: TSQLTimeStampField;
    SqlCdsPagarParcPPC_PREVISAO: TStringField;
    SqlCdsPagarParcPPC_EXCLUSAO: TStringField;
    GrpExclusao: TGroupBox;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    DBCheckBox2: TDBCheckBox;
    DBEdit1: TDBEdit;
    Edt_Usu_Cod: TDBEdit;
    Edt_Usu_Nome: TDBEdit;
    DBEdt_Motivo: TDBEdit;
    Pn_Botoes: TPanel;
    Bit_Cancelar: TBitBtn;
    Bit_Sair: TBitBtn;
    Bit_novo: TBitBtn;
    Bit_Excluir: TBitBtn;
    Bit_Gravar: TBitBtn;
    Bit_Lista: TBitBtn;
    Bit_Relatorio: TBitBtn;
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    SqlCdsPagarParcPPC_DESCTO: TFMTBCdField;
    SqlCdsPagarParcPPC_JUROS: TFMTBCdField;
    SqlCdsPagarParcPPC_MULTA: TFMTBCdField;
    SqlCdsPagarParcCCPendente: TFloatField;
    ImageList1: TImageList;
    DsPagamentos: TDataSource;
    CdSPagamentos: TSQLClientDataSet;
    PopupMenu1: TPopupMenu;
    EstornaBaixa1: TMenuItem;
    CdSPagamentosPAP_REGISTRO: TIntegerField;
    CdSPagamentosPAG_DATA_PAGAMENTO: TDateField;
    CdSPagamentosPAG_VALOR: TFMTBCdField;
    CdSPagamentosPAG_DESCONTO: TFMTBCdField;
    CdSPagamentosPAG_JUROS: TFMTBCdField;
    CdSPagamentosPAG_MULTA: TFMTBCdField;
    CdSPagamentosPAG_PAGO: TFMTBCdField;
    CdSPagamentosBAN_CODIGO: TStringField;
    CdSPagamentosBAN_RAZAO: TStringField;
    CdSPagamentosFPG_REGISTRO: TIntegerField;
    CdSPagamentosFPG_DESCRICAO: TStringField;
    CdSPagamentosUSU_CODIGO: TIntegerField;
    CdSPagamentosUSU_NOME: TStringField;
    BitPagamentos: TBitBtn;
    BitRepetir: TBitBtn;
    PainelOpcao: TPanel;
    BitBtn1: TBitBtn;
    GroupBox4: TGroupBox;
    Image6: TImage;
    Image7: TImage;
    RbBaixa: TRadioButton;
    RbManutencao: TRadioButton;
    Panel1: TPanel;
    GRP01: TGroupBox;
    PnParcelas: TPanel;
    SpinParcelas: TSpinEdit;
    BtnOkParcelas: TButton;
    BitParcelar: TBitBtn;
    GroupBox2: TGroupBox;
    Image1: TImage;
    Label38: TLabel;
    Image4: TImage;
    Label41: TLabel;
    Image2: TImage;
    Label39: TLabel;
    Image3: TImage;
    Label40: TLabel;
    Image5: TImage;
    Label42: TLabel;
    DBChk_Previsao: TDBCheckBox;
    PanVaria: TPanel;
    Panel4: TPanel;
    SpeedButton5: TSpeedButton;
    GroupBox3: TGroupBox;
    Label22: TLabel;
    Label23: TLabel;
    Label10: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label31: TLabel;
    Label30: TLabel;
    Label8: TLabel;
    DBEdt_BASE_ISS: TDBEdit;
    DBedt_BASE_INSS: TDBEdit;
    DBEdt_IRPJ_PERC: TDBEdit;
    DBEdt_PIS_PERC: TDBEdit;
    DBEdt_COFINS_PER: TDBEdit;
    DBEdt_CONTSOCIAL_PERC: TDBEdit;
    DBEdt_IRPJ_RET: TDBEdit;
    DBEdt_PIS_RET: TDBEdit;
    DBEdt_COFINS_RET: TDBEdit;
    DBEdt_CONTSOCIAL_RET: TDBEdit;
    DBEdt_INSS_PERC: TDBEdit;
    DBEdt_INSS_RET: TDBEdit;
    DbePAG_VL_RET: TDBEdit;
    BtnCalcular: TBitBtn;
    DBEdt_ISS_PERC: TDBEdit;
    DBEdt_ISS_RET: TDBEdit;
    GroupBox5: TGroupBox;
    DBEdit2: TDBEdit;
    SqlCdsPagarParcPPC_OBS: TStringField;
    BitBtn2: TBitBtn;
    Label9: TLabel;
    DBEdit3: TDBEdit;
    ImprimirRecibo1: TMenuItem;
    tsRateioCentroCusto: TTabSheet;
    dbgrdRateio: TDBGrid;
    CdsRateioCentroCusto: TClientDataSet;
    CdsRateioCentroCustoPCX_CODIGO: TStringField;
    CdsRateioCentroCustoPCX_DESCRI: TStringField;
    CdsRateioCentroCustoPCX_NIVEL: TStringField;
    CdsRateioCentroCustoFIR_INDICE: TFMTBCdField;
    CdsRateioCentroCustoVALOR: TFMTBCdField;
    dsRateioCentroCusto: TDataSource;
    CdsRateioCentroCustoCC_VALOR: TFloatField;
    SqlCdsPagarParcPCXPF_REGISTRO: TIntegerField;
    btnRateioManual: TBitBtn;
    DBCheckBox1: TDBCheckBox;
    btnRateioColaborador: TBitBtn;
    lblValorDesconto: TLabel;
    dbedtPAG_VALOR_N_RATEIA: TDBEdit;
    pnlAviso: TPanel;
    CbFornecedor: TSgDbSearchCombo;
    CbxCtaAnalise: TSgDbSearchCombo;
    CbxProjCx: TSgDbSearchCombo;
    qFor: TSQLQuery;
    qConta: TSQLQuery;
    qCCusto: TSQLQuery;
    CbxTipoDoc: TComboBox;
    qRateioCentroCusto: TSQLQuery;
    dspRateioCentroCusto: TDataSetProvider;
    CdsRateioCentroCustoVALOR_TOT: TAggregateField;
    Panel2: TPanel;
    Label15: TLabel;
    Sp_fornecedor: TSpeedButton;
    CDSPagamentosPAG_OBSERVACAO: TStringField;
    SqlCdsPagarParcPPC_NPARCELAS: TSmallintField;
    edTotRateio: TJvValidateEdit;
    DbePag_DtEmis: TJvDBDateEdit;
    SqlCdsPagarParcPPC_SIT_LIBERACAO: TStringField;
    SqlCdsPagarParcPPC_VALOR_APONTADO: TFMTBCDField;
    SqlCdsPagarParcfpg_descricao: TStringField;

    procedure Bit_SairClick(Sender: tObject);
    procedure Bit_novoClick(Sender: tObject);
    procedure Bit_ExcluirClick(Sender: tObject);
    procedure Bit_GravarClick(Sender: tObject);
    procedure DesabilitaBotoes;
    procedure HabilitaBotoes;
    procedure verificaEdicao;
    procedure Bit_CancelarClick(Sender: tObject);
    procedure FormCloseQuery(Sender: tObject; var CanClose: Boolean);
    procedure FormShow(Sender: tObject);
    procedure EdtPag_codigoExit(Sender: tObject);
    procedure BitParcelarClick(Sender: tObject);
    procedure DbGridParcelasDblClick(Sender: tObject);
    procedure BtnOkParcelasClick(Sender: tObject);
    procedure SpinParcelasExit(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure Bit_RelatorioClick(Sender: tObject);
    procedure DBNavigator2Click(Sender: tObject; Button: TNavigateBtn);
    procedure DbeFor_codigoExit(Sender: tObject);
    procedure DBDtPag_DtEmisExit(Sender: tObject);
    procedure DbeDocumentoExit(Sender: tObject);
    procedure DBePag_VlnotaEnter(Sender: tObject);
    procedure DBePag_VlnotaExit(Sender: tObject);
    procedure CbxTipoDocClick(Sender: tObject);
    procedure spdRetClick(Sender: tObject);
    procedure SpeedButton5Click(Sender: tObject);
    procedure DBedt_BASE_INSSKeyPress(Sender: tObject; var Key: Char);
    procedure DBDtPAG_VL_RETExit(Sender: tObject);
    procedure CbxOpvExit(Sender: tObject);
    procedure DBeCct_CodigoExit(Sender: tObject);
    procedure DBePcx_CodigoExit(Sender: tObject);
    procedure DBEdt_BASE_ISSExit(Sender: tObject);
    procedure DBedt_BASE_INSSExit(Sender: tObject);
    procedure EdtPag_codigoKeyPress(Sender: tObject; var Key: Char);
    procedure DBEOpv_CodigoKeyPress(Sender: tObject; var Key: Char);
    procedure BtnCalcularClick(Sender: tObject);
    procedure EdtDtEmissButtonClick(Sender: tObject);
    procedure EdtDtEmissKeyPress(Sender: tObject; var Key: Char);
    procedure DbePag_DtEmisExit(Sender: tObject);
    procedure BtnOkParcelasKeyPress(Sender: tObject; var Key: Char);
    procedure SqlCdsPagarParcCalcFields(DataSet: TDataSet);
    procedure DsPagarParcGridDataChange(Sender: tObject; Field: TField);
    procedure EstornaBaixa1Click(Sender: tObject);
    procedure Bit_ListaClick(Sender: tObject);
    procedure BitPagamentosClick(Sender: tObject);
    procedure BitRepetirClick(Sender: tObject);
    procedure BitBtn1Click(Sender: tObject);
    procedure BitBtn2Click(Sender: tObject);
    procedure ImprimirRecibo1Click(Sender: tObject);
    procedure btnRateioManualClick(Sender: tObject);
    procedure btnRateioColaboradorClick(Sender: tObject);
    procedure FormCreate(Sender: tObject);
    procedure CbFornecedorSelect(Sender: TObject);
    procedure DbGridParcelasKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DbGridParcelasDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure CdsRateioCentroCustoAfterOpen(DataSet: TDataSet);
    procedure CdsRateioCentroCustoAfterClose(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure Sp_fornecedorClick(Sender: TObject);
    procedure SqlCdsPagarParcPPC_NUMERGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure CbFornecedorButtonClick(Sender: TObject);
    procedure CbxProjCxChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);

  private
    wReteVelho ,wReteNovo :String[30];
    wNumeroParcelas:Integer;
    wValorParcela,wDiferenca:Currency;
    pLerEstadoPesquisa:Boolean;

    Procedure ExcluirParcelas;
    procedure Limpa;
    procedure HabilitaCombo;
    procedure DesabilitaCombo;
    procedure Reparcelar;
    procedure AtualizarFornecedorParcelas (const pag, fornecedor :string);
    procedure Excluir_somente_Inclusao(const sNumLancto:String);
    procedure Excluir_Reparcelamentos(const sNumLancto:String);
    procedure Processo_Parcelamento;
    procedure Busca_Parcela;
    procedure Busca_Rateios;
    procedure BuscaPagamentos;
    procedure ChamaOpcao;
    procedure Baixar;
    procedure ChamaManutencaoRateioManual(const sRegistro,sTipo:String);
    procedure ChamaManutencaoRateioManualColaborador(const sRegistro,sTipo:String);
  public
    wMudouTotal:Currency; // total da Nota e total da Retencao
    wIncluir,
    bConfirmar_Exclusao,
    wFechaformParcela :Boolean; // flag p/ fechar form parcelas na inclusao

    Procedure CalcRetencao;
    procedure MostraDados;
    procedure BuscaParcelas;
    procedure BuscaLancto(wTipo:Integer);
    procedure BotoesAcesso;
  end;

var
  FormContasPagar: TFormContasPagar;

implementation

{$R *.DFM}

uses Uteis, Pag0002, Pag0004, GImpPaga, DataMov, DataCad, DataCad1, Men0001, Motivo,
     uFinanceiroDao, Pag0008, Pag0009, Pag0007, uRecibo, uPlanoContasCentroCustoManual,
     InicioDB, uPlanoContasCentroCustoColaboradorSelecao, For0001, uEntradaNotaXml, Nfs0001;

var
   wFechaformParcela :Boolean; // flag p/ fechar form parcelas na inclusao

procedure TformContasPagar.verificaEdicao;
begin
    if DataMovimento.CdsPagar.State in [dsEdit,dsInsert] then
    BEGIN
        if uteis.confirmacao ( 'Deseja salvar alterações ?') = idyes then
        begin
               Bit_Gravar.Click;
//               DataMovimento.CdsPagarPAG_CODIGO.AsString := EdtPag_codigo.Text;
//               DataMovimento.CdsPagar.ApplyUpdates(0);
        end
        else
        begin
          DataMovimento.CdsPagar.Cancel;
          //coloca pendencia
          SequenciadorPRC(DataCadastros.SQLConnection1, dbInicio.Empresa.EMP_CODIGO,'PAG0000', 'PAG_CODIGO', 1, EdtPag_codigo.Text);
        end;
       // Habilitabotoes;
    end;
end;

procedure TformContasPagar.HabilitaBotoes;
begin
    Bit_novo.Enabled       := True;
    Bit_Excluir.Enabled    := True;
    Bit_Sair.Visible       := True;
    Bit_Relatorio.Enabled  := True;
    BitPagamentos.Enabled  := True;
    BitRepetir.Enabled     := True;
    Bit_Lista.Enabled      := True;
    Bit_Gravar.Enabled     := False;
    Bit_Cancelar.Visible   := False;
    if DataMovimento.CdsPagar.IsEmpty then
       EdtPag_codigo.Enabled := False
    else
       EdtPag_codigo.Enabled := True;

       BotoesAcesso;
end;

procedure TformContasPagar.DesabilitaBotoes;
begin
    Bit_novo.Enabled       := False;
    Bit_Excluir.Enabled    := False;
    Bit_Sair.Visible       := False;
    Bit_Relatorio.Enabled  := false;
    BitPagamentos.Enabled  := False;
    BitRepetir.Enabled     := False;
    Bit_Lista.Enabled      := False;
    Bit_Gravar.Enabled     := True;
    Bit_Cancelar.Visible   := True;
    EdtPag_codigo.Enabled  := False;

  //  BotoesAcesso;


//    DBnavigator1.Enabled  := False;
end;

procedure TformContasPagar.FormShow(Sender: tObject);
var
    pesquisa: string;
begin
    INHERITED;
    lblValorDesconto.Visible := FrmMenu.bAtivaCoParticipacao;
    dbedtPAG_VALOR_N_RATEIA.Visible := FrmMenu.bAtivaCoParticipacao;
    btnRateioManual.Visible := FrmMenu.bUtilizaRecursosAvancadosCentroCusto;
    btnRateioColaborador.Visible := FrmMenu.bUtilizaRecursosAvancadosCentroCusto;
    tsRateioCentroCusto.TabVisible := FrmMenu.bUtilizaRecursosAvancadosCentroCusto;
    LblProjCx.Visible := NOT FrmMenu.bUtilizaRecursosAvancadosCentroCusto;
    DBePcx_Codigo.Visible := NOT  FrmMenu.bUtilizaRecursosAvancadosCentroCusto;
    CbxProjCx.Visible := NOT  FrmMenu.bUtilizaRecursosAvancadosCentroCusto;


   LeIni('ContasAPagar', 'pesquisaCbxProjCx', 'valor', pesquisa);
   CbxProjCx.idRetorno := pesquisa;



    bConfirmar_Exclusao := False;
    Screen.Cursor := crHourglass;
    try


      PnParcelas.Visible     := False;
      PgParcelas.ActivePage  := TShParcelas;           // Atualiza Visualização
      wIncluir := False;

      BuscaLancto(1);
      DataCadastros1.CdsTrib.close;
      DataCadastros1.CdsTrib.CommandText := SqlDef('TABELAS','Select * from trib0000','where trb_ativo = ''S''','','');
      DataCadastros1.CdsTrib.Open;
      //
      DataCadastros1.CdsParametros.Close;
      DataCadastros1.CdsParametros.CommandText := SQLDEF('PARAMETROS','SELECT * FROM PRMT0001','','EMP_CODIGO','');
      DataCadastros1.CdsParametros.Open;

      //***************************************************************
      // ***  PARAMETROS GLOBAIS *** //
      // Habilita o Objeto Projeto Caixa
      if DataCadastros1.CdsParametrosPMT_PROJCX.AsString = 'S' then
         begin
             if not DataMovimento.CdsPagar.IsEmpty then
                begin
                  LblProjCx.Enabled := True;
                  CbxProjCx.Enabled := True;
                end;
         end
      else
         begin
             if DataMovimento.CdsPagar.IsEmpty then
                begin
                    LblProjCx.Enabled := False;
                    CbxProjCx.Enabled := False;
                end;
         end;
      spdRet.Visible         := True;
      LblRet.Enabled         := True;
      DBDtPAG_VL_RET.Enabled := True;
      EdtPag_codigo.Color := $0080FFFF;
      EdtPag_codigo.SetFocus;
      //FormContasPagar.AutoSize := True;
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao Abrir as Tabelas !'+E.MESSAGE));
    end;
    Screen.Cursor := crDefault;


end;

procedure TformContasPagar.FormCloseQuery(Sender: tObject;
  var CanClose: Boolean);
begin
     inherited;
     VerificaEdicao;
end;

procedure TformContasPagar.Bit_novoClick(Sender: tObject);
begin

  wIncluir := True;
  HabilitaCombo;
  CbFornecedor.Enabled := True;
  DbeFor_codigo.Enabled := true;
  Sp_fornecedor.Enabled := True;
  DataMovimento.CdsPagar.Insert;
  Screen.Cursor := crDefault;

  EdtPag_codigo.Text := SequenciadorPRC(DataCadastros.SQLConnection1,   //Conexao
                                        dbInicio.Empresa.EMP_CODIGO, //empresa
                                        'PAG0000',                      //Tabela
                                        'PAG_CODIGO',                   //Campo da Tabela
                                        0);                             //Busca a Sequencia
  EdtPag_codigo.Text := StrZero(EdtPag_codigo.Text,EdtPag_codigo.MaxLength);
  DataMovimento.CdsPagarPAG_PREVISAO.AsString := 'N';
  DataMovimento.CdsPagarPAG_EXCLUSAO.AsString := 'N';
  DataMovimento.CdsPagarOPV_CODIGO.AsInteger  := 10;
  CbFornecedor.Clear;
  CbxCtaAnalise.Clear;
  CbxProjCx.Clear;
  DbePag_DtEmis.Date                          := now;
  DBePag_Vlnota.Field.AsCurrency              := 0;
  DbGridParcelas.Enabled                      := false;
  SqlCdsPagarParc.Close;
  DesabilitaBotoes;
  uteis.HabilitaIncluir('FinanceiroContas à Pagar',DBInicio.Usuario.CODIGO,formContasPagar);
  DbePag_DtEmis.SetFocus;
  bit_novo.Enabled := False;
  CDSPagamentos.close;
end;

procedure TformContasPagar.Bit_ExcluirClick(Sender: tObject);
begin
    try
      if (DataMovimento.CdsPagarPAG_EXCLUSAO.AsString = 'N') then
         begin
            wSql1      := 'SELECT P1.PAG_CODIGO,P1.PPC_SITPAG FROM PAG_PC01 P1 ';
            wSeleciona := 'WHERE P1.PAG_CODIGO = '''+EdtPag_codigo.Text+''' AND P1.PPC_SITPAG = ''L''';
            wOrdem     := 'P1.PAG_CODIGO';
            DataCadastros.sqlUpdate.Close;
            DataCadastros.SqlUpdate.sql.text :=SQLDEF('PAGAR',wSql1,wSeleciona,wOrdem,'P1.');
            DataCadastros.sqlUpdate.Open;
            if (DataCadastros.sqlUpdate.IsEmpty) then
               begin
                   if (DataMovimento.CdsPagar.IsEmpty) then
                      begin
                        uteis.aviso('Não Existe Registro Cadastrado !');
                        Screen.Cursor := crDefault;
                      end
                   else
                      begin
                         if uteis.confirmacao ( 'Deseja Excluir esta conta com todas suas parcelas?')= Mryes then
                            begin
                                try
                                  FrmMotivo := TFrmMotivo.Create(Application);
                                  try
                                    FrmMotivo.Edt_Motivo.MaxLength := 20;
                                    FrmMotivo.ShowModal;
                                  finally
                                     if (bConfirmar_Exclusao) then
                                        begin
                                           Screen.cursor :=crHourglass;
                                           {Excluir registro}
                                           if (DataMovimento.CdsPagar.State in [dsBrowse]) then
                                              DataMovimento.CdsPagar.Edit;
                                           DataMovimento.CdsPagarPAG_MOTIVO_EXCLUSAO.AsString := FrmMotivo.Edt_Motivo.Text;
                                           DataMovimento.CdsPagarPAG_DATA_EXCLUSAO.AsString   := DateToStr(now);
                                           DataMovimento.CdsPagarPAG_HORA_EXCLUSAO.AsString   := TimeToStr(now);
                                           DataMovimento.CdsPagarUSU_CODIGO.AsString          := dbInicio.Usuario.Codigo;
                                           DataMovimento.CdsPagarUSU_LOGIN.AsString           := dbInicio.Usuario.nome;
                                           DataMovimento.CdsPagarPAG_EXCLUSAO.AsString        := 'S';
                                           DataMovimento.CdsPagar.ApplyUpdates(0);
                                           {Exclusão das parcelas}
                                           ExcluirParcelas;
                                           Screen.Cursor := crDefault;
                                        end;
                                     FrmMotivo.Destroy;
                                     FrmMotivo := nil;
                                  end;
                                except
                                    //beep;
                                    uteis.erro  ('Ocorreu um erro na criação do formulário!');
                                end;
                                BuscaLancto(2);
                            end
                         else
                            begin
                                BuscaLancto(2);
                            end;
                     end;
               end
            else
               begin
                   uteis.aviso('Lançamento não pode ser excluído. Existem parcela(s) liquidada(s) !');
               end;
            wIncluir := False;
            HabilitaBotoes;
            EdtPag_codigo.SetFocus;
         end
      else
         begin
            //beep;
            uteis.aviso('Registro já excluído !');
            EdtPag_codigo.SetFocus;
         end;
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao excluir o lançamento ! '+e.message));
    end;
end;

procedure TformContasPagar.Bit_GravarClick(Sender: tObject);
var
   sUpdateAdicional:string;
   dValor:Double;
begin
  if DBInicio.Empresa.PMT_CENTROCUSTO_REQUERIDO_PAGAR and (CbxProjCx.idRetorno = '') and CbxProjCx.CanFocus then
  begin
   CbxProjCx.SetFocus;
   GeraException('Centro de custo deve ser preenchido');
  end;
    if (SqlCdsPagarParc.IsEmpty) then
    begin
      BitParcelar.SetFocus;
           GeraException('Você deve aplicar um parcelamento!');
    end
    else
    if (CbFornecedor.IdRetorno = '') then
    begin
      CbFornecedor.SetFocus;
      GeraException('Selecione o Favorecido!');
    end
    else
    if (DbePag_VlNota.Text = '') then
    begin
      DbePag_vlnota.SetFocus;
      GeraException('Digite o Valor da Nota');
    end
    else
    if (DbeCct_codigo.Text = '') or (DbeCct_codigo.Text = '000')then
    begin
      CbxCtaAnalise.SetFocus;
      GeraException('Selecione uma Conta Analise !');

    end
    else
    if (DbePag_DtEmis.date=0) then
    begin
      DbePag_Dtemis.Setfocus;
      uteis.aviso('Digite a Data de Emissão');
    end
    else
    begin
          if DbeDocumento.Text <> EmptyStr then
          begin
             DataCadastros.sqlUpdate.Close;
            DataCadastros.SqlUpdate.sql.text :=SQLDEF('PAGAR','Select PAG_CODIGO,PAG_NUMDOC,PAG_TIPO,FOR_CODIGO from PAG0000',
            'where PAG_NUMDOC = '''+DbeDocumento.Text+''' AND PAG_TIPO = ''NF'' AND FOR_CODIGO = '''+DbeFor_Codigo.Text+
            ''' AND PAG_CODIGO <> '+QuotedStr(EdtPag_codigo.Text),'','');
            DataCadastros.sqlUpdate.Open;
          end;
          if (DbeDocumento.Text <> EmptyStr) and (not DataCadastros.sqlUpdate.IsEmpty) then
          begin
              //  Excluir_somente_Inclusao(EdtPag_codigo.Text);
                uteis.aviso('Documento já foi lançado no Contas à Pagar');
                DbeDocumento.SetFocus;
          end
          else
          begin
               DataCadastros.sqlUpdate.Close;

                 DataMovimento.CdsPagarPag_codigo.AsString   := StrZero(EdtPag_codigo.text,EdtPag_codigo.MaxLength);
                 DataMovimento.CdsPagarPAG_TIPO.AsString     := IIF(CbxTipoDoc.ItemIndex = 0,'',
                                                                IIF(CbxTipoDoc.ItemIndex = 1,'BL',
                                                                IIF(CbxTipoDoc.ItemIndex = 2,'CH',
                                                                IIF(CbxTipoDoc.ItemIndex = 3,'CN',
                                                                IIF(CbxTipoDoc.ItemIndex = 4,'DF',
                                                                IIF(CbxTipoDoc.ItemIndex = 5,'DP',
                                                                IIF(CbxTipoDoc.ItemIndex = 6,'GR',
                                                                IIF(CbxTipoDoc.ItemIndex = 7,'NF',
                                                                IIF(CbxTipoDoc.ItemIndex = 8,'RC',
                                                                IIF(CbxTipoDoc.ItemIndex = 9,'PR',
                                                                IIF(CbxTipoDoc.ItemIndex = 11,'CF',
                                                                'XX')))))))))));
                 DataMovimento.CdsPagarEMP_CODIGO.Asstring   := dbInicio.Empresa.EMP_CODIGO;
                 {O sqlUpdate abaixo verifica as parcelas se tem alguma liquidada, caso tenha
                 alguma liquidada informa que nao pode ser titulo de previsao
                 ficando o status false automaticamente}

                   DataCadastros.sqlUpdate.Close;
                   DataCadastros.SqlUpdate.sql.text :=SQLDEF('PAGAR','Select PAG_CODIGO,PPC_PREVISAO from PAG_PC01 ','where Pag_codigo = '''+EdtPag_codigo.Text+''' and PPC_SITPAG = ''L''','PAG_CODIGO','');
                   DataCadastros.sqlUpdate.open;
                   if (DataCadastros.sqlUpdate.IsEmpty) then
                   begin
                          {Atualiza o campo PPC_PREVISAO da tabela PAG_PC01}

                            DataCadastros.sqlUpdate.Close;
                            DataCadastros.SqlUpdate.sql.text :=SQLDEF('PAGAR','Update PAG_PC01 Set PPC_PREVISAO = '''+IIF(DBChk_Previsao.checked ,'S','N')+'''',' where PAG_CODIGO = '''+EdtPag_codigo.Text+'''','','');
                            DataCadastros.sqlUpdate.Execsql;
                   end
                   else
                   begin
                          if DBChk_Previsao.checked  then
                          begin
                                 uteis.aviso('Não é possível gravar todas as parcelas como previsão ! !'+#13+'Existe parcela(s) liquidada(s).'+#13+'Marque como previsão direto na parcela.');
                                 DBChk_Previsao.Checked := False;
                                 DataMovimento.CdsPagarPAG_PREVISAO.AsString := 'N';
                          end;
                   end;
                   //Rateio add valor
                   sUpdateAdicional := '';
                   if (dbedtPAG_VALOR_N_RATEIA.Text <> '')and(dbedtPAG_VALOR_N_RATEIA.Text <> '0,00')and(SqlCdsPagarParc.RecordCount > 0) then
                   begin
                        dValor := StrToFloat(StringReplace(dbedtPAG_VALOR_N_RATEIA.Text, '.', '',[rfReplaceAll, rfIgnoreCase]));
                        dValor := dValor / SqlCdsPagarParc.RecordCount;
                        sUpdateAdicional := 'PPC_VALOR_N_RATEIA = '+ValorAmericano(FloatToStr(dValor))+',';
                   end;

                   DataCadastros.sqlUpdate.Close;
                   DataCadastros.SqlUpdate.sql.text := 'UPDATE ENF0001 SET PCX_CODIGO = ' + QuotedStr(DBePcx_Codigo.Text) + ' WHERE ENF_NOTANUMBER = ' +  QuotedStr(DBEDocumento.Text) ;
                   DataCadastros.sqlUpdate.Execsql;



                   { Atualizar centro de custo e Projeto/Caixa, pode ter sido modificado}
                   DataCadastros.sqlUpdate.Close;
                   DataCadastros.SqlUpdate.sql.text :=SQLDEF('PAGAR','Update PAG_PC01 Set '+sUpdateAdicional+' CCT_CODIGO = '''+DBeCct_Codigo.Text+''' , PCX_CODIGO = '''+DBePcx_Codigo.Text+''',PAG_NUMDOC = '''+DbeDocumento.Text+''',PPC_DTEMIS = '''+DataAmericana(DbePag_DtEmis.Text)+'''','where PAG_CODIGO = '''+EdtPag_codigo.text+'''','','');
                   DataCadastros.sqlUpdate.Execsql;
                   //VERIFICA SE MUDOU A CONTA FINANCEIRA SE MUDOU RATEIA PELO CENTROS DE CUSTO DINOVO
                   if ((DBeCct_Codigo.Text<> DataMovimento.CdsPagarCCT_CODIGO.OldValue)or(wIncluir)) then
                   begin
                        SqlCdsPagarParc.DisableControls;
                        SqlCdsPagarParc.Refresh;
                        SqlCdsPagarParc.First;
                        while (not SqlCdsPagarParc.Eof) do
                        begin
                              coParticipacao := (dbedtPAG_VALOR_N_RATEIA.Text <> EmptyStr);
                              if (SqlCdsPagarParcPCXPF_REGISTRO.AsString <> '-1') then
                                 LancaRateioCentroCustoBasePlano(SqlCdsPagarParcPAG_REGISTRO.AsString,
                                                                 'P',
                                                                 DBeCct_Codigo.Text,
                                                                 SqlCdsPagarParcPCXPF_REGISTRO.AsString);

                             if wIncluir then
                               Historico_Controle('Inclusão do Pagamento',
                                       SqlCdsPagarParcPAG_REGISTRO.AsString ,
                                       SqlCdsPagarParcPAG_CODIGO.AsString,
                                       SqlCdsPagarParcPPC_NUMER.AsString);
                              SqlCdsPagarParc.Next;
                        end;
                        SqlCdsPagarParc.First;
                        SqlCdsPagarParc.EnableControls;
                   end;

                    //Verifica se o Rateio manual foi feito caso seja
                    if (DBeCct_Codigo.Text<> DataMovimento.CdsPagarCCT_CODIGO.OldValue)or(wIncluir) then
                    begin
                        SqlCdsPagarParc.DisableControls;
                        SqlCdsPagarParc.First;
                        while (not SqlCdsPagarParc.Eof) do
                        begin
                              if (VerificaSePendenciaRateioManual(SqlCdsPagarParcPAG_REGISTRO.AsString,
                                         'P',
                                         DBeCct_Codigo.Text)) then
                              begin
                                    uteis.aviso('Perfil da conta é rateio manual'+#13#10+
                                                  'É indicado fazê-lo agora.');
                                    SqlCdsPagarParc.Last;
                              end
                              else
                              if (VerificaSeRateioPorColaborador(SqlCdsPagarParcPAG_REGISTRO.AsString,
                                         'P',
                                         DBeCct_Codigo.Text)) then
                              begin
                                    uteis.aviso('Perfil da conta é rateio por Colaborador'+#13#10+
                                                  'Favor Verificar o Rateio.');
                                    SqlCdsPagarParc.Last;
                              end
                              else
                                 SqlCdsPagarParc.Next;
                        end;
                        SqlCdsPagarParc.First;
                        SqlCdsPagarParc.EnableControls;
                    end;
                 AtualizarFornecedorParcelas( EdtPag_codigo.Text, CbFornecedor.idRetorno);


                 DataMovimento.CdsPagar.ApplyUpdates(0);
                 wIncluir := False;
                 Habilitabotoes;
                 EdtPag_codigo.Text := StrZero(DataMovimento.CdsPagarPag_codigo.AsString,EdtPag_codigo.MaxLength);
                 EdtPag_codigo.SetFocus;
                 BuscaLancto(2);
                 DbGridParcelas.Enabled := True;
                 //
          end;
    end;
end;

procedure TformContasPagar.Bit_CancelarClick(Sender: tObject);
begin

      DataMovimento.CdsPagar.Cancel;
      if (wIncluir) then
      begin
             //Parcela são deletadas porque são gravadas antes que se confirme a conta.}
             //Exclusão das parcelas
             Excluir_somente_Inclusao(EdtPag_codigo.Text);
             SequenciadorPRC(DataCadastros.SQLConnection1, dbInicio.Empresa.EMP_CODIGO,'PAG0000', 'PAG_CODIGO', 1, EdtPag_codigo.Text);
      end
      else
      begin
      if (wMudouTotal <> DBePag_Vlnota.Field.AsCurrency) and (not wIncluir) then
      begin
        if (wMudouTotal <> 0) then
        begin
           Reparcelar;
           BuscaParcelas;
        end;
      end;
      end;
      wIncluir    := False;
      HabilitaBotoes;
      PnParcelas.Visible := False;
      EdtPag_codigo.Text := DataMovimento.CdsPagarPag_codigo.AsString;
      BuscaLancto(2);

      {Evita alterar tabela vazia}
      if DataMovimento.CdsPagar.IsEmpty Then
      begin
         EdtPag_codigo.Enabled := False;
         DataMovimento.DsPagar.AutoEdit := False;
         DesabilitaCombo;
      end;
       DbGridParcelas.Enabled := true;

end;

procedure TformContasPagar.Bit_SairClick(Sender: tObject);
begin
    Close;
end;

procedure TFormContasPagar.BotoesAcesso;
begin
   Bit_novo.Enabled := Uteis.AcessoUsuario('FinanceiroContas à Pagar',DBInicio.Usuario.CODIGO,self).Incluir;
   Bit_Excluir.Enabled := Uteis.AcessoUsuario('FinanceiroContas à Pagar',DBInicio.Usuario.CODIGO,self).Exluir;
   Bit_Relatorio.Enabled := Uteis.AcessoUsuario('FinanceiroContas à Pagar',DBInicio.Usuario.CODIGO,self).Relatorio;
   DataMovimento.DsPagar.AutoEdit := Uteis.AcessoUsuario('FinanceiroContas à Pagar',DBInicio.Usuario.CODIGO,self).Alterar;
end;

procedure TformContasPagar.EdtPag_codigoExit(Sender: tObject);
begin
  EdtPag_codigo.Text := StrZero(EdtPag_codigo.Text,EdtPag_codigo.MaxLength);
  if (not wIncluir) then
        BuscaLancto(2);
end;

procedure TFormContasPagar.BitParcelarClick(Sender: tObject);
begin
  if (EdtPag_codigo.Text <> '') then
  begin
        wFechaformParcela     := False;
        PgParcelas.ActivePage := TShParcelas;
        if (CbFornecedor.IdRetorno = '') then
        begin
               //beep;
               uteis.aviso('Digite Nome do Favorecido!');
               CbFornecedor.SetFocus;
        end
        else
        if (DbePag_VlNota.Text = '') then
        begin
               //beep;
               uteis.aviso('Digite o Valor da Nota');
               DbePag_vlnota.SetFocus;
        end
        else
        if (CbxCtaAnalise.Text = '') then
        begin
               //beep;
               uteis.aviso('Você deve Selecionar um Centro de Custo!');
               CbxCtaAnalise.SetFocus;
        end
        else
        if DbePag_Dtemis.Text = '' then
        begin
               //beep;
               uteis.aviso('Digite a Data de Emissão');
               DbePag_Dtemis.Setfocus;
        end
        else
        begin
               PnParcelas.Visible := True;
               SpinParcelas.SetFocus;
        end;
  end
  else
  begin
    uteis.aviso('Informe o Código do Lançamento !');
    EdtPag_codigo.SetFocus;
  end;
end;

procedure TFormContasPagar.BtnOkParcelasClick(Sender: tObject);
begin
     if (not SqlCdsPagarParc.IsEmpty) then
     begin
           wSQL1      := 'SELECT cast( COUNT(*) as integer) AS REGISTRO_LIQUIDADOS FROM PAG_PC01 T1 ';
           wSeleciona := 'WHERE T1.PAG_CODIGO = '''+EdtPag_codigo.Text+''' AND T1.PPC_SITPAG = ''L''';
           //
           DataCadastros.sqlUpdate.Close;
           DataCadastros.SqlUpdate.sql.text :=SQLDEF('PAGAR',wSql1,wSeleciona,'','T1.');
           DataCadastros.sqlUpdate.Open;
           if (DataCadastros.sqlUpdate.FieldByName('REGISTRO_LIQUIDADOS').AsInteger > 0) then
           begin
                 uteis.aviso('Não é permitido reparcelar uma conta com parcela(s) Liquidada(s) !');
                 DbGridParcelas.SetFocus;
           end
           else
           begin
                  if uteis.confirmacao ( 'Essa conta já foi parcelada. Deseja reparcelar?')= idYes then
                  begin
                         Excluir_Reparcelamentos(EdtPag_codigo.Text);
                         SqlCdsPagarParc.Close;
                         Processo_Parcelamento;
                  end
                  else
                  begin
                         SpinParcelas.Value := 1;
                         PnParcelas.Visible := False;
                         DbGridParcelas.SetFocus;
                  end;
           end;
     end
     else
           Processo_Parcelamento;

     BuscaParcelas;
     SpinParcelas.Value           := 1;
     PnParcelas.Visible           := False;
     Pn_Botoes.Visible            := True;
     DbGridParcelas.Enabled       := True;
     DbGridParcelas.SetFocus;

end;

procedure TFormContasPagar.DbGridParcelasDblClick(Sender: tObject);
begin
     ChamaOpcao;
end;

procedure TFormContasPagar.DbGridParcelasDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
     inherited;
     if (not SqlCdsPagarParc.IsEmpty) then
     begin
         if SqlCdsPagarParcPPC_EXCLUSAO.AsString = 'S' then
             DbGridParcelas.Canvas.Font.Color:= $0000B900; // coloque aqui a cor desejada

         if Column.Field = (SqlCdsPagarParcPPC_SITPAG) then
            begin
              DbGridParcelas.Canvas.FillRect(Rect);
              if (SqlCdsPagarParcPPC_EXCLUSAO.AsString = 'S') then
                ImageList1.Draw(DbGridParcelas.Canvas,Rect.Left+03,Rect.Top+1,6)
              else
              //0 = amarelo (parcial) | 1 = azul | = 2 cinza (previsao) | 3 = preto (pendente) | 4 = vermelho (vencida) | 5 = verde (liquidada)
              if (SqlCdsPagarParcPPC_PREVISAO.AsString = 'S') then
                ImageList1.Draw(DbGridParcelas.Canvas,Rect.Left+03,Rect.Top+1,3)
              else
              if ((SqlCdsPagarParcCCPendente.AsCurrency > 0) and (SqlCdsPagarParcCCPendente.AsCurrency < SqlCdsPagarParcPPC_VLPARC.AsCurrency)) then
                ImageList1.Draw(DbGridParcelas.Canvas,Rect.Left+03,Rect.Top+1,0)
              else
              if ((SqlCdsPagarParcCCPendente.AsCurrency > 0) and (SqlCdsPagarParcPPC_VENCTO.AsDateTime < Date)) then
                ImageList1.Draw(DbGridParcelas.Canvas,Rect.Left+03,Rect.Top+1,4)
              else
              if ((SqlCdsPagarParcCCPendente.AsCurrency = SqlCdsPagarParcPPC_VLPARC.AsCurrency) and (SqlCdsPagarParcPPC_VENCTO.AsDateTime >= Date)) then
                ImageList1.Draw(DbGridParcelas.Canvas,Rect.Left+03,Rect.Top+1,5)
              else
              if (SqlCdsPagarParcCCPendente.AsCurrency = 0) then
                ImageList1.Draw(DbGridParcelas.Canvas,Rect.Left+03,Rect.Top+1,1);
            end;
      end;
end;

procedure TFormContasPagar.DbGridParcelasKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if (Key = vk_return) then
     begin
          ChamaOpcao;
          Key :=0;
     end;
     inherited;
end;

procedure TFormContasPagar.SpinParcelasExit(Sender: tObject);
begin
    if (SpinParcelas.Value > 60) or (SpinParcelas.Value < 1) then
    begin
           uteis.aviso('O valor deve estar entre " 1 e 60"!');
           SpinParcelas.SetFocus;
    end;
end;

procedure TFormContasPagar.Sp_fornecedorClick(Sender: TObject);
begin
  inherited;
  if not assigned(FormFornec) then
     begin
     FormFornec := TFormFornec.Create(Application);
     FormFornec.BotoesAcesso;

     if (MDIChildCount > 1) then
             SendMessage(ClientHandle, WM_MDICASCADE, 0, 0)
     end;



end;

procedure TFormContasPagar.FormActivate(Sender: TObject);
begin
  inherited;
  if FormNfEntrada <> nil then
  begin
//    DbeDocumento.Text := FormNfEntrada.edtNota.Text;
//    DbeFor_codigo.Text := FormNfEntrada.EdtFor_Codigo.Text;
//    FormContasPagar.CbFornecedor.idRetorno := FormNfEntrada.EdtFor_Codigo.Text;
//    DBePag_Vlnota.Text := FormNfEntrada.CurrTotalNota.Text;


  end;
end;

procedure TFormContasPagar.FormClose(Sender: tObject;var Action: TCloseAction);
begin
//     IF DataMovimento.CdsPagar.ACTIVE THEN
//        DataMovimento.CdsPagar.Close;
//     IF DataMovimento.CdsPagarParc.Active THEN
//        DataMovimento.CdsPagarParc.Close;
//     IF DataCadastros.CdsBanco.ACTIVE THEN
//        DataCadastros.CdsBanco.Close;
//     IF DataCadastros.CdsCtAnalise.ACTIVE THEN
//        DataCadastros.CdsCtAnalise.Close;
//     IF DataCadastros1.CdsProCaixa.ACTIVE THEN
//        DataCadastros1.CdsProCaixa.Close;
//     DataMovimento.CdsPagar.PacketRecords     := -1;
//     DataMovimento.CdsPagarParc.PacketRecords := -1;
     inherited;
     Action := CaFree;
end;

procedure TFormContasPagar.Bit_RelatorioClick(Sender: tObject);
begin
      FormGImpPagar :=TFormGImpPagar.Create(Application);
      try
         FormGImpPagar.ShowModal;
      finally
             FreeAndNil(FormGImpPagar);
             EdtPag_codigo.SetFocus;
      end;
end;

procedure TFormContasPagar.DBNavigator2Click(Sender: tObject;
  Button: TNavigateBtn);
begin
    EdtPag_codigo.text := DataMovimento.CdsPagarPAG_CODIGO.AsString;
end;

procedure TFormContasPagar.DbeFor_codigoExit(Sender: tObject);
begin

    pnlAviso.Caption := '';

    if DbeFor_Codigo.Field.Text <> '' then
    begin
         DataMovimento.CdsPagarFOR_CODIGO.asstring := StrZero(DbeFor_codigo.Field.Text,4);
         if DataMovimento.CdsPagarFOR_CODIGO.asstring<>'0000' then
         begin
             if cbFornecedor.idRetorno<>'' then
             begin
                  if wIncluir then
                  begin
                      DataCadastros.sqlUpdate2.Close;
                      DataCadastros.sqlUpdate2.sql.text := 'SELECT FIRST 1 T2.FOR_CODIGO, T1.PAG_DATA_PAGAMENTO, T1.PAG_VALOR, T3.USU_NOME FROM PAG_PAGAMENTO T1 JOIN PAG_PC01 T2 ON (T2.PAG_REGISTRO = T1.PAG_REGISTRO) JOIN USUARIO T3 ON (T3.USU_CODIGO = T1.USU_CODIGO) WHERE T2.FOR_CODIGO = '+QuotedStr(DbeFor_codigo.Field.text)+' ORDER BY T1.PAG_DATA_PAGAMENTO DESC';
                      DataCadastros.sqlUpdate2.Open;
                      if (not DataCadastros.sqlUpdate2.IsEmpty) then
                         pnlAviso.Caption := 'Último Pagamento: '+DataCadastros.sqlUpdate2.FieldByName('PAG_DATA_PAGAMENTO').AsString+' no valor de R$ '+FormatFloat('###,###,###,##0.00', DataCadastros.sqlUpdate2.FieldByName('PAG_VALOR').AsFloat)+' Efetuado por: '+DataCadastros.sqlUpdate2.FieldByName('USU_NOME').AsString;
                      DataCadastros.sqlUpdate2.Close;

                       if (DBeCct_Codigo.Text = '') or (DbeCct_codigo.Text = '000') then
                          CbxCtaAnalise.Text := cbFornecedor.CdS.fieldbyname('cct_codigo').ASSTRING;

                  end;
             end
             else
             begin
                      uteis.aviso('Código do fornecedor não encontrado!');
                      DbeFor_Codigo.Text := '';
                      exit;
             end;
         end
         Else
             cbFornecedor.clear;

    end
    else
        cbFornecedor.clear;

end;

procedure TFormContasPagar.DBDtPag_DtEmisExit(Sender: tObject);
begin
    if DbePag_DtEmis.date<>0 then
       begin
           if not TestaDataStr(DbePag_DtEmis.Text) then
              DbePag_DtEmis.setfocus;
       end;
end;

procedure TFormContasPagar.DbeDocumentoExit(Sender: tObject);
begin
  //   if DbeDocumento.Text = '' then
//     begin
//           uteis.aviso('É necessário informar o Nº do documento !');
//           DbeDocumento.SetFocus;
//     end;
end;

procedure TFormContasPagar.DBePag_VlnotaEnter(Sender: tObject);
begin
    if (not wIncluir) then
       wMudouTotal := DataMovimento.CdsPagarPAG_VLNOTA.AsCurrency;
end;

procedure TFormContasPagar.DBePag_VlnotaExit(Sender: tObject);
begin
    if DBePag_Vlnota.Field.AsCurrency = 0 then
       begin
           uteis.aviso('Informe o valor da nota !');
           DBePag_Vlnota.SetFocus;
       end;
    if (DataMovimento.CdsPagar.State in [dsEdit]) and (not wIncluir) then
       begin
           if (wMudouTotal <> DataMovimento.CdsPagarPAG_VLNOTA.AsCurrency) then
              begin
                  if uteis.confirmacao ( 'Valor total da nota foi mudado. Deseja ajustar o valor da(s) parcela(s) automaticamente.') = mrYes then
                     begin
                         Reparcelar;
                     end
                  else
                     begin
                         DBePag_Vlnota.Field.AsCurrency := wMudouTotal;
                         DBePag_Vlnota.SetFocus;
                     end;
              end;
           BuscaParcelas;
       end;
end;

procedure TFormContasPagar.ExcluirParcelas;
begin
    {Excluir parcelas do faturamentos}
    try
      wSql1      := 'UPDATE PAG_PC01 SET PPC_EXCLUSAO = ''S'',PPC_DATA_EXCLUSAO = '''+DataAmericana(DateToStr(now))+''',PPC_HORA_EXCLUSAO = '''+TimeToStr(Time)+''',PPC_MOTIVO_EXCLUSAO = '''+DBEdt_Motivo.Text+''',PPC_STATUS = ''Excluída'',PPC_SITPAG = ''X'',USU_CODIGO = '''+Edt_Usu_Cod.Text+''',USU_LOGIN = '''+Edt_Usu_Nome.Text+'''';
      wSeleciona := 'WHERE PAG_CODIGO = '''+EdtPag_codigo.Text+'''';
      //
      DataCadastros.sqlUpdate.Close;
      DataCadastros.SqlUpdate.sql.text :=SQLDEF('PAGAR',wSql1,wSeleciona,'','');
      DataCAdastros.sqlUpdate.Execsql;
    except on E:EdatabaseError do
       uteis.erro  (Pchar('Erro ao excluir parcelas !'+e.Message));
    end;
end;

procedure TFormContasPagar.CbxTipoDocClick(Sender: tObject);
begin
    if DataMovimento.CdsPagar.State = DsBrowse then
       DataMovimento.CdsPagar.Edit;
end;

procedure TFormContasPagar.CdsRateioCentroCustoAfterClose(DataSet: TDataSet);
begin
  inherited;
      edTotRateio.value := 0;
end;

procedure TFormContasPagar.CdsRateioCentroCustoAfterOpen(DataSet: TDataSet);
begin
  inherited;
  if CdsRateioCentroCustoValor_Tot.Value = Null  then
     edTotRateio.value := 0
  Else

     edTotRateio.Value := CdsRateioCentroCustoValor_Tot.value
end;

procedure TFormContasPagar.CbFornecedorButtonClick(Sender: TObject);
var tcr: TFormFornecGrid;
begin
  tcr:= TFormFornecGrid.Create(self);
  try
      tcr.ShowModal;
      if tcr.modalresult = mrok then
         CbFornecedor.idRetorno := tcr.IDRetorno;


  finally
       FreeAndNil(tcr);
  end;

end;

procedure TFormContasPagar.CbFornecedorSelect(Sender: TObject);
begin
    inherited;

    if CbFornecedor.idRetorno<>'' then
    if DataMovimento.CdsPagar.State <> dsBrowse then
    begin
           if (wIncluir) then
           begin
                  if (DBeCct_Codigo.Text = '') or (DbeCct_codigo.Text = '000') then
                     if CbFornecedor.CdS.FieldByName('CCT_CODIGO').AsString<>'' then
                        DataMovimento.CdsPagarCCT_CODIGO.AsString := CbFornecedor.CdS.FieldByName('CCT_CODIGO').AsString;
           end;
    end;

end;

procedure TFormContasPagar.spdRetClick(Sender: tObject);
begin
    if DataMovimento.CdsPagar.State in [dsBrowse] then
       DataMovimento.CdsPagar.Edit;
    CalcRetencao;
    PanVaria.Left     := 184;
    PanVaria.Top      := 217;
    Grp00.Enabled     := False;
    Grp01.Enabled     := False;
    Pn_Botoes.Enabled := False;
    PgParcelas.Enabled:= False;
    PanVaria.Visible  := True;
    DBedt_BASE_ISS.SetFocus;
end;

procedure TFormContasPagar.SpeedButton5Click(Sender: tObject);
begin
    BtnCalcular.Click;
    PanVaria.Visible  := False;
    Grp00.Enabled     := True;
    Grp01.Enabled     := True;
    Pn_Botoes.Enabled := True;
    PgParcelas.Enabled:= True;
    if (DBDtPAG_VL_RET.Field.AsCurrency > 0) then
      uteis.aviso('Para atualizar as parcelas com a retenção é necessário fazer o reparcelamento');

end;

procedure TFormContasPagar.DBedt_BASE_INSSKeyPress(Sender: tObject;
  var Key: Char);
begin
   if DataMovimento.CdsPagar.State = DsBrowse then
      DataMovimento.CdsPagar.Edit;
end;

procedure TFormContasPagar.MostraDados;
begin
    EdtPag_codigo.Text   := DataMovimento.CdsPagarPAG_CODIGO.AsString;
    {CbFornecedor.IdRetorno := DataMovimento.CdsPagarFOR_CODIGO.AsString;
    CbxCtaAnalise.idRetorno := DataMovimento.CdsPagarCCT_CODIGO.AsString;
    CbxProjCx.idRetorno := DataMovimento.CdsPagarPCX_CODIGO.AsString;}

    CbxTipoDoc.ItemIndex := IIF(DataMovimento.CdsPagarPAG_TIPO.AsString = ''  ,0,
                            IIF(DataMovimento.CdsPagarPAG_TIPO.AsString = 'BL',1,
                            IIF(DataMovimento.CdsPagarPAG_TIPO.AsString = 'CH',2,
                            IIF(DataMovimento.CdsPagarPAG_TIPO.AsString = 'CN',3,
                            IIF(DataMovimento.CdsPagarPAG_TIPO.AsString = 'DF',4,
                            IIF(DataMovimento.CdsPagarPAG_TIPO.AsString = 'DP',5,
                            IIF(DataMovimento.CdsPagarPAG_TIPO.AsString = 'GR',6,
                            IIF(DataMovimento.CdsPagarPAG_TIPO.AsString = 'NF',7,
                            IIF(DataMovimento.CdsPagarPAG_TIPO.AsString = 'RC',8,
                            IIF(DataMovimento.CdsPagarPAG_TIPO.AsString = 'PR',9,
                            IIF(DataMovimento.CdsPagarPAG_TIPO.AsString = 'CF',11,
                            10)))))))))));

end;

procedure TFormContasPagar.DBDtPAG_VL_RETExit(Sender: tObject);
begin
    if SqlCdsOpvOPV_CODIGO.AsInteger = 1 then  // Aquisicao servicos
       begin
           SpdRet.Click;
       end;
end;

procedure TFormContasPagar.CbxOpvExit(Sender: tObject);
begin
    if (DataMovimento.CdsPagar.State in [DsEdit]) and (not wIncluir) then
       begin
           if (wReteVelho <> wReteNovo) then
              begin
                  if uteis.confirmacao ( ('Este lançamento é do tipo '+string(wReteVelho)+' !'+#13+#10+' Deseja alterar-lá para '+trim(string(wReteNovo))+' ?'))= mrNo then
                   begin
                       SqlCdsOpv.Locate('OPV_DESCRICAO',wReteVelho,[]);

                   end;
              end;
       end
end;

procedure TFormContasPagar.CbxProjCxChange(Sender: TObject);
begin
  inherited;
  GravaIni('ContasAPagar', 'pesquisaCbxProjCx', 'valor', CbxProjcx.idRetorno);
end;

procedure TFormContasPagar.DBeCct_CodigoExit(Sender: tObject);
begin
     if (trim(DbeCct_Codigo.Text)<>'') then
     begin
          if DataMovimento.CdsPagar.state<>dsBrowse then
             DataMovimento.CdsPagar.Edit;
          CbxCtaAnalise.idRetorno:=StrZero(DbeCct_Codigo.Text,3);
          if CbxCtaAnalise.idRetorno='' then
          begin
               uteis.aviso('Conta caixa não existe !');
               DataMovimento.CdsPagarCCT_CODIGO.Clear;
               DbeCct_Codigo.SetFocus;
          end
          Else
              DataMovimento.CdsPagarCCT_CODIGO.asstring := CbxCtaAnalise.idRetorno;
     end;
end;

procedure TFormContasPagar.DBePcx_CodigoExit(Sender: tObject);
begin
     DataMovimento.CdsPagarPCX_CODIGO.assTring :=StrZero(DbePcx_Codigo.Text,3);
     if (DataMovimento.CdsPagarPCX_CODIGO.assTring <> '000') then
     begin
         if CbxProjCx.idRetorno='' then
         begin
                  uteis.aviso('Centro de Custo não encontrado !');
                  DbePcx_Codigo.Text := '';
                  DbePcx_Codigo.SetFocus;
         end;
     end
     Else
         CbxProjCx.clear;
end;

procedure TFormContasPagar.CalcRetencao;
begin
    if (DBePag_Vlnota.Field.Value >= 0) then
       begin
           {Grava os Valores de cada retencao}
           if (wIncluir) then
                     begin
                         if DBEdt_BASE_ISS.Field.AsCurrency = 0 then
                            DataMovimento.CdsPagarPAG_BASE_ISS.AsCurrency  := DBePag_Vlnota.Field.AsCurrency;
                         {Grava as porcentagens utilizandas em cada Retencao}
                         DataMovimento.CdsPagarPAG_IRPJ_RET.AsCurrency        := (DBEdt_BASE_ISS.Field.AsCurrency*DataCadastros1.CdsTribTRB_IRPJ_RET.AsCurrency)/100;
                         DataMovimento.CdsPagarPAG_PIS_RET.AsCurrency         := (DBEdt_BASE_ISS.Field.AsCurrency*DataCadastros1.CdsTribTRB_PIS_RET.AsCurrency)/100;
                         DataMovimento.CdsPagarPAG_COFINS_RET.AsCurrency      := (DBEdt_BASE_ISS.Field.AsCurrency*DataCadastros1.CdsTribTRB_COFINS_RET.AsCurrency)/100;
                         DataMovimento.CdsPagarPAG_CONTSOCIAL_RET.AsCurrency  := (DBEdt_BASE_ISS.Field.AsCurrency*DataCadastros1.CdsTribTRB_CONTSOCIAL_RET.AsCurrency)/100;
                         {Calcula}
                         DataMovimento.CdsPagarPAG_IRPJ_PERC.AsCurrency       := DataCadastros1.CdsTribTRB_IRPJ_RET.AsCurrency;
                         DataMovimento.CdsPagarPAG_PIS_PERC.AsCurrency        := DataCadastros1.CdsTribTRB_PIS_RET.AsCurrency;
                         DataMovimento.CdsPagarPAG_COFINS_PERC.AsCurrency     := DataCadastros1.CdsTribTRB_COFINS_RET.AsCurrency;
                         DataMovimento.CdsPagarPAG_CONTSOCIAL_PERC.AsCurrency := DataCadastros1.CdsTribTRB_CONTSOCIAL_RET.AsCurrency;
                     end;
              end;
end;

procedure TFormContasPagar.DBEdt_BASE_ISSExit(Sender: tObject);
begin
    CalcRetencao;
    DbePAG_VL_RET.Field.AsCurrency := DBEdt_IRPJ_RET.Field.AsCurrency + DBEdt_PIS_RET.Field.AsCurrency + DBEdt_COFINS_RET.field.AsCurrency + DBEdt_CONTSOCIAL_RET.Field.AsCurrency + DBEdt_INSS_RET.Field.AsCurrency;
end;

procedure TFormContasPagar.DBedt_BASE_INSSExit(Sender: tObject);
begin
    if DataMovimento.CdsPagar.State in [dsInsert,dsEdit] then
       begin
           CalcRetencao;
           if DBedt_BASE_INSS.Field.Value >=0 then
              begin
                  if (wIncluir) then
                     begin
                         DataMovimento.CdsPagarPAG_INSS_RET.AsCurrency  := (DBedt_BASE_INSS.Field.AsCurrency*DataCadastros1.CdsTribTRB_INSS_RET.AsCurrency)/100;
                         DataMovimento.CdsPagarPAG_INSS_PERC.AsCurrency :=  DataCadastros1.CdsTribTRB_INSS_RET.AsCurrency;
                     end;
                  DbePAG_VL_RET.Field.AsCurrency := (DBEdt_IRPJ_RET.Field.AsCurrency + DBEdt_PIS_RET.Field.AsCurrency + DBEdt_COFINS_RET.field.AsCurrency + DBEdt_CONTSOCIAL_RET.Field.AsCurrency + DBEdt_INSS_RET.Field.AsCurrency);
              end;
       end;
end;

procedure TFormContasPagar.Limpa;
begin
    CbFornecedor.Clear;
    CbxTipoDoc.Text       := '';
    CbxCtaAnalise.clear;
    CbxProjCx.Clear;
end;

procedure TFormContasPagar.DesabilitaCombo;
begin
    cbxtipodoc.Enabled   := false;
    cbxCtaAnalise.Enabled:= false;
    CbxProjCx.Enabled    := false;
end;

procedure TFormContasPagar.HabilitaCombo;
begin
    cbxtipodoc.Enabled   := true;
    cbxCtaAnalise.Enabled:= true;
    CbxProjCx.Enabled    := true;
end;

procedure TFormContasPagar.EdtPag_codigoKeyPress(Sender: tObject;
  var Key: Char);
begin
    If not( key in['0'..'9',#8] ) then
        begin
            //beep;
            key:=#0;
        end;
end;

procedure TFormContasPagar.DBEOpv_CodigoKeyPress(Sender: tObject;
  var Key: Char);
begin
    if not (key in ['0'..'9',#8]) then
       begin
          //beep;
          Key := #0;
       end;
end;



procedure TFormContasPagar.BtnCalcularClick(Sender: tObject);
begin
    DataMovimento.CdsPagarPAG_IRPJ_RET.AsCurrency        := (DBEdt_BASE_ISS.Field.AsCurrency * DBEdt_IRPJ_PERC.Field.AsCurrency)/100;        //DataCadastros1.CdsTribTRB_IRPJ_RET.AsCurrency)/100;
    DataMovimento.CdsPagarPAG_PIS_RET.AsCurrency         := (DBEdt_BASE_ISS.Field.AsCurrency * Dbedt_Pis_Perc.Field.AsCurrency)/100;         //DataCadastros1.CdsTribTRB_PIS_RET.AsCurrency)/100;
    DataMovimento.CdsPagarPAG_COFINS_RET.AsCurrency      := (DBEdt_BASE_ISS.Field.AsCurrency * DBEdt_COFINS_PER.Field.AsCurrency)/100;       //DataCadastros1.CdsTribTRB_COFINS_RET.AsCurrency)/100;
    DataMovimento.CdsPagarPAG_CONTSOCIAL_RET.AsCurrency  := (DBEdt_BASE_ISS.Field.AsCurrency * DBEdt_CONTSOCIAL_PERC.Field.AsCurrency)/100;  //DataCadastros1.CdsTribTRB_CONTSOCIAL_RET.AsCurrency)/100;
    DataMovimento.CdsPagarPAG_INSS_RET.AsCurrency        := (DBedt_BASE_INSS.Field.AsCurrency * DBEdt_INSS_PERC.Field.AsCurrency)/100;       //DataCadastros1.CdsTribTRB_INSS_RET.AsCurrency)/100;
    DataMovimento.CdsPagarPAG_ISS_RET.AsCurrency         := (DBEdt_BASE_ISS.Field.AsCurrency  * DBEdt_ISS_PERC.Field.AsCurrency)/100;
    DbePAG_VL_RET.Field.AsCurrency                       := (DBEdt_IRPJ_RET.Field.AsCurrency + DBEdt_PIS_RET.Field.AsCurrency + DBEdt_COFINS_RET.field.AsCurrency + DBEdt_CONTSOCIAL_RET.Field.AsCurrency + DBEdt_INSS_RET.Field.AsCurrency + DataMovimento.CdsPagarPAG_ISS_RET.AsCurrency);
end;

procedure TFormContasPagar.BuscaParcelas;
begin
    try
      CbFornecedor.Enabled := True;
      DbeFor_codigo.Enabled := true;
      Sp_fornecedor.Enabled := True;
      SqlCdsPagarParc.PacketRecords := -1;
      wSql1 := 'Select PG.PAG_REGISTRO,PG.PAG_CODIGO,PG.PPC_NUMER,PG.PPC_VLPARC,CASE WHEN (pg.PPC_EXCLUSAO = ''S'') THEN ''REGISTRO EXCLUÍDO: ''||pg.PPC_MOTIVO_EXCLUSAO ELSE pg.PPC_OBS END AS PPC_OBS, '+
               ' PG.PPC_VENCTO,PG.PPC_DESCTO,'+
               'PG.PPC_JUROS,PG.PPC_MULTA,PG.PPC_PAGTO,PG.PPC_VLPAGO,PG.PPC_STATUS,PG.PPC_SITPAG,PG.PPC_PREVISAO,PG.PPC_EXCLUSAO,PG.BAN_CODIGO,BAN.BAN_APELIDO, PG.PCXPF_REGISTRO, pg.PPC_NPARCELAS, '+
               ' PPC_SIT_LIBERACAO, PPC_VALOR_APONTADO, ' +
               ' (SELECT FPG_DESCRICAO FROM FORMA_PAGAMENTO fp WHERE fp.FPG_REGISTRO = PG.FPG_REGISTRO) ' +
               ' FROM PAG_PC01 PG ';
      wSql2 := ' Left Join BAN0000 BAN ON PG.BAN_CODIGO = BAN.BAN_CODIGO'
               ;

      SqlCdsPagarParc.Close;
      SqlCdsPagarParc.CommandText :=SQLDEF('PAGAR',wSql1+wSql2,'WHERE PG.PAG_CODIGO = '''+EdtPag_codigo.Text+'''','PG.PPC_VENCTO,PG.PPC_NUMER','PG.');
      if DBInicio.IsDesenvolvimento then
        CopyToClipBoard(SqlCdsPagarParc.CommandText);
      SqlCdsPagarParc.Open;
      try
        SqlCdsPagarParc.DisableControls;
        SqlCdsPagarParc.First;
        while not SqlCdsPagarParc.IsEmpty and not SqlCdsPagarParc.Eof do
        begin
          if SqlCdsPagarParcPPC_STATUS.AsString = 'Liquidada' then
          begin
            CbFornecedor.Enabled := False;
            DbeFor_codigo.Enabled := false;
            Sp_fornecedor.Enabled := false;
            break;

          end;
          SqlCdsPagarParc.Next;

        end;
      finally
        SqlCdsPagarParc.EnableControls;
      end;
    except on E:EdatabaseError do
        uteis.erro  (Pchar('Erro ao Localizar parcelas !'+e.Message));
    end;
end;

procedure TFormContasPagar.BuscaLancto(wTipo:Integer);
begin
    Screen.Cursor := crHourGlass;
    if (wTipo = 1) then
       begin
           try
             {Busca o Ultimo Lancamento}
             DataCadastros.sqlUpdate.Close;
             DataCadastros.SqlUpdate.sql.text :=SQLDEF('PAGAR','SELECT MAX(P1.PAG_CODIGO) AS WULTCODI FROM PAG0000 P1','','','P1.');
             DataCadastros.sqlUpdate.Open;
             wSeleciona := 'WHERE P1.PAG_CODIGO = '''+DataCadastros.sqlUpdate.FieldByName('WULTCODI').AsString+'''';
             //
             DataMovimento.CdsPagar.Close;
             DataMovimento.CdsPagar.CommandText := SQLDEF('PAGAR','SELECT P1.* FROM PAG0000 P1',wSeleciona,'P1.PAG_CODIGO DESC','P1.');
             DataMovimento.CdsPagar.open;
             if (DataMovimento.CdsPagar.IsEmpty) then
                begin
                    DataMovimento.DsPagar.AutoEdit := False;
                    Limpa;
                    EdtPag_codigo.SetFocus;
                end
             else
                begin
                    if (DataMovimento.CdsPagarPAG_EXCLUSAO.AsString = 'S') then
                       begin
                          DataMovimento.DsPagar.AutoEdit := False;
                          GrpExclusao.Visible := True;
                       end
                    else
                       begin
                          DataMovimento.DsPagar.AutoEdit := True;
                          GrpExclusao.Visible := False;
                       end;
                    MostraDados;
                    BuscaParcelas;
                    Habilitabotoes;

                end;
           except on E:EDataBaseError do
              uteis.erro  (pchar('Erro ao abrir as tabelas ! '+e.Message));
           end;
       end;
    if (wTipo = 2) then
       begin
           try
             DataMovimento.CdsPagar.Close;
             DataMovimento.CdsPagar.PacketRecords := -1;
             DataMovimento.CdsPagar.CommandText := SQLDEF('PAGAR','SELECT P1.* FROM PAG0000 P1','WHERE P1.PAG_CODIGO = '''+EdtPag_codigo.Text+'''','P1.PAG_CODIGO','P1.');
             DataMovimento.CdsPagar.Open;
             if not DataMovimento.CdsPagar.IsEmpty then
                begin
                   if (DataMovimento.CdsPagarPAG_EXCLUSAO.AsString = 'S') then
                      begin
                         DataMovimento.DsPagar.AutoEdit := False;
                         GrpExclusao.Visible := True;
                      end
                   else
                      begin
                         DataMovimento.DsPagar.AutoEdit := True;
                         GrpExclusao.Visible := False;
                      end;
                   MostraDados;
                   BuscaParcelas;
                end
             else
                begin
                    messagebeep($ffff);
                    uteis.aviso('Código não cadastrado !');
                    EdtPag_codigo.Text := '';
                    Limpa;
                    SqlCdsPagarParc.Close;
                    BuscaLancto(1);
                    EdtPag_codigo.Text := DataMovimento.CdsPagarPAG_CODIGO.AsString;
                    EdtPag_codigo.SetFocus;
                end;
           except on E:EDataBaseError do
              uteis.erro  (pchar('Erro ao localizar o lancamento ! '+e.Message));
           end;
       end;
    Screen.Cursor := crDefault;
end;

procedure TFormContasPagar.EdtDtEmissButtonClick(Sender: tObject);
begin
    if DataMovimento.CdsPagar.State in [dsBrowse] then
       DataMovimento.CdsPagar.Edit;
end;

procedure TFormContasPagar.EdtDtEmissKeyPress(Sender: tObject;
  var Key: Char);
begin
    if DataMovimento.CdsPagar.State in [dsBrowse] then
       DataMovimento.CdsPagar.Edit;
end;

procedure TFormContasPagar.DbePag_DtEmisExit(Sender: tObject);
begin
    if DbePag_DtEmis.date <> 0 then
       begin
           if not TestaDataStr(DbePag_DtEmis.Text) then
              begin
                  DbePag_DtEmis.Date := Now;
                  DbePag_DtEmis.setfocus;
              end;
       end;
end;

procedure TFormContasPagar.BtnOkParcelasKeyPress(Sender: tObject;
  var Key: Char);
begin
    if (Key=#13) then
       begin
           BtnOkParcelas.click;
           key :=#0;
       end;
end;

procedure TFormContasPagar.Reparcelar;
begin
    try
      DataCadastros.sqlUpdate.Close;
      DataCadastros.SqlUpdate.sql.text :=SQLDEF('PAGAR','Select X1.PAG_CODIGO from PAG_PC01 X1 ','where X1.PAG_CODIGO = '''+EdtPag_codigo.Text+''' and X1.PPC_SITPAG= ''L''','X1.PAG_CODIGO','X1.');
      DataCadastros.sqlUpdate.Open;
      if DataCadastros.sqlUpdate.IsEmpty  then
         begin
             DataMovimento.CdsPagarParc.Close;
             DataMovimento.CdsPagarParc.CommandText := SQLDEF('PAGAR','SELECT P1.*,B1.BAN_APELIDO from PAG_PC01 P1 LEFT JOIN ban0000 B1 ON P1.ban_codigo = B1.ban_codigo','where PAG_CODIGO = '''+EdtPag_codigo.Text+'''','','P1.');
             DataMovimento.CdsPagarParc.Open;
             if not DataMovimento.CdsPagarParc.IsEmpty then
                begin
                    // contar o numero de parcelas
                    wnumeroParcelas := DataMovimento.CdsPagarParc.RecordCount;
                    //valor de cada parcela somente com duas casas decimais sem arredondamento
                    wValorParcela:=Int((DataMovimento.CdsPagarPAG_VLNOTA.AsCurrency-DataMovimento.CdsPagarPAG_VL_RET.AsCurrency)/wNumeroParcelas*100)/100;
                    // verificar diferença de arredondamento
                    wDiferenca   :=(DataMovimento.CdsPagarPAG_VLNOTA.AsCurrency)-(wValorParcela*wNumeroParcelas);
                    // Gravar os novos valores das parcelas
                    DataMovimento.CdsPagarParc.First;
                    While not DataMovimento.CdsPagarParc.EOF do
                      begin
                          DataMovimento.CdsPagarParc.Edit;
                          if DataMovimento.CdsPagarParcPPC_NUMER.AsString = '01' then
                             DataMovimento.CdsPagarParcPPC_VLPARC.AScurrency := wValorParcela +  wDiferenca
                          else
                             DataMovimento.CdsPagarParcPPC_VLPARC.Ascurrency := wValorParcela;

                          DataMovimento.CdsPagarParc.ApplyUpdates(0);
                          DataMovimento.CdsPagarParc.Next;
                      end;
                end;
         end
      else
         begin
             uteis.aviso('Não é possível alterar o valor. Existem parcelas líquidada(s) !');
             DataMovimento.CdsPagar.Cancel;
             HabilitaBotoes;
             DBePag_Vlnota.SetFocus;
         end;
    except on E:EdataBaseError do
      uteis.erro  (pchar('Erro ao alterar o valor da parcela !'+e.message));
    end;
end;

procedure TFormContasPagar.Excluir_somente_Inclusao(const  sNumLancto: String);
begin
   try
     DataCadastros.sqlUpdate.Close;
     DataCadastros.SqlUpdate.sql.text :=SQLDEF('PAGAR','DELETE FROM PAG0000 ','WHERE PAG_CODIGO = '''+sNumLancto+'''','','');
     DataCAdastros.sqlUpdate.Execsql;
     //
     DataCAdastros.sqlUpdate.Close;
     DataCadastros.SqlUpdate.sql.text :=SQLDEF('PAGAR','DELETE FROM PAG_PC01 ','WHERE PAG_CODIGO = '''+sNumLancto+'''','','');
     DataCAdastros.sqlUpdate.Execsql;
     //
   except
     on E:EDataBaseError do
       begin
          uteis.erro  (pchar('Impossível excluir registro !'+#13#10+
                     'Mensagem erro: '+e.message));
       end;
   end;
end;

procedure TFormContasPagar.Processo_Parcelamento;
var
   wAux        : Variant;
   wValor      : Currency; // Guarda o Valor da Parcela
   wVlNota     : Double;   // Desconta o Valor da Retencao
   A : Integer;            // Contador e nº das Parcelas

begin

     {Guarda o Valor da nota = valor da nota - o valor da retencao}
     wValor := DataMovimento.CdsPagarPAG_VLNOTA.AsCurrency;
     {Guarda valor já c/ descto da Retencao}
     wVlNota := (DataMovimento.CdsPagarPAG_VLNOTA.AsCurrency);
     {Desconta no Valor total da Nota o Valor da Retencao}
     {calcula valor das parcelas c/ duas casas decimais sem arredondamento}
     wvalor:=int(100*(wvalor/SpinParcelas.Value))/100;
     //Guardando diferença em centavos e transformando-o em inteiro
     // wdescto = Vl total da nota; wvalor = vl da parcela c/ 2 casas
     waux:= (wVlNota-(wvalor*SpinParcelas.Value))*100;
     {transforma inteiro p/ comparar depois}
     waux:= StrToInt(FloatToStrf(waux,ffFixed,1,0));
     {Passa o Status da Tabela Pag0000 para edicao}
     if DataMovimento.CdsPagar.State in [dsbrowse] then
        DataMovimento.CdsPagar.Edit;
     DataMovimento.dsPagarParc.AutoEdit := True;
     //
     DataMovimento.CdsPagarParc.Close;
     DataMovimento.CdsPagarParc.CommandText := SQLDEF('PAGAR','SELECT P1.*,B1.BAN_APELIDO FROM PAG_PC01 P1 LEFT JOIN BAN0000 B1 ON (P1.BAN_CODIGO = B1.BAN_CODIGO)','WHERE P1.PAG_CODIGO = '''+EdtPag_Codigo.Text+'''','P1.PAG_CODIGO','P1.');
     DataMovimento.CdsPagarParc.Open;
     {Cria na memoria a tela do parcelamento}
     FormContasPagParcelas := TFormContasPagParcelas.Create(Application);
     try

       FormContasPagParcelas.EdFornecedor.Text        := CbFornecedor.Text;
       FormContasPagParcelas.Caption                  := 'Contas à Pagar - Manutenção de Parcelas';

       //if DataMovimento.CdsPagar.State in [dsInsert] then
       //   FormContasPagParcelas.CbxForma.ItemIndex := -1;
       for A := 1 to SpinParcelas.Value do
       begin
             wFechaformParcela := True;
             FormContasPagParcelas.DesabilitaBotoes;

             DataMovimento.CdsPagarParc.Insert;
             DataMovimento.CdsPagarParcPAG_CODIGO.AsString   := EdtPag_codigo.Text;
             if SpinParcelas.Value > 1 then
                DataMovimento.CdsPagarParcPPC_NUMER.AsString := StrZero(IntToStr(A),2);
             DataMovimento.CdsPagarParcCCT_CODIGO.AsString   := DataMovimento.CdsPagarCCT_CODIGO.AsString;
             DataMovimento.CdsPagarParcPCX_CODIGO.AsString   := DataMovimento.CdsPagarPCX_CODIGO.AsString;
             DataMovimento.CdsPagarParcPAG_NUMDOC.AsString   := DataMovimento.CdsPagarPAG_NUMDOC.AsString;
             DataMovimento.CdsPagarParcPPC_VLPARC.AsCurrency := wValor;
             DataMovimento.CdsPagarParcCCT_CODIGO.AsString   := SqlCdsCtaAnaliseCCT_CODIGO.AsString;
             DataMovimento.CdsPagarParcPCX_CODIGO.AsString   := SqlCdsProjCxPCX_CODIGO.AsString;
             DataMovimento.CdsPagarParcPPC_EXCLUSAO.AsString := 'N';
             DataMovimento.CdsPagarParcPPC_REEMBOLSO.AsString := IIF(DBCheckBox1.checked ,'S','N');
             DataMovimento.CdsPagarParcPPC_PREVISAO.AsString    := IIF(DBChk_Previsao.checked ,'S','N');
             DataMovimento.CdsPagarParcFOR_CODIGO.ASstring   := cbFornecedor.IDrETORNO;
             DataMovimento.CdsPagarParcPPC_NPARCELAS.AsInteger  := SpinParcelas.Value;
             {acrescenta diferença quando tiver}
             if Waux <> 0 then
             begin
                   DataMovimento.CdsPagarParcPPC_VLPARC.AsCurrency := (wValor + 0.01);
                   Waux := Waux - 1;
             end;
             if A = 1 then
                DataMovimento.CdsPagarParcPPC_VLPARC.AsCurrency := (DataMovimento.CdsPagarParcPPC_VLPARC.AsCurrency - DataMovimento.CdsPagarPAG_VL_RET.AsCurrency);
             if (DataMovimento.CdsPagarParc.State in [dsInsert]) then
                begin
                   DataMovimento.CdsPagarParcPPC_IMP_CHEQUE.AsString  := 'N';
                   DataMovimento.CdsPagarParcEMP_CODIGO.AsString      := dbInicio.Empresa.EMP_CODIGO;
                end;

             FormContasPagParcelas.Caption                      := 'Digite os dados da '+IntToStr(A)+'ª Parcela';
             FormContasPagParcelas.ShowModal;
             {if FormContasPagParcelas.ModalResult<>mrOk then
                Break;}

          end;
     finally
        FreeAndNil( FormContasPagParcelas );
     end;

end;

procedure TFormContasPagar.Excluir_Reparcelamentos(const sNumLancto: String);
begin
   try
     DataCAdastros.sqlUpdate.Close;
     DataCadastros.SqlUpdate.sql.text :=SQLDEF('PAGAR','DELETE FROM PAG_PC01 ','WHERE PAG_CODIGO = '''+sNumLancto+'''','','');
     DataCAdastros.sqlUpdate.Execsql;
   except
     on E:EDataBaseError do
       begin
          uteis.erro  (pchar('Impossível excluir registro !'+#13#10+
                     'Mensagem erro: '+e.message));
       end;
   end;
end;

procedure TFormContasPagar.Busca_Parcela;
begin
   if DataMovimento.CdsPagar.State in [dsbrowse] then
     begin
            TrimAppMemorySize;
            FormContasPagParcelas :=TFormContasPagParcelas.Create(Nil);
            try
               FormContasPagParcelas.EdFornecedor.Text := CbFornecedor.Text;
               FormContasPagParcelas.DesabilitaBotoes;
               FormContasPagParcelas.ShowModal;
               Pn_Botoes.Visible := True;
               if not wIncluir then
                  BuscaLancto(2);
            finally
                   FreeAndNil( FormContasPagParcelas );
                   FormContasPagParcelas:=Nil;
                   TrimAppMemorySize;
            end;
      end;
end;

procedure TFormContasPagar.SqlCdsPagarParcCalcFields(DataSet: TDataSet);
begin
   if (SqlCdsPagarParcPPC_EXCLUSAO.AsString = 'S') then
      SqlCdsPagarParcCCPendente.AsCurrency := 0
   else
      SqlCdsPagarParcCCPendente.AsCurrency := SqlCdsPagarParcPPC_VLPARC.AsCurrency - SqlCdsPagarParcPPC_VLPAGO.AsCurrency + SqlCdsPagarParcPPC_JUROS.AsCurrency + SqlCdsPagarParcPPC_MULTA.AsCurrency - SqlCdsPagarParcPPC_DESCTO.AsCurrency;

end;

procedure TFormContasPagar.SqlCdsPagarParcPPC_NUMERGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if not SqlCdsPagarParc.IsEmpty then
  begin
    if Sender.AsString ='' then
       text:= '1/1'
    else
        text := intToStr(StrToInt(Sender.AsString))+ '/'+ IntToStr(SqlCdsPagarParc.FieldByName('PPC_NPARCELAS').AsInteger);
  end;
end;

procedure TFormContasPagar.DsPagarParcGridDataChange(Sender: tObject;
  Field: TField);
begin
   BuscaPagamentos;
   Busca_Rateios;
end;

procedure TFormContasPagar.BuscaPagamentos;
begin
   CdSPagamentos.Close;
   if (not SqlCdsPagarParc.IsEmpty) then
      begin
         wSql1      := 'SELECT '+
                       '    t1.PAP_REGISTRO,'+
                       '    T1.PAG_DATA_PAGAMENTO,'+
                       '    T1.PAG_VALOR,'+
                       '    T1.PAG_DESCONTO,'+
                       '    T1.PAG_JUROS,'+
                       '    T1.PAG_MULTA,'+
                       '    T1.PAG_PAGO,'+
                       '    T1.BAN_CODIGO,'+
                       '    T2.ban_apelido as BAN_RAZAO,'+
                       '    T1.FPG_REGISTRO,'+
                       '    T3.FPG_DESCRICAO,'+
                       '    T1.USU_CODIGO, '+
                       '    t4.USU_NOME, '+
                       '    T1.PAG_OBSERVACAO '+
                       'FROM PAG_PAGAMENTO T1 '+
                       'JOIN BAN0000 T2 ON (T2.BAN_CODIGO = T1.BAN_CODIGO) '+
                       'JOIN FORMA_PAGAMENTO T3 ON (T3.FPG_REGISTRO = T1.FPG_REGISTRO) '+
                       'JOIN USUARIO T4 ON (T4.USU_CODIGO = T1.USU_CODIGO)';
         wSeleciona := 'WHERE T1.PAG_REGISTRO = '+SqlCdsPagarParcPAG_REGISTRO.AsString;
         wOrdem     := 'T1.PAG_DATA_PAGAMENTO';
         CdSPagamentos.CommandText := SQLDEF('PAGAR',wSql1,wSeleciona,wOrdem,'T1.');
         CdSPagamentos.Open;
      end;
end;

procedure TFormContasPagar.EstornaBaixa1Click(Sender: tObject);
begin
 if (not CdSPagamentos.IsEmpty) then
    if (uteis.confirmacao ( 'Confirma o estorno do Pagamento?')=mrYes) then
     begin
        ContasPagarEstornaBaixa(CdSPagamentosPAP_REGISTRO.AsString);
        SqlCdsPagarParc.Refresh;
     end;
end;

procedure TFormContasPagar.Bit_ListaClick(Sender: tObject);
begin
  PgParcelas.ActivePageIndex := 0;
  FormContasPagarGrid :=TFormContasPagarGrid.Create(Application);
  try
    FormContasPagarGrid.BotoesAcesso;
    FormContasPagarGrid.SalvaEstadoPesquisa := True;
    FormContasPagarGrid.LeEstadoPesquisa := pLerEstadoPesquisa;
    FormContasPagarGrid.ShowModal;
    pLerEstadoPesquisa:=True ;
  finally
   FreeAndNil( FormContasPagarGrid );
   DbGridParcelas.SetFocus;
  end;
  if SqlCdsPagarParc.active then
    SqlCdsPagarParc.Refresh;
end;

procedure TFormContasPagar.BitPagamentosClick(Sender: tObject);
begin
     FormContasPagarBaixas := TFormContasPagarBaixas.Create(Application);
     try
        FormContasPagarBaixas.BotoesAcesso;
        FormContasPagarBaixas.ShowModal;
     finally
            FreeAndNil(FormContasPagarBaixas);
     end;
end;

procedure TFormContasPagar.BitRepetirClick(Sender: tObject);
begin
  if (SqlCdsPagarParc.IsEmpty) then
    begin
       uteis.aviso('Para repetir é necessário o lançamento de uma parcela');
    end
  else
    begin
       FormContasPagarRepetir := TFormContasPagarRepetir.Create(Application);
       try
         FormContasPagarRepetir.ShowModal;
       finally
          FormContasPagarRepetir.Destroy;
          FormContasPagarRepetir := Nil;
       end;
    end;
end;

procedure TFormContasPagar.ChamaOpcao;
begin
   if (not SqlCdsPagarParc.IsEmpty) then
      if (Bit_Gravar.Enabled) then
         begin
            uteis.aviso('Grave a conta antes de dar a manutenção ou baixa na parcela');
         end
      else
         PainelOpcao.Visible := True;
end;

procedure TFormContasPagar.BitBtn1Click(Sender: tObject);
begin
     if (not SqlCdsPagarParc.IsEmpty) then
     begin
          if RbManutencao.Checked then
             Busca_Parcela
          else
              Baixar;
     end;
     PainelOpcao.Visible := False;
end;

procedure TFormContasPagar.AtualizarFornecedorParcelas(const pag, fornecedor: string);
begin
    DBInicio.ExecSql(' UPDATE PAG_PC01 '+
                     ' SET for_codigo =  ' +QuotedStr(fornecedor)+
                     ' WHERE PAG_CODIGO = '+QuotedStr(pag)+
                     ConcatSe(' AND ', DBINICIO.ExclusivoSql('PAGAR') ) );

end;

procedure TFormContasPagar.Baixar;
begin
  if (SqlCdsPagarParc.IsEmpty) then
       raise Exception.Create  ('Nenhuma parcela disponível para baixa foi selecionada');

  if (SqlCdsPagarParcCCPendente.AsFloat <= 0) then
         raise Exception.Create ('Parcela não disponível para baixa');

  if  DBInicio.Empresa.bPMT_CONTROLE_CONTASPAGAR and (SqlCdsPagarParcPPC_SIT_LIBERACAO.AsString <> 'A') then
    raise Exception.Create ('Parcela não APROVADA para baixa');


     FormContasPagarBaixa := TFormContasPagarBaixa.Create(Application);
    try
      SqlCdsPagarParc.DisableControls;
      //Adiciona parcelas a serem baixadas
      FormContasPagarBaixa.CdSPagamento.Insert;
      FormContasPagarBaixa.CdSPagamentoFatRegistro.AsString := SqlCdsPagarParcPAG_REGISTRO.AsString;
      FormContasPagarBaixa.CdSPagamentoFatura.AsString := SqlCdsPagarParcPAG_CODIGO.AsString;
      FormContasPagarBaixa.CdSPagamentoParcela.AsString := SqlCdsPagarParcPPC_NUMER.AsString;
      FormContasPagarBaixa.CdSPagamentoVencimento.AsString := SqlCdsPagarParcPPC_VENCTO.AsString;
      FormContasPagarBaixa.CdSPagamentoValor.AsString := SqlCdsPagarParcPPC_VLPARC.AsString;

      FormContasPagarBaixa.CdSPagamentoPendente.AsString := SqlCdsPagarParcCCPendente.AsString;
      FormContasPagarBaixa.CdSPagamentoBaixar.AsString := SqlCdsPagarParcCCPendente.AsString;
      if DBInicio.Empresa.bPMT_CONTROLE_CONTASPAGAR then
      begin
        FormContasPagarBaixa.CdSPagamentoPendente.AsString := SqlCdsPagarParcPPC_VALOR_APONTADO.AsString;
        FormContasPagarBaixa.CdSPagamentoBaixar.AsString := SqlCdsPagarParcPPC_VALOR_APONTADO.AsString;
      end
      else
      begin
         FormContasPagarBaixa.CdSPagamentoPendente.AsString := SqlCdsPagarParcCCPendente.AsString;
         FormContasPagarBaixa.CdSPagamentoBaixar.AsString := SqlCdsPagarParcCCPendente.AsString;

      end;

      FormContasPagarBaixa.CdSPagamentoDesconto.AsFloat := 0;
      FormContasPagarBaixa.CdSPagamentoJuros.AsFloat := 0;
      FormContasPagarBaixa.CdSPagamentoMulta.AsFloat := 0;
      FormContasPagarBaixa.CdSPagamentoRecebido.AsString := SqlCdsPagarParcCCPendente.AsString;
      FormContasPagarBaixa.CdSPagamentoCliente.AsString := CbFornecedor.Text;
      FormContasPagarBaixa.CdSPagamento.Post;
      if FormContasPagarBaixa.ShowModal = mrOk then
      begin
        if dbInicio.BuscaUmDadoSqlAsString('select ppc_SITPAG from PAG_PC01 where PAG_REGISTRO='+qStr(SqlCdsPagarParcPAG_REGISTRO.AsString))='P' then
           if dbInicio.BuscaUmDadoSqlAsFloat('select (ppc_VLPARC - (ppc_DESCTO+ppc_VLPAGO)) from PAG_PC01 where PAG_REGISTRO='+qStr(SqlCdsPagarParcPAG_REGISTRO.AsString)) <> 0 THEN
              dbInicio.MainDB.ExecuteDirect( 'update PAG_PC01 set ppc_STATUS='+qStr('Parcial')+' where PAG_REGISTRO='+qStr(SqlCdsPagarParcPAG_REGISTRO.AsString) );
      end;

   finally
      FormContasPagarBaixa.Destroy;
      FormContasPagarBaixa := Nil;
      SqlCdsPagarParc.EnableControls;
   end;
   SqlCdsPagarParc.Refresh;

   try
    SqlCdsPagarParc.DisableControls;
     SqlCdsPagarParc.First;
      while not SqlCdsPagarParc.IsEmpty and not SqlCdsPagarParc.Eof do
      begin
        if SqlCdsPagarParcPPC_STATUS.AsString = 'Liquidada' then
        begin
          CbFornecedor.Enabled := False;
          DbeFor_codigo.Enabled := false;
          Sp_fornecedor.Enabled := false;
          break;

        end;
        SqlCdsPagarParc.Next;

      end;
   finally
     SqlCdsPagarParc.EnableControls;
   end;

end;

procedure TFormContasPagar.BitBtn2Click(Sender: tObject);
begin
   PainelOpcao.Visible := False;
end;

procedure TFormContasPagar.ImprimirRecibo1Click(Sender: tObject);
begin
   if (not CdSPagamentos.IsEmpty) then
      begin
          FrmRecibo := TFrmRecibo.Create(Application);
         try

            FrmRecibo.FormStyle := fsNormal;
            FrmRecibo.Visible := false;
            FrmRecibo.rbPagamento.Checked := True;
            FrmRecibo.dataRecebimento := CdSPagamentosPAG_DATA_PAGAMENTO.AsDateTime;
            FrmRecibo.CurValor.Value := CdSPagamentosPAG_PAGO.AsCurrency;
            FrmRecibo.edtRecebemosPagamos.Text := CbFornecedor.Text;
            FrmRecibo.mmoReferente.Lines.Add('Fatura: '+EdtPag_codigo.Text+' Vencimento: '+SqlCdsPagarParcPPC_VENCTO.AsString+' Valor: '+FormatFloat('###,###,###.00',SqlCdsPagarParcPPC_VLPARC.AsCurrency));
            FrmRecibo.mmoReferente.Lines.Add('Liquidação '+iif(CdSPagamentosPAG_PAGO.AsCurrency < SqlCdsPagarParcPPC_VLPARC.AsCurrency,'Parcial','Total' )+' :'+CdSPagamentosPAG_DATA_PAGAMENTO.AsString+' Valor: '+FormatFloat('###,###,###.00',CdSPagamentosPAG_PAGO.AsCurrency) );
            FrmRecibo.ShowModal;
         finally
            FrmRecibo.Destroy;
            FrmRecibo := nil;
         end;
      end;
end;

procedure TFormContasPagar.Busca_Rateios;
begin
   CdsRateioCentroCusto.Close;

   if (not SqlCdsPagarParc.IsEmpty) then
      begin
         wSql1      := 'SELECT '+
                       '    t3.pcx_codigo, '+
                       '    t3.pcx_descri, '+
                       '    t3.pcx_nivel, '+
                       '    t2.fir_indice_real * 100  as fir_indice, '+
                       '    cast((t1.ppc_vlparc - t1.PPC_VALOR_N_RATEIA) * t2.fir_indice_real as numeric(18,4)) as  valor '+
                       'FROM '+
                       'pag_pc01 t1 '+
                       'join fin_rateio t2 on (t2.fir_registro_cp_cr = t1.pag_registro and t2.fir_registro_tipo = ''P'' and t2.FIR_TIPO = ''L'' AND T2.fir_indice > 0) '+
                       'join pcx0000 t3 on (t3.pcx_codigo = t2.pcx_codigo)';
         wSeleciona := 'WHERE  T1.PAG_REGISTRO = '+SqlCdsPagarParcPAG_REGISTRO.AsString;
         wOrdem     := 't3.pcx_nivel';
         qRateioCentroCusto.sql.Text := SQLDEF('PAGAR',wSql1,wSeleciona,wOrdem,'T1.');
         CdsRateioCentroCusto.Open;
      end;
end;

procedure TFormContasPagar.btnRateioManualClick(Sender: tObject);
begin
   if (SqlCdsPagarParc.IsEmpty) then
      begin
         uteis.aviso('Nenuma Parcela Selecionada');
      end
   else
   if (SqlCdsPagarParcPAG_CODIGO.AsString = '') then
      begin
         uteis.aviso('Antes de realizar o rateio click no botão gravar');
      end
   else
      ChamaManutencaoRateioManual(SqlCdsPagarParcPAG_REGISTRO.AsString,'P');
end;

procedure TFormContasPagar.ChamaManutencaoRateioManual(const sRegistro,
  sTipo: String);
begin
   if (sRegistro <> '')and(sTipo <> '') then
      begin
          FrmPlanoContasCentroCustoManual := TFrmPlanoContasCentroCustoManual.Create(Application);
         try
            FrmPlanoContasCentroCustoManual.iRegistroDuplicata := StrToInt(sRegistro);
            FrmPlanoContasCentroCustoManual.sTipoRegistro := sTipo;
            FrmPlanoContasCentroCustoManual.ShowModal;
         finally
            FrmPlanoContasCentroCustoManual.Destroy;
            FrmPlanoContasCentroCustoManual := nil;
         end;
         SqlCdsPagarParc.Refresh;
      end;
end;

procedure TFormContasPagar.ChamaManutencaoRateioManualColaborador(
  const sRegistro, sTipo: String);
var
   sPerfilRateio, sPerfilConta:string;
begin
   sPerfilConta := '';
   sPerfilRateio := '';
   if (sRegistro <> '')and(sTipo <> '') then
      begin
         dataCadastros.sqlUpdate.Close;
         DataCadastros.SqlUpdate.sql.text :='SELECT * from PCX0000_PERFIL WHERE PCXPF_DATA_INICIAL <= '+QuotedStr(DataAmericana(DateToStr(SqlCdsPagarParcPPC_VENCTO.AsDateTime)))+' and PCXPF_DATA_FINAL >= '+QuotedStr(DataAmericana(DateToStr(SqlCdsPagarParcPPC_VENCTO.AsDateTime)));
         dataCadastros.sqlUpdate.open;

         if (not dataCadastros.sqlUpdate.IsEmpty) then
            begin
               sPerfilRateio :=  dataCadastros.sqlUpdate.FieldByName('PCXPF_REGISTRO').AsString;
            end;
         dataCadastros.sqlUpdate.Close;
         DataCadastros.SqlUpdate.sql.text :='SELECT * from CCT_0000 WHERE CCT_CODIGO =  '+QuotedStr(DBeCct_Codigo.Field.Text);
         dataCadastros.sqlUpdate.open;
         if (not dataCadastros.sqlUpdate.IsEmpty) then
            begin
               sPerfilConta :=  dataCadastros.sqlUpdate.FieldByName('CCT_PERFIL_RATEIO').AsString;
            end;

         if (sPerfilConta <> 'C') then
            begin
               uteis.aviso('Essa conta não e do perfil colaborador');
            end
         else
         if (sPerfilRateio = '') then
            begin
               uteis.aviso('Não existe perfil definido para esta conta e data para servir de base para o rateio');
            end
         else
         if (DBeCct_Codigo.Field.Text = '') or  (DBeCct_Codigo.Field.Text = '000') then
            begin
               uteis.aviso('Selecione um centro de custo antes de realizar o rateio');
            end
         else
            begin
                FrmPlanoContasCentroCustoColaboradorSelecao := TFrmPlanoContasCentroCustoColaboradorSelecao.Create(Application);
               try
                  FrmPlanoContasCentroCustoColaboradorSelecao.iPerfilRateio := StrToInt(sPerfilRateio);
                  FrmPlanoContasCentroCustoColaboradorSelecao.sCCT_0000 := DBeCct_Codigo.Field.Text;
                  FrmPlanoContasCentroCustoColaboradorSelecao.iRegistroDuplicata := StrToInt(sRegistro);
                  FrmPlanoContasCentroCustoColaboradorSelecao.sTipoRegistro := sTipo;
                  FrmPlanoContasCentroCustoColaboradorSelecao.ShowModal;
               finally
                  FrmPlanoContasCentroCustoColaboradorSelecao.Destroy;
                  FrmPlanoContasCentroCustoColaboradorSelecao := Nil;
               end;
               SqlCdsPagarParc.Refresh;
            end;
      end;
end;

procedure TFormContasPagar.btnRateioColaboradorClick(Sender: tObject);
begin
   if (SqlCdsPagarParc.IsEmpty) then
      begin
         uteis.aviso('Nenuma Parcela Selecionada');
      end
   else
   if (SqlCdsPagarParcPAG_REGISTRO.AsString = '') then
      begin
         uteis.aviso('Antes de realizar o rateio click no botão gravar');
      end
   else
      ChamaManutencaoRateioManualColaborador(SqlCdsPagarParcPAG_REGISTRO.AsString,'P');
end;

procedure TFormContasPagar.FormCreate(Sender: tObject);
begin
     INHERITED;
     Self.WIdth := 972;
     self.Height:= 629;
     self.Constraints.MinHeight := 629;
     self.Constraints.MinWidth := 972;
     Bit_sair.Top:=Bit_Cancelar.top;
     Bit_sair.left:=Bit_Cancelar.left;
     pLerEstadoPesquisa:=False;
end;

procedure TFormContasPagar.FormDestroy(Sender: TObject);
begin
  inherited;
  FormContasPagar := Nil;
end;

end.


