unit Ped0009;


interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, BaseDbEstoqueForm,
  Dialogs, StdCtrls, Buttons, ExtCtrls, ComCtrls, Db, DBTables, Mask,
   rxToolEdit,  rxCurrEdit, SqlClientDataSet, Provider, SqlExpr,DBClient, DBLocal,
  DBLocalS, DBCtrls, {uProcedimentos,} uPedidoDAO, SimpleDS,
  Data.DBXFirebird, ACBrEnterTab, ACBrBase, ACBrCalculadora, BaseForm, Data.FMTBCd, JvExMask, JvToolEdit;

type
  TFormPedidoDuplicar = class(TFrmBaseDbEstoque)
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Edt_Cod_Cliente: TEdit;
    Edt_Nome_Pedido: TEdit;
    Progresso: TProgressBar;
    GroupBox2: TGroupBox;
    LBL_VALOR: TLabel;
    CurrDescto: TCurrencyEdit;
    Rad_Valor: TRadioButton;
    Rad_Porcentual: TRadioButton;
    SqlCdsCalculaPed: TSQLClientDataSet;
    SqlCdsCalculaPedEMP_CODIGO: TStringField;
    SqlCdsCalculaPedPED_CODIGO: TStringField;
    SqlCdsCalculaPedPRF_QTDE: TFMTBCdField;
    SqlCdsCalculaPedPRF_QTDEFAT: TFMTBCdField;
    SqlCdsCalculaPedPED_VLFRETE: TFMTBCdField;
    SqlCdsCalculaPedPED_DESP_ACES: TFMTBCdField;
    SqlCdsCalculaPedPED_VLSEGURO: TFMTBCdField;
    SqlCdsCalculaPedPED_DESCTOVL: TFMTBCdField;
    SqlCdsCalculaPedPRF_TOTAL_CC: TCurrencyField;
    SqlCdsCalculaPedPRF_TOTAL_BRUTO_CC: TCurrencyField;
    SqlCdsCalculaPedPRF_REGISTRO: TIntegerField;
    SqlCdsCalculaPedPRF_IPIALIQ: TFMTBCdField;
    SqlCdsCalculaPedPRF_SITUACAO: TStringField;
    Label3: TLabel;
    GroupBox3: TGroupBox;
    Label4: TLabel;
    Label6: TLabel;
    Edt_Duplicar_Codigo: TEdit;
    Edt_Cod_Pedido: TEdit;
    edClienteDestino: TEdit;
    cbClienteDestino: TComboBox;
    SQLClienteDestino: TSQLClientDataSet;
    DsClientDestino: TDataSource;
    SQLClienteDestinoCLI_CODIGO: TStringField;
    SQLClienteDestinoCLI_RAZAO: TStringField;
    btnConfirma: TBitBtn;
    btnBit_Cancelar: TBitBtn;
    SqlCdsCalculaPedPRF_PRECO: TFMTBCdField;
    SqlCdsCalculaPedPRF_PRECO_BRUTO: TFMTBCdField;
    dtePrazoEntrega: TJvDateEdit;
    Label1: TLabel;
    procedure btnBit_CancelarClick(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure Rad_ValorClick(Sender: tObject);
    procedure Rad_PorcentualClick(Sender: tObject);
    procedure btnConfirmaClick(Sender: tObject);
    procedure SqlCdsCalculaPedCalcFields(DataSet: TDataSet);
    procedure cbClienteDestinoClick(Sender: tObject);
    procedure cbClienteDestinoExit(Sender: tObject);
    procedure FormCreate(Sender: tObject);
  private

    dPED_VLTOTAL_LIQ,
    dPED_VLTOTAL_BRUTO : Double;

    fSeqUnicaPed: Boolean;
    fCodEmpSeqUnica:string;


    wValorPed,wPerc :Currency;
    procedure Habilita_Tipo_Desconto;
    procedure GeraNovoPedido;
    procedure GravaItensNovoPedido;

    procedure CalculaPedido(const pEmpresa,pPedido:String);
    procedure Atualiza_Pedido(const pEmpresa,pPedido,pTotal_Liqui,pTotal_Bruto,pValor_Ipi:String);

  public
  end;

var
  FormPedidoDuplicar: TFormPedidoDuplicar;
implementation

uses Uteis, RWFunc, DataCad, DataMov, Math, iniciodb, uPedido, Men0001;

{$R *.dfm}

procedure TFormPedidoDuplicar.btnBit_CancelarClick(Sender: tObject);
begin
     SequenciadorPRC( DataCadastros.SQLConnection1, fCodEmpSeqUnica,'PED0000', 'PED_CODIGO', 1, Edt_Duplicar_Codigo.Text );
     idRetorno := '';
     ModalResult := mrCancel ;
end;

procedure TFormPedidoDuplicar.FormShow(Sender: tObject);
begin
    inherited;

     Edt_Duplicar_Codigo.Text := StrZero(SequenciadorPRC(DataCadastros.SQLConnection1, fCodEmpSeqUnica,'PED0000', 'PED_CODIGO', 0),6);
      while (ExistePedido(Trim(Edt_Duplicar_Codigo.Text))) do
            Edt_Duplicar_Codigo.Text := StrZero(SequenciadorPRC(DataCadastros.SQLConnection1, fCodEmpSeqUnica,'PED0000', 'PED_CODIGO', 0),6);

      Habilita_Tipo_Desconto;

    cbClienteDestino.Clear;

    // Abrir tabela cliente destino
    if not SQLClienteDestino.Active then
        SQLClienteDestino.Open;

    SQLClienteDestino.First;
    while not SQLClienteDestino.Eof do
    begin
      if not SQLClienteDestinoCLI_RAZAO.IsNull then
         cbClienteDestino.Items.Add(SQLClienteDestinoCLI_RAZAO.AsString);   // .FieldbyName('CLI_RAZAO').Value);

       SQLClienteDestino.Next;
    end;

    edClienteDestino.Text := Edt_Cod_Cliente.Text;
    cbClienteDestino.Text := Edt_Nome_Pedido.Text;
end;

procedure TFormPedidoDuplicar.Habilita_Tipo_Desconto;
begin
    if (Rad_Valor.checked ) then
       begin
           LBL_VALOR.Caption := 'R$:';
       end
    else
       begin
           LBL_VALOR.Caption := '(%):';
       end;
    CurrDescto.SetFocus;
end;

procedure TFormPedidoDuplicar.Rad_ValorClick(Sender: tObject);
begin
    Habilita_Tipo_Desconto;
end;

procedure TFormPedidoDuplicar.Rad_PorcentualClick(Sender: tObject);
begin
    Habilita_Tipo_Desconto;
end;

procedure TFormPedidoDuplicar.btnConfirmaClick(Sender: tObject);
var
  wTRansacao:TTransactionDesc;
  X : Integer;
begin
    if (Rad_Valor.checked ) then
    begin
         if (CurrDescto.Value = 0) then
         begin
              if (uteis.confirmacao ( ('Valor não foi informado. Deseja gerar os pedidos com o mesmo valor ?'))=mrNo) then
              begin
                   CurrDescto.SetFocus;
                   exit;
              end;
         end
         else
         begin
              if CurrDescto.Value > DataMovimento.CdsPedidosPED_VLTOTAL_BRUTO.AsCurrency then
              begin
                   uteis.aviso('O valor informado é maior que o valor do pedido atual.'+#13#10+'Não é possível executar o procedimento !');
                   CurrDescto.SetFocus;
                   exit;
              end;
         end;
    end
    else
    if (CurrDescto.Value = 0) then
    begin
         if (uteis.confirmacao ( ('Porcentagem não foi informada. Deseja gerar os pedidos com o mesmo valor?'))=mrNo) then
         begin
              CurrDescto.SetFocus;
              exit;
         end;
    end
    else
    if CurrDescto.Value > 100 then
    begin
         uteis.aviso('"Atenção" , Valor da porcentagem não pode ser maior que 100 %!');
         CurrDescto.SetFocus;
         exit;
    end;

    try
      wTRansacao.TransactionID  := RetornaTransacao;
      wTRansacao.IsolationLevel := xilREADCOMMITTED;
      DataCadastros.SQLConnection1.StartTransaction(wTRansacao);
      //Busca Pedido
      DataMovimento.CdsPedidos.Close;
      DataMovimento.CdsPedidos.CommandText := SQLDEF('PEDIDOS','Select * from PED0000','where PED_CODIGO = '''+Edt_Cod_Pedido.Text+'''','','');
      DataMovimento.CdsPedidos.Open;
      //Busca Itens
      wSql1      :='select ' +
                   ' CASE WHEN P1.PRD_UND IS NULL THEN p2.PRD_UND ELSE p1.PRD_UND END AS Unidade, ' +
                   ' p1.PRF_PESO AS PRF_PESO_COPIA, ' +
                   ' cast(CASE PRF_PRODUTO_AGREGADO  '+
                   '         WHEN ''N'' THEN PRF_REGISTRO '+
                   '         WHEN ''S'' THEN prf_registro_vinculado|| ''.'' ||  PRF_REGISTRO   '+
                   ' END AS NUMERIC(14,8)) registro_seq, P1.*,P2.PTI_CODIGO,P3.PTI_SIGLA,P2.PRD_CODIGO,P2.PRD_PESOKG,P2.PRD_PESOLIQ,' +
                   ' P2.PRD_DCVAR1,P2.PRD_DCVAR2,P2.PRD_DCVAR3,P2.PRD_DCVAR4,P2.PRD_DCVAR5,'+
                   ' P2.PRD_DCVAR6,P2.PRD_DCVAR7,P2.PRD_DCVAR8, PRF_PESOKG,PRF_PRODUTO_SEMVALOR ';
      wSql2      := ' from PED_IT01 P1 LEFT JOIN PRD0000 P2 on (P2.prd_codigo = P1.prd_codigo)  LEFT JOIN PRD_TIPO P3 ON (P2.PTI_CODIGO = P3.PTI_CODIGO) ';
      wSeleciona := 'where PED_CODIGO = '''+Edt_Cod_Pedido.Text+'''';


      //wOrdem     := 'P1.PRF_REGISTRO';
      WORDEM := '3';
      //
      DataMovimento.CdsPedItem.Close;
      DataMovimento.CdsPedItem.CommandText := SQLDEF('PEDIDOS',wSql1+wSql2,wSeleciona,wOrdem,'P1.');
      if DBInicio.IsDesenvolvimento then
        CopyToClipBoard(DataMovimento.CdsPedItem.CommandText);
      DataMovimento.CdsPedItem.Open;
      DataMovimento.CdsPedItem.First;



      GeraNovoPedido;
      GravaItensNovoPedido;
      For X := 1 to 2 do
      begin
           if (X = 1) then
              CalculaPedido(dbInicio.EMPRESA.EMP_CODIGO,  Edt_Cod_Pedido.Text)
           Else
           if (X = 2) then
                  CalculaPedido(dbInicio.EMPRESA.EMP_CODIGO, Edt_Duplicar_Codigo.Text)
      end;
      DataCadastros.SQLConnection1.Commit(wTRansacao);
      uteis.aviso('Processo concluído com sucesso !');
      DataMovimento.CdsPedidos.Close;
      SqlCdsCalculaPed.Close;
      idRetorno := Edt_Duplicar_Codigo.Text;
      ModalResult := mrOk ;
    except
        on E:EdatabaseError do
           begin
               DataCadastros.SQLConnection1.Rollback(wTRansacao);
               uteis.erro  (pchar('Erro ao copiar pedido !'+e.message));
           end;
        on E:Exception do
           begin
               DataCadastros.SQLConnection1.Rollback(wTRansacao);
               uteis.erro  (pchar('Ocorreu uma exceção ao copiar pedido !'+e.message));
           end;
    end;

end;

procedure TFormPedidoDuplicar.GeraNovoPedido;
var
  wInsert1,wInsert2,wPEDIDO, opv_id :String;
  wReg_Ped :Integer;
  wValorPedLiquido :Currency;
  sObsPedido,
  sObsPedidoNota:WideString;
  wCodigoEndereco : Integer;
begin
    wPedido            := DataMovimento.CdsPedidosPED_CODIGO.AsString;
    dPED_VLTOTAL_LIQ   := DataMovimento.CdsPedidosPED_VLTOTAL_LIQ.AsCurrency;
    dPED_VLTOTAL_BRUTO := DataMovimento.CdsPedidosPED_VLTOTAL_BRUTO.AsCurrency;
    wValorPedLiquido   := 0;
    sObsPedido := FrmPedido.MemoObservacaoPedido.Text;

    sObsPedidoNota := FrmPedido.MemoMensagemAdicionalNotaFiscal.Text;
    If (DataMovimento.CdsPedidosENDERECO_ENTREGA.AsInteger  = 0) or (DataMovimento.CdsPedidosENDERECO_ENTREGA.IsNull) then
    begin
         OpenAux('SELECT codigo FROM ENDERECO '+
                 ' WHERE padrao = ''1'''+
                 ' AND COD_CLIENTE = '+QuotedStr( edClienteDestino.Text) );
         if not qAux.IsEmpty then
           wCodigoEndereco :=  qAux.FieldByName('codigo').AsInteger;


    end
    else
      wCodigoEndereco := DataMovimento.CdsPedidosENDERECO_ENTREGA.AsInteger;
    if DataMovimento.CdsPedidos.Active  then
       begin
          if (Rad_Porcentual.checked ) then
              begin
                  {pedido a ser gerado com o percentual da diferenca}
                  wPerc := 100 - CurrDescto.Value;
                  wValorPed        := (((dPED_VLTOTAL_BRUTO * wPerc) /100));
                  wValorPedLiquido := (((dPED_VLTOTAL_LIQ   * wPerc) /100));
              end
          else
              begin
                  wValorPed        := 0;
                  wValorPedLiquido := 0;
              end;
          DataMovimento.StpPedido.ExecProc;
          wReg_Ped :=DataMovimento.StpPedido.Params[0].AsInteger;
          if (DBInicio.Empresa.wAtualizaEstoque = 'P') and (FrmPedido.SqlCdsTipoPedidoOPV_ATESTOQUE.AsString = 'S')  then
             opv_id := BuscaUmDadoSqlAsString('SELECT FIRST 1 opv_codigo  FROM OPV0000 WHERE OPV_ORCAMENTO = '+QuotedStr('S') +' AND OPV_ATESTOQUE = '+ QuotedStr('N'))
          else
             opv_id := DataMovimento.CdsPedidosOPV_CODIGO.AsString;
          {gera novo pedido com os dados do pedido anterior}
          if (Rad_Porcentual.checked ) then
             begin
                 wInsert1 := 'Insert into PED0000 (PED_REGISTRO,PED_CODIGO,EMI_CODIGO,CLI_CODIGO,REP_CODIGO,REP_CODIGO_INTERNO, ' +
                             ' PED_FLAG_PED_DUPL,PED_DTENTRADA,PED_DTSAIDA,PED_COMIS1,'+
                             'PED_COMIS2,PED_COMIS3,PED_COMISSAO_VEN, PCL_CODIGO,PED_DESCTOVL,PED_DESCTOPC1,PED_DESCTOPC2,TRP_CODIGO,'+
                             'PED_CONTATO_CLIENTE, PED_NUMERO_PED_CLIENTE, FPG_REGISTRO, CORI_CODIGO, PCX_CODIGO, ' +
                             'PED_FRETE2,PED_FRETE,TRP_REDESP,PED_OBSNOTA,PED_VLTOTAL_LIQ,PED_VLFATURADO,PED_SITCRED,'+
                             'PED_OBSGERAL,EMP_CODIGO,OPV_CODIGO,OPE_CODIGO,PED_DESCTONF,'+
                             'PED_SITUACAO,PED_VLTOTAL_BRUTO,PED_TPDESCTO,PED_VLTOTAL_IPI,AMX_CODIGO,PED_OBSG1,PED_OBSG2,'+
                             'PED_OBSG3,PED_OBSG4,PED_OBSG5,PED_OBSG6,PED_OBSG7,PED_TOTUPS,PED_VLTUPS,PED_PRODUCAO,PED_VLFRETE,'+
                             'PED_DESP_ACES,PED_VLSEGURO,PED_OBSERVACAO,PED_OBSERVACAO_NOTA, ENDERECO_ENTREGA, PED_FATURAR_LIBERADO)';
                 //
                 wInsert2 := 'values ('''+IntToStr(wReg_Ped)+''','''+
                                          Edt_Duplicar_Codigo.Text+''','+
                                          iif(DataMovimento.CdsPedidosEMI_CODIGO.AsString = '', '0', DataMovimento.CdsPedidosEMI_CODIGO.AsString)+','''+
                                          edClienteDestino.Text+''','''+
                                          DataMovimento.CdsPedidosREP_CODIGO.AsString+''','''+
                                          DataMovimento.CdsPedidosREP_CODIGO_INTERNO.AsString+''','''+
                                          'S'','''+
                                          DataAmericana(DateToStr(Now))+''','+
                                          DateToSQL(dtePrazoEntrega.Date)+','''+
                                          ValorAmericano(DataMovimento.CdsPedidosPED_COMIS1.AsString)+''','''+
                                          ValorAmericano(DataMovimento.CdsPedidosPED_COMIS2.AsString)+''','''+
                                          ValorAmericano(DataMovimento.CdsPedidosPED_COMIS3.AsString)+''','''+
                                          ValorAmericano(datamovimento.CdsPedidosPED_COMISSAO_VEN.AsString) +''','+
                                          RetornaNull(DataMovimento.CdsPedidosPCL_CODIGO.AsString)+','''+
                                          ValorAmericano(DataMovimento.CdsPedidosPED_DESCTOVL.AsString)+''','''+
                                          ValorAmericano(DataMovimento.CdsPedidosPED_DESCTOPC1.AsString)+''','''+
                                          ValorAmericano(DataMovimento.CdsPedidosPED_DESCTOPC2.AsString)+''','+
                                          RetornaNull(DataMovimento.CdsPedidosTRP_CODIGO.AsString)+','+
                                          RetornaNull(DataMovimento.CdsPedidosPED_CONTATO_CLIENTE.AsString)+','+
                                          RetornaNull(DataMovimento.CdsPedidosPED_NUMERO_PED_CLIENTE.AsString)+','+
                                          RetornaNull(DataMovimento.CdsPedidosFPG_REGISTRO.AsString)+','+
                                          RetornaNull(DataMovimento.CdsPedidosCORI_CODIGO.AsString)+','+
                                          RetornaNull(DataMovimento.CdsPedidosPCX_CODIGO.AsString)+','+
                                          RetornaNull(DataMovimento.CdsPedidosPED_FRETE2.AsString)+','+
                                          RetornaNull(DataMovimento.CdsPedidosPED_FRETE.AsString)+','+
                                          RetornaNull(DataMovimento.CdsPedidosTRP_REDESP.AsString)+','+
                                          RetornaNull(DataMovimento.CdsPedidosPED_OBSNOTA.AsString)+','''+
                                          Valoramericano(FloatToStr(wValorPedLiquido))+''','''+
                                          ValorAmericano('0')+''','+
                                          RetornaNull(DataMovimento.CdsPedidosPED_SITCRED.AsString)+','+
                                          RetornaNull(DataMovimento.CdsPedidosPED_OBSGERAL.AsString)+','+
                                          RetornaNull(DataMovimento.CdsPedidosEMP_CODIGO.AsString)+','+
                                          RetornaNull(opv_id)+','+
                                          RetornaNull(DataMovimento.CdsPedidosOPE_CODIGO.AsString)+','+
                                          RetornaNull(DataMovimento.CdsPedidosPED_DESCTONF.AsString)+','+
                                          RetornaNull('F')+','''+
                                          Valoramericano(FloatToStr(wValorPEd))+''','+
                                          RetornaNull(DataMovimento.CdsPedidosPED_TPDESCTO.AsString)+','''+
                                          ValorAmericano(DataMovimento.CdsPedidosPED_VLTOTAL_IPI.AsString)+''','+
                                          RetornaNull(DataMovimento.CdsPedidosAMX_CODIGO.AsString)+','+
                                          RetornaNull(DataMovimento.CdsPedidosPED_OBSG1.AsString)+','+
                                          RetornaNull(DataMovimento.CdsPedidosPED_OBSG2.AsString)+','+
                                          RetornaNull(DataMovimento.CdsPedidosPED_OBSG3.AsString)+','+
                                          RetornaNull(DataMovimento.CdsPedidosPED_OBSG4.AsString)+','+
                                          RetornaNull(DataMovimento.CdsPedidosPED_OBSG5.AsString)+','+
                                          RetornaNull(DataMovimento.CdsPedidosPED_OBSG6.AsString)+','+
                                          RetornaNull(DataMovimento.CdsPedidosPED_OBSG7.AsString)+','+
                                          RetornaNull(DataMovimento.CdsPedidosPED_TOTUPS.AsString)+','''+
                                          ValorAmericano(DataMovimento.CdsPedidosPED_VLTUPS.AsString)+''','+
                                          RetornaNull(DataMovimento.CdsPedidosPED_PRODUCAO.AsString)+','''+
                                          ValorAmericano(DataMovimento.CdsPedidosPED_VLFRETE.AsString)+''','''+
                                          ValorAmericano(DataMovimento.CdsPedidosPED_DESP_ACES.AsString)+''','''+
                                          ValorAmericano(DataMovimento.CdsPedidosPED_VLSEGURO.AsString)+''','+
                                          QuotedStr(sObsPedido)+','+
                                          QuotedStr(sObsPedidoNota)+','+
                                          IntToStr(wCodigoEndereco)  +','+
                                          QuotedStr(iif(DBInicio.Empresa.wTipoLiberacaoFaturamento = 'A','S','N' ))
                                           +  ')';
             end;

          if (Rad_Valor.checked ) then
             begin
                 wInsert1 := 'Insert into PED0000 (PED_REGISTRO,'+
                                                  'PED_CODIGO,'+
                                                  'CLI_CODIGO,'+
                                                  'REP_CODIGO,'+
                                                  'REP_CODIGO_INTERNO, '+
                                                  'PED_FLAG_PED_DUPL, '+
                                                  'PED_DTENTRADA,'+
                                                  'PED_DTSAIDA,'+
                                                  'PED_COMIS1,'+
                                                  'PED_COMIS2,'+
                                                  'PED_COMIS3,'+
                                                  'PED_COMISSAO_VEN,'+
                                                  'PCL_CODIGO,'+
                                                  'PED_DESCTONF,'+
                                                  'PED_DESCTOPC1,'+
                                                  'PED_DESCTOPC2,'+
                                                  'TRP_CODIGO,'+
                                                  'PED_CONTATO_CLIENTE,' +
                                                  'PED_NUMERO_PED_CLIENTE,'+
                                                  'FPG_REGISTRO,'+
                                                  'CORI_CODIGO,'+
                                                  'PCX_CODIGO,'+
                                                  'PED_FRETE2,'+
                                                  'PED_FRETE,'+
                                                  'TRP_REDESP,'+
                                                  'PED_OBSNOTA,'+
                                                  'PED_VLTOTAL_LIQ,'+
                                                  'PED_VLFATURADO,'+
                                                  'PED_SITCRED,'+
                                                  'PED_OBSGERAL,'+
                                                  'EMP_CODIGO,'+
                                                  'OPV_CODIGO,'+
                                                  'OPE_CODIGO,'+
                                                  'PED_SITUACAO,'+
                                                  'PED_VLTOTAL_BRUTO,'+
                                                  'PED_TPDESCTO,'+
                                                  'PED_VLTOTAL_IPI,'+
                                                  'AMX_CODIGO,'+
                                                  'PED_OBSG1,'+
                                                  'PED_OBSG2,'+
                                                  'PED_OBSG3,'+
                                                  'PED_OBSG4,'+
                                                  'PED_OBSG5,'+
                                                  'PED_OBSG6,'+
                                                  'PED_OBSG7,'+
                                                  'PED_TOTUPS,'+
                                                  'PED_VLTUPS,'+
                                                  'PED_PRODUCAO,'+
                                                  'PED_VLFRETE,'+
                                                  'PED_DESP_ACES,'+
                                                  'PED_VLSEGURO,PED_OBSERVACAO,PED_OBSERVACAO_NOTA, ENDERECO_ENTREGA)';
                 //
                 wInsert2 := 'values ('''+IntToStr(wReg_Ped)+''','''+
                                          Edt_Duplicar_Codigo.Text+''','''+
                                          edClienteDestino.Text+''','''+
                                          DataMovimento.CdsPedidosREP_CODIGO.AsString+''','''+
                                          DataMovimento.CdsPedidosREP_CODIGO_INTERNO.AsString+''','''+

                                          'S'','''+
                                          DataAmericana(DateToStr(Now))+''','+
                                          DateToSQL(dtePrazoEntrega.Date)+','''+
                                          ValorAmericano(DataMovimento.CdsPedidosPED_COMIS1.AsString)+''','''+
                                          ValorAmericano(DataMovimento.CdsPedidosPED_COMIS2.AsString)+''','''+
                                          ValorAmericano(DataMovimento.CdsPedidosPED_COMIS3.AsString)+''','''+
                                          ValorAmericano(datamovimento.CdsPedidosPED_COMISSAO_VEN.AsString) +''','+
                                          RetornaNull(DataMovimento.CdsPedidosPCL_CODIGO.AsString)+','''+
                                          'N'','''+
                                          ValorAmericano(DataMovimento.CdsPedidosPED_DESCTOPC1.AsString)+''','''+
                                          ValorAmericano(DataMovimento.CdsPedidosPED_DESCTOPC2.AsString)+''','+
                                          RetornaNull(DataMovimento.CdsPedidosTRP_CODIGO.AsString)+','+
                                          RetornaNull(DataMovimento.CdsPedidosPED_CONTATO_CLIENTE.AsString)+','+
                                          RetornaNull(DataMovimento.CdsPedidosPED_NUMERO_PED_CLIENTE.AsString)+','+
                                          RetornaNull(DataMovimento.CdsPedidosFPG_REGISTRO.AsString)+','+
                                          RetornaNull(DataMovimento.CdsPedidosCORI_CODIGO.AsString)+','+
                                          RetornaNull(DataMovimento.CdsPedidosPCX_CODIGO.AsString)+','+
                                          RetornaNull(DataMovimento.CdsPedidosPED_FRETE2.AsString)+','+
                                          RetornaNull(DataMovimento.CdsPedidosPED_FRETE.AsString)+','+
                                          RetornaNull(DataMovimento.CdsPedidosTRP_REDESP.AsString)+','+
                                          RetornaNull(DataMovimento.CdsPedidosPED_OBSNOTA.AsString)+','''+
                                          Valoramericano(FloatToStr(wValorPedLiquido))+''','''+
                                          ValorAmericano(DataMovimento.CdsPedidosPED_VLFATURADO.AsString)+''','+
                                          RetornaNull(DataMovimento.CdsPedidosPED_SITCRED.AsString)+','+
                                          RetornaNull(DataMovimento.CdsPedidosPED_OBSGERAL.AsString)+','+
                                          RetornaNull(DataMovimento.CdsPedidosEMP_CODIGO.AsString)+','+
                                          RetornaNull(opv_id)+','+
                                          RetornaNull(DataMovimento.CdsPedidosOPE_CODIGO.AsString)+','+
                                          RetornaNull(DataMovimento.CdsPedidosPED_SITUACAO.AsString)+','''+
                                          Valoramericano(FloatToStr(wValorPEd))+''','+
                                          RetornaNull(DataMovimento.CdsPedidosPED_TPDESCTO.AsString)+','''+
                                          ValorAmericano(DataMovimento.CdsPedidosPED_VLTOTAL_IPI.AsString)+''','+
                                          RetornaNull(DataMovimento.CdsPedidosAMX_CODIGO.AsString)+','+
                                          RetornaNull(DataMovimento.CdsPedidosPED_OBSG1.AsString)+','+
                                          RetornaNull(DataMovimento.CdsPedidosPED_OBSG2.AsString)+','+
                                          RetornaNull(DataMovimento.CdsPedidosPED_OBSG3.AsString)+','+
                                          RetornaNull(DataMovimento.CdsPedidosPED_OBSG4.AsString)+','+
                                          RetornaNull(DataMovimento.CdsPedidosPED_OBSG5.AsString)+','+
                                          RetornaNull(DataMovimento.CdsPedidosPED_OBSG6.AsString)+','+
                                          RetornaNull(DataMovimento.CdsPedidosPED_OBSG7.AsString)+','+
                                          RetornaNull(DataMovimento.CdsPedidosPED_TOTUPS.AsString)+','''+
                                          ValorAmericano(DataMovimento.CdsPedidosPED_VLTUPS.AsString)+''','+
                                          RetornaNull(DataMovimento.CdsPedidosPED_PRODUCAO.AsString)+','''+
                                          ValorAmericano(DataMovimento.CdsPedidosPED_VLFRETE.AsString)+''','''+
                                          ValorAmericano(DataMovimento.CdsPedidosPED_DESP_ACES.AsString)+''','''+
                                          ValorAmericano(DataMovimento.CdsPedidosPED_VLSEGURO.AsString)+''','+
                                          QuotedStr(sObsPedido)+','+
                                          QuotedStr(sObsPedidoNota)+','+
                                          IntToStr(wCodigoEndereco)+  ')';
             end;
          //
          ExecSql(wInsert1+wInsert2);
       end;
    {atualiza o pedido atual}
    {se não houve desconto não mexe no valor duplica com valor igual}
    if CurrDescto.Value > 0 then
       begin
           wValorPed :=0;
           if (Rad_Porcentual.checked ) then
              begin
                  wValorPed        := (dPED_VLTOTAL_BRUTO - ((dPED_VLTOTAL_BRUTO * wPerc) /100));
                  wValorPedLiquido := (dPED_VLTOTAL_LIQ   - ((dPED_VLTOTAL_LIQ * wPerc  ) /100));
              end
           else
              begin
                  wValorPed        := 0;
                  wValorPedLiquido := 0;
              end;
           DataMovimento.CdsPedidos.Edit;
           DataMovimento.CdsPedidosPED_VLTOTAL_BRUTO.AsCurrency := wValorPed;
           DataMovimento.CdsPedidosPED_VLTOTAL_LIQ.AsCurrency   := wValorPedLiquido;
           DataMovimento.CdsPedidos.ApplyUpdates(0);
       end;
end;

procedure TFormPedidoDuplicar.GravaItensNovoPedido;
var
  wPReco_Bruto,wPreco,wRepAtual,wRepNovo :REal;
  wInsertItem1,wInsertItem2, prd, prfPrazoEntrega :String;
  wRegistro,wvinculo :Integer;
  qry: tSqlQuery;
  clone : TClientDataSet;
  //dQtde : double;

begin
    wRepAtual     := 0;
    wRepNovo      := 0;
    wPreco_bruto  := 0;
    wPReco        := 0;
    {rotina para gravar os itens do novo pedido e atualizar os itens do pedido atual}

    if (Rad_Porcentual.Checked) then
       begin
           wRepAtual := CurrDescto.Value;
           wRepNovo  := 100 - wRepAtual;
       end;

//    DataMovimento.CdsPedItem.DisableControls;
    clone:= TClientDataSet.Create(self);
    try
      clone.CloneCursor(DataMovimento.CdsPedItem,false);
      clone.First;

      while not clone.Eof do
       begin
         DataMovimento.StpPedItem.ExecProc;
         wRegistro    := DataMovimento.StpPedItem.Params[0].AsInteger;
           if (Rad_Porcentual.Checked) then
              begin
                  if wREpNovo < 100 then
                     begin
                         wPReco_Bruto := (((clone.FieldByName('PRF_PRECO_BRUTO').AsFloat * wREpNovo)/100));
                         wPreco       := (((clone.FieldByName('PRF_PRECO').AsFloat       * wREpNovo)/100));
                     end
                  else
                     begin
                         {100 = duplicar com o mesmo valor}
                         wPReco_Bruto := clone.FieldByName('PRF_PRECO_BRUTO').AsFloat;
                         wPreco       := clone.FieldByName('PRF_PRECO').AsFloat;
                     end;
              end;
           if (Rad_Valor.Checked) then
              begin
                  if (CurrDescto.Value > 0) then
                     begin
                         wPReco_Bruto := (clone.FieldByName('PRF_PRECO_BRUTO').AsFloat - CurrDescto.Value);
                         wPreco       := (clone.FieldByName('PRF_PRECO').AsFloat       - CurrDescto.Value);
                     end
                  else
                     begin
                         {Mesmo Valor}
                         wPReco_Bruto := clone.FieldByName('PRF_PRECO_BRUTO').AsFloat;
                         wPreco       := clone.FieldByName('PRF_PRECO').AsFloat;
                     end;
              end;
           //
           try
             wvinculo := 0 ;
             //dQtde:=1;
             // se é kit pegar o prf_registro_vinculado criado para novo item kit copiado
             if clone.FieldByName('prf_registro_vinculado').AsInteger> 0  then
             begin
               OpenAux('SELECT PRF_REGISTRO,PRF_QTDE,PRF_PRDDESCRI FROM PED_IT01 co  '+
                       ' WHERE PED_CODIGO = '+QuotedStr(Edt_Duplicar_Codigo.Text)+ ' AND PRF_PRODUTO_AGREGADO = ''N'' '  +
                       ConcatSe(' and co.',DBInicio.ExclusivoSql('PEDIDOS') )+
                       ' AND exists (SELECT PRD_CODIGO, PRF_PRDDESCRI FROM PED_IT01 orig '+
                       '              WHERE orig.prf_registro = '+ IntToStr(clone.FieldByName('prf_registro_vinculado').AsInteger)+
                       '              AND orig.PED_CODIGO = '+QuotedStr(Edt_Cod_Pedido.Text)+
                          ConcatSe(' and orig.',DBInicio.ExclusivoSql('PEDIDOS') )+
                       '              AND orig.PRD_CODIGO  = co.PRD_CODIGO     '+
                  //     '              AND trim(orig.PRF_PRDDESCRI) = trim(co.PRF_PRDDESCRI) '+
                       ') '+
                       ' ORDER BY co.PRF_REGISTRO DESC      '
                        );
                 IF NOT qaux.IsEmpty THEN
                 wvinculo := qaux.FieldByName('PRF_REGISTRO').AsInteger;


             end;
             if clone.FieldByName('PRF_PRDDESCRI').AsString <> '' then
               prd := clone.FieldByName('PRF_PRDDESCRI').AsString
             else
               prd := ' ';

             wInsertItem1 := 'insert into PED_IT01 ('+
                             'PRF_REGISTRO,'+
                             'PRF_PRAZO_ENTREGA,'+
                             'PRF_OP,'+
                             'PRF_PRODUTO_AGREGADO,'+
                             'PRF_FLAG_ATUALIZA_ESTOQUE,'+
                             'PRF_ORIGEM_ITEM,'+
                             'PED_CODIGO,'+
                             'PRD_REFER,'+
                             'PRD_CODIGO,'+
                             'PRF_QTDE,'+
                             'PRF_PRECO,'+
                             'PRF_PRECO_ORIGINAL,'+
                             'PRF_IDESCTO1,'+
                             'PRF_IDESCTO2,'+
                             'PRF_SITUACAO,'+
                             'PRF_ITEMCOMIS,'+
                             'PRF_IPIALIQ,'+
                             'PRF_ICMSALIQ,'+
                             'PRF_PRDDESCRI,'+
                             'PRF_COMPL_DESCRI, '+
                             'AMX_CODIGO_DESTINO,'+
                             'PRF_VAR1,'+
                             'PRF_VAR2,'+
                             'PRF_VAR3,'+
                             'PRF_VAR4,'+
                             'PRF_VAR5,'+
                             'PRF_VAR6,'+
                             'PRF_VAR7,'+
                             'PRF_VAR8,'+
                             'EMP_CODIGO,'+
                             'PRG_REGISTRO,'+
                             'PRDD_REGISTRO,'+
                             'PRF_PRECO_BRUTO,'+
                             'ID_DIRETIVAS,'+
                             'prdco_codigo_original ,'+
                             'prf_registro_vinculado, '+
                             'PRF_PESOKG, ' +
                             'PRF_PESO, ' +
                             'PRD_UND,'+
                             'CAP_CODIGO,'+
                             'ACO_CODIGO,'+
                             'PRF_VALOR_ST,'+
                             'PRF_PRODUTO_SEMVALOR )';
             //
             if clone.FieldByName('PRF_PRAZO_ENTREGA').asString = '' then
                prfPrazoEntrega := DateToSql(0)
             else
                prfPrazoEntrega := qstr(DataAmericana(clone.FieldByName('PRF_PRAZO_ENTREGA').asString));

             wInsertItem2 := 'Values ('+qStr(IntToStr(wRegistro))+','+
                             prfPrazoEntrega + ',' +
                             qstr('N')+','+
                             qstr(clone.FieldByName('PRF_PRODUTO_AGREGADO').AsString)+','+
                             qStr(clone.FieldByName('PRF_FLAG_ATUALIZA_ESTOQUE').AsString)+','+
                             qStr('D')+','+
                             qStr(Edt_Duplicar_Codigo.Text)+','+
                             qstr(clone.FieldByName('PRD_REFER').AsString)+','+
                             qstr(clone.FieldByName('PRD_CODIGO').AsString)+','+
                             qstr(ValorAmericano(clone.FieldByName('PRF_QTDE').AsString))+','+
                             qstr(ValorAmericano(FloatToStr(wPreco)))+','+
                             qstr(ValorAmericano(FloatToStr(wPreco)))+','+
                             qstr(ValorAmericano(clone.FieldByName('PRF_IDESCTO1').AsString))+','+
                             qstr(ValorAmericano(clone.FieldByName('PRF_IDESCTO2').AsString))+','+
                             ReTornaNull(clone.FieldByName('PRF_SITUACAO').AsString)+','''+
                             ValorAmericano(clone.FieldByName('PRF_ITEMCOMIS').AsString)+''','''+
                             ValorAmericano(clone.FieldByName('PRF_IPIALIQ').AsString)+''','''+
                             ValorAmericano(clone.FieldByName('PRF_ICMSALIQ').AsString)+''','+
                             ''''+ prd +''','+
                             RetornaNull(clone.FieldByName('PRF_COMPL_DESCRI').Asstring)+ ','+
                             RetornaNull(clone.FieldByName('AMX_CODIGO_DESTINO').AsString)+','+
                             RetornaNull(clone.FieldByName('PRF_VAR1').AsString)+','+
                             RetornaNull(clone.FieldByName('PRF_VAR2').AsString)+','+
                             RetornaNull(clone.FieldByName('PRF_VAR3').AsString)+','+
                             RetornaNull(clone.FieldByName('PRF_VAR4').AsString)+','+
                             RetornaNull(clone.FieldByName('PRF_VAR5').AsString)+','+
                             RetornaNull(clone.FieldByName('PRF_VAR6').AsString)+','+
                             RetornaNull(clone.FieldByName('PRF_VAR7').AsString)+','+
                             RetornaNull(clone.FieldByName('PRF_VAR8').AsString)+','+
                             RetornaNull(clone.FieldByName('EMP_CODIGO').AsString)+','+
                             RetornaNull(clone.FieldByName('PRG_REGISTRO').AsString)+','+
                             RetornaNull(clone.FieldByName('PRDD_REGISTRO').AsString)+','+
                             qStr( ValorAmericano(FloatToStr(wPReco_Bruto)) )+','+
                             '0' +','+
                             qStr(clone.FieldByName('prdco_codigo_original').asstring)+','+
                             IntToStr(wvinculo) +    ','+
                             qStr( ValorAmericano(FloatToStr(clone.FieldByName('PRF_PESOKG').AsFloat)) )+','+
                             qStr( ValorAmericano(FloatToStr(clone.FieldByName('PRF_PESO_COPIA').AsFloat)) )+','+
                             qStr(clone.FieldByName('UNIDADE').asstring)+','+
                             IntToStr(StrToIntDef(clone.FieldByName('CAP_CODIGO').asstring, 0)) + ',' +
                             IntToStr(StrToIntDef(clone.FieldByName('ACO_CODIGO').asstring, 0)) + ',' +
                             ValorAmericano(clone.FieldByName('PRF_VALOR_ST').AsString)+','+
                             QuotedStr(clone.FieldByName('PRF_PRODUTO_SEMVALOR').AsString )+                           ' )';
             //
//             if DelphiAberto then
//                CopyToClipBoard( wInsertItem1+wInsertItem2 );

             ExecSql(wInsertItem1+wInsertItem2);

             IF clone.FieldByName('ID_DIRETIVAS').AsString<>'0' THEN
             BEGIN
                 qry := tSqlQuery.Create ( self );
                 try
                    qry.sqlconnection := DataCadastros.SqlConnection1;
                    qry.sql.text := 'select PRDD_REGISTRO from PRD_DIRETIVA_ITEM where PRF_REGISTRO='+clone.FieldByName('ID_DIRETIVAS').AsString;
                    qry.open;
                    while not qry.eof do
                    begin
                         wInsertItem1:= 'INSERT INTO PRD_DIRETIVA_ITEM VALUES ( GEN_ID(GEN_PRD_DIRETIVA_ITEM_ID,1), '+inttostr(wRegistro)+', '+qry.fields[0].asstring+' )';
                         DataCadastros.SqlConnection1.Execute( wInsertItem1,nil );
                         qry.Next;
                    end;
                 Finally
                       qry.close;
                       FreeAndNil(qry);
                 end;
             END;

             // é kit e não controla o estoque pelo kit então pula a checagem, vai para os proximos (que deve ser os itens)
             if not DBInicio.Empresa.wPMT_CONTROLA_KIT  and (clone.FieldByName('pti_sigla').AsString = 'KT') then // controla estoque pelo kit , não pelos itens
             begin
              clone.Next;
              continue;
             end;

             //verifica se é item do kit e controla o kit pelos itens
             if (DataMovimento.CdsPedItemPRF_PRODUTO_AGREGADO.AsString = 'S') and DBInicio.Empresa.wPMT_CONTROLA_KIT then
             begin
              clone.Next;
              continue;
             end;


           except on E:EdataBaseError do
              uteis.erro  (pchar('Erro ao gravar o Item do pedido duplicado ! '+e.message));
           end;

           clone.Next;
       end;
    finally
      FreeAndNil(clone);
    end;

end;

procedure TFormPedidoDuplicar.CalculaPedido(const pEmpresa, pPedido: String);
Var
  wTeste,
  wTotal_Bruto,
  wTotal_venda,
  wVLIPI,
  wVLFaturado,
  wValor_Pedido_Bruto,
  wValor_Pedido_Liqui,
  wValor_Pedido_Ipi,
  wDesconto: Real;
begin
    Screen.Cursor := crHourGlass;
    wSQL1 := 'Select P1.PRF_REGISTRO,P1.EMP_CODIGO,P1.PED_CODIGO,P1.PRF_QTDE,P1.PRF_QTDEFAT,P1.PRF_PRECO,P1.PRF_IPIALIQ,P1.PRF_SITUACAO,P1.PRF_PRECO_BRUTO,P2.PED_VLFRETE,P2.PED_DESP_ACES,P2.PED_VLSEGURO,';
    wSql2 := 'P2.PED_TPDESCTO,P2.PED_DESCTOPC1,P2.PED_DESCTOPC2,P2.PED_DESCTOVL from PED_IT01 P1 LEFT JOIN PED0000 P2 ON (P1.PED_CODIGO = P2.PED_CODIGO) AND (P1.emp_codigo = P2.EMP_CODIGO) ';
    wSeleciona := 'where P1.EMP_CODIGO = '''+pEmpresa+''' and P1.PED_CODIGO = '''+pPedido+'''';
    wOrdem     := ' Order by P1.EMP_CODIGO,P1.PED_CODIGO,P1.PRF_REGISTRO';
    //
    SqlCdsCalculaPed.Close;
    SqlCdsCalculaPed.CommandText := wSql1+wSql2+wSeleciona+wOrdem;
    SqlCdsCalculaPed.Open;
    //Faz calculo dos totais
    {Limpar variaveis e totais}
    wTeste             := 0;
    wTotal_bruto       := 0;
    wTotal_venda       := 0;
    wVLIPI             := 0;
    wVLFaturado        := 0;
    wValor_Pedido_Bruto:= 0;
    wValor_Pedido_Liqui:= 0;
    wValor_Pedido_Ipi  := 0;
    wDesconto          := 0;
    SqlCdsCalculaPed.First;
    SqlCdsCalculaPed.DisableControls;
    While not SqlCdsCalculaPed.EOF do
     Begin
         {preco bruto = preco do item no estoque}
         wTotal_Bruto := wTotal_Bruto + Uteis.RoundTo(SqlCdsCalculaPedPRF_TOTAL_CC.AsFloat,-2);
         {preco venda = preco bruto - desconto }
         wTotal_venda := wTotal_venda + Uteis.RoundTo(SqlCdsCalculaPedPRF_TOTAL_CC.AsFloat,-2);
         wVLIPI       := wVLIPI       + ((Uteis.RoundTo(SqlCdsCalculaPedPRF_TOTAL_CC.AsFloat,-2) * SqlCdsCalculaPedPRF_IPIALIQ.AsFloat) / 100);
         { Verificar itens já faturados }
         if SqlCdsCalculaPedPRF_SITUACAO.AsString = 'F' then  //Faturado
            begin
               wVLFaturado := wVLFaturado + Uteis.RoundTo(SqlCdsCalculaPedPRF_TOTAL_CC.AsFloat,-2);
            end;
         SqlCdsCalculaPed.Next;
     end;
    SqlCdsCalculaPed.EnableControls;
    //
    wValor_Pedido_Liqui := wTotal_Venda;
    if (wDesconto>0) then
       begin
           wDesconto := SqlCdsCalculaPedPED_DESCTOVL.AsFloat;
       end;
    wValor_Pedido_Ipi   := wVLIPI;
    //
    wTeste              := ((SqlCdsCalculaPedPED_VLFRETE.AsFloat+
                             SqlCdsCalculaPedPED_DESP_ACES.AsFloat)+
                             SqlCdsCalculaPedPED_VLSEGURO.AsFloat);
    wValor_Pedido_Bruto := (((wTotal_venda + wVLIPI) + wTeste ) - wDesconto);
    //
    {Atualiza Pedido}
    Atualiza_Pedido(pEmpresa,
                    pPedido,
                    ValorAmericano(FloatToStr(wValor_Pedido_Liqui)),
                    ValorAmericano(FloatToStr(wValor_Pedido_Bruto)),
                    ValorAmericano(FloatToStr(wValor_Pedido_Ipi)));

    Screen.Cursor := crDefault;
end;

procedure TFormPedidoDuplicar.SqlCdsCalculaPedCalcFields(
  DataSet: TDataSet);
begin
    SqlCdsCalculaPedPRF_TOTAL_CC.AsFloat       := Uteis.RoundTo(SqlCdsCalculaPedPRF_QTDE.AsFloat * SqlCdsCalculaPedPRF_PRECO.AsFloat);
    SqlCdsCalculaPedPRF_TOTAL_BRUTO_CC.AsFloat := Uteis.RoundTo(SqlCdsCalculaPedPRF_QTDE.AsFloat * SqlCdsCalculaPedPRF_PRECO_BRUTO.AsFloat);
end;

procedure TFormPedidoDuplicar.Atualiza_Pedido(const pEmpresa, pPedido,
  pTotal_Liqui, pTotal_Bruto, pValor_Ipi: String);
begin
    try
      wSql1      := 'Update PED0000 set '+
                    'PED_VLTOTAL_LIQ = '+pTotal_Liqui+','+
                    'PED_VLTOTAL_BRUTO = '+pTotal_Bruto+','+
                    'PED_VLTOTAL_IPI  = '+pValor_Ipi+'';
      wSeleciona := ' WHERE EMP_CODIGO = '''+pEmpresa+''' AND PED_CODIGO = '''+pPedido+'''';
      DataCadastros.sqlUpdate.Close;
      DataCadastros.SqlUpdate.sql.text :=wSql1+wSeleciona;
      DataCadastros.sqlUpdate.Execsql;
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao atualizar o pedido ! '+e.message));
    end;
end;


procedure TFormPedidoDuplicar.FormCreate(Sender: tObject);
begin
     inherited;
     fSeqUnicaPed:=(dbInicio.GetParametroSistema('PMT_SEQUENCIA_UNICA_PEDIDO') = 'S');
     if fSeqUnicaPed then
        fCodEmpSeqUnica:='001'
     Else
        fCodEmpSeqUnica:=dbInicio.Empresa.EMP_CODIGO;
end;

procedure TFormPedidoDuplicar.cbClienteDestinoClick(Sender: tObject);
begin

  if SQLClienteDestino.Locate('CLI_RAZAO', cbClienteDestino.Text, []) then
       edClienteDestino.Text := SQLClienteDestinoCLI_CODIGO.Value;
end;

procedure TFormPedidoDuplicar.cbClienteDestinoExit(Sender: tObject);
begin
  if not SQLClienteDestino.Locate('CLI_RAZAO', cbClienteDestino.Text, []) then
  begin
    cbClienteDestino.Text := '';
    edClienteDestino.Text := Edt_Cod_Cliente.Text;
    cbClienteDestino.Text := Edt_Nome_Pedido.Text;
    uteis.aviso('Cliente não cadastrado!');
    exit;
  end;
end;

end.
