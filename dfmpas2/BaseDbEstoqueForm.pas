unit BaseDbEstoqueForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBForm, Data.DBXFirebird, Data.DB, Data.SqlExpr, ACBrEnterTab, ACBrBase, ACBrCalculadora, Vcl.ExtCtrls, Data.FMTBCd;

type
  TfrmBaseDbEstoque = class(TfrmBaseDB)
    qAuxEstorna: TSQLQuery;
    qAuxEstornaItem: TSQLQuery;
  private
    function KardexAdicionaRetiraSaldo(const sProduto, sAlmoxarifado: String; const rQuantidade: Real; Quantidade: Real = 0): double;
    function KardexAdicionaRetiraSaldoEmpresa(  sEmpresa, sProduto,sAlmoxarifado: String;const rQuantidade: Real): Boolean;
	public
    function KardexRetornaSaldo(const sProduto, sAlmox, sEmpresa: String): Real;
    function KardexLancamento(const sRegistroInterno, sTipoRegistro, sAlmoxarifado, sAlmoxarifadoDestino, sProduto, sGrade, sUnidadeMedida, sTipoES, sLote: string;
             sLoteRegistro: Variant; sObservacao: String; dDataEntradaSaida: TDateTime; rQuantidade: Real;const  sDocumento, sDescricao: String; rPreco: Real;
             const cli_codigo: string = '' ;const for_codigo : string = ''; const col_codigo: string = '' ; sreferencia: string = '';
             const EIndustrializacao: boolean = False; const sDescricaoIndus:string =''): double;
    function KardexLancamentoEmpresa( sEmpresa, sRegistroInterno, sTipoRegistro, sAlmoxarifado, sAlmoxarifadoOrigem, sProduto, sGrade, sUnidadeMedida, sTipoES, sLote, sLoteRegistro, sObservacao: String;
                                      dDataEntradaSaida: TDateTime; rQuantidade: Real; sDocumento, sDescricao: String; rPreco: Real): Boolean;


    function AtualizarObsKardex(const prd_codigo, ped_codigo, obs : string): boolean;
    procedure CancelamentoFatura(const NF_NOTANUMBER, PED_CODIGO, OPE_CODIGO, OPE_NATUREZA: string; const NF_TOT_PROD, NF_VL_DESCTO: double; const NF_NUM_NFE: integer; NF_VL_SUBTRIB,NF_VL_IPI : double);
  end;

var
  frmBaseDbEstoque: TfrmBaseDbEstoque;

implementation

{$R *.dfm}

uses uteis, iniciodb, rwfunc ;

function TfrmBaseDbEstoque.KardexRetornaSaldo(const sProduto, sAlmox, sEmpresa : String):Real;
var
  rest : string;
begin
 rest := '';
 if dbInicio.Exclusivo('ESTOQUES') then
 begin
  if sEmpresa = '' then
    rest := 'emp_codigo='+qStr(DBInicio.Empresa.EMP_CODIGO)
  else
    rest := 'emp_codigo='+qStr(sEmpresa)


 end;

//  result := DBInicio.BuscaUmDadoSqlAsFloat(' SELECT FIRST 1 kas_saldo '+
 result := DBInicio.BuscaUmDadoSqlAsFloat(' SELECT sum(kas_saldo) '+
                                          ' FROM kardex_almox_saldo '+
                                          ' WHERE prd_codigo = '+qStr(sProduto)+
                                          ' and amx_codigo='+qStr(sAlmox)+
                                        ConcatSe (' and ',rest ) );

end;


procedure TfrmBaseDbEstoque.CancelamentoFatura(const NF_NOTANUMBER, PED_CODIGO, OPE_CODIGO, OPE_NATUREZA: string; const NF_TOT_PROD, NF_VL_DESCTO: double; const NF_NUM_NFE: integer;
                                                  NF_VL_SUBTRIB,NF_VL_IPI : double );
var amx_destino, amx_origem : string;
    opvBaixarEstoquePeloFaturamento: boolean;
    saldo : double;
begin
   //retorna o credito do cliente
  OpenAux(' SELECT * FROM CONTA_FATURA '+
          ' WHERE fat_registro = '+
          ' (SELECT fat_registro FROM FAT0000 fat WHERE fat_codigo = '+QuotedStr(NF_NOTANUMBER) +
               ConcatSe(' and fat.',DBInicio.ExclusivoSql('RECEBER')  )+')' );

   if not qAux.IsEmpty then
   begin
      ExecSql( ' Delete from CONTA_FATURA where FAT_REGISTRO = '+ IntToStr(qAux.FieldByName('FAT_REGISTRO').AsInteger ) );
      qaux.First;
      while not qAux.Eof do
      begin

        ExecSql('UPDATE CONTA_CORRENTE SET VALOR_UTILIZADO  = VALOR_UTILIZADO - '+FloatToSQL(qAux.FieldByName('CFA_VALOR').AsFloat) +
                ' WHERE codigo = '+QuotedStr(qAux.FieldByName('CODIGO_CONTA').asstring  )) ;
        qaux.Next;
      end;



   end;

   ExecSql( 'DELETE FROM FAT_RECEBIMENTO  WHERE EXISTS  '   +
            ' (SELECT 1 FROM FAT_PC01 fat WHERE FAT_RECEBIMENTO.FAT_REGISTRO = fat.FAT_REGISTRO and FAT_CODIGO = '+ QuotedStr(NF_NOTANUMBER)+
            ConcatSe(' and fat.',DBInicio.ExclusivoSql('RECEBER') ) +')'

            );

   ExecSql( SQLDEF('RECEBER','Delete from FAT0000 ','where FAT_CODIGO = '+ QuotedStr(NF_NOTANUMBER),'','') );
   ExecSql( SQLDEF('RECEBER','Delete from FAT_PC01 ','where FAT_CODIGO = '+ QuotedStr(NF_NOTANUMBER),'','') );
   ExecSql( SQLDEF('RECEBER','Delete from NF_PC01 ','where FAT_CODIGO = '+ QuotedStr(NF_NOTANUMBER),'','') );


   qAuxEstorna.Close;
