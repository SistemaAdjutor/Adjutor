unit uFinanceiroDao;

interface
var
  coParticipacao:boolean;

function IncrementaRegistroTabela(const Tabela: String;const Chave_Registro: String):String;
procedure Atualizar_liberacao(const sit: string; const valor: Double; const registro : integer);
procedure Historico_Controle (const Descr : string; const PAG_REGISTRO, PAG_CODIGO, PPC_NUMER: string);

function ContasReceberBaixa(const sFaturaRegistro,
                            sContaBancoRegistro,
                            sFormaPgtoRegistro,
                            sUsuarioCodido
                            :String;
                            rPendente,
                            rBaixar,
                            rDesconto,
                            rJuros,
                            rMulta,
                            rRecebido
                            :Currency;
                            dDataRecebimento:TDateTime):Boolean;

function ContasReceberEstornaBaixa(const sFRE_REGISTRO:String):Boolean;


function ContasPagarBaixa(const sFaturaRegistro,
                            sContaBancoRegistro,
                            sFormaPgtoRegistro,
                            sUsuarioCodido,
                            sObs
                            :String;
                            rPendente,
                            rBaixar,
                            rDesconto,
                            rJuros,
                            rMulta,
                            rRecebido
                            :Currency;
                            dDataRecebimento:TDateTime):Boolean;

function ContasPagarEstornaBaixa(const sFRE_REGISTRO:String):Boolean;


function ContasPagarCabecalho(sFaturaCodigo,
                              sTipoVenda,
                              sDocumento,
                              sCodigoFornecedor,
                              sTipo,
                              sCodigoCentroCusto,
                              sSerie,
                              sObservacao,
                              sFavorecido,
                              sOperacao
                              :String;
                              dDataEmissao
                              :TDateTime;
                              bPrevisao,
                              bLivro
                              :Boolean;
                              rValorNota,
                              rBaseIcms,
                              rAliquotaIcms,
                              rBaseIPI,
                              rValorIPI,
                              rValorRetido,
                              rIRPJRetido,
                              rPISRetido,
                              rCofinsRetido,
                              rInssRetido,
                              rContribSocialRetido,
                              rBaseISS,
                              rBaseINSS,
                              rPercentualIRPJ,
                              rPercentualPIS,
                              rPercentualCOFINS,
                              rPercentualINSS,
                              rPercentualContribuicaoSocial,
                              rISSRetido,
                              rISSPercentual
                              :Currency
                              ):Integer;

function ContasPagarParcela(const sFaturaCodigo,
                            sParcela,
                            sCodigoBanco,
                            sCedente,
                            sCentroCusto,
                            sSituacaoPgto,
                            sStatus,
                            sCodigoFornecedor,
                            sDocumento,
                            sObservacao
                            :String;
                            dDataEmissao,
                            dDataVencimento
                            :TDateTime;
                            iNumeroParcelas
                            :Integer;
                            rParcela
                            :Currency;
                            bPrevisao
                            :Boolean
                            ):Integer;

function ContasTranferencia(sContaBancoOrigem,
                            sContaBancoDestino,
                            sDocumento,
                            sObservacao
                            :String;
                            dData
                            :TDateTime;
                            rValor:
                            Currency
                           ):Boolean;

procedure LimpaRateioCentroCusto(const sRegistro,
                                 sTipo:String);

procedure LancaRateioCentroCustoBasePlano(sRegistro,
                                          sTipo,
                                          sContaFinanceira,
                                          sPerfilRateio:String);

function VerificaSePendenciaRateioManual(const sRegistro,
                                         sTipo,
                                         sContaFinanceira:String):Boolean;

function RetornoIndiceRateioCentroCusto(const sContaFinanceira,
                                        sCentroCusto:String):Double;

function VerificaSeRateioPorColaborador(const sRegistro,
                                         sTipo,
                                         sContaFinanceira:String):Boolean;


implementation

uses
  DataCad, RWFunc, Men0001, UTEIS, DB, SysUtils,SqlExpr, DBClient, iniciodb;


function VerificaSeRateioPorColaborador(const sRegistro,
                                         sTipo,
                                         sContaFinanceira:String):Boolean;
var
   sQuery:string;
begin
   Result := False;

   dataCadastros.sqlUpdate.Close;
   sQuery := 'select * from CCT_0000 t1 where t1.CCT_CODIGO = '+QuotedStr(sContaFinanceira)+' and t1.CCT_PERFIL_RATEIO = ''C''';
   DataCadastros.SqlUpdate.sql.text :=sQuery;
   dataCadastros.sqlUpdate.Open;

   if (not dataCadastros.sqlUpdate.IsEmpty) then
      begin
         Result := True;
      end;
   dataCadastros.sqlUpdate.Close;
end;



function VerificaSePendenciaRateioManual(const sRegistro,
                                         sTipo,
                                         sContaFinanceira:String):Boolean;
var
   sQuery:string;
begin
   Result := False;

   dataCadastros.sqlUpdate.Close;
   sQuery := 'select * from CCT_0000 t1 where t1.CCT_CODIGO = '+QuotedStr(sContaFinanceira)+' and t1.CCT_PERFIL_RATEIO = ''M''';
   DataCadastros.SqlUpdate.sql.text :=sQuery;
   dataCadastros.sqlUpdate.Open;

   if (not dataCadastros.sqlUpdate.IsEmpty) then
      begin
         Result := True;
         dataCadastros.sqlUpdate.Close;
         sQuery := 'select * from FIN_RATEIO t1 where t1.FIR_REGISTRO_CP_CR = '+QuotedStr(sRegistro)+' and t1.FIR_REGISTRO_TIPO = '+QuotedStr(sTipo);
         DataCadastros.SqlUpdate.sql.text :=sQuery;
         dataCadastros.sqlUpdate.Open;

         if (not dataCadastros.sqlUpdate.IsEmpty) then
            begin
               Result := False;
            end;

      end;
   dataCadastros.sqlUpdate.Close;
end;


function ContasReceberBaixa(const sFaturaRegistro,
                            sContaBancoRegistro,
                            sFormaPgtoRegistro,
                            sUsuarioCodido
                            :String;
                            rPendente,
                            rBaixar,
                            rDesconto,
                            rJuros,
                            rMulta,
                            rRecebido
                            :Currency;
                            dDataRecebimento:TDateTime):Boolean;
var
   sQuery:WideString;
