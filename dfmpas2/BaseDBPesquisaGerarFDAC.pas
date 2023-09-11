unit BaseDBPesquisaGerarFDAC;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBPesquisaFDAC, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  Data.DB, cxDBData, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Phys.FBDef, FireDAC.UI.Intf, FireDAC.VCLUI.Wait, FireDAC.VCLUI.Error, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.FB, Vcl.StdCtrls, Vcl.ExtCtrls, ACBrCalculadora,
  frxClass, Vcl.Menus, FireDAC.Comp.Client, FireDAC.Comp.UI, FireDAC.Phys.IBBase, FireDAC.Comp.DataSet, cxLocalization, ACBrBase, ACBrEnterTab, JvExControls, JvArrowButton, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, Vcl.Buttons, Vcl.ComCtrls;

type
  TFrmBaseDBPesquisaGeraFDAC = class(TfrmBaseDBPesquisaFDAC)
    LabeledEdit1: TLabeledEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
   Fsql: string;
   fIDFiltro :String;
   fCamposPesquisa : TStringList;

   procedure SetSQL (const Values:string);

   function PesquisaRetorno: string;
  public
    DescricaoPesquisa: string;
    TituloTela : string;
    procedure Filtro;
    property SQLFiltro: string read fsql write SetSQL;
    property IDFiltro: string  read fIDFiltro write fIDFiltro;
    property CampoPesquisa : TStringList read fCamposPesquisa ;
  end;

var
  FrmBaseDBPesquisaGeraFDAC: TFrmBaseDBPesquisaGeraFDAC;

implementation

{$R *.dfm}

{ TFrmBaseDBPesquisaGeraFDAC }

procedure TFrmBaseDBPesquisaGeraFDAC.Filtro;
begin
 with cdsBusca,sql do
  begin

    if LabeledEdit1.Text = '' then
      cdsBusca.SQL.Text := SQLFiltro
    else
      cdsBusca.SQL.Text := StringReplace(SQLFiltro,'WHERE','WHERE '+PesquisaRetorno,[] );

    cdsBusca.Params[0].Value := IDFiltro;
  end;

end;

procedure TFrmBaseDBPesquisaGeraFDAC.FormCreate(Sender: TObject);
begin
  inherited;

  self.Constraints.MinHeight:= 612;
  self.Constraints.MinWidth:=1175;
  self.Constraints.MaxHeight:= 0;
  self.width:=1175;
  self.height:=612;

end;

procedure TFrmBaseDBPesquisaGeraFDAC.FormShow(Sender: TObject);
begin
  inherited;
  self.Caption := TituloTela;
  LabeledEdit1.EditLabel.Caption := DescricaoPesquisa;
  Self.ProcedureFiltro:=filtro;
  btnPesquisa.Click;
  cxgrd1DBTableView1.DataController.CreateAllItems(true);

end;

function TFrmBaseDBPesquisaGeraFDAC.PesquisaRetorno: string;
var I: Integer;
   sql: string;
begin
  sql:= '';
  for I := 0 to CampoPesquisa.Count-1 do
  begin
    sql:= CampoPesquisa[i] + 'CONTAINING ' +QuotedStr(LabeledEdit1.Text) +' and '+sql;

  end;
end;


procedure TFrmBaseDBPesquisaGeraFDAC.SetSQL(const Values: string);
begin
  Fsql := Values;
end;

end.
