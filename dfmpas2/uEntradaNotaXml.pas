unit uEntradaNotaXml;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, BaseDbEstoqueForm,
  Dialogs, StdCtrls, Grids, DBGrids, dbcgrids, Mask,  rxToolEdit,  rxCurrEdit,
  DBCtrls, DB, DBClient, ExtCtrls, Buttons, ACBrNFeDANFEClass,
  SqlExpr,SqlClientDataSet, Provider, ImgList, Math,
  Data.DBXFirebird, ACBrNFeDANFeRLClass, System.ImageList,
  SimpleDS, Iniciodb, Data.FMTBCd, ACBrEnterTab, ACBrBase, ACBrCalculadora, system.StrUtils, ACBrDFeReport, ACBrDFeDANFeReport;

type
  TFrmEntradaNotaXml = class(TfrmBaseDbEstoque)
    grpFornecedor: TGroupBox;
    grpItens: TGroupBox;
    grpTotais: TGroupBox;
    GroupBox1: TGroupBox;
    dbgrdItens: TDBGrid;
    lblNrNota: TLabel;
    edtNumerNfe: TEdit;
    Label1: TLabel;
    edtModelo: TEdit;
    Label2: TLabel;
    edtSerie: TEdit;
    Label3: TLabel;
    edtNatureza: TEdit;
    Label4: TLabel;
    edtEmissao: TEdit;
    Label5: TLabel;
    edtSaida: TEdit;
    Label6: TLabel;
    edtChave: TEdit;
    Label7: TLabel;
    edtFornecedorCnpj: TEdit;
    Label8: TLabel;
    edtFornecedorRazao: TEdit;
    Label9: TLabel;
    edtFornecedorFantasia: TEdit;
    Label10: TLabel;
    edtFornecedorEndereco: TEdit;
    Label11: TLabel;
    edtFornecedorNumero: TEdit;
    Label12: TLabel;
    edtFornecedorCidade: TEdit;
    Label13: TLabel;
    edtFornecedorUF: TEdit;
    Label14: TLabel;
    edtFornecedorCEP: TEdit;
    Label15: TLabel;
    edtFornecedorFone: TEdit;
    Label16: TLabel;
    edtFornecedorBairro: TEdit;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    mmoObservacao: TMemo;
    DBCtrlGrid1: TDBCtrlGrid;
    Label17: TLabel;
    edtFrete: TEdit;
    Label18: TLabel;
    edtBaseIcms: TCurrencyEdit;
    edtBaseIcmsSt: TCurrencyEdit;
    Label19: TLabel;
    Label20: TLabel;
    edtValorIcmsST: TCurrencyEdit;
    Label21: TLabel;
    edtValorIcms: TCurrencyEdit;
    Label22: TLabel;
    edtValorProdutos: TCurrencyEdit;
    Label23: TLabel;
    edtValorFrete: TCurrencyEdit;
    lblSeguro: TLabel;
    edtValorSeguro: TCurrencyEdit;
    Label24: TLabel;
    edtValorDesconto: TCurrencyEdit;
    Label25: TLabel;
    edtValorIPI: TCurrencyEdit;
    Label26: TLabel;
    edtValorOutros: TCurrencyEdit;
    Label27: TLabel;
    Label28: TLabel;
    edtValorII: TCurrencyEdit;
    edtValorPIS: TCurrencyEdit;
    Label29: TLabel;
    Label30: TLabel;
    edtValorCofins: TCurrencyEdit;
    Label31: TLabel;
    edtNotaFiscal: TCurrencyEdit;
    CdsCobranca: TClientDataSet;
    CdsCobrancaDuplicata: TStringField;
    CdsCobrancaVencimento: TDateField;
    CdsCobrancaValor: TFloatField;
    dsCobranca: TDataSource;
    dsItem: TDataSource;
    dbedtDuplicata: TDBEdit;
    dbedtVencimento: TDBEdit;
    dbedtValor: TDBEdit;
    pnlCadastroFornecedor: TPanel;
    imgFornecedor: TImage;
    btnBit_Gravar: TBitBtn;
    btnBit_Cancelar: TBitBtn;
    CdsCobrancaID: TIntegerField;
    CdsTemp: TSQLClientDataSet;
    ilLista: TImageList;
    btnDanfe: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    CdsConversaoUnidade: TSQLClientDataSet;
    CdsConversaoUnidadeCONV_REGISTRO: TIntegerField;
    CdsConversaoUnidadeCONV_UND_DE: TStringField;
    CdsConversaoUnidadeCONV_UND_PARA: TStringField;
    CdsConversaoUnidadeDESCRICAO: TStringField;
    CdsConversaoUnidadeCONV_OPERACAO: TStringField;
    CdsConversaoUnidadeCONV_FATOR: TFMTBCdField;
    SqlCdsOP: TSQLClientDataSet;
    SqlCdsOPEMP_CODIGO: TStringField;
    SqlCdsOPOPE_CODIGO: TStringField;
    SqlCdsOPOPE_NATUREZA: TStringField;
    SqlCdsOPOPE_TIPO: TStringField;
    SqlCdsOPOPE_ESCRITA: TStringField;
    SqlCdsOPOPE_DENTRO: TStringField;
    SqlCdsOPOPE_DESCRI: TStringField;
    SqlCdsOPOPE_TRIBICMS: TStringField;
    SqlCdsOPOPE_TRIBIPI: TStringField;
    SqlCdsOPOPE_REDU_ICM: TFMTBCdField;
    SqlCdsOPOPE_REDU_IPI: TFMTBCdField;
    SqlCdsOPOPE_IPINABASEICMS: TStringField;
    SqlCdsOPOPE_FRETENABASE: TStringField;
    SqlCdsOPOPE_SEMVLCOM: TStringField;
    SqlCdsOPOPE_IMP_AVISO: TStringField;
    SqlCdsOPOPE_AVISOLEGAL: TStringField;
    SqlCdsOPOPE_AVISOLEGAL2: TStringField;
    SqlCdsOPOPE_AGRUPADO: TStringField;
    SqlCdsOPOPE_SUBTRIBUTARIA: TStringField;
    SqlCdsOPOPE_ESTOQUE: TStringField;
    SqlCdsOPCCT_CODIGO: TStringField;
    SqlCdsOPOPV_CODIGO: TIntegerField;
    SqlCdsOPOPE_SERVICO: TStringField;
    SqlCdsOPOPE_PIS: TFMTBCdField;
    SqlCdsOPOPE_COFINS: TFMTBCdField;
    SqlCdsOPOPE_CONTRISOCIAL: TFMTBCdField;
    SqlCdsOPOPE_DESCRINATUREZA: TStringField;
    SqlCdsOPOPE_INDICE_IMP: TFMTBCdField;
    SqlCdsOPOPE_NOTA_COMPLEMENTAR: TStringField;
    SqlCdsOPOPE_ATUALIZA_CUSTO: TStringField;
    SqlCdsAlmox: TSQLClientDataSet;
    SqlCdsAlmoxEMP_CODIGO: TStringField;
    SqlCdsAlmoxAMX_CODIGO: TStringField;
    SqlCdsAlmoxAMX_DESCRI: TStringField;
    ACBrNFeDANFEFR1: TACBrNFeDANFeRL;
    cdsItens: TClientDataSet;
    cdsItensok: TBooleanField;
    cdsItensReferencia: TStringField;
    cdsItensReferenciaFornecedor: TStringField;
    cdsItensDescricao: TStringField;
    cdsItensCFOP: TStringField;
    cdsItensUnidade: TStringField;
    cdsItensPrecoUnitario: TFloatField;
    cdsItensValor: TFloatField;
    cdsItensCST: TStringField;
    cdsItensBaseICMS: TFloatField;
    cdsItensValorICMS: TFloatField;
    cdsItensAliqICMS: TFloatField;
    cdsItensBaseICMSST: TFloatField;
    cdsItensValorICMSST: TFloatField;
    cdsItensAliqICMSST: TFloatField;
    cdsItensBaseIPI: TFloatField;
    cdsItensValorIPI: TFloatField;
    cdsItensAliqIPI: TFloatField;
    cdsItensCSTIPI: TStringField;
    cdsItensCSTPIS: TStringField;
    cdsItensValorPIS: TFloatField;
    cdsItensAliqPIS: TFloatField;
    cdsItensCSTCofins: TStringField;
    cdsItensValorCofins: TFloatField;
    cdsItensAliqCofins: TFloatField;
    cdsItensCFOPDescricao: TStringField;
    cdsItensQuantidade: TFloatField;
    cdsItensNCM: TStringField;
    cdsItensOrigem: TIntegerField;
    cdsItensUnidadeCadastro: TStringField;
    cdsItensRegistroConversao: TStringField;
    cdsItensRegistroLote: TIntegerField;
    cdsItensLoteNumero: TStringField;
    cdsItensLoteQuantidade: TFloatField;
    cdsItensLoteFabricacao: TDateField;
    cdsItensLoteValidade: TDateField;
    cdsItensLoteValorMinimo: TFloatField;
    cdsItensValorDesconto: TFloatField;
    cdsItensAlmoxarifadoCodigo: TStringField;
    cdsItensAlmoxarifadoDescricao: TStringField;
    cdsItensDescricaoFornecedor: TStringField;
    cdsItensSequencia: TIntegerField;
    cdsItensTipoConversao: TStringField;
    cdsItensrPesoXML: TFloatField;
    cdsItensXMLDuplicado: TBooleanField;
    Label32: TLabel;
    edTipoPagamento: TEdit;
    cdsItensOPE_CODIGO: TStringField;
    cdsItensBasePIS: TFloatField;
    cdsItensBaseCOFINS: TFloatField;
    cdsItensUCom: TStringField;
    cdsItensUTrib: TStringField;
    cdsItensENF_QTDE_ORIGINAL: TFMTBCDField;
    cdsItensENF_PRECO_ORIGINAL: TFMTBCDField;
    cdsItensFatorConversao: TFMTBCDField;
    cdsItensnitem: TIntegerField;
    cdsItensCFOP_ORIGINAL: TStringField;
    cdsItensamx_terceiro_retorno: TBooleanField;
    cbMovimentaEstoque: TCheckBox;
    SqlCdsAlmoxEMI_IE: TStringField;
    SqlCdsAlmoxEMI_CODIGO: TIntegerField;
    cdsItensENF_PTOTAL_ORIGINAL: TCurrencyField;
    cdsItensENF_ORIGEM_MERCADORIA: TIntegerField;
    cdsItensOPE_CODIGO_RETORNO: TStringField;
    cdsItensPCX_CODIGO: TStringField;
    procedure FormShow(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure btnBit_CancelarClick(Sender: tObject);
    procedure dbgrdItensDblClick(Sender: tObject);
    procedure BitBtn1Click(Sender: tObject);
    procedure BitBtn2Click(Sender: tObject);
    procedure btnBit_GravarClick(Sender: tObject);
    procedure btnDanfeClick(Sender: tObject);
    procedure FormCreate(Sender: tObject);
    procedure dbgrdItensDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    function RemoveEspaco(const str: String): string;
    procedure cdsItensokGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure cbMovimentaEstoqueClick(Sender: TObject);
    procedure dbgrdItensTitleClick(Column: TColumn);
  private
    wCalcularPV :INTEGER;

    sModalFrete,
    sCFOP,
    sCFOPRegistro,
    sProdutoRegistro:string;

    dBaseIPI:Double;
    tipoProduto :string;

    procedure CarregaInformacoesXML;
    procedure VarrerDuplicatas;
    procedure AbreEdicao;
    function Prevalida:Boolean;
    function ConverterPISCOFINS( const CST : string ; const Base: Currency) : string;
    function ValidaFornecedor:Boolean;
    procedure CadastraFornecedor;
    procedure BuscaOperacaoCFOP(const pNat: String);
    procedure AtualizarTabelaPrecos (const prd_codigo : string);

  public
    { Public declarations }

    NumeroNota, forCodigo,
    sRegistroFornecedor,
    sCaminhoXML:string;
    XMLDuplicado : boolean;
    function GetCodFor: string;
    function CadastarProduto : string ; // cadastra o produto e retorna a referencia
  end;

var
  FrmEntradaNotaXml: TFrmEntradaNotaXml;

implementation

uses
  RWFunc, pcnNFe,  pcnConversao, DataCad, uProdutoDao,
  uNaturezaOperacaoDao, uEntradaNotaXmlItem, Nfs0001, For0001,
  DataMov, ACBrNFeNotasFiscais, uteis, pcnConversaoNFE, PesqTipoProduto, Pag0001, uSelecionaCentroDeCusto;

{$R *.dfm}


{ TFrmEntradaNotaXml }

procedure TFrmEntradaNotaXml.CarregaInformacoesXML;
var
   I:Integer;
   sCorProd,
   sReferenciaProd : string;
   Origem: integer;
   peso, vProdItem, vProdTotal, pesoL, qCom: double;

begin
   dBaseIPI := 0;
   //Carreha XML

   //FormNfEntrada.ACBrNFeDANFEFR1.FastFile := dbInicio.SistemaLocal+'DANFE.fr3';
   if sCaminhoXML <> '' then
   begin
     FormNfEntrada.acbrnf1.NotasFiscais.Clear;
     FormNfEntrada.acbrnf1.NotasFiscais.LoadFromFile(sCaminhoXML);
   end;
   //Fornecedor
   edtFornecedorCnpj.Text := MascaraCNPJ_CPF(FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Emit.CNPJCPF);
   edtFornecedorRazao.Text := FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Emit.xNome;
   edtFornecedorFantasia.Text := FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Emit.xFant;
   edtFornecedorEndereco.Text := FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.xLgr;
   edtFornecedorNumero.Text := FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.nro;
   edtFornecedorCidade.Text := FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.xMun;
   edtFornecedorUF.Text := FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.UF;
   edtFornecedorFone.Text := MascaraFone(FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.fone);
   edtFornecedorBairro.Text := FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.xBairro;
   edtFornecedorCEP.Text := MascaraCep(IntToStr(FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.CEP));
   //Verifica Fornecedor
   pnlCadastroFornecedor.visible := not ValidaFornecedor;
   //Informações NFe
   edtNumerNfe.Text := IntToStr(FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Ide.nNF);
   edtModelo.Text := IntToStr(FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Ide.modelo);
   edtSerie.Text := IntToStr(FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Ide.serie);
   //Modalidade do Frete
   case FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Transp.modFrete of
      mfContaEmitente: sModalFrete := '1';
      mfContaDestinatario: sModalFrete := '2';
      mfContaTerceiros: sModalFrete := '0';
      mfSemFrete: sModalFrete := '0';
   end;
   edtFrete.Text := iif(sModalFrete = '1','PAGO',iif(sModalFrete = '2','À PAGAR','SEM FRETE'));
   edtNatureza.Text := FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Det.Items[0].Prod.CFOP  +'-'+  FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Ide.natOp;
   edtEmissao.Text := DateToStr(FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Ide.dEmi);
   edtSaida.Text := DateToStr(FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Ide.dSaiEnt);
   edtChave.Text := ExtrairNumeros(FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.infNFe.ID);
   //Itens do Produto
   CdsItens.CreateDataSet;
   CdsItens.EmptyDataSet;
   if (FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Det.Count > 0) then
      begin
         I := 0;
         while (I < FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Det.Count) do
            begin
               CdsItens.Insert;
               CdsItensok.AsBoolean := True;
               cdsItensnitem.AsInteger :=FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Det.Items[I].Prod.nItem;


               if (DBInicio.GetParametroSistema('PMT_DESC_ORIGINAL_INDUST') = 'S') then
               begin
                 CdsItensDescricao.AsString := StringReplace(FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Det.Items[I].Prod.xProd, chr(39),'',[rfReplaceAll, rfIgnoreCase]);
               end
               else
               begin
                 CdsItensDescricao.AsString := BuscaUmDadoSQLAsString('SELECT  e.PRD_DESCRI FROM PRD0000_CODIGO T1 '+
                                        ' JOIN PRD0000 E ON T1.PRD_CODIGO = E.PRD_CODIGO '+ ConcatSe ( ' and e.',dbinicio.ExclusivoSql('PRODUTOS')) +
                                        ' WHERE T1.PRDC_REFERENCIA = '
                                        +QuotedStr(UpperCase(FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Det.Items[I].Prod.cProd))+
                                        ' and T1.FOR_CODIGO = ' + QuotedStr(GetCodFor) );
                 if CdsItensDescricao.AsString = '' then
                   CdsItensDescricao.AsString := StringReplace(FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Det.Items[I].Prod.xProd, chr(39),'',[rfReplaceAll, rfIgnoreCase]);


               end;
               // CdsItensDescricao.AsString := StringReplace(FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Det.Items[I].Prod.xProd, chr(39),'',[rfReplaceAll, rfIgnoreCase]);


               CdsItensAlmoxarifadoCodigo.AsString := SqlCdsAlmoxAMX_CODIGO.AsString;
               CdsItensAlmoxarifadoDescricao.AsString := SqlCdsAlmoxAMX_DESCRI.AsString;

               //Se for KG guarda para nota de devolução
               if (UpperCase(FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Det.Items[I].Prod.uCom) = 'KG') then
                 CdsItensrPesoXML.AsFloat := FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Det.Items[I].Prod.qCom
               else
               if (FormNfEntrada.chkIndustrializacao.Checked) and (FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Transp.Vol.Count > 0) then
               begin
                 vProdItem := FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Det.Items[I].Prod.vProd;
                 vProdTotal := FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vProd;
                 pesoL := FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Transp.Vol.Items[0].pesoL;
                 qCom := FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Det.Items[I].Prod.qCom;
                 peso := (vProdItem / (vProdTotal / pesoL)) / qCom;
                 if peso > 0 then
                  CdsItensrPesoXML.AsFloat := peso;
               end;


               sCorProd := RetornaProdutoCodigoPelaReferencia(RemoveEspaco(FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Det.Items[I].Prod.cProd),sRegistroFornecedor);
               sReferenciaProd := '';
               CdsTemp.Close;
               CdsTemp.CommandText := 'SELECT T1.PRD_REFER, PRD_DESCRI, PRD_UND FROM PRD0000 T1 WHERE T1.PRD_CODIGO = '+QuotedStr(sCorProd);
               CdsTemp.Open;
               if (not CdsTemp.IsEmpty) then
                  begin
                     sReferenciaProd := CdsTemp.FieldByName('PRD_REFER').AsString;


                     if (DBInicio.GetParametroSistema('PMT_DESC_ORIGINAL_INDUST') = 'S') then
                         CdsItensDescricao.AsString := StringReplace(FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Det.Items[I].Prod.xProd, chr(39),'',[rfReplaceAll, rfIgnoreCase])
                     else
                       CdsItensDescricao.AsString := CdsTemp.FieldByName('PRD_DESCRI').AsString;
                     if FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Det.Items[I].Prod.uCom = '' then
                       CdsItensUnidadeCadastro.AsString := 'PC'
                     else
                       CdsItensUnidadeCadastro.AsString := CdsTemp.FieldByName('PRD_UND').AsString;


                     //fazer uma busca na tabela de conversao  PRD_FATORCONVERSAO
                     cdsItensFatorConversao.AsFloat := 0 ;
                     if (sReferenciaProd<> '') and (sRegistroFornecedor <> '') then
                     begin
                        cdsItensFatorConversao.AsFloat :=
                            BuscaUmDadoSqlAsFloat('SELECT FIRST 1 FAT_CONV FROM PRD_FATORCONVERSAO  '+
                                                  ' WHERE PRD_CODIGO = '+QuotedStr(sCorProd)+
                                                  ' AND FOR_CODIGO = '+  QuotedStr(sRegistroFornecedor)+
                                                  ' AND UNID_CONV  = '+ QuotedStr(FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Det.Items[I].Prod.uCom));



                     end;

                     CdsItensok.AsBoolean := not ((cdsItensFatorConversao.AsFloat = 0) and
                      (FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Det.Items[I].Prod.uCom <> CdsTemp.FieldByName('PRD_UND').AsString)) ;

                  end
               else
                 CdsItensok.AsBoolean := False;

               CdsTemp.Close;
               //Verifica se o Produto Gerencia Lote
                CdsItensok.AsBoolean :=  not((ProdutoGerenciaLote(sReferenciaProd) and (CdsItensRegistroLote.AsString = '') )) and CdsItensok.AsBoolean ;

               CdsItensReferencia.AsString := sReferenciaProd;
               CdsItensReferenciaFornecedor.AsString := RemoveEspaco(FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Det.Items[I].Prod.cProd);
               CdsItensDescricaoFornecedor.AsString := StringReplace(FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Det.Items[I].Prod.xProd, chr(39),'',[rfReplaceAll, rfIgnoreCase]);

               // origem da mercadoria
               case FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Det.Items[I].Imposto.ICMS.Orig of
                 oeNacional:
                   Origem := 0;
                 oeEstrangeiraImportacaoDireta:
                   Origem := 1;
                 oeEstrangeiraAdquiridaBrasil:
                   Origem := 2;
                 oeNacionalConteudoImportacaoSuperior40:
                   Origem := 3;
                 oeNacionalProcessosBasicos:
                   Origem := 4;
                 oeNacionalConteudoImportacaoInferiorIgual40:
                   Origem := 5;
                 oeEstrangeiraImportacaoDiretaSemSimilar:
                   Origem := 6;
                 oeEstrangeiraAdquiridaBrasilSemSimilar:
                   Origem := 7;
                 oeNacionalConteudoImportacaoSuperior70:
                   Origem := 8;
                 oeReservadoParaUsoFuturo:
                   Origem := 9;
                 oeVazio:
                   Origem := 10
               end;
               cdsItensENF_ORIGEM_MERCADORIA.AsInteger := Origem;

               cdsItensCFOP_ORIGINAL.AsString :=  FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Det.Items[I].Prod.CFOP;
               //cfop da nota
               sCFOP := FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Det.Items[I].Prod.CFOP;
               sCFOPRegistro := RetornaRegistroCFOP(sCFOP);
               //cfop Correspondente
               if (sCFOPRegistro <> '') then
                  begin
                     DataCadastros.sqlUpdate.Close;
                     DataCadastros.SqlUpdate.sql.text :=SQLDEF('OPERACAOFISCAL','SELECT OPE_CODIGO,OPE_NATUREZA_ENTRADA,OPE_DESCRI,OPE_RETORNO_INDUST ,OPE_RETORNO_INDUST_SOBRA  FROM OPE0000','WHERE OPE_CODIGO = '+QuotedStr(sCFOPRegistro),'OPE_CODIGO','');
                     DataCadastros.sqlUpdate.Open;
                     if (not DataCadastros.sqlUpdate.IsEmpty) then
                        begin
                          if (DataCadastros.sqlUpdate.FieldByName('OPE_NATUREZA_ENTRADA').AsString = '') then
                          begin
                             CdsItensok.AsBoolean := False;
                             CdsItensCFOP.AsString := '';
                          end
                          else
                          begin
                           CdsItensCFOP.AsString := DataCadastros.sqlUpdate.FieldByName('OPE_NATUREZA_ENTRADA').AsString;
                           CdsItensCFOPDescricao.AsString := DataCadastros.sqlUpdate.FieldByName('OPE_DESCRI').AsString;
                           sCFOP := DataCadastros.sqlUpdate.FieldByName('OPE_NATUREZA_ENTRADA').AsString;
                           sCFOPRegistro:= BuscaUmDadoSqlAsString(SqlDef('OPERACAOFISCAL','select first 1 t1.OPE_CODIGO from OPE0000 T1 ','WHERE T1.OPE_NATUREZA = '+QuotedStr(sCFOP),'','T1.'));
                           cdsItensOPE_CODIGO.AsString :=  sCFOPRegistro;
                           cdsItensamx_terceiro_retorno.AsBoolean := False;
                           // retorno de industrialização
                           if (DataCadastros.sqlUpdate.FieldByName('OPE_RETORNO_INDUST').AsString = 'S') OR
                           ( MatchStr(CdsItensCFOP.AsString,['5901','5902','5903','5925', '6902','6903','6925','1901','1902','1925','2902','2925']))

                           then
                           begin
                             //verifica se há almoxarifado de terceiro

                             CdsItensok.AsBoolean := False;
                             cdsItensamx_terceiro_retorno.AsBoolean := true;
                             CdsItensAlmoxarifadoCodigo.AsString :=  BuscaUmDadoSqlAsString('SELECT AMX_CODIGO FROM ALMOX0000 WHERE AMX_ATIVO = ''S'' '+
                                                                                           ' AND AMX_CNPJ_PART= '+QuotedStr(RetirarMascaraCNPJ_INSC(edtFornecedorCnpj.Text)));
                             CdsItensAlmoxarifadoDescricao.AsString :=  BuscaUmDadoSqlAsString('SELECT AMX_DESCRI FROM ALMOX0000 WHERE AMX_ATIVO = ''S'' '+
                                                                                           ' AND AMX_CNPJ_PART= '+QuotedStr(RetirarMascaraCNPJ_INSC(edtFornecedorCnpj.Text)));
                             CdsItensok.AsBoolean := CdsItensAlmoxarifadoCodigo.AsString <> '';
                           end;
                          end;
                        end;
                     DataCadastros.sqlUpdate.Close;
                  end;


               CdsItensUnidade.AsString := UpperCase( FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Det.Items[I].Prod.uCom);
               cdsItensUCom.AsString    := UpperCase(FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Det.Items[I].Prod.uCom);
               cdsItensUTrib.AsString   := UpperCase(FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Det.Items[I].Prod.uTrib);

               if (cdsItensFatorConversao.AsFloat > 0) and  (FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Det.Items[I].Prod.uCom <> CdsItensUnidadeCadastro.AsString)   then
               begin
                 cdsItensQuantidade.AsFloat := cdsItensFatorConversao.AsFloat * FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Det.Items[I].Prod.qCom;
                 CdsItensPrecoUnitario.AsFloat := FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Det.Items[I].Prod.vProd / cdsItensQuantidade.AsFloat;
               end
               else
               begin
                 CdsItensQuantidade.AsFloat :=FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Det.Items[I].Prod.qCom;
                 CdsItensPrecoUnitario.AsFloat :=FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Det.Items[I].Prod.vUnCom;
               end;


               cdsItensENF_QTDE_ORIGINAL.AsFloat :=FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Det.Items[I].Prod.qCom;
               cdsItensENF_PRECO_ORIGINAL.AsFloat :=FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Det.Items[I].Prod.vUnCom;


               CdsItensValor.AsFloat := FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Det.Items[I].Prod.vProd;
               cdsItensENF_PTOTAL_ORIGINAL.AsFloat := FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Det.Items[I].Prod.vProd;
               CdsItensValorDesconto.AsFloat :=FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Det.Items[I].Prod.vDesc;
               //stb tributação

                CdsItensCST.AsString := CSTICMSToStr(FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Det.Items[I].Imposto.ICMS.CST);
               //ICMS
               CdsItensBaseICMS.AsCurrency :=FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Det.Items[I].Imposto.ICMS.vBC;
               CdsItensValorICMS.AsCurrency :=FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Det.Items[I].Imposto.ICMS.vICMS;
               CdsItensAliqICMS.AsCurrency :=FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Det.Items[I].Imposto.ICMS.pICMS;
               //ICMSST
               CdsItensBaseICMSST.AsCurrency :=FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Det.Items[I].Imposto.ICMS.vBCST;
               CdsItensValorICMSST.AsCurrency :=FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Det.Items[I].Imposto.ICMS.vICMSST;
               CdsItensAliqICMSST.AsCurrency :=FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Det.Items[I].Imposto.ICMS.pICMSST;
               //IPI
               CdsItensCSTIPI.AsString := CSTIPIToStr(FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Det.Items[I].Imposto.IPI.CST);
               CdsItensBaseIPI.AsCurrency :=FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Det.Items[I].Imposto.IPI.vBC;
               CdsItensAliqIPI.AsCurrency :=FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Det.Items[I].Imposto.IPI.pIPI;
               CdsItensValorIPI.AsCurrency :=FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Det.Items[I].Imposto.IPI.vIPI;
               //PIS

               cdsItensBasePIS.AsCurrency :=  FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Det.Items[I].Imposto.PIS.vBC;
               CdsItensCSTPIS.AsString :=
               ConverterPISCOFINS(CSTPISToStr (FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Det.Items[I].Imposto.PIS.CST),cdsItensBasePIS.AsCurrency);
               CdsItensAliqPIS.AsCurrency :=FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Det.Items[I].Imposto.PIS.pPIS;
               CdsItensValorPIS.AsCurrency := FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Det.Items[I].Imposto.PIS.vPIS;
               //COFINS
               cdsItensBaseCOFINS.AsCurrency := FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Det.Items[I].Imposto.COFINS.vBC;

               CdsItensCSTCofins.AsString :=
               ConverterPISCOFINS(CSTCOFINSToStr(FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Det.Items[I].Imposto.COFINS.CST), cdsItensBaseCOFINS.AsCurrency);
               CdsItensAliqCofins.AsCurrency :=FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Det.Items[I].Imposto.COFINS.pCOFINS;
               CdsItensValorCofins.AsCurrency := FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Det.Items[I].Imposto.COFINS.vCOFINS;
               CdsItensNCM.AsString :=FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Det.Items[I].Prod.NCM;

               dBaseIPI := dBaseIPI +FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Det.Items[I].Imposto.IPI.vBC;

               //Lote Medicamento
               if (FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Det.Items[I].Prod.med.Count > 0) then
                  begin
                     CdsItensLoteNumero.AsString := FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Det.Items[I].Prod.med.Items[0].nLote;
                     CdsItensLoteQuantidade.AsFloat := CdsItensQuantidade.AsFloat;
                     CdsItensLoteFabricacao.AsDateTime := FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Det.Items[I].Prod.med.Items[0].dFab;
                     CdsItensLoteValidade.AsDateTime := FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Det.Items[I].Prod.med.Items[0].dVal;
                     CdsItensLoteValorMinimo.AsCurrency := FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Det.Items[I].Prod.med.Items[0].vPMC;
                  end;
               CdsItens.Post;
               Inc(I);
            end;
         //Primeiro
         CdsCobranca.First;
      end;
   //Informações de Combrança
   CdsCobranca.EmptyDataSet;
   if (FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Cobr.Dup.Count > 0) then
      begin
         I := 0;
         while (I <FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Cobr.Dup.Count) do
            begin
               CdsCobranca.Insert;
               CdsCobrancaID.AsInteger := I;
               CdsCobrancaDuplicata.AsString :=FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Cobr.Dup.Items[I].nDup;
               CdsCobrancaVencimento.AsDateTime :=FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Cobr.Dup.Items[I].dVenc;
               CdsCobrancaValor.AsFloat :=FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Cobr.Dup.Items[I].vDup;
               CdsCobranca.Post;
               Inc(I);
            end;
         //Primeiro
         CdsCobranca.First;
      end;
   //Totais
   edtBaseIcms.Value :=FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vBC;
   edtValorIcms.Value :=FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vICMS;
   edtBaseIcmsSt.Value :=FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vBCST;
   edtValorIcmsST.Value :=FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vST;
   edtValorProdutos.Value :=FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vProd;
   edtValorFrete.Value :=FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vFrete;
   edtValorSeguro.Value :=FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vSeg;
   edtValorDesconto.Value :=FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vDesc;
   edtValorIPI.Value :=FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vIPI;
   edtValorOutros.Value :=FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vOutro;
   edtValorII.Value :=FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vII;
   edtValorPIS.Value :=FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vPIS;
   edtValorCofins.Value :=FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vCOFINS;
   edtNotaFiscal.Value :=FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vNF;
   case FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Ide.indPag of
     ipVista  : edTipoPagamento.Text := 'À vista';
     ipPrazo  : edTipoPagamento.Text := 'A prazo';
     ipOutras : edTipoPagamento.Text := 'Outros';
   else
     edTipoPagamento.Text := '';

   end;

   //Informações Complementares
   mmoObservacao.Lines.Text :=FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.InfAdic.infCpl;     
end;

procedure TFrmEntradaNotaXml.cbMovimentaEstoqueClick(Sender: TObject);
begin
  inherited;
  if cbMovimentaEstoque.State <> cbGrayed then
    if cbMovimentaEstoque.Checked then
    begin

         Uteis.Aviso( 'Esta nota fiscal irá movimentar estoque!'+#13+#13+
                      'Após o lançamento de qualquer item na Nota, esta decisão não poderá mais ser alterada!!');
    end
    Else
    begin

         Uteis.Aviso('Nenhum movimento de estoque será realizado!'+#13+#13+
                      'Após o lançamento de qualquer item na Nota, esta decisão não poderá mais ser alterada!!');
    end;
end;

procedure TFrmEntradaNotaXml.cdsItensokGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  text := EmptyStr;
end;

function TFrmEntradaNotaXml.ConverterPISCOFINS(const CST: string; const Base: Currency): string;
begin
  result := '99';
  if CST = '01' then
   result := '50'
  else if MatchStr(CST,['04','02', '03'])  then
   result := '70'
  else if (MatchStr(CST,['06',''])) and (Base = 0 ) then
   result := '71'
  else if (CST = '09') then
   result := '72'
  else if (MatchStr(CST,['06','']))  and (Base > 0 ) then
   result := '73'
  else if (CST = '08') then
   result := '74'
  else if (CST = '05') then
   result := '75'
  else if MatchStr(CST,['07','49'])  then
   result := '99';
end;

function TFrmEntradaNotaXml.ValidaFornecedor: Boolean;
var
   listaMensagens:TStringList;
begin
   Result := True;
   imgFornecedor.Hint := '';
   listaMensagens := TStringList.Create;
   sRegistroFornecedor := GetCodFor;
   //Verifica se o Fornecedor esta cadastrado
   if (sRegistroFornecedor = '') then
        listaMensagens.Add('Fornecedor não cadastrado no sistema');
   //Finaliza
   Result := listaMensagens.Count = 0;
   imgFornecedor.Hint := listaMensagens.Text;
   FreeAndNil(listaMensagens); 
end;

procedure TFrmEntradaNotaXml.VarrerDuplicatas;
var clone: TClientDataSet;
    ReferenciaFornAnterior : string;
    encontrouAnt : boolean;
begin
 XMLDuplicado:= False;
 clone := TClientDataSet.Create(self);
 clone.CloneCursor(cdsItens,True);
 clone.IndexFieldNames :=   'ReferenciaFornecedor';
 clone.First;
// ReferenciaFornAnterior:= clone.FieldByName('ReferenciaFornecedor').AsString;
 while not clone.Eof do
 begin

   if ReferenciaFornAnterior = clone.FieldByName('ReferenciaFornecedor').AsString then
   begin
     if not (clone.State in dsEditModes) then
         clone.Edit;
      clone.FieldByName('ok').AsBoolean := False;
      clone.FieldByName('XMLDuplicado').AsBoolean := True;
      clone.FieldByName('referencia').AsString := '';
      XMLDuplicado := True;
      clone.Post;
      if not encontrouAnt then
      begin
       clone.Prior;
       if not (clone.State in dsEditModes) then
           clone.Edit;
        clone.FieldByName('ok').AsBoolean := False;
        clone.FieldByName('XMLDuplicado').AsBoolean := True;
        clone.FieldByName('referencia').AsString := '';
        clone.Post;
        encontrouAnt := True;
        clone.Next;
      end;
   end
   else
     encontrouAnt := false;

   ReferenciaFornAnterior:= clone.FieldByName('ReferenciaFornecedor').AsString;
   clone.Next;

 end;

end;

procedure TFrmEntradaNotaXml.FormShow(Sender: tObject);
begin
  inherited;
  SqlCdsAlmox.Close;
  SqlCdsAlmox.CommandText := SQLDEF('TABELAS','select * from ALMOX0000','','AMX_DESCRI','');
  SqlCdsAlmox.Open;
  if DBInicio.GetParametroSistema('PMT_MULTIPLAS_IE') = 'S' then
    SqlCdsAlmox.Locate('EMI_CODIGO', FormNfEntrada.dblcInscricaoEstadual.KeyValue,[])
  else
    SqlCdsAlmox.Locate('AMX_CODIGO',dbInicio.Empresa.wPmt_Amx_EntradaNota,[]);
  SqlCdsOP.Open;
  CarregaInformacoesXML;
  VarrerDuplicatas;
  cbMovimentaEstoque.Visible := FormNfEntrada.cbMovimentaEstoque.Visible;
  cbMovimentaEstoque.Checked := FormNfEntrada.cbMovimentaEstoque.Checked;
end;

procedure TFrmEntradaNotaXml.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
   //Fecha Cds
   CdsCobranca.Close;
   CdsItens.Close;
   SqlCdsAlmox.Close;
   DataMovimento.CdsEnf.Close;
   CdsConversaoUnidade.Close;
   DataCadastros.CdsProdutos.Close;
   DataMovimento.CdsPagarParc.Close;
   DataMovimento.CdsPagar.close;
   DataCadastros.CdsFornecedor.Close;
   DataCadastros.sqlUpdate.Close;
   SqlCdsOP.Close;
   //Fecha Componentes
   //FormNfEntrada.acbrnf1.NotasFiscais.Clear;
   inherited;
end;

procedure TFrmEntradaNotaXml.FormCreate(Sender: tObject);
begin
  inherited;
  wCalcularPV := DBInicio.Empresa.wCalcularPV;
  dbgrdItens.OnTitleClick:= GridTitleClickDefault;
end;

procedure TFrmEntradaNotaXml.btnBit_CancelarClick(Sender: tObject);
begin
   Close;
end;

procedure TFrmEntradaNotaXml.dbgrdItensDblClick(Sender: tObject);
begin
  AbreEdicao;
  dbgrdItens.Refresh;
end;

procedure TFrmEntradaNotaXml.dbgrdItensDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
     inherited;
     if (not CdsItens.IsEmpty) then
     begin
          if Column.Field = (CdsItensok) then
          begin
               dbgrdItens.Canvas.FillRect(Rect);
               if (CdsItensok.AsBoolean) then
                  ilLista.Draw(dbgrdItens.Canvas,Rect.Left+03,Rect.Top+1,1)
               else
                  ilLista.Draw(dbgrdItens.Canvas,Rect.Left+03,Rect.Top+1,0);
          end;
     end;
end;

procedure TFrmEntradaNotaXml.dbgrdItensTitleClick(Column: TColumn);
begin
  inherited;
  //
end;

Function TFrmEntradaNotaXml.GetCodFor: string;
var cnpj: string ;
begin
     cnpj := FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Emit.CNPJCPF;
     result := dbInicio.BuscaUmDadoSqlasString ( 'SELECT FOR_CODIGO FROM FOR0000 WHERE FOR_CGC='+qStr(cnpj)+ConcatSe( ' AND ', dbInicio.ExclusivoSql( 'FORNECEDORES' ) ) );
end;

procedure TFrmEntradaNotaXml.AbreEdicao;
var
   point:TBookmark;
   registro: integer;
   sCorProd,
   sReferenciaProd:string;
begin
  if (CdsItens.IsEmpty) then
  begin
     uteis.aviso('Não existe item a editar');
  end
  else
  if (GetCodFor='') then
     uteis.aviso('O Fornecedor não esta cadastrado, clique em Cadastrar Fornecedor!')
  else
  begin
         // point := CdsItens.GetBookmark;
         registro := CdsItens.RecNo;
         FrmEntradaNotaXmlItem := TFrmEntradaNotaXmlItem.Create(Application);
         try
            FrmEntradaNotaXmlItem.FormStyle := fsNormal;
            FrmEntradaNotaXmlItem.Visible := false;

            FrmEntradaNotaXmlItem.ShowModal;
         finally
            FrmEntradaNotaXmlItem.Destroy;
            FrmEntradaNotaXmlItem := Nil;
         end;
         //
         CdsItens.First;
         while (not CdsItens.Eof) do
            begin
               CdsItens.Edit;
               //CdsItensok.AsBoolean := True;
               sCorProd := RetornaProdutoCodigoPelaReferencia(CdsItensReferenciaFornecedor.AsString,sRegistroFornecedor);
               sReferenciaProd := '';
               if (sCorProd <> '') and (not cdsItensok.AsBoolean) and not (XMLDuplicado) and (DBInicio.GetParametroSistema('PMT_DESC_ORIGINAL_INDUST') <> 'S') then
               begin
                 CdsTemp.Close;
                 CdsTemp.CommandText := 'SELECT T1.PRD_REFER, PRD_DESCRI,PRD_UND FROM PRD0000 T1 WHERE T1.PRD_CODIGO = '+QuotedStr(sCorProd);
                 CdsTemp.Open;
                 if (not CdsTemp.IsEmpty) then
                  begin
                     sReferenciaProd := CdsTemp.FieldByName('PRD_REFER').AsString;
                     CdsItensDescricao.AsString := CdsTemp.FieldByName('PRD_DESCRI').AsString;
                     CdsItensUnidadeCadastro.AsString := CdsTemp.FieldByName('PRD_UND').AsString;
                    // cdsItensUnidade.AsString := CdsTemp.FieldByName('PRD_UND').AsString;
                     CdsItensok.AsBoolean := True;
                  end
                 else
                  begin
                     CdsItensok.AsBoolean := False;
                  end;
               end;
               if (CdsItensCFOP.AsString = '') then
                  CdsItensok.AsBoolean := False;

               if (CdsItensAlmoxarifadoCodigo.AsString = '') then
                  CdsItensok.AsBoolean := False;

               CdsItensok.AsBoolean := (cdsItensReferencia.AsString <> '') and  (not ((cdsItensUCom.AsString <> cdsItensUnidadeCadastro.AsString) and (cdsItensFatorConversao.AsFloat = 0 ) ));

               CdsTemp.Close;
               if sReferenciaProd <> '' then
                   CdsItensReferencia.AsString := sReferenciaProd;
               CdsItens.Post;
               CdsItens.Next;
            end;
         // CdsItens.GotoBookmark(point);
         CdsItens.RecNo := registro;
      end;
end;

procedure TFrmEntradaNotaXml.AtualizarTabelaPrecos(const prd_codigo: string);
var  wTab2,wTab3, wTab4, wTab5, wTab6  : Double;
     lin_cod : string;
      porFora: boolean;
begin
 porFora := DBInicio.GetParametroSistema('PMT_METODO_CALCULO_PRECO') = '0';  // o cálculo é feito por fora? True   por dentro? False
 if dbInicio.Empresa.bHabilitarTabelaPreco then
  begin
    lin_cod := BuscaUmDadoSqlAsString(' SELECT LIN_CODIGO FROM PRD0000 ' +
                                     ' WHERE PRD_CODIGO = '+QuotedStr(prd_codigo) +
                                     ConcatSe(' and ',dbInicio.ExclusivoSql('produtos') )
                                     )  ;
    if lin_cod <> '' then
      OpenAux3('	SELECT * FROM MKP0000  '+
               ' WHERE LIN_CODIGO = '+  QuotedStr(lin_cod)+
               // ' AND EMP_CODIGO = ' +QuotedStr(DBInicio.Empresa.EMP_CODIGO));
               ConcatSe(' and ',dbInicio.ExclusivoSql('produtos') ));

    if (lin_cod = '') or (qAux3.IsEmpty) then
       OpenAux3('	SELECT * FROM MKP0000  '+
              ' WHERE  LIN_CODIGO = '+  QuotedStr('999')+
              // ' AND EMP_CODIGO = ' +QuotedStr(DBInicio.Empresa.EMP_CODIGO));
              ConcatSe(' and ',dbInicio.ExclusivoSql('produtos') ));
    if (qAux3.IsEmpty) then
    begin
      wTab2:= 0;
      wTab3:= 0;
      wTab4:= 0;
      wTab5:= 0;
      wTab6:= 0;
    end
    else
    begin
      wTab2:= qAux3.FieldByName('MKP_PERC2').AsFloat;
      wTab3:= qAux3.FieldByName('MKP_PERC3').AsFloat;
      wTab4:= qAux3.FieldByName('MKP_PERC4').AsFloat;
      wTab5:= qAux3.FieldByName('MKP_PERC5').AsFloat;
      wTab6:= qAux3.FieldByName('MKP_PERC6').AsFloat;
    end;
    if wTab2 > 0  then
      wtab2 := (wtab2/100) +1;

    if wTab3 > 0  then
      wtab3 := (wtab3/100) +1;

    if wTab4 > 0  then
      wtab4 := (wtab4/100) +1;

    if wTab5 > 0  then
      wtab5 := (wtab5/100) +1;

    if wTab6 > 0  then
      wtab6 := (wtab6/100) +1;
  end;
 //conforme parametro -> 0 = custo liquido, 1 = custo enttrada  , 2 = custo medio
 if wCalcularPV = 0 then
 begin
   if porFora then
   begin
      wSql1 :='Update PRD0000 set   PRD_PVENDA = round (((PRD_PCUSTO + (PRD_PCUSTO * PRD_MARGEMVENDA / 100)) ' +' ),'+ IntToStr(dbInicio.Empresa.fPMT_QTDE_DEC_PED)  +')'+
     '                            ,PRD_PVENDA2 = round (((PRD_PCUSTO + (PRD_PCUSTO * PRD_MARGEMVENDA / 100)) * ' +FloatToSQL(wTab2)+' ),'+ IntToStr(dbInicio.Empresa.fPMT_QTDE_DEC_PED)  +')'+
     '                            ,PRD_PVENDA3 = round (((PRD_PCUSTO + (PRD_PCUSTO * PRD_MARGEMVENDA / 100)) * ' +FloatToSQL(wTab3)+' ),'+ IntToStr(dbInicio.Empresa.fPMT_QTDE_DEC_PED)  +')'+
     '                            ,PRD_PVENDA4 = round (((PRD_PCUSTO + (PRD_PCUSTO * PRD_MARGEMVENDA / 100)) * ' +FloatToSQL(wTab4)+' ),'+ IntToStr(dbInicio.Empresa.fPMT_QTDE_DEC_PED)  +')'+
     '                            ,PRD_PVENDA5 = round (((PRD_PCUSTO + (PRD_PCUSTO * PRD_MARGEMVENDA / 100)) * ' +FloatToSQL(wTab5)+' ),'+ IntToStr(dbInicio.Empresa.fPMT_QTDE_DEC_PED)  +')'+
     '                            ,PRD_PVENDA6 = round (((PRD_PCUSTO + (PRD_PCUSTO * PRD_MARGEMVENDA / 100)) * ' +FloatToSQL(wTab6)+' ),'+ IntToStr(dbInicio.Empresa.fPMT_QTDE_DEC_PED)  +')'

   end
   else
   begin
      wSql1 :='Update PRD0000 set  ' +
       '   PRD_PVENDA  = round (( (PRD_PCUSTO + (PRD_PCUSTO * (PRD_MARGEMVENDA / 100))) '                     +' ),'+ IntToStr(dbInicio.Empresa.fPMT_QTDE_DEC_PED)  +')'+
       '  ,PRD_PVENDA2 = round (( (PRD_PCUSTO + (PRD_PCUSTO * (PRD_MARGEMVENDA / 100))) * ' +FloatToSQL(wTab2)+' ),'+ IntToStr(dbInicio.Empresa.fPMT_QTDE_DEC_PED)  +')'+
       '  ,PRD_PVENDA3 = round (( (PRD_PCUSTO + (PRD_PCUSTO * (PRD_MARGEMVENDA / 100))) * ' +FloatToSQL(wTab3)+' ),'+ IntToStr(dbInicio.Empresa.fPMT_QTDE_DEC_PED)  +')'+
       '  ,PRD_PVENDA4 = round (( (PRD_PCUSTO + (PRD_PCUSTO * (PRD_MARGEMVENDA / 100))) * ' +FloatToSQL(wTab4)+' ),'+ IntToStr(dbInicio.Empresa.fPMT_QTDE_DEC_PED)  +')'+
       '  ,PRD_PVENDA5 = round (( (PRD_PCUSTO + (PRD_PCUSTO * (PRD_MARGEMVENDA / 100))) * ' +FloatToSQL(wTab5)+' ),'+ IntToStr(dbInicio.Empresa.fPMT_QTDE_DEC_PED)  +')'+
       '  ,PRD_PVENDA6 = round (( (PRD_PCUSTO * (PRD_PCUSTO * (PRD_MARGEMVENDA / 100))) * ' +FloatToSQL(wTab6)+' ),'+ IntToStr(dbInicio.Empresa.fPMT_QTDE_DEC_PED)  +')';
   end;
 end
 else if wCalcularPV = 1 then
 begin
   if porFora then // COM A ALTERAÇÃO DA ISSUE 1539 ACABOU IGUALANDO OS CÁLCULOS, FOI MANTIDA A ROTINA PARA EFEITO DE FUTURAS ALTERAÇÕES...
   begin
      wSql1 :='Update PRD0000 set PRD_PVENDA = round (((PRD_CUSTOCOMIPI + (PRD_CUSTOCOMIPI * PRD_MARGEMVENDA / 100)) ' +' ),'+ IntToStr(dbInicio.Empresa.fPMT_QTDE_DEC_PED)  +')'+
              ' ,PRD_PVENDA2 = round (((PRD_CUSTOCOMIPI + (PRD_CUSTOCOMIPI * PRD_MARGEMVENDA / 100))* '  +FloatToSQL(wTab2)+' ),'+ IntToStr(dbInicio.Empresa.fPMT_QTDE_DEC_PED)  +')'+
              ' ,PRD_PVENDA3 = round (((PRD_CUSTOCOMIPI + (PRD_CUSTOCOMIPI * PRD_MARGEMVENDA / 100))* '  +FloatToSQL(wTab3)+' ),'+ IntToStr(dbInicio.Empresa.fPMT_QTDE_DEC_PED)  +')'+
              ' ,PRD_PVENDA4 = round (((PRD_CUSTOCOMIPI + (PRD_CUSTOCOMIPI * PRD_MARGEMVENDA / 100))* '  +FloatToSQL(wTab4)+' ),'+ IntToStr(dbInicio.Empresa.fPMT_QTDE_DEC_PED)  +')'+
              ' ,PRD_PVENDA5 = round (((PRD_CUSTOCOMIPI + (PRD_CUSTOCOMIPI * PRD_MARGEMVENDA / 100))* '  +FloatToSQL(wTab5)+' ),'+ IntToStr(dbInicio.Empresa.fPMT_QTDE_DEC_PED)  +')'+
              ' ,PRD_PVENDA6 = round (((PRD_CUSTOCOMIPI + (PRD_CUSTOCOMIPI * PRD_MARGEMVENDA / 100))* '  +FloatToSQL(wTab6)+' ),'+ IntToStr(dbInicio.Empresa.fPMT_QTDE_DEC_PED)  +')';
   end
   else
   begin
      wSql1 :='Update PRD0000 set ' +
       '  PRD_PVENDA =  round (( (PRD_CUSTOCOMIPI + (PRD_CUSTOCOMIPI * (PRD_MARGEMVENDA / 100)))  '                      +' ),'+ IntToStr(dbInicio.Empresa.fPMT_QTDE_DEC_PED)  +')'+
       ' ,PRD_PVENDA2 = round (( (PRD_CUSTOCOMIPI + (PRD_CUSTOCOMIPI * (PRD_MARGEMVENDA / 100))) * '  +FloatToSQL(wTab2)+' ),'+ IntToStr(dbInicio.Empresa.fPMT_QTDE_DEC_PED)  +')'+
       ' ,PRD_PVENDA3 = round (( (PRD_CUSTOCOMIPI + (PRD_CUSTOCOMIPI * (PRD_MARGEMVENDA / 100))) * '  +FloatToSQL(wTab3)+' ),'+ IntToStr(dbInicio.Empresa.fPMT_QTDE_DEC_PED)  +')'+
       ' ,PRD_PVENDA4 = round (( (PRD_CUSTOCOMIPI + (PRD_CUSTOCOMIPI * (PRD_MARGEMVENDA / 100))) * '  +FloatToSQL(wTab4)+' ),'+ IntToStr(dbInicio.Empresa.fPMT_QTDE_DEC_PED)  +')'+
       ' ,PRD_PVENDA5 = round (( (PRD_CUSTOCOMIPI + (PRD_CUSTOCOMIPI * (PRD_MARGEMVENDA / 100))) * '  +FloatToSQL(wTab5)+' ),'+ IntToStr(dbInicio.Empresa.fPMT_QTDE_DEC_PED)  +')'+
       ' ,PRD_PVENDA6 = round (( (PRD_CUSTOCOMIPI + (PRD_CUSTOCOMIPI * (PRD_MARGEMVENDA / 100))) * '  +FloatToSQL(wTab6)+' ),'+ IntToStr(dbInicio.Empresa.fPMT_QTDE_DEC_PED)  +')';
     // (PRD_CUSTOCOMIPI / (1 - (PRD_MARGEMVENDA / 100)))
   end;
 end
else if wCalcularPV = 2 then
 begin
   if porFora then
   begin
      wSql1 :='Update PRD0000 set PRD_PVENDA = round (((PRD_PMEDIO + (PRD_PMEDIO * PRD_MARGEMVENDA / 100)) ' +' ),'+ IntToStr(dbInicio.Empresa.fPMT_QTDE_DEC_PED)  +')'+
              ' ,PRD_PVENDA2 = round (((PRD_PMEDIO + (PRD_PMEDIO * PRD_MARGEMVENDA / 100))* '  +FloatToSQL(wTab2)+' ),'+ IntToStr(dbInicio.Empresa.fPMT_QTDE_DEC_PED)  +')'+
              ' ,PRD_PVENDA3 = round (((PRD_PMEDIO + (PRD_PMEDIO * PRD_MARGEMVENDA / 100))* '  +FloatToSQL(wTab3)+' ),'+ IntToStr(dbInicio.Empresa.fPMT_QTDE_DEC_PED)  +')'+
              ' ,PRD_PVENDA4 = round (((PRD_PMEDIO + (PRD_PMEDIO * PRD_MARGEMVENDA / 100))* '  +FloatToSQL(wTab4)+' ),'+ IntToStr(dbInicio.Empresa.fPMT_QTDE_DEC_PED)  +')'+
              ' ,PRD_PVENDA5 = round (((PRD_PMEDIO + (PRD_PMEDIO * PRD_MARGEMVENDA / 100))* '  +FloatToSQL(wTab5)+' ),'+ IntToStr(dbInicio.Empresa.fPMT_QTDE_DEC_PED)  +')'+
              ' ,PRD_PVENDA6 = round (((PRD_PMEDIO + (PRD_PMEDIO * PRD_MARGEMVENDA / 100))* '  +FloatToSQL(wTab6)+' ),'+ IntToStr(dbInicio.Empresa.fPMT_QTDE_DEC_PED)  +')';
   end
   else
   begin
     wSql1 :='Update PRD0000 set ' +
       '  PRD_PVENDA =  round (( (PRD_PMEDIO + (PRD_PMEDIO * (PRD_MARGEMVENDA / 100)))  ' +' ),'                    + IntToStr(dbInicio.Empresa.fPMT_QTDE_DEC_PED)  +')'+
       ' ,PRD_PVENDA2 = round (( (PRD_PMEDIO + (PRD_PMEDIO * (PRD_MARGEMVENDA / 100))) * '  +FloatToSQL(wTab2)+' ),'+ IntToStr(dbInicio.Empresa.fPMT_QTDE_DEC_PED)  +')'+
       ' ,PRD_PVENDA3 = round (( (PRD_PMEDIO + (PRD_PMEDIO * (PRD_MARGEMVENDA / 100))) * '  +FloatToSQL(wTab3)+' ),'+ IntToStr(dbInicio.Empresa.fPMT_QTDE_DEC_PED)  +')'+
       ' ,PRD_PVENDA4 = round (( (PRD_PMEDIO + (PRD_PMEDIO * (PRD_MARGEMVENDA / 100))) * '  +FloatToSQL(wTab4)+' ),'+ IntToStr(dbInicio.Empresa.fPMT_QTDE_DEC_PED)  +')'+
       ' ,PRD_PVENDA5 = round (( (PRD_PMEDIO + (PRD_PMEDIO * (PRD_MARGEMVENDA / 100))) * '  +FloatToSQL(wTab5)+' ),'+ IntToStr(dbInicio.Empresa.fPMT_QTDE_DEC_PED)  +')'+
       ' ,PRD_PVENDA6 = round (( (PRD_PMEDIO + (PRD_PMEDIO * (PRD_MARGEMVENDA / 100))) * '  +FloatToSQL(wTab6)+' ),'+ IntToStr(dbInicio.Empresa.fPMT_QTDE_DEC_PED)  +')';
      // (PRD_PMEDIO / (1 - (PRD_MARGEMVENDA / 100))) ;
   end;
 end;



  DataCadastros.sqlUpdate.Close;
  DataCadastros.SqlUpdate.sql.text :=SQLDEF('PRODUTOS',wSql1,'WHERE PRD_CODIGO = '+QuotedStr( prd_codigo),'','');
  DataCadastros.sqlUpdate.Execsql;
end;

procedure TFrmEntradaNotaXml.BitBtn1Click(Sender: tObject);
begin
     if BuscaUmDadoSqlasInteger('Select cast(count(*) as integer) as conta from    for0000 where for_cgc='+qStr( ExtrairNumeros( edtFornecedorCnpj.text ) )+ConcatSe( ' and ', dbInicio.ExclusivoSql( 'FORNECEDORES' ) ) )=0 THEN
        CadastraFornecedor;
     FormFornec := TFormFornec.Create(Application);
     try
        FormFornec.FormStyle := fsNormal;
        FormFornec.Visible := false;
        FormFornec.ShowModal;
     finally
            FreeAndNil( FormFornec );
     end;
     pnlCadastroFornecedor.visible := not ValidaFornecedor;
end;

procedure TFrmEntradaNotaXml.BitBtn2Click(Sender: tObject);
begin
     AbreEdicao;
end;

procedure TFrmEntradaNotaXml.btnBit_GravarClick(Sender: tObject);
var

   sContaFinanceira,
   wAtualiza_pvenda,
   sCodigoFaturaPagar:string;
   rQuantidade,
   rPrecoUnitario,
   rVlr1,
   rVlr2,
   rVlr3,
   rTmpQuantidade,
   rTmp_Custo,
   wCustoIPI,
   wPIS_CRED,
   wCOFINS_CRED,
   wIPI_valor,
   wICMS_valor,
   wCUSTO_CREDITO,
   wVLR_AGREGADO,
   wPERC_RATEIO,
   wValor_frete,
   wValor_despesas,
   wValor_seguro,
   wValor_subTrib,
   wEstoque,
   wCUSTO_MEDIO,
   wFinaliza,
   ValorImpostosRetirados:Double;
   I,
   iRegistro:Integer;
   bIndustrRetorno : Boolean;
   NotaExisteBanco, Sobra : boolean;
   NumeroNota, NaturezaEntrada, AMXSobra, EspacosXML: string;
begin
   try
     btnBit_Gravar.Enabled := False;
     if (Prevalida) then
     begin
         CdsItens.First;
         cdsItens.DisableControls;
         sCFOP := CdsItensCFOP.AsString;
         sCFOPRegistro := RetornaRegistroCFOP(sCFOP);
         //Conta Ficanceira
         wAtualiza_pvenda := 'N';
         FormNfEntrada.PesqFornecedor.idRetorno := sRegistroFornecedor;
         sContaFinanceira := FormNfEntrada.PesqFornecedor.CDS.FieldByName('CCT_CODIGO').AsString;
         wAtualiza_pvenda  :=  FormNfEntrada.PesqFornecedor.CDS.FieldByName('FOR_ATUALIZA_PVENDA').AsString;

         {inserir dados no arquivo ENF0001}
         DataMovimento.CdsEnf.Close;
         DataMovimento.CdsEnf.CommandText := SQLDEF('ORDENSCOMPRA','select O2.* from ENF0001 O2','where O2.ENF_TIPO_NF_ENTRADA = ''N'' and O2.FOR_CODIGO = '''+sRegistroFornecedor+''' and O2.ENF_NOTANUMBER = '''+PreenchezeroEsquerda(IntToStr(FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Ide.nNF),10)+'''','O2.FOR_CODIGO,O2.ENF_NOTANUMBER','O2.');
         DataMovimento.CdsEnf.Open;
         NotaExisteBanco := not DataMovimento.CdsEnf.IsEmpty; //se a nota ja existe no banco coloca a serie junto com a numero nota
         if NotaExisteBanco then
         begin
             DataMovimento.CdsEnf.Close;
             DataMovimento.CdsEnf.CommandText := SQLDEF('ORDENSCOMPRA','select O2.* from ENF0001 O2',
              'where O2.ENF_TIPO_NF_ENTRADA = ''N'' and O2.FOR_CODIGO = '''+sRegistroFornecedor+
              ''' and O2.ENF_NOTANUMBER = '''+PreenchezeroEsquerda(IntToStr(FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Ide.nNF),10)+''''+
              ' AND ENF_SERIE = '+QuotedStr(IntToStr(FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Ide.serie)),
              'O2.FOR_CODIGO,O2.ENF_NOTANUMBER','O2.');
             DataMovimento.CdsEnf.Open;
         end;
         wsql1:= ' UPDATE FOR0000  '+
                ' SET FOR_DATAULTFORNECIMENTO = '+DateToSQL(FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Ide.dEmi)+
                ' WHERE FOR_CODIGO = '+QuotedStr(sRegistroFornecedor);

         Execsql(wSql1);


         DataMovimento.CdsEnf.Insert;
         DataMovimento.CdsEnfENF_REGISTRO.AsInteger := dbInicio.GetNextSequence('GEN_ENTRADA_NF');
         DataMovimento.CdsEnfOCP_CODIGO.AsString             := '000000';
         DataMovimento.CdsEnfCCT_CODIGO.AsString             := sContaFinanceira;
         DataMovimento.CdsEnfFOR_CODIGO.AsString             := sRegistroFornecedor;
         DataMovimento.CdsEnfPCL_CODIGO.AsString             := '';
         if FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Transp.Vol.Count > 0 then
           DataMovimento.CdsEnfENF_PESO_L.AsCurrency           := FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Transp.Vol.Items[0].pesoL;
         DataMovimento.CdsEnfENF_TIPO_NF_ENTRADA.AsString    := 'N';
         if NotaExisteBanco then
           NumeroNota := PreenchezeroEsquerda(IntToStr(FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Ide.nNF)+'-'+
                                                                          IntToStr(FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Ide.serie),10)
         else
           NumeroNota := PreenchezeroEsquerda(IntToStr(FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Ide.nNF),10);
         edtNumerNfe.Text := NumeroNota;
         DataMovimento.CdsEnfENF_NOTANUMBER.AsString         := NumeroNota;
         DataMovimento.CdsEnfENF_ENTRADA.AsDateTime          := Now;
         DataMovimento.CdsEnfENF_EMISSAO.AsDateTime          := FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Ide.dEmi;
         DataMovimento.CdsEnfENF_VLFRETE.AsFloat             :=FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vFrete;
         DataMovimento.CdsEnfENF_FRETEPARTICIPATOT.AsFloat   := 0;
         DataMovimento.CdsEnfENF_DESP_ACES.AsFloat           :=FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vOutro;
         DataMovimento.CdsEnfENF_CHAVE_NFE.AsString          := edtChave.Text;
         DataMovimento.CdsEnfENF_SERIE.AsString              := edtSerie.Text;
         DataMovimento.CdsEnfENF_VLSEGURO.AsFloat            :=FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vSeg;
         DataMovimento.CdsEnfENF_VL_DESCTO.AsFloat           :=FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vDesc;
         DataMovimento.CdsEnfENF_ALIQ_ICMS.AsFloat           := 0;
         DataMovimento.CdsEnfENF_BASE_IPI.AsFloat            := dBaseIPI;
         DataMovimento.CdsEnfENF_VL_IPI.AsFloat              :=FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vIPI;
         DataMovimento.CdsEnfENF_VLPIS.AsFloat               :=FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vPIS;
         DataMovimento.CdsEnfENF_VLCOFINS.AsFloat            :=FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vCOFINS;
         DataMovimento.CdsEnfENF_VLBASESUBTRIB.AsFloat       :=FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vBCST;
         DataMovimento.CdsEnfENF_VL_SUBTRIB.AsFloat          :=FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vST;
         DataMovimento.CdsEnfENF_TOT_PROD.AsFloat            :=FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vProd;
         DataMovimento.CdsEnfENF_TOT_NOTA.AsFloat            :=FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vNF;
         DataMovimento.CdsEnfENF_BASEICMS.AsFloat            :=FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vBC;
         DataMovimento.CdsEnfENF_VL_ICMS.AsFloat             :=FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vICMS;

         DataMovimento.CdsEnfOPE_CODIGO.AsString             := sCFOPRegistro;
         DataMovimento.CdsEnfOPE_NATUREZA.AsString           := sCFOP;
         DataMovimento.CdsEnfENF_MODELO_NF.AsString          := '55';
         DataMovimento.CdsEnfENF_TIPO_NF_ENTRADA.AsString    := 'N';
         DataMovimento.CdsEnfEMP_CODIGO.AsString             := dbInicio.Empresa.EMP_CODIGO;
         DataMovimento.CdsEnfENF_TIPO_FRETE.AsString         := sModalFrete;
         DataMovimento.CdsEnfENF_DADOS_ADICIONAIS.AsString   :=FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.InfAdic.infCpl;
         DataMovimento.CdsEnfENF_DADOS_ADICIONAIS_FISCO.AsString   :=FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.InfAdic.infAdFisco;
         if FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.pag.count >0 then
         begin
           case FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.pag.Items[0].tPag of
             fpCartaoCredito : DataMovimento.CdsEnfENF_MODALIDADE.AsString := '3';
             fpCartaoDebito : DataMovimento.CdsEnfENF_MODALIDADE.AsString := '4';

             else
                case FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Ide.indPag of
                   ipVista :  DataMovimento.CdsEnfENF_MODALIDADE.AsString := '0';
                   ipPrazo :  DataMovimento.CdsEnfENF_MODALIDADE.AsString := '1';
                   ipOutras:  DataMovimento.CdsEnfENF_MODALIDADE.AsString := '2';
                end;
            end;
         end;



         if cbMovimentaEstoque.Checked then
            dataMovimento.CdsEnfENF_ATUALIZA_ESTOQUE.AsString := 'S'
         else
           dataMovimento.CdsEnfENF_ATUALIZA_ESTOQUE.AsString := 'N';
         {
         if MatchStr(DataMovimento.CdsEnfOPE_NATUREZA.AsString, ['5901','5902','5903','5925','1901', '1903'])  then
         begin
           DataMovimento.CdsEnfENF_INDUSTRIALIZACAO.AsString := 'S';
           FormNfEntrada.chkIndustrializacao.Checked := True;
         end
         Else
         begin
           DataMovimento.CdsEnfENF_INDUSTRIALIZACAO.AsString := 'N';
           FormNfEntrada.chkIndustrializacao.Checked := False;
         end;
         }
         if FormNfEntrada.chkIndustrializacao.Checked = True then
           DataMovimento.CdsEnfENF_INDUSTRIALIZACAO.AsString := 'S'
         else
           DataMovimento.CdsEnfENF_INDUSTRIALIZACAO.AsString := 'N';


         if sCaminhoXML <> '' then
           DataMovimento.CdsEnfENF_XML.LoadFromFile(sCaminhoXML)
         else
         begin
           DataMovimento.CdsEnfENF_XML.AsString := FormNfEntrada.acbrnf1.notasFiscais[0].XMLAssinado;
         end;
         EspacosXML := StringReplace(DataMovimento.CdsEnfENF_XML.AsString, ')', ') ', [rfReplaceAll, rfIgnoreCase]);
         DataMovimento.CdsEnfENF_XML.AsString := EspacosXML;

         DataMovimento.CdsEnf.ApplyUpdates(0);
         DataMovimento.CdsEnf.Refresh;
         //Grava Itens
         CdsItens.First;
         I := 0;

         CdsItens.First;
         while (not CdsItens.Eof) do
         begin
               //vARIAVEIS
               wIPI_valor := 0;
               wICMS_valor := 0;
               wPIS_CRED := 0;
               wCOFINS_CRED := 0;
               if (CdsItensReferencia.AsString = '')  and DBInicio.Empresa.bPMT_INCLUIRRAPIDO and (tipoProduto = '') then
               begin
                 if not assigned(frmPesqTipoProduto) then
                   frmPesqTipoProduto := TfrmPesqTipoProduto.Create(Application);
                  try
                   frmPesqTipoProduto.ShowModal;
                    tipoProduto := frmPesqTipoProduto.IDRetorno
                  finally
                    FreeAndNil(frmPesqTipoProduto);
                  end;
               end;
               Application.ProcessMessages;

               // se for cadastro rapido dos intes não pede para entrar 1 a 1
               // if (CdsItensReferencia.AsString = '') and DBInicio.Empresa.bPMT_INCLUIRRAPIDO  then
               if DBInicio.Empresa.bPMT_INCLUIRRAPIDO  then
               begin
                  if CdsItensReferencia.AsString = '' then
                    CadastarProduto;
                  if (DBInicio.GetParametroSistema('PMT_DESC_ORIGINAL_INDUST') = 'S') then
                    begin
                      if cdsItens.State = dsBrowse then
                        cdsItens.Edit;
                      CdsItensDescricao.AsString := '[' + UpperCase(cdsItensReferenciaFornecedor.AsString) + '] ' + UpperCase(CdsItensDescricao.AsString);
                    end;
               end;

               rQuantidade    := CdsItensQuantidade.AsFloat;
               rPrecoUnitario := CdsItensPrecoUnitario.AsFloat;
               sProdutoRegistro := RetornaProdutoReferencia(CdsItensReferencia.AsString);
               if (cdsItensFatorConversao.AsFloat > 0)
               and (BuscaUmDadoSqlAsInteger('Select cast(count(*) as integer) as conta from    PRD_FATORCONVERSAO  '+
                                           ' WHERE PRD_CODIGO = '+QuotedStr(sProdutoRegistro)+
                                           ' AND FOR_CODIGO = '+  QuotedStr(sRegistroFornecedor)+
                                           ' AND UNID_CONV  = '+ QuotedStr(cdsItensUCom.AsString)) = 0)  then
               begin
                  ExecSql('insert into PRD_FATORCONVERSAO (PRD_CODIGO, FOR_CODIGO, UNID_CONV, FAT_CONV) ' +
                          'values ('+QuotedStr(sProdutoRegistro) + ','+  QuotedStr(sRegistroFornecedor)+','+QuotedStr(uppercase(cdsItensUCom.AsString))+ ',' +
                           FloatToSQL(cdsItensFatorConversao.AsFloat) +')')


               end;
               //Usa Fator de Conversão
               if (CdsItensRegistroConversao.AsString <> '') then
               begin
                     CdsConversaoUnidade.Close;
                     CdsConversaoUnidade.CommandText := 'select '+
                                                        '    T1.conv_registro, '+
                                                        '    T1.conv_und_de, '+
                                                        '    T1.conv_und_para, '+
                                                        '    T1.conv_und_de ||'' <=> ''|| T1.conv_und_para AS DESCRICAO, '+
                                                        '    T1.conv_operacao, '+
                                                        '    T1.conv_fator '+
                                                        'from CONV0000 t1 '+
                                                        'where conv_registro = '+CdsItensRegistroConversao.AsString;

                      CdsConversaoUnidade.Open;
                      if (not CdsConversaoUnidade.IsEmpty) then
                      begin
                           if (CdsItensUnidade.AsString = CdsConversaoUnidadeCONV_UND_DE.AsString) then
                           begin
                                 if (CdsConversaoUnidadeCONV_OPERACAO.AsString = 'M') then
                                 begin
                                       rQuantidade := rQuantidade * CdsConversaoUnidadeCONV_FATOR.AsFloat;
                                       rPrecoUnitario := rPrecoUnitario / CdsConversaoUnidadeCONV_FATOR.AsFloat;
                                 end
                                 else
                                 begin
                                       rQuantidade := rQuantidade / CdsConversaoUnidadeCONV_FATOR.AsFloat;
                                       rPrecoUnitario := rPrecoUnitario * CdsConversaoUnidadeCONV_FATOR.AsFloat;
                                 end;
                           end
                           else
                           begin
                                 if (CdsConversaoUnidadeCONV_OPERACAO.AsString = 'M') then
                                 begin
                                       rQuantidade := rQuantidade / CdsConversaoUnidadeCONV_FATOR.AsFloat;
                                       rPrecoUnitario := rPrecoUnitario * CdsConversaoUnidadeCONV_FATOR.AsFloat;
                                 end
                                 else
                                 begin
                                       rQuantidade := rQuantidade * CdsConversaoUnidadeCONV_FATOR.AsFloat;
                                       rPrecoUnitario := rPrecoUnitario / CdsConversaoUnidadeCONV_FATOR.AsFloat;
                                 end;
                           end;
                      end;
               end;

               rTmp_Custo :=  rPrecoUnitario;

               if (CdsItensValorDesconto.AsFloat > 0)and(rQuantidade > 0) then
                  rTmp_Custo := rTmp_Custo - (CdsItensValorDesconto.AsFloat / rQuantidade);

               rTmpQuantidade := rQuantidade;

               //BuscaOperacaoCFOP(FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Det.Items[I].Prod.CFOP);
               wVLR_AGREGADO :=  rPrecoUnitario;

               if (CdsItensValorPIS.AsCurrency > 0) then
                  wPIS_CRED := (CdsItensValorPIS.AsCurrency /  rTmpQuantidade);
               if (CdsItensValorCofins.AsCurrency > 0) then
                  wCOFINS_CRED := (CdsItensValorCofins.AsCurrency /  rTmpQuantidade);

               // calcular o valor do IPI e do ICMS para CUSTO COM CREDITO
               if (CdsItensValorIPI.AsCurrency > 0) then
                  wIPI_valor := (CdsItensValorIPI.AsCurrency / rTmpQuantidade)
               else
                  wIPI_valor := 0;

               if (CdsItensValorICMS.AsCurrency > 0) then
                  wICMS_valor := (CdsItensValorICMS.AsCurrency / rTmpQuantidade);

               wCUSTO_CREDITO := (wPIS_CRED + wCOFINS_CRED + wICMS_valor);

               //IPI não precisa ratear pois o IPI é por item
               wVLR_AGREGADO := wVLR_AGREGADO + wIPI_valor;

               //rateio de frete
               wPERC_RATEIO   := (((rTmpQuantidade * rTmp_Custo) * 100)/FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vProd);
               wValor_frete  := (((wPERC_RATEIO *FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vFrete) / 100) / rTmpQuantidade);
               wVLR_AGREGADO := wVLR_AGREGADO + wvalor_frete;

               //rateio de depesas acessorias
               wPERC_RATEIO  := (((rTmpQuantidade * rTmp_Custo) * 100)/FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vProd);
               wValor_despesas:= (((wPERC_RATEIO *FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vOutro) / 100) / rTmpQuantidade);
               wVLR_AGREGADO := wVLR_AGREGADO + wvalor_despesas;

               //rateio de seguro
               wPERC_RATEIO  := (((rTmpQuantidade * rTmp_Custo) * 100)/FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vProd);
               wValor_seguro := (((wPERC_RATEIO *FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vSeg) / 100) / rTmpQuantidade);
               wVLR_AGREGADO := wVLR_AGREGADO + wValor_seguro;

               if DBInicio.Empresa.PMT_ICMS_CUSTOENTRADA then //retirar imcs
                  ValorImpostosRetirados := wICMS_valor
               else
                ValorImpostosRetirados :=0;

               if DBInicio.Empresa.PMT_PIS_CUSTOENTRADA then // retirar pis/cofins
                  ValorImpostosRetirados := ValorImpostosRetirados + (wPIS_CRED + wCOFINS_CRED ) ;

                wVLR_AGREGADO := wVLR_AGREGADO - ValorImpostosRetirados;

               //rateio da substituição tributária -> fazer pelo total pois ainda não é informado qual item tem Sub.T.ou não
               //wPERC_RATEIO := (((rTmpQuantidade * rTmp_Custo) * 100)/FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vProd);
               //wValor_subTrib:= (((wPERC_RATEIO *FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vST) / 100) / rTmpQuantidade);
               //wVLR_AGREGADO := wVLR_AGREGADO + wValor_subTrib;
               if (CdsItensValorICMSST.AsCurrency > 0) then
               begin
                     wValor_subTrib := (CdsItensValorICMSST.AsCurrency / rTmpQuantidade);
                     wVLR_AGREGADO := wVLR_AGREGADO + wValor_subTrib;
               end
               else
                 wValor_subTrib := 0;

               //custo medio
//                if not DataCadastros.CdsProdutos.Active then
//                begin
//                  DataCadastros.CdsProdutos.Open;
//                  // DataCadastros.CdsProdutos.IndexName := 'idxCdsProdutosPRD_CODIGO';
//                end;

               DataCadastros.CdsProdutos.Close;
               DataCadastros.CdsProdutos.CommandText := 'SELECT * FROM PRD0000 WHERE PRD_CODIGO = ' + QuotedStr(sProdutoRegistro);
               DataCadastros.CdsProdutos.Open;



               // DataCadastros.CdsProdutos.Locate('PRD_CODIGO', sProdutoRegistro,[]);


               wEstoque := KardexRetornaSaldo(sProdutoRegistro, CdsItensAlmoxarifadoCodigo.AsString,'');

               if (wEstoque < 0) then
                  wEstoque := 0;

               if (dbInicio.Empresa.wCalcularPM = 0) or (dbInicio.Empresa.wCalcularPM = Null) then    // custo medio pelo custo liquido
               begin
                    if DataCadastros.CdsProdutosPRD_PMEDIO.AsFloat       > 0 then
                      wCUSTO_MEDIO := (((rTmp_Custo * rTmpQuantidade) + (DataCadastros.CdsProdutosPRD_PMEDIO.AsFloat       * wEstoque      )) / (rTmpQuantidade + wEstoque      ))
                    else
                    if DataCadastros.CdsProdutosPRD_PCUSTO.AsFloat       > 0 then
                     wCUSTO_MEDIO := (((rTmp_Custo * rTmpQuantidade) + (DataCadastros.CdsProdutosPRD_PCUSTO.AsFloat       * wEstoque      )) / (rTmpQuantidade + wEstoque      ))
                    else
                     wCUSTO_MEDIO := (rTmp_Custo * rTmpQuantidade);
               end
               else
               if dbInicio.Empresa.wCalcularPM = 1 then      // custo médio pelo custo de entrada
               begin
                    if DataCadastros.CdsProdutosPRD_PMEDIO.AsFloat       > 0 then
                       wCUSTO_MEDIO := (((( wVLR_AGREGADO) * rTmpQuantidade) + (DataCadastros.CdsProdutosPRD_PMEDIO.AsFloat       * wEstoque      )) / (rTmpQuantidade + wEstoque      ))
                    else
                    if DataCadastros.CdsProdutosPRD_PCUSTO.AsFloat       > 0 then
                       wCUSTO_MEDIO := (((( wVLR_AGREGADO) * rTmpQuantidade) + (DataCadastros.CdsProdutosPRD_PCUSTO.AsFloat       * wEstoque      )) / (rTmpQuantidade + wEstoque      ))
                    else
                       wCUSTO_MEDIO := ( wVLR_AGREGADO); // (rTmp_Custo);
               end
               else
               if dbInicio.Empresa.wCalcularPM = 2 then    // custo médido pelo custo com creditos de impostos
               begin
                    if DataCadastros.CdsProdutosPRD_PMEDIO.AsFloat       > 0 then
                       wCUSTO_MEDIO := ((((rTmp_Custo - wCUSTO_CREDITO) * rTmpQuantidade) + (DataCadastros.CdsProdutosPRD_PMEDIO.AsFloat       * wEstoque      )) / (rTmpQuantidade + wEstoque      ))
                    else
                    if DataCadastros.CdsProdutosPRD_PCUSTO.AsFloat       > 0 then
                       wCUSTO_MEDIO := ((((rTmp_Custo - wCUSTO_CREDITO) * rTmpQuantidade) + (DataCadastros.CdsProdutosPRD_PCUSTO.AsFloat       * wEstoque      )) / (rTmpQuantidade + wEstoque      ))
                    else
                       wCUSTO_MEDIO := (rTmp_Custo - wCUSTO_CREDITO) ;
               end;


               if IsNaN(wCUSTO_MEDIO) then
                   wCUSTO_MEDIO := (rTmp_Custo);
               if IsInfinite(wCUSTO_MEDIO) then
                   wCUSTO_MEDIO := (rTmp_Custo);
               if IsInfinite(wValor_frete) then
                   wValor_frete := (0);
               if IsInfinite(wValor_despesas) then
                   wValor_despesas := (0);
               if IsInfinite(wValor_subTrib) then
                   wValor_subTrib := (0);
               if IsInfinite(wVLR_AGREGADO) then
                   wVLR_AGREGADO := (0);
               if IsNaN(wValor_frete) then
                   wValor_frete := (0);
               if IsNaN(wValor_despesas) then
                   wValor_despesas := (0);
               if IsNaN(wValor_subTrib) then
                   wValor_subTrib := (0);
               if IsNaN(wVLR_AGREGADO) then
                   wVLR_AGREGADO := (0);

               //busca a cfop para lancar e ver se atuala custo
               BuscaOperacaoCFOP(CdsItensCFOP.AsString);


               //Verifica se a cfop atualiza custo
               if (SqlCdsOPOPE_ATUALIZA_CUSTO.AsString = 'S') then
               begin
                     // iNumeroTransacaoAtual := Executa_Transacao('I',0);
                     // BeginTransaction;
                     wSql1 :='Update PRD0000 Set PRD_ENTRADA  = (PRD_ENTRADA + '+ValorAmericano(CurrToStr((rTmpQuantidade)))+')'+
                                                ', PRD_PENDENTE = (PRD_PENDENTE - '+ValorAmericano(FloatToStr(wFinaliza))+')'+
                                                ', PRD_PCUSTO   = '+ValorAmericano(CurrToStr(rTmp_Custo))+
                                                //pvenda
                                                ', PRD_CUSTOFRETE   = '+ValorAmericano(CurrToStr(wValor_frete))+
                                                ', PRD_CUSTOADCIONAL= '+ValorAmericano(CurrToStr(wValor_despesas))+
                                                ', PRD_CUSTOIPI     = '+ValorAmericano(CurrToStr(wIPI_valor))+
                                                ', PRD_CUSTOSUBTRIB = '+ValorAmericano(CurrToStr(wValor_subTrib))+
                                                ', PRD_CUSTO_CREDITO = '+ValorAmericano(CurrToStr(rTmp_Custo - wCUSTO_CREDITO))+ //custo com credito
                                                ', PRD_CUSTOCOMIPI = '+ValorAmericano(FloatToStr(wVLR_AGREGADO))+    //custo agregado
                                                ', PRD_IMPOSTOS_RETIRADOS = '+ValorAmericano(FloatToStr(ValorImpostosRetirados))+
                                                ', PRD_PMEDIO = '+ValorAmericano(FloatToStr(wCUSTO_MEDIO))+    //custo medio
                                                ', PRD_DTPCUSTO = '''+DataAmericana(DateToStr(FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Ide.dEmi))+''''+
                                                ', FOR_CODIGO = '''+sRegistroFornecedor+'''';


                     DataCadastros.sqlUpdate.Close;
                     DataCadastros.SqlUpdate.sql.text :=SQLDEF('PRODUTOS',wSql1,'WHERE PRD_CODIGO = '''+sProdutoRegistro+'''','','');
                     DataCadastros.sqlUpdate.Execsql;

                   // Atualizar preço de venda conforme fornecedor
                   if (wAtualiza_pvenda = 'S') then
                     AtualizarTabelaPrecos(sProdutoRegistro);
                   // CommitTransaction;
                     // Executa_Transacao('C',iNumeroTransacaoAtual);
               end;



               {Inserir dados no arquivo ENF_IT01}
               iRegistro := dbInicio.GetNextSequence('gen_enf_it01');
               wSql1 := 'INSERT INTO ENF_IT01 ('+
                              'ENF_registro,'+
                              'ENF_IT_DET_NITEM, ' +
                              'ENF_IT_NOTANUMBER,'+
                              'ENF_LOTE,'+
                              'OPE_CODIGO,'+
                              'OPE_CODIGO_RETORNO,'+
                              'PCX_CODIGO,'+
                              'ENF_CFOP,'+
                              'ENF_ORIGEM_MERCADORIA, ' +
                              'OCP_CODIGO,'+
                              'PRD_REFER,'+
                              'PRD_DESCRI,'+
                              'ENF_ICMS,'+
                              'ENF_QTDE,'+
                              'ENF_UNIDADE_TRABALHO,'+
                              'ENF_PRECO,'+
                              'ENF_CUSTO,'+
                              'ENF_PESO_ENTRADA,'+
                              'ENF_IPIALIQ,'+
                              'FOR_CODIGO,'+
                              'AMX_CODIGO,'+
                              'PRD_CODIGO,'+
                              'USU_CODIGO,'+
                              'REPETICAO_REFER,'+
                              'ENF_ICMSALIQ,'+
                              'ENF_VLSUBST,'+
                              'ENF_IT_VLIPI,'+
                              'ENF_IT_BASEIPI,'+
                              'ENF_IT_DESCTO,'+
                              'ENF_IT_BASEICMS,'+
                              'ENF_IT_BASESUBTRIB,'+
                              'ENF_IT_VALFRETE,'+
                              'ENF_IT_VLSEGURO,'+
                              'ENF_IT_VLDESP_ACES,'+
                              'ENF_IT_VLSUBTRIB,'+
                              'ENF_IT_ALIQSUBTRIB,'+
                              'ENF_IT_ALIQPIS,'+
                              'ENF_IT_VLPIS,'+
                              'ENF_IT_ALIQCOFINS,'+
                              'ENF_IT_VLCOFINS,'+
                              'ENF_BASEPIS,'+
                              'ENF_BASECOFINS,'+
                              'STB_TRIBUTACAO,'+
                              'CST_PIS,'+
                              'CST_COFINS,'+
                              'CST_IPI,'+
                              'ENF_ATUALIZA_PRECO,'+
                              'ENF_ATUALIZA_ESTOQUE,'+
                              'EMP_CODIGO, '+
                              'ENF_UCOM, ENF_UTRIB,'+
                              'ENF_QTDE_ORIGINAL , '+
                              'ENF_PRECO_ORIGINAL, '+
                              'ENF_PTOTAL_ORIGINAL )' ;



               wSql2 := 'VALUES ('''+IntToStr(iRegistro)+''','''+
                                 cdsItensnitem.AsString+''','''+
                                 NumeroNota+''','''+
                                 ''+''','''+
                                 cdsItensOPE_CODIGO.AsString+''','''+
                                 cdsItensOPE_CODIGO_RETORNO.AsString+''','''+
                                 cdsItensPCX_CODIGO.AsString+''','''+
                                 CdsItensCFOP.AsString+''','''+
                                 CdsItensENF_ORIGEM_MERCADORIA.AsString + ''',''' +
                                 '000000'','''+
                                 CdsItensReferencia.AsString+''','+
                                 QuotedStr(COPY(CdsItensDescricao.AsString,1,80)) +  ','''+
                                 ValorAmericano(FloatToStr(CdsItensValorICMS.AsCurrency))+''','''+
                                 ValorAmericano(FloatToStr(rQuantidade))+''','''+
                                 ValorAmericano(CurrToStr(rQuantidade))+''','''+
                                 ValorAmericano(FloatToStr(rPrecoUnitario))+''','''+
                                 ValorAmericano(CurrToStr(rTmp_Custo))+''','''+
                                 ValorAmericano(CurrToStr(CdsItensrPesoXML.AsFloat))+''','''+
                                 ValorAmericano(FloatToStr(CdsItensAliqIPI.AsCurrency))+''','''+
                                 StrZero(sRegistroFornecedor,FormNfEntrada.EdtFor_Codigo.MaxLength)+''','''+
                                 CdsItensAlmoxarifadoCodigo.AsString+''','''+
                                 sProdutoRegistro+''','''+
                                 dbInicio.Usuario.Codigo+''','''+
                                 IntToStr(1)+''','''+
                                 ValorAmericano(FloatToStr(CdsItensAliqICMS.AsCurrency))+''','''+
                                 ValorAmericano(FloatToStr(CdsItensValorICMSST.AsCurrency))+''','''+
                                 ValorAmericano(FloatToStr(CdsItensValorIPI.AsCurrency))+''','''+
                                 ValorAmericano(FloatToStr(CdsItensBaseIPI.AsCurrency))+''','''+
                                 ValorAmericano(FloatToStr(CdsItensValorDesconto.AsCurrency))+''','''+
                                 ValorAmericano(FloatToStr(CdsItensBaseICMS.AsCurrency))+''','''+
                                 ValorAmericano(FloatToStr(CdsItensBaseICMSST.AsCurrency))+''','''+
                                 ValorAmericano(FloatToStr(FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Det.Items[I].Prod.vFrete))+''','''+
                                 ValorAmericano(FloatToStr(FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Det.Items[I].Prod.vSeg))+''','''+
                                 ValorAmericano(FloatToStr(FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Det.Items[I].Prod.vOutro))+''','''+
                                 ValorAmericano(FloatToStr(CdsItensValorICMSST.AsCurrency))+''','''+
                                 ValorAmericano(FloatToStr(CdsItensAliqICMSST.AsCurrency))+''','''+
                                 ValorAmericano(FloatToStr(CdsItensAliqPIS.AsCurrency))+''','''+
                                 ValorAmericano(FloatToStr(CdsItensValorPIS.AsCurrency))+''','''+
                                 ValorAmericano(FloatToStr(CdsItensAliqCofins.AsCurrency))+''','''+
                                 ValorAmericano(FloatToStr(CdsItensValorCofins.AsCurrency))+''','''+
                                 ValorAmericano(FloatToStr(cdsItensBasePIS.AsCurrency))+''','''+
                                 ValorAmericano(FloatToStr(cdsItensBaseCOFINS.AsCurrency))+''','''+
                           //      ValorAmericano(FloatToStr(FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Det.Items[I].Imposto.PIS.vBC))+''','''+
//                                 ValorAmericano(FloatToStr(FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Det.Items[I].Imposto.COFINS.vBC))+''','''+
                                 CdsItensCST.AsString+''','''+
                                 CdsItensCSTPIS.AsString+''','''+
                                 CdsItensCSTCofins.AsString+''','''+
                                 CdsItensCSTIPI.AsString+''','''+
                                 SqlCdsOPOPE_ATUALIZA_CUSTO.AsString+''','''+
                                 iif (cbMovimentaEstoque.Checked,'S','N')+''','+
                                 QuotedStr(dbInicio.Empresa.EMP_CODIGO)+','+
                                 QuotedStr(UpperCase(cdsItensUCom.AsString))  +',' +
                                 QuotedStr(UpperCase(cdsItensUTrib.AsString)) +','+
                                 FloatToSQL(cdsItensENF_QTDE_ORIGINAL.AsFloat)+','+
                                 FloatToSQL(cdsItensENF_PRECO_ORIGINAL.AsFloat)+ ','+
                                 FloatToSQL(cdsItensENF_PTOTAL_ORIGINAL.AsFloat)+  ')';
               ExecSql(wSql1 + wSql2);
               if BuscaUmDadoSqlAsString('SELECT PRD_GERENCIA_LOTE FROM PRD0000 WHERE PRD_REFER = ' + QuotedStr(CdsItensReferencia.AsString) ) = 'S' then
               begin
                 if CdsItensRegistroLote.AsString = '' then
                   uteis.Aviso('O produto ' + CdsItensReferencia.AsString + ' utiliza controle de lote e o lote não foi informado!!')
                 else
                   ExecSql('UPDATE ENF_IT01 SET PRDL_REGISTRO = ' + CdsItensRegistroLote.AsString + ' WHERE ENF_REGISTRO = ' + IntToStr(iRegistro) );
               end;

               //Verifica se atualiza estoque
               if (cbMovimentaEstoque.Checked) then
               begin
                     bIndustrRetorno :=  DBInicio.BuscaUmDadoSqlAsString
                                   ('SELECT OPE_RETORNO_INDUST  FROM OPE0000  '+
                                    ' WHERE OPE_CODIGO = '+QuotedStr(cdsItensOPE_CODIGO.AsString)) = 'S' ;
                     if CdsItensAlmoxarifadoCodigo.AsString = '' then
                     begin
                       if cdsItens.State = dsBrowse then
                         cdsItens.Edit;
                       cdsItensAlmoxarifadoCodigo.AsString := DBInicio.Empresa.wPmt_Amx_EntradaNota;
                       cdsItens.Post;
                     end;
                     KardexLancamento(IntToStr(iRegistro),
                                      'ENF',
                                      StrZero(CdsItensAlmoxarifadoCodigo.AsString,FormNfEntrada.EdtAlmox.MaxLength),
                                      '',
                                      sProdutoRegistro,
                                      '',//grade
                                      '',
                                      iif(bIndustrRetorno,'S','E'),
                                      '',
                                      CdsItensRegistroLote.AsString,
                                      iif (bIndustrRetorno,'Saída  do Estoque do Industrializador(Terceiro)', 'ENTRADA DE ITEM NOTA FISCAL - VIA XML'),
                                      Now,
                                      rQuantidade,
                                      NumeroNota,
                                      StrZero(sRegistroFornecedor,FormNfEntrada.EdtFor_Codigo.MaxLength)+'-'+FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Emit.xNome,
                                      rPrecoUnitario);

                     NaturezaEntrada :=  DBInicio.BuscaUmDadoSqlAsString
                                   ('SELECT OPE_NATUREZA_ENTRADA  FROM OPE0000  '+
                                    ' WHERE OPE_CODIGO = '+QuotedStr(cdsItensOPE_CODIGO.AsString))  ;
                     Sobra := DBInicio.BuscaUmDadoSqlAsString('SELECT FIRST 1 OPE_RETORNO_INDUST_SOBRA FROM OPE0000  '+
                                    ' WHERE OPE_NATUREZA = '+ QuotedStr(NaturezaEntrada)) = 'S' ;
                     if Sobra then
                     begin

                       AMXSobra :=  BuscaUmDadoSqlAsString('SELECT AMX_CODIGO ' +
                                                            ' FROM ALMOX0000 ' +
                                                            ' WHERE AMX_ATIVO = ''S'' '+
                                                            ' AND AMX_CNPJ_PART = '+QuotedStr(RetirarMascaraCNPJ_INSC( FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.dest.CNPJCPF  )));

                       KardexLancamento(IntToStr(iRegistro),
                                      'ENF',
                                      AMXSobra,
                                      '',
                                      sProdutoRegistro,
                                      '',//grade
                                      '',
                                      'E',
                                      '',
                                      CdsItensRegistroLote.AsString,
                                      'Entrada das Sobras do Estoque do Industrializador(Terceiro)',
                                      Now,
                                      rQuantidade,
                                      NumeroNota,
                                      StrZero(sRegistroFornecedor,FormNfEntrada.EdtFor_Codigo.MaxLength)+'-'+FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Emit.xNome,
                                      rPrecoUnitario);

                     end;









                  end;
                  FormNfEntrada.cbMovimentaEstoque.Enabled:=False;
               {Atualiza o valor total da nota fiscal nos seguintes campos: ENF_BASEICMS,ENF_VL_ICMS,ENF_TOT_PROD,ENF_TOT_NOTA}
               wSql1 := 'UPDATE ENF0001 SET ENF_BASEICMS = '+ValorAmericano(FloatToStr(FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vBC))+',ENF_VL_ICMS = '+ValorAmericano(FloatToStr(FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vICMS))+' ,ENF_TOT_PROD = '+ValorAmericano(FloatToStr(FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vProd))+' ,ENF_TOT_NOTA = '+ValorAmericano(FloatToStr(FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vNF));
               DataCadastros.sqlUpdate.Close;
               DataCadastros.SqlUpdate.sql.text :=SQLDEF('ORDENSCOMPRA',wSql1,' WHERE ENF_NOTANUMBER = '''+NumeroNota+''' AND FOR_CODIGO = '''+sRegistroFornecedor+'''','','');
               DataCadastros.sqlUpdate.Execsql;

               //Atualiza descrição do Fornecedor
               if ((sProdutoRegistro <> '')and(sRegistroFornecedor <> '')and(CdsItensDescricaoFornecedor.AsString <> '')) then
                  begin
                     DataCadastros.sqlUpdate.Close;
                     DataCadastros.SqlUpdate.sql.text :='update PRD0000_CODIGO  set PRDC_DESSCRICAO  = '+QuotedStr(UpperCase(CdsItensDescricaoFornecedor.AsString))+
                                                       ' where PRD_CODIGO  = '+QuotedStr(sProdutoRegistro)+
                                                       ' AND PRDC_REFERENCIA = ' + QuotedStr(CdsItensReferenciaFornecedor.Asstring) +
                                                       ' and FOR_CODIGO = '+QuotedStr(sRegistroFornecedor);
                     DataCadastros.sqlUpdate.Execsql;
                  end;


               CdsItens.Next;
               Inc(I);
            end;


         //Contas a Pagar

         if (BuscaUmDadoSqlAsString('SELECT OPE_SEMVLCOM FROM OPE0000 WHERE OPE_CODIGO = '+QuotedStr( DataMovimento.CdsEnfOPE_CODIGO.AsString ) ) = 'N') and
            (FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Cobr.Dup.Count > 0) then
            begin
               sCodigoFaturaPagar := SequenciadorPRC(DataCadastros.SQLConnection1,dbInicio.Empresa.EMP_CODIGO, 'PAG0000', 'PAG_CODIGO', 0);
               sCodigoFaturaPagar := PreenchezeroEsquerda(sCodigoFaturaPagar,5);
               wSeleciona := ' where P1.PAG_CODIGO = '''+sCodigoFaturaPagar+'''';
               DataMovimento.CdsPagarParc.Close;
               DataMovimento.CdsPagarParc.CommandText := SQLDEF('PAGAR','select P1.*,BAN_APELIDO from PAG_PC01 P1 LEFT JOIN BAN0000 B1 ON P1.BAN_CODIGO = B1.BAN_CODIGO ',wSeleciona,'P1.PAG_CODIGO,P1.PPC_NUMER','P1.');
               DataMovimento.CdsPagarParc.Open;

               DataMovimento.CdsPagar.close;
               DataMovimento.CdsPagar.CommandText := SQLDEF('PAGAR','Select P1.* from PAG0000 P1 ','where P1.PAG_CODIGO = '''+sCodigoFaturaPagar+'''','P1.PAG_CODIGO','P1.');
               DataMovimento.CdsPagar.Open;

               //Cabeçalho
               DataMovimento.CdsPagar.Insert;
               DataMovimento.CdsPagarPAG_CODIGO.AsString   := sCodigoFaturaPagar;
               DataMovimento.CdsPagarPAG_NUMDOC.AsString   := NumeroNota;
               DataMovimento.CdsPagarPAG_DTEMIS.AsDateTime := StrToDate(FormatDateTime('dd/mm/yyyy',FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Ide.dEmi));
               DataMovimento.CdsPagarFOR_CODIGO.AsString   := sRegistroFornecedor;
               DataMovimento.CdsPagarPAG_VLNOTA.AsCurrency := FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vNF;
               DataMovimento.CdsPagarPAG_TIPO.AsString     := 'NF';
               DataMovimento.CdsPagarPAG_OBS.AsString      := FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Ide.natOp;
               DataMovimento.CdsPagarPAG_PREVISAO.AsString := 'N';
               DataMovimento.CdsPagarCCT_CODIGO.AsString   := sContaFinanceira;
               DataMovimento.CdsPagarPAG_EXCLUSAO.AsString := 'N';
               DataMovimento.CdsPagarEmp_Codigo.AsString   := dbInicio.Empresa.EMP_CODIGO;
               DataMovimento.CdsPagar.ApplyUpdates(0);
               //Parcelas
               I := 0;
               while (I <FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Cobr.Dup.Count) do
                  begin
                     DataMovimento.CdsPagarParc.Insert;
                     DataMovimento.CdsPagarParcPAG_CODIGO.AsString     := sCodigoFaturaPagar;
                     if (FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Cobr.Dup.Count>1) then
                        DataMovimento.CdsPagarParcPPC_NUMER.AsString   := StrZero(IntToStr(I+1),2);
                     DataMovimento.CdsPagarParcCCT_CODIGO.AsString     := sContaFinanceira;
                     DataMovimento.CdsPagarParcPPC_NPARCELAS.AsInteger :=FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Cobr.Dup.Count;
                     DataMovimento.CdsPagarParcPPC_VLPARC.AsCurrency   :=FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Cobr.Dup.Items[I].vDup;
                     DataMovimento.CdsPagarParcPPC_SITPAG.AsString     := 'P';
                     DataMovimento.CdsPagarParcPPC_STATUS.AsString     := 'Pendente';
                     DataMovimento.CdsPagarParcPPC_FORMA.AsString      := 'C';
                     DataMovimento.CdsPagarParcPPC_PREVISAO.AsString   := 'N';
                     DataMovimento.CdsPagarParcPPC_EXCLUSAO.AsString   := 'N';
                     DataMovimento.CdsPagarParcPPC_VENCTO.AsDateTime   :=FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Cobr.Dup.Items[I].dVenc;
                     DataMovimento.CdsPagarParcFOR_CODIGO.AsString     := sRegistroFornecedor;
                     DataMovimento.CdsPagarParcPPC_DTEMIS.AsDateTime   :=FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Ide.dEmi;
                     DataMovimento.CdsPagarParcPAG_NUMDOC.AsString     := NumeroNota;
                     DataMovimento.CdsPagarParcEmp_CODIGO.AsString     := dbInicio.Empresa.EMP_CODIGO;
                     DataMovimento.CdsPagarParc.ApplyUpdates(0);

                     Inc(I);
                     CdsItens.Next;
                  end;
            end
            else if (BuscaUmDadoSqlAsString('SELECT OPE_SEMVLCOM FROM OPE0000 WHERE OPE_CODIGO = '+QuotedStr( DataMovimento.CdsEnfOPE_CODIGO.AsString ) ) = 'N') then
            begin
              forCodigo := StrZero(sRegistroFornecedor, FormNfEntrada.EdtFor_Codigo.MaxLength);
              if BuscaUmDadoSqlAsInteger(
                 ' SELECT count(pg.PAG_REGISTRO) ' +
                 '   FROM PAG0000 pg ' +
                 '   JOIN PAG_PC01 pp ON (pp.PAG_CODIGO = pg.PAG_CODIGO) ' +
                 ' WHERE pg.PAG_NUMDOC = ' + QuotedStr(NumeroNota) +
                 '   AND pg.FOR_CODIGO = ' + QuotedStr(forCodigo) +
                 '   AND PAG_TIPO = ''NF'' '
              ) = 0 then
              begin
                MessageDlg('Lançamentos do contas a pagar não foram lançados.'+ #13 + #13 + ' Não esqueça de lançá-los manualmente!', mtInformation, [mbOK], 0)

//                if MessageDlg('Lançamentos do contas a pagar não foram lançados, deseja lançar agora?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
//                begin
//                  if (dbInicio.GetParametroSistema('PMT_CENTRO_CUSTO_OBRIGATORIO') = 'S') then
//                  begin
//                    if frmSelecionaCentroDeCusto = nil then
//                    begin
//                      frmSelecionaCentroDeCusto := TfrmSelecionaCentroDeCusto.Create(Application);
//                      frmSelecionaCentroDeCusto.ShowModal;
//                      if FormNfEntrada.CdsCentroCusto.Locate('PCX_DESCRI', frmSelecionaCentroDeCusto.lkCentroCusto.Text,[loCaseInsensitive])  then
//                        FormNfEntrada.DbePCX_CODIGO.Text := FormNfEntrada.CdsCentroCustoPCX_CODIGO.AsString;
//                    end;
//
//                  end;
//                  FormNfEntrada.Bit_pagar.Click;

//                  if not assigned(FormContasPagar) then
//                  begin
//                    FormContasPagar := TFormContasPagar.Create(Application);
//                    FormContasPagar.BotoesAcesso;
//                  end;
//                  FormContasPagar.Show;
//                  FormContasPagar.Bit_novo.Click;

//                  DbeDocumento.Text := FormNfEntrada.edtNota.Text;
//                  DbeFor_codigo.Text := FormNfEntrada.EdtFor_Codigo.Text;
//                  FormContasPagar.CbFornecedor.idRetorno := FormNfEntrada.EdtFor_Codigo.Text;
//                  DBePag_Vlnota.Text := FormNfEntrada.CurrTotalNota.Text;


//                  FormContasPagar.DbeDocumento.Text := NumeroNota;
//                  FormContasPagar.DbeFor_codigo.Text := forCodigo;
//                  FormContasPagar.CbFornecedor.idRetorno := forCodigo;
//                  FormContasPagar.DBePag_Vlnota.Text := CurrToStr(FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vNF);

//                end;
              end;
            end;
         FormNfEntrada.sFornecedorImportado := sRegistroFornecedor;
         FormNfEntrada.EdtNota.Text := NumeroNota;
         CommitTransaction;
         Commit;
         FormNfEntrada.CommitTransaction;
         FormNfEntrada.Commit;

         uteis.aviso('NF-e Importada com sucesso');
         Close;
      end;
   finally
     btnBit_Gravar.Enabled := True;
     DataCadastros.CdsProdutos.Close;
     DataCadastros.CdsProdutos.CommandText := 'SELECT * FROM PRD0000';

   end;
end;

function TFrmEntradaNotaXml.Prevalida: Boolean;
var
   Retorno:Boolean;
   listaErros : TStringList;
begin
  if (cbMovimentaEstoque.visible) and (cbMovimentaEstoque.State=cbGrayed) then
  begin
    Result := False;
    uteis.aviso( 'A Caixa de Seleção MOVIMENTA ESTOQUE precisa receber uma ação!'+#13+
                 'Desmarcada - Não movimenta estoque.'+#13+
                 'Marcada - Movimenta Estoque' );
    exit;
  end;
   listaErros := TStringList.Create;
   Retorno := True;
   //Fornecedor
   ValidaFornecedor;
   if (GetCodFor='') then
   begin
         listaErros.Add('Fornecedor não Cadastrado no sistema');
   end;
   if not DBInicio.Empresa.bPMT_INCLUIRRAPIDO then     //incluir rapido não valida os itens
   begin
     CdsItens.First;
     while (not CdsItens.Eof) do
        begin
           if (CdsItensReferencia.AsString = '') then
           begin
               listaErros.Add('Produto '+CdsItensReferenciaFornecedor.AsString+' não cadastrado no sistema e nem referenciado');
           end
           else if (cdsItensUCom.Value <> cdsItensUnidadeCadastro.Value) // SE AS UNIDADES XML E REGISTRADO NO BANCO ESTÃO DIFERENTE
          and  (cdsItensFatorConversao.AsFloat = 0 )  then
           begin
               listaErros.Add('Produto '+CdsItensReferenciaFornecedor.AsString+' não definida a conversão de unidades');
           end;
           if (CdsItensCFOP.AsString = '') then
           begin
                 listaErros.Add('CFOP do produto '+CdsItensReferenciaFornecedor.AsString+' não informado ou localizado correspondência');
           end;
          if (cdsItensAlmoxarifadoCodigo.AsString = '') then
          begin
             if MatchStr(CdsItensCFOP.AsString,['5901','5902','5903','5925', '6902','6903','6925','1901','1902','1925','2902','2925']) then
               listaErros.Add('Retorno de mercadoria utilizada na industrialização por encomenda. Revise o almoxarifado')
             else
              listaErros.Add('Almoxarifado não definido');
          end;
           CdsItens.Next;
        end;
   end;
   if (listaErros.Count > 0) then
   begin
     uteis.aviso(PChar('Alguns erros foram localizados impossibilitando a importação da Nota Fiscal.'+#13#10+ #13#10+
                                       listaErros.GetText));
     Retorno := False;
   end;
   FreeAndNil(listaErros);
   Result := Retorno;
end;

function TFrmEntradaNotaXml.RemoveEspaco(const str: String): string;
const
  cDouble = '  ';
   cOne = ' ';
begin
   result:=Str;
   while pos(cDouble,result) > 0 do
      result:=StringReplace(result,cDouble,cOne,[rfReplaceAll]);
end;

function TFrmEntradaNotaXml.CadastarProduto: string;
var sReferencia, sprdcodigo, DescricaoProduto : string;
 iletra : Integer;
 function ProdutoJaExiste(sReferencia:String):Boolean;
   begin
        if (sReferencia <> '') then
        begin
            DataCadastros.sqlUpdate1.Close;
            DataCadastros.sqlUpdate1.sql.text:= SQLDEF('PRODUTOS','Select PRD_REFER from PRD0000','where PRD_REFER = '''+sReferencia+'''','PRD_REFER','');
            DataCadastros.sqlUpdate1.Open;
            if DataCadastros.sqlUpdate1.IsEmpty then
               Result := False
            else
               Result := True;
        end
        else
            Result := False;
        DataCadastros.sqlUpdate1.Close;
   end;
begin
  if not DBInicio.Empresa.bPMT_INCLUIRRAPIDO and (uteis.confirmacao ( ('Confirma cadastrar o produto '+   cdsItensReferenciaFornecedor.AsString +' como um novo produto ?' + #13 + #13 + '    ATENÇÃO!!!!! O Produto será cadastrado e, em caso de desistência o mesmo deverá ser excluído no Cadastro de Produtos. '))=mrNo) then
     Abort;

  if not ( cdsItens.State in dsEditModes) then
    cdsItens.Edit;
  DataCadastros.CdsProdutos.Close;
  DataCadastros.CdsProdutos.PacketRecords := 1;
  DataCadastros.CdsProdutos.CommandText := SQLDEF('PRODUTOS','SELECT * FROM PRD0000','where 1=0','PRD_CODIGO','');
  DataCadastros.CdsProdutos.Open;
  DataCadastros.CdsProdutos.Insert;
  sprdcodigo := DataCadastros.CdsProdutosPRD_CODIGO.AsString;
  sReferencia :=  DataCadastros.CdsProdutosPRD_CODIGO.AsString;
  //Verifica se o produto com esta referencia ja existe
  iLetra := 65;
  while ( ProdutoJaExiste(sReferencia) ) do
  begin
       sReferencia := sprdcodigo +'-'+ sRegistroFornecedor+chr(iLetra);
       inc( iLetra );
  end;


  sReferencia := FormataRefer( UpperCase(sReferencia) );
   Result := sprdcodigo;
  //dbedtReferencia.Text := sReferencia ;
  DataCadastros.CdsProdutosEMP_CODIGO.AsString := dbinicio.Empresa.EMP_CODIGO;
  DataCadastros.CdsProdutosPRD_REFER.AsString := sReferencia;
  //          DataCadastros.CdsProdutosPRD_CODIGO.AsString := sPrdCodigo;
  DataCadastros.CdsProdutosPRD_UND.AsString := UpperCase(CdsItensUnidade.AsString);
  DataCadastros.CdsProdutosPRD_DTCADASTRO.AsDateTime := date;
  //edtUnidadeSistema.Text := FrmEntradaNotaXml.CdsItensUnidade.AsString;
  DataCadastros.CdsProdutosPRD_EMBALA.AsString := CdsItensUnidade.AsString;

  //Cadastro de NCM
  if (Length(CdsItensNCM.AsString) = 8) then
  begin
       DataCadastros.CdsPrdClassIPI.Close;
       DataCadastros.CdsPrdClassIPI.CommandText := 'SELECT * FROM IPI0000 WHERE IPI_CODIGO = '+QuotedStr(CdsItensNCM.AsString);
       DataCadastros.CdsPrdClassIPI.Open;
       if (DataCadastros.CdsPrdClassIPI.IsEmpty) then
       begin
             DataCadastros.CdsPrdClassIPI.Insert;
             DataCadastros.CdsPrdClassIPIIPI_CODIGO.AsString := CdsItensNCM.AsString;
             DataCadastros.CdsPrdClassIPIIPI_ALIQ.AsCurrency := CdsItensAliqIPI.AsCurrency;
             DataCadastros.CdsPrdClassIPIEMP_CODIGO.AsString := dbInicio.Empresa.EMP_CODIGO;
             DataCadastros.CdsPrdClassIPINCM_TEMCREDITO.AsString := 'N';
             DataCadastros.CdsPrdClassIPI.ApplyUpdates(0);
       end;
       DataCadastros.CdsPrdClassIPI.Close;
       DataCadastros.CdsProdutosIPI_CODIGO.AsString      := FrmEntradaNotaXml.CdsItensNCM.AsString;
  end;
  DataCadastros.CdsProdutosPRD_ALIQICM.AsCurrency   := 0;
  DataCadastros.CdsProdutosEMP_CODIGO.AsString      := dbInicio.Empresa.EMP_CODIGO;
  DataCadastros.CdsProdutosSTB_TRIBUTACAO.AsString  := '00';
  DataCadastros.CdsProdutosPRD_ORIGEM.AsInteger     := 0;
  DataCadastros.CdsProdutosSPED_GENCODIGO.AsString  := Copy(CdsItensNCM.AsString,1,2);
  DataCadastros.CdsProdutosPRD_PRODSERV.AsString    := 'P'; // P ou S
  DataCadastros.CdsProdutosPRD_UTILCONV.AsString    := 'N';
  DataCadastros.CdsProdutosPRD_FATORC.AsString      := '0';
  DataCadastros.CdsProdutosPRD_DIVMULT.AsString     := 'D';

  if (DBInicio.GetParametroSistema('PMT_DESC_ORIGINAL_INDUST') = 'S') and (DBInicio.GetParametroSistema('PMT_INCLUIRRAPIDO') = 'S') then
    DescricaoProduto := '[' + UpperCase(cdsItensReferenciaFornecedor.AsString) + '] ' + UpperCase(CdsItensDescricao.AsString)
  else
    DescricaoProduto := UpperCase(Copy(CdsItensDescricao.AsString,1,100));
  DataCadastros.CdsProdutosPRD_DESCRI.AsString := DescricaoProduto;
  DataCadastros.CdsProdutosPRD_CODORIGINAL.AsString := UpperCase(cdsItensReferenciaFornecedor.AsString);
  DataCadastros.CdsProdutosPTI_CODIGO.AsString := tipoProduto;
  cdsItensFatorConversao.AsFloat := 1;
  CdsItensReferencia.AsString :=  sReferencia;
  try
    DataCadastros.CdsProdutos.Post;
    DataCadastros.CdsProdutos.ApplyUpdates(0);
    DataCadastros.CdsProdutos.Close;
  except
    begin
      sReferencia := '';
      sprdcodigo := '';
      raise Exception.Create('Algum erro ocorreu no cadastro, tente de novo');

   end;
  end;
  //Abre tela de cadastro para confirmação
 // FrmEntradaNotaXml.CdsItensReferencia.AsString := sReferencia;
  //Cria Vinculação
  if (sprdcodigo <> '')and(Trim(cdsItensReferenciaFornecedor.AsString) <> '') then
  begin
       DataCadastros.sqlUpdate.Close;
       DataCadastros.SqlUpdate.sql.text :='INSERT INTO PRD0000_CODIGO (PRD_CODIGO,PRDC_REFERENCIA,PRDC_DESSCRICAO,FOR_CODIGO) VALUES ('+
       QuotedStr(sprdcodigo)+','+QuotedStr(UpperCase(cdsItensReferenciaFornecedor.AsString))+','+QuotedStr(DescricaoProduto)+','+QuotedStr(sRegistroFornecedor)+')';
       DataCadastros.sqlUpdate.Execsql;
  end;
   cdsItens.post;



   //Ataliza descrição do Fornecedor
   if ((sprdcodigo <> '')and(sRegistroFornecedor <> '')and(CdsItensDescricaoFornecedor.AsString <> '')) then
   begin

        ExecSql('update PRD0000_CODIGO  set PRDC_DESSCRICAO  = '+QuotedStr(DescricaoProduto)+
                                           ' where PRD_CODIGO = '+QuotedStr(sprdcodigo)+' and FOR_CODIGO = '+QuotedStr(sRegistroFornecedor)+
                                           '   AND EXISTS (SELECT 1 FROM PRD0000 t2 WHERE PRD0000_CODIGO.PRD_CODIGO = t2.PRD_CODIGO AND t2.PRD_STATUS = ''A'') ');


   end;


end;

procedure TFrmEntradaNotaXml.CadastraFornecedor;
var
   sCodigoCidade:string;
begin

     DataCadastros.CdsFornecedor.Close;
     DataCadastros.CdsFornecedor.CommandText := SQLDEF('FORNECEDORES','SELECT F1.* FROM FOR0000 F1','','F1.FOR_CODIGO','F1.');
     DataCadastros.CdsFornecedor.Open;

     //Localiza cidade tabela
     DataCadastros.sqlUpdate.Close;
     DataCadastros.SqlUpdate.sql.text :='SELECT T1.CID_CODIGO FROM CID0000 T1 WHERE T1.CID_COD_IBGE = '+IntToStr(FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.cMun) ;
     DataCadastros.sqlUpdate.open;
     if (not DataCadastros.sqlUpdate.IsEmpty) then
        sCodigoCidade := DataCadastros.sqlUpdate.FieldByName('CID_CODIGO').AsString;

     DataCadastros.sqlUpdate.Close;

     //Cadastra Fornecedor
     DataCadastros.CdsFornecedor.Insert;
     DataCadastros.CdsFornecedorFOR_ATUALIZA_PCUSTO.AsString := 'S';
     DataCadastros.CdsFornecedorFOR_ATUALIZA_PVENDA.AsString := 'S';
     DataCadastros.CdsFornecedorFOR_DTCADASTRO.AsDateTime := date;
     DataCadastros.CdsFornecedorFOR_RAZAO.AsString := UpperCase(edtFornecedorRazao.Text);
     DataCadastros.CdsFornecedorFOR_ENDERE.AsString := UpperCase(edtFornecedorEndereco.Text+','+edtFornecedorNumero.Text);
     DataCadastros.CdsFornecedorFOR_CIDADE.AsString := UpperCase(edtFornecedorCidade.Text);
     DataCadastros.CdsFornecedorFOR_UF.AsString := UpperCase(edtFornecedorUF.Text);
     DataCadastros.CdsFornecedorFOR_CEP.AsString := ExtrairNumeros(edtFornecedorCEP.Text);
     DataCadastros.CdsFornecedorFOR_FONE.AsString := ExtrairNumeros(edtFornecedorFone.Text);
     DataCadastros.CdsFornecedorFOR_CGC.AsString := ExtrairNumeros(edtFornecedorCnpj.Text);
     DataCadastros.CdsFornecedorFOR_INSC.AsString :=FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Emit.IE;
     DataCadastros.CdsFornecedorFOR_BAIRRO.AsString := UpperCase(edtFornecedorBairro.Text);
     DataCadastros.CdsFornecedorFOR_INSCST.AsString :=FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Emit.IEST;
     DataCadastros.CdsFornecedorFOR_ATIVO.AsString := 'A';
     DataCadastros.CdsFornecedorFOR_INSCST.AsString :=FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Emit.IEST;
     DataCadastros.CdsFornecedorEMP_CODIGO.AsString := dbInicio.Empresa.EMP_CODIGO;
     DataCadastros.CdsFornecedorCID_CODIGO.AsString := sCodigoCidade;
     DataCadastros.CdsFornecedor.ApplyUpdates(0);

     DataCadastros.CdsClientes.Close;
     DataCadastros.CdsClientes.PacketRecords := -1;
     DataCadastros.CdsClientes.CommandText   := SQLDEF('CLIENTES','SELECT C1.* FROM CLI0000 C1 ',' where CLI_CGC = '+QuotedStr(ExtrairNumeros(edtFornecedorCnpj.Text)),'C1.CLI_CODIGO','C1.');
     DataCadastros.CdsClientes.Open;
     if (DataCadastros.CdsClientes.IsEmpty) then
     begin
          if ( MatchStr(CdsItensCFOP.AsString,['5901','5902','5903','5925', '6902','6903','6925','1901','1902','1925','2902','2925']))  or   (uteis.confirmacao ( 'Gostaria de cadastrar esse fornecedor no cadastro de Cliente para emissão de notas fiscais de saídas?')=mrYes) then
          begin
              DataCadastros.CdsClientes.Insert;
              DataCadastros.CdsClientesEMP_CODIGO.AsString              := dbInicio.Empresa.EMP_CODIGO;
              DataCadastros.CdsClientesCLI_CGC.AsString                 := ExtrairNumeros(edtFornecedorCnpj.Text);
              DataCadastros.CdsClientesCLI_CODIGO.AsString              := strzero( dbInicio.GetNextSequence('GEN_CLI0000_CODIGO'), 5 )  ;

              DataCadastros.CdsClientesCLI_RAZAO.AsString               := UpperCase(edtFornecedorRazao.Text);
              DataCadastros.CdsClientesCLI_FANTASIA.AsString            := UpperCase(FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Emit.xFant);
              DataCadastros.CdsClientesCLI_DTINICIO.AsDateTime          := Date;
              DataCadastros.CdsClientesCLI_ENDERE.AsString              := UpperCase(edtFornecedorEndereco.Text+','+edtFornecedorNumero.Text);

              DataCadastros.CdsClientesCLI_INSC.AsString                := FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Emit.IEST;
              if Length(ExtrairNumeros(edtFornecedorFone.Text)) = 10 then
                DataCadastros.CdsClientesCLI_FONE.AsString := '0'+ExtrairNumeros(edtFornecedorFone.Text)
              else
                DataCadastros.CdsClientesCLI_FONE.AsString                := ExtrairNumeros(edtFornecedorFone.Text);
              DataCadastros.CdsClientesCLI_INSC.AsString := FormNfEntrada.acbrnf1.NotasFiscais.Items[0].NFe.Emit.IE;
              DataCadastros.CdsClientesCLI_CIDADE.AsString              := UpperCase(edtFornecedorCidade.Text);
              DataCadastros.CdsClientesCLI_UF.AsString                  := UpperCase(edtFornecedorUF.Text);
              DataCadastros.CdsClientesCLI_INATIVO.AsString             := 'A';
              DataCadastros.CdsClientesCLI_BAIRRO.AsString              := UpperCase(edtFornecedorBairro.Text);
              DataCadastros.CdsClientesCLI_CIDADE.AsString              := UpperCase(edtFornecedorCidade.Text);
              DataCadastros.CdsClientesCLI_CEP.AsString                 := ExtrairNumeros(edtFornecedorCEP.Text);
              DataCadastros.CdsClientesCLI_PAIS.AsString                := 'N';
              DataCadastros.CdsClientesCLI_PESSOA.AsString              := 'J';
              DataCadastros.CdsClientesCLI_CLASSE_CLI_FOR.AsString      := 'A';
              DataCadastros.CdsClientesCLI_PORTE.AsString               := 'P';
              DataCadastros.CdsClientesCLI_PROTESTAR.AsString           := 'N';
              DataCadastros.CdsClientesCLI_QTDE_DIAS_PROTESTO.AsInteger := 0;
              DataCadastros.CdsClientesCLI_CONSFINAL.AsString           := 'N';
              DataCadastros.CdsClientesPAI_CODIGO.AsString              := '1058';
              DataCadastros.CdsClientesCLI_CONSU_PROPRIO.AsString       := 'N';
              DataCadastros.CdsClientesCID_CODIGO.AsString              := sCodigoCidade;
              // gravar tabela de preço
              DataCadastros.CdsClientes.FieldByName('CLI_TABPRECO').AsString := 'T1';
              DataCadastros.CdsClientes.ApplyUpdates(0);
          end;
     end;

end;

procedure TFrmEntradaNotaXml.btnDanfeClick(Sender: tObject);
begin
  FormNfEntrada.acbrnf1.NotasFiscais.Imprimir;
end;

procedure TFrmEntradaNotaXml.BuscaOperacaoCFOP(const pNat: String);
begin
     SqlCdsOP.Locate('OPE_NATUREZA',pNat,[]);
end;

end.


