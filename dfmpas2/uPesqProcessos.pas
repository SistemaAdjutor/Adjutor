unit uPesqProcessos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBPesquisaFDAC, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  Data.DB, cxDBData, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Phys.FBDef, FireDAC.UI.Intf, FireDAC.VCLUI.Wait, FireDAC.VCLUI.Error, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.FB, frxClass, Vcl.Menus, FireDAC.Comp.Client,
  FireDAC.Comp.UI, FireDAC.Phys.IBBase, FireDAC.Comp.DataSet, cxLocalization, ACBrBase, ACBrEnterTab, JvExControls, JvArrowButton, Vcl.StdCtrls, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, Vcl.Buttons, Vcl.ExtCtrls, Vcl.ComCtrls, uEditProcessos, cxGridCustomLayoutView, cxGridCardView, cxGridDBCardView,
  dxLayoutContainer, cxGridLayoutView, cxGridDBLayoutView, cxGridDBDataDefinitions, uQualidadeProducao, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxEditorProducers,
  dxPScxExtEditorProducers, dxPSCore, ACBrCalculadora, cxButtonEdit, cxProgressBar, cxEditRepositoryItems,
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
  cxDataControllerConditionalFormattingRulesManagerDialog,
  cxGridViewLayoutContainer;

type
  TfrmPesqProcessos = class(TfrmBaseDBPesquisaFDAC)
    campolivre: TLabeledEdit;
    cdsBuscaPRO_CODIGO: TIntegerField;
    cdsBuscaPRO_DESCRICAO: TStringField;
    cdsBuscaDetalhesPRO_CODIGO: TIntegerField;
    cdsBuscaDetalhesOPE_DESCRICAO: TStringField;
    cdsBuscaDetalhesPOP_SEQ: TIntegerField;
    cxgrd1DBTableView1PRO_CODIGO: TcxGridDBColumn;
    cxgrd1DBTableView1PRO_DESCRICAO: TcxGridDBColumn;
    cxgrd1Level1: TcxGridLevel;
    cxgrd1TableView1: TcxGridTableView;
    cxgrd1DBTableView2: TcxGridDBTableView;
    cxgrd1DBTableView2OPE_DESCRICAO: TcxGridDBColumn;
    cxgrd1DBTableView2POP_SEQ: TcxGridDBColumn;
    cxgrd1DBCardView1: TcxGridDBCardView;
    cxgrd1DBCardView1OPE_DESCRICAO: TcxGridDBCardViewRow;
    cxgrd1DBCardView1POP_SEQ: TcxGridDBCardViewRow;
    cxgrd1DBLayoutView1Group_Root: TdxLayoutGroup;
    cxgrd1DBLayoutView1: TcxGridDBLayoutView;
    cxgrd1DBLayoutView1LayoutItem2: TcxGridLayoutItem;
    cxgrd1DBLayoutView1OPE_DESCRICAO: TcxGridDBLayoutViewItem;
    cdsBuscaDetalhesPOP_TEMPOESTIMADO: TTimeField;
    cxgrd1DBTableView2Column1: TcxGridDBColumn;
    cdsBuscaDetalhesOPE_CODIGO: TIntegerField;
    cxgrd1DBTableView2OPE_CODIGO: TcxGridDBColumn;
    cxgrd1DBTableView1SRV_NOME: TcxGridDBColumn;
    cxEditRepository1: TcxEditRepository;
    cxEditRepository1ButtonItem1: TcxEditRepositoryButtonItem;
    cxgrd1DBTableView2Column2: TcxGridDBColumn;
    cdsBuscaSRV_NOME: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure campolivreChange(Sender: TObject);
    procedure cxgrd1DBTableView2DblClick(Sender: TObject);
    procedure btnSelectClick(Sender: TObject);
    procedure cxgrd1DBTableView1DblClick(Sender: TObject);
    procedure cxgrd1DBTableView2CellClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
  private
    FServico: integer;
    procedure SetServico (const avalue: integer);
  public
    procedure filtro;
    procedure filtrodetalhe ;
    property Servico: integer read  FServico write Fservico;

  end;

var
  frmPesqProcessos: TfrmPesqProcessos;

implementation

uses uteis, iniciodb ;
{$R *.dfm}

