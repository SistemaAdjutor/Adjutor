unit uIndustrializacao_SitObs;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, SqlExpr,SqlClientDataSet, Provider, DB, DBClient, DBLocal, DBLocalS,
  IndTipoRetorno, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  Data.DBXFirebird, SimpleDS, JvExStdCtrls, JvEdit, JvValidateEdit;

type
  TFrmIndSitObs = class(TForm)
    GroupBox2: TGroupBox;
    SpeedButton2: TSpeedButton;
    cxLookupComboBox1: TcxLookupComboBox;
    BitCancelar: TBitBtn;
    BitConfirmar: TBitBtn;
    GroupBox1: TGroupBox;
    mmoObservacao: TMemo;
    DsTipoRetorno: TDataSource;
    CdsTipoRetorno: TSQLClientDataSet;
    CdsTipoRetornoITT_REGISTRO: TIntegerField;
    CdsTipoRetornoEMP_CODIDO: TStringField;
    CdsTipoRetornoITT_DESCRICAO: TStringField;
    procedure BitCancelarClick(Sender: TObject);
    procedure BitConfirmarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    iRegistroNotaItem,
    iRegistroSituacao:Integer;
    sObservacao:WideString;
  end;

var
  FrmIndSitObs: TFrmIndSitObs;


implementation

uses DataCad, Uteis;

{$R *.dfm}

procedure TFrmIndSitObs.BitCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmIndSitObs.BitConfirmarClick(Sender: TObject);

begin
  iRegistroSituacao := 0;
  if (CdsTipoRetorno.Locate('ITT_REGISTRO',cxLookupComboBox1.EditValue,[])) then
    iRegistroSituacao := CdsTipoRetornoITT_REGISTRO.AsInteger;


  DataCadastros.SqlUpdate2.Close;
  DataCadastros.SqlUpdate2.Sql.Text := 'UPDATE ENF_IT01 '+
                                          ' SET ITT_REGISTRO = '+IntToStr(iRegistroSituacao)+
                                          ' , ENF_OBS_INDUSTRIALIZACAO = '+QuotedStr(mmoObservacao.Text)+
                                          ' WHERE ENF_REGISTRO = '+IntToStr(iRegistroNotaItem);
  DataCadastros.SqlUpdate2.ExecSql;
  Close;
end;

procedure TFrmIndSitObs.FormShow(Sender: TObject);
begin
  CdsTipoRetorno.Open;
  cxLookupComboBox1.EditValue := iRegistroSituacao;
  mmoObservacao.Text := sObservacao;
end;

procedure TFrmIndSitObs.SpeedButton2Click(Sender: TObject);
begin
  try
    FrmCadastroTipoRetorno := TFrmCadastroTipoRetorno.Create(Application);
    FrmCadastroTipoRetorno.ShowModal;
  finally
    FrmCadastroTipoRetorno.Destroy;
    FrmCadastroTipoRetorno := nil;
  end;
  CdsTipoRetorno.Refresh;
end;

procedure TFrmIndSitObs.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  CdsTipoRetorno.Close;
end;

end.
