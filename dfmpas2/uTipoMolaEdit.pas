unit uTipoMolaEdit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBEditForm, Data.DBXFirebird, Data.FMTBcd, Data.DB, Datasnap.DBClient, Datasnap.Provider, Data.SqlExpr, ACBrEnterTab, ACBrBase, ACBrCalculadora,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.DBCtrls, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxDBEdit;

type
  TfrmTipoMola = class(TfrmBaseDBEdit)
    CdsEditTIM_CODIGO: TIntegerField;
    CdsEditPTI_CODIGO: TStringField;
    CdsEditMMO_TEMPO_PRODUCAO: TStringField;
    CdsEditMMO_PESO_ESPECIFICO: TStringField;
    CdsEditMMO_CISALHAMENTO: TStringField;
    CdsEditMMO_RES_TRACAO: TStringField;
    CdsEditMMO_TRATAMENTO_TERMICO: TStringField;
    CdsEditMMO_TEMPO_TEMPERA: TStringField;
    CdsEditMMO_TEMPERATURA_TEMPERA: TStringField;
    CdsEditMMO_TEMPO_REVENIMENTO: TStringField;
    CdsEditMMO_TEMPERATURA_REVENIMENTO: TStringField;
    CdsEditMMO_DUREZA_MINIMA: TStringField;
    CdsEditMMO_DUREZA_MAXIMA: TStringField;
    CdsEditMMO_TRATAMENTO_SUPERFICIAL: TStringField;
    CdsEditMMO_DIAMETRO_ARAME: TStringField;
    CdsEditMMO_DIAMETRO_INTERNO: TStringField;
    CdsEditMMO_DIAMETRO_MEDIO: TStringField;
    CdsEditMMO_DIAMETRO_EXTERNO: TStringField;
    CdsEditMMO_DIAMETRO_EXTERNO_MEIO: TStringField;
    CdsEditMMO_VAO: TStringField;
    CdsEditMMO_PASSO: TStringField;
    CdsEditMMO_COM_LIVRE: TStringField;
    CdsEditMMO_COM_SOLIDO: TStringField;
    CdsEditMMO_ESPIRAIS_UTEIS: TStringField;
    CdsEditMMO_ESPIRAL_TOTAL: TStringField;
    CdsEditMMO_DESENVOLVIMENTO: TStringField;
    CdsEditMMO_RETIFICADO: TStringField;
    CdsEditMMO_PARALIELISMO: TStringField;
    CdsEditMMO_PERPENDICULARIMO: TStringField;
    CdsEditMMO_SENTIDO: TStringField;
    CdsEditMMO_PESO: TStringField;
    CdsEditMMO_OBSERVACAO: TStringField;
    CdsEditMMO_CONSTANTE_ESPE: TStringField;
    CdsEditMMO_CONSTANTE_CALCULADA: TStringField;
    CdsEditMMO_ALTURAL1: TStringField;
    CdsEditMMO_ALTURAL2: TStringField;
    CdsEditMMO_ALTURAL3: TStringField;
    CdsEditMMO_ALTURAL4: TStringField;
    CdsEditMMO_CURSOS1: TStringField;
    CdsEditMMO_CURSOS2: TStringField;
    CdsEditMMO_CURSOS3: TStringField;
    CdsEditMMO_CURSOS4: TStringField;
    CdsEditMMO_CARGAP1: TStringField;
    CdsEditMMO_CARGAP2: TStringField;
    CdsEditMMO_CARGAP3: TStringField;
    CdsEditMMO_CARGAP4: TStringField;
    CdsEditMMO_TENSAO1: TStringField;
    CdsEditMMO_TENSAO2: TStringField;
    CdsEditMMO_TENSAO3: TStringField;
    CdsEditMMO_TENSAO4: TStringField;
    CdsEditMMO_CARGA: TStringField;
    CdsEditMMO_TENSAO: TStringField;
    CdsEditMMO_MAQUINA: TStringField;
    CdsEditMMO_MANDRIL: TStringField;
    CdsEditMMO_CACHIMBO: TStringField;
    CdsEditMMO_COPIADOR: TStringField;
    CdsEditMMO_GANCHO: TStringField;
    CdsEditMMO_DISCO: TStringField;
    CdsEditMMO_OUTROS: TStringField;
    CdsEditMMO_LOCALIZACAO: TStringField;
    CdsEditMMO_SETOR: TStringField;
    CdsEditMMO_OBSGERAIS: TStringField;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    DBCheckBox8: TDBCheckBox;
    DBCheckBox9: TDBCheckBox;
    DBCheckBox10: TDBCheckBox;
    DBCheckBox11: TDBCheckBox;
    DBCheckBox12: TDBCheckBox;
    DBCheckBox13: TDBCheckBox;
    DBCheckBox14: TDBCheckBox;
    DBCheckBox15: TDBCheckBox;
    DBCheckBox16: TDBCheckBox;
    DBCheckBox17: TDBCheckBox;
    DBCheckBox18: TDBCheckBox;
    DBCheckBox19: TDBCheckBox;
    DBCheckBox20: TDBCheckBox;
    DBCheckBox21: TDBCheckBox;
    DBCheckBox22: TDBCheckBox;
    DBCheckBox23: TDBCheckBox;
    DBCheckBox24: TDBCheckBox;
    DBCheckBox25: TDBCheckBox;
    DBCheckBox26: TDBCheckBox;
    DBCheckBox27: TDBCheckBox;
    DBCheckBox28: TDBCheckBox;
    DBCheckBox29: TDBCheckBox;
    DBCheckBox30: TDBCheckBox;
    DBCheckBox31: TDBCheckBox;
    DBCheckBox32: TDBCheckBox;
    DBCheckBox33: TDBCheckBox;
    DBCheckBox34: TDBCheckBox;
    DBCheckBox35: TDBCheckBox;
    DBCheckBox36: TDBCheckBox;
    DBCheckBox37: TDBCheckBox;
    DBCheckBox38: TDBCheckBox;
    DBCheckBox39: TDBCheckBox;
    DBCheckBox40: TDBCheckBox;
    DBCheckBox41: TDBCheckBox;
    DBCheckBox42: TDBCheckBox;
    DBCheckBox43: TDBCheckBox;
    DBCheckBox44: TDBCheckBox;
    DBCheckBox45: TDBCheckBox;
    DBCheckBox46: TDBCheckBox;
    DBCheckBox47: TDBCheckBox;
    DBCheckBox48: TDBCheckBox;
    DBCheckBox49: TDBCheckBox;
    DBCheckBox50: TDBCheckBox;
    DBCheckBox51: TDBCheckBox;
    DBCheckBox52: TDBCheckBox;
    DBCheckBox53: TDBCheckBox;
    DBCheckBox54: TDBCheckBox;
    DBCheckBox55: TDBCheckBox;
    DBCheckBox56: TDBCheckBox;
    DBCheckBox57: TDBCheckBox;
    DBCheckBox58: TDBCheckBox;
    DBCheckBox59: TDBCheckBox;
    DBCheckBox60: TDBCheckBox;
    DBCheckBox61: TDBCheckBox;
    DBCheckBox62: TDBCheckBox;
    DBCheckBox63: TDBCheckBox;
    CdsEditMMO_TIPOEMBALAGEM: TStringField;
    CdsEditART_CODIGO: TStringField;
    CdsEditARA_CODIGO: TStringField;
    CdsEditCMO_CODIGO: TStringField;
    CdsEditGAN_CODIGO: TStringField;
    CdsEditACO_CODIGO: TStringField;
    CdsEditASU_CODIGO: TStringField;
    CdsEditTSU_CODIGO: TStringField;
    DBCheckBox64: TDBCheckBox;
    loperacao: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label2: TLabel;
    CdsEditMMO_DIAMETRO_EXT_MAIOR: TStringField;
    CdsEditMMO_DIAMETRO_EXT_MENOR: TStringField;
    CdsEditMMO_ALT_GANCHO: TStringField;
    CdsEditMMO_ABERT_GANCHO: TStringField;
    CdsEditMMO_COMP_GANCHO: TStringField;
    DBCheckBox67: TDBCheckBox;
    DBCheckBox68: TDBCheckBox;
    CdsEditMMO_COMP_CORPO: TStringField;
    DBCheckBox70: TDBCheckBox;
    DBCheckBox71: TDBCheckBox;
    Label6: TLabel;
    Label7: TLabel;
    DBComboBox1: TDBComboBox;
    DBComboBox2: TDBComboBox;
    CdsEditMMO_TIPO: TStringField;
    CdsEditMMO_VARIACAO: TStringField;
    DBCheckBox72: TDBCheckBox;
    CdsEditMMO_PERDA: TStringField;
    CdsEditMMO_DIAMETRO_INT_MENOR: TStringField;
    CdsEditMMO_DIAMETRO_INT_MAIOR: TStringField;
    DBCheckBox73: TDBCheckBox;
    DBCheckBox74: TDBCheckBox;
    DBCheckBox75: TDBCheckBox;
    DBCheckBox76: TDBCheckBox;
    CdsEditMMO_TIPO_HASTE: TStringField;
    CdsEditMMO_COMPRIMENTO_HASTE_HA: TStringField;
    CdsEditMMO_COMPRIMENTO_HASTE_HB: TStringField;
    CdsEditMMO_POSICAO_HASTE: TStringField;
    DBCheckBox77: TDBCheckBox;
    DBCheckBox78: TDBCheckBox;
    DBCheckBox79: TDBCheckBox;
    DBCheckBox65: TDBCheckBox;
    DBCheckBox66: TDBCheckBox;
    CdsEditMMO_DIAMETRO_MEDIO_MEIO: TStringField;
    DBCheckBox69: TDBCheckBox;
    CdsEditMMO_PERDA_PADRAO: TFMTBCDField;
    Label8: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CdsEditNewRecord(DataSet: TDataSet);
    procedure CdsEditMMO_TIPOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure CdsEditMMO_TIPOSetText(Sender: TField; const Text: string);
    procedure CdsEditMMO_VARIACAOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure CdsEditMMO_VARIACAOSetText(Sender: TField; const Text: string);
  private
    { Private declarations }
  public
    tipoDescricao : string;
    codigo :string;
  end;

