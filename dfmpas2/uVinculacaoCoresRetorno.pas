unit uVinculacaoCoresRetorno;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, InicioDB,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBForm, Data.DBXFirebird, Data.FMTBcd, Data.DB, Data.SqlExpr, ACBrEnterTab, ACBrBase, ACBrCalculadora, Vcl.StdCtrls, Datasnap.DBClient, Datasnap.Provider,
  Vcl.Grids, Vcl.DBGrids, Vcl.Samples.Spin, SgDbSeachComboUnit, Vcl.ExtCtrls, Vcl.Buttons, SimpleDS, JvExStdCtrls, JvEdit, JvValidateEdit, Vcl.Mask, RxToolEdit, RxCurrEdit;

type
  TfrmVinculacaoCoresRetorno = class(TfrmBaseDB)
    qCor: TSQLQuery;
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    lbReferencia: TLabel;
    lbItem: TLabel;
    cbCor: TSgDbSearchCombo;
    Label3: TLabel;
    Label4: TLabel;
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    cdsGrade: TClientDataSet;
    dsGrade: TDataSource;
    BitConfirmar: TBitBtn;
    bitFinalizar: TBitBtn;
    edQuantidade: TCurrencyEdit;
    cdsGradeACO_CODIGO: TIntegerField;
    cdsGradeACO_NOME: TStringField;
    cdsGradeENF_REGISTRO: TIntegerField;
    cdsGradePEDIND_QUANTIDADE: TFMTBCDField;
    cdsGradeBOTAO: TStringField;
    Label5: TLabel;
    lbTotal: TLabel;
    procedure BitConfirmarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cbCorSelect(Sender: TObject);
    procedure edQuantidadeKeyPress(Sender: TObject; var Key: Char);
    procedure bitFinalizarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure ApagaRegistro;
  private
    { Private declarations }
  public
    enfRegistro: integer;
    lancaGrade: boolean;
    quantidadeTotal, quantidadeMaxima, quantidadeRetornada: double;


    { Public declarations }
  end;

var
  frmVinculacaoCoresRetorno: TfrmVinculacaoCoresRetorno;

implementation

{$R *.dfm}

uses Uteis;


procedure TfrmVinculacaoCoresRetorno.FormCreate(Sender: TObject);
begin
  inherited;
  cdsGrade.CreateDataSet;
end;

procedure TfrmVinculacaoCoresRetorno.FormShow(Sender: TObject);
begin
  inherited;
  cdsGrade.Filtered := False;
  cdsGrade.Filter := 'ENF_REGISTRO = ' + IntToStr(enfRegistro);
  cdsGrade.Filtered := True;
end;

procedure TfrmVinculacaoCoresRetorno.cbCorSelect(Sender: TObject);
begin
  inherited;
  if edQuantidade.CanFocus then
    edQuantidade.SetFocus;
end;

procedure TfrmVinculacaoCoresRetorno.DBGrid1CellClick(Column: TColumn);
begin
  inherited;
  if Column.FieldName = 'BOTAO' then
    ApagaRegistro;
  DBGrid1.SelectedIndex := 0;
end;

procedure TfrmVinculacaoCoresRetorno.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  BUTTON: Integer;
  R: TRect;
  bcolor: TColor;
begin
  if Column.FieldName = 'BOTAO' then
  begin
    DBGrid1.Canvas.FillRect(Rect);
    BUTTON := 0;
    R:=Rect;
    InflateRect(R,-1,-1); //Diminui o tamanho do Botão
    DrawFrameControl(DBGrid1.Canvas.Handle,R,BUTTON, BUTTON or BUTTON);
    bcolor := DBGrid1.Canvas.Brush.Color; // guarda a cor de fundo original
    DBGrid1.Canvas.Brush.Color := clBtnFace; // muda a cor de fundo
    DrawText(DBGrid1.Canvas.Handle,'Excluir',7,R,DT_VCENTER or DT_CENTER);
    DBGrid1.Canvas.Brush.Color := bcolor; // devolve a cor original
  end;
end;

procedure TfrmVinculacaoCoresRetorno.DBGrid1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 46  then
    ApagaRegistro;
end;

procedure TfrmVinculacaoCoresRetorno.edQuantidadeKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #13 then
  begin
    BitConfirmar.Click;
    cbCor.SetFocus;
  end;
end;

procedure TfrmVinculacaoCoresRetorno.bitFinalizarClick(Sender: TObject);
var
  total: double;
begin
  inherited;
  if cdsGrade.Recordcount = 0 then
  begin
    MessageDlg('Escolha uma cor.', mtWarning, [mbOK], 0);
    ModalResult := mrNone;
    Abort;
  end;
  cdsGrade.First;
  while not cdsGrade.Eof do
  begin
    total := total + cdsGradePEDIND_QUANTIDADE.AsFloat;
    cdsGrade.Next;
  end;
  quantidadeRetornada := total;
end;

procedure TfrmVinculacaoCoresRetorno.ApagaRegistro;
begin
  quantidadeTotal := quantidadeTotal + cdsGradePEDIND_QUANTIDADE.AsFloat;
  edQuantidade.Value := quantidadeTotal;
  cdsGrade.Delete;
end;

procedure TfrmVinculacaoCoresRetorno.BitConfirmarClick(Sender: TObject);
var
  total: double;
begin
  inherited;
  if cbCor.idRetorno = '' then
  begin
    MessageDlg('Escolha uma cor.', mtWarning, [mbOK], 0);
    Exit;
  end;
  if (edQuantidade.Value <= 0) and lancaGrade then
  begin
    MessageDlg('Escolha uma quantidade válida.', mtWarning, [mbOK], 0);
    Exit;
  end;

  if not lancaGrade then
    if cdsGrade.RecordCount > 0 then
    begin
      MessageDlg('É permitido somente uma cor quando lançado para vários itens.', mtWarning, [mbOK], 0);
      Exit;
    end;


  cdsGrade.First;
  while not cdsGrade.Eof do
  begin
    total := total + cdsGradePEDIND_QUANTIDADE.AsFloat;
    cdsGrade.Next;
  end;
  total := total + edQuantidade.Value;
  if (total > quantidadeMaxima) and lancaGrade  then
  begin
    MessageDlg('Não é possível retornar uma quantidade maior que a quantidade total', mtWarning, [mbOK], 0);
    edQuantidade.SetFocus;
    Exit;
  end;

  cdsGrade.Insert;
  cdsGradeACO_CODIGO.AsString := cbCor.idRetorno;
  cdsGradeACO_NOME.AsString := cbCor.Text;
  cdsGradePEDIND_QUANTIDADE.AsFloat := edQuantidade.Value;
  cdsGradeENF_REGISTRO.AsInteger := enfRegistro;
  cdsGrade.Post;

  if not lancaGrade then
    Exit;


  quantidadeTotal := quantidadeTotal - edQuantidade.Value;
  edQuantidade.Value := quantidadeTotal;

  total := 0;
  cdsGrade.First;
  while not cdsGrade.Eof do
  begin
    total := total + cdsGradePEDIND_QUANTIDADE.AsFloat;
    cdsGrade.Next;
  end;
  lbTotal.Caption := FormatFloat('###.###.###,##', total);


  cbCor.idRetorno := '';
  cbCor.SetFocus;
end;


end.