begin
   //Lança Pagamento
   dataCadastros.sqlUpdate.Close;
   sQuery := 'INSERT INTO FAT_RECEBIMENTO '+
                   '('+
                   'EMP_CODIGO,'+
                   'FAT_REGISTRO,'+
                   'FRE_DATA_RECEBIMENTO,'+
                   'FRE_VALOR,'+
                   'FRE_DESCONTO,'+
                   'FRE_JUROS,'+
                   'FRE_MULTA,'+
                   'FRE_RECEBIDO,'+
                   'BAN_CODIGO,'+
                   'FPG_REGISTRO,'+
                   'USU_CODIGO'+
                   ')'+
                   'VALUES'+
                   '('+
                   QuotedStr(dbInicio.Empresa.EMP_CODIGO)+','+
                   QuotedStr(sFaturaRegistro)+','+
                   QuotedStr(DataAmericana(DateToStr(dDataRecebimento)))+','+
                   QuotedStr(ValorAmericano(FloatToStr(rBaixar)))+','+
                   QuotedStr(ValorAmericano(FloatToStr(rDesconto)))+','+
                   QuotedStr(ValorAmericano(FloatToStr(rJuros)))+','+
                   QuotedStr(ValorAmericano(FloatToStr(rMulta)))+','+
                   QuotedStr(ValorAmericano(FloatToStr(rRecebido)))+','+
                   QuotedStr(sContaBancoRegistro)+','+
                   QuotedStr(sFormaPgtoRegistro)+','+
                   QuotedStr(sUsuarioCodido)+
                   ')';
   dataCadastros.sqlUpdate.Close;
   DataCadastros.SqlUpdate.sql.text :=sQuery;
   dataCadastros.sqlUpdate.Execsql;
   dataCadastros.sqlUpdate.Close;
   //Atualiza Duplicata Parcela
   dataCadastros.sqlUpdate.Close;
   sQuery := 'UPDATE FAT_PC01 SET FPC_PAGTO = '+QuotedStr(DataAmericana(DateToStr(dDataRecebimento)))+', '+
             'FPC_DESCTO = FPC_DESCTO + '+ValorAmericano(FloatToStr(rDesconto))+','+
             'FPC_PREVISAO = ''N'','+
             iif(DBInicio.Empresa.PMT_NAO_ATUALIZAR_BANCO,'', 'BAN_CODIGO  =  '+ QuotedStr(sContaBancoRegistro)+  ', ') +
             'FPG_REGISTRO = '+ QuotedStr(sFormaPgtoRegistro) +  ', '+
             'FPC_JUROS = FPC_JUROS + '+ValorAmericano(FloatToStr(rJuros))+','+
             'FPC_MULTA = FPC_MULTA + '+ValorAmericano(FloatToStr(rMulta))+','+
             'FPC_VLPAGO = FPC_VLPAGO + '+ValorAmericano(FloatToStr(rRecebido))+''+
             iif((rPendente = rBaixar),', FPC_SITPAG = ''L'' , FPC_STATUS = ''Liquidada''','') +
             ' WHERE FAT_REGISTRO = '+ sFaturaRegistro;

   dataCadastros.sqlUpdate.Close;
   DataCadastros.SqlUpdate.sql.text :=sQuery;
   dataCadastros.sqlUpdate.Execsql;
   dataCadastros.sqlUpdate.Close;

   Result := True;                                                  
end;


function ContasReceberEstornaBaixa(const sFRE_REGISTRO:String):Boolean;
var

   rDesconto,
   rJuros,
   rMulta,
   rPago:Currency;
   sFatRegistro,sDataPgtoUpdate:String;
   sQuery:WideString;
begin
   //Seleciona Recebeimneto e Informações para estorno
   dataCadastros.sqlUpdate.Close;
   sQuery := 'SELECT * FROM FAT_RECEBIMENTO'+
             ' WHERE FRE_REGISTRO = '+ sFRE_REGISTRO;
   DataCadastros.SqlUpdate.sql.text :=sQuery;
   dataCadastros.sqlUpdate.Open;

   if (dataCadastros.sqlUpdate.FieldByName('FRE_CONCILIADO').AsString = 'S') then
      raise Exception.Create('Atenção,  Lançamento pode ser excluído. Ja está conciliado!');


   //Seleciona Recebeimneto e Informações para estorno

   sQuery := 'SELECT FIRST 1 FRE_DATA_RECEBIMENTO FROM FAT_RECEBIMENTO'+
             ' WHERE FRE_REGISTRO <> '+ sFRE_REGISTRO+' AND FAT_REGISTRO = '+dataCadastros.sqlUpdate.FieldByName('FAT_REGISTRO').AsString+' ORDER BY FRE_DATA_RECEBIMENTO DESC ';
   dataCadastros.sqlUpdate.Close;
   DataCadastros.SqlUpdate.sql.text :=sQuery;
   dataCadastros.sqlUpdate.Open;     
   if (not dataCadastros.sqlUpdate.IsEmpty) then
      sDataPgtoUpdate := QuotedStr(DataAmericana(dataCadastros.sqlUpdate.FieldByName('FRE_DATA_RECEBIMENTO').AsString))
   else
      sDataPgtoUpdate := 'Null';

   //Seleciona Recebeimneto e Informações para estorno
   dataCadastros.sqlUpdate.Close;
   sQuery := 'SELECT * FROM FAT_RECEBIMENTO'+
             ' WHERE FRE_REGISTRO = '+ sFRE_REGISTRO;
   DataCadastros.SqlUpdate.sql.text :=sQuery;
   dataCadastros.sqlUpdate.Open;
   //Guarda Informações
   if (not dataCadastros.sqlUpdate.IsEmpty) then
      begin
         rDesconto := dataCadastros.sqlUpdate.FieldByName('FRE_DESCONTO').AsCurrency;
         rJuros := dataCadastros.sqlUpdate.FieldByName('FRE_JUROS').AsCurrency;
         rMulta := dataCadastros.sqlUpdate.FieldByName('FRE_MULTA').AsCurrency;
         rPago := dataCadastros.sqlUpdate.FieldByName('FRE_VALOR').AsCurrency;
         sFatRegistro :=  dataCadastros.sqlUpdate.FieldByName('FAT_REGISTRO').AsString;
         dataCadastros.sqlUpdate.Close;
         sQuery := 'UPDATE FAT_PC01 SET FPC_PAGTO = ' + sDataPgtoUpdate + ', ' +
                   'FPC_DESCTO = FPC_DESCTO - ' + ValorAmericano(FloatToStr(rDesconto))+','+
                   'FPC_JUROS = 0, ' +
                   'FPC_MULTA = FPC_MULTA - ' + ValorAmericano(FloatToStr(rMulta))+','+
                   iif
                   (   DBInicio.Empresa.wPmt_TelaPedidoDoacao ,
                     'FPC_VLPAGO = FPC_VLPAGO - ' + ValorAmericano(FloatToStr(rPago))+',' ,
                     'FPC_VLPAGO = FPC_VLPAGO - '+ValorAmericano(FloatToStr(rPago+rJuros+rMulta-rDesconto))+','
                   )+
                   'FPC_SITPAG = ''P'' , FPC_STATUS = ''Pendente'''+
                   ' WHERE FAT_REGISTRO = '+ sFatRegistro;

//                 'FPC_JUROS = ' + ValorAmericano(FloatToStr(rJuros))+','+
//                 'FPC_JUROS = FPC_JUROS - '+ValorAmericano(FloatToStr(rJuros))+','+
//                 'FPC_VLPAGO = FPC_VLPAGO - '+ValorAmericano(FloatToStr(rPago+rJuros+rMulta-rDesconto))+','+


         dataCadastros.sqlUpdate.Close;
         DataCadastros.SqlUpdate.sql.text :=sQuery;
         dataCadastros.sqlUpdate.Execsql;
         dataCadastros.sqlUpdate.Close;

         dataCadastros.sqlUpdate.Close;
         DataCadastros.SqlUpdate.sql.text :='DELETE FROM FAT_RECEBIMENTO WHERE FRE_REGISTRO = '+ sFRE_REGISTRO;
         dataCadastros.sqlUpdate.Execsql;
         dataCadastros.sqlUpdate.Close;

      end;
   dataCadastros.sqlUpdate.Close;

   //Atualiza Duplicata Parcela
  result := True;
end;


