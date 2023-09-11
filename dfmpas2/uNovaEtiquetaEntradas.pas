unit uNovaEtiquetaEntradas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBForm, Data.DBXFirebird, Data.FMTBcd, Data.DB, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Data.SqlExpr, ACBrEnterTab, ACBrBase, ACBrCalculadora,
  Vcl.Mask, JvExMask, JvToolEdit, JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit, Datasnap.DBClient, ppDB, ppDBPipe, ppParameter, ppDesignLayer, ppCtrls, ppPrnabl, ppClass, ppCache, ppBands, ppComm,
  ppRelatv, ppProd, ppReport, ppVar;

type
  TfrmNovaEtiquetaEntrada = class(TfrmBaseDB)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    Panel4: TPanel;
    RadioGroup1: TRadioGroup;
    Button1: TButton;
    Button2: TButton;
    lNotaFiscal: TLabel;
    lfornecedor: TLabel;
    lemissao: TLabel;
    edResponsavel: TEdit;
    lresp: TLabel;
    lentrada: TLabel;
    cdsItem: TClientDataSet;
    cdsItemPRD_REFER: TStringField;
    cdsItemPRD_DESCRI: TStringField;
    cdsItemENF_QTDE: TFMTBCDField;
    cdsItemselecionado: TBooleanField;
    dsitens: TDataSource;
    cdsItemPRDL_REGISTRO: TIntegerField;
    cdsItemNUMLOTE: TStringField;
    cdsItemPRDL_DATA_FABRICACAO: TDateField;
    cdsItemPRDL_DATA_VALIDADE: TDateField;
    prModelo1: TppReport;
    ppDetailBand1: TppDetailBand;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppParameterList1: TppParameterList;
    pipItens: TppDBPipeline;
    ppImage1: TppImage;
    ppDBText1: TppDBText;
    ppLabel1: TppLabel;
    ppDBText2: TppDBText;
    ppLabel2: TppLabel;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppDBText5: TppDBText;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppDBText6: TppDBText;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel16: TppLabel;
    cdsItemQtdeEtiquetas: TIntegerField;
    cdsItemQtdeItens: TFMTBCDField;
    cdsItensRel: TClientDataSet;
    cdsItensRelPRD_REFER: TStringField;
    cdsItensRelPRD_DESCRI: TStringField;
    cdsItensRelENF_QTDE: TFMTBCDField;
    cdsItensRelPRDL_REGISTRO: TIntegerField;
    cdsItensRelNUMLOTE: TStringField;
    cdsItensRelPRDL_DATA_FABRICACAO: TDateField;
    cdsItensRelPRDL_DATA_VALIDADE: TDateField;
    cdsItensRelQtdeEtiquetas: TIntegerField;
    cdsItensRelQtdeItens: TFMTBCDField;
    dsItensrel: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure cdsItemselecionadoGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ppImage1Print(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ppLabel10GetText(Sender: TObject; var Text: string);
    procedure ppLabel11GetText(Sender: TObject; var Text: string);
    procedure ppLabel9GetText(Sender: TObject; var Text: string);
    procedure ppLabel12GetText(Sender: TObject; var Text: string);
    procedure ppLabel13GetText(Sender: TObject; var Text: string);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure cdsItemNUMLOTEChange(Sender: TField);
  private
    { Private declarations }
  public
    NotaFiscal, Fornecedor: string;
    Emissao, Entrada : TDate;
  end;

var
  frmNovaEtiquetaEntrada: TfrmNovaEtiquetaEntrada;

implementation
uses iniciodb;
{$R *.dfm}

procedure TfrmNovaEtiquetaEntrada.Button1Click(Sender: TObject);
var i,j : integer;
begin
  inherited;
  cdsItem.Filtered := false;
  cdsItem.Filter := 'selecionado = true';
  cdsItem.Filtered:= true;
  if cdsItem.RecordCount = 0  then
  begin
     cdsItem.Filtered := false;
     raise Exception.Create('Nada foi selecionado');
  end;
  try
  cdsItensRel.close;
   cdsItensRel.CreateDataSet;
   while not cdsItem.Eof do
   begin
    j := cdsItemQtdeEtiquetas.AsInteger;
    if j =0  then j:=1 ;
    for I := 1 to j do
    begin
      cdsItensRel.Insert;
      cdsItensRelPRD_REFER.AsString := cdsItemPRD_REFER.AsString;
      cdsItensRelPRD_DESCRI.AsString := cdsItemPRD_DESCRI.AsString;
      cdsItensRelNUMLOTE.AsString := cdsItemNUMLOTE.AsString;
      if cdsItemPRDL_DATA_FABRICACAO.AsDateTime > 0  then
        cdsItensRelPRDL_DATA_FABRICACAO.AsDateTime := cdsItemPRDL_DATA_FABRICACAO.AsDateTime;
      if cdsItemPRDL_DATA_VALIDADE.AsDateTime >0  then
        cdsItensRelPRDL_DATA_VALIDADE.AsDateTime := cdsItemPRDL_DATA_VALIDADE.AsDateTime;
      if cdsItemQtdeItens.AsFloat =0 then
        cdsItensRelQtdeItens.AsFloat := cdsItemENF_QTDE.AsFloat
      else
        cdsItensRelQtdeItens.AsFloat := cdsItemQtdeItens.AsFloat;
      cdsItensRel.Post;
    end;
    cdsItem.Next;
   end;
    prModelo1.DeviceType := 'Screen';
    prModelo1.Print;
  finally
    cdsItem.Filtered:= false;
  end;
end;

procedure TfrmNovaEtiquetaEntrada.cdsItemNUMLOTEChange(Sender: TField);
begin
  inherited;
  if frmNovaEtiquetaEntrada.Visible then
  Begin
    if not (cdsItem.State in dsEditModes) then
      cdsItem.Edit;

   cdsItemselecionado.AsBoolean := true;
   cdsItem.Post;
  End;

end;

procedure TfrmNovaEtiquetaEntrada.cdsItemselecionadoGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text := '';
end;

procedure TfrmNovaEtiquetaEntrada.DBGrid1CellClick(Column: TColumn);
begin
  inherited;
  if Column.FieldName = 'selecionado' then
  begin
   if not (cdsItem.State in dsEditModes) then
      cdsItem.Edit;
    cdsItemselecionado.AsBoolean := not cdsItemselecionado.AsBoolean;
    cdsItem.Post;
  end;
end;

procedure TfrmNovaEtiquetaEntrada.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  if not (cdsItem.State in dsEditModes) then
    cdsItem.Edit;
  cdsItemselecionado.AsBoolean := not cdsItemselecionado.AsBoolean;
  cdsItem.Post;
end;

procedure TfrmNovaEtiquetaEntrada.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
Check: Integer;
R: TRect;
begin
  inherited;
  if Column.FieldName = 'selecionado' then
  begin
     DBGrid1.Canvas.FillRect(Rect);
     Check := 0;
     if cdsItemselecionado.AsBoolean then
        Check := DFCS_CHECKED
     else
        Check := 0;
     R:=Rect;
     InflateRect(R,-2,-2); {Diminue o tamanho do CheckBox}
     DrawFrameControl(DBGrid1.Canvas.Handle,R,DFC_BUTTON, DFCS_BUTTONCHECK or Check);
  end;
end;

procedure TfrmNovaEtiquetaEntrada.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TfrmNovaEtiquetaEntrada.FormDestroy(Sender: TObject);
begin
  inherited;
  frmNovaEtiquetaEntrada := nil;
end;

procedure TfrmNovaEtiquetaEntrada.FormShow(Sender: TObject);
begin
  inherited;
  lNotaFiscal.Caption := 'Nota fiscal: '+ NotaFiscal;
  lfornecedor.Caption := 'Fornecedor: '+Fornecedor;
  lemissao.Caption := 'Emissão: '+ FormatDateTime('dd/mm/yyyy',emissao);
  lentrada.Caption := 'Entrada: ' + FormatDateTime('dd/mm/yyyy',entrada);
end;

procedure TfrmNovaEtiquetaEntrada.ppImage1Print(Sender: TObject);
begin
  inherited;
  ppImage1.Picture.Bitmap.Assign(DbInicio.Empresa.LOGO);
end;

procedure TfrmNovaEtiquetaEntrada.ppLabel10GetText(Sender: TObject; var Text: string);
begin
  inherited;
  text := edResponsavel.Text;
end;

procedure TfrmNovaEtiquetaEntrada.ppLabel11GetText(Sender: TObject; var Text: string);
begin
  inherited;
  text:= NotaFiscal;
end;

procedure TfrmNovaEtiquetaEntrada.ppLabel12GetText(Sender: TObject; var Text: string);
begin
  inherited;
  if Emissao>0  then
    Text := 'Data de Emissão: '+ FormatDateTime('dd/mm/yyyy',emissao)
  else
    text:= '';
end;

procedure TfrmNovaEtiquetaEntrada.ppLabel13GetText(Sender: TObject; var Text: string);
begin
  inherited;
  if Entrada>0  then
    Text := 'Data de Entrada: '+ FormatDateTime('dd/mm/yyyy',Entrada)
  else
    text:= '';
end;

procedure TfrmNovaEtiquetaEntrada.ppLabel9GetText(Sender: TObject; var Text: string);
begin
  inherited;
  text:= Fornecedor
end;

end.
