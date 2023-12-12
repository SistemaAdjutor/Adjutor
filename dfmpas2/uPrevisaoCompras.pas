unit uPrevisaoCompras;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBPesquisaFDAC, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  Data.DB, cxDBData, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Phys.FBDef, FireDAC.UI.Intf, FireDAC.VCLUI.Wait, FireDAC.VCLUI.Error, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.FB, ACBrCalculadora, frxClass, Vcl.Menus,
  FireDAC.Comp.Client, FireDAC.Comp.UI, FireDAC.Phys.IBBase, FireDAC.Comp.DataSet, cxLocalization, ACBrBase, ACBrEnterTab, JvExControls, JvArrowButton, Vcl.StdCtrls, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, Vcl.Buttons, Vcl.ExtCtrls, Vcl.ComCtrls, Datasnap.DBClient, system.StrUtils, frxDBSet,System.Threading,
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
Type
  TprodutoPrincipal =  record
     prd_refer :string;
     prd_codigo : string;
     descricao : string;
     Unidade  :string;
     Quantidade : double;

  end;
type
  TFrmPrevisaoCompras = class(TfrmBaseDBPesquisaFDAC)
    cdsPrevisao: TClientDataSet;
    cdsPrevisaoPRD_REFER: TStringField;
    cdsPrevisaoPRD_DESCRI: TStringField;
    cdsPrevisaoPRD_UND: TStringField;
    cdsPrevisaoESTOQUEDISPONIVEL: TFMTBCDField;
    cdsPrevisaoEstoqueMinimo: TFMTBCDField;
    cdsPrevisaoDemanda: TFMTBCDField;
    cdsPrevisaoPED_CODIGO: TStringField;
    cdsPrevisaoPED_DTENTRADA: TSQLTimeStampField;
    cdsPrevisaoCLI_CODIGO: TStringField;
    cdsPrevisaoCLI_RAZAO: TStringField;
    cdsPrevisaoDTENTREGA: TSQLTimeStampField;
    cdsPrevisaoPRD_CODIGO: TStringField;
    cdsSumarizado: TClientDataSet;
    cdsSumarizadoPRD_CODIGO: TStringField;
    cdsSumarizadoPRD_REFER: TStringField;
    cdsSumarizadoPRD_DESCRI: TStringField;
    cdsSumarizadoPRD_UND: TStringField;
    cdsSumarizadoESTOQUEDISPONIVEL: TFMTBCDField;
    cdsSumarizadoEstoqueMinimo: TFMTBCDField;
    cdsSumarizadoDemanda: TFMTBCDField;
    cdsPrevisaoPRD_PCUSTO: TFMTBCDField;
    cdsSumarizadoPRD_PCUSTO: TFMTBCDField;
    dsSumarizado: TDataSource;
    dsPrevisao: TDataSource;
    cxgrd1DBTableView1PRD_CODIGO: TcxGridDBColumn;
    cxgrd1DBTableView1PRD_REFER: TcxGridDBColumn;
    cxgrd1DBTableView1PRD_DESCRI: TcxGridDBColumn;
    cxgrd1DBTableView1PRD_UND: TcxGridDBColumn;
    cxgrd1DBTableView1ESTOQUEDISPONIVEL: TcxGridDBColumn;
    cxgrd1DBTableView1PRD_PCUSTO: TcxGridDBColumn;
    cxgrd1DBTableView1EstoqueMinimo: TcxGridDBColumn;
    cxgrd1DBTableView1Demanda: TcxGridDBColumn;
    cxgrd1Level1: TcxGridLevel;
    cxgrd1DBTableView2: TcxGridDBTableView;
    cxgrd1DBTableView2PRD_CODIGO: TcxGridDBColumn;
    cxgrd1DBTableView2PRD_REFER: TcxGridDBColumn;
    cxgrd1DBTableView2PRD_DESCRI: TcxGridDBColumn;
    cxgrd1DBTableView2PRD_UND: TcxGridDBColumn;
    cxgrd1DBTableView2PED_CODIGO: TcxGridDBColumn;
    cxgrd1DBTableView2PED_DTENTRADA: TcxGridDBColumn;
    cxgrd1DBTableView2DTENTREGA: TcxGridDBColumn;
    cxgrd1DBTableView2CLI_CODIGO: TcxGridDBColumn;
    cxgrd1DBTableView2CLI_RAZAO: TcxGridDBColumn;
    pmImpressao: TPopupMenu;
    ListadeMatriaprima1: TMenuItem;
    RelatrioAnaltico1: TMenuItem;
    cdsSumarizadoValorTotal: TFMTBCDField;
    cxgrd1DBTableView1ValorTotal: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    frxLRelatorios: TfrxReport;
    frxDBPrevisao: TfrxDBDataset;
    frxDBSumarizado: TfrxDBDataset;
    cdsPrevisaoPrd_codigoPrincipal: TStringField;
    cdsPrevisaoPRD_ReferPrincipal: TStringField;
    cdsPrevisaoPrd_UndPrincipal: TStringField;
    cdsPrevisaoQuantPrincipal: TFMTBCDField;
    cdsPrevisaoPRD_DescriPrincipal: TStringField;
    cxgrd1DBTableView2Prd_codigoPrincipal: TcxGridDBColumn;
    cxgrd1DBTableView2PRD_ReferPrincipal: TcxGridDBColumn;
    cxgrd1DBTableView2Prd_UndPrincipal: TcxGridDBColumn;
    cxgrd1DBTableView2QuantPrincipal: TcxGridDBColumn;
    cxgrd1DBTableView2PRD_DescriPrincipal: TcxGridDBColumn;
    cdsSumarizadoQuantComprar: TFMTBCDField;
    cdsSumarizadoValorComprar: TFMTBCDField;
    cxgrd1DBTableView1QuantComprar: TcxGridDBColumn;
    cxgrd1DBTableView1ValorComprar: TcxGridDBColumn;
    cdsPrevisaotipo: TStringField;
    cdsSumarizadoTIPO: TStringField;
    cxgrd1DBTableView1TIPO: TcxGridDBColumn;
    cbSemEstoque: TCheckBox;
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cdsSumarizadoCalcFields(DataSet: TDataSet);
    procedure cxgrd1DBTableView1ESTOQUEDISPONIVELStylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure ListadeMatriaprima1Click(Sender: TObject);
    procedure RelatrioAnaltico1Click(Sender: TObject);
    procedure frxLRelatoriosGetValue(const VarName: string; var Value: Variant);
    procedure FormCreate(Sender: TObject);
    procedure cbSemEstoqueClick(Sender: TObject);
  private
    ProdutoPrincipal : TprodutoPrincipal;
    fenvase : boolean;
  public
    procedure FichaTecnica( const ped_codigo, prd_codigo, prd_refer, cli_codigo, cliente : string; const DataEntrada,DataEntrega : TDateTime; qtdeprd : double;const iop_codigo : integer)  ;
    procedure Sumarizar;
    property Envase : boolean read fenvase write fenvase;
  end;

