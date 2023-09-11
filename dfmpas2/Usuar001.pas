unit Usuar001;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Mask, DBCtrls, Buttons, ExtCtrls, ImgList,
  Menus,Db, CheckLst, Grids, DBGrids,Inifiles,  RWfunc, System.ImageList, dbclient, JvExMask, JvToolEdit, JvDBControls,   JvExStdCtrls, JvEdit, JvValidateEdit, cxPCdxBarPopupMenu, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxPC, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxButtonEdit, RegularExpressions, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox;

type
  TFrmCadastroUsuario = class(TForm)
    ImageList1: TImageList;
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
    chkUsarCredito: TCheckBox;
    PageControl1: TPageControl;
    tabusu: TTabSheet;
    GroupBox3: TGroupBox;
    RadCodigo: TRadioButton;
    Radnome: TRadioButton;
    GbConsulta: TGroupBox;
    BitPesquisar: TBitBtn;
    BitSair1: TBitBtn;
    EdPesquisa: TEdit;
    GroupBox4: TGroupBox;
    DBGridUsuario: TDBGrid;
    TabUsuario: TTabSheet;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label4: TLabel;
    labe4: TLabel;
    Label1: TLabel;
    LabConfirma: TLabel;
    Label5: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DBECodigo: TDBEdit;
    DbeUsuario: TDBEdit;
    DBESenha: TDBEdit;
    EdConfirmaSenha: TMaskEdit;
    CbTipoUsuario: TComboBox;
    BoxOperacao: TGroupBox;
    ChkInclusao: TCheckBox;
    ChkExclusao: TCheckBox;
    ChkAlteracao: TCheckBox;
    chkRelatorio: TCheckBox;
    GroupBox5: TGroupBox;
    SpBSemAcess: TSpeedButton;
    SpBAcessTot: TSpeedButton;
    SpBAcessPar: TSpeedButton;
    SpBSomentLe: TSpeedButton;
    TrVMenus: TTreeView;
    BoxAcesso: TGroupBox;
    LVCadastros: TListView;
    LVFinanceiro: TListView;
    LVComercial: TListView;
    LVMovimentos: TListView;
    LVProducao: TListView;
    LVSIE: TListView;
    LVUtilitarios: TListView;
    LVConfiguracoes: TListView;
    lvFiscal: TListView;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBLookupVendedor: TDBLookupComboBox;
    EditCodigoRep: TEdit;
    DBEdit5: TDBEdit;
    DBDateEdit1: TJvDBDateEdit;
    DBDateEdit2: TJvDBDateEdit;
    Pn_Botoes: TPanel;
    DBNavega: TDBNavigator;
    BitInclusao: TBitBtn;
    BitExclusao: TBitBtn;
    BitConfirmar: TBitBtn;
    BitCancelar: TBitBtn;
    BitPesquisa: TBitBtn;
    BitSair: TBitBtn;
    TabParametro: TTabSheet;
    Bevel2: TBevel;
    BitConfirmar1: TBitBtn;
    BitCancelar1: TBitBtn;
    GroupBox11: TGroupBox;
    Pparametros: TScrollBox;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    tabProdutos: TcxTabSheet;
    tabENF: TcxTabSheet;
    tabGerencial: TcxTabSheet;
    tabKardex: TcxTabSheet;
    tabGerais: TcxTabSheet;
    tabFinanceiro: TcxTabSheet;
    chkReprovar: TCheckBox;
    chkAprovar: TCheckBox;
    GroupBox8: TGroupBox;
    DBEdit1: TDBEdit;
    DBEdit4: TDBEdit;
    tabEmpresa: TTabSheet;
    Label10: TLabel;
    GroupBox7: TGroupBox;
    edCod_Usu: TDBEdit;
    DBEdit7: TDBEdit;
    chkListEmpDisp: TCheckListBox;
    btnConfirmaEmpresa: TBitBtn;
    btnCancelaEmpresa: TBitBtn;
    ChkAlteraNFEntrada: TCheckBox;
    chkEstornoAprovacao: TCheckBox;
    chkEstornoReprovacao: TCheckBox;
    chkSolicitarPag: TCheckBox;
    SearchBox1: TcxTextEdit;
    ListBox1: TListBox;
    chkEstornarSolicitacao: TCheckBox;
    cxTabSheet2: TcxTabSheet;
    chkCustosproducao: TCheckBox;
    ChkComissao: TCheckBox;
    ChkPrecoVenda: TCheckBox;
    chkAlteraCustosAutomaticos: TCheckBox;
    ChkVisualizacustosProd: TCheckBox;
    ChkMagemMinima: TCheckBox;
    ChkCusto: TCheckBox;
    ChkMargem: TCheckBox;
    ChkPrecoOferta: TCheckBox;
    ChkAlteraComissao: TCheckBox;
    chkDashVendas: TCheckBox;
    ChkLiberaAnaliseCredito: TCheckBox;
    chkDashFin: TCheckBox;
    ChkLiberaAnaliseProducao: TCheckBox;
    chkTransfBancos: TCheckBox;
    ChkKardexLancEntrada: TCheckBox;
    ChkKardexLancSaida: TCheckBox;
    ChkKardexLancBalanco: TCheckBox;
    CHKLiberaColaborador: TCheckBox;
    chkAlterarClientes: TCheckBox;
    chkNovoCliente: TCheckBox;
    chkAbrirChamado: TCheckBox;
    CheckVisualizaClientes: TCheckBox;
    CheckVisualizaPedidos: TCheckBox;
    ChkAlteraDescP: TCheckBox;
    chkAlteraFormaPagFat: TCheckBox;
    chkAlteraTabelaPreco: TCheckBox;
    chkAnaliseCredito: TCheckBox;
    ChkAutorizaVendaAbaixo: TCheckBox;
    ChkCadastroProduto: TCheckBox;
    chkComissaoPedido: TCheckBox;
    chkEstornaExpedicao: TCheckBox;
    ChkExclusaoPedP: TCheckBox;
    ChkFuncaoReajuste: TCheckBox;
    chkMarkupPedido: TCheckBox;
    chkpermite_excluir_itens: TCheckBox;
    ChkPrazoDesabilitado: TCheckBox;
    ChkPrecoBrutoP: TCheckBox;
    ChkPrecoLiqP: TCheckBox;
    ChkReeMissaoP: TCheckBox;
    ChkRelatoriosP: TCheckBox;
    chkTransferenciaMercadorias: TCheckBox;
    CurrDescMaxP: TJvValidateEdit;
    edNumDiasOrca: TJvValidateEdit;
    Label11: TLabel;
    ldias: TLabel;
    lOrc: TLabel;
    chkBloquearVendedor: TCheckBox;
    chkAlterTipo: TCheckBox;
    Label12: TLabel;
    cbTipoPedido: TcxLookupComboBox;
    chkDescontoNota: TCheckBox;
    chkCampoTecnico: TCheckBox;
    cxTabSheet3: TcxTabSheet;
    chkHabilitaColunaNF: TCheckBox;
    BitDuplicar: TBitBtn;
    chkVisualizaAbaVenda: TCheckBox;
    chkDesabilitaCopiarPedido: TCheckBox;
    tabAlmoxarifado: TTabSheet;
    Label13: TLabel;
    GroupBox2: TGroupBox;
    edCod_Usu_Almox: TDBEdit;
    DBEdit8: TDBEdit;
    chkListAlmoxDisp: TCheckListBox;
    btnConfirmaAlmoxarifado: TBitBtn;
    btnCancelaAlmoxarifado: TBitBtn;
    chkPedidoAbaixoPrazoMinimo: TCheckBox;
    chkUSP_PROD_SEM_ALMOX: TCheckBox;
    GroupBox6: TGroupBox;
    chkUSP_AUTORIZA_COTACAO_MATERIAL: TCheckBox;
    chkUSP_AUTORIZA_COMPRA_MATERIAL: TCheckBox;
    chkUSP_REALIZA_COTACAO_MATERIAL: TCheckBox;
    GroupBox9: TGroupBox;
    chkUSP_AUTORIZA_RETIRADA_MATERIAL: TCheckBox;
    chkUSP_REALIZA_RETIRADA_MATERIAL: TCheckBox;
    chkExibeAbaInfoClientePedido: TCheckBox;
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
    procedure RadCodigoClick(Sender: tObject);
    procedure RadnomeClick(Sender: tObject);
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
    procedure ChkAlteracaoExit(Sender: tObject);
    procedure ChkInclusaoExit(Sender: tObject);
    procedure ChkExclusaoExit(Sender: tObject);
    procedure LVCadastrosClick(Sender: tObject);
    procedure LVUtilitariosClick(Sender: tObject);
    procedure LVFinanceiroClick(Sender: tObject);
    procedure LVComercialClick(Sender: tObject);
    procedure LVMovimentosClick(Sender: tObject);
    procedure LVProducaoClick(Sender: tObject);
    procedure LVSIEClick(Sender: tObject);
    procedure TrVMenusClick(Sender: tObject);
    procedure DBGridUsuarioTitleClick(Column: TColumn);
    procedure TabParametroShow(Sender: tObject);
    procedure LVConfiguracoesClick(Sender: tObject);
    procedure DBLookupVendedorDropDown(Sender: tObject);
    procedure DBLookupVendedorClick(Sender: tObject);
    procedure DBLookupVendedorKeyDown(Sender: tObject; var Key: Word;
      Shift: TShiftState);
    procedure DBLookupVendedorKeyUp(Sender: tObject; var Key: Word;
      Shift: TShiftState);
    procedure lvFiscalClick(Sender: tObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure chkRelatorioExit(Sender: TObject);
    procedure tabEmpresaShow(Sender: TObject);
    procedure chkListEmpDispClickCheck(Sender: TObject);
    procedure CurrDescMaxPChange(Sender: TObject);
    procedure SearchBox1PropertiesChange(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
    procedure SearchBox1Enter(Sender: TObject);
    procedure cxDBLookupComboBox1PropertiesChange(Sender: TObject);
    procedure BitDuplicarClick(Sender: TObject);
    procedure tabAlmoxarifadoShow(Sender: TObject);
    procedure chkListAlmoxDispClickCheck(Sender: TObject);
    procedure btnConfirmaAlmoxarifadoClick(Sender: TObject);
    procedure btnCancelaAlmoxarifadoClick(Sender: TObject);
    procedure chkUSP_PROD_SEM_ALMOXClick(Sender: TObject);
    procedure DBEdit3Change(Sender: TObject);
  private
    { Private declarations }
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

     fAlterou: boolean ;
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
     //procedure VerificaAcessosUsuario;
     procedure GravaParametrosUsuario(wCOD_USUARIO:String);
     procedure AtribuiParametroUsuario(wCOD_USUARIO:String);
     procedure AtualizaListasAcessosGeral;
     procedure LocalizaVendedor;
     procedure pegacodigorepres;
     procedure doClik(Sender: TObject);
  public
    { Public declarations }

     procedure HabilitaBotoes;
     procedure BotoesAcesso;

  end;

var
   FrmCadastroUsuario: TFrmCadastroUsuario;

implementation

uses Uteis, DataCad1, Men0001, DataCad, InicioDB, uCopiaUsuario;

{$R *.dfm}

procedure TFrmCadastroUsuario.FormShow(Sender: tObject);
begin
   try
     Screen.OnActiveControlChange   := MudaCorCampos;
     //
     DataCadastros1.CdSUsuario.Open;
     DataCadastros1.CdSAcessosUsuario.Open;
     //
     Try
      DataCadastros.CdsRepresentante.Close;
      DataCadastros.CdsRepresentante.CommandText := SQLDEF('REPRESENTANTES','SELECT * FROM REP0000','','REP_CODIGO','');
      DataCadastros.CdsRepresentante.Open;
      if DataCadastros.CdsRepresentante.IsEmpty Then
         begin
             DataCadastros.DsRepresentante.AutoEdit := False;
             EditCodigoRep.Enabled := False;
         end
       else
          LocalizaVendedor;

      except on E:EdatabaseError do
       uteis.erro  (Pchar('Impossível acessar Tabela "REPRESENTANTES"'+e.Message));
     end;
     tabFinanceiro.TabVisible :=  DBInicio.Empresa.bPMT_CONTROLE_CONTASPAGAR;


    {atribui os menus}
     AtribuiMenuPrincial;
    {}
     AtribuiMenus(LVCadastros,FrmMenu,'Cadastros');
     AtualizaListaAcessos(LVCadastros,TrVMenus.Items.Item[0].Text);

     AtribuiMenus(LVFinanceiro,FrmMenu,'Financeiro');
     AtualizaListaAcessos(LVFinanceiro,TrVMenus.Items.Item[1].Text);

     AtribuiMenus(LVComercial,FrmMenu,'Comercial');
     AtualizaListaAcessos(LVComercial,TrVMenus.Items.Item[2].Text);

     AtribuiMenus(LVMovimentos,FrmMenu,'Movimentos');
     AtualizaListaAcessos(LVMovimentos,TrVMenus.Items.Item[3].Text);

     AtribuiMenus(lvFiscal,FrmMenu,'Fiscal');
     AtualizaListaAcessos(lvFiscal,TrVMenus.Items.Item[4].Text);

     AtribuiMenus(LVProducao,FrmMenu,'Producao');
     AtualizaListaAcessos(LVProducao,TrVMenus.Items.Item[5].Text);

     AtribuiMenus(LVSIE,FrmMenu,'Gerencial');
     AtualizaListaAcessos(LVSIE,TrVMenus.Items.Item[6].Text);

     AtribuiMenus(LVConfiguracoes,FrmMenu,'Configuracoes');
     AtualizaListaAcessos(LvConfiguracoes,TrVMenus.Items.Item[7].Text);

     AtribuiMenus(LVUtilitarios,FrmMenu,'Administrador');
     AtualizaListaAcessos(LVUtilitarios,TrVMenus.Items.Item[8].Text);
     //
     VerificaAtualizaCredito;
     PageControl1.ActivePage := tabusu;
     //EdPesquisa.SetFocus;
    // EdPesquisa.SelectAll;
     HabilitaBotoes;
     //VerificaAcessosUsuario;
   except on E:EDataBaseError do
       begin
          uteis.erro  (Pchar('Impossível abrir o arquivo: '+ #13 + E.message));
       end;
   end;
end;

procedure TFrmCadastroUsuario.ListBox1Click(Sender: TObject);
begin
 if ListBox1.Count =0  then
   exit;

 //   TCheckBox(ListBox1.Items.Objects[ ListBox1.ItemIndex ]).SetFocus;
  if TWinControl(ListBox1.Items.Objects[ ListBox1.ItemIndex ]).CanFocus then
  begin
   TWinControl(ListBox1.Items.Objects[ ListBox1.ItemIndex ]).SetFocus;

   TCheckBox(ListBox1.Items.Objects[ ListBox1.ItemIndex ]).Color := clRed;
  // TButtonControl(ListBox1.Items.Objects[ ListBox1.ItemIndex ]).
  end;
  ListBox1.Visible := False;
end;

procedure TFrmCadastroUsuario.LocalizaVendedor;
begin
   EditCodigoRep.Text := DataCadastros1.CdSUsuarioREP_CODIGO.AsString;
   if DataCadastros.CdsRepresentante.Locate('REP_CODIGO',EditCodigoRep.Text,[]) = False then
      EditCodigoRep.Text := '000'
      
end;

procedure TFrmCadastroUsuario.FormClose(Sender: TObject; var Action: TCloseAction);
begin

     if fAlterou then
     begin
//        DataCadastros1.cdsTipoPedido.Close;
        ModalResult := mrOk
     end
     Else
         ModalResult := mrCancel;

end;

procedure TFrmCadastroUsuario.FormCloseQuery(Sender: tObject;
  var CanClose: Boolean);
begin
   try
     VerificaEdicao;
     Screen.OnActiveControlChange   := Nil;
     DataCadastros1.CdSUsuario.Close;
     DataCadastros1.CdSAcessosUsuario.Close;
     DataCadastros1.CdSUsaParametro.Close;
     DataCadastros.CdsRepresentante.Close;
   except on E:EDataBaseError do
       begin
          uteis.erro  (Pchar('Impossível fechar o arquivo: '+ #13 + E.message));
       end;
   end;
end;

procedure TFrmCadastroUsuario.HabilitaBotoes;
begin
   BitDuplicar.Enabled   := DataCadastros1.CdSUsuario.State in [dsBrowse,dsInactive];
   BitInclusao.Enabled   := DataCadastros1.CdSUsuario.State in [dsBrowse,dsInactive];
   BitExclusao.Enabled   := DataCadastros1.CdSUsuario.State in [dsBrowse];
   BitSair.Enabled       := DataCadastros1.CdSUsuario.State in [dsBrowse,dsInactive];
   BitPesquisa.Enabled   := DataCadastros1.CdSUsuario.State in [dsBrowse,dsInactive];
   DBNavega.Enabled      := DataCadastros1.CdSUsuario.State in [dsBrowse,dsInactive];
   BitConfirmar.Enabled  := DataCadastros1.CdSUsuario.State in [dsInsert,dsEdit];
//   BitConfirmar1.Enabled  := DataCadastros1.CdSUsuario.State in [dsInsert,dsEdit];
   BitCancelar.Enabled   := DataCadastros1.CdSUsuario.State in [dsInsert,dsEdit];
  // BitCancelar1.Enabled   := DataCadastros1.CdSUsuario.State in [dsInsert,dsEdit];
   if DataCadastros1.CdSUsuario.IsEmpty then
      begin
         BitExclusao.Enabled  := False;
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
    if (DataCadastros1.CdSUsuario.State in [dsEdit,dsInsert]) or (DataCadastros1.CdSAcessosUsuario.State in [dsEdit,dsInsert]) then
       begin
         if uteis.confirmacao ( 'Deseja salvar Alterações ?')= idyes then
            begin
               try
                {Salva o registro}
                 VerificaAtualizaCredito;
                 DataCadastros1.CdSUsuario.ApplyUpdates(0);
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
                 DataCadastros1.CdSUsuario.Cancel;
                 DataCadastros1.CdSAcessosUsuario.Cancel;
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
      DataCadastros1.CdSUsuario.Insert;
      // atribui campos default de parametros dos usuários


     {novo}
       TiraAcessoMenuPrincipal;

       AtribuiMenus(LVCadastros,FrmMenu,'Cadastros');

       AtribuiMenus(LVFinanceiro,FrmMenu,'Financeiro');

       AtribuiMenus(LVComercial,FrmMenu,'Comercial');

       AtribuiMenus(LVMovimentos,FrmMenu,'Movimentos');

       AtribuiMenus(lvFiscal,FrmMenu,'Fiscal');

       AtribuiMenus(LvProducao,FrmMenu,'Producao');

       AtribuiMenus(LVSIE,FrmMenu,'Gerencial');

       AtribuiMenus(LVConfiguracoes,FrmMenu,'Configuracoes');

       AtribuiMenus(LVUtilitarios,FrmMenu,'Administrador');       



      GravaNivelAcessos;
      VerificaAtualizaCredito;
      HabilitaBotoes;
      CbTipoUsuario.ItemIndex   := 2;
      //DbeUsuario.SetFocus;
  except on E:EDataBaseError do
      begin
         uteis.erro  (PChar('Impossível inserir dados novos:' + #13 + E.Message));
         exit;
      end;
  end;

end;

procedure TFrmCadastroUsuario.BitExclusaoClick(Sender: tObject);
begin
   if uteis.confirmacao ( 'Confirma a exclusao do usuário atual ?')=mryes then
       begin
           DataCadastros1.CdSUsuario.Delete;
           DataCadastros1.CdSUsuario.ApplyUpdates(0);
           HabilitaBotoes;
          //
           VerificaAtualizaCredito;
           VerificaSituacaoMenuPrincipal;
           AtualizaListasAcessosGeral;


       end;
end;

procedure TFrmCadastroUsuario.BitConfirmarClick(Sender: tObject);
begin
  if chkAbrirChamado.Checked then
     if DBInicio.BuscaUmDadoSqlAsInteger('SELECT COUNT (*) FROM USUARIO_PARAMETRO WHERE USP_ABRICHAMADO =''S'' AND USP_COD_USUARIO <> ' + DBECodigo.Field.AsString) >= 2 then
     begin
      chkAbrirChamado.Checked := false;
      raise Exception.Create('Somente dois usuários podem abrir chamados');
     end;
  try
     VerificaAtualizaCredito;
     GravaNivelAcessos;
     if DataCadastros1.CdSUsuario.changecount> 0 then
     begin
       DataCadastros1.CdSUsuarioREP_CODIGO.AsString := EditCodigoRep.Text;
       DataCadastros1.CdSUsuario.ApplyUpdates(0);
     end;
     DataCadastros1.cdsEmpUsu.ApplyUpdates(0);
     GravaParametrosUsuario(DBECodigo.Field.AsString);
    {chama a rotina habilita botoes}
     HabilitaBotoes;
     EdConfirmaSenha.Clear;
    {
     if PageControl1.ActivePage = TabUsuario then
        DbeUsuario.SetFocus;
     if PageControl1.ActivePage = TabParametro then
        DBEdit1.SetFocus;      }
     fAlterou:=True;
     Aviso('Gravado com sucesso');
      BitConfirmar.Enabled := False;
  except
    aviso('Não gravado');
  end;

end;

procedure TFrmCadastroUsuario.BitCancelarClick(Sender: tObject);
begin
   if uteis.confirmacao ( 'Deseja Cancelar a Operacao Atual ?')= mryes then
      begin
         screen.Cursor := crHourglass;
         try
          {Cancela o registro}
           DataCadastros1.CdSUsuario.Cancel;
           DataCadastros1.CdSAcessosUsuario.CancelUpdates;
           DataCadastros1.cdsEmpUsu.CancelUpdates;
           EdConfirmaSenha.Clear;
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
         AtualizaListasAcessosGeral;
        {foco no
         if PageControl1.ActivePage = TabUsuario then
            DbeUsuario.SetFocus;
         if PageControl1.ActivePage = TabParametro then
            DBEdit1.SetFocus;      }
        screen.Cursor := crDefault;
        BitConfirmar1.Enabled := False;
        BitCancelar1.Enabled := False;
      end;
end;

procedure TFrmCadastroUsuario.BitPesquisaClick(Sender: tObject);
begin
   PageControl1.ActivePage := tabusu;
end;

procedure TFrmCadastroUsuario.BitSairClick(Sender: tObject);
begin
   close;
end;

procedure TFrmCadastroUsuario.BotoesAcesso;
begin
     if assigned(FrmCadastroUsuario) then
     begin
       BitInclusao.Enabled := Uteis.AcessoUsuario('ConfiguraçõesCadastro de Usuários',DBInicio.Usuario.CODIGO,FrmCadastroUsuario).Incluir;
       BitExclusao.Enabled := Uteis.AcessoUsuario('ConfiguraçõesCadastro de Usuários',DBInicio.Usuario.CODIGO,FrmCadastroUsuario).Exluir;
       DataCadastros1.DsUsuario.AutoEdit := Uteis.AcessoUsuario('ConfiguraçõesCadastro de Usuários',DBInicio.Usuario.CODIGO,FrmCadastroUsuario).Alterar;
     end;
end;

procedure TFrmCadastroUsuario.btnCancelaAlmoxarifadoClick(Sender: TObject);
begin
  DataCadastros1.cdsAlmoxUsu.CancelUpdates;
  tabAlmoxarifadoShow(Sender);
  btnConfirmaAlmoxarifado.Enabled := False;
  btnCancelaAlmoxarifado.Enabled := False;
end;

procedure TFrmCadastroUsuario.btnConfirmaAlmoxarifadoClick(Sender: TObject);
begin
  DataCadastros1.cdsAlmoxUsu.ApplyUpdates(0);
  GravaParametrosUsuario(IntToStr(StrToInt(edCod_Usu_Almox.Text)));
  btnConfirmaAlmoxarifado.Enabled := False;
  btnCancelaAlmoxarifado.Enabled := False;

end;

procedure TFrmCadastroUsuario.BitDuplicarClick(Sender: TObject);
begin
  if not assigned(frmCopiaUsuario) then
    frmCopiaUsuario := TfrmCopiaUsuario.Create(Application);
  frmCopiaUsuario.ShowModal;
end;

procedure TFrmCadastroUsuario.DBEdit3Change(Sender: TObject);
begin
  if (DataCadastros1.CdSUsuario.State in dsEditModes) then
  begin
    DataCadastros1.CdSUsuarioUSU_LOGIN.AsString := RetiraAcentos(DBEdit3.Text);
    DBEdit3.Perform(WM_KeyDown, VK_END, 0);
  end;
end;

procedure TFrmCadastroUsuario.DBESenhaKeyPress(Sender: tObject;
  var Key: Char);
begin
   if DataCadastros1.DsUsuario.AutoEdit then
      begin
         if NOT LabConfirma.Visible then
            LabConfirma.Visible     := True;
         if NOT EdConfirmaSenha.Visible then
            EdConfirmaSenha.Visible := True;
      end;
end;


procedure TFrmCadastroUsuario.VerificaAtualizaCredito;
begin
   if DataCadastros1.CdSUsuario.State in [dsInsert,dsEdit] then
      begin
         case CbTipoUsuario.ItemIndex of
           0: DataCadastros1.CdSUsuarioUSU_TIPO_USUARIO.AsString := 'A';
           1: DataCadastros1.CdSUsuarioUSU_TIPO_USUARIO.AsString := 'G';
           2: DataCadastros1.CdSUsuarioUSU_TIPO_USUARIO.AsString := 'U';
         end;
      end
   else
     if DataCadastros1.CdSUsuario.State in [dsBrowse] then
        begin
           if DataCadastros1.CdSUsuarioUSU_TIPO_USUARIO.AsString = 'A' then
              CbTipoUsuario.ItemIndex := 0
           else
           if DataCadastros1.CdSUsuarioUSU_TIPO_USUARIO.AsString = 'G' then
              CbTipoUsuario.ItemIndex := 1
           else
           if DataCadastros1.CdSUsuarioUSU_TIPO_USUARIO.AsString = 'U' then
              CbTipoUsuario.ItemIndex := 2;
        end;
end;

procedure TFrmCadastroUsuario.DBNavegaClick(Sender: tObject;
  Button: TNavigateBtn);
begin
   VerificaEdicao;
   VerificaSituacaoMenuPrincipal;
  {}
   AtualizaListasAcessosGeral;
   VerificaAtualizaCredito;
   AtribuiParametroUsuario(DBECodigo.Field.AsString);
end;

procedure TFrmCadastroUsuario.doClik(Sender: TObject);
begin
  if DataCadastros1.CdSUsuario.State in [dsBrowse] then
     DataCadastros1.CdSUsuario.Edit;
  BitConfirmar1.Enabled := True;
  BitCancelar1.Enabled := True;

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
            DataCadastros1.CdSUsuario.Close;
            DataCadastros1.CdSUsuario.CommandText := 'select * from USUARIO where USU_CODIGO ='+EdPesquisa.Text;
            DataCadastros1.CdSUsuario.open;
            if DataCadastros1.CdSUsuario.IsEmpty then
               begin
                  //beep;
                  uteis.aviso('Usuário não cadastrado com esse código ...');
                  DataCadastros1.CdSUsuario.Close;
                  DataCadastros1.CdSUsuario.CommandText := 'select * from USUARIO';
                  DataCadastros1.CdSUsuario.Open;
                  //EdPesquisa.SetFocus;
                 // EdPesquisa.SelectAll;
               end
            else
               begin
                  DBGridUsuario.SetFocus;
               end;
         end
      else
      if Radnome.Checked  = True then
         begin
            DataCadastros1.CdSUsuario.Close;
            DataCadastros1.CdSUsuario.CommandText := 'select * from USUARIO where USU_NOME like '''+EdPesquisa.Text+'%''';
            DataCadastros1.CdSUsuario.open;
            if DataCadastros1.CdSUsuario.IsEmpty then
               begin
                  //beep;
                  uteis.aviso('Usuário não cadastrado com esse nome ...');
                  DataCadastros1.CdSUsuario.Close;
                  DataCadastros1.CdSUsuario.CommandText := 'select * from USUARIO';
                  DataCadastros1.CdSUsuario.Open;
                 // EdPesquisa.SetFocus;
                 // EdPesquisa.SelectAll;
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

procedure TFrmCadastroUsuario.TabUsuarioShow(Sender: tObject);
begin
  // DbeUsuario.SetFocus;
  // DbeUsuario.SelectAll;
   VerificaEdicao;
   If DataCadastros1.CdSUsuario.Active = false then
      begin
         DataCadastros1.CdSUsuario.Open;
         DataCadastros1.CdSAcessosUsuario.Open;
      end;
  {}
   VerificaSituacaoMenuPrincipal;
  {}
   AtualizaListasAcessosGeral;
   VerificaAtualizaCredito;
   AtribuiParametroUsuario(DBECodigo.Field.AsString);
end;

procedure TFrmCadastroUsuario.CbTipoUsuarioClick(Sender: tObject);
begin
   if DataCadastros1.CdSUsuario.State in [dsBrowse] then
      DataCadastros1.CdSUsuario.Edit;
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
   LocalizaVendedor;
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
         if DataCadastros1.CdSUsuario.Active then
            begin
                if (DataCadastros1.CdSUsuario.State <> dsEdit) and (DataCadastros1.CdSUsuario.State <> dsInsert) then
                  begin
                     VerificaEdicao;
                     DataCadastros1.CdSUsuario.Prior;
                     VerificaSituacaoMenuPrincipal;
                    {}
                     AtualizaListasAcessosGeral;                 
                     VerificaAtualizaCredito;
                     AtribuiParametroUsuario(DBECodigo.Field.AsString);
                  end;
            end;
         Key := 0;
      end;
   if key = 34 then
      begin
         {Page Down}
         if DataCadastros1.CdSUsuario.Active then
            begin
                if (DataCadastros1.CdSUsuario.State <> dsEdit) and (DataCadastros1.CdSUsuario.State <> dsInsert) then
                  begin
                     VerificaEdicao;
                     DataCadastros1.CdSUsuario.Next;
                     VerificaSituacaoMenuPrincipal;
                    {}
                     AtualizaListasAcessosGeral;
                     VerificaAtualizaCredito;
                     AtribuiParametroUsuario(DBECodigo.Field.AsString);
                  end;
            end;
          Key := 0;
      end;
end;

procedure TFrmCadastroUsuario.FormCreate(Sender: tObject);
var
  clone : TClientDataSet;
  i,j :Integer;
begin
  for I := 0 to cxPageControl1.PageCount-1 do
   for j:=0 to cxPageControl1.Pages[I].ControlCount-1 do
   begin
     if cxPageControl1.Pages[I].Controls[j] is TCheckBox then
        TCheckBox( cxPageControl1.Pages[I].Controls[j]).OnClick := doClik;
   end;
    {}
   //MainMenu
   ListaMenu[0]  := LVCadastros;
   ListaMenu[1]  := LVFinanceiro;
   ListaMenu[2]  := LVComercial;
   ListaMenu[3]  := LVMovimentos;
   ListaMenu[4]  := lvFiscal;
   ListaMenu[5]  := LVProducao;
   ListaMenu[6]  := LvSIE;
   ListaMenu[7]  := LVConfiguracoes;
   ListaMenu[8]  := LVUtilitarios;
   //
   PageControl1.ActivePage := tabusu;

   fAlterou:=False;
   DataCadastros.CdsEmpresa.Open;
   if not DataCadastros.CdsEmpresa.IsEmpty then
   begin
      clone := TClientDataSet.Create(Self);
      try
        clone.CloneCursor( DataCadastros.CdsEmpresa, false);
        clone.First;
        while not clone.Eof do
        begin
         chkListEmpDisp.Items.Add(clone.FieldByName('emp_codigo').AsString+'-'+ clone.FieldByName('emp_razao').AsString);
         clone.Next;
        end;
      finally
        clone.Free;
      end;
   end;


   DataCadastros.cdsAlmoxarifado.Open;
   if not DataCadastros.cdsAlmoxarifado.IsEmpty then
   begin
      clone := TClientDataSet.Create(Self);
      try
        clone.CloneCursor( DataCadastros.cdsAlmoxarifado, false);
        clone.First;
        while not clone.Eof do
        begin
         chkListAlmoxDisp.Items.Add(clone.FieldByName('AMX_CODIGO').AsString+'-'+ clone.FieldByName('AMX_DESCRI').AsString);
         clone.Next;
        end;
      finally
        clone.Free;
      end;
   end;




   DataCadastros1.cdsTipoPedido.Close;
   DataCadastros1.cdsTipoPedido.Open;
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
                  if DataCadastros1.CdSAcessosUsuario.Locate('USA_MENU',TrVMenus.Items.Item[I].Text,[]) then
                     begin
                        TrVMenus.Items.Item[I].ImageIndex    := DataCadastros1.CdSAcessosUsuario.FieldByName('USA_ACESSO').AsInteger;
                        TrVMenus.Items.Item[I].SelectedIndex := DataCadastros1.CdSAcessosUsuario.FieldByName('USA_ACESSO').AsInteger;
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
   chkRelatorio.Checked  := False;
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
   LVComercial.Visible     := False;
   LVMovimentos.Visible    := False;
   LVProducao.Visible      := False;
   LvSIE.Visible           := False;
   LVConfiguracoes.Visible := False;
   LVUtilitarios.Visible   := False;
   lvFiscal.Visible        := False;     
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
   chkRelatorio.Checked  := True;
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
      fAlterou:=True;
   end;
end;

procedure TFrmCadastroUsuario.SearchBox1Enter(Sender: TObject);
begin
  ListBox1.Visible :=  Length( SearchBox1.Text ) > 2;
end;

procedure TFrmCadastroUsuario.SearchBox1PropertiesChange(Sender: TObject);
var i,j : integer;
capt, dica :string;
begin
  if  Length( SearchBox1.Text ) < 3 then
    exit;
  ListBox1.Clear;
  listbox1.Visible := False;
  for I := 0 to cxPageControl1.PageCount - 1 do
  begin
    for j:= 0 to cxPageControl1.Pages[i].ControlCount-1 do
    begin
     if cxPageControl1.Pages[i].Controls[j] is TCheckBox then
     begin
       capt := TCheckBox( cxPageControl1.Pages[i].Controls[j]).Caption;
       capt := Trim(StringReplace( capt,'&','',[rfReplaceAll]));
       dica := trim(TCheckBox( cxPageControl1.Pages[i].Controls[j]).Hint);
        if TRegEx.IsMatch( capt, SearchBox1.text,[roIgnoreCase]) then
         ListBox1.AddItem(capt, TCheckBox(cxPageControl1.Pages[i].Controls[j]));

     end;

    end;
  end;
   listbox1.Visible := True;

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
          chkRelatorio.Checked  := False;
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
          chkRelatorio.Checked  := False;
          GravaSituacaoOperacoes(LVFinanceiro,LVFinanceiro.Selected.Index,TrVMenus.Items.Item[1].Text);
      end
   else
   if (LVComercial.Visible) and (LVComercial.SelCount > 0) then
      begin
         AtribuiTipodeAcesso(LVComercial,'Sem Acesso',0);
         BoxOperacao.Enabled   := False;
         BoxOperacao.Color     := clActiveBorder;
         ChkAlteracao.Checked  := False;
         ChkInclusao.Checked   := False;
         ChkExclusao.Checked   := False;
         chkRelatorio.Checked  := False;
         GravaSituacaoOperacoes(LVComercial,LVComercial.Selected.Index,TrVMenus.Items.Item[2].Text);
      end
   else
   if (LVMovimentos.Visible) and (LVMovimentos.SelCount > 0) then
       begin
          AtribuiTipodeAcesso(LVMovimentos,'Sem Acesso',0);
          BoxOperacao.Enabled   := False;
          BoxOperacao.Color     := clActiveBorder;
          ChkAlteracao.Checked  := False;
          ChkInclusao.Checked   := False;
          ChkExclusao.Checked   := False;
          chkRelatorio.Checked  := False;
          GravaSituacaoOperacoes(LVMovimentos,LVMovimentos.Selected.Index,TrVMenus.Items.Item[3].Text);
       end
    else
    if (lvFiscal.Visible) and (lvFiscal.SelCount > 0) then
       begin
          AtribuiTipodeAcesso(lvFiscal,'Sem Acesso',0);
          BoxOperacao.Enabled   := False;
          BoxOperacao.Color     := clActiveBorder;
          ChkAlteracao.Checked  := False;
          ChkInclusao.Checked   := False;
          ChkExclusao.Checked   := False;
          chkRelatorio.Checked  := False;
          GravaSituacaoOperacoes(lvFiscal,lvFiscal.Selected.Index,TrVMenus.Items.Item[4].Text);
       end
    else
    if (LVProducao.Visible) and (LVProducao.SelCount > 0) then
       begin
          AtribuiTipodeAcesso(LVProducao,'Sem Acesso',0);
          BoxOperacao.Enabled   := False;
          BoxOperacao.Color     := clActiveBorder;
          ChkAlteracao.Checked  := False;
          ChkInclusao.Checked   := False;
          ChkExclusao.Checked   := False;
          chkRelatorio.Checked  := False;
          GravaSituacaoOperacoes(LVProducao,LVProducao.Selected.Index,TrVMenus.Items.Item[5].Text);
       end
    else
    if (LvSIE.Visible) and (LvSIE.SelCount > 0) then
       begin
          AtribuiTipodeAcesso(LVSIE,'Sem Acesso',0);
          BoxOperacao.Enabled   := False;
          BoxOperacao.Color     := clActiveBorder;
          ChkAlteracao.Checked  := False;
          ChkInclusao.Checked   := False;
          ChkExclusao.Checked   := False;
          chkRelatorio.Checked  := False;
          GravaSituacaoOperacoes(LVSIE,LVSIE.Selected.Index,TrVMenus.Items.Item[6].Text);
       end
   else
   if (LVConfiguracoes.Visible) and (LVConfiguracoes.SelCount > 0) then
      begin
          AtribuiTipodeAcesso(LVConfiguracoes,'Sem Acesso',0);
          BoxOperacao.Enabled   := False;
          BoxOperacao.Color     := clActiveBorder;
          ChkAlteracao.Checked  := False;
          ChkInclusao.Checked   := False;
          ChkExclusao.Checked   := False;
          chkRelatorio.Checked  := False;
          GravaSituacaoOperacoes(LVConfiguracoes,LVConfiguracoes.Selected.Index,TrVMenus.Items.Item[7].Text);
      end
   else      
   if (LVUtilitarios.Visible) and (LVUtilitarios.SelCount > 0) then
       begin
          AtribuiTipodeAcesso(LVUtilitarios,'Sem Acesso',0);
          BoxOperacao.Enabled   := False;
          BoxOperacao.Color     := clActiveBorder;
          ChkAlteracao.Checked  := False;
          ChkInclusao.Checked   := False;
          ChkExclusao.Checked   := False;
          chkRelatorio.Checked  := False;
          GravaSituacaoOperacoes(LVUtilitarios,LVUtilitarios.Selected.Index,TrVMenus.Items.Item[8].Text);
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
          chkRelatorio.Checked  := True;
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
          chkRelatorio.Checked  := True;
          GravaSituacaoOperacoes(LVFinanceiro,LVFinanceiro.Selected.Index,TrVMenus.Items.Item[1].Text);
      end
   else
   if (LVComercial.Visible) and (LVComercial.SelCount > 0) then
      begin
         AtribuiTipodeAcesso(LVComercial,'Acesso Total',1);
          BoxOperacao.Enabled   := False;
          BoxOperacao.Color     := clActiveBorder;;
          ChkAlteracao.Checked  := True;
          ChkInclusao.Checked   := True;
          ChkExclusao.Checked   := True;
          chkRelatorio.Checked  := True;
         GravaSituacaoOperacoes(LVComercial,LVComercial.Selected.Index,TrVMenus.Items.Item[2].Text);
      end
   else
   if (LVMovimentos.Visible) and (LVMovimentos.SelCount > 0) then
       begin
          AtribuiTipodeAcesso(LVMovimentos,'Acesso Total',1);
          BoxOperacao.Enabled   := False;
          BoxOperacao.Color     := clActiveBorder;;
          ChkAlteracao.Checked  := True;
          ChkInclusao.Checked   := True;
          ChkExclusao.Checked   := True;
          chkRelatorio.Checked  := True;
          GravaSituacaoOperacoes(LVMovimentos,LVMovimentos.Selected.Index,TrVMenus.Items.Item[3].Text);
       end
    else
    if (lvFiscal.Visible) and (lvFiscal.SelCount > 0) then
       begin
          AtribuiTipodeAcesso(lvFiscal,'Acesso Total',1);
          BoxOperacao.Enabled   := False;
          BoxOperacao.Color     := clActiveBorder;;
          ChkAlteracao.Checked  := True;
          ChkInclusao.Checked   := True;
          ChkExclusao.Checked   := True;
          chkRelatorio.Checked  := True;
          GravaSituacaoOperacoes(lvFiscal,lvFiscal.Selected.Index,TrVMenus.Items.Item[4].Text);
       end
    else
    if (LVProducao.Visible) and (LVProducao.SelCount > 0) then
       begin
          AtribuiTipodeAcesso(LVProducao,'Acesso Total',1);
          BoxOperacao.Enabled   := False;
          BoxOperacao.Color     := clActiveBorder;;
          ChkAlteracao.Checked  := True;
          ChkInclusao.Checked   := True;
          ChkExclusao.Checked   := True;
          chkRelatorio.Checked  := True;
          GravaSituacaoOperacoes(LVProducao,LVProducao.Selected.Index,TrVMenus.Items.Item[5].Text);
       end
    else
    if (LvSIE.Visible) and (LvSIE.SelCount > 0) then
       begin
          AtribuiTipodeAcesso(LVSIE,'Acesso Total',1);
          BoxOperacao.Enabled   := False;
          BoxOperacao.Color     := clActiveBorder;;
          ChkAlteracao.Checked  := True;
          ChkInclusao.Checked   := True;
          ChkExclusao.Checked   := True;
          chkRelatorio.Checked  := True;
          GravaSituacaoOperacoes(LVSIE,LVSIE.Selected.Index,TrVMenus.Items.Item[6].Text);
       end
   else
   if (LVConfiguracoes.Visible) and (LVConfiguracoes.SelCount > 0) then
      begin
          AtribuiTipodeAcesso(LVConfiguracoes,'Acesso Total',1);
          BoxOperacao.Enabled   := False;
          BoxOperacao.Color     := clActiveBorder;;
          ChkAlteracao.Checked  := True;
          ChkInclusao.Checked   := True;
          ChkExclusao.Checked   := True;
          chkRelatorio.Checked  := True;
          GravaSituacaoOperacoes(LVConfiguracoes,LVConfiguracoes.Selected.Index,TrVMenus.Items.Item[7].Text);
      end
   else
   if (LVUtilitarios.Visible) and (LVUtilitarios.SelCount > 0) then
       begin
          AtribuiTipodeAcesso(LVUtilitarios,'Acesso Total',1);
          BoxOperacao.Enabled   := False;
          BoxOperacao.Color     := clActiveBorder;;
          ChkAlteracao.Checked  := True;
          ChkInclusao.Checked   := True;
          ChkExclusao.Checked   := True;
          chkRelatorio.Checked  := True;
          GravaSituacaoOperacoes(LVUtilitarios,LVUtilitarios.Selected.Index,TrVMenus.Items.Item[8].Text);
       end ;


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
          chkRelatorio.Checked  := False;
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
          chkRelatorio.Checked  := False;
          GravaSituacaoOperacoes(LVFinanceiro,LVFinanceiro.Selected.Index,TrVMenus.Items.Item[1].Text);
      end
   else
   if (LVComercial.Visible) and (LVComercial.SelCount > 0) then
      begin
         AtribuiTipodeAcesso(LVComercial,'Acesso Parcial',2);
         BoxOperacao.Enabled   := True;
         BoxOperacao.Color     := clSilver;;
         ChkAlteracao.Checked  := False;
         ChkInclusao.Checked   := False;
         ChkExclusao.Checked   := False;
         chkRelatorio.Checked  := False;
         GravaSituacaoOperacoes(LVComercial,LVComercial.Selected.Index,TrVMenus.Items.Item[2].Text);
      end
   else
   if (LVMovimentos.Visible) and (LVMovimentos.SelCount > 0) then
       begin
          AtribuiTipodeAcesso(LVMovimentos,'Acesso Parcial',2);
          BoxOperacao.Enabled   := True;
          BoxOperacao.Color     := clSilver;;
          ChkAlteracao.Checked  := False;
          ChkInclusao.Checked   := False;
          ChkExclusao.Checked   := False;
          chkRelatorio.Checked  := False;
          GravaSituacaoOperacoes(LVMovimentos,LVMovimentos.Selected.Index,TrVMenus.Items.Item[3].Text);
       end
    else
    if (lvFiscal.Visible) and (lvFiscal.SelCount > 0) then
       begin
          AtribuiTipodeAcesso(lvFiscal,'Acesso Parcial',2);
          BoxOperacao.Enabled   := True;
          BoxOperacao.Color     := clSilver;
          ChkAlteracao.Checked  := False;
          ChkInclusao.Checked   := False;
          ChkExclusao.Checked   := False;
          chkRelatorio.Checked  := False;
          GravaSituacaoOperacoes(lvFiscal,lvFiscal.Selected.Index,TrVMenus.Items.Item[4].Text);
       end
    else
    if (LVProducao.Visible) and (LVProducao.SelCount > 0) then
       begin
          AtribuiTipodeAcesso(LVProducao,'Acesso Parcial',2);
          BoxOperacao.Enabled   := True;
          BoxOperacao.Color     := clSilver;
          ChkAlteracao.Checked  := False;
          ChkInclusao.Checked   := False;
          ChkExclusao.Checked   := False;
          chkRelatorio.Checked  := False;
          GravaSituacaoOperacoes(LVProducao,LVProducao.Selected.Index,TrVMenus.Items.Item[5].Text);
       end
    else
    if (LvSIE.Visible) and (LVSIE.SelCount > 0) then
       begin
          AtribuiTipodeAcesso(LVSIE,'Acesso Parcial',2);
          BoxOperacao.Enabled   := True;
          BoxOperacao.Color     := clSilver;;
          ChkAlteracao.Checked  := False;
          ChkInclusao.Checked   := False;
          ChkExclusao.Checked   := False;
          chkRelatorio.Checked  := False;
          GravaSituacaoOperacoes(LVSIE,LVSIE.Selected.Index,TrVMenus.Items.Item[6].Text);
       end
   else
   if (LVConfiguracoes.Visible) and (LVConfiguracoes.SelCount > 0) then
      begin
          AtribuiTipodeAcesso(LVConfiguracoes,'Acesso Parcial',2);
          BoxOperacao.Enabled   := True;
          BoxOperacao.Color     := clSilver;
          ChkAlteracao.Checked  := False;
          ChkInclusao.Checked   := False;
          ChkExclusao.Checked   := False;
          chkRelatorio.Checked  := False;
          GravaSituacaoOperacoes(LVConfiguracoes,LVConfiguracoes.Selected.Index,TrVMenus.Items.Item[7].Text);
       end
   else
   if (LVUtilitarios.Visible) and (LVUtilitarios.SelCount > 0) then
       begin
          AtribuiTipodeAcesso(LVUtilitarios,'Acesso Parcial',2);
          BoxOperacao.Enabled   := True;
          BoxOperacao.Color     := clSilver;
          ChkAlteracao.Checked  := False;
          ChkInclusao.Checked   := False;
          ChkExclusao.Checked   := False;
          chkRelatorio.Checked  := False;
          GravaSituacaoOperacoes(LVUtilitarios,LVUtilitarios.Selected.Index,TrVMenus.Items.Item[8].Text);
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
          chkRelatorio.Checked  := False;
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
          chkRelatorio.Checked  := False;
          GravaSituacaoOperacoes(LVFinanceiro,LVFinanceiro.Selected.Index,TrVMenus.Items.Item[1].Text);
      end
   else
   if (LVComercial.Visible) and (LVComercial.SelCount > 0) then
      begin
         AtribuiTipodeAcesso(LVComercial,'Somente Leitura',3);
         BoxOperacao.Enabled   := False;
         BoxOperacao.Color     := clActiveBorder;
         ChkAlteracao.Checked  := False;
         ChkInclusao.Checked   := False;
         ChkExclusao.Checked   := False;
         chkRelatorio.Checked  := False;
         GravaSituacaoOperacoes(LVComercial,LVComercial.Selected.Index,TrVMenus.Items.Item[2].Text);
      end
   else
   if (LVMovimentos.Visible) and (LVMovimentos.SelCount > 0) then
       begin
          AtribuiTipodeAcesso(LVMovimentos,'Somente Leitura',3);
          BoxOperacao.Enabled   := False;
          BoxOperacao.Color     := clActiveBorder;
          ChkAlteracao.Checked  := False;
          ChkInclusao.Checked   := False;
          ChkExclusao.Checked   := False;
          chkRelatorio.Checked  := False;
          GravaSituacaoOperacoes(LVMovimentos,LVMovimentos.Selected.Index,TrVMenus.Items.Item[3].Text);
       end
   else
   if (lvFiscal.Visible) and (lvFiscal.SelCount > 0) then
      begin
         AtribuiTipodeAcesso(lvFiscal,'Acesso Parcial',2);
         BoxOperacao.Enabled   := True;
         BoxOperacao.Color     := clSilver;
         ChkAlteracao.Checked  := False;
         ChkInclusao.Checked   := False;
         ChkExclusao.Checked   := False;
         chkRelatorio.Checked  := False;
         GravaSituacaoOperacoes(lvFiscal,lvFiscal.Selected.Index,TrVMenus.Items.Item[4].Text);
      end
   else
   if (LVProducao.Visible) and (LVProducao.SelCount > 0) then
      begin
         AtribuiTipodeAcesso(LVProducao,'Acesso Parcial',2);
         BoxOperacao.Enabled   := True;
         BoxOperacao.Color     := clSilver;
         ChkAlteracao.Checked  := False;
         ChkInclusao.Checked   := False;
         ChkExclusao.Checked   := False;
         chkRelatorio.Checked  := False;
         GravaSituacaoOperacoes(LVProducao,LVProducao.Selected.Index,TrVMenus.Items.Item[5].Text);
      end
   else
   if (LvSIE.Visible) and (LVSIE.SelCount > 0) then
      begin
         AtribuiTipodeAcesso(LVSIE,'Acesso Parcial',2);
         BoxOperacao.Enabled   := True;
         BoxOperacao.Color     := clSilver;;
         ChkAlteracao.Checked  := False;
         ChkInclusao.Checked   := False;
         ChkExclusao.Checked   := False;
         chkRelatorio.Checked  := False;
         GravaSituacaoOperacoes(LVSIE,LVSIE.Selected.Index,TrVMenus.Items.Item[6].Text);
      end
  else
  if (LVConfiguracoes.Visible) and (LVConfiguracoes.SelCount > 0) then
     begin
         AtribuiTipodeAcesso(LVConfiguracoes,'Acesso Parcial',2);
         BoxOperacao.Enabled   := True;
         BoxOperacao.Color     := clSilver;
         ChkAlteracao.Checked  := False;
         ChkInclusao.Checked   := False;
         ChkExclusao.Checked   := False;
         chkRelatorio.Checked  := False;
         GravaSituacaoOperacoes(LVConfiguracoes,LVConfiguracoes.Selected.Index,TrVMenus.Items.Item[7].Text);
      end
  else
  if (LVUtilitarios.Visible) and (LVUtilitarios.SelCount > 0) then
      begin
         AtribuiTipodeAcesso(LVUtilitarios,'Acesso Parcial',2);
         BoxOperacao.Enabled   := True;
         BoxOperacao.Color     := clSilver;
         ChkAlteracao.Checked  := False;
         ChkInclusao.Checked   := False;
         ChkExclusao.Checked   := False;
         chkRelatorio.Checked  := False;
         GravaSituacaoOperacoes(LVUtilitarios,LVUtilitarios.Selected.Index,TrVMenus.Items.Item[8].Text);
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
         chkRelatorio.Checked  := False;
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
         chkRelatorio.Checked  := False;
         GravaSituacaoOperacoesGeral(LVFinanceiro,TrVMenus.Items.Item[1].Text);
      end
   else
   if (LVComercial.Visible) then //and (LVComercial.SelCount > 0) then
      begin
         AtribuiTipodeAcessoGeral(LVComercial,'Sem Acesso',0);
         BoxOperacao.Enabled   := False;
         BoxOperacao.Color     := clActiveBorder;
         ChkAlteracao.Checked  := False;
         ChkInclusao.Checked   := False;
         ChkExclusao.Checked   := False;
         chkRelatorio.Checked  := False;
         GravaSituacaoOperacoesGeral(LVComercial,TrVMenus.Items.Item[2].Text);
      end
   else
   if (LVMovimentos.Visible) then //and (LVMovimentos.SelCount > 0) then
      begin
         AtribuiTipodeAcessoGeral(LVMovimentos,'Sem Acesso',0);
         BoxOperacao.Enabled   := False;
         BoxOperacao.Color     := clActiveBorder;
         ChkAlteracao.Checked  := False;
         ChkInclusao.Checked   := False;
         ChkExclusao.Checked   := False;

         GravaSituacaoOperacoesGeral(LVMovimentos,TrVMenus.Items.Item[3].Text);
      end
   else
   if (LVSIE.Visible) and (LVSIE.SelCount > 0) then
       begin
          AtribuiTipodeAcesso(LVSIE,'Sem Acesso',0);
          BoxOperacao.Enabled   := False;
          BoxOperacao.Color     := clActiveBorder;
          ChkAlteracao.Checked  := False;
          ChkInclusao.Checked   := False;
          ChkExclusao.Checked   := False;
          GravaSituacaoOperacoes(LVSIE,LVSIE.Selected.Index,TrVMenus.Items.Item[4].Text);
      end
   else
   if (LVUtilitarios.Visible) then //and (LVUtilitarios.SelCount > 0) then
      begin
         AtribuiTipodeAcessoGeral(LVUtilitarios,'Sem Acesso',0);
         BoxOperacao.Enabled   := False;
         BoxOperacao.Color     := clActiveBorder;
         ChkAlteracao.Checked  := False;
         ChkInclusao.Checked   := False;
         ChkExclusao.Checked   := False;
         chkRelatorio.Checked  := False;
         GravaSituacaoOperacoesGeral(LVUtilitarios,TrVMenus.Items.Item[6].Text);
      end
   else
   if (LVConfiguracoes.Visible) then//and (LVConfiguracoes.SelCount > 0) then
      begin
         AtribuiTipodeAcessoGeral(LVConfiguracoes,'Sem Acesso',0);
         BoxOperacao.Enabled   := False;
         BoxOperacao.Color     := clActiveBorder;
         ChkAlteracao.Checked  := False;
         ChkInclusao.Checked   := False;
         ChkExclusao.Checked   := False;
         chkRelatorio.Checked  := False;
         GravaSituacaoOperacoesGeral(LVConfiguracoes,TrVMenus.Items.Item[5].Text);
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
         chkRelatorio.Checked  := True;
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
         chkRelatorio.Checked  := True;
         GravaSituacaoOperacoesGeral(LVFinanceiro,TrVMenus.Items.Item[1].Text);
      end
   else
   if (LVComercial.Visible) then//and (LVComercial.SelCount > 0) then
       begin
         AtribuiTipodeAcessoGeral(LVComercial,'Acesso Total',1);
         BoxOperacao.Enabled   := False;
         BoxOperacao.Color     := clActiveBorder;
         ChkAlteracao.Checked  := True;
         ChkInclusao.Checked   := True;
         ChkExclusao.Checked   := True;
         GravaSituacaoOperacoesGeral(LVComercial,TrVMenus.Items.Item[2].Text);
      end
   else
   if (LVMovimentos.Visible) then //and (LVMovimentos.SelCount > 0) then
      begin
         AtribuiTipodeAcessoGeral(LVMovimentos,'Acesso Total',1);
         BoxOperacao.Enabled   := False;
         BoxOperacao.Color     := clActiveBorder;
         ChkAlteracao.Checked  := True;
         ChkInclusao.Checked   := True;
         ChkExclusao.Checked   := True;
           chkRelatorio.Checked  := True;
         GravaSituacaoOperacoesGeral(LVMovimentos,TrVMenus.Items.Item[3].Text);
      end
   else
   if (LVSIE.Visible) then//and (LVSIE.SelCount > 0) then
       begin
          AtribuiTipodeAcesso(LVSIE,'Acesso Total',1);
          BoxOperacao.Enabled   := False;
          BoxOperacao.Color     := clActiveBorder;
          ChkAlteracao.Checked  := False;
          ChkInclusao.Checked   := False;
          ChkExclusao.Checked   := False;
            chkRelatorio.Checked  := True;
          GravaSituacaoOperacoes(LVSIE,LVSIE.Selected.Index,TrVMenus.Items.Item[4].Text);
      end
   else
   if (LVUtilitarios.Visible) then//and (LVUtilitarios.SelCount > 0) then
      begin
         AtribuiTipodeAcessoGeral(LVUtilitarios,'Acesso Total',1);
         BoxOperacao.Enabled   := False;
         BoxOperacao.Color     := clActiveBorder;
         ChkAlteracao.Checked  := True;
         ChkInclusao.Checked   := True;
         ChkExclusao.Checked   := True;
           chkRelatorio.Checked  := True;
         GravaSituacaoOperacoesGeral(LVUtilitarios,TrVMenus.Items.Item[6].Text);
      end
   else
   if (LVConfiguracoes.Visible) then//and (LVConfiguracoes.SelCount > 0) then
      begin
         AtribuiTipodeAcessoGeral(LVConfiguracoes,'Acesso Total',1);
         BoxOperacao.Enabled   := False;
         BoxOperacao.Color     := clActiveBorder;
         ChkAlteracao.Checked  := True;
         ChkInclusao.Checked   := True;
         ChkExclusao.Checked   := True;
           chkRelatorio.Checked  := True;
         GravaSituacaoOperacoesGeral(LVConfiguracoes,TrVMenus.Items.Item[5].Text);
      end;

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
           chkRelatorio.Checked  := True;
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
           chkRelatorio.Checked  := True;
         GravaSituacaoOperacoesGeral(LVFinanceiro,TrVMenus.Items.Item[1].Text);
      end
   else
   if (LVComercial.Visible) then //and (LVCadastros.SelCount > 0) then
      begin
         AtribuiTipodeAcessoGeral(LVComercial,'Acesso Parcial',2);
         BoxOperacao.Enabled   := True;
         BoxOperacao.Color     := clSilver;
         ChkAlteracao.Checked  := True;
         ChkInclusao.Checked   := True;
         ChkExclusao.Checked   := True;
           chkRelatorio.Checked  := True;
         GravaSituacaoOperacoesGeral(LVComercial,TrVMenus.Items.Item[2].Text);
      end
   else
   if (LVMovimentos.Visible) then//and (LVMovimentos.SelCount > 0) then
      begin
         AtribuiTipodeAcessoGeral(LVMovimentos,'Acesso Parcial',2);
         BoxOperacao.Enabled   := True;
         BoxOperacao.Color     := clSilver;
         ChkAlteracao.Checked  := True;
         ChkInclusao.Checked   := True;
         ChkExclusao.Checked   := True;
           chkRelatorio.Checked  := True;
         GravaSituacaoOperacoesGeral(LVMovimentos,TrVMenus.Items.Item[3].Text);
      end
   else
   if (LVSIE.Visible) then//and (LVSIE.SelCount > 0) then
       begin
          AtribuiTipodeAcesso(LVSIE,'Acesso Parcial',2);
          BoxOperacao.Enabled   := False;
          BoxOperacao.Color     := clActiveBorder;
          ChkAlteracao.Checked  := False;
          ChkInclusao.Checked   := False;
          ChkExclusao.Checked   := False;
            chkRelatorio.Checked  := True;
          GravaSituacaoOperacoes(LVSIE,LVSIE.Selected.Index,TrVMenus.Items.Item[4].Text);
      end
   else
   if (LVUtilitarios.Visible) then //and (LVUtilitarios.SelCount > 0) then
      begin
         AtribuiTipodeAcessoGeral(LVUtilitarios,'Acesso Parcial',2);
         BoxOperacao.Enabled   := True;
         BoxOperacao.Color     := clSilver;
         ChkAlteracao.Checked  := True;
         ChkInclusao.Checked   := True;
         ChkExclusao.Checked   := True;
           chkRelatorio.Checked  := True;
         GravaSituacaoOperacoesGeral(LVUtilitarios,TrVMenus.Items.Item[6].Text);
      end
   else
   if (LVConfiguracoes.Visible) then //and (LVConfiguracoes.SelCount > 0) then
      begin
         AtribuiTipodeAcessoGeral(LVConfiguracoes,'Acesso Parcial',2);
         BoxOperacao.Enabled   := True;
         BoxOperacao.Color     := clSilver;
         ChkAlteracao.Checked  := True;
         ChkInclusao.Checked   := True;
         ChkExclusao.Checked   := True;
           chkRelatorio.Checked  := True;
         GravaSituacaoOperacoesGeral(LVConfiguracoes,TrVMenus.Items.Item[5].Text);
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
           chkRelatorio.Checked  := True;
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
           chkRelatorio.Checked  := True;
         GravaSituacaoOperacoesGeral(LVFinanceiro,TrVMenus.Items.Item[1].Text);
      end
   else
   if (LVComercial.Visible) then //and (LVComercial.SelCount > 0) then
      begin
         AtribuiTipodeAcessoGeral(LVComercial,'Somente Leitura',3);
         BoxOperacao.Enabled   := False;
         BoxOperacao.Color     := clActiveBorder;
         ChkAlteracao.Checked  := False;
         ChkInclusao.Checked   := False;
         ChkExclusao.Checked   := False;
         chkRelatorio.Checked  := False;
         GravaSituacaoOperacoesGeral(LVComercial,TrVMenus.Items.Item[2].Text);
      end
   else
   if (LVMovimentos.Visible) then //and (LVMovimentos.SelCount > 0) then
      begin
         AtribuiTipodeAcessoGeral(LVMovimentos,'Somente Leitura',3);
         BoxOperacao.Enabled   := False;
         BoxOperacao.Color     := clActiveBorder;
         ChkAlteracao.Checked  := False;
         ChkInclusao.Checked   := False;
         ChkExclusao.Checked   := False;
         chkRelatorio.Checked  := False;
         GravaSituacaoOperacoesGeral(LVMovimentos,TrVMenus.Items.Item[3].Text);
      end
   else
   if (LVProducao.Visible) then//and (LVProducao.SelCount > 0) then
       begin
          AtribuiTipodeAcesso(LVProducao,'Somente Leitura',3);
          BoxOperacao.Enabled   := False;
          BoxOperacao.Color     := clActiveBorder;
          ChkAlteracao.Checked  := False;
          ChkInclusao.Checked   := False;
          ChkExclusao.Checked   := False;
           chkRelatorio.Checked  := False;
          GravaSituacaoOperacoes(LVProducao,LVProducao.Selected.Index,TrVMenus.Items.Item[4].Text);
      end
   else
   if (LVSIE.Visible) then //and (LVSIE.SelCount > 0) then
      begin
         AtribuiTipodeAcessoGeral(LVSIE,'Somente Leitura',3);
         BoxOperacao.Enabled   := False;
         BoxOperacao.Color     := clActiveBorder;
         ChkAlteracao.Checked  := False;
         ChkInclusao.Checked   := False;
         ChkExclusao.Checked   := False;
          chkRelatorio.Checked  := False;
         GravaSituacaoOperacoesGeral(LVSIE,TrVMenus.Items.Item[5].Text);
      end
   else
   if (LVUtilitarios.Visible) then //and (LVConfiguracoes.SelCount > 0) then
      begin
         AtribuiTipodeAcessoGeral(LVUtilitarios,'Somente Leitura',3);
         BoxOperacao.Enabled   := False;
         BoxOperacao.Color     := clActiveBorder;
         ChkAlteracao.Checked  := False;
         ChkInclusao.Checked   := False;
         ChkExclusao.Checked   := False;
          chkRelatorio.Checked  := False;
         GravaSituacaoOperacoesGeral(LVUtilitarios,TrVMenus.Items.Item[7].Text);
      end
   else
   if (LVConfiguracoes.Visible) then //and (LVUtil.SelCount > 0) then
      begin
         AtribuiTipodeAcessoGeral(LVConfiguracoes,'Somente Leitura',3);
         BoxOperacao.Enabled   := False;
         BoxOperacao.Color     := clActiveBorder;
         ChkAlteracao.Checked  := False;
         ChkInclusao.Checked   := False;
         ChkExclusao.Checked   := False;
          chkRelatorio.Checked  := False;
         GravaSituacaoOperacoesGeral(LVConfiguracoes,TrVMenus.Items.Item[6].Text);
      end;


end;

procedure TFrmCadastroUsuario.GravaNivelAcessos;
 Var
 I:Integer;
begin
   try
    {nivel menu principal}
     for I:= 0 to TrVMenus.Items.Count -1 do
         begin
            if DataCadastros1.CdSAcessosUsuario.Locate('USA_MENU',TrVMenus.Items.Item[I].Text,[]) then
               begin
                  DataCadastros1.CdSAcessosUsuario.Edit;
                  DataCadastros1.CdSAcessosUsuario.FieldByName('USA_ACESSO').AsInteger := TrVMenus.Items.Item[I].ImageIndex;
                  DataCadastros1.CdSAcessosUsuario.ApplyUpdates(0);
               end
            else
               begin
                  DataCadastros1.CdSAcessosUsuario.Insert;
                  DataCadastros1.CdSAcessosUsuario.FieldByName('USA_COD_USUARIO').AsInteger := DataCadastros1.CdSUsuario.FieldByname('USU_CODIGO').AsInteger;
                  DataCadastros1.CdSAcessosUsuario.FieldByName('USA_MENU').AsString         := TrVMenus.Items.Item[I].Text;
                  DataCadastros1.CdSAcessosUsuario.FieldByName('USA_ACESSO').AsInteger      := TrVMenus.Items.Item[I].ImageIndex;

                  if TrVMenus.Items.Item[I].ImageIndex in [0,3] then
                     begin
                       DataCadastros1.CdSAcessosUsuario.FieldByName('USA_ALTERACAO').AsString    := 'N';
                       DataCadastros1.CdSAcessosUsuario.FieldByName('USA_INCLUSAO').AsString     := 'N';
                       DataCadastros1.CdSAcessosUsuario.FieldByName('USA_EXCLUSAO').AsString     := 'N';
                       DataCadastros1.CdSAcessosUsuario.FieldByName('USA_RELATORIO').AsString     := 'N';
                     end
                  else
                     begin
                       DataCadastros1.CdSAcessosUsuario.FieldByName('USA_ALTERACAO').AsString    := 'S';
                       DataCadastros1.CdSAcessosUsuario.FieldByName('USA_INCLUSAO').AsString     := 'S';
                       DataCadastros1.CdSAcessosUsuario.FieldByName('USA_EXCLUSAO').AsString     := 'S';
                       DataCadastros1.CdSAcessosUsuario.FieldByName('USA_RELATORIO').AsString     := 'S';
                     end;
                  DataCadastros1.CdSAcessosUsuario.ApplyUpdates(0);
               end;
         end;


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
    chkRelatorio.Checked  := False;
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
   chkRelatorio.Checked  := False;
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

procedure TFrmCadastroUsuario.tabAlmoxarifadoShow(Sender: TObject);
var
  clone : TClientDataSet;
  i : integer;
  amx :string;
begin
  clone := TClientDataSet.Create(Self);
  try
    clone.CloneCursor(DataCadastros1.cdsAlmoxUsu,true);
    for i :=0 to chkListAlmoxDisp.Items.Count-1 do
    begin
      amx := copy(chkListAlmoxDisp.Items[i],1,4);
      if clone.Locate('USU_CODIGO;AMX_CODIGO',varArrayof([edCod_Usu_Almox.Text,amx]),[]) then
         chkListAlmoxDisp.Checked[i] := true
      else
        chkListAlmoxDisp.Checked[i] := false;
    end;
  finally
    clone.Free;
  end;
  chkUSP_PROD_SEM_ALMOX.Checked := DataCadastros1.CDSUsaParametroUSP_PROD_SEM_ALMOX.AsString = 'S';
end;

procedure TFrmCadastroUsuario.tabEmpresaShow(Sender: TObject);
var
  clone : TClientDataSet;
  i : integer;
  emp :string;
begin
  clone := TClientDataSet.Create(Self);
  try
    clone.CloneCursor(DataCadastros1.cdsEmpUsu,true);
    for i :=0 to chkListEmpDisp.Items.Count-1 do
    begin
      emp := copy(chkListEmpDisp.Items[i],1,3);
      if clone.Locate('usu_codigo;emp_codigo',varArrayof([edCod_Usu.Text,emp]),[]) then
         chkListEmpDisp.Checked[i] := true
      else
        chkListEmpDisp.Checked[i] := false;
    end;
  finally
    clone.Free;
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
              if DataCadastros1.CdSAcessosUsuario.Locate('USA_MENU',(NomeMenu+TListView(Sender).Items[I].Caption),[]) then
                 begin
                   {acesso}
                    TListView(Sender).Items.Item[I].ImageIndex  := DataCadastros1.CdSAcessosUsuario.FieldByName('USA_ACESSO').AsInteger;
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
                BoxOperacao.Enabled     := true;
                BoxOperacao.Color       := clActiveBorder;
                if DataCadastros1.CdSAcessosUsuario.Locate('USA_MENU',wNOME_NIVEL+TListView(Sender).Items.Item[wINDEX_ACESSO].Caption,[]) then
                   begin
                      ChkAlteracao.Checked      := IIF(DataCadastros1.CdSAcessosUsuario.FieldByName('USA_ALTERACAO').AsString = 'S',true,false);
                      ChkInclusao.Checked       := IIF(DataCadastros1.CdSAcessosUsuario.FieldByName('USA_INCLUSAO').AsString  = 'S',true,false);
                      ChkExclusao.Checked       := IIF(DataCadastros1.CdSAcessosUsuario.FieldByName('USA_EXCLUSAO').AsString  = 'S',true,false);
                      ChkRelatorio.Checked      := IIF(DataCadastros1.CdSAcessosUsuario.FieldByName('USA_RELATORIO').AsString  = 'S',true,false);

                   end;
            end
         else
         if TListView(Sender).Items.Item[wINDEX_ACESSO].ImageIndex = 2 then
            begin
                //uteis.aviso(Pchar(TListView(Sender).Items.Item[wINDEX_ACESSO].Caption));
                BoxOperacao.Enabled     := True;
                BoxOperacao.Color       := clSilver;
                if DataCadastros1.CdSAcessosUsuario.Locate('USA_MENU',wNOME_NIVEL+TListView(Sender).Items.Item[wINDEX_ACESSO].Caption,[]) then
                   begin
                      ChkAlteracao.Checked      := IIF(DataCadastros1.CdSAcessosUsuario.FieldByName('USA_ALTERACAO').AsString = 'S',true,false);
                      ChkInclusao.Checked       := IIF(DataCadastros1.CdSAcessosUsuario.FieldByName('USA_INCLUSAO').AsString  = 'S',true,false);
                      ChkExclusao.Checked       := IIF(DataCadastros1.CdSAcessosUsuario.FieldByName('USA_EXCLUSAO').AsString  = 'S',true,false);
                      ChkRelatorio.Checked      := IIF(DataCadastros1.CdSAcessosUsuario.FieldByName('USA_RELATORIO').AsString  = 'S',true,false);
                   end;
            end
         else
         if TListView(Sender).Items.Item[wINDEX_ACESSO].ImageIndex in [0,3] then
            begin
                BoxOperacao.Enabled     := False;
                BoxOperacao.Color       := clActiveBorder;
                if DataCadastros1.CdSAcessosUsuario.Locate('USA_MENU',wNOME_NIVEL+TListView(Sender).Items.Item[wINDEX_ACESSO].Caption,[]) then
                   begin
                      ChkAlteracao.Checked      := IIF(DataCadastros1.CdSAcessosUsuario.FieldByName('USA_ALTERACAO').AsString = 'S',true,false);
                      ChkInclusao.Checked       := IIF(DataCadastros1.CdSAcessosUsuario.FieldByName('USA_INCLUSAO').AsString  = 'S',true,false);
                      ChkExclusao.Checked       := IIF(DataCadastros1.CdSAcessosUsuario.FieldByName('USA_EXCLUSAO').AsString  = 'S',true,false);
                      ChkRelatorio.Checked      := IIF(DataCadastros1.CdSAcessosUsuario.FieldByName('USA_RELATORIO').AsString  = 'S',true,false);
                   end;
            end;
      end;
end;

procedure TFrmCadastroUsuario.GravaSituacaoOperacoes(Sender: tObject;
  wINDEX_ACESSO: Integer; wNOME_NIVEL: String);
begin
   if Sender <> nil then
      begin
         if DataCadastros1.CdSAcessosUsuario.Locate('USA_MENU',wNOME_NIVEL+TListView(Sender).Items.Item[wINDEX_ACESSO].Caption,[]) then
            begin
               DataCadastros1.CdSAcessosUsuario.Edit;
               DataCadastros1.CdSAcessosUsuario.FieldByName('USA_ACESSO').AsInteger      := TListView(Sender).Items.Item[wINDEX_ACESSO].ImageIndex;
               DataCadastros1.CdSAcessosUsuario.FieldByName('USA_ALTERACAO').AsString    := IIF(ChkAlteracao.Checked,'S','N');
               DataCadastros1.CdSAcessosUsuario.FieldByName('USA_INCLUSAO').AsString     := IIF(ChkInclusao.Checked,'S','N');
               DataCadastros1.CdSAcessosUsuario.FieldByName('USA_EXCLUSAO').AsString     := IIF(ChkExclusao.Checked,'S','N');
               DataCadastros1.CdSAcessosUsuario.FieldByName('USA_RELATORIO').AsString     := IIF(ChkRelatorio.Checked,'S','N');


               DataCadastros1.CdSAcessosUsuario.Post;
            end
         else
            begin
               DataCadastros1.CdSAcessosUsuario.Insert;
               DataCadastros1.CdSAcessosUsuario.FieldByName('USA_COD_USUARIO').AsInteger := DataCadastros1.CdSUsuario.FieldByname('USU_CODIGO').AsInteger;
               DataCadastros1.CdSAcessosUsuario.FieldByName('USA_MENU').AsString         := Trim(Copy(BoxAcesso.Caption,11,30))+TListView(Sender).Items.Item[wINDEX_ACESSO].Caption;
               DataCadastros1.CdSAcessosUsuario.FieldByName('USA_ACESSO').AsInteger      := TListView(Sender).Items.Item[wINDEX_ACESSO].ImageIndex;
               DataCadastros1.CdSAcessosUsuario.FieldByName('USA_ALTERACAO').AsString    := IIF(ChkAlteracao.Checked,'S','N');
               DataCadastros1.CdSAcessosUsuario.FieldByName('USA_INCLUSAO').AsString     := IIF(ChkInclusao.Checked,'S','N');
               DataCadastros1.CdSAcessosUsuario.FieldByName('USA_EXCLUSAO').AsString     := IIF(ChkExclusao.Checked,'S','N');
               DataCadastros1.CdSAcessosUsuario.FieldByName('USA_RELATORIO').AsString     := IIF(ChkRelatorio.Checked,'S','N');
               DataCadastros1.CdSAcessosUsuario.ApplyUpdates(0);
            end;

      end;
end;

procedure TFrmCadastroUsuario.ChkAlteracaoExit(Sender: tObject);
begin
   if LVCadastros.SelCount > 0 then
      GravaSituacaoOperacoes(LVCadastros,LVCadastros.Selected.Index,TrVMenus.Items.Item[0].Text);
   if LVFinanceiro.SelCount > 0 then
      GravaSituacaoOperacoes(LVFinanceiro,LVFinanceiro.Selected.Index,TrVMenus.Items.Item[1].Text);
   if LVComercial.SelCount > 0 then
      GravaSituacaoOperacoes(LVComercial,LVComercial.Selected.Index,TrVMenus.Items.Item[2].Text);
   if LVMovimentos.SelCount > 0 then
      GravaSituacaoOperacoes(LVMovimentos,LVMovimentos.Selected.Index,TrVMenus.Items.Item[3].Text);
   if lvFiscal.SelCount > 0 then
      GravaSituacaoOperacoes(lvFiscal,lvFiscal.Selected.Index,TrVMenus.Items.Item[4].Text);
   if LVProducao.SelCount > 0 then
      GravaSituacaoOperacoes(LVProducao,LVProducao.Selected.Index,TrVMenus.Items.Item[5].Text);
   if LVSIE.SelCount > 0 then
      GravaSituacaoOperacoes(LVSIE,LVSIE.Selected.Index,TrVMenus.Items.Item[6].Text);
   if LVConfiguracoes.SelCount > 0 then
      GravaSituacaoOperacoes(LVConfiguracoes,LVConfiguracoes.Selected.Index,TrVMenus.Items.Item[7].Text);
end;

procedure TFrmCadastroUsuario.ChkInclusaoExit(Sender: tObject);
begin
   if LVCadastros.SelCount > 0 then
      GravaSituacaoOperacoes(LVCadastros,LVCadastros.Selected.Index,TrVMenus.Items.Item[0].Text);
   if LVFinanceiro.SelCount > 0 then
      GravaSituacaoOperacoes(LVFinanceiro,LVFinanceiro.Selected.Index,TrVMenus.Items.Item[1].Text);
   if LVComercial.SelCount > 0 then
      GravaSituacaoOperacoes(LVComercial,LVComercial.Selected.Index,TrVMenus.Items.Item[2].Text);
   if LVMovimentos.SelCount > 0 then
      GravaSituacaoOperacoes(LVMovimentos,LVMovimentos.Selected.Index,TrVMenus.Items.Item[3].Text);
   if lvFiscal.SelCount > 0 then
      GravaSituacaoOperacoes(lvFiscal,lvFiscal.Selected.Index,TrVMenus.Items.Item[4].Text);
   if LVProducao.SelCount > 0 then
      GravaSituacaoOperacoes(LVProducao,LVProducao.Selected.Index,TrVMenus.Items.Item[5].Text);
   if LVSIE.SelCount > 0 then
      GravaSituacaoOperacoes(LVSIE,LVSIE.Selected.Index,TrVMenus.Items.Item[6].Text);
   if LVConfiguracoes.SelCount > 0 then
      GravaSituacaoOperacoes(LVConfiguracoes,LVConfiguracoes.Selected.Index,TrVMenus.Items.Item[7].Text);
end;

procedure TFrmCadastroUsuario.chkListAlmoxDispClickCheck(Sender: TObject);
var amx: string;
begin
 amx:= copy(chkListAlmoxDisp.Items[chkListAlmoxDisp.ItemIndex],1,4);
 if chkListAlmoxDisp.Checked[ chkListAlmoxDisp.ItemIndex] then
 begin
   if not DataCadastros1.cdsAlmoxUsu.Locate('USU_CODIGO;AMX_CODIGO', varArrayof([edCod_Usu_Almox.Text, amx]),[]) then
   begin
     DataCadastros1.cdsAlmoxUsu.Insert;
     DataCadastros1.cdsAlmoxUsu.FieldByName('USU_CODIGO').AsInteger := StrToInt(edCod_Usu_Almox.Text);
     DataCadastros1.cdsAlmoxUsu.FieldByName('AMX_CODIGO').AsString := amx;
     DataCadastros1.cdsAlmoxUsu.Post;
   end;
 end
 else
  if DataCadastros1.cdsAlmoxUsu.Locate('USU_CODIGO;AMX_CODIGO', VarArrayOf([edCod_Usu_Almox.Text, amx]),[]) then
     DataCadastros1.cdsAlmoxUsu.Delete;

 btnConfirmaAlmoxarifado.Enabled :=  DataCadastros1.cdsAlmoxUsu.ChangeCount > 0;
 btnCancelaAlmoxarifado.Enabled :=  DataCadastros1.cdsAlmoxUsu.ChangeCount > 0;

end;

procedure TFrmCadastroUsuario.chkListEmpDispClickCheck(Sender: TObject);
var emp: string;
begin
 emp:= copy(chkListEmpDisp.Items[chkListEmpDisp.ItemIndex],1,3);
 if chkListEmpDisp.Checked[ chkListEmpDisp.ItemIndex] then
 begin
   if not DataCadastros1.cdsEmpUsu.Locate('usu_codigo;emp_codigo',varArrayof([edCod_Usu.Text,emp]),[]) then
   begin
     DataCadastros1.cdsEmpUsu.Insert;
     DataCadastros1.cdsEmpUsu.FieldByName('usu_codigo').AsInteger := strtoint(edCod_Usu.Text);
     DataCadastros1.cdsEmpUsu.FieldByName('emp_codigo').AsString := emp;
     DataCadastros1.cdsEmpUsu.Post;
   end;
 end
 else
  if DataCadastros1.cdsEmpUsu.Locate('usu_codigo;emp_codigo',varArrayof([edCod_Usu.Text,emp]),[]) then
     DataCadastros1.cdsEmpUsu.Delete;

 btnConfirmaEmpresa.Enabled :=  DataCadastros1.cdsEmpUsu.ChangeCount > 0;
 btnCancelaEmpresa.Enabled :=  DataCadastros1.cdsEmpUsu.ChangeCount > 0;

end;

procedure TFrmCadastroUsuario.ChkExclusaoExit(Sender: tObject);
begin
   if LVCadastros.SelCount > 0 then
      GravaSituacaoOperacoes(LVCadastros,LVCadastros.Selected.Index,TrVMenus.Items.Item[0].Text);
   if LVFinanceiro.SelCount > 0 then
      GravaSituacaoOperacoes(LVFinanceiro,LVFinanceiro.Selected.Index,TrVMenus.Items.Item[1].Text);
   if LVComercial.SelCount > 0 then
      GravaSituacaoOperacoes(LVComercial,LVComercial.Selected.Index,TrVMenus.Items.Item[2].Text);
   if LVMovimentos.SelCount > 0 then
      GravaSituacaoOperacoes(LVMovimentos,LVMovimentos.Selected.Index,TrVMenus.Items.Item[3].Text);
   if lvFiscal.SelCount > 0 then
      GravaSituacaoOperacoes(lvFiscal,lvFiscal.Selected.Index,TrVMenus.Items.Item[4].Text);
   if LVProducao.SelCount > 0 then
      GravaSituacaoOperacoes(LVProducao,LVProducao.Selected.Index,TrVMenus.Items.Item[5].Text);
   if LVSIE.SelCount > 0 then
      GravaSituacaoOperacoes(LVSIE,LVSIE.Selected.Index,TrVMenus.Items.Item[6].Text);
   if LVConfiguracoes.SelCount > 0 then
      GravaSituacaoOperacoes(LVConfiguracoes,LVConfiguracoes.Selected.Index,TrVMenus.Items.Item[7].Text);
end;

procedure TFrmCadastroUsuario.LVCadastrosClick(Sender: tObject);
begin
   if DataCadastros1.CdSUsuario.State in [dsBrowse] then
      DataCadastros1.CdSUsuario.Edit;
   if LVCadastros.SelCount > 0 then
      VerificaSituacaoOperacoes(LVCadastros,LVCadastros.Selected.Index,TrVMenus.Items.Item[0].Text);
end;


procedure TFrmCadastroUsuario.LVFinanceiroClick(Sender: tObject);
begin
   if DataCadastros1.CdSUsuario.State in [dsBrowse] then
      DataCadastros1.CdSUsuario.Edit;
   if LVFinanceiro.SelCount > 0 then
      VerificaSituacaoOperacoes(LVFinanceiro,LVFinanceiro.Selected.Index,TrVMenus.Items.Item[1].Text);
end;

procedure TFrmCadastroUsuario.LVComercialClick(Sender: tObject);
begin
   if DataCadastros1.CdSUsuario.State in [dsBrowse] then
      DataCadastros1.CdSUsuario.Edit;
   if LVComercial.SelCount > 0 then
      VerificaSituacaoOperacoes(LVComercial,LVComercial.Selected.Index,TrVMenus.Items.Item[2].Text);
end;

procedure TFrmCadastroUsuario.LVMovimentosClick(Sender: tObject);
begin
   if DataCadastros1.CdSUsuario.State in [dsBrowse] then
      DataCadastros1.CdSUsuario.Edit;
   if LVMovimentos.SelCount > 0 then
      VerificaSituacaoOperacoes(LVMovimentos,LVMovimentos.Selected.Index,TrVMenus.Items.Item[3].Text);
end;

procedure TFrmCadastroUsuario.LVProducaoClick(Sender: tObject);
begin
   if DataCadastros1.CdSUsuario.State in [dsBrowse] then
      DataCadastros1.CdSUsuario.Edit;
   if LVProducao.SelCount > 0 then
      VerificaSituacaoOperacoes(LVProducao,LVProducao.Selected.Index,TrVMenus.Items.Item[5].Text);
end;

procedure TFrmCadastroUsuario.LVSIEClick(Sender: tObject);
begin
   if DataCadastros1.CdSUsuario.State in [dsBrowse] then
      DataCadastros1.CdSUsuario.Edit;
   if LVSIE.SelCount > 0 then
      VerificaSituacaoOperacoes(LVSIE,LVSIE.Selected.Index,TrVMenus.Items.Item[6].Text);
end;

procedure TFrmCadastroUsuario.LVUtilitariosClick(Sender: tObject);
begin
 if DataCadastros1.CdSUsuario.State in [dsBrowse] then
    DataCadastros1.CdSUsuario.Edit;
 if LVUtilitarios.SelCount > 0 then
    VerificaSituacaoOperacoes(LVUtilitarios,LVUtilitarios.Selected.Index,TrVMenus.Items.Item[8].Text);

end;

procedure TFrmCadastroUsuario.GravaSituacaoOperacoesGeral(Sender: tObject; wNOME_NIVEL:String);
  Var
  I:Integer;
begin
   if Sender <> nil then
      begin
         for I := 0 to TListView(Sender).Items.Count -1 do
             if DataCadastros1.CdSAcessosUsuario.Locate('USA_MENU',wNOME_NIVEL+TListView(Sender).Items.Item[I].Caption,[]) then
                begin
                   DataCadastros1.CdSAcessosUsuario.Edit;
                   DataCadastros1.CdSAcessosUsuario.FieldByName('USA_ACESSO').AsInteger      := TListView(Sender).Items.Item[I].ImageIndex;
                   DataCadastros1.CdSAcessosUsuario.FieldByName('USA_ALTERACAO').AsString    := IIF(ChkAlteracao.State = cbChecked,'S','N');
                   DataCadastros1.CdSAcessosUsuario.FieldByName('USA_INCLUSAO').AsString     := IIF(ChkInclusao.State  = cbChecked,'S','N');
                   DataCadastros1.CdSAcessosUsuario.FieldByName('USA_EXCLUSAO').AsString     := IIF(ChkExclusao.State  = cbChecked,'S','N');
                   DataCadastros1.CdSAcessosUsuario.FieldByName('USA_RELATORIO').AsString     := IIF(ChkRelatorio.State  = cbChecked,'S','N');
                   DataCadastros1.CdSAcessosUsuario.Post;
                end
             else
                begin
                   DataCadastros1.CdSAcessosUsuario.Insert;
                   DataCadastros1.CdSAcessosUsuario.FieldByName('USA_MENU').AsString         := wNOME_NIVEL+TListView(Sender).Items.Item[I].Caption;
                   DataCadastros1.CdSAcessosUsuario.FieldByName('USA_ACESSO').AsInteger      := TListView(Sender).Items.Item[I].ImageIndex;
                   DataCadastros1.CdSAcessosUsuario.FieldByName('USA_ALTERACAO').AsString    := IIF(ChkAlteracao.State = cbChecked,'S','N');
                   DataCadastros1.CdSAcessosUsuario.FieldByName('USA_INCLUSAO').AsString     := IIF(ChkInclusao.State  = cbChecked,'S','N');
                   DataCadastros1.CdSAcessosUsuario.FieldByName('USA_EXCLUSAO').AsString     := IIF(ChkExclusao.State  = cbChecked,'S','N');
                   DataCadastros1.CdSAcessosUsuario.FieldByName('USA_RELATORIO').AsString     := IIF(ChkRelatorio.State  = cbChecked,'S','N');
                   DataCadastros1.CdSAcessosUsuario.ApplyUpdates(0);
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
   if DataCadastros1.CdSUsuario.State in [dsBrowse] then
      DataCadastros1.CdSUsuario.Edit;
end;

procedure TFrmCadastroUsuario.VerificaSituacaoMenuPrincipal;
 var
   I:Integer;
begin
   with TrVMenus.Items do
      begin
         for I := 0 to Count-1 do
            if DataCadastros1.CdSAcessosUsuario.Locate('USA_MENU',TrVMenus.Items.Item[I].Text,[]) then
               begin
                  TrVMenus.Items.Item[I].ImageIndex    := DataCadastros1.CdSAcessosUsuario.FieldByName('USA_ACESSO').AsInteger;
                  TrVMenus.Items.Item[I].SelectedIndex := DataCadastros1.CdSAcessosUsuario.FieldByName('USA_ACESSO').AsInteger;
               end
            else
               begin
                  TrVMenus.Items.Item[I].ImageIndex       := 0;
                  TrVMenus.Items.Item[I].SelectedIndex    := 0;
               end;
          TrVMenus.Refresh;
      end;

end;

procedure TFrmCadastroUsuario.DBGridUsuarioTitleClick(Column: TColumn);
begin
   screen.Cursor := crHourglass;
  {Recupera a cor original da coluna atualmente indexada}
  {Se o campo não for blob ou memo e se for do tipo data}
  if not (Column.Field.DataType in [ftBlob,ftMemo]) then
    if Column.Field.FieldKind = fkData then
    begin
       DataCadastros1.CdSUsuario.IndexFieldNames := Column.FieldName;
//      Column.Title.Color := $00FFBB77;
    end;
   screen.Cursor := crDefault;

end;

procedure TFrmCadastroUsuario.GravaParametrosUsuario(wCOD_USUARIO:String);
begin
   try
     screen.Cursor := crHourglass;
     DataCadastros1.CdSUsaParametro.Close;
     DataCadastros1.CdSUsaParametro.CommandText     := 'select * from USUARIO_PARAMETRO where USP_COD_USUARIO = '''+wCOD_USUARIO+'''';
     DataCadastros1.CdSUsaParametro.Open;
     if DataCadastros1.CdSUsaParametro.IsEmpty then
     begin
       DataCadastros1.CdSUsaParametro.Insert;
       DataCadastros1.CdSUsaParametro.FieldByName('USP_COD_USUARIO').AsString               := wCOD_USUARIO;
     end
     else
     if DataCadastros1.CdSUsaParametro.FieldByName('USP_COD_USUARIO').AsString = wCOD_USUARIO then
       DataCadastros1.CdSUsaParametro.Edit;

     DataCadastros1.CdSUsaParametro.FieldByName('USP_STAT_PRECO_BRUTO_P').AsString        := IIF(ChkPrecoBrutoP.Checked     ,'S','N');
     DataCadastros1.CdSUsaParametro.FieldByName('USP_STAT_PRECO_LIQUIDO_P').AsString      := IIF(ChkPrecoLiqP.Checked       ,'S','N');
     DataCadastros1.CdSUsaParametro.FieldByName('USP_RELATORIOS_P').AsString              := IIF(ChkRelatoriosP.Checked ,'S','N');
     DataCadastros1.CdSUsaParametro.FieldByName('USP_REEMISSAO_PEDIDO_P').AsString        := IIF(ChkReeMissaoP.Checked  ,'S','N');
     DataCadastros1.CdSUsaParametro.FieldByName('USP_EXCLUSAO_PEDIDO_P').AsString         := IIF(ChkExclusaoPedP.Checked,'S','N');
     DataCadastros1.CdSUsaParametro.FieldByName('USP_ALTERA_DESCONTO_P').AsString         := IIF(ChkAlteraDescP.Checked ,'S','N');

     DataCadastros1.CdSUsaParametro.FieldByName('USP_ALTERA_DESCONTO_NOTA').AsString         := IIF(chkDescontoNota.Checked ,'S','N');

     DataCadastros1.CdSUsaParametro.FieldByName('USP_VENDA_CADASTRO_PRODUTO').AsString    := IIF(ChkCadastroProduto.Checked ,'S','N');
     DataCadastros1.CdSUsaParametro.FieldByName('USP_VENDA_REAJUSTE').AsString            := IIF(ChkFuncaoReajuste.Checked ,'S','N');
     DataCadastros1.CdSUsaParametro.FieldByName('USP_ALTERA_TABELA_PRECOS').AsString            := IIF(chkAlteraTabelaPreco.Checked     = True,'S','N');

     DataCadastros1.CdSUsaParametro.FieldByName('USP_DESCONTO_MAX_P').AsCurrency          := CurrDescMaxP.Value;
     DataCadastros1.CdSUsaParametro.FieldByName('USP_VISUALIZA_PEDIDOS_P').AsString       := IIF(CheckVisualizaPedidos.Checked,'S','N');
     // DataCadastros1.CdSUsaParametro.FieldByName('USP_VISUALIZA_PEDIDOS_CRM').AsString       := IIF(CheckVisualizaPedidos.Checked,'S','N');
     DataCadastros1.CdSUsaParametro.FieldByName('USP_ALTERA_COMISSAO').AsString           := IIF(ChkAlteraComissao.Checked ,'S','N');

     if ((DataCadastros1.CdSUsaParametro.FieldByName('USP_DASH_VENDAS').AsString ='N' ) AND chkDashVendas.Checked) OR
       ((DataCadastros1.CdSUsaParametro.FieldByName('USP_DASH_FINANCEIRO').AsString ='N' ) AND chkDashFin.Checked) then
        DataCadastros1.CdSUsaParametro.FieldByName('USP_DASH_NAO_ABRIR').AsString := 'N';

     DataCadastros1.CdSUsaParametro.FieldByName('USP_DASH_VENDAS').AsString               := IIF(chkDashVendas.Checked,'S','N');
     DataCadastros1.CdSUsaParametro.FieldByName('USP_DASH_FINANCEIRO').AsString           := IIF(chkDashFin.Checked ,'S','N');


     DataCadastros1.CdSUsaParametro.FieldByName('USP_LIBERA_ANALISE_CREDITO').AsString    := IIF(ChkLiberaAnaliseCredito.Checked ,'S','N');
     DataCadastros1.CdSUsaParametro.FieldByName('USP_LIBERA_ANALISE_PRODUCAO').AsString   := IIF(ChkLiberaAnaliseProducao.Checked,'S','N');
     DataCadastros1.CdSUsaParametro.FieldByName('USP_VISUALIZA_CLIENTES_P').AsString   := IIF(CheckVisualizaClientes.Checked,'S','N');
     DataCadastros1.CdSUsaParametro.FieldByName('USP_VISUALIZA_ANALISE_CREDITO_').AsString   := IIF(chkAnaliseCredito.Checked,'S','N');
     DataCadastros1.CdSUsaParametro.FieldByName('USP_VENDA_TRANSFERENCIA').AsString   := IIF(chkTransferenciaMercadorias.Checked ,'S','N');
     DataCadastros1.CdSUsaParametro.FieldByName('USP_VIZUALIZAR_COMISSOES').AsString := iif(chkComissaoPedido.Checked, 'S','N');
     DataCadastros1.CdSUsaParametro.FieldByName('USP_PERMITE_EXCLUIR_ITENS').AsString := iif(chkpermite_excluir_itens.Checked,'S','N');
     DataCadastros1.CdSUsaParametro.FieldByName('USP_ESTORNAEXPEDICAO').AsString := iif(chkEstornaExpedicao.Checked,'S','N');
     DataCadastros1.CdSUsaParametro.FieldByName('USP_HABILITA_COLUNA_NF').AsString := iif(chkHabilitaColunaNF.Checked,'S','N');

     DataCadastros1.CdSUsaParametro.FieldByName('USP_ALTERA_CUSTOS_PRODUTO').AsString     := IIF(chkAlteraCustosAutomaticos.Checked,'S','N');
     DataCadastros1.CdSUsaParametro.FieldByName('PERMITE_VENDA_ABAIXO_CUSTO').AsString    := IIF(ChkAutorizaVendaAbaixo.Checked    ,'S','N');
     DataCadastros1.CdSUsaParametro.FieldByName('PERMITE_VER_CUSTO').AsString             := IIF(ChkVisualizacustosProd.Checked    ,'S','N');
     DataCadastros1.CdSUsaParametro.FieldByName('USP_VISUALIZA_ABA_VENDA').AsString       := IIF(ChkVisualizaAbaVenda.Checked      ,'S','N');

     DataCadastros1.CdSUsaParametro.FieldByName('USP_STAT_COMISSAO').AsString             := IIF(ChkComissao.Checked  ,'S','N');
     DataCadastros1.CdSUsaParametro.FieldByName('USP_STAT_CUSTO').AsString                := IIF(ChkCusto.Checked           = True,'S','N');
     DataCadastros1.CdSUsaParametro.FieldByName('USP_STAT_MARGEM').AsString               := IIF(ChkMargem.Checked          = True,'S','N');
     DataCadastros1.CdSUsaParametro.FieldByName('USP_STAT_PRECO_VENDA').AsString          := IIF(ChkPrecoVenda.Checked      = True,'S','N');
     DataCadastros1.CdSUsaParametro.FieldByName('USP_STAT_MARGEM_MINIMA').AsString        := IIF(ChkMagemMinima.Checked     = True,'S','N');
     DataCadastros1.CdSUsaParametro.FieldByName('USP_STAT_PRECO_OFERTA').AsString         := IIF(ChkPrecoOferta.Checked     = True,'S','N');
     DataCadastros1.CdSUsaParametro.FieldByName('USP_STAT_CAMPO_TECNICO').AsString        := IIF(ChkCampoTecnico.Checked     = True,'S','N');

     DataCadastros1.CdSUsaParametro.FieldByName('USP_ALTERA_NF_ENTRADA').AsString         := IIF(ChkAlteraNFEntrada.checked ,'S','N');
     DataCadastros1.CdSUsaParametro.FieldByName('USP_USA_CREDITO_CC').AsString            := IIF(chkUsarCredito.Checked,'S','N');

     DataCadastros1.CdSUsaParametro.FieldByName('USP_TRANSFERENCIATITULOS').AsString      := iif(chkTransfBancos.Checked,'S','N');

     DataCadastros1.CdSUsaParametro.FieldByName('USP_KARDEX_LANC_ENTRADA').AsString       := IIF(ChkKardexLancEntrada.checked ,'S','N');
     DataCadastros1.CdSUsaParametro.FieldByName('USP_KARDEX_LANC_SAIDA').AsString         := IIF(ChkKardexLancSaida.checked ,'S','N');
     DataCadastros1.CdSUsaParametro.FieldByName('USP_KARDEX_LANC_BALANCO').AsString       := IIF(ChkKardexLancBalanco.checked ,'S','N');

     DataCadastros1.CdSUsaParametro.FieldByName('USP_VISUALIZA_MARKUP_PEDIDO').AsString   := IIF(chkMarkupPedido.checked ,'S','N');
     DataCadastros1.CdSUsaParametro.FieldByName('USP_USAPRAZODESABILITADO').AsString      := IIF(ChkPrazoDesabilitado.Checked  = True,'S','N');
     DataCadastros1.CdSUsaParametro.FieldByName('LIBERA_COLABORADOR').AsString            := IIF(ChkLiberaColaborador.checked ,'S','N');

     DataCadastros1.CdSUsaParametro.FieldByName('USP_INCLUIR_CLIENTES').AsString          := iif(chkNovoCliente.Checked ,'S','N');
     DataCadastros1.CdSUsaParametro.FieldByName('USP_ALTERAR_CLIENTES').AsString          := iif(chkAlterarClientes.Checked ,'S','N');
     DataCadastros1.CdSUsaParametro.FieldByName('USP_ABRICHAMADO').AsString          := iif(chkAbrirChamado.Checked ,'S','N');
     DataCadastros1.CdSUsaParametro.FieldByName('USP_ALTERA_FORMA_PAG_FAT').AsString       := iif(chkAlteraFormaPagFat.Checked ,'S','N');
     DataCadastros1.CdSUsaParametro.FieldByName('USP_LIMITE_CONSULTA_ORCA').AsInteger := edNumDiasOrca.Value;

     //controle financeiro
     DataCadastros1.CdSUsaParametro.FieldByName('USP_APROVAR_PAG').AsString   := iif(chkAprovar.Checked ,'S','N');
     DataCadastros1.CdSUsaParametro.FieldByName('USP_REPROVAR_PAG').AsString  := iif(chkReprovar.Checked ,'S','N');
     DataCadastros1.CdSUsaParametro.FieldByName('USP_APROVAR_EST').AsString   := iif(chkEstornoAprovacao.Checked ,'S','N');
     DataCadastros1.CdSUsaParametro.FieldByName('USP_REPROVAR_EST').AsString  := iif(chkEstornoReprovacao.Checked ,'S','N');
     DataCadastros1.CdSUsaParametro.FieldByName('USP_APONTAR_EST').AsString   := iif(chkEstornarSolicitacao.Checked,'S','N');
     DataCadastros1.CdSUsaParametro.FieldByName('USP_APONTAR').AsString       := iif(chkSolicitarPag.Checked ,'S','N');
     DataCadastros1.CdSUsaParametro.FieldByName('USP_CUSTOPRODUCAO').AsString := iif( chkCustosproducao.Checked  ,'S','N');
     DataCadastros1.CdSUsaParametro.FieldByName('USP_ALTERA_VENDEDOR').AsString := iif(chkBloquearVendedor.Checked,'S','N');

     DataCadastros1.CdSUsaParametro.FieldByName('USP_PERMITE_ALTER_TIPO').AsString := iif(chkAlterTipo.Checked,'S','N');
     DataCadastros1.CdSUsaParametro.FieldByName('USP_DESABILITA_COPIAR_PEDIDO').AsString := iif(chkDesabilitaCopiarPedido.Checked,'S','N');
     DataCadastros1.CdSUsaParametro.FieldByName('USP_EXIBE_ABA_INFO_CLIENTE').AsString := iif(chkExibeAbaInfoClientePedido.Checked,'S','N');
     DataCadastros1.CdSUsaParametro.FieldByName('USP_PEDIDO_ABAIXO_PRAZO_MINIMO').AsString := iif(chkPedidoAbaixoPrazoMinimo.Checked,'S','N');

     if not VarIsNull(cbTipoPedido.EditValue) then
       DataCadastros1.CdSUsaParametro.FieldByName('USP_OPV_CODIGO').AsInteger :=  cbTipoPedido.EditValue;

     DataCadastros1.CdSUsaParametro.FieldByName('USP_AUTORIZA_COTACAO_MATERIAL').AsString            := IIF(chkUSP_AUTORIZA_COTACAO_MATERIAL.Checked  ,'S','N');
     DataCadastros1.CdSUsaParametro.FieldByName('USP_REALIZA_COTACAO_MATERIAL').AsString             := IIF(chkUSP_REALIZA_COTACAO_MATERIAL.Checked  ,'S','N');
     DataCadastros1.CdSUsaParametro.FieldByName('USP_AUTORIZA_COMPRA_MATERIAL').AsString             := IIF(chkUSP_AUTORIZA_COMPRA_MATERIAL.Checked  ,'S','N');

     DataCadastros1.CdSUsaParametro.FieldByName('USP_AUTORIZA_RETIRADA_MATERIAL').AsString             := IIF(chkUSP_AUTORIZA_RETIRADA_MATERIAL.Checked  ,'S','N');
     DataCadastros1.CdSUsaParametro.FieldByName('USP_REALIZA_RETIRADA_MATERIAL').AsString             := IIF(chkUSP_REALIZA_RETIRADA_MATERIAL.Checked  ,'S','N');

     DataCadastros1.CdSUsaParametro.FieldByName('USP_PROD_SEM_ALMOX').AsString   := IIF(chkUSP_PROD_SEM_ALMOX.Checked  ,'S','N');



     DataCadastros1.CdSUsaParametro.ApplyUpdates(0);

    screen.Cursor := crDefault;
    BitConfirmar1.Enabled := False;
    BitCancelar1.Enabled := False;
   except on E:EDataBaseError do
       begin
          //beep;
          screen.Cursor := crDefault;
          uteis.erro  (Pchar('Impossível acessar o arquivo: '+ #13#10 + E.message));
       end;
   end;
end;

procedure TFrmCadastroUsuario.CurrDescMaxPChange(Sender: TObject);
begin
  if DataCadastros1.CdSUsuario.State in [dsBrowse] then
    DataCadastros1.CdSUsuario.Edit;
  BitConfirmar1.Enabled := True;
  BitCancelar1.Enabled := True;
end;

procedure TFrmCadastroUsuario.cxDBLookupComboBox1PropertiesChange(Sender: TObject);
begin
  if DataCadastros1.CdSUsuario.State in [dsBrowse] then
     DataCadastros1.CdSUsuario.Edit;
  BitConfirmar1.Enabled := True;
  BitCancelar1.Enabled := True;

end;

procedure TFrmCadastroUsuario.chkRelatorioExit(Sender: TObject);
begin
     if LVCadastros.SelCount > 0 then
     GravaSituacaoOperacoes(LVCadastros,LVCadastros.Selected.Index,TrVMenus.Items.Item[0].Text);
     if LVFinanceiro.SelCount > 0 then
     GravaSituacaoOperacoes(LVFinanceiro,LVFinanceiro.Selected.Index,TrVMenus.Items.Item[1].Text);
     if LVComercial.SelCount > 0 then
     GravaSituacaoOperacoes(LVComercial,LVComercial.Selected.Index,TrVMenus.Items.Item[2].Text);
     if LVMovimentos.SelCount > 0 then
     GravaSituacaoOperacoes(LVMovimentos,LVMovimentos.Selected.Index,TrVMenus.Items.Item[3].Text);
     if lvFiscal.SelCount > 0 then
     GravaSituacaoOperacoes(lvFiscal,lvFiscal.Selected.Index,TrVMenus.Items.Item[4].Text);
     if LVProducao.SelCount > 0 then
     GravaSituacaoOperacoes(LVProducao,LVProducao.Selected.Index,TrVMenus.Items.Item[5].Text);
     if LVSIE.SelCount > 0 then
     GravaSituacaoOperacoes(LVSIE,LVSIE.Selected.Index,TrVMenus.Items.Item[6].Text);
     if LVConfiguracoes.SelCount > 0 then
     GravaSituacaoOperacoes(LVConfiguracoes,LVConfiguracoes.Selected.Index,TrVMenus.Items.Item[7].Text);
end;

procedure TFrmCadastroUsuario.chkUSP_PROD_SEM_ALMOXClick(Sender: TObject);
begin
  btnConfirmaAlmoxarifado.Enabled := True;
  btnCancelaAlmoxarifado.Enabled := True;
end;

procedure TFrmCadastroUsuario.AtribuiParametroUsuario(
  wCOD_USUARIO: String);
begin
   try
    screen.Cursor := crHourglass;
     DataCadastros1.CdSUsaParametro.Close;
     DataCadastros1.CdSUsaParametro.CommandText     := 'select * from USUARIO_PARAMETRO where USP_COD_USUARIO = '''+wCOD_USUARIO+'''';
     DataCadastros1.CdSUsaParametro.Open;
     if not DataCadastros1.CdSUsaParametro.IsEmpty then
        begin
           ChkPrecoBrutoP.Checked               := IIF(DataCadastros1.CdSUsaParametro.FieldByName('USP_STAT_PRECO_BRUTO_P').AsString        = 'S',True,False);
           ChkPrecoLiqP.Checked                 := IIF(DataCadastros1.CdSUsaParametro.FieldByName('USP_STAT_PRECO_LIQUIDO_P').AsString      = 'S',True,False);
           ChkAlteraDescP.Checked               := IIF(DataCadastros1.CdSUsaParametro.FieldByName('USP_ALTERA_DESCONTO_P').AsString         = 'S',True,False);
           chkDescontoNota.Checked              := iif(DataCadastros1.CdSUsaParametro.FieldByName('USP_ALTERA_DESCONTO_NOTA').AsString      = 'S',True,False);
           ChkRelatoriosP.Checked               := IIF(DataCadastros1.CdSUsaParametro.FieldByName('USP_RELATORIOS_P').AsString         = 'S',True,False);
           CurrDescMaxP.Value                   := DataCadastros1.CdSUsaParametro.FieldByName('USP_DESCONTO_MAX_P').AsCurrency;
           ChkReeMissaoP.Checked                := IIF(DataCadastros1.CdSUsaParametro.FieldByName('USP_REEMISSAO_PEDIDO_P').AsString        = 'S',True,False);
           ChkExclusaoPedP.Checked              := IIF(DataCadastros1.CdSUsaParametro.FieldByName('USP_EXCLUSAO_PEDIDO_P').AsString         = 'S',True,False);
           // ChkExclusaoPedCRM.Checked            := IIF(DataCadastros1.CdSUsaParametro.FieldByName('USP_EXCLUSAO_PEDIDO_CRM').AsString       = 'S',True,False);
           CheckVisualizaPedidos.Checked        := IIF(DataCadastros1.CdSUsaParametro.FieldByName('USP_VISUALIZA_PEDIDOS_P').AsString       = 'S',True,False);
           // CheckVisualizaPedidosCRM.Checked        := IIF(DataCadastros1.CdSUsaParametro.FieldByName('USP_VISUALIZA_PEDIDOS_CRM').AsString       = 'S',True,False);

           ChkAlteraComissao.Checked            := IIF(DataCadastros1.CdSUsaParametro.FieldByName('USP_ALTERA_COMISSAO').AsString       = 'S',True,False);
           chkAlteraTabelaPreco.Checked           := IIF(DataCadastros1.CdSUsaParametro.FieldByName('USP_ALTERA_TABELA_PRECOS').AsString         = 'S',True,False);

           chkDashVendas.Checked := iif (DataCadastros1.CdSUsaParametro.FieldByName('USP_DASH_VENDAS').AsString = 'S',true, false);
           chkDashFin.Checked :=  IIF( DataCadastros1.CdSUsaParametro.FieldByName('USP_DASH_FINANCEIRO').AsString= 'S',true,false);

           ChkCadastroProduto.Checked           := IIF(DataCadastros1.CdSUsaParametro.FieldByName('USP_VENDA_CADASTRO_PRODUTO').AsString         = 'S',True,False);
           ChkFuncaoReajuste.Checked            := IIF(DataCadastros1.CdSUsaParametro.FieldByName('USP_VENDA_REAJUSTE').AsString       = 'S',True,False);

           ChkLiberaAnaliseCredito.Checked        := IIF(DataCadastros1.CdSUsaParametro.FieldByName('USP_LIBERA_ANALISE_CREDITO').AsString       = 'S',True,False);
           ChkLiberaAnaliseProducao.Checked        := IIF(DataCadastros1.CdSUsaParametro.FieldByName('USP_LIBERA_ANALISE_PRODUCAO').AsString       = 'S',True,False);

           CheckVisualizaClientes.Checked       := IIF(DataCadastros1.CdSUsaParametro.FieldByName('USP_VISUALIZA_CLIENTES_P').AsString       = 'S',True,False);
           chkAnaliseCredito.Checked            := IIF(DataCadastros1.CdSUsaParametro.FieldByName('USP_VISUALIZA_ANALISE_CREDITO_').AsString       = 'S',True,False);

           chkAlteraCustosAutomaticos.Checked   := IIF(DataCadastros1.CdSUsaParametro.FieldByName('USP_ALTERA_CUSTOS_PRODUTO').AsString       = 'S',True,False);
           ChkAutorizaVendaAbaixo.Checked       := IIF(DataCadastros1.CdSUsaParametro.FieldByName('PERMITE_VENDA_ABAIXO_CUSTO').AsString       = 'S',True,False);
           ChkVisualizacustosProd.Checked       := IIF(DataCadastros1.CdSUsaParametro.FieldByName('PERMITE_VER_CUSTO').AsString       = 'S',True,False);
           chkVisualizaAbaVenda.Checked         := IIF(DataCadastros1.CdSUsaParametro.FieldByName('USP_VISUALIZA_ABA_VENDA').AsString       = 'S',True,False);





           chkTransferenciaMercadorias.Checked  := (DataCadastros1.CdSUsaParametro.FieldByName('USP_VENDA_TRANSFERENCIA').AsString = 'S');
           ChkPrazoDesabilitado.Checked := (DataCadastros1.CdSUsaParametro.FieldByName('USP_USAPRAZODESABILITADO').AsString='S');
           chkComissaoPedido.Checked := (DataCadastros1.CdSUsaParametro.FieldByName('USP_VIZUALIZAR_COMISSOES').AsString = 'S');
           chkpermite_excluir_itens.Checked := (DataCadastros1.CdSUsaParametro.FieldByName('USP_PERMITE_EXCLUIR_ITENS').AsString = 'S');
           chkEstornaExpedicao.Checked := (DataCadastros1.CdSUsaParametro.FieldByName('USP_ESTORNAEXPEDICAO').AsString = 'S');
           chkHabilitaColunaNF.Checked := (DataCadastros1.CdSUsaParametro.FieldByName('USP_HABILITA_COLUNA_NF').AsString = 'S');

           chkMarkupPedido.Checked         := DataCadastros1.CdSUsaParametro.FieldByName('USP_VISUALIZA_MARKUP_PEDIDO').AsString       = 'S';
          {produtos}
           ChkComissao.Checked            := (DataCadastros1.CdSUsaParametro.FieldByName('USP_STAT_COMISSAO').AsString             = 'S');
           ChkCusto.Checked               := (DataCadastros1.CdSUsaParametro.FieldByName('USP_STAT_CUSTO').AsString                = 'S');
           ChkMargem.Checked              := (DataCadastros1.CdSUsaParametro.FieldByName('USP_STAT_MARGEM').AsString               = 'S');
           ChkPrecoVenda.Checked          := (DataCadastros1.CdSUsaParametro.FieldByName('USP_STAT_PRECO_VENDA').AsString          = 'S');
           ChkMagemMinima.Checked         := (DataCadastros1.CdSUsaParametro.FieldByName('USP_STAT_MARGEM_MINIMA').AsString        = 'S');
           ChkPrecoOferta.Checked         := (DataCadastros1.CdSUsaParametro.FieldByName('USP_STAT_PRECO_OFERTA').AsString         = 'S');
           ChkCampoTecnico.Checked        := (DataCadastros1.CdSUsaParametro.FieldByName('USP_STAT_CAMPO_TECNICO').AsString        = 'S');
           ChkAlteraNFEntrada.Checked     := (DataCadastros1.CdSUsaParametro.FieldByName('USP_ALTERA_NF_ENTRADA').AsString         = 'S');
           ChkKardexLancEntrada.Checked   := (DataCadastros1.CdSUsaParametro.FieldByName('USP_KARDEX_LANC_ENTRADA').AsString       = 'S');
           ChkKardexLancSaida.Checked     := (DataCadastros1.CdSUsaParametro.FieldByName('USP_KARDEX_LANC_SAIDA').AsString         = 'S');
           ChkKardexLancBalanco.Checked   := (DataCadastros1.CdSUsaParametro.FieldByName('USP_KARDEX_LANC_BALANCO').AsString       = 'S');
           chkUsarCredito.Checked         := (DataCadastros1.CdSUsaParametro.FieldByName('USP_USA_CREDITO_CC').AsString  = 'S');
           chkTransfBancos.Checked        := (DataCadastros1.CdSUsaParametro.FieldByName('USP_TRANSFERENCIATITULOS').AsString  = 'S');

           {cadastro gerais}
           ChkLiberaColaborador.Checked         := IIF(DataCadastros1.CdSUsaParametro.FieldByName('LIBERA_COLABORADOR').AsString       = 'S',True,False);
           chkNovoCliente.Checked :=  DataCadastros1.CdSUsaParametro.FieldByName('USP_INCLUIR_CLIENTES').AsString = 'S'    ;
           chkAlterarClientes.Checked :=  DataCadastros1.CdSUsaParametro.FieldByName('USP_ALTERAR_CLIENTES').AsString = 'S';
           chkAbrirChamado.Checked :=  DataCadastros1.CdSUsaParametro.FieldByName('USP_ABRICHAMADO').AsString = 'S';
           chkAlteraFormaPagFat.Checked :=  DataCadastros1.CdSUsaParametro.FieldByName('USP_ALTERA_FORMA_PAG_FAT').AsString = 'S';
            edNumDiasOrca.Value :=  DataCadastros1.CdSUsaParametro.FieldByName('USP_LIMITE_CONSULTA_ORCA').AsInteger;
           //controle financeiro
           chkAprovar.Checked := DataCadastros1.CdSUsaParametro.FieldByName('USP_APROVAR_PAG').AsString  = 'S';
           chkReprovar.Checked := DataCadastros1.CdSUsaParametro.FieldByName('USP_REPROVAR_PAG').AsString = 'S';
           chkEstornoAprovacao.Checked := DataCadastros1.CdSUsaParametro.FieldByName('USP_APROVAR_EST').AsString = 'S';
           chkEstornoReprovacao.Checked := DataCadastros1.CdSUsaParametro.FieldByName('USP_REPROVAR_EST').AsString  = 'S';
           chkEstornarSolicitacao.Checked := DataCadastros1.CdSUsaParametro.FieldByName('USP_APONTAR_EST').AsString = 'S';
           chkSolicitarPag.Checked :=  DataCadastros1.CdSUsaParametro.FieldByName('USP_APONTAR').AsString  =  'S' ;
           chkCustosproducao.Checked :=  DataCadastros1.CdSUsaParametro.FieldByName('USP_CUSTOPRODUCAO').AsString  = 'S';
           chkBloquearVendedor.Checked := DataCadastros1.CdSUsaParametro.FieldByName('USP_ALTERA_VENDEDOR').AsString = 'S';
           chkAlterTipo.Checked := DataCadastros1.CdSUsaParametro.FieldByName('USP_PERMITE_ALTER_TIPO').AsString  = 'S';
           chkDesabilitaCopiarPedido.Checked := DataCadastros1.CdSUsaParametro.FieldByName('USP_DESABILITA_COPIAR_PEDIDO').AsString  = 'S';
           chkExibeAbaInfoClientePedido.Checked := DataCadastros1.CdSUsaParametro.FieldByName('USP_EXIBE_ABA_INFO_CLIENTE').AsString  = 'S';
           chkPedidoAbaixoPrazoMinimo.Checked := DataCadastros1.CdSUsaParametro.FieldByName('USP_PEDIDO_ABAIXO_PRAZO_MINIMO').AsString  = 'S';
           if DataCadastros1.CdSUsaParametro.FieldByName('USP_OPV_CODIGO').AsInteger >0 then
            cbTipoPedido.EditValue :=  DataCadastros1.CdSUsaParametro.FieldByName('USP_OPV_CODIGO').AsInteger;
           chkUSP_AUTORIZA_COTACAO_MATERIAL.Checked := DataCadastros1.CdSUsaParametro.FieldByName('USP_AUTORIZA_COTACAO_MATERIAL').AsString  = 'S';
           chkUSP_REALIZA_COTACAO_MATERIAL.Checked := DataCadastros1.CdSUsaParametro.FieldByName('USP_REALIZA_COTACAO_MATERIAL').AsString  = 'S';
           chkUSP_AUTORIZA_COMPRA_MATERIAL.Checked := DataCadastros1.CdSUsaParametro.FieldByName('USP_AUTORIZA_COMPRA_MATERIAL').AsString  = 'S';

           chkUSP_AUTORIZA_RETIRADA_MATERIAL.Checked := DataCadastros1.CdSUsaParametro.FieldByName('USP_AUTORIZA_RETIRADA_MATERIAL').AsString  = 'S';
           chkUSP_REALIZA_RETIRADA_MATERIAL.Checked := DataCadastros1.CdSUsaParametro.FieldByName('USP_REALIZA_RETIRADA_MATERIAL').AsString  = 'S';

           chkUSP_PROD_SEM_ALMOX.Checked := DataCadastros1.CdSUsaParametro.FieldByName('USP_PROD_SEM_ALMOX').AsString  = 'S';

        end
     else
        begin
           ChkPrecoBrutoP.Checked               := False;
           ChkPrecoLiqP.Checked                 := False;
           ChkAlteraDescP.Checked               := False;
           ChkRelatoriosP.Checked               := False;
           CurrDescMaxP.Value                   := 0;
           ChkReeMissaoP.Checked                := False;
           ChkExclusaoPedP.Checked              := False;
           CheckVisualizaPedidos.Checked        := False;
           chkAlteraTabelaPreco.Checked         := False; 

           ChkLiberaAnaliseCredito.Checked      := False;
           ChkLiberaAnaliseProducao.Checked     := False;

           chkAlteraCustosAutomaticos.Checked   := False;
           ChkVisualizacustosProd.Checked       := False;



           ChkComissao.Checked                  := False;
           ChkCusto.Checked                     := False;
           ChkMargem.Checked                    := False;
           ChkPrecoVenda.Checked                := False;
           ChkMagemMinima.Checked               := False;
           ChkPrecoOferta.Checked               := False;
           ChkCampoTecnico.Checked              := False;
           chkTransferenciaMercadorias.Checked  := False;

          ChkAlteraNFEntrada.Checked            := False;
          chkMarkupPedido.Checked               := False; 
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

procedure TFrmCadastroUsuario.AtualizaListasAcessosGeral;
begin
   AtualizaListaAcessos(LVCadastros,TrVMenus.Items.Item[0].Text);
   AtualizaListaAcessos(LVFinanceiro,TrVMenus.Items.Item[1].Text);
   AtualizaListaAcessos(LVComercial,TrVMenus.Items.Item[2].Text);
   AtualizaListaAcessos(LVMovimentos,TrVMenus.Items.Item[3].Text);
   AtualizaListaAcessos(lvFiscal,TrVMenus.Items.Item[4].Text);
   AtualizaListaAcessos(LVProducao,TrVMenus.Items.Item[5].Text);
   AtualizaListaAcessos(LVSIE,TrVMenus.Items.Item[6].Text);
   AtualizaListaAcessos(LvConfiguracoes,TrVMenus.Items.Item[7].Text);
   AtualizaListaAcessos(LVUtilitarios,TrVMenus.Items.Item[8].Text);
end;

procedure TFrmCadastroUsuario.LVConfiguracoesClick(Sender: tObject);
begin
if DataCadastros1.CdSUsuario.State in [dsBrowse] then
    DataCadastros1.CdSUsuario.Edit;
if LVConfiguracoes.SelCount > 0 then
    VerificaSituacaoOperacoes(LVConfiguracoes,LVConfiguracoes.Selected.Index,TrVMenus.Items.Item[7].Text);
end;

procedure TFrmCadastroUsuario.DBLookupVendedorDropDown(Sender: tObject);
begin
 EditCodigoRep.Text := DataCadastros.CdsRepresentanteREP_CODIGO.AsString;
end;

procedure TFrmCadastroUsuario.DBLookupVendedorClick(Sender: tObject);
begin
    pegacodigorepres;
end;

procedure TFrmCadastroUsuario.pegacodigorepres;
begin
   EditCodigoRep.Text := DataCadastros.CdsRepresentanteREP_CODIGO.AsString;
end;

procedure TFrmCadastroUsuario.DBLookupVendedorKeyDown(Sender: tObject;
  var Key: Word; Shift: TShiftState);
begin
   pegacodigorepres;
end;

procedure TFrmCadastroUsuario.DBLookupVendedorKeyUp(Sender: tObject;
  var Key: Word; Shift: TShiftState);
begin
 pegacodigorepres;
end;

procedure TFrmCadastroUsuario.lvFiscalClick(Sender: tObject);
begin
  if DataCadastros1.CdSUsuario.State in [dsBrowse] then
      DataCadastros1.CdSUsuario.Edit;
  if lvFiscal.SelCount > 0 then
      VerificaSituacaoOperacoes(lvFiscal,lvFiscal.Selected.Index,TrVMenus.Items.Item[4].Text);
  BoxOperacao.Enabled := true;
  ChkAlteracao.enabled := true;
  ChkInclusao.enabled := true;
  ChkExclusao.enabled := true;
end;

end.