//   qAuxEstorna.SQL.Text:= SQLDEF('RECEBER','Select P1.* from NF_IT01 P1 ','where P1.NF_IT_NOTANUMER = '+QuotedStr(NF_NOTANUMBER)+
//                                 ' AND P1.EMP_CODIGO = '+QuotedStr(dbInicio.Empresa.EMP_CODIGO),'P1.NF_IT_NOTANUMER,P1.PRD_REFER','P1.');
   qAuxEstorna.SQL.Text:= SQLDEF('RECEBER','Select P1.* from NF_IT01 P1 ','where P1.NF_IT_NOTANUMER = '+
                                  QuotedStr(NF_NOTANUMBER),'P1.NF_IT_NOTANUMER,P1.PRD_REFER','P1.');



   qAuxEstorna.Open;
   with qAuxEstornaItem, SQL do
   begin
      clear;
      Add( 'Select alm.AMX_CODIGO, ITP.AMX_CODIGO_DESTINO, ITP.PED_CODIGO, IIF(ITP.PRD_REFER='+qStr('')+', ITP.prdco_codigo_original, ITP.PRD_REFER) AS PRD_REFER, ITP.prf_produto_agregado, NF.NF_IT_NOTANUMER,');
      Add( '       NF.NF_QTDE, ITP.PRF_QTDEFAT, ITP.PRD_REFER, ');
      Add( '       ITP.PRF_REGISTRO, PD.PRD_CODIGO,');
      Add( '       NF.PRG_REGISTRO, ITP.PRG_REGISTRO,');
      Add( '       NF.PRDL_REGISTRO, ITP.PRDL_REGISTRO,');
      Add( '       NF.NF_PRECO,');
      Add( '       NF.EMP_CODIGO,');
      Add( '       X1.OPV_ATESTOQUE,');
      Add( '       COALESCE(T1.pti_atualizar_estoque,''S'') AS PTI_ATUALIZAR_ESTOQUE ,');
      Add( '       COALESCE(g1.PGR_ATUALIZA_ESTOQUE,''S'') AS PGR_ATUALIZA_ESTOQUE,');  //EVITAR QUE NÃO TENHA GRUPO O PRODUTO
      Add( '       O1.OPE_ESTOQUE,');
      Add( '       nf.nf_flag_atualiza_estoque,');
      Add( '       cl.NF_ENTR_SAID,');
      Add( '       cl.cli_codigo,');
      Add( '       clie.cli_razao,');
      Add( '       clie.cli_cgc, ');
      Add( '       op.OPV_ESTOQUE_REMESSAINDUS, ');
      Add( '       PDD.amx_codigo,');
      Add( '       (Coalesce(ITP.PRF_QTDE,0) - coalesce(ITP.PRF_QTDEFAT,0)) as PRF_QTDE_FATURAR_CC,');
      Add( '       T1.PTI_SIGLA, ');
      Add( '       ITP.PRF_REGISTRO_VINCULADO ');
      Add( 'from NF_IT01 NF');
      Add( '     join NF0001 CL on (CL.NF_NOTANUMBER=NF.NF_IT_NOTANUMER and cl.emp_codigo=nf.emp_codigo)');
      Add( '     join cli0000 clie on (clie.cli_codigo = cl.cli_codigo)');
      Add( '     left join PED_IT01 ITP on ( (ITP.PRF_REGISTRO = NF.PRF_REGISTRO) or (ITP.PRF_REGISTRO_VINCULADO = NF.PRF_REGISTRO) )');
      Add( '     left join PRD0000 PD on (PD.PRD_REFER = IIF(ITP.PRD_REFER='+qStr('')+', ITP.prdco_codigo_original, ITP.PRD_REFER) )');
      Add( '     left join PRD_EQUIV PQ on (PD.PRD_REFER = PQ.PRD_REFER) and (CL.CLI_CODIGO = PQ.CLI_CODIGO)');
      Add( '     left join OPV0000 X1 ON (X1.opv_codigo = cl.opv_codigo)');
      Add( '     LEFT JOIN PRD_TIPO T1 ON (T1.pti_codigo = pd.pti_codigo)');
      Add( '     left join PRD_GRUPO G1 ON (G1.pgr_codigo = pd.pgr_codigo)');
      Add( '     LEFT JOIN OPE0000 O1 ON (O1.ope_codigo = cl.ope_codigo)');
      Add( '     left join ped0000 PDD on ( PDD.ped_codigo = ITP.ped_codigo) AND PDD.emp_CODIGO=NF.EMP_CODIGO' );
      Add( '     LEFT JOIN ALMOX0000 alm ON (alm.AMX_CNPJ_PART = clie.CLI_CGC)');
      Add( '     left join opv0000 op on (op.opv_codigo = pdd.opv_codigo ) ');
      Add( 'where NF.NF_IT_NOTANUMER = '+QuotedStr(NF_NOTANUMBER));
      if DBInicio.Exclusivo('ESTOQUES') and DBInicio.Exclusivo('PRODUTOS') then
        Add(' and pd.EMP_CODIGO = '+qStr(dbInicio.empresa.emp_codigo) )
      else
        Add(' and pdd.PED_CODIGO = '+qStr(PED_CODIGO) );
      Add( ' order by NF.NF_IT_NOTANUMER,NF.NF_REGISTRO');
   end;

   qAuxEstornaItem.Open ;
   amx_destino := BuscaUmDadoSqlAsString('SELECT AMX_CODIGO FROM ALMOX0000 WHERE AMX_TERCEIROS = ''S'' AND AMX_CNPJ_PART = '+QuotedStr(RetirarMascaraCNPJ_INSC(qAuxEstornaItem.fieldbyname('cli_cgc').AsString))) ;
   qAuxEstornaItem.First;
   While not qAuxEstornaItem.Eof do
   begin
         { se a operação atualiza estoque                    - OPE_ESTOQUE
           se o TIPO DE produto atualiza estoque             - PTI_ATUALIZAR_ESTOQUE
           se o tipo de pedido atualiza estoque              - OPV_ATESTOQUE
           se o grupo de produto atualiza estoque             - PGR_ATUALIZA_ESTOQUE
         }
      if (qAuxEstornaItem.fieldbyname('OPV_ATESTOQUE').AsString = 'S') and (qAuxEstornaItem.fieldbyname('PTI_ATUALIZAR_ESTOQUE').AsString = 'S')
      and (qAuxEstornaItem.fieldbyname('OPE_ESTOQUE').AsString = 'S') and (qAuxEstornaItem.FieldByName('PGR_ATUALIZA_ESTOQUE').AsString = 'S') then
      begin   { se o item da nota atualiza estoque}
              if (qAuxEstornaItem.fieldbyname('NF_FLAG_ATUALIZA_ESTOQUE').AsString = 'S') then
              begin
                       // 1º produto kit e controla kit
                   if  ((qAuxEstornaItem.fieldbyname('PTI_SIGLA').AsString = 'KT') and (DBInicio.Empresa.wPMT_CONTROLA_KIT)) or
                      // 2º produto não é um kit
                       ((qAuxEstornaItem.fieldbyname('PTI_SIGLA').AsString <> 'KT')
                               and ((qAuxEstornaItem.FieldByName('PRF_REGISTRO_VINCULADO').AsInteger = 0) or
                                   (qAuxEstornaItem.FieldByName('PRF_REGISTRO_VINCULADO').IsNull))) or
                      // 3º item do kit e no parametro não controla por kit
                       ((qAuxEstornaItem.fieldbyname('PTI_SIGLA').AsString <> 'KT') and   (qAuxEstornaItem.FieldByName('PRF_REGISTRO_VINCULADO').AsInteger > 0)
                        and not (DBInicio.Empresa.wPMT_CONTROLA_KIT) )


                   then
                   begin

                       // se o a baixa do estoque é por faturamento atualiza o kardex
                       opvBaixarEstoquePeloFaturamento := BuscaUmDadoSqlAsString(
                                        'SELECT op.OPV_BAIXAR_ESTOQUE_PELO_FAT FROM PED0000 pe JOIN OPV0000 op ON (op.OPV_CODIGO = pe.OPV_CODIGO) WHERE pe.PED_CODIGO = ' +
                                        QuotedStr(qAuxEstornaItem.FieldByName('PED_CODIGO').AsString)
                                    ) = 'S';
                      if (dbInicio.Empresa.wAtualizaEstoque = 'F') or (opvBaixarEstoquePeloFaturamento) then
                      begin
                         amx_destino := '';
                         if (qAuxEstornaItem.fieldbyname('PRF_REGISTRO').AsString <> '') then
                         begin
                           if opvBaixarEstoquePeloFaturamento then
                           begin
                             amx_destino := BuscaUmDadoSqlAsString('SELECT AMX_CODIGO FROM ALMOX0000 WHERE AMX_CNPJ_PART = '+QuotedStr(RetirarMascaraCNPJ_INSC(DBInicio.Empresa.CNPJ_CNPF)));
                             amx_origem := amx_destino;
                           end
                           else
                           if (qAuxEstornaItem.FieldByName('cli_cgc').AsString <> '')  and (qAuxEstornaItem.fieldbyname('OPV_ESTOQUE_REMESSAINDUS').AsString = 'S')  then // REMESSA INDUSTRIALIZAÇÃO
                           begin
                               amx_origem := qAuxEstornaItem.fieldbyname('AMX_CODIGO_DESTINO').AsString;
                               amx_destino := BuscaUmDadoSqlAsString('SELECT AMX_CODIGO FROM ALMOX0000 WHERE AMX_CNPJ_PART = '+QuotedStr(RetirarMascaraCNPJ_INSC(qAuxEstornaItem.FieldByName('cli_cgc').AsString)));
                           end
                           else
                           begin
                              OpenAux
                                ('SELECT AMX_CODIGO_DESTINO FROM PED_IT01 '+
                                 ' WHERE PED_CODIGO = '+QuotedStr(qAuxEstornaItem.FieldByName('PED_CODIGO').AsString)+
                                 ' AND PRF_REGISTRO  = '+ IntToStr(qAuxEstornaItem.FieldByName('PRF_REGISTRO').AsInteger) +
                                 ' AND PRD_CODIGO = ' +  QuotedStr(qAuxEstornaItem.FieldByName('PRD_CODIGO').AsString)+
                                 ' and emp_codigo = '+ QuotedStr(DBInicio.Emp_Codigo)
                                 );
                              amx_origem := qAux.FieldByName('AMX_CODIGO_DESTINO').AsString;
                           end;

                         end;


                           if (qAuxEstornaItem.fieldbyname('PRF_REGISTRO').AsString <> '') then
                           begin
                             KardexLancamento(qAuxEstornaItem.fieldbyname('PRF_REGISTRO').AsString,
                                               'NF',
                                               amx_origem, // qAuxEstornaItem.fieldbyname('AMX_CODIGO').AsString,
                                               amx_destino, // qAuxEstornaItem.fieldbyname('AMX_CODIGO_DESTINO').AsString,
                                               qAuxEstornaItem.fieldbyname('PRD_CODIGO').AsString,
                                               qAuxEstornaItem.fieldbyname('PRG_REGISTRO').AsString,
                                               '',
                                               iif( qAuxEstornaItem.fieldbyname('NF_ENTR_SAID').AsString = 'S','E','S'),
                                               '',
                                               '',
                                               'ESTORNO FATURAMENTO',
                                               Now,
                                               qAuxEstornaItem.fieldbyname('NF_QTDE').AsFloat,
                                               qAuxEstornaItem.fieldbyname('NF_IT_NOTANUMER').AsString,
                                               qAuxEstornaItem.fieldbyname('CLI_CODIGO').AsString+'-'+qAuxEstornaItem.fieldbyname('CLI_RAZAO').AsString,
                                               qAuxEstornaItem.fieldbyname('NF_PRECO').AsFloat );

                              if (qAuxEstornaItem.fieldbyname('OPV_ESTOQUE_REMESSAINDUS').AsString = 'S' )
                              and (qAuxEstornaItem.fieldbyname('cli_cgc').AsString <> '')
                              and (not opvBaixarEstoquePeloFaturamento)
                              then
                              begin
                                KardexLancamento(qAuxEstornaItem.fieldbyname('PRF_REGISTRO').AsString,
                                               'NF',
                                               amx_origem, // qAuxEstornaItem.fieldbyname('AMX_CODIGO').AsString,
                                               amx_destino, // qAuxEstornaItem.fieldbyname('AMX_CODIGO_DESTINO').AsString,
                                               qAuxEstornaItem.fieldbyname('PRD_CODIGO').AsString,
                                               qAuxEstornaItem.fieldbyname('PRG_REGISTRO').AsString,
                                               '',
                                               iif( qAuxEstornaItem.fieldbyname('NF_ENTR_SAID').AsString = 'S','S','E'),
                                               '',
                                               '',
                                               'REMESSA INDUSTRIALIZAÇÃO - ESTORNO FATURAMENTO',
                                               Now,
                                               qAuxEstornaItem.fieldbyname('NF_QTDE').AsFloat,
                                               qAuxEstornaItem.fieldbyname('NF_IT_NOTANUMER').AsString,
                                               qAuxEstornaItem.fieldbyname('CLI_CODIGO').AsString+'-'+qAuxEstornaItem.fieldbyname('CLI_RAZAO').AsString,
                                               qAuxEstornaItem.fieldbyname('NF_PRECO').AsFloat );


                              end;


                           end;
                      end;
                   end;

              end;

      end;
      if qAuxEstornaItem.FieldByName('prf_produto_agregado').AsString<>'S' then
      begin
           //Diminui_Qtde_Faturada
           if not qAuxEstornaItem.FIELDBYNAME('PRF_REGISTRO').isnull then
              ExecSql( SQLDEF('RECEBER', 'Update PED_IT01 Set PRF_QTDEFAT = (PRF_QTDEFAT - '+FloatToSql( qAuxEstornaItem.FIELDBYNAME('NF_QTDE').AsFloat )+')',
                                         'where PRF_REGISTRO = '+qStr(qAuxEstornaItem.FIELDBYNAME('PRF_REGISTRO').AsString),'','') );
      end;

      // estorna lote
      if (qAuxEstornaItem.FieldByName('PRDL_REGISTRO').AsInteger > 0) AND (DBInicio.GetParametroSistema('PMT_ATUALIZA_LOTE') = 'F')  then
      begin
        saldo := DBInicio.BuscaUmDadoSqlAsFloat('SELECT PRDL_SALDO FROM PRD_LOTE WHERE PRDL_REGISTRO = ' + qAuxEstornaItem.FieldByName('PRDL_REGISTRO').AsString);
        movimentaLote(qAuxEstornaItem.FieldByName('PRF_REGISTRO').AsInteger, qAuxEstornaItem.FieldByName('PRDL_REGISTRO').AsInteger, screen.ActiveForm.Name, 'E', qAuxEstornaItem.FieldByName('NF_QTDE').AsFloat, Saldo);
      end;

      qAuxEstornaItem.Next;
  end;
   //Atualizando a situacao do Pedido
   ExecSql( 'Update PED0000 SET SitExp = ''PEN'', PED_VLFATURADO = PED_VLFATURADO -PED_VLFRETE - PED_DESP_ACES - PED_VLSEGURO - '+FloatToSql( NF_TOT_PROD -  NF_VL_DESCTO+  NF_VL_SUBTRIB + NF_VL_IPI )+
            ' where PED_CODIGO = '+qStr(PED_CODIGO)+cONCATsE(' And ', dbinicio.ExclusivoSql('PEDIDOS') ) );


   ExecSql(' INSERT INTO HISTORICO_EXPE (HIS_REGISTRO, emp_codigo, SITEXP,DATASIT,USU_CODIGO, PED_CODIGO, OBSERVACAO) '+
           ' VALUES (GEN_ID(GEN_HIST_EXPE,1),'+QuotedStr(DBInicio.Empresa.EMP_CODIGO)+ ', ''PEN'',CURRENT_TIMESTAMP,'+DBInicio.Usuario.CODIGO+
           ','+QuotedStr(PED_CODIGO)  + ','+QuotedStr('ESTORNO DA NOTA')+  ')');