var
  FrmPrevisaoCompras: TFrmPrevisaoCompras;

implementation


uses animacao, uteis, InicioDB;

{$R *.dfm}

procedure TFrmPrevisaoCompras.cbSemEstoqueClick(Sender: TObject);
begin
  inherited;
  FormShow(Sender);
end;

procedure TFrmPrevisaoCompras.cdsSumarizadoCalcFields(DataSet: TDataSet);
begin
  inherited;
  cdsSumarizadoValorTotal.AsFloat := cdsSumarizadoPRD_PCUSTO.AsFloat * cdsSumarizadoDemanda.AsFloat;
  if  cdsSumarizadoDemanda.AsFloat >  cdsSumarizadoESTOQUEDISPONIVEL.AsFloat then
    cdsSumarizadoQuantComprar.AsFloat := cdsSumarizadoDemanda.AsFloat - cdsSumarizadoESTOQUEDISPONIVEL.AsFloat
  else if cdsSumarizadoESTOQUEDISPONIVEL.AsFloat<=0 then
     cdsSumarizadoQuantComprar.AsFloat := cdsSumarizadoDemanda.AsFloat
  else if  cdsSumarizadoESTOQUEDISPONIVEL.AsFloat > cdsSumarizadoDemanda.AsFloat then
    cdsSumarizadoQuantComprar.AsFloat := 0;


  cdsSumarizadoValorComprar.AsFloat := cdsSumarizadoQuantComprar.AsFloat * cdsSumarizadoPRD_PCUSTO.AsFloat  ;
