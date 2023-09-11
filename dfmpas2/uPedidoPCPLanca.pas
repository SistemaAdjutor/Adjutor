
unit uPedidoPCPLanca;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, Menus, DB, DBClient,IdMultipartFormData,
  StrUtils, IdHTTP, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, xmldom, XMLIntf, msxmldom, XMLDoc, IdGlobal;

type
  TFrmPedidoPCPLanca = class(TForm)
    GroupBox1: TGroupBox;
    DbGradeItemPedido: TDBGrid;
    Bit_Cancelar: TBitBtn;
    CdsTemp: TClientDataSet;
    CdsTempPedido: TStringField;
    CdsTempClienteCodigo: TStringField;
    CdsTempClienteRazao: TStringField;
    CdsTempReferencia: TStringField;
    CdsTempDescricao: TStringField;
    CdsTempDisponivel: TFloatField;
    CdsTempEnviar: TFloatField;
    pm1: TPopupMenu;
    Excluir1: TMenuItem;
    dsTemp: TDataSource;
    CdsPedido: TClientDataSet;
    CdsPedidoEmpresa: TStringField;
    CdsPedidoPedido: TStringField;
    CdsPedidoClienteCodigo: TStringField;
    CdsPedidoClienteRazao: TStringField;
    CdsPedidoDataPedido: TDateTimeField;
    CdsPedidoDataPrevisao: TDateTimeField;
    CdsPedidoItem: TClientDataSet;
    CdsPedidoItemPedido: TStringField;
    CdsPedidoItemCodigo: TStringField;
    CdsPedidoItemReferencia: TStringField;
    CdsPedidoItemTipo: TStringField;
    CdsPedidoItemUnidade: TStringField;
    CdsPedidoItemGrade: TStringField;
    CdsPedidoItemDescricao: TStringField;
    CdsPedidoItemQuantidade: TFloatField;
    CdsTempEmpresa: TStringField;
    CdsTempDataPedido: TDateTimeField;
    CdsTempDataEntrega: TDateTimeField;
    CdsTempProdutoCodigo: TStringField;
    CdsTempProdutoTipo: TStringField;
    CdsTempProdutoUnidade: TStringField;
    CdsTempProdutoGrade: TStringField;
    CdsTempProdutoDescricao: TStringField;
    Memo: TMemo;
    IdHTTP1: TIdHTTP;
    vXMLDoc: TXMLDocument;
    CdsPedidoItemRegistro: TStringField;
    CdsTempRegistroItem: TStringField;
    btnEnviar: TBitBtn;
    procedure Bit_CancelarClick(Sender: tObject);
    procedure Excluir1Click(Sender: tObject);
    procedure FormCreate(Sender: tObject);
    procedure CdsTempBeforePost(DataSet: TDataSet);
    procedure DbGradeItemPedidoExit(Sender: tObject);
    procedure Bit_GravarClick(Sender: tObject);
    procedure btnEnviarClick(Sender: tObject);
  private
         sCaminhoServidorPCP:string;
         procedure Enviar;
  public
    { Public declarations }
  end;

var
  FrmPedidoPCPLanca: TFrmPedidoPCPLanca;

implementation

uses
  DataCad, uPedidoPCP, RWFunc, UFuncoes, Men0001, uteis, iniciodb;

{$R *.dfm}

procedure TFrmPedidoPCPLanca.Bit_CancelarClick(Sender: tObject);
begin
   Close;
end;

procedure TFrmPedidoPCPLanca.Excluir1Click(Sender: tObject);
begin
   if (not CdsTemp.IsEmpty) then
      begin
         if (uteis.confirmacao ( ('Confirma o descarte do item '+CdsTempReferencia.AsString))=mrYes) then
            begin
               CdsTemp.Delete;
            end;
      end;
end;

