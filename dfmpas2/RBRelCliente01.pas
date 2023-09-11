unit RBRelCliente01;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppDB, ppCtrls, ppVar, ppPrnabl, ppClass, ppBands, ppCache,
  ppProd, ppReport, ppComm, ppRelatv, ppDBPipe;

type
  TRelRBCliente01 = class(TForm)
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLine1: TppLine;
    LABEL_EMPRESA: TppLabel;
    LTITULO1: TppLabel;
    LTITULO2: TppLabel;
    ppLine2: TppLine;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLine3: TppLine;
    ppLabel5: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppDetailBand1: TppDetailBand;
    ppDBText3: TppDBText;
    ppLabel6: TppLabel;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText4: TppDBText;
    ppLabel7: TppLabel;
    ppDBText9: TppDBText;
    ppLabel8: TppLabel;
    ppDBText10: TppDBText;
    ppLabel9: TppLabel;
    ppLine4: TppLine;
    ppDBText8: TppDBText;
    ppDBText11: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLabel10: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    procedure ppHeaderBand1BeforePrint(Sender: tObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RelRBCliente01: TRelRBCliente01;

implementation

{$R *.dfm}

Uses adj0001,GImpClie;

procedure TRelRBCliente01.ppHeaderBand1BeforePrint(Sender: tObject);
begin
  LABEL_EMPRESA.Caption :=FormAdjutor.wEmp_Razao;
end;

end.
