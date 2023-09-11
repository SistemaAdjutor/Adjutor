unit uConfirmaDemanda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBEditFormFDAC, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Phys.FBDef, FireDAC.UI.Intf, FireDAC.VCLUI.Wait, FireDAC.VCLUI.Error, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.FB, JvErrorIndicator,
  JvValidators, JvComponentBase, Data.DB, FireDAC.Comp.Client, FireDAC.Comp.UI, FireDAC.Phys.IBBase, FireDAC.Comp.DataSet, cxClasses, cxLocalization, ACBrBase, ACBrEnterTab, Vcl.Buttons, Vcl.ExtCtrls,
  Datasnap.DBClient, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxGridCustomView, cxGrid;

type
  TfrmConfirmaDemanda = class(TfrmBaseDBEditFDAC)
    FDMemTable1: TFDMemTable;
    cdsEditREGISTRO_SEQ: TFMTBCDField;
    cdsEditPRD_CODIGO: TStringField;
    cdsEditITT_REGISTRO: TIntegerField;
    cdsEditPRF_TABPRECO: TStringField;
    cdsEditPRDL_REGISTRO: TIntegerField;
    cdsEditAMX_CODIGO_DESTINO: TStringField;
    cdsEditPED_CODIGO: TStringField;
    cdsEditPRF_REGISTRO: TIntegerField;
    cdsEditPRD_REFER: TStringField;
    cdsEditPRDD_SIGLA: TStringField;
    cdsEditDESCRICAO: TStringField;
    cdsEditPRF_QTDE: TFMTBCDField;
    cdsEditPRD_DESCRI: TStringField;
    cdsEditPRDD_REGISTRO: TIntegerField;
    cdsEditPRDCO_CODIGO_ORIGINAL: TStringField;
    cdsEditPRD_UND: TStringField;
    cdsEditPRF_PRODUTO_AGREGADO: TStringField;
    cdsEditPRG_REGISTRO: TIntegerField;
    cdsEditPRF_COMPL_DESCRI: TStringField;
    cdsEditAMX_CODIGO_DESTINO_1: TStringField;
    cdsEditPRF_IDESCTO1: TFloatField;
    cdsEditPRF_IDESCTO2: TFloatField;
    cdsEditPRF_VALOR_ST: TFMTBCDField;
    cdsEditPRF_QTDEFAT: TFMTBCDField;
    cdsEditPRF_ACRESCIMO: TBCDField;
    cdsEditPRF_PRECO_BRUTO: TFMTBCDField;
    cdsEditDESCONTO: TFMTBCDField;
    cdsEditPRF_PRECO: TFMTBCDField;
    cdsEditPRF_CUSTO: TFMTBCDField;
    cdsEditMARKUP: TBCDField;
    cdsEditTOTAL: TFMTBCDField;
    cdsEditQTDEKIT: TFMTBCDField;
    cdsEditPRF_IPIALIQ: TFMTBCDField;
    cdsEditPRF_ITEMCOMIS: TFMTBCDField;
    cdsEditPRF_B2B_PEDIDO_COMPRA: TStringField;
    cdsEditPRF_B2B_ITEM_PEDIDO_COMPRA: TIntegerField;
    cdsEditDI: TStringField;
    cdsEditPRD_PESOLIQ: TFMTBCDField;
    cdsEditPRD_PESOKG: TFMTBCDField;
    cdsEditPRD_ORIGEM: TIntegerField;
    cdsEditPRF_QTDE_ENV_PRODUCAO: TFMTBCDField;
    cdsEditPRG_DESCRICAO: TStringField;
    cdsEditPTI_SIGLA: TStringField;
    cdsEditPRD_PRODSERV: TStringField;
    cdsEditID_DIRETIVAS: TIntegerField;
    cdsEditUSOU_VERBA: TStringField;
    cdsEditVALOR_VERBA: TFMTBCDField;
    cdsEditPRF_REGISTRO_VINCULADO: TIntegerField;
    cdsEditNCM_CODIGO: TStringField;
    cdsEditPRF_PRAZO_DIAS: TIntegerField;
    cdsEditPRF_PESOKG: TFMTBCDField;
    cdsEditPRF_MARGEM_PRODUTO: TFMTBCDField;
    cdsEditPRF_ICMSALIQ: TFMTBCDField;
    cdsEditPRF_VALOR_ICMS: TFMTBCDField;
    cdsEditPRF_QTDEPEND: TFMTBCDField;
    cdsEditPRF_PRODUTO_SEMVALOR: TStringField;
    cdsEditKIT_VIRTUAL: TIntegerField;
    cdsEditPED_TIPOPECA_TERM: TStringField;
    cdsEditPED_MATERIAL_TERM: TStringField;
    cdsEditPED_DUREZASUPERFICIAL_TERM: TStringField;
    cdsEditPED_DUREZANUCLEO_TERM: TStringField;
    cdsEditPED_PROFUNDIDADE_TERM: TStringField;
    cdsEditPED_TAMANHOGRAO_TERM: TStringField;
    cdsEditPED_EHT_TERM: TStringField;
    cdsEditPED_DESENHO_TERM: TStringField;
    cdsEditPRF_QUANT_TRIB: TFMTBCDField;
    cdsEditPRD_UND_TRIB: TStringField;
    FDMemTable1REGISTRO_SEQ: TFMTBCDField;
    FDMemTable1PRD_CODIGO: TStringField;
    FDMemTable1ITT_REGISTRO: TIntegerField;
    FDMemTable1PRF_TABPRECO: TStringField;
    FDMemTable1PRDL_REGISTRO: TIntegerField;
    FDMemTable1AMX_CODIGO_DESTINO: TStringField;
    FDMemTable1PED_CODIGO: TStringField;
    FDMemTable1PRF_REGISTRO: TIntegerField;
    FDMemTable1PRD_REFER: TStringField;
    FDMemTable1PRDD_SIGLA: TStringField;
    FDMemTable1DESCRICAO: TStringField;
    FDMemTable1PRF_QTDE: TFMTBCDField;
    FDMemTable1PRD_DESCRI: TStringField;
    FDMemTable1PRDD_REGISTRO: TIntegerField;
    FDMemTable1PRDCO_CODIGO_ORIGINAL: TStringField;
    FDMemTable1PRD_UND: TStringField;
    FDMemTable1PRF_PRODUTO_AGREGADO: TStringField;
    FDMemTable1PRG_REGISTRO: TIntegerField;
    FDMemTable1PRF_COMPL_DESCRI: TStringField;
    FDMemTable1AMX_CODIGO_DESTINO_1: TStringField;
    FDMemTable1PRF_IDESCTO1: TFloatField;
    FDMemTable1PRF_IDESCTO2: TFloatField;
    FDMemTable1PRF_VALOR_ST: TFMTBCDField;
    FDMemTable1PRF_QTDEFAT: TFMTBCDField;
    FDMemTable1PRF_ACRESCIMO: TBCDField;
    FDMemTable1PRF_PRECO_BRUTO: TFMTBCDField;
    FDMemTable1DESCONTO: TFMTBCDField;
    FDMemTable1PRF_PRECO: TFMTBCDField;
    FDMemTable1PRF_CUSTO: TFMTBCDField;
    FDMemTable1MARKUP: TBCDField;
    FDMemTable1TOTAL: TFMTBCDField;
    FDMemTable1QTDEKIT: TFMTBCDField;
    FDMemTable1PRF_IPIALIQ: TFMTBCDField;
    FDMemTable1PRF_ITEMCOMIS: TFMTBCDField;
    FDMemTable1PRF_B2B_PEDIDO_COMPRA: TStringField;
    FDMemTable1PRF_B2B_ITEM_PEDIDO_COMPRA: TIntegerField;
    FDMemTable1DI: TStringField;
    FDMemTable1PRD_PESOLIQ: TFMTBCDField;
    FDMemTable1PRD_PESOKG: TFMTBCDField;
    FDMemTable1PRD_ORIGEM: TIntegerField;
    FDMemTable1PRF_QTDE_ENV_PRODUCAO: TFMTBCDField;
    FDMemTable1PRG_DESCRICAO: TStringField;
    FDMemTable1PTI_SIGLA: TStringField;
    FDMemTable1PRD_PRODSERV: TStringField;
    FDMemTable1ID_DIRETIVAS: TIntegerField;
    FDMemTable1USOU_VERBA: TStringField;
    FDMemTable1VALOR_VERBA: TFMTBCDField;
    FDMemTable1PRF_REGISTRO_VINCULADO: TIntegerField;
    FDMemTable1NCM_CODIGO: TStringField;
    FDMemTable1PRF_PRAZO_DIAS: TIntegerField;
    FDMemTable1PRF_PESOKG: TFMTBCDField;
    FDMemTable1PRF_MARGEM_PRODUTO: TFMTBCDField;
    FDMemTable1PRF_ICMSALIQ: TFMTBCDField;
    FDMemTable1PRF_VALOR_ICMS: TFMTBCDField;
    FDMemTable1PRF_QTDEPEND: TFMTBCDField;
    FDMemTable1PRF_PRODUTO_SEMVALOR: TStringField;
    FDMemTable1KIT_VIRTUAL: TIntegerField;
    FDMemTable1PED_TIPOPECA_TERM: TStringField;
    FDMemTable1PED_MATERIAL_TERM: TStringField;
    FDMemTable1PED_DUREZASUPERFICIAL_TERM: TStringField;
    FDMemTable1PED_DUREZANUCLEO_TERM: TStringField;
    FDMemTable1PED_PROFUNDIDADE_TERM: TStringField;
    FDMemTable1PED_TAMANHOGRAO_TERM: TStringField;
    FDMemTable1PED_EHT_TERM: TStringField;
    FDMemTable1PED_DESENHO_TERM: TStringField;
    FDMemTable1PRF_QUANT_TRIB: TFMTBCDField;
    FDMemTable1PRD_UND_TRIB: TStringField;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dsItens: TDataSource;
    cxGrid1DBTableView1REGISTRO_SEQ: TcxGridDBColumn;
    cxGrid1DBTableView1PRD_CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1ITT_REGISTRO: TcxGridDBColumn;
    cxGrid1DBTableView1PRF_TABPRECO: TcxGridDBColumn;
    cxGrid1DBTableView1PRDL_REGISTRO: TcxGridDBColumn;
    cxGrid1DBTableView1AMX_CODIGO_DESTINO: TcxGridDBColumn;
    cxGrid1DBTableView1PED_CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1PRF_REGISTRO: TcxGridDBColumn;
    cxGrid1DBTableView1PRD_REFER: TcxGridDBColumn;
    cxGrid1DBTableView1PRDD_SIGLA: TcxGridDBColumn;
    cxGrid1DBTableView1DESCRICAO: TcxGridDBColumn;
    cxGrid1DBTableView1PRF_QTDE: TcxGridDBColumn;
    cxGrid1DBTableView1PRD_DESCRI: TcxGridDBColumn;
    cxGrid1DBTableView1PRDD_REGISTRO: TcxGridDBColumn;
    cxGrid1DBTableView1PRDCO_CODIGO_ORIGINAL: TcxGridDBColumn;
    cxGrid1DBTableView1PRD_UND: TcxGridDBColumn;
    cxGrid1DBTableView1PRF_PRODUTO_AGREGADO: TcxGridDBColumn;
    cxGrid1DBTableView1PRG_REGISTRO: TcxGridDBColumn;
    cxGrid1DBTableView1PRF_COMPL_DESCRI: TcxGridDBColumn;
    cxGrid1DBTableView1PRF_IDESCTO1: TcxGridDBColumn;
    cxGrid1DBTableView1PRF_IDESCTO2: TcxGridDBColumn;
    cxGrid1DBTableView1PRF_VALOR_ST: TcxGridDBColumn;
    cxGrid1DBTableView1PRF_QTDEFAT: TcxGridDBColumn;
    cxGrid1DBTableView1PRF_ACRESCIMO: TcxGridDBColumn;
    cxGrid1DBTableView1PRF_PRECO_BRUTO: TcxGridDBColumn;
    cxGrid1DBTableView1DESCONTO: TcxGridDBColumn;
    cxGrid1DBTableView1PRF_PRECO: TcxGridDBColumn;
    cxGrid1DBTableView1PRF_CUSTO: TcxGridDBColumn;
    cxGrid1DBTableView1MARKUP: TcxGridDBColumn;
    cxGrid1DBTableView1TOTAL: TcxGridDBColumn;
    cxGrid1DBTableView1QTDEKIT: TcxGridDBColumn;
    cxGrid1DBTableView1PRF_IPIALIQ: TcxGridDBColumn;
    cxGrid1DBTableView1PRF_ITEMCOMIS: TcxGridDBColumn;
    cxGrid1DBTableView1PRF_B2B_PEDIDO_COMPRA: TcxGridDBColumn;
    cxGrid1DBTableView1PRF_B2B_ITEM_PEDIDO_COMPRA: TcxGridDBColumn;
    cxGrid1DBTableView1DI: TcxGridDBColumn;
    cxGrid1DBTableView1PRD_PESOLIQ: TcxGridDBColumn;
    cxGrid1DBTableView1PRD_PESOKG: TcxGridDBColumn;
    cxGrid1DBTableView1PRD_ORIGEM: TcxGridDBColumn;
    cxGrid1DBTableView1PRF_QTDE_ENV_PRODUCAO: TcxGridDBColumn;
    cxGrid1DBTableView1PRG_DESCRICAO: TcxGridDBColumn;
    cxGrid1DBTableView1PTI_SIGLA: TcxGridDBColumn;
    cxGrid1DBTableView1PRD_PRODSERV: TcxGridDBColumn;
    cxGrid1DBTableView1ID_DIRETIVAS: TcxGridDBColumn;
    cxGrid1DBTableView1USOU_VERBA: TcxGridDBColumn;
    cxGrid1DBTableView1VALOR_VERBA: TcxGridDBColumn;
    cxGrid1DBTableView1PRF_REGISTRO_VINCULADO: TcxGridDBColumn;
    cxGrid1DBTableView1NCM_CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1PRF_PRAZO_DIAS: TcxGridDBColumn;
    cxGrid1DBTableView1PRF_PESOKG: TcxGridDBColumn;
    cxGrid1DBTableView1PRF_MARGEM_PRODUTO: TcxGridDBColumn;
    cxGrid1DBTableView1PRF_ICMSALIQ: TcxGridDBColumn;
    cxGrid1DBTableView1PRF_VALOR_ICMS: TcxGridDBColumn;
    cxGrid1DBTableView1PRF_QTDEPEND: TcxGridDBColumn;
    cxGrid1DBTableView1PRF_PRODUTO_SEMVALOR: TcxGridDBColumn;
    cxGrid1DBTableView1KIT_VIRTUAL: TcxGridDBColumn;
    cxGrid1DBTableView1PED_TIPOPECA_TERM: TcxGridDBColumn;
    cxGrid1DBTableView1PED_MATERIAL_TERM: TcxGridDBColumn;
    cxGrid1DBTableView1PED_DUREZASUPERFICIAL_TERM: TcxGridDBColumn;
    cxGrid1DBTableView1PED_DUREZANUCLEO_TERM: TcxGridDBColumn;
    cxGrid1DBTableView1PED_PROFUNDIDADE_TERM: TcxGridDBColumn;
    cxGrid1DBTableView1PED_TAMANHOGRAO_TERM: TcxGridDBColumn;
    cxGrid1DBTableView1PED_EHT_TERM: TcxGridDBColumn;
    cxGrid1DBTableView1PED_DESENHO_TERM: TcxGridDBColumn;
    cxGrid1DBTableView1PRF_QUANT_TRIB: TcxGridDBColumn;
    cxGrid1DBTableView1PRD_UND_TRIB: TcxGridDBColumn;
    FDMemTable1Tipo: TStringField;
    cxGrid1DBTableView1Tipo: TcxGridDBColumn;
    procedure btnOkClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FDMemTable1CalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConfirmaDemanda: TfrmConfirmaDemanda;