function ContasPagarBaixa(const sFaturaRegistro,
                            sContaBancoRegistro,
                            sFormaPgtoRegistro,
                            sUsuarioCodido,
                            sObs
                            :String;
                            rPendente,
                            rBaixar,
                            rDesconto,
                            rJuros,
                            rMulta,
                            rRecebido
                            :Currency;
                            dDataRecebimento:TDateTime):Boolean;
var
   sQuery:WideString;
begin
   //Lança Pagamento
   dataCadastros.sqlUpdate.Close;
   sQuery := 'INSERT INTO PAG_PAGAMENTO '+
                   '('+
                   'EMP_CODIGO,'+
                   'PAG_REGISTRO,'+
                   'PAG_DATA_PAGAMENTO,'+
                   'PAG_VALOR,'+
                   'PAG_DESCONTO,'+
                   'PAG_JUROS,'+
                   'PAG_MULTA,'+
                   'PAG_PAGO,'+
                   'BAN_CODIGO,'+
                   'FPG_REGISTRO,'+
                   'USU_CODIGO,'+
                   'PAG_OBSERVACAO'+
                   ')'+
                   'VALUES'+
                   '('+
                   QuotedStr(dbInicio.Empresa.EMP_CODIGO)+','+
                   QuotedStr(sFaturaRegistro)+','+
                   QuotedStr(DataAmericana(DateToStr(dDataRecebimento)))+','+
                   QuotedStr(ValorAmericano(FloatToStr(rBaixar)))+','+
                   QuotedStr(ValorAmericano(FloatToStr(rDesconto)))+','+
                   QuotedStr(ValorAmericano(FloatToStr(rJuros)))+','+
                   QuotedStr(ValorAmericano(FloatToStr(rMulta)))+','+
                   QuotedStr(ValorAmericano(FloatToStr(rRecebido)))+','+
                   QuotedStr(sContaBancoRegistro)+','+
                   QuotedStr(sFormaPgtoRegistro)+','+
                   QuotedStr(sUsuarioCodido)+','+
                   QuotedStr(sObs)+
                   ')';
   dataCadastros.sqlUpdate.Close;
   DataCadastros.SqlUpdate.sql.text :=sQuery;
   dataCadastros.sqlUpdate.Execsql;
   dataCadastros.sqlUpdate.Close;
   //Atualiza Duplicata Parcela
   dataCadastros.sqlUpdate.Close;
   sQuery := 'UPDATE PAG_PC01 SET PPC_PAGTO = '+QuotedStr(DataAmericana(DateToStr(dDataRecebimento)))+', '+
             'PPC_DESCTO = PPC_DESCTO + '+ValorAmericano(FloatToStr(rDesconto))+','+
             'PPC_PREVISAO = ''N'','+
             'BAN_CODIGO = '+QuotedStr(sContaBancoRegistro)+','+
             'FPG_REGISTRO = ' + sFormaPgtoRegistro + ',' +
             'PPC_JUROS = PPC_JUROS + '+ValorAmericano(FloatToStr(rJuros))+','+
             'PPC_MULTA = PPC_MULTA + '+ValorAmericano(FloatToStr(rMulta))+','+
             'PPC_VLPAGO = PPC_VLPAGO + '+ValorAmericano(FloatToStr(rRecebido))+''+
             iif((rPendente = rBaixar),', PPC_SITPAG = ''L'' , PPC_STATUS = ''Liquidada''','') +
             ' WHERE PAG_REGISTRO = '+ sFaturaRegistro;

   dataCadastros.sqlUpdate.Close;
   DataCadastros.SqlUpdate.sql.text :=sQuery;
   dataCadastros.sqlUpdate.Execsql;
   dataCadastros.sqlUpdate.Close;

   DataCadastros.SqlUpdate.sql.text := 'SELECT * FROM PAG_PC01 ' +
                                        ' WHERE PAG_REGISTRO = ' +sFaturaRegistro;
   DataCadastros.SqlUpdate.Open;
   Historico_Controle ('Título baixado', sFaturaRegistro , DataCadastros.SqlUpdate.FieldByName('PAG_CODIGO').AsString  , DataCadastros.SqlUpdate.FieldByName('PPC_NUMER').AsString);
   Atualizar_liberacao('S',0.0, StrToInt(sFaturaRegistro));

   Result := True;                                                  
end;


function ContasPagarEstornaBaixa(const sFRE_REGISTRO:String):Boolean;
var

   rDesconto,
   rJuros,
   rMulta,
   rPago:Currency;
   sFatRegistro,sDataPgtoUpdate:String;
   sQuery:WideString;
begin
   //Seleciona Recebeimneto e Informações para estorno
   //Seleciona Recebeimneto e Informações para estorno
   dataCadastros.sqlUpdate.Close;
   sQuery := 'SELECT * FROM PAG_PAGAMENTO'+
             ' WHERE PAP_REGISTRO = '+ sFRE_REGISTRO;
   DataCadastros.SqlUpdate.sql.text :=sQuery;
   dataCadastros.sqlUpdate.Open;

   if (dataCadastros.sqlUpdate.FieldByName('PAG_CONCILIADO').AsString = 'S') then
      raise Exception.Create('Atenção, Atenção,  Lançamento pode ser excluído. Ja está conciliado!');


   sQuery := 'SELECT FIRST 1 PAG_DATA_PAGAMENTO FROM PAG_PAGAMENTO'+
             ' WHERE PAP_REGISTRO <> '+ sFRE_REGISTRO+' AND PAG_REGISTRO = '+dataCadastros.sqlUpdate.FieldByName('PAG_REGISTRO').AsString+' ORDER BY PAG_DATA_PAGAMENTO DESC ';
   dataCadastros.sqlUpdate.Close;
   DataCadastros.SqlUpdate.sql.text :=sQuery;
   dataCadastros.sqlUpdate.Open;
   if (not dataCadastros.sqlUpdate.IsEmpty) then
      sDataPgtoUpdate := QuotedStr(DataAmericana(dataCadastros.sqlUpdate.FieldByName('PAG_DATA_PAGAMENTO').AsString))
   else
      sDataPgtoUpdate := 'Null';

   //Seleciona Recebeimneto e Informações para estorno
   dataCadastros.sqlUpdate.Close;
   sQuery := 'SELECT * FROM PAG_PAGAMENTO'+
             ' WHERE PAP_REGISTRO = '+ sFRE_REGISTRO;
   DataCadastros.SqlUpdate.sql.text :=sQuery;
   dataCadastros.sqlUpdate.Open;
   //Guarda Informações
   if (not dataCadastros.sqlUpdate.IsEmpty) then
      begin
         rDesconto := dataCadastros.sqlUpdate.FieldByName('PAG_DESCONTO').AsCurrency;
         rJuros := dataCadastros.sqlUpdate.FieldByName('PAG_JUROS').AsCurrency;
         rMulta := dataCadastros.sqlUpdate.FieldByName('PAG_MULTA').AsCurrency;
         rPago := dataCadastros.sqlUpdate.FieldByName('PAG_VALOR').AsCurrency;
         sFatRegistro :=  dataCadastros.sqlUpdate.FieldByName('PAG_REGISTRO').AsString;
         dataCadastros.sqlUpdate.Close;
         sQuery := 'UPDATE PAG_PC01 SET PPC_PAGTO = '+sDataPgtoUpdate+', '+
                   'PPC_DESCTO = PPC_DESCTO - '+ValorAmericano(FloatToStr(rDesconto))+','+
                   'PPC_JUROS = PPC_JUROS - '+ValorAmericano(FloatToStr(rJuros))+','+
                   'PPC_MULTA = PPC_MULTA - '+ValorAmericano(FloatToStr(rMulta))+','+
                   'PPC_VLPAGO = PPC_VLPAGO - '+ValorAmericano(FloatToStr(rPago+rJuros+rMulta-rDesconto))+','+
                   'PPC_SITPAG = ''P'' , PPC_STATUS = ''Pendente'''+
                   ' WHERE PAG_REGISTRO = '+ sFatRegistro;

         dataCadastros.sqlUpdate.Close;
         DataCadastros.SqlUpdate.sql.text :=sQuery;
         dataCadastros.sqlUpdate.Execsql;
         dataCadastros.sqlUpdate.Close;

         dataCadastros.sqlUpdate.Close;
         DataCadastros.SqlUpdate.sql.text :='DELETE FROM PAG_PAGAMENTO WHERE PAP_REGISTRO = '+ sFRE_REGISTRO;
         dataCadastros.sqlUpdate.Execsql;
         dataCadastros.sqlUpdate.Close;

      end;
   dataCadastros.sqlUpdate.Close;
   DataCadastros.SqlUpdate.sql.text := 'SELECT * FROM PAG_PC01 ' +
                                        ' WHERE PAG_REGISTRO = ' +sFatRegistro;
   DataCadastros.SqlUpdate.Open;
   Historico_Controle('Estorno da baixa' ,sFatRegistro, DataCadastros.SqlUpdate.FieldByName('PAG_CODIGO').AsString, DataCadastros.SqlUpdate.FieldByName('PPC_NUMER').AsString);

   //Atualiza Duplicata Parcela
   Result := true;
