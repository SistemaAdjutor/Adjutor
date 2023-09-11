unit uPesquisaOperacaoProcessoFabricacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBForm, Data.DBXFirebird, Data.FMTBcd, Data.DB, Data.SqlExpr, ACBrEnterTab, ACBrBase, ACBrCalculadora, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, cxEditRepositoryItems, cxGridBandedTableView, cxGridDBBandedTableView,
  System.ImageList, Vcl.ImgList, cxButtonEdit;

type
  TfrmPesquisaOperacaoProcessoFabricacao = class(TfrmBaseDB)
    Panel1: TPanel;
    Label1: TLabel;
    edPesquisa: TEdit;
    btnPesquisa: TSpeedButton;
    cxProcessoDBTableView1: TcxGridDBTableView;
    cxProcessoLevel1: TcxGridLevel;
    cxProcesso: TcxGrid;
    qProcesso: TFDQuery;
    dsProcesso: TDataSource;
    qOperacao: TFDQuery;
    dsOperacao: TDataSource;
    qProcessoIOP_DATA_PREVISTA: TSQLTimeStampField;
    qProcessoPED_CODIGO: TStringField;
    qProcessoPRD_REFER: TStringField;
    qProcessoIOP_STATUS: TStringField;
    qProcessoPRD_DESCRI: TStringField;
    qProcessoPRF_QTDE: TFMTBCDField;
    cxProcessoDBTableView1IOP_DATA_PREVISTA: TcxGridDBColumn;
    cxProcessoDBTableView1PED_CODIGO: TcxGridDBColumn;
    cxProcessoDBTableView1IOP_STATUS: TcxGridDBColumn;
    cxProcessoDBTableView1PRD_REFER: TcxGridDBColumn;
    cxProcessoDBTableView1PRD_DESCRI: TcxGridDBColumn;
    cxProcessoDBTableView1PRF_QTDE: TcxGridDBColumn;
    qOperacaoOPE_DESCRICAO: TStringField;
    qOperacaoOPE_CODIGO: TIntegerField;
    pgPesquisa: TPageControl;
    tsOperacao: TTabSheet;
    tsHistorico: TTabSheet;
    cxOperacaoDBTableView1: TcxGridDBTableView;
    cxOperacaoLevel1: TcxGridLevel;
    cxOperacao: TcxGrid;
    cxOperacaoDBTableView1OPE_CODIGO: TcxGridDBColumn;
    cxOperacaoDBTableView1OPE_DESCRICAO: TcxGridDBColumn;
    cxOperacaoDBTableView1Botao: TcxGridDBColumn;
    cxEditRepository1: TcxEditRepository;
    cxEditRepository1Modificar: TcxEditRepositoryButtonItem;
    qOperacaoFAB_CODIGO: TIntegerField;
    cxOperacaoDBTableView1FAB_CODIGO: TcxGridDBColumn;
    qHistorico: TFDQuery;
    dsHistorico: TDataSource;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    qHistoricoOPF_CODIGO: TIntegerField;
    qHistoricoFAB_CODIGO: TIntegerField;
    qHistoricoOPF_DATA: TSQLTimeStampField;
    qHistoricoOPF_DESCRICAO: TStringField;
    cxGrid1DBTableView1OPF_DATA: TcxGridDBColumn;
    cxGrid1DBTableView1OPF_DESCRICAO: TcxGridDBColumn;
    qHistoricoUSU_LOGIN: TStringField;
    cxGrid1DBTableView1USU_LOGIN: TcxGridDBColumn;
    qProcessoIOP_NORDEM: TStringField;
    cxProcessoDBTableView1IOP_NORDEM: TcxGridDBColumn;
    qOperacaoEQP_DESCRICAO: TStringField;
    cxOperacaoDBTableView1EQP_DESCRICAO: TcxGridDBColumn;
    qOperacaoSEQUENCIA: TIntegerField;
    cxOperacaoDBTableView1SEQUENCIA: TcxGridDBColumn;
    qOperacaoEQP_CODIGO: TIntegerField;
    cxOperacaoDBTableView1EQP_CODIGO: TcxGridDBColumn;
    cxEditRepository1Excluir: TcxEditRepositoryButtonItem;
    cxOperacaoDBTableView1Column1: TcxGridDBColumn;
    btIncluir: TBitBtn;
    qProcessoIOP_CODIGO: TIntegerField;
    cxProcessoDBTableView1IOP_CODIGO: TcxGridDBColumn;
    cxImageList1: TcxImageList;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnPesquisaClick(Sender: TObject);
    procedure cxProcessoDBTableView1CellClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure cxEditRepository1ButtonItem1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edPesquisaKeyPress(Sender: TObject; var Key: Char);
    procedure tsHistoricoShow(Sender: TObject);
    procedure edPesquisaEnter(Sender: TObject);
    procedure abreOperacao(codigo: string);
    procedure cxEditRepository1ExcluirPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure btIncluirClick(Sender: TObject);
    procedure edPesquisaExit(Sender: TObject);
  private
    var
      arquivoIni1: string;
      arquivoIni2: string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesquisaOperacaoProcessoFabricacao: TfrmPesquisaOperacaoProcessoFabricacao;

