unit PrevC001;


interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, BaseDbEstoqueForm,
  StdCtrls, Grids, DBGrids, Buttons, DBCtrls, ExtCtrls, Mask, Db,
  DBTables, DBCGrids, Provider, SqlExpr,SqlClientDataSet, DBClient, DBLocal, DBLocalS,
   rxToolEdit, rxCurrEdit, SimpleDS, Data.DBXFirebird, ACBrEnterTab, ACBrBase,
  ACBrCalculadora, BaseForm, Data.FMTBCd;

type
  TFormPrevConsumo = class(TfrmBaseDbEstoque)
    Panel1: TPanel;
    Panel4: TPanel;
    BitIncluir: TSpeedButton;
    BitExcluir: TSpeedButton;
    BitGravar: TBitBtn;
    BitCancelar: TBitBtn;
    Bit_Sair: TBitBtn;
    BitLimpar: TBitBtn;
    SqlCdsBuscaFicha: TSQLClientDataSet;
    SqlCdsItensFicha: TSQLClientDataSet;
    SqlCdsItensFichaPRD_REFER: TStringField;
    SqlCdsItensFichaPRD_REFER_ITENS: TStringField;
    SqlCdsItensFichaPRD_DESCRI: TStringField;
    SqlCdsItensFichaPRD_PCUSTO: TFMTBCdField;
    SqlCdsItensFichaPRD_ESTOQUE: TFMTBCdField;
    SqlCdsItensFichaPRD_ENTRADA: TFMTBCdField;
    SqlCdsItensFichaPRD_SAIDA: TFMTBCdField;
    SqlCdsItensFichaPRD_PENDENTE: TFMTBCdField;
    SqlCdsItensFichaPRD_UND: TStringField;
    SqlCdsItensFichaFTI_MODE1: TStringField;
    SqlCdsItensFichaFTI_MODE2: TStringField;
    SqlCdsItensFichaFTI_MODE3: TStringField;
    SqlCdsItensFichaFTI_MODE4: TStringField;
    SqlCdsItensFichaFTI_MODE5: TStringField;
    SqlCdsItensFichaFTI_MODE6: TStringField;
    SqlCdsItensFichaFTI_MODE7: TStringField;
    SqlCdsItensFichaFTI_MODE8: TStringField;
    SqlCdsItensFichaFTI_UC: TFloatField;
    SqlCdsConsumo: TSQLClientDataSet;
    DsConsumo: TDataSource;
    BitPrevisao: TBitBtn;
    SqlCdsBuscaFichaPRD_REFER: TStringField;
    SqlCdsBuscaFichaPRD_DESCRI: TStringField;
    SqlCdsBuscaFichaPRD_PCUSTO: TFMTBCdField;
    SqlCdsBuscaFichaPRD_UND: TStringField;
    SqlCdsBuscaFichaPRD_DCVAR1: TStringField;
    SqlCdsBuscaFichaPRD_DCVAR2: TStringField;
    SqlCdsBuscaFichaPRD_DCVAR3: TStringField;
    SqlCdsBuscaFichaPRD_DCVAR4: TStringField;
    SqlCdsBuscaFichaPRD_DCVAR5: TStringField;
    SqlCdsBuscaFichaPRD_DCVAR6: TStringField;
    SqlCdsBuscaFichaPRD_DCVAR7: TStringField;
    SqlCdsBuscaFichaPRD_DCVAR8: TStringField;
    SqlCdsItensFichaPRD_GRADE: TStringField;
    SqlCdsItensGrade: TSQLClientDataSet;
    SqlCdsItensGradePRD_REFER: TStringField;
    SqlCdsItensGradePRD_REFER_ITENS: TStringField;
    SqlCdsItensGradePRD_DESCRI: TStringField;
    SqlCdsItensGradePRD_PCUSTO: TFMTBCdField;
    SqlCdsItensGradePRD_ESTOQUE: TFMTBCdField;
    SqlCdsItensGradePRD_ENTRADA: TFMTBCdField;
    SqlCdsItensGradePRD_SAIDA: TFMTBCdField;
    SqlCdsItensGradePRD_PENDENTE: TFMTBCdField;
    SqlCdsItensGradePRD_UND: TStringField;
    SqlCdsItensGradePRD_GRADE: TStringField;
    SqlCdsItensGradeFTI_MODE1: TStringField;
    SqlCdsItensGradeFTI_MODE2: TStringField;
    SqlCdsItensGradeFTI_MODE3: TStringField;
    SqlCdsItensGradeFTI_MODE4: TStringField;
    SqlCdsItensGradeFTI_MODE5: TStringField;
    SqlCdsItensGradeFTI_MODE6: TStringField;
    SqlCdsItensGradeFTI_MODE7: TStringField;
    SqlCdsItensGradeFTI_MODE8: TStringField;
    SqlCdsItensGradeFTI_UC: TFloatField;
    SqlCdsBuscaFichaPTI_SIGLA: TStringField;
    SqlCdsItensFichaPTI_SIGLA: TStringField;
    SqlCdsItensGradePTI_SIGLA: TStringField;
    SqlCdsN1: TSQLClientDataSet;
    SqlCdsN1PRD_REFER: TStringField;
    SqlCdsN1PRD_REFER_ITENS: TStringField;
    SqlCdsN1PRD_DESCRI: TStringField;
    SqlCdsN1PRD_PCUSTO: TFMTBCdField;
    SqlCdsN1PRD_ESTOQUE: TFMTBCdField;
    SqlCdsN1PRD_ENTRADA: TFMTBCdField;
    SqlCdsN1PRD_SAIDA: TFMTBCdField;
    SqlCdsN1PRD_PENDENTE: TFMTBCdField;
    SqlCdsN1PRD_RESERVA: TFMTBCdField;
    SqlCdsN1PRD_UND: TStringField;
    SqlCdsN1PTI_SIGLA: TStringField;
    SqlCdsN1FTI_MODE1: TStringField;
    SqlCdsN1FTI_MODE2: TStringField;
    SqlCdsN1FTI_MODE3: TStringField;
    SqlCdsN1FTI_MODE4: TStringField;
    SqlCdsN1FTI_MODE5: TStringField;
    SqlCdsN1FTI_MODE6: TStringField;
    SqlCdsN1FTI_MODE7: TStringField;
    SqlCdsN1FTI_MODE8: TStringField;
    SqlCdsN1FTI_UC: TFloatField;
    SqlCdsConsumoPSV_REGISTRO: TIntegerField;
    SqlCdsConsumoEMP_CODIGO: TStringField;
    SqlCdsConsumoPRD_REFER: TStringField;
    SqlCdsConsumoPRD_DESCRI: TStringField;
    SqlCdsConsumoPSV_QUANT1: TFMTBCdField;
    SqlCdsConsumoPSV_QUANT2: TFMTBCdField;
    SqlCdsConsumoPSV_QUANT3: TFMTBCdField;
    SqlCdsConsumoPSV_QUANT4: TFMTBCdField;
    SqlCdsConsumoPSV_QUANT5: TFMTBCdField;
    SqlCdsConsumoPSV_QUANT6: TFMTBCdField;
    SqlCdsConsumoPSV_QUANT7: TFMTBCdField;
    SqlCdsConsumoPSV_QUANT8: TFMTBCdField;
    SqlCdsConsumoPSV_MODE1: TStringField;
    SqlCdsConsumoPSV_MODE2: TStringField;
    SqlCdsConsumoPSV_MODE3: TStringField;
    SqlCdsConsumoPSV_MODE4: TStringField;
    SqlCdsConsumoPSV_MODE5: TStringField;
    SqlCdsConsumoPSV_MODE6: TStringField;
    SqlCdsConsumoPSV_MODE7: TStringField;
    SqlCdsConsumoPSV_MODE8: TStringField;
    SqlCdsConsumoPSV_QUALMOD: TStringField;
    SqlCdsConsumoPED_CODIGO: TStringField;
    SqlCdsConsumoPSV_FLAG: TStringField;
    SqlCdsConsumoPSV_CUSTO: TFMTBCdField;
    SqlCdsConsumoPSV_ESTFISICO: TFMTBCdField;
    SqlCdsConsumoPSV_ESTANTEC: TFMTBCdField;
    SqlCdsConsumoPSV_UND: TStringField;
    SqlCdsConsumoPTI_SIGLA: TStringField;
    SqlCdsConsumoPRD_ESTOQUE: TFMTBCdField;
    SqlCdsConsumoPRD_ENTRADA: TFMTBCdField;
    SqlCdsConsumoPRD_SAIDA: TFMTBCdField;
    SqlCdsConsumoPRD_PENDENTE: TFMTBCdField;
    SqlCdsConsumoPRD_RESERVA: TFMTBCdField;
    SqlCdsConsumoPSV_REQ_COMPRA: TStringField;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    EdtRefer: TEdit;
    BtProduto: TSpeedButton;
    Label3: TLabel;
    CurrVar1: TCurrencyEdit;
    Label2: TLabel;
    EdtProduto: TEdit;
    DBGridSimula: TDBGrid;

    procedure FormShow(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure BitIncluirClick(Sender: tObject);
    procedure BitCancelarClick(Sender: tObject);
    procedure BitExcluirClick(Sender: tObject);
    procedure BitPrevisaoClick(Sender: tObject);
    procedure EdtReferExit(Sender: tObject);
    procedure BitGravarClick(Sender: tObject);
    procedure SeparaModelos;
    procedure Bit_SairClick(Sender: tObject);
    procedure BitLimparClick(Sender: tObject);
    procedure FormCloseQuery(Sender: tObject; var CanClose: Boolean);
    procedure IncluirRefe;
    procedure MostraDados;
    procedure SqlCdsConsumoAfterScroll(DataSet: TDataSet);
    procedure BtProdutoClick(Sender: tObject);
    procedure FormCreate(Sender: tObject);
    procedure SqlCdsConsumoBeforeOpen(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
  private
         wPmt_Amx_Producao_saida: STRING;
         wPmt_UnFormula:integer;
         WvARIACOES :STRING;

    wPai,
    wMod1,
    wRefer,
    wDescri,
    wUnd,
    wEmp,
    wSigla,
    wStatus,
    xRefer,
    xRefer_itens,
    xxReferencia,
    sNVarx : String;
    wCusto,
    wQuant1      : Currency;
    tSqlNivel    : array [1..99] of TSQLClientDataSet;
    tCodigoOP    : array [1..99] of String[8];
    wSALDO_VARIA : array [1..8] of Integer;
    iNivelTabela : Integer;
    //
    wConsumo,
    //
    wReserva,
    wEstoque_Fisico,
    wEstoque_Compra,
    wQtde_Disponivel,
    wQtde_Falta,
    wQtde_Reserva,
    wQtde_Produzir,
    wSaldo_Estoque,
    wQtdeProduzirPe : Double;

    procedure DesabilitaIncluir;
    procedure BuscaProd;
    procedure LimparPrevisao;
    procedure LimparDados;
    procedure SeparaModelos_Novo;
    procedure GerarPrevisao_Novo;
    procedure Inserir_Separacao_Previsao(pEmpresa,pMaterial,pUnd,pMode1,pSigla:String;pQtde1,pQualMod,pCusto :Double);
    procedure IncluirItensSimula(pEmpresa,pRefer,pReferItens,pUnd,pSigla,pStatus,pPai:String;pCusto,pEstoque,pPendente,pConsumir,pFalta,pDisponivel,pReserva:Currency);

    procedure BuscaItensNivel(wNivel : Integer; wRefer:String; wQtdeProduzir : Double);
    procedure CriarTabelaMemoria(iNivel:Integer);
    procedure TesteNIvel(wNivel:Integer;wRefer:String;wQtdes:Double);
    procedure DestrTabelaMemoria(iNivel:Integer);
    procedure Proc_Considera(pSaldo_Estoque,pPendente: Currency);

    procedure Atualiza_Status_Req_Compra(pRegistro:String);

  public
        wBtn_Cancel, wConsiderar  : String[1];
        wBtn_Pa, wBtn_Pi : Boolean;
        wSaldo: Boolean ;
  end;

var
  FormPrevConsumo: TFormPrevConsumo;

implementation

uses Uteis, DataCad, RWFunc, PrevC002, DmProdu, Prd0006, PrevCN002,
  OsvN0007, iniciodb;

  {$R *.DFM}

procedure TFormPrevConsumo.DesabilitaIncluir;
begin
    EdtRefer.Enabled    := False;
    BtProduto.Enabled   := False;
    BitPrevisao.Enabled := True;
    BitIncluir.Enabled  := True;
    BitExcluir.Enabled  := True;
    BitGravar.Enabled   := False;
    BitCancelar.Enabled := False;
    CurrVar1.Enabled    := False;
    BitLimpar.Enabled   := True;
end;

procedure TFormPrevConsumo.IncluirRefe;
begin
    if DmProducao.CdsPrevConsumo.State in [dsInsert] then
       EdtRefer.Enabled := True;
    BtProduto.Enabled   := True;
    BitPrevisao.Enabled := False;
    BitIncluir.Enabled  := False;
    BitExcluir.Enabled  := False;
    BitGravar.Enabled   := True;
    BitCancelar.Enabled := True;
    CurrVar1.Enabled    := True;
    {CurrVar2.Enabled    := True;
    CurrVar3.Enabled    := True;
    CurrVar4.Enabled    := True;
    CurrVar5.Enabled    := True;
    CurrVar6.Enabled    := True;
    CurrVar7.Enabled    := True;
    CurrVar8.Enabled    := True;}
    BitLimpar.Enabled   := False;
end;

procedure TFormPrevConsumo.FormShow(Sender: tObject);
begin
    inherited;
    try
      SqlCdsConsumo.Close;
      SqlCdsConsumo.CommandText := SQLDEF('PRODUTOS','SELECT T2.*,P1.PRD_ESTOQUE,P1.PRD_ENTRADA,P1.PRD_SAIDA,P1.PRD_PENDENTE,P1.PRD_RESERVA FROM PSV0000 T2 LEFT JOIN PRD0000 P1 ON (T2.PRD_REFER = P1.PRD_REFER) LEFT JOIN PRD_TIPO P2 ON (P1.PTI_CODIGO = P2.PTI_CODIGO)',
                                          'where T2.PSV_FLAG=''U''','T2.PRD_REFER','T2.');
      SqlCdsConsumo.Open;
    except on E:EDataBaseError do
      uteis.erro  (pchar('Erro ao abrir as tabelas !'+e.message));
    end;
    DesabilitaIncluir;
    LimparDados;
    MostraDados;
    DBGridSimula.SetFocus;

end;

procedure TFormPrevConsumo.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
      inherited;
      DmProducao.CdsPrevConsumo.Close;
      DmProducao.CdsPrevItens.Close;
      Action := CaFree;
end;

procedure TFormPrevConsumo.BitIncluirClick(Sender: tObject);
begin

    try
      DmProducao.CdsPrevConsumo.Close;
      DmProducao.CdsPrevConsumo.CommandText := SQLDEF('PRODUTOS','Select P1.* from PSV0000 P1','','','P1.');
      DmProducao.CdsPrevConsumo.Open;
      DmProducao.CdsPrevConsumo.Insert;
      DBGridSimula.Enabled := false;
      IncluirRefe;
      LimparDados;
      EdtRefer.SetFocus;
    except on E:EDataBaseError do
      uteis.erro  (pchar('Erro ao inserir o Registro !'+e.message));
    end;

end;

procedure TFormPrevConsumo.BitCancelarClick(Sender: tObject);
begin
    try
      DmProducao.CdsPrevConsumo.CancelUpdates;
      DmProducao.CdsPrevConsumo.Close;
      DesabilitaIncluir;
      LimparDados;
      MostraDados;
      DBGridSimula.Enabled := true;
      DBGridSimula.SetFocus;
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao cancelar o registro !'+e.Message));
    end;
end;

procedure TFormPrevConsumo.BitExcluirClick(Sender: tObject);
begin

    try
      if not SqlCdsConsumo.IsEmpty then
         if uteis.confirmacao ( ('Deseja excluir a referência ?'+#13+'Referência: '+SqlCdsConsumoPRD_REFER.AsString+#13+'Produto: '+SqlCdsConsumoPRD_DESCRI.AsString)) = idYes then
            begin
                DataCadastros.sqlUpdate.Close;
                DataCadastros.SqlUpdate.sql.text :=SQLDEF('PRODUTOS','Delete from PSV0000 ','where PRD_REFER = '''+SqlCdsConsumoPRD_REFER.AsString+'''','','');
                DataCadastros.sqlUpdate.Execsql;
                SqlCdsConsumo.Refresh;
            end
         else
            begin
                DataCadastros.sqlUpdate.Close;
                DBGridSimula.SetFocus;
            end;
      MostraDados;
    except on E:EdataBaseError do
       uteis.erro  (pchar('Erro ao excluir o Registros !'+e.message));
    end;

end;

procedure TFormPrevConsumo.SeparaModelos;
var wRefer, wDescri , wMod1, wUnd :String;
wQuant1, wCusto : Currency;
wBookMark:TBookMark; wI : Integer;
begin
    if not SqlCdsConsumo.IsEmpty then
       begin
           {SEPARA PRODUTOS UM MODELO(variação) POR REGISTRO}
           SqlCdsConsumo.First;
           SqlCdsConsumo.DisableControls;
           while not SqlCdsConsumo.Eof do
            begin
                if SqlCdsConsumoPSV_FLAG.AsString = 'U' then
                   begin
                       wBookMark := SqlCdsConsumo.GetBookmark;
                       for wI := 1 to 8 do
                         begin
                             wQuant1 := 0;
                             if(wI = 1)and(SqlCdsConsumoPSV_QUANT1.AsCurrency > 0)then
                                begin
                                    wQuant1 := SqlCdsConsumoPSV_QUANT1.AsCurrency;
                                    wMod1   := SqlCdsConsumoPSV_MODE1.AsString;
                                end;
                             if(wI = 2)and(SqlCdsConsumoPSV_QUANT2.AsCurrency > 0)then
                                begin
                                    wQuant1 := SqlCdsConsumoPSV_QUANT2.AsCurrency;
                                    wMod1   := SqlCdsConsumoPSV_MODE2.AsString;
                                end;
                             if(wI = 3)and(SqlCdsConsumoPSV_QUANT3.AsCurrency > 0)then
                                begin
                                    wQuant1 := SqlCdsConsumoPSV_QUANT3.AsCurrency;
                                    wMod1   := SqlCdsConsumoPSV_MODE3.AsString;
                                end;
                             if(wI = 4)and(SqlCdsConsumoPSV_QUANT4.AsCurrency > 0)then
                                begin
                                    wQuant1 := SqlCdsConsumoPSV_QUANT4.AsCurrency;
                                    wMod1   := SqlCdsConsumoPSV_MODE4.AsString;
                                end;
                             if(wI = 5)and(SqlCdsConsumoPSV_QUANT5.AsCurrency > 0)then
                                begin
                                    wQuant1 := SqlCdsConsumoPSV_QUANT5.AsCurrency;
                                    wMod1   := SqlCdsConsumoPSV_MODE5.AsString;
                                end;
                             if(wI = 6)and(SqlCdsConsumoPSV_QUANT6.AsCurrency > 0)then
                                begin
                                    wQuant1 := SqlCdsConsumoPSV_QUANT6.AsCurrency;
                                    wMod1   := SqlCdsConsumoPSV_MODE6.AsString;
                                end;
                             if(wI = 7)and(SqlCdsConsumoPSV_QUANT7.AsCurrency > 0)then
                                begin
                                    wQuant1 := SqlCdsConsumoPSV_QUANT7.AsCurrency;
                                    wMod1   := SqlCdsConsumoPSV_MODE7.AsString;
                                end;
                             if(wI = 8)and(SqlCdsConsumoPSV_QUANT8.AsCurrency > 0)then
                                begin
                                    wQuant1 := SqlCdsConsumoPSV_QUANT8.AsCurrency;
                                    wMod1   := SqlCdsConsumoPSV_MODE8.AsString;
                                end;
                             wRefer  := SqlCdsConsumoPRD_REFER.AsString;
                             wDescri := SqlCdsConsumoPRD_DESCRI.AsString;
                             wCusto  := SqlCdsConsumoPSV_CUSTO.AsCurrency;
                             wUnd    := SqlCdsConsumoPSV_UND.AsString;
                             wEmp    := SqlCdsConsumoEMP_CODIGO.AsString;
                             if wQuant1 > 0 then
                                begin
                                    try
                                      DmProducao.CdsPrevConsumo.Close;
                                      DmProducao.CdsPrevConsumo.CommandText := SQLDEF('PRODUTOS','Select C1.* from PSV0000 C1','','','C1.');
                                      DmProducao.CdsPrevConsumo.Open;
                                      DmProducao.CdsPrevConsumo.Insert;
                                      DmProducao.CdsPrevConsumoPRD_REFER.AsString    := wRefer;
                                      DmProducao.CdsPrevConsumoPRD_DESCRI.AsString   := wDescri;
                                      DmProducao.CdsPrevConsumoPSV_CUSTO.AsCurrency  := wCusto;
                                      DmProducao.CdsPrevConsumoPSV_QUANT1.AsCurrency := wQuant1;
                                      DmProducao.CdsPrevConsumoPSV_MODE1.AsString    := wMod1;
                                      DmProducao.CdsPrevConsumoPSV_QUALMOD.AsString  := IntToStr(wI);
                                      DmProducao.CdsPrevConsumoPSV_FLAG.AsString     := 'U'; // 'P';
                                      DmProducao.CdsPrevConsumoPSV_UND.AsString      := wUnd;
                                      DmProducao.CdsPrevConsumoEMP_CODIGO.AsString   := wEmp;
                                      DmProducao.CdsPrevConsumo.ApplyUpdates(0);
                                      SqlCdsConsumo.GotoBookmark(wBookMark);
                                    except on E:EDataBaseError do
                                      uteis.erro  (pchar('Erro ao inserir o Registro !'+e.Message));
                                    end;
                                end;
                         end;
                       SqlCdsConsumo.GotoBookmark(wBookMark);
                       SqlCdsConsumo.FreeBookmark(wBookMark);
                       SqlCdsConsumo.Next;
                   end;
            end;
           SqlCdsConsumo.EnableControls;
       end;
end;

procedure TFormPrevConsumo.BitPrevisaoClick(Sender: tObject);
begin
   {Atribui N na variaveis abaixo}
   wBtn_Cancel   := 'N';
   wConsiderar   := 'N';
   if (SqlCdsConsumo.IsEmpty = true) then
   begin
         uteis.aviso('Não foi registrado produtos para gerar Simulação !');
         DBGridSimula.SetFocus;
   end
   else
   begin
        try

             {Excluir as referencia com o flag=P}
             //dbInicio.ExecSql('Delete from PSV0000 where psv_flag = ''P''');
             dbInicio.ExecSql('Delete from PSV_IT01');  //  excluir p nao duplicar se gerar varias vezes a mesma simulacao
             {Chama o Formulario de consideraçao do Estoque}
             FormOrdServConsiderar := TFormOrdServConsiderar.Create(Application);
             try
               FormOrdServConsiderar.ShowModal;
             finally
                FreeAndNil(FormOrdServConsiderar);
             end;
             //
             if (wBtn_Cancel <> 'S') then
             begin
                    // separa variacoes.Qtde de cada variacao fica toda na variacao 1
                    SeparaModelos_Novo;
                    // é mais rapido gerar c/ modelos(variacoes)juntos
                    GerarPrevisao_Novo;
                    //

                    // cria formulario na memoria
                    FormPrevisaoProducao := TFormPrevisaoProducao.Create(Application);
                    try
                       FormPrevisaoProducao.ShowModal;
                    finally
                           FreeAndNil(FormPrevisaoProducao);
                    end;
             end;
        finally
             {Excluir as referencia com o flag=P}
            // dbInicio.ExecSql('Delete from PSV0000 where psv_flag = ''P''');
             dbInicio.ExecSql('Delete from PSV_IT01'); //  excluir p nao duplicar se gerar varias vezes a mesma simulacao
             //
             DmProducao.CdsPrevConsumo.Close;
             {Reabre a tabela com o Flag U}
             SqlCdsConsumo.Close;
             SqlCdsConsumo.CommandText := SQLDEF('PRODUTOS','SELECT T2.*,P1.PRD_ESTOQUE,P1.PRD_ENTRADA,P1.PRD_SAIDA,P1.PRD_PENDENTE,P1.PRD_RESERVA FROM PSV0000 T2 LEFT JOIN PRD0000 P1 ON (T2.PRD_REFER = P1.PRD_REFER) LEFT JOIN PRD_TIPO P2 ON (P1.PTI_CODIGO = P2.PTI_CODIGO)',
                                                 'where T2.PSV_FLAG=''U''','T2.PRD_REFER','T2.');
             SqlCdsConsumo.Open;
             DBGridSimula.SetFocus;

        end;
   end;
end;

procedure TFormPrevConsumo.BuscaProd;
begin

    try
      if DmProducao.CdsPrevConsumo.State in [dsInsert] then
         begin
             try
               {Verifica se existe o produto cadastrado}
               DataCadastros.sqlUpdate.close;
               DataCadastros.SqlUpdate.sql.text :=SQLDEF('PRODUTOS','Select P4.PRD_REFER from PRD0000 P4','where P4.PRD_REFER = '''+EdtRefer.Text+'''','P4.PRD_REFER','P4.');
               DataCadastros.sqlUpdate.Open;
               if DataCadastros.sqlUpdate.IsEmpty = false then
                  begin
                      {Verifica se o produto tem a Ficha Tecnica}
                      SqlCdsBuscaFicha.Close;
                      SqlCdsBuscaFicha.CommandText := SQLDEF('PRODUTOS','Select F1.PRD_REFER,P1.PRD_DESCRI,P1.PRD_PCUSTO,P1.PRD_UND,P2.PTI_SIGLA,P1.PRD_DCVAR1,P1.PRD_DCVAR2,P1.PRD_DCVAR3,P1.PRD_DCVAR4,P1.PRD_DCVAR5,P1.PRD_DCVAR6,P1.PRD_DCVAR7,P1.PRD_DCVAR8 '+
                                                             'from ftc0000 F1 JOIN prd0000 P1 ON F1.PRD_REFER = P1.PRD_REFER JOIN PRD_TIPO P2 ON (P1.pti_codigo = P2.pti_codigo) ','where F1.PRD_REFER = '''+EdtRefer.Text+'''','F1.PRD_REFER','F1.');
                      SqlCdsBuscaFicha.Open;
                      if SqlCdsBuscaFicha.IsEmpty = false then
                         begin
                             EdtProduto.Text := SqlCdsBuscaFichaPRD_DESCRI.AsString;
                             DmProducao.CdsPrevConsumoPSV_CUSTO.AsCurrency := SqlCdsBuscaFichaPRD_PCUSTO.AsCurrency;
                             DmProducao.CdsPrevConsumoPSV_UND.AsString     := SqlCdsBuscaFichaPRD_UND.AsString;
                             {Habilita somente as variaçoes existente do produto}
                             CurrVar1.Enabled := iif(SqlCdsBuscaFichaPRD_DCVAR1.IsNull = true,'False','True');
                             {CurrVar2.Enabled := iif(SqlCdsBuscaFichaPRD_DCVAR2.IsNull = true,'False','True');
                             CurrVar3.Enabled := iif(SqlCdsBuscaFichaPRD_DCVAR3.IsNull = true,'False','True');
                             CurrVar4.Enabled := iif(SqlCdsBuscaFichaPRD_DCVAR4.IsNull = true,'False','True');
                             CurrVar5.Enabled := iif(SqlCdsBuscaFichaPRD_DCVAR5.IsNull = true,'False','True');
                             CurrVar6.Enabled := iif(SqlCdsBuscaFichaPRD_DCVAR6.IsNull = true,'False','True');
                             CurrVar7.Enabled := iif(SqlCdsBuscaFichaPRD_DCVAR7.IsNull = true,'False','True');
                             CurrVar8.Enabled := iif(SqlCdsBuscaFichaPRD_DCVAR8.IsNull = true,'False','True');}
                             {}
                             // EdtVar1.Text := SqlCdsBuscaFichaPRD_DCVAR1.AsString;
                             {EdtVar2.Text := SqlCdsBuscaFichaPRD_DCVAR2.AsString;
                             EdtVar3.Text := SqlCdsBuscaFichaPRD_DCVAR3.AsString;
                             EdtVar4.Text := SqlCdsBuscaFichaPRD_DCVAR4.AsString;
                             EdtVar5.Text := SqlCdsBuscaFichaPRD_DCVAR5.AsString;
                             EdtVar6.Text := SqlCdsBuscaFichaPRD_DCVAR6.AsString;
                             EdtVar7.Text := SqlCdsBuscaFichaPRD_DCVAR7.AsString;
                             EdtVar8.Text := SqlCdsBuscaFichaPRD_DCVAR8.AsString;}
                         end
                      else
                         begin
                             uteis.aviso(Pchar('A Referência "'+EdtRefer.Text+'" não Possui Ficha Técnica!'));
                             LimparDados;
                             EdtRefer.SetFocus;
                         end;
                  end
               else
                  begin
                      uteis.aviso('Produto não cadastrado !');
                      LimparDados;
                      EdtRefer.SetFocus;
                  end;
             except on E:EdataBaseError do
                uteis.erro  (pchar('Erro ao localizar a referência !'+e.message));
             end;
         end;
    except on e:EdataBaseError do
      uteis.erro  (pchar('Erro ao buscar o produto !'+e.message))
    end;

end;

procedure TFormPrevConsumo.EdtReferExit(Sender: tObject);
begin
    if (ActiveControl.Name = 'BitCancelar') or (ActiveControl.Name = 'Bit_Sair') then
       exit;
    if EdtRefer.Text <> '' then
       begin
           BuscaProd;
       end
    else
       begin
           uteis.aviso('Informe a referência do produto !');
           LimparDados;

       end;
end;

procedure TFormPrevConsumo.BitGravarClick(Sender: tObject);
begin
    if EdtRefer.Text = '' then
       begin
           uteis.aviso('Entre com a Referência !');
           LimparDados;
           EdtRefer.SetFocus;
           exit;
       end;
    try
      DataCadastros.sqlUpdate.Close;
      DataCadastros.SqlUpdate.sql.text :=SQLDEF('PRODUTOS','Select X1.PRD_REFER from psv0000 X1','where X1.PRD_REFER = '''+EdtRefer.Text+'''','X1.PRD_REFER','X1.');
      DataCadastros.sqlUpdate.Open;
      if DataCadastros.sqlUpdate.IsEmpty = true then
         begin
             {Naõ tem a referência}
             DmProducao.CdsPrevConsumoPRD_REFER.AsString    := EdtRefer.Text;
             DmProducao.CdsPrevConsumoPRD_DESCRI.AsString   := EdtProduto.Text;
             DmProducao.CdsPrevConsumoPSV_QUANT1.AsCurrency := CurrVar1.Value;
             {DmProducao.CdsPrevConsumoPSV_QUANT2.AsCurrency := CurrVar2.Value;
             DmProducao.CdsPrevConsumoPSV_QUANT3.AsCurrency := CurrVar3.Value;
             DmProducao.CdsPrevConsumoPSV_QUANT4.AsCurrency := CurrVar4.Value;
             DmProducao.CdsPrevConsumoPSV_QUANT5.AsCurrency := CurrVar5.Value;
             DmProducao.CdsPrevConsumoPSV_QUANT6.AsCurrency := CurrVar6.Value;
             DmProducao.CdsPrevConsumoPSV_QUANT7.AsCurrency := CurrVar7.Value;
             DmProducao.CdsPrevConsumoPSV_QUANT8.AsCurrency := CurrVar8.Value;}
             //DmProducao.CdsPrevConsumoPSV_MODE1.AsString    := EdtVar1.Text;
             {DmProducao.CdsPrevConsumoPSV_MODE2.AsString    := EdtVar2.Text;
             DmProducao.CdsPrevConsumoPSV_MODE3.AsString    := EdtVar3.Text;
             DmProducao.CdsPrevConsumoPSV_MODE4.AsString    := EdtVar4.Text;
             DmProducao.CdsPrevConsumoPSV_MODE5.AsString    := EdtVar5.Text;
             DmProducao.CdsPrevConsumoPSV_MODE6.AsString    := EdtVar6.Text;
             DmProducao.CdsPrevConsumoPSV_MODE7.AsString    := EdtVar7.Text;
             DmProducao.CdsPrevConsumoPSV_MODE8.AsString    := EdtVar8.Text;}
             DmProducao.CdsPrevConsumoPSV_UND.AsString      := SqlCdsBuscaFichaPRD_UND.AsString;
             DmProducao.CdsPrevConsumoPSV_CUSTO.AsCurrency  := SqlCdsBuscaFichaPRD_PCUSTO.AsCurrency;
             DmProducao.CdsPrevConsumoPSV_FLAG.AsString     := 'U';
             DmProducao.CdsPrevConsumoPTI_SIGLA.AsString    := SqlCdsBuscaFichaPTI_SIGLA.AsString;
             DmProducao.CdsPrevConsumoEMP_CODIGO.AsString   := dbInicio.Empresa.EMP_CODIGO;
             DmProducao.CdsPrevConsumoPSV_REQ_COMPRA.AsString := 'N';
         end
      else
         begin
             {Localizou a referência}
             if DmProducao.CdsPrevConsumo.State in [DsInsert] then
                begin
                    DmProducao.CdsPrevConsumo.CancelUpdates;
                end;
             if uteis.confirmacao ( ('Adicionar a(s) Quantidade(s) na referência ?'+#13+'Referência: '+EdtRefer.Text+#13+'Produto: '+EdtProduto.Text)) = idYes then
                begin
                    if DmProducao.CdsPrevConsumo.Locate('PRD_REFER',EdtRefer.Text,[]) = true then
                       begin
                           DmProducao.CdsPrevConsumo.Edit;
                           DmProducao.CdsPrevConsumoPSV_QUANT1.AsCurrency := DmProducao.CdsPrevConsumoPSV_QUANT1.AsCurrency + CurrVar1.Value;
                           {DmProducao.CdsPrevConsumoPSV_QUANT2.AsCurrency := DmProducao.CdsPrevConsumoPSV_QUANT2.AsCurrency + CurrVar2.Value;
                           DmProducao.CdsPrevConsumoPSV_QUANT3.AsCurrency := DmProducao.CdsPrevConsumoPSV_QUANT3.AsCurrency + CurrVar3.Value;
                           DmProducao.CdsPrevConsumoPSV_QUANT4.AsCurrency := DmProducao.CdsPrevConsumoPSV_QUANT4.AsCurrency + CurrVar4.Value;
                           DmProducao.CdsPrevConsumoPSV_QUANT5.AsCurrency := DmProducao.CdsPrevConsumoPSV_QUANT5.AsCurrency + CurrVar5.Value;
                           DmProducao.CdsPrevConsumoPSV_QUANT6.AsCurrency := DmProducao.CdsPrevConsumoPSV_QUANT6.AsCurrency + CurrVar6.Value;
                           DmProducao.CdsPrevConsumoPSV_QUANT7.AsCurrency := DmProducao.CdsPrevConsumoPSV_QUANT7.AsCurrency + CurrVar7.Value;
                           DmProducao.CdsPrevConsumoPSV_QUANT8.AsCurrency := DmProducao.CdsPrevConsumoPSV_QUANT8.AsCurrency + CurrVar8.Value;}
                       end;
                end;
         end;
    except on E:EDataBaseError do
      uteis.erro  (pchar('Erro ao verificar a existência da referência !'+e.message));
    end;
    DmProducao.CdsPrevConsumo.ApplyUpdates(0);
    DmProducao.CdsPrevConsumo.Close;
    {Reabre a tabela com o Flag U}
    SqlCdsConsumo.Close;
    SqlCdsConsumo.CommandText := SQLDEF('PRODUTOS','SELECT T2.*,P1.PRD_ESTOQUE,P1.PRD_ENTRADA,P1.PRD_SAIDA,P1.PRD_PENDENTE,P1.PRD_RESERVA FROM PSV0000 T2 LEFT JOIN PRD0000 P1 ON (T2.PRD_REFER = P1.PRD_REFER) LEFT JOIN PRD_TIPO P2 ON (P1.PTI_CODIGO = P2.PTI_CODIGO)',
                                        'where T2.PSV_FLAG=''U''','T2.PRD_REFER','T2.');
    SqlCdsConsumo.Open;
    MostraDados;
    DBGridSimula.Enabled := true;
    DBGridSimula.SetFocus;
    DesabilitaIncluir;
end;

procedure TFormPrevConsumo.Bit_SairClick(Sender: tObject);
begin
    Close;
end;

Procedure TFormPrevConsumo.LimparPrevisao;
begin

    try
      {Excluindo a previsao de consumo}
      DataCadastros.sqlUpdate.Close;
      DataCadastros.SqlUpdate.sql.text :='Delete from PSV0000';
      DataCadastros.sqlUpdate.Execsql;
      {Excluindo os Itens da previsao de consumo}
      DataCadastros.sqlUpdate.Close;
      DataCadastros.SqlUpdate.sql.text :='Delete from PSV_IT01';
      DataCadastros.sqlUpdate.Execsql;
      {Atualizando a previsão de consumo}
      SqlCdsConsumo.Refresh;
      LimparDados;
      DBGridSimula.SetFocus;
    except on E:EdataBaseError do
      uteis.erro  (pchar('Erro ao limpar a previsão !'+e.message));
    end;

end;

procedure TFormPrevConsumo.BitLimparClick(Sender: tObject);
begin
    if uteis.confirmacao ( 'Limpar Previsão Atual?')= idYes then
       LimparPrevisao;
end;

procedure TFormPrevConsumo.FormCloseQuery(Sender: tObject;
  var CanClose: Boolean);
begin
    inherited;
    if DmProducao.CdsPrevConsumo.State in [dsEdit,dsInsert] then
       DmProducao.CdsPrevConsumo.CancelUpdates;
end;

procedure TFormPrevConsumo.LimparDados;
begin
    EdtRefer.Text   := '';
    EdtProduto.Text := '';
    //EdtVar1.Text    := '';
    CurrVar1.Value  := 0;
end;

procedure TFormPrevConsumo.MostraDados;
begin
    EdtRefer.Text   := SqlCdsConsumoPRD_REFER.AsString;
    EdtProduto.Text := SqlCdsConsumoPRD_DESCRI.AsString;
    //EdtVar1.Text    := SqlCdsConsumoPSV_MODE1.AsString;
    CurrVar1.Value  := SqlCdsConsumoPSV_QUANT1.AsCurrency;
end;

procedure TFormPrevConsumo.SqlCdsConsumoAfterScroll(DataSet: TDataSet);
begin
    MostraDados;
end;

procedure TFormPrevConsumo.SqlCdsConsumoBeforeOpen(DataSet: TDataSet);
begin
     wPmt_UnFormula:=dbinicio.getparametrosistema('PMT_UNFORMULA').ToInteger;
end;

procedure TFormPrevConsumo.BtProdutoClick(Sender: tObject);
begin

      FormProdutoGrid := TFormProdutoGrid.Create(Application);
      try
         FormProdutoGrid.ShowModal;
         if FormProdutoGrid.modalresult=mrok then
         begin
              EdtREFER.Text := FormProdutoGrid.ReferRetorno;
              EdtREFER.SetFocus;
         end;
      finally
         Freeandnil(FormProdutoGrid);
         EdtRefer.SetFocus;
      end;
end;

procedure TFormPrevConsumo.SeparaModelos_Novo;
Var
  wI : Integer;
begin

    try
      wSql1      := 'SELECT T2.*,P1.PRD_ESTOQUE,P1.PRD_ENTRADA,P1.PRD_SAIDA,P1.PRD_PENDENTE,P1.PRD_RESERVA FROM PSV0000 T2 ';
      wSql2      := 'LEFT JOIN PRD0000 P1 ON (T2.PRD_REFER = P1.PRD_REFER) ';
      wSql3      := 'LEFT JOIN PRD_TIPO P2 ON (P1.PTI_CODIGO = P2.PTI_CODIGO)';
      wSELECIONA := 'where T2.PSV_FLAG = ''U''';
      wOrdem     := 'T2.PRD_REFER';
      SqlCdsConsumo.Close;
      SqlCdsConsumo.CommandText := SQLDEF('PRODUTOS',wSql1+wSql2+wSql3,wSELECIONA,wOrdem,'T2.');
      SqlCdsConsumo.Open;
      //
      if (SqlCdsConsumo.IsEmpty = False) then
         begin
             {SEPARA PRODUTOS UM MODELO(variação) POR PRODUTOS}
             SqlCdsConsumo.First;
             SqlCdsConsumo.DisableControls;
             while not SqlCdsConsumo.Eof do
              begin
                  if (SqlCdsConsumoPSV_REQ_COMPRA.AsString = 'N') then
                     begin
                         if (WvARIACOES = 'S') then
                            begin
                                for wI := 1 to 8 do
                                 begin
                                     wQuant1 := 0;
                                     if(wI = 1)and(SqlCdsConsumoPSV_QUANT1.AsCurrency > 0)then
                                        begin
                                            wQuant1 := SqlCdsConsumoPSV_QUANT1.AsCurrency;
                                            wMod1   := SqlCdsConsumoPSV_MODE1.AsString;
                                        end;
                                     if(wI = 2)and(SqlCdsConsumoPSV_QUANT2.AsCurrency > 0)then
                                        begin
                                            wQuant1 := SqlCdsConsumoPSV_QUANT2.AsCurrency;
                                            wMod1   := SqlCdsConsumoPSV_MODE2.AsString;
                                        end;
                                     if(wI = 3)and(SqlCdsConsumoPSV_QUANT3.AsCurrency > 0)then
                                        begin
                                            wQuant1 := SqlCdsConsumoPSV_QUANT3.AsCurrency;
                                            wMod1   := SqlCdsConsumoPSV_MODE3.AsString;
                                        end;
                                     if(wI = 4)and(SqlCdsConsumoPSV_QUANT4.AsCurrency > 0)then
                                        begin
                                            wQuant1 := SqlCdsConsumoPSV_QUANT4.AsCurrency;
                                            wMod1   := SqlCdsConsumoPSV_MODE4.AsString;
                                        end;
                                     if(wI = 5)and(SqlCdsConsumoPSV_QUANT5.AsCurrency > 0)then
                                        begin
                                            wQuant1 := SqlCdsConsumoPSV_QUANT5.AsCurrency;
                                            wMod1   := SqlCdsConsumoPSV_MODE5.AsString;
                                        end;
                                     if(wI = 6)and(SqlCdsConsumoPSV_QUANT6.AsCurrency > 0)then
                                        begin
                                            wQuant1 := SqlCdsConsumoPSV_QUANT6.AsCurrency;
                                            wMod1   := SqlCdsConsumoPSV_MODE6.AsString;
                                        end;
                                     if(wI = 7)and(SqlCdsConsumoPSV_QUANT7.AsCurrency > 0)then
                                        begin
                                            wQuant1 := SqlCdsConsumoPSV_QUANT7.AsCurrency;
                                            wMod1   := SqlCdsConsumoPSV_MODE7.AsString;
                                        end;
                                     if(wI = 8)and(SqlCdsConsumoPSV_QUANT8.AsCurrency > 0)then
                                        begin
                                            wQuant1 := SqlCdsConsumoPSV_QUANT8.AsCurrency;
                                            wMod1   := SqlCdsConsumoPSV_MODE8.AsString;
                                        end;
                                     wRefer       := SqlCdsConsumoPRD_REFER.AsString;
                                     wDescri      := SqlCdsConsumoPRD_DESCRI.AsString;
                                     wUnd         := SqlCdsConsumoPSV_UND.AsString;
                                     wCusto       := SqlCdsConsumoPSV_CUSTO.AsCurrency;
                                     wSigla       := SqlCdsConsumoPTI_SIGLA.AsString;
                                     wEmp         := dbInicio.EMPRESA.EMP_CODIGO;
                                     //
                                     if (wQuant1>0) then
                                        begin
                                           Inserir_Separacao_Previsao(wEmp,
                                                                      wRefer,
                                                                      wUnd,
                                                                      wMod1,
                                                                      wSigla,
                                                                      wQuant1,
                                                                      wI,
                                                                      wCusto);
                                        end;
                                     //
                                 end;
                            end
                         else
                            begin
                                wMod1        := SqlCdsConsumoPSV_MODE1.AsString;
                                wI           := 0;
                                wRefer       := SqlCdsConsumoPRD_REFER.AsString;
                                wQuant1      := SqlCdsConsumoPSV_QUANT1.AsCurrency;

                                if wSaldo then
                                begin
                                     wQuant1 := wQuant1 - dbInicio.BuscaUmDadoSqlasFloat ( 'SELECT SUM(kas_saldo) '+
                                                                                           'FROM kardex_almox_saldo '+
                                                                                           'WHERE prd_codigo = ( select prd_codigo from prd0000 where prd_refer='+qStr( wRefer ) +' ) '+
                                                                                           ConcatSe (' and ',dbInicio.ExclusivoSql('ESTOQUES') ) +
                                                                                           ' and amx_codigo = '+qStr('0001') ) ;
                                     if wQuant1<0 then
                                        wQuant1:=0;

                                end;

                                wDescri      := SqlCdsConsumoPRD_DESCRI.AsString;
                                wUnd         := SqlCdsConsumoPSV_UND.AsString;
                                wSigla       := SqlCdsConsumoPTI_SIGLA.AsString;
                                wCusto       := SqlCdsConsumoPSV_CUSTO.AsCurrency;
                                wEmp         := dbInicio.EMPRESA.EMP_CODIGO;
                                //
                                if (wQuant1>0) then
                                   begin
                                      Inserir_Separacao_Previsao(wEmp,
                                                                 wRefer,
                                                                 wUnd,
                                                                 wMod1,
                                                                 wSigla,
                                                                 wQuant1,
                                                                 wI,
                                                                 wCusto);
                                   end;
                                //
                            end;
                         //
                     end;
                //
                Atualiza_Status_Req_Compra(SqlCdsConsumoPSV_REGISTRO.AsString);
                //
                SqlCdsConsumo.Next;
              end;
             SqlCdsConsumo.EnableControls;
         end
      else
         begin
             uteis.aviso('Não há PRODUTO para gerar simulação !');
             DBGridSimula.SetFocus;
         end;
    except on E:EDataBaseError do
        uteis.erro  (pchar('Erro ao fazer a separação ! '+e.Message));
    end;

end;

procedure TFormPrevConsumo.Inserir_Separacao_Previsao(pEmpresa, pMaterial,
  pUnd, pMode1, pSigla: String; pQtde1, pQualMod, pCusto: Double);
begin
    try
      {Inserir a Qtde da simulacao para obter o saldo}
      wSql1 := 'INSERT INTO PSV0000 ('+
                   'EMP_CODIGO,'+
                   'PRD_REFER,'+
                   'PSV_UND,'+
                   'PSV_MODE1,'+
                   'PTI_SIGLA,'+
                   'PSV_QUANT1,'+
                   'PSV_QUALMOD,'+
                   'PSV_FLAG,'+
                   'PSV_CUSTO)';
      wSql2 := 'VALUES ('''+pEmpresa+''','''+
                            pMaterial+''','''+
                            pUnd+''','''+
                            pMode1+''','''+
                            pSigla+''','''+
                            ValorAmericano(FloatToStr(pQtde1))+''','''+
                            ValorAmericano(FloatToStr(pQualMod))+''','''+
                            'P'+''','''+
                            ValorAmericano(FloatToStr(pCusto))+''')';
      //
      DataCadastros.sqlUpdate.close;
      DataCadastros.SqlUpdate.sql.text :=wSql1+wSql2;
      DataCadastros.sqlUpdate.Execsql;
    except on E:EDataBaseError do
      uteis.erro  (pchar('Erro ao inserir o Registro !'+e.Message));
    end;
end;

procedure TFormPrevConsumo.FormCreate(Sender: tObject);
begin

     inherited;
     wBtn_Cancel := 'N';
     WvARIACOES := DBINICIO.GETPARAMETROSISTEMA( 'PMT_VARIACOES');
     wPmt_Amx_Producao_saida := dbInicio.GetParametroSistema('PMT_AMX_PRODUCAO_SAIDA');
     wSaldo:=False;

end;

procedure TFormPrevConsumo.FormDestroy(Sender: TObject);
begin
  inherited;
  FormPrevConsumo := Nil;
end;

procedure TFormPrevConsumo.GerarPrevisao_Novo;
Var
  sRefer : String;
begin
    try
      wSql1      := 'SELECT T2.*,P1.PRD_ESTOQUE,P1.PRD_ENTRADA,P1.PRD_SAIDA,P1.PRD_PENDENTE,P1.PRD_RESERVA FROM PSV0000 T2 ';
      wSql2      := 'LEFT JOIN PRD0000 P1 ON (T2.PRD_REFER = P1.PRD_REFER) ';
      wSql3      := 'LEFT JOIN PRD_TIPO P2 ON (P1.PTI_CODIGO = P2.PTI_CODIGO)';
      wSELECIONA := 'where T2.PSV_FLAG = ''U''';//'where T2.PSV_FLAG = ''P''';
      wOrdem     := 'T2.PRD_REFER';
      //
      SqlCdsConsumo.Close;
      SqlCdsConsumo.CommandText := SQLDEF('PRODUTOS',wSql1+wSql2+wSql3,wSELECIONA,wOrdem,'T2.');
      SqlCdsConsumo.Open;
      //
      SqlCdsConsumo.First;
      SqlCdsConsumo.DisableControls;
      while not SqlCdsConsumo.Eof do
       begin
          //
          wPai          := 'P';
          sRefer        := SqlCdsConsumoPRD_REFER.AsString;
          sNVarx        := SqlCdsConsumoPSV_QUALMOD.AsString;
          wSIGLA        := SqlCdsConsumoPTI_SIGLA.AsString;
          //
          wEstoque_Compra  := 0;
          wEstoque_Fisico  := 0;
          wQtde_Produzir   := 0;
          wQtde_Disponivel := 0;
          wQtde_Falta      := 0;
          wQtde_Reserva    := 0;
          wConsumo         := 0;
          {Independente da variaçao}
          wQtde_Reserva   := SqlCdsConsumoPRD_RESERVA.AsCurrency;
          wQtde_Produzir  := SqlCdsConsumoPSV_QUANT1.AsCurrency;
          //
          wEstoque_Compra := SqlCdsConsumoPRD_PENDENTE.AsCurrency;
          //
          (*wSaldo_Estoque  := Retorna_Saldo_Estoque_Variacao(sNVarx,
                                                            SqlCdsConsumoPRD_REFER.AsString,
                                                            SqlCdsConsumoEMP_CODIGO.AsString,
                                                            FloatToStr(wQtde_Produzir));*)
          wSaldo_Estoque := KardexRetornaSaldo(dbInicio.RetornaRegistroTabela('PRD0000','PRD_CODIGO',' PRD_REFER = '+QuotedStr(SqlCdsConsumoPRD_REFER.AsString)),wPmt_Amx_Producao_saida,'');
          Proc_Considera(wSaldo_Estoque,wEstoque_Compra);
          wStatus         := 'P';
          //
          if (wConsumo > 0) then
             begin
                 sRefer := SqlCdsConsumoPRD_REFER.AsString;
                 IncluirItensSimula(SqlCdsConsumoEMP_CODIGO.AsString,           //pEmpresa
                                    SqlCdsConsumoPRD_REFER.AsString,            //pRefer,
                                    SqlCdsConsumoPRD_REFER.AsString,            //pRefer_Itens,
                                    SqlCdsConsumoPSV_UND.AsString,              //pUnd,
                                    SqlCdsConsumoPTI_SIGLA.AsString,            //pSigla,
                                    wStatus,                                    //pStatus, //D=Disponivel / P=Produzir / C=Comprar
                                    wPAI,                                       //pPai,
                                    SqlCdsConsumoPSV_CUSTO.AsCurrency,          //pCusto,
                                    wEstoque_Fisico,                            //pEstoque,
                                    wEstoque_Compra,                            //pPendente,
                                    wConsumo,                                   //pConsumir,
                                    wQtde_Falta,                                //pFalta,
                                    wQtde_Disponivel,                           //pDisponivel,
                                    wQtde_Reserva);                             //pReserva,
                 //
                 BuscaItensNivel(0,SqlCdsConsumoPRD_REFER.AsString,(wConsumo));
             end;
          SqlCdsConsumo.Next;
       end;
       SqlCdsConsumo.EnableControls;
    except on E:EDataBaseError do
      uteis.erro  (pchar('Erro ao abrir a tabela !'+e.message));
    end;
end;

procedure TFormPrevConsumo.IncluirItensSimula(pEmpresa,pRefer,pReferItens,pUnd,pSigla,pStatus,pPai:String;pCusto,pEstoque,pPendente,pConsumir,pFalta,pDisponivel,pReserva:Currency);
Var
  pQtdeProduz,
  pSaldoSimulacao : Double;
begin

    try
      DmProducao.CdsPrevItens.Close;
      DmProducao.CdsPrevItens.CommandText := 'SELECT I1.* FROM PSV_IT01 I1 WHERE I1.PRD_REFER_ITENS = '''+pReferItens+''' ORDER BY I1.PRD_REFER,I1.PRD_REFER_ITENS';
      DmProducao.CdsPrevItens.Open;
      {}
      xxReferencia  := pReferItens;
      if DmProducao.CdsPrevItens.IsEmpty = false then
         begin
             DmProducao.CdsPrevItens.Edit;
             DmProducao.CdsPrevItensPSI_ESTANTEC.AsCurrency     := DmProducao.CdsPrevItensPSI_ESTANTEC.AsCurrency   + pPendente;
             DmProducao.CdsPrevItensPSI_CONSUMO.AsCurrency      := DmProducao.CdsPrevItensPSI_CONSUMO.AsCurrency    + pConsumir;
             DmProducao.CdsPrevItensPSI_FALTA.AsCurrency        := DmProducao.CdsPrevItensPSI_FALTA.AsCurrency      + pFalta;
             DmProducao.CdsPrevItensPSI_DISPONIVEL.AsCurrency   := DmProducao.CdsPrevItensPSI_DISPONIVEL.AsCurrency + pDisponivel;
             DmProducao.CdsPrevItensPSI_ESTRESERVA.AsCurrency   := DmProducao.CdsPrevItensPSI_ESTRESERVA.AsCurrency + pReserva;
         end
      else
         begin
             // novo registro p/ este codigo
             DmProducao.CdsPrevItens.Insert;
             DmProducao.CdsPrevItensEMP_CODIGO.AsString         := pEmpresa;
             DmProducao.CdsPrevItensPRD_REFER.AsString          := pReferItens;
             DmProducao.CdsPrevItensPRD_REFER_ITENS.AsString    := IIF(pReferItens='',pRefer,pReferItens);
             DmProducao.CdsPrevItensPSI_UND.AsString            := pUnd;
             DmProducao.CdsPrevItensPSI_SIGLA.AsString          := pSIGLA;
             DmProducao.CdsPrevItensPSI_CUSTO.AsCurrency        := pCusto;
             DmProducao.CdsPrevItensPSI_ESTFISICO.AsCurrency    := pEstoque;
             DmProducao.CdsPrevItensPSI_ESTANTEC.AsCurrency     := pPendente;
             DmProducao.CdsPrevItensPSI_CONSUMO.AsCurrency      := pConsumir;
             DmProducao.CdsPrevItensPSI_FALTA.AsCurrency        := pFalta;
             DmProducao.CdsPrevItensPSI_DISPONIVEL.AsCurrency   := pDisponivel;
             DmProducao.CdsPrevItensPSI_ESTRESERVA.AsCurrency   := pReserva;
             DmProducao.CdsPrevItensPSI_STATUS.AsString         := pStatus;
             DmProducao.CdsPrevItensPSI_PAI.AsString            := pPAI;
             DmProducao.CdsPrevItensPSI_REQ_COMPRA.AsString     := 'N';
         end;
      DmProducao.CdsPrevItens.ApplyUpdates(0);
      DmProducao.CdsPrevItens.Close;
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao gravar os itens ! '+e.message));
    end;

end;

procedure TFormPrevConsumo.BuscaItensNivel(wNivel : Integer; wRefer:String; wQtdeProduzir : Double);
Var
  pConsumo : Currency;
begin
    wSql1      := 'Select I1.FTI_REGISTRO,I1.PRD_REFER,I1.PRD_REFER_ITENS,P1.PRD_DESCRI,P1.PRD_PCUSTO,P1.PRD_ESTOQUE,P1.PRD_ENTRADA,P1.PRD_SAIDA,P1.PRD_PENDENTE,P1.PRD_RESERVA,P1.PRD_UND,P2.PTI_SIGLA,';
    wSql2      := 'I1.FTI_MODE1,I1.FTI_MODE2,I1.FTI_MODE3,I1.FTI_MODE4,I1.FTI_MODE5,I1.FTI_MODE6,I1.FTI_MODE7,I1.FTI_MODE8,I1.FTI_UC FROM FTC_IT01 I1 ';
    wSql3      := 'LEFT JOIN PRD0000 P1 on (I1.PRD_REFER_ITENS = P1.PRD_REFER) LEFT JOIN PRD_TIPO P2 ON (P1.PTI_CODIGO = P2.PTI_CODIGO) ';
    wSeleciona := 'WHERE I1.PRD_REFER = '''+wRefer+'''';
    wOrdem     := 'I1.FTI_REGISTRO';
    //
    CriarTabelaMemoria(1);
    //
    try
      try
        SqlCdsN1.Close;
        SqlCdsN1.CommandText := SQLDEF('PRODUTOS',wSql1+wSql2+wSql3,wSeleciona,wOrdem,'I1.');
        SqlCdsN1.Open;
        if SqlCdsN1.IsEmpty = false then
           begin
               SqlCdsN1.First;
               while not SqlCdsN1.eof do
                begin
                    xRefer        := SqlCdsN1PRD_REFER.AsString;
                    xRefer_itens  := SqlCdsN1PRD_REFER_ITENS.AsString;
                    //
                    pConsumo := 0;
                    if (SqlCdsN1PTI_SIGLA.AsString = 'PA') OR (SqlCdsN1PTI_SIGLA.AsString = 'PI') then
                       wPai := 'F'
                    else
                       wPai := '';
                    //
                    if (WvARIACOES = 'S') then
                       begin
                           if SqlCdsN1FTI_MODE1.AsString = 'X' then
                              pConsumo := ((SqlCdsConsumoPSV_QUANT1.AsCurrency * SqlCdsN1FTI_UC.AsFloat)/wPmt_Unformula);
                           if SqlCdsN1FTI_MODE2.AsString = 'X' then
                              pConsumo := pConsumo+((SqlCdsConsumoPSV_QUANT2.AsCurrency * SqlCdsN1FTI_UC.AsFloat)/wPmt_Unformula);
                           if SqlCdsN1FTI_MODE3.AsString = 'X' then
                              pConsumo := pConsumo+((SqlCdsConsumoPSV_QUANT3.AsCurrency * SqlCdsN1FTI_UC.AsFloat)/wPmt_Unformula);
                           if SqlCdsN1FTI_MODE4.AsString = 'X' then
                              pConsumo := pConsumo+((SqlCdsConsumoPSV_QUANT4.AsCurrency * SqlCdsN1FTI_UC.AsFloat)/wPmt_Unformula);
                           if SqlCdsN1FTI_MODE5.AsString = 'X' then
                              pConsumo := pConsumo+((SqlCdsConsumoPSV_QUANT5.AsCurrency * SqlCdsN1FTI_UC.AsFloat)/wPmt_Unformula);
                           if SqlCdsN1FTI_MODE6.AsString = 'X' then
                              pConsumo := pConsumo+((SqlCdsConsumoPSV_QUANT6.AsCurrency * SqlCdsN1FTI_UC.AsFloat)/wPmt_Unformula);
                           if SqlCdsN1FTI_MODE7.AsString = 'X' then
                              pConsumo := pConsumo+((SqlCdsConsumoPSV_QUANT7.AsCurrency * SqlCdsN1FTI_UC.AsFloat)/wPmt_Unformula);
                           if SqlCdsN1FTI_MODE8.AsString = 'X' then
                              pConsumo := pConsumo+((SqlCdsConsumoPSV_QUANT8.AsCurrency * SqlCdsN1FTI_UC.AsFloat)/wPmt_Unformula);
                       end
                    else
                       begin
                           pConsumo := ((wQtdeProduzir * SqlCdsN1FTI_UC.AsFloat)/wPmt_Unformula);
                       end;
                    if pConsumo>0 then
                       begin
                           wEstoque_Compra  := 0;
                           wEstoque_Fisico  := 0;
                           wQtde_Produzir   := 0;
                           wQtde_Disponivel := 0;
                           wQtde_Falta      := 0;
                           wQtde_Reserva    := 0;
                           {Independente da variaçao}
                           wQtde_Reserva   := SqlCdsN1PRD_RESERVA.AsCurrency;
                           wQtde_Produzir  := pConsumo;
                           //
                           wEstoque_Compra := SqlCdsN1PRD_PENDENTE.AsCurrency;
                           //
                           wSaldo_Estoque := KardexRetornaSaldo(dbInicio.RetornaRegistroTabela('PRD0000','PRD_CODIGO',' PRD_REFER = '+QuotedStr(SqlCdsN1PRD_REFER_ITENS.AsString)),wPmt_Amx_Producao_saida,'');
                           //
                           xxReferencia := SqlCdsN1PRD_REFER_ITENS.AsString;
                           //
                           Proc_Considera(wSaldo_Estoque,wEstoque_Compra);
                           //
                           wStatus      := 'P';
                           //
                           IncluirItensSimula(SqlCdsConsumoEMP_CODIGO.AsString,           //pEmpresa
                                              SqlCdsN1PRD_REFER.AsString,                 //pRefer,
                                              SqlCdsN1PRD_REFER_ITENS.AsString,           //pRefer_Itens,
                                              SqlCdsN1PRD_UND.AsString,                   //pUnd,
                                              SqlCdsN1PTI_SIGLA.AsString,                 //pSigla,
                                              wStatus,                                    //pStatus, //D=Disponivel / P=Produzir / C=Comprar
                                              wPAI,                                       //pPai,
                                              SqlCdsN1PRD_PCUSTO.AsCurrency,              //pCusto,
                                              wEstoque_Fisico,                            //pEstoque,
                                              wEstoque_Compra,                            //pPendente,
                                              pConsumo,                                   //pConsumir,
                                              wQtde_Falta,                                //pFalta,
                                              wQtde_Disponivel,                           //pDisponivel,
                                              wQtde_Reserva);                             //pReserva,
                           if (SqlCdsN1PTI_SIGLA.AsString = 'PA') OR (SqlCdsN1PTI_SIGLA.AsString = 'PI') then
                              begin
                                  TesteNIvel(1,SqlCdsN1PRD_REFER_ITENS.AsString,(pConsumo-wSaldo_Estoque));
                              end;
                       end;
                    SqlCdsN1.Next;
                end;
           end;
      except on E:EDataBaseError do
         uteis.erro  (pchar('Erro ao Localizar o Item do Nivel 1 ! '+e.message));
      end;
    finally
       DestrTabelaMemoria(1);
    end;
end;

procedure TFormPrevConsumo.CriarTabelaMemoria(iNivel: Integer);
begin
    tSqlNivel[iNivel]              := TSQLClientDataSet.Create(Application);
    tSqlNivel[iNivel].DBConnection := DataCadastros.SQLConnection1;
    tSqlNivel[iNivel].Name         := 'Nivel'+IntToStr(iNivel);
end;

procedure TFormPrevConsumo.TesteNIvel(wNivel: Integer; wRefer: String;
  wQtdes: Double);
Var
  zConsumo    : Double;
  sReferencia : String;
begin
    //
    sReferencia  := '';
    iNivelTabela := wNivel;
    //
    wSql1      := 'SELECT I1.FTI_REGISTRO,I1.PRD_REFER,I1.PRD_REFER_ITENS,P1.PRD_DESCRI,P1.PRD_PCUSTO,P1.PRD_ESTOQUE,P1.PRD_ENTRADA,P1.PRD_SAIDA,P1.PRD_PENDENTE,P1.PRD_RESERVA,P1.PRD_UND,P2.PTI_SIGLA,';
    wSql2      := 'I1.FTI_MODE1,I1.FTI_MODE2,I1.FTI_MODE3,I1.FTI_MODE4,I1.FTI_MODE5,I1.FTI_MODE6,I1.FTI_MODE7,I1.FTI_MODE8,I1.FTI_UC FROM FTC_IT01 I1 ';
    wSql3      := 'LEFT JOIN PRD0000 P1 ON (I1.PRD_REFER_ITENS = P1.PRD_REFER) LEFT JOIN PRD_TIPO P2 ON (P1.PTI_CODIGO = P2.PTI_CODIGO) ';
    wSeleciona := 'WHERE I1.PRD_REFER = '''+wRefer+'''';
    wOrdem     := 'I1.PRD_REFER,I1.PRD_REFER_ITENS';
    try
      tSqlNivel[iNivelTabela].Close;
      tSqlNivel[iNivelTabela].CommandText := SQLDEF('PRODUTOS',wSql1+wSql2+wSql3,wSeleciona,wOrdem,'I1.');
      tSqlNivel[iNivelTabela].Open;
      if (not tSqlNivel[iNivelTabela].IsEmpty) then
         begin
             tSqlNivel[iNivelTabela].First;
             while (not tSqlNivel[iNivelTabela].eof) do
              begin
                  zConsumo := 0;
                  if (tSqlNivel[iNivelTabela].FieldByName('PTI_SIGLA').AsString = 'PA') or
                     (tSqlNivel[iNivelTabela].FieldByName('PTI_SIGLA').AsString = 'PI') then
                     wPai := 'F'
                  else
                     wPai := '';
                  xRefer_itens  := tSqlNivel[iNivelTabela].FieldByName('PRD_REFER_ITENS').AsString;
                  if (WvARIACOES = 'S') then
                     begin
                         if tSqlNivel[iNivelTabela].FieldByName('FTI_MODE1').AsString = 'X' then
                            zConsumo := wQtdes * tSqlNivel[iNivelTabela].FieldByName('FTI_UC').AsFloat;
                         if tSqlNivel[iNivelTabela].FieldByName('FTI_MODE2').AsString = 'X' then
                            zConsumo := zConsumo+(wQtdes * tSqlNivel[iNivelTabela].FieldByName('FTI_UC').AsFloat);
                         if tSqlNivel[iNivelTabela].FieldByName('FTI_MODE3').AsString = 'X' then
                            zConsumo := zConsumo+(wQtdes * tSqlNivel[iNivelTabela].FieldByName('FTI_UC').AsFloat);
                         if tSqlNivel[iNivelTabela].FieldByName('FTI_MODE4').AsString = 'X' then
                            zConsumo := zConsumo+(wQtdes * tSqlNivel[iNivelTabela].FieldByName('FTI_UC').AsFloat);
                         if tSqlNivel[iNivelTabela].FieldByName('FTI_MODE5').AsString = 'X' then
                            zConsumo := zConsumo+(wQtdes * tSqlNivel[iNivelTabela].FieldByName('FTI_UC').AsFloat);
                         if tSqlNivel[iNivelTabela].FieldByName('FTI_MODE6').AsString = 'X' then
                            zConsumo := zConsumo+(wQtdes * tSqlNivel[iNivelTabela].FieldByName('FTI_UC').AsFloat);
                         if tSqlNivel[iNivelTabela].FieldByName('FTI_MODE7').AsString = 'X' then
                            zConsumo := zConsumo+(wQtdes * tSqlNivel[iNivelTabela].FieldByName('FTI_UC').AsFloat);
                         if tSqlNivel[iNivelTabela].FieldByName('FTI_MODE8').AsString = 'X' then
                            zConsumo := zConsumo+(wQtdes * tSqlNivel[iNivelTabela].FieldByName('FTI_UC').AsFloat);
                     end
                  else
                     begin
                         zConsumo := (wQtdes * tSqlNivel[iNivelTabela].FieldByName('FTI_UC').AsFloat);
                     end;
                  if (zConsumo>0) then
                     begin
                           wEstoque_Compra  := 0;
                           wEstoque_Fisico  := 0;
                           wQtde_Produzir   := 0;
                           wQtde_Disponivel := 0;
                           wQtde_Falta      := 0;
                           wQtde_Reserva    := 0;
                           {Independente da variaçao}
                           wQtde_Reserva   := tSqlNivel[iNivelTabela].FieldByName('PRD_RESERVA').AsCurrency;
                           wQtde_Produzir  := zConsumo;
                           //
                           wEstoque_Compra := tSqlNivel[iNivelTabela].FieldByName('PRD_PENDENTE').AsCurrency;
                           //
                           wSaldo_Estoque := KardexRetornaSaldo(dbInicio.RetornaRegistroTabela('PRD0000','PRD_CODIGO',' PRD_REFER = '+QuotedStr(tSqlNivel[iNivelTabela].FieldByName('PRD_REFER_ITENS').AsString)),wPmt_Amx_Producao_saida,'');
                           //
                           xxReferencia := tSqlNivel[iNivelTabela].FieldByName('PRD_REFER_ITENS').AsString;
                           //
                           Proc_Considera(wSaldo_Estoque,wEstoque_Compra);
                           //
                           wStatus      := 'P';
                           //
                           IncluirItensSimula(SqlCdsConsumoEMP_CODIGO.AsString,                                          //pEmpresa
                                              tSqlNivel[iNivelTabela].FieldByName('PRD_REFER').AsString,                 //pRefer,
                                              tSqlNivel[iNivelTabela].FieldByName('PRD_REFER_ITENS').AsString,           //pRefer_Itens,
                                              tSqlNivel[iNivelTabela].FieldByName('PRD_UND').AsString,                   //pUnd,
                                              tSqlNivel[iNivelTabela].FieldByName('PTI_SIGLA').AsString,
                                              wStatus,                                                                   //pStatus, //D=Disponivel / P=Produzir / C=Comprar
                                              wPAI,                                                                      //pPai,
                                              tSqlNivel[iNivelTabela].FieldByName('PRD_PCUSTO').AsCurrency,              //pCusto,
                                              wEstoque_Fisico,                                                           //pEstoque,
                                              wEstoque_Compra,                                                           //pPendente,
                                              zConsumo,                                                                  //pConsumir,
                                              wQtde_Falta,                                                               //pFalta,
                                              wQtde_Disponivel,                                                          //pDisponivel,
                                              wQtde_Reserva);                                                            //pReserva,
                         if (tSqlNivel[iNivelTabela].FieldByName('PTI_SIGLA').AsString = 'PA') or
                            (tSqlNivel[iNivelTabela].FieldByName('PTI_SIGLA').AsString = 'PI') then
                            begin
                               sReferencia := tSqlNivel[iNivelTabela].FieldByName('PRD_REFER_ITENS').AsString;
                               Inc(iNivelTabela);
                               CriarTabelaMemoria(iNivelTabela);
                               TesteNIvel(iNivelTabela,sReferencia,(zConsumo-wSaldo_Estoque));
                            end;
                     end;
                  //
                  tSqlNivel[iNivelTabela].Next;
              end;
           if (iNivelTabela > 1) then
              begin
                 DestrTabelaMemoria(iNivelTabela);
                 Dec(iNivelTabela);
              end;
         end;
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao Localizar o Item do Nivel 1 ! '+e.message));
    end;
end;

procedure TFormPrevConsumo.DestrTabelaMemoria(iNivel: Integer);
begin
    tSqlNivel[iNivel].Close;
    FreeAndNil(tSqlNivel[iNivel]);
end;

procedure TFormPrevConsumo.Proc_Considera(pSaldo_Estoque,pPendente: Currency);
begin
    {Atribui a Qtde do Estoque Fisico}
    wEstoque_Fisico := pSaldo_Estoque;
    {Atribui a Qtde de Estoque Compras}
    wEstoque_Compra := (wEstoque_Fisico + pPendente);
    {Verifica a consideraçao do estoque}
    if (wConsiderar = 'S') then
       begin
           wConsumo := (wQtde_Produzir);// - wSaldo_Estoque);
           {Atribui a Qtde Disponivel}
           if (wEstoque_Fisico >0) then
              begin
                  {Ex:            150 >= 100}
                  if (wEstoque_Fisico >= wConsumo) then
                     begin
                         wQtde_Disponivel := wConsumo;
                         wQtde_Falta      := 0;
                     end
                  else
                     begin
                         wQtde_Disponivel := wEstoque_Fisico;
                         wQtde_Falta      := (wConsumo - wEstoque_Fisico);
                     end;
                  {}
              end
           else
              begin
                  wQtde_Disponivel := 0;
                  wQtde_Falta      := wConsumo;
              end;
       end
    else
    begin
           wConsumo         := wQtde_Produzir;
           wQtde_Disponivel := 0;
           wQtde_Falta      := wConsumo;
           wSaldo_Estoque   := 0;
    end;
end;

procedure TFormPrevConsumo.Atualiza_Status_Req_Compra(pRegistro: String);
begin
      dbInicio.ExecSql('Update PSV0000 set PSV_REQ_COMPRA = '+qStr('S')+' where PSV_REGISTRO = '+qStr(pRegistro));
end;

end.