end;

procedure TFrmPrevisaoCompras.cxgrd1DBTableView1ESTOQUEDISPONIVELStylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
  var AStyle: TcxStyle);
var  compra : double;
begin
  inherited;
   if VarIsNull(ARecord.Values[cxgrd1DBTableView1QuantComprar.Index]) then
    compra := 0
   else
    compra :=  ARecord.Values[cxgrd1DBTableView1QuantComprar.Index]   ;

   //estoque insuficiente
   if  ((compra )  > 0 )  then
     AStyle := cxStyle2
   else
     AStyle := cxStyle1;


end;

procedure TFrmPrevisaoCompras.FichaTecnica(const ped_codigo, prd_codigo, prd_refer, cli_codigo, cliente: string; const DataEntrada, DataEntrega: TDateTime; qtdeprd: double; const iop_codigo : integer);
var sql : string;
    cloneFicha : TFDMemTable;
begin
 if envase then
 begin
  sql := 'SELECT PR.PRD_CODIGO, PR.PRD_REFER, PR.PRD_DESCRI, pr.PRD_UND, pr.prd_pvenda,   '+
         '(SELECT count(*) FROM FTC_IT01 ft WHERE pr.prd_refer = ft.PRD_REFER) qtFicha, '+
         '   MP_CONSUMOTOTAL qprd,                                                        '+
         '    cast(case                                                                   '+
         '          WHEN PRMT.pmt_calcularpv = ''0'' THEN                                 '+
         '         pr.PRD_PCUSTO                                                          '+
         '        WHEN PRMT.pmt_calcularpv = ''1'' THEN                                   '+
         '         pr.prd_custocomipi                                                     '+
         '        WHEN PRMT.pmt_calcularpv = ''2'' THEN                                   '+
         '         pr.PRD_PMEDIO                                                          '+
         '      END as numeric(15,4)) AS PRD_PCUSTO,                                      '+
         '      cast(                                                                     '+
         '      (case                                                                     '+
         '        WHEN PRMT.pmt_calcularpv = ''0'' THEN                                   '+
         '         pr.PRD_PCUSTO                                                          '+
         '        WHEN PRMT.pmt_calcularpv = ''1'' THEN                                   '+
         '         pr.prd_custocomipi                                                     '+
         '        WHEN PRMT.pmt_calcularpv = ''2'' THEN                                   '+
         '         pr.PRD_PMEDIO                                                          '+
         '      END  * MP_CONSUMOTOTAL) as numeric(15,4)) AS TotalItem, tipo.PTI_SIGLA    '+
         '    FROM MATERIAPRIMA_ORDEMPRODUCAO mp                                          '+
         '    JOIN PRD0000 pr ON (pr.PRD_CODIGO = MP.PRD_CODIGO )                         '+
         '    join PRD_TIPO tipo ON Pr.pti_codigo = tipo.PTI_CODIGO                       '+
         '    left JOIN prmt0001 PRMT ON PRMT.emp_codigo = Pr.emp_codigo                  '+
         '    WHERE IOP_CODIGO = '+IntToStr(iop_codigo);

 end
 else
   sql :=' SELECT  pr1.PRD_CODIGO , '+
          '          pr1.PRD_DESCRI , '+
          '          pr1.prd_Refer ,  '+
          '         pr1.PRD_UND, pr1.prd_pvenda, 0 qtFicha, '+
          '  COALESCE(dpr.DEP_QTDE_PRODUCAO,FT.fti_uc/fc.FTC_BASEFORMULA) qprd,  ' +
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
          ' END  * Ft.fti_uc /fc.FTC_BASEFORMULA) as DOUBLE PRECISION) AS TotalItem, tipo.PTI_SIGLA    '+
          '    FROM FTC_IT01 ft                                                 '+
          '    JOIN FTC0000 fc on (fc.prd_refer = ft.PRD_REFER )                '+
          '    JOIN PRD0000 pr1 ON pr1.prd_refer = ft.PRD_REFER_ITENS           '+
          '    join PRD_TIPO tipo ON Pr1.pti_codigo = tipo.PTI_CODIGO           '+
          '    left JOIN prmt0001 PRMT ON PRMT.emp_codigo = Pr1.emp_codigo      '+
          '    LEFT JOIN DEMANDA_PRODUCAO dpr ON (dpr.FTI_REGISTRO = ft.FTI_REGISTRO AND ped_codigo = '  +QuotedStr(ped_codigo) +')'+
          '    WHERE FT.PRD_REFER = '+QuotedStr(prd_refer);
  OpenAux(sql);
  qAux.FetchAll;
  cloneFicha := TFDMemTable.Create(Self);
  cloneFicha.Data := qAux.Data;
  try
    cloneFicha.First;
    while not cloneFicha.Eof do
    begin
      // se for pa e pi kt abrir até chegar mp
      if not envase and DBInicio.Empresa.Bpmt_gerarsubordens AND (MatchStr(cloneFicha.FieldByName('PTI_SIGLA').AsString, ['PA','PI','KT']))   then
       FichaTecnica(ped_codigo,
                   cloneFicha.FieldByName('PRD_CODIGO').AsString,
                   cloneFicha.FieldByName('PRD_REFER').AsString,
                   cli_codigo,
                   cliente,
                   DataEntrada,
                   DataEntrega,
                   qtdeprd * cloneFicha.FieldByName('qprd').AsFloat,   /// quantidade produção * uc
                   0
                   )
      else
      begin
         cdsPrevisao.Insert;
         cdsPrevisaoPRD_REFER.AsString :=   cloneFicha.FieldByName('PRD_REFER').AsString;
         cdsPrevisaoPRD_CODIGO.AsString :=  cloneFicha.FieldByName('PRD_CODIGO').AsString;
         cdsPrevisaoPRD_DESCRI.AsString :=  cloneFicha.FieldByName('PRD_DESCRI').AsString;
         cdsPrevisaoPRD_UND.AsString :=  cloneFicha.FieldByName('PRD_UND').AsString;
         cdsPrevisaoDemanda.AsFloat :=  qtdeprd * cloneFicha.FieldByName('qprd').AsFloat;
         cdsPrevisaoPED_CODIGO.AsString := ped_codigo;
         cdsPrevisaoPED_DTENTRADA.AsDateTime :=  DataEntrada;
         cdsPrevisaoDTENTREGA.AsDateTime := DataEntrega;
         cdsPrevisaoCLI_CODIGO.AsString := cli_codigo;
         cdsPrevisaoCLI_RAZAO.AsString  := cliente;
         cdsPrevisaoPRD_PCUSTO.AsFloat  :=  cloneFicha.FieldByName('PRD_PCUSTO').AsFloat;
         cdsPrevisaoPrd_codigoPrincipal.AsString := ProdutoPrincipal.prd_codigo;
         cdsPrevisaoPRD_ReferPrincipal.AsString := ProdutoPrincipal.prd_refer;
         cdsPrevisaoPrd_UndPrincipal.AsString := ProdutoPrincipal.Unidade;
         cdsPrevisaoPRD_DescriPrincipal.AsString := ProdutoPrincipal.descricao;
         cdsPrevisaoQuantPrincipal.AsFloat := ProdutoPrincipal.Quantidade;
         cdsPrevisaotipo.AsString := iif(cloneFicha.FieldByName('qtFicha').AsInteger >0,'PRODUZIR','COMPRAR');
         cdsPrevisao.Post;
      end;

      cloneFicha.Next;
    end;

  finally
    cloneFicha.Free;
  end;


