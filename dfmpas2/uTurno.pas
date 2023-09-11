unit uTurno;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBEditForm, Data.DBXFirebird, Data.FMTBcd, Data.DB, Datasnap.DBClient, Datasnap.Provider, Data.SqlExpr, ACBrEnterTab, ACBrBase, ACBrCalculadora,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, SYSTEM.TypInfo, Vcl.DBCtrls, Vcl.Mask, Vcl.ComCtrls, JvExComCtrls, JvDateTimePicker, JvDBDateTimePicker;

type
  TfrmTurnos = class(TfrmBaseDBEdit)
    CdsEditTPR_CODIGO: TIntegerField;
    CdsEditTRP_NOME: TStringField;
    CdsEditEMP_CODIGO: TStringField;
    CdsEditTRP_ATIVO: TStringField;
    CdsEditTRP_DIASSEMANAS: TIntegerField;
    CdsEditTRP_INICIO: TTimeField;
    CdsEditTRP_DESCRICAO_INT1: TStringField;
    CdsEditTRP_DESCRICAO_INT2: TStringField;
    CdsEditTRP_DESCRICAO_INT3: TStringField;
    CdsEditTRP_TEMPOINTERVALO1: TTimeField;
    Nome: TLabel;
    DBEdit1: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    DBEdit2: TDBEdit;
    Label1: TLabel;
    CdsEditTRP_FIM: TTimeField;
    CdsEditTRP_TEMPOINTERVALO2: TTimeField;
    CdsEditTRP_TEMPOINTERVALO3: TTimeField;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit7: TDBEdit;
    Label7: TLabel;
    DBEdit8: TDBEdit;
    Label8: TLabel;
    DBEdit9: TDBEdit;
    Label9: TLabel;
    DBEdit10: TDBEdit;
    DBText1: TDBText;
    Label10: TLabel;
    qEditTPR_CODIGO: TIntegerField;
    qEditTRP_NOME: TStringField;
    qEditEMP_CODIGO: TStringField;
    qEditTRP_ATIVO: TStringField;
    qEditTRP_DIASSEMANAS: TIntegerField;
    qEditTRP_INICIO: TTimeField;
    qEditTRP_FIM: TTimeField;
    qEditTRP_DESCRICAO_INT1: TStringField;
    qEditTRP_DESCRICAO_INT2: TStringField;
    qEditTRP_DESCRICAO_INT3: TStringField;
    qEditTRP_TEMPOINTERVALO1: TTimeField;
    qEditTRP_TEMPOINTERVALO2: TTimeField;
    qEditTRP_TEMPOINTERVALO3: TTimeField;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CdsEditAfterInsert(DataSet: TDataSet);
    procedure CdsEditNewRecord(DataSet: TDataSet);
    procedure CdsEditBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTurnos: TfrmTurnos;

implementation
   uses uteis, InicioDB;
{$R *.dfm}

procedure TfrmTurnos.CdsEditAfterInsert(DataSet: TDataSet);
begin
  inherited;
  CdsEditTRP_ATIVO.AsString := 'S';

end;

procedure TfrmTurnos.CdsEditBeforePost(DataSet: TDataSet);
begin
  inherited;
  if CdsEditTRP_NOME.AsString = '' then
    uteis.Aviso('Nome deve ser preenchido' )
  else
  begin
    if CdsEditEMP_CODIGO.AsString = '' then
      CdsEditEMP_CODIGO.AsString := dbinicio.Empresa.EMP_CODIGO;
    if CdsEditTRP_ATIVO.AsString = '' then
      CdsEditTRP_ATIVO.AsString := 'S';
  end;
end;

procedure TfrmTurnos.CdsEditNewRecord(DataSet: TDataSet);
begin
  inherited;
  If CdsEditTPR_CODIGO.AsInteger = 0 then
    CdsEditTPR_CODIGO.AsInteger := GetNextSequence('GEN_TURNO_PRODUCAO')  ;
end;

procedure TfrmTurnos.FormCreate(Sender: TObject);
begin
  inherited;
	CampoID:='TPR_CODIGO';
  Tabela:='TURNO';
  DspEdit.UpdateMode := upWhereKeyOnly;
	SetTamanhoMinimo(301,714);

end;

procedure TfrmTurnos.FormShow(Sender: TObject);
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
end;

end.
