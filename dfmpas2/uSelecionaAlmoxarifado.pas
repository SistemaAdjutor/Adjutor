unit uSelecionaAlmoxarifado;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBForm, Data.DBXFirebird, Data.FMTBcd, Data.DB, Data.SqlExpr, ACBrEnterTab, ACBrBase, ACBrCalculadora, Vcl.StdCtrls, SgDbSeachComboUnit, Vcl.Buttons,
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
  cxGridTableView, cxGridDBTableView, cxGrid, Vcl.ExtCtrls, cxDropDownEdit;

type
  TfrmSelecionaAlmoxarifado = class(TfrmBaseDB)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    lbAtencao: TLabel;
    Label3: TLabel;
    edAlmoxarifado: TEdit;
    cbAlmoxarifado: TSgDbSearchCombo;
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
    cxGrid1DBTableView1AmxCodigo: TcxGridDBColumn;
    procedure cbAlmoxarifadoChange(Sender: TObject);
    procedure btConfirmaClick(Sender: TObject);
  private
    { Private declarations }
  public
      prd_codigo: string;
    { Public declarations }
  end;

var
  frmSelecionaAlmoxarifado: TfrmSelecionaAlmoxarifado;

implementation

{$R *.dfm}

uses uteis, uGerenciamentoPCP;

procedure TfrmSelecionaAlmoxarifado.btConfirmaClick(Sender: TObject);
var
  saldo : double;
begin
  inherited;
  saldo := BuscaUmDadoSqlAsFloat('SELECT sum(KAS_SALDO)- COALESCE(sum(KAS_RESERVA),0) ' +
                           ' FROM kardex_almox_saldo kas ' +
                           ' WHERE kas.PRD_CODIGO = ' + QuotedStr(prd_codigo) +
                            ' AND  AMX_CODIGO = ' + QuotedStr(cbAlmoxarifado.idRetorno) );
  if saldo < 0 then
  begin
    Aviso('Não há saldo suficiente para este produto no almoxarifado indicado.' +
            #13 + 'Saldo Disponível ' + FormatFloat('###,###,##0,00', saldo)  );
    ModalResult := mrNone;
  end;

end;

procedure TfrmSelecionaAlmoxarifado.cbAlmoxarifadoChange(Sender: TObject);
begin
  inherited;
  if cbAlmoxarifado.CDS.Active then
    edAlmoxarifado.Text := cbAlmoxarifado.CDS.FieldByName('AMX_CODIGO').AsString
  else
    edAlmoxarifado.Clear;
end;

end.
