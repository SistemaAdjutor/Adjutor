unit nfse_principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, inifiles, System.DateUtils, ClipBrd,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBForm, Data.DBXFirebird, Data.FMTBcd, Data.DB, Datasnap.DBClient, Datasnap.Provider, Vcl.Grids, Vcl.DBGrids, Data.SqlExpr, ACBrEnterTab, ACBrBase,
  ACBrCalculadora, ACBrDFe, ACBrNFSe, Vcl.StdCtrls, Vcl.Buttons, pnfsConversao, pcnConversao, ACBrMail, Vcl.ExtCtrls, Vcl.Mask,  IdTCPConnection,
  IdTCPClient, IdExplicitTLSClientServerBase, IdMessageClient, IdSMTPBase, IdSMTP, IdMessage, IdBaseComponent, IdComponent, IdIOHandler, IdIOHandlerSocket, IdIOHandlerStack, IdSSL, IdSSLOpenSSL,
  IdAttachmentFile, ACBrUtil, Vcl.DBCtrls, STRUTILS, fileCtrl, Vcl.Menus, JvMenus, JPEG, System.UITypes, uteis, ACBrDFeOpenSSL, ACBrDFeSSL, ACBrNFSeDANFSeFR, frxClass,
  SgDbSeachComboUnit, ACBrDFeReport, JvExMask, JvToolEdit, frxDBSet, JvExControls, JvArrowButton, blcksock, JvAnimatedImage, JvGIFCtrl, Xml.xmldom, Xml.XMLIntf, Xml.XMLDoc, ACBrNFSeXDANFSeClass,
  ACBrNFSeXDANFSeRLClass, ACBrNFSeX, ACBrNFSeDANFSeClass, ACBrNFSeDANFSeRLClass,
  ACBrUtil.Base,
  ACBrUtil.DateTime, ACBrUtil.FilesIO,
  ACBrNFSeXConversao, ACBrNFSeXWebservicesResponse
  ;

type
 TStatus = ( tsEnviado, tsSucesso, tsProcessadoComErros, tsConsultadoEmProcesso );
 TOperacao = (toConsulta, toNaoEnviado, toEstorno, toCancelamento,toCancelamentoSistema, toImpressao, toImpressaoRPS,toGeraXML);
type
 ELoteError  = class (Exception);

type
  TfrmNfse = class(TfrmBaseDB)
    qSqlPesq: TSQLQuery;
    dspSqlCdsPesq: TDataSetProvider;
    CdsPesq: TClientDataSet;
    dsPesq: TDataSource;
    CdsPesqcli_codigo: TStringField;
    CdsPesqNFSE_razaosocial: TStringField;
    CdsPesqnum_lote: TIntegerField;
    CdsPesqNFSE_serie: TStringField;
    CdsPesqNFSE_email: TStringField;
    CdsPesqNFSI_valorservicos: TFMTBCDField;
    CdsPesqselecionado: TBooleanField;
    CdsPesqNFSE_cnpj_cpf: TStringField;
    CdsPesqNFSE_endereco: TStringField;
    CdsPesqNFSE_complemento: TStringField;
    CdsPesqNFSE_bairro: TStringField;
    CdsPesqNFSE_codigomunicipio: TIntegerField;
    CdsPesqNFSE_uf: TStringField;
    CdsPesqNFSE_telefone: TStringField;
    CdsPesqNFSI_valordeducoes: TFMTBCDField;
    CdsPesqNFSI_valorpis: TFMTBCDField;
    CdsPesqNFSI_valorcofins: TFMTBCDField;
    CdsPesqNFSI_valorinss: TFMTBCDField;
    CdsPesqNFSI_valorir: TFMTBCDField;
    CdsPesqNFSI_valorcsll: TFMTBCDField;
    CdsPesqNFSI_issretido: TIntegerField;
    CdsPesqNFSI_valoriss: TFMTBCDField;
    CdsPesqNFSI_valorissretido: TFMTBCDField;
    CdsPesqNFSI_outrasretencoes: TFMTBCDField;
    CdsPesqNFSI_basecalculo: TFMTBCDField;
    CdsPesqNFSI_aliquotaiss: TFMTBCDField;
    CdsPesqNFSI_valorliquidonfse: TFMTBCDField;
    CdsPesqNFSI_descontoincondicionado: TFMTBCDField;
    CdsPesqNFSI_descontocondicionado: TFMTBCDField;
    CdsPesqNFSE_numero_end: TStringField;
    CdsPesqNFSI_discriminacao: TBlobField;
    CdsPesqNFSE_CODIGO: TIntegerField;
    ACBrMail1: TACBrMail;
    catgroup: TCategoryPanelGroup;
    CategoryPanel1: TCategoryPanel;
    CategoryPanel2: TCategoryPanel;
    btnConsultarSitLote: TButton;
    btnEnviarLote: TBitBtn;
    btnImprimir: TButton;
    Button4: TButton;
    btnCancelar: TButton;
    btnEnviaremail: TButton;
    Splitter1: TSplitter;
    Panel1: TPanel;
    PFiltros: TPanel;
    Splitter2: TSplitter;
    btnDetalhes: TBitBtn;
    Gentrega: TGroupBox;
    ldataInicial: TLabel;
    lDataFinal: TLabel;
    btnLimpar: TBitBtn;
    btnPesquisar: TBitBtn;
    btnLimparTudo: TBitBtn;
    btnEstorno: TBitBtn;
    CdsPesqLSE_STATUS: TStringField;
    btnsErrosLotes: TBitBtn;
    chkSemLote: TCheckBox;
    chkRPS: TCheckBox;
    chkNFSE: TCheckBox;
    chkRPS_REJEITADOS: TCheckBox;
    chkNFSE_Cancelados: TCheckBox;
    gbLote: TGroupBox;
    edLote: TEdit;
    IdSSLIOHandlerSocketOpenSSL1: TIdSSLIOHandlerSocketOpenSSL;
    IdMessage1: TIdMessage;
    SMTP: TIdSMTP;
    sslsocket: TIdSSLIOHandlerSocketOpenSSL;
    CdsPesqNFSe_naturezaoperacao: TIntegerField;
    CdsPesqNFSE_optantesimplesnacional: TIntegerField;
    CdsPesqNFSE_incentivadorcultural: TIntegerField;
    CdsPesqNFSE_NUM_DANFSE: TIntegerField;
    CdsPesqSRV_CODIGO: TStringField;
    CdsPesqnfse_insc_municipal: TStringField;
    CdsPesqnfse_insc: TStringField;
    BtnImpRPS: TButton;
    pNotas: TPanel;
    dbnfse: TDBGrid;
    Splitter3: TSplitter;
    dsErro: TDataSource;
    dspErro: TDataSetProvider;
    cdsErro: TClientDataSet;
    qErro: TSQLQuery;
    cdsErronfh_codigo: TIntegerField;
    cdsErroNFH_MSGERRO: TBlobField;
    cdsErroNFH_RESOLVIDO: TIntegerField;
    CdsPesqNFSE_CODVERIFICACAO: TStringField;
    CdsPesqCNAE_Codigo: TStringField;
    GroupBox1: TGroupBox;
    edNfse: TEdit;
    GroupBox2: TGroupBox;
    edRPS: TEdit;
    btnHoje: TBitBtn;
    btnXML_RPS: TButton;
    CdsPesqcid_cod_ibge: TIntegerField;
    CdsPesqstatus: TStringField;
    CdsPesqNFSE_DTCANCELADO: TSQLTimeStampField;
    GroupBox3: TGroupBox;
    Label1: TLabel;
    pErro: TPanel;
    chkAguardando: TCheckBox;
    dbErro: TDBGrid;
    cdsErronfh_dataCon: TSQLTimeStampField;
    SaveDialog1: TSaveDialog;
    btnConsultarTodos: TButton;
    btnXML_LOTE: TButton;
    JvPopupMenu1: TJvPopupMenu;
    miMarcarTodos: TMenuItem;
    miDesmarcarTodos: TMenuItem;
    CdsPesqinderroenvio: TIntegerField;
    btnDescarrCertificado: TBitBtn;
    lambiente: TLabel;
    btnSair: TBitBtn;
    btnCancelaSistema: TButton;
    btnRejeitada: TBitBtn;
    btnTransmitida: TBitBtn;
    btnAutorizadas: TBitBtn;
    BtnCanceladas: TBitBtn;
    btnNaoEnviadas: TBitBtn;
    BtnTodas: TBitBtn;
    frxReport1: TfrxReport;
    Label2: TLabel;
    EdClienteCodigo: TEdit;
    PesqCliente: TSgDbSearchCombo;
    CdsPesqNFSE_cep: TStringField;
    RxDataInicial: TJvDateEdit;
    RxDataFinal: TJvDateEdit;
    CdsPesqSRV_DESCRICAO: TStringField;
    CdsPesqRPS_CODIGO: TIntegerField;
    chkNaoRevisado: TCheckBox;
    CdsPesqNFS_REVISADO: TStringField;
    chkrevisado: TCheckBox;
    CdsPesqCID_PRESTACAO: TIntegerField;
    CdsPesqNFSI_RETENCOESFEDERAIS: TFMTBCDField;
    JvArrowButton1: TJvArrowButton;
    frxNfse: TfrxReport;
    frxDBDatasetPesq: TfrxDBDataset;
    CdsPesqTotalServicos: TAggregateField;
    dbedtTotalServicos: TDBEdit;
    lbl1: TLabel;
    PanelAguarde: TPanel;
    JvGIFAnimator1: TJvGIFAnimator;
    pinfo: TPanel;
    ACBrNFSe1: TACBrNFSeX;
    ACBrNFSeDANFSeFR1: TACBrNFSeXDANFSeRL;
    CdsPesqNFSE_dataemissao: TSQLTimeStampField;
    CdsPesqNFSI_JUSTIFICATIVA_DEDUCAO: TStringField;
    procedure FormShow(Sender: TObject);
    procedure dbnfseDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbnfseCellClick(Column: TColumn);
    procedure btnEnviarLoteClick(Sender: TObject);
    procedure dbnfseDblClick(Sender: TObject);
    procedure btnDetalhesClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnConsultarSitLoteClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure btnEnviaremailClick(Sender: TObject);
    procedure btnEstornoClick(Sender: TObject);
    procedure FiltrarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnLimparTudoClick(Sender: TObject);
    procedure BtnImpRPSClick(Sender: TObject);
    procedure btnsErrosLotesClick(Sender: TObject);
    procedure CdsPesqAfterScroll(DataSet: TDataSet);
    procedure btnPesqRPSClick(Sender: TObject);
    procedure btnHojeClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
    procedure btnXML_RPSClick(Sender: TObject);
    procedure CdsPesqCalcFields(DataSet: TDataSet);
    procedure NaoGeradaClick(Sender: TObject);
    procedure CanceladasClick(Sender: TObject);
    procedure NFSEClick(Sender: TObject);
    procedure RejeitadasClick(Sender: TObject);
    procedure ProcessosClick(Sender: TObject);
    procedure cdsErroNFH_MSGERROGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure dbErroDblClick(Sender: TObject);
    procedure btnConsultarTodosClick(Sender: TObject);
    procedure btnXML_LOTEClick(Sender: TObject);
    procedure miMarcarTodosClick(Sender: TObject);
    procedure miDesmarcarTodosClick(Sender: TObject);
    procedure btnDescarrCertificadoClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnCancelaSistemaClick(Sender: TObject);
    procedure BtnTodasClick(Sender: TObject);
    procedure edRPSKeyPress(Sender: TObject; var Key: Char);
    procedure edRPSEnter(Sender: TObject);
    procedure edRPSExit(Sender: TObject);
    procedure edNfseKeyPress(Sender: TObject; var Key: Char);
    procedure edLoteKeyPress(Sender: TObject; var Key: Char);
    procedure PesqClienteSelect(Sender: TObject);
    procedure EdClienteCodigoExit(Sender: TObject);
    procedure EdClienteCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdClienteCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure RxDataFinalChange(Sender: TObject);
    procedure RxDataInicialChange(Sender: TObject);
    procedure PesqClienteButtonClick(Sender: TObject);
    procedure CdsPesqselecionadoGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure CdsPesqNFS_REVISADOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure JvArrowButton1Click(Sender: TObject);
    procedure frxNfseGetValue(const VarName: string; var Value: Variant);
    procedure CdsPesqNFSE_cnpj_cpfGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CdsPesqNFSE_dataemissaoGetText(Sender: TField; var Text: string; DisplayText: Boolean);

  private
    procedure buscaNfse  ;
    procedure BuscaErro;
    procedure ConfiguracoesIniciais;
    function VerificaSelecionado(Operacao: TOperacao) : boolean;
    function EnviarNotas: string;
    procedure preencherNotas (lote: integer;clone: TClientDataSet);
    procedure GravaLote (cdsclone: TClientDataSet;ISSCuritiba:TACBrNfSeX; Lote:Integer; Status: TStatus) ;
    procedure GravaSituacaoLote(num_lote : integer; status: TStatus);
    procedure consultarSitLotes;
    function ConsultarLote (situacao, lote: integer; const protocolo: string) : boolean;
    procedure GravarNFSE(RPS, NFSE: Integer; ValorCredito : double; const CodVerificacao: string; const XML_NFSE : AnsiString );

    procedure GravarHistorico(num_lote, Numrps : integer; CONST mensagem : string);
    procedure BuscaXML;
    procedure BuscaXML_original;
    function enviarEmailIndy(const sPara, sAssunto: String; sMensagem: TStrings ;
              EnviaPDF: Boolean; sCC: TStrings; Anexos: TStrings; sReplyTo: TStrings): boolean;
    procedure GravarCancelamento ;
    procedure GravarCancelamentoSistema(const NFSE_CODIGO:string);
    procedure GravarCancelamentoConsulta(const CodCancelamento : integer; const DataCancel : TDateTime; const DANFSE_NUMERO : string);
    procedure ConsultarTodosRPS;
    procedure ErroEsquema(CONST NumRPS: String);
    procedure ConsultaRPS;

  public
    { Public declarations }
  end;

var
  frmNfse: TfrmNfse;
  aguardando : boolean;

implementation

{$R *.dfm}

{ TfrmBaseDB2 }

uses iniciodb,  NFS0004, Animacao, MemoForm, PesquisaClientesForm, ShellApi,
  ACBrDFeConfiguracoes, ACBrDFeUtil,
  ACBrNFSeXWebserviceBase
  ;

procedure TfrmNfse.btnConsultarSitLoteClick(Sender: TObject);
var pass : string;
  nfseCodigo: integer;
begin
  inherited;
  PanelAguarde.Visible := True;
  nfseCodigo := CdsPesqNFSE_CODIGO.AsInteger;
  if not ACBrNFSe1.SSL.CertificadoLido then
  begin
    ACBrNFSe1.SSL.NumeroSerie :=  BuscaUmDadoSqlAsString('SELECT PMT_CERTIFICADO_DIGITAL FROM PRMT0001 WHERE EMP_CODIGO = ' + QuotedStr(DBInicio.Empresa.EMP_CODIGO));
    ACBrNFSe1.SSL.CarregarCertificado;
    if not ACBrNFSe1.SSL.CertificadoLido then
    begin
      MessageDlg('Favor informar o número de série do certificado da empresa ' + DBInicio.Empresa.EMP_CODIGO + ' nos parâmetros globais', mtWarning, [mbOK], 0);
      Abort;
    end;
  end;
   // ACBrNFSe1.SSL.CarregarCertificado;

  Application.ProcessMessages;


  if VerificaSelecionado(toConsulta) then
  begin

  //   if not ACBrNFSe1.SSL.CertificadoLido then
  //      ACBrNFSe1.SSL.SelecionarCertificado;
      ACBrNFSe1.Configuracoes.Geral.Emitente.WSSenha := BuscaUmDadoSqlAsString('SELECT EMP_NFS_SENHA FROM EMP0000 WHERE EMP_CODIGO = ' + QuotedStr(DBInicio.Emp_Codigo));
      if (ACBrNFSe1.Configuracoes.Geral.xprovedor = 'IPM') and (ACBrNFSe1.Configuracoes.Geral.Emitente.WSSenha = '') then
      begin
        MessageDlg('Atualize a Senha WEB no cadastro da Empresa', mtWarning, [mbOK], 0);;
        pass := InputBox('Senha de acesso www.nfs-e.net', 'password','');
        ACBrNFSe1.Configuracoes.Geral.Emitente.WSSenha := pass;
      end;

      try
        btnConsultarSitLote.Enabled := False;
        Screen.Cursor := crHourGlass;
        consultarSitLotes;
        // consultaRPS;
        // ACBrNFSe1.NotasFiscais.ImprimirPDF;
        buscaNfse;
      finally
        btnConsultarSitLote.Enabled := True;
        Screen.Cursor := crDefault;
      end;
  end
  else
    GeraException('Selecione um registro');
  cdsPesq.Locate('NFSE_CODIGO', nfseCodigo, []);
  PanelAguarde.Visible := False;
end;

procedure TfrmNfse.btnConsultarTodosClick(Sender: TObject);
begin
  inherited;
  ConsultarTodosRPS;
end;

procedure TfrmNfse.btnDescarrCertificadoClick(Sender: TObject);
begin
  inherited;
  ACBrNFSe1.SSL.DescarregarCertificado;
end;

procedure TfrmNfse.btnDetalhesClick(Sender: TObject);
begin
  inherited;
  FrmNotaFiscalServico := TFrmNotaFiscalServico.Create(Application);
  try
    FrmNotaFiscalServico.BuscaNotaFiscal(CdsPesq.FieldByName('nfse_codigo').AsInteger);
    FrmNotaFiscalServico.ShowModal;
    buscaNfse;
  finally
    FreeAndNil(FrmNotaFiscalServico);
  end;

end;

procedure TfrmNfse.btnEnviaremailClick(Sender: TObject);
Var
 email : string;
 i : integer;
 assunto  : string;
 reply, mensagem, AnexosEmail: TStringList;
 NomeArq, msg, xml: String;
begin
 if VerificaSelecionado(toImpressao) then
 begin
   BuscaXML;

   ACBrNFSe1.NotasFiscais.ImprimirPDF;
   // ACBrNFSe1.NotasFiscais.Items[0].NomeArqRps
   // ACBrNFSe1.NotasFiscais.Items[0].NFSe.NomeArq;
   // ACBrNFSe1.NotasFiscais.Items[0].NFSe.GetNamePath
   // ACBrNFSe1.NotasFiscais.Items[0].NFSe.

   AnexosEmail := TStringList.Create;
   try
     for I := 0 to  ACBrNFSe1.NotasFiscais.count-1 do
     begin
      ACBrNFSe1.NotasFiscais.Items[i].NFSe.Prestador.RazaoSocial := DBInicio.Empresa.RAZAO;
      ACBrNFSe1.NotasFiscais.Items[i].NFSe.Prestador.Contato.Telefone := dbinicio.Empresa.FONE;
      ACBrNFSe1.NotasFiscais.Items[i].NFSe.Prestador.Contato.Email :=   dbinicio.Empresa.EMAIL;
      // ACBrNFSe1.NotasFiscais.ACBrNFSe.Configuracoes.Arquivos.PathSalvar 'C:\Developer\Adjutor2\NFSe\202208\NFSe'
      // NomeArq := ACBrNFSe1.NotasFiscais.ACBrNFSe.Configuracoes.Arquivos.OrdenacaoPath.Items[i].DisplayName;
      // NomeArq := TACBrNFSe(ACBrNFSe1.NotasFiscais.ACBrNFSe).NumID[TACBrNFSe(ACBrNFSe1.NotasFiscais.ACBrNFSe).NotasFiscais.Items[i].NFSe] ;
      // NomeArq := PathWithDelim(ACBrNFSe1.DANFSE.PathPDF) + NomeArq;
      NomeArq := ACBrNFSe1.DANFSE.ArquivoPDF;
      xml := StringReplace(NomeArq, '.pdf', '.xml', [rfIgnoreCase]);
      ACBrNFSe1.NotasFiscais.GravarXML(xml);
      AnexosEmail.Clear;
      AnexosEmail.Add(NomeArq);
      AnexosEmail.Add(xml);
      if ACBrNFSe1.Configuracoes.WebServices.Ambiente = taHomologacao then
      begin
        assunto :=   'Nota fiscal serviço eletrônica - NFSE (ambiente homologação)';
        email:= 'adjutor@novisistemas.com.br';
       if not(InputQuery('Enviar email para...', 'Email (mais de um, separar por ;)', email))
        then exit;
      end
      else
      begin
       assunto :=   'Nota fiscal serviço eletrônica - NFSE';
       email:= ACBrNFSe1.NotasFiscais.items[i].nfse.tomador.contato.email;
       if not(InputQuery('Enviar email para...', 'Email (mais de um, separar por ;)', email))
        then exit;

      end;
      reply:=  TStringList.Create;
      mensagem := TStringList.Create;
      try
        reply.Clear;
        mensagem.Clear;
        reply.Add(ACBrNFSe1.MAIL.From);

        if ACBrNFSe1.Configuracoes.WebServices.Ambiente = taHomologacao then
           mensagem.Add('**** DESCONSIDERAR NFSE  : AMBIENTE DE HOMOLOGAÇÃO');
        mensagem.Add('');
        mensagem.Add('');
        mensagem.Add('Ref serviço  : '+  ACBrNFSe1.NotasFiscais.Items[i].NFSe.Servico.discriminacao);
        //colocar informações do prestador

        with ACBrNFSe1.NotasFiscais.Items[i].NFSe.Prestador, Endereco do
        Begin
          mensagem.Add(NomeFantasia);
          mensagem.Add(Endereco+','+numero);
          mensagem.Add(Complemento);
          mensagem.Add(cep);
          mensagem.Add(xMunicipio+'-'+uf);
        end;

       // ACBrNFSe1.NotasFiscais.Items[i].En//viarEmail( email, assunto, mensagem, true, nil,nil, reply);     //não funcionou por causa da porta
        // if enviarEmailIndy(email, assunto, mensagem, true, nil,AnexosEmail, reply) then
        if enviaMail('NFE', Trim(dbInicio.Empresa.EmailUserName), email, assunto, reply[0], mensagem, AnexosEmail) then
        begin

          msg := 'Email enviado a '+email+' da NFSE '+   ACBrNFSe1.NotasFiscais.Items[i].NFSe.Numero+ ' com sucesso';
          MessageDlg(msg, mtInformation, [mbOK], 0);
          GravarHistorico(0,StrToInt( ACBrNFSe1.NotasFiscais.Items[i].NFSe.IdentificacaoRps.Numero),msg);
        end
        else
        begin
          msg := 'Ocorreu algum erro ao enviar a'+ email +' da NFSE '+   ACBrNFSe1.NotasFiscais.Items[i].NFSe.Numero;
          MessageDlg(msg, mtWarning, [mbOK], 0);
          GravarHistorico(0,StrToInt( ACBrNFSe1.NotasFiscais.Items[i].NFSe.IdentificacaoRps.Numero),msg);
        end;
        BuscaErro;
      finally
        reply.Free;
        mensagem.Free;
      end;
     end;//for  for I := 0 to  ACBrNFSe1.NotasFiscais.count-1 do

   finally
     AnexosEmail.Free;
   end;
 end;