end;


function ContasPagarCabecalho(sFaturaCodigo,
                              sTipoVenda,
                              sDocumento,
                              sCodigoFornecedor,
                              sTipo,
                              sCodigoCentroCusto,
                              sSerie,
                              sObservacao,
                              sFavorecido,
                              sOperacao
                              :String;
                              dDataEmissao
                              :TDateTime;
                              bPrevisao,
                              bLivro
                              :Boolean;
                              rValorNota,
                              rBaseIcms,
                              rAliquotaIcms,
                              rBaseIPI,
                              rValorIPI,
                              rValorRetido,
                              rIRPJRetido,
                              rPISRetido,
                              rCofinsRetido,
                              rInssRetido,
                              rContribSocialRetido,
                              rBaseISS,
                              rBaseINSS,
                              rPercentualIRPJ,
                              rPercentualPIS,
                              rPercentualCOFINS,
                              rPercentualINSS,
                              rPercentualContribuicaoSocial,
                              rISSRetido,
                              rISSPercentual
                              :Currency
                              ):Integer;
var
   sQuery:WideString;
   sRegistro:String;
begin
   //Lança Pagamento
   dataCadastros.sqlUpdate.Close;
   sRegistro := IncrementaRegistroTabela('PAG0000','PAG_REGISTRO');


   if (sTipoVenda = '') then
      sTipoVenda := '0';

   sQuery := 'INSERT INTO PAG0000 '+
                   '('+
                   'PAG_REGISTRO,'+//         INTEGER NOT NULL,
                   'PAG_EXCLUSAO,'+
                   'PAG_CODIGO,'+//           VARCHAR(5) NOT NULL,
                   'OPV_CODIGO,'+//           SMALLINT,
                   'PAG_NUMDOC,'+//           VARCHAR(12),
                   'FOR_CODIGO,'+//           VARCHAR(4),
                   'PAG_TIPO,'+//             VARCHAR(2),
                   'PAG_DTEMIS,'+//           TIMESTAMP,
                   'CCT_CODIGO,'+//           VARCHAR(3),
                   'PAG_PREVISAO,'+//         VARCHAR(1),
                   'PAG_VLNOTA ,'+//          DECIMAL6 /* DECIMAL6 = NUMERIC(15,4) DEFAULT 0 */,
                   'PAG_SERIE ,'+//           VARCHAR(3),
                   'PAG_BASEICMS ,'+//        DECIMAL6 /* DECIMAL6 = NUMERIC(15,4) DEFAULT 0 */,
                   'PAG_ALIQICMS ,'+//        DECIMAL6 /* DECIMAL6 = NUMERIC(15,4) DEFAULT 0 */,
                   'PAG_BASEIPI,'+//          DECIMAL6 /* DECIMAL6 = NUMERIC(15,4) DEFAULT 0 */,
                   'PAG_VL_IPI ,'+//          DECIMAL6 /* DECIMAL6 = NUMERIC(15,4) DEFAULT 0 */,
                   'PAG_OBS,'+//              VARCHAR(500),
                   'PAG_FAVORECIDO,'+//       VARCHAR(40),
                   'PAG_LIVRO,'+//            VARCHAR(1),
                   'PAG_OPERACAO,'+//         VARCHAR(4),
                   'PAG_VL_RET,'+//           DECIMAL6 /* DECIMAL6 = NUMERIC(15,4) DEFAULT 0 */,
                   'PAG_IRPJ_RET,'+//         DECIMAL6 /* DECIMAL6 = NUMERIC(15,4) DEFAULT 0 */,
                   'PAG_PIS_RET,'+//          DECIMAL6 /* DECIMAL6 = NUMERIC(15,4) DEFAULT 0 */,
                   'PAG_COFINS_RET,'+//       DECIMAL6 /* DECIMAL6 = NUMERIC(15,4) DEFAULT 0 */,
                   'PAG_INSS_RET,'+//         DECIMAL6 /* DECIMAL6 = NUMERIC(15,4) DEFAULT 0 */,
                   'PAG_CONTSOCIAL_RET,'+//   DECIMAL6 /* DECIMAL6 = NUMERIC(15,4) DEFAULT 0 */,
                   'PAG_BASE_ISS ,'+//        DECIMAL6 /* DECIMAL6 = NUMERIC(15,4) DEFAULT 0 */,
                   'PAG_BASE_INSS,'+//        DECIMAL6 /* DECIMAL6 = NUMERIC(15,4) DEFAULT 0 */,
                   'PAG_IRPJ_PERC,'+//        DECIMAL6 /* DECIMAL6 = NUMERIC(15,4) DEFAULT 0 */,
                   'PAG_PIS_PERC,'+//         DECIMAL6 /* DECIMAL6 = NUMERIC(15,4) DEFAULT 0 */,
                   'PAG_COFINS_PERC,'+//      DECIMAL6 /* DECIMAL6 = NUMERIC(15,4) DEFAULT 0 */,
                   'PAG_INSS_PERC ,'+//       DECIMAL6 /* DECIMAL6 = NUMERIC(15,4) DEFAULT 0 */,
                   'PAG_CONTSOCIAL_PERC,'+//  DECIMAL6 /* DECIMAL6 = NUMERIC(15,4) DEFAULT 0 */,
                   'EMP_CODIGO,'+//           VARCHAR(3),
                   'PAG_ISS_RET ,'+//         DECIMAL6 /* DECIMAL6 = NUMERIC(15,4) DEFAULT 0 */,
                   'PAG_ISS_PERC '+//        DECIMAL6 /* DECIMAL6 = NUMERIC(15,4) DEFAULT 0 */,
                   ')'+
                   'VALUES'+
                   '('+
                   QuotedStr(sRegistro)+','+
                   QuotedStr('N')+','+
                   QuotedStr(sFaturaCodigo)+','+
                   QuotedStr(sTipoVenda)+','+
                   QuotedStr(sDocumento)+','+
                   QuotedStr(sCodigoFornecedor)+','+
                   QuotedStr(sTipo)+','+
                   QuotedStr(DataAmericana(DateToStr(dDataEmissao)))+','+
                   QuotedStr(sCodigoCentroCusto)+','+
                   QuotedStr(iif(bPrevisao,'S','N'))+','+
                   QuotedStr(ValorAmericano(FloatToStr(rValorNota)))+','+
                   QuotedStr(sSerie)+','+
                   QuotedStr(ValorAmericano(FloatToStr(rBaseIcms)))+','+
                   QuotedStr(ValorAmericano(FloatToStr(rAliquotaIcms)))+','+
                   QuotedStr(ValorAmericano(FloatToStr(rBaseIPI)))+','+
                   QuotedStr(ValorAmericano(FloatToStr(rValorIPI)))+','+
                   QuotedStr(sObservacao)+','+
                   QuotedStr(sFavorecido)+','+
                   QuotedStr(iif(bLivro,'S','N'))+','+
                   QuotedStr(sOperacao)+','+
                   QuotedStr(ValorAmericano(FloatToStr(rValorRetido)))+','+
                   QuotedStr(ValorAmericano(FloatToStr(rIRPJRetido)))+','+
                   QuotedStr(ValorAmericano(FloatToStr(rPISRetido)))+','+
                   QuotedStr(ValorAmericano(FloatToStr(rCofinsRetido)))+','+
                   QuotedStr(ValorAmericano(FloatToStr(rInssRetido)))+','+
                   QuotedStr(ValorAmericano(FloatToStr(rContribSocialRetido)))+','+
                   QuotedStr(ValorAmericano(FloatToStr(rBaseISS)))+','+
                   QuotedStr(ValorAmericano(FloatToStr(rBaseINSS)))+','+
                   QuotedStr(ValorAmericano(FloatToStr(rPercentualIRPJ)))+','+
                   QuotedStr(ValorAmericano(FloatToStr(rPercentualPIS)))+','+
                   QuotedStr(ValorAmericano(FloatToStr(rPercentualCOFINS)))+','+
                   QuotedStr(ValorAmericano(FloatToStr(rPercentualINSS)))+','+
                   QuotedStr(ValorAmericano(FloatToStr(rPercentualContribuicaoSocial)))+','+
                   QuotedStr(dbInicio.Empresa.EMP_CODIGO)+','+
                   QuotedStr(ValorAmericano(FloatToStr(rISSRetido)))+','+
                   QuotedStr(ValorAmericano(FloatToStr(rISSPercentual)))+
                   ')';
   dataCadastros.sqlUpdate.Close;
   DataCadastros.SqlUpdate.sql.text :=sQuery;
   dataCadastros.sqlUpdate.Execsql;
   dataCadastros.sqlUpdate.Close;
   Result := StrToInt(sRegistro);
