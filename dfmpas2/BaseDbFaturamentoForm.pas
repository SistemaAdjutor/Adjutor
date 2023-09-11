unit BaseDbFaturamentoForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, System.Math,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDbEstoqueForm, Data.DBXFirebird, Data.DB, Data.SqlExpr, ACBrEnterTab,
  ACBrBase, ACBrCalculadora, Vcl.ExtCtrls, Data.FMTBCd, Datasnap.DBClient,
  Datasnap.Provider, ACBrETQ;

type
  TfrmBaseDbFaturamento = class(TfrmBaseDbEstoque)
    qRecParce: TSQLQuery;
    qRecParceFAT_REGISTRO: TIntegerField;
    qRecParceFAT_CODIGO: TStringField;
    qRecParceFPC_NUMER: TStringField;
    qRecParceREP_CODIGO: TStringField;
    qRecParceBAN_CODIGO: TStringField;
    qRecParceCCT_CODIGO: TStringField;
    qRecParcePCX_CODIGO: TStringField;
    qRecParceFPC_DTEMIS: TSQLTimeStampField;
    qRecParceFPC_NPARCELAS: TSmallintField;
    qRecParceFPC_COBNUM: TStringField;
    qRecParceFPC_COBTIPO: TStringField;
    qRecParceFPC_TIPODOC: TStringField;
    qRecParceFPC_SITPAG: TStringField;
    qRecParceFPC_STATUS: TStringField;
    qRecParceFPC_DESCTO: TFMTBCdField;
    qRecParceFPC_DTDESC: TSQLTimeStampField;
    qRecParceFPC_VENCTO: TSQLTimeStampField;
    qRecParceFPC_PAGTO: TSQLTimeStampField;
    qRecParceFPC_VLPARC: TFMTBCdField;
    qRecParceFPC_VLPAGO: TFMTBCdField;
    qRecParceFPC_OBS: TStringField;
    qRecParceCLI_CODIGO: TStringField;
    qRecParceFPC_IMPDUP: TStringField;
    qRecParceFPC_JUROS: TFMTBCdField;
    qRecParceFPC_MULTA: TFMTBCdField;
    qRecParceFPC_VL_RET: TFMTBCdField;
    qRecParceEMP_CODIGO: TStringField;
    qRecParceCCT_NOVO: TStringField;
    qRecParceFPC_PREVISAO: TStringField;
    qRecParceFPC_STATUS_REMESSA: TStringField;
    qRecParceFPC_DATA_REMESSA: TDateField;
    qRecParceBAN_COD_APELIDO: TIntegerField;
    qRecParceFPC_STATUS_BAIXA: TStringField;
    qRecParceFPC_FORMAPAGTO: TStringField;
    qRecParceFPC_DESCONTADO: TStringField;
    qRecParceFPC_DATADESCTO: TDateField;
    qRecParceFPC_CONFIRMADESCTO: TStringField;
    qRecParceFPC_CONFIRMADEVOLUCAO: TStringField;
    qRecParceFPC_DATADEVOLUCAO: TDateField;
    qRecParceFPC_OBS_DESCTO: TStringField;
    qRecParceFPC_JUROS_DESCTO: TFMTBCdField;
    qRecParcePAG_CODIGO: TStringField;
    qRecParceFPC_BANCO_CHEQUE: TIntegerField;
    qRecParceFPC_NUM_CHEQUE: TStringField;
    qRecParceFPC_NUM_CHEQUE_DV: TStringField;
    qRecParceFPC_CHEQUE_DATA: TDateField;
    qRecParceFPC_SACADO_CHEQUE: TStringField;
    qRecParceFPC_EXCLUSAO: TStringField;
    qRecParceFPC_DATA_EXCLUSAO: TDateField;
    qRecParceFPC_HORA_EXCLUSAO: TTimeField;
    qRecParceFPC_MOTIVO_EXCLUSAO: TStringField;
    qRecParceUSU_CODIGO: TIntegerField;
    qRecParceUSU_LOGIN: TStringField;
    qRecParcePCXPF_REGISTRO: TIntegerField;
    qRecParceFPC_REEMBOLSO: TStringField;
    dspRecParce: TDataSetProvider;
    CdsRecParce: TClientDataSet;
    CdsRecParceFAT_REGISTRO: TIntegerField;
    CdsRecParceFAT_CODIGO: TStringField;
    CdsRecParceFPC_NUMER: TStringField;
    CdsRecParceREP_CODIGO: TStringField;
    CdsRecParceBAN_CODIGO: TStringField;
    CdsRecParceCCT_CODIGO: TStringField;
    CdsRecParcePCX_CODIGO: TStringField;
    CdsRecParceFPC_DTEMIS: TSQLTimeStampField;
    CdsRecParceFPC_NPARCELAS: TSmallintField;
    CdsRecParceFPC_COBNUM: TStringField;
    CdsRecParceFPC_COBTIPO: TStringField;
    CdsRecParceFPC_TIPODOC: TStringField;
    CdsRecParceFPC_SITPAG: TStringField;
    CdsRecParceFPC_STATUS: TStringField;
    CdsRecParceFPC_DESCTO: TFMTBCdField;
    CdsRecParceFPC_DTDESC: TSQLTimeStampField;
    CdsRecParceFPC_VENCTO: TSQLTimeStampField;
    CdsRecParceFPC_PAGTO: TSQLTimeStampField;
    CdsRecParceFPC_VLPARC: TFMTBCdField;
    CdsRecParceFPC_VLPAGO: TFMTBCdField;
    CdsRecParceFPC_OBS: TStringField;
    CdsRecParceCLI_CODIGO: TStringField;
    CdsRecParceFPC_IMPDUP: TStringField;
    CdsRecParceFPC_JUROS: TFMTBCdField;
    CdsRecParceFPC_MULTA: TFMTBCdField;
    CdsRecParceFPC_VL_RET: TFMTBCdField;
    CdsRecParceEMP_CODIGO: TStringField;
    CdsRecParceCCT_NOVO: TStringField;
    CdsRecParceFPC_PREVISAO: TStringField;
    CdsRecParceFPC_STATUS_REMESSA: TStringField;
    CdsRecParceFPC_DATA_REMESSA: TDateField;
    CdsRecParceBAN_COD_APELIDO: TIntegerField;
    CdsRecParceFPC_STATUS_BAIXA: TStringField;
    CdsRecParceFPC_FORMAPAGTO: TStringField;
    CdsRecParceFPC_DESCONTADO: TStringField;
    CdsRecParceFPC_DATADESCTO: TDateField;
    CdsRecParceFPC_CONFIRMADESCTO: TStringField;
    CdsRecParceFPC_CONFIRMADEVOLUCAO: TStringField;
    CdsRecParceFPC_DATADEVOLUCAO: TDateField;
    CdsRecParceFPC_OBS_DESCTO: TStringField;
    CdsRecParceFPC_JUROS_DESCTO: TFMTBCdField;
    CdsRecParcePAG_CODIGO: TStringField;
    CdsRecParceFPC_BANCO_CHEQUE: TIntegerField;
    CdsRecParceFPC_NUM_CHEQUE: TStringField;
    CdsRecParceFPC_NUM_CHEQUE_DV: TStringField;
    CdsRecParceFPC_CHEQUE_DATA: TDateField;
    CdsRecParceFPC_SACADO_CHEQUE: TStringField;
    CdsRecParceFPC_EXCLUSAO: TStringField;
    CdsRecParceFPC_DATA_EXCLUSAO: TDateField;
    CdsRecParceFPC_HORA_EXCLUSAO: TTimeField;
    CdsRecParceFPC_MOTIVO_EXCLUSAO: TStringField;
    CdsRecParceUSU_CODIGO: TIntegerField;
    CdsRecParceUSU_LOGIN: TStringField;
    CdsRecParcePCXPF_REGISTRO: TIntegerField;
    CdsRecParceFPC_REEMBOLSO: TStringField;
    CdsRecParceTotalParc: TAggregateField;
    CdsRecParceFAT_NUMSERIE: TStringField;
    qRecParceFPG_REGISTRO: TIntegerField;
    CdsRecParceFPG_REGISTRO: TIntegerField;
    CdsRecParceBAN_APELIDO: TStringField;
    CdsRecParceFPG_DESCRICAO: TStringField;
    CdsRecParceBOTAO: TStringField;
    procedure CdsRecParceAfterInsert(DataSet: TDataSet);
  private
    procedure LancaRateioCentroCustoBasePlano(const sRegistro, sTipo, sContaFinanceira: string; sPerfilRateio: String);
  public
    Procedure ParcelarRec( wValor, wValor1Parcela, wValor_retencao:Double;
                                 const wBanco, wCobranca, wTpDocuto, wCct_codigo, wPcx_codigo, wFatCodigo, wPcl_Codigo:String;
                                 var wDataE:Tdatetime;
                                 const pRepCodigo, pCliCodigo, Serie: string; const FPG: Integer; const integrar : boolean; const TipoFaturamento, Emp_Codigo : string ) ;

  end;

