unit Osv0006;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, BaseDbEstoqueForm,
  Dialogs, StdCtrls, Buttons, ComCtrls, Provider, SqlExpr,SqlClientDataSet, DB, DBClient,
  DBLocal, DBLocalS, ExtCtrls, Mask,  rxToolEdit,  rxCurrEdit,math, SimpleDS,
  Data.DBXFirebird, ACBrEnterTab, ACBrBase, ACBrCalculadora, Data.FMTBCd;

type
  TFormOrdServRefazer = class(TfrmBaseDbEstoque)
    GroupEstornar: TGroupBox;
    Edt_OP: TEdit;
    Label1: TLabel;
    SqlCdsRefazer: TSQLClientDataSet;
    SqlCdsEstornar: TSQLClientDataSet;
    SqlCdsEstornarOSI_REGISTRO: TIntegerField;
    SqlCdsEstornarEMP_CODIGO: TStringField;
    SqlCdsEstornarOSV_CODIGO: TStringField;
    SqlCdsEstornarPRD_REFER: TStringField;
    SqlCdsEstornarPRD_REFER_ITENS: TStringField;
    SqlCdsEstornarOSI_MODIFICADA: TSQLTimeStampField;
    SqlCdsEstornarOSI_UC: TFMTBCdField;
    SqlCdsEstornarOSI_QTDE1: TFMTBCdField;
    SqlCdsEstornarOSI_QTDE2: TFMTBCdField;
    SqlCdsEstornarOSI_QTDE3: TFMTBCdField;
    SqlCdsEstornarOSI_QTDE4: TFMTBCdField;
    SqlCdsEstornarOSI_QTDE5: TFMTBCdField;
    SqlCdsEstornarOSI_QTDE6: TFMTBCdField;
    SqlCdsEstornarOSI_QTDE7: TFMTBCdField;
    SqlCdsEstornarOSI_QTDE8: TFMTBCdField;
    SqlCdsEstornarOSI_SITUACAO: TStringField;
    SqlCdsEstornarOSI_RESERVADO: TFMTBCdField;
    SqlCdsEstornarOSI_EMPENHO: TFMTBCdField;
    SqlCdsEstornarOSI_APONTADO: TFMTBCdField;
    Edt_Emissao: TEdit;
    Label2: TLabel;
    Edt_Referencia: TEdit;
    Label3: TLabel;
    Edt_Material: TEdit;
    Label4: TLabel;
    Curr_Qtde: TCurrencyEdit;
    Panel1: TPanel;
    Bit_GravarMateria: TBitBtn;
    Bit_CancelarMateria: TBitBtn;
    SqlCdsEstornarOSI_STATUSEMPENHO: TStringField;
    SqlCdsEstornarOSI_CODIGO_ORIGEM: TStringField;
    SqlCdsEstornarOSI_CODIGO_ARVORE: TStringField;
    Panel2: TPanel;
    LblInf: TLabel;
    SqlCdsOrdem: TSQLClientDataSet;
    SqlCdsOrdemOSV_CODIGO: TStringField;
    SqlCdsOrdemOSV_QTDE: TFMTBCdField;
    SqlCdsOrdemPRD_REFER: TStringField;
    SqlCdsOrdemOSV_CODIGO_PAI: TStringField;
    SqlCdsOrdemOSV_STATUS: TStringField;
    Bevel1: TBevel;
    RadTodas: TRadioButton;
    RadUnica: TRadioButton;
    SqlCdsRefazerEMP_CODIGO: TStringField;
    SqlCdsRefazerOSI_REGISTRO: TIntegerField;
    SqlCdsRefazerOSV_CODIGO: TStringField;
    SqlCdsRefazerPRD_REFER_ITENS: TStringField;
    SqlCdsRefazerOSI_RESERVADO: TFMTBCdField;
    SqlCdsRefazerOSI_STATUSEMPENHO: TStringField;
    SqlCdsRefazerFALTA_APONTAR: TFMTBCdField;
    SqlCdsRefazerWSALDO: TFMTBCdField;
    SqlCdsRefazerPRD_CODIGO: TStringField;
    Progrefazer: TProgressBar;
    procedure Bit_CancelarMateriaClick(Sender: tObject);
    procedure Bit_GravarMateriaClick(Sender: tObject);
    procedure FormCreate(Sender: tObject);

  private
         wPmt_Amx_Producao_Entrada: string;
    wApontado,
    wQtdes       : Double;
    wStatusAp,
    {N = PENDENTE
     S = CONCLUIDO
     P = PARCIAL }
    wTpOP        : String[1];
    wRegistro    : String;
    //
    procedure Estornar_Material_Estoque(wTpOP,wEmpresa,wMaterial,wQtde :String; qtde:Double);
    procedure Estorna_Movto_Kardex(yOP,yEmpresa : String);
    //
    procedure Processo_Refazer;
    procedure Processo_Estornar_OPs;
    procedure Processo_Reservar;
    Procedure reservar;
    procedure Processo_Transf_Abertas_Producao;
    procedure Processo_Transf_Abertas_Reserva;
    procedure Processo_Transf_Reserva_Producao;
    Procedure Processo_almoxarifado;
    procedure LimpaEdits;
    Procedure AtualizaOpAlm(wNUMOP:String);
    Procedure BuscaOPs;
    Procedure LocalizaOP;
    procedure ExcluirEngenhariaProcesso;// somente se não foi apontado nada
  public
    { Public declarations }
    wBotao_Proc_Producao : String[1]; // E = Estornar Ordem de producao,
                                      // R = Refazer Ordem de Producao ,
                                      // P = Produzir Ordem de Produçao,
                                      // F = Refazer Reservar
  end;

