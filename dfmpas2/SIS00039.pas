unit SIS00039;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Mask, DBCtrls, Buttons, ExtCtrls, ImgList,
  Menus,Db, CheckLst, Grids, DBGrids,Inifiles,  rxToolEdit, RXDBCtrl,DBLocalS,
   rxCurrEdit, RXCtrls;

type
  TFrmCadastroUsuario = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabUsuario: TTabSheet;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    DBECodigo: TDBEdit;
    Label4: TLabel;
    DbeUsuario: TDBEdit;
    labe4: TLabel;
    Label1: TLabel;
    DBESenha: TDBEdit;
    LabConfirma: TLabel;
    Label5: TLabel;
    EdConfirmaSenha: TMaskEdit;
    CbTipoUsuario: TComboBox;
    Label3: TLabel;
    GroupBox3: TGroupBox;
    RadCodigo: TRadioButton;
    Radnome: TRadioButton;
    GbConsulta: TGroupBox;
    BitPesquisar: TBitBtn;
    BitSair1: TBitBtn;
    EdPesquisa: TEdit;
    GroupBox4: TGroupBox;
    DBGridUsuario: TDBGrid;
    BoxOperacao: TGroupBox;
    ChkInclusao: TCheckBox;
    ChkExclusao: TCheckBox;
    ChkAlteracao: TCheckBox;
    DBNavega: TDBNavigator;
    BitInclusao: TBitBtn;
    BitExclusao: TBitBtn;
    BitConfirmar: TBitBtn;
    BitCancelar: TBitBtn;
    BitPesquisa: TBitBtn;
    BitSair: TBitBtn;
    Bevel1: TBevel;
    LblEstatisitica: TLabel;
    GroupBox5: TGroupBox;
    SpBSemAcess: TSpeedButton;
    SpBAcessTot: TSpeedButton;
    SpBAcessPar: TSpeedButton;
    SpBSomentLe: TSpeedButton;
    ImageList1: TImageList;
    BoxAcesso: TGroupBox;
    LVCadastros: TListView;
    TrVMenus: TTreeView;
    PopupMenu2: TPopupMenu;
    SemAcesso1: TMenuItem;
    AcessoTotal1: TMenuItem;
    AcessoParcial2: TMenuItem;
    SomenteLeitura1: TMenuItem;
    N1: TMenuItem;
    odosSemAcesso1: TMenuItem;
    odosAcessoTotal1: TMenuItem;
    odosAcessoParcial1: TMenuItem;
    odosSomenteLeitura1: TMenuItem;
    Label6: TLabel;
    DBEdit2: TDBEdit;
    Label7: TLabel;
    DBEdit3: TDBEdit;
    DBDateEdit1: TDBDateEdit;
    DBDateEdit2: TDBDateEdit;
    GroupBox7: TGroupBox;
    ChkCredito: TCheckBox;
    ChkPrecos: TCheckBox;
    ChkDescontos: TCheckBox;
    LVCompras: TListView;
    LVFinanceiro: TListView;
    LVInformacaoGer: TListView;
    LVTelemark: TListView;
    LVUtil: TListView;
    LVAjuda: TListView;
    LVSaida: TListView;
    TabParametro: TTabSheet;
    GroupBox11: TGroupBox;
    GroupBox8: TGroupBox;
    DBEdit1: TDBEdit;
    DBEdit4: TDBEdit;
    ScrollBox1: TScrollBox;
    GroupBox12: TGroupBox;
    Label396: TLabel;
    CurrDescMaxP: TCurrencyEdit;
    ChkPrecoBrutoP: TCheckBox;
    ChkPrecoLiqP: TCheckBox;
    ChkDescAutomaticoP: TCheckBox;
    ChkReeMissaoP: TCheckBox;
    GroupBox15: TGroupBox;
    Label412: TLabel;
    CurrDescMaxT: TCurrencyEdit;
    ChkPrecoBrutoT: TCheckBox;
    ChkPrecoLiqT: TCheckBox;
    ChkDescAutomaticoT: TCheckBox;
    ChkReeMissaoT: TCheckBox;
    GroupBox14: TGroupBox;
    ChkExclusaoPedP: TCheckBox;
    ChkExclusaoPedT: TCheckBox;
    ChkComissao: TCheckBox;
    ChkCusto: TCheckBox;
    ChkMargem: TCheckBox;
    ChkMagemMinima: TCheckBox;
    ChkPrecoVenda: TCheckBox;
    ChkPrecoOferta: TCheckBox;
    Bevel2: TBevel;
    DBNavega1: TDBNavigator;
    BitInclusao1: TBitBtn;
    BitExclusao1: TBitBtn;
    BitConfirmar1: TBitBtn;
    BitCancelar1: TBitBtn;
    BitPesquisa1: TBitBtn;
    BitSair2: TBitBtn;
    LvServico: TListView;
    LVAdministrador: TListView;
    LVExpedicao: TListView;
    LVRelatorios: TListView;
    LVFaturamento: TListView;
    RxLabel1: TRxLabel;
    RxLabel2: TRxLabel;
    ChkAlteraDescP: TCheckBox;
    ChkAlteraDescT: TCheckBox;
    ChkDescOfertaP: TCheckBox;
    ChkDescOfertaT: TCheckBox;
    GroupBox2: TGroupBox;
    ChkAlteraNFEntrada: TCheckBox;
    procedure FormShow(Sender: tObject);
    procedure FormCloseQuery(Sender: tObject; var CanClose: Boolean);
    procedure BitInclusaoClick(Sender: tObject);
    procedure BitExclusaoClick(Sender: tObject);
    procedure BitConfirmarClick(Sender: tObject);
    procedure BitCancelarClick(Sender: tObject);
    procedure BitPesquisaClick(Sender: tObject);
    procedure BitSairClick(Sender: tObject);
    procedure DBESenhaKeyPress(Sender: tObject; var Key: Char);
    procedure DBNavegaClick(Sender: tObject; Button: TNavigateBtn);
    procedure CbTipoUsuarioExit(Sender: tObject);
    procedure EdConfirmaSenhaExit(Sender: tObject);
    procedure ChekLiberacaoClick(Sender: tObject);
    procedure RadCodigoClick(Sender: tObject);
    procedure RadnomeClick(Sender: tObject);
    procedure TabSheet1Show(Sender: tObject);
    procedure TabUsuarioShow(Sender: tObject);
    procedure CbTipoUsuarioClick(Sender: tObject);
    procedure BitPesquisarClick(Sender: tObject);
    procedure EdPesquisaKeyPress(Sender: tObject; var Key: Char);
    procedure EdPesquisaExit(Sender: tObject);
    procedure DBGridUsuarioDblClick(Sender: tObject);
    procedure DBGridUsuarioKeyPress(Sender: tObject; var Key: Char);
    procedure FormKeyPress(Sender: tObject; var Key: Char);
    procedure FormKeyDown(Sender: tObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: tObject);
    procedure SpBSemAcessClick(Sender: tObject);
    procedure TrVMenusChange(Sender: tObject; Node: TTreeNode);
    procedure SpBAcessTotClick(Sender: tObject);
    procedure SemAcesso1Click(Sender: tObject);
    procedure AcessoTotal1Click(Sender: tObject);
    procedure AcessoParcial2Click(Sender: tObject);
    procedure SomenteLeitura1Click(Sender: tObject);
    procedure odosSemAcesso1Click(Sender: tObject);
    procedure odosAcessoTotal1Click(Sender: tObject);
    procedure odosAcessoParcial1Click(Sender: tObject);
    procedure odosSomenteLeitura1Click(Sender: tObject);
    procedure SpBAcessParClick(Sender: tObject);
    procedure SpBSomentLeClick(Sender: tObject);
    procedure TrVMenusGetImageIndex(Sender: tObject; Node: TTreeNode);
    procedure ChkAlteracaoEnter(Sender: tObject);
    procedure ChkInclusaoEnter(Sender: tObject);
    procedure ChkExclusaoEnter(Sender: tObject);
    procedure ChkAlteracaoClick(Sender: tObject);
    procedure ChkInclusaoClick(Sender: tObject);
    procedure ChkExclusaoClick(Sender: tObject);
    procedure ChkAlteracaoExit(Sender: tObject);
    procedure ChkInclusaoExit(Sender: tObject);
    procedure ChkExclusaoExit(Sender: tObject);
    procedure LVCadastrosClick(Sender: tObject);
    procedure LVAjudaClick(Sender: tObject);
    procedure LVComprasClick(Sender: tObject);
    procedure LVFinanceiroClick(Sender: tObject);
    procedure LVInformacaoGerClick(Sender: tObject);
    procedure LVTelemarkClick(Sender: tObject);
    procedure LVUtilClick(Sender: tObject);
    procedure TrVMenusClick(Sender: tObject);
    procedure ChkCreditoEnter(Sender: tObject);
    procedure ChkPrecosEnter(Sender: tObject);
    procedure ChkDescontosEnter(Sender: tObject);
    procedure DBGridUsuarioTitleClick(Column: TColumn);
    procedure ChkPrecoBrutoPEnter(Sender: tObject);
    procedure ChkPrecoLiqPEnter(Sender: tObject);
    procedure CurrDescMaxPKeyPress(Sender: tObject; var Key: Char);
    procedure ChkExclusaoPedPEnter(Sender: tObject);
    procedure ChkPrecoBrutoTEnter(Sender: tObject);
    procedure ChkPrecoLiqTEnter(Sender: tObject);
    procedure ChkDescAutomaticoTEnter(Sender: tObject);
    procedure CurrDescMaxTKeyPress(Sender: tObject; var Key: Char);
    procedure ChkReeMissaoTEnter(Sender: tObject);
    procedure ChkExclusaoPedTEnter(Sender: tObject);
    procedure ChkComissaoEnter(Sender: tObject);
    procedure ChkCustoEnter(Sender: tObject);
    procedure ChkMargemEnter(Sender: tObject);
    procedure ChkPrecoVendaEnter(Sender: tObject);
    procedure ChkMagemMinimaEnter(Sender: tObject);
    procedure ChkPrecoOfertaEnter(Sender: tObject);
    procedure TabParametroShow(Sender: tObject);
    procedure LvServicoClick(Sender: tObject);
    procedure LvAdministradorClick(Sender: tObject);
    procedure LVRelatoriosClick(Sender: tObject);
    procedure LVFaturamentoClick(Sender: tObject);
    procedure LVExpedicaoClick(Sender: tObject);
    procedure ChkDescAutomaticoPEnter(Sender: tObject);
    procedure ChkAlteraDescPEnter(Sender: tObject);
    procedure ChkDescOfertaPEnter(Sender: tObject);
    procedure ChkAlteraDescTEnter(Sender: tObject);
    procedure ChkDescOfertaTEnter(Sender: tObject);
  private
    { Private declarations }
     wESTATISTICA :String;
     NodePrincipal:TTreeNode;
     ListItem: TListItem;
     ListaMenu    :Array[0..11] of tObject;
    {campos}
     CampoEdit    :TEdit;
     CampoMaskEdit:TMaskEdit;
     CampoDBEdit  :TDBEdit;
     CampoBox     :TComboBox;
     //CampoData    :TDBDateEdit;
     CampoDbMemo  :TDBMemo;
     CampoTDBCombo:TDBComboBox;
     CampoTDBLuk  :TDBLookupComboBox;
     //CampoCurrency:TCurrencyEdit;
     procedure MudaCorCampos(Sender: tObject);
     procedure VerificaEdicao;
     procedure VerificaAtualizaCredito;
     procedure Pesquisa;
     procedure AtribuiMenuPrincial;
     procedure TiraAcessoMenuPrincipal;
     procedure VerificaSituacaoMenuPrincipal;
     procedure MostraMenus(Sender: tObject);
     procedure HabilitaMenus(Sender : tObject);
     procedure AtribuiMenus(Sender: tObject;  Form: TComponent; NomeComp:String);
     procedure AtualizaListaAcessos(Sender: tObject; NomeMenu:String);
     procedure AtribuiTipodeAcesso(Sender: tObject; wTIPO_ACESSO:String; wACESSO:Integer);
     procedure AtribuiTipodeAcessoGeral(Sender: tObject; wTIPO_ACESSO:String; wACESSO:Integer);
     procedure VerificaSituacaoOperacoes(Sender: tObject; wINDEX_ACESSO:Integer; wNOME_NIVEL:String);
     procedure GravaSituacaoOperacoes(Sender: tObject; wINDEX_ACESSO:Integer; wNOME_NIVEL:String);
     procedure GravaSituacaoOperacoesGeral(Sender: tObject; wNOME_NIVEL:String);
     procedure GravaNivelAcessos;
     procedure VerificaAcessosUsuario;
     procedure GravaParametrosUsuario(wCOD_USUARIO:String);
     procedure AtribuiParametroUsuario(wCOD_USUARIO:String);
  public
    { Public declarations }
     procedure HabilitaBotoes;
  end;

var
  FrmCadastroUsuario: TFrmCadastroUsuario;

implementation

uses ;

//function uteis.confirmacao ( msg : pchar ) : word; far; external 'funcsys.dll';



{$R *.dfm}


