unit QRClie08;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, QRExport;

type
  TRelProdCliente = class(TQuickRep)
    QRBand1: TQRBand;
    QRGroup1: TQRGroup;
    QRBand2: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    TQProdCliQR: TQuery;
    TQProdCliQRCli0000CLI_CODIGO: TStringField;
    TQProdCliQRCLI_RAZAO: TStringField;
    TQProdCliQRCLI_PORTE: TStringField;
    TQProdCliQRCLI_ENDERE: TStringField;
    TQProdCliQRCLI_BAIRRO: TStringField;
    TQProdCliQRCLI_CIDADE: TStringField;
    TQProdCliQRCLI_FONE: TStringField;
    TQProdCliQRCLI_FAX: TStringField;
    TQProdCliQRCLI_CONTATO: TStringField;
    TQProdCliQRCLI_DTINICIO: TDateTimeField;
    TQProdCliQRCLI_DTULTCOM: TDateTimeField;
    TQProdCliQRFat0000FAT_CODIGO: TStringField;
    TQProdCliQRFat0000CLI_CODIGO: TStringField;
    TQProdCliQRREP_CODIGO: TStringField;
    TQProdCliQRFAT_DTEMIS: TDateTimeField;
    TQProdCliQRFat_it02FAT_CODIGO: TStringField;
    TQProdCliQRPRD_REFER: TStringField;
    TQProdCliQRFIT_QTDE: TFloatField;
    TQProdCliQRFIT_IPIALIQ: TFloatField;
    TQProdCliQRFIT_PRECO: TFloatField;
    TQProdCliQRFIT_DESCTO: TFloatField;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRLabel5: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel6: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel7: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel9: TQRLabel;
    QRDBText11: TQRDBText;
    LabelEmpresa: TQRLabel;
    LTitulo1: TQRLabel;
    LTitulo2: TQRLabel;
    QRLabel10: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    ChildBand1: TQRChildBand;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRDBText10: TQRDBText;
    QRLabel8: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRLabel15: TQRLabel;
    QRDBText3: TQRDBText;
    TQProdCliQRPrecoTotal_CC: TFloatField;
    QRDBText14: TQRDBText;
    QRLabel1: TQRLabel;
    TQProdCliQRCLI_UF: TStringField;
    QRLabel16: TQRLabel;
    QRDBText15: TQRDBText;
    TQProdCliQRPRD_DESCRI_CC: TStringField;
    QRBand3: TQRBand;
    QRExpr1: TQRExpr;
    QRLabel17: TQRLabel;
    QRLabel2: TQRLabel;
    QRDBText16: TQRDBText;
    QRTextFilter1: TQRTextFilter;
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure TQProdCliQRCalcFields(DataSet: TDataSet);
  private

  public

  end;

var
  RelProdCliente: TRelProdCliente;

  
implementation

uses GImpClie, ADJ0001, Database;

{$R *.DFM}

procedure TRelProdCliente.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  LabelEmpresa.Caption:=FormAdjutor.wEmp_Razao;
end;

procedure TRelProdCliente.TQProdCliQRCalcFields(DataSet: TDataSet);
begin
  TQProdCliQRPrecoTotal_CC.Value :=TQProdCliQRFIT_PRECO.Value*TQProdCliQRFIT_QTDE.Value;
  //Campo que busca descricao do cliente
  Datamodulo.TbProduto.Findkey([TQProdCliQRPRD_REFER.Value]);
  TQProdCliQRPRD_DESCRI_CC.Value := Datamodulo.TbProdutoPRD_DESCRI.Value;
end;

end.
