unit uEtiquetasExpedicao2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,Vcl.ExtCtrls, BaseDBForm,
 Vcl.Samples.Spin, ppParameter, ppDesignLayer, ppStrtch, ppMemo, ppCtrls, ppPrnabl, ppClass, ppCache, ppBands, ppProd, ppReport, ppDB, ppComm, ppRelatv, ppDBPipe, Data.DB, Datasnap.DBClient,
  Data.DBXFirebird, Data.FMTBcd, Data.SqlExpr, ACBrEnterTab, ACBrBase, ACBrCalculadora, iniciodb, uteis, Vcl.Grids, Vcl.DBGrids, SYSTEM.StrUtils, ppBarCod, ppBarCode2D, frxClass, frxDBSet, ppVar,
  ppModule, raCodMod;

type
  TFrmEtiquetasExpedicao2 = class(TfrmBaseDB)
    grpMensagem: TGroupBox;
    edtMensagem: TEdit;
    BitImprimeEtiq: TBitBtn;
    BitEtiqFechar: TBitBtn;
    Gb_Estilo_Etiqueta: TGroupBox;
    rbModelo1: TRadioButton;
    prModelo1: TppReport;
    ppDetailBand1: TppDetailBand;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppParameterList1: TppParameterList;
    DsEtiqueta: TDataSource;
    CdsEtiqueta: TClientDataSet;
    CdsEtiquetaPRD_REFER: TStringField;
    CdsEtiquetaCLI_RAZAO: TStringField;
    CdsEtiquetaEMP_RAZAO: TStringField;
    CdsEtiquetaEMP_FONE: TStringField;
    CdsEtiquetaEMP_HOME: TStringField;
    CdsEtiquetaEMP_CGC: TStringField;
    CdsEtiquetaEMP_INSC: TStringField;
    CdsEtiquetaPRF_PRDDESCRI: TStringField;
    CdsEtiquetaPRF_QTDE: TFMTBCDField;
    CdsEtiquetaAMX_CODIGO: TStringField;
    CdsEtiquetaPED_CODIGO: TStringField;
    pipPedido: TppDBPipeline;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppDBText3: TppDBText;
    ppLabel3: TppLabel;
    ppDBText4: TppDBText;
    ppLabel4: TppLabel;
    ppDBText5: TppDBText;
    ppLabel5: TppLabel;
    ppDBText6: TppDBText;
    ppLabel6: TppLabel;
    ppDBText7: TppDBText;
    ppLabel7: TppLabel;
    ppDBText8: TppDBText;
    ppLabel8: TppLabel;
    ppDBText9: TppDBText;
    ppLabel10: TppLabel;
    ppDBText11: TppDBText;
    CdsEtiquetaEMP_LOGO: TBlobField;
    ppDBImage1: TppDBImage;
    pitens: TPanel;
    DBGridItens: TDBGrid;
    CdsEtiquetaQTDE_IMPRESSA: TFMTBCDField;
    CdsEtiquetaQTDE_ETQ: TIntegerField;
    cdsReport: TClientDataSet;
    cdsReportPRD_REFER: TStringField;
    cdsReportPRF_PRDDESCRI: TStringField;
    cdsReportCLI_RAZAO: TStringField;
    cdsReportEMP_RAZAO: TStringField;
    cdsReportEMP_FONE: TStringField;
    cdsReportEMP_HOME: TStringField;
    cdsReportEMP_CGC: TStringField;
    cdsReportEMP_INSC: TStringField;
    cdsReportPRF_QTDE: TFMTBCDField;
    cdsReportAMX_CODIGO: TStringField;
    cdsReportPED_CODIGO: TStringField;
    cdsReportEMP_LOGO: TBlobField;
    cdsReportQTDE_IMPRESSA: TFMTBCDField;
    dsreport: TDataSource;
    rbModelo2: TRadioButton;
    CdsEtiquetaPRDCO_CODIGO_ORIGINAL: TStringField;
    cdsReportPRDCO_CODIGO_ORIGINAL: TStringField;
    CdsEtiquetaCLI_CODIGO: TStringField;
    rbModelo3: TRadioButton;
    prModelo3: TppReport;
    ppDetailBand2: TppDetailBand;
    ppDBBarCode1: TppDBBarCode;
    ppDesignLayers2: TppDesignLayers;
    ppDesignLayer2: TppDesignLayer;
    ppParameterList2: TppParameterList;
    ppHeaderBand1: TppHeaderBand;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    lcidadeEstado: TppLabel;
    pp2DBarCode1: Tpp2DBarCode;
    prmodelo2: TppReport;
    ppColumnHeaderBand2: TppColumnHeaderBand;
    ppDetailBand4: TppDetailBand;
    MOD1_PRD_REFER: TppDBMemo;
    ppDBMemo2: TppDBMemo;
    barcoderandomico2: TppDBBarCode;
    ppColumnFooterBand2: TppColumnFooterBand;
    ppDesignLayers4: TppDesignLayers;
    ppDesignLayer4: TppDesignLayer;
    ppParameterList4: TppParameterList;
    ppDBMemo1: TppDBMemo;
    ppDBImage2: TppDBImage;
    ppLine1: TppLine;
    ppFooterBand1: TppFooterBand;
    ppDBText10: TppDBText;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLabel9: TppLabel;
    ppDBText12: TppDBText;
    ppLabel14: TppLabel;
    ppDBText13: TppDBText;
    rbModelo4: TRadioButton;
    prModelo4: TppReport;
    ppParameterList3: TppParameterList;
    cdsReportNF_NUM_NFE: TIntegerField;
    ppDetailBand3: TppDetailBand;
    ppLabel22: TppLabel;
    ppDBText22: TppDBText;
    ppDBImage3: TppDBImage;
    ppDBText14: TppDBText;
    ppLabel16: TppLabel;
    ppLabel15: TppLabel;
    ppDBText15: TppDBText;
    ppLabel17: TppLabel;
    ppDBText16: TppDBText;
    ppDBBarCode2: TppDBBarCode;
    ppDesignLayers3: TppDesignLayers;
    ppDesignLayer3: TppDesignLayer;
    CdsEtiquetaNF_NUM_NFE: TIntegerField;
    ppLabel18: TppLabel;
    ppDBText17: TppDBText;
    chkSerie: TCheckBox;
    rbModelo5: TRadioButton;
    prModelo5: TppReport;
    ppDetailBand5: TppDetailBand;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppDBText20: TppDBText;
    ppLabel21: TppLabel;
    ppDBText21: TppDBText;
    ppLabel23: TppLabel;
    ppDBText23: TppDBText;
    ppLabel24: TppLabel;
    ppDBText24: TppDBText;
    ppLabel25: TppLabel;
    ppDBText25: TppDBText;
    ppLabel26: TppLabel;
    ppDBText26: TppDBText;
    ppLabel27: TppLabel;
    ppDBText27: TppDBText;
    ppLabel28: TppLabel;
    ppDBText28: TppDBText;
    ppDBImage4: TppDBImage;
    ppDesignLayers5: TppDesignLayers;
    ppDesignLayer5: TppDesignLayer;
    ppParameterList5: TppParameterList;
    rbModelo6: TRadioButton;
    prModelo6: TppReport;
    ppDetailBand6: TppDetailBand;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppDBText31: TppDBText;
    ppLabel31: TppLabel;
    ppDBText32: TppDBText;
    ppLabel32: TppLabel;
    ppDBText33: TppDBText;
    ppLabel33: TppLabel;
    ppDBText34: TppDBText;
    ppLabel34: TppLabel;
    ppDBText35: TppDBText;
    ppLabel35: TppLabel;
    ppDBText36: TppDBText;
    ppLabel36: TppLabel;
    ppDBText37: TppDBText;
    ppLabel37: TppLabel;
    ppDBText38: TppDBText;
    ppDBImage5: TppDBImage;
    ppDesignLayers6: TppDesignLayers;
    ppDesignLayer6: TppDesignLayer;
    ppParameterList6: TppParameterList;
    ppLabel38: TppLabel;
    ppDBText39: TppDBText;
    rbModelo7: TRadioButton;
    CdsEtiquetaEMP_ENDERE: TStringField;
    CdsEtiquetaEMP_BAIRRO: TStringField;
    CdsEtiquetaEMP_CIDADE: TStringField;
    CdsEtiquetaEMP_UF: TStringField;
    CdsEtiquetaEMP_CEP: TStringField;
    CdsEtiquetaCLI_ENDERE: TStringField;
    CdsEtiquetaTRP_RAZAO: TStringField;
    cdsReportEMP_ENDERE: TStringField;
    cdsReportEMP_BAIRRO: TStringField;
    cdsReportEMP_CIDADE: TStringField;
    cdsReportEMP_UF: TStringField;
    cdsReportEMP_CEP: TStringField;
    cdsReportCLI_ENDERE: TStringField;
    cdsReportTRP_RAZAO: TStringField;
    cdsReportQTDE_ETQ: TIntegerField;
    cdsReportCLI_CODIGO: TStringField;
    prModelo7: TppReport;
    ppParameterList7: TppParameterList;
    cdsReportCLI_BAIRRO: TStringField;
    cdsReportCLI_CIDADE: TStringField;
    cdsReportCLI_UF: TStringField;
    cdsReportCLI_CEP: TStringField;
    CdsEtiquetaCLI_BAIRRO: TStringField;
    CdsEtiquetaCLI_CIDADE: TStringField;
    CdsEtiquetaCLI_UF: TStringField;
    CdsEtiquetaCLI_CEP: TStringField;
    ppDetailBand7: TppDetailBand;
    ppShape7: TppShape;
    ppShape4: TppShape;
    ppDBImage6: TppDBImage;
    ppShape6: TppShape;
    ppShape5: TppShape;
    ppShape3: TppShape;
    ppShape2: TppShape;
    ppShape1: TppShape;
    ppDBText40: TppDBText;
    ppDBText41: TppDBText;
    ppDBText42: TppDBText;
    ppDBText43: TppDBText;
    ppLabel42: TppLabel;
    ppDBText44: TppDBText;
    ppLabel43: TppLabel;
    ppDBText45: TppDBText;
    ppDBText46: TppDBText;
    ppDBText47: TppDBText;
    ppDBText48: TppDBText;
    ppLabel40: TppLabel;
    ppDBText50: TppDBText;
    ppDBText51: TppDBText;
    ppLabel41: TppLabel;
    ppLabel48: TppLabel;
    ppDBText52: TppDBText;
    ppDBText53: TppDBText;
    ppDBText54: TppDBText;
    ppDBText55: TppDBText;
    ppDBText56: TppDBText;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppLabel39: TppLabel;
    ppContador: TppLabel;
    ppTotal: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppShape8: TppShape;
    ppDBText57: TppDBText;
    ppLabel46: TppLabel;
    ppShape9: TppShape;
    ppDBText49: TppDBText;
    ppLabel47: TppLabel;
    raCodeModule1: TraCodeModule;
    ppDesignLayers7: TppDesignLayers;
    ppDesignLayer7: TppDesignLayer;
    rbModelo8: TRadioButton;
    prModelo8: TppReport;
    ppDetailBand8: TppDetailBand;
    ppShape10: TppShape;
    ppShape11: TppShape;
    ppDBImage7: TppDBImage;
    ppShape12: TppShape;
    ppShape13: TppShape;
    ppShape14: TppShape;
    ppShape15: TppShape;
    ppDBText58: TppDBText;
    ppDBText59: TppDBText;
    ppDBText60: TppDBText;
    ppDBText61: TppDBText;
    ppLabel52: TppLabel;
    ppDBText62: TppDBText;
    ppLabel53: TppLabel;
    ppDBText63: TppDBText;
    ppDBText64: TppDBText;
    ppDBText65: TppDBText;
    ppDBText66: TppDBText;
    ppLabel54: TppLabel;
    ppDBText67: TppDBText;
    ppDBText68: TppDBText;
    ppDBText69: TppDBText;
    ppDBText70: TppDBText;
    ppDBText71: TppDBText;
    ppDBText72: TppDBText;
    ppDBText73: TppDBText;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    ppLabel61: TppLabel;
    ppTotal8: TppLabel;
    ppLabel63: TppLabel;
    ppLabel64: TppLabel;
    ppShape17: TppShape;
    ppDBText74: TppDBText;
    ppLabel65: TppLabel;
    ppShape18: TppShape;
    ppDBText75: TppDBText;
    ppLabel66: TppLabel;
    raCodeModule2: TraCodeModule;
    ppDesignLayers8: TppDesignLayers;
    ppDesignLayer8: TppDesignLayer;
    ppParameterList8: TppParameterList;
    procedure BitEtiqFecharClick(Sender: TObject);
    procedure BitImprimeEtiqClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CdsEtiquetaQTDE_IMPRESSAChange(Sender: TField);
    procedure DBGridItensDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure CdsEtiquetaQTDE_IMPRESSAValidate(Sender: TField);
    procedure ppLabel11GetText(Sender: TObject; var Text: string);
    procedure ppLabel12GetText(Sender: TObject; var Text: string);
    procedure lcidadeEstadoGetText(Sender: TObject; var Text: string);
    procedure ppLabel13GetText(Sender: TObject; var Text: string);
    procedure chkSerieClick(Sender: TObject);
    procedure prModelo7BeforePrint(Sender: TObject);
    procedure ppTotal8GetText(Sender: TObject; var Text: string);
    private
    { Private declarations }

    vEmp: String;
    FPedido : string;

    procedure SetPedido (const aValue: string);
    procedure Setemp(const Value: String);
  private
   procedure buscaPedido;
  public
    { Public declarations }
    Property emp: String Read vEmp Write Setemp;
    property Pedido : string read fpedido write SetPedido;
    procedure CarregarEtiquetas;
    procedure CarregarEtiquetasMod2; // numeros de série
    var
      teste: string;
  end;

