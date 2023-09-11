unit NfeInutilizar;

interface

uses
  blcksock,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,pcnconversao,BaseDBForm, UTEIS, Data.DBXFirebird, Data.FMTBcd, Data.DB, Data.SqlExpr, ACBrEnterTab, ACBrBase, ACBrCalculadora,  Datasnap.Provider,
  Datasnap.DBClient, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, iniciodb, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.DBCGrids, Vcl.Buttons, JvButton, JvNavigationPane, JvExControls, JvLinkLabel, Vcl.Imaging.jpeg,
  ACBrDFe, ACBrNFe, acbrdfessl, pcnconversaonfe, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFrmInutilizar = class(TfrmBaseDB)
    pInutilizar: TPanel;
    Panel2: TPanel;
    pbotoes: TPanel;
    Splitter1: TSplitter;
    dsInutilizados: TDataSource;
    dsNumerosSemUso: TDataSource;
    GroupBox1: TGroupBox;
    DBGrid2: TDBGrid;
    GroupBox2: TGroupBox;
    dbgEncontrados: TDBGrid;
    Splitter2: TSplitter;
    GroupBox4: TGroupBox;
    MJustificativa: TMemo;
    edPesqNum: TEdit;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    chkMostrarSelecionados: TCheckBox;
    Image1: TImage;
    JvLinkLabel1: TJvLinkLabel;
    Image2: TImage;
    BitConfirmar: TJvNavPanelButton;
    BitCancelar: TJvNavPanelButton;
    btnLimpar: TButton;
    Panel1: TPanel;
    edConta: TEdit;
    ACBrNFe1: TACBrNFe;
    qInutilizado: TFDQuery;
    qInutilizadoFIC_DATA: TSQLTimeStampField;
    qInutilizadoUSU_NOME: TStringField;
    qInutilizadoFIC_NUMERO_NFE: TIntegerField;
    qInutilizadoFIC_OBSERVACAO: TStringField;
    qInutilizadoFIC_TIPO: TStringField;
    qNumeroSemUso: TFDQuery;
    qNumeroSemUsoselecionado: TBooleanField;
    qNumeroSemUsoNFI_INUTILIZAR: TIntegerField;
    qNumeroSemUsoNFI_OK: TStringField;
    qNumeroSemUsoEMP_CODIGO: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure dbgEncontradosDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbgEncontradosCellClick(Column: TColumn);
    procedure edPesqNumKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edPesqNumKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
    procedure chkMostrarSelecionadosClick(Sender: TObject);
    procedure BitCancelarClick(Sender: TObject);
    procedure BitConfirmarClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
    procedure MJustificativaChange(Sender: TObject);
  private
    emp_codigo : string;
    procedure BuscaInutilizados;
    procedure BuscaNumerosNaoUsados;
    procedure CalculaNumerosNaoUsados;
    procedure Validar;
    function InutilizarNumero : string;
    procedure GravaInutilizado(Numero_NFE : Integer);
    procedure ConfiguracoesIniciais;
  public
    { Public declarations }
  end;

var
  FrmInutilizar: TFrmInutilizar;

implementation

{$R *.dfm}

{ TFrmInutilizar }

procedure TFrmInutilizar.BitCancelarClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TFrmInutilizar.BitConfirmarClick(Sender: TObject);
var Lista : String;
begin
  inherited;
  Validar;
  try

   Lista := InutilizarNumero;
   MessageDlg('Nº '+ Lista+ ' NF-e 4.0 inutilizado(s) com sucesso', mtInformation, [mbOK], 0);
   close;
  except on E: Exception do
    raise Exception.Create(E.Message);
  end;

end;

procedure TFrmInutilizar.btnLimparClick(Sender: TObject);
var clone : TFDQuery;
begin
  clone := TFDQuery.Create(Self);
  clone.Connection := DBInicio.FDACConn;
  clone.sql.text := qNumeroSemUso.SQL.Text;

  try
    clone.CloneCursor(qNumeroSemUso,true);
    clone.First;
    while not clone.Eof do
    begin
      clone.Edit;
      clone.FieldByName('selecionado').AsBoolean := False;
      clone.Post;
      clone.Next;
    end;
  finally
    FreeAndNil(clone);
  end;