end;

procedure TFrmPrevisaoCompras.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TFrmPrevisaoCompras.FormCreate(Sender: TObject);
begin
  inherited;
  Envase := False;
  Left := 0;
  Top := 40;

end;

procedure TFrmPrevisaoCompras.FormDestroy(Sender: TObject);
begin
  inherited;
  FrmPrevisaoCompras := nil;
end;

procedure TFrmPrevisaoCompras.FormShow(Sender: TObject);
var clone : TFDMemTable;
    Task: ITask;
    iop_codigo : integer;
begin
  inherited;

  cdsSumarizadoESTOQUEDISPONIVEL.DisplayFormat := '###,###,##0.'+StrZero('0', dbInicio.Empresa.fPMT_QTDE_DEC_PED);
  cdsSumarizadoEstoqueMinimo.DisplayFormat  := '###,###,##0.'+StrZero('0', dbInicio.Empresa.fPMT_QTDE_DEC_PED);
  cdsSumarizadoDemanda.DisplayFormat := '###,###,##0.'+StrZero('0', dbInicio.Empresa.fPMT_QTDE_DEC_PED);
  cdsSumarizadoPRD_PCUSTO.DisplayFormat := '###,###,##0.'+StrZero('0', dbInicio.Empresa.fPMT_QTDE_DEC_PED);
  cdsPrevisaoQuantPrincipal.DisplayFormat :=  '###,###,##0.'+StrZero('0', dbInicio.Empresa.fPMT_QTDE_DEC_PED);
  cdsSumarizadoQuantComprar.DisplayFormat := '###,###,##0.'+StrZero('0', dbInicio.Empresa.fPMT_QTDE_DEC_PED);
  cxgrd1DBTableView1TIPO.Visible := envase;
   cdsSumarizadoValorTotal.DisplayFormat := '###,###,##0.'+StrZero('0', 2);
  cdsSumarizadoValorComprar.DisplayFormat :=  '###,###,##0.'+StrZero('0', 2);

  if Envase then
    self.Caption := 'Previsão de faltas'
  else
    self.Caption := 'Previsão de compras';
  fmAnimacao := TfmAnimacao.Create(application);
  clone := TFDMemTable.Create(Self);
  cdsPrevisao.Close;
  cdsPrevisao.CreateDataSet;
  cdsSumarizado.Close;
  cdsSumarizado.CreateDataSet;
  try
    if envase then
    begin
      OpenAux('SELECT pr.prd_codigo, pr.PRD_REFER, pr.PRD_UND, tp.PTI_SIGLA, pr.PRD_DESCRI,   '+
              ' IOP_QUANTIDADE QTDEPRD ,                                                                '+
              ' opr.ped_codigo, pe.PED_DTENTRADA,                                                        '+
              ' COALESCE(IOP_DTENTREGA,CAST(PE.PED_DTSAIDA AS DATE)) DTENTREGA,                         '+
              ' pe.CLI_CODIGO, cl.cli_razao, iop.iop_codigo                                             '+
              '  FROM ITEM_ORDEMPRODUCAO IOP                                                            '+
              '  JOIN ORDEMPRODUCAO opr ON (opr.OPR_CODIGO = iop.OPR_CODIGO AND ORE_CODIGO IS NOT null AND IOP_STATUS_ENVASE <> ''F'' ) '+
              '  JOIN PRD0000 PR ON (IOP.PRD_CODIGO = PR.PRD_CODIGO)                                   '+
              '  JOIN prd_tipo tp ON (tp.PTI_CODIGO = pr.PTI_CODIGO)                                   '+
              '  LEFT JOIN PED0000 pe ON (pe.PED_CODIGO = opr.PED_CODIGO AND opr.EMP_CODIGO = pe.EMP_CODIGO)'+
              '  LEFT JOIN CLI0000 cl ON (cl.CLI_CODIGO = pe.CLI_CODIGO) ' );
      iop_codigo := qaux.FieldByName('iop_codigo').AsInteger  ;
    end
   else
   begin
    OpenAux('SELECT dep.prd_codigo, pr.PRD_REFER, pr.PRD_UND, tp.PTI_SIGLA, pr.PRD_DESCRI,              '+
            ' CASE WHEN DEP_QTDE_PRODUCAO IS NULL OR  DEP_QTDE_PRODUCAO =0 THEN PRF_QTDE  '+
            '  ELSE DEP_QTDE_PRODUCAO END QTDEPRD ,                                        '+
            ' it.ped_codigo, pe.PED_DTENTRADA,                                            '+
            ' COALESCE(DEP_DATA_ENTREGA,CAST(PE.PED_DTSAIDA AS DATE)) DTENTREGA,                    '+
            ' pe.CLI_CODIGO, cl.cli_razao                                                            '+
            '  FROM DEMANDA_PRODUCAO  dep                                                           '+
            '  JOIN PED_IT01 it ON (dep.PRF_REGISTRO = it.PRF_REGISTRO)                             '+
            '  JOIN PED0000 pe ON (pe.PED_CODIGO = it.PED_CODIGO AND it.EMP_CODIGO = pe.EMP_CODIGO) '+
            '  JOIN CLI0000 cl ON (cl.CLI_CODIGO = pe.CLI_CODIGO)                         '+
            '  JOIN PRD0000 PR ON (IT.PRD_CODIGO = PR.PRD_CODIGO)                         '+
            '  JOIN prd_tipo tp ON (tp.PTI_CODIGO = pr.PTI_CODIGO)                        '+
            '  WHERE DEP_SITUACAO = ''R''                                                 '+
            '  AND FTI_REGISTRO IS NULL                                                   ');
    iop_codigo := 0 ;
   end;
    qAux.FetchAll;

    clone.Data := qAux.Data;
    while not clone.Eof do
    begin
      ProdutoPrincipal.prd_refer  := clone.FieldByName('PRD_REFER').AsString;
      ProdutoPrincipal.prd_codigo := clone.FieldByName('PRD_CODIGO').AsString;
      ProdutoPrincipal.descricao := clone.FieldByName('PRD_DESCRI').AsString;
      ProdutoPrincipal.Unidade := clone.FieldByName('PRD_UND').AsString;
      ProdutoPrincipal.Quantidade := clone.FieldByName('QTDEPRD').AsFloat;
      FichaTecnica(clone.FieldByName('ped_codigo').AsString,
                   clone.FieldByName('PRD_CODIGO').AsString,
                   clone.FieldByName('PRD_REFER').AsString,
                   clone.FieldByName('CLI_CODIGO').AsString,
                   clone.FieldByName('cli_razao').AsString,
                   clone.FieldByName('PED_DTENTRADA').AsDateTime,
                   clone.FieldByName('DTENTREGA').AsDateTime,
                   clone.FieldByName('QTDEPRD').AsFloat ,
                   iop_codigo
                   );
      clone.Next;
      if envase  then
        iop_codigo := clone.fieldbyname('iop_codigo').asinteger  ;
    end;
    Sumarizar;
  finally
     cdsbusca.SQL.Text := qAux.SQL.Text;
     cdsBusca.Open;
     fmAnimacao.Close;
  end;
