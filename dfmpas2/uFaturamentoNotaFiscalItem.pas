unit uFaturamentoNotaFiscalItem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask,  rxToolEdit,  rxCurrEdit, ComCtrls, Grids, DBGrids, ExtCtrls,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, StdCtrls, ComboBoxRw,
  Buttons, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, Data.DB,
  SgDbSeachComboUnit;

type
  TFrmFaturamentoNovoNotaFiscalItem = class(TForm)
    GbBuscal: TGroupBox;
    spCliente: TSpeedButton;
    RbReferencia: TRadioButton;
    RbDescricao: TRadioButton;
    RbOriginal: TRadioButton;
    RbBarras: TRadioButton;
    EdProdutoPesquisa: TEdit;
    rbCodigoFornecedor: TRadioButton;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label15: TLabel;
    Label1: TLabel;
    SdCadastroGrade: TSpeedButton;
    LblLote: TLabel;
    MemoDescricao: TMemo;
    MemoComplemento: TMemo;
    EdReferencia: TEdit;
    CbGrade: TComboBoxRw;
    CbLoteProduto: TcxLookupComboBox;
    Panel1: TPanel;
    ImgProduto: TImage;
    PGradeProduto: TPanel;
    DbGradeProdutoPesquisa: TDBGrid;
    pgc1: TPageControl;
    TabSheet1: TTabSheet;
    tsICMS: TTabSheet;
    tsExportao: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    GroupBox2: TGroupBox;
    Label4: TLabel;
    CurTotalProduto: TCurrencyEdit;
    CurrencyEdit1: TCurrencyEdit;
    Label5: TLabel;
    CurrencyEdit2: TCurrencyEdit;
    Label6: TLabel;
    CbOper: TComboBox;
    CurrOpeNat: TCurrencyEdit;
    Label7: TLabel;
    Bit_Gravar: TBitBtn;
    Bit_Cancelar: TBitBtn;
    procedure Bit_CancelarClick(Sender: tObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFaturamentoNovoNotaFiscalItem: TFrmFaturamentoNovoNotaFiscalItem;

implementation

{$R *.dfm}

procedure TFrmFaturamentoNovoNotaFiscalItem.Bit_CancelarClick(
  Sender: tObject);
begin
   Close;
end;

end.