end;
//  if  not (Sender.IsNull) then
//    text:= strzero(Sender.Value,8);
procedure TFrmInutilizar.BuscaInutilizados;
begin
  qInutilizado.Close;
  qInutilizado.SQL.Text := 'SELECT  (fic_data+fic_hora) AS FIC_DATA, u.USU_NOME, FIC_NUMERO_NFE, FIC_OBSERVACAO , FIC_TIPO'+
                              ' FROM NF0001_INU_CANC nc JOIN usuario u ON (u.USU_CODIGO = nc.USU_CODIGO)'  +
                              ' WHERE  FIC_TIPO = ''I'' and emp_codigo = '+ QuotedStr(emp_codigo)+' ORDER BY FIC_DATA DESC';
  qInutilizado.Open;

// cdsInutilizados.close;
// qInutilizados.SQL.Text := 'SELECT  (fic_data+fic_hora) AS FIC_DATA, u.USU_NOME, FIC_NUMERO_NFE, FIC_OBSERVACAO , FIC_TIPO'+
//                              ' FROM NF0001_INU_CANC nc JOIN usuario u ON (u.USU_CODIGO = nc.USU_CODIGO)'  +
//                              ' WHERE  FIC_TIPO = ''I'' and emp_codigo = '+ QuotedStr(emp_codigo)+' ORDER BY FIC_DATA DESC';
// cdsInutilizados.open;
end;

procedure TFrmInutilizar.BuscaNumerosNaoUsados;
begin
 // cdsNumerosSemUso.close;
 qNumeroSemUso.Close;
 qNumeroSemUso.Sql.Text :=
           'SELECT EMP_CODIGO, NFI_INUTILIZAR,NFI_OK FROM nf0001_inutilizar NC where '+
           ' trim(nfi_ok) = ''N'' and trim(NC.emp_codigo) = '+ QuotedStr(emp_codigo) +
           ' ORDER BY NFI_INUTILIZAR desc ';
 qNumeroSemUso.Open
 // cdsNumerosSemUso.Open;
end;

procedure TFrmInutilizar.CalculaNumerosNaoUsados;
begin
 // BeginTransaction;
 try
   OpenAux(' SELECT * FROM pcd_nfe_status('+QuotedStr(emp_codigo)+') ');
   // CommitTransaction; tava lento demais
 except on e: exception do
    MessageDlg(e.message, mtError, [mbOK], 0);
   // RollBackTransaction;
 end;

end;

procedure TFrmInutilizar.chkMostrarSelecionadosClick(Sender: TObject);
begin
  inherited;
  qNumeroSemUso.Filtered:= False;
  if chkMostrarSelecionados.Checked then
  begin
   qNumeroSemUso.Filter := '(selecionado = true)';
   qNumeroSemUso.Filtered:= True;
  end;
end;

