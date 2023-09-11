unit uVinculacaoIndustrializacaoRetornoVincula;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, SqlExpr,SqlClientDataSet, Provider, cxControls, cxContainer,
  cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, DB, DBClient, DBLocal, DBLocalS,
  Mask,  rxToolEdit,  rxCurrEdit, IndTipoRetorno, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Data.DBXFirebird, SimpleDS;

type
  TFrmVinculacaoIndustrializacaoRetornoVincula = class(TForm)
    GroupBox1: TGroupBox;
    BitCancelar: TBitBtn;
    BitConfirmar: TBitBtn;
    GroupBox2: TGroupBox;
    CurQuantidade: TCurrencyEdit;
    DsTipoRetorno: TDataSource;
    CdsTipoRetorno: TSQLClientDataSet;
    cxLookupComboBox1: TcxLookupComboBox;
    SpeedButton2: TSpeedButton;
    CdsTipoRetornoITT_REGISTRO: TIntegerField;
    CdsTipoRetornoEMP_CODIDO: TStringField;
    CdsTipoRetornoITT_DESCRICAO: TStringField;
    procedure BitCancelarClick(Sender: tObject);
    procedure SpeedButton2Click(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure BitConfirmarClick(Sender: tObject);
  private

         vItt_Registro: Integer;
         vItt_Descricao: String ;
         vQtdRetornar: Extended;

  public

        Property Itt_Registro: Integer Read vItt_Registro Write vItt_Registro;
        Property Itt_Descricao: String  Read vItt_Descricao Write vItt_Descricao;
        Property QtdRetornar: Extended Read vQtdRetornar Write vQtdRetornar;

  end;

var
  FrmVinculacaoIndustrializacaoRetornoVincula: TFrmVinculacaoIndustrializacaoRetornoVincula;

implementation

uses uteis, iniciodb;

{$R *.dfm}

procedure TFrmVinculacaoIndustrializacaoRetornoVincula.BitCancelarClick(Sender: tObject);
begin
     ModalResult:=mrCancel;
end;

procedure TFrmVinculacaoIndustrializacaoRetornoVincula.SpeedButton2Click(
  Sender: tObject);
begin
     FrmCadastroTipoRetorno := TFrmCadastroTipoRetorno.Create(Application);
     try
       FrmCadastroTipoRetorno.ShowModal;
     finally
       FreeAndNil( FrmCadastroTipoRetorno );
     end;
     CdsTipoRetorno.Refresh;
end;

procedure TFrmVinculacaoIndustrializacaoRetornoVincula.FormShow(Sender: tObject);
begin

     CdsTipoRetorno.Open;
     CurQuantidade.Value := QtdRetornar;
     CdsTipoRetorno.Locate('ITT_REGISTRO',Itt_Registro,[]);
     //cxLookupComboBox1.EditValue := iCodigoTipoRetorno;

end;

procedure TFrmVinculacaoIndustrializacaoRetornoVincula.BitConfirmarClick(Sender: tObject);
begin
     if Uteis.RoundTo(CurQuantidade.Value, -2) > Uteis.RoundTo(QtdRetornar, -2)   then
     begin
        CurQuantidade.Value := QtdRetornar;
        MessageDlg('Quantidade informada é maior que o saldo', mtError, [mbOK], 0);
        ModalResult := mrCancel;
        CurQuantidade.SetFocus;
        abort;
     end;

     QtdRetornar:=CurQuantidade.Value;
     Itt_Registro:=0;
     Itt_Descricao:='';

     if (CdsTipoRetorno.Locate('ITT_REGISTRO',cxLookupComboBox1.EditValue,[])) then
     begin
          Itt_Registro:=CdsTipoRetornoITT_REGISTRO.AsInteger;
          Itt_Descricao:=CdsTipoRetornoITT_DESCRICAO.AsString;
     End;

     ModalResult := mrOk;

end;

end.
