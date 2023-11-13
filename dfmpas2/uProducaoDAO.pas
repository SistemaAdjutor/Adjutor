unit uProducaoDAO;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, uSelecionaAlmoxarifado,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBFormFdac, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Phys.FBDef, FireDAC.UI.Intf, FireDAC.VCLUI.Wait, FireDAC.VCLUI.Error, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Comp.Client, Data.DB, FireDAC.Comp.UI, FireDAC.Phys.IBBase, FireDAC.Comp.DataSet, cxClasses, cxLocalization, ACBrBase, ACBrEnterTab, BaseDbEstoqueForm, SYSTEM.StrUtils, System.DateUtils;
type
  TItemProducao =  record
    ordem : string ; //numero da ordem
    prefixo: string;
    iop_codigo : Integer;
    opr_codigo : Integer;
  end;

type
  TProducaoDao = class(TfrmBaseDBFDAC)
    qLote: TFDQuery;
    qLotePRDL_REGISTRO: TIntegerField;
    qLoteEMP_CODIGO: TStringField;
    qLotePRDL_DATA_FABRICACAO: TDateField;
    qLotePRDL_DATA_VALIDADE: TDateField;
    qLotePRDL_LOTE: TStringField;
    qLotePRDL_PRECO_MAXIMO: TFMTBCDField;
    qLotePRDL_SALDO: TFMTBCDField;
    qLotePRD_CODIGO: TStringField;
    qLotePRDL_CADASTRO: TDateField;
    qLotePRDL_DESCRICAO: TStringField;
    qLotePRDL_CUSTO: TFMTBCDField;
    qLotePRDL_NFE: TStringField;
    qLoteFOR_CODIGO: TStringField;
    qLotePRDL_QTDELOTE: TFMTBCDField;
  private
    { Private declarations }
  public
   numLoteEIP: string;

   function EnviarDemanda (const ped_codigo , prd_codigo, situacao : string ;const fti_registro, prf_registro, iop_codigo : Integer; const dtEntrega : TDate;const  estoque : double; produzir : double = 0.0 )  : Integer;
   function DemandaHistorico (const dep_codigo : Integer; const descricao, ped_codigo,prd_codigo : string; ReenvioDemanda :  boolean = False ): Boolean;
   function EstornoDemanda (ped_codigo: string):Boolean;
   function EstornoEnvase(const iop_codigo: integer):boolean;
   function EnviaraProducao (const ped_codigo : string;const  Dt_Emissao, dt_Entrega : TDate; const cli_codigo : string): Integer;
   function EnviarItemProducao(const  prd_codigo , prd_refer, ped_codigo: string; const Dt_Emissao: TDate; dt_Entrega: TDate;
            const cli_codigo: string;  QtdePrd: Double ; const pesokg, preco: double; const prf_registro, fti_registro, dep_codigo, programa: integer;var  Item : TItemProducao;
            const Subordens, envase: boolean ; dt_ajuste: TDateTime = 0; reg_lote: Integer = 0  ): Boolean;

   procedure FichaTecnicaSubOrdem(const produzirMaster : double ; const ped_codigo, prd_refer, cli_codigo :string; tipoItem: TItemProducao; const programa : Integer;
             DataEntrega, DataAjuste : Tdate; const subordens: Boolean);

   function ConsumirEstoqueInsumo (const iop_codigo: Integer; iop_nordem :string ): Double;
   procedure EstornarEstoqueInsumo (const iop_codigo: Integer; iop_nordem :string );
   procedure AtualizarAjusteDataOrdem (const  prf_codigo, fti_registro: integer;  const dt_ajustada: TDateTime ; const Seq: integer);
   function AtualizaDemanda(const dep_codigo, prf_codigo, fti_registro : integer; const UsarEstoque, QtdeProduzir : Double ; const dt_entrega : TDate;
            const ped_codigo, prd_codigo :string; const GeraSubOrdens: Boolean; const dt_ajustada: TDateTime; const Seq: integer ): Integer ;
   procedure FazerReserva (const prd_codigo : string ; UsarEstoque : double);
   procedure EstornoReserva(const prd_codigo : string; UsarEstoque : Double);
   procedure AtualizarStatusDemanda (const dep_codigo, iop_codigo  : Integer; CONST Situacao : STRING);

   function AdicionandoMP (Sender: TObject; const ped_codigo, prd_codigo, nordem : string; const iop_codigo, opr_codigo : integer;const  uc, basecomposicao, consumototal : Double;
     const mp_codigo_subst,ope_codigo : Integer ): Integer;
   function AlterarConsumoTotal (const mp_codigo : integer ; const novoConsumo : double) :boolean;
   procedure SubstituirMP(const mp_codigo : integer; Subtrairconsumo, ConsumoUnitario : double );
   procedure EstornaMP_Substituta( const mp_codigo , substituta : integer ; consumo : double);
   function PrefixoOrdem (const pedido, prd_codigo:string) : string;
   procedure RetornarDemanda (const IOP_CODIGO : integer; const ordem: string; prefixo : string; hist :string);
   function EmpenharInsumo(const iop_codigo: Integer; const mp_codigo: Integer; const prd_codigo: string; const quantde: Double; const empenho: TDate; const Lote: Integer; const prd_refer: string;
             const nordem,tipo : string): double;
   procedure EstornarEmpenho (const epe_codigo : integer);
   procedure HistoricoProducao (const iop_codigo, mp_codigo : integer;  const descricao : string);
   procedure ProcessoFabricacao (const prd_codigo, ordem : string; const iop_codigo : integer);
   function ConsumirLotesAutomatico (const mp_codigo, iop_codigo : integer; const prd_codigo, prd_refer, IOP_NORDEM : string; const consumototal : double ): double;
   procedure CustoServico (const iop_codigo : integer; const  total : double);
   procedure ConcluirORDEM(CONST FaltaConcluir, JaConcluida, Concluida,Refugada : double; iop_codigo : integer; const prd_codigo, ped_codigo : string);
  end;

var
  ProducaoDao: TProducaoDao;

implementation

{$R *.dfm}
 uses InicioDB, uteis, uSelProduto, uDemandaProducao;
{ TProducaoDao }

procedure TProducaoDao.FazerReserva(const prd_codigo: string; UsarEstoque: double);
begin
  // abaixa a reserva de acorodo com estoque existente no almoxarifado
  OpenAux('SELECT * FROM KARDEX_ALMOX_SALDO '+
          ' WHERE PRD_CODIGO = '+QuotedStr(prd_codigo) +
           ConcatSe(' and ', DBInicio.ExclusivoSql('ESTOQUES'))+
          ' ORDER BY AMX_CODIGO ' );

   qAux.First;
   // ele vai varrendo o almoxarifado e retirando caso haja estoque
   while (not qAux.Eof) and (UsarEstoque > 0) do
   begin
     IF qAux.FieldByName('KAS_SALDO').AsFloat >= UsarEstoque then
     begin
        ExecSql('update KARDEX_ALMOX_SALDO '+
                ' set kas_reserva = coalesce(kas_reserva,0) + '+ FloatToSQL(UsarEstoque) +
                ' where kas_registro = '+ qAux.FieldByName('kas_registro').AsString);
        UsarEstoque := 0;
        Continue;

     end;
     if (qAux.FieldByName('KAS_SALDO').AsFloat >0)  and (UsarEstoque > qAux.FieldByName('KAS_SALDO').AsFloat)  then
     begin


       UsarEstoque := UsarEstoque -  qAux.FieldByName('KAS_SALDO').AsFloat ;
       ExecSql('update KARDEX_ALMOX_SALDO '+
               ' set kas_reserva = coalesce(kas_reserva,0) + '+ FloatToSQL(qAux.FieldByName('KAS_SALDO').AsFloat) +
               ' where kas_registro = '+ qAux.FieldByName('kas_registro').AsString);
     end;
     qAux.Next;
   end;

end;

procedure TProducaoDao.FichaTecnicaSubOrdem(const produzirMaster: double; const ped_codigo, prd_refer, cli_codigo: string; tipoItem: TItemProducao; const programa : Integer;
         DataEntrega, DataAjuste : Tdate;  const subordens: Boolean );
var sql : string ;
   clone : TFDMemTable;
   dep_codigo : Integer;
   produzir : Double;
   i : Integer;
   TipoFicha : TItemProducao;
   GeraSubOrdens : boolean;
   usarEstoque : double;
begin
   sql :=
      'SELECT dep_codigo, FT.FTI_REGISTRO, DEP_SITUACAO, ft.PRD_REFER, PRD_REFER_ITENS, ' +
      ' CAST(pr.PRD_DESCRI AS VARCHAR(100)) PRD_DESCRI , ' + //   ' pr.PRD_DESCRI , ' +
      ' FTI_UC,  DEP_DATA_ENTREGA DTENTREGA,  '+
      ' COALESCE(DEP_SITUACAO, ''R'') DEP_SITUACAO, DEP_QTDE_ESTOQUE,         '+
      ' (SELECT sum(KAS_SALDO)- COALESCE(sum(KAS_RESERVA),0)  FROM kardex_almox_saldo kas WHERE kas.PRD_CODIGO = pr.PRD_CODIGO ) EstoqueDisponivel,  ' +
      ' pr.prd_codigo, '+QuotedStr(ped_codigo ) + ' as ped_codigo, ' +
      ' pr.PTI_CODIGO, tp.PTI_DESCRI, tp.PTI_SIGLA, pr.PRD_UND, '+
      ' (SELECT coalesce(FTC_BASEFORMULA,1) FROM FTC0000 ftc WHERE ftc.PRD_REFER =ft.PRD_REFER) FTC_BASEFORMULA, ft.ope_codigo, DEP_GERASUBORDENS ' +
      ' FROM FTC_IT01 ft                                                                                                 '+
      ' join prd0000 Pr on (ft.prd_refer_itens = pr.prd_refer '+ ConcatSe(' and ft.', DBInicio.ExclusivoSql('PRODUTOS'))+ ')'+
      ' JOIN PRD_TIPO tp ON (tp.PTI_CODIGO = pr.PTI_CODIGO ) '+
      ' LEFT JOIN DEMANDA_PRODUCAO dpr ON (dpr.FTI_REGISTRO = ft.FTI_REGISTRO AND ped_codigo ='+QuotedStr(ped_codigo)+' ) '+  // pega a demanda de acordo pedido e registro
      ' LEFT JOIN ORDEMPRODUCAO OP  ON (   OP.EMP_CODIGO = '+ QuotedStr (DBInicio.Empresa.EMP_CODIGO) +
                                        ' AND op.PED_CODIGO = '+QuotedStr(ped_codigo )+')'+
