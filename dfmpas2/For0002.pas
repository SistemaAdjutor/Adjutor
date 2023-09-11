unit For0002;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Mask, Grids, DBGrids, RwFunc, ExtCtrls,db, Provider,
  SqlExpr,SqlClientDataSet, DBClient, DBLocal, DBLocalS, Data.DBXFirebird,
  SimpleDS,BaseDBPesquisaSimplesForm, Data.FMTBcd, Vcl.Menus, ACBrEnterTab, ACBrBase, ACBrCalculadora, Vcl.ComCtrls, JvExMask, JvToolEdit;

type
  TFormFornecGrid = class(TfrmBaseDBPesquisaSimples)
    GroupBox1: TGroupBox;
    RadNome: TRadioButton;
    RadCodigo: TRadioButton;
    GbPesquisa: TGroupBox;
    Edt_Lista: TEdit;
    BitProdu: TBitBtn;
    RadCNPJ: TRadioButton;
    cdsBuscoFOR_CODIGO: TStringField;
    cdsBuscoFOR_RAZAO: TStringField;
    cdsBuscoFOR_CONTATO: TStringField;
    cdsBuscoFOR_FONE: TStringField;
    cdsBuscoFOR_ENDERE: TStringField;
    cdsBuscoFOR_BAIRRO: TStringField;
    cdsBuscoFOR_CIDADE: TStringField;
    cdsBuscoFOR_UF: TStringField;
    cdsBuscoFOR_CEP: TStringField;
    cdsBuscoFOR_EMAIL: TStringField;
    cdsBuscoFOR_CGC: TStringField;
    cdsBuscoFOR_INSC: TStringField;
    sqltmstmpfldBuscoFOR_DTCADASTRO: TSQLTimeStampField;
    GbPesquisaData: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    RxDataInicial: TJvDateEdit;
    RxDataFinal: TJvDateEdit;
    procedure RadNomeClick(Sender: tObject);
    procedure RadCodigoClick(Sender: tObject);
    procedure Edt_codigoExit(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure AbreFormProdutos;
    procedure BitProduClick(Sender: tObject);
    procedure Edt_ListaEnter(Sender: tObject);
    procedure Edt_ListaExit(Sender: tObject);
    procedure Edt_ListaKeyPress(Sender: tObject; var Key: Char);
    procedure DBGridFornecKeyPress(Sender: tObject; var Key: Char);
    procedure FormCreate(Sender: tObject);
    procedure cdsBuscoFOR_CGCGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure DBGridDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure cdsBuscoFOR_FONEGetText(Sender: TField; var Text: string; DisplayText: Boolean);
  private
         fRetorno : string;
    procedure LayOutFor;

    procedure Mensagens;

    procedure BuscaFornec;

  public
        Property iRetorno :String Read fRetorno Write fRetorno;
  end;

var
  FormFornecGrid: TFormFornecGrid;

implementation

{$R *.DFM}

uses Uteis,  For0003,iniciodb, For0001;

procedure TFormFornecGrid.RadNomeClick(Sender: tObject);
begin
    LayOutFor;
end;

procedure TFormFornecGrid.RadCodigoClick(Sender: tObject);
begin
    LayOutFor;
end;

procedure TFormFornecGrid.Edt_codigoExit(Sender: tObject);
begin
    BuscaFornec;
end;
procedure TFormFornecGrid.AbreFormProdutos;
begin
    try
       FormForXProd := TFormForXProd.Create(Application);
       try
         FormForXProd.ShowModal;
       finally
         FormForXProd.Destroy;
         FormForXProd := nil //  nil é - From Assigned = False
       end;
     except
         //beep;
         uteis.erro  ('Ocorreu um erro na criação do formulário!');
     end;
end;

procedure TFormFornecGrid.FormShow(Sender: tObject);
begin
 inherited;
  Screen.Cursor := crHourGlass;
  RadNome.Checked := True;
  LayOutFor;
  btnLimpar.Click;
  AbreTabela:=True;
//  BuscaFornec; // abre tabelas
  Screen.Cursor := crDefault;
end;

procedure TFormFornecGrid.LayOutFor;
begin
    if RadCodigo.checked  then
       begin
           GbPesquisa.Caption := 'Informe o código do fornecedor :';
           Edt_Lista.Width := 45;
           Edt_Lista.Text := '';
           Edt_Lista.Visible := True;
           Edt_Lista.MaxLength := 4;
           Edt_Lista.SetFocus;
       end;
    if RadNome.checked  then
       begin
           GbPesquisa.Caption := 'Informe o nome do fornecedor :';
           Edt_Lista.Width := 225;
           Edt_Lista.Text := '';
           Edt_Lista.Visible := True;
           Edt_Lista.MaxLength := 45;
           Edt_Lista.SetFocus;
       end;
     if RadCNPJ.checked  then
       begin
           GbPesquisa.Caption := 'Informe o CNPJ ou CPF do fornecedor :';
           Edt_Lista.Width := 130;
           Edt_Lista.Text := '';
           Edt_Lista.Visible := True;
           Edt_Lista.MaxLength := 14;
           Edt_Lista.SetFocus;
       end;


end;




procedure TFormFornecGrid.BitProduClick(Sender: tObject);
begin
 if not cdsBusco.IsEmpty then
    AbreFormProdutos;
end;

procedure TFormFornecGrid.Mensagens;
begin
    if RadCodigo.checked  then
       begin
           if Edt_Lista.Text = '' then
              uteis.aviso('Informe o Código do Fornecedor !')
           else
              uteis.aviso('Código não encontrado !');
       end;
    if RadNome.checked  then
       begin
           if Edt_Lista.Text = '' then
              uteis.aviso('Informe a Razão Social do Fornecedor !')
           else
              uteis.aviso('Razão Social não encontrado !');
       end;
end;

procedure TFormFornecGrid.Buscafornec;
Var
wSelect,wOrdem :String;
begin
  if RadNome.checked  then
     begin
         wSelect := 'WHERE FOR_RAZAO LIKE '''+Edt_Lista.Text+'%''';
         wOrdem  := 'FOR_RAZAO';
         Filtrados:= true;
     end;
  if RadCodigo.checked  then
     begin
         wSelect := 'WHERE FOR_CODIGO = '''+Edt_Lista.Text+'''';
         wOrdem  := 'FOR_CODIGO';
         Filtrados:= true;
     end;

  if RadCNPJ.checked  then
     begin
         wSelect := 'WHERE FOR_CGC = '''+Edt_Lista.Text+'''';
         wOrdem  := 'FOR_RAZAO';
         Filtrados:= true;
     end;

  qBusco.SQL.Clear;
  qBusco.sql.Text := SQLDEF('FORNECEDORES','Select * from FOR0000',wSelect,'','');

  if (RxDataInicial.Date > 0) and (RxDataFinal.Date > 0)  then
    SqlAdd (' FOR_DATAULTFORNECIMENTO  between ' + DateToSQL(RxDataInicial.Date)+' and '+ DateToSQL(RxDataFinal.Date) )
  else if  (RxDataInicial.Date > 0)  then
    SqlAdd ('  FOR_DATAULTFORNECIMENTO  >= ' + DateToSQL(RxDataInicial.Date))
  else if RxDataFinal.Date > 0 then
    SqlAdd (' FOR_DATAULTFORNECIMENTO <= ' + DateToSQL(RxDataFinal.Date));

  qBusco.sql.Add(' ORDER BY '+wOrdem);

end;

procedure TFormFornecGrid.cdsBuscoFOR_CGCGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if Sender.AsString <> '' then
    Text := MascaraCNPJ_CPF(Sender.AsString)
end;

procedure TFormFornecGrid.cdsBuscoFOR_FONEGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if (not Sender.IsNull) or (Sender.AsString <> '') then
    Text := MascaraFone(SENDER.Value)
  else
    text := '';
end;

procedure TFormFornecGrid.Edt_ListaEnter(Sender: tObject);
begin
    Edt_Lista.Text  := '';

    Edt_Lista.Color := $0080FFFF;
end;

procedure TFormFornecGrid.Edt_ListaExit(Sender: tObject);
begin
    Edt_Lista.Color := clWindow;
    if RadCodigo.checked  then
       Edt_Lista.Text := StrZero(Edt_Lista.Text,Edt_Lista.MaxLength);
end;

procedure TFormFornecGrid.Edt_ListaKeyPress(Sender: tObject;
  var Key: Char);
begin
    if RadCodigo.checked  then
       begin
           if not(Key in['0'..'9',#8]) then
              begin
                  //beep;
                  Key:=#0;
              end;
       end;
end;

procedure TFormFornecGrid.FormCreate(Sender: tObject);
begin
 inherited;
  Left:= 74;
  Top := 37;
  SetTamanhoMinimo(627,970);
  CampoID:='FOR_CODIGO';
  CampoIDRetorno:='FOR_CODIGO';
  ProcedureFiltro:=BuscaFornec;
  aCaption:='Lista de fornecedores/favorecido';
  self.Constraints.MaxHeight:=0;
  self.Constraints.MaxWidth:=0;
  SELF.WindowState := wsMaximized;

  btnImprime.Enabled := Uteis.AcessoUsuario('CadastrosFornecedores',DBInicio.Usuario.CODIGO,FormFornec).Relatorio;
  btnExcel.Enabled := Uteis.AcessoUsuario('CadastrosFornecedores',DBInicio.Usuario.CODIGO,FormFornec).Relatorio;
end;

procedure TFormFornecGrid.DBGridDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
//
end;

procedure TFormFornecGrid.DBGridFornecKeyPress(Sender: tObject;
  var Key: Char);
begin
  if (key = #13) then
   begin
       IDRetorno := cdsBuscoFOR_CODIGO.AsString;
       close;
       Key :=#0;
   end;
end;

end.
