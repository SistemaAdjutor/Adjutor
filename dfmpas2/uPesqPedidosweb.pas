unit uPesqPedidosweb;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBPesquisaFDAC, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  Data.DB, cxDBData, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Phys.FBDef, FireDAC.UI.Intf, FireDAC.VCLUI.Wait, FireDAC.VCLUI.Error, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.FB, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd,
  dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer,
  dxPScxEditorProducers, dxPScxExtEditorProducers, dxPSCore, ACBrCalculadora, frxClass, Vcl.Menus, FireDAC.Comp.Client, FireDAC.Comp.UI, FireDAC.Phys.IBBase, FireDAC.Comp.DataSet, cxLocalization,
  ACBrBase, ACBrEnterTab, JvExControls, JvArrowButton, Vcl.StdCtrls, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.ComCtrls, dxSkinsCore, dxSkinBlack, dxSkinBlue,
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
  dxSkinXmas2008Blue, cxDataControllerConditionalFormattingRulesManagerDialog;

type
  TfrmPesqPedidosWeb = class(TfrmBaseDBPesquisaFDAC)
    cdsBuscaEMP_CODIGO: TStringField;
    cdsBuscaPEDIDO_ID_EXTERNO: TStringField;
    cdsBuscaCNPJ: TStringField;
    cdsBuscaCOALESCE: TStringField;
    cdsBuscaCLI_CODIGO: TStringField;
    cdsBuscaPED_CODIGO: TStringField;
    cdsBuscaPW_STATUS: TStringField;
    cxgrd1DBTableView1EMP_CODIGO: TcxGridDBColumn;
    cxgrd1DBTableView1PEDIDO_ID_EXTERNO: TcxGridDBColumn;
    cxgrd1DBTableView1CNPJ: TcxGridDBColumn;
    cxgrd1DBTableView1COALESCE: TcxGridDBColumn;
    cxgrd1DBTableView1CLI_CODIGO: TcxGridDBColumn;
    cxgrd1DBTableView1PED_CODIGO: TcxGridDBColumn;
    cxgrd1DBTableView1PW_STATUS: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cdsBuscaPW_STATUSGetText(Sender: TField; var Text: string; DisplayText: Boolean);
  private
    { Private declarations }
  public
    procedure Pesquisa ;
    procedure filtroDetalhe;
  end;

var
  frmPesqPedidosWeb: TfrmPesqPedidosWeb;

implementation

uses InicioDB, Uteis, PesquisaClientesForm ;

{$R *.dfm}

procedure TfrmPesqPedidosWeb.cdsBuscaPW_STATUSGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if Sender.AsString = 'P' then
    Text := 'Pendente'
  else if Sender.AsString = 'A' then
    Text := 'Aprovado'
  else if Sender.asString = 'R' then
    text:= 'Rejeitado';

end;

procedure TfrmPesqPedidosWeb.filtroDetalhe;
begin

end;

procedure TfrmPesqPedidosWeb.FormCreate(Sender: TObject);
begin
  inherited;
  Self.ProcedureFiltro := Pesquisa;
//  self.ProcedureFiltroDetalhe := filtroDetalhe;
  self.Constraints.MinHeight:= 612;;
  self.Constraints.MinWidth:=1175;
  self.Constraints.MaxHeight:= 0;
  self.width:=1175;
  self.height:=612;
  Menu := 'ComercialPedido Web';
  filtro;
  self.CampoID := 'PW_REGISTRO';


end;

procedure TfrmPesqPedidosWeb.FormDestroy(Sender: TObject);
begin
  inherited;
  frmPesqPedidosWeb := nil;
end;

procedure TfrmPesqPedidosWeb.FormShow(Sender: TObject);
begin
  inherited;
  WindowState := wsMaximized;
end;

procedure TfrmPesqPedidosWeb.Pesquisa;
var sqltext : string;
begin
  with cdsBusca,sql do
  begin

    sqltext :=  'SELECT pw.EMP_CODIGO,PEDIDO_ID_EXTERNO, COALESCE(CL.CLI_CGC , PW_CLI_CNPJ) CNPJ,    '+
                '  COALESCE(CL.CLI_RAZAO, PW_CLI_NOME), PW.CLI_CODIGO, PW.PED_CODIGO,  PW_STATUS     '+
                '   FROM PEDIDO_WEB pw                                                               '+
                '  LEFT JOIN cli0000 cl on cl.CLI_CODIGO = pw.cli_codigo                             ';


    cdsBusca.SQL.Text := sqltext;


  end;

end;

end.
