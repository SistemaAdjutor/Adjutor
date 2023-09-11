unit UPesqOcoperacoes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBPesquisaForm, Data.DB, Data.DBXFirebird, Data.FMTBcd, Vcl.Menus, Datasnap.DBClient, Datasnap.Provider, Vcl.ExtCtrls, Data.SqlExpr, ACBrEnterTab, ACBrBase,
  ACBrCalculadora, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.Buttons;

type
  TfrmBaseDBPesquisa1 = class(TfrmBaseDBPesquisa)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBaseDBPesquisa1: TfrmBaseDBPesquisa1;

implementation

{$R *.dfm}

end.
