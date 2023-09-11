unit uPivotCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBFormFdac, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Phys.FBDef, FireDAC.UI.Intf, FireDAC.VCLUI.Wait, FireDAC.VCLUI.Error, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.FB, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxClasses, cxCustomData, cxStyles, cxEdit, Data.DB, cxCustomPivotGrid, cxDBPivotGrid, FireDAC.Comp.Client, FireDAC.Comp.UI, FireDAC.Phys.IBBase,
  FireDAC.Comp.DataSet, cxLocalization, ACBrBase, ACBrEnterTab, dxmdaset, cxPivotGridCustomDataSet, cxPivotGridDrillDownDataSet, Vcl.StdCtrls, cxTL, cxMaskEdit, cxInplaceContainer, cxDBTL, cxTLData,
  Vcl.ExtCtrls, Vcl.Imaging.jpeg, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxEditorProducers, dxPScxExtEditorProducers, dxPSCore, dxPScxPivotGridLnk, cxExportPivotGridLink;

type
  TfrmBasePivotFDAC = class(TfrmBaseDBFDAC)
    cxDBPivotGrid1: TcxDBPivotGrid;
    cdsBusca: TFDQuery;
    dsBusca: TDataSource;
    cxPivotGridDrillDownDataSet1: TcxPivotGridDrillDownDataSet;
    cdsBuscaNF_QTDE: TFMTBCDField;
    cdsBuscaNF_PRECO: TFMTBCDField;
    cdsBuscaNF_TOT_NOTA: TFMTBCDField;
    cdsBuscaCLI_CODIGO: TStringField;
    cdsBuscaCLI_RAZAO: TStringField;
    cdsBuscaNF_EMISSAO: TDateField;
    cdsBuscaPRD_REFER: TStringField;
    cdsBuscaPTI_CODIGO: TStringField;
    cdsBuscaPTI_DESCRI: TStringField;
    cdsBuscaPRD_DESCRI: TStringField;
    cdsBuscaLIN_CODIGO: TStringField;
    cdsBuscaLIN_DESCRI: TStringField;
    cdsBuscaPGR_CODIGO: TStringField;
    cdsBuscaPGR_DESCRI: TStringField;
    cdsTreeEstrutura: TFDQuery;
    dsEstrutura: TDataSource;
    CategoryPanelGroup1: TCategoryPanelGroup;
    CategoryPanel1: TCategoryPanel;
    CategoryPanel2: TCategoryPanel;
    cxDBTreeList1: TcxDBTreeList;
    cxDBTreeList1cxDBTreeListColumn1: TcxDBTreeListColumn;
    Button1: TButton;
    imgAbre: TImage;
    imgFecha: TImage;
    Button2: TButton;
    Button3: TButton;
    dxComponentPrinter1: TdxComponentPrinter;
    cdsBuscaPRG_DESCRICAO: TStringField;
    cdsBuscaEMP_CODIGO: TStringField;
    cdsBuscaEMPRESA: TStringField;
    cdsBuscaREP_CODIGO: TStringField;
    cdsBuscaREP_NOME: TStringField;
    cdsBuscaNTP_CFOP: TIntegerField;
    cdsBuscaNF_IPIVALOR: TFMTBCDField;
    cdsBuscaNF_CUSTO: TFMTBCDField;
    cdsBuscaNF_VLSUBST: TFMTBCDField;
    cdsBuscaNF_ICMSVALOR: TFMTBCDField;
    cdsBuscaNF_COMISSAO: TBCDField;
    cdsBuscaNF_VLPIS: TFMTBCDField;
    cdsBuscaNF_VLCOFINS: TFMTBCDField;
    cxDBPivotGrid1Field1: TcxDBPivotGridField;
    cxDBPivotGrid1Field2: TcxDBPivotGridField;
    cxDBPivotGrid1Field3: TcxDBPivotGridField;
    cxDBPivotGrid1Field4: TcxDBPivotGridField;
    cxDBPivotGrid1Field5: TcxDBPivotGridField;
    cxDBPivotGrid1Field6: TcxDBPivotGridField;
    cxDBPivotGrid1Field7: TcxDBPivotGridField;
    cxDBPivotGrid1Field8: TcxDBPivotGridField;
    cxDBPivotGrid1Field9: TcxDBPivotGridField;
    cxDBPivotGrid1Field10: TcxDBPivotGridField;
    cxDBPivotGrid1Field11: TcxDBPivotGridField;
    cxDBPivotGrid1Field12: TcxDBPivotGridField;
    cxDBPivotGrid1Field13: TcxDBPivotGridField;
    cxDBPivotGrid1Field14: TcxDBPivotGridField;
    cxDBPivotGrid1Field15: TcxDBPivotGridField;
    cxDBPivotGrid1Field16: TcxDBPivotGridField;
    cxDBPivotGrid1Field17: TcxDBPivotGridField;
    cxDBPivotGrid1Field19: TcxDBPivotGridField;
    cxDBPivotGrid1Field20: TcxDBPivotGridField;
    cxDBPivotGrid1Field21: TcxDBPivotGridField;
    cxDBPivotGrid1Field22: TcxDBPivotGridField;
    cxDBPivotGrid1Field23: TcxDBPivotGridField;
    cxDBPivotGrid1Field24: TcxDBPivotGridField;
    cxDBPivotGrid1Field25: TcxDBPivotGridField;
    cxDBPivotGrid1Field26: TcxDBPivotGridField;
    cxDBPivotGrid1Field27: TcxDBPivotGridField;
    cxDBPivotGrid1Field18: TcxDBPivotGridField;
    cdsBuscaPCL_CODIGO: TStringField;
    cdsBuscaPCL_NOME: TStringField;
    cdsBuscaPCX_CODIGO: TStringField;
    cdsBuscaPCX_DESCRI: TStringField;
    cdsBuscaFPG_REGISTRO: TIntegerField;
    cdsBuscaFPG_DESCRICAO: TStringField;
    cxDBPivotGrid1Field28: TcxDBPivotGridField;
    cxDBPivotGrid1Field29: TcxDBPivotGridField;
    cdsBuscaCCT_CODIGO: TStringField;
    cdsBuscaCCT_DESCRI: TStringField;
    cxDBPivotGrid1Field30: TcxDBPivotGridField;
    Button4: TButton;
    cxLocalizer2: TcxLocalizer;
    SaveDialog1: TSaveDialog;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
   procedure filtro1;
  end;