implementation

uses uteis, iniciodb;
{$R *.dfm}

procedure TfrmConfirmaDemanda.btnCancelarClick(Sender: TObject);
begin
  //inherited;
  ModalResult := mrCancel;
end;

procedure TfrmConfirmaDemanda.btnOkClick(Sender: TObject);
begin
  //inherited;
  ModalResult := mrOk;
end;

procedure TfrmConfirmaDemanda.FDMemTable1CalcFields(DataSet: TDataSet);
begin
  inherited;
  OpenAux2('SELECT prd_envase FROM PRD0000 WHERE PRD_CODIGO = '+QuotedStr( DataSet.FieldByName('PRD_CODIGO').AsString));
  if qAux2.FieldByName('PRD_ENVASE').AsString = 'S' then
    DataSet.FieldByName('TIPO').AsString := 'Envase'
  else
    DataSet.FieldByName('TIPO').AsString := 'Demanda';

end;

procedure TfrmConfirmaDemanda.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  action:= caFree;
end;

procedure TfrmConfirmaDemanda.FormDestroy(Sender: TObject);
begin
  inherited;
   frmConfirmaDemanda := nil;
end;

procedure TfrmConfirmaDemanda.FormKeyPress(Sender: TObject; var Key: Char);
begin
 // inherited;
  if key = #13 then
    btnok.Click
end;

procedure TfrmConfirmaDemanda.FormShow(Sender: TObject);
begin
  self.Width := 692;
  Self.Constraints.MinWidth := 692;
  inherited;
  if aCaption = '' then
    self.Caption := 'Confirma o envio dos produtos a demanda';
  FDMemTable1PRF_QTDE.DisplayFormat :='###,###,##0.'+ StrZero('0', dbInicio.Empresa.fPMT_QTDE_DEC_PED);

end;

end.