end;

function TfrmBaseDbEstoque.KardexAdicionaRetiraSaldo(const sProduto, sAlmoxarifado:String; const rQuantidade: Real; Quantidade: Real = 0):double;
var i : integer;
    saldoTemp, SaldoKardex : Double;
    prdRefer, prdDescri: string;
begin
    Result := 0;
    i := DBInicio.BuscaUmDadoSqlAsInteger(  'Select cast(count(*) as integer) as conta from KARDEX_ALMOX_SALDO '+
                                  'where AMX_CODIGO = '+QStr(sAlmoxarifado)+
                                  ' and PRD_CODIGO = '+QStr(sProduto)  +
                                  ConcatSe(' and ',dbInicio.ExclusivoSql('ESTOQUES') ));


     if i= 0  then
     begin
          DBInicio.ExecSql( 'insert into KARDEX_ALMOX_SALDO ( EMP_CODIGO, AMX_CODIGO, PRD_CODIGO, KAS_SALDO) '+
                   'values ('+qStr(dbInicio.Empresa.EMP_CODIGO)+', '+
                   '        '+QStr(sAlmoxarifado)+', '+
                   '        '+QStr(sProduto)+', '+
                   '        '+FloatToSql(rQuantidade)+' )')
     end
     Else if i= 1 then
     begin
          DBInicio.ExecSql( 'UPDATE KARDEX_ALMOX_SALDO SET KAS_SALDO = '+FloatToSql(rQuantidade) +
                   ' where AMX_CODIGO = '+QStr(sAlmoxarifado)+
                   ' and PRD_CODIGO = '+QStr(sProduto)  +
                   ConcatSe(' and ',dbInicio.ExclusivoSql('ESTOQUES') )

                   );
     end
     else if i>1 then // anomalia
     begin
        saldoTemp := DBInicio.BuscaUmDadoSqlAsFloat(' Select sum(KAS_SALDO) from KARDEX_ALMOX_SALDO ' +
                                                   'where AMX_CODIGO = '+QStr(sAlmoxarifado)+
                                                  ' and PRD_CODIGO = '+QStr(sProduto)  +
                                                  ConcatSe(' and ',dbInicio.ExclusivoSql('ESTOQUES') ));

        SaldoKardex := DBInicio.BuscaUmDadoSqlAsFloat(' SELECT FIRST 1 KAR_SALDO FROM KARDEX ' +
                                                   'WHERE AMX_CODIGO = ' + QStr(sAlmoxarifado)+
                                                  ' AND PRD_CODIGO = ' + QStr(sProduto)  +
                                                  ConcatSe(' and ',dbInicio.ExclusivoSql('ESTOQUES') ) +
                                                  ' ORDER BY DATA_HORA DESC '
                                                  );

        OpenAux3( 'SELECT PRD_REFER, PRD_DESCRI ' +
                  ' FROM PRD0000 ' +
                  ' WHERE PRD_CODIGO = ' + QuotedStr(sProduto) +
                    ConcatSe(' and ', dbInicio.ExclusivoSql('PRODUTOS') )
                  );
        prdRefer := qAux3.FieldByName('PRD_REFER').AsString;
        prdDescri := qAux3.FieldByName('PRD_DESCRI').AsString;
        MessageDlg('Exitem ' + IntToStr(i) + ' registros para o produto ' + prdRefer + ' - ' + prdDescri +  ' com saldo total de ' + FormatFloat('###,###,###.00', saldoTemp) + ' no banco de dados.' + #13 + #10 +
                   'Eles serão excluídos e um saldo de ' + FormatFloat('###,###,###.00', SaldoKardex - Quantidade) + ' será inserido.' + #13 + #10 +
                   'É fortemente aconselhável que seja feito um balanço neste produto.'
                  , mtWarning, [mbOK], 0);

         //EXCLUI TODAS AS LINHAS E INCLUI SOMENTE UMA

        DBInicio.ExecSql('DELETE FROM KARDEX_ALMOX_SALDO ' +
                         'where AMX_CODIGO = '+QStr(sAlmoxarifado)+
                         ' and PRD_CODIGO = '+QStr(sProduto)  +
                        ConcatSe(' and ',dbInicio.ExclusivoSql('ESTOQUES') ));

        DBInicio.ExecSql( 'insert into KARDEX_ALMOX_SALDO ( EMP_CODIGO, AMX_CODIGO, PRD_CODIGO, KAS_SALDO) '+
                           'values ('+qStr(dbInicio.Empresa.EMP_CODIGO)+', '+
                           '        '+QStr(sAlmoxarifado)+', '+
                           '        '+QStr(sProduto)+', '+
                           '        '+FloatToSql(SaldoKardex - Quantidade)+' )')
                   ;
        Result := SaldoKardex - Quantidade;
                                                           {

        DBInicio.ExecSql( 'UPDATE KARDEX_ALMOX_SALDO SET KAS_SALDO = '+FloatToSql(rQuantidade) +
                 ' where AMX_CODIGO = '+QStr(sAlmoxarifado)+
                 ' and PRD_CODIGO = '+QStr(sProduto)  +
                 ' and EMP_CODIGO =  ( SELECT FIRST 1 EMP_CODIGO FROM KARDEX_ALMOX_SALDO '+
                                      ' where AMX_CODIGO = '+QStr(sAlmoxarifado)+
                                      ' and PRD_CODIGO = '+QStr(sProduto) + ')');             }



     end;

