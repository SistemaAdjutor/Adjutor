unit uEnvasar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBEditFormFDAC, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Phys.FBDef, FireDAC.UI.Intf, FireDAC.VCLUI.Wait, FireDAC.VCLUI.Error, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.FB, JvErrorIndicator,
  JvValidators, JvComponentBase, Data.DB, FireDAC.Comp.Client, FireDAC.Comp.UI, FireDAC.Phys.IBBase, FireDAC.Comp.DataSet, cxClasses, cxLocalization, ACBrBase, ACBrEnterTab, Vcl.Buttons, Vcl.ExtCtrls,
  Data.FMTBcd, Vcl.StdCtrls, Vcl.DBCtrls, SgDbSeachComboUnit, Data.SqlExpr, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, cxNavigator, cxDBData, cxProgressBar, cxGridLevel, cxGridBandedTableView, cxGridDBBandedTableView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridCustomView, cxGrid,
  Vcl.Menus, uProducaoDAO, Vcl.Mask, JvExMask, JvToolEdit, BaseDbEstoqueForm,
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
  TfrmExecutarEnvase = class(TfrmBaseDBEditFDAC)
    qColaborador: TSQLQuery;
    qEquipamento: TSQLQuery;
    cdsEditENO_CODIGO: TIntegerField;
    cdsEditCOL_CODIGO: TIntegerField;
    cdsEditEQP_CODIGO: TIntegerField;
    cdsEditENO_TIPO: TIntegerField;
    cdsEditIOP_CODIGO: TIntegerField;
    cxgrd1: TcxGrid;
    cxgrd1DBTableView1: TcxGridDBTableView;
    cxgrd1DBTableView1PRD_REFER: TcxGridDBColumn;
    cxgrd1DBTableView1PRD_DESCRI: TcxGridDBColumn;
    cxgrd1DBTableView1PRD_UND: TcxGridDBColumn;
    cxgrd1DBTableView1MP_UCONSUMO: TcxGridDBColumn;
    cxgrd1DBTableView1MP_CONSUMOTOTAL: TcxGridDBColumn;
    cxgrd1DBTableView1PRD_GERENCIA_LOTE: TcxGridDBColumn;
    cxgrd1DBTableView1MP_SITUACAO: TcxGridDBColumn;
    cxgrd1DBTableView1MP_EMPENHADO: TcxGridDBColumn;
    cxgrd1DBTableView1ESTOQUEDISPONIVEL: TcxGridDBColumn;
    cxgrd1DBTableView1PercConsumido: TcxGridDBColumn;
    cxgrd1DBTableView1Column1: TcxGridDBColumn;
    cxgrd1DBTableView1IOP_CODIGO: TcxGridDBColumn;
    cxgrd1DBTableView1MP_CODIGO: TcxGridDBColumn;
    cxgrd1DBTableView1PED_CODIGO: TcxGridDBColumn;
    cxgrd1DBTableView1PRD_CODIGO: TcxGridDBColumn;
    cxgrd1DBTableView1MP_CODIGO_SUBST: TcxGridDBColumn;
    cxgrd1DBTableView1SUBST: TcxGridDBColumn;
    cxgrd1DBTableView1MP_CUSTO: TcxGridDBColumn;
    cxgrd1DBBandedTableView1: TcxGridDBBandedTableView;
    cxgrd1DBBandedTableView1OPR_CODIGO: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1OPR_EMISSAO: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1IOP_QUANTIDADE: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1IOP_NORDEM: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1PRD_REFER: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1PRD_DESCRI: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1PRD_UND: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1OPR_DTENTREGA: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1IOP_DATA_CONCLUSAO: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1PED_CODIGO: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1OPR_CONCLUSAO: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1LEFTDAYS: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1IOP_QTDE_CONCLUIDA: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1IOP_QTDE_PRODUZINDO: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1IOP_QTDE_REFUGADA: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1Prazo: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1FALTA: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1IOP_STATUS: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1IOP_CUSTOMP: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1DEADLINE: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1CLI_CODIGO: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1OPR_VALIDADE: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1IOP_CODIGO: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1PRD_CODIGO: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1IOP_SEQUENCIA: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1IOP_PESO: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1IOP_DATA_INICIO: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1IOP_DATA_PREVISTA: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1IOP_DATA_AJUSTADA: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1IOP_DIAS_CORRIDOS: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1IOP_STATUS_ENTREGA: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1CLI_RAZAO: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1IOP_PRECO: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1IOP_CUSTO: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1IOP_CUSTOOPERACAO: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1IOP_CUSTOCOLABORADOR: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1IOP_CUSTOEQUIPAMENTO: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1IOP_CUSTOSERVICOS: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1PRF_REGISTRO: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1PRO_CODIGO: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1FTI_REGISTRO: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1EMP_CODIGO: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1IOP_DATALIBERACAO: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1OPR_STATUS: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1IOP_SEQ_PRG: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1CustoSubOrdens: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1CustoTotal: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1IndicadorFinanceiro: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1IOP_PREFIXO: TcxGridDBBandedColumn;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    cdsMateriaPrima: TFDQuery;
    cdsMateriaPrimaMP_CODIGO: TIntegerField;
    cdsMateriaPrimaIOP_CODIGO: TIntegerField;
    cdsMateriaPrimaMP_UCONSUMO: TFMTBCDField;
    cdsMateriaPrimaMP_SITUACAO: TStringField;
    cdsMateriaPrimaPRD_REFER: TStringField;
    cdsMateriaPrimaPRD_DESCRI: TStringField;
    cdsMateriaPrimaMP_EMPENHADO: TFMTBCDField;
    cdsMateriaPrimaMP_CONSUMOTOTAL: TFMTBCDField;
    cdsMateriaPrimaPED_CODIGO: TStringField;
    cdsMateriaPrimaPRD_CODIGO: TStringField;
    cdsMateriaPrimaMP_CODIGO_SUBST: TIntegerField;
    cdsMateriaPrimaSUBST: TStringField;
    cdsMateriaPrimaPercConsumido: TFloatField;
    cdsMateriaPrimaPRD_UND: TStringField;
    cdsMateriaPrimaPRD_GERENCIA_LOTE: TStringField;
    cdsMateriaPrimaESTOQUEDISPONIVEL: TFMTBCDField;
    cdsMateriaPrimaMP_CUSTO: TFMTBCDField;
    dsMateriaPrima: TDataSource;
    pmEnvase: TPopupMenu;
    Adicionaritem1: TMenuItem;
    miExcluiritem: TMenuItem;
    Panel1: TPanel;
    Label1: TLabel;
    EdColaboradorCodigo: TEdit;
    edColaborador: TSgDbSearchCombo;
    Label2: TLabel;
    edEquipamento: TEdit;
    Label3: TLabel;
    DBComboBox1: TDBComboBox;
    Label4: TLabel;
    dtValidade: TJvDateEdit;
    edPesquisaEquipamento: TSgDbSearchCombo;
    lLote: TLabel;
    dtFabricacao: TJvDateEdit;
    Label5: TLabel;
    procedure cdsEditENO_TIPOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure cdsEditENO_TIPOSetText(Sender: TField; const Text: string);
    procedure btnOkClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EdColaboradorCodigoExit(Sender: TObject);
    procedure edEquipamentoExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Adicionaritem1Click(Sender: TObject);
    procedure miExcluiritemClick(Sender: TObject);
    procedure edColaboradorSelect(Sender: TObject);
    procedure edPesquisaEquipamentoSelect(Sender: TObject);
  private
    tcr: tProducaoDao;
    FIOP : INTEGER;
    fped_codigo : string;
    fopr_codigo : integer;
    fore_codigo : integer;
    fprd_codigo : string;
    fprd_refer : string;
    fPRDL_REGISTRO: integer;
    fPRDL_LOTE: string;
    FquantidadeProduzir: double;
  public
    property iop : integer read fiop write fiop;
    property pedido : string read fped_Codigo write fped_codigo;
    property opr_codigo : integer read fopr_codigo write fopr_codigo;
    property ore_codigo : integer read fore_codigo write fore_codigo;
    property prd_Refer :string read fprd_Refer write fprd_refer;
    property prd_codigo :string read fprd_codigo write fprd_codigo;
    property PRDL_REGISTRO : integer read fPRDL_REGISTRO write fPRDL_REGISTRO;
    property prdl_lote : string read fPRDL_LOTE write fPRDL_LOTE;
    property QuantidadeProduzir: double read FquantidadeProduzir write FquantidadeProduzir;

  end;