//      ' LEFT JOIN ITEM_ORDEMPRODUCAO iop ON (Iop.OPR_CODIGO = OP.OPR_CODIGO AND pr.prd_codigo = iop.PRD_CODIGO)          '+
      ' WHERE ft.PRD_REFER = '+ QuotedStr(prd_refer ) + ConcatSe(' and ft.', DBInicio.ExclusivoSql('PRODUTOS')) ;
     // ' and  PTI_SIGLA in (''PA'',''PI'')'  ;
   OpenAux3(sql);
   i:= 0 ;
   clone := TFDMemTable.Create(Self);
   try
     qAux3.FetchAll;
     clone.Data  := qAux3.Data;

     while not clone.Eof do
     begin
        GeraSubOrdens :=  subordens or (clone.FieldByName('DEP_GERASUBORDENS').AsString = 'S');
       if GeraSubOrdens and MatchStr(clone.FieldByName('pti_sigla').AsString,['PA','PI','KT']) then
       begin


          if (programa<2)  then
             usarEstoque :=  clone.FieldByName('DEP_QTDE_ESTOQUE').AsFloat
          else
            usarEstoque := 0; // tem que bloquear para não usar estoque com programação, um gatilho na tela de demanda
           produzir := (clone.FieldByName('FTI_UC').AsFloat * produzirMaster/clone.FieldByName('FTC_BASEFORMULA').AsFloat)  -  UsarEstoque; // vai produzir se não especificar tudo - o que usar no estoque
         if (produzir>0) then
         Begin
           inc(i);
           if clone.FieldByName('DTENTREGA').AsDateTime > 0 then
              DataEntrega := clone.FieldByName('DTENTREGA').AsDateTime;
           TipoFicha.opr_codigo := tipoItem.opr_codigo;
           TipoFicha.prefixo := tipoItem.prefixo;
           //MESMO CRIANDO UMA SUBORDEM DEVE CRIAR UMA A SUBORDEM COMO MP DA ORDEM ACIMA
           EnviarItemProducao(clone.FieldByName('PRD_CODIGO').AsString,
                              clone.FieldByName('prd_refer_itens').AsString,
                                  clone.FieldByName('PED_CODIGO').AsString,
                                   now, // data de emissao
                                   DataEntrega, //dt entrega
                                   cli_codigo,
                                   produzir,// quantidade producao
                                   0,
                                   0,
                                   0,
                                   clone.FieldByName('FTI_REGISTRO').AsInteger,
                                   clone.FieldByName('dep_codigo').AsInteger,
                                   programa,
                                   TipoFicha,
                                   GeraSubOrdens, False,DataAjuste );

          if clone.FieldByName('dep_codigo').IsNull or (clone.FieldByName('dep_codigo').AsInteger = 0 ) then
            dep_codigo := EnviarDemanda(ped_codigo,
                                            clone.FieldByName('PRD_CODIGO').AsString, 'E',
                                            clone.FieldByName('FTI_REGISTRO').AsInteger,
                                             0,  //prf_registro ,como é ficha não tem no item do pedido
                                            TipoFicha.iop_codigo,
                                            clone.FieldByName('DTENTREGA').AsDateTime ,
                                            clone.FieldByName('DEP_QTDE_ESTOQUE').AsFloat,
                                            produzir)
          else    //demanda caso já sido preenchido uma demanda
          begin
            dep_codigo :=  clone.FieldByName('dep_codigo').AsInteger;
            AtualizarStatusDemanda(dep_codigo, TipoFicha.iop_codigo, 'E');
          end;


          DemandaHistorico(dep_codigo,
                              'Enviado para produção de '+FormatFloat('###,###,##0.'+StrZero('0', dbInicio.Empresa.fPMT_QTDE_DEC_PED),produzir),
                              ped_codigo,clone.FieldByName('PRD_CODIGO').AsString);

         end;

       End;
       //else // materia prima
      // begin
         produzir :=  clone.FieldByName('FTI_UC').AsFloat * produzirMaster/ clone.FieldByName('FTC_BASEFORMULA').AsFloat;
         AdicionandoMP(self, ped_codigo,
                         clone.FieldByName('PRD_CODIGO').AsString,
                         tipoItem.ordem,
                         tipoItem.iop_codigo,
                         tipoItem.opr_codigo,
                         RoundTo(clone.FieldByName('FTI_UC').AsFloat/clone.FieldByName('FTC_BASEFORMULA').AsFloat, -4),
                          clone.FieldByName('FTC_BASEFORMULA').AsFloat,
                          produzir,
                          0,     //mp_codigo do insumo substituto , 0  - > original
                          clone.FieldByName('ope_codigo').AsInteger
                          ) ;


       //end;
       clone.Next;
     end;
   finally
     clone.Free;
   end;


end;

procedure TProducaoDao.HistoricoProducao(const iop_codigo, mp_codigo: integer; const descricao: string);
var sql : string;
begin
  try
   sql:= ' INSERT INTO HISTORICO_ORDEMPRODUCAO '+
         ' (HOP_DATAMVTO, HOP_DESCRICAO, USU_CODIGO, IOP_CODIGO, MP_CODIGO) '+
         ' VALUES('+DateTimeToSQL(now) +',' +
         QuotedStr( descricao) +','+
         DBInicio.Usuario.CODIGO + ',' +
         IntToStr(iop_codigo)+ ','+
         iif(mp_codigo=0,'null',IntToStr(mp_codigo)) +' )';
    ExecSql(sql);

  except on E: Exception do
    raise Exception.Create(e.Message);
  end;
end;

function TProducaoDao.PrefixoOrdem(const pedido, prd_codigo :string ) : string;
var
  ordem, prefixo :string;
  seq : integer;
begin
  if ((DBInicio.Empresa.PMT_COMPOSICAOORDEM = 'S') or (pedido <> '') ) then
  Begin
    if  (pedido <> '') then
    begin
      ordem := BuscaUmDadoSqlAsString('SELECT FIRST 1 IOP_NORDEM FROM ORDEMPRODUCAO op '+
                                      ' JOIN ITEM_ORDEMPRODUCAO IOP ON (OP.OPR_CODIGO = IOP.OPR_CODIGO) '+
                                      ' WHERE PED_CODIGO = ' + QuotedStr(pedido)+
                                      ' AND prd_codigo = '+QuotedStr(prd_codigo)
                                      );
      ordem := copy(ordem,1, pos('-',ordem)-1);
    end;
    if ordem = '' then
    begin
      prefixo := BuscaUmDadoSqlAsString('SELECT FIRST 1 IOP_PREFIXO FROM IOP_RESERVA_PREFIXO ORDER BY IOP_PREFIXO') ;
      if prefixo = '' then
        result := Trim(BuscaUmDadoSqlAsString(' SELECT cast(GEN_ID(GEN_NUM_OP, 1) as varchar(10)) as gNumOP FROM RDB$DATABASE'))
      else
      begin
        result := Trim(prefixo);
        ExecSql('DELETE FROM IOP_RESERVA_PREFIXO WHERE IOP_PREFIXO = ' + QuotedStr(prefixo));
      end;
    end
    else
      result := ordem ;
  End;
  if  (DBInicio.Empresa.PMT_COMPOSICAOORDEM = 'P') then
  begin
    seq:=
     BuscaUmDadoSqlAsInteger ('SELECT MAX(IOP_SEQUENCIA) '+
                             ' FROM ORDEMPRODUCAO op   '+
                             ' JOIN ITEM_ORDEMPRODUCAO IOP ON (OP.OPR_CODIGO = IOP.OPR_CODIGO) '+
                             ' WHERE ORE_CODIGO IS NULL '+
                             ' AND IOP_STATUS <> ''C'' '+
                             ' AND PED_CODIGO = '+QuotedStr(pedido) +
                             ' AND PRF_REGISTRO IS NOT NULL  ');
    inc(seq);
    result := pedido+'-'+strzero( SEQ,2) ;
  end;
end;

procedure TProducaoDao.ProcessoFabricacao(const prd_codigo, ordem: string ; const iop_codigo : integer);
var sql : string;
begin
  sql:= 'INSERT INTO FABRICACAO (OSV_CODIGO, FAB_CODIGO, PRD_CODIGO, OPE_CODIGO, sequencia, TEMPO_ESTIMADO, ENG_CODIGO, FAB_OBSERVACAO, IOP_CODIGO,  eqp_codigo )   '+
        ' SELECT '+ QuotedStr(ordem) + ', gen_id (GEN_FABRICACAO,1 ), EP.PRD_CODIGO, OPE_CODIGO, sequencia,TEMPO_ESTIMADO , ENG_CODIGO, ENG_OBSERVACAO, ' + IntToStr(IOP_CODIGO) +  ',eqp_codigo'+
        ' FROM ENGENHARIA_PROCESSO EP                                                                            '+
        ' INNER JOIN PRD0000 P1 ON (P1.PRD_CODIGO = EP.PRD_CODIGO)                                               '+
        ' WHERE P1.PRD_CODIGO = '+ QuotedStr (prd_codigo)
        ;
  ExecSql(sql) ;
  if DBInicio.Empresa.PMT_CUSTOOPERACAO = '1' then
  begin
     SQL := ' UPDATE ITEM_ORDEMPRODUCAO  ' +
            ' SET IOP_CUSTOOPERACAO = IOP_QUANTIDADE * '+
            '         (SELECT SUM(COALESCE(TEMPO_ESTIMADO,0)/60 * COALESCE(OPE_CUSTOHORA,0)) '+
            '           FROM ENGENHARIA_PROCESSO EG                           '+
            '           JOIN OPERACOES OP ON (OP.OPE_CODIGO = EG.OPE_CODIGO)  '+
            '          WHERE PRD_CODIGO = '+  QuotedStr(prd_codigo) + ' ) '+
            ' WHERE IOP_CODIGO =  '+IntToStr(iop_codigo);
     ExecSql(sql) ;
  end;
end;

procedure TProducaoDao.RetornarDemanda(const IOP_CODIGO: integer; const ordem: string; prefixo :string; hist :string );
var
  hif : integer;
  DEP_CODIGO : integer;
  Kardex : TfrmBaseDbEstoque;
  prefixoSQL : string;
