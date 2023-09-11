unit uPesqMNfe;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBPesquisaForm, Data.DB, Data.DBXFirebird, Data.FMTBcd, Vcl.Menus, Datasnap.DBClient, Datasnap.Provider, Vcl.ExtCtrls, Data.SqlExpr, ACBrEnterTab, ACBrBase,
  ACBrCalculadora, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.Buttons, ACBrNFeDANFEFRDM, ACBrNFeDANFEClass, ACBrNFeDANFEFR, ACBrDFe, ACBrNFe, Xml.xmldom, Xml.XMLIntf, Xml.XMLDoc,
  JvBaseDlg, JvSelectDirectory, JvExControls, JvAnimatedImage, JvGIFCtrl, ACBrDFeReport, ACBrDFeDANFeReport,ACBrNFeWebServices, system.UITypes;

type
  TfrmPesqManifNFe = class(TfrmBaseDBPesquisa)
    ACBrNFe1: TACBrNFe;
    ACBrNFeDANFEFR1: TACBrNFeDANFEFR;
    XMLDocument1: TXMLDocument;
    cdsTemp: TClientDataSet;
    cdsTempMFE_NSU: TStringField;
    cdsTempMFE_CHAVE: TStringField;
    cdsTempMFE_DataEmissao: TSQLTimeStampField;
    cdsTempMFE_cnpjcpf: TStringField;
    cdsTempMFE_PROTOCOLO: TStringField;
    cdsTempMFE_STATUS: TIntegerField;
    cdsTempMFE_VLNF: TFMTBCDField;
    cdsTempMFE_NOMEEMPRESA: TStringField;
    cdsTempMFE_IE: TStringField;
    cdsTempMFE_DataRecebimento: TSQLTimeStampField;
    cdsTempMFE_SitNFE: TStringField;
    cdsTempMFE_TIPONF: TStringField;
    cdsBuscoMFE_NSU: TStringField;
    cdsBuscoMFE_DataEmissao: TSQLTimeStampField;
    cdsBuscoMFE_CHAVE: TStringField;
    cdsBuscoMFE_cnpjCPF: TStringField;
    cdsBuscoMFE_VLNF: TFMTBCDField;
    cdsBuscoMFE_NOMEEMPRESA: TStringField;
    cdsBuscoMFE_IE: TStringField;
    cdsBuscoMFE_PROTOCOLO: TStringField;
    cdsBuscoMFE_STATUS: TIntegerField;
    cdsBuscoMFE_DataRecebimento: TSQLTimeStampField;
    cdsBuscoMFE_SitNFE: TStringField;
    cdsBuscoMFE_TIPONF: TStringField;
    cdsBuscoMFE_REGISTRO: TIntegerField;
    qMFE: TSQLQuery;
    dspMFE: TDataSetProvider;
    cdsTempMFE_REGISTRO: TIntegerField;
    cdsTempMFE_DATA_REGISTRO: TSQLTimeStampField;
    labelpesquisa: TLabeledEdit;
    cdsBuscoselecionado: TBooleanField;
    PanelAguarde: TPanel;
    JvGIFAnimator1: TJvGIFAnimator;
    pinfo: TPanel;
    JvSelectDirectory1: TJvSelectDirectory;
    chkconfirmada: TCheckBox;
    ChkDownloadXML: TCheckBox;
    PopupMenu1: TPopupMenu;
    Marcartodos1: TMenuItem;
    desmarcartodos1: TMenuItem;
    cdsTempEMP_CODIGO: TStringField;
    cdsBuscoEMP_CODIGO: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure cdsBuscoMFE_STATUSGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure FormShow(Sender: TObject);
    procedure cdsBuscoMFE_cnpjCPFGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure btnEditaClick(Sender: TObject);
    procedure cdsBuscoselecionadoGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure DBGridDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGridCellClick(Column: TColumn);
    procedure btnExcluiClick(Sender: TObject);
    procedure btnConsultaClick(Sender: TObject);
    procedure btnExtraClick(Sender: TObject);
    procedure chkconfirmadaClick(Sender: TObject);
    procedure ChkDownloadXMLClick(Sender: TObject);
    procedure Marcartodos1Click(Sender: TObject);
    procedure desmarcartodos1Click(Sender: TObject);
    procedure DBGridDblClick(Sender: TObject);
  private
    procedure ConfiguracoesIniciais;
    procedure PesquisarNFEDestinadas;
    procedure RegistrarNfeLocalizadas;

    function PesquisarChave( const chave :string) : boolean;
    procedure filtro;

    procedure GravarHistorico(const mensagem :string;const  registro, status: integer; const xml : string ='');
    procedure ValidarManifestar;
    procedure ProcessarManifesto(const tipo : integer; const justificativa : AnsiString);
    procedure GravaEvento (const registro  : integer; const tipo : integer);
    function CarregarXML (const MFE_REGISTRO : integer): boolean;
    procedure MarcarTodos(b: boolean);
  public
    Pesquisando : boolean;
    function PesquisarNFE(Const chave :string):boolean;
    function Manifestar( const chave:string; const registro : integer; const tipo : integer; const justificativa : AnsiString): boolean;
    function download (const imprimir:boolean;const chave :string): string;
  end;

