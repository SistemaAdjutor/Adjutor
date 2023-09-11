unit uEtiquetasProdExpedicao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TForm3 = class(TForm)
    PanEtiqueta: TPanel;
    Panel4: TPanel;
    BitBtn2: TBitBtn;
    GrBEtiqueta: TGroupBox;
    Label3: TLabel;
    Label9: TLabel;
    EditFinal: TEdit;
    EditInicial: TEdit;
    Rad_Etiq_Sistema: TRadioButton;
    Rad_Etiq_Pre_Impressa: TRadioButton;
    BitEtiqFechar: TBitBtn;
    BitImprimeEtiq: TBitBtn;
    Gb_Estilo_Etiqueta: TGroupBox;
    rbModelo1: TRadioButton;
    rbModelo3: TRadioButton;
    rbModelo2: TRadioButton;
    rbModelo4: TRadioButton;
    rbModelo5: TRadioButton;
    grpMensagem: TGroupBox;
    edtMensagem: TEdit;
    chkSolicitarQuantidade: TCheckBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

end.