end;


function ContasPagarParcela(const sFaturaCodigo,
                            sParcela,
                            sCodigoBanco,
                            sCedente,
                            sCentroCusto,
                            sSituacaoPgto,
                            sStatus,
                            sCodigoFornecedor,
                            sDocumento,
                            sObservacao
                            :String;
                            dDataEmissao,
                            dDataVencimento
                            :TDateTime;
                            iNumeroParcelas
                            :Integer;
                            rParcela
                            :Currency;
                            bPrevisao
                            :Boolean
                            ):Integer;
var
   sQuery:WideString;
   sRegistro:String;
begin
   //Lança Pagamento
   dataCadastros.sqlUpdate.Close;
   sRegistro := IntToStr(DBInicio.GetNextSequence('gen_pag_pc01')); //IncrementaRegistroTabela('PAG_PC01','PAG_REGISTRO');

   sQuery := 'INSERT INTO PAG_PC01 '+
                   '('+
                   'PAG_REGISTRO,'+//         INTEGER NOT NULL,
                   'PAG_CODIGO,'+//          VARCHAR(5) NOT NULL,
                   'PPC_NUMER,'+//            VARCHAR(2),
                   'BAN_CODIGO,'+//           VARCHAR(4),
                   'PPC_BANCO,'+//            VARCHAR(12),
                   'CCT_CODIGO,'+//           VARCHAR(3),
                   'PPC_DTEMIS,'+//           TIMESTAMP,
                   'PPC_NPARCELAS,'+//        SMALLINT,
                   'PPC_SITPAG,'+//           VARCHAR(1),
                   'PPC_STATUS,'+//           VARCHAR(12),
                   'PPC_VENCTO,'+//           TIMESTAMP,
                   'PPC_VLPARC,'+//           DECIMAL6 /* DECIMAL6 = NUMERIC(15,4) DEFAULT 0 */,
                   'PPC_OBS,'+//              VARCHAR(500),
                   'EMP_CODIGO,'+//           VARCHAR(3),
                   'FOR_CODIGO,'+//           VARCHAR(4),
                   'PAG_NUMDOC,'+//           VARCHAR(12),
                   'PPC_EXCLUSAO,'+
                   'PPC_PREVISAO'+//         VARCHAR(1),
                   ')'+
                   'VALUES'+
                   '('+
                   QuotedStr(sRegistro)+','+
                   QuotedStr(sFaturaCodigo)+','+
                   QuotedStr(sParcela)+','+
                   QuotedStr(sCodigoBanco)+','+
                   QuotedStr(sCedente)+','+
                   QuotedStr(sCentroCusto)+','+
                   QuotedStr(DataAmericana(DateToStr(dDataEmissao)))+','+
                   QuotedStr(IntToStr(iNumeroParcelas))+','+
                   QuotedStr(sSituacaoPgto)+','+
                   QuotedStr(sStatus)+','+
                   QuotedStr(DataAmericana(DateToStr(dDataVencimento)))+','+
                   QuotedStr(ValorAmericano(FloatToStr(rParcela)))+','+
                   QuotedStr(sObservacao)+','+
                   QuotedStr(dbInicio.Empresa.EMP_CODIGO)+','+
                   QuotedStr(sCodigoFornecedor)+','+
                   QuotedStr(sDocumento)+','+
                   QuotedStr('N')+','+
                   QuotedStr(iif(bPrevisao,'S','N'))+
                   ')';
   dataCadastros.sqlUpdate.Close;
   DataCadastros.SqlUpdate.sql.text :=sQuery;
   dataCadastros.sqlUpdate.Execsql;
   dataCadastros.sqlUpdate.Close;
   LancaRateioCentroCustoBasePlano(sRegistro,
                                   'P',
                                   sCentroCusto,
                                   '0');

   DataCadastros.SqlUpdate.Close;
   Historico_Controle( 'Inclusão título',  sRegistro, sFaturaCodigo  ,sParcela)  ;



   Result := StrToInt(sRegistro);

end;



function ContasTranferencia(sContaBancoOrigem,
                            sContaBancoDestino,
                            sDocumento,
                            sObservacao
                            :String;
                            dData
                            :TDateTime;
                            rValor:
                            Currency
                           ):Boolean;
var
   sQuery:WideString;
   idCredito, idDebito: integer;
