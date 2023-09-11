unit uUnidade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBEditForm, Data.DBXFirebird, Data.FMTBcd, Data.DB, Datasnap.DBClient, Datasnap.Provider, Data.SqlExpr, ACBrEnterTab, ACBrBase, ACBrCalculadora,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, cxDBEdit, system.TypInfo, Vcl.CheckLst, Vcl.DBCtrls;

type
   TUniSigla = class
      private
         vSigla : String;
      public
         constructor Create(const pSigla : String);
         property Sigla : String read vSigla write vSigla;
   end;


type
  TfrmEditUnidade = class(TfrmBaseDBEdit)
    CdsEditPRD_UNISIGLA: TStringField;
    CdsEditPRD_UNIDESCRI: TStringField;
    CdsEditPRD_UNIREGISTRO: TIntegerField;
    CdsEditEMP_CODIGO: TStringField;
    CdsEditPRD_UNICODIGO: TIntegerField;
    Label1: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label2: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    clEquivalente: TCheckListBox;
    CdsEditPRD_UNIPADRAO: TStringField;
    DBCheckBox1: TDBCheckBox;
    Label3: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CdsEditBeforePost(DataSet: TDataSet);
    procedure btnOKClick(Sender: TObject);
    procedure clEquivalenteClickCheck(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEditUnidade: TfrmEditUnidade;

implementation

uses InicioDB, uteis;
{$R *.dfm}

procedure TfrmEditUnidade.btnOKClick(Sender: TObject);
var
  i : Integer;
begin
  inherited;
  qAux.Close;
  qAux.SQL.Text := 'DELETE FROM PRD_UNIDADE_EQUIVALENTE WHERE PRD_UNISIGLA = ' + QuotedStr(cxDBTextEdit1.Text);
  qAux.ExecSQL;
  for i := 0 to clEquivalente.Items.Count - 1 do
    if clEquivalente.Checked[i] then
    begin
      qAux.Close;
      qAux.SQL.Text := 'INSERT INTO PRD_UNIDADE_EQUIVALENTE VALUES (' +
        QuotedStr(cxDBTextEdit1.Text) + ',' +
        QuotedStr(TUniSigla(clEquivalente.Items.Objects[i]).Sigla) + ',' +
        QuotedStr(DBInicio.Emp_Codigo)+
      ')' ;
      qAux.ExecSQL;
    end;

end;

procedure TfrmEditUnidade.CdsEditBeforePost(DataSet: TDataSet);
var codigo : Integer;
begin
  inherited;
  if CdsEditPRD_UNISIGLA.AsString = EmptyStr then
     GeraException('Sigla não preenchida');
  if CdsEditPRD_UNIDESCRI.AsString = EmptyStr then
     GeraException('Descrição não preenchida');


  if CdsEditPRD_UNICODIGO.AsInteger =0  then
  begin
    codigo := BuscaUmDadoSqlAsInteger('SELECT max(PRD_UNICODIGO) FROM PRD_UNIDADE');
    Inc(codigo);
    CdsEditPRD_UNICODIGO.AsInteger := codigo ;
    CdsEditPRD_UNIREGISTRO.AsInteger  := codigo;

  end;
  if CdsEditEMP_CODIGO.AsString = EmptyStr then
    CdsEditEMP_CODIGO.AsString := DBInicio.Empresa.EMP_CODIGO;

end;

procedure TfrmEditUnidade.clEquivalenteClickCheck(Sender: TObject);
var
  strAux: TUniSigla;
  sigla, unidadeEquivalente: string;
begin
  inherited;
  if clEquivalente.Checked[clEquivalente.ItemIndex] then
  begin
    // verifica se já existe cadastro da Unidade Equivalente com a unidade selecionada
    sigla := TUniSigla(clEquivalente.items.Objects[clEquivalente.ItemIndex]).Sigla;
    unidadeEquivalente := BuscaUmDadoSqlAsString(
      'SELECT PRD_UNISIGLA FROM PRD_UNIDADE_EQUIVALENTE WHERE PRD_UNIEQUIVALENTE = ' + QuotedStr(sigla) +
      iif(DBInicio.Exclusivo('TABELAS'), ' AND EMP_CODIGO = ' + QuotedStr(DBInicio.Emp_Codigo), '')
    );
    if (unidadeEquivalente <> cxDBTextEdit1.Text) and (unidadeEquivalente <> '') then
    begin
      clEquivalente.Checked[clEquivalente.ItemIndex] := False;
      MessageDlg('Esta Unidade de Medida já se encotra como Equivalente em: ' + unidadeEquivalente, mtError, [mbOK], 0);
      Exit;
    end;

    // verifica se a unidade é uma unidade padrão
    unidadeEquivalente := BuscaUmDadoSqlAsString(
      'SELECT PRD_UNISIGLA FROM PRD_UNIDADE WHERE PRD_UNISIGLA = ' + QuotedStr(sigla) +
      ' AND PRD_UNIPADRAO = ''S''' +
      iif(DBInicio.Exclusivo('TABELAS'), ' AND EMP_CODIGO = ' + QuotedStr(DBInicio.Emp_Codigo), '')
    );
    if (unidadeEquivalente <> '') and (unidadeEquivalente <> cxDBTextEdit1.Text) then
    begin
      clEquivalente.Checked[clEquivalente.ItemIndex] := False;
      MessageDlg('Esta Unidade de Medida é uma Unidade Padrão', mtError, [mbOK], 0);
    end;


  end;
end;

procedure TfrmEditUnidade.FormCreate(Sender: TObject);
begin
  inherited;
  CampoID:='PRD_UNICODIGO';
  Tabela:='PRD_UNIDADE';
  SetTamanhoMinimo(344,671);

end;

procedure TfrmEditUnidade.FormShow(Sender: TObject);
  var
    strAux: TUniSigla;
    i : Integer;
  Procedure VisibleAndEnabl(btn: TObject; Visible, Enabl: Boolean);
  begin
    SetPropValue(btn, 'VISIBLE', Visible);
    SetPropValue(btn, 'ENABLED', Enabl);
  end;
begin
  inherited;
  VisibleAndEnabl(btSave, False, False);
  VisibleAndEnabl(btFirst, false, false);
  VisibleAndEnabl(btPrior, false, false);
  VisibleAndEnabl(btNext, false, false);
  VisibleAndEnabl(btLast, false, false);
  VisibleAndEnabl(cbPersistente, false, false);

  qAux.Close;
  qAux.SQL.Text := 'SELECT * FROM PRD_UNIDADE ' +
    iif(DBInicio.Exclusivo('TABELAS'),  ' WHERE EMP_CODIGO = ' + QuotedStr(DBInicio.Emp_Codigo), '') +
    ' ORDER BY PRD_UNISIGLA';
  qAux.Open;
  while not qAux.eof do
  begin
    strAux := TUniSigla.Create(qAux.FieldByName('PRD_UNISIGLA').AsString);
   // if strAux.vSigla <> cxDBTextEdit1.Text then
      clEquivalente.Items.AddObject(
        qAux.FieldByName('PRD_UNISIGLA').AsString + ' - ' +
        qAux.FieldByName('PRD_UNIDESCRI').AsString,
        strAux
      );
    qAux.Next;
  end;


  qAux.Close;
  qAux.SQL.Text := 'SELECT * FROM PRD_UNIDADE_EQUIVALENTE WHERE PRD_UNISIGLA = ' + QuotedStr(cxDBTextEdit1.Text);
  qAux.Open;
  while not qAux.eof do
  begin
    for i := 0 to clEquivalente.Items.Count - 1 do
      if qAux.FieldByName('PRD_UNIEQUIVALENTE').AsString = TUniSigla(clEquivalente.Items.Objects[i]).Sigla then
       clEquivalente.Checked[i] := true;
    qAux.Next;
  end;


end;


constructor TUniSigla.Create(const pSigla: String);
begin
  inherited Create;
  vSigla := pSigla;
end;

end.
