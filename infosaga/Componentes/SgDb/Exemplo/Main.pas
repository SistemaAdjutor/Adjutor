unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, BaseDBForm, DBXpress, ACBrBase,
  ACBrCalculadora, DB, SqlExpr, ExtCtrls, FMTBcd, math,
  StdCtrls, SgDbSeachComboUnit, SgDbAutoF8Unit, Mask, DBCtrls,
  DBClient, Provider, uteis, SgDbLookupComboUnit,
  SgDbLabeledUnit;



type
  TfrmBaseDB2 = class(TfrmBaseDB)
    SQLQuery1: TSQLQuery;
    sgDBAutoF81: TsgDBAutoF8;
    sqlProd: TSQLQuery;
    dspProd: TDataSetProvider;
    CdsProd: TClientDataSet;
    dsProd: TDataSource;
    sgDBAutoCRUD1: TsgDBAutoCRUD;
    grp1: TGroupBox;
    btn1: TButton;
    t1: TSgDbSearchCombo;
    lbl1: TLabel;
    grp2: TGroupBox;
    sgDBLookupCombo1: TsgDBLookupCombo;
    lb1: TsgDBLabeledEdit;
    CdsProdPRD_CODIGO: TStringField;
    CdsProdPRD_DESCRI: TStringField;
    sgDBLabeledEdit2: TsgDBLabeledEdit;
    Label1: TLabel;
    CdsProdSTB_TRIBUTACAO: TStringField;
    SQLQuery2: TSQLQuery;
    Button2: TButton;
    SQLQuery2STB_TRIBUTACAO: TStringField;
    SQLQuery2STB_DESCRICAO: TStringField;
    sgDBAutoF82: TsgDBAutoF8;
    sgDBAutoCRUD2: TsgDBAutoCRUD;
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    tr : tTransactionDesc;
  public
    { Public declarations }
  end;

var
  frmBaseDB2: TfrmBaseDB2;

implementation

{$R *.dfm}

procedure TfrmBaseDB2.btn1Click(Sender: TObject);
begin
  inherited;
  showmessage (t1.idretorno);

end;

procedure TfrmBaseDB2.Button2Click(Sender: TObject);
begin
  inherited;
  cdsProd.Post;
  cdsProd.ApplyUpdates(0);
  DBConn.Commit(tr);
  DBConn.StartTransaction(tr);
  cdsProd.Edit;
end;

procedure TfrmBaseDB2.FormCreate(Sender: TObject);
begin
  inherited;
  randomize;
  tr.TransactionID:=RandomRange(1,1000);
  tr.IsolationLevel:=xilREADCOMMITTED;

  windowstate:=wsnormal;
  DBConn.StartTransaction(tr);
  cdsProd.Open;
  cdsProd.Edit;
  t1.CharCase:= ecUpperCase;
  lb1.EditLabel.Caption:='Teste:';

end;

end.