begin
  if prefixo = '' then
  begin
    //sequencial só tem um '-'
    if (DBInicio.Empresa.PMT_COMPOSICAOORDEM = 'S') then
    begin
      hif := pos('-',ordem);
      if hif>0 then
        prefixo := Copy(ordem,1,hif-1)
      else
        prefixo := ordem;
    end
    // por pedido tem dois '-'
    else if(DBInicio.Empresa.PMT_COMPOSICAOORDEM = 'P') then
    begin
      hif := pos('-',ordem);
      prefixo := Copy(ordem,1,hif+2)

    end;
  end;
  //mesmo verificando o prefixo tem que ver se tem programação

  If BuscaUmDadoSqlAsInteger('SELECT COUNT(*) ALGUM '+
        ' FROM ITEM_ORDEMPRODUCAO IOP JOIN ORDEMPRODUCAO OPR ON (OPR.OPR_CODIGO = IOP.OPR_CODIGO) ' +
        ' WHERE IOP_PREFIXO IN (             '+
			  ' SELECT IOP_PREFIXO                 '+
			  ' FROM ITEM_ORDEMPRODUCAO iop2       '+
			  '  WHERE prf_registro  IN            '+
				'      (SELECT PRF_REGISTRO              '+
				'         FROM ITEM_ORDEMPRODUCAO iop2      '+
				'        WHERE IOP_PREFIXO = ' +QuotedStr(prefixo) +  ') )' +
        '          AND IOP_STATUS =''I'' '
        ) > 0 then
     raise Exception.Create('Alguma subordem ou ordem já foram INICIADAS em produção');

  If BuscaUmDadoSqlAsInteger('SELECT COUNT(*) ALGUM '+
        ' FROM ITEM_ORDEMPRODUCAO IOP JOIN ORDEMPRODUCAO OPR ON (OPR.OPR_CODIGO = IOP.OPR_CODIGO) ' +
        ' WHERE IOP_PREFIXO IN (             '+
			  ' SELECT IOP_PREFIXO                 '+
			  ' FROM ITEM_ORDEMPRODUCAO iop2       '+
			  '  WHERE prf_registro  IN            '+
				'      (SELECT PRF_REGISTRO              '+
				'         FROM ITEM_ORDEMPRODUCAO iop2      '+
				'        WHERE IOP_PREFIXO = ' +QuotedStr(prefixo) +  ') )' +
        '          AND IOP_STATUS =''F'' AND IOP_CODIGO = ' + IntToStr(IOP_CODIGO)
        ) > 0 then
          raise Exception.Create('Alguma subordem ou ordem já foram FINALIZADAS em produção');

	OpenAux('  SELECT IOP_PREFIXO          '+
			    ' FROM ITEM_ORDEMPRODUCAO iop2 '+
          '  WHERE prf_registro  IN      '+
          '    (SELECT PRF_REGISTRO      '+
          '    FROM ITEM_ORDEMPRODUCAO iop2 '+
          '    WHERE IOP_PREFIXO = '+QuotedStr(prefixo) +  ')');
   qAux.first;
   if (qAux.RecordCount > 1) then
     prefixo := '';
   prefixoSQL := '';
   while (not qAux.eof) and (qAux.RecordCount > 1) do
   begin
     prefixo :=  prefixo + iif(prefixo='','',',') + qAux.FieldByName('iop_prefixo').AsString;
     prefixoSQL := prefixoSQL +  iif(prefixoSQL='','',',') + QuotedStr( qAux.FieldByName('iop_prefixo').AsString);
     qaux.next;
   end;
   if prefixoSQL = '' then
    prefixoSQL := QuotedStr(prefixo);

  if (MessageDlg('Deseja retornar a demanda a Ordem '+ prefixo +  // pegar a ordem principal
      ' e suas subordens ?', mtConfirmation, [mbYes, mbNo], 0) = mrNo) then
      EXIT;

  OpenAux('SELECT IOP_CODIGO, PED_CODIGO, PRD_CODIGO, PRF_REGISTRO, OPR.OPR_CODIGO '+
          ' FROM ITEM_ORDEMPRODUCAO IOP JOIN ORDEMPRODUCAO OPR ON (OPR.OPR_CODIGO = IOP.OPR_CODIGO) ' +
          ' WHERE IOP_PREFIXO IN ( '+prefixoSQL +')');

  qAux.first;
  while not qAux.eof do
  begin
    //empenho automatico da materia-prima ao enviar ao envio de demanda
    // estornar estoque e o empenho excluir
    if  (DBInicio.Empresa.PMT_COMSUMIRINSUMO = 'E')  then
    begin
      kardex := TfrmBaseDbEstoque.create(Application);
      try
        OpenAux2('SELECT IOP_NORDEM, E.PRD_CODIGO, E.PRDL_REGISTRO, E.EMP_QUANTIDADE ,  mp.MP_EMPENHADO,  PR.PRD_REFER, mp.MP_CODIGO   '+
                ' FROM EMPENHO E '+
                ' JOIN ITEM_ORDEMPRODUCAO IOP ON (IOP.IOP_CODIGO = E.IOP_CODIGO) '+
                ' JOIN PRD0000 PR ON E.PRD_CODIGO = PR.PRD_CODIGO' +
                ' JOIN MATERIAPRIMA_ORDEMPRODUCAO mp ON (mp.MP_CODIGO = e.MP_CODIGO) '+
                ' WHERE IOP.IOP_CODIGO = '+IntToStr(IOP_CODIGO)  );
         qAux2.First;
        while NOT qAux2.Eof do
        begin

          kardex.KardexLancamento(
                qAux2.FieldByName('iop_nordem').AsString, // numero documento
                'PRO',
                DBInicio.empresa.PMT_AMX_PRODUCAO_SAIDA,
                 '',   //amoxarifado destino
                qAux2.FieldByName('PRD_CODIGO').AsString  ,
                '',//grade
                '', //UNIDADE DE MEDIDA
                'E', // ENTRADA
                '',
                qAux2.FieldByName('PRDL_REGISTRO').AsString,
                'ESTORNO DE INSUMO',
                Now,
                qAux2.FieldByName('EMP_QUANTIDADE').AsFloat,
                qAux2.FieldByName('iop_nordem').AsString,
                qAux2.FieldByName('prd_refer').AsString  ,
                 0
                   );
           ExecSql('DELETE FROM EMPENHO WHERE MP_CODIGO = '+qAux2.FieldByName('MP_CODIGO').AsString);
          qAux2.Next;
        end;
      finally
        FreeAndNil(Kardex);
      end;


    end;
    ExecSql(' INSERT INTO IOP_RESERVA_PREFIXO VALUES (' + QuotedStr(prefixo) + ')');
    ExecSql(' DELETE FROM MATERIAPRIMA_ORDEMPRODUCAO WHERE IOP_CODIGO = '+qAux.FieldByName('IOP_CODIGO').AsString);
    ExecSql(' DELETE FROM ITEM_ORDEMPRODUCAO WHERE IOP_CODIGO = '+qAux.FieldByName('IOP_CODIGO').AsString);
    ExecSql(' DELETE FROM HISTORICO_ORDEMPRODUCAO where IOP_CODIGO = '+qAux.FieldByName('IOP_CODIGO').AsString);
    ExecSql(' DELETE FROM FABRICACAO where IOP_CODIGO = '+qAux.FieldByName('IOP_CODIGO').AsString);
    DEP_CODIGO :=  BuscaUmDadoSqlAsInteger ('SELECT DEP_CODIGO FROM DEMANDA_PRODUCAO WHERE IOP_CODIGO = '+qAux.FieldByName('iop_codigo').AsString);
    AtualizarStatusDemanda(dep_codigo,0,'R');
    // ATUALIZAR HISTÓRICO
    if hist = '' then
      hist:= 'Retorno a demanda'
    else
      hist :=  'Retorno a demanda: '+ hist;
    DemandaHistorico(dep_codigo,hist,qAux.FieldByName('ped_codigo').AsString, qAux.FieldByName('prd_codigo').AsString);


    qAux.Next;
  end;
   ExecSql('DELETE FROM ORDEMPRODUCAO op WHERE OPR_CODIGO = '+IntToStr(qAux.FieldByName('OPR_CODIGO').AsInteger) +
   ' and NOT EXISTS (SELECT 1 FROM ITEM_ORDEMPRODUCAO iop WHERE op.OPR_CODIGO = iop.OPR_CODIGO) '   );
end;

procedure TProducaoDao.SubstituirMP(const mp_codigo: integer; Subtrairconsumo, ConsumoUnitario: double);
begin
  ExecSql(' update MATERIAPRIMA_ORDEMPRODUCAO ' +
          '   set mp_consumototal = mp_consumototal- '+FloatToSQL(Subtrairconsumo) + ',' +
          '       mp_uconsumo = ' + FloatToSQL(ConsumoUnitario) +
          ' where mp_codigo = '+ IntToStr(mp_codigo) );
end;

function TProducaoDao.AdicionandoMP(Sender: TObject; const ped_codigo, prd_codigo, nordem: string; const iop_codigo, opr_codigo: integer; const uc, basecomposicao,
  consumototal: Double;const mp_codigo_subst,ope_codigo : Integer ): Integer;
var sql :string;
 chave : Integer;
 prd_refer, prdRefer2, prdReferItens : string;
 controlaLote : boolean;
 FaltaEmpenhar : double;
 QuantEmpenharLote : double;
 Empenhado : double;
 custototal : double;
 percentual: double;
