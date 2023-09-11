unit CepForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBForm, Data.DBXFirebird, Data.DB,
  Data.SqlExpr, ACBrBase, ACBrCalculadora, Vcl.ExtCtrls, Vcl.Grids, Vcl.ValEdit,
  Vcl.Buttons, Vcl.DBGrids, Vcl.StdCtrls, Vcl.ComCtrls, Xml.xmldom, Xml.XMLIntf,
  Datasnap.DBClient, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdHTTP, Xml.XMLDoc, System.JSON;

type
  TfrmCep = class(TfrmBaseDB)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label1: TLabel;
    ECEP: TEdit;
    Button1: TButton;
    GroupBox1: TGroupBox;
    eLog: TLabeledEdit;
    eCompl: TLabeledEdit;
    eBairro: TLabeledEdit;
    edLocalidade: TLabeledEdit;
    edUF: TLabeledEdit;
    edIbge: TLabeledEdit;
    TabSheet2: TTabSheet;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    XMLBuscaCep: TXMLDocument;
    IdHTTP: TIdHTTP;
    cdsConsultaCep: TClientDataSet;
    cdsConsultaCepcep: TStringField;
    cdsConsultaCeplogradouro: TStringField;
    cdsConsultaCepcomplemento: TStringField;
    cdsConsultaCepbairro: TStringField;
    cdsConsultaCeplocalidade: TStringField;
    cdsConsultaCepuf: TStringField;
    cdsConsultaCepibge: TStringField;
    dsConsultaCep: TDataSource;
    Panel1: TPanel;
    btnSelect: TSpeedButton;
    Button2: TButton;
    btSair: TSpeedButton;
    ed1: TLabeledEdit;
    ed2: TLabeledEdit;
    ed3: TLabeledEdit;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure btnSelectClick(Sender: TObject);
    procedure btSairClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
      vlXML: string;
      vlCEP: string;
      vlLOGRADOURO: string;
      vlCOMPLEMENTO: string;
      vlBAIRRO: string;
      vlLOCALIDADE: string;
      vlUF: string;
      vlIBGE: string;
     function GetXmlElement(Nome: string): string;
    procedure InsereCepTabelaEmplaca;
  public
     PROPERTY XML: string read vlXML write vlXML;
     PROPERTY CEP: string read vlCEP write vlCEP;
     PROPERTY LOGRADOURO: string read vlLOGRADOURO write vlLOGRADOURO;
     PROPERTY COMPLEMENTO: string read vlCOMPLEMENTO write vlCOMPLEMENTO;
     PROPERTY BAIRRO: string read vlBAIRRO write vlBAIRRO;
     PROPERTY LOCALIDADE: string read vlLOCALIDADE write vlLOCALIDADE;
     PROPERTY UF: string read vlUF write vlUF;
     PROPERTY IBGE: string read vlIBGE write vlIBGE;

  end;

var
  frmCep: TfrmCep;

implementation

uses uteis, iniciodb, XSuperJSON, XSuperObject;

{$R *.dfm}

procedure TfrmCep.btnSelectClick(Sender: TObject);
begin
     inherited;
     if pagecontrol1.activepageindex=1 then
     begin
          if cdsConsultaCep.active  then
          begin
               if not (cdsConsultaCepCep.isnull) then
               begin
                   XML := XMLBuscaCEP.XML.Text;
                   CEP := extrairnumeros(cdsConsultaCepcep.asstring);
                   LOGRADOURO:= cdsConsultaCeplogradouro.asstring;
                   COMPLEMENTO:=cdsConsultaCepcomplemento.asstring;
                   BAIRRO:=cdsConsultaCepbairro.asstring;
                   LOCALIDADE:=cdsConsultaCeplocalidade.asstring;
                   UF := cdsConsultaCepuf.asstring;
                   IBGE:=cdsConsultaCepibge.asstring;
               end
               Else
                   GeraException('Selecione um registro e tente novamente');
          end;
     end
     Else
     if trim(elog.text)='' then
        GeraException('Selecione um registro e tente novamente');

     InsereCepTabelaEmplaca;
     self.close;
     ModalResult:=mrOk;
end;

procedure TfrmCep.InsereCepTabelaEmplaca;
var sql: string;
    cid,bai:integer;
