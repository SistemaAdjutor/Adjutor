{**************************************************************
*  Programa...: For0003 - Nome formulario =  FormForXProd     *
*  Objetivo...: browse de fornecedores por produto            *
*  Analista...: Márcio Neu Pacheco                            *
*  Programador: Jackson Neu Pacheco                           *
*                                                             *
*  Comentários:                                               *
*                                                             *
*  Criação..........: jun/1999                                *
*  Ultima Alteração.:                                         *
*  Feito por........:                                         *
*                                                             *
**************************************************************}
unit For0003;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, ExtCtrls, Buttons, StdCtrls, Db, DBTables,RwFunc,
  Provider, SqlExpr,SqlClientDataSet, DBClient, DBLocal, DBLocalS, Data.DBXFirebird, SimpleDS;

type
  TFormForXProd = class(TForm)
    DBGrForXProd: TDBGrid;
    BitDesvincular: TBitBtn;
    DsQForXProd: TDataSource;
    CdsForXProd: TSQLClientDataSet;
    CdsForXProdFOR_CODIGO: TStringField;
    CdsForXProdPRD_REFER: TStringField;
    CdsForXProdPRD_DESCRI: TStringField;
    CdsForXProdPRD_UND: TStringField;
    CdsForXProdPRD_PCUSTO: TFMTBCdField;
    CdsForXProdPRD_DTPCUSTO: TSQLTimeStampField;
    BitSair: TBitBtn;
    procedure AtualizaSqlProd;
    procedure FormShow(Sender: tObject);
    procedure BitDesvincularClick(Sender: tObject);
    procedure BitSairClick(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormForXProd: TFormForXProd;

implementation

{$R *.DFM}

uses Uteis, DataCad, For0001, For0002, InicioDB;


procedure TFormForXProd.AtualizaSqlProd;
var
wSelect:string;
begin
    screen.cursor := crHourglass;
    wSelect       := 'where t1.FOR_CODIGO = '''+FormFornecGrid.cdsBuscoFOR_CODIGO.AsString+'''';
    Try
      CdsForXProd.Close;
      CdsForXProd.CommandText := 'SELECT '+
                                 '    t1.FOR_CODIGO, p1.PRD_REFER, p1.PRD_DESCRI,  p1.PRD_UND, p1.PRD_PCUSTO, p1.PRD_DTPCUSTO '+
                                 ' FROM prd0000_codigo t1 '+
                                 ' JOIN PRD0000 p1 ON  (p1.prd_codigo = t1.prd_codigo '+ConcatSe(' AND T1. ', DBInicio.ExclusivoSql('PRODUTOS'))+ ') '+ wSelect +
                                 ' ORDER BY p1.PRD_REFER';
      CdsForXProd.Open;
    except on E:EDataBaseError do
     uteis.erro  (pchar('Erro ao consultar a tabela ForXProd ! '+e.Message));
    end;
    screen.cursor := crDefault;
end;

procedure TFormForXProd.FormShow(Sender: tObject);

begin
    Left := 74;
    Top  := 37;
    AtualizaSqlProd;
end;

procedure TFormForXProd.BitDesvincularClick(Sender: tObject);
begin
    if uteis.confirmacao ( 'O produto selecionado será desvinculado deste fornececor.Confirma?') = IdYes then
       begin
           DataCadastros.sqlUpdate.Close;
           DataCadastros.SqlUpdate.sql.text :='Delete from prd0000_codigo where FOR_CODIGO = '''+CdsForXProdFOR_CODIGO.AsString+''' and prdc_referencia = '''+CdsForXProdPRD_REFER.AsString+'''';
           DataCadastros.sqlUpdate.Execsql;
           AtualizaSqlProd;
           DBGrForXProd.SetFocus;
      end;
end;

procedure TFormForXProd.BitSairClick(Sender: tObject);
begin
    Close;
end;

procedure TFormForXProd.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
    try
      CdsForXProd.Close;
    except on e:EdataBaseError do
       uteis.erro  (pchar('Erro ao Fechar a Tabela !'+e.message));
    end;

end;

end.

