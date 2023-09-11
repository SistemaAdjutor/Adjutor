unit PRD0011;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Provider, SqlExpr,SqlClientDataSet, ComCtrls, StdCtrls, DB, DBClient,
  Buttons, ExtCtrls, Mask,  rxToolEdit,  rxCurrEdit, DBLocal, DBLocalS, Gauges,
  Data.DBXFirebird, SimpleDS;

type
  TFrmSincronizarSaldo = class(TForm)
    SqlCdsKardex: TSQLClientDataSet;
    SqlCdsSaldo: TSQLClientDataSet;
    SqlCdsSaldoPRD_REFER: TStringField;
    GroupProcesso: TGroupBox;
    PanProgress: TPanel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Edt_Ref: TEdit;
    Label2: TLabel;
    Edt_Desc: TEdit;
    Label3: TLabel;
    Edt_Data: TEdit;
    Label4: TLabel;
    Curr_Saldo_Acerto: TCurrencyEdit;
    Grp_Variacao: TGroupBox;
    Curr_Var1_Acerto: TCurrencyEdit;
    Curr_Var2_Acerto: TCurrencyEdit;
    Curr_Var3_Acerto: TCurrencyEdit;
    Curr_Var4_Acerto: TCurrencyEdit;
    Curr_Var5_Acerto: TCurrencyEdit;
    Curr_Var6_Acerto: TCurrencyEdit;
    Curr_Var7_Acerto: TCurrencyEdit;
    Curr_Var8_Acerto: TCurrencyEdit;
    Edt_Var1: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    Edt_Var2: TEdit;
    Edt_Var3: TEdit;
    Edt_Var4: TEdit;
    Edt_Var5: TEdit;
    Edt_Var6: TEdit;
    Edt_Var7: TEdit;
    Edt_Var8: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    SqlReservar: TSQLClientDataSet;
    Label9: TLabel;
    SqlSaldoAcerto: TSQLClientDataSet;
    SqlSaldoAcertoPES_REGISTRO: TIntegerField;
    SqlSaldoAcertoPRD_REFER: TStringField;
    SqlSaldoAcertoPRD_DESCRI: TStringField;
    SqlSaldoAcertoPRD_DCVAR1: TStringField;
    SqlSaldoAcertoPRD_DCVAR2: TStringField;
    SqlSaldoAcertoPRD_DCVAR3: TStringField;
    SqlSaldoAcertoPRD_DCVAR4: TStringField;
    SqlSaldoAcertoPRD_DCVAR5: TStringField;
    SqlSaldoAcertoPRD_DCVAR6: TStringField;
    SqlSaldoAcertoPRD_DCVAR7: TStringField;
    SqlSaldoAcertoPRD_DCVAR8: TStringField;
    SqlSaldoAcertoPES_DATA: TSQLTimeStampField;
    SqlSaldoAcertoPES_QTDE: TFMTBCdField;
    SqlSaldoAcertoPES_VAR1: TFMTBCdField;
    SqlSaldoAcertoPES_VAR2: TFMTBCdField;
    SqlSaldoAcertoPES_VAR3: TFMTBCdField;
    SqlSaldoAcertoPES_VAR4: TFMTBCdField;
    SqlSaldoAcertoPES_VAR5: TFMTBCdField;
    SqlSaldoAcertoPES_VAR6: TFMTBCdField;
    SqlSaldoAcertoPES_VAR7: TFMTBCdField;
    SqlSaldoAcertoPES_VAR8: TFMTBCdField;
    Edt_Data_Atual: TEdit;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    SqlVendas: TSQLClientDataSet;
    Lbl_Processo: TLabel;
    SqlCdsX: TSQLClientDataSet;
    SqlVendasNF_NOTANUMBER: TStringField;
    SqlVendasCLI_CODIGO: TStringField;
    SqlVendasNF_EMISSAO: TDateField;
    SqlVendasNF_HORASAIDA: TTimeField;
    SqlVendasCLI_RAZAO: TStringField;
    SqlVendasNF_REGISTRO: TIntegerField;
    SqlVendasNF_IT_NOTANUMER: TStringField;
    SqlVendasPRD_REFER: TStringField;
    SqlVendasPED_CODIGO: TStringField;
    SqlVendasNF_QTDE: TFMTBCdField;
    SqlVendasNF_PRECO: TFMTBCdField;
    SqlVendasNF_IPIALIQ: TFMTBCdField;
    SqlVendasIPI_CODIGO: TStringField;
    SqlVendasNF_VLSUBST: TFMTBCdField;
    SqlVendasNF_IDESCTO1: TFMTBCdField;
    SqlVendasNF_IDESCTO2: TFMTBCdField;
    SqlVendasPRD_DESCRI: TStringField;
    SqlVendasEMP_CODIGO: TStringField;
    SqlVendasNF_ICMSALIQ: TFMTBCdField;
    SqlVendasNF_PMATPRIMA: TFMTBCdField;
    SqlVendasNF_COMISSAO: TFMTBCdField;
    SqlVendasNF_QTDE_VAR1: TFMTBCdField;
    SqlVendasNF_QTDE_VAR2: TFMTBCdField;
    SqlVendasNF_QTDE_VAR3: TFMTBCdField;
    SqlVendasNF_QTDE_VAR4: TFMTBCdField;
    SqlVendasNF_QTDE_VAR5: TFMTBCdField;
    SqlVendasNF_QTDE_VAR6: TFMTBCdField;
    SqlVendasNF_QTDE_VAR7: TFMTBCdField;
    SqlVendasNF_QTDE_VAR8: TFMTBCdField;
    SqlVendasNF_FLAG_ATUALIZA_ESTOQUE: TStringField;
    SqlVendasNF_PRODUTO_AGREGADO: TStringField;
    SqlSaldoAcertoPES_HORA: TTimeField;
    Label18: TLabel;
    Edt_hora: TEdit;
    SqlCdsItensNF: TSQLClientDataSet;
    SqlCdsItensNFPRD_REFER: TStringField;
    SQL_ITENS: TSQLClientDataSet;
    SQL_KARDEX_ITENS: TSQLClientDataSet;
    SQL_ITENSPRD_CODIGO: TStringField;
    SQL_ITENSPRD_REFER: TStringField;
    SQL_KARDEX_ITENSPES_REGISTRO: TIntegerField;
    SQL_KARDEX_ITENSPRD_REFER: TStringField;
    SQL_KARDEX_ITENSPES_TIPO: TStringField;
    SQL_KARDEX_ITENSPES_QTDE: TFMTBCdField;
    SQL_KARDEX_ITENSPES_NUMDOC: TStringField;
    SQL_KARDEX_ITENSPES_TIPDOC: TStringField;
    SQL_KARDEX_ITENSPES_DATA: TSQLTimeStampField;
    SQL_KARDEX_ITENSEMP_CODIGO: TStringField;
    SQL_KARDEX_ITENSPES_ORIGEM: TStringField;
    SQL_KARDEX_ITENSPES_VALOR: TFMTBCdField;
    SQL_KARDEX_ITENSPES_VAR1: TFMTBCdField;
    SQL_KARDEX_ITENSPES_VAR2: TFMTBCdField;
    SQL_KARDEX_ITENSPES_VAR3: TFMTBCdField;
    SQL_KARDEX_ITENSPES_VAR4: TFMTBCdField;
    SQL_KARDEX_ITENSPES_VAR5: TFMTBCdField;
    SQL_KARDEX_ITENSPES_VAR6: TFMTBCdField;
    SQL_KARDEX_ITENSPES_VAR7: TFMTBCdField;
    SQL_KARDEX_ITENSPES_VAR8: TFMTBCdField;
    SQL_KARDEX_ITENSFOR_CODIGO: TStringField;
    SQL_KARDEX_ITENSPES_IPI: TFMTBCdField;
    SQL_KARDEX_ITENSPES_FLAG_ACERTO: TStringField;
    SQL_KARDEX_ITENSPES_FLAG_CONTA: TStringField;
    SQL_KARDEX_ITENSPES_HORA: TTimeField;
    SQL_KARDEX_ITENSPES_KARDEX_TIPO: TStringField;
    SQL_KARDEX_ITENSPES_KARDEX_OBS: TStringField;
    SQL_KARDEX_ITENSPED_CODIGO: TStringField;
    SQL_TOT: TSQLClientDataSet;
    SQL_KARDEX_ITENSPRD_RESERVA: TFMTBCdField;
    SQL_ES: TSQLClientDataSet;
    SQL_ESPES_TIPO: TStringField;
    SQL_ESV1: TFMTBCdField;
    SQL_ESV2: TFMTBCdField;
    SQL_ESV3: TFMTBCdField;
    SQL_ESV4: TFMTBCdField;
    SQL_ESV5: TFMTBCdField;
    SQL_ESV6: TFMTBCdField;
    SQL_ESV7: TFMTBCdField;
    SQL_ESV8: TFMTBCdField;
    SQL_TOTSUM: TFMTBCdField;
    Image1: TImage;
    Label19: TLabel;
    Label20: TLabel;
    SQLProdutosRecalcular: TSQLClientDataSet;
    SQLProdutosRecalcularPRD_REFER: TStringField;
    CdsUpdate: TSQLClientDataSet;
    PrBar: TGauge;
    Cb_Entradas: TCheckBox;
    Cb_saidas: TCheckBox;
    Cb_Reserva: TCheckBox;
    CdsUpdate1: TSQLClientDataSet;
    CdsUpdate2: TSQLClientDataSet;
    BitConfirmar: TBitBtn;
    BitSair: TBitBtn;
    GroupBox2: TGroupBox;
    Label21: TLabel;
    EditDataI: TDateEdit;
    SQL_KARDEX_ITENSAMX_CODIGO: TStringField;
    SqlVendasAMX_CODIGO: TStringField;
    procedure BitConfirmarClick(Sender: tObject);
    procedure BitSairClick(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure Cb_EntradasClick(Sender: tObject);
    procedure Cb_saidasClick(Sender: tObject);
    procedure Cb_ReservaClick(Sender: tObject);
    procedure EditDataIExit(Sender: tObject);
    procedure FormCreate(Sender: tObject);
  private
    wVariacoes:string;
    sAlmox,
    sObs_Kardex : String;

    procedure Muda_Flag_Conta_Estoque(sRefer,sData,sHora:String);
    procedure Busca_Ultimo_acerto(pRefer:String);
    procedure Somar_Saldo(pData,pRefer:String);
    procedure Limpar_Objetos;
    procedure Lanca_movimento_kardex;
    procedure Atualiza_Reserva_do_Almoxarifado(sAlmox,sRefer,sQtde,sQtde_Var1,sQtde_Var2,sQtde_Var3,sQtde_Var4,sQtde_Var5,sQtde_Var6,sQtde_Var7,sQtde_Var8:String);
    function  Verifica_Lancamento_kardex(sNumNota,sNumPedido,sNumAlmox,sProduto:String):Boolean;
    procedure Atualiza_Cliente_Produto(sNumNota,sNumPedido,sNumAlmox,sProduto:String);
    //
    procedure RecalculaEstoque;
    procedure AdicionaKardex(sReferencia,
                             sTipoES,
                             sQuantidade,
                             sNumeroDoc,
                             sTipoDoc,
                             sData,
                             sHora,
                             sOrigem,
                             sValor,
                             sVar1,
                             sVar2,
                             sVar3,
                             sVar4,
                             sVar5,
                             sVar6,
                             sVar7,
                             sVar8,
                             sIpi,
                             sFlagAcerto,
                             sFlagConta,
                             sKardexTipo,
                             sCodPedido,
                             sAlmox,
                             sObs:
                             String
                             );


  public
    { Public declarations }
    dData_Ultimo_Acerto,
    WCODIGOPRODUTOEXTERNO : String;
    cSaldo_Ultimo_Acerto,
    cSaldo_Var1_Ultimo_Acerto,
    cSaldo_Var2_Ultimo_Acerto,
    cSaldo_Var3_Ultimo_Acerto,
    cSaldo_Var4_Ultimo_Acerto,
    cSaldo_Var5_Ultimo_Acerto,
    cSaldo_Var6_Ultimo_Acerto,
    cSaldo_Var7_Ultimo_Acerto,
    cSaldo_Var8_Ultimo_Acerto,
    cQtde_E_Var1,
    cQtde_E_Var2,
    cQtde_E_Var3,
    cQtde_E_Var4,
    cQtde_E_Var5,
    cQtde_E_Var6,
    cQtde_E_Var7,
    cQtde_E_Var8,

    cQtde_S_Var1,
    cQtde_S_Var2,
    cQtde_S_Var3,
    cQtde_S_Var4,
    cQtde_S_Var5,
    cQtde_S_Var6,
    cQtde_S_Var7,
    cQtde_S_Var8 : Currency;
  end;

var
  FrmSincronizarSaldo: TFrmSincronizarSaldo;

implementation

uses Uteis, DataCad, RWFunc, Men0001, iniciodb;

{$R *.dfm}





procedure TFrmSincronizarSaldo.BitConfirmarClick(Sender: tObject);
begin
   if (uteis.confirmacao  ( 'Confirma o recalculo de todo o Estoque?')=mrYes) then
      begin
      uteis.aviso('ATENÇÃO : Certifique que a Data de sincronização esta correta.');
      if (uteis.confirmacao  ( 'Deseja confirmar o processo ?')=mrYes) then
          RecalculaEstoque;

      end;
end;

procedure TFrmSincronizarSaldo.BitSairClick(Sender: tObject);
begin
    Close;
end;

procedure TFrmSincronizarSaldo.Busca_Ultimo_acerto(pRefer: String);
begin
    try
      {ZERA AS VARIAVEIS}
      if (pRefer = 'TESTE') then
         pRefer := pRefer;

      cSaldo_Var1_Ultimo_Acerto :=0;
      cSaldo_Var2_Ultimo_Acerto :=0;
      cSaldo_Var3_Ultimo_Acerto :=0;
      cSaldo_Var4_Ultimo_Acerto :=0;
      cSaldo_Var5_Ultimo_Acerto :=0;
      cSaldo_Var6_Ultimo_Acerto :=0;
      cSaldo_Var7_Ultimo_Acerto :=0;
      cSaldo_Var8_Ultimo_Acerto :=0;
      //
      Application.ProcessMessages;
      //
      {Busca Lancamento de Acerto de Entrada}
      wSQL1      := 'SELECT E1.PES_REGISTRO,E1.PRD_REFER,P1.PRD_DESCRI,P1.PRD_DCVAR1,P1.PRD_DCVAR2,P1.PRD_DCVAR3,P1.PRD_DCVAR4,';
      wSQL2      := 'P1.PRD_DCVAR5,P1.PRD_DCVAR6,P1.PRD_DCVAR7,P1.PRD_DCVAR8,E1.PES_DATA,E1.PES_HORA,E1.PES_QTDE,E1.PES_VAR1,E1.PES_VAR2,';
      wSQL3      := 'E1.PES_VAR3,E1.PES_VAR4,E1.PES_VAR5,E1.PES_VAR6,E1.PES_VAR7,E1.PES_VAR8 from PRD_ENSA E1 LEFT JOIN PRD0000 P1 ON (P1.PRD_REFER = E1.PRD_REFER) ';
      wSeleciona := 'WHERE E1.PES_TIPDOC = ''AC'' AND E1.PES_TIPO = ''E'' AND E1.PRD_REFER = '''+pRefer+'''';
      wOrdem     := 'E1.PES_DATA DESC ';
      //
      SqlSaldoAcerto.Close;
      SqlSaldoAcerto.CommandText := SQLDEF('PRODUTOS',wSql1+wSql2+wSql3,wSeleciona,wOrdem,'E1.');
      SqlSaldoAcerto.Open;
      //
      if (not SqlSaldoAcerto.IsEmpty) then
         begin
            Edt_Ref.Text            := pRefer;
            Edt_Desc.Text           := SqlSaldoAcerto.FieldByName('PRD_DESCRI').AsString;
            Edt_Data.Text           := SqlSaldoAcerto.FieldByName('PES_DATA').AsString;
            Edt_Hora.Text           := SqlSaldoAcerto.FieldByName('PES_HORA').AsString;
            Curr_Saldo_Acerto.Value := SqlSaldoAcerto.FieldByName('PES_QTDE').AsCurrency;
            if (wVariacoes = 'S') then
               begin
                  Edt_Var1.Text             := SqlSaldoAcerto.FieldByName('PRD_DCVAR1').AsString;
                  Curr_Var1_Acerto.Value    := SqlSaldoAcerto.FieldByName('PES_VAR1').AsCurrency;
                  cSaldo_Var1_Ultimo_Acerto := SqlSaldoAcerto.FieldByName('PES_VAR1').AsCurrency;
                  //
                  Edt_Var2.Text             := SqlSaldoAcerto.FieldByName('PRD_DCVAR2').AsString;
                  Curr_Var2_Acerto.Value    := SqlSaldoAcerto.FieldByName('PES_VAR2').AsCurrency;
                  cSaldo_Var2_Ultimo_Acerto := SqlSaldoAcerto.FieldByName('PES_VAR2').AsCurrency;
                  //
                  Edt_Var3.Text             := SqlSaldoAcerto.FieldByName('PRD_DCVAR3').AsString;
                  Curr_Var3_Acerto.Value    := SqlSaldoAcerto.FieldByName('PES_VAR3').AsCurrency;
                  cSaldo_Var3_Ultimo_Acerto := SqlSaldoAcerto.FieldByName('PES_VAR3').AsCurrency;
                  //
                  Edt_Var4.Text             := SqlSaldoAcerto.FieldByName('PRD_DCVAR4').AsString;
                  Curr_Var4_Acerto.Value    := SqlSaldoAcerto.FieldByName('PES_VAR4').AsCurrency;
                  cSaldo_Var4_Ultimo_Acerto := SqlSaldoAcerto.FieldByName('PES_VAR4').AsCurrency;
                  //
                  Edt_Var5.Text             := SqlSaldoAcerto.FieldByName('PRD_DCVAR5').AsString;
                  Curr_Var5_Acerto.Value    := SqlSaldoAcerto.FieldByName('PES_VAR5').AsCurrency;
                  cSaldo_Var5_Ultimo_Acerto := SqlSaldoAcerto.FieldByName('PES_VAR5').AsCurrency;
                  //
                  Edt_Var6.Text             := SqlSaldoAcerto.FieldByName('PRD_DCVAR6').AsString;
                  Curr_Var6_Acerto.Value    := SqlSaldoAcerto.FieldByName('PES_VAR6').AsCurrency;
                  cSaldo_Var6_Ultimo_Acerto := SqlSaldoAcerto.FieldByName('PES_VAR6').AsCurrency;
                  //
                  Edt_Var7.Text             := SqlSaldoAcerto.FieldByName('PRD_DCVAR7').AsString;
                  Curr_Var7_Acerto.Value    := SqlSaldoAcerto.FieldByName('PES_VAR7').AsCurrency;
                  cSaldo_Var7_Ultimo_Acerto := SqlSaldoAcerto.FieldByName('PES_VAR7').AsCurrency;
                  //
                  Edt_Var8.Text             := SqlSaldoAcerto.FieldByName('PRD_DCVAR8').AsString;
                  Curr_Var8_Acerto.Value    := SqlSaldoAcerto.FieldByName('PES_VAR8').AsCurrency;
                  cSaldo_Var8_Ultimo_Acerto := SqlSaldoAcerto.FieldByName('PES_VAR8').AsCurrency;
               end;
         end
      else
         begin
            {Nao achou nada referente ao ultimo acerto.
             Entao vamos pegar pelo primeiro lançamento}
            wSQL1      := 'SELECT E1.PES_REGISTRO,E1.PRD_REFER,P1.PRD_DESCRI,P1.PRD_DCVAR1,P1.PRD_DCVAR2,P1.PRD_DCVAR3,P1.PRD_DCVAR4,';
            wSQL2      := 'P1.PRD_DCVAR5,P1.PRD_DCVAR6,P1.PRD_DCVAR7,P1.PRD_DCVAR8,E1.PES_DATA,E1.PES_HORA,E1.PES_QTDE,E1.PES_VAR1,E1.PES_VAR2,';
            wSQL3      := 'E1.PES_VAR3,E1.PES_VAR4,E1.PES_VAR5,E1.PES_VAR6,E1.PES_VAR7,E1.PES_VAR8 from PRD_ENSA E1 LEFT JOIN PRD0000 P1 ON (P1.PRD_REFER = E1.PRD_REFER) ';
//            wSeleciona := 'WHERE E1.PRD_REFER = '''+pRefer+''' AND E1.PES_TIPO = ''E''';
            wSeleciona := 'WHERE E1.PRD_REFER = '''+pRefer+'''';
            wOrdem     := 'E1.PES_DATA';
            //
            SqlSaldoAcerto.Close;
            SqlSaldoAcerto.CommandText := SQLDEF('PRODUTOS',wSql1+wSql2+wSql3,wSeleciona,wOrdem,'E1.');
            SqlSaldoAcerto.Open;
            if (not SqlSaldoAcerto.IsEmpty) then
               begin
                  if (not SqlSaldoAcerto.FieldByName('PES_HORA').IsNull) then
                     Edt_Hora.Text := SqlSaldoAcerto.FieldByName('PES_HORA').AsString
                  else
                     Edt_Hora.Text := TimeToStr(Now);
                  //
                  if (not SqlSaldoAcerto.FieldByName('PES_DATA').IsNull) then
                     Edt_Data.Text := SqlSaldoAcerto.FieldByName('PES_DATA').AsString
                  else
                     Edt_Data.Text := DateToStr(date);
               end
            else
               begin
                  Edt_Data.Text     := DateToStr(date);
                  Edt_Hora.Text     := TimeToStr(Now);
               end;
            Edt_Ref.Text            := pRefer;
            Edt_Desc.Text           := SqlSaldoAcerto.FieldByName('PRD_DESCRI').AsString;
            Curr_Saldo_Acerto.Value := 0;
            if (wVariacoes = 'S') then
               begin
                   cSaldo_Var1_Ultimo_Acerto :=0;
                   cSaldo_Var2_Ultimo_Acerto :=0;
                   cSaldo_Var3_Ultimo_Acerto :=0;
                   cSaldo_Var4_Ultimo_Acerto :=0;
                   cSaldo_Var5_Ultimo_Acerto :=0;
                   cSaldo_Var6_Ultimo_Acerto :=0;
                   cSaldo_Var7_Ultimo_Acerto :=0;
                   cSaldo_Var8_Ultimo_Acerto :=0;
                   //
                   Edt_Var1.Text             := SqlSaldoAcerto.FieldByName('PRD_DCVAR1').AsString;
                   Curr_Var1_Acerto.Value    := 0;
                   //
                   Edt_Var2.Text             := SqlSaldoAcerto.FieldByName('PRD_DCVAR2').AsString;
                   Curr_Var2_Acerto.Value    := 0;
                   //
                   Edt_Var3.Text             := SqlSaldoAcerto.FieldByName('PRD_DCVAR3').AsString;
                   Curr_Var3_Acerto.Value    := 0;
                   //
                   Edt_Var4.Text             := SqlSaldoAcerto.FieldByName('PRD_DCVAR4').AsString;
                   Curr_Var4_Acerto.Value    := 0;
                   //
                   Edt_Var5.Text             := SqlSaldoAcerto.FieldByName('PRD_DCVAR5').AsString;
                   Curr_Var5_Acerto.Value    := 0;
                   //
                   Edt_Var6.Text             := SqlSaldoAcerto.FieldByName('PRD_DCVAR6').AsString;
                   Curr_Var6_Acerto.Value    := 0;
                   //
                   Edt_Var7.Text             := SqlSaldoAcerto.FieldByName('PRD_DCVAR7').AsString;
                   Curr_Var7_Acerto.Value    := 0;
                   //
                   Edt_Var8.Text             := SqlSaldoAcerto.FieldByName('PRD_DCVAR8').AsString;
                   Curr_Var8_Acerto.Value    := 0;
               end;
         end;
    except
      on E:EDataBaseError do
        begin
           uteis.erro  (pchar('Erro ao localizar o último acerto !'+#13#10+
                      'Mensagem erro : '+e.message));
        end;
    end;
end;

procedure TFrmSincronizarSaldo.Somar_Saldo(pData, pRefer: String);
begin
    try
      wSQL1      := 'Select E1.PRD_REFER,E1.PES_TIPO,E1.PES_DATA,E1.PES_HORA,E1.PES_FLAG_CONTA,E1.PES_QTDE,E1.PES_VAR1,E1.PES_VAR2,E1.PES_VAR3,E1.PES_VAR4,E1.PES_VAR5,E1.PES_VAR6,E1.PES_VAR7,E1.PES_VAR8 from PRD_ENSA E1 ';
      wSeleciona := 'where E1.PES_DATA BETWEEN '''+DataAmericana(pData)+''' AND '''+DataAmericana(Edt_Data_Atual.Text)+''' AND (not E1.pes_tipdoc = ''AC'') and E1.PRD_REFER = '''+pRefer+''' AND E1.PES_FLAG_CONTA = ''S''';
      wOrdem     := 'E1.PES_DATA,E1.PES_HORA,E1.PES_TIPO';
      DataCadastros.SqlUpdate.Close;
      DataCadastros.SqlUpdate.sql.text :=SQLDEF('PRODUTOS',wSQL1,wSeleciona,wOrdem,'E1.');
      DataCadastros.SqlUpdate.Open;
      if (not DataCadastros.SqlUpdate.IsEmpty) then
         begin
            while not DataCadastros.SqlUpdate.eof do
             begin
                 DataCadastros.SqlUpdate.Next;
             end;
         end;


      wSeleciona := 'where (K1.PES_DATA BETWEEN '''+DataAmericana(pData)+''' AND '''+DataAmericana(Edt_Data_Atual.Text)+''') AND (NOT K1.PES_TIPDOC = ''AC'') AND (K1.PRD_REFER = '''+pRefer+''')';
    except
     on E:EDataBaseError do
       begin
           uteis.erro  (pchar('Erro ao Calcular o Saldo do Produto: '+pRefer+''+#13#10+
                      'Mensagem erro: '+e.message));
       end;
    end;
end;

procedure TFrmSincronizarSaldo.FormCreate(Sender: tObject);
begin
     wVariacoes:=DBiNICIO.GetParametroSistema('PMT_VARIACOES');
end;

procedure TFrmSincronizarSaldo.FormShow(Sender: tObject);
begin
    WCODIGOPRODUTOEXTERNO := '';
    Edt_Data_Atual.Text := DateToStr(Now);
    if (wVariacoes = 'S') then
       Grp_Variacao.Visible := True
    else
       Grp_Variacao.Visible := False;

    // sincronizar Defaut para um ano antes
    EditDataI.Date := now - 365;
    //
    FrmSincronizarSaldo.AutoSize := true;
end;

procedure TFrmSincronizarSaldo.Limpar_Objetos;
begin
    Edt_Ref.Text            := '';
    Edt_Desc.Text           := '';
//  Edt_Data.Text           := '';
//  Edt_Data_Atual.Text     := '';
    Curr_Saldo_Acerto.Value := 0;
    Edt_Var1.Text           := '';
    Edt_Var2.Text           := '';
    Edt_Var3.Text           := '';
    Edt_Var4.Text           := '';
    Edt_Var5.Text           := '';
    Edt_Var6.Text           := '';
    Edt_Var7.Text           := '';
    Edt_Var8.Text           := '';
    Curr_Var1_Acerto.Value  := 0;
    Curr_Var2_Acerto.Value  := 0;
    Curr_Var3_Acerto.Value  := 0;
    Curr_Var4_Acerto.Value  := 0;
    Curr_Var5_Acerto.Value  := 0;
    Curr_Var6_Acerto.Value  := 0;
    Curr_Var7_Acerto.Value  := 0;
    Curr_Var8_Acerto.Value  := 0;
end;

function TFrmSincronizarSaldo.Verifica_Lancamento_kardex(sNumNota,sNumPedido,sNumAlmox,
  sProduto: String): Boolean;
begin
   try
     wSQL1      := 'Select T1.* FROM PRD_ENSA T1 ';
     if (dbInicio.Empresa.wMultiAlmox = 'S') then
        begin
           wSeleciona := 'where T1.PES_NUMDOC = '''+sNumNota+
                        ''' AND T1.PED_CODIGO = '''+sNumPedido+
                        ''' AND T1.AMX_CODIGO = '''+sNumAlmox+
                        ''' AND T1.PRD_REFER = '''+sProduto+
                        ''' AND T1.PES_TIPO = ''S'' AND T1.PES_TIPDOC = ''NF''';
        end
     else
        begin
           wSeleciona := 'where T1.PES_NUMDOC = '''+sNumNota+
                         ''' AND T1.PED_CODIGO = '''+sNumPedido+
                         ''' AND T1.PRD_REFER = '''+sProduto+
                         ''' AND T1.PES_TIPO = ''S'' AND T1.PES_TIPDOC = ''NF''';
        end;
     DataCadastros.SqlUpdate.Close;
     DataCadastros.SqlUpdate.sql.text :=wSQL1+wSeleciona;
     DataCadastros.SqlUpdate.Open;
     if (not DataCadastros.SqlUpdate.IsEmpty) then
        Result := True
     else
        Result := False;
     DataCadastros.SqlUpdate.Close;
   except
     on E:EDataBaseError do
       begin
          uteis.erro  (pchar('Erro ao localizar Lançamento de Venda no Kardex !'+#13#10+
                     'Mensagem erro: '+e.Message));
       end;
   end;
end;

procedure TFrmSincronizarSaldo.Lanca_movimento_kardex;
Var
  wHora:String;
begin
   try
     wHora       := '';
     wHora       := iif(SqlVendasNF_HORASAIDA.AsString = '','06:00:00',SqlVendasNF_HORASAIDA.AsString);
     if (wVariacoes = 'S')
     and(dbInicio.Empresa.wMultiAlmox = 'S') then
        begin
           wSql1 := 'INSERT INTO PRD_ENSA ('+
                    'PRD_REFER,'+
                    'PES_TIPO,'+
                    'PES_QTDE,'+
                    'PES_NUMDOC,'+
                    'PES_TIPDOC,'+
                    'PES_DATA,'+
                    'EMP_CODIGO,'+
                    'PES_ORIGEM,'+
                    'PES_VALOR,'+
                    'PES_VAR1,'+
                    'PES_VAR2,'+
                    'PES_VAR3,'+
                    'PES_VAR4,'+
                    'PES_VAR5,'+
                    'PES_VAR6,'+
                    'PES_VAR7,'+
                    'PES_VAR8,'+
                    'AMX_CODIGO,'+
                    'PES_IPI,'+
                    'PES_FLAG_ACERTO,'+
                    'PES_FLAG_CONTA,'+
                    'PES_HORA,'+
                    'PES_KARDEX_TIPO,'+
                    'PED_CODIGO,'+
                    'PES_KARDEX_OBS)';
           wSql2 := 'Values ('''+SqlVendasPRD_REFER.AsString+''','''+
                                 'S'+''','''+
                                 ValorAmericano(SqlVendasNF_QTDE.AsString)+''','''+
                                 SqlVendasNF_IT_NOTANUMER.AsString+''','''+
                                 'NF'+''','''+
                                 DataAmericana(SqlVendasNF_EMISSAO.AsString)+''','''+
                                 SqlVendasEMP_CODIGO.AsString+''','''+
                                 'NF/FATURA'+''','''+
                                 ValorAmericano(SqlVendasNF_PRECO.AsString)+''','''+
                                 ValorAmericano(SqlVendasNF_QTDE_VAR1.AsString)+''','''+
                                 ValorAmericano(SqlVendasNF_QTDE_VAR2.AsString)+''','''+
                                 ValorAmericano(SqlVendasNF_QTDE_VAR3.AsString)+''','''+
                                 ValorAmericano(SqlVendasNF_QTDE_VAR4.AsString)+''','''+
                                 ValorAmericano(SqlVendasNF_QTDE_VAR5.AsString)+''','''+
                                 ValorAmericano(SqlVendasNF_QTDE_VAR6.AsString)+''','''+
                                 ValorAmericano(SqlVendasNF_QTDE_VAR7.AsString)+''','''+
                                 ValorAmericano(SqlVendasNF_QTDE_VAR8.AsString)+''','''+
                                 SqlVendasAMX_CODIGO.AsString+''','''+
                                 ValorAmericano(SqlVendasNF_IPIALIQ.AsString)+''','''+
                                 'N'+''','''+
                                 'S'+''','''+
                                 wHora+''','''+
                                 'F'+''','''+
                                 SqlVendasPED_CODIGO.AsString+''','''+
                                 copy(sObs_Kardex,1,40)+''')';
        end;
     if (wVariacoes = 'N')
     and(dbInicio.Empresa.wMultiAlmox = 'N') then
        begin
           wSql1 := 'INSERT INTO PRD_ENSA ('+
                    'PRD_REFER,'+
                    'PES_TIPO,'+
                    'PES_QTDE,'+
                    'PES_NUMDOC,'+
                    'PES_TIPDOC,'+
                    'PES_DATA,'+
                    'EMP_CODIGO,'+
                    'PES_ORIGEM,'+
                    'PES_VALOR,'+
                    'PES_IPI,'+
                    'PES_FLAG_ACERTO,'+
                    'PES_FLAG_CONTA,'+
                    'PES_HORA,'+
                    'PES_KARDEX_TIPO,'+
                    'PED_CODIGO,'+
                    'PES_KARDEX_OBS)';
           wSql2 := 'Values ('''+SqlVendasPRD_REFER.AsString+''','''+
                                 'S'+''','''+
                                 ValorAmericano(SqlVendasNF_QTDE.AsString)+''','''+
                                 SqlVendasNF_IT_NOTANUMER.AsString+''','''+
                                 'NF'+''','''+
                                 DataAmericana(SqlVendasNF_EMISSAO.AsString)+''','''+
                                 SqlVendasEMP_CODIGO.AsString+''','''+
                                 'NF/FATURA'+''','''+
                                 ValorAmericano(SqlVendasNF_PRECO.AsString)+''','''+
                                 ValorAmericano(SqlVendasNF_IPIALIQ.AsString)+''','''+
                                 'N'+''','''+
                                 'S'+''','''+
                                 wHora+''','''+
                                 'F'+''','''+
                                 SqlVendasPED_CODIGO.AsString+''','''+
                                 copy(sObs_Kardex,1,40)+''')';
        end;
     if (wVariacoes = 'S')
     and(dbInicio.Empresa.wMultiAlmox = 'N') then
        begin
           wSql1 := 'INSERT INTO PRD_ENSA ('+
                    'PRD_REFER,'+
                    'PES_TIPO,'+
                    'PES_QTDE,'+
                    'PES_NUMDOC,'+
                    'PES_TIPDOC,'+
                    'PES_DATA,'+
                    'EMP_CODIGO,'+
                    'PES_ORIGEM,'+
                    'PES_VALOR,'+
                    'PES_VAR1,'+
                    'PES_VAR2,'+
                    'PES_VAR3,'+
                    'PES_VAR4,'+
                    'PES_VAR5,'+
                    'PES_VAR6,'+
                    'PES_VAR7,'+
                    'PES_VAR8,'+
                    'PES_IPI,'+
                    'PES_FLAG_ACERTO,'+
                    'PES_FLAG_CONTA,'+
                    'PES_HORA,'+
                    'PES_KARDEX_TIPO,'+
                    'PED_CODIGO,'+
                    'PES_KARDEX_OBS)';
           wSql2 := 'Values ('''+SqlVendasPRD_REFER.AsString+''','''+
                                 'S'+''','''+
                                 ValorAmericano(SqlVendasNF_QTDE.AsString)+''','''+
                                 SqlVendasNF_IT_NOTANUMER.AsString+''','''+
                                 'NF'+''','''+
                                 DataAmericana(SqlVendasNF_EMISSAO.AsString)+''','''+
                                 SqlVendasEMP_CODIGO.AsString+''','''+
                                 'NF/FATURA'+''','''+
                                 ValorAmericano(SqlVendasNF_PRECO.AsString)+''','''+
                                 ValorAmericano(SqlVendasNF_QTDE_VAR1.AsString)+''','''+
                                 ValorAmericano(SqlVendasNF_QTDE_VAR2.AsString)+''','''+
                                 ValorAmericano(SqlVendasNF_QTDE_VAR3.AsString)+''','''+
                                 ValorAmericano(SqlVendasNF_QTDE_VAR4.AsString)+''','''+
                                 ValorAmericano(SqlVendasNF_QTDE_VAR5.AsString)+''','''+
                                 ValorAmericano(SqlVendasNF_QTDE_VAR6.AsString)+''','''+
                                 ValorAmericano(SqlVendasNF_QTDE_VAR7.AsString)+''','''+
                                 ValorAmericano(SqlVendasNF_QTDE_VAR8.AsString)+''','''+
                                 ValorAmericano(SqlVendasNF_IPIALIQ.AsString)+''','''+
                                 'N'+''','''+
                                 'S'+''','''+
                                 wHora+''','''+
                                 'F'+''','''+
                                 SqlVendasPED_CODIGO.AsString+''','''+
                                 copy(sObs_Kardex,1,40)+''')';
        end;
     if (wVariacoes = 'N')
     and(dbInicio.Empresa.wMultiAlmox = 'S') then
        begin
           wSql1 := 'INSERT INTO PRD_ENSA ('+
                    'PRD_REFER,'+
                    'PES_TIPO,'+
                    'PES_QTDE,'+
                    'PES_NUMDOC,'+
                    'PES_TIPDOC,'+
                    'PES_DATA,'+
                    'EMP_CODIGO,'+
                    'PES_ORIGEM,'+
                    'PES_VALOR,'+
                    'AMX_CODIGO,'+
                    'PES_IPI,'+
                    'PES_FLAG_ACERTO,'+
                    'PES_FLAG_CONTA,'+
                    'PES_HORA,'+
                    'PES_KARDEX_TIPO,'+
                    'PED_CODIGO,'+
                    'PES_KARDEX_OBS)';
           wSql2 := 'Values ('''+SqlVendasPRD_REFER.AsString+''','''+
                                 'S'+''','''+
                                 ValorAmericano(SqlVendasNF_QTDE.AsString)+''','''+
                                 SqlVendasNF_IT_NOTANUMER.AsString+''','''+
                                 'NF'+''','''+
                                 DataAmericana(SqlVendasNF_EMISSAO.AsString)+''','''+
                                 SqlVendasEMP_CODIGO.AsString+''','''+
                                 'NF/FATURA'+''','''+
                                 ValorAmericano(SqlVendasNF_PRECO.AsString)+''','''+
                                 SqlVendasAMX_CODIGO.AsString+''','''+
                                 ValorAmericano(SqlVendasNF_IPIALIQ.AsString)+''','''+
                                 'N'+''','''+
                                 'S'+''','''+
                                 wHora+''','''+
                                 'F'+''','''+
                                 SqlVendasPED_CODIGO.AsString+''','''+
                                 copy(sObs_Kardex,1,40)+''')';
        end;
     //
     DataCadastros.SqlUpdate.Close;
     DataCadastros.SqlUpdate.sql.text :=wSql1 + wSql2;
     DataCadastros.SqlUpdate.Execsql;
   except
     on E:EDataBaseError do
       begin
          uteis.erro  (pchar('Erro ao Inserir Lançamento no Kardex !'+#13#10+
                     'Mensagem erro: '+e.message));
       end;
   end;
end;

procedure TFrmSincronizarSaldo.Muda_Flag_Conta_Estoque(sRefer,sData,sHora: String);
begin
    try
      DataCadastros.SqlUpdate.Close;
      DataCadastros.SqlUpdate.sql.text :='UPDATE PRD_ENSA SET PES_FLAG_CONTA = ''N'' WHERE PRD_REFER = '''+sRefer+''' AND PES_DATA <'''+sData+'''';// AND PES_HORA < '''+sHora+'''';
      DataCadastros.SqlUpdate.Execsql;
    except
      on E:EDataBaseError do
        begin
           uteis.erro  (pchar('Impossível atualizar flag !'+#13#10+
                      'Mensagem erro : '+e.message));
        end;
    end;
end;

procedure TFrmSincronizarSaldo.Atualiza_Reserva_do_Almoxarifado(sAlmox,sRefer,sQtde,sQtde_Var1,sQtde_Var2,sQtde_Var3,sQtde_Var4,sQtde_Var5,sQtde_Var6,sQtde_Var7,sQtde_Var8:String);
begin
   try
     if (wVariacoes = 'S') then
        begin
           wSql1:= 'Update PRD_RESERVA_ALMOX SET PRA_QTDE_RESERVA = (PRA_QTDE_RESERVA + '+sQtde+'),'+
                                                'PRA_QTDE_RESERVA_VAR1 = (PRA_QTDE_RESERVA_VAR1 + '+sQtde_Var1+'),'+
                                                'PRA_QTDE_RESERVA_VAR2 = (PRA_QTDE_RESERVA_VAR2 + '+sQtde_Var2+'),'+
                                                'PRA_QTDE_RESERVA_VAR3 = (PRA_QTDE_RESERVA_VAR3 + '+sQtde_Var3+'),'+
                                                'PRA_QTDE_RESERVA_VAR4 = (PRA_QTDE_RESERVA_VAR4 + '+sQtde_Var4+'),'+
                                                'PRA_QTDE_RESERVA_VAR5 = (PRA_QTDE_RESERVA_VAR5 + '+sQtde_Var5+'),'+
                                                'PRA_QTDE_RESERVA_VAR6 = (PRA_QTDE_RESERVA_VAR6 + '+sQtde_Var6+'),'+
                                                'PRA_QTDE_RESERVA_VAR7 = (PRA_QTDE_RESERVA_VAR7 + '+sQtde_Var7+'),'+
                                                'PRA_QTDE_RESERVA_VAR8 = (PRA_QTDE_RESERVA_VAR8 + '+sQtde_Var8+')';
        end
     else
        begin
           wSql1:= 'Update PRD_RESERVA_ALMOX SET PRA_QTDE_RESERVA = (PRA_QTDE_RESERVA + '+sQtde+')';
        end;
     wSeleciona := 'WHERE AMX_CODIGO = '''+sAlmox+''' AND PRD_REFER = '''+sRefer+'''';
     //
     DataCadastros.SqlUpdate.Close;
     DataCadastros.SqlUpdate.sql.text :=SQLDEF('PRODUTOS',wSql1,wSeleciona,'','');
     DataCadastros.SqlUpdate.Execsql;

   except
     on E:EDataBaseError do
       begin
          uteis.erro  (pchar('Erro ao atualizar a Reserva do Produto no Almoxarifado !'+#13#10+
                     'Mensagem erro: '+e.message));
       end;
   end;
end;

procedure TFrmSincronizarSaldo.Atualiza_Cliente_Produto(sNumNota,
  sNumPedido, sNumAlmox, sProduto: String);
begin
   try
     wSql1 := 'Update PRD_ENSA T1 SET T1.PES_KARDEX_OBS = '''+copy(sObs_Kardex,1,40)+'''';
     if (dbInicio.Empresa.wMultiAlmox = 'S') then
        begin
           wSeleciona := ' where T1.PES_NUMDOC = '''+sNumNota+
                        ''' AND T1.PED_CODIGO = '''+sNumPedido+
                        ''' AND T1.AMX_CODIGO = '''+sNumAlmox+
                        ''' AND T1.PRD_REFER = '''+sProduto+
                        ''' AND T1.PES_TIPO = ''S'' AND T1.PES_TIPDOC = ''NF''';
        end
     else
        begin
           wSeleciona := ' where T1.PES_NUMDOC = '''+sNumNota+
                         ''' AND T1.PED_CODIGO = '''+sNumPedido+
                         ''' AND T1.PRD_REFER = '''+sProduto+
                         ''' AND T1.PES_TIPO = ''S'' AND T1.PES_TIPDOC = ''NF''';
        end;
     DataCadastros.SqlUpdate.Close;
     DataCadastros.SqlUpdate.sql.text :=wSQL1+wSeleciona;
     DataCadastros.SqlUpdate.Execsql;
     //
   except
    on E:EDataBaseError do
      begin
         uteis.erro  (pchar('Erro ao atualizar o item no Kardex !'+#13#10+
                    'Mensagem erro: '+e.Message));
      end;
   end;
end;

procedure TFrmSincronizarSaldo.RecalculaEstoque;
   var
      rReserva,
      rSaldo_QtdeEntrada,
      rSaldo_QtdeSaida,
      rSaldo_Var1,
      rSaldo_Var2,
      rSaldo_Var3,
      rSaldo_Var4,
      rSaldo_Var5,
      rSaldo_Var6,
      rSaldo_Var7,
      rSaldo_Var8:Real;
begin
   BitConfirmar.Enabled := False;
   BitSair.Enabled      := False;
   try
      {Inicia Cursor Processo}
      Screen.Cursor := crHourGlass;

      {Inicia Transação}

      Lbl_Processo.Caption  := 'Processo Iniciado Aguarde ...';
      //---------------------------------------------------------------------------
      {1 Listar Produtos}
      SQLProdutosRecalcular.Close;
      SQLProdutosRecalcular.CommandText := 'SELECT '
                                          +'T1.PRD_REFER '
                                          +'FROM '
                                          +'PRD0000 T1 '
                                          +'ORDER BY '
                                          +'T1.PRD_REFER ';
      SQLProdutosRecalcular.Open;
      {campos de auxilio}
      PrBar.MaxValue      := SQLProdutosRecalcular.RecordCount;
      PrBar.Progress := 0;
      while (not SQLProdutosRecalcular.Eof) do
         begin
            {verifica notas de entrada}
            if (Cb_Entradas.Checked) then
               begin

               {2 Excluir Lancamentos nao manuais e nem acertos tipo AC e OP}
                  DataCadastros.SqlUpdate.Close;
                  DataCadastros.SqlUpdate.sql.text :='DELETE FROM PRD_ENSA WHERE PES_TIPDOC = ''NF'' AND PES_TIPO = ''E'' and PRD_REFER = '+RetornaNull(SQLProdutosRecalcularPRD_REFER.AsString)+' and PES_DATA >= '''+DataAmericana(EditDataI.Text)+''' or PES_DATA is null';
               //   DataCadastros.SqlUpdate.sql.text :='DELETE FROM PRD_ENSA WHERE PES_TIPDOC = ''NF'' AND PES_TIPO = ''E'' and PRD_REFER = '+RetornaNull(SQLProdutosRecalcularPRD_REFER.AsString)+'';
                  DataCadastros.SqlUpdate.Execsql;
                  {3 Lançar Entradas de Nota Fiscal}
                  wSql1      := 'Select E1.*,T2.*,T3.FOR_RAZAO  from ENF_IT01 E1 join ENF0001 T2 ON (T2.ENF_NOTANUMBER = E1.ENF_IT_NOTANUMBER AND T2.FOR_CODIGO = E1.FOR_CODIGO)';
                  wSeleciona := 'JOIN FOR0000 T3 ON (T3.FOR_CODIGO = E1.FOR_CODIGO) where E1.PRD_REFER = '''+SQLProdutosRecalcularPRD_REFER.AsString+''' and T2.ENF_ENTRADA >= '''+DataAmericana(EditDataI.Text)+'''';
                  wOrdem     := 'E1.ENF_IT_NOTANUMBER,E1.FOR_CODIGO,E1.AMX_CODIGO,E1.PRD_REFER';
                 //
                  CdsUpdate.Close;
                  CdsUpdate.commandtext := SQLDEF('PRODUTOS',wSql1,wSeleciona,wOrdem,'E1.');
                  CdsUpdate.Open;
                  //
                  while (not CdsUpdate.Eof) do
                     begin
                        AdicionaKardex(SQLProdutosRecalcularPRD_REFER.AsString,  {código do Produto}
                                       'E',      {E = Entrada S = Saída}
                                       CdsUpdate.FieldByName('ENF_QTDE').AsString,  {Quantidade}
                                       CdsUpdate.FieldByName('ENF_IT_NOTANUMBER').AsString,   {Número do Documento}
                                       'NF',     {Tipo do Documento}
                                       CdsUpdate.FieldByName('ENF_ENTRADA').AsString,        {Data da Movimentação}
                                       '',        {Hora da Movimentação}
                                       'Automatico',      {Origem do Lançamento}
                                       CdsUpdate.FieldByName('ENF_PRECO').AsString,       {Valor do Lançamento}
                                       '0',        {Variavel}
                                       '0',        {Variavel}
                                       '0',        {Variavel}
                                       '0',        {Variavel}
                                       '0',        {Variavel}
                                       '0',        {Variavel}
                                       '0',        {Variavel}
                                       '0',        {Variavel}
                                       CdsUpdate.FieldByName('ENF_IPIALIQ').AsString,         {Variavel}
                                       'N',  {Flag de Acerto}
                                       'S',   {Flag de Conta}
                                       'E',  {E = Entrada Tipo do Kardex}
                                       '0',   {Códgo do Pedido}
                                       CdsUpdate.FieldByName('AMX_CODIGO').AsString,
                                       CdsUpdate.FieldByName('FOR_CODIGO').AsString+'-'+CdsUpdate.FieldByName('FOR_RAZAO').AsString);         {Observação do Lançamento}
                        CdsUpdate.Next;
                     end;
               end;
            {verifica notas de saidas}
            if (Cb_saidas.Checked) then
               begin
                  {2 Excluir Lancamentos nao manuais e nem acertos tipo AC e OP}
                  DataCadastros.SqlUpdate.Close;
                  DataCadastros.SqlUpdate.sql.text :='DELETE FROM PRD_ENSA WHERE PES_TIPDOC = ''NF'' AND PES_TIPO = ''S'' and PRD_REFER = '+RetornaNull(SQLProdutosRecalcularPRD_REFER.AsString)+' and PES_DATA >= '''+DataAmericana(EditDataI.Text)+'''';
                  DataCadastros.SqlUpdate.Execsql;
                  {4 Lançar Saidas de Nota Fiscal}
                  wSql1      := 'SELECT T1.NF_NOTANUMBER,T1.AMX_CODIGO,T1.CLI_CODIGO,T1.NF_EMISSAO,T1.NF_HORASAIDA,T3.CLI_RAZAO, T2.* FROM NF0001 T1 ';
                  wSql2      := 'JOIN NF_IT01 T2 ON (T2.NF_IT_NOTANUMER = T1.NF_NOTANUMBER AND T1.EMP_CODIGO = T2.EMP_CODIGO AND T2.NF_FLAG_ATUALIZA_ESTOQUE = ''S'')';
                  wSql3      := 'LEFT JOIN CLI0000 T3 ON (T3.CLI_CODIGO = T1.CLI_CODIGO) JOIN OPE0000 T4 ON (T4.OPE_CODIGO = T1.OPE_CODIGO AND T4.OPE_ESTOQUE = ''S'')  ';
                  wSeleciona := 'WHERE T1.NF_CANCELADA = ''N'' AND T2.PRD_REFER = '''+SQLProdutosRecalcularPRD_REFER.AsString+''' and T1.NF_EMISSAO >= '''+DataAmericana(EditDataI.Text)+'''';
                  wOrdem     := ' ORDER BY T2.PRD_REFER, T2.PED_CODIGO ';
                  //
                  SqlVendas.Close;
                  SqlVendas.CommandText := wSQL1+wSQL2+wSQL3+wSeleciona+wOrdem;
                  SqlVendas.Open;
                  //
                  while (not SqlVendas.Eof) do
                     begin
                        AdicionaKardex(SQLProdutosRecalcularPRD_REFER.AsString,  {código do Produto}
                                       'S',      {E = Entrada S = Saída}
                                       SqlVendasNF_QTDE.AsString,  {Quantidade}
                                       SqlVendasNF_NOTANUMBER.AsString,   {Número do Documento}
                                       'NF',     {Tipo do Documento}
                                       SqlVendasNF_EMISSAO.AsString,        {Data da Movimentação}
                                       SqlVendasNF_HORASAIDA.AsString,        {Hora da Movimentação}
                                       'NF/FATURA',      {Origem do Lançamento}
                                       SqlVendasNF_PRECO.AsString,       {Valor do Lançamento}
                                       SqlVendasNF_QTDE_VAR1.AsString,        {Variavel}
                                       SqlVendasNF_QTDE_VAR2.AsString,        {Variavel}
                                       SqlVendasNF_QTDE_VAR3.AsString,        {Variavel}
                                       SqlVendasNF_QTDE_VAR4.AsString,        {Variavel}
                                       SqlVendasNF_QTDE_VAR5.AsString,        {Variavel}
                                       SqlVendasNF_QTDE_VAR6.AsString,        {Variavel}
                                       SqlVendasNF_QTDE_VAR7.AsString,        {Variavel}
                                       SqlVendasNF_QTDE_VAR8.AsString,        {Variavel}
                                       SqlVendasNF_IPIALIQ.AsString,         {Variavel}
                                       'N',  {Flag de Acerto}
                                       'S',   {Flag de Conta}
                                       'F',  {F = Faturamento Tipo do Kardex}
                                       SqlVendasPED_CODIGO.AsString,   {Códgo do Pedido}
                                       SqlVendasAMX_CODIGO.AsString, {Aumoxerifado}
                                       SqlVendasCLI_CODIGO.AsString+'-'+SqlVendasCLI_RAZAO.AsString);         {Observação do Lançamento}

                        SqlVendas.Next;
                     end;
               end;
            {5 Verificar se trabalha com reserva se trabalhar lança os pedido em aberto senão somente pela nota verificar TOTAL/PARCIAL
               RESERVA = QUANTIDADE - QTE FATURADA}

            CdsUpdate.Close;
            //CdsUpdate.sql.text := 'SELECT COALESCE(T9.PRF_QTDE - T9.PRF_QTDEFAT,0) AS RESERVA,T9.PRF_QTDE,T9.PRF_QTDEFAT FROM PED_IT01 T9 WHERE T9.PRD_REFER = '+RetornaNull(SQLProdutosRecalcularPRD_REFER.AsString)+' AND T9.PRF_FLAG_ATUALIZA_ESTOQUE = ''S''';
            CdsUpdate.commandtext := 'SELECT T9.PRD_REFER,SUM(T9.PRF_QTDE) AS RQTDE,SUM(T9.PRF_QTDEFAT) AS RQTDEFAT FROM PED_IT01 T9 WHERE T9.PRD_REFER = '+RetornaNull(SQLProdutosRecalcularPRD_REFER.AsString)+' AND T9.PRF_FLAG_ATUALIZA_ESTOQUE = ''S'' AND T9.PRF_SITUACAO <> ''T'' GROUP BY T9.PRD_REFER';

            CdsUpdate.Open;

            if (dbInicio.GetParametroSistema('PMT_ATULIZA_ESTOQUE')  = 'P') then    // atualiza estoque por Pedido
                rReserva := CdsUpdate.FieldbyName('RQTDE').AsFloat - CdsUpdate.FieldbyName('RQTDEFAT').AsFloat
            else
               rReserva := 0;

             // PROVA DE TESTES
           //  if SQLProdutosRecalcularPRD_REFER.AsString = '0219' then
           //     rReserva := CdsUpdate.FieldbyName('RQTDE').AsFloat - CdsUpdate.FieldbyName('RQTDEFAT').AsFloat;

            {5 Atualiza Lançamentos que antecedem os acertos verificar se o acerto é de almoxerifado}
            {buscar somente os lançamento de acertos = AC}
            CdsUpdate.Close;
            CdsUpdate.commandtext := 'select '
                                    +'t55.PES_DATA, '
                                    +'t55.PES_HORA, '
                                    +'t55.AMX_CODIGO '
                                    +'from  '
                                    +'PRD_ENSA t55 '
                                  //+'where t55.PES_TIPDOC = ''AC'' and t55.PRD_REFER = '+RetornaNull(SQLProdutosRecalcularPRD_REFER.AsString)
                                    +'where t55.PES_TIPDOC = ''AC'' and PES_FLAG_CONTA = ''S'' and t55.PRD_REFER = '+RetornaNull(SQLProdutosRecalcularPRD_REFER.AsString)
                                    +'order by '
                                    +'t55.PES_DATA,'
                                    +'t55.PES_HORA';



            CdsUpdate.Open;
           // colocar N nos lançamentos com Datas menores que a data do Acerto
            while (not CdsUpdate.Eof) do
               begin
                  if ((CdsUpdate.FieldByName('AMX_CODIGO').AsString = '')or(CdsUpdate.FieldByName('AMX_CODIGO').IsNull)) then
                     begin
                        {update status }
                        DataCadastros.SqlUpdate.Close;
//                        DataCadastros.SqlUpdate.sql.text :='UPDATE PRD_ENSA SET PES_FLAG_CONTA = ''N'' WHERE (((PES_DATA < '+RetornaNull(DataAmericana(CdsUpdate.FieldByName('PES_DATA').AsString))+') OR (PES_DATA = '+RetornaNull(DataAmericana(CdsUpdate.FieldByName('PES_DATA').AsString))+')) AND (PES_HORA < '+RetornaNull(IIF(CdsUpdate.FieldByName('PES_HORA').AsString = '','08:00:00',CdsUpdate.FieldByName('PES_HORA').AsString))+')) AND  PRD_REFER = '+RetornaNull(SQLProdutosRecalcularPRD_REFER.AsString)+'';
                        DataCadastros.SqlUpdate.sql.text :='UPDATE PRD_ENSA SET PES_FLAG_CONTA = ''N'' WHERE ((PES_DATA < '+RetornaNull(DataAmericana(CdsUpdate.FieldByName('PES_DATA').AsString))+') OR ((PES_DATA = '+RetornaNull(DataAmericana(CdsUpdate.FieldByName('PES_DATA').AsString))+')AND(PES_HORA < '+RetornaNull(iif(CdsUpdate.FieldByName('PES_HORA').AsString = '','08:00:00',CdsUpdate.FieldByName('PES_HORA').AsString))+'))) AND  PRD_REFER = '+RetornaNull(SQLProdutosRecalcularPRD_REFER.AsString)+'';
                        DataCadastros.SqlUpdate.Execsql;
                     end
                  else
                     begin
                        {update status }
                        DataCadastros.SqlUpdate.Close;
                        DataCadastros.SqlUpdate.sql.text :='UPDATE PRD_ENSA SET PES_FLAG_CONTA = ''N'' WHERE AMX_CODIGO = '+RetornaNull(CdsUpdate.FieldByName('AMX_CODIGO').AsString)+' AND ((PES_DATA < '+RetornaNull(DataAmericana(CdsUpdate.FieldByName('PES_DATA').AsString))+') OR ((PES_DATA = '+RetornaNull(DataAmericana(CdsUpdate.FieldByName('PES_DATA').AsString))+')AND(PES_HORA < '+RetornaNull(iif(CdsUpdate.FieldByName('PES_HORA').AsString = '','08:00:00',CdsUpdate.FieldByName('PES_HORA').AsString))+'))) AND  PRD_REFER = '+RetornaNull(SQLProdutosRecalcularPRD_REFER.AsString)+'';
                        ExportaSQLRenew(DataCadastros.SqlUpdate.SQL.text);
                        DataCadastros.SqlUpdate.Execsql;
                     end;
                  CdsUpdate.Next;
               end;
            {6 Atualizar Saldo no Cadastro do produto}
            {zera saldos}
            rSaldo_QtdeEntrada := 0;
            rSaldo_QtdeSaida   := 0;
            rSaldo_Var1        := 0;
            rSaldo_Var2        := 0;
            rSaldo_Var3        := 0;
            rSaldo_Var4        := 0;
            rSaldo_Var5        := 0;
            rSaldo_Var6        := 0;
            rSaldo_Var7        := 0;
            rSaldo_Var8        := 0;
            {lista entradas e saídas dos produtos}
            CdsUpdate1.Close;
            CdsUpdate1.commandtext := 'SELECT '
                                     +'T1.PES_TIPO,'
                                     +'SUM(T1.PES_QTDE) AS SALDO_QTDE, '
                                     +'SUM(T1.PES_VAR1) AS SALDO_VAR1, '
                                     +'SUM(T1.PES_VAR2) AS SALDO_VAR2, '
                                     +'SUM(T1.PES_VAR3) AS SALDO_VAR3, '
                                     +'SUM(T1.PES_VAR4) AS SALDO_VAR4, '
                                     +'SUM(T1.PES_VAR5) AS SALDO_VAR5, '
                                     +'SUM(T1.PES_VAR6) AS SALDO_VAR6, '
                                     +'SUM(T1.PES_VAR7) AS SALDO_VAR7, '
                                     +'SUM(T1.PES_VAR8) AS SALDO_VAR8  '
                                     +'FROM '
                                     +'PRD_ENSA T1 '
                                     +'WHERE T1.PES_FLAG_CONTA = ''S'' AND T1.PRD_REFER = '+RetornaNull(SQLProdutosRecalcularPRD_REFER.AsString)+''
                                     +'GROUP BY  '
                                     +'T1.PES_TIPO ';
            CdsUpdate1.Open;
            {refaz os saldos}
            while (not CdsUpdate1.Eof) do
               begin
//                  if (CdsUpdate1.FieldByName('PES_TIPO').AsString = 'E') or (CdsUpdate1.FieldByName('PES_TIPDOC').AsString = 'AC')then //and (Not Cb_Reserva.Checked) then
                  if (CdsUpdate1.FieldByName('PES_TIPO').AsString = 'E') and (CdsUpdate1.FieldByName('PES_TIPO').AsString <> 'B')then //and (Not Cb_Reserva.Checked) then
                     begin
                        rSaldo_QtdeEntrada := CdsUpdate1.FieldByName('SALDO_QTDE').AsFloat;
                        rSaldo_Var1        := CdsUpdate1.FieldByName('SALDO_VAR1').AsFloat;
                        rSaldo_Var2        := CdsUpdate1.FieldByName('SALDO_VAR2').AsFloat;
                        rSaldo_Var3        := CdsUpdate1.FieldByName('SALDO_VAR3').AsFloat;
                        rSaldo_Var4        := CdsUpdate1.FieldByName('SALDO_VAR4').AsFloat;
                        rSaldo_Var5        := CdsUpdate1.FieldByName('SALDO_VAR5').AsFloat;
                        rSaldo_Var6        := CdsUpdate1.FieldByName('SALDO_VAR6').AsFloat;
                        rSaldo_Var7        := CdsUpdate1.FieldByName('SALDO_VAR7').AsFloat;
                        rSaldo_Var8        := CdsUpdate1.FieldByName('SALDO_VAR8').AsFloat;
                     end
                  else
                  //if (CdsUpdate1.FieldByName('PES_TIPO').AsString = 'S') then //and (Not Cb_Reserva.Checked) then
                  if (CdsUpdate1.FieldByName('PES_TIPO').AsString = 'S')and (CdsUpdate1.FieldByName('PES_TIPO').AsString <> 'B') then //and (Not Cb_Reserva.Checked) then
                     begin
                        rSaldo_QtdeSaida := CdsUpdate1.FieldByName('SALDO_QTDE').AsFloat;
                        rSaldo_Var1      := rSaldo_Var1 - CdsUpdate1.FieldByName('SALDO_VAR1').AsFloat;
                        rSaldo_Var2      := rSaldo_Var2 - CdsUpdate1.FieldByName('SALDO_VAR2').AsFloat;
                        rSaldo_Var3      := rSaldo_Var3 - CdsUpdate1.FieldByName('SALDO_VAR3').AsFloat;
                        rSaldo_Var4      := rSaldo_Var4 - CdsUpdate1.FieldByName('SALDO_VAR4').AsFloat;
                        rSaldo_Var5      := rSaldo_Var5 - CdsUpdate1.FieldByName('SALDO_VAR5').AsFloat;
                        rSaldo_Var6      := rSaldo_Var6 - CdsUpdate1.FieldByName('SALDO_VAR6').AsFloat;
                        rSaldo_Var7      := rSaldo_Var7 - CdsUpdate1.FieldByName('SALDO_VAR7').AsFloat;
                        rSaldo_Var8      := rSaldo_Var8 - CdsUpdate1.FieldByName('SALDO_VAR8').AsFloat;
                     end;
                  CdsUpdate1.Next;
               end;
            {Atualiza Saldo do Produto}
            DataCadastros.SqlUpdate.Close;
            DataCadastros.SqlUpdate.sql.text :='UPDATE '
                                                  +'PRD0000 T1 '
                                                  +'SET '
                                                  +'T1.PRD_VAR1 = '+ValorAmericano(FloatToStr(rSaldo_Var1))+','
                                                  +'T1.PRD_VAR2 = '+ValorAmericano(FloatToStr(rSaldo_Var2))+','
                                                  +'T1.PRD_VAR3 = '+ValorAmericano(FloatToStr(rSaldo_Var3))+','
                                                  +'T1.PRD_VAR4 = '+ValorAmericano(FloatToStr(rSaldo_Var4))+','
                                                  +'T1.PRD_VAR5 = '+ValorAmericano(FloatToStr(rSaldo_Var5))+','
                                                  +'T1.PRD_VAR6 = '+ValorAmericano(FloatToStr(rSaldo_Var6))+','
                                                  +'T1.PRD_VAR7 = '+ValorAmericano(FloatToStr(rSaldo_Var7))+','
                                                  +'T1.PRD_VAR8 = '+ValorAmericano(FloatToStr(rSaldo_Var8))+','
                                                  +'T1.PRD_ENTRADA = '+ValorAmericano(FloatToStr(rSaldo_QtdeEntrada))+', '
                                                  +'T1.PRD_SAIDA = '+ValorAmericano(FloatToStr(rSaldo_QtdeSaida))+' '
                                                  //+'T1.PRD_ESTOQUE = '+ValorAmericano(FloatToStr(rSaldo_QtdeEntrada-rSaldo_QtdeSaida))+', '
                                                  +iif(Cb_Reserva.Checked, ', T1.PRD_RESERVA = '+ValorAmericano(FloatToStr(rReserva)), '')
                                                  +' WHERE T1.PRD_REFER = '+RetornaNull(SQLProdutosRecalcularPRD_REFER.AsString)+'';
            DataCadastros.SqlUpdate.Execsql;

            {atualiza formulário com as informações}
            PrBar.Progress := PrBar.Progress+1;
            Application.ProcessMessages;
            {próximo produto}
            SQLProdutosRecalcular.Next;
         end;
      //---------------------------------------------------------------------------
      Lbl_Processo.Caption  := 'Processo Finalizado!';
      uteis.aviso('Sincronização efetuada com sucesso!');
      PrBar.Progress := 0;
   finally
      {Comita Transação}

      {Ficaliza Cursor Processo}
      Screen.Cursor := crDefault;

      BitConfirmar.Enabled := True;
      BitSair.Enabled      := True;
   end;
end;

procedure TFrmSincronizarSaldo.AdicionaKardex(sReferencia,  {código do Produto}
                                              sTipoES,      {E = Entrada S = Saída}
                                              sQuantidade,  {Quantidade}
                                              sNumeroDoc,   {Número do Documento}
                                              sTipoDoc,     {Tipo do Documento}
                                              sData,        {Data da Movimentação}
                                              sHora,        {Hora da Movimentação}
                                              sOrigem,      {Origem do Lançamento}
                                              sValor,       {Valor do Lançamento}
                                              sVar1,        {Variavel}
                                              sVar2,        {Variavel}
                                              sVar3,        {Variavel}
                                              sVar4,        {Variavel}
                                              sVar5,        {Variavel}
                                              sVar6,        {Variavel}
                                              sVar7,        {Variavel}
                                              sVar8,        {Variavel}
                                              sIpi,         {Variavel}
                                              sFlagAcerto,  {Flag de Acerto}
                                              sFlagConta,   {Flag de Conta}
                                              sKardexTipo,  {Tipo do Kardex}
                                              sCodPedido,   {Códgo do Pedido}
                                              sAlmox,       {Almoxerifado}
                                              sObs:         {Observação do Lançamento}
                                              String);
begin
   wSql1 := 'INSERT INTO PRD_ENSA (PRD_REFER,'+
                                   'PES_TIPO,'+
                                   'PES_QTDE,'+
                                   'PES_NUMDOC,'+
                                   'PES_TIPDOC,'+
                                   'PES_DATA,'+
                                   'EMP_CODIGO,'+
                                   'PES_ORIGEM,'+
                                   'PES_VALOR,'+
                                   'PES_VAR1,'+
                                   'PES_VAR2,'+
                                   'PES_VAR3,'+
                                   'PES_VAR4,'+
                                   'PES_VAR5,'+
                                   'PES_VAR6,'+
                                   'PES_VAR7,'+
                                   'PES_VAR8,'+
                                   'PES_IPI,'+
                                   'PES_FLAG_ACERTO,'+
                                   'PES_FLAG_CONTA,'+
                                   'PES_HORA,'+
                                   'PES_KARDEX_TIPO,'+
                                   'PED_CODIGO,'+
                                   'AMX_CODIGO,'+
                                   'PES_KARDEX_OBS)';
   wSql2 := 'Values ('+RetornaNull(sReferencia)+','+
                     RetornaNull(sTipoES)+','+
                     RetornaNull(ValorAmericano(sQuantidade))+','+
                     RetornaNull(sNumeroDoc)+','+
                     RetornaNull(sTipoDoc)+','+
                     RetornaNull(DataAmericana(sData))+','+
                     RetornaNull(dbInicio.Empresa.EMP_CODIGO)+','+
                     RetornaNull(sOrigem)+','+
                     RetornaNull(ValorAmericano(sValor))+','+
                     RetornaNull(ValorAmericano(sVar1))+','+
                     RetornaNull(ValorAmericano(sVar2))+','+
                     RetornaNull(ValorAmericano(sVar3))+','+
                     RetornaNull(ValorAmericano(sVar4))+','+
                     RetornaNull(ValorAmericano(sVar5))+','+
                     RetornaNull(ValorAmericano(sVar6))+','+
                     RetornaNull(ValorAmericano(sVar7))+','+
                     RetornaNull(ValorAmericano(sVar8))+','+
                     RetornaNull(ValorAmericano(sIpi))+','+
                     RetornaNull(sFlagAcerto)+','+
                     RetornaNull(sFlagConta)+','+
                     RetornaNull(sHora)+','+
                     RetornaNull(sKardexTipo)+','+
                     RetornaNull(sCodPedido)+','+
                     RetornaNull(sAlmox)+','+
                     RetornaNull(copy(sObs_Kardex,1,40))+')';
   //
   DataCadastros.SqlUpdate.Close;
   DataCadastros.SqlUpdate.sql.text :=wSql1 + wSql2;

   DataCadastros.SqlUpdate.Execsql;
end;

procedure TFrmSincronizarSaldo.Cb_EntradasClick(Sender: tObject);
begin
//Cb_Reserva.Checked := False;
end;

procedure TFrmSincronizarSaldo.Cb_saidasClick(Sender: tObject);
begin
//Cb_Reserva.Checked := False;
end;

procedure TFrmSincronizarSaldo.Cb_ReservaClick(Sender: tObject);
begin
//Cb_Entradas.Checked := False;
//Cb_saidas.Checked   := False;
end;

procedure TFrmSincronizarSaldo.EditDataIExit(Sender: tObject);
begin
   if not TestaDataStr(EditDataI.Text) then
          EditDataI.setfocus;
end;

end.