var
  frmBaseDbFaturamento: TfrmBaseDbFaturamento;

implementation

{$R *.dfm}

Uses Uteis, InicioDb, uFinanceiroDAO ;

procedure TfrmBaseDbFaturamento.CdsRecParceAfterInsert(DataSet: TDataSet);
begin
     inherited;
     CdsRecParceFAT_REGISTRO.asinteger:=dbInicio.GetNextSequence( 'GEN_FAT_PC01_REGISTRO');

end;

procedure TfrmBaseDbFaturamento.LancaRateioCentroCustoBasePlano(const sRegistro, sTipo, sContaFinanceira :string; sPerfilRateio:String);
Var
   QryReg:TSQLQuery;
   sQuery, sTipoRateio, sCentroCusto, sReferencia,sNivel, sPcx_codigo, sTipoLancamento:string;
   dDataVencimento:TDateTime;
   qtdeNivel,posicaoUltimoPonto,I:Integer;
begin
     ExecSql( 'DELETE FROM fin_rateio WHERE fir_registro_cp_cr = '+qStr(sRegistro)+' and fir_registro_tipo = '+qStr(sTipo)+ConcatSe( ' and ', dbInicio.ExclusivoSql('PAGAR') ) );
     if (sTipo = 'R') then
        ExecSql( 'UPDATE FAT_PC01 SET PCXPF_REGISTRO = '+QStr('0')+' WHERE FAT_REGISTRO = '+QStr(sRegistro) )
     else
        ExecSql( 'UPDATE PAG_PC01 SET PCXPF_REGISTRO = '+QStr('0')+' WHERE PAG_REGISTRO = '+qStr(sRegistro) );

     sTipoRateio := BuscaUmDadoSqlAsString ('SELECT CCT_PERFIL_RATEIO FROM CCT_0000 WHERE CCT_CODIGO = '+qStr(sContaFinanceira) );

     if (sTipoRateio <> 'M') then
     begin
          if (sTipo = 'R') then
             dDataVencimento := BuscaUmDadoSqlAsInteger ('SELECT FPC_VENCTO FROM FAT_PC01 WHERE FAT_REGISTRO = '+QStr(sRegistro) )
          else
             dDataVencimento := BuscaUmDadoSqlAsInteger ('SELECT PPC_VENCTO from PAG_PC01 WHERE PAG_REGISTRO = '+QStr(sRegistro) );
          //Retorna Perfil
          sPerfilRateio := BuscaUmDadoSqlAsString( 'SELECT min(PCXPF_REGISTRO) '+
                                                   'from PCX0000_PERFIL '+
                                                   'WHERE PCXPF_DATA_INICIAL <= '+dateToSql(dDataVencimento)+
                                                   ' and PCXPF_DATA_FINAL >= '+DateToSql(dDataVencimento) );
     end;

     if (sPerfilRateio = '') then
     begin
          sPerfilRateio := '-1'; //Caso tenha sido informado o Centro de custo no pedido rateia como 100%
          if (sTipo = 'R') then
             sCentroCusto := BuscaUmDadoSqlAsString( 'SELECT t2.PCX_CODIGO FROM FAT_PC01 T1 '+
                                                     '       JOIN FAT0000 T2 ON (T2.FAT_CODIGO = t1.FAT_CODIGO and t2.CLI_CODIGO = t1.CLI_CODIGO) '+
                                                     'WHERE t1.FAT_REGISTRO = '+qStr(sRegistro) )
          else
            sCentroCusto := BuscaUmDadoSqlAsString( 'SELECT t2.PCX_CODIGO FROM PAG_PC01 T1 '+
                                                    '       JOIN PAG0000 T2 ON (T2.PAG_CODIGO = t1.PAG_CODIGO and t2.FOR_CODIGO = t1.FOR_CODIGO) '+
                                                    'WHERE t1.PAG_REGISTRO = '+qStr(sRegistro) );
         if (sCentroCusto <> '') then
         begin
              //fernando implementar 061294
              sNivel := BuscaUmdadoSqlasString( 'SELECT PCX_NIVEL FROM PCX0000 T1 WHERE t1.PCX_CODIGO = '+qStr(sCentroCusto) );
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
                   if (I < 4) then
                      sPcx_codigo := BuscaUmdadoSqlasString( 'SELECT * FROM PCX0000 T1 WHERE t1.PCX_NIVEL = '+QuotedStr(copy(sNivel,0,(I * 3))) )
                   else
                      sPcx_codigo := BuscaUmdadoSqlasString( 'SELECT * FROM PCX0000 T1 WHERE t1.PCX_NIVEL = '+QuotedStr(copy(sNivel,0,(I * 3)+1)));
                   sTipoLancamento := 'L';
                   if (I <> qtdeNivel) then
                      sTipoLancamento := 'T';
                   ExecSql( 'INSERT INTO FIN_RATEIO ( EMP_CODIGO, FIR_REGISTRO_CP_CR, FIR_REGISTRO_TIPO, FIR_INDICE, '+
                            '                         FIR_INDICE_REAL, FIR_TIPO, PCX_CODIGO) '+
                            'VALUES ('+qStr(dbInicio.Empresa.EMP_CODIGO)+', '+
                            '        '+qStr(sRegistro)+','+
                            '        '+qStr(sTipo)+','+
                            '        '+qStr('100')+','+
                            '        '+qStr('1')+','+
                            '        '+qStr(sTipoLancamento)+','+
                            '        '+qStr(StrZero(sPcx_codigo,3))+')' ) ;
                   //Atualiza Perfil Rateio
                   if (sTipo = 'R') then
                      ExecSql( 'UPDATE FAT_PC01 SET PCXPF_REGISTRO = '+qStr('0')+' WHERE FAT_REGISTRO = '+qStr(sRegistro) )
                   else
                      ExecSql( 'UPDATE PAG_PC01 SET PCXPF_REGISTRO = '+qStr('0')+' WHERE PAG_REGISTRO = '+qStr(sRegistro) );
              end;
         end;
     end;
     if (sTipoRateio = 'C') then
     begin
          OpenAux3( 'SELECT PCX_CODIGO, PPC_INDICE_REAL, PPC_TIPO '+
                    'FROM PCX0000_PERFIL_COLABORADOR T1 '+
                    'WHERE PPC_QUANTIDADE > 0 and PCXPF_REGISTRO = '+qStr(sPerfilRateio)+
                    '      and t1.CCT_0000 = '+qStr(sContaFinanceira)) ;
          while (not qAux3.eof) do
          begin
               ExecSql( 'INSERT INTO FIN_RATEIO ( EMP_CODIGO, FIR_REGISTRO_CP_CR, FIR_REGISTRO_TIPO, FIR_INDICE, '+
                        '                         FIR_INDICE_REAL, FIR_TIPO, PCX_CODIGO) '+
                        'VALUES ('+qStr(dbInicio.Empresa.EMP_CODIGO)+', '+
                        '        '+qStr(sRegistro)+','+
                        '        '+qStr(sTipo)+','+
                        '        '+FloatToSql( qAux3.Fields[1].asFloat * 100 )+','+
                        '        '+FloatToSql( qAux3.Fields[1].asFloat )+','+
                        '        '+qStr(qAux3.Fields[2].AsString )+','+
                        '        '+qStr(qAux3.Fields[0].AsString)+')' );
               //Atualiza Perfil Rateio
               if (sTipo = 'R') then
                  ExecSql( 'UPDATE FAT_PC01 SET PCXPF_REGISTRO = '+qStr(sPerfilRateio)+' WHERE FAT_REGISTRO = '+qStr(sRegistro) )
               else
                  ExecSql( 'UPDATE PAG_PC01 SET PCXPF_REGISTRO = '+qStr(sPerfilRateio)+' WHERE PAG_REGISTRO = '+qStr(sRegistro) );
               qAux3.Next;
          end;
     end
     else
     if (sTipoRateio = 'P') then
     begin
          OpenAux3( 'SELECT PCX_CODIGO, PCXP_INDICE, PCXP_INDICE_REAL, PCXP_TIPO '+
                    'FROM PCX0000_PLANO '+
                    'WHERE CCT_0000 = '+qStr(sContaFinanceira)+' and PCXP_INDICE > 0 and PCXPF_REGISTRO = '+qStr(sPerfilRateio) );
          while (not qAux3.eof) do
          begin
               ExecSql( 'INSERT INTO FIN_RATEIO ( EMP_CODIGO, FIR_REGISTRO_CP_CR, FIR_REGISTRO_TIPO, FIR_INDICE, '+
                        '                         FIR_INDICE_REAL, FIR_TIPO, PCX_CODIGO) '+
                        'VALUES ('+qStr(dbInicio.Empresa.EMP_CODIGO)+', '+
                        '        '+qStr(sRegistro)+','+
                        '        '+qStr(sTipo)+','+
                        '        '+FloatToSql( qAux3.Fields[1].asFloat )+','+
                        '        '+FloatToSql( qAux3.Fields[2].asFloat )+','+
                        '        '+qStr(qAux3.Fields[3].AsString )+','+
                        '        '+qStr(qAux3.Fields[0].AsString )+')' );
               //Atualiza Perfil Rateio
               if (sTipo = 'R') then
                  ExecSql('UPDATE FAT_PC01 SET PCXPF_REGISTRO = '+qStr(sPerfilRateio)+' WHERE FAT_REGISTRO = '+qStr(sRegistro) )
               else
                  ExecSql('UPDATE PAG_PC01 SET PCXPF_REGISTRO = '+qStr(sPerfilRateio)+' WHERE PAG_REGISTRO = '+qStr(sRegistro) );
               qAux3.Next;
          end;
     end;
