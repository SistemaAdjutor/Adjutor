unit uSelecionaAlmoxarifado;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBForm, Data.DBXFirebird, Data.FMTBcd,
  Data.DB, Data.SqlExpr, ACBrEnterTab, ACBrBase, ACBrCalculadora, Vcl.StdCtrls, SgDbSeachComboUnit, Vcl.Buttons,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, Vcl.ExtCtrls, cxDropDownEdit,
  cxDBLookupComboBox, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TfrmSelecionaAlmoxarifado = class(TfrmBaseDB)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    lbAtencao: TLabel;
    btCancela: TBitBtn;
    btConfirma: TBitBtn;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBTableView1MP_CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1IOP_CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1MP_UCONSUMO: TcxGridDBColumn;
    cxGrid1DBTableView1MP_SITUACAO: TcxGridDBColumn;
    cxGrid1DBTableView1PRD_REFER: TcxGridDBColumn;
    cxGrid1DBTableView1PRD_DESCRI: TcxGridDBColumn;
    cxGrid1DBTableView1MP_EMPENHADO: TcxGridDBColumn;
    cxGrid1DBTableView1MP_CONSUMOTOTAL: TcxGridDBColumn;
    cxGrid1DBTableView1PED_CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1PRD_CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1MP_CODIGO_SUBST: TcxGridDBColumn;
    cxGrid1DBTableView1SUBST: TcxGridDBColumn;
    cxGrid1DBTableView1PercConsumido: TcxGridDBColumn;
    cxGrid1DBTableView1PRD_UND: TcxGridDBColumn;
    cxGrid1DBTableView1PRD_GERENCIA_LOTE: TcxGridDBColumn;
    cxGrid1DBTableView1ESTOQUEDISPONIVEL: TcxGridDBColumn;
    cxGrid1DBTableView1MP_CUSTO: TcxGridDBColumn;
    cxGrid1DBTableView1cbAlmoxarifado: TcxGridDBColumn;
    cxGrid1DBTableView1AMX_CODIGO: TcxGridDBColumn;
    qAlmox: TFDQuery;
    dsAlmox: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure cxGrid1DBTableView1cbAlmoxarifadoPropertiesChange(
      Sender: TObject);
    procedure cxGrid1DBTableView1cbAlmoxarifadoPropertiesPopup(Sender: TObject);
    procedure cxGrid1DBTableView1cbAlmoxarifadoGetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: string);
    procedure btConfirmaClick(Sender: TObject);
  private
    var
      amxAnterior: string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSelecionaAlmoxarifado: TfrmSelecionaAlmoxarifado;

implementation

{$R *.dfm}

uses uteis, uGerenciamentoPCP, InicioDB;

procedure TfrmSelecionaAlmoxarifado.btConfirmaClick(Sender: TObject);
begin
  inherited;
  frmGerenciamentoPCP.cdsMateriaPrima.First;
  while not frmGerenciamentoPCP.cdsMateriaPrima.eof do
  begin
    // almoxarifado := cdsMateriaPrimaAMX_CODIGO.AsString;
    ExecSql('INSERT INTO PCP_TEMP' + DBInicio.Usuario.CODIGO +  ' VALUES (' +
              QuotedStr(frmGerenciamentoPCP.cdsMateriaPrimaPRD_CODIGO.AsString)  +  ',' +
              QuotedStr(frmGerenciamentoPCP.cdsMateriaPrimaPRD_REFER.AsString)  + ',' +
              QuotedStr(frmGerenciamentoPCP.cdsMateriaPrimaAMX_CODIGO.AsString)  +
            ')'
           );
    frmGerenciamentoPCP.cdsMateriaPrima.Next;
  end;

end;

procedure TfrmSelecionaAlmoxarifado.cxGrid1DBTableView1cbAlmoxarifadoGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
  inherited;
 // AText := frmGerenciamentoPCP.cdsMateriaPrimaAMX_CODIGO.AsString + ' - ' + DBInicio.BuscaUmDadoSqlASString('SELECT AMX_DESCRI FROM ALMOX0000 WHERE AMX_CODIGO = ' + QuotedStr(frmGerenciamentoPCP.cdsMateriaPrimaAMX_CODIGO.AsString) );

end;

procedure TfrmSelecionaAlmoxarifado.cxGrid1DBTableView1cbAlmoxarifadoPropertiesChange(Sender: TObject);
var
  saldo : double;
begin
  inherited;
  if TcxLookupComboBox(cxGrid1DBTableView1.Controller.EditingController.Edit).EditValue = AmxAnterior then
    abort;
  saldo := BuscaUmDadoSqlAsFloat('SELECT sum(KAS_SALDO)- COALESCE(sum(KAS_RESERVA),0) ' +
                           ' FROM kardex_almox_saldo kas ' +
                           ' WHERE kas.PRD_CODIGO = ' + QuotedStr(frmGerenciamentoPCP.cdsMateriaPrimaPRD_CODIGO.AsString) +
                            ' AND  AMX_CODIGO = ' + QuotedStr(TcxLookupComboBox(cxGrid1DBTableView1.Controller.EditingController.Edit).EditValue) );
  if saldo <= 0 then
  begin
    Aviso('Não há saldo suficiente para este produto no almoxarifado indicado.' +
            #13 + 'Saldo Disponível ' + FormatFloat('###,###,##0,00', saldo)  );
    TcxLookupComboBox(cxGrid1DBTableView1.Controller.EditingController.Edit).EditValue := amxAnterior;
    saldo := BuscaUmDadoSqlAsFloat('SELECT sum(KAS_SALDO)- COALESCE(sum(KAS_RESERVA),0) ' +
                             ' FROM kardex_almox_saldo kas ' +
                             ' WHERE kas.PRD_CODIGO = ' + QuotedStr(frmGerenciamentoPCP.cdsMateriaPrimaPRD_CODIGO.AsString) +
                             ' AND  AMX_CODIGO = ' + QuotedStr(TcxLookupComboBox(cxGrid1DBTableView1.Controller.EditingController.Edit).EditValue) );
  end;

  frmGerenciamentoPCP.cdsMateriaPrima.Edit;
  frmGerenciamentoPCP.cdsMateriaPrimaAMX_CODIGO.AsString := TcxLookupComboBox(cxGrid1DBTableView1.Controller.EditingController.Edit).EditValue;
  frmGerenciamentoPCP.cdsMateriaPrimaESTOQUEDISPONIVEL.AsFloat := Saldo;
  frmGerenciamentoPCP.cdsMateriaPrima.Post;
end;

procedure TfrmSelecionaAlmoxarifado.cxGrid1DBTableView1cbAlmoxarifadoPropertiesPopup(
  Sender: TObject);
begin
  inherited;
  amxAnterior := TcxLookupComboBox(cxGrid1DBTableView1.Controller.EditingController.Edit).EditValue;
end;

procedure TfrmSelecionaAlmoxarifado.FormShow(Sender: TObject);
begin
  inherited;
  qAlmox.Open();
  frmGerenciamentoPCP.cdsMateriaPrima.Close;
  frmGerenciamentoPCP.cdsMateriaPrima.Open;
  cxGrid1DBTableView1.DataController.DataSource := frmGerenciamentoPCP.dsMateriaPrima;
  frmGerenciamentoPCP.cdsMateriaPrima.EnableControls;
end;

end.
