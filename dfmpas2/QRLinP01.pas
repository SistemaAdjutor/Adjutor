unit QRLinP01;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, QRExport;

type
  TRelLinhaProduto01 = class(TQuickRep)
    QRBand1: TQRBand;
    LTitulo1: TQRLabel;
    QRBand2: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRBand3: TQRBand;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRLabel4: TQRLabel;
    LabelEmpresa: TQRLabel;
    QRTextFilter1: TQRTextFilter;
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  RelLinhaProduto01: TRelLinhaProduto01;

implementation

{$R *.DFM}

uses Database,ADJ0001;

procedure TRelLinhaProduto01.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
 //Nome na empresa no topo do relatorio
    LabelEmpresa.Caption:=FormAdjutor.wEmp_Razao;
end;

end.
