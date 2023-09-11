unit CartaCorrecaoNFe;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBForm, Data.DBXFirebird, Data.FMTBcd, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Imaging.jpeg, Vcl.StdCtrls,
  Vcl.Mask, JvExMask, JvSpin, cxLabel, Vcl.Imaging.GIFImg, Vcl.ExtCtrls, JvExExtCtrls, JvImage, JvExControls, JvButton, JvNavigationPane, Data.DB, Data.SqlExpr, ACBrEnterTab, ACBrBase, ACBrCalculadora;

type
  TFrmCartaNfe = class(TfrmBaseDB)
    BitCancelar: TJvNavPanelButton;
    BitConfirmar: TJvNavPanelButton;
    Panel1: TPanel;
    JvImage1: TJvImage;
    cxLabel2: TcxLabel;
    GroupBox4: TGroupBox;
    MemoDescricao: TMemo;
    GroupBox3: TGroupBox;
    Label9: TLabel;
    SequenciaEvento: TJvSpinEdit;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label2: TLabel;
    EdNfe: TEdit;
    EDCfop: TEdit;
    EdValor: TEdit;
    EdCodigoCliente: TEdit;
    EdRazaoCliente: TEdit;
    EdCidade: TEdit;
    EdChave: TEdit;
    EdCnpj: TEdit;
    GroupBox2: TGroupBox;
    edCondicoes: TcxLabel;
    edEmissao: TEdit;
    Label10: TLabel;
    Panel2: TPanel;
    edConta: TEdit;
    procedure BitConfirmarClick(Sender: TObject);
    procedure BitCancelarClick(Sender: TObject);
    procedure MemoDescricaoChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCartaNfe: TFrmCartaNfe;

implementation

{$R *.dfm}

procedure TFrmCartaNfe.BitCancelarClick(Sender: TObject);
begin
  inherited;
  ModalResult  := mrCancel;
end;

procedure TFrmCartaNfe.BitConfirmarClick(Sender: TObject);
begin
  inherited;
  ModalResult  := mrok;
end;

procedure TFrmCartaNfe.MemoDescricaoChange(Sender: TObject);
begin
  inherited;
 edConta.Text := IntToStr( Length(MemoDescricao.Text) );
end;

end.