end;

Procedure TfrmBaseDbFaturamento.ParcelarRec( wValor, wValor1Parcela, wValor_retencao :Double;
                                             const wBanco, wCobranca, wTpDocuto, wCct_codigo, wPcx_codigo, wFatCodigo, wPcl_Codigo:String;
                                             var wDataE:Tdatetime;
                                             const pRepCodigo, pCliCodigo, serie: string;const FPG: Integer; const integrar : boolean ; const TipoFaturamento, Emp_Codigo : string) ;
var
   wdia,wmes,wano,wdiaAux:string;
   wvencto  : TDateTime;
   waux1, difRetencao   : Double;
   dValorEntrada,  dTotal, retAux1, retAux2  : Double;
   wintervalo,wnumerParce, iNumeroParcelaPrazo,  n: Integer;
   registro : integer;
///
   function numeroParcelasAlterado(i:Integer):Integer;
   var
      value:string;
   begin
        try
           value := '0';
           while (StrToInt(value) < 1) do
                 value := InputBox('Confirma o Número de Parcelas ?', 'Número de Parcelas:', IntToStr(i));
        except
             numeroParcelasAlterado(i);
        end;
        Result := StrToInt(value);
   end;
///
    procedure OpenCdsRecParce;
    begin
       CdsRecParce.Close;

       qRecParce.Sql.Text := 'Select * '+//fpc.*, fp.FPG_DESCRICAO,  b.BAN_APELIDO '+
                             'from FAT_PC01 fpc '+
