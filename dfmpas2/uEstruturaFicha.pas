unit uEstruturaFicha;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBFormFdac, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Phys.FBDef, FireDAC.UI.Intf, FireDAC.VCLUI.Wait, FireDAC.VCLUI.Error, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.FB, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxCustomData, cxStyles, cxTL, cxMaskEdit, cxInplaceContainer, cxDBTL, Data.DB, Vcl.ExtCtrls, cxTLData, FireDAC.Comp.Client, FireDAC.Comp.UI,
  FireDAC.Phys.IBBase, FireDAC.Comp.DataSet, cxClasses, cxLocalization, ACBrBase, ACBrEnterTab, cxTextEdit, Datasnap.DBClient,
  cxTLdxBarBuiltInMenu, cxDataControllerConditionalFormattingRulesManagerDialog,
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
  TfrmEstruturaFicha = class(TfrmBaseDBFDAC)
    Panel1: TPanel;
    cdsBusca: TFDQuery;
    cdsBuscaKEYFIELD: TStringField;
    cdsBuscaPARENT: TStringField;
    cdsBuscaPRD_DESCRI: TStringField;
    cdsBuscaPARENT_DESCRI: TStringField;
    cdsBuscaPRD_REFER: TStringField;
    cdsBuscaPARENT_REFER: TStringField;
    dsbusca: TDataSource;
    cdsBuscaPRD_UND: TStringField;
    cdsBuscaPRD_PVENDA: TFMTBCDField;
    cdsBuscaFTI_UC: TFMTBCDField;
    cdsBuscaPRD_PCUSTO: TBCDField;
    cdsBuscaTOTALITEM: TBCDField;
    cdsBuscaPTI_SIGLA: TStringField;
    cxTreeList1: TcxTreeList;
    cxPRD_REFER: TcxTreeListColumn;
    cxPRD_DESCRI: TcxTreeListColumn;
    cxTreeListSigla: TcxTreeListColumn;
    cxTreeListUnd: TcxTreeListColumn;
    cxTreeListConsumo: TcxTreeListColumn;
    cxTreeListCustoUnit: TcxTreeListColumn;
    cxTreeListCustoTotal: TcxTreeListColumn;
    cxTreeListPrecoVenda: TcxTreeListColumn;
    ClientDataSet1: TClientDataSet;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    fPrd_Refer : string;
    procedure subitens (APNode: TcxTreeListNode; const prd_refer : string; baseFormula: double);
    function AddTreeListNode( APNode: TcxTreeListNode; const AValues: Array of Variant; AImageIndex: Integer): TcxTreeListNode;

  public
    property prd_Refer : string read fPrd_Refer write fPrd_Refer;
  end;

var
  frmEstruturaFicha: TfrmEstruturaFicha;

implementation

{$R *.dfm}

uses InicioDB;

function TfrmEstruturaFicha.AddTreeListNode( APNode: TcxTreeListNode; const AValues: array of Variant; AImageIndex: Integer): TcxTreeListNode;
begin
  Result := cxTreeList1.AddChild(APNode);
  Result.AssignValues(AValues);
 // Result.Imageindex := AImageIndex;

end;

procedure TfrmEstruturaFicha.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TfrmEstruturaFicha.FormCreate(Sender: TObject);
var
   i : Integer;
begin
  inherited;
  for I := 0 to self.ComponentCount-1 do
  begin
    if self.Components[i].InheritsFrom(TFDQuery) then
    begin
      TFDQuery( self.Components[i] ).Transaction := nil;

    end;


  end;

 // cdsBusca.open;
end;

procedure TfrmEstruturaFicha.FormDestroy(Sender: TObject);
begin
  inherited;
   frmEstruturaFicha := nil;
end;

procedure TfrmEstruturaFicha.FormShow(Sender: TObject);

