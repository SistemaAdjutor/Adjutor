unit markup001;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, Grids, DBGrids, ExtCtrls, Buttons,db,RwFunc,
  SqlExpr,SqlClientDataSet, Provider, DBClient, DBLocal, DBLocalS,
  Data.DBXFirebird, SimpleDS;

type
  TFormTabelaMarkup = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DbEditMkp2: TDBEdit;
    DbEdimkp3: TDBEdit;
    DbEditMkp4: TDBEdit;
    DbEditMkp5: TDBEdit;
    DbEditmkp6: TDBEdit;
    Label6: TLabel;
    DbEditcompadrao: TDBEdit;
    DbEditcom2: TDBEdit;
    dbEditcom3: TDBEdit;
    DbEditcom4: TDBEdit;
    DbEditcom5: TDBEdit;
    DbEditcom6: TDBEdit;
    Label14: TLabel;
    DbEditMkp_padrao: TDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label1: TLabel;
    DbRadFormacomissao: TDBRadioGroup;
    DBGridMarkups: TDBGrid;
    Panel2: TPanel;
    Bit_novo: TBitBtn;
    Bit_Gravar: TBitBtn;
    Bit_Cancelar: TBitBtn;
    Bit_Sair: TBitBtn;
    Panel1: TPanel;
    Bitcalculartab: TBitBtn;
    SqlCdsLinha: TSQLClientDataSet;
    EditMkp_codigo: TEdit;
    Label13: TLabel;
    Bit_Excluir: TBitBtn;
    SQLCdsMarkup: TSQLClientDataSet;
    SQLCdsMarkupMKP_CODIGO: TStringField;
    GroupBox3: TGroupBox;
    DBGrid1: TDBGrid;
    SQLCdsProdutos: TSQLClientDataSet;
    DsSQLCdsProdutos: TDataSource;
    SQLCdsProdutosPRD_REFER: TStringField;
    SQLCdsProdutosPRD_DESCRI: TStringField;
    SQLCdsProdutosPRD_PVENDA: TFMTBCdField;
    SQLCdsProdutosPRD_PVENDA2: TFMTBCdField;
    SQLCdsProdutosPRD_PVENDA3: TFMTBCdField;
    SQLCdsProdutosPRD_PVENDA4: TFMTBCdField;
    SQLCdsProdutosPRD_PVENDA5: TFMTBCdField;
    SQLCdsProdutosPRD_PVENDA6: TFMTBCdField;
    Label15: TLabel;
    SQLCdsMarkupLIN_CODIGO: TStringField;
    EditLIN_CODIGO: TEdit;
    SqlCdsLinhaLIN_CODIGO: TStringField;
    SqlCdsLinhaLIN_DESCRI: TStringField;
    SqlCdsLinhaEMP_CODIGO: TStringField;
    CbLinha: TComboBox;
    DbRadTipoCalculo: TDBRadioGroup;
    procedure MudaCorCampos(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure HabilitaBotoes;
    procedure DesabilitaBotoes;
    procedure Mostratipo;
    procedure verificaEdicao;
    procedure Bit_novoClick(Sender: tObject);
    procedure Bit_GravarClick(Sender: tObject);
    procedure CbLinhaChange(Sender: tObject);
    procedure Bit_ExcluirClick(Sender: tObject);
    procedure Bit_CancelarClick(Sender: tObject);
    procedure DBGridMarkupsKeyDown(Sender: tObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridMarkupsKeyUp(Sender: tObject; var Key: Word;
      Shift: TShiftState);
    procedure BitcalculartabClick(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: tObject; var CanClose: Boolean);
    procedure DBGridMarkupsCellClick(Column: TColumn);
    procedure Bit_SairClick(Sender: tObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);

  private
    { Private declarations }
        {campos}
    CampoEdit    :TEdit;
    CampoDBEdit  :TDBEdit;
    procedure PreencheCombo;
  public
    { Public declarations }
    procedure BotoesAcesso;
  end;

var
  FormTabelaMarkup: TFormTabelaMarkup;

implementation

USES Uteis, DataCad1, DataCad, Men0001, DataMov, iniciodb;

{$R *.dfm}


procedure TFormTabelaMarkup.MudaCorCampos(Sender: tObject);
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
end;



procedure TFormTabelaMarkup.FormShow(Sender: tObject);
begin
  {ativa o método ao evento OnActiveControlChange}
    Screen.OnActiveControlChange   := MudaCorCampos;
    Screen.Cursor := crHourglass;
    Try
      DataCadastros1.CdsMarkup.Close;
      DataCadastros1.CdsMarkup.CommandText := SQLDEF('PRODUTOS','SELECT * FROM MKP0000','','MKP_CODIGO','');
      DataCadastros1.CdsMarkup.Open;
    except on E:EdatabaseError do
       uteis.erro  (Pchar('Impossível acessar a Tabela "MARKUP"!'+e.message));
    end;
    //
     try
      DataCadastros.CdsPrdLinha.Close;
      DataCadastros.CdsPrdLinha.CommandText := SQLDEF('TABELAS','SELECT * FROM PRD_LINHA','','LIN_DESCRI','');
      DataCadastros.CdsPrdLinha.Open;
    except on E:EDataBaseError do
        uteis.erro  (pchar('Erro ao Abrir a Tabela de Tipos de Produtos!'+e.message));
    end;
    try
      SQLCdsMarkup.Close;
      SQLCdsMarkup.CommandText := SQLDEF('PRODUTOS','SELECT * FROM MKP0000','','LIN_CODIGO','');
      SQLCdsMarkup.Open;
    except on E:EDataBaseError do
        uteis.erro  (pchar('Erro ao Abrir a Tabela Markup Interna!'+e.message));
    end;


    HabilitaBotoes;
    if DataCadastros1.CdsMarkup.IsEmpty Then  //Evita alteração antes que se inclua registros na tabela.
       begin
         DataCadastros1.DsMarkup.autoEdit := False;
       end;
    PreencheCombo;
    EditMkp_codigo.text := DataCadastros1.CdsMarkupMKP_CODIGO.AsString;
    Mostratipo;
    DBGridMarkups.SetFocus;
    Screen.Cursor := crDefault;
end;

procedure TFormTabelaMarkup.HabilitaBotoes;
begin
  Bit_novo.Enabled       := True;
  Bit_Excluir.Enabled    := True;
  Bit_Sair.Enabled       := True;
  Bit_Gravar.Enabled     := False;
  Bit_cancelar.Enabled   := False;
  Bitcalculartab.Enabled := True;
  CbLinha.Enabled         := False;
  BotoesAcesso;
end;

procedure TFormTabelaMarkup.DesabilitaBotoes;
begin
  BotoesAcesso;
  Bit_novo.Enabled       := False;
  Bit_Excluir.Enabled    := False;
  Bit_Sair.Enabled       := False;
  Bit_Gravar.Enabled     := True;
  Bit_cancelar.Enabled   := True;
  Bitcalculartab.Enabled := False;
  CbLinha.Enabled         := True;


end;

procedure TFormTabelaMarkup.PreencheCombo;
begin
    screen.cursor := crHourGlass;
    try
      SqlCdsLinha.Close;
      SqlCdsLinha.CommandText := SQLDEF('PRODUTOS','SELECT * FROM PRD_LINHA','','LIN_DESCRI','');
      SqlCdsLinha.Open;
      SqlCdsLinha.First;
      while not SqlCdsLinha.Eof do
       begin
           CbLinha.Items.Add(SqlCdsLinhaLIN_DESCRI.AsString);
           SqlCdsLinha.Next;
       end;
      CbLinha.Items.Add('TODOS');
      CbLinha.ItemIndex := 0;
    except on E:EdatabaseError do
      uteis.erro  (Pchar('Erro ao abrir as tabelas !'+e.message));
    end;
    screen.Cursor := crDefault;
end;

procedure TFormTabelaMarkup.Bit_novoClick(Sender: tObject);
begin


    CbLinha.ItemIndex := -1;
    EditMkp_codigo.Text := '000';
    DataCadastros1.CdsMarkup.Insert;
    DataCadastros1.CdsMarkupMKP_TIPOCALCULO.AsString := 'D';  // De até
    DataCadastros1.CdsMarkupMKP_AC_DC.AsString       := 'A';  // Aumento
    DesabilitaBotoes;
    uteis.HabilitaIncluir('CadastrosTabelas',DBInicio.Usuario.CODIGO,FormTabelaMarkup);
    CbLinha.SetFocus;
end;

procedure TFormTabelaMarkup.Bit_GravarClick(Sender: tObject);
begin
    if DataCadastros1.CdsMarkupMKP_TIPOCALCULO.AsString = '' then
       begin
        uteis.aviso('Informe a forma de aplicação das comissões!');
        DbRadFormacomissao.SetFocus;
       end
    else
       if DataCadastros1.CdsMarkupMKP_AC_DC.AsString = '' then
        begin
        uteis.aviso('Informe o Tipo de Cálculo!');
        DbRadTipoCalculo.SetFocus;
        end
      else
         begin
          DataCadastros1.CdsMarkupMKP_CODIGO.AsString := StrZero(EditMkp_codigo.Text,EditMkp_codigo.MaxLength);
          DataCadastros1.CdsMarkupLIN_CODIGO.AsString := EditLIN_CODIGO.Text;
          DataCadastros1.CdsMarkupEMP_CODIGO.AsString := dbInicio.Empresa.EMP_CODIGO;
          DataCadastros1.CdsMarkup.ApplyUpdates(0);
          //DataCadastros1.DsMarkup.AutoEdit := true;
          DataCadastros1.CdsMarkup.Refresh;
          HabilitaBotoes;
          Mostratipo;
          DBGridMarkups.SetFocus;
         end;

end;

procedure TFormTabelaMarkup.CbLinhaChange(Sender: tObject);
var
 i : Integer;
begin
    // é habilitado para mudanças somente pelo botao NOVO
  if DataCadastros.CdsPrdLinha.Locate('LIN_DESCRI',CbLinha.Text,[]) then
      EditLIN_CODIGO.Text :=  DataCadastros.CdsPrdLinhalin_codigo.Text
  else
  // TODOS
  begin
    uteis.aviso('Atenção a Linha [999] modifica os preços de todos os produtos cadastrados!');
    EditLIN_CODIGO.Text := '999';
  end;

// Verificar se ja foi cadastrado tabelas para o LINHA selecionada
i := 0;
if SQLCdsMarkup.Locate('lin_codigo',EditLIN_CODIGO.Text,[]) then
   begin
   // pode haver dois registros da linha um para Acrescimo e um para Desconto
   while not SQLCdsMarkup.Eof do
     begin
      i:= i+1;
      SQLCdsMarkup.Next;
      if i = 2 then
       begin
        uteis.aviso('Já foi registrado duas vezes parametros para a LINHA selecionada!');
        bit_cancelar.Click
       end;
     end;

   end;

end;

procedure TFormTabelaMarkup.Bit_ExcluirClick(Sender: tObject);
begin
   uteis.aviso('A Exclusão destes Markups não desfaz os preços que já constam nos produtos');
   if uteis.confirmacao ( 'Confirma a exclusão dos Markups selecionado ?')= Mryes then
       Begin
          DataCadastros1.CdsMarkup.Delete;
          DataCadastros1.CdsMarkup.ApplyUpdates(0);
          DataCadastros1.CdsMarkup.Refresh;
          SQLCdsMarkup.Refresh;
       end;
   Mostratipo;
   DBGridMarkups.SetFocus;
end;

procedure TFormTabelaMarkup.Bit_CancelarClick(Sender: tObject);
begin
    DataCadastros1.CdsMarkup.Cancel;
    HabilitaBotoes;
    Mostratipo;
    DBGridMarkups.SetFocus;
end;

procedure TFormTabelaMarkup.Mostratipo;
begin
  // em inclusao os valores dos campos esta nulos
  if  not(DataCadastros1.CdsMarkup.State in [DsInsert]) then
     begin
      EditMkp_codigo.text := DataCadastros1.CdsMarkupMKP_CODIGO.AsString;
      EditLIN_CODIGO.Text := DataCadastros1.CdsMarkupLIN_CODIGO.AsString;
     end;
    if DataCadastros.CdsPrdLinha.Locate('lin_codigo',EditLIN_CODIGO.Text,[]) then
    begin
      CbLinha.Text := DataCadastros.CdsPrdLinhaLIN_DESCRI.AsString;
      // buscar produtos para apresentar na grade abaixo da tela
      SQLCdsProdutos.Close;
      SQLCdsProdutos.CommandText := SQLDEF('PRODUTOS','Select PRD_REFER, PRD_DESCRI, lin_codigo, PRD_PVENDA, PRD_PVENDA2, PRD_PVENDA3, PRD_PVENDA4, PRD_PVENDA5, PRD_PVENDA6 From PRD0000',
           'where lin_codigo = '+QuotedStr(EditLIN_CODIGO.Text) +' and  PRD_STATUS = '+qStr('A') ,'PRD_DESCRI','');
      SQLCdsProdutos.Open;
    end
    else
    begin
      CbLinha.Text := 'TODOS';
      SQLCdsProdutos.Close;
      SQLCdsProdutos.CommandText := SQLDEF('PRODUTOS','Select PRD_REFER, PRD_DESCRI, lin_codigo, PRD_PVENDA, PRD_PVENDA2, PRD_PVENDA3, PRD_PVENDA4, PRD_PVENDA5, PRD_PVENDA6 From PRD0000',
            'where PRD_STATUS = '+qStr('A'),'PRD_DESCRI','');
      SQLCdsProdutos.Open;
    end;
       SQLCdsProdutos.First;
end;


procedure TFormTabelaMarkup.DBGridMarkupsKeyDown(Sender: tObject; var Key: Word;
  Shift: TShiftState);
begin
     Mostratipo;
end;

procedure TFormTabelaMarkup.DBGridMarkupsKeyUp(Sender: tObject; var Key: Word;
  Shift: TShiftState);
begin
    Mostratipo;
end;

procedure TFormTabelaMarkup.BitcalculartabClick(Sender: tObject);
var
  wperc1,wperc2,wperc3,wperc4,wperc5,wperc6 : currency;
  wcomis1,wcomis2, wcomis3,wcomis4,wcomis5,wcomis6 : double;
 condicao: string;
begin
   uteis.aviso('Atenção : Você esta entrando na rotina que modificará ou criará Tabelas de Preços.');
   if uteis.confirmacao ( 'Confirma Atualização das Tabelas de Preços?')= Mryes then
      begin
       // se calculo é por desconto colocar cada percental com 0 menos (-) na frente
       if DataCadastros1.CdsMarkupMKP_AC_DC.AsString = 'D' then
        begin
          uteis.aviso('Não é possível criar tabela de preços pelo Tipo de Calculo Desconto.'#13+#10+
                'Favor criar um registro para a linha como Tipo Acrescimo.');
          exit;
        {wperc1:=DataCadastros1.CdsMarkupMKP_PERC1.AsCurrency * -1;
        wperc2:=DataCadastros1.CdsMarkupMKP_PERC2.AsCurrency * -1;
        wperc3:=DataCadastros1.CdsMarkupMKP_PERC3.AsCurrency * -1;
        wperc4:=DataCadastros1.CdsMarkupMKP_PERC4.AsCurrency * -1;
        wperc5:=DataCadastros1.CdsMarkupMKP_PERC5.AsCurrency * -1;
        wperc6:=DataCadastros1.CdsMarkupMKP_PERC6.AsCurrency * -1;  }  //MARCIO em 09/11/12
        end
       else
       begin
          with DataCadastros1 do
          begin
            wperc1 := CdsMarkupMKP_PERC1.AsCurrency;
            wperc2 := CdsMarkupMKP_PERC2.AsCurrency;
            wperc3 := CdsMarkupMKP_PERC3.AsCurrency;
            wperc4 := CdsMarkupMKP_PERC4.AsCurrency;
            wperc5 := CdsMarkupMKP_PERC5.AsCurrency;
            wperc6 := CdsMarkupMKP_PERC6.AsCurrency;
            wcomis1 := CdsMarkupMKP_COMIS1.AsFloat;
            wcomis2 := CdsMarkupMKP_COMIS2.AsFloat;
            wcomis3 := CdsMarkupMKP_COMIS3.AsFloat;
            wcomis4 := CdsMarkupMKP_COMIS4.AsFloat;
            wcomis5 := CdsMarkupMKP_COMIS5.AsFloat;
            wcomis6 := CdsMarkupMKP_COMIS6.AsFloat;
          end;
       end;

       Screen.Cursor := crHourglass;
       condicao := '';
       if EditLIN_CODIGO.Text <> '999' then  // TODOS
          condicao := 'where lin_codigo = '+QuotedStr(EditLIN_CODIGO.Text);
       {Atualiza margem de Venda dos produtos}
       // PVENDA
       DataCadastros.sqlUpdate.close;
       DataCadastros.SqlUpdate.sql.text :=
         SQLDEF('PRODUTOS',
                'Update PRD0000 set PRD_PVENDA = round( (PRD_PVENDA * (1 + '+ValorAmericano(CurrToStr(wperc1/100))+')),'+ IntToStr(dbInicio.Empresa.fPMT_QTDE_DEC_PED)  +')'+
                ',PRD_PERC_COMISSAO = '+ FloatToSQL(wcomis1) ,condicao,'','');
       DataCadastros.sqlUpdate.Execsql;

       // PVENDA2
       DataCadastros.sqlUpdate.close;
       { a partir do preço 2 se nao ter markup então nao contruir preço }
       if DataCadastros1.CdsMarkupMKP_PERC2.AsCurrency = 0 then
         DataCadastros.SqlUpdate.sql.text :=SQLDEF('PRODUTOS','Update PRD0000 set PRD_PVENDA2 = 0, PRD_PERC_COMISSAO2 = 0 ',condicao,'','')
       else
         DataCadastros.SqlUpdate.sql.text :=
            SQLDEF('PRODUTOS',
             'Update PRD0000 set PRD_PVENDA2 = round( (PRD_PVENDA * (1 + '+ValorAmericano(CurrToStr(wperc2/100))+')),'+ IntToStr(dbInicio.Empresa.fPMT_QTDE_DEC_PED)  +')'+
             ' , PRD_PERC_COMISSAO2 = '+ FloatToSQL(wcomis2) ,condicao,'','');
       DataCadastros.sqlUpdate.Execsql;

        // PVENDA3
       DataCadastros.sqlUpdate.close;
       { a partir do preço 2 se nao ter markup então nao contruir preço }
       if DataCadastros1.CdsMarkupMKP_PERC3.AsCurrency = 0 then
         DataCadastros.SqlUpdate.sql.text :=SQLDEF('PRODUTOS','Update PRD0000 set PRD_PVENDA3 = 0, PRD_PERC_COMISSAO3 = 0 ',condicao,'','')
       else
         DataCadastros.SqlUpdate.sql.text :=
            SQLDEF('PRODUTOS',
             'Update PRD0000 set PRD_PVENDA3 = round( (PRD_PVENDA * (1 + '+ValorAmericano(CurrToStr(wperc3/100))+')),'+ IntToStr(dbInicio.Empresa.fPMT_QTDE_DEC_PED)  +')'+
             ' , PRD_PERC_COMISSAO3 = '+ FloatToSQL(wcomis3) ,condicao,'','');

       DataCadastros.sqlUpdate.Execsql;

        // PVENDA4
       DataCadastros.sqlUpdate.close;
       { a partir do preço 2 se nao ter markup então nao contruir preço }
       if DataCadastros1.CdsMarkupMKP_PERC4.AsCurrency = 0 then
         DataCadastros.SqlUpdate.sql.text :=SQLDEF('PRODUTOS','Update PRD0000 set PRD_PVENDA4 = 0, PRD_PERC_COMISSAO4 = 0 ',condicao,'','')
       else
         DataCadastros.SqlUpdate.sql.text :=
            SQLDEF('PRODUTOS',
             'Update PRD0000 set PRD_PVENDA4 = round( (PRD_PVENDA * (1 + '+ValorAmericano(CurrToStr(wperc4/100))+')),'+ IntToStr(dbInicio.Empresa.fPMT_QTDE_DEC_PED)  +')'+
             ' , PRD_PERC_COMISSAO4 = '+ FloatToSQL(wcomis4) ,condicao,'','');

       DataCadastros.sqlUpdate.Execsql;

          // PVENDA5
       DataCadastros.sqlUpdate.close;
       { a partir do preço 2 se nao ter markup então nao contruir preço }
       if DataCadastros1.CdsMarkupMKP_PERC5.AsCurrency = 0 then
         DataCadastros.SqlUpdate.sql.text :=SQLDEF('PRODUTOS','Update PRD0000 set PRD_PVENDA5 = 0 , PRD_PERC_COMISSAO5 = 0 ',condicao,'','')
       else
         DataCadastros.SqlUpdate.sql.text :=
            SQLDEF('PRODUTOS',
             'Update PRD0000 set PRD_PVENDA5 = round( (PRD_PVENDA * (1 + '+ValorAmericano(CurrToStr(wperc5/100))+')),'+ IntToStr(dbInicio.Empresa.fPMT_QTDE_DEC_PED)  +')'+
             ' , PRD_PERC_COMISSAO5 = '+ FloatToSQL(wcomis5) ,condicao,'','');

       DataCadastros.sqlUpdate.Execsql;

         // PVENDA6
       DataCadastros.sqlUpdate.close;
       { a partir do preço 2 se nao ter markup então nao contruir preço }
       if DataCadastros1.CdsMarkupMKP_PERC6.AsCurrency = 0 then
         DataCadastros.SqlUpdate.sql.text :=SQLDEF('PRODUTOS','Update PRD0000 set PRD_PVENDA6 = 0, PRD_PERC_COMISSAO6 = 0 ',condicao,'','')
       else
         DataCadastros.SqlUpdate.sql.text :=
            SQLDEF('PRODUTOS',
             'Update PRD0000 set PRD_PVENDA6 = round( (PRD_PVENDA * (1 + '+ValorAmericano(CurrToStr(wperc6/100))+')),'+ IntToStr(dbInicio.Empresa.fPMT_QTDE_DEC_PED)  +')'+
             ' , PRD_PERC_COMISSAO6 = '+ FloatToSQL(wcomis6) ,condicao,'','');

       DataCadastros.sqlUpdate.Execsql;


       // gravar usuario que esta rodando a rotina no produto e data
        DataCadastros.sqlUpdate.close;     // LINHA ESPECIAFICA
        DataCadastros.SqlUpdate.sql.text :=
                                          SQLDEF('PRODUTOS','Update PRD0000 set USU_CODIGO_ATUAL_TAB = '''+ValorAmericano(CurrToStr(strtoInt(dbInicio.Usuario.Codigo)))+
                                          ''',USU_LOGIN_ATUAL_TAB = '''+dbInicio.Usuario.nome+''',PRD_DATA_ATUAL_TAB ='''+Dataamericana(DateToStr(now))+'''',condicao,'','');
        DataCadastros.sqlUpdate.Execsql;


       Screen.Cursor := crdefault;
       uteis.aviso('Cálculos concluidos com sucesso!');
       Mostratipo;
      end;

end;

procedure TFormTabelaMarkup.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
    Screen.OnActiveControlChange := NIL;
    try
       DataCadastros1.CdsMarkup.Close;
       DataCadastros.CdsPrdLinha.Close;
       SQLCdsProdutos.Close;
       SQLCdsMarkup.close;
    except on E:EDatabaseError do
       uteis.erro  (pchar('Impossível Fechar as tabelas '+e.message));
    end;
	Action := CaFree;
end;

procedure TFormTabelaMarkup.verificaEdicao;
begin
    // verifica estado da tabela em edicao e inclusao
    screen.cursor :=crHourglass;
    if DataCadastros1.CdsMarkup.State in [dsEdit,dsInsert] then
       begin
         if uteis.confirmacao ( 'Deseja salvar as alterações na Tabela ?') = idyes then
            begin
                Bit_Gravar.Click;  // chama o evento onclick do botão gravar
            end
         else
            begin
                Bit_Cancelar.Click;   // chama o evento onclick do botão cancelar
            end;
       end;
    screen.cursor := crDefault;
end;


procedure TFormTabelaMarkup.FormCloseQuery(Sender: tObject;
  var CanClose: Boolean);
begin
     verificaEdicao;
end;
procedure TFormTabelaMarkup.FormDestroy(Sender: TObject);
begin
     FormTabelaMarkup := Nil;
end;

procedure TFormTabelaMarkup.FormResize(Sender: TObject);
begin
     Width := 767;
     Height := 638;
end;

procedure TFormTabelaMarkup.DBGridMarkupsCellClick(Column: TColumn);
begin
Mostratipo;
end;

procedure TFormTabelaMarkup.Bit_SairClick(Sender: tObject);
begin
  close;
end;

procedure TFormTabelaMarkup.BotoesAcesso;
begin
     if assigned(FormTabelaMarkup) then
     begin
       Bit_novo.Enabled := Uteis.AcessoUsuario('CadastrosTabelas',DBInicio.Usuario.CODIGO,FormTabelaMarkup).Incluir;
       Bit_Excluir.Enabled := Uteis.AcessoUsuario('CadastrosTabelas',DBInicio.Usuario.CODIGO,FormTabelaMarkup).Exluir;
       DataCadastros1.DsMarkup.AutoEdit := Uteis.AcessoUsuario('CadastrosTabelas',DBInicio.Usuario.CODIGO,FormTabelaMarkup).Alterar;
     end;
end;

procedure TFormTabelaMarkup.DBGrid1TitleClick(Column: TColumn);
begin
   try
      SQLCdsProdutos.IndexFieldNames:=Column.FieldName;
   except
      uteis.aviso('Não é possivel ordenar por esta coluna');
   end;
end;

end.
