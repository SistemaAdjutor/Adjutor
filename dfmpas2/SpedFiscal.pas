unit SpedFiscal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Buttons, JvBaseDlg, JvBrowseFolder, Mask,    system.StrUtils,
  JvExMask, JvSpin, ACBrSpedPisCofins, ACBrEPCBlocos, SqlExpr,SqlClientDataSet, Provider,
  DB, DBClient, DBLocal, DBLocalS, jpeg, ExtCtrls, ACBrSpedFiscal, ACBrEFDBlocos,
  JvExControls, JvAnimatedImage, JvGIFCtrl, Data.DBXFirebird, SimpleDS, ACBrBase, RxToolEdit,BaseDbForm, Data.FMTBcd, ACBrEnterTab,
  ACBrCalculadora, Vcl.DBCtrls, ACBrEFDBloco_K_Class, ACBrEFDBloco_K, System.DateUtils,  System.Threading,
  System.Generics.Collections, SgDbSeachComboUnit;

type
  TFrmSpedFiscal = class(TfrmBaseDB)
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
    ACBrSPEDFiscal1: TACBrSPEDFiscal;
    Cds0015: TSQLClientDataSet;
    cbbMotivoBlocoH: TComboBox;
    Label3: TLabel;
    CdsEstoque: TSQLClientDataSet;
    Cdsc190: TSQLClientDataSet;
    chkBlocoC: TCheckBox;
    chkBlocoD: TCheckBox;
    chkBlocoE: TCheckBox;
    chkBlocoG: TCheckBox;
    chkBlocoH: TCheckBox;
    PanelAguarde: TPanel;
    JvGIFAnimator2: TJvGIFAnimator;
    Panel2: TPanel;
    cbbVersao: TComboBox;
    CdsEstoqueTerceiro: TClientDataSet;
    cdsAlterParticipante: TSqlClientDataSet;
    cdsAlterItem: TSqlClientDataSet;
    cdsAlterParticipanteregistro: TIntegerField;
    cdsAlterParticipanteTIPO: TStringField;
    cdsAlterParticipanteCODIGO: TStringField;
    cdsAlterParticipanteDT_ALT: TDateField;
    cdsAlterParticipanteCAMPO: TStringField;
    cdsAlterParticipanteCONT_ANT: TStringField;
    cdsAlterParticipanteSPED_DTENVIADO: TDateField;
    cdsAtivoImobilizado: TSqlClientDataSet;
    cdsPlanoContabil: TSqlClientDataSet;
    cdsCentroCusto: TSqlClientDataSet;
    chkBlocoK: TCheckBox;
    cdsCTE: TSqlClientDataSet;
    PageControl1: TPageControl;
    tsarquivo: TTabSheet;
    tsBloco1: TTabSheet;
    mmoSpedFiscal: TMemo;
    cdsperguntas1010: TSqlClientDataSet;
    RGINDEXP: TDBRadioGroup;
    cdsperguntas1010IND_EXP: TStringField;
    cdsperguntas1010IND_CCRF: TStringField;
    cdsperguntas1010IND_COMB: TStringField;
    cdsperguntas1010IND_USINA: TStringField;
    cdsperguntas1010IND_VA: TStringField;
    cdsperguntas1010IND_EE: TStringField;
    cdsperguntas1010IND_CART: TStringField;
    cdsperguntas1010IND_FORM: TStringField;
    cdsperguntas1010IND_GIAF1: TStringField;
    cdsperguntas1010IND_GIAF3: TStringField;
    cdsperguntas1010IND_GIAF4: TStringField;
    dsPerguntas1010: TDataSource;
    DBRadioGroup1: TDBRadioGroup;
    DBRadioGroup2: TDBRadioGroup;
    DBRadioGroup3: TDBRadioGroup;
    DBRadioGroup4: TDBRadioGroup;
    DBRadioGroup5: TDBRadioGroup;
    DBRadioGroup6: TDBRadioGroup;
    DBRadioGroup7: TDBRadioGroup;
    DBRadioGroup8: TDBRadioGroup;
    cdsperguntas1010IND_AER: TStringField;
    DBRadioGroup9: TDBRadioGroup;
    DBRadioGroup10: TDBRadioGroup;
    DBRadioGroup11: TDBRadioGroup;
    ChkBloco1: TCheckBox;
    cdsUltEntrada: TSqlClientDataSet;
    tsErros: TTabSheet;
    Merros: TMemo;
    CdsEstoqueTerceiroPRD_CODIGO: TStringField;
    CdsEstoqueTerceiroamx_terceiros: TStringField;
    CdsEstoqueTerceiroamx_foraterceiros: TStringField;
    CdsEstoqueTerceiroAMX_CODIGO: TStringField;
    CdsEstoqueTerceiroAMX_CNPJ_PART: TStringField;
    CdsEstoqueTerceiroKAR_SALDO: TFMTBCDField;
    CdsEstoqueTerceiroprd_und: TStringField;
    CdsEstoqueTerceiroPRD_PMEDIO: TFMTBCDField;
    CdsEstoqueTerceiroPRD_DESCRI: TStringField;
    CdsEstoqueTerceiroSPED_TIPCODIGO: TStringField;
    CdsEstoqueTerceiroCOD_PART: TStringField;
    cdsAlterPartEnviados: TClientDataSet;
    cdsAlterPartEnviadosregistro: TIntegerField;
    cdsAlterPartEnviadostipo: TStringField;
    cdsAlterPrdEnviados: TClientDataSet;
    IntegerField1: TIntegerField;
    cdsApuracao: TClientDataSet;
    cdsApuracaoano: TIntegerField;
    cdsApuracaomes: TIntegerField;
    cdsApuracaosaldo_apurado: TFMTBCDField;
    cdsApuracaoDEDUCOES: TFMTBCDField;
    cdsApuracaoICMS_RECOLHER: TFMTBCDField;
    cdsApuracaoSALDO_TRANSPORTAR: TFMTBCDField;
    cdsApuracaoSt: TClientDataSet;
    cdsApuracaoStano: TIntegerField;
    cdsApuracaoStmes: TIntegerField;
    cdsApuracaoStuf: TStringField;
    cdsApuracaoStsaldo_devedor_ant_deducoes: TFMTBCDField;
    cdsApuracaoStDEDUCOES_st: TFMTBCDField;
    cdsApuracaoSticms_recolher_st: TFMTBCDField;
    cdsApuracaoStsaldo_transportar_st: TFMTBCDField;
    cdsApuracaoIPI: TClientDataSet;
    cdsApuracaoIPIano: TIntegerField;
    cdsApuracaoIPImes: TIntegerField;
    cdsApuracaoIPIsaldo_transportar: TFMTBCDField;
    cdsApuracaoIPIsaldo_recolher: TFMTBCDField;
    cdsArquivo: TClientDataSet;
    dspArquivo: TDataSetProvider;
    qArquivo: TSQLQuery;
    cdsArquivomes: TIntegerField;
    cdsArquivoarq: TBlobField;
    cdsArquivoemp_codigo: TStringField;
    Button1: TButton;
    cdsArquivoano: TIntegerField;
    cdsICMS_ST_Recolher: TClientDataSet;
    cdsICMS_ST_RecolherUF: TStringField;
    cdsICMS_ST_RecolherDataVencimento: TDateField;
    cdsICMS_ST_RecolherValor_recolher: TFMTBCDField;
    cdsICMS_recolher: TClientDataSet;
    cdsICMS_recolherDataVencimento: TDateField;
    cdsICMS_recolherValor_recolher: TFMTBCDField;
    cdsICMS_recolhertipo: TStringField;
    cdsICMS_recolherUF: TStringField;
    btnK280: TButton;
    cdsK280: TSqlClientDataSet;
    chk280: TCheckBox;
    pFiltroProduto: TPanel;
    Label4: TLabel;
    EdtTipo: TEdit;
    cbTipo: TSgDbSearchCombo;
    Label6: TLabel;
    EdtGrupo: TEdit;
    CbGrupo: TSgDbSearchCombo;
    Label5: TLabel;
    EdtLinha: TEdit;
    CBLinha: TSgDbSearchCombo;
    Label7: TLabel;
    cbAlmoxarifado: TSgDbSearchCombo;
    edAlmoxarifado: TEdit;
    Label8: TLabel;
    SpeedButton1: TSpeedButton;
    btnConfirmarMargem: TButton;
    qTipoProduto: TSQLQuery;
    qLinha: TSQLQuery;
    qGrupo: TSQLQuery;
    qAlmoxa: TSQLQuery;
    sbBlocoK: TSpeedButton;
    pnBlocoK: TPanel;
    Label12: TLabel;
    Label13: TLabel;
    cbAlmoxarifadoK: TSgDbSearchCombo;
    edAlmoxarifadoK: TEdit;
    Button2: TButton;
    Button3: TButton;
    CdsEstoqueTerceiroPRD_REFER: TStringField;
    procedure btnFolderClick(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure btnGerarClick(Sender: tObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure ChkBloco1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btnK280Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure chkBlocoKClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure btnConfirmarMargemClick(Sender: TObject);
    procedure EdtLinhaExit(Sender: TObject);
    procedure EdtGrupoExit(Sender: TObject);
    procedure EdtTipoExit(Sender: TObject);
    procedure edAlmoxarifadoExit(Sender: TObject);
    procedure cbTipoSelect(Sender: TObject);
    procedure CbGrupoSelect(Sender: TObject);
    procedure CBLinhaSelect(Sender: TObject);
    procedure cbAlmoxarifadoSelect(Sender: TObject);
    procedure sbBlocoKClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure cbAlmoxarifadoKSelect(Sender: TObject);
    procedure edAlmoxarifadoKExit(Sender: TObject);
  private
    { Private declarations }
  //  dataInicial, dataFinal:TDate;
    fDt_Ini, fDt_Fim : TDate;
    xTipoEscrituracao:TACBrCodFinalidade;
    xIndicadorAtividadeEmpresa:TACBrAtividade;
    xIndicadorIncidenciaTrib:TACBrCodIncTrib;
    xIndicadorMetodoApropriacao:TACBrIndAproCred;
    xIndicadorTipoContribuicao:TACBrCodTipoCont;
    xIndicadorRegimeCumulativo:TACBrIndRegCum;
    xIndEscrituracao:TACBrIndEscrituracao;
    totdebito, totcredito : Currency;
    registro0450: array of array of string;
    procedure Adicionar200(const codigo:String);
    function Adicionar190(const unidade :string): boolean;
    procedure Adicionar150(const codigo : string);
    procedure Adicionar400(const codigo : string);
    procedure Adicionar300(const codigo : string);
    procedure GeraFiscal;
    procedure GravarAlteracoesParticipantesEnviados;
    procedure GravarAlteracoesitemEnviados;
    procedure GravarApuracaoICMS;
    procedure GravarApuracaoICMS_st;
    procedure GravarApuracaoIPI;
    procedure GravarArquivo;
    procedure BuscaParticipantes;
    procedure BuscaAlteracoesParticipantes (const codigo :string);
    procedure BuscaAlteracoesItem(const codigo : string) ;
    procedure BuscaItens;
    procedure LoadToMemoFiscal;
    procedure BuscaNaturezaOperacao;
    procedure BuscaEmpresa;
    procedure BuscaContador;
    procedure BuscaUnidadeMedida;
    procedure BuscaBensCompAtivoImobilizado;
    procedure BuscaPlanoContabil;
    procedure BuscaCentroCusto;
    procedure BuscaNotasFiscais;
    procedure ValidarSped;
    function ContaCaracteres(Texto: string; Caracter: Char): Integer;
    procedure CorrecaoEstoqueK280;
    procedure EstoqueTerceirok200;
    procedure Inventariok200;
    procedure Bloco0;
    procedure BlocoC;
    procedure BlocoD;
    procedure BlocoE;
    procedure BlocoK;
    procedure BlocoH;
  public
    property dataInicial : TDate read fDt_Ini write fdt_ini ;
    property dataFinal : TDate read fDt_Fim write fDt_Fim ;
  end;

var
  FrmSpedFiscal: TFrmSpedFiscal;


implementation

uses
  Menus, Men0001, UFuncoes, DataCad, {uProcedimentos,} ACBrEFDBloco_0,
  ACBrEFDBloco_0_Class, ACBrEFDBloco_D, ACBrEFDBloco_D_Class,
  ACBrEFDBloco_E_Class, ACBrEFDBloco_G_Class, ACBrEFDBloco_H_Class,
  ACBrEFDBloco_H, ACBrEFDBloco_C_Class, ACBrEFDBloco_C, uteis, iniciodb, RWFunc, acbrutil, uk280;

{$R *.dfm}

procedure TFrmSpedFiscal.btnConfirmarMargemClick(Sender: TObject);
begin
  inherited;
  if BuscaUmDadoSqlAsString('SELECT AMX_FISICO FROM ALMOX0000 WHERE AMX_CODIGO = ' + QuotedStr(cbAlmoxarifado.IDRetorno)) <> 'S'  then
  begin
    uteis.Aviso('Este não é um almoxarifado Físico. Não irá gerar o SPED Corretamente');
    abort;
  end;
  AnimateWindow(pFiltroProduto.Handle, 500, AW_HOR_NEGATIVE or  AW_HIDE);
  pFiltroProduto.Visible := false;
end;

procedure TFrmSpedFiscal.btnFolderClick(Sender: tObject);
begin
   if (JvBrowseForFolderDialog1.Execute) then
      edtLocal.Text := JvBrowseForFolderDialog1.Directory;
end;

procedure TFrmSpedFiscal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     Action := CaFree;
end;

procedure TFrmSpedFiscal.FormCreate(Sender: TObject);
begin
  inherited;
  chk280.Checked := False;
end;

procedure TFrmSpedFiscal.FormDestroy(Sender: TObject);
begin
     FrmSpedFiscal := Nil;
end;

procedure TFrmSpedFiscal.FormResize(Sender: TObject);
begin
     Height := 602;
     Width := 964;
end;

procedure TFrmSpedFiscal.FormShow(Sender: tObject);
var
   sDiretorio:string;
begin
  cbbVersao.Text := 'V112';
  edtMesInicial.Value := StrToInt(formatdatetime('mm',Date));
  edtAnoInicial.Value := StrToInt(formatdatetime('yyyy',Date));
  ForceDirectories(Pchar(dbInicio.SistemaLocal+'SPED\Contribuicoes'));
  ForceDirectories(Pchar(dbInicio.SistemaLocal+'SPED\Fiscal'));
  edtLocal.Text := dbInicio.SistemaLocal+'SPED';
  tsBloco1.TabVisible := ChkBloco1.Checked;
  cdsperguntas1010.CommandText := 'select * from sped_bloco1';
  cdsperguntas1010.Open;
  CdsEstoqueTerceiro.CreateDataSet;
  cdsAlterPartEnviados.CreateDataSet;
  cdsAlterPrdEnviados.CreateDataSet;
  cdsApuracao.CreateDataSet;
  cdsApuracaoSt.CreateDataSet;
  cdsapuracaoIPI.CreateDataSet;
  cdsICMS_ST_Recolher.CreateDataSet;
  cdsICMS_Recolher.CreateDataSet;
  if DBInicio.GetParametroSistema('PMT_MULTIPLAS_IE') <> 'S' then
    sbBlocoK.Visible := False;

end;

procedure TFrmSpedFiscal.btnGerarClick(Sender: tObject);
var campo :TStringList;
begin
  try
   Screen.Cursor := crHourGlass;
   CdsEstoqueTerceiro.EmptyDataSet;
   cdsAlterPartEnviados.EmptyDataSet;
   cdsAlterPrdEnviados.EmptyDataSet;
   cdsICMS_ST_Recolher.EmptyDataSet;
   cdsICMS_recolher.EmptyDataSet;
   cdsApuracao.EmptyDataSet;
   cdsApuracaoSt.EmptyDataSet;
   cdsapuracaoIPI.EmptyDataSet;

   btnGerar.Enabled := False;
   mmoSpedFiscal.Clear;
   PanelAguarde.Top := (Self.Height div 2) - (PanelAguarde.Height div 2);
   PanelAguarde.Left := (Self.Width div 2) - (PanelAguarde.Width div 2);
   PanelAguarde.Visible := True;
   JvGIFAnimator2.Animate := True;
   Merros.Clear;
   Self.Update;
   PanelAguarde.Update;
   Application.ProcessMessages;

     //Inicia Aguarde

     dataInicial := StrToDate('01/'+PrencheZeroEsquerda(edtMesInicial.Text,2)+'/'+edtAnoInicial.Text);
     dataFinal := UltimoDiaMes(StrToDate('01/'+PrencheZeroEsquerda(edtMesInicial.Text,2)+'/'+edtAnoInicial.Text),False);
     BuscaEmpresa;
     if (CdsEmpresa.IsEmpty) then
        begin
           uteis.erro  ('Não foi localizada a empresa para gerar o sped');
           Exit;
        end;
    BuscaContador;

    BuscaParticipantes;
    ValidarSped;
     //validações
//     if not CdsParticipantes.IsEmpty then
//     begin
//      CdsParticipantes.First;
//      while not CdsParticipantes.Eof do
//      begin
//        if (CdsParticipantes.FieldByName('nome').AsString = '' )
//        or (CdsParticipantes.FieldByName('CODIGO_PAIS').AsInteger = 0)
//        or (CdsParticipantes.FieldByName('CODIGO_PAIS').IsNull)
//        or (CdsParticipantes.FieldByName('ENDERECO').AsString ='') then
//        begin
//           uteis.erro  ('Verifique as informações dos participantes obrigatórias '+#13+#10+
//           ' como nome (ou razão social), endereço e país');
//           exit;
//
//        end;
//        CdsParticipantes.Next;
//      end;
//     end;

     //Inscrição da ST por estado
     Cds0015.Close;
     Cds0015.CommandText := 'SELECT * FROM VW_SPED_INSCRICAO_ST WHERE EMPRESA = '+QuotedStr(dbInicio.Empresa.EMP_CODIGO);
     Cds0015.Open;
     if not Cds0015.IsEmpty then
     begin
      cds0015.First;
      while not Cds0015.Eof do
      begin
        if Cds0015.fieldbyname('UNIDADE').AsString = '' then
        begin
           uteis.erro  ('Verifique a unidade federativa obrigatória no contribuinte substituto '+#13+#10+
                        ' ou responsável pelo icms destino ') ;

           Exit;
        end;


       Cds0015.Next;
      end;
     end;
    BuscaUnidadeMedida;

     buscaItens;
     //BuscaBensCompAtivoImobilizado; // NÃO PRECISA

     BuscaNaturezaOperacao;
     BuscaPlanoContabil;
     BuscaCentroCusto;

     //Notas Fiscais
     CdsNotasFiscais.Close;
     CdsNotasFiscais.CommandText := 'SELECT * FROM VW_SPED_NOTAS_FISCAIS where EMPRESA = '+QuotedStr(dbInicio.Empresa.EMP_CODIGO)+' AND ((TIPO_NOTA = ''E'' and DATA_ENTRADA_SAIDA BETWEEN '
                                                     +QuotedStr(DataAmericana(DateToStr(dataInicial)))+' AND '+QuotedStr(DataAmericana(DateToStr(dataFinal)))+') or (TIPO_NOTA = ''S'' and DATA_EMISSAO BETWEEN '
                                                     +QuotedStr(DataAmericana(DateToStr(dataInicial)))+' AND '+QuotedStr(DataAmericana(DateToStr(dataFinal)))+'))';
     if DBInicio.IsDesenvolvimento then
      CopyToClipBoard(CdsNotasFiscais.CommandText);

     CdsNotasFiscais.Open;

     if chkBlocoH.Checked OR chkBlocoK.Checked then // tratam do estoque
     begin
       CdsEstoque.Close;
       CdsEstoque.CommandText := 'SELECT DISTINCT '+
                                 '    T1.prd_codigo, T1.prd_refer, '+
                                 '    T1.prd_und, '+
                                   IIF (cbAlmoxarifadoK.idRetorno = '',
                                     ' (select SALDO FROM pCd_kardex_saldo_fisico('+QuotedStr(dbInicio.Empresa.EMP_CODIGO)+',T1.prd_codigo,'''+DataAmericana(DateToStr(UltimoDiaMes(StrToDate('01/'+PrencheZeroEsquerda(edtMesInicial.Text,2)+'/'+edtAnoInicial.Text),False))) +' 23:59:59'') ) as SALDO, '
                                   ,
                                     ' (select SALDO FROM pCd_kardex_saldo_fisico_amx('+QuotedStr(dbInicio.Empresa.EMP_CODIGO)+',T1.prd_codigo,'''+DataAmericana(DateToStr(UltimoDiaMes(StrToDate('01/'+PrencheZeroEsquerda(edtMesInicial.Text,2)+'/'+edtAnoInicial.Text),False))) +' 23:59:59'','+ QuotedStr( edAlmoxarifadoK.Text) +'   ) ) as SALDO, '
                                   )  +
                                 '    T1.PRD_PMEDIO, '+
                                 '    T1.prd_descri, '+
                                 '    T1.SPED_TIPCODIGO   '+
                                 '   FROM '+
                                 ' prd0000 T1 '+
                                 iif((DBInicio.GetParametroSistema('PMT_MULTIPLAS_IE') = 'S'), ' join kardex k on (k.prd_codigo=t1.prd_codigo) ' , '' ) +
                                 iif((DBInicio.GetParametroSistema('PMT_MULTIPLAS_IE') = 'S'), ' join ALMOX0000 a on (a.amx_codigo=k.amx_codigo) ' , '' ) +
                                 ' WHERE T1.prd_status = ''A'''+
                                 iif((DBInicio.GetParametroSistema('PMT_MULTIPLAS_IE') = 'S'), ' AND a.amx_codigo = ' + QuotedStr(edAlmoxarifadoK.Text) , '' ) +
                                 ConcatSe(' and t1.', DBInicio.ExclusivoSql('PRODUTOS')) ;
       if DBInicio.IsDesenvolvimento then
         CopyToClipBoard(CdsEstoque.CommandText);
       CdsEstoque.Open;
       if BuscaUmDadoSqlAsInteger('Select cast(count(*) as integer) as conta from    ALMOX0000 WHERE AMX_TERCEIROS = ''S'' OR AMX_FORATERCEIROS = ''S'' ') > 0 then 
       begin
         CdsEstoque.First;
         while not CdsEstoque.Eof do
         begin
            OpenAux('SELECT distinct prd_refer, PRD_CODIGO,amx_terceiros,amx_foraterceiros, AMX_CODIGO, AMX_CNPJ_PART,'+// '' AS prd_und, 0.0 PRD_PMEDIO, '' prd_descri, '' SPED_TIPCODIGO,
                    '       (SELECT KAR_SALDO FROM KARDEX WHERE KAR_REGISTRO = REGISTRO)  AS SALDO       '+
                    ' from ( SELECT '+
                    '       MAX(coalesce(KA.kar_registro,0)) as REGISTRO,pr.prd_refer,ka.PRD_CODIGO,amx_terceiros,amx_foraterceiros, KA.AMX_CODIGO, al.AMX_CNPJ_PART '+
                    '       FROM kardex ka , ALMOX0000 al, PRD0000 pr                                                                                            '+
                    '  WHERE ka.amx_codigo = al.AMX_CODIGO AND ka.prd_codigo = pr.prd_codigo                                                                                          '+
                     ConcatSe(' and ka.', DBInicio.ExclusivoSql('ESTOQUES')) +
                    '   AND (amx_terceiros = ''S'' OR amx_foraterceiros = ''S'')  '+
                    '   AND KA.data_hora <= '+QuotedStr(DataAmericana(DateToStr(dataFinal)))+
                    '   AND ka.PRD_CODIGO = '+QuotedStr(CdsEstoque.FieldByName('prd_codigo').AsString) +
                    IIF(DBInicio.GetParametroSistema('PMT_MULTIPLAS_IE') = 'S' , ' AND ka.AMX_CODIGO = ' + QuotedStr(edAlmoxarifadoK.Text) , '') +
                    '  GROUP BY pr.prd_refer,ka.PRD_CODIGO,AMX_CODIGO, amx_terceiros,amx_foraterceiros,AMX_CNPJ_PART)');
            while not qAux.Eof do
            begin
              if qAux.FieldByName('SALDO').AsFloat >0 then
              begin
                CdsEstoqueTerceiro.Insert ;
                CdsEstoqueTerceiroPRD_CODIGO.AsString := qAux.FieldByName('PRD_CODIGO').AsString;
                CdsEstoqueTerceiroPRD_REFER.AsString := qAux.FieldByName('PRD_REFER').AsString;
//                Adicionar200(qAux.FieldByName('PRD_CODIGO').AsString);
                Adicionar200(qAux.FieldByName('PRD_REFER').AsString);
                CdsEstoqueTerceiroamx_terceiros.AsString := qAux.FieldByName('amx_terceiros').AsString;
                CdsEstoqueTerceiroamx_foraterceiros.AsString := qAux.FieldByName('amx_foraterceiros').AsString;
                CdsEstoqueTerceiroAMX_CODIGO.AsString := qAux.FieldByName('AMX_CODIGO').AsString;
                CdsEstoqueTerceiroAMX_CNPJ_PART.AsString := qAux.FieldByName('AMX_CNPJ_PART').AsString;
                if qAux.FieldByName('AMX_CNPJ_PART').AsString <> '' then
                begin
                  if CdsParticipantes.Locate('CNPJ_CPF',qAux.FieldByName('AMX_CNPJ_PART').AsString,[]) then
                  begin
                    CdsEstoqueTerceiroCOD_PART.AsString := CdsParticipantes.FieldByName('CODIGO_SISTEMA').AsString;
                    Adicionar150(CdsParticipantes.FieldByName('CODIGO_SISTEMA').AsString);
                  end;

                end;
                CdsEstoqueTerceiroprd_und.AsString := CdsEstoque.FieldByName('prd_und').AsString;
                CdsEstoqueTerceiroKAR_SALDO.AsFloat := qAux.FieldByName('SALDO').AsFloat;
                CdsEstoqueTerceiroPRD_PMEDIO.AsFloat := CdsEstoque.FieldByName('PRD_PMEDIO').AsFloat;
                CdsEstoqueTerceiroPRD_DESCRI.AsString := CdsEstoque.FieldByName('prd_descri').AsString;
                CdsEstoqueTerceiroSPED_TIPCODIGO.AsString := CdsEstoque.FieldByName('SPED_TIPCODIGO').AsString ;
                CdsEstoqueTerceiro.Post;
              end;
              qAux.Next;
            end;
            CdsEstoque.Next
         end;
       end;
     end;


     //Atribuindo Informações Basicas

     //Tipo de Escrituracao
     case (cbbFinalidade.ItemIndex) of
        0: xTipoEscrituracao := raOriginal;
        1: xTipoEscrituracao := raSubstituto;
     end;

     //Atividade Empresa
     if (CdsEmpresa.FieldByName('INDICADOR_ATIVIDADE').AsString = '0') then
        xIndicadorAtividadeEmpresa := atIndustrial
     else
        xIndicadorAtividadeEmpresa := atOutros;


     //Indicador de Escrituracao
     if (CdsEmpresa.FieldByName('EMP_COD_IND_ESCRITURACAO').AsString = '1') then
        xIndEscrituracao := IndEscriConsolidado
     else
     if (CdsEmpresa.FieldByName('EMP_COD_IND_ESCRITURACAO').AsString = '2') then
        xIndEscrituracao := IndEscriIndividualizado
     else
        xIndEscrituracao := IndEscriConsolidado;

     GeraFiscal;
     GravarAlteracoesParticipantesEnviados;
     GravarAlteracoesitemEnviados;
     GravarApuracaoICMS;
     GravarApuracaoICMS_st;
     if xIndicadorAtividadeEmpresa = atIndustrial then
       GravarApuracaoIPI;
     GravarArquivo;  
     //Termina Aguarde
     uteis.aviso(Pchar('Arquivo gerado com sucesso!'+#13#10+
                 'Pasta:'+edtLocal.Text));
  finally
    Screen.Cursor := crDefault;
    btnGerar.Enabled := True;
    PanelAguarde.Visible := False;
  end;


end;

procedure TFrmSpedFiscal.btnK280Click(Sender: TObject);
begin
  inherited;
  if not Assigned( frmK280) then
    frmK280 := TfrmK280.Create(Application);
  frmK280.Ano := StrToInt( edtAnoInicial.Text);
  frmK280.mes := StrToInt(edtMesInicial.Text);
  chk280.Checked := frmK280.ShowModal = mrOk;



end;

procedure TFrmSpedFiscal.BuscaAlteracoesItem(const codigo : string) ;
var sql: string;
begin

  //Produtos e Serviços
   if DBInicio.Empresa.sReferenciaProvisoriaOrcamento <> '' then
     sql := 'and t1.prd_refer <> '+ QuotedStr(DBInicio.Empresa.sReferenciaProvisoriaOrcamento);

  cdsAlterItem.Close;
  SQL :=
  // 'SELECT T1.PRD_CODIGO AS CODIGO_ITEM, prda_registro, PRDA_VALOR_ANTERIOR,PRDA_DATAINI,PRDA_DATAFIM '+
  'SELECT T1.PRD_REFER AS CODIGO_ITEM, prda_registro, PRDA_VALOR_ANTERIOR,PRDA_DATAINI,PRDA_DATAFIM '+
  ' FROM PRD0000_ALTER p1 inner join PRD0000 t1 ON (T1.PRD_CODIGO = P1.PRD_CODIGO ) '+
  ' LEFT JOIN SRV0000 T2 ON (T2.SRV_REGISTRO = T1.SRV_REGISTRO)   '+
  ' WHERE   ' + iif(DBInicio.Exclusivo('PRODUTOS'),' t1.EMP_CODIGO = '+ QuotedStr(DBInicio.Empresa.EMP_CODIGO)+ ' AND ','')                            +
//  '  ( EXISTS (SELECT 1 FROM NF0001 nf INNER JOIN NF_IT01 it ON (it.NF_IT_NOTANUMER = nf.NF_NOTANUMBER  )                                             '+
//  '              WHERE it.PRD_REFER = t1.PRD_REFER and nf_emissao  '  +
//  '          BETWEEN '+QuotedStr(DataAmericana(DateToStr(dataInicial)))+' AND '+
//                       QuotedStr(DataAmericana(DateToStr(dataFinal)))+
//  '            AND nf.emp_codigo = '+ QuotedStr(DBInicio.Empresa.EMP_CODIGO)+ ')'+
//  ' OR EXISTS (SELECT 1  FROM ENF0001 ef INNER JOIN  ENF_IT01 IT ON (IT.ENF_IT_NOTANUMBER = EF.ENF_NOTANUMBER AND IT.EMP_CODIGO = EF.EMP_CODIGO)     '+
//  '             WHERE IT.PRD_REFER = t1.PRD_REFER AND ef.ENF_EMISSAO                                                                                 '+
//  '          BETWEEN '+QuotedStr(DataAmericana(DateToStr(dataInicial)))+' AND '+
//                       QuotedStr(DataAmericana(DateToStr(dataFinal)))+
//  '            AND EF.emp_codigo = '+ QuotedStr(DBInicio.Empresa.EMP_CODIGO)+  ' )                                                                   '+
//  '                                                                                                                                                  '+
//  ' OR EXISTS (SELECT 1 FROM NFSERVICO NF WHERE NF.NFSE_DATAEMISSAO                                                                                  '+
//  '          BETWEEN '+QuotedStr(DataAmericana(DateToStr(dataInicial)))+' AND '+
//                       QuotedStr(DataAmericana(DateToStr(dataFinal)))+
//  '              AND nf.emp_codigo = '+ QuotedStr(DBInicio.Empresa.EMP_CODIGO)+
//  '              AND T1.EMP_CODIGO = NF.EMP_CODIGO AND NF.SRV_CODIGO = T2.SRV_CODIGO )                                                               '+
//  '   ) and '+
  '    (PRDA_SPED_DTENVIADO IS NULL  and (PRDA_DATAINI <=  '+ QuotedStr(DataAmericana(DateToStr(dataInicial)))+
 '                                          AND PRDA_DATAFIM <='+ QuotedStr(DataAmericana(DateToStr(dataFinal)))+ ')'+
  '    OR PRDA_SPED_DTENVIADO BETWEEN '+ QuotedStr(DataAmericana(DateToStr(dataInicial)))+' AND '+
                                               QuotedStr(DataAmericana(DateToStr(dataFinal)))+
  '   )                                                              ' +
  ' AND PRDA_VALOR_ANTERIOR <> ''''  '+sql +
//  ' AND P1.PRD_CODIGO = '+QuotedStr(codigo);
  ' AND T1.PRD_REFER = '+QuotedStr(codigo);
//  ' AND EXISTS (SELECT 1 FROM PRD_TIPO TP WHERE (TP.PTI_CODIGO = T1.PTI_CODIGO) AND PTI_SIGLA <> ''IM'')';{ VERIFICA SE NÃO É ATIVO IMOBILIZADO}
 cdsAlterItem.CommandText := SQL;
 cdsAlterItem.Open;
end;

procedure TFrmSpedFiscal.BuscaAlteracoesParticipantes (const codigo :string);
begin
   {** alterações dos participantes
   somente quando houver movimentação, quando houver movimentação trazer as alterações que ainda não tinham
   sido enviadas
       gravar a data de envio no sped _dtenviadas
    }

   cdsAlterParticipante.Close;
   cdsAlterParticipante.CommandText :=
      ' SELECT clia_registro as registro, ''C'' AS TIPO , ''C''||  CLI_CODIGO as CODIGO, CLIA_DATA AS DT_ALT, CLIA_CAMPO AS CAMPO, '+
      ' CLIA_VALOR_ANTERIOR AS CONT_ANT ,CLIA_SPED_DTENVIADO  AS SPED_DTENVIADO ' +
      '   FROM CLI0000_ALTER CA                                                                                                       ' +
//      '  WHERE EXISTS (SELECT 1 FROM CLI0000 T1                                                                                       ' +
//      '                WHERE ca.CLI_CODIGO = t1.cli_codigo                                                                            ' +
//      '                AND (EXISTS (SELECT 1 FROM NF0001 nf WHERE nf.CLI_CODIGO = t1.CLI_CODIGO and nf_emissao                    '+
//      '                                        BETWEEN '+QuotedStr(DataAmericana(DateToStr(dataInicial)))+' AND '+
//                                                         QuotedStr(DataAmericana(DateToStr(dataFinal)))  +
//                       '              AND nf.emp_codigo = '+ QuotedStr(DBInicio.Empresa.EMP_CODIGO)+'  )                              '+
//      '                  OR                                                                                                           '+
//      '                    EXISTS (SELECT 1 FROM NFSERVICO nfs WHERE nfs.CLI_CODIGO = t1.CLI_CODIGO AND nfs.NFSE_DATAEMISSAO          '+
//      '                              BETWEEN '+QuotedStr(DataAmericana(DateToStr(dataInicial)))+' AND '+
//                                               QuotedStr(DataAmericana(DateToStr(dataFinal)))+
//      '                                   AND nfS.emp_codigo = '+ QuotedStr(DBInicio.Empresa.EMP_CODIGO)+'  )                         ' +
//      '                    )                                                                                                          ' +
//      '               )                                                                                                               ' +
      '   where (CLIA_SPED_DTENVIADO IS NULL  OR CLIA_DATA BETWEEN '+ QuotedStr(DataAmericana(DateToStr(dataInicial)))+' AND '+
                                                   QuotedStr(DataAmericana(DateToStr(dataFinal)))+
      '    OR CLIA_SPED_DTENVIADO BETWEEN '+ QuotedStr(DataAmericana(DateToStr(dataInicial)))+' AND '+
                                                   QuotedStr(DataAmericana(DateToStr(dataFinal)))+
      '   )                                                                                                                           ' +
      '  AND CLIA_CAMPO <> ''CLI_INSC''                                                                                               ' +
      ' AND CLIA_VALOR_ANTERIOR <> ''''                                                                                               ' +
      ' AND EMP_CODIGO = '+ QuotedStr(DBInicio.Empresa.EMP_CODIGO) +
      ' AND CLI_CODIGO = '+ QuotedStr(Trim(Copy(codigo,1,60)))+
      ' UNION ALL                                                                                                                     ' +
      ' SELECT FORA_REGISTRO, ''F'', ''F'' || FOR_CODIGO, FORA_DATA, FORA_CAMPO,FORA_VALOR_ANTERIOR, FORA_SPED_DTENVIADO              ' +
      '   FROM FOR0000_ALTER FA                                                                                                       ' +
//      '  WHERE EXISTS (SELECT 1 FROM FOR0000 T1                                                                                       ' +
//      '                WHERE fa.FOR_CODIGO = t1.FOR_codigo                                                                            ' +
//      '                AND EXISTS (SELECT 1 FROM ENF0001 ef WHERE ef.FOR_CODIGO = t1.FOR_CODIGO AND ef.ENF_EMISSAO                     '+
//      '          BETWEEN '+QuotedStr(DataAmericana(DateToStr(dataInicial)))+' AND '+
//                         QuotedStr(DataAmericana(DateToStr(dataFinal)))+
//      '              AND ef.emp_codigo = '+ QuotedStr(DBInicio.Empresa.EMP_CODIGO)+'  )                                               ' +
//
//      '               )                                                                                                               ' +
      '   where (FORA_SPED_DTENVIADO IS NULL  OR FORA_DATA BETWEEN  '+ QuotedStr(DataAmericana(DateToStr(dataInicial)))+' AND '+
                                                   QuotedStr(DataAmericana(DateToStr(dataFinal)))+
      '    OR FORA_SPED_DTENVIADO BETWEEN '+ QuotedStr(DataAmericana(DateToStr(dataInicial)))+' AND '+
                                                   QuotedStr(DataAmericana(DateToStr(dataFinal)))+
      '   )                                                                                                                           ' +
      '  AND FORA_CAMPO <> ''FOR_INSC''                                                                                               ' +
      ' AND FORA_VALOR_ANTERIOR <> ''''                                                                                               ' +
      ' AND EMP_CODIGO = '+ QuotedStr(DBInicio.Empresa.EMP_CODIGO)   +
      ' AND FOR_CODIGO = '+ QuotedStr( TRIM(Copy(codigo,1,60)))
      ;



   cdsAlterParticipante.Open;
end;

procedure TFrmSpedFiscal.BuscaBensCompAtivoImobilizado;  {bens e componentes}
begin
 cdsAtivoImobilizado.Close;
 cdsAtivoImobilizado.CommandText :=
  ' SELECT PRD_REFER, PRD_CODIGO, PRD_DESCRI, GR.CCT_CODIGO, gr.PGR_CODIGO,gr.PGR_DESCRI,  PRD_COMPL, PR.PCX_CODIGO, ''N'' as Usado'+
  ' FROM PRD0000 PR JOIN PRD_TIPO TP ON (TP.PTI_CODIGO = PR.PTI_CODIGO) '+
  ' JOIN PRD_GRUPO GR ON (GR.PGR_CODIGO = PR.PGR_CODIGO) '+
  ' LEFT JOIN PCX0000 PC ON (PC.PCX_CODIGO = PR.PCX_CODIGO)  '+
  ' WHERE PTI_SIGLA = ''IM'' '+
  ' AND PRD_DTCADASTRO BETWEEN '+QuotedStr(DataAmericana(DateToStr(dataInicial)))+' AND '+
                         QuotedStr(DataAmericana(DateToStr(dataFinal)));
 cdsAtivoImobilizado.Open;


end;

procedure TFrmSpedFiscal.BuscaItens;
var sql: string;
begin

  //Produtos e Serviços
  {EXCLUIR PRODUTO PROVISÓRIO}
   if DBInicio.Empresa.sReferenciaProvisoriaOrcamento <> '' then
     sql := 'and t1.prd_refer <> '+ QuotedStr(DBInicio.Empresa.sReferenciaProvisoriaOrcamento);
   CdsProdutosServicos.Close;
   SQL:=
//    'SELECT T1.PRD_CODIGO AS CODIGO_ITEM,                                                                                                              '+
    'SELECT T1.PRD_REFER AS CODIGO_ITEM,                                                                                                              '+
    'T1.PRD_REFER,                                                                                                                                     '+
    'T1.PRD_DESCRI AS DESCRICAO_ITEM,                                                                                                                  '+
    'T1.PRD_CODBARRA AS CODIGO_BARRAS,                                                                                                                 '+
    'T1.PRD_UND AS UNIDADE_MEDIDA,                                                                                                                     '+
    'T1.SPED_TIPCODIGO AS TIPO,                                                                                                                        '+
    'T1.IPI_CODIGO AS CODIGO_NCM,                                                                                                                      '+
    'T1.SPED_GENCODIGO AS CODIGO_GENERO,                                                                                                               '+
    'T2.SRV_CODIGO AS CODIGO_SERVICO,                                                                                                                  '+
    ' (Select cast(count(*) as integer) as conta from    ftc_it01 FTC where FTC.prd_refer = T1.prd_refer) as Ficha,                                                              '+
    'case                                                                                                                                              '+
    '    when (T1.PRD_ALIQICM > 0) then                                                                                                                '+
    '        T1.PRD_ALIQICM                                                                                                                            '+
    '    else                                                                                                                                          '+
    '        (SELECT T3.ICM_ALIQ FROM ICM0000 T3 WHERE T3.ICM_DESTINO = (SELECT T4.EMP_UF FROM EMP0000 T4 WHERE T4.EMP_CODIGO = T1.EMP_CODIGO)'+
            ConcatSe (' and ',dbInicio.ExclusivoSql('ICMS')) +' )  '+
    'END AS ALIQUOTA_ICMS,                                                                                                                             '+
    'CEST_COD,                                                                                                                                         '+
    ' ''N'' AS USADO '+
//    ' cast(0 numeric(18,5) as FTI_UC, cast(0 numeric(18,5) as  FTI_PERDA   '+
    'FROM                                                                                                                                              '+
    'PRD0000 T1 LEFT JOIN SRV0000 T2 ON (T2.SRV_REGISTRO = T1.SRV_REGISTRO)                                                                            '+
     ConcatSe( 'WHERE   t1.' , dbinicio.ExclusivoSql('PRODUTOS')) ;


    CdsProdutosServicos.CommandText := SQL;


    CdsProdutosServicos.Open;

end;

procedure TFrmSpedFiscal.BuscaParticipantes;
begin
 { participantes são cliente e fornecedores}
   CdsParticipantes.Close;
   CdsParticipantes.CommandText :=
    //CLIENTE
    'SELECT  T1.EMP_CODIGO EMP_CODIGO,                                                                           '+
    'CAST(''C''||T1.CLI_CODIGO AS VARCHAR(10)) AS CODIGO_SISTEMA,                                                 '+
    'CAST(T1.CLI_RAZAO AS VARCHAR(70)) as NOME,                                                                     '+
    'CAST((SELECT T2.PAI_CODIGO FROM PAIS0000 T2 WHERE T2.PAI_CODIGO = T1.PAI_CODIGO) AS INTEGER) CODIGO_PAIS,   '+
    'T1.CLI_CGC CNPJ_CPF,                                                                                        '+
    'CAST(T1.CLI_INSC AS VARCHAR(20)) AS INSCRICAO,                                                              '+
    '(SELECT T2.CID_COD_IBGE FROM CID0000 T2 WHERE T2.CID_CODIGO = T1.CID_CODIGO) CODIGO_MUNICIPIO_IBGE,         '+
    'T1.CLI_SUFRAMA AS SUFRAMA,                                                                                  '+
    'CAST(T1.CLI_ENDERE AS VARCHAR(60)) AS ENDERECO,                                                             '+
    'CAST(T1.CLI_BAIRRO AS VARCHAR(30)) AS BAIRRO,                                                               '+
    ' ''N'' AS USADO                                                                                             '+
    'FROM                                                                                                        '+
    'CLI0000 T1                                                                                                  '+
    ConcatSe( ' WHERE ', DBInicio.ExclusivoSql('CLIENTES'))+

    'UNION all                                                                                                   '+
    //FORNECEDOR
    'SELECT  T1.EMP_CODIGO,                                                                                      '+
    'CAST(''F''||T1.FOR_CODIGO AS VARCHAR(10)),                                                                  '+
    'CAST(T1.FOR_RAZAO AS VARCHAR(70)),                                                                          '+
    '1058 codigo_pais,                                                                                           '+
    'T1.FOR_CGC,                                                                                                 '+
    'CAST(T1.FOR_INSC AS VARCHAR(20)),                                                                           '+
    '(SELECT T2.CID_COD_IBGE FROM CID0000 T2 WHERE T2.CID_CODIGO = T1.CID_CODIGO),                               '+
    'T1.FOR_SUFRAMA,                                                                                             '+
    'CAST(T1.FOR_ENDERE AS VARCHAR(60)),                                                                         '+
    'CAST(T1.FOR_BAIRRO AS VARCHAR(30)),                                                                         '+
     ' ''N'' AS USADO '+
    'FROM                                                                                                        '+
    'FOR0000 T1                                                                                                  '+
     ConcatSe( ' WHERE ', DBInicio.ExclusivoSql('FORNECEDORES'));


   CdsParticipantes.Open;
end;

procedure TFrmSpedFiscal.BlocoC;
var
  iSequencia, nfSequencia: Integer;
  txtCompl, unidadeEquivalente: string;
begin
  totdebito :=0;
  totcredito := 0 ;
  {*BLOCO C*}
  with ACBrSPEDFiscal1.Bloco_C do
  begin
    with RegistroC001New do
    begin
      BuscaNotasFiscais;
      if (not chkBlocoC.Checked) then
      begin
        IND_MOV := imSemDados;
      end
      else if (CdsNotasFiscais.IsEmpty) then
      begin
        IND_MOV := imSemDados;
      end
      else
      begin
        IND_MOV := imComDados;
        CdsNotasFiscais.First;
        while (not CdsNotasFiscais.Eof) do
        begin
          Inc(nfSequencia);
          //C100 - Documento - Nota Fiscal (código 01), Nota Fiscal Avulsa (código 1B), Nota
          // Fiscal de Produtor (código 04) e NF-e (código 55)   e NFC-e modelo 65
          with RegistroC100New do
          begin
            IND_OPER := IIF(CdsNotasFiscais.FieldByName('TIPO_NOTA').AsString = 'E', tpEntradaAquisicao, tpSaidaPrestacao);
            IND_EMIT := IIF(CdsNotasFiscais.FieldByName('TIPO_EMITENTE').AsString = 'P', edEmissaoPropria, edTerceiros);

            if CdsNotasFiscais.FieldByName('CODIGO_MODELO').AsString <> '65' then
            begin
              Adicionar150(CdsNotasFiscais.FieldByName('CODIGO_PARTICIPANTE').AsString);
              COD_PART := CdsNotasFiscais.FieldByName('CODIGO_PARTICIPANTE').AsString;
            end;
            COD_MOD := PreenchezeroEsquerda(CdsNotasFiscais.FieldByName('CODIGO_MODELO').AsString, 2);
            COD_SIT := iif(CdsNotasFiscais.FieldByName('CODIGO_SITUACAO_TRIBUTARIA').AsString = '00',sdRegular,sdCancelado);
            SER := CdsNotasFiscais.FieldByName('SERIE').AsString;
            NUM_DOC := FormatFloat('000000000', CdsNotasFiscais.FieldByName('NUMERO').AsInteger);
            //
            CHV_NFE := CdsNotasFiscais.FieldByName('CHAVE_ELETRONICA').AsString;
            DT_DOC := CdsNotasFiscais.FieldByName('DATA_EMISSAO').AsDateTime;
            DT_E_S := CdsNotasFiscais.FieldByName('DATA_ENTRADA_SAIDA').AsDateTime;
            VL_DOC := CdsNotasFiscais.FieldByName('VALOR_NOTA').AsCurrency;
            if CdsNotasFiscais.FieldByName('TIPO_PGTO').AsString= 'P' then
              IND_PGTO :=  tpPrazo
            else if (CdsNotasFiscais.FieldByName('TIPO_PGTO').AsString = 'A') then
              IND_PGTO := tpVista
            else
              IND_PGTO := tpOutros;
            VL_DESC := CdsNotasFiscais.FieldByName('VALOR_DESCONTO').AsCurrency;
            VL_ABAT_NT := CdsNotasFiscais.FieldByName('VALOR_ABATIMENTO').AsCurrency;
            VL_MERC := CdsNotasFiscais.FieldByName('VALOR_MERCADORIAS').AsCurrency;
            case  CdsNotasFiscais.FieldByName('INDICADOR_FRETE').AsInteger of
              0 : IND_FRT := tfPorContaEmitente;
              1 : IND_FRT := tfPorContaDestinatario;
              2 : IND_FRT := tfPorContaTerceiros;
            Else
              IND_FRT := tfSemCobrancaFrete;
            end;

            VL_FRT := CdsNotasFiscais.FieldByName('VALOR_FRETE').AsCurrency;
            VL_SEG := CdsNotasFiscais.FieldByName('VALOR_SEGURO').AsCurrency;
            VL_OUT_DA := CdsNotasFiscais.FieldByName('VALOR_OUTRAS_DESP_ACES').AsCurrency;
            VL_BC_ICMS := CdsNotasFiscais.FieldByName('VALOR_BASE_CALCULO_ICMS').AsCurrency;
            VL_ICMS := CdsNotasFiscais.FieldByName('VALOR_ICMS').AsCurrency;
            VL_BC_ICMS_ST := CdsNotasFiscais.FieldByName('VALOR_BASE_ICMS_ST').AsCurrency;
            VL_ICMS_ST := CdsNotasFiscais.FieldByName('VALOR_RETIDO_ST').AsCurrency;
            VL_IPI := CdsNotasFiscais.FieldByName('VALOR_IPI').AsCurrency;
            VL_PIS := CdsNotasFiscais.FieldByName('VALOR_PIS').AsCurrency;
            VL_COFINS := CdsNotasFiscais.FieldByName('VALOR_COFINS').AsCurrency;
            VL_PIS_ST := CdsNotasFiscais.FieldByName('VALOR_PIS_RETIDO_ST').AsCurrency;
            VL_COFINS_ST := CdsNotasFiscais.FieldByName('VALOR_COFINS_ST').AsCurrency;
            //Lista os Itens da nota
            CdsNotasFiscaisItens.Close;
            CdsNotasFiscaisItens.CommandText := 'SELECT * FROM VW_SPED_NOTAS_FISCAIS_ITENS WHERE REGISTRO_NOTA = ' + QuotedStr(CdsNotasFiscais.FieldByName('REGISTRO').AsString)+
                                                 IIF(copy(COD_PART,1,1) = 'F',
                                                 ' AND FOR_CODIGO = '+QuotedStr(COPY(CdsNotasFiscais.FieldByName('CODIGO_PARTICIPANTE').AsString,2,4)),'');
            CdsNotasFiscaisItens.Open;
            CdsNotasFiscaisItens.First;
            iSequencia := 0;
            //10 itens para cada nota...
            //nÃO SE APLICA PARA 55 NFE O 170  nota de saida
            // não precisa pois não temos nota de saida por terceiros
           //  if not ((CdsNotasFiscais.FieldByName('CODIGO_MODELO').AsString = '55') and (CdsNotasFiscais.FieldByName('TIPO_EMITENTE').AsString = 'P')) then
            if CdsNotasFiscais.FieldByName('CODIGO_MODELO').AsString <> '65' then
              while (not CdsNotasFiscaisItens.Eof) do
              begin
                Inc(iSequencia);
                //c170 - Complemento de Documento – Itens do Documento (códigos 01, 1B, 04 e 55)
                with RegistroC170New do
                //Inicio Adicionar os Itens:
                begin
                  Adicionar200(CdsNotasFiscaisItens.FieldByName('CODIGO_ITEM').AsString);
                  NUM_ITEM := FormatFloat('000', iSequencia);
                  COD_ITEM := CdsNotasFiscaisItens.FieldByName('CODIGO_ITEM').AsString;
                  DESCR_COMPL := trim(CdsNotasFiscaisItens.FieldByName('DESCRICAO_ITEM').AsString);
                  QTD := CdsNotasFiscaisItens.FieldByName('QUANTIDADE').AsFloat;
                  // O último dígito deve ser ignorado no arquivo




                  unidadeEquivalente := BuscaUmDadoSqlAsString(
                    'SELECT PRD_UNISIGLA FROM PRD_UNIDADE_EQUIVALENTE WHERE PRD_UNIEQUIVALENTE = ' +
                    QuotedStr(CdsNotasFiscaisItens.FieldByName('UNIDADE').AsString) +
                    iif(DBInicio.Exclusivo('TABELAS'), ' AND EMP_CODIGO = ' + QuotedStr(DBInicio.Emp_Codigo), '')
                  );
                  if unidadeEquivalente = '' then
                    unidadeEquivalente := CdsNotasFiscaisItens.FieldByName('UNIDADE').AsString;
                  UNID := unidadeEquivalente;
                  // UNID := CdsNotasFiscaisItens.FieldByName('UNIDADE').AsString;



                  VL_ITEM := (CdsNotasFiscaisItens.FieldByName('VALOR_ITEM').AsCurrency * CdsNotasFiscaisItens.FieldByName('QUANTIDADE').AsFloat);
                  VL_DESC := CdsNotasFiscaisItens.FieldByName('VALOR_DESCONTO').AsCurrency;
                  IND_MOV := IIF(CdsNotasFiscaisItens.FieldByName('INDICADOR_MOVIMENTACAO').AsString = 'S', mfSim, mfNao);
                  CST_ICMS := PreenchezeroEsquerda (CdsNotasFiscaisItens.FieldByName('CST_ICMS').AsString,3);
                  CFOP := CdsNotasFiscaisItens.FieldByName('CFOP').AsString;

                  If CdsNotasFiscaisItens.FieldByName('OPE_CODIGO').IsNull then
                    COD_NAT := StrZero(CdsNotasFiscais.FieldByName('OPE_CODIGO').AsString,3)
                  else
                    COD_NAT := StrZero(CdsNotasFiscaisItens.FieldByName('OPE_CODIGO').AsString,3);
                   Adicionar400(COD_NAT);
                  //  COD_NAT          := '64'; //Informar no 0400 antes de utilizá-lo
                  VL_BC_ICMS := CdsNotasFiscaisItens.FieldByName('VALOR_BASE_ICMS').AsCurrency;
                  if not MatchStr(copy(CST_ICMS,2,2),['30','40','41','50','60']) then
                    ALIQ_ICMS := CdsNotasFiscaisItens.FieldByName('ALIQUOTA_ICMS').AsCurrency;
                  VL_ICMS := CdsNotasFiscaisItens.FieldByName('VALOR_ICMS').AsCurrency;
                  VL_BC_ICMS_ST := CdsNotasFiscaisItens.FieldByName('VALOR_BASE_ICMS_ST').AsCurrency;
                  ALIQ_ST := CdsNotasFiscaisItens.FieldByName('ALIQUOTA_ICMS_ST').AsCurrency;
                  if CdsNotasFiscaisItens.FieldByName('VALOR_ICMS_ST').AsCurrency = 0  then
                    VL_ICMS_ST :=  VL_BC_ICMS_ST* ALIQ_ST/100
                  else
                    VL_ICMS_ST := CdsNotasFiscaisItens.FieldByName('VALOR_ICMS_ST').AsCurrency;
                  IND_APUR := iaMensal;
                  // APARTIR DA VERSAO 540 TEM UM CAMPO DO CST_IPI ESPECIFICO NA TAB
                  CST_IPI := CdsNotasFiscaisItens.FieldByName('CST_IPI').AsString;
//                  if (CdsNotasFiscais.FieldByName('TIPO_NOTA').AsString = 'E') then
//                  begin
//                    if (CdsNotasFiscaisItens.FieldByName('CST_IPI').AsString = '50') then
//                      CST_IPI := '00'
//                    else
//                      CST_IPI := '01';
//                  end;
                  CST_IPI :=  CdsNotasFiscaisItens.FieldByName('CST_IPI').AsString;
                  COD_ENQ := '';
                  //CdsNotasFiscaisItens.FieldByName('CODIGO_ENQUAD_IPI').AsString;
                  VL_BC_IPI := CdsNotasFiscaisItens.FieldByName('VALOR_BASE_IPI').AsCurrency;
                  ALIQ_IPI := CdsNotasFiscaisItens.FieldByName('ALIQUOTA_IPI').AsCurrency;
                  VL_IPI := CdsNotasFiscaisItens.FieldByName('VALOR_IPI').AsCurrency;
                  CST_PIS := CdsNotasFiscaisItens.FieldByName('CST_PIS').AsString;
                  VL_BC_PIS := CdsNotasFiscaisItens.FieldByName('VALOR_BASE_PIS').AsCurrency;
                  ALIQ_PIS_PERC := CdsNotasFiscaisItens.FieldByName('ALIQ_PIS').AsCurrency;
                  QUANT_BC_PIS := CdsNotasFiscaisItens.FieldByName('QUANTIDADE_BASE_PIS').AsCurrency;
                  ALIQ_PIS_R := CdsNotasFiscaisItens.FieldByName('ALIQ_PIS_REAIS').AsCurrency;
                  VL_PIS := CdsNotasFiscaisItens.FieldByName('VALOR_PIS').AsCurrency;
                  CST_COFINS := CdsNotasFiscaisItens.FieldByName('CST_COFINS').AsString;
                  VL_BC_COFINS := CdsNotasFiscaisItens.FieldByName('VALOR_BASE_COFINS').AsCurrency;
                  ALIQ_COFINS_PERC := CdsNotasFiscaisItens.FieldByName('ALIQUOTA_COFINS').AsCurrency;
                  QUANT_BC_COFINS := CdsNotasFiscaisItens.FieldByName('QUANTIDADE_BASE_COFINS').AsCurrency;
                  ALIQ_COFINS_R := CdsNotasFiscaisItens.FieldByName('ALIQ_COFINS_REAIS').AsCurrency;
                  VL_COFINS := CdsNotasFiscaisItens.FieldByName('VALOR_COFINS').AsCurrency;
                  COD_CTA := '';
                  VL_ABAT_NT :=0;
                     //Não implementar ressarcimento C176
//                  if CdsNotasFiscaisItens.FieldByName('VALOR_ICMS_ST').AsCurrency > 0  then
//                  begin
//                    cdsUltEntrada.Close;
//                    cdsUltEntrada.CommandText := 'SELECT FIRST 1 ENF_IT_NOTANUMBER,ENF_SERIE, enf_emissao,  '+
//                        ' ''F'' ||enf.FOR_CODIGO AS COD_PART, ENF_QTDE, ENF_PRECO, ENF_IT_BASESUBTRIB, ENF_CHAVE_NFE, '+
//                        ' ENF_VL_SUBTRIB , ENF_IT_ALIQSUBTRIB, ENF_ICMSALIQ, ENF_IT_BASEICMS, ENF_ICMS '+
//                        ' FROM ENF_IT01 it JOIN ENF0001 enf ON (enf.ENF_NOTANUMBER = it.ENF_IT_NOTANUMBER AND it.FOR_CODIGO = enf.FOR_CODIGO)   '+
//                        ' WHERE PRD_CODIGO =  '+ QuotedStr(COD_ITEM)+
//                        ' AND enf_emissao <= ' + DateToSQL(CdsNotasFiscais.FieldByName('DATA_EMISSAO').AsDateTime)+
//                        ' AND IT.EMP_CODIGO = '+QuotedStr(DBInicio.Empresa.EMP_CODIGO)+
//                        ' AND ENF_IT_NOTANUMBER <>  '+QuotedStr (CdsNotasFiscais.FieldByName('NUMERO').AsString)  +
//                        ' AND ENF_VLSUBST > 0 ' + // não pode pegar como ressarcimento
//                        ' ORDER BY enf_emissao DESC ';
//                    cdsUltEntrada.Open;
//                    if not cdsUltEntrada.IsEmpty then
//                    begin
//                      //ultima entrada do produto
//                      with RegistroC176New do
//                      begin
//                        COD_MOD_ULT_E := '55';
//                        NUM_DOC_ULT_E := RemoveZerosEsquerda(cdsUltEntrada.FieldByName('ENF_IT_NOTANUMBER').AsString);
//                        SER_ULT_E := cdsUltEntrada.FieldByName('ENF_SERIE').AsString;
//                        DT_ULT_E := cdsUltEntrada.FieldByName('enf_emissao').AsDateTime;
//                        COD_PART_ULT_E := cdsUltEntrada.FieldByName('COD_PART').AsString;
//                        Adicionar150(COD_PART_ULT_E);
//                        QUANT_ULT_E :=  cdsUltEntrada.FieldByName('ENF_QTDE').AsFloat;
//                        VL_UNIT_ULT_E := cdsUltEntrada.FieldByName('ENF_PRECO').AsFloat;
//
//                        VL_UNIT_BC_ST := cdsUltEntrada.FieldByName('ENF_IT_BASESUBTRIB').AsFloat;
//                        ALIQ_ST_ULT_E := cdsUltEntrada.FieldByName('ENF_VL_SUBTRIB').AsFloat/cdsUltEntrada.FieldByName('ENF_IT_BASESUBTRIB').AsFloat*100;
//
//                        CHAVE_NFE_ULT_E := cdsUltEntrada.FieldByName('ENF_CHAVE_NFE').AsString;
//
//                        VL_UNIT_BC_ICMS_ULT_E := cdsUltEntrada.FieldByName('ENF_IT_BASEICMS').AsFloat;
//
//                        ALIQ_ICMS_ULT_E := cdsUltEntrada.FieldByName('ENF_ICMSALIQ').AsFloat;
//
//                        if VL_UNIT_BC_ST <= VL_UNIT_BC_ICMS_ULT_E then
//                          VL_UNIT_LIMITE_BC_ICMS_ULT_E :=  VL_UNIT_BC_ST
//                        else
//                          VL_UNIT_LIMITE_BC_ICMS_ULT_E := VL_UNIT_BC_ICMS_ULT_E;
//
//                        VL_UNIT_ICMS_ULT_E := cdsUltEntrada.FieldByName('ENF_ICMS').AsFloat;
//
//                        VL_UNIT_RES := (VL_UNIT_BC_ST *  ALIQ_ST_ULT_E/100) ;//- VL_UNIT_ICMS_ULT_E;
//
//                      end;  //fim do 176
//                    end; //não tem ultima nota
//                  end;// fim se há valor icms_st
                end; // fim do registro C170
                //Fim dos Itens;
                CdsNotasFiscaisItens.Next;
              end;// FIM WHILE CdsNotasFiscaisItens
              //ACBrSPEDPisCofins1.WriteBloco_C( False );  // False, NAO fecha o Bloco
              Application.ProcessMessages;




               //  C110 Informação complementar do documento fiscal
               if CdsNotasFiscais.FieldByName('DADOS_ADICIONAIS').AsString <> '' then
               begin
                with RegistroC110New do
                begin
                  COD_INF := IntToStr(nfSequencia);
                  txtCompl := stringreplace(CdsNotasFiscais.FieldByName('DADOS_ADICIONAIS').AsString, '|', '-', [rfReplaceAll, rfIgnoreCase]);
                  txtCompl := stringreplace(txtCompl, #13, ' ', [rfReplaceAll, rfIgnoreCase]);
                  txtCompl := stringreplace(txtCompl, #10, '', [rfReplaceAll, rfIgnoreCase]);
                  TXT_COMPL := Copy(txtCompl, 0, 254);


                  SetLength(registro0450, nfSequencia, 2);
                  registro0450[nfSequencia -1, 0] := IntToStr(nfSequencia);
                  txtCompl := stringreplace(CdsNotasFiscais.FieldByName('INF_ADIC_FISCO').AsString, '|', '-', [rfReplaceAll, rfIgnoreCase]);
                  txtCompl := stringreplace(txtCompl, #13, ' ', [rfReplaceAll, rfIgnoreCase]);
                  txtCompl := stringreplace(txtCompl, #10, '', [rfReplaceAll, rfIgnoreCase]);
                  registro0450[nfSequencia -1, 1] := Copy(txtCompl, 0, 254);
                end;
               end;





            //C190 - Registro analitico
            Cdsc190.Close;
            Cdsc190.CommandText := 'SELECT ' +
             ' T1.cst_icms,  T1.cfop,  t1.aliquota_icms, '+
             ' SUM(CAST(T1.DESP_ACESSORIA AS NUMERIC(18,2))) AS DESP_ACESSORIA, ' +
             ' SUM(CAST(T1.FRETE AS NUMERIC(18,2))) AS FRETE, ' +
             ' SUM(CAST(T1.SEGURO AS NUMERIC(18,2))) AS SEGURO, ' +
             ' sum(cast((t1.valor_base_icms_st*t1.ALIQUOTA_ICMS_ST/100) as numeric(18,2))) as valor_icms_st2,' +
             ' SUM(CAST(T1.QUANTIDADE * T1.VALOR_ITEM AS NUMERIC(18,2))) AS VALOR, ' +
             ' SUM(CAST(T1.valor_base_icms AS NUMERIC(18,2))) AS valor_base_icms, ' +
             ' SUM(CAST(T1.valor_icms AS NUMERIC(18,2))) AS valor_icms, ' +
             ' SUM(CAST(T1.valor_base_icms_st AS NUMERIC(18,2))) AS valor_base_icms_st, ' +
             ' SUM(CAST(T1.valor_icms_st AS NUMERIC(18,2))) AS valor_icms_st, ' +
             ' SUM(CAST(T1.valor_ipi AS NUMERIC(18,2))) AS valor_ipi ' + 'FROM ' +
             ' VW_SPED_NOTAS_FISCAIS_ITENS T1 ' +
             ' WHERE REGISTRO_NOTA = ' + QuotedStr(CdsNotasFiscais.FieldByName('REGISTRO').AsString) +
              IIF(COPY(COD_PART,1,1) = 'F',
               ' AND T1.FOR_CODIGO = '+QuotedStr(COPY(CdsNotasFiscais.FieldByName('CODIGO_PARTICIPANTE').AsString,2,4)),'')+
              ' GROUP BY T1.cst_icms, T1.cfop, t1.aliquota_icms';
            Cdsc190.Open;
            Cdsc190.First;
            while (not Cdsc190.Eof) do
            begin
              with RegistroC190New do
              begin
                CST_ICMS := Cdsc190.FieldByName('cst_icms').AsString;
                CFOP := Cdsc190.FieldByName('cfop').AsString;
                ALIQ_ICMS := Cdsc190.FieldByName('aliquota_icms').AsCurrency;


                VL_OPR :=
                Cdsc190.FieldByName('VALOR').AsCurrency +
                Cdsc190.FieldByName('DESP_ACESSORIA').AsCurrency +
                Cdsc190.FieldByName('FRETE').AsCurrency +
                Cdsc190.FieldByName('SEGURO').AsCurrency +
                Cdsc190.FieldByName('valor_icms_st2').AsCurrency +  // OU SERIA O valor_icms_st
                Cdsc190.FieldByName('VALOR_IPI').AsCurrency;



                VL_BC_ICMS := Cdsc190.FieldByName('valor_base_icms').AsCurrency;
                VL_ICMS := Cdsc190.FieldByName('valor_icms').AsCurrency;
                VL_BC_ICMS_ST := Cdsc190.FieldByName('valor_base_icms_st').AsCurrency;
                if Cdsc190.FieldByName('valor_icms_st').AsCurrency = 0  then
                  VL_ICMS_ST :=  Cdsc190.FieldByName('valor_icms_st2').AsCurrency
                else
                  VL_ICMS_ST := Cdsc190.FieldByName('valor_icms_st').AsCurrency;
                VL_RED_BC := 0;
                VL_IPI := Cdsc190.FieldByName('valor_ipi').AsCurrency;
                COD_OBS := '';
                 // saidas
                 if (CFOP = '1605') or  ((CFOP <> '5605') and (IND_OPER  = tpSaidaPrestacao)) then
                   totdebito := totdebito + VL_ICMS;
                 if (CFOP = '5605') or ((CFOP <> '1605') and (IND_OPER  = tpEntradaAquisicao )) then
                   totcredito := totcredito + VL_ICMS;
                 if (VL_ICMS_ST > 0)  and (MatchStr(copy(cfop,1,1),['5','6']))  then
                 begin
                   cdsICMS_ST_Recolher.Insert;
                   cdsICMS_ST_RecolherUF.AsString := CdsNotasFiscais.FieldByName('UF_PARTICIPANTE').AsString;
                   cdsICMS_ST_RecolherDataVencimento.AsDateTime := CdsNotasFiscais.FieldByName('DATA_EMISSAO').AsDateTime  ;
                   cdsICMS_ST_RecolherValor_recolher.AsCurrency :=  VL_ICMS_ST  ;
                   cdsICMS_ST_Recolher.Post;

                 end;
                 if VL_ICMS> 0 then
                 begin
                   cdsICMS_Recolher.Insert;
                   cdsICMS_RecolherDataVencimento.AsDateTime := CdsNotasFiscais.FieldByName('DATA_EMISSAO').AsDateTime  ;
                   cdsICMS_RecolherValor_recolher.AsCurrency :=  VL_ICMS  ;
                   cdsICMS_RecolherUF.AsString := CdsNotasFiscais.FieldByName('UF_PARTICIPANTE').AsString;
                   cdsICMS_recolhertipo.AsString := CdsNotasFiscais.FieldByName('TIPO_NOTA').AsString;
                   cdsICMS_Recolher.Post;

                 end;
              end;  //FIM DO REGISTRO C190
              Cdsc190.Next;
            end; //FIM DO WHILE cdsC190
          end; //FIM DO REGISTRO C100
          //proximo
          CdsNotasFiscais.Next;
        end;
      end;
    end;
  end;
  mmoSpedFiscal.Lines.Add('Terminou bloco C');
end;

procedure TFrmSpedFiscal.BlocoD;
begin
  (*BLOCO D*)
  with ACBrSPEDFiscal1.Bloco_D do
  begin
    with RegistroD001New do
    begin
      //Notas Fiscais
      cdsCTE.Close;
      cdsCTE.CommandText :=
             'SELECT (''F''|| F.FOR_CODIGO) AS CODIGO_PARTICIPANTE, ECTE_MODELO_NF, ECTE_SERIE, ECTE_NUMERO, ECTE_CHAVE,ECTE_EMISSAO, ECTE_TIPO_FRETE, '+
             'ECTE_VALOR_NOTA, ECTE_VALOR_PREST, ECTE_BASEICMS, ECTE_VL_ICMS, c.CCT_CODIGO, CID_CODIGO_ORIG_IBGE, CID_CODIGO_DEST_IBGE, '+
             'ECTE_CST_ICMS, OPE_NATUREZA, ECTE_ALIQ_ICMS '+
             'FROM ENTCTE c  JOIN FOR0000 f ON (f.FOR_CODIGO = c.for_codigo) '+
             'WHERE ECTE_EMISSAO BETWEEN '+QuotedStr(DataAmericana(DateToStr(dataInicial))) + ' AND ' + QuotedStr(DataAmericana(DateToStr(dataFinal)))+
             'AND C.EMP_CODIGO = '+QuotedStr(DBInicio.Empresa.EMP_CODIGO);
      cdsCTE.Open;
      cdsCTE.First;
      if (not chkBlocoD.Checked) then
      begin
        IND_MOV := imSemDados;
      end
      else if (cdsCTE.IsEmpty) then
      begin
        IND_MOV := imSemDados;
      end
      else
      begin
        IND_MOV := imComDados;
        //Estabelecimento
        cdsCTE.First;
        while (not cdsCTE.Eof) do
        begin
          with (RegistroD100New) do
          begin
            IND_OPER := tpSaidaPrestacao; // CTE SOMENTE PARA SAIDA
            IND_EMIT := edTerceiros;  //por enquanto o adjuntor só importar de terceiros não emite CTE
            Adicionar150(cdsCTE.FieldByName('CODIGO_PARTICIPANTE').AsString);
            COD_PART := cdsCTE.FieldByName('CODIGO_PARTICIPANTE').AsString;
            COD_MOD := PrencheZeroEsquerda(cdsCTE.FieldByName('ECTE_MODELO_NF').AsString, 2);
            COD_SIT := sdRegular;
            SER := cdsCTE.FieldByName('ECTE_SERIE').AsString;
            SUB := '';
            NUM_DOC := PreenchezeroEsquerda(cdsCTE.FieldByName('ECTE_NUMERO').AsString, 9);
            CHV_CTE := cdsCTE.FieldByName('ECTE_CHAVE').AsString;
            DT_DOC := cdsCTE.FieldByName('ECTE_EMISSAO').AsDateTime;
            //DT_A_P :=
            TP_CT_e := cdsCTE.FieldByName('ECTE_TIPO_FRETE').AsString;;
            CHV_CTE_REF := '';
            VL_DOC := cdsCTE.FieldByName('ECTE_VALOR_NOTA').AsCurrency;
            //VL_DESC :=
           

            VL_SERV := cdsCTE.FieldByName('ECTE_VALOR_PREST').AsCurrency;
            VL_BC_ICMS := cdsCTE.FieldByName('ECTE_BASEICMS').AsCurrency;
            VL_ICMS := cdsCTE.FieldByName('ECTE_VL_ICMS').AsCurrency;
            VL_NT := cdsCTE.FieldByName('ECTE_VALOR_PREST').AsCurrency;
            COD_INF := '';
            COD_CTA := cdsCTE.FieldByName('CCT_CODIGO').AsString;
            COD_MUN_ORIG := cdsCTE.FieldByName('CID_CODIGO_ORIG_IBGE').AsString;
            COD_MUN_DEST := cdsCTE.FieldByName('CID_CODIGO_DEST_IBGE').AsString;

           //d190 - REGISTRO ANALITICO POR ENQUANTO É 1 PARA 1
            with RegistroD190New do
            begin
              IF cdsCTE.FieldByName('ECTE_CST_ICMS').AsString = '' THEN
                CST_ICMS := '000'
              Else
               CST_ICMS := '0'+cdsCTE.FieldByName('ECTE_CST_ICMS').AsString;
              CFOP := cdsCTE.FieldByName('OPE_NATUREZA').AsString;
              ALIQ_ICMS := cdsCTE.FieldByName('ECTE_ALIQ_ICMS').AsCurrency;
              VL_OPR := cdsCTE.FieldByName('ECTE_VALOR_NOTA').AsCurrency;
              VL_BC_ICMS := cdsCTE.FieldByName('ECTE_BASEICMS').AsCurrency;
              VL_ICMS := cdsCTE.FieldByName('ECTE_VL_ICMS').AsCurrency;
              VL_RED_BC := 0;
              COD_OBS := '';
              // saidas
              if (cfop = '1605') or  ((CFOP <> '5605') and (IND_OPER  = tpSaidaPrestacao)) then
                totdebito := totdebito + VL_ICMS;
              if (cfop = '5605') or ((cfop <> '1605')  and (IND_OPER  = tpEntradaAquisicao )) then
                totcredito := totcredito + VL_ICMS;
            end; //fim do registroD190 - NIVEL 3


          cdsCTE.Next;
          end;//fim do registro D100 - NIVEL 2
        end;
      end;
    end;
  end;
  mmoSpedFiscal.Lines.Add('Terminou bloco D');
end;

procedure TFrmSpedFiscal.BlocoE;
var i,j : integer;

 saldo, recolher : Currency;
 devol_st, ressarc_st,cred_st, retencao_st,dev_ant_st,st_transportar : Currency;
 deb_ipi, cred_ipi, saldo_ipi : currency;
 saldo_ant : currency;
 ano, mes, dia,ano_ant,mes_ant : word;
begin
  if not chkBlocoE.Checked then
  begin
    with ACBrSPEDFiscal1.Bloco_E.RegistroE001New do
      IND_MOV := imSemDados;

    exit;
  end;
  //iniciando valores

  saldo := 0 ;
  recolher :=0 ;
  devol_st := 0 ;
  ressarc_st := 0 ;
  cred_st := 0 ;
  retencao_st := 0;
  dev_ant_st := 0 ;
  st_transportar := 0;
  deb_ipi := 0 ;
  cred_ipi := 0;
  saldo_ipi := 0 ;
  saldo_ant := 0;
  DecodeDate(dataInicial,ano,mes,dia); 
  //mes anterior
  DecodeDate(dataInicial-30,ano_ant,mes_ant,dia); 
  {*BLOCO E*}
  with ACBrSPEDFiscal1.Bloco_E do
  begin
    with RegistroE001New do
    begin
      if (not chkBlocoE.Checked) then
         IND_MOV := imSemDados
      else
      begin

        IND_MOV := imComDados;
        with RegistroE100New do
        begin
          DT_INI := dataInicial;
          DT_FIN := dataFinal;

          with RegistroE110New do
          begin
             VL_TOT_DEBITOS := totdebito ;
             VL_AJ_DEBITOS := 0 ;
             VL_TOT_AJ_DEBITOS := 0;
             VL_ESTORNOS_CRED := 0;
             VL_TOT_CREDITOS := totcredito;
             VL_AJ_CREDITOS := 0;
             VL_TOT_AJ_CREDITOS := 0;
             VL_ESTORNOS_DEB := 0;
             //saldo credor anterior se houver 
             saldo_ant := BuscaUmDadoSqlAsCurrency('select saldo_transportar from sped_apuracao_icms '+
                                                   ' where ano = '+IntToStr(ano_ant) + ' and mes = '+IntToStr(mes_ant)+
                                                   ' and emp_codigo = '+ QuotedStr(dbinicio.Empresa.EMP_CODIGO));              
             VL_SLD_CREDOR_ANT := saldo_ant; 
             saldo :=  VL_TOT_DEBITOS + VL_AJ_DEBITOS +  VL_TOT_AJ_DEBITOS + VL_ESTORNOS_CRED -
             ( VL_TOT_CREDITOS + VL_AJ_CREDITOS + VL_TOT_AJ_CREDITOS + VL_ESTORNOS_DEB + VL_SLD_CREDOR_ANT);
             VL_TOT_DED := 0 ;

             if saldo>=0 then
             begin
               VL_SLD_APURADO := saldo;
               //VL_SLD_CREDOR_TRANSPORTAR := 0 ;
               recolher := VL_SLD_APURADO - VL_TOT_DED;
               if recolher >= 0 then
                VL_ICMS_RECOLHER := recolher
               else
                VL_SLD_CREDOR_TRANSPORTAR :=  recolher * -1;
             end
             else
             begin
               VL_SLD_CREDOR_TRANSPORTAR := (saldo * -1)+ VL_TOT_DED;
               VL_SLD_APURADO := 0 ;

             end;
             DEB_ESP := 0 ;
            cdsApuracao.Insert;
            cdsApuracaoano.AsInteger := ano;
            cdsApuracaomes.AsInteger := mes;
            cdsApuracaosaldo_apurado.AsFloat :=  VL_SLD_APURADO;
            cdsApuracaoDEDUCOES.AsFloat :=  VL_TOT_DED;
            cdsApuracaoICMS_RECOLHER.AsFloat :=  VL_ICMS_RECOLHER;
            cdsApuracaoSALDO_TRANSPORTAR.AsFloat := VL_SLD_CREDOR_TRANSPORTAR;
            cdsApuracao.Post;
//            if not cdsICMS_recolher.IsEmpty then
//            begin
//              cdsICMS_recolher.first;
//              while not cdsICMS_recolher.Eof do
//              begin
//                with RegistroE116New do
//                begin
//                  COD_OR :=  '000';
//                  VL_OR :=   cdsICMS_recolherValor_recolher.AsCurrency;
//                  DT_VCTO := cdsICMS_recolherDataVencimento.AsDateTime;
//                  if (cdsICMS_recolhertipo.AsString = 'E') and (cdsICMS_recolherUF.AsString = 'EX') then
//                    COD_REC := '1210'
//                  Else if (cdsICMS_recolhertipo.AsString = 'E') and (cdsICMS_recolherUF.AsString <> DBInicio.Empresa.UF) then
//                    COD_REC := '1228'
//                  else if (cdsICMS_recolhertipo.AsString = 'E') and (cdsICMS_recolherUF.AsString = DBInicio.Empresa.UF) then
//                    COD_REC := '1236'
//                  else if (cdsICMS_recolhertipo.AsString = 'S') and (cdsICMS_recolherUF.AsString = 'EX') then
//                    COD_REC := '1244'
//                  else if (cdsICMS_recolhertipo.AsString = 'S') and (cdsICMS_recolherUF.AsString <> DBInicio.Empresa.UF) then
//                    COD_REC := '1252'
//                  else
//                    COD_REC := '1260';
//
//                  MES_REF := PreenchezeroEsquerda(edtMesInicial.Text,2) + edtAnoInicial.Text;
//                  IND_PROC := opNenhum;
//                end;
//                cdsICMS_recolher.Next;
//              end;
//            end;

          end; // FIM DO E110
        end; //fim do E100
        //PEGAR OS ESTADOS
        OpenAux(' SELECT DISTINCT UF_PARTICIPANTE FROM '+
                '( SELECT (SELECT FIRST 1 FOR_UF FROM FOR0000 F WHERE F.FOR_CODIGO = ENF.FOR_CODIGO) AS UF_PARTICIPANTE ' +
                ' FROM ENF0001 ENF                '+
                ' WHERE ENF.EMP_CODIGO  = '+ QuotedStr(dbInicio.Empresa.EMP_CODIGO) +
                ' AND ENF.ENF_ENTRADA   BETWEEN '+ QuotedStr(DataAmericana(DateToStr(dataInicial))) + ' AND ' + QuotedStr(DataAmericana(DateToStr(dataFinal))) +
                ' UNION                                                                                  '+
                ' SELECT (SELECT FIRST 1 CLI_UF  FROM CLI0000 C WHERE C.CLI_CODIGO = NF.CLI_CODIGO )     '+
                ' FROM nf0001 NF                                                                         '+
                ' WHERE NF.EMP_CODIGO  =  '+ QuotedStr(dbInicio.Empresa.EMP_CODIGO) +
                ' AND NF.NF_STATUS_NFE = ''A'' '+
                ' AND NF.NF_EMISSAO   BETWEEN '+ QuotedStr(DataAmericana(DateToStr(dataInicial))) + ' AND ' + QuotedStr(DataAmericana(DateToStr(dataFinal))) + ' )' +
                ' WHERE UF_PARTICIPANTE <> '''' ');
        while not qAux.Eof do
        begin
          devol_st  := 0 ;
          cred_st := 0  ;
          retencao_st := 0 ;
          ressarc_st := 0 ;
          dev_ant_st := 0 ;
          st_transportar := 0 ;
          if qAux.FieldByName('UF_PARTICIPANTE').AsString = 'EX' then
          begin
            qAux.Next;
            Continue;
          end;
          with RegistroE200New do
          begin
          Cdsc190.Close;
            Cdsc190.CommandText :=
           'SELECT  CFOP , SUM(valor_icms_st) AS valor_icms_st '+
           'FROM (                                              '+
           'SELECT EIT.ENF_CFOP AS cfop, '+
           ' CASE WHEN ENF_IT_VLSUBTRIB = 0  THEN  (ENF_IT_BASESUBTRIB* ENF_IT_ALIQSUBTRIB/100) '+
           ' ELSE COALESCE(CAST(EIT.ENF_IT_VLSUBTRIB AS NUMERIC(18,2)),0) END AS valor_icms_st '+
           'FROM ENF0001 ENF  JOIN ENF_IT01 EIT ON (EIT.ENF_IT_NOTANUMBER = ENF.ENF_NOTANUMBER AND eit.FOR_CODIGO = enf.FOR_CODIGO)                                                  '+
           'WHERE ENF.EMP_CODIGO  = '+ QuotedStr(dbInicio.Empresa.EMP_CODIGO) +
           'AND ENF.ENF_ENTRADA   BETWEEN '+QuotedStr(DataAmericana(DateToStr(dataInicial))) + ' AND ' + QuotedStr(DataAmericana(DateToStr(dataFinal))) +
           'AND (SELECT FIRST 1 FOR_UF FROM FOR0000 F WHERE F.FOR_CODIGO = ENF.FOR_CODIGO) = '+QuotedStr(qAux.FieldByName('UF_PARTICIPANTE').AsString)+
           'AND ENF_IT_BASESUBTRIB > 0         ' +
           'AND EIT.ENF_IT_ALIQSUBTRIB > 0     ' +
           '  UNION  ALL                       '+
           'SELECT NTP_CFOP, COALESCE(CAST(IT.NF_VLSUBST AS NUMERIC(18,2)),0)   '+
           'FROM nf0001 NF JOIN NF_IT01 IT ON (IT.NF_IT_NOTANUMER = NF.NF_NOTANUMBER AND nf.EMP_CODIGO = it.EMP_CODIGO)   '+
           'WHERE NF.EMP_CODIGO  = '+ QuotedStr(dbInicio.Empresa.EMP_CODIGO) +
           'AND NF.NF_EMISSAO   BETWEEN '+ QuotedStr(DataAmericana(DateToStr(dataInicial))) + ' AND ' + QuotedStr(DataAmericana(DateToStr(dataFinal))) +
           'AND (SELECT FIRST 1 CLI_UF  FROM CLI0000 C WHERE C.CLI_CODIGO = NF.CLI_CODIGO ) = '+QuotedStr(qAux.FieldByName('UF_PARTICIPANTE').AsString)+
           'AND NF_SUBTRIBASE > 0              '+
           'AND NF_STATUS_NFE = ''A'' '+
           'AND NF_ALIQSUBTRIB > 0 )           '+
           'GROUP BY CFOP';

            Cdsc190.Open;
            Cdsc190.First;
            while (not Cdsc190.Eof) do
            begin


              if MatchStr(Cdsc190.FieldByName('cfop').AsString, ['1410','1411','1414','1415','1660','1661','1662','2410','2411','2414','2415','2660','2661','2662']) then
                 devol_st := devol_st + Cdsc190.FieldByName('valor_icms_st').AsCurrency
              else if MatchStr(copy(Cdsc190.FieldByName('cfop').AsString,1,1) ,['1','2']) then
                cred_st := cred_st +  Cdsc190.FieldByName('valor_icms_st').AsCurrency;

              if MatchStr(Cdsc190.FieldByName('cfop').AsString,['1603','2603']) then
                ressarc_st :=  ressarc_st + Cdsc190.FieldByName('valor_icms_st').AsCurrency;
              if MatchStr(copy(Cdsc190.FieldByName('cfop').AsString,1,1) ,['5','6'])  then
                retencao_st := retencao_st + Cdsc190.FieldByName('valor_icms_st').AsCurrency;
              cdsc190.Next;
            end;
            DT_INI := dataInicial;
            DT_FIN := dataFinal;
            UF :=  qAux.FieldByName('UF_PARTICIPANTE').AsString;
            //ICMS ST
            with RegistroE210New do
            begin
               IND_MOV_ST := mstComOperacaoST;
               //saldo da apuracao anterior
               saldo_ant := 0;
               saldo_ant := BuscaUmDadoSqlAsCurrency('select saldo_transportar_st from sped_apuracao_icms_st '+
                                                     ' where ano = '+IntToStr(ano_ant) + ' and mes = '+IntToStr(mes_ant)+ ' and uf = '+QuotedStr(UF)+
                                                     ' and emp_codigo = '+ QuotedStr(dbinicio.Empresa.EMP_CODIGO)
                                                      );               
               VL_SLD_CRED_ANT_ST := saldo_ant ;// saldo anterior ainda não é salvo
               VL_DEVOL_ST := devol_st;
               VL_RESSARC_ST := ressarc_st;
               VL_OUT_CRED_ST := cred_st ;
               VL_AJ_CREDITOS_ST:= 0 ;
               VL_RETENCAO_ST := retencao_st;
               VL_OUT_DEB_ST := 0 ;
               VL_AJ_DEBITOS_ST := 0 ;
               dev_ant_st :=  (VL_RETENCAO_ST +  VL_OUT_DEB_ST  + VL_AJ_DEBITOS_ST) -
                              (VL_SLD_CRED_ANT_ST + VL_DEVOL_ST + VL_RESSARC_ST + VL_OUT_CRED_ST  +VL_AJ_CREDITOS_ST);
               if dev_ant_st>=0 then
                 VL_SLD_DEV_ANT_ST:=  dev_ant_st
               else
                 VL_SLD_DEV_ANT_ST:= 0 ;
               VL_DEDUCOES_ST := 0 ;
               VL_ICMS_RECOL_ST :=  VL_SLD_DEV_ANT_ST - VL_DEDUCOES_ST;
               st_transportar := dev_ant_st - VL_DEDUCOES_ST;
               if st_transportar>=0  then
                VL_SLD_CRED_ST_TRANSPORTAR := 0
               else
                VL_SLD_CRED_ST_TRANSPORTAR  := st_transportar *-1;
                DEB_ESP_ST := 0;
             cdsApuracaoSt.Insert;
             cdsApuracaoStano.AsInteger := ano;
             cdsApuracaostmes.AsInteger := mes;
             cdsApuracaoStuf.AsString :=   UF;
             cdsApuracaostsaldo_devedor_ant_deducoes.AsFloat :=  VL_SLD_DEV_ANT_ST;
             cdsApuracaoStDEDUCOES_st.AsFloat :=  VL_DEDUCOES_ST;
             cdsApuracaoSticms_recolher_st.AsFloat :=  VL_ICMS_RECOL_ST;
             cdsApuracaoStsaldo_transportar_st.AsFloat := VL_SLD_CRED_ST_TRANSPORTAR;                
             cdsApuracaoST.Post;
             if (retencao_st > 0 ) and not cdsICMS_ST_Recolher.IsEmpty  then
             begin
               cdsICMS_ST_Recolher.Filtered := False;
               cdsICMS_ST_Recolher.Filter:= 'UF = '+ QuotedStr(UF);
               cdsICMS_ST_Recolher.Filtered := True;
               if not cdsICMS_ST_Recolher.IsEmpty then 
               begin
                 cdsICMS_ST_Recolher.First;
                 while not cdsICMS_ST_Recolher.Eof do
                 begin
                  with RegistroE250New do
                  begin
                    COD_OR := '002';
                    VL_OR := cdsICMS_ST_RecolherValor_recolher.AsCurrency;
                    DT_VCTO := cdsICMS_ST_RecolherDataVencimento.AsDateTime;
                    COD_REC := '100099';
                    MES_REF := PreenchezeroEsquerda(edtMesInicial.Text,2) + edtAnoInicial.Text;
                    IND_PROC := opNenhum; 
                  end;
                  cdsICMS_ST_Recolher.Next;
                 end;
               end;
               
               


             end;                                    
            end; // fim e210
          end;//fim do E200
          qaux.next ;
        end;//fim pecorre estados
        // APURAÇÃO DO IPI , SOMENTE SE FOR INDUSTRIA OU EQUIPARADO
        if xIndicadorAtividadeEmpresa = atIndustrial then
        begin
          with RegistroE500New do
          begin
            DT_INI := dataInicial;
            DT_FIN := dataFinal;
            IND_APUR := iaMensal;
            OpenAux(' SELECT t1.ENF_CFOP as CFOP, t1.CST_IPI, SUM(COALESCE(T1.ENF_IT_BASEIPI,0)) total_base_ipi , '+
                    ' SUM(COALESCE(T1.ENF_IT_VLIPI,0)) total_ipi                                          '+
                    ' FROM ENF_IT01 T1                                                                    '+
                    ' WHERE                                                                              '+
                    ' exists (SELECT ENF.ENF_NOTANUMBER FROM ENF0001 ENF                                  '+
                    '         WHERE EMP_CODIGO = '+QuotedStr(dbInicio.Empresa.EMP_CODIGO)+
                    '           AND T1.ENF_IT_NOTANUMBER =  ENF.ENF_NOTANUMBER                            '+
                    '           AND T1.EMP_CODIGO = ENF.EMP_CODIGO                                        '+
                    '           AND ENF_MODELO_NF IN (''01'',''55'',''1B'',''04'')                        '+
                    '           AND t1.FOR_CODIGO = enf.FOR_CODIGO                                        '+
                    '           AND ENF.ENF_ENTRADA BETWEEN '+  QuotedStr(DataAmericana(DateToStr(dataInicial)))+' AND '+QuotedStr(DataAmericana(DateToStr(dataFinal)))+') '+
                    ' group BY  t1.ENF_CFOP, t1.CST_IPI  '+
                    ' HAVING SUM(ENF_IT_VLIPI) > 0       '+
                    ' UNION ALL                          '+
                    ' SELECT t2.NTP_CFOP, ''50'', SUM(COALESCE(T2.NF_IPIBASE,0)) AS VALOR_BASE_IPI,  SUM(COALESCE(T2.NF_IPIVALOR,0))  '+
                    '  FROM nf_it01 T2                                                                                                '+
                    ' WHERE T2.NF_IT_NOTANUMER  IN (SELECT NF.nf_notanumber FROM nf0001 NF                                            '+
                    '           WHERE NF.EMP_CODIGO  = '+QuotedStr(dbInicio.Empresa.EMP_CODIGO)+
                    '           AND NF.EMP_CODIGO = T2.EMP_CODIGO  '+
                    '           AND NF_STATUS_NFE = ''A'' '+
                    '           AND NF_NUM_NFCE IS NULL '+
                    '           AND NF.NF_EMISSAO   BETWEEN  '+QuotedStr(DataAmericana(DateToStr(dataInicial)))+' AND '+QuotedStr(DataAmericana(DateToStr(dataFinal)))+') '+
                    ' GROUP BY t2.NTP_CFOP , 2             '+
                    ' HAVING SUM(COALESCE(T2.NF_IPIVALOR,0)) >0' );
            while not qAux.Eof do
            begin
              with RegistroE510New do
              begin
                CFOP :=  qAux.FieldByName('CFOP').AsString;
                CST_IPI := qAux.FieldByName('CST_IPI').AsString;
                VL_CONT_IPI := qAux.FieldByName('total_ipi').AsCurrency;
                VL_BC_IPI :=  qAux.FieldByName('total_base_ipi').AsCurrency;
                VL_IPI := qAux.FieldByName('total_ipi').AsCurrency;
                if MatchStr(COPY(CFOP,1,1) ,['5','6']) then //CFOP començando pelo 5  ou 6
                  deb_ipi := deb_ipi + VL_IPI;
                if MatchStr(COPY(CFOP,1,1) ,['1','2','3']) then //CFOP començando pelo 1 ou 2 ou 3
                  cred_ipi := cred_ipi + VL_IPI;



                qAux.Next;
              end;//fim do E510
            end;
            with RegistroE520New do
            begin
              saldo_ant := 0 ;
              saldo_ant := BuscaUmDadoSqlAsCurrency('select saldo_transportar from sped_apuracao_ipi '+
                                                   ' where ano = '+IntToStr(ano_ant) + ' and mes = '+IntToStr(mes_ant)+
                                                   ' and emp_codigo = '+ QuotedStr(dbinicio.Empresa.EMP_CODIGO) );              
              VL_SD_ANT_IPI := saldo_ant ;
              VL_DEB_IPI := deb_ipi;
              VL_CRED_IPI := cred_ipi;
              VL_OD_IPI := 0;
              VL_OC_IPI := 0;
              saldo_ipi :=  (VL_DEB_IPI +  VL_OD_IPI) - (VL_SD_ANT_IPI+ VL_CRED_IPI  + VL_OC_IPI);
              if saldo_ipi < 0 then
              begin
                VL_SC_IPI := saldo_ipi *(-1);
                VL_SD_IPI := 0 ;
              end
              else
              begin
                VL_SD_IPI := saldo_ipi;
                VL_SC_IPI := 0 ;

              end;
              cdsapuracaoIPI.Insert;
              cdsApuracaoIPIano.AsInteger := ano;
              cdsApuracaoIPImes.AsInteger := mes;
              cdsApuracaoIPIsaldo_transportar.AsFloat :=  VL_SC_IPI;
              cdsApuracaoIPIsaldo_recolher.AsFloat :=   VL_SD_IPI;
              cdsApuracaoIPI.Post;            
              
            end;  //fim do E520
          end; //fim do E500
        end; //fim do tipo atividade industrial que contempla E500 , E510 , E520
      end;
    end;  //FIM DO E001
  end;
  mmoSpedFiscal.Lines.Add('Terminou bloco E');
  Application.ProcessMessages;
end;

procedure TFrmSpedFiscal.BlocoK;

begin
// Bloco K.

  with ACBrSPEDFiscal1.Bloco_K do
  begin
    with RegistroK001New do
    begin
      if not ( chkBlocoK.Checked OR chk280.Checked) then
        IND_MOV := imSemDados
      else
      begin

        IND_MOV := imComDados;
        with RegistroK100New do
        begin
          DT_INI := dataInicial;
          DT_FIN := EndOfAMonth(StrToInt(edtAnoInicial.Text),  StrToInt(edtMesInicial.Text));
        end;
        if chkBlocoK.Checked then
        Begin
          Inventariok200;
          EstoqueTerceirok200;
        End;
        if chk280.Checked then
          CorrecaoEstoqueK280;

      end;
    end;
  end;
   Application.ProcessMessages;
   mmoSpedFiscal.Lines.Add('Terminou bloco K');
  Application.ProcessMessages;
end;

procedure TFrmSpedFiscal.BlocoH;
var
   rValorTotalEstoque:Double;
begin
  rValorTotalEstoque := 0;
   CdsEstoque.Close;
   CdsEstoque.CommandText := 'SELECT distinct '+
                             '    T1.prd_refer, T1.prd_codigo, '+
                             '    T1.prd_und, '+
                             IIF (cbAlmoxarifado.idRetorno = '',
                               '    (select SALDO FROM pCd_kardex_saldo_fisico('+QuotedStr(dbInicio.Empresa.EMP_CODIGO)+',T1.prd_codigo,'''+DataAmericana(DateToStr(UltimoDiaMes(StrToDate('01/'+PrencheZeroEsquerda(edtMesInicial.Text,2)+'/'+edtAnoInicial.Text),False))) +' 23:59:59'') ) as SALDO, '
                             ,
                               '    (select SALDO FROM pCd_kardex_saldo_fisico_amx('+QuotedStr(dbInicio.Empresa.EMP_CODIGO)+ ',T1.prd_codigo,'''+DataAmericana(DateToStr(UltimoDiaMes(StrToDate('01/'+PrencheZeroEsquerda(edtMesInicial.Text,2)+'/'+edtAnoInicial.Text),False))) +' 23:59:59'','+ QuotedStr( edAlmoxarifado.Text) +'   ) ) as SALDO, '
                             )  +
                             '    T1.PRD_PMEDIO, '+
                             '    T1.prd_descri, '+
                             '    T1.SPED_TIPCODIGO   '+
                             '   FROM '+
                             ' prd0000 T1 '+
                             iif(DBInicio.GetParametroSistema('PMT_MULTIPLAS_IE') = 'S' , ' join KARDEX k on (k.prd_codigo = t1.prd_codigo)', '' ) +
                             iif(DBInicio.GetParametroSistema('PMT_MULTIPLAS_IE') = 'S' , ' join ALMOX0000 a on (a.amx_codigo = k.amx_codigo)', '' ) +
                             ' WHERE T1.prd_status = ''A'''+
                             iif(DBInicio.GetParametroSistema('PMT_MULTIPLAS_IE') = 'S' , ' AND a.amx_codigo = ' + QuotedStr(edAlmoxarifadoK.Text) , '' ) +
                             ConcatSe(' and t1.', DBInicio.ExclusivoSql('PRODUTOS'))+
                             IIF(cbTipo.idRetorno <>'' ,  ' AND PTI_CODIGO = '+QuotedStr(cbTipo.idRetorno) ,'')+
                             IIF(CbGrupo.idRetorno <> '', ' AND PGR_CODIGO = '+QuotedStr(CbGrupo.idRetorno),'')+
                             IIF(CBLinha.idRetorno <> '', ' AND LIN_CODIGO = '+QuotedStr(CBLinha.idRetorno),'')

                              ;


   if DBInicio.IsDesenvolvimento then
    CopyToClipboard(cdsEstoque.commandText);

   CdsEstoque.Open;
  {*BLOCO H*}
  with ACBrSPEDFiscal1.Bloco_H do
  begin
    with RegistroH001New do
    begin
      if (not chkBlocoH.Checked) then
      begin
        IND_MOV := imSemDados;
      end
      else
      begin
        IND_MOV := imComDados;
        CdsEstoque.First;
        while (not CdsEstoque.Eof) do
        begin
          if (CdsEstoque.FieldByName('SALDO').AsCurrency > 0) then
            rValorTotalEstoque := rValorTotalEstoque + (CdsEstoque.FieldByName('SALDO').AsCurrency * CdsEstoque.FieldByName('PRD_PMEDIO').AsCurrency);
          CdsEstoque.Next;
        end;
        //H0005 - Totais do Inventário
        if (rValorTotalEstoque > 0) then
        begin
          with RegistroH005New do
          begin
            DT_INV := UltimoDiaMes(StrToDate('01/' + PrencheZeroEsquerda(edtMesInicial.Text, 2) + '/' + edtAnoInicial.Text), False);
            VL_INV := rValorTotalEstoque;
            case (cbbMotivoBlocoH.ItemIndex) of
              0: MOT_INV := miFinalPeriodo;
              1: MOT_INV := miMudancaTributacao;
              2: MOT_INV := miBaixaCadastral;
              3: MOT_INV := miRegimePagamento;
              4: MOT_INV := miDeterminacaoFiscos;
            end;

            CdsEstoque.First; // estoque proprio
            while (not CdsEstoque.Eof) do
            begin
              if (CdsEstoque.FieldByName('SALDO').AsCurrency > 0) then
              begin
                with RegistroH010New do
                begin
                  // COD_ITEM := CdsEstoque.FieldByName('prd_codigo').AsString;
                  COD_ITEM := CdsEstoque.FieldByName('prd_refer').AsString;
                  if CdsEstoque.FieldByName('prd_und').AsString = 'PR' then
                    UNID := 'PAR'
                  else
                    UNID := CdsEstoque.FieldByName('prd_und').AsString;
                  QTD := CdsEstoque.FieldByName('SALDO').AsCurrency;
                  VL_UNIT := CdsEstoque.FieldByName('PRD_PMEDIO').AsCurrency;
                  VL_ITEM := CdsEstoque.FieldByName('SALDO').AsCurrency * CdsEstoque.FieldByName('PRD_PMEDIO').AsCurrency;
                  IND_PROP := piInformante;
                  //Adicionar150();
                  COD_PART := '';
                  TXT_COMPL := trim(RemoveCaracteresInvalidos(CdsEstoque.FieldByName('prd_descri').AsString));
                  COD_CTA := '001';
                  VL_ITEM_IR := VL_ITEM;
                  // Adicionar200(CdsEstoque.FieldByName('prd_codigo').AsString);
                  Adicionar200(CdsEstoque.FieldByName('prd_refer').AsString);
                end;
              end;
              CdsEstoque.Next;
            end;
            //estoque de terceiro
            CdsEstoqueTerceiro.First;
            while not CdsEstoqueTerceiro.Eof do
            begin
              with RegistroH010New do
              begin
                // COD_ITEM := CdsEstoqueTerceiro.FieldByName('prd_codigo').AsString;
                COD_ITEM := CdsEstoqueTerceiro.FieldByName('prd_refer').AsString;
                if CdsEstoqueTerceiro.FieldByName('prd_und').AsString = 'PR' then
                  UNID := 'PAR'
                else
                  UNID := CdsEstoqueTerceiro.FieldByName('prd_und').AsString;
                QTD := CdsEstoqueTerceiro.FieldByName('KAR_SALDO').AsCurrency;
                VL_UNIT := CdsEstoqueTerceiro.FieldByName('PRD_PMEDIO').AsCurrency;
                VL_ITEM := CdsEstoqueTerceiro.FieldByName('KAR_SALDO').AsCurrency * CdsEstoqueTerceiro.FieldByName('PRD_PMEDIO').AsCurrency;
                //  piInformanteNoTerceiro, // 1- Item de propriedade do informante em posse de terceiros;
               //   piTerceiroNoInformante  // 2- Item de propriedade de terceiros em posse do informante
                if CdsEstoqueTerceiro.FieldByName('amx_terceiros').AsString = 'S' then
                  IND_PROP := piTerceiroNoInformante
                else if CdsEstoqueTerceiro.FieldByName('amx_foraterceiros').AsString = 'S' then
                  IND_PROP := piInformanteNoTerceiro;
                COD_PART := CdsEstoqueTerceiro.FieldByName('COD_PART').AsString;
                TXT_COMPL := trim(RemoveCaracteresInvalidos(CdsEstoqueTerceiro.FieldByName('prd_descri').AsString));
                COD_CTA := '001';
                VL_ITEM_IR := VL_ITEM;
              end;

              CdsEstoqueTerceiro.Next;
            end;

          end;
        end;
      end;
    end;
  end;
  mmoSpedFiscal.Lines.Add('Terminou bloco H');
  Application.ProcessMessages;
end;

procedure TFrmSpedFiscal.Bloco0;
var
  clone: TClientDataSet;
  codigo_item, unidadeEquivalente : string;
  j : integer;
begin
  //BLOCO 0
  with ACBrSPEDFiscal1.Bloco_0 do
  begin
    // Dados da Empresa
    with Registro0000New do
    begin
      if cbbVersao.Text = 'V116' then
        COD_VER := vlVersao116
      else
      if cbbVersao.Text = 'V115' then
        COD_VER := vlVersao115
      else
      if cbbVersao.Text = 'V114' then
        COD_VER := vlVersao114
      else
      if cbbVersao.Text = 'V113' then
        COD_VER := vlVersao113
      else
      if cbbVersao.Text = 'V112' then
        COD_VER := vlVersao112
      else
      if (cbbVersao.Text = 'V111') then
        COD_VER := vlVersao111
      else
      if (cbbVersao.Text = 'V110') then
        COD_VER := vlVersao110;

      COD_FIN := xTipoEscrituracao;
      {finalidade}
      DT_INI := StrToDate('01/' + PrencheZeroEsquerda(edtMesInicial.Text, 2) + '/' + edtAnoInicial.Text);
      DT_FIN := UltimoDiaMes(StrToDate('01/' + PrencheZeroEsquerda(edtMesInicial.Text, 2) + '/' + edtAnoInicial.Text), False);
      NOME := dbinicio.Empresa.RAZAO;
      {razão social}
      CNPJ := RetirarMascaraCNPJ_INSC(dbinicio.Empresa.CNPJ_CNPF);
      {cnpj}
      CPF := '';
      UF := CdsEmpresa.FieldByName('UF').AsString;
      {}
      if (chkBlocoK.Checked) and (DBInicio.GetParametroSistema('PMT_MULTIPLAS_IE') = 'S') then
      begin
        OpenAux('SELECT emi.EMI_IE ' +
                ' FROM ALMOX0000 al ' +
                '   JOIN EMP_MULTIPLAS_IE emi ON al.EMI_CODIGO = emi.EMI_CODIGO ' +
                '    WHERE al.AMX_CODIGO = ' +  edAlmoxarifadoK.Text
                );
        IE := RetirarMascaraCNPJ_INSC(qAux.FieldByName('EMI_IE').AsString);
      end
      else
        IE := RetirarMascaraCNPJ_INSC(CdsEmpresa.FieldByName('IE').AsString);
      COD_MUN := StrToInt(copy(IIF(CdsEmpresa.FieldByName('CODIGO_MUNICIPIO_IBGE').AsString <> '', CdsEmpresa.FieldByName('CODIGO_MUNICIPIO_IBGE').AsString, '0000000'), 1, 7));
      IM := RetirarMascaraCNPJ_INSC(dbinicio.Empresa.INS_MUNICIPAL);
      SUFRAMA := CdsEmpresa.FieldByName('SUFRAMA').AsString;
      IND_PERFIL := IIF(cbbPerfil.ItemIndex = 0, pfPerfilA, IIF(cbbPerfil.ItemIndex = 1, pfPerfilB, pfPerfilC));
      IND_ATIV := xIndicadorAtividadeEmpresa;
      with Registro0001New do
      begin
        IND_MOV := imComDados;

        with Registro0005New do
        begin
          FANTASIA := dbinicio.Empresa.FANTASIA;
          CEP := RetiraTodaMascara(dbinicio.Empresa.CEP);
          ENDERECO := RetornaEnderecoSemNumero(dbInicio.Empresa.endereco);
          NUM := RetornaNumeroEndereco(dbInicio.Empresa.Endereco);
          COMPL := '';
          BAIRRO := dbinicio.Empresa.BAIRRO;
          FONE := OnlyNumber(dbinicio.Empresa.FONE);
          FAX := OnlyNumber(dbinicio.Empresa.FAX);
          EMAIL := dbinicio.Empresa.EMAIL;
        end;
        // FILHO - Dados Inscrições da ST em outros estados
        // uma para muitos   - tela aliquota icms  dos estados
        Cds0015.First;
        while (not Cds0015.Eof) do
        begin
          with Registro0015New do
          begin
            UF_ST := Cds0015.FieldByName('UNIDADE').AsString;
            IE_ST := RetirarMascaraCNPJ_INSC(Cds0015.FieldByName('INSCRICAO').AsString);
          end;
          Cds0015.Next;
          Application.ProcessMessages;
        end;
        // FILHO - Dados do contador.
        with Registro0100New do
        begin
          NOME := CdsContator.FieldByName('NOME').AsString;
          CPF := RetiraTodaMascara(CdsContator.FieldByName('CPF').AsString);
          CRC := CdsContator.FieldByName('CRC').AsString;
          CNPJ := RetiraTodaMascara(CdsContator.FieldByName('CNPJ').AsString);
          CEP := RetiraTodaMascara(CdsContator.FieldByName('CEP').AsString);
          ENDERECO := CdsContator.FieldByName('ENDERECO').AsString;
          NUM := CdsContator.FieldByName('NUMERO').AsString;
          COMPL := CdsContator.FieldByName('COMPLEMENTO').AsString;
          BAIRRO := CdsContator.FieldByName('BAIRRO').AsString;
          FONE := OnlyNumber(CdsContator.FieldByName('FONE').AsString);
          FAX := OnlyNumber(CdsContator.FieldByName('FAX').AsString);
          EMAIL := CdsContator.FieldByName('EMAIL').AsString;
          COD_MUN := StrToInt(copy(IIF(CdsContator.FieldByName('CODIGO_MUNICIPIO_IBGE').AsString <> '', CdsContator.FieldByName('CODIGO_MUNICIPIO_IBGE').AsString, '0000000'), 1, 7));
        end;
        // Clientes e fornecedores por estabelecimento
        CdsParticipantes.Open;
        if not (CdsParticipantes.IsEmpty) then
        begin
          CdsParticipantes.First;
          while not CdsParticipantes.Eof do
          begin
            //0150 - Tabela de Cadastro do Participante
            if (CdsParticipantes.FieldByName('USADO').AsString) = 'S' then
            //(CdsParticipantes.FieldByName('CNPJ_CPF').AsString <> '') and (CdsParticipantes.FieldByName('CNPJ_CPF').AsString <> '00000000000') and (CdsParticipantes.FieldByName('CNPJ_CPF').AsString <> '00000000000000') then
            begin
              with Registro0150New do
              begin
                COD_PART := CdsParticipantes.FieldByName('CODIGO_SISTEMA').AsString;
                NOME := trim(CdsParticipantes.FieldByName('NOME').AsString);
                COD_PAIS := CdsParticipantes.FieldByName('CODIGO_PAIS').AsString;
                if CdsParticipantes.FieldByName('CODIGO_PAIS').AsString = '1058' then
                begin
                  CNPJ := RetiraTodaMascara(IIF(Length(CdsParticipantes.FieldByName('CNPJ_CPF').AsString) = 14, CdsParticipantes.FieldByName('CNPJ_CPF').AsString, ''));
                  CPF := RetiraTodaMascara(IIF(Length(CdsParticipantes.FieldByName('CNPJ_CPF').AsString) = 11, CdsParticipantes.FieldByName('CNPJ_CPF').AsString, ''));
                end;
                IE := ExtrairNumeros(CdsParticipantes.FieldByName('INSCRICAO').AsString);
                COD_MUN := StrToInt(copy(IIF(CdsParticipantes.FieldByName('CODIGO_MUNICIPIO_IBGE').AsString <> '', CdsParticipantes.FieldByName('CODIGO_MUNICIPIO_IBGE').AsString, '0000000'), 1, 7));
                SUFRAMA := CdsParticipantes.FieldByName('SUFRAMA').AsString;
                ENDERECO := trim(RetornaEnderecoSemNumero(CdsParticipantes.FieldByName('ENDERECO').AsString));
                NUM := RetornaNumeroEnderecoSomenteNumeros(CdsParticipantes.FieldByName('ENDERECO').AsString);
                COMPL := '';
                BAIRRO := Trim(CdsParticipantes.FieldByName('BAIRRO').AsString);
                      { alterações do participantes  }
                BuscaAlteracoesParticipantes(CdsParticipantes.FieldByName('CODIGO_SISTEMA').AsString);
                // REGISTRO 0175: ALTERAÇÃO DA TABELA DE CADASTRO DE PARTICIPANTE
                if not cdsAlterParticipante.IsEmpty then
                begin
                  cdsAlterParticipante.First;
                  while not cdsAlterParticipante.Eof do
                  begin
                    with Registro0175New do
                    begin
                      cdsAlterPartEnviados.Insert;
                      cdsAlterPartEnviados.FieldByName('TIPO').AsString :=  cdsAlterParticipante.FieldByName('tipo').AsString;
                      cdsAlterPartEnviados.FieldByName('registro').AsInteger := cdsAlterParticipante.FieldByName('registro').AsInteger;
                      cdsAlterPartEnviados.Post;
                      DT_ALT := cdsAlterParticipante.FieldByName('DT_ALT').AsDateTime;
                      if MatchStr(cdsAlterParticipante.FieldByName('CAMPO').AsString, ['FOR_RAZAO', 'CLI_RAZAO']) then
                        NR_CAMPO := '03'
                      else {nome do participante - campo 3}
                      if MatchStr(cdsAlterParticipante.FieldByName('CAMPO').AsString, ['PAI_CODIGO']) then
                        NR_CAMPO := '04'
                      else {codigo do pais - campo 4}
                      if MatchStr(cdsAlterParticipante.FieldByName('CAMPO').AsString, ['FOR_CGC', 'CLI_CGC']) then
                      begin
                        if Length(cdsAlterParticipante.FieldByName('CONT_ANT').AsString) = 14 then
                          NR_CAMPO := '05'
                        else
                          {cnpj 05}
                          NR_CAMPO := '06';
                      end
                      else {cpf 06}
                      if cdsAlterParticipante.FieldByName('CAMPO').AsString = 'CID_CODIGO' then
                        NR_CAMPO := '08'
                      else {codigo do municipio }
                      if MatchStr(cdsAlterParticipante.FieldByName('CAMPO').AsString, ['FOR_SUFRAMA', 'CLI_SUFRAMA']) then
                        NR_CAMPO := '09'
                      else {codigo do suframa }
                      if MatchStr(cdsAlterParticipante.FieldByName('CAMPO').AsString, ['FOR_ENDERE', 'CLI_ENDERE']) then
                        NR_CAMPO := '10'
                      else {endereço }
                      if MatchStr(cdsAlterParticipante.FieldByName('CAMPO').AsString, ['FOR_BAIRRO', 'CLI_BAIRRO']) then
                        NR_CAMPO := '13';
                      {bairro }
                      {adjutor não tem numero nem complemento, guarda junto ao endereço}
                      CONT_ANT := cdsAlterParticipante.FieldByName('CONT_ANT').AsString;
                    end;
                    {fim de registro de alterações do participantes }
                    cdsAlterParticipante.Next;
                  end;
                end;

              end; //FIM DO BLOCO 0150

            end;

            CdsParticipantes.Next;

          end;
        end;
        Application.ProcessMessages;
        //ATIVO IMOBILIZADO NÃO VAI PRECISAR
//      if not cdsAtivoImobilizado.IsEmpty then
//      begin
//        cdsAtivoImobilizado.First;
//        while not cdsAtivoImobilizado.Eof do
//        begin
//          with Registro0300New do
//          {ATIVO IMOBILIZADO - BENS E COMPONET}
//          begin
//
//            //Adicionar300(cdsAtivoImobilizado.FieldByName('PRD_CODIGO').AsString);
//            COD_IND_BEM := cdsAtivoImobilizado.FieldByName('PRD_CODIGO').AsString;
//            IDENT_MERC := 1;
//            {bens}
//            DESCR_ITEM := trim(RemoveCaracteresInvalidos(cdsAtivoImobilizado.FieldByName('PRD_DESCRI').AsString));
//            COD_PRNC := '';
//            COD_CTA := cdsAtivoImobilizado.FieldByName('CCT_CODIGO').AsString;
//            //informações complementares do bem
//            with Registro0305New do
//            begin
//              COD_CCUS := cdsAtivoImobilizado.FieldByName('PCX_CODIGO').AsString;
//              FUNC := cdsAtivoImobilizado.FieldByName('PRD_COMPL').AsString;
//            end;
//
//
//          end;   //fim do 0300
//          cdsAtivoImobilizado.Next;
//        end;
//      end;

        //0200 produtos/serviços // adicionar a ficha tecnica dos usados nos blocos
        while not CdsProdutosServicos.Eof do
        begin
          if (CdsProdutosServicos.FieldByName('USADO').AsString = 'S') and (CdsProdutosServicos.FieldByName('Ficha').AsInteger > 0) then
          begin
            codigo_item := CdsProdutosServicos.FieldByName('CODIGO_ITEM').AsString;
            // incluindo insumos não puxados pelo select
            OpenAux(' SELECT pr.prd_refer CODIGO_ITEM, PR.PRD_CODIGO,  FTI_UC, FTI_PERDA, ' +
             'PRD_DESCRI DESCRICAO_ITEM , PRD_CODBARRA CODIGO_BARRAS, pr.PRD_UND AS UNIDADE_MEDIDA, pr.SPED_TIPCODIGO AS TIPO, ' +
              'IPI_CODIGO AS CODIGO_NCM, pr.SPED_GENCODIGO AS CODIGO_GENERO,   ' + ' case                               ' +
               '  when (pr.PRD_ALIQICM > 0) then    ' + '      pr.PRD_ALIQICM                ' +
                '  else                              ' +
                '     (SELECT T3.ICM_ALIQ FROM ICM0000 T3 WHERE T3.ICM_DESTINO =          ' +
                 ' (SELECT T4.EMP_UF FROM EMP0000 T4 WHERE T4.EMP_CODIGO = pr.EMP_CODIGO)'+ ConcatSe (' and ',dbInicio.ExclusivoSql('ICMS')) +' ) ' +
                 ' END AS ALIQUOTA_ICMS, pr.CEST_COD                                       ' +
                  ' FROM FTC_IT01 ftc JOIN PRD0000 PR ON (PR.PRD_REFER = FTC.PRD_REFER_ITENS AND PR.EMP_CODIGO = FTC.EMP_CODIGO)  ' +
                   ' WHERE ftc.prd_refer = ' + QuotedStr(CdsProdutosServicos.FieldByName('PRD_REFER').AsString));
            while not qAux.Eof do
            begin
              Adicionar200(qAux.FieldByName('CODIGO_ITEM').AsString);
//              CdsProdutosServicos.Edit;
//              CdsProdutosServicos.FieldByName('FTI_UC').AsFloat := qAux.FieldByName('FTI_UC').AsFloat;
//              CdsProdutosServicos.FieldByName('FTI_PERDA').AsFloat := qAux.FieldByName('FTI_PERDA').AsFloat;
//              CdsProdutosServicos.Post;
              qaux.Next;
            end;
            if codigo_item <> '' then
               CdsProdutosServicos.Locate('CODIGO_ITEM',codigo_item,[] );
            codigo_item := '';
          end;
          CdsProdutosServicos.Next;
        end;

        CdsProdutosServicos.First;
        while (not CdsProdutosServicos.Eof) do
        begin
          // 0200 - Tabela de Identificação do Item (Produtos e Serviços)
          if CdsProdutosServicos.FieldByName('USADO').AsString = 'S' then //foi usado nos blocos
          Begin
            with Registro0200New do
            begin
              COD_ITEM := CdsProdutosServicos.FieldByName('CODIGO_ITEM').AsString;
              DESCR_ITEM := Trim(RemoveCaracteresInvalidos(CdsProdutosServicos.FieldByName('DESCRICAO_ITEM').AsString));
              COD_BARRA := CdsProdutosServicos.FieldByName('CODIGO_BARRAS').AsString;
              COD_ANT_ITEM := '';
              if CdsProdutosServicos.FieldByName('UNIDADE_MEDIDA').AsString = 'PR' then //PAR OU PR é o mesmo
                UNID_INV := 'PAR'
              Else
                UNID_INV := CdsProdutosServicos.FieldByName('UNIDADE_MEDIDA').AsString;

              //DE 00 A 10 E MAIS 99 OUTROS
              TIPO_ITEM := StrToTipoItem(CdsProdutosServicos.FieldByName('TIPO').AsString);
              if CdsProdutosServicos.FieldByName('Tipo').AsString = '' then
                Merros.Lines.Add('Produto sem tipo do SPED, referência: ' + CdsProdutosServicos.FieldByName('PRD_REFER').AsString );

              If CdsProdutosServicos.FieldByName('CODIGO_NCM').AsString <> '99999999' then
                COD_NCM := CdsProdutosServicos.FieldByName('CODIGO_NCM').AsString;
              EX_IPI := '';
              if CdsProdutosServicos.FieldByName('Tipo').AsString = '00' then
              begin
                COD_GEN := '';
              end
              else if CdsProdutosServicos.FieldByName('CODIGO_GENERO').AsString = '' then
                Merros.Lines.Add('Produto sem Gênero do SPED, referência: ' + CdsProdutosServicos.FieldByName('PRD_REFER').AsString )
              else
                COD_GEN := CdsProdutosServicos.FieldByName('CODIGO_GENERO').AsString;

              COD_LST := CdsProdutosServicos.FieldByName('CODIGO_SERVICO').AsString;
              ALIQ_ICMS := CdsProdutosServicos.FieldByName('ALIQUOTA_ICMS').AsCurrency;
              CEST := CdsProdutosServicos.FieldByName('CEST_COD').AsString;
              {registro 205 }
              {alterações do itens }
              BuscaAlteracoesItem(CdsProdutosServicos.FieldByName('CODIGO_ITEM').AsString);
              cdsAlterItem.First;
              if not cdsAlterItem.IsEmpty then
                while not cdsAlterItem.Eof do
                begin
                  cdsAlterPrdEnviados.Insert;
                  cdsAlterPrdEnviados.FieldByName('registro').AsInteger :=  cdsAlterItem.FieldByName('PRDA_REGISTRO').AsInteger ;
                  cdsAlterPrdEnviados.Post;
                  with Registro0205New do
                  begin
                    DESCR_ANT_ITEM := cdsAlterItem.FieldByName('PRDA_VALOR_ANTERIOR').AsString;
                    DT_INI := cdsAlterItem.FieldByName('PRDA_DATAINI').AsDateTime;
                    DT_FIN := cdsAlterItem.FieldByName('PRDA_DATAFIM').AsDateTime;
                  end;
                  cdsAlterItem.Next;
                end;
              //fim do registro 205
              //FICHA TECNICA
              if (CdsProdutosServicos.FieldByName('Ficha').AsInteger > 0) and MatchStr(CdsProdutosServicos.FieldByName('TIPO').AsString,['3','4']) then
              begin
                 OpenAux(' SELECT pr.prd_refer CODIGO_ITEM, PR.PRD_CODIGO,  FTI_UC, FTI_PERDA, ' +
                 'PRD_DESCRI DESCRICAO_ITEM , PRD_CODBARRA CODIGO_BARRAS, pr.PRD_UND AS UNIDADE_MEDIDA, pr.SPED_TIPCODIGO AS TIPO, ' +
                  'IPI_CODIGO AS CODIGO_NCM, pr.SPED_GENCODIGO AS CODIGO_GENERO,   ' + ' case                               ' +
                   '  when (pr.PRD_ALIQICM > 0) then    ' + '      pr.PRD_ALIQICM                ' +
                    '  else                              ' +
                    '     (SELECT T3.ICM_ALIQ FROM ICM0000 T3 WHERE T3.ICM_DESTINO =          ' +
                     ' (SELECT T4.EMP_UF FROM EMP0000 T4 WHERE T4.EMP_CODIGO = pr.EMP_CODIGO)'+ ConcatSe (' and ',dbInicio.ExclusivoSql('ICMS'))+') ' +
                     ' END AS ALIQUOTA_ICMS, pr.CEST_COD                                       ' +
                      ' FROM FTC_IT01 ftc JOIN PRD0000 PR ON (PR.PRD_REFER = FTC.PRD_REFER_ITENS AND PR.EMP_CODIGO = FTC.EMP_CODIGO)  ' +
                       ' WHERE ftc.prd_refer = ' + QuotedStr(CdsProdutosServicos.FieldByName('PRD_REFER').AsString));
                qAux.First;
                while not qAux.Eof do
                begin
                  with Registro0210New do
                  begin
                    COD_ITEM_COMP := qAux.FieldByName('CODIGO_ITEM').AsString;
                    QTD_COMP := qAux.FieldByName('FTI_UC').AsFloat;
                    PERDA := qAux.FieldByName('FTI_PERDA').AsFloat;
                  end; // fim registro 0210
                  qAux.Next;
                end;
              end;
              //registro 0220 - fatores de conversao
//              OpenAux('SELECT DISTINCT FAT_CONV, UNID_CONV from PRD_FATORCONVERSAO WHERE PRD_CODIGO = '+
//                       QuotedStr(CdsProdutosServicos.FieldByName('CODIGO_ITEM').AsString));

              OpenAux(
                'SELECT DISTINCT FAT_CONV, UNID_CONV, PRD_CODBARRA ' +
                ' FROM PRD_FATORCONVERSAO fc ' +
                ' JOIN PRD_UNIDADE_EQUIVALENTE ue ON (ue.PRD_UNISIGLA = fc.UNID_CONV) ' +
                ' join prd0000 pr on (pr.prd_codigo = fc.prd_codigo)    ' +
//                ' WHERE PRD_CODIGO = ' +
                ' WHERE pr.PRD_refer = ' +
                QuotedStr(CdsProdutosServicos.FieldByName('CODIGO_ITEM').AsString)
              );
              qAux.First;
              // Merros.Lines.Add('Nome do contador não preenchido');
              while not qAux.Eof do
              begin
                with Registro0220New do
                begin
                  unidadeEquivalente := BuscaUmDadoSqlAsString(
                    'SELECT PRD_UNISIGLA FROM PRD_UNIDADE_EQUIVALENTE WHERE PRD_UNIEQUIVALENTE = ' +
                    QuotedStr(qAux.FieldByName('UNID_CONV').AsString) +
                    iif(DBInicio.Exclusivo('TABELAS'), ' AND EMP_CODIGO = ' + QuotedStr(DBInicio.Emp_Codigo), '')
                  );
                  if unidadeEquivalente = '' then
                    unidadeEquivalente := qAux.FieldByName('UNID_CONV').AsString;

                  UNID_CONV := unidadeEquivalente;
                  FAT_CONV  := qAux.FieldByName('FAT_CONV').AsFloat;
                  COD_BARRA := qAux.FieldByName('PRD_CODBARRA').AsString;
                  if not Adicionar190(qAux.FieldByName('UNID_CONV').AsString) then
                    Merros.Lines.Add('Unidade de medida não cadastrada : ' + qAux.FieldByName('UNID_CONV').AsString);
                  qAux.Next;
                end;
              end;
            end;  //fim do registro 0200
          end; //Fim-if  if CdsProdutosServicos.FieldByName('USADO') = 'S'

          CdsProdutosServicos.Next;
          Application.ProcessMessages;
        end;

      end;



      with Registro0002New do
      begin
        CLAS_ESTAB_IND := BuscaUmDadoSqlAsString('SELECT EMP_CLAS_ESTAB_IND FROM EMP0000 WHERE EMP_CODIGO = ' + QuotedStr(DBInicio.EMP_CODIGO) ) ;
      end;




       // unidade de medidas depois porque ele vai verrer ainda os produtos e depois diz quais foram as unidades utilizadas
       // 0190 - Identificação das Unidades de Medida
        CdsUnidadeMedida.First;
        while (not CdsUnidadeMedida.Eof) do
        begin
          if CdsUnidadeMedida.FieldByName('USADO').AsString = 'S' then
          begin
            with Registro0190New do
            begin
              UNID := CdsUnidadeMedida.FieldByName('UNIDADE_SIGLA').AsString;
              DESCR := CdsUnidadeMedida.FieldByName('UNIDADE_DESCRICAO').AsString;
            end;
          end;
          //proximo
          CdsUnidadeMedida.Next;
          Application.ProcessMessages;
        end;
      //FILHO - REGISTRO 0400: natureza da operação
      CdsNaturezaOperacao.First;
      while (not CdsNaturezaOperacao.Eof) do
      begin
        if CdsNaturezaOperacao.FieldByName('USADO').AsString = 'S' then
        begin
          with Registro0400New do
          begin
            COD_NAT := CdsNaturezaOperacao.FieldByName('OPE_CODIGO').AsString;
            DESCR_NAT := Trim(CdsNaturezaOperacao.FieldByName('OPE_DESCRI').AsString) + '.';
          end;
        end;
        CdsNaturezaOperacao.Next;
      end;



      // registro 0450

      for j := 0 to Length(registro0450) -1 do
      begin
        if registro0450[j, 1] = '' then
          Continue;
        with Registro0450New do
        begin
          COD_INF := registro0450[j, 0] ;
          TXT := registro0450[j, 1];
        end;
      end;




      // FILHO - REGISTRO 0500: PLANO DE CONTAS CONTÁBEIS
      if not cdsPlanoContabil.IsEmpty then
      begin
        cdsPlanoContabil.First;
        while not cdsPlanoContabil.Eof do
        begin
          with Registro0500New do
          begin
            DT_ALT := dataFinal; // cdsPlanoContabil.FieldByName('DT_ALT').AsDateTime;
            COD_NAT_CC := '01';
            IND_CTA := 'S';
            NIVEL := IntToStr(ContaCaracteres(cdsPlanoContabil.FieldByName('CCT_NIVEL').AsString, '.') + 1);
            COD_CTA := cdsPlanoContabil.FieldByName('CCT_CODIGO').asString;
            NOME_CTA := cdsPlanoContabil.FieldByName('CCT_DESCRI').asString;
          end;
          cdsPlanoContabil.Next;
        end;
      end;
      {REGISTRO 0600: CENTRO DE CUSTOS}
      if not cdsCentroCusto.IsEmpty then
      begin
        cdsCentroCusto.First;
        while not cdsCentroCusto.Eof do
        begin
          with Registro0600New do
          begin
            DT_ALT := cdsCentroCusto.FieldByName('PCX_INICIO').AsDateTime;
            COD_CCUS := cdsCentroCusto.FieldByName('PCX_CODIGO').AsString;
            CCUS := cdsCentroCusto.FieldByName('PCX_DESCRI').AsString;
          end;
          cdsCentroCusto.Next;
        end;
      end;
    end;
  end;
  mmoSpedFiscal.Lines.Add('Terminou bloco 0');
  Application.ProcessMessages;
end;

procedure TFrmSpedFiscal.GeraFiscal;
var Tasks: array  of ITask;
   CapturedException : Exception;
   procedure PreparaArquivo;
   begin
      //Adiciona Informações no Componente
      ACBrSPEDFiscal1.Arquivo := 'SpedFiscal'+edtMesInicial.Text+edtAnoInicial.Text;
      ACBrSPEDFiscal1.Path := edtLocal.Text+'\Fiscal';
      //Verifica se o arquivo existe se existir deleta
      if FileExists( ACBrSPEDFiscal1.Path + ACBrSPEDFiscal1.Arquivo ) then
         DeleteFile( ACBrSPEDFiscal1.Path + ACBrSPEDFiscal1.Arquivo );
      //Preparação do Componente
      with ACBrSPEDFiscal1 do
         begin
            DT_INI :=  StartOfAMonth(StrToInt(edtAnoInicial.Text),  StrToInt(edtMesInicial.Text));
            DT_FIN :=  EndOfAMonth(StrToInt(edtAnoInicial.Text),  StrToInt(edtMesInicial.Text));
            IniciaGeracao;
         end;
      with ACBrSPEDFiscal1 do
         begin
            LinhasBuffer := StrToIntDef( '1000', 0 );
         end;
      LoadToMemoFiscal;
   end;
begin
   //Inicializa Informações Necessárias do componente

   PreparaArquivo;
   SetLength(tasks,6);

   BlocoC;
   BlocoD;
   BlocoE;

     {*BLOCO G*}
     with ACBrSPEDFiscal1.Bloco_G do
     begin
        with RegistroG001New do
        begin
           IND_MOV := imSemDados;
        end;
     end;
  BlocoH;
  BlocoK;

  Bloco0;


  Application.ProcessMessages;
   (*BLOCO 1*)

   with ACBrSPEDFiscal1.Bloco_1 do
   begin
      with Registro1001New do
      begin
        if not ChkBloco1.Checked then
          IND_MOV := imSemDados
        else
        begin
          IND_MOV := imComDados;
          with Registro1010New do
          begin
            IND_EXP   := iif(cdsperguntas1010IND_EXP.AsString = '', 'N',cdsperguntas1010IND_EXP.AsString); // Reg. 1100 - Ocorreu averbação (conclusão) de exportação no período:
            IND_CCRF  := iif(cdsperguntas1010IND_CCRF.AsString = '', 'N',cdsperguntas1010IND_CCRF.AsString);; // Reg. 1200 – Existem informações acerca de créditos de ICMS a serem controlados, definidos pela Sefaz:
            IND_COMB  := iif(cdsperguntas1010IND_COMB.AsString = '', 'N',cdsperguntas1010IND_COMB.AsString);; // Reg. 1300 – É comercio varejista de combustíveis:
            IND_USINA := iif(cdsperguntas1010IND_USINA.AsString = '', 'N',cdsperguntas1010IND_USINA.AsString);; // Reg. 1390 – Usinas de açúcar e/álcool – O estabelecimento é produtor de açúcar e/ou álcool carburante:
            IND_VA    := iif(cdsperguntas1010IND_VA.AsString = '', 'N',cdsperguntas1010IND_VA.AsString);; // Reg. 1400 – Existem informações a serem prestadas neste registro e o registro é obrigatório em sua Unidade da Federação:
            IND_EE    := iif(cdsperguntas1010IND_EE.AsString = '', 'N',cdsperguntas1010IND_EE.AsString);; // Reg. 1500 - A empresa é distribuidora de energia e ocorreu fornecimento de energia elétrica para consumidores de outra UF:
            IND_CART  := iif(cdsperguntas1010IND_CART.AsString = '', 'N',cdsperguntas1010IND_CART.AsString);; // Reg. 1600 - Realizou vendas com Cartão de Crédito ou de débito:
            IND_FORM  := iif(cdsperguntas1010IND_FORM.AsString = '', 'N',cdsperguntas1010IND_FORM.AsString);; // Reg. 1700 - É obrigatório em sua unidade da federação o controle de utilização de documentos  fiscais em papel:
            IND_AER   := iif(cdsperguntas1010IND_AER.AsString = '', 'N',cdsperguntas1010IND_AER.AsString);; // Reg. 1800 – A empresa prestou serviços de transporte aéreo de cargas e de passageiros:
            IND_GIAF1 := iif(cdsperguntas1010IND_GIAF1.AsString = '', 'N',cdsperguntas1010IND_GIAF1.AsString);  //]REG 1960
            IND_GIAF3 := iif(cdsperguntas1010IND_GIAF3.AsString = '', 'N',cdsperguntas1010IND_GIAF3.AsString); //REG 1970
            IND_GIAF4 := iif(cdsperguntas1010IND_GIAF4.AsString = '', 'N',cdsperguntas1010IND_GIAF4.AsString); //1980

          end;
        end;

      end;
      mmoSpedFiscal.Lines.Add('Terminou bloco 1');
      Application.ProcessMessages;
   end;
  mmoSpedFiscal.Lines.Add('Escrevendo sped');
  Application.ProcessMessages;
  with ACBrSPEDFiscal1 do
  begin
    WriteBloco_0;
    mmoSpedFiscal.Lines.Add('Escrevendo sped bloco 0');
    Application.ProcessMessages;
    WriteBloco_C(true);
    mmoSpedFiscal.Lines.Add('Escrevendo sped bloco C');
    Application.ProcessMessages;
    WriteBloco_D;
    mmoSpedFiscal.Lines.Add('Escrevendo sped bloco D');
    Application.ProcessMessages;
    WriteBloco_E;
    mmoSpedFiscal.Lines.Add('Escrevendo sped bloco E');
    Application.ProcessMessages;
    WriteBloco_G;
    mmoSpedFiscal.Lines.Add('Escrevendo sped bloco G');
    Application.ProcessMessages;
    WriteBloco_H;
    mmoSpedFiscal.Lines.Add('Escrevendo sped bloco H');
    Application.ProcessMessages;
    WriteBloco_K;
    mmoSpedFiscal.Lines.Add('Escrevendo sped bloco K');
    Application.ProcessMessages;
    WriteBloco_1;
    mmoSpedFiscal.Lines.Add('Escrevendo sped bloco 1');
    Application.ProcessMessages;
    WriteBloco_9;
    mmoSpedFiscal.Lines.Add('Escrevendo sped bloco 9');
    Application.ProcessMessages;
  end;



   // Método que gera o arquivo TXT.
   ACBrSPEDFiscal1.SaveFileTXT ;

   // Carrega o arquivo TXT no memo.
   LoadToMemoFiscal;

end;

procedure TFrmSpedFiscal.GravarAlteracoesitemEnviados;
begin
 cdsAlterPrdEnviados.First;
 while not cdsAlterPrdEnviados.Eof do
 begin
  ExecSql('UPDATE  PRD0000_ALTER  '+
          ' SET PRDA_SPED_DTENVIADO = '+ QuotedStr(DataAmericana(DateToStr(dataInicial))) +
          ' WHERE PRDA_REGISTRO = '+ IntToStr(cdsAlterPrdEnviados.FieldByName('REGISTRO').AsInteger ) );
  cdsAlterPrdEnviados.Next;
 end;

end;

procedure TFrmSpedFiscal.GravarAlteracoesParticipantesEnviados;
begin
 cdsAlterPartEnviados.First;
 while not cdsAlterPartEnviados.Eof do
 begin
    if cdsAlterPartEnviados.FieldByName('TIPO').AsString = 'C' then {CLIENTE}
     ExecSql('UPDATE CLI0000_ALTER ' +
             ' SET CLIA_SPED_DTENVIADO = '+ QuotedStr(DataAmericana(DateToStr(dataInicial))) +
             ' WHERE CLIA_REGISTRO =  '+ IntToStr(cdsAlterPartEnviados.FieldByName('REGISTRO').AsInteger)  )
    else
     ExecSql('UPDATE FOR0000_ALTER '+
             ' SET FORA_SPED_DTENVIADO = '+QuotedStr(DataAmericana(DateToStr(dataInicial)))+
             ' WHERE FORA_REGISTRO ='+ IntToStr(cdsAlterPartEnviados.FieldByName('REGISTRO').AsInteger) );
  cdsAlterPartEnviados.Next;
 end;

end;

procedure TFrmSpedFiscal.GravarApuracaoICMS;
begin
 if not cdsApuracao.IsEmpty then
 begin
 
   if BuscaUmDadoSqlAsInteger('Select cast(count(*) as integer) as conta from    sped_apuracao_icms '+
                              ' WHERE mes ='+IntToStr(cdsApuracaomes.AsInteger)+
                              ' and ano='+IntToStr(cdsApuracaoano.AsInteger) + ' and emp_codigo = '+ QuotedStr(dbinicio.Empresa.EMP_CODIGO))>0 then 
    ExecSql(' update sped_apuracao_icms ' +
    ' set saldo_apurado = '+ FloatToSQL(cdsApuracaosaldo_apurado.AsFloat)+
    ' , deducoes = '+    FloatToSQL(cdsApuracaoDEDUCOES.AsFloat) +
    ' , icms_recolher = '+ FloatToSQL(cdsApuracaoICMS_RECOLHER.AsFloat)+ 
    ' , saldo_transportar = '+ FloatToSQL(cdsApuracaoSALDO_TRANSPORTAR.AsFloat)+
    ' WHERE mes ='+IntToStr(cdsApuracaomes.AsInteger)+ ' and ano='+IntToStr(cdsApuracaoano.AsInteger) + ' and emp_codigo = '+ QuotedStr(dbinicio.Empresa.EMP_CODIGO) )
   else
    ExecSql(' insert into sped_apuracao_icms (emp_codigo, mes, ano, saldo_apurado, deducoes, icms_recolher, saldo_transportar)  values ('+
     QuotedStr(dbinicio.Empresa.EMP_CODIGO) + ',' +IntToStr(cdsApuracaomes.AsInteger)+ ', '+IntToStr(cdsApuracaoano.AsInteger) +',' + 
     FloatToSQL(cdsApuracaosaldo_apurado.AsFloat)+ ', '+ FloatToSQL(cdsApuracaoDEDUCOES.AsFloat) +',' +
     FloatToSQL(cdsApuracaoICMS_RECOLHER.AsFloat)+ ', '+ FloatToSQL(cdsApuracaoSALDO_TRANSPORTAR.AsFloat)  +')')
 end;// fim - not cdsapuracao.isempty
end;

procedure TFrmSpedFiscal.GravarApuracaoICMS_st;
begin
  if not cdsApuracaoSt.IsEmpty then
    ExecSql('DELETE FROM sped_apuracao_icms_st WHERE mes ='+IntToStr(cdsApuracaoStmes.AsInteger)+ ' and ano='+IntToStr(cdsApuracaoStano.AsInteger) +
            ' and emp_codigo = '+ QuotedStr(dbinicio.Empresa.EMP_CODIGO)  );
  cdsApuracaoSt.First;
  while not cdsApuracaoSt.Eof  do
  begin
    ExecSql(' insert into sped_apuracao_icms_st (emp_codigo, mes,ano, uf, saldo_devedor_ant_deducoes,deducoes_st, icms_recolher_st, saldo_transportar_st)  values ('+
       QuotedStr(dbinicio.Empresa.EMP_CODIGO) +',' +IntToStr(cdsApuracaoStmes.AsInteger)+ ' , '+IntToStr(cdsApuracaoStano.AsInteger) + ' , '+
       QuotedStr(cdsApuracaoStuf.AsString)+ ','+
       FloatToSQL(cdsApuracaoStsaldo_devedor_ant_deducoes.AsFloat)+ ',' + FloatToSQL(cdsApuracaoStDEDUCOES_st.AsFloat) +','+
       FloatToSQL(cdsApuracaoSticms_recolher_st.AsFloat)+','+FloatToSQL(cdsApuracaoStsaldo_transportar_st.AsFloat)+ ')');
    cdsApuracaoSt.Next;
  end;
end;

procedure TFrmSpedFiscal.GravarApuracaoIPI;
begin
 if not cdsApuracaoIPI.IsEmpty then
 begin
 
   if BuscaUmDadoSqlAsInteger('Select cast(count(*) as integer) as conta from    sped_apuracao_ipi '+
                              ' WHERE mes ='+IntToStr(cdsApuracaoIPImes.AsInteger)+ ' and ano='+IntToStr(cdsApuracaoIPIano.AsInteger)+
                              ' and emp_codigo = '+ QuotedStr(dbinicio.Empresa.EMP_CODIGO) )>0 then
    ExecSql(' update sped_apuracao_ipi ' +
    ' set saldo_transportar = '+ FloatToSQL(cdsApuracaoIPIsaldo_transportar.AsFloat)+
    ' , saldo_recolher = '+    FloatToSQL(cdsApuracaoIPIsaldo_recolher.AsFloat) +
    ' WHERE mes ='+IntToStr(cdsApuracaoIPImes.AsInteger)+ ' and ano='+IntToStr(cdsApuracaoIPIano.AsInteger) + ' and emp_codigo = '+ QuotedStr(dbinicio.Empresa.EMP_CODIGO) )
   else
    ExecSql(' insert into sped_apuracao_ipi (emp_codigo, mes, ano, saldo_transportar, saldo_recolher )  values ('+
     QuotedStr(dbinicio.Empresa.EMP_CODIGO)+',' + IntToStr(cdsApuracaoIPImes.AsInteger)+ ', '+IntToStr(cdsApuracaoIPIano.AsInteger) +',' + 
     FloatToSQL(cdsApuracaoIPIsaldo_transportar.AsFloat)+ ', '+ FloatToSQL(cdsApuracaoIPIsaldo_recolher.AsFloat) +')' );

 end;// fim - not cdsapuracao.isempty
end;

procedure TFrmSpedFiscal.GravarArquivo;
var ano, mes : word;

begin
  ano :=  strtoint(edtAnoInicial.Text);
  mes := StrToInt(edtMesInicial.Text);
 
  cdsArquivo.Close;
  qArquivo.CommandText := ' select emp_codigo, ano, mes, arq FROM sped_arquivos '+
                            ' where ano = '+IntToStr(ano) + ' and mes = '+IntToStr(mes) +' and emp_codigo = '+ QuotedStr(dbinicio.Empresa.EMP_CODIGO);
  cdsArquivo.Open;
  if not cdsArquivo.IsEmpty then
    cdsArquivo.Edit
  else
    cdsArquivo.Insert;
  cdsArquivoano.AsInteger := ano;
  cdsArquivomes.AsInteger := mes;
  cdsArquivoemp_codigo.AsString := DBInicio.Empresa.EMP_CODIGO;
  cdsArquivoarq.AsString :=  UTF8Encode(mmoSpedFiscal.Lines.Text);

  cdsArquivo.Post;
  cdsArquivo.ApplyUpdates(0);
end;

procedure TFrmSpedFiscal.Inventariok200;
begin



   CdsEstoque.Close;
   CdsEstoque.CommandText := 'SELECT distinct '+
                             '    T1.prd_refer, T1.prd_codigo, '+
                             '    T1.prd_und, '+
                             IIF (cbAlmoxarifadoK.idRetorno = '',
                               '    (select SALDO FROM pCd_kardex_saldo_fisico('+QuotedStr(dbInicio.Empresa.EMP_CODIGO)+',T1.prd_codigo,'''+DataAmericana(DateToStr(UltimoDiaMes(StrToDate('01/'+PrencheZeroEsquerda(edtMesInicial.Text,2)+'/'+edtAnoInicial.Text),False))) +' 23:59:59'') ) as SALDO, '
                             ,
                               '    (select SALDO FROM pCd_kardex_saldo_fisico_amx('+QuotedStr(dbInicio.Empresa.EMP_CODIGO)+ ',T1.prd_codigo,'''+DataAmericana(DateToStr(UltimoDiaMes(StrToDate('01/'+PrencheZeroEsquerda(edtMesInicial.Text,2)+'/'+edtAnoInicial.Text),False))) +' 23:59:59'','+ QuotedStr( edAlmoxarifadoK.Text) +'   ) ) as SALDO, '
                             )  +
                             '    T1.PRD_PMEDIO, '+
                             '    T1.prd_descri, '+
                             '    T1.SPED_TIPCODIGO   '+
                             '   FROM '+
                             ' prd0000 T1 '+
                             iif(DBInicio.GetParametroSistema('PMT_MULTIPLAS_IE') = 'S' , ' join KARDEX k on (k.prd_codigo = t1.prd_codigo)', '' ) +
                             iif(DBInicio.GetParametroSistema('PMT_MULTIPLAS_IE') = 'S' , ' join ALMOX0000 a on (a.amx_codigo = k.amx_codigo)', '' ) +
                             ' WHERE T1.prd_status = ''A'''+
                             iif(DBInicio.GetParametroSistema('PMT_MULTIPLAS_IE') = 'S' , ' AND a.amx_codigo = ' + QuotedStr(edAlmoxarifadoK.Text) , '' ) +
                             ConcatSe(' and t1.', DBInicio.ExclusivoSql('PRODUTOS'))+
                             IIF(cbTipo.idRetorno <>'' ,  ' AND PTI_CODIGO = '+QuotedStr(cbTipo.idRetorno) ,'')+
                             IIF(CbGrupo.idRetorno <> '', ' AND PGR_CODIGO = '+QuotedStr(CbGrupo.idRetorno),'')+
                             IIF(CBLinha.idRetorno <> '', ' AND LIN_CODIGO = '+QuotedStr(CBLinha.idRetorno),'')

                              ;




   CdsEstoque.Open;





    CdsEstoque.First;
    while (not CdsEstoque.Eof) do
    begin
      if (CdsEstoque.FieldByName('SALDO').AsCurrency > 0)
      and MatchStr(CdsEstoque.FieldByName('SPED_TIPCODIGO').AsString,['00','01','02','03','04','05','06','10']) then
      begin

        with ACBrSPEDFiscal1.Bloco_K.RegistroK200New do
        begin
          DT_EST :=  ACBrSPEDFiscal1.DT_FIN;
          // COD_ITEM := CdsEstoque.FieldByName('prd_codigo').AsString;
          COD_ITEM := CdsEstoque.FieldByName('prd_refer').AsString;
          QTD := CdsEstoque.FieldByName('SALDO').AsCurrency;
          IND_EST := estPropInformantePoder;
          // Adicionar200(CdsEstoque.FieldByName('prd_codigo').AsString);
          Adicionar200(CdsEstoque.FieldByName('prd_refer').AsString);
          IND_EST := estPropInformantePoder;

        end;
      end;
      CdsEstoque.Next;
    end;

end;

procedure TFrmSpedFiscal.LoadToMemoFiscal;
begin
   mmoSpedFiscal.Lines.Clear;
   if FileExists( ACBrSPEDFiscal1.Path + ACBrSPEDFiscal1.Arquivo ) then
      mmoSpedFiscal.Lines.LoadFromFile(ACBrSPEDFiscal1.Path + ACBrSPEDFiscal1.Arquivo);
end;


procedure TFrmSpedFiscal.SpeedButton1Click(Sender: TObject);
begin
  inherited;
//  pFiltroProduto.Top := PgCtrl_Produtos.Top;
//  pFiltroProduto.Left := gbMargens.Left;
  pFiltroProduto.Parent := FrmSpedFiscal;
  AnimateWindow(pFiltroProduto.Handle, 500, AW_HOR_POSITIVE or AW_SLIDE or  AW_ACTIVATE);
  pFiltroProduto.Visible := true;
end;

procedure TFrmSpedFiscal.sbBlocoKClick(Sender: TObject);
begin
  inherited;
  pnBlocoK.Parent := FrmSpedFiscal;
  AnimateWindow(pnBlocoK.Handle, 500, AW_HOR_POSITIVE or AW_SLIDE or  AW_ACTIVATE);
  pnBlocoK.Visible := true;
end;

procedure TFrmSpedFiscal.ValidarSped;
begin
  panel2.Caption := 'Validando banco de dados. Aguarde...';
//Verifique as informações obrigatórias do contador para gerar '+#13+#10+
//                          ' o sped que estão faltando : '+ campo.DelimitedText);
  if (chkBlocoK.Checked) and (DBInicio.GetParametroSistema('PMT_MULTIPLAS_IE') = 'S') and (edAlmoxarifadoK.text = '') then
       Merros.Lines.Add('Almoxarifado não escolhido');
  if (CdsContator.FieldByName('NOME').AsString = '') then
   Merros.Lines.Add('Nome do contador não preenchido');
  if (CdsContator.FieldByName('CPF').AsString = '') then
   Merros.Lines.Add('CPF do contador não preenchido');
  if  (CdsContator.FieldByName('CRC').AsString = '')  then
   Merros.Lines.Add('CRCdo contador não preenchido');
  if  (CdsContator.FieldByName('EMAIL').AsString = '')  then
   Merros.Lines.Add('email do contador não preenchido ');
  if  (CdsContator.FieldByName('CODIGO_MUNICIPIO_IBGE').AsString = '') then
   Merros.Lines.Add('Código do município do contador, conforme tabela IBGE.') ;

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
   Merros.Lines.Add  ('Indicador Tributário não Informado');

  //Indicador de Metodo de Apropriação
  if (CdsEmpresa.FieldByName('EMP_COD_IND_APROP_CREDITO').AsString = '1') then
    xIndicadorMetodoApropriacao := indMetodoApropriacaoDireta
  else
  if (CdsEmpresa.FieldByName('EMP_COD_IND_APROP_CREDITO').AsString = '2') then
    xIndicadorMetodoApropriacao := indMetodoDeRateioProporcional
  else
    Merros.Lines.Add  ('Indicador Metodo de Apropriação de Crédito não Informado');

   //Indicador de Tipo de Contribuição
   if (CdsEmpresa.FieldByName('EMP_COD_IND_TIPO_APURADA').AsString = '1') then
      xIndicadorTipoContribuicao := codIndTipoConExclAliqBasica
   else
   if (CdsEmpresa.FieldByName('EMP_COD_IND_TIPO_APURADA').AsString = '2') then
      xIndicadorTipoContribuicao := codIndTipoAliqEspecificas
   else
      Merros.Lines.Add   ('Indicador de Tipo de Contribuição não Informado');


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
        Merros.Lines.Add  ('Indicador do Regime de Competência não Informado');


  OpenAux('SELECT ENF_IT_NOTANUMBER, FOR_CODIGO '+
          ' FROM ENF_IT01 T1 '+
          ' WHERE ENF_CFOP IN (''1'',''0001'',NULL) '+
          ' AND exists (SELECT ENF.ENF_NOTANUMBER FROM ENF0001 ENF '+
          ' WHERE EMP_CODIGO = '+QuotedStr(DBInicio.Empresa.EMP_CODIGO) +
          '  AND T1.ENF_IT_NOTANUMBER =  ENF.ENF_NOTANUMBER '+
          '  AND t1.FOR_CODIGO = enf.FOR_CODIGO             '+
          '  AND ENF.ENF_ENTRADA BETWEEN '+ QuotedStr(DataAmericana(DateToStr(dataInicial))) + ' AND ' + QuotedStr(DataAmericana(DateToStr(dataFinal)))+')');
  if not qAux.IsEmpty then
  while not qaux.Eof do
  begin

    Merros.Lines.Add('Nota de entrada '+ qaux.FieldByName('ENF_IT_NOTANUMBER').AsString +
    '- Fornecedor :  '+ qAux.FieldByName('FOR_CODIGO').AsString+ ' com CFOP inválido');
    qAux.Next;

  end;
//  OpenAux('SELECT PGR_CODIGO, PGR_DESCRI FROM PRD_GRUPO GR  '+
//          ' WHERE EXISTS '+
//          '(SELECT 1 FROM PRD0000 PR         '+
//          'WHERE GR.PGR_CODIGO = PR.PGR_CODIGO '+
//          'AND SPED_TIPCODIGO = ''08'') '+
//          'AND (CCT_CODIGO IS NULL OR CCT_CODIGO = 0)'  );
//  if not qAux.IsEmpty then
//  begin
//    Merros.Lines.Add('Grupo de produtos de ativo imobilizado sem conta contábil');
//    while not qAux.Eof do
//    begin
//      Merros.Lines.Add('Grupo :' + qAux.FieldByName('PGR_CODIGO').AsString+'-'+
//                                  qAux.FieldByName('PGR_DESCRI').AsString
//      );
//
//      qAux.Next;
//    end;
//
//
//
//  end;

  if merros.Lines.Count > 0  then
  begin
   PageControl1.ActivePage := tsErros;
   GeraException('Erros na geração do sped. Verifique as inconsistências.');



  end;
   panel2.Caption := 'Buscando as informações. Aguarde...';
end;

procedure TFrmSpedFiscal.BuscaPlanoContabil;
begin
  cdsPlanoContabil.Close;
  cdsPlanoContabil.CommandText := ' SELECT CCT_CODIGO, CCT_DESCRI,CCT_NIVEL, DT_ALT FROM CCT_0000 c  ' +
                                  ' WHERE EXISTS                                                     ' +
                                  ' (SELECT 1 FROM PRD0000 PR JOIN PRD_TIPO TP ON (TP.PTI_CODIGO = PR.PTI_CODIGO) ' +
                                  ' JOIN PRD_GRUPO GR ON (GR.PGR_CODIGO = PR.PGR_CODIGO) '   +
                                  ' WHERE PTI_SIGLA = ''IM'' AND c.CCT_CODIGO = gr.CCT_CODIGO  '+
                                  ' AND PRD_DTCADASTRO BETWEEN '+QuotedStr(DataAmericana(DateToStr(dataInicial)))+' AND '+
                                                         QuotedStr(DataAmericana(DateToStr(dataFinal)))+ ')';
  cdsPlanoContabil.Open;
end;

procedure TFrmSpedFiscal.BuscaNaturezaOperacao;
begin
  //NAturezaOperacao
  CdsNaturezaOperacao.Close;
  CdsNaturezaOperacao.CommandText :=
  'SELECT  OPE_CODIGO, OPE_DESCRI,  ''N'' AS USADO FROM OPE0000 t1 ';
//  'where EXISTS                                   '+
//  '(SELECT it.OPE_CODIGO, nf.OPE_CODIGO FROM NF_IT01 IT       '+
//  ' JOIN NF0001 NF ON (NF.NF_NOTANUMBER = IT.NF_IT_NOTANUMER  '+
//  '             AND NF.EMP_CODIGO = IT.EMP_CODIGO AND NF.NF_EMISSAO BETWEEN '
//        + QuotedStr(DataAmericana(DateToStr(dataInicial))) + ' AND ' + QuotedStr(DataAmericana(DateToStr(dataFinal)))+ ' ) '+
//  '  WHERE IT.OPE_CODIGO = t1.OPE_codigo AND nf.EMP_CODIGO = '+QuotedStr(DBInicio.Empresa.EMP_CODIGO)  +' ) '+
//  'OR EXISTS                                                  '+
//  '(SELECT ope_codigo FROM ENF0001 enf                        '+
//  'WHERE ENF_ENTRADA BETWEEN '+ QuotedStr(DataAmericana(DateToStr(dataInicial))) + ' AND ' + QuotedStr(DataAmericana(DateToStr(dataFinal)))+
//  ' AND enf.OPE_CODIGO = t1.OPE_codigo AND enf.EMP_CODIGO = '+QuotedStr(DBInicio.Empresa.EMP_CODIGO)  +' ) ';

  CdsNaturezaOperacao.Open;
end;

procedure TFrmSpedFiscal.BuscaNotasFiscais;
begin
//Notas Fiscais
  CdsNotasFiscais.Close;
  CdsNotasFiscais.CommandText :=
   'SELECT * FROM VW_SPED_NOTAS_FISCAIS where CODIGO_MODELO IN (''01'',''1'',''1B'',''04'',''55'',''65'') AND EMPRESA = ' + QuotedStr(dbInicio.Empresa.EMP_CODIGO) +
   ' AND ((TIPO_NOTA = ''E'' and DATA_ENTRADA_SAIDA BETWEEN ' + QuotedStr(DataAmericana(DateToStr(dataInicial))) + ' AND ' + QuotedStr(DataAmericana(DateToStr(dataFinal))) +
    ') or (TIPO_NOTA = ''S'' and DATA_EMISSAO BETWEEN ' + QuotedStr(DataAmericana(DateToStr(dataInicial))) + ' AND ' + QuotedStr(DataAmericana(DateToStr(dataFinal))) + '))';
  CdsNotasFiscais.Open;

end;

procedure TFrmSpedFiscal.BuscaEmpresa;
begin
  //Abrindo Tabelas
  //Empresa
  CdsEmpresa.Close;
  CdsEmpresa.CommandText := 'SELECT * FROM VW_SPED_EMPRESA WHERE EMPRESA = ' + QuotedStr(dbInicio.Empresa.EMP_CODIGO);
  CdsEmpresa.Open;
end;

procedure TFrmSpedFiscal.BuscaCentroCusto;
begin
 cdsCentroCusto.Close;
 cdsCentroCusto.CommandText :=
    ' SELECT PCX_CODIGO, PCX_DESCRI, PCX_INICIO FROM PCX0000 c '+
    ' WHERE EXISTS                                   '+
    ' (SELECT 1 FROM PRD0000 PR JOIN PRD_TIPO TP ON (TP.PTI_CODIGO = PR.PTI_CODIGO) '+
    ' WHERE PTI_SIGLA = ''IM'' AND (C.PCX_CODIGO = PR.PCX_CODIGO) '+
    '  AND PRD_DTCADASTRO BETWEEN '+QuotedStr(DataAmericana(DateToStr(dataInicial)))+' AND '+
                                                         QuotedStr(DataAmericana(DateToStr(dataFinal)))+ ')';

 cdsCentroCusto.Open;

end;

procedure TFrmSpedFiscal.BuscaContador;
begin
  {criar validações}
  //Contador
  CdsContator.Close;
  CdsContator.CommandText := 'SELECT * FROM VW_SPED_CONTADOR WHERE EMPRESA = ' + QuotedStr(dbInicio.Empresa.EMP_CODIGO);
  CdsContator.Open;
end;

procedure TFrmSpedFiscal.BuscaUnidadeMedida;
begin
  //Unidade de Medida
  CdsUnidadeMedida.Close;
  CdsUnidadeMedida.CommandText := 'SELECT CAST(PRD_UNISIGLA AS VARCHAR(6)) AS UNIDADE_SIGLA, PRD_UNIDESCRI AS UNIDADE_DESCRICAO, ''N'' as USADO, PRD_UNIPADRAO as PADRAO FROM PRD_UNIDADE';
  CdsUnidadeMedida.Open;
end;

procedure TFrmSpedFiscal.Button1Click(Sender: TObject);
begin
  inherited;
   CdsEstoque.Close;
   CdsEstoque.CommandText := 'SELECT distinct  '+
                             '    T1.prd_refer, T1.prd_codigo, '+
                             '    T1.prd_und, '+
//                             '    (select SALDO FROM pCd_kardex_saldo_fisico('+QuotedStr(dbInicio.Empresa.EMP_CODIGO)+',T1.prd_codigo,'''+DataAmericana(DateToStr(UltimoDiaMes(StrToDate('01/'+PrencheZeroEsquerda(edtMesInicial.Text,2)+'/'+edtAnoInicial.Text),False))) +' 23:59:59'') ) as SALDO, '+
                             '    (select SALDO FROM pCd_kardex_saldo_data('+QuotedStr(dbInicio.Empresa.EMP_CODIGO)+',T1.prd_codigo,'''+DataAmericana(DateToStr(UltimoDiaMes(StrToDate('01/'+PrencheZeroEsquerda(edtMesInicial.Text,2)+'/'+edtAnoInicial.Text),False))) +' 23:59:59'', '+ QuotedStr(edAlmoxarifadoK.Text) +') ) as SALDO, '+
                             '    T1.PRD_PMEDIO, '+
                             '    T1.prd_descri, '+
                             '    T1.SPED_TIPCODIGO   '+
                             '   FROM '+
                             ' prd0000 T1 '+
                             iif(DBInicio.GetParametroSistema('PMT_MULTIPLAS_IE') = 'S' , ' join KARDEX k on (k.prd_codigo = t1.prd_codigo)', '' ) +
                             iif(DBInicio.GetParametroSistema('PMT_MULTIPLAS_IE') = 'S' , ' join ALMOX0000 a on (a.amx_codigo = k.amx_codigo)', '' ) +
                             ' WHERE T1.prd_status = ''A'''+
                             iif(DBInicio.GetParametroSistema('PMT_MULTIPLAS_IE') = 'S' , ' AND a.amx_codigo = ' + QuotedStr(edAlmoxarifadoK.Text) , '' ) +
                             ConcatSe(' and t1.', DBInicio.ExclusivoSql('PRODUTOS')) ;
   CdsEstoque.Open;
  BlocoK;
  ACBrSPEDFiscal1.WriteBloco_K;
   ACBrSPEDFiscal1.SaveFileTXT ;
   LoadToMemoFiscal;
end;

procedure TFrmSpedFiscal.Button3Click(Sender: TObject);
begin
  inherited;
  AnimateWindow(pnBlocoK.Handle, 500, AW_HOR_NEGATIVE or  AW_HIDE);
  pnBlocoK.Visible := false;
end;

procedure TFrmSpedFiscal.cbAlmoxarifadoKSelect(Sender: TObject);
begin
  inherited;
  edAlmoxarifadoK.Text := cbAlmoxarifadoK.idRetorno;
end;

procedure TFrmSpedFiscal.cbAlmoxarifadoSelect(Sender: TObject);
begin
  inherited;
  edAlmoxarifado.Text := cbAlmoxarifado.idRetorno;
  if BuscaUmDadoSqlAsString('SELECT AMX_FISICO FROM ALMOX0000 WHERE AMX_CODIGO = ' + QuotedStr(cbAlmoxarifado.IDRetorno)) <> 'S'  then
    uteis.Aviso('Este não é um almoxarifado Físico. Não irá gerar o SPED Corretamente');
end;

procedure TFrmSpedFiscal.CbGrupoSelect(Sender: TObject);
begin
  inherited;
  EdtGrupo.text := CbGrupo.idRetorno ;
end;

procedure TFrmSpedFiscal.CBLinhaSelect(Sender: TObject);
begin
  inherited;
  EdtLinha.Text := CBLinha.idRetorno;
end;

procedure TFrmSpedFiscal.cbTipoSelect(Sender: TObject);
begin
  inherited;
  EdtTipo.Text := CBtIPO.idRetorno;
end;

procedure TFrmSpedFiscal.ChkBloco1Click(Sender: TObject);
begin
  inherited;
  tsBloco1.TabVisible := ChkBloco1.Checked;
end;

procedure TFrmSpedFiscal.chkBlocoKClick(Sender: TObject);
begin
  inherited;
  cdsK280.Close;
  cdsK280.CommandText := 'SELECT * FROM  SPED_K280 K '+
                         'WHERE EMP_CODIGO = '+QuotedStr(DBInicio.Empresa.EMP_CODIGO)+
                         ' AND ANO = '+ edtAnoInicial.Text+ ' AND MES = '+ edtMesInicial.Text;
  cdsK280.Open;
  chk280.Checked := cdsK280.RecordCount > 0 ;
end;

function TFrmSpedFiscal.ContaCaracteres(Texto: string; Caracter: Char): Integer;
var
  I: Integer;
begin
  Result := 0;
  for I := 1 to Length(Texto) do
    if Texto[I] = Caracter then
      Inc(Result);

end;

procedure TFrmSpedFiscal.CorrecaoEstoqueK280;
begin

    cdsK280.Close;
    cdsK280.CommandText := 'SELECT pr.prd_refer, k.* FROM  SPED_K280 K '+
                           ' join prd0000 pr on (pr.prd_codigo = k.prd_codigo)  ' +
                           'WHERE k.EMP_CODIGO = '+QuotedStr(DBInicio.Empresa.EMP_CODIGO)+
                           ' AND ANO = '+ edtAnoInicial.Text+ ' AND MES = '+ edtMesInicial.Text;
    cdsK280.Open;
    while not cdsK280.eof do
    begin
      // Adicionar200(cdsK280.FieldByName('prd_codigo').AsString);
      Adicionar200(cdsK280.FieldByName('prd_refer').AsString);
      //for I := cdsK280.FieldByName('ref_mes').AsInteger to StrToInt(edtMesInicial.Text)-1 do
      //begin

        with ACBrSPEDFiscal1.Bloco_K.RegistroK280New do
        begin

          // pegar todos os meses apos a correção
            DT_EST := EndOfAMonth(cdsK280.FieldByName('ref_ano').AsInteger, cdsK280.FieldByName('ref_mes').AsInteger  );
            // COD_ITEM := cdsK280.FieldByName('prd_codigo').AsString;
            COD_ITEM := cdsK280.FieldByName('prd_refer').AsString;

            if cdsK280.FieldByName('QTDE_DIF').AsFloat < 0  then
              QTD_COR_NEG := cdsK280.FieldByName('QTDE_DIF').AsFloat *-1
            else
             QTD_COR_POS := cdsK280.FieldByName('QTDE_DIF').AsFloat;
           IND_EST := estPropInformantePoder; // proprietario

        end;
      //end;
      cdsK280.Next;
    end;


end;

procedure TFrmSpedFiscal.edAlmoxarifadoExit(Sender: TObject);
begin
  inherited;
  cbAlmoxarifado.idRetorno := edAlmoxarifado.Text;
end;

procedure TFrmSpedFiscal.edAlmoxarifadoKExit(Sender: TObject);
begin
  inherited;
  cbAlmoxarifadoK.idRetorno := edAlmoxarifadoK.Text;
end;

procedure TFrmSpedFiscal.EdtGrupoExit(Sender: TObject);
begin
  inherited;
  CbGrupo.idRetorno :=  EdtGrupo.Text;
end;

procedure TFrmSpedFiscal.EdtLinhaExit(Sender: TObject);
begin
  inherited;
  CBLinha.idRetorno := EdtLinha.Text;
end;

procedure TFrmSpedFiscal.EdtTipoExit(Sender: TObject);
begin
  inherited;
  cbTipo.idRetorno :=  EdtTipo.Text;
end;

procedure TFrmSpedFiscal.EstoqueTerceirok200;
var e: Exception;
begin
//estoque de terceiro

    if not CdsEstoqueTerceiro.Active then
      Exit;
    CdsEstoqueTerceiro.First;
    while not CdsEstoqueTerceiro.Eof do
    begin
      if CdsEstoqueTerceiro.FieldByName('COD_PART').AsString <> '' then
      begin
         with  ACBrSPEDFiscal1.Bloco_K.RegistroK200New do
         begin
              DT_EST :=  ACBrSPEDFiscal1.DT_FIN;
              // COD_ITEM := CdsEstoqueTerceiro.FieldByName('prd_codigo').AsString;
              COD_ITEM := CdsEstoqueTerceiro.FieldByName('prd_refer').AsString;
              // Adicionar200(CdsEstoqueTerceiro.FieldByName('prd_codigo').AsString);
              Adicionar200(CdsEstoqueTerceiro.FieldByName('prd_refer').AsString);
              QTD := CdsEstoqueTerceiro.FieldByName('KAR_SALDO').AsCurrency;

              if CdsEstoqueTerceiro.FieldByName('amx_terceiros').AsString = 'S' then
                IND_EST := estPropTerceirosInformante
              else if CdsEstoqueTerceiro.FieldByName('amx_foraterceiros').AsString = 'S' then
                IND_EST := estPropInformanteTerceiros;
              COD_PART := CdsEstoqueTerceiro.FieldByName('COD_PART').AsString;
              Adicionar150(CdsEstoqueTerceiro.FieldByName('COD_PART').AsString);
         end;
      end;
      CdsEstoqueTerceiro.Next;
    end;

end;

procedure TFrmSpedFiscal.Adicionar150(const codigo: string);
begin
  if CdsParticipantes.Locate('CODIGO_SISTEMA',codigo,[]) then
    begin
      if CdsParticipantes.FieldByName('USADO').AsString = 'N' then
      begin
        if not (CdsParticipantes.State in dsEditModes) then
          CdsParticipantes.Edit;
        CdsParticipantes.FieldByName('USADO').AsString := 'S';
        CdsParticipantes.Post;
      end;
    end;
end;

function TFrmSpedFiscal.Adicionar190(const unidade: string): boolean;
var
  unidadeEquivalente: string;
  insere: boolean;
begin
  if CdsUnidadeMedida.Locate('UNIDADE_SIGLA',unidade,[]) then
  begin
      if CdsUnidadeMedida.FieldByName('PADRAO').AsString <> 'S' then
      begin
        unidadeEquivalente := BuscaUmDadoSqlAsString(
          'SELECT PRD_UNISIGLA FROM PRD_UNIDADE_EQUIVALENTE WHERE PRD_UNIEQUIVALENTE = ' +
          QuotedStr(unidade) +
          iif(DBInicio.Exclusivo('TABELAS'), ' AND EMP_CODIGO = ' + QuotedStr(DBInicio.Emp_Codigo), '')
        );
        CdsUnidadeMedida.Locate('UNIDADE_SIGLA',unidadeEquivalente,[]);
      end;


      Result := True;
      if CdsUnidadeMedida.FieldByName('USADO').AsString = 'N' then
      begin
        CdsUnidadeMedida.Edit;
        CdsUnidadeMedida.FieldByName('USADO').AsString := 'S';
        CdsUnidadeMedida.Post;
      end;
  end
  else
  begin
    unidadeEquivalente := BuscaUmDadoSqlAsString(
      'SELECT PRD_UNISIGLA FROM PRD_UNIDADE_EQUIVALENTE WHERE PRD_UNIEQUIVALENTE = ' +
      QuotedStr(unidade) +
      iif(DBInicio.Exclusivo('TABELAS'), ' AND EMP_CODIGO = ' + QuotedStr(DBInicio.Emp_Codigo), '')
      );

    Result := False;
    if unidadeEquivalente = '' then
      insere := true
    else
      insere := iif(CdsUnidadeMedida.Locate('UNIDADE_SIGLA',unidadeEquivalente,[]) , false, true);

    if insere then
      CdsUnidadeMedida.Insert
    else
      CdsUnidadeMedida.Edit;

    if insere then
    begin
      CdsUnidadeMedida.FieldByName('UNIDADE_SIGLA').AsString := unidade;
      CdsUnidadeMedida.FieldByName('UNIDADE_DESCRICAO').AsString := 'CONVERSAO PARA '+unidade;
    end;
    CdsUnidadeMedida.FieldByName('USADO').AsString := 'S';
    CdsUnidadeMedida.Post;
  end;
end;

procedure TFrmSpedFiscal.Adicionar200(const codigo: String);
begin
  if CdsProdutosServicos.Locate('CODIGO_ITEM',codigo,[]) then
    begin
      if CdsProdutosServicos.FieldByName('USADO').AsString = 'N' then
      begin
        IF not (CdsProdutosServicos.State  IN dsEditModes) then
          CdsProdutosServicos.Edit;
        CdsProdutosServicos.FieldByName('USADO').AsString := 'S';

        IF (CdsProdutosServicos.State  IN dsEditModes) then
          CdsProdutosServicos.Post;

        if CdsProdutosServicos.FieldByName('UNIDADE_MEDIDA').AsString = 'PR' then
          Adicionar190('PAR')
        Else
          Adicionar190(CdsProdutosServicos.FieldByName('UNIDADE_MEDIDA').AsString);

      end;
    end;
end;

procedure TFrmSpedFiscal.Adicionar400(const codigo: string);
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

procedure TFrmSpedFiscal.Adicionar300(const codigo: string);
begin
//if cdsAtivoImobilizado.Locate('PRD_CODIGO',codigo,[]) then
if cdsAtivoImobilizado.Locate('PRD_REFER',codigo,[]) then
    begin
      if cdsAtivoImobilizado.FieldByName('USADO').AsString = 'N' then
      begin
        cdsAtivoImobilizado.Edit;
        cdsAtivoImobilizado.FieldByName('USADO').AsString := 'S';
        cdsAtivoImobilizado.Post;
      end;
    end;
end;

end.
