{**************************************************************
*  Programa...: OPE0001  - Nome formulario = FormOperFisc    
*  Objetivo...: Cadastrar Tipo de Operação Fiscal            
*  Analista...: Márcio Neu Pacheco                           
*  Programador: Márcio
*
*  Comentários:
*
*  Criação..........: Jan/99
*  Ultima Alteração.: Out/2010
*  Alterado por.....: Márcio
*
**************************************************************}
unit Ope0001;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Mask, DBCtrls, StdCtrls, Buttons, ExtCtrls, Db, RwFunc, Provider,
  SqlExpr,SqlClientDataSet, DBClient, DBLocal, DBLocalS, ppProd, ppClass, ppReport, ppComm,
  ppRelatv, ppDB, ppDBPipe, ppModule, raCodMod, ppCtrls, ppBands, ppVar,
  ppPrnabl, ppCache,  rxToolEdit,  rxCurrEdit, RXDBCtrl, ppParameter, FMTBCd,
  SgDbSeachComboUnit, SgDbLookupComboUnit, Data.DBXFirebird, ppDesignLayer,
  SimpleDS, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxDropDownEdit, cxDBEdit, cxTextEdit, cxMaskEdit, JvDataSource, JvExStdCtrls, JvEdit, JvValidateEdit,
  Vcl.ComCtrls;