end;

function TfrmBaseDbEstoque.KardexAdicionaRetiraSaldoEmpresa( sEmpresa, sProduto, sAlmoxarifado:String;const  rQuantidade: Real):Boolean;
VAR N:INTEGER;
    REST : string;
    saldoTemp, saldoKardex : Double;
    prdRefer, prdDescri: string;
begin
  if dbInicio.Exclusivo('ESTOQUES') then
  begin
    if sEmpresa = '' then
    begin
      rest := ' and emp_codigo='+qStr(DBInicio.Empresa.EMP_CODIGO);
      sEmpresa :=  DBInicio.Empresa.EMP_CODIGO;
    end
    else
    begin
      rest := ' and emp_codigo='+qStr(sEmpresa);
    end;


  end;
  N := BuscaUmDadoSqlAsInteger('Select cast(count(*) as integer) as conta from    KARDEX_ALMOX_SALDO '+
                                'WHERE AMX_CODIGO = '+QStr(sAlmoxarifado)+' and PRD_CODIGO = '+QStr(sProduto)+ rest);
  SaldoKardex := 0;
  if n > 1 then // anomalia
  begin

        saldoTemp := DBInicio.BuscaUmDadoSqlAsFloat(' Select sum(KAS_SALDO) from KARDEX_ALMOX_SALDO ' +
                                                   'where AMX_CODIGO = '+QStr(sAlmoxarifado)+
                                                  ' and PRD_CODIGO = '+QStr(sProduto)  +
                                                  rest
                                                  );
        SaldoKardex := DBInicio.BuscaUmDadoSqlAsFloat(' SELECT FIRST 1 KAR_SALDO FROM KARDEX ' +
                                                   'WHERE AMX_CODIGO = ' + QStr(sAlmoxarifado)+
                                                  ' AND PRD_CODIGO = ' + QStr(sProduto)  +
                                                  ConcatSe(' and ',dbInicio.ExclusivoSql('ESTOQUES') ) +
                                                  ' ORDER BY DATA_HORA DESC '
                                                  );


        OpenAux3( 'SELECT PRD_REFER, PRD_DESCRI ' +
                  ' FROM PRD0000 ' +
                  ' WHERE PRD_CODIGO = ' + QuotedStr(sProduto) +
                    ConcatSe(' and ', dbInicio.ExclusivoSql('PRODUTOS') )
                  );
        prdRefer := qAux3.FieldByName('PRD_REFER').AsString;
        prdDescri := qAux3.FieldByName('PRD_DESCRI').AsString;

        MessageDlg('Exitem ' + IntToStr(n) + ' registros para o produto ' + prdRefer + ' - ' + prdDescri +  ' com saldo total de ' + FormatFloat('###,###,###.00', saldoTemp) + ' no banco de dados.' + #13 + #10 +
                   'Eles serão excluídos e um saldo de ' + FormatFloat('###,###,###.00', rQuantidade) + ' será inserido.' + #13 + #10 +
                   'É fortemente aconselhável que seja feito um balanço neste produto.'
                  , mtWarning, [mbOK], 0);

         //EXCLUI TODAS AS LINHAS PARA INCLUIR SOMENTE UMA
        DBInicio.ExecSql('DELETE FROM KARDEX_ALMOX_SALDO ' +
                         'where AMX_CODIGO = '+QStr(sAlmoxarifado)+
                         ' and PRD_CODIGO = '+QStr(sProduto)  +
                        ConcatSe(' and ',dbInicio.ExclusivoSql('ESTOQUES') ));
        n := 0;
  end;
  if n = 0 then
   ExecSql( 'insert into KARDEX_ALMOX_SALDO( EMP_CODIGO, AMX_CODIGO, PRD_CODIGO ) '+
            'values ( '+QStr(sEmpresa)+', '+
            '         '+QStr(sAlmoxarifado)+', '+
            '         '+QStr(sProduto)+' )' );

  ExecSql( 'UPDATE KARDEX_ALMOX_SALDO SET KAS_SALDO = '+FloatToSql(rQuantidade)+ ' where AMX_CODIGO = '+QStr(sAlmoxarifado)+' and PRD_CODIGO = '+QStr(sProduto) +   rest)
  ;