var
  frmPesqManifNFe: TfrmPesqManifNFe;

implementation

{$R *.dfm}

uses uteis, RWFunc,InicioDB, pcnconversaonfe, pcnconversao, umanifestar, acbrutil, uentradanotaxmlopcao;

procedure TfrmPesqManifNFe.btnConsultaClick(Sender: TObject);
begin
  inherited;
  if cdsBuscoMFE_STATUS.AsInteger in [1,4] then
  Begin
   if CarregarXML(cdsBuscoMFE_REGISTRO.AsInteger) then
   begin
     ACBrNFeDANFEFR1.FastFile :=  DBInicio.Versao.PATH+'NFe4'+'\relatorio\DANFE.fr3';
     ACBrNFE1.NotasFiscais.Imprimir;
   end
   else
     GeraException('Não foi feito download');
  end
  else
   raise Exception.Create('Sem confirmação da manifestação do destinatário');


end;

procedure TfrmPesqManifNFe.btnEditaClick(Sender: TObject);
begin
  inherited;
  ValidarManifestar;
  if not assigned(FrmManifestar) then
    FrmManifestar := TFrmManifestar.Create(application);
  try
    if FrmManifestar.ShowModal = mrok then
      ProcessarManifesto(FrmManifestar.rgTipoManifesto.ItemIndex,FrmManifestar.MJustificativa.Text  );
  finally
     FreeAndNil(FrmManifestar);
  end;

end;