end;

procedure TfrmNfse.btnEnviarLoteClick(Sender: TObject);
var
  lote: string;
  situacao:string;
  autenticacao, xml, erro: string;
  inicio, fim : Integer;
begin
  inherited;
  PanelAguarde.Visible := True;
  Application.ProcessMessages;

  if VerificaSelecionado(toNaoEnviado) then
  begin
  TRY
    btnEnviarLote.Enabled := False;
    dbnfse.Enabled := False;
    catgroup.Enabled := False;
    btnConsultarSitLote.Enabled := False;
    Screen.Cursor := crHourGlass;

    try
      if not ACBrNFSe1.SSL.CertificadoLido then
      begin
        ACBrNFSe1.SSL.NumeroSerie := BuscaUmDadoSqlAsString('SELECT PMT_CERTIFICADO_DIGITAL FROM PRMT0001 WHERE EMP_CODIGO = ' + QuotedStr(DBInicio.Empresa.EMP_CODIGO));
        ACBrNFSe1.SSL.CarregarCertificado;
        if not ACBrNFSe1.SSL.CertificadoLido then
        begin
          MessageDlg('Favor informar o número de série do certificado da empresa ' + DBInicio.Empresa.EMP_CODIGO + ' nos parâmetros globais', mtWarning, [mbOK], 0);
          Abort;
        end;
      end;
      Application.ProcessMessages;
    except
       on e: Exception do
       begin
         if pos('O cartão não pode ser acessado porque o PIN errado foi apresentado',e.Message)>0 then
          ACBrNFSe1.SSL.CarregarCertificado;
       end;

    end;
     ACBrNFSe1.NotasFiscais.Clear;

     situacao:= EnviarNotas;

     PanelAguarde.Visible := False;
     lote := ACBrNFSe1.NotasFiscais.NumeroLote;


     try
      if ACBrNFSe1.WebService.Emite.Erros.Count > 0 then
        erro := ACBrNFSe1.WebService.Emite.Erros.Items[0].Descricao;
      if  (ACBrNFSe1.WebService.Emite.Erros.Count > 0) and not (ACBrNFSe1.WebService.ConsultaLoteRps.Sucesso) or ((erro <> 'NFs-e valida para emissao.') and (erro <> '')) then
        raise Exception.Create(ACBrNFSe1.WebService.Emite.Erros.Items[0].Descricao +
              ' Correção : ' + ACBrNFSe1.WebService.Emite.Erros.Items[0].Correcao   );

      if (ACBrNFSe1.WebService.Emite.Alertas.Count > 0) and not (ACBrNFSe1.WebService.ConsultaLoteRps.Sucesso) then
        raise Exception.Create(ACBrNFSe1.WebService.Emite.Alertas.Items[0].Descricao +
              ' Correção : ' + ACBrNFSe1.WebService.Emite.Alertas.Items[0].Correcao   );


      lote := ACBrNFSe1.NotasFiscais.NumeroLote;
      if Situacao = '' then
      begin
        uteis.Aviso('Problemas técnicos na Prefeitura. Tente mais tarde.');
        exit;
      end;


      if ACBrNFSe1.Configuracoes.Geral.Provedor = proEquiplano then
      begin
        autenticacao := RetornarConteudoEntre(ACBrNFSe1.WebService.ConsultaLoteRps.XmlRetorno, '<cdAutenticacao>','</cdAutenticacao>');
        if autenticacao = '' then
          autenticacao := RetornarConteudoEntre(ACBrNFSe1.WebService.ConsultaNFSeporRps.XMLRetorno, '<cdAutenticacao>','</cdAutenticacao>');
        if (autenticacao <> '') then
        begin
          uteis.Aviso('Lote '+lote+' processado com sucesso.');
          // ACBrNFSe1.NotasFiscais.Imprimir;
          // btnImprimir.Click;
        end
        else
        begin
           uteis.Aviso('Lote '+lote+' enviado, mas com erros.');
           RejeitadasClick(sender);
           CdsPesq.Locate('num_lote',lote,[]);
        end;
      end
      else
      begin
        case  StrToIntDef(Situacao,0) of
         1: uteis.Aviso('Lote '+lote+' processado com sucesso.');
         2: uteis.Aviso('Lote '+lote+ ' enviado com sucesso aguardando prefeitura.');
         3: begin
             uteis.Aviso('RPS não enviado, consulte o histórico para verificar o erro.');
             RejeitadasClick(sender);
             CdsPesq.Locate('num_lote',lote,[]);
            end;
         4: begin
              uteis.Aviso('Lote '+lote+' processado com sucesso.');
              // ACBrNFSe1.NotasFiscais.Imprimir;
            end;

        end;
      end;
     finally
        dbnfse.Enabled := True;
        catgroup.Enabled := True;
        if (situacao = '4') OR (situacao = '1')  then
        begin

          btnAutorizadas.Click;//buscaNfse;
          if CdsPesq.Locate('num_lote',LOTE,[]) then
          begin
            CdsPesq.Edit;
            CdsPesqselecionado.AsBoolean := true;
            CdsPesq.Post;
            // btnImprimir.Click;
          end;

          try
            CdsPesq.IndexDefs.Find('dataemissao')
          except
            CdsPesq.AddIndex('dataemissao','NFSE_dataemissao',[ixDescending]);
          end;

          CdsPesq.IndexName := 'dataemissao';
        end
        else
          buscaNfse;
        screen.Cursor := crDefault;
        btnConsultarSitLote.Enabled := True;
        btnEnviarLote.Enabled := True;
     end;

     btnImprimir.Click;

  except
     on e: Exception do
     begin
       PanelAguarde.Visible := False;
       dbnfse.Enabled := True;
       btnEnviarLote.Enabled := true;
       catgroup.Enabled := True;
       btnConsultarSitLote.Enabled := True;
       Screen.Cursor := crDefault;
       GravarHistorico(0, CdsPesqRPS_CODIGO.AsInteger,e.Message);
       // GravarHistorico(0, CdsPesqNFSE_CODIGO.AsInteger,e.Message);
       if pos('TimeOut',e.Message)>0  then
         raise Exception.Create('TimeOut: Prefeitura sem resposta, ou demorando')
       else if pos('Erros de validações',e.Message)>0 then
         raise Exception.Create(e.Message)
       else
         raise Exception.Create('Erro ao enviar : '+ e.Message);
     end;
  end;
  end
  else
    GeraException('Selecione um registro válido');


end;

procedure TfrmNfse.btnEstornoClick(Sender: TObject);
var clone : TClientDataSet;
begin
  inherited;
  if VerificaSelecionado(toEstorno) then
  begin
    clone := TClientDataSet.Create(Self);

    try
      clone.CloneCursor(CdsPesq,False,true);
      clone.Filtered := False;
      clone.Filter:= '(selecionado = true)';
      clone.Filtered := True;
      clone.First;
      try
      if (MessageDlg('Desejar excluir o(s) RPS selecionado(s) ?', mtConfirmation, [mbYes, mbOK], 0) = mrYes) then
      while not clone.Eof do
      begin
       ExecSql('DELETE FROM NFS_HISTORICO '+
               ' WHERE NFSE_CODIGO = '+ IntToStr(clone.FieldByName('NFSE_CODIGO').AsInteger) );

       ExecSql(' delete from NFSE_IT '+
               ' WHERE NFSE_CODIGO = '+ IntToStr(clone.FieldByName('NFSE_CODIGO').AsInteger) );

       ExecSql(' delete from NFSE_FATPC '+
                ' WHERE NFSE_CODIGO = '+ IntToStr(clone.FieldByName('NFSE_CODIGO').AsInteger) );

       ExecSql(' delete from NFSERVICO '+
               ' WHERE NFSE_CODIGO = '+ IntToStr(clone.FieldByName('NFSE_CODIGO').AsInteger) );


       clone.Next;
      end
      else
        exit;
      MessageDlg('Estornado com sucesso.', mtInformation, [mbOK], 0);
      except
        on e: Exception do
          raise Exception.Create('Erro ocorreu : '+ e.Message);

      end;
    finally
      FreeAndNil(clone);
      buscaNfse;

    end;
  end
  else
   GeraException('Não há lotes selecionados ou não podem ser estornados, pois já foram enviados');

end;

procedure TfrmNfse.btnHojeClick(Sender: TObject);
begin
  inherited;
  chkSemLote.Checked := False;
  chkRPS.Checked := False;
  chkNFSE.Checked := False;
  chkRPS_REJEITADOS.Checked := False;
  chkNFSE_Cancelados.Checked := False;
  edLote.Text := '';
  edRPS.Text:= '';
  edNfse.Text:='';
  RxDataInicial.Date := Date;
  RxDataFinal.Date := Date;
  buscaNfse;
end;

procedure TfrmNfse.btnPesqRPSClick(Sender: TObject);
begin
  inherited;
  edLote.Text:= '';
  edNfse.Text:= '';
  buscaNfse;
end;

procedure TfrmNfse.btnPesquisarClick(Sender: TObject);
begin
  inherited;
  edNfse.Text := '';
  edRPS.Text := '';
  buscaNfse;


end;

