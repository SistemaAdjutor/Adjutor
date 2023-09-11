unit QRBanSal;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, QRExport;

type
  TRelSaldoBancario01 = class(TQuickRep)
    QRBand1: TQRBand;
    LabelEmpresa: TQRLabel;
    QRLabel1: TQRLabel;
    QRBand2: TQRBand;
    TbSaldoBancarioQR: TTable;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRBand3: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    TbSaldoBancarioQRSAB_CODIGO: TStringField;
    TbSaldoBancarioQRBAN_CODIGO: TStringField;
    TbSaldoBancarioQRSAB_DIA: TDateTimeField;
    TbSaldoBancarioQRSAB_SALDO: TFloatField;
    TbSaldoBancarioQRSAB_BLOQUEADO: TFloatField;
    TbSaldoBancarioQRSAB_APLICADO: TFloatField;
    TbSaldoBancarioQRSAB_TIPOAPL: TStringField;
    TbSaldoBancarioQRSAB_OBS: TStringField;
    TbBancoQR: TTable;
    DsSaldoBancario: TDataSource;
    QRLabel10: TQRLabel;
    QRSysData2: TQRSysData;
    QRSysData1: TQRSysData;
    QRTextFilter1: TQRTextFilter;
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  RelSaldoBancario01: TRelSaldoBancario01;

implementation

{$R *.DFM}

uses Database,ADJ0001;

procedure TRelSaldoBancario01.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
   //Nome na empresa no topo do relatorio
    LabelEmpresa.Caption:= FormAdjutor.wEmp_Razao;
end;

end.
