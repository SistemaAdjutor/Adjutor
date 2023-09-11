unit uContasReceberAgrupa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, ComboBoxRw, SqlExpr,SqlClientDataSet,
  Provider, DB, DBClient, Mask,  rxToolEdit,  rxCurrEdit,
  Menus, SimpleDS, SgDbSeachComboUnit, Vcl.ExtCtrls, Data.FMTBcd;

type
  TformContasReceberAgrupa = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    DBGrid1: TDBGrid;
    CbContaBanco: TComboBoxRw;
    EdContaBanco: TEdit;
    Label7: TLabel;
    Label1: TLabel;
    EdFormaPagamento: TEdit;
    CBFormaPagamento: TComboBoxRw;
    DsRecebimentos: TDataSource;
    CdSRecebimentos: TSQLClientDataSet;
    CdSRecebimentosFatura: TStringField;
    CdSRecebimentosParcela: TStringField;
    CdSRecebimentosVencimento: TDateField;
    CdSRecebimentosValor: TFloatField;
    CdSRecebimentosPendente: TFloatField;
    CdSRecebimentosCliente: TStringField;
    Sb_FormaPagamento: TSpeedButton;
    CdSRecebimentosFatRegistro: TIntegerField;
    GroupBox3: TGroupBox;
    Label10: TLabel;
    CurrTotalQuantidade: TCurrencyEdit;
    PopupMenu1: TPopupMenu;
    Descartar1: TMenuItem;
    CdSRecebimentosBanco: TStringField;
    Panel1: TPanel;
    Bit_Gravar: TBitBtn;
    Bit_Cancelar: TBitBtn;
    cbTipoDoc: TComboBox;
    Label3: TLabel;
    cbCarteira: TComboBox;
    Label4: TLabel;
    Label5: TLabel;
    cbParcela: TSgDbSearchCombo;
    edParcela: TEdit;
    qParcelamento: TSQLQuery;
    Label6: TLabel;
    cbContaFinanceira: TSgDbSearchCombo;
    edContaFinanceira: TEdit;
    qContaFinanceira: TSQLQuery;
    lblProjcx: TLabel;
    cbCentroCusto: TSgDbSearchCombo;
    edCentroCusto: TEdit;
    qCentroCusto: TSQLQuery;
    qAux2: TSQLQuery;
    qAux: TSQLQuery;
    CDSRecebimentosClienteCodigo: TStringField;
    Label8: TLabel;
    CurrTotalReceber: TCurrencyEdit;
    procedure Bit_CancelarClick(Sender: tObject);
    procedure EdContaBancoExit(Sender: tObject);
    procedure EdFormaPagamentoExit(Sender: tObject);
    procedure CbContaBancoChange(Sender: tObject);
    procedure CBFormaPagamentoChange(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure FormCreate(Sender: tObject);
    procedure Bit_GravarClick(Sender: tObject);
    procedure CdSRecebimentosBeforeInsert(DataSet: TDataSet);
    procedure Sb_FormaPagamentoClick(Sender: tObject);
    procedure CdSRecebimentosAfterPost(DataSet: TDataSet);
    procedure DBGrid1Exit(Sender: tObject);
    procedure Descartar1Click(Sender: tObject);
    procedure CDSRecebimentosDescontoSetText(Sender: TField; const Text: string);
    procedure CDSRecebimentosJurosSetText(Sender: TField; const Text: string);
    procedure CDSRecebimentosMultaSetText(Sender: TField; const Text: string);
    procedure CDSRecebimentosBaixarSetText(Sender: TField; const Text: string);
    procedure cbParcelaSelect(Sender: TObject);
    procedure cbContaFinanceiraChange(Sender: TObject);
    procedure cbCentroCustoChange(Sender: TObject);
    procedure edContaFinanceiraExit(Sender: TObject);
    procedure edCentroCustoExit(Sender: TObject);
  private

    procedure CalculaTotal;
    procedure AplicaParcelamento;
    Procedure ParcelarRecB(wValor,wValor1Parcela:Double;wBanco,wCobranca,wTpDocuto,wCct_codigo,wPcx_codigo,wFatCodigo,wPcl_Codigo,wBancoApelido:String;var wDataE:Tdatetime; FormaPagamento : integer = 0);
    procedure Busca_Dados_Parcela(const sFatura, sCodParcela:String;const iQtdeParcela:Integer);
    procedure ExcluirParcelas(nFatura: string);
    procedure HabilitaBotoes;
    var
      wCct_codigo, wPcx_codigo, wFatCodigo, wBan_codigo,
      wTip_Cobranca, wTip_Docuto, wBan_codigo_apelido: string;

  public
    { Public declarations }
    sFaturas : string;
    // bBloqueado : Boolean;
  end;

var
  formContasReceberAgrupa: TformContasReceberAgrupa;

implementation

uses RwFunc, uFinanceiroDao, uCadastroFormaPagamento,
  uChequeCadastro, uteis, iniciodb, BaseForm, DataMov, DataCad, Rec0003;

{$R *.dfm}

procedure TformContasReceberAgrupa.Bit_CancelarClick(Sender: tObject);
begin
   Close;
end;

procedure TformContasReceberAgrupa.CDSRecebimentosDescontoSetText(Sender: TField; const Text: string);
begin
  Sender.Asfloat := StrToFloatDef( Text , 0 );
end;

procedure TformContasReceberAgrupa.CDSRecebimentosJurosSetText(Sender: TField; const Text: string);
begin
  Sender.Asfloat := StrToFloatDef( Text , 0 );
end;

procedure TformContasReceberAgrupa.CDSRecebimentosMultaSetText(Sender: TField; const Text: string);
begin
  Sender.Asfloat := StrToFloatDef( Text , 0 );
end;


procedure TformContasReceberAgrupa.EdContaBancoExit(Sender: tObject);
begin
  EdContaBanco.Text := PreenchezeroEsquerda(EdContaBanco.Text,4);
  if (EdContaBanco.Text = '0000') then
  begin
         EdContaBanco.Clear;
         CbContaBanco.Text := '';
  end
  Else
  begin
    DBInicio.qAux3.Close;
    DBInicio.qAux3.SQL.Text := 'select BAN_ATIVO from ban0000 where ban_codigo = '+QuotedStr( EdContaBanco.Text);
    DBInicio.qAux3.open;
    if DBInicio.qAux3.FieldByName('BAN_ATIVO').AsString = 'N' then
      CbContaBanco.Localizar := False
    else
    begin
      CbContaBanco.TextoLocalizar := EdContaBanco.Text;
      CbContaBanco.Localizar := True;
    end;
    if not (CbContaBanco.Localizado) then
    begin
       uteis.aviso('Conta Banco não localizado com o código informado');
       CbContaBanco.Text := '';
       EdContaBanco.SetFocus;
       EdContaBanco.SelectAll;
    end;
  end;
end;

procedure TformContasReceberAgrupa.edContaFinanceiraExit(Sender: TObject);
begin
  edContaFinanceira.Text := PreenchezeroEsquerda(edContaFinanceira.Text,3);
  cbContaFinanceira.idRetorno := edContaFinanceira.Text;
end;

procedure TformContasReceberAgrupa.EdFormaPagamentoExit(Sender: tObject);
begin
  CBFormaPagamento.idRetorno := EdFormaPagamento.Text;
end;

procedure TformContasReceberAgrupa.CbContaBancoChange(Sender: tObject);
begin
   EdContaBanco.Text := CbContaBanco.CodigoLista;
end;

procedure TformContasReceberAgrupa.CBFormaPagamentoChange(Sender: tObject);
begin
   EdFormaPagamento.Text := CBFormaPagamento.CodigoLista;
end;

procedure TformContasReceberAgrupa.cbContaFinanceiraChange(Sender: TObject);
begin
   EdContaFinanceira.Text := cbContaFinanceira.idRetorno;
end;

procedure TformContasReceberAgrupa.cbParcelaSelect(Sender: TObject);
begin
  edParcela.Text := cbParcela.idRetorno;
end;

procedure TformContasReceberAgrupa.FormShow(Sender: tObject);
begin
   //Combos
   CbContaBanco.CodigoEmpresa := StrToInt(dbInicio.Empresa.EMP_CODIGO);
   CbContaBanco.Compartilhar := 'BANCOS';
   CbContaBanco.CarregarCombo := True;

   CBFormaPagamento.CodigoEmpresa := StrToInt(dbInicio.Empresa.EMP_CODIGO);
   CBFormaPagamento.Compartilhar := 'TABELAS';
   CBFormaPagamento.CarregarCombo := True;

   
   CalculaTotal;

   // DBGrid1.SelectedIndex := 5;

   // bBloqueado := True;

end;

procedure TformContasReceberAgrupa.HabilitaBotoes;
begin

end;

procedure TformContasReceberAgrupa.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  formContasReceberAgrupa := nil;
  frmBase := nil;
end;

procedure TformContasReceberAgrupa.FormCreate(Sender: tObject);
begin
   CdSRecebimentos.CreateDataSet;
   frmBase := TfrmBase.Create(Self);
   frmbase.SqlConnection := DBInicio.MainDB;
{
   cbcontabanco.idretorno := '0005';
   cbformapagamento.idretorno := '5';
   cbcontafinanceira.idretorno := '004';
   cbcentrocusto.idretorno := '002';
   cbtipodoc.itemindex := 2;
   cbcarteira.itemindex := 2;
   cbparcela.idretorno := '035';
 }

end;

procedure TformContasReceberAgrupa.Bit_GravarClick(Sender: tObject);
begin
   if (EdContaBanco.Text = '') then
      begin
         uteis.aviso('Informe a Conta Banco');
         EdContaBanco.SetFocus;
         EdContaBanco.SelectAll;
      end
   else
   if (EdFormaPagamento.Text = '') then
      begin
         uteis.aviso('Informe a Forma de Pagamento');
         EdFormaPagamento.SetFocus;
         EdFormaPagamento.SelectAll;
      end
   else
   if (edContaFinanceira.Text = '') then
      begin
         uteis.aviso('Informe a Conta Financeira');
         edContaFinanceira.SetFocus;
         edContaFinanceira.SelectAll;
      end
   else
   if (edCentroCusto.Text = '') then
      begin
         uteis.aviso('Informe o Centro de Custo');
         edCentroCusto.SetFocus;
         edCentroCusto.SelectAll;
      end
   else
   if  (cbTipoDoc.ItemIndex = -1)  then
      begin
         uteis.aviso('Informe o Tipo de Documento');
         cbTipoDoc.SetFocus;
      end
   else
   if (cbCarteira.ItemIndex = -1)  then
      begin
         uteis.aviso('Informe o Tipo de Cobrança');
         cbCarteira.SetFocus;
      end
   else
   if (cbParcela.idRetorno = '') then
      begin
         uteis.aviso('Informe o Parcelamento');
         edParcela.SetFocus;
         edParcela.SelectAll;
      end
   else
      begin
         if (uteis.confirmacao ( 'Confirma o agrupamento das duplicatas listadas acima?')=mrYes) then
            begin
               //Grava Pagamentos
               AplicaParcelamento;
               Close;
               Exit;

               ModalResult := mrOk;
               Close;
            end;
      end;
end;



procedure TformContasReceberAgrupa.AplicaParcelamento;
Var

  dDataAcumulada : TDateTime;
  n, opvCodigo : Integer;
  fpg_reg : integer;
  nFatura, carteira, tipoDoc: string;
  valorTotal: double;
begin
//     Cdesconto      := 0;
//     iQtdeParcelas  := 0;

     n := frmBase.BuscaUmdadoSqlasInteger ( 'Select cast(count(*) as integer) as conta from FAT_PC01 '+
                                    'where (FPC_SITPAG <>''P'' and FPC_STATUS<>''Pendente'') and FAT_CODIGO = '''+nFatura+''''+
                                    ConcatSe(' AND ', DBINICIO.ExclusivoSql('RECEBER') ) );
     if n<>0 then
     begin
           uteis.aviso('Impossível reparcelar esta fatura. Existem parcelas com transações executadas !');
     end
     else
     begin
          n := frmBase.BuscaUmdadoSqlasInteger ( 'Select cast(count(*) as integer) as conta from    FAT_PC01 X1 '+
                                         'WHERE X1.FAT_CODIGO = '''+nFatura+''' and X1.FPC_SITPAG= ''L'''+
                                         ConcatSe(' AND ', DBINICIO.ExclusivoSql('RECEBER') ) );
          if n=0 then
          begin
               if uteis.confirmacao ( 'Confirma o Parcelamento Selecionado ?')= idYes then
               begin
                    nFatura := SequenciadorPRC(DataCadastros.SQLConnection1, //Conexao
                                                       dbInicio.Empresa.EMP_CODIGO,  //empresa
                                                       'NF0001',                     //Tabela
                                                       'NF_NOTANUMBER_N',            //Campo da Tabela
                                                       0);
                    nFatura := strzero(nFatura, 6);
                    Busca_Dados_Parcela(nFatura,  StrZero(IntToStr(1),2), 1);
                    //Parcelar a fatura Gerar duplicatas
                    FormContasRecParceGrid.CdsReceber.First;
                    dDataAcumulada := date;  // DataMovimento.CdsReceberFAT_DTEMIS.AsDateTime;
                    DataMovimento.CdsReceber.Close;
                    DataMovimento.SqlReceber.SQL.Text := 'select * from fat0000 where 1 = 0';
                    DataMovimento.CdsReceber.Open;
                    DataMovimento.CdsReceber.Insert;
                    DataMovimento.CdsReceberFAT_CODIGO.AsString := nFatura;
                    if FormContasRecParceGrid.CdsReceberPED_CODIGO.AsString <> '' then
                    begin
                      // opvCodigo := FormContasRecParceGrid.CdsReceberOPV_CODIGO.AsInteger;
                      // às vezes dá erro de overflow???????? Delphi pirando o cabeção
                      opvCodigo := DBInicio.BuscaUmDadoSqlAsInteger('SELECT OPV_CODIGO FROM PED0000 WHERE PED_CODIGO = ' + QuotedStr(FormContasRecParceGrid.CdsReceberPED_CODIGO.AsString) );
                      DataMovimento.CdsReceberPED_CODIGO.AsString := FormContasRecParceGrid.CdsReceberPED_CODIGO.AsString;
                    end;
                    DataMovimento.CdsReceberCLI_CODIGO.AsString := CDSRecebimentosClienteCodigo.AsString;
                    DataMovimento.CdsReceberOPV_CODIGO.AsInteger := opvCodigo;
                    DataMovimento.CdsReceberPCL_CODIGO.AsString := edParcela.Text;
                    DataMovimento.CdsReceberREP_CODIGO.AsString := FormContasRecParceGrid.CdsReceberREP_CODIGO.AsString;
                    DataMovimento.CdsReceberPCX_CODIGO.AsString := edCentroCusto.Text;
                    DataMovimento.CdsReceberCCT_CODIGO.AsString := edContaFinanceira.Text;
                    DataMovimento.CdsReceberFAT_PREVISAO.AsString := 'N';
                    DataMovimento.CdsReceberFAT_QTDITEM.AsFloat := 0;
                    DataMovimento.CdsReceberFAT_VL_LIQ.AsCurrency := CurrTotalReceber.Value;
                    DataMovimento.CdsReceberFAT_VLFAT.AsCurrency := CurrTotalReceber.Value;
                    DataMovimento.CdsReceberFAT_DTEMIS.AsDateTime := Date;
                    DataMovimento.CdsReceberFAT_COMIS1.AsFloat := FormContasRecParceGrid.CdsReceberFAT_COMIS1.AsFloat;
                    DataMovimento.CdsReceberFAT_OBS.AsString := FormContasRecParceGrid.CdsReceberFAT_OBS.AsString + ' | Agrupamento das Faturas: ' + sFaturas;
                    DataMovimento.CdsReceberFAT_OPERACAO.AsString := FormContasRecParceGrid.CdsReceberFAT_OPERACAO.AsString;
                    DataMovimento.CdsReceberFAT_BASESUB.AsFloat := FormContasRecParceGrid.CdsReceberFAT_BASESUB.AsFloat;
                    DataMovimento.CdsReceberFAT_ICMSRET.AsFloat := FormContasRecParceGrid.CdsReceberFAT_ICMSRET.AsFloat;
                    DataMovimento.CdsReceberFAT_DESP_ACES.AsFloat := FormContasRecParceGrid.CdsReceberFAT_DESP_ACES.AsFloat;
                    DataMovimento.CdsReceberFAT_BASEICMS.AsFloat := FormContasRecParceGrid.CdsReceberFAT_BASEICMS.AsFloat;
                    DataMovimento.CdsReceberFAT_VL_IPI.AsFloat := FormContasRecParceGrid.CdsReceberFAT_VL_IPI.AsFloat;
                    DataMovimento.CdsReceberFAT_ALIQUOTA.AsFloat := FormContasRecParceGrid.CdsReceberFAT_ALIQUOTA.AsFloat;
                    DataMovimento.CdsReceberFAT_OBSLIVRO.AsString := FormContasRecParceGrid.CdsReceberFAT_OBSLIVRO.AsString;
                    DataMovimento.CdsReceberFAT_OPERUF.AsString := FormContasRecParceGrid.CdsReceberFAT_OPERUF.AsString;
                    DataMovimento.CdsReceberFAT_LIVRO.AsString := FormContasRecParceGrid.CdsReceberFAT_LIVRO.AsString;
                    DataMovimento.CdsReceberFAT_VL_RET.AsFloat := FormContasRecParceGrid.CdsReceberFAT_VL_RET.AsFloat;
                    DataMovimento.CdsReceberFAT_IRPJ_RET.AsFloat := FormContasRecParceGrid.CdsReceberFAT_IRPJ_RET.AsFloat;
                    DataMovimento.CdsReceberFAT_PIS_RET.AsFloat := FormContasRecParceGrid.CdsReceberFAT_PIS_RET.AsFloat;
                    DataMovimento.CdsReceberFAT_COFINS_RET.AsFloat := FormContasRecParceGrid.CdsReceberFAT_COFINS_RET.AsFloat;
                    DataMovimento.CdsReceberFAT_INSS_RET.AsFloat := FormContasRecParceGrid.CdsReceberFAT_INSS_RET.AsFloat;
                    DataMovimento.CdsReceberFAT_CONTSOCIAL_RET.AsFloat := FormContasRecParceGrid.CdsReceberFAT_CONTSOCIAL_RET.AsFloat;
                    DataMovimento.CdsReceberFAT_BASE_INSS.AsFloat := FormContasRecParceGrid.CdsReceberFAT_BASE_INSS.AsFloat;
                    DataMovimento.CdsReceberFAT_IRPJ_PERC.AsFloat := FormContasRecParceGrid.CdsReceberFAT_IRPJ_PERC.AsFloat;
                    DataMovimento.CdsReceberFAT_PIS_PERC.AsFloat := FormContasRecParceGrid.CdsReceberFAT_PIS_PERC.AsFloat;
                    DataMovimento.CdsReceberFAT_COFINS_PERC.AsFloat := FormContasRecParceGrid.CdsReceberFAT_COFINS_PERC.AsFloat;
                    DataMovimento.CdsReceberFAT_INSS_PERC.AsFloat := FormContasRecParceGrid.CdsReceberFAT_INSS_PERC.AsFloat;
                    DataMovimento.CdsReceberFAT_CONTSOCIAL_PERC.AsFloat := FormContasRecParceGrid.CdsReceberFAT_CONTSOCIAL_PERC.AsFloat;
                    DataMovimento.CdsReceberEMP_CODIGO.AsString := FormContasRecParceGrid.CdsReceberEMP_CODIGO.AsString;
                    DataMovimento.CdsReceberFAT_ISS_RET.AsFloat := FormContasRecParceGrid.CdsReceberFAT_ISS_RET.AsFloat;
                    DataMovimento.CdsReceberFAT_ISS_PERC.AsFloat := FormContasRecParceGrid.CdsReceberFAT_ISS_PERC.AsFloat;
                    DataMovimento.CdsReceberCCT_NOVO.AsString := FormContasRecParceGrid.CdsReceberCCT_NOVO.AsString;
                    DataMovimento.CdsReceberOPE_CODIGO.AsString := FormContasRecParceGrid.CdsReceberOPE_CODIGO.AsString;
                    DataMovimento.CdsReceberFAT_EXCLUSAO.AsString := 'N';
                    DataMovimento.CdsReceberFAT_REEMBOLSO.AsString := FormContasRecParceGrid.CdsReceberFAT_REEMBOLSO.AsString;
                    DataMovimento.CdsReceberFAT_LOTE.AsString := FormContasRecParceGrid.CdsReceberFAT_LOTE.AsString;
                    DataMovimento.CdsReceberFAT_NUMSERIE.AsString := FormContasRecParceGrid.CdsReceberFAT_NUMSERIE.AsString;
                    DataMovimento.CdsReceberFAT_COMISSAO_VEN.AsFloat := FormContasRecParceGrid.CdsReceberFAT_COMISSAO_VEN.AsFloat;
                    DataMovimento.CdsReceberREP_CODIGO_INTERNO.AsString := FormContasRecParceGrid.CdsReceberREP_CODIGO_INTERNO.AsString;
                    DataMovimento.CdsReceberFAT_CID_CODIGO_PRESTACAO.AsInteger := FormContasRecParceGrid.CdsReceberFAT_CID_CODIGO_PRESTACAO.AsInteger;
                    if (dDataAcumulada = 0) then
                    begin
                         dDataAcumulada := Date;
                         DataMovimento.CdsReceberFAT_DTEMIS.AsDateTime := Date;
                    end;
                    DataMovimento.CdsReceber.Post;
                    DataMovimento.CdsReceber.ApplyUpdates(0);

                    wCct_codigo    := edContaFinanceira.Text;
                    wPcx_codigo    := edCentroCusto.Text;
                    wFatCodigo     := nFatura;

                    fpg_reg := frmBase.BuscaUmDadoSqlAsInteger(' Select FIRST 1 FPG_REGISTRO from FAT_PC01 ' +
                                                       ' WHERE FAT_CODIGO = '+QuotedStr(nFatura)+
                                                         ConcatSe(' AND ', DBINICIO.ExclusivoSql('RECEBER') ) );

                    valorTotal := 0;
                    CdSRecebimentos.First;
                    while (not CdSRecebimentos.Eof) do
                    begin
                      valorTotal := ValorTotal + CdSRecebimentosPendente.AsFloat;
                      CdSRecebimentos.Next;
                    end;


                    ExcluirParcelas(nFatura);

                   carteira := IIF(cbCarteira.ItemIndex = 0,''  ,
                                IIF(CbCarteira.ItemIndex = 1,'CT',               //CT = CARTEIRA
                                IIF(CbCarteira.ItemIndex = 2,'CS',               //CS = COBRANCA SIMPLES
                                IIF(CbCarteira.ItemIndex = 3,'CC',               //CC = COBRANCA CAUCIONADA
                                IIF(CbCarteira.ItemIndex = 4,'CD',               //Cd = COBRANCA DESCONTADA
                                IIF(CbCarteira.ItemIndex = 5,'SR',               //SR = COBRANCA SEM REGISTRO
                                IIF(CbCarteira.ItemIndex = 6,'CR',               //CR = COBRANCA RAPIDA
                                IIF(CbCarteira.ItemIndex = 7,'CQ','CH'))))))));  //CQ = CUSTODIA CHEQUE / CH = CHEQUE DESCONTADO

                    tipoDoc := IIF(CbTipoDoc.ItemIndex = 0,''  ,
                                IIF(CbTipoDoc.ItemIndex = 1,'DP',
                                IIF(CbTipoDoc.ItemIndex = 2,'BL',
                                IIF(CbTipoDoc.ItemIndex = 3,'RC',
                                IIF(CbTipoDoc.ItemIndex = 4,'CH',
                                IIF(CbTipoDoc.ItemIndex = 5,'DN',
                                IIF(CbTipoDoc.ItemIndex = 6,'OU','CC')))))));

                    ParcelarRecB(ValorTotal,
                                 0,
                                 EdContaBanco.Text,
                                 carteira,
                                 tipoDoc,
                                 edContaFinanceira.Text,
                                 edCentroCusto.Text,
                                 nFatura,
                                 edParcela.Text,
                                 EdContaBanco.Text,
                                 dDataAcumulada,
                                 StrToInt(EdFormaPagamento.text));
               end
               else
               begin
                    if (CdSRecebimentos.State = dsEdit) then
                    begin
                         CdSRecebimentos.Cancel;
                         HabilitaBotoes;
                         edParcela.SetFocus;
                    end
                    else
                        cbParcela.SetFocus;
               end;
          end
          else
          begin
               uteis.aviso('Não é possível alterar o valor. Existem parcelas líquidada(s) !');
               CdSRecebimentos.Cancel;
               HabilitaBotoes;
               edParcela.SetFocus;
          end;
     end;
end;

procedure TformContasReceberAgrupa.ExcluirParcelas(nFatura: string);
var
  s : string;
begin
  CdSRecebimentos.First;
  while (not CdSRecebimentos.Eof) do
    begin
      s := 'UPDATE FAT_PC01 SET FPC_EXCLUSAO = ''S'', FPC_STATUS = ''Agrupada'', FPC_OBS = ' + QuotedStr('Parcela agrupada na fatura:' + nFatura) +   ' WHERE FAT_REGISTRO = '+ QuotedStr(CdSRecebimentosFatRegistro.AsString)    + ConcatSe(' AND ', DBINICIO.ExclusivoSql('RECEBER') ) ;
      frmBase.ExecSql(s);
      CdSRecebimentos.Next;
    end;
  CdSRecebimentos.First;
end;

procedure TformContasReceberAgrupa.ParcelarRecB(wValor, wValor1Parcela: Double; wBanco, wCobranca, wTpDocuto, wCct_codigo, wPcx_codigo, wFatCodigo, wPcl_Codigo, wBancoApelido: String;
  var wDataE: Tdatetime;   FormaPagamento : integer = 0);
var

   wdia,wmes,wano,wdiaAux:string;
   wvencto  : TDateTime;
   waux1    : Double;

   dValorEntrada, dTotal  : Double;
   wintervalo,wnumerParce, iNumeroParcelaPrazo: Integer;
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

Begin

      {    atenção ***

           PROCEDIMENTO ParcelarRecB MANTIDO PARA COMPATIBILIDADE ADJUTOR.OLD

           VERSÃO NOVA EM BaseDbFaturamentoForm.ParcelarRec

           MIGRAR C.RECEBER OPORTUNAMENTE, VERIFICAR DIFERENÇAS

           ADR 08/2016      }

    wValor := Uteis.RoundTo (wValor, -2);
    dValorEntrada := 0;

    iNumeroParcelaPrazo := 0;

    if (wValor1Parcela > 0) then
        wValor := wValor - wValor1Parcela;

    dTotal := wValor;

    DataCadastros.CdsParcelas.Close;
    DataCadastros.CdsParcelas.CommandText := SQLDEF('TABELAS','SELECT * FROM PCL0000','where PCL_CODIGO = '''+wPCL_CODIGO+'''','PCL_CODIGO','');
    DataCadastros.CdsParcelas.Open;

    if (DataCadastros.CdsParcelas.IsEmpty) then
       uteis.erro  (pchar('O prazo do Pedido esta em branco ou errado no cadastro. Não confirme, estorne este faturamento, volte ao pedido e coloque o prazo.'))
    else
    begin
         if (dbInicio.empresa.WPMT_FAT_CONFIRMA_PARCELA) then
         begin
              iNumeroParcelaPrazo := numeroParcelasAlterado(DataCadastros.CdsParcelasPCL_NPARCELAS.AsInteger);
              while MessageDlg(Pchar('Confirma as parcelas em R$ '+FormatFloat('###,###,##.00',wValor/iNumeroParcelaPrazo)), mtConfirmation,[mbYes, mbNo], 0) <> 6  do
                    iNumeroParcelaPrazo := numeroParcelasAlterado(iNumeroParcelaPrazo);
         end
         else
             iNumeroParcelaPrazo :=  DataCadastros.CdsParcelasPCL_NPARCELAS.AsInteger;

         //Verifica o Tipo F = Fixo V = Variavel
         if (DataCadastros.CdsParcelasPCL_TIPO.AsString = 'F') then //Fixo
         begin

                 if DataCadastros.CdsParcelasPCL_DESCTO.AsCurrency <> 0 then
                    wvalor := int(100*(wvalor-((wvalor*DataCadastros.CdsParcelasPCL_DESCTO.AsCurrency)/100)))/100;
                 {Guarda valor já c/ descto }


                 //Verifica % entrada
                 if (DataCadastros.CdsParcelasPCL_PERCENTUAL_PRIMEIRA_P.AsCurrency > 0) then
                 begin
                       dValorEntrada := wvalor * (DataCadastros.CdsParcelasPCL_PERCENTUAL_PRIMEIRA_P.AsCurrency/100);
                       wvalor := wvalor - dValorEntrada;
                 end;
                 wvalor:=int(100*(wvalor/(iNumeroParcelaPrazo-(IIF(dValorEntrada > 0,IIF(iNumeroParcelaPrazo > 1,1,0),0 )))))/100;


                 // se pedido sem prazo vai dar erro e pular para exceção
                 //dTmp:=int(100*(wvalor/(DataCadastros.CdsParcelasPCL_NPARCELAS.AsInteger-(IIF(dValorEntrada > 0,IIF(DataCadastros.CdsParcelasPCL_NPARCELAS.AsInteger > 1,1,0),0 )))))/100;
                 // wdescto = Vl total da nota; wvalor = vl da parcela c/ 2 casas
                 //waux1:= (wdescto-(dTmp*(DataCadastros.CdsParcelasPCL_NPARCELAS.AsInteger-(IIF(dValorEntrada > 0,IIF(DataCadastros.CdsParcelasPCL_NPARCELAS.AsInteger > 1,1,0),0 )))))*100;
                 {transforma inteiro p/ comparar depois}
                 //waux1:= StrToInt(FloatToStrf(waux1,ffFixed,1,0));
                 waux1 := (dTotal - (((wvalor * (iNumeroParcelaPrazo-(IIF(dValorEntrada > 0,IIF(iNumeroParcelaPrazo > 1,1,0),0 ))))+dValorEntrada)));

                 //Guardando diferença em centavos e transformando-o em inteiro
                 // wdescto = Vl total da nota; wvalor = vl da parcela c/ 2 casas
                 {transforma inteiro p/ comparar depois}
                 //
                 wnumerParce := 0;
                 // Nº de dias entre parcelas
                 wintervalo := DataCadastros.CdsParcelasPCL_DIASENTREP.Value;
                 //Ate Nº requerido de parcelas
                 while wnumerParce <> iNumeroParcelaPrazo do
                 begin
                       wnumerParce := wnumerParce + 1;
                       //se 1ª parcela
                       if wnumerParce = 1 then
                       begin
                              wVencto := wDataE;
                              //Vencimento da 1ª
                              wVencto := wVencto + (DataCadastros.CdsParcelasPCL_CARENC_PRI.Value);
                       end
                       else  //Se não for a 1ª parcela
                       begin
                            //Caso não manter-se dia do vencimento
                            if DataCadastros.CdsParcelasPCL_MANTERDIA.AsString = 'N' then
                               wVencto := wVencto + wIntervalo
                            else //Caso manter dia do vencimento
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
                                    WDia := '28';

                                 IF (WMes = '4') and (WDia = '31') then
                                    WDia := '30';

                                 IF (WMes = '6') and (WDia = '31') then
                                    WDia := '30';

                                 IF (WMes = '9') and (WDia = '31') then
                                    WDia := '30';

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
                       end;
                       if (iNumeroParcelaPrazo=1) then
                            wSeleciona := 'WHERE F1.FAT_CODIGO = '''+wFatCodigo+''''
                       else
                            wSeleciona := 'WHERE F1.FAT_CODIGO = '''+wFatCodigo+''' AND F1.FPC_NUMER = '''+StrZero(IntToStr(WNumerParce),2)+'''';

                       wSql1 := 'Select F1.*,B1.BAN_APELIDO from FAT_PC01 F1 ';
                       wSql2 := 'left join BAN0000 B1 on (F1.BAN_CODIGO = B1.BAN_CODIGO) ';
                       DataMovimento.CdsRecParce.Close;
                       DataMovimento.CdsRecParce.CommandText := SQLDEF('RECEBER',wSql1+wSql2,wSeleciona,'F1.FAT_CODIGO','F1.');
                       DataMovimento.CdsRecParce.Open;
                       if (DataMovimento.CdsRecParce.IsEmpty = true) then
                       begin
                            DataMovimento.CdsRecParce.Insert;
                            DataMovimento.CdsRecParceEMP_CODIGO.AsString   := dbInicio.Empresa.EMP_CODIGO;
                       end
                       else
                           DataMovimento.CdsRecParce.Edit;
                       DataMovimento.CdsRecParceFAT_CODIGO.AsString     := wFatCodigo;
                       DataMovimento.CdsRecParceFAT_NUMSERIE.AsString     := DBInicio.Empresa.SerieNF;
                       DataMovimento.CdsRecParceREP_CODIGO.AsString     := StrZero(DataMovimento.CdsReceberREP_CODIGO.AsString,3);
                       DataMovimento.CdsRecParceFPC_DTEMIS.AsDateTime   := wDataE;
                       if wBanco <> '' then
                       begin
                            DataMovimento.CdsRecParceBAN_CODIGO.AsString  := wBanco;
                            DataMovimento.CdsRecParceBAN_COD_APELIDO.ASINTEGER := dbInicio.BuscaUmDadoSqlAsInteger('SELECT BAN_COD_APELIDO FROM BAN0000 WHERE BAN_CODIGO = '+qStr( wBanco )+' and emp_codigo='+dbinicio.empresa.EMP_CODIGO);
                       end;

                       if wCct_codigo <> '' then
                          DataMovimento.CdsRecParceCCT_CODIGO.AsString  := wCct_codigo;
                       if wPcx_codigo <> '' then
                          DataMovimento.CdsRecParcePCX_CODIGO.AsString  := wPcx_codigo;
                       DataMovimento.CdsRecParceFPC_NPARCELAS.AsInteger := iNumeroParcelaPrazo;

                       if (wnumerParce = 1)and(dValorEntrada > 0) then
                       begin
                             DataMovimento.CdsRecParceFPC_VLPARC.AsCurrency   := dValorEntrada;
                             {Passa diferença dos centavos p/ parcela. Caso exista }
                             if WAux1 <> 0 then
                             begin
                                    DataMovimento.CdsRecParceFPC_VLPARC.AsCurrency := dValorEntrada + waux1;
                                    waux1 := 0;
                             end;
                       end
                       else
                       begin
                             DataMovimento.CdsRecParceFPC_VLPARC.AsCurrency   := wvalor;
                             {Passa diferença dos centavos p/ parcela. Caso exista }
                             if WAux1 <> 0 then
                             begin
                                    DataMovimento.CdsRecParceFPC_VLPARC.AsCurrency := wvalor + waux1;
                                    waux1 := 0;
                             end;
                       end;
                       //impostos na 1 parcela
                       if (wValor1Parcela > 0) then
                       begin
                            DataMovimento.CdsRecParceFPC_VLPARC.AsCurrency := DataMovimento.CdsRecParceFPC_VLPARC.AsCurrency + wValor1Parcela;
                            wValor1Parcela := 0;
                       end;

                       if iNumeroParcelaPrazo > 1 then
                          // se é uma parcela nao preciso gravar numero da parcela
                          DataMovimento.CdsRecParceFPC_NUMER.AsString          := StrZero(IntToStr(WNumerParce),2)
                       else
                          DataMovimento.CdsRecParceFPC_NUMER.AsString          := StrZero(IntToStr(1),2);
                       //
                       DataMovimento.CdsRecParceFPC_VENCTO.AsDateTime          := WVencto;
                       DataMovimento.CdsRecParceCLI_CODIGO.AsString            := StrZero(DataMovimento.CdsReceberCLI_CODIGO.AsString,5);
                       DataMovimento.CdsRecParceFPC_REEMBOLSO.AsString            := DataMovimento.CdsReceberFAT_REEMBOLSO.AsString;
                       //padrao é sempre entrar como pendente
                       DataMovimento.CdsRecParceFPC_SITPAG.AsString            := 'P';
                       DataMovimento.CdsRecParceFPC_STATUS.AsString            := 'Pendente';
                       DataMovimento.CdsRecParceFPC_IMPDUP.AsString            := 'N';
                       DataMovimento.CdsRecParceFPC_STATUS_REMESSA.AsString    := 'N';

                       //DataMovimento.CdsRecParceBAN_COD_APELIDO.AsString       := wBancoApelido;
                       if   FormaPagamento >0  then
                         DataMovimento.CdsRecParcefpg_registro.AsInteger :=   FormaPagamento ;
                       DataMovimento.CdsRecParceFPC_DESCONTADO.AsString        := 'N';
                       DataMovimento.CdsRecParceFPC_EXCLUSAO.AsString          := 'N';
                       DataMovimento.CdsRecParceFPC_CONFIRMADEVOLUCAO.AsString := 'N';

//                       if Assigned(FormContasReceber) then
//                          DataMovimento.CdsRecParceFPC_PREVISAO.AsString := iif(FormContasReceber.DBChkFat_previsao.checked ,'S','N');


                       DataMovimento.CdsRecParceFPC_COBTIPO.AsString  := wCobranca;
                       DataMovimento.CdsRecParceFPC_TIPODOC.AsString  := wTpDocuto;

                       //
                       DataMovimento.CdsRecParce.Post;
                       DataMovimento.CdsRecParce.ApplyUpdates(0);


                       LancaRateioCentroCustoBasePlano(DataMovimento.CdsRecParceFAT_REGISTRO.AsString,
                                                       'R',
                                                       DataMovimento.CdsRecParceCCT_CODIGO.AsString,
                                                       DataMovimento.CdsRecParcePCXPF_REGISTRO.AsString);
                 end;
         end
         else
         if (DataCadastros.CdsParcelasPCL_TIPO.AsString = 'V') then //Variavel
         begin
                 if DataCadastros.CdsParcelasPCL_DESCTO.AsCurrency <> 0 then
                    wvalor := int(100*(wvalor-((wvalor*DataCadastros.CdsParcelasPCL_DESCTO.AsCurrency)/100)))/100;

                 //Verifica % entrada
                 if (DataCadastros.CdsParcelasPCL_PERCENTUAL_PRIMEIRA_P.AsCurrency > 0) then
                 begin
                       dValorEntrada := wvalor * (DataCadastros.CdsParcelasPCL_PERCENTUAL_PRIMEIRA_P.AsCurrency/100);
                       wvalor := wvalor - dValorEntrada;
                 end;
                 wvalor:=int(100*(wvalor/(iNumeroParcelaPrazo-(IIF(dValorEntrada > 0,IIF(iNumeroParcelaPrazo > 1,1,0),0 )))))/100;

                 // se pedido sem prazo vai dar erro e pular para exceção
                 //dTmp:=int(100*(wvalor/(DataCadastros.CdsParcelasPCL_NPARCELAS.AsInteger-(IIF(dValorEntrada > 0,IIF(DataCadastros.CdsParcelasPCL_NPARCELAS.AsInteger > 1,1,0),0 )))))/100;
                 // wdescto = Vl total da nota; wvalor = vl da parcela c/ 2 casas
                 //waux1:= (wdescto-(dTmp*(DataCadastros.CdsParcelasPCL_NPARCELAS.AsInteger-(IIF(dValorEntrada > 0,IIF(DataCadastros.CdsParcelasPCL_NPARCELAS.AsInteger > 1,1,0),0 )))))*100;
                 // transforma inteiro p/ comparar depois
                 //waux1:= StrToInt(FloatToStrf(waux1,ffFixed,1,0));
                 waux1 := (dTotal - (((wvalor * (iNumeroParcelaPrazo-(IIF(dValorEntrada > 0,IIF(iNumeroParcelaPrazo > 1,1,0),0 ))))+dValorEntrada)));
                 //Guardando diferença em centavos e transformando-o em inteiro
                 // wdescto = Vl total da nota; wvalor = vl da parcela c/ 2 casas
                 {transforma inteiro p/ comparar depois}
                 //

                 //Busca o Intervalo das parcelas
                 qAux2.Close;
                 qAux2.Sql.Text :=  'SELECT P1.* '+
                           'FROM PCL_PARCELA P1 '+
                           'where P1.PCL_CODIGO = '+qStr(DataCadastros.CdsParcelasPCL_CODIGO.AsString)+
                           ConcatSe(' AND ', DBINICIO.ExclusivoSql('TABELAS') ) +
                           'order by P1.PCP_DIA' ;
                 qAux2.Open;
                 while (not qAux2.Eof) do
                 begin
                       wnumerParce := wnumerParce + 1;
                       //se 1ª parcela
                       if wnumerParce = 1 then
                       begin

                            // Vencimento da 1ª
                            wVencto := wDataE + (qAux2.FieldByName('PCP_DIA').AsInteger);
                       end
                       else // Se não for a 1ª parcela
                       begin
                              //Caso não manter-se dia do vencimento
                              if DataCadastros.CdsParcelasPCL_MANTERDIA.AsString = 'N' then
                                 wVencto := wDataE + (qAux2.FieldByName('PCP_DIA').AsInteger)

                              else  // Caso manter dia do vencimento
                              begin
                                     //Desmenbra data da variável
                                     wDia:= FormatDateTime('dd',wVencto);
                                     wDiaAux := Wdia;
                                     wMes:= FormatDateTime('mm',wVencto);
                                     wAno:= FormatDateTime('yyyy',wVencto);
                                     // Incrementa meses da data / Ex: se interv 60 = 2 meses
                                     wMes := IntToStr(StrToInt(wMes) + (wIntervalo div 30));
                                     // IFs que verifican validade de datas
                                     IF (WMes = '2') and ((WDia = '29') or (WDia = '30') or (WDia = '31')) then
                                        WDia := '28';
                                     IF (WMes = '4') and (WDia = '31') then
                                        WDia := '30';
                                     IF (WMes = '6') and (WDia = '31') then
                                        WDia := '30';
                                     IF (WMes = '9') and (WDia = '31') then
                                        WDia := '30';
                                     IF (WMes = '11') and (WDia = '31') then
                                        WDia := '30';
                                     // se mes passar do ano corrente ou passar um ano, ou mais
                                     if (((StrToInt(WMes) div 12)=1)and((StrToInt(WMes) mod 12)>0))or ((StrToInt(WMes) div 12)>1)   then
                                     Begin
                                            // se sobra meses
                                            if (StrToInt(WMes) mod 12)>0 then
                                            begin
                                                   WAno := IntToStr(StrToInt(WAno)+ StrToInt(WMes) div 12);
                                                   // a sobra da divisão equivale ao mes / Ex:14 div 12 = fevereiro
                                                   WMes := StrZero(IntToStr(StrToInt(WMes) mod 12),2);
                                            end
                                            else //Ex:24 meses div por 12 = 2anos / -1 porque não passou de dezembro
                                                 WAno := IntToStr(StrToInt(WAno)+ (StrToInt(WMes) div 12)-1);
                                     end;
                                     // Passa vencto correto
                                     //WVencto := StrToDateTime(WDia+'/'+StrZero(WMes,2)+'/'+WAno);
                                     WDia    := WDiaAux;
                              end;
                       end;
                       if (iNumeroParcelaPrazo=1) then
                            wSeleciona := 'WHERE F1.FAT_CODIGO = '''+wFatCodigo+''''
                       else
                            wSeleciona := 'WHERE F1.FAT_CODIGO = '''+wFatCodigo+''' AND F1.FPC_NUMER = '''+StrZero(IntToStr(WNumerParce),2)+'''';
                       wSql1 := 'Select F1.*,B1.BAN_APELIDO from FAT_PC01 F1 ';
                       wSql2 := 'left join BAN0000 B1 on (F1.BAN_CODIGO = B1.BAN_CODIGO) ';
                       DataMovimento.CdsRecParce.Close;
                       DataMovimento.CdsRecParce.CommandText := SQLDEF('RECEBER',wSql1+wSql2,wSeleciona,'F1.FAT_CODIGO','F1.');
                       DataMovimento.CdsRecParce.Open;
                       if (DataMovimento.CdsRecParce.IsEmpty = true) then
                       begin
                            DataMovimento.CdsRecParce.Insert;
                            DataMovimento.CdsRecParceEMP_CODIGO.AsString   := dbInicio.Empresa.EMP_CODIGO;
                       end
                       else
                           DataMovimento.CdsRecParce.Edit;
                       DataMovimento.CdsRecParceFAT_CODIGO.AsString     := wFatCodigo;
                       DataMovimento.CdsRecParceREP_CODIGO.AsString     := StrZero(DataMovimento.CdsReceberREP_CODIGO.AsString,3);
                       DataMovimento.CdsRecParceFPC_DTEMIS.AsDateTime   := wDataE;
                       if wBanco <> '' then
                       begin
                            DataMovimento.CdsRecParceBAN_CODIGO.AsString  := wBanco;
                            DataMovimento.CdsRecParceBAN_COD_APELIDO.ASINTEGER := dbInicio.BuscaUmDadoSqlAsInteger('SELECT BAN_COD_APELIDO FROM BAN0000 WHERE BAN_CODIGO = '+qStr( wBanco )+' and emp_codigo='+dbinicio.empresa.EMP_CODIGO);
                       end;
                       if wCct_codigo <> '' then
                          DataMovimento.CdsRecParceCCT_CODIGO.AsString  := wCct_codigo;
                       if wPcx_codigo <> '' then
                          DataMovimento.CdsRecParcePCX_CODIGO.AsString  := wPcx_codigo;
                       DataMovimento.CdsRecParceFPC_NPARCELAS.AsInteger := iNumeroParcelaPrazo;

                       if (wnumerParce = 1)and(dValorEntrada > 0) then
                       begin
                             DataMovimento.CdsRecParceFPC_VLPARC.AsCurrency   := dValorEntrada;
                             // Passa diferença dos centavos p/ parcela. Caso exista
                             if WAux1 <> 0 then
                             begin
                                    DataMovimento.CdsRecParceFPC_VLPARC.AsCurrency := dValorEntrada + waux1;
                                    WAux1 := WAux1 - 1;
                             end;
                       end
                       else
                       begin
                             DataMovimento.CdsRecParceFPC_VLPARC.AsCurrency   := wvalor;
                             // Passa diferença dos centavos p/ parcela. Caso exista
                             if WAux1 <> 0 then
                             begin
                                    DataMovimento.CdsRecParceFPC_VLPARC.AsCurrency := wvalor + waux1;
                                    waux1 := 0;
                             end;
                       end;


                       if iNumeroParcelaPrazo > 1 then
                          // se é uma parcela nao preciso gravar numero da parcela
                          DataMovimento.CdsRecParceFPC_NUMER.AsString          := StrZero(IntToStr(WNumerParce),2)
                       else
                          DataMovimento.CdsRecParceFPC_NUMER.AsString          := StrZero(IntToStr(1),2);
                       //
                       DataMovimento.CdsRecParceFPC_VENCTO.AsDateTime          := WVencto;
                       DataMovimento.CdsRecParceCLI_CODIGO.AsString            := StrZero(DataMovimento.CdsReceberCLI_CODIGO.AsString,5);
                       //padrao é sempre entrar como pendente
                       DataMovimento.CdsRecParceFPC_SITPAG.AsString            := 'P';
                       DataMovimento.CdsRecParceFPC_STATUS.AsString            := 'Pendente';
                       DataMovimento.CdsRecParceFPC_IMPDUP.AsString            := 'N';
                       DataMovimento.CdsRecParceFPC_STATUS_REMESSA.AsString    := 'N';
                       DataMovimento.CdsRecParceFPC_DESCONTADO.AsString        := 'N';
                       DataMovimento.CdsRecParceFPC_EXCLUSAO.AsString          := 'N';
                       DataMovimento.CdsRecParceFPC_CONFIRMADEVOLUCAO.AsString := 'N';

//                       if Assigned(FormContasReceber) then
//                          DataMovimento.CdsRecParceFPC_PREVISAO.AsString := iif(FormContasReceber.DBChkFat_previsao.checked ,'S','N');

                       DataMovimento.CdsRecParceFPC_COBTIPO.AsString  := wCobranca;
                       DataMovimento.CdsRecParceFPC_TIPODOC.AsString  := wTpDocuto;
                       if   FormaPagamento >0  then
                         DataMovimento.CdsRecParcefpg_registro.AsInteger :=   FormaPagamento ;

                       DataMovimento.CdsRecParce.Post;
                       DataMovimento.CdsRecParce.ApplyUpdates(0);


                       LancaRateioCentroCustoBasePlano(DataMovimento.CdsRecParceFAT_REGISTRO.AsString,
                                                       'R',
                                                       DataMovimento.CdsRecParceCCT_CODIGO.AsString,
                                                       DataMovimento.CdsRecParcePCXPF_REGISTRO.AsString);

                       qAux2.Next;
                 end;
         end;
    end;
end;

procedure TformContasReceberAgrupa.Busca_Dados_Parcela(const sFatura,
  sCodParcela: String; const iQtdeParcela: Integer);
begin
     qAux.Close;
     qAux.SQL.Text :=  'SELECT BAN_CODIGO,  FPC_COBTIPO, FPC_TIPODOC, BAN_COD_APELIDO FROM FAT_PC01 '+
              'WHERE FAT_CODIGO = '''+sFatura+''''+
              ConcatSe(' and ', dbInicio.ExclusivoSql('receber'));
     qAux.Open;
     if  qAux.RecordCount > 0 then  // banco de dados vazio
     begin
     if ( frmBase.BuscaUmdadoSqlAsInteger( 'Select cast(count(*) as integer) as conta from    FAT_PC01 T1 '+'WHERE FAT_CODIGO = '''+sFatura+'''' ) = 1) then
     begin
           wBan_codigo   := qAux.FieldByName('BAN_CODIGO').AsString;
           wTip_Cobranca := qAux.FieldByName('FPC_COBTIPO').AsString;
           wTip_Docuto   := qAux.FieldByName('FPC_TIPODOC').AsString;
           wBan_codigo_apelido := qAux.FieldByName('BAN_COD_APELIDO').AsString;
     end
     else
     begin
          qAux.Close;
          qAux.SQL.Text := 'SELECT BAN_CODIGO,  FPC_COBTIPO, FPC_TIPODOC, BAN_COD_APELIDO FROM FAT_PC01 '+
                   'where FAT_CODIGO = '+qStr(sFatura)+iif(iQtdeParcela=1,'',' AND FPC_NUMER = '+qStr(sCodParcela))+
                   ConcatSe(' and ', dbInicio.ExclusivoSql('receber'));
          qAux.Open;
          if (not qAux.IsEmpty) then
          begin
               wBan_codigo   := qAux.FieldByName('BAN_CODIGO').AsString;
               wTip_Cobranca := qAux.FieldByName('FPC_COBTIPO').AsString;
               wTip_Docuto   := qAux.FieldByName('FPC_TIPODOC').AsString;
               wBan_codigo_apelido := qAux.FieldByName('BAN_COD_APELIDO').AsString;
          end
          else
          begin
               {Busca o primeiro Lancamento da Alteraçao}
               qAux.Close;
               qAux.SQL.Text :='SELECT BAN_CODIGO,  FPC_COBTIPO, FPC_TIPODOC, BAN_COD_APELIDO FROM FAT_PC01 '+
                        'where FAT_CODIGO = '+qStr(sFatura)+iif(iQtdeParcela=1,'',' AND FPC_NUMER = '+qStr('01'))+
                        ConcatSe(' and ', dbInicio.ExclusivoSql('receber'));
               qAux.Open;
               if (not qAux.IsEmpty) then
               begin
                       wBan_codigo   := qAux.FieldByName('BAN_CODIGO').AsString;
                       wTip_Cobranca := qAux.FieldByName('FPC_COBTIPO').AsString;
                       wTip_Docuto   := qAux.FieldByName('FPC_TIPODOC').AsString;
                       wBan_codigo_apelido := qAux.FieldByName('BAN_COD_APELIDO').AsString;
               end
               else
               begin
                 {Busca o Codigo da Carteira definido no Parametro para deixar como default}
                 wBan_Codigo   := dbInicio.Empresa.wCod_Carteira;
                 wTip_Cobranca := dbInicio.Empresa.wTp_Cobranca;
                 wTip_Docuto   := dbInicio.Empresa.wTp_Docuto;
                 if wBan_codigo <> '' then
                    wBan_codigo_apelido := dbInicio.BuscaUmDadoSqlAsString( 'SELECT BAN_COD_APELIDO '+
                                                                            'FROM BAN0000 '+
                                                                            'WHERE BAN_CODIGO = '+qStr( wBan_codigo )+' and emp_codigo='+dbinicio.empresa.EMP_CODIGO);
               end;
          end;
     end;
     end;
end;


procedure TformContasReceberAgrupa.CdSRecebimentosBeforeInsert(
  DataSet: TDataSet);
begin
   // if (bBloqueado) then
   //   CdSRecebimentos.Cancel;
end;

procedure TformContasReceberAgrupa.Sb_FormaPagamentoClick(Sender: tObject);
begin

   if not assigned(FrmCadastroFormaPagamento) then
    begin
      FrmCadastroFormaPagamento := TFrmCadastroFormaPagamento.Create(Application);
      FrmCadastroFormaPagamento.BotoesAcesso;
    if (MDIChildCount > 1) then
             SendMessage(ClientHandle, WM_MDICASCADE, 0, 0)
   end;
   CBFormaPagamento.CarregarCombo := False;
   CBFormaPagamento.CarregarCombo := True;
end;

procedure TformContasReceberAgrupa.CdSRecebimentosAfterPost(
  DataSet: TDataSet);
begin
   CalculaTotal;
end;

procedure TformContasReceberAgrupa.CDSRecebimentosBaixarSetText(Sender: TField; const Text: string);
begin
     Sender.Asfloat := StrToFloatDef( Text , 0 );
end;

procedure TformContasReceberAgrupa.CalculaTotal;
begin
  CurrTotalQuantidade.Value := CdSRecebimentos.RecordCount;
end;

procedure TformContasReceberAgrupa.cbCentroCustoChange(Sender: TObject);
begin
   edCentroCusto.Text := cbCentroCusto.idRetorno;
end;

procedure TformContasReceberAgrupa.DBGrid1Exit(Sender: tObject);
begin
   if not(CdSRecebimentos.State in [Dsbrowse]) then
      CdSRecebimentos.Post;
end;

procedure TformContasReceberAgrupa.Descartar1Click(Sender: tObject);
begin
  if (not CdSRecebimentos.IsEmpty) then
    if (uteis.confirmacao ( 'Gostaria de descartar esta fatura?')=mrYes) then
       CdSRecebimentos.Delete;
  if (CdSRecebimentos.IsEmpty) or (CdSRecebimentos.RecordCount = 1) then
   begin
     uteis.aviso('Como não há mais de uma parcela para ser agrupada, esta tela será fechada');
     Close;
   end;
end;

procedure TformContasReceberAgrupa.edCentroCustoExit(Sender: TObject);
begin
  edCentroCusto.Text := PreenchezeroEsquerda(edCentroCusto.Text, 3);
  cbCentroCusto.idRetorno := edCentroCusto.Text;
end;

end.
