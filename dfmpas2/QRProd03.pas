// Tabela de Preco
unit QRProd03;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, QRExport;

type
  TRelTabelaPreco = class(TQuickRep)
    QRBand1: TQRBand;
    LabelEmpresa: TQRLabel;
    TQProdutoQR: TQuery;
    QRBand2: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel12: TQRLabel;
    QRSysData2: TQRSysData;
    QRGroup2: TQRGroup;
    QRDBText10: TQRDBText;
    DSProdutoQR: TDataSource;
    TQIPIQR: TQuery;
    TQLinhaPro: TQuery;
    TQIPIQRIPI_ALIQ: TFloatField;
    TQLinhaProLIN_DESCRI: TStringField;
    TQProdutoQRPRD_REFER: TStringField;
    TQProdutoQRPRD_DESCRI: TStringField;
    TQProdutoQRPRD_COMPL: TStringField;
    TQProdutoQRPRD_PVENDA: TFloatField;
    TQProdutoQRPRD_PESOKg: TFloatField;
    TQProdutoQRPRD_EMBALA: TStringField;
    TQProdutoQRPRD_TABPRECO: TStringField;
    TQProdutoQRIPI_CODIGO: TStringField;
    TQIPIQRIPI_CODIGO: TStringField;
    TQLinhaProLIN_CODIGO: TStringField;
    QRBand3: TQRBand;
    QRDBText6: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel11: TQRLabel;
    LabelDataVigencia: TQRLabel;
    LabelEnd1: TQRLabel;
    QRDBText1: TQRDBText;
    TQProdutoQRLIN_DESCRI: TStringField;
    TQProdutoQRPrd_linhaLIN_CODIGO: TStringField;
    TQProdutoQRPRD0000LIN_CODIGO: TStringField;
    LabelEnd2: TQRLabel;
    LabelHome: TQRLabel;
    LabelEmail: TQRLabel;
    QRTextFilter1: TQRTextFilter;
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  RelTabelaPreco: TRelTabelaPreco;

implementation

{$R *.DFM}

uses Database, GImpProd, ADJ0001;

procedure TRelTabelaPreco.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
 var
  WCabecalho, WCabecalho02, wCabecalho3:string;
begin
 //Nome na empresa no topo do relatorio
   LabelEmpresa.Caption:= FormAdjutor.wEmp_Razao;
 //
 // LabelDataVigencia.Caption := FormGImpProduto.EditDatavigencia.DateText;
  //
  WITH Datamodulo do
  begin
  LabelEnd1.Caption := TbEmpresaEMP_ENDERE.Value+' -  Bairro :'+TbEmpresaEmp_Bairro.Value+' - Cidade :'+TbEmpresaEmp_Cidade.Value+' - '+TbEmpresaEmp_Uf.Value;
 // LabelEnd1.Caption := WCabecalho;
  //
  LabelEnd2.Caption := 'Cep:'+TbEmpresaEMP_CEP.Value+' - '+'Caixa Postal:'+TbEmpresaEMP_CXPOSTAL.Value+' - Fone :'+TbEmpresaEmp_Fone.Value;;
 // LabelEnd2.Caption := WCabecalho02;
 // wCabecalho3 := 'Home Page : '+ TbEmpresaEMP_HOME.Value+'  -  Email : '+TbEmpresaEMP_EMAIL.Value;
  LabelHome.Caption := 'Home Page : '+ TbEmpresaEMP_HOME.Value;
  LabelEmail.Caption := 'Email : '+TbEmpresaEMP_EMAIL.Value;
  end;


                          

end;

end.
