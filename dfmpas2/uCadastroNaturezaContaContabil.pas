unit uCadastroNaturezaContaContabil;


interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Mask, DBCtrls, ExtCtrls, Db,  rxToolEdit,
  RXDBCtrl, Provider, SqlExpr, ppProd, ppClass, ppReport, ppComm, ppRelatv,
  ppDB, ppDBPipe, DBClient, DBLocal, DBLocalS, ppModule, raCodMod, ppCtrls,
  ppBands, ppVar, ppPrnabl, ppCache, Grids, DBGrids, Vcl.ComCtrls, JvExMask, JvToolEdit, JvDBControls, Data.FMTBcd, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  cxDBEdit, cxTextEdit, cxMaskEdit, cxSpinEdit;

type
  TFrmCadastroNaturezaContaContabil = class(TForm)
    Label1: TLabel;
    DBNavigator1: TDBNavigator;
    Panel2: TPanel;
    Panel1: TPanel;
    Bit_Sair: TBitBtn;
    Bit_Cancelar: TBitBtn;
    Bit_Excluir: TBitBtn;
    Bit_Gravar: TBitBtn;
    Bit_novo: TBitBtn;
    Label3: TLabel;
    GroupBox1: TGroupBox;
    dbgrdCentros: TDBGrid;
    ProgressBar1: TProgressBar;
    qNCC: TSQLQuery;
    dspNCC: TDataSetProvider;
    cdsNCC: TClientDataSet;
    dsNCC: TDataSource;
    cdsNCCNCC_CODIGO: TIntegerField;
    cdsNCCNCC_DESCRICAO: TStringField;
    Label2: TLabel;
    edNccCodigo: TcxDBSpinEdit;
    edNccDescricao: TcxDBTextEdit;
    procedure FormShow(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure Bit_SairClick(Sender: tObject);
    procedure Habilitabotoes;
    procedure Desabilitabotoes;
    procedure Bit_novoClick(Sender: TObject);
    procedure Bit_ExcluirClick(Sender: TObject);
    procedure Bit_GravarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edNccCodigoExit(Sender: TObject);
  private
    { Private declarations }
          {campos}
    CampoEdit    :TEdit;
    CampoDBEdit  :TDBEdit;
    CampoData    :TDBDateEdit;
  public
    { Public declarations }
  end;

var
  FrmCadastroNaturezaContaContabil: TFrmCadastroNaturezaContaContabil;

implementation

uses Uteis, DataCad, RWFunc, DataCad1, Men0001, uPlanoContasCentroCusto, ufrmpreviewrb, iniciodb;

{$R *.DFM}





procedure TFrmCadastroNaturezaContaContabil.FormShow(Sender: tObject);
begin
  cdsNCC.Open;
end;

procedure TFrmCadastroNaturezaContaContabil.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
    Action := caFree;
    FrmCadastroNaturezaContaContabil := nil;
end;

procedure TFrmCadastroNaturezaContaContabil.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
    Close;
end;

procedure TFrmCadastroNaturezaContaContabil.HabilitaBotoes;
begin
    Bit_novo.Enabled      := True;
    Bit_Excluir.Enabled   := True;
    Bit_Sair.Visible      := True;
    Bit_Gravar.Enabled    := False;
    Bit_Cancelar.Visible  := False;
    DbNavigator1.Enabled  := True;
end;

procedure TFrmCadastroNaturezaContaContabil.DesabilitaBotoes;
begin
    Bit_novo.Enabled      := False;
    Bit_Excluir.Enabled   := False;
    Bit_Sair.Visible      := False;
    Bit_Gravar.Enabled    := True;
    Bit_Cancelar.Visible  := True;
    DbNavigator1.Enabled  := False;
end;

procedure TFrmCadastroNaturezaContaContabil.edNccCodigoExit(Sender: TObject);
begin
  if FrmCadastroNaturezaContaContabil = nil then
    Exit;
  if DBInicio.BuscaUmDadoSqlAsInteger('SELECT NCC_CODIGO FROM NATUREZA_CONTA_CONTABIL WHERE NCC_CODIGO = ' + cdsNCCNCC_CODIGO.AsString) > 0 then
  begin
    MessageDlg('Este código já se encontra em uso', mtWarning, [mbOk], 0);
    edNccCodigo.SetFocus;
  end;
end;

procedure TFrmCadastroNaturezaContaContabil.Bit_ExcluirClick(Sender: TObject);
begin
  if MessageDlg('Confirma Exclusão do Registro?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    cdsNCC.Delete;
    cdsNCC.ApplyUpdates(0);
  end;
end;

procedure TFrmCadastroNaturezaContaContabil.Bit_GravarClick(Sender: TObject);
begin
  if cdsNCCNCC_CODIGO.AsInteger = 0 then
  begin
    MessageDlg('Campo Código necessita ter um valor', mtWarning, [mbOk], 0);
    edNccCodigo.SetFocus;
    Exit;
  end;
  cdsNCC.Post;
  cdsNCC.ApplyUpdates(0);
  Habilitabotoes;
end;

procedure TFrmCadastroNaturezaContaContabil.Bit_novoClick(Sender: TObject);
begin
  cdsNCC.Insert;
  edNccCodigo.SetFocus;
  Desabilitabotoes
end;

procedure TFrmCadastroNaturezaContaContabil.Bit_SairClick(Sender: tObject);
begin
  Close;
end;

end.
