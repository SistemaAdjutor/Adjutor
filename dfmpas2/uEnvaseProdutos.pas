unit uEnvaseProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBPesquisaFDAC, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  Data.DB, cxDBData, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Phys.FBDef, FireDAC.UI.Intf, FireDAC.VCLUI.Wait, FireDAC.VCLUI.Error, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.FB, ACBrCalculadora, frxClass, Vcl.Menus,
  FireDAC.Comp.Client, FireDAC.Comp.UI, FireDAC.Phys.IBBase, FireDAC.Comp.DataSet, cxLocalization, ACBrBase, ACBrEnterTab, JvExControls, JvArrowButton, Vcl.StdCtrls, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, Vcl.Buttons, Vcl.ExtCtrls, Vcl.ComCtrls, uProducaoDAO, cxGridBandedTableView, cxGridDBBandedTableView,
  cxProgressBar, uenvasar, uConclusaoOP, BaseDbEstoqueForm, cxGridDBDataDefinitions, frxDBSet;


type
  TfrmEnvaseProdutos = class(TfrmBaseDBPesquisaFDAC)
    cdsBuscaPED_CODIGO: TStringField;
    cdsBuscaPRD_CODIGO: TStringField;
    cdsBuscaPRD_REFER: TStringField;
    cdsBuscaPRD_DESCRI: TStringField;
    cdsBuscaIOP_QUANTIDADE: TFMTBCDField;
    cdsBuscaPRD_UND: TStringField;
    cdsBuscaPRD_PESOKG: TFMTBCDField;
    cdsBuscaIOP_STATUS_ENVASE: TStringField;
    cdsBuscaORE_CODIGO: TIntegerField;
    cdsBuscaORE_DATAENVASE: TSQLTimeStampField;
    cdsBuscaCLI_RAZAO: TStringField;
    cdsBuscaCLI_CODIGO: TStringField;
    cdsBuscaREP_NOME: TStringField;
    btnProduto: TSpeedButton;
    cxgrd1DBBandedTableView1: TcxGridDBBandedTableView;
    cxgrd1DBBandedTableView1PED_CODIGO: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1PRD_CODIGO: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1PRD_REFER: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1PRD_DESCRI: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1IOP_QUANTIDADE: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1PRD_UND: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1PRD_PESOKG: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1IOP_STATUS_ENVASE: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1ORE_CODIGO: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1ORE_DATAENVASE: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1CLI_RAZAO: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1CLI_CODIGO: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1REP_NOME: TcxGridDBBandedColumn;

    cxgrd1DBTableView1IOP_CODIGO: TcxGridDBColumn;
    cxgrd1DBTableView1MP_UCONSUMO: TcxGridDBColumn;
    cxgrd1DBTableView1MP_SITUACAO: TcxGridDBColumn;
    cxgrd1DBTableView1PRD_REFER: TcxGridDBColumn;
    cxgrd1DBTableView1PRD_DESCRI: TcxGridDBColumn;
    cxgrd1DBTableView1MP_EMPENHADO: TcxGridDBColumn;
    cxgrd1DBTableView1MP_CONSUMOTOTAL: TcxGridDBColumn;
    cxgrd1DBTableView1MP_CODIGO: TcxGridDBColumn;
    cxgrd1DBTableView1PED_CODIGO: TcxGridDBColumn;
    cxgrd1DBTableView1PRD_CODIGO: TcxGridDBColumn;
    cxgrd1DBTableView1MP_CODIGO_SUBST: TcxGridDBColumn;
    cxgrd1DBTableView1SUBST: TcxGridDBColumn;
    cxgrd1DBTableView1PRD_UND: TcxGridDBColumn;
    cxgrd1DBTableView1PRD_GERENCIA_LOTE: TcxGridDBColumn;
    cxgrd1DBTableView1PercConsumido: TcxGridDBColumn;

    cxgrd1DBTableView1ESTOQUEDISPONIVEL: TcxGridDBColumn;

    btnIniciar: TSpeedButton;
    cdsBuscaIOP_CODIGO: TIntegerField;
    cxgrd1Level1: TcxGridLevel;
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
    cxgrd1DBBandedTableView1IOP_CODIGO: TcxGridDBBandedColumn;
    pmEnvase: TPopupMenu;
    Iniciarenvase1: TMenuItem;
    AnexarpedidoOE1: TMenuItem;
    cdsBuscaOPR_CODIGO: TIntegerField;
    SpeedButton1: TSpeedButton;
    btnConcluirEnvase: TSpeedButton;
    Adicionaritem1: TMenuItem;
    chkConcluido: TCheckBox;
    edBusca: TLabeledEdit;
    btnPrevisao: TButton;
    cdsBuscaIOP_DATA_INICIO: TSQLTimeStampField;
    cxgrd1DBBandedTableView1OPR_CODIGO: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1IOP_DATA_INICIO: TcxGridDBBandedColumn;
    miExcluiritem: TMenuItem;
    Phistorico: TPanel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1HOP_DATAMVTO: TcxGridDBColumn;
    cxGrid1DBTableView1HOP_DESCRICAO: TcxGridDBColumn;
    cxGrid1DBTableView1USU_NOME: TcxGridDBColumn;
    cxGrid1DBTableView1USU_CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1IOP_CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1MP_CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1HOP_CODIGO: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cdsHistorico: TFDQuery;
    cdsHistoricoHOP_CODIGO: TIntegerField;
    cdsHistoricoHOP_DATAMVTO: TSQLTimeStampField;
    cdsHistoricoHOP_DESCRICAO: TStringField;
    cdsHistoricoUSU_CODIGO: TIntegerField;
    cdsHistoricoIOP_CODIGO: TIntegerField;
    cdsHistoricoMP_CODIGO: TIntegerField;
    cdsHistoricoUSU_NOME: TStringField;
    cdsHistoricoPRD_REFER: TStringField;
    dsHistorico: TDataSource;
    frxRelOSP10: TfrxReport;
    frxDBBusca: TfrxDBDataset;
    frxDBMateriaPrima: TfrxDBDataset;
    frxOE2: TfrxReport;
    pmListar: TPopupMenu;
    OrdemdeenvaseModelo11: TMenuItem;
    OrdemdeenvaseModelo21: TMenuItem;
    cdsBuscaPRDL_LOTE: TStringField;
    cxgrd1DBBandedTableView1PRDL_LOTE: TcxGridDBBandedColumn;
    cdsBuscaPRDL_REGISTRO: TIntegerField;
    btnEstornar: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnNovoClick(Sender: TObject);
    procedure btnProdutoClick(Sender: TObject);
    procedure cdsBuscaIOP_STATUS_ENVASEGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure btnIniciarClick(Sender: TObject);
    procedure cxgrd1Level1GetGridView(Sender: TcxGridLevel; AMasterRecord: TcxCustomGridRecord; var AGridView: TcxCustomGridView);
    procedure cxgrd1DBBandedTableView1FocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
    procedure Iniciarenvase1Click(Sender: TObject);
    procedure AnexarpedidoOE1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure btnConcluirEnvaseClick(Sender: TObject);
    procedure Adicionaritem1Click(Sender: TObject);
    procedure chkConcluidoClick(Sender: TObject);
    procedure btnPrevisaoClick(Sender: TObject);
    procedure cxgrd1DBBandedTableView1DataControllerDetailExpanding(ADataController: TcxCustomDataController; ARecordIndex: Integer; var AAllow: Boolean);
    procedure miExcluiritemClick(Sender: TObject);
    procedure cdsBuscaAfterScroll(DataSet: TDataSet);
    procedure btnPesquisaClick(Sender: TObject);
    procedure cdsBuscaAfterRefresh(DataSet: TDataSet);
    procedure cdsHistoricoHOP_DESCRICAOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure frxOE2GetValue(const VarName: string; var Value: Variant);
    procedure OrdemdeenvaseModelo11Click(Sender: TObject);
    procedure OrdemdeenvaseModelo21Click(Sender: TObject);
    procedure btnEstornarClick(Sender: TObject);
    procedure frxOE2NewGetValue(Sender: TObject; const VarName: string; var Value: Variant);
    procedure frxRelOSP10GetValue(const VarName: string; var Value: Variant);

    procedure frxOE2BeginDoc(Sender: TObject);
  private
    NaoAtualizaHistorico: boolean;
    tcr: tProducaoDao;
    procedure filtro;

  public
    procedure umMyMessage(var Message: TMessage); message UM_MYMESSAGE;

    procedure FormShow(Sender: TObject);
  end;

