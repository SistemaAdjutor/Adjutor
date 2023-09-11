unit ExportProdutoExcelForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseDBPesquisaForm, {{DBXpress,}  FMTBCd, DB, DBClient, Provider,
  SqlExpr,Menus, ExtCtrls, ACBrBase, ACBrCalculadora, Grids, DBGrids,
  JvExDBGrids, JvDBGrid, Buttons, ComCtrls, StdCtrls, Data.DBXInterBase,
  Data.DBXFirebird, ACBrEnterTab;

type
  TFrmExportProdutoExcel = class(TfrmBaseDBPesquisa)
    CdsBuscoPRD_CODIGO: TStringField;
    CdsBuscoPRD_REFER: TStringField;
    CdsBuscoPRD_DESCRI: TStringField;
    CdsBuscoPRD_UND: TStringField;
    CdsBuscoIPI_CODIGO: TStringField;
    procedure FormCreate(Sender: tObject);
  private
    fBotao:TButton;
    procedure FiltraProd;
    procedure SetBotao(const Value: TButton);
  public
    fTipo : string;
    fInativo : boolean;
    procedure Exportar;
    Property Botao: TButton Read fBotao write SetBotao;
    property Tipo:string read fTipo write Ftipo;
    property Inativo : boolean read fInativo write fInativo;
  end;

var
  FrmExportProdutoExcel: TFrmExportProdutoExcel;

implementation

uses Uteis, InicioDB;

{$R *.dfm}

procedure TFrmExportProdutoExcel.FormCreate(Sender: tObject);
begin
  inherited;
  Self.ProcedureFiltro:=FiltraProd;
end;

procedure TFrmExportProdutoExcel.FiltraProd;
var query : string;
begin
   with qBusco, SQL do
   begin
     Clear;
     query := 'select prd_codigo, prd_refer, prd_Descri, prd_und, ipi_codigo from prd0000';
     qBusco.sql.Add(query) ;
     if DBInicio.ExclusivoSql('PRODUTOS') <> '' then
        SqlAdd(DBInicio.ExclusivoSql('PRODUTOS')) ;

     if Inativo then
       SqlAdd('PRD_STATUS = '+QuotedStr('A'));
     if TIPO <> '' then
       SqlAdd('PTI_CODIGO = '+QuotedStr(TIPO));

     Add('order by PRD_REFER  ');
   end;
end;

procedure TFrmExportProdutoExcel.Exportar;
begin
  AbreTabela:=True;
  Filtro; // abre tabelas
  btnExcelClick(fBotao);
end;

procedure TFrmExportProdutoExcel.SetBotao(const Value: TButton);
begin
  fBotao := Value;
end;

end.