end;

procedure TFrmPrevisaoCompras.frxLRelatoriosGetValue(const VarName: string; var Value: Variant);
begin
  inherited;
  if VarName = 'RAZAO' then
    VALUE := DBInicio.Empresa.RAZAO;
end;

procedure TFrmPrevisaoCompras.ListadeMatriaprima1Click(Sender: TObject);
var  complFiltro : string;
    sfiltro : string;
begin
  inherited;
  try
   cdsSumarizado.IndexFieldNames := 'tipo';
   cdsSumarizado.DisableControls;
   if cxgrd1DBTableView1.DataController.Filter.FilterText<>'' then
    begin
       complFiltro := cxgrd1DBTableView1.DataController.Filter.FilterText;
      if sfiltro <> '' then
        sFiltro :=  sfiltro +' e filtro : ' +cxgrd1DBTableView1.DataController.Filter.FilterCaption
      else
        sfiltro := 'Filtro :'+ cxgrd1DBTableView1.DataController.Filter.FilterCaption;
     //  frxDBRelatorios.DataSet.Filter:= complFiltro;
     //  frxDBRelatorios.DataSet.Filtered := True;

       cdsSumarizado.Filter := complFiltro ;
        cdsSumarizado.Filtered := True;
    end;
    TfrxMemoView(frxLRelatorios.FindObject('mtitulo')).Text := 'Lista Matéria-prima';
    TfrxDetailData(frxLRelatorios.FindObject('analitico')).Visible := False;
    TfrxHeader(frxLRelatorios.FindObject('cabanalitico')).Visible := False;
    TfrxGroupHeader(frxLRelatorios.FindObject('GroupHeader1')).visible := true;
    frxLRelatorios.ShowReport;
  finally

    cdsSumarizado.Filtered := False;
   cdsSumarizado.EnableControls;
  end;
  cdsSumarizado.IndexFieldNames := '';
  TfrxGroupHeader(frxLRelatorios.FindObject('GroupHeader1')).visible := false;

