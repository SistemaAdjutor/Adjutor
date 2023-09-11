unit QrIntg01;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, QRExport;

type
  TRelIntCel = class(TQuickRep)
    QrIntegrantes: TQuery;
    QrIntegrantesCCP_CODIGO: TStringField;
    QrIntegrantesCCP_NOME: TStringField;
    QrIntegrantesCCP_FUNCAO: TStringField;
    QrIntegrantesCCP_TUPDIARIO: TFloatField;
    QrIntegrantesCel_cp01CEL_CODIGO: TStringField;
    QrIntegrantesCel0000CEL_CODIGO: TStringField;
    QrIntegrantesCEL_NOME: TStringField;
    Bnd_Titulo: TQRBand;
    Bnd_Grupo: TQRGroup;
    QRLabel13: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel14: TQRLabel;
    QRDBText10: TQRDBText;
    Bnd_Footer: TQRBand;
    QRLabel15: TQRLabel;
    Bnd_Detalhes: TQRBand;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText1: TQRDBText;
    QRExpr1: TQRExpr;
    QRBand1: TQRBand;
    QRLabel18: TQRLabel;
    QRExpr2: TQRExpr;
    Lb_Empresa: TQRLabel;
    LTitulo2: TQRLabel;
    QRBand2: TQRBand;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel1: TQRLabel;
    QRSysData2: TQRSysData;
    QRSysData1: TQRSysData;
    QRTextFilter1: TQRTextFilter;
    procedure Bnd_TituloBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  RelIntCel: TRelIntCel;

implementation

uses ADJ0001;



{$R *.DFM}

procedure TRelIntCel.Bnd_TituloBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
//Nome na empresa no topo do relatorio
Lb_Empresa.Caption := FormAdjutor.wEmp_Razao;
end;

end.
