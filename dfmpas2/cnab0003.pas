unit cnab0003;

// Veja importar_old: cnab0002.pas em dfmpas

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, BaseDbForm,
  Dialogs, StdCtrls, Buttons, Gauges,  rxToolEdit, ExtCtrls, DBCtrls, Grids, Clipbrd,
  DBGrids, Mask,  rxCurrEdit, RXCtrls, FMTBCd, DB, DBClient, Provider, SqlExpr,SqlClientDataSet,
  DBLocal, DBLocalS, Menus, ComCtrls, RxRichEd, RDprint, RWFunc, ComboBoxRw,  acbrutil,
  Data.DBXFirebird, SimpleDS, SgDbSeachComboUnit, ACBrBase, ACBrBoleto, ACBrEnterTab, ACBrCalculadora, SYSTEM.StrUtils;

type
  TFrmRetornoCNAB_Novo = class(TfrmBaseDB)
    SQLDupliCNAB: TSQLClientDataSet;
    DSDupliCNAB: TDataSource;
    SQLConsultaArquivo: TSQLClientDataSet;
    SQLContaBanco: TSQLClientDataSet;
    PanProcessando: TPanel;
    Panel1: TPanel;
    Button1: TButton;
    ProgressBar: TProgressBar;
    LblProcesso: TLabel;
    SQLConsultaCRC: TSQLClientDataSet;
    LblMensagem1: TLabel;
    LblMensagem2: TLabel;
    PanTipo: TPanel;
    GroupBox3: TGroupBox;
    RadNumFatura: TRadioButton;
    RadCodCliente: TRadioButton;
    GroupBox6: TGroupBox;
    RadVideo: TRadioButton;
    RadImpressora: TRadioButton;
    Panel2: TPanel;
    RadRazao: TRadioButton;
    SQLConsulta: TSQLClientDataSet;
    SQLDupliCNABDCN_REGISTRO: TIntegerField;
    SQLDupliCNABDCN_COD_REMESSA: TIntegerField;
    SQLDupliCNABDCN_DUPLICATA: TStringField;
    SQLDupliCNABDCN_DUP_PARCELA: TStringField;
    SQLDupliCNABDCN_COD_OCORRENCIA: TStringField;
    SQLDupliCNABDCN_DATA_OCORRENCIA: TDateField;
    SQLDupliCNABDCN_INSTRUCAO1: TStringField;
    SQLDupliCNABDCN_INSTRUCAO2: TStringField;
    SQLDupliCNABDCN_COD_REJEICAO: TStringField;
    SQLDupliCNABDCN_INDIC_CREDITO: TStringField;
    SQLDupliCNABDCN_NOSSO_NUMERO: TStringField;
    SQLDupliCNABDCN_TARIFA: TFMTBCdField;
    SQLDupliCNABDCN_VALOR_ABATIMENTO: TFMTBCdField;
    SQLDupliCNABDCN_VALOR_DESCONTO: TFMTBCdField;
    SQLDupliCNABDCN_VALOR_PAGO: TFMTBCdField;
    SQLDupliCNABDCN_JUROS_MORA: TFMTBCdField;
    SQLDupliCNABDCN_VALOR_MULTA: TFMTBCdField;
    SQLDupliCNABDCN_STATUS_BAIXA: TStringField;
    SQLDupliCNABDCN_IDENTIFICA_TITULO: TStringField;
    SQLDupliCNABDCN_PROTESTAR: TStringField;
    SQLDupliCNABDCN_DIAS_PROT: TIntegerField;
    SQLRelatorio: TSQLClientDataSet;
    SQLDetalhe: TSQLClientDataSet;
    RDProtRetornoCNAB: TRDprint;
    SQLDupliCNABEMP_CODIGO: TStringField;
    CdSRecebimentos: TSQLClientDataSet;
    CdSRecebimentosFRE_DATA_RECEBIMENTO: TDateField;
    CdSRecebimentosFRE_VALOR: TFMTBCdField;
    CdSRecebimentosFRE_DESCONTO: TFMTBCdField;
    CdSRecebimentosFRE_JUROS: TFMTBCdField;
    CdSRecebimentosFRE_MULTA: TFMTBCdField;
    CdSRecebimentosFRE_RECEBIDO: TFMTBCdField;
    CdSRecebimentosBAN_CODIGO: TStringField;
    CdSRecebimentosBAN_RAZAO: TStringField;
    CdSRecebimentosFPG_REGISTRO: TIntegerField;
    CdSRecebimentosFPG_DESCRICAO: TStringField;
    CdSRecebimentosUSU_CODIGO: TIntegerField;
    CdSRecebimentosUSU_NOME: TStringField;
    CdSRecebimentosFRE_REGISTRO: TIntegerField;
    Button2: TButton;
    RDProtCNAB: TRDprint;
    bl1: TACBrBoleto;
    GbTotais: TGroupBox;
    Label2: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label17: TLabel;
    Label19: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label27: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    CTotalTitulos: TCurrencyEdit;
    CEntradas: TCurrencyEdit;
    CLiquidacoes: TCurrencyEdit;
    CCartorio: TCurrencyEdit;
    CRejeicao: TCurrencyEdit;
    CBaixas: TCurrencyEdit;
    CProtesto: TCurrencyEdit;
    CTarifas: TCurrencyEdit;
    CJuros: TCurrencyEdit;
    COutros: TCurrencyEdit;
    CSubTotal: TCurrencyEdit;
    CDesconto: TCurrencyEdit;
    Panel3: TPanel;
    GbRetorno: TGroupBox;
    Label18: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Label10: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label5: TLabel;
    Label16: TLabel;
    LblSataus: TLabel;
    FileArqImportar: TFilenameEdit;
    GroupBox9: TGroupBox;
    Label20: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label11: TLabel;
    PDisplayDup: TPanel;
    PDisplayEmiss: TPanel;
    PDisplayVenc: TPanel;
    PDisplayBanco: TPanel;
    CRegistro: TCurrencyEdit;
    CValorTotal: TCurrencyEdit;
    CDisplayValor: TCurrencyEdit;
    PanNossoNumero: TPanel;
    BitProcessar: TBitBtn;
    BitImprimir: TBitBtn;
    CCodigoBco1: TCurrencyEdit;
    CbBancos1: TComboBox;
    CDigitoC: TCurrencyEdit;
    CDigitoAge: TCurrencyEdit;
    PanAgencia: TPanel;
    PanContaCorr: TPanel;
    PanCodEmpresa: TPanel;
    CCodCarteira: TEdit;
    BitTipoImpressao1: TBitBtn;
    BitBtnSair: TBitBtn;
    BitVisualizar: TBitBtn;
    Gauge: TGauge;
    cdsDuplicatas: TClientDataSet;
    dspDuplicatas: TDataSetProvider;
    cdsDuplicatasDCN_DUPLICATA: TStringField;
    cdsDuplicatasDCN_DUP_PARCELA: TStringField;
    cdsDuplicatasCLI_CODIGO: TStringField;
    cdsDuplicatasFPC_VENCTO: TSQLTimeStampField;
    procedure FormShow(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure BitBtnSairClick(Sender: TObject);
    procedure CCodigoBco1KeyPress(Sender: TObject; var Key: Char);
    procedure CbBancos1Click(Sender: TObject);
    procedure BitProcessarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitImprimirClick(Sender: TObject);
    procedure ButFechaClick(Sender: TObject);
    procedure FileArqImportarAfterDialog(Sender: TObject; var Name: String;
      var Action: Boolean);
    procedure BitTipoImpressao1Click(Sender: TObject);
    procedure RDProtCNABNewPage(Sender: TObject; Pagina: Integer);
    procedure RDProtCNABBeforeNewPage(Sender: TObject; Pagina: Integer);
    procedure RDProtRetornoCNABNewPage(Sender: TObject; Pagina: Integer);
    procedure RDProtRetornoCNABBeforeNewPage(Sender: TObject;
      Pagina: Integer);
    procedure Button2Click(Sender: TObject);
    procedure CCodigoBco1Exit(Sender: TObject);
    procedure BitVisualizarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private

     cTOTAL_JUROS,
     cTOTAL_DESCONTOS,
     cTOTAL_TARIFAS,
     cTOTAL_GERAL :Currency;
     wDIR,
     wEmpresa,
     wBan_codigo,
     wBan_convenio,
     wCodigoEmpresa : String;
     wLogError:Boolean;
     sCodigoCnab,
     wSQL1,
     wSQL2,
     wSQL3,
     wSQL4,
     wSeleciona,
     wOrdem,
     wARQUIVO,
     sCaminhoRemessa,
     wPESQUISA_TITULO  :String;
     iLINHA,
     iQtdeRegistro,
     wQTD_DUPLICATA,wPos    :Integer;
     wDUPLICATA,
     wVALOR_MULTA,
     wNParcela         :String;
     wIDENTIFICA_TITULO:String[20];
     wOCORRENCIA       :String[02];
     wOCORRENCIA_DESC  :string;
     wDATA_OCORRENCIA  :tDateTime;
     wNOSSO_NUMERRO    :String[17];
     wCOD_REJEICAO     :String[10];
     wCOD_INDICACAO    :String[02];
     wVALOR_DESCONTO,
     wVALOR_ABATIMENTO,
     wVALOR_TARIFA,
     wVALOR_JUROS_MORA,
     //wVALOR_MULTA,
     wVALOR_PAGO    :String[15];
     wRejeicao      :String;
     wTOTAL_ENTRADAS,
     wTOTAL_LIQUIDADAS,
     wTOTAL_CARTORIO,
     wTOTAL_REJEICAO,
     wTOTAL_BAIXA,
     wTOTAL_OUTROS,
     wTOTAL_PROTESTO:Currency;
     //
     iQTDE_ENTRADAS,
     iQTDE_LIQ,
     iQTDE_CARTORIO,
     iQTDE_REJEICAO,
     iQTDE_BAIXA,
     iQTDE_PROT,
     iQTDE_OUTROS,
     formaPagamentoPadrao :Integer;

     procedure preencheBancos;
     procedure AtribuiCaminhoRefBanco;
     procedure AtualizaArquivoCNABRetorno(wCOD_ARQUIVO,wLITERAL_ARQUIVO,wCOD_SERVICO,wLITERAL_SERVICO,wDATA_ARQ:String);
     procedure AtualizaArquivoCNABRetornoDuplicata;
     procedure AtualizaArquivoRetorno;
     procedure ImportarCobrancaCNAB;
     procedure ImportarOutros;
     procedure ImportarCelesc;
     procedure ImprimirProtocoloRetornoCNAB400(wSAIDA:String;wCOD_RETORNO,wCOD_BANCO:String);
     function ContasReceberBaixaAuto(const sFaturaRegistro, sContaBancoRegistro, sFormaPgtoRegistro, sUsuarioCodido: String;const  rPendente, rBaixar, rDesconto,
      rJuros, rMulta, rRecebido, rTarifa: Currency;const   dDataRecebimento: TDateTime): Boolean;
     procedure LerCopel(NomeArq :string);
     procedure LerCelesc (NomeArq:string);
  public
  procedure BotoesAcesso;
  var dataBaixa: TDateTime;

  end;

var
  FrmRetornoCNAB_Novo: TFrmRetornoCNAB_Novo;

implementation

uses uDataSimples, Uteis, Men0001, DataCad1, DataCad, UFuncoes, uFinanceiroDao, cnab0002,
     uCadastroFormaPagamento, iniciodb;

{$R *.dfm}

procedure TFrmRetornoCNAB_Novo.FormShow(Sender: TObject);
begin
     inherited;
     preencheBancos;
end;

procedure TFrmRetornoCNAB_Novo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TFrmRetornoCNAB_Novo.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
     inherited;
     DataCadastros1.CdSArquivoCNAB.Close;
     DataCadastros1.CdSDupliCNAB.Close;
end;

procedure TFrmRetornoCNAB_Novo.preencheBancos;
begin
     SQLContaBanco.Close;
     SQLContaBanco.CommandText := SQLDEF('BANCOS','SELECT B1.BAN_CODIGO,B1.BAN_CONVENIO,B1.BAN_COD_APELIDO,B1.BAN_APELIDO,B1.BAN_CAMINHO_REMESSA,B1.BAN_CAMINHO_RETORNO FROM BAN0000 B1 ','','B1.BAN_APELIDO','B1.');
     SQLContaBanco.Open;
     CbBancos1.Clear;
     while not SQLContaBanco.Eof do
     begin
          CbBancos1.Items.Add(SQLContaBanco.FieldByname('BAN_APELIDO').AsString);
          SQLContaBanco.Next;
     end;
     SQLContaBanco.First;
end;

procedure TFrmRetornoCNAB_Novo.BitBtnSairClick(Sender: TObject);
begin
     close;
end;

procedure TFrmRetornoCNAB_Novo.CCodigoBco1Exit(Sender: TObject);
begin
     inherited;
     if (self.ActiveControl<>cbBancos1) and (self.ActiveControl<>BitBtnSair) then
     begin
        if SQLContaBanco.Locate('BAN_COD_APELIDO',CCodigoBco1.AsInteger,[]) then
        begin
             CbBancos1.Text           := SQLContaBanco.FieldByname('BAN_APELIDO').AsString;
             wBan_Codigo := SQLContaBanco.FieldByname('BAN_CODIGO').asString;
             FileArqImportar.Enabled  := True;
             BitProcessar.Enabled     := True;
             AtribuiCaminhoRefBanco;
        end
        else
        begin
             uteis.aviso('Banco não encontrado com o código informado ...');
             CbBancos1.Text           := '';
             FileArqImportar.Enabled  := false;
             BitProcessar.Enabled     := false;
             CCodigoBco1.SetFocus;
        end;
     end;
end;

procedure TFrmRetornoCNAB_Novo.CCodigoBco1KeyPress(Sender: TObject;
  var Key: Char);
begin
     if key = #13 then
     begin
         CCodigoBco1Exit(NIL);
         key := #0;
      end;
end;

procedure TFrmRetornoCNAB_Novo.CbBancos1Click(Sender: TObject);
begin
     if SQLContaBanco.Locate('BAN_APELIDO',CbBancos1.Text,[]) then
     begin
          CCodigoBco1.AsInteger    := SQLContaBanco.FieldByname('BAN_COD_APELIDO').AsInteger;
          wBan_Codigo := SQLContaBanco.FieldByname('BAN_CODIGO').asString;
          wBan_convenio := SQLContaBanco.FieldByname('BAN_CONVENIO').asString;
          FileArqImportar.Enabled  := True;
          BitProcessar.Enabled     := True;
          AtribuiCaminhoRefBanco;
     end
     else
     begin
          BitProcessar.Enabled     := false;
          FileArqImportar.Enabled  := false;
     end;
end;

procedure TFrmRetornoCNAB_Novo.AtribuiCaminhoRefBanco;
begin
     if false then ///SQLContaBanco.FieldByName('BAN_CAMINHO_RETORNO').IsNull then
     begin
          wDIR := dbInicio.SistemaLocal+'Bancos\Retorno\'+CCodigoBco1.Text;
          if not DirectoryExists(wDIR) then
          begin
               ForceDirectories(wDIR);
               DataCadastros.SqlUpdate.Close;
               DataCadastros.SqlUpdate.Sql.Text := SQLDEF('BANCOS','UPDATE BAN0000 SET BAN_CAMINHO_RETORNO = '''+wDIR+'''','WHERE BAN_COD_APELIDO = '''+CCodigoBco1.Text+'''','','');
               DataCadastros.SqlUpdate.ExecSql;
          end
          else
              wDIR := SQLContaBanco.FieldByName('BAN_CAMINHO_RETORNO').AsString;
          FileArqImportar.FileName := wDIR+'\';
     end;
end;

procedure TFrmRetornoCNAB_Novo.BitProcessarClick(Sender: TObject);
///
   Procedure MeusButtons(ppFlg:boolean);
   begin
     // BitProcessar.Enabled    := ppFlg;
      CCodigoBco1.Enabled     := ppFlg;
      CbBancos1.Enabled       := ppFlg;
      FileArqImportar.Enabled := ppFlg;
      BitImprimir.Enabled     := ppFlg;
      BitTipoImpressao1.Enabled:= ppFlg;
   end;
///
begin
      MeusButtons( False );

      try
             if ExtractFileName(FileArqImportar.FileName) <> '' then
             begin
                 if NOT MatchSTR(CCodigoBco1.Text,['900','901'])  then
                    ImportarCobrancaCNAB
                 else
                    ImportarOutros;
             end
             else
                uteis.aviso(Pchar('Selecione um arquivo para processar o retorno do banco :'+FormatFloat('000',CCodigoBco1.AsInteger)+'-'+CbBancos1.Text+' !'));

      finally

             MeusButtons( True );

      end;

end;

procedure TFrmRetornoCNAB_Novo.AtualizaArquivoCNABRetorno(wCOD_ARQUIVO,wLITERAL_ARQUIVO,wCOD_SERVICO,wLITERAL_SERVICO,wDATA_ARQ:String);
 Var
  sCod_Cnab,
   sStatusBaixa,
   sDataBaixa,
   sHoraBaixa:String;

///
   Procedure BuscaRegistroCNAB;
   begin
        DataCadastros.SqlUpdate.Close;
        DataCadastros.SqlUpdate.Sql.Text :='SELECT A1.CNAB_REGISTRO '+
                                           'FROM ARQUIVO_CNAB A1 '+
                                           'WHERE A1.CNAB_COD_EMPESA = '+qStr('1')+
                                           '      AND A1.CNAB_CODIGO_BANCO = '+qStr(CCodigoBco1.Text)+
                                           '      AND A1.CNAB_LITERAL_ARQUIVO = '+qStr(wLITERAL_ARQUIVO)+
                                           '      AND A1.CNAB_AGENCIA = '+qStr(PanAgencia.Caption)+
                                           '      AND A1.CNAB_CONTA = '+qStr(PanContaCorr.Caption)+
                                           '      AND A1.CNAB_NOME_ARQUIVO = '+qStr(wARQUIVO) +
                                           '      AND A1.EMP_CODIGO = '+qStr(wCodigoEmpresa) ;
        DataCadastros.SqlUpdate.Open;
   end;
///

begin

     sCod_Cnab    := '';
     sStatusBaixa := 'N';
     sDataBaixa   := 'null';
     sHoraBaixa   := 'null';

     if bl1.LayoutRemessa = c240 then
       sCod_Cnab := '240'
     else
       sCod_Cnab := '400';


     if CCodigoBco1.AsInteger = 399 then
        wARQUIVO := wARQUIVO+'-'+Copy(DateToStr(Date),1,2)+Copy(DateToStr(Date),4,2)+Copy(DateToStr(Date),8,4);

      sStatusBaixa := 'S';
      sDataBaixa   := DateToSql(Date);
      sHoraBaixa   := TimeToSql(Time);

     BuscaRegistroCNAB;

     if DataCadastros.SqlUpdate.IsEmpty then
     begin
           DataCadastros.SqlUpdate.Close;
           DataCadastros.SqlUpdate.Sql.Text :=  'Insert Into ARQUIVO_CNAB ( CNAB_CODIGO, CNAB_COD_EMPESA, CNAB_CODIGO_BANCO, CNAB_COD_ARQUIVO, CNAB_LITERAL_ARQUIVO, '+
                                                '                           CNAB_DATA, CNAB_HORA, CNAB_COD_SERVICO, CNAB_LITERA_SERVICO, CNAB_AGENCIA, CNAB_AGENCIA_DV, '+
                                                '                           CNAB_CONTA, CNAB_CONTA_DV, CNAB_QTDE_DUPLICATA, CNAB_NOME_ARQUIVO, CNAB_STATUS_BAIXA, '+
                                                '                           CNAB_DATA_BAIXA,CNAB_HORA_BAIXA,EMP_CODIGO ) '+
                                                'values( '+qStr(sCod_Cnab)+', '+ //CNAB_CODIGO,
                                                '        1, '+                   //CNAB_COD_EMPESA,
                                                '        '+qStr(CCodigoBco1.Text)+', '+ //CNAB_CODIGO_BANCO,
                                                '        '+qStr(wCOD_ARQUIVO)+', '+ //CNAB_COD_ARQUIVO,
                                                '        '+qStr(wLITERAL_ARQUIVO)+', '+ //CNAB_LITERAL_ARQUIVO, '+
                                                '        '+DateToSql(StrToDate(wDATA_ARQ))+', '+ //CNAB_DATA,
                                                '        '+TimeToSql(Time)+', '+ //CNAB_HORA,
                                                '        '+qStr(wCOD_SERVICO)+', '+ //CNAB_COD_SERVICO,
                                                '        '+qStr(wLITERAL_SERVICO)+', '+ //CNAB_LITERA_SERVICO,
                                                '        '+qStr(PanAgencia.Caption)+', '+ //CNAB_AGENCIA,
                                                '        '+qStr(CdigitoAge.Text)+', '+ //CNAB_AGENCIA_DV, '+
                                                '        '+qStr(PanContaCorr.Caption)+', '+ //CNAB_CONTA,
                                                '        '+qStr(CdigitoC.Text)+', '+ //CNAB_CONTA_DV,
                                                '        '+qStr(wQTD_DUPLICATA.toString)+', '+ //CNAB_QTDE_DUPLICATA,
                                                '        '+qStr(wARQUIVO)+', '+ //CNAB_NOME_ARQUIVO,
                                                '        '+qStr(sStatusBaixa)+', '+ //CNAB_STATUS_BAIXA, '+
                                                '        '+sDataBaixa+', '+ //CNAB_DATA_BAIXA,
                                                '        '+sHoraBaixa+', '+ //CNAB_HORA_BAIXA,
                                                '        '+qStr(wCodigoEmpresa)+' ) '; //EMP_CODIGO ) '+
           if dbinicio.IsDesenvolvimento then
               CopyToClipboard(DataCadastros.SqlUpdate.Sql.Text);
           DataCadastros.SqlUpdate.ExecSql;

           BuscaRegistroCNAB;

     end;
     if not DataCadastros.SqlUpdate.IsEmpty then
     begin
          sCodigoCnab := DataCadastros.SqlUpdate.FieldByName('CNAB_REGISTRO').AsString;
          dbInicio.ExecSql('delete from DUPLICAT_CNAB where DCN_COD_REMESSA='+qStr(sCodigoCnab) );
     end
     else
        sCodigoCnab := '0';

end;

procedure TFrmRetornoCNAB_Novo.AtualizaArquivoCNABRetornoDuplicata;
begin
     DataCadastros1.CdSDupliCNAB.Close;
     DataCadastros1.CdSDupliCNAB.CommandText :=
              'Insert Into DUPLICAT_CNAB ( DCN_COD_REMESSA, DCN_DUPLICATA, DCN_DUP_PARCELA, DCN_IDENTIFICA_TITULO, DCN_COD_OCORRENCIA, DCN_DATA_OCORRENCIA, '+
              '                            DCN_COD_REJEICAO,DCN_INDIC_CREDITO,DCN_NOSSO_NUMERO,DCN_TARIFA,DCN_VALOR_ABATIMENTO, DCN_VALOR_DESCONTO,DCN_VALOR_PAGO, '+
              '                            DCN_JUROS_MORA,DCN_VALOR_MULTA,DCN_STATUS_BAIXA,EMP_CODIGO, DescricaoOcorrencia ) '+
              'values('+qStr( sCodigoCnab )+', '+ //DCN_COD_REMESSA,
              '       '+qStr( wDUPLICATA )+', '+ //DCN_DUPLICATA,
              '       '+qStr( wNPARCELA )+', '+ //DCN_DUP_PARCELA,
              '       '+qStr( wIDENTIFICA_TITULO )+', '+ //DCN_IDENTIFICA_TITULO,
              '       '+qStr( wOCORRENCIA )+', '+ //DCN_COD_OCORRENCIA,
              '       '+DateToSql(wDATA_OCORRENCIA)+', '+ //DCN_DATA_OCORRENCIA, '+
              '       '+qStr( wCOD_REJEICAO )+', '+ //DCN_COD_REJEICAO,
              '       '+qStr( wCOD_INDICACAO )+', '+ //DCN_INDIC_CREDITO,
              '       '+qStr( wNOSSO_NUMERRO )+', '+ //DCN_NOSSO_NUMERO,
              '       '+FloatToSql(StrToFloatDef(wVALOR_TARIFA,0))+', '+  //DCN_TARIFA,
              '       '+FloatToSql(StrToFloatDef(wVALOR_ABATIMENTO,0))+', '+ //DCN_VALOR_ABATIMENTO,
              '       '+FloatToSql(StrToFloatDef(wVALOR_DESCONTO,0))+', '+ //DCN_VALOR_DESCONTO,
              '       '+FloatToSql(StrToFloatDef(wVALOR_PAGO,0))+', '+ //DCN_VALOR_PAGO, '+
              '       '+FloatToSql(StrToFloatDef(wVALOR_JUROS_MORA,0))+', '+ //DCN_JUROS_MORA,
              '       '+FloatToSql(StrToFloatDef(wVALOR_MULTA,0))+', '+ //DCN_VALOR_MULTA,
              '       '+qStr( 'S' )+', '+ //DCN_STATUS_BAIXA,
              '       '+qStr( wCodigoEmpresa )+', '+ //EMP_CODIGO,
              '       '+qStr( wOCORRENCIA_DESC )+' )' ; //DescricaoOcorrencia

     TRY
        DataCadastros1.CdSDupliCNAB.Execute;
     Except
        // CopyToClipBoard( DataCadastros1.CdSDupliCNAB.CommandText );
     END;
end;

procedure TFrmRetornoCNAB_Novo.FormCreate(Sender: TObject);
begin
     inherited;
     height := 515;
     width := 970;
end;

procedure TFrmRetornoCNAB_Novo.FormDestroy(Sender: TObject);
begin
  inherited;
  FrmRetornoCNAB_novo := Nil;
end;

procedure TFrmRetornoCNAB_Novo.BitImprimirClick(Sender: TObject);
begin
    if sCodigoCnab<>'' then
    begin
       wSeleciona := 'WHERE A1.CNAB_REGISTRO = '''+sCodigoCnab+'''';
       wOrdem     := 'A1.CNAB_REGISTRO DESC,A1.CNAB_DATA';
       DataCadastros1.CdSArquivoCNAB.Close;
       DataCadastros1.CdSArquivoCNAB.CommandText := SQLDEF('RECEBER','SELECT A1.* FROM ARQUIVO_CNAB A1 ',wSeleciona,wOrdem,'A1.');
       DataCadastros1.CdSArquivoCNAB.Open;
       ImprimirProtocoloRetornoCNAB400(iif(RadVideo.checked  ,'V','I'),sCodigoCnab,FormatFloat('000',CCodigoBco1.AsInteger));
    end;
end;

procedure TFrmRetornoCNAB_Novo.ButFechaClick(Sender: TObject);
begin
   GbRetorno.Enabled     := True;
   CCodigoBco1.SetFocus;
end;

procedure TFrmRetornoCNAB_Novo.AtualizaArquivoRetorno;
 Var
 wORIGEM,wDESTINO:String;

begin
  {verifica diretorio  para arquivo importado e cria}
   wORIGEM  := '';
   wDESTINO := '';
   //
   //wORIGEM  := ExtractFileDir(FileArqImportar.FileName);
   wORIGEM  := FileArqImportar.FileName;
   wDESTINO := ExtractFileDir(FileArqImportar.FileName)+'\IMPORTADO\'+FormatFloat('000',CCodigoBco1.AsInteger);
   if not DirectoryExists(wDESTINO) then
      ForceDirectories(wDESTINO);
  {copia o arquivo = ORIGEM,DESTINO,ARQUIVO }
  CopiarArquivo(wORIGEM,wDESTINO);
 {apagar arquivo}
  DeletaArquivo(wORIGEM);
end;


procedure TFrmRetornoCNAB_Novo.ImportarCelesc;
begin
 wARQUIVO  := ExtractFileName(FileArqImportar.FileName);
 OpenAux('select emp_codigo from BAN0000 where ban_codigo = '+ QuotedStr(wBan_Codigo));
 wCodigoEmpresa := qAux.FieldByName('emp_codigo').AsString;
 PanAgencia.Caption    := '';
 CdigitoAge.Text       := '';
 PanContaCorr.Caption  := '';
 CdigitoC.Text         := '';

 Screen.Cursor    := CrHourglass;
 try
  SQLConsultaArquivo.Close;
  SQLConsultaArquivo.CommandText :=  'SELECT cnab_registro FROM ARQUIVO_CNAB WHERE CNAB_COD_EMPESA = '+ inttostr(strtoint(wCodigoEmpresa))+
                                     ' AND CNAB_CODIGO_BANCO = '+CCodigoBco1.Text+ ' AND  CNAB_NOME_ARQUIVO ='+ QuotedStr(wARQUIVO);
  SQLConsultaArquivo.Open;
  if not SQLConsultaArquivo.IsEmpty then
     if uteis.confirmacao ( 'O arquivo selecionado já foi processado. Deseja reprocessar? ' )= MrNo then
        Exit;
  SQLConsultaArquivo.Close;

  LerCopel(FileArqImportar.FileName);


 finally
  Screen.Cursor := crDefault;
 end;

end;

procedure TFrmRetornoCNAB_Novo.ImportarCobrancaCNAB;
var i,j : Integer;
    wTIPO_PGTO, wSITUACAO_BAIXA, numdoc : STRING ;

begin

     PanAgencia.Caption    := '';
     CdigitoAge.Clear;
     PanContaCorr.Caption;
     CdigitoC.Clear;
     CCodCarteira.Clear;
     PanCodEmpresa.Caption := '';
     PDisplayDup.Caption   := '';
     PDisplayEmiss.Caption := '  /  /    ';
     PDisplayVenc.Caption  := '  /  /    ';
     CdisplayValor.Clear;
     PanNossoNumero.Caption:= '';
     PDisplayBanco.Caption := '';
     CRegistro.Clear;
     CValorTotal.Clear;
     Gauge.Progress         := 0;

     LblSataus.Caption      := 'Processando arquivo retorno da cobrança (Banco: '+ FormatFloat('000',CCodigoBco1.AsInteger)+' - '+CbBancos1.Text+')';

     Screen.Cursor    := CrHourglass;
     try

        bl1.Banco.TipoCobranca := bl1.GetTipoCobranca(CCodigoBco1.AsInteger);   // pega o banco
        OpenAux('SELECT  * FROM BAN0000 where ban_codigo =  '+ QuotedStr(wBan_Codigo));
        if qAux.FieldByName('ban_leiaute').AsInteger = 2 then
          bl1.LayoutRemessa :=c240
        else
          bl1.LayoutRemessa := c400;
        bl1.LeCedenteRetorno := True ;


        bl1.cedente.convenio := wBan_convenio;
        bl1.NomeArqRetorno := ExtractFileName( FileArqImportar.FileName );
        bl1.DirArqRetorno := ExtractFilePath ( FileArqImportar.FileName );
        bl1.LerRetorno;



        Gauge.MaxValue     := bl1.ListadeBoletos.Count+1;
        PanAgencia.Caption    := StrZero(ExtrairNumeros(bl1.cedente.Agencia),5);
        CdigitoAge.Text       := bl1.cedente.AgenciaDigito;
        PanContaCorr.Caption  := StrZero(ExtrairNumeros(bl1.cedente.Conta),6);
        CdigitoC.Text         := bl1.cedente.ContaDigito;

        if trim(ExtrairNumeros(bl1.Cedente.CNPJCPF))<>'' then  // alguns bancos bb não retornam cnpj
           // busca por cnpj
           wCodigoEmpresa := dbInicio.BuscaUmDadoSqlAsString('select emp_codigo from emp0000 where emp_cgc='+qStr(ExtrairNumeros(bl1.Cedente.CNPJCPF)))
        Else
        begin
           // busca por banco, agencia e conta
           if bl1.cedente.Conta = '' then
             wCodigoEmpresa := DBInicio.Empresa.EMP_CODIGO
           else
             wCodigoEmpresa := dbInicio.BuscaUmDadoSqlAsString( 'SELECT emp_codigo FROM BAN0000 '+
                                                                'where BAN_COD_apelido='+bl1.banco.numero.ToString+
                                                                '      and ban_codage='+IntToStr(bl1.cedente.Agencia.ToInteger)+
                                                                '      and ban_conta='+IntToStr(bl1.cedente.Conta.ToInteger) +
                                                                '      and ban_apelido='+qStr(cbBancos1.Text) );
           bl1.Cedente.CNPJCPF:=FormataCgcCPF(dbInicio.BuscaUmDadoSqlAsString('select emp_cgc from emp0000 where emp_codigo='+qStr(wCodigoEmpresa)));
        end;
        if wCodigoEmpresa <> DBInicio.Empresa.EMP_CODIGO then
          raise Exception.Create('O arquivo da empresa logada é DIFERENTE, o CNPJ do arquivo é :'+bl1.Cedente.CNPJCPF );

        if wCodigoEmpresa = '' then
          raise Exception.Create('Não identificado o arquivo como da empresa logada, o CNPJ do arquivo é :'+bl1.Cedente.CNPJCPF );
        PanCodEmpresa.Caption := dbInicio.BuscaUmDadoSqlAsString('select emp_razao from emp0000 where emp_codigo='+qStr(wCodigoEmpresa));

        {if (wCodigoEmpresa<>dbInicio.Empresa.EMP_CODIGO) then
        begin
             uteis.aviso ( 'Este arquivo pertence a: '+#13+bl1.cedente.Nome+'(CNPJ:'+bl1.Cedente.CNPJCPF+')'+#13+
                           'Empresa logada é : '+#13+dbInicio.Empresa.RAZAO+'(CNPJ:'+FormataCgcCpf(dbInicio.Empresa.CNPJ_CnPF)+')' );
             exit;
        end;}

        wARQUIVO  := ExtractFileName(FileArqImportar.FileName);
        SQLConsultaArquivo.Close;
        SQLConsultaArquivo.CommandText := 'SELECT * FROM ARQUIVO_CNAB WHERE CNAB_COD_EMPESA = '+inttostr(strtoint(wCodigoEmpresa))+ ' AND CNAB_CODIGO_BANCO = '''+CCodigoBco1.Text+''' AND CNAB_AGENCIA = '''+PanAgencia.Caption+''' and CNAB_CONTA = '''+PanContaCorr.Caption+''' and CNAB_NOME_ARQUIVO = '''+wARQUIVO+'''';
        SQLConsultaArquivo.Open;
        if not SQLConsultaArquivo.IsEmpty then
           if uteis.confirmacao ( ('O arquivo selecionado já foi processado. Deseja reprocessar ?') )= MrNo then
              Exit;
        SQLConsultaArquivo.Close;

        if bl1.Banco.Numero<>CCodigoBco1.AsInteger then
        begin
            uteis.aviso(Pchar('Este não é um retorno de cobrança ref. o banco '+CCodigoBco1.Text+' '+CbBancos1.Text+' !'));
            FileArqImportar.Enabled := True;
            FileArqImportar.SetFocus;
            wLogError   := True;
            exit;
         end;

         wQTD_DUPLICATA:= bl1.ListadeBoletos.Count;
         AtualizaArquivoCNABRetorno( bl1.NumeroArquivo.toString, 'RETORNO', '01', 'COBRANCA',   DateToStr( bl1.DataArquivo ) );

         Gauge.Progress        := Gauge.Progress + 1;

         for i := 0 to bl1.ListadeBoletos.Count-1 do
         begin

             if (i/10) = (Int(i/10)) then
               Application.ProcessMessages;

             CCodCarteira.Text     := Bl1.ListadeBoletos.Objects[i].Carteira;
             numdoc :=   RetiraTodaMascara(Bl1.ListadeBoletos.Objects[i].NumeroDocumento);
             PDisplayDup.Caption   := Copy( numdoc, 1 , 6 )+'/'+Copy( numdoc, 7 , 2 );
             PanNossoNumero.Caption:= Bl1.ListadeBoletos.Objects[i].NossoNumero;
             PDisplayEmiss.Caption := DateToStr( Bl1.ListadeBoletos.Objects[i].DataDocumento );
             PDisplayVenc.Caption  := DateToStr( Bl1.ListadeBoletos.Objects[i].Vencimento );
             CdisplayValor.Value   := Bl1.ListadeBoletos.Objects[i].ValorDocumento;
             PDisplayBanco.Caption := CbBancos1.Text;
             CValorTotal.Value     := (CValorTotal.Value + CdisplayValor.Value);
             CRegistro.AsInteger   := (CRegistro.AsInteger + 1);
             if length(trim(numdoc)) > 6 then
               NumDoc              := StrZero(StrToInt(ExtrairNumeros(numdoc)),8)   // 999999-99
             else
               NumDoc              := (ExtrairNumeros(numdoc));
             wDUPLICATA            := Copy( NumDoc, 1 , 6 );
             wNParcela             := Copy( NumDoc, 7 , 2 );

             wIDENTIFICA_TITULO    := Bl1.ListadeBoletos.Objects[i].NossoNumero;
             wNOSSO_NUMERRO        := Bl1.ListadeBoletos.Objects[i].NossoNumero;
             wOCORRENCIA           := Bl1.ListadeBoletos.Objects[i].OcorrenciaOriginal.Descricao;
             wOCORRENCIA_DESC      := copy(Bl1.BANCO.TipoOcorrenciaToDescricao(Bl1.ListadeBoletos.Objects[i].OcorrenciaOriginal.tipo),4,100);
             wDATA_OCORRENCIA      := Bl1.ListadeBoletos.Objects[i].DataOcorrencia;

             {if Bl1.ListadeBoletos.Objects[i].DataBaixa>0 then
                dDataRecebimento   := Bl1.ListadeBoletos.Objects[i].DataBaixa;}
             for j := 0 to Bl1.ListadeBoletos.Objects[i].MotivoRejeicaoComando.Count-1 do
             begin
               if  Bl1.ListadeBoletos.Objects[i].MotivoRejeicaoComando[j] <> '00' then
                 wCOD_REJEICAO :=  Bl1.ListadeBoletos.Objects[i].MotivoRejeicaoComando[j]
               else
                wCOD_REJEICAO := '00';
             end;
             if wCOD_REJEICAO = '' then
               wCOD_REJEICAO := '00';

    //          WREJEICAO := BL1.Banco.CodMotivoRejeicaoToDescricao(Bl1.ListadeBoletos.Objects[i].OcorrenciaOriginal.tipo, strtoint(Bl1.ListadeBoletos.Objects[i].MotivoRejeicaoComando.text));

         //    wCOD_REJEICAO          := ExtrairNumeros(Bl1.ListadeBoletos.Objects[i].MotivoRejeicaoComando.Text);
             wCOD_INDICACAO         := '0'; //codigo indicativo de crédito
             wVALOR_TARIFA          := FormatFloat('######0.00', Bl1.ListadeBoletos.Objects[i].ValorDespesaCobranca );
             wVALOR_ABATIMENTO      := FormatFloat('######0.00', Bl1.ListadeBoletos.Objects[i].ValorAbatimento );
             wVALOR_DESCONTO        := FormatFloat('######0.00', Bl1.ListadeBoletos.Objects[i].ValorDesconto );
             //se o valor recebido foi igual a soma da multa + juros + valor parcela - desconto - tarifa, acrescentar ao valor
             // recebido (pago) a tarifa bancária) e o tipo de documento for liquidado
             if ((Bl1.ListadeBoletos.Objects[i].ValorDespesaCobranca + Bl1.ListadeBoletos.Objects[i].ValorRecebido) =
             ( Bl1.ListadeBoletos.Objects[i].ValorDocumento +
               Bl1.ListadeBoletos.Objects[i].ValorOutrosCreditos + Bl1.ListadeBoletos.Objects[i].ValorMoraJuros -
               Bl1.ListadeBoletos.Objects[i].ValorDesconto )) and
             (bl1.ListadeBoletos.Objects[i].OcorrenciaOriginal.Tipo in [ toRetornoLiquidado,
                                                                        toRetornoLiquidadoAposBaixaOuNaoRegistro,
                                                                        toRetornoLiquidadoEmCartorio,
                                                                        toRetornoLiquidadoParcialmente,
                                                                        toRetornoLiquidadoPorConta,
                                                                        toRetornoLiquidadoSaldoRestante,
                                                                        toRetornoLiquidadoSemRegistro])      then
                wVALOR_PAGO            := FormatFloat('######0.00', Bl1.ListadeBoletos.Objects[i].ValorRecebido +Bl1.ListadeBoletos.Objects[i].ValorDespesaCobranca )
             else
                wVALOR_PAGO            := FormatFloat('######0.00', Bl1.ListadeBoletos.Objects[i].ValorRecebido );

             wVALOR_JUROS_MORA      := FormatFloat('######0.00', Bl1.ListadeBoletos.Objects[i].ValorMoraJuros );
             wVALOR_MULTA           := FormatFloat('######0.00', Bl1.ListadeBoletos.Objects[i].ValorOutrosCreditos );

             AtualizaArquivoCNABRetornoDuplicata;
            if wNParcela <> '' then
               wPESQUISA_TITULO   := ' where FAT_CODIGO = '''+wDUPLICATA+''' and FPC_NUMER = '''+wNParcela+''''
            else
               wPESQUISA_TITULO   := ' where FAT_CODIGO = '''+wDUPLICATA+'''';
            wPesquisa_Titulo := wPesquisa_Titulo+' and emp_codigo = '+qStr( dbInicio.Empresa.EMP_CODIGO );

            // if BuscaUmDadoSqlAsString('SELECT BAN_RESP_BOLETO FROM BAN0000 b WHERE BAN_COD_APELIDO = ' + CCodigoBco1.Text + ' AND EMP_CODIGO = ' + QuotedStr(DBInicio.Emp_Codigo) ) = 'E' then
            if (bl1.banco.numero = 104)  then
              wPesquisa_Titulo := wPesquisa_Titulo+' and FPC_COBNUM = '+qStr( wNOSSO_NUMERRO );


            DataCadastros.SqlUpdate.Close;
            DataCadastros.SqlUpdate.Sql.Text := 'SELECT * FROM FAT_PC01 '+wPESQUISA_TITULO;
            DataCadastros.SqlUpdate.Open;
            if not (DataCadastros.SqlUpdate.IsEmpty) and
              ((DataCadastros.SqlUpdate.FieldByName('FPC_COBNUM').IsNull)  or
              (DataCadastros.SqlUpdate.FieldByName('FPC_COBNUM').AsString = '')) then
              ExecSql( 'UPDATE FAT_PC01 SET FPC_COBNUM = '+QuotedStr(Bl1.ListadeBoletos.Objects[i].NossoNumero)+
                       'WHERE FAT_REGISTRO = '+ PreenchezeroEsquerda(DataCadastros.SqlUpdate.FieldByName('FAT_REGISTRO').AsString,6) );

             if Bl1.ListadeBoletos.Objects[i].OcorrenciaOriginal.tipo in [toRetornoBaixadoViaArquivo,toRetornoBaixaSimples] then
             begin
                if not DataCadastros.SqlUpdate.IsEmpty then
                  ExecSql(' UPDATE FAT_PC01 '+
                          ' SET FPC_SITPAG = ''P'', '+
                          '    FPC_STATUS = ''Devolução'', '+
                          '    FPC_OBS = ' +QuotedStr('Devolução por falta de pagamento no banco em '+DateToStr(Date) ) +
                          ' WHERE FPC_STATUS = ''Pendente'' '+
                          '  AND FPC_STATUS_REMESSA = ''S''  ' +
                          ' AND FAT_REGISTRO = '+   DataCadastros.SqlUpdate.FieldByName('FAT_REGISTRO').AsString
                                 );
             end
             else
             if (Bl1.ListadeBoletos.Objects[i].OcorrenciaOriginal.tipo = toRetornoBaixadoInstAgencia) and (wOCORRENCIA = '10') then
             begin
                if not DataCadastros.SqlUpdate.IsEmpty then
                  ExecSql(' UPDATE FAT_PC01 '+
                          ' SET FPC_SITPAG = ''P'', '+
                          '    FPC_STATUS = ''Devolução'' , '+
                          '    FPC_OBS = ' +QuotedStr( wOCORRENCIA_DESC ) +
                          ' WHERE FAT_REGISTRO = '+   DataCadastros.SqlUpdate.FieldByName('FAT_REGISTRO').AsString
                                 );
             end
             else             if (Bl1.ListadeBoletos.Objects[i].ValorRecebido>0) and
             (bl1.ListadeBoletos.Objects[i].OcorrenciaOriginal.Tipo in [ toRetornoLiquidado,
                                                                        toRetornoLiquidadoAposBaixaOuNaoRegistro,
                                                                        toRetornoLiquidadoEmCartorio,
                                                                        toRetornoLiquidadoParcialmente,
                                                                        toRetornoLiquidadoPorConta,
                                                                        toRetornoLiquidadoSaldoRestante,
                                                                        toRetornoLiquidadoSemRegistro]) then
             begin

                  if (not DataCadastros.SqlUpdate.IsEmpty) then
                  begin

                       ContasReceberBaixaAuto( PreenchezeroEsquerda(DataCadastros.SqlUpdate.FieldByName('FAT_REGISTRO').AsString,6), //sFaturaRegistro,
                                               PreenchezeroEsquerda(wBan_codigo,4), //sContaBancoRegistro,
                                               '5', //sFormaPgtoRegistro,
                                               dbInicio.Usuario.Codigo, //sUsuarioCodido
                                               DataCadastros.SqlUpdate.FieldByName('FPC_VLPARC').AsCurrency, //rPendente,
                                               StrToFloat(wVALOR_PAGO), //rBaixar,
                                               StrToFloat(wVALOR_DESCONTO), //rDesconto,
                                               StrToFloat(wVALOR_JUROS_MORA), //rJuros,
                                               StrToFloat(wVALOR_MULTA), //rMulta,
                                               StrToFloat(wVALOR_PAGO), //rRecebido
                                               StrToFloat(wVALOR_TARIFA), // TARIFA
                                               wDATA_OCORRENCIA ); //dDataRecebimento:TDateTime):Boolean;
                       DataCadastros.SqlUpdate.Close;
                       DataCadastros.SqlUpdate.Sql.Text := 'update FAT_PC01 set FPC_STATUS_BAIXA = '+qStr('A')+wPESQUISA_TITULO;
                       DataCadastros.SqlUpdate.ExecSql;
                  end;
                  DataCadastros.SqlUpdate.Close;

             end;  //se for tipo baixa ele vai excluir gravar "Baixa por falta de pagamento no banco"


             Gauge.Progress        := Gauge.Progress + 1;
             BitVisualizar.Enabled   := True;

         end;
     Finally
            Screen.Cursor    := Crdefault ;
     end;
end;

procedure TFrmRetornoCNAB_Novo.ImportarOutros;
var registro : integer;
    sql :string;
    resultado : TModalResult;
begin
 wARQUIVO  := ExtractFileName(FileArqImportar.FileName);
 OpenAux('select emp_codigo from BAN0000 where ban_codigo = '+ QuotedStr(wBan_Codigo));
 wCodigoEmpresa := qAux.FieldByName('emp_codigo').AsString;
 PanAgencia.Caption    := '';
 CdigitoAge.Text       := '';
 PanContaCorr.Caption  := '';
 CdigitoC.Text         := '';

 Screen.Cursor    := CrHourglass;
 try
   //verificar se já houve importarção do retorno
  sql:= 'SELECT cnab_registro FROM ARQUIVO_CNAB WHERE EMP_CODIGO = '+ QuotedStr( strzero(wCodigoEmpresa,3)) +
                                     ' AND CNAB_CODIGO_BANCO = '+CCodigoBco1.Text+ ' AND  CNAB_NOME_ARQUIVO ='+ QuotedStr(wARQUIVO) +
                                     ' AND CNAB_LITERAL_ARQUIVO = ''RETORNO'' '  ;
  registro := DBINICIO.BuscaUmDadoSqlAsInteger(sql);
  if registro  > 0 then
  begin
      MessageDlg('O arquivo selecionado já foi processado. Não é possível reprocessar', mtError, [mbOK], 0);
        Exit;
  end;
//  if (not SQLConsultaArquivo.IsEmpty) AND (CCodigoBco1.Text = '901') then
//     raise Exception.Create('O arquivo selecionado já foi processado.');



  if CCodigoBco1.Text = '900' then
     LerCopel(FileArqImportar.FileName)
  else if CCodigoBco1.Text = '901' then
  begin
    if not Assigned(frmDataSimples) then
      frmDataSimples := TfrmDataSimples.create(self);
    frmDataSimples.Caption := 'Informe a Data da Baixa';
    frmDataSimples.lbData.Caption := 'Data da Baixa';
    resultado := frmDataSimples.ShowModal;
    dataBaixa := frmDataSimples.Data.Date;
    if resultado = mrOk then
      LerCelesc(FileArqImportar.FileName);
  end;

 finally
  Screen.Cursor := crDefault;
  BitProcessar.Enabled := False;
 end;


end;

function TFrmRetornoCNAB_Novo.ContasReceberBaixaAuto(const sFaturaRegistro, sContaBancoRegistro, sFormaPgtoRegistro, sUsuarioCodido:String;const  rPendente,
                            rBaixar, rDesconto, rJuros,rMulta, rRecebido, rTarifa :Currency;const  dDataRecebimento:TDateTime):Boolean;
begin

     dbInicio.ExecSql( 'delete from FAT_RECEBIMENTO '+
                       'where emp_codigo = '+qStr(dbInicio.Empresa.EMP_CODIGO)+
                       '      and fat_registro='+qStr(sFaturaRegistro)+
                       '      and BAN_CODIGO='+qStr(sContaBancoRegistro) );

     dbInicio.ExecSql( 'INSERT INTO FAT_RECEBIMENTO ( EMP_CODIGO, FAT_REGISTRO, FRE_DATA_RECEBIMENTO, FRE_VALOR, FRE_DESCONTO, FRE_JUROS,'+
                       '       FRE_MULTA, FRE_RECEBIDO, BAN_CODIGO, FPG_REGISTRO, USU_CODIGO )'+
                       'VALUES ('+QuotedStr(dbInicio.Empresa.EMP_CODIGO)+','+ //EMP_CODIGO,
                       '        '+QuotedStr(sFaturaRegistro)+','+ //FAT_REGISTRO,
                       '        '+QuotedStr(DataAmericana(DateToStr(dDataRecebimento)))+','+ //FRE_DATA_RECEBIMENTO,
                       '        '+QuotedStr(ValorAmericano(FloatToStr(rBaixar)))+','+ //FRE_VALOR,
                       '        '+QuotedStr(ValorAmericano(FloatToStr(rDesconto)))+','+ //FRE_DESCONTO,
                       '        '+QuotedStr(ValorAmericano(FloatToStr(rJuros)))+','+ //FRE_JUROS,
                       '        '+QuotedStr(ValorAmericano(FloatToStr(rMulta)))+','+ //FRE_MULTA,
                       '        '+QuotedStr(ValorAmericano(FloatToStr(rRecebido)))+','+ //FRE_RECEBIDO,
                       '        '+QuotedStr(sContaBancoRegistro)+','+ //BAN_CODIGO,
                       '        '+QuotedStr(sFormaPgtoRegistro)+','+ //FPG_REGISTRO,
                       '        '+QuotedStr(sUsuarioCodido)+') ' ); //USU_CODIGO )'+

     dbInicio.ExecSql( 'UPDATE FAT_PC01 SET FPC_PAGTO = '+QuotedStr(DataAmericana(DateToStr(dDataRecebimento)))+', '+
                       '                    FPC_DESCTO = '+ValorAmericano(FloatToStr(rDesconto))+','+
                       '                    FPC_PREVISAO = ''N'','+
                       '                    FPC_JUROS = '+ValorAmericano(FloatToStr(rJuros))+','+
                       '                    FPC_MULTA = '+ValorAmericano(FloatToStr(rMulta))+','+
                       '                    FPC_VLPAGO = '+ValorAmericano(FloatToStr(rRecebido))+', '+
                       '                    FPC_SITPAG = '+qStr('L')+' , FPC_STATUS = '+qStr('Liquidada')+', ' +
                       '                    FPC_TARIFA = '+ValorAmericano(FloatToStr( rTarifa)) +
                       'WHERE FAT_REGISTRO = '+ sFaturaRegistro );

     Result := True;
end;

procedure TFrmRetornoCNAB_Novo.FileArqImportarAfterDialog(Sender: TObject;var Name: String; var Action: Boolean);
begin
   BitImprimir.Enabled       := false;
   BitTipoImpressao1.Enabled := false;
   BitProcessar.Enabled      := True;
end;

procedure TFrmRetornoCNAB_Novo.BitTipoImpressao1Click(Sender: TObject);
begin
     if PanTipo.Visible then
     begin
          PanTipo.Visible    := false;
     end
     else
     begin
         PanTipo.Top        := 335;
         PanTipo.Left       := 431;
         PanTipo.Visible    := True;
     end;
end;

procedure TFrmRetornoCNAB_Novo.BitVisualizarClick(Sender: TObject);
begin
  inherited;
    try
      FrmRetornoCNAB := TFrmRetornoCNAB.Create(Application);
      //FrmRetornoCNAB.Height                   := 550;
      //FrmRetornoCNAB.Top                      := 0;
      //FrmRetornoCNAB.Left                     := 0;
      //FrmRetornoCNAB.Bevel2.Top               := 492;
      //FrmRetornoCNAB.BitBtnSair.Top           := 497;
      //FrmRetornoCNAB.NbookPages.Height        := 490;
      FrmRetornoCNAB.NbookPages.PageIndex     := 0;
      FrmRetornoCNAB.BitBaixaTitulos.Visible  := True;
      FrmRetornoCNAB.BitEstornoRemessa.Visible:= True;
      FrmRetornoCNAB.BitImprimir1.Visible     := True;
      FrmRetornoCNAB.ShowModal;
    finally
      FrmRetornoCNAB.Destroy;
      FrmRetornoCNAB := Nil;
    end;

end;

procedure TFrmRetornoCNAB_Novo.BotoesAcesso;
begin
  if Assigned(FrmRetornoCNAB_Novo) then
  begin

    BitImprimir.Enabled := Uteis.AcessoUsuario('FinanceiroImportação Arquivo Retorno Banco (CNAB)',DBInicio.Usuario.CODIGO,FrmRetornoCNAB_Novo).Relatorio;

  end;
end;

procedure TFrmRetornoCNAB_Novo.RDProtCNABNewPage(Sender: TObject;
  Pagina: Integer);
begin
    RDProtCNAB.imp (001,001, '========================================================================================================================================');
    RDProtCNAB.imp (002,002, dbInicio.Empresa.FANTASIA);
    RDProtCNAB.ImpD(002,136, 'EMISSAO : '+DateToStr(Date),[]);
    RDProtCNAB.ImpF(003,030, 'P R O T O C O L O   R E M E S S A   C O B R A N Ç A   A R Q U I V O   C N A B',[]);
    RDProtCNAB.ImpD(003,136, 'PAGINA  :       '+FormatFLoat('0000',pagina),[]);
    RDProtCNAB.imp (004,001, '========================================================================================================================================');

          RDProtCNAB.ImpF(005,002, 'BANCO REMESSA: '+FormatFloat('000',CCodigoBco1.AsInteger)+' - '+CbBancos1.Text,[]);
          RDProtCNAB.ImpF(005,060, 'DATA REMESSA : '+DataCadastros1.CdSArquivoCNAB.FieldByName('CNAB_DATA').AsString,[]);
          RDProtCNAB.ImpF(005,100, 'NOME DO ARQUIVO : '+DataCadastros1.CdSArquivoCNAB.FieldByName('CNAB_NOME_ARQUIVO').AsString,[]);

    RDProtCNAB.ImpF(006,001, 'INSTRUÇÃO 1: ',[negrito]);
    RDProtCNAB.ImpF(006,070, 'INSTRUÇÃO 2: ',[negrito]);
    SQLDetalhe.Close;
    SQLDetalhe.CommandText := 'select IST_COD_BANCO,IST_CODIGO,IST_DESCRICAO from INSTRUCAO_CNAB where IST_COD_BANCO = '''+CCodigoBco1.Text+'''';
    SQLDetalhe.Open;
    if SQLDetalhe.Locate('IST_CODIGO',SQLRelatorio.FieldByname('DCN_INSTRUCAO1').AsString,[]) then
       RDProtCNAB.ImpF  (006,014,FormatFloat('000',SQLRelatorio.FieldByname('DCN_INSTRUCAO1').AsInteger)+'-'+Copy(SQLDetalhe.FieldByname('IST_DESCRICAO').AsString,1,67),[]);
    if SQLDetalhe.Locate('IST_CODIGO',SQLRelatorio.FieldByname('DCN_INSTRUCAO2').AsString,[]) then
       RDProtCNAB.ImpF  (006,83,FormatFloat('000',SQLRelatorio.FieldByname('DCN_INSTRUCAO2').AsInteger)+'-'+Copy(SQLDetalhe.FieldByname('IST_DESCRICAO').AsString,1,63),[]);
    RDProtCNAB.Imp (007,001, '----------------------------------------------------------------------------------------------------------------------------------------');
    RDProtCNAB.ImpF(008,001, ' FATURA     EMISSÃO    VENCIMENTO     VALOR R$  [                 C L I E N T E                 ]       NOSSO NUMERO   PROTESTAR QT DIAS',[]);
    RDProtCNAB.Imp (009,001, '----------------------------------------------------------------------------------------------------------------------------------------');
end;

procedure TFrmRetornoCNAB_Novo.RDProtCNABBeforeNewPage(Sender: TObject;
  Pagina: Integer);
begin
   RDProtCNAB.imp   (062,001, '========================================================================================================================================');
   RDProtCNAB.impF  (063,001, ' QTDE DE REGISTROS: ',[]);
   RDProtCNAB.impVal(063,022, '000000',iQtdeRegistro,[]);
   RDProtCNAB.impF  (063,098, 'VALOR TOTAL REMESSA : ',[]);
   RDProtCNAB.impVal(063,121, '###,###,##0.00',cTOTAL_GERAL,[]);
   RDProtCNAB.imp   (064,001, '========================================================================================================================================');
end;

procedure TFrmRetornoCNAB_Novo.RDProtRetornoCNABNewPage(Sender: TObject;
  Pagina: Integer);
begin
   RDProtRetornoCNAB.imp (001,001, '========================================================================================================================================');
   RDProtRetornoCNAB.imp (002,002, dbInicio.Empresa.FANTASIA);
   RDProtRetornoCNAB.ImpD(002,136, 'EMISSAO : '+DateToStr(Date),[]);
   RDProtRetornoCNAB.ImpF(003,030, 'P R O T O C O L O   R E T O R N O   C O B R A N Ç A   A R Q U I V O   C N A B',[]);
   RDProtRetornoCNAB.ImpD(003,136, 'PAGINA  :       '+FormatFLoat('0000',pagina),[]);
   RDProtRetornoCNAB.imp (004,001, '========================================================================================================================================');

         RDProtRetornoCNAB.ImpF(005,002, 'BANCO RETORNO: '+FormatFloat('000',CCodigoBco1.AsInteger)+' - '+CbBancos1.Text,[]);
         RDProtRetornoCNAB.ImpF(005,060, 'DATA RETORNO : '+DataCadastros1.CdSArquivoCNAB.FieldByName('CNAB_DATA').AsString,[]);
         RDProtRetornoCNAB.ImpF(005,098, 'NOME DO ARQUIVO : '+DataCadastros1.CdSArquivoCNAB.FieldByName('CNAB_NOME_ARQUIVO').AsString,[]);

   RDProtRetornoCNAB.Imp (006,001, '----------------------------------------------------------------------------------------------------------------------------------------');
end;

procedure TFrmRetornoCNAB_Novo.RDProtRetornoCNABBeforeNewPage(Sender: TObject;
  Pagina: Integer);
begin
   RDProtRetornoCNAB.imp   (064,001, '========================================================================================================================================');
end;

procedure TFrmRetornoCNAB_Novo.ImprimirProtocoloRetornoCNAB400(wSAIDA,wCOD_RETORNO,wCOD_BANCO: String);
Var
  wQtde : Integer;
begin
    try

      {seleciona duplicatas}
      wSql1 := 'SELECT F2.FAT_CODIGO,F2.FPC_NUMER,F2.FPC_VENCTO,F2.FPC_PAGTO,F2.FPC_VLPARC,F2.FPC_JUROS,D1.DCN_VALOR_DESCONTO,D1.DCN_TARIFA,F2.FPC_VLPAGO,C1.CLI_CODIGO,C1.CLI_RAZAO,F2.FPC_COBNUM,'+
      'D1.DCN_DATA_OCORRENCIA,D1.DCN_COD_OCORRENCIA,coalesce(DESCRICAOOCORRENCIA,O1.OCR_DESCRICAO) as OCR_DESCRICAO,';
      wSql2 := 'D1.DCN_COD_REJEICAO,R1.REJ_DESCRICAO '+
      ' FROM DUPLICAT_CNAB D1 LEFT JOIN FAT_PC01 F2 ON (D1.DCN_DUPLICATA = F2.FAT_CODIGO and D1.DCN_DUP_PARCELA = F2.FPC_NUMER) '+
      ' LEFT JOIN CLI0000 C1 ON (F2.CLI_CODIGO = C1.CLI_CODIGO or C1.CLI_UND_CONSUMIDORA = D1.DCN_NOSSO_NUMERO ) ';
      if (DataCadastros1.CdSArquivoCNAB.FieldByName('CNAB_LITERAL_ARQUIVO').AsString = 'RETORNO') or (DataCadastros1.CdSArquivoCNAB.FieldByName('CNAB_LITERAL_ARQUIVO').AsString = 'ESTORNO RETORNO') then
         begin
             wSql3 := 'LEFT JOIN OCORRENCIA_CNAB O1 ON (F2.BAN_COD_APELIDO=O1.OCR_COD_BANCO)AND(D1.DCN_COD_OCORRENCIA=O1.OCR_COD_OCORRENCIA)AND(O1.OCR_TIPO_OCORRENCIA=''T'') LEFT JOIN REJEICAO_CNAB R1 ON (F2.BAN_COD_APELIDO=R1.REJ_COD_BANCO) ';
         end
      else
         wSql3 := 'LEFT JOIN OCORRENCIA_CNAB O1 ON (F2.BAN_COD_APELIDO=O1.OCR_COD_BANCO)AND(D1.DCN_COD_OCORRENCIA=O1.OCR_COD_OCORRENCIA) LEFT JOIN REJEICAO_CNAB R1 ON (F2.BAN_COD_APELIDO=R1.REJ_COD_BANCO) ';
      wSQL4 := ' AND(D1.DCN_COD_REJEICAO=R1.REJ_COD_REJEICAO) WHERE D1.DCN_COD_REMESSA = '''+wCOD_RETORNO+'''';
     //
      if RadNumFatura.Checked then
         wOrdem := ' ORDER BY D1.DCN_COD_OCORRENCIA,D1.DCN_COD_REJEICAO'
      else
         wOrdem := ' ORDER BY F2.CLI_CODIGO,F2.FAT_CODIGO,F2.FPC_NUMER';
     //
      SQLRelatorio.Close;
      SQLRelatorio.CommandText := wSQL1+wSQL2+wSQL3+wSQL4+wOrdem;
      SQLRelatorio.Open;
      wQtde := SqlRelatorio.RecordCount;
      SQLRelatorio.First;
      if wSAIDA = 'V' then
      begin
            RDProtRetornoCNAB.OpcoesPreview.Preview := true;
            RDProtRetornoCNAB.abrir;
            if RDProtRetornoCNAB.Setup = false then
               exit;
      end
      else
      begin
            RDProtRetornoCNAB.OpcoesPreview.Preview := False;
            RDProtRetornoCNAB.abrir;
            if RDProtRetornoCNAB.Setup = false then
               exit;
      end;
      {iniciliza variaveis}
       wSQL1:='';
       wSQL2:='';
       wSQL3:='';
       wSQL4:='';
       wSeleciona:='';
       wOrdem:='';
       iLINHA            := 010;
       iQtdeRegistro     := 0;
       cTOTAL_GERAL      := 0;
       cTOTAL_JUROS      := 0;
       cTOTAL_DESCONTOS  := 0;
       cTOTAL_TARIFAS    := 0;
       wTOTAL_ENTRADAS   := 0;
       wTOTAL_LIQUIDADAS := 0;
       wTOTAL_CARTORIO   := 0;
       wTOTAL_REJEICAO   := 0;
       wTOTAL_BAIXA      := 0;
       wTOTAL_OUTROS     := 0;
       wTOTAL_PROTESTO   := 0;
       iQTDE_ENTRADAS    := 0;
       iQTDE_LIQ         := 0;
       iQTDE_CARTORIO    := 0;
       iQTDE_REJEICAO    := 0;
       iQTDE_BAIXA       := 0;
       iQTDE_PROT        := 0;
       iQTDE_OUTROS      := 0;
       iLINHA := 007;
       if not SQLRelatorio.IsEmpty then
          begin
              while not SQLRelatorio.Eof do
               begin
                   if iLINHA >= 64 Then
                      begin
                          RDProtRetornoCNAB.Novapagina;
                          iLINHA := 007;
                      end;
                   wOcorrencia := SQLRelatorio.FieldByName('DCN_COD_OCORRENCIA').AsString;
                   while (wOcorrencia = SQLRelatorio.FieldByName('DCN_COD_OCORRENCIA').AsString) and not SQLRelatorio.Eof do
                    begin
                        wRejeicao := SQLRelatorio.FieldByName('DCN_COD_REJEICAO').AsString;
                        RDProtRetornoCNAB.ImpF(iLINHA,001, 'OCORRENCIA : ',[negrito]);
                        RDProtRetornoCNAB.ImpF(iLINHA,014,StrZero(SQLRelatorio.FieldByname('DCN_COD_OCORRENCIA').AsString,3)+' - '+Copy(SQLRelatorio.FieldByname('OCR_DESCRICAO').AsString,1,46),[negrito]);
                        INC(iLINHA);
                        if SQLRelatorio.FieldByname('DCN_COD_REJEICAO').AsString <> '000' then
                           begin
                               RDProtRetornoCNAB.ImpF(iLINHA,003, 'REJEIÇÃO : ',[negrito]);
                               RDProtRetornoCNAB.ImpF(iLINHA,014,SQLRelatorio.FieldByname('DCN_COD_REJEICAO').AsString+' - '+Copy(SQLRelatorio.FieldByname('REJ_DESCRICAO').AsString,1,46),[negrito]);
                           end;
                        INC(iLINHA);
                        RDProtRetornoCNAB.Imp (iLINHA,001, '----------------------------------------------------------------------------------------------------------------------------------------');
                        INC(iLINHA);
                        RDProtRetornoCNAB.ImpF(iLINHA,001, 'DUPLICATA NOSSO Nº.   VENCIMENTO DATA PAGTO DIA DT. OCORR. VALOR  R$ JUROS R$ DESC R$ TARIFA VALOR PAGO          C L I E N T E          ',[]);
                        INC(iLINHA);
                        RDProtRetornoCNAB.Imp (iLINHA,001, '----------------------------------------------------------------------------------------------------------------------------------------');
                        INC(iLINHA);
                        while (wRejeicao = SQLRelatorio.FieldByName('DCN_COD_REJEICAO').AsString) and (wOcorrencia = SQLRelatorio.FieldByName('DCN_COD_OCORRENCIA').AsString) and not SQLRelatorio.Eof do
                         begin
                             RDProtRetornoCNAB.ImpF  (iLINHA,001,SQLRelatorio.FieldByname('FAT_CODIGO').AsString+'-'+SQLRelatorio.FieldByname('FPC_NUMER').AsString,[]);
                             RDProtRetornoCNAB.ImpF  (iLINHA,011,SQLRelatorio.FieldByname('FPC_COBNUM').AsString,[]);
                             RDProtRetornoCNAB.ImpF  (iLINHA,023,SQLRelatorio.FieldByname('FPC_VENCTO').AsString,[]);
                             RDProtRetornoCNAB.ImpF  (iLINHA,034,SQLRelatorio.FieldByname('FPC_PAGTO').AsString,[]);
                             if not SQLRelatorio.FieldByname('FPC_PAGTO').IsNull then
                                RDProtRetornoCNAB.ImpVal(iLINHA,045,'00',(SQLRelatorio.FieldByname('FPC_PAGTO').AsDateTime - SQLRelatorio.FieldByname('FPC_VENCTO').AsDateTime),[])
                             else
                                RDProtRetornoCNAB.ImpVal(iLINHA,045,'000',0,[]);
                             RDProtRetornoCNAB.ImpF  (iLINHA,049,SQLRelatorio.FieldByname('DCN_DATA_OCORRENCIA').AsString,[]);
                             RDProtRetornoCNAB.ImpVal(iLINHA,060,'##,##0.00',SQLRelatorio.FieldByname('FPC_VLPARC').AsCurrency,[]);
                             RDProtRetornoCNAB.ImpVal(iLINHA,072,'##0.00',SQLRelatorio.FieldByname('FPC_JUROS').AsCurrency,[]);
                             RDProtRetornoCNAB.ImpVal(iLINHA,080,'##0.00',SQLRelatorio.FieldByname('DCN_VALOR_DESCONTO').AsCurrency,[]);
                             RDProtRetornoCNAB.ImpVal(iLINHA,087,'##0.00',SQLRelatorio.FieldByname('DCN_TARIFA').AsCurrency,[]);
                             RDProtRetornoCNAB.ImpVal(iLINHA,094,'###,##0.00',SQLRelatorio.FieldByname('FPC_VLPAGO').AsCurrency,[]);
                             if (SQLRelatorio.FieldByname('CLI_CODIGO').AsString <>'') then
                                begin
                                    RDProtRetornoCNAB.ImpF  (iLINHA,105,StrZero(SQLRelatorio.FieldByname('CLI_CODIGO').AsString,5),[]);
                                    RDProtRetornoCNAB.ImpF  (iLINHA,110,'-'+Copy(SQLRelatorio.FieldByname('CLI_RAZAO').AsString,1,26),[]);
                                end;
                             Inc(iLINHA);
                             Inc(iQtdeRegistro);
                             {TOTAIS}
                             //cTOTAL_GERAL      := (cTOTAL_GERAL     + SQLRelatorio.FieldByname('CRC_VALOR_DUPLICATA').AsCurrency);
                             cTOTAL_JUROS      := (cTOTAL_JUROS     + SQLRelatorio.FieldByname('FPC_JUROS').AsCurrency);
                             cTOTAL_DESCONTOS  := (cTOTAL_DESCONTOS + SQLRelatorio.FieldByname('DCN_VALOR_DESCONTO').AsCurrency);
                             cTOTAL_TARIFAS    := (cTOTAL_TARIFAS   + SQLRelatorio.FieldByname('DCN_TARIFA').AsCurrency);
                             {RESUMO TITULOS - OCORRENCIAS}
                             if wCOD_BANCO = '399' then
                                begin
                                   if SQLRelatorio.FieldByname('DCN_COD_OCORRENCIA').AsInteger = 02 then {entradas}
                                      begin
                                         wTOTAL_ENTRADAS   := (wTOTAL_ENTRADAS   + SQLRelatorio.FieldByname('FPC_VLPARC').AsCurrency);
                                         Inc(iQTDE_ENTRADAS);
                                      end
                                   else
                                   if SQLRelatorio.FieldByname('DCN_COD_OCORRENCIA').AsInteger in [06,07,15,31,32,33,38,39] then {liquidação}
                                      begin
                                         wTOTAL_LIQUIDADAS := (wTOTAL_LIQUIDADAS + SQLRelatorio.FieldByname('FPC_VLPARC').AsCurrency);
                                         Inc(iQTDE_LIQ);
                                      end
                                   else
                                   if SQLRelatorio.FieldByname('DCN_COD_OCORRENCIA').AsInteger in [15,32] then {Cartorios}
                                      begin
                                         wTOTAL_CARTORIO   := (wTOTAL_CARTORIO   + SQLRelatorio.FieldByname('FPC_VLPARC').AsCurrency);
                                         Inc(iQTDE_CARTORIO);
                                      end
                                   else
                                   if SQLRelatorio.FieldByname('DCN_COD_OCORRENCIA').AsInteger in [03] then {rejeição}
                                      begin
                                         wTOTAL_REJEICAO   := (wTOTAL_REJEICAO   + SQLRelatorio.FieldByname('FPC_VLPARC').AsCurrency);
                                         Inc(iQTDE_REJEICAO);
                                      end
                                   else
                                   if SQLRelatorio.FieldByname('DCN_COD_OCORRENCIA').AsInteger in [09,10,16] then {baixas}
                                      begin
                                         wTOTAL_BAIXA      := (wTOTAL_BAIXA   + SQLRelatorio.FieldByname('FPC_VLPARC').AsCurrency);
                                         Inc(iQTDE_BAIXA);
                                      end
                                   else
                                   if SQLRelatorio.FieldByname('DCN_COD_OCORRENCIA').AsInteger in [37] then {protestados}
                                      begin
                                         wTOTAL_PROTESTO   := (wTOTAL_PROTESTO   + SQLRelatorio.FieldByname('FPC_VLPARC').AsCurrency);
                                         Inc(iQTDE_PROT);
                                      end
                                   else
                                      begin
                                         wTOTAL_OUTROS   := (wTOTAL_OUTROS   + SQLRelatorio.FieldByname('FPC_VLPARC').AsCurrency);
                                         Inc(iQTDE_OUTROS);
                                      end;
                                end
                             else
                             if wCOD_BANCO = '104' then
                                begin
                                   if SQLRelatorio.FieldByname('DCN_COD_OCORRENCIA').AsInteger = 01 then {entradas}
                                      begin
                                         wTOTAL_ENTRADAS   := (wTOTAL_ENTRADAS   + SQLRelatorio.FieldByname('FPC_VLPARC').AsCurrency);
                                         Inc(iQTDE_ENTRADAS);
                                      end
                                   else
                                   if SQLRelatorio.FieldByname('DCN_COD_OCORRENCIA').AsInteger in [21] then {liquidação}
                                      begin
                                         wTOTAL_LIQUIDADAS := (wTOTAL_LIQUIDADAS + SQLRelatorio.FieldByname('FPC_VLPARC').AsCurrency);
                                         Inc(iQTDE_LIQ);
                                      end
                                   else
                                   if SQLRelatorio.FieldByname('DCN_COD_OCORRENCIA').AsInteger in [22] then {Cartorios}
                                      begin
                                         wTOTAL_CARTORIO   := (wTOTAL_CARTORIO   + SQLRelatorio.FieldByname('FPC_VLPARC').AsCurrency);
                                         Inc(iQTDE_CARTORIO);
                                      end
                                   else
                                   if SQLRelatorio.FieldByname('DCN_COD_OCORRENCIA').AsInteger in [99] then {rejeição}
                                      begin
                                         wTOTAL_REJEICAO   := (wTOTAL_REJEICAO   + SQLRelatorio.FieldByname('FPC_VLPARC').AsCurrency);
                                         Inc(iQTDE_REJEICAO);
                                      end
                                   else
                                   if SQLRelatorio.FieldByname('DCN_COD_OCORRENCIA').AsInteger in [23,24] then {baixas}
                                      begin
                                         wTOTAL_BAIXA      := (wTOTAL_BAIXA   + SQLRelatorio.FieldByname('FPC_VLPARC').AsCurrency);
                                         Inc(iQTDE_BAIXA);
                                      end
                                   else
                                   if SQLRelatorio.FieldByname('DCN_COD_OCORRENCIA').AsInteger in [25] then {protestados}
                                      begin
                                         wTOTAL_PROTESTO   := (wTOTAL_PROTESTO   + SQLRelatorio.FieldByname('FPC_VLPARC').AsCurrency);
                                         Inc(iQTDE_PROT);
                                      end
                                   else
                                      begin
                                         wTOTAL_OUTROS   := (wTOTAL_OUTROS   + SQLRelatorio.FieldByname('FPC_VLPARC').AsCurrency);
                                         Inc(iQTDE_OUTROS);
                                      end;
                                end
                             else
                             if wCOD_BANCO = '008' then
                                begin
                                   if SQLRelatorio.FieldByname('DCN_COD_OCORRENCIA').AsInteger = 02 then {entradas}
                                      begin
                                         wTOTAL_ENTRADAS   := (wTOTAL_ENTRADAS   + SQLRelatorio.FieldByname('FPC_VLPARC').AsCurrency);
                                         Inc(iQTDE_ENTRADAS);
                                      end
                                   else
                                   if SQLRelatorio.FieldByname('DCN_COD_OCORRENCIA').AsInteger in [06,16] then {liquidação}
                                      begin
                                         wTOTAL_LIQUIDADAS := (wTOTAL_LIQUIDADAS + SQLRelatorio.FieldByname('FPC_VLPARC').AsCurrency);
                                         Inc(iQTDE_LIQ);
                                      end
                                   else
                                   if SQLRelatorio.FieldByname('DCN_COD_OCORRENCIA').AsInteger in [15] then {Cartorios}
                                      begin
                                         wTOTAL_CARTORIO   := (wTOTAL_CARTORIO   + SQLRelatorio.FieldByname('FPC_VLPARC').AsCurrency);
                                         Inc(iQTDE_CARTORIO);
                                      end
                                   else
                                   if SQLRelatorio.FieldByname('DCN_COD_OCORRENCIA').AsInteger in [03] then {rejeição}
                                      begin
                                         wTOTAL_REJEICAO   := (wTOTAL_REJEICAO   + SQLRelatorio.FieldByname('FPC_VLPARC').AsCurrency);
                                         Inc(iQTDE_REJEICAO);
                                      end
                                   else
                                   if SQLRelatorio.FieldByname('DCN_COD_OCORRENCIA').AsInteger in [09,10] then {baixas}
                                      begin
                                         wTOTAL_BAIXA      := (wTOTAL_BAIXA   + SQLRelatorio.FieldByname('FPC_VLPARC').AsCurrency);
                                         Inc(iQTDE_BAIXA);
                                      end
                                   else
                                   if SQLRelatorio.FieldByname('DCN_COD_OCORRENCIA').AsInteger in [32] then {protestados}
                                      begin
                                         wTOTAL_PROTESTO   := (wTOTAL_PROTESTO   + SQLRelatorio.FieldByname('FPC_VLPARC').AsCurrency);
                                         Inc(iQTDE_PROT);
                                      end
                                   else
                                      begin
                                         wTOTAL_OUTROS   := (wTOTAL_OUTROS   + SQLRelatorio.FieldByname('FPC_VLPARC').AsCurrency);
                                         Inc(iQTDE_OUTROS);
                                      end;
                                end
                             else
                             if wCOD_BANCO = '341' then
                                begin
                                   if SQLRelatorio.FieldByname('DCN_COD_OCORRENCIA').AsInteger = 02 then {entradas}
                                      begin
                                         wTOTAL_ENTRADAS   := (wTOTAL_ENTRADAS   + SQLRelatorio.FieldByname('FPC_VLPARC').AsCurrency);
                                         Inc(iQTDE_ENTRADAS);
                                      end
                                   else
                                   if SQLRelatorio.FieldByname('DCN_COD_OCORRENCIA').AsInteger in [06] then {liquidação}
                                      begin
                                         wTOTAL_LIQUIDADAS := (wTOTAL_LIQUIDADAS + SQLRelatorio.FieldByname('FPC_VLPARC').AsCurrency);
                                         Inc(iQTDE_LIQ);
                                      end
                                   else
                                   if SQLRelatorio.FieldByname('DCN_COD_OCORRENCIA').AsInteger in [08] then {Cartorios}
                                      begin
                                         wTOTAL_CARTORIO   := (wTOTAL_CARTORIO   + SQLRelatorio.FieldByname('FPC_VLPARC').AsCurrency);
                                         Inc(iQTDE_CARTORIO);
                                      end
                                   else
                                   if SQLRelatorio.FieldByname('DCN_COD_OCORRENCIA').AsInteger in [03] then {rejeição}
                                      begin
                                         wTOTAL_REJEICAO   := (wTOTAL_REJEICAO   + SQLRelatorio.FieldByname('FPC_VLPARC').AsCurrency);
                                         Inc(iQTDE_REJEICAO);
                                      end
                                   else
                                   if SQLRelatorio.FieldByname('DCN_COD_OCORRENCIA').AsInteger in [09,10,15] then {baixas}
                                      begin
                                         wTOTAL_BAIXA      := (wTOTAL_BAIXA   + SQLRelatorio.FieldByname('FPC_VLPARC').AsCurrency);
                                         Inc(iQTDE_BAIXA);
                                      end
                                   else
                                   if SQLRelatorio.FieldByname('DCN_COD_OCORRENCIA').AsInteger in [32] then {protestados}
                                      begin
                                         wTOTAL_PROTESTO   := (wTOTAL_PROTESTO   + SQLRelatorio.FieldByname('FPC_VLPARC').AsCurrency);
                                         Inc(iQTDE_PROT);
                                      end
                                   else
                                      begin
                                         wTOTAL_OUTROS   := (wTOTAL_OUTROS   + SQLRelatorio.FieldByname('FPC_VLPARC').AsCurrency);
                                         Inc(iQTDE_OUTROS);
                                      end;
                                end
                             else
                             if wCOD_BANCO = '237' then
                                begin
                                   if SQLRelatorio.FieldByname('DCN_COD_OCORRENCIA').AsInteger = 02 then {entradas}
                                      begin
                                         wTOTAL_ENTRADAS   := (wTOTAL_ENTRADAS   + SQLRelatorio.FieldByname('FPC_VLPARC').AsCurrency);
                                         Inc(iQTDE_ENTRADAS);
                                      end
                                   else
                                   if SQLRelatorio.FieldByname('DCN_COD_OCORRENCIA').AsInteger in [06,16] then {liquidação}
                                      begin
                                         wTOTAL_LIQUIDADAS := (wTOTAL_LIQUIDADAS + SQLRelatorio.FieldByname('FPC_VLPARC').AsCurrency);
                                         Inc(iQTDE_LIQ);
                                      end
                                   else
                                   if SQLRelatorio.FieldByname('DCN_COD_OCORRENCIA').AsInteger in [15] then {Cartorios}
                                      begin
                                         wTOTAL_CARTORIO   := (wTOTAL_CARTORIO   + SQLRelatorio.FieldByname('FPC_VLPARC').AsCurrency);
                                         Inc(iQTDE_CARTORIO);
                                      end
                                   else
                                   if SQLRelatorio.FieldByname('DCN_COD_OCORRENCIA').AsInteger in [03] then {rejeição}
                                      begin
                                         wTOTAL_REJEICAO   := (wTOTAL_REJEICAO   + SQLRelatorio.FieldByname('FPC_VLPARC').AsCurrency);
                                         Inc(iQTDE_REJEICAO);
                                      end
                                   else
                                   if SQLRelatorio.FieldByname('DCN_COD_OCORRENCIA').AsInteger in [09,10] then {baixas}
                                      begin
                                         wTOTAL_BAIXA      := (wTOTAL_BAIXA   + SQLRelatorio.FieldByname('FPC_VLPARC').AsCurrency);
                                         Inc(iQTDE_BAIXA);
                                      end
                                   else
                                   if SQLRelatorio.FieldByname('DCN_COD_OCORRENCIA').AsInteger in [19] then {protestados}
                                      begin
                                         wTOTAL_PROTESTO   := (wTOTAL_PROTESTO   + SQLRelatorio.FieldByname('FPC_VLPARC').AsCurrency);
                                         Inc(iQTDE_PROT);
                                      end
                                   else
                                      begin
                                         wTOTAL_OUTROS   := (wTOTAL_OUTROS   + SQLRelatorio.FieldByname('FPC_VLPARC').AsCurrency);
                                         Inc(iQTDE_OUTROS);
                                      end;
                                end
                             else
                             if wCOD_BANCO = '001' then
                                begin
                                   if SQLRelatorio.FieldByname('DCN_COD_OCORRENCIA').AsInteger = 02 then {entradas}
                                      begin
                                         wTOTAL_ENTRADAS   := (wTOTAL_ENTRADAS   + SQLRelatorio.FieldByname('FPC_VLPARC').AsCurrency);
                                         Inc(iQTDE_ENTRADAS);
                                      end
                                   else
                                   if SQLRelatorio.FieldByname('DCN_COD_OCORRENCIA').AsInteger in [05,06,07,08] then {liquidação}
                                      begin
                                         wTOTAL_LIQUIDADAS := (wTOTAL_LIQUIDADAS + SQLRelatorio.FieldByname('FPC_VLPARC').AsCurrency);
                                         Inc(iQTDE_LIQ);
                                      end
                                   else
                                   if SQLRelatorio.FieldByname('DCN_COD_OCORRENCIA').AsInteger in [15] then {Cartorios}
                                      begin
                                         wTOTAL_CARTORIO   := (wTOTAL_CARTORIO   + SQLRelatorio.FieldByname('FPC_VLPARC').AsCurrency);
                                         Inc(iQTDE_CARTORIO);
                                      end
                                   else
                                   if SQLRelatorio.FieldByname('DCN_COD_OCORRENCIA').AsInteger in [03] then {rejeição}
                                      begin
                                         wTOTAL_REJEICAO   := (wTOTAL_REJEICAO   + SQLRelatorio.FieldByname('FPC_VLPARC').AsCurrency);
                                         Inc(iQTDE_REJEICAO);
                                      end
                                   else
                                   if SQLRelatorio.FieldByname('DCN_COD_OCORRENCIA').AsInteger in [09,10] then {baixas}
                                      begin
                                         wTOTAL_BAIXA      := (wTOTAL_BAIXA   + SQLRelatorio.FieldByname('FPC_VLPARC').AsCurrency);
                                         Inc(iQTDE_BAIXA);
                                      end
                                   else
                                   if SQLRelatorio.FieldByname('DCN_COD_OCORRENCIA').AsInteger in [19] then {protestados}
                                      begin
                                         wTOTAL_PROTESTO   := (wTOTAL_PROTESTO   + SQLRelatorio.FieldByname('FPC_VLPARC').AsCurrency);
                                         Inc(iQTDE_PROT);
                                      end
                                   else
                                      begin
                                         wTOTAL_OUTROS   := (wTOTAL_OUTROS   + SQLRelatorio.FieldByname('FPC_VLPARC').AsCurrency);
                                         Inc(iQTDE_OUTROS);
                                      end;
                                end;
                             SQLRelatorio.Next;
                             if (wRejeicao = SQLRelatorio.FieldByName('DCN_COD_REJEICAO').AsString) and (wOcorrencia = SQLRelatorio.FieldByName('DCN_COD_OCORRENCIA').AsString) then
                                begin
                                    if iLINHA >= 64 Then
                                       begin
                                          RDProtRetornoCNAB.Novapagina;
                                          iLINHA       := 007;
                                          RDProtRetornoCNAB.ImpF(iLINHA,001, 'OCORRENCIA : ',[negrito]);
                                          RDProtRetornoCNAB.ImpF(iLINHA,014,StrZero(SQLRelatorio.FieldByname('DCN_COD_OCORRENCIA').AsString,3)+' - '+Copy(SQLRelatorio.FieldByname('OCR_DESCRICAO').AsString,1,46),[negrito]);
                                          INC(iLINHA);
                                          if SQLRelatorio.FieldByname('DCN_COD_REJEICAO').AsString <> '000' then
                                             begin
                                                 RDProtRetornoCNAB.ImpF(iLINHA,003, 'REJEIÇÃO : ',[negrito]);
                                                 RDProtRetornoCNAB.ImpF(iLINHA,014,SQLRelatorio.FieldByname('DCN_COD_REJEICAO').AsString+' - '+Copy(SQLRelatorio.FieldByname('REJ_DESCRICAO').AsString,1,46),[negrito]);
                                             end;
                                          INC(iLINHA);
                                          RDProtRetornoCNAB.Imp (iLINHA,001, '----------------------------------------------------------------------------------------------------------------------------------------');
                                          INC(iLINHA);
                                       end;
                                end;


                         end;
                        RDProtRetornoCNAB.Imp (iLINHA,001, '----------------------------------------------------------------------------------------------------------------------------------------');
                        INC(iLINHA);
                    end;
               end;
              {resumo}
              if iLINHA >= 50 Then
                 begin
                    RDProtRetornoCNAB.Novapagina;
                    iLINHA       := 007;
                 end
              else
                 begin
                     iLINHA:=iLINHA+5;
                 end;
              RDProtRetornoCNAB.impF  (iLINHA,001, '[--------------R E S U M O   D O S  T I T U L O S--------------]',[]);
              Inc(iLINHA);
              RDProtRetornoCNAB.impF  (iLINHA,002, 'TOTAL ENTRADAS   : ',[]);
              RDProtRetornoCNAB.ImpVal(iLINHA,024, '#,###,##0.00',wTOTAL_ENTRADAS,[]);
              RDProtRetornoCNAB.impF  (iLINHA,040, 'QTDE. TITULOS:',[]);
              RDProtRetornoCNAB.ImpVal(iLINHA,058, '000000',iQTDE_ENTRADAS,[]);
              //
              Inc(iLINHA);
              RDProtRetornoCNAB.impF  (iLINHA,002, 'TOTAL LIQUIDADAS : ',[]);
              RDProtRetornoCNAB.ImpVal(iLINHA,024, '#,###,##0.00',wTOTAL_LIQUIDADAS,[]);
              RDProtRetornoCNAB.impF  (iLINHA,040, 'QTDE. TITULOS:',[]);
              RDProtRetornoCNAB.ImpVal(iLINHA,058, '000000',iQTDE_LIQ,[]);
              //
              Inc(iLINHA);
              RDProtRetornoCNAB.impF  (iLINHA,002, 'TOTAL CARTORIOS  : ',[]);
              RDProtRetornoCNAB.ImpVal(iLINHA,024, '#,###,##0.00',wTOTAL_CARTORIO,[]);
              RDProtRetornoCNAB.impF  (iLINHA,040, 'QTDE. TITULOS:',[]);
              RDProtRetornoCNAB.ImpVal(iLINHA,058, '000000',iQTDE_CARTORIO,[]);
              //
              Inc(iLINHA);
              RDProtRetornoCNAB.impF  (iLINHA,002, 'TOTAL REJEIÇÕES  : ',[]);
              RDProtRetornoCNAB.ImpVal(iLINHA,024, '#,###,##0.00',wTOTAL_REJEICAO,[]);
              RDProtRetornoCNAB.impF  (iLINHA,040, 'QTDE. TITULOS:',[]);
              RDProtRetornoCNAB.ImpVal(iLINHA,058, '000000',iQTDE_REJEICAO,[]);
              //
              Inc(iLINHA);
              RDProtRetornoCNAB.impF  (iLINHA,002, 'TOTAL BAIXAS     : ',[]);
              RDProtRetornoCNAB.ImpVal(iLINHA,024, '#,###,##0.00',wTOTAL_BAIXA,[]);
              RDProtRetornoCNAB.impF  (iLINHA,040, 'QTDE. TITULOS:',[]);
              RDProtRetornoCNAB.ImpVal(iLINHA,058, '000000',iQTDE_BAIXA,[]);
              //
              Inc(iLINHA);
              RDProtRetornoCNAB.impF  (iLINHA,002, 'TOTAL PROTESTOS  : ',[]);
              RDProtRetornoCNAB.ImpVal(iLINHA,024, '#,###,##0.00',wTOTAL_PROTESTO,[]);
              RDProtRetornoCNAB.impF  (iLINHA,040, 'QTDE. TITULOS:',[]);
              RDProtRetornoCNAB.ImpVal(iLINHA,058, '000000',iQTDE_PROT,[]);
              //
              Inc(iLINHA);
              RDProtRetornoCNAB.impF  (iLINHA,002, 'TOTAL OUTROS     : ',[]);
              RDProtRetornoCNAB.ImpVal(iLINHA,024, '#,###,##0.00',wTOTAL_OUTROS,[]);
              RDProtRetornoCNAB.impF  (iLINHA,040, 'QTDE. TITULOS:',[]);
              RDProtRetornoCNAB.ImpVal(iLINHA,058, '000000',iQTDE_OUTROS,[]);
              //
              Inc(iLINHA);
              RDProtRetornoCNAB.impF  (iLINHA,002, 'TOTAL JUROS      : ',[]);
              RDProtRetornoCNAB.ImpVal(iLINHA,024, '#,###,##0.00',cTOTAL_JUROS,[]);
              //
              Inc(iLINHA);
              RDProtRetornoCNAB.impF  (iLINHA,002, 'TOTAL TARIFAS    : ',[]);
              RDProtRetornoCNAB.ImpVal(iLINHA,024, '#,###,##0.00',cTOTAL_TARIFAS,[]);
              //
              Inc(iLINHA);
              RDProtRetornoCNAB.impF  (iLINHA,002, 'SUB - TOTAL      : ',[]);
              RDProtRetornoCNAB.ImpVal(iLINHA,024, '#,###,##0.00',(wTOTAL_ENTRADAS+wTOTAL_LIQUIDADAS+wTOTAL_CARTORIO+wTOTAL_REJEICAO+wTOTAL_BAIXA+wTOTAL_PROTESTO+cTOTAL_JUROS+cTOTAL_TARIFAS+wTOTAL_OUTROS),[]);
              //
              Inc(iLINHA);
              RDProtRetornoCNAB.impF  (iLINHA,002, 'TOTAL DESCOTOS   : ',[]);
              RDProtRetornoCNAB.ImpVal(iLINHA,024, '#,###,##0.00',cTOTAL_DESCONTOS,[]);
              //
              Inc(iLINHA);
              RDProtRetornoCNAB.impF  (iLINHA,002, 'TOTAL GERAL      : ',[]);
              RDProtRetornoCNAB.ImpVal(iLINHA,024, '#,###,##0.00',((wTOTAL_ENTRADAS+wTOTAL_LIQUIDADAS+wTOTAL_CARTORIO+wTOTAL_REJEICAO+wTOTAL_BAIXA+wTOTAL_PROTESTO+cTOTAL_JUROS+cTOTAL_TARIFAS+wTOTAL_OUTROS) - cTOTAL_DESCONTOS),[]);
              RDProtRetornoCNAB.impF  (iLINHA,040, 'QTDE. TITULOS:',[]);
              RDProtRetornoCNAB.ImpVal(iLINHA,058, '000000',(iQTDE_ENTRADAS+iQTDE_LIQ+iQTDE_CARTORIO+iQTDE_REJEICAO+iQTDE_BAIXA+iQTDE_PROT+iQTDE_OUTROS),[]);
              Inc(iLINHA);
              RDProtRetornoCNAB.impF  (iLINHA,001, '----------------------------------------------------------------',[]);
          end;
    finally

     RDProtRetornoCNAB.Fechar;
   end;
end;

procedure TFrmRetornoCNAB_Novo.LerCelesc(NomeArq: string);
var Retorno: TStringList;
  i: integer;
  cli_codigo, parcela,codRet, codConsumidora : string;
  numdoc :string;
  dataArq : TDateTime;
  erroMsg: string;
  codMsg: integer;
  REG: STRING;
  wtipoRegistro : word;
begin
{ no celesc não temos o retorno da numero da fatura assim pegamos o numero do cliente no  banco e vemos a ultima parcela pedente
}
  Retorno:= TStringList.Create;
   try

     if ExtractFileName( NomeArq ) = '' then
       GeraException('Nome retorno deve ser informado.');
     if not FilesExists( NomeArq ) then
       GeraException('Arquivo não encontrado:'+sLineBreak+NomeArq);
     retorno.LoadFromFile(NomeArq);
     if retorno.Count < 2 then
       GeraException('Arquivo vazio');
     if copy(Retorno.Strings[0],144,1) <> '2' then
         GeraException('Arquivo não é retorno CELESC');
     if trim(copy(Retorno.Strings[0],82,2)) <> '' then
     begin

       case StrToIntDef(copy(Retorno.Strings[0],82,2),0) of
        01: erroMsg:= 'Código da empresa Contratante não existe.';
        02: erroMsg:= 'Código da empresa não existe.';
        03: erroMsg:= 'Data de envio inválida.';
        04: erroMsg:= 'Sigla da moeda não existe.';
        05: erroMsg:= 'Tipo de registro inválido.';
        10: erroMsg:= 'Falta HEADER.';
        11: erroMsg:= 'Falta DETAIL.';
        12: erroMsg:= 'Falta FOOTER.';
        21: erroMsg:= 'Sequência de envio inválida.';
        22: erroMsg:= 'Sequência de numeração de DETAIL inválidas.';
        30: erroMsg:= 'Código da conta contábil não prevista no contrato de convênio.';
        41: erroMsg:= 'Quantidade registros de DETAIL não confere.';
        42: erroMsg:= 'Valor total não confere.';
        51: erroMsg:= 'Formato inválido.';
        52: erroMsg:= 'Problemas na transmissão.';
        53: erroMsg:= 'Tamanho do Layout inválido.';
        54: erroMsg:= 'Código de envio inválido.';
        60: erroMsg:= 'Data de vigência do contrato do Contratante vencido.';
       end;
       codMsg:= StrToIntDef(copy(Retorno.Strings[0],82,2),0)
     end;



     wQTD_DUPLICATA :=  Retorno.Count-2;
     CRegistro.Value := wQTD_DUPLICATA;
     Gauge.MaxValue := wQTD_DUPLICATA;

     PDisplayBanco.Caption := 'CELESC DISTRIBUIÇÃO S.A';
     CValorTotal.Clear;
     dataArq := NOW;
    // dataArq:= EncodeDate( StrToInt(copy(Retorno.Strings[0],66,4)),StrToInt(copy(Retorno.Strings[0],70,2)) ,StrToInt(copy(Retorno.Strings[0],72,2)) );
//     dataArq:= StrToDateDef(copy(Retorno.Strings[0],66,8),Date,'yyyymmdd');
     AtualizaArquivoCNABRetorno(copy(Retorno.Strings[0],74,6), 'RETORNO', '01', 'COBRANCA', DateToStr(dataArq ) );
     Gauge.Progress        :=  1;



     formaPagamentoPadrao := BuscaUmDadoSqlAsInteger('SELECT FPG_REGISTRO FROM BAN0000 b WHERE BAN_CODIGO = ' + QuotedStr(wBan_Codigo));
     if formaPagamentoPadrao = 0 then
       formaPagamentoPadrao := 4;


     for I := 1 to Retorno.Count-2 do //desconsiderar head e trailer
     begin
        Application.ProcessMessages;
        Gauge.Progress        := Gauge.Progress + 1;
       // REGISTRO 2 :  comando de cadastramento, atualização cadastral ou cancelamento de cliente no plano ,
       //REGISTRO 6 :  informação de lançamento de valores de cobrança ou crédito no faturamento
       wtipoRegistro := StrToIntDef(copy(Retorno.Strings[i],1,1),0) ;
       codConsumidora := copy(Retorno.Strings[i],2,13);
       wNOSSO_NUMERRO        :=  codConsumidora;
       {*** falta -> inicio }
       if wtipoRegistro = 6 then
       begin
//         numdoc := copy(retorno.Strings[i],120,9);
//         wDUPLICATA            := Copy( NumDoc, 1 , 6 );
//         wNParcela             := Copy( NumDoc, 8 , 2 );
         {*** falta -> fim }
         wCOD_INDICACAO        := '0'; //codigo indicativo de crédito
         wVALOR_TARIFA         := '0';
         wVALOR_ABATIMENTO     := '0';
         wVALOR_DESCONTO       := '0';
         wVALOR_PAGO           := IntToStr(strtoint(copy(retorno.Strings[i],15,7)))+','+copy(retorno.Strings[i],22,2);
         wVALOR_JUROS_MORA     := '0';
         wVALOR_MULTA          := '0';
         wNOSSO_NUMERRO        := copy(Retorno.Strings[i],2,13) ;  //Identificação do cliente na COPEL
         //Data do lançamento 24 31 8
         if trim(copy(Retorno.Strings[i],24,8))='' then
           wDATA_OCORRENCIA := dataArq
         else
           wDATA_OCORRENCIA     := dataBaixa;
//           wDATA_OCORRENCIA     := EncodeDate( StrToInt(copy(Retorno.Strings[i],28,4)),StrToInt(copy(Retorno.Strings[i],26,2)) ,StrToInt(copy(Retorno.Strings[i],24,2)) );

         wOCORRENCIA  := copy(retorno.Strings[i],32,2);  //32-33
        case StrToInt(wOCORRENCIA) of
          81 : wOCORRENCIA_DESC := 'Faturado';
          82 : wOCORRENCIA_DESC := 'Arrecadado (Fatura Paga)';
          86 : wOCORRENCIA_DESC := 'Alteração de vencimento';
          90 : wOCORRENCIA_DESC := 'Cancelado';
          91 : wOCORRENCIA_DESC := 'Cancelamento da arrecadação';
        end;

       end
       else
       if wtipoRegistro = 2 then
       begin

         continue;

         numdoc := '';
         wDUPLICATA            := '';
         wNParcela             := '';
         {*** falta -> fim }
         wCOD_INDICACAO        := '';
         wVALOR_TARIFA         := '';
         wVALOR_ABATIMENTO     := '';
         wVALOR_DESCONTO       := '';
         wVALOR_PAGO           := '';
         wVALOR_JUROS_MORA     := '';
         wVALOR_MULTA          := '';

         //Data do lançamento 24 31 8
         if trim(copy(Retorno.Strings[i],28,4))='' then
           wDATA_OCORRENCIA := dataArq
         else
           wDATA_OCORRENCIA      := EncodeDate( StrToInt(copy(Retorno.Strings[i],28,4)),StrToInt(copy(Retorno.Strings[i],26,2)) ,StrToInt(copy(Retorno.Strings[i],24,2)) );
         if erroMsg = '' then
         begin
           wOCORRENCIA  := copy(retorno.Strings[i],42,2);  //42-43
           if  wOCORRENCIA = '29' then
            continue;

           wCOD_REJEICAO := '00';
           case StrToInt(wOCORRENCIA) of
              00 : wOCORRENCIA_DESC := 'Ativo';
              01 : wOCORRENCIA_DESC := 'Dificuldade financeira.';
              02 : wOCORRENCIA_DESC := 'Já possui seguro.';
              03 : wOCORRENCIA_DESC := 'Não quer mais o seguro.';
              19 : wOCORRENCIA_DESC := 'Outros (*)';
              21 : wOCORRENCIA_DESC := 'Mudança de Classe / Classe da UC não permitida.';
              22 : wOCORRENCIA_DESC := 'Troca de titularidade.';
              23 : wOCORRENCIA_DESC := 'Grupo de tensão da UC diferente de A ou B.';
              24 : wOCORRENCIA_DESC := 'Localização da UC não é Urbana ou Rural.';
              25 : wOCORRENCIA_DESC := 'Localidade sem convênio.';
              26 : wOCORRENCIA_DESC := 'Convênio encerrado.';
              27 : wOCORRENCIA_DESC := 'Convênio de localidade encerrado.';
              28 : wOCORRENCIA_DESC := 'Unidade consumidora desligada.';
              29 : wOCORRENCIA_DESC := 'Unidade consumidora não existe.';
              40 : wOCORRENCIA_DESC := 'CPF enviado diferente do cadastro.';
              73 : wOCORRENCIA_DESC := 'UC com vigência expirada.';
              80 : wOCORRENCIA_DESC := 'Data de vencimento prevista';
              85 : wOCORRENCIA_DESC := 'Duplicidade.';
              98 : wOCORRENCIA_DESC := 'Entrada confirmada.';
              99 : wOCORRENCIA_DESC := 'De-Para de identificação do cliente.';
           end;
           if StrToInt(wOCORRENCIA)<> 98 then // confirmada
            wCOD_REJEICAO := (wOCORRENCIA);

         end
         else
         begin
           wCOD_REJEICAO := PrencheZeroEsquerda( inttostr(codMsg),2);
           wOCORRENCIA_DESC := erroMsg;
         end;

       end;

       PDisplayDup.Caption :=  numdoc;
       PDisplayEmiss.Caption := DateToStr(wDATA_OCORRENCIA);
       if trim(copy(Retorno.Strings[i],106,4))<>'' then  //data de vencimento
          PDisplayVenc.Caption :=   copy(Retorno.Strings[i],102,2) +'/'+copy(Retorno.Strings[i],104,2) + '/'+ copy(Retorno.Strings[i],106,4) ;
       CDisplayValor.Value := StrToFloatDef(wVALOR_PAGO,0);
       CValorTotal.Value     := (CValorTotal.Value + CdisplayValor.Value);

       cli_codigo := BuscaUmDadoSqlAsString('SELECT CLI_CODIGO FROM CLI0000 WHERE CLI_UND_CONSUMIDORA = '+ QuotedStr(codConsumidora));

       //cli_codigo := copy(Retorno.Strings[i],85,5);//desconsiderado o '0' inicial porque o banco é 5

       if MatchStr(wOCORRENCIA,['82']) and (wtipoRegistro = 6) then //faturado e pado e tipo de registro for fatura = 6
       begin
//         if wNParcela <> '' then
//           wPESQUISA_TITULO   := ' where FAT_CODIGO = '''+wDUPLICATA+''' and FPC_NUMER = '''+wNParcela+''''
//         else
//           wPESQUISA_TITULO   := ' where FAT_CODIGO = '''+wDUPLICATA+'''';
         wPESQUISA_TITULO := ' WHERE FPC_SITPAG = ''P'' AND  CLI_CODIGO = ' +QuotedStr(cli_codigo);
         wPesquisa_Titulo := wPesquisa_Titulo+' and emp_codigo = '+qStr( dbInicio.Empresa.EMP_CODIGO );

         DataCadastros.SqlUpdate.Close;
         DataCadastros.SqlUpdate.Sql.Text := 'SELECT FIRST 1 * FROM FAT_PC01 '+wPESQUISA_TITULO +' ORDER BY FPC_NUMER';
         DataCadastros.SqlUpdate.Open;
         if not DataCadastros.SqlUpdate.IsEmpty then
         begin
           REG :=   DataCadastros.SqlUpdate.FieldByName('FAT_REGISTRO').AsString;
           wDUPLICATA            :=  DataCadastros.SqlUpdate.FieldByName('FAT_CODIGO').AsString;
           wNParcela             := DataCadastros.SqlUpdate.FieldByName('FPC_NUMER').AsString;
         end
         else
         begin
           REG        := '';
           wDUPLICATA := '';
           wNParcela  := '01';
         end;

         if (not DataCadastros.SqlUpdate.IsEmpty) then
         begin
           ContasReceberBaixaAuto( PreenchezeroEsquerda(DataCadastros.SqlUpdate.FieldByName('FAT_REGISTRO').AsString,6), //sFaturaRegistro,
                                   PreenchezeroEsquerda(wBan_codigo,4), //sContaBancoRegistro,
                                   IntToStr(formaPagamentoPadrao), //sFormaPgtoRegistro outros
                                   dbInicio.Usuario.Codigo, //sUsuarioCodido
                                   DataCadastros.SqlUpdate.FieldByName('FPC_VLPARC').AsCurrency, //rPendente,
                                   StrToFloat(wVALOR_PAGO), //rBaixar,
                                   StrToFloat(wVALOR_DESCONTO), //rDesconto,
                                   StrToFloat(wVALOR_JUROS_MORA), //rJuros,
                                   StrToFloat(wVALOR_MULTA), //rMulta,
                                   StrToFloat(wVALOR_PAGO), //rRecebido
                                   0,
                                   wDATA_OCORRENCIA ); //dDataRecebimento:TDateTime):Boolean;
           DataCadastros.SqlUpdate.Close;
           DataCadastros.SqlUpdate.Sql.Text := 'update FAT_PC01 set FPC_STATUS_BAIXA = '+qStr('A')+' WHERE FAT_REGISTRO = '+ REG                 ;
           DataCadastros.SqlUpdate.ExecSql;
         end;
         DataCadastros.SqlUpdate.Close;


       end;
        AtualizaArquivoCNABRetornoDuplicata;
     end;
   finally
    if wQTD_DUPLICATA> 0  then
    begin
      BitProcessar.Enabled    := False;
      BitVisualizar.Enabled   := True;
    end;
    Retorno.Free;
   end;

end;

procedure TFrmRetornoCNAB_Novo.LerCopel(NomeArq: string);
var Retorno: TStringList;
  i,j: integer;
  cli_codigo, parcela,codRet : string;
  numdoc :string;
  dataArq : TDateTime;
  consumidor, fat_registro_vazio : string;
begin
  Retorno:= TStringList.Create;
   try

     if ExtractFileName( NomeArq ) = '' then
       GeraException('Nome arquivo retorno deve ser informado.');
     if not FilesExists( NomeArq ) then
       GeraException('Arquivo não encontrado:'+sLineBreak+NomeArq);
     retorno.LoadFromFile(NomeArq);
     if retorno.Count < 2 then
       GeraException('Arquivo vazio');
//     if Copy(retorno.Strings[1],1,1) <> 'F' then
//        GeraException('Arquivo não é retorno da copel, deve ter codigo de registro F (Devolução)');

     if copy(Retorno.Strings[0],2,1) <> '2' then
         GeraException('Arquivo não é retorno copel');


     wQTD_DUPLICATA :=  Retorno.Count-3;
     CRegistro.Value := wQTD_DUPLICATA;
     Gauge.MaxValue := wQTD_DUPLICATA;

     PDisplayBanco.Caption := 'COPEL DISTRIBUIÇÃO';
     CValorTotal.Clear;

     dataArq:= EncodeDate( StrToInt(copy(Retorno.Strings[0],66,4)),StrToInt(copy(Retorno.Strings[0],70,2)) ,StrToInt(copy(Retorno.Strings[0],72,2)) );
//     dataArq:= StrToDateDef(copy(Retorno.Strings[0],66,8),Date,'yyyymmdd');
     AtualizaArquivoCNABRetorno(copy(Retorno.Strings[0],74,6), 'RETORNO', '01', 'COBRANCA', DateToStr(dataArq ) );
     Gauge.Progress        :=  1;



     formaPagamentoPadrao := BuscaUmDadoSqlAsInteger('SELECT FPG_REGISTRO FROM BAN0000 b WHERE BAN_CODIGO = ' + QuotedStr(wBan_Codigo));
     if formaPagamentoPadrao = 0 then
       formaPagamentoPadrao := 4;



     for I := 1 to Retorno.Count-2 do //desconsiderar head e trailer
     begin
        Application.ProcessMessages;

        if Copy(retorno.Strings[i],1,1) <> 'F' then
          GeraException('Arquivo não é retorno da copel, deve ter codigo de registro F (Devolução)');

//       numdoc := copy(retorno.Strings[i],120,9);
//       //mudado a localização da duplicata
//       if trim(numdoc) = '' then
//       begin
//         numdoc := copy(retorno.Strings[i],7,6);
//         if not TryStrToInt(numdoc,j)  then
//           numdoc := ''
//         Else
//          numdoc := numdoc + ' ' +copy(retorno.Strings[i],13,2) ;
//       end;
//       wDUPLICATA            := Copy( NumDoc, 1 , 6 );
//       wNParcela             := Copy( NumDoc, 8 , 2 );
       wCOD_INDICACAO        := '0'; //codigo indicativo de crédito
       wVALOR_TARIFA         := '0';
       wVALOR_ABATIMENTO     := '0';
       wVALOR_DESCONTO       := '0';
       wVALOR_PAGO           :=   IntToStr(strtoint(copy(retorno.Strings[i],48,15)))+','+copy(retorno.Strings[i],63,2);
       wVALOR_JUROS_MORA     := '0';
       wVALOR_MULTA          := '0';
       wNOSSO_NUMERRO        := copy(Retorno.Strings[i],31,9) ;  //Identificação do cliente na COPEL
//       if trim(copy(Retorno.Strings[i],79,4))='' then
//         wDATA_OCORRENCIA := dataArq
//       else
//         wDATA_OCORRENCIA      := EncodeDate( StrToInt(copy(Retorno.Strings[i],79,4)),StrToInt(copy(Retorno.Strings[i],83,2)) ,StrToInt(copy(Retorno.Strings[i],85,2)) );

       wOCORRENCIA  := copy(retorno.Strings[i],71,2);
       wCOD_REJEICAO := '00';
       wDATA_OCORRENCIA:= Date;
       case StrToInt(wOCORRENCIA) of
        0:  begin
              wOCORRENCIA_DESC := 'Cobrança arrecadada';
//              if trim(copy(Retorno.Strings[i],95,4))<>'' then  //data de pagamento
//                wDATA_OCORRENCIA      := EncodeDate( StrToInt(copy(Retorno.Strings[i],95,4)),StrToInt(copy(Retorno.Strings[i],99,2)) ,StrToInt(copy(Retorno.Strings[i],101,2)) );
            end;
        1: wOCORRENCIA_DESC := 'Cobrança cancelada depois de emitida a fatura de energia';
        2: wOCORRENCIA_DESC := 'Cobrança cancelada antes de emitir a fatura de energia';
        3: wOCORRENCIA_DESC :=  'Cobrança cancelada - consumidor desligado';
        4..88,90..98:
         begin
           wOCORRENCIA_DESC :=  'Inconsistências do registro de remessa - Vide tabela de códigos de retorno';
           wCOD_REJEICAO := copy(retorno.Strings[i],71,2);
         end;
        89 : wOCORRENCIA_DESC := 'Cobrança só faturada';
        99 : wOCORRENCIA_DESC := 'Confirmação de registro recebido com sucesso';
       end;

       wIDENTIFICA_TITULO := copy(Retorno.Strings[i],40,8);  //Número do contrato virtual de cobrança, quando é recebido(cod 99) não há
       PDisplayDup.Caption :=  numdoc;
       PDisplayEmiss.Caption := DateToStr(wDATA_OCORRENCIA);
       if trim(copy(Retorno.Strings[i],87,4))<>'' then  //data de vencimento
          PDisplayVenc.Caption :=   copy(Retorno.Strings[i],93,2) +'/'+copy(Retorno.Strings[i],91,2) + '/'+ copy(Retorno.Strings[i],87,4) ;
       CDisplayValor.Value := StrToFloatDef(wVALOR_PAGO,0);
       CValorTotal.Value     := (CValorTotal.Value + CdisplayValor.Value);

       Gauge.Progress        := Gauge.Progress + 1;
      // cli_codigo := copy(Retorno.Strings[i],2,5);
      // if cli_codigo = EmptyStr then
      // begin
         consumidor := copy(Retorno.Strings[i],31,9);// 31 a 39
         cli_codigo := DBInicio.BuscaUmDadoSqlAsString( ' SELECT CLI_CODIGO FROM CLI0000 where CLI_UND_CONSUMIDORA = '+(consumidor)
                                             + ConcatSe( ' and ',DBInicio.ExclusivoSql('CLIENTES')  ) );
      // end;
      // COLOCAR COMO PREVISÃO
       if wOCORRENCIA = '89' then
       begin
         // parcela será desconsiderada if wNParcela <> '' then
         //verificar as parcelas que não estão liquidadas

         wPesquisa_Titulo := wPesquisa_Titulo+' and emp_codigo = '+qStr( dbInicio.Empresa.EMP_CODIGO );

         DataCadastros.SqlUpdate.Close;
         DataCadastros.SqlUpdate.Sql.Text :=
            SQLDEF('RECEBER', 'SELECT first 1 fpc_numer,fat_codigo, FAT_REGISTRO, FPC_VLPARC FROM CLI0000 cl '+
                   ' JOIN FAT_PC01 ft ON (ft.CLI_CODIGO = cl.CLI_CODIGO AND ft.EMP_CODIGO = cl.EMP_CODIGO)',
                   ' WHERE  cl.CLI_CODIGO = '+QuotedStr(cli_codigo) +
                   ' AND ban_cod_apelido = '+QuotedStr('900')+ ' AND FPC_STATUS = ''Pendente''','FPC_DTEMIS, CAST(fpc_numer AS INTEGER) , FPC_VENCTO  ','ft.' );
         DataCadastros.SqlUpdate.Open;
         wDUPLICATA            :=  DataCadastros.SqlUpdate.FieldByName('FAT_CODIGO').AsString;
         wNParcela             :=  DataCadastros.SqlUpdate.FieldByName('FPC_NUMER').AsString;
         wPESQUISA_TITULO := 'WHERE FAT_REGISTRO = '+ DataCadastros.SqlUpdate.FieldByName('FAT_REGISTRO').AsString;
         fat_registro_vazio := DataCadastros.SqlUpdate.FieldByName('FAT_REGISTRO').AsString;
         DataCadastros.SqlUpdate.Close;

         DataCadastros.SqlUpdate.Sql.Text := 'update FAT_PC01 set FPC_PREVISAO = '+qStr('S')+wPESQUISA_TITULO;
         if fat_registro_vazio <> '' then
           DataCadastros.SqlUpdate.ExecSql;
       end
       else
       if wOCORRENCIA = '00' then //recebido
       begin
         // parcela será desconsiderada if wNParcela <> '' then
         //verificar as parcelas que não estão liquidadas

         wPesquisa_Titulo := wPesquisa_Titulo+' and emp_codigo = '+qStr( dbInicio.Empresa.EMP_CODIGO );

         DataCadastros.SqlUpdate.Close;
         DataCadastros.SqlUpdate.Sql.Text :=
            SQLDEF('RECEBER', 'SELECT first 1 fpc_numer,fat_codigo, FAT_REGISTRO, FPC_VLPARC FROM CLI0000 cl '+
                   ' JOIN FAT_PC01 ft ON (ft.CLI_CODIGO = cl.CLI_CODIGO AND ft.EMP_CODIGO = cl.EMP_CODIGO)',
                   ' WHERE  cl.CLI_CODIGO = '+QuotedStr(cli_codigo) +
                   ' AND ban_cod_apelido = '+QuotedStr('900')+ ' AND FPC_STATUS = ''Pendente''','FPC_DTEMIS, CAST(fpc_numer AS INTEGER) , FPC_VENCTO  ','ft.' );
         DataCadastros.SqlUpdate.Open;
         wDUPLICATA            :=  DataCadastros.SqlUpdate.FieldByName('FAT_CODIGO').AsString;
         wNParcela             :=  DataCadastros.SqlUpdate.FieldByName('FPC_NUMER').AsString;


         if (not DataCadastros.SqlUpdate.IsEmpty) then
         begin
           ContasReceberBaixaAuto( PreenchezeroEsquerda(DataCadastros.SqlUpdate.FieldByName('FAT_REGISTRO').AsString,6), //sFaturaRegistro,
                                   PreenchezeroEsquerda(wBan_codigo,4), //sContaBancoRegistro,
                                   IntToStr(formaPagamentoPadrao), //sFormaPgtoRegistro outros (padrao)
                                   dbInicio.Usuario.Codigo, //sUsuarioCodido
                                   DataCadastros.SqlUpdate.FieldByName('FPC_VLPARC').AsCurrency, //rPendente,
                                   StrToFloat(wVALOR_PAGO), //rBaixar,
                                   StrToFloat(wVALOR_DESCONTO), //rDesconto,
                                   StrToFloat(wVALOR_JUROS_MORA), //rJuros,
                                   StrToFloat(wVALOR_MULTA), //rMulta,
                                   StrToFloat(wVALOR_PAGO), //rRecebido
                                   0,
                                   wDATA_OCORRENCIA ); //dDataRecebimento:TDateTime):Boolean;
           wPESQUISA_TITULO := 'WHERE FAT_REGISTRO = '+ DataCadastros.SqlUpdate.FieldByName('FAT_REGISTRO').AsString;
           DataCadastros.SqlUpdate.Close;

           DataCadastros.SqlUpdate.Sql.Text := 'update FAT_PC01 set FPC_STATUS_BAIXA = '+qStr('A')+wPESQUISA_TITULO;
           DataCadastros.SqlUpdate.ExecSql;
         end;
         DataCadastros.SqlUpdate.Close;


       end;
        AtualizaArquivoCNABRetornoDuplicata;
     end;
   finally
    if wQTD_DUPLICATA> 0  then
      BitVisualizar.Enabled   := True;
    Retorno.Free;
   end;
end;

procedure TFrmRetornoCNAB_Novo.Button2Click(Sender: TObject);
begin
     PanTipo.visible:=false;
end;

end.