end;

{*  ALMOXARIFADO ORIGEM = ALMOXARIFADO , SE FOR DIFERENTE AMOXARIFADO VAI SER O DESTINO E VAI TER ENTRADA E SAIDA *}
function TfrmBaseDbEstoque.KardexLancamento( const sRegistroInterno, sTipoRegistro, sAlmoxarifado, sAlmoxarifadoDestino, sProduto,
                                             sGrade, sUnidadeMedida, sTipoES, sLote:string; sLoteRegistro: Variant; sObservacao:String;
																		 dDataEntradaSaida:TDateTime; rQuantidade:Real;const sDocumento, sDescricao:String; rPreco:Real;
                                     const cli_codigo: string = '' ; const for_codigo : string = '' ; const col_codigo: string = '';sreferencia: string = '';
                                     const EIndustrializacao: boolean = False; const sDescricaoIndus:string =''):double;
var rSaldo: Real;    //saldo geral no almoxarifado
    sql: string;
    LoteInicio : boolean;
    Lote :string;
   I,Max, Min: Integer;
   QtdePRF,
   QTDEPendente, //saldo pendente quando há vários lotes
   Saldo: double; //saldo contido no lote
   SaldoProv : double ; // saldo provisório
   QuantidadeGeral, ValorAnomalo : double; // quantidade real passada, quando não usa lote é o mesmo do rquantidade
