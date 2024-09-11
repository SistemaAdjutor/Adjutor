unit uProdutoEnderecamento;

{$WARNINGS OFF}
{$HINTS OFF}
//{$D-}

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, DBCtrls, Mask, ExtCtrls, ComCtrls, Buttons, DB, DBTables, RwFunc,
  Provider, SqlExpr,  Grids, DBGrids, Data.FMTBCd, BaseForm,
  Datasnap.DBClient, ACBrEnterTab, ACBrBase, ACBrCalculadora, ACBrETQ,
  SgDbSeachComboUnit, ComboBoxRW, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;


type
  TFrmProdutoEnderecamento = class(TFrmBase)
    Label1: TLabel;
    EdtEve_codigo: TEdit;
    Panel1: TPanel;
    DBNavigator1: TDBNavigator;
    Label2: TLabel;
    Panel2: TPanel;
    Bit_novo: TBitBtn;
    Bit_Excluir: TBitBtn;
    Bit_Gravar: TBitBtn;
    Bit_Cancelar: TBitBtn;
    Bit_Sair: TBitBtn;
    DbeEve_descri: TDBEdit;
    GroupBox1: TGroupBox;
    dbgrdDiretivas: TDBGrid;
    dsProdutoEnderecamento: TDataSource;
    CbAlmoxarifadoDestino: TComboBoxRw;
    Label3: TLabel;
    cdsProdutoEnderecamento: TFDQuery;
    cdsProdutoEnderecamentoPRDE_REGISTRO: TIntegerField;
    cdsProdutoEnderecamentoPRDE_ENDERECO: TStringField;
    cdsProdutoEnderecamentoEMP_CODIGO: TStringField;
    cdsProdutoEnderecamentoAMX_CODIGO: TStringField;
    cdsProdutoEnderecamentoAMX_DESCRI: TStringField;
    cdsProdutoEnderecamentoEMP_RAZAO: TStringField;
    procedure Bit_SairClick(Sender: tObject);
    procedure Bit_novoClick(Sender: tObject);
    procedure Bit_ExcluirClick(Sender: tObject);
    procedure Bit_GravarClick(Sender: tObject);
    procedure DesabilitaBotoes;
    procedure BuscaEvento;
    procedure HabilitaBotoes;
    procedure verificaEdicao;
    procedure Bit_CancelarClick(Sender: tObject);
    procedure FormCloseQuery(Sender: tObject; var CanClose: Boolean);
    procedure DBNavigator1Click(Sender: tObject; Button: TNavigateBtn);
    procedure EdtEve_codigoExit(Sender: tObject);
    procedure EdtEve_codigoKeyPress(Sender: tObject; var Key: Char);
    procedure FormCreate(Sender: tObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);

    procedure FormShow(Sender: TObject);
    procedure CdsProdutoEnderecamento1AMX_DESCRIGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure CbAlmoxarifadoDestinoSelect(Sender: TObject);
    procedure cdsProdutoEnderecamentoAfterPost(DataSet: TDataSet);
    procedure cdsProdutoEnderecamentoAfterDelete(DataSet: TDataSet);
  private
  public
     procedure BotoesAcesso;
  end;

var
  FrmProdutoEnderecamento: TFrmProdutoEnderecamento;

implementation

uses uteis, iniciodb, uRegularizacaoEstoque;

{$R *.DFM}

procedure TFrmProdutoEnderecamento.verificaEdicao;
begin

    if CdsProdutoEnderecamento.State in [dsEdit,dsInsert] then
    begin
        if uteis.confirmacao ( 'Deseja salvar alterações ?') = idyes then
           CdsProdutoEnderecamento.ApplyUpdates(0)
        else
            CdsProdutoEnderecamento.Cancel;
        Habilitabotoes;
    end;

end;

procedure TFrmProdutoEnderecamento.HabilitaBotoes;
begin
    Bit_novo.Enabled            := True;
    Bit_Excluir.Enabled         := True;
    Bit_Sair.Visible            := True;
    Bit_Gravar.Enabled          := False;
    Bit_Cancelar.Visible        := False;
    EdtEve_codigo.Color         := clWindow;
    EdtEve_codigo.Enabled       := True;
    DBnavigator1.Enabled        := True;
    if assigned(FrmProdutoEnderecamento)then

    BotoesAcesso;
end;

procedure TFrmProdutoEnderecamento.DesabilitaBotoes;
begin
    BotoesAcesso;
    Bit_novo.Enabled            := False;
    Bit_Excluir.Enabled         := False;
    Bit_Sair.Visible            := False;
    Bit_Gravar.Enabled          := True;
    Bit_Cancelar.Visible        := True;
    EdtEve_codigo.Color         := clSilver;
    EdtEve_codigo.Enabled       := False;
    DBnavigator1.Enabled        := False;

end;