var
  frmExecutarEnvase: TfrmExecutarEnvase;

implementation

{$R *.dfm}

uses uSelProduto, InicioDB, uteis, uEnvaseProdutos;

procedure TfrmExecutarEnvase.Adicionaritem1Click(Sender: TObject);
var prd_codigo, prd_refer : string;
   consumindo : double;
   mp_codigo : integer;
begin
  inherited;
 if not Assigned(frmSelecaoProduto) then
    frmSelecaoProduto := TfrmSelecaoProduto.Create(Application);
  try

      frmSelecaoProduto.ConsumoTotal := 0;
      frmSelecaoProduto.Caption := 'Adicionando uma nova MP ao envase ';

      if frmSelecaoProduto.ShowModal = mrOk then
      begin
        prd_codigo :=  frmSelecaoProduto.cod_prod  ;
        prd_refer := frmSelecaoProduto.Cod_refer;
        consumindo := frmSelecaoProduto.ConsumoTotal;



        //adicionando a mp
         mp_codigo:= tcr.AdicionandoMP(self, pedido,
                          prd_codigo,
                          IntToStr(ore_codigo),
                          iop,
                          opr_codigo,
                          0,  // consumo unitário
                          0,  //base de composicao
                          consumindo,
                          -1,0 );
        tcr.HistoricoProducao(iop,mp_codigo,'Adicionado '+FormatFloat('###,###,##.'+StrZero('0', dbInicio.Empresa.fPMT_QTDE_DEC_PED),consumindo) + ' de nova MP');
        cdsMateriaPrima.close;
        cdsMateriaPrima.Open;


      end;
  finally

  end;
