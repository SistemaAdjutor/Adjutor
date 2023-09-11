unit Sped;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Buttons, JvBaseDlg, JvBrowseFolder, Mask,
  JvExMask, JvSpin, ACBrSpedPisCofins, ACBrEPCBlocos, SqlExpr,SqlClientDataSet, Provider,
  DB, DBClient, DBLocal, DBLocalS, jpeg, ExtCtrls, Data.DBXFirebird, SimpleDS, ACBrBase, Data.FMTBcd,BaseDbForm, ACBrEnterTab, ACBrCalculadora;

type
  TFrmSped = class(TfrmBaseDB)
    GroupBox1: TGroupBox;
    edtAnoInicial: TJvSpinEdit;
    edtMesInicial: TJvSpinEdit;
    lblPeriodo: TLabel;
    Label1: TLabel;
    cbbPerfil: TComboBox;
    Label2: TLabel;
    cbbFinalidade: TComboBox;
    lblLocal: TLabel;
    JvBrowseForFolderDialog1: TJvBrowseForFolderDialog;
    edtLocal: TEdit;
    btnFolder: TSpeedButton;
    btnGerar: TBitBtn;
    CdsEmpresa: TSQLClientDataSet;
    CdsContator: TSQLClientDataSet;
    CdsParticipantes: TSQLClientDataSet;
    CdsUnidadeMedida: TSQLClientDataSet;
    CdsProdutosServicos: TSQLClientDataSet;
    CdsNotasFiscais: TSQLClientDataSet;
    CdsNotasFiscaisItens: TSQLClientDataSet;
    CdsNaturezaOperacao: TSQLClientDataSet;
    CdsC180: TSQLClientDataSet;
    CdsC181: TSQLClientDataSet;
    CdsC185: TSQLClientDataSet;
    CdsF550: TSQLClientDataSet;
    Panel1: TPanel;
    Image1: TImage;
    Cds1900: TSQLClientDataSet;
    ACBrSPEDPisCofins1: TACBrSPEDPisCofins;
    pg: TPageControl;
    tsArquivoGerado: TTabSheet;
    tserros: TTabSheet;
    mmoSpedContribuicoes: TMemo;
    Memo1: TMemo;
    cdsPlanoContabil: TSqlClientDataSet;
    qArquivo: TSQLQuery;
    dspArquivo: TDataSetProvider;
    cdsArquivo: TClientDataSet;
    cdsArquivoano: TIntegerField;
    cdsArquivomes: TIntegerField;
    cdsArquivoarq: TBlobField;
    cdsArquivoemp_codigo: TStringField;
    procedure btnFolderClick(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure btnGerarClick(Sender: tObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
    dataInicial, dataFinal:TDate;

    xTipoEscrituracao:TACBrTipoEscrituracao;
    xIndicadorAtividadeEmpresa:TACBrIndicadorAtividade;
    xIndicadorIncidenciaTrib:TACBrCodIncTrib;
    xIndicadorMetodoApropriacao:TACBrIndAproCred;
    xIndicadorTipoContribuicao:TACBrCodTipoCont;
    xIndicadorRegimeCumulativo:TACBrIndRegCum;
    xIndEscrituracao:TACBrIndEscrituracao;

    procedure GeraContribuicoes;
    procedure LoadToMemoContribuicao;
    procedure BuscaItens;
    procedure BuscaPlanoContas;
    procedure BuscaParticipante;
    procedure Bloco0;
    procedure Bloco1;
    procedure BlocoP;
    procedure BlocoF;
    procedure BlocoA;
    procedure BlocoC;
    procedure BlocoD;
    procedure BlocoM;
    function ContaCaracteres(Texto: string; Caracter: Char): Integer;
    procedure Adicionar200(const codigo:String);
    procedure Adicionar190(const unidade :string);
    procedure Adicionar150(const codigo : string);
    procedure Adicionar400(const codigo : string);
    procedure GravarArquivo;

  public
    { Public declarations }
  end;

var
  FrmSped: TFrmSped;

implementation

uses
  Menus, Men0001, UFuncoes, DataCad, ACBrEPCBloco_0_Class, {uProcedimentos,}
  ACBrEPCBloco_0, ACBrEPCBloco_F, ACBrEPCBloco_F_Class,
  ACBrEPCBloco_P_Class, ACBrEPCBloco_P, ACBrEPCBloco_D,
  ACBrEPCBloco_D_Class, ACBrEPCBloco_C, ACBrEPCBloco_C_Class,
  ACBrEPCBloco_1, ACBrEPCBloco_1_Class, uteis, iniciodb, rwfunc, acbrutil;

{$R *.dfm}

procedure TFrmSped.Adicionar150(const codigo: string);
begin
  if CdsParticipantes.Locate('CODIGO_SISTEMA',codigo,[]) then
    begin
      if CdsParticipantes.FieldByName('USADO').AsString = 'N' then
      begin
        CdsParticipantes.Edit;
        CdsParticipantes.FieldByName('USADO').AsString := 'S';
        CdsParticipantes.Post;
      end;
    end;
end;

procedure TFrmSped.Adicionar190(const unidade: string);
begin
  if CdsUnidadeMedida.Locate('UNIDADE_SIGLA',unidade,[]) then
    begin
      if CdsUnidadeMedida.FieldByName('USADO').AsString = 'N' then
      begin
        CdsUnidadeMedida.Edit;
        CdsUnidadeMedida.FieldByName('USADO').AsString := 'S';
        CdsUnidadeMedida.Post;
      end;
    end;
end;

procedure TFrmSped.Adicionar200(const codigo: String);
begin
  if CdsProdutosServicos.Locate('CODIGO_ITEM',codigo,[]) then
    begin
      if CdsProdutosServicos.FieldByName('USADO').AsString = 'N' then
      begin
        CdsProdutosServicos.Edit;
        CdsProdutosServicos.FieldByName('USADO').AsString := 'S';
        if CdsProdutosServicos.FieldByName('UNIDADE_MEDIDA').AsString = 'PR' then
          Adicionar190('PAR')
        Else
          Adicionar190(CdsProdutosServicos.FieldByName('UNIDADE_MEDIDA').AsString);
        CdsProdutosServicos.Post;
      end;
    end;
end;

procedure TFrmSped.Adicionar400(const codigo: string);
begin
  if CdsNaturezaOperacao.Locate('OPE_CODIGO',codigo,[]) then
    begin
      if CdsNaturezaOperacao.FieldByName('USADO').AsString = 'N' then
      begin
        CdsNaturezaOperacao.Edit;
        CdsNaturezaOperacao.FieldByName('USADO').AsString := 'S';
        CdsNaturezaOperacao.Post;
      end;
    end;
end;

procedure TFrmSped.Bloco0;
begin
 with ACBrSPEDPisCofins1.Bloco_0 do
   begin
      // Dados da Empresa
      with Registro0000New do
      begin
         COD_VER          := vlVersao201;
         TIPO_ESCRIT      := xTipoEscrituracao;
         IND_SIT_ESP      := indSitAbertura;
         NUM_REC_ANTERIOR := '';
         NOME             := TRIM(TiraAcentos(CdsEmpresa.FieldByName('RAZAO_SOCIAL').AsString));
         CNPJ             := RetiraTodaMascara(CdsEmpresa.FieldByName('CNPJ_CPF').AsString);
         UF               := CdsEmpresa.FieldByName('UF').AsString;
         COD_MUN          := StrToInt(copy(IIF(CdsEmpresa.FieldByName('CODIGO_MUNICIPIO_IBGE').AsString <> '',CdsEmpresa.FieldByName('CODIGO_MUNICIPIO_IBGE').AsString,'0000000'),1,7));
         SUFRAMA          := CdsEmpresa.FieldByName('SUFRAMA').AsString;
         IND_NAT_PJ       := indNatPJSocEmpresariaGeral;
         IND_ATIV         := xIndicadorAtividadeEmpresa;

         with Registro0001New do
         begin
            IND_MOV := imComDados;

            // FILHO - Dados do contador.
            with Registro0100New do
            begin
               NOME       := trim(CdsContator.FieldByName('NOME').AsString);
               CPF        := RetiraTodaMascara(CdsContator.FieldByName('CPF').AsString);
               CRC        := CdsContator.FieldByName('CRC').AsString;
               CNPJ       := RetiraTodaMascara(CdsContator.FieldByName('CNPJ').AsString);
               CEP        := RetiraTodaMascara(CdsContator.FieldByName('CEP').AsString);
               ENDERECO   := trim(CdsContator.FieldByName('ENDERECO').AsString);
               NUM        := CdsContator.FieldByName('NUMERO').AsString;
               COMPL      := CdsContator.FieldByName('COMPLEMENTO').AsString;
               BAIRRO     := CdsContator.FieldByName('BAIRRO').AsString;
               FONE       := OnlyNumber(CdsContator.FieldByName('FONE').AsString);
               FAX        := OnlyNumber(CdsContator.FieldByName('FAX').AsString);
               EMAIL      := CdsContator.FieldByName('EMAIL').AsString;
               COD_MUN    := StrToInt(copy(IIF(CdsContator.FieldByName('CODIGO_MUNICIPIO_IBGE').AsString <> '',CdsContator.FieldByName('CODIGO_MUNICIPIO_IBGE').AsString,'0000000'),1,7));
            end;

            // FILHO - Regime de Apuração
            with Registro0110New do
            begin
               COD_INC_TRIB  := xIndicadorIncidenciaTrib; //codEscrOpIncCumulativo;
               IND_APRO_CRED := xIndicadorMetodoApropriacao;
               COD_TIPO_CONT := xIndicadorTipoContribuicao;
               if not CdsEmpresa.FieldByName('EMP_COD_IND_REGIME').IsNull then
                 IND_REG_CUM := StrToIndRegCum(CdsEmpresa.FieldByName('EMP_COD_IND_REGIME').AsString);
               //Campo IND_REG_CUM apenas para Lucro Presumido e (COD_INC_TRIB = 2)
              // if (CdsEmpresa.FieldByName('MODALIDADE').AsString = 'P') then  //S = SIMPLES P = PRESUMIDO R = REAL

               //0111 - Tabela de Receita Bruta Mensal para fins de Rateio de Créditos Comuns
               //#Rever
               if ((xIndicadorIncidenciaTrib = codEscrOpIncNaoCumulativo)or(xIndicadorIncidenciaTrib = codEscrOpIncAmbos))and
                  (xIndicadorMetodoApropriacao = indMetodoDeRateioProporcional) then
                  begin
                     with Registro0111New do
                     begin
                        REC_BRU_NCUM_TRIB_MI := 0;
                        REC_BRU_NCUM_NT_MI := 0;
                        REC_BRU_NCUM_EXP := 0;
                        REC_BRU_CUM := 0;
                        REC_BRU_TOTAL := 0;
                     end;
                  end;
            end;

            //0140 - Tabela de Cadastro de Estabelecimento
            // FILHO
            with Registro0140New do
            begin
               COD_EST := CdsEmpresa.FieldByName('EMPRESA').AsString;
               NOME    := trim(CdsEmpresa.FieldByName('RAZAO_SOCIAL').AsString);
               CNPJ    := RetiraTodaMascara(CdsEmpresa.FieldByName('CNPJ_CPF').AsString);
               UF      := CdsEmpresa.FieldByName('UF').AsString;
               IE      := CdsEmpresa.FieldByName('IE').AsString;
               COD_MUN := StrToInt(copy(IIF(CdsEmpresa.FieldByName('CODIGO_MUNICIPIO_IBGE').AsString <> '',CdsEmpresa.FieldByName('CODIGO_MUNICIPIO_IBGE').AsString,'0000000'),1,7));
               IM      := CdsEmpresa.FieldByName('INSCRICAO_MUNICIPAL').AsString;
               SUFRAMA := CdsEmpresa.FieldByName('SUFRAMA').AsString;

               //0145 - Regime de Apuração da Contribuição Prev. Sobre Receita Bruta



               // 10 Clientes por estabelecimento
               CdsParticipantes.First;
               while (not CdsParticipantes.Eof) do
               begin
                  //0150 - Tabela de Cadastro do Participante
                  if (CdsParticipantes.FieldByName('USADO').AsString) = 'S' then
                  begin
                     with Registro0150New do
                     begin
                        COD_PART := CdsParticipantes.FieldByName('CODIGO_SISTEMA').AsString;
                        NOME     := trim(CdsParticipantes.FieldByName('NOME').AsString);
                        COD_PAIS := CdsParticipantes.FieldByName('CODIGO_PAIS').AsString;
                        if CdsParticipantes.FieldByName('CODIGO_PAIS').AsString = '1058' then
                        begin
                          CNPJ := RetiraTodaMascara(IIF(Length(CdsParticipantes.FieldByName('CNPJ_CPF').AsString) = 14, CdsParticipantes.FieldByName('CNPJ_CPF').AsString, ''));
                          CPF := RetiraTodaMascara(IIF(Length(CdsParticipantes.FieldByName('CNPJ_CPF').AsString) = 11, CdsParticipantes.FieldByName('CNPJ_CPF').AsString, ''));
                        end;
                        IE       := ExtrairNumeros(CdsParticipantes.FieldByName('INSCRICAO_ESTADUAL').AsString);
                        COD_MUN  := StrToInt(copy(IIF(CdsParticipantes.FieldByName('CODIGO_MUNICIPIO_IBGE').AsString <> '',CdsParticipantes.FieldByName('CODIGO_MUNICIPIO_IBGE').AsString,'0000000'),1,7));
                        SUFRAMA  := CdsParticipantes.FieldByName('SUFRAMA').AsString;
                        ENDERECO := trim(RetornaEnderecoSemNumero(CdsParticipantes.FieldByName('ENDERECO').AsString));
                        NUM      := RetornaNumeroEnderecoSomenteNumeros(CdsParticipantes.FieldByName('ENDERECO').AsString);
                        COMPL    := '';
                        BAIRRO   := trim(CdsParticipantes.FieldByName('BAIRRO').AsString);

                     end;
                  end;
                  //proximo
                  CdsParticipantes.Next;
                  Application.ProcessMessages;
               end;

               if (xIndicadorRegimeCumulativo = codRegimeCompetEscritDetalhada) then
                  begin
                     // 0190 - Identificação das Unidades de Medida
                     CdsUnidadeMedida.First;
                     while (not CdsUnidadeMedida.Eof) do
                     begin
                        with Registro0190New do
                        begin
                           UNID  := CdsUnidadeMedida.FieldByName('UNIDADE_SIGLA').AsString;
                           DESCR := CdsUnidadeMedida.FieldByName('UNIDADE_DESCRICAO').AsString;
                        end;
                        //proximo
                        CdsUnidadeMedida.Next;
                     end;

                     //10 produtos/serviços
                     CdsProdutosServicos.First;
                     while (not CdsProdutosServicos.Eof) do
                     begin
                        // 0200 - Tabela de Identificação do Item (Produtos e Serviços)
                        if CdsProdutosServicos.FieldByName('USADO').AsString = 'S' then //foi usado nos blocos
                        begin
                          with Registro0200New do
                          begin
                             COD_ITEM     := CdsProdutosServicos.FieldByName('CODIGO_ITEM').AsString;
                             DESCR_ITEM   := trim(CdsProdutosServicos.FieldByName('DESCRICAO_ITEM').AsString);
                             COD_BARRA    := CdsProdutosServicos.FieldByName('CODIGO_BARRAS').AsString;
                             COD_ANT_ITEM := '';
                             if CdsProdutosServicos.FieldByName('UNIDADE_MEDIDA').AsString = 'PR' then //PAR OU PR é o mesmo
                                UNID_INV := 'PAR'
                             Else
                               UNID_INV := CdsProdutosServicos.FieldByName('UNIDADE_MEDIDA').AsString;
                             TIPO_ITEM := StrToTipoItem(CdsProdutosServicos.FieldByName('TIPO').AsString);
                             If CdsProdutosServicos.FieldByName('CODIGO_NCM').AsString <> '99999999' then
                              COD_NCM := CdsProdutosServicos.FieldByName('CODIGO_NCM').AsString;
                             EX_IPI       := '';
                             COD_GEN      := CdsProdutosServicos.FieldByName('CODIGO_GENERO').AsString;
                             COD_LST      := CdsProdutosServicos.FieldByName('CODIGO_SERVICO').AsString;
                             ALIQ_ICMS    := CdsProdutosServicos.FieldByName('ALIQUOTA_ICMS').AsCurrency;


                          end;
                        end;
                        //Proximo
                        CdsProdutosServicos.Next;
                        Application.ProcessMessages;
                     end;
                  end;

               end;

           //FILHO - REGISTRO 0400: CFOPS
           CdsNaturezaOperacao.First;
           while (not CdsNaturezaOperacao.Eof) do
              begin
               if CdsNaturezaOperacao.FieldByName('USADO').AsString = 'S' then
               begin
                 with Registro0400New do
                 begin
                   COD_NAT := CdsNaturezaOperacao.FieldByName('OPE_CODIGO').AsString;
                   DESCR_NAT := trim(CdsNaturezaOperacao.FieldByName('OPE_DESCRI').AsString);
                 end;
               end;
               CdsNaturezaOperacao.Next;
             end;

           //0450 - Tabela de Informações Complementares  do Documento Fiscal
           //#Rever

           // FILHO - REGISTRO 0500: PLANO DE CONTAS CONTÁBEIS
           //with Registro0500New do
           //begin
           //  DT_ALT := StrToDate('01/04/2011');
           //  COD_NAT_CC := ncgAtivo;
           //  IND_CTA := indCTASintetica;
           //  NIVEL := '0';
           //  COD_CTA := '01';
           //  NOME_CTA := 'NOME CTA';
           //  COD_CTA_REF := '0';
           //  CNPJ_EST := '33333333000191';
           //end;
          // FILHO - REGISTRO 0500: PLANO DE CONTAS CONTÁBEIS
          BuscaPlanoContas;
          if not cdsPlanoContabil.IsEmpty then
          begin
            cdsPlanoContabil.First;
            while not cdsPlanoContabil.Eof do
            begin
              with Registro0500New do
              begin
                DT_ALT := dataFinal; // cdsPlanoContabil.FieldByName('DT_ALT').AsDateTime;
               // COD_NAT_CC := '01';
                //IND_CTA := 'S';
                NIVEL := IntToStr(ContaCaracteres(cdsPlanoContabil.FieldByName('CCT_NIVEL').AsString, '.') + 1);
                COD_CTA := cdsPlanoContabil.FieldByName('CCT_CODIGO').asString;
                NOME_CTA := cdsPlanoContabil.FieldByName('CCT_DESCRI').asString;
              end;
              cdsPlanoContabil.Next;
            end;
          end;
         end;
      end;

   end;
end;

procedure TFrmSped.Bloco1;
begin
   (*BLOCO 1*)

   with ACBrSPEDPisCofins1.Bloco_1 do
   begin
      with Registro1001New do
      begin
         if (xIndicadorRegimeCumulativo <> Null )and
            (xIndicadorRegimeCumulativo = codRegimeCompetEscritConsolidada)and
            (CdsEmpresa.FieldByName('MODALIDADE').AsString = 'P') then  //S = SIMPLES P = PRESUMIDO R = REAL
            begin
               Cds1900.Close;
               Cds1900.CommandText := 'SELECT '+
                                      't3.emp_cgc, '+
                                      't2.codigo_modelo, '+
                                      't2.serie, '+
                                      'SUM(CAST(T1.QUANTIDADE * T1.VALOR_ITEM AS NUMERIC(18,2))) AS VALOR, '+
                                      'cast(COUNT(T1.registro_nota) as integer) AS QTDE_DOC, '+
                                      'T1.cst_pis, '+
                                      'T1.cst_cofins, '+
                                      'T1.cfop '+
                                      'FROM '+
                                      'VW_SPED_NOTAS_FISCAIS_ITENS T1 '+
                                      'JOIN VW_SPED_NOTAS_FISCAIS T2 ON (t2.EMPRESA = '+QuotedStr(dbInicio.Empresa.EMP_CODIGO)+'  AND T2.REGISTRO = T1.REGISTRO_NOTA AND ((T2.DATA_EMISSAO BETWEEN '+QuotedStr(DataAmericana(DateToStr(dataInicial)))+' AND '+QuotedStr(DataAmericana(DateToStr(dataFinal)))+')OR(T2.DATA_ENTRADA_SAIDA BETWEEN '+QuotedStr(DataAmericana(DateToStr(dataInicial)))+' AND '+QuotedStr(DataAmericana(DateToStr(dataFinal)))+'))) '+
                                      'join emp0000 t3 on (t3.emp_codigo = t2.empresa) ' +
                                      'where t1.CFOP in (SELECT T4.OPE_NATUREZA FROM OPE0000 T4 WHERE T4.OPE_TIPO_OPERACAO = ''V'') '+
                                      'GROUP BY t3.emp_cgc,t2.codigo_modelo,t2.serie,T1.cst_pis,T1.cst_cofins,T1.cfop ';
               Cds1900.Open;
               if (Cds1900.IsEmpty) then
                  IND_MOV := imSemDados
               else
                  IND_MOV := imComDados;

               if (not Cds1900.IsEmpty) then
                  begin
                     Cds1900.First;
                     while (not Cds1900.Eof) do
                        begin
                           with Registro1900New do
                              begin
                                 CNPJ := Cds1900.FieldByName('emp_cgc').AsString;
                                 COD_MOD := Cds1900.FieldByName('codigo_modelo').AsString;
                                 SER := Cds1900.FieldByName('serie').AsString;
                                 SUB_SER := '';
                                 COD_SIT := csffRegular;
                                 VL_TOT_REC := Cds1900.FieldByName('VALOR').AsCurrency;
                                 QUANT_DOC := Cds1900.FieldByName('QTDE_DOC').AsInteger;
                                 CST_PIS := StrToCstPis (Cds1900.FieldByName('CST_PIS').AsString);
//                                    begin
//                                       //tratativa
//                                       if (Cds1900.FieldByName('VALOR_PIS').AsCurrency > 0) then
//                                          CST_PIS := stpisValorAliquotaNormal
//                                       else
//                                          CST_PIS := stpisIsentaContribuicao;
//                                    end;
                                 CST_COFINS := StrToCstCofins(Cds1900.FieldByName('CST_COFINS').AsString);
//                                  else
//                                     //tratativa
//                                     if (Cds1900.FieldByName('VALOR_PIS').AsCurrency > 0) then
//                                        CST_COFINS := stcofinsValorAliquotaNormal
//                                     else
//                                        CST_COFINS := stcofinsIsentaContribuicao;

                                 CFOP := Cds1900.FieldByName('cfop').AsInteger;
                                 INF_COMPL := '';
                                 COD_CTA := '';

                              end;
                           Cds1900.Next;
                        end;
                  end;


            end
         else
            begin
               IND_MOV := imSemDados;
            end;
      end;
   end;
end;

procedure TFrmSped.BlocoA;
begin
  (*BLOCO A*)
  //Notas Fiscais de Serviços sem incidencia de ICMS
  with ACBrSPEDPisCofins1.Bloco_A do
  begin
    with RegistroA001New do
      IND_MOV := imSemDados;
  end


end;

procedure TFrmSped.BlocoC;
var iSequencia:Integer;
begin
  if (xIndicadorRegimeCumulativo <> Null )and
    (xIndicadorRegimeCumulativo = codRegimeCompetEscritConsolidada)and
    (CdsEmpresa.FieldByName('MODALIDADE').AsString = 'P') then  //S = SIMPLES P = PRESUMIDO R = REAL
  begin
    with ACBrSPEDPisCofins1.Bloco_C do
    begin
      with RegistroC001New do
        IND_MOV := imSemDados;

    end;
  end
  else
  if (xIndicadorRegimeCumulativo = codRegimeCompetEscritDetalhada) then
  begin
         (*BLOCO C*)
         with ACBrSPEDPisCofins1.Bloco_C do
         begin
            with RegistroC001New do
            begin
               //Notas Fiscais
               CdsNotasFiscais.Close;
               CdsNotasFiscais.CommandText := 'SELECT * FROM VW_SPED_NOTAS_FISCAIS where CODIGO_MODELO IN (''01'',''1'',''1B'',''04'',''4'',''6'',''06'',''28'',''29'',''55'') AND EMPRESA = '+QuotedStr(dbInicio.Empresa.EMP_CODIGO)+' AND ((TIPO_NOTA = ''E'' and DATA_ENTRADA_SAIDA BETWEEN '
                                                               +QuotedStr(DataAmericana(DateToStr(dataInicial)))+' AND '+QuotedStr(DataAmericana(DateToStr(dataFinal)))+') or (TIPO_NOTA = ''S'' and DATA_EMISSAO BETWEEN '
                                                               +QuotedStr(DataAmericana(DateToStr(dataInicial)))+' AND '+QuotedStr(DataAmericana(DateToStr(dataFinal)))+'))';
               CdsNotasFiscais.Open;
               CdsNotasFiscais.First;
               if (CdsNotasFiscais.IsEmpty) then
                  begin
                     IND_MOV := imSemDados;
                  end
               else
                  begin
                     IND_MOV := imComDados;
                     //C010 - Identificação do Estabelecimento
                     with RegistroC010New do
                     begin

                        CNPJ := CdsEmpresa.FieldByName('CNPJ_CPF').AsString;
                        IND_ESCRI := xIndEscrituracao;
                        //Define o tipo da Inscrituracao
                        if (xIndEscrituracao = IndEscriConsolidado) then //1 – Apuração com base nos registros de consolidação das operações por NF-e (C180 e C190) e por ECF (C490);
                           begin
                              //C180 - Consolidação das notas eletrônicas modelo 55 - Operações de Vendas
                              CdsC180.Close;
                              CdsC180.CommandText := 'SELECT '+
                                                     'T1.CODIGO_ITEM, '+
                                                     'T4.IPI_CODIGO, '+
                                                     'SUM(CAST(T1.QUANTIDADE * T1.VALOR_ITEM AS NUMERIC(18,2))) AS VALOR '+
                                                     'FROM '+
                                                     'VW_SPED_NOTAS_FISCAIS_ITENS T1 '+
                                                     'JOIN VW_SPED_NOTAS_FISCAIS T2 ON (t2.EMPRESA = '+QuotedStr(dbInicio.Empresa.EMP_CODIGO)+' and T2.CODIGO_MODELO = ''55'' AND T2.REGISTRO = T1.REGISTRO_NOTA AND ((T2.DATA_EMISSAO BETWEEN '+QuotedStr(DataAmericana(DateToStr(dataInicial)))+' AND '+QuotedStr(DataAmericana(DateToStr(dataFinal)))+')OR(T2.DATA_ENTRADA_SAIDA BETWEEN '+QuotedStr(DataAmericana(DateToStr(dataInicial)))+' AND '+QuotedStr(DataAmericana(DateToStr(dataFinal)))+'))) '+
                                                     'JOIN PRD0000 T4 ON (T4.PRD_CODIGO = T1.CODIGO_ITEM) '+
                                                     'where t1.CFOP in (SELECT T3.OPE_NATUREZA FROM OPE0000 T3 WHERE T3.OPE_TIPO_OPERACAO = ''V'') '+
                                                     'GROUP BY T1.CODIGO_ITEM, T4.IPI_CODIGO';
                              CdsC180.Open;
                              while (not CdsC180.Eof) do
                                 begin
                                    with RegistroC180New do
                                       begin
                                          COD_MOD := '55';
                                          DT_DOC_INI := dataInicial;
                                          DT_DOC_FIN := dataFinal;
                                          COD_ITEM := CdsC180.FieldByName('CODIGO_ITEM').AsString;
                                          Adicionar200(COD_ITEM);
                                          COD_NCM := CdsC180.FieldByName('IPI_CODIGO').AsString;
                                          EX_IPI := '';
                                          VL_TOT_ITEM := CdsC180.FieldByName('VALOR').AsCurrency;
                                          //C181 - Detalhamento da Consolidação - Operações de Venda - PIS/PASEP
                                          CdsC181.Close;
                                          CdsC181.CommandText := 'SELECT '+
                                                                 'T1.CODIGO_ITEM, '+
                                                                 'T4.IPI_CODIGO, '+
                                                                 'SUM(CAST(T1.QUANTIDADE * T1.VALOR_ITEM AS NUMERIC(18,2))) AS VALOR, '+
                                                                 't1.CST_PIS, '+
                                                                 't1.CFOP, '+
                                                                 'SUM(t1.VALOR_BASE_PIS) as VALOR_BASE_PIS, '+
                                                                 't1.ALIQ_PIS, '+
                                                                 'SUM(t1.VALOR_PIS) as VALOR_PIS '+
                                                                 'FROM '+
                                                                 'VW_SPED_NOTAS_FISCAIS_ITENS T1 '+
                                                                 'JOIN VW_SPED_NOTAS_FISCAIS T2 ON (t2.EMPRESA = '+QuotedStr(dbInicio.Empresa.EMP_CODIGO)+' and T2.CODIGO_MODELO = ''55'' AND T2.REGISTRO = T1.REGISTRO_NOTA AND ((T2.DATA_EMISSAO BETWEEN '+QuotedStr(DataAmericana(DateToStr(dataInicial)))+' AND '+QuotedStr(DataAmericana(DateToStr(dataFinal)))+')OR(T2.DATA_ENTRADA_SAIDA BETWEEN '+QuotedStr(DataAmericana(DateToStr(dataInicial)))+' AND '+QuotedStr(DataAmericana(DateToStr(dataFinal)))+'))) '+
                                                                 'JOIN PRD0000 T4 ON (T4.PRD_CODIGO = T1.CODIGO_ITEM) '+
                                                                 'where t1.CFOP in (SELECT T3.OPE_NATUREZA FROM OPE0000 T3 WHERE T3.OPE_TIPO_OPERACAO = ''V'') and t1.CODIGO_ITEM = '+QuotedStr(CdsC180.FieldByName('CODIGO_ITEM').AsString)+' '+
                                                                 'GROUP BY T1.CODIGO_ITEM, T4.IPI_CODIGO, t1.CST_PIS, t1.CFOP, t1.ALIQ_PIS';

                                          CdsC181.Open;
                                          if (not CdsC181.IsEmpty) then
                                             begin
                                                CdsC181.First;
                                                while (not CdsC181.Eof) do
                                                   begin
                                                      with RegistroC181New do
                                                      begin
                                                        CST_PIS := StrToCstPis(CdsC181.FieldByName('CST_PIS').AsString);
                                                        CFOP :=  CdsC181.FieldByName('CFOP').AsString;
                                                        VL_ITEM := CdsC181.FieldByName('VALOR').AsCurrency;
                                                        VL_DESC := 0;
                                                        VL_BC_PIS := CdsC181.FieldByName('VALOR_BASE_PIS').AsCurrency;
                                                        ALIQ_PIS := CdsC181.FieldByName('ALIQ_PIS').AsCurrency;
                                                        QUANT_BC_PIS := 0;
                                                        ALIQ_PIS_QUANT := 0;
                                                        VL_PIS := CdsC181.FieldByName('VALOR_PIS').AsCurrency;
                                                        COD_CTA := '';
                                                      end;
                                                      //Proximo
                                                      CdsC181.Next;
                                                   end;
                                             end;
                                          //Fecha CdsC181
                                          CdsC181.Close;
                                          //C185 - Detalhamento da Consolidação - Operações de Venda COFINS
                                          CdsC185.Close;
                                          CdsC185.CommandText := 'SELECT '+
                                                                 'T1.CODIGO_ITEM, '+
                                                                 'T4.IPI_CODIGO, '+
                                                                 'SUM(CAST(T1.QUANTIDADE * T1.VALOR_ITEM AS NUMERIC(18,2))) AS VALOR, '+
                                                                 't1.CST_COFINS, '+
                                                                 't1.CFOP, '+
                                                                 'SUM(t1.VALOR_BASE_COFINS) as VALOR_BASE_COFINS, '+
                                                                 't1.ALIQUOTA_COFINS, '+
                                                                 'SUM(t1.VALOR_COFINS) as VALOR_COFINS '+
                                                                 'FROM '+
                                                                 'VW_SPED_NOTAS_FISCAIS_ITENS T1 '+
                                                                 'JOIN VW_SPED_NOTAS_FISCAIS T2 ON (t2.EMPRESA = '+QuotedStr(dbInicio.Empresa.EMP_CODIGO)+' and T2.CODIGO_MODELO = ''55'' AND T2.REGISTRO = T1.REGISTRO_NOTA AND ((T2.DATA_EMISSAO BETWEEN '+QuotedStr(DataAmericana(DateToStr(dataInicial)))+' AND '+QuotedStr(DataAmericana(DateToStr(dataFinal)))+')OR(T2.DATA_ENTRADA_SAIDA BETWEEN '+QuotedStr(DataAmericana(DateToStr(dataInicial)))+' AND '+QuotedStr(DataAmericana(DateToStr(dataFinal)))+'))) '+
                                                                 'JOIN PRD0000 T4 ON (T4.PRD_CODIGO = T1.CODIGO_ITEM) '+
                                                                 'where t1.CFOP in (SELECT T3.OPE_NATUREZA FROM OPE0000 T3 WHERE T3.OPE_TIPO_OPERACAO = ''V'') and t1.CODIGO_ITEM = '+QuotedStr(CdsC180.FieldByName('CODIGO_ITEM').AsString)+' '+
                                                                 'GROUP BY T1.CODIGO_ITEM, T4.IPI_CODIGO, t1.CST_COFINS, t1.CFOP, t1.ALIQUOTA_COFINS';
                                          CdsC185.Open;
                                          if (not CdsC185.IsEmpty) then
                                             begin
                                                CdsC185.First;
                                                while (not CdsC185.Eof) do
                                                   begin
                                                      with (RegistroC185New) do
                                                      begin
                                                        CST_COFINS := StrToCstCofins(CdsC185.FieldByName('CST_COFINS').AsString);
                                                        CFOP :=  CdsC185.FieldByName('CFOP').AsString;
                                                        VL_ITEM := CdsC185.FieldByName('VALOR').AsCurrency;
                                                        VL_DESC := 0;
                                                        VL_BC_COFINS := CdsC185.FieldByName('VALOR_BASE_COFINS').AsCurrency;
                                                        ALIQ_COFINS := CdsC185.FieldByName('ALIQUOTA_COFINS').AsCurrency;
                                                        QUANT_BC_COFINS := 0;
                                                        ALIQ_COFINS_QUANT := 0;
                                                        VL_COFINS := CdsC185.FieldByName('VALOR_COFINS').AsCurrency;
                                                        COD_CTA := '';
                                                      end;
                                                     //Proximo
                                                      CdsC185.Next;
                                                   end;
                                             end;
                                          //Fecha Cds C185
                                          CdsC185.Close;
                                       end;
                                    //proximo
                                    CdsC180.Next;
                                 end;
                              //Fecha CdsC180
                              CdsC180.Close;
                           end
                        else
                           begin
                              //2 – Apuração com base no registro individualizado de NF-e (C100 e C170) e de ECF (C400)
                              //Inserir Notas...
                              while (not CdsNotasFiscais.Eof) do
                              begin
                                  (* Devemos informar, por exemplo, as notas fiscais de saída referente a transferências de produção própria ou terceiros (CFOP 5.151/6.151, 5.152/6.152);
                                  remessa para industrialização por encomenda (CFOP 5.901/6.901),
                                  remessa para conserto (CFOP 5.915/6.9150), remessa de vasilhame ou sacaria (CFOP 5.920/6.920); etc  *)
                                  if BuscaUmDadoSqlAsInteger(' Select cast(count(*) as integer) as conta from    OPE0000 '+
                                                             ' WHERE (OPE_NATUREZA IN (''5151'',''6151'',''5152'',''6152'',''5901'',''6901'',''5915'',''69150'',''5920'',''6920'',''3101'')       '+
                                                             ' OR OPE_ESCRITA = ''N'' ) '+
                                                             ' AND (OPE_CODIGO = '+QuotedStr(CdsNotasFiscais.FieldByName('ope_codigo').AsString) +')') >0 then
                                  begin
                                    CdsNotasFiscais.Next;
                                    continue;
                                  end;
                                 //C100 - Documento - Nota Fiscal (código 01), Nota Fiscal Avulsa (código 1B), Nota
                                 // Fiscal de Produtor (código 04) e NF-e (código 55)
                                 with RegistroC100New do
                                 begin
                                    IND_OPER      := IIF(CdsNotasFiscais.FieldByName('TIPO_NOTA').AsString = 'E',tpEntradaAquisicao,tpSaidaPrestacao);
                                    IND_EMIT      := IIF(CdsNotasFiscais.FieldByName('TIPO_EMITENTE').AsString = 'P',edEmissaoPropria,edTerceiros); ;
                                    COD_PART      := CdsNotasFiscais.FieldByName('CODIGO_PARTICIPANTE').AsString; //Baseado no registro 0150
                                    Adicionar150(CdsNotasFiscais.FieldByName('CODIGO_PARTICIPANTE').AsString);
                                    COD_MOD       := PreenchezeroEsquerda(CdsNotasFiscais.FieldByName('CODIGO_MODELO').AsString,2);
                                    COD_SIT       := sdRegular;
                                    SER           := CdsNotasFiscais.FieldByName('SERIE').AsString;
                                    NUM_DOC       := FormatFloat('000000000',CdsNotasFiscais.FieldByName('NUMERO').AsInteger); //
                                    CHV_NFE       := CdsNotasFiscais.FieldByName('CHAVE_ELETRONICA').AsString;
                                    DT_DOC        := CdsNotasFiscais.FieldByName('DATA_EMISSAO').AsDateTime;
                                    DT_E_S        := CdsNotasFiscais.FieldByName('DATA_ENTRADA_SAIDA').AsDateTime;
                                    VL_DOC        := CdsNotasFiscais.FieldByName('VALOR_NOTA').AsCurrency;
                                    if CdsNotasFiscais.FieldByName('TIPO_PGTO').AsString= 'P' then
                                      IND_PGTO :=  tpPrazo
                                    else if (CdsNotasFiscais.FieldByName('TIPO_PGTO').AsString = 'A') then
                                      IND_PGTO := tpVista
                                    else
                                      IND_PGTO := tpPrazo;

                                    VL_DESC       := CdsNotasFiscais.FieldByName('VALOR_DESCONTO').AsCurrency;
                                    VL_ABAT_NT    := CdsNotasFiscais.FieldByName('VALOR_ABATIMENTO').AsCurrency;
                                    VL_MERC       := CdsNotasFiscais.FieldByName('VALOR_MERCADORIAS').AsCurrency;
                                    IND_FRT := StrToIndFrt(CdsNotasFiscais.FieldByName('INDICADOR_FRETE').AsString);
                                    VL_FRT        := CdsNotasFiscais.FieldByName('VALOR_FRETE').AsCurrency;
                                    VL_SEG        := CdsNotasFiscais.FieldByName('VALOR_SEGURO').AsCurrency;
                                    VL_OUT_DA     := CdsNotasFiscais.FieldByName('VALOR_OUTRAS_DESP_ACES').AsCurrency;
                                    VL_BC_ICMS    := CdsNotasFiscais.FieldByName('VALOR_BASE_CALCULO_ICMS').AsCurrency;
                                    VL_ICMS       := CdsNotasFiscais.FieldByName('VALOR_ICMS').AsCurrency;
                                    VL_BC_ICMS_ST := CdsNotasFiscais.FieldByName('VALOR_BASE_ICMS_ST').AsCurrency;
                                    VL_ICMS_ST    := CdsNotasFiscais.FieldByName('VALOR_RETIDO_ST').AsCurrency;
                                    VL_IPI        := CdsNotasFiscais.FieldByName('VALOR_IPI').AsCurrency;
                                    VL_PIS        := CdsNotasFiscais.FieldByName('VALOR_PIS').AsCurrency;
                                    VL_COFINS     := CdsNotasFiscais.FieldByName('VALOR_COFINS').AsCurrency;
                                    VL_PIS_ST     := CdsNotasFiscais.FieldByName('VALOR_PIS_RETIDO_ST').AsCurrency;
                                    VL_COFINS_ST  := CdsNotasFiscais.FieldByName('VALOR_COFINS_ST').AsCurrency;

                                    //Lista os Itens da nota

                                    CdsNotasFiscaisItens.Close;
                                    CdsNotasFiscaisItens.CommandText := 'SELECT * FROM VW_SPED_NOTAS_FISCAIS_ITENS WHERE REGISTRO_NOTA = '+QuotedStr(CdsNotasFiscais.FieldByName('REGISTRO').AsString);
                                    CdsNotasFiscaisItens.Open;
                                    CdsNotasFiscaisItens.First;
                                    iSequencia := 0;
                                    //10 itens para cada nota...
                                    while (not CdsNotasFiscaisItens.Eof) do
                                    begin
                                       Inc(iSequencia);
                                       //c170 - Complemento de Documento – Itens do Documento (códigos 01, 1B, 04 e 55)
                                       with RegistroC170New do   //Inicio Adicionar os Itens:
                                       begin
                                          NUM_ITEM         := FormatFloat('000', iSequencia);
                                          COD_ITEM         := CdsNotasFiscaisItens.FieldByName('CODIGO_ITEM').AsString;
                                          Adicionar200(COD_ITEM);
                                          DESCR_COMPL      := CdsNotasFiscaisItens.FieldByName('DESCRICAO_ITEM').AsString;
                                          QTD              := CdsNotasFiscaisItens.FieldByName('QUANTIDADE').AsFloat; // O último dígito deve ser ignorado no arquivo
                                          UNID             := CdsNotasFiscaisItens.FieldByName('UNIDADE').AsString;
                                          VL_ITEM          := CdsNotasFiscaisItens.FieldByName('VALOR_ITEM').AsCurrency;
                                          VL_DESC          := CdsNotasFiscaisItens.FieldByName('VALOR_DESCONTO').AsCurrency;
                                          IND_MOV          := IIF(CdsNotasFiscaisItens.FieldByName('INDICADOR_MOVIMENTACAO').AsString = 'S',mfSim,mfNao);
                                          CST_ICMS := StrToCstIcms(CdsNotasFiscaisItens.FieldByName('CST_ICMS').AsString);
                                          CFOP             := CdsNotasFiscaisItens.FieldByName('CFOP').AsString;
                                          If CdsNotasFiscaisItens.FieldByName('OPE_CODIGO').IsNull then
                                            COD_NAT := StrZero(CdsNotasFiscais.FieldByName('OPE_CODIGO').AsString,3)
                                          else
                                            COD_NAT := StrZero(CdsNotasFiscaisItens.FieldByName('OPE_CODIGO').AsString,3);
                                          Adicionar400(COD_NAT);

                                          VL_BC_ICMS       := CdsNotasFiscaisItens.FieldByName('VALOR_BASE_ICMS').AsCurrency;
                                          ALIQ_ICMS        := CdsNotasFiscaisItens.FieldByName('ALIQUOTA_ICMS').AsCurrency;
                                          VL_ICMS          := CdsNotasFiscaisItens.FieldByName('VALOR_ICMS').AsCurrency;
                                          VL_BC_ICMS_ST    := CdsNotasFiscaisItens.FieldByName('VALOR_BASE_ICMS_ST').AsCurrency;
                                          ALIQ_ST          := CdsNotasFiscaisItens.FieldByName('ALIQUOTA_ICMS_ST').AsCurrency;
                                          VL_ICMS_ST       := CdsNotasFiscaisItens.FieldByName('VALOR_ICMS_ST').AsCurrency;
                                          IND_APUR         := iaMensal;
                                          CST_IPI := StrToCstIpi(CdsNotasFiscaisItens.FieldByName('CODIGO_CFOP').AsString);
//                                             begin
//                                                //tratativa exclusiva
//                                                if (CdsNotasFiscais.FieldByName('TIPO_NOTA').AsString = 'E') then
//                                                   begin
//                                                      if (CdsNotasFiscaisItens.FieldByName('VALOR_IPI').AsCurrency > 0) then
//                                                         CST_IPI := stipiEntradaRecuperacaoCredito
//                                                      else
//                                                         CST_IPI := stipiEntradaTributradaZero
//                                                   end
//                                                else
//                                                   begin
//                                                      if (CdsNotasFiscaisItens.FieldByName('VALOR_IPI').AsCurrency > 0) then
//                                                         CST_IPI := stipiSaidaTributada
//                                                      else
//                                                         CST_IPI := stipiSaidaTributadaZero
//                                                   end;
//                                             end;
                                          COD_ENQ          := '';//CdsNotasFiscaisItens.FieldByName('CODIGO_ENQUAD_IPI').AsString;
                                          VL_BC_IPI        := CdsNotasFiscaisItens.FieldByName('VALOR_BASE_IPI').AsCurrency;
                                          ALIQ_IPI         := CdsNotasFiscaisItens.FieldByName('ALIQUOTA_IPI').AsCurrency;
                                          VL_IPI           := CdsNotasFiscaisItens.FieldByName('VALOR_IPI').AsCurrency;
                                          CST_PIS := StrToCstPis(CdsNotasFiscaisItens.FieldByName('CST_PIS').AsString);
//                                          else
//                                             begin
//                                                //tratativa
//                                                if (CdsNotasFiscaisItens.FieldByName('VALOR_PIS').AsCurrency > 0) then
//                                                   CST_PIS := stpisValorAliquotaNormal
//                                                else
//                                                   CST_PIS := stpisIsentaContribuicao;
//                                             end;

                                          VL_BC_PIS        := CdsNotasFiscaisItens.FieldByName('VALOR_BASE_PIS').AsCurrency;
                                          ALIQ_PIS_PERC    := CdsNotasFiscaisItens.FieldByName('ALIQ_PIS').AsCurrency;
                                          if CdsNotasFiscaisItens.FieldByName('QUANTIDADE_BASE_PIS').AsCurrency>0 then
                                            QUANT_BC_PIS     := CdsNotasFiscaisItens.FieldByName('QUANTIDADE_BASE_PIS').AsCurrency;
                                          if CdsNotasFiscaisItens.FieldByName('ALIQ_PIS_REAIS').AsCurrency >0 then
                                            ALIQ_PIS_R       := CdsNotasFiscaisItens.FieldByName('ALIQ_PIS_REAIS').AsCurrency;
                                          VL_PIS           := CdsNotasFiscaisItens.FieldByName('VALOR_PIS').AsCurrency;
                                          CST_COFINS := StrToCstCofins(CdsNotasFiscaisItens.FieldByName('CST_COFINS').AsString);

//                                          else
//                                             begin
//                                                //tratativa
//                                                if (CdsNotasFiscaisItens.FieldByName('VALOR_COFINS').AsCurrency > 0) then
//                                                   CST_COFINS := stcofinsValorAliquotaNormal
//                                                else
//                                                   CST_COFINS := stcofinsIsentaContribuicao;
//                                             end;

                                          VL_BC_COFINS     := CdsNotasFiscaisItens.FieldByName('VALOR_BASE_COFINS').AsCurrency;
                                          ALIQ_COFINS_PERC := CdsNotasFiscaisItens.FieldByName('ALIQUOTA_COFINS').AsCurrency;
                                          if CdsNotasFiscaisItens.FieldByName('QUANTIDADE_BASE_COFINS').AsCurrency>0 then
                                            QUANT_BC_COFINS  := CdsNotasFiscaisItens.FieldByName('QUANTIDADE_BASE_COFINS').AsCurrency;
                                          if CdsNotasFiscaisItens.FieldByName('ALIQ_COFINS_REAIS').AsCurrency>0 then
                                            ALIQ_COFINS_R    := CdsNotasFiscaisItens.FieldByName('ALIQ_COFINS_REAIS').AsCurrency;
                                          VL_COFINS        := CdsNotasFiscaisItens.FieldByName('VALOR_COFINS').AsCurrency;
                                          if CdsNotasFiscais.FieldByName('CCT_CODIGO').AsString <> '' then
                                            COD_CTA          := CdsNotasFiscais.FieldByName('CCT_CODIGO').AsString //Baseado no 0500
                                          else if CdsNotasFiscais.FieldByName('TIPO_NOTA').AsString = 'S' then
                                            COD_CTA := '002'
                                          else
                                            COD_CTA := '001';


                                       end; //Fim dos Itens;
                                       CdsNotasFiscaisItens.Next;
                                    end;

                                    Application.ProcessMessages;
                                    end;

                                 //proximo
                                 CdsNotasFiscais.Next;
                              end;
                           end;


                     end;
                  end;
            end;
         end;
  end;
end;

procedure TFrmSped.BlocoD;
var iSequencia:Integer;
begin
  if (xIndicadorRegimeCumulativo <> Null )and
    (xIndicadorRegimeCumulativo = codRegimeCompetEscritConsolidada)and
    (CdsEmpresa.FieldByName('MODALIDADE').AsString = 'P') then  //S = SIMPLES P = PRESUMIDO R = REAL
  begin
     with ACBrSPEDPisCofins1.Bloco_D do
     begin
        with RegistroD001New do
         IND_MOV := imSemDados;

     end;
  end
  else
  if (xIndicadorRegimeCumulativo = codRegimeCompetEscritDetalhada) then
  begin
         (*BLOCO D*)
         with ACBrSPEDPisCofins1.Bloco_D do
         begin
            with RegistroD001New do
            begin
              //Notas Fiscais
               CdsNotasFiscais.Close;
               CdsNotasFiscais.CommandText := 'SELECT * FROM VW_SPED_NOTAS_FISCAIS where CODIGO_MODELO IN (''7'',''07'',''8'',''08'',''8B'',''9'',''09'',''10'',''11'',''26'',''27'',''57'') AND EMPRESA = '+QuotedStr(dbInicio.Empresa.EMP_CODIGO)+' AND ((TIPO_NOTA = ''E'' and DATA_ENTRADA_SAIDA BETWEEN '
                                                               +QuotedStr(DataAmericana(DateToStr(dataInicial)))+' AND '+QuotedStr(DataAmericana(DateToStr(dataFinal)))+') or (TIPO_NOTA = ''S'' and DATA_EMISSAO BETWEEN '
                                                               +QuotedStr(DataAmericana(DateToStr(dataInicial)))+' AND '+QuotedStr(DataAmericana(DateToStr(dataFinal)))+'))';
               CdsNotasFiscais.Open;
               CdsNotasFiscais.First;
               if (CdsNotasFiscais.IsEmpty) then
                  begin
                     IND_MOV := imSemDados;
                  end
               else
                  begin
                     IND_MOV := imComDados;
                     //Estabelecimento
                     with RegistroD010New do
                     begin
                        CNPJ := CdsEmpresa.FieldByName('CNPJ_CPF').AsString;

                        CdsNotasFiscais.First;
                        while (not CdsNotasFiscais.Eof) do
                           begin
                              with (RegistroD100New) do
                              begin
                                 IND_OPER := '0';
                                 IND_EMIT := iedfTerceiro;
                                 COD_PART := CdsNotasFiscais.FieldByName('CODIGO_PARTICIPANTE').AsString;
                                 Adicionar150(CdsNotasFiscais.FieldByName('CODIGO_PARTICIPANTE').AsString);
                                 COD_MOD := PrencheZeroEsquerda(CdsNotasFiscais.FieldByName('CODIGO_MODELO').AsString,2);
                                 COD_SIT := sdfRegular;
                                 SER := CdsNotasFiscais.FieldByName('SERIE').AsString;
                                 SUB := '';
                                 if (Length(CdsNotasFiscais.FieldByName('NUMERO').AsString)> 9) then
                                    NUM_DOC := COPY(CdsNotasFiscais.FieldByName('NUMERO').AsString,2,9)
                                 else
                                    NUM_DOC := PreenchezeroEsquerda(CdsNotasFiscais.FieldByName('NUMERO').AsString,9);
                                 CHV_CTE := CdsNotasFiscais.FieldByName('CHAVE_ELETRONICA').AsString;
                                 DT_DOC := CdsNotasFiscais.FieldByName('DATA_EMISSAO').AsDateTime;
                                 DT_A_P := CdsNotasFiscais.FieldByName('DATA_ENTRADA_SAIDA').AsDateTime;
                                 TP_CT_e := '';
                                 CHV_CTE_REF := '';
                                 VL_DOC := CdsNotasFiscais.FieldByName('VALOR_NOTA').AsCurrency;
                                 VL_DESC := CdsNotasFiscais.FieldByName('VALOR_DESCONTO').AsCurrency;
                                 if (CdsNotasFiscais.FieldByName('INDICADOR_FRETE').AsString = '0') then
                                   IND_FRT      := tfPorContaEmitente
                                 else
                                 if (CdsNotasFiscais.FieldByName('INDICADOR_FRETE').AsString = '1') then
                                   IND_FRT      := tfPorContaDestinatario
                                 else
                                 if (CdsNotasFiscais.FieldByName('INDICADOR_FRETE').AsString = '2') then
                                   IND_FRT      := tfPorContaTerceiros
                                 else
                                   IND_FRT      := tfSemCobrancaFrete;
                                 VL_SERV := CdsNotasFiscais.FieldByName('VALOR_NOTA').AsCurrency;
                                 VL_BC_ICMS := CdsNotasFiscais.FieldByName('VALOR_BASE_CALCULO_ICMS').AsCurrency;
                                 VL_ICMS := CdsNotasFiscais.FieldByName('VALOR_ICMS').AsCurrency;
                                 VL_NT := CdsNotasFiscais.FieldByName('VALOR_NOTA').AsCurrency;
                                 COD_INF := '';
                                 COD_CTA := '';
                              end;
                              CdsNotasFiscais.Next;
                           end;
                     end;
                  end;
            end;
         end;
  end;

end;

procedure TFrmSped.BlocoF;
begin
  if (xIndicadorRegimeCumulativo = codRegimeCompetEscritDetalhada) then
  begin
     with ACBrSPEDPisCofins1.Bloco_F do
     begin
        with RegistroF001New do
        begin
          IND_MOV := imSemDados;
                              (*
          //F010 - Identificação do Estabelecimento
          with RegistroF010New do
          begin
             CNPJ := '11111111000191';

             //F100 - Demais Documentos e Operações Geradoras de Contribuição e Créditos
             with RegistroF100New do
             begin
                IND_OPER      := indRepCustosDespesasEncargos;
                COD_PART      := '1';
                COD_ITEM      := '000001'; //Codigo do Item no registro 0200
                DT_OPER       := Date();
                VL_OPER       := 0.01;  //Deve ser Maior que zero
                CST_PIS       := stpisCredPresAquiExcRecTribMercInt;  //Para Operação Representativa de Aquisição, Custos, Despesa ou Encargos, Sujeita à Incidência de Crédito, o CST deve ser referente a Operações com Direito a Crédito (50 a 56) ou a Crédito Presumido (60 a 66).Para Operação Representativa de Receita Auferida, Sujeita ao Pagamento da Contribuição, o CST deve ser igual a 01, 02, 03 ou 05.Para Operação Representativa de Receita Auferida NÃO Sujeita ao Pagamento da Contribuição, o CST deve ser igual a 04, 06, 07, 08, 09, 49 ou 99.
                VL_BC_PIS     := 0;
                ALIQ_PIS      := 1.2375;
                VL_PIS        := 0;
                CST_COFINS    := stcofinsCredPresAquiExcRecTribMercInt;
                VL_BC_COFINS  := 0;
                ALIQ_COFINS   := 3.04;
                VL_COFINS     := 0;
                NAT_BC_CRED   := bccAqBensRevenda;
                IND_ORIG_CRED := opcMercadoInterno;
                COD_CTA       := '';
                COD_CCUS      := '';
  //              COD_CCUS      := '123';//Para usar o COD_CCUS é necessário gerar, primeiro, um registro 0600 correspondente.
                DESC_DOC_OPER := '';
             end;
          end; *)
        end;
     end;

  end
  else
  if (xIndicadorRegimeCumulativo <> Null )and
    (xIndicadorRegimeCumulativo = codRegimeCompetEscritConsolidada)and
    (CdsEmpresa.FieldByName('MODALIDADE').AsString = 'P') then  //S = SIMPLES P = PRESUMIDO R = REAL
  begin
    (*BLOCO F*)
     with ACBrSPEDPisCofins1.Bloco_F do
     begin
        with RegistroF001New do
        begin
           CdsF550.Close;
           CdsF550.CommandText := 'SELECT '+
                                  'COALESCE(T2.CODIGO_MODELO,''55'') as CODIGO_MODELO, '+
                                  'SUM(CAST(T1.QUANTIDADE * T1.VALOR_ITEM AS NUMERIC(18,2))) AS VALOR, '+
                                  'COALESCE(t1.CST_PIS, ''07'') as CST_PIS, '+
                                  't1.CFOP, '+
                                  'SUM(CAST(T1.valor_ipi + T1.valor_icms_st AS NUMERIC(18,2))) AS DEDUCOES,'+
                                  'SUM(t1.VALOR_BASE_PIS) as VALOR_BASE_PIS, '+
                                  't1.ALIQ_PIS, '+
                                  'SUM(t1.VALOR_PIS) as VALOR_PIS, '+
                                  'COALESCE(t1.CST_COFINS, ''07'') as CST_COFINS, '+
                                  'SUM(t1.VALOR_BASE_COFINS) as VALOR_BASE_COFINS, '+
                                  't1.ALIQUOTA_COFINS, '+
                                  'SUM(t1.VALOR_COFINS) as VALOR_COFINS '+
                                  'FROM '+
                                  'VW_SPED_NOTAS_FISCAIS_ITENS T1 '+
                                  'JOIN VW_SPED_NOTAS_FISCAIS T2 ON (t2.EMPRESA = '+QuotedStr(dbInicio.Empresa.EMP_CODIGO)+'  AND T2.REGISTRO = T1.REGISTRO_NOTA AND ((T2.DATA_EMISSAO BETWEEN '+QuotedStr(DataAmericana(DateToStr(dataInicial)))+' AND '+QuotedStr(DataAmericana(DateToStr(dataFinal)))+')OR(T2.DATA_ENTRADA_SAIDA BETWEEN '+QuotedStr(DataAmericana(DateToStr(dataInicial)))+' AND '+QuotedStr(DataAmericana(DateToStr(dataFinal)))+'))) '+
                                  'where t1.CFOP in (SELECT T3.OPE_NATUREZA FROM OPE0000 T3 WHERE T3.OPE_TIPO_OPERACAO = ''V'') '+
                                  'GROUP BY t1.CST_PIS, t1.CFOP, t1.ALIQ_PIS,T2.CODIGO_MODELO,t1.CST_COFINS,t1.ALIQUOTA_COFINS';
           CdsF550.Open;
           if (CdsF550.IsEmpty) then
              IND_MOV := imSemDados
           else
              IND_MOV := imComDados;
           //F010 - Identificação do Estabelecimento
           with RegistroF010New do
           begin
              CNPJ := CdsEmpresa.FieldByName('CNPJ_CPF').AsString;
              //F100 - Demais Documentos e Operações Geradoras de Contribuição e Créditos

              CdsF550.First;
              while (not CdsF550.Eof) do
                 begin
                    with RegistroF550New do
                    begin
                       VL_REC_COMP := CdsF550.FieldByName('VALOR').AsCurrency;
                       CST_PIS:= StrToCstPis(CdsF550.FieldByName('CST_PIS').AsString);
                       VL_DESC_PIS := CdsF550.FieldByName('DEDUCOES').AsCurrency;;
                       VL_BC_PIS := CdsF550.FieldByName('VALOR_BASE_PIS').AsCurrency;
                       ALIQ_PIS := CdsF550.FieldByName('ALIQ_PIS').AsCurrency;
                       VL_PIS := CdsF550.FieldByName('VALOR_PIS').AsCurrency;
                       //cofins
                       CST_COFINS := StrToCstCofins(CdsF550.FieldByName('CST_COFINS').AsString);
                       VL_DESC_COFINS := 0;
                       VL_BC_COFINS := CdsF550.FieldByName('VALOR_BASE_COFINS').AsCurrency;;
                       ALIQ_COFINS := CdsF550.FieldByName('ALIQUOTA_COFINS').AsCurrency;;
                       VL_COFINS := CdsF550.FieldByName('VALOR_COFINS').AsCurrency;;
                       COD_MOD := CdsF550.FieldByName('CODIGO_MODELO').AsString;
                       CFOP := StrToInt(CdsF550.FieldByName('CFOP').AsString);
                       COD_CTA := '';
                       INFO_COMPL := '';
                    end;
                 //Proximo
                 CdsF550.Next;
              end;
           end;
           //Fecha
           CdsF550.Close;
        end;
     end;

  end
  else
  //Regime de Caixa
  if (xIndicadorRegimeCumulativo <> null )and
      (xIndicadorRegimeCumulativo = codRegimeCaixa)and
      (CdsEmpresa.FieldByName('MODALIDADE').AsString = 'P') then  //S = SIMPLES P = PRESUMIDO R = REAL
      begin
         (*BLOCO F*)
         with ACBrSPEDPisCofins1.Bloco_F do
         begin
            with RegistroF001New do
            begin
               IND_MOV := imComDados;

               //F010 - Identificação do Estabelecimento
               with RegistroF010New do
               begin
                  CNPJ := CdsEmpresa.FieldByName('CNPJ_CPF').AsString;

                  //F100 - Demais Documentos e Operações Geradoras de Contribuição e Créditos
                  with RegistroF500New do
                  begin
                     uteis.aviso('Regime não implementado por completo');
                     VL_REC_CAIXA := 0;
                     CST_PIS := stpisValorAliquotaNormal;
                     VL_DESC_PIS := 0;
                     VL_BC_PIS := 0;
                     ALIQ_PIS := 0;
                     VL_PIS := 0;
                     CST_COFINS := stcofinsValorAliquotaNormal;
                     VL_DESC_COFINS := 0;
                     VL_BC_COFINS := 0;
                     ALIQ_COFINS := 0;
                     VL_COFINS := 0;
                     COD_MOD := '';
                     CFOP := 5102;
                     COD_CTA := '';
                     INFO_COMPL := '';
                  end;
               end;
            end;
         end;
      end;
end;

procedure TFrmSped.BlocoM;
begin
   (*BLOCO M*)

    (* PVA calcula automaticamente ctrl + m *)

end;

procedure TFrmSped.BlocoP;
begin
   (*BLOCO P*)
   with ACBrSPEDPisCofins1.Bloco_P do
   begin
      with RegistroP001New do
      begin
         //P010 - Identificação do Estabelecimento
         with RegistroP010New do
         begin
            CNPJ := CdsEmpresa.FieldByName('CNPJ_CPF').AsString;

            //P100 - Contribuição Previdenciária sobre receita Bruta
            with RegistroP100New do
            begin
               DT_INI := dataInicial;
               DT_FIM := dataFinal;
               VL_REC_TOT_EST := 0;
               COD_ATIV_ECON := '';
               COD_ATIV_ECON := '';
               VL_REC_ATIV_ESTAB := 0;
               VL_EXC := 0;
               VL_BC_CONT := 0;
               ALIQ_CONT := 0;
               VL_CONT_APU := 0;
               COD_CTA := '';
               INFO_COMPL := ''
            end;

         end;
      end;
   end;

end;

procedure TFrmSped.btnFolderClick(Sender: tObject);
begin
   if (JvBrowseForFolderDialog1.Execute) then
      edtLocal.Text := JvBrowseForFolderDialog1.Directory;
end;

procedure TFrmSped.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     Action := CaFree;
end;

procedure TFrmSped.FormDestroy(Sender: TObject);
begin
     FrmSped := Nil;
end;

procedure TFrmSped.FormResize(Sender: TObject);
begin
  Height := 640;
  Width := 988;
end;

procedure TFrmSped.FormShow(Sender: tObject);
var
   sDiretorio:string;
begin
  edtMesInicial.Value := StrToInt(formatdatetime('mm',Date));
  edtAnoInicial.Value := StrToInt(formatdatetime('yyyy',Date));
  ForceDirectories(Pchar(dbInicio.SistemaLocal+'SPED\Contribuicoes'));
  ForceDirectories(Pchar(dbInicio.SistemaLocal+'SPED\Fiscal'));
  edtLocal.Text := dbInicio.SistemaLocal+'SPED';
end;

procedure TFrmSped.btnGerarClick(Sender: tObject);
begin
  try
   Screen.Cursor := crHourGlass;
   btnGerar.Enabled := False;
   mmoSpedContribuicoes.Clear;

   //Inicia Aguarde
   dataInicial := StrToDate('01/'+PrencheZeroEsquerda(edtMesInicial.Text,2)+'/'+edtAnoInicial.Text);
   dataFinal := UltimoDiaMes(StrToDate('01/'+PrencheZeroEsquerda(edtMesInicial.Text,2)+'/'+edtAnoInicial.Text),False);

   //Abrindo Tabelas
   //Empresa
   CdsEmpresa.Close;
   CdsEmpresa.CommandText := 'SELECT * FROM VW_SPED_EMPRESA WHERE EMPRESA = '+QuotedStr(dbInicio.Empresa.EMP_CODIGO);
   CdsEmpresa.Open;
   if (CdsEmpresa.IsEmpty) then
      begin
         uteis.erro  ('Não foi localizada a empresa para gerar o sped');
         Exit;
      end;
   //Contador
   CdsContator.Close;
   CdsContator.CommandText := 'SELECT * FROM VW_SPED_CONTADOR WHERE EMPRESA = '+QuotedStr(dbInicio.Empresa.EMP_CODIGO);
   CdsContator.Open;
   if (CdsContator.IsEmpty) then
      begin
         uteis.erro  ('Não foi localizada o contador para gerar o sped');
         Exit;
      end
   else
      begin
         if (CdsContator.FieldByName('NOME').AsString = '') then
            begin
               uteis.erro  ('Verifique as informações do contador para gerar o sped');
               Exit;
            end;
      end;
   //Participantes
   BuscaParticipante;
   //Unidade de Medida
   CdsUnidadeMedida.Close;
   CdsUnidadeMedida.CommandText := 'SELECT PRD_UNISIGLA AS UNIDADE_SIGLA, PRD_UNIDESCRI AS UNIDADE_DESCRICAO, ''N'' as USADO FROM PRD_UNIDADE';
   CdsUnidadeMedida.Open;
    //NaturezaOperacao
   CdsNaturezaOperacao.Close;
   CdsNaturezaOperacao.CommandText :=   'SELECT  OPE_CODIGO, OPE_DESCRI,  ''N'' AS USADO FROM OPE0000 t1 ';
   CdsNaturezaOperacao.Open;
   //Produtos e Serviços
   BuscaItens;
   //Notas Fiscais
   CdsNotasFiscais.Close;
   CdsNotasFiscais.CommandText := 'SELECT * FROM VW_SPED_NOTAS_FISCAIS where VALOR_PIS > 0 and VALOR_COFINS > 0 and  EMPRESA = '+QuotedStr(dbInicio.Empresa.EMP_CODIGO)+' AND ((TIPO_NOTA = ''E'' and DATA_ENTRADA_SAIDA BETWEEN '
                                                   +QuotedStr(DataAmericana(DateToStr(dataInicial)))+' AND '+QuotedStr(DataAmericana(DateToStr(dataFinal)))+') or (TIPO_NOTA = ''S'' and DATA_EMISSAO BETWEEN '
                                                   +QuotedStr(DataAmericana(DateToStr(dataInicial)))+' AND '+QuotedStr(DataAmericana(DateToStr(dataFinal)))+'))';
   CdsNotasFiscais.Open;


   //Atribuindo Informações Basicas

   //Tipo de Escrituracao
   case (cbbFinalidade.ItemIndex) of
      0: xTipoEscrituracao := tpEscrOriginal;
      1: xTipoEscrituracao := tpEscrRetificadora;
   end;

   //Atividade Empresa
   if (CdsEmpresa.FieldByName('INDICADOR_ATIVIDADE').AsString = '0') then
      xIndicadorAtividadeEmpresa := indAtivIndustrial
   else
   if (CdsEmpresa.FieldByName('INDICADOR_ATIVIDADE').AsString = '1') then
      xIndicadorAtividadeEmpresa := indAtivPrestadorServico
   else
   if (CdsEmpresa.FieldByName('INDICADOR_ATIVIDADE').AsString = '2') then
      xIndicadorAtividadeEmpresa := indAtivComercio
   else
   if (CdsEmpresa.FieldByName('INDICADOR_ATIVIDADE').AsString = '3') then
      xIndicadorAtividadeEmpresa := indAtivoFincanceira
   else
   if (CdsEmpresa.FieldByName('INDICADOR_ATIVIDADE').AsString = '4') then
      xIndicadorAtividadeEmpresa := indAtivoImobiliaria
   else
   if (CdsEmpresa.FieldByName('INDICADOR_ATIVIDADE').AsString = '4') then
      xIndicadorAtividadeEmpresa := indAtivoOutros
   else
      begin
         uteis.erro  ('Indicador de Atividade não Informado');
         Exit;
      end;

   //Indicador Tributaria

   if (CdsEmpresa.FieldByName('EMP_COD_INC_TRIBUTARIA').AsString = '1') then
      xIndicadorIncidenciaTrib := codEscrOpIncNaoCumulativo
   else
   if (CdsEmpresa.FieldByName('EMP_COD_INC_TRIBUTARIA').AsString = '2') then
      xIndicadorIncidenciaTrib := codEscrOpIncCumulativo
   else
   if (CdsEmpresa.FieldByName('EMP_COD_INC_TRIBUTARIA').AsString = '3') then
      xIndicadorIncidenciaTrib := codEscrOpIncAmbos
   else
      begin
         uteis.erro  ('Indicador Tributário não Informado');
         Exit;
      end;

   //Indicador de Metodo de Apropriação
   if (CdsEmpresa.FieldByName('EMP_COD_IND_APROP_CREDITO').AsString = '1') then
      xIndicadorMetodoApropriacao := indMetodoApropriacaoDireta
   else
   if (CdsEmpresa.FieldByName('EMP_COD_IND_APROP_CREDITO').AsString = '2') then
      xIndicadorMetodoApropriacao := indMetodoDeRateioProporcional
   else
      begin
         uteis.erro  ('Indicador Metodo de Apropriação de Crédito não Informado');
         Exit;
      end;

   //Indicador de Tipo de Contribuição
   if (CdsEmpresa.FieldByName('EMP_COD_IND_TIPO_APURADA').AsString = '1') then
      xIndicadorTipoContribuicao := codIndTipoConExclAliqBasica
   else
   if (CdsEmpresa.FieldByName('EMP_COD_IND_TIPO_APURADA').AsString = '2') then
      xIndicadorTipoContribuicao := codIndTipoAliqEspecificas
   else
      begin
         uteis.erro  ('Indicador de Tipo de Contribuição não Informado');
         Exit;
      end;

   //Indicador de Regime
   if (CdsEmpresa.FieldByName('EMP_COD_IND_REGIME').AsString = '1') then
      xIndicadorRegimeCumulativo := codRegimeCaixa
   else
   if (CdsEmpresa.FieldByName('EMP_COD_IND_REGIME').AsString = '2') then
      xIndicadorRegimeCumulativo := codRegimeCompetEscritConsolidada
   else
   if (CdsEmpresa.FieldByName('EMP_COD_IND_REGIME').AsString = '9') then
      xIndicadorRegimeCumulativo := codRegimeCompetEscritDetalhada
   else
      begin
         uteis.erro  ('Indicador do Regime de Competência não Informado');
         Exit;
      end;

   //Indicador de Escrituracao
   if (CdsEmpresa.FieldByName('EMP_COD_IND_ESCRITURACAO').AsString = '1') then
      xIndEscrituracao := IndEscriConsolidado
   else
   if (CdsEmpresa.FieldByName('EMP_COD_IND_ESCRITURACAO').AsString = '2') then
      xIndEscrituracao := IndEscriIndividualizado
   else
      xIndEscrituracao := IndEscriConsolidado;
   GeraContribuicoes;
   //Termina Aguarde
   uteis.aviso(Pchar('Arquivo gerado com sucesso!'+#13#10+
               'Pasta:'+edtLocal.Text));

  finally
    Screen.Cursor := crDefault;
    btnGerar.Enabled := True;
  end;
end;

procedure TFrmSped.BuscaItens;
var sql: string;
begin

  //Produtos e Serviços
  {EXCLUIR PRODUTO PROVISÓRIO}
   if DBInicio.Empresa.sReferenciaProvisoriaOrcamento <> '' then
     sql := 'and t1.prd_refer <> '+ QuotedStr(DBInicio.Empresa.sReferenciaProvisoriaOrcamento);
   CdsProdutosServicos.Close;
   SQL:=
    'SELECT T1.PRD_CODIGO AS CODIGO_ITEM,                                                                                                              '+
    'T1.PRD_REFER,                                                                                                                                     '+
    'T1.PRD_DESCRI AS DESCRICAO_ITEM,                                                                                                                  '+
    'T1.PRD_CODBARRA AS CODIGO_BARRAS,                                                                                                                 '+
    'T1.PRD_UND AS UNIDADE_MEDIDA,                                                                                                                     '+
    'T1.SPED_TIPCODIGO AS TIPO,                                                                                                                        '+
    'T1.IPI_CODIGO AS CODIGO_NCM,                                                                                                                      '+
    'T1.SPED_GENCODIGO AS CODIGO_GENERO,                                                                                                               '+
    'T2.SRV_CODIGO AS CODIGO_SERVICO,                                                                                                                  '+
    ' (Select cast(count(*) as integer) as conta from    ftc_it01 FTC where FTC.prd_refer = T1.prd_refer) as Ficha,                                    '+
    'case                                                                                                                                              '+
    '    when (T1.PRD_ALIQICM > 0) then                                                                                                                '+
    '        T1.PRD_ALIQICM                                                                                                                            '+
    '    else                                                                                                                                          '+
    '        (SELECT T3.ICM_ALIQ FROM ICM0000 T3 WHERE T3.ICM_DESTINO = (SELECT T4.EMP_UF FROM EMP0000 T4 WHERE T4.EMP_CODIGO = T1.EMP_CODIGO) '+
           ConcatSe (' and ',dbInicio.ExclusivoSql('ICMS'))+')        '+
    'END AS ALIQUOTA_ICMS,                                                                                                                             '+
    'CEST_COD,                                                                                                                                         '+
    ' ''N'' AS USADO '+
    'FROM                                                                                                                                              '+
    'PRD0000 T1 LEFT JOIN SRV0000 T2 ON (T2.SRV_REGISTRO = T1.SRV_REGISTRO)                                                                            '+
     ConcatSe( 'WHERE   t1.' , dbinicio.ExclusivoSql('PRODUTOS')) ;
    CdsProdutosServicos.CommandText := SQL;
    CdsProdutosServicos.Open;
end;

procedure TFrmSped.BuscaParticipante;
begin

 { participantes são cliente e fornecedores}
   CdsParticipantes.Close;
   CdsParticipantes.CommandText :=
    //CLIENTE
    'SELECT  T1.EMP_CODIGO empresa,                                                                           '+
    'CAST(''C''||T1.CLI_CODIGO AS VARCHAR(10)) AS CODIGO_SISTEMA,                                                 '+
    'CAST(T1.CLI_RAZAO AS VARCHAR(60)) as NOME,                                                                     '+
    'CAST((SELECT T2.PAI_CODIGO FROM PAIS0000 T2 WHERE T2.PAI_CODIGO = T1.PAI_CODIGO) AS INTEGER) CODIGO_PAIS,   '+
    'T1.CLI_CGC CNPJ_CPF,                                                                                        '+
    'CAST(T1.CLI_INSC AS VARCHAR(20)) AS INSCRICAO_ESTADUAL,                                                              '+
    '(SELECT T2.CID_COD_IBGE FROM CID0000 T2 WHERE T2.CID_CODIGO = T1.CID_CODIGO) CODIGO_MUNICIPIO_IBGE,         '+
    'T1.CLI_SUFRAMA AS SUFRAMA,                                                                                  '+
    'CAST(T1.CLI_ENDERE AS VARCHAR(50)) AS ENDERECO,                                                             '+
    'CAST(T1.CLI_BAIRRO AS VARCHAR(30)) AS BAIRRO,                                                               '+
    ' ''N'' AS USADO                                                                                             '+
    'FROM                                                                                                        '+
    'CLI0000 T1                                                                                                  '+
    ConcatSe( ' WHERE ', DBInicio.ExclusivoSql('CLIENTES'))+
    'UNION all                                                                                                   '+
    //FORNECEDOR
    'SELECT  T1.EMP_CODIGO,                                                                                      '+
    'CAST(''F''||T1.FOR_CODIGO AS VARCHAR(10)),                                                                  '+
    'CAST(T1.FOR_RAZAO AS VARCHAR(60)),                                                                          '+
    '1058 codigo_pais,                                                                                           '+
    'T1.FOR_CGC,                                                                                                 '+
    'CAST(T1.FOR_INSC AS VARCHAR(20)),                                                                           '+
    '(SELECT T2.CID_COD_IBGE FROM CID0000 T2 WHERE T2.CID_CODIGO = T1.CID_CODIGO),                               '+
    'T1.FOR_SUFRAMA,                                                                                             '+
    'CAST(T1.FOR_ENDERE AS VARCHAR(50)),                                                                         '+
    'CAST(T1.FOR_BAIRRO AS VARCHAR(30)),                                                                         '+
     ' ''N'' AS USADO '+
    'FROM                                                                                                        '+
    'FOR0000 T1                                                                                                  '+
     ConcatSe( ' WHERE ', DBInicio.ExclusivoSql('FORNECEDORES'));
   CdsParticipantes.Open;
end;

procedure TFrmSped.BuscaPlanoContas;
begin
  cdsPlanoContabil.Close;
  cdsPlanoContabil.CommandText := ' SELECT CCT_CODIGO, CCT_DESCRI,CCT_NIVEL, DT_ALT FROM CCT_0000 c  ' ;
  cdsPlanoContabil.Open;
end;

function TFrmSped.ContaCaracteres(Texto: string; Caracter: Char): Integer;
var
  I: Integer;
begin
  Result := 0;
  for I := 1 to Length(Texto) do
    if Texto[I] = Caracter then
      Inc(Result);

end;

procedure TFrmSped.GeraContribuicoes;
var
   iSequencia:Integer;

   procedure PreparaArquivo;
   begin
      //Adiciona Informações no Componente
      ACBrSPEDPisCofins1.Arquivo := 'SpedContribuicoes'+edtMesInicial.Text+edtAnoInicial.Text;
      ACBrSPEDPisCofins1.Path := edtLocal.Text+'\Contribuicoes';
      //Verifica se o arquivo existe se existir deleta
      if FileExists( ACBrSPEDPisCofins1.Path + ACBrSPEDPisCofins1.Arquivo ) then
         DeleteFile( ACBrSPEDPisCofins1.Path + ACBrSPEDPisCofins1.Arquivo );
      //Preparação do Componente
      with ACBrSPEDPisCofins1 do
       begin
          DT_INI := StrToDate('01/'+PrencheZeroEsquerda(edtMesInicial.Text,2)+'/'+edtAnoInicial.Text);
          DT_FIN := UltimoDiaMes(StrToDate('01/'+PrencheZeroEsquerda(edtMesInicial.Text,2)+'/'+edtAnoInicial.Text),False);
          IniciaGeracao;
       end;
      with ACBrSPEDPisCofins1 do
       begin
          LinhasBuffer := StrToIntDef( '1000', 0 );
       end;

   end;
begin
   //Inicializa Informações Necessárias do componente
   PreparaArquivo;

   BlocoA;
   BlocoC;
   BlocoD;
   BlocoM;
   BlocoF;
   BlocoP;
   Bloco1;
   Bloco0;
   ACBrSPEDPisCofins1.WriteBloco_0;
   ACBrSPEDPisCofins1.WriteBloco_A(True);
   ACBrSPEDPisCofins1.WriteBloco_C(True);
   ACBrSPEDPisCofins1.WriteBloco_D;
   ACBrSPEDPisCofins1.WriteBloco_F;
   ACBrSPEDPisCofins1.WriteBloco_M;
   ACBrSPEDPisCofins1.WriteBloco_P;
   ACBrSPEDPisCofins1.WriteBloco_1;
   ACBrSPEDPisCofins1.WriteBloco_9;
   // Método que gera o arquivo TXT.
   ACBrSPEDPisCofins1.SaveFileTXT ;
   // Carrega o arquivo TXT no memo.
   LoadToMemoContribuicao;
   GravarArquivo  ;
end;


procedure TFrmSped.GravarArquivo;
var ano, mes : word;

begin
  ano :=  strtoint(edtAnoInicial.Text);
  mes := StrToInt(edtMesInicial.Text);

  cdsArquivo.Close;
  qArquivo.CommandText := ' select emp_codigo, ano, mes, arq FROM sped_arquivos_cont '+
                            ' where ano = '+IntToStr(ano) + ' and mes = '+IntToStr(mes) +' and emp_codigo = '+ QuotedStr(dbinicio.Empresa.EMP_CODIGO);
  cdsArquivo.Open;
  if not cdsArquivo.IsEmpty then
    cdsArquivo.Edit
  else
    cdsArquivo.Insert;
  cdsArquivoano.AsInteger := ano;
  cdsArquivomes.AsInteger := mes;
  cdsArquivoemp_codigo.AsString := DBInicio.Empresa.EMP_CODIGO;
  cdsArquivoarq.AsString :=  UTF8Encode(mmoSpedContribuicoes.Lines.Text);

  cdsArquivo.Post;
  cdsArquivo.ApplyUpdates(0);
end;

procedure TFrmSped.LoadToMemoContribuicao;
begin
   mmoSpedContribuicoes.Lines.Clear;
   if FileExists( ACBrSPEDPisCofins1.Path + ACBrSPEDPisCofins1.Arquivo ) then
      mmoSpedContribuicoes.Lines.LoadFromFile(ACBrSPEDPisCofins1.Path + ACBrSPEDPisCofins1.Arquivo);
end;



end.