var
  frmEnvaseProdutos: TfrmEnvaseProdutos;
  FtcEtapas: string;

implementation

{$R *.dfm}

uses InicioDB, uteis, Ped0004, uselproduto, uConfirmaDemanda, uPrevisaoCompras;

{ TfrmBaseDBPesquisaFDAC1 }

procedure TfrmEnvaseProdutos.Adicionaritem1Click(Sender: TObject);
var prd_codigo, prd_refer: string;
    consumindo : double;
    pedido : string;
    iop_codigo, opr_codigo, mp_codigo : integer;
begin
  inherited;
  if cdsBuscaIOP_STATUS_ENVASE.AsString = 'F' then
    raise Exception.Create('Já finalizado');

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
        pedido :=  cdsBuscaPED_CODIGO.AsString;
        iop_codigo := cdsBuscaIOP_CODIGO.AsInteger;
        opr_codigo := cdsBuscaOPR_CODIGO.AsInteger ;


        //adicionando a mp
         mp_codigo:= tcr.AdicionandoMP(self, pedido,
                          prd_codigo,
                          cdsBuscaORE_CODIGO.AsString,
                          iop_codigo,
                          opr_codigo,
                          0,  // consumo unitário
                          0,  //base de composicao
                          consumindo,
                          -1,0 );
        tcr.HistoricoProducao(iop_codigo,mp_codigo,'Adicionado '+FormatFloat('###,###,##.'+StrZero('0', dbInicio.Empresa.fPMT_QTDE_DEC_PED),consumindo) + ' de nova MP');
        cdsMateriaPrima.close;
        cdsMateriaPrima.Open;
        if DBInicio.Empresa.bUSP_CUSTOPRODUCAO then
        begin
          cdsbusca.close;
          cdsbusca.open;
        end;

      end;
  finally

  end;
end;

