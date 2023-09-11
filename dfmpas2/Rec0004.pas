unit Rec0004;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, Provider, SqlExpr,SqlClientDataSet, DB, DBClient,
  DBLocal, DBLocalS, SimpleDS;

type
  TFormRetencoes = class(TForm)
    GroupBox2: TGroupBox;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label31: TLabel;
    Label30: TLabel;
    DBEdt_BASE_ISS: TDBEdit;
    DBedt_BASE_INSS: TDBEdit;
    DBEdt_IRPJ_PERC: TDBEdit;
    DBEdt_PIS_PERC: TDBEdit;
    DBEdt_COFINS_PER: TDBEdit;
    DBEdt_CONTSOCIAL_PERC: TDBEdit;
    DBEdt_IRPJ_RET: TDBEdit;
    DBEdt_PIS_RET: TDBEdit;
    DBEdt_COFINS_RET: TDBEdit;
    DBEdt_CONTSOCIAL_RET: TDBEdit;
    DBEdt_INSS_PERC: TDBEdit;
    DBEdt_INSS_RET: TDBEdit;
    EdtTotalRetencao: TEdit;
    SQLClientDataSet1: TSQLClientDataSet;
    DataSource1: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRetencoes: TFormRetencoes;

implementation

{$R *.dfm}

end.
