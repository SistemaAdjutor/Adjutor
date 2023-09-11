unit RBRelCliente03;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppBands, ppCtrls, ppVar, ppPrnabl, ppClass, ppDB, ppCache,
  ppProd, ppReport, ppComm, ppRelatv, ppDBPipe;

type
  TRelRBCliente03 = class(TForm)
    ppDB03: TppDBPipeline;
    ppReport03: TppReport;
    pp03HeaderBand1: TppHeaderBand;
    pp03DetailBand1: TppDetailBand;
    ppLine1: TppLine;
    LBL_03_EMPRESA: TppLabel;
    LBL_03_LTITULO1: TppLabel;
    LBL_03_TITULO2: TppLabel;
    ppLine2: TppLine;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLine3: TppLine;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBCalc1: TppDBCalc;
    ppLabel10: TppLabel;
    ppLine4: TppLine;
    pp03SummaryBand1: TppSummaryBand;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RelRBCliente03: TRelRBCliente03;

implementation

{$R *.dfm}

Uses adj0001,GImpClie;

end.