procedure TFrmProdutoEnderecamento.BuscaEvento;// busca por codigo
begin
    if CdsProdutoEnderecamento.Locate('PRDE_REGISTRO',EdtEve_codigo.text,[]) = false then
    begin
         uteis.aviso('Registro do Endereçamento não cadastrado');
         EdtEve_codigo.Text := CdsProdutoEnderecamentoPRDE_REGISTRO.AsString;
    end;
end;

procedure TFrmProdutoEnderecamento.CbAlmoxarifadoDestinoSelect(Sender: TObject);
begin
  inherited;
  DesabilitaBotoes;
end;

procedure TFrmProdutoEnderecamento.CdsProdutoEnderecamento1AMX_DESCRIGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if CdsProdutoEnderecamentoAMX_CODIGO.AsString <> '' then
    Text := dbInicio.BuscaUmDadoSqlAsString('SELECT AMX_CODIGO || '' - '' || AMX_DESCRI FROM ALMOX0000 WHERE AMX_CODIGO = ' + QuotedStr(CdsProdutoEnderecamentoAMX_CODIGO.AsString)) ;
  DisplayText := True;

end;

procedure TFrmProdutoEnderecamento.cdsProdutoEnderecamentoAfterDelete(
  DataSet: TDataSet);
begin
  inherited;
     CdsProdutoEnderecamento.ApplyUpdates(0);

end;

procedure TFrmProdutoEnderecamento.cdsProdutoEnderecamentoAfterPost(
  DataSet: TDataSet);
begin
  inherited;
//     CdsProdutoEnderecamento.ApplyUpdates(0);
end;

procedure TFrmProdutoEnderecamento.Bit_novoClick(Sender: tObject);
begin
    try
      Screen.Cursor := crHourglass;
      CdsProdutoEnderecamento.Insert;
      CdsProdutoEnderecamentoEMP_CODIGO.AsString := dbInicio.empresa.emp_codigo;
      Edteve_codigo.Text := '00';
      DesabilitaBotoes;
      uteis.HabilitaIncluir('CadastrosTabelas',DBInicio.Usuario.CODIGO,FrmProdutoEnderecamento);
      screen.cursor := crdefault;
    except on E:EDataBaseError do
        uteis.erro  (pchar('Erro ao inserir o registro !'+e.Message));
    end;
end;

procedure TFrmProdutoEnderecamento.Bit_ExcluirClick(Sender: tObject);
begin
    if CdsProdutoEnderecamento.IsEmpty Then   //evita exclussão de registro
       Begin                                      // em uma Tabela Vazia.
           messagebeep($ffff);
           uteis.aviso('Não existe Endereçamento Cadastrado !!!');
           exit;
       end;
    if uteis.confirmacao ( 'Deseja Excluir este Endereçamento?')= Mryes then
       begin
           Screen.cursor :=crHourglass;
           CdsProdutoEnderecamento.Delete;
           CdsProdutoEnderecamento.ApplyUpdates(0);
           screen.cursor := crDefault;
       end;
       EdtEve_codigo.text := CdsProdutoEnderecamentoPRDE_REGISTRO.AsString;
end;

procedure TFrmProdutoEnderecamento.Bit_GravarClick(Sender: tObject);
begin
    if DbeEve_descri.Text = '' then
      begin
          //beep;
          uteis.aviso('Digite a Descrição!');
          screen.cursor := crDefault;
          exit;
      end;
      try
        Screen.Cursor := crHourGlass;
        CdsProdutoEnderecamento.ApplyUpdates(0);
        CdsProdutoEnderecamento.CommitUpdates;
        CdsProdutoEnderecamento.refresh;
        dsProdutoEnderecamento.AutoEdit := true;
        Screen.Cursor := crDefault;
        Habilitabotoes;
        EdtEve_codigo.Text := CdsProdutoEnderecamentoPRDE_REGISTRO.AsString;
      except on E:EdatabaseError do
         uteis.erro  (Pchar('Erro ao gravar registro !'+e.Message));
      end;
end;

procedure TFrmProdutoEnderecamento.Bit_CancelarClick(Sender: tObject);
begin
    Screen.Cursor := crHourGlass;
    CdsProdutoEnderecamento.Cancel;
    if CdsProdutoEnderecamento.IsEmpty Then   //Ao cancelar ultimo record da
       begin                                          //tabela deixa autoedit=true;
         dsProdutoEnderecamento.AutoEdit := False;
         EdtEve_codigo.Enabled := False;
       end;
    HabilitaBotoes;
    EdtEve_codigo.Text := CdsProdutoEnderecamentoPRDE_REGISTRO.AsString;
    Screen.Cursor := crDefault;
end;

procedure TFrmProdutoEnderecamento.Bit_SairClick(Sender: tObject);
begin
   close;
end;

