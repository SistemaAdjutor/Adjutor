unit CAIXA001;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables,  StdCtrls, Mask, DBCtrls,
  ExtCtrls, Buttons, Grids, DBGrids,  RwFunc, Provider, SqlExpr,SqlClientDataSet,
  DBClient, DBLocal, DBLocalS, Data.DBXFirebird, SimpleDS, JvExMask, JvToolEdit, JvDBControls, JvExStdCtrls, JvEdit, JvValidateEdit;

type
  TFormCaixaFixo = class(TForm)
    GroupLancto: TGroupBox;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    DbEdit_Lancto: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DbEdit_Historico: TDBEdit;
    Label5: TLabel;
    DbEdit_Doc: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    Panel1: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    DbGridLancto: TDBGrid;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    RadCxAberto: TRadioButton;
    RadCxTodos: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    RadioButton6: TRadioButton;
    Panel2: TPanel;
    Bit_Sair: TBitBtn;
    Bit_Cancelar: TBitBtn;
    Bit_novo: TBitBtn;
    Bit_Excluir: TBitBtn;
    Bit_Gravar: TBitBtn;
    Panel3: TPanel;
    Label13: TLabel;
    Bit_Imprimir: TBitBtn;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    CbCtaAnalise: TComboBox;
    SqlCdsCtaAnalise: TSQLClientDataSet;
    SqlCdsCtaAnaliseCCT_CODIGO: TStringField;
    SqlCdsCtaAnaliseCCT_DESCRI: TStringField;
    SqlCdsCtaAnaliseEMP_CODIGO: TStringField;
    SqlCdsSaldoAtual: TSQLClientDataSet;
    DBEditCtaAnalise: TDBEdit;
    SqlCdsCtaAnaliseCCT_CONTA: TStringField;
    SqlCdsCtaAnaliseCCT_TIPO: TStringField;
    CbTipoDoc: TComboBox;
    SqlCdsSaldoAtualQRY_TOTAL: TFMTBCdField;
    DBECxa_Data: TJvDBDateEdit;
    CCxa_valor: TJvValidateEdit;
    CCaixa_Atual: TJvValidateEdit;
    procedure MudaCorCampos(Sender: tObject);
    procedure Bit_novoClick(Sender: tObject);
    procedure FormCloseQuery(Sender: tObject; var CanClose: Boolean);
    procedure FormShow(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure Bit_ExcluirClick(Sender: tObject);
    procedure Bit_GravarClick(Sender: tObject);
    procedure Bit_CancelarClick(Sender: tObject);
    procedure Bit_SairClick(Sender: tObject);
    procedure DBECxa_DataExit(Sender: tObject);
    procedure CCxa_valorExit(Sender: tObject);
    procedure CCxa_valorEnter(Sender: tObject);
    procedure RadCxAbertoClick(Sender: tObject);
    procedure RadCxTodosClick(Sender: tObject);
    procedure RadioButton3Click(Sender: tObject);
    procedure RadioButton4Click(Sender: tObject);
    procedure RadioButton5Click(Sender: tObject);
    procedure RadioButton6Click(Sender: tObject);
    procedure Bit_ImprimirClick(Sender: tObject);
    procedure CbCtaAnaliseClick(Sender: tObject);
    procedure DbGridLanctoCellClick(Column: TColumn);
    procedure DesabilitaBotoes;
    procedure HabilitaBotoes;
    procedure DBEditCtaAnaliseExit(Sender: tObject);
    procedure CbTipoDocEnter(Sender: tObject);
    procedure CbTipoDocChange(Sender: tObject);
    procedure CCxa_valorClick(Sender: tObject);
    procedure DbEdit_HistoricoEnter(Sender: tObject);
    procedure CbCtaAnaliseEnter(Sender: tObject);
    procedure DbEdit_DocEnter(Sender: tObject);
    procedure DBECxa_DataEnter(Sender: tObject);
    procedure DbEdit_LanctoEnter(Sender: tObject);
    procedure CbTipoDocExit(Sender: tObject);
    procedure CbCtaAnaliseExit(Sender: tObject);
    procedure FormKeyPress(Sender: tObject; var Key: Char);
    procedure DBEditCtaAnaliseClick(Sender: tObject);
    procedure FormDestroy(Sender: TObject);
    
  private
    { Private declarations }
     {campos}
    CampoEdit    :TEdit;
    CampoDBEdit  :TDBEdit;
    CampoData    :TJvDBDateEdit;
    CampoTDBLuk  :TDBLookupComboBox;
    CampoTDBCombo:TDBComboBox;
    CampoCombo   :TComboBox;
    CampoCurrency:TJvValidateEdit;
    procedure verificaEdicao;
    procedure AtualizaSaldoAtual;
    procedure BuscaCtaAnalise;
    procedure HabDados;
    procedure DesDados;
  public
    { Public declarations }
    procedure MostraLanctos;
    procedure BotoesAcesso;
  end;

var
  FormCaixaFixo: TFormCaixaFixo;
  wValor : currency;
  wTpDoc : Integer;

implementation

{$R *.dfm}

uses Uteis, GImpCFix, DataCad, DataMov, Men0001, iniciodb;





procedure TFormCaixaFixo.MudaCorCampos(Sender: tObject);
begin
  {cor dos campos TDBEdit}
   if Assigned(CampoDbEdit) then
      begin
         CampoDbEdit.color := clWindow;
      end;
   if ActiveControl is TDBEdit then
      begin
         if TDBEdit(ActiveControl).color = $00D7D7D7 then
            begin
               exit;
            end;
         TDBEdit(ActiveControl).color := $0080FFFF;
         CampoDbEdit := TDBEdit(ActiveControl);
      end
   else
      begin
         CampoDbEdit := nil;
      end;
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
  {CampoData  :TDBDateEdit}
   if Assigned(CampoData) then
      begin
         CampoData.color := clWindow;
      end;
   if ActiveControl is TjvDBDateEdit then
      begin
         TjvDBDateEdit(ActiveControl).color := $0080FFFF;
         CampoData := TjvDBDateEdit(ActiveControl);
      end
   else
      begin
         CampoData := nil;
      end;
  {CampoTDBLuk  :TDBLookupComboBox}
   if Assigned(CampoTDBLuk) then
      begin
         CampoTDBLuk.color := clWindow;
      end;
   if ActiveControl is TDBLookupComboBox then
      begin
         TDBLookupComboBox(ActiveControl).color := $0080FFFF;
         CampoTDBLuk := TDBLookupComboBox(ActiveControl);
      end
   else
      begin
         CampoTDBLuk := nil;
      end;
  {CampoTDBCombo:TDBComboBox}
   if Assigned(CampoTDBCombo) then
      begin
         CampoTDBCombo.color := clWindow;
      end;
   if ActiveControl is TDBComboBox then
      begin
         TDBComboBox(ActiveControl).color := $0080FFFF;
         CampoTDBCombo := TDBComboBox(ActiveControl);
      end
   else
      begin
         CampoTDBCombo := nil;
      end;
   {CampoCombo:TComboBox;TComboBox}
   if Assigned(CampoCombo) then
      begin
         CampoCombo.color := clWindow;
      end;
   if ActiveControl is TComboBox then
      begin
         TComboBox(ActiveControl).color := $0080FFFF;
         CampoCombo := TComboBox(ActiveControl);
      end
   else
      begin
         CampoCombo := nil;
      end;
   {CampoCurrency:TCurrency}
   if Assigned(CampoCurrency) then
      begin
         CampoCurrency.color := clWindow;
      end;
   if ActiveControl is TJvValidateEdit then
      begin
         TJvValidateEdit(ActiveControl).color := $0080FFFF;
         CampoCurrency := TJvValidateEdit(ActiveControl);
      end
   else
      begin
         CampoCurrency := nil;
      end;
end;

procedure TFormCaixaFixo.HabilitaBotoes;
begin
    Bit_novo.Enabled     := True;
    Bit_Excluir.Enabled  := True;
    Bit_Sair.Visible     := True;
    Bit_Gravar.Enabled   := False;
    Bit_Cancelar.Enabled := False;
    DbGridLancto.Enabled := True;
    BotoesAcesso;
end;

procedure TFormCaixaFixo.verificaEdicao;
begin
    if DataMovimento.DsCaixaFixo.State in [dsEdit,dsInsert] then
       begin
           if uteis.confirmacao ( 'Deseja salvar alterações ?') = idyes then
              begin
                  DataMovimento.CdsCaixaFixo.ApplyUpdates(0);
              end
           else
             begin
                 DataMovimento.CdsCaixaFixo.CancelUpdates;
             end;
           Habilitabotoes;
       end;
end;

procedure TFormCaixaFixo.Bit_novoClick(Sender: tObject);
begin
    try
    Screen.Cursor := crHourglass;
    HabDados;
    DesabilitaBotoes;
    screen.cursor := crdefault;
    DataMovimento.DsCaixaFixo.AutoEdit := True;
    DataMovimento.CdsCaixaFixo.Insert;
    DbEdit_Lancto.Text := '000000';
    CbCtaAnalise.Text     := '';
    CbTipoDoc.ItemIndex   := 0;
    CCxa_valor.Value      := 0;
    Screen.Cursor         := crDefault;
//    DBECxa_Data.Date      := DBEdit5.Field.AsDateTime+1;
    DBECxa_Data.Date      := Now;
    uteis.HabilitaIncluir('FinanceiroCaixa Fixo',DBInicio.Usuario.CODIGO,FormCaixaFixo);
    DBECxa_Data.SetFocus;
    except on E:EDataBaseError do
        uteis.erro  (pchar('Erro ao inserir o registro !'+e.message));
    end;
end;

procedure TFormCaixaFixo.FormCloseQuery(Sender: tObject;
  var CanClose: Boolean);
begin
    verificaEdicao;
    try
      DataMovimento.CdsCaixaFixo.Close;
      SqlCdsCtaAnalise.Close;
      DataMovimento.CdsFechaCaixa.Close;
    except on E:EdatabaseError do
      uteis.erro  (Pchar('Erro ao fechar as tabelas !'+e.message));
    end;
end;

procedure TFormCaixaFixo.FormDestroy(Sender: TObject);
begin
     FormCaixaFixo := Nil;
end;

procedure TFormCaixaFixo.FormShow(Sender: tObject);
begin
    {ativa o método ao evento OnActiveControlChange}
    Screen.OnActiveControlChange   := MudaCorCampos;
    Screen.Cursor := crHourGlass;
    Try
      SqlCdsCtaAnalise.Close;
      SqlCdsCtaAnalise.CommandText := SQLDEF('TABELAS','SElECT CCT_CODIGO,CCT_DESCRI,CCT_CONTA,CCT_TIPO,EMP_CODIGO FROM CCT_0000','where CCT_STATUS = ''L''','CCT_DESCRI','');
      SqlCdsCtaAnalise.Open;
      SqlCdsCtaAnalise.First;
      CbCtaAnalise.Clear;
      while not SqlCdsCtaAnalise.Eof do
        begin
            CbCtaAnalise.Items.Add(SqlCdsCtaAnaliseCCT_DESCRI.AsString);
            SqlCdsCtaAnalise.Next;
        end;
      CbCtaAnalise.ItemIndex := 0;
    except on E:EdatabaseError do
       uteis.erro  (Pchar('Erro ao abrir a Tabela CONTAS DE ANÁLISES (CCT_0000)'+e.message));
    end;
    //
    try
      DataMovimento.CdsCaixaFixo.close;
      DataMovimento.CdsCaixaFixo.CommandText := SQLDEF('PAGAR','SELECT * FROM CAIXA001','WHERE CXA_SITUACAO <> '''+'F'+'''','CXA_DATA,CXA_LANCTO','');
      DataMovimento.CdsCaixaFixo.Open;
      //Evita alteração antes que se inclua registros na tabela
      if DataMovimento.CdsCaixaFixo.IsEmpty Then
         begin
             DataMovimento.DsCaixaFixo.AutoEdit := False;
             CbCtaAnalise.Text := '';
         end
      else
         begin
             BuscaCtaAnalise;
         end;
    except on E:EdatabaseError do
       uteis.erro  (Pchar('Erro ao abrir a Tabela CAIXA FIXO (CAIXA001)'+e.message));
    end;
    //
    try
      DataMovimento.CdsFechaCaixa.close;
      DataMovimento.CdsFechaCaixa.CommandText := SQLDEF('PAGAR','SELECT * FROM CAIXA002','','CXF_DataFecha desc','');
      DataMovimento.CdsFechaCaixa.Open;
    except on E:EdatabaseError do
       uteis.erro  (Pchar('Erro ao abrir a Tabela FECHA O CAIXA (CAIXA002)'+e.message));
    end;
    AtualizaSaldoAtual;
    Habilitabotoes;
    DesDados;
    DbGridLancto.SetFocus;
    Screen.Cursor := crDefault;

    height := 507;
    width := 742;
end;

procedure TFormCaixaFixo.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
    Screen.OnActiveControlChange := NIL;
    Action := CaFree;
end;

procedure TFormCaixaFixo.Bit_ExcluirClick(Sender: tObject);
begin
    // em tabela vazia
    if DataMovimento.CdsCaixaFixo.IsEmpty Then
        Begin
            messagebeep($ffff);
            uteis.aviso('Não existe lançamento cadastrado !');
            exit;
        end;
    if DataMovimento.CdsCaixaFixoCXA_TIPODOC.AsString = 'T' then
       begin
           uteis.aviso('Esse Lançamento de Caixa não pode ser Excluído ! ');
           DBGridLancto.SetFocus;
           exit;
       end
    else
       begin
           // Fechado - proibido excluir, pode excluir todo o fechamento de caixa
           if DataMovimento.CdsCaixaFixoCXA_SITUACAO.AsString = 'F' then
               begin
                   uteis.aviso('Impossível excluir! Este lançamento é de um caixa que já foi fechado.');
                   exit;
               end;
           if uteis.confirmacao ( 'Tem certeza que deseja excluir o lançamento ?')= Mryes then
               begin
                   DataMovimento.CdsCaixaFixo.Delete;
                   DataMovimento.CdsCaixaFixo.ApplyUpdates(0);
                   DataMovimento.CdsCaixaFixo.Refresh;
               end;
           AtualizaSaldoAtual;
           DbGridLancto.SetFocus;
       end;
end;

procedure TFormCaixaFixo.AtualizaSaldoAtual;
begin
    screen.cursor := crHourGlass;
    try
      SqlCdsSaldoAtual.Close;
      if (RadCxAberto.checked ) then
         SqlCdsSaldoAtual.CommandText := SQLDEF('PAGAR','SELECT SUM((CXA_ENTRADA)-(CXA_SAIDA)) AS QRY_TOTAL FROM CAIXA001','WHERE CXA_SITUACAO = ''A''','','')
      else
         SqlCdsSaldoAtual.CommandText := SQLDEF('PAGAR','SELECT SUM((CXA_ENTRADA)-(CXA_SAIDA)) AS QRY_TOTAL FROM CAIXA001','WHERE CXA_TIPODOC NOT IN(''T'')','','');
      SqlCdsSaldoAtual.Open;
      if not SqlCdsSaldoAtual.IsEmpty then
         begin
             // Atualizar saldo atual
             CCaixa_Atual.Value := SqlCdsSaldoAtualQRY_TOTAL.AsCurrency;
         end;
    except on E:EdataBaseError do
       uteis.erro  (Pchar('Erro ao abrir a Tabela SALDO ATUAL (CAIXA_0001)'+e.message));
    end;
    screen.cursor := crDefault;
end;

procedure TFormCaixaFixo.Bit_GravarClick(Sender: tObject);
begin
    if DataMovimento.CdsCaixaFixoCXA_SITUACAO.AsString = 'F' then
       begin
           uteis.erro  ('Não é possível fazer qualquer alteração em lançamento fechado');
           // retorna valor de entrada
           CCxa_valor.Value := wValor;
           DataMovimento.CdsCaixaFixo.CancelUpdates;
           Habilitabotoes;
           exit;
       end;
    // Validar campos
    if DBECxa_Data.Text = '  /  /    ' then
       begin
           uteis.aviso('Digite a data do lançamento');
           DBECxa_Data.Setfocus;
           exit;
       end;
    if CbCtaAnalise.Text = '' then
       begin
           uteis.aviso('Selecione uma Conta de Análise');
           CbCtaAnalise.SetFocus;
           CbCtaAnalise.SelectAll;
           exit;
       end;
    if CCxa_valor.Value = 0 then
       begin
           uteis.aviso('Digite o valor do lançamento');
           CCxa_valor.SetFocus;
           Exit;
       end;
    try
      screen.cursor := crHourglass;
      if (CbCtaAnalise.Text <> '') then
       begin
           if SqlCdsCtaAnalise.Locate('CCT_DESCRI',CbCtaAnalise.Text,[]) then
              DBEditCtaAnalise.Text := SqlCdsCtaAnaliseCCT_CODIGO.AsString;
       end;
      //salvar
      if SqlCdsCtaAnaliseCCT_CONTA.AsString = 'S' then
         begin
             // conta tipo despesa = Saída
             DataMovimento.CdsCaixaFixoCXA_SAIDA.AsCurrency   := CCxa_valor.Value;
             DataMovimento.CdsCaixaFixoCXA_ENTRADA.AsCurrency := 0;
         end
      else
         begin
             // conta tipo Receita = Entrada
             DataMovimento.CdsCaixaFixoCXA_ENTRADA.AsCurrency := CCxa_valor.Value;
             DataMovimento.CdsCaixaFixoCXA_SAIDA.AsCurrency   := 0;
         end;
      //
      if DataMovimento.CdsCaixaFixo.State in [dsInsert] then
         begin
             // lancto no caixa aberto
             DataMovimento.CdsCaixaFixoCXA_SITUACAO.AsString := 'A';
         end;
      DataMovimento.CdsCaixaFixoCXA_TIPODOC.AsString  := IIF(CbTipoDoc.ItemIndex = 0,'D',IIF(CbTipoDoc.ItemIndex = 1,'C',IIF(CbTipoDoc.ItemIndex = 2,'O','T')));
      DataMovimento.CdsCaixaFixoEMP_CODIGO.AsString   := dbInicio.Empresa.EMP_CODIGO;
      DataMovimento.CdsCaixaFixo.ApplyUpdates(0);
      DataMovimento.CdsCaixaFixo.Refresh;
      AtualizaSaldoAtual;
      Habilitabotoes;
      DesDados;
      DBGridLancto.SetFocus;
      screen.cursor := crDefault;
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao gravar o registro !'+e.message));
    end;
end;

procedure TFormCaixaFixo.Bit_CancelarClick(Sender: tObject);
begin
    screen.Cursor := crHourglass;
    DataMovimento.CdsCaixaFixo.CancelUpdates;
    DataMovimento.CdsCaixaFixo.Refresh;
    Habilitabotoes;
    screen.Cursor :=crDefault;
end;

procedure TFormCaixaFixo.Bit_SairClick(Sender: tObject);
begin
    close;
end;

procedure TFormCaixaFixo.BotoesAcesso;
begin
     if assigned(FormCaixaFixo) then
     begin
       Bit_novo.Enabled := Uteis.AcessoUsuario('FinanceiroCaixa Fixo',DBInicio.Usuario.CODIGO,FormCaixaFixo).Incluir;
       Bit_Excluir.Enabled := Uteis.AcessoUsuario('FinanceiroCaixa Fixo',DBInicio.Usuario.CODIGO,FormCaixaFixo).Exluir;
       Bit_Imprimir.Enabled := Uteis.AcessoUsuario('FinanceiroCaixa Fixo',DBInicio.Usuario.CODIGO,FormCaixaFixo).Relatorio;
       DataMovimento.DsCaixaFixo.AutoEdit := Uteis.AcessoUsuario('FinanceiroCaixa Fixo',DBInicio.Usuario.CODIGO,FormCaixaFixo).Alterar;
     end;
end;

procedure TFormCaixaFixo.DBECxa_DataExit(Sender: tObject);
begin
    if (ActiveControl.name = 'Bit_Cancelar') or (ActiveControl.name = 'Bit_Sair')then
       exit;
    if not TestaDataStr(DBECxa_Data.Text) then
       DBECxa_Data.setfocus
end;

procedure TFormCaixaFixo.CCxa_valorExit(Sender: tObject);
begin
    if wValor <> CCxa_valor.Value then
       DataMovimento.CdsCaixaFixo.Edit;
end;

procedure TFormCaixaFixo.CCxa_valorEnter(Sender: tObject);
begin
  wValor := CCxa_valor.Value;
end;

procedure TFormCaixaFixo.RadCxAbertoClick(Sender: tObject);
begin
    // somente lancamento diferente de F
    Screen.Cursor := crHourGlass;
    try
      DataMovimento.CdsCaixaFixo.close;
      DataMovimento.CdsCaixaFixo.CommandText := SQLDEF('PAGAR','SELECT * FROM CAIXA001','WHERE CXA_SITUACAO <> '''+'F'+'''','CXA_DATA Desc,CXA_LANCTO Desc','');
      DataMovimento.CdsCaixaFixo.Open;
      if not DataMovimento.CdsCaixaFixo.IsEmpty then
         begin
             AtualizaSaldoAtual;
             BuscaCtaAnalise;
         end;
    except on E:EdatabaseError do
        uteis.erro  (Pchar('Erro ao abrir a Tabela CAIXA FIXO (CAIXA001)'+e.message));
    end;
    Screen.Cursor := crDefault;
end;

procedure TFormCaixaFixo.RadCxTodosClick(Sender: tObject);
begin
    //Tira o Filtro
    try
      DataMovimento.CdsCaixaFixo.close;
      DataMovimento.CdsCaixaFixo.CommandText := SQLDEF('PAGAR','SELECT * FROM CAIXA001','','CXA_DATA Desc, CXA_LANCTO Desc','');
      DataMovimento.CdsCaixaFixo.Open;
    except on E:EdatabaseError do
       begin
           uteis.erro  (Pchar('Erro ao abrir a Tabela CAIXA FIXO (CAIXA001)'+e.message));
       end;
    end;
    AtualizaSaldoAtual;
end;

procedure TFormCaixaFixo.RadioButton3Click(Sender: tObject);
begin
    DataMovimento.CdsCaixaFixo.IndexFieldNames := 'CXA_LANCTO';
end;

procedure TFormCaixaFixo.RadioButton4Click(Sender: tObject);
begin
    DataMovimento.CdsCaixaFixo.IndexName := 'CdsCaixaFixoIndex1';
end;

procedure TFormCaixaFixo.RadioButton5Click(Sender: tObject);
begin
    DataMovimento.CdsCaixaFixo.IndexFieldNames := 'CXA_DOCUMENTO';
end;

procedure TFormCaixaFixo.RadioButton6Click(Sender: tObject);
begin
    DataMovimento.CdsCaixaFixo.IndexFieldNames := 'CXA_HISTORICO';
end;

procedure TFormCaixaFixo.Bit_ImprimirClick(Sender: tObject);
begin
    try
      try
        FormGimpCxFixo := TFormGimpCxFixo.Create(Application);
        FormGimpCxFixo.ShowModal;
      finally
        FormGimpCxFixo.Destroy;
        FormGimpCxFixo := nil ;//  nil é - From Assigned = False
        DbGridLancto.SetFocus;
      end;
    except
        //beep;
        uteis.erro  ('Ocorreu um erro na criação do formulário Pedido.');
    end;
end;

procedure TFormCaixaFixo.CbCtaAnaliseClick(Sender: tObject);
begin
    if SqlCdsCtaAnalise.Locate('CCT_DESCRI',CbCtaAnalise.Text,[]) then
       begin
           if DataMovimento.CdsCaixaFixo.State in [Dsbrowse] then
              DataMovimento.CdsCaixaFixo.EDIT;
           DBEditCtaAnalise.Text := SqlCdsCtaAnaliseCCT_CODIGO.AsString;
       end;
end;

procedure TFormCaixaFixo.DbGridLanctoCellClick(Column: TColumn);
begin
    if DataMovimento.CdsCaixaFixoCXA_TIPODOC.AsString = 'T' then
       begin
           GroupLancto.Enabled    := False;
           CbTipoDoc.ItemIndex    := 3;
           CbCtaAnalise.ItemIndex := 0;
           CbCtaAnalise.Text      :='';
       end
    else
       begin
           BuscaCtaAnalise;
           GroupLancto.Enabled := True;
           CbTipoDoc.ItemIndex := IIF(DataMovimento.CdsCaixaFixoCXA_TIPODOC.AsString = 'D',0,IIF(DataMovimento.CdsCaixaFixoCXA_TIPODOC.AsString = 'C',1,2));
       end;
end;

procedure TFormCaixaFixo.BuscaCtaAnalise;
begin
    if SqlCdsCtaAnalise.Locate('CCT_CODIGO',DataMovimento.CdsCaixaFixoCCT_CODIGO.AsString,[]) then
       CbCtaAnalise.Text := SqlCdsCtaAnaliseCCT_DESCRI.AsString
    else
       begin
           CbCtaAnalise.Text := '';
           CbCtaAnalise.ItemIndex := 0;
       end;
end;

procedure TFormCaixaFixo.DesabilitaBotoes;
begin
    BotoesAcesso;
    Bit_novo.Enabled     := False;
    Bit_Excluir.Enabled  := False;
    Bit_Sair.Visible     := False;
    Bit_Gravar.Enabled   := True;
    Bit_Cancelar.Enabled := True;
    DbGridLancto.Enabled := False;

end;

procedure TFormCaixaFixo.DBEditCtaAnaliseExit(Sender: tObject);
begin
    screen.Cursor := crHourGlass;
    if DBEditCtaAnalise.Text <> '' then
       begin
           if SqlCdsCtaAnalise.Locate('CCT_CODIGO',FormatFloat('000',StrToFloat(DBEditCtaAnalise.Text)),[]) then
              begin
                  CbCtaAnalise.Text     := SqlCdsCtaAnaliseCCT_DESCRI.AsString;
                  DBEditCtaAnalise.Text := FormatFloat('000',StrToFloat(DBEditCtaAnalise.Text));
              end
           else
              begin
                  CbCtaAnalise.Text           := '';
                  DBEditCtaAnalise.Field.Text := '';
                  DBEditCtaAnalise.SetFocus;
              end;
       end;
    screen.Cursor := crDefault;
end;

procedure TFormCaixaFixo.CbTipoDocEnter(Sender: tObject);
begin
    wTpDoc := CbTipoDoc.ItemIndex;
end;

procedure TFormCaixaFixo.CbTipoDocChange(Sender: tObject);
begin
    if wTpDoc <> CbTipoDoc.ItemIndex then
       DataMovimento.CdsCaixaFixo.Edit;
end;

procedure TFormCaixaFixo.DesDados;
begin
    GroupLancto.Enabled := False;
end;

procedure TFormCaixaFixo.HabDados;
begin
    GroupLancto.Enabled := True;
end;

procedure TFormCaixaFixo.MostraLanctos;
begin
    if SqlCdsCtaAnalise.Locate('CCT_CODIGO',DBEditCtaAnalise.Text,[]) then
       begin
           CbCtaAnalise.Text   := SqlCdsCtaAnaliseCCT_DESCRI.AsString;
       end
    else
       begin
           DbEditCtaAnalise.Text := '';
           CbCtaAnalise.Text     := '';
           if DataMovimento.CdsCaixaFixoCXA_TIPODOC.AsString = 'T' then
              CCxa_valor.Value := DataMovimento.CdsCaixaFixoCXA_ENTRADA.AsCurrency;
       end;
    if FormCaixaFixo.SqlCdsCtaAnaliseCCT_CONTA.AsString = 'S' then
       begin
           // conta tipo despesa = Saída
           CCxa_valor.Value := DataMovimento.CdsCaixaFixoCXA_SAIDA.AsCurrency
       end
    else
       begin
           // conta tipo Receita = Enttrada
           CCxa_valor.Value := DataMovimento.CdsCaixaFixoCXA_ENTRADA.AsCurrency;
       end;
    FormCaixaFixo.CbTipoDoc.ItemIndex := IIF(DataMovimento.CdsCaixaFixoCXA_TIPODOC.AsString = 'D',0,IIF(DataMovimento.CdsCaixaFixoCXA_TIPODOC.AsString = 'C',1,IIF(DataMovimento.CdsCaixaFixoCXA_TIPODOC.AsString = 'O',2,3)));
end;

procedure TFormCaixaFixo.CCxa_valorClick(Sender: tObject);
begin
    CCXA_VALOR.SelectAll;
end;

procedure TFormCaixaFixo.DbEdit_HistoricoEnter(Sender: tObject);
begin
    DbEdit_Historico.SelectAll;
end;

procedure TFormCaixaFixo.CbCtaAnaliseEnter(Sender: tObject);
begin
    CbCtaAnalise.SelectAll;
end;

procedure TFormCaixaFixo.DbEdit_DocEnter(Sender: tObject);
begin
    DbEdit_Doc.SelectAll;
end;

procedure TFormCaixaFixo.DBECxa_DataEnter(Sender: tObject);
begin
    DbeCxa_Data.SelectAll;
end;

procedure TFormCaixaFixo.DbEdit_LanctoEnter(Sender: tObject);
begin
    DbEdit_Lancto.SelectAll;
end;

procedure TFormCaixaFixo.CbTipoDocExit(Sender: tObject);
begin
   if CbTipoDoc.ItemIndex = 3 then
      begin
      uteis.aviso('Não é possível lançar manualmente o Tipo "Transporte"');
      CbTipoDoc.ItemIndex := 0;
      CbTipoDoc.SetFocus;
      end;

end;

procedure TFormCaixaFixo.CbCtaAnaliseExit(Sender: tObject);
begin
    if (ActiveControl.Name = 'Bit_Cancelar') or (ActiveControl.Name = 'Bit_Sair') then
       exit;
    if (CbCtaAnalise.Text = '') and (DBEditCtaAnalise.Text = '')then
       begin
           uteis.aviso('Informe a Conta Caixa !');
           CbCtaAnalise.SetFocus;
       end;
    if (CbCtaAnalise.Text <> '') then
       begin
           if SqlCdsCtaAnalise.Locate('CCT_DESCRI',CbCtaAnalise.Text,[]) then
            begin
              if DataMovimento.CdsCaixaFixo.State in [Dsbrowse] then
                 DataMovimento.CdsCaixaFixo.EDIT;
              DBEditCtaAnalise.Text := SqlCdsCtaAnaliseCCT_CODIGO.AsString;
            end
           else
            begin
              CbCtaAnalise.Text := '';
              uteis.aviso('Conta Caixa não Localizada!');
              CbCtaAnalise.SetFocus;
            end;

       end;
end;

procedure TFormCaixaFixo.FormKeyPress(Sender: tObject; var Key: Char);
begin
    if key = #27 then
       begin
          close;
          key := #0;
       end;
end;

procedure TFormCaixaFixo.DBEditCtaAnaliseClick(Sender: tObject);
begin
    DBEditCtaAnalise.SelectAll;
end;

end.