type
  TFormOperFisc = class(TForm)
    Panel2: TPanel;
    Bit_novo: TBitBtn;
    Bit_Excluir: TBitBtn;
    Bit_Gravar: TBitBtn;
    Bit_Cancelar: TBitBtn;
    Bit_Sair: TBitBtn;
    Panel3: TPanel;
    Bit_Lista: TBitBtn;
    Bit_Relatorio: TBitBtn;
    SqlCdsRelOperFiscal01: TSQLClientDataSet;
    DsRelOperFiscal01: TDataSource;
    ppRPRelOperFiscal01: TppReport;
    SqlCdsCtaAnalise: TSQLClientDataSet;
    SqlCdsCtaAnaliseCCT_CODIGO: TStringField;
    SqlCdsCtaAnaliseCCT_DESCRI: TStringField;
    DbRadOperacao: TDBRadioGroup;
    DbRadTipoNF: TDBRadioGroup;
    Label3: TLabel;
    Label11: TLabel;
    CEOPE_PIS: TCurrencyEdit;
    CEOPE_COFINS: TCurrencyEdit;
    SqlCdsRelOperFiscal01OPE_CODIGO: TStringField;
    SqlCdsRelOperFiscal01OPE_NATUREZA: TStringField;
    SqlCdsRelOperFiscal01OPE_TIPO: TStringField;
    SqlCdsRelOperFiscal01OPE_ESCRITA: TStringField;
    SqlCdsRelOperFiscal01OPE_DENTRO: TStringField;
    SqlCdsRelOperFiscal01OPE_DESCRI: TStringField;
    SqlCdsRelOperFiscal01OPE_TRIBICMS: TStringField;
    SqlCdsRelOperFiscal01OPE_TRIBIPI: TStringField;
    SqlCdsRelOperFiscal01OPE_REDU_ICM: TFMTBCdField;
    SqlCdsRelOperFiscal01OPE_REDU_IPI: TFMTBCdField;
    SqlCdsRelOperFiscal01OPE_IPINABASEICMS: TStringField;
    SqlCdsRelOperFiscal01OPE_FRETENABASE: TStringField;
    SqlCdsRelOperFiscal01OPE_SEMVLCOM: TStringField;
    SqlCdsRelOperFiscal01OPE_IMP_AVISO: TStringField;
    SqlCdsRelOperFiscal01OPE_AVISOLEGAL: TStringField;
    SqlCdsRelOperFiscal01EMP_CODIGO: TStringField;
    SqlCdsRelOperFiscal01OPE_AGRUPADO: TStringField;
    SqlCdsRelOperFiscal01OPE_SUBTRIBUTARIA: TStringField;
    SqlCdsRelOperFiscal01OPE_ESTOQUE: TStringField;
    SqlCdsRelOperFiscal01CCT_CODIGO: TStringField;
    SqlCdsRelOperFiscal01OPV_CODIGO: TIntegerField;
    SqlCdsRelOperFiscal01OPE_SERVICO: TStringField;
    SqlCdsRelOperFiscal01OPE_PIS: TFMTBCdField;
    SqlCdsRelOperFiscal01OPE_COFINS: TFMTBCdField;
    SqlCdsRelOperFiscal01OPE_CONTRISOCIAL: TFMTBCdField;
    SqlCdsCtaAnaliseEMP_CODIGO: TStringField;
    SqlCdsRelOperFiscal01OPE_DESCRINATUREZA: TStringField;
    ppDBRelOperFiscal01: TppDBPipeline;
    ppParameterList1: TppParameterList;
    SqlCdsRelOperFiscal01OPE_AVISOLEGAL2: TStringField;
    SqlCdsRelOperFiscal01OPE_NOTA_COMPLEMENTAR: TStringField;
    pp00HeaderBand2: TppHeaderBand;
    ppLine5: TppLine;
    LBL_00_EMPRESA: TppLabel;
    LBL_00_LTITULO1: TppLabel;
    LBL_00_LTITULO2: TppLabel;
    ppLine6: TppLine;
    ppSystemVariable3: TppSystemVariable;
    ppSystemVariable4: TppSystemVariable;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLine1: TppLine;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel6: TppLabel;
    pp00DetailBand2: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    pp00SummaryBand2: TppSummaryBand;
    ppLine9: TppLine;
    ppLabel25: TppLabel;
    ppDBCalc2: TppDBCalc;
    raCodeModule2: TraCodeModule;
    SqlCdsRelOperFiscal01OPE_INDICE_IMP: TFMTBCdField;
    SqlCdsRelOperFiscal01OPE_FRETEBASEIPI: TStringField;
    SqlCdsRelOperFiscal01OPE_DESPIMPORIPI: TStringField;
    SqlCdsRelOperFiscal01OPE_AUMEN_ICMS: TFMTBCdField;
    SqlCdsRelOperFiscal01OPE_ICMS_TOTALNOTA: TStringField;
    SqlCdsRelOperFiscal01OPE_SEMVLCOM_MOSTRAF: TStringField;
    SqlCdsRelOperFiscal01OPE_TRIBPISCOFINS: TStringField;
    SqlCdsRelOperFiscal01OPE_TEMCREDITO: TStringField;
    SqlCdsRelOperFiscal01OPE_ATIVA: TStringField;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    EdtOpe_Codigo: TEdit;
    Label1: TLabel;
    DBECFOP: TDBEdit;
    Label4: TLabel;
    DbeOPE_DESCRI: TDBEdit;
    Label8: TLabel;
    dbedtOPE_NATUREZA_ENTRADA: TDBEdit;
    Label10: TLabel;
    DBEOPE_DESCRINATUREZA: TDBEdit;
    dbrgrpOPE_TIPO_OPERACAO: TDBRadioGroup;
    DBRADBloqueia: TDBRadioGroup;
    Label9: TLabel;
    DBNavigator1: TDBNavigator;
    qrCSOSN: TSQLQuery;
    qrCSOSNCSON_ID: TIntegerField;
    qrCSOSNCSON_COD: TStringField;
    qrCSOSNCSON_DESCRICAO: TStringField;
    qCstPC: TSQLQuery;
    chkOcultar: TDBCheckBox;
    dsoperfisc: TJvDataSource;
    pcImpostos: TPageControl;
    tsPrincipal: TTabSheet;
    tsIcms: TTabSheet;
    tsIpi: TTabSheet;
    tsPisCofins: TTabSheet;
    gbCSOSN: TGroupBox;
    Label17: TLabel;
    btCson1: TSpeedButton;
    Label13: TLabel;
    btCson2: TSpeedButton;
    DBEdit3: TDBEdit;
    DBEdit1: TDBEdit;
    GroupBox4: TGroupBox;
    DBChOPE_ESTOQUE: TDBCheckBox;
    DBChOPE_ESCRITA: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    dbchkOPE_ATUALIZA_CUSTO: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    grpServico: TGroupBox;
    DBChOPE_SERVICO: TDBCheckBox;
    chkretencao: TDBCheckBox;
    chkINSSSERVICO: TDBCheckBox;
    chkCSLLSERVICOS: TDBCheckBox;
    ChkTributaIR: TDBCheckBox;
    ChkTributaPIS: TDBCheckBox;
    chkTributaCOFINS: TDBCheckBox;
    GroupBox8: TGroupBox;
    Label12: TLabel;
    DBECCT_CODIGO: TDBEdit;
    CbxCtaAnalise: TComboBox;
    GroupBox5: TGroupBox;
    DBChOPE_SEMVLCOM: TDBCheckBox;
    DBCheckMostraSVC: TDBCheckBox;
    GroupBox9: TGroupBox;
    DbchOPE_TRIBICMS: TDBCheckBox;
    GroupBox3: TGroupBox;
    laliqDes: TLabel;
    Label14: TLabel;
    cxMotivoDesoneracao: TcxDBComboBox;
    JvValidateEdit1: TJvValidateEdit;
    GroupBox7: TGroupBox;
    Label5: TLabel;
    Label15: TLabel;
    Label7: TLabel;
    DbchOPE_IPINABASEICMS: TDBCheckBox;
    DbChOPE_FRETENABASE: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    CEOPE_REDU_ICM: TCurrencyEdit;
    CEO_INDICE_IMP: TCurrencyEdit;
    CEO_AUME_ICMS: TCurrencyEdit;
    rgFormulaBaseICMS: TRadioGroup;
    DBCheckBox7: TDBCheckBox;
    GroupBox10: TGroupBox;
    lCSTIPI: TLabel;
    Label16: TLabel;
    ChOPE_TRIBIPI: TDBCheckBox;
    edCSTIPI: TDBEdit;
    DBEdit2: TDBEdit;
    GroupBox6: TGroupBox;
    Label6: TLabel;
    DBChOPE_DespImporIPI: TDBCheckBox;
    CEOPE_REDU_IPI: TCurrencyEdit;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox1: TDBCheckBox;
    GbTribut: TGroupBox;
    lCSTPIS: TLabel;
    ChkTribPISCOFINS: TDBCheckBox;
    edCSTPIS: TSgDbSearchCombo;
    TabSheet1: TTabSheet;
    Label18: TLabel;
    GroupBox2: TGroupBox;
    DbchOPE_IMP_AVISO: TDBCheckBox;
    DbeOPE_AVISOLEGAL: TDBMemo;
    DbeOPE_AVISOLEGAL2: TDBMemo;
    DBCheckBox8: TDBCheckBox;
    DBCheckBox9: TDBCheckBox;
    DBCheckBox10: TDBCheckBox;
    GroupBox11: TGroupBox;
    DBCheckBox11: TDBCheckBox;
    OPE_ARTIGO_DIFERIMENTO: TDBEdit;
    OPE_ARTIGO_REDUCAO: TDBEdit;
    Label19: TLabel;
    Label20: TLabel;
    procedure MudaCorCampos(Sender: tObject);
    procedure Bit_SairClick(Sender: tObject);
    procedure Bit_novoClick(Sender: tObject);
    procedure Bit_ExcluirClick(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure VerificaEdicao;
    procedure DesabilitaBotoes;
    procedure HabilitaBotoes;
    procedure Bit_GravarClick(Sender: tObject);
    procedure Bit_CancelarClick(Sender: tObject);
    procedure FormCloseQuery(Sender: tObject; var CanClose: Boolean);
    procedure Bit_RelatorioClick(Sender: tObject);
    procedure Bit_ListaClick(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure EdtOpe_CodigoExit(Sender: tObject);
    procedure DBNavigator1Click(Sender: tObject; Button: TNavigateBtn);
    procedure CbxCtaAnaliseClick(Sender: tObject);
    procedure DbRadTipoNFClick(Sender: tObject);
    procedure CEOPE_PISEnter(Sender: tObject);
    procedure EdtOpe_CodigoEnter(Sender: tObject);
    procedure FiltraCtaCaixa;
    procedure DBECCT_CODIGOEnter(Sender: tObject);
    procedure DBECCT_CODIGOExit(Sender: tObject);
    procedure DbeAgrupadoExit(Sender: tObject);
    procedure MskOPE_CODIGOExit(Sender: tObject);
    procedure DBECFOPExit(Sender: tObject);
    procedure EdtOpe_CodigoKeyPress(Sender: tObject; var Key: Char);
    procedure BuscaCodigo;
    procedure FormKeyPress(Sender: tObject; var Key: Char);
    procedure CEO_INDICE_IMPChange(Sender: tObject);
    procedure CEO_AUME_ICMSChange(Sender: tObject);
    procedure DBChOPE_SEMVLCOMClick(Sender: tObject);
    procedure DbRadTipoNFExit(Sender: tObject);
    procedure DBEdit3KeyDown(Sender: tObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit1KeyDown(Sender: tObject; var Key: Word;
      Shift: TShiftState);
    procedure btCson1Click(Sender: tObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure DBChOPE_SERVICOClick(Sender: TObject);
    procedure ChOPE_TRIBIPIClick(Sender: TObject);
    procedure ChkTribPISCOFINSClick(Sender: TObject);
    procedure rgFormulaBaseICMSClick(Sender: TObject);
  private
    { Private declarations }
       {campos}
    CampoEdit    : TEdit;
    CampoDBEdit  : TDBEdit;
    CampoDbMemo  : TDBMemo;
    CampoData    : TDBDateEdit;
    CampoTDBLuk  : TDBLookupComboBox;
    CampoCombo   : TComboBox;
    CampoCurrency: TCurrencyEdit;
    procedure PreencheCombo;
    procedure MostrarDados;
    procedure LimparDados;

  public
    { Public declarations }
    procedure BotoesAcesso;
  end;

var
  FormOperFisc: TFormOperFisc;

implementation

{$R *.DFM}

uses Uteis, Ope0002, DataCad, DataMov, Men0001, CSOSNForm, ufrmpreviewrb, iniciodb;

procedure TFormOperFisc.MudaCorCampos(Sender: tObject);
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
   {CampoDbMemo:TDBMemo}
   if Assigned(CampoDbMemo) then
      begin
          CampoDbMemo.color := clWindow;
      end;
   if ActiveControl is TDBMemo then
      begin
          TDBMemo(ActiveControl).color := $0080FFFF;
          CampoDbMemo := TDBMemo(ActiveControl);
      end
   else
      begin
          CampoDbMemo := nil;
      end;
  if Assigned(CampoCombo) then
      begin
          CampoCombo.color := clWindow;
      end;
   {CampoComboBox}
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
  {CampoTDBLuk  :TDBLookupComboBox}
   if Assigned(CampoTDBLuk) then
      begin
         CampoTDBLuk.color := clWindow;
      end;
   if ActiveControl is TDBLookupComboBox then
      begin
         TDBLookupComboBox(ActiveControl).color := $0080FFFF;
         CampoTDBLuk := TDBLookupComboBox(ActiveControl);
      end
   else
      begin
         CampoTDBLuk := nil;
      end;
  {CampoCurrency  :TCurrencyEdit}
   if Assigned(CampoCurrency) then
      begin
         CampoCurrency.color := clWindow;
      end;
   if ActiveControl is TCurrencyEdit then
      begin
         TCurrencyEdit(ActiveControl).color := $0080FFFF;
         CampoCurrency := TCurrencyEdit(ActiveControl);
      end
   else
      begin
         CampoCurrency := nil;
      end;
end;

procedure TFormOperFisc.verificaEdicao;
begin
    // verifica estado da tabela em edicao e inclusao
    screen.cursor :=crHourglass;
    if DataCadastros.CdsOperFisc.State in [dsEdit,dsInsert] then
       begin
           if uteis.confirmacao ( 'Deseja salvar alterações ?') = idyes then
              begin
                  Bit_Gravar.Click;
              end
           else
              begin
                  Bit_Cancelar.Click;
              end;
//           Habilitabotoes;
//           if DataCadastros.CdsOperFisc.IsEmpty Then   //evita exclussão de registro
//              Begin                                      // em uma Tabela Vazia.
//                  DataCadastros.DsOperFisc.AutoEdit := False;
//              end;
       end;
    Screen.cursor := crDefault;
end;

procedure TFormOperFisc.HabilitaBotoes;
begin
    EdtOpe_Codigo.Enabled       := True;
    Bit_novo.Enabled            := True;
    Bit_Excluir.Enabled         := True;
    Bit_Sair.Visible            := True;
    Bit_Relatorio.Enabled       := True;
    Bit_Lista.Enabled           := True;
    Bit_Gravar.Enabled          := False;
    Bit_Cancelar.Visible        := False;
    DbNavigator1.Enabled        := True;
    BotoesAcesso;
end;

procedure TFormOperFisc.DesabilitaBotoes;
begin
    BotoesAcesso;
    EdtOpe_Codigo.Enabled       := false;
    Bit_novo.Enabled            := False;
    Bit_Excluir.Enabled         := False;
    Bit_Sair.Visible            := False;
    Bit_Relatorio.Enabled       := False;
    Bit_Lista.Enabled           := False;
    Bit_Gravar.Enabled          := True;
    Bit_Cancelar.Visible        := True;
    DbNavigator1.Enabled        := False;

end;

procedure TFormOperFisc.FormShow(Sender: tObject);
begin
    Left := 65;
    Top  := 0;
    {ativa o método ao evento OnActiveControlChange}
    Screen.OnActiveControlChange   := MudaCorCampos;
    Screen.Cursor := crHourglass;
    Try
      DataCadastros.CdsOperFisc.Close;
      DataCadastros.CdsOperFisc.CommandText := SQLDEF('OPERACAOFISCAL','SELECT * FROM OPE0000','','OPE_CODIGO','');
      DataCadastros.CdsOperFisc.Open;
      chkretencao.Enabled := DBChOPE_SERVICO.Checked;
    except on E:EdatabaseError do
       uteis.erro  (Pchar('Impossível acessar a Tabela "OPERAÇÃO"!'+e.message));
    end;
    HabilitaBotoes;
    if DataCadastros.CdsOperFisc.IsEmpty Then  //Evita alteração antes que se
       begin                               //inclua registros na tabela.
         DataCadastros.DsOperFisc.autoEdit := False;
       end;
    EdtOpe_Codigo.Text := DataCadastros.CdsOperFiscOPE_CODIGO.AsString;
    PreencheCombo;
    MostrarDados;
    pcImpostos.ActivePageIndex := 0;
    Screen.Cursor := crDefault;
end;

procedure TFormOperFisc.Bit_novoClick(Sender: tObject);
begin
      DataCadastros.CdsOperFisc.Insert;
      //
      DesabilitaBotoes;
      EdtOpe_Codigo.Text := '000';
      DBECFOP.Enabled    := True;
      uteis.HabilitaIncluir('CadastrosFiscal',DBInicio.Usuario.CODIGO,FormOperFisc);
      DBECFOP.SetFocus;
      LimparDados;
      //
      { sempre será incluida como operaçao Ativa}
      DataCadastros.CdsOperFiscOPE_ATIVA.AsString := 'S';
      DataCadastros.CdsOperFiscOPE_ATUALIZA_CUSTO.AsString := 'S';
      DataCadastros.CdsOperFiscOPE_ESCRITA.AsString := 'S';
      DataCadastros.CdsOperFiscEMP_CSOSN.AsInteger := dbInicio.Empresa.iCSOSN;
      DataCadastros.CdsOperFiscEMP_CSOSN_ST.AsInteger := dbInicio.Empresa.iCSOSN_ST;

end;

procedure TFormOperFisc.Bit_ExcluirClick(Sender: tObject);
begin
  wSql1      := 'select N1.OPE_CODIGO from NF0001 N1 ';
  wSeleciona := 'WHERE N1.OPE_CODIGO = '+EdtOpe_Codigo.Text;
  wOrdem     := 'N1.OPE_CODIGO';
  DataCadastros.sqlUpdate.Close;
  DataCadastros.SqlUpdate.sql.text :=SQLDEF('PEDIDOS',wSql1,wSeleciona,wOrdem,'N1.');
  DataCadastros.sqlUpdate.Open;
  if (DataCadastros.sqlUpdate.IsEmpty = True) then
  begin
    if DataCadastros.CdsOperFisc.IsEmpty Then   //evita exclussão de registro
    Begin                                      // em uma Tabela Vazia.
      messagebeep($ffff);
      if DataCadastros.DsOperFisc.AutoEdit = true then
       DataCadastros.DsOperFisc.AutoEdit := false;
      uteis.aviso('Não há operação fiscal para excluir !!!');
      EdtOpe_Codigo.Enabled:= false;
      DBECFOP.Clear;
      exit;
    end;
    if uteis.confirmacao ( 'Deseja Excluir esta Operação?')= mrYes then
    begin
      Screen.Cursor := crHourglass;
      DataCadastros.CdsOperFisc.Delete;
      DataCadastros.CdsOperFisc.ApplyUpdates(0);
      if (DataCadastros.CdsOperFisc.IsEmpty) then
      begin
        if DataCadastros.DsOperFisc.AutoEdit = true then
         DataCadastros.DsOperFisc.AutoEdit := false;
      end
        else
      begin
        if DataCadastros.DsOperFisc.AutoEdit = False then
          DataCadastros.DsOperFisc.AutoEdit := True;
      end;
        screen.cursor := crdefault;
    end;
    MostrarDados;
    EdtOpe_Codigo.Text := DataCadastros.CdsOperFiscOPE_CODIGO.AsString;
    EdtOpe_Codigo.SetFocus;
  end
   else
   begin
     uteis.aviso('Operação fiscal não pode ser excluída. Existem notas com essa operação.');
     EdtOpe_Codigo.SetFocus;
     Exit;
   end;
end;

procedure TFormOperFisc.Bit_GravarClick(Sender: tObject);
begin

    if DBECFOP.Text = ''then
    begin
      Messagebeep(MB_ICONEXCLAMATION);
      uteis.aviso('Digite código da operação!');
      DBECFOP.SetFocus;
      exit;
    end;
    if DBEOPE_DESCRINATUREZA.Text = ''then
    begin
      Messagebeep(MB_ICONEXCLAMATION);
      uteis.aviso('Digite natureza da operação!');
      DBEOPE_DESCRINATUREZA.SetFocus;
      exit;
    end;
    if dbedtOPE_NATUREZA_ENTRADA.Text = ''then
    begin
      Messagebeep(MB_ICONEXCLAMATION);
      uteis.aviso('Digite a CFOP Inversa.(Ex.:VENDA X COMPRA -> 5102 correspondente é 1102)');
      dbedtOPE_NATUREZA_ENTRADA.SetFocus;
      exit;
    end;
   if dbrgrpOPE_TIPO_OPERACAO.Value = ''  then
    begin
      Messagebeep(MB_ICONEXCLAMATION);
      uteis.aviso('Digite o Tipo da Operação!');
      dbrgrpOPE_TIPO_OPERACAO.SetFocus;
      exit;
    end;
     // obrigar conta se venda ou compra
    IF (DBECCT_CODIGO.Text = '') and ((dbrgrpOPE_TIPO_OPERACAO.Value = 'C') or (dbrgrpOPE_TIPO_OPERACAO.Value = 'V')) then
      begin
        Messagebeep(MB_ICONEXCLAMATION);
        uteis.aviso('Defina uma conta financeira padrão!');
        DBECCT_CODIGO.SetFocus;
        exit;
      end;

     if StrToIntDef( EdtOpe_Codigo.Text , 0 )= 0 then
        EdtOpe_Codigo.Text := StrZero( dbInicio.GetNextSequence('gen_ope0000_codigo'),3);

   {Codigo da Operação}
    DataCadastros.CdsOperFiscOPE_CODIGO.AsString         := StrZero(EdtOpe_Codigo.Text,EdtOpe_Codigo.MaxLength);

//   { Operacao de Entrada sempre será  SEM Valor comercial }
//    if DbRadTipoNF.ItemIndex = 1 then
//       DataCadastros.CdsOperFiscOPE_SEMVLCOM.AsString := 'S';

    DataCadastros.CdsOperFiscOPE_PIS.AsCurrency          := CEOPE_PIS.Value;
    DataCadastros.CdsOperFiscOPE_COFINS.AsCurrency       := CEOPE_COFINS.Value;
    //DataCadastros.CdsOperFiscOPE_CONTRISOCIAL.AsCurrency := CEOPE_CONTRISOCIAL.Value;
    DataCadastros.CdsOperFiscOPE_REDU_IPI.AsCurrency     := CEOPE_REDU_IPI.Value;
    DataCadastros.CdsOperFiscOPE_REDU_ICM.AsCurrency     := CEOPE_REDU_ICM.Value;
    DataCadastros.CdsOperFiscOPE_INDICE_IMP.AsCurrency   := CEO_INDICE_IMP.Value;
    DataCadastros.CdsOperFiscOPE_AUMEN_ICMS.AsCurrency   := CEO_AUME_ICMS.Value;
    DataCadastros.CdsOperFiscOPE_FORMULA_BASE_ICMS.AsInteger := rgFormulaBaseICMS.ItemIndex;
    DataCadastros.CdsOperFiscEMP_CODIGO.AsString         := dbInicio.Empresa.EMP_CODIGO;

    DataCadastros.CdsOperFisc.Post;
    DataCadastros.CdsOperFisc.ApplyUpdates(0);

    DataCadastros.DsOperFisc.AutoEdit := true;
    DBECFOP.Enabled := False;
    Habilitabotoes;
    EdtOpe_codigo.Text    := StrZero(DataCadastros.CdsOperFiscOPE_CODIGO.AsString,EdtOpe_Codigo.MaxLength);
    DbeOpe_Descri.Setfocus;
    PreencheCombo;
    MostrarDados;
end;

procedure TFormOperFisc.Bit_CancelarClick(Sender: tObject);
begin
    Screen.Cursor := crHourGlass;
    DataCadastros.CdsOperFisc.Cancel;
    if DataCadastros.CdsOperFisc.IsEmpty Then   //evita exclussão de registro
       begin                                      // em uma Tabela Vazia.
           DataCadastros.DsOperFisc.AutoEdit := False;
           DBECFOP.SetFocus;
       end;
    Screen.Cursor := crDefault;
    PreencheCombo;
    MostrarDados;
    HabilitaBotoes;
    DBECFOP.Enabled := False;
    EdtOpe_Codigo.Text := DataCadastros.CdsOperFiscOPE_CODIGO.AsString;
    DbeOPE_Descri.Setfocus;
end;

procedure TFormOperFisc.Bit_SairClick(Sender: tObject);
begin
    close;
end;

procedure TFormOperFisc.BotoesAcesso;
begin
     if assigned(FormOperFisc) then
     begin
       Bit_novo.Enabled := Uteis.AcessoUsuario('CadastrosFiscal',DBInicio.Usuario.CODIGO,FormOperFisc).Incluir;
       Bit_Excluir.Enabled := Uteis.AcessoUsuario('CadastrosFiscal',DBInicio.Usuario.CODIGO,FormOperFisc).Exluir;
       Bit_Relatorio.Enabled := Uteis.AcessoUsuario('CadastrosFiscal',DBInicio.Usuario.CODIGO,FormOperFisc).Relatorio;
       DataCadastros.DsOperFisc.AutoEdit := Uteis.AcessoUsuario('CadastrosFiscal',DBInicio.Usuario.CODIGO,FormOperFisc).Alterar;
     end;
end;

procedure TFormOperFisc.FormCloseQuery(Sender: tObject;
  var CanClose: Boolean);
begin
    VerificaEdicao;
    try

      DataCadastros.CdsOperFisc.close;
      SqlCdsRelOperFiscal01.Close;
    except 
       //uteis.erro  (Pchar('Impossível Fechar as Tabelas !'+e.message));
    end;
end;

procedure TFormOperFisc.Bit_RelatorioClick(Sender: tObject);
begin
    Screen.Cursor := crHourGlass;
    try
      SqlCdsRelOperFiscal01.Close;
      SqlCdsRelOperFiscal01.CommandText:=SQLDEF('OPERACAOFISCAL','select * from OPE0000','','OPE_DESCRI','');
      SqlCdsRelOperFiscal01.Open;
      LBL_00_EMPRESA.Caption:=dbInicio.Empresa.Razao;
      LBL_00_LTITULO1.Caption:='RELATÓRIO DE OPERAÇÕES FISCAIS DE FATURAMENTO';
      LBL_00_LTITULO2.Caption:='ORDEM POR DESCRIÇÃO';
      ppRPRelOperFiscal01.DeviceType:='Screen';
      RBuilderPreview(ppRPRelOperFiscal01);
    except on E:EdatabaseError do
       uteis.erro  (Pchar('Erro ao gerar o relatório !'+e.message));
    end;
    Screen.Cursor := crDefault;
end;

procedure TFormOperFisc.Bit_ListaClick(Sender: tObject);
begin

  FormOperFiscGrid :=TFormOperFiscGrid.Create(Application);
   try
     FormOperFiscGrid.ShowModal;
   finally
     FormOperFiscGrid.Destroy;
     FormOperFiscGrid := nil;
   end;
 chkretencao.Enabled := DBChOPE_SERVICO.Checked;

end;

procedure TFormOperFisc.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
    Screen.OnActiveControlChange := NIL;
    Action := CaFree;
end;

procedure TFormOperFisc.EdtOpe_CodigoExit(Sender: tObject);
begin
  if ActiveControl = nil then
    exit;
  if (ActiveControl.Name = 'Bit_novo') or (ActiveControl.Name = 'Bit_Sair') or (ActiveControl.Name = 'Bit_Gravar') then
     exit;
  BuscaCodigo;
end;

procedure TFormOperFisc.PreencheCombo;
Var
  wSeleciona:String;
begin
    if DbRadTipoNF.ItemIndex = 0 then
       begin
           wSeleciona := 'where CCT_CONTA = ''E''';
       end
    else
       begin
           wSeleciona := 'where CCT_CONTA = ''S''';
       end;
    Try
      SqlCdsCtaAnalise.close;
      SqlCdsCtaAnalise.CommandText := SQLDEF('PLANODECONTAS','Select CCT_CODIGO,CCT_DESCRI,EMP_CODIGO from CCT_0000',wSeleciona,'CCT_DESCRI','');
      SqlCdsCtaAnalise.Open;
      SqlCdsCtaAnalise.First;
      CbxCtaAnalise.Items.Clear;
      CbxCtaAnalise.Items.Add('');
      while not SqlCdsCtaAnalise.Eof do
        begin
            CbxCtaAnalise.Items.Add(SqlCdsCtaAnaliseCCT_DESCRI.AsString);
            SqlCdsCtaAnalise.Next;
        end;
      CbxCtaAnalise.ItemIndex := 0;
    except on E:EdatabaseError do
       uteis.erro  (Pchar('Erro ao abrir as tabelas !'+e.message));
    end;
    edCSTPIS.idRetorno  := DBInicio.BuscaUmDadoSqlAsString('SELECT OPE_CST_PISCOFINS from OPE0000 o WHERE OPE_CODIGO = ' + QuotedStr(DataCadastros.CdsOperFiscOPE_CODIGO.AsString));

end;

procedure TFormOperFisc.rgFormulaBaseICMSClick(Sender: TObject);
begin
  if DataCadastros.CdsOperFisc.State = dsBrowse then
  begin
    DataCadastros.CdsOperFisc.Edit;
    DesabilitaBotoes;
  end;
end;

procedure TFormOperFisc.MostrarDados;
begin
   try
     EdtOpe_Codigo.Text := DataCadastros.CdsOperFiscOPE_CODIGO.AsString;
     if SqlCdsCtaAnalise.Locate('CCT_CODIGO',DataCadastros.CdsOperFiscCCT_CODIGO.AsString,[]) then
        CbxCtaAnalise.Text := SqlCdsCtaAnaliseCCT_DESCRI.AsString
     else
        CbxCtaAnalise.Text := '';
    //
    CEOPE_PIS.Value          := DataCadastros.CdsOperFiscOPE_PIS.AsCurrency;
    CEOPE_COFINS.Value       := DataCadastros.CdsOperFiscOPE_COFINS.AsCurrency;
    //CEOPE_CONTRISOCIAL.Value := DataCadastros.CdsOperFiscOPE_CONTRISOCIAL.AsCurrency;
    CEOPE_REDU_IPI.Value     := DataCadastros.CdsOperFiscOPE_REDU_IPI.AsFloat;
    CEOPE_REDU_ICM.Value     := DataCadastros.CdsOperFiscOPE_REDU_ICM.AsFloat;
    CEO_INDICE_IMP.Value     := DataCadastros.CdsOperFiscOPE_INDICE_IMP.AsFloat;
    CEO_AUME_ICMS.Value      := DataCadastros.CdsOperFiscOPE_AUMEN_ICMS.AsFloat;
    rgFormulaBaseICMS.ItemIndex := DataCadastros.CdsOperFiscOPE_FORMULA_BASE_ICMS.AsInteger;

  //  edCSTIPI.Visible := ChOPE_TRIBIPI.Checked ;
//    lCSTIPI.Visible := ChOPE_TRIBIPI.Checked;
//    edCSTPIS.Visible := ChkTribPISCOFINS.Checked;
//    lCSTPIS.Visible := ChkTribPISCOFINS.Checked;

  except
       On E:EdatabaseError do
          begin
              uteis.erro  (pchar('Erro ao mostrar dados !'+e.message));
          end;
  end;  

end;

procedure TFormOperFisc.DBNavigator1Click(Sender: tObject;
  Button: TNavigateBtn);
begin
  PreencheCombo;
  MostrarDados;
end;

procedure TFormOperFisc.CbxCtaAnaliseClick(Sender: tObject);
begin
    if (ActiveControl.Name = 'Bit_Cancelar') or (ActiveControl.Name = 'Bit_Sair') then
       exit;

          if CbxCtaAnalise.Text <> '' then
             begin
                 if SqlCdsCtaAnalise.Locate('CCT_DESCRI',CbxCtaAnalise.Text,[]) = true then
                    begin
                        if DataCadastros.CdsOperFisc.State in [dsBrowse] then
                           DataCadastros.CdsOperFisc.Edit;
                        DBECCT_CODIGO.Field.Text := SqlCdsCtaAnaliseCCT_CODIGO.AsString;
                    end
                 else
                    begin
                        uteis.aviso('Informe a Conta Caixa');
                        CbxCtaAnalise.SetFocus;
                    end;
             end
          else
             begin
                 if DataCadastros.CdsOperFisc.State in [dsBrowse] then
                    DataCadastros.CdsOperFisc.Edit;
                 DBECCT_CODIGO.Text := '';
             end;

end;

procedure TFormOperFisc.DbRadTipoNFClick(Sender: tObject);
begin
    FiltraCtaCaixa;
    PreencheCombo;
end;

procedure TFormOperFisc.CEOPE_PISEnter(Sender: tObject);
begin
    if DataCadastros.CdsOperFisc.State in [dsBrowse] then
       begin
           DataCadastros.CdsOperFisc.Edit;
           DesabilitaBotoes;
       end;
end;

procedure TFormOperFisc.EdtOpe_CodigoEnter(Sender: tObject);
begin
    EdtOpe_Codigo.SelectAll;
end;

procedure TFormOperFisc.FiltraCtaCaixa;
Var
wSeleciona,wSeleciona1,wOrdem : String;
begin
    Screen.Cursor := crHourGlass;
    DBECCT_CODIGO.Text := '';
    if DbRadTipoNF.ItemIndex = 0 then
       begin
           wSeleciona := 'where CCT_CONTA =''E'' and CCT_STATUS = ''L''';
           wSeleciona1:= SQLDEF('TABELAS','select O1.* from opv0000 O1 ','where O1.OPV_TIPO = ''S''','O1.OPV_DESCRICAO','O1.');
           wOrdem     := 'CCT_CONTA,CCT_STATUS';
       end
    else
       begin
           wSeleciona := 'where CCT_CONTA =''S'' and CCT_STATUS = ''L''';
           wSeleciona1:= SQLDEF('TABELAS','select O1.* from opv0000 O1 ','where O1.OPV_TIPO = ''E''','O1.OPV_DESCRICAO','O1.');
           wOrdem     := 'CCT_CONTA,CCT_STATUS';
       end;
    try
      // PLANO DE CONTAS
      SqlCdsCtaAnalise.close;
      SqlCdsCtaAnalise.CommandText := SQLDEF('PLANODECONTAS','Select CCT_CODIGO,CCT_DESCRI,EMP_CODIGO from CCT_0000',wSeleciona,wordem,'');
      SqlCdsCtaAnalise.Open;
      SqlCdsCtaAnalise.First;
      CbxCtaAnalise.Items.Clear;
      CbxCtaAnalise.Items.Add('');
      while not SqlCdsCtaAnalise.Eof do
        begin
            CbxCtaAnalise.Items.Add(SqlCdsCtaAnaliseCCT_DESCRI.AsString);
            SqlCdsCtaAnalise.Next;
        end;
      CbxCtaAnalise.ItemIndex := 0;
    except on E:EdatabaseError do
       uteis.erro  (Pchar('Erro ao abrir as tabelas !'+e.message));
    end;
    Screen.Cursor := crDefault;
end;

procedure TFormOperFisc.DBECCT_CODIGOEnter(Sender: tObject);
begin
    DBECCt_codigo.SelectAll;
end;

procedure TFormOperFisc.DBECCT_CODIGOExit(Sender: tObject);
begin
    screen.Cursor := crHourGlass;
    DbECCT_CODIGO.Text := StrZero(DbECCT_CODIGO.Text,DBECCT_CODIGO.MaxLength);
    if (DbECCT_CODIGO.Text <>'   ')then
       begin
          if SqlCdsCtaAnalise.Locate('CCT_CODIGO',DbECCT_CODIGO.Text,[])= true then
             begin
                 if DataCadastros.CdsOperFisc.State in [dsBrowse] then
                    DataCadastros.CdsOperFisc.Edit;
                 CbxCtaAnalise.Text := SqlCdsCtaAnaliseCCT_DESCRI.AsString;
                 DBECCT_CODIGO.Text := SqlCdsCtaAnaliseCCT_CODIGO.AsString;
             end
          else
             begin
                 CbxCtaAnalise.Text := '';
                 DBECCT_CODIGO.Text := '';
             end;
       end;
    screen.cursor:=crDefault;
end;

procedure TFormOperFisc.DbeAgrupadoExit(Sender: tObject);
begin
   (* if (ActiveControl.Name = 'Bit_Cancelar') or (ActiveControl.Name = 'Bit_Sair') then
       exit;
    if DbeAgrupado.Text = DBECFOP.Text then
       begin
           uteis.aviso('Esta CFOP não pode ser igual o CFOP Subs Tributaria !');
           DbeAgrupado.SetFocus;
       end;
    if DbeAgrupado.Text <> '' then
       begin
           if Length(DbeAgrupado.Text) < 4 then
              begin
                  uteis.aviso('CFOP inválido !');
                  DbeAgrupado.SetFocus;
              end;
       end;       *)
end;

procedure TFormOperFisc.MskOPE_CODIGOExit(Sender: tObject);
begin
    if (ActiveControl.Name = 'Bit_Cancelar') or (ActiveControl.Name = 'Bit_Sair') then
       exit;
    if Length(DBECFOP.Text) < 4 then
       begin
           uteis.aviso('CFOP inválido !');
           DBECFOP.SetFocus;
       end;
end;

procedure TFormOperFisc.LimparDados;
begin
    DbRadOperacao.ItemIndex := 0;
    DbRadTipoNF.ItemIndex   := 0;
    CbxCtaAnalise.Text      := '';
    CEOPE_PIS.Value         := 0;
    CEOPE_COFINS.Value      := 0;
    //CEOPE_CONTRISOCIAL.Value:= 0;
    CEOPE_REDU_IPI.Value    := 0;
    CEOPE_REDU_ICM.Value    := 0;
    CEO_INDICE_IMP.Value    := 0;
    CEO_AUME_ICMS.Value     := 0;
    //Tirar o Rascunho Dos Checkbox //////////////////////////
    {N = FALSE S = SIM}
    DataCadastros.CdsOperFiscOPE_TRIBICMS.AsString      := 'N';
    DataCadastros.CdsOperFiscOPE_TRIBIPI.AsString       := 'N';
    DataCadastros.CdsOperFiscOPE_IPINABASEICMS.AsString := 'N';
    DataCadastros.CdsOperFiscOPE_SUBTRIBUTARIA.AsString := 'N';
    DataCadastros.CdsOperFiscOPE_TRIBPISCOFINS.AsString := 'N';
    DataCadastros.CdsOperFiscOPE_IMP_AVISO.AsString     := 'N';
    DataCadastros.CdsOperFiscOPE_FRETENABASE.AsString   := 'N';
    DataCadastros.CdsOperFiscOPE_FRETEBASEIPI.AsString  := 'N';
    DataCadastros.CdsOperFiscOPE_SEMVLCOM.AsString      := 'N';
    DataCadastros.CdsOperFiscOPE_SEMVLCOM_MOSTRAF.AsString := 'N';
    DataCadastros.CdsOperFiscOPE_ESTOQUE.AsString       := 'N';
    DataCadastros.CdsOperFiscOPE_SERVICO.AsString       := 'N';
    DataCadastros.CdsOperFiscOPE_ESCRITA.AsString       := 'N';
    DataCadastros.CdsOperFiscOPE_DESPIMPORIPI.AsString  := 'N';
    DataCadastros.CdsOperFiscOPE_NOTA_COMPLEMENTAR.AsString := 'N';
    DataCadastros.CdsOperFiscOPE_ICMS_TOTALNOTA.AsString:= 'N';
    DataCadastros.CdsOperFiscOPE_TEMCREDITO.AsString    := 'N';
    DataCadastros.CdsOperFiscOPE_IPI_TOTALNOTA.AsString := 'N';
end;

procedure TFormOperFisc.DBECFOPExit(Sender: tObject);
begin
    if (ActiveControl <> nil) then
      if (ActiveControl.Name = 'Bit_Cancelar') or (ActiveControl.Name = 'Bit_Sair') then
         exit;
    if Length(DBECFOP.Text) < 4 then
       begin
           uteis.aviso('CFOP inválido !');
           DBECFOP.SetFocus;
       end;
end;

procedure TFormOperFisc.EdtOpe_CodigoKeyPress(Sender: tObject;
  var Key: Char);
begin
    if not (key in ['0'..'9',#8]) then
       begin
          //beep;
          Key := #0;
       end;
end;

procedure TFormOperFisc.BuscaCodigo;
begin
    EdtOpe_Codigo.Text := StrZero(EdtOpe_Codigo.Text,EdtOpe_Codigo.MaxLength);
    if (DataCadastros.CdsOperFisc.Locate('OPE_CODIGO',EdtOpe_Codigo.Text,[]) = true) then
       begin
           EdtOpe_Codigo.Text    := DataCadastros.CdsOperFiscOPE_CODIGO.AsString;
           PreencheCombo;
           MostrarDados;
       end
    else
       begin
           uteis.aviso('Código da operação fiscal não existente !');
           EdtOpe_Codigo.Text := DataCadastros.CdsOperFiscOPE_CODIGO.AsString;
           EdtOpe_Codigo.SetFocus;
       end;

end;

procedure TFormOperFisc.FormKeyPress(Sender: tObject; var Key: Char);
begin
    if key = #27 then
       begin
//          if Bit_Cancelar.Visible then
//             Bit_Cancelar.Click
//          else
//          if Bit_Sair.Visible then
//             Bit_Sair.Click;
          close;
          key := #0;
       end;
end;

procedure TFormOperFisc.FormResize(Sender: TObject);
begin
     Height := 635;
     Width := 1106;
end;

procedure TFormOperFisc.CEO_INDICE_IMPChange(Sender: tObject);
begin
  if CEO_INDICE_IMP.Value > 0 then
    CEO_AUME_ICMS.Value := 0;
end;

procedure TFormOperFisc.ChkTribPISCOFINSClick(Sender: TObject);
begin
  if not ChkTribPISCOFINS.Checked then
      edCSTPIS.Clear;
//  edCSTPIS.Visible := ChkTribPISCOFINS.Checked;
//  lCSTPIS.Visible := ChkTribPISCOFINS.Checked;

end;

procedure TFormOperFisc.ChOPE_TRIBIPIClick(Sender: TObject);
begin
  if not ChOPE_TRIBIPI.Checked  then
    edCSTIPI.Clear
//  edCSTIPI.Visible := ChOPE_TRIBIPI.Checked ;
//  lCSTIPI.Visible := ChOPE_TRIBIPI.Checked;
end;

procedure TFormOperFisc.CEO_AUME_ICMSChange(Sender: tObject);
begin
  if CEO_AUME_ICMS.Value > 0 then
    CEO_INDICE_IMP.Value := 0;

end;

procedure TFormOperFisc.DBChOPE_SEMVLCOMClick(Sender: tObject);
begin
   if DBChOPE_SEMVLCOM.checked  then
      DBCheckMostraSVC.Enabled := True;
end;

procedure TFormOperFisc.DBChOPE_SERVICOClick(Sender: TObject);
begin
 // DBChOPE_ESCRITA.Checked := not
  if DataCadastros.DsOperFisc.DataSet.State in dsEditModes then
    if DBChOPE_SERVICO.Checked then
     DataCadastros.DsOperFisc.DataSet.FieldByName('OPE_ESCRITA').AsString := 'N'  ;

  chkretencao.Enabled := DBChOPE_SERVICO.Checked;

end;

procedure TFormOperFisc.DbRadTipoNFExit(Sender: tObject);
begin
   PreencheCombo;
end;

procedure TFormOperFisc.DBEdit3KeyDown(Sender: tObject; var Key: Word;
  Shift: TShiftState);
begin
     if key = VK_F8 then
        btCson1.Click;
end;

procedure TFormOperFisc.DBEdit1KeyDown(Sender: tObject; var Key: Word;
  Shift: TShiftState);
begin
     if key = VK_F8 then
        btCson2.Click;
end;

procedure TFormOperFisc.btCson1Click(Sender: tObject);
VAR tcr: TfrmCSOSN;
begin
     try
      tcr:= TfrmCSOSN.Create(self);
      tcr.FormStyle := fsNormal;
      tcr.Visible := false;
      tcr.FormStyle := fsNormal;
      tcr.Visible := false;
      tcr.CampoIDRetorno:='CSON_COD';
      if tcr.pesquisa(0) then
      begin
           if DataCadastros.CdsOperFisc.State = dsBrowse then
              DataCadastros.CdsOperFisc.Edit;
           if TComponent(Sender).Tag=1 then
              DataCadastros.CdsOperFiscEMP_CSOSN.asstring := tcr.IDRetorno
           Else
              DataCadastros.CdsOperFiscEMP_CSOSN_ST.asstring := tcr.IDRetorno;
      end;
     finally
            FreeAndNil(tcr);
     end;

end;

procedure TFormOperFisc.FormDestroy(Sender: TObject);
begin
     FormOperFisc := Nil;
end;

end.
