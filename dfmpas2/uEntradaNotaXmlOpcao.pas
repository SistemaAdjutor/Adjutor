unit uEntradaNotaXmlOpcao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, JvExMask, Buttons, pcnConversao,
  JvToolEdit,Data.DB;

type
  TFrmEntradaNotaXmlOpcao = class(TForm)
    grpOpcoes: TGroupBox;
    rbXmlEnviadoFornecedor: TRadioButton;
    JvFilenameEdit1: TJvFilenameEdit;
    btnBit_Gravar: TBitBtn;
    btnBit_Cancelar: TBitBtn;
    procedure btnBit_CancelarClick(Sender: tObject);
    procedure btnBit_GravarClick(Sender: tObject);
    procedure configurar;
    function CarregarXML(const MFE_REGISTRO : integer): boolean;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmEntradaNotaXmlOpcao: TFrmEntradaNotaXmlOpcao;

implementation

uses
  uEntradaNotaXml, Nfs0001, Menus, Men0001, uteis, iniciodb, pcnConversaoNFe;

{$R *.dfm}

procedure TFrmEntradaNotaXmlOpcao.btnBit_CancelarClick(Sender: tObject);
begin
   Close;
end;

procedure TFrmEntradaNotaXmlOpcao.btnBit_GravarClick(Sender: tObject);
var lMsg:String;
    reg: Integer;
    xml:string;
begin
  if (rbXmlEnviadoFornecedor.Checked) then
  begin
    if (JvFilenameEdit1.FileName <> '')and(UpperCase(ExtractFileExt(JvFilenameEdit1.FileName)) = '.XML') then
    begin
      FormNfEntrada.acbrnf1.NotasFiscais.Clear;
       //Cria Diretorio caso não exista
       ForceDirectories(InsereBarraDiretorio ( dbInicio.SistemaLocal )+'nfe\download\');

       FormNfEntrada.ImportarXML(JvFilenameEdit1.FileName);

       Close;
    end
    else
         uteis.aviso('Selecione uma Nota Fiscal');
  end ;
end;

function TFrmEntradaNotaXmlOpcao.CarregarXML(const MFE_REGISTRO: integer): boolean;
var
 xml :TStringStream;
 xmlstream : TStream;
 nomeArq: string;
begin
  FormNfEntrada.acbrnf1.NotasFiscais.Clear;
  FormNfEntrada.OpenAux('SELECT FIRST 1 MNH_XML FROM MNFE_HISTORICO WHERE MNH_MENSAGEM = ''Download'' '+
         ' AND MNH_STATUS = 138 AND MFE_REGISTRO = '+ IntToStr(MFE_REGISTRO));
   if FormNfEntrada.qAux.FieldByName('MNH_XML').AsString <> '' then
   begin
     xml :=  TStringStream.Create;
     xmlstream := FormNfEntrada.qAux.CreateBlobStream(FormNfEntrada.qAux.FieldByName('MNH_XML'),bmRead);
     try
       xml.CopyFrom(xmlstream,xmlstream.Size) ;
       result := FormNfEntrada.acbrnf1.NotasFiscais.LoadFromStream(xml,TRUE) ;

     finally
       FreeAndNil(xml);
       FreeAndNil(xmlstream);
     end;
   end
   Else
     result :=False;

end;

procedure TFrmEntradaNotaXmlOpcao.configurar;
var path :string;

begin
  path := DBInicio.Versao.PATH +'NFe4';

  with FormNfEntrada.acbrnf1.Configuracoes.Arquivos do
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

  with FormNfEntrada.acbrnf1.Configuracoes.Geral do
   begin
     AtualizarXMLCancelado := true;
     ExibirErroSchema := True;
     RetirarAcentos   := true;
         //'[TN]%TAGNIVEL%[/TN] [TAG]%TAG%[/TAG] [DSC]%DESCRICAO%[/DSC] [MSG]%MSG%.[/MSG] [ID]%ID%[/ID] ';
     FormatoAlerta    :=  '[TAG]:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%. [/TAG]';

     ModeloDF         := moNFe;   //notafiscal eletronica
     VersaoDF         := ve400;
     Salvar           := true;
   end;

  with FormNfEntrada.acbrnf1.Configuracoes.WebServices do
   begin
     UF         := DBInicio.Empresa.UF;
     if dbinicio.Nfe.AmbienteWebService = tpProducao then
       FormNfEntrada.acbrnf1.Configuracoes.WebServices.Ambiente := taProducao
     else
       FormNfEntrada.acbrnf1.Configuracoes.WebServices.Ambiente := taHomologacao;
     Visualizar := DelphiAberto;  // VIZUALIZAR MENSAGENS DE ERROS
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

end.
