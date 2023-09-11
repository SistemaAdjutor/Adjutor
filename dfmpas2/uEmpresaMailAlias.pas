unit uEmpresaMailAlias;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBForm, Data.DBXFirebird, Data.FMTBcd, Vcl.ExtCtrls, Vcl.StdCtrls, Data.DB, Data.SqlExpr, ACBrEnterTab, ACBrBase, ACBrCalculadora, Vcl.Buttons;

type
  TfrmEmpresaMailAlias = class(TfrmBaseDB)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    edEmpNFEMailAlias: TEdit;
    edEmpFinanceiroMailAlias: TEdit;
    Panel1: TPanel;
    Bit_Excluir: TBitBtn;
    Bit_Gravar: TBitBtn;
    Bit_Sair: TBitBtn;
    procedure Bit_ExcluirClick(Sender: TObject);
    procedure Bit_GravarClick(Sender: TObject);
    procedure Bit_SairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure AtualizaBanco;
  public
    { Public declarations }
  end;

var
  frmEmpresaMailAlias: TfrmEmpresaMailAlias;

implementation

{$R *.dfm}

uses Emp0001;

procedure TfrmEmpresaMailAlias.AtualizaBanco;
begin
  qAux.Close;
  qAux.SQL.Text := 'UPDATE EMP0000 SET ' +
                   ' EMP_NFE_MAIL_ALIAS = ' + QuotedStr(edEmpNFEMailAlias.Text) + ', ' +
                   ' EMP_FINANCEIRO_MAIL_ALIAS = ' + QuotedStr(edEmpFinanceiroMailAlias.Text) +
                   ' WHERE EMP_CODIGO = ' + QuotedStr(FormEmpresa.EdtEmp_Codigo.Text );
  qAux.ExecSQL;
  MessageDlg('Registro atualizado com sucesso.', mtInformation, [mbOk], 0);
  Close;
end;

procedure TfrmEmpresaMailAlias.Bit_ExcluirClick(Sender: TObject);
begin
  inherited;
  if MessageDlg('Confirma Exclusão dos dados de envio de email?', mtConfirmation, [mbYes, mbNo], 0)<> mrYes then
    Exit;
  edEmpNFEMailAlias.Clear;
  edEmpFinanceiroMailAlias.Clear;
  AtualizaBanco;
end;

procedure TfrmEmpresaMailAlias.Bit_GravarClick(Sender: TObject);
begin
  inherited;
  AtualizaBanco;
end;

procedure TfrmEmpresaMailAlias.Bit_SairClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmEmpresaMailAlias.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
  frmEmpresaMailAlias := nil;
end;

end.