begin
  try

    chave := GetNextSequence('gen_materiaprima');

    prd_refer := BuscaUmDadoSqlAsString('select prd_refer from prd0000 where prd_codigo = '+QuotedStr(prd_codigo)  );

    // consumir insumo ao enviar a produção
    if (sender.classname = 'TProducaoDao') and (DBInicio.Empresa.PMT_COMSUMIRINSUMO = 'E') then
     begin

       controlaLote := BuscaUmDadoSqlAsString(' select PRD_GERENCIA_LOTE from prd0000 where prd_codigo = '+QuotedStr(prd_codigo) ) = 'S' ;
       if controlaLote then
       begin
         HistoricoProducao(iop_codigo,chave,'Consumo automático de lote pela data');
         FaltaEmpenhar :=  consumototal;
         custototal:=  0;
         qLote.Close;
         qLote.ParamByName('prd_codigo').AsString := prd_codigo;
         qlote.open;
         qLote.First;
         while ( (not qLote.Eof) or (FaltaEmpenhar = 0 )) do
          begin


            if FaltaEmpenhar > qLotePRDL_SALDO.AsFloat then
            begin
               FaltaEmpenhar := FaltaEmpenhar- qLotePRDL_SALDO.AsFloat ;
               QuantEmpenharLote :=  qLotePRDL_SALDO.AsFloat;
            end
            else
            begin
              QuantEmpenharLote := FaltaEmpenhar;
              FaltaEmpenhar := 0 ;
            end;

            custototal:=

            EmpenharInsumo(iop_codigo,
              chave,
              prd_codigo,
              QuantEmpenharLote,
              date,
              qLotePRDL_REGISTRO.AsInteger,
              prd_refer,
              nordem,
              'A'
                ) + custototal ;

            qLote.Next;
          end;
          if FaltaEmpenhar > 0  then
            HistoricoProducao(iop_codigo,chave,'Não tem saldo suficiente');
          Empenhado := consumototal -  FaltaEmpenhar;
       end
       else  // sem controle do lote
       begin
         HistoricoProducao(iop_codigo,chave,'Consumo automático');
         custototal:= EmpenharInsumo(iop_codigo,
                        chave,
                        prd_codigo,
                        consumototal,
                        date,
                        0,
                        prd_refer,
                        nordem,
                        'A'
                          );
         empenhado :=  consumototal;
       end;
     end;

    if frmDemandaProducao <> nil then
    begin
      prdRefer2 := BuscaUmDadoSqlAsString('SELECT PRD_REFER FROM PRD0000 WHERE PRD_CODIGO = ' +  QuotedStr(frmDemandaProducao.cdsBuscaPRD_CODIGO.AsString));
      prdReferItens := BuscaUmDadoSqlAsString('SELECT PRD_REFER FROM PRD0000 WHERE PRD_CODIGO = ' +  QuotedStr(prd_codigo));
      percentual := BuscaUmDadoSqlAsFloat('SELECT FTI_PERCENTUAL FROM FTC_IT01 fi  WHERE PRD_REFER = ' + QuotedStr(prdRefer2) + ' AND PRD_REFER_ITENS =  ' + QuotedStr(prdReferItens) );
    end
    else
      percentual := 0;

    sql := 'INSERT INTO MATERIAPRIMA_ORDEMPRODUCAO '+
           ' (MP_CODIGO, PED_CODIGO, IOP_CODIGO, OPR_CODIGO, PRD_CODIGO, FTI_PERCENTUAL, MP_UCONSUMO, MP_BASECOMPOSICAO, MP_CONSUMOTOTAL, MP_EMPENHADO, MP_CODIGO_SUBST, OPE_CODIGO, MP_CUSTO, MP_EXTRA) '+
            ' VALUES('+IntToStr(CHAVE) +','+
            QuotedStr(PED_CODIGO) + ','+
            IntToStr(iop_codigo) + ','+
            IntToStr(opr_codigo) +','+
            QuotedStr(prd_codigo) +','+
            FloatToSQL(percentual) + ','+
            FloatToSQL(uc) + ','+
            FloatToSQL(basecomposicao)+ ','+
            FloatToSQL(consumototal) +','+
            IIF(DBInicio.Empresa.PMT_COMSUMIRINSUMO = 'M','0',FloatToSQL(Empenhado) )+ ','+
            iif(mp_codigo_subst<=0, 'null',IntToStr(mp_codigo_subst) )+   ','+
            iif(ope_codigo =0, 'null',IntToStr(ope_codigo) )+ ','+
           FloatToSQL(custototal)+','+
           IIF(mp_codigo_subst=-1,QuotedStr('S'),'null')+

             ')';

    ExecSql(sql);

    Result := chave;
  except
   on e: exception do
   begin
    result := 0;
     raise Exception.Create(e.Message);
   end;
  end;



end;

function TProducaoDao.AlterarConsumoTotal(const mp_codigo: integer; const novoConsumo: double): boolean;
var sql :string;
begin
  sql:=   ' UPDATE MATERIAPRIMA_ORDEMPRODUCAO '+
          ' SET MP_CONSUMOTOTAL = '+FloatToSQL(novoConsumo) +','+
          '      MP_ALTERACAOCONSUMO = coalesce (MP_ALTERACAOCONSUMO,0) + '+FloatToSQL(novoConsumo) + '- MP_CONSUMOTOTAL '  +
          ' WHERE MP_CODIGO = '+IntToStr(mp_codigo);
      //    ' AND mp_extra IS null '  ;
 try
    ExecSql(sql);
 except on E: Exception do
   result := False;
 end;
  result :=True;

end;
procedure TProducaoDao.AtualizarAjusteDataOrdem(const prf_codigo, fti_registro: integer; const dt_ajustada: TDateTime; const Seq: integer);
begin
   //se a data de ajuste for alterada quando o processo já está em produção , alterar na produção
   // a situação não pode ser concluida
   if  (prf_codigo>0) and (fti_registro=0) and (dt_ajustada >0) and
       (BuscaUmDadoSqlAsString('SELECT DEP_SITUACAO FROM DEMANDA_PRODUCAO WHERE PRF_REGISTRO = '+IntToStr(prf_codigo)) <> 'C') then
   begin
     ExecSql(' update ITEM_ORDEMPRODUCAO '+
             ' set IOP_DATA_AJUSTADA = '+DateToSQL(dt_ajustada)  +
             ' where prf_registro = '+IntToStr(prf_codigo) +
             ' and iop_seq_prg = ' +  IntToStr(seq)
                    );

   end;
end;

function TProducaoDao.AtualizaDemanda(const dep_codigo, prf_codigo, fti_registro: integer; const UsarEstoque,QtdeProduzir: Double;
                      const dt_entrega: TDate; const ped_codigo, prd_codigo: string; const GeraSubOrdens: Boolean; const dt_ajustada: TDateTime ; const Seq: integer): Integer;
var sql :string;
begin
 if dep_codigo=0 then  // quando inseri
    Result :=  EnviarDemanda ( ped_codigo , prd_codigo, 'R' , fti_registro, prf_codigo, 0{IOPCODIGO}, dt_entrega, UsarEstoque )
 else
 begin
   result := dep_codigo;
   sql:= 'UPDATE DEMANDA_PRODUCAO  '+
          ' SET DEP_DATA_ENTREGA = '+ DateToSQL(dt_entrega)+
          ', DEP_QTDE_ESTOQUE  = '+ FloatToSQL(UsarEstoque) +
          ' , DEP_QTDE_PRODUCAO = '+ FloatToSQL(QtdeProduzir)+
          iif(dt_ajustada>0,', DEP_DATA_AJUSTADA = '+DateToSQL(dt_ajustada),'')+
          iif(GeraSubOrdens, ' , DEP_GERASUBORDENS = ''S'' ', ' , DEP_GERASUBORDENS = ''N'' ')+

          ' WHERE DEP_CODIGO = '+ IntToStr(dep_codigo);
   ExecSql(sql);
   AtualizarAjusteDataOrdem(prf_codigo,fti_registro,dt_ajustada,seq);




 end;


end;

 // atualiza os estatus na demanda
procedure TProducaoDao.AtualizarStatusDemanda(const dep_codigo, iop_codigo: Integer; CONST situacao : string);
var sql : string ;
begin
  // caso não tenha numero da demanda pela pelo item de ordem de produção (mais usado em produção)
  if (dep_codigo = 0 )  and (iop_codigo > 0)  then
     sql:= 'UPDATE DEMANDA_PRODUCAO  '+
          ' SET DEP_SITUACAO = '+ QuotedStr(situacao)+
          ' WHERE iop_codigo = '+IntToStr(iop_codigo)
   else
   // caso contrário e sabia o numero
     sql:= 'UPDATE DEMANDA_PRODUCAO  '+
          ' SET DEP_SITUACAO = '+ QuotedStr(situacao)+
          iif(iop_codigo=0,',iop_codigo = null',',iop_codigo = '+IntToStr(iop_codigo))+
          ' WHERE DEP_CODIGO = '+ IntToStr(dep_codigo);
   ExecSql(sql);

end;

procedure TProducaoDao.ConcluirORDEM(const FaltaConcluir, JaConcluida, Concluida, Refugada: double; iop_codigo: integer; const prd_codigo, ped_codigo : string );
var dep_codigo : integer;
    dt_ajustado : TDateTime;
    dias: integer;
    sit : string;
