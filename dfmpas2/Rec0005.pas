unit Rec0005;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,  rxCurrEdit, Mask,  rxToolEdit, ExtCtrls, Buttons, Grids,
  DBGrids, Provider, SqlExpr,SqlClientDataSet, DB, DBClient, DBLocal, DBLocalS, ImgList,
  Menus, ComboBoxRw, Data.DBXFirebird, System.ImageList, SimpleDS,
  SgDbSeachComboUnit, JvExMask, JvToolEdit;

type
  TFrmRemessaDescontar = class(TForm)
    GrpFiltro: TGroupBox;
    GrpGrid: TGroupBox;
    DBGrid1: TDBGrid;
    Rad_aDescontar: TRadioButton;
    Rad_ComDesconto: TRadioButton;
    Rad_NaoConfirmado: TRadioButton;
    GrpPesq: TGroupBox;
    Rad_Emissao: TRadioButton;
    Rad_Descto: TRadioButton;
    GrpInforme: TGroupBox;
    Rad_Fatura: TRadioButton;
    Rad_Cliente: TRadioButton;
    Rad_Vencto: TRadioButton;
    PanData: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    PanPesq: TPanel;
    LblPesq: TLabel;
    CurrPesq: TCurrencyEdit;
    CbClientes: TComboBox;
    SqlCdsCliente: TSQLClientDataSet;
    SqlCdsClienteCLI_CODIGO: TStringField;
    SqlCdsClienteCLI_RAZAO: TStringField;
    SqlCdsRemessa: TSQLClientDataSet;
    DsRemessa: TDataSource;
    SqlCdsRemessaCLI_RAZAO_CC: TStringField;
    SqlCdsRemessaFAT_REGISTRO: TIntegerField;
    SqlCdsRemessaFAT_CODIGO: TStringField;
    SqlCdsRemessaFPC_NUMER: TStringField;
    SqlCdsRemessaCLI_CODIGO: TStringField;
    SqlCdsRemessaCLI_RAZAO: TStringField;
    SqlCdsRemessaFPC_VLPARC: TFMTBCdField;
    SqlCdsRemessaFAT_DTEMIS: TSQLTimeStampField;
    SqlCdsRemessaFPC_VENCTO: TSQLTimeStampField;
    SqlCdsRemessaFPC_PAGTO: TSQLTimeStampField;
    SqlCdsRemessaBAN_CODIGO: TStringField;
    SqlCdsRemessaFPC_DESCONTADO: TStringField;
    SqlCdsRemessaFPC_DATADESCTO: TDateField;
    SqlCdsRemessaFPC_CONFIRMADESCTO: TStringField;
    SqlCdsRemessaDESCTADA_CC: TStringField;
    SqlCdsRemessaSITUACAO_CC: TStringField;
    SqlCdsRemessaSELECAO_IC: TBooleanField;
    ImageList1: TImageList;
    Pn_Relatorio: TPanel;
    Bit_Gerar: TBitBtn;
    Bit_Estornar: TBitBtn;
    PopupMenu1: TPopupMenu;
    SelecionarTodos1: TMenuItem;
    DesmarcarTodos1: TMenuItem;
    CurrBco: TCurrencyEdit;
    CbxBco: TComboBox;
    Label4: TLabel;
    Label18: TLabel;
    CbxCarteira: TComboBox;
    SqlCdsBco: TSQLClientDataSet;
    SqlCdsBcoBAN_CODIGO: TStringField;
    SqlCdsBcoBAN_APELIDO: TStringField;
    PanRemessa: TPanel;
    PanTitulo: TPanel;
    BitBtn2: TBitBtn;
    GrpRemessa: TGroupBox;
    LBL_DATA: TLabel;
    SqlCdsRemessaNUM_FATURA_CC: TStringField;
    SqlCdsRemessaCONTA_BANCO_CC: TStringField;
    SqlCdsRemessaBAN_APELIDO: TStringField;
    Bit_TransfBco: TBitBtn;
    GrpBanco: TGroupBox;
    CurrTransfBanco: TCurrencyEdit;
    CbxTransfBanco: TComboBox;
    Label8: TLabel;
    Label9: TLabel;
    SqlCdsTransfBco: TSQLClientDataSet;
    SqlCdsTransfBcoBAN_CODIGO: TStringField;
    SqlCdsTransfBcoBAN_APELIDO: TStringField;
    EdtCodBco: TEdit;
    EdtDesConta: TEdit;
    Pan_Dupl: TPanel;
    Label11: TLabel;
    SqlCdsBcoEMP_CODIGO: TStringField;
    SqlCdsBcoBAN_LIMITE_DESCTOCHEQ: TFMTBCdField;
    SqlCdsBcoBAN_LIMITE_DESCTODUPL: TFMTBCdField;
    Label13: TLabel;
    lbl_limite_duplicata: TLabel;
    Curr_Util_Dupl: TCurrencyEdit;
    Pan_Cheq: TPanel;
    Label12: TLabel;
    lbl_limite_cheque: TLabel;
    Label10: TLabel;
    Curr_util_cheq: TCurrencyEdit;
    GrpGerar: TGroupBox;
    Rad_Remessa: TRadioButton;
    Rad_Transf: TRadioButton;
    Pan_Totais: TPanel;
    Label6: TLabel;
    CurrTotalGeral: TCurrencyEdit;
    Label7: TLabel;
    CurrTotalSelecionado: TCurrencyEdit;
    Label3: TLabel;
    LBL_QTDE: TLabel;
    Rad_Estorno: TRadioButton;
    SqlCdsRemessaFPC_CONFIRMADEVOLUCAO: TStringField;
    SqlCdsRemessaEMP_CODIGO: TStringField;
    Bit_Atualizar: TBitBtn;
    SqlCdsRemessaFPC_SITPAG: TStringField;
    Bit_Relatorio: TBitBtn;
    SqlCdsBcoBAN_LIMITE_UTILIZADO_CHEQ: TFMTBCdField;
    SqlCdsBcoBAN_LIMITE_UTILIZADO_DUPL: TFMTBCdField;
    SqlCdsBcoBAN_JUROS_DESCTOCHEQ: TFMTBCdField;
    SqlCdsBcoBAN_JUROS_DESCTODUPL: TFMTBCdField;
    SqlCdsRemessaPAG_CODIGO: TStringField;
    SqlCdsRemessaFPC_JUROS_DESCTO: TFMTBCdField;
    SqlCdsRemessaDIAS_CC: TCurrencyField;
    GrpCobranca: TGroupBox;
    Label5: TLabel;
    CbCobranca: TComboBox;
    EdtCobranca: TEdit;
    Label15: TLabel;
    PanBotao: TPanel;
    BitImprimeEtiq: TBitBtn;
    BitFechar: TBitBtn;
    PanValor: TPanel;
    lbl_transf: TLabel;
    Curr_Total_Transf: TCurrencyEdit;
    SqlCdsRemessaTipoDoc_CC: TStringField;
    SqlCdsRemessaFPC_TIPODOC: TStringField;
    SqlCdsRemessaCC_RAZAO: TStringField;
    SqlCdsRemessaFPC_EXCLUSAO: TStringField;
    SqlCdsRemessaFPC_SACADO_CHEQUE: TStringField;
    SqlCdsRemessaFPC_NUM_CHEQUE: TStringField;
    SqlCdsRemessaFPC_NUM_CHEQUE_DV: TStringField;
    SqlCdsRemessaCC_NUM_CHEQUE: TStringField;
    Label14: TLabel;
    CbxTipoDoc: TComboBox;
    BitPesquisar: TBitBtn;
    BitCancelar: TBitBtn;
    BitSair: TBitBtn;
    FormaPagamento: TGroupBox;
    CBFormaPagamento: TComboBoxRw;
    Sb_FormaPagamento: TSpeedButton;
    EdFormaPagamento: TEdit;
    DataRemessa: TJvDateEdit;
    RxDataFinal: TJvDateEdit;
    RxDataInicial: TJvDateEdit;
    procedure Rad_FaturaClick(Sender: tObject);
    procedure BitSairClick(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure SqlCdsRemessaCalcFields(DataSet: TDataSet);
    procedure Rad_aDescontarClick(Sender: tObject);
    procedure BitPesquisarClick(Sender: tObject);
    procedure RxDataInicialExit(Sender: tObject);
    procedure RxDataFinalExit(Sender: tObject);
    procedure CurrPesqExit(Sender: tObject);
    procedure CbClientesClick(Sender: tObject);
    procedure CbClientesExit(Sender: tObject);
    procedure BitCancelarClick(Sender: tObject);
    procedure DBGrid1DrawColumnCell(Sender: tObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1DblClick(Sender: tObject);
    procedure DBGrid1KeyPress(Sender: tObject; var Key: Char);
    procedure Bit_GerarClick(Sender: tObject);
    procedure RxDataInicialEnter(Sender: tObject);
    procedure SelecionarTodos1Click(Sender: tObject);
    procedure DesmarcarTodos1Click(Sender: tObject);
    procedure CurrBcoExit(Sender: tObject);
    procedure CbxBcoClick(Sender: tObject);
    procedure CbxBcoExit(Sender: tObject);
    procedure BitFecharClick(Sender: tObject);
    procedure BitImprimeEtiqClick(Sender: tObject);
    procedure DataRemessaExit(Sender: tObject);
    procedure Bit_EstornarClick(Sender: tObject);
    procedure CurrPesqEnter(Sender: tObject);
    procedure MudaCorCampos(Sender: tObject);
    procedure RxDataFinalEnter(Sender: tObject);
    procedure Bit_TransfBcoClick(Sender: tObject);
    procedure CurrTransfBancoExit(Sender: tObject);
    procedure CbxTransfBancoClick(Sender: tObject);
    procedure CbxTransfBancoExit(Sender: tObject);
    procedure FormCloseQuery(Sender: tObject; var CanClose: Boolean);
    procedure Rad_RemessaClick(Sender: tObject);
    procedure CbxCarteiraChange(Sender: tObject);
    procedure FormActivate(Sender: tObject);
    procedure Bit_AtualizarClick(Sender: tObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure Bit_RelatorioClick(Sender: tObject);
    procedure EdFormaPagamentoExit(Sender: tObject);
    procedure CBFormaPagamentoChange(Sender: tObject);
    procedure CBFormaPagamentoExit(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure Sb_FormaPagamentoClick(Sender: tObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure SqlCdsRemessaSELECAO_ICGetText(Sender: TField; var Text: string; DisplayText: Boolean);

  private
    { Private declarations }
    {campos}
    CampoData     : TDateEdit;
    CampoCombo    : TcomboBox;
    CampoCurrency : TCurrencyEdit;
    wCtaAnalise,
    wCodLanctoPagar : String;
    wBotao,
    wTipo         : String[1];
    wJurosDescto  : Currency;
    wDias         : Integer;

    //
    wLimite,
    wUtilizado,
    wTotal_Descto,
    wDiferenca : Currency;
    //
    procedure LayoutPesquisa;
    procedure CarregarCombos;
    procedure MostrarDados;
    procedure FiltrarRemessa;
    procedure BuscaRemessa;
    procedure Mensagens;
    procedure LimparDados;
    procedure HabilitaBotao;
    procedure Selecao_Remessa;
    procedure Desmarcar_Remessa;
    procedure Atualiza_Remessa(const pTipo,pRegistro,pCod_Pagar:String);
    procedure Transf_Entre_Bancos(const pRegistro,pConta,pCobranca:String);
    procedure CalculaRemessa;
    procedure HabilitaObjetos;
    procedure DesabilitaObjetos;
    procedure Mostrar_Limite;
    procedure HabilitaGroups;
    procedure DesabilitaGroups;
    procedure LayOutGerar;
    procedure Atualizar_Limite;
    procedure Inserir_Lancto_Pagar(const pEmpresa,pCodLancto,pValor,pCodFor,pData : String);
    procedure Diminui_Juros_Lancto_Pagar(const sCodLancto,sDataEmissao,sValorJuros:String);
    procedure Objetos_Default;
    Function  Ultrapassou_Limite_Utilizado(pVlSelecionado:Double):Boolean;
    Function  Selecionou_Faturas:Boolean;
  public
    { Public declarations }
    procedure BotoesAcesso;
  end;

var
  FrmRemessaDescontar: TFrmRemessaDescontar;

implementation

uses DataCad, RWFunc, Men0001, Rec0006, GImpRece, DataMov, uFinanceiroDao,
   uCadastroFormaPagamento, uteis, iniciodb;

{$R *.dfm}

procedure TFrmRemessaDescontar.Rad_FaturaClick(Sender: tObject);
begin
    LayoutPesquisa;
end;

procedure TFrmRemessaDescontar.LayoutPesquisa;
begin
    if (Rad_Fatura.Checked) then
       begin
           PanPesq.Visible        := True;
           PanData.Visible        := False;
           CbClientes.ItemIndex   := -1;           
           CbClientes.Visible     := False;
           LblPesq.Caption        := 'Fatura Nº:';
           GrpInforme.Caption     := 'Informe o número da fatura';
           CurrPesq.Value         := 0;
           CurrPesq.MaxLength     := 6;
           CurrPesq.DisplayFormat := '000000';
       end;
    if (Rad_Cliente.Checked) then
       begin
           PanPesq.Visible        := True;
           PanData.Visible        := False;
           CbClientes.Visible     := True;
           CbClientes.ItemIndex   := -1;
           LblPesq.Caption        := 'Cliente:';
           GrpInforme.Caption     := 'Informe o cliente';
           CurrPesq.Value         := 0;
           CurrPesq.MaxLength     := 5;
           CurrPesq.DisplayFormat := '00000';
       end;
    if ((Rad_Emissao.Checked)or
        (Rad_Vencto.Checked)or
        (Rad_Descto.Checked))then
       begin
           PanPesq.Visible    := False;
           PanData.Visible    := True;
           if (Rad_Emissao.Checked) then
              GrpInforme.Caption := 'Informe o período da emissão';
           if (Rad_Vencto.Checked) then
              GrpInforme.Caption := 'Informe o período do vencimento';
           if (Rad_Descto.Checked) then
              GrpInforme.Caption := 'Informe o período do desconto';
       end;
end;

procedure TFrmRemessaDescontar.BitSairClick(Sender: tObject);
begin
    Close;
end;

procedure TFrmRemessaDescontar.FormShow(Sender: tObject);
begin
    try
      Screen.OnActiveControlChange := MudaCorCampos;
      LayoutPesquisa;
      LayOutGerar;
      CarregarCombos;
      MostrarDados;
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao carregar os dados ! '+e.message));
    end;
end;

procedure TFrmRemessaDescontar.CarregarCombos;
begin
   CBFormaPagamento.CodigoEmpresa := StrToInt(dbInicio.Empresa.EMP_CODIGO);
   CBFormaPagamento.Compartilhar := 'TABELAS';
   CBFormaPagamento.CarregarCombo := True;
    try
      {Combo Clientes}
      wSql1    := 'Select C1.CLI_CODIGO,CLI_RAZAO from CLI0000 C1 ';
      wOrdem   := 'C1.CLI_RAZAO';
      SqlCdsCliente.Close;
      SqlCdsCliente.CommandText := SQLDEF('CLIENTES',wSql1,'',wOrdem,'C1.');
      SqlCdsCliente.Open;
      SqlCdsCliente.DisableControls;
      SqlCdsCliente.First;
      CbClientes.Items.Clear;
      CbClientes.Items.Add('');
      while not SqlCdsCliente.Eof do
       begin
           CbClientes.Items.Add(SqlCdsClienteCLI_RAZAO.AsString);
           SqlCdsCliente.Next;
       end;
      SqlCdsCliente.EnableControls;
      CbClientes.Text := '';
      CbClientes.ItemIndex := 0;
      {Combo Banco}
      wSql1   := 'Select B1.EMP_CODIGO,B1.BAN_CODIGO,B1.BAN_APELIDO,B1.BAN_LIMITE_DESCTOCHEQ,B1.BAN_LIMITE_DESCTODUPL,B1.BAN_LIMITE_UTILIZADO_CHEQ,B1.BAN_LIMITE_UTILIZADO_DUPL,B1.BAN_JUROS_DESCTOCHEQ,B1.BAN_JUROS_DESCTODUPL from BAN0000 B1 ';
      //
      wOrdem  := 'B1.BAN_APELIDO';
      //
      SqlCdsBco.Close;
      SqlCdsBco.CommandText := SQLDEF('BANCOS',wSql1,'',wOrdem,'B1.');
      SqlCdsBco.Open;
      SqlCdsBco.DisableControls;
      SqlCdsBco.First;
      CbxTransfBanco.Items.Clear;
      CbxBco.Items.Clear;
      CbxBco.Items.Add('TODOS OS BANCOS');
      while not SqlCdsBco.Eof do
       begin
           CbxBco.Items.Add(SqlCdsBcoBAN_APELIDO.AsString);
           SqlCdsBco.Next;
       end;
      SqlCdsBco.EnableControls;
      CbxBco.ItemIndex := 0;
      CbxBco.Text      := 'TODOS OS BANCOS';
      //
      SqlCdsTransfBco.Close;
      SqlCdsTransfBco.CommandText := SQLDEF('BANCOS',wSql1,'',wOrdem,'B1.');
      SqlCdsTransfBco.Open;
      SqlCdsTransfBco.DisableControls;
      SqlCdsTransfBco.First;
      CbxTransfBanco.Items.Clear;
      CbxTransfBanco.Items.Clear;
      while not SqlCdsTransfBco.Eof do
       begin
           CbxTransfBanco.Items.Add(SqlCdsTransfBcoBAN_APELIDO.AsString);
           SqlCdsTransfBco.Next;
       end;
      SqlCdsTransfBco.EnableControls;
      CbxTransfBanco.ItemIndex := -1;
      //
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao carregar a Combo ! '+e.message));
    end;
end;

procedure TFrmRemessaDescontar.SqlCdsRemessaCalcFields(DataSet: TDataSet);
begin
    SqlCdsRemessaCLI_RAZAO_CC.AsString   := SqlCdsRemessaCLI_CODIGO.AsString+' - '+SqlCdsRemessaCLI_RAZAO.AsString;
    SqlCdsRemessaDESCTADA_CC.AsString    := IIF(SqlCdsRemessaFPC_DESCONTADO.AsString = 'S','Sim','Não');
    SqlCdsRemessaSITUACAO_CC.AsString    := IIF(SqlCdsRemessaFPC_CONFIRMADESCTO.AsString = 'S','Sim','Não');

    SqlCdsRemessaTipoDoc_CC.AsString     := IIF(SqlCdsRemessaFPC_TIPODOC.AsString = '','',
                                            IIF(SqlCdsRemessaFPC_TIPODOC.AsString = 'DP','Duplicata',
                                            IIF(SqlCdsRemessaFPC_TIPODOC.AsString = 'BL','Boleto',
                                            IIF(SqlCdsRemessaFPC_TIPODOC.AsString = 'RC','Recibo',
                                            IIF(SqlCdsRemessaFPC_TIPODOC.AsString = 'CH','Cheque',
                                            IIF(SqlCdsRemessaFPC_TIPODOC.AsString = 'DN','Dinheiro',
                                            IIF(SqlCdsRemessaFPC_TIPODOC.AsString = 'OU','Outros','Crédito Conta')))))));
    SqlCdsRemessaCONTA_BANCO_CC.AsString := SqlCdsRemessaBAN_CODIGO.AsString+' - '+SqlCdsRemessaBAN_APELIDO.AsString;

    if (Rad_aDescontar.Checked) then
       SqlCdsRemessaDIAS_CC.AsCurrency   := StrToFloat(DifDias(SqlCdsRemessaFPC_VENCTO.AsDateTime,Date))
    else
    if (Rad_ComDesconto.Checked) then
       SqlCdsRemessaDIAS_CC.AsCurrency   := StrToFloat(DifDias(SqlCdsRemessaFPC_VENCTO.AsDateTime,SqlCdsRemessaFPC_DATADESCTO.AsDateTime))
    else
    if (Rad_NaoConfirmado.Checked) then
       SqlCdsRemessaDIAS_CC.AsCurrency   := StrToFloat(DifDias(SqlCdsRemessaFPC_VENCTO.AsDateTime,SqlCdsRemessaFPC_DATADESCTO.AsDateTime));
    //
    if (SqlCdsRemessaFPC_TIPODOC.AsString = 'CH') then
       begin
          if (SqlCdsRemessaFPC_SACADO_CHEQUE.IsNull)
          or (SqlCdsRemessaFPC_SACADO_CHEQUE.AsString = '')then
             SqlCdsRemessaCC_RAZAO.AsString := SqlCdsRemessaCLI_RAZAO.AsString
          else
             SqlCdsRemessaCC_RAZAO.AsString := SqlCdsRemessaFPC_SACADO_CHEQUE.AsString;
       end
    else
       SqlCdsRemessaCC_RAZAO.AsString := SqlCdsRemessaCLI_RAZAO.AsString;
    //
    if (SqlCdsRemessaFPC_NUM_CHEQUE.AsString = '') then
       SqlCdsRemessaCC_NUM_CHEQUE.AsString := ''
    else
       SqlCdsRemessaCC_NUM_CHEQUE.AsString := SqlCdsRemessaFPC_NUM_CHEQUE.AsString+'-'+SqlCdsRemessaFPC_NUM_CHEQUE_DV.AsString;
end;

procedure TFrmRemessaDescontar.SqlCdsRemessaSELECAO_ICGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  text := '';
end;

procedure TFrmRemessaDescontar.MostrarDados;
begin
    try
      wSql1      := 'Select F2.fat_registro,F2.fat_codigo,F2.fpc_numer,F2.cli_codigo,C1.cli_razao,F2.fpc_vlparc,F2.FPC_SITPAG,F1.fat_dtemis,F2.fpc_vencto,F2.FPC_JUROS_DESCTO,F2.FPC_TIPODOC,F2.FPC_NUM_CHEQUE,F2.FPC_NUM_CHEQUE_DV,';
      wSql2      := 'F2.fpc_pagto,F2.ban_codigo,B1.BAN_APELIDO,B1.EMP_CODIGO,F2.fpc_descontado,F2.fpc_datadescto,F2.fpc_confirmadescto,F2.FPC_CONFIRMADEVOLUCAO,F2.PAG_CODIGO,F2.FPC_EXCLUSAO,F2.FPC_SACADO_CHEQUE from FAT_PC01 F2 ';
      wSql3      := 'LEFT JOIN FAT0000 F1 ON (F2.fat_codigo = F1.fat_codigo) AND (F2.emp_codigo = F1.emp_codigo) ';
      wSql4      := 'LEFT JOIN CLI0000 C1 ON (F2.cli_codigo = C1.cli_codigo) LEFT JOIN BAN0000 B1 ON (F2.BAN_CODIGO = B1.BAN_CODIGO)';
      wSeleciona := 'WHERE F2.FPC_EXCLUSAO = ''N''';
      //
      if (Rad_Fatura.Checked) then
         wOrdem := 'F2.FAT_CODIGO';
      if (Rad_Cliente.Checked) then
         wOrdem := 'F2.CLI_CODIGO';
      if (Rad_Emissao.Checked) then
         wOrdem := 'F1.FAT_DTEMIS';
      if (Rad_Vencto.Checked) then
         wOrdem := 'F2.FPC_VENCTO';
      if (Rad_Descto.Checked) then
         wOrdem := 'F2.FPC_DATADESCTO';
      //
      {Tirar o Filtro}
      SqlCdsRemessa.Filtered := False;
      SqlCdsRemessa.Filter   := '';
      SqlCdsRemessa.Filtered := true;
      //
      SqlCdsRemessa.Close;
      SqlCdsRemessa.DisableControls;
      SqlCdsRemessa.PacketRecords := 10;
      SqlCdsRemessa.CommandText := SQLDEF('RECEBER',wSql1+wSql2+wSql3+wSql4,wSeleciona,wOrdem,'F2.');
      SqlCdsRemessa.Open;
      if (not SqlCdsRemessa.IsEmpty) then
         begin
             FiltrarRemessa;
             Objetos_Default;
         end;
      SqlCdsRemessa.EnableControls;
      SqlCdsRemessa.First;
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao abrir a tabela ! '+e.message));
    end;
end;

procedure TFrmRemessaDescontar.FiltrarRemessa;
Var
  wFiltro : String;
begin
    try
      if (Rad_aDescontar.Checked) then
         begin
             wFiltro := 'FPC_SITPAG = ''P'' AND FPC_DESCONTADO = ''N''';
         end;
      if (Rad_ComDesconto.Checked) then
         begin
             wFiltro := 'FPC_SITPAG = ''L'' AND FPC_DESCONTADO = ''S'' AND FPC_CONFIRMADESCTO =''S''';
         end;
      if (Rad_NaoConfirmado.Checked) then
         begin
             wFiltro := 'FPC_SITPAG = ''L'' AND FPC_DESCONTADO = ''S'' AND FPC_CONFIRMADESCTO =''N''';
         end;
      //
      SqlCdsRemessa.Filtered := False;
      SqlCdsRemessa.Filter   := wFiltro;
      SqlCdsRemessa.Filtered := True;
      SqlCdsRemessa.Open;
      if not (SqlCdsRemessa.IsEmpty ) then
         begin
             if (Rad_aDescontar.Checked) then
                begin
                    if (BitCancelar.Visible) then
                       Bit_Gerar.Enabled := True;
                end;
         end;
      CalculaRemessa;
    except on E:EdataBaseError do
       uteis.erro  (pchar('Erro ao filtar a remessa ! '+e.message));
    end;
end;

procedure TFrmRemessaDescontar.Rad_aDescontarClick(Sender: tObject);
begin
    FiltrarRemessa;
    Objetos_Default;
end;

procedure TFrmRemessaDescontar.BitPesquisarClick(Sender: tObject);
begin
   if not (Selecionou_Faturas ) then
      begin
          Screen.Cursor := Crhourglass;
          if (CurrPesq.Value > 0) or (RxDataInicial.Date >0) then
             begin
                 if (PanData.Visible) then
                    begin
                        if (CbxCarteira.ItemIndex = -1) then
                           begin
                               uteis.aviso('Informe o Tipo de Cobrança !');
                               CbxCarteira.ItemIndex := 0;
                               CbxCarteira.SetFocus;
                               Screen.Cursor := crDefault;
                               exit;
                           end;
                        if (CbxTipoDoc.ItemIndex = -1) then
                           begin
                               uteis.aviso('Informe o Tipo de Documento !');
                               CbxTipoDoc.ItemIndex := 0;
                               CbxTipoDoc.SetFocus;
                               Screen.Cursor := crDefault;
                               exit;
                           end;
                        if (((Rad_Remessa.Checked)or(Rad_Estorno.Checked))
                        and(CurrBco.AsInteger = 9999)) then
                           begin
                              uteis.aviso('Esta Conta não está disponível para este tipo de movimento !');
                              CurrBco.SetFocus;
                              CurrBco.SelectAll;
                              Screen.Cursor := crDefault;
                              exit;
                           end;
                    end;
                 BuscaRemessa;
             end
          else
             begin
                 Mensagens;
                 if (Rad_Fatura.Checked) or (Rad_Cliente.Checked) then
                    CurrPesq.SetFocus
                 else
                    RxDataInicial.SetFocus;
                 BitCancelar.Click;
             end;
          Screen.Cursor := CrDefault;
      end
   else
    begin
        uteis.aviso('Não pode pesquisar, porque existem fatura(s) selecionada(s) !');
        DBGrid1.SetFocus;
        DesabilitaGroups;
    end;
end;

procedure TFrmRemessaDescontar.BuscaRemessa;
Var
  iRegistro : integer;
  sTipoCob,
  sTipoDoc  : String;
begin
    try
      wSql1      := '';
      wSql2      := '';
      wSql3      := '';
      wSql4      := '';
      wSeleciona := '';
      wOrdem     := '';
      //
      sTipoCob := '';
      sTipoDoc := '';
      //
      sTipoCob := IIF(CbxCarteira.ItemIndex = 0,'CT',
                  IIF(CbxCarteira.ItemIndex = 1,'CS',
                  IIF(CbxCarteira.ItemIndex = 2,'CC',
                  IIF(CbxCarteira.ItemIndex = 3,'Cd',
                  IIF(CbxCarteira.ItemIndex = 4,'SR',
                  IIF(CbxCarteira.ItemIndex = 5,'CR',
                  IIF(CbxCarteira.ItemIndex = 6,'CQ','CH')))))))+'''';
      //
      sTipoDoc := IIF(CbxTipoDoc.ItemIndex = 0,'DP',
                  IIF(CbxTipoDoc.ItemIndex = 1,'BL',
                  IIF(CbxTipoDoc.ItemIndex = 2,'RC',
                  IIF(CbxTipoDoc.ItemIndex = 3,'CH',
                  IIF(CbxTipoDoc.ItemIndex = 4,'DN',
                  IIF(CbxTipoDoc.ItemIndex = 5,'OU','CC'))))));
      //
      Screen.Cursor := crHourGlass;
      if (Rad_Fatura.Checked) then
         begin
             wSeleciona := 'where F2.FAT_CODIGO = '''+StrZero(CurrPesq.Text,CurrPesq.MaxLength)+'''';
             wOrdem     := 'F2.FAT_CODIGO';
         end;
      //
      if (Rad_Cliente.Checked) then
         begin
             wSeleciona := 'where F2.CLI_CODIGO = '''+StrZero(CurrPesq.Text,CurrPesq.MaxLength)+'''';
             wOrdem     := 'F2.CLI_CODIGO';
         end;
      //
      if (Rad_Emissao.Checked) then
         begin
             if (CurrBco.Value <> 9999) then
                wSeleciona := 'where F1.FAT_DTEMIS BETWEEN '''+DataAmericana(RxDataInicial.Text)+''' AND '''+DataAmericana(RxDataFinal.Text)+''' AND F2.BAN_CODIGO = '''+StrZero(CurrBco.Text,4)+''''
             else
                wSeleciona := 'where F1.FAT_DTEMIS BETWEEN '''+DataAmericana(RxDataInicial.Text)+''' AND '''+DataAmericana(RxDataFinal.Text)+'''';
             wSeleciona := wSeleciona + ' AND F2.FPC_COBTIPO = '''+sTipoCob+'';
             wSeleciona := wSeleciona + ' AND F2.FPC_TIPODOC = '''+sTipoDoc+'''';
//             wSeleciona := wSeleciona + ' AND F2.FPC_COBTIPO = '''+sTipoCob+'';
             wOrdem     := 'F1.FAT_DTEMIS';
         end;
      //
      if (Rad_Vencto.Checked) then
         begin
             if (CurrBco.Value <> 9999) then
                wSeleciona := 'where F2.FPC_VENCTO BETWEEN '''+DataAmericana(RxDataInicial.Text)+''' AND '''+DataAmericana(RxDataFinal.Text)+''' AND F2.BAN_CODIGO = '''+StrZero(CurrBco.Text,4)+''''
             else
                wSeleciona := 'where F2.FPC_VENCTO BETWEEN '''+DataAmericana(RxDataInicial.Text)+''' AND '''+DataAmericana(RxDataFinal.Text)+'''';
             wSeleciona := wSeleciona + ' AND F2.FPC_COBTIPO = '''+sTipoCob+'';
             wSeleciona := wSeleciona + ' AND F2.FPC_TIPODOC = '''+sTipoDoc+'''';
             wOrdem     := 'F2.FPC_VENCTO';
         end;
      //
      if (Rad_Descto.Checked) then
         begin
             if (CurrBco.Value <> 9999) then
                wSeleciona := 'where F2.FPC_DATADESCTO BETWEEN '''+DataAmericana(RxDataInicial.Text)+''' AND '''+DataAmericana(RxDataFinal.Text)+''' AND F2.BAN_CODIGO = '''+StrZero(CurrBco.Text,4)+''''
             else
                wSeleciona := 'where F2.FPC_DATADESCTO BETWEEN '''+DataAmericana(RxDataInicial.Text)+''' AND '''+DataAmericana(RxDataFinal.Text)+'''';
             wSeleciona := wSeleciona + ' AND F2.FPC_COBTIPO = '''+sTipoCob+'';
             wSeleciona := wSeleciona + ' AND F2.FPC_TIPODOC = '''+sTipoDoc+'''';
             wOrdem     := 'F2.FPC_DATADESCTO';
         end;
      //
      wSql1  := 'Select F2.fat_registro,F2.fat_codigo,F2.fpc_numer,F2.cli_codigo,C1.cli_razao,F2.fpc_vlparc,F2.FPC_SITPAG,F1.fat_dtemis,F2.fpc_vencto,F2.FPC_JUROS_DESCTO,F2.FPC_TIPODOC,F2.FPC_NUM_CHEQUE,F2.FPC_NUM_CHEQUE_DV,';
      wSql2  := 'F2.fpc_pagto,F2.ban_codigo,B1.BAN_APELIDO,B1.EMP_CODIGO,F2.fpc_descontado,F2.fpc_datadescto,F2.fpc_confirmadescto,F2.FPC_CONFIRMADEVOLUCAO,F2.PAG_CODIGO,F2.FPC_EXCLUSAO,F2.FPC_SACADO_CHEQUE from FAT_PC01 F2 ';
      wSql3  := 'LEFT JOIN FAT0000 F1 ON (F2.fat_codigo = F1.fat_codigo) AND (F2.emp_codigo = F1.emp_codigo) ';
      wSql4  := 'LEFT JOIN CLI0000 C1 ON (F2.cli_codigo = C1.cli_codigo) LEFT JOIN BAN0000 B1 ON (F2.BAN_CODIGO = B1.BAN_CODIGO)';
      wSeleciona := wSeleciona + ' AND F2.FPC_EXCLUSAO = ''N''';
      //
      SqlCdsRemessa.Close;
      SqlCdsRemessa.Filtered := False;
      SqlCdsRemessa.Filter   := '';
      SqlCdsRemessa.PacketRecords := -1;
      SqlCdsRemessa.CommandText := SQLDEF('RECEBER',wSql1+wSql2+wSql3+wSql4,wSeleciona,wOrdem,'F2.');
      SqlCdsRemessa.Open;
      iRegistro := SqlCdsRemessa.RecordCount;
      if (not SqlCdsRemessa.IsEmpty) then
         begin
             HabilitaBotao;
             FiltrarRemessa;
             CalculaRemessa;
             if (Rad_aDescontar.Checked) then
                LayOutGerar;
         end
      else
         begin
             Mensagens;
             if (BitCancelar.Visible) then
                begin
                    BitPesquisar.Visible := True;
                    BitCancelar.Visible  := False;
                end;
             MostrarDados;
             if (PanPesq.Visible) then
                CurrPesq.SetFocus
             else
                RxDataInicial.SetFocus;
             //
             if (Rad_aDescontar.Checked) then
                begin
                    Bit_Gerar.Enabled     := False;
                    Bit_TransfBco.Enabled := False;
                end;
         end;
      Screen.Cursor := crDefault;
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao localizar a remessa ! '+e.message));
    end;
end;

procedure TFrmRemessaDescontar.RxDataInicialExit(Sender: tObject);
begin
    RxDataInicial.Text := PreenchaData(RxDataInicial.Text);
    if (not TestaDataStr(RxDataInicial.Text)) then
       RxDataInicial.SetFocus;
end;

procedure TFrmRemessaDescontar.RxDataFinalExit(Sender: tObject);
begin
    RxDataFinal.Text := PreenchaData(RxDataFinal.Text);
    if (not TestaDataStr(RxDataFinal.Text)) then
       RxDataFinal.SetFocus;
    if (RxDataFinal.Date < RxDataInicial.Date) then
       begin
           uteis.aviso('Data Final não pode ser menor que a Data Inicial !');
           RxDataFinal.SetFocus;
       end;
end;

procedure TFrmRemessaDescontar.CurrPesqExit(Sender: tObject);
begin
    if (Rad_Cliente.Checked) then
       begin
           if (CurrPesq.Value>0) then
              if not (SqlCdsCliente.Locate('CLI_CODIGO',StrZero(CurrPesq.Text,CurrPesq.MaxLength),[])) then
                 CurrPesq.Value := 0
              else
                 CbClientes.Text := SqlCdsClienteCLI_RAZAO.AsString;
       end;
end;

procedure TFrmRemessaDescontar.CbClientesClick(Sender: tObject);
begin
    if (Rad_Cliente.Checked) then
       begin
           if not (SqlCdsCliente.Locate('CLI_RAZAO',CbClientes.Text,[])) then
              begin
                  uteis.aviso('Cliente não encontrado !');
                  CbClientes.SetFocus;
                  CbClientes.SelectAll;
              end
           else
              begin
                  CurrPesq.Text := SqlCdsClienteCLI_CODIGO.AsString;
              end;
       end;
end;

procedure TFrmRemessaDescontar.CbClientesExit(Sender: tObject);
begin
    if (ActiveControl.Name = 'CurrPesq') or
       (ActiveControl.Name = 'BitSair') or
       (ActiveControl.Name = 'BitCancelar') then
       begin
           exit;
       end
    else
       begin
           if (Rad_Cliente.Checked) then
              begin
                  if not (SqlCdsCliente.Locate('CLI_RAZAO',CbClientes.Text,[])) then
                     begin
                         uteis.aviso('Cliente não encontrado !');
                         CbClientes.SetFocus;
                         CbClientes.SelectAll;
                     end
                  else
                     begin
                         CurrPesq.Text := SqlCdsClienteCLI_CODIGO.AsString;
                     end;
              end;
       end;
end;

procedure TFrmRemessaDescontar.Mensagens;
begin
    if Rad_Fatura.checked  then
       begin
           if CurrPesq.Text = '' then
              uteis.aviso('Informe o Número da Fatura !')
           else
              uteis.aviso('Código da Fatura não encontrado !');
       end;
    if Rad_Cliente.checked  then
       begin
          if CurrPesq.Text = '' then
             uteis.aviso('Informe o Código do Cliente !')
          else
             uteis.aviso('Cliente não encontrado !');
       end;
    if Rad_Emissao.checked  then
       begin
           if RxDataInicial.Date = 0 then
              uteis.aviso('Informe a Data da Emissão !')
           else
              uteis.aviso('Não há dados no período informado !');
       end;
    if Rad_Vencto.checked  then
       begin
           if RxDataInicial.Date = 0 then
              uteis.aviso('Informe a Data do Vencimento !')
           else
              uteis.aviso('Não há dados no período informado !');
       end;

    if Rad_Descto.checked  then
       begin
           if RxDataInicial.Date = 0 then
              uteis.aviso('Informe a Data do Desconto !')
           else
              uteis.aviso('Não há dados no período informado !');
       end;
end;

procedure TFrmRemessaDescontar.BitCancelarClick(Sender: tObject);
begin
   Desmarcar_Remessa;
    if not (Selecionou_Faturas ) then
       begin
           Screen.Cursor       := crHourGlass;
           //Rad_Emissao.Checked := True;
           MostrarDados;
//           LimparDados;
           HabilitaBotao;
           HabilitaGroups;
           if (Rad_aDescontar.Checked) then
              begin
                  Bit_Gerar.Enabled     := False;
                  Bit_TransfBco.Enabled := False;
              end;
           if (Rad_Fatura.Checked) or (Rad_Cliente.Checked) then
              CurrPesq.SetFocus
           else
              RxDataInicial.SetFocus;
           Screen.Cursor := crDefault;
       end
    else
       begin
           uteis.aviso('Impossível cancelar ! Existem fatura(s) selecionada(s) !');
           DBGrid1.SetFocus;
           DesabilitaGroups; 
       end;
end;

procedure TFrmRemessaDescontar.LimparDados;
begin
    RxDataInicial.Date              := 0;
    RxDataFinal.Date                := 0;
    CurrPesq.Value                  := 0;
    CurrBco.Value                   := 9999;
    CbxBco.Text                     := 'TODOS OS BANCOS';
    CbClientes.Text                 := '';
    CbxCarteira.ItemIndex           := -1;
    CbxTipoDoc.ItemIndex            := -1;
    lbl_limite_cheque.Caption       := '0,00';
    lbl_limite_duplicata.Caption    := '0,00';
    Curr_util_cheq.Value            := 0;
    Curr_util_dupl.Value            := 0;
end;

procedure TFrmRemessaDescontar.HabilitaBotao;
begin
    if ((CurrPesq.Focused)
    or  (RxDataInicial.Focused)) then
       begin
           BitPesquisar.Visible := True;
           BitCancelar.Visible  := False;
       end
    else
       begin
           BitPesquisar.Visible := False;
           BitCancelar.Visible  := True;
       end;
end;

procedure TFrmRemessaDescontar.DBGrid1DrawColumnCell(Sender: tObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
  var
   Check: Integer;
   R: TRect;
begin
    if (not odd(SqlCdsRemessa.RecNo)) then
       if not (GdSelected in State) then
          begin
              DBGrid1.Canvas.Brush.Color := $00FFEFDF;
              DBGrid1.Canvas.FillRect(rect);
              DBGrid1.DefaultDrawDataCell(Rect,column.Field,state);
          end;

    if Column.Field = (SqlCdsRemessaSELECAO_IC) then
       begin
           DBGrid1.Canvas.FillRect(Rect);
           Check := 0;
           if SqlCdsRemessaSELECAO_IC.AsBoolean then
              Check := DFCS_CHECKED
           else
              Check := 0;
           R:=Rect;
           TDBGrid(sender).Canvas.Font.Color :=  TDBGrid(sender).Canvas.Brush.Color;
           InflateRect(R,-2,-2); {Diminue o tamanho do CheckBox}
           DrawFrameControl(DBGrid1.Canvas.Handle,R,DFC_BUTTON, DFCS_BUTTONCHECK or Check);
       end;
end;

procedure TFrmRemessaDescontar.Selecao_Remessa;
begin
    if ((not SqlCdsRemessaBAN_CODIGO.IsNull ) or (SqlCdsRemessaBAN_CODIGO.AsString <> '')) then
       begin
           try
             SqlCdsRemessa.Edit;
             if (SqlCdsRemessaSELECAO_IC.AsBoolean) then
                begin
                    LBL_QTDE.Caption           := StrZero(IntToStr(StrToInt(LBL_QTDE.Caption)-1),4);
                    CurrTotalSelecionado.Value := CurrTotalSelecionado.Value - SqlCdsRemessaFPC_VLPARC.AsCurrency;
                    if (Rad_Remessa.Checked) then
                       begin
                           if (wTipo = 'D') then
                              Curr_Util_Dupl.Value := (Curr_Util_Dupl.Value - SqlCdsRemessaFPC_VLPARC.AsCurrency)
                           else
                              Curr_util_cheq.Value := (Curr_util_cheq.Value - SqlCdsRemessaFPC_VLPARC.AsCurrency);
                       end;
                    SqlCdsRemessaSELECAO_IC.AsBoolean := False;
                    SqlCdsRemessa.Post;
                    if (Rad_Estorno.Checked) and not (SqlCdsRemessaSELECAO_IC.AsBoolean ) then
                       begin
                           if (wTipo = 'D') then
                              Curr_Util_Dupl.Value := (Curr_Util_Dupl.Value + SqlCdsRemessaFPC_VLPARC.AsCurrency)
                           else
                              Curr_util_cheq.Value := (Curr_util_cheq.Value + SqlCdsRemessaFPC_VLPARC.AsCurrency);
                       end;
                end
             else
                begin
                    if (Rad_Remessa.Checked) then
                       begin
                           if (SqlCdsRemessaDIAS_CC.AsInteger >= 0) then
                              begin
                                  if not (Ultrapassou_Limite_Utilizado(SqlCdsRemessaFPC_VLPARC.AsCurrency) ) then
                                     begin
                                         LBL_QTDE.Caption           := StrZero(IntToStr(StrToInt(LBL_QTDE.Caption)+1),4);
                                         CurrTotalSelecionado.Value := CurrTotalSelecionado.Value + SqlCdsRemessaFPC_VLPARC.AsCurrency;
                                         if (wTipo = 'D') then
                                            Curr_Util_Dupl.Value := (Curr_Util_Dupl.Value + SqlCdsRemessaFPC_VLPARC.AsCurrency)
                                         else
                                            Curr_util_cheq.Value := (Curr_util_cheq.Value + SqlCdsRemessaFPC_VLPARC.AsCurrency);
                                         SqlCdsRemessaSELECAO_IC.AsBoolean := True;
                                         SqlCdsRemessa.Post;
                                     end;
                              end
                           else
                              begin
                                  uteis.aviso('Impossível selecionar uma fatura vencida !');
                                  DBGrid1.SetFocus;
                              end;
                       end;
                    if (Rad_Transf.Checked) then
                       begin
                           if (SqlCdsRemessaDIAS_CC.AsInteger >= 0) then
                              begin
                                  LBL_QTDE.Caption                  := StrZero(IntToStr(StrToInt(LBL_QTDE.Caption)+1),4);
                                  CurrTotalSelecionado.Value        := CurrTotalSelecionado.Value + SqlCdsRemessaFPC_VLPARC.AsCurrency;
                                  SqlCdsRemessaSELECAO_IC.AsBoolean := True;
                                  SqlCdsRemessa.Post;
                              end
                           else
                              begin
                                  uteis.aviso('Impossível selecionar uma fatura vencida !');
                                  DBGrid1.SetFocus;
                              end;
                       end;
                    if (Rad_Estorno.Checked) then
                       begin
                           if (SqlCdsRemessaDIAS_CC.AsInteger >= 0) then
                              begin
                                  LBL_QTDE.Caption                  := StrZero(IntToStr(StrToInt(LBL_QTDE.Caption)+1),4);
                                  CurrTotalSelecionado.Value        := CurrTotalSelecionado.Value + SqlCdsRemessaFPC_VLPARC.AsCurrency;
                                  if (wTipo = 'D') then
                                     Curr_Util_Dupl.Value := (Curr_Util_Dupl.Value - SqlCdsRemessaFPC_VLPARC.AsCurrency)
                                  else
                                     Curr_util_cheq.Value := (Curr_util_cheq.Value - SqlCdsRemessaFPC_VLPARC.AsCurrency);
                                  SqlCdsRemessaSELECAO_IC.AsBoolean := True;
                                  SqlCdsRemessa.Post;
                              end
                           else
                              begin
                                  uteis.aviso('Impossível selecionar uma fatura vencida !');
                                  DBGrid1.SetFocus;
                              end;
                       end;
                end;
             if (GrpGerar.Enabled) then
                DesabilitaGroups;
           except on E:EDataBaseError do
              uteis.erro  (pchar('Erro ao Selecionar a parcela ! '+e.message));
           end;
       end
    else
       begin
           uteis.aviso('Favor informar a conta nesta fatura !');
           DBGrid1.SetFocus;
       end;
end;

procedure TFrmRemessaDescontar.DBGrid1DblClick(Sender: tObject);
begin
//    if (BitCancelar.Visible) then
       Selecao_Remessa;
end;

procedure TFrmRemessaDescontar.DBGrid1KeyPress(Sender: tObject;
  var Key: Char);
begin
    if (Key = #13) then
       begin
           if (BitCancelar.Visible) then
              Selecao_Remessa;
           Key := #0;
       end;
end;

procedure TFrmRemessaDescontar.Bit_GerarClick(Sender: tObject);
begin
    if (Selecionou_Faturas ) then
       begin
           if (BitCancelar.Visible) then
              begin
                  DesabilitaObjetos;
                  wBotao := 'G';
                  PanTitulo.Caption  := 'Gerar Remessa';
                  LBL_DATA.Caption   := 'Data da Remessa:';
                  PanRemessa.Visible := True;
                  PanRemessa.Height  := 130;
                  PanValor.Visible   := False;
                  GrpBanco.Visible   := False;
                  GrpCobranca.Visible:= False;
                  GrpRemessa.Visible := True;
                  FormaPagamento.Visible := True;
                  DataRemessa.Date   := Now;
                  DataRemessa.SetFocus;
              end;
       end
    else
       begin
           uteis.aviso('Selecione a(s) Fatura(s) para Gerar Remessa !');
           DBGrid1.SetFocus;
       end;
end;

procedure TFrmRemessaDescontar.RxDataInicialEnter(Sender: tObject);
begin
    if (BitCancelar.Visible) then
       begin
           BitCancelar.Click;
       end;
    RxDataInicial.SelectAll;
end;

procedure TFrmRemessaDescontar.SelecionarTodos1Click(Sender: tObject);
begin
    if (BitCancelar.Visible) then
       begin
           try
             SqlCdsRemessa.First;
             SqlCdsRemessa.DisableControls;
             while not SqlCdsRemessa.Eof do
              begin
                  SqlCdsRemessa.Edit;
                  if not (SqlCdsRemessaSELECAO_IC.AsBoolean ) then
                     begin
                         if (Rad_Remessa.Checked) then
                            begin
                               if (SqlCdsRemessaDIAS_CC.AsInteger >= 0) then
                                  begin
                                     if not (Ultrapassou_Limite_Utilizado(SqlCdsRemessaFPC_VLPARC.AsCurrency) ) then
                                        begin
                                            LBL_QTDE.Caption           := StrZero(IntToStr(StrToInt(LBL_QTDE.Caption)+1),4);
                                            CurrTotalSelecionado.Value := CurrTotalSelecionado.Value + SqlCdsRemessaFPC_VLPARC.AsCurrency;
                                            if (wTipo = 'D') then
                                               Curr_Util_Dupl.Value := (Curr_Util_Dupl.Value + SqlCdsRemessaFPC_VLPARC.AsCurrency)
                                            else
                                               Curr_util_cheq.Value := (Curr_util_cheq.Value + SqlCdsRemessaFPC_VLPARC.AsCurrency);
                                            SqlCdsRemessaSELECAO_IC.AsBoolean := True;
                                        end;
                                  end;
                            end;
                         if (Rad_Estorno.Checked) then
                            begin
                                LBL_QTDE.Caption           := StrZero(IntToStr(StrToInt(LBL_QTDE.Caption)+1),4);
                                CurrTotalSelecionado.Value := CurrTotalSelecionado.Value + SqlCdsRemessaFPC_VLPARC.AsCurrency;
                                if (wTipo = 'D') then
                                   Curr_Util_Dupl.Value := (Curr_Util_Dupl.Value - SqlCdsRemessaFPC_VLPARC.AsCurrency)
                                else
                                   Curr_util_cheq.Value := (Curr_util_cheq.Value - SqlCdsRemessaFPC_VLPARC.AsCurrency);
                                SqlCdsRemessaSELECAO_IC.AsBoolean := True;
                            end;
                         if (Rad_Transf.Checked) then
                            begin
                                LBL_QTDE.Caption           := StrZero(IntToStr(StrToInt(LBL_QTDE.Caption)+1),4);
                                CurrTotalSelecionado.Value := CurrTotalSelecionado.Value + SqlCdsRemessaFPC_VLPARC.AsCurrency;
                                SqlCdsRemessaSELECAO_IC.AsBoolean := True;
                            end;
                     end;
                  SqlCdsRemessa.Post;
                  SqlCdsRemessa.Next;
              end;
             SqlCdsRemessa.EnableControls;
             SqlCdsRemessa.First;
           except on E:EDataBaseError do
              uteis.erro  (pchar('Erro ao selecionar todos ! '+e.message));
           end;
       end;
end;

procedure TFrmRemessaDescontar.DesmarcarTodos1Click(Sender: tObject);
begin
 //   if (BitCancelar.Visible) then
       Desmarcar_Remessa;
end;

procedure TFrmRemessaDescontar.Desmarcar_Remessa;
begin
    try
      SqlCdsRemessa.First;
      SqlCdsRemessa.DisableControls;
      while not SqlCdsRemessa.Eof do
       begin
           SqlCdsRemessa.Edit;
           if (Rad_Remessa.Checked) then
              begin
                 if (SqlCdsRemessaSELECAO_IC.AsBoolean ) then
                    begin
                        LBL_QTDE.Caption           := StrZero(IntToStr(StrToInt(LBL_QTDE.Caption)-1),4);
                        CurrTotalSelecionado.Value := CurrTotalSelecionado.Value - SqlCdsRemessaFPC_VLPARC.AsCurrency;
                        if (wTipo = 'D') then
                           Curr_Util_Dupl.Value := (Curr_Util_Dupl.Value - SqlCdsRemessaFPC_VLPARC.AsCurrency)
                        else
                           Curr_util_cheq.Value := (Curr_util_cheq.Value - SqlCdsRemessaFPC_VLPARC.AsCurrency);
                        SqlCdsRemessaSELECAO_IC.AsBoolean := False;
                    end;
              end;
           if (Rad_Estorno.Checked) then
              begin
                 if (SqlCdsRemessaSELECAO_IC.AsBoolean ) then
                    begin
                        LBL_QTDE.Caption           := StrZero(IntToStr(StrToInt(LBL_QTDE.Caption)-1),4);
                        CurrTotalSelecionado.Value := CurrTotalSelecionado.Value - SqlCdsRemessaFPC_VLPARC.AsCurrency;
                        if (wTipo = 'D') then
                           Curr_Util_Dupl.Value := (Curr_Util_Dupl.Value + SqlCdsRemessaFPC_VLPARC.AsCurrency)
                        else
                           Curr_util_cheq.Value := (Curr_util_cheq.Value + SqlCdsRemessaFPC_VLPARC.AsCurrency);
                        SqlCdsRemessaSELECAO_IC.AsBoolean := False;
                    end;
              end;
           if (Rad_Transf.Checked) then
              begin
                 if (SqlCdsRemessaSELECAO_IC.AsBoolean ) then
                    begin
                        LBL_QTDE.Caption           := StrZero(IntToStr(StrToInt(LBL_QTDE.Caption)-1),4);
                        CurrTotalSelecionado.Value := CurrTotalSelecionado.Value - SqlCdsRemessaFPC_VLPARC.AsCurrency;
                        SqlCdsRemessaSELECAO_IC.AsBoolean := False;
                    end;
              end;
           SqlCdsRemessa.Post;
           SqlCdsRemessa.Next;
       end;
      SqlCdsRemessa.EnableControls;
      SqlCdsRemessa.First;
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao selecionar todos ! '+e.message));
    end;
end;

procedure TFrmRemessaDescontar.CurrBcoExit(Sender: tObject);
begin
    if (CurrBco.Value<>9999) then
       if not (SqlCdsBco.Locate('BAN_CODIGO',StrZero(CurrBco.Text,CurrBco.MaxLength),[])) then
          begin
              CurrBco.Value    := 9999;
              CbxBco.ItemIndex := 0;
          end
       else
          begin
              CbxBco.Text := SqlCdsBcoBAN_APELIDO.AsString;
              Mostrar_Limite;
          end;
end;

procedure TFrmRemessaDescontar.CbxBcoClick(Sender: tObject);
begin
    if (CbxBco.ItemIndex <> 0) then
       begin
           if not (SqlCdsBco.Locate('BAN_APELIDO',CbxBco.Text,[])) then
              begin
                  uteis.aviso('Conta não encontrado !');
                  CbxBco.SetFocus;
                  CbxBco.SelectAll;
              end
           else
              begin
                  CurrBco.Text := SqlCdsBcoBAN_CODIGO.AsString;
                  Mostrar_Limite;
              end;
       end
    else
       begin
           CurrBco.Text     := '9999';
           CbxBco.ItemIndex := 0;
       end;
end;

procedure TFrmRemessaDescontar.CbxBcoExit(Sender: tObject);
begin
    if (ActiveControl.Name = 'RxDataInicial') or
       (ActiveControl.Name = 'BitSair') or
       (ActiveControl.Name = 'BitCancelar') then
       begin
           exit;
       end
    else
       begin
           if (CurrBco.Value <> 9999) then
              begin
                  if not (SqlCdsBco.Locate('BAN_APELIDO',CbxBco.Text,[])) then
                     begin
                         uteis.aviso('Conta não encontrado !');
                         CurrBco.Text := '9999';
                         CbxBco.SetFocus;
                         CbxBco.SelectAll;
                     end
                  else
                     begin
                         CurrBco.Text := SqlCdsBcoBAN_CODIGO.AsString;
                         Mostrar_Limite;
                     end;
              end;
       end;
end;

procedure TFrmRemessaDescontar.BitFecharClick(Sender: tObject);
begin
    PanRemessa.Visible := False;
    HabilitaObjetos;
    EdtCodBco.Text          := '';
    EdtDesConta.Text        := '';
    DataRemessa.Date        := 0;
    CurrTransfBanco.Value   := 0;
    Curr_Total_Transf.Value := 0;
    CbxTransfBanco.Text     := '';
end;

procedure TFrmRemessaDescontar.BitImprimeEtiqClick(Sender: tObject);
Var
  wCodForCheq,wCodForDupl,wCodFor,wCodLancto,sTpCobranca :String;
begin
    wTipo := '';
    case CbxTipoDoc.ItemIndex of
      0:wTipo := 'D';
      3:wTipo := 'C';
    end;
    if (wBotao = 'T') then //foi clicado no botao transf. entre contas
       begin
          sTpCobranca := IIF(CbCobranca.ItemIndex = 0,'CT',
                         IIF(CbCobranca.ItemIndex = 1,'CS',
                         IIF(CbCobranca.ItemIndex = 2,'CC',
                         IIF(CbCobranca.ItemIndex = 3,'Cd',
                         IIF(CbCobranca.ItemIndex = 4,'SR',
                         IIF(CbCobranca.ItemIndex = 5,'CR',
                         IIF(CbCobranca.ItemIndex = 6,'CQ','CH')))))))+'''';

           if (CurrTransfBanco.Value > 0) then
              begin
                  try
                    Screen.Cursor := crHourGlass;
                    SqlCdsRemessa.First;
                    SqlCdsRemessa.DisableControls;
                    while not SqlCdsRemessa.Eof do
                     begin
                         if (SqlCdsRemessaSELECAO_IC.AsBoolean ) then
                            begin
                                Transf_Entre_Bancos(SqlCdsRemessaFAT_REGISTRO.AsString,
                                                    StrZero(CurrTransfBanco.Text,4),
                                                    sTpCobranca);
                                LBL_QTDE.Caption           := StrZero(IntToStr(StrToInt(LBL_QTDE.Caption)-1),4);
                                CurrTotalSelecionado.Value := CurrTotalSelecionado.Value - SqlCdsRemessaFPC_VLPARC.AsCurrency;
                            end;
                        SqlCdsRemessa.Next;
                     end;
                    SqlCdsRemessa.EnableControls;
                    Screen.Cursor := crDefault;
                    uteis.aviso('Transferencia entre contas efetuada com sucesso !');
                    SqlCdsRemessa.Refresh;
                  except on E:EDataBaseError do
                     uteis.erro  (pchar('Erro ao gerar a remessa ! '+e.message));
                  end;
              end
           else
              begin
                  uteis.aviso('Informe a Conta !');
                  CurrTransfBanco.SetFocus;
              end;
       end;
    if (wBotao = 'G') then //Clicou no botao Gerar Remessa
       begin
           if (EdFormaPagamento.Text = '') then
              begin
                 uteis.aviso('Informe a Forma de Pagamento !');
                 EdFormaPagamento.SetFocus;
                 Exit;
              end
           else
           if (DataRemessa.Date > 0) then
              begin
                  try
                    {Atualiza o Limite Utilizado}
                    Atualizar_Limite_Conta('C',
                                           wTipo,
                                           SqlCdsBcoEMP_CODIGO.AsString,
                                           SqlCdsBcoBAN_CODIGO.AsString,
                                           CurrTotalSelecionado.Text);
                    //
                    {Busca o Código de Lançamento do Contas a pagar}
                    wCodLanctoPagar := SequenciadorPRC(DataCadastros.SQLConnection1,dbInicio.Empresa.EMP_CODIGO, 'PAG0000', 'PAG_CODIGO', 0);
                    {Busca os Código do Fornecedor no Parametro}
                    DataCadastros.sqlUpdate.Close;
                    DataCadastros.SqlUpdate.sql.text :=SQLDEF('PARAMETROS','Select P1.PMT_FOR_DESCTO_CHEQ_PAG,P1.PMT_FOR_DESCTO_DUPL_PAG from PRMT0001 P1','','P1.EMP_CODIGO','P1.');
                    DataCadastros.sqlUpdate.Open;
                    if (not DataCadastros.sqlUpdate.IsEmpty) then
                       begin
                           wCodFor     := '';
                           wCodForCheq := DataCadastros.sqlUpdate.FieldByName('PMT_FOR_DESCTO_CHEQ_PAG').AsString;
                           wCodForDupl := DataCadastros.sqlUpdate.FieldByName('PMT_FOR_DESCTO_DUPL_PAG').AsString;
                       end;
                    DataCadastros.sqlUpdate.Close;
                    if (wTipo = 'D') then
                       wCodFor := wCodForDupl
                    else
                       wCodFor := wCodForCheq;
                    //
                    Screen.Cursor := crHourGlass;
                    SqlCdsRemessa.First;
                    SqlCdsRemessa.DisableControls;
                    wTotal_Descto := 0;
                    while not SqlCdsRemessa.Eof do
                     begin
                         if (SqlCdsRemessaSELECAO_IC.AsBoolean ) then
                            begin
                                Atualiza_Remessa('G',
                                                 SqlCdsRemessaFAT_REGISTRO.AsString,
                                                 StrZero(wCodLanctoPagar,5));
                                LBL_QTDE.Caption           := StrZero(IntToStr(StrToInt(LBL_QTDE.Caption)-1),4);
                                CurrTotalSelecionado.Value := CurrTotalSelecionado.Value - SqlCdsRemessaFPC_VLPARC.AsCurrency;
                            end;
                        SqlCdsRemessa.Next;
                     end;
                    SqlCdsRemessa.EnableControls;
                    if (wTotal_Descto > 0) then
                       begin
                           {Inserir o Lançamento no Contas a Pagar}
                           Inserir_Lancto_Pagar(dbInicio.Empresa.EMP_CODIGO,
                                                wCodLanctoPagar,
                                                FloatToStr(wTotal_Descto),
                                                wCodFor,
                                                DataRemessa.Text);
                       end;
                    Screen.Cursor := crDefault;
                    uteis.aviso('Remessa gerada com sucesso !');
                    SqlCdsRemessa.Refresh;
                  except on E:EDataBaseError do
                     uteis.erro  (pchar('Erro ao gerar a remessa ! '+e.message));
                  end;
              end
           else
              begin
                  uteis.aviso('Informe a data da remessa !');
                  DataRemessa.SetFocus;
              end;
       end;
    if (wBotao = 'E') then  //Clicou no botao Estornar Remessa
       begin
           try
             Atualizar_Limite_Conta('D',
                                    wTipo,
                                    SqlCdsBcoEMP_CODIGO.AsString,
                                    SqlCdsBcoBAN_CODIGO.AsString,
                                    CurrTotalSelecionado.Text);
             //
             Screen.Cursor := crHourGlass;
             SqlCdsRemessa.DisableControls;
             SqlCdsRemessa.First;
             {Pega o Codigo do lançamento}
             wCodLancto   := SqlCdsRemessaPAG_CODIGO.AsString;
             wJurosDescto := 0;
             while not SqlCdsRemessa.Eof do
              begin
                  if (SqlCdsRemessaSELECAO_IC.AsBoolean ) then
                     begin
                         if ((SqlCdsRemessaFPC_DESCONTADO.AsString = 'S') and
                            (SqlCdsRemessaFPC_CONFIRMADEVOLUCAO.AsString = 'N') and
                            (SqlCdsRemessaFPC_DATADESCTO.AsDateTime = DataRemessa.Date)) then
                            begin
                                {Atribui o Juros do Descto na variavel para fazer o estorno
                                no Lançamento no contas a pagar}
                                wJurosDescto := wJurosDescto + SqlCdsRemessaFPC_JUROS_DESCTO.AsCurrency;
                                Atualiza_Remessa('E',
                                                 SqlCdsRemessaFAT_REGISTRO.AsString,
                                                 SqlCdsRemessaPAG_CODIGO.AsString);
                            end;
                         LBL_QTDE.Caption           := StrZero(IntToStr(StrToInt(LBL_QTDE.Caption)-1),4);
                         CurrTotalSelecionado.Value := CurrTotalSelecionado.Value - SqlCdsRemessaFPC_VLPARC.AsCurrency;
                     end;
                 SqlCdsRemessa.Next;
              end;
             SqlCdsRemessa.EnableControls;
             {Compara o valor da variavel wJurosDescto com o valor do lancamento
              Se o Valor da variavel for igual do Lançamento, então exclui o lancamento,
              senao faz a diminuiçao do valor do lançamento no contas a pagar}
             //
             wSQL1      := 'Select P1.PAG_VLNOTA From PAG0000 P1';
             wSeleciona := 'where PAG_CODIGO = '''+wCodLancto+''' and PAG_DTEMIS = '''+DataAmericana(DataRemessa.Text)+'''';
             //
             DataCadastros.sqlUpdate.Close;
             DataCadastros.SqlUpdate.sql.text :=SQLDEF('PAGAR',wSQL1,wSeleciona,'','P1.');
             DataCadastros.sqlUpdate.Open;
             if (not DataCadastros.sqlUpdate.IsEmpty) then
                begin
                    if (DataCadastros.sqlUpdate.FieldByName('PAG_VLNOTA').AsCurrency = wJurosDescto) then
                       begin
                           wSQL1 := 'Delete from PAG0000 ';
                           //
                           DataCadastros.sqlUpdate.Close;
                           DataCadastros.SqlUpdate.sql.text :=SQLDEF('PAGAR',wSQL1,wSeleciona,'','');
                           DataCadastros.sqlUpdate.Execsql;
                           //
                           wSQL1      := 'Delete from PAG_PC01 ';
                           wSeleciona := 'where PAG_CODIGO = '''+wCodLancto+''' and PPC_DTEMIS = '''+DataAmericana(DataRemessa.Text)+'''';
                           //
                           DataCadastros.sqlUpdate.Close;
                           DataCadastros.SqlUpdate.sql.text :=SQLDEF('PAGAR',wSQL1,wSeleciona,'','');
                           DataCadastros.sqlUpdate.Execsql;
                           //
                       end
                    else
                       begin
                           wSql1 := 'Update PAG0000 set '+
                                    'PAG_VLNOTA = (PAG_VLNOTA - '+ValorAmericano(FloatToStr(wJurosDescto))+')';
                           //
                           DataCadastros.sqlUpdate.Close;
                           DataCadastros.SqlUpdate.sql.text :=SQLDEF('PAGAR',wSQL1,wSeleciona,'','');
                           DataCadastros.sqlUpdate.Execsql;
                           //
                           wSql1 := 'Update PAG_PC01 set '+
                                    'PPC_VLPARC = (PPC_VLPARC - '+ValorAmericano(FloatToStr(wJurosDescto))+')';
                           wSeleciona := 'where PAG_CODIGO = '''+wCodLancto+''' and PPC_DTEMIS = '''+DataAmericana(DataRemessa.Text)+'''';
                           //
                           DataCadastros.sqlUpdate.Close;
                           DataCadastros.SqlUpdate.sql.text :=SQLDEF('PAGAR',wSQL1,wSeleciona,'','');
                           DataCadastros.sqlUpdate.Execsql;
                           //
                       end;
                end;
             //
             uteis.aviso('Remessa estornada com sucesso !');
             SqlCdsRemessa.Refresh;
           except on E:EDataBaseError do
             uteis.erro  (pchar('Erro ao estornar a remessa !'+e.message));
           end;
       end;
     LimparDados;
     HabilitaGroups;
     if (PanData.Visible) then
        RxDataInicial.SetFocus
     else
        CurrPesq.SetFocus;
     HabilitaBotao;
     MostrarDados;
     CalculaRemessa;
     EdtCodBco.Text          := '';
     EdtDesConta.Text        := '';
     DataRemessa.Date        := 0;
     CurrTransfBanco.Value   := 0;
     Curr_Total_Transf.Value := 0;
     CbxTransfBanco.Text     := '';
     PanRemessa.Visible      := False;
     HabilitaObjetos;
     Screen.Cursor := crDefault;
end;

procedure TFrmRemessaDescontar.DataRemessaExit(Sender: tObject);
begin
    if (DataRemessa.Text <> '  /  /    ') then
       begin
           DataRemessa.Text := PreenchaData(DataRemessa.Text);
           if (not TestaDataStr(DataRemessa.Text)) then
              DataRemessa.SetFocus;
       end;
end;

procedure TFrmRemessaDescontar.Atualiza_Remessa(const pTipo,pRegistro,pCod_Pagar: String);
var
   sRegistroRecebimento:String;

begin
    try
      if (pTipo = 'G') then
         begin
             wJurosDescto := 0;
             wDias        := 0;
             {Calcula o juros da Duplicata/Cheque que foi descontado}
             wDias        := StrToInt(DifDias(SqlCdsRemessaFPC_VENCTO.AsDateTime,DataRemessa.Date));
             //
             if (wTipo = 'D') then
                wJurosDescto := ((((SqlCdsRemessaFPC_VLPARC.AsCurrency * SqlCdsBcoBAN_JUROS_DESCTODUPL.AsCurrency)/30)*wDias)/100)
             else
                wJurosDescto := ((((SqlCdsRemessaFPC_VLPARC.AsCurrency * SqlCdsBcoBAN_JUROS_DESCTOCHEQ.AsCurrency)/30)*wDias)/100);
             {Verifica se o Juros Calculado for menor que zero, atribui Zero na variavel}
             if (wJurosDescto < 0) then
                wJurosDescto := 0;
             //
             {Totaliza o Total de Desconto do Juros cobrado}
             wTotal_Descto := wTotal_Descto + wJurosDescto;
             //
             wSql1 := 'Update FAT_PC01 set '+
                      //'FPC_SITPAG = ''L'','+
                      'FPC_STATUS = ''Liq.p/Descto'','+
                      //'FPC_VLPAGO = FPC_VLPARC,'+
                      //'FPC_PAGTO = '''+DataAmericana(DataRemessa.Text)+''','+
                      'FPC_DATADESCTO = '''+DataAmericana(DataRemessa.Text)+''','+
                      'FPC_IMPDUP = ''S'','+
                      'FPC_DESCONTADO = ''S'','+
                      'FPC_JUROS_DESCTO = '+ValorAmericano(FloatToStr(wJurosDescto))+','+
                      'FPC_CONFIRMADESCTO = ''N'','+
                      'PAG_CODIGO = '''+pCod_Pagar+'''';
             ContasReceberBaixa(pRegistro,
                                SqlCdsRemessaBAN_CODIGO.AsString,
                                EdFormaPagamento.Text,
                                dbInicio.Usuario.Codigo,
                                SqlCdsRemessaFPC_VLPARC.asCurrency,
                                SqlCdsRemessaFPC_VLPARC.asCurrency,
                                0,
                                0,
                                0,
                                SqlCdsRemessaFPC_VLPARC.asCurrency,
                                DataRemessa.Date);
         end;
      if (pTipo = 'E') then
         begin
(*
             {Diminui no Contas a Pagar, o valor do lançamento,
              referente o valor do juros estornado}
             wSql1      := 'Update PAG0000 set '+
                           'PAG_VLNOTA = (PAG_VLNOTA - '+ValorAmericano(SqlCdsRemessaFPC_JUROS_DESCTO.AsString)+')';
             //
             wSeleciona := 'where PAG_CODIGO = '''+pCod_Pagar+''' and PAG_DTEMIS = '''+DataAmericana(SqlCdsRemessaFAT_DTEMIS.AsString)+'''';
             //
             DataCadastros.sqlUpdate.Close;
             DataCadastros.SqlUpdate.sql.text :=SQLDEF('PAGAR',wSql1,wSeleciona,'','');
             DataCadastros.sqlUpdate.Execsql;
             //
*)
             wSql1 := 'Update FAT_PC01 set '+
                      //'FPC_SITPAG = ''P'','+
                      //'FPC_STATUS = ''Pendente'','+
                      //'FPC_VLPAGO = 0,'+
                      //'FPC_PAGTO = Null,'+
                      'FPC_DATADESCTO = Null,'+
                      'FPC_DESCONTADO = ''N'','+
                      'FPC_CONFIRMADESCTO = ''N'','+
                      'PAG_CODIGO = Null,'+
                      'FPC_JUROS_DESCTO = 0';
             DataCadastros.sqlUpdate.Close;
             DataCadastros.SqlUpdate.sql.text :=SQLDEF('RECEBER','SELECT * FROM  FAT_RECEBIMENTO',' WHERE FAT_REGISTRO = '+QuotedStr(pRegistro),'','');
             DataCadastros.sqlUpdate.Open;
             if (not DataCadastros.sqlUpdate.IsEmpty) then
               begin
                  sRegistroRecebimento := DataCadastros.sqlUpdate.FieldByName('FRE_REGISTRO').AsString;
                  ContasReceberEstornaBaixa(sRegistroRecebimento);     
               end;
             DataCadastros.sqlUpdate.Close;


         end;
      //
      wSeleciona := ' Where FAT_REGISTRO = '+pRegistro+'';
      DataCadastros.sqlUpdate.Close;
      DataCadastros.SqlUpdate.sql.text :=wSql1 + wSeleciona;
      DataCadastros.sqlUpdate.Execsql;
    except on E:EDataBaseError do
       if (pTipo = 'G') then
          uteis.erro  (pchar('Erro ao gerar a remessa ! '+e.message))
       else
          uteis.erro  (pchar('Erro ao estornar a remessa ! '+e.message));
    end;
end;

procedure TFrmRemessaDescontar.Bit_EstornarClick(Sender: tObject);
begin
    if (Selecionou_Faturas ) then
       begin
           if (BitCancelar.Visible) then
              begin
                  try
                    Screen.Cursor := crHourGlass;
{
                    Atualizar_Limite_Conta('D',
                                           wTipo,
                                           SqlCdsBcoEMP_CODIGO.AsString,
                                           SqlCdsBcoBAN_CODIGO.AsString,
                                           CurrTotalSelecionado.Text);
}
                    //
                    SqlCdsRemessa.DisableControls;
                    SqlCdsRemessa.First;
                    while not SqlCdsRemessa.Eof do
                     begin
                         if (SqlCdsRemessaSELECAO_IC.AsBoolean ) then
                            begin
                                if ((SqlCdsRemessaFPC_DESCONTADO.AsString = 'S') and
                                   (SqlCdsRemessaFPC_CONFIRMADEVOLUCAO.AsString = 'N')) then //and
//                                   (SqlCdsRemessaFPC_DATADESCTO.AsDateTime = DataRemessa.Date)) then
                                   begin
                                       Atualizar_Limite_Conta('D',
                                                              wTipo,
                                                              SqlCdsRemessaEMP_CODIGO.AsString,
                                                              SqlCdsRemessaBAN_CODIGO.AsString,
                                                              SqlCdsRemessaFPC_VLPARC.AsString);
                                       //
                                       Atualiza_Remessa('E',
                                                        SqlCdsRemessaFAT_REGISTRO.AsString,
                                                        SqlCdsRemessaPAG_CODIGO.AsString);
                                       {Diminui do Contas a Pagar o valor do Juros}
                                       Diminui_Juros_Lancto_Pagar(SqlCdsRemessaPAG_CODIGO.AsString,
                                                                  SqlCdsRemessaFPC_DATADESCTO.AsString,
                                                                  SqlCdsRemessaFPC_JUROS_DESCTO.AsString);
                                   end;
                                LBL_QTDE.Caption           := StrZero(IntToStr(StrToInt(LBL_QTDE.Caption)-1),4);
                                CurrTotalSelecionado.Value := CurrTotalSelecionado.Value - SqlCdsRemessaFPC_VLPARC.AsCurrency;
                            end;
                        SqlCdsRemessa.Next;
                     end;
                    //
                    SqlCdsRemessa.EnableControls;
                    //
                    uteis.aviso('Remessa estornada com sucesso !');
                    SqlCdsRemessa.Refresh;
                    LimparDados;
                    HabilitaGroups;
                    if (PanData.Visible) then
                       RxDataInicial.SetFocus
                    else
                       CurrPesq.SetFocus;
                    HabilitaBotao;
                    MostrarDados;
                    CalculaRemessa;
                    EdtCodBco.Text          := '';
                    EdtDesConta.Text        := '';
                    DataRemessa.Date        := 0;
                    CurrTransfBanco.Value   := 0;
                    Curr_Total_Transf.Value := 0;
                    CbxTransfBanco.Text     := '';
                    PanRemessa.Visible      := False;
                    HabilitaObjetos;
                    Screen.Cursor := crDefault;
                  except on E:EDataBaseError do
                    uteis.erro  (pchar('Erro ao estornar a remessa !'+e.message));
                  end;
              end;
       end
    else
       begin
           uteis.aviso('Selecione a(s) Fatura(s) para Estorno !');
           DBGrid1.SetFocus;
       end;
(*
    if (Selecionou_Faturas = True) then
       begin
           if (BitCancelar.Visible) then
              begin
                  DesabilitaObjetos;
                  wBotao := 'E';
                  PanTitulo.Caption  := 'Estornar Faturas';
                  LBL_DATA.Caption   := 'Data do Desconto:';
                  PanRemessa.Visible := True;
                  PanRemessa.Height  := 130;
                  GrpBanco.Visible   := False;
                  PanValor.Visible   := False;
                  GrpCobranca.Visible:= False;
                  GrpRemessa.Visible := True;
                  DataRemessa.Date   := Now;
                  DataRemessa.SetFocus;
              end;
       end
    else
       begin
           uteis.aviso('Selecione a(s) Fatura(s) para Estorno !');
           DBGrid1.SetFocus;
       end;
*)
end;

procedure TFrmRemessaDescontar.CalculaRemessa;
begin
    try
      CurrTotalGeral.Value := 0;
      SqlCdsRemessa.DisableControls;
      SqlCdsRemessa.First;
      while not SqlCdsRemessa.Eof do
       begin
           CurrTotalGeral.Value := CurrTotalGeral.Value + SqlCdsRemessaFPC_VLPARC.AsCurrency;
           SqlCdsRemessa.Next;
       end;
      SqlCdsRemessa.First;       
      SqlCdsRemessa.EnableControls;  
    except on E:EDataBaseError do
      uteis.erro  (pchar('Erro ao calcular remessa ! '+e.message));
    end;
end;

procedure TFrmRemessaDescontar.CurrPesqEnter(Sender: tObject);
begin
    if (BitCancelar.Visible) then
       begin
           BitCancelar.Click;
       end;
end;

procedure TFrmRemessaDescontar.MudaCorCampos(Sender: tObject);
begin
  {CampoCombo :TComboBox}
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
  {CampoData     :TDateEdit}
   if Assigned(CampoData) then
      begin
         CampoData.color := clWindow;
      end;
   if ActiveControl is TDateEdit then
      begin
         TDateEdit(ActiveControl).color := $0080FFFF;
         CampoData := TDateEdit(ActiveControl);
      end
   else
      begin
         CampoData := nil;
      end;
   {Currency}
   if Assigned(CampoCurrency) then
      begin
         CampoCurrency.color := clWindow;
      end;
   if ActiveControl is TCurrencyEdit then
      begin
         if TCurrencyEdit(ActiveControl).color = $00D7D7D7 then
            begin
               exit;
            end;
         TCurrencyEdit(ActiveControl).color := $0080FFFF;
         CampoCurrency := TCurrencyEdit(ActiveControl);
      end
   else
      begin
         CampoCurrency := nil;
      end;
end;

procedure TFrmRemessaDescontar.RxDataFinalEnter(Sender: tObject);
begin
    RxDataFinal.SelectAll;
end;

procedure TFrmRemessaDescontar.Bit_TransfBcoClick(Sender: tObject);
begin
    if (Selecionou_Faturas ) then
       begin
           if (BitCancelar.Visible) then
              begin
                  DesabilitaObjetos;
                  wBotao := 'T';
                  PanTitulo.Caption        := 'Transferência entre bancos';
                  PanRemessa.Visible       := True;
                  PanRemessa.Height        := 230;
                  PanValor.Visible         := True;
                  EdtCodBco.Text           := StrZero(CurrBco.Text,4);
                  EdtDesConta.Text         := CbxBco.Text;
                  EdtCobranca.Text         := CbxCarteira.Text;
                  GrpBanco.Visible         := True;
                  GrpCobranca.Visible      := True;
                  GrpRemessa.Visible       := False;
                  Curr_Total_Transf.Value  := CurrTotalSelecionado.Value;
                  CurrTransfBanco.SetFocus;
                  CurrTransfBanco.SelectAll;
              end;
       end
    else
       begin
           uteis.aviso('Selecione a(s) Fatura(s) para Transferência entre contas !');
           DBGrid1.SetFocus;
       end;

end;

procedure TFrmRemessaDescontar.BotoesAcesso;
begin
  if Assigned(FrmRemessaDescontar) then
  begin
    Bit_Relatorio.Enabled := Uteis.AcessoUsuario('FinanceiroRemessas de Desconto/Depósito/Transferências',DBInicio.Usuario.CODIGO,FrmRemessaDescontar).Relatorio;
  end;
end;

procedure TFrmRemessaDescontar.CurrTransfBancoExit(Sender: tObject);
begin
    if (CurrTransfBanco.Value<>0) then
       if not (SqlCdsTransfBco.Locate('BAN_CODIGO',StrZero(CurrTransfBanco.Text,CurrTransfBanco.MaxLength),[])) then
          begin
              CurrTransfBanco.Value    := 0;
              CbxTransfBanco.ItemIndex := 0;
          end
       else
          CbxTransfBanco.Text := SqlCdsTransfBcoBAN_APELIDO.AsString;
end;

procedure TFrmRemessaDescontar.Transf_Entre_Bancos(const pRegistro,
  pConta,pCobranca: String);
begin
    try
      wSql1      := 'Update FAT_PC01 set BAN_CODIGO = '''+pConta+''',FPC_COBTIPO = '''+pCobranca+'';
      wSeleciona := ' where FAT_REGISTRO = '''+pRegistro+'''';
      //
      DataCadastros.sqlUpdate.Close;
      DataCadastros.SqlUpdate.sql.text :=wSql1 +wSeleciona;
      DataCadastros.sqlUpdate.Execsql;
      //
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao efetuar a transferência ! '+e.message));
    end;
end;

procedure TFrmRemessaDescontar.CbxTransfBancoClick(Sender: tObject);
begin
    if not (SqlCdsTransfBco.Locate('BAN_APELIDO',CbxTransfBanco.Text,[])) then
       begin
           uteis.aviso('Conta não encontrado !');
           CbxTransfBanco.SetFocus;
           CbxTransfBanco.SelectAll;
       end
    else
       begin
           CurrTransfBanco.Text := SqlCdsTransfBcoBAN_CODIGO.AsString;
       end;
end;

procedure TFrmRemessaDescontar.CbxTransfBancoExit(Sender: tObject);
begin
    if (CurrTransfBanco.Value <> 0) then
       begin
           if not (SqlCdsTransfBco.Locate('BAN_APELIDO',CbxTransfBanco.Text,[])) then
              begin
                  uteis.aviso('Conta não encontrado !');
                  CurrTransfBanco.Value := 0;
                  CbxTransfBanco.SetFocus;
                  CbxTransfBanco.SelectAll;
              end
           else
              begin
                  CurrTransfBanco.Text := SqlCdsTransfBcoBAN_CODIGO.AsString;
              end;
       end;
end;

procedure TFrmRemessaDescontar.DesabilitaObjetos;
begin
    GrpFiltro.Enabled    := False;
    GrpPesq.Enabled      := False;
    GrpInforme.Enabled   := False;
    GrpGerar.Enabled     := False;
    DBGrid1.Enabled      := False;
    Pn_Relatorio.Enabled := False;
    BitCancelar.Enabled  := False;
    BitSair.Enabled      := False;
    FormaPagamento.Visible := False;
end;

procedure TFrmRemessaDescontar.HabilitaObjetos;
begin
    GrpFiltro.Enabled    := True;
    GrpPesq.Enabled      := True;
    GrpInforme.Enabled   := True;
    GrpGerar.Enabled     := True;
    DBGrid1.Enabled      := True;
    Pn_Relatorio.Enabled := True;
    BitCancelar.Enabled  := True;
    BitSair.Enabled      := True;
end;

procedure TFrmRemessaDescontar.Mostrar_Limite;
begin
    try
      DataCadastros.sqlUpdate.Close;
      DataCadastros.SqlUpdate.sql.text :='Select B1.BAN_LIMITE_DESCTOCHEQ,B1.BAN_LIMITE_DESCTODUPL,B1.BAN_LIMITE_UTILIZADO_CHEQ,B1.BAN_LIMITE_UTILIZADO_DUPL from BAN0000 B1 '+
                                             'where B1.EMP_CODIGO = '''+SqlCdsBcoEMP_CODIGO.AsString+''' and B1.BAN_CODIGO = '''+StrZero(CurrBco.Text,4)+'''';
      DataCadastros.sqlUpdate.Open;
      if (not DataCadastros.sqlUpdate.IsEmpty) then
         begin
             lbl_limite_cheque.Caption       := FormatFloat('##,###,##0.00',DataCadastros.sqlUpdate.FieldByName('BAN_LIMITE_DESCTOCHEQ').AsCurrency);
             lbl_limite_duplicata.Caption    := FormatFloat('##,###,##0.00',DataCadastros.sqlUpdate.FieldByName('BAN_LIMITE_DESCTODUPL').AsCurrency);
             //
             Curr_util_cheq.Value            := DataCadastros.sqlUpdate.FieldByName('BAN_LIMITE_UTILIZADO_CHEQ').AsCurrency;
             Curr_Util_Dupl.Value            := DataCadastros.sqlUpdate.FieldByName('BAN_LIMITE_UTILIZADO_DUPL').AsCurrency;
         end;
      DataCadastros.sqlUpdate.Close;
    except on e:EDataBaseError do
       uteis.erro  (pchar('Erro ao Mostrar o Limite Utilizado ! '+e.message));
    end;
end;

function TFrmRemessaDescontar.Ultrapassou_Limite_Utilizado(pVlSelecionado:Double):Boolean;
Var
  wMessage:String;
begin
    wLimite    := 0;
    wUtilizado := 0;
    wDiferenca := 0;
    if (wTipo = 'D') then //CbxCarteira.ItemIndex = 0) then
       begin
           wLimite    := SqlCdsBcoBAN_LIMITE_DESCTODUPL.AsCurrency;
           wUtilizado := (Curr_Util_Dupl.Value+pVlSelecionado);
           if (wUtilizado > wLimite) then
              begin
                  wDiferenca := (wUtilizado - wLimite);
                  wMessage   := 'A Fatura selecionada irá ultrapassar o limite da Duplicata em R$ '+FormatFloat('#,##0.00',wDiferenca)+#13#10+#13#10+
                                'Confirma a seleção da Fatura Nº '+ SqlCdsRemessaFAT_CODIGO.AsString+IIF(SqlCdsRemessaFPC_NUMER.AsString ='','','/'+SqlCdsRemessaFPC_NUMER.AsString)+
                                ' no valor de R$ '+FormatFloat('#,##0.00',SqlCdsRemessaFPC_VLPARC.AsCurrency);
                  uteis.aviso(pchar(wMessage));
                  Result := True
              end
           else
              begin
                  Result := False;
              end;
       end
    else
       begin
           wLimite    := SqlCdsBcoBAN_LIMITE_DESCTOCHEQ.AsCurrency;
           wUtilizado := (Curr_util_cheq.Value+pVlSelecionado);
           if (wUtilizado > wLimite) then
              begin
                  wDiferenca := (wUtilizado - wLimite);
                  wMessage   := 'A Fatura selecionada irá ultrapassar o limite do Cheque em R$ '+FormatFloat('#,##0.00',wDiferenca)+#13#10+#13#10+
                                'Confirma a seleção da Fatura Nº '+ SqlCdsRemessaFAT_CODIGO.AsString+IIF(SqlCdsRemessaFPC_NUMER.AsString ='','','/'+SqlCdsRemessaFPC_NUMER.AsString)+
                                ' no valor de R$ '+FormatFloat('#,##0.00',SqlCdsRemessaFPC_VLPARC.AsCurrency);
                  uteis.aviso(pchar(wMessage));
                  Result := True
              end
           else
              begin
                  Result := False;
              end;
       end
end;

function TFrmRemessaDescontar.Selecionou_Faturas: Boolean;
begin
    try
      Result := False;
      SqlCdsRemessa.DisableControls;
      SqlCdsRemessa.First;
      while not SqlCdsRemessa.Eof do
       begin
           if (SqlCdsRemessaSELECAO_IC.AsBoolean) then
              Result := True;
           SqlCdsRemessa.Next;
       end;
      SqlCdsRemessa.First;
      SqlCdsRemessa.EnableControls;
      if (Result) then
         DesabilitaGroups
      else
         HabilitaGroups;
    except on e:EDataBaseError do
       uteis.erro  (pchar('Erro ao verifica seleção de faturas ! '+e.message));
    end;
end;

procedure TFrmRemessaDescontar.FormCloseQuery(Sender: tObject;
  var CanClose: Boolean);
begin
    if not (Selecionou_Faturas ) then
       begin
           Screen.OnActiveControlChange := NIL;
           HabilitaGroups;
       end
    else
       begin
           uteis.aviso('Impossível sair ! Existem fatura(s) selecionada(s) !');
           DBGrid1.SetFocus;
           Canclose := False;
           DesabilitaGroups;
       end;
end;

procedure TFrmRemessaDescontar.FormDestroy(Sender: TObject);
begin
     FrmRemessaDescontar := Nil;
end;

procedure TFrmRemessaDescontar.FormResize(Sender: TObject);
begin
     Width := 964;
     Height := 602;
end;

procedure TFrmRemessaDescontar.DesabilitaGroups;
begin
    GrpFiltro.Enabled  := False;
    GrpPesq.Enabled    := False;
    GrpInforme.Enabled := False;
    GrpGerar.Enabled   := False;
end;

procedure TFrmRemessaDescontar.HabilitaGroups;
begin
    GrpFiltro.Enabled  := True;
    GrpPesq.Enabled    := True;
    GrpInforme.Enabled := True;
    GrpGerar.Enabled   := True;
end;

procedure TFrmRemessaDescontar.Rad_RemessaClick(Sender: tObject);
begin
    LayOutGerar;
end;

procedure TFrmRemessaDescontar.LayOutGerar;
begin
    if (Rad_Remessa.Checked) then
       begin
           Pan_Cheq.Visible      := True;
           Pan_Dupl.Visible      := True;
           Bit_Gerar.Enabled     := True;
           Bit_Atualizar.Enabled := True;
           Bit_TransfBco.Enabled := False;
           Bit_Estornar.Enabled  := False;
       end
    else
    if (Rad_Transf.Checked) then
       begin
           Pan_Cheq.Visible      := False;
           Pan_Dupl.Visible      := False;
           Bit_Gerar.Enabled     := False;
           Bit_Atualizar.Enabled := False;
           Bit_TransfBco.Enabled := True;
           Bit_Estornar.Enabled  := False;
       end
    else
    if (Rad_Estorno.Checked) then
       begin
           Pan_Cheq.Visible      := True;
           Pan_Dupl.Visible      := True;
           Bit_Gerar.Enabled     := False;
           Bit_TransfBco.Enabled := False;
           Bit_Atualizar.Enabled := False;
           Bit_Estornar.Enabled  := True;
           //
       end;
end;

procedure TFrmRemessaDescontar.CbxCarteiraChange(Sender: tObject);
begin

    if (CbxCarteira.ItemIndex = 7) then
       wTipo := 'C'  //Cheque
    else
       wTipo := 'D'; // duplçicata
end;

procedure TFrmRemessaDescontar.FormActivate(Sender: tObject);
begin
    Atualizar_Limite;
end;

procedure TFrmRemessaDescontar.Atualizar_Limite;
begin
    if (uteis.confirmacao ( ('Deseja atualizar o Limite ?'))=mrYes) then
       begin
           try
             try
               FrmAtualizaLimite := TFrmAtualizaLimite.Create(Application);
               FrmAtualizaLimite.ShowModal;
             finally
               FrmAtualizaLimite.Destroy;
               FrmAtualizaLimite := nil;
               Mostrar_Limite;
               MostrarDados;
             end;
           except
               //beep;
               uteis.erro  ('Ocorreu um erro na criação do formulário!');
           end;
       end;
end;

procedure TFrmRemessaDescontar.Bit_AtualizarClick(Sender: tObject);
begin
    Atualizar_Limite;
end;

procedure TFrmRemessaDescontar.DBGrid1TitleClick(Column: TColumn);
begin
   screen.Cursor := crHourglass;
  {Se o campo não for blob ou memo e se for do tipo data}
  if not (Column.Field.DataType in [ftBlob,ftMemo]) then
    if Column.Field.FieldKind = fkData then
    begin
       SqlCdsRemessa.IndexFieldNames := Column.FieldName;
    end;
   screen.Cursor := crDefault;
end;

procedure TFrmRemessaDescontar.Bit_RelatorioClick(Sender: tObject);
begin
    try
      try
        begin
        FormGImpRece := TFormGImpRece.Create(Application);
        FormGImpRece.LTBoxRelatorio.ItemIndex := 9;
        FormGImpRece.ShowModal;
        end;
      finally
        FormGImpRece.Destroy;
        FormGImpRece := nil;
        Screen.OnActiveControlChange := MudaCorCampos;
      end;
    except
        //beep;
        uteis.erro  ('Ocorreu um erro na criação do formulário!');
    end;
end;

procedure TFrmRemessaDescontar.Inserir_Lancto_Pagar(const pEmpresa, pCodLancto,
  pValor, pCodFor,pData: String);
Var
  wNumDoc,
  wObs :String;
begin
    try
      wCtaAnalise := '';
      wNumDoc     := copy(pData,7,4)+copy(pData,4,2)+copy(pData,1,2)+StrZero(CurrBco.Text,4);
      if (wTipo = 'D') then
         wObs := 'Descto Duplicata'
      else
         wObs := 'Descto Cheques';
      {Pega a Conta Analise referente ao Fornecedor}
      DataCadastros.sqlUpdate.Close;
      DataCadastros.SqlUpdate.sql.text :=SQLDEF('FORNECEDORES','Select F1.CCT_CODIGO from FOR0000 F1','Where F1.FOR_CODIGO = '''+pCodFor+'''','F1.FOR_CODIGO','F1.');
      DataCadastros.sqlUpdate.Open;
      if (not DataCadastros.sqlUpdate.IsEmpty) then
         wCtaAnalise := DataCadastros.sqlUpdate.FieldByName('CCT_CODIGO').AsString;
      DataCadastros.sqlUpdate.Close;
      {Tabela PAG0000}
      wSql1 := 'INSERT INTO PAG0000 ('+
               'PAG_CODIGO,'+
               'OPV_CODIGO,'+
               'PAG_NUMDOC,'+
               'FOR_CODIGO,'+
               'PAG_TIPO,'+
               'PAG_DTEMIS,'+
               'CCT_CODIGO,'+
               'PAG_VLNOTA,'+
               'PAG_PREVISAO,'+
               'PAG_OBS,'+
               'EMP_CODIGO)';
      wSql2 := 'VALUES ('''+StrZero(pCodLancto,5)+''','''+
                            '10'','''+
                            wNumDoc+''','''+
                            pCodFor+''','''+
                            'XX'','''+
                            DataAmericana(pData)+''','''+
                            wCtaAnalise+''','+
                            ValorAmericano(pValor)+','''+
                            'S'','''+
                            wObs+''','''+
                            pEmpresa+''')';
      //
      DataCadastros.sqlUpdate.Close;
      DataCadastros.SqlUpdate.sql.text :=wSql1+wSql2;
      DataCadastros.sqlUpdate.Execsql;
      //
      {Tabela PAG_PC01}
      wSql1 := 'INSERT INTO PAG_PC01 ('+
               'PAG_CODIGO,'+
               'BAN_CODIGO,'+
               'PPC_BANCO,'+
               'CCT_CODIGO,'+
               'PPC_DTEMIS,'+
               'PPC_VENCTO,'+
//               'PPC_PAGTO,'+
               'PPC_NPARCELAS,'+
               'PPC_SITPAG,'+
               'PPC_STATUS,'+
               'PAG_NUMDOC,'+
               'PPC_FORMA,'+
               'PPC_PREVISAO,'+
               'PPC_OBS,'+
               'FOR_CODIGO,'+
               'EMP_CODIGO,'+
               'PPC_VLPARC)';
//               'PPC_VLPAGO)';
      wSql2 := 'VALUES ('''+StrZero(pCodLancto,5)+''','''+
                            StrZero(CurrBco.Text,4)+''','''+
                            Copy(CbxBco.Text,1,12)+''','''+
                            wCtaAnalise+''','''+
                            DataAmericana(pData)+''','''+
                            DataAmericana(pData)+''','''+
//                            DataAmericana(pData)+''','''+
                            '1'','''+
                            'P'','''+
                            'Pendente'','''+
                            wNumDoc+''','''+
                            'O'','''+
                            'S'','''+
                            copy(wObs,1,15)+''','''+
                            pCodFor+''','''+
                            pEmpresa+''','+
                            ValorAmericano(pValor)+')';
//                            ValorAmericano(pValor)+')';
      //
      DataCadastros.sqlUpdate.Close;
      DataCadastros.SqlUpdate.sql.text :=wSql1+wSql2;
      DataCadastros.sqlUpdate.Execsql;
      //
    except on E:EdataBaseError do
       uteis.erro  (pchar('Erro ao inserir lançamento no contas a pagar ! '+e.Message));
    end;
end;

procedure TFrmRemessaDescontar.Diminui_Juros_Lancto_Pagar(const sCodLancto,
  sDataEmissao, sValorJuros: String);
begin
    try
      {Tabela PAG0000}
      wSql1 := 'Update PAG0000 set '+
               'PAG_VLNOTA = (PAG_VLNOTA - '+ValorAmericano(sValorJuros)+')';
      wSeleciona := 'where PAG_CODIGO = '''+sCodLancto+''' and PAG_DTEMIS = '''+DataAmericana(sDataEmissao)+'''';
      //
      DataCadastros.sqlUpdate.Close;
      DataCadastros.SqlUpdate.sql.text :=SQLDEF('PAGAR',wSQL1,wSeleciona,'','');
      DataCadastros.sqlUpdate.Execsql;
      //
      {Tabela PAG_PC01}
      wSql1 := 'Update PAG_PC01 set '+
               'PPC_VLPARC = (PPC_VLPARC - '+ValorAmericano(sValorJuros)+')';
      wSeleciona := 'where PAG_CODIGO = '''+sCodLancto+''' and PPC_DTEMIS = '''+DataAmericana(sDataEmissao)+'''';
      //
      DataCadastros.sqlUpdate.Close;
      DataCadastros.SqlUpdate.sql.text :=SQLDEF('PAGAR',wSQL1,wSeleciona,'','');
      DataCadastros.sqlUpdate.Execsql;
      //
      {Verifica se valor do Lancamento esta zerado}
      wSQL1      := 'Select P1.PAG_VLNOTA From PAG0000 P1';
      wSeleciona := 'where PAG_CODIGO = '''+sCodLancto+''' and PAG_DTEMIS = '''+DataAmericana(sDataEmissao)+'''';
      //
      DataCadastros.sqlUpdate.Close;
      DataCadastros.SqlUpdate.sql.text :=SQLDEF('PAGAR',wSQL1,wSeleciona,'','P1.');
      DataCadastros.sqlUpdate.Open;
      if (not DataCadastros.sqlUpdate.IsEmpty) then
         begin
            {se tive zerado apaga lancamento}
            if (DataCadastros.sqlUpdate.FieldByName('PAG_VLNOTA').AsCurrency <= 0) then
               begin
                  wSQL1 := 'Delete from PAG0000 ';
                  //
                  DataCadastros.sqlUpdate.Close;
                  DataCadastros.SqlUpdate.sql.text :=SQLDEF('PAGAR',wSQL1,wSeleciona,'','');
                  DataCadastros.sqlUpdate.Execsql;
                  //
                  wSQL1      := 'Delete from PAG_PC01 ';
                  wSeleciona := 'where PAG_CODIGO = '''+sCodLancto+''' and PPC_DTEMIS = '''+DataAmericana(sDataEmissao)+'''';
                  //
                  DataCadastros.sqlUpdate.Close;
                  DataCadastros.SqlUpdate.sql.text :=SQLDEF('PAGAR',wSQL1,wSeleciona,'','');
                  DataCadastros.sqlUpdate.Execsql;
                  //
               end;
         end;
    except
      on E:EDataBaseError do
        begin
           uteis.erro  (pchar('Impossível atualizar lançamento no contas pagar !'+#13#10+
                      'Mensagem erro: '+e.Message));
        end;
    end;
end;

procedure TFrmRemessaDescontar.Objetos_Default;
begin
      if (Rad_aDescontar.Checked) then
         begin
             {Group = Pesquisar}
             Rad_Fatura.Enabled  := False;
             Rad_Cliente.Enabled := False;
             Rad_Vencto.Enabled  := True;
             Rad_Vencto.Checked  := True;
             Rad_Descto.Enabled  := False;
             {Group = Gerar}
             Rad_Remessa.Enabled := True;
             Rad_Remessa.Checked := True;
             Rad_Transf.Enabled  := True;
             Rad_Estorno.Enabled := False;
         end;
      if (Rad_ComDesconto.Checked) then
         begin
             {Group = Pesquisar}
             Rad_Fatura.Enabled  := True;
             Rad_Cliente.Enabled := True;
             Rad_Emissao.Enabled := True;
             Rad_Vencto.Enabled  := True;
             Rad_Descto.Enabled  := True;
             Rad_Descto.Checked  := True;
             {Group = Gerar}
             Rad_Remessa.Enabled := False;
             Rad_Transf.Enabled  := False;
             Rad_Estorno.Enabled := True;
             Rad_Estorno.Checked := True;
         end;
      if (Rad_NaoConfirmado.Checked) then
         begin
             {Group = Pesquisar}
             Rad_Fatura.Enabled  := True;
             Rad_Cliente.Enabled := True;
             Rad_Emissao.Enabled := True;
             Rad_Vencto.Enabled  := True;
             Rad_Descto.Enabled  := True;
             Rad_Descto.Checked  := True;
             {Group = Gerar}
             Rad_Remessa.Enabled := False;
             Rad_Transf.Enabled  := False;
             Rad_Estorno.Enabled := True;
             Rad_Estorno.Checked := True;
         end;
end;

procedure TFrmRemessaDescontar.EdFormaPagamentoExit(Sender: tObject);
begin
   if (EdFormaPagamento.Text = '') then
      begin
         EdFormaPagamento.Clear;
         CBFormaPagamento.Text := '';
      end
   else
      begin
         CBFormaPagamento.TextoLocalizar := EdFormaPagamento.Text;
         CBFormaPagamento.Localizar := True;
         if (CBFormaPagamento.Localizado) then
            begin

            end
         else
            begin
               uteis.aviso('Forma de Pagamento não localizado com o código informado');
               CBFormaPagamento.Text := '';
               EdFormaPagamento.SetFocus;
               EdFormaPagamento.SelectAll;
            end;
      end;
end;

procedure TFrmRemessaDescontar.CBFormaPagamentoChange(Sender: tObject);
begin
   EdFormaPagamento.Text := CBFormaPagamento.CodigoLista;
end;

procedure TFrmRemessaDescontar.CBFormaPagamentoExit(Sender: tObject);
begin
   if (CBFormaPagamento.CodigoLista = '') or (CBFormaPagamento.Text = '') then
      begin
         CBFormaPagamento.Text := '';
         EdFormaPagamento.Text := '';
      end
   else
      begin
         EdFormaPagamento.Text := CBFormaPagamento.CodigoLista;
      end;
end;

procedure TFrmRemessaDescontar.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
   CBFormaPagamento.CarregarCombo := False;
   Action := CaFree;
end;

procedure TFrmRemessaDescontar.Sb_FormaPagamentoClick(Sender: tObject);
begin
   try
      FrmCadastroFormaPagamento := TFrmCadastroFormaPagamento.Create(Application);
      FrmCadastroFormaPagamento.ShowModal;
   finally
      FrmCadastroFormaPagamento.Destroy;
      FrmCadastroFormaPagamento := Nil;
   end;

   CBFormaPagamento.CarregarCombo := True;
end;

end.



