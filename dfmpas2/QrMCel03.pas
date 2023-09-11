unit QrMCel03;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, QRExport;

type
  TRelComissCel = class(TQuickRep)
    QRBand1: TQRBand;
    QRGroup1: TQRGroup;
    BanResumida: TQRBand;
    BanDetailhada: TQRBand;
    QRBand4: TQRBand;
    LabelEmpresa: TQRLabel;
    QRLabel6: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLb_Intervalo: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText11: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel1: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText12: TQRDBText;
    QRLabel4: TQRLabel;
    QRExpr1: TQRExpr;
    QRLabel5: TQRLabel;
    QRExpr2: TQRExpr;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText13: TQRDBText;
    QRExpr3: TQRExpr;
    QRExpr6: TQRExpr;
    QRLabel10: TQRLabel;
    QRSysData2: TQRSysData;
    QRLabel9: TQRLabel;
    QRDBText1: TQRDBText;
    QRExpr4: TQRExpr;
    QRLabel14: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRExpr5: TQRExpr;
    QRExpr7: TQRExpr;
    QRLabel13: TQRLabel;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    TqComiss: TQuery;
    TqComissCel_tmp05CME_CODIGO: TStringField;
    TqComissCTP_REALIZADO: TFloatField;
    TqComissCTP_PREVISTO: TFloatField;
    TqComissCTP_DIFERENCA: TFloatField;
    TqComissCTP_DIASUTEIS: TFloatField;
    TqComissCTP_PERC_REALI: TFloatField;
    TqComissCTP_COMISSAO: TFloatField;
    TqComissCTP_FATURAMENTO: TFloatField;
    TqComissCTP_TUPDIA: TFloatField;
    TqComissCTP_TUPFATUR: TFloatField;
    TqComissCel_tmp05CEL_CODIGO: TStringField;
    TqComissCEL_NOME: TStringField;
    TqComissCME_TOT_DIAS_COMP: TFloatField;
    TqComissCel_mtc04CME_CODIGO: TStringField;
    TqComissCel_mtc04CCP_CODIGO: TStringField;
    TqComissCel_mtc04CEL_CODIGO: TStringField;
    TqComissMEC_TUPDIARIO: TFloatField;
    TqComissMEC_DIAS: TFloatField;
    TqComissCel_cp01CCP_CODIGO: TStringField;
    TqComissCCP_NOME: TStringField;
    TqComissCCP_FUNCAO: TStringField;
    TqComissCCP_TUPDIARIO: TFloatField;
    TqComissCel_cp01CEL_CODIGO: TStringField;
    QRTextFilter1: TQRTextFilter;
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  RelComissCel: TRelComissCel;

implementation

uses CEL0008, ADJ0001, GImpCel, Men0001;

{$R *.DFM}

procedure TRelComissCel.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
//mês
//QRLb_Intervalo.Caption := (FormGImpCel.DbLk_MesInicial.Text+' de '+FormGImpCel.Cb_Ano_Inicial.Text);
//Nome na empresa no topo do relatorio
LabelEmpresa.Caption:=dbInicio.Empresa.Razao;
end;

end.
