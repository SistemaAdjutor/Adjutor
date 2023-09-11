unit Comimedia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask,  rxToolEdit, ComCtrls, Buttons,RwFunc,DB,
  Provider, SqlExpr,SqlClientDataSet, DBClient, DBLocal, DBLocalS, Grids, DBGrids, FMTBCd,
  Data.DBXFirebird, SimpleDS, JvExMask, JvToolEdit;

 // Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
//  Dialogs, StdCtrls, Mask,  rxToolEdit, Buttons, ComCtrls, SqlExpr,SqlClientDataSet, Provider,
//  DB, DBClient, DBLocal, DBLocalS;

type
  TFormRecalculaComisPed = class(TForm)
    Grp01: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    PrBar: TProgressBar;
    BitConfirmar: TBitBtn;
    BitCancelar: TBitBtn;
    Memo1: TMemo;
    SqlCdsItem: TSQLClientDataSet;
    DsComissaoProd: TDataSource;
    DsItemPedidos: TDataSource;
    SqlCdsItemPED_CODIGO: TStringField;
    SqlCdsItemPRF_QTDE: TFMTBCdField;
    SqlCdsItemPRF_PRECO: TFMTBCdField;
    SqlCdsItemPRF_ITEMCOMIS: TFMTBCdField;
    SQLCdsPedidos: TSQLClientDataSet;
    DsPedidos: TDataSource;
    SQLCdsPedidosPED_CODIGO: TStringField;
    SQLCdsPedidosPED_COMIS1: TFMTBCdField;
    SqlCdsItemPRD_REFER: TStringField;
    SqlCdsItemPRF_REGISTRO: TIntegerField;
    SqlCdsItemPRF_PRECO_BRUTO: TFMTBCdField;
    SqlCdsItemPRF_ACRESCIMO: TFMTBCdField;
    EditDataI: TJvDateEdit;
    EditDataF: TJvDateEdit;
    procedure BitConfirmarClick(Sender: tObject);
    procedure EditDataIExit(Sender: tObject);
    procedure EditDataFExit(Sender: tObject);
    procedure BitCancelarClick(Sender: tObject);
    procedure FormCreate(Sender: tObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
         pComissaoItem:boolean;
         pComissaoEscala: Boolean;
    wTabelacomissao : array[1..6] of double;
    wTabelapreco    : array[1..6] of double;
    //function RetornaPercentualComissao(wCodITem: String;preco:Currency): Currency;
    function RetornaPercentualComissao(wCodITem: String;wprecoliquido:Currency): Currency;
  public
    { Public declarations }
  end;

var
  FormRecalculaComisPed: TFormRecalculaComisPed;

implementation

uses Uteis, DataMov, Men0001, DataCad, DataMov2, uPedido, InicioDb;

{$R *.dfm}






procedure TFormRecalculaComisPed.BitConfirmarClick(Sender: tObject);
var
wTotal,wTotalcom,wMediaComissao,rComissaoBusca : Currency;
begin
  // Gravar a comissao média total dos pedidos pelo comissao de cada produto
  PrBar.Max      := 0;
  PrBar.Position := 0;

  SQLCdsPedidos.Close;
  SQLCdsPedidos.CommandText := SQLDEF('PEDIDOS','SELECT * FROM PED0000 T1','WHERE T1.PED_DTENTRADA BETWEEN '''+DataAmericana(EditDataI.Text)+''' AND '''+DataAmericana(EditDataF.Text)+'''','T1.PED_CODIGO','');
  SQLCdsPedidos.Open;

  //PrBar.Max := DataMovimento.CdsPedidos.RecordCount;
  PrBar.Max := SQLCdsPedidos.RecordCount;
  wMediaComissao := 0;
  SQLCdsPedidos.First;
  while not SQLCdsPedidos.Eof do
    begin
      wTotalcom := 0;
      wTotal    := 0;
      wMediaComissao := 0;
      // buscar os itens do pedido
      SqlCdsItem.close;
      SqlCdsItem.CommandText := SQLDEF('PEDIDOS','SELECT T1.PRF_REGISTRO, T1.PED_CODIGO,T1.PRD_REFER,T1.PRF_QTDE,T1.PRF_PRECO,T1.PRF_PRECO_BRUTO,T1.PRF_ACRESCIMO,T1.PRF_ITEMCOMIS FROM PED_IT01 T1','WHERE T1.PED_CODIGO = '''+SQLCdsPedidosPED_CODIGO.AsString+'''','','');
      SqlCdsItem.Open;
      SqlCdsItem.First;
      while not SqlCdsItem.eof do
        begin
        wTotal := wTotal + (SqlCdsItemPRF_QTDE.AsCurrency* SqlCdsItemPRF_PRECO.AsCurrency);
        // quando é pago a comissao pelo item do pedido
        if (pComissaoItem) OR (pComissaoEscala) or (DBInicio.Empresa.wPMT_PAGAR_COMISSAO_VERBA) then

          { and ((SqlCdsItemPRF_ITEMCOMIS.AsCurrency = 0) OR (SQLCdsPedidosPED_COMIS1.AsCurrency = 0)) then }
          begin
            {desativei em 05/11/13 o recalculo de comissões por inconsistencia na função RetornaPercentualComissao
            //rComissaoBusca := RetornaPercentualComissao(SqlCdsItemPRD_REFER.AsString,SqlCdsItemPRF_PRECO.AsCurrency);

            DataCadastros.sqlUpdate.close;
            DataCadastros.SqlUpdate.sql.text :='UPDATE PED_IT01 SET PRF_ITEMCOMIS = '''+ValorAmericano(CurrToStr(rComissaoBusca))+''' WHERE PRF_REGISTRO = '+SqlCdsItemPRF_REGISTRO.AsString+'';
            DataCadastros.sqlUpdate.Execsql; }

            //wTotalcom := wTotalcom + (SqlCdsItemPRF_QTDE.AsCurrency* SqlCdsItemPRF_PRECO.AsCurrency) * (rComissaoBusca/100);
            wTotalcom := wTotalcom + (SqlCdsItemPRF_QTDE.AsCurrency* SqlCdsItemPRF_PRECO.AsCurrency) * (SqlCdsItemPRF_ITEMCOMIS.AsCurrency/100);

          end
         else
           // quando é pago a comissao pelo pedido (cabeçalho do pedido)
           wTotalcom := wTotalcom + (SqlCdsItemPRF_QTDE.AsCurrency* SqlCdsItemPRF_PRECO.AsCurrency) * (SQLCdsPedidosPED_COMIS1.AsCurrency/100);

        SqlCdsItem.Next;
        end;

      if (wTotalcom > 0)and(wTotal > 0) then
         wMediaComissao := (wTotalcom / wTotal)*100;

      DataCadastros.sqlUpdate.close;
      DataCadastros.SqlUpdate.sql.text :='UPDATE PED0000 SET PED_COMIS1 = '''+ValorAmericano(CurrToStr(wMediaComissao))+''' WHERE PED_CODIGO = '''+SQLCdsPedidosPED_CODIGO.AsString+'''';
      DataCadastros.sqlUpdate.Execsql;

      DataCadastros.sqlUpdate.close;
      DataCadastros.SqlUpdate.sql.text :='UPDATE FAT0000 T1 SET T1.FAT_COMIS1 = '''+ValorAmericano(CurrToStr(wMediaComissao))+''' WHERE T1.PED_CODIGO = '''+SQLCdsPedidosPED_CODIGO.AsString+'''';
      DataCadastros.sqlUpdate.Execsql;


      SQLCdsPedidos.Next;
      PrBar.Position := (PrBar.Position + 1);
    end;
  

  uteis.aviso('Sincronização das comissões executadas com sucesso!');

end;

procedure TFormRecalculaComisPed.EditDataIExit(Sender: tObject);
begin
if not TestaDataStr(EditDataI.Text) then
          EditDataI.setfocus;
end;

procedure TFormRecalculaComisPed.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     Action := CaFree;
end;

procedure TFormRecalculaComisPed.FormCreate(Sender: tObject);
begin
     pComissaoItem:=(dbInicio.GetParametroSistema('PMT_COMIS_PROD')='S');
     pComissaoEscala:=(dbInicio.GetParametroSistema('PMT_COMIS_ESCALA')='S');
end;

procedure TFormRecalculaComisPed.FormDestroy(Sender: TObject);
begin
     FormRecalculaComisPed := Nil;
end;

procedure TFormRecalculaComisPed.FormResize(Sender: TObject);
begin
     Height := 304;
     Width := 442;
end;

procedure TFormRecalculaComisPed.EditDataFExit(Sender: tObject);
begin
if not TestaDataStr(EditDataF.Text) then
       EditDataF.setfocus;
end;

procedure TFormRecalculaComisPed.BitCancelarClick(Sender: tObject);
begin
Close;
end;


function TFormRecalculaComisPed.RetornaPercentualComissao(
  wCodITem: String;wprecoliquido:Currency): Currency;
var
{tem esta função similar no form dos pedidos item antes de gravar cada item
 unica diferença é que aqui pego o campo preço da tabela lá pego dos objetos da tela
 }

wSQL,wWhere:string;
i :Integer;
wPreco_venda, wAcrescimo,wProxpreco :Currency;
begin
   Result := 0;
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
                            Result := dataMovimento2.sqlaux.FieldByName('PRD_COMISSAO').AsCurrency;
                        end
                     else
                        // se tem comissao no tipo
                        if dataMovimento2.sqlaux.FieldByName('PTI_COMISSAO').AsCurrency > 0 then
                          begin
                              Result := dataMovimento2.sqlaux.FieldByName('PTI_COMISSAO').AsCurrency;
                          end
                        else
                         // se tem comissao no grupo
                         if dataMovimento2.sqlaux.FieldByName('PGR_COM_PERC').AsCurrency > 0 then
                             begin
                                Result := dataMovimento2.sqlaux.FieldByName('PGR_COM_PERC').AsCurrency;
                             end
                         else
                            Result := FrmPedido.rComissaoVendedor;
                 end
              else
                 Result := 0;
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
               wSQL   := 'select first 1 t1.PRD_REFER,t1.LIN_CODIGO,t2.MKP_CODIGO,t2.LIN_CODIGO,t2.MKP_COMIS1,t2.MKP_COMIS2,t2.MKP_COMIS3,t2.MKP_COMIS4,t2.MKP_COMIS5,t2.MKP_COMIS6,t2.MKP_PERC1,t2.MKP_PERC2,t2.MKP_PERC3,t2.MKP_PERC4,t2.MKP_PERC5,t2.MKP_PERC6,'+
                        't2.MKP_TIPOCALCULO,t2.MKP_AC_DC FROM PRD0000 t1 left join MKP0000 t2 ON ((t2.LIN_CODIGO = t1.lin_codigo)or(t2.LIN_CODIGO = ''999''))';
               wWhere := ' where t2.MKP_AC_DC = ''A'' and T1.PRD_REFER = '''+wCodItem+'''';
             end;
           // pega tabela de comissões por DESCONTO
           if (SqlCdsItemPRF_PRECO.AsCurrency ) <= (SqlCdsItemPRF_PRECO_BRUTO.AsCurrency - wAcrescimo) then
             // houve desconto no preço, verificar os parametros para desconto
             begin
              wSQL   := 'select first 1 t1.PRD_REFER,t1.LIN_CODIGO,t2.MKP_CODIGO,t2.LIN_CODIGO,t2.MKP_COMIS1,t2.MKP_COMIS2,t2.MKP_COMIS3,t2.MKP_COMIS4,t2.MKP_COMIS5,t2.MKP_COMIS6,t2.MKP_PERC1,t2.MKP_PERC2,t2.MKP_PERC3,t2.MKP_PERC4,t2.MKP_PERC5,t2.MKP_PERC6,'+
                        't2.MKP_TIPOCALCULO,t2.MKP_AC_DC FROM PRD0000 t1 left join MKP0000 t2 ON ((t2.LIN_CODIGO = t1.lin_codigo)or(t2.LIN_CODIGO = ''999''))';
              wWhere := ' where t2.MKP_AC_DC = ''D'' and T1.PRD_REFER = '''+wCodItem+'''';
             end;
           DataMovimento2.sqlaux.close;
           DataMovimento2.sqlaux.sql.text := SqlDef('PRODUTOS',wSQL,wWhere,'t2.LIN_CODIGO','T1.');
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
              if SqlCdsItemPRF_PRECO_BRUTO.AsCurrency = 0 then
                  wPreco_venda := SqlCdsItemPRF_PRECO.AsCurrency      //liquido
              else
                 wPreco_venda := SqlCdsItemPRF_PRECO_BRUTO.AsCurrency;

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
                       Result :=  wTabelacomissao[1];
                    //  para preço exato
                    if SqlCdsItemPRF_PRECO.AsCurrency = wTabelapreco[i] then
                        Result :=  wTabelacomissao[i];
                    // pega ultima comissao valida se tem preco na tabela
                    if SqlCdsItemPRF_PRECO.AsCurrency > wTabelapreco[i] then
                        if wTabelapreco[i] > 0 then
                           Result :=  wTabelacomissao[i];

                    // se preço não é exato da tabela verificar entre qual tabela de preço o preço vendido se encontra
                    if (SqlCdsItemPRF_PRECO.AsCurrency > wTabelapreco[i]) and (SqlCdsItemPRF_PRECO.AsCurrency <= wTabelapreco[i+1]) then
                         // se opção de calculo é De até
                         if  dataMovimento2.sqlaux.FieldByName('MKP_TIPOCALCULO').AsString = 'D' then
                           Result := wTabelacomissao[i]
                         else
                           // calculo "Proporcional"
                           begin
                            if wTabelapreco[i+1] > 0 then // proximo preço
                              begin
                              // calcula o valor total de acrescimo com relação ao proximo preço
                              wProxpreco := wTabelapreco[i+1] - wTabelapreco[i];
                              // valor do acrescimo no item
                              wAcrescimo := SqlCdsItemPRF_PRECO.AsCurrency - wTabelapreco[i];
                              // percentual de comissão + o proporcional
                              Result :=  wTabelacomissao[i] + (wacrescimo / wproxpreco);
                              end
                            else
                              Result :=  SqlCdsItemPRF_PRECO.AsCurrency * wTabelacomissao[i] / wTabelapreco[i]
                           end;
                   end
                 else
                   // Calculo para Desconto progressivo nos preços (mesma rotina do "Acrescimo" com os sinais > < invertidos)
                   begin
                    // se o preço já é maior que o primeira tabela então pegar maior comissao
                    if SqlCdsItemPRF_PRECO.AsCurrency > wTabelapreco[1] then
                      Result :=  wTabelacomissao[1];
                    //  para preço exato
                    if SqlCdsItemPRF_PRECO.AsCurrency = wTabelapreco[i] then
                         Result :=  wTabelacomissao[i];
                     // pega ultima comissao valida se tem preco na tabela
                    if SqlCdsItemPRF_PRECO.AsCurrency < wTabelapreco[i] then
                        if wTabelapreco[i] < 0 then
                           Result :=  wTabelacomissao[i];
                    // se preço não é exato da tabela verificar entre qual tabela de preço o preço vendido se encontra
                    if (SqlCdsItemPRF_PRECO.AsCurrency < wTabelapreco[i]) and (SqlCdsItemPRF_PRECO.AsCurrency >= wTabelapreco[i+1]) then
                         // se opção de calculo é "De até"
                         if  dataMovimento2.sqlaux.FieldByName('MKP_TIPOCALCULO').AsString = 'D' then
                           Result := wTabelacomissao[i]
                         else
                            // calculo "Proporcional"
                            // se valor menor que o menor valor (vale p ultimo preço da tabela)
                            if ((SqlCdsItemPRF_PRECO.AsCurrency+0.01)  < wTabelapreco[i]) and (i = 6) then
                               Result := 0
                            else
                               Result :=  wTabelacomissao[i] - (1 - SqlCdsItemPRF_PRECO.AsCurrency / wTabelapreco[i]);

                   end;
                 end; //for


              end;
         end
      else
         begin
            Result := 0;    //FrmPedido.rComissaoVendedor;
         end;
end;




end.
