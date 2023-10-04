unit uedParamQualidade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBEditFormFDAC, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Phys.FBDef, FireDAC.UI.Intf, FireDAC.VCLUI.Wait, FireDAC.VCLUI.Error, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.FB, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxDBLookupComboBox, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, JvErrorIndicator, JvValidators, JvComponentBase, FireDAC.Comp.Client, FireDAC.Comp.UI,
  FireDAC.Phys.IBBase, FireDAC.Comp.DataSet, cxLocalization, ACBrBase, ACBrEnterTab, Vcl.Buttons, Vcl.ExtCtrls, Vcl.StdCtrls,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue,
  cxDataControllerConditionalFormattingRulesManagerDialog;

type
  TfrmParametrosQualidade = class(TfrmBaseDBEditFDAC)
    cdsEditEOP_CODIGO: TIntegerField;
    cdsEditEOP_SEQ: TIntegerField;
    cdsEditOPE_CODIGO: TIntegerField;
    cdsEditEOP_NOME: TStringField;
    cdsEditEOP_DESCRICAO: TStringField;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    poperacoes: TPanel;
    cxGrid1DBTableView1EOP_SEQ: TcxGridDBColumn;
    cxGrid1DBTableView1EOP_NOME: TcxGridDBColumn;
    cxGrid1DBTableView1EOP_DESCRICAO: TcxGridDBColumn;
    cdsEditOPE_NOME: TStringField;
    btnAscII: TButton;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cdsEditNewRecord(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure btnAscIIClick(Sender: TObject);
  private
    foperacoes : string;
    sequencia : integer;
  public
    function AbreTela: boolean;
    property CodOperacoes : string read foperacoes write foperacoes;

  end;

var
  frmParametrosQualidade: TfrmParametrosQualidade;

implementation

uses iniciodb, uteis, uascii;
{$R *.dfm}

function TfrmParametrosQualidade.AbreTela:boolean;
begin
  if Trim(CodOperacoes) <> '' then
  begin
    ConfigBotoes(3);
    EstadoTela := teEdicao;
    aCaption := 'Parametros de qualidade';
    ReadOnly := false;
    CdsEdit.DisableControls;
    CdsEdit.close;
    cdsEdit.Params[0].Value := CodOperacoes;
    CdsEdit.open;
    CdsEdit.EnableControls;
    self.ShowModal;
    Result := (self.ModalResult = mrOk);
  end;
end;

procedure TfrmParametrosQualidade.btnAscIIClick(Sender: TObject);
begin
  inherited;
  if not assigned (frmAscII) then
    frmAscII := TfrmAscII.Create(Application);
 frmAscII.ShowModal;
end;

procedure TfrmParametrosQualidade.cdsEditNewRecord(DataSet: TDataSet);
begin
  inherited;
  try
    inc(sequencia);

    cdsEditEOP_SEQ.AsInteger := sequencia;
    cdsEditOPE_CODIGO.AsInteger := StrToInt(CodOperacoes);
  except
   Dec(sequencia);
  end;
end;

procedure TfrmParametrosQualidade.FormCreate(Sender: TObject);
begin
  inherited;
	CampoID:='EOP_CODIGO';
	Tabela:='MODL_ESPECIFICACOES_OPERACAO';
  CampoIDRetorno := 'OPE_CODIGO';
  self.Constraints.MinHeight:= 489;
  self.Constraints.MinWidth:=919;
//  self.Constraints.MaxHeight:= 0;
  TemDetalhe := False;
//  cdsOperacoes.Open('select ope_codigo,ope_nome, ope_Descricao,emp_codigo from operacoes '+
//                   ConcatSe(' where ',dbinicio.ExclusivoSql('ORDEMPRODUCAO')   ));

end;

procedure TfrmParametrosQualidade.FormDestroy(Sender: TObject);
begin
  inherited;
  frmParametrosQualidade := nil;
end;

procedure TfrmParametrosQualidade.FormShow(Sender: TObject);
begin
  inherited;
  if cdsEdit.Active   then
    sequencia := cdsEdit.RecordCount;


end;

end.
