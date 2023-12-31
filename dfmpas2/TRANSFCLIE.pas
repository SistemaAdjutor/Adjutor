unit TRANSFCLIE;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Provider, SqlExpr,SqlClientDataSet, DB, DBClient, DBLocal,
  DBLocalS, Grids, DBGrids, RwFunc, FMTBCd, Mask,  rxToolEdit,  rxCurrEdit,
  ComCtrls, SimpleDS, Data.DBXFirebird;

type
  TFormTransfClie = class(TForm)
    GroupReprInativo: TGroupBox;
    GroupBox1: TGroupBox;
    CbxRepInativo: TComboBox;
    CbxRepAtivo: TComboBox;
    Bit_Sair: TBitBtn;
    BitTransf: TBitBtn;
    GroupListaClie: TGroupBox;
    dbgridClientes: TDBGrid;
    SqlCdsRepInativo: TSQLClientDataSet;
    SqlCdsRepAtivo: TSQLClientDataSet;
    SqlCdsRepInativoREP_CODIGO: TStringField;
    SqlCdsRepInativoREP_NOME: TStringField;
    SqlCdsRepInativoREP_SITUACAO: TStringField;
    SqlCdsRepInativoEMP_CODIGO: TStringField;
    SqlCdsRepAtivoREP_CODIGO: TStringField;
    SqlCdsRepAtivoREP_NOME: TStringField;
    SqlCdsRepAtivoREP_SITUACAO: TStringField;
    SqlCdsRepAtivoEMP_CODIGO: TStringField;
    Dsclie: TDataSource;
    SqlClientes: TSQLDataSet;
    DspClientes: TDataSetProvider;
    CdsClientes: TClientDataSet;
    SqlClientesCLI_CODIGO: TStringField;
    SqlClientesCLI_RAZAO: TStringField;
    SqlClientesREP_CODIGO: TStringField;
    SqlClientesREP_NOME: TStringField;
    CdsClientesCLI_CODIGO: TStringField;
    CdsClientesCLI_RAZAO: TStringField;
    CdsClientesREP_CODIGO: TStringField;
    CdsClientesREP_NOME: TStringField;
    CdsClientesREP_NOVO: TStringField;
    CdsClientesREP_NVNOME: TStringField;
    EditRepInativo: TCurrencyEdit;
    EditRepAtivo: TCurrencyEdit;
    StatusBar1: TStatusBar;
    lbl1: TLabel;
    edtEnumInativos: TEdit;
    procedure FormShow(Sender: tObject);
    procedure CbxRepInativoClick(Sender: tObject);
    procedure CbxRepAtivoClick(Sender: tObject);
    procedure dbgridClientesDblClick(Sender: tObject);
    procedure Bit_SairClick(Sender: tObject);
    procedure FormCloseQuery(Sender: tObject; var CanClose: Boolean);
    procedure BitTransfClick(Sender: tObject);
    procedure EditRepInativoExit(Sender: tObject);
    procedure EditRepAtivoExit(Sender: tObject);
    procedure CbxRepInativoEnter(Sender: tObject);
    procedure CbxRepAtivoEnter(Sender: tObject);
    procedure EditRepInativoEnter(Sender: tObject);
    procedure EditRepAtivoEnter(Sender: tObject);
    procedure dbgridClientesKeyPress(Sender: tObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    procedure BuscaClientes;
    procedure AtribuirRepresentanteAtivo;
    function RetornaQuantidadeRegistros(sTabela, sCondicao: String): Integer;
  public
    { Public declarations }
  end;

var
  FormTransfClie: TFormTransfClie;

implementation

uses DataCad, {uProcedimentos,} uteis, iniciodb;

{$R *.dfm}





procedure TFormTransfClie.FormShow(Sender: tObject);
begin
    LEFT := 1;
    TOP  := 36;
    screen.cursor:=CrHourglass;
    try
      SqlCdsRepInativo.Close;
      SqlCdsRepInativo.CommandText := SQLDEF('REPRESENTANTES','SELECT REP_CODIGO,REP_NOME,REP_SITUACAO,EMP_CODIGO FROM REP0000','WHERE REP_SITUACAO = ''I''','REP_SITUACAO,REP_NOME','');
      SqlCdsRepInativo.Open;
      SqlCdsRepInativo.First;
      while not SqlCdsRepInativo.Eof do
       begin
           CbxRepInativo.Items.Add(SqlCdsRepInativoREP_NOME.AsString);
           SqlCdsRepInativo.Next;
       end;
      CbxRepInativo.ItemIndex := 0;
    except on E:EDataBaseError do
        uteis.erro  (Pchar('Error ao Abrir a Tabela Representantes Inativos !'+e.message));
    end;
    //
    try
      SqlCdsRepAtivo.Close;
      SqlCdsRepAtivo.CommandText := SQLDEF('REPRESENTANTES','SELECT REP_CODIGO,REP_NOME,REP_SITUACAO,EMP_CODIGO FROM REP0000','WHERE REP_SITUACAO = ''A''','REP_SITUACAO,REP_NOME','');
      SqlCdsRepAtivo.Open;
      SqlCdsRepAtivo.First;
      while not SqlCdsRepAtivo.Eof do
       begin
           CbxRepAtivo.Items.Add(SqlCdsRepAtivoREP_NOME.AsString);
           SqlCdsRepAtivo.Next;
       end;
      CbxRepAtivo.ItemIndex := 0;
    except on E:EDataBaseError do
        uteis.erro  (Pchar('Error ao Abrir a Tabela Representantes Ativos !'+e.message));
    end;
     edtEnumInativos.Text := '000';
    screen.cursor:=CrDefault;
end;

procedure TFormTransfClie.CbxRepInativoClick(Sender: tObject);
begin
    IF CbxRepInativo.ItemIndex <> 0 then
       begin
           if SqlCdsRepInativo.Locate('REP_NOME',CbxRepInativo.Text,[]) = true then
              begin
                  EditRepInativo.value:= SqlCdsRepInativoREP_CODIGO.AsCurrency;
                  BuscaClientes;
              end;
       end;
end;

procedure TFormTransfClie.CbxRepAtivoClick(Sender: tObject);
begin
    if CbxRepAtivo.ItemIndex <> 0 then
       begin
           if SqlCdsRepAtivo.Locate('REP_NOME',CbxRepAtivo.Text,[])= True then
              begin
                  EditRepAtivo.Value:= SqlCdsRepAtivoREP_CODIGO.AsCurrency;
              end;
       end;
end;

procedure TFormTransfClie.dbgridClientesDblClick(Sender: tObject);
begin
   AtribuirRepresentanteAtivo;
end;

procedure TFormTransfClie.Bit_SairClick(Sender: tObject);
begin
    Close;
end;

procedure TFormTransfClie.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     Action := CaFree;
end;

procedure TFormTransfClie.FormCloseQuery(Sender: tObject;
  var CanClose: Boolean);
begin
    try
      CdsClientes.Close;
      SqlCdsRepInativo.Close;
      SqlCdsRepAtivo.Close;
    except on E:EdataBaseError do
        uteis.erro  (pchar('Erro ao Fechar as Tabelas !'+e.message));
    end;
end;

procedure TFormTransfClie.FormDestroy(Sender: TObject);
begin
     FormTransfClie := Nil;
end;

procedure TFormTransfClie.BitTransfClick(Sender: tObject);
begin
    try
      CdsClientes.First;
      CdsClientes.DisableControls;
      while not CdsClientes.Eof do
        begin
          CdsClientes.Edit;
          if CdsCLientesREP_NOVO.AsString <> '' then
             CdsCLientesREP_CODIGO.AsString := CdsCLientes.FieldByName('REP_NOVO').AsString
          else
            CdsCLientesREP_CODIGO.AsString := StrZero(EditRepAtivo.Text,3);

          CdsClientes.ApplyUpdates(0);
          CdsClientes.Next;
        end;
      CbxRepInativo.Enabled := True;
      CdsClientes.EnableControls;
      CdsClientes.Close;
    except on E:EDatabaseError do
        begin
            uteis.erro  (Pchar('Erro ao Transferir vendedor !'+e.message));
            exit;
        end;
    end;
    uteis.aviso('Transfer�ncia Efetuada com Sucesso !');
    CbxRepInativo.ItemIndex := 0;
    CbxRepAtivo.ItemIndex   := 0;
    EditRepInativo.Text     := '000';
    EditRepAtivo.Text       := '000';
end;

procedure TFormTransfClie.BuscaClientes;
begin
    try
      CdsClientes.Close;
      CdsClientes.CommandText := SQLDEF('CLIENTES','Select C1.CLI_CODIGO,C1.CLI_RAZAO,C1.REP_CODIGO,R1.REP_NOME from CLI0000 C1 '+
                                                   'JOIN REP0000 R1 ON C1.REP_CODIGO = R1.REP_CODIGO','WHERE R1.REP_CODIGO = '''+StrZero(EditRepInativo.Text,3)+'''','C1.CLI_RAZAO','C1.');
      CdsClientes.open;
      if CdsClientes.IsEmpty then
         begin
             uteis.aviso('N�o existem Clientes do Vendedor Inativo.');
             CbxRepInativo.ItemIndex := 0;
             EditRepInativo.Value := 0;
             EditRepInativo.SetFocus;
         end;
         edtEnumInativos.Text := IntToStr(RetornaQuantidadeRegistros('CLI0000','REP_CODIGO = '''+StrZero(EditRepInativo.Text,3)+''''));

    except on E:EdataBaseError do
        uteis.erro  (Pchar('Erro ao Abrir a Tabela de Clientes !'+e.message));
    end;
end;

procedure TFormTransfClie.EditRepInativoExit(Sender: tObject);
begin
    if EditRepInativo.Value <> 0 then
       begin
           If SqlCdsRepInativo.Locate('REP_CODIGO',FormatFloat('000',EditRepInativo.AsInteger),[])=true then
              Begin
                  EditRepInativo.value:= SqlCdsRepInativoREP_CODIGO.AsCurrency;
                  BuscaClientes;
              end
           else
              begin
                  uteis.aviso('Vendedor Inativo n�o encontrado !');
                  EditRepInativo.Value := 0;
                  EditRepInativo.SetFocus;
                  CbxRepInativo.ItemIndex := 0;
              end;
        end;
    EditRepInativo.Color := clwindow;
end;

procedure TFormTransfClie.EditRepAtivoExit(Sender: tObject);
begin
    if EditRepAtivo.Value <> 0 then
       begin
           If SqlCdsRepAtivo.Locate('REP_CODIGO',FormatFloat('000',EditRepAtivo.AsInteger),[])=true then
              Begin
                  CbxRepAtivo.Text := SqlCdsRepAtivoREP_NOME.AsString;
              end
           else
              begin
                  uteis.aviso('Vendedor Ativo n�o foi encontrado!');
                  EditRepAtivo.Value := 0;
                  EditRepAtivo.SetFocus;
                  CbxRepAtivo.ItemIndex := 0;
              end;
        end;
    EditRepAtivo.Color := clwindow;
end;

{***************************************************************}
function TFormTransfClie.RetornaQuantidadeRegistros(sTabela,sCondicao:String):Integer;
begin
   //
   DataCadastros.sqlUpdate.Close;
   DataCadastros.SqlUpdate.sql.text :='SELECT cast(count(*) as integer) as qtde from  '+sTabela+ IIF(sCondicao <> '',' where '+sCondicao,'');
   DataCadastros.sqlUpdate.open;
   if (not DataCadastros.sqlUpdate.IsEmpty) then
      Result := DataCadastros.sqlUpdate.FieldByName('qtde').AsInteger
   else
      Result := 0;
   DataCadastros.sqlUpdate.Close;
end;

procedure TFormTransfClie.CbxRepInativoEnter(Sender: tObject);
begin
    CbxRepInativo.SelectAll;
end;

procedure TFormTransfClie.CbxRepAtivoEnter(Sender: tObject);
begin
    CbxRepAtivo.SelectAll;
end;

procedure TFormTransfClie.EditRepInativoEnter(Sender: tObject);
begin
    EditRepInativo.SelectAll;
end;

procedure TFormTransfClie.EditRepAtivoEnter(Sender: tObject);
begin
    EditRepAtivo.SelectAll;
end;

procedure TFormTransfClie.AtribuirRepresentanteAtivo;
begin
    if EditRepAtivo.Text = '' then
       uteis.aviso('Cliente n�o ser� transferido. N�o foi selecionado vendedor ativo');

    if ((EditRepAtivo.Text) <> '000') then
       begin
           CbxRepInativo.Enabled := False;
           CdsClientes.Edit;
           if CdsCLientesREP_NOVO.AsString = '' then
              begin
                  CdsCLientesREP_NOVO.AsString   := StrZero(EditRepAtivo.Text,3);
                  CdsClientesREP_NVNOME.AsString := CbxRepAtivo.Text;
              end
           else
              begin
                  CdsCLientesREP_NOVO.AsString   := '';
                  CdsClientesREP_NVNOME.AsString := '';
              end;
           CdsClientes.Post;
       end;

end;

procedure TFormTransfClie.dbgridClientesKeyPress(Sender: tObject; var Key: Char);
begin
    if (Key =#13) then
       begin
           AtribuirRepresentanteAtivo;
           Key := #0;
       end;
end;

end.
