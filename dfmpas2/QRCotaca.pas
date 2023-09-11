unit QRCotaca;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, QRExport;

type
  TRelcotacao01 = class(TQuickRep)
    QRBand1: TQRBand;
    LabelEmpresa: TQRLabel;
    QRLabel1: TQRLabel;
    QRBand2: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    TbCotacaoItenQR: TTable;
    DscotacaoItenQR: TDataSource;
    TbProdutoQR: TTable;
    TbCotacaoItenQRCIT_REG: TAutoIncField;
    TbCotacaoItenQRCOT_CODIGO: TStringField;
    TbCotacaoItenQRPRD_REFER: TStringField;
    TbCotacaoItenQRCIT_QTDE: TFloatField;
    TbCotacaoItenQRCIT_PRECO: TFloatField;
    TbCotacaoItenQRCIT_IPI: TFloatField;
    TbCotacaoItenQREMP_CODIGO: TStringField;
    TbProdutoQRPRD_CODIGO: TStringField;
    TbProdutoQRPRD_DESCRI: TStringField;
    TbProdutoQRPRD_REFER: TStringField;
    TbProdutoQRPRD_UND: TStringField;
    TbProdutoQRPRD_EMBALA: TStringField;
    TbProdutoQRPGR_CODIGO: TStringField;
    TbProdutoQRPTI_CODIGO: TStringField;
    TbProdutoQRIPI_CODIGO: TStringField;
    TbProdutoQRPRD_ALIQICM: TFloatField;
    TbProdutoQRLIN_CODIGO: TStringField;
    TbProdutoQRPRD_COMPL: TStringField;
    TbProdutoQRPRD_CARACT: TMemoField;
    TbProdutoQRPRD_MINIMO: TFloatField;
    TbProdutoQRPRD_PCUSTO: TFloatField;
    TbProdutoQRPRD_PVENDA: TFloatField;
    TbProdutoQRPRD_PMEDIO: TFloatField;
    TbProdutoQRPRD_ESTOQUE: TFloatField;
    TbProdutoQRPRD_SAIDA: TFloatField;
    TbProdutoQRPRD_PENDENTE: TFloatField;
    TbProdutoQRFOR_CODIGO: TStringField;
    TbProdutoQRPRD_ENTRADA: TFloatField;
    TbProdutoQRPRD_MAXIMO: TFloatField;
    TbProdutoQRPRD_ICMSUBS: TFloatField;
    TbProdutoQRPRD_UTILCONV: TBooleanField;
    TbProdutoQRPRD_UNDCOMP: TStringField;
    TbProdutoQRPRD_PESOKg: TFloatField;
    TbProdutoQRPRD_FATORC: TFloatField;
    TbProdutoQRPRD_DIVMULT: TStringField;
    TbProdutoQREMP_CODIGO: TStringField;
    TbProdutoQRPRD_DTPCUSTO: TDateTimeField;
    TbFornecQR: TTable;
    DsProdutoQR: TDataSource;
    TbFornecQRFOR_CODIGO: TStringField;
    TbFornecQRFOR_RAZAO: TStringField;
    TbFornecQRFOR_ENDERE: TStringField;
    TbFornecQRFOR_CIDADE: TStringField;
    TbFornecQRFOR_UF: TStringField;
    TbFornecQRFOR_CEP: TStringField;
    TbFornecQRFOR_CONTATO: TStringField;
    TbFornecQRFOR_FONE: TStringField;
    TbFornecQRFOR_FAX: TStringField;
    TbFornecQRFOR_EMAIL: TStringField;
    TbFornecQRFOR_FONCONT: TStringField;
    TbFornecQRFOR_FAXCONT: TStringField;
    TbFornecQRFOR_OBS: TStringField;
    TbFornecQREMP_CODIGO: TStringField;
    TbFornecQRFOR_CGC: TStringField;
    TbFornecQRFOR_INSC: TStringField;
    TbFornecQRFOR_HOME: TStringField;
    TbFornecQRFOR_EMAILCONT: TStringField;
    TbCotacaoQR: TTable;
    TbCotacaoQRCOT_CODIGO: TStringField;
    TbCotacaoQRFOR_CODIGO: TStringField;
    TbCotacaoQRCOT_DATA: TDateTimeField;
    TbCotacaoQRCOT_FRETE: TStringField;
    TbCotacaoQRCOT_ICMS: TFloatField;
    TbCotacaoQRCOT_IPI: TFloatField;
    TbCotacaoQRCOT_PRAZOPGTO: TStringField;
    TbCotacaoQRCOT_ENTREGA: TDateTimeField;
    TbCotacaoQRCOT_DESCTO: TFloatField;
    TbCotacaoQRCOT_OBS: TMemoField;
    TbCotacaoQRCOT_TOTAL: TFloatField;
    TbCotacaoQRCOT_STATUS: TStringField;
    TbCotacaoQREMP_CODIGO: TStringField;
    DsCotacao: TDataSource;
    DsFornecQR: TDataSource;
    QRGroup2: TQRGroup;
    QRBand3: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText6: TQRDBText;
    QRExpr1: TQRExpr;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRGroup1: TQRGroup;
    QRTextFilter1: TQRTextFilter;
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  Relcotacao01: TRelcotacao01;

implementation

uses ADJ0001, Men0001;

{$R *.DFM}

procedure TRelcotacao01.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  //Nome na empresa no topo do relatorio
    LabelEmpresa.Caption:= dbInicio.Empresa.Razao;
end;

end.
