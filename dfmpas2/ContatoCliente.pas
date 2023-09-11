unit ContatoCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBCd, DB, DBClient, Provider, SqlExpr, Grids, DBGrids,
  StdCtrls, Buttons, Email0000, Uteis, UFUNCOES;

type
  TFrmContatoCliente = class(TForm)
    grpContato: TGroupBox;
    edtContatoBuscar: TEdit;
    BitPesquisar: TBitBtn;
    grpListaContato: TGroupBox;
    dbgrdContatos: TDBGrid;
    SqlCLienteContato: TSQLDataSet;
    SqlCLienteContatoCC_REGISTRO: TIntegerField;
    SqlCLienteContatoCLI_CODIGO: TStringField;
    SqlCLienteContatoCC_NOME: TStringField;
    SqlCLienteContatoCC_CARGO: TStringField;
    SqlCLienteContatoCC_TELEFONE: TStringField;
    SqlCLienteContatoCC_CELULAR: TStringField;
    SqlCLienteContatoCC_RAMAL: TStringField;
    SqlCLienteContatoCC_EMAIL: TStringField;
    DspClienteContato: TDataSetProvider;
    CdsClienteContato: TClientDataSet;
    CdsClienteContatoCC_REGISTRO: TIntegerField;
    CdsClienteContatoCLI_CODIGO: TStringField;
    CdsClienteContatoCC_NOME: TStringField;
    CdsClienteContatoCC_CARGO: TStringField;
    CdsClienteContatoCC_TELEFONE: TStringField;
    CdsClienteContatoCC_CELULAR: TStringField;
    CdsClienteContatoCC_RAMAL: TStringField;
    CdsClienteContatoCC_EMAIL: TStringField;
    DsClienteContato: TDataSource;
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure edtContatoBuscarChange(Sender: tObject);
    procedure BitPesquisarClick(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure dbgrdContatosDblClick(Sender: tObject);
    procedure dbgrdContatosKeyPress(Sender: tObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
  private
      fTextoRetorno :string;
      fnome :string;
      ftelefone : string;
  public
    { Public declarations }
    sClienteCodigo : String;
    procedure BuscaContato;
    procedure SelecionaContato;
    property TextoRetorno : string read fTextoRetorno write fTextoRetorno;
    property Nome :string read fnome write fnome;
    property Telefone :string read ftelefone write ftelefone;
  end;

var
  FrmContatoCliente: TFrmContatoCliente;

implementation

{$R *.dfm}

{ TFrmContatoCliente }

procedure TFrmContatoCliente.BuscaContato;
begin
  CdsClienteContato.Close;
  if (sClienteCodigo <> '') then
    begin
      CdsClienteContato.CommandText := 'select * from CLI_CONTATO T1 where CLI_CODIGO = '+QuotedStr(sClienteCodigo)+' and cc_nome like '+QuotedStr('%'+edtContatoBuscar.Text+'%')+' ORDER BY T1.cc_nome';
      CdsClienteContato.Open;
    end
  else
    begin
      CdsClienteContato.CommandText := 'select * from CLI_CONTATO T1 where cc_nome like '+QuotedStr('%'+edtContatoBuscar.Text+'%')+' ORDER BY T1.cc_nome';
      CdsClienteContato.Open;
    end;
end;

procedure TFrmContatoCliente.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
  CdsClienteContato.Close;
end;

procedure TFrmContatoCliente.FormCreate(Sender: TObject);
begin
     fTextoRetorno:='';
end;

procedure TFrmContatoCliente.SelecionaContato;
begin
  if (CdsClienteContato.IsEmpty) then
     uteis.aviso('Contato não selecionado')
  else
  begin
     if Assigned(FrmEmail) then
        TextoRetorno := FrmEmail.EdMail.Text + IIF(Trim(FrmEmail.EdMail.Text) <> '',';','')+CdsClienteContatoCC_EMAIL.AsString
     else
     begin
        TextoRetorno := CdsClienteContatoCC_EMAIL.AsString;
        nome := CdsClienteContatoCC_NOME.AsString;
        Telefone := CdsClienteContatoCC_TELEFONE.AsString;
     end;
       Close;
  end;
end;

procedure TFrmContatoCliente.edtContatoBuscarChange(Sender: tObject);
begin
  BuscaContato;
end;

procedure TFrmContatoCliente.BitPesquisarClick(Sender: tObject);
begin
  BuscaContato;
end;

procedure TFrmContatoCliente.FormShow(Sender: tObject);
begin
  BuscaContato;
end;

procedure TFrmContatoCliente.dbgrdContatosDblClick(Sender: tObject);
begin
     SelecionaContato;
end;

procedure TFrmContatoCliente.dbgrdContatosKeyPress(Sender: tObject;
  var Key: Char);
begin
  if (Key = #13) then
    begin
      Key := #0;
      SelecionaContato;
    end;
end;

end.