begin
  min := 1;
  max := 1;
  if VarIsStr(sLoteRegistro) then
  Begin
    if sLoteRegistro='' then
      Lote := '0'
    else
      Lote := sLoteRegistro
  End
  else
  if VarIsNumeric(sLoteRegistro) and  VarIsOrdinal(sLoteRegistro) then
    Lote := VarToStr(sLoteRegistro)
  else if VarIsEmpty(sLoteRegistro) then
    Lote := '0'
  else if VarIsArray(sLoteRegistro) then
  begin
    min := VarArrayLowBound(sLoteRegistro,1);
    max := VarArrayHighBound(sLoteRegistro,1);

  end;
  QTDEPendente := rQuantidade; // quantidade total que vai sair
  if sObservacao <> 'ZERAR' then
  begin
    if (sAlmoxarifado <> sAlmoxarifadoDestino) or  (sAlmoxarifadoDestino = '') then
      rSaldo := KardexRetornaSaldo(sProduto,sAlmoxarifado,'')
    else
      rSaldo := KardexRetornaSaldo(sProduto,sAlmoxarifadoDestino,'')  ;
  end;
  SaldoProv := rSaldo;
  QuantidadeGeral := rQuantidade ;
  if sObservacao <> 'ZERAR' then
  begin
    if (sAlmoxarifadoDestino <> '') and (BuscaUmDadoSqlAsString('SELECT op.OPV_BAIXAR_ESTOQUE_PELO_FAT FROM NF0001 nf ' +
                              ' JOIN OPV0000 op ON (op.OPV_CODIGO = nf.OPV_CODIGO) WHERE nf.PED_CODIGO = ' +
                               QuotedStr(sDocumento)) = 'S' )
    then
    begin
      ValorAnomalo := KardexAdicionaRetiraSaldo(sProduto, sAlmoxarifadoDestino, IIF(sTipoES = 'E',QuantidadeGeral + rSaldo, rSaldo -QuantidadeGeral) , QuantidadeGeral);
    end
    else
    begin
     ValorAnomalo := KardexAdicionaRetiraSaldo(sProduto, sAlmoxarifado, IIF(sTipoES = 'E',QuantidadeGeral + rSaldo, rSaldo -QuantidadeGeral) , QuantidadeGeral);
    end;
  end;
  if sreferencia = '' then
     sReferencia := DBInicio.BuscaUmDadoSqlAsString(SQLDEF('PRODUTOS', 'select first 1 prd_refer from prd0000 t1 ','where prd_codigo = '+QStr(sProduto),'','t1.' ));

  for I := min to max do
  begin

    //  if (Trim(sLoteRegistro) = '') then
    //    sLoteRegistro := '0';
    if VarIsArray(sLoteRegistro) then
    begin
      Lote := VarArrayGet(sLoteRegistro, [i,1] );  //codigo do lote
      saldo := VarArrayGet(sLoteRegistro, [i,2] );  //saldo do lote
      if QTDEPendente >= Saldo then
      begin
        QTDEPendente := QTDEPendente - Saldo;
        rQuantidade := Saldo;
      end
      else
      begin
        rQuantidade  := QTDEPendente;
        QTDEPendente := 0;
      end;
    end
   else
     Lote := iif(sLoteRegistro = '', '0', sLoteRegistro);
    if sTipoES = 'E' then
      SaldoProv := SaldoProv + rQuantidade
    else
      SaldoProv := SaldoProv - rQuantidade;

    sql := 'INSERT into kardex  ( emp_codigo, '
                                 +'kar_registro_interno, '
                                 +'kar_tipo_registro, '
                                 +'kar_entrada_saida, '
                                 +'PRDL_REGISTRO, '
                                 +'PRD_REFER,'
                                 +'kar_quantidade, '
                                 +'KAR_SALDO, '
                                 +'amx_codigo, '
                                 +'AMX_CODIGO_ORIGEM, '
                                 +'data_hora,'
                                 +'usu_codigo, '
                                 +'KAR_UNIDADE_MEDIDA, '
                                 +'KAR_OBSERVACAO,'
                                 +'prd_codigo,  '
                                 +'PRG_REGISTRO, '
                                 +'kar_documento, '
                                 +'kar_descricao, '
                                 +'kar_preco'
                                 +iif(cli_codigo<>'',',cli_codigo' ,'')
                                 +iif(for_codigo<>'',',for_codigo' ,'')
                                 +iif(col_codigo<>'',',col_codigo' ,'')
                                 +') '
                                 +' VALUES '
                                 +'('+QStr(dbInicio.Empresa.EMP_CODIGO)+','
                                 +sRegistroInterno+','
                                 +qStr(sTipoRegistro)+','
                                 +qStr(sTipoES)+','
                                 +Lote+','
                                 +qStr(sReferencia)+','
                                 +FloatToSql(rQuantidade)+','
                                 +FloatToSql(IIF(sObservacao <> 'ZERAR',  iif(ValorAnomalo > 0, ValorAnomalo, SaldoProv)       ,0))+','
                                 +qStr(StrZero(sAlmoxarifado,4))+','
                                 +qStr(StrZero(sAlmoxarifadoDestino,4))+','
                                 +DateTimeToSql(dDataEntradaSaida) +','
                                 +dbinicio.USUARIO.CODIGO+','
                                 +qStr(sUnidadeMedida)+','
                                 +qStr(sObservacao)+','
                                 +qStr(sProduto)+','
                                 +qStr(IIF(sGrade = '',0,sGrade))+','
                                 +qStr(sDocumento)+','
                                 +qStr(sDescricao)+','
                                 +FloatToSql(rPreco)+
                                 +iif(cli_codigo<>'',', '+QuotedStr(cli_codigo) ,'')
                                 +iif(for_codigo<>'',', '+QuotedStr(for_codigo) ,'')
                                 +iif(col_codigo<>'',', '+col_codigo ,'')
                                 +')' ;
    DBInicio.ExecSql(sql);
  // end;
    if (sTipoRegistro = 'BAL') then
    begin
      if (sGrade <> '') and (sGrade <> '0') then
         DBInicio.ExecSql('UPDATE PRD_GRADE SET PRG_SALDO = '+FloatToSql(rQuantidade)+' WHERE PRG_REGISTRO = '+QStr(sGrade))
      else //zerar a grade
        if (dbInicio.Empresa.bUtilizaGrade or dbInicio.Empresa.bDigitacaoGradeVendas) and (sObservacao = 'ZERAR')  then
          DBInicio.ExecSql('UPDATE PRD_GRADE SET PRG_SALDO = 0 WHERE PRD_CODIGO = '+qStr(sProduto));

      //Se no lancamento for informado o lote o mesmo atualiza o saldo do lote
      if (Lote <> '0') then
      begin
              DBInicio.ExecSql('UPDATE PRD_LOTE SET PRDL_SALDO = PRDL_SALDO '+IIF(sTipoES = 'E',' + ',' - ')+FloatToSql(rQuantidade)+' WHERE PRDL_REGISTRO = '+lote );
      end
      // zerar todos os lotes, função de zerar estoque
      else if (Lote = '0') and (sObservacao = 'ZERAR') then
        DBInicio.ExecSql('UPDATE PRD_LOTE SET PRDL_SALDO = 0 WHERE PRD_CODIGO = '+qStr(sProduto));

    end
    else
    begin
      if (sGrade <> '') and (sGrade <> '0') then
         DBInicio.ExecSql('UPDATE PRD_GRADE SET PRG_SALDO = PRG_SALDO '+IIF(sTipoES = 'E',' + ',' - ')+FloatToSql(rQuantidade)+' WHERE PRG_REGISTRO = '+qStr(sGrade));

         //Se no lancamento for informado o lote o mesmo atualiza o saldo do lote
      if (Lote <> '0')  and (Self.Name <> 'FormConcluirOP') and (Self.Name <> 'FormFatPedido') and (DBInicio.GetParametroSistema('PMT_ATUALIZA_LOTE') = 'P')  then
        DBInicio.ExecSql('UPDATE PRD_LOTE SET PRDL_SALDO = PRDL_SALDO '+IIF(sTipoES = 'E',' + ',' - ')+FloatToSql(rQuantidade)+' WHERE PRDL_REGISTRO = '+lote );
        // DBInicio.ExecSql('UPDATE PRD_LOTE SET PRDL_SALDO =  ' + FloatToSql(rQuantidade)+' WHERE PRDL_REGISTRO = ' + lote );


