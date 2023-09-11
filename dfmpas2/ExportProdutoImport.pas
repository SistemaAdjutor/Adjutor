unit ExportProdutoImport;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBPesquisaForm, Data.DB, Data.DBXFirebird, Data.FMTBcd, Vcl.Menus, Datasnap.DBClient, Datasnap.Provider, Vcl.ExtCtrls, Data.SqlExpr, ACBrEnterTab, ACBrBase,
  ACBrCalculadora, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.Buttons;

type
  TfrmExportProdutoImportLeiaute = class(TfrmBaseDBPesquisa)
    cdsBuscoPRD_CODIGO: TStringField;
    cdsBuscoPRD_REFER: TStringField;
    cdsBuscoPRD_DESCRI: TStringField;
    cdsBuscoPRD_UND: TStringField;
    cdsBuscoIPI_CODIGO: TStringField;
    cdsBuscoPRD_COMPL: TStringField;
    cdsBuscoCEST_COD: TStringField;
    cdsBuscoPTI_CODIGO: TStringField;
    cdsBuscoPRD_PCUSTO: TFMTBCDField;
    cdsBuscoPRD_MARGEMVENDA: TFMTBCDField;
    cdsBuscoPRD_PVENDA: TFMTBCDField;
    cdsBuscoESTOQUE: TFMTBCDField;
    cdsBuscoLIN_DESCRI: TStringField;
    cdsBuscoPGR_DESCRI: TStringField;
    procedure FormCreate(Sender: TObject);
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
  frmExportProdutoImportLeiaute: TfrmExportProdutoImportLeiaute;

implementation

uses Uteis, InicioDB;

{$R *.dfm}

{ TfrmBaseDBPesquisa1 }

procedure TfrmExportProdutoImportLeiaute.Exportar;
begin
  AbreTabela:=True;
  Filtro; // abre tabelas
  btnExcelClick(fBotao);
end;

procedure TfrmExportProdutoImportLeiaute.FiltraProd;
var query : string;
begin
  with qBusco, SQL do
   begin
     Clear;
     query := 'SELECT PRD_CODIGO, PRD_REFER, PRD_DESCRI, PRD_UND, PRD_COMPL, IPI_CODIGO, CEST_COD, PTI_CODIGO, PRD_PCUSTO, PRD_MARGEMVENDA, PRD_PVENDA, pl.LIN_DESCRI, pg.PGR_DESCRI, '+
                '( SELECT SUM(kas_saldo) '+
                ' FROM kardex_almox_saldo '+
                 'WHERE prd_codigo = pd.prd_codigo '+
                ConcatSe (' and pd.',dbInicio.ExclusivoSql('ESTOQUES') )+') AS ESTOQUE '+
               ' FROM PRD0000 PD ' +
               ' JOIN PRD_LINHA pl ON (pl.LIN_CODIGO = pd.LIN_CODIGO) ' +
               ' JOIN PRD_GRUPO pg ON (pg.PGR_CODIGO = pd.PGR_CODIGO) '
               ;

     qBusco.sql.Add(query) ;
     if DBInicio.ExclusivoSql('PRODUTOS') <> '' then
        SqlAdd('pd.' + DBInicio.ExclusivoSql('PRODUTOS')) ;

     if Inativo then
       SqlAdd('PRD_STATUS = '+QuotedStr('A'));
     if TIPO <> '' then
       SqlAdd('PTI_CODIGO = '+QuotedStr(TIPO));

     Add('order by PRD_REFER  ');
   end;
end;

procedure TfrmExportProdutoImportLeiaute.FormCreate(Sender: TObject);
begin
  inherited;
  Self.ProcedureFiltro:=FiltraProd;
end;

procedure TfrmExportProdutoImportLeiaute.SetBotao(const Value: TButton);
begin
  fBotao := Value;
end;

end.