var
  frmTipoMola: TfrmTipoMola;

implementation
uses InicioDB, uteis,System.TypInfo;
{$R *.dfm}

procedure TfrmTipoMola.CdsEditMMO_TIPOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if Sender.AsString = 'C' then
    text := 'Compressão'
  else if Sender.AsString = 'R' then
    text := 'Tração'
  else if Sender.AsString = 'O' then
    text := 'Torção'
  else if Sender.AsString = 'D' then
    text := 'Condutor';

end;

procedure TfrmTipoMola.CdsEditMMO_TIPOSetText(Sender: TField; const Text: string);
begin
  inherited;
  if text = 'Compressão' then
     sender.AsString := 'C'
  else if text = 'Tração' then
     sender.AsString := 'R'
  else if text = 'Torção' then
     sender.AsString := 'O'
  else if text = 'Condutor' then
     sender.AsString := 'D';
end;

procedure TfrmTipoMola.CdsEditMMO_VARIACAOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if Sender.AsString = 'P' then
    text := 'Paralela'
  else if Sender.AsString = 'C' then
    text := 'Conica'
  else if Sender.AsString = 'B' then
    text := 'Biconica'
  else if Sender.AsString = 'V' then
    text := 'Convexa';
end;

procedure TfrmTipoMola.CdsEditMMO_VARIACAOSetText(Sender: TField; const Text: string);
begin
  inherited;
  if text = 'Paralela' then
     sender.AsString := 'P'
  else if text = 'Conica' then
     sender.AsString := 'C'
  else if text = 'Biconica' then
     sender.AsString := 'B'
  else if text = 'Convexa' then
     sender.AsString := 'V';
