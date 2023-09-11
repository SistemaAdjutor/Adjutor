unit RBRelProdCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Provider, SqlExpr,SqlClientDataSet, DB, DBClient, DBLocal, DBLocalS, ppCtrls,
  ppVar, ppPrnabl, ppClass, ppBands, ppDB, ppCache, ppProd, ppReport,
  ppComm, ppRelatv, ppDBPipe, ppModule, raCodMod;

type
  TRelRbProdCliente = class(TForm)
    SqlCdsProdCliRb: TSQLClientDataSet;
    DsProdCliRb: TDataSource;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    SqlCdsProdCliRbCLI_CODIGO: TStringField;
    SqlCdsProdCliRbCLI_RAZAO: TStringField;
    SqlCdsProdCliRbCLI_PORTE: TStringField;
    SqlCdsProdCliRbCLI_ENDERE: TStringField;
    SqlCdsProdCliRbCLI_BAIRRO: TStringField;
    SqlCdsProdCliRbCLI_UF: TStringField;
    SqlCdsProdCliRbCLI_CIDADE: TStringField;
    SqlCdsProdCliRbCLI_FONE: TStringField;
    SqlCdsProdCliRbCLI_FAX: TStringField;
    SqlCdsProdCliRbCLI_CONTATO: TStringField;
    SqlCdsProdCliRbCLI_DTINICIO: TSQLTimeStampField;
    SqlCdsProdCliRbCLI_DTULTCOM: TSQLTimeStampField;
    SqlCdsProdCliRbFAT_CODIGO: TStringField;
    SqlCdsProdCliRbREP_CODIGO: TStringField;
    SqlCdsProdCliRbFAT_DTEMIS: TSQLTimeStampField;
    SqlCdsProdCliRbPRD_REFER: TStringField;
    SqlCdsProdCliRbFIT_QTDE: TFMTBCdField;
    SqlCdsProdCliRbFIT_IPIALIQ: TFMTBCdField;
    SqlCdsProdCliRbFIT_PRECO: TFMTBCdField;
    SqlCdsProdCliRbFIT_DESCTO: TFMTBCdField;
    SqlCdsProdCliRbPRD_DESCRI: TStringField;
    SqlCdsProdCliRbPRECOTOTAL_CC: TCurrencyField;
    ppHeaderBand1: TppHeaderBand;
    LABEL_EMPRESA: TppLabel;
    LTITULO1: TppLabel;
    LTITULO2: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppLine1: TppLine;
    ppDetailBand1: TppDetailBand;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppVariable1: TppVariable;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppDBText2: TppDBText;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppDBText3: TppDBText;
    ppLabel3: TppLabel;
    ppDBText6: TppDBText;
    ppLabel4: TppLabel;
    ppDBText7: TppDBText;
    ppLabel5: TppLabel;
    ppDBText4: TppDBText;
    ppDBText8: TppDBText;
    ppLabel2: TppLabel;
    ppDBText5: TppDBText;
    ppLine2: TppLine;
    ppDBText16: TppDBText;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLine4: TppLine;
    ppLabel6: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppLine3: TppLine;
    ppDBCalc2: TppDBCalc;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppGroupFooterBand2: TppGroupFooterBand;
    raCodeModule1: TraCodeModule;
    procedure SqlCdsProdCliRbCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RelRbProdCliente: TRelRbProdCliente;

implementation

{$R *.dfm}

Uses DataCad;

procedure TRelRbProdCliente.SqlCdsProdCliRbCalcFields(DataSet: TDataSet);
begin
    SqlCdsProdCliRbPRECOTOTAL_CC.AsCurrency:=SqlCdsProdCliRbPRECOTOTAL_CC.AsCurrency + (SqlCdsProdCliRbFIT_PRECO.AsCurrency * SqlCdsProdCliRbFIT_QTDE.AsCurrency);
end;

end.