begin
    // suportar emplaca ;
    // cadastrar cep
    sql := ' select codigo from cep_cid cid where cid.descricao='+qstr(LOCALIDADE)+' and cid.uf='+qstr(UF);
    cid:=buscaumdadosqlasinteger(sql);
    if cid=0 then
    begin
       cid := getnextsequence('codigo_cep_cid');
       execsql('insert into cep_cid(CODIGO,DESCRICAO,UF) values('+cid.tostring+','+qstr(LOCALIDADE)+','+qstr(UF)+')');
    end;
    sql := ' select codigo from cep_bai bai where bai.descricao='+qstr(BAIRRO)+' and BAI.COD_c='+cID.TOSTRING;
    bai:=buscaumdadosqlasinteger(sql);
    if bai=0 then
    begin
       bai := getnextsequence('codigo_cep_bai');
       execsql('insert into cep_BAI(CODIGO,DESCRICAO,UF,COD_C) values('+BAI.tostring+','+qstr(BAIRRO)+','+qstr(UF)+','+CID.TOSTRING+')');
    end;

   sql := ' select count(*) from cep_rua '+
      ' where cod_c='+CID.TOSTRING+' and cod_b='+BAI.TOSTRING+
      ' and descricao = '+qStr(LOGRADOURO);
   if BUSCAUMDADOSQLASINTEGER(SQL)=0 then
   BEGIN
     sql := ' insert into cep_rua(UF,COD_C,COD_B,CEP,COMPLEM,DESCRICAO) '+
            ' values ( '+qstr(UF)+','+cid.tostring+','+bai.tostring+','+
            qStr(ExtrairNumeros(CEP))+','+qstr(complemento)+','+qstr(LOGRADOURO)+')' ;
     ExecSql(sql);
   END;
end;

procedure TfrmCep.btSairClick(Sender: TObject);
begin
  inherited;
  self.Close;
  ModalResult:=mrCancel;
end;

procedure TfrmCep.Button1Click(Sender: TObject);
var
   Consulta: String;
   Resposta: TStringStream;

begin

  if internetativa(true) then
  begin
     consulta := Extrairnumeros(eCEP.Text);
     if (consulta = '') or (consulta.Length < 8) or  (consulta.Length > 8) then
     begin
        Application.MessageBox('CEP nulo ou inválido.', 'Erro - Aviso do Sistema', mb_iconwarning+mb_ok);
        exit;
     end;

     Consulta := 'http://viacep.com.br/ws/'+consulta+'/xml/';
     Resposta   := TStringStream.Create('');

     //IdHTTP.Request.UserAgent:='Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV2';
     IdHTTP.Get(consulta,resposta);


     XMLBuscaCEP.Active := True;
     XMLBuscaCEP.Encoding := 'iso-8859-1';
     XMLBuscaCEP.LoadFromStream(Resposta);
     XMLBuscaCEP.Active := True;

     XML := XMLBuscaCEP.XML.Text;
     CEP := extrairnumeros(GetXmlElement('cep'));
     LOGRADOURO:= GetXmlElement('logradouro');
     COMPLEMENTO:=GetXmlElement('complemento');
     BAIRRO:=GetXmlElement('bairro');
     LOCALIDADE:=GetXmlElement('localidade');
     UF := GetXmlElement('uf');
     IBGE:=GetXmlElement('ibge');
      eCep.Text := CEP;
      eLog.Text := LOGRADOURO;
      eCompl.Text:=COMPLEMENTO;
      eBairro.Text:=BAIRRO;
      edLocalidade.Text:=LOCALIDADE;
      edUf.Text:=   UF;
      edIbge.Text:= IBGE;
  end;
end;

Function TfrmCep.GetXmlElement(Nome:string):string;
var v: variant;
begin
     v := XMLBuscaCEP.DocumentElement.ChildNodes[nome].NodeValue;
     if VarType(v)<>varNull then
        result :=XMLBuscaCEP.DocumentElement.ChildNodes[nome].NodeValue;
end;

function GetJsonValue(obj:ISuperObject; Name: String): String;
begin
  Result := '';
  if obj.Contains(Name) then
    Result := obj.S[Name];
end;

