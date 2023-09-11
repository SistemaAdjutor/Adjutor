unit TRANSFCTACAIXA;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SqlExpr,SqlClientDataSet, Provider, DB, DBClient, DBLocal, DBLocalS, StdCtrls,
  Buttons, DBCtrls, Mask,  rxToolEdit, rxCurrEdit, SimpleDS, Data.DBXFirebird;

type
  TFrmTransfCtaCaixa = class(TForm)
    Grp_Pesquisa: TGroupBox;
    Grp_Conta: TGroupBox;
    BitSair: TBitBtn;
    BitPesquisa: TBitBtn;
    Label1: TLabel;
    Edt_De_Razao: TEdit;
    Label2: TLabel;
    Cb_Para: TComboBox;
    Bit_Gravar: TBitBtn;
    Bit_Cancelar: TBitBtn;
    SqlCdsFornecedor: TSQLClientDataSet;
    SqlContaCaixa: TSQLClientDataSet;
    SqlCdsFornecedorFOR_CODIGO: TStringField;
    SqlCdsFornecedorFOR_RAZAO: TStringField;
    DsForn: TDataSource;
    Curr_Forn: TCurrencyEdit;
    Cb_Forn: TComboBox;
    Curr_Para: TCurrencyEdit;
    SqlContaCaixaCCT_CODIGO: TStringField;
    SqlContaCaixaCCT_DESCRI: TStringField;
    Curr_De_Forn: TCurrencyEdit;
    procedure BitSairClick(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure Cb_FornExit(Sender: tObject);
    procedure BitPesquisaClick(Sender: tObject);
    procedure Curr_FornExit(Sender: tObject);
    procedure Curr_ParaExit(Sender: tObject);
    procedure Cb_ParaExit(Sender: tObject);
    procedure Bit_CancelarClick(Sender: tObject);
    procedure Bit_GravarClick(Sender: tObject);

    procedure MudaCorCampos(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);

  private
    { Private declarations }
      {campos}
    CampoEdit    : TEdit;
    CampoCombo   : TComboBox;
    CampoCurrency: TCurrencyEdit;

    procedure Carrega_Combo_Fornecedor;
    procedure Transfere_Conta_Caixa(sCodFor,sConta:String);
    Function Busca_Cta_Caixa_Fornecedor(sCodFor:String):Boolean;
  public
    { Public declarations }
  end;

var
  FrmTransfCtaCaixa: TFrmTransfCtaCaixa;

implementation

uses DataCad, RWFunc, DataMov2, uteis, iniciodb;

{$R *.dfm}

procedure TFrmTransfCtaCaixa.BitSairClick(Sender: tObject);
begin
   Close;
end;

procedure TFrmTransfCtaCaixa.Carrega_Combo_Fornecedor;
begin
   try
     SqlCdsFornecedor.Close;
     SqlCdsFornecedor.CommandText := SQLDEF('FORNECEDORES','SELECT T1.FOR_CODIGO,T1.FOR_RAZAO FROM FOR0000 T1 ','','T1.FOR_RAZAO','T1.');
     SqlCdsFornecedor.Open;
     SqlCdsFornecedor.First;
     Curr_Forn.Clear;
     Cb_Forn.Items.Clear;
     while (not SqlCdsFornecedor.Eof) do
      begin
         Cb_Forn.Items.Add(SqlCdsFornecedorFOR_RAZAO.AsString);
         SqlCdsFornecedor.Next;
      end;
     SqlCdsFornecedor.First;
     Curr_Forn.Text    := '0000';
     Cb_Forn.ItemIndex := -1;
   except
     on E:EDataBaseError do
       begin
          uteis.erro  (pchar('Erro ao Carregar a Combo do Fornecedor !'+#13#10+
                     'Mensagem erro: '+e.message));
       end;
   end;
   try
     SqlContaCaixa.Close;
     SqlContaCaixa.CommandText := SQLDEF('PAGAR','SELECT T1.CCT_CODIGO,T1.CCT_DESCRI FROM CCT_0000 T1 ','where T1.CCT_CONTA= ''S'' and T1.CCT_STATUS = ''L''','T1.CCT_DESCRI','T1.');
     SqlContaCaixa.Open;
     SqlContaCaixa.First;
     Curr_Para.Clear;
     Cb_Para.Items.Clear;
     while (not SqlContaCaixa.Eof) do
      begin
         Cb_Para.Items.Add(SqlContaCaixaCCT_DESCRI.AsString);
         SqlContaCaixa.Next;
      end;
     SqlContaCaixa.First;
     Curr_Para.Text    := '000';
     Cb_Para.ItemIndex := -1;
   except
     on E:EDataBaseError do
       begin
          uteis.erro  (pchar('Erro ao Carregar a Combo da Conta Caixa !'+#13#10+
                     'Mensagem erro: '+e.message));
       end;
   end;
end;

procedure TFrmTransfCtaCaixa.FormShow(Sender: tObject);
begin
   Screen.OnActiveControlChange   := MudaCorCampos;
   Carrega_Combo_Fornecedor;
end;

procedure TFrmTransfCtaCaixa.Cb_FornExit(Sender: tObject);
begin
   if (ActiveControl <> nil)
   and(ActiveControl.Name <> 'Curr_Forn')
   and(ActiveControl.Name <> 'BitSair') then
      begin
         if (Trim(Cb_Forn.Text) <> '') then
            begin
               SqlCdsFornecedor.Locate('FOR_RAZAO',Cb_Forn.Text,[]);
               Curr_Forn.Text := SqlCdsFornecedorFOR_CODIGO.AsString;
            end
         else
            begin
               uteis.aviso('Informe o Fornecedor !');
               Curr_Forn.SetFocus;
               Curr_Forn.SelectAll;
            end;
      end;
end;

procedure TFrmTransfCtaCaixa.BitPesquisaClick(Sender: tObject);
begin
   if Busca_Cta_Caixa_Fornecedor(StrZero(Curr_Forn.Text,4)) then
      begin
         Grp_Conta.Enabled := True;
         Curr_Para.SetFocus;
         Curr_Para.SelectAll;
      end;
end;

Function TFrmTransfCtaCaixa.Busca_Cta_Caixa_Fornecedor(sCodFor: String):Boolean;
begin
   wSql1 := 'SELECT T1.CCT_CODIGO,T2.CCT_DESCRI FROM FOR0000 T1 ';
   wSql2 := 'LEFT JOIN CCT_0000 T2 ON (T2.CCT_CODIGO = T1.CCT_CODIGO) AND (T2.EMP_CODIGO = T1.EMP_CODIGO) ';
   wSql3 := 'WHERE T1.FOR_CODIGO = '''+sCodFor+'''';
   DataCadastros.sqlUpdate.Close;
   DataCadastros.SqlUpdate.sql.text :=SQLDEF('FORNECEDORES',wSql1+wSql2,wSql3,'','T1.');
   DataCadastros.sqlUpdate.Open;
   if (not DataCadastros.sqlUpdate.IsEmpty) then
      begin
         {Verifica a conta caixa do Fornecedor é válida}
         wSql1 := 'SELECT T1.CCT_CODIGO FROM CCT_0000 T1 ';
         wSql2 := 'WHERE T1.CCT_CODIGO = '''+DataCadastros.sqlUpdate.FieldByName('CCT_CODIGO').AsString+'''';
         //
         DataMovimento2.sqlaux.Close;
         DataMovimento2.sqlaux.sql.text := SQLDEF('PAGAR',wSql1,wSql2,'','T1.');
         DataMovimento2.sqlaux.Open;
         if (not DataMovimento2.sqlaux.IsEmpty) then
            begin
               Curr_De_Forn.Text := DataCadastros.sqlUpdate.FieldByName('CCT_CODIGO').AsString;
               Edt_De_Razao.Text := DataCadastros.sqlUpdate.FieldByName('CCT_DESCRI').AsString;
               Grp_Pesquisa.Enabled := False;
               BitPesquisa.Enabled  := False;
               BitSair.Enabled      := False;
               Grp_Conta.Enabled    := True;
               Bit_Gravar.Enabled   := True;
               Bit_Cancelar.Enabled := True;
               Result := True;
            end
         else
            begin
               Curr_De_Forn.Text := DataCadastros.sqlUpdate.FieldByName('CCT_CODIGO').AsString;
               Edt_De_Razao.Text := DataCadastros.sqlUpdate.FieldByName('CCT_DESCRI').AsString;
               if uteis.confirmacao ( ('Conta Caixa do Fornecedor não existe !'+#13#10+
                                    'Para o Fornecedor : '+StrZero(Curr_Forn.Text,4)+'-'+Cb_Forn.Text+#13#10+
                                    'Conta Caixa       : '+StrZero(Curr_De_Forn.Text,3)+'-'+Edt_De_Razao.Text+#13#10+
                                    'Confirma a Tranferência da Conta Caixa assim mesmo ?'))=MrYes then
                  begin
                     Grp_Pesquisa.Enabled := False;
                     BitPesquisa.Enabled  := False;
                     BitSair.Enabled      := False;
                     Grp_Conta.Enabled    := True;
                     Bit_Gravar.Enabled   := True;
                     Bit_Cancelar.Enabled := True;
                     Result := True;
                  end
               else
                  begin
                     Result := False;
                     Bit_Cancelar.Click;
                  end;
            end;
      end
   else
      begin
         Curr_De_Forn.Text := '';
         Edt_De_Razao.Text := '';
      end;
   DataCadastros.sqlUpdate.Close;
end;

procedure TFrmTransfCtaCaixa.Curr_FornExit(Sender: tObject);
begin
   if (Curr_Forn.AsInteger > 0) then
      begin
         if SqlCdsFornecedor.Locate('FOR_CODIGO',StrZero(Curr_Forn.Text,4),[]) then
            Cb_Forn.Text := SqlCdsFornecedorFOR_RAZAO.AsString
         else
            begin
               Curr_Forn.AsInteger := 0;
               Cb_Forn.Text        := ''; 
            end;
      end;
end;

procedure TFrmTransfCtaCaixa.Curr_ParaExit(Sender: tObject);
begin
   if (Curr_Para.AsInteger > 0) then
      begin
         if SqlContaCaixa.Locate('CCT_CODIGO',StrZero(Curr_Para.Text,3),[]) then
            Cb_Para.Text := SqlContaCaixaCCT_DESCRI.AsString
         else
            begin
               Curr_Para.Text := '000';
               Cb_Para.Text   := '';
            end;
      end;
end;

procedure TFrmTransfCtaCaixa.Cb_ParaExit(Sender: tObject);
begin
   if (ActiveControl <> nil)
   and(ActiveControl.Name <> 'Curr_Para')
   and(ActiveControl.Name <> 'Bit_Cancelar') then
      begin
         if (Cb_Para.Text <> '') then
            begin
               SqlContaCaixa.Locate('CCT_DESCRI',Cb_Para.Text,[]);
               Curr_Para.Text := SqlContaCaixaCCT_CODIGO.AsString;
            end
         else
            begin
               uteis.aviso('Informe a Conta Caixa Para !');
               Cb_Para.SetFocus;
               Cb_Para.SelectAll;
            end;
      end;
end;

procedure TFrmTransfCtaCaixa.Bit_CancelarClick(Sender: tObject);
begin
   Grp_Conta.Enabled    := False;
   Bit_Gravar.Enabled   := False;
   Bit_Cancelar.Enabled := False;
   Grp_Pesquisa.Enabled := True;
   BitPesquisa.Enabled  := True;
   BitSair.Enabled      := True;
   Curr_Para.Clear;
   Cb_Para.Text := '';
   Curr_Forn.Clear;
   Cb_Forn.Text := '';
   Curr_De_Forn.Text := '';
   Edt_De_Razao.Text := '';
   Curr_Forn.SetFocus;
   Curr_Forn.SelectAll;
end;

procedure TFrmTransfCtaCaixa.Bit_GravarClick(Sender: tObject);
begin
   if (Curr_Para.AsInteger > 0) then
      begin
         if uteis.confirmacao ( ('Confirma a Transferência da Conta Caixa ?'+#13#10+
                              'De    : '+StrZero(Curr_De_Forn.Text,3)+'-'+Edt_De_Razao.Text+#13#10+
                              'Para : '+StrZero(Curr_Para.Text,3)+'-'+Cb_Para.Text))=MrYes then
            begin
               Transfere_Conta_Caixa(StrZero(Curr_Forn.Text,4),
                                     StrZero(Curr_Para.Text,3));
               uteis.aviso('Concluído com sucesso !');
               Bit_Cancelar.Click;
            end
         else
            begin
               Bit_Cancelar.Click;
            end;
      end
   else
      begin
         uteis.aviso('Informe a Conta Caixa Para ?');
         Curr_Para.SetFocus;
         Curr_Para.SelectAll;
      end;
end;

procedure TFrmTransfCtaCaixa.Transfere_Conta_Caixa(sCodFor,
  sConta: String);
begin
   {Tabela Fornecedor}
   wSql1 := 'UPDATE FOR0000 T1 SET T1.CCT_NOVO = T1.CCT_CODIGO,CCT_CODIGO = '''+sConta+'''';
   wSql2 := 'WHERE T1.FOR_CODIGO = '''+sCodFor+'''';
   DataCadastros.sqlUpdate.Close;
   DataCadastros.SqlUpdate.sql.text :=SQLDEF('PAGAR',wSql1,wSql2,'','T1.');
   DataCadastros.sqlUpdate.Execsql;

   {Tabela Pag0000}
   wSql1 := 'UPDATE PAG0000 T1 SET T1.CCT_NOVO = T1.CCT_CODIGO,CCT_CODIGO = '''+sConta+'''';
   wSql2 := 'WHERE T1.FOR_CODIGO = '''+sCodFor+'''';
   DataCadastros.sqlUpdate.Close;
   DataCadastros.SqlUpdate.sql.text :=SQLDEF('PAGAR',wSql1,wSql2,'','T1.');
   DataCadastros.sqlUpdate.Execsql;

   {Tabela PAG_PC01}
   wSql1 := 'UPDATE PAG_PC01 T1 SET T1.CCT_NOVO = T1.CCT_CODIGO,CCT_CODIGO = '''+sConta+'''';
   wSql2 := 'WHERE T1.FOR_CODIGO = '''+sCodFor+'''';
   DataCadastros.sqlUpdate.Close;
   DataCadastros.SqlUpdate.sql.text :=SQLDEF('PAGAR',wSql1,wSql2,'','T1.');
   DataCadastros.sqlUpdate.Execsql;



end;

procedure TFrmTransfCtaCaixa.MudaCorCampos(Sender: tObject);
begin
  {CampoEdit :TEdit}
   if Assigned(CampoEdit) then
      begin
         CampoEdit.color := clWindow;
      end;
   if ActiveControl is TEdit then
      begin
         if TEdit(ActiveControl).color = $00D7D7D7 then
            begin
               exit;
            end;
         TEdit(ActiveControl).color := $0080FFFF;
         CampoEdit := TEdit(ActiveControl);
      end
   else
      begin
         CampoEdit := nil;
      end;
  {CampoComboBox}
  if Assigned(CampoCombo) then
      begin
          CampoCombo.color := clWindow;
      end;
   if ActiveControl is TComboBox then
      begin
          if TComboBox(ActiveControl).color = $00D7D7D7 then
             begin
                 exit;
             end;
          TComboBox(ActiveControl).color := $0080FFFF;
          CampoCombo := TComboBox(ActiveControl);
      end
   else
      begin
          CampoCombo := nil;
      end;
  {CampoCurrency}
  if Assigned(CampoCurrency) then
      begin
          CampoCurrency.color := clWindow;
      end;
   if ActiveControl is TCurrencyEdit then
      begin
          if TCurrencyEdit(ActiveControl).color = $00D7D7D7 then
             begin
                 exit;
             end;
          TCurrencyEdit(ActiveControl).color := $0080FFFF;
          CampoCurrency := TCurrencyEdit(ActiveControl);
      end
   else
      begin
          CampoCurrency := nil;
      end;
end;

procedure TFrmTransfCtaCaixa.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
    Screen.OnActiveControlChange := NIL;
    Action := CaFree;
end;

procedure TFrmTransfCtaCaixa.FormDestroy(Sender: TObject);
begin
     FrmTransfCtaCaixa := Nil;
end;

procedure TFrmTransfCtaCaixa.FormResize(Sender: TObject);
begin
     Height := 135;
     Width := 536;
end;

end.
