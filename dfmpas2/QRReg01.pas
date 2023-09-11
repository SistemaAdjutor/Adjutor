unit QRReg01;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, QRExport;

type
  TRelRegiao01 = class(TQuickRep)
    QRBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    LTitulo1: TQRLabel;
    QRBand2: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRBand3: TQRBand;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel4: TQRLabel;
    LabelEmpresa: TQRLabel;
    QRTextFilter1: TQRTextFilter;
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  RelRegiao01: TRelRegiao01;

implementation

{$R *.DFM}

uses Database,ADJ0001;




procedure TRelRegiao01.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
 //Nome na empresa no topo do relatorio
    LabelEmpresa.Caption:=FormAdjutor.WEmp_Razao;
end;

end.