var
  FrmEtiquetasExpedicao2: TFrmEtiquetasExpedicao2;



implementation

{$R *.dfm}


procedure TFrmEtiquetasExpedicao2.BitEtiqFecharClick(Sender: TObject);
begin
     Close;
end;


procedure TFrmEtiquetasExpedicao2.BitImprimeEtiqClick(Sender: TObject);
begin
 if rbModelo1.Checked then
 begin
  CarregarEtiquetas;
	prModelo1.DeviceType := 'Screen';
	prModelo1.Print;
 end
 else if rbModelo2.Checked then
 begin
  CarregarEtiquetas;
	prModelo2.DeviceType := 'Screen';
	prModelo2.Print;
 end
 else if rbModelo3.Checked then
 begin
  CarregarEtiquetasMod2;
  pp2DBarCode1.Data  := DBInicio.Empresa.RAZAO;
	prModelo3.DeviceType := 'Screen';
	prModelo3.Print;
 end
 else if rbModelo4.Checked then
 begin
  CarregarEtiquetas;
	prModelo4.DeviceType := 'Screen';
	prModelo4.Print;
 end
 else if rbModelo5.Checked then
 begin
  CarregarEtiquetas;
	prModelo5.DeviceType := 'Screen';
	prModelo5.Print;
 end
 else if rbModelo6.Checked then
 begin
  CarregarEtiquetas;
	prModelo6.DeviceType := 'Screen';
	prModelo6.Print;
 end
 else if rbModelo7.Checked then
 begin
  CarregarEtiquetas;
	prModelo7.DeviceType := 'Screen';
	prModelo7.Print;
 end
 else if rbModelo8.Checked then
 begin
  CarregarEtiquetas;
	prModelo8.DeviceType := 'Screen';
	prModelo8.Print;
 end
 else
 begin
      uteis.aviso('Selecione um modelo de etiqueta.');
 end;

