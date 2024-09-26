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
    cdsBuscoPRD_COMPL: TStringField;
    cdsBuscoPTI_DESCRI: TStringField;
    cdsBuscoPGR_DESCRI: TStringField;
    cdsBuscoLIN_DESCRI: TStringField;
    cdsBuscoPRD_ORIGEM: TIntegerField;
    cdsBuscoAMX_SALDO_RET: TFMTBCDField;
    cdsBuscoPRD_MINIMO: TFMTBCDField;
    cdsBuscoPRDE_ENDERECO: TStringField;
    cdsBuscoPRD_PESOLIQ: TFMTBCDField;
    cdsBuscoPRD_PESOKG: TFMTBCDField;
    cdsBuscoPRD_PCUSTO: TFMTBCDField;
    cdsBuscoPRD_MARGEMVENDA: TFMTBCDField;
    cdsBuscoPRD_PVENDA: TFMTBCDField;
    cdsBuscoCEST_DESCRICAO: TStringField;
    cdsBuscoPRD_CODBARRA: TStringField;
    cdsBuscoCOD_BARRA_TRIBUTAVEL: TStringField;
    cdsBuscoFOR_CODIGO: TStringField;
    cdsBuscoFOR_CGC: TStringField;
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
     // query := 'select prd_codigo, prd_refer, prd_Descri, prd_und, ipi_codigo from prd0000';
     query :=
             ' SELECT ' +
             ' PRD_REFER, ' +
             ' PRD_CODIGO, ' +
             ' PRD_DESCRI, ' +
             ' PRD_UND, ' +
             ' PRD_COMPL, ' +
             ' IPI_CODIGO, ' +
             ' (SELECT pt.PTI_DESCRI FROM PRD_TIPO pt WHERE pt.PTI_CODIGO = p.PTI_CODIGO) AS PTI_DESCRI, ' +
             ' (SELECT pg.PGR_DESCRI FROM PRD_GRUPO pg WHERE pg.PGR_CODIGO = p.PGR_CODIGO) AS PGR_DESCRI, ' +
             ' (SELECT pl.LIN_DESCRI FROM PRD_LINHA pl WHERE pl.LIN_CODIGO = p.LIN_CODIGO) AS LIN_DESCRI, ' +
             ' CASE ' +
             '   WHEN PRD_ORIGEM = 0 OR PRD_ORIGEM = 3 OR PRD_ORIGEM = 4 OR PRD_ORIGEM = 5 OR PRD_ORIGEM = 8 THEN 0 ' +
             '   WHEN PRD_ORIGEM = 1 OR PRD_ORIGEM = 2 OR PRD_ORIGEM = 6 OR PRD_ORIGEM = 7 THEN 1 ' +
             ' END AS PRD_ORIGEM, ' +
           ' (SELECT SUM(AMX_SALDO_RET) FROM pCd_kardex_saldo(p.EMP_CODIGO, p.PRD_CODIGO, NULL)) AS AMX_SALDO_RET, ' +
             ' p.PRD_MINIMO, ' +
           ' (SELECT pe.PRDE_ENDERECO FROM PRD0000_ENDERECAMENTO pe WHERE pe.PRDE_REGISTRO = p.PRDE_REGISTRO AND pe.EMP_CODIGO = P.EMP_CODIGO) AS PRDE_ENDERECO, ' +
             ' p.PRD_PESOLIQ, ' +
             ' p.PRD_PESOKG, ' +
             ' p.PRD_PCUSTO, ' +
             ' p.PRD_MARGEMVENDA, ' +
             ' p.PRD_PVENDA, ' +
             ' (SELECT c.CEST_DESCRICAO FROM CEST0000 c WHERE c.CEST_COD = p.CEST_COD) AS CEST_DESCRICAO, ' +
             ' p.PRD_CODBARRA , ' +
             QuotedStr(' ') +  ' AS COD_BARRA_TRIBUTAVEL, ' +
             ' (SELECT FIRST 1 T1.FOR_CODIGO FROM FOR0000 T1  WHERE T1.FOR_CODIGO in (SELECT T1.for_codigo FROM enf_it01 T1 WHERE T1.prd_refer = P.PRD_REFER GROUP BY T1.for_codigo) or T1.FOR_CODIGO ' +
             '    in (select t2.for_codigo from PRD0000_CODIGO t2  JOIN PRD0000 E ON T2.PRD_CODIGO = E.PRD_CODIGO  where t2.prd_codigo = p.PRD_CODIGO) ORDER BY FOR_CODIGO) AS FOR_CODIGO, ' +
             ' (SELECT FIRST 1 T1.FOR_CGC FROM FOR0000 T1  WHERE T1.FOR_CODIGO in (SELECT T1.for_codigo FROM enf_it01 T1 WHERE T1.prd_refer = P.PRD_REFER GROUP BY T1.for_codigo) or T1.FOR_CODIGO in ' +
             '    (select t2.for_codigo from PRD0000_CODIGO t2  JOIN PRD0000 E ON T2.PRD_CODIGO = E.PRD_CODIGO  where t2.prd_codigo = p.PRD_CODIGO) ORDER BY FOR_CODIGO) AS FOR_CGC ' +
             ' FROM PRD0000 p ';

     qBusco.sql.Add(query) ;
     if DBInicio.ExclusivoSql('PRODUTOS') <> '' then
        SqlAdd(DBInicio.ExclusivoSql('PRODUTOS')) ;

     if Inativo then
       SqlAdd('p.PRD_STATUS = '+QuotedStr('A'));
     if TIPO <> '' then
       SqlAdd('p.PTI_CODIGO = '+QuotedStr(TIPO));

     Add('order by p.PRD_REFER  ');

     if dbInicio.IsDesenvolvimento then
      copyToClipboard(qBusco.SQL.text);
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
