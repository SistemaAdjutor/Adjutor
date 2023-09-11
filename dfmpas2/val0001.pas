unit val0001;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, jpeg, ExtCtrls, Mask, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, IdHTTP,IdMultipartFormData,
  xmldom, XMLIntf, msxmldom, XMLDoc, BaseForm, ACBrEnterTab, ACBrBase, ACBrCalculadora;

type
  TFrmLicenca = class(TFrmBase)
    Valor1: TMaskEdit;
    Valor2: TMaskEdit;
    Valor3: TMaskEdit;
    Valor4: TMaskEdit;
    Valor5: TMaskEdit;
    Panel1: TPanel;
    Bit_Gravar: TBitBtn;
    Bit_Sair: TBitBtn;
    Image1: TImage;
    Image2: TImage;
    Label1: TLabel;
    Label2: TLabel;
    StaticText1: TStaticText;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    LblDias: TLabel;
    Label7: TLabel;
    EdCnpj: TEdit;
    LblLicencas: TLabel;
    Image4: TImage;
    IdHTTP1: TIdHTTP;
    vXMLDoc: TXMLDocument;
    Button1: TBitBtn;
    procedure Bit_SairClick(Sender: tObject);
    procedure Bit_GravarClick(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure FormCloseQuery(Sender: tObject; var CanClose: Boolean);
    procedure Button1Click(Sender: tObject);
    procedure FormCreate(Sender: tObject);
  private
         vWsLicenca:string;
  public
    { Public declarations }
    iNrDias,iNrLicencas:Integer;
    bValidado: Boolean;
  end;

var
  FrmLicenca: TFrmLicenca;

implementation

uses UFuncoes, RWFunc, uteis, InicioDB;

{$R *.dfm}

procedure TFrmLicenca.Bit_SairClick(Sender: tObject);
begin
     Application.Terminate;
end;

procedure TFrmLicenca.Bit_GravarClick(Sender: tObject);
var  sChave,sData:String;
begin
     if (uteis.confirmacao  ( 'Confirma a Validação?')=mrYes) then
     begin
          sChave := Valor1.Text+Valor2.Text+Valor3.Text+Valor4.Text+Valor5.Text;
          sData := Criptografa(DateToStr(Date));
          sChave := Criptografa(sChave);
          ExecSql( 'UPDATE EMP0000 SET EMP0000.EMP_DATA_ACESSO = '+RetornaNull(sData)+', EMP0000.EMP_CHAVE = '+RetornaNull(sChave)+' WHERE EMP0000.EMP_CODIGO = '+RetornaNull(dbInicio.Empresa.EMP_CODIGO) );
          Application.Terminate;
    end;
end;

procedure TFrmLicenca.FormShow(Sender: tObject);
begin
     inherited;
     EdCnpj.Text := dbInicio.Empresa.CNPJ_CNPF;
     if (iNrDias <= 0) then
        LblDias.Caption := 'Sua licença expirou!'
     else
        LblDias.Caption := 'Faltam '+IntToStr(iNrDias)+' dia(s) para sua licença expirar.';
     LblLicencas.Caption := 'Licenças contratadas: '+IntToStr(iNrLicencas);
end;

procedure TFrmLicenca.FormCloseQuery(Sender: tObject;
  var CanClose: Boolean);
begin
     inherited;
     CanClose := False;
end;

procedure TFrmLicenca.Button1Click(Sender: tObject);
var
   data: TIdMultiPartFormDataStream;
   NodePai,NodeSec,NodeTmp: IXMLNode;
   sCodigo,
   sContraSenha,
   sMensagem,
   sData:String;
   retorno:WideString;
begin
     retorno := '';
     //Monta XML
     retorno := '<xml><cnpj>'+ExtrairNumeros(EdCnpj.Text)+'</cnpj></xml>';
     //Transmite
     data := TIdMultiPartFormDataStream.Create;
     data.AddFormField('xml', retorno);
     try
        IdHTTP1.ReadTimeout := 1000;
        retorno := IdHTTP1.Post(vWsLicenca, data);
        vXMLDoc.XML.Clear;
        vXMLDoc.XML.Add(retorno);
        vXMLDoc.Active := True;
        NodePai := vXMLDoc.DocumentElement.ChildNodes.First;
        NodePai.ChildNodes.First;
        repeat
              if (NodePai.NodeName = 'validado') then
                 sCodigo := NodePai.Text
              else
              if (NodePai.NodeName = 'chave') then
                 sContraSenha := NodePai.Text
              else
              if (NodePai.NodeName = 'resultado') then
                 sMensagem := NodePai.Text;
              NodePai := NodePai.NextSibling;
        until NodePai = nil;
        if (StrToInt(sCodigo) > 1) then
           sCodigo := '';

        sData := Criptografa(DateToStr(Date));
        sContraSenha := Criptografa(sContraSenha);
        dbInicio.ExecSql('UPDATE EMP0000 SET EMP0000.EMP_DATA_ACESSO = '+RetornaNull(sData)+', EMP0000.EMP_CHAVE = '+RetornaNull(sContraSenha)+' WHERE EMP0000.EMP_CODIGO = '+qStr(dbInicio.Empresa.EMP_CODIGO) );
        Application.Terminate;

   except
      uteis.aviso('Problemas ao se conectar com o Webservice');
   end;
end;

procedure TFrmLicenca.FormCreate(Sender: tObject);
begin
     inherited;
     height := 304;
     width := 572;
     vWsLicenca:=dbInicio.BuscaUmDadoSqlAsString('select wsLic from wsNovi');
     if vWsLicenca='' then
        vWsLicenca:='http://novinow.ddns.net:8080/ValidadorOnline/valida/validar';
end;

end.