end;

procedure TfrmTipoMola.CdsEditNewRecord(DataSet: TDataSet);
 var i : integer;
begin
  inherited;
  for I := 0 to CdsEdit.FieldCount-1 do
    if (cdsedit.Fields[i].DataType = ftString) and (cdsedit.Fields[i].Size = 1) then
       TField(cdsedit.fields[i]).AsString := 'N';

  if CdsEditTIM_CODIGO.IsNull then
    CdsEditTIM_CODIGO.AsInteger := GetNextSequence('GEN_TIPO_MOLA');
  if CdsEditPTI_CODIGO.AsString = EmptyStr then
   CdsEditPTI_CODIGO.AsString := codigo;

end;

procedure TfrmTipoMola.FormCreate(Sender: TObject);
begin
  inherited;
  CampoID:='tim_codigo';
  Tabela:='TIPO_MOLA';
  SetTamanhoMinimo(578,971);
end;

procedure TfrmTipoMola.FormShow(Sender: TObject);
  Procedure VisibleAndEnabl(btn: TObject; Visible, Enabl: Boolean);
  begin
    SetPropValue(btn, 'VISIBLE', Visible);
    SetPropValue(btn, 'ENABLED', Enabl);
  end;
begin
  inherited;
  VisibleAndEnabl(btSave, False, False);
  VisibleAndEnabl(btFirst, false, false);
  VisibleAndEnabl(btPrior, false, false);
  VisibleAndEnabl(btNext, false, false);
  VisibleAndEnabl(btLast, false, false);
  VisibleAndEnabl(cbPersistente, false, false);
  loperacao.Caption :=  tipoDescricao;

end;

end.