procedure TFrmInutilizar.ConfiguracoesIniciais;
var path : string;
begin

  path := DBInicio.Versao.PATH;

  with ACBrNFe1.Configuracoes.Arquivos do
       begin
         Salvar             := True;
         SepararPorMes      := True;
         AdicionarLiteral   := True;
         EmissaoPathNFe     := True;
         SalvarEvento       := True;
         SepararPorCNPJ     := False;
         SepararPorModelo   := False;
         PathSalvar         := path+'NFe4' ;
         PathSchemas        := path+'nfe4\schemas' ;
         PathNFe            := path+'NFe4' ;
         PathInu            := path+'nfe4\Inutilizadas' ;
         PathEvento         := path+'NFe4\evento' ;;
  end;

      with ACBrNFe1.Configuracoes.Geral do
       begin
         if DBInicio.Nfe.Emp_TipoCertificado = 1 then //a1
         begin
           SSLLib                := libCapicomDelphiSoap;
           SSLCryptLib           := cryCapicom;
           SSLHttpLib            := httpIndy;
           SSLXmlSignLib         := xsMsXmlCapicom;
         end
         else if (DBInicio.Nfe.Emp_TipoCertificado = 3) or (DBInicio.Nfe.Emp_TipoCertificado = 9) then
         begin
           SSLLib := libWinCrypt;
           SSLCryptLib := cryWinCrypt;
           SSLHttpLib := httpWinHttp;
           SSLXmlSignLib := xsLibXml2;


         end;
         ACBrNFe1.Configuracoes.WebServices.SSLType := LT_TLSv1_2;
         AtualizarXMLCancelado := true;
         ExibirErroSchema := false;
         RetirarAcentos   := true;
         FormatoAlerta    := 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'; // '[TN]%TAGNIVEL%[/TN] [TG]%TAG%[/TG] [DSC]%DESCRICAO%[/DSC] [MSG]%MSG%.[/MSG]';
         If DBInicio.Nfe.Contingencia = 'S' then
            FormaEmissao := teContingencia
         else
           FormaEmissao     := teNormal;
         ModeloDF         := moNFe;   //notafiscal eletronica
         VersaoDF         := ve400;
         IdCSC            := '';
         CSC              := '';
         Salvar           := true
       end;

      with ACBrNFe1.Configuracoes.WebServices do
       begin
         UF         :=DBInicio.Empresa.UF;
         if dbinicio.Nfe.AmbienteWebService = tpProducao then
           ACBrNFe1.Configuracoes.WebServices.Ambiente := taProducao
         else
           ACBrNFe1.Configuracoes.WebServices.Ambiente := taHomologacao;
         Visualizar := False;
         Salvar     := True;
         AjustaAguardaConsultaRet := True;
         AguardarConsultaRet:= 0;
         Tentativas          := 5 ;
         IntervaloTentativas  := 1000;
         TimeOut := 5000;
         //proxy
         ProxyHost := '';
         ProxyPort := '';
         ProxyUser := '';
         ProxyPass := '';
       end;

end;

procedure TFrmInutilizar.dbgEncontradosCellClick(Column: TColumn);
begin
  inherited;
  if not (qNumeroSemUso.IsEmpty) and (Column.FieldName = 'selecionado') then
  begin
      if  not (qNumeroSemUso.State in dsEditModes)  then
        qNumeroSemUso.Edit;
      qNumeroSemUsoselecionado.AsBoolean :=  not qNumeroSemUsoselecionado.AsBoolean;
      qNumeroSemUso.Post;
  end;
end;

procedure TFrmInutilizar.dbgEncontradosDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
Check: Integer;
R: TRect;
begin
 inherited;
  if not qNumeroSemUso.IsEmpty then
  begin
    if Column.FieldName = 'selecionado' then
    begin
      dbgEncontrados.Canvas.FillRect(Rect);
      Check := 0;
      if qNumeroSemUso.FindField('selecionado').AsBoolean then
          Check := DFCS_CHECKED
      else Check := 0;
      R:=Rect;
      TDBGrid(sender).Canvas.Font.Color :=  TDBGrid(sender).Canvas.Brush.Color;
      InflateRect(R,-2,-2); //Diminue o tamanho do CheckBox
      DrawFrameControl(dbgEncontrados.Canvas.Handle,R,DFC_BUTTON, DFCS_BUTTONCHECK or Check);
    end;
  end;
end;

procedure TFrmInutilizar.edPesqNumKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_RETURN then
  begin
   if TEdit(Sender).Text <> '' then
     qNumeroSemUso.Locate('NFI_INUTILIZAR',TEdit(Sender).Text,[]);

  end;
end;

procedure TFrmInutilizar.edPesqNumKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = Chr(VK_RETURN) then
  begin
   if TEdit(Sender).Text <> '' then
     qNumeroSemUso.Locate('NFI_INUTILIZAR',TEdit(Sender).Text,[]);

  end;
end;

procedure TFrmInutilizar.FormCreate(Sender: TObject);
begin
  inherited;
  ConfiguracoesIniciais;
  //retirar os zeros , porque no banco ele guarda sem os zeros
  emp_codigo :=  inttostr( strtoint(dbinicio.empresa.EMP_CODIGO));
  CalculaNumerosNaoUsados;
  BuscaInutilizados;
  BuscaNumerosNaoUsados;
end;