begin
  if prd_codigo <> '' then
   dep_codigo :=  BuscaUmDadoSqlAsInteger (' SELECT dep_codigo FROM DEMANDA_PRODUCAO ' +
                                           '  WHERE iop_codigo = '+  IntToStr(iop_codigo));
  dt_ajustado := BuscaUmDadoSqlAsDateTime( ' SELECT coalesce(iop_data_ajustada, CAST(IOP_DTENTREGA AS TIMESTAMP) ) '+
                                           '  FROM ITEM_ORDEMPRODUCAO   '+
                                           ' WHERE IOP_CODIGO = '+  IntToStr(iop_codigo));

 if  ((FaltaConcluir) > Concluida) then
  Begin
    if (MessageDlg('Deseja que a OP fique com Status PARCIAL de '+
    FormatFloat('###,###,##.'+StrZero('0', dbInicio.Empresa.fPMT_QTDE_DEC_PED), JaConcluida +Concluida) +'  para concluir posteriormente?'
     , mtConfirmation, [mbYes, mbNo], 0) in [mrYes]) then
     begin
      ExecSql(' update ITEM_ORDEMPRODUCAO '+
              ' set iop_qtde_concluida = coalesce(iop_qtde_concluida,0) + '+ FloatToSql(  Concluida) +
              ' , iop_qtde_refugada =  coalesce(iop_qtde_refugada,0) + '+ FloatToSql ( refugada) +
            //  ' , iop_status = '+QuotedStr('F') +
              ' where iop_codigo = '+ IntToStr(iop_codigo));
      HistoricoProducao(iop_codigo,0,'Conclusão parcial de '+FormatFloat('###,###,##.'+StrZero('0', dbInicio.Empresa.fPMT_QTDE_DEC_PED), Concluida) );
      if prd_codigo <> '' then
         DemandaHistorico(dep_codigo,'Conclusão parcial de '+FormatFloat('###,###,##.'+StrZero('0', dbInicio.Empresa.fPMT_QTDE_DEC_PED), Concluida), ped_codigo,  prd_codigo);
     end
    else
    begin
      dias := DaysBetween(date,dt_ajustado) ;
      sit := iif(dias >=0,'P','A');
      ExecSql(' update ITEM_ORDEMPRODUCAO '+
      ' set iop_qtde_concluida = coalesce(iop_qtde_concluida,0) + '+ FloatToSql(  concluida) +
      ' , iop_qtde_refugada = coalesce(iop_qtde_refugada,0) + '+ FloatToSql ( refugada) +
      ' , iop_status = '+QuotedStr('F') +
      ' , iop_data_conclusao = '+datetosql(date) +
      ' , iop_data_ajustada = coalesce(iop_data_ajustada, CAST(IOP_DTENTREGA AS TIMESTAMP) )  '+
      ' , iop_dias_corridos = '+IntToStr(dias) +
      ' , iop_status_entrega = '+ QuotedStr(sit) +
      ' where iop_codigo = '+ IntToStr(iop_codigo))  ;

      ExecSql(' update DEMANDA_PRODUCAO' +
              ' SET DEP_SITUACAO = '+QuotedStr('C')+
              ' where iop_codigo = '+ IntToStr(iop_codigo))  ;

      ExecSql('  UPDATE ORDEM_PROGRAMADA OP '+
              '   SET OPA_DIAS_CORRIDOS = (SELECT datediff(DAY FROM iop_data_conclusao TO IOP_DTENTREGA )   '+
              '                             FROM ITEM_ORDEMPRODUCAO iop                                         '+
              '                             WHERE iop.IOP_STATUS = ''F'' AND IOP.IOP_CODIGO = '+ IntToStr(iop_codigo) +'),  '+
              '       OPA_DATA_FABRICACAO = '+datetosql(date) +
              ' WHERE IOP_CODIGO = '+  IntToStr(iop_codigo));

      ExecSql(' UPDATE ORDEM_PROGRAMADA'+
               '  SET OPA_STATUS = (CASE WHEN OPA_DIAS_CORRIDOS<0 THEN ''A'' ' +
               '                   WHEN OPA_DIAS_CORRIDOS=0 THEN ''P''       ' +
               '                   ELSE  ''T'' END )                         '+
               '  WHERE IOP_CODIGO = '+   IntToStr(iop_codigo));
      HistoricoProducao(iop_codigo,0,'Conclusão da ordem de produção');
      if prd_codigo <> '' then
         DemandaHistorico(dep_codigo,'Conclusão da ordem de produção', ped_codigo,  prd_codigo);
    end

  End
  else if (FaltaConcluir = Concluida) or ((concluida > FaltaConcluir ) and ( DBInicio.Empresa.wPMT_PRODUZIR_MAIS_OP))  then
  begin
     dias := DaysBetween(date,dt_ajustado) ;
     sit := iif(dias >=0,'P','A');
     ExecSql(' update ITEM_ORDEMPRODUCAO '+
    ' set iop_qtde_concluida = coalesce(iop_qtde_concluida,0) + '+ FloatToSql(  concluida) +
    ' , iop_qtde_refugada = coalesce(iop_qtde_refugada,0) + '+ FloatToSql ( refugada) +
    ' , iop_status = '+QuotedStr('F') +
    ' , iop_data_conclusao = '+datetosql(date) +
    ' , iop_data_ajustada = coalesce(iop_data_ajustada, CAST(IOP_DTENTREGA AS TIMESTAMP) )  '+
    ' , iop_dias_corridos = '+IntToStr(dias) +
    ' , iop_status_entrega = '+ QuotedStr(sit) +
    ' where iop_codigo = '+ IntToStr(iop_codigo))  ;

    ExecSql(' update DEMANDA_PRODUCAO' +
       ' SET DEP_SITUACAO = '+QuotedStr('C')+
       ' where iop_codigo = '+ IntToStr(iop_codigo))  ;

    ExecSql('  UPDATE ORDEM_PROGRAMADA OP '+
            '   SET OPA_DIAS_CORRIDOS = (SELECT datediff(DAY FROM iop_data_conclusao TO IOP_DTENTREGA )   '+
            '                             FROM ITEM_ORDEMPRODUCAO iop                                         '+
            '                             WHERE iop.IOP_STATUS = ''F'' AND IOP.IOP_CODIGO = '+ IntToStr(iop_codigo) +'),  '+
            '       OPA_DATA_FABRICACAO = '+datetosql(date) +
            ' WHERE IOP_CODIGO = '+  IntToStr(iop_codigo));

    ExecSql(' UPDATE ORDEM_PROGRAMADA'+
           '  SET OPA_STATUS = (CASE WHEN OPA_DIAS_CORRIDOS<0 THEN ''A'' ' +
           '                   WHEN OPA_DIAS_CORRIDOS=0 THEN ''P''       ' +
           '                   ELSE  ''T'' END )                         '+
           '  WHERE IOP_CODIGO = '+   IntToStr(iop_codigo));
    HistoricoProducao(iop_codigo,0,'Conclusão da ordem de produção');
    if prd_codigo <> '' then
      DemandaHistorico(dep_codigo,'Conclusão da ordem de produção', ped_codigo,  prd_codigo);
  end;
  if refugada >0  then
    HistoricoProducao(iop_codigo,0,'Refugada '+FormatFloat('###,###,##.'+StrZero('0', dbInicio.Empresa.fPMT_QTDE_DEC_PED), refugada) );

end;
procedure TProducaoDao.EstornarEstoqueInsumo(const iop_codigo: Integer; iop_nordem: string);
var dep_codigo : integer;
     Empenhado: double;

begin
  //materia prima
   OpenAux2('SELECT epe_codigo ' +
            ' FROM MATERIAPRIMA_ORDEMPRODUCAO mp '+
            ' JOIN EMPENHO epe ON (mp.IOP_CODIGO = epe.IOP_CODIGO AND epe.MP_CODIGO = mp.MP_CODIGO) ' +
            ' where mp.iop_codigo = '+IntToStr(iop_codigo) +
            ' and epe.EMP_TIPO <> ''E''  '
            ) ;
   qAux2.First;
   while not qAux2.Eof do
   begin
    EstornarEmpenho(qAux2.FieldByName('epe_codigo').AsInteger);
    qaux2.Next;
   end;


end;

function TProducaoDao.ConsumirEstoqueInsumo(const iop_codigo: Integer; iop_nordem: string): Double;
var dep_codigo : integer;
     Empenhado, Resultado: double;
begin
   //materia prima
   Resultado := 0;
   OpenAux('SELECT * FROM MATERIAPRIMA_ORDEMPRODUCAO mp '+
           ' JOIN PRD0000 pr ON (pr.PRD_CODIGO = mp.PRD_CODIGO) where iop_codigo = '+IntToStr(iop_codigo) ) ;

   while not qAux.Eof do
   begin
     if qAux.FieldByName('PRD_GERENCIA_LOTE').AsString = 'S' then
     begin
        HistoricoProducao(iop_codigo,qaux.FieldByName('mp_codigo').AsInteger,'Consumo automático de lote pela data ao iniciar a produção');
        Empenhado := ConsumirLotesAutomatico( qAux.FieldByName('mp_codigo').AsInteger,
                                             iop_codigo,
                                             qAux.FieldByName('prd_codigo').AsString,
                                             qAux.FieldByName('prd_refer').AsString,
                                             iop_nordem,
                                             qAux.FieldByName('mp_consumototal').AsFloat );
        Resultado := Empenhado;

     end
     else  // sem controle do lote
     begin
       HistoricoProducao(iop_codigo,qaux.FieldByName('mp_codigo').AsInteger ,'Consumo automático');
       EmpenharInsumo(iop_codigo,
                          qaux.FieldByName('mp_codigo').AsInteger,
                          qaux.FieldByName('prd_codigo').AsString,
                          qaux.FieldByName('mp_consumototal').AsFloat,
                          date,
                          0,
                          qaux.FieldByName('prd_refer').AsString,
                          iop_nordem,
                          'A'
                        );
        Empenhado := qAux.FieldByName('mp_consumototal').AsFloat
     end;
    ExecSql(' update MATERIAPRIMA_ORDEMPRODUCAO set MP_EMPENHADO =  coalesce(MP_EMPENHADO,0) + '+FloatToSQL(Empenhado)+
           ' WHERE MP_CODIGO = '+qAux.FieldByName('MP_CODIGO').AsString);
    qAux.Next;
   end;
   Result := Resultado;
end;

function TProducaoDao.ConsumirLotesAutomatico(const mp_codigo, iop_codigo: integer; const prd_codigo, prd_refer,
  IOP_NORDEM: string;const consumototal : double): double;
var  FaltaEmpenhar, QuantEmpenharLote : double;
begin
   FaltaEmpenhar :=  consumototal;
   // lotes do produto com saldo ordenado pela data de fabricação mais antiga e valida
   OpenAux2(' SELECT * from PRD_LOTE '+
       ' where PRD_CODIGO =  '+ QuotedStr(prd_codigo)+
       ' AND prdl_saldo >0             '+
       ' ORDER BY PRDL_DATA_FABRICACAO, PRDL_DATA_VALIDADE ');
   qAux2.First;
   while (not qAux2.Eof) AND (FaltaEmpenhar > 0 ) do
   begin
      if FaltaEmpenhar > qAux2.FieldByName('PRDL_SALDO').AsFloat then
      begin
         FaltaEmpenhar := FaltaEmpenhar-qAux2.FieldByName('PRDL_SALDO').AsFloat ;
         QuantEmpenharLote :=  qAux2.FieldByName('PRDL_SALDO').AsFloat;
      end
      else
      begin
        QuantEmpenharLote := FaltaEmpenhar;
        FaltaEmpenhar := 0 ;
      end;
      EmpenharInsumo(
          iop_codigo,
          mp_codigo,
          prd_codigo,
          QuantEmpenharLote,
          date,
          qAux2.FieldByName('PRDL_REGISTRO').AsInteger, // lote
          // qAux2.FieldByName('PRDL_LOTE').AsInteger, // lote
          prd_refer,
          IOP_NORDEM,
          'A'
            );

      qAux2.Next;
   end;
  if FaltaEmpenhar > 0  then
   HistoricoProducao(iop_codigo,mp_codigo ,'Não tem saldo suficiente para consumir nos lotes');

  Result := consumototal - FaltaEmpenhar;
end;

procedure TProducaoDao.CustoServico(const iop_codigo: integer; const  total : double);
begin
  ExecSql('update ITEM_ORDEMPRODUCAO set IOP_CUSTOSERVICOS  = coalesce(IOP_CUSTOSERVICOS,0)  + ' +FloatToSQL(total) +
  ' where iop_codigo = '+ IntToStr(iop_codigo));
