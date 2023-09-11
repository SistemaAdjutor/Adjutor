unit prevc005;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, MXGRID, StdCtrls, ExtCtrls, Provider, SqlExpr,SqlClientDataSet, DB,
  DBTables, MXTABLES, MXDB, DBClient, DBLocal, DBLocalS, Mxstore;

type
  TFormPrevNovo = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    DecisionGrid1: TDecisionGrid;
    DecisionCube1: TDecisionCube;
    SQLClientDataSet1: TSQLClientDataSet;
    DecisionSource1: TDecisionSource;
    DecisionQuery1: TDecisionQuery;
    DataSource1: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrevNovo: TFormPrevNovo;

implementation

uses DataCad;

{$R *.dfm}

end.