{
       if sTipoRegistro <> 'NF' then // não registra saida do lote no faturamento porque já foi feito pelo pedido
       begin
         LoteInicio :=   DBInicio.BuscaUmDadoSqlAsInteger('select cast( count(1) as integer) from  PRD_LOTE WHERE PRDL_SALDO = PRDL_QTDELOTE AND PRDL_SALDO = 0 and PRDL_REGISTRO = ' +Lote) > 0 ;
         if LoteInicio and (sTipoES = 'E') then
           DBInicio.ExecSql('UPDATE PRD_LOTE SET PRDL_SALDO = '+FloatToSql(rQuantidade) + ', PRDL_QTDELOTE = '+FloatToSQL(rQuantidade)+' WHERE PRDL_REGISTRO = '+Lote)
         else         //Se no lancamento for informado o lote o mesmo atualiza o saldo do lote
         if (Lote <> '0') then
           DBInicio.ExecSql('UPDATE PRD_LOTE SET PRDL_SALDO = PRDL_SALDO '+IIF(sTipoES = 'E',' + ',' - ')+FloatToSql(rQuantidade)+' WHERE PRDL_REGISTRO = '+Lote );
       end;
}

    end;


   if QTDEPendente = 0 then
      break;
  end;

  if EIndustrializacao then
      KardexLancamento(  sRegistroInterno, sTipoRegistro, sAlmoxarifadoDestino, '', sProduto,
                        sGrade, sUnidadeMedida, iif(sTipoES='E','S','E'), sLote, sLoteRegistro,
                        IIF(sDescricaoIndus='','REMESSA INDUSTRIALIZAÇÃO -'+ sObservacao, sDescricaoIndus), {OBSERVACAO DE INDUSTRIALIZAÇÃO}
                       dDataEntradaSaida, QuantidadeGeral, sDocumento, sDescricao, rPreco,
                        cli_codigo, for_codigo,  col_codigo,sreferencia);
  Result := rSaldo;


