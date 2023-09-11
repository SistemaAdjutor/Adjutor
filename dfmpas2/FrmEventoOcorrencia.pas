unit FrmEventoOcorrencia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, TypInfo,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBEditForm, Data.DBXFirebird, Data.FMTBcd, Data.DB, Datasnap.DBClient, Datasnap.Provider, Data.SqlExpr, ACBrEnterTab, ACBrBase, ACBrCalculadora,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxDBEdit, cxTextEdit,
  SgDbSeachComboUnit, Vcl.ComCtrls, dxCore, cxDateUtils, cxSpinEdit, cxTimeEdit;
const
  sResolver = 1;
  sInserir  = 0;


type
  TFrmEventoOcorrencias = class(TfrmBaseDBEdit)
    CdsEditOCE_CODIGO: TIntegerField;
    CdsEditOCO_CODIGO: TIntegerField;
    CdsEditFAB_CODIGO: TIntegerField;
    CdsEditCOL_CODIGO: TIntegerField;
    CdsEditOCE_ESTORNO: TIntegerField;
    CdsEditOCE_MOTIVO: TStringField;
    CdsEditOCE_DATAOCORRENCIA: TSQLTimeStampField;
    CdsEditOCE_DATAPREVISAO: TSQLTimeStampField;
    CdsEditOCE_DATAFIM: TSQLTimeStampField;
    Label1: TLabel;
    EdColaboradorCodigo: TEdit;
    edColaborador: TSgDbSearchCombo;
    Label2: TLabel;
    edOcorrencia_Codigo: TEdit;
    edPesqOcorrencia: TSgDbSearchCombo;
    qColaborador: TSQLQuery;
    qOcorrencia: TSQLQuery;
    qOcorrenciaOCO_CODIGO: TIntegerField;
    qOcorrenciaOCO_DESCRICAO: TStringField;
    Label3: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label4: TLabel;
    Label5: TLabel;
    lresolvido: TLabel;
    CdsEditAPF_CODIGO: TIntegerField;
    CdsEditOCE_COMENTARIO: TStringField;
    lcomentario: TLabel;
    cxComentario: TcxDBTextEdit;
    qEditOCE_CODIGO: TIntegerField;
    qEditOCO_CODIGO: TIntegerField;
    qEditFAB_CODIGO: TIntegerField;
    qEditCOL_CODIGO: TIntegerField;
    qEditOCE_ESTORNO: TIntegerField;
    qEditOCE_MOTIVO: TStringField;
    qEditOCE_DATAOCORRENCIA: TSQLTimeStampField;
    qEditOCE_DATAPREVISAO: TSQLTimeStampField;
    qEditOCE_DATAFIM: TSQLTimeStampField;
    qEditAPF_CODIGO: TIntegerField;
    qEditOCE_COMENTARIO: TStringField;
    cxHoraOcorrencia: TcxTimeEdit;
    cxDataOcorrencia: TcxDateEdit;
    cxDataResolver: TcxDateEdit;
    cxHoraResolver: TcxTimeEdit;
    cxDataResolvido: TcxDateEdit;
    cxHoraResolvido: TcxTimeEdit;
    procedure FormCreate(Sender: TObject);
    procedure CdsEditBeforePost(DataSet: TDataSet);
    procedure edColaboradorSelect(Sender: TObject);
    procedure edPesqOcorrenciaSelect(Sender: TObject);
    procedure CdsEditAfterOpen(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure CdsEditAfterInsert(DataSet: TDataSet);
    procedure CdsEditBeforeEdit(DataSet: TDataSet);
  private
    FFAb_Codigo: integer;
    FStatus : Integer;
    FAPF_Codigo : Integer;
    procedure SetFAB_Codigo (AValues : Integer);
    procedure SetStatus (AValue: Integer);
    procedure SetAPF_Codigo (AValues : Integer);
    procedure ControleBotoes;
  public
    property FAB_Codigo : integer read FFab_codigo write SetFAB_Codigo;
    property Status: Integer read FStatus write SetStatus;
    property APF_Codigo : integer read FAPF_Codigo write SetAPF_Codigo;

  end;

var
  FrmEventoOcorrencias: TFrmEventoOcorrencias;

implementation

{$R *.dfm}

procedure TFrmEventoOcorrencias.CdsEditAfterInsert(DataSet: TDataSet);
begin
  inherited;
  cxDataOcorrencia.Date := date;
  cxDataResolver.Date := date;
  cxHoraOcorrencia.Text := FormatDateTime('hh:nn', time);
end;

procedure TFrmEventoOcorrencias.CdsEditAfterOpen(DataSet: TDataSet);
begin
  inherited;
  if DataSet.State <> dsInsert then
  begin
   edColaborador.idRetorno := IntToStr(CdsEditCOL_CODIGO.AsInteger);
   edPesqOcorrencia.idRetorno := IntToStr(CdsEditOCO_CODIGO.AsInteger);

   cxDataOcorrencia.Date :=  CdsEditOCE_DATAOCORRENCIA.AsDateTime;
   cxDataResolver.Date := CdsEditOCE_DATAPREVISAO.AsDateTime;
   cxDataResolvido.Date := CdsEditOCE_DATAFIM.AsDateTime;

   cxHoraOcorrencia.Text :=  FormatDateTime('hh:nn', CdsEditOCE_DATAOCORRENCIA.AsDateTime);
   cxHoraResolver.Text :=  FormatDateTime('hh:nn', CdsEditOCE_DATAPREVISAO.AsDateTime);
   cxHoraResolvido.Text :=  FormatDateTime('hh:nn', CdsEditOCE_DATAFIM.AsDateTime);

  end;
end;

procedure TFrmEventoOcorrencias.CdsEditBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if Status = sResolver then
  begin
    cxDataResolvido.Date:= date;
    cxHoraResolvido.Text := FormatDateTime('hh:nn',time);
  end
end;

procedure TFrmEventoOcorrencias.CdsEditBeforePost(DataSet: TDataSet);
begin
  inherited;
  if CdsEditOCE_CODIGO.IsNull then
     CdsEditOCE_CODIGO.Value := GetNextSequence('GEN_OCORRENCIA_EVENTO');
  if edColaborador.idRetorno <> '' then
     CdsEditCOL_CODIGO.AsInteger := StrToInt(edColaborador.idRetorno);
  if edPesqOcorrencia.idRetorno <> '' then
     CdsEditOCO_CODIGO.AsInteger := StrToInt(edPesqOcorrencia.idRetorno);
  if CdsEditFAB_CODIGO.IsNull then
    CdsEditFAB_CODIGO.AsInteger := FAB_Codigo;
  if APF_Codigo > 0  then
    CdsEditAPF_CODIGO.AsInteger := APF_Codigo;
  if status = sinserir then
  begin
     CdsEditOCE_DATAOCORRENCIA.AsDateTime := StrToDateTime(FormatDateTime('dd/mm/yyyy',cxDataOcorrencia.Date) + ' ' +  cxHoraOcorrencia.text);
     CdsEditOCE_DATAPREVISAO.AsDateTime := StrToDateTime(FormatDateTime('dd/mm/yyyy',cxDataResolver.Date) + ' ' +  cxHoraResolver.text);
  end;
  if status = sResolver then
     CdsEditOCE_DATAFIM.AsDateTime := StrToDateTime(FormatDateTime('dd/mm/yyyy',cxDataResolvido.Date) + ' ' +  cxHoraResolvido.text);
end;

procedure TFrmEventoOcorrencias.ControleBotoes;
begin
 case status of
  sInserir :
   begin
    lcomentario.Visible := False;
    cxComentario.Visible:= False;
    cxDataResolvido.Visible := False;
    cxHoraResolvido.Visible := False;
    lresolvido.Visible := False;
    cxDataOcorrencia.Enabled := True;
    cxHoraOcorrencia.Enabled := True;
    cxDataResolver.Enabled := True;
    cxHoraResolver.Enabled := True;
   end;
  sResolver :
   begin
    lcomentario.Visible := True;
    cxComentario.Visible:= True;
    cxDataResolvido.Visible := True;
    cxHoraResolvido.Visible := True;
    lresolvido.Visible := True;
    cxDataOcorrencia.Enabled := False;
    cxHoraOcorrencia.Enabled := False;
    cxDataResolver.Enabled := False;
    cxHoraResolver.Enabled := False;
   end;
 end;
end;

procedure TFrmEventoOcorrencias.edColaboradorSelect(Sender: TObject);
begin
  inherited;
  if edColaborador.idRetorno <> '' then
    EdColaboradorCodigo.Text :=  edColaborador.idRetorno
  else
    EdColaboradorCodigo.Clear;
end;

procedure TFrmEventoOcorrencias.edPesqOcorrenciaSelect(Sender: TObject);
begin
  inherited;
 if edPesqOcorrencia.idRetorno <> '' then
    edOcorrencia_Codigo.Text := edPesqOcorrencia.idRetorno
 else
   edOcorrencia_Codigo.Clear;
end;

procedure TFrmEventoOcorrencias.FormCreate(Sender: TObject);
begin
  inherited;
  CampoID:='OCE_CODIGO';
  Tabela:='OCORRENCIA_EVENTO';
  DspEdit.UpdateMode := upWhereKeyOnly;
  SetTamanhoMinimo(402,591);
end;

procedure TFrmEventoOcorrencias.FormShow(Sender: TObject);
  Procedure VisibleAndEnabl(btn: TObject; Visible, Enabl: Boolean);
  begin
    SetPropValue(btn, 'VISIBLE', Visible);
    SetPropValue(btn, 'ENABLED', Enabl);
  end;
begin
  inherited;
  ControleBotoes;
  VisibleAndEnabl(btSave, False, False);
  VisibleAndEnabl(btFirst, false, false);
  VisibleAndEnabl(btPrior, false, false);
  VisibleAndEnabl(btNext, false, false);
  VisibleAndEnabl(btLast, false, false);

end;

procedure TFrmEventoOcorrencias.SetAPF_Codigo(AValues: Integer);
begin
 FAPF_Codigo := AValues;
end;

procedure TFrmEventoOcorrencias.SetFAB_Codigo(AValues: Integer);
begin
 FFAb_Codigo := AValues;
end;

procedure TFrmEventoOcorrencias.SetStatus(AValue: Integer);
begin
 FStatus := AValue;

end;

end.
