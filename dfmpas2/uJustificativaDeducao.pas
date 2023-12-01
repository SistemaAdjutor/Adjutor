unit uJustificativaDeducao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBForm, Data.DBXFirebird,
  Data.FMTBcd, Data.DB, Data.SqlExpr, ACBrEnterTab, ACBrBase, ACBrCalculadora,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.DBCtrls;

type
  TfrmJustificativaDeducao = class(TfrmBaseDB)
    edJustificativaDeducao: TDBEdit;
    Label9: TLabel;
    Bit_Sair: TBitBtn;
    Bit_Gravar: TBitBtn;
    Bit_Limpar: TBitBtn;
    procedure Bit_GravarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Bit_LimparClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmJustificativaDeducao: TfrmJustificativaDeducao;

implementation

{$R *.dfm}

uses Nfs0004, uteis;

procedure TfrmJustificativaDeducao.Bit_LimparClick(Sender: TObject);
begin
  inherited;
  if not (FrmNotaFiscalServico.cdsNfse_it.State in dsEditModes) then
    FrmNotaFiscalServico.cdsNfse_it.Edit;
  FrmNotaFiscalServico.cdsNfse_itNFSI_JUSTIFICATIVA_DEDUCAO.AsString := '';
  FrmNotaFiscalServico.cdsNfse_it.Post;
end;

procedure TfrmJustificativaDeducao.Bit_GravarClick(Sender: TObject);
begin
  inherited;
    if edJustificativaDeducao.Text = '' then
    begin
      uteis.Aviso('Informe a Justificativa' );
      ModalResult := mrNone;
    end
    else
    if Length(edJustificativaDeducao.Text) < 15 then
    begin
      Uteis.Aviso('Mínimo de 15 decaracteres');
      ModalResult := mrNone;
    end;

end;

procedure TfrmJustificativaDeducao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

end.