end;

procedure TfrmExecutarEnvase.btnOkClick(Sender: TObject);
var controle : boolean;
    concluida, concluidaKardex : double;
    registro : integer;
    sql: string;
    kardex : TfrmBaseDbEstoque ;
    numlote, prdReferItem : string;
    seqLote: integer;
begin
  if cdsEditCOL_CODIGO.AsInteger = 0  then
    raise Exception.Create('Colaborador deve ser prenchido');
  if cdsMateriaPrima.RecordCount = 0  then
    raise Exception.Create('Sem nenhuma materia-prima ');

  if cdsEditENO_CODIGO.IsNull then
     cdsEditENO_CODIGO.AsInteger := GetNextSequence('gen_envase_ordem');
  cdsEditIOP_CODIGO.AsInteger := iop;
  if not DBInicio.Empresa.PMT_ENVASE_SBAIXA then
  begin
    try
      cdsMateriaPrima.EnableControls;
      cdsMateriaPrima.First;
      while not cdsMateriaPrima.Eof do
      begin
        if cdsMateriaPrimaMP_UCONSUMO.AsFloat > cdsMateriaPrimaESTOQUEDISPONIVEL.AsFloat then
          raise Exception.Create('Estoque indisponível para concluir');

        cdsMateriaPrima.Next;
      end;
    finally
      cdsMateriaPrima.DisableControls;
    end;

  end;

  inherited;
 // consumir materia prima
  // concluida := cdsMateriaPrimaMP_CONSUMOTOTAL.AsFloat;
  concluidaKardex :=  StrToFloat(frmEnvaseProdutos.cxgrd1DBBandedTableView1.DataController.Controller.SelectedRecords[0].Values[frmEnvaseProdutos.cxgrd1DBBandedTableView1IOP_QUANTIDADE.Index]);
  self.dbConn.Commit;
  self.dbConn.Close;
  concluida := tcr.ConsumirEstoqueInsumo(iop, IntToStr(ore_codigo));

  tcr.ConcluirORDEM (0,concluida,concluida, 0, iop,'','' );
  registro := 0 ;
  controle := BuscaUmDadoSqlAsString('select PRD_GERENCIA_LOTE FROM PRD0000 where prd_codigo = '+QuotedStr(prd_codigo) ) = 'S';
  if controle  then
  begin
    if prdl_lote = '' then
    begin
      seqLote := BuscaUmDadoSqlAsInteger('SELECT COUNT (*) FROM PRD_LOTE WHERE IOP_CODIGO = ' +IntToStr(iop));
      inc(seqLote);
      numlote := 'LT'+IntToStr(ore_codigo) + '/'+IntToStr(seqLote);
      registro:= GetNextSequence('gen_prd_lote_id');
      sql:= 'INSERT INTO PRD_LOTE  (PRDL_REGISTRO, EMP_CODIGO,       '+
             ' PRDL_DATA_FABRICACAO, PRDL_DATA_VALIDADE,              '+
             ' PRDL_LOTE, PRDL_SALDO, PRD_CODIGO, PRDL_CADASTRO, PRDL_DESCRICAO , IOP_CODIGO '+
             '  )                                      '+
             ' VALUES('+IntToStr(registro) +',' +
              QuotedStr(DBInicio.Empresa.EMP_CODIGO) +',' +
              datetoSQL(now) + ','+
              datetosql(dtValidade.Date) +',' +
              QuotedStr(numlote) +','+
              floattosql( concluida) +','+
              QuotedStr(prd_codigo) +','+
              datetosql(date) + ','+
              QuotedStr('Lote gerado pelo envase No.: '+ IntToStr(ore_codigo))  +  ','+
              IntToStr(iop)+
              ')';

       ExecSql(SQL);
    end
    else
    begin
      numlote := prdl_lote;
      registro := PRDL_REGISTRO;
      sql := 'UPDATE PRD_LOTE SET ' +
             ' PRDL_DATA_VALIDADE = ' + datetosql(dtValidade.Date) + ',' +
             ' PRDL_DATA_FABRICACAO = ' + datetosql(dtFabricacao.Date) + // ',' +
            //  ' PRDL_QTDELOTE = ' + floattosql(concluida) + ',' +
            // ' PRDL_SALDO = ' + floattosql(concluida) +
             ' WHERE IOP_CODIGO = ' + IntToStr(iop);
      ExecSql(SQL);
    end;


  end;
  kardex := TfrmBaseDbEstoque.Create(self);
     try
       kardex.KardexLancamento(
         IntToStr(ore_codigo) ,     //registro interno ordem de envase
        'PRO',      // TIPO DE REGISTRO
        DBInicio.empresa.wPMT_AMX_VENDA, //PMT_AMX_PRODUCAO_ENTRADA,
        DBInicio.empresa.wPMT_AMX_VENDA,   //amoxarifado destino
        prd_codigo,
        '',//grade
        '', //UNIDADE DE MEDIDA
        'E', // SAIDA
        '', // numlote, ----------
        '', // IntToStr(registro), ----------
        'ENTRADA DE PRODUÇÃO',
        Now,
        concluidaKardex,
        intToStr(ore_codigo),
        prd_codigo,
         0
           );
        if controle then
          TCR.HistoricoProducao(iop,0,'Envasado o Lote '+ numlote)
        else
          TCR.HistoricoProducao(iop,0,'Envasado');

       {
       OpenAux('SELECT * FROM FTC_IT01 fi JOIN PRD0000 p ON (p.PRD_REFER = fi.PRD_REFER) WHERE P.PRD_CODIGO = ' + QuotedStr(prd_codigo)  );
       while not qAux.eof do
       begin

         prdReferItem := BuscaUmDadoSqlAsString('SELECT PRD_CODIGO FROM PRD0000 WHERE PRD_REFER = ' + QuotedStr(qAux.FieldByName('PRD_REFER_ITENS').AsString));
         kardex.KardexLancamento(
           IntToStr(ore_codigo) ,     //registro interno ordem de envase
           'PRO',      // TIPO DE REGISTRO
           qAux.FieldByName('AMX_CODIGO').AsString,
           '',
           prdReferItem,
           '',//grade
           '', //UNIDADE DE MEDIDA
           'S', // SAIDA
           IntToStr(registro), // numlote, ----------
           '', // IntToStr(registro), ----------
           'SAÍDA DE ENVASE',
           Now,
           concluidaKardex * qAux.FieldByName('FTI_UC').AsFloat,
           intToStr(ore_codigo),
           prdReferItem,
           0
         );
        // ExecSql('UPDATE PRD_LOTE SET PRDL_SALDO = PRDL_SALDO - '  + FloatToSQL(concluidaKardex * qAux.FieldByName('FTI_UC').AsFloat) + ' WHERE PRDL_REGISTRO = ' + IntToStr(registro) );
         qAux.Next;
       end;

       }

     finally
      kardex.Free;
     end;
      sql:= 'UPDATE ITEM_ORDEMPRODUCAO '+
            'SET IOP_STATUS_ENVASE = '+QuotedStr('F')+
            ' , ORE_DATAENVASE = '+DateTimeToSQL(Now)+
            ' WHERE IOP_CODIGO = '+inttostr(iop);
     ExecSql(SQL);
   dbConn.Commit;
   dbConn.Close;