end;

procedure TFrmPrevisaoCompras.RelatrioAnaltico1Click(Sender: TObject);
var  complFiltro : string;
    sfiltro : string;
begin
  inherited;
  try

   cdsSumarizado.DisableControls;
   if cxgrd1DBTableView1.DataController.Filter.FilterText<>'' then
    begin
       complFiltro := cxgrd1DBTableView1.DataController.Filter.FilterText;
      if sfiltro <> '' then
        sFiltro :=  sfiltro +' e filtro : ' +cxgrd1DBTableView1.DataController.Filter.FilterCaption
      else
        sfiltro := 'Filtro :'+ cxgrd1DBTableView1.DataController.Filter.FilterCaption;
     //  frxDBRelatorios.DataSet.Filter:= complFiltro;
     //  frxDBRelatorios.DataSet.Filtered := True;

       cdsSumarizado.Filter := complFiltro ;
        cdsSumarizado.Filtered := True;
    end;
  TfrxMemoView(frxLRelatorios.FindObject('mtitulo')).Text := 'Relatório analítico';
  TfrxDetailData(frxLRelatorios.FindObject('analitico')).Visible := True;
  TfrxHeader(frxLRelatorios.FindObject('cabanalitico')).Visible := True;
  frxLRelatorios.ShowReport;
  finally

    cdsSumarizado.Filtered := False;
   cdsSumarizado.EnableControls;
  end;