procedure TFrmInutilizar.GravaInutilizado (Numero_NFE : Integer);
var sql :string;
begin
 //já inutilizado no sefaz
 sql := 'INSERT INTO NF0001_INU_CANC (EMP_CODIGO, fic_data, fic_hora, USU_CODIGO, FIC_TIPO,FIC_NUMERO_NFE, FIC_OBSERVACAO) '+
        ' VALUES ('+QuotedStr(emp_codigo)+','+DateToSQL(now)+','+ TimeToSQL(time)+ ','+ dbinicio.Usuario.CODIGO+','+QuotedStr('I')+ ','+IntToStr(Numero_NFE) + ','+
                 QuotedStr( MJustificativa.Text)+')';
  ExecSql(SQL);

  //atualizar o numero que estava pulado
 sql:= 'UPDATE nf0001_inutilizar SET NFI_OK = ''S'' WHERE NFI_INUTILIZAR = ' + IntToStr(Numero_NFE) ;

 ExecSql(SQL);

end;

function TFrmInutilizar.InutilizarNumero: string;
var clone : TFDQuery;
    numnfe : string;
    Lista : TStringList;
begin
  clone := TFDQuery.Create(Self);
  clone.Connection := DBInicio.FDACConn;
  clone.sql.text := qNumeroSemUso.SQL.Text;

  Lista := TStringList.Create;
  try
    Lista.Delimiter := ',';
    Screen.Cursor := crHourGlass;
    clone.CloneCursor(qNumeroSemUso,False);
    clone.Filtered := False;
    clone.Filter:= '(selecionado = true)';
    clone.Filtered := True;
    clone.First;

    if not ACBrNFe1.SSL.CertificadoLido then
    begin
     ACBrNFe1.SSL.NumeroSerie := BuscaUmDadoSqlAsString('SELECT PMT_CERTIFICADO_DIGITAL FROM PRMT0001 WHERE EMP_CODIGO = ' + QuotedStr(strzero(clone.FieldByName('EMP_CODIGO').AsString, 3)));
     ACBrNFe1.SSL.CarregarCertificado;
     if not ACBrNFe1.SSL.CertificadoLido then
     begin
        MessageDlg(
          'Favor informar o número de série do certificado da empresa ' +
          clone.FieldByName('EMP_CODIGO').AsString +
          ' nos parâmetros globais', mtWarning, [mbOK], 0
        );
        abort;
     end;
    end;

    while not clone.Eof do
    begin
     numnfe :=  inttostr(clone.FieldByName('NFI_INUTILIZAR').AsInteger);
     Lista.Add(numnfe);
     ACBrNFe1.WebServices.Inutiliza(RetiraTodaMascara(DBInicio.Empresa.CNPJ_CNPF),
                                    MJustificativa.Text,
                                    StrToInt(FormatDateTime('YY',Date)),
                                    StrToInt('55') ,
                                    StrToInt(dbInicio.Empresa.SerieNF),
                                    StrToInt(numnfe), StrToInt(numnfe));

     GravaInutilizado(clone.FieldByName('NFI_INUTILIZAR').AsInteger);
     clone.Next;
    end;
    result:= Lista.DelimitedText;
  finally
    Screen.Cursor:= crDefault;
    FreeAndNil(Lista);
    FreeAndNil(clone);
  end;

end;

procedure TFrmInutilizar.MJustificativaChange(Sender: TObject);
begin
  inherited;
  edConta.Text := IntToStr( Length(MJustificativa.Text) );
end;

procedure TFrmInutilizar.SpeedButton1Click(Sender: TObject);
begin
  inherited;
   if edPesqNum.Text <> '' then
     qNumeroSemUso.Locate('NFI_INUTILIZAR', edPesqNum.Text,[]);
end;

procedure TFrmInutilizar.Validar;
var clone : TFDQuery;
begin
  clone := TFDQuery.Create(Self);
  clone.Connection := DBInicio.FDACConn;
  clone.sql.text := qNumeroSemUso.SQL.Text;

  try
    clone.CloneCursor(qNumeroSemUso,False);
    clone.Filtered := False;
    clone.Filter:= '(selecionado = true)';
    clone.Filtered := True;
    if clone.RecordCount = 0 then
      raise Exception.Create('Nada foi selecionado.');

  finally
    FreeAndNil(clone);
  end;

  if Length(MJustificativa.Text) < 15 then
    raise Exception.Create('Justificativa tem menos de 15 caracteres.');

  if Length(MJustificativa.Text) > 255 then
    raise Exception.Create('Justificativa tem mais de 255 caracteres.');

end;

end.
