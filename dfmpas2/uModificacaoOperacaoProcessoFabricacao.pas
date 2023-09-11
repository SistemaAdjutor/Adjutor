unit uModificacaoOperacaoProcessoFabricacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBForm, Data.DBXFirebird, Data.FMTBcd, Data.DB, Data.SqlExpr, ACBrEnterTab, ACBrBase, ACBrCalculadora, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, cxEditRepositoryItems, Vcl.DBCtrls;

type
  TfrmModificacaoOperacaoProcessoFabricacao = class(TfrmBaseDB)
    qOperacao: TFDQuery;
    dsOperacao: TDataSource;
    lbDescricao: TLabel;
    Label1: TLabel;
    lbOperacao: TLabel;
    Label2: TLabel;
    qOperacaoOPE_CODIGO: TIntegerField;
    qOperacaoOPE_DESCRICAO: TStringField;
    lcOperacao: TDBLookupComboBox;
    btConfirmar: TButton;
    btCancelar: TButton;
    qEquipamento: TFDQuery;
    dsEquipamento: TDataSource;
    Label3: TLabel;
    lbEquipamento: TLabel;
    Label5: TLabel;
    lcEquipamento: TDBLookupComboBox;
    qEquipamentoEQP_CODIGO: TIntegerField;
    qEquipamentoEQP_DESCRICAO: TStringField;
    procedure FormShow(Sender: TObject);
    procedure btConfirmarClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    var
      fabCodigo: string;
      opeCodigo: Variant;
      eqpCodigo: Variant;
      Incluir: boolean;
      OSV_CODIGO, PRD_REFER, IOP_CODIGO : string;
    { Public declarations }
  end;

var
  frmModificacaoOperacaoProcessoFabricacao: TfrmModificacaoOperacaoProcessoFabricacao;

implementation

{$R *.dfm}

uses InicioDB, Uteis, uPesquisaOperacaoProcessoFabricacao, uProgramacaoProcessoFabricacao;

procedure TfrmModificacaoOperacaoProcessoFabricacao.btConfirmarClick(Sender: TObject);
var
  opfCodigo: integer;
  msg, prd_codigo, sequencia, TEMPO_ESTIMADO, ENG_CODIGO, ENG_OBSERVACAO: string;