//                             ' LEFT JOIN FORMA_PAGAMENTO fp ON (fp.FPG_REGISTRO = fpc.FPG_REGISTRO) '+
//                             ' LEFT JOIN BAN0000 b ON (b.ban_codigo = fpc.BAN_CODIGO)  '+
                             'WHERE FAT_CODIGO = '+qStr( strzero(wFatCodigo,6) )+
                             ConcatSe ( ' and ' , iif ( iNumeroParcelaPrazo=1 , '' ,'FPC_NUMER = '+qStr(StrZero(IntToStr(WNumerParce),2))))+
                             ConcatSe ( ' and fpc.', dbInicio.ExclusivoSql( 'RECEBER' ) )  +
                             iif(integrar,'and 1=0','');
                             ;
       CdsRecParce.Open;
    end;
////
    procedure AtualizaParcela;
    var  VLPARC, Retencao : double;
    begin
         if (wnumerParce = 1)and(dValorEntrada > 0) then
         begin
              VLPARC   := dValorEntrada;
              {Passa diferença dos centavos p/ parcela. Caso exista }
              if WAux1 <> 0 then
              begin
                   VLPARC := dValorEntrada + waux1;
                   if (qAux.FieldByName('PCL_TIPO').AsString = 'F') then //Fixo
                      waux1 := 0
                   else
                      WAux1 := WAux1 - 1;
              end;
              if difRetencao <>0 then
              begin
                 Retencao := RoundTo( dValorEntrada * wValor_retencao / dTotal,-2) + difRetencao;
                 difRetencao := difRetencao-1;

              end;

         end
         else
         begin
              VLPARC   := wvalor;
              Retencao := RoundTo( wvalor * wValor_retencao / dTotal,-2) ;
              {Passa diferença dos centavos p/ parcela. Caso exista }
              if WAux1 <> 0 then
              begin
                   VLPARC := uteis.RoundTo( wvalor + waux1, -2);
