unit uPesqPedidoIndus;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBPesquisaFDAC, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  Data.DB, cxDBData, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Phys.FBDef, FireDAC.UI.Intf, FireDAC.VCLUI.Wait, FireDAC.VCLUI.Error, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.FB, frxClass, Vcl.Menus, FireDAC.Comp.Client,
  FireDAC.Comp.UI, FireDAC.Phys.IBBase, FireDAC.Comp.DataSet, cxLocalization, ACBrBase, ACBrEnterTab, JvExControls, JvArrowButton, Vcl.StdCtrls, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, Vcl.Buttons, Vcl.ExtCtrls, Vcl.ComCtrls, Data.FMTBcd, SgDbSeachComboUnit, Vcl.Mask, JvExMask, JvToolEdit, Data.SqlExpr,
  cxGridDBDataDefinitions, uQualidadeProducao, frxDBSet, Datasnap.DBClient, system.StrUtils, frxCross, Vcl.Imaging.jpeg, ACBrCalculadora, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap,
  dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer,
  dxPScxEditorProducers, dxPScxExtEditorProducers, dxPSCore, frxExportPDF, System.Threading,DateUtils, ShellApi,
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
  cxDataControllerConditionalFormattingRulesManagerDialog, frxExportBaseDialog ;

type
  TfrmPedidoIndustrializacao = class(TfrmBaseDBPesquisaFDAC)
    cdsBuscaOPR_CODIGO: TStringField;
    cdsBuscaCLI_CODIGO: TStringField;
    cdsBuscaCLI_RAZAO: TStringField;
    cdsBuscaPED_CODIGO: TStringField;
    cdsBuscaOPR_STATUS: TStringField;
    cdsBuscaPED_SITUACAO: TStringField;
    cdsBuscaPED_VLTOTAL_BRUTO: TFMTBCDField;
    qCli: TSQLQuery;
    Label1: TLabel;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    DataInclusaoIni: TJvDateEdit;
    DataInclusaoFim: TJvDateEdit;
    cxgrd1DBTableView1OPR_CODIGO: TcxGridDBColumn;
    cxgrd1DBTableView1CLI_CODIGO: TcxGridDBColumn;
    cxgrd1DBTableView1CLI_RAZAO: TcxGridDBColumn;
    cxgrd1DBTableView1PED_CODIGO: TcxGridDBColumn;
    cxgrd1DBTableView1OPR_STATUS: TcxGridDBColumn;
    cxgrd1DBTableView1PED_SITUACAO: TcxGridDBColumn;
    cxgrd1DBTableView1PED_VLTOTAL_BRUTO: TcxGridDBColumn;
    cdsBuscaDetalhesIOP_CODIGO: TIntegerField;
    cdsBuscaDetalhesIOP_NORDEM: TStringField;
    cdsBuscaDetalhesPRD_CODIGO: TStringField;
    cdsBuscaDetalhesPRD_DESCRI: TStringField;
    cdsBuscaDetalhesIOP_PESO: TFMTBCDField;
    cdsBuscaDetalhesIOP_CUSTO: TFMTBCDField;
    cdsBuscaDetalhesIOP_PRECO: TFMTBCDField;
    cdsBuscaDetalhesIOP_STATUS: TStringField;
    cxgrd1Level1: TcxGridLevel;
    cxgrd1DBTableView2: TcxGridDBTableView;
    cdsBuscaDetalhesPED_CODIGO: TStringField;
    cxgrd1DBTableView2IOP_NORDEM: TcxGridDBColumn;
    cxgrd1DBTableView2PRD_refer: TcxGridDBColumn;
    cxgrd1DBTableView2PRD_DESCRI: TcxGridDBColumn;
    cxgrd1DBTableView2IOP_PESO: TcxGridDBColumn;
    cxgrd1DBTableView2IOP_CUSTO: TcxGridDBColumn;
    cxgrd1DBTableView2IOP_PRECO: TcxGridDBColumn;
    cdsCarga: TFDQuery;
    cdsBuscaDetalhesPRD_REFER: TStringField;
    cdsCargaIOP_CODIGO: TIntegerField;
    cdsCargaOPE_CODIGO: TIntegerField;
    cdsCargaOPE_NOME: TStringField;
    cdsCargaIOP_NORDEM: TStringField;
    cdsCargaCAR_CODIGO: TIntegerField;
    cdsCargaDATA_CARGA: TSQLTimeStampField;
    cdsCargaCAR_STATUS: TStringField;
    cxgrd1Level2: TcxGridLevel;
    cxgrd1DBTableView3: TcxGridDBTableView;
    dsCarga: TDataSource;
    cxgrd1DBTableView3OPE_NOME: TcxGridDBColumn;
    cxgrd1DBTableView3CAR_CODIGO: TcxGridDBColumn;
    cxgrd1DBTableViewPCP_STATUS: TcxGridDBColumn;
    numPedido: TLabeledEdit;
    cdsCargaPCP_STATUS: TStringField;
    cdsBuscaOPR_EMISSAO: TSQLTimeStampField;
    cdsBuscaOPR_DTENTREGA: TSQLTimeStampField;
    cdsBuscaOPR_CONCLUSAO: TSQLTimeStampField;
    cxgrd1DBTableView1OPR_EMISSAO: TcxGridDBColumn;
    cxgrd1DBTableView1OPR_DTENTREGA: TcxGridDBColumn;
    cxgrd1DBTableView1OPR_CONCLUSAO: TcxGridDBColumn;
    cxgrd1DBTableView3IOP_CODIGO: TcxGridDBColumn;
    cxgrd1DBTableView3OPE_CODIGO: TcxGridDBColumn;
    miOrdemdeservico: TMenuItem;
    frxOrdemServico: TfrxReport;
    qROrdemServico: TFDQuery;
    dsOrdemServico: TfrxDBDataset;
    qOperacoes: TFDQuery;
    qOperacoesOPE_CODIGO: TIntegerField;
    qOperacoesOPE_NOME: TStringField;
    dsOperacoes: TfrxDBDataset;
    qqualidade: TFDQuery;
    qqualidadeEOP_CODIGO: TIntegerField;
    qqualidadeEOP_SEQ: TIntegerField;
    qqualidadeOPE_CODIGO: TIntegerField;
    qqualidadeEOP_NOME: TStringField;
    qqualidadeEOP_DESCRICAO: TStringField;
    qqualidadeOPE_NOME: TStringField;
    qqualidadeQPR_SEQUENCIA: TIntegerField;
    qqualidadeQPR_VALOR: TStringField;
    qqualidadeQPR_CODIGO: TIntegerField;
    qqualidadePOP_CODIGO: TIntegerField;
    qqualidadeMAXSEQ: TAggregateField;
    qParametros: TFDQuery;
    qParametrosEOP_CODIGO: TIntegerField;
    qParametrosEOP_SEQ: TIntegerField;
    qParametrosOPE_CODIGO: TIntegerField;
    qParametrosEOP_NOME: TStringField;
    qParametrosEOP_DESCRICAO: TStringField;
    cdsEspecificacao: TClientDataSet;
    frxDBDataset1: TfrxDBDataset;
    frxCrossObject1: TfrxCrossObject;
    frxCrossObject2: TfrxCrossObject;
    cxgrd1DBTableView2PRD_CODIGO: TcxGridDBColumn;
    qproduto: TFDQuery;
    qprodutoPRD_FOTO: TBlobField;
    miPedido: TMenuItem;
    frxPedidoTrat: TfrxReport;
    qROrdemServicoPRO_CODIGO: TIntegerField;
    qROrdemServicoIOP_NORDEM: TStringField;
    qROrdemServicoOPR_CODIGO: TStringField;
    qROrdemServicoCLI_CODIGO: TStringField;
    qROrdemServicoCLI_RAZAO: TStringField;
    qROrdemServicoPED_CODIGO: TStringField;
    qROrdemServicoOPR_EMISSAO: TSQLTimeStampField;
    qROrdemServicoOPR_DTENTREGA: TSQLTimeStampField;
    qROrdemServicoPED_VLTOTAL_BRUTO: TFMTBCDField;
    qROrdemServicoPRD_DESCRI: TStringField;
    qROrdemServicoIOP_QUANTIDADE: TFMTBCDField;
    qROrdemServicoIOP_PESO: TFMTBCDField;
    qROrdemServicoPRO_DESCRICAO: TStringField;
    qOperacoesOPE_DESCRICAO: TStringField;
    qROrdemServicoIOP_SEQUENCIA: TIntegerField;
    qROrdemServicoPED_TIPOPECA_TERM: TStringField;
    qROrdemServicoPED_MATERIAL_TERM: TStringField;
    qROrdemServicoPED_DUREZASUPERFICIAL_TERM: TStringField;
    qROrdemServicoPED_DUREZANUCLEO_TERM: TStringField;
    qROrdemServicoPED_PROFUNDIDADE_TERM: TStringField;
    qROrdemServicoPED_TAMANHOGRAO_TERM: TStringField;
    qROrdemServicoPED_EHT_TERM: TStringField;
    qROrdemServicoPED_DESENHO_TERM: TStringField;
    cdsBuscaDetalhesPRO_DESCRICAO: TStringField;
    cxgrd1DBTableView2Processo: TcxGridDBColumn;
    qROrdemServicosrv_nome: TStringField;
    qOperacoesOPE_NAOUSACARGA: TStringField;
    cdsCargaDataIni: TSQLTimeStampField;
    cdsCargaDataFim: TSQLTimeStampField;
    cxgrd1DBTableView3DataIni: TcxGridDBColumn;
    cxgrd1DBTableView3DataFim: TcxGridDBColumn;
    qROrdemServicoPED_NUMERO_PED_CLIENTE: TStringField;
    qROrdemServicoPED_CONTATO_CLIENTE: TStringField;
    qROrdemServicoIOP_PRECO: TFMTBCDField;
    qROrdemServicoPRD_UND: TStringField;
    qROrdemServicoPRE_ACORDOCOM: TIntegerField;
    qROrdemServicousu_nome: TStringField;
    miresultadoInspecao: TMenuItem;
    qEquipamento: TFDQuery;
    qEquipamentoEQP_CODIGO: TIntegerField;
    qEquipamentoEQP_DESCRICAO: TStringField;
    qEquipamentoEQP_REFER: TStringField;
    qEquipamentoEQP_DATAAQUISICAO: TDateField;
    qEquipamentoEQP_ESPECIFICACAO: TStringField;
    qEquipamentoPCX_CODIGO: TStringField;
    qEquipamentoTPR_CODIGO: TIntegerField;
    qEquipamentoEMP_CODIGO: TStringField;
    qEquipamentoEQP_CERTIFICADO: TStringField;
    qEquipamentoEQP_DATACALIBRACAO: TDateField;
    qEquipamentoEQP_DATAVALIDACAO: TDateField;
    frxEquipamento: TfrxDBDataset;
    qresultado: TFDQuery;
    qresultadoEOR_NOME: TStringField;
    qresultadoOPE_CODIGO: TIntegerField;
    qresultadoRES_CODIGO: TIntegerField;
    qresultadoIOP_CODIGO: TIntegerField;
    qresultadoEOR_CODIGO: TIntegerField;
    qresultadoEOR_VALOR: TStringField;
    frxResultado: TfrxDBDataset;
    qROrdemServicoIOP_CODIGO: TIntegerField;
    frxInspecao: TfrxReport;
    qOperacoesEQP_CODIGO: TIntegerField;
    qROrdemServicoPRF_QTDE_ENV_PRODUCAO: TFMTBCDField;
    Label4: TLabel;
    cdsCargaOPE_DESCRICAO: TStringField;
    cxgrd1DBTableView3OPE_DESCRICAO: TcxGridDBColumn;
    chkFaturados: TCheckBox;
    cdsBuscaEMP_CODIGO: TStringField;
    cxgrd1DBTableView1EMP_CODIGO: TcxGridDBColumn;
    qOperacoesOPE_FORMULARIO: TIntegerField;
    ndicesdeAtrasos1: TMenuItem;
    frxIndiceAtrasos: TfrxReport;
    frxBusca: TfrxDBDataset;
    frxBuscaDetalhes: TfrxDBDataset;
    qROrdemServicoPRD_REFER: TStringField;
    qTabelaResultado: TFDQuery;
    qTabelaResultadoTAB_CODIGO: TIntegerField;
    qTabelaResultadoPCP_CODIGO: TIntegerField;
    qTabelaResultadoTAB_DISTANCIA1: TStringField;
    qTabelaResultadoTAB_DUREZA1: TStringField;
    qTabelaResultadoTAB_EHT1: TStringField;
    qTabelaResultadoTAB_DISTANCIA2: TStringField;
    qTabelaResultadoTAB_DUREZA2: TStringField;
    qTabelaResultadoTAB_EHT2: TStringField;
    qTabelaResultadoTAB_DISTANCIA3: TStringField;
    qTabelaResultadoTAB_DUREZA3: TStringField;
    qTabelaResultadoTAB_EHT3: TStringField;
    qTabelaResultadoTAB_DISTANCIA4: TStringField;
    qTabelaResultadoTAB_DUREZA4: TStringField;
    qTabelaResultadoTAB_EHT4: TStringField;
    frxTabelaResultado: TfrxDBDataset;
    cdsCargapcp_codigo: TIntegerField;
    cxgrd1DBTableView3pcp_codigo: TcxGridDBColumn;
    qOperacoesPCP_CODIGO: TIntegerField;
    cdsBuscaOPR_DATAFATURA: TSQLTimeStampField;
    cdsBuscaOPR_LEADTIME: TBCDField;
    cxgrd1DBTableView1OPR_DATAFATURA: TcxGridDBColumn;
    qROrdemServicoOPR_DATAFATURA: TSQLTimeStampField;
    qROrdemServicoOPR_LEADTIME: TBCDField;
    qROrdemServicoOPR_CONCLUSAO: TSQLTimeStampField;
    qROrdemServicoOPR_TEMPOATRASO: TIntegerField;
    qOperacoesPOP_CODIGO: TIntegerField;
    PesqCliente: TSgDbSearchCombo;
    cdsBuscaDetalhesIOP_DATA_CONCLUSAO: TSQLTimeStampField;
    cxgrd1DBTableView2IOP_DATA_CONCLUSAO: TcxGridDBColumn;
    frxPDFExport1: TfrxPDFExport;
    cdsBuscaDetalhesIOP_LEADTIME: TBCDField;
    cxgrd1DBTableView2IOP_CODIGO: TcxGridDBColumn;
    cxgrd1DBTableView2IOP_STATUS: TcxGridDBColumn;
    cxgrd1DBTableView2PED_CODIGO: TcxGridDBColumn;
    cxgrd1DBTableView2IOP_LEADTIME: TcxGridDBColumn;
    qOperacoesPCP_DATAFIM: TSQLTimeStampField;
    EnviarPedidodeTratamentoporemail1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cdsBuscaOPR_STATUSGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure cdsBuscaPED_SITUACAOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure PesqClienteButtonClick(Sender: TObject);
    procedure cdsCargaCAR_STATUSGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure PesqClienteSelect(Sender: TObject);
    procedure numPedidoExit(Sender: TObject);
    procedure cdsCargaPCP_STATUSGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure DataInclusaoIniExit(Sender: TObject);
    procedure DataInclusaoFimExit(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
    procedure cxgrd1DBTableView3DblClick(Sender: TObject);
    procedure miOrdemdeservicoClick(Sender: TObject);
    procedure frxOrdemServicoBeforePrint(Sender: TfrxReportComponent);
    procedure miPedidoClick(Sender: TObject);
    procedure miresultadoInspecaoClick(Sender: TObject);
    procedure btnExcluiClick(Sender: TObject);
    procedure cdsCargaCAR_CODIGOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure chkFaturadosClick(Sender: TObject);
    procedure ndicesdeAtrasos1Click(Sender: TObject);
    procedure frxIndiceAtrasosGetValue(const VarName: string; var Value: Variant);
    procedure qROrdemServicoCalcFields(DataSet: TDataSet);
    procedure cxgrd1DBTableView1DataControllerSortingChanged(Sender: TObject);
    procedure EnviarPedidodeTratamentoporemail1Click(Sender: TObject);
    procedure frxPedidoTratGetValue(const VarName: string; var Value: Variant);
    procedure frxOrdemServicoBeginDoc(Sender: TObject);
    procedure frxPedidoTratBeginDoc(Sender: TObject);
  private
   procedure filtro;
   procedure filtroDetalhe;
   procedure FiltroCarga;

  public
    procedure DataInclusaoIniChange(Sender: TObject);
    { Public declarations }
    procedure RelatorioInspecao( const nordem : string);
  published
  end;

var
  frmPedidoIndustrializacao: TfrmPedidoIndustrializacao;

implementation


uses InicioDB, Uteis, PesquisaClientesForm, EMAIL0001 ;

{$R *.dfm}

{ TfrmPedidoIndustrializacao }

procedure TfrmPedidoIndustrializacao.btnExcluiClick(Sender: TObject);
var result, opr: integer;
  searchResult : TSearchRec;
begin
  inherited;
  if (MessageDlg('Tem certeza que deseja excluir o pedido ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
  begin
    result := BuscaUmDadoSqlAsInteger
                  ('SELECT 1 FROM ORDEMPRODUCAO orc     '+
                   ' JOIN ITEM_ORDEMPRODUCAO  it ON (it.OPR_CODIGO = orc.OPR_CODIGO) '+
                   ' JOIN PROCESSOS_PRODUCAO pcp ON (pcp.IOP_CODIGO = it.IOP_CODIGO) '+
                   ' JOIN APONTAMENTO_PROCESSO app ON (app.PCP_CODIGO = pcp.PCP_CODIGO AND APP_CANCELADO IS NULL) '+
                   ' WHERE ped_codigo = '+QuotedStr(cdsBuscaPED_CODIGO.AsString)+
                   ' AND EMP_CODIGO = '+ QuotedStr(DBInicio.Empresa.EMP_CODIGO));
    if result=0 then
    begin
       try
         if (DBInicio.Empresa.sPMT_CAMINHO_PEDIN <> '')
          and (FindFirst( DBInicio.Empresa.sPMT_CAMINHO_PEDIN + '\pdfs\tratamento'+ cdsBuscaPED_CODIGO.AsString+'.pdf', faAnyFile, searchResult) = 0) then
              DeleteFile( pWideChar( DBInicio.Empresa.sPMT_CAMINHO_PEDIN +'\pdfs\tratamento'+ cdsBuscaPED_CODIGO.AsString+'.pdf' ) );

         OpenAux('select IOP_CODIGO, iop_nordem  from ITEM_ORDEMPRODUCAO where opr_codigo = '+IntToStr(cdsBuscaOPR_CODIGO.AsInteger));
         qAux.First;
          dbConn.StartTransaction;
         while not qAux.Eof do
         begin
           if (DBInicio.Empresa.sPMT_CAMINHO_PEDIN <> '')
              and (FindFirst(DBInicio.Empresa.sPMT_CAMINHO_PEDIN + '\pdfs\OrdemServico'+ qAux.FieldByName('iop_nordem').AsString+'.pdf', faAnyFile, searchResult) = 0) then
           begin
              DeleteFile( pWideChar( DBInicio.Empresa.sPMT_CAMINHO_PEDIN + '\pdfs\OrdemServico'+ qAux.FieldByName('iop_nordem').AsString+'.pdf' ) );
           end;


           OpenAux2('SELECT * FROM PROCESSOS_PRODUCAO PCP JOIN CARGA C ON (C.CAR_CODIGO = PCP.CAR_CODIGO) '+
                    ' WHERE IOP_CODIGO =  '+IntToStr(qAux.FieldByName('iop_codigo').AsInteger) );
           ExecSql('delete from PROCESSOS_PRODUCAO where iop_codigo = '+IntToStr(qAux.FieldByName('iop_codigo').AsInteger),false );
           qaux2.first;

           while not qaux2.eof do
           begin
             ExecSql('DELETE FROM APONTAMENTO_PROCESSO WHERE PCP_CODIGO = '+IntToStr(qAux2.FieldByName('PCP_CODIGO').AsInteger));
             ExecSql('update CARGA c set CAR_STATUS = '+QuotedStr('A') +
                    ' WHERE CAR_CODIGO = '+IntToStr(qAux2.FieldByName('CAR_CODIGO').AsInteger)   +
                    ' and NOT EXISTS ( SELECT * FROM PROCESSOS_PRODUCAO pp WHERE pp.CAR_CODIGO = c.CAR_CODIGO  ) ');
             qaux2.next;
           end;

           qAux.Next;
         end;
          ExecSql('DELETE FROM QUALIDADE_PRODUCAO  '+
                  ' WHERE POP_CODIGO IN                 '+
                  ' (SELECT POP_CODIGO                  '+
                  '   FROM PROCESSOS_OPERACOES          '+
                  '   WHERE PRO_CODIGO IN                '+
                  '   (SELECT pro_codigo FROM ITEM_ORDEMPRODUCAO WHERE OPR_CODIGO ='+IntToStr(cdsBuscaOPR_CODIGO.AsInteger)+ '))') ;

          ExecSql('DELETE FROM ESPECIFICACOES_OPERACAO  '+
                  ' WHERE POP_CODIGO IN                 '+
                  ' (SELECT POP_CODIGO                  '+
                  '   FROM PROCESSOS_OPERACOES          '+
                  '   WHERE PRO_CODIGO IN                '+
                  '   (SELECT pro_codigo FROM ITEM_ORDEMPRODUCAO WHERE OPR_CODIGO ='+IntToStr(cdsBuscaOPR_CODIGO.AsInteger)+ '))') ;

         ExecSql('DELETE FROM PROCESSOS_OPERACOES WHERE PRO_CODIGO IN '+
                 ' (SELECT pro_codigo FROM ITEM_ORDEMPRODUCAO WHERE OPR_CODIGO = '+IntToStr(cdsBuscaOPR_CODIGO.AsInteger)+ ')') ;

         ExecSql('DELETE FROM PROCESSOS WHERE PRO_CODIGO IN '+
                 ' (SELECT pro_codigo FROM ITEM_ORDEMPRODUCAO WHERE OPR_CODIGO = '+IntToStr(cdsBuscaOPR_CODIGO.AsInteger)+ ')') ;

         ExecSql('delete from ITEM_ORDEMPRODUCAO where opr_codigo = '+IntToStr(cdsBuscaOPR_CODIGO.AsInteger),false);
         ExecSql('delete from ORDEMPRODUCAO where opr_codigo = '+IntToStr(cdsBuscaOPR_CODIGO.AsInteger),false) ;
          //verificar se a carga tem alguma ordem

          dbConn.Commit;
          btnPesquisa.Click;
       except on E: Exception do
       begin
        dbConn.Rollback;
        raise Exception.Create('Erro banco : '+e.Message );
       end;
       end;

    end
    else
    begin

      GeraException('Não pode excluir Ordem Produção '+cdsBuscaPED_CODIGO.AsString+' pois já houve apontamento' );
    end;
  end;
end;

procedure TfrmPedidoIndustrializacao.btnLimparClick(Sender: TObject);
begin
  try
  inherited;

  except
     // silencioso
  end;
end;

procedure TfrmPedidoIndustrializacao.cdsBuscaOPR_STATUSGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
    if Sender.AsString = 'P' then
      Text := 'Pendente'
    else if Sender.AsString = 'L' then
      Text := 'Liberado'
    else if Sender.AsString = 'F' then
      Text := 'Concluído'
    else if Sender.AsString =  'C' then
     text := 'Cancelado';

end;

procedure TfrmPedidoIndustrializacao.cdsBuscaPED_SITUACAOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if Sender.AsString = 'F' then
    Text := 'A faturar'
  else if Sender.AsString = 'T' then
    Text := 'Faturado'
  else if Sender.AsString = 'P' then
    Text := 'Parcial'
  else if Sender.AsString =  'C' then
   text := 'Cancelado';

end;

procedure TfrmPedidoIndustrializacao.cdsCargaCAR_CODIGOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if sender.AsInteger>0 then
     Text := 'CG '+ IntToStr(Sender.AsInteger);

end;

procedure TfrmPedidoIndustrializacao.cdsCargaCAR_STATUSGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if Sender.AsString = 'P' then
    Text := 'Pendente'
  else if Sender.AsString = 'C' then
    Text := 'Confirmado'
  else if Sender.AsString = 'F' then
    Text := 'Finalizado'
  else if Sender.AsString =  'A' then
   text := 'Cancelado';
end;

procedure TfrmPedidoIndustrializacao.cdsCargaPCP_STATUSGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if Sender.AsString = 'P' then
    Text := 'Pendente'
  else if Sender.AsString = 'C' then
    Text := 'Confirmada'
  else if Sender.AsString = 'E' then
    Text := 'Em andamento'
  else if Sender.AsString = 'F' then
    Text := 'Finalizada'
  else if Sender.AsString =  'A' then
   text := 'Cancelada';
end;

procedure TfrmPedidoIndustrializacao.chkFaturadosClick(Sender: TObject);
begin
  inherited;
  btnPesquisa.Click;
end;

procedure TfrmPedidoIndustrializacao.cxgrd1DBTableView1DataControllerSortingChanged(Sender: TObject);
begin
  inherited;
  cxgrd1DBTableView1.Controller.GoToLast(False);
end;

procedure TfrmPedidoIndustrializacao.cxgrd1DBTableView3DblClick(Sender: TObject);
var
 ADetailDataController,ADetailDataController2: TcxGridDBDataController; {cxGridDBDataDefinitions}
 ARelationIndex, AFocusedIndex: Integer;
 ope_codigo, iop_codigo : integer;
begin
  inherited;

  with cxgrd1DBTableView1 do
  begin
    ARelationIndex := TcxGridDBDataController(DataController).GetDetailActiveRelationIndex(DataController.FocusedRecordIndex);
    ADetailDataController := TcxGridDataController(DataController).GetDetailDataController(DataController.FocusedRecordIndex, ARelationIndex) as TcxGridDBDataController;
  end;
  with ADetailDataController do
  begin
     AFocusedIndex := ADetailDataController.FocusedRecordIndex;
     ARelationIndex := GetDetailActiveRelationIndex(FocusedRecordIndex);
     ADetailDataController2 := GetDetailDataController(AFocusedIndex, ARelationIndex) as TcxGridDBDataController;
     AFocusedIndex := ADetailDataController2.FocusedRecordIndex;
     if ADetailDataController2.Controller.SelectedRecords[0].IsData then
     begin
       ope_codigo := ADetailDataController2.Controller.SelectedRecords[0].Values[ cxgrd1DBTableView3OPE_CODIGO.index];
       iop_codigo := ADetailDataController2.Controller.SelectedRecords[0].Values[ cxgrd1DBTableView3IOP_CODIGO.index];

     end;
   // ShowMessage(IntToStr(ADetailDataController2.FocusedRecordIndex));
  end;
end;

procedure TfrmPedidoIndustrializacao.DataInclusaoFimExit(Sender: TObject);
begin
  inherited;
  btnPesquisa.Click;
end;

procedure TfrmPedidoIndustrializacao.DataInclusaoIniChange(Sender: TObject);
begin
  inherited;

end;

procedure TfrmPedidoIndustrializacao.DataInclusaoIniExit(Sender: TObject);
begin
  inherited;
  btnPesquisa.Click;
end;

procedure TfrmPedidoIndustrializacao.EnviarPedidodeTratamentoporemail1Click(Sender: TObject);
var
  tcr : TfrmEMAIL0001;
  pedido, cliente, valor : string;
begin
  inherited;

  pedido := cxgrd1DBTableView1.Controller.SelectedRecords[0].Values[cxgrd1DBTableView1PED_CODIGO.Index];
  if not FileExists(DBInicio.Empresa.sPMT_CAMINHO_PEDIN + '\pdfs\tratamento'+ pedido+'.pdf') then
  begin
    MessageDlg('O Pedido de Tratamento não existe, favor gerá-lo', mtWarning, [mbOk], 0);
    Exit;
  end;

  cliente := cxgrd1DBTableView1.Controller.SelectedRecords[0].Values[cxgrd1DBTableView1CLI_CODIGO.Index];
  valor := cxgrd1DBTableView1.Controller.SelectedRecords[0].Values[cxgrd1DBTableView1PED_VLTOTAL_BRUTO.Index];

  tcr := TfrmEmail0001.Create(Nil);
  try
    tcr.modulo := 'Pedido de Industrialização';
    tcr.titulo := ' Nº ' +  pedido + ' - R$ ' +  FormatFloat('##0.00', StrToFloat(valor));

    tcr.sClienteCodigo := cliente;
    tcr.sCaminhoArquivo := DBInicio.Empresa.sPMT_CAMINHO_PEDIN + '\pdfs\tratamento' + pedido + '.pdf';
    tcr.sEmailCliente   := BuscaUmDadoSqlAsString('SELECT CLI_EMAIL FROM CLI0000 WHERE CLI_CODIGO = ' + QuotedStr(cliente));
    tcr.sAssunto        := 'PEDIDO DE TRATAMENTO TÉRMICO Nº ' +  Pedido + ' - ' + dbInicio.Empresa.FANTASIA;
    tcr.ProcessarInformacoes;
    if tcr.ssucesso  then
      GravaHistoricoEmail(tcr.modulo, tcr.EdMail.Text,  tcr.titulo, 'C', cliente, Now, DBInicio.Usuario.CODIGO, tcr.sCaminhoArquivo);
  finally
    FreeAndNil(tcr);
  end;

end;

procedure TfrmPedidoIndustrializacao.filtro;
var sqltext : string;
begin
  with cdsBusca,sql do
  begin

    sqltext := ' SELECT lpad( opr_codigo,7,''0'') opr_codigo , cl.cli_codigo, cl.cli_razao, pe.ped_codigo, OPR_EMISSAO, OPR_DTENTREGA,OPR_CONCLUSAO, '+
               '    coalesce(op.opr_status,''P'') OPR_STATUS, ped_situacao , PED_VLTOTAL_BRUTO, op.emp_codigo,  op.OPR_DATAFATURA, op.OPR_LEADTIME ' +
               ' FROM ped0000 pe                                                                        '+
               ' join cli0000 cl on (cl.cli_codigo = pe.cli_codigo)                                        ';
    if chkFaturados.Checked then
       sqltext := sqltext +  ' join ordemproducao op on (op.ped_codigo =  pe.ped_codigo and op.emp_codigo = pe.emp_codigo AND PED_SITUACAO NOT IN (''C'',''T'') ) '
    Else
     sqltext := sqltext +   ' join ordemproducao op on (op.ped_codigo =  pe.ped_codigo and op.emp_codigo = pe.emp_codigo AND PED_SITUACAO NOT IN (''C'') ) ';


     cdsBusca.SQL.Text := sqltext;
    if DBINICIO.Exclusivo('PEDIDOS') then
       SqlAdd(' op.emp_codigo = '+QuotedStr(DBInicio.Empresa.EMP_CODIGO));
    if PesqCliente.idRetorno <> '' then
      SqlAdd('cl.cli_codigo = '+QuotedStr(PesqCliente.idRetorno) );
    if numPedido.Text <> '' then
      SqlAdd(' OP.ped_codigo CONTAINING '+ QuotedStr(numPedido.Text) );
    if (DataInclusaoIni.Date > 0) and (DataInclusaoFim.Date = 0)  then
      SqlAdd(' OPR_EMISSAO >='+DateToSQL(DataInclusaoIni.Date) )
    else if (DataInclusaoIni.Date = 0) and (DataInclusaoFim.Date > 0)  then
      SqlAdd(' OPR_EMISSAO <='+DateToSQL(DataInclusaofim.Date) )
    else if (DataInclusaoIni.Date > 0) and (DataInclusaoFim.Date > 0)  then
     SqlAdd(' OPR_EMISSAO between '+DateToSQL(DataInclusaoIni.Date) +' and '+ DateToSQL(DataInclusaoFim.Date) );


  end;
end;

procedure TfrmPedidoIndustrializacao.FiltroCarga;
var sqltext : string;
begin
  with cdsCarga,sql do
  begin
     sqltext := ' SELECT  ' +
                ' iop.iop_codigo,ope.ope_codigo, ope.ope_nome,ope.ope_descricao, IOP_NORDEM, ca.car_codigo, ca.DATA_CARGA, coalesce(car_status,''P'') car_status, '+
                ' COALESCE(PP.PCP_STATUS,''P'') PCP_STATUS,  '+
                ' coalesce(ca.car_dataini,pp.pcp_dataini) as DataIni, coalesce(ca.car_datafim,pp.pcp_datafim) as DataFim, pp.pcp_codigo  '+
                '  from item_ordemproducao iop '+
                ' join ordemproducao op on (op.opr_codigo = iop.opr_codigo) '+
                ' join ped0000 pe on (pe.ped_codigo = op.ped_codigo and PE.EMP_CODIGO = OP.EMP_CODIGO ) '+
                ' join prd0000 pr on (pr.prd_codigo = iop.prd_codigo)                                   '+
                ' join processos pro on (pro.pro_codigo = IOP.pro_codigo)                                '+
                ' join PROCESSOS_OPERACOES po on (po.pro_codigo = pro.pro_codigo)                       '+
                ' join operacoes ope on (ope.ope_codigo = po.ope_codigo)                                '+
                ' left join PROCESSOS_PRODUCAO pp on (pp.ope_codigo = ope.ope_codigo and iop.iop_codigo = pp.iop_codigo) '+
                ' left join carga ca on (ca.car_codigo = pp.car_codigo) ';
    cdsCarga.SQL.text:= sqltext;
    if DBINICIO.Exclusivo('ORDEMPRODUCAO') then
      cdsCarga.SQL.add(' where  op.emp_codigo = '+QuotedStr(DBInicio.Empresa.EMP_CODIGO));

   cdsCarga.SQL.add( ' ORDER BY op.ped_codigo, iop.IOP_CODIGO, po.POP_SEQ    ');
  end;
  cdsCarga.Open;
end;

procedure TfrmPedidoIndustrializacao.filtroDetalhe;
var sqltext : string;
begin
  with cdsBuscaDetalhes,sql do
  begin

    sqltext := 'SELECT op.ped_codigo, iop.iop_codigo, IOP_NORDEM,   pr.prd_codigo,pr.prd_refer, coalesce(PRF_PRDDESCRI,pr.prd_descri) prd_descri, IOP_PESO,IOP_QUANTIDADE, IOP_CUSTO, IOP_PRECO , IOP_STATUS, '+
               ' PED_TIPOPECA_TERM, PED_MATERIAL_TERM , PED_DUREZASUPERFICIAL_TERM, PED_DUREZANUCLEO_TERM , PED_PROFUNDIDADE_TERM, po.PRO_DESCRICAO, iop_data_conclusao, iop_leadtime '+
               ' from item_ordemproducao iop'+
               '  join ordemproducao op on (op.opr_codigo = iop.opr_codigo  ) '+
               '  join PED_IT01 it on (it.PRF_REGISTRO = iop.PRF_REGISTRO  )        '+
               '  join prd0000 pr on (pr.prd_codigo = iop.prd_codigo)       '+
               '  join PROCESSOS po ON (po.PRO_CODIGO = IOP.PRO_CODIGO) '               ;

     cdsBuscaDetalhes.SQL.Text := sqltext;
    if DBINICIO.Exclusivo('PEDIDOS') then
      cdsBuscaDetalhes.SQL.add(' where  op.emp_codigo = '+QuotedStr(DBInicio.Empresa.EMP_CODIGO));
    cdsBuscaDetalhes.SQL.add('order by op.ped_codigo');
  end;
 cdsBuscaDetalhes.Open;
 FiltroCarga;
end;

procedure TfrmPedidoIndustrializacao.FormCreate(Sender: TObject);
begin
  inherited;
  Self.ProcedureFiltro := filtro;
  self.ProcedureFiltroDetalhe := filtroDetalhe;
  self.Constraints.MinHeight:= 612;;
  self.Constraints.MinWidth:=1175;
  self.Constraints.MaxHeight:= 0;
  if dbInicio.Isdesenvolvimento then
    copyToClipboard(cdsBusca.sql.text);
//  cdsbusca.Close;
//  cdsbusca.Open();
//  self.width:=1175;
//  self.height:=612;
  //Menu := 'ProduçãoPCP';
  self.CampoID := 'PED_CODIGO';
  btnPesquisa.Click;
  if not DirectoryExists(DBInicio.Empresa.sPMT_CAMINHO_PEDIN + '\pdfs') then
    CreateDir(DBInicio.Empresa.sPMT_CAMINHO_PEDIN + '\pdfs');
  if not DirectoryExists(DBInicio.Empresa.sPMT_CAMINHO_PEDIN + '\fotos') then
    CreateDir(DBInicio.Empresa.sPMT_CAMINHO_PEDIN + '\fotos');
end;

procedure TfrmPedidoIndustrializacao.FormDestroy(Sender: TObject);
begin
  inherited;
  frmPedidoIndustrializacao := NIL;
end;

procedure TfrmPedidoIndustrializacao.FormShow(Sender: TObject);
begin
  cxgrd1DBTableView1.Controller.GoToLast(False);
  MENU := 'ProduçãoPedido Industrialização';
  inherited;
  WindowState := wsMaximized;
end;

procedure TfrmPedidoIndustrializacao.frxIndiceAtrasosGetValue(const VarName: string; var Value: Variant);
begin
  inherited;
  if (VarName = 'FILTRO') then
  begin
  Value := 'Filtro:';
    if (DataInclusaoIni.Date >0) or (DataInclusaoFim.date > 0) then
    begin
      Value := 'Período: ';
      if (DataInclusaoIni.Date > 0) and (DataInclusaoFim.Date > 0) then
        Value := Value + FormatDateTime('dd/mm/yyyy',DataInclusaoIni.Date) + ' a '  +FormatDateTime('dd/mm/yyyy',DataInclusaoFim.date)
      else if (DataInclusaoIni.Date > 0) and (DataInclusaoFim.Date = 0) then
        Value := Value + FormatDateTime('dd/mm/yyyy',DataInclusaoIni.Date) + ' a '
      else
        Value := Value + ' a '  +FormatDateTime('dd/mm/yyyy',DataInclusaoFim.date);
    end ;
   if chkFaturados.Checked then
    Value := Value + ' Sem faturados';

  end;

end;



procedure TfrmPedidoIndustrializacao.frxOrdemServicoBeforePrint(Sender: TfrxReportComponent);
var
  i, j: Integer;
  campo : string;
  Cross: TfrxCrossView;
begin
  inherited;
  if sender is TfrxCrossView then
  begin
//   TfrxMemoView(frxOrdemServico.FindObject('centroCusto')).Top := 0;
   qParametros.Close;
   qParametros.ParamByName('OPE_CODIGO').AsInteger :=  qOperacoes.FieldByName('OPE_CODIGO').AsInteger;
   qParametros.ParamByName('POP_CODIGO').AsInteger :=  qOperacoes.FieldByName('POP_CODIGO').AsInteger;
   qParametros.Open;
   if qParametros.RecordCount = 0 then exit;
   cdsEspecificacao.Close;
   cdsEspecificacao.FieldDefs.Clear;
    for i:= 0 to cdsEspecificacao.FieldDefs.Count -1 do
         cdsEspecificacao.FieldDefs[i].Destroy;

   qParametros.First;
    while not qParametros.Eof do
    begin
      campo := AnsiReplaceStr(TrocaCaracterEspecial(qParametros.FieldByName('eop_nome').AsString,true),' ','');
      if campo = '' then
        campo := 'SEMTITULO1';
      cdsEspecificacao.FieldDefs.Add(campo,ftString,200);
      qParametros.Next;
    end;
//    if qParametros.RecordCount = 0 then
//      exit;
  //   ShowMessage(IntToStr( cdsedit.FieldList.Count));
    cdsEspecificacao.CreateDataSet;
    j:= 0 ;

    qParametros.First;
    while not qParametros.Eof and (cdsEspecificacao.FieldDefs.Count > j) do
    begin

        if qParametros.FieldByName('eop_descricao').asstring = '' then
          cdsEspecificacao.Fields[j].DisplayLabel := qParametros.FieldByName('eop_nome').AsString
        else
          cdsEspecificacao.Fields[j].DisplayLabel :=  qParametros.FieldByName('eop_descricao').AsString;
       cdsEspecificacao.Fields[j].DisplayWidth := 20;
       qParametros.Next;

     inc(j);

    end;
    qqualidade.Close;
    qqualidade.filtered := False;
    qqualidade.Params[0].AsInteger :=  qOperacoes.FieldByName('OPE_CODIGO').AsInteger;
    qqualidade.Params[1].AsInteger :=  qOperacoes.FieldByName('POP_CODIGO').AsInteger;
    qqualidade.Open;
    //MAXSEQ - numro maior do registro
    if  qqualidade.FieldByName('MAXSEQ').AsVariant > 0 then
    for i := qqualidade.FieldByName('MAXSEQ').AsVariant downto 1  do
    begin
      qqualidade.Filtered := False;
      qqualidade.Filter := 'qpr_sequencia = '+IntToStr(i);
      qqualidade.Filtered := True ;
      cdsEspecificacao.Insert;
      cdsEspecificacao.Fields[0].AsInteger := i;
      for j := 0 to cdsEspecificacao.FieldDefs.Count-1 do
      begin
        if qqualidade.Locate('EOP_SEQ',j+1,[]) then
        begin
         cdsEspecificacao.Fields[j].AsString :=  qqualidade.FieldByName('qpr_valor').AsString ;
        end;

      end;
      cdsEspecificacao.Post;

    end;
    Cross := TfrxCrossView(sender);
   // cross.top := 1.20;
    Cross.MaxWidth := Round( 850/cdsEspecificacao.Fields.Count ) ;
    i := 0;
    cdsEspecificacao.First;
    while not cdsEspecificacao.Eof do
    begin
      for j := 0 to cdsEspecificacao.Fields.Count-1 do
      begin
        Cross.AddValue([i], [ReplaceSubStr(cdsEspecificacao.Fields[j].DisplayLabel,'[QL]',#13) ], [cdsEspecificacao.Fields[j].AsString]);

      end;
      cdsEspecificacao.Next;
      Inc(i);
    end;
  end;
end;

procedure TfrmPedidoIndustrializacao.frxOrdemServicoBeginDoc(Sender: TObject);
begin
  inherited;
  TfrxPictureView(frxOrdemServico.FindObject('LogoEmpresa')).Picture.Assign(DBInicio.Empresa.LOGO);
end;

procedure TfrmPedidoIndustrializacao.frxPedidoTratBeginDoc(Sender: TObject);
begin
  inherited;
  TfrxPictureView(frxPedidoTrat.FindObject('LogoEmpresa')).Picture.Assign(DBInicio.Empresa.LOGO);
end;

procedure TfrmPedidoIndustrializacao.frxPedidoTratGetValue(
  const VarName: string; var Value: Variant);
begin
  inherited;
  if dbInicio.EMP_CODIGO = '001' then
  begin
    if VarName = 'LINHA1' then
      Value := 'EMBRATERM EMPRESA BRASILEIRA DE TRATAMENTOS TÉRMICOS LTDA';
    if VarName = 'LINHA2' then
      Value := 'R. Cezinando Dias Paredes, nº 1154 - Boqueirão, Curitiba - PR - CEP 81730-090 CNPJ: 19.795.424.0001/18 IE: 90668156-06';
  end;
  if dbInicio.EMP_CODIGO = '002' then
  begin
    if VarName = 'LINHA1' then
      Value := 'EMPRESA BRASILEIRA DE SERVIÇOS E ASSESSORIA TÉCNICA LTDA';
    if VarName = 'LINHA2' then
      Value := 'R. Cezinando Dias Paredes, nº 1154 - Boqueirão, Curitiba - PR - CEP 81730-090 CNPJ: 31.524.743/0001-94 IM: 14010810479-0';
  end;
end;

procedure TfrmPedidoIndustrializacao.miOrdemdeservicoClick(Sender: TObject);
var
 ADetailDataController: TcxGridDBDataController; {cxGridDBDataDefinitions}
 ARelationIndex, AFocusedIndex: Integer;
 pedido, nordem : string;

 prd_codigo : string;
 Itens, produtos : Variant;
 i : integer;
// logo : tbitmap;
 ok : boolean;
  searchResult : TSearchRec;
  Task: ITask;
begin
  inherited;


  qROrdemServico.sql.Text :=
   ' SELECT pr.prd_refer, iop.iop_codigo,  iop.IOP_SEQUENCIA, po.pro_codigo, iop_nordem, lpad( op.opr_codigo,7,''0'') opr_codigo , cl.cli_codigo, cl.cli_razao, pe.ped_codigo, OPR_EMISSAO, OPR_DTENTREGA, ' +
   ' PED_VLTOTAL_BRUTO, PED_TIPOPECA_TERM, PED_MATERIAL_TERM , PED_DUREZASUPERFICIAL_TERM, PED_DUREZANUCLEO_TERM , PED_PROFUNDIDADE_TERM ,  PED_TAMANHOGRAO_TERM, PED_EHT_TERM , PED_DESENHO_TERM,  '+
   ' PRF_PRDDESCRI as PRD_DESCRI, IOP_QUANTIDADE, IOP_PESO, po.PRO_DESCRICAO , srv_nome, PED_CONTATO_CLIENTE, PED_NUMERO_PED_CLIENTE, IOP_PRECO,              ' +
   ' (SELECT FIRST 1 PRE_ACORDOCOM FROM precos0000 pre WHERE pre.CLI_CODIGO = cl.cli_codigo ORDER BY PRE_VIGENCIA1 DESC ) PRE_ACORDOCOM, ' +
   ' (SELECT FIRST 1 u.USU_NOME  FROM PED_IT01 it JOIN USUARIO u ON (u.USU_CODIGO = it.USU_CODIGO ) WHERE it.PRF_REGISTRO = iop.PRF_REGISTRO) as usu_nome,  '+
   ' (SELECT FIRST 1 PRF_QTDE_ENV_PRODUCAO FROM PED_IT01 IT WHERE IT.PED_CODIGO = PE.PED_CODIGO AND IOP.PRD_CODIGO = IT.PRD_CODIGO) AS PRF_QTDE_ENV_PRODUCAO, '+
   ' (select FIRST 1 COALESCE(t1.PRD_UND,t2.PRD_UND) FROM ped_it01 t1 join  prd0000 t2 on t2.prd_codigo = t1.prd_codigo AND  iop.PRD_CODIGO = t1.PRD_CODIGO AND pe.PED_CODIGO = t1.PED_CODIGO) prd_und, '+
   ' op.OPR_DATAFATURA, op.OPR_LEADTIME, op.opr_conclusao  '+
   ' FROM ped0000 pe                                                                                                                                   ' +
   ' join cli0000 cl on (cl.cli_codigo = pe.cli_codigo)                                                                                                ' +
   ' join ordemproducao op on (op.ped_codigo =  pe.ped_codigo and op.emp_codigo = pe.emp_codigo )                                                      ' +
   ' join item_ordemproducao iop on (op.opr_codigo = iop.opr_codigo)                                                                                   ' +
   ' join PED_IT01 it on (it.PRF_REGISTRO = iop.PRF_REGISTRO  )                                                                                        '+
   ' join prd0000 pr on (pr.prd_codigo = iop.prd_codigo)                                                                                               ' +
   ' join processos po ON (po.PRO_CODIGO = iop.PRO_CODIGO)    '+   /// versão modelo do processo
   ' left join servico se on (se.srv_codigo = po.srv_codigo) '+
   ' WHERE iop_nordem = :nordem  '+
   ' AND pe.ped_codigo = :pedido  '+
   ' and op.emp_codigo = :emp_codigo ';

  with cxgrd1DBTableView1 do
  begin
    pedido := Controller.SelectedRecords[0].Values[cxgrd1DBTableView1PED_CODIGO.Index];
    ARelationIndex := TcxGridDBDataController(DataController).GetDetailActiveRelationIndex(DataController.FocusedRecordIndex);
    ADetailDataController := TcxGridDataController(DataController).GetDetailDataController(DataController.FocusedRecordIndex, ARelationIndex) as TcxGridDBDataController;

     if ADetailDataController.FocusedRecordIndex = -1 then   // sem seleção
        ADetailDataController.FocusControl(0,ok);
//       raise Exception.Create('Sem ordem de servico');
      // imprimir todas as ordes
     if cxgrd1DBTableView1.Focused then
     begin
        OpenAux(' SELECT * FROM ITEM_ORDEMPRODUCAO'+
                '  WHERE OPR_CODIGO = '+IntToStr( cxgrd1DBTableView1.Controller.SelectedRecords[0].Values[cxgrd1DBTableView1OPR_CODIGO.Index])+
                ' order by IOP_SEQUENCIA  '   );

        itens := VarArrayCreate([0, qAux.RecordCount-1], varVariant);
        produtos := VarArrayCreate([0, qAux.RecordCount-1], varVariant);
        qAux.First;
        i:=0;
        while not qAux.Eof do
        begin
           itens [i]:= qaux.FieldByName('iop_nordem').AsString;
           produtos[i] := qAux.FieldByName('prd_codigo').AsString;
           Inc(i);
          qAux.Next;
        end;


     end
     else
     begin
       itens := VarArrayCreate([0, 0], varVariant);
       produtos := VarArrayCreate([0, 0], varVariant);
       itens [i]:=  ADetailDataController.Controller.SelectedRecords[0].Values[ cxgrd1DBTableView2IOP_NORDEM.index];
       produtos[i] :=  ADetailDataController.Controller.SelectedRecords[0].Values[ cxgrd1DBTableView2PRD_CODIGO.index];
     end;

//     if cxgrd1DBTableView2.Controller.SelectedRecordCount> 1 then
//        raise Exception.Create('Não selecionado nenhuma ordem');
     for I := VarArrayLowBound(Itens, 1) to VarArrayHighBound(Itens, 1) do
     begin

//       if ADetailDataController.Controller.SelectedRecords[0].IsData then
//       begin
         nordem := itens[i];
        if (DBInicio.Empresa.sPMT_CAMINHO_PEDIN <> '')
        and (FindFirst(DBInicio.Empresa.sPMT_CAMINHO_PEDIN + '\pdfs\OrdemServico'+ nordem+'.pdf', faAnyFile, searchResult) = 0) then
        begin
         // Imagem.Picture.LoadFromFile();
         ShellExecute(Application.Handle, 'open', PChar(DBInicio.Empresa.sPMT_CAMINHO_PEDIN + '\pdfs\'+searchResult.Name), nil, nil, SW_SHOWMAXIMIZED);
         continue;
        end;


         prd_codigo := produtos[i];
         //  ShowMessage(IntToStr(ope_codigo) +'-'+ IntToStr(pro_codigo));
         qROrdemServico.Close;
         qROrdemServico.ParamByName('nordem').AsString :=  nordem;
         qROrdemServico.ParamByName('pedido').AsString :=  pedido;
         if DBInicio.Exclusivo('PEDIDOS') then
          qROrdemServico.ParamByName('emp_codigo').AsString := DBInicio.Empresa.EMP_CODIGO
         Else
          qROrdemServico.ParamByName('emp_codigo').AsString := cxgrd1DBTableView1.Controller.SelectedRecords[0].Values[cxgrd1DBTableView1EMP_CODIGO.Index];
         qROrdemServico.Open;
         qOperacoes.Close;
         qOperacoes.Filtered := False;
         qOperacoes.SQL.Text := ' SELECT cast(''2001/01/31'' as timestamp) AS pcp_datafim, POP.POP_CODIGO, op.OPE_CODIGO, op.OPE_NOME, op.ope_descricao,OPE_NAOUSACARGA, op.OPE_FORMULARIO, 0 eqp_codigo,  0 pcp_codigo ' +
                                ' FROM PROCESSOS_OPERACOES pop '+
                                ' JOIN OPERACOES op ON (pop.OPE_CODIGO = op.OPE_CODIGO ' + ConcatSe(' and ',dbinicio.ExclusivoSql('ORDEMPRODUCAO')) + ') '+
                                '  WHERE PRO_CODIGO = '+IntToStr(qROrdemServico.FieldByName('pro_codigo').AsInteger) +
                                '  ORDER BY POP_SEQ ';

         qOperacoes.Open;
//       end
//       else
//         raise Exception.Create('sem informações');




     Task := TTask.Create( procedure
     begin
        if FindFirst(DBInicio.Empresa.spmt_CaminhoFoto+'\'+qROrdemServicoPRD_REFER.AsString+'.*', faAnyFile, searchResult) = 0 then
        begin
         // Imagem.Picture.LoadFromFile();
          TfrxPictureView(frxOrdemServico.FindObject('FotoProduto')).Picture.LoadFromFile(DBInicio.Empresa.spmt_CaminhoFoto+'\'+searchResult.Name);
        end;
      end);
      Task.Start;

      // LOGO :=tBitMap.Create;
      try
       // OpenAux('select EMP_LOGO from EMP0000 where EMP_CODIGO ='+qStr(qROrdemServico.ParamByName('emp_codigo').AsString));
       // Le_Imagem_JPEG_toBMP( (qaux.Fields[0] as tBlobField) , logo );
       // TfrxPictureView(frxOrdemServico.FindObject('LogoEmpresa')).Picture.Assign(LOGO);

       frxOrdemServico.ShowReport();
       if DBInicio.Empresa.sPMT_CAMINHO_PEDIN <> '' then
       begin
         frxPDFExport1.FileName := DBInicio.Empresa.sPMT_CAMINHO_PEDIN + '\pdfs\OrdemServico'+ nordem+'.pdf';
         frxOrdemServico.Export(frxPDFExport1);
         // TfrxPictureView(frxOrdemServico.FindObject('FotoProduto')).Picture.SaveToFile(DBInicio.Empresa.sPMT_CAMINHO_PEDIN + '\fotos\'+ nordem+'.jpg');
       end;

      finally
        // FreeAndNil(logo);
      end;
     end;
  end;
end;
procedure TfrmPedidoIndustrializacao.miPedidoClick(Sender: TObject);
var pedido : string;
    LOGO            :tBitMap;
    searchResult : TSearchRec;
begin
  inherited;
  qROrdemServico.sql.Text :=
   ' SELECT  pr.prd_refer , iop.iop_codigo,  iop.IOP_SEQUENCIA,po.pro_codigo, iop_nordem, lpad( op.opr_codigo,7,''0'') opr_codigo , cl.cli_codigo, cl.cli_razao, pe.ped_codigo, OPR_EMISSAO, OPR_DTENTREGA, ' +
   ' PED_VLTOTAL_BRUTO,                                     ' +
   ' pr.PRD_DESCRI,IOP_QUANTIDADE, IOP_PESO, po.PRO_DESCRICAO, srv_nome,                                                                       ' +
   ' PED_TIPOPECA_TERM, PED_MATERIAL_TERM , PED_DUREZASUPERFICIAL_TERM, PED_DUREZANUCLEO_TERM , PED_PROFUNDIDADE_TERM ,  PED_TAMANHOGRAO_TERM, PED_EHT_TERM , PED_DESENHO_TERM,'+
   ' srv_nome, PED_CONTATO_CLIENTE, PED_NUMERO_PED_CLIENTE, IOP_PRECO, '+
   '  (SELECT FIRST 1 PRE_ACORDOCOM FROM precos0000 pre WHERE pre.CLI_CODIGO = cl.cli_codigo ORDER BY PRE_VIGENCIA1 DESC ) PRE_ACORDOCOM, ' +
   ' (SELECT FIRST 1 u.USU_NOME  FROM PED_IT01 it JOIN USUARIO u ON (u.USU_CODIGO = it.USU_CODIGO ) WHERE it.PRF_REGISTRO = iop.PRF_REGISTRO) as usu_nome,  '+
   ' (SELECT FIRST 1 PRF_QTDE_ENV_PRODUCAO FROM PED_IT01 IT WHERE IT.PED_CODIGO = PE.PED_CODIGO AND IOP.PRD_CODIGO = IT.PRD_CODIGO) AS PRF_QTDE_ENV_PRODUCAO, '+
   ' (select FIRST 1 COALESCE(t1.PRD_UND,t2.PRD_UND)  FROM ped_it01 t1 join  prd0000 t2 on t2.prd_codigo = t1.prd_codigo AND  iop.PRD_CODIGO = t1.PRD_CODIGO AND pe.PED_CODIGO = t1.PED_CODIGO) prd_und, '+
   ' op.OPR_DATAFATURA, op.OPR_LEADTIME, op.opr_conclusao  '+
   ' FROM ped0000 pe                                                                                                                                                                               '+
   ' join cli0000 cl on (cl.cli_codigo = pe.cli_codigo)                                                                                                                                            '+
   ' join ordemproducao op on (op.ped_codigo =  pe.ped_codigo and op.emp_codigo = pe.emp_codigo )                                                                                                  '+
   ' join item_ordemproducao iop on (op.opr_codigo = iop.opr_codigo)                                                                                                                               '+
   ' join prd0000 pr on (pr.prd_codigo = iop.prd_codigo)                                                              '+
   ' join processos po ON (po.PRO_CODIGO = iop.PRO_CODIGO)      '+ // alteração do modelo aqui
   ' join PED_IT01 it on (it.PRF_REGISTRO = iop.PRF_REGISTRO  )                                                                                                                                    '+
    ' left join servico se on (se.srv_codigo = po.srv_codigo) '+
   ' WHERE :nordem = ''0''  '+
   '   AND pe.ped_codigo = :pedido  '+
   '   AND op.emp_codigo = :emp_codigo '+
   ' order by IOP_SEQUENCIA';
  with cxgrd1DBTableView1 do
  begin
    pedido := cxgrd1DBTableView1.Controller.SelectedRecords[0].Values[cxgrd1DBTableView1PED_CODIGO.Index];
    if (DBInicio.Empresa.sPMT_CAMINHO_PEDIN <> '')
    and (FindFirst( DBInicio.Empresa.sPMT_CAMINHO_PEDIN + '\pdfs\tratamento'+ pedido+'.pdf', faAnyFile, searchResult) = 0) then
    begin
     // Imagem.Picture.LoadFromFile();
     ShellExecute(Application.Handle, 'open', PChar(DBInicio.Empresa.sPMT_CAMINHO_PEDIN + '\pdfs\'+searchResult.Name), nil, nil, SW_SHOWMAXIMIZED);
     exit;
    end;
   qROrdemServico.Close;
   qROrdemServico.ParamByName('nordem').AsString :=  '0';
   qROrdemServico.ParamByName('pedido').AsString :=  pedido;
   if DBInicio.Exclusivo('PEDIDOS') then
    qROrdemServico.ParamByName('emp_codigo').AsString := DBInicio.Empresa.EMP_CODIGO
   Else
    qROrdemServico.ParamByName('emp_codigo').AsString := cxgrd1DBTableView1.Controller.SelectedRecords[0].Values[cxgrd1DBTableView1EMP_CODIGO.Index];
   qROrdemServico.Open;

   qROrdemServico.First;
  end;
  LOGO :=tBitMap.Create;
  try
   OpenAux('select EMP_LOGO from EMP0000 where EMP_CODIGO ='+qStr(qROrdemServico.ParamByName('emp_codigo').AsString));
   Le_Imagem_JPEG_toBMP( (qaux.Fields[0] as tBlobField) , logo );
   TfrxPictureView(frxPedidoTrat.FindObject('LogoEmpresa')).Picture.Assign(LOGO);
  finally
    FreeAndNil(logo);
  end;
  //if Assigned(DbInicio.Nfe.Logo) then
    //TfrxPictureView(frxPedidoTrat.FindObject('logorodape')).Picture.Bitmap.Assign(DbInicio.Nfe.Logo);
  if DBInicio.Empresa.sPMT_CAMINHO_PEDIN <> '' then
  begin
    frxPedidoTrat.ShowReport();
    frxPDFExport1.FileName := DBInicio.Empresa.sPMT_CAMINHO_PEDIN + '\pdfs\tratamento'+ pedido+'.pdf';
    frxPedidoTrat.Export(frxPDFExport1);
  end;
end;

procedure TfrmPedidoIndustrializacao.miresultadoInspecaoClick(Sender: TObject);
var
 ADetailDataController: TcxGridDBDataController; {cxGridDBDataDefinitions}
 ARelationIndex, AFocusedIndex: Integer;
 pedido, nordem : string;
 Imagem: tBitMap ;
 prd_codigo : string;
 ListaPcp : TStringList;
begin
  inherited;
  with cxgrd1DBTableView1 do
  begin
    pedido := cxgrd1DBTableView1.Controller.SelectedRecords[0].Values[cxgrd1DBTableView1PED_CODIGO.Index];
    ARelationIndex := TcxGridDBDataController(DataController).GetDetailActiveRelationIndex(DataController.FocusedRecordIndex);
    ADetailDataController := TcxGridDataController(DataController).GetDetailDataController(DataController.FocusedRecordIndex, ARelationIndex) as TcxGridDBDataController;
     if ADetailDataController.FocusedRecordIndex = -1 then   // sem nenhuma ordem
       raise Exception.Create('Sem ordem de servico');
     if cxgrd1DBTableView2.Controller.SelectedRecordCount> 1 then
        raise Exception.Create('Não selecionado nenhuma ordem');
     if ADetailDataController.Controller.SelectedRecords[0].IsData then
     begin
       nordem := ADetailDataController.Controller.SelectedRecords[0].Values[ cxgrd1DBTableView2IOP_NORDEM.index];
       IF BuscaUmDadoSqlAsInteger('  SELECT COUNT(1) FROM RESULTADO_ESPECIFICACOES REP '+
                                  '  JOIN ITEM_ORDEMPRODUCAO IOP ON (IOP.IOP_CODIGO = REP.IOP_CODIGO AND IOP_NORDEM = '+
                                  QuotedStr(nordem)     +')'
                                   )<=0 then
            raise Exception.Create('Sem inspeção ainda');



       RelatorioInspecao(nordem);

     end
     else
       raise Exception.Create('sem informações');
  end;
end;

procedure TfrmPedidoIndustrializacao.ndicesdeAtrasos1Click(Sender: TObject);
var
  ADetailDataController: TcxGridDBDataController; {cxGridDBDataDefinitions}
  ARelationIndex, AFocusedIndex: Integer;
  pedido, nordem : string;
  Imagem: tBitMap ;
  prd_codigo : string;
begin
  inherited;

  qROrdemServico.sql.Text :=
   ' SELECT  pr.prd_refer, iop.iop_codigo,  iop.IOP_SEQUENCIA, po.pro_codigo, iop_nordem, lpad( op.opr_codigo,7,''0'') opr_codigo , cl.cli_codigo, cl.cli_razao, pe.ped_codigo, OPR_EMISSAO, OPR_DTENTREGA, ' +
   ' PED_VLTOTAL_BRUTO, PED_TIPOPECA_TERM, PED_MATERIAL_TERM , PED_DUREZASUPERFICIAL_TERM, PED_DUREZANUCLEO_TERM , PED_PROFUNDIDADE_TERM ,  PED_TAMANHOGRAO_TERM, PED_EHT_TERM , PED_DESENHO_TERM,  '+
   ' PRF_PRDDESCRI as PRD_DESCRI, IOP_QUANTIDADE, IOP_PESO, po.PRO_DESCRICAO , srv_nome, PED_CONTATO_CLIENTE, PED_NUMERO_PED_CLIENTE, IOP_PRECO,               ' +
   ' (SELECT FIRST 1 PRE_ACORDOCOM FROM precos0000 pre WHERE pre.CLI_CODIGO = cl.cli_codigo ORDER BY PRE_VIGENCIA1 DESC ) PRE_ACORDOCOM, ' +
   ' (SELECT u.USU_NOME  FROM PED_IT01 it JOIN USUARIO u ON (u.USU_CODIGO = it.USU_CODIGO ) WHERE it.PRF_REGISTRO = iop.PRF_REGISTRO) as usu_nome, '+
   ' (SELECT FIRST 1 PRF_QTDE_ENV_PRODUCAO FROM PED_IT01 IT WHERE IT.PED_CODIGO = PE.PED_CODIGO AND IOP.PRD_CODIGO = IT.PRD_CODIGO) AS PRF_QTDE_ENV_PRODUCAO, '+
   ' (select FIRST 1 COALESCE(t1.PRD_UND,t2.PRD_UND)  FROM ped_it01 t1 join  prd0000 t2 on t2.prd_codigo = t1.prd_codigo AND  iop.PRD_CODIGO = t1.PRD_CODIGO AND pe.PED_CODIGO = t1.PED_CODIGO) prd_und, '+
   ' op.OPR_DATAFATURA, iop.iop_LEADTIME opr_leadtime, iop.iop_data_conclusao opr_conclusao  '+
   ' FROM ped0000 pe                                                                                                                                   ' +
   ' join cli0000 cl on (cl.cli_codigo = pe.cli_codigo)                                                                                                ' +
   ' join ordemproducao op on (op.ped_codigo =  pe.ped_codigo and op.emp_codigo = pe.emp_codigo )                                                      ' +
   ' join item_ordemproducao iop on (op.opr_codigo = iop.opr_codigo)                                                                                   ' +
   ' join PED_IT01 it on (it.PRF_REGISTRO = iop.PRF_REGISTRO  )                                                                                        '+
   ' join prd0000 pr on (pr.prd_codigo = iop.prd_codigo)                                                                                               ' +
   ' join processos po ON (po.PRO_CODIGO = IOP.PRO_CODIGO)    '+
   ' left join servico se on (se.srv_codigo = po.srv_codigo) '+
   ' WHERE op.emp_codigo = :emp_codigo '  ;

    qROrdemServico.close;

    if chkFaturados.Checked then
       qROrdemServico.sql.Text := qROrdemServico.sql.Text +  ' AND PED_SITUACAO NOT IN (''C'',''T'')  '
    Else
      qROrdemServico.sql.Text := qROrdemServico.sql.Text +   ' AND PED_SITUACAO NOT IN (''C'')  ';

    //qROrdemServico.sql.Text := qROrdemServico.sql.Text +  ' WHERE op.emp_codigo = :emp_codigo ';


   if (DataInclusaoIni.date > 0) and (DataInclusaoFim.date > 0) then
      qROrdemServico.sql.Text :=  qROrdemServico.sql.Text + ' and OPR_EMISSAO between '+ DateToSQL(DataInclusaoIni.Date) +' and '+ DateToSQL(DataInclusaoFim.Date)
   else if (DataInclusaoFim.date = 0) and (DataInclusaoFim.Date > 0) then
       qROrdemServico.sql.Text :=  qROrdemServico.sql.Text + ' and OPR_EMISSAO < ' + DateToSQL(DataInclusaoIni.Date)
   else if (DataInclusaoIni.Date > 0) and (DataInclusaoFim.Date = 0)  then
       qROrdemServico.sql.Text :=  qROrdemServico.sql.Text + ' and OPR_EMISSAO > '+DateToSQL(DataInclusaoIni.Date) ;

   if PesqCliente.idRetorno <> '' then
     qROrdemServico.sql.Text :=  qROrdemServico.sql.Text + ' and cl.cli_codigo = '+ QuotedStr(PesqCliente.idRetorno);

 //  if cxgrd1DBTableView1.DataController.Filter.FilterText <>  '' then
//      qROrdemServico.sql.Text :=  qROrdemServico.sql.Text + ' and '  +cxgrd1DBTableView1.DataController.Filter.FilterText;

   qROrdemServico.ParamByName('emp_codigo').AsString := DBInicio.Empresa.EMP_CODIGO;
   qROrdemServico.Open;

   frxIndiceAtrasos.ShowReport();

end;

procedure TfrmPedidoIndustrializacao.numPedidoExit(Sender: TObject);
begin
  inherited;
  btnPesquisa.Click;
end;

procedure TfrmPedidoIndustrializacao.PesqClienteButtonClick(Sender: TObject);
var tcr : tFrmPesquisaClientes;
begin
  inherited;
  tcr:= tFrmPesquisaClientes.Create(self);
  try
    tcr.ShowModal;
    if tcr.modalresult = mrok then
      PesqCliente.idRetorno := tcr.IDRetorno;

  finally
       FreeAndNil(tcr);
       btnPesquisa.Click;
  end;

end;

procedure TfrmPedidoIndustrializacao.PesqClienteSelect(Sender: TObject);
begin
  inherited;
  btnPesquisa.Click;
end;

procedure TfrmPedidoIndustrializacao.RelatorioInspecao( const nordem : string);
begin
 qROrdemServico.sql.Text :=
   ' SELECT  ' +
   ' pr.prd_refer, iop.iop_codigo,  iop.IOP_SEQUENCIA, po.pro_codigo, iop_nordem, lpad( op.opr_codigo,7,''0'') opr_codigo , cl.cli_codigo, cl.cli_razao, pe.ped_codigo, OPR_EMISSAO, OPR_DTENTREGA, ' +
   ' PED_VLTOTAL_BRUTO, PED_TIPOPECA_TERM, PED_MATERIAL_TERM , PED_DUREZASUPERFICIAL_TERM, PED_DUREZANUCLEO_TERM , PED_PROFUNDIDADE_TERM ,  PED_TAMANHOGRAO_TERM, PED_EHT_TERM , PED_DESENHO_TERM,  '+
   ' PRF_PRDDESCRI as PRD_DESCRI, IOP_QUANTIDADE, IOP_PESO, po.PRO_DESCRICAO , srv_nome, PED_CONTATO_CLIENTE, PED_NUMERO_PED_CLIENTE, IOP_PRECO,               ' +
   ' (SELECT FIRST 1 PRE_ACORDOCOM FROM precos0000 pre WHERE pre.CLI_CODIGO = cl.cli_codigo ORDER BY PRE_VIGENCIA1 DESC ) PRE_ACORDOCOM, ' +
   ' (SELECT u.USU_NOME  FROM PED_IT01 it JOIN USUARIO u ON (u.USU_CODIGO = it.USU_CODIGO ) WHERE it.PRF_REGISTRO = iop.PRF_REGISTRO) as usu_nome, '+
   ' (SELECT FIRST 1 PRF_QTDE_ENV_PRODUCAO FROM PED_IT01 IT WHERE IT.PED_CODIGO = PE.PED_CODIGO AND IOP.PRD_CODIGO = IT.PRD_CODIGO) AS PRF_QTDE_ENV_PRODUCAO, '+
   ' (select FIRST 1 COALESCE(t1.PRD_UND,t2.PRD_UND)  FROM ped_it01 t1 join  prd0000 t2 on t2.prd_codigo = t1.prd_codigo AND  iop.PRD_CODIGO = t1.PRD_CODIGO AND pe.PED_CODIGO = t1.PED_CODIGO) prd_und, '+
   ' op.OPR_DATAFATURA, op.OPR_LEADTIME, op.opr_conclusao '+
   ' FROM ped0000 pe                                                                                                                                   ' +
   ' join cli0000 cl on (cl.cli_codigo = pe.cli_codigo)                                                                                                ' +
   ' join ordemproducao op on (op.ped_codigo =  pe.ped_codigo and op.emp_codigo = pe.emp_codigo )                                                      ' +
   ' join item_ordemproducao iop on (op.opr_codigo = iop.opr_codigo)                                                                                   ' +
   ' join PED_IT01 it on (it.PRF_REGISTRO = iop.PRF_REGISTRO  )                                                                                        '+
   ' join prd0000 pr on (pr.prd_codigo = iop.prd_codigo)                                                                                               ' +
   ' join processos po ON (po.PRO_CODIGO = iop.PRO_CODIGO)    '+    //--> versao do modelo
   ' left join servico se on (se.srv_codigo = po.srv_codigo) '+
   ' WHERE iop_nordem = :nordem  '+
   iif(DBINICIO.Exclusivo('PEDIDOS') , ' and op.emp_codigo = :emp_codigo ','');
  qROrdemServico.Close;
  qROrdemServico.ParamByName('nordem').AsString :=  nordem;
  if DBINICIO.Exclusivo('PEDIDOS') then
     qROrdemServico.ParamByName('emp_codigo').AsString := DBInicio.Empresa.EMP_CODIGO;
  qROrdemServico.Open;

  qOperacoes.Close;
  qOperacoes.Filtered := False;
  qOperacoes.SQL.Text := ' SELECT pcp.pcp_datafim, POP.POP_CODIGO, op.OPE_CODIGO, op.OPE_NOME, op.ope_descricao,OPE_NAOUSACARGA, op.OPE_FORMULARIO, pcp.EQP_CODIGO, pcp_codigo  FROM PROCESSOS_OPERACOES pop '+
                          ' JOIN OPERACOES op ON (pop.OPE_CODIGO = op.OPE_CODIGO AND ope_temresultado = ''S''  '+ConcatSe(' and ',dbinicio.ExclusivoSql('ORDEMPRODUCAO'))+          ') '+
                          ' JOIN PROCESSOS_PRODUCAO pcp ON (pcp.OPE_CODIGO = op.OPE_CODIGO) '+
                          '  WHERE PRO_CODIGO = '+IntToStr(qROrdemServico.FieldByName('pro_codigo').AsInteger) +
                          ' AND iop_codigo = ' +  IntToStr( qROrdemServicoIOP_CODIGO.AsInteger)+
                          '  ORDER BY POP_SEQ ';

  qOperacoes.Open;
  qresultado.Close;
  qresultado.Params[0].Value := qROrdemServicoIOP_CODIGO.AsInteger ;//iop_codigo
  qresultado.Open;

  qEquipamento.Close;
  qEquipamento.Params[0].Value := qROrdemServicoIOP_CODIGO.AsInteger ;
  qEquipamento.Open;

  TfrxPictureView(frxInspecao.FindObject('LogoEmpresa')).Picture.Assign(DBInicio.Empresa.LOGO);
  frxInspecao.ShowReport();
end;
procedure TfrmPedidoIndustrializacao.qROrdemServicoCalcFields(DataSet: TDataSet);
begin
  inherited;
   qROrdemServicoOPR_TEMPOATRASO.asinteger := minutesbetween( qROrdemServicoOPR_DTENTREGA.AsDateTime,qROrdemServicoOPR_CONCLUSAO.AsDateTime);
end;

end.
