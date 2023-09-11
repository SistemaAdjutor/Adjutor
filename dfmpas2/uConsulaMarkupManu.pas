unit uConsulaMarkupManu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask,  rxToolEdit,  rxCurrEdit, StdCtrls, Buttons, SqlExpr,SqlClientDataSet, Provider,
  DB, DBClient, DBLocal, DBLocalS, Data.DBXFirebird, SimpleDS;

type
  TFrmConsultaMarkupManu = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    edtPedido: TEdit;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    edtNotaFiscal: TEdit;
    Label3: TLabel;
    edtEmissaoPedido: TEdit;
    Label4: TLabel;
    CurCustoPedido: TCurrencyEdit;
    CurCustoNotaFiscal: TCurrencyEdit;
    Label5: TLabel;
    edtEmissaoNotaFiscal: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    edtCliente: TEdit;
    Label8: TLabel;
    edtNfe: TEdit;
    GroupBox3: TGroupBox;
    Label9: TLabel;
    CurNovoCusto: TCurrencyEdit;
    Bit_Gravar: TBitBtn;
    Bit_Cancelar: TBitBtn;
    GroupBox4: TGroupBox;
    Label10: TLabel;
    Label11: TLabel;
    edtProdutoReferencia: TEdit;
    CurProdutoCusto: TCurrencyEdit;
    Label12: TLabel;
    edtProdutoDescricao: TEdit;
    SQLCdsPedidos: TSQLClientDataSet;
    SQLCdsPedidosPED_CODIGO: TStringField;
    SQLCdsPedidosPED_COMIS1: TFMTBCdField;
    SqlCdsItem: TSQLClientDataSet;
    SqlCdsItemPED_CODIGO: TStringField;
    SqlCdsItemPRF_QTDE: TFMTBCdField;
    SqlCdsItemPRF_PRECO: TFMTBCdField;
    SqlCdsItemPRF_ITEMCOMIS: TFMTBCdField;
    SqlCdsItemPRD_REFER: TStringField;
    SqlCdsItemPRF_REGISTRO: TIntegerField;
    SqlCdsItemPRF_PRECO_BRUTO: TFMTBCdField;
    SqlCdsItemPRF_ACRESCIMO: TFMTBCdField;
    SQLCdsPedidosREP_CODIGO: TStringField;
    Label13: TLabel;
    Label14: TLabel;
    procedure Bit_CancelarClick(Sender: tObject);
    procedure Bit_GravarClick(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure FormCreate(Sender: tObject);
  private
         pComissaoEscala:boolean;
         pComissaoItem:boolean;
         function RetornaPercentualComissao(wCodITem, wCOdigoVendedor: String;wprecoliquido:Currency): Currency;
  public
    { Public declarations }
    sPedido, sProduto, sEmpresa : String;
    rMargemVenda:Double;
  end;

var
  FrmConsultaMarkupManu: TFrmConsultaMarkupManu;

implementation

uses
  Men0001, DataCad, RWFunc, DataMov2, uPedido, uteis, iniciodb;

{$R *.dfm}

procedure TFrmConsultaMarkupManu.Bit_CancelarClick(Sender: tObject);
begin
   Close;
end;

procedure TFrmConsultaMarkupManu.Bit_GravarClick(Sender: tObject);
var
   wTotal,wTotalcom,wMediaComissao,rComissaoBusca : Currency;
begin
   if (Trim(sPedido) = '')or(Trim(sProduto) = '')or(sEmpresa = '') then
         uteis.aviso('Não foi Passado as informações necessárias para realizar manutenção, informe a Novi Sistemas')
   else
   if (CurNovoCusto.Value > 0) then
   begin
         if (uteis.confirmacao ( ('Confirma a alteração do custo unitário do pedido e da Nota fiscal para :'+FormatFloat('###,###,###,##0.00',CurNovoCusto.Value)))=mrYes) then
         begin
               //Atualiza Pedido Custo
               DataCadastros.sqlUpdate.Close;
               DataCadastros.SqlUpdate.sql.text :='UPDATE PED_IT01 SET PRF_CUSTO = '+ValorAmericano(CurNovoCusto.Text)+' WHERE PED_CODIGO = '+QuotedStr(sPedido)+' and PRD_REFER = '+QuotedStr(sProduto)+ 'and EMP_CODIGO = '+QuotedStr(sEmpresa);
               DataCadastros.sqlUpdate.Execsql;
               if (edtNotaFiscal.Text <> '') then
               begin
                     //Atualiza Pedido Custo
                     DataCadastros.sqlUpdate.Close;
                     DataCadastros.SqlUpdate.sql.text :='UPDATE NF_IT01 SET NF_CUSTO = '+ValorAmericano(CurNovoCusto.Text)+' WHERE PED_CODIGO = '+QuotedStr(sPedido)+' and PRD_REFER = '+QuotedStr(sProduto)+ 'and EMP_CODIGO = '+QuotedStr(sEmpresa);
                     DataCadastros.sqlUpdate.Execsql;
               end;
               Close;
         end;
   end
   else
   begin
         uteis.aviso('Informe o Custo');
         CurNovoCusto.SetFocus;
   end;

end;

procedure TFrmConsultaMarkupManu.FormCreate(Sender: tObject);
begin
     pComissaoItem:=(dbInicio.GetParametroSistema('PMT_COMIS_PROD')='S');
     pComissaoEscala:=(dbInicio.GetParametroSistema('PMT_COMIS_ESCALA')='S');
end;

procedure TFrmConsultaMarkupManu.FormShow(Sender: tObject);
begin
   //Preenche informações para Colocar na tela
   edtPedido.Clear;
   edtEmissaoPedido.Clear;
   CurCustoPedido.Clear;
   edtCliente.Clear;

   edtNotaFiscal.Clear;
   edtNfe.Clear;
   edtEmissaoNotaFiscal.Clear;
   CurCustoNotaFiscal.Clear;

   edtProdutoReferencia.Clear;
   edtProdutoDescricao.Clear;
   CurProdutoCusto.Clear;

   CurNovoCusto.Clear;

   DataCadastros.sqlUpdate.Close;
   DataCadastros.SqlUpdate.sql.text :='SELECT '+
                                          '    T1.PED_CODIGO, '+
                                          '    T3.PED_DTENTRADA, '+
                                          '    T1.PRF_CUSTO, '+
                                          '    T2.CLI_RAZAO, '+
                                          '    T4.NF_NOTANUMBER, '+
                                          '    t4.NF_EMISSAO, '+
                                          '    T4.NF_NUM_NFE, '+
                                          '    T5.NF_CUSTO, '+
                                          '    t6.PRD_REFER, '+
                                          '    t6.PRD_DESCRI, '+
                                          '    t1.PRF_MARGEM_PRODUTO, '+
                                          '    t6.PRD_PCUSTO '+
                                          'FROM '+
                                          'PED_IT01 T1 '+
                                          'JOIN PED0000 T3 ON (T3.PED_CODIGO = T1.PED_CODIGO AND T3.EMP_CODIGO = T1.EMP_CODIGO) '+
                                          'JOIN PRD0000 T6 ON (T6.PRD_REFER = T1.PRD_REFER) '+
                                          'LEFT JOIN CLI0000 T2 ON (T2.CLI_CODIGO = T3.CLI_CODIGO) '+
                                          'LEFT JOIN NF_IT01 T5 ON (T5.PED_CODIGO = T1.PED_CODIGO AND T5.PRD_REFER = T1.PRD_REFER AND T5.EMP_CODIGO = T1.EMP_CODIGO) '+
                                          'LEFT JOIN NF0001 T4 ON (T4.PED_CODIGO = T3.PED_CODIGO AND T4.EMP_CODIGO = T1.EMP_CODIGO) '+
                                          'WHERE T1.PED_CODIGO = '+QuotedStr(sPedido)+' and T1.PRD_REFER = '+QuotedStr(sProduto)+' AND T1.EMP_CODIGO = '+QuotedStr(sEmpresa)+'';
   DataCadastros.sqlUpdate.Open;

   rMargemVenda := 0;

   if (not DataCadastros.sqlUpdate.IsEmpty) then
      begin
         edtPedido.Text             := DataCadastros.sqlUpdate.FieldByName('PED_CODIGO').AsString;
         edtEmissaoPedido.Text      := DataCadastros.sqlUpdate.FieldByName('PED_DTENTRADA').AsString;
         CurCustoPedido.Value       := DataCadastros.sqlUpdate.FieldByName('PRF_CUSTO').AsFloat;
         edtCliente.Text            := DataCadastros.sqlUpdate.FieldByName('CLI_RAZAO').AsString;

         edtNotaFiscal.Text         := DataCadastros.sqlUpdate.FieldByName('NF_NOTANUMBER').AsString;
         edtNfe.Text                := DataCadastros.sqlUpdate.FieldByName('NF_NUM_NFE').AsString;
         edtEmissaoNotaFiscal.Text  := DataCadastros.sqlUpdate.FieldByName('NF_EMISSAO').AsString;
         CurCustoNotaFiscal.Value   := DataCadastros.sqlUpdate.FieldByName('NF_CUSTO').AsFloat;

         edtProdutoReferencia.Text  := DataCadastros.sqlUpdate.FieldByName('PRD_REFER').AsString;
         edtProdutoDescricao.Text   := DataCadastros.sqlUpdate.FieldByName('PRD_DESCRI').AsString;
         CurProdutoCusto.Value      := DataCadastros.sqlUpdate.FieldByName('PRD_PCUSTO').AsFloat;

         rMargemVenda               := DataCadastros.sqlUpdate.FieldByName('PRF_MARGEM_PRODUTO').AsFloat;
      end;
   DataCadastros.sqlUpdate.Close;
   
end;

function TFrmConsultaMarkupManu.RetornaPercentualComissao(wCodITem, wCOdigoVendedor: String;
  wprecoliquido: Currency): Currency;
var
{tem esta função similar no form dos pedidos item antes de gravar cada item }

wSQL,wWhere:string;
i :Integer;
wPreco_venda, wAcrescimo, rComissao :Currency;
wTabelacomissao : array[1..6] of double;
    wTabelapreco    : array[1..6] of double;
begin
   rComissao := 0;
   { Funçao calcula o percentual de comissão somente na inclusão do item, na alteração no recalculará }
   if pComissaoItem then
      begin
         wSQL   := 'Select P1.PRD_COMISSAO,P2.PTI_COMISSAO,P3.PGR_COM_PERC,P3.PGR_COMISS from PRD0000 P1 left join PRD_TIPO P2 on (P2.PTI_CODIGO = P1.PTI_CODIGO) left join PRD_GRUPO P3 on(P3.PGR_CODIGO = P1.PGR_CODIGO)';
         wWhere := ' where P1.PRD_REFER = '''+wCodItem+'''';

              DataMovimento2.sqlaux.close;
              DataMovimento2.sqlaux.sql.text := SqlDef('PRODUTOS',wSQL,wWhere,'','P1.');
              DataMovimento2.sqlaux.Open;
              if DataMovimento2.sqlaux.IsEmpty = false then
                 begin
                     // se tem comissao no produto
                     if dataMovimento2.sqlaux.FieldByName('PRD_COMISSAO').AsCurrency > 0 then
                        begin
                            rComissao := dataMovimento2.sqlaux.FieldByName('PRD_COMISSAO').AsCurrency;
                        end
                     else
                        // se tem comissao no tipo
                        if dataMovimento2.sqlaux.FieldByName('PTI_COMISSAO').AsCurrency > 0 then
                          begin
                              rComissao := dataMovimento2.sqlaux.FieldByName('PTI_COMISSAO').AsCurrency;
                          end
                        else
                         // se tem comissao no grupo
                         if dataMovimento2.sqlaux.FieldByName('PGR_COM_PERC').AsCurrency > 0 then
                             begin
                                rComissao := dataMovimento2.sqlaux.FieldByName('PGR_COM_PERC').AsCurrency;
                             end
                         else
                            rComissao := 0;
                 end
              else
                 rComissao := 0;
       end
   else
      if pComissaoEscala then
         begin
           // senão tinha preço de venda no cadastro do produto o acrescimo foi o propio preço bruto
           if SqlCdsItemPRF_PRECO_BRUTO.AsCurrency = SqlCdsItemPRF_ACRESCIMO.AsCurrency then
              begin
              wAcrescimo := 0;  // força entrada na tabela de desconto
              end;
           // pega tabela de comissões por ACRESCIMO
           if (SqlCdsItemPRF_PRECO.AsCurrency) > (SqlCdsItemPRF_PRECO_BRUTO.AsCurrency - wAcrescimo) then
             // houve acrescimo no preço verificar se tem parametros para acrescimo
             begin
               wSQL   := 'select t1.PRD_REFER,t1.LIN_CODIGO,t2.MKP_CODIGO,t2.LIN_CODIGO,t2.MKP_COMIS1,t2.MKP_COMIS2,t2.MKP_COMIS3,t2.MKP_COMIS4,t2.MKP_COMIS5,t2.MKP_COMIS6,t2.MKP_PERC1,t2.MKP_PERC2,t2.MKP_PERC3,t2.MKP_PERC4,t2.MKP_PERC5,t2.MKP_PERC6,'+
                        't2.MKP_TIPOCALCULO,t2.MKP_AC_DC FROM PRD0000 t1 left join MKP0000 t2 ON  (t1.LIN_CODIGO = t2.LIN_CODIGO)';
               wWhere := ' where t2.MKP_AC_DC = ''A'' and T1.PRD_REFER = '''+wCodItem+'''';
             end;
           // pega tabela de comissões por DESCONTO
           if (SqlCdsItemPRF_PRECO.AsCurrency ) <= (SqlCdsItemPRF_PRECO_BRUTO.AsCurrency - wAcrescimo) then
             // houve desconto no preço, verificar os parametros para desconto
             begin
              wSQL   := 'select t1.PRD_REFER,t1.LIN_CODIGO,t2.MKP_CODIGO,t2.LIN_CODIGO,t2.MKP_COMIS1,t2.MKP_COMIS2,t2.MKP_COMIS3,t2.MKP_COMIS4,t2.MKP_COMIS5,t2.MKP_COMIS6,t2.MKP_PERC1,t2.MKP_PERC2,t2.MKP_PERC3,t2.MKP_PERC4,t2.MKP_PERC5,t2.MKP_PERC6,'+
                        't2.MKP_TIPOCALCULO,t2.MKP_AC_DC FROM PRD0000 t1 left join MKP0000 t2 ON  (t1.LIN_CODIGO = t2.LIN_CODIGO)or(t2.LIN_CODIGO = ''999'')';
              wWhere := ' where t2.MKP_AC_DC = ''D'' and T1.PRD_REFER = '''+wCodItem+'''';
             end;
           DataMovimento2.sqlaux.close;
           DataMovimento2.sqlaux.sql.text := SqlDef('PRODUTOS',wSQL,wWhere,'','T1.');
           DataMovimento2.sqlaux.Open;
           // construir todos os preços para calculo das comissões
           if DataMovimento2.sqlaux.IsEmpty = false then
             begin
              wTabelapreco[1]  := 0;
              wTabelapreco[2]  := 0;
              wTabelapreco[3]  := 0;
              wTabelapreco[4]  := 0;
              wTabelapreco[5]  := 0;
              wTabelapreco[6]  := 0;

              if (rMargemVenda > 0) then
                 wPreco_venda := CurNovoCusto.Value + ((rMargemVenda/100) * CurNovoCusto.Value)
              else
                 wPreco_venda := SqlCdsItemPRF_PRECO.AsCurrency;

              if dataMovimento2.sqlaux.FieldByName('MKP_AC_DC').AsString = 'A' then    //Acrescimo
                begin
                wTabelapreco[1]  := wPreco_venda+(wTabelapreco[1]*DataMovimento2.sqlaux.FieldByName('MKP_PERC1').AsCurrency/100);
                wTabelapreco[2]  := iif(DataMovimento2.sqlaux.FieldByName('MKP_PERC2').AsCurrency=0,0,wTabelapreco[1]+(wTabelapreco[1]*DataMovimento2.sqlaux.FieldByName('MKP_PERC2').AsCurrency/100));
                wTabelapreco[3]  := iif(DataMovimento2.sqlaux.FieldByName('MKP_PERC3').AsCurrency=0,0,wTabelapreco[1]+(wTabelapreco[1]*DataMovimento2.sqlaux.FieldByName('MKP_PERC3').AsCurrency/100));
                wTabelapreco[4]  := iif(DataMovimento2.sqlaux.FieldByName('MKP_PERC4').AsCurrency=0,0,wTabelapreco[1]+(wTabelapreco[1]*DataMovimento2.sqlaux.FieldByName('MKP_PERC4').AsCurrency/100));
                wTabelapreco[5]  := iif(DataMovimento2.sqlaux.FieldByName('MKP_PERC5').AsCurrency=0,0,wTabelapreco[1]+(wTabelapreco[1]*DataMovimento2.sqlaux.FieldByName('MKP_PERC5').AsCurrency/100));
                wTabelapreco[6]  := iif(DataMovimento2.sqlaux.FieldByName('MKP_PERC6').AsCurrency=0,0,wTabelapreco[1]+(wTabelapreco[1]*DataMovimento2.sqlaux.FieldByName('MKP_PERC6').AsCurrency/100));
                end
              else     // Desconto
                begin
                wTabelapreco[1]  := wPreco_venda+(wTabelapreco[1]*(DataMovimento2.sqlaux.FieldByName('MKP_PERC1').AsCurrency*-1)/100);
                wTabelapreco[2]  := iif(DataMovimento2.sqlaux.FieldByName('MKP_PERC2').AsCurrency=0,0,wTabelapreco[1]+(wTabelapreco[1]*(DataMovimento2.sqlaux.FieldByName('MKP_PERC2').AsCurrency*-1)/100));
                wTabelapreco[3]  := iif(DataMovimento2.sqlaux.FieldByName('MKP_PERC3').AsCurrency=0,0,wTabelapreco[1]+(wTabelapreco[1]*(DataMovimento2.sqlaux.FieldByName('MKP_PERC3').AsCurrency*-1)/100));
                wTabelapreco[4]  := iif(DataMovimento2.sqlaux.FieldByName('MKP_PERC4').AsCurrency=0,0,wTabelapreco[1]+(wTabelapreco[1]*(DataMovimento2.sqlaux.FieldByName('MKP_PERC4').AsCurrency*-1)/100));
                wTabelapreco[5]  := iif(DataMovimento2.sqlaux.FieldByName('MKP_PERC5').AsCurrency=0,0,wTabelapreco[1]+(wTabelapreco[1]*(DataMovimento2.sqlaux.FieldByName('MKP_PERC5').AsCurrency*-1)/100));
                wTabelapreco[6]  := iif(DataMovimento2.sqlaux.FieldByName('MKP_PERC6').AsCurrency=0,0,wTabelapreco[1]+(wTabelapreco[1]*(DataMovimento2.sqlaux.FieldByName('MKP_PERC6').AsCurrency*-1)/100));
                end;
             {carregar comissoes no array}
              wTabelacomissao[1]  := dataMovimento2.sqlaux.FieldByName('MKP_COMIS1').AsCurrency;
              wTabelacomissao[2]  := dataMovimento2.sqlaux.FieldByName('MKP_COMIS2').AsCurrency;
              wTabelacomissao[3]  := dataMovimento2.sqlaux.FieldByName('MKP_COMIS3').AsCurrency;
              wTabelacomissao[4]  := dataMovimento2.sqlaux.FieldByName('MKP_COMIS4').AsCurrency;
              wTabelacomissao[5]  := dataMovimento2.sqlaux.FieldByName('MKP_COMIS5').AsCurrency;
              wTabelacomissao[6]  := dataMovimento2.sqlaux.FieldByName('MKP_COMIS6').AsCurrency;

              //
              { CALCULAR COMISSAO PROPORCIONAL PELA TABELA ESCALONADA }
              for i := 1 to 6 do
                begin
                // Calculo para Acrescimeto progressivo nos preço
                if dataMovimento2.sqlaux.FieldByName('MKP_AC_DC').AsString = 'A' then
                  begin
                    // testar o primeiro - preço menor que o primeiro preço PVENDA
                    if SqlCdsItemPRF_PRECO.AsCurrency < wTabelapreco[1] then
                       rComissao :=  wTabelacomissao[1];
                    //  para preço exato
                    if SqlCdsItemPRF_PRECO.AsCurrency = wTabelapreco[i] then
                        rComissao :=  wTabelacomissao[i];
                    // pega ultima comissao valida se tem preco na tabela
                    if SqlCdsItemPRF_PRECO.AsCurrency > wTabelapreco[i] then
                        if wTabelapreco[i] > 0 then
                           rComissao :=  wTabelacomissao[i];

                    // se preço não é exato da tabela verificar entre qual tabela de preço o preço vendido se encontra
                    if (SqlCdsItemPRF_PRECO.AsCurrency > wTabelapreco[i]) and (SqlCdsItemPRF_PRECO.AsCurrency <= wTabelapreco[i+1]) then
                         // se opção de calculo é De até
                         if  dataMovimento2.sqlaux.FieldByName('MKP_TIPOCALCULO').AsString = 'D' then
                           rComissao := wTabelacomissao[i]
                         else
                           // se opçao de calculo é proporcional - fazer a regra de tres
                         rComissao :=  SqlCdsItemPRF_PRECO.AsCurrency * wTabelacomissao[i] / wTabelapreco[i];
                   end
                 else
                   // Calculo para Desconto progressivo nos preços (mesma rotina do aumento com os sinais > < invertidos)
                   begin
                    // se o preço já é maior que o primeira tabela então pegar maior comissao
                    if SqlCdsItemPRF_PRECO.AsCurrency > wTabelapreco[1] then
                      rComissao :=  wTabelacomissao[1];
                    //  para preço exato
                    if SqlCdsItemPRF_PRECO.AsCurrency = wTabelapreco[i] then
                         rComissao :=  wTabelacomissao[i];
                     // pega ultima comissao valida se tem preco na tabela
                    if SqlCdsItemPRF_PRECO.AsCurrency < wTabelapreco[i] then
                        if wTabelapreco[i] < 0 then
                           rComissao :=  wTabelacomissao[i];
                    // se preço não é exato da tabela verificar entre qual tabela de preço o preço vendido se encontra
                    if (SqlCdsItemPRF_PRECO.AsCurrency < wTabelapreco[i]) and (SqlCdsItemPRF_PRECO.AsCurrency >= wTabelapreco[i+1]) then
                         // se opção de calculo é De até
                         if  dataMovimento2.sqlaux.FieldByName('MKP_TIPOCALCULO').AsString = 'D' then
                           rComissao := wTabelacomissao[i]
                         else
                           // se opçao de calculo é proporcional - fazer a regra de tres
                         rComissao :=  SqlCdsItemPRF_PRECO.AsCurrency * wTabelacomissao[i] / wTabelapreco[i];


                   end;
                 end; //for


              end;
         end
      else
         begin
            rComissao := 0; //FrmPedido.rComissaoVendedor;
         end;
      if not ((pComissaoItem) or (pComissaoEscala)) then
      if (rComissao = 0)and(wCOdigoVendedor <> '') then
         begin

            dataCadastros.sqlUpdate.Close;
            DataCadastros.SqlUpdate.sql.text :=SqlDef('TABELAS','Select REP_COMISSAO FROM REP0000 ','WHERE REP_CODIGO = '+QuotedStr(wCOdigoVendedor),'EMP_CODIGO','');
            dataCadastros.sqlUpdate.Open;
            if (not dataCadastros.sqlUpdate.IsEmpty) then
               begin
                  rComissao := dataCadastros.sqlUpdate.FieldByName('REP_COMISSAO').AsFloat;
               end;
            dataCadastros.sqlUpdate.Close;
      end;
   Result := rComissao;
end;

end.