procedure TFrmProdutoEnderecamento.BotoesAcesso;
begin
     if assigned(FrmProdutoEnderecamento) then
     begin
       Bit_novo.Enabled := Uteis.AcessoUsuario('CadastrosTabelas',DBInicio.Usuario.CODIGO,FrmProdutoEnderecamento).Incluir;
       Bit_Excluir.Enabled := Uteis.AcessoUsuario('CadastrosTabelas',DBInicio.Usuario.CODIGO,FrmProdutoEnderecamento).Exluir;
       dsProdutoEnderecamento.AutoEdit := Uteis.AcessoUsuario('CadastrosTabelas',DBInicio.Usuario.CODIGO,FrmProdutoEnderecamento).Alterar;
     end;
end;

procedure TFrmProdutoEnderecamento.DBNavigator1Click(Sender: tObject;
  Button: TNavigateBtn);
begin
    EdtEve_codigo.Text := CdsProdutoEnderecamentoPRDE_REGISTRO.AsString;
end;

procedure TFrmProdutoEnderecamento.EdtEve_codigoExit(Sender: tObject);
begin
    if (ActiveControl <> nil) then
      if (ActiveControl.Name = 'Bit_Cancelar') or (ActiveControl.Name = 'Bit_Sair') or (ActiveControl.Name = 'Bit_novo') then
         exit;
      if EdtEve_codigo.Text <> '' then
         begin
             if CdsProdutoEnderecamento.State in [Dsbrowse] then
                BuscaEvento;
         end
      else
         begin
             uteis.aviso('Informe o Código do Endereçamento !');
             EdtEve_Codigo.SelectAll;
         end;
end;
procedure TFrmProdutoEnderecamento.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if frmRegularizacaoEstoque <> nil then
  begin
    frmRegularizacaoEstoque.cdsEnderecamento.Close;
    frmRegularizacaoEstoque.cdsEnderecamento.Open;
    frmRegularizacaoEstoque.lcEnderecamento.Refresh;
  end;
  Action := CaFree;
end;

procedure TFrmProdutoEnderecamento.FormCloseQuery(Sender: tObject;
  var CanClose: Boolean);
begin
     inherited;
     VerificaEdicao;
end;

procedure TFrmProdutoEnderecamento.FormCreate(Sender: tObject);
begin
    inherited;
//    width := 679;
//    height  := 487;

    CdsProdutoEnderecamento.Close;
    if dbinicio.Exclusivo('ENDERECO_ESTOQUE') then
      cdsProdutoEnderecamento.SQL.Text := SQLDEF('TABELAS','SELECT DISTINCT PE.PRDE_REGISTRO, PE.PRDE_ENDERECO, PE.EMP_CODIGO, PE.AMX_CODIGO, E.EMP_RAZAO  ' +
                                                               ' FROM PRD0000_ENDERECAMENTO pe ' +
                                                              // ' JOIN PRD0000_ENDERECAMENTO_EMPRESA pee ON (pe.PRDE_REGISTRO = pee.PRDE_REGISTRO AND pee.EMP_CODIGO = pe.EMP_CODIGO ) ' +
                                                               ' JOIN EMP0000 e ON (e.EMP_CODIGO = pe.EMP_CODIGO )',
                                                               ConcatSe('WHERE pe.', dbinicio.ExclusivoSql('ENDERECO_ESTOQUE'))  ,'PRDE_ENDERECO','')
    else
      cdsProdutoEnderecamento.SQL.Text := SQLDEF('TABELAS','SELECT DISTINCT PE.PRDE_REGISTRO, PE.PRDE_ENDERECO, PE.EMP_CODIGO, PE.AMX_CODIGO, E.EMP_RAZAO  ' +
                                                              ' FROM PRD0000_ENDERECAMENTO pe ' +
                                                              // ' LEFT JOIN PRD0000_ENDERECAMENTO_EMPRESA pee ON (pe.PRDE_REGISTRO = pee.PRDE_REGISTRO AND pee.EMP_CODIGO = pe.EMP_CODIGO ) ' +
                                                              ' LEFT JOIN EMP0000 e ON (e.EMP_CODIGO = pe.EMP_CODIGO )',
                                                              ConcatSe('WHERE pe.', dbinicio.ExclusivoSql('ENDERECO_ESTOQUE'))  ,'pe.PRDE_ENDERECO','');
    CdsProdutoEnderecamento.open;
    Habilitabotoes;
    if CdsProdutoEnderecamento.IsEmpty Then  //Evita alteração antes que se
       dsProdutoEnderecamento.AutoEdit := False;
    EdtEve_codigo.text := CdsProdutoEnderecamentoPRDE_REGISTRO.AsString;

end;

procedure TFrmProdutoEnderecamento.FormDestroy(Sender: TObject);
begin
  inherited;
  FrmProdutoEnderecamento := Nil;
end;

procedure TFrmProdutoEnderecamento.FormShow(Sender: TObject);
begin
  inherited;
  BotoesAcesso;
end;

procedure TFrmProdutoEnderecamento.EdtEve_codigoKeyPress(Sender: tObject;
  var Key: Char);
begin
    if not (key in ['0'..'9',#8]) then
       Key := #0;
end;

end.

