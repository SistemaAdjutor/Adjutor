unit uEditISS_Municipio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBEditForm, Data.DBXFirebird, Data.FMTBcd, Data.DB, Datasnap.DBClient, Datasnap.Provider, Data.SqlExpr, ACBrEnterTab, ACBrBase, ACBrCalculadora,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, SYSTEM.TypInfo, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, cxDBEdit,
  CID0002, Vcl.Mask, Vcl.DBCtrls;

type
  TfrmEditISS_Municipio = class(TfrmBaseDBEdit)
    CdsEditISS_CODIGO: TStringField;
    CdsEditISS_MUNICIPIO: TStringField;
    CdsEditISS_UF: TStringField;
    CdsEditISS_PGRC_ISS: TFMTBCDField;
    CdsEditEMP_CODIGO: TStringField;
    CdsEditCID_CODIGO: TIntegerField;
    CdsEditISS_PERCENT_INSS: TFMTBCDField;
    CdsEditISS_PERCENT_CSLL: TFMTBCDField;
    CdsEditISS_PERCENT_IR: TFMTBCDField;
    CdsEditISS_PERCENT_PIS: TFMTBCDField;
    CdsEditISS_PERCENT_COFINS: TFMTBCDField;
    qEditISS_CODIGO: TStringField;
    qEditISS_MUNICIPIO: TStringField;
    qEditISS_UF: TStringField;
    qEditISS_PGRC_ISS: TFMTBCDField;
    qEditEMP_CODIGO: TStringField;
    qEditCID_CODIGO: TIntegerField;
    qEditISS_PERCENT_INSS: TFMTBCDField;
    qEditISS_PERCENT_CSLL: TFMTBCDField;
    qEditISS_PERCENT_IR: TFMTBCDField;
    qEditISS_PERCENT_PIS: TFMTBCDField;
    qEditISS_PERCENT_COFINS: TFMTBCDField;
    Label6: TLabel;
    DbeCli_cidade: TDBEdit;
    Label43: TLabel;
    DBECLIUF: TDBEdit;
    SpeedButton5: TSpeedButton;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label3: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    Label4: TLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    Label5: TLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    Label7: TLabel;
    cxDBTextEdit6: TcxDBTextEdit;
    Label8: TLabel;
    cxDBTextEdit7: TcxDBTextEdit;
    Label15: TLabel;
    cxDBTextEdit14: TcxDBTextEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEditISS_Municipio: TfrmEditISS_Municipio;

implementation

{$R *.dfm}

procedure TfrmEditISS_Municipio.btnOKClick(Sender: TObject);
begin
  if CdsEditISS_CODIGO.IsNull then
      CdsEditISS_CODIGO.AsInteger :=  BuscaUmDadoSqlAsInteger('SELECT max(CAST(iss_codigo AS integer)) FROM ISS0000')+1;
  inherited;

end;

procedure TfrmEditISS_Municipio.FormCreate(Sender: TObject);
begin
  inherited;
	CampoID:='ISS_CODIGO';
	Tabela:='ISS0000';
	SetTamanhoMinimo(285,671);
end;

procedure TfrmEditISS_Municipio.FormResize(Sender: TObject);
begin
  inherited;
  self.Height:= 383;
  self.Width := 492;
end;

procedure TfrmEditISS_Municipio.FormShow(Sender: TObject);
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


end;

procedure TfrmEditISS_Municipio.SpeedButton5Click(Sender: TObject);
begin
 FormCidadeGrid := TFormCidadeGrid.Create(Application);
  try
    FormCidadeGrid.ShowModal;
    if (not CdsEdit.IsEmpty) then
    begin
     if (CdsEdit.State in [dsBrowse])then
        CdsEdit.Edit;
     if (CdsEdit.State in [dsEdit,dsInsert]) then
     begin
       CdsEditISS_MUNICIPIO.AsString  := FormCidadeGrid.Cidade;
       CdsEditISS_UF.AsString      := FormCidadeGrid.Estado;
       CdsEditCID_CODIGO.AsInteger := FormCidadeGrid.Cod_Cidade;

     end;
    end;




  finally
    FormCidadeGrid.Destroy;
    FormCidadeGrid := Nil;
  end;

end;

end.