procedure TfrmEnvaseProdutos.AnexarpedidoOE1Click(Sender: TObject);
var ped_codigo :string;
begin
  inherited;
  if cdsBuscaPED_CODIGO.AsString <>'' then
    raise Exception.Create('Já informado pedido na OE');

  if InputQuery('Vincular ao pedido','Pedido:',ped_codigo) then
  begin
    OpenAux('select cli_codigo from PED0000 ' +
            ' where ped_codigo = '+ QuotedStr(ped_codigo)+
            ' and emp_codigo = '+ QuotedStr(DBInicio.Empresa.EMP_CODIGO));

    if qAux.IsEmpty then
      raise Exception.Create('Pedido não existe');

    ExecSql('update ORDEMPRODUCAO '+
            ' set PED_CODIGO = '+QuotedStr(ped_codigo) +
            ' , cli_codigo = '+QuotedStr(qAux.FieldByName('cli_codigo').asstring) +
            ' WHERE OPR_CODIGO = '+cdsBuscaOPR_CODIGO.AsString  );

    ExecSql('update MATERIAPRIMA_ORDEMPRODUCAO '+
            ' set PED_CODIGO = '+QuotedStr(ped_codigo) +
            ' WHERE IOP_CODIGO = '+ cdsBuscaIOP_CODIGO.AsString   );
  end;
  btnPesquisa.Click;
end;

procedure TfrmEnvaseProdutos.btnConcluirEnvaseClick(Sender: TObject);
var sql :String;
  REGISTRO: integer;
    kardex : TfrmBaseDbEstoque ;
begin
  inherited;
 if cdsBuscaIOP_STATUS_ENVASE.AsString = 'P' then
    raise Exception.Create('Ainda não iniciado');
 if BuscaUmDadoSqlAsInteger('SELECT count(1) FROM envase_ordem WHERE iop_codigo = '+ cdsBuscaIOP_CODIGO.AsString)=0  then
    raise Exception.Create('Não executado o envase');
 if cdsBuscaIOP_STATUS_ENVASE.AsString = 'F' then
    raise Exception.Create('Já finalizado');
 if not Assigned( frmConclusaoOP) then
   frmConclusaoOP := tfrmConclusaoOP.Create(self);
 try
    frmConclusaoOP.Descricao := cdsBuscaPRD_DESCRI.AsString ;
    frmConclusaoOP.prd_refer := cdsBuscaPRD_REFER.AsString;
    frmConclusaoOP.TotalProducao  := cdsBuscaIOP_QUANTIDADE.AsFloat;
    frmConclusaoOP.FaltaConcluir := cdsBuscaIOP_QUANTIDADE.AsFloat;
    frmConclusaoOP.edLote.Text := cdsBuscaORE_CODIGO.AsString;
    frmConclusaoOP.controle := BuscaUmDadoSqlAsString('select PRD_GERENCIA_LOTE FROM PRD0000 where prd_codigo = '+QuotedStr(cdsBuscaPRD_CODIGO.AsString) ) = 'S';
    frmConclusaoOP.envase := tRUE;
    if frmConclusaoOP.ShowModal = mrOk then
    begin
     // consumir materia prima
      tcr.ConsumirEstoqueInsumo(cdsBuscaIOP_CODIGO.AsInteger, cdsBuscaORE_CODIGO.AsString);
      //concluir ordem
      tcr.ConcluirORDEM (0,cdsBuscaIOP_QUANTIDADE.AsFloat,frmConclusaoOP.edConcluida.AsFloat, frmConclusaoOP.edRefugada.AsFloat, cdsBuscaIOP_CODIGO.AsInteger,'','' );
      if frmConclusaoOP.controle then
      begin
        registro:= GetNextSequence('gen_prd_lote_id');

        sql:= 'INSERT INTO PRD_LOTE  (PRDL_REGISTRO, EMP_CODIGO,       '+
               ' PRDL_DATA_FABRICACAO, PRDL_DATA_VALIDADE,              '+
               ' PRDL_LOTE, PRDL_SALDO, PRD_CODIGO, PRDL_CADASTRO, PRDL_DESCRICAO , IOP_CODIGO '+
               '  )                                      '+
               ' VALUES('+IntToStr(registro) +',' +
                QuotedStr(DBInicio.Empresa.EMP_CODIGO) +',' +
                datetoSQL(frmConclusaoOP.dtFabricacao.Date) + ','+
                datetosql(frmConclusaoOP.dtValidade.Date) +',' +
                QuotedStr(frmConclusaoOP.edLote.Text) +','+
                floattosql (frmConclusaoOP.edConcluida.AsFloat) +','+
                QuotedStr(cdsBuscaPRD_CODIGO.AsString) +','+
                datetosql(date) + ','+
                QuotedStr('Lote gerado pelo envase No.: '+cdsBuscaORE_CODIGO.AsString)  +  ','+
                IntToStr(cdsBuscaIOP_CODIGO.AsInteger)+
                ')';
                ;
         ExecSql(SQL);
      end;
     kardex := TfrmBaseDbEstoque.Create(self);
     try
       kardex.KardexLancamento(
         cdsBuscaORE_CODIGO.AsString,     //registro interno
        'PRO',      // TIPO DE REGISTRO
        DBInicio.empresa.PMT_AMX_PRODUCAO_ENTRADA,
         '',   //amoxarifado destino
        cdsBuscaPRD_CODIGO.AsString,
        '',//grade
        '', //UNIDADE DE MEDIDA
        'E', // SAIDA
        frmConclusaoOP.edLote.Text,
         IntToStr(registro),
        'ENTRADA DE PRODUÇÃO',
        Now,
        frmConclusaoOP.edConcluida.AsFloat,
        cdsBuscaORE_CODIGO.AsString,
        cdsBuscaPRD_CODIGO.AsString,
         0
           );
        TCR.HistoricoProducao(cdsBuscaIOP_CODIGO.AsInteger,0,'Gerado Lote '+ frmConclusaoOP.edLote.Text);
     finally
      kardex.Free;
     end;
      sql:= 'UPDATE ITEM_ORDEMPRODUCAO '+
            'SET IOP_STATUS_ENVASE = '+QuotedStr('F')+
            ' , ORE_DATAENVASE = '+DateTimeToSQL(Now)+
            ' WHERE IOP_CODIGO = '+cdsBuscaIOP_CODIGO.AsString;
     ExecSql(SQL);
     btnPesquisa.Click;
    end;

 finally
   FreeAndNil(frmConclusaoOP);
   btnPesquisa.Click;
 end;