implementation

{$R *.dfm}

uses InicioDB, Uteis, uModificacaoOperacaoProcessoFabricacao, uProgramacaoProcessoFabricacao;

procedure TfrmPesquisaOperacaoProcessoFabricacao.FormCreate(Sender: TObject);
begin
  inherited;
  arquivoIni1 := dbInicio.SistemaLocal + 'settings\frmModificacaoOperacaoProcessoFabricacaoCxProcesso.grid';
  arquivoIni2 := dbInicio.SistemaLocal + 'settings\frmModificacaoOperacaoProcessoFabricacaoGrOperacao.grid';
  pgPesquisa.ActivePageIndex := tsOperacao.TabIndex;
end;

procedure TfrmPesquisaOperacaoProcessoFabricacao.FormShow(Sender: TObject);
begin
  inherited;
  cxProcessoDBTableView1.RestoreFromIniFile(arquivoIni1);
  cxOperacaoDBTableView1.RestoreFromIniFile(arquivoIni2);
end;

procedure TfrmPesquisaOperacaoProcessoFabricacao.tsHistoricoShow(Sender: TObject);
begin
  inherited;
  if cxOperacaoDBTableView1.DataController.Controller.SelectedRecords[0] = nil then
    exit;
  qHistorico.Close;
  qHistorico.SQL.Text := 'SELECT * FROM HIST_OPER_PROC_FAB WHERE FAB_CODIGO = ' +
    VarToStr(cxOperacaoDBTableView1.DataController.Controller.SelectedRecords[0].Values[cxOperacaoDBTableView1FAB_CODIGO.Index]) +
    ' ORDER BY OPF_DATA';
  qHistorico.Open;
end;

procedure TfrmPesquisaOperacaoProcessoFabricacao.cxEditRepository1ButtonItem1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  if not Assigned(frmModificacaoOperacaoProcessoFabricacao) then
    frmModificacaoOperacaoProcessoFabricacao := TfrmModificacaoOperacaoProcessoFabricacao.Create(application);
  frmModificacaoOperacaoProcessoFabricacao.lbDescricao.Caption := cxProcessoDBTableView1.DataController.Controller.SelectedRecords[0].Values[cxProcessoDBTableView1PRD_DESCRI.Index];
  frmModificacaoOperacaoProcessoFabricacao.fabCodigo := cxOperacaoDBTableView1.DataController.Controller.SelectedRecords[0].Values[cxOperacaoDBTableView1FAB_CODIGO.Index];

  frmModificacaoOperacaoProcessoFabricacao.opeCodigo := cxOperacaoDBTableView1.DataController.Controller.SelectedRecords[0].Values[cxOperacaoDBTableView1OPE_CODIGO.Index];
  frmModificacaoOperacaoProcessoFabricacao.lbOperacao.Caption := cxOperacaoDBTableView1.DataController.Controller.SelectedRecords[0].Values[cxOperacaoDBTableView1OPE_DESCRICAO.Index];

  frmModificacaoOperacaoProcessoFabricacao.Incluir := False;


  if cxOperacaoDBTableView1.DataController.Controller.SelectedRecords[0].Values[cxOperacaoDBTableView1EQP_CODIGO.Index] <> Null then
  begin
    frmModificacaoOperacaoProcessoFabricacao.eqpCodigo := cxOperacaoDBTableView1.DataController.Controller.SelectedRecords[0].Values[cxOperacaoDBTableView1EQP_CODIGO.Index];
    frmModificacaoOperacaoProcessoFabricacao.lbEquipamento.Caption := cxOperacaoDBTableView1.DataController.Controller.SelectedRecords[0].Values[cxOperacaoDBTableView1EQP_DESCRICAO.Index];
  end
  else
    frmModificacaoOperacaoProcessoFabricacao.lbEquipamento.Caption := 'Não Informado';

  frmModificacaoOperacaoProcessoFabricacao.ShowModal;
end;

