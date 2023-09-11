unit uEmpenharLote;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBEditFormFDAC, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Phys.FBDef, FireDAC.UI.Intf, FireDAC.VCLUI.Wait, FireDAC.VCLUI.Error, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.FB, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxDBLookupComboBox, Vcl.StdCtrls, Vcl.Mask,
  JvExMask, JvToolEdit, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid, JvErrorIndicator, JvValidators, JvComponentBase,
  FireDAC.Comp.Client, FireDAC.Comp.UI, FireDAC.Phys.IBBase, FireDAC.Comp.DataSet, cxLocalization, ACBrBase, ACBrEnterTab, Vcl.Buttons, Vcl.ExtCtrls, Datasnap.DBClient, System.Actions, Vcl.ActnList,
  cxEditRepositoryItems, cxButtonEdit, uProducaoDAO;

type
  TfrmEmpenharLote = class(TfrmBaseDBEditFDAC)
    cdsEditData: TDateField;
    cdsEditPRDL_REGISTRO: TIntegerField;
    cdsEditQuantidade: TFloatField;
    cdsEditSaldo: TFloatField;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1Data: TcxGridDBColumn;
    cxGrid1DBTableView1PRDL_REGISTRO: TcxGridDBColumn;
    cxGrid1DBTableView1Quantidade: TcxGridDBColumn;
    cxGrid1DBTableView1Saldo: TcxGridDBColumn;
    qLote: TFDQuery;
    DataPadrao: TJvDateEdit;
    dsLote: TDataSource;
    cdsEmpenho: TClientDataSet;
    cdsEmpenhoData: TDateField;
    cdsEmpenhoPRDL_REGISTRO: TIntegerField;
    cdsEmpenhoQuantidade: TFloatField;
    cdsEmpenhoSaldo: TFloatField;
    qLotePRDL_REGISTRO: TIntegerField;
    qLoteEMP_CODIGO: TStringField;
    qLotePRDL_DATA_FABRICACAO: TDateField;
    qLotePRDL_DATA_VALIDADE: TDateField;
    qLotePRDL_LOTE: TStringField;
    qLotePRDL_PRECO_MAXIMO: TFMTBCDField;
    qLotePRDL_SALDO: TFMTBCDField;
    qLotePRD_CODIGO: TStringField;
    qLotePRDL_CADASTRO: TDateField;
    qLotePRDL_DESCRICAO: TStringField;
    qLotePRDL_CUSTO: TFMTBCDField;
    qLotePRDL_NFE: TStringField;
    qLoteFOR_CODIGO: TStringField;
    qLotePRDL_QTDELOTE: TFMTBCDField;
    cxEditRepository1: TcxEditRepository;
    cxEditRepository1ButtonItem1: TcxEditRepositoryButtonItem;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    ActionList1: TActionList;
    actInserir: TAction;
    actdelete: TAction;
    lpadrao: TLabel;
    grpNovos: TGroupBox;
    grpHistorico: TGroupBox;
    cdsEmpenhoValidade: TSQLTimeStampField;
    cxGrid1DBTableView1Validade: TcxGridDBColumn;
    cdsHistoricoEmpenho: TFDQuery;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    dsHistorico: TDataSource;
    cdsHistoricoEmpenhoPRDL_REGISTRO: TIntegerField;
    cdsHistoricoEmpenhoEPE_CODIGO: TIntegerField;
    cdsHistoricoEmpenhoIOP_CODIGO: TIntegerField;
    cdsHistoricoEmpenhoMP_CODIGO: TIntegerField;
    cdsHistoricoEmpenhoPRD_CODIGO: TStringField;
    cdsHistoricoEmpenhoEMP_QUANTIDADE: TFMTBCDField;
    cdsHistoricoEmpenhoEMP_TIPO: TStringField;
    cdsHistoricoEmpenhoEMP_DATAEMPENHO: TSQLTimeStampField;
    cdsHistoricoEmpenhoPRDL_DATA_FABRICACAO: TDateField;
    cdsHistoricoEmpenhoPRDL_LOTE: TStringField;
    cxGrid2DBTableView1PRDL_REGISTRO: TcxGridDBColumn;
    cxGrid2DBTableView1EPE_CODIGO: TcxGridDBColumn;
    cxGrid2DBTableView1IOP_CODIGO: TcxGridDBColumn;
    cxGrid2DBTableView1MP_CODIGO: TcxGridDBColumn;
    cxGrid2DBTableView1PRD_CODIGO: TcxGridDBColumn;
    cxGrid2DBTableView1EMP_QUANTIDADE: TcxGridDBColumn;
    cxGrid2DBTableView1EMP_TIPO: TcxGridDBColumn;
    cxGrid2DBTableView1EMP_DATAEMPENHO: TcxGridDBColumn;
    cxGrid2DBTableView1PRDL_DATA_FABRICACAO: TcxGridDBColumn;
    cxGrid2DBTableView1PRDL_LOTE: TcxGridDBColumn;
    cxGrid2DBTableView1PRDL_SALDO: TcxGridDBColumn;
    Splitter1: TSplitter;
    cxGrid1DBTableView1Estorno: TcxGridDBColumn;
    cdsEmpenhotipo: TStringField;
    cdsHistoricoEmpenhoUSU_NOME: TStringField;
    cxGrid2DBTableView1USU_NOME: TcxGridDBColumn;
    cdsHistoricoEmpenhoEPE_CUSTO: TFMTBCDField;
    cxGrid2DBTableView1EPE_CUSTO: TcxGridDBColumn;
    cdsHistoricoEmpenhoTOTAL: TFloatField;
    cxGrid2DBTableView1TOTAL: TcxGridDBColumn;
    procedure cdsEmpenhoPRDL_REGISTROValidate(Sender: TField);
    procedure FormShow(Sender: TObject);
    procedure cdsEmpenhoQuantidadeValidate(Sender: TField);
    procedure FormCreate(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure cdsEmpenhoAfterInsert(DataSet: TDataSet);
    procedure cxGrid1Enter(Sender: TObject);
    procedure cxGrid1DBTableView1EstornoGetCellHint(Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo; const AMousePos: TPoint;
      var AHintText: TCaption; var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
    procedure FormDestroy(Sender: TObject);
    procedure cxGrid2DBTableView1Column1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cdsHistoricoEmpenhoCalcFields(DataSet: TDataSet);
  private
   fprd_codigo :string ;
   fmp_codigo : integer;
   tcr: tProducaoDao;
   fTipoEmpenho : string;
   fempenhado : double;
  public
    property prd_produto : string read fprd_codigo write fprd_codigo ;
    property mp_codigo: integer read fmp_codigo write fmp_codigo;
    property tipoempenho : string read fTipoEmpenho write fTipoEmpenho;
    property FaltaEmpenhar : double  read fempenhado write fempenhado;
  end;

var
  frmEmpenharLote: TfrmEmpenharLote;

implementation

{$R *.dfm}
uses iniciodb, uteis;

procedure TfrmEmpenharLote.btnCancelarClick(Sender: TObject);
begin
  inherited;
  ModalResult := mrCancel;
end;

procedure TfrmEmpenharLote.btnOkClick(Sender: TObject);
begin

  try
    if cdsEmpenho.State in dsEditModes then
      if (cdsEmpenhoprdl_registro.asinteger > 0) and (cdsEmpenhoQuantidade.AsFloat >0)  then
        cdsEmpenho.Post;
  except

      if (cdsEmpenhoQuantidade.AsInteger = 0 ) and (cdsEmpenhoData.IsNull) then
         cdsEmpenho.Cancel
      else
        raise
  end;

  if cdsEmpenho.IsEmpty then
    raise Exception.Create('Não foi preenchido nenhum empenho');
  ModalResult := mrOk;
end;

procedure TfrmEmpenharLote.cdsEmpenhoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  if DataPadrao.Date > 0  then
    cdsEmpenhoData.AsDateTime := DataPadrao.Date;
  cdsEmpenhotipo.AsString:= 'M';
end;

procedure TfrmEmpenharLote.cdsEmpenhoPRDL_REGISTROValidate(Sender: TField);
var clone: TClientDataSet;
begin
  inherited;
  clone := TClientDataSet.Create(Self);
  try
     clone.CloneCursor(cdsEmpenho,false);
     if clone.Locate('PRDL_REGISTRO',Sender.AsInteger,[]) then
       raise Exception.Create('Lote repetido');
     if qlote.Locate('PRDL_REGISTRO',Sender.AsInteger,[]) then
     begin
       cdsEmpenhoSaldo.AsFloat := qLotePRDL_SALDO.AsFloat;
       cdsEmpenhoValidade.AsDateTime := qLotePRDL_DATA_VALIDADE.AsDateTime;
     end;
  finally
    clone.Free;
  end;
end;

procedure TfrmEmpenharLote.cdsEmpenhoQuantidadeValidate(Sender: TField);
begin
  inherited;
  if cdsEmpenhoPRDL_REGISTRo.AsInteger=0 then
    raise Exception.Create('Número lote não preenchido');
  if cdsEmpenhoSaldo.AsFloat <= 0 then
    raise Exception.Create('Quantidade deve ser maior que zero');
  if cdsEmpenhoSaldo.AsFloat < Sender.AsFloat then
    raise Exception.Create('Quantidade maior que o saldo em estoque');

end;

procedure TfrmEmpenharLote.cdsHistoricoEmpenhoCalcFields(DataSet: TDataSet);
begin
  inherited;
  if cdsHistoricoEmpenhoEPE_CUSTO.AsFloat > 0  then
    cdsHistoricoEmpenhoTOTAL.AsFloat :=  ( cdsHistoricoEmpenhoEPE_CUSTO.AsFloat * cdsHistoricoEmpenhoEMP_QUANTIDADE.AsFloat)
  else
   cdsHistoricoEmpenhoTOTAL.AsFloat :=  0;
end;

procedure TfrmEmpenharLote.cxGrid1Enter(Sender: TObject);
begin
  inherited;
  if cdsEmpenho.State = dsBrowse then
    cdsEmpenho.Insert;

end;

procedure TfrmEmpenharLote.cxGrid1DBTableView1EstornoGetCellHint(Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo; const AMousePos: TPoint;
  var AHintText: TCaption; var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
begin
  inherited;
  AHintText := 'Estornar';
end;

procedure TfrmEmpenharLote.cxGrid2DBTableView1Column1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  TCR.EstornarEmpenho(cdsHistoricoEmpenhoEPE_CODIGO.AsInteger);
  cdsHistoricoEmpenho.Refresh;
end;

procedure TfrmEmpenharLote.FormCreate(Sender: TObject);
begin
  inherited;
  self.Constraints.MinHeight:= 419;
  self.Constraints.MinWidth:=620;
  self.width:=620;
  self.height:=419;
  cxGrid2DBTableView1EPE_CUSTO.Visible :=  DBInicio.Empresa.bUSP_CUSTOPRODUCAO;
  cxGrid2DBTableView1TOTAL.Visible :=   DBInicio.Empresa.bUSP_CUSTOPRODUCAO;
  cdsEmpenhoSaldo.DisplayFormat := '###,###,##0.'+StrZero('0', dbInicio.Empresa.fPMT_QTDE_DEC_PED);
  cdsEmpenhoQuantidade.DisplayFormat := '###,###,##0.'+StrZero('0', dbInicio.Empresa.fPMT_QTDE_DEC_PED);
  cdsHistoricoEmpenhoEMP_QUANTIDADE.DisplayFormat := '###,###,##0.'+StrZero('0', dbInicio.Empresa.fPMT_QTDE_DEC_PED);
  cdsHistoricoEmpenhoTOTAL.DisplayFormat  :=  '###,###,##0.'+StrZero('0', dbInicio.Empresa.fPMT_QTDE_DEC_PED);
  cxGrid2DBTableView1.DataController.Summary.FooterSummaryItems.Items[0].Format :=   '###,###,##0.'+StrZero('0', dbInicio.Empresa.fPMT_QTDE_DEC_PED);
  cxGrid2DBTableView1.DataController.Summary.FooterSummaryItems.Items[1].Format :=   '###,###,##0.'+StrZero('0', dbInicio.Empresa.fPMT_QTDE_DEC_PED);
  if not Assigned(tcr) then
   tcr := TProducaoDao.Create(application);
end;

procedure TfrmEmpenharLote.FormDestroy(Sender: TObject);
begin
  inherited;
  if Assigned(tcr) then
    FreeAndNil(tcr);
end;

procedure TfrmEmpenharLote.FormShow(Sender: TObject);
begin
  inherited;
  cdsEmpenho.close;
  cdsEmpenho.CreateDataSet;
  qLote.Close;
  qLote.ParamByName('prd_codigo').AsString := prd_produto;
  qlote.open;
  qLote.First;
  while  (tipoempenho = 'A' ) and ( (not qLote.Eof) or (FaltaEmpenhar = 0 )) do
  begin
    cdsEmpenho.Insert;
    cdsEmpenhoData.AsDateTime := Date;
    cdsEmpenhoPRDL_REGISTRO.AsInteger := qLotePRDL_REGISTRO.AsInteger;
    if FaltaEmpenhar > qLotePRDL_SALDO.AsFloat then
    begin
       FaltaEmpenhar := FaltaEmpenhar- qLotePRDL_SALDO.AsFloat ;
       cdsEmpenhoQuantidade.AsFloat :=  qLotePRDL_SALDO.AsFloat;
    end
    else
    begin
      cdsEmpenhoQuantidade.AsFloat := FaltaEmpenhar;
      FaltaEmpenhar := 0 ;
    end;
   cdsEmpenhotipo.AsString := 'A';
    cdsEmpenho.Post;
    qLote.Next;
  end;
  if tipoempenho = 'M' then
    cdsEmpenho.Insert;

  cdsHistoricoEmpenho.Close;
  cdsHistoricoEmpenho.ParamByName('mp_codigo').AsInteger := mp_codigo  ;
  cdsHistoricoEmpenho.Open;

  if grpNovos.Visible then
    grpHistorico.Visible := not cdsHistoricoEmpenho.IsEmpty;
  if  grpHistorico.Visible then
    self.Width :=  884
  else
    self.width := 620;
end;

end.