end;

// atualiza histórico
function TProducaoDao.DemandaHistorico(const  dep_codigo: Integer; const descricao, ped_codigo,prd_codigo: string;  ReenvioDemanda :  boolean = False): Boolean;
Var SQL : string;
begin
  //se tinha histórico de uma demanda que existia e foi estornada, então pegar
  if ReenvioDemanda and (dep_codigo >0) or
    (BuscaUmDadoSqlAsInteger('SELECT CAST(COUNT(*) AS integer) FROM DEMANDA_HISTORICO '+
                             ' WHERE PED_CODIGO = '+QuotedStr(ped_codigo)+
                             '  and prd_codigo = '+QuotedStr(prd_codigo) )  >0)
     // tiver demanda
                              then
  begin
    sql := ' update DEMANDA_HISTORICO SET DEP_CODIGO = '+IntToStr(dep_codigo) +
           ' WHERE PED_CODIGO = '+QuotedStr(ped_codigo)+
           ' and prd_codigo = '+QuotedStr(prd_codigo);
    try
      ExecSql(sql);
      result := true;
    except on E: Exception do
      begin
        result:= False;
        raise Exception.Create(e.Message);
      end;
    end;
  end;
  sql := 'INSERT INTO DEMANDA_HISTORICO ' +
           '  ( HDE_DATAMVTO, USU_CODIGO, HDE_DESCRICAO, DEP_CODIGO, PED_CODIGO, prd_codigo) '+
           ' VALUES('+DateTimeToSQL(now) + ','+
           DBInicio.Usuario.CODIGO + ','+
           QuotedStr(copy( descricao,1,150)) + ','+
           IntToStr(dep_codigo)  +','+
           QuotedStr(ped_codigo) + ','+
           QuotedStr(prd_codigo)+        ')';
  try
    ExecSql(sql);
    result := true;
  except on E: Exception do
    begin
      result:= False;
      raise Exception.Create(e.Message);
    end;
  end;

end;

function TProducaoDao.EmpenharInsumo(const iop_codigo: Integer; const mp_codigo: Integer; const prd_codigo: string; const quantde: Double;
const empenho: TDate; const Lote: Integer; const prd_refer: string; const nordem, tipo: string) : double;
var sql, almoxarifado : string;
    kardex: TfrmBaseDbEstoque;
    Custo : double;
    CustoTotal : double;
    //envase : boolean;
begin
  //envase := BuscaUmDadoSqlAsInteger(' SELECT ore_codigo FROM ITEM_ORDEMPRODUCAO WHERE IOP_CODIGO =  '+ IntToStr(iop_codigo) ) > 0;
  If DBInicio.Empresa.PMT_CUSTO_MATERIAPRIMA = 'L' then    // CUSTO LIQUIDO
    custo := BuscaUmDadoSqlAsFloat('SELECT PRD_PCUSTO FROM PRD0000 P1 WHERE P1.PRD_CODIGO = '+QuotedStr(prd_codigo)  )
  else if DBInicio.Empresa.PMT_CUSTO_MATERIAPRIMA = 'E' then //CUSTO DE ENTRADA
    custo := BuscaUmDadoSqlAsFloat('SELECT PRD_CUSTOCOMIPI FROM PRD0000 P1 WHERE P1.PRD_CODIGO = '+QuotedStr(prd_codigo)  )
  else if DBInicio.Empresa.PMT_CUSTO_MATERIAPRIMA = 'M' then //CUSTO MEDIO
   custo := BuscaUmDadoSqlAsFloat('SELECT PRD_PMEDIO FROM PRD0000 P1 WHERE P1.PRD_CODIGO = '+QuotedStr(prd_codigo)  )  ;
  CustoTotal := custo * quantde;
  ExecSql(' UPDATE MATERIAPRIMA_ORDEMPRODUCAO MP   '+
          ' SET MP_CUSTO = COALESCE (MP_CUSTO,0) + ' + FloatToSQL(CustoTotal)+
          ' WHERE MP_CODIGO = '+ IntToStr(mp_codigo) )   ;

  ExecSql(' UPDATE ITEM_ORDEMPRODUCAO IOP    '+
          ' SET IOP_CUSTOMP = COALESCE (IOP_CUSTOMP,0)+  '  + FloatToSQL(CustoTotal)+
          ' WHERE IOP_CODIGO = '+ IntToStr(iop_codigo) );

  sql := ' insert into empenho ( iop_codigo, mp_codigo, prd_codigo, emp_quantidade, emp_dataempenho, emp_tipo, prdl_registro, usu_codigo, EPE_CUSTO) '+
         ' values ('+ IntToStr(iop_codigo)+','+IntToStr(mp_codigo)+ ','+ QuotedStr(prd_codigo) +',' +FloatToSQL(quantde)+','+
                DateToSQL(empenho)+ ','+ QuotedStr(tipo) +','+ iif(lote=0,'null', IntToStr(Lote))+ ','+ DBInicio.Usuario.CODIGO+ ','+ FloatToSQL(custo) +')';
 ExecSql(sql);
 Result :=   CustoTotal;
 kardex := TfrmBaseDbEstoque.create(Application);
 try

//   saldo:= kardex.KardexRetornaSaldo(prd_codigo,DBInicio.empresa.PMT_AMX_PRODUCAO_SAIDA,DBInicio.Empresa.EMP_CODIGO);
    //saida do insumo do estoque

    OpenAux4(' SELECT fi.AMX_CODIGO, op.CLI_CODIGO FROM ORDEMPRODUCAO op ' +
              ' JOIN ITEM_ORDEMPRODUCAO iop ON (iop.OPR_CODIGO = op.OPR_CODIGO ) ' +
              ' JOIN PRD0000 pr ON (pr.PRD_CODIGO = iop.PRD_CODIGO) ' +
              ' LEFT JOIN FTC0000 ft ON (ft.PRD_REFER = pr.PRD_REFER) ' +
              ' LEFT JOIN FTC_IT01 fi ON ft.PRD_REFER = fi.PRD_REFER ' +
              ' WHERE iop.IOP_CODIGO = ' + IntToStr(iop_codigo) +
              ' AND fi.PRD_REFER_ITENS = ' + QuotedStr(prd_refer)
              );

   if DBInicio.GetParametroSistema('PMT_MULTIPLAS_IE') = 'S' then
   begin
     almoxarifado := BuscaUmDadoSqlAsString(
       ' SELECT al.AMX_CODIGO ' +
       ' FROM  ORDEMPRODUCAO op ' +
       '  JOIN ITEM_ORDEMPRODUCAO iop ON (iop.OPR_CODIGO = op.OPR_CODIGO) ' +
       '  JOIN PED0000 pd ON (pd.PED_CODIGO = op.PED_CODIGO) ' +
       '  JOIN ALMOX0000 al ON (al.EMI_CODIGO = pd.EMI_CODIGO) ' +
       '  WHERE IOP_CODIGO = ' + IntToStr(iop_codigo)
     );
   end
   else
   begin
     if DBInicio.GetParametroSistema('PMT_BAIXA_ESTOQUE_AVANCADO')  = 'S' then
     begin
       almoxarifado :=  BuscaUmDadoSqlAsString('SELECT AMX_CODIGO FROM PCP_TEMP' + DBInicio.Usuario.CODIGO +  ' WHERE PRD_CODIGO =  ' + QuotedStr(PRD_CODIGO) );
       ExecSql(' UPDATE MATERIAPRIMA_ORDEMPRODUCAO MP   '+
               ' SET AMX_CODIGO = ' + QuotedStr(almoxarifado)+
               ' WHERE MP_CODIGO = '+ IntToStr(mp_codigo) )   ;


     end
     else
       almoxarifado := iif(qAux4.FieldByName('AMX_CODIGO').AsString <> '' , qAux4.FieldByName('AMX_CODIGO').AsString, DBInicio.empresa.PMT_AMX_PRODUCAO_SAIDA );
   end;
   kardex.KardexLancamento(
          NORDEM,         //registro interno
          'PRO',          // TIPO DE REGISTRO
          almoxarifado,   // almoxarifado origem
          '',             // amoxarifado destino
          PRD_CODIGO,
          '',//grade
          '', //UNIDADE DE MEDIDA
          'S', // SAIDA
          '',
          IntToStr(Lote),
          'SAIDA PARA PRODUCAO',
          Now,
          quantde,
          nordem,
          prd_refer,
           0
             );

//   if (Lote <>  0) then
//    DBInicio.ExecSql('UPDATE PRD_LOTE SET PRDL_SALDO = PRDL_SALDO - ' + FloatToSql(quantde) + ' WHERE PRDL_REGISTRO = ' + IntToStr(Lote) );

 finally
    FreeAndNil(kardex);
 end;
end;

function TProducaoDao.EnviaraProducao(const ped_codigo: string; const Dt_Emissao, dt_Entrega: TDate; const cli_codigo: string): integer;
var ordemprod : Integer;
 SQL: string;
begin
   ordemprod := 0;
    if ped_codigo <> '' then//pedido ficara branco quando for envase digitado pelo produto
        ordemprod:=
            BuscaUmDadoSqlAsInteger (' SELECT opr_codigo FROM ORDEMPRODUCAO '+
                                     ' WHERE PED_CODIGO = '+QuotedStr(ped_codigo)+' AND EMP_CODIGO = '+QuotedStr(DBInicio.Empresa.EMP_CODIGO) +
                                     '  and opr_status <> '+QuotedStr('C'));

  if ordemprod =0  then
  begin
    ordemprod := GetNextSequence('GEN_ORDEMPRODUCAO');

   sql := 'INSERT INTO ORDEMPRODUCAO (OPR_CODIGO, EMP_CODIGO, OPR_EMISSAO, PED_CODIGO, OPR_STATUS, CLI_CODIGO, OPR_DTENTREGA) '+
          ' VALUES( '+ IntToStr(ordemprod) +','+
          QuotedStr(DBInicio.Empresa.EMP_CODIGO)+','+
          DateTimeToSQL(Now)+','+
          iif(ped_codigo = '','null',QuotedStr(ped_codigo))+','+
          QuotedStr('L')+','+
          iif(ped_codigo = '','null',QuotedStr(cli_codigo))+  ','+
          DateTimeToSQL(dt_Entrega)+
          ')';
     ExecSql(sql);
  end;
  Result := ordemprod;

