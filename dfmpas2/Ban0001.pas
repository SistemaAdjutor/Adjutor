unit Ban0001;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Mask, DBCtrls, StdCtrls, ExtCtrls, Buttons, DB, Provider, SqlExpr,SqlClientDataSet,
  ppModule, raCodMod, ppCtrls, ppBands, ppVar, ppPrnabl, ppClass, ppCache,
  ppDB, ppProd, ppReport, ppComm, ppRelatv, ppDBPipe, DBClient,
  ComCtrls, Grids, DBGrids,  DBLocal, DBLocalS,
  ppParameter, Data.DBXFirebird, ppDesignLayer, SimpleDS, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, cxDBEdit, RxToolEdit, RxCurrEdit, RxDBCtrl,
  JvExMask, JvToolEdit, JvDBControls, Data.FMTBcd, SgDbSeachComboUnit, cxMaskEdit, cxSpinEdit;

type
  TFormBanco = class(TForm)
    SqlCdsRelBancos: TSQLClientDataSet;
    DsRelBancos: TDataSource;
    ppDBRelBancos: TppDBPipeline;
    ppRPRelBanco01: TppReport;
    SqlCdsRelBancosBAN_CODIGO: TStringField;
    SqlCdsRelBancosBAN_RAZAO: TStringField;
    SqlCdsRelBancosBAN_APELIDO: TStringField;
    SqlCdsRelBancosBAN_CODAGE: TStringField;
    SqlCdsRelBancosBAN_ENDERE: TStringField;
    SqlCdsRelBancosBAN_CIDADE: TStringField;
    SqlCdsRelBancosBAN_UF: TStringField;
    SqlCdsRelBancosBAN_FONE: TStringField;
    SqlCdsRelBancosBAN_FAX: TStringField;
    SqlCdsRelBancosBAN_CEP: TStringField;
    SqlCdsRelBancosBAN_CONTATO: TStringField;
    SqlCdsRelBancosBAN_JUROMES: TFMTBCdField;
    SqlCdsRelBancosBAN_OBS: TStringField;
    SqlCdsRelBancosEMP_CODIGO: TStringField;
    SqlCdsRelBancosBAN_DNAS_CONT: TSQLTimeStampField;
    SqlCdsRelBancosBAN_EMAIL: TStringField;
    SqlCdsRelBancosBAN_HOME: TStringField;
    SqlCdsRelBancosBAN_CONTA: TStringField;
    SqlCdsRelBancosBAN_DIGCONTA: TStringField;
    SqlCdsRelBancosBAN_COD_CART: TStringField;
    SqlCdsRelBancosBAN_N_CARTEIRA: TStringField;
    SqlCdsRelBancosBAN_INSTRUCAO1: TStringField;
    SqlCdsRelBancosBAN_INSTRUCAO2: TStringField;
    SqlCdsRelBancosBAN_CODNOBANCO: TStringField;
    SqlCdsRelBancosBAN_TAM_NONUM: TStringField;
    SqlCdsRelBancosBAN_PROTPRAZO: TStringField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    SqlCdsBancos: TSQLClientDataSet;
    SqlCdsBancosBCO_CODIGO: TIntegerField;
    SqlCdsBancosBCO_DESCRICAO: TStringField;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    Label11: TLabel;
    Label15: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label26: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    DBeBan_codage: TDBEdit;
    DBeBan_joromes: TDBEdit;
    DbeBan_conta: TDBEdit;
    DbeBan_Carteira: TDBEdit;
    DbeBan_Instrucao1: TDBEdit;
    DbeBan_Instrucao2: TDBEdit;
    DbeBan_Codnobanco: TDBEdit;
    DbeBan_Tam_Nonum: TDBEdit;
    DBEdit1: TDBEdit;
    DbeBan_CODAGEDIG:TDBEdit;
    Dbe_Prazo: TDBEdit;
    DBEdit4: TDBEdit;
    CbEspecie: TComboBox;
    CbAceite: TComboBox;
    DBeDigitoConta: TDBEdit;
    DBEBAN_SEQ_NOSSONUMERO: TDBEdit;
    CbxCarteira: TComboBox;
    Label1: TLabel;
    EdtBan_Codigo: TEdit;
    Label33: TLabel;
    CbBancos: TComboBox;
    Label2: TLabel;
    DBeBan_apelido: TDBEdit;
    Label13: TLabel;
    DBeBan_endere: TDBEdit;
    Label5: TLabel;
    DBeBan_cep: TDBEdit;
    Label6: TLabel;
    DBeBan_cidade: TDBEdit;
    Label7: TLabel;
    DBeBan_UF: TDBEdit;
    DBeBan_Fax: TDBEdit;
    Label9: TLabel;
    DBeBan_fone: TDBEdit;
    Label8: TLabel;
    Label10: TLabel;
    DBeBan_contato: TDBEdit;
    Label14: TLabel;
    DbeBAN_EMAIL: TDBEdit;
    Label16: TLabel;
    DbeBAN_HOME: TDBEdit;
    Label12: TLabel;
    DBmBan_obs: TDBMemo;
    GroupBox2: TGroupBox;
    Label31: TLabel;
    Label32: TLabel;
    DiretorioRemessa: TDirectoryEdit;
    DiretorioRetorno: TDirectoryEdit;
    DBNavigator1: TDBNavigator;
    Label3: TLabel;
    DBEdit7: TDBEdit;
    Label39: TLabel;
    DBEdit8: TDBEdit;
    Label40: TLabel;
    DBEdit9: TDBEdit;
    Label41: TLabel;
    DBEdit10: TDBEdit;
    Label36: TLabel;
    CbxCheq: TComboBox;
    Label35: TLabel;
    CbxFluxo: TComboBox;
    ppHeaderBand1: TppHeaderBand;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine5: TppLine;
    LBL_00_EMPRESA: TppLabel;
    LBL_00_LTITULO1: TppLabel;
    LBL_00_LTITULO2: TppLabel;
    ppLine6: TppLine;
    ppSystemVariable3: TppSystemVariable;
    ppSystemVariable4: TppSystemVariable;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLine3: TppLine;
    ppLabel1: TppLabel;
    ppDBCalc1: TppDBCalc;
    raCodeModule1: TraCodeModule;
    Label46: TLabel;
    cSeqNumCheque: TCurrencyEdit;
    cBanco: TCurrencyEdit;
    Label51: TLabel;
    GroupBox3: TGroupBox;
    Label44: TLabel;
    Label45: TLabel;
    Label48: TLabel;
    Label50: TLabel;
    DBEdit12: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit19: TDBEdit;
    Label53: TLabel;
    CbRespBoleto: TComboBox;
    Label28: TLabel;
    DBEdit21: TDBEdit;
    Bit_Sair: TBitBtn;
    Bit_Gravar: TBitBtn;
    Bit_Excluir: TBitBtn;
    Bit_novo: TBitBtn;
    Bit_Cancelar: TBitBtn;
    Bit_Lista: TBitBtn;
    Bit_Relatorio: TBitBtn;
    DBText1: TDBText;
    Panel1: TPanel;
    GroupBox4: TGroupBox;
    Label25: TLabel;
    DBEdit2: TDBEdit;
    Label27: TLabel;
    DBEdit5: TDBEdit;
    Label34: TLabel;
    DBEdit6: TDBEdit;
    GroupBox5: TGroupBox;
    DBEdit18: TDBEdit;
    DBEdit11: TDBEdit;
    Label42: TLabel;
    Label49: TLabel;
    Label43: TLabel;
    DBEdit13: TDBEdit;
    Label47: TLabel;
    DBEdit15: TDBEdit;
    GroupBox6: TGroupBox;
    DBText2: TDBText;
    Label54: TLabel;
    ImgBanco: TImage;
    Label55: TLabel;
    Label56: TLabel;
    DBEdit17: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    Label52: TLabel;
    DBEdit20: TDBEdit;
    DBEdit22: TDBEdit;
    Label57: TLabel;
    Label58: TLabel;
    cxDBTextConvenio: TcxDBTextEdit;
    Label59: TLabel;
    rgLeiaute: TDBRadioGroup;
    DbeBAN_DNAS_CONT: TJvDBDateEdit;
    DataConciliacao: TJvDBDateEdit;
    Label60: TLabel;
    DBEdit3: TDBEdit;
    chkAtivo: TDBCheckBox;
    SqlCdsRelBancosBAN_INSTRUCAO3: TStringField;
    DBEdit23: TDBEdit;
    Label61: TLabel;
    qFormaPagamento: TSQLQuery;
    GroupBox7: TGroupBox;
    cbForma: TSgDbSearchCombo;
    edFormaCodigo: TCurrencyEdit;
    DBRadioGroup1: TDBRadioGroup;
    gbDiasParaBaixa: TGroupBox;
    edDiasParaBaixa: TcxDBSpinEdit;
    lbDiasParaBaixa: TLabel;
    Label62: TLabel;
    procedure MudaCorCampos(Sender: tObject);
    procedure Bit_SairClick(Sender: tObject);
    procedure Bit_novoClick(Sender: tObject);
    procedure Bit_GravarClick(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure Bit_ExcluirClick(Sender: tObject);
    procedure VerificaEdicao;
    procedure DesabilitaBotoes;
    procedure HabilitaBotoes;
    procedure BuscaBanco;
    procedure Bit_CancelarClick(Sender: tObject);
    procedure DBNavigator1Click(Sender: tObject; Button: TNavigateBtn);
    procedure Bit_ListaClick(Sender: tObject);
    procedure FormCloseQuery(Sender: tObject; var CanClose: Boolean);
    procedure EdtBan_CodigoExit(Sender: tObject);
    procedure DBeBan_razaoExit(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure Bit_RelatorioClick(Sender: tObject);
    procedure DbeBan_Instrucao1KeyPress(Sender: tObject; var Key: Char);
    procedure EdtBan_CodigoEnter(Sender: tObject);
    procedure EdtBan_CodigoKeyPress(Sender: tObject; var Key: Char);
    procedure FormKeyPress(Sender: tObject; var Key: Char);
    procedure DiretorioRemessaClick(Sender: tObject);
    procedure DiretorioRetornoKeyPress(Sender: tObject; var Key: Char);
    procedure DiretorioRemessaKeyPress(Sender: tObject; var Key: Char);
    procedure CbBancosExit(Sender: tObject);
    procedure CbBancosClick(Sender: tObject);
    procedure DbeBAN_DNAS_CONTExit(Sender: tObject);
    procedure CbxCheqChange(Sender: tObject);
    procedure CbAceiteEnter(Sender: tObject);
    procedure cBancoExit(Sender: tObject);
    procedure FormCreate(Sender: tObject);
    procedure cSeqNumChequeExit(Sender: tObject);
    procedure PageControl1Change(Sender: tObject);
    procedure DsRelBancosDataChange(Sender: tObject; Field: TField);
    procedure DBEdit20KeyPress(Sender: tObject; var Key: Char);
    procedure DBEdit22KeyPress(Sender: tObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
    procedure cxDBTextConvenioExit(Sender: TObject);
    procedure edFormaCodigoExit(Sender: TObject);
    procedure cbFormaSelect(Sender: TObject);
    procedure cbFormaExit(Sender: TObject);
    procedure CbEspecieExit(Sender: TObject);
    procedure CbAceiteExit(Sender: TObject);
    procedure CbxCarteiraExit(Sender: TObject);
    procedure CbxFluxoExit(Sender: TObject);
    procedure CbxCheqExit(Sender: TObject);
    procedure CbEspecieClick(Sender: TObject);
    procedure CbAceiteClick(Sender: TObject);
    procedure CbxCarteiraClick(Sender: TObject);
    procedure CbRespBoletoExit(Sender: TObject);
  private
    { Private declarations }
    bIncluir     : Boolean;
    {campos}
    CampoEdit    :TEdit;
    CampoDBEdit  :TDBEdit;
    CampoDbMemo  :TDBMemo;
    CampoData    :TDBDateEdit;
    CampoCurrency:TCurrencyEdit;
    CampoCombo   :TComboBox;
    procedure CarregaBancos;
    procedure Habilita_Objetos;
    procedure Desabilita_Objetos;
    procedure Limpa_Objetos;
    procedure CarregaLogo;

    Function Verifica_Lancamentos(sConta:String):Boolean;


  public
    procedure AtribuirEspecieBanco(wCOD_BANCO:String);
    procedure VerificaCampos;
    procedure MostraDados;
    procedure BotoesAcesso;

  end;

var
  FormBanco: TFormBanco;

implementation

uses Ban0002, RWFunc, DataCad, Men0001, uteis, iniciodb;

 {$R *.DFM}

procedure TFormBanco.MudaCorCampos(Sender: tObject);
begin
   {CampoCurrency:TCurrencyEdit}
   if Assigned(CampoCurrency) then
      begin
         CampoCurrency.color                                                         := clWindow;
      end;
   if ActiveControl is TCurrencyEdit then
      begin
         if TCurrencyEdit(ActiveControl).color = $00D7D7D7 then
            begin
               exit;
            end;
         TCurrencyEdit(ActiveControl).color                                          := $0080FFFF;
         CampoCurrency                                                               := TCurrencyEdit(ActiveControl);
      end
   else
      begin
         CampoCurrency                                                               := nil;
      end;
  {cor dos campos TDBEdit}
   if Assigned(CampoDbEdit) then
      begin
         CampoDbEdit.color                                                           := clWindow;
      end;
   if ActiveControl is TDBEdit then
      begin
         if TDBEdit(ActiveControl).color = $00D7D7D7 then
            begin
               exit;
            end;
         TDBEdit(ActiveControl).color                                                := $0080FFFF;
         CampoDbEdit                                                                 := TDBEdit(ActiveControl);
      end
   else
      begin
         CampoDbEdit                                                                 := nil;
      end;
  {CampoEdit :TEdit}
   if Assigned(CampoEdit) then
      begin
         CampoEdit.color                                                             := clWindow;
      end;
   if ActiveControl is TEdit then
      begin
         if TEdit(ActiveControl).color = $00D7D7D7 then
            begin
               exit;
            end;
         TEdit(ActiveControl).color                                                  := $0080FFFF;
         CampoEdit                                                                   := TEdit(ActiveControl);
      end
   else
      begin
         CampoEdit                                                                   := nil;
      end;
  {CampoDbMemo:TDBMemo}
   if Assigned(CampoDbMemo) then
      begin
         CampoDbMemo.color                                                           := clWindow;
      end;
   if ActiveControl is TDBMemo then
      begin
         TDBMemo(ActiveControl).color                                                := $0080FFFF;
         CampoDbMemo                                                                 := TDBMemo(ActiveControl);
      end
   else
      begin
         CampoDbMemo                                                                 := nil;
      end;
  {cor dos campos TDBDateEdit}
   if Assigned(CampoData) then
      begin
         CampoData.color                                                             := clWindow;
      end;
   if ActiveControl is TDBDateEdit then
      begin
         if TDBDateEdit(ActiveControl).color = $00D7D7D7 then
            begin
               exit;
            end;
         TDBDateEdit(ActiveControl).color                                            := $0080FFFF;
         CampoData                                                                   := TDBDateEdit(ActiveControl);
      end
   else
      begin
         CampoData                                                                   := nil;
      end;
    {CampoCombo   :TComboBox}
   if Assigned(CampoCombo) then
      begin
         CampoCombo.color                                                            := clWindow;
      end;
   if ActiveControl is TComboBox then
      begin
         if TComboBox(ActiveControl).color = $00D7D7D7 then
            begin
               exit;
            end;
         TComboBox(ActiveControl).color                                              := $0080FFFF;
         CampoCombo                                                                  := TComboBox(ActiveControl);
      end
   else
      begin
         CampoCombo                                                                  := nil;
      end;
end;

procedure TFormBanco.verificaEdicao;
begin
    screen.cursor                                                                    :=crHourglass;
    if DataCadastros.CdsBanco.State in [dsEdit,dsInsert] then
       begin
           if uteis.confirmacao ( 'Deseja salvar alterações ?') = idyes then
              begin
                  DataCadastros.CdsBancoBAN_CODIGO.AsString                          := EdtBan_Codigo.text;
                  DataCadastros.CdsBanco.ApplyUpdates(0);
                  Habilitabotoes;
              end
           else
              begin
                  DataCadastros.CdsBanco.Cancel;
                  Habilitabotoes;
              end;
       end;
    screen.cursor                                                                    := crDefault;
end;

procedure TFormBanco.HabilitaBotoes;
begin
    Bit_novo.Enabled                                                                 := True;
    Bit_Excluir.Enabled                                                              := True;
    Bit_Lista.Enabled                                                                := True;
    Bit_Relatorio.Enabled                                                            := True;
    Bit_Gravar.Enabled                                                               := False;
    Bit_Cancelar.Enabled                                                             := False;
    Bit_Cancelar.Visible                                                             := False;
    Bit_Sair.Visible                                                                 := True;

    DBNavigator1.Enabled                                                             := True;
    if DataCadastros.CdsBanco.IsEmpty Then  //Evita alteração antes que se
       EdtBan_codigo.Enabled                                                         := False
    else
       EdtBan_Codigo.Enabled                                                         := True;
    EdtBan_Codigo.Color                                                              := clWindow;

    BotoesAcesso;
end;

procedure TFormBanco.DesabilitaBotoes;
begin
    BotoesAcesso;
    Bit_novo.Enabled                                                                 := False;
    Bit_Excluir.Enabled                                                              := False;
    Bit_Sair.Visible                                                                 := False;
    Bit_Lista.Enabled                                                                := False;
    Bit_Relatorio.Enabled                                                            := False;
    Bit_Gravar.Enabled                                                               := True;
    Bit_Cancelar.Enabled                                                             := True;
    Bit_Cancelar.Visible                                                             := True;
    EdtBan_Codigo.Enabled                                                            := False;
    EdtBan_Codigo.Color                                                              := clSilver;
    DBNavigator1.Enabled                                                             := False;

end;

procedure TFormBanco.buscaBanco; //Busca o Banco pelo codigo
begin
    if EdtBan_codigo.Text <> '' then
       begin
           if DataCadastros.CdsBanco.Locate('BAN_CODIGO',EdtBan_Codigo.Text,[])= False then
              begin
                  Messagebeep($ffffffff);
                  uteis.aviso('Código do banco não cadastrado!!!');
                  EdtBan_Codigo.Text                                                 := DataCadastros.CdsBancoBAN_CODIGO.AsString;
              end;
       end;
end;

procedure TFormBanco.FormShow(Sender: tObject);
begin
    Left                                                                             := 88;
//    Top                                                                              := 18;
    {ativa o método ao evento OnActiveControlChange}
    Screen.OnActiveControlChange                                                     := MudaCorCampos;
    Screen.Cursor                                                                    := crHourGlass;
    Try
      CarregaBancos;
      //
      DataCadastros.CdsBanco.Close;
      DataCadastros.CdsBanco.CommandText                                             := SQLDEF('BANCOS','SELECT * FROM BAN0000','','BAN_CODIGO','');
      DataCadastros.CdsBanco.Open;
      if DataCadastros.CdsBanco.IsEmpty Then  //Evita alteração antes que se
         begin                            //inclua registros na tabela.
             DataCadastros.DsBanco.AutoEdit                                          := False;
             EdtBan_codigo.Enabled                                                   := False;
             Desabilita_Objetos;
             Limpa_Objetos;
             HabilitaBotoes;
         end
      else
         begin
             DataCadastros.DsBanco.AutoEdit                                          := True;
             Habilitabotoes;
             EdtBan_Codigo.text                                                      := DataCadastros.CdsBancoBAN_CODIGO.AsString;
             MostraDados;
             Habilita_Objetos;
         end;
      //
      AtribuirEspecieBanco(FormatFloat('000',cBanco.AsInteger));
      PageControl1.ActivePageIndex                                                   := 0;
      DBeBan_apelido.SetFocus;
      //
      VerificaCampos;
    except on E:EdatabaseError do
       uteis.erro  (Pchar('Impossivel acessar tabela de Bancos!!!'+e.Message));
    end;
    screen.Cursor                                                                    := crDefault;
end;

procedure TFormBanco.Bit_ListaClick(Sender: tObject);
begin
    try
      try
        FormBancoGrid := TFormBancoGrid.Create(Application);
        FormBancoGrid.ShowModal;
      finally
        FormBancoGrid.Destroy;
        FormBancoGrid := nil;
        BuscaBanco;
        if (PageControl1.ActivePageIndex = 0) then
           DBeBan_apelido.Setfocus
        else
           DBeBan_codage.SetFocus;
        MostraDados;
      end;
    except
        //beep;
        uteis.erro  ('Ocorreu um erro na criação do formulário!');
    end;
end;

procedure TFormBanco.Bit_novoClick(Sender: tObject);
begin
    try
      if (DataCadastros.DsBanco.AutoEdit = False) then
         DataCadastros.DsBanco.AutoEdit                                              := true;
      //
      Limpa_Objetos;
      bIncluir                                                                       := True;
      PageControl1.TabIndex                                                          := 0;
      Screen.Cursor                                                                  := crHourglass;
      DataCadastros.CdsBanco.Insert;
      EdtBan_Codigo.Text                                                             := '0000';
      DataCadastros.CdsBancoBAN_LIMITECREDITO.AsCurrency                             := 0;
      DataCadastros.CdsBancoBAN_VCTOLIMITE.AsInteger                                 := 0;
      DataCadastros.CdsBancoBAN_DIASCRED_COBRANCA.AsInteger                          := 0;
      DataCadastros.CdsBancoBAN_JUROMES.AsCurrency                                   := 0;
      //
      DataCadastros.CdsBancoBAN_LIMITE_DESCTODUPL.AsCurrency                         := 0;
      DataCadastros.CdsBancoBAN_LIMITE_DESCTOCHEQ.AsCurrency                         := 0;
      DataCadastros.CdsBancoBAN_NDIAS_MAXDESCTO.AsInteger                            := 0;
      DataCadastros.CdsBancoBAN_OUTROS_CREDITOS.AsCurrency                           := 0;
      DataCadastros.CdsBancoBAN_JUROS_DESCTOCHEQ.AsCurrency                          := 0;
      DataCadastros.CdsBancoBAN_CARTEIRA_REGISTRO.AsString := 'S';
      //
      DataCadastros.CdsBancoBAN_PROTPRAZO.AsString                                   := '00';
      CbxFluxo.ItemIndex                                                             := 1;
      CbxCheq.ItemIndex                                                              := 1;
      CbBancos.Text                                                                  := '';
      Screen.Cursor                                                                  := crDefault;
      DesabilitaBotoes;
      Habilita_Objetos;
      cBanco.SetFocus;
    except on E:EdatabaseError do
       uteis.erro  (Pchar('Erro ao inserir registro !'+e.Message));
    end;
end;

procedure TFormBanco.Bit_ExcluirClick(Sender: tObject);
begin
    if DataCadastros.CdsBanco.IsEmpty Then   //evita exclussão de registro
       Begin                                      // em uma Tabela Vazia.
           messagebeep($ffff);
           if DataCadastros.DsBanco.AutoEdit = true then
              DataCadastros.DsBanco.AutoEdit                                         := false;
           uteis.aviso('Não existe banco cadastrado !!!');
           if (PageControl1.ActivePageIndex = 0) then
              DBeBan_apelido.Setfocus
           else
              DBeBan_codage.SetFocus;
       end
    else
    if uteis.confirmacao ( 'Deseja Excluir este Banco ?')= Mryes then
       begin
           if (Verifica_Lancamentos(StrZero(EdtBan_Codigo.Text,4))=False) then
              begin
                 Screen.cursor                                                       :=crHourglass;
                 DataCadastros.CdsBanco.Delete;
                 DatacAdastros.CdsBanco.ApplyUpdates(0);
              end
           else
              begin
                 uteis.aviso('Conta não pode ser excluída. Existe Lançamentos !');
              end;
           if (DatacAdastros.CdsBanco.IsEmpty) then
              begin
                 DataCadastros.DsBanco.AutoEdit                                      := false;
                 Desabilita_Objetos;
                 Limpa_Objetos;
              end
           else
              begin
                 DatacAdastros.DsBanco.AutoEdit                                      := True;
                 Habilita_Objetos;
              end;
           screen.cursor                                                             := crDefault;
       end;
    EdtBan_codigo.text                                                               := DataCadastros.CdsBancoBan_codigo.AsString;
    MostraDados;
    if (PageControl1.ActivePageIndex = 0) then
       DBeBan_apelido.Setfocus
    else
       DBeBan_codage.SetFocus;
end;

procedure TFormBanco.Bit_GravarClick(Sender: tObject);
begin
    //salva o registro
    if (DataConciliacao.Date = 0) AND NOT chkAtivo.Checked  then
    begin
      uteis.Aviso('Data do saldo da conciliação bancária não preenchido');
      DataConciliacao.SetFocus;

    end;
    if (DBeBan_Apelido.Text = '') AND NOT chkAtivo.Checked then
       begin
           uteis.aviso('Não Posso Gravar:'+ #13 + #10 +
                 'Fantasia : deve ser preenchido!!!');
           DBeBan_Apelido.Setfocus;
           DBEBAN_APELIDO.SelectAll;
       end
    else
    if (cBanco.AsInteger = 0) AND NOT chkAtivo.Checked then
       begin
           uteis.aviso('Não Posso Gravar:'+ #13 + #10 +
                 'Código do Banco : deve ser preenchido!!!');
           cBanco.Setfocus;
           cBanco.SelectAll;
       end
    else
       begin
           try
             Screen.Cursor                                                           := crHourGlass;
            // VerificaCampos;
            {
            CARTEIRA
            COBRANÇA SIMPLES
            COBRANÇA CAUCIONADA
            COBRANÇA DESCONTADA
            COBRANÇA SEM REGISTRO
            COBRANÇA RAPIDA
            }
             DataCadastros.CdsBancoBAN_COBTIPO.AsString                              := IIF(CbxCarteira.ItemIndex = 0,''  ,
                                                             IIF(CbxCarteira.ItemIndex = 1,'CT',
                                                             IIF(CbxCarteira.ItemIndex = 2,'CS',
                                                             IIF(CbxCarteira.ItemIndex = 3,'CC',
                                                             IIF(CbxCarteira.ItemIndex = 4,'CD',
                                                             IIF(CbxCarteira.ItemIndex = 5,'SR','CR'))))));

             DataCadastros.CdsBancoBAN_ACEITE.AsString                               := IIF(CbAceite.ItemIndex = 0,'A','N');

             if (CbEspecie.Text <> '') then
               begin
                 if cBanco.Text = '748' then
                  DataCadastros.CdsBancoBAN_ESPECIE_COB.AsString                     := COPY(CbEspecie.Text,1,1)
                 else
                  DataCadastros.CdsBancoBAN_ESPECIE_COB.AsString                     := COPY(CbEspecie.Text,1,2);
               end
             else
               begin
                  DataCadastros.CdsBancoBAN_ESPECIE_COB.AsString                     := '';
               end;


             //DataCadastros.CdsBancoBAN_CARTEIRA_REGISTRO.AsString                  := IIF(CbRegistrada.ItemIndex = 0,'N','S');   // NAO, SIM
             DataCadastros.CdsBancoBAN_RESP_BOLETO.AsString                          := IIF(CbRespBoleto.ItemIndex = 0,'B',IIF(CbRespBoleto.ItemIndex = 1,'E',''));   // BANCO, EMPRESA

             DataCadastros.CdsBancoBAN_FLUXOCAIXA.AsString                           := IIF(CbxFluxo.ItemIndex = 0,'S','N');
             DataCadastros.CdsBancoBAN_GERACHEQUE.AsString                           := IIF(CbxCheq.ItemIndex  = 0,'S','N');

             DataCadastros.CdsBancoBAN_CAMINHO_REMESSA.AsString                      := DiretorioRemessa.Text;
             DataCadastros.CdsBancoBAN_CAMINHO_RETORNO.AsString                      := DiretorioRetorno.Text;
             DataCadastros.CdsBancoBAN_CODIGO.AsString                               := StrZero(EdtBan_Codigo.Text,EdtBan_Codigo.MaxLength);
             DataCadastros.CdsBancoBAN_PROTPRAZO.AsString                            := Justifica('e',DataCadastros.CdsBancoBAN_PROTPRAZO.Value,2,'0');
             DataCadastros.CdsBancoBAN_SEQ_CHEQUE.AsInteger                          := cSeqNumCheque.AsInteger;
             DataCadastros.CdsBancoBAN_COD_APELIDO.AsInteger                         := cBanco.AsInteger;
             DataCadastros.CdsBancoFPG_REGISTRO.AsInteger                            := edFormaCodigo.AsInteger;
             if (DataCadastros.CdsBanco.State in [dsInsert]) then
                DataCadastros.CdsBancoEMP_CODIGO.AsString                            := dbInicio.Empresa.EMP_CODIGO;
             DataCadastros.CdsBanco.ApplyUpdates(0);
             DataCadastros.CdsBanco.refresh;
             Screen.Cursor                                                           := crDefault;
             bIncluir                                                                := False;
             Habilitabotoes;
             Habilita_Objetos;
             EdtBan_codigo.Text                                                      := DataCadastros.CdsBancoBAN_CODIGO.AsString;
             PageControl1.ActivePageIndex                                            := 0;
             DBeBan_apelido.SetFocus;
             DataCadastros.DsBanco.AutoEdit                                          := true;
             {cria diretorio conforme banco para remessa}
             if (DiretorioRemessa.Text <> '') then
                begin
                   if (DiretorioRemessa.Text <> 'C:\') then
                      begin
                          if not DirectoryExists(DiretorioRemessa.Text+'\'+FormatFloat('000',cBanco.AsInteger)) then
                             ForceDirectories(DiretorioRemessa.Text+'\'+FormatFloat('000',cBanco.AsInteger));
                      end;
                end;
             {cria diretorio conforme banco para retorno}
             if (DiretorioRetorno.Text <> '') then
                begin
                   if (DiretorioRetorno.Text <> 'C:\') then
                      begin
                          if not DirectoryExists(DiretorioRetorno.Text+'\'+FormatFloat('000',cBanco.AsInteger)) then
                             ForceDirectories(DiretorioRetorno.Text+'\'+FormatFloat('000',cBanco.AsInteger));
                      end;
                end;
           except on E:EDataBaseError do
               uteis.erro  (pchar('Erro ao gravar o registro !'+e.message));
           end;
       end;
end;

procedure TFormBanco.Bit_CancelarClick(Sender: tObject);
begin
    DataCadastros.CdsBanco.CancelUpdates;
    DataCadastros.CdsBanco.Cancel;
    if DataCadastros.CdsBanco.IsEmpty Then   //Ao cancelar ultimo record da
       begin                                      //tabela deixa autoedit=true;
           DataCadastros.DsBanco.AutoEdit                                            := False;
           EdtBan_codigo.Enabled                                                     := False;
           bIncluir                                                                  := False;
           Desabilita_Objetos;
           Limpa_Objetos;
           HabilitaBotoes;
       end
    else
       begin
          EdtBan_Codigo.Text                                                         := DataCadastros.CdsBancoBAN_CODIGO.AsString;
          HabilitaBotoes;
          MostraDados;
          PageControl1.ActivePageIndex                                               := 0;
          DBeBan_apelido.SetFocus;
       end;
end;

procedure TFormBanco.Bit_SairClick(Sender: tObject);
begin
   close;
end;

procedure TFormBanco.BotoesAcesso;
begin
     if assigned(FormBanco) then
     begin
       Bit_novo.Enabled := Uteis.AcessoUsuario('CadastrosContas Bancos',DBInicio.Usuario.CODIGO,FormBanco).Incluir;
       Bit_Excluir.Enabled := Uteis.AcessoUsuario('CadastrosContas Bancos',DBInicio.Usuario.CODIGO,FormBanco).Exluir;
       Bit_Relatorio.Enabled := Uteis.AcessoUsuario('CadastrosContas Bancos',DBInicio.Usuario.CODIGO,FormBanco).Relatorio;
       DataCadastros.DsBanco.AutoEdit := Uteis.AcessoUsuario('CadastrosContas Bancos',DBInicio.Usuario.CODIGO,FormBanco).Alterar;
     end;
end;

procedure TFormBanco.DBNavigator1Click(Sender: tObject;
  Button: TNavigateBtn);
begin
//   EdtBan_Codigo.text                                                                := DataCadastros.CdsBancoBAN_CODIGO.AsString;
//   VerificaCampos;
//   MostraDados;
//   AtribuirEspecieBanco(FormatFloat('000',cBanco.AsInteger));
end;

procedure TFormBanco.EdtBan_CodigoExit(Sender: tObject);
begin
    if (DataCadastros.CdsBanco.State in [dsBrowse]) and not (DataCadastros.CdsBanco.IsEmpty) then
        begin
            EdtBan_codigo.Text                                                       := StrZero(EdtBan_codigo.Text, EdtBan_codigo.Maxlength);
            Screen.Cursor                                                            := crHourGlass;
            BuscaBanco;
            Screen.Cursor                                                            := crDefault;
            CarregaLogo;
        end;
end;

procedure TFormBanco.FormCloseQuery(Sender: tObject; var CanClose: Boolean);
begin
    Screen.Cursor                                                                    := crHourGlass;
    Verificaedicao;
    Screen.Cursor                                                                    := crDefault;
    Try
      DataCadastros.CdsBanco.Close;
      SqlCdsRelBancos.Close;
    except on E:EdataBaseError do
      uteis.erro  (pchar('Impossível fechar a tabela bancos !'+e.message));
    end;
end;

procedure TFormBanco.DBeBan_razaoExit(Sender: tObject);
var
WTexto : String;
begin
    if DataCadastros.CdsBanco.State in [dsEdit,dsInsert] then
       begin
           WTexto                                                                    := DataCadastros.CdsBancoBAN_RAZAO.AsString;
           if DbeBan_Apelido.Text = '' then
              begin
                  DataCadastros.CdsBancoBAN_APELIDO.AsString                         := WTexto;
              end;
       end;
end;

procedure TFormBanco.FormClose(Sender: tObject; var Action: TCloseAction);
begin
    Action := CaFree;
    Screen.OnActiveControlChange                                                  := NIL;
    //CLOSE;
end;

procedure TFormBanco.Bit_RelatorioClick(Sender: tObject);
begin
  // 17/03/2011 = com problemas criando paginas infinitas no relatorio
  {  Screen.Cursor                                                                   := crHourGlass;
    Try
      SqlCdsRelBancos.Close;
      SqlCdsRelBancos.CommandText                                                    := SQLDEF('BANCOS','SELECT * FROM BAN0000','','BAN_CODIGO','');
      SqlCdsRelBancos.Open;
      LBL_00_EMPRESA.Caption                                                         := dbInicio.Empresa.Razao;
      LBL_00_LTITULO1.Caption                                                        := 'RELAÇÃO DOS BANCOS';
      LBL_00_LTITULO2.Caption                                                        := 'ORDEM POR BANCO';
      ppRPRelBanco01.DeviceType                                                      := 'Screen';
      ppRPRelBanco01.Print;
    except on E:EdatabaseError do
       uteis.erro  (Pchar('Error ao criar o relatório !'+e.Message));
    end;
    Screen.Cursor                                                                    := crDefault;  }
end;

procedure TFormBanco.DbeBan_Instrucao1KeyPress(Sender: tObject;
  var Key: Char);
begin
    if not(Key in['0'..'9',#8]) then
      begin
        //beep;
        Key                                                                          :=#0;
      end;
end;

procedure TFormBanco.EdtBan_CodigoEnter(Sender: tObject);
begin
    EdtBan_Codigo.SelectAll;
end;

procedure TFormBanco.EdtBan_CodigoKeyPress(Sender: tObject; var Key: Char);
begin
    if not (key in ['0'..'9',#8]) then
       begin
          //beep;
          Key                                                                        := #0;
       end;
end;

procedure TFormBanco.FormKeyPress(Sender: tObject; var Key: Char);
begin
    if key = #27 then
       begin
          if Bit_Cancelar.Visible then
             Bit_Cancelar.Click
          else
          if Bit_Sair.Visible then
             Bit_Sair.Click;
          close;
          key    := #0;
       end;
end;

procedure TFormBanco.AtribuirEspecieBanco(wCOD_BANCO: String);
begin
   if wCOD_BANCO = '001' then {espécie do titulo cobranca brasil}
      begin
         CbEspecie.Items.Clear;
         CbEspecie.Items.Add('01-DUPLICATA MERCANTIL');
         CbEspecie.Items.Add('02-NOTA PROMISSORIA');
         CbEspecie.Items.Add('03-NOTA SEGURO');
         CbEspecie.Items.Add('05-RECIBO');
         CbEspecie.Items.Add('08-LETRA CÂMBIO');
         CbEspecie.Items.Add('09-WARRANT');
         CbEspecie.Items.Add('10-CHEQUE');
         CbEspecie.Items.Add('12-DUPLICATA SERVIÇO');
         CbEspecie.Items.Add('13-NOTA DE DEBITO');
         CbEspecie.Items.Add('15-APOLICE DE SEGURO');
         CbEspecie.Items.Add('25-DIVIDA ATIVA DA UNIAO');
         CbEspecie.Items.Add('26-DIVIDA ATIVA DE ESTADO');
         CbEspecie.Items.Add('27-DIVIDA ATIVA DE MUNICIPIO');
         CbEspecie.Items.Add('31–Boleto de Cartão de Crédito');
         CbEspecie.Items.Add('32–Boleto de Proposta');

      end
   else
   if wCOD_BANCO = '341' then {espécie do titulo cobranca itau}
      begin
         CbEspecie.Items.Clear;
         CbEspecie.Items.Add('01-DUPLICATA MERCANTIL');
         CbEspecie.Items.Add('02-NOTA PROMISSORIA');
         CbEspecie.Items.Add('03-NOTA SEGURO');
         CbEspecie.Items.Add('04-MENSALIDADE ESCOLAR');
         CbEspecie.Items.Add('05-RECIBO');
         CbEspecie.Items.Add('06-CONTRATO');
         CbEspecie.Items.Add('07-COSSEGUROS');
         CbEspecie.Items.Add('08-DUPLICATA SERVIÇO');
         CbEspecie.Items.Add('09-LETRA CÂMBIO');
         CbEspecie.Items.Add('13-NOTA DE DÉBITOS');
         CbEspecie.Items.Add('15-DOCUMENTO DE DÍVIDA');
         CbEspecie.Items.Add('16-ENCARGOS CONDOMINIAIS');
         CbEspecie.Items.Add('17-CONTA DE PRESTAÇÃO DE SERVIÇOS');
         CbEspecie.Items.Add('99-DIVERSOS');
         //CbEspecie.ItemIndex     := 0;
      end
   else
   if (wCOD_BANCO = '237') or (wCOD_BANCO = '085') or (wCOD_BANCO = '756') then {espécie do titulo cobranca bradesco - viacredi  - Sicob }
   begin
    if rgLeiaute.ItemIndex = 1 then
    begin
      CbEspecie.Items.Clear;
      CbEspecie.Items.Add('01-CH CHEQUE');
      CbEspecie.Items.Add('02-DM DUPLICATA MERCANTIL');
      CbEspecie.Items.Add('03-DMI DUPLICATA MERCANTIL P/ INDICAÇÃO');
      CbEspecie.Items.Add('04-DS DUPLICATA DE SERVIÇO');
      CbEspecie.Items.Add('05-DSI DUPLICATA DE SERVIÇO P/ INDICAÇÃO');
      CbEspecie.Items.Add('06-DR DUPLICATA RURAL');
      CbEspecie.Items.Add('07-LC LETRA DE CÂMBIO');
      CbEspecie.Items.Add('08-NCC NOTA DE CRÉDITO COMERCIAL');
      CbEspecie.Items.Add('09-NCE NOTA DE CRÉDITO A EXPORTAÇÃO');
      CbEspecie.Items.Add('10-NCI NOTA DE CRÉDITO INDUSTRIAL');
      CbEspecie.Items.Add('11-NCR NOTA DE CRÉDITO RURAL');
      CbEspecie.Items.Add('12-NP NOTA PROMISSÓRIA');
      CbEspecie.Items.Add('13-NPR NOTA PROMISSÓRIA RURAL');
      CbEspecie.Items.Add('14-TM TRIPLICATA MERCANTIL');
      CbEspecie.Items.Add('15-TS TRIPLICATA DE SERVIÇO');
      CbEspecie.Items.Add('16-NS NOTA DE SEGURO');
      CbEspecie.Items.Add('17-RC RECIBO');
      CbEspecie.Items.Add('18-FAT FATURA');
      CbEspecie.Items.Add('19-ND NOTA DE DÉBITO');
      CbEspecie.Items.Add('20-AP APÓLICE DE SEGURO');
      CbEspecie.Items.Add('21-ME MENSALIDADE ESCOLAR');
      CbEspecie.Items.Add('22-PC PARCELA DE CONSÓRCIO');
      CbEspecie.Items.Add('23-NF NOTA FISCAL');
      CbEspecie.Items.Add('24-DD DOCUMENTO DE DÍVIDA');
      CbEspecie.Items.Add('25-CÉDULA DE PRODUTO RURAL');
      CbEspecie.Items.Add('26-WARRANT');
      CbEspecie.Items.Add('27-DÍVIDA ATIVA DE ESTADO');
      CbEspecie.Items.Add('28-DÍVIDA ATIVA DE MUNICÍPIO');
      CbEspecie.Items.Add('29-DÍVIDA ATIVA DA UNIÃO');
      CbEspecie.Items.Add('30-ENCARGOS CONDOMINIAIS');
      CbEspecie.Items.Add('31-CARTÃO DE CRÉDITO');
      CbEspecie.Items.Add('32-BDP BOLETO DE PROPOSTA');
      CbEspecie.Items.Add('99-OUTROS');
    end
    else
    begin
       CbEspecie.Items.Clear;
       CbEspecie.Items.Add('01-DUPLICATA MERCANTIL');
       CbEspecie.Items.Add('02-NOTA PROMISSORIA');
       CbEspecie.Items.Add('03-NOTA SEGURO');
       CbEspecie.Items.Add('04-COBRANCA SERIADA');
       CbEspecie.Items.Add('05-RECIBO');
       CbEspecie.Items.Add('10-LETRAS DE CAMBIO');
       CbEspecie.Items.Add('11-NOTA DE DEBITO');
       CbEspecie.Items.Add('12-DUPLICATA DE SERV.');
       CBESPECIE.ITEMS.ADD('31-CARTÃO DE CRÉDITO');
       CBESPECIE.ITEMS.ADD('32-BOLETO DE PROPOSTA');
       CbEspecie.Items.Add('99- OUTROS');
    end;
   end
   else
   if wCOD_BANCO = '399' then {espécie do titulo cobranca HSBC}
      begin
         CbEspecie.Items.Clear;
         CbEspecie.Items.Add('01-DP-DUPLICATA MERCANTIL');
         CbEspecie.Items.Add('02-NP-NOTA PROMISSORIA');
         CbEspecie.Items.Add('03-NS-NOTA SEGURO');
         CbEspecie.Items.Add('05-RC-RECIBO');
         CbEspecie.Items.Add('08-SD-COBRANÇA EXPRESSA');
         CbEspecie.Items.Add('09-SD-COBRANÇA ESCRITURAL');
         CbEspecie.Items.Add('10-DS-DUPLICATA DE SERVIÇO');
         CbEspecie.Items.Add('98-PD-COBRANÇA DIRETIVA');
      end
   else
   if wCOD_BANCO = '104' then {espécie do titulo cobranca CEF}
      begin
         CbEspecie.Items.Clear;
         CbEspecie.Items.Add('01-DM-DUPLICATA MERCANTIL');
         CbEspecie.Items.Add('02-NP-NOTA PROMISSORIA');
         CbEspecie.Items.Add('03-DS-DUPLICATA DE SERVIÇO');
         CbEspecie.Items.Add('04-CH-CHEQUE');
         CbEspecie.Items.Add('05-NS-NOTA DE SEGURO');
         CbEspecie.Items.Add('06-LC-LETRA DE CÂMBIO');
         CbEspecie.Items.Add('07-DMI-Duplicata Mercantil p/ Indicação');
         CbEspecie.Items.Add('08-NCC-Nota de Crédito Comercial');
         CbEspecie.Items.Add('09-OU-OUTROS');
      end
   else
   if wCOD_BANCO = '033' then {espécie do titulo cobranca SANTANDER}
    begin
       CbEspecie.Items.Clear;
       CbEspecie.Items.Add('01-DUPLICATA');
       CbEspecie.Items.Add('02-NOTA PROMISSORIA');
       CbEspecie.Items.Add('03-APOLICE/SEGURO');
       CbEspecie.Items.Add('05-RECIBO');
       CbEspecie.Items.Add('06-DUPLICATA DE SERVIÇO');
       CbEspecie.Items.Add('07-LETRA DE CAMBIO');
    end
   else if wCOD_BANCO = '748' then //sicredi
   begin
     CbEspecie.Items.Clear;
     CbEspecie.Items.Add('A-DUPLICATA MERCANTIL POR INDICAÇÃO');
     CbEspecie.Items.Add('B-DUPLICATA RURAL');
     CbEspecie.Items.Add('C-NOTA PROMISSÓRIA');
     CbEspecie.Items.Add('D-NOTA PROMISSÓRIA RURAL');
     CbEspecie.Items.Add('E-NOTA SEGUROS');
     CbEspecie.Items.Add('G-RECIBO');
     CbEspecie.Items.Add('H-LETRA CÂMBIO');
     CbEspecie.Items.Add('I-NOTA DE DÉBITOS');
     CbEspecie.Items.Add('J-DUPLICATA DE SERVIÇO POR INDICAÇÃO');
     CbEspecie.Items.Add('K-OUTROS');
     CbEspecie.Items.Add('O-BOLETO PROPOSTA');

   end
   else
   if wCOD_BANCO = '422' then {espécie do titulo cobranca banco SAFRA}
    begin
       CbEspecie.Items.Clear;
       CbEspecie.Items.Add('01-Duplicata Mercantil');
       CbEspecie.Items.Add('02-Nota Promissória');
       CbEspecie.Items.Add('03-Nota Seguro');
       CbEspecie.Items.Add('05-Recibo');
       CbEspecie.Items.Add('09-Duplicata de Serviços');
       CbEspecie.Items.Add('99-OUTROS');
    end
   else
     begin
         CbEspecie.Items.Clear;
         CbEspecie.Items.Add('ESPÉCIE DO TITULO NÃO CADASTRADO');
     end;
end;

procedure TFormBanco.VerificaCampos;
var
   i:Integer;
begin
    if (DataCadastros.CdsBanco.State  in [DsInsert,DsEdit]) then
      begin
        if CbEspecie.Text <> '' then
        begin

          if cBanco.Text = '748' then
            DataCadastros.CdsBanco.FieldByName('BAN_ESPECIE_COB').AsString:= copy(CbEspecie.Text,1,1) // letras no caso da siredi
          else
            DataCadastros.CdsBanco.FieldByName('BAN_ESPECIE_COB').AsString:= copy(CbEspecie.Text,1,2);

        end;




         if (DataCadastros.CdsBanco.FieldByName('BAN_ESPECIE_COB').AsString <> '') then
         begin
          for i := 0 to CbEspecie.Items.Count - 1 do
          begin
             if cBanco.Text = '748' then
             begin
                if (COPY(CbEspecie.Items[I],1,1) = DataCadastros.CdsBanco.FieldByName('BAN_ESPECIE_COB').AsString) then
                  begin
                     CbEspecie.ItemIndex   := i;
                     break;
                  end;
             end
             else
             begin
               if (COPY(CbEspecie.Items[I],1,2) = DataCadastros.CdsBanco.FieldByName('BAN_ESPECIE_COB').AsString) then
                  begin
                     CbEspecie.ItemIndex   := i;
                     break;
                  end;
             end;
          end;
         end;




        {aceite}
         case CbAceite.ItemIndex of
           0:DataCadastros.CdsBanco.FieldByName('BAN_ACEITE').AsString               := 'A';    // ACEITO
           1:DataCadastros.CdsBanco.FieldByName('BAN_ACEITE').AsString               := 'N';    // NAO ACEITE
         end;
         {é registrada }
         //case CbRegistrada.ItemIndex of
         //  0:DataCadastros.CdsBanco.FieldByName('BAN_CARTEIRA_REGISTRO').AsString  := 'N'; // NÃO É CARTEIRA REGISTRADA
         //  1:DataCadastros.CdsBanco.FieldByName('BAN_CARTEIRA_REGISTRO').AsString  := 'S'; // SIM É CARTEIRA REGISTRADA
         //end;
         { responsavel pela impressao boleto }
         case CbRespBoleto.ItemIndex of
           0:DataCadastros.CdsBanco.FieldByName('BAN_RESP_BOLETO').AsString          := 'B';  // BANCO GERA nosso numero E IMPRIME BOLETO
           1:DataCadastros.CdsBanco.FieldByName('BAN_RESP_BOLETO').AsString          := 'E';  // EMPRESA GERA  nosso numero E IMPRIME BOLETO
           -1:DataCadastros.CdsBanco.FieldByName('BAN_RESP_BOLETO').AsString         := '';  // EMPRESA GERA E IMPRIME BOLETO
         end;

        {caminho}
         //DataCadastros.CdsBanco.FieldByName('AB_CAMINHO_REMESSA').AsString         := DirRemessa.Text;
         //DataCadastros.CdsBanco.FieldByName('AB_CAMINHO_RETORNO').AsString         := DirRetorno.Text;
      end
   else
   if (DataCadastros.CdsBanco.State  in [DsBrowse]) then
      begin
         CbEspecie.ItemIndex  := -1;
         if (DataCadastros.CdsBanco.FieldByName('BAN_ESPECIE_COB').AsString <> '') then
         begin
          for i := 0 to CbEspecie.Items.Count - 1 do
          begin
             if cBanco.Text = '748' then
             begin
                if (COPY(CbEspecie.Items[I],1,1) = DataCadastros.CdsBanco.FieldByName('BAN_ESPECIE_COB').AsString) then
                  begin
                     CbEspecie.ItemIndex   := i;
                     break;
                  end;
             end
             else
             begin
               if (COPY(CbEspecie.Items[I],1,2) = DataCadastros.CdsBanco.FieldByName('BAN_ESPECIE_COB').AsString) then
                  begin
                     CbEspecie.ItemIndex   := i;
                     break;
                  end;
             end;
          end;
         end;

        {aceite}
         if DataCadastros.CdsBanco.FieldByName('BAN_ACEITE').AsString       = 'A' then
            CbAceite.ItemIndex                                                       := 0
         else
         if DataCadastros.CdsBanco.FieldByName('BAN_ACEITE').AsString       = 'N' then
            CbAceite.ItemIndex                                                       := 1
         else
            CbAceite.ItemIndex                                                       := -1;
         { é registrada }
         //if DataCadastros.CdsBanco.FieldByName('BAN_CARTEIRA_REGISTRO').AsString   = 'S' then
         //   CbRegistrada.ItemIndex                                                 := 1
         //else
         //   CbRegistrada.ItemIndex                                                 := 0;
         { responsavel pela impressao do boleto }
         if DataCadastros.CdsBanco.FieldByName('BAN_RESP_BOLETO').AsString   = 'B' then
            CbRespBoleto.ItemIndex                                                   := 0
         else
         if DataCadastros.CdsBanco.FieldByName('BAN_RESP_BOLETO').AsString   = 'E' then
            CbRespBoleto.ItemIndex                                                   := 1
         else
            CbRespBoleto.ItemIndex                                                   := -1;


        {caminho}
         //DirRemessa.Text                                                           := DataCadastros.CdsBanco.FieldByName('AB_CAMINHO_REMESSA').AsString;
         //DirRetorno.Text                                                           := DataCadastros.CdsBanco.FieldByName('AB_CAMINHO_RETORNO').AsString;
       end;
end;

procedure TFormBanco.CbEspecieClick(Sender: TObject);
begin
   if DataCadastros.CdsBanco.State in [dsBrowse] then
      DataCadastros.CdsBanco.Edit;
end;

procedure TFormBanco.CbEspecieExit(Sender: TObject);
begin
   if DataCadastros.CdsBanco.State in [dsBrowse] then
      DataCadastros.CdsBanco.Edit;
end;

procedure TFormBanco.cbFormaExit(Sender: TObject);
begin
  if (DataCadastros.CdsBanco.State in [dsBrowse]) and not (DataCadastros.CdsBanco.IsEmpty) then
  begin
    DataCadastros.CdsBanco.Edit;
  end;
end;

procedure TFormBanco.cbFormaSelect(Sender: TObject);
begin
  edFormaCodigo.Text := cbForma.idRetorno;
//  if DataCadastros.CdsBanco.State in [dsBrowse] then
//     DataCadastros.CdsBanco.Edit;
end;

procedure TFormBanco.MostraDados;
Var
  wDir : String;
begin

    CbxCarteira.ItemIndex                                                            := IIF(DataCadastros.CdsBancoBAN_COBTIPO.AsString = ''  ,0,
                             IIF(DataCadastros.CdsBancoBAN_COBTIPO.AsString = 'CT',1,
                             IIF(DataCadastros.CdsBancoBAN_COBTIPO.AsString = 'CS',2,
                             IIF(DataCadastros.CdsBancoBAN_COBTIPO.AsString = 'CC',3,
                             IIF(DataCadastros.CdsBancoBAN_COBTIPO.AsString = 'Cd',4,
                             IIF(DataCadastros.CdsBancoBAN_COBTIPO.AsString = 'SR',5,6))))));
    CbxFluxo.ItemIndex                                                               := IIF(DataCadastros.CdsBancoBAN_FLUXOCAIXA.AsString = 'S',0,1);
    CbxCheq.ItemIndex                                                                := IIF(DataCadastros.CdsBancoBAN_GERACHEQUE.AsString = 'S',0,1);
    //CbRegistrada.ItemIndex                                                         := IIF(DataCadastros.CdsBancoBAN_CARTEIRA_REGISTRO.AsString = 'S',0,1);

    if (DataCadastros.CdsBancoBAN_GERACHEQUE.AsString = 'S') then
       begin
          cSeqNumCheque.Enabled                                                      := True;
          cSeqNumCheque.Color                                                        := clWindow;
          cSeqNumCheque.TabStop                                                      := True;
       end
    else
       begin
          cSeqNumCheque.Enabled                                                      := False;
          cSeqNumCheque.Color                                                        := $00D7D7D7;
          cSeqNumCheque.TabStop                                                      := False;
       end;
    cSeqNumCheque.AsInteger                                                          := DataCadastros.CdsBancoBAN_SEQ_CHEQUE.AsInteger;
    //
    if (DataCadastros.CdsBancoBAN_CAMINHO_REMESSA.IsNull = FALSE)
    or (DataCadastros.CdsBancoBAN_CAMINHO_REMESSA.AsString <> '') then
       DiretorioRemessa.Text                                                         := DataCadastros.CdsBancoBAN_CAMINHO_REMESSA.AsString
    else
       begin
           if DataCadastros.CdsBanco.State in [dsBrowse] then
              DataCadastros.CdsBanco.Edit;
           DiretorioRemessa.Text                                                     := dbInicio.SistemaLocal+'Bancos\Remessa\'+FormatFloat('000',cBanco.AsInteger);
       end;
    //
    if (DataCadastros.CdsBancoBAN_CAMINHO_RETORNO.IsNull = FALSE)
    or (DataCadastros.CdsBancoBAN_CAMINHO_RETORNO.AsString <> '') then
       DiretorioRetorno.Text                                                         := DataCadastros.CdsBancoBAN_CAMINHO_RETORNO.AsString
    else
       begin
           if DataCadastros.CdsBanco.State in [dsBrowse] then
              DataCadastros.CdsBanco.Edit;
           if (DataCadastros.CdsBancoBAN_COD_APELIDO.AsInteger <> 0) then
              DiretorioRetorno.Text                                                  := dbInicio.SistemaLocal+'Bancos\Retorno\'+FormatFloat('000',cBanco.AsInteger);
       end;
    //

    cbForma.idRetorno := DataCadastros.CdsBancoFPG_REGISTRO.AsString;

    if (DataCadastros.CdsBancoBAN_COD_APELIDO.AsInteger<>0) then
       begin
           cBanco.AsInteger                                                          := DataCadastros.CdsBancoBAN_COD_APELIDO.AsInteger;
           if (SqlCdsBancos.Locate('BCO_CODIGO',cBanco.Text,[])=True) then
              begin
                  CbBancos.Text                                                      := SqlCdsBancosBCO_DESCRICAO.AsString;
              end
           else
              begin
                 CBanco.AsInteger                                                    := 0;
                 CbBancos.Text                                                       := '';
              end;
       end
    else
       begin
          CBanco.AsInteger                                                           := 0;
          CbBancos.Text                                                              := '';
       end;

    AtribuirEspecieBanco(FormatFloat('000',SqlCdsBancosBCO_CODIGO.AsInteger));

    CarregaLogo;
end;

procedure TFormBanco.CbRespBoletoExit(Sender: TObject);
begin
   if DataCadastros.CdsBanco.State in [dsBrowse] then
      DataCadastros.CdsBanco.Edit;
end;

procedure TFormBanco.CbxCarteiraClick(Sender: TObject);
begin
   if DataCadastros.CdsBanco.State in [dsBrowse] then
      DataCadastros.CdsBanco.Edit;
end;

procedure TFormBanco.CbxCarteiraExit(Sender: TObject);
begin
   if DataCadastros.CdsBanco.State in [dsBrowse] then
      DataCadastros.CdsBanco.Edit;
end;

procedure TFormBanco.DiretorioRemessaClick(Sender: tObject);
begin
    if (DataCadastros.CdsBanco.State in [dsBrowse]) and not (DataCadastros.CdsBanco.IsEmpty) then
        begin
            DataCadastros.CdsBanco.Edit;
        end;
end;

procedure TFormBanco.DiretorioRetornoKeyPress(Sender: tObject;
  var Key: Char);
begin
    if (DataCadastros.CdsBanco.State in [dsBrowse])
    and not (DataCadastros.CdsBanco.IsEmpty) then
        begin
            DataCadastros.CdsBanco.Edit;
        end;
end;

procedure TFormBanco.DiretorioRemessaKeyPress(Sender: tObject;
  var Key: Char);
begin
    if (DataCadastros.CdsBanco.State in [dsBrowse])
    and not (DataCadastros.CdsBanco.IsEmpty) then
        begin
            DataCadastros.CdsBanco.Edit;
        end;
end;

procedure TFormBanco.CarregaBancos;
begin
    try
      SqlCdsBancos.Close;
      SqlCdsBancos.CommandText := SQLDEF('TABELAS','Select B1.* from BANCOS B1','','B1.BCO_DESCRICAO','B1.');
      SqlCdsBancos.Open;
      SqlCdsBancos.First;
      CbBancos.Items.Clear;
      while not SqlCdsBancos.Eof do
       begin
           CbBancos.Items.Add(SqlCdsBancosBCO_DESCRICAO.AsString);
           SqlCdsBancos.Next;
       end;
      CbBancos.Text := '';
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao carregar a combo ! '+e.message));
    end;
end;

procedure TFormBanco.CbBancosExit(Sender: tObject);
begin
    if (CbBancos.Text <>'') then
       begin
           if (not SqlCdsBancos.Locate('BCO_DESCRICAO',CbBancos.Text,[])) then
              begin
                  uteis.aviso('Banco não encontrado !');
                  CbBancos.SetFocus;
              end
           else
              begin
                  if (DataCadastros.CdsBanco.State in [dsBrowse]) and not (DataCadastros.CdsBanco.IsEmpty) then
                      begin
                          DataCadastros.CdsBanco.Edit;
                      end;
                  cBanco.AsInteger                                                   := SqlCdsBancosBCO_CODIGO.AsInteger;
              end;
       end;
    CarregaLogo;
end;

procedure TFormBanco.CbBancosClick(Sender: tObject);
begin
    if (CbBancos.Text <>'') then
       begin
           if (not SqlCdsBancos.Locate('BCO_DESCRICAO',CbBancos.Text,[])) then
              begin
                  uteis.aviso('Banco não encontrado !');
                  CbBancos.SetFocus;
              end
           else
              begin
                  if (DataCadastros.CdsBanco.State in [dsBrowse]) and not (DataCadastros.CdsBanco.IsEmpty) then
                      begin
                          DataCadastros.CdsBanco.Edit;
                      end;
                  cBanco.AsInteger                                                   := SqlCdsBancosBCO_CODIGO.AsInteger;
              end;
       end;
end;

procedure TFormBanco.DbeBAN_DNAS_CONTExit(Sender: tObject);
begin
    if (DbeBAN_DNAS_CONT.Text <>'  /  /    ') then
       begin
           DbeBAN_DNAS_CONT.Text                                                     := PreenchaData(DbeBAN_DNAS_CONT.Text);
           if (not TestaDataStr(DbeBAN_DNAS_CONT.Text)) then
              DbeBAN_DNAS_CONT.SetFocus;
       end;
end;

procedure TFormBanco.CbxFluxoExit(Sender: TObject);
begin
    if DataCadastros.CdsBanco.State in [DsBrowse] then
       DataCadastros.CdsBanco.Edit;
end;

procedure TFormBanco.CbxCheqChange(Sender: tObject);
begin

    if (CbxCheq.ItemIndex = 0) then
       begin
          cSeqNumCheque.Enabled                                                      := True;
          cSeqNumCheque.Color                                                        := clWindow;
          cSeqNumCheque.TabStop                                                      := True;
       end
    else
       begin
          cSeqNumCheque.Enabled                                                      := False;
          cSeqNumCheque.Color                                                        := $00D7D7D7;
          cSeqNumCheque.TabStop                                                      := False;
       end;
end;

procedure TFormBanco.CbxCheqExit(Sender: TObject);
begin
    if DataCadastros.CdsBanco.State in [DsBrowse] then
       DataCadastros.CdsBanco.Edit;
end;

procedure TFormBanco.CbAceiteClick(Sender: TObject);
begin
   if DataCadastros.CdsBanco.State in [dsBrowse] then
      DataCadastros.CdsBanco.Edit;
end;

procedure TFormBanco.CbAceiteEnter(Sender: tObject);
begin
    PageControl1.ActivePageIndex                                                     := 1;
end;

procedure TFormBanco.CbAceiteExit(Sender: TObject);
begin
   if DataCadastros.CdsBanco.State in [dsBrowse] then
      DataCadastros.CdsBanco.Edit;
end;

procedure TFormBanco.Desabilita_Objetos;
begin
    cBanco.Enabled                                                                   := False;
    CbBancos.Enabled                                                                 := False;
    edFormaCodigo.Enabled                                                            := False;
    cbForma.Enabled                                                                  := False;
    CbxFluxo.Enabled                                                                 := False;
    CbxCheq.Enabled                                                                  := False;
    CbAceite.Enabled                                                                 := False;
    CbEspecie.Enabled                                                                := False;
    CbxCarteira.Enabled                                                              := False;
    DiretorioRemessa.Enabled                                                         := False;
    DiretorioRetorno.Enabled                                                         := False;
    BotoesAcesso;
end;

procedure TFormBanco.Habilita_Objetos;
begin
    BotoesAcesso;
    cBanco.Enabled                                                                   := True;
    CbBancos.Enabled                                                                 := True;
    edFormaCodigo.Enabled                                                            := True;
    cbForma.Enabled                                                                  := True;
    CbxFluxo.Enabled                                                                 := True;
    CbxCheq.Enabled                                                                  := True;
    CbAceite.Enabled                                                                 := True;
    CbEspecie.Enabled                                                                := True;
    CbxCarteira.Enabled                                                              := True;
    DiretorioRemessa.Enabled                                                         := True;
    DiretorioRetorno.Enabled                                                         := True;

end;

procedure TFormBanco.Limpa_Objetos;
begin
    cBanco.AsInteger                                                                 := 0;
    CbBancos.Text                                                                    := '';
    edFormaCodigo.Text                                                               := '';
    cbForma.idRetorno                                                                := '';
    CbxFluxo.Text                                                                    := '';
    CbxFluxo.ItemIndex                                                               := -1;
    CbxCheq.Text                                                                     := '';
    CbxCheq.ItemIndex                                                                := -1;
    CbAceite.Text                                                                    := '';
    CbEspecie.Text                                                                   := '';
    CbxCarteira.Text                                                                 := '';
    DiretorioRemessa.Text                                                            := '';
    DiretorioRetorno.Text                                                            := '';
    cSeqNumCheque.AsInteger                                                          := 0;
end;

procedure TFormBanco.cBancoExit(Sender: tObject);
begin
    try
      if (cBanco.AsInteger <> 0) then
         begin
             if (SqlCdsBancos.Locate('BCO_CODIGO',cBanco.AsInteger,[])=True) then
                begin
                   CbBancos.Text                                                     := SqlCdsBancosBCO_DESCRICAO.AsString;
                   if (DataCadastros.CdsBanco.State in [dsBrowse]) then
                      DataCadastros.CdsBanco.Edit;
                   //
                   AtribuirEspecieBanco(FormatFloat('000',cBanco.AsInteger));
                end
             else
                begin
                    cBanco.AsInteger                                                 := 0;
                    CbBancos.Text                                                    := '';
                    CbBancos.SetFocus;
                end;
         end;
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao localiza o código do banco ! '+e.message));
    end;
end;

procedure TFormBanco.FormCreate(Sender: tObject);
begin
   bIncluir                                                                          := False;
end;

procedure TFormBanco.FormDestroy(Sender: TObject);
begin
    FormBanco := Nil;
end;

procedure TFormBanco.cSeqNumChequeExit(Sender: tObject);
begin
   if DataCadastros.CdsBanco.State in [DsBrowse] then
      DataCadastros.CdsBanco.Edit;
end;

procedure TFormBanco.cxDBTextConvenioExit(Sender: TObject);
begin
if (cxDBTextConvenio.Text = '') and (cbanco.Value <> 901) then
  uteis.Aviso('Obrigatório Nº do Convenio se vai usar Cobrança pelo Sistema. Nº Convenio é o mesmo que código do cedente.');

end;

function TFormBanco.Verifica_Lancamentos(sConta: String): Boolean;
Var
  bTemLanctos : Boolean;
begin
   try
     screen.Cursor                                                                   := crHourGlass;
     try
       bTemLanctos                                                                   := False;
       //
       {Verifica a Tabela de Cheques}
       wSql1                                                                         := 'SELECT T1.BAN_CODIGO FROM CHQ0000 T1 ';
       wSeleciona                                                                    := 'WHERE T1.BAN_CODIGO = '''+sConta+'''';
       //
       DataCadastros.sqlUpdate.Close;
       DataCadastros.SqlUpdate.sql.text                                              :=wSQL1 + wSeleciona;
       DataCadastros.sqlUpdate.Open;
       if (not DataCadastros.sqlUpdate.IsEmpty) then
          begin
             bTemLanctos                                                             := True;
             DataCadastros.sqlUpdate.Close;
          end;
       //
       if (bTemLanctos = False) then
          begin
             {Verifica as Parcelas da Tabela de PAG_PC01}
             wSql1                                                                   := 'SELECT T1.BAN_CODIGO FROM PAG_PC01 T1 ';
             wSeleciona                                                              := 'WHERE T1.BAN_CODIGO = '''+sConta+'''';
             //
             DataCadastros.sqlUpdate.Close;
             DataCadastros.SqlUpdate.sql.text                                        :=wSQL1 + wSeleciona;
             DataCadastros.sqlUpdate.Open;
             if (not DataCadastros.sqlUpdate.IsEmpty) then
                begin
                   bTemLanctos                                                       := True;
                   DataCadastros.sqlUpdate.Close;
                end;
          end;
       //
       if (bTemLanctos = False) then
          begin
             {Verifica as Parcelas da Tabela de FAT_PC01}
             wSql1                                                                   := 'SELECT T1.BAN_CODIGO FROM FAT_PC01 T1 ';
             wSeleciona                                                              := 'WHERE T1.BAN_CODIGO = '''+sConta+'''';
             //
             DataCadastros.sqlUpdate.Close;
             DataCadastros.SqlUpdate.sql.text                                        :=wSQL1 + wSeleciona;
             DataCadastros.sqlUpdate.Open;
             if (not DataCadastros.sqlUpdate.IsEmpty) then
                begin
                   bTemLanctos                                                       := True;
                   DataCadastros.sqlUpdate.Close;
                end;
          end;
     finally
        Screen.cursor                                                                := crDefault;
        Result                                                                       := bTemLanctos;
     end;
   except
     on E:EDataBaseError do
       begin
          uteis.erro  (pchar('Erro ao verificar lançamentos !'+#13#10+
                     'Mensagem erro: '+e.message));
       end;
   end;
end;

procedure TFormBanco.PageControl1Change(Sender: tObject);
begin
      AtribuirEspecieBanco(FormatFloat('000',cBanco.AsInteger));
      AtribuirEspecieBanco(strzero(IntToStr(cBanco.AsInteger), 3));
      VerificaCampos;
end;

procedure TFormBanco.CarregaLogo;
var sCodigo:String;
begin

   if (cBanco.Text <> '') then
      sCodigo                                                                        := cBanco.Text
   else
      sCodigo                                                                        := '-1';

   if (FileExists(dbInicio.SistemaLocal+'\logo\'+Formatar(sCodigo,3,False,'0')+'.jpg')) then
      ImgBanco.Picture.LoadFromFile(dbInicio.SistemaLocal+'\logo\'+Formatar(sCodigo,3,False,'0')+'.jpg')
   else
       ImgBanco.Picture                                                              := nil;

end;

procedure TFormBanco.DsRelBancosDataChange(Sender: tObject; Field: TField);
begin
   CarregaLogo;
end;

procedure TFormBanco.edFormaCodigoExit(Sender: TObject);
begin
  cbForma.idRetorno := edFormaCodigo.Text;
end;

procedure TFormBanco.DBEdit20KeyPress(Sender: tObject; var Key: Char);
begin
     AcceptNumberOnly( key );
end;

procedure TFormBanco.DBEdit22KeyPress(Sender: tObject; var Key: Char);
begin
     AcceptNumberOnly( key );
end;

end.
