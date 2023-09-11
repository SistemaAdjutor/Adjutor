unit uRenovacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, system.WideStrings, Vcl.ComCtrls, JvExComCtrls,
  JvDateTimePicker, BaseDBForm, Data.DBXFirebird, Data.FMTBcd, Data.DB, Data.SqlExpr, ACBrEnterTab, ACBrBase, ACBrCalculadora;

type
  TFrmRenovar = class(TForm)
    dataPrazo: TJvDateTimePicker;
    HoraPrazo: TJvDateTimePicker;
    Label1: TLabel;
    mAssunto: TMemo;
    lAssunto: TLabel;
    btnConfirma: TButton;
    btnCancela: TButton;
    procedure btnConfirmaClick(Sender: TObject);
    procedure btnCancelaClick(Sender: TObject);
    procedure dataPrazoChange(Sender: TObject);
    procedure HoraPrazoChange(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    FAssunto : WideString;
    FPrazo : TDateTime;
    procedure SetAssunto (const Value: WideString);
    procedure SetPrazo (const Value: TDateTime);
  public
    property Assunto : WideString read FAssunto write SetAssunto;
    property Prazo : TDateTime read FPrazo write SetPrazo;
    procedure ValidarCad;
  end;

var
  FrmRenovar: TFrmRenovar;

implementation

{$R *.dfm}

procedure TFrmRenovar.btnCancelaClick(Sender: TObject);
begin
 ModalResult := mrCancel
end;

procedure TFrmRenovar.btnConfirmaClick(Sender: TObject);
begin

 Assunto := massunto.Text;
 if (dataPrazo.Date>0) and (HoraPrazo.Time > 0) then
   Prazo := StrToDateTime(DateToStr(dataPrazo.Date)+ TimeToStr(HoraPrazo.Time))
 else  if (dataPrazo.Date>0) then
  Prazo := StrToDateTime(DateToStr(dataPrazo.Date))  ;

 ModalResult := mrOk

end;

procedure TFrmRenovar.dataPrazoChange(Sender: TObject);
begin
if not (dataPrazo.DroppedDown) then
  begin
	keybd_event(39,0,0,0);
  end;
end;

procedure TFrmRenovar.FormDestroy(Sender: TObject);
begin
 FrmRenovar := nil;
end;

procedure TFrmRenovar.FormShow(Sender: TObject);
begin
  dataPrazo.Date := date;
  HoraPrazo.Time := now;
end;

procedure TFrmRenovar.HoraPrazoChange(Sender: TObject);
begin
 if not (HoraPrazo.DroppedDown) then
	keybd_event(39,0,0,0);

end;

procedure TFrmRenovar.SetAssunto(const Value: WideString);
begin
  FAssunto:= Value;
end;

procedure TFrmRenovar.SetPrazo(const Value: TDateTime);
begin
 FPrazo := Value;
end;

procedure TFrmRenovar.ValidarCad;
begin
  if mAssunto.Text ='' then
    raise Exception.Create('Assunto deve ser preenchido');
  if dataPrazo.Date=0 then
    raise Exception.Create('Prazo deve ser preenchido');
end;

end.
