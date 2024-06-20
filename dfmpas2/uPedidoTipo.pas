unit uPedidoTipo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, SQLClientDataSet,
  Dialogs, StdCtrls, Buttons, ComboBoxRw, DB, Grids, DBGrids, DBClient, DBLocalS, baseDbEstoqueform,
  SgDbSeachComboUnit, ACBrEnterTab, ACBrBase, ACBrCalculadora, BaseForm, Data.DBXFirebird, Data.FMTBCd, Data.SqlExpr, Vcl.ExtCtrls;



type
  TFrmPedidoTipo = class(TFrmBaseDbEstoque)
    GroupBox1: TGroupBox;
    Bit_Cancelar: TBitBtn;
    Bit_Gravar: TBitBtn;
    LblAlteracao: TLabel;
    GroupBox2: TGroupBox;
    CdsVendaPerdida: TClientDataSet;
    DbGradePerda: TDBGrid;
    CdsVendaPerdidaReferencia: TStringField;
    CdsVendaPerdidaDescricao: TStringField;
    CdsVendaPerdidaQtdeSolicitada: TFloatField;
    CdsVendaPerdidaQtdeEstoque: TFloatField;
    CdsVendaPerdidaQtdePerda: TFloatField;
    DsVendaPerdida: TDataSource;
    GroupBox3: TGroupBox;
    Label1: TLabel;
    EdPedidoAtualNumero: TEdit;
    EdPedidoAtualDescricao: TEdit;
    Label5: TLabel;
    EdCodigoEmpresaAtual: TEdit;
    EdEmpresaAtual: TEdit;
    GroupBox4: TGroupBox;
    Label2: TLabel;
    EdPedidoNovoNumero: TEdit;
    CbNovoTipo2: TComboBoxRw;
    EdCodigoEmpresa: TEdit;
    CbEmpresa: TComboBoxRw;
    Label6: TLabel;
    CbNovoTipo: TSgDbSearchCombo;
    procedure FormShow(Sender: tObject);
    procedure Bit_CancelarClick(Sender: tObject);
    procedure EdPedidoNovoNumeroExit(Sender: tObject);
    procedure Bit_GravarClick(Sender: tObject);
    procedure EdPedidoAtualNumeroChange(Sender: tObject);
    procedure EdPedidoNovoNumeroChange(Sender: tObject);
    procedure DbGradePerdaDrawColumnCell(Sender: tObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure EdCodigoEmpresaExit(Sender: tObject);
    procedure CbEmpresaExit(Sender: tObject);
    procedure CbEmpresaChange(Sender: tObject);
    procedure FormCreate(Sender: tObject);
    procedure CbNovoTipoChange(Sender: TObject);
    procedure CbNovoTipoExit(Sender: TObject);
    procedure CbNovoTipoSelect(Sender: TObject);
    procedure CbNovoTipoKeyPress(Sender: TObject; var Key: Char);
  private
     sReferenciaProvisoriaOrcamento :string;
     msgLote, fSeqUnicaPed:Boolean;
     fCodEmp:String;
    function AtualizaEstoque(const sCodido,sEmpresa:String) : Boolean;
    function ProdutoAtualizaEstoque(const sprd_refer, sprd_Codido: string ) : Boolean;
    function AtualizaEstoqueGeral(const sCodido:String):Boolean;
    function LiberaConversaoReferenciaProvisoria(const sCodido:String):Boolean;
    procedure AtualizaLabel;
    procedure CalculaPerda;
  public
    { Public declarations }
  end;

var
  FrmPedidoTipo: TFrmPedidoTipo;

implementation

uses uPedido, DataCad, {uProcedimentos,} Men0001, RWFunc, uPedidoDAO, uteis, iniciodb,
  AutorizaForm, uAvisos;

{$R *.dfm}

procedure TFrmPedidoTipo.FormCreate(Sender: tObject);
begin
     inherited;
     sReferenciaProvisoriaOrcamento := dbInicio.GetParametroSistema('PMT_REFERENCIA_PROVISORIA');
     fSeqUnicaPed:=(dbInicio.GetParametroSistema('PMT_SEQUENCIA_UNICA_PEDIDO') = 'S');
     if fSeqUnicaPed then
        fCodEmp:='001'
     Else
        fCodEmp:=dbInicio.Empresa.EMP_CODIGO;
     msgLote := False;
end;

procedure TFrmPedidoTipo.FormShow(Sender: tObject);
begin
   inherited;
  //Pega Empresa Atual
  EdCodigoEmpresaAtual.Text := dbInicio.EMPRESA.EMP_CODIGO;
  EdEmpresaAtual.Text := dbInicio.EMPRESA.RAZAO;
  //Adiciona empresa atual como padrao da nova
  EdCodigoEmpresa.Text := dbInicio.EMPRESA.EMP_CODIGO;
  CbEmpresa.TextoLocalizar := dbInicio.EMPRESA.EMP_CODIGO;
  CbEmpresa.Localizar := True;
  //Pega o do Pedido Atual
  EdPedidoAtualNumero.Text := PreenchezeroEsquerda(IntToStr(FrmPedido.iCodigoTipoPedido),3);
  EdPedidoAtualDescricao.Text := FrmPedido.EdPedidoTipo.Text;
  //Cds
  CdsVendaPerdida.CreateDataSet;
  CbNovoTipo.WherePersonalizado :=  ' WHERE OPV_INATIVAR_TIPO_PEDIDO <> ' + QuotedStr('S')+ ' AND (OPV_PEDIDOINTERNO ='+ QuotedStr('N')+ ' OR OPV_PEDIDOINTERNO IS NULL )' +
                                 iif(NOT DBInicio.Empresa.USP_PERMITE_ALTER_TIPO,
                                 ' AND (OPV_ORCAMENTO =  ''S'' OR OPV_CODIGO = '+IntToStr(DBInicio.Empresa.USP_OPV_CODIGO)+')','' ) ;
end;

procedure TFrmPedidoTipo.Bit_CancelarClick(Sender: tObject);
begin
   Close;
end;

procedure TFrmPedidoTipo.EdPedidoNovoNumeroExit(Sender: tObject);
begin

   if (EdPedidoNovoNumero.Text = '000') then
      begin
         EdPedidoNovoNumero.Clear;
         CbNovoTipo.idRetorno := '';
      end
   else
      begin
         if (CbNovoTipo.idRetorno <> EmptyStr) then
            begin
               AtualizaLabel;
               CalculaPerda;
            end
         else
            begin
               uteis.aviso('Tipo não localizado com o código informado');
               CbNovoTipo.idRetorno := '';
               EdPedidoNovoNumero.SetFocus;
            end;
      end;
end;

procedure TFrmPedidoTipo.CbNovoTipoChange(Sender: TObject);
var gerenciaLote: boolean;
begin

  // EdPedidoNovoNumero.Text := CbNovoTipo.idRetorno;
  EdPedidoNovoNumero.Text :=  PreenchezeroEsquerda(CbNovoTipo.idRetorno,3);

  if CbNovoTipo.Text <> EmptyStr then
    CbNovoTipo.WherePersonalizado :=  ' WHERE OPV_INATIVAR_TIPO_PEDIDO <> ' + QuotedStr('S')+ ' AND OPV_DESCRICAO CONTAINING '+ QuotedStr(CbNovoTipo.Text ) + ' AND (OPV_PEDIDOINTERNO ='+ QuotedStr('N')+ ' OR OPV_PEDIDOINTERNO IS NULL )' +
                                  iif(NOT DBInicio.Empresa.USP_PERMITE_ALTER_TIPO,
                                  ' AND (OPV_ORCAMENTO =  ''S'' OR OPV_CODIGO = '+IntToStr(DBInicio.Empresa.USP_OPV_CODIGO)+')','' )
  else
    CbNovoTipo.WherePersonalizado :=  ' WHERE OPV_INATIVAR_TIPO_PEDIDO <> ' + QuotedStr('S')+ ' AND (OPV_PEDIDOINTERNO ='+ QuotedStr('N')+ ' OR OPV_PEDIDOINTERNO IS NULL )' +
                                   iif(NOT DBInicio.Empresa.USP_PERMITE_ALTER_TIPO,
                                   ' AND (OPV_ORCAMENTO =  ''S'' OR OPV_CODIGO = '+IntToStr(DBInicio.Empresa.USP_OPV_CODIGO)+')','' ) ;

  AtualizaLabel;
  CalculaPerda;
  Bit_Gravar.Enabled := True;
   /// verifica se mudança de pedidos de controle estoque (somente de orçamento para venda) um item que contra por lote não tem lote
   if not AtualizaEstoque(EdPedidoAtualNumero.Text,EdCodigoEmpresaAtual.Text)  //'true se Movimenta Estoque'
    and AtualizaEstoque(EdPedidoNovoNumero.Text,EdCodigoEmpresaAtual.Text) then  // 'true se Movimenta Estoque'
   begin
     FrmPedido.SqlCdsPedidoItem.DisableControls;
     FrmPedido.SqlCdsPedidoItem.First;

     try
       while (not FrmPedido.SqlCdsPedidoItem.Eof) do
       begin
         gerenciaLote := BuscaUmDadoSqlAsString('SELECT PRD_GERENCIA_LOTE FROM PRD0000 WHERE prd_codigo =  '+ QuotedStr(FrmPedido.SqlCdsPedidoItemPRD_CODIGO.AsString)) = 'S';
         if (FrmPedido.SqlCdsPedidoItemPRDL_REGISTRO.AsInteger = 0) and gerenciaLote Then
         begin
          if not msgLote then
          begin
           MessageDlg('O item '+FrmPedido.SqlCdsPedidoItemPRD_REFER.AsString + ' que controla por lote e não foi preenchido lote.'+#13+#10+
                     ' Antes de mudar o tipo incluir o lote', mtError, [mbOk], 0);
           msgLote := True;
          end;
         end;
         FrmPedido.SqlCdsPedidoItem.next;

         // PEDIT_01 - PRF_QTDEPEND


       end;
     finally
       FrmPedido.SqlCdsPedidoItem.EnableControls;
     end;
   end;

end;

procedure TFrmPedidoTipo.CbNovoTipoExit(Sender: TObject);
begin
 if (CbNovoTipo.idRetorno = EmptyStr) then
    begin
       CbNovoTipo.idRetorno := '';
       EdPedidoNovoNumero.Text := '';
    end
 else
    begin
       EdPedidoNovoNumero.Text := CbNovoTipo.idRetorno;
       AtualizaLabel;
    end;

 // CbNovoTipoChange(Sender);


end;

procedure TFrmPedidoTipo.CbNovoTipoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  // CbNovoTipoChange(Sender);
end;

procedure TFrmPedidoTipo.CbNovoTipoSelect(Sender: TObject);
begin
  inherited;
  EdPedidoNovoNumero.Text := CbNovoTipo.idRetorno;
  if (CbNovoTipo.idRetorno <> '') and (CbNovoTipo.idRetorno <> '000') then
    Bit_Gravar.Enabled := True
  else
    Bit_Gravar.Enabled := False;

  // CbNovoTipoChange(Sender);
end;

procedure TFrmPedidoTipo.Bit_GravarClick(Sender: tObject);
var
   rSaldoAtual:Real;
   bContinua, opvSemLote:Boolean;
   sNovoNumeroPedido, sAlmoxarifadoCNPJ :String;
   dDataPedidoAtual,
   dDataPedidoAlteracao:TDate;
   bAlteraDataPedidoPeloTipo, bAtualizaEstoque, gerenciaLote:Boolean;
   prd_codigo : string;
   dQtdeEstoque,  dQtdekit, kardexSaldo: double;
   qpreciso,qPendenteNova, qPendenteAnterior, qQuantidadeAnterior, quantidade, v1, v2, v3: Double;
   stipoKardesES, amx_destino, PRF_PRAZO_ENTREGA :string;
begin
  CbNovoTipoChange(Sender);


  if dbInicio.BuscaUmDadoSqlAsString('SELECT PMT_BLOQ_PED_VENDA_FAT_ATRASO FROM PRMT0001 WHERE EMP_CODIGO = ' + QuotedStr(dbInicio.Empresa.EMP_CODIGO) ) = 'S' then
  begin
    if BloqueiaPedidoVendaFaturaAtraso(frmPedido.edCliente.idRetorno, frmPedido.EdPrazoCodigo.Text) then
      Abort;
  end
  else
    uAvisos.ClientePossuiFaturasAtrasadas(frmPedido.edCliente.idRetorno,'CLIM_VENDA');



  if BuscaUmDadoSqlAsFloat('SELECT CLI_LIMITECRED FROM CLI0000 WHERE CLI_CODIGO = ' + QuotedStr(FrmPedido.edCliente.idRetorno)) > 0 then
    if BuscaUmDadoSqlAsString('SELECT o.OPV_VENDA FROM OPV0000 o WHERE o.OPV_CODIGO = ' + CbNovoTipo.idRetorno) = 'S' then
      if BuscaUmDadoSqlAsInteger('SELECT p.PCL_MODALIDADE FROM PCL0000 p WHERE p.PCL_CODIGO = ' + QuotedStr(FrmPedido.edPrazo.idRetorno) ) > 0 then
      begin
        if not dbInicio.ValidaLimiteCredito(FrmPedido.edCliente.idRetorno, dbInicio.EMPRESA.EMP_CODIGO, True) then
          Exit;
        OpenAux('SELECT * FROM PCd_LIMITE_CLIENTE(' + QuotedStr(FrmPedido.edCliente.idRetorno) + ',' + iif (  Share('CLIENTES')  = 'C', QuotedStr('999'), QuotedStr(dbInicio.empresa.EMP_CODIGO) )  + ')' );
        if FrmPedido.CurrValorAFaturar.Value > qAux.FieldByName('Saldo').AsFloat then
        begin
          v1:=qAux.FieldByName('saldo').AsCurrency;
          v2:=qAux.FieldByName('utilizado_fatura').AsCurrency;
          v3:=qAux.FieldByName('utilizado_pedido').AsCurrency;
          MessageDlg('Impossível Continuar, Valor Excede o Limite de Crédito do Cliente!' + #13#10 + #13#10 +
                     'Valor da Fatura                  : R$ '+FormatFloat('#,##0.00',FrmPedido.CurrValorAFaturar.Value)+#13#10+#13#10+
                     'Pedidos pendentes de faturamento : R$ '+FormatFloat('#,##0.00',v3)+#13#10+
                     'Faturas pendentes de pagamento   : R$ '+FormatFloat('#,##0.00',v2)+#13#10+#13#10+
                     'Saldo do limite de crédito       : R$ '+FormatFloat('#,##0.00',v1)
          , mtWarning, [mbOK], 0);
          Exit;
        end;
      end;

   bAlteraDataPedidoPeloTipo := False;
   EdCodigoEmpresa.Text      :=  PreenchezeroEsquerda(EdCodigoEmpresa.Text,3);
   EdCodigoEmpresaAtual.Text :=  PreenchezeroEsquerda(EdCodigoEmpresaAtual.Text,3);
   bContinua                 := True;
   if (EdCodigoEmpresa.Text = '') then
   begin
         uteis.aviso('Informe a Empresa');
         EdCodigoEmpresa.SetFocus;
   end
   else
   if (EdPedidoNovoNumero.Text = '') or (EdPedidoNovoNumero.Text = '000') or (cbNovoTipo.idRetorno = '')  then
   begin
         uteis.aviso('Informe o novo Tipo do Pedido');
         EdPedidoNovoNumero.SelectAll;
   end
   else
   if (BuscaUmDadoSqlAsString('SELECT OPV_ESTOQUE_REMESSAINDUS FROM opv0000 o WHERE opv_codigo = ' + EdPedidoNovoNumero.Text) = 'S')
   and (BuscaUmDadoSqlAsString('SELECT OPV_VENDA FROM opv0000 o WHERE opv_codigo = ' + EdPedidoNovoNumero.Text) = 'N')
   and (BuscaUmDadoSqlAsString('SELECT AMX_DESCRI FROM ALMOX0000 WHERE AMX_CNPJ_PART = ' + QuotedStr(RetirarMascaraCNPJ_INSC(FrmPedido.EdCnpj.Text))) = '')
   then
   begin
         uteis.aviso('Pedido de Industrização tem que ter um Almoxarifado cadastrado para o cliente do pedido');
         EdPedidoNovoNumero.SelectAll;
   end
   else
   if (EdCodigoEmpresaAtual.Text <> EdCodigoEmpresa.Text) and ((AtualizaEstoque(EdPedidoAtualNumero.Text,EdCodigoEmpresaAtual.Text)or(AtualizaEstoque(EdPedidoNovoNumero.Text,EdCodigoEmpresa.Text)))) then // or (AtualizaEstoque(EdPedidoAtualNumero.Text)) then
   begin
         uteis.aviso(PChar( 'não é permitida a alteração da empresa pois a ação movimenta estoque!'#13+
                      'Volte o Tipo para Orçamento para fazer transferência para outra empresa'));
         EdCodigoEmpresa.SetFocus;
   end
   else
   begin

         //Verifica se altera a data do pedido na alteração do tipo
         DataCadastros.sqlUpdate2.Close;
         DataCadastros.sqlUpdate2.sql.text := 'SELECT OPV_ATUALIZA_DATA_PEDIDO FROM OPV0000 where OPV_CODIGO = '+QuotedStr(EdPedidoNovoNumero.Text);
         DataCadastros.sqlUpdate2.Open;
         if (not DataCadastros.sqlUpdate2.IsEmpty) then
            if (DataCadastros.sqlUpdate2.FieldByName('OPV_ATUALIZA_DATA_PEDIDO').AsString = 'S') then
                if (EdPedidoAtualNumero.Text <> PreenchezeroEsquerda(EdPedidoNovoNumero.Text,3)) then
                  bAlteraDataPedidoPeloTipo := True;
         DataCadastros.sqlUpdate2.Close;

         sNovoNumeroPedido := StrZero(FrmPedido.EdPedidoNumero.Text,6);
         if (EdCodigoEmpresaAtual.Text <> EdCodigoEmpresa.Text) then
               if (not fSeqUnicaPed) then
                  if (uteis.confirmacao ( ('Neste momento esta esta transferindo o '+EdPedidoAtualDescricao.Text+' para outra empresa,'+#10#13+
                                           'a numeração será alterada para a sequência da nova empresa'+#10#13+
                                           'Confirma a alteração?')) <> mrYes) then
                           bContinua := False
                  else
                  if (dbInicio.GetParametroSistema('PMT_NUMER_PEDIDO') = 'A') then //Automatico
                     sNovoNumeroPedido    := StrZero(SequenciadorPRC(DataCadastros.SQLConnection1, fCodEmp ,'PED0000', 'PED_CODIGO', 0),6)
                  else
                     sNovoNumeroPedido    := sNovoNumeroPedido+'A';

         //Verifica se existe o codigo provisorio nos itens para pedido de venda
         if (not LiberaConversaoReferenciaProvisoria(EdPedidoNovoNumero.Text)) then
         begin
               uteis.aviso(Pchar('Impossível converter pedido pois o mesmo possui o item '+sReferenciaProvisoriaOrcamento+' que é de caráter provisório. Substitua-o por um item válido.'));
               bContinua := False;
         end;


        qAux.Close;
        qAux.SQL.Text := 'SELECT PRDL_REGISTRO, PRDL_LOTE, PRDL_DATA_FABRICACAO, PRDL_DATA_VALIDADE, PRDL_SALDO' +
                         ' FROM PRD_LOTE pd ' +
                         'WHERE PRDL_SALDO > 0  AND PRD_CODIGO = ' + QuotedStr(PRD_CODIGO) ;
        qAux.Open;



         if (bContinua) then
         begin
               if (uteis.confirmacao ( ('Confirma a alteração do Tipo do Pedido para '+CbNovoTipo.Text))=mrYes) then
               begin
                     //Altera o numero do pedido e dos itens no BD
                     if (sNovoNumeroPedido <> FrmPedido.EdPedidoNumero.Text)then
                     begin
                           DataCadastros.sqlUpdate.Close;
                           DataCadastros.SqlUpdate.sql.text :='UPDATE PED0000 SET PED_CODIGO = '+QuotedStr(sNovoNumeroPedido)+', EMP_CODIGO = '+QuotedStr(EdCodigoEmpresa.Text)+' WHERE PED_CODIGO = '+QuotedStr(FrmPedido.EdPedidoNumero.Text)+ ' and EMP_CODIGO ='+QuotedStr(EdCodigoEmpresaAtual.Text) ;
                           DataCadastros.sqlUpdate.Execsql;
                           DataCadastros.sqlUpdate.Close;

                           DataCadastros.sqlUpdate.Close;
                           DataCadastros.SqlUpdate.sql.text :='UPDATE PED_IT01 SET PED_CODIGO = '+QuotedStr(sNovoNumeroPedido)+', EMP_CODIGO = '+QuotedStr(EdCodigoEmpresa.Text)+' WHERE PED_CODIGO = '+QuotedStr(FrmPedido.EdPedidoNumero.Text)+' and EMP_CODIGO ='+QuotedStr(EdCodigoEmpresaAtual.Text) ;
                           DataCadastros.sqlUpdate.Execsql;
                           DataCadastros.sqlUpdate.Close;

                           uteis.aviso(Pchar('O número do pedido será :'+sNovoNumeroPedido));
                     end;
                     if (EdCodigoEmpresaAtual.Text <> EdCodigoEmpresa.Text) and (fSeqUnicaPed) then
                     begin
                           //Verifica se o pedido nao existe na empresa se existir pega nova sequencia
                           DataCadastros.sqlUpdate.Close;
                           DataCadastros.SqlUpdate.sql.text :='SELECT * FROM PED0000 WHERE EMP_CODIGO = '+QuotedStr(EdCodigoEmpresa.Text)+' AND PED_CODIGO ='+QuotedStr(sNovoNumeroPedido);
                           DataCadastros.sqlUpdate.open;
                           if (not DataCadastros.sqlUpdate.IsEmpty) then
                           begin
                                 sNovoNumeroPedido    := StrZero(SequenciadorPRC(DataCadastros.SQLConnection1, fCodEmp ,'PED0000', 'PED_CODIGO', 0),6);
                                 uteis.aviso(Pchar('O número do pedido passou de '+StrZero(FrmPedido.EdPedidoNumero.Text,6)+' para '+sNovoNumeroPedido+ ' pois a sequência anterior já existia nessa empresa.'));
                           end;
                           DataCadastros.sqlUpdate.Close;

                           DataCadastros.sqlUpdate.Close;
                           DataCadastros.SqlUpdate.sql.text :='UPDATE PED0000 SET  PED_CODIGO = '+QuotedStr(sNovoNumeroPedido)+', EMP_CODIGO = '+QuotedStr(EdCodigoEmpresa.Text)+' WHERE PED_CODIGO = '+QuotedStr(FrmPedido.EdPedidoNumero.Text)+ ' and EMP_CODIGO ='+QuotedStr(EdCodigoEmpresaAtual.Text) ;
                           DataCadastros.sqlUpdate.Execsql;
                           DataCadastros.sqlUpdate.Close;

                           DataCadastros.sqlUpdate.Close;
                           DataCadastros.SqlUpdate.sql.text :='UPDATE PED_IT01 SET  PED_CODIGO = '+QuotedStr(sNovoNumeroPedido)+', EMP_CODIGO = '+QuotedStr(EdCodigoEmpresa.Text)+' WHERE PED_CODIGO = '+QuotedStr(FrmPedido.EdPedidoNumero.Text)+' and EMP_CODIGO ='+QuotedStr(EdCodigoEmpresaAtual.Text) ;
                           DataCadastros.sqlUpdate.Execsql;
                           DataCadastros.sqlUpdate.Close;
                     end;

                     //Verifica se havera alteração no kardex
                     if (AtualizaEstoque(EdPedidoNovoNumero.Text, EdCodigoEmpresa.Text) <> AtualizaEstoque(EdPedidoAtualNumero.Text,EdCodigoEmpresaAtual.Text)) then
                     begin
                           //Aqui verificamos se adiciona ou retira material do estoque
                           FrmPedido.SqlCdsPedidoItem.DisableControls;
                           FrmPedido.SqlCdsPedidoItem.First;
                           while (not FrmPedido.SqlCdsPedidoItem.Eof) do
                           begin
                                 prd_codigo := frmPedido.SqlCdsPedidoItemPRD_CODIGO.AsString;
                                 if not ProdutoAtualizaEstoque(frmPedido.SqlCdsPedidoItemPRD_REFER.AsString , prd_codigo) then
                                 begin
                                   FrmPedido.SqlCdsPedidoItem.Next;
                                   Continue;
                                 end;
                                 if FrmPedido.SqlCdsPedidoItemPRF_PRODUTO_AGREGADO.AsString = 'S' then
                                 begin

                                     dQtdekit:=
                                     BuscaUmDadoSqlAsInteger('SELECT PRF_QTDE FROM PED_IT01 co  '+
                                                             ' WHERE PED_CODIGO = '+QuotedStr(FrmPedido.EdPedidoNumero.Text)+
                                                             ' and prf_registro = '+ IntToStr(FrmPedido.SqlCdsPedidoItemprf_registro_vinculado.AsInteger))


                                 end
                                 else
                                    dQtdekit := 1;

                                 rSaldoAtual := KardexRetornaSaldo( dbInicio.RetornaRegistroTabela('PRD0000', 'PRD_CODIGO', 'PRD_REFER = '+QuotedStr(FrmPedido.SqlCdsPedidoItemPRD_REFER.AsString)), FrmPedido.SqlCdsPedidoItemAMX_CODIGO_DESTINO.AsString,'');
                                 If rSaldoAtual <0 then //banco com erro não pode estar negativo
                                  rSaldoAtual :=0; //então não tem saldo para tirar
                                // é kit e não controla o estoque pelo kit então pula a checagem, vai para os proximos (que deve ser os itens)
                                if not DBInicio.Empresa.wPMT_CONTROLA_KIT  and (FrmPedido.SqlCdsPedidoItem.FieldByName('pti_sigla').AsString = 'KT') then // controla estoque pelo kit , não pelos itens
                                 begin
                                   FrmPedido.SqlCdsPedidoItem.Next;
                                   Continue;
                                 end;


                                gerenciaLote := BuscaUmDadoSqlAsString('SELECT PRD_GERENCIA_LOTE FROM PRD0000 WHERE prd_codigo =  '+ QuotedStr(FrmPedido.SqlCdsPedidoItemPRD_CODIGO.AsString)) = 'S';
                                opvSemLote := BuscaUmDadoSqlAsString('SELECT OPV_SEMLOTE FROM OPV0000 WHERE OPV_CODIGO =  '+ QuotedStr(cbNovoTipo.IdRetorno)) = 'N';
                                if (FrmPedido.SqlCdsPedidoItemPRDL_REGISTRO.AsInteger = 0) and gerenciaLote and opvSemLote Then
                                   rSaldoAtual := 0;

                                 //ATUALIZOU DE ORÇAMENTO PARA VENDA que MOVIMENTA ESTOQUE
                                 bAtualizaEstoque := AtualizaEstoque(EdPedidoNovoNumero.Text,EdCodigoEmpresa.Text)
                                                     OR AtualizaEstoque(EdPedidoAtualNumero.Text,EdCodigoEmpresa.Text)
                                                     OR ((FrmPedido.SqlCdsPedidoItemPRDL_REGISTRO.AsString = '')
                                                      AND (BuscaUmDadoSqlAsString('SELECT OPV_SEMLOTE FROM OPV0000 WHERE OPV_CODIGO =  '+ QuotedStr(cbNovoTipo.IdRetorno)) = 'S') )
                                                      ;
                                 if (bAtualizaEstoque) then
                                 begin
                                       quantidade := FrmPedido.SqlCdsPedidoItemPRF_QTDE.AsCurrency;
                                       CalculoEstoquePendente(true,'I','1','1',qQuantidadeAnterior,quantidade,qPendenteAnterior,qPendenteNova,qpreciso,rSaldoAtual,dQtdekit, dQtdeEstoque, stipoKardesES );
                                       if         AtualizaEstoque(EdPedidoAtualNumero.Text,EdCodigoEmpresa.Text)
                                          AND not AtualizaEstoque(EdPedidoNovoNumero.Text,EdCodigoEmpresa.Text)
                                       then
                                         stipoKardesES := 'E';


                                       if  (BuscaUmDadoSqlAsString('SELECT OPV_ESTOQUE_REMESSAINDUS FROM opv0000 o WHERE opv_codigo = ' + EdPedidoNovoNumero.Text) = 'S')
                                       and (BuscaUmDadoSqlAsString('SELECT OPV_VENDA FROM opv0000 o WHERE opv_codigo = ' + EdPedidoNovoNumero.Text) = 'N')
                                       then
                                         sAlmoxarifadoCNPJ := RetirarMascaraCNPJ_INSC(FrmPedido.EdCnpj.Text)
                                       else
                                         sAlmoxarifadoCNPJ := RetirarMascaraCNPJ_INSC(DBInicio.Empresa.CNPJ_CNPF);

                                       if (dQtdeEstoque>0 )  then
                                       begin


                                             KardexLancamento(FrmPedido.SqlCdsPedidoItemPRF_REGISTRO.AsString,
                                                              'PED',
                                                              FrmPedido.SqlCdsPedidoItemAMX_CODIGO_DESTINO.AsString,
                                                              '',
                                                              dbInicio.RetornaRegistroTabela('PRD0000', 'PRD_CODIGO', 'PRD_REFER = '+QuotedStr(FrmPedido.SqlCdsPedidoItemPRD_REFER.AsString)),
                                                              FrmPedido.SqlCdsPedidoItemPRG_REGISTRO.AsString,
                                                              '',
                                                              stipoKardesES,
                                                              '',
                                                              FrmPedido.SqlCdsPedidoItemPRDL_REGISTRO.AsString,
                                                              'ALTERAÇÃO DE TIPO DO PEDIDO PARA '+CbNovoTipo.Text + ' - EMPENHADO PELO PEDIDO',
                                                              Now,
                                                              dQtdeEstoque,
                                                              sNovoNumeroPedido,
                                                              FrmPedido.edCliente.CdS.FieldByName('CLI_CODIGO').AsString+'-'+FrmPedido.edCliente.CdS.FieldByName('CLI_RAZAO').AsString,
                                                              FrmPedido.SqlCdsPedidoItemPRF_PRECO.AsFloat,
                                                              FrmPedido.edCliente.idRetorno, //CLI_CODIGO
                                                              '',  //FOR_CODIGO
                                                              '', // COL_CODIGO
                                                              '' // REFERENCIA

                                                              );
                                             if (BuscaUmDadoSqlAsString('SELECT OPV_BAIXAR_ESTOQUE_PELO_FAT FROM OPV0000 WHERE OPV_CODIGO = ' + QuotedStr(EdPedidoNovoNumero.Text)) = 'S' )
                                             or (
                                                     (BuscaUmDadoSqlAsString('SELECT OPV_ESTOQUE_REMESSAINDUS FROM opv0000 o WHERE opv_codigo = ' + EdPedidoNovoNumero.Text) = 'S')
                                                 and (BuscaUmDadoSqlAsString('SELECT OPV_VENDA FROM opv0000 o WHERE opv_codigo = ' + EdPedidoNovoNumero.Text) = 'N')
                                                 )
                                             then
                                             begin

                                               KardexLancamento(FrmPedido.SqlCdsPedidoItemPRF_REGISTRO.AsString,
                                                              'PED',
                                                              BuscaUmDadoSqlAsString('SELECT AMX_CODIGO FROM ALMOX0000 WHERE  AMX_CNPJ_PART = '+QuotedStr(sAlmoxarifadoCNPJ)),
                                                              '',
                                                              dbInicio.RetornaRegistroTabela('PRD0000', 'PRD_CODIGO', 'PRD_REFER = '+QuotedStr(FrmPedido.SqlCdsPedidoItemPRD_REFER.AsString)),
                                                              FrmPedido.SqlCdsPedidoItemPRG_REGISTRO.AsString,
                                                              '',
                                                              'E',
                                                              '',
                                                              FrmPedido.SqlCdsPedidoItemPRDL_REGISTRO.AsString,
                                                              'ALTERAÇÃO DE TIPO DO PEDIDO PARA '+CbNovoTipo.Text + ' - MOVIMENTADO PELO PEDIDO',
                                                              Now,
                                                              dQtdeEstoque,
                                                              sNovoNumeroPedido,
                                                              FrmPedido.edCliente.CdS.FieldByName('CLI_CODIGO').AsString+'-'+FrmPedido.edCliente.CdS.FieldByName('CLI_RAZAO').AsString,
                                                              FrmPedido.SqlCdsPedidoItemPRF_PRECO.AsFloat,
                                                              FrmPedido.edCliente.idRetorno, //CLI_CODIGO
                                                              '',  //FOR_CODIGO
                                                              '', // COL_CODIGO
                                                              '' // REFERENCIA

                                                              );



                                             end;


                                       end;


                                 end
                                 else // Saida DE ESTOQUE
                                 begin
                                    qPendenteNova := frmPedido.SqlCdsPedidoItemprf_qtdePend.AsCurrency;


                                    if qPendenteNova <>  (frmPedido.SqlCdsPedidoItemPRF_QTDE.AsFloat*dQtdekit)  then
                                    begin
                                      KardexLancamento(FrmPedido.SqlCdsPedidoItemPRF_REGISTRO.AsString,
                                                          'PED',
                                                          FrmPedido.SqlCdsPedidoItemAMX_CODIGO_DESTINO.AsString,
                                                          '',
                                                          prd_codigo,
                                                          FrmPedido.SqlCdsPedidoItemPRG_REGISTRO.AsString,
                                                          '',
                                                          'E',
                                                          '',
                                                          FrmPedido.SqlCdsPedidoItemPRDL_REGISTRO.AsString,
                                                          'ALTERAÇÃO DE TIPO DO PEDIDO PARA '+CbNovoTipo.Text+ ' - EMPENHADO PELO PEDIDO',
                                                          Now,
                                                          (frmPedido.SqlCdsPedidoItemPRF_QTDE.AsFloat*dQtdekit)-qPendenteNova,
                                                          sNovoNumeroPedido,
                                                          FrmPedido.edCliente.CdS.FieldByName('CLI_CODIGO').AsString+'-'+FrmPedido.edCliente.CdS.FieldByName('CLI_RAZAO').AsString,
                                                          FrmPedido.SqlCdsPedidoItemPRF_PRECO.AsFloat);

                                      if  (BuscaUmDadoSqlAsString('SELECT OPV_VENDA FROM opv0000 o WHERE opv_codigo = ' + EdPedidoNovoNumero.Text) = 'S')
                                      then
                                        sAlmoxarifadoCNPJ := RetirarMascaraCNPJ_INSC(DBInicio.Empresa.CNPJ_CNPF)
                                      else
                                      if  (    (BuscaUmDadoSqlAsString('SELECT OPV_ESTOQUE_REMESSAINDUS FROM opv0000 o WHERE opv_codigo = ' + EdPedidoAtualNumero.Text) = 'S')
                                           or  (BuscaUmDadoSqlAsString('SELECT OPV_ESTOQUE_REMESSAINDUS FROM opv0000 o WHERE opv_codigo = ' + EdPedidoNovoNumero.Text) = 'S')
                                          )
                                         and (BuscaUmDadoSqlAsString('SELECT OPV_VENDA FROM opv0000 o WHERE opv_codigo = ' + EdPedidoAtualNumero.Text) = 'N')
                                         and (BuscaUmDadoSqlAsString('SELECT AMX_DESCRI FROM ALMOX0000 WHERE AMX_CNPJ_PART = ' + QuotedStr(RetirarMascaraCNPJ_INSC(FrmPedido.EdCnpj.Text))) <> '')
                                      then
                                        sAlmoxarifadoCNPJ := RetirarMascaraCNPJ_INSC(FrmPedido.EdCnpj.Text)
                                      else
                                        sAlmoxarifadoCNPJ := RetirarMascaraCNPJ_INSC(DBInicio.Empresa.CNPJ_CNPF);

                                      if (BuscaUmDadoSqlAsString('SELECT OPV_BAIXAR_ESTOQUE_PELO_FAT FROM OPV0000 WHERE OPV_CODIGO = ' + QuotedStr(EdPedidoNovoNumero.Text)) <> 'S')
                                      or (BuscaUmDadoSqlAsString('SELECT OPV_ESTOQUE_REMESSAINDUS FROM opv0000 o WHERE opv_codigo = ' + EdPedidoAtualNumero.Text) = 'S')
                                      then
                                        KardexLancamento(FrmPedido.SqlCdsPedidoItemPRF_REGISTRO.AsString,
                                                          'PED',
                                                          BuscaUmDadoSqlAsString('SELECT AMX_CODIGO FROM ALMOX0000 WHERE  AMX_CNPJ_PART = '+QuotedStr(sAlmoxarifadoCNPJ)),
                                                          '',
                                                          prd_codigo,
                                                          FrmPedido.SqlCdsPedidoItemPRG_REGISTRO.AsString,
                                                          '',
                                                          'S',
                                                          '',
                                                          FrmPedido.SqlCdsPedidoItemPRDL_REGISTRO.AsString,
                                                          'ALTERAÇÃO DE TIPO DO PEDIDO PARA '+CbNovoTipo.Text+ ' - EMPENHADO PELO PEDIDO',
                                                          Now,
                                                          (frmPedido.SqlCdsPedidoItemPRF_QTDE.AsFloat*dQtdekit)-qPendenteNova,
                                                          sNovoNumeroPedido,
                                                          FrmPedido.edCliente.CdS.FieldByName('CLI_CODIGO').AsString+'-'+FrmPedido.edCliente.CdS.FieldByName('CLI_RAZAO').AsString,
                                                          FrmPedido.SqlCdsPedidoItemPRF_PRECO.AsFloat);

                                    end;
                                    qPendenteNova := 0 ;

                                 end;
                                 if FrmPedido.SqlCdsPedidoItemPRF_PRAZO_ENTREGA.AsString = '' Then
                                   PRF_PRAZO_ENTREGA := 'null'
                                 else
                                   PRF_PRAZO_ENTREGA := DateToSql(strtodate(FrmPedido.SqlCdsPedidoItemPRF_PRAZO_ENTREGA.AsString)); // data de entrega

                                GravarPedidoItem(FrmPedido.SqlCdsPedidoItemID_DIRETIVAS.AsInteger,
                                 FrmPedido.SqlCdsPedidoItemPRD_UND.AsString,
                                 sNovoNumeroPedido,
                                 prd_codigo,
                                 FrmPedido.SqlCdsPedidoItemPRD_REFER.AsString,
                                 FrmPedido.SqlCdsPedidoItemPRDCO_CODIGO_ORIGINAL.AsString,
                                 FrmPedido.SqlCdsPedidoItemDESCRICAO.AsString,
                                 FrmPedido.SqlCdsPedidoItemAMX_CODIGO_DESTINO.AsString,
                                 FrmPedido.SqlCdsPedidoItemPRF_COMPL_DESCRI.AsString,
                                 FrmPedido.SqlCdsPedidoItemPRF_B2B_PEDIDO_COMPRA.AsString,
                                 frmpedido.SqlCdsPedidoItemPRF_TABPRECO.AsString,
                                 FrmPedido.SqlCdsPedidoItemUsou_Verba.AsString,
                                 True,
                                 iif(FrmPedido.SqlCdsPedidoItemPRF_PRODUTO_AGREGADO.AsString = 'S',True, False),
                                 FrmPedido.SqlCdsPedidoItemPRF_QTDE.AsFloat, // quantidade
                                 FrmPedido.SqlCdsPedidoItemPRF_QTDE.AsFloat, // quantidade
                                 FrmPedido.SqlCdsPedidoItemPRF_QTDEFAT.AsFloat,
                                 FrmPedido.SqlCdsPedidoItemPRF_PRECO.AsFloat,
                                 FrmPedido.SqlCdsPedidoItemPRF_PRECO_BRUTO.AsFloat,
                                 FrmPedido.SqlCdsPedidoItemPRF_CUSTO.AsFloat,
                                 FrmPedido.SqlCdsPedidoItemPRF_MARGEM_PRODUTO.AsFloat, // margem produto
                                 FrmPedido.SqlCdsPedidoItemPRF_ACRESCIMO.AsFloat,
                                 FrmPedido.SqlCdsPedidoItemPRF_IDESCTO1.AsFloat,
                                 FrmPedido.SqlCdsPedidoItemPRF_IDESCTO2.AsFloat,
                                 FrmPedido.SqlCdsPedidoItemPRF_ITEMCOMIS.AsFloat,
                                 FrmPedido.SqlCdsPedidoItemPRF_IPIALIQ.AsFloat,
                                 FrmPedido.SqlCdsPedidoItemPRF_VALOR_ST.AsFloat,
                                 FrmPedido.SqlCdsPedidoItemPRF_ICMSALIQ.AsFloat,
                                 FrmPedido.SqlCdsPedidoItemPRF_VALOR_ICMS.AsFloat,
                                 FrmPedido.SqlCdsPedidoItemVALOR_VERBA.AsFloat,
                                 FrmPedido.SqlCdsPedidoItemPRF_REGISTRO.AsInteger,
                                 0,
                                 FrmPedido.SqlCdsPedidoItemPRDL_REGISTRO.AsInteger,
                                 FrmPedido.SqlCdsPedidoItemPRG_REGISTRO.AsInteger,
                                 FrmPedido.SqlCdsPedidoItemPRF_B2B_ITEM_PEDIDO_COMPRA.AsInteger,
                                 FrmPedido.SqlCdsPedidoItemprf_registro_vinculado.AsInteger,
                                 FrmPedido.SqlCdsPedidoItemPRDD_REGISTRO.AsInteger,   //DIRECTIVA
                                 // iif(FrmPedido.SqlCdsPedidoItemPRF_PRAZO_ENTREGA.AsString = '', 'null', DateToSql(strtodate(FrmPedido.SqlCdsPedidoItemPRF_PRAZO_ENTREGA.AsString))), // data de entrega
                                 PRF_PRAZO_ENTREGA,
                                 InttoStr(FrmPedido.SqlCdsPedidoItemPRF_PRAZO_DIAS.AsInteger), // prazo
                                 FrmPedido.SqlCdsPedidoItemPRF_PESOKG.AsFloat,
                                 qPendenteNova,
                                 iif(FrmPedido.SqlCdsPedidoItemPRF_PRODUTO_SEMVALOR.AsString= 'S',true, false)
                                  )  ;
                                 //Proximo
                                 FrmPedido.SqlCdsPedidoItem.Next;
                           end;
                         FrmPedido.SqlCdsPedidoItem.First;
                         if  not DBInicio.Empresa.wPMT_CONTROLA_KIT  then
                         begin
                           while not FrmPedido.SqlCdsPedidoItem.Eof do
                           begin
                             if (FrmPedido.SqlCdsPedidoItem.FieldByName('pti_sigla').AsString = 'KT') then
                             begin
                               // if (FrmPedido.SqlCdsTipoPedidoOPV_ATESTOQUE.AsString = 'S') and (FrmPedido.SqlCdsPedidoItem.FieldByName('pti_sigla').AsString = 'KT') and (DBInicio.Empresa.wPMT_CONTROLA_KIT) then
                               // begin
                               //  kardexSaldo := BuscaUmDadoSqlAsFloat('SELECT AMX_SALDO_RET FROM pCd_kardex_saldo(' + DBInicio.Emp_Codigo +  ', ' + QuotedStr(cbReferencia.CdS.fieldByName('PRD_CODIGO').AsString) + ',' + QuotedStr(EdAlmoxarifadoCodigo.Text) + ' ) ');
                               //   if kardexSaldo < FrmPedido.SqlCdsPedidoItem.FieldByName('pti_sigla').AsFloat then
                               //     ExecSQL('update PED_IT01 set PRF_QTDEPEND  = '+FloatToSQL(CurQuantidade.Value-kardexSaldo) +' , PRF_DTPENDENCIA = CURRENT_TIMESTAMP ' + 'where PRF_REGISTRO =  '+ IntToStr(iRegistroItem) );
                               // end;
                                KitsCompletos(DBInicio.Empresa.wPMT_CONTROLA_KIT, FrmPedido.SqlCdsPedidoItem.FieldByName('prf_registro').AsInteger);
                             end;
                             FrmPedido.SqlCdsPedidoItem.Next;
                           end;

                         end;


                         FrmPedido.SqlCdsPedidoItem.EnableControls;
                     end;

                     //Altera Tipo do Pedido
                     DataCadastros.sqlUpdate.Close;
                     DataCadastros.SqlUpdate.sql.text :='UPDATE PED0000 SET OPV_CODIGO = '+EdPedidoNovoNumero.Text+' WHERE PED_CODIGO = '+QuotedStr(sNovoNumeroPedido)+ ' and EMP_CODIGO ='+QuotedStr(EdCodigoEmpresa.Text) ;
                     DataCadastros.sqlUpdate.Execsql;
                     DataCadastros.sqlUpdate.Close;

                     //aTUALIZA sTATUS aTUALIZA eSTOQUE

                     DataCadastros.sqlUpdate.Close;
                     DataCadastros.SqlUpdate.sql.text :='UPDATE PED_IT01 SET PRF_FLAG_ATUALIZA_ESTOQUE = '+QuotedStr(iif(AtualizaEstoqueGeral(EdPedidoNovoNumero.Text),'S','N'))+' WHERE PED_CODIGO = '+QuotedStr(sNovoNumeroPedido)+ ' and EMP_CODIGO ='+QuotedStr(EdCodigoEmpresa.Text) ;
                     DataCadastros.sqlUpdate.Execsql;
                     DataCadastros.sqlUpdate.Close;


                     dDataPedidoAtual := FrmPedido.SqlCdsPedidoPED_DTENTRADA.AsDateTime;
                     dDataPedidoAlteracao := Date;
                     if ((dDataPedidoAtual <> dDataPedidoAlteracao)and(bAlteraDataPedidoPeloTipo)) then
                        begin
                           //if (uteis.confirmacao ( 'A data do pedido é inferior a data atual, gostaria de atualizar ')=mrYes) then
                           //   begin
                                 DataCadastros.sqlUpdate.Close;
                                 DataCadastros.SqlUpdate.sql.text :='UPDATE PED0000 SET PED_DTENTRADA = '+QuotedStr(DataAmericana(DateToStr(dDataPedidoAlteracao)))+', PED_DTSAIDA = '+QuotedStr(DataAmericana(DateToStr(dDataPedidoAlteracao + FrmPedido.EdOrsDiaEntrega.AsInteger)))+'  WHERE PED_CODIGO = '+QuotedStr(sNovoNumeroPedido)+ ' and EMP_CODIGO ='+QuotedStr(PreenchezeroEsquerda(EdCodigoEmpresa.Text,3)) ;
                                 DataCadastros.sqlUpdate.Execsql;
                                 DataCadastros.sqlUpdate.Close;
                           //   end;
                        end;
                     if (EdCodigoEmpresaAtual.Text <> EdCodigoEmpresa.Text) then
                        FrmPedido.EdPedidoNumero.Clear;
                     Close;
                  end;
            end;
      end;
end;

function TFrmPedidoTipo.AtualizaEstoque(const sCodido, sEmpresa: String): Boolean;
 var
     SQLParametros: TSQLClientDataSet;
begin
   Result := False;
   if (sCodido <> '') then
      begin
         DataCadastros.sqlUpdate.Close;
         DataCadastros.SqlUpdate.sql.text :='SELECT T1.opv_atestoque FROM opv0000 T1 WHERE T1.opv_codigo = '+QuotedStr(sCodido);
         DataCadastros.sqlUpdate.Open;

         if (EdCodigoEmpresaAtual.Text <> EdCodigoEmpresa.Text) then
         begin
             SQLParametros              := TSQLClientDataSet.Create(Nil);
             SQLParametros.DBConnection := DataCadastros.SQLConnection1;
             SQLParametros.Close;
             SQLParametros.CommandText  := 'select * from PRMT0001 where EMP_CODIGO = '''+sEmpresa +'''';
             SQLParametros.Open;
             FreeAndNil(SQLParametros);
         end;

         if (not DataCadastros.sqlUpdate.IsEmpty) and (dbInicio.GetParametroSistema('PMT_ATULIZA_ESTOQUE') = 'P') then
            Result := DataCadastros.sqlUpdate.FieldByName('opv_atestoque').AsString = 'S';

         DataCadastros.sqlUpdate.Close;

      end;
end;

procedure TFrmPedidoTipo.EdPedidoAtualNumeroChange(Sender: tObject);
begin
   AtualizaLabel;
end;

procedure TFrmPedidoTipo.EdPedidoNovoNumeroChange(Sender: tObject);
begin
   EdPedidoNovoNumero.Text := ExtrairNumeros(EdPedidoNovoNumero.Text);
   AtualizaLabel;
end;

procedure TFrmPedidoTipo.AtualizaLabel;
var at, an: boolean ;
begin
   at := AtualizaEstoque(EdPedidoAtualNumero.Text,EdCodigoEmpresaAtual.Text) ; //'true se Movimenta Estoque'
   an := AtualizaEstoque(EdPedidoNovoNumero.Text,EdCodigoEmpresaAtual.Text) ; // 'trye se Movimenta Estoque'

end;

procedure TFrmPedidoTipo.CalculaPerda;
var
   rSaldoAtual:Real;
   dQtde: double;
begin
  CdsVendaPerdida.EmptyDataSet;
  if (AtualizaEstoque(EdPedidoNovoNumero.Text,EdCodigoEmpresa.Text) <> AtualizaEstoque(EdPedidoAtualNumero.Text,EdCodigoEmpresaAtual.Text)) then
  begin
    //Aki verificamos se adiciona ou retira material do entoque
    FrmPedido.SqlCdsPedidoItem.DisableControls;
    FrmPedido.SqlCdsPedidoItem.First;
    while (not FrmPedido.SqlCdsPedidoItem.Eof) do
    begin
       // é kit e não controla o estoque pelo kit então pula a checagem, vai para os proximos (que deve ser os itens)
       if not DBInicio.Empresa.wPMT_CONTROLA_KIT  and (FrmPedido.SqlCdsPedidoItem.FieldByName('pti_sigla').AsString = 'KT') then // controla estoque pelo kit , não pelos itens
       begin
        FrmPedido.SqlCdsPedidoItem.Next;
        continue;
       end;
       dQtde:=1;
       //se for um item do kit
       if (FrmPedido.SqlCdsPedidoItem.FieldByName('PRF_PRODUTO_AGREGADO').AsString = 'S') then
       begin
          if not DBInicio.Empresa.wPMT_CONTROLA_KIT then //controla o kit pelos itens
          begin
           OpenAux( ' SELECT ROUND(PRF_QTDE) as PRF_QTDE FROM PED_IT01 it2 WHERE it2.PRF_REGISTRO = '+ IntToStr(FrmPedido.SqlCdsPedidoItem.FieldByName('PRF_REGISTRO_VINCULADO').AsInteger) );
           dQtde:= qAux.FieldByName('PRF_QTDE').AsFloat;
          end
          else
          begin
            FrmPedido.SqlCdsPedidoItem.Next;
            continue;
          end;

       end;
       //Pega Saldo Atual
       rSaldoAtual := KardexRetornaSaldo(dbInicio.RetornaRegistroTabela('PRD0000', 'PRD_CODIGO', 'PRD_REFER = '+QuotedStr(FrmPedido.SqlCdsPedidoItemPRD_REFER.AsString)), FrmPedido.SqlCdsPedidoItemAMX_CODIGO_DESTINO.AsString,'');
       //Entrada
       if (AtualizaEstoque(EdPedidoNovoNumero.Text,EdCodigoEmpresa.Text)) then
       begin
         //Verifica se existe saldo Caso nao tenha lançar na venda perdida
         //item do kit depente de quantos kits são pedidos, encontrado em dqtde
         if (rSaldoAtual >= (FrmPedido.SqlCdsPedidoItemPRF_QTDE.AsFloat*dQtde)) then
         begin
           FrmPedido.SqlCdsPedidoItem.Next ;
           continue
         end
         else
         begin
             //Somente para nao lançar um numero absurdo para o venda perdida
             if (rSaldoAtual < 0) then
                rSaldoAtual := 0;
             //Lança Venda Perdida
             if ProdutoAtualizaEstoque(FrmPedido.SqlCdsPedidoItemPRD_REFER.AsString,FrmPedido.SqlCdsPedidoItemPRD_CODIGO.AsString) then
             begin
               CdsVendaPerdida.Append;
               CdsVendaPerdidaReferencia.AsString := FrmPedido.SqlCdsPedidoItemPRD_REFER.AsString;
               CdsVendaPerdidaDescricao.AsString := FrmPedido.SqlCdsPedidoItemPRD_DESCRI.AsString + ' ['+ FloatToStr(dQtde)+ ' kit] ';
               CdsVendaPerdidaQtdeSolicitada.AsFloat := FrmPedido.SqlCdsPedidoItemPRF_QTDE.AsFloat*dQtde;
               CdsVendaPerdidaQtdeEstoque.AsFloat := rSaldoAtual;
               CdsVendaPerdidaQtdePerda.AsFloat := CdsVendaPerdidaQtdeSolicitada.AsFloat - CdsVendaPerdidaQtdeEstoque.AsFloat;
               CdsVendaPerdida.Post;
             end;
         end;
       end;

      //Proximo
      FrmPedido.SqlCdsPedidoItem.Next;
    end;
    FrmPedido.SqlCdsPedidoItem.First;
    FrmPedido.SqlCdsPedidoItem.EnableControls;
  end;
end;

procedure TFrmPedidoTipo.DbGradePerdaDrawColumnCell(Sender: tObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
    if (not CdsVendaPerdida.IsEmpty) then
       if not (GdSelected in State) then
          begin
              if (CdsVendaPerdidaQtdeSolicitada.AsFloat = CdsVendaPerdidaQtdePerda.AsFloat) then
                 DbGradePerda.Canvas.Font.Color := clRed
              else
                 DbGradePerda.Canvas.Font.Color := clBlue;
              DbGradePerda.Canvas.FillRect(rect);
              DbGradePerda.DefaultDrawDataCell(Rect,column.Field,state);
          end;
end;

procedure TFrmPedidoTipo.EdCodigoEmpresaExit(Sender: tObject);
begin
   EdCodigoEmpresa.Text := PreenchezeroEsquerda(EdCodigoEmpresa.Text,3);
   if (EdCodigoEmpresa.Text = '000') then
      begin
         EdCodigoEmpresa.Clear;
         CbEmpresa.Text := '';
      end
   else
      begin
         CbEmpresa.TextoLocalizar := EdCodigoEmpresa.Text;
         CbEmpresa.Localizar := True;
         if (CbEmpresa.Localizado) then
            begin

            end
         else
            begin
               uteis.aviso('Empresa não localizada com o código informado');
               CbEmpresa.Text := '';
               EdCodigoEmpresa.SetFocus;
            end;
      end;
end;

procedure TFrmPedidoTipo.CbEmpresaExit(Sender: tObject);
begin
   if (CbEmpresa.CodigoLista = '') or (CbEmpresa.Text = '') then
      begin
         CbEmpresa.Text := '';
         EdCodigoEmpresa.Text := '';
      end
   else
      begin
         EdCodigoEmpresa.Text := CbEmpresa.CodigoLista;
      end;
end;

procedure TFrmPedidoTipo.CbEmpresaChange(Sender: tObject);
begin
   EdCodigoEmpresa.Text := CbEmpresa.CodigoLista;
end;

function TFrmPedidoTipo.AtualizaEstoqueGeral(const sCodido: String): Boolean;
begin
   Result := False;
   if (sCodido <> '') then
      begin
         DataCadastros.sqlUpdate.Close;
         DataCadastros.SqlUpdate.sql.text :='SELECT T1.opv_atestoque FROM opv0000 T1 WHERE T1.opv_codigo = '+QuotedStr(sCodido);
         DataCadastros.sqlUpdate.Open;
         Result := DataCadastros.sqlUpdate.FieldByName('opv_atestoque').AsString = 'S';
         DataCadastros.sqlUpdate.Close;
      end;
end;

function TFrmPedidoTipo.LiberaConversaoReferenciaProvisoria(const sCodido:string): Boolean;
begin
   Result := True;
   FrmPedido.SqlCdsPedidoItem.DisableControls;
   FrmPedido.SqlCdsPedidoItem.First;

   DataCadastros.sqlUpdate.Close;
   DataCadastros.SqlUpdate.sql.text :='SELECT T1.OPV_ORCAMENTO FROM opv0000 T1 WHERE T1.opv_codigo = '+QuotedStr(sCodido);
   DataCadastros.sqlUpdate.Open;

   if (DataCadastros.sqlUpdate.FieldByName('OPV_ORCAMENTO').AsString <> 'S') then
      begin
         while (not FrmPedido.SqlCdsPedidoItem.Eof) do
            begin
               if (FrmPedido.SqlCdsPedidoItemPRD_REFER.AsString = sReferenciaProvisoriaOrcamento) then
                  begin
                     Result := False;
                     Exit;
                  end;
               FrmPedido.SqlCdsPedidoItem.Next;
            end;
         FrmPedido.SqlCdsPedidoItem.First;
         FrmPedido.SqlCdsPedidoItem.EnableControls;
      end;

   DataCadastros.sqlUpdate.Close;
end;

function TFrmPedidoTipo.ProdutoAtualizaEstoque(const sprd_refer, sprd_Codido: string): Boolean;
var
  sql :string;
begin

  sql := 'SELECT pt.PTI_ATUALIZAR_ESTOQUE ' +
         ' FROM PRD0000 p ' +
         ' JOIN PRD_TIPO pt ON pt.PTI_CODIGO = p.PTI_CODIGO ' ;
  if sprd_Codido = '' then
    sql:= sql + ' WHERE prd_refer = ' +QuotedStr(sprd_refer) + ConcatSe('and ',DBInicio.ExclusivoSql('PRODUTOS'))
  else
    sql := sql + ' WHERE prd_codigo = '+QuotedStr(sprd_Codido);
  OpenAux2(sql);
  result:=  (qAux2.FieldByName('PTI_ATUALIZAR_ESTOQUE').AsString = 'S');

end;

end.