procedure TFrmPedidoPCPLanca.FormCreate(Sender: tObject);
begin
     sCaminhoServidorPCP:=dbInicio.GetParametroSistema('PMT_PROD_PCP_ENDERECO');
   FrmPedidoPCP.CdsPedidoItens.First;
   while (not FrmPedidoPCP.CdsPedidoItens.Eof) do
      begin
         if (FrmPedidoPCP.CdsPedidoItensSelecao.AsBoolean) then
            begin
               CdsTemp.Insert;
               CdsTempPedido.AsString := FrmPedidoPCP.CdsPedidoItensPED_CODIGO.AsString;
               CdsTempClienteCodigo.AsString := FrmPedidoPCP.CdsPedidoItensCLI_CODIGO.AsString;
               CdsTempClienteRazao.AsString := FrmPedidoPCP.CdsPedidoItensCLI_RAZAO.AsString;
               CdsTempReferencia.AsString := FrmPedidoPCP.CdsPedidoItensPRD_REFER.AsString;
               CdsTempDescricao.AsString := FrmPedidoPCP.CdsPedidoItensDESCRICAO.AsString;
               CdsTempDisponivel.AsFloat := FrmPedidoPCP.CdsPedidoItensPRF_QTDE.AsFloat - FrmPedidoPCP.CdsPedidoItensPRF_QTDE_ENV_PRODUCAO.AsFloat;
               CdsTempEnviar.AsFloat := CdsTempDisponivel.AsFloat;
               CdsTempEmpresa.AsString :=  FrmPedidoPCP.CdsPedidoItensEMP_CODIGO.AsString;
               CdsTempDataPedido.AsDateTime := FrmPedidoPCP.CdsPedidoItensPED_DTENTRADA.AsDateTime;
               CdsTempDataEntrega.AsDateTime := FrmPedidoPCP.CdsPedidoItensPED_DTSAIDA.AsDateTime;
               CdsTempProdutoCodigo.AsString := FrmPedidoPCP.CdsPedidoItensPRD_CODIGO.AsString;
               CdsTempProdutoTipo.AsString :=  FrmPedidoPCP.CdsPedidoItensPTI_SIGLA.AsString;
               CdsTempProdutoUnidade.AsString := FrmPedidoPCP.CdsPedidoItensPRD_UND.AsString;
               CdsTempProdutoGrade.AsString := FrmPedidoPCP.CdsPedidoItensPRG_DESCRICAO.AsString;
               CdsTempProdutoDescricao.AsString := FrmPedidoPCP.CdsPedidoItensPRD_DESCRI.AsString;
               CdsTempRegistroItem.AsString :=  FrmPedidoPCP.CdsPedidoItensPRF_REGISTRO.AsString;
               CdsTemp.Post;
            end;
         FrmPedidoPCP.CdsPedidoItens.Next;
      end;
end;

procedure TFrmPedidoPCPLanca.CdsTempBeforePost(DataSet: TDataSet);
begin
   if (CdsTempEnviar.AsFloat <= 0)or(CdsTempEnviar.AsFloat > CdsTempDisponivel.AsFloat) then
      CdsTempEnviar.AsFloat := CdsTempDisponivel.AsFloat;
end;

procedure TFrmPedidoPCPLanca.DbGradeItemPedidoExit(Sender: tObject);
begin
   if (CdsTemp.State = dsedit) then
      CdsTemp.Post;

end;

procedure TFrmPedidoPCPLanca.Bit_GravarClick(Sender: tObject);
begin
   Enviar;
end;

procedure TFrmPedidoPCPLanca.Enviar;
var
   data: TIdMultiPartFormDataStream;
   sPedido,sCodigo, mensagem:sTRING;
   sPedidoXML:WideString;
   bPrimeiro:Boolean;
   retorno:WideString;
   NodePai,NodeSec,NodeTmp: IXMLNode;