//     if Assigned(frmEnvaseProdutos) then
//        frmEnvaseProdutos.btnPesquisa.click;
end;

procedure TfrmExecutarEnvase.cdsEditENO_TIPOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
   1: Text := 'GRAVIMÉTRICO';
   2: Text := 'POR SENSOR DE NÍVEL';
   3: text := 'POR VOLUME';
   4: text := 'DO FLUXO DE MASSA';
  end;


end;

procedure TfrmExecutarEnvase.cdsEditENO_TIPOSetText(Sender: TField; const Text: string);
begin
  inherited;
  if text =  'GRAVIMÉTRICO' then
    Sender.AsInteger := 1;
  if text = 'POR SENSOR DE NÍVEL' then
    Sender.AsInteger := 2;
  if text = 'POR VOLUME' then
    Sender.AsInteger := 3;
  if text = 'DO FLUXO DE MASSA'  then
    Sender.AsInteger := 4;



end;

procedure TfrmExecutarEnvase.EdColaboradorCodigoExit(Sender: TObject);
begin
  inherited;
  if EdColaboradorCodigo.Text <> '' then
    edColaborador.idRetorno := EdColaboradorCodigo.Text
  else
    EdColaborador.idRetorno := '';
end;

procedure TfrmExecutarEnvase.edColaboradorSelect(Sender: TObject);
begin
  inherited;
  EdColaboradorCodigo.Text := edColaborador.idRetorno;