var
  FormOrdServRefazer: TFormOrdServRefazer;

implementation

uses Uteis, DataCad, RWFunc, Osv0001, OsvN0001, Men0001, InicioDB;

{$R *.dfm}

procedure TFormOrdServRefazer.Bit_CancelarMateriaClick(Sender: tObject);
begin
    Close;
end;

procedure TFormOrdServRefazer.Bit_GravarMateriaClick(Sender: tObject);
begin
    if (wBotao_Proc_Producao = 'F') then
       Processo_Refazer
    else
    if (wBotao_Proc_Producao = 'E') then
    begin
           if uteis.confirmacao ( ('Você está estornando a O.P. Nº '+Edt_Op.Text+' e todas as OP'+chr(39)+'s vinculada à esta OP.'+#13+'Confirma Estorno ?'))=mrYes then
              Processo_Estornar_OPs
           else
           begin
                  LimpaEdits;
                  Bit_CancelarMateria.Click;
           end;
    end
    else
    if (wBotao_Proc_Producao = 'R') then
       Reservar
    else
    if (wBotao_Proc_Producao = 'P') then
       begin
           if (frmmenu.wBaixaEstqAlmox = 'S') then
              Processo_almoxarifado
           else
              begin
                  if (FormOrdServCentroNovo.CdsOPOSV_STATUS.AsString = 'A') and (wBotao_Proc_Producao = 'P') then
                     begin
                         Processo_Transf_Abertas_Producao;
                     end;
                  if (FormOrdServCentroNovo.CdsOPOSV_STATUS.AsString = 'R') and (wBotao_Proc_Producao = 'P') then
                     begin
                         Processo_Transf_Reserva_Producao;
                     end;
                  FormOrdServCentroNovo.CdsOP.Refresh;
                  LimpaEdits;
                  Bit_CancelarMateria.Click;
               end;
       end;
end;

procedure TFormOrdServRefazer.Estornar_Material_Estoque(wTpOP, wEmpresa, wMaterial, wQtde: String; qtde:Double);
begin
      if (qtde > 0) then
         KardexLancamento( SqlCdsEstornarOSI_REGISTRO.AsString,
                           'PRO',
                            wPmt_Amx_Producao_Entrada,
                            '',
                            dbInicio.RetornaRegistroTabela('PRD0000','PRD_CODIGO',' PRD_REFER = '+QuotedStr(wMaterial)),
                            '',//grade
                            '',
                            'E',
                            '',
                            '',//Lote nao informado
                            'ESTORNO DA PRODUCAO',
                            Now,
                            qtde,
                            Edt_OP.Text,
                            'PRODUTO PRODUÇÃO '+wMaterial,
                            0.00 );
      if wTpOP = EmptyStr then
        wTpOP := 'P';
      if (wTpOP = 'R') then
         wSql1 :='Update PRD0000 SET PRD_RESERVA = (PRD_RESERVA - '+FloatToSql(StrToFloatDef(wQtde,0))+')';
      if (wTpOP = 'P') then
         wSql1 :='Update PRD0000 SET PRD_EMPENHO = (PRD_EMPENHO - '+FloatToSql(StrToFloatDef(wQtde,0))+')';
      ExecSql( wSql1+' where PRD_REFER = '+qStr(wMaterial)+' AND EMP_CODIGO = '+qStr(wEmpresa) );
end;

procedure TFormOrdServRefazer.Estorna_Movto_Kardex(yOP, yEmpresa : String);
begin
     ExecSql( 'Delete from PRD_ENSA E1 '+
              ' Where PES_NUMDOC LIKE '''+yOP+
              '%'' AND EMP_CODIGO = '''+yEmpresa+
              ''' AND E1.PES_TIPO   = ''S'+
              ''' AND E1.PES_TIPDOC = ''OP'+'''' );
end;

procedure TFormOrdServRefazer.ExcluirEngenhariaProcesso;
begin
  ExecSql(' delete from ESPECIFICACOES_REALIZADAS where FAB_CODIGO in (select fab_codigo from FABRICACAO where OSV_CODIGO = '+ QuotedStr(Edt_OP.Text)+')');
  ExecSql(' delete from FABRICACAO where OSV_CODIGO = '+ QuotedStr(Edt_OP.Text));

end;

procedure TFormOrdServRefazer.Processo_Estornar_OPs;
begin
    try
      try
        if FormOrdServCentroNovo.CdsOPOSV_STATUS.AsString = 'X' then
           begin
                dbInicio.ExecSql('Select AMX_STAT_UPD from AMX_TEMP where AMX_NUM_OP = '''+Edt_OP.Text+'''');
               {Verifica se o almoxarifado não esta usando a op}
               if DataCadastros.sqlUpdate.FieldByName('AMX_STAT_UPD').AsString = 'S' then
                   begin
                       uteis.aviso('"Atenção" O.P deve estar sendo usada por outro usuário ! não pode ser estornada !'+#13#10+'Verifique se o almoxarifado não esta fazendo a separação dos produtos !');
                       Abort;
                   end
                Else
                   begin
                      dbInicio.ExecSql('Delete from AMX_TEMP where AMX_OP_PAI = '''+Edt_OP.Text+'''');
                   end;
           end;
        wSql1      := 'Select O2.* from OSV_IT02 O2 ';
        //
        if (RadTodas.Checked) then         // todas as OPs vinvuladas
           begin
               wSeleciona := 'Where O2.OSI_CODIGO_ORIGEM = '''+ExtrairNumeros(Edt_OP.Text)+''' AND O2.EMP_CODIGO = '''+FormOrdServCentroNovo.CdsOPEMP_CODIGO.AsString+'''';
               wOrdem     := ' order by O2.OSI_CODIGO_ORIGEM';
           end
        else                              // estorna OP unica
           begin
               wSeleciona := 'Where O2.OSV_CODIGO = '''+Edt_OP.Text+''' AND O2.EMP_CODIGO = '''+FormOrdServCentroNovo.CdsOPEMP_CODIGO.AsString+'''';
               wOrdem     := ' order by O2.OSV_CODIGO';
           end;
        //
        SqlCdsEstornar.Close;
        SqlCdsEstornar.CommandText := wSql1+wSeleciona+wOrdem;
        SqlCdsEstornar.Open;
        ExcluirEngenhariaProcesso;
        //
        ProgRefazer.Min := 0;
        ProgRefazer.Max := SqlCdsEstornar.RecordCount;
        {Estorna os Itens da OP}
        SqlCdsEstornar.First;
        while not SqlCdsEstornar.Eof do
         begin
             {Estornar OP Reserva}
             if (FormOrdServCentroNovo.CdsOPOSV_STATUS.AsString = 'R') then
                begin
                    wQtdes := SqlCdsEstornarOSI_RESERVADO.AsCurrency;
                    wTpOP  := 'R';
                end;
             if (FormOrdServCentroNovo.CdsOPOSV_STATUS.AsString = 'P') then
                begin
                    wQtdes := SqlCdsEstornarOSI_EMPENHO.AsCurrency;
                    wTpOP  := 'P';
                    //
                    {Retira a quantidade em produçao do estoque- campo no cadastro do produto}
                    AtualizaQtdeProducao(SqlCdsEstornarPRD_REFER_ITENS.AsString,
                                        'S',
                                        ValorAmericano(FloatToStr(wQtdes)));
                end;
             //
             Estornar_Material_Estoque(wTpOP,
                                       SqlCdsEstornarEMP_CODIGO.AsString,
                                       SqlCdsEstornarPRD_REFER_ITENS.AsString,
                                       ValorAmericano(FloatToStr(wQtdes)),
                                       wQtdes);
             //


             ProgRefazer.Position := ProgRefazer.Position + 1;
             SqlCdsEstornar.Next;
         end;
         //
        try
          {Marcar OP como Estorno}
          Mudar_Status_Op(FormOrdServCentroNovo.CdsOPEMP_CODIGO.AsString,
                          Edt_OP.Text,
                          'E');
          //
          if (not FormOrdServCentroNovo.CdsOPPED_CODIGO.IsNull) then
             begin
                 {Atualiza o Flag da Tabela Itens do Pedido PED_IT01}
                 wSql1      := 'Update PED_IT01 set PRF_OP = Null';
                 //
                 wSeleciona := ' Where PED_CODIGO ='''+FormOrdServCentroNovo.CdsOPPED_CODIGO.AsString+''' AND EMP_CODIGO = '''+FormOrdServCentroNovo.CdsOPEMP_CODIGO.AsString+'''';
                 //
                 dbInicio.ExecSql(wSql1+wSeleciona);
                 //
                 {Atualiza o Flag da Tabela de Pedido PED0000}
                 wSql1      := 'Update PED0000 set PED_PRODUCAO = Null';
                 //
                 wSeleciona := ' Where PED_CODIGO ='''+FormOrdServCentroNovo.CdsOPPED_CODIGO.AsString+''' AND EMP_CODIGO = '''+FormOrdServCentroNovo.CdsOPEMP_CODIGO.AsString+'''';
                 //
                 dbInicio.ExecSql(wSql1+wSeleciona);
                 //
             end;
        except on E:EDataBaseError do
           uteis.erro  (pchar('Erro ao estornar a OP ! '+e.message));
        end;
      except on E:EDataBaseError do
         uteis.erro  (pchar('Erro ao gerar o refazer !'));
      end;
    finally
      begin
          Estornar_Material_Estoque(wTpOP,
                                    FormOrdServCentroNovo.CdsOPEMP_CODIGO.AsString,
                                    Edt_Referencia.Text,
                                    ValorAmericano(FormOrdServCentroNovo.CdsOPOSV_ESTOQUE.AsString),
                                    FormOrdServCentroNovo.CdsOPOSV_ESTOQUE.AsFloat);

          //FormOrdServCentroNovo.CdsOP.Refresh;
          SqlCdsEstornar.Close;
          ProgRefazer.Position := 0;
          LimpaEdits;
          Bit_CancelarMateria.Click;
      end;
    end;
end;

procedure TFormOrdServRefazer.Processo_Refazer;
begin
    try
        BuscaOps; {Busca os Itens das Ops}
        SqlCdsRefazer.First;
        while not SqlCdsRefazer.Eof do
        begin
             if FormOrdServCentroNovo.CdsOPOSV_STATUS.AsString = 'E' then
             begin
                   //se a ordem estava estornada agora para em produçao entao
                   //atualiza saldo em produca
                   //Retira a quantidade em produçao do estoque
                   AtualizaQtdeProducao(FormOrdServCentroNovo.CdsOPPRD_REFER.AsString,'E',FormOrdServCentroNovo.CdsOPOSV_QTDE.AsString);
             end;
             wApontado := 0;
             if (SqlCdsRefazerWSALDO.AsCurrency>=SqlCdsRefazerFALTA_APONTAR.AsCurrency) then
             begin
                    wApontado := SqlCdsRefazerFALTA_APONTAR.AsCurrency;
                    wStatusAp := 'S';
             end
             else
             begin
                    if (SqlCdsRefazerWSALDO.AsCurrency <= 0) then
                       wStatusAp := 'N'
                    else
                       wStatusAp := 'P';
                    wApontado := SqlCdsRefazerWSALDO.AsCurrency;
             end;

//             if (FormOrdServCentroNovo.Rad_Reserva.checked ) then
//             begin
//                    wStatusAp := 'N';
//                    if (dbInicio.GetParametroSistema('PMT_ATULIZA_ESTOQUE')  = 'F') then
//                       Reserva_Materia(SqlCdsRefazerPRD_REFER_ITENS.AsString, ValorAmericano(FloatToStr(wApontado)));
//
//                    Incrementa_Qtde_Reserva_Empenho(SqlCdsRefazerOSI_REGISTRO.AsString,
//                                                    'R',
//                                                    wStatusAp,
//                                                    ValorAmericano(FloatToStr(wApontado)));
//             end
//             Else
             if (FormOrdServCentroNovo.Rad_Producao.checked ) then
             begin
                  //So Refaz dos Itens Pendentes e Parcial
                  if (SqlCdsRefazerOSI_STATUSEMPENHO.AsString <>'S') then
                  begin
                       if (wApontado > 0) then
                       begin
                                  Inserir_Empenho('A',
                                                  SqlCdsRefazerOSV_CODIGO.AsString,
                                                  SqlCdsRefazerPRD_REFER_ITENS.AsString,
                                                  SqlCdsRefazerEMP_CODIGO.AsString,
                                                  DataAmericana(DateToStr(now)),
                                                  ValorAmericano(FloatToStr(wApontado)),0);

                                  Incrementa_Qtde_Reserva_Empenho(SqlCdsRefazerOSI_REGISTRO.AsString,
                                                                  'P',
                                                                  wStatusAp,
                                                                  ValorAmericano(FloatToStr(wApontado)));
                                  {Atualizar o campo Empenho no Estoque}
                                  Atualiza_Empenho_Estoque('P',
                                                           SqlCdsRefazerPRD_REFER_ITENS.AsString,
                                                           ValorAmericano(FloatToStr(wApontado)));
                                  {Atualiza o Campo PRD_SALDOPRODUCAO}
                                  AtualizaQtdeProducao(SqlCdsRefazerPRD_REFER_ITENS.AsString,
                                                       'E',
                                                       ValorAmericano(FloatToStr(wApontado)));
                                  KardexLancamento(SqlCdsRefazerOSI_REGISTRO.AsString,
                                                   'PRO',
                                                   wPmt_Amx_Producao_Entrada,
                                                   '',
                                                   SqlCdsRefazerPRD_CODIGO.AsString,
                                                   '',//grade
                                                   '',
                                                   'S',
                                                   '',
                                                   '',//Lote nao informado
                                                   'SAIDA PARA PRODUCAO',
                                                   Now,
                                                   wApontado,
                                                   Edt_OP.Text,
                                                   'PRODUÇÃO '+SqlCdsRefazerPRD_REFER_ITENS.AsString,
                                                   0.00 );
                       end;
                  end;
                  //Atualiza o Status da OP se foi concluido o Empenho
                  Mudar_Status_Empenho(SqlCdsRefazerEMP_CODIGO.AsString, SqlCdsRefazerOSV_CODIGO.AsString);
             end;
             ProgRefazer.Position := ProgRefazer.Position + 1;
             SqlCdsRefazer.Next;
        end;
    finally
          FormOrdServCentroNovo.CdsOP.Close;
          FormOrdServCentroNovo.SqlCdsEmpenho.Close;
          SqlCdsRefazer.Close;
          FormOrdServCentroNovo.CdsOP.Open;
          FormOrdServCentroNovo.SqlCdsEmpenho.Open;

          ProgRefazer.Position := 0;
          LimpaEdits;
          Bit_CancelarMateria.Click;
    end;
end;

procedure TFormOrdServRefazer.Processo_Reservar;
begin
    try
      try
        SqlCdsRefazer.First;
        while not SqlCdsRefazer.Eof do
         begin
             IF FrmMenu.wBaixaEstqAlmox = 'S' then
                wStatusAp := 'N'
             else
                begin
                   if (SqlCdsRefazerWSALDO.AsCurrency >= SqlCdsRefazerFALTA_APONTAR.AsCurrency) then
                      begin
                          wStatusAp := 'S';
                      end
                   else
                      begin
                          if (SqlCdsRefazerWSALDO.AsCurrency <= 0) then
                             wStatusAp := 'N'
                          else
                             wStatusAp := 'P';
                      end;
                end;
             //
             wApontado := 0;
             wApontado := Retorna_Saldo_Estoque(SqlCdsRefazerPRD_REFER_ITENS.AsString,
                                                SqlCdsRefazerEMP_CODIGO.AsString,
                                                FloatToStr(SqlCdsRefazerFALTA_APONTAR.AsCurrency));
             //
             wApontado := SqlCdsRefazerFALTA_APONTAR.AsCurrency;
             if (dbInicio.GetParametroSistema('PMT_ATULIZA_ESTOQUE')  = 'F') then
                begin
                    Reserva_Materia(SqlCdsRefazerPRD_REFER_ITENS.AsString,
                                    ValorAmericano(FloatToStr(Uteis.RoundTo(wApontado,4))));
                end;
             //
             Incrementa_Qtde_Reserva_Empenho(SqlCdsRefazerOSI_REGISTRO.AsString,
                                             'R',
                                             wStatusAp,
                                             ValorAmericano(FloatToStr(wApontado)));
             //
             ProgRefazer.Position := ProgRefazer.Position + 1;
             SqlCdsRefazer.Next;
         end;
        //
        Mudar_Status_Op(SqlCdsRefazerEMP_CODIGO.AsString,
                        SqlCdsOrdemOSV_CODIGO.AsString,
                        'R');
        //
        FormOrdServCentroNovo.CdsOP.Refresh;
        //
      except on E:EDataBaseError do
        uteis.erro  (pchar('Erro ao Reservar itens da OP ! '+e.message));
      end;
    finally
      begin
          ProgRefazer.Position := 0;
      end;
    end;
end;

procedure TFormOrdServRefazer.LimpaEdits;
begin
    Edt_OP.Text         := '';
    Edt_Emissao.Text    := '';
    Edt_Referencia.Text := '';
    Edt_Material.Text   := '';
    Curr_Qtde.Value     := 0;
end;

procedure TFormOrdServRefazer.Processo_almoxarifado;
var
wSQL1,wSQL2 :String;
wtransacao :TTransactionDesc;
begin
    {Rotina para gravar na tabela do almoxarifado o ordem , para separação do material}
    try
      wTransacao.TransactionID := retornaTransacao;
      wtransacao.IsolationLevel := xilREADCOMMITTED;
      dataCadastros.SQLConnection1.StartTransaction(wTransacao);
      LocalizaOp;
      with FormOrdServCentroNovo do
       begin
           {manda para almoxarifado todos os itens da O.S}
           if sqlCdsOrdem.IsEmpty = False then
              begin
                  sqlCdsOrdem.First;
                  while not sqlCdsOrdem.eof do
                   begin
                       {se a ordem ja estiver no almoxarifado não grava}
                       if sqlCdsOrdemOSV_STATUS.AsString <> 'X' then
                          begin
                              wSQL1 := 'Insert into AMX_TEMP(AMX_DATA,AMX_REFER,AMX_QTDE,AMX_NUM_OP,EMP_CODIGO,AMX_OP_PAI,AMX_STATUS) VALUES ';
                              wSQL2 := ' ('''+DataAmericana(dateToStr(Date))+''','''+sqlCdsOrdemPRD_REFER.AsString+''','''+sqlCdsOrdemOSV_QTDE.AsString+''','''+sqlCdsOrdemOSV_CODIGO.AsString+''','''+dbInicio.Empresa.EMP_CODIGO+''','''+sqlCdsOrdemOSV_CODIGO_PAI.AsString+''','''+sqlCdsOrdemOSV_STATUS.AsString+''') ';
                              dbInicio.ExecSql(wSQL1 + wSQL2);
                              AtualizaOpAlm(sqlCdsOrdemOSV_CODIGO.AsString);
                          end;
                       //
                       sqlCdsOrdem.Next;
                   end;
                  CdsOP.Refresh;
              end
           else
              begin
                  uteis.aviso('"ATENÇÃO" Não há ordem de produção selecionada !');
              end;
       end;
      datacadastros.SQLConnection1.Commit(wTransacao);
      {fecha formulario}
      Bit_CancelarMateria.Click;
   except
      On e:Exception do
        begin
            uteis.erro  (pchar('Ocorreu uma exceção ao gravar no arquivo almoxarifado !'+e.Message));
            datacadastros.SQLConnection1.Rollback(wTransacao);
        end;
      On E:EdatabaseError do
         Begin
            uteis.erro  (pchar('Erro ao gravar no arquivo almoxarifado !'+e.Message));
            datacadastros.SQLConnection1.Rollback(wTransacao);
         end;
   end;
end;

procedure TFormOrdServRefazer.FormCreate(Sender: tObject);
begin
     inherited;
    // self.Width:=413;
    // self.Height:=286;
     wPmt_Amx_Producao_Entrada:= dbInicio.GetParametroSistema('PMT_AMX_PRODUCAO_ENTRADA');
end;

procedure TFormOrdServRefazer.AtualizaOpAlm(wNUMOP: String);
begin
     ExecSql( 'Update OSV0001 '+
              'Set OSV_STATUS = '+qStr('X')+
              ' Where OSV_CODIGO = '+qStr(wNUMOP)+
              ConcatSe(' and ', dbInicio.ExclusivoSql('ORDEMPRODUCAO') ) );
end;

procedure TFormOrdServRefazer.BuscaOPs;
begin
     SqlCdsRefazer.Close;
     SqlCdsRefazer.CommandText := 'Select O2.EMP_CODIGO, O2.OSI_REGISTRO, O2.OSV_CODIGO, P1.PRD_CODIGO, '+
                                '       O2.PRD_REFER_ITENS,O2.OSI_RESERVADO,O2.OSI_STATUSEMPENHO, '+
                                '       CAST((((O2.osi_qtde1+O2.osi_qtde2+O2.osi_qtde3+O2.osi_qtde4+O2.osi_qtde5+O2.osi_qtde6+O2.osi_qtde7+O2.osi_qtde8))-(O2.OSI_EMPENHO+O2.OSI_RESERVADO)) AS numeric(15,4)) AS FALTA_APONTAR,' +
                                '       (select first 1 amx_saldo_ret FROM pCd_kardex_saldo(O2.EMP_CODIGO,P1.PRD_CODIGO,'+qStr(wPmt_Amx_Producao_Entrada)+')) AS WSALDO '+
                                'from OSV_IT02 O2 '+
                                '     left join PRD0000 P1 ON (O2.PRD_REFER_ITENS = P1.PRD_REFER) ';
      if (RadTodas.checked ) then
         SqlCdsRefazer.CommandText := SqlCdsRefazer.CommandText + 'Where O2.OSI_CODIGO_ORIGEM = '+qStr(ExtrairNumeros(Edt_Op.Text))+' And O2.EMP_CODIGO = '+qStr(FormOrdServCentroNovo.CdsOPEMP_CODIGO.AsString)
      else
         SqlCdsRefazer.CommandText := SqlCdsRefazer.CommandText + 'Where O2.OSV_CODIGO = '+qStr(Edt_Op.Text)+' And O2.EMP_CODIGO = '+qStr(FormOrdServCentroNovo.CdsOPEMP_CODIGO.AsString) ;
      SqlCdsRefazer.CommandText := SqlCdsRefazer.CommandText + 'Order by O2.OSV_CODIGO';
      SqlCdsRefazer.Open;
      ProgRefazer.Min := 0;
      ProgRefazer.Max := SqlCdsRefazer.RecordCount;
end;

procedure TFormOrdServRefazer.reservar;
begin
    {reserva saldo dos produtos das OPS}
    LocalizaOP;
    {no localiza op trouxe os registros do sqlCdsordem}
    SqlCdsOrdem.First;
    {faz while poque no select usa muito recurso do CPU}
    While not sqlCdsOrdem.Eof do
    begin
         BuscaOps;
         Processo_Transf_Abertas_Reserva;
         SqlCdsOrdem.Next;
    end;
    //
    SqlCdsRefazer.Close;
    Bit_CancelarMateria.Click;
end;

procedure TFormOrdServRefazer.LocalizaOP;
begin
    sqlCdsOrdem.close;
    if (RadTodas.checked ) then
       SqlCdsOrdem.Commandtext:=sqldef('ORDEMPRODUCAO','select OSV_CODIGO, OSV_QTDE, PRD_REFER ,OSV_CODIGO_PAI, OSV_STATUS from OSV0001','Where OSV_CODIGO_PAI = '''+StrZero(ExtrairNumeros(Edt_OP.Text),6)+'''','','')
    else
       SqlCdsOrdem.Commandtext:=sqldef('ORDEMPRODUCAO','select OSV_CODIGO, OSV_QTDE, PRD_REFER ,OSV_CODIGO_PAI, OSV_STATUS from OSV0001','Where OSV_CODIGO = '''+StrZero(Edt_OP.Text,6)+'''','','');
    sqlCdsOrdem.open;
end;

procedure TFormOrdServRefazer.Processo_Transf_Abertas_Producao;
Var
  xReservado,
  xApontado,
  xEmpenho,
  xSituaEstoque,
  wSaldoEstoque,
  xEstoque      : Double;
begin
    try
      try
        BuscaOps;
        SqlCdsRefazer.First;
        while not SqlCdsRefazer.Eof do
         begin
             wApontado     := 0;
             wSaldoEstoque := Retorna_Saldo_Estoque(SqlCdsRefazerPRD_REFER_ITENS.AsString,
                                                    SqlCdsRefazerEMP_CODIGO.AsString,
                                                    FloatToStr(SqlCdsRefazerFALTA_APONTAR.AsCurrency));
             {se der baixa no almoxarifado não empenha nada}
             if (frmmenu.wBaixaEstqAlmox = 'S') then
                wStatusAp := 'N'//somente se for no almoxarifado
             else
                begin
                    if (wSaldoEstoque >= SqlCdsRefazerFALTA_APONTAR.AsCurrency) then
                       begin
                           wApontado := SqlCdsRefazerFALTA_APONTAR.AsCurrency;
                           wStatusAp := 'S';
                       end
                    else
                       begin
                           if (wSaldoEstoque <= 0) then
                              begin
                                  wApontado := 0;
                                  wStatusAp := 'N'
                              end
                           else
                              begin
                                  wApontado := wSaldoEstoque;
                                  wStatusAp := 'P';
                              end;
                       end;
                end;
             //
             //
             Incrementa_Qtde_Reserva_Empenho(SqlCdsRefazerOSI_REGISTRO.AsString,
                                             'P',
                                             wStatusAp,
                                             ValorAmericano(FloatToStr(wApontado)));
             //
             if (wStatusAp <> 'N') then
                begin
                    {Insere dados na tabela empenho}
                    Inserir_Empenho('A',
                                    SqlCdsRefazerOSV_CODIGO.AsString,
                                    SqlCdsRefazerPRD_REFER_ITENS.AsString,
                                    SqlCdsRefazerEMP_CODIGO.AsString,
                                    DataAmericana(DateToStr(now)),
                                    ValorAmericano(FloatToStr(wApontado)),0);
                    //
                    {Atualizar o Campo PRD_EMPENHO no Estoque}
                    Atualiza_Empenho_Estoque('A',
                                             SqlCdsRefazerPRD_REFER_ITENS.AsString,
                                             ValorAmericano(FloatToStr(wApontado)));
                    {Atualiza o Campo PRD_SALDOPRODUCAO}
                    AtualizaQtdeProducao(SqlCdsRefazerPRD_REFER_ITENS.AsString,
                                         'E',
                                         ValorAmericano(FloatToStr(wApontado)));
                end;
             ProgRefazer.Position := ProgRefazer.Position + 1;
             SqlCdsRefazer.Next;
         end;
        //
        try
          {Marcar OP como Producao}
          Mudar_Status_Op(FormOrdServCentroNovo.CdsOPEMP_CODIGO.AsString,
                          Edt_OP.Text,
                          'P');
          //
          {Atualiza o Flag da Tabela de Pedido PED0000}
          if (FormOrdServCentroNovo.CdsOPPED_CODIGO.AsString <> '') or ((FormOrdServCentroNovo.CdsOPPED_CODIGO.IsNull = False)) then
             begin
                 wSql1      := 'Update PED0000 set PED_PRODUCAO = ''S''';
                 //
                 wSeleciona := ' Where PED_CODIGO ='''+FormOrdServCentroNovo.CdsOPPED_CODIGO.AsString+''' AND EMP_CODIGO = '''+FormOrdServCentroNovo.CdsOPEMP_CODIGO.AsString+'''';
                 //
                 dbInicio.ExecSql(wSql1+wSeleciona);
             end;

        except on E:EDataBaseError do
           uteis.erro  (pchar('Erro ao transferir a OP para produção ! '+e.message));
        end;
      except on E:EDataBaseError do
         uteis.erro  (pchar('Erro ao gerar o produção !'));
      end;
    finally
      begin
          FormOrdServCentroNovo.CdsOP.Refresh;
          SqlCdsRefazer.Close;
          ProgRefazer.Position := 0;
          LimpaEdits;
          Bit_CancelarMateria.Click;
      end;
    end;
end;

procedure TFormOrdServRefazer.Processo_Transf_Abertas_Reserva;
begin
     try
        SqlCdsRefazer.First;
        while not SqlCdsRefazer.Eof do
        begin
             if (SqlCdsRefazerWSALDO.AsCurrency >= SqlCdsRefazerFALTA_APONTAR.AsCurrency) then
                wApontado := SqlCdsRefazerFALTA_APONTAR.AsCurrency
             else
             if (SqlCdsRefazerWSALDO.AsCurrency <= 0) then
                wApontado := 0
             else
                 wApontado := SqlCdsRefazerWSALDO.AsCurrency;
             wStatusAp := 'N';
             if (dbInicio.GetParametroSistema('PMT_ATULIZA_ESTOQUE')  = 'F') then
                Reserva_Materia(SqlCdsRefazerPRD_REFER_ITENS.AsString, ValorAmericano(FloatToStr(wApontado)));
             ProgRefazer.Position := ProgRefazer.Position + 1;
             SqlCdsRefazer.Next;
        end;

        Mudar_Status_Op(SqlCdsRefazerEMP_CODIGO.AsString,
                        SqlCdsOrdemOSV_CODIGO.AsString,
                        'R');
        FormOrdServCentroNovo.CdsOP.Refresh;
     finally
          ProgRefazer.Position := 0;
     end;
end;

procedure TFormOrdServRefazer.Processo_Transf_Reserva_Producao;
begin
    try
      try
        BuscaOps;
        SqlCdsRefazer.First;
        while not SqlCdsRefazer.Eof do
         begin
             {se der baixa no almoxarifado não empenha nada}
             if frmmenu.wBaixaEstqAlmox = 'S' then
                wStatusAp := 'N';
             //
             wApontado := 0;
             wApontado := SqlCdsRefazerOSI_RESERVADO.AsCurrency;
             //
             if (SqlCdsRefazerFALTA_APONTAR.AsCurrency < 0) then
                wStatusAp := 'N'
             else
             if (SqlCdsRefazerFALTA_APONTAR.AsCurrency = 0) then
                wStatusAp := 'S'
             else
             if (SqlCdsRefazerFALTA_APONTAR.AsCurrency > 0) then
                wStatusAp := 'P';
             //
             {Transfere a Qtde Reservada para o Empenho}
             Incrementa_Qtde_Reserva_Empenho(SqlCdsRefazerOSI_REGISTRO.AsString,
                                             'P',
                                             wStatusAp,
                                             ValorAmericano(FloatToStr(wApontado)));
             {Diminui a Reserva que foi reservada da OP}
             Diminui_Reserva_OP(SqlCdsRefazerOSI_REGISTRO.AsString,
                                ValorAmericano(FloatToStr(wApontado)));



             //
             if (wStatusAp <> 'N') then
                begin
                    {Inserir Apontamento na tabela de Apontamento}
                    Inserir_Empenho('A',
                                    SqlCdsRefazerOSV_CODIGO.AsString,
                                    SqlCdsRefazerPRD_REFER_ITENS.AsString,
                                    SqlCdsRefazerEMP_CODIGO.AsString,
                                    DataAmericana(DateToStr(now)),
                                    ValorAmericano(FloatToStr(wApontado)),0);
                    //
                    {Atualizar o Campo PRD_EMPENHO no Estoque}
                    Atualiza_Empenho_Estoque('A',
                                             SqlCdsRefazerPRD_REFER_ITENS.AsString,
                                             ValorAmericano(FloatToStr(wApontado)));
                    {Atualiza o Campo PRD_SALDOPRODUCAO}
                    AtualizaQtdeProducao(SqlCdsRefazerPRD_REFER_ITENS.AsString,
                                         'E',
                                         ValorAmericano(FloatToStr(wApontado)));
                end;
             //
             ProgRefazer.Position := ProgRefazer.Position + 1;
             SqlCdsRefazer.Next;
         end;
        //
        {Muda o Status da OP para Produçao}
        Mudar_Status_Op(SqlCdsRefazerEMP_CODIGO.AsString,
                        SqlCdsRefazerOSV_CODIGO.AsString,
                        'P');
        //
        FormOrdServCentroNovo.CdsOP.Refresh;
      except on E:EDataBaseError do
        uteis.erro  (pchar('Erro ao Reservar itens da OP ! '+e.message));
      end;
    finally
      begin
          ProgRefazer.Position := 0;
      end;
    end;
end;

end.



