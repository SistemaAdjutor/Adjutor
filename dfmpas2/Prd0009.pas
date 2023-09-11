{***********************************************************
| Programa...: Prd0009  - Nome formulario = FormEntraSai
| Objetivo...: Dar entradas e baixas no estoque manualmente
| Analista...: Marcio Neu Pacheco
| Programador: Jackson e Márcio
|
| Comentários:
|
| Criação..........: Fev/1999
| Ultima Alteração.: Out/2010
| Alterado por.....: Márcio
|
***********************************************************}
unit Prd0009;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, DBCtrls, Mask, ExtCtrls, ComCtrls, Buttons, DB, DBTables, RwFunc,
   rxToolEdit, RXDBCtrl, Provider, SqlExpr,SqlClientDataSet, DBClient, DBLocal, DBLocalS,
  rxCurrEdit, SimpleDS, Data.DBXFirebird;


type
  TFormEntraSai = class(TForm)
    Grp_Movimento: TGroupBox;
    GrpVariacoes: TGroupBox;
    DbePes_Var1: TDBEdit;
    DbePes_var2: TDBEdit;
    DbePes_var3: TDBEdit;
    DbePes_Var4: TDBEdit;
    DbePes_Var5: TDBEdit;
    DbePes_var6: TDBEdit;
    DbePes_var7: TDBEdit;
    DbePes_Var8: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    SqlCdsAlmox: TSQLClientDataSet;
    SqlCdsAlmoxAMX_CODIGO: TStringField;
    SqlCdsAlmoxAMX_DESCRI: TStringField;
    SqlCdsAlmoxEMP_CODIGO: TStringField;
    GrpAlmox: TGroupBox;
    LblAlmox: TLabel;
    CbAlmox: TComboBox;
    EdtAlmox: TEdit;
    SqlCdsAlmoxAMX_TIPO: TStringField;
    GrpDados: TGroupBox;
    Label9: TLabel;
    DBEdit7: TDBEdit;
    CbKardexTipo: TComboBox;
    Label10: TLabel;
    Panel1: TPanel;
    PanGravar: TPanel;
    Bit_Cancelar: TBitBtn;
    Bit_Gravar: TBitBtn;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    DbePES_QTDE: TDBEdit;
    Label6: TLabel;
    DbePes_Data: TDBDateEdit;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    DbePES_VALOR: TDBEdit;
    Label2: TLabel;
    PES_QTDE: TDBEdit;
    Label5: TLabel;
    DbePES_NUMDOC: TDBEdit;
    Label8: TLabel;
    DBECustoAgregado: TDBEdit;
    Label1: TLabel;
    DbePes_IPI: TDBEdit;
    procedure MudaCorCampos(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure Bit_GravarClick(Sender: tObject);
    procedure Bit_CancelarClick(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure DbePes_DataExit(Sender: tObject);
    procedure DbePES_QTDEExit(Sender: tObject);
    procedure FormCloseQuery(Sender: tObject; var CanClose: Boolean);
    procedure DbePes_var2Enter(Sender: tObject);
    procedure DbePes_var3Enter(Sender: tObject);
    procedure DbePes_Var1Enter(Sender: tObject);
    procedure DbePes_Var4Enter(Sender: tObject);
    procedure DbePes_Var5Enter(Sender: tObject);
    procedure DbePes_var6Enter(Sender: tObject);
    procedure DbePes_var7Enter(Sender: tObject);
    procedure DbePes_Var8Enter(Sender: tObject);
    procedure EdtAlmoxKeyPress(Sender: tObject; var Key: Char);
    procedure EdtAlmoxClick(Sender: tObject);
    procedure CbAlmoxClick(Sender: tObject);
    procedure EdtAlmoxExit(Sender: tObject);
    procedure CbAlmoxExit(Sender: tObject);
    procedure CbAlmoxEnter(Sender: tObject);
    procedure DbePes_IPIExit(Sender: tObject);
    procedure DBECustoAgregadoExit(Sender: tObject);
    procedure FormCreate(Sender: tObject);
  private
    wVariacoes :boolean;
    {campos}
    CampoEdit    :TEdit;
    CampoCombo   :TComboBox;
    CampoDBEdit  :TDBEdit;
    CampoData    :TDBDateEdit;
  public
    { Public declarations }
  end;

var
  FormEntraSai: TFormEntraSai;

implementation

{$R *.DFM}

uses Uteis, Prd0008, DataCad, DataCad1, Men0001, DataMov2, iniciodb;







procedure TFormEntraSai.MudaCorCampos(Sender: tObject);
begin
  {cor dos campos TComboBox}
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
  {CampoDBEdit :TDBEdit}
   if Assigned(CampoDBEdit) then
      begin
         CampoDBEdit.color := clWindow;
      end;
   if ActiveControl is TDBEdit then
      begin
         if TDBEdit(ActiveControl).color = $00D7D7D7 then
            begin
               exit;
            end;
         TDBEdit(ActiveControl).color := $0080FFFF;
         CampoDBEdit := TDBEdit(ActiveControl);
      end
   else
      begin
         CampoDBEdit := nil;
      end;
   {CampoData    :TDBDateEdit}
   if Assigned(CampoData) then
      begin
         CampoData.color := clWindow;
      end;
   if ActiveControl is TDBDateEdit then
      begin
         if TDBDateEdit(ActiveControl).color = $00D7D7D7 then
            begin
               exit;
            end;
         TDBDateEdit(ActiveControl).color := $0080FFFF;
         CampoData := TDBDateEdit(ActiveControl);
      end
   else
      begin
         CampoData := nil;
      end;

end;

procedure TFormEntraSai.FormShow(Sender: tObject);
begin
    FormEntraSai.Left := 50;
    FormEntraSai.Top  := 150;
    {ativa o método ao evento OnActiveControlChange}
    Screen.OnActiveControlChange   := MudaCorCampos;
    screen.cursor:=CrHourglass;
    try
      SqlCdsAlmox.Close;
      SqlCdsAlmox.CommandText := SQLDEF('TABELAS','Select * from ALMOX0000','','AMX_DESCRI','');
      SqlCdsAlmox.Open;
      SqlCdsAlmox.First;
      CbAlmox.Clear;
      while not SqlCdsAlmox.Eof do
       begin
           CbAlmox.Items.Add(SqlCdsAlmoxAMX_DESCRI.AsString);
           SqlCdsAlmox.Next;
       end;
      SqlCdsAlmox.First;
      EdtAlmox.Text := SqlCdsAlmoxAMX_CODIGO.AsString;
      CbAlmox.Text  := SqlCdsAlmoxAMX_DESCRI.AsString;
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao carregar a combo !'+e.message));
    end;
    try
      DataCadastros.CdsPrdManut.Close;
      DataCadastros.CdsPrdManut.CommandText := SQLDEF('PRODUTOS','SELECT E1.*,A1.AMX_DESCRI FROM PRD_ENSA E1 LEFT JOIN ALMOX0000 A1 ON (A1.AMX_CODIGO = E1.AMX_CODIGO) ','WHERE E1.PRD_REFER = '''+FormPrdManut.SqlCdsProdutoPRD_REFER.AsString+'''','E1.PES_DATA DESC,E1.PRD_REFER','E1.');
      DataCadastros.CdsPrdManut.Open;
      DataCadastros.CdsPrdManut.First;
      DataCadastros.CdsPrdManut.Insert;
      DataCadastros.CdsPrdManutPES_DATA .AsDateTime := Date;
     // DataCadastros.CdsPrdManutPES_VALOR.AsCurrency := FormPrdManut.SqlCdsProdutoPRD_PCUSTO.AsCurrency;
      DataCadastros.CdsPrdManutPES_QTDE.AsCurrency  := 0;
      DataCadastros.CdsPrdManutPES_IPI.AsCurrency   := 0;
      CbKardexTipo.ItemIndex                        := 4;
      DbePES_QTDE.SetFocus;
      DbePES_QTDE.SelectAll;
    except on E:EdataBaseError do
        uteis.erro  (pchar('Erro ao Abrir a Tabela PRD_ENSA !'+E.MESSAGE));
    end;
    try
      DataCadastros.CdsProdutos.Close;
      DataCadastros.CdsProdutos.CommandText := SQLDEF('PRODUTOS','SELECT * FROM PRD0000','WHERE PRD_REFER = '''+FormPrdManut.SqlCdsProdutoPRD_REFER.AsString+'''','PRD_REFER','');
      DataCadastros.CdsProdutos.Open;
      DataCadastros.CdsProdutos.Edit;
      // trazer preço atual do produto para a entrada
      if DataCadastros.CdsProdutosPRD_PMEDIO.AsCurrency > 0 then
         // pegar o p. medio como default
         DataCadastros.CdsPrdManutPES_VALOR.AsCurrency := DataCadastros.CdsProdutosPRD_PMEDIO.AsCurrency
      else
        if DataCadastros.CdsProdutosPRD_PCUSTO.AsCurrency > 0 then
           // pegar o p. custo como default
           DataCadastros.CdsPrdManutPES_VALOR.AsCurrency := DataCadastros.CdsProdutosPRD_PCUSTO.AsCurrency;


    except on E:EDataBaseError do
        uteis.erro  (pchar('Erro ao Abrir a Tabela de Produtos PRD0000 !'+e.message));
    end;
    // Disponibilizar detalhes de variacoes de um produto
    if (wVariacoes) then
       begin
           // mostra c/ variacoes
           GrpVariacoes.Visible := True;
           GrpVariacoes.Top     := 90;
           DbePes_Var1.Enabled  := IIF(DataCadastros.CdsProdutosPRD_DCVAR1.IsNull,'FALSE','TRUE');
           DbePes_Var2.Enabled  := IIF(DataCadastros.CdsProdutosPRD_DCVAR2.IsNull,'FALSE','TRUE');
           DbePes_Var3.Enabled  := IIF(DataCadastros.CdsProdutosPRD_DCVAR3.IsNull,'FALSE','TRUE');
           DbePes_Var4.Enabled  := IIF(DataCadastros.CdsProdutosPRD_DCVAR4.IsNull,'FALSE','TRUE');
           DbePes_Var5.Enabled  := IIF(DataCadastros.CdsProdutosPRD_DCVAR5.IsNull,'FALSE','TRUE');
           DbePes_Var6.Enabled  := IIF(DataCadastros.CdsProdutosPRD_DCVAR6.IsNull,'FALSE','TRUE');
           DbePes_Var7.Enabled  := IIF(DataCadastros.CdsProdutosPRD_DCVAR7.IsNull,'FALSE','TRUE');
           DbePes_Var8.Enabled  := IIF(DataCadastros.CdsProdutosPRD_DCVAR8.IsNull,'FALSE','TRUE');
           {Verifica se tem Multi-Almoxarifado}
           if (dbInicio.Empresa.wMultiAlmox = 'S') then
              begin
                  {Aumenta o Formulario}
//                  FormEntraSai.Height := 320;
                  GrpAlmox.Visible    := true;
                  GrpAlmox.Top        := 207;
                  GrpDados.Top        := 165;
                  PanGravar.Top       := 255;
              end
           else
              begin
//                  FormEntraSai.Height := 276;
                  GrpAlmox.Visible    := false;
                  GrpDados.Top        := 165;
                  PanGravar.Top       := 212;
              end;
       end
    else
       begin
           // mostra sem variacoes
//         FormEntraSai.Height  := 158;
           GrpVariacoes.Visible := False;
           PanGravar.Top        := 94;
           {Verifica se tem Multi-Almoxarifado}
           if (dbInicio.Empresa.wMultiAlmox = 'S') then
              begin
                  {Aumenta o Formulario}
                  FormEntraSai.Height := 246;
                  GrpAlmox.Visible    := true;
                  GrpDados.Top        := 89;
                  GrpAlmox.Top        := 132;
                  PanGravar.Top       := 180;
              end
           else
              begin
//                FormEntraSai.Height  := 198;
                  GrpAlmox.Visible     := false;
                  GrpDados.Top         := 89;
                  PanGravar.Top        := 135;
              end;
       end;
    FormEntraSai.AutoSize := True;
    screen.cursor         := CrDefault;
end;

procedure TFormEntraSai.Bit_GravarClick(Sender: tObject);
var
wPES_QTDE,wEntraSai,wQtde1,wQtde2,wQtde3,wQtde4,wQtde5,wQtde6,wQtde7,wQtde8,wTot_Qtde:Double;
begin
    if DataCadastros.CdsPrdManutPES_QTDE.AsCurrency = 0 then
       begin
           uteis.aviso('Digite quantidade!');
           DbePES_QTDE.SetFocus;
           DbePES_QTDE.SelectAll;
           exit;
       end;
    if (CbKardexTipo.ItemIndex = 0) then
       begin
           uteis.aviso('Informe o Tipo de Kardex !');
           CbKardexTipo.SetFocus;
           CbKardexTipo.SelectAll;
           CbKardexTipo.ItemIndex := 4;
           exit;
       end;
    if (dbInicio.Empresa.wMultiAlmox = 'S') then
       begin
           try
             DataCadastros.sqlUpdate.Close;
             DataCadastros.SqlUpdate.sql.text :=SQLDEF('TABELAS','Select AMX_CODIGO,PRD_REFER from ALMOX_IT01','where AMX_CODIGO = '''+EdtAlmox.Text+''' AND PRD_REFER = '''+FormPrdManut.SqlCdsProdutoPRD_REFER.AsString+'''','AMX_CODIGO,PRD_REFER','');
             DataCadastros.sqlUpdate.Open;
             if DataCadastros.sqlUpdate.IsEmpty then
                begin
                    {nao tem item, INSERIR}
                    try
                      DataMovimento2.sqlaux.Close;
                      DataMovimento2.sqlaux.sql.text := 'Insert Into ALMOX_IT01 (AMX_CODIGO,PRD_REFER,AMX_ESTOQUE,AMX_ENTRADA,EMP_CODIGO) Values ('''+EdtAlmox.Text+''','''+FormPrdManut.SqlCdsProdutoPRD_REFER.AsString+''',''0'','''+ValorAmericano(FormatFloat('',DbePES_QTDE.Field.Value))+''','''+dbInicio.Empresa.EMP_CODIGO+''')';
                      DataMovimento2.sqlaux.ExecSql;
                    except on E:EDataBaseError do
                        uteis.erro  (pchar('Erro ao inserir o item no arquivo Almox_It01 !'+e.message));
                    end;
                end
             else
                begin
                    {Encontrou o item, ALTERAR O ITEM SOMANDO ESTOQUE+ENTRADA}
                    try
                      DataMovimento2.sqlaux.Close;
                      DataMovimento2.sqlaux.sql.text := 'Update ALMOX_IT01 Set AMX_ENTRADA = (AMX_ENTRADA + '+ValorAmericano(FormatFloat('',DbePES_QTDE.Field.Value))+') where AMX_CODIGO = '''+EdtAlmox.Text+''' AND PRD_REFER = '''+FormPrdManut.SqlCdsProdutoPRD_REFER.AsString+'''';
                      DataMovimento2.sqlaux.ExecSql;
                    except on E:EdataBaseError do
                        uteis.erro  (pchar('Erro ao alterar o item no arquivo Almox_It01 !'+e.message));
                    end;
                end;
             // atribui codigo almoxarifado no movimento tanto na Entrada ou Saida
             DataCadastros.CdsPrdManutAMX_CODIGO.AsString := EdtAlmox.Text;
           except on E:EDataBaseError do
               uteis.erro  (pchar('Erro ao inserir o Item na tabela Almox_It01 !'+e.message));
           end;
       end;
    {A VARIAVEL wPES_QTDE É UTILIZANDO COM OU SEM VARIACAO}
    wPES_QTDE := DataCadastros.CdsPrdManutPES_QTDE.AsCurrency;
    //
    if (CbKardexTipo.ItemIndex > 0) then
       DataCadastros.CdsPrdManutPES_KARDEX_TIPO.AsString := iif(CbKardexTipo.ItemIndex = 1,'D',
                                                            iif(CbKardexTipo.ItemIndex = 2,'T',
                                                            iif(CbKardexTipo.ItemIndex = 3,'C','O')));
    if (wVariacoes) then
       begin
           // validar descriminação das quantidades, se tem variacao
           wTot_Qtde := ((((((((DataCadastros.CdsPrdManutPES_VAR1.AsCurrency + DataCadastros.CdsPrdManutPES_VAR2.AsCurrency) + DataCadastros.CdsPrdManutPES_VAR3.AsCurrency) + DataCadastros.CdsPrdManutPES_VAR4.AsCurrency) + DataCadastros.CdsPrdManutPES_VAR5.AsCurrency) + DataCadastros.CdsPrdManutPES_VAR6.AsCurrency) + DataCadastros.CdsPrdManutPES_VAR7.AsCurrency) + DataCadastros.CdsPrdManutPES_VAR8.AsCurrency));
           if Round(wTot_Qtde) <> round(DataCadastros.CdsPrdManutPES_QTDE.AsCurrency) then
              begin
                  uteis.aviso(pchar('A descriminação das qtdes nas variações não bate com Qtde Total.'+#13+#10+''+#13+#10+'Quantidade.: '+FormatFloat('#,##0.00',DataCadastros.CdsPrdManutPES_QTDE.AsCurrency)+#13+#10+'Variações...: '+FormatFloat('#,##0.00',wTot_qtde)+#13+#10+'Diferença...: '+FormatFloat('#,##0.00',DataCadastros.CdsPrdManutPES_QTDE.AsCurrency - wTot_Qtde)));
                  DbePes_Var1.SetFocus;
                  exit;
              end;
           {Quantidade a ser trabalhada - var usada p/ gravar reg atual}
           wQtde1    := DataCadastros.CdsPrdManutPES_VAR1.AsCurrency;
           wQtde2    := DataCadastros.CdsPrdManutPES_VAR2.AsCurrency;
           wQtde3    := DataCadastros.CdsPrdManutPES_VAR3.AsCurrency;
           wQtde4    := DataCadastros.CdsPrdManutPES_VAR4.AsCurrency;
           wQtde5    := DataCadastros.CdsPrdManutPES_VAR5.AsCurrency;
           wQtde6    := DataCadastros.CdsPrdManutPES_VAR6.AsCurrency;
           wQtde7    := DataCadastros.CdsPrdManutPES_VAR7.AsCurrency;
           wQtde8    := DataCadastros.CdsPrdManutPES_VAR8.AsCurrency;
       end;
    if FormEntraSai.Caption = 'Estoque - [Entrada]' then
       begin
           DataCadastros.CdsPrdManutPRD_REFER.AsString       := FormPrdManut.SqlCdsProdutoPRD_REFER.AsString;
           DataCadastros.CdsPrdManutEMP_CODIGO.AsString      := dbInicio.Empresa.EMP_CODIGO;
           DataCadastros.CdsPrdManutPES_ORIGEM.AsString      := 'Manual';
           DataCadastros.CdsPrdManutPES_TIPO.AsString        := 'E';
           DataCadastros.CdsPrdManutPES_FLAG_ACERTO.AsString := 'N';
           DataCadastros.CdsPrdManutPES_FLAG_CONTA.AsString  := 'S';
           DataCadastros.CdsPrdManutPES_KARDEX_TIPO.AsString := 'X';
           DataCadastros.CdsPrdManutPES_HORA.AsString        := TimeToStr(time);
           DataCadastros.CdsPrdManutUSU_CODIGO.Value         := strtoInt(dbInicio.Usuario.Codigo);
           DataCadastros.CdsPrdManutUSU_LOGIN.AsString       := dbInicio.Usuario.nome;
//         DataCadastros.CdsPrdManut.ApplyUpdates(0);
           {Atualiza TbProduto}
           wEntraSai := DataCadastros.CdsProdutosPRD_ENTRADA.AsCurrency;
           DataCadastros.CdsProdutosPRD_ENTRADA.AsCurrency  := WEntraSai + WPES_QTDE;
           DataCadastros.CdsProdutosPRD_PCUSTO.AsCurrency   := DbePES_VALOR.Field.AsCurrency;
           // atualiza somente se tiver zero pois os calculos do p.medio são feitos na entrada na nota
           if DataCadastros.CdsProdutosPRD_PMEDIO.AsCurrency = 0 then
              DataCadastros.CdsProdutosPRD_PMEDIO.AsCurrency := DbePES_VALOR.Field.AsCurrency;
           // atualiza custo com credito somente se tiver zero pois os calculos de creditos é feito somente na entrada da nota
           if DataCadastros.CdsProdutosPRD_CUSTO_CREDITO.AsCurrency = 0 then
               DataCadastros.CdsProdutosPRD_CUSTO_CREDITO.AsCurrency := DbePES_VALOR.Field.AsCurrency;
           // atualiza custo de Entrada somente se tiver zero pois os calculos de creditos é feito somente na entrada da nota
           if DataCadastros.CdsProdutosPRD_CUSTOCOMIPI.AsCurrency = 0 then
               DataCadastros.CdsProdutosPRD_CUSTOCOMIPI.AsCurrency := DBECustoAgregado.Field.AsCurrency;

           if (wVariacoes) then
              begin
                  DataCadastros.CdsProdutosPRD_VAR1.AsCurrency     := DataCadastros.CdsProdutosPRD_VAR1.AsCurrency + wQtde1;
                  DataCadastros.CdsProdutosPRD_VAR2.AsCurrency     := DataCadastros.CdsProdutosPRD_VAR2.AsCurrency + wQtde2;
                  DataCadastros.CdsProdutosPRD_VAR3.AsCurrency     := DataCadastros.CdsProdutosPRD_VAR3.AsCurrency + wQtde3;
                  DataCadastros.CdsProdutosPRD_VAR4.AsCurrency     := DataCadastros.CdsProdutosPRD_VAR4.AsCurrency + wQtde4;
                  DataCadastros.CdsProdutosPRD_VAR5.AsCurrency     := DataCadastros.CdsProdutosPRD_VAR5.AsCurrency + wQtde5;
                  DataCadastros.CdsProdutosPRD_VAR6.AsCurrency     := DataCadastros.CdsProdutosPRD_VAR6.AsCurrency + wQtde6;
                  DataCadastros.CdsProdutosPRD_VAR7.AsCurrency     := DataCadastros.CdsProdutosPRD_VAR7.AsCurrency + wQtde7;
                  DataCadastros.CdsProdutosPRD_VAR8.AsCurrency     := DataCadastros.CdsProdutosPRD_VAR8.AsCurrency + wQtde8;
              end;
           DataCadastros.CdsProdutos.ApplyUpdates(0);
       end
    else
       begin
           { SAIDA }
           DataCadastros.CdsPrdManutPRD_REFER.AsString       := FormPrdManut.SqlCdsProdutoPRD_REFER.AsString;
           DataCadastros.CdsPrdManutEMP_CODIGO.AsString      := dbInicio.Empresa.EMP_CODIGO;
           DataCadastros.CdsPrdManutPES_ORIGEM.AsString      := 'Manual';
           DataCadastros.CdsPrdManutPES_TIPO  .AsString      := 'S';
           DataCadastros.CdsPrdManutPES_FLAG_ACERTO.AsString := 'N';
           DataCadastros.CdsPrdManutPES_FLAG_CONTA.AsString  := 'S';
           DataCadastros.CdsPrdManutPES_KARDEX_TIPO.AsString := 'S';
           DataCadastros.CdsPrdManutPES_HORA.AsString        := TimeToStr(time);
           DataCadastros.CdsPrdManutUSU_CODIGO.Value         := strtoInt(dbInicio.Usuario.Codigo);
           DataCadastros.CdsPrdManutUSU_LOGIN.AsString       := dbInicio.Usuario.nome;
//           DataCadastros.CdsPrdManut.ApplyUpdates(0);
           {Atualiza TbProduto}
           wEntraSai := DataCadastros.CdsProdutosPRD_SAIDA.AsCurrency;
           DataCadastros.CdsProdutosPRD_SAIDA.AsCurrency  := WEntraSai + WPES_QTDE;
           if (wVariacoes) then
              begin
                  DataCadastros.CdsProdutosPRD_VAR1.AsCurrency   := DataCadastros.CdsProdutosPRD_VAR1.AsCurrency - wQtde1;
                  DataCadastros.CdsProdutosPRD_VAR2.AsCurrency   := DataCadastros.CdsProdutosPRD_VAR2.AsCurrency - wQtde2;
                  DataCadastros.CdsProdutosPRD_VAR3.AsCurrency   := DataCadastros.CdsProdutosPRD_VAR3.AsCurrency - wQtde3;
                  DataCadastros.CdsProdutosPRD_VAR4.AsCurrency   := DataCadastros.CdsProdutosPRD_VAR4.AsCurrency - wQtde4;
                  DataCadastros.CdsProdutosPRD_VAR5.AsCurrency   := DataCadastros.CdsProdutosPRD_VAR5.AsCurrency - wQtde5;
                  DataCadastros.CdsProdutosPRD_VAR6.AsCurrency   := DataCadastros.CdsProdutosPRD_VAR6.AsCurrency - wQtde6;
                  DataCadastros.CdsProdutosPRD_VAR7.AsCurrency   := DataCadastros.CdsProdutosPRD_VAR7.AsCurrency - wQtde7;
                  DataCadastros.CdsProdutosPRD_VAR8.AsCurrency   := DataCadastros.CdsProdutosPRD_VAR8.AsCurrency - wQtde8;
              end;
           DataCadastros.CdsProdutos.ApplyUpdates(0);
       end;
    DataCadastros.CdsPrdManut.ApplyUpdates(0);
    FormPrdManut.DbGrdManut.SetFocus;
    CLOSE;
end;

procedure TFormEntraSai.Bit_CancelarClick(Sender: tObject);
begin
    DataCadastros.CdsPrdManut.cancel;
    DataCadastros.CdsProdutos.Cancel;
    Close;
end;

procedure TFormEntraSai.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
    Screen.OnActiveControlChange := NIL;
end;

procedure TFormEntraSai.DbePes_DataExit(Sender: tObject);
begin
    if not TestaDataStr(DbePes_Data.Text) then
       DbePes_Data.setfocus;
end;

procedure TFormEntraSai.DbePES_QTDEExit(Sender: tObject);
begin
    // atribuiçao default na primeira variacao
   // if DataCadastros.CdsPrdManut.State in [dsInsert] then
   //    if (DbePes_Var1.Field.AsCurrency = 0) or (DbePes_Var1.Field.IsNull) then
          DataCadastros.CdsPrdManutPES_VAR1.AsCurrency := DataCadastros.CdsPrdManutPES_QTDE.AsCurrency;
end;

procedure TFormEntraSai.FormCloseQuery(Sender: tObject;
  var CanClose: Boolean);
begin
    try
      DataCadastros.CdsProdutos.Close;
      DataCadastros.CdsPrdManut.Close;
    except on E:EdataBaseError do
        uteis.erro  (pchar('Erro ao Fechar as Tabelas '+e.message));
    end;
end;

procedure TFormEntraSai.FormCreate(Sender: tObject);
begin
     wVariacoes := (DBiNICIO.GetParametroSistema('PMT_VARIACOES')='S');
end;

procedure TFormEntraSai.DbePes_Var1Enter(Sender: tObject);
begin
    DbePes_Var1.SelectAll;
end;

procedure TFormEntraSai.DbePes_var2Enter(Sender: tObject);
begin
    DbePes_Var2.SelectAll;
end;

procedure TFormEntraSai.DbePes_var3Enter(Sender: tObject);
begin
    DbePes_Var3.SelectAll;
end;

procedure TFormEntraSai.DbePes_Var4Enter(Sender: tObject);
begin
    DbePes_Var4.SelectAll;
end;

procedure TFormEntraSai.DbePes_Var5Enter(Sender: tObject);
begin
    DbePes_Var5.SelectAll;
end;

procedure TFormEntraSai.DbePes_var6Enter(Sender: tObject);
begin
    DbePes_Var6.SelectAll;
end;

procedure TFormEntraSai.DbePes_var7Enter(Sender: tObject);
begin
    DbePes_Var7.SelectAll;
end;

procedure TFormEntraSai.DbePes_Var8Enter(Sender: tObject);
begin
    DbePes_Var8.SelectAll;
end;

procedure TFormEntraSai.EdtAlmoxKeyPress(Sender: tObject; var Key: Char);
begin
    If not( key in['0'..'9',#8] ) then
        begin
            //beep;
            key:=#0;
        end;
end;

procedure TFormEntraSai.EdtAlmoxClick(Sender: tObject);
begin
    EdtAlmox.SelectAll;
end;

procedure TFormEntraSai.CbAlmoxClick(Sender: tObject);
begin
    if (ActiveControl.Name='Bit_Cancelar') then
       exit;
    if SqlCdsAlmox.Locate('AMX_DESCRI',CbAlmox.Text,[]) = true then
       begin
           EdtAlmox.Text := SqlCdsAlmoxAMX_CODIGO.AsString;
       end
    else
       begin
           uteis.aviso('Almoxarifado não encontrado !');
           EdtAlmox.Text := '';
           CbAlmox.SetFocus;
       end;
end;

procedure TFormEntraSai.EdtAlmoxExit(Sender: tObject);
begin
    if (ActiveControl.Name='Bit_Cancelar') then
       exit;
    EdtAlmox.Text := StrZero(EdtAlmox.Text,EdtAlmox.MaxLength);
    if SqlCdsAlmox.Locate('AMX_CODIGO',EdtAlmox.Text,[]) = true then
       begin
           CbAlmox.Text := SqlCdsAlmoxAMX_DESCRI.AsString;
       end
    else
       begin
           EdtAlmox.Text := '';
           CbAlmox.Text  := '';
       end;
end;

procedure TFormEntraSai.CbAlmoxExit(Sender: tObject);
begin
    if (ActiveControl.Name='Bit_Cancelar') then
       exit;
    if SqlCdsAlmox.Locate('AMX_DESCRI',CbAlmox.Text,[]) = true then
       begin
           EdtAlmox.Text := SqlCdsAlmoxAMX_CODIGO.AsString;
       end
    else
       begin
           uteis.aviso('Almoxarifado não encontrado !');
           EdtAlmox.Text := '';
           CbAlmox.SetFocus;
       end;
end;

procedure TFormEntraSai.CbAlmoxEnter(Sender: tObject);
begin
    CbAlmox.SelectAll;
end;

procedure TFormEntraSai.DbePes_IPIExit(Sender: tObject);
begin
    //if DbePes_IPI.Field.AsCurrency>0 then
    //   begin
    //       Curr_Ipi.Value := DbePES_VALOR.Field.AsCurrency +((DbePES_VALOR.Field.AsCurrency * DbePes_IPI.Field.AsCurrency)/100);
    //   end;
end;

procedure TFormEntraSai.DBECustoAgregadoExit(Sender: tObject);
begin
   // digitar custo de entrada também
   if DataCadastros.CdsPrdManutPES_CUSTO_AGREGADO.AsCurrency <= 0  then
      begin
      if uteis.confirmacao ( 'Favor digitar o custo de entrada. Se deseja que seja igual ao custo liquido confirme !')= Mryes then
         DataCadastros.CdsPrdManutPES_CUSTO_AGREGADO.AsCurrency := DataCadastros.CdsPrdManutPES_VALOR.AsCurrency;

      end;
end;

end.
