{************************************************************
 Programa...: FTC0001  - Nome formulario = FormFichaTecnica
 Objetivo...: Ficha Técnica do Produto
 Analista...: Márcio Neu Pacheco
 Programador: Márcio

 Comentários:

 Criação..........: Fev/00
 Ultima Alteração.: Set/02
 Alterado por.....: Márcio Pacheco

*************************************************************}
unit Ftc0001;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, DBCtrls, ExtCtrls, Grids, DBGrids, Mask, RwFunc,
  Db, DBTables, rxToolEdit, RXDBCtrl, Provider, SqlExpr,SqlClientDataSet, DBClient, DBLocal,
  DBLocalS,  rxCurrEdit,Variants, Menus, ppProd, ppClass, ppReport, ppComm,
  ppRelatv, ppDB, ppDBPipe, ppBands, ppCache, ppVar, ppCtrls, ppPrnabl,
  ppStrtch, ppSubRpt, daDataView, daQueryDataView,   ppModule,
  daDataModule, ppDesignLayer, ppParameter, SimpleDS, Data.DBXFirebird, JvExMask, JvToolEdit, JvDBControls;

Type
  TFormFichaTecnica = class(TForm)
    Panel1: TPanel;
    EdtPRD_REFER: TEdit;
    Label4: TLabel;
    Panel2: TPanel;
    Bit_Excluir: TBitBtn;
    Bit_Gravar: TBitBtn;
    Bit_Cancelar: TBitBtn;
    Bit_Sair: TBitBtn;
    Panel3: TPanel;
    Bit_Lista: TBitBtn;
    Bit_Relatorio: TBitBtn;
    GrpMateria: TGroupBox;
    DBGridFichaTecnicaItem: TDBGrid;
    Panel4: TPanel;
    Label1: TLabel;
    Label6: TLabel;
    Label3: TLabel;
    DbeFTC_TUP: TDBEdit;
    GrpVariacoes: TGroupBox;
    Label2: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    SpPesquisa: TSpeedButton;
    GrpProcesso: TGroupBox;
    ScrollBox1: TScrollBox;
    DbeFtc_proc1: TDBEdit;
    DbeFtc_proc2: TDBEdit;
    DbeFtc_proc3: TDBEdit;
    DBEFtc_proc4: TDBEdit;
    DBEFtc_proc5: TDBEdit;
    DBEFtc_proc6: TDBEdit;
    DBEFtc_Proc7: TDBEdit;
    DBEFtc_Proc8: TDBEdit;
    Bit_novo: TBitBtn;
    SqlCdsProduto: TSQLClientDataSet;
    SqlCdsProdutoPRD_REFER: TStringField;
    SqlCdsProdutoPRD_DESCRI: TStringField;
    SqlCdsProdutoPRD_DCVAR1: TStringField;
    SqlCdsProdutoPRD_DCVAR2: TStringField;
    SqlCdsProdutoPRD_DCVAR3: TStringField;
    SqlCdsProdutoPRD_DCVAR4: TStringField;
    SqlCdsProdutoPRD_DCVAR5: TStringField;
    SqlCdsProdutoPRD_DCVAR6: TStringField;
    SqlCdsProdutoPRD_DCVAR7: TStringField;
    SqlCdsProdutoPRD_DCVAR8: TStringField;
    GrpMateriaPrima: TGroupBox;
    EdtRefer: TEdit;
    Label5: TLabel;
    SpProduto: TSpeedButton;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    SqlCdsMaterial: TSQLClientDataSet;
    SqlCdsMaterialPRD_REFER: TStringField;
    SqlCdsMaterialPRD_DESCRI: TStringField;
    EdtProduto: TEdit;
    CurrConsumo: TCurrencyEdit;
    CurrAnterior: TCurrencyEdit;
    DateModif: TDateEdit;
    Bit_GravarMateria: TBitBtn;
    Bit_CancelarMateria: TBitBtn;
    SqlCdsItensFicha: TSQLClientDataSet;
    DsItensFicha: TDataSource;
    SqlCdsItensFichaFTI_REGISTRO: TIntegerField;
    SqlCdsItensFichaPRD_REFER: TStringField;
    SqlCdsItensFichaPRD_REFER_ITENS: TStringField;
    SqlCdsItensFichaFTI_MODIFICADA: TSQLTimeStampField;
    SqlCdsItensFichaFTI_UC: TFMTBCdField;
    SqlCdsItensFichaFTI_UCMODIFIC: TFMTBCdField;
    SqlCdsItensFichaFTI_MODE1: TStringField;
    SqlCdsItensFichaFTI_MODE2: TStringField;
    SqlCdsItensFichaFTI_MODE3: TStringField;
    SqlCdsItensFichaFTI_MODE4: TStringField;
    SqlCdsItensFichaFTI_MODE5: TStringField;
    SqlCdsItensFichaFTI_MODE6: TStringField;
    SqlCdsItensFichaFTI_MODE7: TStringField;
    SqlCdsItensFichaFTI_MODE8: TStringField;
    SqlCdsItensFichaFTI_PRECOCUSTO: TFMTBCdField;
    SqlCdsItensFichaEMP_CODIGO: TStringField;
    SqlCdsItensFichaPRD_DESCRI: TStringField;
    PopMenItens: TPopupMenu;
    ExcluirItens1: TMenuItem;
    AlterarItens1: TMenuItem;
    Label17: TLabel;
    GrpVarConsumo: TGroupBox;
    ChkV1: TCheckBox;
    ChkV2: TCheckBox;
    ChkV3: TCheckBox;
    ChkV4: TCheckBox;
    ChkV5: TCheckBox;
    ChkV6: TCheckBox;
    ChkV7: TCheckBox;
    ChkV8: TCheckBox;
    Bit_ExcluirMateria: TBitBtn;
    SqlCdsItensFichaPRD_UND: TStringField;
    ppRelFichaTec: TppReport;
    DsRelProduto: TDataSource;
    ppHeaderBand1: TppHeaderBand;
    LBL_00_EMPRESA: TppLabel;
    LBL_00_LTITULO1: TppLabel;
    ppSystemVariable11: TppSystemVariable;
    ppSystemVariable12: TppSystemVariable;
    ppDetailBand2: TppDetailBand;
    ppSummaryBand1: TppSummaryBand;
    ppLabel1: TppLabel;
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
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
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
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    SqlRelProdutos: TSQLClientDataSet;
    DsRelItens: TDataSource;
    SqlRelProdutosPRD_REFER: TStringField;
    SqlRelProdutosPRD_DESCRI: TStringField;
    SqlRelProdutosFTC_TUP: TFMTBCdField;
    SqlRelProdutosFTC_CRIACAO: TSQLTimeStampField;
    SqlRelProdutosPRD_DCVAR1: TStringField;
    SqlRelProdutosPRD_DCVAR2: TStringField;
    SqlRelProdutosPRD_DCVAR3: TStringField;
    SqlRelProdutosPRD_DCVAR4: TStringField;
    SqlRelProdutosPRD_DCVAR5: TStringField;
    SqlRelProdutosPRD_DCVAR6: TStringField;
    SqlRelProdutosPRD_DCVAR7: TStringField;
    SqlRelProdutosPRD_DCVAR8: TStringField;
    ppDBPipeline2: TppDBPipeline;
    SqlRelItens: TSQLClientDataSet;
    SqlRelItensFTI_REGISTRO: TIntegerField;
    SqlRelItensPRD_REFER: TStringField;
    SqlRelItensPRD_REFER_ITENS: TStringField;
    SqlRelItensFTI_MODIFICADA: TSQLTimeStampField;
    SqlRelItensFTI_UC: TFMTBCdField;
    SqlRelItensFTI_UCMODIFIC: TFMTBCdField;
    SqlRelItensFTI_MODE1: TStringField;
    SqlRelItensFTI_MODE2: TStringField;
    SqlRelItensFTI_MODE3: TStringField;
    SqlRelItensFTI_MODE4: TStringField;
    SqlRelItensFTI_MODE5: TStringField;
    SqlRelItensFTI_MODE6: TStringField;
    SqlRelItensFTI_MODE7: TStringField;
    SqlRelItensFTI_MODE8: TStringField;
    SqlRelItensFTI_PRECOCUSTO: TFMTBCdField;
    SqlRelItensEMP_CODIGO: TStringField;
    SqlRelItensPRD_DESCRI: TStringField;
    SqlRelItensPRD_UND: TStringField;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppLabel23: TppLabel;
    ppDBText23: TppDBText;
    ppLabel24: TppLabel;
    SqlRelProdutosFTC_PROC1: TStringField;
    SqlRelProdutosFTC_PROC2: TStringField;
    SqlRelProdutosFTC_PROC3: TStringField;
    SqlRelProdutosFTC_PROC4: TStringField;
    SqlRelProdutosFTC_PROC5: TStringField;
    SqlRelProdutosFTC_PROC6: TStringField;
    SqlRelProdutosFTC_PROC7: TStringField;
    SqlRelProdutosFTC_PROC8: TStringField;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppLine6: TppLine;
    ppLine8: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppLine26: TppLine;
    ppLine27: TppLine;
    ppLine28: TppLine;
    ppLine30: TppLine;
    ppLine31: TppLine;
    ppLine32: TppLine;
    ppLine33: TppLine;
    ppLine34: TppLine;
    ppShape1: TppShape;
    ppShape3: TppShape;
    ppShape4: TppShape;
    ppShape5: TppShape;
    ppShape6: TppShape;
    ppShape7: TppShape;
    ppShape8: TppShape;
    ppShape9: TppShape;
    ppShape10: TppShape;
    ppShape11: TppShape;
    ppShape12: TppShape;
    ppShape13: TppShape;
    ppShape14: TppShape;
    ppLabel2: TppLabel;
    ppLine1: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine7: TppLine;
    ppLine14: TppLine;
    ppLine5: TppLine;
    ppDBCalc1: TppDBCalc;
    ppLine9: TppLine;
    ppLine21: TppLine;
    ppLabel25: TppLabel;
    EdtDescricao: TEdit;
    SqlRelProdutosPTI_CODIGO: TStringField;
    SqlRelProdutosPTI_DESCRI: TStringField;
    SqlRelProdutosPGR_CODIGO: TStringField;
    SqlRelProdutosPGR_DESCRI: TStringField;
    SqlRelProdutosLIN_CODIGO: TStringField;
    SqlRelProdutosLIN_DESCRI: TStringField;
    ppDBPipeline1: TppDBPipeline;
    ppShape15: TppShape;
    ppLabel26: TppLabel;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppLine2: TppLine;
    ppLine29: TppLine;
    ppLabel27: TppLabel;
    ppLine35: TppLine;
    ppDBText34: TppDBText;
    ppDBText35: TppDBText;
    ppLine36: TppLine;
    ppLabel28: TppLabel;
    ppLine37: TppLine;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppLine38: TppLine;
    ppLine39: TppLine;
    ppLine40: TppLine;
    Bit_Copiar: TBitBtn;
    DbDtFTC_CRIACAO: TJvDBDateEdit;
    procedure FormShow(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure EdtPRD_REFERExit(Sender: tObject);
    procedure HabilitaBotoes;
    procedure DesabilitaBotoes;
    procedure Bit_GravarClick(Sender: tObject);
    procedure Bit_CancelarClick(Sender: tObject);
    procedure Bit_ExcluirClick(Sender: tObject);
    procedure Bit_SairClick(Sender: tObject);
    procedure TbFichaTecnicaBeforeEdit(DataSet: TDataSet);
    procedure Bit_ListaClick(Sender: tObject);
    procedure EdtPRD_REFERClick(Sender: tObject);
    procedure DBGridFichaTecnicaItemDblClick(Sender: tObject);
    Procedure BuscaRefer;
    Procedure BuscaItens;
    Procedure BuscaMaterial;
    procedure DbDtFTC_CRIACAOExit(Sender: tObject);
    procedure Bit_novoClick(Sender: tObject);
    procedure DbeFTC_TUPExit(Sender: tObject);
    procedure SpPesquisaClick(Sender: tObject);
    procedure SpProdutoClick(Sender: tObject);
    procedure EdtReferClick(Sender: tObject);
    procedure EdtReferExit(Sender: tObject);
    procedure Bit_CancelarMateriaClick(Sender: tObject);
    procedure EdtReferChange(Sender: tObject);
    procedure CurrConsumoEnter(Sender: tObject);
    procedure Bit_GravarMateriaClick(Sender: tObject);
    procedure CurrConsumoExit(Sender: tObject);
    procedure FormKeyPress(Sender: tObject; var Key: Char);
    procedure AlterarItens1Click(Sender: tObject);
    procedure ExcluirItens1Click(Sender: tObject);
    procedure Bit_ExcluirMateriaClick(Sender: tObject);
    procedure CurrAnteriorEnter(Sender: tObject);
    procedure DateModifEnter(Sender: tObject);
    procedure Bit_RelatorioClick(Sender: tObject);
    procedure SqlRelProdutosBeforeOpen(DataSet: TDataSet);
    procedure EdtReferEnter(Sender: tObject);
    procedure EdtPRD_REFEREnter(Sender: tObject);
    procedure Bit_CopiarClick(Sender: tObject);
  private
    { Private declarations }
    wIncluir,wIncluirItem : Boolean;
         {campos}
    {CampoEdit   :TEdit;}
    CampoEdit    :TEdit;
    CampoDBEdit  :TDBEdit;
    CampoData    :TDBDateEdit;
    CampoCurrency:TCurrencyEdit;
    CampoDataEdit:TDateEdit;
    procedure HabilitaMateria;
    procedure DesabilitaMateria;
    procedure LimparDados;
    procedure AlterarItens;
    procedure ExcluirItens;
    procedure MudaCorCampos(Sender: tObject);

  public
    { Public declarations }
  end;

var
  FormFichaTecnica: TFormFichaTecnica;

implementation

{$R *.DFM}

uses Uteis, Ftc0002, Ftc0003, DataCad, DmProdu, Men0001,
  Prd0006, ufrmpreviewrb, iniciodb;







procedure TFormFichaTecnica.MudaCorCampos(Sender: tObject);
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
  {cor dos campos TEdit}
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
  {cor dos campos TCurrencyEdit}
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
  {CampoDataEdit:TDateEdit}
   if Assigned(CampoDataEdit) then
      begin
          CampoDataEdit.color := clWindow;
      end;
   if ActiveControl is TDateEdit then
      begin
          TDateEdit(ActiveControl).color := $0080FFFF;
          CampoDataEdit := TDateEdit(ActiveControl);
      end
   else
      begin
          CampoDataEdit := nil;
      end;
   {CampoEdit:TEdit;
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
}
end;

procedure TFormFichaTecnica.FormShow(Sender: tObject);
begin
    Left := 27;
    Top  := 0;
    //
    {ativa o método ao evento OnActiveControlChange}
    Screen.OnActiveControlChange   := MudaCorCampos;
    Screen.Cursor := crHourGlass;
    {Verificar no parametro se tem variações}
    EdtPRD_REFER.Hint := 'Informe a referência para pesquisa. '+#13+'Pressione Esc para limpar a tela da ficha !';
    try
      DataCadastros.sqlUpdate.Close;
      DataCadastros.SqlUpdate.sql.text :=SQLDEF('PARAMETROS','Select PMT_VARIACOES from PRMT0001','','EMP_CODIGO','');
      DataCadastros.sqlUpdate.Open;
      if not DataCadastros.sqlUpdate.Eof then
         begin
             if DataCadastros.sqlUpdate.FieldByName('PMT_VARIACOES').AsString = 'S' then
                begin
                    {Posicionando os objetos}
                    GrpVariacoes.Visible := true;
                    GrpVariacoes.Top     :=  84;
                    GrpMateria.Top       := 138;
                    GrpProcesso.Top      := 340;
                    GrpMateriaPrima.Top  := 422;
                    GrpVarConsumo.Visible:= true;
                    Panel2.Top           := 512;
                    Panel3.Top           := 512;
                    FormFichaTecnica.AutoSize := true;
                    {Dimensionando o grid qdo tem variaçao}
                    DBGridFichaTecnicaItem.Columns[0].Width  := 71; //Codigo
                    DBGridFichaTecnicaItem.Columns[1].Width  := 325;//Descricao
                    DBGridFichaTecnicaItem.Columns[2].Width  := 56; //UC
                    DBGridFichaTecnicaItem.Columns[3].Width  := 31; //UND
                    DBGridFichaTecnicaItem.Columns[4].Width  := 19; //var2
                    DBGridFichaTecnicaItem.Columns[5].Width  := 19; //var3
                    DBGridFichaTecnicaItem.Columns[6].Width  := 19; //var4
                    DBGridFichaTecnicaItem.Columns[7].Width  := 19; //var5
                    DBGridFichaTecnicaItem.Columns[8].Width  := 19; //var6
                    DBGridFichaTecnicaItem.Columns[9].Width  := 19; //var7
                    DBGridFichaTecnicaItem.Columns[10].Width := 19; //var8
                    DBGridFichaTecnicaItem.Columns[11].Width := 19; //var8

                end
             else
                begin
                    {Posicionando os objetos}
                    GrpVariacoes.Visible := False;
                    GrpMateria.Top       :=  84;
                    GrpProcesso.Top      := 284;
                    GrpMateriaPrima.Top  := 366;
                    GrpVarConsumo.Visible:= False;
                    Panel2.Top           := 455;
                    Panel3.Top           := 455;
                    FormFichaTecnica.AutoSize := true;
                    {Dimensionando o grid qdo tem variaçao}
                    DBGridFichaTecnicaItem.Columns[0].Width    := 71;
                    DBGridFichaTecnicaItem.Columns[1].Width    := 516;
                    DBGridFichaTecnicaItem.Columns[2].Width    := 56;
                    DBGridFichaTecnicaItem.Columns[1].Width    := 485;//Descricao
                    DBGridFichaTecnicaItem.Columns[2].Width    := 56; //UC
                    DBGridFichaTecnicaItem.Columns[3].Width    := 31; //UND
                    DBGridFichaTecnicaItem.Columns[4].Visible  := false; //var1
                    DBGridFichaTecnicaItem.Columns[5].Visible  := false; //var2
                    DBGridFichaTecnicaItem.Columns[6].Visible  := false; //var3
                    DBGridFichaTecnicaItem.Columns[7].Visible  := false; //var4
                    DBGridFichaTecnicaItem.Columns[8].Visible  := false; //var5
                    DBGridFichaTecnicaItem.Columns[9].Visible  := false; //var6
                    DBGridFichaTecnicaItem.Columns[10].Visible := false; //var7
                    DBGridFichaTecnicaItem.Columns[11].Visible := false; //var8
                end;
         end;
       HabilitaBotoes;
       DesabilitaMateria;
    except on E:EDataBaseError do
        uteis.erro  (pchar('Erro ao abrir a tabela de Parametros !'+e.message));
    end;
    Screen.Cursor := crDefault;
end;

procedure TFormFichaTecnica.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
    if (SqlCdsItensFicha.IsEmpty = true) and (EdtPRD_REFER.Text <> '') then
       begin
           uteis.aviso('Informe a Matéria-Prima !');
           EdtRefer.SelectAll;
           EdtRefer.SetFocus;
           Action := caNone;
           exit;
       end
    else
       begin
           Screen.OnActiveControlChange := NIL;
           screen.Cursor := crHourglass;
           try
             SqlCdsProduto.Close;
             SqlCdsItensFicha.Close;
             SqlCdsMaterial.Close;
             DmProducao.CdsFichaTec.Close;
             DmProducao.CdsItemFicha.Close;
           except on E:EdataBaseError do
             uteis.erro  (pchar('Erro ao fechar as tabelas !'+e.message));
           end;
           screen.Cursor := crDefault;
    end;
end;

Procedure TFormFichaTecnica.BuscaRefer;
begin
    Screen.Cursor := crHourGlass;
    try
      DmProducao.CdsFichaTec.Close;
      DmProducao.CdsFichaTec.CommandText := SQLDEF('PRODUTOS','select F1.*,P1.PRD_DESCRI,P1.PRD_DCVAR1,P1.PRD_DCVAR2,P1.PRD_DCVAR3,P1.PRD_DCVAR4,P1.PRD_DCVAR5,P1.PRD_DCVAR6,P1.PRD_DCVAR7,P1.PRD_DCVAR8 from FTC0000 F1 '+
                                                   'LEFT JOIN PRD0000 P1 ON F1.PRD_REFER = P1.PRD_REFER','where F1.PRD_REFER = '''+EdtPRD_REFER.Text+'''','F1.PRD_REFER','F1.');
      DmProducao.CdsFichaTec.Open;
      if DmProducao.CdsFichaTec.IsEmpty = true then
         begin
             if wIncluir = true then
                begin
                    DmProducao.CdsFichaTec.Insert;
                    try
                      SqlCdsProduto.Close;
                      SqlCdsProduto.CommandText := SQLDEF('PRODUTOS','select P2.PRD_REFER,P2.PRD_DESCRI,P2.PRD_DCVAR1,P2.PRD_DCVAR2,P2.PRD_DCVAR3,P2.PRD_DCVAR4,P2.PRD_DCVAR5,P2.PRD_DCVAR6,P2.PRD_DCVAR7,P2.PRD_DCVAR8 from PRD0000 P2 ',
                                                          'where P2.PRD_REFER = '''+EdtPRD_REFER.Text+'''','P2.PRD_REFER','P2.');
                      SqlCdsProduto.Open;
                      if SqlCdsProduto.IsEmpty = false then
                         begin
                             EdtDescricao.Text    := SqlCdsProdutoPRD_DESCRI.AsString;
                             DbEdit1.Text         := SqlCdsProdutoPRD_DCVAR1.AsString;
                             DbEdit2.Text         := SqlCdsProdutoPRD_DCVAR2.AsString;
                             DbEdit3.Text         := SqlCdsProdutoPRD_DCVAR3.AsString;
                             DbEdit4.Text         := SqlCdsProdutoPRD_DCVAR4.AsString;
                             DbEdit5.Text         := SqlCdsProdutoPRD_DCVAR5.AsString;
                             DbEdit6.Text         := SqlCdsProdutoPRD_DCVAR6.AsString;
                             DbEdit7.Text         := SqlCdsProdutoPRD_DCVAR7.AsString;
                             DbEdit8.Text         := SqlCdsProdutoPRD_DCVAR8.AsString;
///                             SpPesquisa.Enabled   := false;
                             DesabilitaBotoes;
                             SqlCdsProduto.Close;
                         end
                      else
                         begin
                             uteis.aviso('Produto não encontrado !');
                             EdtPRD_REFER.Enabled  := True;
                             EdtPRD_REFER.Text     := '';
                             EdtPRD_REFER.SetFocus;
//                             SpPesquisa.Enabled    := true;
                         end;
                      DbDtFTC_CRIACAO.Date         := now;
                      DbeFTC_TUP.Field.AsCurrency  := 1;
                    except on E:EDataBaseError do
                      uteis.erro  (pchar('Erro ao localizar o produto !'+e.message));
                    end;
                end
             else
                begin
                    uteis.aviso('Ficha técnica não encontrada !');
//                    SpPesquisa.Enabled    := true;
                    EdtPRD_REFER.Text     := '';
                    EdtDescricao.Text     := '';
                    EdtPRD_REFER.Enabled  := True;
                    EdtPRD_REFER.SetFocus;
                    DmProducao.CdsFichaTec.Close;
                end;
         end
      else
         begin
             wIncluir := False;
             if DmProducao.CdsFichaTec.IsEmpty = true then
                DmProducao.DsFichaTec.AutoEdit := False
             else
                DmProducao.DsFichaTec.AutoEdit := True;
//             SpPesquisa.Enabled   := false;
             EdtDescricao.Text    := DmProducao.CdsFichaTecPRD_DESCRI.AsString;
         end;
    except on E:EdatabaseError do
      uteis.erro  (pchar('Erro ao localizar a ficha técnica !'+e.Message));
    end;
    BuscaItens;
    Screen.Cursor := crDefault;
end;

procedure TFormFichaTecnica.EdtPRD_REFERExit(Sender: tObject);
begin
    if (ActiveControl.Name = 'Bit_Excluir')or
       (ActiveControl.Name = 'Bit_Relatorio')or
       (ActiveControl.Name = 'Bit_Copiar')or
       (ActiveControl.Name = 'Bit_Lista')or
       (ActiveControl.Name = 'Bit_novo')or
       (ActiveControl.Name = 'Bit_Cancelar')or
       (ActiveControl.Name = 'Bit_Sair')then
       exit;
    if EdtPRD_REFER.Text <> '' then
       begin
           BuscaRefer;
           BuscaItens;
       end
    else
       begin
           uteis.aviso('Informe a Referência !');
           EdtPRD_REFER.Color    := $0080FFFF;
           EdtPRD_REFER.Enabled  := True;
           EdtPRD_REFER.SetFocus;
       end;
end;

procedure TFormFichaTecnica.HabilitaBotoes;
begin
    Bit_novo.Enabled      := True;
    Bit_Copiar.Enabled    := True;
    Bit_Excluir.Enabled   := True;
    Bit_Sair.Visible      := True;
    Bit_Lista.Enabled     := True;
    Bit_Relatorio.Enabled := True;
    Bit_Cancelar.Visible  := False;
    Bit_Gravar.Enabled    := False;
end;

procedure TFormFichaTecnica.DesabilitaBotoes;
begin
    Bit_novo.Enabled      := False;
    Bit_Copiar.Enabled    := False;
    Bit_Excluir.Enabled   := False;
    Bit_Sair.Visible      := False;
    Bit_Lista.Enabled     := False;
    Bit_Relatorio.Enabled := False;
    Bit_Cancelar.Visible  := True;
    Bit_Gravar.Enabled    := True;
end;

procedure TFormFichaTecnica.Bit_GravarClick(Sender: tObject);
begin
    if (SqlCdsItensFicha.IsEmpty = true) and (EdtPRD_REFER.Text <> '') then
       begin
           uteis.aviso('Informe a Matéria-Prima !');
           EdtRefer.SelectAll;
           EdtRefer.SetFocus;
           exit;
       end;
    if DbDtFTC_CRIACAO.Text = '  /  /    ' then
       begin
           uteis.aviso('Digite a data de criação');
           DbDtFTC_CRIACAO.Setfocus;
           Exit;
       end;
    if DbeFTC_TUP.Text = '0' then
       begin
           uteis.aviso('Você não informou o TUP. Vou colocar o TUP padrão = 1 ');
           DbeFTC_TUP.Field.AsCurrency := 1;
       end;
    try
      DmProducao.CdsFichaTecPRD_REFER.AsString  := EdtPRD_REFER.Text;
      DmProducao.CdsFichaTecEmp_Codigo.AsString := dbInicio.Empresa.EMP_CODIGO;
      screen.Cursor := crHourglass;
      if DmProducao.CdsFichaTec.State in [dsEdit,dsInsert] then
         begin
             DmProducao.CdsFichaTec.ApplyUpdates(0);
         end;
      LimparDados;
      wIncluir := false;
      DesabilitaMateria;
      HabilitaBotoes;
      EdtPRD_REFER.Enabled  := true;
      EdtPRD_REFER.Color    := clWindow;
      EdtPRD_REFER.SetFocus;
      SpPesquisa.Enabled := True;
    except on E:EdataBaseError do
       uteis.erro  (pchar('Erro ao gravar o registro !'+e.message));
    end;
    screen.Cursor := crDefault;
end;

procedure TFormFichaTecnica.Bit_CancelarClick(Sender: tObject);
begin
    //Quando cancela ficha na inclusao os itens são deletados
    if wIncluir = true then
       begin
           Screen.Cursor := crHourGlass;
           try
             DataCadastros.sqlUpdate.Close;
             DataCadastros.SqlUpdate.sql.text :=SQLDEF('PRODUTOS','Delete from FTC_IT01 ','where PRD_REFER = '''+EdtPRD_REFER.Text+'''','','');
             DataCadastros.sqlUpdate.Execsql;
           except on E:EdataBaseError do
              uteis.erro  (pchar('Erro ao excluir os itens da ficha tecnica !'+e.message));
           end;
           Screen.Cursor := crDefault;
           SpPesquisa.Enabled := True;
           SqlCdsItensFicha.Close;
       end;
    SqlCdsProduto.Close;
    SqlCdsItensFicha.Close;
    SqlCdsMaterial.Close;
    DmProducao.CdsFichaTec.Close;
    DmProducao.CdsItemFicha.Close;
    wIncluir := false;
    EdtDescricao.Text  := '';
    LimparDados;
    HabilitaBotoes;
    EdtPRD_REFER.Text    := '';
    EdtPRD_REFER.Color   := clWindow;
    EdtPRD_REFER.Enabled := true;
    EdtPRD_REFER.SetFocus;
end;

procedure TFormFichaTecnica.Bit_ExcluirClick(Sender: tObject);
begin
    screen.Cursor := crHourglass;
    if EdtPRD_REFER.Text <> '' then
       begin
           if not DmProducao.CdsFichaTec.IsEmpty then
              if uteis.confirmacao ( 'Deseja excluir essa Ficha Técnica?')=MrYes  then
                 if uteis.confirmacao ( 'A ficha de "Custo" do produto também será excluida. Confirma a exclusão?')=MrYes  then
                    begin
                        try
                          DataCadastros.sqlUpdate.Close;
                          DataCadastros.SqlUpdate.sql.text :=SQLDEF('PRODUTOS','Delete from FTC_IT01 ','where PRD_REFER = '''+EdtPRD_REFER.Text+'''','','');
                          DataCadastros.sqlUpdate.Execsql;
                        except on E:EdataBaseError do
                           uteis.erro  (pchar('Erro ao excluir os itens da ficha tecnica !'+e.message));
                        end;
                        DmProducao.CdsFichaTec.Delete;
                        DmProducao.CdsFichaTec.ApplyUpdates(0);
                    end;
       end
    else
       begin
           uteis.aviso('Informe uma Referência !');
       end;
    SqlCdsProduto.Close;
    SqlCdsItensFicha.Close;
    SqlCdsMaterial.Close;
    DmProducao.CdsFichaTec.Close;
    DmProducao.CdsItemFicha.Close;
    HabilitaBotoes;
    EdtDescricao.Text  := '';
    LimparDados;
    wIncluir := False;
    EdtPRD_REFER.Text    := '';
    EdtPRD_REFER.Color   := clWindow;
    EdtPRD_REFER.Enabled := true;
    EdtPRD_REFER.SelectAll;
    EdtPRD_REFER.SetFocus;
    screen.Cursor := crDefault;
end;

procedure TFormFichaTecnica.Bit_SairClick(Sender: tObject);
begin
    if (SqlCdsItensFicha.IsEmpty = true) and (EdtPRD_REFER.Text <> '') then
       begin
           uteis.aviso('Informe a Matéria-Prima !');
           EdtRefer.SelectAll;
           EdtRefer.SetFocus;
           exit;
       end;
    close;
end;

procedure TFormFichaTecnica.TbFichaTecnicaBeforeEdit(DataSet: TDataSet);
begin
    DesabilitaBotoes;
end;

procedure TFormFichaTecnica.Bit_ListaClick(Sender: tObject);
begin
    try
      try
        FormFichaTecGrid := TFormFichaTecGrid.Create(Application);
        FormFichaTecGrid.ShowModal;
      finally
        FormFichaTecGrid.Destroy;
        FormFichaTecGrid := nil //  nil é - From Assigned = False
      end;
    except
        //beep;
        uteis.erro  ('Ocorreu um erro na criação do formulário!');
    end;
end;

procedure TFormFichaTecnica.EdtPRD_REFERClick(Sender: tObject);
begin
    EdtPRD_REFER.SelectAll;
end;

procedure TFormFichaTecnica.DBGridFichaTecnicaItemDblClick(
  Sender: tObject);
begin
    AlterarItens;
end;

procedure TFormFichaTecnica.DbDtFTC_CRIACAOExit(Sender: tObject);
begin
    if DbDtFTC_CRIACAO.Text <> '  /  /    ' then
       if not TestaDataStr(DbDtFTC_CRIACAO.Text) then
          DbDtFTC_CRIACAO.setfocus;
end;

procedure TFormFichaTecnica.Bit_novoClick(Sender: tObject);
begin
{
    if uteis.confirmacao ( ('Informe a referência ou clique '+#13+'na lupa para buscar por descrição !'))=mrYes then
       begin
}
           Screen.Cursor      := crHourGlass;
//           SpPesquisa.Enabled := true;
           wIncluir := true;
           DesabilitaBotoes;
           DmProducao.CdsFichaTec.Close;
           SqlCdsItensFicha.Close;
           LimparDados;
           EdtDescricao.Text := '';
           EdtPRD_REFER.Text := '';
           EdtPRD_REFER.SetFocus;
           Screen.Cursor      := crDefault;
{
       end
    else
       begin
           wIncluir := false;
           HabilitaBotoes;
           LimparDados;
           DmProducao.CdsFichaTec.Close;
           SqlCdsItensFicha.Close;
           EdtDescricao.Text := '';
           EdtPRD_REFER.Text := '';
           EdtPRD_REFER.SetFocus;
       end;
}
end;

procedure TFormFichaTecnica.DbeFTC_TUPExit(Sender: tObject);
begin
    if DbeFTC_TUP.Text = '0' then
       begin
           uteis.aviso('Você não informou o TUP. Vou colocar o TUP padrão = 1 ');
           if DmProducao.CdsFichaTec.State in [dsEdit,dsInsert] then
              DmProducao.CdsFichaTecFTC_TUP.AsCurrency := 1;
       end;
end;

procedure TFormFichaTecnica.SpPesquisaClick(Sender: tObject);
begin

      FormProdutoGrid := TFormProdutoGrid.Create(Application);
      try
         FormProdutoGrid.tAG := 3;
         FormProdutoGrid.ShowModal;
         if FormProdutoGrid.modalresult=mrok then
         begin
              EdtPrd_Refer.Text := FormProdutoGrid.ReferRetorno;
              EdtDescricao.Text := FormProdutoGrid.DescricaoRetorno;
              EdtPrd_Refer.SetFocus;
         end;



      finally

         FreeAndNil(FormProdutoGrid);
      end;
end;

procedure TFormFichaTecnica.SpProdutoClick(Sender: tObject);
begin
    if EdtPRD_REFER.Text <> '' then
    begin
             FormProdutoGrid := TFormProdutoGrid.Create(Application);
             try
                FormProdutoGrid.ShowModal;
                if FormProdutoGrid.modalresult=mrok then
                begin
                     EdtREFER.Text := FormProdutoGrid.ReferRetorno;
                     EdtProduto.Text := FormProdutoGrid.DescricaoRetorno;
                     EdtREFER.SetFocus;
                end;
             finally
                FormProdutoGrid.Destroy;
                FormProdutoGrid := nil;
             end;
    end
    else
    begin
           uteis.aviso('Informe a Referência do Produto Acabado !');
           EdtPRD_REFER.SelectAll;
           EdtPRD_REFER.SetFocus;
    end;
end;

procedure TFormFichaTecnica.EdtReferClick(Sender: tObject);
begin
    EdtRefer.SelectAll;
end;

procedure TFormFichaTecnica.EdtReferExit(Sender: tObject);
begin
    if (ActiveControl.Name = 'Bit_Excluir')or
       (ActiveControl.Name = 'Bit_Relatorio')or
       (ActiveControl.Name = 'Bit_Lista')or
       (ActiveControl.Name = 'Bit_novo')or
       (ActiveControl.Name = 'Bit_Cancelar')or
       (ActiveControl.Name = 'Bit_Sair')then
       exit;
    if EdtREFER.Text <> '' then
       BuscaMaterial;
    EdtRefer.Color := clWindow;   
end;

procedure TFormFichaTecnica.BuscaMaterial;
begin
    if (ActiveControl.Name = 'Bit_CancelarMateria') or (ActiveControl.Name = 'Bit_GravarMateria') then
       exit;
    Screen.Cursor := crHourGlass;
    try
      SqlCdsMaterial.Close;
      SqlCdsMaterial.CommandText := SQLDEF('PRODUTOS','select P2.PRD_REFER,P2.PRD_DESCRI from PRD0000 P2 ','where P2.PRD_REFER = '''+EdtRefer.Text+'''','P2.PRD_REFER','P2.');
      SqlCdsMaterial.Open;
      if SqlCdsMaterial.IsEmpty = false then
         begin
             wIncluirItem := true;
             EdtProduto.Text := SqlCdsMaterialPRD_DESCRI.AsString;
             HabilitaMateria;
             {Habilita somente quem tem variacao}
             ChkV1.Enabled := IIF(DBEdit1.Text <> '','true','False');
             ChkV2.Enabled := IIF(DBEdit2.Text <> '','true','False');
             ChkV3.Enabled := IIF(DBEdit3.Text <> '','true','False');
             ChkV4.Enabled := IIF(DBEdit4.Text <> '','true','False');
             ChkV5.Enabled := IIF(DBEdit5.Text <> '','true','False');
             ChkV6.Enabled := IIF(DBEdit6.Text <> '','true','False');
             ChkV7.Enabled := IIF(DBEdit7.Text <> '','true','False');
             ChkV8.Enabled := IIF(DBEdit8.Text <> '','true','False');
             ChkV1.Checked := true;
             CurrConsumo.SetFocus;
         end
      else
         begin
             uteis.aviso('Materia-Prima não cadastrado !');
             EdtRefer.Text   := '';
             EdtProduto.Text := '';
             EdtRefer.SetFocus;
             EdtRefer.SelectAll;
         end;
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao localizar o material !'+e.message));
    end;
    Screen.Cursor := crDefault;
end;

procedure TFormFichaTecnica.HabilitaMateria;
begin
    EdtProduto.Enabled    := true;
    CurrConsumo.Enabled   := true;
    CurrAnterior.Enabled  := true;
    DateModif.Enabled     := true;
    GrpVarConsumo.Enabled := true;
end;

procedure TFormFichaTecnica.DesabilitaMateria;
begin
    EdtProduto.Enabled    := False;
    CurrConsumo.Enabled   := False;
    CurrAnterior.Enabled  := False;
    DateModif.Enabled     := False;
    GrpVarConsumo.Enabled := False;
end;

procedure TFormFichaTecnica.LimparDados;
begin
    EdtRefer.Text        := '';
    EdtProduto.Text      := '';
    CurrConsumo.Value    := 0;
    CurrAnterior.Value   := 0;
    DateModif.Text       := '';
    ChkV1.Checked        := false;
    ChkV1.Enabled        := true;
    ChkV2.Checked        := false;
    ChkV2.Enabled        := true;
    ChkV3.Checked        := false;
    ChkV3.Enabled        := true;
    ChkV4.Checked        := false;
    ChkV4.Enabled        := true;
    ChkV5.Checked        := false;
    ChkV5.Enabled        := true;
    ChkV6.Checked        := false;
    ChkV6.Enabled        := true;
    ChkV7.Checked        := false;
    ChkV7.Enabled        := true;
    ChkV8.Checked        := false;
    ChkV8.Enabled        := true;
end;

procedure TFormFichaTecnica.Bit_CancelarMateriaClick(Sender: tObject);
begin
    BuscaItens;
    LimparDados;
    SpProduto.Enabled    := True;
    Panel4.Enabled       := true;
    Panel3.Enabled       := True;
    Panel2.Enabled       := True;
    GrpVariacoes.Enabled := True;
    GrpMateria.Enabled   := True;
    GrpProcesso.Enabled  := True;
    EdtRefer.TabStop     := True;
    EdtRefer.ReadOnly    := False;
    EdtREFER.Color       := clWindow;
    EdtRefer.SetFocus;
end;

procedure TFormFichaTecnica.EdtReferChange(Sender: tObject);
begin
    if EdtRefer.Text <> '' then
       begin
           Bit_GravarMateria.Enabled   := true;
           Bit_CancelarMateria.Enabled := true;
           Bit_ExcluirMateria.Enabled  := true;
           Panel4.Enabled       := False;
           Panel3.Enabled       := False;
           Panel2.Enabled       := False;
           GrpVariacoes.Enabled := False;
           GrpMateria.Enabled   := False;
           GrpProcesso.Enabled  := False;
           HabilitaMateria;
       end
    else
       begin
           Bit_GravarMateria.Enabled   := False;
           Bit_CancelarMateria.Enabled := False;
           Bit_ExcluirMateria.Enabled  := False;
           Panel4.Enabled       := true;
           Panel3.Enabled       := True;
           Panel2.Enabled       := True;
           GrpVariacoes.Enabled := True;
           GrpMateria.Enabled   := True;
           GrpProcesso.Enabled  := True;
           DesabilitaMateria;
       end;
end;

procedure TFormFichaTecnica.CurrConsumoEnter(Sender: tObject);
begin
    CurrConsumo.SelectAll;
end;

procedure TFormFichaTecnica.Bit_GravarMateriaClick(Sender: tObject);
begin
    if CurrConsumo.Value = 0 then
       begin
           uteis.aviso('Informe a Qtde de consumo !');
           CurrConsumo.SetFocus;
           CurrConsumo.SelectAll;
           exit;
       end;
    if EdtRefer.Text = '' then
       begin
           uteis.aviso('Informe o código do material !');
           EdtRefer.SetFocus;
           EdtRefer.SelectAll;
           Exit;
       end;
    Screen.Cursor := crHourGlass;
    try
      if DmProducao.CdsFichaTec.State in [dsBrowse] then
         DmProducao.CdsFichaTec.Edit;
      SpPesquisa.Enabled := False;
      DmProducao.CdsItemFicha.Close;
      DmProducao.CdsItemFicha.CommandText := SQLDEF('PRODUTOS','Select F1.* From FTC_IT01 F1 ','where F1.PRD_REFER = '''+EdtPRD_REFER.Text+'''','F1.PRD_REFER','F1.');
      DmProducao.CdsItemFicha.Open;
      if wIncluirItem = true then
         begin
             DmProducao.CdsItemFicha.Insert;
         end
      else
         begin
             if DmProducao.CdsItemFicha.Locate('FTI_REGISTRO',SqlCdsItensFichaFTI_REGISTRO.AsInteger,[])=true then
                DmProducao.CdsItemFicha.Edit;
         end;
      DmProducao.CdsItemFichaPRD_REFER.AsString        := EdtPRD_REFER.Text;
      DmProducao.CdsItemFichaPRD_REFER_ITENS.AsString  := EdtRefer.Text;
      DmProducao.CdsItemFichaFTI_MODIFICADA.AsDateTime := DateModif.Date;
      DmProducao.CdsItemFichaFTI_UC.AsCurrency         := CurrConsumo.Value;
      DmProducao.CdsItemFichaFTI_UCMODIFIC.AsCurrency  := CurrAnterior.Value;
      {
      if (ChkV1.Checked = False)and (ChkV2.Checked = False)and (ChkV3.Checked = False)and (ChkV4.Checked = False) and
         (ChkV5.Checked = False)and (ChkV6.Checked = False)and (ChkV7.Checked = False)and (ChkV8.Checked = False) then
         ChkV1.Checked := true;
      }         
      DmProducao.CdsItemFichaFTI_MODE1.AsString        := iif(ChkV1.checked ,'X','');
      DmProducao.CdsItemFichaFTI_MODE2.AsString        := iif(ChkV2.checked ,'X','');
      DmProducao.CdsItemFichaFTI_MODE3.AsString        := iif(ChkV3.checked ,'X','');
      DmProducao.CdsItemFichaFTI_MODE4.AsString        := iif(ChkV4.checked ,'X','');
      DmProducao.CdsItemFichaFTI_MODE5.AsString        := iif(ChkV5.checked ,'X','');
      DmProducao.CdsItemFichaFTI_MODE6.AsString        := iif(ChkV6.checked ,'X','');
      DmProducao.CdsItemFichaFTI_MODE7.AsString        := iif(ChkV7.checked ,'X','');
      DmProducao.CdsItemFichaFTI_MODE8.AsString        := iif(ChkV8.checked ,'X','');
      DmProducao.CdsItemFichaEMP_CODIGO.AsString       := dbInicio.Empresa.EMP_CODIGO;
      if DmProducao.CdsItemFicha.State in [dsInsert,dsEdit] then
         begin
             DmProducao.CdsItemFicha.ApplyUpdates(0);
             DmProducao.CdsItemFicha.Close;
         end;
      BuscaItens;   
      LimparDados;
      SpProduto.Enabled := true;
      EdtRefer.TabStop  := True;
      EdtRefer.ReadOnly := False;
      EdtREFER.Color    := clWindow;
      EdtREFER.SetFocus;
    except on E:EdataBaseError do
       uteis.erro  (pchar('Erro ao gravar o item da ficha técnica ! '+e.message));
    end;
    Screen.Cursor := crDefault;
end;

procedure TFormFichaTecnica.CurrConsumoExit(Sender: tObject);
begin
    if CurrAnterior.Value = 0 then
       CurrAnterior.Value := CurrConsumo.Value;
end;

procedure TFormFichaTecnica.FormKeyPress(Sender: tObject; var Key: Char);
begin
    if key =#27 then
       begin
           try
             if (SqlCdsItensFicha.IsEmpty = true) and (EdtPRD_REFER.Text <> '') then
                begin
                    uteis.aviso('Informe a Matéria-Prima !');
                    EdtRefer.SelectAll;
                    EdtRefer.SetFocus;
                    exit;
                end;
             SqlCdsProduto.Close;
             SqlCdsItensFicha.Close;
             SqlCdsMaterial.Close;
             DmProducao.CdsFichaTec.Close;
             DmProducao.CdsItemFicha.Close;
             HabilitaBotoes;
             EdtDescricao.Text  := '';
             LimparDados;
             wIncluir := False;
             EdtPRD_REFER.Text    := '';
             EdtPRD_REFER.Color   := clWindow;
             EdtPRD_REFER.Enabled := true;
             EdtPRD_REFER.SelectAll;
             EdtPRD_REFER.SetFocus;
           except on E:EDataBaseError do
             uteis.erro  (pchar('Erro ao fechar as tabelas !'+e.message));
           end;
           Key := #0;
       end;
end;

procedure TFormFichaTecnica.AlterarItens;
begin
    {Seleciona o item da ficha tecnica para alteração}
    Screen.cursor := crHourGlass;
    try
      EdtRefer.Text      := SqlCdsItensFichaPRD_REFER_ITENS.AsString;
      EdtProduto.Text    := SqlCdsItensFichaPRD_DESCRI.AsString;
      CurrConsumo.Value  := SqlCdsItensFichaFTI_UC.AsCurrency;
      DateModif.Date     := SqlCdsItensFichaFTI_MODIFICADA.AsDateTime;
      CurrAnterior.Value := SqlCdsItensFichaFTI_UCMODIFIC.AsCurrency;
      {Desabilita as variacoes e atribui os dados}
      ChkV1.Checked      := IIF(SqlCdsItensFichaFTI_MODE1.AsString = 'X','TRUE','FALSE');
      ChkV1.Enabled      := IIF(DBEdit1.Text <> '','TRUE','FALSE');
      ChkV2.Checked      := IIF(SqlCdsItensFichaFTI_MODE2.AsString = 'X','TRUE','FALSE');
      ChkV2.Enabled      := IIF(DBEdit2.Text <> '','TRUE','FALSE');
      ChkV3.Checked      := IIF(SqlCdsItensFichaFTI_MODE3.AsString = 'X','TRUE','FALSE');
      ChkV3.Enabled      := IIF(DBEdit3.Text <> '','TRUE','FALSE');
      ChkV4.Checked      := IIF(SqlCdsItensFichaFTI_MODE4.AsString = 'X','TRUE','FALSE');
      ChkV4.Enabled      := IIF(DBEdit4.Text <> '','TRUE','FALSE');
      ChkV5.Checked      := IIF(SqlCdsItensFichaFTI_MODE5.AsString = 'X','TRUE','FALSE');
      ChkV5.Enabled      := IIF(DBEdit5.Text <> '','TRUE','FALSE');
      ChkV6.Checked      := IIF(SqlCdsItensFichaFTI_MODE6.AsString = 'X','TRUE','FALSE');
      ChkV6.Enabled      := IIF(DBEdit6.Text <> '','TRUE','FALSE');
      ChkV7.Checked      := IIF(SqlCdsItensFichaFTI_MODE7.AsString = 'X','TRUE','FALSE');
      ChkV7.Enabled      := IIF(DBEdit7.Text <> '','TRUE','FALSE');
      ChkV8.Checked      := IIF(SqlCdsItensFichaFTI_MODE8.AsString = 'X','TRUE','FALSE');
      ChkV8.Enabled      := IIF(DBEdit8.Text <> '','TRUE','FALSE');
      EdtREFER.Color     := $00D7D7D7;
      EdtRefer.TabStop   := False;
      EdtRefer.ReadOnly  := True;
      SpProduto.Enabled  := False;
      CurrConsumo.SetFocus;
      wIncluirItem := false;
    except on E:EdataBaseError do
       uteis.erro  (pchar('Erro ao selecionar o item da ficha técnica !'+e.Message));
    end;
    Screen.Cursor := crDefault;
end;

procedure TFormFichaTecnica.AlterarItens1Click(Sender: tObject);
begin
    AlterarItens;
end;

procedure TFormFichaTecnica.ExcluirItens1Click(Sender: tObject);
begin
    ExcluirItens;
end;

procedure TFormFichaTecnica.ExcluirItens;
begin
    Screen.Cursor := crHourGlass;
    try
      if uteis.confirmacao ( ('Confirma a exclusão do Item ?'+#13+'Material : '+SqlCdsItensFichaPRD_REFER_ITENS.AsString+#13+'Descrição : '+SqlCdsItensFichaPRD_DESCRI.AsString)) = mrYes then
         begin
             try
               DataCadastros.sqlUpdate.close;
               DataCadastros.SqlUpdate.sql.text :=Sqldef('PRODUTOS','Delete from FTC_IT01 ','where FTI_REGISTRO = '''+IntToStr(SqlCdsItensFichaFTI_REGISTRO.AsInteger)+'''','','');
               DataCadastros.sqlUpdate.Execsql;
               BuscaItens;
             except on E:EdataBaseError do
                uteis.erro  (pchar('Erro ao confirmar a exclusão do item da ficha técnica !'+e.message));
             end;
         end;
    except on E:EdataBaseError do
      uteis.erro  (pchar('Erro ao excluir o item da ficha técnica !'+e.Message));
    end;
    LimparDados;
    EdtRefer.Color    := clWindow;
    EdtRefer.TabStop  := true;
    EdtRefer.ReadOnly := False;
    SpProduto.Enabled := true;
    EdtRefer.SelectAll;
    EdtRefer.SetFocus;
    Screen.Cursor := crDefault;
end;

procedure TFormFichaTecnica.Bit_ExcluirMateriaClick(Sender: tObject);
begin
    if EdtRefer.Text <> '' then
       ExcluirItens
    else
       begin
           uteis.aviso('Informe uma Materia-Prima !');
           DBGridFichaTecnicaItem.SetFocus;
       end;
end;

procedure TFormFichaTecnica.CurrAnteriorEnter(Sender: tObject);
begin
    CurrAnterior.SelectAll;
end;

procedure TFormFichaTecnica.DateModifEnter(Sender: tObject);
begin
    DateModif.SelectAll;
end;

procedure TFormFichaTecnica.Bit_RelatorioClick(Sender: tObject);
begin
    Screen.Cursor := crHourGlass;
    if EdtPRD_REFER.Text <> '' then
       begin
           try
             SqlRelProdutos.Close;
             SqlRelProdutos.CommandText := SQLDEF('PRODUTOS','select F1.PRD_REFER,F1.ftc_tup,F1.ftc_criacao,F1.FTC_PROC1,F1.FTC_PROC2,F1.FTC_PROC3,F1.FTC_PROC4,F1.FTC_PROC5,F1.FTC_PROC6,F1.FTC_PROC7,'+
                                                  'F1.FTC_PROC8,P1.PRD_DESCRI,P1.prd_dcvar1,P1.prd_dcvar2,P1.prd_dcvar3,P1.prd_dcvar4,P1.prd_dcvar5,P1.prd_dcvar6,P1.prd_dcvar7,P1.prd_dcvar8,P1.pti_codigo,'+
                                                  'T1.pti_descri,P1.pgr_codigo,G1.pgr_descri,P1.lin_codigo,L1.lin_descri from FTC0000 F1 left join prd0000   P1 on f1.prd_refer  = p1.prd_refer '+
                                                  'left join prd_tipo  T1 on P1.pti_codigo = T1.pti_codigo left join prd_grupo G1 on P1.pgr_codigo = G1.pgr_codigo '+
                                                  'left join prd_linha L1 on P1.lin_codigo = L1.lin_codigo ','where F1.PRD_REFER = '''+EdtPRD_REFER.Text+'''','F1.PRD_REFER','F1.');
             SqlRelProdutos.Open;
             LBL_00_EMPRESA.Caption   := dbInicio.Empresa.RAZAO;
             LBL_00_LTITULO1.Caption  := 'FICHA TECNICA DO PRODUTO';
             ppRelFichaTec.DeviceType := 'Screen';
             RBuilderPreview(ppRelFichaTec);
           except on E:EdataBaseError do
              uteis.erro  (pchar('Erro ao gerar o relatório !'+e.message));
           end;
       end
    else
       begin
           uteis.aviso('Informe uma Referência !');
       end;
    DmProducao.CdsFichaTec.Close;
    SqlCdsItensFicha.Close;
    wIncluir := false;
    LimparDados;
    EdtDescricao.Text    := '';
    EdtPRD_REFER.Text    := '';
    EdtPRD_REFER.Color   := clWindow;
    EdtPRD_REFER.Enabled := true;
    EdtPRD_REFER.SetFocus;
    Screen.Cursor := crDefault;
end;

procedure TFormFichaTecnica.SqlRelProdutosBeforeOpen(DataSet: TDataSet);
begin
    try
      SqlRelItens.Close;
      SqlRelItens.CommandText := SQLDEF('PRODUTOS','select F2.*,P1.PRD_DESCRI,P1.PRD_UND from ftc_it01 F2 left join prd0000 P1 on f2.prd_refer_itens = p1.prd_refer ','where F2.PRD_REFER = '''+EdtPRD_REFER.Text+'''','F2.PRD_REFER,F2.FTI_REGISTRO','F2.');
      SqlRelItens.Open;
    except on E:EdataBaseError do
      uteis.erro  (pchar('Erro ao abrir os itens da ficha técnica !'+e.message));
    end;
end;

procedure TFormFichaTecnica.EdtReferEnter(Sender: tObject);
begin
    EdtRefer.Color := $0080FFFF;
end;

procedure TFormFichaTecnica.EdtPRD_REFEREnter(Sender: tObject);
begin
    EdtPRD_REFER.Color := $0080FFFF;
end;

procedure TFormFichaTecnica.Bit_CopiarClick(Sender: tObject);
begin
    if EdtPRD_REFER.Text <> '' then
       begin
           try
             try
               //FormFichaTecnica.AlphaBlendValue := 200;
               //FormFichaTecnica.AlphaBlend := true;
               FormCopiaFichaTec:= TFormCopiaFichaTec.Create(Application);
               FormCopiaFichaTec.ShowModal;
             finally
               FormCopiaFichaTec.Destroy;
               FormCopiaFichaTec := nil;
               //FormFichaTecnica.AlphaBlendValue := 255;
               //FormFichaTecnica.AlphaBlend := False;
               EdtPRD_REFER.SetFocus;
             end;
           except
              //beep;
              uteis.erro  ('Ocorreu um erro na criação do formulário!');
           end;
       end
    else
       begin
           uteis.aviso('Informe a Referência da Ficha Técnica !');
           EdtPRD_REFER.SetFocus;
       end;
end;

procedure TFormFichaTecnica.BuscaItens;
begin
    try
      SqlCdsItensFicha.Close;
      SqlCdsItensFicha.CommandText := SQLDEF('PRODUTOS','SELECT F2.*,P1.PRD_DESCRI,P1.PRD_UND FROM FTC_IT01 F2 LEFT JOIN PRD0000 P1 ON P1.PRD_REFER = F2.PRD_REFER_ITENS','WHERE F2.PRD_REFER = '''+EDTPRD_REFER.TEXT+'''','F2.PRD_REFER,F2.FTI_REGISTRO','F2.');
      SqlCdsItensFicha.Open;
    except on E:EDataBaseError do
      uteis.erro  (pchar('Erro ao buscar os itens da ficha tecnica !'+e.Message));
    end;
end;

end.
