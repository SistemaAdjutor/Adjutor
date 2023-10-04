unit uSimulacaoPrecoServico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBFormFdac, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Phys.FBDef, FireDAC.UI.Intf, FireDAC.VCLUI.Wait, FireDAC.VCLUI.Error, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Comp.Client, Data.DB, FireDAC.Comp.UI, FireDAC.Phys.IBBase, FireDAC.Comp.DataSet, cxClasses, cxLocalization, ACBrBase, ACBrEnterTab, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridCustomView, cxGrid, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, JvExStdCtrls, JvEdit, JvValidateEdit, cxContainer, cxTextEdit, cxCurrencyEdit,
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
  TfrmSimularPrecoServicos = class(TfrmBaseDBFDAC)
    Panel1: TPanel;
    cxgrd1: TcxGrid;
    cxgrd1DBTableView1: TcxGridDBTableView;
    cxgrd1DBTableView1CIO_MES: TcxGridDBColumn;
    cxgrd1DBTableView1CIO_ANO: TcxGridDBColumn;
    cxgrd1DBTableView2: TcxGridDBTableView;
    cxgrd1DBTableView2SRV_CODIGO: TcxGridDBColumn;
    cxgrd1DBTableView2SRV_NOME: TcxGridDBColumn;
    cxgrd1DBTableView2CIO_CUSTOS: TcxGridDBColumn;
    cxgrd1DBTableView2CIO_DESPESAS: TcxGridDBColumn;
    cxgrd1DBTableView2CIO_IMPOSTOS: TcxGridDBColumn;
    cxgrd1DBTableView2CIO_MKP: TcxGridDBColumn;
    cxgrd1DBTableView2CIO_REPORTE: TcxGridDBColumn;
    cxgrd1DBTableView2CIO_PV: TcxGridDBColumn;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    qSetor: TFDQuery;
    dsServicos: TDataSource;
    qSetorCIO_ANO: TIntegerField;
    qSetorCIO_MES: TIntegerField;
    qSetorCIO_CODIGO: TIntegerField;
    qSetorEMP_CODIGO: TStringField;
    qSetorSRV_CODIGO: TIntegerField;
    qSetorCIO_IMPOSTOS: TBCDField;
    qSetorCIO_MKP: TBCDField;
    qSetorCIO_REPORTE: TBCDField;
    qSetorCIO_PV: TBCDField;
    cxgrd1DBTableView2PontoEquilibrio: TcxGridDBColumn;
    Panel2: TPanel;
    Splitter1: TSplitter;
    DBGrid1: TDBGrid;
    qSetorTotalServ: TFMTBCDField;
    qSetorPeso: TFMTBCDField;
    qSetorHorasTrabalhadas: TStringField;
    qSetorTotal: TAggregateField;
    qSetorCustoTotal: TFMTBCDField;
    qSetorCustoPeso: TFMTBCDField;
    qSetorSET_DESCRICAO: TStringField;
    qSetorPE: TFMTBCDField;
    qSetorSET_CODIGO: TIntegerField;
    GroupBox2: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    edCusto: TDBEdit;
    EdPrecoPraticao: TcxCurrencyEdit;
    edLucro: TcxCurrencyEdit;
    pGravar: TPanel;
    qsimulado: TFDQuery;
    qsimuladoSPR_CODIGO: TIntegerField;
    qsimuladoOIP_CODIGO: TIntegerField;
    qsimuladoSET_CODIGO: TIntegerField;
    qsimuladoSPR_HORASTRAB: TBCDField;
    qsimuladoSPR_PESO: TBCDField;
    qsimuladoSPR_VALORTOTAL: TIntegerField;
    qsimuladoSPR_DATASIMULACAO: TSQLTimeStampField;
    qSetorCIO_CUSTOS: TBCDField;
    qSetorCIO_DESPESAS: TBCDField;
    FlowPanel1: TFlowPanel;
    procedure qSetorHorasTrabalhadasChange(Sender: TField);
    procedure qSetorCalcFields(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure EdPrecoPraticaoExit(Sender: TObject);
    procedure edLucroExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    fpeso : double;
    foip_codigo : integer;
  public
    property Peso : double read fpeso write fpeso;
    property oip_CODIGO: integer read foip_codigo write foip_codigo;
  end;

var
  frmSimularPrecoServicos: TfrmSimularPrecoServicos;

implementation

uses uteis, rwfunc;
{$R *.dfm}

procedure TfrmSimularPrecoServicos.edLucroExit(Sender: TObject);
begin
  inherited;
  if (edLucro.Value > 0) and (edCusto.Text <> '') then
    EdPrecoPraticao.Value := RoundTo(  qSetorTotal.Value * (1.00+ (edLucro.Value/100))  ,-2);
end;

procedure TfrmSimularPrecoServicos.EdPrecoPraticaoExit(Sender: TObject);
begin
  inherited;
  if (EdPrecoPraticao.Value >0 ) and (edCusto.Text <> '') then
    edLucro.Value :=  (RoundTo( EdPrecoPraticao.Value / qSetorTotal.Value ,-4) -1 )*100 ;
end;

procedure TfrmSimularPrecoServicos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  qsetor.Close;
  Action:= caFree;
end;

procedure TfrmSimularPrecoServicos.FormDestroy(Sender: TObject);
begin
  inherited;
  frmSimularPrecoServicos := nil;
end;

procedure TfrmSimularPrecoServicos.FormShow(Sender: TObject);
var ano, mes, dia : word;
  I: Integer;
begin
  inherited;
  qsetor.Close;
  DecodeDate(date,ano,mes,dia);
  qSetor.ParamByName('ano').AsInteger := ano;
  qSetor.ParamByName('mes').AsInteger := mes;
  qsetor.Open;// select no componente
  if oip_CODIGO > 0  then
  begin
    qsimulado.Close;
    qsimulado.Params[0].Value := oip_CODIGO;
    qsimulado.Open;

  end;

end;

procedure TfrmSimularPrecoServicos.qSetorCalcFields(DataSet: TDataSet);
begin
  inherited;
  qSetorCustoTotal.AsFloat :=  qSetorCIO_CUSTOS.AsFloat ;//+ qSetorCIO_DESPESAS.AsFloat + qSetorCIO_IMPOSTOS.AsFloat;

end;

procedure TfrmSimularPrecoServicos.qSetorHorasTrabalhadasChange(Sender: TField);
var hora, min, seg : Integer;
   horatrabalhadas : Real;
begin
  inherited;
  if (qSetorPeso.AsFloat > 0) AND (qSetorHorasTrabalhadas.AsString <> '00:00') AND (qSetorHorasTrabalhadas.AsString <> '  :  ')  then
  begin
     if Copy(qSetorHorasTrabalhadas.AsString, 1, 2) = '  ' then
     begin
       MessageDlg('Favor entrar com a quantidade correta de horas', mtError, [mbOK] ,0 );
       exit;
     end;
     if (Copy(qSetorHorasTrabalhadas.AsString, 4, 2) = '  ') or (Copy(qSetorHorasTrabalhadas.AsString, 4, 2) > '59' ) then
     begin
       MessageDlg('Favor entrar com a quantidade correta de minutos', mtError, [mbOK] ,0 );
       exit;
     end;

     // DecodeTime(qSetorHorasTrabalhadas.AsDateTime,hora, min, seg,seg );
     hora := StrToInt(Copy(qSetorHorasTrabalhadas.AsString, 1, 2));
     min := StrToInt(Copy(qSetorHorasTrabalhadas.AsString, 4, 2));
     if min = 0  then
        horatrabalhadas := hora
     else
       horatrabalhadas := hora + (min/60);
     qSetorTotalServ.AsFloat :=   qSetorCIO_PV.AsFloat * horatrabalhadas /  qSetorPeso.AsFloat;
     if qSetorCustoTotal.AsFloat > 0  then
       qSetorCustoPeso.AsFloat :=  qSetorCustoTotal.AsFloat * horatrabalhadas /  qSetorPeso.AsFloat;
  end
  else
  begin
     qSetorTotalServ.AsFloat := 0;
  end;
end;

end.
