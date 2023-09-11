unit Prd0012;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB;

type
  TFormAlterarRef = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Edt_De: TEdit;
    Edt_Para: TEdit;
    Bit_Confirma: TBitBtn;
    Bit_Cancela: TBitBtn;
    procedure Bit_CancelaClick(Sender: tObject);
    procedure Bit_ConfirmaClick(Sender: tObject);
    procedure Edt_ParaEnter(Sender: tObject);
    procedure Edt_ParaExit(Sender: tObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAlterarRef: TFormAlterarRef;

implementation

uses Uteis, RWFunc, DataCad, Prd0001;

{$R *.dfm}





procedure TFormAlterarRef.Bit_CancelaClick(Sender: tObject);
begin

    Close;
end;

procedure TFormAlterarRef.Bit_ConfirmaClick(Sender: tObject);
begin
    if uteis.confirmacao ( ('Deseja substituir a refer�nica:'+#13+
                         '   de: '+Edt_De.Text+#13+
                         'para: '+Edt_Para.Text+#13+#13+
                         'Substituir� a refer�ncia dos Pedidos.'+#13+
                         'Substituir� a refer�ncia das Notas Fiscais.'+#13+
                         'Substituir� a refer�ncia nas Ordens de Produ��o.'+#13+
                         'Substituir� a refer�ncia nos Almoxarifados.'+#13+
                         'Substituir� a refer�ncia nos C�digo de Barra.'+#13+
                         'Substituir� a refer�ncia nos Processos da Produ��o.'+#13+
                         'Substituir� a refer�ncia nas Entrada de Notas.'+#13+
                         'Substituir� a refer�ncia nas Ordens Empenhadas.'+#13+
                         'Substituir� a refer�ncia nas Ordens de Compras.'+#13+
                         'Substituir� a refer�ncia nas Fichas Tecnicas.'+#13+
                         'Substituir� a refer�ncia no Cadastro de Produtos.'+#13+
                         'Substituir� a refer�ncia nas Solicita��es de Compra.'+#13+
                         'Substituir� a refer�ncia nos apontamentos.'+ #13+#13+
                         'Confirma a substitui��o ?'))=mrYes then
       begin
           try
             try
               {Tabela PRD0000}
               wSql1      := 'Update PRD0000 set PRD_REFER = '''+Edt_Para.Text+'''';
               wSeleciona := 'Where PRD_REFER = '''+Edt_De.Text+'''';
               //
               DataCadastros.sqlUpdate.Close;
               DataCadastros.SqlUpdate.sql.text :=SQLDEF('PRODUTOS',wSql1,wSeleciona,'','');
               DataCadastros.sqlUpdate.Execsql;
               //
               {Tabela PRD_ENSA}
               wSql1      := 'Update PRD_ENSA set PRD_REFER = '''+Edt_Para.Text+'''';
               wSeleciona := 'Where PRD_REFER = '''+Edt_De.Text+'''';
               //
               DataCadastros.sqlUpdate.Close;
               DataCadastros.SqlUpdate.sql.text :=SQLDEF('PRODUTOS',wSql1,wSeleciona,'','');
               DataCadastros.sqlUpdate.Execsql;
               //
               {Tabela PEDIDOS}
               wSql1      := 'Update PED_IT01 set PRD_REFER = '''+Edt_Para.Text+'''';
               wSeleciona := 'Where PRD_REFER = '''+Edt_De.Text+'''';
               //
               DataCadastros.sqlUpdate.Close;
               DataCadastros.SqlUpdate.sql.text :=SQLDEF('PRODUTOS',wSql1,wSeleciona,'','');
               DataCadastros.sqlUpdate.Execsql;
               //
               {Tabela ALMOX_IT01}
               wSql1      := 'Update ALMOX_IT01 set PRD_REFER = '''+Edt_Para.Text+'''';
               wSeleciona := 'Where PRD_REFER = '''+Edt_De.Text+'''';
               //
               DataCadastros.sqlUpdate.Close;
               DataCadastros.SqlUpdate.sql.text :=SQLDEF('PRODUTOS',wSql1,wSeleciona,'','');
               DataCadastros.sqlUpdate.Execsql;
               //
               {Tabela CdBAR001}
               wSql1      := 'Update CdBAR001 set CB_PRD_REFER = '''+Edt_Para.Text+'''';
               wSeleciona := 'Where CB_PRD_REFER = '''+Edt_De.Text+'''';
               //
               DataCadastros.sqlUpdate.Close;
               DataCadastros.SqlUpdate.sql.text :=SQLDEF('PRODUTOS',wSql1,wSeleciona,'','');
               DataCadastros.sqlUpdate.Execsql;
               //
               {Tabela CEL_MOV03}
               wSql1      := 'Update CEL_MOV03 set PRD_REFER = '''+Edt_Para.Text+'''';
               wSeleciona := 'Where PRD_REFER = '''+Edt_De.Text+'''';
               //
               DataCadastros.sqlUpdate.Close;
               DataCadastros.SqlUpdate.sql.text :=SQLDEF('PRODUTOS',wSql1,wSeleciona,'','');
               DataCadastros.sqlUpdate.Execsql;
               //
               {Tabela COT_IT01}
               wSql1      := 'Update COT_IT01 set PRD_REFER = '''+Edt_Para.Text+'''';
               wSeleciona := 'Where PRD_REFER = '''+Edt_De.Text+'''';
               //
               DataCadastros.sqlUpdate.Close;
               DataCadastros.SqlUpdate.sql.text :=SQLDEF('PRODUTOS',wSql1,wSeleciona,'','');
               DataCadastros.sqlUpdate.Execsql;
               //
               {Tabela ENF_IT01}
               wSql1      := 'Update ENF_IT01 set PRD_REFER = '''+Edt_Para.Text+'''';
               wSeleciona := 'Where PRD_REFER = '''+Edt_De.Text+'''';
               //
               DataCadastros.sqlUpdate.Close;
               DataCadastros.SqlUpdate.sql.text :=SQLDEF('PRODUTOS',wSql1,wSeleciona,'','');
               DataCadastros.sqlUpdate.Execsql;
               //
               {Tabela EPM_0000}
               wSql1      := 'Update EPM_0000 set PRD_REFER_ITENS = '''+Edt_Para.Text+'''';
               wSeleciona := 'Where PRD_REFER_ITENS = '''+Edt_De.Text+'''';
               //
               DataCadastros.sqlUpdate.Close;
               DataCadastros.SqlUpdate.sql.text :=SQLDEF('PRODUTOS',wSql1,wSeleciona,'','');
               DataCadastros.sqlUpdate.Execsql;
               //
               {Tabela FOR_PROD}
               wSql1      := 'Update FOR_PROD set PRD_REFER = '''+Edt_Para.Text+'''';
               wSeleciona := 'Where PRD_REFER = '''+Edt_De.Text+'''';
               //
               DataCadastros.sqlUpdate.Close;
               DataCadastros.SqlUpdate.sql.text :=SQLDEF('PRODUTOS',wSql1,wSeleciona,'','');
               DataCadastros.sqlUpdate.Execsql;
               //
               {Tabela FTC0000}
               wSql1      := 'Update FTC0000 set PRD_REFER = '''+Edt_Para.Text+'''';
               wSeleciona := 'Where PRD_REFER = '''+Edt_De.Text+'''';
               //
               DataCadastros.sqlUpdate.Close;
               DataCadastros.SqlUpdate.sql.text :=SQLDEF('PRODUTOS',wSql1,wSeleciona,'','');
               DataCadastros.sqlUpdate.Execsql;
               //
               {Tabela FTC_IT01 - PRD_REFER}
               wSql1      := 'Update FTC_IT01 set PRD_REFER = '''+Edt_Para.Text+'''';
               wSeleciona := 'Where PRD_REFER = '''+Edt_De.Text+'''';
               //
               DataCadastros.sqlUpdate.Close;
               DataCadastros.SqlUpdate.sql.text :=SQLDEF('PRODUTOS',wSql1,wSeleciona,'','');
               DataCadastros.sqlUpdate.Execsql;
               //
               {Tabela FTC_IT01 - PRD_REFER_ITENS}
               wSql1      := 'Update FTC_IT01 set PRD_REFER_ITENS = '''+Edt_Para.Text+'''';
               wSeleciona := 'Where PRD_REFER_ITENS = '''+Edt_De.Text+'''';
               //
               DataCadastros.sqlUpdate.Close;
               DataCadastros.SqlUpdate.sql.text :=SQLDEF('PRODUTOS',wSql1,wSeleciona,'','');
               DataCadastros.sqlUpdate.Execsql;
               //
               {Tabela NF_IT01}
               wSql1      := 'Update NF_IT01 set PRD_REFER = '''+Edt_Para.Text+'''';
               wSeleciona := 'Where PRD_REFER = '''+Edt_De.Text+'''';
               //
               DataCadastros.sqlUpdate.Close;
               DataCadastros.SqlUpdate.sql.text :=SQLDEF('PRODUTOS',wSql1,wSeleciona,'','');
               DataCadastros.sqlUpdate.Execsql;
               //
               {Tabela OCP_IT01}
               wSql1      := 'Update OCP_IT01 set PRD_REFER = '''+Edt_Para.Text+'''';
               wSeleciona := 'Where PRD_REFER = '''+Edt_De.Text+'''';
               //
               DataCadastros.sqlUpdate.Close;
               DataCadastros.SqlUpdate.sql.text :=SQLDEF('PRODUTOS',wSql1,wSeleciona,'','');
               DataCadastros.sqlUpdate.Execsql;
               //
               {Tabela OSV0001}
               wSql1      := 'Update OSV0001 set PRD_REFER = '''+Edt_Para.Text+'''';
               wSeleciona := 'Where PRD_REFER = '''+Edt_De.Text+'''';
               //
               DataCadastros.sqlUpdate.Close;
               DataCadastros.SqlUpdate.sql.text :=SQLDEF('PRODUTOS',wSql1,wSeleciona,'','');
               DataCadastros.sqlUpdate.Execsql;
               //
               {Tabela OSV_IT02 - PRD_REFER}
               wSql1      := 'Update OSV_IT02 set PRD_REFER = '''+Edt_Para.Text+'''';
               wSeleciona := 'Where PRD_REFER = '''+Edt_De.Text+'''';
               //
               DataCadastros.sqlUpdate.Close;
               DataCadastros.SqlUpdate.sql.text :=SQLDEF('PRODUTOS',wSql1,wSeleciona,'','');
               DataCadastros.sqlUpdate.Execsql;
               //
               {Tabela OSV_IT02 - PRD_REFER_ITENS}
               wSql1      := 'Update OSV_IT02 set PRD_REFER_ITENS = '''+Edt_Para.Text+'''';
               wSeleciona := 'Where PRD_REFER_ITENS = '''+Edt_De.Text+'''';
               //
               DataCadastros.sqlUpdate.Close;
               DataCadastros.SqlUpdate.sql.text :=SQLDEF('PRODUTOS',wSql1,wSeleciona,'','');
               DataCadastros.sqlUpdate.Execsql;
               //
               {Tabela PED_EB02}
               wSql1      := 'Update PED_EB02 set PRD_REFER = '''+Edt_Para.Text+'''';
               wSeleciona := 'Where PRD_REFER = '''+Edt_De.Text+'''';
               //
               DataCadastros.sqlUpdate.Close;
               DataCadastros.SqlUpdate.sql.text :=SQLDEF('PRODUTOS',wSql1,wSeleciona,'','');
               DataCadastros.sqlUpdate.Execsql;
               //
               {Tabela PED_EB03}
               wSql1      := 'Update PED_EB03 set PRD_REFER = '''+Edt_Para.Text+'''';
               wSeleciona := 'Where PRD_REFER = '''+Edt_De.Text+'''';
               //
               DataCadastros.sqlUpdate.Close;
               DataCadastros.SqlUpdate.sql.text :=SQLDEF('PRODUTOS',wSql1,wSeleciona,'','');
               DataCadastros.sqlUpdate.Execsql;

               {Tabela COTACAO_ITEM}
               wSql1      := 'Update COTACAO_ITEM set PRD_REFER = '''+Edt_Para.Text+'''';
               wSeleciona := 'Where PRD_REFER = '''+Edt_De.Text+'''';
               //
               DataCadastros.sqlUpdate.Close;
               DataCadastros.SqlUpdate.sql.text := wSql1 + wSeleciona;
               DataCadastros.sqlUpdate.Execsql;

               {Tabela apontamentos}
               wSql1      := 'Update apontamentos set PRD_REFER_ITENS = '''+Edt_Para.Text+'''';
               wSeleciona := 'Where PRD_REFER_ITENS = '''+Edt_De.Text+'''';
               //                           novi
               DataCadastros.sqlUpdate.Close;
               DataCadastros.SqlUpdate.sql.text :=SQLDEF('PRODUTOS',wSql1,wSeleciona,'','');
               DataCadastros.sqlUpdate.Execsql;
               //
             except on e:EDataBaseError do
                uteis.erro  (pchar('Erro ao Alterar a Refer�ncia ! '+e.message));
             end;
           finally
              begin
                  uteis.aviso('Substitui��o efetuada com sucesso... ');
                  if (DataCadastros.CdsProdutos.State in [dsBrowse]) and not (DataCadastros.CdsProdutos.IsEmpty) then
                     DataCadastros.CdsProdutos.Refresh;
                  with FormProduto do
                  begin
                   EdtPrd_Refer.Text := FormAlterarRef.Edt_Para.Text;
                   CdsProdutos.Close;
                   SqlProdutos.sql.Text := SQLDEF('PRODUTOS', 'SELECT * FROM PRD0000','', 'PRD_REFER', '');
                   CdsProdutos.Open;
                   BuscaProduto;
                   DbePrd_Descri.SetFocus;
                  end;
              end;
           end;
       end
    else
       begin
           Bit_Cancela.Click;
       end;
end;

procedure TFormAlterarRef.Edt_ParaEnter(Sender: tObject);
begin
    Edt_Para.SelectAll;
    Edt_Para.Color := $0080FFFF;
end;

procedure TFormAlterarRef.Edt_ParaExit(Sender: tObject);
begin
    try
      Edt_Para.Color := clWindow;
      wSql1      := 'Select P1.PRD_REFER from PRD0000 P1 ';
      wSeleciona := 'where P1.PRD_REFER = '''+Edt_Para.Text+'''';
      wOrdem     := 'P1.PRD_REFER';
      //
      DataCadastros.sqlUpdate.Close;
      DataCadastros.SqlUpdate.sql.text :=SQLDEF('PRODUTOS',wSql1,wSeleciona,wOrdem,'P1.');
      DataCadastros.sqlUpdate.Open;
      if not (DataCadastros.sqlUpdate.IsEmpty) then
         begin
             uteis.aviso('Refer�ncia j� cadastrada !');
             Edt_Para.Text := '';
             Edt_Para.SetFocus;
         end;
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao verifica a substitui��o da refer�ncia ! '+e.Message));
    end;
end;

end.
