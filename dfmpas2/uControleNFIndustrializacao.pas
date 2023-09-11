unit uControleNFIndustrializacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBForm, Data.DBXFirebird, Data.FMTBcd, Data.DB, Data.SqlExpr, ACBrEnterTab, ACBrBase, ACBrCalculadora, Datasnap.DBClient, Datasnap.Provider, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons;

type
  TfrmControleNFIndustrializacao = class(TfrmBaseDB)
    grdControleNFIndustrializacao: TDBGrid;
    dspqAux: TDataSetProvider;
    cdsqAux: TClientDataSet;
    dsqAux: TDataSource;
    btYes: TBitBtn;
    cdsqAuxNF_NOTANUMBER: TStringField;
    cdsqAuxCLI_RAZAO: TStringField;
    cdsqAuxNF_SAIDA: TDateField;
    cdsqAuxNF_HORASAIDA: TTimeField;
    cdsqAuxOPE_NATUREZA: TStringField;
    cdsqAuxPED_CODIGO: TStringField;
    cdsqAuxNF_TOT_NOTA: TFMTBCDField;
    procedure FormShow(Sender: TObject);
    procedure grdControleNFIndustrializacaoDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmControleNFIndustrializacao: TfrmControleNFIndustrializacao;

implementation

{$R *.dfm}

uses Nfs0001;

procedure TfrmControleNFIndustrializacao.FormShow(Sender: TObject);
begin
  inherited;
  cdsqAux.Close;
  OpenAux(
    ' SELECT nf.NF_NOTANUMBER, cl.CLI_RAZAO, nf.NF_SAIDA, nf.NF_HORASAIDA, ' +
    ' nf.OPE_NATUREZA, nf.PED_CODIGO, nf.NF_TOT_NOTA ' +
    'FROM NF0001 nf ' +
    ' JOIN CLI0000 cl ON (cl.CLI_CODIGO  = nf.CLI_CODIGO) ' +
    ' WHERE cl.CLI_CGC = ' + QuotedStr(FormNfEntrada.CNPJEmitente)
  );
  cdsqAux.Open;
end;

procedure TfrmControleNFIndustrializacao.grdControleNFIndustrializacaoDblClick(Sender: TObject);
begin
  inherited;
  if MessageDlg('Confirma a Vinculação da Nota Fiscal: ' + cdsqAux.FieldByName('NF_NOTANUMBER').AsString + '?', mtWarning, [mbYes, mbNo], 0) = mrYes then
    btYes.Click;
end;

end.