end;

function TProducaoDao.EnviarDemanda(const ped_codigo, prd_codigo, situacao: string; const fti_registro, prf_registro, iop_codigo: Integer; const dtEntrega: TDate; const estoque: double; produzir : double = 0.0): Integer;
var SQL, desc : string;
    i : Integer;

begin
  i := GetNextSequence('GEN_DEMANDA_PRODUCAO');
  SQL := 'INSERT INTO DEMANDA_PRODUCAO ( DEP_CODIGO, PRD_CODIGO, PED_CODIGO, EMP_CODIGO, PRF_REGISTRO, DEP_DATA_ENTREGA, DEP_SITUACAO, DEP_QTDE_ESTOQUE,DEP_QTDE_PRODUCAO, FTI_REGISTRO, IOP_CODIGO ) '+
           ' VALUES('+
              IntToStr(i) + ','+
              QuotedStr(prd_codigo)+','+
              QuotedStr(ped_codigo) + ','+   //ped_codigo
              QuotedStr(DBInicio.Empresa.EMP_CODIGO) + ','     +
              IntToStr(prf_registro) + ','+
              DateToSQL(dtEntrega)+','+
              QuotedStr(iif(situacao='I','R',situacao)) + ','+
              FloatToSQL( estoque) +','+
              FloatToSQL( produzir) +','+
              iif(fti_registro = 0 ,'null', IntToStr(fti_registro))+','+// ITEM DA FICHA TECNICA FTI_REGISTRO
              iif(iop_codigo = 0 ,'null', IntToStr(iop_codigo))+ // item de produção, somente quando vai a produção
               ')' ;
  try
    ExecSql(sql);
    if situacao = 'R' then
      desc := 'Recebido em demanda';
    if situacao = 'E' then
     desc := 'Enviado a produção';
    if situacao = 'I' then
     DESC := 'Inclusão de pedido interno';

    DemandaHistorico(i,desc,ped_codigo,prd_codigo, true) ;
    result := i;
  except on E: Exception do
    begin
      result:= 0;
      raise Exception.Create(e.Message);
    end;
  end;

end;

function TProducaoDao.EnviarItemProducao(const  prd_codigo , prd_refer, ped_codigo: string; const Dt_Emissao: TDate; dt_Entrega: TDate;
             const cli_codigo: string;  QtdePrd: Double ; const pesokg, preco: double; const prf_registro, fti_registro, dep_codigo, programa: integer ;var  Item : TItemProducao;
             const Subordens, envase: boolean; dt_ajuste: TDateTime = 0; reg_lote: Integer = 0  ): Boolean;
 var IOP, SEQ : Integer;
  sql, Lote:string;
  controle: boolean;
  registro, chave : Integer;
  i : integer;
  P: integer; // quantidade de programação
  clone : TFDMemTable;
  ore_envase: integer;
  prefixo : string;
  Estoque, QtdeLote: double;

begin
  try

     if item.opr_codigo = 0  then
      item.opr_codigo:= EnviaraProducao(ped_codigo,Dt_Emissao ,dt_Entrega ,cli_codigo );

      // ordem programada
    if (item.ordem  = '') and not envase  then
       OpenAux4(' SELECT * FROM ORDEM_PROGRAMADA '+
                ' WHERE PED_CODIGO = '+  QuotedStr(ped_codigo) +
                ' AND PRD_CODIGO = '+   QuotedStr(prd_codigo) +
                ' ORDER BY OPA_SEQUENCIAL ');
     clone := TFDMemTable.Create(Self);

     try
       if (item.ordem  = '') and (not envase)  then
       begin
         qAux4.FetchAll;
         clone.Data  := qAux4.Data;

       end;
       if (clone.IsEmpty) then
         p := 1 ;

       if  (NOT clone.IsEmpty)  then
       begin
          clone.First;
          p:= clone.RecordCount;
          dt_Entrega := clone.FieldByName('OPA_DATA_ENTREGA').AsDateTime;
          dt_ajuste := clone.FieldByName('OPA_DATA_AJUSTADA').AsDateTime;
          QtdePrd := clone.FieldByName('OPA_QTDE_PRODUZIR').AsFloat;
       end;
       for I := 1 to p do
       begin

         if prf_registro > 0  then
         begin
           if programa>0 then
             seq := BuscaUmDadoSqlAsInteger ('SELECT MAX(IOP_SEQUENCIA) '+
                                 ' FROM ORDEMPRODUCAO op   '+
                                 ' JOIN ITEM_ORDEMPRODUCAO IOP ON (OP.OPR_CODIGO = IOP.OPR_CODIGO) '+
                                 ' WHERE ORE_CODIGO IS NULL '+
                                 ' AND IOP_STATUS <> ''C'' '+
                                 ' AND PED_CODIGO = '+QuotedStr(ped_codigo) +
                                 ' AND PRD_CODIGO = '+QuotedStr(prd_codigo)+
                                 ' AND PRF_REGISTRO IS NOT NULL  ')
           else
             seq:= BuscaUmDadoSqlAsInteger ('SELECT MAX(IOP_SEQUENCIA) '+
                                           ' FROM ORDEMPRODUCAO op   '+
                                           ' JOIN ITEM_ORDEMPRODUCAO IOP ON (OP.OPR_CODIGO = IOP.OPR_CODIGO) '+
                                           ' WHERE ORE_CODIGO IS NULL '+
                                           ' AND IOP_STATUS <> ''C'' '+
                                           ' AND PED_CODIGO = '+QuotedStr(ped_codigo) +
                                           ' AND PRF_REGISTRO IS NOT NULL  ');
           inc(seq);
           item.ordem := PrefixoOrdem(ped_codigo,prd_codigo) ;
           Item.prefixo:= item.ordem;
         end
         else
         begin
           seq := BuscaUmDadoSqlAsInteger ('SELECT MAX(IOP_SEQUENCIA) '+
                               ' FROM ORDEMPRODUCAO op   '+
                               ' JOIN ITEM_ORDEMPRODUCAO IOP ON (OP.OPR_CODIGO = IOP.OPR_CODIGO) '+
                               ' WHERE ORE_CODIGO IS NULL '+
                               ' AND IOP_STATUS <> ''C'' '+
                               '   AND prf_registro IS NULL  '+
                               ' AND PED_CODIGO = '+QuotedStr(ped_codigo) +
                               ' AND IOP_PREFIXO ='+ QuotedStr(Item.prefixo));
           inc(seq);
           item.ordem := item.prefixo+'-'+strzero( SEQ,2) ;
         end;
         iop := GetNextSequence('gen_item_ordemproducao');
         if envase then
          ore_envase := GetNextSequence('GEN_ORDEM_ENVASE');

         SQL:='INSERT INTO ITEM_ORDEMPRODUCAO (iop_codigo, PRD_CODIGO, OPR_CODIGO, IOP_SEQUENCIA, IOP_NORDEM,IOP_PREFIXO, IOP_QUANTIDADE, IOP_PESO, IOP_STATUS,'+
                  // IOP_DATA_INICIO, IOP_DATA_CONCLUSAO, IOP_DATA_PREVISTA,  IOP_CUSTO,'+
                  ' IOP_PRECO, PRF_REGISTRO, fti_registro, IOP_DATALIBERACAO,IOP_DTENTREGA, iop_seq_prg, IOP_STATUS_ENVASE, ORE_CODIGO, IOP_DATA_AJUSTADA, PRDL_REGISTRO) '+
                  ' VALUES( '+
                  IntToStr(iop) +','+
                  QuotedStr(prd_codigo)+','+
                  IntToStr(item.opr_codigo) +','+
                  IntToStr(SEQ)+','+
                  QuotedStr(item.ordem)+','+
                  QuotedStr(Item.prefixo)+ ','+
                  FloatToSQL(QtdePrd)+','+
                  FloatToSQL(pesokg)+ ','+
                  QuotedStr('L')+','+
                  FloatToSQL( preco)+','+
                  iif(prf_registro = 0 ,'null', IntToStr(prf_registro)) +','+   //item do pedido
                  iif(fti_registro = 0 ,'null', IntToStr(fti_registro))+  ','+ //ficha técnica
                  DateTimeToSQL(now) + ','+ // data da liberação
                  DateToSQL(dt_Entrega) +','+
                  iif(p>1, IntToStr(i),IIF(P=1,IntToStr( PROGRAMA),'null') ) +  ','+
                  Iif(envase, QuotedStr('P'), 'NULL') +','+
                  IIF(envase,IntToStr(ore_envase),'null') +   ','+
                  DateTimeToSQL(dt_ajuste)+ ','  +
                  iif(reg_lote = 0,'NULL',IntToStr(reg_lote) )+
                     ')';

         ExecSql(sql);

         if not clone.IsEmpty then
         begin
           sql:= ' UPDATE ORDEM_PROGRAMADA '+
                 '    SET IOP_CODIGO = '+ IntToStr(iop) +
                 '  WHERE OPA_SEQUENCIAL =  '+clone.FieldByName('OPA_SEQUENCIAL').AsString +
                 '    AND PRD_CODIGO =   ' + QuotedStr(prd_codigo) +
                 '    AND PED_CODIGO =   ' + QuotedStr(ped_codigo) ;
           ExecSql(sql);
         end;
          //   ' UPDATE ORDEM_PROGRAMADA  SET IOP_CODIGO = '+
         if not envase then //envase não tem fabricação
           ProcessoFabricacao(prd_codigo,item.ordem, iop);
         Result := True;
         item.iop_codigo := iop;
         FichaTecnicaSubOrdem(QtdePrd,ped_codigo,prd_refer,cli_codigo,item, iif(p>1, i,IIF(P=1, PROGRAMA,0) ) , dt_Entrega,dt_ajuste, Subordens ) ;
          if not envase then
         begin
           AtualizarStatusDemanda(dep_codigo, item.iop_codigo,'E');
           DemandaHistorico(dep_codigo,
                            'Enviado para produção de '+FormatFloat('###,###,##0.'+StrZero('0', dbInicio.Empresa.fPMT_QTDE_DEC_PED), QtdePrd),
                             ped_codigo,prd_codigo);
         end
         else
         begin
           HistoricoProducao(IOP,0,'Enviado ao envase');
         end;
         //somente se tem ordem programada
         if p >1  then
         begin
          clone.Next;
          dt_Entrega := clone.FieldByName('OPA_DATA_ENTREGA').AsDateTime;
          dt_ajuste := clone.FieldByName('OPA_DATA_AJUSTADA').AsDateTime;
          QtdePrd := clone.FieldByName('OPA_QTDE_PRODUZIR').AsFloat;
          inc(seq);
         end;

         controle := BuscaUmDadoSqlAsString('select PRD_GERENCIA_LOTE FROM PRD0000 where prd_codigo = '+QuotedStr(prd_codigo) ) = 'S';
         registro:= GetNextSequence('gen_prd_lote_id');
         if frmSelecaoProduto <> nil then
         begin
          Lote := frmSelecaoProduto.cbLoteProduto.idretorno;
          Estoque := iif(Envase, frmSelecaoProduto.edConsumoUnitario.Value, frmSelecaoProduto.edConsumoTotal.Value);
          QtdeLote := frmSelecaoProduto.edConsumoTotal.Value;
         end
         else
         begin
           if DBInicio.Empresa.PMT_REL_ORDEMPRODUCAO = '13' then
            Lote := numLoteEIP
           else
            Lote := '';
          Estoque := 0;
          QtdeLote := 0;
         end;
         if (DBInicio.Empresa.PMT_REL_ORDEMPRODUCAO <> '13') then
           numLoteEIP := CarregaLoteAutomatico(controle, False, Lote)
         else
         if (DBInicio.Empresa.PMT_REL_ORDEMPRODUCAO = '13') and (Lote = '') then
           numLoteEIP := CarregaLoteAutomatico(controle, False, Lote);




         sql:= 'INSERT INTO PRD_LOTE  (PRDL_REGISTRO, EMP_CODIGO,       '+
             ' PRDL_LOTE, PRD_CODIGO, PRDL_CADASTRO, PRDL_DESCRICAO , PRDL_SALDO, PRDL_QTDELOTE, IOP_CODIGO '+
             '  )                                      '+
             ' VALUES('+IntToStr(registro) +',' +
              QuotedStr(DBInicio.Empresa.EMP_CODIGO) +',' +
              QuotedStr(numLoteEIP) +','+
              QuotedStr(prd_codigo) +','+
              datetosql(date) + ','+
              QuotedStr(numLoteEIP) +  ','+
              FloatToSQL(Estoque) +  ','+
              iif( envase, FloatToSQL(Estoque), FloatToSQL(QtdeLote)  ) +  ','+
              IntToStr(IOP)+
              ')';
              ;
         ExecSql(SQL);
       end;
     finally
       FreeAndNil(clone);
     end;
  except on E: Exception do
    begin
      result := false;
      MessageDlg(e.Message, mtError, [mbOK], 0);
    end;
  end;

