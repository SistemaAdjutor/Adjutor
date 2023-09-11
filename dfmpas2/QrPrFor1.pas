{************************************************************************
| Programa...:  QrprFor1 - Nome formulario = RelProdFornece
| Objetivo...:  Relátorio de Produtos por Fornecedores
| Analista...:  Marcio Neu Pacheco
| Programador:  Jackson
|
| Comentários:
|
| Criação..........: Abr/2002
| Ultima Alteração.: Abr/2002
| Alterado por.....: Jackson
*************************************************************************}
unit QrPrFor1;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, QRExport;

type
  TRelProdFornece = class(TQuickRep)
    QrProdForn: TQuery;
    QRBand1: TQRBand;
    Lb_Empresa: TQRLabel;
    QRLabel2: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRLabel1: TQRLabel;
    QRBand2: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRGroup1: TQRGroup;
    QRDBText1: TQRDBText;
    QRBandDados: TQRBand;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QrFornec: TQuery;
    QrFornecFOR_CODIGO: TStringField;
    QrFornecFOR_RAZAO: TStringField;
    QrFornecFOR_CIDADE: TStringField;
    QrFornecFOR_UF: TStringField;
    QrFornecFOR_CONTATO: TStringField;
    QrFornecFOR_FONE: TStringField;
    QrFornecFOR_FAX: TStringField;
    QrFornecFOR_EMAIL: TStringField;
    QRLabel10: TQRLabel;
    QRLabel4: TQRLabel;
    DsQrProdForn: TDataSource;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    Db_FOR_RAZAO: TQRDBText;
    QrProdFornPrd0000PRD_REFER: TStringField;
    QrProdFornPRD_DESCRI: TStringField;
    QrProdFornFOR_CODIGO: TStringField;
    QrProdFornFor_prodPRD_REFER: TStringField;
    QrProdFornEMP_CODIGO: TStringField;
    QrProdFornPGR_CODIGO: TStringField;
    QrProdFornPTI_CODIGO: TStringField;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    Lb_Tipo: TQRLabel;
    Lb_Grupo: TQRLabel;
    CIDADE: TQRLabel;
    Lb_Forn: TQRLabel;
    QRTextFilter1: TQRTextFilter;
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  RelProdFornece: TRelProdFornece;

implementation

uses ADJ0001, GImpProd;

{$R *.DFM}

procedure TRelProdFornece.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
{dados dos labels do relatorio}
Lb_Empresa.Caption := FormAdjutor.wEmp_Razao;
Lb_Tipo.Caption    := FormGImpProduto.EditTipo.Text;
Lb_Grupo.Caption   := FormGImpProduto.EditGrupo.Text;
end;

end.