//                   waux1 := 0; // ainda vai ser usado para atualizar a parcela mais a frente, não pode zerar
              end;
              if difRetencao <>0 then
               Retencao :=  Retencao + difRetencao;
         end;
      ExecSql(' update FAT_PC01 '+
                    ' set  FPC_VLPARC = FPC_VLPARC+ '+FloatToSQL(VLPARC) +
                    ' , FPC_VL_RET = FPC_VL_RET +'+FloatToSQL(Retencao) +
                    iif(TipoFaturamento= 'S',' , FPC_VALR_SERVICOS = ' + FloatToSQL(VLPARC) , '')+ //' , FPC_VALR_SERVICOS = 0')+
                   ' WHERE FAT_CODIGO  = '+QuotedStr(StrZero(wFatCodigo,6)) +
                   ' and FPC_NUMER = ' +QuotedStr( StrZero(IntToStr(WNumerParce),2))
                   )


    end;
    function BaixaAutomatica(sFaturaRegistro,
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
    begin
      Result := ContasReceberBaixa(sFaturaRegistro,
                            sContaBancoRegistro,
                            sFormaPgtoRegistro,
                            sUsuarioCodido,
                            rPendente,
                            rBaixar,
                            rDesconto,
                            rJuros,
                            rMulta,
                            rRecebido, dDataRecebimento)
    end;
    Procedure InsereParcela (const emp_codigo :string) ;
    VAR bliquida : boolean;
    begin
       registro := 0 ;
       if integrar then
       begin
         registro :=    BuscaUmDadoSqlAsInteger(' select fat_registro from FAT_PC01 '+
                                 ' WHERE fat_codigo  = '+QuotedStr(StrZero(wFatCodigo,6)) +
                                 ' and FPC_NUMER = ' +QuotedStr( StrZero(IntToStr(WNumerParce),2))
                                 );
        if integrar and (registro > 0)  then
         AtualizaParcela

       end;
         bliquida := ( BuscaUmDadoSqlAsString('select FPG_BAIXARECEBER from FORMA_PAGAMENTO where fpg_registro = '+IntToStr(FPG)) = 'S');

         CdsRecParce.append;
         CdsRecParceEMP_CODIGO.AsString := emp_codigo;
         CdsRecParceFAT_CODIGO.AsString     := StrZero(wFatCodigo,6);
         CdsRecParceREP_CODIGO.AsString     := pRepCodigo;
         CdsRecParceFPC_DTEMIS.AsDateTime   := wDataE;
         CdsRecParceUSU_CODIGO.asstring := dbInicio.Usuario.CODIGO;
         CdsRecParceUSU_LOGIN.asString  := dbInicio.Usuario.USERNAME;
         CdsRecParceFAT_NUMSERIE.AsString := serie;
         if wBanco <> '' then
         begin

              CdsRecParceBAN_CODIGO.AsString  := wBanco;
              CdsRecParceBAN_COD_APELIDO.AsInteger := BuscaUmDadoSqlAsInteger( 'select BAN_COD_APELIDO from ban0000 where ban_codigo = '+qStr( wBanco )+ConcatSe(' and ', dbinicio.ExclusivoSql('BANCOS')));
              CdsRecParceBAN_APELIDO.AsString := BuscaUmDadoSqlAsString( 'select BAN_APELIDO from ban0000 where ban_codigo = '+qStr( wBanco )+ConcatSe(' and ', dbinicio.ExclusivoSql('BANCOS')));
         end;
         if wCct_codigo <> '' then
            CdsRecParceCCT_CODIGO.AsString  := wCct_codigo;
         if wPcx_codigo <> '' then
            CdsRecParcePCX_CODIGO.AsString  := wPcx_codigo;
         CdsRecParceFPC_NPARCELAS.AsInteger := iNumeroParcelaPrazo;
         if (wnumerParce = 1)and(dValorEntrada > 0) then
         begin
              CdsRecParceFPC_VLPARC.AsCurrency   := dValorEntrada;
              CdsRecParceFPC_VL_RET.AsCurrency := RoundTo( CdsRecParceFPC_VLPARC.AsCurrency * wValor_retencao / dTotal,-2);
              {Passa diferença dos centavos p/ parcela. Caso exista }
              if WAux1 <> 0 then
              begin
                   CdsRecParceFPC_VLPARC.AsCurrency := dValorEntrada + waux1;

                   if (qAux.FieldByName('PCL_TIPO').AsString = 'F') then //Fixo
                      waux1 := 0
                   else
                      WAux1 := WAux1 - 1;
              end;
              if difRetencao <> 0  then
              begin
                 CdsRecParceFPC_VL_RET.AsCurrency :=  RoundTo( dValorEntrada * wValor_retencao / dTotal,-2) + difRetencao;
                 difRetencao := difRetencao -1;
              end;

         end
         else
         begin
              CdsRecParceFPC_VLPARC.AsCurrency   := wvalor;
              CdsRecParceFPC_VL_RET.AsCurrency := RoundTo( CdsRecParceFPC_VLPARC.AsCurrency * wValor_retencao / dTotal,-2);
              {Passa diferença dos centavos p/ parcela. Caso exista }
              if WAux1 <> 0 then
              begin
                   CdsRecParceFPC_VLPARC.AsCurrency := uteis.RoundTo( wvalor + waux1, -2);
                   waux1 := 0;
              end;
              if difRetencao <>0  then
              begin
                 CdsRecParceFPC_VL_RET.AsCurrency := RoundTo(wvalor * wValor_retencao / dTotal,-2)+difRetencao;
                 difRetencao := 0

              end;
         end;
        // if (qAux.FieldByName('PCL_TIPO').AsString = 'F') then //Fixo        // 04/03/17 tem que validar sendo fixo ou nao o prazo
            if (wValor1Parcela > 0) then //impostos na 1 parcela
            begin
                 CdsRecParceFPC_VLPARC.AsCurrency := CdsRecParceFPC_VLPARC.AsCurrency + wValor1Parcela;
                 CdsRecParceFPC_VL_RET.AsCurrency := RoundTo( CdsRecParceFPC_VLPARC.AsCurrency * wValor_retencao / dTotal,-2);
                 wValor1Parcela := 0;
            end;
//         if iNumeroParcelaPrazo > 1 then // se  mais de uma parcela gravar numero da parcela
            CdsRecParceFPC_NUMER.AsString          := StrZero(IntToStr(WNumerParce),2);
  //       else
    //         CdsRecParceFPC_NUMER.AsString          := ;
         CdsRecParceFPC_VENCTO.AsDateTime          := WVencto;
         CdsRecParceCLI_CODIGO.AsString            := pCliCodigo;

         if (qAux.FieldByName('pcl_baixa_automa').AsString = 'S') OR bliquida then
         begin
           CdsRecParceFPC_SITPAG.AsString            := 'L'; //padrao é sempre entrar como pendente
           CdsRecParceFPC_STATUS.AsString            := 'Liquidada';
           CdsRecParceFPC_PAGTO.AsDateTime           := now;
           CdsRecParceFPC_VLPAGO.AsCurrency          := CdsRecParceFPC_VLPARC.AsCurrency;
           CdsRecParcefpc_obs.AsString               := 'BAIXA AUTOMATICA';

         end
         else
         begin
           CdsRecParceFPC_SITPAG.AsString            := 'P'; //padrao é sempre entrar como pendente
           CdsRecParceFPC_STATUS.AsString            := 'Pendente';
         end;
         CdsRecParceFPC_IMPDUP.AsString            := 'N';
         CdsRecParceFPC_STATUS_REMESSA.AsString    := 'N';
         CdsRecParceFPC_DESCONTADO.AsString        := 'N';
         CdsRecParceFPC_EXCLUSAO.AsString          := 'N';
         CdsRecParceFPC_CONFIRMADEVOLUCAO.AsString := 'N';
         CdsRecParceFPC_PREVISAO.AsString := 'N';
         CdsRecParceFPC_COBTIPO.AsString  := wCobranca;
         CdsRecParceFPC_TIPODOC.AsString  := wTpDocuto;
         CdsRecParceFPG_REGISTRO.AsInteger := FPG;
         if fpg > 0  then
           CdsRecParceFPG_DESCRICAO.AsString := BuscaUmDadoSqlAsString( 'SELECT  FPG_DESCRICAO FROM FORMA_PAGAMENTO  where FPG_REGISTRO = '+IntToStr( fpg ));
         CdsRecParce.Post;
         if qAux.FieldByName('pcl_baixa_automa').AsString = 'S' then //baixa automatica
             BaixaAutomatica( IntToStr(CdsRecParceFAT_REGISTRO.asinteger),
             wBanco,  //conta do banco
             inttostr(fpg),   //forma de pagamento
             dbInicio.Usuario.CODIGO, //usuario
             0 {valor pendente},CdsRecParceFPC_VLPARC.AsCurrency {valor baixado = valor da parcela},0 {desconto },0 {juros },  0{multa},
             CdsRecParceFPC_VLPARC.AsCurrency , // valor recebido
             now )// datarecebido
    end;
///

    Procedure CalculaVencimento;
    begin
         //Desmenbra data da variável
         wDia:= FormatDateTime('dd',wVencto);
         wDiaAux := Wdia;
         wMes:= FormatDateTime('mm',wVencto);
         wAno:= FormatDateTime('yyyy',wVencto);
         // Incrementa meses da data Ex: se interv 60 = 2 meses
         wMes := IntToStr(StrToInt(wMes) + (wIntervalo div 30));
         //IFs que verifican validade de datas
         IF (WMes = '2') and ((WDia = '29') or (WDia = '30') or (WDia = '31')) then
            WDia := '28'
         Else
         IF (WMes = '4') and (WDia = '31') then
            WDia := '30'
         Else
         IF (WMes = '6') and (WDia = '31') then
            WDia := '30'
         Else
         IF (WMes = '9') and (WDia = '31') then
            WDia := '30'
         Else
         IF (WMes = '11') and (WDia = '31') then
            WDia := '30';
         // se mes passar do ano corrente ou passar um ano, ou mais
         if (((StrToInt(WMes) div 12)=1)and((StrToInt(WMes) mod 12)>0)) or ((StrToInt(WMes) div 12)>1)   then
         Begin
              //se sobra meses
              if (StrToInt(WMes) mod 12)>0 then
              begin
                   WAno := IntToStr(StrToInt(WAno)+ StrToInt(WMes) div 12);
                   // a sobra da divisão equivale ao mes Ex:14 div 12 = fevereiro
                   WMes := StrZero(IntToStr(StrToInt(WMes) mod 12),2);
              end
              else //Ex:24 meses div por 12 = 2anos  / -1 porque não passou de dezembro
                   WAno := IntToStr(StrToInt(WAno)+ (StrToInt(WMes) div 12)-1);
         end;
         // Passa vencto correto
         WVencto := StrToDateTime(WDia+'/'+StrZero(WMes,2)+'/'+WAno);
         WDia    := WDiaAux;
    end;
///
Begin

    wValor := Uteis.RoundTo(wValor, -2);
    dValorEntrada := 0;

    iNumeroParcelaPrazo := 0;

    if (wValor1Parcela > 0) then
        wValor := wValor - wValor1Parcela;

    dTotal := wValor;

    OpenAux ( 'SELECT * FROM PCL0000 '+
              'where PCL_CODIGO = '+qStr(wPCL_CODIGO)+
              ConcatSe(' and ', dbInicio.ExclusivoSql( 'TABELAS' ) ) );

    if (qAux.IsEmpty) then
       GeraException('O prazo do Pedido esta em branco ou errado no cadastro. Não confirme, estorne este faturamento, volte ao pedido e coloque o prazo.')
    else
    begin

         if dbInicio.empresa.WPMT_FAT_CONFIRMA_PARCELA then
         begin
              iNumeroParcelaPrazo := numeroParcelasAlterado(qAux.FieldByName('PCL_NPARCELAS').AsInteger);
              while MessageDlg(Pchar('Confirma as parcelas em R$ '+FormatFloat('###,###,##.00',wValor/iNumeroParcelaPrazo)), mtConfirmation,[mbYes, mbNo], 0) <> 6  do
                    iNumeroParcelaPrazo := numeroParcelasAlterado(iNumeroParcelaPrazo);
         end
         else
             iNumeroParcelaPrazo :=  qAux.FieldByName('PCL_NPARCELAS').AsInteger;

         {aplica descto}
         if qAux.FieldByName('PCL_DESCTO').AsCurrency <> 0 then
            wvalor := int(100*(wvalor-((wvalor*qAux.FieldByName('PCL_DESCTO').AsCurrency)/100)))/100;

         //Verifica % entrada
         if (qAux.FieldByName('PCL_PERCENTUAL_PRIMEIRA_P').AsCurrency > 0) then
         begin
              dValorEntrada := Uteis.RoundTo(wvalor * (qAux.FieldByName('PCL_PERCENTUAL_PRIMEIRA_P').AsCurrency/100),-2);
              wvalor := wvalor - dValorEntrada;
         end;
         wvalor:=int(100*(wvalor/(iNumeroParcelaPrazo-(IIF(dValorEntrada > 0,IIF(iNumeroParcelaPrazo > 1,1,0),0 )))))/100;

         wValor:=Uteis.RoundTo( wValor , -2 ) ;

         if (dValorEntrada > 0 ) and (iNumeroParcelaPrazo > 1) then
         begin
           n:= iNumeroParcelaPrazo-1;
         end
         else
           n:= iNumeroParcelaPrazo;


         wAux1 := Uteis.RoundTo( (dTotal - (((wvalor * n )+dValorEntrada))), -2);

         retAux1 :=  RoundTo(dValorEntrada*wValor_retencao/dTotal,-2);      //entrada
         retAux2 :=  RoundTo(wvalor*wValor_retencao/dTotal,-2);             //parcelas
         difRetencao := Uteis.RoundTo( (wValor_retencao - ((retAux2 * n )+ retAux1  )), -2);

         OpenCdsRecParce ;

         if (qAux.FieldByName('PCL_TIPO').AsString = 'F') then //Tipo Fixo
         begin
              wnumerParce := 0;
              wintervalo := qAux.FieldByName('PCL_DIASENTREP').Value;
              while wnumerParce <> iNumeroParcelaPrazo do
              begin
                   wnumerParce := wnumerParce + 1;
                   if wnumerParce = 1 then
                   begin
                        wVencto := wDataE;
                        wVencto := wVencto + (qAux.FieldByName('PCL_CARENC_PRI').AsInteger);
                   end
                   else  //Se não for a 1ª parcela
                   begin
                        if qAux.FieldByName('PCL_MANTERDIA').AsString = 'N' then
                           wVencto := wVencto + wIntervalo
                        else //Caso manter dia do vencimento
                           CalculaVencimento ;
                   end;
                   //if not (CdsRecParceFPC_NPARCELAS.AsInteger > 0) and (iNumeroParcelaPrazo = 1) then
                   InsereParcela (Emp_Codigo);
              end;
         end
         else  //Tipo Variavel
         begin
              OpenAux2 ( 'SELECT * FROM PCL_PARCELA '+
                         'where PCL_CODIGO = '+QStr( qAux.FieldByName('PCL_CODIGO').AsString )+
                         ConcatSe(' and ', dbInicio.ExclusivoSql( 'TABELAS' ) )+
                         'ORDER BY PCP_DIA' );

              while (not qAux2.Eof) do
              begin
                   wnumerParce := wnumerParce + 1;
                   if wnumerParce = 1 then
                   begin
                        //wVencto := wDataE;
                        wVencto := wDataE + (qAux2.FieldByName('PCP_DIA').AsInteger);
                   end
                   else // Se não for a 1ª parcela
                   begin
                        if qAux.FieldByName('PCL_MANTERDIA').AsString = 'N' then
                           wVencto := wDataE + (qAux2.FieldByName('PCP_DIA').AsInteger)
                        else  // Caso manter dia do vencimento
                           CalculaVencimento ;
                   end;
//                   if not (CdsRecParceFPC_NPARCELAS.AsInteger > 0) and (iNumeroParcelaPrazo = 1) then


                   InsereParcela (Emp_Codigo);
                   qAux2.Next;
              end;
         end;
    end;
end;




end.
