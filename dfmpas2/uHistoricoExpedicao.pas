unit uHistoricoExpedicao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBEditForm, Data.DBXFirebird, Data.FMTBcd, Data.DB, Datasnap.DBClient, Datasnap.Provider, Data.SqlExpr, ACBrEnterTab, ACBrBase, ACBrCalculadora,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, System.TypInfo, Vcl.DBCtrls;

type
  TfrmHistoricoExpedicao = class(TfrmBaseDBEdit)
    CdsEditHIS_REGISTRO: TIntegerField;
    CdsEditPED_CODIGO: TStringField;
    CdsEditSITEXP: TStringField;
    CdsEditDATASIT: TSQLTimeStampField;
    CdsEditUSU_CODIGO: TIntegerField;
    CdsEditOBSERVACAO: TBlobField;
    cbExped: TComboBox;
    Label1: TLabel;
    obs: TDBMemo;
    Label2: TLabel;
    CdsEditEMP_CODIGO: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CdsEditBeforePost(DataSet: TDataSet);
  private
    FPedido : string;
    fEMP_codigo :string;
    procedure SetPedido (const Avalues: string);
  public
    { Public declarations }
    property Pedido :string read Fpedido write SetPedido;
    property Emp_Codigo : string read fEMP_codigo write fEMP_codigo;
  end;

var
  frmHistoricoExpedicao: TfrmHistoricoExpedicao;

implementation

{$R *.dfm}
uses iniciodb ;
procedure TfrmHistoricoExpedicao.CdsEditBeforePost(DataSet: TDataSet);
VAR LSIT :String;
begin
  inherited;
  case cbExped.itemindex of
  0: lSit := 'LIB';   //liberaod
  1: lSit := 'SEP';  //em separação
  2: lSit := 'FIN'; //FINALIZADO
  3: lSit := 'FAT'; //faturado
  4: lSit := 'DEP'; // DESPACHADO
  5: lSit := 'IMP';  //IMPEDIDO
  end;
  CdsEditSITEXP.AsString := lsit;
  CdsEditPED_CODIGO.AsString := Pedido;
  CdsEditEMP_CODIGO.AsString := Emp_Codigo;
  CdsEditUSU_CODIGO.AsInteger := StrToInt(DBInicio.Usuario.CODIGO);
  CdsEditDATASIT.AsDateTime := NOW;
  if CdsEditHIS_REGISTRO.IsNull then
     CdsEditHIS_REGISTRO.AsInteger := GetNextSequence('GEN_HIST_EXPE');

  ExecSql('UPDATE PED0000 SET SITEXP = '+ QuotedStr(LSIT) +' WHERE PED_CODIGO = '+ QuotedStr(PEDIDO) + ' and emp_codigo = '+QuotedStr(Emp_Codigo) );

end;

procedure TfrmHistoricoExpedicao.FormCreate(Sender: TObject);
begin
  inherited;
  CampoID:='HIS_REGISTRO';
  Tabela:='HISTORICO_EXPE';
  DspEdit.UpdateMode := upWhereKeyOnly;
  SetTamanhoMinimo(231,591);
  cbExped.itemindex := 2;
end;

procedure TfrmHistoricoExpedicao.FormShow(Sender: TObject);
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
  VisibleAndEnabl(cbPersistente,false,false);
end;

procedure TfrmHistoricoExpedicao.SetPedido(const Avalues: string);
begin
  FPedido := Avalues;
end;

end.
