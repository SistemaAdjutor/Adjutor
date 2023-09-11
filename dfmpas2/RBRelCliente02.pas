unit RBRelCliente02;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppProd, ppClass, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe,
  ppCtrls, ppVar, ppPrnabl, ppBands, ppCache;

type
  TRelRBCliente02 = class(TForm)
    ppDB02: TppDBPipeline;
    ppReport02: TppReport;
    pp02HeaderBand1: TppHeaderBand;
    pp02DetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    pp02SummaryBand1: TppSummaryBand;
    ppLabel10: TppLabel;
    ppDBCalc1: TppDBCalc;
    LABEL_EMPRESA: TppLabel;
    LTITULO1: TppLabel;
    LTITULO2: TppLabel;
    ppGroup1: TppGroup;
    pp02GroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppGroup2: TppGroup;
    pp02GroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppLabel9: TppLabel;
    ppDBText9: TppDBText;
    ppLabel11: TppLabel;
    ppDBText10: TppDBText;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppLine7: TppLine;
    ppLine4: TppLine;
    procedure pp02HeaderBand1BeforePrint(Sender: tObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RelRBCliente02: TRelRBCliente02;

implementation

{$R *.dfm}

Uses adj0001, GImpClie;

procedure TRelRBCliente02.pp02HeaderBand1BeforePrint(Sender: tObject);
begin
  LABEL_EMPRESA.Caption :=FormAdjutor.wEmp_Razao;
end;

end.
