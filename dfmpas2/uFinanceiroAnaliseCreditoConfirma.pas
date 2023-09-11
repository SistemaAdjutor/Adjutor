unit uFinanceiroAnaliseCreditoConfirma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons;

type
  TFrmFinanceiroAnaliseCreditoConfirma = class(TForm)
    PAcao: TPanel;
    GroupBox1: TGroupBox;
    Bit_Gravar: TBitBtn;
    Bit_Cancelar: TBitBtn;
    MObs: TMemo;
    procedure Bit_CancelarClick(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure Bit_GravarClick(Sender: tObject);
  private
    { Private declarations }
    procedure Acao(sAcao:String);
  public
    { Public declarations }
    sAcao:String;
  end;

var
  FrmFinanceiroAnaliseCreditoConfirma: TFrmFinanceiroAnaliseCreditoConfirma;

implementation

uses
  RWFunc, Men0001, DataCad,uFinanceiroAnaliseCredito, uteis, iniciodb;

{$R *.dfm}

procedure TFrmFinanceiroAnaliseCreditoConfirma.Acao(sAcao: String);
begin
end;

procedure TFrmFinanceiroAnaliseCreditoConfirma.Bit_CancelarClick(
  Sender: tObject);
begin
   Close;
end;

procedure TFrmFinanceiroAnaliseCreditoConfirma.FormShow(Sender: tObject);
begin
   if (sAcao = 'L') then //Liberação
      begin
         PAcao.Color := clGreen;
         PAcao.Caption := 'LIBERAÇÃO';
         MObs.Text := 'Crédito Aprovado';
      end
   else
   if (sAcao = 'P') then //Liberação
      begin
         PAcao.Color := clNavy;
         PAcao.Caption := 'ESTORNAR';
         MObs.Text := 'Estorno de Acão';
      end
   else
   if (sAcao = 'B') then //Liberação
      begin
         PAcao.Color := clMaroon;
         PAcao.Caption := 'BLOQUEAR';
         MObs.Text := '';
      end;
end;

procedure TFrmFinanceiroAnaliseCreditoConfirma.Bit_GravarClick(
  Sender: tObject);
begin
   //Verifica se foi digitado o motivo
   if (Trim(MObs.Text) = '') then
      begin
         uteis.aviso('Informe o motivo');
         MObs.SetFocus;
      end
   else
      begin
         if (uteis.confirmacao ( 'Confirma a operação?')=mryes) then
            begin
               DataCadastros.sqlUpdate.Close;
               DataCadastros.SqlUpdate.sql.text :='UPDATE PED0000 SET PED_STATUS_ANALISE_CREDITO = '+QuotedStr(sAcao)+', PED_USU_ANALISE_CREDITO = '+QuotedStr(dbInicio.Usuario.Codigo)+',PEDA_DATA_ANALISE_CREDITO = '+QuotedStr(DataAmericana(DateToStr(NOW)))+',PED_OBS_ANALISE_CREDITO = '+QuotedStr(MObs.Text)+' where PED_CODIGO = '+QuotedStr(FrmFinanceiroAnaliseCredito.CdsPedidoAnalisePED_CODIGO.AsString);
               DataCadastros.sqlUpdate.Execsql;
               Close;
            end;
      end;

end;

end.