procedure TfrmPesqProcessos.btnNovoClick(Sender: TObject);
var mtag: integer;
   	flg: boolean;
    bm : TBookmark;
begin
	inherited;
	mtag := (sender as tComponent).Tag;
  frmEditProcessos := tfrmEditProcessos.create( self );
	try
     bm:= cdsBusca.GetBookmark;
		 case mtag of
		 1: flg:=frmEditProcessos.novo('Novo processo') ;
		 2: frmEditProcessos.Consulta(cdsBusca.FieldByName('PRO_CODIGO').asString,'Consulta ao processo nº '+ cdsBusca.FieldByName('PRO_CODIGO').asString );
		 3: flg:=frmEditProcessos.edita(cdsBusca.FieldByName('PRO_CODIGO').asString,'Edição do processo nº '+cdsBusca.FieldByName('PRO_CODIGO').asString);
		 4: flg:=frmEditProcessos.exclui(cdsBusca.FieldByName('PRO_CODIGO').asString,'Exclusão de Registro');
		 end;
    cdsBusca.GotoBookmark(bm);
	finally
    cdsBusca.FreeBookmark(bm);
		frmEditProcessos.close;
		freeandnil(frmEditProcessos);
    cdsBusca.Refresh;
    cdsBuscaDetalhes.Refresh;
	end;

end;

procedure TfrmPesqProcessos.btnSelectClick(Sender: TObject);
begin
  inherited;
  ModalResult := mrOk;
end;

procedure TfrmPesqProcessos.campolivreChange(Sender: TObject);
begin
  inherited;
  if Length(campolivre.Text)>2 then
    btnPesquisa.Click
  else
  if campolivre.Text = '' then
    btnPesquisa.Click;
end;

procedure TfrmPesqProcessos.cxgrd1DBTableView1DblClick(Sender: TObject);
begin
  inherited;
  if btnSelect.Visible then
  begin
    btnSelect.Click;


  end ;
end;

procedure TfrmPesqProcessos.cxgrd1DBTableView2CellClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
var
 ADetailDataController: TcxGridDBDataController; {cxGridDBDataDefinitions}
 ARelationIndex, AFocusedIndex: Integer;
 ope_codigo, pro_codigo : integer;
begin
  inherited;

  if ACellViewInfo.Item.Index = 4 then
  begin
    with cxgrd1DBTableView1 do
    begin
      pro_codigo :=  cxgrd1DBTableView1.Controller.SelectedRecords[0].Values[ cxgrd1DBTableView1PRO_CODIGO.index];
      ARelationIndex := TcxGridDBDataController(DataController).GetDetailActiveRelationIndex(DataController.FocusedRecordIndex);
      ADetailDataController := TcxGridDataController(DataController).GetDetailDataController(DataController.FocusedRecordIndex, ARelationIndex) as TcxGridDBDataController;
       if ADetailDataController.Controller.SelectedRecords[0].IsData then
       begin
         ope_codigo := ADetailDataController.Controller.SelectedRecords[0].Values[ cxgrd1DBTableView2OPE_CODIGO.index];
       //  ShowMessage(IntToStr(ope_codigo) +'-'+ IntToStr(pro_codigo));
         if not Assigned(frmQualidadeOperacao) then
            frmQualidadeOperacao := TfrmQualidadeOperacao.Create(self);
          frmQualidadeOperacao.CodOperacao := ope_codigo;
          frmQualidadeOperacao.CodProcesso := pro_codigo;
          frmQualidadeOperacao.Operacao := cxgrd1DBTableView1.Controller.SelectedRecords[0].Values[cxgrd1DBTableView2OPE_DESCRICAO.Index];
          frmQualidadeOperacao.ShowModal;


       end;
    end;
  end;
end;

procedure TfrmPesqProcessos.cxgrd1DBTableView2DblClick(Sender: TObject);
var
 ADetailDataController: TcxGridDBDataController; {cxGridDBDataDefinitions}
 ARelationIndex, AFocusedIndex: Integer;
 ope_codigo, pro_codigo : integer;