begin
   CdsPedido.EmptyDataSet;
   CdsPedidoItem.EmptyDataSet;
   //Monta Pedido
   CdsTemp.First;
   while (not CdsTemp.Eof) do
      begin
         //Verifica se o pedido existe
         if (not CdsPedido.Locate('Pedido',CdsTempPedido.AsString,[])) then
            begin
               CdsPedido.Insert;
               CdsPedidoEmpresa.AsString := CdsTempEmpresa.AsString;
               CdsPedidoPedido.AsString := CdsTempPedido.AsString;
               CdsPedidoClienteCodigo.AsString := CdsTempClienteCodigo.AsString;
               CdsPedidoClienteRazao.AsString := CdsTempClienteRazao.AsString;
               CdsPedidoDataPedido.AsDateTime := CdsTempDataPedido.AsDateTime;
               CdsPedidoDataPrevisao.AsDateTime := CdsTempDataEntrega.AsDateTime;
               CdsPedido.Post;
            end;
         //Adiciona Item
         CdsPedidoItem.Insert;
         CdsPedidoItemPedido.AsString := CdsTempPedido.AsString;
         CdsPedidoItemCodigo.AsString := CdsTempProdutoCodigo.AsString;
         CdsPedidoItemReferencia.AsString := CdsTempReferencia.AsString;
         CdsPedidoItemTipo.AsString := CdsTempProdutoTipo.AsString;
         CdsPedidoItemUnidade.AsString := CdsTempProdutoUnidade.AsString;
         CdsPedidoItemQuantidade.AsFloat := CdsTempEnviar.AsFloat;
         CdsPedidoItemGrade.AsString := CdsTempProdutoGrade.AsString;
         CdsPedidoItemDescricao.AsString := CdsTempProdutoDescricao.AsString;
         CdsPedidoItemRegistro.AsString := CdsTempRegistroItem.AsString;
         CdsPedidoItem.Post;
         //
         CdsTemp.Next;
      end;


      CdsPedido.First;
      while (not CdsPedido.Eof) do
         begin
            //Variaveis
            Memo.Clear;
            //Monta XML
            Memo.Lines.Add('<pedidoProducao>');
            Memo.Lines.Add('<empresa>'+CdsPedidoEmpresa.AsString+'</empresa>');
            Memo.Lines.Add('<pedido>'+CdsPedidoPedido.AsString+'</pedido>');
            Memo.Lines.Add('<clienteCodigo>'+CdsPedidoClienteCodigo.AsString+'</clienteCodigo>');
            Memo.Lines.Add('<clienteRazao>'+TiraAcento(CdsPedidoClienteRazao.AsString,true)+'</clienteRazao>');
            Memo.Lines.Add('<dataPedido>'+FormatDateTime('yyyy-mm-dd',CdsPedidoDataPedido.AsDateTime)+'T'+FormatDateTime('hh:mm:ss',CdsPedidoDataPedido.AsDateTime)+'</dataPedido>');
            Memo.Lines.Add('<dataPrevisao>'+FormatDateTime('yyyy-mm-dd',CdsPedidoDataPrevisao.AsDateTime)+'T'+FormatDateTime('hh:mm:ss',CdsPedidoDataPrevisao.AsDateTime)+'</dataPrevisao>');
            //Filtra Itens
            CdsPedidoItem.Filtered := False;
            CdsPedidoItem.Filter := 'Pedido = '+CdsPedidoPedido.AsString;
            CdsPedidoItem.Filtered := True;
            CdsPedidoItem.First;
            while (not CdsPedidoItem.Eof) do
               begin
                  //Item do pedido
                  Memo.Lines.Add('<item>');
                  Memo.Lines.Add('<codigo>'+CdsPedidoItemCodigo.AsString+'</codigo>');
                  Memo.Lines.Add('<referencia>'+CdsPedidoItemReferencia.AsString+'</referencia>');
                  Memo.Lines.Add('<tipo>'+CdsPedidoItemTipo.AsString+'</tipo>');
                  Memo.Lines.Add('<unidade>'+CdsPedidoItemUnidade.AsString+'</unidade>');
                  if (CdsPedidoItemGrade.AsString <> '') then
                     Memo.Lines.Add('<grade>'+TiraAcento(CdsPedidoItemGrade.AsString,true)+'</grade>');
                  Memo.Lines.Add('<descricao>'+TiraAcento(CdsPedidoItemDescricao.AsString,true)+'</descricao>');
                  Memo.Lines.Add('<quantidade>'+AnsiReplaceStr(FormatFloat('0.0000' , CdsPedidoItemQuantidade.AsFloat), FormatSettings.DecimalSeparator , '.')+'</quantidade>');
                  Memo.Lines.Add('</item>');
                  CdsPedidoItem.Next;
               end;
            Memo.Lines.Add('</pedidoProducao>');
            //Transmite
            sPedidoXML := AnsiReplaceStr(Memo.Text,'#$D#$A','');
            sPedidoXML := AnsiReplaceStr(Memo.Text,'(','');
            sPedidoXML := AnsiReplaceStr(Memo.Text,')','');

            sPedidoXML := StringReplace(sPedidoXML, #$D#$A, '', [rfReplaceAll]);
            
            Memo.Text :=  sPedidoXML;

            data := TIdMultiPartFormDataStream.Create;
            data.AddFormField('xmlAutenticacao', '<autorizacao><login>admin</login><passw>admin</passw></autorizacao>');
            //data.AddFormField('xmlPedidoProducao', sPedidoXML);
            data.AddFormField('xmlPedidoProducao',UTF8Encode(sPedidoXML), 'utf-8').ContentTransfer := '8bit' ;
            try
               IdHTTP1.ReadTimeout := 1000;
               retorno := IdHTTP1.Post(sCaminhoServidorPCP+'webService/recepcaoPedido', data{, IndyUTF8Encoding});
               //le xml de retorno
               vXMLDoc.XML.Clear;
               vXMLDoc.XML.Add(retorno);
               vXMLDoc.Active := True;
               NodePai := vXMLDoc.DocumentElement.ChildNodes.First;
               NodePai.ChildNodes.First;
               sCodigo := '';
               repeat
                  if (NodePai.NodeName = 'codigo') then
                     begin
                        sCodigo := NodePai.Text;
                     end
                  else
                  if (NodePai.NodeName = 'mensagem') then
                     begin
                        mensagem := NodePai.Text;
                     end;
                  NodePai := NodePai.NextSibling;
               until NodePai = nil;
               //se importado pelo pcp atualiza quantidades
               if (sCodigo <> '')and(sCodigo <> '0') then
                  begin
                     CdsPedidoItem.First;
                     while (not CdsPedidoItem.Eof) do
                        begin
                           //Item do pedido
                           DataCadastros.sqlUpdate.Close;
                           DataCadastros.SqlUpdate.sql.text :='UPDATE PED_IT01 SET PRF_QTDE_ENV_PRODUCAO = PRF_QTDE_ENV_PRODUCAO + '+ValorAmericano(CdsPedidoItemQuantidade.AsString)+' WHERE PRF_REGISTRO = '+CdsPedidoItemRegistro.AsString;
                           DataCadastros.sqlUpdate.Execsql;
                           DataCadastros.sqlUpdate.Close;
                           CdsPedidoItem.Next;
                        end;
                  end
               else
                  begin
                     uteis.aviso(PChar('Problemas : '+mensagem));
                  end;
            except
               uteis.aviso('Problemas ao se conectar com o Webservice');
            end;
            CdsPedido.Next;
         end;
      Close;
end;

procedure TFrmPedidoPCPLanca.btnEnviarClick(Sender: tObject);
begin
   Enviar;
end;

end.
