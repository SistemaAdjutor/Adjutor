unit fat0010;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SqlExpr,SqlClientDataSet, Provider, StdCtrls, Grids, DBGrids, DB, DBClient,
  DBLocal, DBLocalS, Buttons, ComboBoxRw, Mask,  rxToolEdit, frxClass,
  frxDBSet, frxExportPDF, frxExportXLS, frxExportODF,  rxCurrEdit, Menus,
  Data.DBXFirebird, SimpleDS, SgDbSeachComboUnit, BaseForm, BaseDBForm, Data.FMTBcd, ACBrEnterTab, ACBrBase, ACBrCalculadora, JvExControls, JvArrowButton, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses,
  cxGridCustomView, cxGrid, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinTheBezier, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxDataControllerConditionalFormattingRulesManagerDialog,
  frxExportBaseDialog;

type
  TFormContasReceberBaixas = class(TfrmBaseDB)
    GroupBox1: TGroupBox;
    BitPesquisar: TBitBtn;
    Bit_Cancelar: TBitBtn;
    Bit_Sair: TBitBtn;
    CdsReceberBaixas: TSQLClientDataSet;
    DsReceberBaixas: TDataSource;
    CdsReceberBaixasFRE_REGISTRO: TIntegerField;
    CdsReceberBaixasEMP_CODIGO: TStringField;
    CdsReceberBaixasFAT_REGISTRO: TIntegerField;
    CdsReceberBaixasFRE_DATA_RECEBIMENTO: TDateField;
    CdsReceberBaixasFRE_VALOR: TFMTBCdField;
    CdsReceberBaixasFRE_DESCONTO: TFMTBCdField;
    CdsReceberBaixasFRE_JUROS: TFMTBCdField;
    CdsReceberBaixasFRE_MULTA: TFMTBCdField;
    CdsReceberBaixasFRE_RECEBIDO: TFMTBCdField;
    CdsReceberBaixasBAN_CODIGO: TStringField;
    CdsReceberBaixasFPG_REGISTRO: TIntegerField;
    CdsReceberBaixasUSU_CODIGO: TIntegerField;
    CdsReceberBaixasBAN_APELIDO: TStringField;
    CdsReceberBaixasFPG_DESCRICAO: TStringField;
    CdsReceberBaixasUSU_NOME: TStringField;
    CdsReceberBaixasCLI_CODIGO: TStringField;
    CdsReceberBaixasCLI_RAZAO: TStringField;
    CdsReceberBaixasFAT_CODIGO: TStringField;
    CdsReceberBaixasFPC_NUMER: TStringField;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    EdFatura: TEdit;
    Label2: TLabel;
    RxDataInicial: TDateEdit;
    Label3: TLabel;
    RxDataFinal: TDateEdit;
    CbCliente: TComboBoxRw;
    EdClienteCodigo: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    EdFormaCodigo: TEdit;
    CbForma: TComboBoxRw;
    Label6: TLabel;
    EdContaBancoCodigo: TEdit;
    CbContaBanco: TComboBoxRw;
    frxReportReceber: TfrxReport;
    frxDBDatasetReceber: TfrxDBDataset;
    frxODSExport1: TfrxODSExport;
    frxXLSExport1: TfrxXLSExport;
    frxPDFExport1: TfrxPDFExport;
    CdsReceberBaixasFPC_VENCTO: TSQLTimeStampField;
    GroupBox3: TGroupBox;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    CurTotalValor: TCurrencyEdit;
    CurTotalDesconto: TCurrencyEdit;
    CurTotalJuros: TCurrencyEdit;
    CurTotalMulta: TCurrencyEdit;
    CurTotalPago: TCurrencyEdit;
    PopupMenu1: TPopupMenu;
    ImprimirRecibo1: TMenuItem;
    chkMultiEmpresa: TCheckBox;
    Label8: TLabel;
    EdCentroCustoCodigo: TEdit;
    CbCentroCusto: TComboBoxRw;
    frxReportReceberAgrupado: TfrxReport;
    chkImpAgrupado: TCheckBox;
    CdsReceberBaixasNF_NUM_NFE: TIntegerField;
    CdsReceberBaixasFPC_NPARCELAS: TSmallintField;
    chkAntecipado: TCheckBox;
    bitBtn2: TJvArrowButton;
    PopupMenu2: TPopupMenu;
    Relatrioderecebimentos1: TMenuItem;
    Relatioderecebimentoscomcpfcnpj1: TMenuItem;
    frxRecebimentosCPFCNPJ: TfrxReport;
    CdsReceberBaixasCLI_CGC: TStringField;
    ReceberagrupadoporBanco1: TMenuItem;
    frxReceberporBanco: TfrxReport;
    qReceberBanco: TSQLQuery;
    DSPReceberBanco: TDataSetProvider;
    CdsReceberBanco: TClientDataSet;
    DsReceberBanco: TDataSource;
    frxDBReceberBanco: TfrxDBDataset;
    CdsReceberBancoCCPendente: TFloatField;
    CdsReceberBancoBAN_APELIDO: TStringField;
    CdsReceberBancoEMP_CODIGO: TStringField;
    CdsReceberBancoNF_NUM_NFE: TIntegerField;
    CdsReceberBancoFAT_CODIGO: TStringField;
    CdsReceberBancoFPC_NUMER: TStringField;
    CdsReceberBancoFPC_STATUS: TStringField;
    CdsReceberBancoFPC_DTEMIS: TSQLTimeStampField;
    CdsReceberBancoCLI_CGC: TStringField;
    CdsReceberBancoCLI_RAZAO: TStringField;
    CdsReceberBancoFPC_VENCTO: TSQLTimeStampField;
    CdsReceberBancoFPC_VLPARC: TFMTBCDField;
    CdsReceberBancoFPC_DESCTO: TFMTBCDField;
    CdsReceberBancoFPC_VLPAGO: TFMTBCDField;
    CdsReceberBancoFPC_EXCLUSAO: TStringField;
    CdsReceberBancoFPC_JUROS: TFMTBCDField;
    CdsReceberBancoFPC_MULTA: TFMTBCDField;
    CdsReceberBancoFPG_DESCRICAO: TStringField;
    CdsReceberBancoFRE_DATA_RECEBIMENTO: TDateField;
    CdsReceberBancoFRE_VALOR: TFMTBCDField;
    CdsReceberBancoFRE_JUROS: TFMTBCDField;
    CdsReceberBancoFRE_RECEBIDO: TFMTBCDField;
    CdsReceberBancoFPC_NPARCELAS: TSmallintField;
    DBGridRecParceDBTableView1: TcxGridDBTableView;
    DBGridRecParceLevel1: TcxGridLevel;
    DBGridRecParce: TcxGrid;
    DBGridRecParceDBTableView1EMP_CODIGO: TcxGridDBColumn;
    DBGridRecParceDBTableView1FRE_DATA_RECEBIMENTO: TcxGridDBColumn;
    DBGridRecParceDBTableView1FRE_VALOR: TcxGridDBColumn;
    DBGridRecParceDBTableView1FRE_DESCONTO: TcxGridDBColumn;
    DBGridRecParceDBTableView1FRE_JUROS: TcxGridDBColumn;
    DBGridRecParceDBTableView1FRE_MULTA: TcxGridDBColumn;
    DBGridRecParceDBTableView1FRE_RECEBIDO: TcxGridDBColumn;
    DBGridRecParceDBTableView1BAN_APELIDO: TcxGridDBColumn;
    DBGridRecParceDBTableView1FPG_DESCRICAO: TcxGridDBColumn;
    DBGridRecParceDBTableView1USU_NOME: TcxGridDBColumn;
    DBGridRecParceDBTableView1CLI_RAZAO: TcxGridDBColumn;
    DBGridRecParceDBTableView1FAT_CODIGO: TcxGridDBColumn;
    DBGridRecParceDBTableView1FPC_NUMER: TcxGridDBColumn;
    DBGridRecParceDBTableView1FPC_VENCTO: TcxGridDBColumn;
    DBGridRecParceDBTableView1NF_NUM_NFE: TcxGridDBColumn;
    ReceberAgrupadoporCentrodeCusto1: TMenuItem;
    qReceberCentroCusto: TSQLQuery;
    dspReceberCentroCusto: TDataSetProvider;
    cdsReceberCentroCusto: TClientDataSet;
    dsReceberCentroCusto: TDataSource;
    frxDBReceberCentroCusto: TfrxDBDataset;
    frxReceberCentroCusto: TfrxReport;
    cdsReceberCentroCustoPCX_DESCRI: TStringField;
    cdsReceberCentroCustoFRE_DATA_RECEBIMENTO: TDateField;
    cdsReceberCentroCustoFRE_VALOR: TFMTBCDField;
    cdsReceberCentroCustoFRE_JUROS: TFMTBCDField;
    cdsReceberCentroCustoFRE_RECEBIDO: TFMTBCDField;
    cdsReceberCentroCustoBAN_APELIDO: TStringField;
    cdsReceberCentroCustoEMP_CODIGO: TStringField;
    cdsReceberCentroCustoNF_NUM_NFE: TIntegerField;
    cdsReceberCentroCustoFAT_CODIGO: TStringField;
    cdsReceberCentroCustoFPC_NUMER: TStringField;
    cdsReceberCentroCustoFPC_NPARCELAS: TSmallintField;
    cdsReceberCentroCustoFPC_STATUS: TStringField;
    cdsReceberCentroCustoFPC_DTEMIS: TSQLTimeStampField;
    cdsReceberCentroCustoCLI_CGC: TStringField;
    cdsReceberCentroCustoCLI_RAZAO: TStringField;
    cdsReceberCentroCustoFPC_VENCTO: TSQLTimeStampField;
    cdsReceberCentroCustoFPC_VLPARC: TFMTBCDField;
    cdsReceberCentroCustoFPC_DESCTO: TFMTBCDField;
    cdsReceberCentroCustoFPC_VLPAGO: TFMTBCDField;
    cdsReceberCentroCustoFPC_EXCLUSAO: TStringField;
    cdsReceberCentroCustoFPC_JUROS: TFMTBCDField;
    cdsReceberCentroCustoFPC_MULTA: TFMTBCDField;
    cdsReceberCentroCustoFPG_DESCRICAO: TStringField;
    cdsReceberCentroCustoCCPendente: TFloatField;
    procedure Bit_SairClick(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure EdClienteCodigoExit(Sender: tObject);
    procedure CbClienteExit(Sender: tObject);
    procedure CbClienteChange(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure EdFormaCodigoExit(Sender: tObject);
    procedure EdContaBancoCodigoExit(Sender: tObject);
    procedure CbFormaChange(Sender: tObject);
    procedure CbContaBancoChange(Sender: tObject);
    procedure CbFormaExit(Sender: tObject);
    procedure CbContaBancoExit(Sender: tObject);
    procedure EdFaturaExit(Sender: tObject);
    // procedure DBGridRecParceTitleClick(Column: TColumn);
    procedure BitPesquisarClick(Sender: tObject);
    procedure frxReportReceberGetValue(const VarName: String;
      var Value: Variant);
    procedure BitBtn2Click(Sender: tObject);
    procedure Bit_CancelarClick(Sender: tObject);
    procedure ImprimirRecibo1Click(Sender: tObject);
    procedure EdCentroCustoCodigoExit(Sender: tObject);
    procedure CbCentroCustoChange(Sender: tObject);
    procedure CbCentroCustoExit(Sender: tObject);
    procedure CdsReceberBaixasFPC_NUMERGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure CbFormaSelect(Sender: TObject);
    procedure CbCentroCustoSelect(Sender: TObject);
    procedure CbClienteSelect(Sender: TObject);
    procedure CbContaBancoSelect(Sender: TObject);
    procedure chkMultiEmpresaClick(Sender: TObject);
    procedure Relatrioderecebimentos1Click(Sender: TObject);
    procedure Relatioderecebimentoscomcpfcnpj1Click(Sender: TObject);
    procedure CbClienteButtonClick(Sender: TObject);
    procedure RxDataFinalExit(Sender: TObject);
    procedure ReceberagrupadoporBanco1Click(Sender: TObject);
    procedure frxReceberporBancoGetValue(const VarName: string; var Value: Variant);
    procedure CdsReceberBancoCalcFields(DataSet: TDataSet);
    procedure CdsReceberBancoFPC_NUMERGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure ReceberAgrupadoporCentrodeCusto1Click(Sender: TObject);
    procedure cdsReceberCentroCustoCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    sFiltro:WideString;
    procedure RealizaPesquisa;
    procedure RealizaPesquisaBanco;
    procedure RealizaPesquisaCentroCusto;
    procedure CalculaTotal;
  public
    { Public declarations }
    procedure BotoesAcesso;
  var
    // ordemIndice : string;
    arquivo: string;
  end;

var
  FormContasReceberBaixas: TFormContasReceberBaixas;

implementation

uses
  DataCad, RWFunc, Men0001, uRecibo, uteis, iniciodb, PesquisaClientesForm;

{$R *.dfm}

procedure TFormContasReceberBaixas.Bit_SairClick(Sender: tObject);
begin
   Close;
end;

procedure TFormContasReceberBaixas.BotoesAcesso;
begin
if Assigned(FormContasReceberBaixas) then
  begin
    BitBtn2.Enabled := Uteis.AcessoUsuario('FinanceiroContas à Receber',DBInicio.Usuario.CODIGO,FormContasReceberBaixas).Relatorio;

  end;

end;

procedure TFormContasReceberBaixas.FormShow(Sender: tObject);
begin
   //Carrega Combos
   CbCliente.CodigoEmpresa := StrToInt(dbInicio.Empresa.EMP_CODIGO);
   CbCliente.Compartilhar := 'CLIENTES';
   CbCliente.CarregarCombo := True;

   CbForma.CodigoEmpresa := StrToInt(dbInicio.Empresa.EMP_CODIGO);
   CbForma.Compartilhar := 'TABELAS';
   CbForma.CarregarCombo := True;

   CbCentroCusto.CodigoEmpresa := StrToInt(dbInicio.Empresa.EMP_CODIGO);
   CbCentroCusto.Compartilhar := 'TABELAS';
   CbCentroCusto.CarregarCombo := True;

   CbContaBanco.CodigoEmpresa := StrToInt(dbInicio.Empresa.EMP_CODIGO);
   CbContaBanco.Compartilhar := 'BANCOS';
   CbContaBanco.CarregarCombo := True;

   //Consulta padrão

   RxDataInicial.Date := Date -30;
   RxDataFinal.Date := Date;

   EdFatura.Enabled := true;
   RxDataInicial.Enabled := TRUE;
   RxDataFinal.Enabled := true;
   CbForma.Enabled := true;
   CbCentroCusto.Enabled := true;
   CbCliente.Enabled := true;
   CbContaBanco.Enabled := true;

  // ordemIndice := 'ASC';
  arquivo := dbInicio.SistemaLocal+'settings\'+ Self.Name + '.DBGridRecParceDBTableView1.grid';
  DBGridRecParceDBTableView1.RestoreFromIniFile(arquivo, True, True, [gsoUseFilter] );
  BitPesquisar.Click;
end;

procedure TFormContasReceberBaixas.EdClienteCodigoExit(Sender: tObject);
begin
   EdClienteCodigo.Text := PreenchezeroEsquerda(EdClienteCodigo.Text,5);

   if (EdClienteCodigo.Text = '00000') then
      begin
         EdClienteCodigo.Clear;
         CbCliente.Text := '';
      end
   else
      begin
         CbCliente.TextoLocalizar := EdClienteCodigo.Text;
         CbCliente.Localizar := True;
         if (CbCliente.Localizado) then
            begin

            end
         else
            begin
               uteis.aviso('Cliente não localizado com o código informado');
               CbCliente.Text := '';
               EdClienteCodigo.SetFocus;
               EdClienteCodigo.SelectAll;
            end;
      end;
end;

procedure TFormContasReceberBaixas.CbClienteExit(Sender: tObject);
begin
   if (CbCliente.CodigoLista = '') or (CbCliente.Text = '') then
      begin
         CbCliente.Text := '';
         EdClienteCodigo.Text := '';
      end
   else
      begin
         EdClienteCodigo.Text := CbCliente.CodigoLista;
      end;
end;

procedure TFormContasReceberBaixas.CbClienteSelect(Sender: TObject);
begin
  RealizaPesquisa;
end;

procedure TFormContasReceberBaixas.CbClienteButtonClick(Sender: TObject);
var tcr: tFrmPesquisaClientes;
begin
  tcr:= tFrmPesquisaClientes.Create(self);
  try
      tcr.ShowModal;
      if tcr.modalresult = mrok then
         CbCliente.idRetorno := tcr.IDRetorno;


  finally
       FreeAndNil(tcr);
  end;

end;

procedure TFormContasReceberBaixas.CbClienteChange(Sender: tObject);
begin
   EdClienteCodigo.Text := CbCliente.CodigoLista;
end;

procedure TFormContasReceberBaixas.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
   //Combos
   CbCliente.CarregarCombo := False;
   CbForma.CarregarCombo := False;
   CbCentroCusto.CarregarCombo := False;
   CbContaBanco.CarregarCombo := False;
   //CdS
   CdsReceberBaixas.Close;
   DBGridRecParceDBTableView1.StoreToIniFile(arquivo, True, [gsoUseFilter, gsoUseSummary] );
end;

procedure TFormContasReceberBaixas.EdFormaCodigoExit(Sender: tObject);
begin
   EdFormaCodigo.Text := PreenchezeroEsquerda(EdFormaCodigo.Text,5);

   if (EdFormaCodigo.Text = '00000') then
      begin
         EdFormaCodigo.Clear;
         CbForma.Text := '';
      end
   else
      begin
         CbForma.TextoLocalizar := EdFormaCodigo.Text;
         CbForma.Localizar := True;
         if (CbForma.Localizado) then
            begin

            end
         else
            begin
               uteis.aviso('Forma de Recebimento não localizado com o código informado');
               CbForma.Text := '';
               EdFormaCodigo.SetFocus;
               EdFormaCodigo.SelectAll;
            end;
      end;
end;

procedure TFormContasReceberBaixas.EdContaBancoCodigoExit(Sender: tObject);
begin
   EdContaBancoCodigo.Text := PreenchezeroEsquerda(EdContaBancoCodigo.Text,4);

   if (EdContaBancoCodigo.Text = '0000') then
      begin
         EdContaBancoCodigo.Clear;
         CbContaBanco.Text := '';
      end
   else
      begin
         CbContaBanco.TextoLocalizar := EdContaBancoCodigo.Text;
         CbContaBanco.Localizar := True;
         if (CbContaBanco.Localizado) then
            begin

            end
         else
            begin
               uteis.aviso('Conta Banco não localizado com o código informado');
               CbContaBanco.Text := '';
               EdContaBancoCodigo.SetFocus;
               EdContaBancoCodigo.SelectAll;
            end;
      end;
end;

procedure TFormContasReceberBaixas.CbFormaChange(Sender: tObject);
begin
   EdFormaCodigo.Text := CbForma.CodigoLista;
end;

procedure TFormContasReceberBaixas.CbContaBancoChange(Sender: tObject);
begin
   EdContaBancoCodigo.Text := CbContaBanco.CodigoLista;
end;

procedure TFormContasReceberBaixas.CbFormaExit(Sender: tObject);
begin
   if (CbForma.CodigoLista = '') or (CbForma.Text = '') then
      begin
         CbForma.Text := '';
         EdFormaCodigo.Text := '';
      end
   else
      begin
         EdFormaCodigo.Text := CbForma.CodigoLista;
      end;
end;

procedure TFormContasReceberBaixas.CbFormaSelect(Sender: TObject);
begin
  RealizaPesquisa;
end;

procedure TFormContasReceberBaixas.CdsReceberBaixasFPC_NUMERGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
 if not CdsReceberBaixas.IsEmpty then
   Text := IntToStr(StrToInt(sender.AsString)) + '/'+ IntToStr(CdsReceberBaixas.FieldByName('FPC_NPARCELAS').AsInteger);
end;

procedure TFormContasReceberBaixas.CdsReceberBancoCalcFields(DataSet: TDataSet);
var
  vlPend : Currency ;
begin
  inherited;
   if (CdsReceberBancoFPC_EXCLUSAO.AsString = 'S') then
      CdsReceberBancoCCPendente.AsCurrency := 0
   else
   begin
        vlPend := (CdsReceberBancoFPC_VLPARC.AsCurrency + CdsReceberBancoFPC_JUROS.AsCurrency + CdsReceberBancoFPC_MULTA.AsCurrency - CdsReceberBancoFPC_DESCTO.AsCurrency) ;
        vlPend := vlPend - CdsReceberBancoFPC_VLPAGO.AsCurrency;
        CdsReceberBancoCCPendente.AsCurrency := vlPend;
       if CdsReceberBancoCCPendente.AsCurrency<0 then
           CdsReceberBancoCCPendente.AsCurrency := 0;
   end;

end;

procedure TFormContasReceberBaixas.CdsReceberBancoFPC_NUMERGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
 if not CdsReceberBanco.IsEmpty then
   Text := IntToStr(StrToInt(sender.AsString)) + '/'+ IntToStr(CdsReceberBanco.FieldByName('FPC_NPARCELAS').AsInteger);

end;

procedure TFormContasReceberBaixas.cdsReceberCentroCustoCalcFields(DataSet: TDataSet);
var
  vlPend : Currency ;
begin
  inherited;
   if (cdsReceberCentroCustoFPC_EXCLUSAO.AsString = 'S') then
      cdsReceberCentroCustoCCPendente.AsCurrency := 0
   else
   begin
        vlPend := (cdsReceberCentroCustoFPC_VLPARC.AsCurrency + cdsReceberCentroCustoFPC_JUROS.AsCurrency + cdsReceberCentroCustoFPC_MULTA.AsCurrency - cdsReceberCentroCustoFPC_DESCTO.AsCurrency) ;
        vlPend := vlPend - cdsReceberCentroCustoFPC_VLPAGO.AsCurrency;
        cdsReceberCentroCustoCCPendente.AsCurrency := vlPend;
       if cdsReceberCentroCustoCCPendente.AsCurrency<0 then
           cdsReceberCentroCustoCCPendente.AsCurrency := 0;
   end;

end;
procedure TFormContasReceberBaixas.chkMultiEmpresaClick(Sender: TObject);
begin
  RealizaPesquisa;
end;

procedure TFormContasReceberBaixas.CbContaBancoExit(Sender: tObject);
begin
   if (CbContaBanco.CodigoLista = '') or (CbContaBanco.Text = '') then
      begin
         CbContaBanco.Text := '';
         EdContaBancoCodigo.Text := '';
      end
   else
      begin
         EdContaBancoCodigo.Text := CbContaBanco.CodigoLista;
      end;
end;

procedure TFormContasReceberBaixas.CbContaBancoSelect(Sender: TObject);
begin
  RealizaPesquisa;
end;

procedure TFormContasReceberBaixas.EdFaturaExit(Sender: tObject);
begin
   EdFatura.Text := StrZero(EdFatura.Text,EdFatura.MaxLength);
end;

{
procedure TFormContasReceberBaixas.DBGridRecParceTitleClick(
  Column: TColumn);
var
  idx: string;
begin
  try
    if CdsReceberBaixas.IndexDefs.Count > 0 then
      idx := CdsReceberBaixas.IndexDefs[0].Fields;
    if  idx <> Column.FieldName then
      ordemIndice := 'ASC';

    CdsReceberBaixas.IndexDefs.Clear;
    with CdsReceberBaixas.IndexDefs.AddIndexDef do
    begin
      Name := 'Indice';
      Fields := Column.FieldName;
      if ordemIndice = 'ASC' then
      begin
        Options := [];
        ordemIndice := 'DESC';
      end
      else
      begin
        Options := [ixDescending];
        ordemIndice := 'ASC';
      end;
    end;
    CdsReceberBaixas.IndexName := 'Indice';
    CdsReceberBaixas.Close;
    CdsReceberBaixas.Open;
  except
    uteis.aviso('Não é possivel ordenar por esta coluna');
  end;
end;
}


procedure TFormContasReceberBaixas.BitPesquisarClick(Sender: tObject);
begin
   RealizaPesquisa;
end;

procedure TFormContasReceberBaixas.RealizaPesquisa;
var
   sCondicao:WideString;
begin
   if (RxDataInicial.Text = '  /  /    ') then
      begin
         GeraException('Informe a data Inicial');
         RxDataInicial.SetFocus;
         RxDataInicial.SelectAll;
      end
   else
   if (RxDataFinal.Text = '  /  /    ') then
      begin
         GeraException('Informe a data Final');
         RxDataFinal.SetFocus;
         RxDataFinal.SelectAll;
      end
   else
   if (RxDataInicial.Date > RxDataFinal.Date) then
      begin
         GeraException('A Data Final não pode ser menor que a data Inicial');
         RxDataFinal.SetFocus;
         RxDataFinal.SelectAll;
      end ;

   CdsReceberBaixas.Close;
   sCondicao := 'WHERE FRE_DATA_RECEBIMENTO BETWEEN '+QuotedStr(DataAmericana(RxDataInicial.Text))+' AND '+QuotedStr(DataAmericana(RxDataFinal.Text));
   sFiltro := 'Recebimento: '+RxDataInicial.Text+' até '+RxDataFinal.Text;
   //Fatura
   if (EdFatura.Text <> '')and(EdFatura.Text <> '000000') then
      begin
         sCondicao := 'WHERE T5.FAT_CODIGO = '+QuotedStr(EdFatura.Text);
         sFiltro := sFiltro+' Fatura:'+EdFatura.Text;
      end
   else
      begin
         //Cliente
         if (EdClienteCodigo.Text <> '') then
            begin
               sCondicao := sCondicao+' and T5.CLI_CODIGO = '+QuotedStr(EdClienteCodigo.Text);
               sFiltro := sFiltro+' Cliente:'+CbCliente.Text;
            end;
         //Forma
         if (EdFormaCodigo.Text <> '') then
            begin
               sCondicao := sCondicao+' and T1.FPG_REGISTRO = '+QuotedStr(EdFormaCodigo.Text);
               sFiltro := sFiltro+' Forma:'+CbForma.Text;
            end;
         //Centro de Custo
         if (EdCentroCustoCodigo.Text <> '') then
            begin
               sCondicao := sCondicao+' and T5.PCX_CODIGO = '+QuotedStr(EdCentroCustoCodigo.Text);
               sFiltro := sFiltro+' Centro de Custo :'+CbCentroCusto.Text;
            end;
         //Conta Banco
         if (EdContaBancoCodigo.Text <> '') then
            begin
               sCondicao := sCondicao+' and T1.BAN_CODIGO = '+QuotedStr(EdContaBancoCodigo.Text);
               sFiltro := sFiltro+' Banco:'+CbContaBanco.Text;
            end;
         if chkAntecipado.Checked then
         begin
          sCondicao := sCondicao + ' and FRE_DATA_RECEBIMENTO + 3 < FPC_VENCTO ';
          sFiltro := sFiltro+' Recebido antecipado';
         end;
      end;
   //Pesquisa
   CdsReceberBaixas.Close;
   CdsReceberBaixas.CommandText := SqlDef(IIF(chkMultiEmpresa.Checked,'MULTIEMPRESA','RECEBER'),
              'SELECT T1.*,t8.nf_num_nfe, T2.BAN_APELIDO,T3.FPG_DESCRICAO,T4.USU_NOME,T5.CLI_CODIGO,T6.CLI_RAZAO, T6.CLI_CGC,'+
              't5.FAT_CODIGO,t5.FPC_NUMER,t5.FPC_NPARCELAS, t5.FPC_VENCTO FROM FAT_RECEBIMENTO T1  '+
               'JOIN BAN0000 T2 ON (T2.BAN_CODIGO = T1.BAN_CODIGO) '+
               'JOIN FORMA_PAGAMENTO T3 ON (T3.FPG_REGISTRO = T1.FPG_REGISTRO) '+
               'JOIN USUARIO T4 ON (T4.USU_CODIGO = T1.USU_CODIGO) '+
               'JOIN FAT_PC01 T5 ON (T5.FAT_REGISTRO = T1.FAT_REGISTRO  AND t5.EMP_CODIGO = t1.EMP_CODIGO) '+
               ' join fat0000 t7 on(t7.fat_codigo = t5.fat_codigo AND  t5.EMP_CODIGO = t7.emp_codigo)'+
               ' JOIN CLI0000 T6 ON (T6.CLI_CODIGO = T7.CLI_CODIGO) '+
               ' left join nf0001 t8 on (t8.nf_notanumber = t7.fat_codigo AND  t8.EMP_CODIGO = t7.emp_codigo  and t8.nf_cancelada <> ''S'' and t8.nf_status_nfe <> ''C'' '+
               ' and t8.ope_semvlcom <> '''' and t8.ope_semvlcom IS NOT null)'  ,sCondicao,'FRE_DATA_RECEBIMENTO desc','T1.');
   if dbInicio.isDesenvolvimento then
     CopyToClipboard(CdsReceberBaixas.CommandText);
   CdsReceberBaixas.Open;
   CalculaTotal;
   if (CdsReceberBaixas.IsEmpty) then
      begin
        // uteis.aviso('Não foi possível localizar nenhum recebimento');
         EdFatura.SetFocus;
         EdFatura.SelectAll;
      end
   else
      begin
         DBGridRecParce.SetFocus;
      end;
end;

procedure TFormContasReceberBaixas.RealizaPesquisaBanco;
var
  sCondicao:WideString;
  existe : boolean;
  complFiltro: string;
  wSeleciona, wOrdem : String ;
  flgWhere: Boolean;
  Procedure SqlAdd( stt: string ) ;
  begin
    if stt <> '' then
    begin
      if flgWhere then
        qReceberBanco.Sql.add(' where '+stt )
      else
        qReceberBanco.Sql.add(' and '+stt );
      flgWhere := False;
    end;
  end;



begin
  if (RxDataInicial.Text = '  /  /    ') then
  begin
    GeraException('Informe a data Inicial');
    RxDataInicial.SetFocus;
    RxDataInicial.SelectAll;
  end
  else
  if (RxDataFinal.Text = '  /  /    ') then
  begin
    GeraException('Informe a data Final');
    RxDataFinal.SetFocus;
    RxDataFinal.SelectAll;
  end
  else
  if (RxDataInicial.Date > RxDataFinal.Date) then
  begin
    GeraException('A Data Final não pode ser menor que a data Inicial');
    RxDataFinal.SetFocus;
    RxDataFinal.SelectAll;
  end ;
  flgWhere := True ;
  CdsReceberBanco.Close;
  sFiltro := '';
  qReceberBanco.Sql.Clear ;
  qReceberBanco.SQL.Add('  SELECT ');
  qReceberBanco.SQL.Add('       T1.FRE_DATA_RECEBIMENTO, ');
  qReceberBanco.SQL.Add('       T1.FRE_VALOR, ');
  qReceberBanco.SQL.Add('       T1.FRE_JUROS, ');
  qReceberBanco.SQL.Add('       T1.FRE_RECEBIDO, ');
  qReceberBanco.SQL.Add('       T2.ban_apelido, ');
  qReceberBanco.SQL.Add('       T1.EMP_CODIGO, ');
  qReceberBanco.SQL.Add('       T8.NF_NUM_NFE, ');
  qReceberBanco.SQL.Add('       T5.FAT_CODIGO, ');
  qReceberBanco.SQL.Add('       T5.FPC_NUMER, ');
  qReceberBanco.SQL.Add('       T5.FPC_NPARCELAS, ');
  qReceberBanco.SQL.Add('       T5.FPC_STATUS, ');
  qReceberBanco.SQL.Add('       T5.FPC_DTEMIS, ');
  qReceberBanco.SQL.Add('       COALESCE(T6.CLI_CGC, '''') AS CLI_CGC, ');
  qReceberBanco.SQL.Add('       T6.CLI_RAZAO, ');
  qReceberBanco.SQL.Add('       T5.FPC_VENCTO, ');
  qReceberBanco.SQL.Add('       T5.FPC_VLPARC, ');
  qReceberBanco.SQL.Add('       T5.FPC_DESCTO, ');
  qReceberBanco.SQL.Add('       T5.FPC_VLPAGO, ');
  qReceberBanco.SQL.Add('       T5.FPC_EXCLUSAO, ');
  qReceberBanco.SQL.Add('       T5.FPC_JUROS, ');
  qReceberBanco.SQL.Add('       T5.FPC_MULTA, ');
  qReceberBanco.SQL.Add('       T3.FPG_DESCRICAO ');
  qReceberBanco.SQL.Add(' FROM FAT_RECEBIMENTO T1 ');
  qReceberBanco.SQL.Add('  JOIN BAN0000 T2 ON	(T2.BAN_CODIGO = T1.BAN_CODIGO) ');
  qReceberBanco.SQL.Add('  JOIN FORMA_PAGAMENTO T3 ON	(T3.FPG_REGISTRO = T1.FPG_REGISTRO) ');
  qReceberBanco.SQL.Add('  JOIN USUARIO T4 ON	(T4.USU_CODIGO = T1.USU_CODIGO) ');
  qReceberBanco.SQL.Add('  JOIN FAT_PC01 T5 ON	(T5.FAT_REGISTRO = T1.FAT_REGISTRO	AND t5.EMP_CODIGO = t1.EMP_CODIGO) ');
  qReceberBanco.SQL.Add('  JOIN fat0000 t7 ON	(t7.fat_codigo = t5.fat_codigo		AND t5.EMP_CODIGO = t7.emp_codigo) ');
  qReceberBanco.SQL.Add('  JOIN CLI0000 T6 ON	(T6.CLI_CODIGO = T7.CLI_CODIGO) ');
  qReceberBanco.SQL.Add('  LEFT JOIN nf0001 t8 ON	(t8.nf_notanumber = t7.fat_codigo		AND t8.EMP_CODIGO = t7.emp_codigo		AND t8.nf_cancelada <> ''S''		AND t8.nf_status_nfe <> ''C''		AND t8.ope_semvlcom <> ''''		AND t8.ope_semvlcom IS NOT NULL) ');



  //Fatura
  if (EdFatura.Text <> '') and (EdFatura.Text <> '000000') then
  begin
    SqlAdd(' T5.FAT_CODIGO = '+QuotedStr(EdFatura.Text));
    sFiltro := sFiltro+' Fatura:'+EdFatura.Text;
  end;
  // Período do Recebimento
  SqlAdd(  'T1.FRE_DATA_RECEBIMENTO BETWEEN '+QuotedStr(DataAmericana(RxDataInicial.Text)) + ' AND ' + QuotedStr(DataAmericana(RxDataFinal.Text))  );
  sFiltro := sFiltro + ' - Recebimento: ' + RxDataInicial.Text + ' até ' + RxDataFinal.Text;
  //Cliente
  if (EdClienteCodigo.Text <> '') then
  begin
    SqlAdd('T6.CLI_CODIGO = '+QuotedStr(EdClienteCodigo.Text) );
    sFiltro := sFiltro + ' Cliente:' + CbCliente.Text;
  end;
  //Forma
  if (EdFormaCodigo.Text <> '') then
  begin
    SqlAdd('T3.FPG_REGISTRO = '+QuotedStr(EdFormaCodigo.Text) );
    sFiltro := sFiltro + ' Forma:' + CbForma.Text;
  end;
  //Centro de Custo
  if (EdCentroCustoCodigo.Text <> '') then
  begin
    SqlAdd('T5.PCX_CODIGO = '+QuotedStr(EdCentroCustoCodigo.Text) );
    sFiltro := sFiltro + ' Centro de Custo :' + CbCentroCusto.Text;
  end;
  //Conta Banco
  if (EdContaBancoCodigo.Text <> '') then
  begin
    SqlAdd('T2.BAN_CODIGO = '+QuotedStr(EdContaBancoCodigo.Text) );
    sFiltro := sFiltro + ' Banco:' + CbContaBanco.Text;
  end;
  if chkAntecipado.Checked then
  begin
    SqlAdd('t1.FRE_DATA_RECEBIMENTO + 3 < T5.FPC_VENCTO ' );
    sFiltro := sFiltro + ' Recebido antecipado';
  end;
  if not chkMultiEmpresa.Checked then
  begin
    SqlAdd('T1.EMP_CODIGO = ' + QuotedStr(DBInicio.Empresa.EMP_CODIGO)  );
  end;
  qReceberBanco.Sql.add(' ORDER BY T2.BAN_APELIDO, T1.FRE_DATA_RECEBIMENTO DESC ');
  if DBInicio.IsDesenvolvimento then
    CopyToClipBoard(qReceberBanco.SQL.Text);
  CdsReceberBanco.open;






end;

procedure TFormContasReceberBaixas.RealizaPesquisaCentroCusto;
var
  sCondicao:WideString;
  existe : boolean;
  complFiltro: string;
  wSeleciona, wOrdem : String ;
  flgWhere: Boolean;
  Procedure SqlAdd( stt: string ) ;
  begin
    if stt <> '' then
    begin
      if flgWhere then
        qReceberCentrocusto.Sql.add(' where '+stt )
      else
        qReceberCentrocusto.Sql.add(' and '+stt );
      flgWhere := False;
    end;
  end;



begin
  if (RxDataInicial.Text = '  /  /    ') then
  begin
    GeraException('Informe a data Inicial');
    RxDataInicial.SetFocus;
    RxDataInicial.SelectAll;
  end
  else
  if (RxDataFinal.Text = '  /  /    ') then
  begin
    GeraException('Informe a data Final');
    RxDataFinal.SetFocus;
    RxDataFinal.SelectAll;
  end
  else
  if (RxDataInicial.Date > RxDataFinal.Date) then
  begin
    GeraException('A Data Final não pode ser menor que a data Inicial');
    RxDataFinal.SetFocus;
    RxDataFinal.SelectAll;
  end ;
  flgWhere := True ;
  CdsReceberCentroCusto.Close;
  sFiltro := '';
  qReceberCentrocusto.Sql.Clear ;
  qReceberCentrocusto.SQL.Add('  SELECT ');
  qReceberCentrocusto.SQL.Add('       PCX.PCX_DESCRI, ');
  qReceberCentrocusto.SQL.Add('       T1.FRE_DATA_RECEBIMENTO, ');
  qReceberCentrocusto.SQL.Add('       T1.FRE_VALOR, ');
  qReceberCentrocusto.SQL.Add('       T1.FRE_JUROS, ');
  qReceberCentrocusto.SQL.Add('       T1.FRE_RECEBIDO, ');
  qReceberCentrocusto.SQL.Add('       T2.ban_apelido, ');
  qReceberCentrocusto.SQL.Add('       T1.EMP_CODIGO, ');
  qReceberCentrocusto.SQL.Add('       T8.NF_NUM_NFE, ');
  qReceberCentrocusto.SQL.Add('       T5.FAT_CODIGO, ');
  qReceberCentrocusto.SQL.Add('       T5.FPC_NUMER, ');
  qReceberCentrocusto.SQL.Add('       T5.FPC_NPARCELAS, ');
  qReceberCentrocusto.SQL.Add('       T5.FPC_STATUS, ');
  qReceberCentrocusto.SQL.Add('       T5.FPC_DTEMIS, ');
  qReceberCentrocusto.SQL.Add('       COALESCE(T6.CLI_CGC, '''') AS CLI_CGC, ');
  qReceberCentrocusto.SQL.Add('       T6.CLI_RAZAO, ');
  qReceberCentrocusto.SQL.Add('       T5.FPC_VENCTO, ');
  qReceberCentrocusto.SQL.Add('       T5.FPC_VLPARC, ');
  qReceberCentrocusto.SQL.Add('       T5.FPC_DESCTO, ');
  qReceberCentrocusto.SQL.Add('       T5.FPC_VLPAGO, ');
  qReceberCentrocusto.SQL.Add('       T5.FPC_EXCLUSAO, ');
  qReceberCentrocusto.SQL.Add('       T5.FPC_JUROS, ');
  qReceberCentrocusto.SQL.Add('       T5.FPC_MULTA, ');
  qReceberCentrocusto.SQL.Add('       T3.FPG_DESCRICAO ');
  qReceberCentrocusto.SQL.Add(' FROM FAT_RECEBIMENTO T1 ');
  qReceberCentrocusto.SQL.Add('  JOIN BAN0000 T2 ON	(T2.BAN_CODIGO = T1.BAN_CODIGO) ');
  qReceberCentrocusto.SQL.Add('  JOIN FORMA_PAGAMENTO T3 ON	(T3.FPG_REGISTRO = T1.FPG_REGISTRO) ');
  qReceberCentrocusto.SQL.Add('  JOIN USUARIO T4 ON	(T4.USU_CODIGO = T1.USU_CODIGO) ');
  qReceberCentrocusto.SQL.Add('  JOIN FAT_PC01 T5 ON	(T5.FAT_REGISTRO = T1.FAT_REGISTRO	AND t5.EMP_CODIGO = t1.EMP_CODIGO) ');
  qReceberCentrocusto.SQL.Add('  LEFT JOIN PCX0000 PCX ON	(PCX.PCX_CODIGO = T5.PCX_CODIGO	AND PCX.EMP_CODIGO = T5.EMP_CODIGO) ');
  qReceberCentrocusto.SQL.Add('  JOIN fat0000 t7 ON	(t7.fat_codigo = t5.fat_codigo		AND t5.EMP_CODIGO = t7.emp_codigo) ');
  qReceberCentrocusto.SQL.Add('  JOIN CLI0000 T6 ON	(T6.CLI_CODIGO = T7.CLI_CODIGO) ');
  qReceberCentrocusto.SQL.Add('  LEFT JOIN nf0001 t8 ON	(t8.nf_notanumber = t7.fat_codigo		AND t8.EMP_CODIGO = t7.emp_codigo		AND t8.nf_cancelada <> ''S''		AND t8.nf_status_nfe <> ''C''		AND t8.ope_semvlcom <> ''''		AND t8.ope_semvlcom IS NOT NULL) ');



  //Fatura
  if (EdFatura.Text <> '') and (EdFatura.Text <> '000000') then
  begin
    SqlAdd(' T5.FAT_CODIGO = '+QuotedStr(EdFatura.Text));
    sFiltro := sFiltro+' Fatura:'+EdFatura.Text;
  end;
  // Período do Recebimento
  SqlAdd(  'T1.FRE_DATA_RECEBIMENTO BETWEEN '+QuotedStr(DataAmericana(RxDataInicial.Text)) + ' AND ' + QuotedStr(DataAmericana(RxDataFinal.Text))  );
  sFiltro := sFiltro + ' - Recebimento: ' + RxDataInicial.Text + ' até ' + RxDataFinal.Text;
  //Cliente
  if (EdClienteCodigo.Text <> '') then
  begin
    SqlAdd('T6.CLI_CODIGO = '+QuotedStr(EdClienteCodigo.Text) );
    sFiltro := sFiltro + ' Cliente:' + CbCliente.Text;
  end;
  //Forma
  if (EdFormaCodigo.Text <> '') then
  begin
    SqlAdd('T3.FPG_REGISTRO = '+QuotedStr(EdFormaCodigo.Text) );
    sFiltro := sFiltro + ' Forma:' + CbForma.Text;
  end;
  //Centro de Custo
  if (EdCentroCustoCodigo.Text <> '') then
  begin
    SqlAdd('T5.PCX_CODIGO = '+QuotedStr(EdCentroCustoCodigo.Text) );
    sFiltro := sFiltro + ' Centro de Custo :' + CbCentroCusto.Text;
  end;
  //Conta Banco
  if (EdContaBancoCodigo.Text <> '') then
  begin
    SqlAdd('T2.BAN_CODIGO = '+QuotedStr(EdContaBancoCodigo.Text) );
    sFiltro := sFiltro + ' Banco:' + CbContaBanco.Text;
  end;
  if chkAntecipado.Checked then
  begin
    SqlAdd('t1.FRE_DATA_RECEBIMENTO + 3 < T5.FPC_VENCTO ' );
    sFiltro := sFiltro + ' Recebido antecipado';
  end;
  if not chkMultiEmpresa.Checked then
  begin
    SqlAdd('T1.EMP_CODIGO = ' + QuotedStr(DBInicio.Empresa.EMP_CODIGO)  );
  end;
  qReceberCentrocusto.Sql.add(' ORDER BY PCX.PCX_DESCRI, T1.FRE_DATA_RECEBIMENTO DESC ');
  if DBInicio.IsDesenvolvimento then
    CopyToClipBoard(qReceberCentroCusto.SQL.Text);
  cdsReceberCentroCusto.open;






end;
procedure TFormContasReceberBaixas.ReceberagrupadoporBanco1Click(Sender: TObject);
begin
  RealizaPesquisaBanco;
  frxReceberporBanco.ShowReport();
end;

procedure TFormContasReceberBaixas.ReceberAgrupadoporCentrodeCusto1Click(Sender: TObject);
begin
  inherited;
  RealizaPesquisaCentroCusto;
  frxReceberCentroCusto.ShowReport();

end;

procedure TFormContasReceberBaixas.Relatioderecebimentoscomcpfcnpj1Click(Sender: TObject);
begin
  inherited;
  frxRecebimentosCPFCNPJ.ShowReport;
end;

procedure TFormContasReceberBaixas.Relatrioderecebimentos1Click(Sender: TObject);
begin
  inherited;
  if (CdsReceberBaixas.IsEmpty) then
      begin
         uteis.aviso('Não existe Recebimentos para serem impressos');
      end
   else
      begin
         if (chkImpAgrupado.Checked) then
            begin
               CdsReceberBaixas.IndexFieldNames:='FPG_DESCRICAO;FRE_DATA_RECEBIMENTO';
               frxReportReceberAgrupado.ShowReport();
            end
         else
            frxReportReceber.ShowReport();
   end;
end;

procedure TFormContasReceberBaixas.RxDataFinalExit(Sender: TObject);
begin
  inherited;
  if (RxDataInicial.Date <> 0 ) and (RxDataFinal.Date<> 0)  then
    RealizaPesquisa;

end;

procedure TFormContasReceberBaixas.frxReceberporBancoGetValue(const VarName: string; var Value: Variant);
begin
  inherited;
   if (VarName = 'Empresa') then
      Value := dbInicio.EMPRESA.RAZAO
   else
   if (VarName = 'Filtro') then
      Value := sFiltro
   else
   if (VarName = 'DataIni') then
   begin
      if (RxDataInicial.date = 0) then
        Value := ''
      else
        Value := RxDataInicial.date;
   end
   else
   if (VarName = 'DataFim') then
   begin
      if (RxDataFinal.date = 0) then
        Value := ''
      else
      begin
        Value := RxDataFinal.date;
      end;
   end;
end;

procedure TFormContasReceberBaixas.frxReportReceberGetValue(
  const VarName: String; var Value: Variant);
begin
   if (VarName = 'Empresa') then
      Value := dbInicio.Empresa.RAZAO
   else
   if (VarName = 'Filtro') then
      Value := sFiltro
   else if (VarName = 'DataIni') then
      Value := RxDataInicial.date
   else if (Varname = 'DataFim') then
      Value := RxDataFinal.date;


end;

procedure TFormContasReceberBaixas.BitBtn2Click(Sender: tObject);
begin
   if (CdsReceberBaixas.IsEmpty) then
      begin
         uteis.aviso('Não existe Recebimentos para serem impressos');
      end
   else
      begin
         if (chkImpAgrupado.Checked) then
            begin
               CdsReceberBaixas.IndexFieldNames:='FPG_DESCRICAO;FRE_DATA_RECEBIMENTO';
               frxReportReceberAgrupado.ShowReport();
            end
         else
            frxReportReceber.ShowReport();
      end;
end;

procedure TFormContasReceberBaixas.CalculaTotal;
begin
   //Limpa Valores
   CurTotalValor.Clear;
   CurTotalDesconto.Clear;
   CurTotalJuros.Clear;
   CurTotalMulta.Clear;
   CurTotalPago.Clear;
   CdsReceberBaixas.First;
   CdsReceberBaixas.DisableControls;
   while (not CdsReceberBaixas.Eof) do
      begin
         CurTotalValor.Value := CurTotalValor.Value + CdsReceberBaixasFRE_VALOR.AsCurrency;
         CurTotalDesconto.Value := CurTotalDesconto.Value + CdsReceberBaixasFRE_DESCONTO.AsCurrency;
         CurTotalJuros.Value := CurTotalJuros.Value + CdsReceberBaixasFRE_JUROS.AsCurrency;
         CurTotalMulta.Value := CurTotalMulta.Value + CdsReceberBaixasFRE_MULTA.AsCurrency;
         CurTotalPago.Value := CurTotalPago.Value + CdsReceberBaixasFRE_RECEBIDO.AsCurrency;
         CdsReceberBaixas.Next;
      end;
   CdsReceberBaixas.First;
   CdsReceberBaixas.EnableControls

end;

procedure TFormContasReceberBaixas.Bit_CancelarClick(Sender: tObject);
begin
   CalculaTotal;
end;

procedure TFormContasReceberBaixas.ImprimirRecibo1Click(Sender: tObject);
begin
   if (not CdsReceberBaixas.IsEmpty) then
      begin
         try
            FrmRecibo := TFrmRecibo.Create(Application);
            FrmRecibo.FormStyle := fsNormal;
            FrmRecibo.Visible := false;
            FrmRecibo.dataRecebimento := CdsReceberBaixasFRE_DATA_RECEBIMENTO.AsDateTime;
            FrmRecibo.CurValor.Value := CdsReceberBaixasFRE_VALOR.AsCurrency;
            FrmRecibo.edtRecebemosPagamos.Text := CdsReceberBaixasCLI_RAZAO.AsString;
            FrmRecibo.mmoReferente.Lines.Add('Fatura: '+CdsReceberBaixasFAT_CODIGO.AsString+' Vencimento: '+CdsReceberBaixasFPC_VENCTO.AsString+' Valor: '+FormatFloat('###,###,###.00',CdsReceberBaixasFRE_VALOR.AsCurrency));
            FrmRecibo.mmoReferente.Lines.Add('Liquidação '+iif(CdsReceberBaixasFRE_VALOR.AsCurrency < CdsReceberBaixasFRE_VALOR.AsCurrency,'Parcial','Total' )+' :'+CdsReceberBaixasFRE_DATA_RECEBIMENTO.AsString+' Valor: '+FormatFloat('###,###,###.00',CdsReceberBaixasFRE_VALOR.AsCurrency) );
            FrmRecibo.ShowModal;
         finally
            FrmRecibo.Destroy;
            FrmRecibo := nil;
         end;
      end;
end;

procedure TFormContasReceberBaixas.EdCentroCustoCodigoExit(
  Sender: tObject);
begin
   EdCentroCustoCodigo.Text := PreenchezeroEsquerda(EdCentroCustoCodigo.Text,3);

   if (EdCentroCustoCodigo.Text = '000') then
      begin
         EdCentroCustoCodigo.Clear;
         CbCentroCusto.Text := '';
      end
   else
      begin
         CbCentroCusto.TextoLocalizar := EdCentroCustoCodigo.Text;
         CbCentroCusto.Localizar := True;
         if (CbCentroCusto.Localizado) then
            begin

            end
         else
            begin
               uteis.aviso('Centro de Custo não localizado com o código informado');
               CbCentroCusto.Text := '';
               EdCentroCustoCodigo.SetFocus;
               EdCentroCustoCodigo.SelectAll;
            end;
      end;
end;

procedure TFormContasReceberBaixas.CbCentroCustoChange(Sender: tObject);
begin
   EdCentroCustoCodigo.Text := CbCentroCusto.CodigoLista;
end;

procedure TFormContasReceberBaixas.CbCentroCustoExit(Sender: tObject);
begin
   if (CbCentroCusto.CodigoLista = '') or (CbCentroCusto.Text = '') then
      begin
         CbCentroCusto.Text := '';
         EdCentroCustoCodigo.Text := '';
      end
   else
      begin
         EdCentroCustoCodigo.Text := CbCentroCusto.CodigoLista;
      end;
end;

procedure TFormContasReceberBaixas.CbCentroCustoSelect(Sender: TObject);
begin
  RealizaPesquisa;
end;

end.


