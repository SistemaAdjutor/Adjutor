unit RBRelCliente04;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Provider, SqlExpr, DB, DBClient, DBLocal, DBLocalS, ppCtrls,
  ppVar, ppPrnabl, ppClass, ppBands, ppDB, ppCache, ppProd, ppReport,
  ppComm, ppRelatv, ppDBPipe, ppModule, raCodMod, RwFunc;

type
  TRelRBCliente04 = class(TForm)
    ppReport04: TppReport;
    pp04HeaderBand1: TppHeaderBand;
    pp04DetailBand1: TppDetailBand;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText7: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBCalc2: TppDBCalc;
    ppGroupFooterBand2: TppGroupFooterBand;
    SqlCdsCliProduCLI_UF: TStringField;
    ppLine1: TppLine;
    LBL_04_EMPRESA: TppLabel;
    LBL_04_LTITULO1: TppLabel;
    LBL_04_LTITULO2: TppLabel;
    ppLine5: TppLine;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppDBText17: TppDBText;
    SqlCdsCliProduPRECOTOTAL_CC: TCurrencyField;
    SqlCdsCliProduSUB_TOTAL_CC: TCurrencyField;
    ppDB04: TppDBPipeline;
    pp04GroupHeaderBand1: TppGroupHeaderBand;
    pp04GroupHeaderBand2: TppGroupHeaderBand;
    pp04GroupFooterBand1: TppGroupFooterBand;
    procedure FormShow(Sender: tObject);
    procedure SqlCdsCliProduCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RelRBCliente04: TRelRBCliente04;

implementation

{$R *.dfm}

Uses adj0001,GImpClie,DataCad;

procedure TRelRBCliente04.FormShow(Sender: tObject);
begin
{
    try
      DataCadastros.CdsProdutos.Close;
      DataCadastros.CdsProdutos.CommandText:=SQLDEF('PRODUTOS','SELECT * FROM PRD0000',' ORDER BY PRD_REFER');
      DataCadastros.CdsProdutos.Open;
  //    Datamodulo.TbProduto.DatabaseName := PreOpen('Produtos');
  //    Datamodulo.TbProduto.IndexName := 'XPRD_REFE';
//      Datamodulo.TbProduto.open;
    except on E:EdatabaseError do
        begin
            uteis.erro  (Pchar('Erro ao abrir tabela Produto !'+e.message));
        end;
    end;
}
end;

procedure TRelRBCliente04.SqlCdsCliProduCalcFields(DataSet: TDataSet);
begin
//    SqlCdsCliProduSUB_TOTAL_CC.AsCurrency:=(SqlCdsCliProduFIT_PRECO.AsCurrency * SqlCdsCliProduFIT_QTDE.AsCurrency);
//    SqlCdsCliProduPRECOTOTAL_CC.AsCurrency:=
end;

end.