procedure TfrmPesquisaOperacaoProcessoFabricacao.cxEditRepository1ExcluirPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  if MessageDlg('Deseja Excluir o Registro?', mtConfirmation, [mbYes, mbNo], 0) <> mrYes then
    exit;
  qAux.Close;
  qAux.SQL.Text := 'DELETE FROM FABRICACAO ' +
                   ' WHERE FAB_CODIGO = ' + VarToStr(cxOperacaoDBTableView1.DataController.Controller.SelectedRecords[0].Values[cxOperacaoDBTableView1FAB_CODIGO.Index]);
  qAux.ExecSQL;

  qAux.Close;
  qAux.SQL.Text := 'INSERT INTO HIST_OPER_PROC_FAB VALUES (' +
    IntToStr(dbInicio.GetNextSequence( 'GEN_HIST_OPER_PROC_FAB')) + ',' +
    VarToStr(cxOperacaoDBTableView1.DataController.Controller.SelectedRecords[0].Values[cxOperacaoDBTableView1FAB_CODIGO.Index]) + ',' +
    DateTimeToSQL(Now) + ',' +
    QuotedStr( 'Excluído: ' +
      VarToStr(cxOperacaoDBTableView1.DataController.Controller.SelectedRecords[0].Values[cxOperacaoDBTableView1OPE_DESCRICAO.Index]) +
      '  -  ' +
      VarToStr(cxOperacaoDBTableView1.DataController.Controller.SelectedRecords[0].Values[cxOperacaoDBTableView1EQP_DESCRICAO.Index])
    ) + ', ' +
    QuotedStr(DBInicio.Usuario.USERNAME) +
  ')';
  qAux.ExecSQL;

  qOperacao.Refresh;
  frmProgramacaoProcessoFabricacao.btnPesquisa.Click;

end;

procedure TfrmPesquisaOperacaoProcessoFabricacao.cxProcessoDBTableView1CellClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  if cxProcessoDBTableView1.DataController.Controller.SelectedRecords[0] <> nil then
  begin
    abreOperacao(cxProcessoDBTableView1.DataController.Controller.SelectedRecords[0].Values[cxProcessoDBTableView1IOP_NORDEM.Index]);
  end;
end;

procedure TfrmPesquisaOperacaoProcessoFabricacao.edPesquisaEnter(Sender: TObject);
begin
  inherited;
    abreOperacao(edPesquisa.Text);
    qProcesso.Locate('IOP_NORDEM', edPesquisa.Text, []);
end;

procedure TfrmPesquisaOperacaoProcessoFabricacao.edPesquisaExit(Sender: TObject);
begin
  inherited;
  abreOperacao(edPesquisa.Text);
end;

