{************************************************************
 Programa...: GIMPCUST  - Nome formulario = FormGimpCust
 Objetivo...: Gerenciador de impressão da ficha de custo
 Analista...: Márcio Neu Pacheco
 Programador: Márcio

 Comentários: 

 Criação..........: 09/00
 Ultima Alteração.:
 Alterado por.....:

*************************************************************}
unit GimpCust;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, DBCtrls, Grids, DBGrids, ExtCtrls, Mask, RwFunc, DB,
  DBTables,  rxToolEdit,  rxCurrEdit, RDprint, Provider, SqlExpr,SqlClientDataSet, DBClient,
  DBLocal, DBLocalS, Data.DBXFirebird, SimpleDS;

type
  TFormGimpCusto = class(TForm)
    PrinterSetupDialog1: TPrinterSetupDialog;
    GrpIndice: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    DBGrid1: TDBGrid;
    DSQItensCusto: TDataSource;
    GrpFichaCusto: TGroupBox;
    DbGridFichas: TDBGrid;
    DsQFichaCusto: TDataSource;
    Bit_Sair: TBitBtn;
    GrpValores: TGroupBox;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    GrpPrazo: TGroupBox;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    CPVista: TCurrencyEdit;
    CP30: TCurrencyEdit;
    CP45: TCurrencyEdit;
    CP60: TCurrencyEdit;
    CP75: TCurrencyEdit;
    CP90: TCurrencyEdit;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Label18: TLabel;
    Label13: TLabel;
    BitIndicesPadrao: TBitBtn;
    Bit_Imprimir: TBitBtn;
    Bit_localizar: TBitBtn;
    GrpIndiceF: TGroupBox;
    CIndiceCusto: TCurrencyEdit;
    BitPrecos: TBitBtn;
    CFixas: TCurrencyEdit;
    CVariaveis: TCurrencyEdit;
    CFinanceiras: TCurrencyEdit;
    Cicms: TCurrencyEdit;
    CFederais: TCurrencyEdit;
    CMarketing: TCurrencyEdit;
    CPerda: TCurrencyEdit;
    Ccomissao: TCurrencyEdit;
    CLucro: TCurrencyEdit;
    CCredito: TCurrencyEdit;
    CIndiceVista: TCurrencyEdit;
    CIndice30d: TCurrencyEdit;
    CIndice45d: TCurrencyEdit;
    CIndice60d: TCurrencyEdit;
    CIndice75d: TCurrencyEdit;
    CIndice90d: TCurrencyEdit;
    Ccustofixo: TCurrencyEdit;
    CLucroPeca: TCurrencyEdit;
    CCustoComple: TCurrencyEdit;
    CMaoIndireta: TCurrencyEdit;
    Label1: TLabel;
    PnLocalizar: TPanel;
    GrLocalizar: TGroupBox;
    RadRefer: TRadioButton;
    RadDescricao: TRadioButton;
    Edt_Pesq: TEdit;
    GrpClasse: TGroupBox;
    RadLtda: TRadioButton;
    RadSimples: TRadioButton;
    RadOutras: TRadioButton;
    SqlCdsFichaCusto: TSQLClientDataSet;
    SqlCdsItens: TSQLClientDataSet;
    SqlCdsItensPRD_REFER: TStringField;
    SqlCdsItensPRD_REFER_ITENS: TStringField;
    SqlCdsItensFTI_UC: TFloatField;
    SqlCdsItensFTI_MODE1: TStringField;
    SqlCdsItensPRD_DESCRI: TStringField;
    SqlCdsItensPRD_DTPCUSTO: TSQLTimeStampField;
    SqlCdsItensPRD_PCUSTO: TFMTBCdField;
    SqlCdsItensFTI_MODIFICADA: TSQLTimeStampField;
    SqlCdsItensFTI_UCMODIFIC: TFloatField;
    SqlCdsItensFTI_PRECOCUSTO: TFMTBCdField;
    SqlCdsClasse: TSQLClientDataSet;
    SqlCdsClasseVCT_CLASSE: TStringField;
    SqlCdsClasseVCT_TUP: TFMTBCdField;
    SqlCdsClasseVCT_TMAQ: TFMTBCdField;
    SqlCdsClasseVCT_DF: TFMTBCdField;
    SqlCdsClasseVCT_DV: TFMTBCdField;
    SqlCdsClasseVCT_ICMS: TFMTBCdField;
    SqlCdsClasseVCT_FED: TFMTBCdField;
    SqlCdsClasseVCT_DPG: TFMTBCdField;
    SqlCdsClasseVCT_LV: TFMTBCdField;
    SqlCdsClasseVCT_FIN: TFMTBCdField;
    SqlCdsClasseVCT_COMRP: TFMTBCdField;
    SqlCdsClasseVCT_COMSP: TFMTBCdField;
    SqlCdsClasseVCT_COMGE: TFMTBCdField;
    SqlCdsClasseVCT_DESC: TFMTBCdField;
    SqlCdsClasseVCT_FIXO: TFMTBCdField;
    SqlCdsClasseVCT_COMPLE: TFMTBCdField;
    SqlCdsClasseVCT_INDIRETA: TFMTBCdField;
    SqlCdsClasseVCT_LUCROUNID: TFMTBCdField;
    SqlCdsClasseVCT_PERDA: TFMTBCdField;
    SqlCdsClasseVCT_VISTA: TFMTBCdField;
    SqlCdsClasseVCT_30D: TFMTBCdField;
    SqlCdsClasseVCT_45D: TFMTBCdField;
    SqlCdsClasseVCT_60D: TFMTBCdField;
    SqlCdsClasseVCT_75D: TFMTBCdField;
    SqlCdsClasseVCT_90D: TFMTBCdField;
    SqlCdsClasseVCT_TXTCOND1: TStringField;
    SqlCdsClasseVCT_TXTCOND2: TStringField;
    SqlCdsClasseVCT_TXTCOND3: TStringField;
    SqlCdsClasseVCT_TXTCOND4: TStringField;
    SqlCdsClasseVCT_TXTCOND5: TStringField;
    SqlCdsClasseVCT_TXTCOND6: TStringField;
    SqlCdsClasseEMP_CODIGO: TStringField;
    SqlCdsFichaCustoPRD_REFER: TStringField;
    SqlCdsFichaCustoPRD_DESCRI: TStringField;
    SqlCdsFichaCustoPRD_COMPL: TStringField;
    SqlCdsFichaCustoFTC_TUP: TFMTBCdField;
    SqlCdsFichaCustoFTC_CRIACAO: TSQLTimeStampField;
    SqlCdsParam: TSQLClientDataSet;
    SqlCdsParamPMT_EMPRESACLASSE: TStringField;
    SqlCdsItensPreco_cc: TCurrencyField;
    PanValor: TPanel;
    GroupBox7: TGroupBox;
    CurrValor: TCurrencyEdit;
    Label5: TLabel;
    EdtDescri: TEdit;
    Label11: TLabel;
    EdtCodigo: TEdit;
    Label12: TLabel;
    SqlCdsItensFTI_REGISTRO: TIntegerField;
    Curr_registro: TCurrencyEdit;
    SqlCdsItensCusto_cc: TCurrencyField;
    SqlCdsParamPMT_UNFORMULA: TSmallintField;
    GrpTotais: TGroupBox;
    Panel10: TPanel;
    CTotalMateriais: TCurrencyEdit;
    Panel11: TPanel;
    Cdesconto: TCurrencyEdit;
    CMaterialLiq: TCurrencyEdit;
    CTUP: TCurrencyEdit;
    CValorTup: TCurrencyEdit;
    CMaodeObra: TCurrencyEdit;
    CValoresFixos: TCurrencyEdit;
    CCustoFinal: TCurrencyEdit;
    Panel14: TPanel;
    Panel17: TPanel;
    Panel16: TPanel;
    Panel12: TPanel;
    Panel18: TPanel;
    Panel13: TPanel;
    PanTitulo: TPanel;
    BitFechar: TBitBtn;
    Panel19: TPanel;
    CPVistaV: TCurrencyEdit;
    CP30V: TCurrencyEdit;
    CP45V: TCurrencyEdit;
    CP60V: TCurrencyEdit;
    CP75V: TCurrencyEdit;
    CP90V: TCurrencyEdit;
    Cds_Prod_Conv: TSQLClientDataSet;
    Cds_Prod_ConvPRD_REFER: TStringField;
    Cds_Prod_ConvPRD_UTILCONV: TStringField;
    Cds_Prod_ConvPRD_FATORC: TFMTBCdField;
    Cds_Prod_ConvPRD_DIVMULT: TStringField;
    Panel20: TPanel;
    ImgProduto: TImage;
    RdPrintFcusto: TRDprint;

    procedure FormShow(Sender: tObject);
    procedure FormKeyPress(Sender: tObject; var Key: Char);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure MudaCorCampos(Sender: tObject);
    procedure SqlCdsFichaCustoAfterScroll(DataSet: TDataSet);
    {OnClick}
    procedure BitCancelarClick(Sender: tObject);
    procedure Bit_ImprimirClick(Sender: tObject);
    procedure Bit_SairClick(Sender: tObject);
    procedure BitPrecosClick(Sender: tObject);
    procedure CIndiceVistaClick(Sender: tObject);
    procedure CIndice30dClick(Sender: tObject);
    procedure CIndice45dClick(Sender: tObject);
    procedure CIndice60dClick(Sender: tObject);
    procedure CIndice75dClick(Sender: tObject);
    procedure CIndice90dClick(Sender: tObject);
    procedure BitIndicesPadraoClick(Sender: tObject);
    procedure Bit_localizarClick(Sender: tObject);
    procedure RadReferClick(Sender: tObject);
    procedure RadDescricaoClick(Sender: tObject);
    procedure RadLtdaClick(Sender: tObject);
    {OnEnter}
    procedure CIndiceVistaEnter(Sender: tObject);
    procedure CFixasEnter(Sender: tObject);
    procedure CVariaveisEnter(Sender: tObject);
    procedure CFinanceirasEnter(Sender: tObject);
    procedure CicmsEnter(Sender: tObject);
    procedure CFederaisEnter(Sender: tObject);
    procedure CMarketingEnter(Sender: tObject);
    procedure CPerdaEnter(Sender: tObject);
    procedure CcomissaoEnter(Sender: tObject);
    procedure CLucroEnter(Sender: tObject);
    procedure CCreditoEnter(Sender: tObject);
    procedure CcustofixoEnter(Sender: tObject);
    procedure CLucroPecaEnter(Sender: tObject);
    procedure CCustoCompleEnter(Sender: tObject);
    procedure CMaoIndiretaEnter(Sender: tObject);
    procedure CIndice30dEnter(Sender: tObject);
    procedure CIndice45dEnter(Sender: tObject);
    procedure CIndice60dEnter(Sender: tObject);
    procedure CIndice75dEnter(Sender: tObject);
    procedure CIndice90dEnter(Sender: tObject);
    procedure CTUPEnter(Sender: tObject);
    procedure CValorTupEnter(Sender: tObject);
    {OnExit}
    procedure CcustofixoExit(Sender: tObject);
    procedure CIndiceVistaExit(Sender: tObject);
    procedure Edt_PesqExit(Sender: tObject);
    {OnChange}
    procedure CFixasChange(Sender: tObject);
    {OnCalcFields}
    procedure SqlCdsItensCalcFields(DataSet: TDataSet);
    procedure DBGrid1DblClick(Sender: tObject);
    procedure CurrValorEnter(Sender: tObject);
    procedure CurrValorExit(Sender: tObject);
    procedure DBGrid1KeyPress(Sender: tObject; var Key: Char);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure CCustoCompleClick(Sender: tObject);
    procedure CcustofixoClick(Sender: tObject);
    procedure CLucroPecaClick(Sender: tObject);
    procedure CMaoIndiretaClick(Sender: tObject);
    procedure CFixasClick(Sender: tObject);
    procedure CVariaveisClick(Sender: tObject);
    procedure CFinanceirasClick(Sender: tObject);
    procedure CicmsClick(Sender: tObject);
    procedure CFederaisClick(Sender: tObject);
    procedure CMarketingClick(Sender: tObject);
    procedure CPerdaClick(Sender: tObject);
    procedure CcomissaoClick(Sender: tObject);
    procedure CLucroClick(Sender: tObject);
    procedure CCreditoClick(Sender: tObject);
    procedure BitFecharClick(Sender: tObject);
    procedure DbGridFichasDrawColumnCell(Sender: tObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure DBGrid1DrawColumnCell(Sender: tObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DbGridFichasTitleClick(Column: TColumn);
  private
    { Private declarations }
         {campos}
    CampoEdit    :TEdit;
    CampoCurrency:TCurrencyEdit;
    wTpEmpresa : String[1];
    wFormula   : Currency;
    procedure LayOutPesq;
    procedure RecebeIndicesPadrao;
    procedure BuscaItensCusto;
    procedure RecalcularCustos;
    procedure GravarFixosFicha;
    procedure ImprimirFicha;
    procedure LayOutClasse;
    procedure LocalizaItensCusto;
    procedure HabilitaFormulario;
    procedure DesabilitaFormulario;

  public
    { Public declarations }
    FSortAscending: Boolean;
    procedure BotoesAcesso;
  end;

var
  FormGimpCusto: TFormGimpCusto;
  wDF,wDV,wICMS,wFED,wFIN,wPerd,wLV,wMKT,wComR,wDESC:Double;

implementation

uses Uteis, Men0001, DataCad, iniciodb;

{$R *.DFM}





procedure TFormGimpCusto.MudaCorCampos(Sender: tObject);
begin
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
    {CampoCurrency :TCurrencyEdit}
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
          TMaskEdit(ActiveControl).color := $0080FFFF;
          CampoCurrency := TCurrencyEdit(ActiveControl);
       end
    else
       begin
          CampoCurrency := nil;
       end;
end;

procedure TFormGimpCusto.RadLtdaClick(Sender: tObject);
begin
    LayOutClasse;
end;

procedure TFormGimpCusto.BitPrecosClick(Sender: tObject);
begin
    BuscaItensCusto;
    RecalcularCustos;
    SqlCdsItens.First;
    DBGrid1.SetFocus;
end;

procedure TFormGimpCusto.Bit_localizarClick(Sender: tObject);
begin
    PnLocalizar.Visible := True;
    PnLocalizar.Left    := 136;
    PnLocalizar.Top     := 266;
    DesabilitaFormulario;
    RadRefer.Checked    := true;
    LayOutPesq;
end;

procedure TFormGimpCusto.Bit_ImprimirClick(Sender: tObject);
begin
    ImprimirFicha;
end;

procedure TFormGimpCusto.BitCancelarClick(Sender: tObject);
begin
    close;
end;

procedure TFormGimpCusto.Bit_SairClick(Sender: tObject);
begin
    close;
end;

procedure TFormGimpCusto.BotoesAcesso;
begin
if Assigned(FormGimpCusto) then
  begin
    Bit_Imprimir.Enabled := Uteis.AcessoUsuario('ProduçãoPlanilha de Custos',DBInicio.Usuario.CODIGO,FormGimpCusto).Relatorio;

  end;
end;

procedure TFormGimpCusto.BitIndicesPadraoClick(Sender: tObject);
begin
    RecebeIndicesPadrao;
    RecalcularCustos;
end;

procedure TFormGimpCusto.CIndiceVistaExit(Sender: tObject);
begin
    RecalcularCustos;
end;

procedure TFormGimpCusto.CcustofixoExit(Sender: tObject);
begin
    GravarFixosFicha;
    RecalcularCustos;
end;

procedure TFormGimpCusto.CIndiceVistaClick(Sender: tObject);
begin
    CIndiceVista.SelectAll;
end;

procedure TFormGimpCusto.CIndice30dClick(Sender: tObject);
begin
    CIndice30d.SelectAll;
end;

procedure TFormGimpCusto.CIndice45dClick(Sender: tObject);
begin
    CIndice45d.SelectAll;
end;

procedure TFormGimpCusto.CIndice60dClick(Sender: tObject);
begin
    CIndice60d.SelectAll;
end;

procedure TFormGimpCusto.CIndice75dClick(Sender: tObject);
begin
    CIndice75d.SelectAll;
end;

procedure TFormGimpCusto.CIndice90dClick(Sender: tObject);
begin
    CIndice90d.SelectAll;
end;

procedure TFormGimpCusto.CIndiceVistaEnter(Sender: tObject);
begin
    CIndiceVista.SelectAll;
end;

procedure TFormGimpCusto.CFixasEnter(Sender: tObject);
begin
    CFixas.SelectAll;
end;

procedure TFormGimpCusto.CVariaveisEnter(Sender: tObject);
begin
    CVariaveis.SelectAll;
end;

procedure TFormGimpCusto.CFinanceirasEnter(Sender: tObject);
begin
    CFinanceiras.SelectAll;
end;

procedure TFormGimpCusto.CicmsEnter(Sender: tObject);
begin
    Cicms.SelectAll;
end;

procedure TFormGimpCusto.CFederaisEnter(Sender: tObject);
begin
    CFederais.SelectAll;
end;

procedure TFormGimpCusto.CMarketingEnter(Sender: tObject);
begin
    CMarketing.SelectAll;
end;

procedure TFormGimpCusto.CPerdaEnter(Sender: tObject);
begin
    CPerda.SelectAll;
end;

procedure TFormGimpCusto.CcomissaoEnter(Sender: tObject);
begin
    Ccomissao.SelectAll;
end;

procedure TFormGimpCusto.CLucroEnter(Sender: tObject);
begin
    CLucro.SelectAll;
end;

procedure TFormGimpCusto.CCreditoEnter(Sender: tObject);
begin
    CCredito.SelectAll;
end;

procedure TFormGimpCusto.CcustofixoEnter(Sender: tObject);
begin
    Ccustofixo.SelectAll;
end;

procedure TFormGimpCusto.CLucroPecaEnter(Sender: tObject);
begin
    CLucroPeca.SelectAll;
end;

procedure TFormGimpCusto.CCustoCompleEnter(Sender: tObject);
begin
    CCustoComple.SelectAll;
end;

procedure TFormGimpCusto.CMaoIndiretaEnter(Sender: tObject);
begin
    CMaoIndireta.SelectAll;
end;

procedure TFormGimpCusto.CIndice30dEnter(Sender: tObject);
begin
    CIndice30d.SelectAll;
end;

procedure TFormGimpCusto.CIndice45dEnter(Sender: tObject);
begin
    CIndice45d.SelectAll;
end;

procedure TFormGimpCusto.CIndice60dEnter(Sender: tObject);
begin
    CIndice60d.SelectAll;
end;

procedure TFormGimpCusto.CIndice75dEnter(Sender: tObject);
begin
    CIndice75d.SelectAll;
end;

procedure TFormGimpCusto.CIndice90dEnter(Sender: tObject);
begin
    CIndice75d.SelectAll;
end;

procedure TFormGimpCusto.CTUPEnter(Sender: tObject);
begin
    CTUP.SelectAll;
end;

procedure TFormGimpCusto.CValorTupEnter(Sender: tObject);
begin
    CValorTup.SelectAll;
end;

procedure TFormGimpCusto.CFixasChange(Sender: tObject);
begin
    RecalcularCustos;
end;

procedure TFormGimpCusto.SqlCdsItensCalcFields(DataSet: TDataSet);
begin
//    if SqlCdsItensCusto_CC.AsCurrency>0 then
       SqlCdsItensPreco_cc.AsCurrency := SqlCdsItensPRD_PCUSTO.AsCurrency;
       SqlCdsItensCusto_CC.AsCurrency := (SqlCdsItensFTI_UC.AsFloat * SqlCdsItensPreco_cc.AsCurrency)/wFormula;
end;

procedure TFormGimpCusto.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
    Screen.OnActiveControlChange := NIL;
    try
      SqlCdsFichaCusto.Close;
      SqlCdsItens.Close;
      SqlCdsClasse.Close;
      SqlCdsParam.Close;
    except on E:EDataBaseError do
      uteis.erro  (pchar('Erro ao fechar as tabelas !'+e.Message));
    end;
    Action := CaFree;
end;

procedure TFormGimpCusto.FormCreate(Sender: TObject);
begin
  FSortAscending := True;
end;

procedure TFormGimpCusto.FormDestroy(Sender: TObject);
begin
     FormGimpCusto := Nil;
end;

procedure TFormGimpCusto.BuscaItensCusto;
var
  sCustoSql:string;
begin
    (*PRD_PCUSTO = cl
    PRD_CUSTOCOMIPI = ce
    PRD_PMEDIO = cm
    PRD_CUSTO_CREDITO = si  *)

    if (FrmMenu.sTipoBaseCustoProducao = 'CL') then
      begin
        sCustoSql := 'PRD_PCUSTO';
      end
    else
    if (FrmMenu.sTipoBaseCustoProducao = 'CE') then
      begin
        sCustoSql := 'PRD_CUSTOCOMIPI';
      end
    else
    if (FrmMenu.sTipoBaseCustoProducao = 'CM') then
      begin
        sCustoSql := 'PRD_PMEDIO';
      end
    else
    if (FrmMenu.sTipoBaseCustoProducao = 'SI') then
      begin
        sCustoSql := 'PRD_CUSTO_CREDITO';
      end;
    Screen.Cursor := crHourGlass;
    try
      SqlCdsItens.Close;
      SqlCdsItens.CommandText := SQLDEF('PRODUTOS','SELECT F1.*,P1.PRD_DESCRI,P1.PRD_DTPCUSTO,P1.'+sCustoSql+' as PRD_PCUSTO FROM FTC_IT01 F1 JOIN PRD0000 P1 ON F1.prd_refer_itens = P1.prd_refer ','WHERE F1.PRD_REFER ='''+SqlCdsFichaCustoPRD_REFER.AsString+'''','','F1.');
      SqlCdsItens.Open;
      if not SqlCdsItens.IsEmpty  then
         begin
             SqlCdsItens.First;
             SqlCdsItens.DisableControls;
             while not SqlCdsItens.Eof do
              begin
                  SqlCdsItens.Edit;
                  SqlCdsItensPreco_cc.AsCurrency := SqlCdsItensPRD_PCUSTO.AsCurrency;
                  SqlCdsItens.Post;
                  SqlCdsItens.Next;
              end;
             SqlCdsItens.EnableControls;
         end;
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao localizar os itens !'+e.message));
    end;
    Screen.Cursor := crDefault;
end;

procedure TFormGimpCusto.RecebeIndicesPadrao;
begin
    // Objetivo : Receber valores da tabela p/ voltar valores ao original
    // caso o usuario tenha mudado só para a ficha atual
    // Volta valores originais da tabela
    CFixas.Value       := SqlCdsClasseVCT_DF.AsCurrency;
    CVariaveis.Value   := SqlCdsClasseVCT_DV.AsCurrency;
    CFinanceiras.Value := SqlCdsClasseVCT_FIN.AsCurrency;
    Cicms.Value        := SqlCdsClasseVCT_ICMS.AsCurrency;
    CFederais.Value    := SqlCdsClasseVCT_FED.AsCurrency;
    CMarketing.Value   := SqlCdsClasseVCT_DPG.AsCurrency;
    CPerda.Value       := SqlCdsClasseVCT_PERDA.AsCurrency;
    Ccomissao.Value    := SqlCdsClasseVCT_COMRP.AsCurrency;
    CLucro.Value       := SqlCdsClasseVCT_LV.AsCurrency;
    Ccredito.Value     := SqlCdsClasseVCT_DESC.AsCurrency;
    CIndiceVista.Value := SqlCdsClasseVCT_VISTA.AsCurrency;
    CIndice30d.Value   := SqlCdsClasseVCT_30d.AsCurrency;
    CIndice45d.Value   := SqlCdsClasseVCT_45d.AsCurrency;
    CIndice60d.Value   := SqlCdsClasseVCT_60d.AsCurrency;
    CIndice75d.Value   := SqlCdsClasseVCT_75d.AsCurrency;
    CIndice90d.Value   := SqlCdsClasseVCT_90d.AsCurrency;
    CValorTup.Value    := SqlCdsClasseVCT_TUP.AsCurrency;
    CTUP.Value         := SqlCdsFichaCustoFTC_TUP.AsCurrency;
end;

procedure TFormGimpCusto.RecalcularCustos;
begin
    {Atualiza valores fixos (por Peça)}
    // buscar na tabela ficha tecnica
    try
      DataCadastros.sqlUpdate.Close;
      DataCadastros.SqlUpdate.sql.text :=SQLDEF('PRODUTOS','Select f1.FTC_FIXO,f1.FTC_LUCROUNID,f1.FTC_COMPLE,f1.FTC_INDIRETA from FTC0000 f1 ','where f1.PRD_REFER = '''+SqlCdsFichaCustoPRD_REFER.AsString+'''','f1.PRD_REFER','f1.');
      DataCadastros.sqlUpdate.Open;
      if not DataCadastros.sqlUpdate.IsEmpty  then
         begin
             if (DataCadastros.sqlUpdate.FieldByName('FTC_FIXO').AsCurrency = 0) and (DataCadastros.sqlUpdate.FieldByName('FTC_LUCROUNID').AsCurrency = 0) and (DataCadastros.sqlUpdate.FieldByName('FTC_COMPLE').AsCurrency = 0) and (DataCadastros.sqlUpdate.FieldByName('FTC_INDIRETA').AsCurrency = 0) then
                begin
                    {se todos os indices forem zero buscar do padrao}
                    Ccustofixo.Value   := SqlCdsClasseVCT_FIXO.AsCurrency;
                    CLucroPeca.Value   := SqlCdsClasseVCT_LUCROUNID.AsCurrency;
                    CCustoComple.Value := SqlCdsClasseVCT_COMPLE.AsCurrency;
                    CMaoIndireta.Value := SqlCdsClasseVCT_INDIRETA.AsCurrency;
                end
             else
                begin
                    Ccustofixo.Value   := DataCadastros.sqlUpdate.FieldByName('FTC_FIXO').AsCurrency;
                    CLucroPeca.Value   := DataCadastros.sqlUpdate.FieldByName('FTC_LUCROUNID').AsCurrency;
                    CCustoComple.Value := DataCadastros.sqlUpdate.FieldByName('FTC_COMPLE').AsCurrency;
                    CMaoIndireta.Value := DataCadastros.sqlUpdate.FieldByName('FTC_INDIRETA').AsCurrency;
                end;
         end;
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao Recalcular os Custos !'+e.Message));
    end;
    // zerar valores
    Cdesconto.Value:=0;CMaodeObra.Value:=0;
    CTotalMateriais.Value:=0;CMaterialLiq.Value:=0;CCustoFinal.Value:=0;CIndiceCusto.Value:=0;
    CPVista.Value:=0;CP30.Value:=0;CP45.Value:=0;CP60.Value:=0;CP75.Value:=0;CP90.Value:=0;
    CPVistaV.Value:=0;CP30V.Value:=0;CP45V.Value:=0;CP60V.Value:=0;CP75V.Value:=0;CP90V.Value:=0;
    // Pegar valores
    Cdesconto.Value := Ccredito.Value;
    //CTUP.Value := TQFichaCustoFTC_TUP.Value;
    //CValorTup.Value := DataModulo.TbFatorCustosVCT_TUP.Value;
    CMaodeObra.Value := CTUP.Value * CValorTup.Value;
    // calcular o valor total de material
    if SqlCdsItens.Active then
       begin
           SqlCdsItens.First;
           SqlCdsItens.DisableControls;
           while not SqlCdsItens.eof do
             begin
                 CTotalMateriais.Value := CTotalMateriais.Value + SqlCdsItensCusto_CC.AsCurrency;
                 SqlCdsItens.Next;
             end;
           SqlCdsItens.EnableControls;
       end;
    // aplicar descto nos materiais
    Cdesconto.Value     := CTotalMateriais.Value * Cdesconto.Value / 100;
    CMaterialLiq.Value  := CTotalMateriais.Value - Cdesconto.Value;
    // valores Fixos (POR PEÇA)
    CValoresFixos.Value := Ccustofixo.Value   + CLucroPeca.Value + CCustoComple.Value + CMaoIndireta.Value;
    // custo final
    CCustoFinal.Value   := CMaterialLiq.Value + CMaodeObra.Value + CValoresFixos.Value;
    // Construir Indice de custos (pegar Indices)
    CIndiceCusto.Value  := 100-(Cfixas.Value  + CVariaveis.Value + CFinanceiras.Value + Cicms.Value + Cfederais.Value + Cmarketing.Value + Cperda.Value + Ccomissao.Value + Clucro.Value);
    // validar indices de juros
//    DataModulo.TbFatorCustos.Edit;
    if CIndiceVista.Value = 0 then CIndiceVista.Value := 0;
    if CIndice30d.Value   = 0 then CIndice30d.Value   := CIndiceVista.Value;
    if CIndice45d.Value   = 0 then CIndice45d.Value   := CIndice30d.Value;
    if CIndice60d.Value   = 0 then CIndice60d.Value   := CIndice45d.Value;
    if CIndice75d.Value   = 0 then CIndice75d.Value   := CIndice60d.Value;
    if CIndice90d.Value   = 0 then CIndice90d.Value   := CIndice75d.Value;
    // Preço à vista
    CPVista.Value := CCustoFinal.Value / CIndiceCusto.Value * 100;
    // precos c/ aplicacao de juros
    CPVista.Value := CPVista.Value / (100 - CIndiceVista.Value) * 100;
    CP30.Value    := CPVista.Value / (100 -   CIndice30d.Value) * 100;
    CP45.Value    := CPVista.Value / (100 -   CIndice45d.Value) * 100;
    CP60.Value    := CPVista.Value / (100 -   CIndice60d.Value) * 100;
    CP75.Value    := CPVista.Value / (100 -   CIndice75d.Value) * 100;
    CP90.Value    := CPVista.Value / (100 -   CIndice90d.Value) * 100;
    {verifica se a empresa utiliza conversao de estoque}
    if (Trim(SqlCdsFichaCustoPRD_REFER.AsString) <> '') then
       begin
          wSql1     := 'SELECT '+
                       'T1.PRD_REFER, '+
                       'COALESCE(T1.PRD_UTILCONV,''N'') AS PRD_UTILCONV, '+
                       'COALESCE(T1.PRD_FATORC,0) AS PRD_FATORC, '+
                       'COALESCE(T1.PRD_DIVMULT,''N'') AS PRD_DIVMULT';
          wSql2     := ' FROM PRD0000  T1 ';

          wSeleciona := 'WHERE T1.PRD_REFER = '''+SqlCdsFichaCustoPRD_REFER.AsString+'''';
          wOrdem     := 'T1.PRD_REFER ';
          //
          Cds_Prod_Conv.Close;
          Cds_Prod_Conv.CommandText := SQLDEF('PRODUTOS',wSql1+wSql2,wSeleciona,wOrdem,'T1.');
          Cds_Prod_Conv.Open;
          if (Cds_Prod_ConvPRD_UTILCONV.AsString = 'S') then
            begin
               if ((Cds_Prod_ConvPRD_DIVMULT.AsString = 'M')
               and (Cds_Prod_ConvPRD_FATORC.AsFloat > 0)) then
                  begin
                     CPVistaV.Value :=  CPVista.Value / Cds_Prod_ConvPRD_FATORC.AsFloat;
                     CP30V.Value    :=  CP30.Value    / Cds_Prod_ConvPRD_FATORC.AsFloat;
                     CP45V.Value    :=  CP45.Value    / Cds_Prod_ConvPRD_FATORC.AsFloat;
                     CP60V.Value    :=  CP60.Value    / Cds_Prod_ConvPRD_FATORC.AsFloat;
                     CP75V.Value    :=  CP75.Value    / Cds_Prod_ConvPRD_FATORC.AsFloat;
                     CP90V.Value    :=  CP90.Value    / Cds_Prod_ConvPRD_FATORC.AsFloat;
                  end
               else
               if ((Cds_Prod_ConvPRD_DIVMULT.AsString = 'D')
               and (Cds_Prod_ConvPRD_FATORC.AsFloat > 0)) then
                  begin
                     CPVistaV.Value :=  CPVista.Value * Cds_Prod_ConvPRD_FATORC.AsFloat;
                     CP30V.Value    :=  CP30.Value    * Cds_Prod_ConvPRD_FATORC.AsFloat;
                     CP45V.Value    :=  CP45.Value    * Cds_Prod_ConvPRD_FATORC.AsFloat;
                     CP60V.Value    :=  CP60.Value    * Cds_Prod_ConvPRD_FATORC.AsFloat;
                     CP75V.Value    :=  CP75.Value    * Cds_Prod_ConvPRD_FATORC.AsFloat;
                     CP90V.Value    :=  CP90.Value    * Cds_Prod_ConvPRD_FATORC.AsFloat;
                  end;
            end
          else
            begin
               CPVistaV.Value := CPVista.Value;
               CP30V.Value    := CP30.Value;
               CP45V.Value    := CP45.Value;
               CP60V.Value    := CP60.Value;
               CP75V.Value    := CP75.Value;
               CP90V.Value    := CP90.Value;
            end;
       end;
end;

procedure TFormGimpCusto.ImprimirFicha;
var
wlinha:integer;
begin
    //
    RdPrintFcusto.Abrir;
    RdPrintFcusto.Imp(1, 4,'--------------------------------------------------------------------------------------------------------------------------------');
    RdPrintFcusto.Imp(2,04,dbInicio.Empresa.FANTASIA);
    RdPrintFcusto.Imp(2,114,'Data: '+DateTimeToStr(Date));
    RdPrintFcusto.Imp(3, 4,'FICHA DE CUSTO - APURAÇÃO DO PREÇO DE VENDA');
    RdPrintFcusto.ImpF(4, 4,'REFERÊNCIA : '+SqlCdsFichaCustoPRD_REFER.AsString,[]);
    RdPrintFcusto.ImpF(4,30,SqlCdsFichaCustoPRD_DESCRI.AsString,[]);
    RdPrintFcusto.Imp(4,95,'Complemento : '+SqlCdsFichaCustoPRD_COMPL.AsString);
    RdPrintFcusto.Imp(5, 4,'--------------------------------------------------------------------------------------------------------------------------------');
    RdPrintFcusto.Imp(6,5,'Despesas Fixas: ');
    RdPrintFcusto.ImpVal(6,21,'#0.00',CFixas.Value,[]);
    RdPrintFcusto.Imp(6,28,' Despesas Variáveis: ');
    RdPrintFcusto.ImpVal(6,49,'#0.00',CVariaveis.Value,[]);
    RdPrintFcusto.Imp(6,56,'Despesas Financeiras: ');
    RdPrintFcusto.ImpVal(6,78,'#0.00',CFinanceiras.Value,[]);
    RdPrintFcusto.Imp(6,86,' ICMS: ');
    RdPrintFcusto.ImpVal(6,93,'#0.00',Cicms.Value,[]);
    RdPrintFcusto.Imp(6,100,'   Impostos Federais: ');
    RdPrintFcusto.ImpVal(6,122,'#0.00',CFederais.Value,[]);
    //
    RdPrintFcusto.Imp(7,4,'     Marketing: ');
    RdPrintFcusto.ImpVal(7,21,'#0.00',CMarketing.Value,[]);
    RdPrintFcusto.Imp(7,28,'Perda Matéria-Prima:');
    RdPrintFcusto.ImpVal(7,49,'#0.00',CPerda.Value,[]);
    RdPrintFcusto.Imp(7,56,'Comissão sobre venda: ');
    RdPrintFcusto.ImpVal(7,78,'#0.00',Ccomissao.Value,[]);
    RdPrintFcusto.Imp(7,86,'Lucro:');
    RdPrintFcusto.ImpVal(7,93,'#0.00',CLucro.Value,[]);
    RdPrintFcusto.Imp(7,100,'Crédito Icms(Descto):(     )');
    RdPrintFcusto.ImpVal(7,122,'#0.00',CCredito.Value,[]);
    RdPrintFcusto.Imp(8, 3,'|--------------------------------------------------------------------------------------------------------------------------------');
    RdPrintFcusto.Imp(9, 3,'|  Data     |Código |             Material                  |Modificação| Consumo|  Preço |  Custo |                            |');
    RdPrintFcusto.Imp(10,3,'|--------------------------------------------------------------------------------------------------------------------------------');
    //
    wlinha := 11;
    SqlCdsItens.First;
    SqlCdsItens.DisableControls;
    while not SqlCdsItens.Eof do
     begin
         RdPrintFcusto.Imp(wlinha,3,'|           |       |                                        |          |        |        |        |');
         RdPrintFcusto.Imp(wlinha,4 ,SqlCdsItensPRD_DTPCUSTO.AsString);
         RdPrintFcusto.Imp(wlinha,16,SqlCdsItensPRD_REFER_ITENS.AsString);
         RdPrintFcusto.Imp(wlinha,25,SqlCdsItensPRD_DESCRI.AsString);
         RdPrintFcusto.Imp(wlinha,66,SqlCdsItensFTI_MODIFICADA.AsString);
         RdPrintFcusto.ImpVal(wlinha,76,'###0.000000',SqlCdsItensFTI_UC.AsFloat,[]);
         RdPrintFcusto.ImpVal(wlinha,85,'###0.000',SqlCdsItensPreco_cc.AsCurrency,[]);
         RdPrintFcusto.ImpVal(wlinha,94,'###0.000',SqlCdsItensCUSTO_CC.AsCurrency,[]);
         inc(wlinha);
         SqlCdsItens.Next;
     end;
    SqlCdsItens.EnableControls; 
    RdPrintFcusto.Imp(wlinha,3,'|--------------------------------------------------------------------------------------------------|');
    inc(wlinha);
    RdPrintFcusto.Imp(wlinha,3,'| Custo dos Materiais:');
    RdPrintFcusto.ImpVal(wlinha,94,'###0.000',CTotalMateriais.Value,[]);
    RdPrintFcusto.Imp(wlinha,102,'|');
    inc(wlinha);
    RdPrintFcusto.Imp(wlinha,3,'|--------------------------------------------------------------------------------------------------|');
    inc(wlinha);
    RdPrintFcusto.Imp(wlinha,3,'| Materiais |Desconto|Mat.Líquido| TUP  |Valor TUP |Mão-de-Obra|Valores Fixos|Custo Final|  INDICE |');
    inc(wlinha);
    RdPrintFcusto.Imp(wlinha,3,'|           |        |           |      |          |           |             |           |         |');
    RdPrintFcusto.ImpVal(wlinha, 7,'#,##0.00',CTotalMateriais.Value,[]);
    RdPrintFcusto.ImpVal(wlinha,16,'#,##0.00',Cdesconto.Value,[]);
    RdPrintFcusto.ImpVal(wlinha,28,'#,##0.00',CMaterialLiq.Value,[]);
    RdPrintFcusto.ImpVal(wlinha,38,'###0',CTUP.Value,[]);
    RdPrintFcusto.ImpVal(wlinha,45,'#,##0.00',CValorTup.Value,[]);
    RdPrintFcusto.ImpVal(wlinha,58,'#,##0.00',CMaodeObra.Value,[]);
    RdPrintFcusto.ImpVal(wlinha,72,'#,##0.00',CValoresFixos.Value,[]);
    RdPrintFcusto.ImpVal(wlinha,84,'#,##0.00',CCustoFinal.Value,[]);
    RdPrintFcusto.ImpVal(wlinha,96,'#0.00',CIndiceCusto.Value,[]);
    inc(wlinha);
    RdPrintFcusto.Imp(wlinha,3,'|--------------------------------------------------------------------------------------------------|');
    // Imprimir quadros laterais
    RdPrintFcusto.Imp(09,109,'Valores Fixos');
    RdPrintFcusto.Imp(11,104,'          Custo Fixo:');
    RdPrintFcusto.ImpVal(11,125,'#00.00',Ccustofixo.Value,[]);
    RdPrintFcusto.Imp(12,104,'      Lucro por Peça:');
    RdPrintFcusto.ImpVal(12,125,'#00.00',CLucroPeca.Value,[]);
    RdPrintFcusto.Imp(13,104,'  Custo Complementar:');
    RdPrintFcusto.ImpVal(13,125,'#00.00',CCustoComple.Value,[]);
    RdPrintFcusto.Imp(14,104,'Mão-de-Obra Indireta:');
    RdPrintFcusto.ImpVal(14,125,'#00.00',CMaoIndireta.Value,[]);
    RdPrintFcusto.Imp(15,103,'-----------------------------');
    RdPrintFcusto.Imp(16,106,' PRAZO  P/100-J   PREÇO');
    RdPrintFcusto.Imp(17,103,'-----------------------------');
    RdPrintFcusto.Imp(18,106,'À VISTA');
    RdPrintFcusto.ImpVal(18,115,'#00.00',CIndiceVista.Value,[]);
    RdPrintFcusto.ImpVal(18,123,'#,##0.00',CPVista.Value,[]);
    RdPrintFcusto.Imp(19,106,'  30D  ');
    RdPrintFcusto.ImpVal(19,115,'#00.00',CIndice30d.Value,[]);
    RdPrintFcusto.ImpVal(19,123,'#,##0.00',CP30.Value,[]);
    RdPrintFcusto.Imp(20,106,'  45D  ');
    RdPrintFcusto.ImpVal(20,115,'#00.00',CIndice45d.Value,[]);
    RdPrintFcusto.ImpVal(20,123,'#,##0.00',CP45.Value,[]);
    RdPrintFcusto.Imp(21,106,'  60D  ');
    RdPrintFcusto.ImpVal(21,115,'#00.00',CIndice60d.Value,[]);
    RdPrintFcusto.ImpVal(21,123,'#,##0.00',CP60.Value,[]);
    RdPrintFcusto.Imp(22,106,'  75D  ');
    RdPrintFcusto.ImpVal(22,115,'#00.00',CIndice75d.Value,[]);
    RdPrintFcusto.ImpVal(22,123,'#,##0.00',CP75.Value,[]);
    RdPrintFcusto.Imp(23,106,'  90D  ');
    RdPrintFcusto.ImpVal(23,115,'#00.00',CIndice90d.Value,[]);
    RdPrintFcusto.ImpVal(23,123,'#,##0.00',CP90.Value,[]);
    RdPrintFcusto.Imp(24,103,'-----------------------------');
    RdPrintFcusto.Fechar;
end;

procedure TFormGimpCusto.GravarFixosFicha;
begin
    {Gravar os custos fixos por peça na tabela da ficha tecnica}
    try
      DataCadastros.sqlUpdate.Close;
      FormatSettings.DecimalSeparator  := '.';
      DataCadastros.SqlUpdate.sql.text :='Update FTC0000 Set FTC_FIXO = '+FloatToStr(CCustoFixo.Value)+',FTC_LUCROUNID = '+FloatToStr(CLucroPeca.Value)+',FTC_COMPLE = '+FloatToStr(CCustoComple.Value)+',FTC_INDIRETA = '''+FloatToStr(CMaoIndireta.Value)+''' where PRD_REFER = '''+SqlCdsFichaCustoPRD_REFER.AsString+'''';
      DataCadastros.sqlUpdate.Execsql;
      FormatSettings.DecimalSeparator  := ',';
      SqlCdsFichaCusto.Refresh;
    except on E:EDataBaseError do
      uteis.erro  (pchar('Erro ao gravar os custos fixo por peça na Ficha Técnica !'+e.Message));
    end;
end;

procedure TFormGimpCusto.RadReferClick(Sender: tObject);
begin
    LayOutPesq;
end;

procedure TFormGimpCusto.RadDescricaoClick(Sender: tObject);
begin
    LayOutPesq;
end;

procedure TFormGimpCusto.Edt_PesqExit(Sender: tObject);
begin
    if Edt_pesq.Text <> '' then
       begin
           if RadRefer.checked  then
              begin
                  if not SqlCdsFichaCusto.Locate('PRD_REFER',Edt_Pesq.Text,[]) Then
                     begin
                         uteis.aviso('Ficha de custo do produto não encontrado !');
                         Edt_pesq.Text := '';
                         Edt_pesq.SetFocus;
                         Edt_pesq.SelectAll;
                     end
                  else
                     begin
                         RadRefer.Checked     := True;
                         Edt_Pesq.Text        := '';
                         PnLocalizar.Visible  := False;
                         HabilitaFormulario;
                         DbGridFichas.SetFocus;
                     end;
              end;
           if RadDescricao.checked  then
              begin
                  if not SqlCdsFichaCusto.Locate('PRD_DESCRI',Edt_Pesq.Text,[loPartialKey]) Then
                     begin
                         uteis.aviso('Ficha de custo do produto não encontrado !');
                         Edt_pesq.Text := '';
                         Edt_pesq.SetFocus;
                         Edt_pesq.SelectAll;
                     end
                  else
                     begin
                         RadRefer.Checked     := True;
                         Edt_Pesq.Text        := '';
                         PnLocalizar.Visible  := False;
                         HabilitaFormulario;
                         DbGridFichas.SetFocus;
                     end;
              end;
       end;
end;

procedure TFormGimpCusto.FormKeyPress(Sender: tObject; var Key: Char);
begin
    if key = #27 then
       begin
           RadRefer.Checked := False;
           RadDescricao.Checked := False;
           Edt_Pesq.Text := '';
           Edt_Pesq.Visible := False;
           PnLocalizar.Visible := False;
           DbGridFichas.SetFocus;
       end;
end;

procedure TFormGimpCusto.LayOutClasse;
Var
  wSeleciona : String;
begin
    if RadLtda.checked  then
       begin
           wSeleciona := 'Where C1.vct_classe = ''0'''; //LTDA
       end;
    if RadSimples.checked  then
       begin
           wSeleciona := 'Where C1.vct_classe = ''1'''; //SIMPLES
       end;
    if RadOutras.checked  then
       begin
           wSeleciona := 'Where C1.vct_classe = ''2'''; //OUTRAS
       end;
    Screen.Cursor := crHourGlass;
    try
      SqlCdsClasse.Close;
      SqlCdsClasse.CommandText := SQLDEF('PRODUTOS','Select C1.* from VCT0000 C1',wSeleciona,'C1.VCT_CLASSE','C1.');
      SqlCdsClasse.Open;
      if not SqlCdsClasse.IsEmpty then
         begin
             RecebeIndicesPadrao;
         end;
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao abrir a tabela VCT0000 !'+E.MESSAGE));
    end;
    Screen.Cursor := crDefault;
end;

procedure TFormGimpCusto.FormShow(Sender: tObject);
begin
    {ativa o método ao evento OnActiveControlChange}
    Screen.OnActiveControlChange   := MudaCorCampos;
    Screen.Cursor := CrHourglass;
    try
      SqlCdsParam.Close;
      SqlCdsParam.CommandText := SQLDEF('PARAMETROS','Select P1.PMT_EMPRESACLASSE,P1.PMT_UNFORMULA from PRMT0001 p1','','p1.EMP_CODIGO','p1.');
      SqlCdsParam.Open;
      if not SqlCdsParam.IsEmpty  then
         begin
             RadLtda.Checked    := IIF(SqlCdsParamPMT_EMPRESACLASSE.AsString = '0','TRUE','FALSE');
             RadSimples.Checked := IIF(SqlCdsParamPMT_EMPRESACLASSE.AsString = '1','TRUE','FALSE');
             RadOutras.Checked  := IIF(SqlCdsParamPMT_EMPRESACLASSE.AsString = '2','TRUE','FALSE');
             wFormula           := SqlCdsParamPMT_UNFORMULA.AsCurrency;
         end;
      SqlCdsFichaCusto.Close;
      SqlCdsFichaCusto.CommandText := SQLDEF('PRODUTOS','Select F1.PRD_REFER,P1.PRD_DESCRI,P1.PRD_COMPL,F1.FTC_TUP,F1.FTC_CRIACAO FROM FTC0000 F1 JOIN PRD0000 P1 ON F1.PRD_REFER = P1.PRD_REFER','','P1.PRD_DESCRI','F1.');
      SqlCdsFichaCusto.Open;
      if not SqlCdsFichaCusto.IsEmpty  then
         begin
             { busca indices padrao}
//             RecebeIndicesPadrao;
             { calcula custo}
//             RecalcularCustos;
             DbGridFichas.SetFocus;
             SqlCdsParam.Close;
//             LayOutClasse;
         end;
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao abrir os arquivos !'+e.message));
    end;
    Screen.Cursor := CrDefault;
end;

procedure TFormGimpCusto.SqlCdsFichaCustoAfterScroll(DataSet: TDataSet);
begin
    BuscaItensCusto;
    RecalcularCustos;
    {BUSCANDO FOTO DO PRODUTO}
    if FileExists(trim(FrmMenu.PathNewFotos)+'\'+SqlCdsFichaCustoPRD_REFER.AsString+'.jpg') then
       ImgProduto.Picture.LoadFromFile(trim(FrmMenu.PathNewFotos)+'\'+SqlCdsFichaCustoPRD_REFER.AsString+'.jpg')
    else
    if FileExists(trim(FrmMenu.PathNewFotos)+'\Default.jpg') then
       ImgProduto.Picture.LoadFromFile(trim(FrmMenu.PathNewFotos)+'\Default.jpg');
    CTUP.Value := SqlCdsFichaCustoFTC_TUP.AsCurrency;
end;

procedure TFormGimpCusto.DBGrid1DblClick(Sender: tObject);
begin
    LocalizaItensCusto;
end;

procedure TFormGimpCusto.CurrValorEnter(Sender: tObject);
begin
    CurrValor.SelectAll;
end;

procedure TFormGimpCusto.CurrValorExit(Sender: tObject);
begin
    PanValor.Visible := false;
    if SqlCdsItens.Locate('FTI_REGISTRO',Curr_Registro.Value,[])  then
       begin
           SqlCdsItens.Edit;
           //SqlCdsItensPreco_cc.AsCurrency := CurrValor.Value;
           SqlCdsItensPRD_PCUSTO.AsCurrency := CurrValor.Value;
           SqlCdsItens.Post;
           RecalcularCustos;
           if SqlCdsItens.Locate('FTI_REGISTRO',Curr_Registro.Value,[]) then
              DbGrid1.SetFocus;
       end;

end;

procedure TFormGimpCusto.DBGrid1KeyPress(Sender: tObject; var Key: Char);
begin
    if key=#13 then
       begin
           LocalizaItensCusto;
           Key := #0;
       end;
end;

procedure TFormGimpCusto.LayOutPesq;
begin
    Edt_Pesq.Text      := '';
    if (RadRefer.checked ) then
       begin
           Edt_Pesq.MaxLength := 11;
           Edt_Pesq.Width     := 120;
           PanTitulo.Caption  := 'Digite a Referência para Localizar !';
       end;
    if RadDescricao.checked  then
       begin
           Edt_Pesq.MaxLength := 40;
           Edt_Pesq.Width     := 310;
           PanTitulo.Caption  := 'Digite a Descrição para Localizar !';           
       end;
end;

procedure TFormGimpCusto.LocalizaItensCusto;
begin
    PanValor.Visible := true;
    PanValor.Left    := 67;
    PanValor.Top     := 266;
    Curr_Registro.Value := SqlCdsItensFTI_REGISTRO.AsInteger;
    EdtCodigo.Text   := SqlCdsItensPRD_REFER_ITENS.AsString;
    EdtDescri.Text   := SqlCdsItensPRD_DESCRI.AsString;
    CurrValor.Value  := SqlCdsItensPreco_cc.AsCurrency;
    CurrValor.SetFocus;
end;

procedure TFormGimpCusto.DBGrid1TitleClick(Column: TColumn);
var
  SortField: string;
  IndexName: string;
begin
  screen.Cursor := crHourglass;
//  if not (Column.Field.DataType in [ftBlob,ftMemo]) then
//  begin
//     SqlCdsItens.IndexFieldNames := Column.FieldName;
//  end;

  SortField := Column.FieldName;
  if FSortAscending then
    IndexName := 'asc_' + SortField
  else
    IndexName := 'desc_' + SortField;

//  if SqlCdsItens.IndexDefs.IndexOf(IndexName) <> -1 then
//    SqlCdsItens.DeleteIndex(IndexName);

  SqlCdsItens.IndexDefs.Clear;

  try
    if FSortAscending then
      SqlCdsItens.AddIndex(IndexName, SortField, [])
    else
      SqlCdsItens.AddIndex(IndexName, SortField, [ixDescending]);
    SqlCdsItens.IndexName := IndexName;
    FSortAscending := not FSortAscending;
  except on e: Exception do
    uteis.Aviso('Campo Calculado, impossível ordenar.');
  end;

  screen.Cursor := crDefault;
end;

procedure TFormGimpCusto.CCustoCompleClick(Sender: tObject);
begin
    CCustoComple.SelectAll;
end;

procedure TFormGimpCusto.CcustofixoClick(Sender: tObject);
begin
    CCustoFixo.SelectAll;
end;

procedure TFormGimpCusto.CLucroPecaClick(Sender: tObject);
begin
    CLucroPeca.SelectAll;
end;

procedure TFormGimpCusto.CMaoIndiretaClick(Sender: tObject);
begin
    CMaoIndireta.SelectAll;
end;

procedure TFormGimpCusto.CFixasClick(Sender: tObject);
begin
    CFixas.SelectAll;
end;

procedure TFormGimpCusto.CVariaveisClick(Sender: tObject);
begin
    CVariaveis.SelectAll;
end;

procedure TFormGimpCusto.CFinanceirasClick(Sender: tObject);
begin
    CFinanceiras.SelectAll;
end;

procedure TFormGimpCusto.CicmsClick(Sender: tObject);
begin
    CIcms.SelectAll;
end;

procedure TFormGimpCusto.CFederaisClick(Sender: tObject);
begin
    CFederais.SelectAll;
end;

procedure TFormGimpCusto.CMarketingClick(Sender: tObject);
begin
    CMarketing.SelectAll;
end;

procedure TFormGimpCusto.CPerdaClick(Sender: tObject);
begin
    CPerda.SelectAll;
end;

procedure TFormGimpCusto.CcomissaoClick(Sender: tObject);
begin
    CComissao.SelectAll;
end;

procedure TFormGimpCusto.CLucroClick(Sender: tObject);
begin
    CLucro.SelectAll;
end;

procedure TFormGimpCusto.CCreditoClick(Sender: tObject);
begin
    CCredito.SelectAll;
end;

procedure TFormGimpCusto.DesabilitaFormulario;
begin
    GrpFichaCusto.Enabled := False;
    GrpClasse.Enabled     := False;
    GrpIndice.Enabled     := False;
    GrpValores.Enabled    := False;
    GrpPrazo.Enabled      := False;
    GrpIndiceF.Enabled    := False;
    Bit_Imprimir.Enabled  := False;
    Bit_Sair.Enabled      := False;
    Bit_localizar.Enabled := False;
    BitPrecos.Enabled     := False;
    BitIndicesPadrao.Enabled := False;
    DBGrid1.Enabled          := False;
    GrpTotais.Enabled        := False;
end;

procedure TFormGimpCusto.HabilitaFormulario;
begin
    GrpFichaCusto.Enabled := True;
    GrpClasse.Enabled     := True;
    GrpIndice.Enabled     := True;
    GrpValores.Enabled    := True;
    GrpPrazo.Enabled      := True;
    GrpIndiceF.Enabled    := True;
    Bit_Imprimir.Enabled  := True;
    Bit_Sair.Enabled      := True;
    Bit_localizar.Enabled := True;
    BitPrecos.Enabled     := True;
    BitIndicesPadrao.Enabled := True;
    DBGrid1.Enabled          := True;
    GrpTotais.Enabled        := True;
end;

procedure TFormGimpCusto.BitFecharClick(Sender: tObject);
begin
    PnLocalizar.Visible  := False;
    HabilitaFormulario;
    DbGridFichas.SetFocus;
end;

procedure TFormGimpCusto.DbGridFichasDrawColumnCell(Sender: tObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
    if (not odd(SqlCdsFichaCusto.RecNo)) then
       if not (GdSelected in State) then
          begin
              DbGridFichas.Canvas.Brush.Color := $00FFEFDF;
              DbGridFichas.Canvas.FillRect(rect);
              DbGridFichas.DefaultDrawDataCell(Rect,column.Field,state);
          end;
end;

procedure TFormGimpCusto.DbGridFichasTitleClick(Column: TColumn);
var
  SortField: string;
  IndexName: string;
begin
  SortField := Column.FieldName;
  if FSortAscending then
    IndexName := 'asc_' + SortField
  else
    IndexName := 'desc_' + SortField;

//  if SqlCdsFichaCusto.IndexDefs.IndexOf(IndexName) <> -1 then
//    SqlCdsFichaCusto.DeleteIndex(IndexName);
  SqlCdsFichaCusto.IndexDefs.Clear;

  if FSortAscending then
    SqlCdsFichaCusto.AddIndex(IndexName, SortField, [])
  else
    SqlCdsFichaCusto.AddIndex(IndexName, SortField, [ixDescending]);
  SqlCdsFichaCusto.IndexName := IndexName;
  FSortAscending := not FSortAscending;
end;


procedure TFormGimpCusto.DBGrid1DrawColumnCell(Sender: tObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
    if (not odd(SqlCdsItens.RecNo)) then
       if not (GdSelected in State) then
          begin
              DBGrid1.Canvas.Brush.Color := $00FFEFDF;
              DBGrid1.Canvas.FillRect(rect);
              DBGrid1.DefaultDrawDataCell(Rect,column.Field,state);
          end;
end;

end.

