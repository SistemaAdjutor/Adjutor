unit RBanc01;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Provider, SqlExpr,SqlClientDataSet, DB, DBClient, DBLocal, DBLocalS, ppProd,
  ppClass, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppCtrls, ppVar,
  ppPrnabl, ppBands, ppCache;

type
  TRBRelBanco01 = class(TForm)
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    SqlCdsRelBanc01: TSQLClientDataSet;
    SqlCdsRelBanc01BAN_CODIGO: TStringField;
    SqlCdsRelBanc01BAN_APELIDO: TStringField;
    SqlCdsRelBanc01BAN_FONE: TStringField;
    SqlCdsRelBanc01BAN_CONTATO: TStringField;
    DsRBRelBanc01: TDataSource;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppTitleBand1: TppTitleBand;
    LabelEmpresa: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppLine1: TppLine;
    ppLabel7: TppLabel;
    procedure ppTitleBand1BeforePrint(Sender: tObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RBRelBanco01: TRBRelBanco01;

implementation

{$R *.dfm}
Uses DataCad,DmProdu, ADJ0001;

procedure TRBRelBanco01.ppTitleBand1BeforePrint(Sender: tObject);
begin
    LabelEmpresa.Caption:= FormAdjutor.wEmp_Razao;
end;

end.