procedure TfrmPesquisaOperacaoProcessoFabricacao.edPesquisaKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if (Key = #13) then
    btnPesquisa.Click;
end;

procedure TfrmPesquisaOperacaoProcessoFabricacao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  cxProcessoDBTableView1.StoreToIniFile(arquivoIni1);
  cxOperacaoDBTableView1.StoreToIniFile(arquivoIni2);
  frmProgramacaoProcessoFabricacao.btnPesquisa.Click;
  Action := caFree;
  frmPesquisaOperacaoProcessoFabricacao := nil;
end;

procedure TfrmPesquisaOperacaoProcessoFabricacao.abreOperacao(codigo: string);
begin
    qOperacao.Close;
    qOperacao.SQL.Text :=
      ' SELECT f.SEQUENCIA, o.OPE_CODIGO, o.OPE_DESCRICAO, f.FAB_CODIGO, eq.EQP_CODIGO, eq.EQP_DESCRICAO ' +
      '   FROM FABRICACAO f ' +
      '   JOIN OPERACOES o ON (o.OPE_CODIGO = f.OPE_CODIGO) ' +
      '   JOIN ITEM_ORDEMPRODUCAO iop ON (iop.IOP_CODIGO = f.IOP_CODIGO) ' +
      '   LEFT JOIN EQUIPAMENTO eq ON (eq.EQP_CODIGO = f.EQP_CODIGO) ' +
      '  WHERE ' +
      '    NOT EXISTS (SELECT FAB_CODIGO FROM APONTAMENTO_FAB af2 WHERE af2.FAB_CODIGO = f.FAB_CODIGO)' +
      '    AND iop.IOP_NORDEM =  ' + QuotedStr(codigo) +
      '  ORDER BY f.SEQUENCIA ';
    qOperacao.Open;
    tsHistoricoShow(Self);
end;

procedure TfrmPesquisaOperacaoProcessoFabricacao.btIncluirClick(Sender: TObject);
begin
  inherited;
  if not Assigned(frmModificacaoOperacaoProcessoFabricacao) then
    frmModificacaoOperacaoProcessoFabricacao := TfrmModificacaoOperacaoProcessoFabricacao.Create(application);
  frmModificacaoOperacaoProcessoFabricacao.lbDescricao.Caption := cxProcessoDBTableView1.DataController.Controller.SelectedRecords[0].Values[cxProcessoDBTableView1PRD_DESCRI.Index];
  frmModificacaoOperacaoProcessoFabricacao.fabCodigo := cxOperacaoDBTableView1.DataController.Controller.SelectedRecords[0].Values[cxOperacaoDBTableView1FAB_CODIGO.Index];

  frmModificacaoOperacaoProcessoFabricacao.lbOperacao.Caption := 'Nova Operação';
  frmModificacaoOperacaoProcessoFabricacao.lbEquipamento.Caption := 'Novo Equipamento';
  frmModificacaoOperacaoProcessoFabricacao.Incluir := True;
  frmModificacaoOperacaoProcessoFabricacao.OSV_CODIGO := cxProcessoDBTableView1.DataController.Controller.SelectedRecords[0].Values[cxProcessoDBTableView1IOP_NORDEM.Index];
  frmModificacaoOperacaoProcessoFabricacao.IOP_CODIGO := cxProcessoDBTableView1.DataController.Controller.SelectedRecords[0].Values[cxProcessoDBTableView1IOP_CODIGO.Index];
  frmModificacaoOperacaoProcessoFabricacao.PRD_REFER := cxProcessoDBTableView1.DataController.Controller.SelectedRecords[0].Values[cxProcessoDBTableView1PRD_REFER.Index];


  frmModificacaoOperacaoProcessoFabricacao.ShowModal;

end;

procedure TfrmPesquisaOperacaoProcessoFabricacao.btnPesquisaClick(Sender: TObject);
var
  sql: string;
begin
  inherited;
  qProcesso.Close;
  sql := 
     ' SELECT DISTINCT ' +
     '   iop.IOP_CODIGO, ' +
     '   iop.IOP_NORDEM, ' +
     '   iop.IOP_DATA_PREVISTA, ' +
     '   pe.PED_CODIGO, ' +
     '   CASE ' +
     '     WHEN iop.IOP_STATUS = ''L'' THEN ''PENDENTE'' ' +
     '     WHEN iop.IOP_STATUS = ''I'' THEN ''INICIADA'' ' +
     '   END IOP_STATUS, ' +
     '   pr.PRD_REFER, ' +
     '   pr.PRD_DESCRI, ' +
     '   it.PRF_QTDE ' +
     ' FROM ' +
     '   ORDEMPRODUCAO op ' +
     ' JOIN CLI0000 cl ON	cl.CLI_CODIGO = op.CLI_CODIGO ' +
     ' JOIN ITEM_ORDEMPRODUCAO iop ON	(iop.OPR_CODIGO = op.OPR_CODIGO ) ' +
     ' JOIN PRD0000 pr ON	(pr.PRD_CODIGO = iop.PRD_CODIGO) ' +
     ' JOIN PED0000 pe ON	(pe.PED_CODIGO = op.PED_CODIGO		AND op.EMP_CODIGO = pe.EMP_CODIGO) ' +
     ' LEFT JOIN FTC0000 ft ON	(ft.PRD_REFER = pr.PRD_REFER) ' +
     ' LEFT JOIN PRD_LOTE lot ON	(lot.IOP_CODIGO = iop.IOP_CODIGO) ' +
     ' JOIN FABRICACAO fb ON	(pr.PRD_CODIGO = fb.PRD_CODIGO		AND iop.IOP_CODIGO = FB.IOP_CODIGO) ' +
     ' LEFT JOIN PED_IT01 it ON	(it.PED_CODIGO = op.PED_CODIGO		AND it.PRD_CODIGO = iop.PRD_CODIGO) ' +
     ' WHERE ' +
     '   EXISTS (SELECT * FROM DEMANDA_PRODUCAO dpr WHERE dpr.PED_CODIGO = op.PED_CODIGO AND dpr.EMP_CODIGO = op.EMP_CODIGO ) ' +
     '   AND ( iop.iop_status <> ''F'')  ';
    if edPesquisa.Text <> '' then
      sql := sql + ' AND (iop.IOP_NORDEM CONTAINING ' + QuotedStr(edPesquisa.Text) +
                   ' OR pe.PED_CODIGO CONTAINING ' + QuotedStr(edPesquisa.Text) +
                   ' OR pr.PRD_REFER CONTAINING ' + QuotedStr(edPesquisa.Text) + ')';
    sql := sql + ' ORDER BY iop.IOP_NORDEM   ';
    qProcesso.SQL.Text := sql;
    qProcesso.Open;
    abreOperacao(edPesquisa.Text);
end;

end.
