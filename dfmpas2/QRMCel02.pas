unit QRMCel02;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, QRExport;

type
  TRelCelDiario = class(TQuickRep)
    QRBand1: TQRBand;
    LabelEmpresa: TQRLabel;
    QRLabel6: TQRLabel;
    QRSysData2: TQRSysData;
    QRSysData1: TQRSysData;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLb_Intervalo: TQRLabel;
    QRBand2: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRGroup1: TQRGroup;
    BanDetailhada: TQRBand;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText6: TQRDBText;
    QRExpr2: TQRExpr;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    TQMovCelulas: TQuery;
    QRLabel2: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    BanResumida: TQRBand;
    QRDBText1: TQRDBText;
    QRLabel8: TQRLabel;
    QRLabel13: TQRLabel;
    QRDBText2: TQRDBText;
    QRExpr1: TQRExpr;
    QRExpr3: TQRExpr;
    TQMovCelulasOSV_CODIGO: TStringField;
    TQMovCelulasCel_mov03CEL_CODIGO: TStringField;
    TQMovCelulasPRD_REFER: TStringField;
    TQMovCelulasCel_mov03CME_CODIGO: TStringField;
    TQMovCelulasOSV_EMISSAO: TDateTimeField;
    TQMovCelulasOSV_QTDE: TFloatField;
    TQMovCelulasPED_CODIGO: TStringField;
    TQMovCelulasCEM_DTENTROU: TDateTimeField;
    TQMovCelulasCEM_DTCONCLUIU: TDateTimeField;
    TQMovCelulasCEM_PRECOUNIT: TFloatField;
    TQMovCelulasCEM_TUPUNIT: TFloatField;
    TQMovCelulasCEM_CELAUX: TBooleanField;
    TQMovCelulasCEM_TRABALHO: TStringField;
    TQMovCelulasCEM_TUPTRAB: TFloatField;
    TQMovCelulasCel_me02CME_CODIGO: TStringField;
    TQMovCelulasCME_DIASUTEIS: TFloatField;
    TQMovCelulasCME_TUPMETAMES: TFloatField;
    TQMovCelulasCME_TUPACRECENT: TFloatField;
    TQMovCelulasCME_TUPNEGATIVO: TFloatField;
    TQMovCelulasCel_me02CEL_CODIGO: TStringField;
    TQMovCelulasCME_TUPREALIZADO: TFloatField;
    TQMovCelulasCME_FATURAMENTO: TFloatField;
    TQMovCelulasCME_PERCPATICIPA: TFloatField;
    TQMovCelulasCel0000CEL_CODIGO: TStringField;
    TQMovCelulasCEL_NOME: TStringField;
    TQMovCelulasVCT_TUP: TFloatField;
    QRDBText5: TQRDBText;
    TQMovCelulasCEM_SITUACAO: TStringField;
    QRDBText10: TQRDBText;
    QRExpr4: TQRExpr;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRExpr5: TQRExpr;
    QRBand3: TQRBand;
    QRExpr6: TQRExpr;
    QRExpr7: TQRExpr;
    QRExpr8: TQRExpr;
    QRLabel14: TQRLabel;
    TQProduto: TQuery;
    DsQMovCelulas: TDataSource;
    TQProdutoPRD_DESCRI: TStringField;
    TQProdutoPRD_REFER: TStringField;
    QRDBText11: TQRDBText;
    QRLabel15: TQRLabel;
    QRTextFilter1: TQRTextFilter;
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  RelCelDiario: TRelCelDiario;

implementation

uses CEL0008, ADJ0001, GImpCel, Men0001;

{$R *.DFM}

procedure TRelCelDiario.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
//periodo
//QRLb_Intervalo.Caption := (FormGImpCel.DbLk_MesInicial.Text+' de '+FormGImpCel.Cb_Ano_Inicial.Text)+' a  '+(FormGImpCel.DbLk_Mesfinal.Text+' de '+FormGImpCel.Cb_Ano_Final.Text);
//Nome na empresa no topo do relatorio
LabelEmpresa.Caption:=dbInicio.Empresa.Razao;
end;

end.
