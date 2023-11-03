unit For0001;

interface

uses
 Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, DB,
 Mask, DBCtrls, ExtCtrls, StdCtrls, Buttons, Spin, Grids, DBGrids, ComCtrls, RwSQLComando,
 DBTables, RwFunc,Variants, Provider, SqlExpr,SqlClientDataSet, DBClient, DBLocal, DBLocalS,
  ComboBoxRw,  rxToolEdit, RXDBCtrl, Data.DBXFirebird, SimpleDS, system.StrUtils,
  SgDbSeachComboUnit, ACBrBase, ACBrETQ, Data.FMTBcd, Vcl.Menus, JvMenus, JvExControls, JvArrowButton, basedbform, ACBrEnterTab, ACBrCalculadora;

type
  TFormFornec = class(TfrmBaseDB)
    Label1: TLabel;
    EdtFor_codigo: TEdit;
    DBNavigator1: TDBNavigator;
    SpeedButton1: TSpeedButton;
    Bit_Cancelar: TBitBtn;
    Bit_Gravar: TBitBtn;
    Bit_Excluir: TBitBtn;
    Bit_novo: TBitBtn;
    Bit_Sair: TBitBtn;
    Bit_Lista: TBitBtn;
    Bit_Relatorio: TBitBtn;
    ACBrETQ1: TACBrETQ;
    PageControl1: TPageControl;
    tsCadastro: TTabSheet;
    TSColaborador: TTabSheet;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label22: TLabel;
    SpeedButton5: TSpeedButton;
    Label9: TLabel;
    Label14: TLabel;
    Label13: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label26: TLabel;
    DBeFor_razao: TDBEdit;
    DBeFor_endere: TDBEdit;
    DBeFor_cidade: TDBEdit;
    DBeFor_uf: TDBEdit;
    DBeFor_cepEdit1: TDBEdit;
    DBeFor_fone: TDBEdit;
    DBeFor_fax: TDBEdit;
    DBeCGC: TDBEdit;
    DbeInscricao: TDBEdit;
    DBEFOR_BAIRRO: TDBEdit;
    DBeFor_email: TDBEdit;
    DbeFOR_HOME: TDBEdit;
    DBEInsMuni: TDBEdit;
    DbeFor_dtinicio: TDBDateEdit;
    DBEInscCST: TDBEdit;
    dbedtFOR_SUFRAMA: TDBEdit;
    PageControl2: TPageControl;
    GroupBox3: TGroupBox;
    Label21: TLabel;
    Label20: TLabel;
    DBePcl_codigo: TDBEdit;
    CbxParcela: TComboBoxRw;
    DBeCct_Codigo: TDBEdit;
    CbxCtaAnalise: TComboBox;
    DBRadModalidade: TDBRadioGroup;
    GroupBox5: TGroupBox;
    DBCheckBox1: TDBCheckBox;
    tscontato: TTabSheet;
    GroupBox1: TGroupBox;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label15: TLabel;
    DBeFor_contato: TDBEdit;
    DBeFor_foncont: TDBEdit;
    DBeFor_faxcont: TDBEdit;
    DbeFOR_EMAILCONT: TDBEdit;
    Pn_Vincular: TPanel;
    Label17: TLabel;
    Label25: TLabel;
    Label16: TLabel;
    EdtPRD_REFER: TEdit;
    Panel4: TPanel;
    Bit_Cancel2: TBitBtn;
    Bit_Vincular: TBitBtn;
    BtnSairVinculo: TBitBtn;
    CbxProdu: TComboBox;
    grpInatividade: TGroupBox;
    Label35: TLabel;
    DBRadAtivo: TDBRadioGroup;
    DBEdtMovito: TDBEdit;
    SqlCdsProduto: TSqlClientDataSet;
    SqlCdsProdutoPRD_REFER: TStringField;
    SqlCdsProdutoPRD_DESCRI: TStringField;
    SqlCdsCtaAnalise: TSqlClientDataSet;
    SqlCdsCtaAnaliseCCT_CODIGO: TStringField;
    SqlCdsCtaAnaliseCCT_DESCRI: TStringField;
    SqlCdsCtaAnaliseEMP_CODIGO: TStringField;
    GroupBox4: TGroupBox;
    DBmFor_obs: TDBMemo;
    Label67: TLabel;
    PageControl3: TPageControl;
    tsdadoscadastrais: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    GroupBox6: TGroupBox;
    Label27: TLabel;
    Label28: TLabel;
    Label30: TLabel;
    Label34: TLabel;
    Label31: TLabel;
    Label29: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label36: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit9: TDBEdit;
    DBEditColaborador: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit8: TDBEdit;
    GroupBox9: TGroupBox;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    DBEdit36: TDBEdit;
    DBEdit37: TDBEdit;
    DBMemo1: TDBMemo;
    GroupBox10: TGroupBox;
    GroupBox11: TGroupBox;
    Label69: TLabel;
    DBEdit40: TDBEdit;
    Label50: TLabel;
    F: TLabel;
    Label70: TLabel;
    Label71: TLabel;
    Label72: TLabel;
    Label73: TLabel;
    Label74: TLabel;
    Label75: TLabel;
    DBEdit43: TDBEdit;
    DBEdit44: TDBEdit;
    DBEdit45: TDBEdit;
    DBEdit46: TDBEdit;
    DBEdit47: TDBEdit;
    DBEdit49: TDBEdit;
    Label76: TLabel;
    Label77: TLabel;
    GroupBox12: TGroupBox;
    GroupBox13: TGroupBox;
    GroupBox14: TGroupBox;
    DBMemo2: TDBMemo;
    DBMemo3: TDBMemo;
    DBMemo4: TDBMemo;
    GroupBox15: TGroupBox;
    GroupBox16: TGroupBox;
    GroupBox17: TGroupBox;
    DBMemo5: TDBMemo;
    DBMemo7: TDBMemo;
    DBMemo6: TDBMemo;
    GroupBox7: TGroupBox;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label68: TLabel;
    DBEdit10: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    GroupBox8: TGroupBox;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    DBEdit26: TDBEdit;
    DBEdit28: TDBEdit;
    DBEdit29: TDBEdit;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    DBEdit32: TDBEdit;
    DBEdit33: TDBEdit;
    DBEdit34: TDBEdit;
    GroupBox18: TGroupBox;
    GroupBox19: TGroupBox;
    DBEdit38: TDBEdit;
    DBEdit50: TDBEdit;
    das: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    Label78: TLabel;
    DBEdit39: TDBEdit;
    DBEdit51: TDBEdit;
    DbeCli_dtinicio: TDBDateEdit;
    DBComboBox1: TDBComboBox;
    DBDateEdit1: TDBDateEdit;
    DBDateEdit2: TDBDateEdit;
    DBDateEdit3: TDBDateEdit;
    DBDateEdit4: TDBDateEdit;
    DBDateEdit5: TDBDateEdit;
    DBDateEdit6: TDBDateEdit;
    DBDateEdit7: TDBDateEdit;
    bitImportarXLS: TJvArrowButton;
    JvPopupMenu1: TJvPopupMenu;
    miImportarExcel: TMenuItem;
    miLeaiute: TMenuItem;
    btnConsultarCNPJ_CPF: TButton;
    TabSheet1: TTabSheet;
    Label79: TLabel;
    edTRP_CODIGO: TDBEdit;
    CbTransp1: TComboBoxRw;
    ExportarparaoC91: TMenuItem;
    qFornecedores: TSQLQuery;
    dsExportaExcel: TDataSource;
    qFornecedoresFOR_CGC: TStringField;
    qFornecedoresFOR_RAZAO: TStringField;
    qFornecedoresFOR_TIPO: TStringField;
    qFornecedoresFOR_INSC: TStringField;
    qFornecedoresFOR_CONTATO: TStringField;
    qFornecedoresFOR_FONE: TStringField;
    qFornecedoresFONE_CELULAR: TStringField;
    qFornecedoresFOR_EMAIL: TStringField;
    qFornecedoresFOR_CEP: TStringField;
    qFornecedoresFOR_CIDADE: TStringField;
    qFornecedoresFOR_UF: TStringField;
    qFornecedoresFOR_ENDERE: TStringField;
    qFornecedoresFOR_NUMERO: TStringField;
    qFornecedoresFOR_BAIRRO: TStringField;
    qFornecedoresFOR_FANTASIA: TStringField;
    qFornecedoresFOR_EMAIL_NFE: TStringField;
    qFornecedoresREP_RAZAO: TStringField;
    qFornecedoresPCX_DESCRI: TStringField;
    qFornecedoresBAN_APELIDO: TStringField;
    qFornecedoresCLI_UND_CONSUMIDORA: TStringField;
    qFornecedoresEMP_CODIGO: TStringField;
    dspFornecedores: TDataSetProvider;
    cdsFornecedores: TClientDataSet;
    cdsFornecedoresFOR_CGC: TStringField;
    cdsFornecedoresFOR_RAZAO: TStringField;
    cdsFornecedoresFOR_TIPO: TStringField;
    cdsFornecedoresFOR_FANTASIA: TStringField;
    cdsFornecedoresFOR_INSC: TStringField;
    cdsFornecedoresFOR_CONTATO: TStringField;
    cdsFornecedoresFOR_FONE: TStringField;
    cdsFornecedoresFONE_CELULAR: TStringField;
    cdsFornecedoresFOR_EMAIL: TStringField;
    cdsFornecedoresFOR_EMAIL_NFE: TStringField;
    cdsFornecedoresFOR_CEP: TStringField;
    cdsFornecedoresFOR_CIDADE: TStringField;
    cdsFornecedoresFOR_UF: TStringField;
    cdsFornecedoresFOR_ENDERE: TStringField;
    cdsFornecedoresFOR_NUMERO: TStringField;
    cdsFornecedoresFOR_BAIRRO: TStringField;
    cdsFornecedoresREP_RAZAO: TStringField;
    cdsFornecedoresPCX_DESCRI: TStringField;
    cdsFornecedoresBAN_APELIDO: TStringField;
    cdsFornecedoresCLI_UND_CONSUMIDORA: TStringField;
    cdsFornecedoresEMP_CODIGO: TStringField;
    procedure MudaCorCampos(Sender: tObject);
    procedure Bit_SairClick(Sender: tObject);
    procedure Bit_novoClick(Sender: tObject);
    procedure Bit_ExcluirClick(Sender: tObject);
    procedure Bit_GravarClick(Sender: tObject);
    procedure DesabilitaBotoes;
    procedure BuscaFornec;
    procedure HabilitaBotoes;
    procedure verificaEdicao;
    procedure Bit_CancelarClick(Sender: tObject);
    procedure FormCloseQuery(Sender: tObject; var CanClose: Boolean);
    procedure DBNavigator1Click(Sender: tObject; Button: TNavigateBtn);
    procedure FormShow(Sender: tObject);
    procedure Bit_ListaClick(Sender: tObject);
    procedure EdtFor_codigoExit(Sender: tObject);
    procedure TbFornecBeforeEdit(DataSet: TDataSet);
    procedure Bit_RelatorioClick(Sender: tObject);
    procedure Bit_Cancel2Click(Sender: tObject);
    procedure Bit_VincularClick(Sender: tObject);
    procedure Pn_VincularExit(Sender: tObject);
    procedure SpeedButton1Click(Sender: tObject);
    procedure DBeFor_foneExit(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure DBLkCboProdutoClick(Sender: tObject);
    procedure EdtPRD_REFERExit(Sender: tObject);
    procedure CbxProduClick(Sender: tObject);
    procedure CbxCtaAnaliseExit(Sender: tObject);
    procedure DBeCct_CodigoExit(Sender: tObject);
    procedure CbxCtaAnaliseClick(Sender: tObject);
    procedure DBeCct_CodigoKeyPress(Sender: tObject; var Key: Char);
    procedure MostraCtaAnalise;
    procedure DBeCct_CodigoClick(Sender: tObject);
    procedure CbxCtaAnaliseEnter(Sender: tObject);
    procedure FormKeyPress(Sender: tObject; var Key: Char);
    procedure DBeCGCExit(Sender: tObject);
    procedure DBePcl_codigoExit(Sender: tObject);
    procedure CbxParcelaClick(Sender: tObject);
    procedure SpeedButton5Click(Sender: tObject);
    procedure DBeCGCEnter(Sender: tObject);
    procedure Checafornecedor;
    procedure DbeFor_dtinicioExit(Sender: tObject);
    procedure FormDestroy(Sender: TObject);
    procedure TSColaboradorShow(Sender: TObject);
    procedure DBEdit10Change(Sender: TObject);
    procedure DBEdit21Change(Sender: TObject);
    procedure DBEdit22Change(Sender: TObject);
    procedure DBEdit24Change(Sender: TObject);
    procedure DBEdit43Change(Sender: TObject);
    procedure DBEdit45Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure miLeaiuteClick(Sender: TObject);
    procedure miImportarExcelClick(Sender: TObject);
    procedure btnConsultarCNPJ_CPFClick(Sender: TObject);
    procedure edTRP_CODIGOExit(Sender: TObject);
    procedure CbTransp1Select(Sender: TObject);
    procedure edTRP_CODIGOChange(Sender: TObject);
    procedure ExportarparaoC91Click(Sender: TObject);

  private
    CampoEdit    :TEdit;
    CampoBox     :TComboBox;
    CampoDBEdit  :TDBEdit;
    CampoDbMemo  :TDBMemo;

    procedure HabDesBotoesVinculo(bHab:boolean);
    function Verifica_Condicao_Pagto(sCodPagto: String): Boolean;
  public
    procedure BotoesAcesso;
  end;

var
  FormFornec: TFormFornec;

implementation

{$R *.DFM}
uses Uteis, For0002, Pag0004, GImpForn, DataCad, Men0001, CID0002, uEntradaNotaXml, uProdutoDao,
DataMov2, iniciodb, DataCad1, UPesqContaCorrenteCredito, uimportfornecedor, Animacao, consultarcnpj, DataMov;

procedure TformFornec.MudaCorCampos(Sender: tObject);
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
  {CampoBox  :TComboBox}
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
end;

procedure TformFornec.verificaEdicao;
begin
    // verifica estado da tabela em edicao e inclusao
    screen.cursor :=crHourglass;
    if DataCadastros.CdsFornecedor.State in [dsEdit,dsInsert] then
       begin
           if uteis.confirmacao ( 'Deseja salvar alterações ?') = idyes then
              begin
                  DataCadastros.CdsFornecedorFOR_CODIGO.AsString := EdtFor_codigo.TExt;
                  DataCadastros.CdsFornecedor.ApplyUpdates(0);
                  DataCadastros.CdsFornecedor.Refresh;
                  Habilitabotoes;
              end
           else
              begin
                  DataCadastros.CdsFornecedor.Cancel;
                  Habilitabotoes;
              end;
       end;
    screen.cursor := crDefault;
end;

procedure TformFornec.HabilitaBotoes;
begin
    Bit_novo.Enabled      := True;
    Bit_Excluir.Enabled   := True;
    Bit_Sair.Visible      := True;
    Bit_Relatorio.Enabled := True;
    Bit_Lista.Enabled     := True;
    Bit_Gravar.Enabled    := False;
    Bit_Cancelar.Visible  := False;
    Bit_Cancelar.Enabled  := False;
    EdtFor_codigo.Color   := clWindow;
    EdtFor_Codigo.Enabled := True;
    DBnavigator1.Enabled  := True;
    BotoesAcesso;
end;

procedure TFormFornec.miImportarExcelClick(Sender: TObject);
var importfornecedor : TFrmImportarFornecedor;
b:boolean;
begin
  inherited;
  importfornecedor := TFrmImportarFornecedor.Create(Application);
  try
    Screen.Cursor := crHourGlass;
    fmAnimacao := TfmAnimacao.Create(application);
    try
      b:= importfornecedor.importarExcel;
      if b then
      begin
        fmAnimacao.Show;
        fmAnimacao.Caption := 'Validando';
        importfornecedor.ValidarRegistros;
      end;
    finally
     fmAnimacao.Close;
    end;
    if b then
      importfornecedor.ShowModal;
  finally
    screen.Cursor := crDefault;
    FreeAndNil(importfornecedor);
  end;
end;

procedure TFormFornec.miLeaiuteClick(Sender: TObject);
begin
 ShowMessage('A planilha importada deve obedecer a seguinte estrutura:'+#13+#13+
             'A primeira linha será desconsiderada ' +#13+
             '(A) CNPJ'+#13+
             '(B) Nome do fornecedor' +#13+
             '(C) Endereço'+#13 +
             '(D) CEP '+#13 +
             '(E) Bairro ' + #13+
             '(F) Cidade '+#13 +
             '(G) Estado em 2 caracteres '+#13 +
             '(H) Inscrição Estadual'+#13+
             '(I) Inscrição Municipal'+#13+
             '(J) Telefone '+#13 +
             '(K) E-mail ' +#13 +
             '(L) Contato ');

end;

procedure TformFornec.DesabilitaBotoes;
begin
    BotoesAcesso;
    Bit_novo.Enabled      := False;
    Bit_Excluir.Enabled   := False;
    Bit_Sair.Visible      := False;
    Bit_Relatorio.Enabled := False;
    Bit_Lista.Enabled     := False;
    Bit_Gravar.Enabled    := True;
    Bit_Cancelar.Visible  := True;
    Bit_Cancelar.Enabled  := True;
    EdtFor_codigo.Color   := clSilver;
    EdtFor_Codigo.Enabled := False;
    DBnavigator1.Enabled  := False;

end;

procedure TFormFornec.BuscaFornec;// busca por codigo
begin
  try
    DataCadastros.CdsFornecedor.First;
    if DataCadastros.CdsFornecedor.Locate('FOR_CODIGO',EdtFor_Codigo.Text,[]) = false then
       begin
           messagebeep($ffff);
           uteis.aviso('Codigo do fornecedor não cadastrado');
           edtFor_Codigo.Text := DataCadastros.CdsFornecedorFOR_CODIGO.AsString;
       end
    else
       begin
           MostraCtaAnalise;
       end;
  except
    on e:exception do
      showmessage(e.message);
  end;
end;

procedure TFormFornec.FormShow(Sender: tObject);
begin
    {ativa o método ao evento OnActiveControlChange}
    Screen.OnActiveControlChange   := MudaCorCampos;
    Screen.Cursor := crHourglass;
    //
    try
      DataCadastros.CdsFornecedor.Close;
      DataCadastros.CdsFornecedor.CommandText := SQLDEF('FORNECEDORES','SELECT F1.* FROM FOR0000 F1','','F1.FOR_CODIGO','F1.');
      DataCadastros.CdsFornecedor.Open;
    except
      on e:Exception do
        uteis.erro  ('Impossivel acessar a tabela de fornecedores! ' + e.Message);
    end;
    //
    {Parcelas}
    CbxParcela.CodigoEmpresa := StrToInt(dbInicio.Empresa.EMP_CODIGO);
    CbxParcela.CarregarCombo := True;
    //
    try
      SqlCdsCtaAnalise.Close;
      SqlCdsCtaAnalise.CommandText := SQLDEF('TABELAS','SELECT X1.* FROM CCT_0000 X1','WHERE X1.CCT_CONTA = ''S'' AND X1.CCT_STATUS = ''L''','X1.CCT_DESCRI','X1.');
      SqlCdsCtaAnalise.Open;
      SqlCdsCtaAnalise.First;
      while not SqlCdsCtaAnalise.Eof do
        begin
            CbxCtaAnalise.Items.Add(SqlCdsCtaAnaliseCCT_DESCRI.AsString);
            SqlCdsCtaAnalise.Next;
        end;
      SqlCdsCtaAnalise.First;
      CbxCtaAnalise.ItemIndex := 0;
    except on E:EdatabaseError do
        uteis.erro  (Pchar('Impossível acessar a tabela de Conta Financeira.'+e.Message));
    end;
    Habilitabotoes;
    if DataCadastros.CdsFornecedor.IsEmpty Then  //Evita alteração antes que se
       begin                             //inclua registros na tabela.
           DataCadastros.DsFornecedor.AutoEdit := False;
           EdtFor_codigo.Enabled := False;
       end
    else
       begin
           DataCadastros.DsFornecedor.AutoEdit := true;
       end;
    MostraCtaAnalise;
    EdtFor_Codigo.text := DataCadastros.CdsFornecedorFor_codigo.AsString;

     // mostrar mascara cnpj ou CPF no registro atual
    if Length(trim(DBeCGC.Text)) = 14 then
       DataCadastros.CdsFornecedor.FieldByName('FOR_CGC').EditMask := '99\.999\.999\/9999\-99;0;_'
    else
       DataCadastros.CdsFornecedor.FieldByName('FOR_CGC').EditMask := '999\.999\.999\-99;0;_';

    if (Assigned(FrmEntradaNotaXml)) then
      begin
         DataCadastros.CdsFornecedor.Locate('FOR_CGC',ExtrairNumeros(FrmEntradaNotaXml.edtFornecedorCnpj.Text),[]);
         MostraCtaAnalise;
         EdtFor_Codigo.text := DataCadastros.CdsFornecedorFor_codigo.AsString;
         if (FrmEntradaNotaXml.GetCodFor='') then
            begin
               if (DataCadastros.CdsFornecedor.State in [dsBrowse]) and not (DataCadastros.CdsFornecedor.IsEmpty) then
                  DataCadastros.CdsFornecedor.Edit;
               DBeCct_Codigo.SetFocus;
            end;
      end;

    Screen.Cursor := crdefault;
    PageControl1.ActivePageIndex := 0;
end;

procedure TFormFornec.Bit_ListaClick(Sender: tObject);
begin
    try
      FormFornecGrid := TFormFornecGrid.Create(Application);
      try

        if FormFornecGrid.ShowModal= mrok then
        begin
           EdtFor_codigo.text := FormFornecGrid.IDRetorno;
           BuscaFornec;
           MostraCtaAnalise;
        end;
      finally
        FormFornecGrid.Destroy;
        FormFornecGrid := nil;
      end;
    except
        on e:exception do
          uteis.erro  ('Ocorreu um erro na criação do formulário! ' + e.message);
    end;
end;

procedure TFormFornec.Bit_novoClick(Sender: tObject);
begin
    try
      Screen.Cursor := crHourglass;
      DataCadastros.CdsFornecedor.Insert;
      //Tira rascunho do ckeckbox
      DataCadastros.CdsFornecedorFOR_ATUALIZA_PCUSTO.AsString := 'S';

      DataCadastros.CdsFornecedorFOR_ATUALIZA_PVENDA.AsString := IIF(DBINICIO.Empresa.wPMT_NAO_AUTO_PVENDA, 'N','S');
      DBRadAtivo.ItemIndex := 0; // ativo

      screen.cursor := crdefault;
      EdtFor_codigo.Text := '0000';
      CbxParcela.Text    := ''; 
      EdtFor_codigo.Enabled := False;
      DesabilitaBotoes;
      CbxCtaAnalise.Text := '';
      DataCadastros.CdsFornecedorFOR_DTCADASTRO.AsDateTime := date;
      DataCadastros.CdsFornecedorFOR_ATIVO.AsString := 'A';
      uteis.HabilitaIncluir('CadastrosFornecedores',DBInicio.Usuario.CODIGO,FormFornec);
      DBeCGC.setfocus;
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao inserir o registro !'+e.message));
    end;
end;

procedure TFormFornec.Bit_ExcluirClick(Sender: tObject);
begin
    if DataCadastros.CdsFornecedor.IsEmpty Then   //evita exclussão de registro
       Begin                                      // em uma Tabela Vazia.
           messagebeep($ffff);
           uteis.aviso('Não existe fornecedor cadastrado !!!');
           exit;
       end;
    Screen.Cursor := crHourGlass;
    try
      DataCadastros.sqlUpdate.Close;
      DataCadastros.SqlUpdate.sql.text :=Sqldef('PAGAR','Select FOR_CODIGO from PAG0000','where FOR_CODIGO = '''+EdtFor_codigo.Text+'''','FOR_CODIGO','');
      DataCadastros.sqlUpdate.Open;
      if DataCadastros.sqlUpdate.IsEmpty then
         begin
             if uteis.confirmacao ( 'Deseja Excluir este Fornecedor?')= Mryes then
                begin
                    Screen.cursor :=crHourglass;
                    DataCadastros.CdsFornecedor.Delete;
                    DataCadastros.CdsFornecedor.ApplyUpdates(0);
                    screen.cursor := crDefault;
                end;
         end
      else
         begin
             uteis.aviso('Fornecedor não pode ser excluído, existe movimento !');
             DataCadastros.sqlUpdate.Close;
         end;
    except on E:EdataBaseError do
        uteis.erro  (pchar('Erro ao excluir o registro !'+e.message));
    end;
    Screen.Cursor := crDefault;
    EdtFor_codigo.text := DataCadastros.CdsFornecedorFOR_CODIGO.AsString;
    EdtFor_codigo.SetFocus;
end;

procedure TFormFornec.Bit_GravarClick(Sender: tObject);
begin
    try
      Screen.Cursor := crHourGlass;
      //salva o registro
      {Grava empresa}
      if DbeFor_DtInicio.text = '  /  /    ' then
         DataCadastros.CdsFornecedorFOR_DTCADASTRO.AsDateTime := date;
      if DataCadastros.CdsFornecedor.state = dsinsert then
      begin
         if (MessageDlg('Atualiza preço de venda automaticamente na compra ? ', mtConfirmation, [mbYes, mbNo], 0) = mrYes)  then
            DataCadastros.CdsFornecedorFOR_ATUALIZA_PVENDA.AsString := 'S'
         else
            DataCadastros.CdsFornecedorFOR_ATUALIZA_PVENDA.AsString := 'N'
      end;
      DataCadastros.CdsFornecedorEMP_CODIGO.AsString := dbInicio.Empresa.EMP_CODIGO;
      DataCadastros.CdsFornecedor.ApplyUpdates(0);
      Screen.Cursor := crDefault;
      Habilitabotoes;
      EdtFor_codigo.Enabled := True;
      EdtFor_codigo.Text    := StrZero(DataCadastros.CdsFornecedorFOR_CODIGO.AsString,EdtFor_Codigo.MaxLength);
      //DBeCGC.Setfocus;
     // EdtFor_codigo.SetFocus;
      DataCadastros.DsFornecedor.AutoEdit := true;
    except on E:EDataBaseError do
        uteis.erro  (pchar('Erro ao gravar o registro !'+e.message));
    end;
end;

procedure TFormFornec.Bit_CancelarClick(Sender: tObject);
begin
   if (uteis.confirmacao ( ('Deseja cancelar as alterações ?'))=mrYes) then
      begin
         DataCadastros.CdsFornecedor.Cancel;
         if DataCadastros.CdsFornecedor.RecordCount = 0 Then   //Ao cancelar ultimo record da
            begin                         
               DataCadastros.DsFornecedor.AutoEdit := False;
               EdtFor_codigo.Enabled := False;
            end;
         HabilitaBotoes;
         MostraCtaAnalise;
         //DBeCGC.Setfocus;
         EdtFor_Codigo.Enabled := True;
         EdtFor_Codigo.Text    := DataCadastros.CdsFornecedorFOR_CODIGO.AsString;
         //EdtFor_codigo.SetFocus;
      end;
end;

procedure TFormFornec.Bit_SairClick(Sender: tObject);
begin
    close;
end;

procedure TFormFornec.DBNavigator1Click(Sender: tObject;
  Button: TNavigateBtn);
begin
    EdtFor_Codigo.Text := DataCadastros.CdsFornecedorFOR_CODIGO.AsString;
    MostraCtaAnalise;

     DataCadastros.CdsFornecedor.FieldByName('FOR_CGC').EditMask := '';
     // mostrar mascara cnpj ou CPF no registro atual
    if Length(trim(DBeCGC.Text)) = 14 then
       DataCadastros.CdsFornecedor.FieldByName('FOR_CGC').EditMask := '99\.999\.999\/9999\-99;0;_'
    else
       DataCadastros.CdsFornecedor.FieldByName('FOR_CGC').EditMask := '999\.999\.999\-99;0;_';

end;

procedure TFormFornec.EdtFor_codigoExit(Sender: tObject);
begin
    EdtFor_codigo.Text := StrZero(EdtFor_codigo.Text, EdtFor_codigo.MaxLength);
    if DataCadastros.CdsFornecedor.State in [Dsbrowse] then
       begin
           BuscaFornec;
           MostraCtaAnalise;
       end;
end;

procedure TFormFornec.FormCloseQuery(Sender: tObject;
  var CanClose: Boolean);
begin
    Verificaedicao;
    try
      if DataCadastros.CdsFornecedor.Active then
        DataCadastros.CdsFornecedor.Close;
      if DataCadastros.CdsForXProd.Active then
        DataCadastros.CdsForXProd.close;
      if SqlCdsCtaAnalise.Active then
        SqlCdsCtaAnalise.Close;
      if SqlCdsProduto.Active then
        SqlCdsProduto.Close;
      CbxParcela.CarregarCombo := False;
    except // on e:EdataBaseError do                                       não há motivo para fechar as tabelas aqui e muito menos de tratar o erro com mensagem, se der pau, o formulário será fechado de qualquer forma
       // uteis.erro  (pchar('Erro ao fechar as tabelas !'+e.message));
    end;
end;

procedure TFormFornec.FormCreate(Sender: TObject);
begin
  inherited;
  TSColaborador.TabVisible := DBInicio.GetParametroUsuario('LIBERA_COLABORADOR') = 'S';
  PageControl2.ActivePageIndex := 0;
end;

procedure TFormFornec.FormDestroy(Sender: TObject);
begin
//   if (not assigned(FrmEntradaNotaXml)) or (not Assigned(fmPesqContaCorrenteCredito)) then
//        FormFornec := Nil;
end;

procedure TFormFornec.TbFornecBeforeEdit(DataSet: TDataSet);
begin
    DesabilitaBotoes;
end;

procedure TFormFornec.TSColaboradorShow(Sender: TObject);
begin
  PageControl3.ActivePageIndex := 0;
  if DataCadastros.CdsFornecedor.State in [dsInsert] then
    DBEditColaborador.Text := DBeFor_razao.Text
 else
    if DataCadastros.CdsFornecedor.State in [dsInactive] then
        // nao faz nada
    else
    if DBEditColaborador.text = ''   then
       begin
       DataCadastros.CdsFornecedor.Edit;
       DBEditColaborador.Text := DBeFor_razao.Text;
       end;

end;

procedure TFormFornec.Bit_RelatorioClick(Sender: tObject);
begin
    try
      try
        FormGImpForn := TFormGImpForn.Create(Application);
        FormGImpForn.ShowModal;
      finally
        FormGImpForn.Destroy;
        FormGImpForn := nil;
      end;
    except
        //beep;
        uteis.erro  ('Ocorreu um erro na criação do formulário!');
    end;
    {ativa o método ao evento OnActiveControlChange}
    Screen.OnActiveControlChange   := MudaCorCampos;
end;


procedure TFormFornec.Bit_Cancel2Click(Sender: tObject);
begin
    Pn_Vincular.Visible  := False;
    HabDesBotoesVinculo(True);
    SqlCdsProduto.Close;
    DataCadastros.sqlUpdate.Close;
   if (DataCadastros.CdsFornecedor.State in [dsBrowse]) then
      HabilitaBotoes
   else
      DesabilitaBotoes;
   //
   DBeFor_razao.SetFocus;   
end;

procedure TFormFornec.Bit_VincularClick(Sender: tObject);
   var
      sProdutoCodigo:String;
begin
   if (EdtPRD_REFER.Text = '') then
      begin
         //beep;
         uteis.aviso('Selecione o produto a vincular!');
         CbxProdu.Text := '';
         CbxProdu.SetFocus;
      end
   else
      begin
          Screen.Cursor := crHourGlass;
          try
            sProdutoCodigo := RetornaProdutoReferencia(EdtPRD_REFER.Text);
            DataCadastros.sqlUpdate.close;
            DataCadastros.SqlUpdate.sql.text :='SELECT * FROM PRD0000_CODIGO T1 '+
                                               ' JOIN PRD0000 E ON T1.PRD_CODIGO = E.PRD_CODIGO '+ ConcatSe ( ' and e.',dbinicio.ExclusivoSql('PRODUTOS')) +
                                               ' where T1.FOR_CODIGO = '+ QuotedStr( EdtFor_codigo.Text)+
                                               ' AND T1.PRDC_REFERENCIA = '+QuotedStr( EdtPRD_REFER.Text)+
                                               ' ORDER BY T1.FOR_CODIGO,T1.PRDC_REFERENCIA';
            DataCadastros.sqlUpdate.Open;
            if not DataCadastros.sqlUpdate.IsEmpty then
               begin
                   //beep;
                   uteis.aviso('Este produto já estava vinculado.');
                   EdtPrd_refer.Text := '';
                   EdtPrd_refer.SetFocus;
                   CbxProdu.Text := '';
               end
            else
               begin
                   try
                     DataCadastros.sqlUpdate.close;
                     DataCadastros.SqlUpdate.sql.text :='Insert into PRD0000_CODIGO (FOR_CODIGO,PRD_CODIGO,PRDC_REFERENCIA) Values ('''+EdtFor_codigo.Text+''','''+sProdutoCodigo+''','''+EdtPRD_REFER.Text+''')';
                     DataCadastros.sqlUpdate.Execsql;
                   except on E:EDataBaseError do
                      uteis.erro  (pchar('Erro ao Inserir DADOS na tabela FOR_PROD !'+E.MESSAGE));
                   end;
                   EdtPRD_REFER.Text := '';
                   EdtPrd_Refer.SetFocus;
                   CbxProdu.Text     := '';
                   //
                   if (DataCadastros.CdsFornecedor.State in [dsBrowse]) then
                      HabilitaBotoes
                   else
                      DesabilitaBotoes;
                   //
                   DBeFor_razao.SetFocus;   
               end;
          except on E:EDataBaseError do
             uteis.erro  (pchar('Error ao abrir a Tabela FOR_PROD !'+E.MESSAGE));
          end;
          Screen.Cursor := crDefault;
      end;
end;

procedure TFormFornec.BotoesAcesso;
begin
     if assigned(FormFornec) then
     begin
       Bit_novo.Enabled := Uteis.AcessoUsuario('CadastrosFornecedores',DBInicio.Usuario.CODIGO,FormFornec).Incluir;
       Bit_Excluir.Enabled := Uteis.AcessoUsuario('CadastrosFornecedores',DBInicio.Usuario.CODIGO,FormFornec).Exluir;
       Bit_Relatorio.Enabled := Uteis.AcessoUsuario('CadastrosFornecedores',DBInicio.Usuario.CODIGO,FormFornec).Relatorio;
       DataCadastros.DsFornecedor.AutoEdit := Uteis.AcessoUsuario('CadastrosFornecedores',DBInicio.Usuario.CODIGO,FormFornec).Alterar;
     end;
end;

procedure TFormFornec.btnConsultarCNPJ_CPFClick(Sender: TObject);
var  vfone : string;

begin
 if DBeCGC.Text = '' then
   GeraException('Não preenchido o CNPJ/CPF');

if Length(RetiraTodaMascara(DBeCGC.Text)) = 14 then
 begin
   FrmConsultarCNPJ  := TFrmConsultarCNPJ.Create(Application);
  try
   FrmConsultarCNPJ.CNPJ :=  DBeCGC.Text;
   FrmConsultarCNPJ.ShowModal;
   if FrmConsultarCNPJ.Importar then
   begin
     with  FrmConsultarCNPJ.ACBrConsultaCNPJ_cliente do
     begin
      if DBeFor_razao.DataSource.DataSet.State = dsBrowse then
         DataCadastros.CdsFornecedor.Edit;
      DBeFor_razao.Field.Value := RazaoSocial;

      DBeFor_cepEdit1.Field.Value :=  AnsiReplaceStr(cep,'-','');
      DBEFOR_BAIRRO.Field.Value := bairro;
      DBeFor_email.Field.Value :=   EndEletronico;
      DBeFor_endere.Field.Value := Endereco + ', ' + Numero +' '+ complemento;
      vfone := AnsiReplaceStr(telefone,'(','');
      vfone := AnsiReplaceStr(vfone,')','');
      vfone := AnsiReplaceStr(vfone,'-','');
      vfone := AnsiReplaceStr(vfone,' ','');
      vfone := '0'+vfone;
      DBeFor_fone.Field.Value := vfone;
      if Cidade <> '' then
      begin
        OpenAux(
                ' SELECT CID_CODIGO FROM CID0000'+
                ' WHERE CID_ESTADO = '+ QuotedStr(UF)+
                ' AND CID_CIDADE = '+ QuotedStr(Cidade));
        if not ((qAux.FieldByName('CID_CODIGO').IsNull) or (qAux.FieldByName('CID_CODIGO').AsInteger = 0))    then
        begin
         if not (DataCadastros.CdsFornecedor.State  in dsEditModes) then
           DataCadastros.CdsFornecedor.Edit;
         DataCadastros.CdsFornecedorFOR_CIDADE.AsString  := cidade;
         DataCadastros.CdsFornecedorFOR_UF.AsString      := uf;
         DataCadastros.CdsFornecedorCID_CODIGO.AsInteger :=qAux.FieldByName('CID_CODIGO').AsInteger;
        end;
      end;

//      EditSituacao.Text    := ACBrConsultaCNPJ1.Situacao;


     end;
   end;

  finally
   FrmConsultarCNPJ.Destroy;
  end;

 end;
end;

procedure TFormFornec.Pn_VincularExit(Sender: tObject);
begin
    if Pn_Vincular.Visible = True then
       begin
           //beep;
           Pn_Vincular.SetFocus;
       end;
end;

procedure TFormFornec.SpeedButton1Click(Sender: tObject);
begin
    Pn_Vincular.Left    := 72;
    Pn_Vincular.Top     := 147;
    Pn_Vincular.Visible := True;
    EdtPRD_REFER.Text   := '';
    EdtPrd_refer.SetFocus;
    HabDesBotoesVinculo(False);
    Screen.Cursor := crHourGlass;
    try
      SqlCdsProduto.Close;
      SqlCdsProduto.CommandText := SQLDEF('PRODUTOS','SELECT P1.PRD_REFER,P1.PRD_DESCRI FROM PRD0000 P1','','P1.PRD_DESCRI','P1.');
      SqlCdsProduto.Open;
      while not SqlCdsProduto.Eof do
        begin
            CbxProdu.Items.Add(SqlCdsProdutoPRD_DESCRI.AsString);
            SqlCdsProduto.Next;
        end;
      CbxProdu.ItemIndex := 0;
    except on E:EDataBaseError do
        uteis.erro  (pchar('Erro ao Abrir a Tabela PRD0000 !'+E.MESSAGE));
    end;
    Screen.Cursor := crDefault;
end;

procedure TFormFornec.DBeFor_foneExit(Sender: tObject);
begin
    // já gravo fone igual p/ fone do contato pois nao devo deixar campo vazio,
    // pois aparece no cad. de produtos
    if DataCadastros.CdsFornecedor.State in [DsInsert] then
       DataCadastros.CdsFornecedorFOR_FONCONT.AsString := DataCadastros.CdsFornecedorFOR_FONE.AsString;
end;

procedure TFormFornec.FormClose(Sender: tObject; var Action: TCloseAction);
begin
    Screen.OnActiveControlChange := NIL;
    if (not assigned(FrmEntradaNotaXml)) or (not Assigned(fmPesqContaCorrenteCredito)) then
    begin
        Action := CaFree;
        formFornec := nil;
    end;

end;

procedure TFormFornec.DBLkCboProdutoClick(Sender: tObject);
begin
    EdtPRD_REFER.Text := DataCadastros.CdsProdutosPRD_REFER.AsString;
end;

procedure TFormFornec.EdtPRD_REFERExit(Sender: tObject);
begin
    if EdtPrd_Refer.text <> '' then
       begin
           if SqlCdsProduto.Locate('PRD_REFER',EdtPrd_refer.text,[]) = False then
              begin
                  uteis.aviso('Produto não encontrado...');
                  EdtPrd_refer.Text := '';
                  EdtPrd_refer.SetFocus;
                  CbxProdu.Text := '';
              end
           else
              begin
                  CbxProdu.Text := SqlCdsProdutoPRD_DESCRI.AsString;
              end;
       end;
end;

procedure TFormFornec.CbxProduClick(Sender: tObject);
begin
    SqlCdsProduto.Locate('PRD_DESCRI',CbxProdu.text,[]);
    EdtPrd_refer.text := SqlCdsProdutoPRD_REFER.AsString;
end;

procedure TFormFornec.MostraCtaAnalise;
Var
  sCondPagto:String;
begin
    sCondPagto := '';
    Screen.Cursor := crHourGlass;
    if SqlCdsCtaAnalise.Locate('CCT_CODIGO',DataCadastros.CdsFornecedorCCT_CODIGO.AsString,[]) = true then
       begin
           CbxCtaAnalise.text := SqlCdsCtaAnaliseCCT_DESCRI.AsString;
       end
    else
       begin
           CbxCtaAnalise.text := '';
           DBeCct_Codigo.Text := '';
       end;
    //
    {Parcelas}
    sCondPagto := DBePcl_codigo.Text;
    if (Trim(sCondPagto) <> '') then
       begin
          CbxParcela.TextoLocalizar  := sCondPagto;
          CbxParcela.Localizar       := True;
          //
          if (not CbxParcela.Localizado) then
             CbxParcela.Text := ''
          else
             DBePcl_codigo.Text := StrZero(DBePcl_codigo.Text,3);
       end
    else
       CbxParcela.Text := '';
    //
    Screen.Cursor := crDefault;
end;

procedure TFormFornec.CbxCtaAnaliseExit(Sender: tObject);
begin
    if (ActiveControl.Name = 'Bit_Sair')or(ActiveControl.Name = 'Bit_Cancelar')or(ActiveControl.Name = 'DBeCct_Codigo') then
       exit;
    screen.Cursor := crHourGlass;
    if (CbxCtaAnalise.Text <> '') then
       begin
           if SqlCdsCtaAnalise.Locate('CCT_DESCRI',CbxCtaAnalise.Text,[])= true then
              begin
                  if (DataCadastros.CdsFornecedor.State in [dsBrowse]) and not (DataCadastros.CdsFornecedor.IsEmpty) then
                     DataCadastros.CdsFornecedor.Edit;
                  DbeCct_Codigo.Field.Text := SqlCdsCtaAnaliseCCT_CODIGO.AsString;
              end
           else
              begin
                  uteis.aviso('Conta caixa não encontrado !');
                  CbxCtaAnalise.Text := '';
                  DbeCct_Codigo.Field.Text := '';
                  CbxCtaAnalise.SetFocus;
                  CbxCtaAnalise.SelectAll;
              end;
       end
    else
       begin
           uteis.aviso('Informe uma Conta Caixa !');
           CbxCtaAnalise.Text := '';
           DbeCct_Codigo.Text := '';
           CbxCtaAnalise.SetFocus;
           CbxCtaAnalise.SelectAll;
       end;
    screen.cursor:=crDefault;
end;

procedure TFormFornec.DBeCct_CodigoExit(Sender: tObject);
begin
    screen.Cursor := crHourGlass;
    if (DbeCct_Codigo.Text <> '') then
       begin
           if SqlCdsCtaAnalise.Locate('CCT_CODIGO',StrZero(DbeCct_Codigo.Text,DbeCct_Codigo.MaxLength),[])= true then
              begin
                  CbxCtaAnalise.Text := SqlCdsCtaAnaliseCCT_DESCRI.AsString;
                  DbeCct_Codigo.Text := StrZero(DbeCct_Codigo.Text,DbeCct_Codigo.MaxLength);
              end
           else
              begin
                  uteis.aviso('Conta análise não encontrado !');
                  CbxCtaAnalise.Text := '';
                  DbeCct_Codigo.Field.Text := '';
                  DbeCct_Codigo.SetFocus;
                  DBeCct_Codigo.SelectAll;
              end;
       end
    else
       begin
           CbxCtaAnalise.Text := '';
       end;
    screen.cursor:=crDefault;
end;

procedure TFormFornec.CbTransp1Select(Sender: TObject);
begin
  inherited;
  if not (DataCadastros.CdsFornecedor.State in dsEditModes) then
    DataCadastros.CdsFornecedor.Edit;
  DataCadastros.CdsFornecedorTRP_CODIGO.AsString := CbTransp1.idRetorno;
end;

procedure TFormFornec.CbxCtaAnaliseClick(Sender: tObject);
begin
    if (DataCadastros.CdsFornecedor.State in [dsBrowse]) and not (DataCadastros.CdsFornecedor.IsEmpty) then
       DataCadastros.CdsFornecedor.Edit;
    if SqlCdsCtaAnalise.Locate('CCT_DESCRI',CbxCtaAnalise.Text,[]) = true then
       DbeCct_Codigo.Field.Text := SqlCdsCtaAnaliseCCT_CODIGO.AsString
    else
       DbeCct_Codigo.Field.Text := '';
end;

procedure TFormFornec.DBeCct_CodigoKeyPress(Sender: tObject;
  var Key: Char);
begin
    if not (key in ['0'..'9',#8]) then
       begin
          //beep;
          Key := #0;
       end;
end;

procedure TFormFornec.DBeCct_CodigoClick(Sender: tObject);
begin
    DBeCct_Codigo.SelectAll;
end;

procedure TFormFornec.CbxCtaAnaliseEnter(Sender: tObject);
begin
    CbxCtaAnalise.SelectAll;
end;

procedure TFormFornec.FormKeyPress(Sender: tObject; var Key: Char);
begin
    if key = #27 then
       begin
          if (Bit_Cancelar.Visible) then
             Bit_Cancelar.Click
          else
          if (Bit_Sair.Visible) then
             Bit_Sair.Click;   
          key := #0;
       end;
end;

procedure TFormFornec.DBeCGCExit(Sender: tObject);
var
 wcgc : String;
begin
    if DataCadastros.CdsFornecedor.State in [dsInsert,dsEdit] then
       begin
           if (activeControl.Name='Bit_Sair') or
              (activeControl.Name='Bit_Cancelar') and (Bit_Cancelar.Visible=true) then
              exit;
           wcgc := Trim(DBeCGC.text);
           if (wcgc = '') and (wcgc <> '00000000000000') then
             begin
              uteis.aviso('É obrigatório a Digitação de um CNPJ ou CPF ou 00000000000000');
              DBeCGC.SetFocus;
              //exit;
             end;
       end;

    if Length(trim(DBeCGC.Text)) >11 then
       begin
         if RWFunc.TestaCgcCpf(DBeCGC.Text,'J') = false then
           DBeCGC.SetFocus
         else
           begin
           DataCadastros.CdsFornecedor.FieldByName('FOR_CGC').EditMask := '99\.999\.999\/9999\-99;0;_';
           if wcgc <> '00000000000000' then
              Checafornecedor;
           end;
       end;
    if Length(trim(DBeCGC.Text)) <=11 then
       begin
         if RWFunc.TestaCgcCpf(DBeCGC.Text,'F') = false then
            DBeCGC.SetFocus
         else
            begin
            DataCadastros.CdsFornecedor.FieldByName('FOR_CGC').EditMask := '999\.999\.999\-99;0;_';
            if wcgc <> '00000000000000' then
              Checafornecedor;
            end;
       end;


end;

procedure TFormFornec.DBEdit10Change(Sender: TObject);
var total:string;
begin
   total := DBEdit10.Text;
   try
      StrToInt(DBEdit10.Text)
   except
      Delete(total,length(total),1);
   end;
   DBEdit10.Text := total;
end;

procedure TFormFornec.DBEdit21Change(Sender: TObject);
//var total:string;
begin
//   total := DBEdit21.Text;
//   try
//      StrToInt(DBEdit21.Text)
//   except
//      Delete(total,length(total),1);
//   end;
//   DBEdit21.Text := total;
end;

procedure TFormFornec.DBEdit22Change(Sender: TObject);
//var total:string;
begin
//   total := DBEdit22.Text;
//   try
//      StrToInt(DBEdit22.Text)
//   except
//      Delete(total,length(total),1);
//   end;
//   DBEdit22.Text := total;
end;

procedure TFormFornec.DBEdit24Change(Sender: TObject);
var total:string;
begin
   total := DBEdit24.Text;
   try
      StrToInt(DBEdit24.Text)
   except
      Delete(total,length(total),1);
   end;
   DBEdit24.Text := total;
end;

procedure TFormFornec.DBEdit43Change(Sender: TObject);
var total:string;
begin
   total := DBEdit43.Text;
   try
      StrToInt(DBEdit43.Text)
   except
      Delete(total,length(total),1);
   end;
   DBEdit43.Text := total;
end;

procedure TFormFornec.DBEdit45Change(Sender: TObject);
var total:string;
begin
   total := DBEdit45.Text;
   try
      StrToInt(DBEdit45.Text)
   except
      Delete(total,length(total),1);
   end;
   DBEdit45.Text := total;
end;

procedure TFormFornec.Checafornecedor;
begin
    try
      DataCadastros.sqlUpdate.Close;
      DataCadastros.SqlUpdate.sql.text :=SQLDEF('FORNECEDORES','SELECT C1.FOR_CODIGO,C1.FOR_CGC FROM FOR0000 C1 ','WHERE C1.FOR_CODIGO <> '+QuotedStr(EdtFor_codigo.Text)+' and C1.FOR_CGC = '''+DBeCGC.Text+'''','C1.FOR_CGC','C1.');
      DataCadastros.sqlUpdate.Open;
      if not DataCadastros.sqlUpdate.IsEmpty then
         begin
             uteis.aviso('Fornecedor já cadastrado !');
             DataCadastros.CdsFornecedor.Cancel;
             DataCadastros.CdsFornecedor.CancelUpdates;
             if DataCadastros.CdsFornecedor.State in [dsBrowse] then
                begin
                    if DataCadastros.CdsFornecedor.Locate('FOR_CODIGO',DataCadastros.sqlUpdate.FieldByName('FOR_CODIGO').ASstring,[]) = true then
                       begin
                           DataCadastros.sqlUpdate.Close;
                           EdtFor_codigo.Text := DataCadastros.CdsFornecedorFOR_CODIGO.AsString;
                           BuscaFornec;
                           MostraCtaAnalise;
                           //BuscaCliente(EdtCli_codigo.Text);
                           //habilitabotoes;
                       end;
                end;
         end
      else
         begin
             DataCadastros.sqlUpdate.Close;
         end;
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao Abrir a Tabela CLIENTES !'+E.Message));
    end;
end;




procedure TFormFornec.HabDesBotoesVinculo(bHab:boolean);
begin
   DBNavigator1.Enabled  := bHab;
   Bit_Lista.Enabled     := bHab;
   Bit_Relatorio.Enabled := bHab;
   Bit_novo.Enabled      := bHab;
   Bit_Excluir.Enabled   := bHab;
   Bit_Gravar.Enabled    := bHab;
   Bit_Cancelar.Enabled  := bHab;
   Bit_Sair.Enabled      := bHab;
end;

procedure TFormFornec.DBePcl_codigoExit(Sender: tObject);
begin
     CbxParcela.idRetorno := StrZero(DBePcl_codigo.Text,3);
     if CbxParcela.idRetorno='' then
     begin
          uteis.aviso('Informe o prazo de pagamento !');
          DBePcl_codigo.SetFocus;
          DBePcl_codigo.SelectAll;
     end;
end;


procedure TFormFornec.edTRP_CODIGOChange(Sender: TObject);
begin
  inherited;
  CbTransp1.idRetorno := DataCadastros.CdsFornecedorTRP_CODIGO.asstring;
end;

procedure TFormFornec.edTRP_CODIGOExit(Sender: TObject);
begin
  inherited;
  CbTransp1.idRetorno := StrZero(DataCadastros.CdsFornecedorTRP_CODIGO.asstring, 3);
end;

Function TFormFornec.Verifica_Condicao_Pagto(sCodPagto:String):Boolean;
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
   FrmMenu.RwSqlGeralCmd.Condicao       := 'T1.PCL_CODIGO = '''+sCodPagto+'''';
   FrmMenu.RwSqlGeralCmd.CamposOrdernar := 'T1.PCL_CODIGO';
   FrmMenu.RwSqlGeralCmd.MontarSql      := True;
   //
   DataMovimento2.sqlaux.Close;
   DataMovimento2.sqlaux.sql.text := FrmMenu.RwSqlGeralCmd.ComandoSql;
   DataMovimento2.sqlaux.open;
   if (not DataMovimento2.sqlaux.IsEmpty) then
      begin
         if (DataMovimento2.sqlaux.FieldByName('PCL_DISPONIVEL').AsString = 'S') then
            Result := True
         else
         if (DataMovimento2.sqlaux.FieldByName('PCL_DISPONIVEL').AsString = 'N') then
            Result := False;
      end;
   DataMovimento2.sqlaux.Close;
end;

procedure TFormFornec.CbxParcelaClick(Sender: tObject);
begin
   if (DataCadastros.CdsFornecedor.State in [dsBrowse]) then
      DataCadastros.CdsFornecedor.Edit;
end;

procedure TFormFornec.SpeedButton5Click(Sender: tObject);
begin
   try
      FormCidadeGrid := TFormCidadeGrid.Create(Application);
      FormCidadeGrid.ShowModal;
         if (not DataCadastros.CdsFornecedor.IsEmpty) then
            begin
               if (DataCadastros.CdsFornecedor.State in [dsBrowse])then
                  DataCadastros.CdsFornecedor.Edit;
               if (DataCadastros.CdsFornecedor.State in [dsEdit,dsInsert]) then
                  begin
                     DataCadastros.CdsFornecedorFOR_CIDADE.AsString  := FormCidadeGrid.Cidade;
                     DataCadastros.CdsFornecedorFOR_UF.AsString      :=FormCidadeGrid.Estado;
                     DataCadastros.CdsFornecedorCID_CODIGO.AsInteger := FormCidadeGrid.Cod_Cidade;
                  end
            end
         else
            begin
               if (DataCadastros.CdsFornecedor.State in [dsBrowse])then
                  DataCadastros.CdsFornecedor.Insert;
               DataCadastros.CdsFornecedorFOR_CIDADE.AsString  := FormCidadeGrid.Cidade;
               DataCadastros.CdsFornecedorFOR_UF.AsString      := FormCidadeGrid.Estado;
               DataCadastros.CdsFornecedorCID_CODIGO.AsInteger := FormCidadeGrid.Cod_Cidade;
            end;
   finally
      FormCidadeGrid.Destroy;
      FormCidadeGrid := Nil;
   end;
end;

procedure TFormFornec.DBeCGCEnter(Sender: tObject);
begin
   DataCadastros.CdsFornecedor.FieldByName('FOR_CGC').EditMask := '';
end;

procedure TFormFornec.DbeFor_dtinicioExit(Sender: tObject);
begin
    if DbeFor_DtInicio.text <> '  /  /    ' then
       begin
           if not TestaDataStr(DbeFor_dtinicio.Text) then
              DbeFor_dtinicio.setfocus;
       end;
end;

procedure TFormFornec.ExportarparaoC91Click(Sender: TObject);
var
  lista: TStringList;
begin
  inherited;
  cdsFornecedores.Close;
  qFornecedores.SQL.Text :=
    '  SELECT' +
      ' EMP_CODIGO,' +
      ' FOR_CGC,' +
      ' FOR_RAZAO,' +
      ' ''F'' AS FOR_TIPO,' +
      ' FOR_RAZAO AS FOR_FANTASIA,' +
      ' REPLACE(REPLACE (FOR_INSC, ''-'', ''''), ''.'', '''') AS FOR_INSC,' +
      ' FOR_CONTATO,' +
      ' ''(''||SUBSTRING (FOR_FONE FROM 1 FOR 2)||'')''||SUBSTRING (FOR_FONE FROM 3 FOR 255) AS FOR_FONE,' +
      ' ''(''||SUBSTRING (FONE_CELULAR FROM 1 FOR 2)||'')''||SUBSTRING (FONE_CELULAR FROM 3 FOR 255)  FONE_CELULAR,' +
      '	CASE '  +
      '   WHEN position ('';'' in FOR_EMAIL) = 0 THEN FOR_EMAIL '  +
      '	  ELSE '  +
      '   CASE '  +
      '     WHEN position ('';'' in FOR_EMAIL) > 0 THEN SUBSTRING (FOR_EMAIL FROM 1 FOR POSITION('';'' in FOR_EMAIL) -1) '  +
      '   END '  +
      ' END AS FOR_EMAIL, '  +
      ' CASE '  +
      '   WHEN position ('';'' in FOR_EMAIL) = 0 THEN FOR_EMAIL '  +
      '   ELSE '  +
      '   CASE '  +
      '     WHEN position ('';'' in FOR_EMAIL) > 0 THEN SUBSTRING (FOR_EMAIL FROM 1 FOR POSITION('';'' in FOR_EMAIL) -1) '  +
      '   END '  +
      ' END AS FOR_EMAIL_NFE, '  +
      ' FOR_CEP,' +
      ' CASE' +
        ' WHEN FOR_CIDADE = '''' THEN ''não informado''' +
        ' WHEN FOR_CIDADE IS NULL THEN ''não informado''' +
        ' ELSE FOR_CIDADE' +
      ' END AS FOR_CIDADE,' +
      ' CASE' +
        ' WHEN FOR_UF = '''' THEN ''não informado''' +
        ' WHEN FOR_UF IS NULL THEN ''não informado''' +
        ' ELSE FOR_UF' +
      ' END AS FOR_UF,' +
      ' CASE' +
        ' WHEN FOR_ENDERE = '''' THEN ''não informado''' +
        ' WHEN FOR_ENDERE IS NULL THEN ''não informado''' +
        ' WHEN position ('','' in FOR_ENDERE) = 0 THEN FOR_ENDERE ' +
        ' ELSE ' +
        '   CASE' +
          '   WHEN position ('','' in FOR_ENDERE) > 0 THEN SUBSTRING (FOR_ENDERE FROM 1 FOR POSITION('','' in FOR_ENDERE) -1)' +
        '   END' +
      ' END AS FOR_ENDERE,' +
      ' CASE' +
        ' WHEN POSITION('','' IN FOR_ENDERE) > 0 THEN SUBSTRING (FOR_ENDERE FROM POSITION('','' IN FOR_ENDERE) + 1 FOR 255)' +
        ' ELSE ''S/N''' +
      ' END AS FOR_NUMERO,  ' +
      ' CASE' +
        ' WHEN FOR_BAIRRO = '''' THEN ''não informado''' +
        ' WHEN FOR_BAIRRO IS NULL THEN ''não informado''' +
        ' ELSE FOR_BAIRRO' +
      ' END AS FOR_BAIRRO,' +
      ' '''' AS REP_RAZAO,' +
      ' '''' AS PCX_DESCRI,' +
      ' '''' AS BAN_APELIDO,' +
      ' '''' AS CLI_UND_CONSUMIDORA' +
    ' FROM FOR0000 f' +
    ' ORDER BY FOR_RAZAO' ;
  cdsFornecedores.Open;

  lista := TStringList.Create;
  lista.Add('FOR_CGC');
  lista.Add('FOR_RAZAO');
  lista.Add('FOR_TIPO');
  lista.Add('FOR_FANTASIA');
  lista.Add('FOR_INSC');
  lista.Add('FOR_CONTATO');
  lista.Add('FOR_FONE');
  lista.Add('FONE_CELULAR');
  lista.Add('FOR_EMAIL');
  lista.Add('FOR_EMAIL_NFE');
  lista.Add('FOR_CEP');
  lista.Add('FOR_CIDADE');
  lista.Add('FOR_UF');
  lista.Add('FOR_ENDERE');
  lista.Add('FOR_NUMERO');
  lista.Add('FOR_BAIRRO');
  lista.Add('REP_RAZAO');
  lista.Add('PCX_DESCRI');
  lista.Add('BAN_APELIDO');
  lista.Add('CLI_UND_CONSUMIDORA');
  CriaCSV(dsExportaExcel, lista, Self);

end;

end.


