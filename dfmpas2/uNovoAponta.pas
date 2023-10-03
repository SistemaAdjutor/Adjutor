unit uNovoAponta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBPesquisaFDAC, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  Data.DB, cxDBData, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Phys.FBDef, FireDAC.UI.Intf, FireDAC.VCLUI.Wait, FireDAC.VCLUI.Error, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.FB, Vcl.DBCGrids, ACBrCalculadora, frxClass, Vcl.Menus,
  FireDAC.Comp.Client, FireDAC.Comp.UI, FireDAC.Phys.IBBase, FireDAC.Comp.DataSet, cxLocalization, ACBrBase, ACBrEnterTab, JvExControls, JvArrowButton, Vcl.StdCtrls, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, Vcl.Buttons, Vcl.ExtCtrls, Vcl.ComCtrls, uProducaoDAO, Vcl.DBCtrls, cxGridBandedTableView,
  cxGridDBBandedTableView, cxProgressBar , uapontar, FrmEventoOcorrencia, cxGridDBDataDefinitions,
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
  TfrmNovoApontamento = class(TfrmBaseDBPesquisaFDAC)
    DBCtrlGrid1: TDBCtrlGrid;
    cdsOperacoes: TFDQuery;
    dsOperacoes: TDataSource;
    Phistorico: TPanel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cdsApontar: TFDQuery;
    cdsOperacoesOPE_NOME: TStringField;
    cdsOperacoesOPE_DESCRICAO: TStringField;
    Panel1: TPanel;
    DBText1: TDBText;
    cdsOperacoesOPE_CODIGO: TIntegerField;
    cdsBuscaFAB_CODIGO: TIntegerField;
    cdsBuscaOPE_CODIGO: TIntegerField;
    cdsBuscaOPE_DESCRICAO: TStringField;
    cdsBuscaSEQUENCIA: TIntegerField;
    cdsBuscaPRD_DESCRI: TStringField;
    cdsBuscaOSV_DTENTREGA: TSQLTimeStampField;
    cdsBuscaRESTANTES: TLargeintField;
    cdsBuscaIOP_QUANTIDADE: TFMTBCDField;
    cdsBuscaIOP_QTDE_CONCLUIDA: TFMTBCDField;
    cdsBuscaIOP_QTDE_PRODUZINDO: TFMTBCDField;
    cdsBuscaIOP_QTDE_REFUGADA: TFMTBCDField;
    cxgrd1Level1: TcxGridLevel;
    cxgrd1DBBandedTableView1: TcxGridDBBandedTableView;
    cxgrd1DBBandedTableView1FAB_CODIGO: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1OPE_CODIGO: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1OPE_DESCRICAO: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1SEQUENCIA: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1PRD_DESCRI: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1OSV_DTENTREGA: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1RESTANTES: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1IOP_QUANTIDADE: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1IOP_QTDE_CONCLUIDA: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1IOP_QTDE_PRODUZINDO: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1IOP_QTDE_REFUGADA: TcxGridDBBandedColumn;
    cdsBuscaOSV_CODIGO: TStringField;
    cxgrd1DBBandedTableView1OSV_CODIGO: TcxGridDBBandedColumn;
    cdsBuscaPRD_REFER: TStringField;
    cxgrd1DBBandedTableView1PRD_REFER: TcxGridDBBandedColumn;
    cdsBuscaConcluidos: TFloatField;
    cxgrd1DBBandedTableView1Concluidos: TcxGridDBBandedColumn;
    cdsApontarAPF_CODIGO: TIntegerField;
    cdsApontarFAB_CODIGO: TIntegerField;
    cdsApontarCOL_NOME: TStringField;
    cdsApontarCOL_CODIGO: TIntegerField;
    cdsApontarCOL_NOME_1: TStringField;
    cdsApontarAPF_DATA_INI: TSQLTimeStampField;
    cdsApontarAPF_DATA_FIM: TSQLTimeStampField;
    cdsApontarAPF_INICIADA: TFMTBCDField;
    cdsApontarAPF_REFUGADO: TFMTBCDField;
    cdsApontarAPF_FINALIZADAS: TFMTBCDField;
    cdsApontarAPF_CANCELADO: TStringField;
    cdsApontarAPF_MOTIVOCANCELAMENTO: TStringField;
    cdsApontarEQP_DESCRICAO: TStringField;
    cdsApontarEQP_CODIGO: TIntegerField;
    dsApontar: TDataSource;
    cxGrid1DBTableView1APF_CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1FAB_CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1COL_NOME: TcxGridDBColumn;
    cxGrid1DBTableView1COL_CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1APF_DATA_INI: TcxGridDBColumn;
    cxGrid1DBTableView1APF_DATA_FIM: TcxGridDBColumn;
    cxGrid1DBTableView1APF_INICIADA: TcxGridDBColumn;
    cxGrid1DBTableView1APF_REFUGADO: TcxGridDBColumn;
    cxGrid1DBTableView1APF_FINALIZADAS: TcxGridDBColumn;
    cxGrid1DBTableView1APF_CANCELADO: TcxGridDBColumn;
    cxGrid1DBTableView1APF_MOTIVOCANCELAMENTO: TcxGridDBColumn;
    cxGrid1DBTableView1EQP_DESCRICAO: TcxGridDBColumn;
    cxGrid1DBTableView1EQP_CODIGO: TcxGridDBColumn;
    cdsOcorrencias: TFDQuery;
    cdsOcorrenciasOCE_CODIGO: TIntegerField;
    cdsOcorrenciasOCO_CODIGO: TIntegerField;
    cdsOcorrenciasFAB_CODIGO: TIntegerField;
    cdsOcorrenciasCOL_CODIGO: TIntegerField;
    cdsOcorrenciasOCE_ESTORNO: TIntegerField;
    cdsOcorrenciasOCE_MOTIVO: TStringField;
    cdsOcorrenciasOCE_DATAOCORRENCIA: TSQLTimeStampField;
    cdsOcorrenciasOCE_DATAPREVISAO: TSQLTimeStampField;
    cdsOcorrenciasOCE_DATAFIM: TSQLTimeStampField;
    cdsOcorrenciasOCO_DESCRICAO: TStringField;
    cdsOcorrenciasCOL_NOME: TStringField;
    cdsOcorrenciasAPF_CODIGO: TIntegerField;
    cdsOcorrenciasOCE_COMENTARIO: TStringField;
    dsOcorrencias: TDataSource;
    cxgrd1DBTableView1OCE_CODIGO: TcxGridDBColumn;
    cxgrd1DBTableView1OCO_CODIGO: TcxGridDBColumn;
    cxgrd1DBTableView1FAB_CODIGO: TcxGridDBColumn;
    cxgrd1DBTableView1COL_CODIGO: TcxGridDBColumn;
    cxgrd1DBTableView1OCE_ESTORNO: TcxGridDBColumn;
    cxgrd1DBTableView1OCE_MOTIVO: TcxGridDBColumn;
    cxgrd1DBTableView1OCE_DATAOCORRENCIA: TcxGridDBColumn;
    cxgrd1DBTableView1OCE_DATAPREVISAO: TcxGridDBColumn;
    cxgrd1DBTableView1OCE_DATAFIM: TcxGridDBColumn;
    cxgrd1DBTableView1OCO_DESCRICAO: TcxGridDBColumn;
    cxgrd1DBTableView1COL_NOME: TcxGridDBColumn;
    cxgrd1DBTableView1APF_CODIGO: TcxGridDBColumn;
    cxgrd1DBTableView1OCE_COMENTARIO: TcxGridDBColumn;
    miocorrencias: TPopupMenu;
    Resolverocorrncia1: TMenuItem;
    JvArrowButton1: TJvArrowButton;
    pmregistroOcorrencia: TPopupMenu;
    Noapontamento1: TMenuItem;
    Naoperao1: TMenuItem;
    cdsBuscaFAB_PRODUZINDO: TFMTBCDField;
    cdsBuscaFAB_REFUGADA: TFMTBCDField;
    cdsBuscaFAB_PRODUZIDA: TFMTBCDField;
    cxgrd1DBBandedTableView1FAB_PRODUZINDO: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1FAB_REFUGADA: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1FAB_PRODUZIDA: TcxGridDBBandedColumn;
    cdsBuscaIOP_CODIGO: TIntegerField;
    cdsBuscaPRD_UND: TStringField;
    cxgrd1DBBandedTableView1IOP_CODIGO: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1PRD_UND: TcxGridDBBandedColumn;
    chkConcluidos: TCheckBox;
    cdsBuscaTEMPO_ESTIMADO: TIntegerField;
    cxgrd1DBBandedTableView1TEMPO_ESTIMADO: TcxGridDBBandedColumn;
    cdsBuscaIOP_SEQ_PRG: TIntegerField;
    cdsBuscaOpeCompleto: TStringField;
    edPesquisar: TEdit;
    btnIniciar: TButton;
    btnFinalizar: TButton;
    btncancelar: TButton;
    Label1: TLabel;
    poperacoes: TPanel;
    cdsApontarAPF_REBARBA: TFMTBCDField;
    cdsBuscaFAB_REBARBA: TFMTBCDField;
    cxgrd1DBBandedTableView1FAB_REBARBA: TcxGridDBBandedColumn;
    cxGrid1DBTableView1APF_REBARBA: TcxGridDBColumn;
    cdsBuscaCLI_FANTASIA: TStringField;
    cxgrd1DBBandedTableView1CLI_FANTASIA: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1EQP_DESCRICAO: TcxGridDBBandedColumn;
    cdsBuscaEQP_DESCRICAO: TStringField;
    BitBtn1: TBitBtn;
    chkFinalizados: TCheckBox;
    cdsBuscaPED_CODIGO: TStringField;
    cxgrd1DBBandedTableView1PED_CODIGO: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure cdsBuscaAfterScroll(DataSet: TDataSet);
    procedure DBText1MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure DBText1MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure DBCtrlGrid1PaintPanel(DBCtrlGrid: TDBCtrlGrid; Index: Integer);
    procedure cdsOperacoesAfterScroll(DataSet: TDataSet);
    procedure cdsBuscaCalcFields(DataSet: TDataSet);
    procedure cxgrd1Level1GetGridView(Sender: TcxGridLevel; AMasterRecord: TcxCustomGridRecord; var AGridView: TcxCustomGridView);
    procedure FormDestroy(Sender: TObject);
    procedure Resolverocorrncia1Click(Sender: TObject);
    procedure Naoperao1Click(Sender: TObject);
    procedure Noapontamento1Click(Sender: TObject);
    procedure btnExtraClick(Sender: TObject);
    procedure chkConcluidosClick(Sender: TObject);
    procedure cdsBuscaOSV_CODIGOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure btnIniciarClick(Sender: TObject);
    procedure btnFinalizarClick(Sender: TObject);
    procedure btncancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edPesquisarChange(Sender: TObject);
    procedure btnrelatoriosClick(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure cxgrd1DBBandedTableView1EQP_DESCRICAOGetDataText(Sender: TcxCustomGridTableItem; ARecordIndex: Integer; var AText: string);
    procedure BitBtn1Click(Sender: TObject);
    procedure chkFinalizadosClick(Sender: TObject);
  private
    tcr: TProducaoDao;
    procedure WMNCCalcSize(var msg: TMessage); message WM_NCCALCSIZE;
  public
   procedure filtro ;
  end;

var
  frmNovoApontamento: TfrmNovoApontamento;

implementation

{$R *.dfm}

uses InicioDB, uteis, uNovoApontamentoImprime, uEtiquetaFinalizacaoProcesso;

procedure TfrmNovoApontamento.BitBtn1Click(Sender: TObject);
begin
  inherited;
  if not Assigned( frmEtiquetaFinalizacaoProcesso) then
    frmEtiquetaFinalizacaoProcesso := TfrmEtiquetaFinalizacaoProcesso.Create(application);
  frmEtiquetaFinalizacaoProcesso.iopNOrdem := VarToStr(cxgrd1DBBandedTableView1.DataController.Controller.SelectedRecords[0].Values[cxgrd1DBBandedTableView1OSV_CODIGO.Index]);
  frmEtiquetaFinalizacaoProcesso.fabCodigo := VarToStr(cxgrd1DBBandedTableView1.DataController.Controller.SelectedRecords[0].Values[cxgrd1DBBandedTableView1FAB_CODIGO.Index]);
  frmEtiquetaFinalizacaoProcesso.ShowModal;
end;

procedure TfrmNovoApontamento.btncancelarClick(Sender: TObject);
var aponta :  TfrmApontarProcessos ;
begin
 if not cdsApontarAPF_DATA_FIM.IsNull then
   begin
     GeraException ('Apontamento já finalizado');
   end;
     aponta := TfrmApontarProcessos.create( self );
    try
       aponta.OPE_Codigo := cdsBuscaOPE_CODIGO.AsInteger;
       aponta.FAB_Codigo := cdsApontarFAB_CODIGO.AsInteger;
       aponta.Status := 2;   //cancelamento


       aponta.Edita(IntToStr(cdsApontarAPF_CODIGO.AsInteger),'Cancelar - ' + cdsBuscaOpeCompleto.AsString);
       aponta.btnOk.Click;
       if aponta.ModalResult = mrok then
        begin
          cdsApontar.Close;
          cdsApontar.open;
          cdsBusca.Close;
          cdsbusca.open;
        end;


   finally
     aponta.close;
     FreeAndNil(aponta);
   end;
end;

procedure TfrmNovoApontamento.btnExtraClick(Sender: TObject);
var aponta : TfrmApontarProcessos;

begin
   if (cdsApontar.IsEmpty) then
   begin
     exit;
   end;
   if cdsApontarAPF_DATA_FIM.AsDateTime > 0 then
     raise Exception.Create('Apontamento já finalizado');

    aponta := TfrmApontarProcessos.create( self );
   try
       aponta.OPE_Codigo := cdsBuscaOPE_CODIGO.AsInteger;
       aponta.FAB_Codigo := cdsApontarFAB_CODIGO.AsInteger;
       aponta.Status := 4;

       aponta.Edita(IntToStr(cdsApontarAPF_CODIGO.AsInteger),'Alteração do Colaborador');

       if aponta.ModalResult = mrok then
       begin
          cdsApontar.close;
          cdsApontar.Open;
       end;
   finally
     aponta.close;
     FreeAndNil(aponta);
   end;
 end;


procedure TfrmNovoApontamento.btnFinalizarClick(Sender: TObject);
 var aponta :  TfrmApontarProcessos   ;
begin
  inherited;
  if cdsApontar.IsEmpty then
    exit;
   if not cdsApontarAPF_DATA_FIM.IsNull then
   begin
     GeraException ('Apontamento já finalizado');
   end;
     aponta := TfrmApontarProcessos.create( self );
    try

        aponta.FAB_Codigo := cdsApontarFAB_CODIGO.AsInteger;
        aponta.Status := 1;
        aponta.OPE_Codigo := cdsBuscaOPE_CODIGO.AsInteger;


        aponta.opeCodigo.Text := cdsBuscaOPE_CODIGO.AsString;
        aponta.opeDescricao.Text := BuscaUmDadoSqlAsString(
          'SELECT pr.PRD_DESCRI ' +
          '  FROM FTC_IT01 fi ' +
          '    JOIN PRD0000 pr ON (pr.PRD_REFER = fi.PRD_REFER_ITENS) ' +
          '  WHERE fi.PRD_REFER = ' + QuotedStr(cdsBuscaPRD_REFER.AsString) +
          '    AND fi.OPE_CODIGO = ' + cdsBuscaOPE_CODIGO.AsString);
       if aponta.opeDescricao.Text = '' then
        aponta.gbAcessorio.Visible := False;



       aponta.Edita(IntToStr(cdsApontarAPF_CODIGO.AsInteger),'Finalizar - ' + cdsBuscaOpeCompleto.AsString);
       aponta.btnOk.Click;
       if aponta.ModalResult = mrok then
        begin
          cdsApontar.Close;
          cdsApontar.open;
          cdsBusca.Close;
          cdsbusca.open;
        end;


   finally
     aponta.close;
     FreeAndNil(aponta);
   end;

end;

procedure TfrmNovoApontamento.btnIniciarClick(Sender: TObject);
var Aponta : TfrmApontarProcessos;
     EmpenharOperacao : boolean;
     Empenhado : double;
begin
  inherited;
  if cdsBusca.IsEmpty then
    raise Exception.Create('Não há processos para serem apontados');

  // NÃO ESQUECE DE QUAL A PROGRAMAÇÃO
  OpenAux('SELECT IOP_CODIGO, IOP_DATA_CONCLUSAO,IOP_STATUS  FROM ITEM_ORDEMPRODUCAO '+
          ' WHERE IOP_CODIGO = '+cdsBuscaIOP_CODIGO.AsString +
          ' AND IOP_SEQ_PRG  = '+cdsBuscaIOP_SEQ_PRG.AsString
          );
  if not qAux.FieldByName('IOP_DATA_CONCLUSAO').IsNull then
     raise Exception.Create('Ordem já concluida');


  if qAux.FieldByName('IOP_STATUS').asString  = 'L' then
    raise Exception.Create('Ordem ainda não iniciada');

  EmpenharOperacao := (DBInicio.Empresa.PMT_COMSUMIRINSUMO = 'A' );       //iniciar apontamento // APONTAMENTO CONSUME PELO APONTAMWNTO
   //  (BuscaUmDadoSqlAsInteger ('SELECT COUNT(*) FROM APONTAMENTO_FAB '+
//                              ' WHERE FAB_CODIGO IN (SELECT FAB_CODIGO FROM FABRICACAO WHERE IOP_CODIGO = '+cdsBuscaIOP_CODIGO.AsString +')') =0 );


   aponta := TfrmApontarProcessos.create( self );
   try

     // não permitir que faça mais de uma peça ou produto
     if not  DBInicio.Empresa.wPMT_PRODUZIR_MAIS_OP and
     ( cdsBuscaIOP_QUANTIDADE.AsFloat < (cdsBuscaFAB_PRODUZINDO.AsFloat +
                                        cdsBuscaFAB_PRODUZIDA.AsFloat + cdsBuscaFAB_REFUGADA.AsFloat)) then
        GeraException ('A soma da quantidade produzida, refugada e em produção não pode ser maior que a solicitada na OP');

     aponta.opeCodigo.Text := cdsBuscaOPE_CODIGO.AsString;
     aponta.opeDescricao.Text := BuscaUmDadoSqlAsString(
        'SELECT pr.PRD_DESCRI ' +
        '  FROM FTC_IT01 fi ' +
        '    JOIN PRD0000 pr ON (pr.PRD_REFER = fi.PRD_REFER_ITENS) ' +
        '  WHERE fi.PRD_REFER = ' + QuotedStr(cdsBuscaPRD_REFER.AsString) +
        '    AND fi.OPE_CODIGO = ' + cdsBuscaOPE_CODIGO.AsString);
     if aponta.opeDescricao.Text = '' then
      aponta.gbAcessorio.Visible := False;


     aponta.FAB_Codigo := cdsBuscaFAB_CODIGO.AsInteger;
     aponta.OPE_Codigo := cdsBuscaOPE_CODIGO.AsInteger;
     aponta.IOP_CODIGO  := cdsBuscaIOP_CODIGO.AsInteger;
    // aponta.EQP_Codigo := cdsEngenhariaEQP_CODIGO.AsInteger;
     if cdsBuscaIOP_QUANTIDADE.AsFloat> ( cdsBuscaFAB_PRODUZIDA.AsFloat + cdsBuscaFAB_PRODUZINDO.AsFloat) then
        aponta.ValorInicial := cdsBuscaIOP_QUANTIDADE.AsFloat - cdsBuscaFAB_PRODUZIDA.AsFloat - cdsBuscaFAB_PRODUZINDO.AsFloat
     else
        aponta.ValorInicial := 0;
     aponta.Status := 0;

     aponta.Novo('Novo apontamento - ' + cdsBuscaOpeCompleto.AsString);

     if aponta.ModalResult = mrok then
     begin
        if EmpenharOperacao then
        begin
          //materia prima que aponta por operação
           OpenAux( ' SELECT  prd_Refer, pr.prd_codigo, mp_codigo, mp_consumototal, PRD_GERENCIA_LOTE FROM MATERIAPRIMA_ORDEMPRODUCAO MP '+
                   ' JOIN PRD0000 pr ON (pr.PRD_CODIGO = mp.PRD_CODIGO ) '+
                   '  WHERE IOP_CODIGO = '+ cdsBuscaIOP_CODIGO.AsString   +
                   ' AND OPE_CODIGO = '+  cdsBuscaOPE_CODIGO.AsString );
           while not qAux.Eof do
           begin
             if qAux.FieldByName('PRD_GERENCIA_LOTE').AsString = 'N' then
             begin
                Empenhado:=  qAux.FieldByName('mp_consumototal').AsFloat  ;
                tcr.HistoricoProducao(cdsBuscaIOP_CODIGO.AsInteger,qaux.FieldByName('mp_codigo').AsInteger ,'Consumo automático na operação '+ cdsOperacoesOPE_DESCRICAO.AsString);
                tcr.EmpenharInsumo(cdsBuscaIOP_CODIGO.AsInteger,
                                qAux.FieldByName('mp_codigo').AsInteger,
                                qAux.FieldByName('prd_codigo').AsString,
                                 Empenhado ,
                                 now,
                                 0,
                                 qAux.FieldByName('prd_refer').AsString,
                                 cdsBuscaOSV_CODIGO.AsString ,
                                 'A'
                                )
             end
             else /// ** LOTE
             begin
               //empenho automatico em lote
                TCR.HistoricoProducao(cdsBuscaIOP_CODIGO.AsInteger,qaux.FieldByName('mp_codigo').AsInteger,'Consumo automático de lote pela data na operação '+ cdsOperacoesOPE_DESCRICAO.AsString);
                Empenhado := tcr.ConsumirLotesAutomatico( qAux.FieldByName('mp_codigo').AsInteger,
                                                     cdsBuscaIOP_CODIGO.AsInteger,
                                                     qAux.FieldByName('prd_codigo').AsString,
                                                     qAux.FieldByName('prd_refer').AsString,
                                                     cdsBuscaOSV_CODIGO.AsString,
                                                     qAux.FieldByName('mp_consumototal').AsFloat );


             end;
            ExecSql(' update MATERIAPRIMA_ORDEMPRODUCAO set MP_EMPENHADO =  coalesce(MP_EMPENHADO,0) + '+FloatToSQL(empenhado)+
                    ' WHERE MP_CODIGO = '+qAux.FieldByName('MP_CODIGO').AsString);
            qAux.next;
           end;
        end;


        cdsbusca.refresh;



     end;



   finally

     FreeAndNil(aponta);
   end;

end;

procedure TfrmNovoApontamento.btnrelatoriosClick(Sender: TObject);
begin
  inherited;
   if not assigned(frmNovoApontamentoImprime) then
     frmNovoApontamentoImprime := TfrmNovoApontamentoImprime.Create(application);
   frmNovoApontamentoImprime.ShowModal;
end;

procedure TfrmNovoApontamento.cdsBuscaAfterScroll(DataSet: TDataSet);
begin
  inherited;
   cdsApontar.Close;
   cdsApontar.SQL.Clear;
   cdsApontar.SQL.Text := ' SELECT  APF_CODIGO, FAB_CODIGO, COL.COL_NOME, APF.COL_CODIGO, COL_NOME,  APF_DATA_INI,  '+
                        '  APF_DATA_FIM,  CASE WHEN APF_DATA_FIM IS NULL THEN APF_INICIADA ELSE 0 end AS APF_INICIADA, APF_REFUGADO, APF_REBARBA, APF_FINALIZADAS , '+
                        '  case when APF_CANCELADO= ''S'' then ''SIM'' else ''NÃO'' end as APF_CANCELADO '+
                        ' , APF_MOTIVOCANCELAMENTO, EQP_DESCRICAO, EQ.EQP_CODIGO  ' +
                        ' FROM APONTAMENTO_FAB APF LEFT JOIN COLABORADOR COL ON (COL.COL_CODIGO = APF.COL_CODIGO) '+
                        ' LEFT JOIN EQUIPAMENTO EQ ON (EQ.EQP_CODIGO = APF.EQP_CODIGO) '+
                        ' WHERE FAB_CODIGO = ' + IntToStr(cdsBusca.FieldByName('FAB_CODIGO').AsInteger);



   cdsApontar.Open;
end;

procedure TfrmNovoApontamento.cdsBuscaCalcFields(DataSet: TDataSet);
begin
  inherited;
  //calculo de quantos % 100 ainda falta produzir
  if (cdsBuscaFAB_PRODUZIDA.IsNull)  then
    cdsBuscaConcluidos.AsFloat := 0
  else
     cdsBuscaConcluidos.AsFloat :=((cdsBuscaFAB_PRODUZIDA.AsFloat)/  cdsBuscaIOP_QUANTIDADE.AsFloat)  *100  ;
  if (cdsBuscaOPE_CODIGO.AsInteger>0  ) then
    cdsBuscaOpeCompleto.AsString := cdsBuscaOPE_CODIGO.AsString + '-' + cdsBuscaOPE_DESCRICAO.AsString;


end;

procedure TfrmNovoApontamento.cdsBuscaOSV_CODIGOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if cdsBuscaIOP_SEQ_PRG.AsInteger > 0 then
    text := Sender.AsString + '(P' +cdsBuscaIOP_SEQ_PRG.AsString + ')'
  else
    text := Sender.AsString ;
end;

procedure TfrmNovoApontamento.cdsOperacoesAfterScroll(DataSet: TDataSet);
begin
  inherited;
  filtro;
end;

procedure TfrmNovoApontamento.chkConcluidosClick(Sender: TObject);
begin
  inherited;
  btnPesquisa.Click;
end;

procedure TfrmNovoApontamento.chkFinalizadosClick(Sender: TObject);
begin
  inherited;
  btnPesquisa.Click;
end;

procedure TfrmNovoApontamento.cxgrd1DBBandedTableView1EQP_DESCRICAOGetDataText(Sender: TcxCustomGridTableItem; ARecordIndex: Integer; var AText: string);
var
  joinEquipamento: string;
begin
  inherited;
  if BuscaUmDadoSqlAsString('SELECT EQP_CODIGO FROM FABRICACAO f WHERE FAB_CODIGO = ' + VarToStr(cxgrd1DBBandedTableView1.DataController.GetValue(ARecordIndex, cxgrd1DBBandedTableView1FAB_CODIGO.Index))) = '' then
    joinEquipamento := ' LEFT JOIN EQUIPAMENTO eq ON (eq.EQP_CODIGO = op.EQP_CODIGO) '
  else
    joinEquipamento := ' LEFT JOIN EQUIPAMENTO eq ON (eq.EQP_CODIGO = fb.EQP_CODIGO) ';

  AText := BuscaUmDadoSqlAsString(
    'SELECT	eq.EQP_DESCRICAO ' +
    ' FROM	FABRICACAO FB ' +
    ' JOIN OPERACOES OP ON	(OP.OPE_CODIGO = FB.OPE_CODIGO) ' +
    joinEquipamento +
    ' WHERE	FB.FAB_CODIGO  =  ' + VarToStr(cxgrd1DBBandedTableView1.DataController.GetValue(ARecordIndex, cxgrd1DBBandedTableView1FAB_CODIGO.Index))
  );
end;

procedure TfrmNovoApontamento.cxgrd1Level1GetGridView(Sender: TcxGridLevel; AMasterRecord: TcxCustomGridRecord; var AGridView: TcxCustomGridView);
begin
  inherited;

  cdsOcorrencias.Close;
  cdsOcorrencias.SQL.Clear;
  cdsOcorrencias.SQL.Text := ' SELECT OE.OCE_CODIGO, OE.OCO_CODIGO, OE.FAB_CODIGO, OE.COL_CODIGO, OCE_ESTORNO, OCE_MOTIVO, OCE_DATAOCORRENCIA, '+
                             ' OCE_DATAPREVISAO, OCE_DATAFIM, OCO_DESCRICAO, COL_NOME, APF_CODIGO, OCE_COMENTARIO                             ' +
                             ' FROM OCORRENCIA_EVENTO OE                                                                                       ' +
                             ' INNER JOIN OCORRENCIA OC ON (OC.OCO_CODIGO = OE.OCO_CODIGO)                                                     ' +
                             ' LEFT JOIN COLABORADOR COL ON (COL.COL_CODIGO = OE.COL_CODIGO)                                                   ' +
                             ' WHERE OE.FAB_CODIGO = ' + VarToStr(   AMasterRecord.Values[cxgrd1DBBandedTableView1FAB_CODIGO.Index]);
  cdsOcorrencias.Open;

end;

procedure TfrmNovoApontamento.cxGrid1DBTableView1DblClick(Sender: TObject);
var Aponta : TfrmApontarProcessos;
begin
  inherited;
     aponta := TfrmApontarProcessos.create( self );
    try
      aponta.CdsEdit.open;
      aponta.FAB_Codigo := cdsApontarFAB_CODIGO.AsInteger;
      aponta.Status := 1;
      aponta.OPE_Codigo := cdsBuscaOPE_CODIGO.AsInteger;
      aponta.opeCodigo.Text := cdsBuscaOPE_CODIGO.AsString;
      aponta.opeDescricao.Text := BuscaUmDadoSqlAsString(
        'SELECT pr.PRD_DESCRI ' +
        '  FROM FTC_IT01 fi ' +
        '    JOIN PRD0000 pr ON (pr.PRD_REFER = fi.PRD_REFER_ITENS) ' +
        '  WHERE fi.PRD_REFER = ' + QuotedStr(cdsBuscaPRD_REFER.AsString) +
        '    AND fi.OPE_CODIGO = ' + cdsBuscaOPE_CODIGO.AsString);
      aponta.EditaSemAbrir(IntToStr(cdsApontarAPF_CODIGO.AsInteger));
      aponta.btSave.Visible := False;
      aponta.btnColaborador.Visible := False;
      aponta.btnOk.Visible := False;
      aponta.cxDataFim.Enabled := False;
      aponta.edHoraFim.Enabled := False;
      aponta.edFinalizado.Enabled := False;
      aponta.edRefugado.Enabled := False;
      aponta.edRebarba.Enabled := False;
      aponta.opeCodigo.Enabled := False;
      aponta.opeDescricao.Enabled := False;
      aponta.ShowModal;
    finally
      FreeAndNil(aponta);
    end;
end;

procedure TfrmNovoApontamento.DBCtrlGrid1PaintPanel(DBCtrlGrid: TDBCtrlGrid; Index: Integer);
begin
  inherited;
  if Index = DBCtrlGrid.PanelIndex then
  begin
     Panel1.Color := clRed;
     DBText1.Font.Color := clWhite;
  end
  else
  begin
     Panel1.Color := clBtnFace;
     DBText1.Font.Color := clWindowText;
  end;
end;

procedure TfrmNovoApontamento.DBText1MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  Panel1.BevelInner :=  bvLowered;
  filtro;
  btnPesquisa.Click;
end;

procedure TfrmNovoApontamento.DBText1MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  Panel1.BevelInner :=  bvRaised;
end;

procedure TfrmNovoApontamento.edPesquisarChange(Sender: TObject);
begin
  inherited;
  if cdsOperacoes.Locate('ope_codigo',edPesquisar.Text,[]) then
    filtro;
end;

procedure TfrmNovoApontamento.filtro;
var sql :string;
begin
  cdsBusca.sql.Clear;

  SQL :=
    'SELECT cl.CLI_FANTASIA, iop_nordem  as OSV_CODIGO,P1.PRD_REFER,  fb.FAB_CODIGO, OP.Ope_Codigo, OP.OPE_DESCRICAO, ' +
    ' FB.SEQUENCIA, P1.PRD_DESCRI, fb.tempo_estimado,                                ' +
    ' OPR.OPR_DTENTREGA OSV_DTENTREGA, p1.prd_und,                                 ' +
    ' DATEDIFF(DAY,CURRENT_DATE, OPR.OPR_DTENTREGA) RESTANTES, OS.IOP_QUANTIDADE,  ' +
    '  OS.IOP_QTDE_CONCLUIDA, OS.IOP_QTDE_PRODUZINDO,OS.IOP_QTDE_REFUGADA,          ' +
    '  FB.FAB_PRODUZINDO, FB.FAB_REFUGADA, FB.FAB_REBARBA, FB.FAB_PRODUZIDA , FB.IOP_CODIGO,        '+
    '  IOP_SEQ_PRG, opr.PED_CODIGO '+
    ' FROM FABRICACAO FB                                                           ' +
    '  INNER JOIN PRD0000 P1 ON (P1.PRD_CODIGO = fb.PRD_CODIGO)                    ' +
    '  INNER JOIN ITEM_ORDEMPRODUCAO OS ON (OS.iop_CODIGO = FB.iop_CODIGO          ' +
    '  AND P1.PRD_codigo = os.PRD_codigo)                                          ' +
    '  INNER JOIN ORDEMPRODUCAO OPR ON (OPR.OPR_CODIGO = OS.OPR_CODIGO)            ' +
    '  INNER JOIN OPERACOES OP  ON (OP.OPE_CODIGO = FB.OPE_CODIGO)                 ' +
    '  LEFT JOIN APONTAMENTO_FAB af ON (af.FAB_CODIGO  = fb.FAB_CODIGO )                ' +
    '  JOIN CLI0000 cl ON (cl.CLI_CODIGO = opr.CLI_CODIGO) ';
   if cdsOperacoesOPE_CODIGO.AsInteger > 0 then
     SQL := SQL +
      ' WHERE FB.OPE_CODIGO = '+ cdsOperacoesOPE_CODIGO.AsString+
      ' and opr.EMP_CODIGO = '+ QuotedStr(DBInicio.Empresa.EMP_CODIGO)
   else
     SQL := SQL +
      ' WHERE opr.EMP_CODIGO = '+ QuotedStr(DBInicio.Empresa.EMP_CODIGO);
  cdsBusca.SQL.Text := SQL;
  if chkConcluidos.Checked then
  begin
    cdsBusca.SQL.Text :=  cdsBusca.SQL.Text  + ' AND FB.DATA_CONCLUSAO IS NULL   ';
    // cdsBusca.SQL.Text :=  cdsBusca.SQL.Text  + ' AND FB.FAB_PRODUZIDA + FB.FAB_REFUGADA < OS.IOP_QUANTIDADE   ';
    cdsBusca.SQL.Text :=  cdsBusca.SQL.Text  + ' AND af.APF_DATA_FIM IS NULL ';
  end;
  cdsBusca.SQL.Text :=  cdsBusca.SQL.Text  + ' AND  IOP_STATUS <> ''L''  ';

//  cdsBusca.SQL.Text :=  cdsBusca.SQL.Text  + iif(chkFinalizados.Checked, '',' AND ( iop_status <> ''F'' OR IOP_DATA_CONCLUSAO  BETWEEN CURRENT_DATE-7 AND CURRENT_DATE) ' ) ;
  cdsBusca.SQL.Text :=  cdsBusca.SQL.Text  + iif(chkFinalizados.Checked,' AND ( iop_status <> ''F'' ) ', '' ) ;


  cdsBusca.SQL.Text :=  cdsBusca.SQL.Text  +  '  ORDER BY SEQUENCIA ';
  if DBInicio.IsDesenvolvimento then
    CopyToClipBoard(cdsBusca.SQL.Text);
end;

procedure TfrmNovoApontamento.FormCreate(Sender: TObject);
begin
  inherited;
  cdsBusca.DisableControls;
  self.Constraints.MinHeight:= 612;
  self.Constraints.MinWidth:=1175;
  self.Constraints.MaxHeight:= 0;
  self.width:=1175;
  self.height:=612;
  cdsOperacoes.Open;

  Self.ProcedureFiltro:=filtro;
  btnPesquisa.Click;
  self.CampoID := 'IOP_CODIGO';
  self.CampoIDRetorno :=  'IOP_CODIGO';
  if not Assigned(tcr) then
    tcr := TProducaoDao.Create(application);
  cdsBuscaIOP_QUANTIDADE.DisplayFormat := '###,###,##0.'+StrZero('0', dbInicio.Empresa.fPMT_QTDE_DEC_PED);
  cdsBuscaIOP_QTDE_CONCLUIDA.DisplayFormat := '###,###,##0.'+StrZero('0', dbInicio.Empresa.fPMT_QTDE_DEC_PED);
  cdsBuscaIOP_QTDE_REFUGADA.DisplayFormat := '###,###,##0.'+StrZero('0', dbInicio.Empresa.fPMT_QTDE_DEC_PED);
  cdsBuscaIOP_QTDE_PRODUZINDO.DisplayFormat := '###,###,##0.'+StrZero('0', dbInicio.Empresa.fPMT_QTDE_DEC_PED);
  cdsBuscaFAB_PRODUZINDO.DisplayFormat  := '###,###,##0.'+StrZero('0', dbInicio.Empresa.fPMT_QTDE_DEC_PED);
  cdsBuscaFAB_REFUGADA.DisplayFormat  := '###,###,##0.'+StrZero('0', dbInicio.Empresa.fPMT_QTDE_DEC_PED);
  cdsBuscaFAB_REBARBA.DisplayFormat  := '###,###,##0.'+StrZero('0', dbInicio.Empresa.fPMT_QTDE_DEC_PED);
  cdsBuscaFAB_PRODUZIDA.DisplayFormat :=   '###,###,##0.'+StrZero('0', dbInicio.Empresa.fPMT_QTDE_DEC_PED);
  cdsApontarAPF_INICIADA.DisplayFormat :=  '###,###,##0.'+StrZero('0', dbInicio.Empresa.fPMT_QTDE_DEC_PED);
  cdsApontarAPF_REFUGADO.DisplayFormat :=  '###,###,##0.'+StrZero('0', dbInicio.Empresa.fPMT_QTDE_DEC_PED);
  cdsApontarAPF_REBARBA.DisplayFormat :=  '###,###,##0.'+StrZero('0', dbInicio.Empresa.fPMT_QTDE_DEC_PED);
  cdsApontarAPF_FINALIZADAS.DisplayFormat :=  '###,###,##0.'+StrZero('0', dbInicio.Empresa.fPMT_QTDE_DEC_PED);

  // DisplayFormat:='###,###,##0.'+StrZero('0', dbInicio.Empresa.fPMT_QTDE_DEC_PED);
  self.WindowState := wsMaximized;
  EnableScrollBar(DBCtrlGrid1.Handle,SB_VERT,ESB_DISABLE_BOTH);
  ShowScrollBar(DBCtrlGrid1.Handle,SB_VERT,False);
  cdsBusca.EnableControls;
 // filtro;
end;

procedure TfrmNovoApontamento.FormDestroy(Sender: TObject);
begin
  inherited;
  if Assigned(tcr) then
    FreeAndNil(tcr);
   frmNovoApontamento := nil;
end;

procedure TfrmNovoApontamento.FormShow(Sender: TObject);
begin
  inherited;
  edPesquisar.SetFocus;
end;

procedure TfrmNovoApontamento.Naoperao1Click(Sender: TObject);
var oco : TFrmEventoOcorrencias;
begin
  inherited;
  if cdsApontar.IsEmpty then
      exit;
  oco := TFrmEventoOcorrencias.Create(Application);
  try
    oco.FAB_Codigo := cdsApontarFAB_CODIGO.AsInteger;

    oco.Status := 0 ;
    oco.Novo('Nova ocorrência na operação');
    if oco.ModalResult = mrok then
    begin
      cdsOcorrencias.Close;
      cdsOcorrencias.Open;

    end;
  finally
    oco.Free;
  end;

end;

procedure TfrmNovoApontamento.Noapontamento1Click(Sender: TObject);
var oco : TFrmEventoOcorrencias;
begin
  inherited;
  if cdsApontar.IsEmpty then
    raise Exception.Create('Não tem apontamento');
  oco := TFrmEventoOcorrencias.Create(Application);
  try

    oco.FAB_Codigo := cdsApontarFAB_CODIGO.AsInteger;
    oco.APF_Codigo := cdsApontarAPF_CODIGO.AsInteger;
    oco.Status := 0 ;
    oco.Novo('Nova ocorrência para o apontamento');
    if oco.ModalResult = mrok then
    begin
      cdsOcorrencias.Close;
      cdsOcorrencias.Open;

    end;
  finally
    oco.Free;
  end;

end;

procedure TfrmNovoApontamento.Resolverocorrncia1Click(Sender: TObject);
var oco : TFrmEventoOcorrencias;
    ADetailDataController: TcxGridDBDataController;
    ARelationIndex : integer;
    cod : integer;

begin
  if cdsOcorrencias.IsEmpty then
   exit;
  with cxgrd1DBBandedTableView1 do
  begin
    // como estou usando um query virtual
    ARelationIndex := TcxGridDBDataController(DataController).GetDetailActiveRelationIndex(DataController.FocusedRecordIndex);
    ADetailDataController := TcxGridDataController(DataController).GetDetailDataController(DataController.FocusedRecordIndex, ARelationIndex) as TcxGridDBDataController;

  end;
  cod := ADetailDataController.Controller.SelectedRecords[0].Values[cxgrd1DBTableView1OCE_CODIGO.Index];
  oco := TFrmEventoOcorrencias.create( self );
   try

       oco.Status := 1 ;
       oco.Edita(IntToStr(cod), 'Resolver/Fechar ocorrência');
       if oco.ModalResult = mrok then
       begin
         cdsOcorrencias.Close;
         cdsOcorrencias.Open;


       end;


   finally
     FreeAndNil(oco);
   end;


end;



procedure TfrmNovoApontamento.WMNCCalcSize(var msg: TMessage);
var
  style: Integer;
begin
  style := getWindowLong( handle, GWL_STYLE );
  if (style and WS_HSCROLL) <> 0 then
    SetWindowLong( handle, GWL_STYLE, style and not WS_HSCROLL );
  inherited;

end;

end.