end;

procedure TProducaoDao.EstornaMP_Substituta(const mp_codigo, substituta: integer; consumo: double);
begin
  // repor o consumo de insumo de origem
  ExecSql(' update MATERIAPRIMA_ORDEMPRODUCAO set MP_CONSUMOTOTAL = MP_CONSUMOTOTAL +' + FloatToSQL(consumo) + ' where mp_codigo = '+IntToStr(substituta ));
  ExecSql(' delete from MATERIAPRIMA_ORDEMPRODUCAO where mp_codigo = '+ IntToStr(mp_codigo));
  ExecSql(' delete from HISTORICO_ORDEMPRODUCAO where mp_codigo = '+ IntToStr(mp_codigo));
end;

procedure TProducaoDao.EstornarEmpenho(const epe_codigo: integer);
var kardex: TfrmBaseDbEstoque;
    custo : double   ;
    almoxarifado: string;
begin
  ExecSql('update empenho set emp_tipo = ''E'' where epe_codigo = '+IntToStr(epe_codigo))  ;
  kardex := TfrmBaseDbEstoque.create(Application);
  try
    OpenAux('SELECT IOP_NORDEM, E.PRD_CODIGO, E.PRDL_REGISTRO, E.EMP_QUANTIDADE ,  mp.MP_EMPENHADO,  PR.PRD_REFER, mp.MP_CODIGO, epe_custo, e.iop_codigo, mp.AMX_CODIGO   '+
            ' FROM EMPENHO E '+
            ' JOIN ITEM_ORDEMPRODUCAO IOP ON (IOP.IOP_CODIGO = E.IOP_CODIGO) '+
            ' JOIN PRD0000 PR ON E.PRD_CODIGO = PR.PRD_CODIGO' +
            ' JOIN MATERIAPRIMA_ORDEMPRODUCAO mp ON (mp.MP_CODIGO = e.MP_CODIGO) '+
            ' WHERE EPE_CODIGO = '+IntToStr(epe_codigo)  );

    if DBInicio.GetParametroSistema('PMT_BAIXA_ESTOQUE_AVANCADO')  = 'S' then
      almoxarifado := qAux.FieldByName('AMX_CODIGO').AsString
    else
      almoxarifado := DBInicio.empresa.PMT_AMX_PRODUCAO_SAIDA;

    custo := qAux.FieldByName('epe_custo').AsFloat * qAux.FieldByName('EMP_QUANTIDADE').AsFloat ;
    kardex.KardexLancamento(
          qAux.FieldByName('iop_nordem').AsString, // numero documento
          'PRO',
          almoxarifado,
           '',   //amoxarifado destino
          qAux.FieldByName('PRD_CODIGO').AsString  ,
          '',//grade
          '', //UNIDADE DE MEDIDA
          'E', // ENTRADA
          '',
          qAux.FieldByName('PRDL_REGISTRO').AsString,
          'ESTORNO DE INSUMO',
          Now,
          qAux.FieldByName('EMP_QUANTIDADE').AsFloat,
          qAux.FieldByName('iop_nordem').AsString,
          qAux.FieldByName('prd_refer').AsString  ,
           0
             );
       // caso consumio mais que o projeto, mas depois ele estornou tudo o empenhado na tela de materia-prima vai ficar negativo, por isso
       // ele checa e joga zero
      if (qAux.FieldByName('EMP_QUANTIDADE').AsFloat >= qAux.FieldByName('MP_EMPENHADO').AsFloat )  then
         ExecSql('UPDATE MATERIAPRIMA_ORDEMPRODUCAO '+
              ' SET MP_EMPENHADO = 0,  '+
              ' MP_CUSTO = 0  '+
              ' WHERE MP_CODIGO = '+ qAux.FieldByName('MP_CODIGO').AsString)
      else
        ExecSql('UPDATE MATERIAPRIMA_ORDEMPRODUCAO '+
                ' SET MP_EMPENHADO = MP_EMPENHADO - '+ FloatToSQL(qAux.FieldByName('EMP_QUANTIDADE').AsFloat)+','+
                ' MP_CUSTO = MP_CUSTO - '+FloatToSQL(custo)  +
                ' WHERE MP_CODIGO = '+ qAux.FieldByName('MP_CODIGO').AsString);

      ExecSql('update ITEM_ORDEMPRODUCAO set IOP_CUSTOMP = IOP_CUSTOMP - '+FloatToSQL(custo)  +
              ' where iop_codigo = '+qAux.FieldByName('iop_codigo').AsString);

  finally
    FreeAndNil(kardex);
  end;
end;



//function TProducaoDao.EstornoDemanda(const dep_codigo:string): Boolean;
function TProducaoDao.EstornoDemanda(ped_codigo:string): Boolean;
var sql : string;

begin
   try
     //não excluir os históricos, incluir hisórico de estorno
    OpenAux('SELECT * FROM DEMANDA_PRODUCAO '+
            ' WHERE ped_codigo = ' + QuotedStr(ped_codigo) +  ' AND emp_codigo = ' + QuotedStr(DBInicio.emp_codigo) );
    qAux.First;
    while not qAux.Eof do
    begin
      sql := 'DELETE FROM DEMANDA_PRODUCAO WHERE ped_codigo = ' + QuotedStr(ped_codigo) + ' AND prd_codigo = ' + QuotedStr(qAux.FieldByName('prd_codigo').AsString) + ' AND emp_codigo = ' + QuotedStr(DBInicio.Emp_Codigo) ;
      ExecSql(sql);
      DemandaHistorico(StrToInt(ped_codigo),'Estornado',qAux.FieldByName('ped_codigo').AsString,qAux.FieldByName('prd_codigo').AsString, true) ;
      qAux.Next;
    end;
    result := true;
  except on E: Exception do
    begin
      result:= False;
      raise Exception.Create(e.Message);
    end;
  end;
end;

function TProducaoDao.EstornoEnvase(const iop_codigo: integer): boolean;
begin
  ExecSql('delete from MATERIAPRIMA_ORDEMPRODUCAO where iop_codigo = '+IntToStr(iop_codigo));
  ExecSql('delete from ITEM_ORDEMPRODUCAO where iop_codigo = '+IntToStr(iop_codigo))  ;
end;

procedure TProducaoDao.EstornoReserva(const prd_codigo: string; UsarEstoque: Double);
begin
  OpenAux('SELECT * FROM KARDEX_ALMOX_SALDO '+
          ' WHERE PRD_CODIGO = '+QuotedStr(prd_codigo) +
          '   AND KAS_RESERVA > 0 ' +
           ConcatSe(' and ', DBInicio.ExclusivoSql('ESTOQUES'))+
          ' ORDER BY AMX_CODIGO ' );

   qAux.First;
   // ele vai varrendo o almoxarifado e retirando caso haja estoque
   while (not qAux.Eof) and (UsarEstoque > 0) do
   begin
     IF qAux.FieldByName('KAS_RESERVA').AsFloat >= UsarEstoque then
     begin
        ExecSql('update KARDEX_ALMOX_SALDO '+
                ' set kas_reserva = coalesce(kas_reserva,0) - '+ FloatToSQL(UsarEstoque) +
                ' where kas_registro = '+ qAux.FieldByName('kas_registro').AsString);
        UsarEstoque := 0;
        break;

     end;
     if (UsarEstoque > qAux.FieldByName('KAS_RESERVA').AsFloat)  then
     begin


       UsarEstoque := UsarEstoque -  qAux.FieldByName('KAS_RESERVA').AsFloat ;
       ExecSql('update KARDEX_ALMOX_SALDO '+
               ' set kas_reserva = coalesce(kas_reserva,0) - '+ FloatToSQL(qAux.FieldByName('KAS_RESERVA').AsFloat) +
               ' where kas_registro = '+ qAux.FieldByName('kas_registro').AsString);
     end;
     qAux.Next;
   end;

end;

end.
