unit QRCli001;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, QRExport;

type
  TRelClie40 = class(TQuickRep)
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    LabelEmpresa: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRGroup1: TQRGroup;
    QRLabel9: TQRLabel;
    QRDBText1: TQRDBText;
    QRBand3: TQRBand;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRTextFilter1: TQRTextFilter;
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  RelClie40: TRelClie40;

implementation

{$R *.DFM}

uses Database, ADJ0001;

procedure TRelClie40.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
 //Nome da empresa no topo do relatorio
  LabelEmpresa.Caption:=FormAdjutor.WEmp_Fantasia;
end;


end.
