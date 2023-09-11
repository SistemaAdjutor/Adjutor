unit uDadosEtiquetaPallet;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseForm, ACBrEnterTab, ACBrBase, ACBrCalculadora, Vcl.Buttons, Vcl.StdCtrls, JvExStdCtrls, JvEdit, JvValidateEdit;

type
  TfrmDadosEtiquetaPallet = class(TfrmBase)
    btOk: TBitBtn;
    edIdentificacao: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    edPesoUnitario: TJvValidateEdit;
    edPesoBruto: TJvValidateEdit;
    edTaraPallet: TJvValidateEdit;
    edPesoTara: TJvValidateEdit;
    edQuantidade: TJvValidateEdit;
    edVolume: TJvValidateEdit;
    edPesoLiquido: TJvValidateEdit;
    Label9: TLabel;
    edUM: TEdit;
    BitBtn1: TBitBtn;
    Label10: TLabel;
    edPesoBrutoPallet: TJvValidateEdit;
    procedure btOkClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure edTaraPalletExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDadosEtiquetaPallet: TfrmDadosEtiquetaPallet;

implementation

{$R *.dfm}

procedure TfrmDadosEtiquetaPallet.BitBtn1Click(Sender: TObject);
begin
  inherited;
  ModalResult := mrCancel;
end;

procedure TfrmDadosEtiquetaPallet.btOkClick(Sender: TObject);
begin
  inherited;
  ModalResult := mrOk;
end;

procedure TfrmDadosEtiquetaPallet.edTaraPalletExit(Sender: TObject);
begin
  inherited;
  edPesoBrutoPallet.Value := edPesoBruto.Value + edTaraPallet.Value;
end;

end.