procedure TFrmCadastroUsuario.FormShow(Sender: tObject);
begin
   try
     Screen.OnActiveControlChange   := MudaCorCampos;
     DadosBase0.CdSUsuario.Open;
     DadosBase0.CdSAcessosUsuario.Open;
    {atribui os menus}
     AtribuiMenuPrincial;
    {}
     AtribuiMenus(LVCadastros,FrmMenu,'Cadastros1');
     AtualizaListaAcessos(LVCadastros,TrVMenus.Items.Item[0].Text);

     AtribuiMenus(LVFinanceiro,FrmMenu,'Financeiro1');
     AtualizaListaAcessos(LVFinanceiro,TrVMenus.Items.Item[1].Text);

     AtribuiMenus(LVCompras,FrmMenu,'Compras1');
     AtualizaListaAcessos(LVCompras,TrVMenus.Items.Item[2].Text);

     AtribuiMenus(LVTelemark,FrmMenu,'Vendas1');
     AtualizaListaAcessos(LVTelemark,TrVMenus.Items.Item[3].Text);

     AtribuiMenus(LVFaturamento,FrmMenu,'Faturamento1');
     AtualizaListaAcessos(LVFaturamento,TrVMenus.Items.Item[4].Text);

     AtribuiMenus(LVServico,FrmMenu,'Servicos1');
     AtualizaListaAcessos(LVServico,TrVMenus.Items.Item[5].Text);
     
     AtribuiMenus(LVInformacaoGer,FrmMenu,'Gerencial1');
     AtualizaListaAcessos(LVInformacaoGer,TrVMenus.Items.Item[6].Text);

     AtribuiMenus(LVAdministrador,FrmMenu,'Administrador1');
     AtualizaListaAcessos(LvAdministrador,TrVMenus.Items.Item[7].Text);

     AtribuiMenus(LVRelatorios,FrmMenu,'Relatorios1');
     AtualizaListaAcessos(LVRelatorios,TrVMenus.Items.Item[8].Text);

     AtribuiMenus(LVUtil,FrmMenu,'Utilitarios1');
     AtualizaListaAcessos(LVUtil,TrVMenus.Items.Item[9].Text);

     AtribuiMenus(LVAjuda,FrmMenu,'Help1');
     AtualizaListaAcessos(LVAjuda,TrVMenus.Items.Item[11].Text);
     //
     VerificaAtualizaCredito;
     PageControl1.ActivePage := TabSheet1;
     EdPesquisa.SetFocus;
     EdPesquisa.SelectAll;
     HabilitaBotoes;
     VerificaAcessosUsuario;
   except on E:EDataBaseError do
       begin
          uteis.erro  (Pchar('Impossível abrir o arquivo: '+ #13 + E.message));
       end;
   end;
end;

procedure TFrmCadastroUsuario.FormCloseQuery(Sender: tObject;
  var CanClose: Boolean);
begin
   try
     VerificaEdicao;
     Screen.OnActiveControlChange   := Nil;
     DadosBase0.CdSUsuario.Close;
     DadosBase0.CdSAcessosUsuario.Close;
     DadosBase3.CdSUsaParametro.Close;
   except on E:EDataBaseError do
       begin
          uteis.erro  (Pchar('Impossível fechar o arquivo: '+ #13 + E.message));
       end;
   end;
end;

procedure TFrmCadastroUsuario.HabilitaBotoes;
begin
   BitInclusao.Enabled   := DadosBase0.CdSUsuario.State in [dsBrowse,dsInactive];
   BitInclusao1.Enabled  := DadosBase0.CdSUsuario.State in [dsBrowse,dsInactive];
   BitExclusao.Enabled   := DadosBase0.CdSUsuario.State in [dsBrowse];
   BitExclusao1.Enabled  := DadosBase0.CdSUsuario.State in [dsBrowse];
   BitSair.Enabled       := DadosBase0.CdSUsuario.State in [dsBrowse,dsInactive];
   BitSair2.Enabled      := DadosBase0.CdSUsuario.State in [dsBrowse,dsInactive];
   BitPesquisa.Enabled   := DadosBase0.CdSUsuario.State in [dsBrowse,dsInactive];
   BitPesquisa1.Enabled  := DadosBase0.CdSUsuario.State in [dsBrowse,dsInactive];
   DBNavega.Enabled      := DadosBase0.CdSUsuario.State in [dsBrowse,dsInactive];
   DBNavega1.Enabled     := DadosBase0.CdSUsuario.State in [dsBrowse,dsInactive];
   BitConfirmar.Enabled  := DadosBase0.CdSUsuario.State in [dsInsert,dsEdit];
   BitConfirmar1.Enabled := DadosBase0.CdSUsuario.State in [dsInsert,dsEdit];
   BitCancelar.Enabled   := DadosBase0.CdSUsuario.State in [dsInsert,dsEdit];
   BitCancelar1.Enabled  := DadosBase0.CdSUsuario.State in [dsInsert,dsEdit];
   if DadosBase0.CdSUsuario.IsEmpty then
      begin
         BitExclusao.Enabled  := False;
         BitExclusao1.Enabled := False;
      end;
end;

procedure TFrmCadastroUsuario.MudaCorCampos(Sender: tObject);
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
  {CampoData  :TDBDateEdit}
{   if Assigned(CampoData) then
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
  {CampoTDBCombo:TDBComboBox}
   if Assigned(CampoTDBCombo) then
      begin
         CampoTDBCombo.color := clWindow;
      end;
   if ActiveControl is TDBComboBox then
      begin
         TDBComboBox(ActiveControl).color := $0080FFFF;
         CampoTDBCombo := TDBComboBox(ActiveControl);
      end
   else
      begin
         CampoTDBCombo := nil;
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
  {CampoEdit :TMaskEdit}
   if Assigned(CampoMaskEdit) then
      begin
         CampoMaskEdit.color := clWindow;
      end;
   if ActiveControl is TMaskEdit then
      begin
         TMaskEdit(ActiveControl).color := $0080FFFF;
         CampoMaskEdit := TMaskEdit(ActiveControl);
      end
   else
      begin
         CampoMaskEdit := nil;
      end;
end;

procedure TFrmCadastroUsuario.VerificaEdicao;
begin
 {Verifica Estado da Tabela em edicao e inclusao}
   screen.Cursor := crHourglass;
    if (DadosBase0.CdSUsuario.State in [dsEdit,dsInsert]) or (DadosBase0.CdSAcessosUsuario.State in [dsEdit,dsInsert]) then
       begin
         if uteis.confirmacao ( 'Deseja salvar Alterações ?')= idyes then
            begin
               try
                {Salva o registro}
                 VerificaAtualizaCredito;
                 DadosBase0.CdSUsuario.ApplyUpdates(0);
               except on EDatabaseError do
                   begin
                      uteis.erro  ('Erro impossível gravar no arquivo ...');
                   end;
               end;
              {chama a rotina habilita botoes}
               HabilitaBotoes;
            end
         else
            begin
               try
                {Cancela o registro}
                 DadosBase0.CdSUsuario.Cancel;
                 DadosBase0.CdSAcessosUsuario.Cancel;
               except on EDatabaseError do
                   begin
                      uteis.erro  ('Erro impossível gravar no arquivo ...');
                   end;
               end;
                {chama a rotina habilita botoes}
                 HabilitaBotoes;
            end;
       end;
   screen.Cursor := crDefault;
end;

procedure TFrmCadastroUsuario.BitInclusaoClick(Sender: tObject);
begin
   try
      wESTATISTICA            := 'N';
      LblEstatisitica.Visible := False;
      DadosBase0.CdSUsuario.Insert;
     {novo}
       TiraAcessoMenuPrincipal;
       AtribuiMenus(LVCadastros,FrmMenu,'Cadastros1');

       AtribuiMenus(LVFinanceiro,FrmMenu,'Financeiro1');

       AtribuiMenus(LVCompras,FrmMenu,'Compras1');

       AtribuiMenus(LVTelemark,FrmMenu,'Vendas1');

       AtribuiMenus(LvServico,FrmMenu,'Servicos1');

       AtribuiMenus(LVInformacaoGer,FrmMenu,'Gerencial1');

       AtribuiMenus(LVAdministrador,FrmMenu,'Administrador1');

       AtribuiMenus(LVUtil,FrmMenu,'Utilitarios1');

       AtribuiMenus(LVAjuda,FrmMenu,'Help1');

      GravaNivelAcessos;
      VerificaAtualizaCredito;
      HabilitaBotoes;
      CbTipoUsuario.ItemIndex   := 2;
      DbeUsuario.SetFocus;
  except on E:EDataBaseError do
      begin
         uteis.erro  (PChar('Impossível inserir dados novos:' + #13 + E.Message));
         exit;
      end;
  end;

end;

procedure TFrmCadastroUsuario.BitExclusaoClick(Sender: tObject);
begin
   if uteis.confirmacao ( 'Confirma a exclusao do Cliente Atual ?')=mryes then
       begin
           wESTATISTICA            := 'N';
           LblEstatisitica.Visible := False;
           DadosBase0.CdSUsuario.Delete;
           DadosBase0.CdSUsuario.ApplyUpdates(0);
           HabilitaBotoes;
          // 
           VerificaAtualizaCredito;
           VerificaSituacaoMenuPrincipal;
           AtualizaListaAcessos(LVCadastros,TrVMenus.Items.Item[0].Text);
           AtualizaListaAcessos(LVFinanceiro,TrVMenus.Items.Item[1].Text);
           AtualizaListaAcessos(LVCompras,TrVMenus.Items.Item[2].Text);
           AtualizaListaAcessos(LVTelemark,TrVMenus.Items.Item[3].Text);
           AtualizaListaAcessos(LVFaturamento,TrVMenus.Items.Item[4].Text);
           AtualizaListaAcessos(LVServico,TrVMenus.Items.Item[5].Text);
           AtualizaListaAcessos(LVInformacaoGer,TrVMenus.Items.Item[6].Text);
           AtualizaListaAcessos(LvAdministrador,TrVMenus.Items.Item[7].Text);
           AtualizaListaAcessos(LVRelatorios,TrVMenus.Items.Item[8].Text);
           AtualizaListaAcessos(LVUtil,TrVMenus.Items.Item[9].Text);
           AtualizaListaAcessos(LVAjuda,TrVMenus.Items.Item[11].Text);
       end;
end;

procedure TFrmCadastroUsuario.BitConfirmarClick(Sender: tObject);
begin
   try
     VerificaAtualizaCredito;
     GravaNivelAcessos;
     DadosBase0.CdSUsuario.ApplyUpdates(0);
     GravaParametrosUsuario(DBECodigo.Field.AsString);
    {chama a rotina habilita botoes}
     HabilitaBotoes;
     EdConfirmaSenha.Clear;
     wESTATISTICA            := 'N';
     LblEstatisitica.Visible := False;
     if PageControl1.ActivePage = TabUsuario then
        DbeUsuario.SetFocus;
     if PageControl1.ActivePage = TabParametro then
        DBEdit1.SetFocus;
   except on E:EDataBaseError do
       begin
          uteis.erro  (Pchar('Erro impossível gravar no arquivo: '+ #13 + E.message));
       end;
   end;
end;

procedure TFrmCadastroUsuario.BitCancelarClick(Sender: tObject);
begin
   if uteis.confirmacao ( 'Deseja Cancelar a Operacao Atual ?')= mryes then
      begin
         screen.Cursor := crHourglass;
         try
          {Cancela o registro}
           DadosBase0.CdSUsuario.Cancel;
           DadosBase0.CdSAcessosUsuario.CancelUpdates;
           EdConfirmaSenha.Clear;
           wESTATISTICA            := 'N';
           LblEstatisitica.Visible := False;
         except on E:EDataBaseError do
             begin
                screen.Cursor := crDefault;
                uteis.erro  (Pchar('Erro impossível cancelar operação no arquivo: '+ #13 + E.message));
             end;
         end;
        {chama a rotina habilita botoes}
         HabilitaBotoes;
         VerificaAtualizaCredito;
         VerificaSituacaoMenuPrincipal;
         AtualizaListaAcessos(LVCadastros,TrVMenus.Items.Item[0].Text);
         AtualizaListaAcessos(LVFinanceiro,TrVMenus.Items.Item[1].Text);
         AtualizaListaAcessos(LVCompras,TrVMenus.Items.Item[2].Text);
         AtualizaListaAcessos(LVTelemark,TrVMenus.Items.Item[3].Text);
         AtualizaListaAcessos(LVFaturamento,TrVMenus.Items.Item[4].Text);
         AtualizaListaAcessos(LVServico,TrVMenus.Items.Item[5].Text);
         AtualizaListaAcessos(LVInformacaoGer,TrVMenus.Items.Item[6].Text);
         AtualizaListaAcessos(LvAdministrador,TrVMenus.Items.Item[7].Text);
         AtualizaListaAcessos(LVRelatorios,TrVMenus.Items.Item[8].Text);
         AtualizaListaAcessos(LVUtil,TrVMenus.Items.Item[9].Text);
         AtualizaListaAcessos(LVAjuda,TrVMenus.Items.Item[11].Text);
        {foco no cgc}
         if PageControl1.ActivePage = TabUsuario then
            DbeUsuario.SetFocus;
         if PageControl1.ActivePage = TabParametro then
            DBEdit1.SetFocus;
         screen.Cursor := crDefault;
      end;
end;

procedure TFrmCadastroUsuario.BitPesquisaClick(Sender: tObject);
begin
   PageControl1.ActivePage := TabSheet1;
end;

procedure TFrmCadastroUsuario.BitSairClick(Sender: tObject);
begin
   close;
end;

procedure TFrmCadastroUsuario.DBESenhaKeyPress(Sender: tObject;
  var Key: Char);
begin
   if DadosBase0.DsUsuario.AutoEdit then
      begin
         if LabConfirma.Visible = false then
            LabConfirma.Visible     := True;
         if EdConfirmaSenha.Visible = false then
            EdConfirmaSenha.Visible := True;
      end;
end;


procedure TFrmCadastroUsuario.VerificaAtualizaCredito;
begin
   if DadosBase0.CdSUsuario.State in [dsInsert,dsEdit] then
      begin
         case CbTipoUsuario.ItemIndex of
           0: DadosBase0.CdSUsuarioUSU_TIPO_USUARIO.AsString := 'A';
           1: DadosBase0.CdSUsuarioUSU_TIPO_USUARIO.AsString := 'G';
           2: DadosBase0.CdSUsuarioUSU_TIPO_USUARIO.AsString := 'U';
         end;
        {credito}
         DadosBase0.CdSUsuario.FieldByName('USU_LIBERA_CREDITO').AsString       := IIF(ChkCredito.State   = cbChecked ,'S','N');
         DadosBase0.CdSUsuario.FieldByName('USU_LIBERA_PRECO').AsString         := IIF(ChkPrecos.State    = cbChecked ,'S','N');
         DadosBase0.CdSUsuario.FieldByName('USU_LIBERA_DESCONTO').AsString      := IIF(ChkDescontos.State = cbChecked ,'S','N');
        {estatistica}
         DadosBase0.CdSUsuario.FieldByName('USU_ESTATISTICA').AsString          := wESTATISTICA;
      end
   else
     if DadosBase0.CdSUsuario.State in [dsBrowse] then
        begin
           if DadosBase0.CdSUsuarioUSU_TIPO_USUARIO.AsString = 'A' then
              CbTipoUsuario.ItemIndex := 0
           else
           if DadosBase0.CdSUsuarioUSU_TIPO_USUARIO.AsString = 'G' then
              CbTipoUsuario.ItemIndex := 1
           else
           if DadosBase0.CdSUsuarioUSU_TIPO_USUARIO.AsString = 'U' then
              CbTipoUsuario.ItemIndex := 2;
          {credito}
           ChkCredito.State   := IIF(DadosBase0.CdSUsuario.FieldByName('USU_LIBERA_CREDITO').AsString = 'S',cbChecked,cbUnchecked);
           ChkPrecos.State    := IIF(DadosBase0.CdSUsuario.FieldByName('USU_LIBERA_PRECO').AsString = 'S',cbChecked,cbUnchecked);
           ChkDescontos.State := IIF(DadosBase0.CdSUsuario.FieldByName('USU_LIBERA_DESCONTO').AsString = 'S',cbChecked,cbUnchecked);
          {estatistica}
           wESTATISTICA := DadosBase0.CdSUsuario.FieldByName('USU_ESTATISTICA').AsString;
           if DadosBase0.CdSUsuario.FieldByName('USU_ESTATISTICA').AsString = 'S'then
              LblEstatisitica.Visible := True
           else
              LblEstatisitica.Visible := False;
        end;
end;

procedure TFrmCadastroUsuario.DBNavegaClick(Sender: tObject;
  Button: TNavigateBtn);
begin
   VerificaEdicao;
   VerificaSituacaoMenuPrincipal;
  {}
   AtualizaListaAcessos(LVCadastros,TrVMenus.Items.Item[0].Text);
   AtualizaListaAcessos(LVFinanceiro,TrVMenus.Items.Item[1].Text);
   AtualizaListaAcessos(LVCompras,TrVMenus.Items.Item[2].Text);
   AtualizaListaAcessos(LVTelemark,TrVMenus.Items.Item[3].Text);
   AtualizaListaAcessos(LVFaturamento,TrVMenus.Items.Item[4].Text);
   AtualizaListaAcessos(LvServico,TrVMenus.Items.Item[5].Text);
   AtualizaListaAcessos(LVInformacaoGer,TrVMenus.Items.Item[6].Text);
   AtualizaListaAcessos(LVAdministrador,TrVMenus.Items.Item[7].Text);
   AtualizaListaAcessos(LVRelatorios,TrVMenus.Items.Item[8].Text);
   AtualizaListaAcessos(LVUtil,TrVMenus.Items.Item[9].Text);
   AtualizaListaAcessos(LVAjuda,TrVMenus.Items.Item[11].Text);
  {}
   VerificaAtualizaCredito;
   AtribuiParametroUsuario(DBECodigo.Field.AsString);
end;

procedure TFrmCadastroUsuario.CbTipoUsuarioExit(Sender: tObject);
begin
   if CbTipoUsuario.ItemIndex = -1 then
      begin
         //beep;
         uteis.aviso('Informe o nível do usuário para acesso ...');
         CbTipoUsuario.SetFocus;
      end;
end;

procedure TFrmCadastroUsuario.EdConfirmaSenhaExit(Sender: tObject);
begin
   if DBESenha.Field.Value <> EdConfirmaSenha.Text then
      begin
         //beep;
         uteis.aviso('A senha não foi confirmada corretamente. Certique-se de que a senha coincide'+#13+
               '                    exatamente com senha de confirmação.                    ');
         DBESenha.SetFocus;
         DBESenha.SelectAll;      
      end;
end;

procedure TFrmCadastroUsuario.ChekLiberacaoClick(Sender: tObject);
begin
   if DadosBase0.CdSUsuario.State in [dsBrowse] then
      DadosBase0.CdSUsuario.Edit;
end;

procedure TFrmCadastroUsuario.RadCodigoClick(Sender: tObject);
begin
    EdPesquisa.TExt      := '0000';
    EdPesquisa.Width     := 35;
    EdPesquisa.MaxLength := 4;
    GbConsulta.Caption   := 'Informe o Código do usuário';
    EdPesquisa.SetFocus;
end;

procedure TFrmCadastroUsuario.RadnomeClick(Sender: tObject);
begin
    EdPesquisa.TExt      := '';
    EdPesquisa.Width     := 280;
    EdPesquisa.MaxLength := 0;
    GbConsulta.Caption   := 'Informe o nome do usuário';
    EdPesquisa.SetFocus;
end;

procedure TFrmCadastroUsuario.Pesquisa;
begin
   try
      if RadCodigo.checked  then
         begin
            DadosBase0.CdSUsuario.Close;
            DadosBase0.CdSUsuario.CommandText := 'select * from USUARIO where USU_CODIGO ='+EdPesquisa.Text;
            DadosBase0.CdSUsuario.open;
            if DadosBase0.CdSUsuario.IsEmpty then
               begin
                  //beep;
                  uteis.aviso('Usuário não cadastrado com esse código ...');
                  DadosBase0.CdSUsuario.Close;
                  DadosBase0.CdSUsuario.CommandText := 'select * from USUARIO';
                  DadosBase0.CdSUsuario.Open;
                  EdPesquisa.SetFocus;
                  EdPesquisa.SelectAll;
               end
            else
               begin
                  DBGridUsuario.SetFocus;
               end;
         end
      else
      if Radnome.Checked  = True then
         begin
            DadosBase0.CdSUsuario.Close;
            DadosBase0.CdSUsuario.CommandText := 'select * from USUARIO where USU_NOME like '''+EdPesquisa.Text+'%''';
            DadosBase0.CdSUsuario.open;
            if DadosBase0.CdSUsuario.IsEmpty then
               begin
                  //beep;
                  uteis.aviso('Usuário não cadastrado com esse nome ...');
                  DadosBase0.CdSUsuario.Close;
                  DadosBase0.CdSUsuario.CommandText := 'select * from USUARIO';
                  DadosBase0.CdSUsuario.Open;
                  EdPesquisa.SetFocus;
                  EdPesquisa.SelectAll;
               end
            else
               begin
                  DBGridUsuario.SetFocus;
               end;
         end;
   except on E:EdatabaseError do
      begin
         uteis.erro  (PChar('Impossível consulta o arquivo:'+#13+ E.Message));
      end;
   end;
end;

procedure TFrmCadastroUsuario.TabSheet1Show(Sender: tObject);
begin
   EdPesquisa.SetFocus;
   EdPesquisa.SelectAll;
end;

procedure TFrmCadastroUsuario.TabUsuarioShow(Sender: tObject);
begin
   DbeUsuario.SetFocus;
   DbeUsuario.SelectAll;
   VerificaEdicao;
   If DadosBase0.CdSUsuario.Active = false then
      begin
         DadosBase0.CdSUsuario.Open;
         DadosBase0.CdSAcessosUsuario.Open;
      end;
  {}
   VerificaSituacaoMenuPrincipal;
  {}
   AtualizaListaAcessos(LVCadastros,TrVMenus.Items.Item[0].Text);
   AtualizaListaAcessos(LVFinanceiro,TrVMenus.Items.Item[1].Text);
   AtualizaListaAcessos(LVCompras,TrVMenus.Items.Item[2].Text);
   AtualizaListaAcessos(LVTelemark,TrVMenus.Items.Item[3].Text);
   AtualizaListaAcessos(LVFaturamento,TrVMenus.Items.Item[4].Text);
   AtualizaListaAcessos(LvServico,TrVMenus.Items.Item[5].Text);
   AtualizaListaAcessos(LVInformacaoGer,TrVMenus.Items.Item[6].Text);
   AtualizaListaAcessos(LVAdministrador,TrVMenus.Items.Item[7].Text);
   AtualizaListaAcessos(LVRelatorios,TrVMenus.Items.Item[8].Text);
   AtualizaListaAcessos(LVUtil,TrVMenus.Items.Item[9].Text);
   AtualizaListaAcessos(LVAjuda,TrVMenus.Items.Item[11].Text);
  {}
   VerificaAtualizaCredito;
   AtribuiParametroUsuario(DBECodigo.Field.AsString);
end;

procedure TFrmCadastroUsuario.CbTipoUsuarioClick(Sender: tObject);
begin
   if DadosBase0.CdSUsuario.State in [dsBrowse] then
      DadosBase0.CdSUsuario.Edit;
end;

procedure TFrmCadastroUsuario.BitPesquisarClick(Sender: tObject);
begin
   if RadCodigo.Checked then
      begin
         if Trim(EdPesquisa.Text) <> '' then
            begin
               Pesquisa;
            end
         else
            begin
               //beep;
               uteis.aviso('informe o código do úsuario ....');
               EdPesquisa.SelectAll;
               EdPesquisa.SetFocus;
            end;
      end
   else
   if Radnome.Checked then
      begin
         Pesquisa;
      end;
end;

procedure TFrmCadastroUsuario.EdPesquisaKeyPress(Sender: tObject;
  var Key: Char);
begin
   if RadCodigo.checked  then
      begin
         if Key = #13 then
            begin
               BitPesquisar.SetFocus;
               Key := #0;
            end;
         if not (key in ['0'..'9',#8]) then
            begin
               //beep;
                Key := #0;
            end;
      end
   else
      if Radnome.checked  then
         begin
            if Key = #13 then
               begin
                  BitPesquisar.SetFocus;
                  Key := #0;
               end;
        end;
end;

procedure TFrmCadastroUsuario.EdPesquisaExit(Sender: tObject);
begin
   if RadCodigo.checked  then
      begin
         if Trim(EdPesquisa.Text) <> '' then
            begin
               EdPesquisa.Text := FormatFloat('0000',StrToInt(EdPesquisa.text));
            end;
      end;
end;

procedure TFrmCadastroUsuario.DBGridUsuarioDblClick(Sender: tObject);
begin
   PageControl1.ActivePage := TabUsuario;
end;

procedure TFrmCadastroUsuario.DBGridUsuarioKeyPress(Sender: tObject;
  var Key: Char);
begin
   if key = #13 then
      begin
         PageControl1.ActivePage := TabUsuario;
         key := #0;
      end;
end;

procedure TFrmCadastroUsuario.FormKeyPress(Sender: tObject; var Key: Char);
begin
   if key = #27 then
      begin
         close;
         key := #0;
      end;
end;

procedure TFrmCadastroUsuario.FormKeyDown(Sender: tObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = VK_F5 then
       begin
          if wESTATISTICA = 'N' then
             begin
                wESTATISTICA := 'S';
                LblEstatisitica.Visible := True;
             end
          else
             if wESTATISTICA = 'S' then
                begin
                   wESTATISTICA := 'N';
                   LblEstatisitica.Visible := False;
                end;
          key := 0;
       end;
   if key = VK_F8 then
      begin
          if wESTATISTICA = 'N' then
             begin
                wESTATISTICA := 'S';
                LblEstatisitica.Visible := True;
             end
          else
             if wESTATISTICA = 'S' then
                begin
                   wESTATISTICA := 'N';
                   LblEstatisitica.Visible := False;
                end;
          key := 0;
      end;
   if key = VK_UP then
      begin
         {seta para cima}
      end;
   if key = VK_Down then
      begin
         {seta para baixo}
      end;
   if key = 33 then
      begin
         {Page Up}
         if DadosBase0.CdSUsuario.Active then
            begin
                if (DadosBase0.CdSUsuario.State <> dsEdit) and (DadosBase0.CdSUsuario.State <> dsInsert) then
                  begin
                     VerificaEdicao;
                     DadosBase0.CdSUsuario.Prior;
                     VerificaSituacaoMenuPrincipal;
                    {}
                     AtualizaListaAcessos(LVCadastros,TrVMenus.Items.Item[0].Text);
                     AtualizaListaAcessos(LVFinanceiro,TrVMenus.Items.Item[1].Text);
                     AtualizaListaAcessos(LVCompras,TrVMenus.Items.Item[2].Text);
                     AtualizaListaAcessos(LVTelemark,TrVMenus.Items.Item[3].Text);
                     AtualizaListaAcessos(LVFaturamento,TrVMenus.Items.Item[4].Text);
                     AtualizaListaAcessos(LvServico,TrVMenus.Items.Item[5].Text);
                     AtualizaListaAcessos(LVInformacaoGer,TrVMenus.Items.Item[6].Text);
                     AtualizaListaAcessos(LVAdministrador,TrVMenus.Items.Item[7].Text);
                     AtualizaListaAcessos(LVRelatorios,TrVMenus.Items.Item[8].Text);
                     AtualizaListaAcessos(LVUtil,TrVMenus.Items.Item[9].Text);
                     AtualizaListaAcessos(LVAjuda,TrVMenus.Items.Item[11].Text);
                    {} 
                     VerificaAtualizaCredito;
                     AtribuiParametroUsuario(DBECodigo.Field.AsString);
                  end;
            end;
         Key := 0;
      end;
   if key = 34 then
      begin
         {Page Down}
         if DadosBase0.CdSUsuario.Active then
            begin
                if (DadosBase0.CdSUsuario.State <> dsEdit) and (DadosBase0.CdSUsuario.State <> dsInsert) then
                  begin
                     VerificaEdicao;
                     DadosBase0.CdSUsuario.Next;
                     VerificaSituacaoMenuPrincipal;
                    {}
                     AtualizaListaAcessos(LVCadastros,TrVMenus.Items.Item[0].Text);
                     AtualizaListaAcessos(LVFinanceiro,TrVMenus.Items.Item[1].Text);
                     AtualizaListaAcessos(LVCompras,TrVMenus.Items.Item[2].Text);
                     AtualizaListaAcessos(LVTelemark,TrVMenus.Items.Item[3].Text);
                     AtualizaListaAcessos(LVFaturamento,TrVMenus.Items.Item[4].Text);
                     AtualizaListaAcessos(LvServico,TrVMenus.Items.Item[5].Text);
                     AtualizaListaAcessos(LVInformacaoGer,TrVMenus.Items.Item[6].Text);
                     AtualizaListaAcessos(LVAdministrador,TrVMenus.Items.Item[7].Text);
                     AtualizaListaAcessos(LVRelatorios,TrVMenus.Items.Item[8].Text);
                     AtualizaListaAcessos(LVUtil,TrVMenus.Items.Item[9].Text);
                     AtualizaListaAcessos(LVAjuda,TrVMenus.Items.Item[11].Text);
                    {}
                     VerificaAtualizaCredito;
                     AtribuiParametroUsuario(DBECodigo.Field.AsString);
                  end;
            end;
          Key := 0;
      end;
end;

procedure TFrmCadastroUsuario.FormCreate(Sender: tObject);
begin
  {}
   wESTATISTICA := 'N';
   //MainMenu
   ListaMenu[0]  := LVCadastros;
   ListaMenu[1]  := LVFinanceiro;
   ListaMenu[2]  := LVCompras;
   ListaMenu[3]  := LVTelemark;
   ListaMenu[4]  := LVFaturamento;
   ListaMenu[5]  := LvServico;
   ListaMenu[6]  := LVInformacaoGer;
   ListaMenu[7]  := LVAdministrador;
   ListaMenu[8]  := LVRelatorios;
   ListaMenu[9]  := LVUtil;
   ListaMenu[10] := LVSaida;
   ListaMenu[11] := LVAjuda;
   //
   PageControl1.ActivePage := TabSheet1;
end;

procedure TFrmCadastroUsuario.AtribuiMenuPrincial;
 var
   I:Integer;
begin
   with TrVMenus.Items do
      begin
         Clear;
         for I := 0 to FrmMenu.MainMenu.Items.Count-1 do
            if FrmMenu.MainMenu.Items[I].Caption <> '-' then
               begin
                  AddChild(NodePrincipal,ExtrairCarecter(FrmMenu.MainMenu.Items[I].Caption));
                 {localiza atribui}
                  if DadosBase0.CdSAcessosUsuario.Locate('USA_MENU',TrVMenus.Items.Item[I].Text,[]) then
                     begin
                        TrVMenus.Items.Item[I].ImageIndex    := DadosBase0.CdSAcessosUsuario.FieldByName('USA_ACESSO').AsInteger;
                        TrVMenus.Items.Item[I].SelectedIndex := DadosBase0.CdSAcessosUsuario.FieldByName('USA_ACESSO').AsInteger;
                     end
                  else
                     begin
                        TrVMenus.Items.Item[I].ImageIndex       := 0;
                        TrVMenus.Items.Item[I].SelectedIndex    := 0;
                     end;
               end;
      end;

end;

procedure TFrmCadastroUsuario.SpBSemAcessClick(Sender: tObject);
 Var
 X:Integer;
begin
   TrVMenus.Items.Item[TrVMenus.Selected.Index].ImageIndex    := 0;
   TrVMenus.Items.Item[TrVMenus.Selected.Index].SelectedIndex := 0;
   BoxOperacao.Enabled   := False;
   BoxOperacao.Color     := clActiveBorder;
   ChkAlteracao.Checked  := False;
   ChkInclusao.Checked   := False;
   ChkExclusao.Checked   := False;
  {}
   try
     for X:= 0 to TrVMenus.Items.Count - 1 do
       begin
          if TrVMenus.Items.Item[X].Selected = True then
             begin
                AtribuiTipodeAcessoGeral(ListaMenu[X],'Sem Acesso',0);
                GravaSituacaoOperacoesGeral(ListaMenu[X],TrVMenus.Selected.Text);
                exit;
             end;
       end;
   finally
      TrVMenus.Refresh;
   end;

end;

procedure TFrmCadastroUsuario.TrVMenusChange(Sender: tObject;
  Node: TTreeNode);
  Var
  X:Integer;
begin
  //
   LVCadastros.Visible     := False;
   LVFinanceiro.Visible    := False;
   LVCompras.Visible       := False;
   LVTelemark.Visible      := False;
   LVFaturamento.Visible   := False;
   LvServico.Visible       := False;
   LVInformacaoGer.Visible := False;
   LVAdministrador.Visible := False;
   LVRelatorios.Visible    := False;
   LVUtil.Visible          := False;
   LVSaida.Visible         := False;
   LVAjuda.Visible         := False;
  {}
  {mostra os acessos}
   for X:= 0 to TrVMenus.Items.Count - 1 do
     begin
        if TrVMenus.Items.Item[X].Selected = True then
           begin
              MostraMenus(ListaMenu[X]);
              //if TrVMenus.Items.Item[X].Text = 'Cadastros' then
              //   VerificaSituacaoOperacoes(LVCadastros,0,TrVMenus.Items.Item[0].Text);
              BoxAcesso.Caption := 'Acessos : '+TrVMenus.Items.Item[X].Text;
              exit;
           end;
     end;
end;

procedure TFrmCadastroUsuario.SpBAcessTotClick(Sender: tObject);
 Var
 X:Integer;
begin
   TrVMenus.Items.Item[TrVMenus.Selected.Index].ImageIndex    := 1;
   TrVMenus.Items.Item[TrVMenus.Selected.Index].SelectedIndex := 1;
   BoxOperacao.Enabled   := False;
   BoxOperacao.Color     := clActiveBorder;
   ChkAlteracao.Checked  := True;
   ChkInclusao.Checked   := True;
   ChkExclusao.Checked   := True;
  {}
   try
     for X:= 0 to TrVMenus.Items.Count - 1 do
       begin
          if TrVMenus.Items.Item[X].Selected = True then
             begin
                AtribuiTipodeAcessoGeral(ListaMenu[X],'Acesso Total',1);
                GravaSituacaoOperacoesGeral(ListaMenu[X],TrVMenus.Selected.Text);
                exit;
             end;
       end;
   finally
      TrVMenus.Refresh;
   end;
end;

procedure TFrmCadastroUsuario.SemAcesso1Click(Sender: tObject);
begin
   if (LVCadastros.Visible) and (LVCadastros.SelCount > 0) then
       begin
          AtribuiTipodeAcesso(LVCadastros,'Sem Acesso',0);
          BoxOperacao.Enabled   := False;
          BoxOperacao.Color     := clActiveBorder;
          ChkAlteracao.Checked  := False;
          ChkInclusao.Checked   := False;
          ChkExclusao.Checked   := False;
          GravaSituacaoOperacoes(LVCadastros,LVCadastros.Selected.Index,TrVMenus.Items.Item[0].Text);
       end
   else
   if (LVFinanceiro.Visible) and (LVFinanceiro.SelCount > 0) then
      begin
          AtribuiTipodeAcesso(LVFinanceiro,'Sem Acesso',0);
          BoxOperacao.Enabled   := False;
          BoxOperacao.Color     := clActiveBorder;
          ChkAlteracao.Checked  := False;
          ChkInclusao.Checked   := False;
          ChkExclusao.Checked   := False;
          GravaSituacaoOperacoes(LVFinanceiro,LVFinanceiro.Selected.Index,TrVMenus.Items.Item[1].Text);
      end
   else
   if (LVCompras.Visible) and (LVCompras.SelCount > 0) then
      begin
         AtribuiTipodeAcesso(LVCompras,'Sem Acesso',0);
         BoxOperacao.Enabled   := False;
         BoxOperacao.Color     := clActiveBorder;
         ChkAlteracao.Checked  := False;
         ChkInclusao.Checked   := False;
         ChkExclusao.Checked   := False;
         GravaSituacaoOperacoes(LVCompras,LVCompras.Selected.Index,TrVMenus.Items.Item[2].Text);
      end
   else
   if (LVTelemark.Visible) and (LVTelemark.SelCount > 0) then
       begin
          AtribuiTipodeAcesso(LVTelemark,'Sem Acesso',0);
          BoxOperacao.Enabled   := False;
          BoxOperacao.Color     := clActiveBorder;
          ChkAlteracao.Checked  := False;
          ChkInclusao.Checked   := False;
          ChkExclusao.Checked   := False;
          GravaSituacaoOperacoes(LVTelemark,LVTelemark.Selected.Index,TrVMenus.Items.Item[3].Text);
       end
    else
    if (LVFaturamento.Visible) and (LVFaturamento.SelCount > 0) then
       begin
          AtribuiTipodeAcesso(LVFaturamento,'Sem Acesso',0);
          BoxOperacao.Enabled   := False;
          BoxOperacao.Color     := clActiveBorder;
          ChkAlteracao.Checked  := False;
          ChkInclusao.Checked   := False;
          ChkExclusao.Checked   := False;
          GravaSituacaoOperacoes(LVFaturamento,LVFaturamento.Selected.Index,TrVMenus.Items.Item[4].Text);
       end
    else
    if (LvServico.Visible) and (LvServico.SelCount > 0) then
       begin
          AtribuiTipodeAcesso(LVServico,'Sem Acesso',0);
          BoxOperacao.Enabled   := False;
          BoxOperacao.Color     := clActiveBorder;
          ChkAlteracao.Checked  := False;
          ChkInclusao.Checked   := False;
          ChkExclusao.Checked   := False;
          GravaSituacaoOperacoes(LVServico,LVServico.Selected.Index,TrVMenus.Items.Item[5].Text);
       end
   else
   if (LVInformacaoGer.Visible) and (LVInformacaoGer.SelCount > 0) then
       begin
          AtribuiTipodeAcesso(LVInformacaoGer,'Sem Acesso',0);
          BoxOperacao.Enabled   := False;
          BoxOperacao.Color     := clActiveBorder;
          ChkAlteracao.Checked  := False;
          ChkInclusao.Checked   := False;
          ChkExclusao.Checked   := False;
          GravaSituacaoOperacoes(LVInformacaoGer,LVInformacaoGer.Selected.Index,TrVMenus.Items.Item[6].Text);
       end
   else
   if (LVAdministrador.Visible) and (LVAdministrador.SelCount > 0) then
      begin
          AtribuiTipodeAcesso(LVAdministrador,'Sem Acesso',0);
          BoxOperacao.Enabled   := False;
          BoxOperacao.Color     := clActiveBorder;
          ChkAlteracao.Checked  := False;
          ChkInclusao.Checked   := False;
          ChkExclusao.Checked   := False;
          GravaSituacaoOperacoes(LVAdministrador,LVAdministrador.Selected.Index,TrVMenus.Items.Item[7].Text);
      end
   else
   if (LVRelatorios.Visible) and (LVRelatorios.SelCount > 0) then
      begin
         AtribuiTipodeAcesso(LVRelatorios,'Sem Acesso',0);
         BoxOperacao.Enabled   := False;
         BoxOperacao.Color     := clActiveBorder;
         ChkAlteracao.Checked  := False;
         ChkInclusao.Checked   := False;
         ChkExclusao.Checked   := False;
         GravaSituacaoOperacoes(LVRelatorios,LVRelatorios.Selected.Index,TrVMenus.Items.Item[8].Text);
      end
   else
   if (LVUtil.Visible) and (LVUtil.SelCount > 0) then
      begin
         AtribuiTipodeAcesso(LVUtil,'Sem Acesso',0);
         BoxOperacao.Enabled   := False;
         BoxOperacao.Color     := clActiveBorder;
         ChkAlteracao.Checked  := False;
         ChkInclusao.Checked   := False;
         ChkExclusao.Checked   := False;
         GravaSituacaoOperacoes(LVUtil,LVUtil.Selected.Index,TrVMenus.Items.Item[9].Text);
      end
   else
   if (LVAjuda.Visible) and (LVAjuda.SelCount > 0) then
      begin
         AtribuiTipodeAcesso(LVAjuda,'Sem Acesso',0);
         BoxOperacao.Enabled   := False;
         BoxOperacao.Color     := clActiveBorder;
         ChkAlteracao.Checked  := False;
         ChkInclusao.Checked   := False;
         ChkExclusao.Checked   := False;
         GravaSituacaoOperacoes(LVAjuda,LVAjuda.Selected.Index,TrVMenus.Items.Item[11].Text);
      end;

end;

procedure TFrmCadastroUsuario.AcessoTotal1Click(Sender: tObject);
begin
   if (LVCadastros.Visible) and (LVCadastros.SelCount > 0) then
       begin
          AtribuiTipodeAcesso(LVCadastros,'Acesso Total',1);
          BoxOperacao.Enabled   := False;
          BoxOperacao.Color     := clActiveBorder;;
          ChkAlteracao.Checked  := True;
          ChkInclusao.Checked   := True;
          ChkExclusao.Checked   := True;
          GravaSituacaoOperacoes(LVCadastros,LVCadastros.Selected.Index,TrVMenus.Items.Item[0].Text);
       end
   else
   if (LVFinanceiro.Visible) and (LVFinanceiro.SelCount > 0) then
      begin
          AtribuiTipodeAcesso(LVFinanceiro,'Acesso Total',1);
          BoxOperacao.Enabled   := False;
          BoxOperacao.Color     := clActiveBorder;;
          ChkAlteracao.Checked  := True;
          ChkInclusao.Checked   := True;
          ChkExclusao.Checked   := True;
          GravaSituacaoOperacoes(LVFinanceiro,LVFinanceiro.Selected.Index,TrVMenus.Items.Item[1].Text);
      end
   else
   if (LVCompras.Visible) and (LVCompras.SelCount > 0) then
      begin
         AtribuiTipodeAcesso(LVCompras,'Acesso Total',1);
          BoxOperacao.Enabled   := False;
          BoxOperacao.Color     := clActiveBorder;;
          ChkAlteracao.Checked  := True;
          ChkInclusao.Checked   := True;
          ChkExclusao.Checked   := True;
         GravaSituacaoOperacoes(LVCompras,LVCompras.Selected.Index,TrVMenus.Items.Item[2].Text);
      end
   else
   if (LVTelemark.Visible) and (LVTelemark.SelCount > 0) then
       begin
          AtribuiTipodeAcesso(LVTelemark,'Acesso Total',1);
          BoxOperacao.Enabled   := False;
          BoxOperacao.Color     := clActiveBorder;;
          ChkAlteracao.Checked  := True;
          ChkInclusao.Checked   := True;
          ChkExclusao.Checked   := True;
          GravaSituacaoOperacoes(LVTelemark,LVTelemark.Selected.Index,TrVMenus.Items.Item[3].Text);
       end
    else
    if (LVFaturamento.Visible) and (LVFaturamento.SelCount > 0) then
       begin
          AtribuiTipodeAcesso(LVFaturamento,'Acesso Total',1);
          BoxOperacao.Enabled   := False;
          BoxOperacao.Color     := clActiveBorder;;
          ChkAlteracao.Checked  := True;
          ChkInclusao.Checked   := True;
          ChkExclusao.Checked   := True;
          GravaSituacaoOperacoes(LVFaturamento,LVFaturamento.Selected.Index,TrVMenus.Items.Item[4].Text);
       end
    else
    if (LvServico.Visible) and (LvServico.SelCount > 0) then
       begin
          AtribuiTipodeAcesso(LVServico,'Acesso Total',1);
          BoxOperacao.Enabled   := False;
          BoxOperacao.Color     := clActiveBorder;;
          ChkAlteracao.Checked  := True;
          ChkInclusao.Checked   := True;
          ChkExclusao.Checked   := True;
          GravaSituacaoOperacoes(LVServico,LVServico.Selected.Index,TrVMenus.Items.Item[5].Text);
       end
   else
   if (LVInformacaoGer.Visible) and (LVInformacaoGer.SelCount > 0) then
       begin
          AtribuiTipodeAcesso(LVInformacaoGer,'Acesso Total',1);
          BoxOperacao.Enabled   := False;
          BoxOperacao.Color     := clActiveBorder;;
          ChkAlteracao.Checked  := True;
          ChkInclusao.Checked   := True;
          ChkExclusao.Checked   := True;
          GravaSituacaoOperacoes(LVInformacaoGer,LVInformacaoGer.Selected.Index,TrVMenus.Items.Item[6].Text);
       end
   else
   if (LVAdministrador.Visible) and (LVAdministrador.SelCount > 0) then
      begin
          AtribuiTipodeAcesso(LVAdministrador,'Acesso Total',1);
          BoxOperacao.Enabled   := False;
          BoxOperacao.Color     := clActiveBorder;;
          ChkAlteracao.Checked  := True;
          ChkInclusao.Checked   := True;
          ChkExclusao.Checked   := True;
          GravaSituacaoOperacoes(LVAdministrador,LVAdministrador.Selected.Index,TrVMenus.Items.Item[7].Text);
      end
   else
   if (LVRelatorios.Visible) and (LVRelatorios.SelCount > 0) then
      begin
         AtribuiTipodeAcesso(LVRelatorios,'Acesso Total',1);
          BoxOperacao.Enabled   := False;
          BoxOperacao.Color     := clActiveBorder;;
          ChkAlteracao.Checked  := True;
          ChkInclusao.Checked   := True;
          ChkExclusao.Checked   := True;
         GravaSituacaoOperacoes(LVRelatorios,LVRelatorios.Selected.Index,TrVMenus.Items.Item[8].Text);
      end
   else
   if (LVUtil.Visible) and (LVUtil.SelCount > 0) then
      begin
         AtribuiTipodeAcesso(LVUtil,'Acesso Total',1);
          BoxOperacao.Enabled   := False;
          BoxOperacao.Color     := clActiveBorder;;
          ChkAlteracao.Checked  := True;
          ChkInclusao.Checked   := True;
          ChkExclusao.Checked   := True;
         GravaSituacaoOperacoes(LVUtil,LVUtil.Selected.Index,TrVMenus.Items.Item[9].Text);
      end
   else
   if (LVAjuda.Visible) and (LVAjuda.SelCount > 0) then
      begin
         AtribuiTipodeAcesso(LVAjuda,'Acesso Total',1);
          BoxOperacao.Enabled   := False;
          BoxOperacao.Color     := clActiveBorder;;
          ChkAlteracao.Checked  := True;
          ChkInclusao.Checked   := True;
          ChkExclusao.Checked   := True;
         GravaSituacaoOperacoes(LVAjuda,LVAjuda.Selected.Index,TrVMenus.Items.Item[11].Text);
      end;

end;

procedure TFrmCadastroUsuario.AcessoParcial2Click(Sender: tObject);
begin
   if (LVCadastros.Visible) and (LVCadastros.SelCount > 0) then
       begin
          AtribuiTipodeAcesso(LVCadastros,'Acesso Parcial',2);
          BoxOperacao.Enabled   := True;
          BoxOperacao.Color     := clSilver;;
          ChkAlteracao.Checked  := False;
          ChkInclusao.Checked   := False;
          ChkExclusao.Checked   := False;
          GravaSituacaoOperacoes(LVCadastros,LVCadastros.Selected.Index,TrVMenus.Items.Item[0].Text);
       end
   else
   if (LVFinanceiro.Visible) and (LVFinanceiro.SelCount > 0) then
      begin
          AtribuiTipodeAcesso(LVFinanceiro,'Acesso Parcial',2);
          BoxOperacao.Enabled   := True;
          BoxOperacao.Color     := clSilver;
          ChkAlteracao.Checked  := False;
          ChkInclusao.Checked   := False;
          ChkExclusao.Checked   := False;
          GravaSituacaoOperacoes(LVFinanceiro,LVFinanceiro.Selected.Index,TrVMenus.Items.Item[1].Text);
      end
   else
   if (LVCompras.Visible) and (LVCompras.SelCount > 0) then
      begin
         AtribuiTipodeAcesso(LVCompras,'Acesso Parcial',2);
         BoxOperacao.Enabled   := True;
         BoxOperacao.Color     := clSilver;;
         ChkAlteracao.Checked  := False;
         ChkInclusao.Checked   := False;
         ChkExclusao.Checked   := False;
         GravaSituacaoOperacoes(LVCompras,LVCompras.Selected.Index,TrVMenus.Items.Item[2].Text);
      end
   else
   if (LVTelemark.Visible) and (LVTelemark.SelCount > 0) then
       begin
          AtribuiTipodeAcesso(LVTelemark,'Acesso Parcial',2);
          BoxOperacao.Enabled   := True;
          BoxOperacao.Color     := clSilver;;
          ChkAlteracao.Checked  := False;
          ChkInclusao.Checked   := False;
          ChkExclusao.Checked   := False;
          GravaSituacaoOperacoes(LVTelemark,LVTelemark.Selected.Index,TrVMenus.Items.Item[3].Text);
       end
    else
    if (LVFaturamento.Visible) and (LVFaturamento.SelCount > 0) then
       begin
          AtribuiTipodeAcesso(LVFaturamento,'Acesso Parcial',2);
          BoxOperacao.Enabled   := True;
          BoxOperacao.Color     := clSilver;
          ChkAlteracao.Checked  := False;
          ChkInclusao.Checked   := False;
          ChkExclusao.Checked   := False;
          GravaSituacaoOperacoes(LVFaturamento,LVFaturamento.Selected.Index,TrVMenus.Items.Item[4].Text);
       end
    else
    if (LvServico.Visible) and (LvServico.SelCount > 0) then
       begin
          AtribuiTipodeAcesso(LVServico,'Acesso Parcial',2);
          BoxOperacao.Enabled   := True;
          BoxOperacao.Color     := clSilver;;
          ChkAlteracao.Checked  := False;
          ChkInclusao.Checked   := False;
          ChkExclusao.Checked   := False;
          GravaSituacaoOperacoes(LVServico,LVServico.Selected.Index,TrVMenus.Items.Item[5].Text);
       end
   else
   if (LVInformacaoGer.Visible) and (LVInformacaoGer.SelCount > 0) then
       begin
          AtribuiTipodeAcesso(LVInformacaoGer,'Acesso Parcial',2);
          BoxOperacao.Enabled   := True;
          BoxOperacao.Color     := clSilver;
          ChkAlteracao.Checked  := False;
          ChkInclusao.Checked   := False;
          ChkExclusao.Checked   := False;
          GravaSituacaoOperacoes(LVInformacaoGer,LVInformacaoGer.Selected.Index,TrVMenus.Items.Item[6].Text);
       end
   else
   if (LVAdministrador.Visible) and (LVAdministrador.SelCount > 0) then
      begin
          AtribuiTipodeAcesso(LVAdministrador,'Acesso Parcial',2);
          BoxOperacao.Enabled   := True;
          BoxOperacao.Color     := clSilver;
          ChkAlteracao.Checked  := False;
          ChkInclusao.Checked   := False;
          ChkExclusao.Checked   := False;
          GravaSituacaoOperacoes(LVAdministrador,LVAdministrador.Selected.Index,TrVMenus.Items.Item[7].Text);
      end
   else
   if (LVRelatorios.Visible) and (LVRelatorios.SelCount > 0) then
      begin
         AtribuiTipodeAcesso(LVRelatorios,'Acesso Parcial',2);
         BoxOperacao.Enabled   := True;
         BoxOperacao.Color     := clSilver;
         ChkAlteracao.Checked  := False;
         ChkInclusao.Checked   := False;
         ChkExclusao.Checked   := False;
         GravaSituacaoOperacoes(LVRelatorios,LVRelatorios.Selected.Index,TrVMenus.Items.Item[8].Text);
      end
   else
   if (LVUtil.Visible) and (LVUtil.SelCount > 0) then
      begin
         AtribuiTipodeAcesso(LVUtil,'Acesso Parcial',2);
         BoxOperacao.Enabled   := True;
         BoxOperacao.Color     := clSilver;
         ChkAlteracao.Checked  := False;
         ChkInclusao.Checked   := False;
         ChkExclusao.Checked   := False;
         GravaSituacaoOperacoes(LVUtil,LVUtil.Selected.Index,TrVMenus.Items.Item[9].Text);
      end
   else
   if (LVAjuda.Visible) and (LVAjuda.SelCount > 0) then
      begin
         AtribuiTipodeAcesso(LVAjuda,'Acesso Parcial',2);
         BoxOperacao.Enabled   := True;
         BoxOperacao.Color     := clSilver;
         ChkAlteracao.Checked  := False;
         ChkInclusao.Checked   := False;
         ChkExclusao.Checked   := False;
         GravaSituacaoOperacoes(LVAjuda,LVAjuda.Selected.Index,TrVMenus.Items.Item[11].Text);
      end;
end;

procedure TFrmCadastroUsuario.SomenteLeitura1Click(Sender: tObject);
begin
   if (LVCadastros.Visible) and (LVCadastros.SelCount > 0) then
       begin
          AtribuiTipodeAcesso(LVCadastros,'Somente Leitura',3);
          BoxOperacao.Enabled   := False;
          BoxOperacao.Color     := clActiveBorder;
          ChkAlteracao.Checked  := False;
          ChkInclusao.Checked   := False;
          ChkExclusao.Checked   := False;
          GravaSituacaoOperacoes(LVCadastros,LVCadastros.Selected.Index,TrVMenus.Items.Item[0].Text);
       end
   else
   if (LVFinanceiro.Visible) and (LVFinanceiro.SelCount > 0) then
      begin
          AtribuiTipodeAcesso(LVFinanceiro,'Somente Leitura',3);
          BoxOperacao.Enabled   := False;
          BoxOperacao.Color     := clActiveBorder;
          ChkAlteracao.Checked  := False;
          ChkInclusao.Checked   := False;
          ChkExclusao.Checked   := False;
          GravaSituacaoOperacoes(LVFinanceiro,LVFinanceiro.Selected.Index,TrVMenus.Items.Item[1].Text);
      end
   else
   if (LVCompras.Visible) and (LVCompras.SelCount > 0) then
      begin
         AtribuiTipodeAcesso(LVCompras,'Somente Leitura',3);
         BoxOperacao.Enabled   := False;
         BoxOperacao.Color     := clActiveBorder;
         ChkAlteracao.Checked  := False;
         ChkInclusao.Checked   := False;
         ChkExclusao.Checked   := False;
         GravaSituacaoOperacoes(LVCompras,LVCompras.Selected.Index,TrVMenus.Items.Item[2].Text);
      end
   else
   if (LVTelemark.Visible) and (LVTelemark.SelCount > 0) then
       begin
          AtribuiTipodeAcesso(LVTelemark,'Somente Leitura',3);
          BoxOperacao.Enabled   := False;
          BoxOperacao.Color     := clActiveBorder;
          ChkAlteracao.Checked  := False;
          ChkInclusao.Checked   := False;
          ChkExclusao.Checked   := False;
          GravaSituacaoOperacoes(LVTelemark,LVTelemark.Selected.Index,TrVMenus.Items.Item[3].Text);
       end
    else
    if (LVFaturamento.Visible) and (LVFaturamento.SelCount > 0) then
       begin
          AtribuiTipodeAcesso(LVFaturamento,'Somente Leitura',3);
          BoxOperacao.Enabled   := False;
          BoxOperacao.Color     := clActiveBorder;
          ChkAlteracao.Checked  := False;
          ChkInclusao.Checked   := False;
          ChkExclusao.Checked   := False;
          GravaSituacaoOperacoes(LVFaturamento,LVFaturamento.Selected.Index,TrVMenus.Items.Item[4].Text);
       end
    else
    if (LvServico.Visible) and (LvServico.SelCount > 0) then
       begin
          AtribuiTipodeAcesso(LVServico,'Somente Leitura',3);
          BoxOperacao.Enabled   := False;
          BoxOperacao.Color     := clActiveBorder;
          ChkAlteracao.Checked  := False;
          ChkInclusao.Checked   := False;
          ChkExclusao.Checked   := False;
          GravaSituacaoOperacoes(LVServico,LVServico.Selected.Index,TrVMenus.Items.Item[5].Text);
       end
   else
   if (LVInformacaoGer.Visible) and (LVInformacaoGer.SelCount > 0) then
       begin
          AtribuiTipodeAcesso(LVInformacaoGer,'Somente Leitura',3);
          BoxOperacao.Enabled   := False;
          BoxOperacao.Color     := clActiveBorder;
          ChkAlteracao.Checked  := False;
          ChkInclusao.Checked   := False;
          ChkExclusao.Checked   := False;
          GravaSituacaoOperacoes(LVInformacaoGer,LVInformacaoGer.Selected.Index,TrVMenus.Items.Item[6].Text);
       end
   else
   if (LVAdministrador.Visible) and (LVAdministrador.SelCount > 0) then
      begin
          AtribuiTipodeAcesso(LVAdministrador,'Somente Leitura',3);
          BoxOperacao.Enabled   := False;
          BoxOperacao.Color     := clActiveBorder;
          ChkAlteracao.Checked  := False;
          ChkInclusao.Checked   := False;
          ChkExclusao.Checked   := False;
          GravaSituacaoOperacoes(LVAdministrador,LVAdministrador.Selected.Index,TrVMenus.Items.Item[7].Text);
      end
   else
   if (LVRelatorios.Visible) and (LVRelatorios.SelCount > 0) then
      begin
         AtribuiTipodeAcesso(LVRelatorios,'Somente Leitura',3);
         BoxOperacao.Enabled   := False;
         BoxOperacao.Color     := clActiveBorder;
         ChkAlteracao.Checked  := False;
         ChkInclusao.Checked   := False;
         ChkExclusao.Checked   := False;
         GravaSituacaoOperacoes(LVRelatorios,LVRelatorios.Selected.Index,TrVMenus.Items.Item[8].Text);
      end
   else
   if (LVUtil.Visible) and (LVUtil.SelCount > 0) then
      begin
         AtribuiTipodeAcesso(LVUtil,'Somente Leitura',3);
         BoxOperacao.Enabled   := False;
         BoxOperacao.Color     := clActiveBorder;
         ChkAlteracao.Checked  := False;
         ChkInclusao.Checked   := False;
         ChkExclusao.Checked   := False;
         GravaSituacaoOperacoes(LVUtil,LVUtil.Selected.Index,TrVMenus.Items.Item[9].Text);
      end
   else
   if (LVAjuda.Visible) and (LVAjuda.SelCount > 0) then
      begin
         AtribuiTipodeAcesso(LVAjuda,'Somente Leitura',3);
         BoxOperacao.Enabled   := False;
         BoxOperacao.Color     := clActiveBorder;
         ChkAlteracao.Checked  := False;
         ChkInclusao.Checked   := False;
         ChkExclusao.Checked   := False;
         GravaSituacaoOperacoes(LVAjuda,LVAjuda.Selected.Index,TrVMenus.Items.Item[11].Text);
      end;
end;

procedure TFrmCadastroUsuario.odosSemAcesso1Click(Sender: tObject);
begin
   if (LVCadastros.Visible) then // and (LVCadastros.SelCount > 0) then
      begin
         AtribuiTipodeAcessoGeral(LVCadastros,'Sem Acesso',0);
         BoxOperacao.Enabled   := False;
         BoxOperacao.Color     := clActiveBorder;
         ChkAlteracao.Checked  := False;
         ChkInclusao.Checked   := False;
         ChkExclusao.Checked   := False;
         GravaSituacaoOperacoesGeral(LVCadastros,TrVMenus.Items.Item[0].Text);
      end
   else
   if (LVFinanceiro.Visible) then // and (LVFinanceiro.SelCount > 0) then
      begin
         AtribuiTipodeAcessoGeral(LVFinanceiro,'Sem Acesso',0);
         BoxOperacao.Enabled   := False;
         BoxOperacao.Color     := clActiveBorder;
         ChkAlteracao.Checked  := False;
         ChkInclusao.Checked   := False;
         ChkExclusao.Checked   := False;
         GravaSituacaoOperacoesGeral(LVFinanceiro,TrVMenus.Items.Item[1].Text);
      end
   else
   if (LVCompras.Visible) then //and (LVCompras.SelCount > 0) then
      begin
         AtribuiTipodeAcessoGeral(LVCompras,'Sem Acesso',0);
         BoxOperacao.Enabled   := False;
         BoxOperacao.Color     := clActiveBorder;
         ChkAlteracao.Checked  := False;
         ChkInclusao.Checked   := False;
         ChkExclusao.Checked   := False;
         GravaSituacaoOperacoesGeral(LVCompras,TrVMenus.Items.Item[2].Text);
      end
   else
   if (LVTelemark.Visible) then //and (LVTelemark.SelCount > 0) then
      begin
         AtribuiTipodeAcessoGeral(LVTelemark,'Sem Acesso',0);
         BoxOperacao.Enabled   := False;
         BoxOperacao.Color     := clActiveBorder;
         ChkAlteracao.Checked  := False;
         ChkInclusao.Checked   := False;
         ChkExclusao.Checked   := False;
         GravaSituacaoOperacoesGeral(LVTelemark,TrVMenus.Items.Item[3].Text);
      end
   else
   if (LvServico.Visible) and (LvServico.SelCount > 0) then
       begin
          AtribuiTipodeAcesso(LVServico,'Sem Acesso',0);
          BoxOperacao.Enabled   := False;
          BoxOperacao.Color     := clActiveBorder;
          ChkAlteracao.Checked  := False;
          ChkInclusao.Checked   := False;
          ChkExclusao.Checked   := False;
          GravaSituacaoOperacoes(LVServico,LVServico.Selected.Index,TrVMenus.Items.Item[4].Text);
      end
   else
   if (LVInformacaoGer.Visible) then //and (LVInformacaoGer.SelCount > 0) then
      begin
         AtribuiTipodeAcessoGeral(LVInformacaoGer,'Sem Acesso',0);
         BoxOperacao.Enabled   := False;
         BoxOperacao.Color     := clActiveBorder;
         ChkAlteracao.Checked  := False;
         ChkInclusao.Checked   := False;
         ChkExclusao.Checked   := False;
         GravaSituacaoOperacoesGeral(LVInformacaoGer,TrVMenus.Items.Item[5].Text);
      end
   else
   if (LVAdministrador.Visible) then//and (LVAdministrador.SelCount > 0) then
      begin
         AtribuiTipodeAcessoGeral(LVAdministrador,'Sem Acesso',0);
         BoxOperacao.Enabled   := False;
         BoxOperacao.Color     := clActiveBorder;
         ChkAlteracao.Checked  := False;
         ChkInclusao.Checked   := False;
         ChkExclusao.Checked   := False;
         GravaSituacaoOperacoesGeral(LVAdministrador,TrVMenus.Items.Item[6].Text);
      end
   else
   if (LVUtil.Visible) then //and (LVUtil.SelCount > 0) then
      begin
         AtribuiTipodeAcessoGeral(LVUtil,'Somente Leitura',0);
         BoxOperacao.Enabled   := False;
         BoxOperacao.Color     := clActiveBorder;
         ChkAlteracao.Checked  := False;
         ChkInclusao.Checked   := False;
         ChkExclusao.Checked   := False;
         GravaSituacaoOperacoesGeral(LVUtil,TrVMenus.Items.Item[7].Text);
      end
   else
   if (LVAjuda.Visible) then //and (LVAjuda.SelCount > 0) then
      begin
         AtribuiTipodeAcessoGeral(LVAjuda,'Somente Leitura',0);
         BoxOperacao.Enabled   := False;
         BoxOperacao.Color     := clActiveBorder;
         ChkAlteracao.Checked  := False;
         ChkInclusao.Checked   := False;
         ChkExclusao.Checked   := False;
         GravaSituacaoOperacoesGeral(LVAjuda,TrVMenus.Items.Item[9].Text);
      end;

end;

procedure TFrmCadastroUsuario.odosAcessoTotal1Click(Sender: tObject);
begin
   if (LVCadastros.Visible) then//and (LVCadastros.SelCount > 0) then
      begin
         AtribuiTipodeAcessoGeral(LVCadastros,'Acesso Total',1);
         BoxOperacao.Enabled   := False;
         BoxOperacao.Color     := clActiveBorder;
         ChkAlteracao.Checked  := True;
         ChkInclusao.Checked   := True;
         ChkExclusao.Checked   := True;
         GravaSituacaoOperacoesGeral(LVCadastros,TrVMenus.Items.Item[0].Text);
      end
   else
   if (LVFinanceiro.Visible) then//and (LVFinanceiro.SelCount > 0) then
      begin
         AtribuiTipodeAcessoGeral(LVFinanceiro,'Acesso Total',1);
         BoxOperacao.Enabled   := False;
         BoxOperacao.Color     := clActiveBorder;
         ChkAlteracao.Checked  := True;
         ChkInclusao.Checked   := True;
         ChkExclusao.Checked   := True;
         GravaSituacaoOperacoesGeral(LVFinanceiro,TrVMenus.Items.Item[1].Text);
      end
   else
   if (LVCompras.Visible) then//and (LVCompras.SelCount > 0) then
       begin
         AtribuiTipodeAcessoGeral(LVCompras,'Acesso Total',1);
         BoxOperacao.Enabled   := False;
         BoxOperacao.Color     := clActiveBorder;
         ChkAlteracao.Checked  := True;
         ChkInclusao.Checked   := True;
         ChkExclusao.Checked   := True;
         GravaSituacaoOperacoesGeral(LVCompras,TrVMenus.Items.Item[2].Text);
      end
   else
   if (LVTelemark.Visible) then //and (LVTelemark.SelCount > 0) then
      begin
         AtribuiTipodeAcessoGeral(LVTelemark,'Acesso Total',1);
         BoxOperacao.Enabled   := False;
         BoxOperacao.Color     := clActiveBorder;
         ChkAlteracao.Checked  := True;
         ChkInclusao.Checked   := True;
         ChkExclusao.Checked   := True;
         GravaSituacaoOperacoesGeral(LVTelemark,TrVMenus.Items.Item[3].Text);
      end
   else
   if (LvServico.Visible) then//and (LvServico.SelCount > 0) then
       begin
          AtribuiTipodeAcesso(LVServico,'Acesso Total',1);
          BoxOperacao.Enabled   := False;
          BoxOperacao.Color     := clActiveBorder;
          ChkAlteracao.Checked  := False;
          ChkInclusao.Checked   := False;
          ChkExclusao.Checked   := False;
          GravaSituacaoOperacoes(LVServico,LVServico.Selected.Index,TrVMenus.Items.Item[4].Text);
      end
   else
   if (LVInformacaoGer.Visible) then//and (LVInformacaoGer.SelCount > 0) then
      begin
         AtribuiTipodeAcessoGeral(LVInformacaoGer,'Acesso Total',1);
         BoxOperacao.Enabled   := False;
         BoxOperacao.Color     := clActiveBorder;
         ChkAlteracao.Checked  := True;
         ChkInclusao.Checked   := True;
         ChkExclusao.Checked   := True;
         GravaSituacaoOperacoesGeral(LVInformacaoGer,TrVMenus.Items.Item[5].Text);
      end
   else
   if (LVAdministrador.Visible) then//and (LVAdministrador.SelCount > 0) then
      begin
         AtribuiTipodeAcessoGeral(LVAdministrador,'Acesso Total',1);
         BoxOperacao.Enabled   := False;
         BoxOperacao.Color     := clActiveBorder;
         ChkAlteracao.Checked  := True;
         ChkInclusao.Checked   := True;
         ChkExclusao.Checked   := True;
         GravaSituacaoOperacoesGeral(LVAdministrador,TrVMenus.Items.Item[6].Text);
      end
   else
   if (LVUtil.Visible) then //and (LVUtil.SelCount > 0) then
      begin
         AtribuiTipodeAcessoGeral(LVUtil,'Acesso Total',1);
         BoxOperacao.Enabled   := False;
         BoxOperacao.Color     := clActiveBorder;
         ChkAlteracao.Checked  := True;
         ChkInclusao.Checked   := True;
         ChkExclusao.Checked   := True;
         GravaSituacaoOperacoesGeral(LVUtil,TrVMenus.Items.Item[7].Text);
      end
   else
   if (LVAjuda.Visible) then //and (LVAjuda.SelCount > 0) then
      begin
         AtribuiTipodeAcessoGeral(LVAjuda,'Acesso Total',1);
         BoxOperacao.Enabled   := False;
         BoxOperacao.Color     := clActiveBorder;
         ChkAlteracao.Checked  := True;
         ChkInclusao.Checked   := True;
         ChkExclusao.Checked   := True;
         GravaSituacaoOperacoesGeral(LVAjuda,TrVMenus.Items.Item[9].Text);
      end
end;

procedure TFrmCadastroUsuario.odosAcessoParcial1Click(Sender: tObject);
begin
   if (LVCadastros.Visible) then //and (LVCadastros.SelCount > 0) then
      begin
         AtribuiTipodeAcessoGeral(LVCadastros,'Acesso Parcial',2);
         BoxOperacao.Enabled   := True;
         BoxOperacao.Color     := clSilver;
         ChkAlteracao.Checked  := True;
         ChkInclusao.Checked   := True;
         ChkExclusao.Checked   := True;
         GravaSituacaoOperacoesGeral(LVCadastros,TrVMenus.Items.Item[0].Text);
      end
   else
   if (LVFinanceiro.Visible) then //and (LVFinanceiro.SelCount > 0) then
      begin
         AtribuiTipodeAcessoGeral(LVFinanceiro,'Acesso Parcial',2);
         BoxOperacao.Enabled   := True;
         BoxOperacao.Color     := clSilver;
         ChkAlteracao.Checked  := True;
         ChkInclusao.Checked   := True;
         ChkExclusao.Checked   := True;
         GravaSituacaoOperacoesGeral(LVFinanceiro,TrVMenus.Items.Item[1].Text);
      end
   else
   if (LVCompras.Visible) then //and (LVCadastros.SelCount > 0) then
      begin
         AtribuiTipodeAcessoGeral(LVCompras,'Acesso Parcial',2);
         BoxOperacao.Enabled   := True;
         BoxOperacao.Color     := clSilver;
         ChkAlteracao.Checked  := True;
         ChkInclusao.Checked   := True;
         ChkExclusao.Checked   := True;
         GravaSituacaoOperacoesGeral(LVCompras,TrVMenus.Items.Item[2].Text);
      end
   else
   if (LVTelemark.Visible) then//and (LVTelemark.SelCount > 0) then
      begin
         AtribuiTipodeAcessoGeral(LVTelemark,'Acesso Parcial',2);
         BoxOperacao.Enabled   := True;
         BoxOperacao.Color     := clSilver;
         ChkAlteracao.Checked  := True;
         ChkInclusao.Checked   := True;
         ChkExclusao.Checked   := True;
         GravaSituacaoOperacoesGeral(LVTelemark,TrVMenus.Items.Item[3].Text);
      end
   else
   if (LvServico.Visible) then//and (LvServico.SelCount > 0) then
       begin
          AtribuiTipodeAcesso(LVServico,'Acesso Parcial',2);
          BoxOperacao.Enabled   := False;
          BoxOperacao.Color     := clActiveBorder;
          ChkAlteracao.Checked  := False;
          ChkInclusao.Checked   := False;
          ChkExclusao.Checked   := False;
          GravaSituacaoOperacoes(LVServico,LVServico.Selected.Index,TrVMenus.Items.Item[4].Text);
      end
   else
   if (LVInformacaoGer.Visible) then //and (LVInformacaoGer.SelCount > 0) then
      begin
         AtribuiTipodeAcessoGeral(LVInformacaoGer,'Acesso Parcial',2);
         BoxOperacao.Enabled   := True;
         BoxOperacao.Color     := clSilver;
         ChkAlteracao.Checked  := True;
         ChkInclusao.Checked   := True;
         ChkExclusao.Checked   := True;
         GravaSituacaoOperacoesGeral(LVInformacaoGer,TrVMenus.Items.Item[5].Text);
      end
   else
   if (LVAdministrador.Visible) then //and (LVAdministrador.SelCount > 0) then
      begin
         AtribuiTipodeAcessoGeral(LVAdministrador,'Acesso Parcial',2);
         BoxOperacao.Enabled   := True;
         BoxOperacao.Color     := clSilver;
         ChkAlteracao.Checked  := True;
         ChkInclusao.Checked   := True;
         ChkExclusao.Checked   := True;
         GravaSituacaoOperacoesGeral(LVAdministrador,TrVMenus.Items.Item[6].Text);
      end
   else
   if (LVUtil.Visible) then //and (LVUtil.SelCount > 0) then
      begin
         AtribuiTipodeAcessoGeral(LVUtil,'Acesso Parcial',2);
         BoxOperacao.Enabled   := True;
         BoxOperacao.Color     := clSilver;
         ChkAlteracao.Checked  := True;
         ChkInclusao.Checked   := True;
         ChkExclusao.Checked   := True;
         GravaSituacaoOperacoesGeral(LVUtil,TrVMenus.Items.Item[7].Text);
      end
   else
   if (LVAjuda.Visible) then//and (LVAjuda.SelCount > 0) then
      begin
         AtribuiTipodeAcessoGeral(LVAjuda,'Acesso Parcial',2);
         BoxOperacao.Enabled   := True;
         BoxOperacao.Color     := clSilver;
         ChkAlteracao.Checked  := True;
         ChkInclusao.Checked   := True;
         ChkExclusao.Checked   := True;
         GravaSituacaoOperacoesGeral(LVAjuda,TrVMenus.Items.Item[9].Text);
      end;

end;

procedure TFrmCadastroUsuario.odosSomenteLeitura1Click(Sender: tObject);
begin
   if (LVCadastros.Visible) then //and (LVCadastros.SelCount > 0) then
      begin
         AtribuiTipodeAcessoGeral(LVCadastros,'Somente Leitura',3);
         BoxOperacao.Enabled   := False;
         BoxOperacao.Color     := clActiveBorder;
         ChkAlteracao.Checked  := False;
         ChkInclusao.Checked   := False;
         ChkExclusao.Checked   := False;
         GravaSituacaoOperacoesGeral(LVFinanceiro,TrVMenus.Items.Item[0].Text);
      end
   else
   if (LVFinanceiro.Visible) then //and (LVFinanceiro.SelCount > 0) then
      begin
         AtribuiTipodeAcessoGeral(LVFinanceiro,'Somente Leitura',3);
         BoxOperacao.Enabled   := False;
         BoxOperacao.Color     := clActiveBorder;
         ChkAlteracao.Checked  := False;
         ChkInclusao.Checked   := False;
         ChkExclusao.Checked   := False;
         GravaSituacaoOperacoesGeral(LVFinanceiro,TrVMenus.Items.Item[1].Text);
      end
   else
   if (LVCompras.Visible) then //and (LVCompras.SelCount > 0) then
      begin
         AtribuiTipodeAcessoGeral(LVCompras,'Somente Leitura',3);
         BoxOperacao.Enabled   := False;
         BoxOperacao.Color     := clActiveBorder;
         ChkAlteracao.Checked  := False;
         ChkInclusao.Checked   := False;
         ChkExclusao.Checked   := False;
         GravaSituacaoOperacoesGeral(LVCompras,TrVMenus.Items.Item[2].Text);
      end
   else
   if (LVTelemark.Visible) then //and (LVTelemark.SelCount > 0) then
      begin
         AtribuiTipodeAcessoGeral(LVTelemark,'Somente Leitura',3);
         BoxOperacao.Enabled   := False;
         BoxOperacao.Color     := clActiveBorder;
         ChkAlteracao.Checked  := False;
         ChkInclusao.Checked   := False;
         ChkExclusao.Checked   := False;
         GravaSituacaoOperacoesGeral(LVTelemark,TrVMenus.Items.Item[3].Text);
      end
   else
   if (LvServico.Visible) then//and (LvServico.SelCount > 0) then
       begin
          AtribuiTipodeAcesso(LVServico,'Somente Leitura',3);
          BoxOperacao.Enabled   := False;
          BoxOperacao.Color     := clActiveBorder;
          ChkAlteracao.Checked  := False;
          ChkInclusao.Checked   := False;
          ChkExclusao.Checked   := False;
          GravaSituacaoOperacoes(LVServico,LVServico.Selected.Index,TrVMenus.Items.Item[4].Text);
      end
   else
   if (LVInformacaoGer.Visible) then //and (LVInformacaoGer.SelCount > 0) then
      begin
         AtribuiTipodeAcessoGeral(LVInformacaoGer,'Somente Leitura',3);
         BoxOperacao.Enabled   := False;
         BoxOperacao.Color     := clActiveBorder;
         ChkAlteracao.Checked  := False;
         ChkInclusao.Checked   := False;
         ChkExclusao.Checked   := False;
         GravaSituacaoOperacoesGeral(LVInformacaoGer,TrVMenus.Items.Item[5].Text);
      end
   else
   if (LVAdministrador.Visible) then //and (LVAdministrador.SelCount > 0) then
      begin
         AtribuiTipodeAcessoGeral(LVAdministrador,'Somente Leitura',3);
         BoxOperacao.Enabled   := False;
         BoxOperacao.Color     := clActiveBorder;
         ChkAlteracao.Checked  := False;
         ChkInclusao.Checked   := False;
         ChkExclusao.Checked   := False;
         GravaSituacaoOperacoesGeral(LVAdministrador,TrVMenus.Items.Item[6].Text);
      end
   else
   if (LVUtil.Visible) then //and (LVUtil.SelCount > 0) then
      begin
         AtribuiTipodeAcessoGeral(LVUtil,'Somente Leitura',3);
         BoxOperacao.Enabled   := False;
         BoxOperacao.Color     := clActiveBorder;
         ChkAlteracao.Checked  := False;
         ChkInclusao.Checked   := False;
         ChkExclusao.Checked   := False;
         GravaSituacaoOperacoesGeral(LVUtil,TrVMenus.Items.Item[7].Text);
      end
   else
   if (LVAjuda.Visible) then //and (LVAjuda.SelCount > 0) then
      begin
         AtribuiTipodeAcessoGeral(LVAjuda,'Somente Leitura',3);
         BoxOperacao.Enabled   := False;
         BoxOperacao.Color     := clActiveBorder;
         ChkAlteracao.Checked  := False;
         ChkInclusao.Checked   := False;
         ChkExclusao.Checked   := False;
         GravaSituacaoOperacoesGeral(LVAjuda,TrVMenus.Items.Item[9].Text);
      end

end;

procedure TFrmCadastroUsuario.GravaNivelAcessos;
 Var
 I:Integer;
begin
   try
    {nivel menu principal}
     for I:= 0 to TrVMenus.Items.Count -1 do
         begin
            if DadosBase0.CdSAcessosUsuario.Locate('USA_MENU',TrVMenus.Items.Item[I].Text,[]) then
               begin
                  DadosBase0.CdSAcessosUsuario.Edit;
                  DadosBase0.CdSAcessosUsuario.FieldByName('USA_ACESSO').AsInteger      := TrVMenus.Items.Item[I].ImageIndex;
                  DadosBase0.CdSAcessosUsuario.ApplyUpdates(0);
               end
            else
               begin
                  DadosBase0.CdSAcessosUsuario.Insert;
                  DadosBase0.CdSAcessosUsuario.FieldByName('USA_COD_USUARIO').AsInteger := DadosBase0.CdSUsuario.FieldByname('USU_CODIGO').AsInteger;
                  DadosBase0.CdSAcessosUsuario.FieldByName('USA_MENU').AsString         := TrVMenus.Items.Item[I].Text;
                  DadosBase0.CdSAcessosUsuario.FieldByName('USA_ACESSO').AsInteger      := TrVMenus.Items.Item[I].ImageIndex;

                  if TrVMenus.Items.Item[I].ImageIndex in [0,3] then
                     begin
                       DadosBase0.CdSAcessosUsuario.FieldByName('USA_ALTERACAO').AsString    := 'N';
                       DadosBase0.CdSAcessosUsuario.FieldByName('USA_INCLUSAO').AsString     := 'N';
                       DadosBase0.CdSAcessosUsuario.FieldByName('USA_EXCLUSAO').AsString     := 'N';
                     end
                  else
                     begin
                       DadosBase0.CdSAcessosUsuario.FieldByName('USA_ALTERACAO').AsString    := 'S';
                       DadosBase0.CdSAcessosUsuario.FieldByName('USA_INCLUSAO').AsString     := 'S';
                       DadosBase0.CdSAcessosUsuario.FieldByName('USA_EXCLUSAO').AsString     := 'S';
                     end;
                  DadosBase0.CdSAcessosUsuario.ApplyUpdates(0);
               end;
         end;

(*
    {acesso cadastros}
     for I:= 0 to LVCadastros.Items.Count -1 do
         begin
            if DadosBase0.CdSAcessosUsuario.Locate('USA_MENU',(ExtrairCarecter(FrmMenu.Cadastros1.Caption)+LVCadastros.Items.Item[I].Caption),[]) then
               begin
                  DadosBase0.CdSAcessosUsuario.Edit;
                  DadosBase0.CdSAcessosUsuario.FieldByName('USA_ACESSO').AsInteger      := LVCadastros.Items.Item[I].ImageIndex;
                  DadosBase0.CdSAcessosUsuario.FieldByName('USA_ALTERACAO').AsString    := IIF(ChkAlteracao.State = cbChecked,'S','N');
                  DadosBase0.CdSAcessosUsuario.FieldByName('USA_INCLUSAO').AsString     := IIF(ChkInclusao.State = cbChecked,'S','N');
                  DadosBase0.CdSAcessosUsuario.FieldByName('USA_EXCLUSAO').AsString     := IIF(ChkExclusao.State = cbChecked,'S','N');
                  DadosBase0.CdSAcessosUsuario.ApplyUpdates(0);
               end
            else
               begin
                  DadosBase0.CdSAcessosUsuario.Insert;
                  DadosBase0.CdSAcessosUsuario.FieldByName('USA_COD_USUARIO').AsInteger := DadosBase0.CdSUsuario.FieldByname('USU_CODIGO').AsInteger;
                  DadosBase0.CdSAcessosUsuario.FieldByName('USA_MENU').AsString         := ExtrairCarecter(FrmMenu.Cadastros1.Caption)+LVCadastros.Items.Item[I].Caption;
                  DadosBase0.CdSAcessosUsuario.FieldByName('USA_ACESSO').AsInteger      := LVCadastros.Items.Item[I].ImageIndex;
                  DadosBase0.CdSAcessosUsuario.FieldByName('USA_ALTERACAO').AsString    := IIF(ChkAlteracao.State = cbChecked,'S','N');
                  DadosBase0.CdSAcessosUsuario.FieldByName('USA_INCLUSAO').AsString     := IIF(ChkInclusao.State = cbChecked,'S','N');
                  DadosBase0.CdSAcessosUsuario.FieldByName('USA_EXCLUSAO').AsString     := IIF(ChkExclusao.State = cbChecked,'S','N');
                  DadosBase0.CdSAcessosUsuario.ApplyUpdates(0);
               end;
         end;
    {Fincanceiro}
     for I:= 0 to LVFinanceiro.Items.Count -1 do
         begin
            if DadosBase0.CdSAcessosUsuario.Locate('USA_MENU',(ExtrairCarecter(FrmMenu.Financeiro1.Caption)+LVFinanceiro.Items.Item[I].Caption),[]) then
               begin
                  DadosBase0.CdSAcessosUsuario.Edit;
                  DadosBase0.CdSAcessosUsuario.FieldByName('USA_ACESSO').AsInteger      := LVFinanceiro.Items.Item[I].ImageIndex;
                  DadosBase0.CdSAcessosUsuario.FieldByName('USA_ALTERACAO').AsString    := IIF(ChkAlteracao.State = cbChecked,'S','N');
                  DadosBase0.CdSAcessosUsuario.FieldByName('USA_INCLUSAO').AsString     := IIF(ChkInclusao.State = cbChecked,'S','N');
                  DadosBase0.CdSAcessosUsuario.FieldByName('USA_EXCLUSAO').AsString     := IIF(ChkExclusao.State = cbChecked,'S','N');
                  DadosBase0.CdSAcessosUsuario.ApplyUpdates(0);
               end
            else
               begin
                  DadosBase0.CdSAcessosUsuario.Insert;
                  DadosBase0.CdSAcessosUsuario.FieldByName('USA_COD_USUARIO').AsInteger := DadosBase0.CdSUsuario.FieldByname('USU_CODIGO').AsInteger;
                  DadosBase0.CdSAcessosUsuario.FieldByName('USA_MENU').AsString         := ExtrairCarecter(FrmMenu.Financeiro1.Caption)+LVFinanceiro.Items.Item[I].Caption;
                  DadosBase0.CdSAcessosUsuario.FieldByName('USA_ACESSO').AsInteger      := LVFinanceiro.Items.Item[I].ImageIndex;
                  DadosBase0.CdSAcessosUsuario.FieldByName('USA_ALTERACAO').AsString    := IIF(ChkAlteracao.State = cbChecked,'S','N');
                  DadosBase0.CdSAcessosUsuario.FieldByName('USA_INCLUSAO').AsString     := IIF(ChkInclusao.State = cbChecked,'S','N');
                  DadosBase0.CdSAcessosUsuario.FieldByName('USA_EXCLUSAO').AsString     := IIF(ChkExclusao.State = cbChecked,'S','N');
                  DadosBase0.CdSAcessosUsuario.ApplyUpdates(0);
               end;
         end;
    {compras}
     for I:= 0 to LVCompras.Items.Count -1 do
         begin
            if DadosBase0.CdSAcessosUsuario.Locate('USA_MENU',(ExtrairCarecter(FrmMenu.Compras1.Caption)+LVCompras.Items.Item[I].Caption),[]) then
               begin
                  DadosBase0.CdSAcessosUsuario.Edit;
                  DadosBase0.CdSAcessosUsuario.FieldByName('USA_ACESSO').AsInteger      := LVCompras.Items.Item[I].ImageIndex;
                  DadosBase0.CdSAcessosUsuario.FieldByName('USA_ALTERACAO').AsString    := IIF(ChkAlteracao.State = cbChecked,'S','N');
                  DadosBase0.CdSAcessosUsuario.FieldByName('USA_INCLUSAO').AsString     := IIF(ChkInclusao.State = cbChecked,'S','N');
                  DadosBase0.CdSAcessosUsuario.FieldByName('USA_EXCLUSAO').AsString     := IIF(ChkExclusao.State = cbChecked,'S','N');
                  DadosBase0.CdSAcessosUsuario.ApplyUpdates(0);
               end
            else
               begin
                  DadosBase0.CdSAcessosUsuario.Insert;
                  DadosBase0.CdSAcessosUsuario.FieldByName('USA_COD_USUARIO').AsInteger := DadosBase0.CdSUsuario.FieldByname('USU_CODIGO').AsInteger;
                  DadosBase0.CdSAcessosUsuario.FieldByName('USA_MENU').AsString         := ExtrairCarecter(FrmMenu.Compras1.Caption)+LVCompras.Items.Item[I].Caption;
                  DadosBase0.CdSAcessosUsuario.FieldByName('USA_ACESSO').AsInteger      := LVCompras.Items.Item[I].ImageIndex;
                  DadosBase0.CdSAcessosUsuario.FieldByName('USA_ALTERACAO').AsString    := IIF(ChkAlteracao.State = cbChecked,'S','N');
                  DadosBase0.CdSAcessosUsuario.FieldByName('USA_INCLUSAO').AsString     := IIF(ChkInclusao.State = cbChecked,'S','N');
                  DadosBase0.CdSAcessosUsuario.FieldByName('USA_EXCLUSAO').AsString     := IIF(ChkExclusao.State = cbChecked,'S','N');
                  DadosBase0.CdSAcessosUsuario.ApplyUpdates(0);
               end;
         end;
    {Telemarketing}
     for I:= 0 to LVTelemark.Items.Count -1 do
         begin
            if DadosBase0.CdSAcessosUsuario.Locate('USA_MENU',(ExtrairCarecter(FrmMenu.Vendas1.Caption)+LVTelemark.Items.Item[I].Caption),[]) then
               begin
                  DadosBase0.CdSAcessosUsuario.Edit;
                  DadosBase0.CdSAcessosUsuario.FieldByName('USA_ACESSO').AsInteger      := LVTelemark.Items.Item[I].ImageIndex;
                  DadosBase0.CdSAcessosUsuario.FieldByName('USA_ALTERACAO').AsString    := IIF(ChkAlteracao.State = cbChecked,'S','N');
                  DadosBase0.CdSAcessosUsuario.FieldByName('USA_INCLUSAO').AsString     := IIF(ChkInclusao.State = cbChecked,'S','N');
                  DadosBase0.CdSAcessosUsuario.FieldByName('USA_EXCLUSAO').AsString     := IIF(ChkExclusao.State = cbChecked,'S','N');
                  DadosBase0.CdSAcessosUsuario.ApplyUpdates(0);
               end
            else
               begin
                  DadosBase0.CdSAcessosUsuario.Insert;
                  DadosBase0.CdSAcessosUsuario.FieldByName('USA_COD_USUARIO').AsInteger := DadosBase0.CdSUsuario.FieldByname('USU_CODIGO').AsInteger;
                  DadosBase0.CdSAcessosUsuario.FieldByName('USA_MENU').AsString         := ExtrairCarecter(FrmMenu.Vendas1.Caption)+LVTelemark.Items.Item[I].Caption;
                  DadosBase0.CdSAcessosUsuario.FieldByName('USA_ACESSO').AsInteger      := LVTelemark.Items.Item[I].ImageIndex;
                  DadosBase0.CdSAcessosUsuario.FieldByName('USA_ALTERACAO').AsString    := IIF(ChkAlteracao.State = cbChecked,'S','N');
                  DadosBase0.CdSAcessosUsuario.FieldByName('USA_INCLUSAO').AsString     := IIF(ChkInclusao.State = cbChecked,'S','N');
                  DadosBase0.CdSAcessosUsuario.FieldByName('USA_EXCLUSAO').AsString     := IIF(ChkExclusao.State = cbChecked,'S','N');
                  DadosBase0.CdSAcessosUsuario.ApplyUpdates(0);
               end;
         end;
    {faturamento}
     for I:= 0 to LVFaturamento.Items.Count -1 do
         begin
            if DadosBase0.CdSAcessosUsuario.Locate('USA_MENU',(ExtrairCarecter(FrmMenu.Faturamento1.Caption)+LVFaturamento.Items.Item[I].Caption),[]) then
               begin
                  DadosBase0.CdSAcessosUsuario.Edit;
                  DadosBase0.CdSAcessosUsuario.FieldByName('USA_ACESSO').AsInteger      := LVFaturamento.Items.Item[I].ImageIndex;
                  DadosBase0.CdSAcessosUsuario.FieldByName('USA_ALTERACAO').AsString    := IIF(ChkAlteracao.State = cbChecked,'S','N');
                  DadosBase0.CdSAcessosUsuario.FieldByName('USA_INCLUSAO').AsString     := IIF(ChkInclusao.State = cbChecked,'S','N');
                  DadosBase0.CdSAcessosUsuario.FieldByName('USA_EXCLUSAO').AsString     := IIF(ChkExclusao.State = cbChecked,'S','N');
                  DadosBase0.CdSAcessosUsuario.ApplyUpdates(0);
               end
            else
               begin
                  DadosBase0.CdSAcessosUsuario.Insert;
                  DadosBase0.CdSAcessosUsuario.FieldByName('USA_COD_USUARIO').AsInteger := DadosBase0.CdSUsuario.FieldByname('USU_CODIGO').AsInteger;
                  DadosBase0.CdSAcessosUsuario.FieldByName('USA_MENU').AsString         := ExtrairCarecter(FrmMenu.Faturamento1.Caption)+LVFaturamento.Items.Item[I].Caption;
                  DadosBase0.CdSAcessosUsuario.FieldByName('USA_ACESSO').AsInteger      := LVFaturamento.Items.Item[I].ImageIndex;
                  DadosBase0.CdSAcessosUsuario.FieldByName('USA_ALTERACAO').AsString    := IIF(ChkAlteracao.State = cbChecked,'S','N');
                  DadosBase0.CdSAcessosUsuario.FieldByName('USA_INCLUSAO').AsString     := IIF(ChkInclusao.State = cbChecked,'S','N');
                  DadosBase0.CdSAcessosUsuario.FieldByName('USA_EXCLUSAO').AsString     := IIF(ChkExclusao.State = cbChecked,'S','N');
                  DadosBase0.CdSAcessosUsuario.ApplyUpdates(0);
               end;
         end;
    {Servico}
     for I:= 0 to LvServico.Items.Count -1 do
         begin
            if DadosBase0.CdSAcessosUsuario.Locate('USA_MENU',(ExtrairCarecter(FrmMenu.Servicos1.Caption)+LvServico.Items.Item[I].Caption),[]) then
               begin
                  DadosBase0.CdSAcessosUsuario.Edit;
                  DadosBase0.CdSAcessosUsuario.FieldByName('USA_ACESSO').AsInteger      := LvServico.Items.Item[I].ImageIndex;
                  DadosBase0.CdSAcessosUsuario.FieldByName('USA_ALTERACAO').AsString    := IIF(ChkAlteracao.State = cbChecked,'S','N');
                  DadosBase0.CdSAcessosUsuario.FieldByName('USA_INCLUSAO').AsString     := IIF(ChkInclusao.State = cbChecked,'S','N');
                  DadosBase0.CdSAcessosUsuario.FieldByName('USA_EXCLUSAO').AsString     := IIF(ChkExclusao.State = cbChecked,'S','N');
                  DadosBase0.CdSAcessosUsuario.ApplyUpdates(0);
               end
            else
               begin
                  DadosBase0.CdSAcessosUsuario.Insert;
                  DadosBase0.CdSAcessosUsuario.FieldByName('USA_COD_USUARIO').AsInteger := DadosBase0.CdSUsuario.FieldByname('USU_CODIGO').AsInteger;
                  DadosBase0.CdSAcessosUsuario.FieldByName('USA_MENU').AsString         := ExtrairCarecter(FrmMenu.Servicos1.Caption)+LvServico.Items.Item[I].Caption;
                  DadosBase0.CdSAcessosUsuario.FieldByName('USA_ACESSO').AsInteger      := LvServico.Items.Item[I].ImageIndex;
                  DadosBase0.CdSAcessosUsuario.FieldByName('USA_ALTERACAO').AsString    := IIF(ChkAlteracao.State = cbChecked,'S','N');
                  DadosBase0.CdSAcessosUsuario.FieldByName('USA_INCLUSAO').AsString     := IIF(ChkInclusao.State = cbChecked,'S','N');
                  DadosBase0.CdSAcessosUsuario.FieldByName('USA_EXCLUSAO').AsString     := IIF(ChkExclusao.State = cbChecked,'S','N');
                  DadosBase0.CdSAcessosUsuario.ApplyUpdates(0);
               end;
         end;
    {Informacoes Gerenciais}
     for I:= 0 to LVInformacaoGer.Items.Count -1 do
         begin
            if DadosBase0.CdSAcessosUsuario.Locate('USA_MENU',(ExtrairCarecter(FrmMenu.Gerencial1.Caption)+LVInformacaoGer.Items.Item[I].Caption),[]) then
               begin
                  DadosBase0.CdSAcessosUsuario.Edit;
                  DadosBase0.CdSAcessosUsuario.FieldByName('USA_ACESSO').AsInteger      := LVInformacaoGer.Items.Item[I].ImageIndex;
                  DadosBase0.CdSAcessosUsuario.FieldByName('USA_ALTERACAO').AsString    := IIF(ChkAlteracao.State = cbChecked,'S','N');
                  DadosBase0.CdSAcessosUsuario.FieldByName('USA_INCLUSAO').AsString     := IIF(ChkInclusao.State = cbChecked,'S','N');
                  DadosBase0.CdSAcessosUsuario.FieldByName('USA_EXCLUSAO').AsString     := IIF(ChkExclusao.State = cbChecked,'S','N');
                  DadosBase0.CdSAcessosUsuario.ApplyUpdates(0);
               end
            else
               begin
                  DadosBase0.CdSAcessosUsuario.Insert;
                  DadosBase0.CdSAcessosUsuario.FieldByName('USA_COD_USUARIO').AsInteger := DadosBase0.CdSUsuario.FieldByname('USU_CODIGO').AsInteger;
                  DadosBase0.CdSAcessosUsuario.FieldByName('USA_MENU').AsString         := ExtrairCarecter(FrmMenu.Gerencial1.Caption)+LVInformacaoGer.Items.Item[I].Caption;
                  DadosBase0.CdSAcessosUsuario.FieldByName('USA_ACESSO').AsInteger      := LVInformacaoGer.Items.Item[I].ImageIndex;
                  DadosBase0.CdSAcessosUsuario.FieldByName('USA_ALTERACAO').AsString    := IIF(ChkAlteracao.State = cbChecked,'S','N');
                  DadosBase0.CdSAcessosUsuario.FieldByName('USA_INCLUSAO').AsString     := IIF(ChkInclusao.State = cbChecked,'S','N');
                  DadosBase0.CdSAcessosUsuario.FieldByName('USA_EXCLUSAO').AsString     := IIF(ChkExclusao.State = cbChecked,'S','N');
                  DadosBase0.CdSAcessosUsuario.ApplyUpdates(0);
               end;
         end;
    {Administrador}
     for I:= 0 to LVAdministrador.Items.Count -1 do
         begin
            if DadosBase0.CdSAcessosUsuario.Locate('USA_MENU',(ExtrairCarecter(FrmMenu.Administrador1.Caption)+LVAdministrador.Items.Item[I].Caption),[]) then
               begin
                  DadosBase0.CdSAcessosUsuario.Edit;
                  DadosBase0.CdSAcessosUsuario.FieldByName('USA_ACESSO').AsInteger      := LvAdministrador.Items.Item[I].ImageIndex;
                  DadosBase0.CdSAcessosUsuario.FieldByName('USA_ALTERACAO').AsString    := IIF(ChkAlteracao.State = cbChecked,'S','N');
                  DadosBase0.CdSAcessosUsuario.FieldByName('USA_INCLUSAO').AsString     := IIF(ChkInclusao.State = cbChecked,'S','N');
                  DadosBase0.CdSAcessosUsuario.FieldByName('USA_EXCLUSAO').AsString     := IIF(ChkExclusao.State = cbChecked,'S','N');
                  DadosBase0.CdSAcessosUsuario.ApplyUpdates(0);
               end
            else
               begin
                  DadosBase0.CdSAcessosUsuario.Insert;
                  DadosBase0.CdSAcessosUsuario.FieldByName('USA_COD_USUARIO').AsInteger := DadosBase0.CdSUsuario.FieldByname('USU_CODIGO').AsInteger;
                  DadosBase0.CdSAcessosUsuario.FieldByName('USA_MENU').AsString         := ExtrairCarecter(FrmMenu.Administrador1.Caption)+LvAdministrador.Items.Item[I].Caption;
                  DadosBase0.CdSAcessosUsuario.FieldByName('USA_ACESSO').AsInteger      := LVAdministrador.Items.Item[I].ImageIndex;
                  DadosBase0.CdSAcessosUsuario.FieldByName('USA_ALTERACAO').AsString    := IIF(ChkAlteracao.State = cbChecked,'S','N');
                  DadosBase0.CdSAcessosUsuario.FieldByName('USA_INCLUSAO').AsString     := IIF(ChkInclusao.State = cbChecked,'S','N');
                  DadosBase0.CdSAcessosUsuario.FieldByName('USA_EXCLUSAO').AsString     := IIF(ChkExclusao.State = cbChecked,'S','N');
                  DadosBase0.CdSAcessosUsuario.ApplyUpdates(0);
               end;
         end;
    {relatorios}
     for I:= 0 to LVRelatorios.Items.Count -1 do
         begin
            if DadosBase0.CdSAcessosUsuario.Locate('USA_MENU',(ExtrairCarecter(FrmMenu.Relatrios1.Caption)+LVRelatorios.Items.Item[I].Caption),[]) then
               begin
                  DadosBase0.CdSAcessosUsuario.Edit;
                  DadosBase0.CdSAcessosUsuario.FieldByName('USA_ACESSO').AsInteger      := LVRelatorios.Items.Item[I].ImageIndex;
                  DadosBase0.CdSAcessosUsuario.FieldByName('USA_ALTERACAO').AsString    := IIF(ChkAlteracao.State = cbChecked,'S','N');
                  DadosBase0.CdSAcessosUsuario.FieldByName('USA_INCLUSAO').AsString     := IIF(ChkInclusao.State = cbChecked,'S','N');
                  DadosBase0.CdSAcessosUsuario.FieldByName('USA_EXCLUSAO').AsString     := IIF(ChkExclusao.State = cbChecked,'S','N');
                  DadosBase0.CdSAcessosUsuario.ApplyUpdates(0);
               end
            else
               begin
                  DadosBase0.CdSAcessosUsuario.Insert;
                  DadosBase0.CdSAcessosUsuario.FieldByName('USA_COD_USUARIO').AsInteger := DadosBase0.CdSUsuario.FieldByname('USU_CODIGO').AsInteger;
                  DadosBase0.CdSAcessosUsuario.FieldByName('USA_MENU').AsString         := ExtrairCarecter(FrmMenu.Relatrios1.Caption)+LVRelatorios.Items.Item[I].Caption;
                  DadosBase0.CdSAcessosUsuario.FieldByName('USA_ACESSO').AsInteger      := LVRelatorios.Items.Item[I].ImageIndex;
                  DadosBase0.CdSAcessosUsuario.FieldByName('USA_ALTERACAO').AsString    := IIF(ChkAlteracao.State = cbChecked,'S','N');
                  DadosBase0.CdSAcessosUsuario.FieldByName('USA_INCLUSAO').AsString     := IIF(ChkInclusao.State = cbChecked,'S','N');
                  DadosBase0.CdSAcessosUsuario.FieldByName('USA_EXCLUSAO').AsString     := IIF(ChkExclusao.State = cbChecked,'S','N');
                  DadosBase0.CdSAcessosUsuario.ApplyUpdates(0);
               end;
         end;
    {Util}
     for I:= 0 to LVUtil.Items.Count -1 do
         begin
            if DadosBase0.CdSAcessosUsuario.Locate('USA_MENU',(ExtrairCarecter(FrmMenu.Utilitarios1.Caption)+LVUtil.Items.Item[I].Caption),[]) then
               begin
                  DadosBase0.CdSAcessosUsuario.Edit;
                  DadosBase0.CdSAcessosUsuario.FieldByName('USA_ACESSO').AsInteger      := LVUtil.Items.Item[I].ImageIndex;
                  DadosBase0.CdSAcessosUsuario.FieldByName('USA_ALTERACAO').AsString    := IIF(ChkAlteracao.State = cbChecked,'S','N');
                  DadosBase0.CdSAcessosUsuario.FieldByName('USA_INCLUSAO').AsString     := IIF(ChkInclusao.State = cbChecked,'S','N');
                  DadosBase0.CdSAcessosUsuario.FieldByName('USA_EXCLUSAO').AsString     := IIF(ChkExclusao.State = cbChecked,'S','N');
                  DadosBase0.CdSAcessosUsuario.ApplyUpdates(0);
               end
            else
               begin
                  DadosBase0.CdSAcessosUsuario.Insert;
                  DadosBase0.CdSAcessosUsuario.FieldByName('USA_COD_USUARIO').AsInteger := DadosBase0.CdSUsuario.FieldByname('USU_CODIGO').AsInteger;
                  DadosBase0.CdSAcessosUsuario.FieldByName('USA_MENU').AsString         := ExtrairCarecter(FrmMenu.Utilitarios1.Caption)+LVUtil.Items.Item[I].Caption;
                  DadosBase0.CdSAcessosUsuario.FieldByName('USA_ACESSO').AsInteger      := LVUtil.Items.Item[I].ImageIndex;
                  DadosBase0.CdSAcessosUsuario.FieldByName('USA_ALTERACAO').AsString    := IIF(ChkAlteracao.State = cbChecked,'S','N');
                  DadosBase0.CdSAcessosUsuario.FieldByName('USA_INCLUSAO').AsString     := IIF(ChkInclusao.State = cbChecked,'S','N');
                  DadosBase0.CdSAcessosUsuario.FieldByName('USA_EXCLUSAO').AsString     := IIF(ChkExclusao.State = cbChecked,'S','N');
                  DadosBase0.CdSAcessosUsuario.ApplyUpdates(0);
               end;
         end;

    {Ajuda}
     for I:= 0 to LVAjuda.Items.Count -1 do
         begin
          if DadosBase0.CdSAcessosUsuario.Locate('USA_MENU',(ExtrairCarecter(FrmMenu.Help1.Caption)+LVAjuda.Items.Item[I].Caption),[]) then
               begin
                  DadosBase0.CdSAcessosUsuario.Edit;
                  DadosBase0.CdSAcessosUsuario.FieldByName('USA_ACESSO').AsInteger      := LVAjuda.Items.Item[I].ImageIndex;
                  DadosBase0.CdSAcessosUsuario.FieldByName('USA_ALTERACAO').AsString    := IIF(ChkAlteracao.State = cbChecked,'S','N');
                  DadosBase0.CdSAcessosUsuario.FieldByName('USA_INCLUSAO').AsString     := IIF(ChkInclusao.State = cbChecked,'S','N');
                  DadosBase0.CdSAcessosUsuario.FieldByName('USA_EXCLUSAO').AsString     := IIF(ChkExclusao.State = cbChecked,'S','N');
                  DadosBase0.CdSAcessosUsuario.ApplyUpdates(0);
               end
            else
               begin
                  DadosBase0.CdSAcessosUsuario.Insert;
                  DadosBase0.CdSAcessosUsuario.FieldByName('USA_COD_USUARIO').AsInteger := DadosBase0.CdSUsuario.FieldByname('USU_CODIGO').AsInteger;
                  DadosBase0.CdSAcessosUsuario.FieldByName('USA_MENU').AsString         := ExtrairCarecter(FrmMenu.Help1.Caption)+LVAjuda.Items.Item[I].Caption;
                  DadosBase0.CdSAcessosUsuario.FieldByName('USA_ACESSO').AsInteger      := LVAjuda.Items.Item[I].ImageIndex;
                  DadosBase0.CdSAcessosUsuario.FieldByName('USA_ALTERACAO').AsString    := IIF(ChkAlteracao.State = cbChecked,'S','N');
                  DadosBase0.CdSAcessosUsuario.FieldByName('USA_INCLUSAO').AsString     := IIF(ChkInclusao.State = cbChecked,'S','N');
                  DadosBase0.CdSAcessosUsuario.FieldByName('USA_EXCLUSAO').AsString     := IIF(ChkExclusao.State = cbChecked,'S','N');
                  DadosBase0.CdSAcessosUsuario.ApplyUpdates(0);
               end;
         end;
     *)
         
   except on E:EDataBaseError do
       begin
          //beep;
          uteis.erro  (Pchar('Impossível acessar o arquivo: '+ #13 + E.message));
       end;
   end;
end;

procedure TFrmCadastroUsuario.SpBAcessParClick(Sender: tObject);
 Var
   X:Integer;
begin
   TrVMenus.Items.Item[TrVMenus.Selected.Index].ImageIndex    := 2;
   TrVMenus.Items.Item[TrVMenus.Selected.Index].SelectedIndex := 2;
   BoxOperacao.Enabled   := True;
   BoxOperacao.Color     := clSilver;
   ChkAlteracao.Checked  := False;
   ChkInclusao.Checked   := False;
   ChkExclusao.Checked   := False;
  {}
   try
     for X:= 0 to TrVMenus.Items.Count - 1 do
       begin
          if TrVMenus.Items.Item[X].Selected = True then
             begin
                AtribuiTipodeAcessoGeral(ListaMenu[X],'Acesso Parcial',2);
                GravaSituacaoOperacoesGeral(ListaMenu[X],TrVMenus.Selected.Text);
                exit;
             end;
       end;
   finally
      TrVMenus.Refresh;
   end;

end;

procedure TFrmCadastroUsuario.SpBSomentLeClick(Sender: tObject);
 Var
  X:Integer;
begin
   TrVMenus.Items.Item[TrVMenus.Selected.Index].ImageIndex    := 3;
   TrVMenus.Items.Item[TrVMenus.Selected.Index].SelectedIndex := 3;
   BoxOperacao.Enabled   := False;
   BoxOperacao.Color     := clActiveBorder;
   ChkAlteracao.Checked  := False;
   ChkInclusao.Checked   := False;
   ChkExclusao.Checked   := False;
   //
   try
     for X:= 0 to TrVMenus.Items.Count - 1 do
       begin
          if TrVMenus.Items.Item[X].Selected = True then
             begin
                AtribuiTipodeAcessoGeral(ListaMenu[X],'Somente Leitura',3);
                GravaSituacaoOperacoesGeral(ListaMenu[X],TrVMenus.Selected.Text);
                exit;
             end;
       end;
   finally
      TrVMenus.Refresh;
   end;

end;

procedure TFrmCadastroUsuario.AtualizaListaAcessos(Sender: tObject;
  NomeMenu: String);
  Var
  I:Integer;
begin
   with TListView(Sender) do
     begin
        for I:= 0 to TListView(Sender).Items.Count - 1 do
          begin
              if DadosBase0.CdSAcessosUsuario.Locate('USA_MENU',(NomeMenu+TListView(Sender).Items[I].Caption),[]) then
                 begin
                   {acesso}
                    TListView(Sender).Items.Item[I].ImageIndex  := DadosBase0.CdSAcessosUsuario.FieldByName('USA_ACESSO').AsInteger;
                   {tipo}
                    case TListView(Sender).Items.Item[I].ImageIndex of
                        0:begin
                             TListView(Sender).Items.Item[I].SubItems.Text      := 'Sem acesso';
                             //TListView(Sender).Enabled                          := False;
                             //TListView(Sender).Color                            := $00D7D7D7;
                          end;
                        1:begin
                             TListView(Sender).Items.Item[I].SubItems.Text      := 'Acesso Total';
                             //TListView(Sender).Enabled                          := True;
                             //TListView(Sender).Color                            := clWindow;
                          end;
                        2:begin
                             TListView(Sender).Items.Item[I].SubItems.Text      := 'Acesso Parcial';
                             //TListView(Sender).Enabled                          := True;
                             //TListView(Sender).Color                            := clWindow;
                          end;
                        3:begin
                             TListView(Sender).Items.Item[I].SubItems.Text      := 'Somente Leitura';
                             //TListView(Sender).Enabled                          := True;
                             //TListView(Sender).Color                            := clWindow;
                          end;
                     end;
                 end
              else
                 begin
                    TListView(Sender).Items.Item[I].SubItems.Text       := 'Sem acesso';
                    TListView(Sender).Items.Item[I].ImageIndex          := 0;
                    //TListView(Sender).Enabled                           := False;
                    //TListView(Sender).Color                             := $00D7D7D7;
                 end;
          end;
        TListView(Sender).Refresh;
     end;
end;

procedure TFrmCadastroUsuario.AtribuiMenus(Sender: tObject;  Form: TComponent; NomeComp:String);
 Var
 I:Integer;
begin
   if Sender <> nil then
      begin
         With TListView(Sender) do
            begin
               clear;
               for I:= 0 to TMenuItem(Form.FindComponent(NomeComp)).Count - 1 do
                  if TMenuItem(Form.FindComponent(NomeComp)).Items[I].Caption <> '-' then
                     begin
                        ListItem := Items.Add;
                        ListItem.Caption := ExtrairCarecter(TMenuItem(Form.FindComponent(NomeComp)).Items[I].Caption);
                     end;
            end;
      end;
end;

procedure TFrmCadastroUsuario.AtribuiTipodeAcesso(Sender: tObject; wTIPO_ACESSO:String; wACESSO:Integer);
begin
   if Sender <> nil then
      begin
         with TListView(Sender) do
           begin
              if Selected.Index >= 0 then
                 begin
                    Items.Item[Selected.Index].ImageIndex         := wACESSO;
                    Items.Item[Selected.Index].SubItems.Text      := wTIPO_ACESSO;
                 end;
              Refresh;
           end;
      end;
end;

procedure TFrmCadastroUsuario.AtribuiTipodeAcessoGeral(Sender: tObject;
  wTIPO_ACESSO: String; wACESSO:Integer);
  Var
  I:Integer;
begin
   if Sender <> nil then
      begin
         with TListView(Sender) do
           begin
              for I := 0 to Items.Count - 1 do
                begin
                   Items.Item[I].ImageIndex         := wACESSO;
                   Items.Item[I].SubItems.Text      := wTIPO_ACESSO;
                end;
              Refresh;
           end;
      end;
end;

procedure TFrmCadastroUsuario.TrVMenusGetImageIndex(Sender: tObject;
  Node: TTreeNode);
  Var
  X:Integer;
begin
  {mostra os acessos}
   for X:= 0 to TrVMenus.Items.Count - 1 do
     begin
        if TrVMenus.Items.Item[X].Selected = True then
           begin
              HabilitaMenus(ListaMenu[X]);
              exit;
           end;
     end;
end;

procedure TFrmCadastroUsuario.VerificaSituacaoOperacoes(Sender: tObject;wINDEX_ACESSO:Integer; wNOME_NIVEL:String);
begin
   if Sender <> nil then
      begin
         if TListView(Sender).Items.Item[wINDEX_ACESSO].ImageIndex = 1 then
            begin
                BoxOperacao.Enabled     := False;
                BoxOperacao.Color       := clActiveBorder;
                if DadosBase0.CdSAcessosUsuario.Locate('USA_MENU',wNOME_NIVEL+TListView(Sender).Items.Item[wINDEX_ACESSO].Caption,[]) then
                   begin
                      ChkAlteracao.State      := IIF(DadosBase0.CdSAcessosUsuario.FieldByName('USA_ALTERACAO').AsString = 'S',cbChecked,cbUnchecked);
                      ChkInclusao.State       := IIF(DadosBase0.CdSAcessosUsuario.FieldByName('USA_INCLUSAO').AsString  = 'S',cbChecked,cbUnchecked);
                      ChkExclusao.State       := IIF(DadosBase0.CdSAcessosUsuario.FieldByName('USA_EXCLUSAO').AsString  = 'S',cbChecked,cbUnchecked);
                   end;
            end
         else
         if TListView(Sender).Items.Item[wINDEX_ACESSO].ImageIndex = 2 then
            begin
                //uteis.aviso(Pchar(TListView(Sender).Items.Item[wINDEX_ACESSO].Caption));
                BoxOperacao.Enabled     := True;
                BoxOperacao.Color       := clSilver;
                if DadosBase0.CdSAcessosUsuario.Locate('USA_MENU',wNOME_NIVEL+TListView(Sender).Items.Item[wINDEX_ACESSO].Caption,[]) then
                   begin
                      ChkAlteracao.State      := IIF(DadosBase0.CdSAcessosUsuario.FieldByName('USA_ALTERACAO').AsString = 'S',cbChecked,cbUnchecked);
                      ChkInclusao.State       := IIF(DadosBase0.CdSAcessosUsuario.FieldByName('USA_INCLUSAO').AsString  = 'S',cbChecked,cbUnchecked);
                      ChkExclusao.State       := IIF(DadosBase0.CdSAcessosUsuario.FieldByName('USA_EXCLUSAO').AsString  = 'S',cbChecked,cbUnchecked);
                   end;
            end
         else
         if TListView(Sender).Items.Item[wINDEX_ACESSO].ImageIndex in [0,3] then
            begin
                BoxOperacao.Enabled     := False;
                BoxOperacao.Color       := clActiveBorder;
                if DadosBase0.CdSAcessosUsuario.Locate('USA_MENU',wNOME_NIVEL+TListView(Sender).Items.Item[wINDEX_ACESSO].Caption,[]) then
                   begin
                      ChkAlteracao.State      := IIF(DadosBase0.CdSAcessosUsuario.FieldByName('USA_ALTERACAO').AsString = 'S',cbChecked,cbUnchecked);
                      ChkInclusao.State       := IIF(DadosBase0.CdSAcessosUsuario.FieldByName('USA_INCLUSAO').AsString  = 'S',cbChecked,cbUnchecked);
                      ChkExclusao.State       := IIF(DadosBase0.CdSAcessosUsuario.FieldByName('USA_EXCLUSAO').AsString  = 'S',cbChecked,cbUnchecked);
                   end;
            end;
      end;
end;

procedure TFrmCadastroUsuario.GravaSituacaoOperacoes(Sender: tObject;
  wINDEX_ACESSO: Integer; wNOME_NIVEL: String);
begin
   if Sender <> nil then
      begin
         if DadosBase0.CdSAcessosUsuario.Locate('USA_MENU',wNOME_NIVEL+TListView(Sender).Items.Item[wINDEX_ACESSO].Caption,[]) then
            begin
               DadosBase0.CdSAcessosUsuario.Edit;
               DadosBase0.CdSAcessosUsuario.FieldByName('USA_ACESSO').AsInteger      := TListView(Sender).Items.Item[wINDEX_ACESSO].ImageIndex;
               DadosBase0.CdSAcessosUsuario.FieldByName('USA_ALTERACAO').AsString    := IIF(ChkAlteracao.State = cbChecked,'S','N');
               DadosBase0.CdSAcessosUsuario.FieldByName('USA_INCLUSAO').AsString     := IIF(ChkInclusao.State  = cbChecked,'S','N');
               DadosBase0.CdSAcessosUsuario.FieldByName('USA_EXCLUSAO').AsString     := IIF(ChkExclusao.State  = cbChecked,'S','N');
               DadosBase0.CdSAcessosUsuario.Post;
            end
         else
            begin
               DadosBase0.CdSAcessosUsuario.Insert;
               DadosBase0.CdSAcessosUsuario.FieldByName('USA_COD_USUARIO').AsInteger := DadosBase0.CdSUsuario.FieldByname('USU_CODIGO').AsInteger;
               DadosBase0.CdSAcessosUsuario.FieldByName('USA_MENU').AsString         := Trim(Copy(BoxAcesso.Caption,11,30))+TListView(Sender).Items.Item[wINDEX_ACESSO].Caption;
               DadosBase0.CdSAcessosUsuario.FieldByName('USA_ACESSO').AsInteger      := TListView(Sender).Items.Item[wINDEX_ACESSO].ImageIndex;
               DadosBase0.CdSAcessosUsuario.FieldByName('USA_ALTERACAO').AsString    := IIF(ChkAlteracao.State = cbChecked,'S','N');
               DadosBase0.CdSAcessosUsuario.FieldByName('USA_INCLUSAO').AsString     := IIF(ChkInclusao.State  = cbChecked,'S','N');
               DadosBase0.CdSAcessosUsuario.FieldByName('USA_EXCLUSAO').AsString     := IIF(ChkExclusao.State  = cbChecked,'S','N');
               DadosBase0.CdSAcessosUsuario.ApplyUpdates(0);
            end;

      end;
end;

procedure TFrmCadastroUsuario.ChkAlteracaoEnter(Sender: tObject);
begin
  // DadosBase0.CdSAcessosUsuario.FieldByName('USA_ALTERACAO').AsString    := IIF(ChkAlteracao.State = cbChecked,'S','N');
//   if LVCadastros.SelCount > 0 then
//      GravaSituacaoOperacoes(LVCadastros,LVCadastros.Selected.Index,TrVMenus.Items.Item[0].Text);

end;

procedure TFrmCadastroUsuario.ChkInclusaoEnter(Sender: tObject);
begin
//   DadosBase0.CdSAcessosUsuario.FieldByName('USA_INCLUSAO').AsString     := IIF(ChkInclusao.State = cbChecked,'S','N');
//   if LVCadastros.SelCount > 0 then
//      GravaSituacaoOperacoes(LVCadastros,LVCadastros.Selected.Index,TrVMenus.Items.Item[0].Text);

end;

procedure TFrmCadastroUsuario.ChkExclusaoEnter(Sender: tObject);
begin
//   DadosBase0.CdSAcessosUsuario.FieldByName('USA_EXCLUSAO').AsString     := IIF(ChkExclusao.State = cbChecked,'S','N');
//   if LVCadastros.SelCount > 0 then
//      GravaSituacaoOperacoes(LVCadastros,LVCadastros.Selected.Index,TrVMenus.Items.Item[0].Text);

end;

procedure TFrmCadastroUsuario.ChkAlteracaoClick(Sender: tObject);
begin
//   if LVCadastros.SelCount > 0 then
//      GravaSituacaoOperacoes(LVCadastros,LVCadastros.Selected.Index,TrVMenus.Items.Item[0].Text);
end;

procedure TFrmCadastroUsuario.ChkInclusaoClick(Sender: tObject);
begin
//   if LVCadastros.SelCount > 0 then
//      GravaSituacaoOperacoes(LVCadastros,LVCadastros.Selected.Index,TrVMenus.Items.Item[0].Text);

end;

procedure TFrmCadastroUsuario.ChkExclusaoClick(Sender: tObject);
begin
//   if LVCadastros.SelCount > 0 then
//      GravaSituacaoOperacoes(LVCadastros,LVCadastros.Selected.Index,TrVMenus.Items.Item[0].Text);

end;

procedure TFrmCadastroUsuario.ChkAlteracaoExit(Sender: tObject);
begin
   if LVCadastros.SelCount > 0 then
      GravaSituacaoOperacoes(LVCadastros,LVCadastros.Selected.Index,TrVMenus.Items.Item[0].Text);
end;

procedure TFrmCadastroUsuario.ChkInclusaoExit(Sender: tObject);
begin
   if LVCadastros.SelCount > 0 then
      GravaSituacaoOperacoes(LVCadastros,LVCadastros.Selected.Index,TrVMenus.Items.Item[0].Text);
end;

procedure TFrmCadastroUsuario.ChkExclusaoExit(Sender: tObject);
begin
   if LVCadastros.SelCount > 0 then
      GravaSituacaoOperacoes(LVCadastros,LVCadastros.Selected.Index,TrVMenus.Items.Item[0].Text);
end;

procedure TFrmCadastroUsuario.LVCadastrosClick(Sender: tObject);
begin
   if DadosBase0.CdSUsuario.State in [dsBrowse] then
      DadosBase0.CdSUsuario.Edit;
   if LVCadastros.SelCount > 0 then
      VerificaSituacaoOperacoes(LVCadastros,LVCadastros.Selected.Index,TrVMenus.Items.Item[0].Text);
end;

procedure TFrmCadastroUsuario.LVAjudaClick(Sender: tObject);
begin
   if LVAjuda.SelCount > 0 then
      VerificaSituacaoOperacoes(LVAjuda,LVAjuda.Selected.Index,TrVMenus.Items.Item[10].Text);
end;

procedure TFrmCadastroUsuario.LVComprasClick(Sender: tObject);
begin
   if DadosBase0.CdSUsuario.State in [dsBrowse] then
      DadosBase0.CdSUsuario.Edit;
   if LVCompras.SelCount > 0 then
      VerificaSituacaoOperacoes(LVCompras,LVCompras.Selected.Index,TrVMenus.Items.Item[2].Text);
end;

procedure TFrmCadastroUsuario.LVFinanceiroClick(Sender: tObject);
begin
   if DadosBase0.CdSUsuario.State in [dsBrowse] then
      DadosBase0.CdSUsuario.Edit;
   if LVFinanceiro.SelCount > 0 then
      VerificaSituacaoOperacoes(LVFinanceiro,LVFinanceiro.Selected.Index,TrVMenus.Items.Item[1].Text);
end;

procedure TFrmCadastroUsuario.LVAdministradorClick(Sender: tObject);
begin
   if DadosBase0.CdSUsuario.State in [dsBrowse] then
      DadosBase0.CdSUsuario.Edit;
   if LVAdministrador.SelCount > 0 then
      VerificaSituacaoOperacoes(LVAdministrador,LVAdministrador.Selected.Index,TrVMenus.Items.Item[3].Text);
end;

procedure TFrmCadastroUsuario.LVInformacaoGerClick(Sender: tObject);
begin
   if DadosBase0.CdSUsuario.State in [dsBrowse] then
      DadosBase0.CdSUsuario.Edit;
   if LVInformacaoGer.SelCount > 0 then
      VerificaSituacaoOperacoes(LVInformacaoGer,LVInformacaoGer.Selected.Index,TrVMenus.Items.Item[5].Text);
end;

procedure TFrmCadastroUsuario.LVTelemarkClick(Sender: tObject);
begin
   if DadosBase0.CdSUsuario.State in [dsBrowse] then
      DadosBase0.CdSUsuario.Edit;
   if LVTelemark.SelCount > 0 then
      VerificaSituacaoOperacoes(LVTelemark,LVTelemark.Selected.Index,TrVMenus.Items.Item[3].Text);
end;

procedure TFrmCadastroUsuario.LVUtilClick(Sender: tObject);
begin
   if DadosBase0.CdSUsuario.State in [dsBrowse] then
      DadosBase0.CdSUsuario.Edit;
   if LVUtil.SelCount > 0 then
      VerificaSituacaoOperacoes(LVUtil,LVUtil.Selected.Index,TrVMenus.Items.Item[8].Text);
end;

procedure TFrmCadastroUsuario.GravaSituacaoOperacoesGeral(Sender: tObject; wNOME_NIVEL:String);
  Var
  I:Integer;
begin
   if Sender <> nil then
      begin
         for I := 0 to TListView(Sender).Items.Count -1 do
             if DadosBase0.CdSAcessosUsuario.Locate('USA_MENU',wNOME_NIVEL+TListView(Sender).Items.Item[I].Caption,[]) then
                begin
                   DadosBase0.CdSAcessosUsuario.Edit;
                   DadosBase0.CdSAcessosUsuario.FieldByName('USA_ACESSO').AsInteger      := TListView(Sender).Items.Item[I].ImageIndex;
                   DadosBase0.CdSAcessosUsuario.FieldByName('USA_ALTERACAO').AsString    := IIF(ChkAlteracao.State = cbChecked,'S','N');
                   DadosBase0.CdSAcessosUsuario.FieldByName('USA_INCLUSAO').AsString     := IIF(ChkInclusao.State  = cbChecked,'S','N');
                   DadosBase0.CdSAcessosUsuario.FieldByName('USA_EXCLUSAO').AsString     := IIF(ChkExclusao.State  = cbChecked,'S','N');
                   DadosBase0.CdSAcessosUsuario.Post;
                end
             else
                begin
                   DadosBase0.CdSAcessosUsuario.Insert;
                   DadosBase0.CdSAcessosUsuario.FieldByName('USA_MENU').AsString         := wNOME_NIVEL+TListView(Sender).Items.Item[I].Caption;
                   DadosBase0.CdSAcessosUsuario.FieldByName('USA_ACESSO').AsInteger      := TListView(Sender).Items.Item[I].ImageIndex;
                   DadosBase0.CdSAcessosUsuario.FieldByName('USA_ALTERACAO').AsString    := IIF(ChkAlteracao.State = cbChecked,'S','N');
                   DadosBase0.CdSAcessosUsuario.FieldByName('USA_INCLUSAO').AsString     := IIF(ChkInclusao.State  = cbChecked,'S','N');
                   DadosBase0.CdSAcessosUsuario.FieldByName('USA_EXCLUSAO').AsString     := IIF(ChkExclusao.State  = cbChecked,'S','N');
                   DadosBase0.CdSAcessosUsuario.ApplyUpdates(0);
                end;
      end;
end;

procedure TFrmCadastroUsuario.TiraAcessoMenuPrincipal;
 var
   I:Integer;
begin
   with TrVMenus.Items do
      begin
         Clear;
         for I := 0 to FrmMenu.MainMenu.Items.Count-1 do
            if FrmMenu.MainMenu.Items[I].Caption <> '-' then
               begin
                  AddChild(NodePrincipal,ExtrairCarecter(FrmMenu.MainMenu.Items[I].Caption));
                  TrVMenus.Items.Item[I].ImageIndex       := 0;
                  TrVMenus.Items.Item[I].SelectedIndex    := 0;
               end;
      end;

end;

procedure TFrmCadastroUsuario.TrVMenusClick(Sender: tObject);
begin
   if DadosBase0.CdSUsuario.State in [dsBrowse] then
      DadosBase0.CdSUsuario.Edit;
end;

procedure TFrmCadastroUsuario.VerificaSituacaoMenuPrincipal;
 var
   I:Integer;
begin
   with TrVMenus.Items do
      begin
         for I := 0 to Count-1 do
            if DadosBase0.CdSAcessosUsuario.Locate('USA_MENU',TrVMenus.Items.Item[I].Text,[]) then
               begin
                  TrVMenus.Items.Item[I].ImageIndex    := DadosBase0.CdSAcessosUsuario.FieldByName('USA_ACESSO').AsInteger;
                  TrVMenus.Items.Item[I].SelectedIndex := DadosBase0.CdSAcessosUsuario.FieldByName('USA_ACESSO').AsInteger;
               end
            else
               begin
                  TrVMenus.Items.Item[I].ImageIndex       := 0;
                  TrVMenus.Items.Item[I].SelectedIndex    := 0;
               end;
          TrVMenus.Refresh;
      end;

end;

procedure TFrmCadastroUsuario.ChkCreditoEnter(Sender: tObject);
begin
   if DadosBase0.CdSUsuario.State in [dsBrowse] then
      DadosBase0.CdSUsuario.Edit;
end;

procedure TFrmCadastroUsuario.ChkPrecosEnter(Sender: tObject);
begin
   if DadosBase0.CdSUsuario.State in [dsBrowse] then
      DadosBase0.CdSUsuario.Edit;
end;

procedure TFrmCadastroUsuario.ChkDescontosEnter(Sender: tObject);
begin
   if DadosBase0.CdSUsuario.State in [dsBrowse] then
      DadosBase0.CdSUsuario.Edit;
end;

procedure TFrmCadastroUsuario.VerificaAcessosUsuario;
 Var
 QryUsuario:TSQLClientDataSet;
begin
   try
      if dbInicio.Usuario.nome = FrmMenu.Status.Panels[1].text then
         begin
           {operaçoes do cadastro}
            try
              QryUsuario              := TSqlClientDataSet.Create(Nil);
              QryUsuario.DBConnection := DadosBase0.SQLConnection;
              QryUsuario.CommandText  := 'select USA_ALTERACAO,USA_INCLUSAO,USA_EXCLUSAO from USUARIO_ACESSO where USA_COD_USUARIO = '''+dbInicio.Usuario.Codigo+''' and USA_MENU = '''+ExtrairCarecter(FrmMenu.MainMenu.Items[0].Caption)+ExtrairCarecter(FrmMenu.mnusuarios.Caption)+'''';
              QryUsuario.Open;
              if not QryUsuario.IsEmpty then
                 begin
                     if (QryUsuario.FieldByName('USA_ALTERACAO').AsString = 'S') and (QryUsuario.FieldByName('USA_INCLUSAO').AsString = 'S') and (QryUsuario.FieldByName('USA_EXCLUSAO').AsString = 'S') then
                        DadosBase0.DsClientes.AutoEdit := True
                     else
                        DadosBase0.DsClientes.AutoEdit := False;
                    {inclusao}
                     if QryUsuario.FieldByName('USA_INCLUSAO').AsString = 'S' then
                        BitInclusao.Enabled  := True
                     else
                        BitInclusao.Enabled  := False;
                    {exclusao}
                     if QryUsuario.FieldByName('USA_EXCLUSAO').AsString = 'S' then
                        BitExclusao.Enabled  := True
                     else
                        BitExclusao.Enabled  := False;
                     //
                     if DadosBase0.CdSUsuario.IsEmpty then
                        begin
                           BitExclusao.Enabled  := False;
                           BitExclusao1.Enabled := False;
                        end;
                 end
              else
                 begin
                    //beep;
                    DadosBase0.DsClientes.AutoEdit := False;
                    uteis.aviso('Impossível atualizar operações para o usuário');
                 end;
            finally
              FreeAndNil(QryUsuario);
            end;
         end;;
   except
     //beep;
     DadosBase0.DsClientes.AutoEdit := False;
     BitInclusao.Enabled  := False;
     BitExclusao.Enabled  := False;
     uteis.erro  ('Impossível atribui acessos para o usuarios');
   end;
end;

procedure TFrmCadastroUsuario.DBGridUsuarioTitleClick(Column: TColumn);
begin
   screen.Cursor := crHourglass;
  {Recupera a cor original da coluna atualmente indexada}
//  if DadosBase0.CdSClientes.IndexFieldNames <> '' then
//    DBGriCliente.Columns[DadosBase0.CdSClientes.FieldByName(DadosBase0.CdSClientes.IndexFieldNames).Index].Title.Color := DBGriCliente.FixedColor;
  {Se o campo não for blob ou memo e se for do tipo data}
  if not (Column.Field.DataType in [ftBlob,ftMemo]) then
    if Column.Field.FieldKind = fkData then
    begin
       DadosBase0.CdSUsuario.IndexFieldNames := Column.FieldName;
//      Column.Title.Color := $00FFBB77;
    end;
   screen.Cursor := crDefault;

end;

procedure TFrmCadastroUsuario.GravaParametrosUsuario(wCOD_USUARIO:String);
begin
   try
    screen.Cursor := crHourglass;
     DadosBase3.CdSUsaParametro.Close;
     DadosBase3.CdSUsaParametro.CommandText     := 'select * from USUARIO_PARAMETRO where USP_COD_USUARIO = '''+wCOD_USUARIO+'''';
     DadosBase3.CdSUsaParametro.Open;
     if DadosBase3.CdSUsaParametro.IsEmpty then
        begin
           DadosBase3.CdSUsaParametro.Insert;
           DadosBase3.CdSUsaParametro.FieldByName('USP_COD_USUARIO').AsString               := wCOD_USUARIO;
           DadosBase3.CdSUsaParametro.FieldByName('USP_STAT_PRECO_BRUTO_P').AsString        := IIF(ChkPrecoBrutoP.Checked     = True,'S','N');
           DadosBase3.CdSUsaParametro.FieldByName('USP_STAT_PRECO_LIQUIDO_P').AsString      := IIF(ChkPrecoLiqP.Checked       = True,'S','N');
           DadosBase3.CdSUsaParametro.FieldByName('USP_STAT_DESC_AUTOMATICO_P').AsString    := IIF(ChkDescAutomaticoP.checked ,'S','N');
           DadosBase3.CdSUsaParametro.FieldByName('USP_DESCONTO_MAX_P').AsCurrency          := CurrDescMaxP.Value;
           DadosBase3.CdSUsaParametro.FieldByName('USP_REEMISSAO_PEDIDO_P').AsString        := IIF(ChkReeMissaoP.Checked      = True,'S','N');
           DadosBase3.CdSUsaParametro.FieldByName('USP_EXCLUSAO_PEDIDO_P').AsString         := IIF(ChkExclusaoPedP.Checked    = True,'S','N');
           DadosBase3.CdSUsaParametro.FieldByName('USP_STAT_PRECO_BRUTO_T').AsString        := IIF(ChkPrecoBrutoT.Checked     = True,'S','N');
           DadosBase3.CdSUsaParametro.FieldByName('USP_STAT_PRECO_LIQUIDO_T').AsString      := IIF(ChkPrecoLiqT.Checked       = True,'S','N');
           DadosBase3.CdSUsaParametro.FieldByName('USP_STAT_DESC_AUTOMATICO_T').AsString    := IIF(ChkDescAutomaticoT.checked ,'S','N');
           DadosBase3.CdSUsaParametro.FieldByName('USP_DESCONTO_MAX_T').AsCurrency          := CurrDescMaxT.Value;
           DadosBase3.CdSUsaParametro.FieldByName('USP_REEMISSAO_PEDIDO_T').AsString        := IIF(ChkReeMissaoT.Checked      = True,'S','N');
           DadosBase3.CdSUsaParametro.FieldByName('USP_EXCLUSAO_PEDIDO_T').AsString         := IIF(ChkExclusaoPedT.Checked    = True,'S','N');
           DadosBase3.CdSUsaParametro.FieldByName('USP_STAT_COMISSAO').AsString             := IIF(ChkComissao.Checked        = True,'S','N');
           DadosBase3.CdSUsaParametro.FieldByName('USP_STAT_CUSTO').AsString                := IIF(ChkCusto.Checked           = True,'S','N');
           DadosBase3.CdSUsaParametro.FieldByName('USP_STAT_MARGEM').AsString               := IIF(ChkMargem.Checked          = True,'S','N');
           DadosBase3.CdSUsaParametro.FieldByName('USP_STAT_PRECO_VENDA').AsString          := IIF(ChkPrecoVenda.Checked      = True,'S','N');
           DadosBase3.CdSUsaParametro.FieldByName('USP_STAT_MARGEM_MINIMA').AsString        := IIF(ChkMagemMinima.Checked     = True,'S','N');
           DadosBase3.CdSUsaParametro.FieldByName('USP_STAT_PRECO_OFERTA').AsString         := IIF(ChkPrecoOferta.Checked     = True,'S','N');
           DadosBase3.CdSUsaParametro.FieldByName('USP_ALTERA_DESCONTO_P').AsString         := IIF(ChkAlteraDescP.Checked     = True,'S','N');
           DadosBase3.CdSUsaParametro.FieldByName('USP_ALTERA_DESCONTO_T').AsString         := IIF(ChkAlteraDescT.Checked     = True,'S','N');
           DadosBase3.CdSUsaParametro.FieldByName('USP_DESCONTO_OFERTA_P').AsString         := IIF(ChkDescOfertaP.Checked     = True,'S','N');
           DadosBase3.CdSUsaParametro.FieldByName('USP_DESCONTO_OFERTA_T').AsString         := IIF(ChkDescOfertaT.Checked     = True,'S','N');
           DadosBase3.CdSUsaParametro.FieldByName('USP_ALTERA_NF_ENTRADA').AsString         := IIF(ChkAlteraNFEntrada.checked ,'S','N');
           DadosBase3.CdSUsaParametro.ApplyUpdates(0);
        end
     else
     if DadosBase3.CdSUsaParametro.FieldByName('USP_COD_USUARIO').AsString = wCOD_USUARIO then
        begin
           DadosBase3.CdSUsaParametro.Edit;
           DadosBase3.CdSUsaParametro.FieldByName('USP_STAT_PRECO_BRUTO_P').AsString        := IIF(ChkPrecoBrutoP.Checked     = True,'S','N');
           DadosBase3.CdSUsaParametro.FieldByName('USP_STAT_PRECO_LIQUIDO_P').AsString      := IIF(ChkPrecoLiqP.Checked       = True,'S','N');
           DadosBase3.CdSUsaParametro.FieldByName('USP_STAT_DESC_AUTOMATICO_P').AsString    := IIF(ChkDescAutomaticoP.checked ,'S','N');
           DadosBase3.CdSUsaParametro.FieldByName('USP_DESCONTO_MAX_P').AsCurrency          := CurrDescMaxP.Value;
           DadosBase3.CdSUsaParametro.FieldByName('USP_REEMISSAO_PEDIDO_P').AsString        := IIF(ChkReeMissaoP.Checked      = True,'S','N');
           DadosBase3.CdSUsaParametro.FieldByName('USP_EXCLUSAO_PEDIDO_P').AsString         := IIF(ChkExclusaoPedP.Checked    = True,'S','N');
           DadosBase3.CdSUsaParametro.FieldByName('USP_STAT_PRECO_BRUTO_T').AsString        := IIF(ChkPrecoBrutoT.Checked     = True,'S','N');
           DadosBase3.CdSUsaParametro.FieldByName('USP_STAT_PRECO_LIQUIDO_T').AsString      := IIF(ChkPrecoLiqT.Checked       = True,'S','N');
           DadosBase3.CdSUsaParametro.FieldByName('USP_STAT_DESC_AUTOMATICO_T').AsString    := IIF(ChkDescAutomaticoT.checked ,'S','N');
           DadosBase3.CdSUsaParametro.FieldByName('USP_DESCONTO_MAX_T').AsCurrency          := CurrDescMaxT.Value;
           DadosBase3.CdSUsaParametro.FieldByName('USP_REEMISSAO_PEDIDO_T').AsString        := IIF(ChkReeMissaoT.Checked      = True,'S','N');
           DadosBase3.CdSUsaParametro.FieldByName('USP_EXCLUSAO_PEDIDO_T').AsString         := IIF(ChkExclusaoPedT.Checked    = True,'S','N');
           DadosBase3.CdSUsaParametro.FieldByName('USP_STAT_COMISSAO').AsString             := IIF(ChkComissao.Checked        = True,'S','N');
           DadosBase3.CdSUsaParametro.FieldByName('USP_STAT_CUSTO').AsString                := IIF(ChkCusto.Checked           = True,'S','N');
           DadosBase3.CdSUsaParametro.FieldByName('USP_STAT_MARGEM').AsString               := IIF(ChkMargem.Checked          = True,'S','N');
           DadosBase3.CdSUsaParametro.FieldByName('USP_STAT_PRECO_VENDA').AsString          := IIF(ChkPrecoVenda.Checked      = True,'S','N');
           DadosBase3.CdSUsaParametro.FieldByName('USP_STAT_MARGEM_MINIMA').AsString        := IIF(ChkMagemMinima.Checked     = True,'S','N');
           DadosBase3.CdSUsaParametro.FieldByName('USP_STAT_PRECO_OFERTA').AsString         := IIF(ChkPrecoOferta.Checked     = True,'S','N');
           DadosBase3.CdSUsaParametro.FieldByName('USP_ALTERA_DESCONTO_P').AsString         := IIF(ChkAlteraDescP.Checked     = True,'S','N');
           DadosBase3.CdSUsaParametro.FieldByName('USP_ALTERA_DESCONTO_T').AsString         := IIF(ChkAlteraDescT.Checked     = True,'S','N');
           DadosBase3.CdSUsaParametro.FieldByName('USP_DESCONTO_OFERTA_P').AsString         := IIF(ChkDescOfertaP.Checked     = True,'S','N');
           DadosBase3.CdSUsaParametro.FieldByName('USP_DESCONTO_OFERTA_T').AsString         := IIF(ChkDescOfertaT.Checked     = True,'S','N');
           DadosBase3.CdSUsaParametro.FieldByName('USP_ALTERA_NF_ENTRADA').AsString         := IIF(ChkAlteraNFEntrada.checked ,'S','N');
           DadosBase3.CdSUsaParametro.ApplyUpdates(0);
        end;
    screen.Cursor := crDefault;
   except on E:EDataBaseError do
       begin
          //beep;
          screen.Cursor := crDefault;
          uteis.erro  (Pchar('Impossível acessar o arquivo: '+ #13#10 + E.message));
       end;
   end;
end;

procedure TFrmCadastroUsuario.ChkPrecoBrutoPEnter(Sender: tObject);
begin
   if DadosBase0.CdSUsuario.State in [dsBrowse] then
      DadosBase0.CdSUsuario.Edit;
end;

procedure TFrmCadastroUsuario.ChkPrecoLiqPEnter(Sender: tObject);
begin
   if DadosBase0.CdSUsuario.State in [dsBrowse] then
      DadosBase0.CdSUsuario.Edit;
end;

procedure TFrmCadastroUsuario.CurrDescMaxPKeyPress(Sender: tObject;
  var Key: Char);
begin
   if DadosBase0.CdSUsuario.State in [dsBrowse] then
      DadosBase0.CdSUsuario.Edit;
end;

procedure TFrmCadastroUsuario.ChkExclusaoPedPEnter(Sender: tObject);
begin
   if DadosBase0.CdSUsuario.State in [dsBrowse] then
      DadosBase0.CdSUsuario.Edit;

end;

procedure TFrmCadastroUsuario.ChkPrecoBrutoTEnter(Sender: tObject);
begin
   if DadosBase0.CdSUsuario.State in [dsBrowse] then
      DadosBase0.CdSUsuario.Edit;

end;

procedure TFrmCadastroUsuario.ChkPrecoLiqTEnter(Sender: tObject);
begin
   if DadosBase0.CdSUsuario.State in [dsBrowse] then
      DadosBase0.CdSUsuario.Edit;

end;

procedure TFrmCadastroUsuario.ChkDescAutomaticoTEnter(Sender: tObject);
begin
   if DadosBase0.CdSUsuario.State in [dsBrowse] then
      DadosBase0.CdSUsuario.Edit;

end;

procedure TFrmCadastroUsuario.CurrDescMaxTKeyPress(Sender: tObject;
  var Key: Char);
begin
   if DadosBase0.CdSUsuario.State in [dsBrowse] then
      DadosBase0.CdSUsuario.Edit;

end;

procedure TFrmCadastroUsuario.ChkReeMissaoTEnter(Sender: tObject);
begin
   if DadosBase0.CdSUsuario.State in [dsBrowse] then
      DadosBase0.CdSUsuario.Edit;

end;

procedure TFrmCadastroUsuario.ChkExclusaoPedTEnter(Sender: tObject);
begin
   if DadosBase0.CdSUsuario.State in [dsBrowse] then
      DadosBase0.CdSUsuario.Edit;

end;

procedure TFrmCadastroUsuario.ChkComissaoEnter(Sender: tObject);
begin
   if DadosBase0.CdSUsuario.State in [dsBrowse] then
      DadosBase0.CdSUsuario.Edit;

end;

procedure TFrmCadastroUsuario.ChkCustoEnter(Sender: tObject);
begin
   if DadosBase0.CdSUsuario.State in [dsBrowse] then
      DadosBase0.CdSUsuario.Edit;

end;

procedure TFrmCadastroUsuario.ChkMargemEnter(Sender: tObject);
begin
   if DadosBase0.CdSUsuario.State in [dsBrowse] then
      DadosBase0.CdSUsuario.Edit;

end;

procedure TFrmCadastroUsuario.ChkPrecoVendaEnter(Sender: tObject);
begin
   if DadosBase0.CdSUsuario.State in [dsBrowse] then
      DadosBase0.CdSUsuario.Edit;

end;

procedure TFrmCadastroUsuario.ChkMagemMinimaEnter(Sender: tObject);
begin
   if DadosBase0.CdSUsuario.State in [dsBrowse] then
      DadosBase0.CdSUsuario.Edit;

end;

procedure TFrmCadastroUsuario.ChkPrecoOfertaEnter(Sender: tObject);
begin
   if DadosBase0.CdSUsuario.State in [dsBrowse] then
      DadosBase0.CdSUsuario.Edit;

end;

procedure TFrmCadastroUsuario.AtribuiParametroUsuario(
  wCOD_USUARIO: String);
begin
   try
    screen.Cursor := crHourglass;
     DadosBase3.CdSUsaParametro.Close;
     DadosBase3.CdSUsaParametro.CommandText     := 'select * from USUARIO_PARAMETRO where USP_COD_USUARIO = '''+wCOD_USUARIO+'''';
     DadosBase3.CdSUsaParametro.Open;
     if not DadosBase3.CdSUsaParametro.IsEmpty then
        begin
           ChkPrecoBrutoP.Checked               := IIF(DadosBase3.CdSUsaParametro.FieldByName('USP_STAT_PRECO_BRUTO_P').AsString        = 'S',True,False);
           ChkPrecoLiqP.Checked                 := IIF(DadosBase3.CdSUsaParametro.FieldByName('USP_STAT_PRECO_LIQUIDO_P').AsString      = 'S',True,False);
           ChkDescAutomaticoP.Checked           := IIF(DadosBase3.CdSUsaParametro.FieldByName('USP_STAT_DESC_AUTOMATICO_P').AsString    = 'S',True,False);
           CurrDescMaxP.Value                   := DadosBase3.CdSUsaParametro.FieldByName('USP_DESCONTO_MAX_P').AsCurrency;
           ChkReeMissaoP.Checked                := IIF(DadosBase3.CdSUsaParametro.FieldByName('USP_REEMISSAO_PEDIDO_P').AsString        = 'S',True,False);
           ChkExclusaoPedP.Checked              := IIF(DadosBase3.CdSUsaParametro.FieldByName('USP_EXCLUSAO_PEDIDO_P').AsString         = 'S',True,False);
           ChkPrecoBrutoT.Checked               := IIF(DadosBase3.CdSUsaParametro.FieldByName('USP_STAT_PRECO_BRUTO_T').AsString        = 'S',True,False);
           ChkPrecoLiqT.Checked                 := IIF(DadosBase3.CdSUsaParametro.FieldByName('USP_STAT_PRECO_LIQUIDO_T').AsString      = 'S',True,False);
           ChkDescAutomaticoT.Checked           := IIF(DadosBase3.CdSUsaParametro.FieldByName('USP_STAT_DESC_AUTOMATICO_T').AsString    = 'S',True,False);
           CurrDescMaxT.Value                   := DadosBase3.CdSUsaParametro.FieldByName('USP_DESCONTO_MAX_T').AsCurrency;
           ChkReeMissaoT.Checked                := IIF(DadosBase3.CdSUsaParametro.FieldByName('USP_REEMISSAO_PEDIDO_T').AsString        = 'S',True,False);
           ChkExclusaoPedT.Checked              := IIF(DadosBase3.CdSUsaParametro.FieldByName('USP_EXCLUSAO_PEDIDO_T').AsString         = 'S',True,False);
          {produtos}
           ChkComissao.Checked                  := IIF(DadosBase3.CdSUsaParametro.FieldByName('USP_STAT_COMISSAO').AsString             = 'S',True,False);
           ChkCusto.Checked                     := IIF(DadosBase3.CdSUsaParametro.FieldByName('USP_STAT_CUSTO').AsString                = 'S',True,False);
           ChkMargem.Checked                    := IIF(DadosBase3.CdSUsaParametro.FieldByName('USP_STAT_MARGEM').AsString               = 'S',True,False);
           ChkPrecoVenda.Checked                := IIF(DadosBase3.CdSUsaParametro.FieldByName('USP_STAT_PRECO_VENDA').AsString          = 'S',True,False);
           ChkMagemMinima.Checked               := IIF(DadosBase3.CdSUsaParametro.FieldByName('USP_STAT_MARGEM_MINIMA').AsString        = 'S',True,False);
           ChkPrecoOferta.Checked               := IIF(DadosBase3.CdSUsaParametro.FieldByName('USP_STAT_PRECO_OFERTA').AsString         = 'S',True,False);
           ChkAlteraDescP.Checked               := IIF(DadosBase3.CdSUsaParametro.FieldByName('USP_ALTERA_DESCONTO_P').AsString         = 'S',True,False);
           ChkAlteraDescT.Checked               := IIF(DadosBase3.CdSUsaParametro.FieldByName('USP_ALTERA_DESCONTO_T').AsString         = 'S',True,False);
           ChkDescOfertaP.Checked               := IIF(DadosBase3.CdSUsaParametro.FieldByName('USP_DESCONTO_OFERTA_P').AsString         = 'S',True,False);
           ChkDescOfertaT.Checked               := IIF(DadosBase3.CdSUsaParametro.FieldByName('USP_DESCONTO_OFERTA_T').AsString         = 'S',True,False);
           ChkAlteraNFEntrada.Checked           := IIF(DadosBase3.CdSUsaParametro.FieldByName('USP_ALTERA_NF_ENTRADA').AsString         = 'S',True,False);
        end
     else
        begin
           ChkPrecoBrutoP.Checked               := False;
           ChkPrecoLiqP.Checked                 := False;
           ChkDescAutomaticoP.Checked           := False;
           CurrDescMaxP.Value                   := 0;
           ChkReeMissaoP.Checked                := False;
           ChkExclusaoPedP.Checked              := False;
           ChkPrecoBrutoT.Checked               := False;
           ChkPrecoLiqT.Checked                 := False;
           ChkDescAutomaticoT.Checked           := False;
           CurrDescMaxT.Value                   := 0;
           ChkReeMissaoT.Checked                := False;
           ChkExclusaoPedT.Checked              := False;
           ChkComissao.Checked                  := False;
           ChkCusto.Checked                     := False;
           ChkMargem.Checked                    := False;
           ChkPrecoVenda.Checked                := False;
           ChkMagemMinima.Checked               := False;
           ChkPrecoOferta.Checked               := False;
           ChkAlteraDescP.Checked               := False;
           ChkAlteraDescT.Checked               := False;
           ChkDescOfertaP.Checked               := False;
           ChkDescOfertaT.Checked               := False;
        end;
    screen.Cursor := crDefault;
   except on E:EDataBaseError do
       begin
          //beep;
          screen.Cursor := crDefault;
          uteis.erro  (Pchar('Impossível acessar o arquivo: '+ #13#10 + E.message));
       end;
   end;

end;

procedure TFrmCadastroUsuario.TabParametroShow(Sender: tObject);
begin
   AtribuiParametroUsuario(DBECodigo.Field.AsString);
end;

procedure TFrmCadastroUsuario.LvServicoClick(Sender: tObject);
begin
  if DadosBase0.CdSUsuario.State in [dsBrowse] then
      DadosBase0.CdSUsuario.Edit;
   if LVCadastros.SelCount > 0 then
      VerificaSituacaoOperacoes(LVServico,LVServico.Selected.Index,TrVMenus.Items.Item[4].Text);
end;

procedure TFrmCadastroUsuario.MostraMenus(Sender: tObject);
begin
   if Sender <> nil then
      begin
         with TListView(Sender) do
            begin
               Visible := True;
            end;
      end;
end;

procedure TFrmCadastroUsuario.HabilitaMenus(Sender: tObject);
 Var
  X:Integer;
begin
   if Sender <> nil then
      begin
         with TListView(Sender) do
            begin
               for X:= 0 to TrVMenus.Items.Count - 1 do
                 begin
                    if TrVMenus.Items.Item[X].Selected = True then
                       begin
                           if TrVMenus.Items.Item[X].ImageIndex = 0 then
                              begin
                                 Enabled      := False;
                                 Color        := clActiveBorder;//$00D7D7D7;
                              end
                           else
                              begin
                                 Enabled      := True;
                                 Color        := clWindow;
                              end;
                       end;
                 end;
            end;
      end;

end;

procedure TFrmCadastroUsuario.LVRelatoriosClick(Sender: tObject);
begin
  if DadosBase0.CdSUsuario.State in [dsBrowse] then
      DadosBase0.CdSUsuario.Edit;
   if LVRelatorios.SelCount > 0 then
      VerificaSituacaoOperacoes(LVRelatorios,LVRelatorios.Selected.Index,TrVMenus.Items.Item[5].Text);

end;

procedure TFrmCadastroUsuario.LVFaturamentoClick(Sender: tObject);
begin
  if DadosBase0.CdSUsuario.State in [dsBrowse] then
      DadosBase0.CdSUsuario.Edit;
   if LVFaturamento.SelCount > 0 then
      VerificaSituacaoOperacoes(LVFaturamento,LVFaturamento.Selected.Index,TrVMenus.Items.Item[5].Text);

end;

procedure TFrmCadastroUsuario.LVExpedicaoClick(Sender: tObject);
begin
  if DadosBase0.CdSUsuario.State in [dsBrowse] then
      DadosBase0.CdSUsuario.Edit;
   if LVExpedicao.SelCount > 0 then
      VerificaSituacaoOperacoes(LVExpedicao,LVExpedicao.Selected.Index,TrVMenus.Items.Item[5].Text);
end;

procedure TFrmCadastroUsuario.ChkDescAutomaticoPEnter(Sender: tObject);
begin
   if DadosBase0.CdSUsuario.State in [dsBrowse] then
      DadosBase0.CdSUsuario.Edit;
end;

procedure TFrmCadastroUsuario.ChkAlteraDescPEnter(Sender: tObject);
begin
   if DadosBase0.CdSUsuario.State in [dsBrowse] then
      DadosBase0.CdSUsuario.Edit;
end;

procedure TFrmCadastroUsuario.ChkDescOfertaPEnter(Sender: tObject);
begin
   if DadosBase0.CdSUsuario.State in [dsBrowse] then
      DadosBase0.CdSUsuario.Edit;
end;

procedure TFrmCadastroUsuario.ChkAlteraDescTEnter(Sender: tObject);
begin
   if DadosBase0.CdSUsuario.State in [dsBrowse] then
      DadosBase0.CdSUsuario.Edit;

end;

procedure TFrmCadastroUsuario.ChkDescOfertaTEnter(Sender: tObject);
begin
   if DadosBase0.CdSUsuario.State in [dsBrowse] then
      DadosBase0.CdSUsuario.Edit;

end;

end.