procedure TfrmPesqManifNFe.btnExcluiClick(Sender: TObject);
var clone: TClientDataSet;
i : integer;
begin
  clone := TClientDataSet.Create(Self);
  try
    clone.CloneCursor(cdsBusco,false);
    clone.Filter := 'selecionado = true';
    clone.Filtered := True;
    clone.First;
    if clone.RecordCount = 0 then
      raise Exception.Create('Nenhum registro selecionado.');
    while not clone.Eof do
    begin
      //if not ACBrNFe1.SSL.CertificadoLido then
      if not ACBrNFe1.SSL.CertificadoLido then
      begin
         ACBrNFe1.SSL.NumeroSerie := CarregarCertificado(DBInicio.Empresa.EMP_CODIGO);
         ACBrNFe1.SSL.CarregarCertificado;
         if not ACBrNFe1.SSL.CertificadoLido then
         begin
           MessageDlg('Favor informar o número de série do certificado da empresa ' + DBInicio.Empresa.emp_codigo + ' nos parâmetros globais', mtWarning, [mbOK], 0);
           Abort;
         end;
         // ACBrNFSe1.SSL.SelecionarCertificado;
      end;

      try
       ACBrNFe1.DistribuicaoDFePorChaveNFe(UFtoCUF(dbinicio.Empresa.UF),RetirarMascaraCNPJ_INSC(dbinicio.Empresa.CNPJ_CNPF) , clone.FieldByName('MFE_CHAVE').AsString);
      except on e: exception do
            raise Exception.Create('Erro ao consultar NFe destinadas: ' + #13+ e.Message);
      end;

      if ACBrNFe1.WebServices.DistribuicaoDFe.retDistDFeInt.cStat = 138 then //  Documento localizado para o Destinatário
      begin
        for I := 0 to ACBrNFe1.WebServices.DistribuicaoDFe.retDistDFeInt.docZip.Count-1 do
        begin
          //if ACBrNFe1.WebServices.DistribuicaoDFe.retDistDFeInt.docZip.Items[i].resNFe.chNFe <> ''  then
          begin
             with ACBrNFe1.WebServices.DistribuicaoDFe.retDistDFeInt.docZip.Items[i] do
             begin
               clone.Edit;
               clone.FieldByName('MFE_NSU').AsString :=  ACBrNFe1.WebServices.DistribuicaoDFe.retDistDFeInt.docZip.Items[i].NSU;
               clone.Post;
               clone.ApplyUpdates(0);
               GravarHistorico('Download',clone.FieldByName('MFE_REGISTRO').AsInteger,
               ACBrNFe1.WebServices.DistribuicaoDFe.retDistDFeInt.cStat,
               aCBrNFe1.WebServices.DistribuicaoDFe.retDistDFeInt.docZip.Items[i].XML);
               aCBrNFe1.NotasFiscais.LoadFromString(aCBrNFe1.WebServices.DistribuicaoDFe.retDistDFeInt.docZip.Items[i].XML);
               ACBrNFeDANFEFR1.FastFile :=  DBInicio.Versao.PATH+'NFe4'+'\relatorio\DANFE.fr3';
               ACBrNFE1.NotasFiscais.Imprimir;
             end;
          end

        end;
      end;


      clone.Next;
    end;

  finally
    FreeAndNil(clone);
  end;
  btnPesquisa.Click;

end;

procedure TfrmPesqManifNFe.btnExtraClick(Sender: TObject);
var
  NomeArq : string;
  clone : TClientDataSet;
  i: integer;
begin
 JvSelectDirectory1.InitialDir:= ACBrNFe1.DANFE.PathPDF;
  clone := TClientDataSet.Create(self);

  try
   clone.CloneCursor(cdsBusco,false);
   clone.Filtered := False;
   clone.Filter:= '(selecionado = true)';
   clone.Filtered := True;
   if clone.IsEmpty then // pega somente o que está selecionado pelo cursor
     GeraException('Selecione as MNFe para exportar')
   else
   begin
     clone.First;
      if JvSelectDirectory1.Execute then
      begin

       try
         ACBrNFe1.DANFE.PathPDF := JvSelectDirectory1.Directory;
//         PanelAguarde.Top := (Self.Height div 2) - (PanelAguarde.Height div 2);
//         PanelAguarde.Left := (Self.Width div 2) - (PanelAguarde.Width div 2);
         PanelAguarde.Visible := True;
         Self.Update;
         PanelAguarde.Update;
         PInfo.Caption := 'Exportando XML E PDF de ' + IntToStr(clone.RecordCount) + 'notas.';
         i:=1;
         while not clone.Eof do
         begin
          if CarregarXML(clone.FieldByName('MFE_REGISTRO').AsInteger) then
          begin
            Application.ProcessMessages;
            PInfo.Caption := 'Exportando '+ IntToStr(i)+' de ' + IntToStr(clone.RecordCount) ;
            ACBrNFE1.NotasFiscais.ImprimirPDF;
            nomeArq := Copy(ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID, 4, 44);
            nomeArq :=  PathWithDelim(JvSelectDirectory1.Directory) + NomeArq; //
            ACBrNFe1.NotasFiscais.GravarXML(NomeArq +'-nfe.xml');



          end;
          clone.Next;
          inc(i);
         end;
         MessageDlg('Gravado no diretório '+ ACBrNFe1.DANFE.PathPDF , mtInformation, [mbOK], 0);
         ACBrNFe1.DANFE.PathPDF:=  DBInicio.Versao.PATH +'NFe4';
       finally
        Application.ProcessMessages;
       end;
      end;
   end;
  finally
     PanelAguarde.Visible := False;

  end;



end;

procedure TfrmPesqManifNFe.btnNovoClick(Sender: TObject);

begin
  inherited;
  PesquisarNFEDestinadas;
end;

function TfrmPesqManifNFe.CarregarXML(const MFE_REGISTRO : integer): boolean;
var
 xml :TStringStream;
 xmlstream : TStream;
begin
  ACBrNFe1.NotasFiscais.Clear;
  OpenAux('SELECT FIRST 1 MNH_XML FROM MNFE_HISTORICO WHERE MNH_MENSAGEM = ''Download'' '+
         ' AND MNH_STATUS = 138 AND MFE_REGISTRO = '+ IntToStr(MFE_REGISTRO));
   if qAux.FieldByName('MNH_XML').AsString <> '' then
   begin
     xml :=  TStringStream.Create;
     xmlstream := qAux.CreateBlobStream(qAux.FieldByName('MNH_XML'),bmRead);
     try
       xml.CopyFrom(xmlstream,xmlstream.Size) ;
       result := ACBrNFe1.NotasFiscais.LoadFromStream(xml,TRUE) ;

     finally
       FreeAndNil(xml);
       FreeAndNil(xmlstream);
     end;
   end
   Else
     result :=False;


end;

procedure TfrmPesqManifNFe.cdsBuscoMFE_cnpjCPFGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if NOT Sender.IsNull then
    text:= MascaraCNPJ_CPF(Sender.Value)
  else
    text := '';

end;

procedure TfrmPesqManifNFe.cdsBuscoMFE_STATUSGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if Sender.IsNull then
    text :=''
  else
    case sender.Value of
      0: Text := 'Sem manifesto';
      1: Text := 'Confirmação da operação';
      2: Text := 'Desconhecimento da operação';
      3: Text := 'Operação não realizada';
      4: Text := 'Ciência da Operação';
    end;

end;

procedure TfrmPesqManifNFe.cdsBuscoselecionadoGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text := EmptyStr;
end;

procedure TfrmPesqManifNFe.chkconfirmadaClick(Sender: TObject);
begin
  inherited;
  btnPesquisa.Click;
end;

procedure TfrmPesqManifNFe.ChkDownloadXMLClick(Sender: TObject);
begin
  inherited;
  btnPesquisa.Click;
end;

procedure TfrmPesqManifNFe.ConfiguracoesIniciais;
var path :string;

begin
  path := DBInicio.Versao.PATH +'NFe4';

//  if (Tipo = moNFe) then
//     path :=path+'NFe4'
//  else
//     path :=path+'NFCe' ;

  OpenAux('SELECT EMP_LOGO FROM EMP0000 WHERE EMP_CODIGO = '+ QuotedStr(DBInicio.Empresa.EMP_CODIGO)) ;

    ACBrNFe1.DANFE := ACBrNFeDANFEFR1;
    ACBrNFeDANFEFR1.FastFile :=  DBInicio.Versao.PATH+'NFe4'+'\relatorio\DANFE.fr3';


  with ACBrNFe1.DANFE do
   begin

     PathPDF    := path + '\'+ FormatDateTime('yyyymm',date) + '\NFe';

     Logo       := path+ '\temp\'+'logo' + DBInicio.EMP_CODIGO + '.jpg';

     Email := DBInicio.Empresa.EMAIL;
   end;


  with ACBrNFe1.Configuracoes.Arquivos do
   begin
     EmissaoPathNFe     := True;
     Salvar             := True;
     SepararPorMes      := True;
    // SepararPorAno      := True;
     AdicionarLiteral   := True;
     EmissaoPathNFe     := True;
     SalvarEvento       := True;
     SepararPorCNPJ     := False;
     SepararPorModelo   := False;
     PathSalvar         := path ;
     PathSchemas        := DBInicio.Versao.PATH+'NFe4'+'\schemas' ;
     PathNFe            := path ;
     PathEvento         := path;
   end;

  with ACBrNFe1.Configuracoes.Geral do
   begin
//     SSLLib                := libCapicomDelphiSoap;
//     SSLCryptLib           := cryCapicom;
//     SSLHttpLib            := httpIndy;
//     SSLXmlSignLib         := xsMsXmlCapicom;
     AtualizarXMLCancelado := true;
     ExibirErroSchema := False;
     RetirarAcentos   := true;
         //'[TN]%TAGNIVEL%[/TN] [TAG]%TAG%[/TAG] [DSC]%DESCRICAO%[/DSC] [MSG]%MSG%.[/MSG] [ID]%ID%[/ID] ';
     FormatoAlerta    :=  '[TAG]:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%. [/TAG]';

     ModeloDF         := moNFe;   //notafiscal eletronica
     VersaoDF         := ve400;
     Salvar           := true;

   end;

  with ACBrNFe1.Configuracoes.WebServices do
   begin
     UF         := DBInicio.Empresa.UF;
     if dbinicio.Nfe.AmbienteWebService = tpProducao then
       ACBrNFe1.Configuracoes.WebServices.Ambiente := taProducao
     else
       ACBrNFe1.Configuracoes.WebServices.Ambiente := taHomologacao;
     Visualizar := False;//DelphiAberto;  // VIZUALIZAR MENSAGENS DE ERROS
     Salvar     := True;   ///SALVAR SOAP
     AjustaAguardaConsultaRet := True;
     AguardarConsultaRet:= 30000;
     Tentativas          :=2;
     IntervaloTentativas  := 3000;
     TimeOut := 10000;
     //proxy
     ProxyHost := '';
     ProxyPort := '';
     ProxyUser := '';
     ProxyPass := '';
   end;


end;

procedure TfrmPesqManifNFe.DBGridCellClick(Column: TColumn);
begin
  inherited;
  if not (cdsBusco.IsEmpty) and (Column.FieldName = 'selecionado') then
  begin
      if  not (cdsBusco.State in dsEditModes)  then
        cdsBusco.Edit;
     cdsBuscoselecionado.AsBoolean :=  not cdsBuscoselecionado.AsBoolean;
     cdsBusco.Post;
  end;
end;

procedure TfrmPesqManifNFe.DBGridDblClick(Sender: TObject);
begin
  inherited;
  if not cdsBusco.IsEmpty  and Assigned(FrmEntradaNotaXmlOpcao) then
  begin
     FrmEntradaNotaXmlOpcao.medtChave.Text := cdsBuscoMFE_CHAVE.AsString;
     Close;

  end;

end;

procedure TfrmPesqManifNFe.DBGridDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
Check: Integer;
R: TRect;
begin
  inherited;
 if not cdsBusco.IsEmpty then
  begin
    if Column.FieldName = 'selecionado' then
    begin
      DBGrid.Canvas.FillRect(Rect);
      if cdsBusco.FindField('selecionado').AsBoolean then
          Check := DFCS_CHECKED
      else Check := 0;
      R:=Rect;
     // TDBGrid(sender).Canvas.Font.Color :=  TDBGrid(sender).Canvas.Brush.Color;
      InflateRect(R,-2,-2); //Diminue o tamanho do CheckBox
      DrawFrameControl(DBGrid.Canvas.Handle,R,DFC_BUTTON, DFCS_BUTTONCHECK or Check);
    end;
  end;
end;

procedure TfrmPesqManifNFe.desmarcartodos1Click(Sender: TObject);
begin
  inherited;
  MarcarTodos( False);
end;

function TfrmPesqManifNFe.download(const imprimir: boolean;const chave :string ): string;
var i: integer;
begin
  result := '';
//  if not ACBrNFe1.SSL.CertificadoLido then
//         ACBrNFe1.SSL.SelecionarCertificado;
  if not ACBrNFe1.SSL.CertificadoLido then
  begin
     ACBrNFe1.SSL.NumeroSerie := CarregarCertificado(DBInicio.Empresa.EMP_CODIGO);
     ACBrNFe1.SSL.CarregarCertificado;
     if not ACBrNFe1.SSL.CertificadoLido then
     begin
       MessageDlg('Favor informar o número de série do certificado da empresa ' + DBInicio.Empresa.emp_codigo + ' nos parâmetros globais', mtWarning, [mbOK], 0);
       Abort;
     end;
     // ACBrNFSe1.SSL.SelecionarCertificado;
  end;
  try
   ACBrNFe1.DistribuicaoDFePorChaveNFe(UFtoCUF(dbinicio.Empresa.UF),RetirarMascaraCNPJ_INSC(dbinicio.Empresa.CNPJ_CNPF) , chave);
  except on e: exception do
        raise Exception.Create('Erro ao consultar NFe destinadas: ' + #13+ e.Message);
  end;

  if ACBrNFe1.WebServices.DistribuicaoDFe.retDistDFeInt.cStat = 138 then //  Documento localizado para o Destinatário
  begin

    for I := 0 to ACBrNFe1.WebServices.DistribuicaoDFe.retDistDFeInt.docZip.Count-1 do
    begin
      if ACBrNFe1.WebServices.DistribuicaoDFe.retDistDFeInt.docZip.Items[i].resDFe.chDFe <> ''  then
      begin
         with ACBrNFe1.WebServices.DistribuicaoDFe.retDistDFeInt.docZip.Items[i] do
         begin
           cdsBusco.Locate('MFE_CHAVE',chave,[]) ;
           cdsBusco.Edit;
           cdsBusco.FieldByName('MFE_NSU').AsString :=  ACBrNFe1.WebServices.DistribuicaoDFe.retDistDFeInt.docZip.Items[i].NSU;
           cdsBusco.Post;
           cdsBusco.ApplyUpdates(0);
           GravarHistorico('Download',cdsBusco.FieldByName('MFE_REGISTRO').AsInteger,
           ACBrNFe1.WebServices.DistribuicaoDFe.retDistDFeInt.cStat,
           aCBrNFe1.WebServices.DistribuicaoDFe.retDistDFeInt.docZip.Items[i].XML);
           Result := aCBrNFe1.WebServices.DistribuicaoDFe.retDistDFeInt.docZip.Items[i].XML;
           //aCBrNFe1.NotasFiscais.LoadFromString();
           if imprimir then
           begin
            ACBrNFeDANFEFR1.FastFile :=  DBInicio.Versao.PATH+'NFe4'+'\relatorio\DANFE.fr3';
            ACBrNFE1.NotasFiscais.Imprimir;
           end;
         end;
      end

    end;
  end;
end;

procedure TfrmPesqManifNFe.filtro;
begin
 if Pesquisando then
   exit ;
  with qBusco do
	begin
    sql.Clear;
    sql.Text := 'SELECT EMP_CODIGO, MFE_REGISTRO, MFE_DATA_REGISTRO, MFE_NSU, MFE_CHAVE, MFE_DATAEMISSAO,   ' +
                ' MFE_NOMEEMPRESA, MFE_IE, MFE_CNPJCPF, MFE_PROTOCOLO, MFE_VLNF, MFE_DATARECEBIMENTO, MFE_SITNFE, MFE_STATUS, MFE_TIPONF ' +
                ' FROM MANIFESTACAONFE mnfe';
    SqlAdd('EMP_CODIGO = '+QuotedStr(DBInicio.Empresa.EMP_CODIGO));
    if chkconfirmada.Checked then
     SqlAdd(' MFE_STATUS IN (1,4)' );
    if ChkDownloadXML.Checked then
      SqlAdd(' exists (SELECT 1 FROM MNFE_HISTORICO h'+
             '         WHERE MNH_MENSAGEM = ''Download'' '+
             '         AND MNH_STATUS = 138 AND h.MFE_REGISTRO = mnfe.MFE_REGISTRO)'  );
    if labelpesquisa.Text <> ''  then
    begin
      SqlAdd(' ( MFE_NOMEEMPRESA CONTAINING '+QuotedStr(labelpesquisa.Text)  +
               ' OR MFE_CHAVE CONTAINING '+QuotedStr(labelpesquisa.Text) +
               ' OR MFE_CNPJCPF CONTAINING '+QuotedStr(labelpesquisa.Text)  +         ')'  );



    end;
  end;

end;

procedure TfrmPesqManifNFe.FormCreate(Sender: TObject);
begin
  inherited;
  ConfiguracoesIniciais;
  Self.ProcedureFiltro:=Filtro;
  self.Constraints.MinHeight:= 612;;
  self.Constraints.MinWidth:=1109;
  self.Constraints.MaxHeight:= 0;
  PesquisaInteligente := true;
end;

procedure TfrmPesqManifNFe.FormShow(Sender: TObject);
begin
  inherited;
  btnPesquisa.Click;
  DBGrid.OnDrawColumnCell := DBGridDrawColumnCell ;
end;

procedure TfrmPesqManifNFe.GravaEvento(const registro, tipo: integer);
begin
 try
  ExecSql('update ManifestacaoNFE set MFE_STATUS = '+ IntToStr(tipo) + ' where MFE_REGISTRO = '+IntToStr(registro));
 except on E: Exception do
  raise Exception.Create(e.Message);
 end;


end;

procedure TfrmPesqManifNFe.GravarHistorico(const mensagem: string;const  registro, status: integer; const xml : string ='');
var sql :string;
  seq : integer;
begin
  seq := GetNextSequence('GEN_MNFE_HISTORICO');
  sql := 'insert into MNFE_HISTORICO  (MNH_REGISTRO,MNH_DATA_REGISTRO,MFE_REGISTRO, MNH_STATUS,MNH_MENSAGEM, MNH_XML)'+
         'values ('+IntToStr(seq) +','+
         DateTimeToSQL(now)+ ','+
         IntToStr(REGISTRO) +','+
         IntToStr(status)+','+
         QuotedStr(mensagem)+ ','+
         QuotedStr(ACBrUtil.ConverteXMLtoUTF8(xml))+
         ')';
   ExecSql(sql);

end;

function TfrmPesqManifNFe.Manifestar(const chave: string; const registro : integer; const tipo : integer; const justificativa : AnsiString): boolean;
var idLote : integer;
    ResultEvento : boolean;
begin
  result := False;
  ACBrNFe1.NotasFiscais.Clear;
//  if not ACBrNFe1.SSL.CertificadoLido then
//    ACBrNFe1.SSL.SelecionarCertificado;
  if not ACBrNFe1.SSL.CertificadoLido then
  begin
     ACBrNFe1.SSL.NumeroSerie := CarregarCertificado(DBInicio.Empresa.EMP_CODIGO);
     ACBrNFe1.SSL.CarregarCertificado;
     if not ACBrNFe1.SSL.CertificadoLido then
     begin
       MessageDlg('Favor informar o número de série do certificado da empresa ' + DBInicio.Empresa.emp_codigo + ' nos parâmetros globais', mtWarning, [mbOK], 0);
       Abort;
     end;
  end;
  ACBrNFe1.EventoNFe.Evento.Clear;
  with ACBrNFe1.EventoNFe.Evento.Add do
  begin
    InfEvento.cOrgao := 91; //UFtoCUF(DBInicio.Empresa.UF);
    infEvento.chNFe := chave;
    infEvento.CNPJ := RetirarMascaraCNPJ_INSC(dbinicio.Empresa.CNPJ_CNPF);
    infEvento.dhEvento := now;
    infEvento.detEvento.xJust := justificativa;
    case tipo of
      0: infEvento.tpEvento := teManifDestConfirmacao;
      1: infEvento.tpEvento := teManifDestDesconhecimento;
      2: infEvento.tpEvento := teManifDestOperNaoRealizada;
      3: infEvento.tpEvento := teManifDestCiencia;
    end;

    if dbinicio.Nfe.AmbienteWebService = tpProducao then
      InfEvento.tpAmb := taProducao
    else
      InfEvento.tpAmb := taHomologacao

  end;
  idlote := (dbInicio.GetNextSequence('GEN_MNFE_LOTE'));

  try
     ResultEvento := ACBrNFe1.EnviarEvento(idlote);
  except
    on E: Exception do
    begin
      if pos('timed out',e.message,1) > 0 then
      begin
          GravarHistorico ( 'Time out. consulte mais tarde  '+ RetornarConteudoEntre(e.Message, '[TAG]','[/TAG]'),
                            registro,   0);
      end
      else
      if pos('DadosPFX',e.message,1) > 0 then
      begin
          GravarHistorico ( 'Erro no certificado. consulte mais tarde  '+ RetornarConteudoEntre(e.Message, '[TAG]','[/TAG]'),
                            registro,   0);
      end
      else
      begin
          //ACBrNFe1.WebServices.DistribuicaoDFe.retDistDFeInt.docZip.Items[0].NSU
         //grava histórico das notas
         if ACBrNFe1.WebServices.Retorno.xMotivo = '' then
           GravarHistorico(
           ACBrNFe1.EventoNFe.Evento.Items[0].infEvento.DescricaoTipoEvento(ACBrNFe1.EventoNFe.Evento.Items[0].infEvento.tpEvento)+
           ' :'+e.message,
             registro, ACBrNFe1.WebServices.EnvEvento.cStat )
         else
           GravarHistorico(
            ACBrNFe1.EventoNFe.Evento.Items[0].infEvento.DescricaoTipoEvento(ACBrNFe1.EventoNFe.Evento.Items[0].infEvento.tpEvento) +
           ':'+ACBrNFe1.WebServices.Retorno.xMotivo,
            registro, ACBrNFe1.WebServices.EnvEvento.cStat );
      end;
       MessageDlg('Não gravado Manifestação: '+e.message, mtInformation, [mbOK], 0);
       ResultEvento := False;
    end;

  end;
  if ResultEvento then
  begin
    if (ACBrNFe1.WebServices.EnvEvento.cStat = 128)  //evento processado
     and(ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.cStat = 135) then
    begin
      //    0: Text := 'Sem manifesto';
      //    1: Text := 'Confirmação da operação';
      //    2: Text := 'Desconhecimento da operação';
      //    3: Text := 'Operação não realizada';
      //    4: Text := 'Ciência da Operação';
       GravaEvento(registro,tipo+1);
       gravarHistorico('Manifestar' , registro , ACBrNFe1.WebServices.EnvEvento.cStat, ACBrNFe1.WebServices.EnvEvento.RetornoWS);
       ShowMessage('Evento registrado e vinculado a NF-e');
    end
    else
    begin
      gravarHistorico('Rejeição:'+ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.xMotivo
       , registro ,ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.cStat );
      MessageDlg('Não gravado Manifestação: '+ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.xMotivo, mtInformation, [mbOK], 0);
    end;

  end;
end;
procedure TfrmPesqManifNFe.Marcartodos1Click(Sender: TObject);
begin
  inherited;
  MarcarTodos(true);
end;

procedure TfrmPesqManifNFe.MarcarTodos(b: boolean);
var clone : TClientDataSet;
begin
  clone := TClientDataSet.Create(Self);
  try
    clone.CloneCursor(cdsBusco,false);
    clone.First;
    while not clone.Eof do
    begin
     clone.Edit;
     clone.FieldByName('selecionado').AsBoolean := b;
     clone.Post;
     clone.Next;
    end;

  finally
    FreeAndNil(clone);
  end;
end;

function TfrmPesqManifNFe.PesquisarChave( const chave :string) : boolean;
begin
 result := BuscaUmDadoSqlAsInteger('SELECT MFE_REGISTRO FROM ManifestacaoNFE WHERE MFE_CHAVE= '+ QuotedStr(chave))>0;
end;

function TfrmPesqManifNFe.PesquisarNFE(const chave: string):boolean;

begin
  //chave teste  '41190121314538000140550010000033811189856780'
  filtro;
  cdsBusco.Open;
  ConfiguracoesIniciais;
//  if not ACBrNFe1.SSL.CertificadoLido then
//    ACBrNFe1.SSL.SelecionarCertificado;
  if not ACBrNFe1.SSL.CertificadoLido then
  begin
     ACBrNFe1.SSL.NumeroSerie := CarregarCertificado(DBInicio.Empresa.EMP_CODIGO);
     ACBrNFe1.SSL.CarregarCertificado;
     if not ACBrNFe1.SSL.CertificadoLido then
     begin
       MessageDlg('Favor informar o número de série do certificado da empresa ' + DBInicio.Empresa.emp_codigo + ' nos parâmetros globais', mtWarning, [mbOK], 0);
       Abort;
     end;
  end;
  try
   ACBrNFe1.DistribuicaoDFePorChaveNFe(UFtoCUF(DBInicio.Empresa.UF),RetirarMascaraCNPJ_INSC(DBInicio.Empresa.CNPJ_CNPF),chave);    //UFtoCUF(DBInicio.Empresa.UF

  except on e: exception do
      raise Exception.Create('Erro ao consultar NFe destinadas: ' + #13+ e.Message);
  end;

  RegistrarNfeLocalizadas;
  result := ACBrNFe1.WebServices.DistribuicaoDFe.retDistDFeInt.cStat = 138 ;
end;

procedure TfrmPesqManifNFe.PesquisarNFEDestinadas;
var
   nsu:string;
   nsuSistema :string;
   i : integer;
begin
  if not ACBrNFe1.SSL.CertificadoLido then
    ACBrNFe1.SSL.SelecionarCertificado;
  try
   ACBrNFe1.DistribuicaoDFe(UFtoCUF(DBInicio.Empresa.UF),RetirarMascaraCNPJ_INSC(DBInicio.Empresa.CNPJ_CNPF),'','' );    //UFtoCUF(DBInicio.Empresa.UF

  except on e: exception do
      raise Exception.Create('Erro ao consultar NFe destinadas: ' + #13+ e.Message);
  end;
  RegistrarNfeLocalizadas;
  //ACBrNFe1.WebServices.ConsNFeDest.retConsNFeDest.indCont;
  nsu :=  ACBrNFe1.WebServices.DistribuicaoDFe.retDistDFeInt.ultNSU;
  nsuSistema := BuscaUmDadoSqlAsString( 'SELECT COALESCE(MAX(MFE_NSU ),0)   FROM MANIFESTACAONFE WHERE EMP_CODIGO = '+ QuotedStr(dbinicio.Empresa.EMP_CODIGO))  ;
  if (ACBrNFe1.WebServices.DistribuicaoDFe.retDistDFeInt.cStat = 137) then //and (ACBrNFe1.WebServices.ConsNFeDest.retConsNFeDest.indCont = icPossuiMaisDocumentos) then
    ACBrNFe1.DistribuicaoDFePorUltNSU(UFtoCUF(DBInicio.Empresa.UF),RetirarMascaraCNPJ_INSC(DBInicio.Empresa.CNPJ_CNPF),nsu );
  if (ACBrNFe1.WebServices.DistribuicaoDFe.retDistDFeInt.cStat = 137) then
  begin

     for I := StrToIntDef(nsuSistema,0)+1 to StrToIntDef(nsu,0) do
     begin
       //ACBrNFe1.DistribuicaoDFePorNSU(UFtoCUF(DBInicio.Empresa.UF),RetirarMascaraCNPJ_INSC(DBInicio.Empresa.CNPJ_CNPF),strzero(i,15) );
       ACBrNFe1.DistribuicaoDFePorNSU(UFtoCUF(DBInicio.Empresa.UF),RetirarMascaraCNPJ_INSC(DBInicio.Empresa.CNPJ_CNPF),IntToStr( i ));
       RegistrarNfeLocalizadas;
     end;


  end;





end;

procedure TfrmPesqManifNFe.ProcessarManifesto(const tipo: integer; const justificativa : AnsiString);
var clone: TClientDataSet;
begin
  clone := TClientDataSet.Create(Self);
  try
    clone.CloneCursor(cdsBusco,false);
    clone.Filter := 'selecionado = true';
    clone.Filtered := True;
    clone.First;
    while not clone.Eof do
    begin
     Manifestar(clone.FieldByName('MFE_CHAVE').AsString,
                clone.FieldByName('MFE_REGISTRO').AsInteger,
                tipo, justificativa );
     clone.Next;
    end;

  finally
    FreeAndNil(clone);
  end;
  btnPesquisa.Click;
end;

procedure TfrmPesqManifNFe.RegistrarNfeLocalizadas;
var I : integer;

begin
  if ACBrNFe1.WebServices.DistribuicaoDFe.retDistDFeInt.cStat = 138 then //  Documento localizado para o Destinatário
  begin
    //cdsTemp.CreateDataSet;
    qMFE.Params[0].Value := -1;
    qMFE.Open;
    cdsTemp.Open;

    for I := 0 to ACBrNFe1.WebServices.DistribuicaoDFe.retDistDFeInt.docZip.Count-1 do
    begin
      if ACBrNFe1.WebServices.DistribuicaoDFe.retDistDFeInt.docZip.Items[i].resDFe.chDFe <> ''  then
      begin
       if (BuscaUmDadoSqlAsInteger('SELECT MFE_REGISTRO FROM ManifestacaoNFE WHERE MFE_CHAVE= '+
          QuotedStr(ACBrNFe1.WebServices.DistribuicaoDFe.retDistDFeInt.docZip.Items[i].resDFe.chDFe )))>0 then
         Continue;
       cdsTemp.Insert;
       with ACBrNFe1.WebServices.DistribuicaoDFe.retDistDFeInt.docZip.Items[i] do
       begin
         cdsTempMFE_REGISTRO.AsInteger := GetNextSequence('GEN_ManifestacaoNFE');
         cdsTempMFE_DATA_REGISTRO.AsDateTime := now;
         cdsTempMFE_NSU.AsString :=  nsu;
         cdsTempMFE_DataEmissao.AsDateTime:=  resDFe.dhEmi;
         cdsTempMFE_CHAVE.AsString := resDFe.chDFe;
         cdsTempMFE_cnpjcpf.AsString := resDFe.CNPJCPF;
         cdsTempMFE_VLNF.AsFloat := resDFe.vNF;
         cdsTempMFE_NOMEEMPRESA.AsString := resDFe.xNome;
         cdsTempMFE_IE.AsString := resDFe.IE;
         cdsTempMFE_PROTOCOLO.AsString := resDFe.nProt;
         cdsTempEMP_CODIGO.AsString := DBInicio.Empresa.EMP_CODIGO ;
        //0 - sem manifesto
        //1 - Confirmação da Operação
        //2 - Desconhecimento da Operação
        //3 - Operação não Realizada
        //4 - Ciência da Operação
         if schema = schresNFe then     //0 - sem manifesto
           cdsTempMFE_STATUS.AsInteger := 0
         else if schema =  schprocNFe then
           cdsTempMFE_STATUS.AsInteger := 1; //CONFIRMADA
         cdsTempMFE_DataRecebimento.AsDateTime := resDFe.dhRecbto;

        case resDFe.cSitDFe of
         snAutorizado: cdsTempMFE_SitNFE.AsString := 'Autorizada';
         snDenegado:   cdsTempMFE_SitNFE.AsString := 'Denegada';
         snCancelado:  cdsTempMFE_SitNFE.AsString := 'Cancelada';
        end;

        case resDFe.tpNF of
         tnEntrada: cdsTempMFE_TIPONF.AsString := 'Entrada';
         tnSaida:   cdsTempMFE_TIPONF.AsString := 'Saida';
        end;
       end;
        cdsTemp.Post;
      end;
    end;
    cdsTemp.ApplyUpdates(0);
    cdsBusco.Refresh;
  end;

end;

procedure TfrmPesqManifNFe.ValidarManifestar;
var clone: TClientDataSet;
begin
  clone := TClientDataSet.Create(Self);
  try
    clone.CloneCursor(cdsBusco,false);
    clone.Filter := 'selecionado = true';
    clone.Filtered := True;
    if clone.RecordCount = 0 then
      raise Exception.Create('Nada foi selecionado!');
  finally
    FreeAndNil(clone);
  end;
end;

end.
