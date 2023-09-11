unit uFiltroExportarExcel;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBForm, Data.DBXFirebird, Data.FMTBcd, Data.DB, Data.SqlExpr, ACBrEnterTab, ACBrBase, ACBrCalculadora, Vcl.StdCtrls, SgDbSeachComboUnit;

type
  TfrmFiltroExportar = class(TfrmBaseDB)
    Label1: TLabel;
    cbTipo: TSgDbSearchCombo;
    qTipoProduto: TSQLQuery;
    chkOcultarInativas: TCheckBox;
    Button2: TButton;
    Button1: TButton;
    SQLQuery1: TSQLQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFiltroExportar: TfrmFiltroExportar;

implementation

{$R *.dfm}

end.