end;

procedure TFrmEtiquetasExpedicao2.buscaPedido;
begin
  // chkserie considerar a serie ou não, senão ele pode duplicar a lista
  OpenAux(
         ' SELECT  ' +
         '     P1.PED_CODIGO,  '+
         '     E1.EMP_RAZAO,       '+
         '     E1.EMP_FONE,        '+
         '     E1.EMP_CGC,         '+
         '     E1.EMP_HOME,        '+
         '     E1.EMP_INSC,        '+
         '     E1.EMP_ENDERE,      '+
         '     E1.EMP_BAIRRO,      '+
         '     E1.EMP_CIDADE,      '+
         '     E1.EMP_UF,          '+
         '     E1.EMP_CEP,         '+
         '     PR.PRD_REFER,       '+
         '     IT.PRF_PRDDESCRI,   '+
         '     E1.EMP_INSC,        '+
         '     CL.CLI_CODIGO,      '+
         '     CL.CLI_RAZAO,       '+
         '     IT.PRF_QTDE,        '+
         '     IT.PRF_PRODUTO_AGREGADO, ' +
         '     COALESCE((SELECT PRF_QTDE FROM PED_IT01 it2 WHERE it2.PRF_REGISTRO = it.PRF_REGISTRO_VINCULADO), 0) as QtdeKit, '+
         '     PR.AMX_CODIGO,      '+
         '     EMP_LOGO,           '+
         '     cl.CLI_CODIGO,      '+
         '     cl.CLI_ENDERE,      '+
         '     cl.CLI_BAIRRO,      '+
         '     cl.CLI_CIDADE,      '+
         '     cl.CLI_UF,          '+
         '     cl.CLI_CEP,         '+
         '     tr.TRP_RAZAO,      '+
         iif(chkSerie.Checked,' '''' as PRDCO_CODIGO_ORIGINAL,', '     PC.PRDCO_CODIGO_ORIGINAL, ') +
         '     nf.NF_NUM_NFE       '+
         ' FROM PED0000 p1         '+
         ' JOIN CLI0000 cl ON (cl.CLI_CODIGO = p1.CLI_CODIGO)  '+
         ' JOIN PED_IT01 IT ON (IT.PED_CODIGO = P1.PED_CODIGO  AND IT.EMP_CODIGO = p1.EMP_CODIGO)  '+
         ' JOIN PRD0000 PR ON (PR.PRD_CODIGO = IT.PRD_CODIGO)    '+
         ' JOIN EMP0000 E1 ON (E1.EMP_CODIGO = P1.EMP_CODIGO)  '+
         ' LEFT JOIN NF0001 nf ON (nf.EMP_CODIGO = p1.EMP_CODIGO AND p1.PED_CODIGO = nf.PED_CODIGO)'+
         ' LEFT JOIN TRP0000 tr ON(TR.TRP_CODIGO = p1.TRP_CODIGO) ' +
         iif(chkSerie.Checked,'', 'LEFT JOIN (SELECT DISTINCT PRDCO_CODIGO_ORIGINAL, prd_codigo from PRD_CODIGOORIGINAL PC) pc ON (PC.PRD_CODIGO = PR.PRD_CODIGO) ')+
         ' WHERE P1.PED_CODIGO = '+ QuotedStr(Pedido) +
         ' and p1.emp_codigo = '+ QuotedStr(DBInicio.Empresa.EMP_CODIGO)
  );
  qAux.First;
 if not (CdsEtiqueta.Active) then
    CdsEtiqueta.CreateDataSet;
 CdsEtiqueta.EmptyDataSet;
 while not qAux.Eof do
 begin
   CdsEtiqueta.Append;
   CdsEtiquetaPED_CODIGO.AsString := qAux.FieldByName('PED_CODIGO').AsString;
   CdsEtiquetaEMP_RAZAO.AsString := qAux.FieldByName('EMP_RAZAO').AsString;
   CdsEtiquetaEMP_FONE.AsString := MascaraFone(QAUX.FieldByName('EMP_FONE').AsString);
   CdsEtiquetaEMP_HOME.AsString := qaux.FieldByName('EMP_HOME').AsString;
   CdsEtiquetaEMP_CGC.AsString := MascaraCNPJ_CPF(qAux.FieldByName('EMP_CGC').AsString);
   CdsEtiquetaEMP_INSC.AsString := qAux.FieldByName('EMP_INSC').AsString;
   CdsEtiquetaEMP_ENDERE.AsString := qAux.FieldByName('EMP_ENDERE').AsString;
   CdsEtiquetaEMP_BAIRRO.AsString := qAux.FieldByName('EMP_BAIRRO').AsString;
   CdsEtiquetaEMP_CIDADE.AsString := qAux.FieldByName('EMP_CIDADE').AsString;
   CdsEtiquetaEMP_UF.AsString := qAux.FieldByName('EMP_UF').AsString;
   CdsEtiquetaEMP_CEP.AsString := qAux.FieldByName('EMP_CEP').AsString;
   CdsEtiquetaPRD_REFER.AsString:= qaux.FieldByName('PRD_REFER').AsString;
   CdsEtiquetaPRF_PRDDESCRI.AsString := QAUX.FieldByName('PRF_PRDDESCRI').AsString;
   CdsEtiquetaCLI_RAZAO.AsString := qAux.FieldByName('CLI_RAZAO').AsString;

//   CdsEtiquetaPRF_QTDE.AsFloat := qAux.FieldByName('prf_qtde').AsFloat;   //quantidades de pedidos
   if qAux.fieldByName('PRF_PRODUTO_AGREGADO').AsString = 'S' then
      CdsEtiquetaPRF_QTDE.AsFloat := qAux.fieldByName('PRF_QTDE').AsFloat * qAux.fieldByName('QTDEKIT').AsFloat
   else
      CdsEtiquetaPRF_QTDE.AsFloat := qAux.FieldByName('prf_qtde').AsFloat;

   CdsEtiquetaAMX_CODIGO.AsString := qaux.FieldByName('AMX_CODIGO').AsString;
   CdsEtiquetaQTDE_IMPRESSA.AsFloat := CdsEtiquetaPRF_QTDE.AsFloat;
   CdsEtiquetaPRDCO_CODIGO_ORIGINAL.AsString := qAux.FieldByName('PRDCO_CODIGO_ORIGINAL').AsString;
   CdsEtiquetaCLI_CODIGO.AsString := qAux.FieldByName('CLI_CODIGO').AsString;
   cdsEtiquetaNF_NUM_NFE.AsString := qaux.FieldByName('NF_NUM_NFE').AsString;
   CdsEtiquetaCLI_ENDERE.AsString := qAux.FieldByName('CLI_ENDERE').AsString;
   CdsEtiquetaCLI_BAIRRO.AsString := qAux.FieldByName('CLI_BAIRRO').AsString;
   CdsEtiquetaCLI_CIDADE.AsString := qAux.FieldByName('CLI_CIDADE').AsString;
   CdsEtiquetaCLI_UF.AsString := qAux.FieldByName('CLI_UF').AsString;
   CdsEtiquetaCLI_CEP.AsString := qAux.FieldByName('CLI_CEP').AsString;
   CdsEtiquetaTRP_RAZAO.AsString := qAux.FieldByName('TRP_RAZAO').AsString;
   if not qAux.FieldByName('EMP_LOGO').IsNull then
     CdsEtiquetaEMP_LOGO.Value := qAux.FieldByName('EMP_LOGO').Value;
   CdsEtiqueta.Post;
   qAux.Next;
 end;
end;

procedure TFrmEtiquetasExpedicao2.CarregarEtiquetas;
var
  i, restam : integer;
  impresso : array of integer;
begin
 try
   CdsEtiqueta.DisableControls;
   CdsEtiqueta.Filtered := False;
   CdsEtiqueta.Filter :=  'QTDE_IMPRESSA > 0';
   CdsEtiqueta.Filtered := True;
   if CdsEtiqueta.IsEmpty then
     raise Exception.Create('Nenhuma quantidade a ser impressa foi digitada maior 0')
   else
   begin
     cdsReport.Close;
     cdsReport.CreateDataSet;
     cdsReport.EmptyDataSet;
   end;
   CdsEtiqueta.First;
   while not CdsEtiqueta.eof do
   begin
     SetLength(impresso, CdsEtiquetaQTDE_ETQ.AsInteger + 1);
     restam := CdsEtiquetaPRF_QTDE.AsInteger;
     impresso[1] := CdsEtiquetaQTDE_IMPRESSA.AsInteger;
     for i := 1 to CdsEtiquetaQTDE_ETQ.AsInteger -1 do
     begin
       if restam > CdsEtiquetaQTDE_IMPRESSA.AsInteger then
         impresso[i] := CdsEtiquetaQTDE_IMPRESSA.AsInteger;
       restam := CdsEtiquetaPRF_QTDE.AsInteger - (CdsEtiquetaQTDE_IMPRESSA.AsInteger * (i));
       if (restam <= CdsEtiquetaQTDE_IMPRESSA.AsInteger) and (i + 1 = CdsEtiquetaQTDE_ETQ.AsInteger) then
       begin
         impresso[i + 1] := restam;
         if restam <= 0 then
         begin
           MessageDlg('O cálculo das etiquetas do produto ' + CdsEtiquetaPRD_REFER.AsString + ' - ' + CdsEtiquetaPRF_PRDDESCRI.AsString + #13 + 'está incorreto, favor corrigir', mtWarning, [mbOk], 0);
           Abort;
         end;
         break
       end;
     end;
     for i := 1 to CdsEtiquetaQTDE_ETQ.AsInteger do
     begin
       cdsReport.Append;
       cdsReportPED_CODIGO.AsString := CdsEtiquetaPED_CODIGO.AsString;
       cdsReportEMP_RAZAO.AsString := CdsEtiquetaEMP_RAZAO.AsString ;
       cdsReportEMP_FONE.AsString := CdsEtiquetaEMP_FONE.AsString ;
       cdsReportEMP_HOME.AsString:= CdsEtiquetaEMP_HOME.AsString ;
       cdsReportEMP_CGC.AsString := CdsEtiquetaEMP_CGC.AsString ;
       cdsReportEMP_INSC.AsString :=  CdsEtiquetaEMP_INSC.AsString;
       cdsReportEMP_ENDERE.AsString :=  CdsEtiquetaEMP_ENDERE.AsString;
       cdsReportEMP_BAIRRO.AsString :=  CdsEtiquetaEMP_BAIRRO.AsString;
       cdsReportEMP_CIDADE.AsString :=  CdsEtiquetaEMP_CIDADE.AsString;
       cdsReportEMP_UF.AsString :=  CdsEtiquetaEMP_UF.AsString;
       cdsReportEMP_CEP.AsString :=  CdsEtiquetaEMP_CEP.AsString;
       cdsReportPRD_REFER.AsString:= CdsEtiquetaPRD_REFER.AsString;
       cdsReportPRF_PRDDESCRI.AsString := CdsEtiquetaPRF_PRDDESCRI.AsString;
       cdsReportCLI_RAZAO.AsString :=  CdsEtiquetaCLI_RAZAO.AsString ;
       cdsReportQTDE_IMPRESSA.AsFloat :=  impresso[i]; // CdsEtiquetaQTDE_IMPRESSA.AsFloat;
       cdsReportPRDCO_CODIGO_ORIGINAL.AsString := CdsEtiquetaPRDCO_CODIGO_ORIGINAL.AsString;
       cdsReportCLI_CODIGO.AsString := CdsEtiquetaCLI_CODIGO.AsString ;
       cdsReportNF_NUM_NFE.AsString := CdsEtiquetaNF_NUM_NFE.AsString;
       cdsReportCLI_ENDERE.AsString := CdsEtiquetaCLI_ENDERE.AsString;
       cdsReportCLI_BAIRRO.AsString := CdsEtiquetaCLI_BAIRRO.AsString;
       cdsReportCLI_CIDADE.AsString := CdsEtiquetaCLI_CIDADE.AsString;
       cdsReportCLI_UF.AsString := CdsEtiquetaCLI_UF.AsString;
       cdsReportCLI_CEP.AsString := CdsEtiquetaCLI_CEP.AsString;
       cdsReportTRP_RAZAO.AsString := CdsEtiquetaTRP_RAZAO.AsString;
       cdsReportAMX_CODIGO.AsString := CdsEtiquetaAMX_CODIGO.AsString ;
       if not CdsEtiquetaEMP_LOGO.IsNull then
         cdsReportEMP_LOGO.Value := CdsEtiquetaEMP_LOGO.Value ;
       cdsReport.Post;
     end;

    CdsEtiqueta.Next;
   end;

 finally
  CdsEtiqueta.Filtered := False;
  CdsEtiqueta.EnableControls;
 end;

end;

procedure TFrmEtiquetasExpedicao2.CarregarEtiquetasMod2;
begin
 try
   CdsEtiqueta.DisableControls;
   CdsEtiqueta.Filtered := False;
   cdsEtiqueta.Filter :=  'QTDE_IMPRESSA > 0';
   CdsEtiqueta.Filtered := True;
   if CdsEtiqueta.IsEmpty then
     raise Exception.Create('Nenhuma quantidade a ser impressa foi digitada maior 0')
   else
   begin
     cdsReport.Close;
     cdsReport.CreateDataSet;
     cdsReport.EmptyDataSet;
   end;
   CdsEtiqueta.First;
   while not CdsEtiqueta.eof do
   begin
    OpenAux(' SELECT PRDCO_CODIGO_ORIGINAL FROM PRD_CODIGOORIGINAL pc JOIN PRD0000 pr ON (pr.PRD_CODIGO = pc.PRD_CODIGO) ' +
            ' WHERE PED_CODIGO IS NOT null '  +
            'AND prd_refer = '+QuotedStr(CdsEtiquetaPRD_REFER.AsString)  +
            'AND PED_CODIGO = '+QuotedStr(CdsEtiquetaPED_CODIGO.AsString) +
            'AND CLI_CODIGO = '+ QuotedStr(CdsEtiquetaCLI_CODIGO.AsString)
          );
    if not qAux.IsEmpty then
    begin
     qAux.First;
     while not qAux.Eof do
     begin
       cdsReport.Append;
       cdsReportPRD_REFER.AsString:=  CdsEtiquetaPRD_REFER.AsString;
       cdsReportPRF_PRDDESCRI.AsString := CdsEtiquetaPRF_PRDDESCRI.AsString;
       cdsReportCLI_RAZAO.AsString :=  CdsEtiquetaCLI_RAZAO.AsString ;
       cdsReportEMP_RAZAO.AsString := CdsEtiquetaEMP_RAZAO.AsString ;
       cdsReportEMP_FONE.AsString := CdsEtiquetaEMP_FONE.AsString ;
       cdsReportEMP_HOME.AsString:= CdsEtiquetaEMP_HOME.AsString ;
       cdsReportEMP_CGC.AsString := CdsEtiquetaEMP_CGC.AsString ;
       cdsReportEMP_INSC.AsString :=  CdsEtiquetaEMP_INSC.AsString;
       cdsReportQTDE_IMPRESSA.AsFloat :=  CdsEtiquetaQTDE_IMPRESSA.AsFloat;
       cdsReportAMX_CODIGO.AsString := CdsEtiquetaAMX_CODIGO.AsString ;
       cdsReportPED_CODIGO.AsString := CdsEtiquetaPED_CODIGO.AsString;
       cdsReportPRDCO_CODIGO_ORIGINAL.AsString := qAux.FieldByName('PRDCO_CODIGO_ORIGINAL').AsString;
       cdsReportNF_NUM_NFE.AsString := CdsEtiquetaNF_NUM_NFE.AsString;
          if not CdsEtiquetaEMP_LOGO.IsNull then
         cdsReportEMP_LOGO.Value := CdsEtiquetaEMP_LOGO.Value ;
       cdsReport.Post;
      qAux.Next;
     end;

    end;
    CdsEtiqueta.Next;
   end;
 finally
  CdsEtiqueta.EnableControls;
 end;
end;

procedure TFrmEtiquetasExpedicao2.CdsEtiquetaQTDE_IMPRESSAChange(Sender: TField);
begin
  inherited;
  if TField(sender).AsFloat > 0  then
  begin
    if (CdsEtiquetaPRF_QTDE.AsFloat/ TField(sender).AsFloat) = trunc(CdsEtiquetaPRF_QTDE.AsFloat/ TField(sender).AsFloat) then
      CdsEtiquetaQTDE_ETQ.AsInteger := trunc( CdsEtiquetaPRF_QTDE.AsFloat/ TField(sender).AsFloat)
    else
      CdsEtiquetaQTDE_ETQ.AsInteger := trunc(CdsEtiquetaPRF_QTDE.AsFloat/ TField(sender).AsFloat) + 1;

  end
  else
   CdsEtiquetaQTDE_ETQ.AsInteger := 0 ;
end;

procedure TFrmEtiquetasExpedicao2.CdsEtiquetaQTDE_IMPRESSAValidate(Sender: TField);
begin
  inherited;
  if CdsEtiquetaPRF_QTDE.AsFloat < Tfield(sender).asfloat then
     raise Exception.Create('O campo maior que quantidade do pedido');

  if Tfield(sender).asfloat < 0  then
        raise Exception.Create('Negativo não né!');


end;

procedure TFrmEtiquetasExpedicao2.chkSerieClick(Sender: TObject);
begin
  inherited;
   buscapedido;
end;

procedure TFrmEtiquetasExpedicao2.DBGridItensDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  //inherited;
  if MatchStr(Column.FieldName,['QTDE_ETQ','QTDE_IMPRESSA'])  then
  begin

    tdbgrid(sender).Color := clInfoBk ;

    tdbgrid(sender).DefaultDrawDataCell(Rect,column.Field,state);
  end;

end;

procedure TFrmEtiquetasExpedicao2.FormCreate(Sender: TObject);
begin
 Inherited;
 rbModelo1.Checked:= true;
end;

procedure TFrmEtiquetasExpedicao2.FormShow(Sender: TObject);
begin
  inherited;
  buscaPedido;

end;

procedure TFrmEtiquetasExpedicao2.lcidadeEstadoGetText(Sender: TObject; var Text: string);
begin
  inherited;
  text:= DBInicio.Empresa.CIDADE +'-'+ DBInicio.Empresa.UF
end;

procedure TFrmEtiquetasExpedicao2.ppLabel11GetText(Sender: TObject; var Text: string);
begin
  inherited;
  Text:= DBInicio.Empresa.ENDERECO;
end;

procedure TFrmEtiquetasExpedicao2.ppLabel12GetText(Sender: TObject; var Text: string);
begin
  inherited;
  Text:= DBInicio.Empresa.CEP;
end;

procedure TFrmEtiquetasExpedicao2.ppLabel13GetText(Sender: TObject; var Text: string);
begin
  inherited;
  Text:= DBInicio.Empresa.FONE;
end;

procedure TFrmEtiquetasExpedicao2.ppTotal8GetText(Sender: TObject; var Text: string);
begin
  inherited;
  Text := IntToStr(cdsReport.RecordCount);
end;

procedure TFrmEtiquetasExpedicao2.prModelo7BeforePrint(Sender: TObject);
begin
  inherited;
  ppTotal.Caption := IntToStr(cdsReport.RecordCount);
end;

procedure TFrmEtiquetasExpedicao2.Setemp(const Value: String);
begin
     vEmp := value;
end;

procedure TFrmEtiquetasExpedicao2.SetPedido(const aValue: string);
begin
  FPedido := aValue;
end;

end.