begin
   //Lança Pagamento

  dataCadastros.BeginTran;

   dataCadastros.sqlUpdate.Close;

   idDebito := DBInicio.GetNextSequence('GEN_BAN_TRANSFERENCIA_ID');
   idCredito := DBInicio.GetNextSequence('GEN_BAN_TRANSFERENCIA_ID');
   sQuery := 'INSERT INTO BAN_TRANSFERENCIA '+
                   '('+
                   'BTR_REGISTRO,' +
                   'BTR_REGISTRO_CONTRAPARTIDA, ' +
                   'EMP_CODIGO,'+//
                   'BCO_CODIGO,'+
                   'BTR_DATA,'+//
                   'BTR_TIPO,'+//
                   'BTR_DOCUMENTO,'+//
                   'BTR_OBSERVACAO,'+//
                   'BTR_VALOR,'+//
                   'USU_CODIGO'+//
                   ')'+
                   'VALUES'+
                   '('+
                   IntTostr(idDebito) + ',' +
                   IntTostr(idCredito) + ',' +
                   QuotedStr(dbInicio.Empresa.EMP_CODIGO)+','+
                   QuotedStr(sContaBancoOrigem)+','+
                   QuotedStr(DataAmericana(DateToStr(dData)))+','+
                   QuotedStr('D')+','+
                   QuotedStr(sDocumento)+','+
                   QuotedStr(sObservacao)+','+
                   QuotedStr(ValorAmericano(FloatToStr(rValor)))+','+
                   QuotedStr(dbInicio.Usuario.Codigo)+
                   ')';
   dataCadastros.sqlUpdate.Close;
   DataCadastros.SqlUpdate.sql.text :=sQuery;
   dataCadastros.sqlUpdate.Execsql;
   dataCadastros.sqlUpdate.Close;

   sQuery := 'INSERT INTO BAN_TRANSFERENCIA '+
                   '('+
                   'BTR_REGISTRO,' +
                   'BTR_REGISTRO_CONTRAPARTIDA, ' +
                   'EMP_CODIGO,'+//
                   'BCO_CODIGO,'+
                   'BTR_DATA,'+//
                   'BTR_TIPO,'+//
                   'BTR_DOCUMENTO,'+//
                   'BTR_OBSERVACAO,'+//
                   'BTR_VALOR,'+//
                   'USU_CODIGO'+//
                   ')'+
                   'VALUES'+
                   '('+
                   IntTostr(idCredito) + ',' +
                   IntTostr(idDebito) + ',' +
                   QuotedStr(dbInicio.Empresa.EMP_CODIGO)+','+
                   QuotedStr(sContaBancoDestino)+','+
                   QuotedStr(DataAmericana(DateToStr(dData)))+','+
                   QuotedStr('C')+','+
                   QuotedStr(sDocumento)+','+
                   QuotedStr(sObservacao)+','+
                   QuotedStr(ValorAmericano(FloatToStr(rValor)))+','+
                   QuotedStr(dbInicio.Usuario.Codigo)+
                   ')';
   dataCadastros.sqlUpdate.Close;
   DataCadastros.SqlUpdate.sql.text :=sQuery;
   dataCadastros.sqlUpdate.Execsql;
   dataCadastros.sqlUpdate.Close;

   DataCadastros.CommitTran;
   Result := True;

end;
procedure Atualizar_liberacao(const sit: string; const valor: Double; const registro : integer);
begin
  //LIBERADO
 if sit = 'L' then
 begin
  DBInicio.ExecSql(' UPDATE PAG_PC01  SET PPC_SIT_LIBERACAO = '+QuotedStr(sit) +
          ' , PPC_VALOR_APONTADO = '+ FloatToSQL(valor)+
         '  WHERE PAG_REGISTRO = '+ IntToStr( registro) );

   EXIT;
 end;

 if SIT = 'S' then
 begin
   DBInicio.ExecSql (' UPDATE PAG_PC01  SET PPC_SIT_LIBERACAO = '+QuotedStr(sit) +
          ' , PPC_VALOR_APONTADO = 0.0 ' +
         '  WHERE PAG_REGISTRO = '+ IntToStr( registro) );

   EXIT;
 end;

if sit = 'R' then // REPROVADO
 begin
  DBInicio.ExecSql(' UPDATE PAG_PC01  SET PPC_SIT_LIBERACAO = '+QuotedStr(sit) +
         ' , PPC_VALOR_APONTADO = '+ FloatToSQL(valor)+
         '  WHERE PAG_REGISTRO = '+ IntToStr( registro) );

   EXIT;
 end;




end;
procedure Historico_Controle (const Descr : string; const PAG_REGISTRO, PAG_CODIGO, PPC_NUMER: string);
var squery : string;
begin
   sQuery := ' insert into CONTROLE_TIT_PAGAR ( CTP_DATA_MOV, CTP_DESCRI, COD_USU, PAG_REGISTRO, PAG_CODIGO, PPC_NUMER) '+
             ' VALUES( '+DateTimeToSQL(NOW)+ ',' + QuotedStr(copy(Descr,1,100)) + ','+ DBInicio.Usuario.CODIGO + ','+   PAG_REGISTRO+ ',' + QuotedStr(PAG_CODIGO)+ ','+ QuotedStr(PPC_NUMER) +')';
   dataCadastros.sqlUpdate.Close;
   DataCadastros.SqlUpdate.sql.text :=sQuery;
   dataCadastros.sqlUpdate.Execsql;
   dataCadastros.sqlUpdate.Close;
end;

function IncrementaRegistroTabela(const Tabela: String;const Chave_Registro: String):String;
Var
QryReg:TSQLQuery;
begin
   QryReg := TSQLQuery.Create(Nil);
   try
      QryReg.SQLConnection := DataCadastros.SQLConnection1;
      QryReg.SQL.Clear;
      QryReg.SQL.Add('Select max('+Chave_Registro+')'+' from '+Tabela);
      QryReg.Open;
      if QryReg.Fields[0].IsNull then
         begin
            Result := '1';
         end
      else
         begin
             Result := IntToStr(QryReg.Fields[0].AsInteger +1);
         end;
   finally
      FreeAndNil(QryReg);
   end;
end;

procedure LimpaRateioCentroCusto(const sRegistro,
                                 sTipo:String);
