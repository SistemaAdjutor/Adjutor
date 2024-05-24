unit uInfoComplFichaTecnica;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBForm, Data.DBXFirebird, Data.FMTBcd, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Data.SqlExpr, Data.DB, ACBrEnterTab, ACBrBase, ACBrCalculadora, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, cxDBEdit, Vcl.Mask, Vcl.DBCtrls, cxMemo, Datasnap.Provider, Datasnap.DBClient,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue;

type
  TfrmInfoComplFichaTecnica = class(TfrmBaseDB)
    tbFicha: TSQLTable;
    Panel1: TPanel;
    Bit_Sair: TBitBtn;
    Bit_Cancelar: TBitBtn;
    Bit_Gravar: TBitBtn;
    tbFichaFTI_TRATAMENTO_TERMICO: TStringField;
    tbFichaFTI_TRATAMENTO_SUPERFICIAL: TStringField;
    tbFichaFTI_TOLERANCIA: TStringField;
    tbFichaFTI_GRAVACAO: TStringField;
    tbFichaFTI_CORTE_COMPRIMENTO: TStringField;
    tbFichaFTI_CORTE_QTDE_METROS: TStringField;
    tbFichaFTI_CORTE_OBSERVACAO: TMemoField;
    tbFichaFTI_USINAGEM_OBSERVACAO: TMemoField;
    tbFichaFTI_PRENSA_TIPO_CABECA: TStringField;
    tbFichaFTI_PRENSA_CHAVE: TStringField;
    tbFichaFTI_PRENSA_ALT_CABECA: TStringField;
    tbFichaFTI_PRENSA_MASSA: TStringField;
    tbFichaFTI_PRENSA_MATRIZ: TStringField;
    tbFichaFTI_PRENSA_PINO: TStringField;
    tbFichaFTI_PRENSA_BUCHA: TStringField;
    tbFichaFTI_PRENSA_CONTRA_BUCHA: TStringField;
    tbFichaFTI_PRENSA_OBSERVACAO: TMemoField;
    tbFichaFTI_LAMINACAO_CAIXA_N: TStringField;
    tbFichaFTI_LAMINACAO_TIPO_ROLO: TStringField;
    tbFichaFTI_LAMINACAO_TIPO_ROSCA: TStringField;
    tbFichaFTI_LAMINACAO_ALT_USINAGEM: TStringField;
    tbFichaFTI_LAMINACAO_COMP_ROSCA: TStringField;
    tbFichaFTI_LAMINACAO_OBSERVACAO: TMemoField;
    dsTbFicha: TDataSource;
    Panel2: TPanel;
    lbReferencia: TLabel;
    lbDescricao: TLabel;
    Panel3: TPanel;
    Label2: TLabel;
    dbFtiTratamentoTermico: TcxDBTextEdit;
    Label4: TLabel;
    dbFtiTratamentoSuperficial: TcxDBTextEdit;
    Label5: TLabel;
    dbFtiTolerancia: TcxDBTextEdit;
    Label6: TLabel;
    dbFtiGravacao: TcxDBTextEdit;
    GroupBox1: TGroupBox;
    tbFichaFTI_CORTE_QUANTIDADE: TStringField;
    Label8: TLabel;
    dbFtiCorteComprimento: TcxDBTextEdit;
    Label9: TLabel;
    dbFtiCorteQtdeMetros: TcxDBTextEdit;
    GroupBox2: TGroupBox;
    dbFtiCorteObservacao: TcxDBMemo;
    GroupBox3: TGroupBox;
    dbFtiUsinagemObservacao: TcxDBMemo;
    GroupBox4: TGroupBox;
    Label10: TLabel;
    dbFtiPrensaTipoCabeca: TcxDBTextEdit;
    Label11: TLabel;
    dbFtiPrensaChave: TcxDBTextEdit;
    Label12: TLabel;
    dbFtiPrensaAltCabeca: TcxDBTextEdit;
    Label13: TLabel;
    dbFtiPrensaMassa: TcxDBTextEdit;
    Label14: TLabel;
    dbFtiPrensaMatriz: TcxDBTextEdit;
    Label15: TLabel;
    dbFtiPrensaPino: TcxDBTextEdit;
    Label16: TLabel;
    dbFtiPrensaBucha: TcxDBTextEdit;
    Label17: TLabel;
    ContraBucha: TcxDBTextEdit;
    tbFichaFTI_PRENSA_CAIXA_N: TStringField;
    Label18: TLabel;
    dbFtiPrensaCaixaN: TcxDBTextEdit;
    GroupBox5: TGroupBox;
    cxDBMemo1: TcxDBMemo;
    Panel4: TPanel;
    GroupBox6: TGroupBox;
    Panel5: TPanel;
    GroupBox7: TGroupBox;
    Label19: TLabel;
    dbFtiLaminacaoCaixaN: TcxDBTextEdit;
    Label20: TLabel;
    dbFtiLaminacaoTipoRolo: TcxDBTextEdit;
    Label21: TLabel;
    dbFtiLaminacaoTipoRosca: TcxDBTextEdit;
    Label22: TLabel;
    dbFtiLaminacaoUsinagem: TcxDBTextEdit;
    Label23: TLabel;
    dbFtiLaminacaoCompRosca: TcxDBTextEdit;
    cxDBMemo2: TcxDBMemo;
    cdsFicha: TClientDataSet;
    dspFicha: TDataSetProvider;
    cdsFichaFTI_TRATAMENTO_TERMICO: TStringField;
    cdsFichaFTI_TRATAMENTO_SUPERFICIAL: TStringField;
    cdsFichaFTI_TOLERANCIA: TStringField;
    cdsFichaFTI_GRAVACAO: TStringField;
    cdsFichaFTI_CORTE_QUANTIDADE: TStringField;
    cdsFichaFTI_CORTE_COMPRIMENTO: TStringField;
    cdsFichaFTI_CORTE_QTDE_METROS: TStringField;
    cdsFichaFTI_CORTE_OBSERVACAO: TMemoField;
    cdsFichaFTI_USINAGEM_OBSERVACAO: TMemoField;
    cdsFichaFTI_PRENSA_TIPO_CABECA: TStringField;
    cdsFichaFTI_PRENSA_CHAVE: TStringField;
    cdsFichaFTI_PRENSA_ALT_CABECA: TStringField;
    cdsFichaFTI_PRENSA_MASSA: TStringField;
    cdsFichaFTI_PRENSA_CAIXA_N: TStringField;
    cdsFichaFTI_PRENSA_MATRIZ: TStringField;
    cdsFichaFTI_PRENSA_PINO: TStringField;
    cdsFichaFTI_PRENSA_BUCHA: TStringField;
    cdsFichaFTI_PRENSA_CONTRA_BUCHA: TStringField;
    cdsFichaFTI_PRENSA_OBSERVACAO: TMemoField;
    cdsFichaFTI_LAMINACAO_CAIXA_N: TStringField;
    cdsFichaFTI_LAMINACAO_TIPO_ROLO: TStringField;
    cdsFichaFTI_LAMINACAO_TIPO_ROSCA: TStringField;
    cdsFichaFTI_LAMINACAO_ALT_USINAGEM: TStringField;
    cdsFichaFTI_LAMINACAO_COMP_ROSCA: TStringField;
    cdsFichaFTI_LAMINACAO_OBSERVACAO: TMemoField;
    tbFichaPRD_REFER_ITENS: TStringField;
    cdsFichaPRD_REFER_ITENS: TStringField;
    lbReferenciaMP: TLabel;
    lbDescricaoMP: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    tbFichaPRD_REFER: TStringField;
    cdsFichaPRD_REFER: TStringField;
    procedure Bit_GravarClick(Sender: TObject);
    procedure Bit_SairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmInfoComplFichaTecnica: TfrmInfoComplFichaTecnica;

implementation

{$R *.dfm}

procedure TfrmInfoComplFichaTecnica.Bit_GravarClick(Sender: TObject);
begin
  inherited;
  cdsFicha.Post;
  cdsFicha.ApplyUpdates(0);
  Close;
end;

procedure TfrmInfoComplFichaTecnica.Bit_SairClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmInfoComplFichaTecnica.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
  frmInfoComplFichaTecnica := nil;
end;

procedure TfrmInfoComplFichaTecnica.FormShow(Sender: TObject);
begin
  inherited;
  Top := 0;
end;

end.
