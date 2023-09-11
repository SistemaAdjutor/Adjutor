unit Prd0003;

interface

uses
    Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,  bASEdBfORM,
  StdCtrls, DBCtrls, Mask, ExtCtrls, ComCtrls, Buttons, DB, DBTables, RwFunc,
  Provider, SqlExpr,SqlClientDataSet, ppProd, ppClass, ppReport, ppComm, ppRelatv, ppDB,
  ppDBPipe, DBClient, DBLocal, DBLocalS, ppModule, raCodMod, ppCtrls,
  ppBands, ppVar, ppPrnabl, ppCache,  rxToolEdit, rxCurrEdit, ppDesignLayer,
  ppParameter, SimpleDS, Data.DBXFirebird, ACBrEnterTab, ACBrBase,
  ACBrCalculadora, Data.FMTBCd, ACBrETQ;
type
  TFormProdTipo = class(TfrmBaseDB)
    Label1: TLabel;
    Label2: TLabel;
    DBePti_descri: TDBEdit;
    DBNavigator1: TDBNavigator;
    Bit_novo: TBitBtn;
    Bit_Excluir: TBitBtn;
    Bit_Gravar: TBitBtn;
    Bit_Cancelar: TBitBtn;
    Bit_Sair: TBitBtn;
    EdtPti_codigo: TEdit;
    Panel4: TPanel;
    SQLCdsRelPrdTipo: TSQLClientDataSet;
    DsPrdTipo: TDataSource;
    ppDBPrdTipo: TppDBPipeline;
    ppRPRelTipoProd01: TppReport;
    SQLCdsRelPrdTipoPTI_CODIGO: TStringField;
    SQLCdsRelPrdTipoPTI_DESCRI: TStringField;
    SQLCdsRelPrdTipoEMP_CODIGO: TStringField;
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
    pp00DetailBand2: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    pp00SummaryBand2: TppSummaryBand;
    ppLine9: TppLine;
    ppLabel25: TppLabel;
    ppDBCalc2: TppDBCalc;
    raCodeModule2: TraCodeModule;
    Label3: TLabel;
    CbSigla: TComboBox;
    Label4: TLabel;
    Label5: TLabel;
    CbxAtualizaEstoque: TComboBox;
    cComissao: TCurrencyEdit;
    SQLCdsRelPrdTipoSPED_GENCODIGO: TStringField;
    dblkcbbSPED_GENCODIGO: TDBLookupComboBox;
    Label8: TLabel;
    dsSpedTipo: TDataSource;
    CdsSpedTipo: TSQLClientDataSet;
    CdsSpedTipoSPED_TIPREGISTRO: TIntegerField;
    CdsSpedTipoSPED_TIPCODIGO: TStringField;
    CdsSpedTipoSPED_TIPDESCRI: TStringField;
    CdsSpedTipoEMP_CODIGO: TStringField;
    cbbSicronizarAdjutorWeb: TComboBox;
    Label9: TLabel;
    SqlPrdTipo: TSQLQuery;
    SqlPrdTipoPTI_CODIGO: TStringField;
    SqlPrdTipoPTI_DESCRI: TStringField;
    SqlPrdTipoPTI_SIGLA: TStringField;
    SqlPrdTipoEMP_CODIGO: TStringField;
    SqlPrdTipoPTI_COMISSAO: TFMTBCdField;
    SqlPrdTipoPTI_ATUALIZAR_ESTOQUE: TStringField;
    SqlPrdTipoPTI_MARGEM: TFMTBCdField;
    SqlPrdTipoPTI_MARGEMOF: TFMTBCdField;
    SqlPrdTipoSPED_GENCODIGO: TStringField;
    SqlPrdTipoPTI_SINCRONIZA: TStringField;
    DspPrdTipo: TDataSetProvider;
    CdsPrdTipo: TClientDataSet;
    CdsPrdTipoPTI_CODIGO: TStringField;
    CdsPrdTipoPTI_DESCRI: TStringField;
    CdsPrdTipoPTI_SIGLA: TStringField;
    CdsPrdTipoEMP_CODIGO: TStringField;
    CdsPrdTipoPTI_COMISSAO: TFMTBCdField;
    CdsPrdTipoPTI_ATUALIZAR_ESTOQUE: TStringField;
    CdsPrdTipoPTI_MARGEM: TFMTBCdField;
    CdsPrdTipoPTI_MARGEMOF: TFMTBCdField;
    CdsPrdTipoSPED_GENCODIGO: TStringField;
    CdsPrdTipoPTI_SINCRONIZA: TStringField;
    dsSQLCdsRelPrdTipo: TDataSource;
    CdsPrdTipoPTI_DISPONIVEL_VENDAS: TStringField;
    SqlPrdTipoPTI_DISPONIVEL_VENDAS: TStringField;
    chkDisponivelVendas: TDBCheckBox;
    Bit_Relatorio: TBitBtn;
    GroupBox2: TGroupBox;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    BitAtualizaMargens: TBitBtn;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    SqlPrdTipoPTI_PER_ICMS: TFMTBCDField;
    SqlPrdTipoPTI_PER_PISCONFINS: TFMTBCDField;
    SqlPrdTipoPTI_PER_IPI: TFMTBCDField;
    SqlPrdTipoPTI_PER_FRETE: TFMTBCDField;
    SqlPrdTipoPTI_PER_OUTROS: TFMTBCDField;
    SqlPrdTipoPTI_PER_LUCRO: TFMTBCDField;
    CdsPrdTipoPTI_PER_ICMS: TFMTBCDField;
    CdsPrdTipoPTI_PER_PISCONFINS: TFMTBCDField;
    CdsPrdTipoPTI_PER_IPI: TFMTBCDField;
    CdsPrdTipoPTI_PER_FRETE: TFMTBCDField;
    CdsPrdTipoPTI_PER_OUTROS: TFMTBCDField;
    CdsPrdTipoPTI_PER_LUCRO: TFMTBCDField;
    procedure Bit_SairClick(Sender: tObject);
    procedure Bit_novoClick(Sender: tObject);
    procedure Bit_ExcluirClick(Sender: tObject);
    procedure Bit_GravarClick(Sender: tObject);
    procedure DesabilitaBotoes;
    procedure BuscaTipoPrd;
    procedure HabilitaBotoes;
    procedure verificaEdicao;
    procedure Bit_CancelarClick(Sender: tObject);
    procedure FormCloseQuery(Sender: tObject; var CanClose: Boolean);
    procedure DBNavigator1Click(Sender: tObject; Button: TNavigateBtn);
    procedure FormShow(Sender: tObject);
    procedure EdtPti_codigoExit(Sender: tObject);
    procedure TbPrdTipoBeforeEdit(DataSet: TDataSet);
    procedure Bit_RelatorioClick(Sender: tObject);
    procedure EdtPti_codigoKeyPress(Sender: tObject; var Key: Char);
    procedure EdtPti_codigoEnter(Sender: tObject);
    procedure CbSiglaChange(Sender: tObject);
    procedure cComissaoChange(Sender: tObject);
    procedure FormCreate(Sender: tObject);
    procedure CdsPrdTipoBeforeEdit(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure CdsPrdTipoPTI_PER_COMPOChange(Sender: TField);
    procedure BitAtualizaMargensClick(Sender: TObject);

  private

    procedure MostraSigla;

  public
    sCodigoBuscar:String;
    procedure BotoesAcesso;
  end;

var
  FormProdTipo: TFormProdTipo;

implementation

uses Uteis, ufrmpreviewrb, InicioDB, Prd0001;

{$R *.DFM}

procedure TFormProdTipo.verificaEdicao;
begin
    if CdsPrdTipo.State in [dsEdit,dsInsert] then
    begin
         if uteis.confirmacao ( 'Deseja salvar alterações ?') = idyes then
            Bit_Gravar.Click
         else
            Bit_Cancelar.Click;   // chana o evento onclick do botão cancelar
    end;
end;

procedure TFormProdTipo.HabilitaBotoes;
begin
    Bit_novo.Enabled := True;
    Bit_Excluir.Enabled := True;
    Bit_Sair.Visible := True;
    Bit_Relatorio.Enabled := True;
    Bit_Gravar.Enabled := False;
    Bit_Cancelar.Visible := False;
    EdtPTi_codigo.Color := clWindow;
    EdtPTi_codigo.Enabled := True;
    DBnavigator1.Enabled := True;
    BitAtualizaMargens.Enabled := True;
    BotoesAcesso;
end;

procedure TFormProdTipo.DesabilitaBotoes;
begin
    BotoesAcesso;
    Bit_novo.Enabled := False;
    Bit_Excluir.Enabled := False;
    Bit_Sair.Visible := False;
    Bit_Relatorio.Enabled := False;
    Bit_Gravar.Enabled := True;
    Bit_Cancelar.Visible := True;
    EdtPTi_codigo.Color := clSilver;
    EdtPTi_codigo.Enabled := False;
    DBnavigator1.Enabled := False;
    BitAtualizaMargens.Enabled := False;

end;

procedure TFormProdTipo.BuscaTipoPrd;// busca por codigo
begin
    IF CdsPrdTipo.Locate('PTI_CODIGO',EdtPTi_codigo.Text,[]) = false then
    begin
         messagebeep($ffff);
         uteis.aviso('Codigo do Produto não cadastrado');
         EdtPTi_codigo.Text := CdsPrdTipoPTi_codigo.AsString;
         EdtPti_codigo.SetFocus;
    end;
end;

procedure TFormProdTipo.FormShow(Sender: tObject);
begin
     inherited;
     CdsSpedTipo.Open;
     CdsPrdTipo.Close;
     SqlPrdTipo.SQL.TExt := SQLDEF('TABELAS','SELECT * FROM PRD_TIPO','','PTI_CODIGO','');
     CdsPrdTipo.Open;
     Habilitabotoes;
     if CdsPrdTipo.IsEmpty  Then  //Evita alteração antes que se
        DsPrdtipo.AutoEdit := False
     else
        CdsPrdTipo.Locate('PTI_CODIGO',sCodigoBuscar,[]);
     EdtPTi_codigo.text := CdsPrdTipoPTi_codigo.AsString;
     MostraSigla;
end;

procedure TFormProdTipo.Bit_novoClick(Sender: tObject);
begin
      CdsPrdTipo.Insert;
      CdsPrdTipoEMP_CODIGO.AsString := dbInicio.Empresa.EMP_CODIGO;
      EdtPti_codigo.Text := '000';
      Screen.Cursor := crDefault;
      DesabilitaBotoes;
      CbSigla.ItemIndex            := 0;
      cbbSicronizarAdjutorWeb.ItemIndex  := 0;
      CbxAtualizaEstoque.ItemIndex := 0;
      uteis.HabilitaIncluir('CadastrosTabelas',DBInicio.Usuario.CODIGO,FormProdTipo);
      DbePTi_Descri.setfocus;
end;

procedure TFormProdTipo.Bit_ExcluirClick(Sender: tObject);
begin

  if DBInicio.BuscaUmDadoSqlAsInteger(' SELECT count(*) FROM PRD0000 WHERE PTI_CODIGO = '+QuotedStr(CdsPrdTipoPTI_CODIGO.AsString)) > 0 then
    GeraException('Não pode excluir um tipo que já foi cadastrado em um produto');

  if CdsPrdTipo.IsEmpty Then   //evita exclussão de registro
     Begin                                      // em uma Tabela Vazia.
         uteis.aviso('Não existe Tipo de Produto Cadastrado !!!');
         DBePti_descri.SetFocus;
         exit;
     end;
  if uteis.confirmacao ( 'Deseja Excluir este Tipo de Produto?')= Mryes then
  begin
       CdsPrdTipo.Delete;
       CdsPrdTipo.ApplyUpdates(0);
  end;
  EdtPTi_codigo.text := CdsPrdTipoPTi_codigo.AsString;
  EdtPti_codigo.SetFocus;
end;

procedure TFormProdTipo.Bit_GravarClick(Sender: tObject);
Var lSig: string;
begin
     if strtointdef( EdtPti_codigo.Text,0)=0 then
        EdtPti_codigo.Text:= StrZero( dbInicio.BuscaUmDadoSqlAsInteger('Select Max(PTi_codigo) From PRD_TIPO')+1,3 ) ;
      CdsPrdTipoPTi_codigo.AsString := StrZero(EdtPti_codigo.Text,EdtPti_codigo.MaxLength);

      lSig:='';
      case CbSigla.ItemIndex of
      1: lSig := 'PA';
      2: lSig := 'PI';
      3: lSig := 'MP';
      4: lSig := 'MC';
      5: lSig := 'IM';
      6: lSig := 'EM';
      7: lSig := 'XX';
      8: lSig := 'KT';
      9: lSig := 'FE';
      end;
      CdsPrdTipoPTI_SIGLA.AsString  := lSig;
      CdsPrdTipoPTI_ATUALIZAR_ESTOQUE.AsString := iif(CbxAtualizaEstoque.ItemIndex = 0,'S','N');
      CdsPrdTipoPTI_SINCRONIZA.AsString := iif(cbbSicronizarAdjutorWeb.ItemIndex = 0,'S','N');
      CdsPrdTipoPTI_COMISSAO.AsCurrency := cComissao.Value;
      CdsPrdTipo.ApplyUpdates(0);
      DsPrdTipo.AutoEdit := true;
      CdsPrdTipo.refresh;
      Screen.Cursor := crDefault;
      Habilitabotoes;
      EdtPti_codigo.Text := StrZero(CdsPrdTipoPTI_CODIGO.AsString, EdtPti_codigo.MaxLength);
      EdtPti_codigo.SetFocus;
end;

procedure TFormProdTipo.BitAtualizaMargensClick(Sender: TObject);
var
  msg, sql, where, cd : string;
  porFora: Boolean;
begin
  inherited;
  if DBInicio.Empresa.wPMT_NAO_AUTO_PVENDA then
  begin
    uteis.aviso('Atenção está rotina vai modificador todos custos/margem dos Produtos deste tipo');
    msg := 'Não é permitido ajustar preço de Venda então a rotina vai atualizar margens somente de '+#13#10+
    ' produtos sem margem e atualizará  preço de venda de itens com preço zero '+#13#10+
    ' Confirma Atualização ?'
  end
  else
  begin
   uteis.aviso('Atenção está rotina vai modificador todos os preços dos Produtos deste tipo');
   msg := 'Confirma Atualização das Margens e dos Preços?';
  end;


    if uteis.confirmacao (msg)= Mryes then
   begin

      porFora :=  DBInicio.GetParametroSistema('PMT_METODO_CALCULO_PRECO') = '0'; //  0 = por fora / 1 = por dentro
      cd := DBInicio.GetParametroSistema('PMT_QTDE_DEC_PED');

       {Atualiza o preço de  venda nos produtos}
        // calcular pelo CUSTO LIQUIDO
      if not DBInicio.Empresa.wPMT_NAO_AUTO_PVENDA then
      begin
         {Atualiza margem de Venda dos produtos}
        DBInicio.EXECSQL ( SQLDEF('PRODUTOS','Update PRD0000 set  '+
                               ' PRD_PER_ICMS = '+FloatToSQL(CdsPrdTipoPTI_PER_ICMS.AsFloat)+
                               ' ,PRD_PER_PISCONFINS = '+ FloatToSQL(CdsPrdTipoPTI_PER_PISCONFINS.AsFloat  ) +
                               ' ,PRD_PER_IPI = '+FloatToSQL(CdsPrdTipoPTI_PER_IPI.AsFloat) +
                               ' ,PRD_PER_FRETE = '+FloatToSQL(CdsPrdTipoPTI_PER_FRETE.AsFloat)+
                               ' ,PRD_PER_OUTROS = '+FloatToSQL(CdsPrdTipoPTI_PER_OUTROS.AsFloat)+
                               ' ,PRD_PER_LUCRO = '+FloatToSQL(CdsPrdTipoPTI_PER_LUCRO.AsFloat)+
                               ' ,PRD_MARGEMVENDA = '+ FloatToSQL(CdsPrdTipoPTI_MARGEM.AsFloat)+
                               ' ,PRD_MARGEMOFERTA = '+ FloatToSQL(CdsPrdTipoPTI_MARGEMOF.AsFloat),
                               ' where pti_codigo = '+QuotedStr(CdsPrdTipoPTi_codigo.AsString),'',''));
         if dbInicio.Empresa.wCalcularPV = 0 then
         begin
           if porFora then
           begin
             EXECSQL ( SQLDEF('PRODUTOS','Update PRD0000 set PRD_PVENDA = PRD_PCUSTO + (PRD_PCUSTO * '+ValorAmericano(CurrToStr(CdsPrdTipoPTI_MARGEM.AsFloat/100))+')','where pti_codigo = '''+CdsPrdTipoPTi_codigo.AsString+'''and PRD_PCUSTO > 0','','') );
             EXECSQL ( SQLDEF('PRODUTOS','Update PRD0000 set PRD_PRECOOFERTA = PRD_PCUSTO + (PRD_PCUSTO * '+ValorAmericano(CurrToStr(CdsPrdTipoPTI_MARGEMOF.AsFloat/100))+')','where pti_codigo = '''+CdsPrdTipoPTi_codigo.AsString+'''and PRD_PCUSTO > 0','','') );
             EXECSQL ( SQLDEF('PRODUTOS','Update PRD0000 set PRD_PRECOOFERTA = 0','where pti_codigo = '''+CdsPrdTipoPTi_codigo.AsString+'''and PRD_MARGEMOFERTA = 0','','') );
           end
           else
           begin
             EXECSQL ( SQLDEF('PRODUTOS','Update PRD0000 set PRD_PVENDA      = ROUND(PRD_PCUSTO / (1 - '+ValorAmericano(CurrToStr(CdsPrdTipoPTI_MARGEM.AsFloat/100))  +'), ' + cd + ')','where pti_codigo = '''+CdsPrdTipoPTi_codigo.AsString+'''and PRD_PCUSTO > 0','','') );
             EXECSQL ( SQLDEF('PRODUTOS','Update PRD0000 set PRD_PRECOOFERTA = ROUND(PRD_PCUSTO / (1 - '+ValorAmericano(CurrToStr(CdsPrdTipoPTI_MARGEMOF.AsFloat/100))+'), ' + cd + ')','where pti_codigo = '''+CdsPrdTipoPTi_codigo.AsString+'''and PRD_PCUSTO > 0','','') );
             EXECSQL ( SQLDEF('PRODUTOS','Update PRD0000 set PRD_PRECOOFERTA = 0','where pti_codigo = '''+CdsPrdTipoPTi_codigo.AsString+'''and PRD_MARGEMOFERTA = 0','','') );
           end;
         end
         Else if dbInicio.Empresa.wCalcularPV = 1 then
         begin
           if porFora then
           begin
             EXECSQL ( SQLDEF('PRODUTOS','Update PRD0000 set PRD_PVENDA = PRD_CUSTOCOMIPI + (PRD_CUSTOCOMIPI * '+ValorAmericano(CurrToStr(CdsPrdTipoPTI_MARGEM.AsFloat/100))+')','where pti_codigo = '''+CdsPrdTipoPTi_codigo.AsString+'''and PRD_CUSTOCOMIPI > 0','','') );
             EXECSQL ( SQLDEF('PRODUTOS','Update PRD0000 set PRD_PRECOOFERTA = PRD_CUSTOCOMIPI + (PRD_CUSTOCOMIPI * '+ValorAmericano(CurrToStr(CdsPrdTipoPTI_MARGEMOF.AsFloat/100))+')','where pti_codigo = '''+CdsPrdTipoPTi_codigo.AsString+'''and PRD_CUSTOCOMIPI > 0','','') );
             EXECSQL ( SQLDEF('PRODUTOS','Update PRD0000 set PRD_PRECOOFERTA = 0','where pti_codigo = '''+CdsPrdTipoPTi_codigo.AsString+'''and PRD_MARGEMOFERTA = 0','','') );
           end
           else
           begin
             EXECSQL ( SQLDEF('PRODUTOS','Update PRD0000 set PRD_PVENDA =      ROUND(PRD_CUSTOCOMIPI / (1 - '+ValorAmericano(CurrToStr(CdsPrdTipoPTI_MARGEM.AsFloat/100))+'), ' + cd + ')','where pti_codigo = '''+CdsPrdTipoPTi_codigo.AsString+'''and PRD_CUSTOCOMIPI > 0','','') );
             EXECSQL ( SQLDEF('PRODUTOS','Update PRD0000 set PRD_PRECOOFERTA = ROUND(PRD_CUSTOCOMIPI / (1 - '+ValorAmericano(CurrToStr(CdsPrdTipoPTI_MARGEMOF.AsFloat/100))+'), ' + cd + ')','where pti_codigo = '''+CdsPrdTipoPTi_codigo.AsString+'''and PRD_CUSTOCOMIPI > 0','','') );
             EXECSQL ( SQLDEF('PRODUTOS','Update PRD0000 set PRD_PRECOOFERTA = 0','where pti_codigo = '''+CdsPrdTipoPTi_codigo.AsString+'''and PRD_MARGEMOFERTA = 0','','') );
           end;
         end
         Else if dbInicio.Empresa.wCalcularPV = 2 then
         begin
           if porFora then
             begin
              EXECSQL ( SQLDEF('PRODUTOS','Update PRD0000 set PRD_PVENDA = PRD_PMEDIO + (PRD_PMEDIO * '+ValorAmericano(CurrToStr(CdsPrdTipoPTI_MARGEM.AsFloat/100))+')','where pti_codigo = '''+CdsPrdTipoPTi_codigo.AsString+'''and PRD_PMEDIO > 0','','') );
              EXECSQL ( SQLDEF('PRODUTOS','Update PRD0000 set PRD_PRECOOFERTA = PRD_PMEDIO + (PRD_PMEDIO * '+ValorAmericano(CurrToStr(CdsPrdTipoPTI_MARGEMOF.AsFloat/100))+')','where pti_codigo = '''+CdsPrdTipoPTi_codigo.AsString+'''and PRD_PMEDIO > 0','','') );
              EXECSQL ( SQLDEF('PRODUTOS','Update PRD0000 set PRD_PRECOOFERTA = 0','where pti_codigo = '''+CdsPrdTipoPTi_codigo.AsString+'''and PRD_MARGEMOFERTA = 0','','') );
             end
             else
             begin
              EXECSQL ( SQLDEF('PRODUTOS','Update PRD0000 set PRD_PVENDA = ROUND(PRD_PMEDIO / (1 - '+ValorAmericano(CurrToStr(CdsPrdTipoPTI_MARGEM.AsFloat/100))+'), ' + cd + ')','where pti_codigo = '''+CdsPrdTipoPTi_codigo.AsString+'''and PRD_PMEDIO > 0','','') );
              EXECSQL ( SQLDEF('PRODUTOS','Update PRD0000 set PRD_PRECOOFERTA = ROUND(PRD_PMEDIO / (1 - '+ValorAmericano(CurrToStr(CdsPrdTipoPTI_MARGEMOF.AsFloat/100))+'), ' + cd + ')','where pti_codigo = '''+CdsPrdTipoPTi_codigo.AsString+'''and PRD_PMEDIO > 0','','') );
              EXECSQL ( SQLDEF('PRODUTOS','Update PRD0000 set PRD_PRECOOFERTA = 0','where pti_codigo = '''+CdsPrdTipoPTi_codigo.AsString+'''and PRD_MARGEMOFERTA = 0','','') );
             end;
         end;
       end// se não atualiza o preço de venda vai atualizar os MARGEM
      else
      begin
         if dbInicio.Empresa.wCalcularPV = 0 then
         begin
          if porFora then
          begin
             sql:= ' , PRD_PVENDA = PRD_PCUSTO + (PRD_PCUSTO * '+ValorAmericano(CurrToStr(CdsPrdTipoPTI_MARGEM.AsFloat/100))+')' +
                    ' , PRD_PRECOOFERTA = PRD_PCUSTO + (PRD_PCUSTO * '+ValorAmericano(CurrToStr(CdsPrdTipoPTI_MARGEMOF.AsFloat/100))+')' ;
             where := ' and (PRD_PCUSTO > 0 or PRD_PCUSTO IS NOT NULL)';
          end
          else
          begin
             sql:= ' , PRD_PVENDA = ROUND(PRD_PCUSTO / (1 - '+ValorAmericano(CurrToStr(CdsPrdTipoPTI_MARGEM.AsFloat/100))+'), ' + cd + ')' +
                    ' , PRD_PRECOOFERTA = ROUND(PRD_PCUSTO / (1 - '+ValorAmericano(CurrToStr(CdsPrdTipoPTI_MARGEMOF.AsFloat/100))+'), ' + cd + ')' ;
             where := ' and (PRD_PCUSTO > 0 or PRD_PCUSTO IS NOT NULL)';
          end;
         end
         Else
         if dbInicio.Empresa.wCalcularPV = 1 then
         begin
           if porFora then
           begin
              sql:= ' , PRD_PVENDA = PRD_CUSTOCOMIPI + (PRD_CUSTOCOMIPI * '+ValorAmericano(CurrToStr(CdsPrdTipoPTI_MARGEM.AsFloat/100))+')' +
                    ' , PRD_PRECOOFERTA = PRD_CUSTOCOMIPI + (PRD_CUSTOCOMIPI * '+ValorAmericano(CurrToStr(CdsPrdTipoPTI_MARGEMOF.AsFloat/100))+')';
             where := ' and (PRD_CUSTOCOMIPI > 0 or PRD_CUSTOCOMIPI IS NOT NULL)';
           end
           else
           begin
              sql:= ' , PRD_PVENDA = ROUND(PRD_CUSTOCOMIPI / (1 - '+ValorAmericano(CurrToStr(CdsPrdTipoPTI_MARGEM.AsFloat/100))+'), ' + cd + ')' +
                    ' , PRD_PRECOOFERTA = ROUND(PRD_CUSTOCOMIPI / (1 - '+ValorAmericano(CurrToStr(CdsPrdTipoPTI_MARGEMOF.AsFloat/100))+'), ' + cd + ')';
             where := ' and (PRD_CUSTOCOMIPI > 0 or PRD_CUSTOCOMIPI IS NOT NULL)';
           end;
         end
         Else
         if dbInicio.Empresa.wCalcularPV = 2 then
         begin
           if porFora then
           begin
              sql:= ' , PRD_PVENDA = PRD_PMEDIO + (PRD_PMEDIO * '+ValorAmericano(CurrToStr(CdsPrdTipoPTI_MARGEM.AsFloat/100))+')' +
                    ' , PRD_PRECOOFERTA = PRD_PMEDIO + (PRD_PMEDIO * '+ValorAmericano(CurrToStr(CdsPrdTipoPTI_MARGEMOF.AsFloat/100))+')';
              where := ' and (PRD_PMEDIO > 0 or PRD_PMEDIO IS NOT NULL)';
           end
           else
           begin
              sql:= ' , PRD_PVENDA = ROUND(PRD_PMEDIO / (1 - '+ValorAmericano(CurrToStr(CdsPrdTipoPTI_MARGEM.AsFloat/100))+'), ' + cd + ')' +
                    ' , PRD_PRECOOFERTA = ROUND(PRD_PMEDIO / (1 - '+ValorAmericano(CurrToStr(CdsPrdTipoPTI_MARGEMOF.AsFloat/100))+'), ' + cd + ')';
              where := ' and (PRD_PMEDIO > 0 or PRD_PMEDIO IS NOT NULL)';
           end;

         end;



         {Atualiza margem de Venda dos produtos}
        DBInicio.EXECSQL ( SQLDEF('PRODUTOS','Update PRD0000 set  '+
                               ' PRD_PER_ICMS = '+FloatToSQL(CdsPrdTipoPTI_PER_ICMS.AsFloat)+
                               ' ,PRD_PER_PISCONFINS = '+ FloatToSQL(CdsPrdTipoPTI_PER_PISCONFINS.AsFloat  ) +
                               ' ,PRD_PER_IPI = '+FloatToSQL(CdsPrdTipoPTI_PER_IPI.AsFloat) +
                               ' ,PRD_PER_FRETE = '+FloatToSQL(CdsPrdTipoPTI_PER_FRETE.AsFloat)+
                               ' ,PRD_PER_OUTROS = '+FloatToSQL(CdsPrdTipoPTI_PER_OUTROS.AsFloat)+
                               ' ,PRD_PER_LUCRO = '+FloatToSQL(CdsPrdTipoPTI_PER_LUCRO.AsFloat)+
                               ' ,PRD_MARGEMVENDA = '+ FloatToSQL(CdsPrdTipoPTI_MARGEM.AsFloat)+
                               ' ,PRD_MARGEMOFERTA = '+ FloatToSQL(CdsPrdTipoPTI_MARGEMOF.AsFloat) +sql,
                               ' where pti_codigo = '+QuotedStr(CdsPrdTipoPTi_codigo.AsString) +
                                 ' AND (PRD_MARGEMVENDA = 0 OR PRD_MARGEMVENDA  IS NULL) ' +where  ,'',''));


      end;
      CommitTransaction;
       uteis.aviso('Margens atualizadas e preços de vendas ajustado pela margem ');
   end;
end;

procedure TFormProdTipo.Bit_CancelarClick(Sender: tObject);
begin
    CdsPrdTipo.Cancel;
    if CdsPrdTipo.IsEmpty Then   //Ao cancelar ultimo record da
    begin                                   //tabela deixa autoedit=true;
           DsPrdtipo.AutoEdit := False;
           EdtPTi_codigo.Enabled := False;
    end;
    HabilitaBotoes;
    EdtPTi_codigo.Text := CdsPrdTipoPTi_codigo.AsString;
    EdtPti_Codigo.SetFocus;
end;

procedure TFormProdTipo.Bit_SairClick(Sender: tObject);
begin
     close;
end;

procedure TFormProdTipo.BotoesAcesso;
begin
     if assigned(FormProdTipo) then
     begin
       Bit_novo.Enabled := Uteis.AcessoUsuario('CadastrosTabelas',DBInicio.Usuario.CODIGO,FormProdTipo).Incluir;
       Bit_Excluir.Enabled := Uteis.AcessoUsuario('CadastrosTabelas',DBInicio.Usuario.CODIGO,FormProdTipo).Exluir;
       Bit_Relatorio.Enabled := Uteis.AcessoUsuario('CadastrosTabelas',DBInicio.Usuario.CODIGO,FormProdTipo).Relatorio;
       DsPrdTipo.AutoEdit := Uteis.AcessoUsuario('CadastrosTabelas',DBInicio.Usuario.CODIGO,FormProdTipo).Alterar;
     end;
end;

procedure TFormProdTipo.DBNavigator1Click(Sender: tObject;
  Button: TNavigateBtn);
begin
    EdtPTi_codigo.Text := CdsPrdTipoPTi_codigo.AsString;
    MostraSigla;
end;

procedure TFormProdTipo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TFormProdTipo.FormCloseQuery(Sender: tObject;
  var CanClose: Boolean);
begin
    VerificaEdicao;
    CdsSpedTipo.Close;
    CdsPrdTipo.Close;
    SQLCdsRelPrdTipo.Close;
    inherited;
end;

procedure TFormProdTipo.FormCreate(Sender: tObject);
begin
     inherited;
     SELF.Height:=479;
     SELF.Width:=445;
end;

procedure TFormProdTipo.FormDestroy(Sender: TObject);
begin
  inherited;
  FormProdTipo := Nil;
end;

procedure TFormProdTipo.EdtPti_codigoExit(Sender: tObject);
begin
    if (ActiveControl <> nil)
    and(ActiveControl.Name <> 'Bit_Cancelar')
    and(ActiveControl.Name <> 'Bit_Sair')
    and(ActiveControl.Name <> 'Bit_novo') then
       begin
          if (Trim(EdtPti_codigo.Text) <> '') then
             begin
                 if (CdsPrdTipo.State in [Dsbrowse]) and not (CdsPrdTipo.IsEmpty) then
                    BuscaTipoPrd;
             end
          else
             begin
                 uteis.aviso('Informe o código do tipo do produto !');
                 EdtPti_Codigo.SetFocus;
                 EdtPti_Codigo.SelectAll;
             end;
       end;
end;

procedure TFormProdTipo.TbPrdTipoBeforeEdit(DataSet: TDataSet);
begin
    DesabilitaBotoes;
end;

procedure TFormProdTipo.Bit_RelatorioClick(Sender: tObject);
begin
    Screen.Cursor := crHourGlass;
    try
      SQLCdsRelPrdTipo.Close;
      SQLCdsRelPrdTipo.CommandText:=SQLDEF('TABELAS','SELECT * FROM PRD_TIPO','','PTI_DESCRI','');
      SQLCdsRelPrdTipo.Open;
      LBL_00_EMPRESA.Caption  := dbInicio.Empresa.Razao;
      LBL_00_LTITULO1.Caption := 'RELATÓRIO DE CLASSIFICAÇÃO DE TIPOS DE PRODUTOS';
      LBL_00_LTITULO2.Caption := 'ORDEM POR DESCRIÇÃO';
      ppRPRelTipoProd01.DeviceType:='Screen';
      RBuilderPreview(ppRPRelTipoProd01);
      EdtPti_codigo.SetFocus;
    except on E:EdatabaseError do
       uteis.erro  (Pchar('Erro ao gerar o relatório !'+e.message));
    end;
    Screen.Cursor := crDefault;
end;

procedure TFormProdTipo.EdtPti_codigoKeyPress(Sender: tObject;
  var Key: Char);
begin
    If not( key in['0'..'9',#8] ) then
       begin
           //beep;
           key:=#0;
       end;
end;

procedure TFormProdTipo.EdtPti_codigoEnter(Sender: tObject);
begin
    EdtPti_codigo.SelectAll;
end;

procedure TFormProdTipo.MostraSigla;
begin
    CbSigla.ItemIndex := IIF(CdsPrdTipoPTI_SIGLA.AsSTring = 'PA',1,
                         IIF(CdsPrdTipoPTI_SIGLA.AsSTring = 'PI',2,
                         IIF(CdsPrdTipoPTI_SIGLA.AsSTring = 'MP',3,
                         IIF(CdsPrdTipoPTI_SIGLA.AsSTring = 'MC',4,
                         IIF(CdsPrdTipoPTI_SIGLA.AsSTring = 'IM',5,
                         IIF(CdsPrdTipoPTI_SIGLA.AsSTring = 'EM',6,
                         IIF(CdsPrdTipoPTI_SIGLA.AsSTring = 'XX',7,
                         IIF(CdsPrdTipoPTI_SIGLA.AsSTring = 'KT',8,
                         IIF(CdsPrdTipoPTI_SIGLA.AsSTring = 'FE',9,0)))))))));

    //
    CbxAtualizaEstoque.ItemIndex := IIF(CdsPrdTipoPTI_ATUALIZAR_ESTOQUE.AsString = 'S',0,1);
    cbbSicronizarAdjutorWeb.ItemIndex := IIF(CdsPrdTipoPTI_SINCRONIZA.AsString = 'S',0,1);
    //
    cComissao.Value := CdsPrdTipoPTI_COMISSAO.AsCurrency;

end;

procedure TFormProdTipo.CbSiglaChange(Sender: tObject);
begin
    if (CdsPrdTipo.State in [dsBrowse]) then
       CdsPrdTipo.Edit;
end;

procedure TFormProdTipo.cComissaoChange(Sender: tObject);
begin
   if (CdsPrdTipoPTI_COMISSAO.OldValue <> cComissao.Value) then
      if (CdsPrdTipo.State in [dsBrowse]) then
         CdsPrdTipo.Edit;


end;

procedure TFormProdTipo.CdsPrdTipoBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  DesabilitaBotoes;
end;



procedure TFormProdTipo.CdsPrdTipoPTI_PER_COMPOChange(Sender: TField);
begin
  inherited;
  CdsPrdTipoPTI_MARGEM.AsFloat := CdsPrdTipoPTI_PER_ICMS.AsFloat + CdsPrdTipoPTI_PER_PISCONFINS.AsFloat  +
   CdsPrdTipoPTI_PER_IPI.AsFloat + CdsPrdTipoPTI_PER_FRETE.AsFloat + CdsPrdTipoPTI_PER_OUTROS.AsFloat +
   CdsPrdTipoPTI_PER_LUCRO.AsFloat;
end;

end.