procedure TfrmCep.Button2Click(Sender: TObject);
var
   Consulta, vUF,vCidade,vLogradouro: String;
   Resp: string;
   Resposta: TStringStream;
   jSonValue: System.JSON.tJsonValue;
   aobj: ISuperArray;
   obj2: ISuperObject;
   I: Integer;
begin
  if internetativa(true) then
  begin
      if cdsConsultaCep.Active then
      begin
          cdsConsultaCep.EmptyDataSet;
          cdsConsultaCep.Close;
      end
      Else
         cdsConsultaCep.createdataset;

      vUF:=trim(ed1.Text);
      vCidade:=trim(ed2.Text);
      vLogradouro:=trim(ed3.Text);

      Consulta:=Consulta+InsereAfter(vUF,'/');
      Consulta:=Consulta+InsereAfter(vCidade,'/');
      Consulta:=Consulta+InsereAfter(vLogradouro,'/');

      if consulta='' then
      begin
         Application.MessageBox('Nenum critério informado.', 'Erro - Aviso do Sistema', mb_iconwarning+mb_ok);
         exit;
      end;
      Consulta := 'https://viacep.com.br/ws/'+consulta+'json/';
      Resposta   := TStringStream.Create('');
      IdHTTP.Request.UserAgent:='Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV2';
      try
         IdHTTP.Get(consulta,resposta);
      Except
         Application.MessageBox('Dados Inválidos par Pesquisa.', 'Erro - Aviso do Sistema', mb_iconwarning+mb_ok);
         raise;
      end;
      jsonvalue := tjsonvalue.Create;
      jsonValue := System.JSON.tJsonObject.ParseJSONValue( tEncoding.ANSI.getbytes( Resposta.DataString ),0 );
      Resp:= JsonValue.ToString;
      cdsConsultaCep.Open;
      aobj := SA(resp);
      if aobj.Length-1<0 then
         GeraException('Sem resultados!');
      for I := 0 to aobj.Length-1 do
      begin
          obj2 := aobj.O[I];
          cdsConsultaCep.append;
          cdsConsultaCepCep.asstring:=GetJsonValue(obj2,'cep');
          cdsConsultaCepLogradouro.asstring:=GetJsonValue(obj2,'logradouro');
          cdsConsultaCepComplemento.asstring:=GetJsonValue(obj2,'complemento');
          cdsConsultaCepBairro.asstring:=GetJsonValue(obj2,'bairro');
          cdsConsultaCepLocalidade.asstring:=GetJsonValue(obj2,'localidade');
          cdsConsultaCepUf.asstring:=GetJsonValue(obj2,'uf');
          cdsConsultaCepIbge.asstring:=GetJsonValue(obj2,'ibge');
          cdsConsultacep.post;
       end;
       cdsConsultaCep.first;
  end;
end;

procedure TfrmCep.FormCreate(Sender: TObject);
begin
  inherited;
  self.WindowState:=wsNormal;
  pagecontrol1.ActivePageIndex:=0;
  aCaption:='Consulta CEP/Códigos IBGE (viacep.com.br)';
  SetTamanhoMinimo(417,701);
  SetTamanhoMAXIMO(417,701);
  XML := '';
  CEP := '';
  LOGRADOURO:= '';
  COMPLEMENTO:='';
  BAIRRO:='';
  LOCALIDADE:='';
  UF := '';
  IBGE:='';
  dbConn.Connected:=False;
  with dbInicio do
       DbConn.params.add('database='+NomeServidor+'/'+portadb+':'+PastaDB+'CEP.FDB');
  dbConn.Connected:=True;
end;


procedure TfrmCep.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
     if GetKeyState( VK_CONTROL ) and 128 > 0 then // control pressionado
     begin
          if (key = VK_RETURN) then
          begin
             btnSelect.Click;
             key:=0;
          end;
     end;
end;

end.


object edList: TValueListEditor
  Left = 0
  Top = 0
  Width = 273
  Height = 56
  Align = alLeft
  BorderStyle = bsNone
  Ctl3D = False
  DisplayOptions = [doKeyColFixed]
  DoubleBuffered = False
  FixedCols = 1
  Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goEditing ]
  ParentCtl3D = False
  ParentDoubleBuffered = False
  Strings.Strings = (
    'UF='
    'Cidade='
    'Logradouro=')
  TabOrder = 0
  ColWidths = (
    81
    194)
end