begin
  inherited;
  if Incluir then
    msg := 'Confirma Inclusão?'
  else
    msg := 'Confirma Alterações?';

  if VarToStr(lcOperacao.KeyValue) = '' then
  begin
    MessageDlg('Escolha a Operação', mtWarning, [mbOk], 0);
    Exit;
  end;


  if MessageDlg(msg, mtConfirmation, [mbYes, mbNo], 0) <> mrYes then
    exit;

  qAux.Close;
  if Incluir then
  begin
    fabCodigo := IntToStr(dbInicio.GetNextSequence('GEN_FABRICACAO'));
    prd_codigo := BuscaUmDadoSqlAsString('SELECT PRD_CODIGO FROM PRD0000 WHERE PRD_REFER = ' + QuotedStr(PRD_REFER ));
    sequencia := BuscaUmDadoSqlAsString('SELECT SEQUENCIA FROM ENGENHARIA_PROCESSO WHERE PRD_CODIGO = ' + QuotedStr(prd_codigo) + ' AND ' + ' OPE_CODIGO = ' + VarToStr(lcOperacao.KeyValue) );
    TEMPO_ESTIMADO := BuscaUmDadoSqlAsString('SELECT TEMPO_ESTIMADO FROM ENGENHARIA_PROCESSO WHERE PRD_CODIGO = ' + QuotedStr(prd_codigo) + ' AND ' + ' OPE_CODIGO = ' + VarToStr(lcOperacao.KeyValue) );
    ENG_CODIGO := BuscaUmDadoSqlAsString('SELECT ENG_CODIGO FROM ENGENHARIA_PROCESSO WHERE PRD_CODIGO = ' + QuotedStr(prd_codigo) + ' AND ' + ' OPE_CODIGO = ' + VarToStr(lcOperacao.KeyValue) );
    ENG_OBSERVACAO := BuscaUmDadoSqlAsString('SELECT ENG_OBSERVACAO FROM ENGENHARIA_PROCESSO WHERE PRD_CODIGO = ' + QuotedStr(prd_codigo) + ' AND ' + ' OPE_CODIGO = ' + VarToStr(lcOperacao.KeyValue) );
    qAux.SQL.Text :=
        'INSERT INTO FABRICACAO (OSV_CODIGO, FAB_CODIGO, PRD_CODIGO, OPE_CODIGO, sequencia, TEMPO_ESTIMADO, ENG_CODIGO, FAB_OBSERVACAO, IOP_CODIGO,  eqp_codigo )   '+
        ' VALUES (' +
          QuotedStr(OSV_CODIGO) + ',' +
          fabCodigo + ',' +
          QuotedStr(prd_codigo) + ',' +
          VarToStr(lcOperacao.KeyValue) + ',' +
          iif(sequencia = '', 'NULL', sequencia) + ',' +
          iif(TEMPO_ESTIMADO = '', 'NULL', TEMPO_ESTIMADO) + ',' +
          iif(ENG_CODIGO = '', 'NULL', ENG_CODIGO) + ',' +
          QuotedStr(ENG_OBSERVACAO) + ',' +
          IOP_CODIGO +  ',' +
          iif(VarToStr(lcEquipamento.KeyValue) = '', 'NULL', VarToStr(lcEquipamento.KeyValue)) +
        ')'
        ;
  end
  else
  begin
    qAux.SQL.Text := 'UPDATE FABRICACAO ' +
                     ' SET OPE_CODIGO = ' + VarToStr(lcOperacao.KeyValue) + ',' +
                     ' EQP_CODIGO = ' + iif(VarToStr(lcEquipamento.KeyValue) = '', 'NULL', VarToStr(lcEquipamento.KeyValue))  +
                     ' WHERE FAB_CODIGO = ' + fabCodigo;
  end;
  qAux.ExecSQL;
  frmPesquisaOperacaoProcessoFabricacao.qOperacao.Close;
  frmPesquisaOperacaoProcessoFabricacao.qOperacao.Open;
  opfCodigo := dbInicio.GetNextSequence( 'GEN_HIST_OPER_PROC_FAB');
  qAux.Close;
  qAux.SQL.Text := 'INSERT INTO HIST_OPER_PROC_FAB VALUES (' +
    IntToStr(opfCodigo) + ',' +
    fabCodigo + ',' +
    DateTimeToSQL(Now) + ',' +
    QuotedStr(lbOperacao.Caption + ' para ' + lcOperacao.Text + '  -  ' +
              lbEquipamento.Caption + ' para ' + lcEquipamento.Text) + ', ' +
    QuotedStr(DBInicio.Usuario.USERNAME) +
  ')';

  qAux.ExecSQL;
  lbOperacao.Caption := lcOperacao.Text;
  Close;
end;

procedure TfrmModificacaoOperacaoProcessoFabricacao.btCancelarClick(Sender: TObject);
begin
  frmProgramacaoProcessoFabricacao.btnPesquisa.Click;
  inherited;
  Close;
end;

procedure TfrmModificacaoOperacaoProcessoFabricacao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmProgramacaoProcessoFabricacao.btnPesquisa.Click;
  inherited;
  Action := caFree;
  frmModificacaoOperacaoProcessoFabricacao := nil;
end;

procedure TfrmModificacaoOperacaoProcessoFabricacao.FormShow(Sender: TObject);
begin
  inherited;
  qOperacao.Open;
  lcOperacao.KeyValue := opeCodigo;

  qEquipamento.Open;
  lcEquipamento.KeyValue := eqpCodigo;


end;

end.
