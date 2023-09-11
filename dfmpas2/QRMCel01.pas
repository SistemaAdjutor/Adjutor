unit QRMCel01;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, QRExport;

type
  TRelMovCelulas = class(TQuickRep)
    QRBand1: TQRBand;
    LabelEmpresa: TQRLabel;
    QRLabel6: TQRLabel;       
    QRSysData2: TQRSysData;
    QRSysData1: TQRSysData;
    QRBand2: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRGroup1: TQRGroup;
    BanResumida: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRExpr1: TQRExpr;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRExpr8: TQRExpr;
    QRLabel9: TQRLabel;
    BanDetailhada: TQRBand;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLb_Intervalo: TQRLabel;
    QRLabel13: TQRLabel;
    QRLb_Celula: TQRLabel;
    QRExpr3: TQRExpr;
    QRExpr6: TQRExpr;
    QRExpr4: TQRExpr;
    TqRel: TQuery;
    TqRelCME_CODIGO: TStringField;
    TqRelCTP_REALIZADO: TFloatField;
    TqRelCTP_PREVISTO: TFloatField;
    TqRelCTP_DIFERENCA: TFloatField;
    TqRelCTP_DIASUTEIS: TFloatField;
    TqRelCTP_PERC_REALI: TFloatField;
    TqRelCTP_COMISSAO: TFloatField;
    TqRelCTP_FATURAMENTO: TFloatField;
    TqRelCTP_TUPDIA: TFloatField;
    TqRelCTP_TUPFATUR: TFloatField;
    TqRelCEL_CODIGO: TStringField;
    TqRelCEL_NOME: TStringField;
    QRExpr7: TQRExpr;
    QRLabel15: TQRLabel;
    QRExpr13: TQRExpr;
    QRExpr15: TQRExpr;
    QRLabel16: TQRLabel;
    QRExpr5: TQRExpr;
    QRLabel14: TQRLabel;
    QRBand3: TQRBand;
    QRLabel17: TQRLabel;
    QRBand4: TQRBand;
    QRLabel18: TQRLabel;
    QRExpr14: TQRExpr;
    QRExpr17: TQRExpr;
    QRExpr18: TQRExpr;
    QRExpr19: TQRExpr;
    QRExpr20: TQRExpr;
    QRExpr21: TQRExpr;
    QRLabel10: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel49: TQRLabel;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    QRLabel52: TQRLabel;
    QRExpr2: TQRExpr;
    QRTextFilter1: TQRTextFilter;
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  RelMovCelulas: TRelMovCelulas;

implementation                                                           

uses ADJ0001, CEL0008, RWFunc, GImpCel, Men0001;

{$R *.DFM}





procedure TRelMovCelulas.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
//mês
//QRLb_Intervalo.Caption := (FormGImpCel.DbLk_MesInicial.Text+' de '+FormGImpCel.Cb_Ano_Inicial.Text);
//célula
QRLb_Celula.Caption := FormGImpCel.CbCelulas.Text;
//Nome na empresa no topo do relatorio
LabelEmpresa.Caption:=dbInicio.Empresa.Razao;
end;

end.

