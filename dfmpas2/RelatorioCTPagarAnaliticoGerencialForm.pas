unit RelatorioCTPagarAnaliticoGerencialForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseReportForm, Data.DBXInterBase, GImpPaga,
  Data.FMTBCd, RLFilters, RLPDFFilter, Datasnap.DBClient, Datasnap.Provider,
  Data.DB, Data.SqlExpr, ACBrBase, ACBrCalculadora, Vcl.ExtCtrls, RLReport;

type
  TFrmRelatorioCTPagarAnaliticoGerencial = class(TfrmBaseReport)
    RLBand2: TRLBand;
    RLBand3: TRLBand;
    RLMemo1: TRLMemo;
    RLMemo2: TRLMemo;
    RLMemo3: TRLMemo;
    RLMemo4: TRLMemo;
    RLMemo5: TRLMemo;
    RLMemo6: TRLMemo;
    RLMemo7: TRLMemo;
    RLMemo8: TRLMemo;
    RLMemo9: TRLMemo;
    RLMemo10: TRLMemo;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText11: TRLDBText;
    DsPag00: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelatorioCTPagarAnaliticoGerencial: TFrmRelatorioCTPagarAnaliticoGerencial;

implementation

{$R *.dfm}

end.
