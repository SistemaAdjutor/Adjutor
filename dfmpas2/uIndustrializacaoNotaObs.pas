unit uIndustrializacaoNotaObs;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask, Data.FMTBcd, Data.DB, Data.SqlExpr, SgDbSeachComboUnit, JvExStdCtrls, JvEdit, JvValidateEdit;

type
  TfrmIndustrializacaoNotaObs = class(TForm)
    GroupBox1: TGroupBox;
    mmoObservacao: TMemo;
    Panel1: TPanel;
    BitConfirmar: TBitBtn;
    BitCancelar: TBitBtn;
    Panel2: TPanel;
    BtnConsulta: TBitBtn;
    Label1: TLabel;
    edCodigo: TMaskEdit;
    edNome: TSgDbSearchCombo;
    qCliente: TSQLQuery;
    Label2: TLabel;
    edPeso: TJvValidateEdit;
    procedure BitConfirmarClick(Sender: TObject);
    procedure BtnConsultaClick(Sender: TObject);
    procedure edCodigoExit(Sender: TObject);
    procedure edNomeSelect(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmIndustrializacaoNotaObs: TfrmIndustrializacaoNotaObs;

implementation

uses InicioDB, EnfIndustrializacao, PesquisaClientesForm, Uteis;

{$R *.dfm}

procedure TfrmIndustrializacaoNotaObs.BitConfirmarClick(Sender: TObject);
begin
  DBInicio.ExecSql(
    'UPDATE ENF0001 SET ' +
    ' ENF_OBS_INDUST =  ' + QuotedStr(mmoObservacao.Text) + ',' +
    ' CLI_CODIGO = ' + QuotedStr(edCodigo.Text) +
    ' , ENF_PESO_TOTAL = '+  FloatToSQL(edPeso.Value) +
    ' WHERE ENF_NOTANUMBER = ' + QuotedStr(FrmEnfIndustrializacao.SqlCdsEntradaNotaENF_NOTANUMBER.AsString) +
    ' AND FOR_CODIGO = ' + QuotedStr(FrmEnfIndustrializacao.SqlCdsEntradaNotaFOR_CODIGO.AsString)
  )
  ;
end;

procedure TfrmIndustrializacaoNotaObs.BtnConsultaClick(Sender: TObject);
var
  tcr: TFrmPesquisaClientes;
begin
  tcr:= TFrmPesquisaClientes.Create(self);
  try
    tcr.ShowModal;
    if tcr.ModalResult = mrok then
    begin
      edCodigo.Text := tcr.IDRetorno;
      edNome.Text := tcr.CdsBuscoCLI_RAZAO.AsString
    end;
  finally
    FreeAndNil(tcr);
  end;
end;

procedure TfrmIndustrializacaoNotaObs.edCodigoExit(Sender: TObject);
begin
  edCodigo.Text := strzero(edCodigo.Text, 5);
  edNome.idRetorno :=  edCodigo.Text;
end;

procedure TfrmIndustrializacaoNotaObs.edNomeSelect(Sender: TObject);
begin
  edCodigo.Text := edNome.idRetorno;

end;

end.
