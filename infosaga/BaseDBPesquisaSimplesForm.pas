unit BaseDBPesquisaSimplesForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBPesquisaBaseForm, Data.DB, Data.DBXFirebird, Data.FMTBcd, Vcl.Menus, Datasnap.DBClient, Datasnap.Provider, Vcl.ExtCtrls, Data.SqlExpr, ACBrEnterTab,
  ACBrBase, ACBrCalculadora, Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid, Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Mask, JvExMask, JvToolEdit;

type
  TfrmBaseDBPesquisaSimples = class(TfrmBaseDBPesquisaBase)
    btnImprime: TSpeedButton;
    btnExcel: TSpeedButton;
    btnFechar: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure btnExcelClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBaseDBPesquisaSimples: TfrmBaseDBPesquisaSimples;

implementation

{$R *.dfm}

procedure TfrmBaseDBPesquisaSimples.btnExcelClick(Sender: TObject);
begin
     inherited;
     ExportarExcel ( dbGrid, Sender ) ;
end;

procedure TfrmBaseDBPesquisaSimples.btnFecharClick(Sender: TObject);
begin
  inherited;
  ModalResult := mrCancel ;
  CLOSE;
end;

procedure TfrmBaseDBPesquisaSimples.FormCreate(Sender: TObject);
begin
     inherited;
     btnImprimeBase := self.btnImprime;
end;

procedure TfrmBaseDBPesquisaSimples.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  h: HWND;
begin
  inherited;
  if GetKeyState( VK_CONTROL ) and 128 <> 0 then // control pressionado
  begin
       if key = VK_F6 then //
       begin
            if btnImprime.enabled then
               btnImprime.click;
            key:=0;
       end ;
  end;
end;

end.