end;
		(**** esta funcção deve ser revista por causa da grade - jairo *)
function TfrmBaseDbEstoque.KardexLancamentoEmpresa( sEmpresa,sRegistroInterno, sTipoRegistro,sAlmoxarifado, sAlmoxarifadoOrigem, sProduto, sGrade, sUnidadeMedida, sTipoES,
                          sLote, sLoteRegistro, sObservacao:String; dDataEntradaSaida:TDateTime; rQuantidade:Real; sDocumento,sDescricao:String; rPreco:Real):Boolean;
var rSaldo : Real;
    i : integer;
    sRererencia : String;
begin
     sRererencia := BuscaUmDadoSqlAsString( 'select first 1 prd_refer from prd0000 t1 where prd_codigo = '+QStr(sProduto) );

     i := DBInicio.BuscaUmDadoSqlAsInteger(  'Select cast(count(*) as integer) as conta from KARDEX_ALMOX_SALDO '+
                                  'where AMX_CODIGO = '+QStr(sAlmoxarifado)+
                                  ' and PRD_CODIGO = '+QStr(sProduto)  +
                                  ' and EMP_CODIGO = '+QStr(sEmpresa)  );


     if i > 1 then
      rSaldo := DBInicio.BuscaUmDadoSqlAsFloat(' SELECT FIRST 1 KAR_SALDO FROM KARDEX ' +
                                                   'WHERE AMX_CODIGO = ' + QStr(sAlmoxarifado)+
                                                  ' AND PRD_CODIGO = ' + QStr(sProduto)  +
                                                  ConcatSe(' and ',dbInicio.ExclusivoSql('ESTOQUES') ) +
                                                  ' ORDER BY DATA_HORA DESC '
                                                  )
     else
       rSaldo := KardexRetornaSaldo(sProduto,sAlmoxarifado,sEmpresa);

     if (Trim(sLoteRegistro) = '') then
        sLoteRegistro := '0';

     ExecSql( 'INSERT into kardex  ( emp_codigo, kar_registro_interno, kar_tipo_registro, kar_entrada_saida, PRDL_REGISTRO, PRD_REFER, '+
              'kar_quantidade, KAR_SALDO, amx_codigo, AMX_CODIGO_ORIGEM, data_hora, usu_codigo, KAR_UNIDADE_MEDIDA, KAR_OBSERVACAO, '+
              'prd_codigo, PRG_REGISTRO, kar_documento, kar_descricao,  kar_preco) '+
              'VALUES ('+QStr(sEmpresa)+', '
            +qStr(sRegistroInterno)+','
            +qStr(sTipoRegistro)+','
            +qStr(sTipoES)+','
            +qStr(sLoteRegistro)+','
            +qStr(sRererencia)+','
            +FloatToSql(rQuantidade)+','
            +FloatToSql(IIF(sTipoES = 'E',rSaldo + rQuantidade,rSaldo - rQuantidade))+','
            +qStr(StrZero(sAlmoxarifado,4))+','
            +qStr(StrZero(sAlmoxarifadoOrigem,4))+','
            +DateTimeToSql(dDataEntradaSaida) +','
            +qStr(dbInicio.USUARIO.CODIGO)+','
            +qStr(sUnidadeMedida)+','
            +qStr(sObservacao)+','
            +qStr(sProduto)+','
            +qStr(IIF(sGrade = '',0,sGrade))+','
            +qStr(sDocumento)+','
            +qStr(sDescricao)+','
            +FloatToSql(rPreco)+')');
     KardexAdicionaRetiraSaldoEmpresa(sEmpresa, sProduto, sAlmoxarifado, IIF(sTipoES = 'E',rQuantidade + rSaldo, rSaldo -rQuantidade));
         //Se no lancamento for informado o lote o mesmo atualiza o saldo do lote

     if (sGrade <> '') then
        ExecSql('UPDATE PRD_GRADE SET PRG_SALDO = PRG_SALDO '+IIF(sTipoES = 'E',' + ',' - ')+FloatToSql(rQuantidade)+' WHERE PRG_REGISTRO = '+qStr(sGrade));
     if (sLoteRegistro <> '0') then
        ExecSql('UPDATE PRD_LOTE SET PRDL_SALDO = PRDL_SALDO '+IIF(sTipoES = 'E',' + ',' - ')+FloatToSql(rQuantidade)+' WHERE PRDL_REGISTRO = '+sLoteRegistro);
     Result := True;
end;

{ obsoleto não sendo mais utlizado esta função, foi tirado para melhorar a performance}
function TfrmBaseDbEstoque.AtualizarObsKardex(const prd_codigo, ped_codigo, obs : string): boolean;
var sql: string;
  reg : integer;
begin
  sql:=
  'SELECT first 1 KAR_REGISTRO FROM KARDEX WHERE KAR_TIPO_REGISTRO = ''PED'' AND KAR_ENTRADA_SAIDA = ''S'' '+
  ' AND PRD_CODIGO = '+QuotedStr(prd_codigo) + ' AND KAR_DOCUMENTO = '+ QuotedStr(ped_codigo)   +
  ' ORDER BY KAR_REGISTRO DESC ';
  reg := BuscaUmDadoSqlAsInteger(sql)  ;
  sql:= 'UPDATE KARDEX SET KAR_OBSERVACAO = '+QuotedStr(obs) +'WHERE KAR_REGISTRO = '+IntToStr(REG);
  ExecSql(sql);

end;



end.
