unit DataQuery;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables;
type
  TDataModQry = class(TDataModule)
    DTBAdjutor: TDatabase;
    TQCliente: TQuery;
    DsQCliente: TDataSource;
    TQRepres: TQuery;
    DsQRepres: TDataSource;
    TQReceber: TQuery;
    DsQReceber: TDataSource;
    TQClienteCLI_RAZAO: TStringField;
    TQClienteCLI_CODIGO: TStringField;
    TQReceberFAT_CODIGO: TStringField;
    TQReceberPCL_CODIGO: TStringField;
    TQReceberCLI_CODIGO: TStringField;
    TQReceberREP_CODIGO: TStringField;
    TQReceberPED_CODIGO: TStringField;
    TQReceberFAT_QTDITEM: TFloatField;
    TQReceberFAT_VL_LIQ: TFloatField;
    TQReceberFAT_VLFAT: TFloatField;
    TQReceberFAT_VLNCOMIS: TFloatField;
    TQReceberFAT_DTEMIS: TDateTimeField;
    TQReceberFAT_COMIS1: TFloatField;
    TQReceberFAT_COMIS2: TFloatField;
    TQReceberFAT_COMIS3: TFloatField;
    TQReceberFAT_OBS: TStringField;
    TQReceberFAT_OPERACAO: TStringField;
    TQReceberFAT_BASEICMS: TFloatField;
    TQReceberFAT_ALIQUOTA: TFloatField;
    TQReceberFAT_OBSLIVRO: TStringField;
    TQReceberFAT_OPERUF: TStringField;
    TQReceberFAT_LIVRO: TBooleanField;
    TQReceberEMP_CODIGO: TStringField;
    TQReceParc: TQuery;
    DsQReceParc: TDataSource;
    TQTransport: TQuery;
    DsQTransport: TDataSource;
    TQTransportTRP_CODIGO: TStringField;
    TQTransportTRP_RAZAO: TStringField;
    TQClienteCLI_CGC: TStringField;
    TQItemRec: TQuery;
    DsQItemRec: TDataSource;
    TQItemRecFAT_CODIGO: TStringField;
    TQItemRecPRD_CODIGO: TStringField;
    TQItemRecFat_it02PRD_REFER: TStringField;
    TQItemRecFIT_QTDE: TFloatField;
    TQItemRecFIT_IPIALIQ: TFloatField;
    TQItemRecFIT_PRECO: TFloatField;
    TQItemRecEMP_CODIGO: TStringField;
    TQItemRecPRD_DESCRI: TStringField;
    TQItemRecPrd0000PRD_REFER: TStringField;
    TQPagParc: TQuery;
    DsQPagParc: TDataSource;
    TQPagParcPag_pc01PAG_CODIGO: TStringField;
    TQPagParcPPC_NUMER: TStringField;
    TQPagParcPPC_BANCO: TStringField;
    TQPagParcPPC_VENCTO: TDateTimeField;
    TQPagParcPPC_PAGTO: TDateTimeField;
    TQPagParcPPC_VLPARC: TFloatField;
    TQPagParcPPC_VLPAGO: TFloatField;
    TQPagParcPPC_OBS: TStringField;
    TQPagParcPPC_SITPAG: TBooleanField;
    TQPagParcEMP_CODIGO: TStringField;
    TQPagParcFOR_CODIGO: TStringField;
    TQPagParcCCT_CODIGO: TStringField;
    TQPagParcPag0000PAG_CODIGO: TStringField;
    TQPagParcPAG_NUMDOC: TStringField;
    TQPagParcPAG_DTEMIS: TDateTimeField;
    TQPagParcPAG_FAVORECIDO: TStringField;
    TQItemRecFIT_TOTAL_CC: TFloatField;
    DsQProduto: TDataSource;
    TQProduto: TQuery;
    TQClienteTRP_CODIGO: TStringField;
    TQClienteREP_CODIGO: TStringField;
    TQRepresREP_NOME: TStringField;
    TQRepresREP_CODIGO: TStringField;
    TQFornec: TQuery;
    DsQFornec: TDataSource;
    TQFornecFOR_CODIGO: TStringField;
    TQFornecFOR_RAZAO: TStringField;
    TQFornecFOR_ENDERE: TStringField;
    TQFornecFOR_CIDADE: TStringField;
    TQFornecFOR_UF: TStringField;
    TQFornecFOR_CEP: TStringField;
    TQFornecFOR_CONTATO: TStringField;
    TQFornecFOR_FONE: TStringField;
    TQFornecFOR_FAX: TStringField;
    TQFornecFOR_EMAIL: TStringField;
    TQFornecFOR_FONCONT: TStringField;
    TQFornecFOR_FAXCONT: TStringField;
    TQFornecFOR_OBS: TStringField;
    TQFornecEMP_CODIGO: TStringField;
    TQFornecFOR_CGC: TStringField;
    TQFornecFOR_INSC: TStringField;
    TQFornecFOR_HOME: TStringField;
    TQFornecFOR_EMAILCONT: TStringField;
    TQFornecCCT_CODIGO: TStringField;
    TQClienteCLI_UF: TStringField;
    TQClienteCLI_INATIVO: TStringField;
    TQClienteCLI_DTINATIVO: TDateTimeField;
    TQClienteCLI_MOTIVO: TStringField;
    TQTransportTRP_FONE: TStringField;
    TQItemRecFIT_COMIS: TFloatField;
    TQItemRecFIT_DESCTO: TFloatField;
    TQProdutoPRD_DESCRI: TStringField;
    TQProdutoPRD_REFER: TStringField;
    TQProdutoPRD_CODIGO: TStringField;
    TQClienteCLI_ENDERE: TStringField;
    TQClienteCLI_CIDADE: TStringField;
    TQItemRecFIT_SUBSTIT: TFloatField;
    TQFornecFOR_PRAZOVENDAS: TStringField;
    TQReceParcFAT_CODIGO: TStringField;
    TQReceParcFPC_NUMER: TStringField;
    TQReceParcBAN_CODIGO: TStringField;
    TQReceParcREP_CODIGO: TStringField;
    TQReceParcFPC_DTEMIS: TDateTimeField;
    TQReceParcFPC_COBNUM: TStringField;
    TQReceParcFPC_COBTIPO: TStringField;
    TQReceParcFPC_STATUS: TStringField;
    TQReceParcFPC_DESCTO: TFloatField;
    TQReceParcFPC_DTDESC: TDateTimeField;
    TQReceParcFPC_VENCTO: TDateTimeField;
    TQReceParcFPC_PAGTO: TDateTimeField;
    TQReceParcFPC_VLPARC: TFloatField;
    TQReceParcFPC_VLPAGO: TFloatField;
    TQReceParcFPC_OBS: TStringField;
    TQReceParcFPC_SITPAG: TBooleanField;
    TQReceParcEMP_CODIGO: TStringField;
    TQReceParcCLI_CODIGO: TStringField;
    procedure TQItemRecCalcFields(DataSet: TDataSet);
    procedure DTBAdjutorLogin(Database: TDatabase; LoginParams: TStrings);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModQry: TDataModQry;

implementation

uses Rec0001;

{$R *.DFM}

procedure TDataModQry.TQItemRecCalcFields(DataSet: TDataSet);
begin
   TQItemRecFIT_TOTAL_CC.Value := (TQItemRecFIT_QTDE.Value*TQItemRecFIT_PRECO.Value);
end;

procedure TDataModQry.DTBAdjutorLogin(Database: TDatabase;
  LoginParams: TStrings);
begin
  //Inclusão aut. da senha do Banco de Dados
  LoginParams.Values['USER NAME'] := '';
  LoginParams.Values['PASSWORD'] := '';
end;

end.