end;

procedure TfrmEnvaseProdutos.btnIniciarClick(Sender: TObject);
begin
  inherited;
  if cdsBuscaIOP_STATUS_ENVASE.AsString = 'I' then
    raise Exception.Create('Já iniciado');

  if cdsBuscaIOP_STATUS_ENVASE.AsString = 'F' then
    raise Exception.Create('Já finalizado');

  if (MessageDlg('Deseja iniciar o envase OE '+ cdsBuscaORE_CODIGO.AsString +' ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
  Begin
    ExecSql('update ITEM_ORDEMPRODUCAO '+
            ' set iop_data_inicio = '+ DateTimeToSQL(now)+  ','+
            ' IOP_STATUS_ENVASE = '+QuotedStr('I') +
            ' WHERE IOP_CODIGO = '+ cdsBuscaIOP_CODIGO.AsString   );
    ShowMessage('Iniciado o envase');
    tcr.HistoricoProducao(cdsBuscaIOP_CODIGO.AsInteger,0,'Inicio do envase de produção');
    btnPesquisa.Click;
  End;
end;

procedure TfrmEnvaseProdutos.btnNovoClick(Sender: TObject);
var  Tipo : uProducaoDAO.TItemProducao;
begin
  inherited;
  FormPedidoGrid := TFormPedidoGrid.Create(Application);
  try
    FormPedidoGrid.Envase := True;
    DeletarArquivos( InsereBarraDiretorio ( ExtractFileDir(Application.ExeName) )+'\settings', '*PedidoUsu'+DBInicio.Usuario.CODIGO+'.psq' ); //Limpar arquivos persistencia pesquisas
    FormPedidoGrid.ShowModal;
    if FormPedidoGrid.modalresult=mrOk then
    begin
      If BuscaUmDadoSqlAsInteger( 'SELECT COUNT(1) FROM ORDEMPRODUCAO WHERE OPR_STATUS <> ''C'' AND PED_CODIGO = '+ QuotedStr(FormPedidoGrid.idRetorno) ) > 0 then
        raise Exception.Create('Pedido já processado');
       //FormPedidoGrid.idRetorno;
      OpenAux('SELECT pr.PRD_REFER, coalesce( PRF_PRDDESCRI,pr.PRD_DESCRI) descricao, coalesce(it.prd_und,pr.prd_und) prd_und, PRF_QTDE, pt.PTI_SIGLA, pr.prd_codigo,   '+
              '  PRF_REGISTRO, pe.PED_DTSAIDA AS DTENTREGA, pe.CLI_CODIGO, it.PRF_QTDE, it.PRF_PESOKG , it.PRF_PRECO, it.PRF_REGISTRO                                   '+
              '   FROM PED_IT01 it                                                                    '+
              '  JOIN PED0000 pe ON pe.PED_CODIGO = it.PED_CODIGO AND pe.EMP_CODIGO = it.EMP_CODIGO   '+
              '   JOIN PRD0000 pr ON (pr.PRD_CODIGO = it.PRD_CODIGO)                                  '+
              '   JOIN PRD_TIPO pt ON (pt.PTI_CODIGO = pr.PTI_CODIGO)                                 '+
              '  WHERE pe.PED_CODIGO =  '+QuotedStr(FormPedidoGrid.idRetorno) );
      if not assigned(frmConfirmaDemanda) then
         frmConfirmaDemanda := TfrmConfirmaDemanda.Create( self);
       try
         frmConfirmaDemanda.FDMemTable1.CreateDataSet;
          frmConfirmaDemanda.aCaption := 'Confirmação de envase do pedido';
          frmConfirmaDemanda.FDMemTable1.CopyDataSet(qAux,[coRestart, coAppend]);
          if frmConfirmaDemanda.ShowModal = mrOk then
          begin
             tcr.EnviarItemProducao(
                 qAux.FieldByName('PRD_CODIGO').AsString,
                 qAux.FieldByName('PRD_REFER').AsString,
                 FormPedidoGrid.idRetorno,
                 now, // data de emissao
                 qAux.FieldByName('DTENTREGA').AsDateTime, //dt entrega
                 qAux.FieldByName('CLI_CODIGO').AsString,
                 qAux.FieldByName('PRF_QTDE').AsFloat,// quantidade producao
                 qAux.FieldByName('PRF_PESOKG').AsFloat,
                 qAux.FieldByName('PRF_PRECO').AsFloat,
                 qAux.FieldByName('PRF_REGISTRO').AsInteger,
                 0,    //fti _registro
                 0,    //dep_codigo
                 0,    //programação
                 Tipo,
                 False, //subordens
                 True// envase
                   );

          end;
       finally
         if Assigned(frmConfirmaDemanda) then
           FreeAndNil( frmConfirmaDemanda );
         btnPesquisa.Click;
       end;

    end;
  finally
     FreeAndNil(FormPedidoGrid);
  end;
end;

procedure TfrmEnvaseProdutos.btnPesquisaClick(Sender: TObject);
begin
  inherited;
  if frmEnvaseProdutos <> nil then
    NaoAtualizaHistorico := True;
  inherited;
  if frmEnvaseProdutos <> nil then
    NaoAtualizaHistorico := False;

end;

procedure TfrmEnvaseProdutos.btnPrevisaoClick(Sender: TObject);
begin
  inherited;
  if not Assigned(FrmPrevisaoCompras) then
    FrmPrevisaoCompras := TFrmPrevisaoCompras.Create(self);
  frmprevisaocompras.envase := True;
  FrmPrevisaoCompras.ShowModal;
end;

procedure TfrmEnvaseProdutos.btnProdutoClick(Sender: TObject);
var  Tipo : uProducaoDAO.TItemProducao;
 var reg_lote : integer;
begin
  inherited;
    frmSelecaoProduto := TfrmSelecaoProduto.Create(self);
   try
     frmSelecaoProduto.Envase := True;
     frmSelecaoProduto.Caption :='Selecione o produto para envase';
     frmSelecaoProduto.formName := 'ENVASE';
     frmSelecaoProduto.lbUnitario.Caption := 'Quantidade';
     frmSelecaoProduto.lbTotal.Visible := False;
     frmSelecaoProduto.edConsumoTotal.Visible := False;
     frmSelecaoProduto.lEstoque.Top := 80;
     frmSelecaoProduto.lEstoque.Left := 218;
      frmSelecaoProduto.ShowModal;
      if frmSelecaoProduto.ModalResult=mrOk then
      begin

       Tipo.opr_codigo := 0 ;
       tipo.ordem   := '' ;
       tipo.prefixo := '';
       tipo.iop_codigo := 0;
       if frmSelecaoProduto.CbLoteProduto.idRetorno <> '' then
          reg_lote :=  frmSelecaoProduto.CbLoteProduto.cds.fieldByName('prdl_registro').asInteger
       Else
         reg_lote := 0 ;

       OpenAux('SELECT PRD_PESOKG  FROM PRD0000 where prd_codigo =  ' + QuotedStr(frmSelecaoProduto.cod_prod)) ;
       tcr.EnviarItemProducao(
                 frmSelecaoProduto.CampoIDRetorno ,
                 frmSelecaoProduto.IDRetorno,
                 '', //pedido
                 now, // data de emissao
                 now, //dt entrega
                 '', //cliente
                 frmSelecaoProduto.ConsumoUnitario,// quantidade producao era consumo total passou para consumo unitario
                 qAux.FieldByName('PRD_PESOKG').AsFloat,
                 0,
                 0, //prf_registro
                 0,    //fti _registro
                 0,    //dep_codigo
                 0,    //programação
                 Tipo,
                 False, //subordens
                 True,// envase
                 0,
                  reg_lote
                   );
      end;

   finally
     FreeAndNil( frmSelecaoProduto );
     btnPesquisa.Click;
   end;
end;

procedure TfrmEnvaseProdutos.btnEstornarClick(Sender: TObject);
begin
  inherited;
  if cdsBuscaIOP_STATUS_ENVASE.AsString = 'F' then
    raise Exception.Create('Já finalizado');
  tcr.EstornoEnvase(cdsBuscaIOP_CODIGO.AsInteger);
  cdsBusca.Filter := '';
  cdsBusca.Filtered := False;
  btnPesquisa.Click;
end;

procedure TfrmEnvaseProdutos.cdsBuscaAfterRefresh(DataSet: TDataSet);
begin
  inherited;
  if Assigned(frmEnvaseProdutos) then
    NaoAtualizaHistorico := False;
end;

procedure TfrmEnvaseProdutos.cdsBuscaAfterScroll(DataSet: TDataSet);
var sql : string;
begin
  inherited;
  if NaoAtualizaHistorico then
    exit;
  if DataSet.isempty then
    exit;

  cdsHistorico.Close;
  cdsHistorico.sql.Clear;
  sql := 'SELECT dh.hop_codigo, dh.hop_datamvto, hop_descricao ,      ' +
         '    dh.USU_CODIGO, dh.IOP_CODIGO, dh.MP_CODIGO,             '+
         '    u.USU_NOME , PR.PRD_REFER                               '+
         ' FROM HISTORICO_ORDEMPRODUCAO  dh                           '+
         '  JOIN USUARIO u ON (u.USU_CODIGO = dh.USU_CODIGO)          '+
         ' LEFT JOIN MATERIAPRIMA_ORDEMPRODUCAO mp ON (mp.MP_CODIGO = dh.MP_CODIGO) '+
         ' LEFT JOIN PRD0000 PR ON (PR.PRD_CODIGO = MP.PRD_CODIGO) '+
         ' WHERE dh.IOP_CODIGO = ' + DataSet.FieldByName('iop_codigo').AsString +
         ' order by dh.hop_datamvto desc ';
  cdsHistorico.Open(sql);

end;

procedure TfrmEnvaseProdutos.cdsBuscaIOP_STATUS_ENVASEGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if Sender.AsString = 'I' then
    text := 'Iniciado'
  else if sender.AsString = 'F' then
    text:= 'Finalizado'
  else if Sender.AsString = 'P' then
    text:= 'Pendente';
end;

procedure TfrmEnvaseProdutos.cdsHistoricoHOP_DESCRICAOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if cdsHistoricoPRD_REFER.AsString = EmptyStr then
    Text := Sender.AsString
  Else
    text :=  '['+  cdsHistoricoPRD_REFER.AsString + '] '+  Sender.AsString;

end;

procedure TfrmEnvaseProdutos.chkConcluidoClick(Sender: TObject);
begin
  inherited;
  btnPesquisa.Click;
end;



procedure TfrmEnvaseProdutos.cxgrd1DBBandedTableView1DataControllerDetailExpanding(ADataController: TcxCustomDataController; ARecordIndex: Integer; var AAllow: Boolean);
begin
  inherited;
  cxgrd1DBBandedTableView1.ViewData.Collapse(true);
end;

procedure TfrmEnvaseProdutos.cxgrd1DBBandedTableView1FocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;

  if (AFocusedRecord <> nil) and not TcxCustomGridRecord(AFocusedRecord).Expanded then
    PostMessage(Handle, UM_MYMESSAGE, Integer(AFocusedRecord), Integer(Sender));
end;

procedure TfrmEnvaseProdutos.cxgrd1Level1GetGridView(Sender: TcxGridLevel; AMasterRecord: TcxCustomGridRecord; var AGridView: TcxCustomGridView);
begin
  inherited;
  if cdsBusca.IsEmpty then
    exit;
  cdsMateriaPrima.Close;
  cdsMateriaPrima.sql.text :=
   'SELECT  MP_CODIGO_SUBST, mp.prd_codigo, mp.ped_codigo,  mp_codigo, iop_codigo, mp.MP_UCONSUMO, mp_situacao,'+
   ' pr.PRD_REFER, pr.PRD_DESCRI, pr.prd_und,PRD_GERENCIA_LOTE,  ' +
   ' mp.MP_EMPENHADO, MP_CONSUMOTOTAL,                                  '+
   '      (SELECT prd_descri                                            '+
   '        FROM MATERIAPRIMA_ORDEMPRODUCAO mpst                        '+
   '        JOIN PRD0000 prst ON (prst.PRD_CODIGO = mpst.PRD_CODIGO)    '+
   '        WHERE mpst.MP_CODIGO = mp.mp_codigo_subst  )  subst,        '+
   '  (SELECT sum(KAS_SALDO)- COALESCE(sum(KAS_RESERVA),0)  FROM kardex_almox_saldo kas WHERE kas.PRD_CODIGO = mp.PRD_CODIGO ) EstoqueDisponivel, MP_CUSTO '+
   ' FROM MATERIAPRIMA_ORDEMPRODUCAO mp                                 '+
   ' JOIN PRD0000 pr ON (pr.PRD_CODIGO = mp.PRD_CODIGO)                 '+
   ' where MP_CONSUMOTOTAL > 0 and iop_codigo = '+ VarToStr( AMasterRecord.Values[cxgrd1DBBandedTableView1IOP_CODIGO.Index]);

  cdsMateriaPrima.Open;

end;

procedure TfrmEnvaseProdutos.filtro;
begin
  with cdsBusca,sql do
  begin
     Clear;
     Close;

     Add('SELECT PE.PED_CODIGO, IOP.PRD_CODIGO, PR.PRD_REFER , COALESCE( PIT.PRF_PRDDESCRI,PR.PRD_DESCRI) PRD_DESCRI  ,                         '+
         ' IOP.IOP_QUANTIDADE, COALESCE(PIT.PRD_UND, PR.PRD_UND) PRD_UND, COALESCE( PIT.PRF_PESOKG, PR.PRD_PESOKG) PRD_PESOKG,                  '+
         ' IOP_STATUS_ENVASE, ORE_CODIGO, ORE_DATAENVASE, CL.CLI_RAZAO, CL.CLI_CODIGO, VE.REP_NOME, iop.iop_codigo, opr.OPR_CODIGO,             '+
         ' IOP_DATA_INICIO , LO.PRDL_LOTE, LO.PRDL_REGISTRO                                                                                     '+
         ' FROM ITEM_ORDEMPRODUCAO IOP                                                                                                          '+
         ' JOIN PRD0000 PR ON PR.PRD_CODIGO = IOP.PRD_CODIGO                                                                                    '+
         ' JOIN ORDEMPRODUCAO OPR  ON OPR.OPR_CODIGO = IOP.OPR_CODIGO                                                                           '+
         ' LEFT JOIN PED0000 PE ON PE.PED_CODIGO = OPR.PED_CODIGO AND PE.EMP_CODIGO = OPR.EMP_CODIGO                                            '+
         ' LEFT JOIN PED_IT01 PIT ON PE.PED_CODIGO = PIT.PED_CODIGO AND PE.EMP_CODIGO = PIT.EMP_CODIGO AND IOP.PRD_CODIGO = PIT.PRD_CODIGO      '+
         ' LEFT JOIN  CLI0000 CL ON (CL.CLI_CODIGO = PE.CLI_CODIGO )                                                                            '+
         ' LEFT JOIN REP0000 ve ON (ve.REP_CODIGO = pe.REP_CODIGO)                                                                              '+
         ' LEFT JOIN PRD_LOTE LO ON (LO.PRDL_REGISTRO = IOP.PRDL_REGISTRO) ');

    SqlAdd(' ORE_CODIGO IS NOT NULL ');

    if DBINICIO.Exclusivo('PEDIDOS') then
     SqlAdd(' opr.emp_codigo = '+QuotedStr(DBInicio.Empresa.EMP_CODIGO));
    if chkConcluido.Checked then
      sqladd(' iop_status_envase <>'+QuotedStr('F'));
    if edBusca.Text <> '' then
      SqlAdd(' ore_codigo = '+edBusca.Text);

  end;

end;

procedure TfrmEnvaseProdutos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := caFree
end;

procedure TfrmEnvaseProdutos.FormCreate(Sender: TObject);
begin
  inherited;
  self.Constraints.MinHeight:= 612;
  self.Constraints.MinWidth:=1175;
  self.Constraints.MaxHeight:= 0;
  self.width:=1175;
  self.height:=612;
  Self.ProcedureFiltro:=filtro;

  Menu := '';
  btnPesquisa.Click;
  self.CampoID := 'IOP_CODIGO';
  self.CampoIDRetorno :=  'IOP_CODIGO';
  if not Assigned(tcr) then
    tcr := TProducaoDao.Create(application);
//  cdsBuscaPRF_QTDE.DisplayFormat:='###,###,##0.'+StrZero('0', dbInicio.Empresa.fPMT_QTDE_DEC_PED);
  self.WindowState := wsMaximized;
end;

procedure TfrmEnvaseProdutos.FormDestroy(Sender: TObject);
begin
  inherited;
  if Assigned(tcr) then
    FreeAndNil(tcr);
   frmEnvaseProdutos := nil;

end;

procedure TfrmEnvaseProdutos.FormShow(Sender: TObject);
begin
  inherited;
  NaoAtualizaHistorico := False;
//  if cdsbusca.IsEmpty then
//    exit;
//  cdsHistorico.Close;
//  cdsHistorico.sql.Clear;
//  cdsHistorico.sql.Text
//       := 'SELECT dh.hop_codigo, dh.hop_datamvto, hop_descricao ,      ' +
//         '    dh.USU_CODIGO, dh.IOP_CODIGO, dh.MP_CODIGO,             '+
//         '    u.USU_NOME , PR.PRD_REFER                               '+
//         ' FROM HISTORICO_ORDEMPRODUCAO  dh                           '+
//         '  JOIN USUARIO u ON (u.USU_CODIGO = dh.USU_CODIGO)          '+
//         ' LEFT JOIN MATERIAPRIMA_ORDEMPRODUCAO mp ON (mp.MP_CODIGO = dh.MP_CODIGO) '+
//         ' LEFT JOIN PRD0000 PR ON (PR.PRD_CODIGO = MP.PRD_CODIGO) '+
//         ' WHERE dh.IOP_CODIGO = ' + cdsbusca.FieldByName('iop_codigo').AsString +
//         ' order by dh.hop_datamvto desc ';
//  cdsHistorico.Open;
end;

procedure TfrmEnvaseProdutos.frxOE2BeginDoc(Sender: TObject);
var sql: string;
begin
  inherited;
    sql := 'SELECT FTC_ETAPAS FROM FTC0000 ET ' +
            'JOIN PRD0000 PR ON (PR.PRD_REFER = ET.PRD_REFER) ' +
            'WHERE PR.PRD_GERENCIA_LOTE = ''N'' AND PR.PRD_REFER = ' + QuotedStr(cdsBuscaPRD_REFER.Value);

//     'SELECT FTC_ETAPAS FROM FTC0000 WHERE PRD_REFER = ' + QuotedStr(cdsBuscaPRD_REFER.Value);
    OpenAux2(sql);
    FtcEtapas := qAux2.FieldByName('FTC_ETAPAS').AsString;
end;

procedure TfrmEnvaseProdutos.frxOE2GetValue(const VarName: string; var Value: Variant);
begin
  inherited;
  if (VarName = 'EMPRESA') then
    Value := DBInicio.Empresa.RAZAO;
  if (VarName = 'FTC_ETAPAS') then
  begin
    Value := FtcEtapas;
  end;

end;

procedure TfrmEnvaseProdutos.frxOE2NewGetValue(Sender: TObject; const VarName: string; var Value: Variant);
var sql: string;
begin
  inherited;
    sql := 'SELECT FTC_ETAPAS FROM FTC0000 ET ' +
            'JOIN PRD0000 PR ON (PR.PRD_REFER = ET.PRD_REFER) ' +
            'WHERE PR.PRD_GERENCIA_LOTE = ''N'' AND PR.PRD_REFER = ' + QuotedStr(cdsMateriaPrimaPRD_REFER.Value);

//    sql := 'SELECT FTC_ETAPAS FROM FTC0000 WHERE PRD_REFER = ' + QuotedStr(cdsMateriaPrimaPRD_REFER.Value);
    OpenAux2(sql);
    FtcEtapas := FtcEtapas + qAux2.FieldByName('FTC_ETAPAS').AsString;
end;

procedure TfrmEnvaseProdutos.frxRelOSP10GetValue(const VarName: string; var Value: Variant);
begin
  inherited;
  if (VarName = 'EMPRESA') then
    Value := DBInicio.Empresa.RAZAO;

end;

procedure TfrmEnvaseProdutos.Iniciarenvase1Click(Sender: TObject);
begin
  inherited;
  btnIniciar.Click;
end;

procedure TfrmEnvaseProdutos.miExcluiritemClick(Sender: TObject);
var pedido : string;
   iop_codigo, opr_codigo, mp_codigo : integer;
   ARelationIndex : integer;
   ADetailDataController: TcxGridDBDataController;
   prd_refer : string;
begin
  inherited;

  if cdsMateriaPrima.IsEmpty then
    exit;

  if cdsBuscaIOP_STATUS_ENVASE.AsString = 'F' then
    raise Exception.Create('Já finalizado');

  with cxgrd1DBBandedTableView1 do
  begin
    If DataController.Controller.SelectedRecords[0].Values[cxgrd1DBBandedTableView1IOP_STATUS_ENVASE.Index] = 'F' then
      raise Exception.Create('Já concluida');
    ARelationIndex := TcxGridDBDataController(DataController).GetDetailActiveRelationIndex(DataController.FocusedRecordIndex);
    ADetailDataController := TcxGridDataController(DataController).GetDetailDataController(DataController.FocusedRecordIndex, ARelationIndex) as TcxGridDBDataController;
    iop_codigo := Controller.SelectedRecords[0].Values[cxgrd1DBBandedTableView1IOP_CODIGO.Index];

    mp_codigo := ADetailDataController.Controller.SelectedRecords[0].Values[cxgrd1DBTableView1MP_CODIGO.Index];
    if ADetailDataController.Controller.SelectedRecords[0].Values[cxgrd1DBTableView1MP_EMPENHADO.Index] >0  then
      raise Exception.Create('Já houve empenho');
   PRD_REFER:= ADetailDataController.Controller.SelectedRecords[0].Values[cxgrd1DBTableView1PRD_REFER.Index];
   if (MessageDlg('Deseja excluir o item '+prd_refer +' ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
   begin
     ExecSql('DELETE FROM MATERIAPRIMA_ORDEMPRODUCAO WHERE MP_CODIGO = '+IntToStr(mp_codigo) );
     tcr.HistoricoProducao(iop_codigo,mp_codigo,'Exclusão da MP '+PRD_REFER);
     cdsMateriaPrima.close;
     cdsMateriaPrima.Open;
     cdsHistorico.close;
     cdsHistorico.open;
   end;
   //ShowMessage(IntToStr( mp_codigo));
  end;
end;

procedure TfrmEnvaseProdutos.OrdemdeenvaseModelo11Click(Sender: TObject);
begin
  inherited;

  cdsMateriaPrima.Close;
  cdsMateriaPrima.sql.text :=
   'SELECT  MP_CODIGO_SUBST, mp.prd_codigo, mp.ped_codigo,  mp_codigo, iop_codigo, mp.MP_UCONSUMO, mp_situacao,'+
   ' pr.PRD_REFER, pr.PRD_DESCRI, pr.prd_und,PRD_GERENCIA_LOTE,  ' +
   ' mp.MP_EMPENHADO, MP_CONSUMOTOTAL,                                  '+
   '      (SELECT prd_descri                                            '+
   '        FROM MATERIAPRIMA_ORDEMPRODUCAO mpst                        '+
   '        JOIN PRD0000 prst ON (prst.PRD_CODIGO = mpst.PRD_CODIGO)    '+
   '        WHERE mpst.MP_CODIGO = mp.mp_codigo_subst  )  subst,        '+
   '  (SELECT sum(KAS_SALDO)- COALESCE(sum(KAS_RESERVA),0)  FROM kardex_almox_saldo kas WHERE kas.PRD_CODIGO = mp.PRD_CODIGO ) EstoqueDisponivel, MP_CUSTO '+
   ' FROM MATERIAPRIMA_ORDEMPRODUCAO mp                                 '+
   ' JOIN PRD0000 pr ON (pr.PRD_CODIGO = mp.PRD_CODIGO)                 '+
   ' where MP_CONSUMOTOTAL > 0 and iop_codigo = '+
   VarToStr(cxgrd1DBBandedTableView1.DataController.Controller.SelectedRecords[0].Values[cxgrd1DBBandedTableView1IOP_CODIGO.Index]);

  cdsMateriaPrima.Open;

  frxRelOSP10.ShowReport();
end;

procedure TfrmEnvaseProdutos.OrdemdeenvaseModelo21Click(Sender: TObject);
begin
  inherited;
   frxOE2.ShowReport();
end;

procedure TfrmEnvaseProdutos.SpeedButton1Click(Sender: TObject);
var book : TBookmark;
begin
  inherited;
  if cdsBuscaIOP_STATUS_ENVASE.AsString = 'P' then
    raise Exception.Create('Ainda não iniciado');

 if cdsBuscaIOP_STATUS_ENVASE.AsString = 'F' then
    raise Exception.Create('Já finalizado');

//  book:= cdsBusca.GetBookmark;

  if not Assigned(frmExecutarEnvase) then
    frmExecutarEnvase := TfrmExecutarEnvase.Create(self);
  frmExecutarEnvase.iop := cdsBuscaIOP_CODIGO.AsInteger;
  frmExecutarEnvase.pedido := cdsBuscaPED_CODIGO.AsString;
  frmExecutarEnvase.ore_codigo := cdsBuscaORE_CODIGO.AsInteger;
  frmExecutarEnvase.opr_codigo := cdsBuscaOPR_CODIGO.AsInteger;
  frmExecutarEnvase.prd_codigo := cdsBuscaPRD_CODIGO.AsString;
  frmExecutarEnvase.prd_Refer := cdsBuscaPRD_REFER.AsString;
  frmExecutarEnvase.PRDL_REGISTRO := cdsBuscaPRDL_REGISTRO.AsInteger;
  frmExecutarEnvase.prdl_lote := cdsBuscaPRDL_LOTE.AsString;
  frmExecutarEnvase.QuantidadeProduzir := cdsBuscaIOP_QUANTIDADE.AsFloat;
  frmExecutarEnvase.Novo('Executar ordem');

  DBInicio.CommitTransaction;
  DBInicio.FDACConn.Commit;
  dbConn.Commit;



  btnPesquisa.click;



end;

procedure TfrmEnvaseProdutos.umMyMessage(var Message: TMessage);
begin
  TcxGridDBBandedTableView(Message.LParam).ViewData.Collapse(True);
end;

end.