procedure TfrmNfse.btnSairClick(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TfrmNfse.btnsErrosLotesClick(Sender: TObject);
begin
  inherited;
  if perro.Visible then
       btnsErrosLotes.Caption := 'Ver erros'
  else
  begin
    btnsErrosLotes.Caption:= 'Esconder erros';
    BuscaErro;
  end;

  perro.Visible := not pErro.Visible;

end;

procedure TfrmNfse.BtnTodasClick(Sender: TObject);
begin
  inherited;
  aguardando := True;
  chkSemLote.Checked:=False;
  chkRPS.Checked:= False;
  chkRPS_REJEITADOS.Checked:= False;
  chkNFSE.Checked := False;
  chkNFSE_Cancelados.Checked:=False;
  chkAguardando.Checked := False;
  aguardando := False;
  buscaNfse;
end;

procedure TfrmNfse.btnXML_LOTEClick(Sender: TObject);
Var clone : TClientDataSet;
begin
  inherited;
  if not ACBrNFSe1.SSL.CertificadoLido then
  begin
     ACBrNFSe1.SSL.NumeroSerie := BuscaUmDadoSqlAsString('SELECT PMT_CERTIFICADO_DIGITAL FROM PRMT0001 WHERE EMP_CODIGO = ' + QuotedStr(DBInicio.Empresa.EMP_CODIGO));
     ACBrNFSe1.SSL.CarregarCertificado;
     if not ACBrNFSe1.SSL.CertificadoLido then
     begin
       MessageDlg('Favor informar o número de série do certificado da empresa ' + DBInicio.Empresa.emp_codigo + ' nos parâmetros globais', mtWarning, [mbOK], 0);
       Abort;
     end;
     //  ACBrNFSe1.SSL.SelecionarCertificado;
  end;
  clone := TClientDataSet.Create(Self);
  try
    clone.CloneCursor(CdsPesq,False,true);
    clone.Filtered := False;
    clone.Filter:= 'selecionado = true';
    clone.Filtered := True;
    clone.First;//  try
    preencherNotas (0,clone);
  finally
    FreeAndNil(clone);
  end;

  ACBrNFSe1.GerarLote(clone.FieldByName('num_lote').AsString);
  uteis.Aviso('Gerado com sucesso.');


end;

procedure TfrmNfse.btnXML_RPSClick(Sender: TObject);

Var clone : TClientDataSet;
 diretorio, cidade : string;
  ArqIni: TIniFile;

begin
  // não precisa certificado
// if not ACBrNFSe1.SSL.CertificadoLido then
//    ACBrNFSe1.SSL.SelecionarCertificado;
 if VerificaSelecionado(toGeraXML) then

  clone := TClientDataSet.Create(Self);
  try
    clone.CloneCursor(CdsPesq,False,true);
    clone.Filtered := False;
    clone.Filter:= 'selecionado = true';
    clone.Filtered := True;
    clone.First;//  try
    preencherNotas (0,clone);
  finally
    FreeAndNil(clone);
  end;


  cidade := GetEnvironmentVariable('TEMP') + '\cidade.txt';
  ArqIni := TIniFile.Create(cidade);
  ArqIni.WriteString('cidade', 'cidade', IntToStr(DBInicio.Empresa.Cid_Codigo));
  ArqIni.Free;

  diretorio := ACBrNFSe1.Configuracoes.Arquivos.PathGer;
  if SelectDirectory(diretorio,[sdAllowCreate],0) then
  begin
     ACBrNFSe1.NotasFiscais.GravarXML(PathWithDelim(diretorio));

  end;

//  ACBrNFSe1.GerarLote(0);
  uteis.Aviso('Gerado com sucesso.');


end;

procedure TfrmNfse.BuscaErro;
begin
  cdsErro.Close;
  if not CdsPesq.IsEmpty then
  begin

    qErro.CommandText :=
    ' SELECT nfh_codigo, NFH_MSGERRO,nfh_dataCon, NFH_RESOLVIDO FROM NFS_historico  '+
    ' WHERE nfse_codigo = ' + IntToStr(CdsPesq.FieldByName('nfse_codigo').AsInteger)+
    ' ORDER BY NFH_DATACON DESC              ';
    cdsErro.Open;
  end;
end;

procedure TfrmNfse.buscaNfse;
var sql : string;
 condicoes : TStringList;
 I : INTEGER;
begin
 if aguardando then
    exit;
 CdsPesq.Close;
 condicoes := TStringList.Create;
 try

    sql:=
   'SELECT SE.EMP_CODIGO,  rps_codigo, si.NFSE_CODIGO, SE.CLI_CODIGO, SE.NUM_LOTE, se.NFSE_serie,NFSE_razaosocial, NFSE_email, NFSE_dataemissao,      '+
   ' LSE_STATUS,NFSE_NUM_DANFSE,  NFSI_valorservicos,  NFSI_discriminacao, inderroenvio, NFSI_RETENCOESFEDERAIS,            '+
   ' se.CNAE_Codigo, si.NFSI_VALORDEDUCOES, si.NFSI_JUSTIFICATIVA_DEDUCAO, si.NFSI_VALORCOFINS, si.NFSI_VALORCSLL, si.nfsi_ValorPis, si.NFSI_VALORINSS,     '+
   ' si.NFSI_VALORIR, si.NFSI_VALORISSRETIDO, si.NFSI_VALORISS , NFSI_basecalculo,NFSI_aliquotaiss,NFSI_valorliquidonfse,     '+
   '  NFSI_descontoincondicionado, si.NFSI_DESCONTOCONDICIONADO, si.NFSI_outrasretencoes, NFSI_issretido, NFSE_razaosocial,   '+
   ' coalesce (NFSE_cnpj_cpf, cli_cgc) as NFSE_cnpj_cpf, NFSE_endereco, NFSE_numero_end, NFSE_complemento, NFSE_CODVERIFICACAO,                                    '+
   '  NFSE_bairro, NFSE_codigomunicipio, NFSE_uf, NFSE_cep, NFSE_telefone, NFSE_email,                                        '+
   ' NFSE_optantesimplesnacional, NFSE_incentivadorcultural,NFSe_naturezaoperacao,se.srv_codigo, sv.SRV_DESCRICAO,            '+
   '  NFSE_NUM_DANFSE, NFSE_COD_CANCELADO,NFSE_DTCANCELADO, nfse_insc_municipal, nfse_insc ,cid.cid_cod_ibge, COALESCE(NFS_REVISADO,''N'') as  NFS_REVISADO,  '+
   '  CP.CID_COD_IBGE CID_PRESTACAO                                                                                           '+
   ' FROM NFSERVICO SE                                                                                                        '+
   ' INNER JOIN NFSE_IT SI ON (SI.NFSE_CODIGO = Se.NFSE_CODIGO)                                                               '+
   ' INNER JOIN  CID0000 cid ON (cid.CID_CODIGO = se.NFSE_CODIGOMUNICIPIO)                                                    '+
   ' JOIN CLI0000 CL ON (CL.CLI_CODIGO = SE.CLI_CODIGO ) '+
   ' LEFT JOIN LOTE_NFSE LT ON (LT.NUM_LOTE = SE.NUM_LOTE )                                                                   '+
   ' LEFT JOIN SRV0000 sv ON (REPLACE(sv.SRV_CODIGO,''.'','''')  = REPLACE(se.SRV_CODIGO,''.'','''')) ' +
   ' LEFT JOIN (SELECT DISTINCT FAT_CODIGO,  EMP_CODIGO, NFSE_CODIGO FROM NFSE_FATPC) FS ON (FS.NFSE_CODIGO = se.NFSE_CODIGO  ) '+
   ' LEFT JOIN FAT0000 FT ON (FT.FAT_CODIGO = FS.FAT_CODIGO AND FT.EMP_CODIGO = FS.EMP_CODIGO) '+
   ' LEFT JOIN CID0000 CP ON (CP.CID_CODIGO =  FAT_CID_CODIGO_PRESTACAO) ';



   if edNfse.Text <> '' then
   begin
    sql := SQL + ' WHERE NFSE_NUM_DANFSE = ' +edNfse.Text
       +' and se.emp_codigo = ' + QuotedStr(DBInicio.Empresa.EMP_CODIGO);
   end
   else if edlote.Text <>  '' then
   begin
     sql := SQL + ' WHERE SE.NUM_LOTE = ' +edLote.Text
       +' and se.emp_codigo = '+ QuotedStr(DBInicio.Empresa.EMP_CODIGO);
   end
   else if edRPS.Text <> '' then
   begin
     sql := SQL + ' WHERE SE.RPS_CODIGO = ' +edRPS.Text
        +' and se.emp_codigo = '+ QuotedStr(DBInicio.Empresa.EMP_CODIGO);
   end
   else
   begin
      condicoes.Add (' se.emp_codigo = '+ QuotedStr(DBInicio.Empresa.EMP_CODIGO)) ;
      if chkNaoRevisado.Checked then
        condicoes.Add (' COALESCE(NFS_REVISADO, ''N'') = ''N'' ')
      else if chkrevisado.Checked then
      begin
        condicoes.Add(' NFS_REVISADO = ''S'' ');
      end;
      if PesqCliente.idRetorno <> '' then
        condicoes.Add ('se.CLI_CODIGO ='+QuotedStr(PesqCliente.idRetorno) );

      if (RxDataInicial.Date > 0) and (RxDataFinal.Date > 0)  then
         condicoes.Add ('NFSE_dataemissao  between ' + DateToSQL(RxDataInicial.Date)+' and '+ DateToSQL(RxDataFinal.Date))
      else if  (RxDataInicial.Date > 0)  then
        condicoes.Add('NFSE_dataemissao  >= ' + DateToSQL(RxDataInicial.Date))
      else if RxDataFinal.Date > 0 then
        condicoes.Add('NFSE_dataemissao <= ' + DateToSQL(RxDataFinal.Date));
      //não enviado mas com erro de esquema
      if chkSemLote.Checked and  chkRPS_REJEITADOS.Checked then
         condicoes.Add(' se.num_lote is null and inderroenvio = 1')
      else  if chkSemLote.Checked then
         condicoes.Add(' se.num_lote is null')        // somente não enviados
      else  if chkRPS_REJEITADOS.Checked then         //todos com erros
        condicoes.Add(' (lse_status = '+QuotedStr('R')+'or inderroenvio = 1 )  ');

      if chkRPS.Checked then
         condicoes.Add(' se.num_lote IS NOT NULL ') ;
        // condicoes.Add(' lse_status = '+QuotedStr('T'));
      if chkNFSE.Checked then
         condicoes.Add(' NFSE_NUM_DANFSE is not null and NFSE_DTCANCELADO is null  ');
      if chkNFSE_Cancelados.Checked then
         condicoes.Add(' NFSE_DTCANCELADO is not null');
      if chkAguardando.Checked then
         condicoes.Add(' LSE_STATUS = ''T''') ;
      sql:= sql + ' WHERE ' ;
      for I := 0 to condicoes.Count-1 do
      begin
        if I= 0 then
          sql := sql  + condicoes[i]
        else
          sql := sql + ' AND ' + condicoes[i];
      end;
   end;
 finally
   condicoes.free ;
 end;

 qSqlPesq.CommandText := sql ;
 if dbInicio.isDesenvolvimento then
  CopyToClipboard(sql);
 CdsPesq.IndexName := '';
 CdsPesq.Open;
 try
   CdsPesq.IndexDefs.Find('rps')
 except
   CdsPesq.AddIndex('rps','RPS_CODIGO',[ixDescending]);
 end;

 CdsPesq.IndexName := 'rps';
 CdsPesq.First;
 cdsErro.Close;

end;

procedure TfrmNfse.BuscaXML;
var
 aXML_ARQ : TStringStream;
 clone : TClientDataSet;
 cidade, url :string;
begin
  clone := TClientDataSet.Create(Self);
   ACBrNFSe1.NotasFiscais.Clear;
  try
    clone.CloneCursor(CdsPesq,False,true);
    clone.Filtered := False;
    clone.Filter:= '(selecionado = true)';
    clone.Filtered := True;
    clone.First;
    while not clone.Eof do
    begin
      OpenAux('select dfs_xml from danfse'+
              ' where  NFSE_CODIGO = '+ IntToStr(clone.FieldByName('NFSE_CODIGO').AsInteger) );
      if qAux.FieldByName('DFS_XML').AsString = '' then
       OpenAux(' select nsx_xmlgerado dfs_xml  from nfse_xml'+
              ' where  NFSE_CODIGO = '+ IntToStr(clone.FieldByName('NFSE_CODIGO').AsInteger) );

       aXML_ARQ := TStringStream.Create('');
      try
       aXML_ARQ.WriteString(qAux.FieldByName('DFS_XML').AsString);
       try
         ACBrNFSe1.NotasFiscais.LoadFromStream(aXML_ARQ,TRUE);
         // ACBrNFSe1.NotasFiscais.LoadFromString(qAux.FieldByName('DFS_XML').AsString,TRUE);
       except on e:exception do
       begin
         // showmessage( e.message );
         // faz nada, fica pianinho, pois o erro é dentro do componente ACBr... ;
       end;

       end;
       //dados incompletos no xml, completar pegando no banco
       if ACBrNFSe1.NotasFiscais.Count > 0  then
       begin
         if ACBrNFSe1.NotasFiscais.Items[ACBrNFSe1.NotasFiscais.Count-1].NFSe.IdentificacaoRps.Numero = '' then
         begin
           ACBrNFSe1.NotasFiscais.Items[ACBrNFSe1.NotasFiscais.Count-1].NFSe.IdentificacaoRps.Numero := FormatFloat('#########0', clone.FieldByName('RPS_CODIGO').AsInteger);
           if clone.FieldByName('nfse_serie').AsString = '' then
             ACBrNFSe1.NotasFiscais.Items[ACBrNFSe1.NotasFiscais.Count-1].NFSe.IdentificacaoRps.Serie := DBInicio.NFSE.Serie
           else
            ACBrNFSe1.NotasFiscais.Items[ACBrNFSe1.NotasFiscais.Count-1].NFSe.IdentificacaoRps.Serie := clone.FieldByName('nfse_serie').AsString;
           // TnfseTipoRPS = ( trRPS, trNFConjugada, trCupom );
           ACBrNFSe1.NotasFiscais.Items[ACBrNFSe1.NotasFiscais.Count-1].NFSe.IdentificacaoRps.Tipo := trRPS;
         end;


        //-- ACBrNFSe1.NotasFiscais.Items[ACBrNFSe1.NotasFiscais.Count-1].NFSe.IdentificacaoRps.



         if ACBrNFSe1.NotasFiscais.Items[ACBrNFSe1.NotasFiscais.Count-1].NFSe.DataEmissao = 0  then
          ACBrNFSe1.NotasFiscais.Items[ACBrNFSe1.NotasFiscais.Count-1].NFSe.DataEmissao := clone.FieldByName('NFSE_dataemissao').AsDateTime;

         if ACBrNFSe1.NotasFiscais.Items[ACBrNFSe1.NotasFiscais.Count-1].NFSe.Tomador.IdentificacaoTomador.Cnpj = '' then
            ACBrNFSe1.NotasFiscais.Items[ACBrNFSe1.NotasFiscais.Count-1].NFSe.Tomador.IdentificacaoTomador.Cnpj := clone.FieldByName('NFSE_cnpj_cpf').AsString;
         if ACBrNFSe1.NotasFiscais.Items[ACBrNFSe1.NotasFiscais.Count-1].NFSe.Tomador.IdentificacaoTomador.CpfCnpj = '' then
            ACBrNFSe1.NotasFiscais.Items[ACBrNFSe1.NotasFiscais.Count-1].NFSe.Tomador.IdentificacaoTomador.CpfCnpj := clone.FieldByName('NFSE_cnpj_cpf').AsString;

         if ACBrNFSe1.NotasFiscais.Items[ACBrNFSe1.NotasFiscais.Count-1].NFSe.Tomador.IdentificacaoTomador.InscricaoEstadual = '' then
            ACBrNFSe1.NotasFiscais.Items[ACBrNFSe1.NotasFiscais.Count-1].NFSe.Tomador.IdentificacaoTomador.InscricaoEstadual := clone.FieldByName('NFSE_insc').AsString;
         if ACBrNFSe1.NotasFiscais.Items[ACBrNFSe1.NotasFiscais.Count-1].NFSe.Tomador.Contato.Telefone = '' then
            ACBrNFSe1.NotasFiscais.Items[ACBrNFSe1.NotasFiscais.Count-1].NFSe.Tomador.Contato.Telefone  := clone.FieldByName('nfse_telefone').AsString;
         if ACBrNFSe1.NotasFiscais.Items[ACBrNFSe1.NotasFiscais.Count-1].NFSe.Tomador.Contato.Email = '' then
            ACBrNFSe1.NotasFiscais.Items[ACBrNFSe1.NotasFiscais.Count-1].NFSe.Tomador.Contato.Email  := clone.FieldByName('nfse_email').AsString;





         if ACBrNFSe1.NotasFiscais.Items[ACBrNFSe1.NotasFiscais.Count-1].NFSe.Tomador.Endereco.CodigoMunicipio = '' then
            ACBrNFSe1.NotasFiscais.Items[ACBrNFSe1.NotasFiscais.Count-1].NFSe.Tomador.Endereco.CodigoMunicipio  := IntToStr(clone.FieldByName('cid_cod_ibge').AsInteger);
         if (ACBrNFSe1.NotasFiscais.Items[ACBrNFSe1.NotasFiscais.Count-1].NFSe.Tomador.Endereco.xMunicipio = '') and (clone.FieldByName('cid_cod_ibge').AsInteger > 0 ) then
            ACBrNFSe1.NotasFiscais.Items[ACBrNFSe1.NotasFiscais.Count-1].NFSe.Tomador.Endereco.xMunicipio:=
            BuscaUmDadoSqlAsString('SELECT first 1 CID_CIDADE FROM CID0000' +
                                   ' WHERE CID_COD_IBGE = '+ IntToStr(clone.FieldByName('cid_cod_ibge').AsInteger));

         if ACBrNFSe1.NotasFiscais.Items[ACBrNFSe1.NotasFiscais.Count-1].NFSe.Tomador.RazaoSocial  = '' then
            ACBrNFSe1.NotasFiscais.Items[ACBrNFSe1.NotasFiscais.Count-1].NFSe.Tomador.RazaoSocial := clone.FieldByName('NFSE_razaosocial').AsString;
         if ACBrNFSe1.NotasFiscais.Items[ACBrNFSe1.NotasFiscais.Count-1].NFSe.Tomador.Endereco.Endereco = '' then
           ACBrNFSe1.NotasFiscais.Items[ACBrNFSe1.NotasFiscais.Count-1].NFSe.Tomador.Endereco.Endereco  := clone.FieldByName('NFSE_endereco').AsString;
         if ACBrNFSe1.NotasFiscais.Items[ACBrNFSe1.NotasFiscais.Count-1].NFSe.Tomador.Endereco.Numero = '' then
           ACBrNFSe1.NotasFiscais.Items[ACBrNFSe1.NotasFiscais.Count-1].NFSe.Tomador.Endereco.Numero  := clone.FieldByName('NFSE_numero_end').AsString;
         if ACBrNFSe1.NotasFiscais.Items[ACBrNFSe1.NotasFiscais.Count-1].NFSe.Tomador.Endereco.Complemento = '' then
          ACBrNFSe1.NotasFiscais.Items[ACBrNFSe1.NotasFiscais.Count-1].NFSe.Tomador.Endereco.Complemento     := clone.FieldByName('NFSE_complemento').AsString;
         if ACBrNFSe1.NotasFiscais.Items[ACBrNFSe1.NotasFiscais.Count-1].NFSe.Tomador.Endereco.Bairro = '' then
           ACBrNFSe1.NotasFiscais.Items[ACBrNFSe1.NotasFiscais.Count-1].NFSe.Tomador.Endereco.Bairro := clone.FieldByName('NFSE_bairro').AsString;
         if ACBrNFSe1.NotasFiscais.Items[ACBrNFSe1.NotasFiscais.Count-1].NFSe.Tomador.Endereco.CEP = '' then
           ACBrNFSe1.NotasFiscais.Items[ACBrNFSe1.NotasFiscais.Count-1].NFSe.Tomador.Endereco.CEP := clone.FieldByName('NFSE_cep').AsString;
         if ACBrNFSe1.NotasFiscais.Items[ACBrNFSe1.NotasFiscais.Count-1].NFSe.Tomador.Endereco.UF = '' then
           ACBrNFSe1.NotasFiscais.Items[ACBrNFSe1.NotasFiscais.Count-1].NFSe.Tomador.Endereco.UF := clone.FieldByName('NFSE_uf').AsString;
         if  ACBrNFSe1.NotasFiscais.Items[ACBrNFSe1.NotasFiscais.Count-1].NFSe.Numero = '' then
             ACBrNFSe1.NotasFiscais.Items[ACBrNFSe1.NotasFiscais.Count-1].NFSe.Numero := IntToStr(clone.FieldByName('NFSE_NUM_DANFSE').AsInteger);
  //       if  ACBrNFSe1.NotasFiscais.Items[ACBrNFSe1.NotasFiscais.Count-1].NFSe.CodigoVerificacao = '' then
  //           ACBrNFSe1.NotasFiscais.Items[ACBrNFSe1.NotasFiscais.Count-1].NFSe.CodigoVerificacao := IntToStr(clone.FieldByName('NFSE_CODVERIFICACAO').AsInteger);


         ACBrNFSe1.NotasFiscais.Items[ACBrNFSe1.NotasFiscais.Count-1].NFSe.Servico.Valores.IssRetido := stNormal;
         If DBInicio.Empresa.CID_IBGE = 4106902 Then
           // para iss curitiba dividir a aliquicota por 100, conforme o manual
            ACBrNFSe1.NotasFiscais.Items[ACBrNFSe1.NotasFiscais.Count-1].NFSe.Servico.Valores.Aliquota    := clone.FieldByName('NFSI_aliquotaiss').AsFloat
         else
            ACBrNFSe1.NotasFiscais.Items[ACBrNFSe1.NotasFiscais.Count-1].NFSe.Servico.Valores.Aliquota    := clone.FieldByName('NFSI_aliquotaiss').AsFloat;


         if  ACBrNFSe1.NotasFiscais.Items[ACBrNFSe1.NotasFiscais.Count-1].NFSe.Servico.Descricao = '' then
             ACBrNFSe1.NotasFiscais.Items[ACBrNFSe1.NotasFiscais.Count-1].NFSe.Servico.Descricao:= clone.FieldByName('NFSI_discriminacao').AsString;
         if ACBrNFSe1.NotasFiscais.Items[ACBrNFSe1.NotasFiscais.Count-1].NFSe.Servico.Discriminacao = '' then
            ACBrNFSe1.NotasFiscais.Items[ACBrNFSe1.NotasFiscais.Count-1].NFSe.Servico.Discriminacao := clone.FieldByName('NFSI_discriminacao').AsString;


         if (ACBrNFSe1.NotasFiscais.Items[ACBrNFSe1.NotasFiscais.Count-1].NFSe.Servico.ItemServico.count = 0) then
         begin
           ACBrNFSe1.NotasFiscais.Items[ACBrNFSe1.NotasFiscais.Count-1].NFSe.Servico.ItemServico.Add;
           ACBrNFSe1.NotasFiscais.Items[ACBrNFSe1.NotasFiscais.Count-1].NFSe.Servico.ItemServico[0].ItemListaServico := clone.FieldByName('srv_codigo').AsString;
           ACBrNFSe1.NotasFiscais.Items[ACBrNFSe1.NotasFiscais.Count-1].NFSe.Servico.ItemServico[0].Quantidade := 1;
           ACBrNFSe1.NotasFiscais.Items[ACBrNFSe1.NotasFiscais.Count-1].NFSe.Servico.ItemServico[0].ValorUnitario := clone.FieldByName('NFSI_valorservicos').AsFloat;
           ACBrNFSe1.NotasFiscais.Items[ACBrNFSe1.NotasFiscais.Count-1].NFSe.Servico.ItemServico[0].ValorTotal :=  clone.FieldByName('NFSI_valorservicos').AsFloat;
           ACBrNFSe1.NotasFiscais.Items[ACBrNFSe1.NotasFiscais.Count-1].NFSe.Servico.ItemServico[0].ValorISS :=  clone.FieldByName('NFSI_valoriss').AsFloat;
           ACBrNFSe1.NotasFiscais.Items[ACBrNFSe1.NotasFiscais.Count-1].NFSe.Servico.Valores.ValorLiquidoNfse :=  clone.FieldByName('NFSI_valorservicos').AsFloat;

           ACBrNFSe1.NotasFiscais.Items[ACBrNFSe1.NotasFiscais.Count-1].NFSe.Servico.Valores.ValorTotalRecebido :=  clone.FieldByName('NFSI_valorservicos').AsFloat;
           ACBrNFSe1.NotasFiscais.Items[ACBrNFSe1.NotasFiscais.Count-1].NFSe.Servico.Valores.ValorServicos :=  clone.FieldByName('NFSI_valorservicos').AsFloat;
           ACBrNFSe1.NotasFiscais.Items[ACBrNFSe1.NotasFiscais.Count-1].NFSe.Servico.Valores.ValorRecebido :=  clone.FieldByName('NFSI_valorservicos').AsFloat;

           ACBrNFSe1.NotasFiscais.Items[ACBrNFSe1.NotasFiscais.Count-1].NFSe.Servico.Valores.ValorIss :=  clone.FieldByName('NFSI_valoriss').AsFloat;


         end;
           ACBrNFSe1.NotasFiscais.Items[ACBrNFSe1.NotasFiscais.Count-1].NFSe.Servico.CodigoMunicipio :=
              BuscaUmDadoSqlAsString('SELECT cid.cid_cod_ibge FROM NFSERVICO SE ' +
                                     ' INNER JOIN NFSE_IT SI ON (SI.NFSE_CODIGO = Se.NFSE_CODIGO) ' +
                                     ' INNER JOIN CID0000 cid ON (cid.CID_CODIGO = se.NFSE_CODIGOMUNICIPIO) ' +
                                     ' WHERE	se.emp_codigo = ' + QuotedStr(DBInicio.Emp_Codigo) + ' and si.NFSE_CODIGO = ' + clone.FieldByName('NFSE_CODIGO').AsString
                                    );


         if (ACBrNFSe1.NotasFiscais.Items[ACBrNFSe1.NotasFiscais.Count-1].NFSe.Servico.ItemServico.count>0) then
         begin
            if  (ACBrNFSe1.NotasFiscais.Items[ACBrNFSe1.NotasFiscais.Count-1].NFSe.Servico.ItemServico.Items[0].Descricao = '') then
               ACBrNFSe1.NotasFiscais.Items[ACBrNFSe1.NotasFiscais.Count-1].NFSe.Servico.ItemServico.Items[0].Descricao:= clone.FieldByName('NFSI_discriminacao').AsString;
             ACBrNFSe1.NotasFiscais.Items[ACBrNFSe1.NotasFiscais.Count-1].NFSe.Servico.ItemServico[0].CodServ := clone.FieldByName('SRV_CODIGO').AsString;
         end;
          //Servico.Discriminacao
          ACBrNFSe1.NotasFiscais.Items[ACBrNFSe1.NotasFiscais.Count-1].NFSe.Servico.xItemListaServico   := clone.FieldByName('SRV_DESCRICAO').AsString;


          ACBrNFSe1.NotasFiscais.Items[ACBrNFSe1.NotasFiscais.Count-1].NFSe.Servico.Discriminacao := clone.FieldByName('NFSI_discriminacao').AsString;
          cidade := BuscaUmDadoSqlAsString( 'SELECT CI.CID_CIDADE || ''-''  || CI.CID_ESTADO '+
                                            ' FROM NFSE_FATPC SE JOIN FAT0000 FT ON (FT.FAT_CODIGO = SE.FAT_CODIGO AND FT.EMP_CODIGO = SE.EMP_CODIGO) '+
                                            ' JOIN CID0000 CI ON (CI.CID_CODIGO =  FAT_CID_CODIGO_PRESTACAO)'+
                                            ' WHERE NFSE_CODIGO = '+ IntToStr(clone.FieldByName('NFSE_CODIGO').AsInteger )
                                            )  ;
         if cidade <> '' then
          ACBrNFSe1.NotasFiscais.Items[ACBrNFSe1.NotasFiscais.Count-1].NFSe.OutrasInformacoes := ' Local de prestação do serviço : '+ cidade;
       end;
       clone.Next;
      finally
        aXML_ARQ.Free;
      end;
    end; //end-while

    if ACBrNFSe1.Configuracoes.Geral.xprovedor = 'Equiplano' then
    begin
//      OpenAux3('SELECT NFSE_CODVERIFICACAO FROM NFSERVICO WHERE NFSE_CODIGO = '+ clone.FieldByName('NFSE_CODIGO').AsString );
//      if ACBrNFSe1.Configuracoes.WebServices.Ambiente = taHomologacao then
//        url := 'https://www.esnfs.com.br:9443/esenfs.view.logic?aut=' + qAux3.FieldByName('NFSE_CODVERIFICACAO').AsString
//      else
//        url := 'https://esnfs.com.br/esenfs.view.logic?aut=' + qAux3.FieldByName('NFSE_CODVERIFICACAO').AsString;
//      ShellExecute(Handle, 'open', Pchar(url), '', '', SW_SHOWNORMAL);
    end
    else if ACBrNFSe1.NotasFiscais.Count = 0 then
      preencherNotas (0,clone);





  finally
   FreeAndNil(Clone);
  end;
end;

procedure TfrmNfse.BuscaXML_original;
var
 aXML_ARQ : TStringStream;
 clone : TClientDataSet;
begin
  clone := TClientDataSet.Create(Self);
   ACBrNFSe1.NotasFiscais.Clear;
  try
    clone.CloneCursor(CdsPesq,False,true);
    clone.Filtered := False;
    clone.Filter:= '(selecionado = true)';
    clone.Filtered := True;
    clone.First;
    while not clone.Eof do
    begin
      OpenAux('select NSX_XMLGERADO from NFSE_XML'+
              ' where  NFSE_CODIGO = '+ IntToStr(clone.FieldByName('NFSE_CODIGO').AsInteger) );

      aXML_ARQ := TStringStream.Create('');
      try
       aXML_ARQ.WriteString(qAux.FieldByName('NSX_XMLGERADO').AsString);
       ACBrNFSe1.NotasFiscais.LoadFromStream(aXML_ARQ,TRUE);
      finally
        aXML_ARQ.Free;
      end;
      clone.Next;
    end; //end-while
  finally
   FreeAndNil(Clone);
  end;

end;

procedure TfrmNfse.btnCancelaSistemaClick(Sender: TObject);
var clone: TClientDataSet;


begin
  inherited;
 if VerificaSelecionado(toCancelamentoSistema) then
 begin
  if (MessageDlg('Deseja realmente cancelar. Ele só vai cancelar NFSe '+#13#10+
  'no sistema, no caso da prefeitura deve ser cancelado manualmente ?', mtConfirmation, [mbYes, mbNo], 0) = mrNo ) then
    exit;

    clone := TClientDataSet.Create(Self);
    try
      clone.CloneCursor(CdsPesq,False,true);
      clone.Filtered := False;
      clone.Filter:= 'selecionado = true';
      clone.Filtered := True;
      clone.First;//  try
      while not clone.Eof do
      begin
       GravarHistorico(0,clone.FieldByName('rps_codigo').AsInteger,'Cancelamento foi feito somente no sistema em '+ DateToStr(date) + ' pelo usuário ' + DBInicio.Usuario.USERNAME);
       GravarCancelamentoSistema(IntToStr(clone.FieldByName('NFSE_CODIGO').AsInteger));
       clone.Next;
      end;

    finally
      FreeAndNil(clone);
      buscaNfse;
    end;
 end;
end;

procedure TfrmNfse.BtnImpRPSClick(Sender: TObject);
begin
  inherited;
  if VerificaSelecionado(toImpressaoRPS) then
  begin
    BuscaXML_original;
    ACBrNFSe1.NotasFiscais.Imprimir;
  end
  else
    GeraException('Nenhum RPS selecionado');
end;

procedure TfrmNfse.btnCancelarClick(Sender: TObject);
Var clone : TClientDataSet;
 i : integer;
 pass : string;
 InfCancelamento: TInfCancelamento;
begin
 if VerificaSelecionado(toCancelamento) then
 begin
  if (MessageDlg('Deseja realmente cancelar ?', mtConfirmation, [mbYes, mbNo], 0) = mrNo ) then
    exit;
  PanelAguarde.Visible := True;
  Application.ProcessMessages;

  ACBrNFSe1.Configuracoes.Geral.SSLXmlSignLib:=XsMsXml ;
   if not ACBrNFSe1.SSL.CertificadoLido then
   begin
     ACBrNFSe1.SSL.NumeroSerie := BuscaUmDadoSqlAsString('SELECT PMT_CERTIFICADO_DIGITAL FROM PRMT0001 WHERE EMP_CODIGO = ' + QuotedStr(DBInicio.Empresa.EMP_CODIGO));
     ACBrNFSe1.SSL.CarregarCertificado;
     if not ACBrNFSe1.SSL.CertificadoLido then
     begin
       MessageDlg('Favor informar o número de série do certificado da empresa ' + DBInicio.Empresa.emp_codigo + ' nos parâmetros globais', mtWarning, [mbOK], 0);
       Abort;
     end;

     //   ACBrNFSe1.SSL.SelecionarCertificado;
   end;
   ACBrNFSe1.Configuracoes.Geral.Emitente.WSSenha := BuscaUmDadoSqlAsString('SELECT EMP_NFS_SENHA FROM EMP0000 WHERE EMP_CODIGO = ' + QuotedStr(DBInicio.Emp_Codigo));
    if (ACBrNFSe1.Configuracoes.Geral.xprovedor = 'IPM') and (ACBrNFSe1.Configuracoes.Geral.Emitente.WSSenha = '') then
    begin
      MessageDlg('Atualize a Senha WEB no cadastro da Empresa', mtWarning, [mbOK], 0);;
      pass := InputBox('Senha de acesso www.nfs-e.net', 'password','');
      ACBrNFSe1.Configuracoes.Geral.Emitente.WSSenha := pass;
    end;
    clone := TClientDataSet.Create(Self);
    try
      btnCancelar.Enabled := False;
      clone.CloneCursor(CdsPesq,False,true);
      clone.Filtered := False;
      clone.Filter:= 'selecionado = true';
      clone.Filtered := True;
      clone.First;//  try
     // preencherNotas (0,clone);
      BuscaXML;
//      if ACBrNFSe1.NotasFiscais.Count = 0 then
//         preencherNotas (0,clone);
           // Codigo de Cancelamento
         // 1 - Erro de emissão
         // 2 - Serviço não concluido
         // 3 - RPS Cancelado na Emissão
        InfCancelamento := TInfCancelamento.Create;
        for I := 0 to ACBrNFSe1.NotasFiscais.Count-1 do
         try
            with InfCancelamento do
            begin
              NumeroNFSe      := ACBrNFSe1.NotasFiscais.Items[i].NFSe.Numero;
              SerieNFSe       := ACBrNFSe1.NotasFiscais.Items[i].NFSe.SeriePrestacao;
              if SerieNFSe = '' then
                SerieNFSe := CdsPesq.FieldByName('NFSE_SERIE').AsString;
              ChaveNFSe       := ACBrNFSe1.NotasFiscais.Items[i].NFSe.ChaveAcesso;
              CodCancelamento := '2';
              MotCancelamento := 'cancelamento Adjutor';
              NumeroLote      := ACBrNFSe1.NotasFiscais.Items[i].NFSe.NumeroLote;
              if NumeroLote = '' then
                NumeroLote := CdsPesq.FieldByName('NUM_LOTE').AsString;
              NumeroRps       := StrToInt(ACBrNFSe1.NotasFiscais.Items[i].NFSe.IdentificacaoRps.Numero);
              SerieRps        := ACBrNFSe1.NotasFiscais.Items[i].NFSe.IdentificacaoRps.Serie;
              ValorNFSe       := ACBrNFSe1.NotasFiscais.Items[i].NFSe.ValoresNfse.ValorLiquidoNfse;
              CodVerificacao  := ACBrNFSe1.NotasFiscais.Items[i].NFSe.CodigoVerificacao;
              if CodVerificacao = '' then
                codVerificacao := CdsPesq.FieldByName('NFSE_CODVERIFICACAO').AsString;
              if ACBrNFSe1.NotasFiscais.Items[i].NFSe.email.count > 0 then
                email         := ACBrNFSe1.NotasFiscais.Items[i].NFSe.email.Items[0].emailCC
              else
                email         := 'adjutor@novisistemas.com.br';


            end;

          ACBrNFSe1.CancelarNFSe(InfCancelamento);
          GravarCancelamento;
         except
         on E: Exception do
         begin
           PanelAguarde.Visible := False;

         //  if pos('Falha ao Assinar',e.Message,1)> 0 then
           // se já se encontra cancela mas não está cancelada, cancelerá
           if (pos('NFSe ja encontra-se cancelada',e.message)> 0)  then
           begin
             OpenAux('SELECT NFSE_DTCANCELADO, NFSE_CODIGO FROM NFSERVICO '+
                     ' WHERE EMP_CODIGO = '+QuotedStr(DBInicio.Empresa.EMP_CODIGO)+
                     ' and rps_codigo = '+ ACBrNFSe1.NotasFiscais.Items[i].NFSe.IdentificacaoRps.Numero);
             if not qAux.IsEmpty  and (qAux.FieldByName('NFSE_DTCANCELADO').IsNull)  then
                GravarCancelamentoSistema(IntToStr(qAux.FieldByName('NFSE_CODIGO').AsInteger)  );

           end;
             GravarHistorico(0,StrToInt(ACBrNFSe1.NotasFiscais.Items[i].NFSe.IdentificacaoRps.Numero),e.Message)
//           else
//             GravarCancelamento;
         end;
         end;

    finally
      FreeAndNil(clone);
      buscaNfse;
      btnCancelar.Enabled := True;
      PanelAguarde.Visible := False;

    end;


 end;

end;

procedure TfrmNfse.FiltrarClick(Sender: TObject);
begin
  inherited;
  buscaNfse;
end;

procedure TfrmNfse.btnImprimirClick(Sender: TObject);
var i : integer;
  clone : TClientDataSet;
  cidade : string;
begin
  inherited;

  try
    if VerificaSelecionado(toImpressao) then
    begin
      BuscaXML;
      for I := 0 to  ACBrNFSe1.NotasFiscais.Count-1 do
      begin
       ACBrNFSe1.NotasFiscais.Items[i].NFSe.Prestador.RazaoSocial := DBInicio.Empresa.RAZAO;
       ACBrNFSe1.NotasFiscais.Items[i].NFSe.Prestador.Contato.Telefone := dbinicio.Empresa.FONE;
       ACBrNFSe1.NotasFiscais.Items[i].NFSe.Prestador.Contato.Email :=   dbinicio.Empresa.EMAIL;
       ACBrNFSe1.NotasFiscais.Items[i].NFSe.Prestador.Endereco.Endereco := DBInicio.Empresa.ENDERECO;
       ACBrNFSe1.NotasFiscais.Items[i].NFSe.Prestador.IdentificacaoPrestador.InscricaoMunicipal := RetirarMascaraCNPJ_INSC(DBInicio.Empresa.INS_MUNICIPAL);
       ACBrNFSe1.NotasFiscais.Items[i].NFSe.Prestador.IdentificacaoPrestador.Cnpj := RetirarMascaraCNPJ_INSC(DBInicio.Empresa.CNPJ_CNPF);
       ACBrNFSe1.NotasFiscais.Items[i].NFSe.Prestador.IdentificacaoPrestador.CpfCnpj := RetirarMascaraCNPJ_INSC(DBInicio.Empresa.CNPJ_CNPF);
       ACBrNFSe1.NotasFiscais.Items[i].NFSe.Prestador.IdentificacaoPrestador.InscricaoEstadual := RetirarMascaraCNPJ_INSC(DBInicio.Empresa.INSC_EST);
       ACBrNFSe1.NotasFiscais.Items[i].NFSe.Prestador.Endereco.CodigoMunicipio := IntToStr(DBInicio.Empresa.CID_IBGE);
       ACBrNFSe1.NotasFiscais.Items[i].NFSe.Prestador.Endereco.UF := DBInicio.Empresa.UF;
       ACBrNFSe1.NotasFiscais.Items[i].NFSe.Prestador.Endereco.CEP := DBInicio.Empresa.CEP;
       ACBrNFSe1.NotasFiscais.Items[i].NFSe.Prestador.Endereco.xMunicipio := DBInicio.Empresa.CIDADE;
       ACBrNFSe1.NotasFiscais.Items[i].NFSe.CodigoVerificacao := CdsPesq.FieldByName('NFSE_CODVERIFICACAO').AsString;
       ACBrNFSe1.NotasFiscais.Items[i].NFSe.DataEmissao := cdsPesq.FieldByName('NFSE_dataemissao').AsDateTime;
       ACBrNFSe1.NotasFiscais.Items[i].NFSe.Competencia := cdsPesq.FieldByName('NFSE_dataemissao').AsDateTime;






//       ACBrNFSe1.NotasFiscais.Items[i].NFSe.OutrasInformacoes :=
      end;
      ACBrNFSe1.NotasFiscais.Imprimir;
    end
    else
      GeraException('Nenhum NFSE selecionado ou algum RPS selecionado incorretamente');
  except
   on e:exception do
   begin
     if DBInicio.Usuario.USERNAME = 'NOVI' then
     begin
       ShowMessage('Ocorreu erro: '+ e.Message+ ',mas para usuário Novi será impresso afim de realizar testes');
        clone := TClientDataSet.Create(Self);
        try
          clone.CloneCursor(CdsPesq,False,true);
          clone.Filtered := False;
          clone.Filter:= 'selecionado = true';
          clone.Filtered := True;
          clone.First;
          if clone.RecordCount = 0 then
            raise Exception.Create('Nada foi selecionado');

          preencherNotas(0,clone);
           ACBrNFSe1.NotasFiscais.Imprimir;
        finally
          clone.Free;
        end;
     end
     else
       raise Exception.Create(e.Message);
   end
  end;

end;

procedure TfrmNfse.btnLimparClick(Sender: TObject);
begin
  inherited;
  RxDataInicial.Date := Date-90;
  RxDataFinal.Date := Date+180;
end;

procedure TfrmNfse.btnLimparTudoClick(Sender: TObject);
begin
  inherited;
  chkSemLote.Checked := True;
  chkRPS.Checked := False;
  chkNFSE.Checked := False;
  chkRPS_REJEITADOS.Checked := False;
  chkNFSE_Cancelados.Checked := False;
  edLote.Text := '';
  edRPS.Text:= '';
  edNfse.Text:='';
  RxDataInicial.Date := Date-90;
  RxDataFinal.Date := Date+180;
  EdClienteCodigo.Clear;
  PesqCliente.Clear;
  buscaNfse;
end;

procedure TfrmNfse.CanceladasClick(Sender: TObject);
begin
  inherited;
  aguardando := True;
  chkSemLote.Checked:=False;
  chkRPS.Checked:= False;
  chkRPS_REJEITADOS.Checked:= False;
  chkNFSE.Checked := False;
  chkAguardando.Checked := False;
  aguardando := False;
  chkNFSE_Cancelados.Checked:=true;
end;

procedure TfrmNfse.cdsErroNFH_MSGERROGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text := Sender.AsString;
end;

procedure TfrmNfse.CdsPesqAfterScroll(DataSet: TDataSet);
begin
  inherited;
  //if pErro.Visible then
    BuscaErro;
end;

procedure TfrmNfse.CdsPesqCalcFields(DataSet: TDataSet);
begin
  inherited;
  if CdsPesqnum_lote.IsNull  then
  begin
    if CdsPesqinderroenvio.AsInteger = 1 then
       CdsPesqstatus.AsString := 'Não enviado com erro'
    else
      CdsPesqstatus.AsString := 'Não enviado';
  end
  else if CdsPesqLSE_STATUS.AsString = 'T' then
      CdsPesqstatus.AsString := 'Transmitido'
  else if not CdsPesqNFSE_DTCANCELADO.IsNull then
      CdsPesqstatus.AsString := 'Cancelado'
  else if CdsPesqLSE_STATUS.AsString = 'R' then
      CdsPesqstatus.AsString := 'Erros'
  else
     CdsPesqstatus.AsString := 'Processado';
end;

procedure TfrmNfse.CdsPesqNFSE_cnpj_cpfGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if Sender.AsString <> '' then
    TEXT:= MascaraCNPJ_CPF(Sender.AsString)
  else
    Text := '';
end;

procedure TfrmNfse.CdsPesqNFSE_dataemissaoGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  text := FormatDateTime('dd/mm/yyyy', cdsPesq.FieldByName('NFSE_dataemissao').AsDateTime);
end;

procedure TfrmNfse.CdsPesqNFS_REVISADOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if not CdsPesq.IsEmpty then
  begin
    if Sender.AsString = 'S' then
      Text := 'Sim'
    else
    begin
      Text := 'Não';
    end;
  end;

end;

procedure TfrmNfse.CdsPesqselecionadoGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text:= EmptyStr;
end;

procedure TfrmNfse.ConfiguracoesIniciais;
//const  isscuritiba : string = 'NFSe\Curitiba';
var path :string;
 PathMensal: String;
 FotoJpg : TJpegImage;
 vlogoStream : TStream  ;
 sPrefeituraNome, sprefeitura :string;
begin
 sprefeitura := TiraAcento(dbinicio.Empresa.CIDADE, false);
 sPrefeituraNome :=  dbinicio.Empresa.CIDADE;  //exemplo 'PREFEITURA DE CURITIBA';

 if DBInicio.Empresa.CNPJ_CNPF = '' then
    GeraException('CNPJ da empresa não preenchido. Não funcionará corretamente.');
 if DBInicio.Empresa.INS_MUNICIPAL= '' then
   GeraException('Inscrição da empresa não preenchido. Não funcionará corretamente.');
 if DBInicio.Empresa.RAZAO = '' then
   GeraException('Razão social da empresa não preenchido. Não funcionará corretamente.');
 ACBrNFSe1.Configuracoes.Geral.FormatoAlerta:=  '[TN]%TAGNIVEL%[/TN] [TG]%TAG%[/TG] [DSC]%DESCRICAO%[/DSC] [MSG]%MSG%.[/MSG]';

 if DBInicio.NFSE.AmbienteNFSE = 0  then
   lambiente.Caption := 'Homologação'
 else
   lambiente.Caption := 'Produção :  PREFEITURA DE '+sPrefeituraNome;
// TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.
 ACBrNFSe1.Configuracoes.Certificados.VerificarValidade :=True;
 ACBrNFSe1.Configuracoes.Arquivos.AdicionarLiteral := True;
 ACBrNFSe1.Configuracoes.Arquivos.EmissaoPathNFSe  := True;
 ACBrNFSe1.Configuracoes.Arquivos.SepararPorMes    := True;
 ACBrNFSe1.Configuracoes.Arquivos.SepararPorCNPJ   := False;
 path := DBInicio.Versao.PATH +'NFSe\';
  with ACBrNFSe1.Configuracoes.Geral do
   begin

   if DBInicio.NFSE.Emp_TipoCertificado = 1 then //a1
   begin
     SSLLib := libCapicomDelphiSoap;
     SSLCryptLib := cryWinCrypt;
     SSLHttpLib := httpWinHttp;
     SSLXmlSignLib := xsMsXml;
   end;
   if (DBInicio.NFSE.Emp_TipoCertificado = 3) or (DBInicio.NFSE.Emp_TipoCertificado = 9) then //a1
   begin
     SSLLib := libWinCrypt;
     SSLCryptLib := cryWinCrypt;
     SSLHttpLib := httpWinHttp;
     SSLXmlSignLib := xsLibXml2;
   end;

    ACBrNFSe1.Configuracoes.WebServices.SSLType :=  LT_TLSv1_2;


     Salvar          := False ;
     ACBrNFSe1.Configuracoes.Arquivos.PathSchemas := path+'ArqINI';
     MontarPathSchema := True;
     // PathIniProvedor := path+ 'ArqINI';
     ACBrNFSe1.LerCidades;
     CodigoMunicipio := DBInicio.Empresa.CID_IBGE;
   end;
 ACBrNFSe1.Configuracoes.Arquivos.PathGer          := path;
 ACBrNFSe1.Configuracoes.Arquivos.PathNFSe         := path;
 // nome do schema fica o nome do provedor para facilitar
 if DBInicio.Empresa.CID_IBGE = 4106902  then
   ACBrNFSe1.Configuracoes.Arquivos.PathSchemas      := path+ LowerCase(sPrefeitura)
 else
   ACBrNFSe1.Configuracoes.Arquivos.PathSchemas      := path+ ACBrNFSe1.Configuracoes.Geral.xprovedor;
 ACBrNFSe1.Configuracoes.Arquivos.NomeLongoNFSe    := True;


 PathMensal := ACBrNFSe1.Configuracoes.Arquivos.GetPathGer(0,'');
 ACBrNFSe1.Configuracoes.Geral.LerParamsMunicipio;
 ACBrNFSe1.Configuracoes.Arquivos.PathCan    := PathMensal;
 ACBrNFSe1.Configuracoes.Arquivos.PathSalvar := PathMensal;
 ACBrNFSe1.Configuracoes.Arquivos.Salvar     := True;
 ACBrNFSe1.Configuracoes.WebServices.AjustaAguardaConsultaRet:=True;
 ACBrNFSe1.Configuracoes.Geral.ConsultaLoteAposEnvio := True;
 ACBrNFSe1.Configuracoes.WebServices.AguardarConsultaRet := 10000;    //10 seg
 ACBrNFSe1.Configuracoes.WebServices.IntervaloTentativas := 10000;
 ACBrNFSe1.Configuracoes.WebServices.Tentativas := 5;
 ACBrNFSe1.Configuracoes.WebServices.TimeOut := 50000;

// ACBrNFSe1.Configuracoes.Geral.SenhaWeb        := edtSenhaWeb.Text;
// ACBrNFSe1.Configuracoes.Geral.UserWeb         := edtUserWeb.Text;

 ACBrNFSe1.Configuracoes.Geral.Emitente.CNPJ      := RetirarMascaraCNPJ_INSC(DBInicio.Empresa.CNPJ_CNPF);
 ACBrNFSe1.Configuracoes.Geral.Emitente.InscMun   := RetirarMascaraCNPJ_INSC(DBInicio.Empresa.INS_MUNICIPAL);
 ACBrNFSe1.Configuracoes.Geral.Emitente.RazSocial := DBInicio.Empresa.RAZAO;
 ACBrNFSe1.Configuracoes.Geral.Emitente.WSUser   := RetirarMascaraCNPJ_INSC(DBInicio.Empresa.CNPJ_CNPF);
 ACBrNFSe1.Configuracoes.Geral.Emitente.WSFraseSecr := '';

 ACBrNFSe1.Configuracoes.WebServices.Salvar     := True ;

 if DBInicio.NFSE.AmbienteNFSE = 0  then
  ACBrNFSe1.Configuracoes.WebServices.Ambiente   := taHomologacao
 else
  ACBrNFSe1.Configuracoes.WebServices.Ambiente   := taProducao;

  //propriedade para vizualizar mesangem em outra tela , retirar quando for para o release
 ACBrNFSe1.Configuracoes.WebServices.Visualizar := False;
  //proxy do webservice ;
// ACBrNFSe1.Configuracoes.WebServices.ProxyHost  := edtProxyHost.Text;
// ACBrNFSe1.Configuracoes.WebServices.ProxyPort  := edtProxyPorta.Text;
// ACBrNFSe1.Configuracoes.WebServices.ProxyUser  := edtProxyUser.Text;
// ACBrNFSe1.Configuracoes.WebServices.ProxyPass  := edtProxySenha.Text;
 ACBrNFSe1.Configuracoes.WebServices.UF         :=  DBInicio.Empresa.UF;



 if ACBrNFSe1.DANFSe <> nil then
 begin
  OpenAux('SELECT EMP_LOGO FROM EMP0000 WHERE EMP_CODIGO = '+ QuotedStr(DBInicio.Empresa.EMP_CODIGO));

  vlogoStream := qAux.CreateBlobStream(qAux.FieldByName('EMP_LOGO'),bmRead);
  FotoJpg := TJpegImage.Create;

  try
   fotojpg.LoadFromStream(vlogoStream);
   FotoJpg.SaveToFile(path+ '\'+'logo' + DBInicio.EMP_CODIGO + '.jpg');


  finally
    FreeAndNil(vlogoStream);
    FreeAndNil(FotoJpg);
  end;
   ACBrNFSe1.DANFSE := ACBrNFSeDANFSeFR1;
//   if UpperCase( ACBrNFSe1.Configuracoes.Geral.xprovedor) = 'GINFES' then
//     ACBrNFSeDANFSeFR1.FastFile :=  path +'\relatorio\DANFSEPadraoGinfes.fr3'
//   else
//     ACBrNFSeDANFSeFR1. FastFile :=  path +'\relatorio\DANFSEPadrao.fr3';     //    DANFSEPadrao
//   ACBrNFSe1.DANFSe.TipoDANFSE := tpPadrao;
   ACBrNFSe1.DANFSe.Prestador.RazaoSocial :=  DBInicio.Empresa.RAZAO;
   // primeiro verifica se o logo da prefeitura está nfse, depois na pasta de esquemas, depois com o nome de (prefeitura + numero de municipio)
   if fileexists(path+ '\'+'prefeitura.jpg') then //verifica se existe o logo da prefeitura na pasta principal
      ACBrNFSe1.DANFSe.Logo       :=path+ '\'+'prefeitura.jpg'
   else if fileexists(ACBrNFSe1.Configuracoes.Arquivos.PathSchemas+ '\'+'prefeitura.jpg') then //verifica se existe o logo da prefeitura na pasta do provedor
      ACBrNFSe1.DANFSe.Logo := ACBrNFSe1.Configuracoes.Arquivos.PathSchemas+ '\'+'prefeitura.jpg'
   else if fileexists(ACBrNFSe1.Configuracoes.Arquivos.PathSchemas+ '\'+'prefeitura'+IntToStr(DBInicio.Empresa.CID_IBGE)+'.jpg') then
      ACBrNFSe1.DANFSe.Logo :=  ACBrNFSe1.Configuracoes.Arquivos.PathSchemas+ '\'+'prefeitura'+IntToStr(DBInicio.Empresa.CID_IBGE)+'.jpg';

   ACBrNFSe1.DANFSe.Prefeitura := 'PREFEITURA MUNICIPAL DE ' + sPrefeituraNome;
   ACBrNFSe1.DANFSe.PathPDF    := path;
   ACBrNFSe1.DANFSe.Email := DBInicio.Empresa.EMAIL;
   ACBrNFSe1.DANFSe.Prestador.Fone := dbinicio.Empresa.FONE;
   ACBrNFSe1.DANFSE.Prestador.Endereco := dbinicio.Empresa.ENDERECO;
   ACBrNFSe1.DANFSE.Prestador.Municipio := DBInicio.Empresa.CIDADE;
   ACBrNFSe1.DANFSE.Prestador.UF := DBInicio.Empresa.UF + ' ' + DBInicio.Empresa.CEP;


   ACBrNFSe1.DANFSe.Prestador.Logo :=path+ '\'+'logo' + DBInicio.EMP_CODIGO + '.jpg';




   ACBrNFSe1.DANFSE.Provedor:=   ACBrNFSe1.Configuracoes.Geral.Provedor;
 //  TTipoDANFSE = ( tpPadrao, tpIssDSF, tpFiorilli );
   ACBrNFSe1.DANFSe.TipoDANFSE := tpPadrao;

 end;

 ACBrNFSe1.MAIL.Host     := DBInicio.Empresa.EmailHost ;
 ACBrNFSe1.MAIL.Port     := DBInicio.Empresa.EmailPorta;
 ACBrNFSe1.MAIL.Username := DBInicio.Empresa.EmailUserName;
 ACBrNFSe1.MAIL.Password := DBInicio.Empresa.EmailPassworld;

 ACBrNFSe1.MAIL.From     := DBInicio.Empresa.EmailUserName;
 ACBrNFSe1.MAIL.FromName := dbinicio.Empresa.RAZAO;
 ACBrNFSe1.MAIL.SetTLS   := DBInicio.Empresa.EmailRequerConexaoTLS;
 ACBrNFSe1.MAIL.SetSSL   := DBInicio.Empresa.EmailRequerConexaoSSL;
 ACBrNFSe1.MAIL.UseThread   := True;
 ACBrNFSe1.MAIL.ReadingConfirmation := False;

end;

function TfrmNfse.ConsultarLote(situacao, lote: integer;const protocolo: string) :boolean;
var i : integer;
mensagem : string;
// clone : TClientDataSet;
  rps :string;
begin
  try
    // ACBrNFSe1.ConsultarLoteRps(IntToStr(lote), Protocolo);  //'EACBrDFeException'
    ACBrNFSe1.ConsultarLoteRps(Protocolo, IntToStr(lote)); // NOVA REGRA
  except
    //
  end;
    result := False;
    if situacao = 0  then // araucaria está trazendo errado, mais tentar de novo
    begin
      if (ACBrNFSe1.notasfiscais.count=0) or  (ACBrNFSe1.notasfiscais.items[0] = nil) then
        exit;

      if (ACBrNFSe1.notasfiscais.items[0].nfse.Situacao <> 0) then
        situacao :=  ACBrNFSe1.notasfiscais.items[0].nfse.Situacao;
    end;
    if situacao = 2  then
    for I := 0 to ACBrNFSe1.NotasFiscais.Count-1 do
    begin

      mensagem := 'RPS enviado a prefeitura';
      GravarHistorico(0,StrToInt( ACBrNFSe1.NotasFiscais.Items[i].NFSe.IdentificacaoRps.Numero),mensagem);

    end;
    // rejeitado
    if (situacao = 3) and (ACBrNFSe1.Configuracoes.Geral.xProvedor <> 'Equiplano') then
    begin            // ACBrNFSe1.WebService.Emite.Erros.Items[0].Descricao
      with ACBrNFSe1.WebService.Emite.Erros do
        for i:= 0 to Count-1 do
        begin
            mensagem := 'Erro: '+ items[i].Codigo + '- '+ items[i].Descricao + '. Correção : ' + items[i].Correcao;
             if ACBrNFSe1.WebService.Emite.NumeroRps <> '' then
                 rps :=  ACBrNFSe1.WebService.Emite.NumeroRps
             else if ACBrNFSe1.NotasFiscais.Items[i].NFSe.IdentificacaoRps.Numero <> '' then
                  rps := ACBrNFSe1.NotasFiscais.Items[i].NFSe.IdentificacaoRps.Numero;
            GravarHistorico(0,StrToInt(rps),mensagem);
        end;
       GravaSituacaoLote(LOTE,tsProcessadoComErros)
    end
    // virou nfse - sucesso
    else if (situacao = 4) or ((situacao = 3) and (ACBrNFSe1.Configuracoes.Geral.xprovedor = 'Equiplano')) then
    begin
      if ACBrNFSe1.WEBService.ConsultaSituacao.Sucesso then
        with ACBrNFSe1.WEBService.ConsultaSituacao.Alertas do
        for i:= 0 to Count-1 do
        begin
          if  Items[i].Codigo = 'FOI' then
          begin
            mensagem:= 'Cancelado com sucesso a NFSE.' ;
            GravarCancelamentoConsulta(2,ACBrNFSe1.WEBService.ConsultaSituacao.Data,ACBrNFSe1.WEBService.ConsultaSituacao.NumeroNota);
            GravarHistorico(0,StrToInt(ACBrNFSe1.WEBService.ConsultaSituacao.NumeroRps),mensagem);
          end
          else
          begin
           mensagem:= 'Processado com sucesso a NFSE.' ;

           // RPS, NFSE, ValorCredito, CodVerificacao, XML_NFSE : AnsiString
           GravarNFSE(StrToInt(ACBrNFSe1.WEBService.ConsultaSituacao.NumeroRps),
                     StrToInt(ACBrNFSe1.WEBService.ConsultaSituacao.NumeroRps),
                     ACBrNFSe1.notasfiscais.items[0].nfse.ValorCredito,
                     ACBrNFSe1.notasfiscais.items[0].nfse.CodigoVerificacao,
                     ACBrNFSe1.notasfiscais.items[0].XmlNfse);
            GravarHistorico(0,StrToInt(ACBrNFSe1.WEBService.ConsultaSituacao.NumeroRps),mensagem);

          end;
        end;
        result := True;
    end;


end;

procedure TfrmNfse.ConsultaRPS;
var clone : TClientDataSet;
begin
  clone := TClientDataSet.Create(Self);
  try
    clone.CloneCursor(CdsPesq,False,true);
    clone.Filtered := False;
    clone.Filter:= '(selecionado = true)';
    clone.Filtered := True;
    clone.First;
    preencherNotas(0,clone);
    clone.First;
    while not clone.Eof do
    begin

    if not ACBrNFSe1.SSL.CertificadoLido then
    begin
       ACBrNFSe1.SSL.NumeroSerie := BuscaUmDadoSqlAsString('SELECT PMT_CERTIFICADO_DIGITAL FROM PRMT0001 WHERE EMP_CODIGO = ' + QuotedStr(DBInicio.Empresa.EMP_CODIGO));
       ACBrNFSe1.SSL.CarregarCertificado;
       if not ACBrNFSe1.SSL.CertificadoLido then
       begin
         MessageDlg('Favor informar o número de série do certificado da empresa ' + DBInicio.Empresa.emp_codigo + ' nos parâmetros globais', mtWarning, [mbOK], 0);
         Abort;
       end;
       // ACBrNFSe1.SSL.SelecionarCertificado;
    end;



     ACBrNFSe1.ConsultarNFSeporRps(IntToStr(clone.FieldByName('RPS_codigo').AsInteger),
                                         clone.FieldByName('nfse_serie').AsString,
                                          '1', //rps
                                          IntToStr(clone.FieldByName('num_lote').AsInteger));


     clone.Next;
    end;
  finally
    FreeAndNil(clone);
  end;
end;

procedure TfrmNfse.consultarSitLotes;
var clone, clone2 : TClientDataSet;
loteLista : TStringList;
rps :string;
 lote,i, index,vsituacao : integer;
 protocolo :string;
 mensagem, cancelada, processada, numeroRPS, CodigoVerificacao, numeroNota :string;
begin
  clone := TClientDataSet.Create(Self);
  clone2 := TClientDataSet.Create(Self);
  loteLista:=TStringList.Create;
  try
    clone.CloneCursor(CdsPesq,False,true);
    clone.Filtered := False;
    clone.Filter:= '(selecionado = true)';
    clone.Filtered := True;
    clone.First;

    lotelista.Delimiter := ',';
    while not clone.Eof do
    begin
     lote:= clone.FieldByName('num_lote').AsInteger;

     //QUANDO HOUVE ERRO NA HORA DE GRAVA O LOTE
     if lote = 0  then
     begin
      clone2.CloneCursor(CdsPesq,False,true);
      clone2.Filtered := False;
      clone2.Filter:= '(selecionado = true) and (nfse_codigo = '+IntToStr(clone.FieldByName('NFSE_Codigo').AsInteger) + ')';
      clone2.Filtered := True;
      preencherNotas(lote,clone2);
      ACBrNFSe1.ConsultarNFSeporRps(IntToStr(clone.FieldByName('RPS_Codigo').AsInteger) ,
                                                    clone.FieldByName('NFSE_Serie').AsString,
                                                    '1','0');
      if (ACBrNFSe1.WebService.ConsultaNFSeporRps.XmlRetorno <> '') then
      // with ACBrNFSe1.WebService.ConsultaNFSeporRps do
      begin
          if ACBrNFSe1.Configuracoes.Geral.xProvedor <> 'ISSCuritiba'  then
          begin
            if (ACBrNFSe1.WebService.ConsultaNFSeporRps.NumeroLote =  '0') or (ACBrNFSe1.WebService.ConsultaNFSeporRps.NumeroLote =  '') then
            begin
              lote := GetNextSequence('GEN_LOTENFSE');

              ExecSql(' INSERT INTO LOTE_NFSE (NUM_lote,LSE_STATUS, lse_dataRecebimento )  '+
                      ' values (' + IntToStr(lote) + ','+QuotedStr('T') +','+ DateTimeToSQL(NOW)+  ')');
              if ACBrNFSe1.WebService.ConsultaNFSeporRps.NumeroRps <> '' then
                numeroRPS := ACBrNFSe1.WebService.ConsultaNFSeporRps.NumeroRps
              else
                numeroRPS := ACBrNFSe1.WebService.ConsultaNFSeporRps.NumeroRps;

              if numeroRPS <> '' then // (ACBrNFSe1.WebService.ConsultaNFSeporRps.NumeroRps <> '') or (ACBrNFSe1.WebService.ConsultaNFSeporRps.NumRPS <> '0')  then // era NumeroRPS
                ExecSql(' update NFSERVICO '+
                        ' set NUM_lote = '+ IntToStr(lote) +
                        ' WHERE RPS_CODIGO = '+ numeroRPS +
                        ' AND EMP_CODIGO = '+QuotedStr(DBInicio.Empresa.EMP_CODIGO));
              ACBrNFSe1.WebService.ConsultaNFSeporRps.Situacao := '4';

            end
            else
              lote := StrToInt(ACBrNFSe1.WebService.ConsultaNFSeporRps.NumeroLote);

          end
          else
          begin
            if ACBrNFSe1.WebService.ConsultaNFSeporRps.Sucesso then
            begin
              if BuscaUmDadoSqlAsString('SELECT LSE_PROTOCOLO FROM LOTE_NFSE WHERE LSE_PROTOCOLO = ' + QuotedStr(ACBrNFSe1.WebService.Emite.Protocolo)) = '' then
              begin
                lote := GetNextSequence('GEN_LOTENFSE');
                ExecSql(' INSERT INTO LOTE_NFSE (NUM_lote, LSE_PROTOCOLO, LSE_STATUS, lse_dataRecebimento )  '+
                        ' values (' + IntToStr(lote) + ','+QuotedStr(ACBrNFSe1.WebService.Emite.Protocolo) + ','+QuotedStr('S') +','+ DateTimeToSQL(NOW)+  ')');

                ExecSql(' update NFSERVICO '+
                        ' set NUM_lote = '+ IntToStr(lote) +
                        ' WHERE RPS_CODIGO = '+ ACBrNFSe1.WebService.ConsultaNFSeporRps.NumeroRps+
                        ' AND EMP_CODIGO = '+QuotedStr(DBInicio.Empresa.EMP_CODIGO));
              end;


              ACBrNFSe1.WebService.ConsultaNFSeporRps.Situacao := '4';
              ACBrNFSe1.WebService.ConsultaNFSeporRps.NumeroRps := ACBrNFSe1.WebService.ConsultaNFSeporRps.NumeroRps;
            end
            else
            if ACBrNFSe1.WebService.ConsultaNFSeporRps.Situacao = '' then
              ACBrNFSe1.WebService.ConsultaNFSeporRps.Situacao := '3';
          end;

          case strtoint(ACBrNFSe1.WebService.ConsultaNFSeporRps.Situacao)   of
           2 : GravaSituacaoLote(LOTE,tsConsultadoEmProcesso); //ainda em processo
           3 :
             if ACBrNFSe1.Configuracoes.Geral.xProvedor = 'ISSCuritiba' then
             begin
                mensagem := RetornarConteudoEntre(ACBrNFSe1.WebService.ConsultaNFSeporRps.XMLRetorno, '<Codigo>','</Codigo>');
                mensagem := mensagem + ' - ' + RetornarConteudoEntre(ACBrNFSe1.WebService.ConsultaNFSeporRps.XMLRetorno, '<Mensagem>','</Mensagem>');
                mensagem := mensagem + ' - ' + RetornarConteudoEntre(ACBrNFSe1.WebService.ConsultaNFSeporRps.XMLRetorno, '<Correcao>','</Correcao>');
                 if ACBrNFSe1.WebService.ConsultaNFSeporRps.NumeroRps <> '' then
                     rps := ACBrNFSe1.WebService.ConsultaNFSeporRps.NumeroRps
                 else
                      rps := '0';
                GravarHistorico(0,StrToInt(rps),mensagem);
                GravaSituacaoLote(LOTE,tsProcessadoComErros);
             end
             else
             begin
              with ACBrNFSe1.WebService.ConsultaLoteRps.Alertas do
                for i:= 0 to Count-1 do
                begin
                    mensagem := 'Alerta: '+ items[i].Codigo + '- '+ items[i].Descricao + '. Correção : ' + items[i].Correcao;
                     if ACBrNFSe1.WebService.ConsultaNFSeporRps.NumeroRps <> '' then
                         rps := ACBrNFSe1.WebService.ConsultaNFSeporRps.NumeroRps
                     else
                          rps := '0';
                    GravarHistorico(0,StrToInt(rps),mensagem);
                    GravaSituacaoLote(LOTE,tsProcessadoComErros);
                end;
              with ACBrNFSe1.WebService.ConsultaLoteRps.Erros do
                for i:= 0 to Count-1 do
                begin
                    mensagem := 'Erro: '+ items[i].Codigo + '- '+ items[i].Descricao + '. Correção : ' + items[i].Correcao;
                     if ACBrNFSe1.WebService.ConsultaNFSeporRps.NumeroRps <> '' then
                         rps := ACBrNFSe1.WebService.ConsultaNFSeporRps.NumeroRps
                     else
                          rps := '0';

                    GravarHistorico(0,StrToInt(rps),mensagem);
                    GravaSituacaoLote(LOTE,tsProcessadoComErros);
                end;
             end;
           4:
             begin
              if ACBrNFSe1.WebService.ConsultaNFSeporRps.Cancelamento.Cancelada then
              begin
                mensagem:= 'Cancelado com sucesso a NFSE.' ;
                GravarCancelamentoConsulta(2,ACBrNFSe1.WebService.ConsultaNFSeporRps.Data, ACBrNFSe1.WebService.ConsultaNFSeporRps.NumeroNota);
                GravarHistorico(0,StrToInt(ACBrNFSe1.WebService.ConsultaNFSeporRps.NumeroRps),mensagem);
              end
              else
              begin
               mensagem:= 'Processado com sucesso a NFSE.' ;
               codigoVerificacao := RetornarConteudoEntre(ACBrNFSe1.WebService.ConsultaNFSeporRps.XMLRetorno, '<cdAutenticacao>','</cdAutenticacao>');
               if codigoVerificacao = '' then
                 codigoVerificacao := ACBrNFSe1.notasfiscais.items[0].nfse.CodigoVerificacao;
               numeroNota := ACBrNFSe1.notasfiscais.items[0].NFSe.Numero;
               if numeroNota = '' then
                 numeroNota := ACBrNFSe1.WebService.ConsultaNFSeporRps.NumeroNota;

               GravarNFSE(StrToInt(ACBrNFSe1.WebService.ConsultaNFSeporRps.NumeroRps),
                         StrToIntDef(numeroNota, 0), // ACBrNFSe1.WebService.ConsultaNFSeporRps.NumeroNota
                         ACBrNFSe1.notasfiscais.items[0].nfse.ValorCredito,
                         codigoVerificacao,
                         ACBrNFSe1.notasfiscais.items[0].XmlNfse);

                GravarHistorico(0,StrToInt(ACBrNFSe1.WebService.ConsultaNFSeporRps.NumeroRps),mensagem);
              end;
              GravaSituacaoLote(LOTE,tsSucesso);
             end;
          end;  // FIM CASE

        end; // FIM -WITH
     end // FIM DO LOTE = 0
     else
       if not loteLista.Find(IntToStr(lote),index)  then
        loteLista.Add(IntToStr(lote));

     clone.Next;

    end;
    if lotelista.Count <> 0 then
    try

     OpenAux(' SELECT num_lote, lse_protocolo FROM LOTE_NFSE ' +
             ' where num_lote in ('+  lotelista.DelimitedText +')' +
             ' and lse_protocolo is not null ' );
     if qAux.RecordCount>0 then
     begin
      qaux.First;
      while not qAux.Eof do
      begin
          if ACBrNFSe1.Configuracoes.Geral.xprovedor = 'SP' then
            lote := StrToInt(qAux.FieldByName('lse_protocolo').AsString)
          else
           lote:= qAux.FieldByName('num_lote').AsInteger ;
         protocolo := qAux.FieldByName('lse_protocolo').AsString;
         // consulta situação não funciona na lexson, por enquanto
         if UpperCase(ACBrNFSe1.Configuracoes.Geral.xprovedor) = 'LEXSOM' then
         begin
           vsituacao:=0;
           if ConsultarLote(vsituacao,lote,protocolo) then
              GravaSituacaoLote(LOTE,tsSucesso); //ainda em processo

         end
         else
         begin
          try
           // ACBrNFSe1.ConsultarSituacao(Protocolo, IntToStr(lote));
           try
             ACBrNFSe1.ConsultarNFSeporRps(clone.FieldByName('RPS_CODIGO').AsString, clone.FieldByName('NFSE_Serie').AsString, '1','0');
           except
            on e: exception do
            begin
                MessageDlg(e.message, mtWarning, [mbOK] ,0);
            end;
           end;
           cancelada := RetornarConteudoEntre(ACBrNFSe1.WebService.ConsultaNFSeporRps.XMLRetorno, '<DataHoraCancelamento>','</DataHoraCancelamento>');
           processada := RetornarConteudoEntre(ACBrNFSe1.WebService.ConsultaNFSeporRps.XMLRetorno, '<DataEmissaoRps>','</DataEmissaoRps>');
           if (ACBrNFSe1.WebService.CancelaNFSe.Sucesso) or (cancelada <> '') then
           begin
             mensagem := 'Cancelada com Sucesso a NFSE em ' + cancelada;
             GravarCancelamentoConsulta(2,ACBrNFSe1.WebService.ConsultaNFSeporRps.Data, ACBrNFSe1.WebService.ConsultaNFSeporRps.NumeroNota);
             // GravarHistorico(0,StrToInt(ACBrNFSe1.WebService.ConsultaNFSeporRps.NumRps),mensagem);
           end
           else
           if ACBrNFSe1.WebService.ConsultaNFSeporRps.Sucesso then
           begin
             mensagem := 'Processada com Sucesso a NFSE em ' + processada;
             GravarNFSE(
               StrToInt(ACBrNFSe1.WebService.ConsultaNFSeporRps.NumeroRps),
               StrToInt(ACBrNFSe1.WebService.ConsultaNFSeporRps.NumeroNota),
               0,
               ACBrNFSe1.WebService.ConsultaNFSeporRps.CodigoVerificacao,
               ACBrNFSe1.WebService.ConsultaNFSeporRps.XMLRetorno
             );
           end;

           vsituacao := StrToIntDef(ACBrNFSe1.WebService.ConsultaSituacao.Situacao, 0);
           if vsituacao = 2 then // EM PROCESSO
              GravaSituacaoLote(LOTE,tsConsultadoEmProcesso); //ainda em processo
           if ACBrNFSe1.Configuracoes.Geral.xprovedor = 'Equiplano' then
           begin
            if ACBrNFSe1.WebService.ConsultaLoteRps.Sucesso then
            begin
              GravaSituacaoLote(LOTE,tsSucesso);
              ConsultarLote(vsituacao,lote,protocolo);
            end;
           end
           else
           begin
             if vsituacao in [3,4] then
             begin   // processado foi rejeitado ou virou nfse
                if vsituacao = 3 then // com erros
                  GravaSituacaoLote(LOTE,tsProcessadoComErros)
                else // processado com sucesso
                begin
                  GravaSituacaoLote(LOTE,tsSucesso); //ainda em processo
                end;
                ConsultarLote(vsituacao,lote,protocolo);
             end;
           end;
           if (mensagem = '') and (UpperCase(ACBrNFSe1.Configuracoes.Geral.xprovedor) = 'IPM') then
           begin
             mensagem := RetornarConteudoEntre(ACBrNFSe1.WebService.ConsultaNFSeporRps.XMLRetorno, '<codigo>','</codigo>');
           end;
           GravarHistorico(LOTE ,clone.FieldByName('RPS_CODIGO').AsInteger, mensagem );

          finally
//            ShowMessage('teste');
          end;
         end;


        qaux.Next;
      end;
     end
     else
     begin

        preencherNotas(0,clone);
        clone.First;
        while not clone.Eof do
        begin
          ACBrNFSe1.ConsultarNFSeporRps(IntToStr(clone.FieldByName('RPS_CODIGO').AsInteger),clone.FieldByName('NFSE_SERIE').AsString,'1'{RPS}, inttostr(clone.FieldByName('num_lote').AsInteger) ) ;
          // ACBrNFSe1.ConsultarNFSeporRps(IntToStr(clone.FieldByName('RPS_CODIGO').AsInteger),clone.FieldByName('RPS_CODIGO').AsString,'1'{RPS}, inttostr(clone.FieldByName('num_lote').AsInteger) ) ;
          vsituacao := StrToIntDef(ACBrNFSe1.WebService.ConsultaNFSeporRps.Situacao, 0);
          if ACBrNFSe1.WebService.ConsultaNFSeporRps.erros.Count > 0 then
            for i := 0 to ACBrNFSe1.WebService.ConsultaNFSeporRps.erros.Count -1 do
            begin
              mensagem := ACBrNFSe1.WebService.ConsultaNFSeporRps.erros.items[i].Codigo + ' - ' +
                          ACBrNFSe1.WebService.ConsultaNFSeporRps.erros.items[i].Descricao + ' - ' +
                          ACBrNFSe1.WebService.ConsultaNFSeporRps.erros.items[i].Correcao;

              GravarHistorico(0,clone.FieldByName('RPS_CODIGO').AsInteger,mensagem);
            end;
          if ACBrNFSe1.WebService.ConsultaNFSeporRps.Alertas.Count > 0 then
            for i := 0 to ACBrNFSe1.WebService.ConsultaNFSeporRps.Alertas.Count -1 do
            begin
              mensagem := ACBrNFSe1.WebService.ConsultaNFSeporRps.Alertas.items[i].Codigo  + ' - ' +
                          ACBrNFSe1.WebService.ConsultaNFSeporRps.Alertas.items[i].Descricao  + ' - ' +
                          ACBrNFSe1.WebService.ConsultaNFSeporRps.Alertas.items[i].Correcao;
              GravarHistorico(0,clone.FieldByName('RPS_CODIGO').AsInteger,mensagem);
            end;
{          if ACBrNFSe1.WebService.ConsultaNFSeporRps.Resumos.Count > 0 then
            for i := 0 to ACBrNFSe1.WebService.ConsultaNFSeporRps.Resumos.Count -1 do
            begin
              mensagem := ACBrNFSe1.WebService.ConsultaNFSeporRps.Resumos.items[i].Codigo  + ' - ' +
                          ACBrNFSe1.WebService.ConsultaNFSeporRps.Resumos.items[i].Descricao + ' - ' +
                          ACBrNFSe1.WebService.ConsultaNFSeporRps.Resumos.items[i].Correcao;
              GravarHistorico(0,clone.FieldByName('RPS_CODIGO').AsInteger,mensagem);
            end; }
         clone.Next;
        end;
        // raise Exception.Create('Lote sem protocolo.');
     end;


    except
    on e: Exception do
      begin
        PanelAguarde.Visible := False;
        raise Exception.Create('Error : '+ e.Message);
      end;
    end;

  finally
    FreeAndNil(clone);
    FreeAndNil(clone2);
    loteLista.Free;
  end;
end;

procedure TfrmNfse.ConsultarTodosRPS;
Var clone : TClientDataSet;
loteLista : TStringList;
 lote, index,vsituacao : integer;
 protocolo :string;
begin
  if (MessageDlg('Deseja verificar se todas as notas já foram processados pela prefeitura ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
  begin
//   if not ACBrNFSe1.SSL.CertificadoLido then
//      ACBrNFSe1.SSL.SelecionarCertificado;

  clone := TClientDataSet.Create(Self);
  loteLista:=TStringList.Create;
  try
    chkAguardando.Checked := True;
    buscaNfse;
    clone.CloneCursor(CdsPesq,False,true);
    clone.Filtered := False;
    clone.Filter:= 'LSE_STATUS = ''T''';
    clone.Filtered := True;
    preencherNotas(0,clone);
    clone.First;
    lotelista.Delimiter := ',';
    while not clone.Eof do
    begin


    if not ACBrNFSe1.SSL.CertificadoLido then
    begin
       ACBrNFSe1.SSL.NumeroSerie := BuscaUmDadoSqlAsString('SELECT PMT_CERTIFICADO_DIGITAL FROM PRMT0001 WHERE EMP_CODIGO = ' + QuotedStr(DBInicio.Empresa.EMP_CODIGO));
       ACBrNFSe1.SSL.CarregarCertificado;
       if not ACBrNFSe1.SSL.CertificadoLido then
       begin
         MessageDlg('Favor informar o número de série do certificado da empresa ' + DBInicio.Empresa.emp_codigo + ' nos parâmetros globais', mtWarning, [mbOK], 0);
         Abort;
       end;
       // ACBrNFSe1.SSL.SelecionarCertificado;
    end;



     lote:= clone.FieldByName('num_lote').AsInteger;
     if not loteLista.Find(IntToStr(lote),index)  then
        loteLista.Add(IntToStr(lote));
     clone.Next;
    end;
    try
     OpenAux(' SELECT num_lote, lse_protocolo FROM LOTE_NFSE ' +
             ' where num_lote in ('+  lotelista.DelimitedText +')' +
             ' and lse_protocolo is not null ' );
     if qAux.RecordCount>0 then
     begin
      qaux.First;
      while not qAux.Eof do
      begin
         lote:= qAux.FieldByName('num_lote').AsInteger ;
         protocolo := qAux.FieldByName('lse_protocolo').AsString;

         try
          ACBrNFSe1.ConsultarSituacao(Protocolo);
          vsituacao := StrToInt(ACBrNFSe1.WebService.ConsultaNFSeporRps.Situacao);
         if vsituacao = 2 then // EM PROCESSO
            GravaSituacaoLote(LOTE,tsConsultadoEmProcesso); //ainda em processo

         if vsituacao in [3,4] then    // processado foi rejeitado ou virou nfse
         begin
            if vsituacao = 3  then
               GravaSituacaoLote(lote,tsProcessadoComErros)
            else
               GravaSituacaoLote (lote, tsSucesso);
            ConsultarLote(vsituacao,lote,protocolo);

         end;
         finally
//            ShowMessage('teste');
         end;

        qaux.Next;
      end;
     end;
    except
    on e: Exception do
      raise Exception.Create('Error Message'+ e.Message);
    end;
  finally
    FreeAndNil (clone);
    loteLista.Free;
    aguardando := True;
    chkAguardando.Checked := False;
  end;

  end;
end;

procedure TfrmNfse.dbErroDblClick(Sender: TObject);
Var frmMemoForm: tFrmMemo;
begin
  inherited;
  frmMemoForm:=tFrmMemo.Create(self);
  try
    frmMemoForm.add := cdsErro.FieldByName('NFH_MSGERRO').AsString;
    frmMemoForm.Memo1.ReadOnly:= True;
    frmMemoForm.Caption := 'Detalhes do erro';
    frmMemoForm.ShowModal;
  finally
   FreeAndNil( FrmMemoForm );
  end;
end;

procedure TfrmNfse.dbnfseCellClick(Column: TColumn);
begin
  inherited;
  if not (CdsPesq.IsEmpty) and (Column.FieldName = 'selecionado') then
  begin
      if  not (CdsPesq.State in dsEditModes)  then
        CdsPesq.Edit;
      CdsPesqselecionado.AsBoolean :=  not CdsPesqselecionado.AsBoolean;
      CdsPesq.Post;
  end;

end;

procedure TfrmNfse.dbnfseDblClick(Sender: TObject);
begin
  inherited;
  FrmNotaFiscalServico := TFrmNotaFiscalServico.Create(Application);
  try
    FrmNotaFiscalServico.BuscaNotaFiscal(CdsPesq.FieldByName('nfse_codigo').AsInteger);
    FrmNotaFiscalServico.ShowModal;
  finally
    FreeAndNil(FrmNotaFiscalServico);
  end;
   buscaNfse;
end;

procedure TfrmNfse.dbnfseDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
Check: Integer;
R: TRect;
begin

  if Column.FieldName = 'selecionado' then
  begin
    dbnfse.Canvas.FillRect(Rect);
    Check := 0;
    if CdsPesq.FindField('selecionado').AsBoolean then
        Check := DFCS_CHECKED
    else Check := 0;
    R:=Rect;
    TDBGrid(sender).Canvas.Font.Color :=  TDBGrid(sender).Canvas.Brush.Color;
    InflateRect(R,-2,-2); //Diminue o tamanho do CheckBox
    DrawFrameControl(dbnfse.Canvas.Handle,R,DFC_BUTTON, DFCS_BUTTONCHECK or Check);
  end
  else
  if not CdsPesqnum_lote.IsNull  then
  begin
      if CdsPesqLSE_STATUS.AsString = 'T' then
         dbnfse.Canvas.Font.Color := clGreen
      else if not CdsPesqNFSE_DTCANCELADO.IsNull then
         dbnfse.Canvas.Font.Color := clred
      else if CdsPesqLSE_STATUS.AsString = 'R' then
         dbnfse.Canvas.Font.Color :=  $00008CFF // clWebDarkOrange
      else
         dbnfse.Canvas.Font.Color := clblue;
      dbnfse.DefaultDrawDataCell(Rect,dbnfse.columns[datacol].field, State);
  end;
//    DefaultDrawColumnCell(Rect, Datacol, Column, State);




end;

procedure TfrmNfse.EdClienteCodigoExit(Sender: TObject);
begin
  inherited;
  edClienteCodigo.Text:=StrZero(EdClienteCodigo.Text,5);
  if edClienteCodigo.Text<>'00000' then
  begin
      PesqCliente.idRetorno:=edClienteCodigo.Text;
      if PesqCliente.idRetorno='' then
         GeraException('Cliente não localizado com o código informado');

  end
  Else
  begin
      edClienteCodigo.clear;
      PesqCliente.Clear;
  end;
  btnPesquisar.Click;
end;

procedure TfrmNfse.EdClienteCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F4 then
      PesqCliente.Button.Click;
end;

procedure TfrmNfse.EdClienteCodigoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Pos(key,'1234567890'+#8)=0 then
     key := #0;
end;

procedure TfrmNfse.edLoteKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if (Key = #13) and  (edLote.Text <> '') then
  begin
    edNfse.Text := '';
    edRPS.Text := '';
    buscaNfse;
  end;
end;

procedure TfrmNfse.edNfseKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if (Key = #13) and  (edNfse.Text <> '') then
  begin
   edLote.Text := '';
   edRPS.Text := '';
   buscaNfse;
  end;
end;

procedure TfrmNfse.edRPSEnter(Sender: TObject);
begin
  inherited;
  ACBrEnterTab1.EnterAsTab := False;
end;

procedure TfrmNfse.edRPSExit(Sender: TObject);
begin
  inherited;
  ACBrEnterTab1.EnterAsTab := True;
end;

procedure TfrmNfse.edRPSKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if (Key = #13) and  (edRPS.Text <> '') then
  begin
    edLote.Text:= '';
    edNfse.Text:= '';
    buscaNfse;
  end;
end;

function TfrmNfse.enviarEmailIndy(const sPara, sAssunto: String; sMensagem: TStrings; EnviaPDF: Boolean; sCC, Anexos, sReplyTo: TStrings): boolean;
var
  Send: boolean;
  i:Integer;
  Email:String;
  msg: TIdMessage;

begin
  send:= false;
  if (dbInicio.Empresa.EmailHost <> '') then
  begin



    with SMTP do
    begin

        Disconnect;

        if (dbInicio.Empresa.EmailAutenticacao) then
           AuthType := satDefault
        else
           AuthType := satNone;

        Host := dbInicio.Empresa.EmailHost;
        IOHandler := SSLSocket;
        Password := Trim(dbInicio.Empresa.EmailPassworld);
        Port := StrToIntDef(dbInicio.Empresa.EmailPorta,0);
        Username := Trim(dbInicio.Empresa.EmailUserName);

        if (dbInicio.Empresa.EmailRequerConexaoTLS) then
           UseTLS := utUseRequireTLS
        else
           UseTLS := utNoTLSSupport;

    end;

    if dbInicio.Empresa.EmailRequerConexaoSSL then
    begin

      case dbInicio.Empresa.EmailVersaoSSL of
      1: SSLSocket.SSLOptions.Method := sslvTLSv1;
      2: SSLSocket.SSLOptions.Method := sslvSSLv2;
      3: SSLSocket.SSLOptions.Method := sslvSSLv3;
      end;

      if (dbInicio.Empresa.EmailModoSSL = 'B') then
         SSLSocket.SSLOptions.Mode := sslmBoth
      else
      if (dbInicio.Empresa.EmailModoSSL = 'C') then
         SSLSocket.SSLOptions.Mode := sslmClient
      else
      if (dbInicio.Empresa.EmailModoSSL = 'S') then
         SSLSocket.SSLOptions.Mode := sslmServer
      else
      if (dbInicio.Empresa.EmailModoSSL = 'U') then
         SSLSocket.SSLOptions.Mode := sslmUnassigned;

   end;
   msg:= tIdMessage.Create(self);
   try
     with MSG do
     begin
          Clear;
          Email := Trim(DBInicio.Empresa.EmailUserName);
          Recipients.EMailAddresses := sPara;
          From.Address := Trim(dbInicio.Empresa.EmailUserName);
          From.Text := email;
          From.Name := dbInicio.Empresa.RAZAO;
          Subject := sAssunto;
          Body :=  sMensagem;
          ReplyTo.Add;
          ReplyTo.Items[0].Address :=  Trim(sReplyTo[0]);
     end;


      // anexos
      if Assigned(Anexos) then
         for i := 0 to Anexos.Count - 1 do
         begin
              if FileExists(Anexos[i]) then
              begin
                   try
                       TIdAttachmentFile.Create(msg.MessageParts , Anexos[i]);
                    except
                   end;
              end;
         end;


     try
        SMTP.Connect();
        SMTP.Send(MSG);
        SMTP.Disconnect;
        Send := True;
     except
           Send := False;
     end;
      SMTP.Disconnect;

   finally
     msg.free;
   end;
   end;
     Result := Send;
end;

procedure TfrmNfse.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
  frmNfse := nil;
end;

procedure TfrmNfse.FormCreate(Sender: TObject);
begin
  inherited;

//  ReportMemoryLeaksOnShutdown := DebugHook <> 0;
  RxDataInicial.Date := Date-90;
  RxDataFinal.Date := Date+180;
  SalvaStatusGrid:= False;
  btnsErrosLotes.Caption := 'Ver erros';
 // pErro.Visible := False;
//  ConsultarTodosRPS;
  aguardando := False;
  chkSemLote.Checked:=true;
  btnXML_RPS.Visible := (MatchStr(DBInicio.Usuario.USERNAME,['ADM','NOVI']));
//  btnXML.Visible := (MatchStr(DBInicio.Usuario.USERNAME,['ADM','NOVI']));
//  btnConsultarTodos.Visible := (MatchStr(DBInicio.Usuario.USERNAME,['ADM','NOVI']));
  CdsPesq.SetProvider(dspSqlCdsPesq);
  CdsPesq.ProviderName := 'dspSqlCdsPesq';
  If not DBInicio.NFSE.ATIVA_NFSE then
    raise Exception.Create('Ative a NFSE que está no parâmetros globais');
  btnCancelaSistema.Visible := MatchStr(dbinicio.Usuario.USERNAME,['NOVI',DBInicio.Usuario.USUARIOPADRAO]);

end;


procedure TfrmNfse.FormShow(Sender: TObject);
begin
  inherited;
  PanelAguarde.Top := (Self.Height div 2) - (PanelAguarde.Height div 2);
  PanelAguarde.Left := (Self.Width div 2) - (PanelAguarde.Width div 2);
  ACBrNFSe1.SSL.DescarregarCertificado;
  buscaNfse;
   ConfiguracoesIniciais;
  dbnfse.OnDrawColumnCell := dbnfseDrawColumnCell;
  self.Caption := 'Nota Fiscal Serviço - Prefeitura de '+ Capitalize(DBInicio.Empresa.CIDADE);
  CdsPesq.IndexDefs.Clear;
  CdsPesq.AddIndex('rps','RPS_CODIGO',[ixDescending]);
  CdsPesq.AddIndex('dataemissao','NFSE_dataemissao;NFSE_NUM_DANFSE',[ixDescending]);
  JvGIFAnimator1.Animate := True;
end;


procedure TfrmNfse.frxNfseGetValue(const VarName: string; var Value: Variant);
var  filtros: string;
begin
  inherited;
  If VarName = 'Empresa' then
    value := DBInicio.Empresa.RAZAO
  else if VarName = 'Filtro' then
  begin
      if (RxDataInicial.Date > 0) and (RxDataFinal.Date > 0)  then
        filtros := 'Período de '+RxDataInicial.Text +' a '+ RxDataFinal.Text
      else if  (RxDataInicial.Date > 0)  then
        filtros :='Período desde  '+ RxDataInicial.Text
      else if RxDataFinal.Date > 0 then
        filtros := 'Período até '+ RxDataFinal.Text;
     if chkSemLote.Checked then
       filtros := ConcatSe(filtros, ', ' ) + 'somente os não enviados';
     if chkNFSE.Checked then
       filtros := ConcatSe(filtros, ', ' ) + 'NFSe autorizadas';
     if chkAguardando.Checked then
      filtros := ConcatSe(filtros, ', ' ) + 'RPS aguardando';
     if chkNFSE_Cancelados.Checked then
      filtros := ConcatSe(filtros, ', ' ) + ' NFSE cancelados';
     if chkRPS_REJEITADOS.Checked then
      filtros := ConcatSe(filtros, ', ' ) + 'RPS rejeitados';

     if chkNaoRevisado.Checked then
      filtros := ConcatSe(filtros, ', ' ) + 'RPS não revisado'
     else
     if chkrevisado.Checked then
      filtros := ConcatSe(filtros, ', ' ) + 'RPS revisados';

     if PesqCliente.idRetorno <> '' then
      filtros := ConcatSe(filtros, ', ' ) + ' cliente :'+PesqCliente.Text;

     if chkRPS.Checked then
       filtros := ConcatSe(filtros, ', ' ) + 'RPS enviados';



     Value := filtros;
  end;

end;

procedure TfrmNfse.GravaLote(cdsclone: TClientDataSet; ISSCuritiba: TACBrNfSeX; Lote:Integer;  Status: TStatus );
var vstatus : string;
  protocolo, xml, alertas, numeroRPS  : string;
  NomeArq: String;
  conteudo: TStringList;
  i, xmlhist: integer;
  daterec : TDateTime;
  codigoInterno: integer;
begin
  case status  of
   tsEnviado : vstatus := 'T';
   tsSucesso : vstatus := 'S';
   tsProcessadoComErros : vstatus := 'R';
  end;
 //  ISSCuritiba.NotasFiscais[1].confirmada
  //ISSCuritiba.NotasFiscais[0].NFSe.chavenfse
  cdsclone.First;
  while not cdsclone.Eof do
  begin
    cdsclone.Edit;
    cdsclone.FieldByName('num_lote').AsInteger := lote;
    cdsclone.Post;
    cdsclone.Next;
  end;
  BeginTransaction;
  protocolo := ISSCuritiba.WebService.Emite.Protocolo;
  daterec:= ISSCuritiba.NotasFiscais[0].nfse.DataEmissaoRps;
//  xml:= ACBrNFSe1.NOtasFiscais.XMLLoteOriginal;
//  OpenAux('select num_lote from lote_nfse where num_lote = ' + IntToStr(lote));
//  if qAux.IsEmpty then
    try
     if protocolo <> '' then
        ExecSql(' INSERT INTO LOTE_NFSE (NUM_lote,LSE_protocolo,LSE_STATUS, lse_dataRecebimento )  '+
               ' values (' + IntToStr(lote) + ','+ QuotedStr(protocolo) + ','+QuotedStr(vstatus) +','+ DateTimeToSQL(daterec)+  ')');


     for i:= 0 to ISSCuritiba.NotasFiscais.Count-1 do
     begin
       try
         if status = tsSucesso then
             ISSCuritiba.NotasFiscais.ImprimirPDF;
       except
         //transformar erro em oculta, para continuar o processo
       end;
       try
        xmlhist := GetNextSequence('GEN_NFSEXML');
       except
         raise Exception.Create('Erro na seqüência GEN_NFSEXML : '+IntToStr(xmlhist));
       end;
       if ISSCuritiba.NotasFiscais[i].XmlNfse = '' then
         xml:=ISSCuritiba.NotasFiscais[i].XmlRps // ISSCuritiba.NotasFiscais[i].XmlEspelho
       else
       begin
         // NomeArq := ACBrNFSe1.DANFSE.ArquivoPDF;
         // NomeArq := StringReplace(NomeArq, '.pdf', '.xml', [rfIgnoreCase]);
         // conteudo := TStringList.Create;
         // conteudo.LoadFromFile(NomeArq);
         xml := ISSCuritiba.NotasFiscais[i].XmlNfse;
       end;

       if ISSCuritiba.NotasFiscais[i].NFSe.IdentificacaoRps.Numero = '' then
        numeroRPS := ACBrNFSe1.webService.ConsultaNFSeporRps.NumeroRPS
       else
        numeroRPS := ISSCuritiba.NotasFiscais[i].NFSe.IdentificacaoRps.Numero;

       OpenAux('SELECT NFSE_CODIGO FROM NFSERVICO '+
              ' WHERE rps_codigo = ' + numeroRPS + // ISSCuritiba.NotasFiscais[i].NFSe.IdentificacaoRps.Numero +
              ' and emp_codigo = '+QuotedStr(DBInicio.Empresa.EMP_CODIGO)
              );

       codigoInterno:= qAux.FieldByName('nfse_codigo').AsInteger;
       alertas := ISSCuritiba.NotasFiscais[i].alertas;
       execsql('INSERT INTO NFSE_XML (NSX_CODIGO, NSX_XMLGERADO, NSX_ALERTAS, NSX_DTGERADO, NFSE_CODIGO)'+
               ' VALUES ( ' +IntToStr(xmlhist)+ ','+ QuotedStr(xml) +  ','+ QuotedStr(alertas)+','+DateToSQL( NOW) +
                ','+ IntToStr(codigoInterno) + ')');

       if ISSCuritiba.NotasFiscais[i].NFSe.IdentificacaoRps.Numero = '' then
        numeroRPS := ACBrNFSe1.webService.ConsultaNFSeporRps.NumeroRPS
       else
        numeroRPS := ISSCuritiba.NotasFiscais[i].NFSe.IdentificacaoRps.Numero;
       ExecSql('update NFServico' +
               ' set  num_lote = ' +IntToStr(lote)+
               ' where RPS_codigo  =' + numeroRPS +
               ' AND EMP_CODIGO = '+QuotedStr(DBInicio.EMPRESA.EMP_CODIGO))
     end;
     CommitTransaction;
     except
      on e: exception do
      begin
        cdsclone.CancelUpdates;
        RollbackTransaction ;

        raise ELoteError.Create('Erro de banco : '+e.Message);

      end;
    end;
end;


procedure TfrmNfse.GravarCancelamento;
var i : integer;
rps :string;
codigoInterno: integer;
begin
 for I := 0 to  ACBrNFSe1.NotasFiscais.Count-1 do
 begin
   rps :=   ACBrNFSe1.NotasFiscais.Items[I].NFSe.IdentificacaoRps.Numero;
   OpenAux('SELECT NFSE_CODIGO FROM NFSERVICO '+
            ' WHERE rps_codigo = '+ rps +
            ' and emp_codigo = '+QuotedStr(DBInicio.Empresa.EMP_CODIGO)
            );

    codigoInterno:= qAux.FieldByName('nfse_codigo').AsInteger;



    if rps <> '' then
    begin

      ExecSql(' update nfservico ' +
             // ' set NFSE_DTCANCELADO='+ DateToSQL(ACBrNFSe1.WebService.CancelaNFSe.Data)+
             ' set NFSE_DTCANCELADO='+ DateToSQL(Now)+
             ', NFSE_COD_CANCELADO=' + QuotedStr(ACBrNFSe1.WebService.CancelaNFSe.InfCancelamento.CodCancelamento) +
             ' where NFSE_CODIGO = '+IntToStr(codigoInterno)
              );

      ExecSql(' update DANFSE set DFS_XMLCANCELADO =  '+ QuotedStr(ACBrNFSe1.WebService.Emite.XmlRetorno) +
              ' where NFSE_CODIGO = '+IntToStr(codigoInterno)   );

      GravarHistorico(0,StrToInt( rps),'Cancelamento em '+ DateToStr(date) + ' pelo usuário ' + DBInicio.Usuario.USERNAME);
    end;
 end;

end;

procedure TfrmNfse.GravarCancelamentoConsulta(const CodCancelamento: integer; const DataCancel: TDateTime; const DANFSE_NUMERO : string);
begin

    ExecSql(' update nfservico ' +
           ' set NFSE_DTCANCELADO='+ DateToSQL(DataCancel)+
           ' ,NFSE_COD_CANCELADO=' + QuotedStr(IntToStr(CodCancelamento))+
           ' where nfse_num_DANFSE = '+  DANFSE_NUMERO   );

end;


procedure TfrmNfse.GravarCancelamentoSistema(const NFSE_CODIGO: string);
begin
  ExecSql(' update nfservico ' +
         ' set NFSE_DTCANCELADO='+ DateToSQL(now)+
         '  WHERE NFSE_CODIGO = '+ NFSE_CODIGO
          );


end;

procedure TfrmNfse.GravarHistorico(num_lote, Numrps: integer; const mensagem: string);
var vcodigo,rps  :integer;
begin
  if numrps = 0  then
  begin
    OpenAux('SELECT NFSE_CODIGO FROM NFSERVICO '+
            ' WHERE NUM_LOTE = '+ IntToStr(num_lote));

    rps:= qAux.FieldByName('nfse_codigo').AsInteger;
  end
  else
  begin
    OpenAux('SELECT NFSE_CODIGO FROM NFSERVICO '+
            ' WHERE rps_codigo = '+ IntToStr(Numrps) +
            ' and emp_codigo = '+QuotedStr(DBInicio.Empresa.EMP_CODIGO)
            );

    rps:= qAux.FieldByName('nfse_codigo').AsInteger;


  end;
  try
   vcodigo := GetNextSequence('GE_NFS_HISTORICO');
  except
    raise Exception.Create('Erro na seqüencia GE_NFS_HISTORICO'+ IntToStr(vcodigo));
  end;
  try
    ExecSql(' insert into NFS_historico (NFH_CODIGO, NFSE_CODIGO, NFH_MSGERRO,NFH_RESOLVIDO,nfh_dataCon) '+
            ' values ('+IntToStr(vcodigo)+','+IntToStr(rps)+','+QuotedStr(mensagem) +',0,'+ DateTimeToSQL(now)+ ' )' );
  except on E: Exception do
    MessageDlg(mensagem + ' - ' + e.Message, mtWarning, [mbOK],0);
    //
  end;
//  qErro.close;
//  qerro.Open;
end;

procedure TfrmNfse.GravarNFSE(RPS, NFSE: Integer; ValorCredito : double; const CodVerificacao: string; const XML_NFSE : AnsiString );
var danfse : integer;
xml :string;
 interno : integer;
begin
 if ACBrNFSe1.Configuracoes.Geral.xprovedor = 'SP' then
   xml := '<?xml version="1.0" encoding="UTF-8"?><CompNfse xmlns="http://www.prefeitura.sp.gov.br/nfe">'+ xml_nfse+'</CompNfse> '
 else
   xml := xml_nfse;

  ExecSql(' update NFSERVICO '+
          ' set NFSE_VALORCREDITO = '+ FloatToSQL(ValorCredito)+
          ' ,NFSE_NUM_DANFSE =  '+  IntToStr(NFSE)           +
          ' ,NFSE_CODVERIFICACAO = ' + QuotedStr(CodVerificacao)+
          ' WHERE RPS_CODIGO = '+ inttostr(rps)+
          ' AND EMP_CODIGO = '+QuotedStr(DBInicio.Empresa.EMP_CODIGO)
          );
  try
   danfse :=  GetNextSequence('GEN_DANFSEXML');
  except
   raise Exception.Create('Erro na seqüência GEN_DANFSEXML :'+IntToStr(danfse));
  end;

  if XML_NFSE <> '' then
  begin
   interno := BuscaUmDadoSqlAsInteger(' SELECT nfse_codigo from NFSERVICO WHERE rps_codigo = '+ IntToStr(rps) + '  AND EMP_CODIGO = '+QuotedStr( DBInicio.Empresa.EMP_CODIGO));
   ExecSql(' insert into DANFSE (DFS_CODIGO, DFS_XML, NFSE_CODIGO) '+
            ' values ('+IntToStr(danfse) + ',' +QuotedStr(xml)+ ','+ inttostr(interno) + ')' );

  end;

end;

procedure TfrmNfse.GravaSituacaoLote(num_lote: integer; status: TStatus);
var vstatus : string;
begin
// BeginTransaction;
 try
   case status of 
    tsConsultadoEmProcesso : vstatus := 'P';
    tsEnviado : vstatus := 'T';
    tsProcessadoComErros: vstatus := 'R';
    tsSucesso :vstatus := 'S';
   end;
   ExecSql(' update LOTE_NFSE ' +
           ' set lse_status = '+ QuotedStr(vstatus) + 
           ' where num_lote = '+ IntToStr(num_lote));
//   CommitTransaction;
 except on E: Exception do
 end;
end;

procedure TfrmNfse.JvArrowButton1Click(Sender: TObject);
begin
  inherited;
  try
   CdsPesq.DisableControls;
   frxNfse.ShowReport;
  finally
    CdsPesq.EnableControls;
  end;
end;

procedure TfrmNfse.miDesmarcarTodosClick(Sender: TObject);
var clone : TClientDataSet;
begin
  clone := TClientDataSet.Create(Self);
  try
    clone.CloneCursor(CdsPesq,False,true);
    clone.First;
    while not clone.Eof do
    begin
     if not (clone.State in dsEditModes) then
       clone.Edit;

     clone.FieldByName('selecionado').AsBoolean := False;
     clone.Post;
     clone.Next;
    end;
  finally
    FreeAndNil(clone);
  end;


end;

procedure TfrmNfse.miMarcarTodosClick(Sender: TObject);
var clone : TClientDataSet;
begin
  clone := TClientDataSet.Create(Self);
  try
    clone.CloneCursor(CdsPesq,False,true);
    clone.First;
    while not clone.Eof do
    begin
     if not (clone.State in dsEditModes) then
       clone.Edit;

     clone.FieldByName('selecionado').AsBoolean := True;
     clone.Post;
     clone.Next;
    end;
  finally
    FreeAndNil(clone);
  end;

end;

procedure TfrmNfse.NaoGeradaClick(Sender: TObject);
begin
  inherited;
  aguardando := True;
  chkRPS.Checked:= False;
  chkRPS_REJEITADOS.Checked:= False;
  chkNFSE_Cancelados.Checked := False;
  chkNFSE.Checked := False;
  chkAguardando.Checked := False;
  aguardando := False;
  chkSemLote.Checked:= true;
end;

procedure TfrmNfse.NFSEClick(Sender: TObject);
begin
  inherited;
  aguardando := True;
  chkSemLote.Checked:=False;
  chkRPS.Checked:= False;
  chkRPS_REJEITADOS.Checked:= False;
  chkNFSE_Cancelados.Checked := False;
  chkAguardando.Checked := False;
  aguardando := False;
  chkNFSE.Checked := true;
end;

procedure TfrmNfse.PesqClienteButtonClick(Sender: TObject);

var tcr : tFrmPesquisaClientes;
begin
  inherited;
    tcr:= tFrmPesquisaClientes.Create(self);
    try
        tcr.ShowModal;
        if tcr.modalresult = mrok then
           PesqCliente.idRetorno := tcr.IDRetorno;
    finally
         FreeAndNil(tcr);
    end;
end;

procedure TfrmNfse.PesqClienteSelect(Sender: TObject);
begin
  inherited;
  if PesqCliente.IdRetorno <> '' then
    EdClienteCodigo.Text := PesqCliente.IdRetorno
  else
  begin
   PesqCliente.Clear;
   EdClienteCodigo.Clear;

  end;
  btnPesquisar.Click;
end;

procedure TfrmNfse.preencherNotas(lote: integer; clone: TClientDataSet);
var valoriss :double;
    ok : boolean;
    cidade : string;
begin
    ACBrNFSe1.NotasFiscais.Clear;
    while not clone.Eof do
    begin
      with ACBrNFSe1 do
      begin
       if lote = 0 then
        lote := clone.FieldByName('num_lote').AsInteger
       else
         NotasFiscais.NumeroLote:= IntToStr(lote);
       NotasFiscais.Transacao := True;

       //adicionar as notas
       with NotasFiscais.New.NFSe do
       begin
         Competencia := clone.FieldByName('NFSE_dataemissao').AsDateTime;
         if clone.FieldByName('lse_status').AsString = 'S' then
         begin
          Numero := IntToStr( clone.FieldByName('NFSE_NUM_DANFSE').AsInteger);

         end;
         IdentificacaoRps.Numero := FormatFloat('#########0', clone.FieldByName('RPS_CODIGO').AsInteger);
         if clone.FieldByName('nfse_serie').AsString = '' then
           IdentificacaoRps.Serie := DBInicio.NFSE.Serie
         else
          IdentificacaoRps.Serie := clone.FieldByName('nfse_serie').AsString;
         // TnfseTipoRPS = ( trRPS, trNFConjugada, trCupom );
         IdentificacaoRps.Tipo := trRPS;
         DataEmissao := clone.FieldByName('nfse_dataemissao').AsDateTime;
         DataEmissaoRps := now;

         NaturezaOperacao :=  StrToNaturezaOperacao(ok,IntToStr(clone.FieldByName('NFSe_naturezaoperacao').AsInteger));
         // configurar na programação na hora do cadastro para curitiba
        { 1	Tributação no município
        2	Tributação fora do municipio
        3	Isenção
        4	Imune
        5	Exigibilidade Suspensa por decisão judicial
        6	Exigibilidade Suspensa por procedimento administrativo}

         case clone.FieldByName('NFSE_optantesimplesnacional').AsInteger of
          1: OptanteSimplesNacional :=  snSim;
          2: OptanteSimplesNacional :=  snNao;
         end;
         case clone.FieldByName('NFSE_incentivadorcultural').AsInteger of
          1: IncentivadorCultural := snSim;
          2: IncentivadorCultural := snNao;
         end;


         if ACBrNFSe1.Configuracoes.WebServices.Ambiente = taProducao then
           Producao := snSim
         else
           Producao := snNao;

         // TnfseStatusRPS = ( srNormal, srCancelado );

         StatusRps := srNormal;

         TipoTributacaoRPS := ttTribnoMun;
         RegimeEspecialTributacao := retEstimativa;

         //OutrasInformacoes := //definir


         Servico.Valores.ValorServicos          := clone.FieldByName('nfsi_valorservicos').AsFloat;
         Servico.Valores.ValorDeducoes          := clone.FieldByName('NFSI_VALORDEDUCOES').AsFloat;
         Servico.Valores.ValorPis               := clone.FieldByName('nfsi_ValorPis').AsFloat;
         Servico.Valores.ValorCofins            := clone.FieldByName('NFSI_VALORCOFINS').AsFloat;
         Servico.Valores.ValorInss              := clone.FieldByName('NFSI_VALORINSS').AsFloat;
         Servico.Valores.ValorIr                := clone.FieldByName('NFSI_VALORIR').AsFloat;
         Servico.Valores.ValorCsll              := clone.FieldByName('NFSI_VALORCSLL').AsFloat;

         Servico.Valores.JustificativaDeducao   := clone.FieldByName('NFSI_JUSTIFICATIVA_DEDUCAO').AsString;


         //1 - ISS retido na fonte,
         //2 - ISS NÃO retido na fonte.Obs.: quando for 1, os campos ValorISS e ValorIssRetido tem que ser iguais.

         case clone.FieldByName('NFSI_issretido').AsInteger of
          1 : begin
               Servico.Valores.IssRetido   := stRetencao;
               Servico.Valores.ValorIssRetido         := clone.FieldByName('NFSI_VALORISSRETIDO').AsFloat;

              end;
          2 : Servico.Valores.IssRetido  := stNormal;
         else
           Servico.Valores.IssRetido  := stNormal;
         end;

         Servico.Valores.OutrasRetencoes        := clone.FieldByName('NFSI_outrasretencoes').AsFloat;
         Servico.Valores.DescontoIncondicionado := clone.FieldByName('NFSI_descontoincondicionado').AsFloat;
         Servico.Valores.DescontoCondicionado   := clone.FieldByName('NFSI_DESCONTOCONDICIONADO').AsFloat;
         if (clone.FieldByName('NFSI_basecalculo').AsFloat<=0) or (clone.FieldByName('NFSI_basecalculo').IsNull) then
           Servico.Valores.BaseCalculo :=  Servico.Valores.ValorServicos -
                                          Servico.Valores.ValorDeducoes -
                                          Servico.Valores.DescontoIncondicionado
         else
            Servico.Valores.BaseCalculo :=  clone.FieldByName('NFSI_basecalculo').AsFloat;

         // Servico.Valores.IssRetido := stNormal;
         If (DBInicio.Empresa.CID_IBGE = 4106902) Then  // or (DBInicio.Empresa.CID_IBGE = 4104105)
           // para iss curitiba dividir a aliquicota por 100, conforme o manual
            Servico.Valores.Aliquota    := clone.FieldByName('NFSI_aliquotaiss').AsFloat/100
         else
           Servico.Valores.Aliquota    := clone.FieldByName('NFSI_aliquotaiss').AsFloat;

        // Valor do ISS calculado multiplicando-se a base de calculo pela aliquota
        //  If (DBInicio.Empresa.CID_IBGE = 4106902)  Then
        //    ValorISS := (Servico.Valores.BaseCalculo * Servico.Valores.Aliquota)
        //  else
        //    ValorISS := Servico.Valores.BaseCalculo * (Servico.Valores.Aliquota / 100);

         If (DBInicio.Empresa.CID_IBGE = 4104105) then
           ValorISS := Servico.Valores.BaseCalculo * (Servico.Valores.Aliquota / 100)
         else
           ValorISS := Servico.Valores.BaseCalculo * (Servico.Valores.Aliquota);


         Servico.Valores.ValorIss := Uteis.RoundTo(ValorISS, -2);

         if (clone.FieldByName('NFSI_valorliquidonfse').AsFloat <= 0) or (clone.FieldByName('NFSI_valorliquidonfse').IsNull)  then
            Servico.Valores.ValorLiquidoNfse := Servico.Valores.ValorServicos -
                                                 Servico.Valores.ValorPis -
                                                 Servico.Valores.ValorCofins -
                                                 Servico.Valores.ValorInss -
                                                 Servico.Valores.ValorIr -
                                                 Servico.Valores.ValorCsll -
                                                 Servico.Valores.OutrasRetencoes -
                                                 Servico.Valores.ValorIssRetido -
                                                 Servico.Valores.DescontoIncondicionado -
                                                 Servico.Valores.DescontoCondicionado
         else
            Servico.Valores.ValorLiquidoNfse  := clone.FieldByName('NFSI_valorliquidonfse').AsFloat;


        // TnfseResponsavelRetencao = ( ptTomador, rtPrestador ); --//definir
         Servico.ResponsavelRetencao := rtTomador;    //definir


         Servico.ItemListaServico    := clone.FieldByName('SRV_CODIGO').AsString;
         Servico.xItemListaServico   := clone.FieldByName('SRV_DESCRICAO').AsString;

         // o Codigo CNAE tem que ser '6511102'
//         if ACBrNFSe1.Configuracoes.WebServices.Ambiente = taProducao then
            Servico.CodigoCnae    := RetiraTodaMascara(clone.FieldByName('CNAE_Codigo').AsString)     ;
//         else
//            servico.CodigoCnae :=  '6511102';

         //Servico.CodigoTributacaoMunicipio := '3314799'; definir
         { texto, que pode ter enter para aumentar o espaçamento da descrição}
         Servico.Discriminacao := clone.FieldByName('NFSI_discriminacao').AsString;



         if (clone.FieldByName('cid_cod_ibge').AsInteger = 0) or (clone.FieldByName('cid_cod_ibge').IsNull) then
           GerarException('Sem preenchimento do código IBGE para cidade.');
         //IntToStr(ACBrNFSe1.Configuracoes.Geral.CodigoMunicipio); PRESTAÇÃO NEM SEMPRE E A MESMA DA EMPRESA
         if clone.FieldByName('CID_PRESTACAO').AsString <> '' then
           Servico.CodigoMunicipio :=clone.FieldByName('CID_PRESTACAO').AsString
         Else
            Servico.CodigoMunicipio :=IntToStr(ACBrNFSe1.Configuracoes.Geral.CodigoMunicipio);
          { outras informações, que via no final da nota}
          cidade := BuscaUmDadoSqlAsString( 'SELECT CI.CID_CIDADE || ''-''  || CI.CID_ESTADO '+
                                            ' FROM NFSE_FATPC SE JOIN FAT0000 FT ON (FT.FAT_CODIGO = SE.FAT_CODIGO AND FT.EMP_CODIGO = SE.EMP_CODIGO) '+
                                            ' JOIN CID0000 CI ON (CI.CID_CODIGO =  FAT_CID_CODIGO_PRESTACAO)'+
                                            ' WHERE NFSE_CODIGO = '+ IntToStr(clone.FieldByName('NFSE_CODIGO').AsInteger )
                                            )  ;
         if cidade <> '' then
          OutrasInformacoes := ' Local de prestação do serviço : '+ cidade;

         // Informar A Exigibilidade ISS para fintelISS [1/2/3/4/5/6/7]
         Servico.ExigibilidadeISS := exiExigivel;

         Servico.CodigoPais := 1058; // Brasil
        Servico.MunicipioIncidencia := ACBrNFSe1.Configuracoes.Geral.CodigoMunicipio;

        // Somente o provedor SimplISS permite infomar mais de 1 serviço
        with Servico.ItemServico.Add do
        begin
          Descricao := clone.FieldByName('NFSI_discriminacao').AsString;
          Quantidade := 1;
          ValorUnitario := clone.FieldByName('nfsi_valorservicos').AsFloat;
          ValorTotal := clone.FieldByName('nfsi_valorservicos').AsFloat;
          // ValorServicos          := clone.FieldByName('nfsi_valorservicos').AsFloat;
          ValorDeducoes          := clone.FieldByName('NFSI_VALORDEDUCOES').AsFloat;
          ValorPis               := clone.FieldByName('nfsi_ValorPis').AsFloat;
          ValorCofins            := clone.FieldByName('NFSI_VALORCOFINS').AsFloat;
          ValorInss              := clone.FieldByName('NFSI_VALORINSS').AsFloat;
          ValorIRRF              := clone.FieldByName('NFSI_VALORIR').AsFloat;
          ValorCsll              := clone.FieldByName('NFSI_VALORCSLL').AsFloat;


         // if (ACBrNFSe1.Configuracoes.Geral.xprovedor <> 'IPM') then
           CodServ      := clone.FieldByName('SRV_CODIGO').AsString;
          ItemListaServico := clone.FieldByName('SRV_CODIGO').AsString;

          if clone.FieldByName('CID_PRESTACAO').AsString <> '' then
            CodMunPrestacao := clone.FieldByName('CID_PRESTACAO').AsString
          Else
            CodMunPrestacao := IntToStr(ACBrNFSe1.Configuracoes.Geral.CodigoMunicipio);



          if (clone.FieldByName('NFSI_basecalculo').AsFloat<=0) or (clone.FieldByName('NFSI_basecalculo').IsNull) then
            BaseCalculo :=  ValorTotal -  ValorDeducoes - DescontoIncondicionado
          else
            BaseCalculo :=  clone.FieldByName('NFSI_basecalculo').AsFloat;
           // Servico.Valores.IssRetido := stNormal;
           If (DBInicio.Empresa.CID_IBGE = 4106902)  Then // or (DBInicio.Empresa.CID_IBGE = 4104105)
             Aliquota    := clone.FieldByName('NFSI_aliquotaiss').AsFloat / 100
           else
             Aliquota    := clone.FieldByName('NFSI_aliquotaiss').AsFloat;
           // Valor do ISS calculado multiplicando-se a base de calculo pela aliquota
          If (DBInicio.Empresa.CID_IBGE = 4104105) then
            ValorISS := BaseCalculo * (Aliquota / 100)
          else
            ValorISS := BaseCalculo * Aliquota ;
          ValorIss := Uteis.RoundTo(ValorISS, -2);
        end;

          /// prestador de serviço
         Prestador.IdentificacaoPrestador.CpfCnpj            :=  RetirarMascaraCNPJ_INSC(DBInicio.Empresa.CNPJ_CNPF);
         Prestador.IdentificacaoPrestador.Cnpj               :=  RetirarMascaraCNPJ_INSC(DBInicio.Empresa.CNPJ_CNPF);
         Prestador.IdentificacaoPrestador.InscricaoMunicipal := RetirarMascaraCNPJ_INSC(DBInicio.Empresa.INS_MUNICIPAL);
         Prestador.IdentificacaoPrestador.InscricaoEstadual := RetirarMascaraCNPJ_INSC(DBInicio.Empresa.INSC_EST);
         Prestador.IdentificacaoPrestador.InscricaoMunicipal := RetirarMascaraCNPJ_INSC(DBInicio.Empresa.INS_MUNICIPAL);

         Prestador.Endereco.CodigoMunicipio :=  IntToStr(ACBrNFSe1.Configuracoes.Geral.CodigoMunicipio);
         Prestador.RazaoSocial := DBInicio.Empresa.RAZAO;
         Prestador.NomeFantasia := DBInicio.Empresa.FANTASIA;
         Prestador.Contato.Telefone := dbinicio.Empresa.FONE;
         Prestador.Contato.Email :=   dbinicio.Empresa.EMAIL;
         Prestador.Endereco.Endereco := DBInicio.Empresa.ENDERECO;
         Prestador.Endereco.CodigoMunicipio := IntToStr(DBInicio.Empresa.CID_IBGE);
         Prestador.Endereco.UF := DBInicio.Empresa.UF;
         Prestador.Endereco.CEP := DBInicio.Empresa.CEP;
         Prestador.Endereco.xMunicipio := DBInicio.Empresa.CIDADE;

         //VERIFICAR SEM TEM TOMADOR/CLIENTE
         if not ((clone.FieldByName('NFSE_cnpj_cpf').IsNull) or (clone.FieldByName('NFSE_cnpj_cpf').AsString = ''))  then
         begin
           //Tomador.IdentificacaoTomador.CpfCnpj := '17438715620';

           Tomador.IdentificacaoTomador.Cnpj               :=  RetirarMascaraCNPJ_INSC(clone.FieldByName('NFSE_cnpj_cpf').AsString);
           Tomador.IdentificacaoTomador.CpfCnpj            :=  RetirarMascaraCNPJ_INSC(clone.FieldByName('NFSE_cnpj_cpf').AsString);
           Tomador.IdentificacaoTomador.InscricaoMunicipal := RetirarMascaraCNPJ_INSC(clone.FieldByName('nfse_insc_municipal').AsString);
           //SE O FOR ISSCURITIBA E O TOMADOR FOR FORA DE CURITIBA NÃO PREENCHER A INSCRICAO MUNICIPAL
           if ( UPPERCASE(ACBrNFSe1.Configuracoes.Geral.xprovedor) = 'ISSCURITIBA') and
            (clone.FieldByName('cid_cod_ibge').AsInteger <> 4106902 ) then
              Tomador.IdentificacaoTomador.InscricaoMunicipal := ''
           else
             Tomador.IdentificacaoTomador.InscricaoEstadual :=  RetirarMascaraCNPJ_INSC(clone.FieldByName('NFSE_INSC').AsString);

           Tomador.RazaoSocial := clone.FieldByName('NFSE_razaosocial').AsString;

           Tomador.Endereco.Endereco        := clone.FieldByName('NFSE_endereco').AsString;
           Tomador.Endereco.Numero          := clone.FieldByName('NFSE_numero_end').AsString;
           Tomador.Endereco.Complemento     := clone.FieldByName('NFSE_complemento').AsString;
           Tomador.Endereco.Bairro          := clone.FieldByName('NFSE_bairro').AsString;
           Tomador.Endereco.CodigoMunicipio := inttostr( clone.FieldByName('cid_cod_ibge').AsInteger);
           Tomador.Endereco.xMunicipio      := BuscaUmDadoSqlAsString('SELECT CID_CIDADE FROM CID0000 WHERE CID_CODIGO = (SELECT CID_CODIGO FROM CLI0000 c WHERE CLI_CODIGO = ' + QuotedStr(clone.FieldByName('CLI_CODIGO').AsString) + ')');
           Tomador.Endereco.UF              := clone.FieldByName('NFSE_uf').AsString;
           Tomador.Endereco.CodigoPais      := 1058; // Brasil
           Tomador.Endereco.CEP             := clone.FieldByName('NFSE_cep').AsString;
         //Provedor Equiplano é obrigatório o pais e IE
           Tomador.Endereco.xPais           := 'BRASIL';

           Tomador.Contato.Telefone := clone.FieldByName('NFSE_telefone').AsString;
           Tomador.Contato.Email    := clone.FieldByName('NFSE_email').AsString;

           if  BuscaUmDadoSqlAsString('SELECT CLI_PESSOA FROM CLI0000 WHERE CLI_CODIGO = ' + QuotedStr( clone.FieldByName('CLI_CODIGO').AsString )) = 'F' then
             Tomador.IdentificacaoTomador.Tipo := tpPF
           else
           if Tomador.Endereco.CodigoMunicipio = Prestador.Endereco.CodigoMunicipio then
             Tomador.IdentificacaoTomador.Tipo := tpPJdoMunicipio
           else
           if Tomador.Endereco.CodigoMunicipio <> Prestador.Endereco.CodigoMunicipio then
             Tomador.IdentificacaoTomador.Tipo := tpPJforaMunicipio;


         end;



       end;
      end;
      clone.Next;
    end;

end;

procedure TfrmNfse.ProcessosClick(Sender: TObject);
begin
  inherited;
  aguardando := True;
  chkSemLote.Checked:=False;
  chkNFSE_Cancelados.Checked := False;
  chkNFSE.Checked := False;
  chkRPS_REJEITADOS.Checked:= False;
  chkRPS.Checked:= False;
  aguardando := False;
  chkAguardando.Checked := True;
end;

procedure TfrmNfse.RejeitadasClick(Sender: TObject);
begin
  inherited;
  aguardando := True;
  // chkSemLote.Checked:=False;
  chkRPS.Checked:= False;
  chkNFSE_Cancelados.Checked := False;
  chkNFSE.Checked := False;
  chkAguardando.Checked := False;
  aguardando := False;
  // chkRPS_REJEITADOS.Checked:= True;

end;


procedure TfrmNfse.RxDataFinalChange(Sender: TObject);
begin
  inherited;
  btnPesquisar.Click;
end;

procedure TfrmNfse.RxDataInicialChange(Sender: TObject);
begin
  inherited;
  btnPesquisar.Click;
end;

function TfrmNfse.EnviarNotas : string;
var clone : TClientDataSet;
  lote : integer;
  mensagem : string;
  i :integer;
  erroValidacao : boolean;
  pass,codigo, cdAutenticacao, rps, numeroNota : string;
  tempoInicio, tempoFim, parada: TDateTime;
begin
  erroValidacao:= false;
  clone := TClientDataSet.Create(Self);

  ACBrNFSe1.Configuracoes.Geral.Emitente.WSSenha := BuscaUmDadoSqlAsString('SELECT EMP_NFS_SENHA FROM EMP0000 WHERE EMP_CODIGO = ' + QuotedStr(DBInicio.Emp_Codigo));
  if (ACBrNFSe1.Configuracoes.Geral.xprovedor = 'IPM') and (ACBrNFSe1.Configuracoes.Geral.Emitente.WSSenha = '') then
  begin
    MessageDlg('Atualize a Senha WEB no cadastro da Empresa', mtWarning, [mbOK], 0);;
    pass := InputBox('Senha de acesso www.nfs-e.net', 'password','');
    ACBrNFSe1.Configuracoes.Geral.Emitente.WSSenha := pass;
  end;
  try
    clone.CloneCursor(CdsPesq,False,true);
    clone.Filtered := False;
    clone.Filter:= 'selecionado = true';
    clone.Filtered := True;
    clone.First;
    lote :=  GetNextSequence('GEN_LOTENFSE');
    preencherNotas(lote,clone);


    // ACBrNFSe1.NotasFiscais.ValidarRegrasdeNegocios(mensagem);

      try

        ACBrNFSe1.Emitir(IntToStr(lote));
        if MatchStr(ACBrNFSe1.Configuracoes.Geral.xprovedor,['IPM', 'NFSeBrasil', 'Equiplano', 'ISSJoinville'])  then
        begin
            // vem retorno assim
            codigo:= RetornarConteudoEntre(ACBrNFSe1.WebService.Emite.XmlRetorno, '<codigo>','</codigo>');
            if ACBrNFSe1.Configuracoes.Geral.xprovedor = 'IPM' then
            begin
              if copy(codigo, 1, 5) = '00209' then
              begin
                CopyToClipboard(RetornarConteudoEntre(ACBrNFSe1.WebService.Emite.XmlRetorno, '<link_nfse>','</link_nfse>') );
                MessageDlg(
                  codigo + #13 + #13 +
                  'Numero NFSE: ' + RetornarConteudoEntre(ACBrNFSe1.WebService.Emite.XmlRetorno, '<numero_nfse>','</numero_nfse>') + #13 +
                  'Data NFSE: ' + RetornarConteudoEntre(ACBrNFSe1.WebService.Emite.XmlRetorno, '<data_nfse>','</data_nfse>') + #13 +
                  'Link NFSE: ' + RetornarConteudoEntre(ACBrNFSe1.WebService.Emite.XmlRetorno, '<link_nfse>','</link_nfse>') + #13 +
                  '                   (este link foi copiado para a área de transferência)'

                  , mtWarning, [mbOk],0);
                abort;
              end;

            end;
            if ACBrNFSe1.WebService.Emite.XmlRetorno = '' then
              cdAutenticacao := ACBrNFSe1.WebService.ConsultaLoteRps.Protocolo
            else
              cdAutenticacao := RetornarConteudoEntre(ACBrNFSe1.WebService.ConsultaLoteRps.XmlRetorno, '<cdAutenticacao>','</cdAutenticacao>');
            if ACBrNFSe1.Configuracoes.Geral.xprovedor = 'IPM' then
              cdAutenticacao := RetornarConteudoEntre(ACBrNFSe1.WebService.Emite.XmlRetorno, '<cod_verificador_autenticidade>','</cod_verificador_autenticidade>');




            if (ACBrNFSe1.Configuracoes.Geral.Provedor = proEquiplano) and (cdAutenticacao = '') and  (ACBrNFSe1.WebService.Emite.Erros.Count = 0) then
            begin

               tempoInicio := Now;
               tempoFim := tempoInicio;
               parada := IncSecond(tempoFim, 15);
               Sleep(5000);
               while True do
               begin

                 try
                   ACBrNFSe1.WebService.Emite.Erros.Clear;
                   ACBrNFSe1.WebService.Emite.Alertas.Clear;
                   consultarSitLotes;
                 except
                   // ShowMessage(Clipboard.AsText);
                 end;

                 if RetornarConteudoEntre(ACBrNFSe1.WebService.ConsultaNFSeporRps.XMLRetorno, '<cdAutenticacao>','</cdAutenticacao>') <> '' then
                 begin
                    codigo:= RetornarConteudoEntre(ACBrNFSe1.WebService.Emite.XmlRetorno, '<codigo>','</codigo>');
                    cdAutenticacao := RetornarConteudoEntre(ACBrNFSe1.WebService.ConsultaNFSeporRps.XmlRetorno, '<cdAutenticacao>','</cdAutenticacao>');
                    break;
                 end;
                 Sleep(1000);
                 tempoFim := IncSecond(tempoFim, 1);
                 if tempoFim > parada then
                  break;
               end;
            end;

            // ACBrNFSe1.NotasFiscais.Items[0].NFSe.CodigoVerificacao := clone.FieldByName('NFSE_CODVERIFICACAO').AsString;

            if (pos('Sucesso',codigo)> 0) or (pos('00285 - NFs-e valida',codigo)> 0) or (cdAutenticacao <> '') or (ACBrNFSe1.WebService.Emite.Sucesso) then
            Begin

               GravaLote(clone,ACBrNFSe1,lote,tsSucesso);

               mensagem:= 'Processado com sucesso a NFSE.' ;
               for I := 0 to ACBrNFSe1.NotasFiscais.Count-1 do
                with ACBrNFSe1.NotasFiscais do
                begin
                 rps := Items[0].NFSe.IdentificacaoRps.Numero;
                 if rps = '' then
                    rps := RetornarConteudoEntre(ACBrNFSe1.WebService.ConsultaNFSeporRps.XMLRetorno, '<nrRps>','</nrRps>') ;
                 numeroNota := Items[i].NFSe.Numero;
                 if numeroNota = '' then
                 begin
                   numeroNota := ACBrNFSe1.WebService.ConsultaNFSeporRps.NumeroNota;
                   Items[i].NFSe.Numero := numeroNota;
                 end;
                 if numeroNota = '' then
                 begin
                   numeroNota := RetornarConteudoEntre( ACBrNFSe1.WebService.ConsultaLoteRps.XmlRetorno, '<nrNfse>','</nrNfse>') ;
                   Items[i].NFSe.Numero := numeroNota;
                 end;
                 if ACBrNFSe1.Configuracoes.Geral.xprovedor = 'IPM' then
                 begin
                   numeroNota := RetornarConteudoEntre( ACBrNFSe1.WebService.Emite.XmlRetorno, '<numero_nfse>','</numero_nfse>') ;
                   Items[i].NFSe.Numero := numeroNota;
                 end;
                 if cdAutenticacao <> '' then
                   Items[i].NFSe.CodigoVerificacao := cdAutenticacao;

                 GravarNFSE(StrToInt(rps),
                           StrToIntDef(numeroNota, 0),
                           Items[i].NFSe.ValorCredito,
                           iif(cdAutenticacao <> '', cdAutenticacao, Items[i].NFSe.CodigoVerificacao),
                           Items[i].XmlNfse);

                  GravarHistorico(0,StrToInt(rps),mensagem);

                end;
              Result := '4';
            End
            else
            begin
              result := '3';
              // GravarHistorico(0,StrToIntDef(ACBrNFSe1.WebService.Emite.Lote, 0),codigo);
              GravarHistorico(0,StrToIntDef(ACBrNFSe1.NotasFiscais.Items[0].NFSe.IdentificacaoRps.Numero, 0),codigo);
            end;
            //  numero := RetornarConteudoEntre(ACBrNFSe1.WebServices.enviarloterps.retornows, '<numero_nfse>','</numero_nfse>');

            // ACBrNFSe1.NotasFiscais.Imprimir;
            exit;
        end
        else if MatchStr(ACBrNFSe1.Configuracoes.Geral.xprovedor,['ISSCuritiba'])  then
        begin

            if ACBrNFSe1.WebService.ConsultaLoteRps.Sucesso then
            Begin
               GravaLote(clone,ACBrNFSe1,lote,tsSucesso);
               mensagem:= 'Processado com sucesso a NFSE.' ;
               for I := 0 to ACBrNFSe1.NotasFiscais.Count-1 do
                with ACBrNFSe1.NotasFiscais do
                begin
                 GravarNFSE(StrToInt(Items[i].NFSe.IdentificacaoRps.Numero),
                           StrToIntDef(Items[i].NFSe.Numero, 0),
                           Items[i].NFSe.ValorCredito,
                           Items[i].NFSe.CodigoVerificacao,
                           Items[i].XmlNfse);
                  GravarHistorico(0,StrToInt(Items[i].NFSe.IdentificacaoRps.Numero),mensagem);
                end;
              Result := ACBrNFSe1.WebService.ConsultaLoteRps.Situacao;
            End
            else
            begin
              result := iif(ACBrNFSe1.WebService.ConsultaLoteRps.Situacao = '', '3', ACBrNFSe1.WebService.ConsultaLoteRps.Situacao);
              if ACBrNFSe1.WebService.ConsultaLoteRps.Situacao = '' then
                codigo := RetornarConteudoEntre(ACBrNFSe1.WebService.ConsultaLoteRps.XmlRetorno, '<Codigo>','</Codigo') + ' - ' +
                         RetornarConteudoEntre(ACBrNFSe1.WebService.ConsultaLoteRps.XmlRetorno, '<Mensagem>','</Mensagem') + ' - ' +
                         RetornarConteudoEntre(ACBrNFSe1.WebService.ConsultaLoteRps.XmlRetorno, '<Correcao>','</Correcao')
                ;
              GravarHistorico(0,StrToIntDef(ACBrNFSe1.NotasFiscais.Items[0].NFSe.IdentificacaoRps.Numero, 0),codigo);
            end;

            // ACBrNFSe1.NotasFiscais.Imprimir;

            exit;

        end;
      except
         on e: Exception do
         begin
           PanelAguarde.Visible := False;
           mensagem := '';
           if (pos('CryptSignHash',e.Message)>0) and (pos('erro',e.Message)>0) then
             raise Exception.Create('Erro no certificado, pode ser PIN, Chave ');

           if Assigned(ACBrNFSe1.WebService.Emite.Alertas) and  (ACBrNFSe1.WebService.Emite.Alertas.Count > 0) then
           begin
             for I := 0 to ACBrNFSe1.WebService.Emite.Alertas.Count-1 do
             begin
               mensagem :=  mensagem+' '+ IntToStr(i) +'-'+  ACBrNFSe1.WebService.Emite.Alertas.Items[i].Descricao+
               '('+ ACBrNFSe1.WebService.Emite.Alertas.Items[i].Codigo +')';
             end;
           end;
           if Assigned(ACBrNFSe1.WebService.Emite.Erros) and  (ACBrNFSe1.WebService.Emite.Erros.Count > 0) then
           begin
             for I := 0 to ACBrNFSe1.WebService.Emite.Erros.Count-1 do
             begin
               mensagem :=  mensagem+' '+ IntToStr(i) +'-'+  ACBrNFSe1.WebService.Emite.Erros.Items[i].Descricao+
               '('+ ACBrNFSe1.WebService.Emite.Erros.Items[i].Codigo +')';
             end;
           end;
           if mensagem = '' then
             mensagem:= e.message;
           if mensagem='' then
             mensagem := 'Aguardando resposta da prefeitura.';
//             mensagem := 'Não identificado o problema';

           GravarHistorico(lote,strtoint(ACBrNFSe1.notasfiscais.items[0].NFSe.IdentificacaoRps.Numero), mensagem        );
           erroValidacao := true;
           ErroEsquema(ACBrNFSe1.notasfiscais.items[0].NFSe.IdentificacaoRps.Numero);
           if  Assigned(ACBrNFSe1.WebService.Emite.Alertas) and (ACBrNFSe1.WebService.Emite.Alertas.Count > 0) then
           begin
             if ACBrNFSe1.WebService.Emite.Alertas.Items[0].Codigo = '00132' then
               ACBrNFSe1.Configuracoes.Geral.Emitente.WSSenha := '';
           end;
           if assigned(ACBrNFSe1.WebService.Emite.Erros) and  (ACBrNFSe1.WebService.Emite.Erros.Count>0) then
           begin
             if ACBrNFSe1.WebService.Emite.Erros.Items[0].Codigo = '00132' then
                ACBrNFSe1.Configuracoes.Geral.Emitente.WSSenha := '';
           end;



          if erroValidacao then
            raise Exception.Create('Erros de validações. Verifique as informações enviadas. ' + e.message);
         end;
      end;
    try



      CASE StrToIntDef(ACBrNFSe1.WebService.ConsultaLoteRps.Situacao, 0)  of
       0 : begin
             GravaLote(clone,ACBrNFSe1,lote,tsEnviado);  // rejeitado
             ConsultarLote(0,lote,ACBrNFSe1.WebService.ConsultaLoteRps.Protocolo);
           end;
       2 :GravaLote(clone,ACBrNFSe1,lote,tsEnviado);             //enviado
       3 : begin
             GravaLote(clone,ACBrNFSe1,lote,tsProcessadoComErros);  // rejeitado
             ConsultarLote(3,lote,ACBrNFSe1.WebService.ConsultaLoteRps.Protocolo);
           end;
       4 :
        begin
          GravaLote(clone,ACBrNFSe1,lote,tsSucesso);
          ConsultarLote(4,lote,ACBrNFSe1.WebService.ConsultaLoteRps.Protocolo);
        end;
      end;

    except
     on e: ELoteError do
     begin
      PanelAguarde.Visible := False;
      raise ELoteError.Create(e.Message);
     end;
     on e: Exception do
     begin
      PanelAguarde.Visible := False;
      if ACBrNFSe1.WebService.ConsultaLoteRps.Situacao = '' then
      begin

        for I := 0 to ACBrNFSe1.NotasFiscais.Count-1 do
        with ACBrNFSe1.notasfiscais.items[i] do
        begin
         if alertas <> '' then
         begin
           GravarHistorico(0,strtoint(NFSe.IdentificacaoRps.Numero),
             RetornarConteudoEntre(Alertas, '[DSC]','[/DSC]') +': '+RetornarConteudoEntre(Alertas, '[MSG]','[/MSG]'));
           erroValidacao := true;
           ErroEsquema(NFSe.IdentificacaoRps.Numero);
         end;
        end;
        if erroValidacao then
          raise Exception.Create('Erros de validações. Verifique as informações enviadas.' + e.Message);

        //ExecSql('SET GENERATOR GEN_LOTENFSE TO ' + IntToStr(lote-1));
        raise Exception.Create(e.Message);
      end;
      if ACBrNFSe1.WebService.ConsultaLoteRps.Situacao = 'Erro' then     //araucaria
      begin
         GravaLote(clone,ACBrNFSe1,lote,tsEnviado);             //enviado
         for I := 0 to ACBrNFSe1.NotasFiscais.Count-1 do
         begin
           mensagem := ACBrNFSe1.webservice.Emite.Erros.Items[i].Correcao;
           GravarHistorico(0,StrToInt( ACBrNFSe1.NotasFiscais.Items[i].NFSe.IdentificacaoRps.Numero),mensagem);
         end;
      end
      else
        CASE StrToInt(ACBrNFSe1.WebService.ConsultaLoteRps.Situacao)  of
         2 :begin
             GravaLote(clone,ACBrNFSe1,lote,tsEnviado);             //enviado
             for I := 0 to ACBrNFSe1.NotasFiscais.Count-1 do
             begin
               mensagem := 'RPS enviado a prefeitura';
               GravarHistorico(0,StrToInt( ACBrNFSe1.NotasFiscais.Items[i].NFSe.IdentificacaoRps.Numero),mensagem);
             end;
            end;


         3 : begin
               GravaLote(clone,ACBrNFSe1,lote,tsProcessadoComErros);  // rejeitado
               ConsultarLote(3,lote,ACBrNFSe1.WebService.ConsultaLoteRps.Protocolo);
             end;
         4 :
          begin
            GravaLote(clone,ACBrNFSe1,lote,tsSucesso);
            ConsultarLote(4,lote,ACBrNFSe1.WebService.ConsultaLoteRps.Protocolo);
          end;

        end;

//       raise ;//Exception.Create('Error Message'+ e.Message);
     end;
    end;

    result := ACBrNFSe1.WebService.ConsultaLoteRps.Situacao ;
  finally
   FreeAndNil(clone);
   PanelAguarde.Visible := False;

  end;
  ACBrNFSe1.NotasFiscais.Clear;
  PanelAguarde.Visible := False;
end;


procedure TfrmNfse.ErroEsquema(CONST NumRPS: String);
begin
  if NumRPS <> '' then
   ExecSql(' update NFSERVICO SET inderroenvio = 1 WHERE RPS_CODIGO ='+NumRPS + ' AND EMP_CODIGO = '+QuotedStr(DBInicio.Empresa.EMP_CODIGO));
end;

function TfrmNfse.VerificaSelecionado(Operacao: TOperacao): boolean;
var clone : TClientDataSet;
begin
  if not DBInicio.NFSE.ATIVA_NFSE then
    GeraException('Ative a NFSE que está no parâmetros globais');

  clone := TClientDataSet.Create(Self);
  try
    clone.CloneCursor(CdsPesq,False);
    clone.Filtered := False;
    clone.Filter := '(selecionado = true)';
//    //não pode ter
//    case Operacao of
//     toConsulta:  clone.Filter:='(selecionado = true) AND (num_lote is not null)';
//     // não enviado , algm selecionado que tenha lote e não seja rejeitado
//     toNaoEnviado, toGeraXML:  clone.Filter :=   '(selecionado = true) '; //and (num_lote is not null) and (lse_status <> ''R'') ';
//     toEstorno:   clone.Filter :=   '(selecionado = true)';
//     toCancelamento : clone.Filter := '(selecionado = true)';
//     toImpressao : clone.Filter :=    '(selecionado = true)';
//     toImpressaoRPS : clone.Filter := '(selecionado = true) AND (lse_status ''T'')';
//    end;

      clone.Filtered := True;
      if clone.RecordCount = 0  then
      begin
        PanelAguarde.Visible := False;
        GeraException('Nehum RPS/NFSE selecionado.');
      end;
      clone.First;
      case Operacao of
        toEstorno :
              while not clone.Eof do
              begin
               if (clone.FieldByName('nfse_num_danfse').AsInteger > 0)  then
                  GeraException('NFSE '+IntToStr(CLONE.FieldByName('NFSE_NUM_DANFSE').AsInteger)+' já foi gerado. ');
               if not ((clone.FieldByName('num_lote').IsNull) or (clone.FieldByName('num_lote').AsInteger = 0 ))   then
                  GeraException('RPS '+IntToStr(CLONE.FieldByName('RPS_CODIGO').AsInteger)+' aguardando resposta. ');

               clone.Next;
              end;
        toNaoEnviado :
              while not clone.Eof do
              begin
               if (clone.FieldByName('nfse_num_danfse').AsInteger > 0)  then
               begin
                  PanelAguarde.Visible := False;
                  GeraException('NFSE '+IntToStr(CLONE.FieldByName('NFSE_NUM_DANFSE').AsInteger)+' já foi gerado. ');
               end;
               if not ((clone.FieldByName('num_lote').IsNull) or (clone.FieldByName('num_lote').AsInteger = 0 )) and (clone.FieldByName('LSE_STATUS').AsString <> 'R')  then
               begin
                  PanelAguarde.Visible := False;
                  GeraException('RPS '+IntToStr(CLONE.FieldByName('RPS_CODIGO').AsInteger)+' aguardando resposta. ');
               end;

               clone.Next;
              end;
        toImpressao, toCancelamento :
              while not clone.Eof do
              begin
               if (clone.FieldByName('nfse_num_danfse').IsNull) or (clone.FieldByName('nfse_num_danfse').AsInteger = 0 ) then
                  GeraException('RPS '+IntToStr(CLONE.FieldByName('RPS_CODIGO').AsInteger)+' não foi gerado NFSE. ');
               if (clone.FieldByName('nfse_num_danfse').AsInteger > 0) and not (clone.FieldByName('NFSE_DTCANCELADO').IsNull) then
                  GeraException('NFSE '+IntToStr(CLONE.FieldByName('NFSE_NUM_DANFSE').AsInteger)+' já foi cancelado. ');
               clone.Next;
              end;
        toCancelamentoSistema:
             while not clone.Eof do
             begin
               if (clone.FieldByName('nfse_num_danfse').AsInteger > 0) and not (clone.FieldByName('NFSE_DTCANCELADO').IsNull) then
                  GeraException('NFSE '+IntToStr(CLONE.FieldByName('NFSE_NUM_DANFSE').AsInteger)+' já foi cancelado. ');
               clone.Next;
             end;
      end;

      result := clone.RecordCount > 0 ;
  finally
   FreeAndNil(clone);
  end;
end;

end.