var
  frmBasePivotFDAC: TfrmBasePivotFDAC;

implementation

uses iniciodb;
{$R *.dfm}

procedure TfrmBasePivotFDAC.Button1Click(Sender: TObject);
begin
  inherited;
  cxDBPivotGrid1.StoreToIniFile(DBInicio.Versao.PATH+'/pivot/'+'notas.ini');
  //StoreToIniFile,  RestoreFromIniFile,  StoreToStream,  RestoreFromStream,  StoreToRegistry,  RestoreFromRegistry
end;

procedure TfrmBasePivotFDAC.Button3Click(Sender: TObject);
var
  APrinter: TdxComponentPrinter;
  AGridLink: TcxPivotGridReportLink;

begin

   APrinter := TdxComponentPrinter.Create(Self);
   AGridLink := TcxPivotGridReportLink.Create(Self);
   try
     AGridLink.ComponentPrinter := APrinter;
     AGridLink.Component := cxDBPivotGrid1;
     AGridLink.Preview;
   finally
     FreeAndNil(AGridLink);
     FreeAndNil(APrinter);
   end;
end;

procedure TfrmBasePivotFDAC.Button4Click(Sender: TObject);
var
  SaveDialog: TSaveDialog;
begin
  inherited;
   if not(cdsBusca.active) or
    (cdsBusca.RecordCount <= 0) then
     raise Exception.Create('Não Existem Registros!');
//
//  SaveDialog1.Filter := 'Planilha Excel |*.xls ';    //'Text file|*.txt|Word file|*.doc';
//  SaveDialog1.title := 'Exportar Dados';
//  SaveDialog1.DefaultExt := '.xls';
//


  if not Assigned(cxDBPivotGrid1) then
  Exit;
  SaveDialog := TSaveDialog.Create(Self);
  try
    SaveDialog.Name := 'SaveDialog';
    SaveDialog.DefaultExt := 'XLS';
    SaveDialog.title := 'Exportar Dados';
    SaveDialog.Filter := 'MS-Excel-Files (*.XLS)|*.XLS|XML-Files (*.XML)|*.HTM|HTML-Files (*.HTM)|*.HTM|Text-Files (*.TXT)|*.TXT|All Files (*.*)|*.*';
    SaveDialog.Options := [ofOverwritePrompt, ofHideReadOnly, ofPathMustExist];
    if SaveDialog.Execute then
    if SaveDialog.FileName <> '' then
    begin
    if (Pos('.XLS', UpperCase(SaveDialog.FileName)) = Length(SaveDialog.FileName) - 3) then
    cxExportPivotGridToExcel(SaveDialog.FileName, cxDBPivotGrid1)
    else if (Pos('.XML', UpperCase(SaveDialog.FileName)) = Length(SaveDialog.FileName) - 3) then
    cxExportPivotGridToXML(SaveDialog.FileName, cxDBPivotGrid1)
    else if ((Pos('.HTM', UpperCase(SaveDialog.FileName)) = Length(SaveDialog.FileName) - 3) or
    (Pos('.HTML', UpperCase(SaveDialog.FileName)) = Length(SaveDialog.FileName) - 4)) then
    cxExportPivotGridToHTML(SaveDialog.FileName, cxDBPivotGrid1)
    else
    cxExportPivotGridToText(SaveDialog.FileName, cxDBPivotGrid1);
    end;
  finally
  SaveDialog.Free;
  end;
end;

procedure TfrmBasePivotFDAC.filtro1;
begin

end;

procedure TfrmBasePivotFDAC.FormCreate(Sender: TObject);
begin
  inherited;
  cdsBusca.Open;
  cdsTreeEstrutura.Open;
  //cxdbPivotGrid1.DataController.c
end;

procedure TfrmBasePivotFDAC.FormDestroy(Sender: TObject);
begin
  inherited;
  frmBasePivotFDAC := nil;
end;

end.
