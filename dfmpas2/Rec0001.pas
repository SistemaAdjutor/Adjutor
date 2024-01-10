unit Rec0001;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, DB, math, Variants,
  Mask, DBCtrls, ExtCtrls, StdCtrls, Buttons, Spin, Grids, DBGrids, ComCtrls, RwSQLComando,
  RwFunc,  rxToolEdit, RXDBCtrl, Provider, SqlExpr,  DBClient,
  ComboBoxRw, ImgList, Menus, Data.DBXFirebird,  basedbform,
  System.ImageList, SgDbSeachComboUnit, ACBrEnterTab, ACBrBase,
  ACBrCalculadora, Data.FMTBCd, BaseForm, RxCurrEdit, system.StrUtils, JvExMask, JvToolEdit, JvDBControls ;


type
  TFormContasReceber = class(TfrmBaseDB)
    PgParcelas: TPageControl;
    TShParcelas: TTabSheet;
    TabSheet2: TTabSheet;
    DbGridRecParc: TDBGrid;
    GroupBox1: TGroupBox;
    DBeFat_ObsLivro: TDBEdit;
    Label15: TLabel;
    DBeFat_baseicms: TDBEdit;
    Label18: TLabel;
    DBeFat_Aliquota: TDBEdit;
    DBeFat_operUF: TDBEdit;
    Label19: TLabel;
    Label17: TLabel;
    DBeFat_operacao: TDBEdit;
    Label13: TLabel;
    DbChkFat_livro: TDBCheckBox;
    Label10: TLabel;
    DbeBaseSub: TDBEdit;
    Label11: TLabel;
    DbeIcmsRet: TDBEdit;
    Label12: TLabel;
    DbeDesp_Acess: TDBEdit;
    Label20: TLabel;
    DbeVl_IPI: TDBEdit;
    CdsParcelasGrid: tclientdataset;
    DsParcelasGrid: TDataSource;
    CdsParcelasGridFPC_NUMER: TStringField;
    CdsParcelasGridFPC_VLPARC: TFMTBCdField;
    CdsParcelasGridFPC_VENCTO: TSQLTimeStampField;
    CdsParcelasGridFPC_VLPAGO: TFMTBCdField;
    CdsParcelasGridFPC_STATUS: TStringField;
    CdsParcelasGridBAN_APELIDO: TStringField;
    CdsParcelasGridFPC_PAGTO: TSQLTimeStampField;
    PanVaria: TPanel;
    GroupBox2: TGroupBox;
    Panel4: TPanel;
    SpeedButton5: TSpeedButton;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
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
    Grp00: TGroupBox;
    EditFatura: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    DBeCli_codigo: TDBEdit;
    Label3: TLabel;
    DBeRep_codigo: TDBEdit;
    Label5: TLabel;
    Label4: TLabel;
    DBePed_codigo: TDBEdit;
    Label7: TLabel;
    DBeFat_vlfat: TDBEdit;
    Label8: TLabel;
    DBeFat_vl_liq: TDBEdit;
    Label21: TLabel;
    DBFAT_VL_RET: TDBEdit;
    spdRet: TSpeedButton;
    Label9: TLabel;
    DBeFat_vlNcomis: TDBEdit;
    Label6: TLabel;
    lblProjcx: TLabel;
    Label14: TLabel;
    DBChkFat_previsao: TDBCheckBox;
    Label16: TLabel;
    Label31: TLabel;
    DBEdt_INSS_PERC: TDBEdit;
    DBEdt_INSS_RET: TDBEdit;
    Label30: TLabel;
    DBeCct_Codigo: TDBEdit;
    DBePcx_Codigo: TDBEdit;
    DBEVL_Total_Ret: TDBEdit;
    BtnCalcular: TBitBtn;
    Label33: TLabel;
    DBEdt_ISS_PERC: TDBEdit;
    DBEdt_ISS_RET: TDBEdit;
    CdsParcelasGridFAT_REGISTRO: TIntegerField;
    CdsParcelasGridFAT_CODIGO: TStringField;
    CdsParcelasGridFPC_PREVISAO: TStringField;
    CdsParcelasGridFPC_SITPAG: TStringField;
    DBnFat_obs: TDBEdit;
    CdsParcelasGridFPC_EXCLUSAO: TStringField;
    GrpExclusao: TGroupBox;
    DBCheckBox1: TDBCheckBox;
    Label34: TLabel;
    DBEdit1: TDBEdit;
    Label35: TLabel;
    Edt_Usu_Cod: TDBEdit;
    Edt_Usu_Nome: TDBEdit;
    Label36: TLabel;
    DBEdt_Motivo: TDBEdit;
    v: TPanel;
    CbRepresentantes: TSgDbSearchCombo;
    CbxProjCx: TSgDbSearchCombo;
    CbxParcela: TSgDbSearchCombo;
    CbxCtaAnalise: TSgDbSearchCombo;
    Sp_Cliente: TSpeedButton;
    DBeNFe_codigo: TDBEdit;
    Label37: TLabel;
    Bit_Sair: TBitBtn;
    Bit_Gravar: TBitBtn;
    Bit_Excluir: TBitBtn;
    Bit_novo: TBitBtn;
    Bit_Relatorio: TBitBtn;
    Bit_Lista: TBitBtn;
    Bit_Cancelar: TBitBtn;
    GroupBox3: TGroupBox;
    DBGrid1: TDBGrid;
    CdsParcelasGridFPC_DESCTO: TFMTBCdField;
    CdsParcelasGridFPC_JUROS: TFMTBCdField;
    CdsParcelasGridFPC_MULTA: TFMTBCdField;
    ImageList1: TImageList;
    Label38: TLabel;
    Label39: TLabel;
    Image2: TImage;
    Image3: TImage;
    Label40: TLabel;
    Image4: TImage;
    Label41: TLabel;
    CdsParcelasGridCCPendente: TFloatField;
    Image5: TImage;
    Label42: TLabel;
    CdSRecebimentos: tclientdataset;
    DsRecebimentos: TDataSource;
    CdSRecebimentosFRE_DATA_RECEBIMENTO: TDateField;
    CdSRecebimentosFRE_VALOR: TFMTBCdField;
    CdSRecebimentosFRE_DESCONTO: TFMTBCdField;
    CdSRecebimentosFRE_JUROS: TFMTBCdField;
    CdSRecebimentosFRE_MULTA: TFMTBCdField;
    CdSRecebimentosFRE_RECEBIDO: TFMTBCdField;
    CdSRecebimentosBAN_CODIGO: TStringField;
    CdSRecebimentosBAN_RAZAO: TStringField;
    CdSRecebimentosFPG_REGISTRO: TIntegerField;
    CdSRecebimentosFPG_DESCRICAO: TStringField;
    CdSRecebimentosUSU_CODIGO: TIntegerField;
    CdSRecebimentosUSU_NOME: TStringField;
    PopupMenu1: TPopupMenu;
    EstornaBaixa1: TMenuItem;
    CdSRecebimentosFRE_REGISTRO: TIntegerField;
    Image1: TImage;
    PainelOpcao: TPanel;
    BitBtn1: TBitBtn;
    GroupBox4: TGroupBox;
    RbBaixa: TRadioButton;
    RbManutencao: TRadioButton;
    Image6: TImage;
    Image7: TImage;
    GroupBox5: TGroupBox;
    DBEdit2: TDBEdit;
    CdsParcelasGridFPC_OBS: TStringField;
    BitBtn2: TBitBtn;
    ImprimirRecibo1: TMenuItem;
    tsRateioCentroCusto: TTabSheet;
    dsRateioCentroCusto: TDataSource;
    CdsRateioCentroCusto: tclientdataset;
    CdsRateioCentroCustoPCX_CODIGO: TStringField;
    CdsRateioCentroCustoPCX_DESCRI: TStringField;
    CdsRateioCentroCustoPCX_NIVEL: TStringField;
    CdsRateioCentroCustoFIR_INDICE: TFMTBCdField;
    CdsRateioCentroCustoVALOR: TFMTBCdField;
    CdsRateioCentroCustoCC_VALOR: TFloatField;
    dbgrdRateio: TDBGrid;
    CdsParcelasGridPCXPF_REGISTRO: TIntegerField;
    btnRateioManual: TBitBtn;
    DBCheckBox2: TDBCheckBox;
    btnRateioColaborador: TBitBtn;
    Label43: TLabel;
    DBEdit4: TDBEdit;
    BitBtn5: TBitBtn;
    SQLQuery1: TSQLQuery;
    SQLQuery2: TSQLQuery;
    SQLQuery3: TSQLQuery;
    SQLQuery4: TSQLQuery;
    SQLQuery5: TSQLQuery;
    qParcelasGrid: TSQLQuery;
    qRecebimentos: TSQLQuery;
    qRateioCentroCusto: TSQLQuery;
    dspRateioCentroCusto: TDataSetProvider;
    dspParcelasGrid: TDataSetProvider;
    dspRecebimentos: TDataSetProvider;
    qRecebimentosFRE_DATA_RECEBIMENTO: TDateField;
    qRecebimentosFRE_VALOR: TFMTBCdField;
    qRecebimentosFRE_DESCONTO: TFMTBCdField;
    qRecebimentosFRE_JUROS: TFMTBCdField;
    qRecebimentosFRE_MULTA: TFMTBCdField;
    qRecebimentosFRE_RECEBIDO: TFMTBCdField;
    qRecebimentosBAN_CODIGO: TStringField;
    qRecebimentosBAN_RAZAO: TStringField;
    qRecebimentosFPG_REGISTRO: TIntegerField;
    qRecebimentosFPG_DESCRICAO: TStringField;
    qRecebimentosUSU_CODIGO: TIntegerField;
    qRecebimentosUSU_NOME: TStringField;
    qRecebimentosFRE_REGISTRO: TIntegerField;
    DBePcl_codigo: TDBEdit;
    Panel2: TPanel;
    Label44: TLabel;
    edTotRateio: TCurrencyEdit;
    CdsRateioCentroCustoVALOR_TOT: TAggregateField;
    EditdbSerie: TDBEdit;
    Label45: TLabel;
    btnServico: TBitBtn;
    CdsParcelasGridselecionado: TBooleanField;
    CdsParcelasGridTotalParcelas: TAggregateField;
    miAbrirNFSE: TMenuItem;
    CdsParcelasGridNFSE: TStringField;
    GroupBox6: TGroupBox;
    SpeedButton1: TSpeedButton;
    Label46: TLabel;
    LbComis2: TLabel;
    LbComis3: TLabel;
    DBeFat_comis3: TDBEdit;
    DBeFat_comis2: TDBEdit;
    DBeFat_comis1: TDBEdit;
    DBEdit5: TDBEdit;
    Label49: TLabel;
    DBEdit6: TDBEdit;
    edVendInterno: TSgDbSearchCombo;
    qRep: TSQLQuery;
    CdsParcelasGridFPC_STATUS_REMESSA: TStringField;
    CdsParcelasGridFPC_VALR_SERVICOS: TFMTBCDField;
    CdsParcelasGridTotalServicos: TAggregateField;
    CdsParcelasGridFPC_NPARCELAS: TSmallintField;
    Image8: TImage;
    Label32: TLabel;
    CdsParcelasGridFPC_TARIFA: TFMTBCDField;
    CdsParcelasGridFPG_DESCRICAO: TStringField;
    DbDtFat_DtEmis: TJvDBDateEdit;
    CdsParcelasGridFPC_VL_RET: TFMTBCDField;
    CdsParcelasGridTotalRetencao: TAggregateField;
    qCli: TSQLQuery;
    cbClientes: TSgDbSearchCombo;
    CdsParcelasGridFPC_ANTECIPACAO_CONCLUIDA: TStringField;
    procedure HabilitaBotoes;
    procedure DesabilitaBotoes;
    procedure AplicaParcelamento;
    procedure FormShow(Sender: tObject);
    procedure FormCloseQuery(Sender: tObject; var CanClose: Boolean);
    procedure Bit_novoClick(Sender: tObject);
    procedure Bit_ExcluirClick(Sender: tObject);
    procedure Bit_GravarClick(Sender: tObject);
    procedure Bit_CancelarClick(Sender: tObject);
    procedure Bit_SairClick(Sender: tObject);
    procedure DbGridRecParCdblClick(Sender: tObject);
    procedure Bit_ListaClick(Sender: tObject);
    procedure DBeCli_codigoExit(Sender: tObject);
    procedure DBeRep_codigoExit(Sender: tObject);
    procedure DBePed_codigoExit(Sender: tObject);
    procedure Bit_RelatorioClick(Sender: tObject);
    procedure DbDtFat_DtEmisExit(Sender: tObject);
    procedure EditFaturaExit(Sender: tObject);
    procedure DBeCli_codigoKeyPress(Sender: tObject; var Key: Char);
    procedure spdRetClick(Sender: tObject);
    procedure SpeedButton5Click(Sender: tObject);
    procedure DBedt_BASE_INSSExit(Sender: tObject);
    procedure DBeCct_CodigoExit(Sender: tObject);
    procedure DBePcx_CodigoExit(Sender: tObject);
    procedure DBEdt_BASE_ISSExit(Sender: tObject);
    procedure DBeFat_vlfatExit(Sender: tObject);
    procedure BtnCalcularClick(Sender: tObject);
    procedure DBeFat_vlfatEnter(Sender: tObject);
    procedure CbClientesClick(Sender: tObject);
    procedure DBePcl_codigoExit(Sender: tObject);
    procedure FormCreate(Sender: tObject);
    procedure Sp_ClienteClick(Sender: tObject);
    procedure CdsParcelasGridCalcFields(DataSet: TDataSet);
    procedure DsParcelasGridDataChange(Sender: tObject; Field: TField);
    procedure EstornaBaixa1Click(Sender: tObject);
    procedure btRecebimentoClick(Sender: tObject);
    procedure BitBtn1Click(Sender: tObject);
    procedure BitBtn2Click(Sender: tObject);
    procedure ImprimirRecibo1Click(Sender: tObject);
    procedure btnRateioManualClick(Sender: tObject);
    procedure btnRateioColaboradorClick(Sender: tObject);
    procedure CbClientes2Select(Sender: tObject);
    procedure CbxParcelaSelect(Sender: tObject);
    procedure DbGridRecParcKeyDown(Sender: tObject; var Key: Word;
      Shift: TShiftState);
    procedure DbGridRecParCdrawColumnCell(Sender: tObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure CdsRateioCentroCustoAfterOpen(DataSet: TDataSet);
    procedure CdsRateioCentroCustoAfterClose(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure btnServicoClick(Sender: TObject);
    procedure DbGridRecParcCellClick(Column: TColumn);
    procedure CdsParcelasGridNFSEGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure miAbrirNFSEClick(Sender: TObject);
    procedure CdsParcelasGridFPC_STATUS_REMESSAGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure CdsParcelasGridFPC_NUMERGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure cbClientesButtonClick(Sender: TObject);
    procedure cbClientesSelect(Sender: TObject);
  private
    { Private declarations }
    pLerEstadoPesquisa: Boolean ;

    iQtdeParcelas   : Integer;
    Cdesconto,
    cValorParcela: real;

    fAbrindo: Boolean;

    bPossuiLiquidacao:Boolean;

    wBan_codigo,
    wBan_codigo_apelido,
    wTip_Cobranca,
    wTip_Docuto,
    wCct_codigo,
    wPcx_codigo,
    wFatCodigo,
    wPcl_codigo,
    sCodRetVelho,
    sCodRetNovo     : String;


    procedure ExcluirFaturas;
    procedure Limpa;
    procedure AtivaRetencao;
    procedure CalcRetencao;
    procedure Excluir_somente_Inclusao(const sNumFatura:String);
    procedure ExcluirParcelasReparceladas(const sNumFatura: String);

    procedure Habilita_Objetos;
    procedure Desabilita_Objetos;
    procedure Alterar_Valor_Parcela(const sFatura,sCodParcela:String;cValorFatura:Currency);
    procedure Busca_Dados_Parcela(const sFatura, sCodParcela:String;const iQtdeParcela:Integer);


    procedure Mostrar_Parcelas;
    procedure BuscaRecebimentos;

    procedure Baixar;
    procedure ChamaManutencaoRateioManual(sRegistro,sTipo:String);
    procedure ChamaManutencaoRateioManualColaborador(sRegistro,sTipo:String);
    procedure Localizar_Dados_Parcela(const sCodParcela: String);
    procedure Localizar_Tributacao_Ativa;
    function Retorna_Cod_Representante(sCodCli: String): String;
    function Localizar_Parametro_Ativo: Boolean;
    Procedure ParcelarRecB(wValor,wValor1Parcela:Double;wBanco,wCobranca,wTpDocuto,wCct_codigo,wPcx_codigo,wFatCodigo,wPcl_Codigo,wBancoApelido:String;var wDataE:Tdatetime; FormaPagamento : integer = 0);
    procedure AtualizaClienteParcelas(sFat, sCliente:String);


  public
    { Public declarations }
    bConfirmar_Exclusao,
    wIncluir   : Boolean;
    wMudouTotal: Currency;
    procedure BuscaFatura(wTipo:Integer);
    procedure BuscaParcelas;
    procedure Busca_Rateios;
    procedure MostraDados;
    procedure ChamaOpcao;
    procedure BotoesAcesso;
  end;

var
   FormContasReceber: TFormContasReceber;
   WSetParce : String;
   wCheckCancela : Boolean;

implementation

{$R *.DFM}

uses PesquisaClientesForm, Uteis, Rec0002,Rec0003,GImpRece, DataMov, DataCad,
  Cli0001, Men0001, Motivo, DataMov2,
  uFinanceiroDao, fat0010,  fat0009, uRecibo, InicioDB,
  uPlanoContasCentroCustoManual, uPlanoContasCentroCustoColaboradorSelecao, Nfs0004, nfse_principal, uContasReceberAgrupa;


procedure TformContasReceber.HabilitaBotoes;
begin
    EditFatura.ReadOnly         := False;
    Bit_novo.Enabled            := True;
    Bit_Excluir.Enabled         := True;
    Bit_Sair.visible            := True;
    Bit_Relatorio.Enabled       := True;
    BitBtn5.Enabled      := True;
    Bit_Lista.Enabled           := True;
    Bit_Gravar.Enabled          := False;
    Bit_Cancelar.Visible        := False;
    DataMovimento.CdsReceber.Cancel;
    BotoesAcesso;
end;

procedure TformContasReceber.DesabilitaBotoes;
begin
     BotoesAcesso;
    if (DataMovimento.CdsReceber.State = DsEdit) then
           EditFatura.ReadOnly  := True
    else
           EditFatura.ReadOnly  := False;
    Bit_novo.Enabled            := False;
    Bit_Excluir.Enabled         := False;
    Bit_Sair.Visible            := False;
    BitBtn5.Enabled      := False;
    Bit_Relatorio.Enabled       := False;
    Bit_Lista.Enabled           := False;
    Bit_Gravar.Enabled          := True;
    Bit_Cancelar.Visible        := True;

end;

procedure TFormContasReceber.FormShow(Sender: tObject);
Var

   i : integer;
begin
    inherited;

    btnRateioManual.Visible := FrmMenu.bUtilizaRecursosAvancadosCentroCusto;
    btnRateioColaborador.Visible := FrmMenu.bUtilizaRecursosAvancadosCentroCusto;
    tsRateioCentroCusto.TabVisible := FrmMenu.bUtilizaRecursosAvancadosCentroCusto;

    bConfirmar_Exclusao := False;

    wIncluir := false;
    PgParcelas.ActivePage        := TShParcelas;


//    if (wIncluir = False) then
//       BuscaFatura(1);

    if (FrmMenu.sProjetoCaixa = 'S') then
    begin
          LblProjCx.Enabled     := True;
          CbxProjCx.Enabled     := True;
          DbEPcx_Codigo.Enabled := True;
    end
    else
    begin
          LblProjCx.Enabled     := False;
          CbxProjCx.Enabled     := False;
          DbEPcx_Codigo.Enabled := False;
    end;

    if (Localizar_Parametro_Ativo) then
    begin
            DataMovimento2.sqlaux2.Open;
            if (DataMovimento2.sqlaux2.FieldByName('PMT_COMIS_GRP').AsString = 'S') then
            Begin
                  LbComis2.Visible      := True;
                  Dbefat_Comis2.Visible := True;
                  LbComis3.Visible      := True;
                  DbeFat_Comis3.Visible := True;
            end;
            DataMovimento2.sqlaux2.Close;
    end;

    Habilitabotoes;
    DbGridRecParc.Enabled := True;

    EditFatura.Text := StrZero(dbInicio.BuscaUmDadoSqlAsString('select max( fat_codigo ) from FAT0000 '+ConcatSe( ' where ',dbInicio.ExclusivoSql('RECEBER') ) ),EditFatura.MaxLength);
//    BuscaFatura(2);
    EditFatura.Setfocus;
    for i:=0 to DbGridRecParc.Columns.Count-1 do
     DbGridRecParc.Columns.Items[i].Visible := (MatchStr(DbGridRecParc.Columns.Items[i].FieldName,['selecionado','NFSE']) and DBInicio.NFSE.ATIVA_NFSE)  or (not
                        MatchStr(DbGridRecParc.Columns.Items[i].FieldName,['selecionado','NFSE']));

    CbRepresentantes.WherePersonalizado := ' WHERE REP_SITUACAO = ''A'' ' ;
    edVendInterno.WherePersonalizado := ' WHERE REP_SITUACAO = ''A'' ' ;

end;

procedure TFormContasReceber.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
  FormContasReceber := nil;

end;

procedure TFormContasReceber.FormCloseQuery(Sender: tObject;
  var CanClose: Boolean);
begin
    inherited;
    if DataMovimento.CdsReceber.State in [dsEdit,dsInsert] then
    begin
         if uteis.confirmacao ( 'Deseja salvar alterações ?') = idyes then
            Bit_Gravar.Click
         else
            Bit_Cancelar.Click;
         //CanClose := False;
    end;
end;

procedure TFormContasReceber.Bit_ListaClick(Sender: tObject);
begin
   PgParcelas.ActivePageIndex := 0;
   FormContasRecParceGrid :=TFormContasRecParceGrid.Create(Application);
   FormContasRecParceGrid.BotoesAcesso;
   try
      FormContasRecParceGrid.SalvaEstadoPesquisa := True;
      FormContasRecParceGrid.LeEstadoPesquisa := true;
      FormContasRecParceGrid.ShowModal;
   finally
          EditFatura.SetFocus;
          FreeAndNil(FormContasRecParceGrid);
   end;
   DataMovimento.CdsReceber.Cancel;
   CdsParcelasGrid.Refresh;
   Habilitabotoes;
end;

procedure TFormContasReceber.Bit_novoClick(Sender: tObject);

begin
      btnServico.Enabled := False;
      wIncluir := True;
      DBeFat_vlfat.Enabled := True;
      EditFatura.Clear;

      DbChkFat_livro.Checked;
      {Libera alteração p/ cliente e representante}
      DBeCli_codigo.ReadOnly := False;
      DBeRep_codigo.Clear;
      DataMovimento.DsReceber.AutoEdit := True;
      if not DataMovimento.CdsReceber.Active then
      begin
        DataMovimento.SqlReceber.SQL.Text := 'select * from fat0000 where 1 = 0';
        DataMovimento.CdsReceber.Open;

      end;
      DataMovimento.CdsReceber.Insert;

      CdsParcelasGrid.Close;
      DesabilitaBotoes;
      uteis.HabilitaIncluir('FinanceiroContas à Receber',DBInicio.Usuario.CODIGO,FormContasReceber);
      CbxProjCx.clear;
      CbClientes.clear;
      CbRepresentantes.Clear;
      CbxParcela.clear;

      DataMovimento.CdsReceberFAT_EXCLUSAO.AsString := 'N';
      DataMovimento.CdsReceberFAT_PREVISAO.AsString := 'N';
      DataMovimento.CdsReceberFAT_LIVRO.AsString    := 'N';
      DataMovimento.CdsReceberOPV_CODIGO.AsInteger  := 15;
      DataMovimento.CdsReceberFAT_VLFAT.AsCurrency  := 0;
      DataMovimento.CdsReceberFAT_VL_LIQ.Ascurrency := 0;
      DataMovimento.CdsReceberCCT_CODIGO.AsString   := '003';
      DataMovimento.CdsReceberFAT_NUMSERIE.AsString := BuscaUmDadoSqlAsString('SELECT EMP_SERIE_NFSE FROM EMP0000 e WHERE EMP_CODIGO = ' + QuotedStr(DBInicio.Emp_Codigo));


      Habilita_Objetos;

      DbDtFat_DtEmis.Date := Date;
      DataMovimento.CdsReceberFAT_DTEMIS.AsDateTime := Date;
   //   SequenciadorPRC(DataCadastros.SQLConnection1, dbInicio.Empresa.EMP_CODIGO,'NF0001', 'NF_NOTANUMBER_N', 0);
      if (EditFatura.Text = '') then
      begin
          try
            EditFatura.Text := SequenciadorPRC(DataCadastros.SQLConnection1,   //Conexao
                                                         dbInicio.Empresa.EMP_CODIGO, //empresa
                                                         'NF0001',                    //Tabela
                                                         'NF_NOTANUMBER_N',           //Campo da Tabela
                                                         0);
            // fatura + 1 para nao pegar mesma sequencia do faturamento
            Editfatura.Text := strzero((strToInt(Editfatura.Text)),6);
          except
            EditFatura.Text := '';
          end;
      end;


      CbClientes.CLEAR;
      CbxProjCx.CLEAR;
      CbClientes.CLEAR;
      CbRepresentantes.CLEAR;
      CbxParcela.CLEAR;
  CdSRecebimentos.Close;
end;

procedure TFormContasReceber.Bit_ExcluirClick(Sender: tObject);
var n: integer ;
begin
      if (DataMovimento.CdsReceberFAT_EXCLUSAO.AsString = 'N') then
      begin
            n:=BuscaUmDadoSqlAsInteger( 'Select cast(count(*) as integer) as conta from    FAT_PC01 '+
                                        'WHERE FAT_CODIGO = '+qStr(EditFatura.Text)+' AND FPC_SITPAG = '+qStr('L')+
                                        ConcatSe(' and ',dbInicio.ExclusivoSql('RECEBER') ) );


            if n=0 then
            begin
                 if (DataMovimento.CdsReceber.IsEmpty) Then   //evita exclussão de registro
                    uteis.aviso('Não Existe Registro Cadastrado !')
                 else
                 begin
                      if uteis.confirmacao ( 'Deseja Excluir esta conta com todas suas parcelas?')= Mryes then
                      begin
                              try
                                 FrmMotivo := TFrmMotivo.Create(Application);
                                 FrmMotivo.Edt_Motivo.MaxLength := 20;
                                 FrmMotivo.ShowModal;
                                 if (bConfirmar_Exclusao) then
                                 begin
                                      if (DataMovimento.CdsReceber.State in [dsBrowse]) then
                                         DataMovimento.CdsReceber.Edit;
                                      DataMovimento.CdsReceberFAT_MOTIVO_EXCLUSAO.AsString := FrmMotivo.Edt_Motivo.Text;
                                      DataMovimento.CdsReceberFAT_DATA_EXCLUSAO.AsString   := DateToStr(now);
                                      DataMovimento.CdsReceberFAT_HORA_EXCLUSAO.AsString   := TimeToStr(now);
                                      DataMovimento.CdsReceberUSU_CODIGO.AsString          := dbInicio.Usuario.Codigo;
                                      DataMovimento.CdsReceberUSU_LOGIN.AsString           := dbInicio.Usuario.nome;
                                      DataMovimento.CdsReceberFAT_EXCLUSAO.AsString        := 'S';
                                      DataMovimento.CdsReceber.ApplyUpdates(0);
                                      ExcluirFaturas;
                                      ExecSql( 'UPDATE NF0001 SET NF_CANCELADA = ''S'' '+
                                              ' where nf_status_nfe = ''A'' AND  EMP_CODIGO = '+QuotedStr(DBInicio.Empresa.EMP_CODIGO) +
                                              ' AND nf_notanumber ='+QuotedStr(DataMovimento.CdsReceberFAT_CODIGO.AsString));


                                      BuscaFatura(2);
                                 end;
                              finally
                                   FrmMotivo.Destroy;
                                   FrmMotivo := nil;
                              end;
                      end
                      else
                          BuscaFatura(2);
                 end;
            end
            else
                uteis.aviso('Lançamento não pode ser excluído. Existem parcela(s) liquidada(s) !');
            wIncluir := False;
            HabilitaBotoes;
            EditFatura.SetFocus;
      end
      else
      begin
            uteis.aviso('Registro já excluído !');
            EditFatura.SetFocus;
      end;
end;

procedure TFormContasReceber.Bit_GravarClick(Sender: tObject);
var
    n: Integer;
begin

    if (CdsParcelasGrid.IsEmpty = true) then
    begin
         uteis.aviso('Você deve aplicar um parcelamento!');
         CbxParcela.SetFocus;
    end
    else
    if (DbeCct_codigo.Text = '') then
    begin
         uteis.aviso('Você deve selecionar uma Conta Analise !');
         CbxCtaAnalise.Text := '';
         CbxCtaAnalise.SetFocus;
    end
    else
    if (DbeCli_codigo.Text = '') then
    begin
         uteis.aviso('Você deve selecionar um cliente!');
         CbClientes.SetFocus;
    end
    else
    if (DbeRep_codigo.Text = '') then
    begin
         uteis.aviso('Você deve selecionar um Vendedor!');
         CbRepresentantes.SetFocus;
    end
    else
    if (DbDtFat_DtEmis.editText = '') then
    begin
         uteis.aviso('Digite Data de Emissão!');
         DbDtFat_DtEmis.SetFocus;
    end
    else
    if (DbeFat_VlFat.Text = '0,00') then
    begin
         uteis.aviso('Digite o Valor Faturado');
         DbeFat_VlFat.SetFocus;
    end
    else
    if (DbeFat_vl_liq.Text = '0,00') then
    begin
         uteis.aviso('Digite o Valor Liquido');
         DbeFat_vl_liq.Setfocus;
    end
    else
    if (EditFatura.Text = '') then
    begin
         uteis.aviso('Entre com Nº da fatura');
         EditFatura.SetFocus;
    end
    else
    begin
          if (DataMovimento.CdsReceber.State in [dsBrowse]) then
             DataMovimento.CdsReceber.Edit;

          n:=BuscaUmDadoSqlAsInteger( 'Select cast(count(*) as integer) as conta from    FAT_PC01 '+
                                      'where Fat_codigo = '+qStr(EditFatura.Text)+' and FPC_SITPAG = '+qStr('L')+
                                      ConcatSe(' and ', dbInicio.ExclusivoSql('RECEBER') ) );

          if n=0 then //Atualiza o campo PPC_PREVISAO da tabela FAT_PC01
          begin
                 ExecSql( 'Update FAT_PC01 Set FPC_PREVISAO = '+qStr(IIF(DBChkFat_previsao.checked ,'S','N'))+
                          ' where FAT_CODIGO = '+qStr(EditFatura.Text)+
                          ConcatSe(' and ', dbInicio.ExclusivoSql('RECEBER') ) );
          end
          else
          if DBChkFat_previsao.checked  then
          begin
                 uteis.aviso('Não é possível gravar todas as parcelas como previsão ! !'+#13+'Existe parcela(s) liquidada(s).'+#13+'Marque como previsão direto na parcela.');
                 DBChkFat_previsao.Checked := False;
                 DataMovimento.CdsReceberFAT_PREVISAO.AsString := 'N';
          end;

          ExecSql( 'Update FAT_PC01 set REP_CODIGO = '+qStr(DBeRep_codigo.Text)+', '+
                                       'CCT_CODIGO = '+qStr(DBeCct_Codigo.Text)+', '+
                                       'PCX_CODIGO = '+qStr(DBePcx_Codigo.Text)+', '+
                                       'FPC_PREVISAO = '+qStr(IIF(DBChkFat_previsao.checked ,'S','N'))+', '+
                                       'FPC_DTEMIS = '+DateToSql(DbDtFat_DtEmis.Date)+
                                       ' WHERE FAT_CODIGO = '+qStr(EditFatura.Text)  +
                                        ConcatSe(' AND ', DBINICIO.ExclusivoSql('RECEBER') ) );
//
//          ExecSql( 'UpDate CLI0000 set CLI_VL_ULTCOMP = '+FloatToSql(DBeFat_vlfat.Field.Value)+', '+
//                                      'CLI_DTULTCOM = '+DateToSql(DbDtFat_DtEmis.Date)+' '+
//                                      'where CLI_CODIGO = '+qStr(DBeCli_codigo.Field.Text)+
//                                       ConcatSe(' AND ', DBINICIO.ExclusivoSql('CLIENTES') ) );
          //ativa objeto desativado no Beforeedit
          EditFatura.Enabled     := True;
          DBeCli_codigo.ReadOnly := True;
          //salva o registro
          DataMovimento.CdsReceberFAT_CODIGO.AsString := StrZero(EditFatura.Text,EditFatura.MaxLength);
          DataMovimento.CdsReceberCLI_CODIGO.AsString := StrZero(DataMovimento.CdsReceberCLI_CODIGO.AsString,DBeCli_codigo.MaxLength);
          DataMovimento.CdsReceberEMP_CODIGO.AsString := dbInicio.Empresa.EMP_CODIGO;

          //VERIFICA SE MUDOU A CONTA FINANCEIRA SE MUDOU RATEIA PELO CENTROS DE CUSTO DINOVO
          if (DBeCct_Codigo.Text <> DataMovimento.CdsReceberCCT_CODIGO.OldValue)or(wIncluir) then
          begin
               CdsParcelasGrid.DisableControls;
               CdsParcelasGrid.First;
               while (not CdsParcelasGrid.Eof) do
               begin
                      if (CdsParcelasGridPCXPF_REGISTRO.AsString <> '-1') then
                          LancaRateioCentroCustoBasePlano(CdsParcelasGridFAT_REGISTRO.AsString,
                                                          'R',
                                                          DBeCct_Codigo.Text,
                                                          CdsParcelasGridPCXPF_REGISTRO.AsString);
                     CdsParcelasGrid.Next;
               end;
               CdsParcelasGrid.First;
               CdsParcelasGrid.EnableControls;
          end;

          //Verifica se o Rateio manual foi feito caso seja
          if (DBeCct_Codigo.Text<> DataMovimento.CdsReceberCCT_CODIGO.OldValue)or(wIncluir) then
          begin
              CdsParcelasGrid.DisableControls;
              CdsParcelasGrid.First;
              while (not CdsParcelasGrid.Eof) do
              begin
                    if (VerificaSePendenciaRateioManual(CdsParcelasGridFAT_REGISTRO.AsString,
                               'R',
                               DBeCct_Codigo.Text)) then
                    begin
                          uteis.aviso('Perfil da conta é rateio manual'+#13#10+ 'É indicado fazê-lo agora.');
                          CdsParcelasGrid.Last;
                    end
                    else
                        CdsParcelasGrid.Next;
              end;
              CdsParcelasGrid.First;
              CdsParcelasGrid.EnableControls;
          end;

          //Gravar os Tributos qdo com Campo Total Retido tiver Valor
          DataMovimento.CdsReceber.ApplyUpdates(0);
          BuscaFatura(2);
          DataMovimento.DsReceber.AutoEdit := true;
          DbGridRecParc.Enabled := True;
          Habilitabotoes;
          wIncluir := False;
          EditFatura.SetFocus;
          AtualizaClienteParcelas(DataMovimento.CdsReceberFAT_CODIGO.Value,DataMovimento.CdsReceberCLI_CODIGO.Value);
          btnServico.Enabled := True;
    end;
end;

procedure TFormContasReceber.Bit_CancelarClick(Sender: tObject);
begin
    DBeCli_codigo.ReadOnly := True;
    if (wIncluir = True) then
    begin
            SequenciadorPRC(DataCadastros.SQLConnection1, dbInicio.Empresa.EMP_CODIGO,'NF0001', 'NF_NOTANUMBER_N', 1, EditFatura.Text);
            Excluir_somente_Inclusao(EditFatura.Text);
    end;
    wIncluir := False;
    DataMovimento.CdsReceber.Cancel;
    EditFatura.Text := StrZero(DataMovimento.CdsReceberFAT_CODIGO.AsString,EditFatura.MaxLength);
    BuscaFatura(2);
    EditFatura.SetFocus;
    HabilitaBotoes;
    DbGridRecParc.Enabled := True;
    DataMovimento.CdsReceber.Cancel;
end;

procedure TFormContasReceber.Bit_SairClick(Sender: tObject);
begin
     inherited;
    Close;
end;

procedure TFormContasReceber.BotoesAcesso;
begin
     if assigned(FormContasReceber) then
     begin
       Bit_novo.Enabled := Uteis.AcessoUsuario('FinanceiroContas à Receber',DBInicio.Usuario.CODIGO,FormContasReceber).Incluir;
       Bit_Excluir.Enabled := Uteis.AcessoUsuario('FinanceiroContas à Receber',DBInicio.Usuario.CODIGO,FormContasReceber).Exluir;
       Bit_Relatorio.Enabled := Uteis.AcessoUsuario('FinanceiroContas à Receber',DBInicio.Usuario.CODIGO,FormContasReceber).Relatorio;
       DataMovimento.DsReceber.AutoEdit := Uteis.AcessoUsuario('FinanceiroContas à Receber',DBInicio.Usuario.CODIGO,FormContasReceber).Alterar;
     end;
end;

procedure TFormContasReceber.DbGridRecParcCellClick(Column: TColumn);
begin
  inherited;
  if not (CdsParcelasGrid.IsEmpty) and (Column.FieldName = 'selecionado') then
  begin
      if  not (CdsParcelasGrid.State in dsEditModes)  then
        CdsParcelasGrid.Edit;
     CdsParcelasGridselecionado.AsBoolean :=  not CdsParcelasGridselecionado.AsBoolean;
      CdsParcelasGrid.Post;
  end;
end;

procedure TFormContasReceber.DbGridRecParCdblClick(Sender: tObject);
begin
     ChamaOpcao;
end;

procedure TFormContasReceber.DbGridRecParCdrawColumnCell(Sender: tObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
Check: Integer;
R: TRect;
begin
     inherited;
     if (not CdsParcelasGrid.IsEmpty) then
     begin
        if Column.FieldName = 'selecionado' then
        begin
          DbGridRecParc.Canvas.FillRect(Rect);
          Check := 0;
          if CdsParcelasGrid.FindField('selecionado').AsBoolean then
              Check := DFCS_CHECKED;
          R:=Rect;
          TDBGrid(sender).Canvas.Font.Color :=  TDBGrid(sender).Canvas.Brush.Color;
          InflateRect(R,-2,-2); //Diminue o tamanho do CheckBox
          DrawFrameControl(DbGridRecParc.Canvas.Handle,R,DFC_BUTTON, DFCS_BUTTONCHECK or Check);
        end;


         if CdsParcelasGridFPC_EXCLUSAO.AsString = 'S' then
             DbGridRecParc.Canvas.Font.Color:= $0000B900;

         if Column.Field = (CdsParcelasGridFPC_SITPAG) then
            begin
              DbGridRecParc.Canvas.FillRect(Rect);
              if (CdsParcelasGridFPC_EXCLUSAO.AsString = 'S') then
                ImageList1.Draw(DbGridRecParc.Canvas,Rect.Left+03,Rect.Top+1,6)     // X Exclusão
              else
              if  (CdsParcelasGridFPC_STATUS.AsString = 'Devolução') then
                ImageList1.Draw(DbGridRecParc.Canvas,Rect.Left+03,Rect.Top+1,2) // CINZA Devolvido
              else
              if (CdsParcelasGridFPC_PREVISAO.AsString = 'S') then
                ImageList1.Draw(DbGridRecParc.Canvas,Rect.Left+03,Rect.Top+1,3) // PRETO Previsão
              else
              if ((CdsParcelasGridCCPendente.AsCurrency > 0) and (CdsParcelasGridCCPendente.AsCurrency < CdsParcelasGridFPC_VLPARC.AsCurrency)) then
                ImageList1.Draw(DbGridRecParc.Canvas,Rect.Left+03,Rect.Top+1,0) // AMARELO Parcial
              else
              if ( (DBInicio.GetParametroSistema('PMT_GER_AVANC_ANTECIP_DESC') = 'S')  and ( CdsParcelasGridFPC_ANTECIPACAO_CONCLUIDA.ASString  = 'S')    )
              then
                ImageList1.Draw(DbGridRecParc.Canvas,Rect.Left+03,Rect.Top+1,1)  // AZUL Liquidado pelo flag de antecipação concluida na manutenção
              else
              if ( (CdsParcelasGridCCPendente.AsCurrency > 0) and (CdsParcelasGridFPC_VENCTO.AsDateTime < Date) and (CdsParcelasGridCCPendente.AsFloat > 0) )
                or ( (DBInicio.GetParametroSistema('PMT_GER_AVANC_ANTECIP_DESC') = 'S')  and (CdsParcelasGridFPC_ANTECIPACAO_CONCLUIDA.AsString <> 'S') and (CdsParcelasGridFPC_VENCTO.AsDateTime < Date) { and  (CdsParcelasGridCCPendente.AsFloat > 0) }  )
              then
                ImageList1.Draw(DbGridRecParc.Canvas,Rect.Left+03,Rect.Top+1,4) // VERMELHO Vencida ou Descontada
              else
              if ((CdsParcelasGridCCPendente.AsCurrency = CdsParcelasGridFPC_VLPARC.AsCurrency) and (CdsParcelasGridFPC_VENCTO.AsDateTime >= Date)) then
                ImageList1.Draw(DbGridRecParc.Canvas,Rect.Left+03,Rect.Top+1,5) // VERDE Pendente
              else
              if (CdsParcelasGridCCPendente.AsCurrency = 0) then
                ImageList1.Draw(DbGridRecParc.Canvas,Rect.Left+03,Rect.Top+1,1) ; // AZUL Liquidado


            end;
      end;

end;

procedure TFormContasReceber.DbGridRecParcKeyDown(Sender: tObject;
  var Key: Word; Shift: TShiftState);
begin
     if (Key = vk_return) then
     begin
          ChamaOpcao;
          Key := 0;
     end;
     inherited;
end;

procedure TFormContasReceber.DBeCli_codigoExit(Sender: tObject);
begin
    if (ActiveControl <> Nil) and (ActiveControl.Name <> 'Bit_Cancelar') and (ActiveControl.Name <> 'Bit_Sair') then
    begin
         if (StrZero(DBeCli_codigo.Text,5)<>'00000') then
         begin
             DataMovimento.CdsReceber.Edit;
             DataMovimento.CdsReceberCLI_CODIGO.AsString  :=StrZero(DBeCli_codigo.Text,5);
             DataMovimento.CdsReceber.Post;
             if CbClientes.idRetorno='' then
                GeraException('Cliente não localizado com este código!');
         end;
    end;
end;

procedure TFormContasReceber.DBeRep_codigoExit(Sender: tObject);
begin
//    if (ActiveControl <> Nil) and (ActiveControl.Name <> 'Bit_Cancelar') and (ActiveControl.Name <> 'Bit_Sair') then
//    begin
//         if (StrZero(DBeRep_codigo.Text,3)<>'000') then
//         begin
//             DataMovimento.CdsReceberREP_CODIGO.AsString:=StrZero(DBeRep_codigo.Text,3);
//             if CbRepresentantes.idRetorno='' then
//                GeraException('Vendedor não localizado com este código!');
//         end;
//    end;
end;

procedure TFormContasReceber.AplicaParcelamento;
Var

  dDataAcumulada : TDateTime;
  n              : Integer;
  fpg_reg : integer;
begin
     Cdesconto      := 0;
     iQtdeParcelas  := 0;

     n := BuscaUmdadoSqlasInteger ( 'Select cast(count(*) as integer) as conta from FAT_PC01 '+
                                    'where (FPC_SITPAG <>''P'' and FPC_STATUS<>''Pendente'') and FAT_CODIGO = '''+EditFatura.Text+''''+
                                    ConcatSe(' AND ', DBINICIO.ExclusivoSql('RECEBER') ) );
     if n<>0 then
     begin
           uteis.aviso('Impossível reparcelar esta fatura. Existem parcelas com transações executadas !');
           DbGridRecParc.Enabled := true;
           DbGridRecParc.SetFocus;
     end
     else
     begin
          n := BuscaUmdadoSqlasInteger ( 'Select cast(count(*) as integer) as conta from    FAT_PC01 X1 '+
                                         'WHERE X1.FAT_CODIGO = '''+EditFatura.Text+''' and X1.FPC_SITPAG= ''L'''+
                                         ConcatSe(' AND ', DBINICIO.ExclusivoSql('RECEBER') ) );
          if n=0 then
          begin
               if uteis.confirmacao ( 'Confirma o Parcelamento Selecionado ?')= idYes then
               begin
                    Busca_Dados_Parcela(EditFatura.Text,  StrZero(IntToStr(1),2), 1);
                    //Parcelar a fatura Gerar duplIcatas
                    dDataAcumulada := DataMovimento.CdsReceberFAT_DTEMIS.AsDateTime;
                    if (dDataAcumulada = 0) then
                    begin
                         dDataAcumulada := Date;
                         DataMovimento.CdsReceberFAT_DTEMIS.AsDateTime := Date;
                    end;
                    wCct_codigo    := DBeCct_Codigo.Text;
                    wPcx_codigo    := DBePcx_Codigo.Text;
                    wFatCodigo     := EditFatura.Text;

                    fpg_reg := BuscaUmDadoSqlAsInteger(' Select FIRST 1 FPG_REGISTRO from FAT_PC01 ' +
                                                       ' WHERE FAT_CODIGO = '+QuotedStr(EditFatura.Text)+
                                                         ConcatSe(' AND ', DBINICIO.ExclusivoSql('RECEBER') ) );

                    ExcluirParcelasReparceladas(EditFatura.Text);

                    ParcelarRecB((DataMovimento.CdsReceberFAT_VLFAT.AsCurrency - DataMovimento.CdsReceberFAT_VL_RET.AsCurrency),//wVlParce,
                                 0,//VALOR PARA A 1 PARCELA
                                 wBan_Codigo,
                                 wTip_Cobranca,
                                 wTip_Docuto,
                                 wCct_codigo,
                                 wPcx_codigo,
                                 wFatCodigo,
                                 wPcl_codigo,
                                 wBan_codigo_apelido,
                                 dDataAcumulada, fpg_reg);
               end
               else
               begin
                    if (DataMovimento.CdsReceber.State = dsEdit) then
                    begin
                         DataMovimento.CdsReceber.Cancel;
                         HabilitaBotoes;
                         DBeFat_vlfat.SetFocus;
                    end
                    else
                        CbxParcela.SetFocus;
               end;
          end
          else
          begin
               uteis.aviso('Não é possível alterar o valor. Existem parcelas líquidada(s) !');
               DataMovimento.CdsReceber.Cancel;
               HabilitaBotoes;
               DBeFat_vlfat.SetFocus;
          end;
     end;
end;

procedure TFormContasReceber.DBePed_codigoExit(Sender: tObject);
begin
    if not (DBePed_codigo.Text = '')then
       DBePed_codigo.Text := StrZero(DBePed_codigo.Text,6);
end;

procedure TFormContasReceber.Bit_RelatorioClick(Sender: tObject);
begin
      FormGImpRece :=TFormGImpRece.Create(Application);
      try
        FormGImpRece.ShowModal;
      finally
        fREEaNDnIL(FormGImpRece);
        EditFatura.SetFocus;
      end;
end;

procedure TFormContasReceber.DbDtFat_DtEmisExit(Sender: tObject);
begin
    if DbDtFAT_DTEMIS.text <> '  /  /    ' then
       begin
           if not TestaDataStr(DbDtFAT_DTEMIS.Text) then
              begin
                  DbDtFAT_DTEMIS.Date := Now;
                  DbDtFAT_DTEMIS.setfocus;
              end;
       end;
end;

procedure TFormContasReceber.EditFaturaExit(Sender: tObject);
var n: integer;
begin
    if (ActiveControl <> Nil) and(ActiveControl.Name <> 'Bit_Lista') and(ActiveControl.Name <> 'Bit_Relatorio') and(ActiveControl.Name <> 'Bit_novo') and(ActiveControl.Name <> 'Bit_Excluir')
       and(ActiveControl.Name <> 'Bit_Gravar') and(ActiveControl.Name <> 'Bit_Cancelar') and(ActiveControl.Name <> 'BitBtn5') and(ActiveControl.Name <> 'Bit_Sair')
       and(ActiveControl.Name <> 'DbGridRecParc') then
    begin
          EditFatura.Text := StrZero(EditFatura.Text,EditFatura.MaxLength);
          if (not wIncluir) then
             BuscaFatura(2)
          else
          begin
               if (EditFatura.Text = '') then
               begin
                    uteis.aviso('Informe o número da fatura !');
               end
               else
               begin
                    n := BuscaUmDadoSqlasInteger( 'Select FAT_CODIGO from FAT0000 '+
                                                  'WHERE FAT_CODIGO = '''+EditFatura.Text+''''+
                                                  ConcatSe(' AND ', DBINICIO.ExclusivoSql('RECEBER') ) );
                    if n<>0  then
                    begin
                         uteis.aviso('Nota Fiscal/Fatura já cadastrada!');
                         DataMovimento.CdsReceber.Cancel;
                         DbGridRecParc.Enabled := True;
                         Habilitabotoes;
                         BuscaFatura(2);
                         BuscaParcelas;
                         wIncluir := False;
                    end;
               end;
          end;
    end;
end;

procedure TFormContasReceber.BuscaFatura(wTipo:Integer);
var n : String;
begin
     fAbrindo := True;
     try
        if (wTipo = 1) then
        begin
             n := BuscaUmdadoSqlasString( 'SELECT MAX(FAT_CODIGO) FROM FAT0000 WHERE NF_NUM_NFE > 0 '+ConcatSe(' AND ', DBINICIO.ExclusivoSql('RECEBER') ) );
             wSeleciona := 'WHERE FAT.FAT_CODIGO = '+qStr(n) ;

             DataMovimento.CdsReceber.Close;
             DataMovimento.CdsReceber.CommandText := SQLDEF('RECEBER','SELECT FAT.* FROM FAT0000 FAT',wSeleciona,'FAT.FAT_CODIGO DESC','FAT.');
             DataMovimento.CdsReceber.Open;
             if (DataMovimento.CdsReceber.IsEmpty) then
             begin
                    DataMovimento.DsReceber.AutoEdit := False;
                    Limpa;
             end
             else
             begin
                  if (DataMovimento.CdsReceberFAT_EXCLUSAO.AsString = 'S') then
                  begin
                              DataMovimento.DsReceber.AutoEdit := False;
                              Desabilita_Objetos;
                              GrpExclusao.Visible := True;
                  end
                  else
                  begin
                              DataMovimento.DsReceber.AutoEdit := True;
                              Habilita_Objetos;
                              GrpExclusao.Visible := False;
                  end;
                  MostraDados;
                  BuscaParcelas;
             end
        end
        Else
        if (wTipo = 2) then
        begin
             DataMovimento.CdsReceber.Close;

             DataMovimento.CdsReceber.CommandText := SQLDEF('RECEBER','SELECT FAT.* FROM FAT0000 FAT','WHERE FAT.FAT_CODIGO = '''+EditFatura.Text+'''','FAT.FAT_CODIGO','FAT.');
             DataMovimento.CdsReceber.Open;
             if (not DataMovimento.CdsReceber.IsEmpty) then
             begin
                    if (DataMovimento.CdsReceberFAT_EXCLUSAO.AsString = 'S') then
                       begin
                          DataMovimento.DsReceber.AutoEdit := False;
                          Desabilita_Objetos;
                          GrpExclusao.Visible := True;
                       end
                    else
                       begin
                          DataMovimento.DsReceber.AutoEdit := True;
                          Habilita_Objetos;
                          GrpExclusao.Visible := False;
                       end;
                    MostraDados;
                    BuscaParcelas;
             end
             else
             begin
                    uteis.aviso('Código não cadastrado !');
                    EditFatura.Text := '';
                    Limpa;
                    CdsParcelasGrid.Close;
                    BuscaFatura(1);
                    MostraDados;
                    EditFatura.Text := strzero(DataMovimento.CdsReceberFAT_CODIGO.AsString,EditFatura.MaxLength);
             end;
        end;
       // FormContasReceber.AutoSize := True;
     finally
            fAbrindo := False;
     end;
end;

procedure TFormContasReceber.ExcluirFaturas;
begin
     ExecSql( 'UPDATE FAT_PC01 SET FPC_EXCLUSAO = ''S'',FPC_DATA_EXCLUSAO = '''+DataAmericana(DateToStr(now))+''',FPC_HORA_EXCLUSAO = '''+TimeToStr(Time)+''',FPC_MOTIVO_EXCLUSAO = '''+DBEdt_Motivo.Text+''',FPC_STATUS = ''Excluída'',FPC_SITPAG = ''X'',USU_CODIGO = '''+Edt_Usu_Cod.Text+''',USU_LOGIN = '''+Edt_Usu_Nome.Text+''''+
              'WHERE FAT_CODIGO = '''+EditFatura.Text+''''+
              ConcatSe(' AND ', DBINICIO.ExclusivoSql('RECEBER') ) );
     ExecSql( 'DELETE FROM FAT_IT02 WHERE FAT_CODIGO = '''+StrZero(EditFatura.Text ,6)+''''+
              ConcatSe(' AND ', DBINICIO.ExclusivoSql('RECEBER') ) );
end;

procedure TFormContasReceber.Limpa;
begin
    DBeCli_codigo.Text    := '';
    cbClientes.clear;
    DBeRep_codigo.Text    := '';
    CbRepresentantes.clear;
    DBeCct_Codigo.Text    := '';
    CbxCtaAnalise.clear;
    DBePcx_Codigo.Text    := '';
    CbxProjCx.clear;
    DBePcl_codigo.Text    := '';
    CbxParcela.clear;
    DBePed_codigo.Text    := '';
    DBeFat_comis1.Text    := '';
    DBeFat_comis2.Text    := '';
    DBeFat_comis3.Text    := '';
    DBFAT_VL_RET.Text     := '';
    DBeFat_vlNcomis.Text  := '';
    DbDtFAT_DTEMIS.Text   := '';
    DBeFat_vlfat.Text     := '';
    DBeFat_vl_liq.Text    := '';
    //
    DBEdit1.Text          := '';
    Edt_Usu_Cod.Text      := '';
    Edt_Usu_Nome.Text     := '';
    DBEdt_Motivo.Text     := '';
    DBCheckBox1.Checked   := False;
    if (GrpExclusao.Visible) then
       GrpExclusao.Visible := False;
end;

procedure TFormContasReceber.DBeCli_codigoKeyPress(Sender: tObject;
  var Key: Char);
begin
    if not (key in ['0'..'9',#8]) then
       Key := #0;
end;

procedure TFormContasReceber.BuscaParcelas;
Var
  wSql1,wSql2 : String;
begin

      {Busca somente os campos utilizados na grade , e nao precisa usar oncalcfield para apelido do banco}
      wSql1 := 'Select P1.FAT_REGISTRO,P1.FAT_CODIGO,P1.FPC_NUMER,P1.FPC_VLPARC,P1.FPC_VENCTO, FPC_TARIFA, ' + 
	             ' CASE WHEN (P1.FPC_STATUS = ''Agrupada'') THEN FPC_OBS WHEN (P1.FPC_EXCLUSAO = ''S'') THEN ''REGISTRO EXCLUÍDO: '' || COALESCE(P1.FPC_MOTIVO_EXCLUSAO, '''') ELSE P1.FPC_OBS END AS FPC_OBS,' +
		           ' P1.FPC_VLPAGO,P1.FPC_PAGTO,P1.FPC_STATUS,'+
               ' COALESCE(                                                       '+
               '         (SELECT first 1 nfse_num_danfse FROM NFSE_FATPC nsp        '+
               '         INNER JOIN NFSERVICO se ON (se.NFSE_CODIGO = nsp.NFSE_CODIGO) '+
               '         WHERE nsp.FAT_CODIGO = p1.fat_codigo                    '+
               '         AND nsp.FPC_NUMER = p1.FPC_NUMER                         '+
               '         AND nsp.EMP_CODIGO = p1.EMP_CODIGO                       '+
               '         AND NFSE_DTCANCELADO IS NULL                             '+
               '), ''Não'') as NFSE, FPC_VALR_SERVICOS,      '+
               'P1.FPC_PREVISAO,P1.FPC_SITPAG,P1.FPC_EXCLUSAO,P2.BAN_APELIDO,P1.FPC_DESCTO,P1.FPC_JUROS,p1.FPC_MULTA, ' +
               ' P1.PCXPF_REGISTRO, FPC_STATUS_REMESSA, p1.FPC_NPARCELAS, '+
               'FPG_DESCRICAO, FPC_VL_RET, FPC_ANTECIPACAO_CONCLUIDA ' +
               ' From FAT_PC01 P1 ';
      wSql2 := 'Left Join BAN0000 P2 ON (P2.BAN_CODIGO = P1.BAN_CODIGO) '+
      ' LEFT JOIN FORMA_PAGAMENTO FP ON (FP.FPG_REGISTRO = P1.FPG_REGISTRO ) ';
      CdsParcelasGrid.Close;
      qParcelasGrid.sql.Text := SQLDEF('RECEBER',wSql1 + wSql2,'Where P1.FAT_CODIGO = '''+EditFatura.Text+'''','P1.FAT_CODIGO,P1.FPC_NUMER','P1.');
      if dbInicio.isDesenvolvimento then
        CopyToclipboard(qParcelasGrid.sql.Text);
      CdsParcelasGrid.Open;


end;

procedure TFormContasReceber.spdRetClick(Sender: tObject);
begin

    if DataMovimento.CdsReceber.State in [dsBrowse] then
       DataMovimento.CdsReceber.Edit;
    PanVaria.Left := 188;
    PanVaria.Top  := 207;

    CalcRetencao;

    Grp00.Enabled     := False;
    //Panel1.Enabled    := False;
    //Pn_Botoes.Enabled := False;
    PgParcelas.Enabled:= False;
    PanVaria.Visible  := True;
    DBedt_BASE_ISS.SetFocus;
end;

procedure TFormContasReceber.SpeedButton5Click(Sender: tObject);
begin
    BtnCalcular.Click;
    PanVaria.Visible  := False;
    Grp00.Enabled     := True;
    //Panel1.Enabled    := True;
    //Pn_Botoes.Enabled := True;
    PgParcelas.Enabled:= True;
    if (DBFAT_VL_RET.Field.AsCurrency > 0) then
      uteis.aviso('Para atualizar as parcelas com a retenção é necessário fazer o reparcelamento');
end;

procedure TFormContasReceber.DBedt_BASE_INSSExit(Sender: tObject);
begin
    if DataMovimento.CdsReceber.State in [dsInsert,dsEdit] then
       begin
           CalcRetencao;
           if DBedt_BASE_INSS.Field.Value >=0 then
              begin
                  if DataMovimento.CdsReceber.State in [dsInsert] then
                     begin
                         Localizar_Tributacao_Ativa;
                         DataMovimento.CdsReceberFAT_INSS_RET.AsCurrency  := (DBedt_BASE_INSS.Field.Value * DataMovimento2.sqlaux2.FieldByName('TRB_INSS_RET').AsCurrency)/100;
                         DataMovimento.CdsReceberFAT_INSS_PERC.AsCurrency := DataMovimento2.sqlaux2.FieldByName('TRB_INSS_RET').AsCurrency;
                     end;
                      DBEVL_Total_Ret.Field.AsCurrency:= (DBEdt_IRPJ_RET.Field.AsCurrency + DBEdt_PIS_RET.Field.AsCurrency + DBEdt_COFINS_RET.field.AsCurrency + DBEdt_CONTSOCIAL_RET.Field.AsCurrency
                          + DBEdt_INSS_RET.Field.AsCurrency + DBEdt_ISS_RET.Field.AsCurrency );
              end;
       end;
end;

Function TFormContasReceber.Retorna_Cod_Representante(sCodCli:String):String;
begin
     Result := strZero( BuscaUmDadoSqlAsString( 'select REP_CODIGO from CLI0000 '+
                                       'where CLI_CODIGO = '''+sCodCli+''''+
                                       ConcatSe( ' and ', dbInicio.ExclusivoSql( 'CLIENTES') ) ), 3 );
end;


procedure TFormContasReceber.Localizar_Tributacao_Ativa;
begin
   FrmMenu.RwSqlGeralCmd.MontarSql      := False;
   FrmMenu.RwSqlGeralCmd.ResetaCampos   := True;
   FrmMenu.RwSqlGeralCmd.CodigoEmpresa  := StrToInt(dbInicio.Empresa.EMP_CODIGO);
   FrmMenu.RwSqlGeralCmd.MultiEmpresa   := True;
   FrmMenu.RwSqlGeralCmd.TipoSql        := Consultar;
   FrmMenu.RwSqlGeralCmd.Apelido        := 'T1.';
   FrmMenu.RwSqlGeralCmd.Compartilhar   := 'TABELAS';
   FrmMenu.RwSqlGeralCmd.Campos         := 'T1.*';
   FrmMenu.RwSqlGeralCmd.Tabela         := 'TRIB0000';
   FrmMenu.RwSqlGeralCmd.Condicao       := 'T1.TRB_ATIVO = ''S''';
   FrmMenu.RwSqlGeralCmd.CamposOrdernar := '';
   FrmMenu.RwSqlGeralCmd.MontarSql      := True;
   //
   DataMovimento2.sqlaux2.Close;
   DataMovimento2.sqlaux2.sql.text := FrmMenu.RwSqlGeralCmd.ComandoSql;
   DataMovimento2.sqlaux2.open;
end;

procedure TFormContasReceber.miAbrirNFSEClick(Sender: TObject);
begin
  inherited;
  if not CdsParcelasGrid.IsEmpty then
  begin

       OpenAux(' select nsp.nfse_codigo from NFSE_FATPC nsp                          '+
                '  INNER JOIN NFSERVICO se ON (se.NFSE_CODIGO = nsp.NFSE_CODIGO)       '+
                ' where FPC_NUMER = '+ QuotedStr(CdsParcelasGrid.FieldByName('FPC_NUMER').AsString)+
                ' and nsp.fat_codigo  = '+ QuotedStr(EditFatura.Text)+
                ' and nsp.nfse_serie = ' + QuotedStr(EditdbSerie.Text)+
                ' and nsp.emp_codigo = ' + QuotedStr(DBInicio.Empresa.EMP_CODIGO) +
                ' and NFSE_DTCANCELADO IS NULL ');
       if ((qAux.FieldByName('nfse_codigo').IsNull) or (qAux.FieldByName('nfse_codigo').AsInteger = 0 )) then
          GeraException('Ainda não foi gerada RPS/NFSE para a parcela');

       FrmNotaFiscalServico := TFrmNotaFiscalServico.Create(Application);
       FrmNotaFiscalServico.BuscaNotaFiscal(qAux.FieldByName('nfse_codigo').AsInteger);
       FrmNotaFiscalServico.ShowModal;
  end;

end;

procedure TFormContasReceber.MostraDados;
begin

    if (wIncluir = False) then
       EditFatura.Text := strzero(DataMovimento.CdsReceberFAT_CODIGO.AsString,EditFatura.MaxLength);
    AtivaRetencao;

end;

procedure TFormContasReceber.DBeCct_CodigoExit(Sender: tObject);
begin
    if (ActiveControl <> Nil) and (ActiveControl.Name <> 'Bit_Cancelar') and (ActiveControl.Name <> 'Bit_Sair') then
    begin
         if (StrZero(DBeCct_Codigo.Text,3)<>'000') THEN
         begin
             DataMovimento.CdsReceberCCT_CODIGO.AsString  :=StrZero(DBeCct_Codigo.Text,3);
             if CbxCtaAnalise.idRetorno='' then
                GeraException('Conta não localizada com este código!');
         end;
    end;
end;

procedure TFormContasReceber.DBePcx_CodigoExit(Sender: tObject);
begin
     if (ActiveControl <> Nil) and (ActiveControl.Name <> 'Bit_Cancelar') and (ActiveControl.Name <> 'Bit_Sair') then
     begin
          if (StrZero(DBePcx_Codigo.Text,3)<>'000') THEN
          begin
              DataMovimento.CdsReceberPCX_CODIGO.AsString:=StrZero(DBePcx_Codigo.Text,3);
              if CbxProjCx.idRetorno='' then
                 GeraException('C.Custo não localizado om este código!');
          end;
     end;
end;

procedure TFormContasReceber.CalcRetencao;
begin
    if (DBeFat_vlfat.Field.Value >= 0) then
       begin
           if DataMovimento.CdsReceber.State in [dsInsert] then
                     begin
                         if (DBEdt_BASE_ISS.Field.AsCurrency = 0) then
                             DataMovimento.CdsReceberFAT_BASE_ISS.AsCurrency    := DBeFat_VlFat.Field.AsCurrency;
                         {Grava as porcentagens utilizandas em cada Retencao}
                         DataMovimento2.sqlaux2.Close;
                         DataMovimento2.sqlaux2.sql.text := SQLDEF('RECEBER','Select * from TRIB0000','','TRB_CODIGO','');
                         DataMovimento2.sqlaux2.Open;

                         DataMovimento.CdsReceberFAT_IRPJ_PERC.AsCurrency       := DataMovimento2.sqlaux2.FieldByName('TRB_IRPJ_RET').AsCurrency;
                         DataMovimento.CdsReceberFAT_PIS_PERC.AsCurrency        := DataMovimento2.sqlaux2.FieldByName('TRB_PIS_RET').AsCurrency;
                         DataMovimento.CdsReceberFAT_COFINS_PERC.AsCurrency     := DataMovimento2.sqlaux2.FieldByName('TRB_COFINS_RET').AsCurrency;
                         DataMovimento.CdsReceberFAT_CONTSOCIAL_PERC.AsCurrency := DataMovimento2.sqlaux2.FieldByName('TRB_CONTSOCIAL_RET').AsCurrency;
                         {Calcula}
                         DataMovimento.CdsReceberFAT_IRPJ_RET.AsCurrency        := (DBEdt_BASE_ISS.Field.Value * DataMovimento2.sqlaux2.FieldByName('TRB_IRPJ_RET').AsCurrency)/100;
                         DataMovimento.CdsReceberFAT_PIS_RET.AsCurrency         := (DBEdt_BASE_ISS.Field.Value * DataMovimento2.sqlaux2.FieldByName('TRB_PIS_RET').AsCurrency)/100;
                         DataMovimento.CdsReceberFAT_COFINS_RET.AsCurrency      := (DBEdt_BASE_ISS.Field.Value * DataMovimento2.sqlaux2.FieldByName('TRB_COFINS_RET').AsCurrency)/100;
                         DataMovimento.CdsReceberFAT_CONTSOCIAL_RET.AsCurrency  := (DBEdt_BASE_ISS.Field.Value * DataMovimento2.sqlaux2.FieldByName('TRB_CONTSOCIAL_RET').AsCurrency)/100;
                         
                     end;
       end;
end;

procedure TFormContasReceber.cbClientesButtonClick(Sender: TObject);
var
  tcr: tFrmPesquisaClientes;
begin
  inherited;
  tcr:= tFrmPesquisaClientes.Create(self);
  try
      tcr.ShowModal;
      if tcr.modalresult = mrok then
         cbClientes.idRetorno := tcr.IDRetorno;
  finally
       FreeAndNil(tcr);
  end;
end;

procedure TFormContasReceber.cbClientesSelect(Sender: TObject);
begin
  inherited;
     if DataMovimento.CdsReceber.State<>dsBrowse  then
     begin
          if cbClientes.idRetorno<>'' then
             CbRepresentantes.idRetorno := Retorna_Cod_Representante(cbClientes.idRetorno);
     end;
end;

procedure TFormContasReceber.DBEdt_BASE_ISSExit(Sender: tObject);
begin
    CalcRetencao;
    IF not (DataMovimento.CdsReceber.State IN dsEditModes) then
      DataMovimento.CdsReceber.Edit;
    DBEVL_Total_Ret.Field.AsCurrency:= (DBEdt_IRPJ_RET.Field.AsCurrency + DBEdt_PIS_RET.Field.AsCurrency + DBEdt_COFINS_RET.field.AsCurrency + DBEdt_CONTSOCIAL_RET.Field.AsCurrency
    + DBEdt_INSS_RET.Field.AsCurrency + DBEdt_ISS_RET.Field.AsCurrency );
end;

procedure TFormContasReceber.DBeFat_vlfatExit(Sender: tObject);
VAR N : INTEGER ;
begin
   if (DBeFat_vl_liq.Field.AsCurrency = 0) then
      DBeFat_vl_liq.Field.AsCurrency := DBeFat_vlfat.Field.AsCurrency; 
   if DataMovimento.CdsReceber.State in [dsInsert,dsEdit] then
   begin
         CalcRetencao;
         DataMovimento.CdsReceberFAT_VL_RET.AsCurrency := (DBEdt_IRPJ_RET.Field.AsCurrency + DBEdt_PIS_RET.Field.AsCurrency + DBEdt_COFINS_RET.field.AsCurrency + DBEdt_CONTSOCIAL_RET.Field.AsCurrency + DBEdt_INSS_RET.Field.AsCurrency);
   end;
   if (DataMovimento.CdsReceber.State in [dsEdit]) and (wIncluir = False) then
   begin
         if (not (wMudouTotal = DataMovimento.CdsReceberFAT_VLFAT.AsCurrency)) then
         begin
               if uteis.confirmacao ( 'Valor da fatura foi mudado. Deseja ajustar o valor da(s) parcela(s) automaticamente.') = mrYes then
               begin
                    N := buscaumdadosqlasinteger ( 'Select cast(count(*) as integer) as conta from    FAT_PC01 '+
                                                   'where FAT_CODIGO = '''+EditFatura.Text+''' and FPC_SITPAG= ''L'''+
                                                   ConcatSe(' AND ', DBINICIO.ExclusivoSql('RECEBER') ) );
                    if n=0 then
                       Alterar_Valor_Parcela(EditFatura.Text,DataMovimento.CdsReceberPCL_CODIGO.AsString,DBeFat_vlfat.Field.AsCurrency-DataMovimento.CdsReceberFAT_VL_RET.AsCurrency)
                    else
                        uteis.aviso('Não é possível alterar o valor. Existem parcelas líquidada(s) !');
               end
               else
               begin
                  DataMovimento.CdsReceber.Cancel;
                  HabilitaBotoes;
                  DBeFat_vlfat.SetFocus;
               end;
         end;
         BuscaParcelas;
   end;
end;


procedure TFormContasReceber.AtivaRetencao;
begin
    spdRet.Visible := True ;  
end;

procedure TFormContasReceber.AtualizaClienteParcelas(sFat, sCliente: String);
begin
  DBInicio.ExecSql( 'UPDATE FAT_PC01 set' +
                        ' cli_codigo = '+QuotedStr(sCliente)+
                        ' WHERE fat_codigo = '+QuotedStr(sFat)+
                         ConcatSe(' AND ', DBINICIO.ExclusivoSql('RECEBER') ) );

end;

procedure TFormContasReceber.BtnCalcularClick(Sender: tObject);
begin
    if (DataMovimento.CdsReceber.State in [dsBrowse]) then
      DataMovimento.CdsReceber.Edit;
    DataMovimento.CdsReceberFAT_IRPJ_RET.AsCurrency       := (DBEdt_BASE_ISS.Field.AsCurrency  * DBEdt_IRPJ_PERC.Field.AsCurrency)/100;
    DataMovimento.CdsReceberFAT_PIS_RET.AsCurrency        := (DBEdt_BASE_ISS.Field.AsCurrency  * DBEdt_PIS_PERC.Field.AsCurrency)/100;
    DataMovimento.CdsReceberFAT_COFINS_RET.AsCurrency     := (DBEdt_BASE_ISS.Field.AsCurrency  * DBEdt_COFINS_PER.Field.AsCurrency)/100;
    DataMovimento.CdsReceberFAT_CONTSOCIAL_RET.AsCurrency := (DBEdt_BASE_ISS.Field.AsCurrency  * DBEdt_CONTSOCIAL_PERC.Field.AsCurrency)/100;
    DataMovimento.CdsReceberFAT_INSS_RET.AsCurrency       := (DBedt_BASE_INSS.Field.AsCurrency * DBEdt_INSS_PERC.Field.AsCurrency)/100;
    DataMovimento.CdsReceberFAT_ISS_RET.AsCurrency        := (DBedt_BASE_ISS.Field.AsCurrency  * DBEdt_ISS_PERC.Field.AsCurrency)/100;
    DataMovimento.CdsReceberFAT_VL_RET.AsCurrency         := (DBEdt_IRPJ_RET.Field.AsCurrency + DBEdt_PIS_RET.Field.AsCurrency + DBEdt_COFINS_RET.field.AsCurrency +
                                                                DBEdt_CONTSOCIAL_RET.Field.AsCurrency + DBEdt_INSS_RET.Field.AsCurrency + DataMovimento.CdsReceberFAT_ISS_RET.AsCurrency);
    DataMovimento.CdsReceber.ApplyUpdates(0);
end;

procedure TFormContasReceber.DBeFat_vlfatEnter(Sender: tObject);
begin
    if (DataMovimento.CdsReceber.State in [dsEdit]) and (wIncluir = False) then
       wMudouTotal := DataMovimento.CdsReceberFAT_VLFAT.AsCurrency;
end;

procedure TFormContasReceber.Desabilita_Objetos;
begin

    if (wIncluir = False) then
       begin
          CbClientes.Enabled    := False;
          DBeCli_codigo.Enabled := False;
       end
    else
       begin
          CbClientes.Enabled    := True;
          DBeCli_codigo.Enabled := True;
       end;
    CbRepresentantes.Enabled := False;
    CbxCtaAnalise.Enabled    := False;
    CbxProjCx.Enabled        := False;
    CbxParcela.Enabled       := False;
end;

procedure TFormContasReceber.Habilita_Objetos;
begin

    if (wIncluir = False) then
       begin
          CbClientes.Enabled    := False;
          DBeCli_codigo.Enabled := False;
       end
    else
       begin
          CbClientes.Enabled    := True;
          DBeCli_codigo.Enabled := True;
       end;
    CbRepresentantes.Enabled := True;
    CbxCtaAnalise.Enabled    := True;
    CbxProjCx.Enabled        := True;
    CbxParcela.Enabled       := True;
end;


procedure TFormContasReceber.ExcluirParcelasReparceladas(const sNumFatura: String);
begin
      ExecSql('DELETE FROM FAT_PC01 WHERE FAT_CODIGO = '''+sNumFatura+''''+ConcatSe(' AND ', DBINICIO.ExclusivoSql('RECEBER') ) );
end;


procedure TFormContasReceber.Excluir_somente_Inclusao(const sNumFatura: String);
begin
     ExecSql('DELETE FROM FAT0000 WHERE FAT_CODIGO = '''+sNumFatura+''''+ConcatSe(' AND ', DBINICIO.ExclusivoSql('RECEBER') ) );
     ExecSql('DELETE FROM FAT_PC01 WHERE FAT_CODIGO = '''+sNumFatura+''''+ConcatSe(' AND ', DBINICIO.ExclusivoSql('RECEBER') ) );
end;

procedure TFormContasReceber.Alterar_Valor_Parcela(const sFatura,
  sCodParcela: String; cValorFatura: Currency);
Var
  X: Integer;
begin
     Cdesconto     := 0;
     iQtdeParcelas := 0;
     {Busca a Qtde de Parcelas}
     openaux ( 'SELECT PCL_DESCTO, PCL_NPARCELAS FROM PCL0000 '+
               'WHERE PCL_CODIGO = '''+sCodParcela+''''+
               ConcatSe(' AND ', DBINICIO.ExclusivoSql('TABELAS') ) );

     if (not qAux.IsEmpty) then
     begin
          Cdesconto     := qAux.FieldByName('PCL_DESCTO').AsCurrency;
          iQtdeParcelas := qAux.FieldByName('PCL_NPARCELAS').AsInteger
     end
     else
     begin
          Cdesconto     := 0;
          iQtdeParcelas := 1;
     end;
     qAux.Close;

     {Grava o Reparcelamento}
     For X := 1 to iQtdeParcelas do
     begin
          cValorParcela := 0;
          if (iQtdeParcelas = 1) then
             wSeleciona := 'WHERE FAT_CODIGO = '''+sFatura+''''
          else
             wSeleciona := 'WHERE FAT_CODIGO = '''+sFatura+''' AND FPC_NUMER = '''+StrZero(IntToStr(X),2)+'''';

          {Retorna Valor do Reparcelamento}
          cValorParcela := Parcelar_Valor(X, iQtdeParcelas, cValorFatura, Cdesconto);
          // Parcela_Valor(iNumParcela,iNParcelas:Integer;cValor,Cdescto:Real):Real;
          ExecSql( 'UPDATE FAT_PC01 SET FPC_VLPARC = '''+ValorAmericano(FloatToStr(cValorParcela))+''''+wSeleciona+ ConcatSe(' and ', dbInicio.ExclusivoSql('receber')));
     end;
end;

procedure TFormContasReceber.Busca_Dados_Parcela(const sFatura,
  sCodParcela: String; const iQtdeParcela: Integer);
begin
     openaux( 'SELECT BAN_CODIGO,  FPC_COBTIPO, FPC_TIPODOC, BAN_COD_APELIDO FROM FAT_PC01 '+
              'WHERE FAT_CODIGO = '''+sFatura+''''+
              ConcatSe(' and ', dbInicio.ExclusivoSql('receber')));

     if  qAux.RecordCount > 0 then  // banco de dados vazio
     begin
     if ( BuscaUmdadoSqlAsInteger( 'Select cast(count(*) as integer) as conta from    FAT_PC01 T1 '+'WHERE FAT_CODIGO = '''+sFatura+'''' ) = 1) then
     begin
           wBan_codigo   := qAux.FieldByName('BAN_CODIGO').AsString;
           wTip_Cobranca := qAux.FieldByName('FPC_COBTIPO').AsString;
           wTip_Docuto   := qAux.FieldByName('FPC_TIPODOC').AsString;
           wBan_codigo_apelido := qAux.FieldByName('BAN_COD_APELIDO').AsString;
     end
     else
     begin
          openaux( 'SELECT BAN_CODIGO,  FPC_COBTIPO, FPC_TIPODOC, BAN_COD_APELIDO FROM FAT_PC01 '+
                   'where FAT_CODIGO = '+qStr(sFatura)+iif(iQtdeParcela=1,'',' AND FPC_NUMER = '+qStr(sCodParcela))+
                   ConcatSe(' and ', dbInicio.ExclusivoSql('receber')));
          if (not qAux.IsEmpty) then
          begin
               wBan_codigo   := qAux.FieldByName('BAN_CODIGO').AsString;
               wTip_Cobranca := qAux.FieldByName('FPC_COBTIPO').AsString;
               wTip_Docuto   := qAux.FieldByName('FPC_TIPODOC').AsString;
               wBan_codigo_apelido := qAux.FieldByName('BAN_COD_APELIDO').AsString;
          end
          else
          begin
               {Busca o primeiro Lancamento da Alteraçao}
               openaux( 'SELECT BAN_CODIGO,  FPC_COBTIPO, FPC_TIPODOC, BAN_COD_APELIDO FROM FAT_PC01 '+
                        'where FAT_CODIGO = '+qStr(sFatura)+iif(iQtdeParcela=1,'',' AND FPC_NUMER = '+qStr('01'))+
                        ConcatSe(' and ', dbInicio.ExclusivoSql('receber')));
               if (not qAux.IsEmpty) then
               begin
                       wBan_codigo   := qAux.FieldByName('BAN_CODIGO').AsString;
                       wTip_Cobranca := qAux.FieldByName('FPC_COBTIPO').AsString;
                       wTip_Docuto   := qAux.FieldByName('FPC_TIPODOC').AsString;
                       wBan_codigo_apelido := qAux.FieldByName('BAN_COD_APELIDO').AsString;
               end
               else
               begin
                 {Busca o Codigo da Carteira definido no Parametro para deixar como default}
                 wBan_Codigo   := dbInicio.Empresa.wCod_Carteira;
                 wTip_Cobranca := dbInicio.Empresa.wTp_Cobranca;
                 wTip_Docuto   := dbInicio.Empresa.wTp_Docuto;
                 if wBan_codigo <> '' then
                    wBan_codigo_apelido := dbInicio.BuscaUmDadoSqlAsString( 'SELECT BAN_COD_APELIDO '+
                                                                            'FROM BAN0000 '+
                                                                            'WHERE BAN_CODIGO = '+qStr( wBan_codigo )+' and emp_codigo='+dbinicio.empresa.EMP_CODIGO);
               end;
          end;
     end;
     end;
end;

procedure TFormContasReceber.CbClientesClick(Sender: tObject);
begin
    if DataMovimento.CdsReceber.State = DsBrowse then
       DataMovimento.CdsReceber.Edit;
end;

procedure TFormContasReceber.CbClientes2Select(Sender: tObject);
begin
     if DataMovimento.CdsReceber.State<>dsBrowse  then
     begin
          if cbClientes.idRetorno<>'' then
             CbRepresentantes.idRetorno := Retorna_Cod_Representante(cbClientes.idRetorno);
     end;
end;

procedure TFormContasReceber.CbxParcelaSelect(Sender: tObject);
begin

     // isto é ncessário pois o agrupamento referencia Rec0003 que referencia Rec0001,
     // que faz estas validações no DataMovimento.CdsReceber....
     if formContasReceberAgrupa <> nil then
      exit;

     if DataMovimento.CdsReceber.State<>dsBrowse  then
     begin
         if CbxParcela.idRetorno<>'' then
         begin
              Localizar_Dados_Parcela(CbxParcela.idRetorno);

              if (EditFatura.Text = '') then
              begin
                   uteis.aviso('Entre com Nº da fatura');
                   EditFatura.SetFocus;
              end
              else
              if (DbeCli_Codigo.Text = '') Then
              begin
                   uteis.aviso('Digite o Código do Cliente');
                   DbeCli_Codigo.SetFocus;
              end
              else
              if (DbDtFat_DtEmis.text = '  /  /    ') then
              begin
                   uteis.aviso('Digite Data de Emissão!');
                   DbDtFat_DtEmis.SetFocus;
              end
              else
              if (DbeFat_VlFat.Field.IsNull)  then
              begin
                   uteis.aviso('Digite o Valor Faturado');
                   DbeFat_VlFat.SetFocus;
              end
              else
              begin
                   PgParcelas.ActivePage := TShParcelas;
                   wPcl_codigo := CbxParcela.idRetorno;
                   if not CdsParcelasGrid.IsEmpty then
                   begin
                        if uteis.confirmacao ( ('Essa Conta já foi parcelada.'+#13#10+'Deseja refazer o parcelamento?'))= idYes then
                        begin
                             AplicaParcelamento;
                             BuscaParcelas;
                             DbGridRecParc.Enabled := True;
                             DbGridRecParc.SetFocus;
                        end;
                   end
                   else
                   begin
                        AplicaParcelamento;
                        BuscaParcelas;
                        DbGridRecParc.Enabled := True;
                        DbGridRecParc.SetFocus;
                   end;

              end;

         end;
     end;
end;

procedure TFormContasReceber.Localizar_Dados_Parcela(const sCodParcela:String);
begin
   FrmMenu.RwSqlGeralCmd.MontarSql      := False;
   FrmMenu.RwSqlGeralCmd.ResetaCampos   := True;
   FrmMenu.RwSqlGeralCmd.CodigoEmpresa  := StrToInt(dbInicio.Empresa.EMP_CODIGO);
   FrmMenu.RwSqlGeralCmd.MultiEmpresa   := True;
   FrmMenu.RwSqlGeralCmd.TipoSql        := Consultar;
   FrmMenu.RwSqlGeralCmd.Apelido        := 'T1.';
   FrmMenu.RwSqlGeralCmd.Compartilhar   := 'TABELAS';
   FrmMenu.RwSqlGeralCmd.Campos         := 'T1.*';
   FrmMenu.RwSqlGeralCmd.Tabela         := 'PCL0000';
   FrmMenu.RwSqlGeralCmd.Condicao       := 'T1.PCL_CODIGO = '''+sCodParcela+'''';
   FrmMenu.RwSqlGeralCmd.CamposOrdernar := 'T1.PCL_CODIGO';
   FrmMenu.RwSqlGeralCmd.MontarSql      := True;
   //
   DataMovimento2.sqlaux.Close;
   DataMovimento2.sqlaux.sql.text := FrmMenu.RwSqlGeralCmd.ComandoSql;
   DataMovimento2.sqlaux.open;

end;


procedure TFormContasReceber.DBePcl_codigoExit(Sender: tObject);
begin
     if (ActiveControl <> Nil) and (ActiveControl.Name <> 'Bit_Cancelar') and (ActiveControl.Name <> 'Bit_Sair') then
     begin
          if (StrZero(DBePcl_codigo.Text,3)<>'000') THEN
          begin
              DataMovimento.CdsReceberPCL_CODIGO.AsString:=StrZero(DBePcl_codigo.Text,3);
              if CbxParcela.idRetorno='' then
                 GeraException('Parcelamento não localizado om este código!');
          end;
     end;
end;

procedure TFormContasReceber.FormCreate(Sender: tObject);
begin
  inherited;
  sCodRetVelho := '';
  sCodRetNovo  := '';
  self.height := 635;
  self.width := 1089;
  PainelOpcao.left := 392;
  PainelOpcao.Top := 56;
//  bit_sair.Left := bit_cancelar.Left;
  pLerEstadoPesquisa:=False;
  btnServico.Visible :=   DBInicio.NFSE.ATIVA_NFSE;
end;

procedure TFormContasReceber.FormDestroy(Sender: TObject);
begin
  inherited;
  FormContasReceber := Nil;
end;



procedure TFormContasReceber.Mostrar_Parcelas;
begin
     if DataMovimento.CdsReceber.State in [dsBrowse] then
     begin
          FormContasRecParcelas :=TFormContasRecParcelas.Create(Application);
          try
            FormContasRecParcelas.EdCliente.Text := CbClientes.Text;
            FormContasRecParcelas.ShowModal;
          finally
            FreeAndNil(FormContasRecParcelas);
            if (wIncluir = False) then
               BuscaFatura(2);
          end;
     end;
end;

procedure TFormContasReceber.ParcelarRecB(wValor, wValor1Parcela: Double; wBanco, wCobranca, wTpDocuto, wCct_codigo, wPcx_codigo, wFatCodigo, wPcl_Codigo, wBancoApelido: String;
  var wDataE: Tdatetime;   FormaPagamento : integer = 0);
var

   wdia,wmes,wano,wdiaAux:string;
   wvencto  : TDateTime;
   waux1    : Double;

   dValorEntrada, dTotal  : Double;
   wintervalo,wnumerParce, iNumeroParcelaPrazo: Integer;
///
   function numeroParcelasAlterado(i:Integer):Integer;
   var
      value:string;
   begin
        try
           value := '0';
           while (StrToInt(value) < 1) do
                 value := InputBox('Confirma o Número de Parcelas ?', 'Número de Parcelas:', IntToStr(i));
        except
             numeroParcelasAlterado(i);
        end;
        Result := StrToInt(value);
   end;
///

Begin

      {    atenção ***

           PROCEDIMENTO ParcelarRecB MANTIDO PARA COMPATIBILIDADE ADJUTOR.OLD

           VERSÃO NOVA EM BaseDbFaturamentoForm.ParcelarRec

           MIGRAR C.RECEBER OPORTUNAMENTE, VERIFICAR DIFERENÇAS

           ADR 08/2016      }

    wValor := Uteis.RoundTo (wValor, -2);
    dValorEntrada := 0;

    iNumeroParcelaPrazo := 0;

    if (wValor1Parcela > 0) then
        wValor := wValor - wValor1Parcela;

    dTotal := wValor;

    DataCadastros.CdsParcelas.Close;
    DataCadastros.CdsParcelas.CommandText := SQLDEF('TABELAS','SELECT * FROM PCL0000','where PCL_CODIGO = '''+wPCL_CODIGO+'''','PCL_CODIGO','');
    DataCadastros.CdsParcelas.Open;

    if (DataCadastros.CdsParcelas.IsEmpty) then
       uteis.erro  (pchar('O prazo do Pedido esta em branco ou errado no cadastro. Não confirme, estorne este faturamento, volte ao pedido e coloque o prazo.'))
    else
    begin
         if (dbInicio.empresa.WPMT_FAT_CONFIRMA_PARCELA) then
         begin
              iNumeroParcelaPrazo := numeroParcelasAlterado(DataCadastros.CdsParcelasPCL_NPARCELAS.AsInteger);
              while MessageDlg(Pchar('Confirma as parcelas em R$ '+FormatFloat('###,###,##.00',wValor/iNumeroParcelaPrazo)), mtConfirmation,[mbYes, mbNo], 0) <> 6  do
                    iNumeroParcelaPrazo := numeroParcelasAlterado(iNumeroParcelaPrazo);
         end
         else
             iNumeroParcelaPrazo :=  DataCadastros.CdsParcelasPCL_NPARCELAS.AsInteger;

         //Verifica o Tipo F = Fixo V = Variavel
         if (DataCadastros.CdsParcelasPCL_TIPO.AsString = 'F') then //Fixo
         begin

                 if DataCadastros.CdsParcelasPCL_DESCTO.AsCurrency <> 0 then
                    wvalor := int(100*(wvalor-((wvalor*DataCadastros.CdsParcelasPCL_DESCTO.AsCurrency)/100)))/100;
                 {Guarda valor já c/ descto }


                 //Verifica % entrada
                 if (DataCadastros.CdsParcelasPCL_PERCENTUAL_PRIMEIRA_P.AsCurrency > 0) then
                 begin
                       dValorEntrada := wvalor * (DataCadastros.CdsParcelasPCL_PERCENTUAL_PRIMEIRA_P.AsCurrency/100);
                       wvalor := wvalor - dValorEntrada;
                 end;
                 wvalor:=int(100*(wvalor/(iNumeroParcelaPrazo-(IIF(dValorEntrada > 0,IIF(iNumeroParcelaPrazo > 1,1,0),0 )))))/100;


                 // se pedido sem prazo vai dar erro e pular para exceção
                 //dTmp:=int(100*(wvalor/(DataCadastros.CdsParcelasPCL_NPARCELAS.AsInteger-(IIF(dValorEntrada > 0,IIF(DataCadastros.CdsParcelasPCL_NPARCELAS.AsInteger > 1,1,0),0 )))))/100;
                 // wdescto = Vl total da nota; wvalor = vl da parcela c/ 2 casas
                 //waux1:= (wdescto-(dTmp*(DataCadastros.CdsParcelasPCL_NPARCELAS.AsInteger-(IIF(dValorEntrada > 0,IIF(DataCadastros.CdsParcelasPCL_NPARCELAS.AsInteger > 1,1,0),0 )))))*100;
                 {transforma inteiro p/ comparar depois}
                 //waux1:= StrToInt(FloatToStrf(waux1,ffFixed,1,0));
                 waux1 := (dTotal - (((wvalor * (iNumeroParcelaPrazo-(IIF(dValorEntrada > 0,IIF(iNumeroParcelaPrazo > 1,1,0),0 ))))+dValorEntrada)));

                 //Guardando diferença em centavos e transformando-o em inteiro
                 // wdescto = Vl total da nota; wvalor = vl da parcela c/ 2 casas
                 {transforma inteiro p/ comparar depois}
                 //
                 wnumerParce := 0;
                 // Nº de dias entre parcelas
                 wintervalo := DataCadastros.CdsParcelasPCL_DIASENTREP.Value;
                 //Ate Nº requerido de parcelas
                 while wnumerParce <> iNumeroParcelaPrazo do
                 begin
                       wnumerParce := wnumerParce + 1;
                       //se 1ª parcela
                       if wnumerParce = 1 then
                       begin
                              wVencto := wDataE;
                              //Vencimento da 1ª
                              wVencto := wVencto + (DataCadastros.CdsParcelasPCL_CARENC_PRI.Value);
                       end
                       else  //Se não for a 1ª parcela
                       begin
                            //Caso não manter-se dia do vencimento
                            if DataCadastros.CdsParcelasPCL_MANTERDIA.AsString = 'N' then
                               wVencto := wVencto + wIntervalo
                            else //Caso manter dia do vencimento
                            begin
                                 //Desmenbra data da variável
                                 wDia:= FormatDateTime('dd',wVencto);
                                 wDiaAux := Wdia;
                                 wMes:= FormatDateTime('mm',wVencto);
                                 wAno:= FormatDateTime('yyyy',wVencto);
                                 // Incrementa meses da data Ex: se interv 60 = 2 meses
                                 wMes := IntToStr(StrToInt(wMes) + (wIntervalo div 30));
                                 //IFs que verifican validade de datas
                                 IF (WMes = '2') and ((WDia = '29') or (WDia = '30') or (WDia = '31')) then
                                    WDia := '28';

                                 IF (WMes = '4') and (WDia = '31') then
                                    WDia := '30';

                                 IF (WMes = '6') and (WDia = '31') then
                                    WDia := '30';

                                 IF (WMes = '9') and (WDia = '31') then
                                    WDia := '30';

                                 IF (WMes = '11') and (WDia = '31') then
                                    WDia := '30';

                                 // se mes passar do ano corrente ou passar um ano, ou mais
                                 if (((StrToInt(WMes) div 12)=1)and((StrToInt(WMes) mod 12)>0)) or ((StrToInt(WMes) div 12)>1)   then
                                 Begin
                                      //se sobra meses
                                      if (StrToInt(WMes) mod 12)>0 then
                                      begin
                                           WAno := IntToStr(StrToInt(WAno)+ StrToInt(WMes) div 12);
                                           // a sobra da divisão equivale ao mes Ex:14 div 12 = fevereiro
                                           WMes := StrZero(IntToStr(StrToInt(WMes) mod 12),2);
                                      end
                                      else //Ex:24 meses div por 12 = 2anos  / -1 porque não passou de dezembro
                                           WAno := IntToStr(StrToInt(WAno)+ (StrToInt(WMes) div 12)-1);
                                 end;
                                 // Passa vencto correto
                                 WVencto := StrToDateTime(WDia+'/'+StrZero(WMes,2)+'/'+WAno);
                                 WDia    := WDiaAux;
                            end;
                       end;
                       if (iNumeroParcelaPrazo=1) then
                            wSeleciona := 'WHERE F1.FAT_CODIGO = '''+wFatCodigo+''''
                       else
                            wSeleciona := 'WHERE F1.FAT_CODIGO = '''+wFatCodigo+''' AND F1.FPC_NUMER = '''+StrZero(IntToStr(WNumerParce),2)+'''';

                       wSql1 := 'Select F1.*,B1.BAN_APELIDO from FAT_PC01 F1 ';
                       wSql2 := 'left join BAN0000 B1 on (F1.BAN_CODIGO = B1.BAN_CODIGO) ';
                       DataMovimento.CdsRecParce.Close;
                       DataMovimento.CdsRecParce.CommandText := SQLDEF('RECEBER',wSql1+wSql2,wSeleciona,'F1.FAT_CODIGO','F1.');
                       DataMovimento.CdsRecParce.Open;
                       if (DataMovimento.CdsRecParce.IsEmpty = true) then
                       begin
                            DataMovimento.CdsRecParce.Insert;
                            DataMovimento.CdsRecParceEMP_CODIGO.AsString   := dbInicio.Empresa.EMP_CODIGO;
                       end
                       else
                           DataMovimento.CdsRecParce.Edit;
                       DataMovimento.CdsRecParceFAT_CODIGO.AsString     := wFatCodigo;
                       DataMovimento.CdsRecParceFAT_NUMSERIE.AsString     := EditdbSerie.Text;
                       DataMovimento.CdsRecParceREP_CODIGO.AsString     := StrZero(DataMovimento.CdsReceberREP_CODIGO.AsString,3);
                       DataMovimento.CdsRecParceFPC_DTEMIS.AsDateTime   := wDataE;
                       if wBanco <> '' then
                       begin
                            DataMovimento.CdsRecParceBAN_CODIGO.AsString  := wBanco;
                            DataMovimento.CdsRecParceBAN_COD_APELIDO.ASINTEGER := dbInicio.BuscaUmDadoSqlAsInteger('SELECT BAN_COD_APELIDO FROM BAN0000 WHERE BAN_CODIGO = '+qStr( wBanco )+' and emp_codigo='+dbinicio.empresa.EMP_CODIGO);
                       end;

                       if wCct_codigo <> '' then
                          DataMovimento.CdsRecParceCCT_CODIGO.AsString  := wCct_codigo;
                       if wPcx_codigo <> '' then
                          DataMovimento.CdsRecParcePCX_CODIGO.AsString  := wPcx_codigo;
                       DataMovimento.CdsRecParceFPC_NPARCELAS.AsInteger := iNumeroParcelaPrazo;

                       if (wnumerParce = 1)and(dValorEntrada > 0) then
                       begin
                             DataMovimento.CdsRecParceFPC_VLPARC.AsCurrency   := dValorEntrada;
                             {Passa diferença dos centavos p/ parcela. Caso exista }
                             if WAux1 <> 0 then
                             begin
                                    DataMovimento.CdsRecParceFPC_VLPARC.AsCurrency := dValorEntrada + waux1;
                                    waux1 := 0;
                             end;
                       end
                       else
                       begin
                             DataMovimento.CdsRecParceFPC_VLPARC.AsCurrency   := wvalor;
                             {Passa diferença dos centavos p/ parcela. Caso exista }
                             if WAux1 <> 0 then
                             begin
                                    DataMovimento.CdsRecParceFPC_VLPARC.AsCurrency := wvalor + waux1;
                                    waux1 := 0;
                             end;
                       end;
                       //impostos na 1 parcela
                       if (wValor1Parcela > 0) then
                       begin
                            DataMovimento.CdsRecParceFPC_VLPARC.AsCurrency := DataMovimento.CdsRecParceFPC_VLPARC.AsCurrency + wValor1Parcela;
                            wValor1Parcela := 0;
                       end;

                       if iNumeroParcelaPrazo > 1 then
                          // se é uma parcela nao preciso gravar numero da parcela
                          DataMovimento.CdsRecParceFPC_NUMER.AsString          := StrZero(IntToStr(WNumerParce),2)
                       else
                          DataMovimento.CdsRecParceFPC_NUMER.AsString          := StrZero(IntToStr(1),2);
                       //
                       DataMovimento.CdsRecParceFPC_VENCTO.AsDateTime          := WVencto;
                       DataMovimento.CdsRecParceCLI_CODIGO.AsString            := StrZero(DataMovimento.CdsReceberCLI_CODIGO.AsString,5);
                       DataMovimento.CdsRecParceFPC_REEMBOLSO.AsString            := DataMovimento.CdsReceberFAT_REEMBOLSO.AsString;
                       //padrao é sempre entrar como pendente
                       DataMovimento.CdsRecParceFPC_SITPAG.AsString            := 'P';
                       DataMovimento.CdsRecParceFPC_STATUS.AsString            := 'Pendente';
                       DataMovimento.CdsRecParceFPC_IMPDUP.AsString            := 'N';
                       DataMovimento.CdsRecParceFPC_STATUS_REMESSA.AsString    := 'N';

                       //DataMovimento.CdsRecParceBAN_COD_APELIDO.AsString       := wBancoApelido;
                       if   FormaPagamento >0  then
                         DataMovimento.CdsRecParcefpg_registro.AsInteger :=   FormaPagamento ;
                       DataMovimento.CdsRecParceFPC_DESCONTADO.AsString        := 'N';
                       DataMovimento.CdsRecParceFPC_EXCLUSAO.AsString          := 'N';
                       DataMovimento.CdsRecParceFPC_CONFIRMADEVOLUCAO.AsString := 'N';

                       if Assigned(FormContasReceber) then
                          DataMovimento.CdsRecParceFPC_PREVISAO.AsString := iif(FormContasReceber.DBChkFat_previsao.checked ,'S','N');


                       DataMovimento.CdsRecParceFPC_COBTIPO.AsString  := wCobranca;
                       DataMovimento.CdsRecParceFPC_TIPODOC.AsString  := wTpDocuto;

                       //
                       DataMovimento.CdsRecParce.Post;
                       DataMovimento.CdsRecParce.ApplyUpdates(0);


                       LancaRateioCentroCustoBasePlano(DataMovimento.CdsRecParceFAT_REGISTRO.AsString,
                                                       'R',
                                                       DataMovimento.CdsRecParceCCT_CODIGO.AsString,
                                                       DataMovimento.CdsRecParcePCXPF_REGISTRO.AsString);
                 end;
         end
         else
         if (DataCadastros.CdsParcelasPCL_TIPO.AsString = 'V') then //Variavel
         begin
                 if DataCadastros.CdsParcelasPCL_DESCTO.AsCurrency <> 0 then
                    wvalor := int(100*(wvalor-((wvalor*DataCadastros.CdsParcelasPCL_DESCTO.AsCurrency)/100)))/100;

                 //Verifica % entrada
                 if (DataCadastros.CdsParcelasPCL_PERCENTUAL_PRIMEIRA_P.AsCurrency > 0) then
                 begin
                       dValorEntrada := wvalor * (DataCadastros.CdsParcelasPCL_PERCENTUAL_PRIMEIRA_P.AsCurrency/100);
                       wvalor := wvalor - dValorEntrada;
                 end;
                 wvalor:=int(100*(wvalor/(iNumeroParcelaPrazo-(IIF(dValorEntrada > 0,IIF(iNumeroParcelaPrazo > 1,1,0),0 )))))/100;

                 // se pedido sem prazo vai dar erro e pular para exceção
                 //dTmp:=int(100*(wvalor/(DataCadastros.CdsParcelasPCL_NPARCELAS.AsInteger-(IIF(dValorEntrada > 0,IIF(DataCadastros.CdsParcelasPCL_NPARCELAS.AsInteger > 1,1,0),0 )))))/100;
                 // wdescto = Vl total da nota; wvalor = vl da parcela c/ 2 casas
                 //waux1:= (wdescto-(dTmp*(DataCadastros.CdsParcelasPCL_NPARCELAS.AsInteger-(IIF(dValorEntrada > 0,IIF(DataCadastros.CdsParcelasPCL_NPARCELAS.AsInteger > 1,1,0),0 )))))*100;
                 // transforma inteiro p/ comparar depois
                 //waux1:= StrToInt(FloatToStrf(waux1,ffFixed,1,0));
                 waux1 := (dTotal - (((wvalor * (iNumeroParcelaPrazo-(IIF(dValorEntrada > 0,IIF(iNumeroParcelaPrazo > 1,1,0),0 ))))+dValorEntrada)));
                 //Guardando diferença em centavos e transformando-o em inteiro
                 // wdescto = Vl total da nota; wvalor = vl da parcela c/ 2 casas
                 {transforma inteiro p/ comparar depois}
                 //

                 //Busca o Intervalo das parcelas
                 openaux2( 'SELECT P1.* '+
                           'FROM PCL_PARCELA P1 '+
                           'where P1.PCL_CODIGO = '+qStr(DataCadastros.CdsParcelasPCL_CODIGO.AsString)+
                           ConcatSe(' AND ', DBINICIO.ExclusivoSql('TABELAS') ) +
                           'order by P1.PCP_DIA' );
                 while (not qAux2.Eof) do
                 begin
                       wnumerParce := wnumerParce + 1;
                       //se 1ª parcela
                       if wnumerParce = 1 then
                       begin

                            // Vencimento da 1ª
                            wVencto := wDataE + (qAux2.FieldByName('PCP_DIA').AsInteger);
                       end
                       else // Se não for a 1ª parcela
                       begin
                              //Caso não manter-se dia do vencimento
                              if DataCadastros.CdsParcelasPCL_MANTERDIA.AsString = 'N' then
                                 wVencto := wDataE + (qAux2.FieldByName('PCP_DIA').AsInteger)

                              else  // Caso manter dia do vencimento
                              begin
                                     //Desmenbra data da variável
                                     wDia:= FormatDateTime('dd',wVencto);
                                     wDiaAux := Wdia;
                                     wMes:= FormatDateTime('mm',wVencto);
                                     wAno:= FormatDateTime('yyyy',wVencto);
                                     // Incrementa meses da data / Ex: se interv 60 = 2 meses
                                     wMes := IntToStr(StrToInt(wMes) + (wIntervalo div 30));
                                     // IFs que verifican validade de datas
                                     IF (WMes = '2') and ((WDia = '29') or (WDia = '30') or (WDia = '31')) then
                                        WDia := '28';
                                     IF (WMes = '4') and (WDia = '31') then
                                        WDia := '30';
                                     IF (WMes = '6') and (WDia = '31') then
                                        WDia := '30';
                                     IF (WMes = '9') and (WDia = '31') then
                                        WDia := '30';
                                     IF (WMes = '11') and (WDia = '31') then
                                        WDia := '30';
                                     // se mes passar do ano corrente ou passar um ano, ou mais
                                     if (((StrToInt(WMes) div 12)=1)and((StrToInt(WMes) mod 12)>0))or ((StrToInt(WMes) div 12)>1)   then
                                     Begin
                                            // se sobra meses
                                            if (StrToInt(WMes) mod 12)>0 then
                                            begin
                                                   WAno := IntToStr(StrToInt(WAno)+ StrToInt(WMes) div 12);
                                                   // a sobra da divisão equivale ao mes / Ex:14 div 12 = fevereiro
                                                   WMes := StrZero(IntToStr(StrToInt(WMes) mod 12),2);
                                            end
                                            else //Ex:24 meses div por 12 = 2anos / -1 porque não passou de dezembro
                                                 WAno := IntToStr(StrToInt(WAno)+ (StrToInt(WMes) div 12)-1);
                                     end;
                                     // Passa vencto correto
                                     //WVencto := StrToDateTime(WDia+'/'+StrZero(WMes,2)+'/'+WAno);
                                     WDia    := WDiaAux;
                              end;
                       end;
                       if (iNumeroParcelaPrazo=1) then
                            wSeleciona := 'WHERE F1.FAT_CODIGO = '''+wFatCodigo+''''
                       else
                            wSeleciona := 'WHERE F1.FAT_CODIGO = '''+wFatCodigo+''' AND F1.FPC_NUMER = '''+StrZero(IntToStr(WNumerParce),2)+'''';
                       wSql1 := 'Select F1.*,B1.BAN_APELIDO from FAT_PC01 F1 ';
                       wSql2 := 'left join BAN0000 B1 on (F1.BAN_CODIGO = B1.BAN_CODIGO) ';
                       DataMovimento.CdsRecParce.Close;
                       DataMovimento.CdsRecParce.CommandText := SQLDEF('RECEBER',wSql1+wSql2,wSeleciona,'F1.FAT_CODIGO','F1.');
                       DataMovimento.CdsRecParce.Open;
                       if (DataMovimento.CdsRecParce.IsEmpty = true) then
                       begin
                            DataMovimento.CdsRecParce.Insert;
                            DataMovimento.CdsRecParceEMP_CODIGO.AsString   := dbInicio.Empresa.EMP_CODIGO;
                       end
                       else
                           DataMovimento.CdsRecParce.Edit;
                       DataMovimento.CdsRecParceFAT_CODIGO.AsString     := wFatCodigo;
                       DataMovimento.CdsRecParceREP_CODIGO.AsString     := StrZero(DataMovimento.CdsReceberREP_CODIGO.AsString,3);
                       DataMovimento.CdsRecParceFPC_DTEMIS.AsDateTime   := wDataE;
                       if wBanco <> '' then
                       begin
                            DataMovimento.CdsRecParceBAN_CODIGO.AsString  := wBanco;
                            DataMovimento.CdsRecParceBAN_COD_APELIDO.ASINTEGER := dbInicio.BuscaUmDadoSqlAsInteger('SELECT BAN_COD_APELIDO FROM BAN0000 WHERE BAN_CODIGO = '+qStr( wBanco )+' and emp_codigo='+dbinicio.empresa.EMP_CODIGO);
                       end;
                       if wCct_codigo <> '' then
                          DataMovimento.CdsRecParceCCT_CODIGO.AsString  := wCct_codigo;
                       if wPcx_codigo <> '' then
                          DataMovimento.CdsRecParcePCX_CODIGO.AsString  := wPcx_codigo;
                       DataMovimento.CdsRecParceFPC_NPARCELAS.AsInteger := iNumeroParcelaPrazo;

                       if (wnumerParce = 1)and(dValorEntrada > 0) then
                       begin
                             DataMovimento.CdsRecParceFPC_VLPARC.AsCurrency   := dValorEntrada;
                             // Passa diferença dos centavos p/ parcela. Caso exista
                             if WAux1 <> 0 then
                             begin
                                    DataMovimento.CdsRecParceFPC_VLPARC.AsCurrency := dValorEntrada + waux1;
                                    WAux1 := WAux1 - 1;
                             end;
                       end
                       else
                       begin
                             DataMovimento.CdsRecParceFPC_VLPARC.AsCurrency   := wvalor;
                             // Passa diferença dos centavos p/ parcela. Caso exista
                             if WAux1 <> 0 then
                             begin
                                    DataMovimento.CdsRecParceFPC_VLPARC.AsCurrency := wvalor + waux1;
                                    waux1 := 0;
                             end;
                       end;


                       if iNumeroParcelaPrazo > 1 then
                          // se é uma parcela nao preciso gravar numero da parcela
                          DataMovimento.CdsRecParceFPC_NUMER.AsString          := StrZero(IntToStr(WNumerParce),2)
                       else
                          DataMovimento.CdsRecParceFPC_NUMER.AsString          := StrZero(IntToStr(1),2);
                       //
                       DataMovimento.CdsRecParceFPC_VENCTO.AsDateTime          := WVencto;
                       DataMovimento.CdsRecParceCLI_CODIGO.AsString            := StrZero(DataMovimento.CdsReceberCLI_CODIGO.AsString,5);
                       //padrao é sempre entrar como pendente
                       DataMovimento.CdsRecParceFPC_SITPAG.AsString            := 'P';
                       DataMovimento.CdsRecParceFPC_STATUS.AsString            := 'Pendente';
                       DataMovimento.CdsRecParceFPC_IMPDUP.AsString            := 'N';
                       DataMovimento.CdsRecParceFPC_STATUS_REMESSA.AsString    := 'N';
                       DataMovimento.CdsRecParceFPC_DESCONTADO.AsString        := 'N';
                       DataMovimento.CdsRecParceFPC_EXCLUSAO.AsString          := 'N';
                       DataMovimento.CdsRecParceFPC_CONFIRMADEVOLUCAO.AsString := 'N';

                       if Assigned(FormContasReceber) then
                          DataMovimento.CdsRecParceFPC_PREVISAO.AsString := iif(FormContasReceber.DBChkFat_previsao.checked ,'S','N');

                       DataMovimento.CdsRecParceFPC_COBTIPO.AsString  := wCobranca;
                       DataMovimento.CdsRecParceFPC_TIPODOC.AsString  := wTpDocuto;
                       if   FormaPagamento >0  then
                         DataMovimento.CdsRecParcefpg_registro.AsInteger :=   FormaPagamento ;

                       DataMovimento.CdsRecParce.Post;
                       DataMovimento.CdsRecParce.ApplyUpdates(0);


                       LancaRateioCentroCustoBasePlano(DataMovimento.CdsRecParceFAT_REGISTRO.AsString,
                                                       'R',
                                                       DataMovimento.CdsRecParceCCT_CODIGO.AsString,
                                                       DataMovimento.CdsRecParcePCXPF_REGISTRO.AsString);

                       qAux2.Next;
                 end;
         end;
    end;
end;

procedure TFormContasReceber.Sp_ClienteClick(Sender: tObject);
begin
  if not assigned(FormCliente) then
    begin
      FormCliente := TFormCliente.Create(Application);
      FormCliente.BotoesAcesso;
    if (MDIChildCount > 1) then
             SendMessage(ClientHandle, WM_MDICASCADE, 0, 0)
       {

      FormCliente := TFormCliente.Create(Application);
      try
         FormCliente.sRegCRC := Trim(DataMovimento.CdsReceberCLI_CODIGO.AsString);
         FormCliente.ShowModal;
      finally
             FreeAndNil(FormCliente);   }
      end;
end;

procedure TFormContasReceber.CdsParcelasGridCalcFields(DataSet: TDataSet);
begin
  if (CdsParcelasGridFPC_EXCLUSAO.AsString = 'S') then
    CdsParcelasGridCCPendente.AsCurrency := 0
  else
  begin
      CdsParcelasGridCCPendente.AsCurrency := (CdsParcelasGridFPC_VLPARC.AsCurrency + CdsParcelasGridFPC_JUROS.AsCurrency + CdsParcelasGridFPC_MULTA.AsCurrency - CdsParcelasGridFPC_DESCTO.AsCurrency) - CdsParcelasGridFPC_VLPAGO.AsCurrency;
      if CdsParcelasGridCCPendente.AsCurrency<0 then
         CdsParcelasGridCCPendente.AsCurrency := 0;
  end;
end;

procedure TFormContasReceber.CdsParcelasGridFPC_NUMERGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin

  if not CdsParcelasGrid.IsEmpty then
    if Sender.AsString <> '' then
      text :=  InttoStr(StrToInt(Sender.AsString)) + '/' + IntToStr(CdsParcelasGrid.FieldByName('FPC_NPARCELAS').AsInteger)
    else
      text := '';
end;

procedure TFormContasReceber.CdsParcelasGridFPC_STATUS_REMESSAGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if Sender.Value = 'N' then
    Text := 'Não'
  else
    Text := 'Sim';
end;

procedure TFormContasReceber.CdsParcelasGridNFSEGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if NOT (Sender.IsNull) and (sender.Value>0) then
    Text := Sender.Value
  else
    Text := 'Não';
end;

procedure TFormContasReceber.CdsRateioCentroCustoAfterClose(DataSet: TDataSet);
begin
     inherited;
     edTotRateio.value := 0
end;

procedure TFormContasReceber.CdsRateioCentroCustoAfterOpen(DataSet: TDataSet);
begin
  inherited;
  if CdsRateioCentroCustoValor_Tot.Value = Null  then
     edTotRateio.value := 0
  Else
     edTotRateio.Value := CdsRateioCentroCustoValor_Tot.value

end;

procedure TFormContasReceber.DsParcelasGridDataChange(Sender: tObject;
  Field: TField);
begin
   BuscaRecebimentos;
   Busca_Rateios;
end;

procedure TFormContasReceber.BuscaRecebimentos;
begin
   bPossuiLiquidacao := False;
   CdSRecebimentos.Close;
   if (not CdsParcelasGrid.IsEmpty) then
      begin
         wSql1      := 'SELECT  '+
                       '     T1.FRE_REGISTRO,'+
                       '     T1.FRE_DATA_RECEBIMENTO,'+
                       '     T1.FRE_VALOR,'+
                       '     T1.FRE_DESCONTO,'+
                       '     T1.FRE_JUROS,'+
                       '     T1.FRE_MULTA,'+
                       '     T1.FRE_RECEBIDO,'+
                       '     T1.BAN_CODIGO, '+
                       '     T2.BAN_APELIDO as BAN_RAZAO,'+
                       '     T1.FPG_REGISTRO,'+
                       '     T3.FPG_DESCRICAO,'+
                       '     T1.USU_CODIGO,'+
                       '     t4.USU_NOME '+
                       ' FROM '+
                       ' FAT_RECEBIMENTO T1 '+
                       ' JOIN BAN0000 T2 ON (T2.BAN_CODIGO = T1.BAN_CODIGO) '+
                       ' JOIN FORMA_PAGAMENTO T3 ON (T3.FPG_REGISTRO = T1.FPG_REGISTRO) '+
                       ' JOIN USUARIO T4 ON (T4.USU_CODIGO = T1.USU_CODIGO)';
         wSeleciona := 'WHERE T1.FAT_REGISTRO = '+CdsParcelasGridFAT_REGISTRO.AsString;
         wOrdem     := 'T1.FRE_DATA_RECEBIMENTO';
         qRecebimentos.sql.Text := SQLDEF('RECEBER',wSql1,wSeleciona,wOrdem,'T1.');
         if delphiaberto then
            CopyToClipBoard( qRecebimentos.sql.Text );
         CdSRecebimentos.Open;
         CdSRecebimentos.Filtered := False;
         CdSRecebimentos.Filter := 'FRE_RECEBIDO > 0';
         CdSRecebimentos.Filtered := True;
         bPossuiLiquidacao := not CdSRecebimentos.IsEmpty;
         CdSRecebimentos.Filtered := False;
      end;
   DBeFat_vlfat.Enabled :=  not bPossuiLiquidacao;
end;

procedure TFormContasReceber.EstornaBaixa1Click(Sender: tObject);
begin
   if (not CdSRecebimentos.IsEmpty) then
      if (uteis.confirmacao ( 'Confirma o estorno do lançamento?')=mrYes) then
         begin
            ContasReceberEstornaBaixa(CdSRecebimentosFRE_REGISTRO.AsString);
            CdsParcelasGrid.Refresh;
         end;
end;

procedure TFormContasReceber.btRecebimentoClick(Sender: tObject);
begin
   FormContasReceberBaixas := TFormContasReceberBaixas.Create(Application);
   FormContasReceberBaixas.BotoesAcesso;
   try
      FormContasReceberBaixas.ShowModal;
   finally
      FreeAndNil(FormContasReceberBaixas);
   end;
end;

procedure TFormContasReceber.Baixar;
begin
   if (CdsParcelasGrid.IsEmpty) then
      uteis.aviso('Nenhuma parcela disponível para baixa foi selecionada')
   else
   if (CdsParcelasGridCCPendente.AsFloat <= 0) then
      uteis.aviso('Parcela não disponível para baixa')
   else
   begin
         FormContasReceberBaixa := TFormContasReceberBaixa.Create(Application);
         try
             //Adiciona parcelas a serem baixadas
            FormContasReceberBaixa.CdSRecebimentos.Insert;
            FormContasReceberBaixa.CdSRecebimentosFatRegistro.AsString := CdsParcelasGridFAT_REGISTRO.AsString;
            FormContasReceberBaixa.CdSRecebimentosFatura.AsString := CdsParcelasGridFAT_CODIGO.AsString;
            FormContasReceberBaixa.CdSRecebimentosParcela.AsString := CdsParcelasGridFPC_NUMER.AsString;
            FormContasReceberBaixa.CdSRecebimentosVencimento.AsString := CdsParcelasGridFPC_VENCTO.AsString;
            FormContasReceberBaixa.CdSRecebimentosValor.AsString := CdsParcelasGridFPC_VLPARC.AsString;
            FormContasReceberBaixa.CdSRecebimentosPendente.AsString := CdsParcelasGridCCPendente.AsString;
            FormContasReceberBaixa.CdSRecebimentosBaixar.AsString := CdsParcelasGridCCPendente.AsString;
            FormContasReceberBaixa.CdSRecebimentosDesconto.AsFloat := 0;
            FormContasReceberBaixa.CdSRecebimentosJuros.AsFloat := 0;
            FormContasReceberBaixa.CdSRecebimentosMulta.AsFloat := 0;
            FormContasReceberBaixa.CdSRecebimentosRecebido.AsString := CdsParcelasGridCCPendente.AsString;
            FormContasReceberBaixa.CdSRecebimentosCliente.AsString := CbClientes.Text;
            FormContasReceberBaixa.CdSRecebimentos.Post;
            IF FormContasReceberBaixa.ShowModal = mrOk then
            begin
              if dbInicio.BuscaUmDadoSqlAsString('select FPC_SITPAG from FAT_PC01 where FAT_REGISTRO='+qStr(CdsParcelasGridFAT_REGISTRO.AsString))='P' then
                 if dbInicio.BuscaUmDadoSqlAsFloat('select (FPC_VLPARC - (FPC_DESCTO+FPC_VLPAGO)) from FAT_PC01 where FAT_REGISTRO='+qStr(CdsParcelasGridFAT_REGISTRO.AsString)) <> 0 THEN
                    dbInicio.MainDB.ExecuteDirect( 'update FAT_PC01 set FPC_STATUS='+qStr('Parcial')+' where FAT_REGISTRO='+qStr(CdsParcelasGridFAT_REGISTRO.AsString) );
            end;
         finally
            FormContasReceberBaixa.Destroy;
            FormContasReceberBaixa := Nil;
         end;
         CdsParcelasGrid.Refresh;
   end;
end;

procedure TFormContasReceber.ChamaOpcao;
begin
     if (not CdsParcelasGrid.IsEmpty) then
        PainelOpcao.Visible := True;
end;

procedure TFormContasReceber.BitBtn1Click(Sender: tObject);
begin
      if (not CdsParcelasGrid.IsEmpty) then
      begin
         if RbManutencao.Checked then
            Mostrar_Parcelas
         else
            Baixar;
      end;
      PainelOpcao.Visible := False;
end;

procedure TFormContasReceber.BitBtn2Click(Sender: tObject);
begin
     PainelOpcao.Visible := False;
end;

procedure TFormContasReceber.ImprimirRecibo1Click(Sender: tObject);
begin
   if (not CdSRecebimentos.IsEmpty) then
      begin
         try
            FrmRecibo := TFrmRecibo.Create(Application);
            FrmRecibo.FormStyle := fsNormal;
            FrmRecibo.Visible := false;
            FrmRecibo.dataRecebimento := CdSRecebimentosFRE_DATA_RECEBIMENTO.AsDateTime;
            FrmRecibo.CurValor.Value := CdsParcelasGridFPC_VLPAGO.AsCurrency;
            FrmRecibo.edtRecebemosPagamos.Text := CbClientes.Text;
            FrmRecibo.mmoReferente.Lines.Add('Fatura: '+EditFatura.Text+' Vencimento: '+CdsParcelasGridFPC_VENCTO.AsString+' Valor: '+FormatFloat('###,###,###.00',CdsParcelasGridFPC_VLPARC.AsCurrency));
            FrmRecibo.mmoReferente.Lines.Add('Liquidação '+iif(CdSRecebimentosFRE_VALOR.AsCurrency < CdsParcelasGridFPC_VLPARC.AsCurrency,'Parcial','Total' )+' :'+CdSRecebimentosFRE_DATA_RECEBIMENTO.AsString+' Valor: '+FormatFloat('###,###,###.00',CdSRecebimentosFRE_VALOR.AsCurrency) );
            FrmRecibo.ShowModal;
         finally
            FrmRecibo.Destroy;
            FrmRecibo := nil;
         end;
      end;
end;

procedure TFormContasReceber.Busca_Rateios;
begin
   CdsRateioCentroCusto.Close;
   if (not CdsParcelasGrid.IsEmpty) then
      begin
         wSql1      := 'SELECT '+
                       '    t3.pcx_codigo, '+
                       '    t3.pcx_descri, '+
                       '    t3.pcx_nivel, '+
                       '    t2.fir_indice_real * 100  as fir_indice, '+
                       '    cast(t1.fpc_vlparc * t2.fir_indice_real as numeric(18,2)) as  valor '+
                       'FROM '+
                       'fat_pc01 t1 '+
                       'join fin_rateio t2 on (t2.fir_registro_cp_cr = t1.fat_registro and t2.fir_registro_tipo = ''R'' and t2.FIR_TIPO = ''L'' AND T2.fir_indice > 0) '+
                       'join pcx0000 t3 on (t3.pcx_codigo = t2.pcx_codigo)';
         wSeleciona := 'WHERE T1.fat_registro = '+CdsParcelasGridFAT_REGISTRO.AsString;
         wOrdem     := 't3.pcx_nivel';
         qRateioCentroCusto.sql.Text := SQLDEF('RECEBER',wSql1,wSeleciona,wOrdem,'T1.');
         CdsRateioCentroCusto.Open;
      end;
end;

procedure TFormContasReceber.btnRateioManualClick(Sender: tObject);
begin
   if (CdsParcelasGrid.IsEmpty) then
      begin
         uteis.aviso('Nenuma Parcela Selecionada');
      end
   else
      ChamaManutencaoRateioManual(CdsParcelasGridFAT_REGISTRO.AsString,'R');
end;

procedure TFormContasReceber.btnServicoClick(Sender: TObject);
var clone : TClientDataSet;
 valor :double;
 Listaparcelas : TStringList;
 rps : integer;
  iss: double;
begin
  inherited;
  if (CdsParcelasGrid.IsEmpty) then
  begin
     uteis.aviso('Nenuma Parcela Selecionada');
  end
  else
  begin
    CdsParcelasGrid.Filtered := False;
    CdsParcelasGrid.Filter:= 'selecionado = true';
    CdsParcelasGrid.Filtered := True;
    if CdsParcelasGrid.RecordCount = 0 then
    begin
      CdsParcelasGrid.Filtered := False;
      GeraException('Nenhuma parcela gerada');
    end;
    if not VarIsNull(cdsparcelasgrid.FieldByName('TotalServicos').Value) and
          (RoundTo(cdsparcelasgrid.FieldByName('TotalServicos').Value, -2) > 0)  then
       valor := RoundTo(cdsparcelasgrid.FieldByName('TotalServicos').Value, -2)
    else
       valor := RoundTo(cdsparcelasgrid.FieldByName('TotalParcelas').Value, -2);

    if not VarIsNull(cdsparcelasgrid.FieldByName('TotalRetencao').Value) and
          (RoundTo(cdsparcelasgrid.FieldByName('TotalRetencao').Value, -2) > 0)  then
      valor := valor+  RoundTo(cdsparcelasgrid.FieldByName('TotalRetencao').Value, -2)  ;

    CdsParcelasGrid.Filtered := False;
    clone := TClientDataSet.Create(Self);
    FrmNotaFiscalServico := TFrmNotaFiscalServico.Create(Application);
    try
      clone.CloneCursor(CdsParcelasGrid,False,True);
      clone.Filtered := False;
      clone.Filter:= 'selecionado = true';
      clone.Filtered := True;
      clone.First;
      Listaparcelas := TStringList.Create;
      while not clone.Eof do
      begin
       //busca se já houve criação da nota de serviço
        OpenAux(' select nsp.nfse_codigo from NFSE_FATPC nsp                          '+
                '  LEFT JOIN NFSERVICO se ON (se.NFSE_CODIGO = nsp.NFSE_CODIGO)       '+
                      ' where FPC_NUMER = '+ QuotedStr(clone.FieldByName('FPC_NUMER').AsString)+
                      ' and nsp.fat_codigo  = '+ QuotedStr(EditFatura.Text)+
                      ' and nsp.nfse_serie = ' + QuotedStr(EditdbSerie.Text)+
                      ' and nsp.emp_codigo = ' + QuotedStr(DBInicio.Empresa.EMP_CODIGO) +
                      ' and NFSE_DTCANCELADO IS NULL ');
        if not ((qAux.FieldByName('nfse_codigo').IsNull) or (qAux.FieldByName('nfse_codigo').AsInteger = 0 )) then
          GeraException('Alguma das parcelas selecionada já foi emitido nota');
        Listaparcelas.Add(clone.FieldByName('FPC_NUMER').AsString);
        clone.Next;
      end;
      if DataMovimento.CdsReceberFAT_CID_CODIGO_PRESTACAO.AsInteger > 0 then
         iss := BuscaUmDadoSqlAsFloat('SELECT ISS_PGRC_ISS FROM ISS0000 WHERE CID_CODIGO =  ' +IntToStr(DataMovimento.CdsReceberFAT_CID_CODIGO_PRESTACAO.AsInteger));

      FrmNotaFiscalServico.IncluirNotaFiscal(EditFatura.Text,   //fatura
                                            EditdbSerie.Text,    //serie
                                            DBeCli_codigo.Text,
                                            DBePed_codigo.Text,
                                            Listaparcelas,        // parcelas selecionadas
                                            now,
                                            valor,
                                            //ALIQUOTAS
                                            iss,
                                            DataMovimento.CdsReceberFAT_INSS_PERC.AsFloat,
                                            DataMovimento.CdsReceberFAT_CONTSOCIAL_PERC.AsFloat,
                                            DataMovimento.CdsReceberFAT_IRPJ_PERC.AsFloat,
                                            DataMovimento.CdsReceberFAT_PIS_PERC.AsFloat,
                                            DataMovimento.CdsReceberFAT_COFINS_PERC.AsFloat,
                                            //RETENÇÕES
                                             (valor *(DataMovimento.CdsReceberFAT_INSS_PERC.AsFloat+  DataMovimento.CdsReceberFAT_CONTSOCIAL_PERC.AsFloat+
                                            DataMovimento.CdsReceberFAT_IRPJ_PERC.AsFloat+DataMovimento.CdsReceberFAT_PIS_PERC.AsFloat+DataMovimento.CdsReceberFAT_COFINS_PERC.AsFloat)/100),  //RETENÇAO FEDERAL
                                            (valor*DataMovimento.CdsReceberFAT_ISS_PERC.AsFloat/100),   //ISS RETIDO
                                          valor );

        FrmNotaFiscalServico.ShowModal;
        rps:= FrmNotaFiscalServico.CdsNfseRPS_CODIGO.AsInteger ;
        if FrmNotaFiscalServico.Status = tsNSucesso then
        begin
           if (MessageDlg('Nota Serviço gerou RPS '+ IntToStr(rps) +' com sucesso. Deseja abrir a tela de transmissão ?', mtConfirmation, [mbYes, mbNo], 0) in [mrYes]) then
           begin
                if not assigned(frmNfse) then
                begin
                  // try
                  frmNfse := TfrmNfse.Create(Application);

                  if (MDIChildCount > 1) then
                    SendMessage(ClientHandle, WM_MDICASCADE, 0, 0);
                end;
                frmNfse.Show;

                frmnfse.CdsPesq.Locate('RPS_CODIGO',rps,[]);
           end;
          BuscaParcelas;
        end
        else if FrmNotaFiscalServico.Status = tsNProcessadoComErros then
          Aviso('Algum erro ocorreu ! ')
        else if FrmNotaFiscalServico.Status = tsEstornado then
           BuscaParcelas;


    finally
      FreeAndNil(clone);
      if assigned(FrmNotaFiscalServico) then
         FreeAndNil(FrmNotaFiscalServico);
    end;


  end;
end;

procedure TFormContasReceber.ChamaManutencaoRateioManual(sRegistro,
  sTipo: String);
begin
   if (sRegistro <> '')and(sTipo <> '') then
      begin
         try
            FrmPlanoContasCentroCustoManual := TFrmPlanoContasCentroCustoManual.Create(Application);
            FrmPlanoContasCentroCustoManual.iRegistroDuplicata := StrToInt(sRegistro);
            FrmPlanoContasCentroCustoManual.sTipoRegistro := sTipo;
            FrmPlanoContasCentroCustoManual.ShowModal;
         finally
            FrmPlanoContasCentroCustoManual.Destroy;
            FrmPlanoContasCentroCustoManual := nil;
         end;
         CdsParcelasGrid.Refresh;
      end;
end;

procedure TFormContasReceber.btnRateioColaboradorClick(Sender: tObject);
begin
   if (CdsParcelasGrid.IsEmpty) then
      begin
         uteis.aviso('Nenuma Parcela Selecionada');
      end
   else
      ChamaManutencaoRateioManualColaborador(CdsParcelasGridFAT_REGISTRO.AsString,'R');
end;

procedure TFormContasReceber.ChamaManutencaoRateioManualColaborador(
  sRegistro, sTipo: String);
var
   sPerfilRateio, sPerfilConta:string;
begin
   sPerfilConta := '';
   sPerfilRateio := '';
   if (sRegistro <> '')and(sTipo <> '') then
   begin
         sPerfilRateio :=  BuscaUmDadoSqlAsString( 'SELECT PCXPF_REGISTRO from PCX0000_PERFIL '+
                                                   'WHERE PCXPF_DATA_INICIAL <= '+DateToSql(CdsParcelasGridFPC_VENCTO.AsDateTime)+
                                                   '      and PCXPF_DATA_FINAL >= '+DateToSql(CdsParcelasGridFPC_VENCTO.AsDateTime));
         sPerfilConta :=  BuscaUmDadoSqlAsString( 'SELECT CCT_PERFIL_RATEIO from CCT_0000 '+
                                                  'WHERE CCT_CODIGO =  '+qStr(DBeCct_Codigo.Field.Text) );
         if (sPerfilConta <> 'C') then
            uteis.aviso('Essa conta não e do perfil colaborador')
         else
         if (sPerfilRateio = '') then
            uteis.aviso('Não existe perfil definido para esta conta e data para servir de base para o rateio')
         else
         if (DBeCct_Codigo.Field.Text = '') then
            uteis.aviso('Selecione um centro de custo antes de realizar o rateio')
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
             CdsParcelasGrid.Refresh;
       end;
   end;
end;

Function TFormContasReceber.Localizar_Parametro_Ativo:Boolean;
begin
   FrmMenu.RwSqlGeralCmd.MontarSql      := False;
   FrmMenu.RwSqlGeralCmd.ResetaCampos   := True;
   FrmMenu.RwSqlGeralCmd.CodigoEmpresa  := StrToInt(dbInicio.Empresa.EMP_CODIGO);
   FrmMenu.RwSqlGeralCmd.MultiEmpresa   := True;
   FrmMenu.RwSqlGeralCmd.TipoSql        := Consultar;
   FrmMenu.RwSqlGeralCmd.Apelido        := 'T1.';
   FrmMenu.RwSqlGeralCmd.Compartilhar   := 'PARAMETROS';
   FrmMenu.RwSqlGeralCmd.Campos         := 'T1.*';
   FrmMenu.RwSqlGeralCmd.Tabela         := 'PRMT0001';
   FrmMenu.RwSqlGeralCmd.Condicao       := '';
   FrmMenu.RwSqlGeralCmd.CamposOrdernar := '';
   FrmMenu.RwSqlGeralCmd.MontarSql      := True;
   //
   DataMovimento2.sqlaux2.Close;
   DataMovimento2.sqlaux2.sql.text := FrmMenu.RwSqlGeralCmd.ComandoSql;
   DataMovimento2.sqlaux2.open;
   if (not DataMovimento2.sqlaux2.IsEmpty) then
      Result := True
   else
      Result := False;
end;


end.







