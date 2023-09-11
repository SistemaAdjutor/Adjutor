unit uEtiquetasProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons;

type
  TFrmEtiquetasProdutos = class(TForm)
    Label1: TLabel;
    cbbBuscaDireta: TComboBox;
    Label2: TLabel;
    edtBuscaDireta: TEdit;
    RadDescricaoAdicional: TRadioGroup;
    EdiDescricao1: TEdit;
    EdiDescricao2: TEdit;
    GpBFiltrarEtiquetasProdutos: TGroupBox;
    GpbEtiquetasProdutos: TGroupBox;
    EdtReferencia: TEdit;
    Label3: TLabel;
    SpeedProduto: TSpeedButton;
    EdtDescricao: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    CbTipo: TComboBox;
    CbGrupo: TComboBox;
    CbLinha: TComboBox;
    Bit_Sair: TBitBtn;
    ButVisualizar: TButton;
    ButImprimir: TButton;
    procedure Bit_SairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmEtiquetasProdutos: TFrmEtiquetasProdutos;

implementation

{$R *.dfm}

procedure TFrmEtiquetasProdutos.Bit_SairClick(Sender: TObject);
begin
     Close;
end;

end.