end;

procedure TfrmExecutarEnvase.edEquipamentoExit(Sender: TObject);
begin
  inherited;
  if edEquipamento.Text <> '' then
    edPesquisaEquipamento.idRetorno := edEquipamento.Text
  else
    edPesquisaEquipamento.idRetorno := '';
end;

procedure TfrmExecutarEnvase.edPesquisaEquipamentoSelect(Sender: TObject);
begin
  inherited;
  edEquipamento.Text := edPesquisaEquipamento.idRetorno;
end;

procedure TfrmExecutarEnvase.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TfrmExecutarEnvase.FormCreate(Sender: TObject);
begin
  inherited;
  if not Assigned(tcr) then
    tcr := TProducaoDao.Create(application);

	CampoID:='ENO_CODIGO';
	Tabela:='ENVASE_ORDEM';
  self.Width := 978 ;
  self.Height := 430;
//  self.Constraints.MinHeight:= 555;
   self.Constraints.MinWidth:=978;
//  self.Constraints.MaxHeight:= 0;
  TemDetalhe := False;

end;

procedure TfrmExecutarEnvase.FormDestroy(Sender: TObject);
begin
  inherited;
  if Assigned(tcr) then
    FreeAndNil(tcr);

  frmExecutarEnvase := NIL;
end;

procedure TfrmExecutarEnvase.FormShow(Sender: TObject);
begin
  inherited;
  if prdl_lote <> '' then
    lLote.Caption := 'Lote usado :'+ prdl_lote ;
  cdsMateriaPrima.Close;
  cdsMateriaPrima.sql.text :=
   'SELECT  MP_CODIGO_SUBST, mp.prd_codigo, mp.ped_codigo,  mp_codigo, iop_codigo, mp.MP_UCONSUMO, mp_situacao,'+
   ' pr.PRD_REFER, pr.PRD_DESCRI, pr.prd_und,PRD_GERENCIA_LOTE,  ' +
   ' mp.MP_EMPENHADO, MP_CONSUMOTOTAL,                                  '+
   '      (SELECT prd_descri                                            '+
   '        FROM MATERIAPRIMA_ORDEMPRODUCAO mpst                        '+
   '        JOIN PRD0000 prst ON (prst.PRD_CODIGO = mpst.PRD_CODIGO)    '+
   '        WHERE mpst.MP_CODIGO = mp.mp_codigo_subst  )  subst,        '+
   '  (SELECT sum(KAS_SALDO)- COALESCE(sum(KAS_RESERVA),0)  FROM kardex_almox_saldo kas WHERE kas.PRD_CODIGO = mp.PRD_CODIGO ) EstoqueDisponivel, ' +
   ' MP_CUSTO '+
   ' FROM MATERIAPRIMA_ORDEMPRODUCAO mp                                 '+
   ' JOIN PRD0000 pr ON (pr.PRD_CODIGO = mp.PRD_CODIGO)                 '+
   ' where MP_CONSUMOTOTAL > 0 and iop_codigo = '+ VarToStr( iop);

  cdsMateriaPrima.Open;
 btnOk.Caption := 'Confirmar';
end;

procedure TfrmExecutarEnvase.miExcluiritemClick(Sender: TObject);
begin
  inherited;
  if (MessageDlg('Deseja excluir o item '+cdsMateriaPrimaPRD_REFER.AsString +' ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
  begin
    ExecSql('DELETE FROM MATERIAPRIMA_ORDEMPRODUCAO WHERE MP_CODIGO = '+IntToStr(cdsMateriaPrimaMP_CODIGO.AsInteger) );
    tcr.HistoricoProducao(iop,cdsMateriaPrimaMP_CODIGO.AsInteger,'Exclusão da MP '+cdsMateriaPrimaPRD_REFER.AsString);

    cdsMateriaPrima.close;
    cdsMateriaPrima.Open;


  end;
end;

end.