end;

procedure TFrmPrevisaoCompras.Sumarizar;
var estoque, estoqueMin: double;
begin
  cdsPrevisao.DisableControls;
  try
   cdsPrevisao.First;
    while not cdsPrevisao.Eof do
    begin

      estoque := BuscaUmDadoSqlAsFloat('SELECT sum(KAS_SALDO) FROM kardex_almox_saldo kas WHERE kas.PRD_CODIGO = '+QuotedStr(cdsPrevisaoPRD_CODIGO.AsString));
      estoqueMin := BuscaUmDadoSqlAsFloat('SELECT PRD_MINIMO FROM PRD0000 WHERE PRD_CODIGO = '+QuotedStr(cdsPrevisaoPRD_CODIGO.AsString));

      if ((estoque > 0) and (estoque > estoqueMin))  and cbSemEstoque.checked then
        begin
          cdsPrevisao.Next;
          Continue;
        end;


      // já existe produto atualizar
      if cdsSumarizado.Locate ('prd_codigo',cdsPrevisaoPRD_CODIGO.AsString,[]) then
      begin
        cdsSumarizado.Edit;
        cdsSumarizadoDemanda.AsFloat := cdsSumarizadoDemanda.AsFloat + cdsPrevisaoDemanda.AsFloat;
        cdsSumarizado.Post;

      end
      else
      begin
        cdsSumarizado.Insert;
        cdsSumarizadoPRD_REFER.AsString :=  cdsPrevisaoPRD_REFER.AsString ;
        cdsSumarizadoPRD_CODIGO.AsString := cdsPrevisaoPRD_CODIGO.AsString;
        cdsSumarizadoPRD_DESCRI.AsString := cdsPrevisaoPRD_DESCRI.AsString ;
        cdsSumarizadoPRD_UND.AsString := cdsPrevisaoPRD_UND.AsString ;
        cdssumarizadoESTOQUEDISPONIVEL.AsFloat := BuscaUmDadoSqlAsFloat('SELECT sum(KAS_SALDO) FROM kardex_almox_saldo kas WHERE kas.PRD_CODIGO = '+QuotedStr(cdsPrevisaoPRD_CODIGO.AsString));
        cdsSumarizadoEstoqueMinimo.AsFloat := BuscaUmDadoSqlAsFloat('SELECT PRD_MINIMO FROM PRD0000 WHERE PRD_CODIGO  = '+QuotedStr(cdsPrevisaoPRD_CODIGO.AsString));
        cdsSumarizadoDemanda.AsFloat  :=   cdsPrevisaoDemanda.AsFloat;
        cdsSumarizadoPRD_PCUSTO.AsFloat := cdsPrevisaoPRD_PCUSTO.AsFloat;
        cdsSumarizadoTipo.AsString := cdsPrevisaotipo.AsString;

        cdsSumarizado.post;
      end;


      cdsPrevisao.Next;
    end;
  finally
    cdsPrevisao.EnableControls;
  end;
end;

end.