begin
  inherited;


  with cxgrd1DBTableView1 do
  begin
    pro_codigo :=  cxgrd1DBTableView1.Controller.SelectedRecords[0].Values[ cxgrd1DBTableView1PRO_CODIGO.index];
    ARelationIndex := TcxGridDBDataController(DataController).GetDetailActiveRelationIndex(DataController.FocusedRecordIndex);
    ADetailDataController := TcxGridDataController(DataController).GetDetailDataController(DataController.FocusedRecordIndex, ARelationIndex) as TcxGridDBDataController;
     if ADetailDataController.Controller.SelectedRecords[0].IsData then
     begin
       ope_codigo := ADetailDataController.Controller.SelectedRecords[0].Values[ cxgrd1DBTableView2OPE_CODIGO.index];
     //  ShowMessage(IntToStr(ope_codigo) +'-'+ IntToStr(pro_codigo));
       if not Assigned(frmQualidadeOperacao) then
          frmQualidadeOperacao := TfrmQualidadeOperacao.Create(self);
        frmQualidadeOperacao.CodOperacao := ope_codigo;
        frmQualidadeOperacao.CodProcesso := pro_codigo;
        frmQualidadeOperacao.Operacao := cxgrd1DBTableView1.Controller.SelectedRecords[0].Values[cxgrd1DBTableView2OPE_DESCRICAO.Index];
        try
         frmQualidadeOperacao.Show;
        except
          frmQualidadeOperacao.close
        end;

     end;
  end;

end;

procedure TfrmPesqProcessos.filtro;
begin
  with cdsBusca,sql do
  begin
    cdsBusca.SQL.Text := 'select pro_codigo, pro_descricao, srv_nome from MODL_PROCESSOS p'+
                        ' left join servico se on (se.srv_codigo = p.srv_CODIGO) ';
    if DBINICIO.Exclusivo('ORDEMPRODUCAO') then
     SqlAdd(' p.emp_codigo = '+QuotedStr(DBInicio.Empresa.EMP_CODIGO));
    if servico > 0  then
      SqlAdd( ' se.srv_codigo = ' + IntToStr(servico));
    if Length(campolivre.Text)>2 then
    begin
      SqlAdd('PRO_DESCRICAO CONTAINING '+ QuotedStr(campolivre.Text));


    end;
  end;
end;

procedure TfrmPesqProcessos.filtrodetalhe;
begin
  cdsBuscaDetalhes.SQL.Clear;
  cdsBuscaDetalhes.SQL.Add('  select op.ope_codigo, po.pro_codigo, op.ope_descricao, po.pop_seq,  pop_tempoestimado  '+
                           '  from MODl_PROCESSOS_OPERACOES  po join operacoes op on (op.ope_codigo = po.ope_codigo) '+
                           ' order by  po.pro_codigo, po.pop_seq ');
   cdsBuscaDetalhes.Open;
end;

procedure TfrmPesqProcessos.FormCreate(Sender: TObject);
begin
  inherited;

  self.Constraints.MinHeight:= 612;
  self.Constraints.MinWidth:=1175;
  self.Constraints.MaxHeight:= 0;
  self.width:=1175;
  self.height:=612;
  Menu := 'ProduçãoCadastro de Processos';
  //filtro;
  self.CampoID := 'PRO_CODIGO';
  self.CampoIDRetorno :=  'PRO_CODIGO';

end;

procedure TfrmPesqProcessos.FormDestroy(Sender: TObject);
begin
  inherited;
  frmPesqProcessos := nil;
end;

procedure TfrmPesqProcessos.FormShow(Sender: TObject);
begin
  inherited;
  Self.ProcedureFiltro:=filtro;

  if not frmPesqProcessos.btnSelect.Visible then
  begin
    self.WindowState := wsMaximized;
    self.ProcedureFiltroDetalhe := filtroDetalhe;
  end
  else
  begin
    self.WindowState := wsNormal;
  end;
  btnPesquisa.Click;
  if Servico = 0  then
  begin
    cxgrd1DBTableView1.DataController.Groups.FullCollapse;
     cxgrd1DBTableView1SRV_NOME.GroupIndex := 0;
  end
  else
    cxgrd1DBTableView1SRV_NOME.GroupIndex := -1;

end;

procedure TfrmPesqProcessos.SetServico(const avalue: integer);
begin
  FServico := avalue;
end;

end.
