{***********************************************************
| Programa...: Prd0002   - Nome formulario = FormProdGrup
| Objetivo...: Cadastrar Grupo de Produtos
| Analista...: Márcio Neu Pacheco
| Programador: Jackson Neu Pacheco
|
| Comentários: O valor "N" no PRG_COMISS é que faz nao pagar
               comissao p/ produto deste grupo
|
| Criação..........: Set/98
| Ultima Alteração.: Dez/01
| Alterado por.....: Márcio
|
  Migração Interbase
  Migrado .........: Ago/2003
  Migrado por .....: Rodrigo Ramos

    ***********************************************************}
unit Prd0002;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, DBCtrls, Mask, ExtCtrls, ComCtrls, Buttons, DB, DBTables, RwFunc,
  Provider, SqlExpr,SqlClientDataSet, DBClient, DBLocal, DBLocalS, ppDB, ppDBPipe, ppComm,
  ppRelatv, ppProd, ppClass, ppReport, ppModule, raCodMod, ppCtrls,
  ppBands, ppVar, ppPrnabl, ppCache, Data.DBXFirebird, ppDesignLayer,
  ppParameter, SimpleDS;

type
  TFormProdGrupo = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DBePgr_descri: TDBEdit;
    Panel1: TPanel;
    DBNavigator1: TDBNavigator;
    Panel2: TPanel;
    Bit_novo: TBitBtn;
    Bit_Excluir: TBitBtn;
    Bit_Gravar: TBitBtn;
    Bit_Cancelar: TBitBtn;
    Bit_Sair: TBitBtn;
    EdtPgr_codigo: TEdit;
    DbRadComissao: TDBRadioGroup;
    Label3: TLabel;
    Label4: TLabel;
    DbePercentual: TDBEdit;
    ppRPRelGruProdu01: TppReport;
    ppDBGruProdu: TppDBPipeline;
    SqlCdsRelGruProdu: TSQLClientDataSet;
    DsGruProdu: TDataSource;
    SqlCdsRelGruProduPGR_CODIGO: TStringField;
    SqlCdsRelGruProduPGR_DESCRI: TStringField;
    SqlCdsRelGruProduPGR_COMISS: TStringField;
    SqlCdsRelGruProduPGR_COM_PERC: TFMTBCdField;
    SqlCdsRelGruProduEMP_CODIGO: TStringField;
    pp00HeaderBand2: TppHeaderBand;
    ppLine5: TppLine;
    LBL_00_EMPRESA: TppLabel;
    LBL_00_LTITULO1: TppLabel;
    LBL_00_LTITULO2: TppLabel;
    ppLine6: TppLine;
    ppSystemVariable3: TppSystemVariable;
    ppSystemVariable4: TppSystemVariable;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLine1: TppLine;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    pp00DetailBand2: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppVariable1: TppVariable;
    ppDBText3: TppDBText;
    pp00SummaryBand2: TppSummaryBand;
    ppLine9: TppLine;
    ppLabel25: TppLabel;
    ppDBCalc2: TppDBCalc;
    raCodeModule2: TraCodeModule;
    ppLabel5: TppLabel;
    ppDBAtEstoque: TppDBText;
    SqlCdsRelGruProduPGR_ATUALIZA_ESTOQUE: TStringField;
    Label5: TLabel;
    CbxAtualizaEstoque: TComboBox;
    Bit_Relatorio: TBitBtn;
    GroupBox1: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    BitAtualizaMargens: TBitBtn;
    Label9: TLabel;
    DBEdit1: TDBEdit;
    Label8: TLabel;
    DBEdit2: TDBEdit;
    Label10: TLabel;
    DBEdit3: TDBEdit;
    Label11: TLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Label12: TLabel;
    Label13: TLabel;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    SqlCdsRelGruProduPGR_PER_ICMS: TFMTBCDField;
    SqlCdsRelGruProduPGR_PER_PISCONFINS: TFMTBCDField;
    SqlCdsRelGruProduPGR_PER_IPI: TFMTBCDField;
    SqlCdsRelGruProduPGR_PER_FRETE: TFMTBCDField;
    SqlCdsRelGruProduPGR_PER_OUTROS: TFMTBCDField;
    SqlCdsRelGruProduPGR_PER_LUCRO: TFMTBCDField;
    SqlCdsRelGruProduPGR_MARGEMOFERTA: TFMTBCDField;
    SqlCdsRelGruProduPGR_MARGEMVENDA: TFMTBCDField;
    procedure MudaCorCampos(Sender: tObject);
    procedure Bit_SairClick(Sender: tObject);
    procedure Bit_novoClick(Sender: tObject);
    procedure Bit_ExcluirClick(Sender: tObject);
    procedure Bit_GravarClick(Sender: tObject);
    procedure DesabilitaBotoes;
    procedure BuscaGrupoPrd;
    procedure HabilitaBotoes;
    procedure verificaEdicao;
    procedure Bit_CancelarClick(Sender: tObject);
    procedure FormCloseQuery(Sender: tObject; var CanClose: Boolean);
    procedure DBNavigator1Click(Sender: tObject; Button: TNavigateBtn);
    procedure FormShow(Sender: tObject);
    procedure EdtPgr_codigoExit(Sender: tObject);
    procedure TbPrdGrupoBeforeEdit(DataSet: TDataSet);
    procedure Bit_RelatorioClick(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure EdtPgr_codigoKeyPress(Sender: tObject; var Key: Char);
    procedure EdtPgr_codigoEnter(Sender: tObject);
    procedure CbxAtualizaEstoqueChange(Sender: tObject);
    procedure FormDestroy(Sender: TObject);
    procedure BitAtualizaMargensClick(Sender: TObject);

  private
    { Private declarations }
             {campos}
    CampoEdit    :TEdit;
    CampoDBEdit  :TDBEdit;
    CampoCombo   :TComboBox;
  public
    { Public declarations }
    sCodigoBuscar:String;
    procedure BotoesAcesso;
  end;

var
  FormProdGrupo: TFormProdGrupo;

implementation

uses Uteis, DataCad, ufrmpreviewrb, iniciodb, Prd0001;

{$R *.DFM}

procedure TFormProdGrupo.MudaCorCampos(Sender: tObject);
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
    {CampoCombo : TComboBox}
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
end;

procedure TFormProdGrupo.verificaEdicao;
begin
    // verifica estado da tabela em edicao e inclusao
    screen.cursor :=crHourglass;
    if DataCadastros.CdsPrdGrupo.State in [dsEdit,dsInsert] then
       begin
           if uteis.confirmacao ( 'Deseja salvar alterações ?') = idyes then
              begin
                  Bit_Gravar.Click;  // chana o evento onclick do botão gravar
              end
           else
              begin
                  Bit_Cancelar.Click;   // chana o evento onclick do botão cancelar
              end;
       end;
    screen.cursor := crDefault;
end;

procedure TFormProdGrupo.HabilitaBotoes;
begin
    Bit_novo.Enabled := True;
    Bit_Excluir.Enabled := True;
    Bit_Sair.visible := True;
    Bit_relatorio.Enabled := True;
    Bit_Gravar.Enabled := False;
    Bit_Cancelar.Visible := False;
    EdtPgr_codigo.Color := clWindow;
    EdtPgr_codigo.Enabled := True;
    DBnavigator1.Enabled := True;
    BotoesAcesso;
end;

procedure TFormProdGrupo.DesabilitaBotoes;
begin
    BotoesAcesso;
    Bit_novo.Enabled := False;
    Bit_Excluir.Enabled := False;
    Bit_Sair.Visible := False;
    Bit_Relatorio.Enabled := False;
    Bit_Gravar.Enabled := True;
    Bit_Cancelar.Visible := True;
    EdtPgr_codigo.Color := clSilver;
    EdtPgr_codigo.Enabled := False;
    DBnavigator1.Enabled := False;

end;

procedure TFormProdGrupo.BuscaGrupoPrd;// busca por codigo
begin
    if DataCadastros.CdsPrdGrupo.Locate('PGR_CODIGO',EdtPgr_codigo.Text,[]) = false then
       begin
           messagebeep($ffff);
           uteis.aviso('Codigo do Produto não cadastrado');
           EdtPgr_codigo.Text := DataCadastros.CdsPrdGrupoPgr_codigo.AsString;
       end;
end;

procedure TFormProdGrupo.FormShow(Sender: tObject);
begin
    Left := 237;
    Top  := 191;
    {ativa o método ao evento OnActiveControlChange}
    Screen.OnActiveControlChange   := MudaCorCampos;

    Screen.Cursor := crHourglass;
    try
      {Verifica se compartilha tabelas}
      DataCadastros.CdsPrdGrupo.Close;
      DataCadastros.CdsPrdGrupo.CommandText := SQLDEF('TABELAS','SELECT * FROM PRD_GRUPO','','','');
      DataCadastros.CdsPrdGrupo.Open;
    except on E:EdatabaseError do
       uteis.erro  ('Impossível acessar a tabela "GRUPO DE PRODUTO".');
    end;
    Habilitabotoes;
    if DataCadastros.CdsPrdGrupo.IsEmpty Then  //Evita alteração antes que se
       begin                               //inclua registros na tabela.
         DataCadastros.DsPrdGrupo.AutoEdit := False;
       end
    else
       begin
         DataCadastros.CdsPrdGrupo.Locate('PGR_CODIGO',sCodigoBuscar,[]);
       end;
    EdtPgr_codigo.text           := DataCadastros.CdsPrdGrupoPgr_codigo.AsString;
    CbxAtualizaEstoque.ItemIndex := IIF(DataCadastros.CdsPrdGrupoPgr_atualiza_Estoque.AsString = 'S',0,1);
    Screen.Cursor := crdefault;
end;

procedure TFormProdGrupo.Bit_novoClick(Sender: tObject);
begin
    try
      Screen.Cursor := crHourglass;
      DataCadastros.CdsPrdGrupo.Insert;
      EdtPgr_codigo.Text := '000';
      DbRadComissao.ItemIndex      := 0;
      CbxAtualizaEstoque.ItemIndex := 0;
      screen.cursor := crdefault;
      DesabilitaBotoes;
      uteis.HabilitaIncluir('CadastrosTabelas',DBInicio.Usuario.CODIGO,FormProdGrupo);
      DbePgr_Descri.setfocus;
    except on E:EDataBaseError do
        uteis.erro  (pchar('Erro ao inserir o registro !'+e.message));
    end;
end;

procedure TFormProdGrupo.Bit_ExcluirClick(Sender: tObject);
begin
  if DBInicio.BuscaUmDadoSqlAsInteger(' SELECT count(*) FROM PRD0000 WHERE PGR_CODIGO = '+QuotedStr(DataCadastros.CdsPrdGrupoPGR_CODIGO.AsString)) > 0 then
    GeraException('Não pode excluir um GRUPO   que já foi cadastrado em um produto');
    if DataCadastros.CdsPrdGrupo.IsEmpty Then   //evita exclussão de registro
       Begin                                      // em uma Tabela Vazia.
           messagebeep($ffff);
           uteis.aviso('Não existe Produto Cadastrado !!!');
           exit;
       end;
    if uteis.confirmacao ( 'Deseja Excluir este Produto?')= Mryes then
       begin
           Screen.cursor :=crHourglass;
           DataCadastros.CdsPrdGrupo.Delete;
           DataCadastros.CdsPrdGrupo.ApplyUpdates(0);
           screen.cursor := crDefault;
       end;
    EdtPgr_codigo.text           := DataCadastros.CdsPrdGrupoPGR_CODIGO.AsString;
    CbxAtualizaEstoque.ItemIndex := IIF(DataCadastros.CdsPrdGrupoPgr_atualiza_Estoque.AsString = 'S',0,1);
    EdtPgr_codigo.SetFocus;
end;

procedure TFormProdGrupo.Bit_GravarClick(Sender: tObject);
begin
    //salva o registro
    try
      Screen.Cursor := crHourGlass;
      DataCadastros.CdsPrdGrupoPGR_ATUALIZA_ESTOQUE.AsString := IIF(CbxAtualizaEstoque.ItemIndex = 0,'S','N');
      DataCadastros.CdsPrdGrupoPGR_CODIGO.AsString := StrZero(EdtPgr_codigo.Text,EdtPgr_codigo.MaxLength);
      DataCadastros.CdsPrdGrupoEMP_CODIGO.AsString := dbInicio.Empresa.EMP_CODIGO;
      DataCadastros.CdsPrdGrupo.ApplyUpdates(0);
      DataCadastros.CdsPrdGrupo.refresh;
      DataCadastros.DsPrdGrupo.AutoEdit := true;
      Screen.Cursor := crDefault;
      EdtPgr_codigo.Text := DataCadastros.CdsPrdGrupoPGR_CODIGO.AsString;

      DBInicio.ExecSql('UPDATE PRD0000 SET PRD_COMISSAO = ' + Uteis.FloatToSQL(DataCadastros.CdsPrdGrupoPGR_COM_PERC.AsFloat) + ' WHERE PGR_CODIGO = ' + QuotedStr(EdtPgr_codigo.Text)  );

      Habilitabotoes;
      EdtPgr_codigo.Setfocus;
    except on E:EdatabaseError do
       uteis.erro  (Pchar('Erro ao gravar registro !'+e.Message));
    end;
end;

procedure TFormProdGrupo.BitAtualizaMargensClick(Sender: TObject);
var
  msg , sql, where, cd : string;
  porFora: Boolean;
begin
  if DBInicio.Empresa.wPMT_NAO_AUTO_PVENDA then
  begin
    uteis.aviso('Atenção está rotina vai modificador todos custos/margem dos Produtos deste grupo');
    msg := 'Não é permitido ajustar preço de Venda então a rotina vai atualizar margens somente de '+#13#10+
    ' produtos sem margem e atualizará  preço de venda de itens com preço zero '+#13#10+
    ' Confirma Atualização ?'
  end
  else
  begin
   uteis.aviso('Atenção está rotina vai modificador todos os preços dos Produtos deste grupo');
   msg := 'Confirma Atualização das Margens e dos Preços?';
  end;

   if uteis.confirmacao (msg)= Mryes then
   begin
     porFora :=  DBInicio.GetParametroSistema('PMT_METODO_CALCULO_PRECO') = '0'; //  0 = por fora / 1 = por dentro
     cd := DBInicio.GetParametroSistema('PMT_QTDE_DEC_PED');
     with DataCadastros do
     begin

       {Atualiza o preço de  venda nos produtos}
        // calcular pelo CUSTO LIQUIDO
      if not DBInicio.Empresa.wPMT_NAO_AUTO_PVENDA then
      begin
       {Atualiza margem de oferta margem de Venda e seus valores de composições dos produtos}
        DBInicio.EXECSQL ( SQLDEF('PRODUTOS','Update PRD0000 set  '+
                             ' PRD_PER_ICMS = '+FloatToSQL(CdsPrdGrupoPGR_PER_ICMS.AsFloat)+
                             ' ,PRD_PER_PISCONFINS = '+ FloatToSQL(CdsPrdGrupoPGR_PER_PISCONFINS.AsFloat  ) +
                             ' ,PRD_PER_IPI = '+FloatToSQL(CdsPrdGrupoPGR_PER_IPI.AsFloat) +
                             ' ,PRD_PER_FRETE = '+FloatToSQL(CdsPrdGrupoPGR_PER_FRETE.AsFloat)+
                             ' ,PRD_PER_OUTROS = '+FloatToSQL(CdsPrdGrupoPGR_PER_OUTROS.AsFloat)+
                             ' ,PRD_PER_LUCRO = '+FloatToSQL(CdsPrdGrupoPGR_PER_LUCRO.AsFloat)+
                             ' ,PRD_MARGEMVENDA = '+FloatToSQL(CdsPrdGrupoPGR_MARGEMVENDA.AsFloat)+
                             ' ,PRD_MARGEMOFERTA = '+FloatToSQL(CdsPrdGrupoPGR_MARGEMOFERTA.AsFloat),
                             ' WHERE PGR_CODIGO = '+QuotedStr(CdsPrdGrupoPGR_CODIGO.AsString),'',''));

         if dbInicio.Empresa.wCalcularPV = 0 then
         begin
          if porFora then
          begin
            DBInicio.EXECSQL ( SQLDEF('PRODUTOS','Update PRD0000 set PRD_PVENDA = PRD_PCUSTO + (PRD_PCUSTO * '+ValorAmericano(CurrToStr(CdsPrdGrupoPGR_MARGEMVENDA.AsFloat/100))+')',
                             'WHERE PGR_CODIGO = '+QuotedStr(CdsPrdGrupoPGR_CODIGO.AsString)+ ' and PRD_PCUSTO > 0','','') );
            DBInicio.EXECSQL ( SQLDEF('PRODUTOS','Update PRD0000 set PRD_PRECOOFERTA = PRD_PCUSTO + (PRD_PCUSTO * '+ValorAmericano(CurrToStr(CdsPrdGrupoPGR_MARGEMOFERTA.AsFloat/100))+')',
                            'WHERE PGR_CODIGO = '+QuotedStr(CdsPrdGrupoPGR_CODIGO.AsString)+ ' and PRD_PCUSTO > 0','','') );
            DBInicio.EXECSQL ( SQLDEF('PRODUTOS','Update PRD0000 set PRD_PRECOOFERTA = 0','WHERE PGR_CODIGO = '+QuotedStr(CdsPrdGrupoPGR_CODIGO.AsString)+' and PRD_MARGEMOFERTA = 0','','') );
          end
          else
          begin
            DBInicio.EXECSQL ( SQLDEF('PRODUTOS','Update PRD0000 set PRD_PVENDA = ROUND(PRD_PCUSTO / (1 - '+ValorAmericano(CurrToStr(CdsPrdGrupoPGR_MARGEMVENDA.AsFloat/100))+'), ' + cd + ')',
                             'WHERE PGR_CODIGO = '+QuotedStr(CdsPrdGrupoPGR_CODIGO.AsString)+ ' and PRD_PCUSTO > 0','','') );
            DBInicio.EXECSQL ( SQLDEF('PRODUTOS','Update PRD0000 set PRD_PRECOOFERTA = ROUND(PRD_PCUSTO / (1 - '+ValorAmericano(CurrToStr(CdsPrdGrupoPGR_MARGEMOFERTA.AsFloat/100))+'), ' + cd + ')',
                            'WHERE PGR_CODIGO = '+QuotedStr(CdsPrdGrupoPGR_CODIGO.AsString)+ ' and PRD_PCUSTO > 0','','') );
            DBInicio.EXECSQL ( SQLDEF('PRODUTOS','Update PRD0000 set PRD_PRECOOFERTA = 0','WHERE PGR_CODIGO = '+QuotedStr(CdsPrdGrupoPGR_CODIGO.AsString)+' and PRD_MARGEMOFERTA = 0','','') );
          end;
         end
         Else
         if dbInicio.Empresa.wCalcularPV = 1 then
         begin
          if porFora then
          begin
            DBInicio.EXECSQL ( SQLDEF('PRODUTOS','Update PRD0000 set PRD_PVENDA = PRD_CUSTOCOMIPI + (PRD_CUSTOCOMIPI * '+ValorAmericano(CurrToStr(CdsPrdGrupoPGR_MARGEMVENDA.AsFloat/100))+')',
                             'WHERE PGR_CODIGO = '+QuotedStr(CdsPrdGrupoPGR_CODIGO.AsString)+ ' and PRD_CUSTOCOMIPI > 0','','') );
            DBInicio.EXECSQL ( SQLDEF('PRODUTOS','Update PRD0000 set PRD_PRECOOFERTA = PRD_CUSTOCOMIPI + (PRD_CUSTOCOMIPI * '+ValorAmericano(CurrToStr(CdsPrdGrupoPGR_MARGEMOFERTA.AsFloat/100))+')',
                             'WHERE PGR_CODIGO = '+QuotedStr(CdsPrdGrupoPGR_CODIGO.AsString)+ ' and PRD_CUSTOCOMIPI > 0','','') );
            DBInicio.EXECSQL ( SQLDEF('PRODUTOS','Update PRD0000 set PRD_PRECOOFERTA = 0','WHERE PGR_CODIGO = '+QuotedStr(CdsPrdGrupoPGR_CODIGO.AsString)+ ' and PRD_MARGEMOFERTA = 0','','') );
          end
          else
          begin
            DBInicio.EXECSQL ( SQLDEF('PRODUTOS','Update PRD0000 set PRD_PVENDA = ROUND(PRD_CUSTOCOMIPI / (1 - '+ValorAmericano(CurrToStr(CdsPrdGrupoPGR_MARGEMVENDA.AsFloat/100))+'), ' + cd + ')',
                             'WHERE PGR_CODIGO = '+QuotedStr(CdsPrdGrupoPGR_CODIGO.AsString)+ ' and PRD_CUSTOCOMIPI > 0','','') );
            DBInicio.EXECSQL ( SQLDEF('PRODUTOS','Update PRD0000 set PRD_PRECOOFERTA = ROUND(PRD_CUSTOCOMIPI / (1 - '+ValorAmericano(CurrToStr(CdsPrdGrupoPGR_MARGEMOFERTA.AsFloat/100))+'), ' + cd + ')',
                             'WHERE PGR_CODIGO = '+QuotedStr(CdsPrdGrupoPGR_CODIGO.AsString)+ ' and PRD_CUSTOCOMIPI > 0','','') );
            DBInicio.EXECSQL ( SQLDEF('PRODUTOS','Update PRD0000 set PRD_PRECOOFERTA = 0','WHERE PGR_CODIGO = '+QuotedStr(CdsPrdGrupoPGR_CODIGO.AsString)+ ' and PRD_MARGEMOFERTA = 0','','') );
          end;
         end
         Else
         if dbInicio.Empresa.wCalcularPV = 2 then
         begin
          if porFora then
          begin
            DBInicio.EXECSQL ( SQLDEF('PRODUTOS','Update PRD0000 set PRD_PVENDA = PRD_PMEDIO + (PRD_PMEDIO * '+ValorAmericano(CurrToStr(CdsPrdGrupoPGR_MARGEMVENDA.AsFloat/100))+')',
                             'WHERE PGR_CODIGO = '+QuotedStr(CdsPrdGrupoPGR_CODIGO.AsString)+ ' and PRD_PMEDIO > 0','','') );
            DBInicio.EXECSQL ( SQLDEF('PRODUTOS','Update PRD0000 set PRD_PRECOOFERTA = PRD_PMEDIO + (PRD_PMEDIO * '+ValorAmericano(CurrToStr(CdsPrdGrupoPGR_MARGEMOFERTA.AsFloat/100))+')',
                             'WHERE PGR_CODIGO = '+QuotedStr(CdsPrdGrupoPGR_CODIGO.AsString)+ ' and PRD_PMEDIO > 0','','') );
            DBInicio.EXECSQL ( SQLDEF('PRODUTOS','Update PRD0000 set PRD_PRECOOFERTA = 0','WHERE PGR_CODIGO = '+QuotedStr(CdsPrdGrupoPGR_CODIGO.AsString)+ ' and PRD_MARGEMOFERTA = 0','','') );
          end
          else
          begin
            DBInicio.EXECSQL ( SQLDEF('PRODUTOS','Update PRD0000 set PRD_PVENDA = ROUND(PRD_PMEDIO / (1 - '+ValorAmericano(CurrToStr(CdsPrdGrupoPGR_MARGEMVENDA.AsFloat/100))+'), ' + cd + ')',
                             'WHERE PGR_CODIGO = '+QuotedStr(CdsPrdGrupoPGR_CODIGO.AsString)+ ' and PRD_PMEDIO > 0','','') );
            DBInicio.EXECSQL ( SQLDEF('PRODUTOS','Update PRD0000 set PRD_PRECOOFERTA = ROUND(PRD_PMEDIO / (1 - '+ValorAmericano(CurrToStr(CdsPrdGrupoPGR_MARGEMOFERTA.AsFloat/100))+'), ' + cd + ')',
                             'WHERE PGR_CODIGO = '+QuotedStr(CdsPrdGrupoPGR_CODIGO.AsString)+ ' and PRD_PMEDIO > 0','','') );
            DBInicio.EXECSQL ( SQLDEF('PRODUTOS','Update PRD0000 set PRD_PRECOOFERTA = 0','WHERE PGR_CODIGO = '+QuotedStr(CdsPrdGrupoPGR_CODIGO.AsString)+ ' and PRD_MARGEMOFERTA = 0','','') );
          end;
         end;
      end// se não atualiza o preço de venda  e também não atualiza os custo, somente vai atualiza o preço de venda e margem zerados
      else
      begin
         if dbInicio.Empresa.wCalcularPV = 0 then
         begin
          if porFora then
          begin
            sql:= ' , PRD_PVENDA = PRD_PCUSTO + (PRD_PCUSTO * '+ValorAmericano(CurrToStr(CdsPrdGrupoPGR_MARGEMVENDA.AsFloat/100))+')' +
                  ' , PRD_PRECOOFERTA = PRD_PCUSTO + (PRD_PCUSTO * '+ValorAmericano(CurrToStr(CdsPrdGrupoPGR_MARGEMOFERTA.AsFloat/100))+')' ;
            where := ' and (PRD_PCUSTO > 0 or PRD_PCUSTO IS NOT NULL)';
          end
          else
          begin
            sql:= ' , PRD_PVENDA = ROUND(PRD_PCUSTO / (1 - '+ValorAmericano(CurrToStr(CdsPrdGrupoPGR_MARGEMVENDA.AsFloat/100))+'), ' + cd + ')' +
                  ' , PRD_PRECOOFERTA = ROUND(PRD_PCUSTO / (1 - '+ValorAmericano(CurrToStr(CdsPrdGrupoPGR_MARGEMOFERTA.AsFloat/100))+'), ' + cd + ')' ;
            where := ' and (PRD_PCUSTO > 0 or PRD_PCUSTO IS NOT NULL)';
          end;
         end
         Else
         if dbInicio.Empresa.wCalcularPV = 1 then
         begin
          if porFora then
          begin
            sql:= ' , PRD_PVENDA = PRD_CUSTOCOMIPI + (PRD_CUSTOCOMIPI * '+ValorAmericano(CurrToStr(CdsPrdGrupoPGR_MARGEMVENDA.AsFloat/100))+')' +
                  ' , PRD_PRECOOFERTA = PRD_CUSTOCOMIPI + (PRD_CUSTOCOMIPI * '+ValorAmericano(CurrToStr(CdsPrdGrupoPGR_MARGEMOFERTA.AsFloat/100))+')';
            where := ' and (PRD_CUSTOCOMIPI > 0 or PRD_CUSTOCOMIPI IS NOT NULL)';
          end
          else
          begin
            sql:= ' , PRD_PVENDA = ROUND(PRD_CUSTOCOMIPI / (1 - '+ValorAmericano(CurrToStr(CdsPrdGrupoPGR_MARGEMVENDA.AsFloat/100))+'), ' + cd + ')' +
                  ' , PRD_PRECOOFERTA = ROUND(PRD_CUSTOCOMIPI / (1 -'+ValorAmericano(CurrToStr(CdsPrdGrupoPGR_MARGEMOFERTA.AsFloat/100))+'), ' + cd + ')';
            where := ' and (PRD_CUSTOCOMIPI > 0 or PRD_CUSTOCOMIPI IS NOT NULL)';
          end;
         end
         Else
         if dbInicio.Empresa.wCalcularPV = 2 then
         begin
          if porFora then
          begin
           sql:= ' , PRD_PVENDA = PRD_PMEDIO + (PRD_PMEDIO * '+ValorAmericano(CurrToStr(CdsPrdGrupoPGR_MARGEMVENDA.AsFloat/100))+')' +
                  ' , PRD_PRECOOFERTA = PRD_PMEDIO + (PRD_PMEDIO * '+ValorAmericano(CurrToStr(CdsPrdGrupoPGR_MARGEMOFERTA.AsFloat/100))+')';
           where := ' and (PRD_PMEDIO > 0 or PRD_PMEDIO IS NOT NULL)';
          end
          else
          begin
            sql:= ' , PRD_PVENDA = ROUND(PRD_PMEDIO / (1 - '+ValorAmericano(CurrToStr(CdsPrdGrupoPGR_MARGEMVENDA.AsFloat/100))+'), ' + cd + ')' +
                  ' , PRD_PRECOOFERTA = ROUND(PRD_PMEDIO / (1 - '+ValorAmericano(CurrToStr(CdsPrdGrupoPGR_MARGEMOFERTA.AsFloat/100))+'), ' + cd + ')';
            where := ' and (PRD_PMEDIO > 0 or PRD_PMEDIO IS NOT NULL)';
          end;
         end;

       {Atualiza margem de oferta margem de Venda e seus valores de composições dos produtos}
        DBInicio.EXECSQL ( SQLDEF('PRODUTOS','Update PRD0000 set  '+
                             ' PRD_PER_ICMS = '+FloatToSQL(CdsPrdGrupoPGR_PER_ICMS.AsFloat)+
                             ' ,PRD_PER_PISCONFINS = '+ FloatToSQL(CdsPrdGrupoPGR_PER_PISCONFINS.AsFloat  ) +
                             ' ,PRD_PER_IPI = '+FloatToSQL(CdsPrdGrupoPGR_PER_IPI.AsFloat) +
                             ' ,PRD_PER_FRETE = '+FloatToSQL(CdsPrdGrupoPGR_PER_FRETE.AsFloat)+
                             ' ,PRD_PER_OUTROS = '+FloatToSQL(CdsPrdGrupoPGR_PER_OUTROS.AsFloat)+
                             ' ,PRD_PER_LUCRO = '+FloatToSQL(CdsPrdGrupoPGR_PER_LUCRO.AsFloat)+
                             ' ,PRD_MARGEMVENDA = '+FloatToSQL(CdsPrdGrupoPGR_MARGEMVENDA.AsFloat)+
                             ' ,PRD_MARGEMOFERTA = '+FloatToSQL(CdsPrdGrupoPGR_MARGEMOFERTA.AsFloat)+
                               sql ,
                             ' WHERE PGR_CODIGO = '+QuotedStr(CdsPrdGrupoPGR_CODIGO.AsString) +
                             ' AND (PRD_MARGEMVENDA = 0 OR PRD_MARGEMVENDA  IS NULL) ' +where ,'',''));






      end;

     end;
       uteis.aviso('Margens atualizadas e preços de vendas ajustado pela margem ');

      // uteis.aviso('Atualização de Preços Concluida !');
   end;

end;

procedure TFormProdGrupo.Bit_CancelarClick(Sender: tObject);
begin
    Screen.Cursor := crHourGlass;
    DataCadastros.CdsPrdGrupo.Cancel;
    if DataCadastros.CdsPrdGrupo.IsEmpty Then   //Ao cancelar ultimo record da
       begin                                      //tabela deixa autoedit=true;
           DataCadastros.DsPrdGrupo.AutoEdit := False;
           EdtPgr_codigo.Enabled := False;
       end;
    Screen.Cursor := crDefault;   
    HabilitaBotoes;
    EdtPgr_codigo.Setfocus;
    EdtPgr_codigo.Text := DataCadastros.CdsPrdGrupoPgr_codigo.AsString;
end;

procedure TFormProdGrupo.Bit_SairClick(Sender: tObject);
begin
    close;
end;

procedure TFormProdGrupo.BotoesAcesso;
begin
     if assigned(FormProdGrupo) then
     begin
       Bit_novo.Enabled := Uteis.AcessoUsuario('CadastrosTabelas',DBInicio.Usuario.CODIGO,FormProdGrupo).Incluir;
       Bit_Excluir.Enabled := Uteis.AcessoUsuario('CadastrosTabelas',DBInicio.Usuario.CODIGO,FormProdGrupo).Exluir;
       Bit_Relatorio.Enabled := Uteis.AcessoUsuario('CadastrosTabelas',DBInicio.Usuario.CODIGO,FormProdGrupo).Relatorio;
       DataCadastros.DsPrdGrupo.AutoEdit := Uteis.AcessoUsuario('CadastrosTabelas',DBInicio.Usuario.CODIGO,FormProdGrupo).Alterar;
     end;
end;

procedure TFormProdGrupo.DBNavigator1Click(Sender: tObject;
  Button: TNavigateBtn);
begin
    EdtPgr_codigo.Text      := DataCadastros.CdsPrdGrupoPgr_codigo.AsString;
    CbxAtualizaEstoque.ItemIndex := IIF(DataCadastros.CdsPrdGrupoPgr_atualiza_Estoque.AsString = 'S',0,1);
end;

procedure TFormProdGrupo.EdtPgr_codigoExit(Sender: tObject);
begin
    if (ActiveControl.Name = 'Bit_novo')or(ActiveControl.Name = 'Bit_Cancelar')or(ActiveControl.Name = 'Bit_Sair') then
       exit;
    if EdtPgr_codigo.Text <> '' then
       begin
           EdtPgr_codigo.Text := StrZero(EdtPgr_codigo.Text, EdtPgr_codigo.MaxLength);
           if (DataCadastros.CdsPrdGrupo.State in [Dsbrowse]) and not (DataCadastros.CdsPrdGrupo.IsEmpty) then
              BuscaGrupoPrd;
       end
    else
       begin
           uteis.aviso('Informe o grupo do produto !');
           EdtPgr_codigo.SetFocus;
           EdtPgr_codigo.SelectAll;
       end;
end;

procedure TFormProdGrupo.FormCloseQuery(Sender: tObject;
  var CanClose: Boolean);
begin
    VerificaEdicao;
    try
    DataCadastros.CdsPrdGrupo.Close;
    except
      uteis.erro  ('Impossível fechar a tabela "GRUPO DE PRODUTO".');
    end;

    try
      SqlCdsRelGruProdu.Close;
    except on E:EdatabaseError do
       uteis.erro  (Pchar('Impossível fechar tabela "GRUPO DE PRODUTOS" !'+e.Message));
    end;
end;
procedure TFormProdGrupo.FormDestroy(Sender: TObject);
begin
     FormProdGrupo := Nil;
end;

procedure TFormProdGrupo.TbPrdGrupoBeforeEdit(DataSet: TDataSet);
begin
    DesabilitaBotoes;
end;

procedure TFormProdGrupo.Bit_RelatorioClick(Sender: tObject);
begin
    Screen.Cursor := crHourGlass;
    try
      SqlCdsRelGruProdu.Close;
      SqlCdsRelGruProdu.CommandText:=SQLDEF('TABELAS','SELECT * FROM PRD_GRUPO','','PGR_DESCRI','');
      SqlCdsRelGruProdu.Open;
      LBL_00_EMPRESA.Caption  := dbInicio.Empresa.Razao;
      LBL_00_LTITULO1.Caption := 'RELATÓRIO DE CLASSIFICAÇÃO DE GRUPOS DE PRODUTOS';
      LBL_00_LTITULO2.Caption := 'ORDEM POR NOME DO GRUPO';
      ppRPRelGruProdu01.DeviceType:='Screen';
      RBuilderPreview(ppRPRelGruProdu01);
      EdtPgr_codigo.SetFocus;
    except on E:EdatabaseError do
       uteis.erro  (Pchar('Erro ao gerar o relatório !'+e.message));
    end;
    Screen.Cursor := crDefault;
end;

procedure TFormProdGrupo.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
    Screen.OnActiveControlChange := NIL;
    Action := CaFree;
end;

procedure TFormProdGrupo.EdtPgr_codigoKeyPress(Sender: tObject;
  var Key: Char);
begin
    If not( key in['0'..'9',#8] ) then
       begin
           //beep;
           key:=#0;
       end;
end;

procedure TFormProdGrupo.EdtPgr_codigoEnter(Sender: tObject);
begin
    EdtPgr_codigo.SelectAll;
end;

procedure TFormProdGrupo.CbxAtualizaEstoqueChange(Sender: tObject);
begin
    if DataCadastros.CdsPrdGrupo.State in [dsBrowse] then
       DataCadastros.CdsPrdGrupo.Edit;
end;

end.