Var node : TcxTreeListNode;
begin
  inherited;
  cxTreeList1.BeginUpdate;
  node := TcxTreeListNode.Create(cxTreeList1);
  node := cxTreeList1.root.AddChild;//  AddChild(cxTreeList1,['A00037','TESTES']) ;
  OpenAux(' SELECT  pr1.PRD_CODIGO , '+
        '          pr1.PRD_DESCRI , '+
        '          pr1.prd_Refer ,  '+
        '         pr1.PRD_UND, pr1.prd_pvenda,  '+
        '   cast(  '+
        ' case  '+
        '   WHEN PRMT.pmt_calcularpv = ''0'' THEN  '+
        ' 	  pr1.PRD_PCUSTO  '+
        '   WHEN PRMT.pmt_calcularpv = ''1'' THEN  '+
        ' 	  pr1.prd_custocomipi  '+
        '   WHEN PRMT.pmt_calcularpv = ''2'' THEN  '+
        ' 	  pr1.PRD_PMEDIO  '+
        ' END as numeric(15,4)) AS PRD_PCUSTO,  '+
        ' cast(  '+
        ' (case  '+
        '   WHEN PRMT.pmt_calcularpv = ''0'' THEN  '+
        ' 	  pr1.PRD_PCUSTO  '+
        '   WHEN PRMT.pmt_calcularpv = ''1'' THEN  '+
        ' 	  pr1.prd_custocomipi  '+
        '   WHEN PRMT.pmt_calcularpv = ''2'' THEN  '+
        ' 	  pr1.PRD_PMEDIO  '+
        ' END  ) as numeric(15,4)) AS TotalItem, tipo.PTI_SIGLA ,             '+
        ' (SELECT FTC_BASEFORMULA FROM FTC0000 ft WHERE pr1.PRD_REFER = FT.PRD_REFER AND EMP_CODIGO = '+quotedStr(dbinicio.empresa.emp_codigo) +') as FTC_BASEFORMULA '+
        '    FROM PRD0000 pr1 '+
        '    join PRD_TIPO tipo ON Pr1.pti_codigo = tipo.PTI_CODIGO  '+
        '    left JOIN prmt0001 PRMT ON PRMT.emp_codigo = Pr1.emp_codigo ' +
        ' where  pr1.prd_refer =  '+ QuotedStr(prd_refer)
        )  ;
  node .Values[0] := prd_Refer;
  node .Values[1] := qaux.FieldByName('prd_descri').AsString;
  node .Values[2] := qaux.FieldByName('pti_sigla').AsString;
  node .Values[3] := qaux.FieldByName('prd_und').AsString;
  node .Values[4] := qaux.fieldByName('FTC_BASEFORMULA').asfloat;
  node .Values[5] := qaux.FieldByName('PRD_PCUSTO').AsFloat;
  node .Values[6] := qaux.FieldByName('TOTALITEM').AsFloat;
  node .Values[7] := qaux.FieldByName('PRD_PVENDA').AsFloat;
  subitens(node,  prd_Refer, qaux.fieldByName('FTC_BASEFORMULA').asfloat);
//  node  .Values[1] := 'teste';
//  AddTreeListNode(node,['1829182','tetetet'],0);
  cxTreeList1.FullExpand;
  cxTreeList1.EndUpdate;
end;

procedure TfrmEstruturaFicha.subitens(APNode: TcxTreeListNode; const prd_refer: string; baseFormula: double);
var sql : string;
 clone : TFDMemTable;
  node :TcxTreeListNode;
begin
  sql :=' SELECT  pr1.PRD_CODIGO , '+
        '          pr1.PRD_DESCRI , '+
        '          pr1.prd_Refer ,  '+
        '         pr1.PRD_UND, pr1.prd_pvenda, FT.fti_uc, '+
        '   cast(  '+
        ' case  '+
        '   WHEN PRMT.pmt_calcularpv = ''0'' THEN  '+
        ' 	  pr1.PRD_PCUSTO  '+
        '   WHEN PRMT.pmt_calcularpv = ''1'' THEN  '+
        ' 	  pr1.prd_custocomipi  '+
        '   WHEN PRMT.pmt_calcularpv = ''2'' THEN  '+
        ' 	  pr1.PRD_PMEDIO  '+
        ' END as numeric(15,4)) AS PRD_PCUSTO,  '+
        ' cast(  '+
        ' (case  '+
        '   WHEN PRMT.pmt_calcularpv = ''0'' THEN  '+
        ' 	  pr1.PRD_PCUSTO  '+
        '   WHEN PRMT.pmt_calcularpv = ''1'' THEN  '+
        ' 	  pr1.prd_custocomipi  '+
        '   WHEN PRMT.pmt_calcularpv = ''2'' THEN  '+
        ' 	  pr1.PRD_PMEDIO  '+
        ' END  * Ft.fti_uc) as numeric(15,4)) AS TotalItem, tipo.PTI_SIGLA              '+
        '    FROM FTC_IT01 ft  '+
              '    JOIN PRD0000 pr1 ON pr1.prd_refer = ft.PRD_REFER_ITENS '+
        '    join PRD_TIPO tipo ON Pr1.pti_codigo = tipo.PTI_CODIGO  '+
        '    left JOIN prmt0001 PRMT ON PRMT.emp_codigo = Pr1.emp_codigo '+
        '    WHERE FT.PRD_REFER = '+QuotedStr(prd_refer)  ;
  OpenAux(sql) ;
  clone := TFDMemTable.Create(Self);
  try
    qaux.FetchAll;
     clone.Data  := qAux.Data;
    while not clone.Eof do
    begin
      //node := TcxTreeListNode.Create(cxTreeList1);
      node:= AddTreeListNode( APNode,
         [clone.FieldByName('prd_refer').AsString,
          clone.FieldByName('prd_descri').AsString,
          clone.FieldByName('pti_sigla').AsString,
          clone.FieldByName('prd_und').AsString,
          clone.FieldByName('FTI_UC').AsFloat / baseFormula,
          clone.FieldByName('PRD_PCUSTO').AsFloat,
          clone.FieldByName('TOTALITEM').AsFloat,
          clone.FieldByName('PRD_PVENDA').AsFloat ],0
         )  ;
      subitens(node,clone.FieldByName('prd_refer').AsString, baseFormula);
      clone.Next;
    end;
  finally
    clone.Free;
  end;


end;

end.
