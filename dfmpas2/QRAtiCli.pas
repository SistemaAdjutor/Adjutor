unit QRAtiCli;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, QRExport;

type
  TRelAtividadeCliente = class(TQuickRep)
    QRBand1: TQRBand;
    LabelEmpresa: TQRLabel;
    QRLabel2: TQRLabel;
    QRBand2: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel3: TQRLabel;
    QRBand3: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRSysData1: TQRSysData;
    QRLabel6: TQRLabel;
    QRSysData2: TQRSysData;
    QRTextFilter1: TQRTextFilter;
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  RelAtividadeCliente: TRelAtividadeCliente;

implementation

uses ADJ0001, Database;

{$R *.DFM}






procedure TRelAtividadeCliente.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
   //Nome na empresa no topo do relatorio
    LabelEmpresa.Caption:= FormAdjutor.WEmp_Fantasia;
end;

end.
