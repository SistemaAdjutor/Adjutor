unit uEntradaNotaPedidoCompra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, BaseDbEstoqueForm,
  Dialogs, SqlExpr,SqlClientDataSet, Provider, StdCtrls, Buttons, DB, Grids, DBGrids,
  DBClient, DBLocal, DBLocalS, RWFunc, Math, Mask,  rxToolEdit, rxCurrEdit,
  SimpleDS, Iniciodb, Data.DBXFirebird, Data.FMTBCd, ACBrEnterTab, ACBrBase, ACBrCalculadora, Vcl.ExtCtrls, ACBrETQ, System.ImageList, Vcl.ImgList;

type
  TFormNfEntradaPedidoCompra = class(TFrmBaseDbEstoque)
    dsOrdemCompraItem: TDataSource;
    CdsOrdemCompraItem: TSQLClientDataSet;
    GroupBox1: TGroupBox;
    dbgrdOrdens: TDBGrid;
    CdsOrdemCompraItemOCI_REGISTRO: TIntegerField;
    CdsOrdemCompraItemOCP_CODIGO: TStringField;
    CdsOrdemCompraItemPRD_REFER: TStringField;
    CdsOrdemCompraItemOCI_QTDES: TFMTBCdField;
    CdsOrdemCompraItemOCI_QTDER: TFMTBCdField;
    CdsOrdemCompraItemOCI_PRECO: TFMTBCdField;
    CdsOrdemCompraItemOCI_IPI: TFMTBCdField;
    CdsOrdemCompraItemOCI_SITUACAO: TStringField;
    CdsOrdemCompraItemEMP_CODIGO: TStringField;
    CdsOrdemCompraItemOCI_ICMS: TFMTBCdField;
    CdsOrdemCompraItemOCI_CFOP: TStringField;
    CdsOrdemCompraItemPRD_DESCRI: TStringField;
    Bit_Gravar: TBitBtn;
    Bit_Cancelar: TBitBtn;
    CdsOrdemCompraItemQtdeBaixar: TCurrencyField;
    SqlCdsOP: TSQLClientDataSet;
    SqlCdsOPEMP_CODIGO: TStringField;
    SqlCdsOPOPE_CODIGO: TStringField;
    SqlCdsOPOPE_NATUREZA: TStringField;
    SqlCdsOPOPE_TIPO: TStringField;
    SqlCdsOPOPE_ESCRITA: TStringField;
    SqlCdsOPOPE_DENTRO: TStringField;
    SqlCdsOPOPE_DESCRI: TStringField;
    SqlCdsOPOPE_TRIBICMS: TStringField;
    SqlCdsOPOPE_TRIBIPI: TStringField;
    SqlCdsOPOPE_REDU_ICM: TFMTBCdField;
    SqlCdsOPOPE_REDU_IPI: TFMTBCdField;
    SqlCdsOPOPE_IPINABASEICMS: TStringField;
    SqlCdsOPOPE_FRETENABASE: TStringField;
    SqlCdsOPOPE_SEMVLCOM: TStringField;
    SqlCdsOPOPE_IMP_AVISO: TStringField;
    SqlCdsOPOPE_AVISOLEGAL: TStringField;
    SqlCdsOPOPE_AVISOLEGAL2: TStringField;
    SqlCdsOPOPE_AGRUPADO: TStringField;
    SqlCdsOPOPE_SUBTRIBUTARIA: TStringField;
    SqlCdsOPOPE_ESTOQUE: TStringField;
    SqlCdsOPCCT_CODIGO: TStringField;
    SqlCdsOPOPV_CODIGO: TIntegerField;
    SqlCdsOPOPE_SERVICO: TStringField;
    SqlCdsOPOPE_PIS: TFMTBCdField;
    SqlCdsOPOPE_COFINS: TFMTBCdField;
    SqlCdsOPOPE_CONTRISOCIAL: TFMTBCdField;
    SqlCdsOPOPE_DESCRINATUREZA: TStringField;
    SqlCdsOPOPE_INDICE_IMP: TFMTBCdField;
    SqlCdsOPOPE_NOTA_COMPLEMENTAR: TStringField;
    SqlCdsOPOPE_ATUALIZA_CUSTO: TStringField;
    grpProduto: TGroupBox;
    Label1: TLabel;
    edtReferencia: TEdit;
    edtDescricao: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    CurQuantidade: TCurrencyEdit;
    CurPreco: TCurrencyEdit;
    Label4: TLabel;
    CdsOrdemCompraItemQtdeRecebida: TCurrencyField;
    Label5: TLabel;
    CurQuantidadeOrdemCompra: TCurrencyEdit;
    grpFornecedor: TGroupBox;
    lblFornecedor: TLabel;
    CdsOrdemCompraItemPRD_UND: TStringField;
    CdsOrdemCompraItemenf_ucom: TStringField;
    ilLista: TImageList;
    CdsOrdemCompraItemok: TBooleanField;
    CdsOrdemCompraItemDESCRICAO_OCP: TStringField;
    CdsOrdemCompraItemENF_QTDE: TFMTBCDField;
    CdsOrdemCompraItemENF_PRECO: TFMTBCDField;
    CdsOrdemCompraItemocp_validacao: TIntegerField;
    CdsOrdemCompraItemOCI_NOTADIFERE: TStringField;
    CdsOrdemCompraItemRepostaPergunta: TBooleanField;
    CdsOrdemCompraItemexclusao: TStringField;
    procedure Bit_CancelarClick(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure Bit_GravarClick(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure CdsOrdemCompraItemCalcFields(DataSet: TDataSet);
    procedure FormCreate(Sender: tObject);
    procedure dbgrdOrdensDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure CdsOrdemCompraItemQtdeBaixarValidate(Sender: TField);
    procedure CdsOrdemCompraItemokGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure dbgrdOrdensCellClick(Column: TColumn);
    procedure CdsOrdemCompraItemNewRecord(DataSet: TDataSet);
  private
    wCalcularPV :INTEGER;
    procedure BuscaOperacaoCFOP(const pNat: String);
    procedure AtualizaSituacaoOC;
  public
    { Public declarations }
    ocp_codigo : string;
    sFornecedor,nota,
    sRegistroAlteracao:String;
    bVinculacaoUnica:Boolean;
    procedure ValidarItensCompras;
  end;

var
  FormNfEntradaPedidoCompra: TFormNfEntradaPedidoCompra;

implementation

uses
  DataCad, Nfs0001, Men0001, uProdutoDao, DataMov,
  uFornecedorDao, uteis;

{$R *.dfm}

procedure TFormNfEntradaPedidoCompra.Bit_CancelarClick(Sender: tObject);
begin
   Close;
end;

procedure TFormNfEntradaPedidoCompra.FormShow(Sender: tObject);
var
   Condicional:string;
begin
   inherited;
   if (edtReferencia.Text <> '') then
      Condicional := ' and t1.prd_refer = '+QuotedStr(edtReferencia.Text)
   else if ocp_codigo<>EmptyStr then
      Condicional := ' and t3.OCP_CODIGO = '+QuotedStr(ocp_codigo)
   else
       Condicional := '';

   lblFornecedor.Caption := FormNfEntrada.EdtFor_Codigo.text+' - '+FormNfEntrada.PesqFornecedor.CDS.FieldByName('FOR_RAZAO').AsString;
   //Abre a lista


   CdsOrdemCompraItem.Close;
   if ocp_codigo=EmptyStr then
   begin
     dbgrdOrdens.Columns[1].Visible := false;
     dbgrdOrdens.Columns[1].Visible := true;
     dbgrdOrdens.Columns[2].Visible := true;
     dbgrdOrdens.Columns[5].Visible := true;
     dbgrdOrdens.Columns[11].Visible := true;
     dbgrdOrdens.Columns[12].Visible := true;
     dbgrdOrdens.Columns[13].Visible := true;
     dbgrdOrdens.Columns[14].Visible := true;
     dbgrdOrdens.Columns[9].Visible := true;
     CdsOrdemCompraItem.CommandText := SQLDEF('ORDENSCOMPRA','SELECT T1.*, t2.prd_descri,enf_ucom,  ENF_QTDE, ENF_PRECO,OCI_NOTADIFERE  FROM ocp_it01 T1 join prd0000 t2 on (t2.prd_refer = t1.prd_refer) '+
                                 ' join ocp0000 t3 on (t3.ocp_codigo = t1.ocp_codigo and t3.for_codigo = '+QuotedStr(sFornecedor)+')'+
                                 IIF(bVinculacaoUnica,'', ' LEFT ')+ ' JOIN ENF_IT01 ef ON (EF.PRD_codigo =  t2.prd_codigo AND EF.for_codigo = t3.for_codigo '+
                                           ' and ENF_IT_NOTANUMBER = '+QuotedStr(nota) + ')'        ,
                                 'WHERE T1.oci_qtdes > t1.oci_qtder '+Condicional     ,
                                 't1.ocp_codigo, t1.prd_refer','t1.')
   end
   else
   begin
     dbgrdOrdens.Columns[1].Visible := true;
     dbgrdOrdens.Columns[1].Visible := False;
     dbgrdOrdens.Columns[2].Visible := False;
     dbgrdOrdens.Columns[5].Visible := False;
     dbgrdOrdens.Columns[11].Visible := False;
     dbgrdOrdens.Columns[12].Visible := False;
     dbgrdOrdens.Columns[13].Visible := False;
     dbgrdOrdens.Columns[14].Visible := False;
     dbgrdOrdens.Columns[9].Visible := False;
     CdsOrdemCompraItem.CommandText := SQLDEF('ORDENSCOMPRA',
                                 ' SELECT T1.*, cast( SUBSTRING(OCI_DESCRICAO FROM 1 FOR 100) as varchar(100)) as prd_descri,t2.prd_und as enf_ucom,'+
                                 ' OCI_QTDES ENF_QTDE,OCI_PRECO ENF_PRECO,OCI_NOTADIFERE  '+
                                 ' FROM ocp_it01 T1 join prd0000 t2 on (t2.prd_refer = t1.prd_refer) '+
                                 ' join ocp0000 t3 on (t3.ocp_codigo = t1.ocp_codigo and t3.for_codigo = '+QuotedStr(sFornecedor)+')',
                                 'WHERE T1.oci_qtdes > t1.oci_qtder '+Condicional     ,
                                 't1.ocp_codigo, t1.prd_refer','t1.')  ;
   end;
   CdsOrdemCompraItem.Open;
   if bVinculacaoUnica then
     ValidarItensCompras;
   //CFOP
   SqlCdsOP.Open;
end;
// VERIFICA AS CONSISTENCIAS ENTRE O ITEM DA NOTA E DO PEDIDO DE COMPRA
procedure TFormNfEntradaPedidoCompra.ValidarItensCompras;
begin
   CdsOrdemCompraItem.DisableControls;
   CdsOrdemCompraItem.First;
   if ocp_codigo<>EmptyStr then exit;
   while not CdsOrdemCompraItem.Eof do
   begin
     CdsOrdemCompraItem.Edit;
     CdsOrdemCompraItemRepostaPergunta.AsBoolean := False;

     // VERIFICA SE A UNIDADE DO PRODUTO DO ITEM É DIFERENTE DA NOTA
     if (uppercase(trim(CdsOrdemCompraItemenf_ucom.AsString)) <> uppercase(trim(CdsOrdemCompraItemPRD_UND.AsString))) then
     begin
       CdsOrdemCompraItemok.AsBoolean := False;

         // VERIFICA SE A QUANTIDADE DO PRODUTO DO ITEM É DIFERENTE DA NOTA
       if CdsOrdemCompraItemENF_QTDE.AsFloat <> (CdsOrdemCompraItemOCI_QTDES.AsFloat-CdsOrdemCompraItemOCI_QTDER.AsFloat) then
       begin
         if CdsOrdemCompraItemENF_PRECO.AsFloat <> CdsOrdemCompraItemOCI_PRECO.AsFloat then
           CdsOrdemCompraItemDESCRICAO_OCP.AsString := 'O Preço unitário, quantidade e unidade da nota diferente do pedido'
         else
           CdsOrdemCompraItemDESCRICAO_OCP.AsString :='Quantidade e unidade da nota diferente do pedido';

       end
       else
         CdsOrdemCompraItemDESCRICAO_OCP.AsString := 'Unidade da nota diferente da unidade do pedido';
     end
     else if  (uppercase(CdsOrdemCompraItemenf_ucom.AsString) =  UpperCase(CdsOrdemCompraItemPRD_UND.AsString))
          and ( CdsOrdemCompraItemENF_PRECO.AsFloat <> CdsOrdemCompraItemOCI_PRECO.AsFloat)
          AND (CdsOrdemCompraItemENF_QTDE.AsFloat <> (CdsOrdemCompraItemOCI_QTDES.AsFloat-CdsOrdemCompraItemOCI_QTDER.AsFloat))   then
     begin
       CdsOrdemCompraItemok.AsBoolean := False;
       CdsOrdemCompraItemDESCRICAO_OCP.AsString := 'Preço e quantidade da nota difere do pedido';
     end
     else if  (uppercase(CdsOrdemCompraItemenf_ucom.AsString) =  uppercase(CdsOrdemCompraItemPRD_UND.AsString)) and ( CdsOrdemCompraItemENF_PRECO.AsFloat <> CdsOrdemCompraItemOCI_PRECO.AsFloat) Then
     begin
       CdsOrdemCompraItemok.AsBoolean := False;
       CdsOrdemCompraItemDESCRICAO_OCP.AsString := 'Preço da nota difere do preço do pedido';
     end
     else
       CdsOrdemCompraItemok.AsBoolean := True;
      if not CdsOrdemCompraItemok.AsBoolean then
        ExecSql('update ocp_it01 '+
                ' set  OCI_NOTADIFERE = '+ QuotedStr('S')+
                ' ,OCI_NOTADIFERE_MOTIVO = '+  QuotedStr(CdsOrdemCompraItemDESCRICAO_OCP.AsString) +
                ' where oci_registro = '+ IntToStr(CdsOrdemCompraItemOCI_REGISTRO.AsInteger));
     CdsOrdemCompraItem.Post;
     CdsOrdemCompraItem.Next;
   end;
   CdsOrdemCompraItem.EnableControls;

end;

procedure TFormNfEntradaPedidoCompra.Bit_GravarClick(Sender: tObject);
var
   sContaFinanceira,
   wAtualiza_pvenda,
   sCodigoFaturaPagar,
   sProdutoRegistro:string;
   rQuantidade,
   rPrecoUnitario,
   rVlr1,
   rVlr2,
   rVlr3,
   rTmpQuantidade,
   rTmp_Custo,
   wCustoIPI,
   wPIS_CRED,
   wCOFINS_CRED,
   wIPI_valor,
   wICMS_valor,
   wCUSTO_CREDITO,
   wVLR_AGREGADO,
   wPERC_RATEIO,
   wValor_frete,
   wValor_despesas,
   wValor_seguro,
   wValor_subTrib,
   wEstoque,
   wCUSTO_MEDIO,
   wFinaliza:Double;
   I,
   iRegistro:Integer;
begin
  if (ocp_codigo <> EmptyStr) and (MessageDlg('Todos itens do pedido de compra serão baixados. Deseja continuar ?', mtConfirmation, [mbYes, mbNo], 0) in [mrNo, mrNone]) then exit;
  if ocp_codigo <> EmptyStr then
  begin
    CdsOrdemCompraItem.DisableControls;
    CdsOrdemCompraItem.First;
    while not CdsOrdemCompraItem.Eof do
    begin
      DataCadastros.sqlUpdate1.Close;
      DataCadastros.sqlUpdate1.sql.text:= 'UPDATE OCP_IT01 SET OCI_QTDER = OCI_QTDER + '+ValorAmericano(CdsOrdemCompraItemQtdeBaixar.AsString)+
                                          ' WHERE OCI_REGISTRO = '+CdsOrdemCompraItemOCI_REGISTRO.AsString;
      DataCadastros.sqlUpdate1.ExecSql;

      AtualizaSituacaoOC;
      CdsOrdemCompraItem.Next;
    end;
      DataCadastros.sqlUpdate1.Close;
      DataCadastros.sqlUpdate1.sql.text:= ' UPDATE ENF0001 SET OCP_CODIGO = '+ QuotedStr(ocp_codigo) +
                                          ' WHERE ENF_NOTANUMBER = '+QuotedStr(nota) + ' AND EMP_CODIGO = '+QuotedStr(DBInicio.Empresa.EMP_CODIGO) ;
      DataCadastros.sqlUpdate1.ExecSql;

    close;
  end;
  if ocp_codigo= EmptyStr then
  begin

   CdsOrdemCompraItem.DisableControls;
   CdsOrdemCompraItem.Filtered := False;
   CdsOrdemCompraItem.Filter   := 'QtdeBaixar > 0';
   CdsOrdemCompraItem.Filtered := True;

   if (CdsOrdemCompraItem.IsEmpty) then
   begin
     CdsOrdemCompraItem.Filtered := False;
      uteis.aviso('Informe pelo menos um item a ser baixado informando a quantidade recebida no campo Recebendo')
   end
   else
   begin
         if (bVinculacaoUnica) then
         begin
               if (CdsOrdemCompraItem.RecordCount > 1) then
                  uteis.aviso('Como a vinculação é por item somente selecionar um item de compra')
               else
               begin
                     if (Assigned(FormNfEntrada)) then
                     begin
                           FormNfEntrada.edtItemOrdemCompra.Text := CdsOrdemCompraItemOCP_CODIGO.AsString;
                           FormNfEntrada.CurItemOrdemCompraBaixada.Value := CdsOrdemCompraItemQtdeBaixar.AsCurrency;
                           FormNfEntrada.edtRegistroOrdemCompraItem.Text := CdsOrdemCompraItemOCI_REGISTRO.AsString;
                           Close;
                     end;
               end;
         end
         else
         begin
               //Entrada de Itens e Baixa de Estoque pelo Pedido de Compra
               CdsOrdemCompraItem.First;
               while (not CdsOrdemCompraItem.Eof) do
               begin
                     wIPI_valor := 0;
                     wICMS_valor := 0;
                     wPIS_CRED := 0;
                     wCOFINS_CRED := 0;

                     rQuantidade    := CdsOrdemCompraItemQtdeBaixar.AsFloat;
                     rPrecoUnitario := CdsOrdemCompraItemOCI_PRECO.AsFloat;

                     sProdutoRegistro := RetornaProdutoReferencia(CdsOrdemCompraItemPRD_REFER.AsString);

                     rTmp_Custo :=  rPrecoUnitario;
                     rTmpQuantidade := rQuantidade;

                     wVLR_AGREGADO :=  rPrecoUnitario;

                     wCUSTO_CREDITO := (wPIS_CRED + wCOFINS_CRED + wICMS_valor);

                     //IPI não precisa ratear pois o IPI é por item
                     wVLR_AGREGADO := wVLR_AGREGADO + wIPI_valor;

                     //custo medio
                     if not DataCadastros.CdsProdutos.Active then
                     DataCadastros.CdsProdutos.Open;
                     DataCadastros.CdsProdutos.Locate('PRD_CODIGO', sProdutoRegistro,[]);

                     wEstoque := KardexRetornaSaldo(sProdutoRegistro, dbInicio.Empresa.wPmt_Amx_EntradaNota,'');

                     if (wEstoque < 0) then
                        wEstoque := 0;

                     if (dbInicio.Empresa.wCalcularPM = 0) or (dbInicio.Empresa.wCalcularPM = Null) then    // custo medio pelo custo liquido
                     begin
                       if DataCadastros.CdsProdutosPRD_PMEDIO.AsFloat       > 0 then
                         wCUSTO_MEDIO := (((rTmp_Custo * rTmpQuantidade) + (DataCadastros.CdsProdutosPRD_PMEDIO.AsFloat       * wEstoque      )) / (rTmpQuantidade + wEstoque      ))
                       else
                       if DataCadastros.CdsProdutosPRD_PCUSTO.AsFloat       > 0 then
                        wCUSTO_MEDIO := (((rTmp_Custo * rTmpQuantidade) + (DataCadastros.CdsProdutosPRD_PCUSTO.AsFloat       * wEstoque      )) / (rTmpQuantidade + wEstoque      ))
                       else
                        wCUSTO_MEDIO := (rTmp_Custo);
                     end;

                     if dbInicio.Empresa.wCalcularPM = 1 then      // custo médio pelo custo de entrada
                     begin
                       if DataCadastros.CdsProdutosPRD_PMEDIO.AsFloat       > 0 then
                         wCUSTO_MEDIO := ((((wCustoIPI + wVLR_AGREGADO) * rTmpQuantidade) + (DataCadastros.CdsProdutosPRD_PMEDIO.AsFloat       * wEstoque      )) / (rTmpQuantidade + wEstoque      ))
                       else
                       if DataCadastros.CdsProdutosPRD_PCUSTO.AsFloat       > 0 then
                        wCUSTO_MEDIO := ((((wCustoIPI + wVLR_AGREGADO) * rTmpQuantidade) + (DataCadastros.CdsProdutosPRD_PCUSTO.AsFloat       * wEstoque      )) / (rTmpQuantidade + wEstoque      ))
                       else
                        wCUSTO_MEDIO := (rTmp_Custo);
                     end;

                     if dbInicio.Empresa.wCalcularPM = 2 then    // custo médido pelo custo com creditos de impostos
                     begin
                       if DataCadastros.CdsProdutosPRD_PMEDIO.AsFloat       > 0 then
                         wCUSTO_MEDIO := ((((rTmp_Custo - wCUSTO_CREDITO) * rTmpQuantidade) + (DataCadastros.CdsProdutosPRD_PMEDIO.AsFloat       * wEstoque      )) / (rTmpQuantidade + wEstoque      ))
                       else
                       if DataCadastros.CdsProdutosPRD_PCUSTO.AsFloat       > 0 then
                        wCUSTO_MEDIO := ((((rTmp_Custo - wCUSTO_CREDITO) * rTmpQuantidade) + (DataCadastros.CdsProdutosPRD_PCUSTO.AsFloat       * wEstoque      )) / (rTmpQuantidade + wEstoque      ))
                       else
                        wCUSTO_MEDIO := (rTmp_Custo);
                     end;


                     if IsNaN(wCUSTO_MEDIO) then
                         wCUSTO_MEDIO := (rTmp_Custo);
                     if IsInfinite(wCUSTO_MEDIO) then
                         wCUSTO_MEDIO := (rTmp_Custo);
                     if IsInfinite(wValor_frete) then
                         wValor_frete := (0);
                     if IsInfinite(wValor_despesas) then
                         wValor_despesas := (0);
                     if IsInfinite(wValor_subTrib) then
                         wValor_subTrib := (0);
                     if IsInfinite(wVLR_AGREGADO) then
                         wVLR_AGREGADO := (0);
                     if IsNaN(wValor_frete) then
                         wValor_frete := (0);
                     if IsNaN(wValor_despesas) then
                         wValor_despesas := (0);
                     if IsNaN(wValor_subTrib) then
                         wValor_subTrib := (0);
                     if IsNaN(wVLR_AGREGADO) then
                         wVLR_AGREGADO := (0);

                     //busca a cfop para lancar e ver se atuala custo
                     BuscaOperacaoCFOP(DataMovimento.CdsEnfOPE_NATUREZA.AsString);

                     //Verifica se a cfop atualiza custo
                     if (SqlCdsOPOPE_ATUALIZA_CUSTO.AsString = 'S')and(AtualizaPrecodeCusto(sFornecedor)) then
                     begin
                           iNumeroTransacaoAtual := Executa_Transacao('I',0);
                           wSql1 :='Update PRD0000 Set PRD_ENTRADA  = (PRD_ENTRADA + '+ValorAmericano(CurrToStr((rTmpQuantidade)))+')'+
                                                      ', PRD_PENDENTE = (COALESCE(PRD_PENDENTE,0) - '+ValorAmericano(FloatToStr(rQuantidade))+')'+
                                                      ', PRD_PCUSTO   = '+ValorAmericano(CurrToStr(rTmp_Custo))+
                                                      //pvenda
                                                      ', PRD_CUSTOFRETE   = '+ValorAmericano(CurrToStr(wValor_frete))+
                                                      ', PRD_CUSTOADCIONAL= '+ValorAmericano(CurrToStr(wValor_despesas))+
                                                      ', PRD_CUSTOIPI     = '+ValorAmericano(CurrToStr(wIPI_valor))+
                                                      ', PRD_CUSTOSUBTRIB = '+ValorAmericano(CurrToStr(wValor_subTrib))+
                                                      ', PRD_CUSTO_CREDITO = '+ValorAmericano(CurrToStr(rTmp_Custo - wCUSTO_CREDITO))+ //custo com credito
                                                      ', PRD_CUSTOCOMIPI = '+ValorAmericano(FloatToStr(wCustoIPI + wVLR_AGREGADO))+    //custo agregado
                                                      ', PRD_PMEDIO = '+ValorAmericano(FloatToStr(wCUSTO_MEDIO))+    //custo medio
                                                      ', PRD_DTPCUSTO = '''+DataAmericana(DateToStr(Now))+''''+
                                                      ', FOR_CODIGO = '''+sFornecedor+'''';


                           DataCadastros.sqlUpdate.Close;
                           DataCadastros.SqlUpdate.sql.text :=SQLDEF('PRODUTOS',wSql1,'WHERE PRD_CODIGO = '''+sProdutoRegistro+'''','','');
                           DataCadastros.sqlUpdate.Execsql;

                           wAtualiza_pvenda := FormNfEntrada.PesqFornecedor.CDS.FieldByName('FOR_ATUALIZA_PVENDA').AsString;

                           // Atualizar preço de venda conforme fornecedor
                           if wAtualiza_pvenda = 'S' then
                              begin
                              //conforme parametro -> 0 = custo liquido, 1 = custo entrada, 2 = custo medio
                              if wCalcularPV = 0 then
                                 wSql1 :='Update PRD0000 set PRD_PVENDA = PRD_PCUSTO + (PRD_PCUSTO * PRD_MARGEMVENDA / 100)'
                              else if wCalcularPV = 1 then
                                 wSql1 :='Update PRD0000 set PRD_PVENDA = PRD_CUSTOCOMIPI + (PRD_CUSTOCOMIPI * PRD_MARGEMVENDA / 100)'
                              else if wCalcularPV = 2 then
                                 wSql1 :='Update PRD0000 set PRD_PVENDA = PRD_PMEDIO + (PRD_PMEDIO * PRD_MARGEMVENDA / 100)'
                              end;
                           DataCadastros.sqlUpdate.Close;
                           DataCadastros.SqlUpdate.sql.text :=SQLDEF('PRODUTOS',wSql1,'WHERE PRD_CODIGO = '''+sProdutoRegistro+'''','','');
                           DataCadastros.sqlUpdate.Execsql;
                           Executa_Transacao('C',iNumeroTransacaoAtual);
                     end
                     else
                     begin
                       iNumeroTransacaoAtual := Executa_Transacao('I',0);
                        wSql1 :='Update PRD0000 Set PRD_ENTRADA  = (PRD_ENTRADA + '+ValorAmericano(CurrToStr((rTmpQuantidade)))+')'+
                                                      ', PRD_PENDENTE = (COALESCE(PRD_PENDENTE,0) - '+ValorAmericano(FloatToStr(rQuantidade))+')'+
                                                      //pvenda
                                                      ', FOR_CODIGO = '''+sFornecedor+'''';

                       DataCadastros.sqlUpdate.Close;
                       DataCadastros.SqlUpdate.sql.text :=SQLDEF('PRODUTOS',wSql1,'WHERE PRD_CODIGO = '''+sProdutoRegistro+'''','','');
                       DataCadastros.sqlUpdate.Execsql;
                       Executa_Transacao('C',iNumeroTransacaoAtual);

                     end;

                     {Inserir dados no arquivo ENF_IT01}
                     iRegistro := dbInicio.GetNextSequence('gen_enf_it01');
                     wSql1 := 'INSERT INTO ENF_IT01 ('+
                                    'ENF_registro,'+
                                    'ENF_IT_NOTANUMBER,'+
                                    'ENF_LOTE,'+
                                    'ENF_CFOP,'+
                                    'PRD_REFER,'+
                                    //Ordem de Compra
                                    'OCP_CODIGO,'+
                                    'ENF_QTDE_PEDIDO_COMPRA,'+
                                    'OCI_REGISTRO,'+
                                    'PRD_DESCRI,'+
                                    'ENF_ICMS,'+
                                    'ENF_QTDE,'+
                                    'ENF_UNIDADE_TRABALHO,'+
                                    'ENF_PRECO,'+
                                    'ENF_CUSTO,'+
                                    'ENF_IPIALIQ,'+
                                    'FOR_CODIGO,'+
                                    'AMX_CODIGO,'+
                                    'PRD_CODIGO,'+
                                    'USU_CODIGO,'+
                                    'REPETICAO_REFER,'+
                                    'ENF_ICMSALIQ,'+
                                    'ENF_VLSUBST,'+
                                    'ENF_IT_VLIPI,'+
                                    'ENF_IT_BASEIPI,'+
                                    'ENF_IT_DESCTO,'+
                                    'ENF_IT_BASEICMS,'+
                                    'ENF_IT_BASESUBTRIB,'+
                                    'ENF_IT_VALFRETE,'+
                                    'ENF_IT_VLSEGURO,'+
                                    'ENF_IT_VLDESP_ACES,'+
                                    'ENF_IT_VLSUBTRIB,'+
                                    'ENF_IT_ALIQSUBTRIB,'+
                                    'ENF_IT_ALIQPIS,'+
                                    'ENF_IT_VLPIS,'+
                                    'ENF_IT_ALIQCOFINS,'+
                                    'ENF_IT_VLCOFINS,'+
                                    'ENF_BASEPIS,'+
                                    'ENF_BASECOFINS,'+
                                    'STB_TRIBUTACAO,'+
                                    'CST_PIS,'+
                                    'CST_COFINS,'+
                                    'CST_IPI,'+
                                    'ENF_ATUALIZA_PRECO,'+
                                    'ENF_ATUALIZA_ESTOQUE,'+
                                    'EMP_CODIGO, ENF_UCOM, ENF_UTRIB, ENF_QTDE_ORIGINAL, ENF_PRECO_ORIGINAL, ENF_PTOTAL_ORIGINAL)';



                     wSql2 := 'VALUES ('''+IntToStr(iRegistro)+''','''+
                                       PreenchezeroEsquerda(FormNfEntrada.EdtNota.Text,10)+''','''+
                                       ''+''','''+
                                       DataMovimento.CdsEnfOPE_NATUREZA.AsString+''','''+
                                       CdsOrdemCompraItemPRD_REFER.AsString+''','''+
                                       CdsOrdemCompraItemOCP_CODIGO.AsString+''','''+
                                       ValorAmericano(CdsOrdemCompraItemQtdeBaixar.AsString)+''','''+
                                       CdsOrdemCompraItemOCI_REGISTRO.AsString+''','+
                                       QuotedStr(COPY(CdsOrdemCompraItemPRD_DESCRI.AsString,1,80))+','''+
                                       ValorAmericano(FloatToStr(0))+''','''+
                                       ValorAmericano(FloatToStr(rQuantidade))+''','''+
                                       ValorAmericano(CurrToStr(rQuantidade))+''','''+
                                       ValorAmericano(FloatToStr(rPrecoUnitario))+''','''+
                                       ValorAmericano(CurrToStr(rTmp_Custo))+''','''+
                                       ValorAmericano(FloatToStr(0))+''','''+
                                       sFornecedor+''','''+
                                       dbInicio.Empresa.wPmt_Amx_EntradaNota+''','''+
                                       sProdutoRegistro+''','''+
                                       dbInicio.Usuario.Codigo+''','''+
                                       IntToStr(1)+''','''+
                                       ValorAmericano(FloatToStr(0))+''','''+
                                       ValorAmericano(FloatToStr(0))+''','''+
                                       ValorAmericano(FloatToStr(0))+''','''+
                                       ValorAmericano(FloatToStr(0))+''','''+
                                       ValorAmericano(FloatToStr(0))+''','''+
                                       ValorAmericano(FloatToStr(0))+''','''+
                                       ValorAmericano(FloatToStr(0))+''','''+
                                       ValorAmericano(FloatToStr(0))+''','''+
                                       ValorAmericano(FloatToStr(0))+''','''+
                                       ValorAmericano(FloatToStr(0))+''','''+
                                       ValorAmericano(FloatToStr(0))+''','''+
                                       ValorAmericano(FloatToStr(0))+''','''+
                                       ValorAmericano(FloatToStr(0))+''','''+
                                       ValorAmericano(FloatToStr(0))+''','''+
                                       ValorAmericano(FloatToStr(0))+''','''+
                                       ValorAmericano(FloatToStr(0))+''','''+
                                       ValorAmericano(FloatToStr(0))+''','''+
                                       ValorAmericano(FloatToStr(0))+''','''+
                                       ''+''','''+
                                       ''+''','''+
                                       ''+''','''+
                                       ''+''','''+
                                       SqlCdsOPOPE_ATUALIZA_CUSTO.AsString+''','''+
                                       SqlCdsOPOPE_ESTOQUE.AsString+''','+
                                       QuotedStr(dbInicio.Empresa.EMP_CODIGO)+','+
                                       QuotedStr(CdsOrdemCompraItemPRD_UND.AsString) +','+//ENF_UCOM,
                                       QuotedStr(CdsOrdemCompraItemPRD_UND.AsString)+','+//ENF_UTRIB,
                                       QuotedStr(ValorAmericano(FloatToStr(rQuantidade)))+','+ // ENF_QTDE_ORIGINAL,
                                       QuotedStr(ValorAmericano(FloatToStr(rPrecoUnitario)))+','+  //ENF_PRECO_ORIGINAL,
                                       QuotedStr(ValorAmericano(FloatToStr(rQuantidade*rPrecoUnitario)))+ ')';//ENF_PTOTAL_ORIGINAL)

                     DataCadastros.sqlUpdate.Close;
                     DataCadastros.SqlUpdate.sql.text :=wSql1 + wSql2;
                     DataCadastros.sqlUpdate.Execsql;

                     DataCadastros.sqlUpdate1.Close;
                     DataCadastros.sqlUpdate1.sql.text:= 'UPDATE OCP_IT01 SET OCI_QTDER = OCI_QTDER + '+ValorAmericano(CdsOrdemCompraItemQtdeBaixar.AsString)+' WHERE OCI_REGISTRO = '+CdsOrdemCompraItemOCI_REGISTRO.AsString;
                     DataCadastros.sqlUpdate1.ExecSql;

                     AtualizaSituacaoOC;

                     //Verifica se atualiza estoque
                     if (SqlCdsOPOPE_ESTOQUE.AsString = 'S') then
                     begin
                           KardexLancamento(IntToStr(iRegistro),
                                            'ENF',
                                            StrZero(dbInicio.Empresa.wPmt_Amx_EntradaNota,FormNfEntrada.EdtAlmox.MaxLength),
                                            '',
                                            sProdutoRegistro,
                                            '',//grade
                                            '',
                                            'E',
                                            '',
                                            '',
                                            'ENTRADA DE ITEM NOTA FISCAL - VIA PEDIDO DE COMPRA',
                                            Now,
                                            rQuantidade,
                                            PreenchezeroEsquerda(FormNfEntrada.EdtNota.Text,10),
                                            StrZero(sFornecedor,FormNfEntrada.EdtFor_Codigo.MaxLength)+'-'+FormNfEntrada.PesqFornecedor.CDS.FieldByName('FOR_RAZAO').AsString,
                                            rPrecoUnitario);
                     end;
                     //pRÓXIMO
                     CdsOrdemCompraItem.Next;
               end;
               Close;

         end;
   end;
  end;
   CdsOrdemCompraItem.EnableControls;
end;

procedure TFormNfEntradaPedidoCompra.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
   CdsOrdemCompraItem.Close;
   SqlCdsOP.Close;
   inherited;
end;

procedure TFormNfEntradaPedidoCompra.FormCreate(Sender: tObject);
begin
  inherited;
  wCalcularPV := DBInicio.Empresa.wCalcularPV;
  SalvaStatusGrid := False;
end;

procedure TFormNfEntradaPedidoCompra.BuscaOperacaoCFOP(const pNat: String);
begin
   if (not SqlCdsOP.Locate('OPE_NATUREZA',pNat,[])) then
       begin
           uteis.erro  ('Não Localizado CFOP');
       end;
end;

procedure TFormNfEntradaPedidoCompra.CdsOrdemCompraItemCalcFields(
  DataSet: TDataSet);
begin
   if (CdsOrdemCompraItemOCI_REGISTRO.AsString = sRegistroAlteracao) then
      CdsOrdemCompraItemQtdeRecebida.AsCurrency := CdsOrdemCompraItemOCI_QTDER.AsCurrency -  CurQuantidadeOrdemCompra.Value
   else
      CdsOrdemCompraItemQtdeRecebida.AsCurrency := CdsOrdemCompraItemOCI_QTDER.AsCurrency;
   if ocp_codigo <> EmptyStr then
     CdsOrdemCompraItemQtdeBaixar.AsFloat := CdsOrdemCompraItemOCI_QTDES.AsFloat;
end;

procedure TFormNfEntradaPedidoCompra.CdsOrdemCompraItemNewRecord(DataSet: TDataSet);
begin
  inherited;
  CdsOrdemCompraItem.Cancel;
end;

procedure TFormNfEntradaPedidoCompra.CdsOrdemCompraItemokGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text := '';
end;

procedure TFormNfEntradaPedidoCompra.CdsOrdemCompraItemQtdeBaixarValidate(Sender: TField);
var preco, quantidade : boolean;
begin
  inherited;
  if NOT bVinculacaoUnica then
    exit;
  if CdsOrdemCompraItemQtdeBaixar.AsInteger = 0  then
    Exit;
  if ((CdsOrdemCompraItemQtdeBaixar.Value>0) AND (UpperCase(CdsOrdemCompraItemPRD_UND.AsString) <> UpperCase(CdsOrdemCompraItemenf_ucom.AsString)))
    and (CdsOrdemCompraItemDESCRICAO_OCP.AsString <> '') then
//  (CdsOrdemCompraItemQtdeBaixar.AsFloat <   (CdsOrdemCompraItemOCI_QTDES.AsFloat-CdsOrdemCompraItemQtdeRecebida.AsFloat)) then

  begin
    CdsOrdemCompraItemQtdeBaixar.Value :=0 ;
    raise Exception.Create( CdsOrdemCompraItemDESCRICAO_OCP.AsString );
//                           ' Para fazer a baixa no pedido de compra é preciso ajustar pedido de compra pela unidade que vem na nota');

  end
  else if (UpperCase(CdsOrdemCompraItemenf_ucom.AsString) = UpperCase( CdsOrdemCompraItemPRD_UND.AsString)) and (not CdsOrdemCompraItemRepostaPergunta.AsBoolean) then
  begin
    //Se coluna "Recebendo"  da nota > que qtde do Pedido
    quantidade:= CdsOrdemCompraItemQtdeBaixar.AsFloat >   (CdsOrdemCompraItemOCI_QTDES.AsFloat-CdsOrdemCompraItemQtdeRecebida.AsFloat) ;
    preco :=  ( CdsOrdemCompraItemENF_PRECO.AsFloat <> CdsOrdemCompraItemOCI_PRECO.AsFloat);
    if quantidade and preco then
    begin
      if (MessageDlg('Nota enviou Qtde maior e preço diferente que a solicitada no pedido de compra.'#13#10+'Aceita receber a quantidade maior e preço diferente da nota que o pedido ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
      begin
          ExecSql('update ocp_it01 '+
          ' set  OCI_NOTADIFERE = '+ QuotedStr('N')+
          ' where oci_registro = '+ IntToStr(CdsOrdemCompraItemOCI_REGISTRO.AsInteger));
          CdsOrdemCompraItemRepostaPergunta.AsBoolean := True;
      end
      else
      begin
         CdsOrdemCompraItemQtdeBaixar.AsInteger := 0;
         raise Exception.Create('Verifique com responsável de compra porque as diferenças');
      end;
    end
    else if  preco  then
    begin
      if (MessageDlg(CdsOrdemCompraItemDESCRICAO_OCP.AsString +'. Aceite receber item com preço diferente ?' , mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
      begin
          ExecSql('update ocp_it01 '+
          ' set  OCI_NOTADIFERE = '+ QuotedStr('N')+
          ' where oci_registro = '+ IntToStr(CdsOrdemCompraItemOCI_REGISTRO.AsInteger));
           CdsOrdemCompraItemRepostaPergunta.AsBoolean := True;
      end
      else
      begin
        CdsOrdemCompraItemQtdeBaixar.AsInteger := 0;
        raise Exception.Create('Verifique com responsável de compra porque da diferença');

      end;
    end
    else if quantidade then
    begin
      if (MessageDlg('Nota enviou Qtde maior que a solicitada no pedido de compra.'#13#10+'Aceita receber a quantidade maior da nota que o pedido ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
      begin
          ExecSql('update ocp_it01 '+
          ' set  OCI_NOTADIFERE = '+ QuotedStr('N')+
          ' where oci_registro = '+ IntToStr(CdsOrdemCompraItemOCI_REGISTRO.AsInteger));
          CdsOrdemCompraItemRepostaPergunta.AsBoolean := True;
      end
      else
      begin
        CdsOrdemCompraItemQtdeBaixar.AsInteger := 0;
        raise Exception.Create('Verifique com responsável de compra porque as diferenças');

      end;
    end

  end;
end;

procedure TFormNfEntradaPedidoCompra.dbgrdOrdensCellClick(Column: TColumn);
begin
  inherited;
  if Column.FieldName = 'OK' then
    ShowMessage(CdsOrdemCompraItemDESCRICAO_OCP.AsString);
  if Column.FieldName = 'exclusao' then
    CdsOrdemCompraItem.Delete;
end;

procedure TFormNfEntradaPedidoCompra.dbgrdOrdensDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  if (not CdsOrdemCompraItem.IsEmpty) then
  begin
    if (Column.FieldName =  'PRD_UND') or ( Column.FieldName =  'ENF_UCOM' ) then
    begin
       if UpperCase(CdsOrdemCompraItemPRD_UND.AsString) <> UpperCase(CdsOrdemCompraItemenf_ucom.AsString) then
       begin
         dbgrdOrdens.Canvas.Font.Color := clRed;
         dbgrdOrdens.DefaultDrawColumnCell  (Rect, DataCol, Column, State);
       end;
    end;
    if Column.FieldName = 'OK' then
    begin
       if NOT  (CdsOrdemCompraItemok.AsBoolean) then
       begin
         dbgrdOrdens.Canvas.FillRect(Rect);
         ilLista.Draw(dbgrdOrdens.Canvas,Rect.Left+03,Rect.Top+1,0);
       end
       else
       begin
         dbgrdOrdens.Canvas.FillRect(Rect);
         ilLista.Draw(dbgrdOrdens.Canvas,Rect.Left+03,Rect.Top+1,1);

       end;

    end;
    if Column.FieldName = 'exclusao' then
    begin
      dbgrdOrdens.Canvas.FillRect(Rect);
      ilLista.Draw(dbgrdOrdens.Canvas,Rect.Left+03,Rect.Top+1,3);

    end;
  end;

end;

procedure TFormNfEntradaPedidoCompra.AtualizaSituacaoOC;
var
   wSql1,wStatus:String;
   wQtdeR,wQtdeS : Double;
begin
    wSql1 := 'Select OCI_QTDER, OCI_QTDES from OCP_IT01 ';
    DataCadastros.sqlUpdate.Close;
    DataCadastros.SqlUpdate.sql.text :=SQLDEF('ORDENSCOMPRA',wSql1,'where OCI_REGISTRO = '''+CdsOrdemCompraItemOCI_REGISTRO.AsString+'''','OCP_CODIGO,PRD_REFER','');
    DataCadastros.sqlUpdate.Open;
    if (not DataCadastros.sqlUpdate.IsEmpty) then
      begin
         wQtdeR := DataCadastros.sqlUpdate.FieldByName('OCI_QTDER').AsFloat;   // RECEBIDA
         wQtdeS := DataCadastros.sqlUpdate.FieldByName('OCI_QTDES').AsFloat;   //SOLICITADA
      end;
    if (wQtdeR >= wQtdeS) then
       wStatus := 'C';   //Concluído
    if (wQtdeR < wQtdeS) then
       wStatus := 'F';   //Parcial
    if (wQtdeR = 0) then
       wStatus := 'P';
    {Atualiza Status do Item de Compra}
    wSql1 := 'Update OCP_IT01 Set OCI_SITUACAO = '''+wStatus+'''';
    DataCadastros.sqlUpdate.Close;
    DataCadastros.SqlUpdate.sql.text :=SQLDEF('ORDENSCOMPRA',wSql1,'where OCI_REGISTRO = '''+CdsOrdemCompraItemOCI_REGISTRO.AsString+''' ','','');
    DataCadastros.sqlUpdate.Execsql;

    try
      DataCadastros.sqlUpdate.Close;
      DataCadastros.SqlUpdate.sql.text :=SQLDEF('ORDENSCOMPRA','SELECT ocp_codigo,oci_situacao FROM ocp_it01 ','where OCP_CODIGO = '''+CdsOrdemCompraItemOCP_CODIGO.AsString+''' and (OCI_SITUACAO = ''F'' OR OCI_SITUACAO = ''P'')','','');
      DataCadastros.sqlUpdate.Open;
      if DataCadastros.sqlUpdate.IsEmpty then
         begin
             try
               {Se nao encontrar nada conforme condicao acima faz a atualizacao no pedido de compra coloca o status para Concluido}
               DataCadastros.sqlUpdate.Close;
               DataCadastros.SqlUpdate.sql.text :=SQLDEF('ORDENSCOMPRA','Update ocp0000 set ocp_status = ''C'' ','where OCP_CODIGO = '''+CdsOrdemCompraItemOCP_CODIGO.AsString+'''','','');
               DataCadastros.sqlUpdate.Execsql;
             except on E:EDataBaseError do
                 uteis.erro  (pchar('Erro ao atualizar o Pedido de Compras !'+e.message));
             end;
         end
      else
         begin
             try
               {Se nao encontrar nada conforme condicao acima faz a atualizacao no pedido de compra coloca o status para Pendente}
               DataCadastros.sqlUpdate.Close;
               DataCadastros.SqlUpdate.sql.text :=SQLDEF('ORDENSCOMPRA','Update ocp0000 set ocp_status = ''P''','where OCP_CODIGO = '''+CdsOrdemCompraItemOCP_CODIGO.AsString+'''','','');
               DataCadastros.sqlUpdate.Execsql;
             except on E:EDataBaseError do
                 uteis.erro  (pchar('Erro ao Atualizar o Pedido de Compras !'+e.message));
             end;
         end;
    except on E:EdataBaseError do
        uteis.erro  (pchar('Erro ao abrir a tabela OCP0000 !'+E.MESSAGE));
    end;
end;

end.