begin
   DataCadastros.sqlUpdate2.Close;
   DataCadastros.sqlUpdate2.sql.text := SQLDEF('PAGAR','DELETE FROM fin_rateio ','WHERE fir_registro_cp_cr = '''+sRegistro+''' and fir_registro_tipo = '''+sTipo+''' ','','');
   DataCadastros.sqlUpdate2.ExecSql;
   DataCadastros.sqlUpdate2.Close;
end;

procedure LancaRateioCentroCustoBasePlano(sRegistro,
                                          sTipo,
                                          sContaFinanceira,
                                          sPerfilRateio:String);
Var
   QryReg:TSQLQuery;
   sQuery, sTipoRateio, sCentroCusto, sReferencia,sNivel, sPcx_codigo, sTipoLancamento:string;
   dDataVencimento:TDateTime;
   qtdeNivel,posicaoUltimoPonto,I:Integer;
begin

    LimpaRateioCentroCusto(sRegistro,sTipo);

   if (sTipo = 'R') then
      begin
         dataCadastros.sqlUpdate2.Close;
         dataCadastros.sqlUpdate2.sql.text := 'UPDATE FAT_PC01 SET PCXPF_REGISTRO = '+QuotedStr('0')+' WHERE FAT_REGISTRO = '+QuotedStr(sRegistro);
         dataCadastros.sqlUpdate2.ExecSql;
      end
   else
      begin
         dataCadastros.sqlUpdate2.Close;
         dataCadastros.sqlUpdate2.sql.text := 'UPDATE PAG_PC01 SET PCXPF_REGISTRO = '+QuotedStr('0')+' WHERE PAG_REGISTRO = '+QuotedStr(sRegistro);
         dataCadastros.sqlUpdate2.ExecSql;
      end;
   //Verifica o tipo de Rateio  C = Colaborador M = Manual P = percentual
   sTipoRateio := 'M';       // MANUAL
   dataCadastros.sqlUpdate2.Close;
   dataCadastros.sqlUpdate2.sql.text := 'SELECT CCT_PERFIL_RATEIO FROM CCT_0000 WHERE CCT_CODIGO = '+QuotedStr(sContaFinanceira);
   dataCadastros.sqlUpdate2.Open;
   if (not dataCadastros.sqlUpdate2.IsEmpty) then
      begin
         sTipoRateio := dataCadastros.sqlUpdate2.FieldByName('CCT_PERFIL_RATEIO').AsString;
      end;
   dataCadastros.sqlUpdate2.Close;

   if (sTipoRateio <> 'M') then
      begin
         if (sTipo = 'R') then
            begin
               dataCadastros.sqlUpdate2.Close;
               dataCadastros.sqlUpdate2.sql.text := 'SELECT FPC_VENCTO FROM FAT_PC01 WHERE FAT_REGISTRO = '+QuotedStr(sRegistro);
               dataCadastros.sqlUpdate2.open;

               dDataVencimento :=  dataCadastros.sqlUpdate2.FieldByName('FPC_VENCTO').AsDateTime;

            end
         else
            begin
               dataCadastros.sqlUpdate2.Close;
               dataCadastros.sqlUpdate2.sql.text := 'SELECT PPC_VENCTO from PAG_PC01 WHERE PAG_REGISTRO = '+QuotedStr(sRegistro);
               dataCadastros.sqlUpdate2.open;

               dDataVencimento :=  dataCadastros.sqlUpdate2.FieldByName('PPC_VENCTO').AsDateTime;
            end;
         //Retorna Perfil
         dataCadastros.sqlUpdate2.Close;
         dataCadastros.sqlUpdate2.sql.text := 'SELECT * from PCX0000_PERFIL WHERE PCXPF_DATA_INICIAL <= '+QuotedStr(DataAmericana(DateToStr(dDataVencimento)))+' and PCXPF_DATA_FINAL >= '+QuotedStr(DataAmericana(DateToStr(dDataVencimento)));
         dataCadastros.sqlUpdate2.open;

         if (not dataCadastros.sqlUpdate2.IsEmpty) then
            begin
               sPerfilRateio :=  dataCadastros.sqlUpdate2.FieldByName('PCXPF_REGISTRO').AsString;
            end;
      end
   else
      begin

      end;
   if (sPerfilRateio = '') then
      begin
         sPerfilRateio := '-1';
         //Caso tenha sido informado o Centro de custo no pedido rateia como 100%

         if (sTipo = 'R') then
            begin
               dataCadastros.sqlUpdate2.Close;
               dataCadastros.sqlUpdate2.sql.text := 'SELECT t2.PCX_CODIGO FROM FAT_PC01 T1 JOIN FAT0000 T2 ON (T2.FAT_CODIGO = t1.FAT_CODIGO and t2.CLI_CODIGO = t1.CLI_CODIGO) WHERE t1.FAT_REGISTRO = '+QuotedStr(sRegistro);
               dataCadastros.sqlUpdate2.Open;
               if (not dataCadastros.sqlUpdate2.IsEmpty) then
                  sCentroCusto := dataCadastros.sqlUpdate2.FieldByName('PCX_CODIGO').AsString
               else
                  sCentroCusto := '';

            end
         else
            begin
               dataCadastros.sqlUpdate2.Close;
               dataCadastros.sqlUpdate2.sql.text := 'SELECT t2.PCX_CODIGO FROM PAG_PC01 T1 JOIN PAG0000 T2 ON (T2.PAG_CODIGO = t1.PAG_CODIGO and t2.FOR_CODIGO = t1.FOR_CODIGO) WHERE t1.PAG_REGISTRO = '+QuotedStr(sRegistro);
               dataCadastros.sqlUpdate2.Open;
               if (not dataCadastros.sqlUpdate2.IsEmpty) then
                  sCentroCusto := dataCadastros.sqlUpdate2.FieldByName('PCX_CODIGO').AsString
               else
                  sCentroCusto := '';
            end;  
         if (sCentroCusto <> '') then
            begin
               //fernando implementar 061294

               dataCadastros.sqlUpdate2.Close;
               dataCadastros.sqlUpdate2.sql.text := 'SELECT * FROM PCX0000 T1 WHERE t1.PCX_CODIGO = '+QuotedStr(sCentroCusto);
               dataCadastros.sqlUpdate2.Open;
               sNivel := dataCadastros.sqlUpdate2.FieldByName('PCX_NIVEL').AsString;
               sReferencia := '';
               qtdeNivel := 1;
               posicaoUltimoPonto := 0;
               for I := 1 to Length(sNivel) do
                  begin
                     if (sNivel[I] = '.') then
                        begin
                           Inc(qtdeNivel);
                           posicaoUltimoPonto := I;
                        end;
                  end;

               for I := 1 to qtdeNivel do
                  begin
                        dataCadastros.sqlUpdate2.Close;
                        if (I < 4) then
                           dataCadastros.sqlUpdate2.sql.text := 'SELECT * FROM PCX0000 T1 WHERE t1.PCX_NIVEL = '+QuotedStr(copy(sNivel,0,(I * 3)))
                        else
                           dataCadastros.sqlUpdate2.sql.text := 'SELECT * FROM PCX0000 T1 WHERE t1.PCX_NIVEL = '+QuotedStr(copy(sNivel,0,(I * 3)+1));
                        dataCadastros.sqlUpdate2.Open;

                        sPcx_codigo := dataCadastros.sqlUpdate2.FieldByName('PCX_CODIGO').AsString;


                        sTipoLancamento := 'L';
                        if (I <> qtdeNivel) then
                           begin
                              sTipoLancamento := 'T';
                           end;

                        sQuery := 'INSERT INTO FIN_RATEIO '+
                               '('+
                               'EMP_CODIGO,'+//
                               'FIR_REGISTRO_CP_CR,'+
                               'FIR_REGISTRO_TIPO,'+//
                               'FIR_INDICE,'+//
                               'FIR_INDICE_REAL,'+//
                               'FIR_TIPO,'+//
                               'PCX_CODIGO'+//
                               ')'+
                               'VALUES'+
                               '('+
                               QuotedStr(dbInicio.Empresa.EMP_CODIGO)+','+
                               QuotedStr(sRegistro)+','+
                               QuotedStr(sTipo)+','+
                               QuotedStr('10')+','+
                               QuotedStr('1')+','+
                               QuotedStr(sTipoLancamento)+','+
                               QuotedStr(PreenchezeroEsquerda(sPcx_codigo,3) )+
                               ')';
                               
                        dataCadastros.sqlUpdate2.Close;
                        dataCadastros.sqlUpdate2.sql.text := sQuery;
                        dataCadastros.sqlUpdate2.ExecSql;
                        dataCadastros.sqlUpdate2.Close;
                        //Atualiza Perfil Rateio
                        if (sTipo = 'R') then
                           begin
                              dataCadastros.sqlUpdate2.Close;
                              dataCadastros.sqlUpdate2.sql.text := 'UPDATE FAT_PC01 SET PCXPF_REGISTRO = '+QuotedStr('0')+' WHERE FAT_REGISTRO = '+QuotedStr(sRegistro);
                              dataCadastros.sqlUpdate2.ExecSql;
                           end
                        else
                           begin
                              dataCadastros.sqlUpdate2.Close;
                              dataCadastros.sqlUpdate2.sql.text := 'UPDATE PAG_PC01 SET PCXPF_REGISTRO = '+QuotedStr('0')+' WHERE PAG_REGISTRO = '+QuotedStr(sRegistro);
                              dataCadastros.sqlUpdate2.ExecSql;
                           end;



                  end;
            end;

      end;
   if (sTipoRateio = 'C') then        //COLABORADOR
      begin
         QryReg := TSQLQuery.Create(Nil);
         try
            QryReg.SQLConnection := DataCadastros.SQLConnection1;
            QryReg.SQL.Clear;
            QryReg.SQL.Add('SELECT PCX_CODIGO, PPC_INDICE_REAL,PPC_TIPO FROM PCX0000_PERFIL_COLABORADOR T1 WHERE PPC_QUANTIDADE > 0 and PCXPF_REGISTRO = '+QuotedStr(sPerfilRateio)+' and t1.CCT_0000 = '+QuotedStr(sContaFinanceira));
            QryReg.Open;

            while (not QryReg.eof) do
               begin

                  sQuery := 'INSERT INTO FIN_RATEIO '+
                                  '('+
                                  'EMP_CODIGO,'+//
                                  'FIR_REGISTRO_CP_CR,'+
                                  'FIR_REGISTRO_TIPO,'+//
                                  'FIR_INDICE,'+//
                                  'FIR_INDICE_REAL,'+//
                                  'FIR_TIPO,'+//
                                  'PCX_CODIGO'+//
                                  ')'+
                                  'VALUES'+
                                  '('+
                                  QuotedStr(dbInicio.Empresa.EMP_CODIGO)+','+
                                  QuotedStr(sRegistro)+','+
                                  QuotedStr(sTipo)+','+
                                  QuotedStr(ValorAmericano(QryReg.Fields[1].AsVariant ))+','+       // * 100   tirado
                                  QuotedStr(ValorAmericano(QryReg.Fields[1].AsVariant / 100 ))+','+  // .AsString  , /100   inserido
                                  QuotedStr(QryReg.Fields[2].AsString )+','+
                                  QuotedStr(PreenchezeroEsquerda(QryReg.Fields[0].AsString,3) )+
                                  ')';

                  dataCadastros.sqlUpdate2.Close;
                  dataCadastros.sqlUpdate2.sql.text := sQuery;
                  dataCadastros.sqlUpdate2.ExecSql;
                  dataCadastros.sqlUpdate2.Close;
                  //Atualiza Perfil Rateio
                  if (sTipo = 'R') then
                     begin
                        dataCadastros.sqlUpdate2.Close;
                        dataCadastros.sqlUpdate2.sql.text := 'UPDATE FAT_PC01 SET PCXPF_REGISTRO = '+QuotedStr(sPerfilRateio)+' WHERE FAT_REGISTRO = '+QuotedStr(sRegistro);
                        dataCadastros.sqlUpdate2.ExecSql;
                     end
                  else
                     begin
                        dataCadastros.sqlUpdate2.Close;
                        dataCadastros.sqlUpdate2.sql.text := 'UPDATE PAG_PC01 SET PCXPF_REGISTRO = '+QuotedStr(sPerfilRateio)+' WHERE PAG_REGISTRO = '+QuotedStr(sRegistro);
                        dataCadastros.sqlUpdate2.ExecSql;
                     end;

                  QryReg.Next;
               end;
         finally
            FreeAndNil(QryReg);
         end;
      end
   else
   if (sTipoRateio = 'P') then        //PERCENTUAL
      begin
        QryReg := TSQLQuery.Create(Nil);
         try

            QryReg.SQLConnection := DataCadastros.SQLConnection1;
            QryReg.SQL.Clear;
            QryReg.SQL.Add('SELECT PCX_CODIGO, PCXP_INDICE, PCXP_INDICE_REAL,PCXP_TIPO FROM PCX0000_PLANO T1 WHERE CCT_0000 = '''+sContaFinanceira+''' and PCXP_INDICE > 0 and PCXPF_REGISTRO = '+QuotedStr(sPerfilRateio));
            QryReg.Open;

            while (not QryReg.eof) do
               begin
                  sQuery := 'INSERT INTO FIN_RATEIO '+
                                  '('+
                                  'EMP_CODIGO,'+//
                                  'FIR_REGISTRO_CP_CR,'+
                                  'FIR_REGISTRO_TIPO,'+//
                                  'FIR_INDICE,'+//
                                  'FIR_INDICE_REAL,'+//
                                  'FIR_TIPO,'+//
                                  'PCX_CODIGO'+//
                                  ')'+
                                  'VALUES'+
                                  '('+
                                  QuotedStr(dbInicio.Empresa.EMP_CODIGO)+','+
                                  QuotedStr(sRegistro)+','+
                                  QuotedStr(sTipo)+','+
                                  QuotedStr(ValorAmericano(QryReg.Fields[1].AsString ))+','+
                                  QuotedStr(ValorAmericano(QryReg.Fields[2].AsString ))+','+
                                  QuotedStr(QryReg.Fields[3].AsString )+','+
                                  QuotedStr(QryReg.Fields[0].AsString )+
                                  ')';
                  dataCadastros.sqlUpdate2.Close;
                  dataCadastros.sqlUpdate2.sql.text := sQuery;
                  dataCadastros.sqlUpdate2.ExecSql;
                  dataCadastros.sqlUpdate2.Close;
                  //Atualiza Perfil Rateio
                  if (sTipo = 'R') then
                     begin
                        dataCadastros.sqlUpdate2.Close;
                        dataCadastros.sqlUpdate2.sql.text := 'UPDATE FAT_PC01 SET PCXPF_REGISTRO = '+QuotedStr(sPerfilRateio)+' WHERE FAT_REGISTRO = '+QuotedStr(sRegistro);
                        dataCadastros.sqlUpdate2.ExecSql;
                     end
                  else
                     begin
                        dataCadastros.sqlUpdate2.Close;
                        dataCadastros.sqlUpdate2.sql.text := 'UPDATE PAG_PC01 SET PCXPF_REGISTRO = '+QuotedStr(sPerfilRateio)+' WHERE PAG_REGISTRO = '+QuotedStr(sRegistro);
                        dataCadastros.sqlUpdate2.ExecSql;
                     end;

                  QryReg.Next;
               end;
         finally
            FreeAndNil(QryReg);
         end;
      end;


end;




function RetornoIndiceRateioCentroCusto(const sContaFinanceira,
                                        sCentroCusto:String):Double;
Var
QryReg:TSQLQuery;
begin
   QryReg := TSQLQuery.Create(Nil);
   try

      QryReg.SQLConnection := DataCadastros.SQLConnection1;
      QryReg.SQL.Clear;
      QryReg.SQL.Add('select t1.pcxp_indice from pcx0000_plano t1 where t1.cct_0000 = '+QuotedStr(sContaFinanceira)+' and t1.pcx_codigo = '+QuotedStr(sCentroCusto));
      QryReg.Open;
      Result := QryReg.Fields[0].AsFloat;
   finally
      FreeAndNil(QryReg);
   end;
end;


end.
