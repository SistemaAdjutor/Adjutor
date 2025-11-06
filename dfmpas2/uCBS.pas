unit uCBS;

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
  TfrmCBS = class(TfrmBaseDBEditFDAC)
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBTableView1CBS_CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1CBS_DESCRICAO: TcxGridDBColumn;
    cxGrid1DBTableView1CBS_ALIQUOTA: TcxGridDBColumn;
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
  frmCBS: TfrmCBS;

implementation

{$R *.dfm}

procedure TfrmCBS.btnCancelarClick(Sender: TObject);
begin
  inherited;
  cdsEdit.Close;
  Close;
end;

procedure TfrmCBS.btnOkClick(Sender: TObject);
begin
  if cdsEdit.State in [dsEdit, dsInsert] then
    cdsEdit.Post;

  try
    cdsEdit.ApplyUpdates(0);

    // commit real no banco
    if dbConn.InTransaction then
      dbConn.CommitRetaining
    else
      dbConn.Commit;

    cdsEdit.CommitUpdates; // limpa cache local

    // força uma nova transação pro dataset (recarrega dados frescos)
    cdsEdit.Close;
    cdsEdit.Connection := nil;
    dbConn.Connected := False;
    dbConn.Connected := True;
    cdsEdit.Connection := dbConn;
    cdsEdit.Open;
  except
    on E: Exception do
    begin
      if dbConn.InTransaction then
        dbConn.RollbackRetaining;
      cdsEdit.CancelUpdates;
      Application.ShowException(E);
    end;
  end;
end;

procedure TfrmCBS.cdsEditAfterOpen(DataSet: TDataSet);
begin
//  inherited;

end;

procedure TfrmCBS.cdsEditAfterPost(DataSet: TDataSet);
begin
//  inherited;

end;

procedure TfrmCBS.cdsEditBeforePost(DataSet: TDataSet);
begin
//  inherited;
  if DataSet.FieldByName('CBS_ALIQUOTA').IsNull then
  begin
    MessageDlg('O campo "Alíquota" é obrigatório. Informe um valor antes de salvar.',
      mtWarning, [mbOK], 0);
    Abort; // cancela o Post
  end;
end;

procedure TfrmCBS.FormCreate(Sender: TObject);
begin
  inherited;
  self.Width := 900;
  self.Height := 600;
end;

procedure TfrmCBS.FormShow(Sender: TObject);
begin
  inherited;
  cdsEdit.UpdateOptions.KeyFields := 'CBS_ID';
  cdsEdit.UpdateOptions.AutoIncFields := 'CBS_ID';
  cdsEdit.Open;
end;

end.
