unit uIBS;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBEditFormFDAC, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Phys.FBDef, FireDAC.UI.Intf, FireDAC.VCLUI.Wait, FireDAC.VCLUI.Error,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.FB,
  JvErrorIndicator, JvValidators, JvComponentBase, Data.DB, FireDAC.Comp.Client,
  FireDAC.Comp.UI, FireDAC.Phys.IBBase, FireDAC.Comp.DataSet, cxClasses,
  cxLocalization, ACBrBase, ACBrEnterTab, Vcl.Buttons, Vcl.ExtCtrls, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid;

type
  TfrmIBS = class(TfrmBaseDBEditFDAC)
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1IBS_CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1IBS_DESCRICAO: TcxGridDBColumn;
    cxGrid1DBTableView1IBS_ALIQUOTA: TcxGridDBColumn;
    cxGrid1DBTableView1CID_CODIGO: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    procedure FormCreate(Sender: TObject);
    procedure cdsEditAfterOpen(DataSet: TDataSet);
    procedure cdsEditAfterPost(DataSet: TDataSet);
    procedure cdsEditBeforePost(DataSet: TDataSet);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmIBS: TfrmIBS;

implementation

{$R *.dfm}

procedure TfrmIBS.btnCancelarClick(Sender: TObject);
begin
  inherited;
  cdsEdit.Close;
  Close;
end;

procedure TfrmIBS.btnOkClick(Sender: TObject);
begin
//  inherited;
  if cdsEdit.State in [dsEdit, dsInsert] then
    cdsEdit.Post;
end;

procedure TfrmIBS.cdsEditAfterOpen(DataSet: TDataSet);
begin
  // inherited;

end;

procedure TfrmIBS.cdsEditAfterPost(DataSet: TDataSet);
begin
//  inherited;

end;

procedure TfrmIBS.cdsEditBeforePost(DataSet: TDataSet);
begin
//  inherited;

end;

procedure TfrmIBS.FormCreate(Sender: TObject);
begin
  inherited;
  self.Width := 800;
  self.Height := 600;
end;

procedure TfrmIBS.FormShow(Sender: TObject);
begin
  inherited;
  cdsEdit.UpdateOptions.KeyFields := 'IBS_ID';
  cdsEdit.UpdateOptions.AutoIncFields := 'IBS_ID';
  cdsEdit.Open;
end;

end.
