unit uMercosAtualizacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBFormFdac, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Phys.FBDef, FireDAC.UI.Intf, FireDAC.VCLUI.Wait, FireDAC.VCLUI.Error, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Comp.Client, Data.DB, FireDAC.Comp.UI, FireDAC.Phys.IBBase, FireDAC.Comp.DataSet, cxClasses, cxLocalization, ACBrBase, ACBrEnterTab, IPPeerClient, REST.Client, Data.Bind.Components,
  Data.Bind.ObjectScope, Vcl.StdCtrls, system.JSON, System.JSONConsts, rest.json, REST.Types, classeCliente, REST.Response.Adapter, Vcl.Grids, Vcl.DBGrids, classeProdutos,
  classePedido , System.StrUtils, Vcl.Menus, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.ComCtrls, dxCore, cxDateUtils, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, Vcl.ExtCtrls, cxSpinEdit, cxTimeEdit,ClasseFaturamento , classeTabelaPrecos, classeVendedor, JvExControls, JvAnimatedImage, JvGIFCtrl,
  Generics.Collections;

Type
TThrottling = class
private
  FLimite_de_requisicoes: integer;
  FTempo_ate_permitir_novamente: integer;
public
  property limite_de_requisicoes: integer read FLimite_de_requisicoes write FLimite_de_requisicoes;
  property tempo_ate_permitir_novamente: integer read FTempo_ate_permitir_novamente write FTempo_ate_permitir_novamente;
  function ToJsonString: string;
  class function FromJsonString(const AJsonString: string): TThrottling;
end;

type
  TfrmAtualizaMercos = class(TfrmBaseDBFDAC)
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    rdsaCliente: TRESTResponseDataSetAdapter;
    MtCliente: TFDMemTable;
    MtClienteenderecos_adicionais: TWideStringField;
    MtClienteid: TWideStringField;
    MtClientecomplemento: TWideStringField;
    MtClientetipo: TWideStringField;
    MtClienterazao_social: TWideStringField;
    MtClienteobservacao: TWideStringField;
    MtClienteexcluido: TWideStringField;
    MtClientetelefones: TWideStringField;
    MtClientecnpj: TWideStringField;
    MtClienteinscricao_estadual: TWideStringField;
    MtClientecontatos: TWideStringField;
    MtClientesuframa: TWideStringField;
    MtClientebairro: TWideStringField;
    MtClienterua: TWideStringField;
    MtClientenumero: TWideStringField;
    MtClienteultima_alteracao: TWideStringField;
    MtClientecep: TWideStringField;
    MtClienteestado: TWideStringField;
    MtClienteemails: TWideStringField;
    MtClientenome_fantasia: TWideStringField;
    MtClientecidade: TWideStringField;
    MtClientenome_excecao_fiscal: TWideStringField;
    DataSource1: TDataSource;
    RESTClient2: TRESTClient;
    RESTRequest2: TRESTRequest;
    RESTResponse2: TRESTResponse;
    rdsaPedido: TRESTResponseDataSetAdapter;
    mtPedido: TFDMemTable;
    mtPedidocliente_id: TWideStringField;
    mtPedidostatus: TWideStringField;
    mtPedidocondicao_pagamento: TWideStringField;
    mtPedidoforma_pagamento_id: TWideStringField;
    mtPedidocontato_nome: TWideStringField;
    mtPedidocliente_nome_fantasia: TWideStringField;
    mtPedidocliente_estado: TWideStringField;
    mtPedidocliente_complemento: TWideStringField;
    mtPedidostatus_custom_id: TWideStringField;
    mtPedidoobservacoes: TWideStringField;
    mtPedidonumero: TWideStringField;
    mtPedidorepresentada_razao_social: TWideStringField;
    mtPedidoendereco_entrega: TWideStringField;
    mtPedidoendereco_entregabairro: TWideStringField;
    mtPedidoendereco_entregacomplemento: TWideStringField;
    mtPedidoendereco_entregacep: TWideStringField;
    mtPedidoendereco_entregaendereco: TWideStringField;
    mtPedidoendereco_entregacidade: TWideStringField;
    mtPedidoendereco_entregaestado: TWideStringField;
    mtPedidoendereco_entregaid: TWideStringField;
    mtPedidoendereco_entreganumero: TWideStringField;
    mtPedidodata_emissao: TWideStringField;
    mtPedidorepresentada_nome_fantasia: TWideStringField;
    mtPedidocliente_inscricao_estadual: TWideStringField;
    mtPedidostatus_faturamento: TWideStringField;
    mtPedidocliente_cep: TWideStringField;
    mtPedidototal: TWideStringField;
    mtPedidoid: TWideStringField;
    mtPedidocriador_id: TWideStringField;
    mtPedidorepresentada_id: TWideStringField;
    mtPedidotipo_pedido_id: TWideStringField;
    mtPedidotransportadora_id: TWideStringField;
    mtPedidoultima_alteracao: TWideStringField;
    mtPedidocliente_rua: TWideStringField;
    mtPedidoitems: TWideStringField;
    mtPedidocliente_cidade: TWideStringField;
    mtPedidocliente_cnpj: TWideStringField;
    mtPedidotransportadora_nome: TWideStringField;
    mtPedidoextras: TWideStringField;
    mtPedidocondicao_pagamento_id: TWideStringField;
    mtPedidocliente_suframa: TWideStringField;
    mtPedidonome_contato: TWideStringField;
    mtPedidocliente_razao_social: TWideStringField;
    mtPedidocliente_numero: TWideStringField;
    mtPedidocliente_bairro: TWideStringField;
    PopupMenu1: TPopupMenu;
    rdsaProdutos: TRESTResponseDataSetAdapter;
    mtProdutos: TFDMemTable;
    mtProdutostipo_ipi: TWideStringField;
    mtProdutoscodigo_ncm: TWideStringField;
    mtProdutospreco_tabela: TWideStringField;
    mtProdutosipi: TWideStringField;
    mtProdutoscomissao: TWideStringField;
    mtProdutosexcluido: TWideStringField;
    mtProdutosid: TWideStringField;
    mtProdutosnome: TWideStringField;
    mtProdutosunidade: TWideStringField;
    mtProdutospeso_bruto: TWideStringField;
    mtProdutospreco_minimo: TWideStringField;
    mtProdutosmoeda: TWideStringField;
    mtProdutossaldo_estoque: TWideStringField;
    mtProdutosobservacoes: TWideStringField;
    mtProdutosmultiplo: TWideStringField;
    mtProdutosultima_alteracao: TWideStringField;
    mtProdutosst: TWideStringField;
    mtProdutoscodigo: TWideStringField;
    mtProdutosativo: TWideStringField;
    Panel1: TPanel;
    btnProcessar: TButton;
    ldata: TLabel;
    cxDataVerificacao: TcxDateEdit;
    cxHora: TcxTimeEdit;
    pgMercos: TPageControl;
    tsResultado: TTabSheet;
    tsClientes: TTabSheet;
    tsProdutos: TTabSheet;
    mResultado: TMemo;
    qClientes: TFDQuery;
    qClientesCLI_CODIGO: TStringField;
    qClientesCLI_RAZAO: TStringField;
    qClientesCLI_FANTASIA: TStringField;
    qClientesCLI_ENDERE: TStringField;
    qClientesCLI_BAIRRO: TStringField;
    qClientesCLI_CIDADE: TStringField;
    qClientesCLI_UF: TStringField;
    qClientesMER_CLIENTE_ID: TIntegerField;
    qClientesMER_MENSAGEM: TStringField;
    DBGrid1: TDBGrid;
    dsCliente: TDataSource;
    qProdutos: TFDQuery;
    dsProdutos: TDataSource;
    qProdutosPRD_REFER: TStringField;
    qProdutosPRD_DESCRI: TStringField;
    qProdutosPRD_UND: TStringField;
    qProdutosIPI_CODIGO: TStringField;
    qProdutosMER_MENSAGEM: TStringField;
    DBGrid2: TDBGrid;
    chkListaPreco: TCheckBox;
    ChkClienteCloud: TCheckBox;
    chkProdutosCloud: TCheckBox;
    chkUpdEstoque: TCheckBox;
    ChkPedidos: TCheckBox;
    chkFatura: TCheckBox;
    PanelAguarde: TPanel;
    JvGIFAnimator2: TJvGIFAnimator;
    pmensagem: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure btnProcessarClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
  private
   TabelasLista : TStringList;
   baseurl : string;
   fhomologacao : boolean;
   fapplicationToken: string;
   fcompanyToken : string;
   fUltimaVerificacao : TDateTime;
   function IncluirClientesCloud: integer;
   function AlterarClientesCloud: integer;
   function ObterClientes : integer;
   function InsereClienteBanco (const cliente : TCliente) : boolean;
   function IncluirProdutosCloud: integer;
   function AlterarProdutosCloud: integer;
   function ObterProdutos : integer;
   function ObterVendedor (const id : integer; out nome : string):string;
   procedure AdiocionarParametros( request : TRESTRequest );
   function ObterPedidosAPI (out limiteUltrapassado: Boolean) : integer;
   function GravaPedido (const Pedido: TPedido): boolean;
   function AtualizarEstoque : integer;
   function AtualizaTabelasPrecos : integer;
   function AtualizaVinculos : integer;
   function AtualizarPrecoPadrao: boolean;
   function FaturarPedidos: integer;
   procedure atualizaDataVerificacao ;
  public
    procedure TabelasPrecos(const produto: Integer;  const preco: array of double);
    property ApplicationToken : string read fapplicationToken write fapplicationToken;
    property CompanyToken : string read fcompanytoken write fcompanyToken;
    property UltimaVerificacao : TDateTime read fUltimaVerificacao write fUltimaVerificacao;
    function verificaThrottling (const  RESTRequest1: TRESTRequest) : boolean;
  end;

var
  frmAtualizaMercos: TfrmAtualizaMercos;

implementation

uses iniciodb, uteis, RWFunc;
{$R *.dfm}

{TThrottling}


function TThrottling.ToJsonString: string;
begin
  result := TJson.ObjectToJsonString(self);
end;

class function TThrottling.FromJsonString(const AJsonString: string): TThrottling;
begin
  result := TJson.JsonToObject<TThrottling>(AJsonString)
end;

{ TfrmAtualizaMercos }

procedure TfrmAtualizaMercos.AdiocionarParametros( request : TRESTRequest );
begin
  request.Params.Clear;
  with request.Params.AddItem do
  begin
    ContentType := ctNone;
    name        := 'ApplicationToken'; // param name
    Value := ApplicationToken;
    Kind        := pkHTTPHEADER;
  end;
  with request.Params.AddItem do
  begin
    ContentType := ctNone;
    value := CompanyToken;
    name        := 'CompanyToken'; // param name
    Kind        := pkHTTPHEADER;
  end;

end;

function TfrmAtualizaMercos.AlterarClientesCloud: integer;
var cliente : TCliente;
    email: TArray<TEmailsClass>;
    Telefones: TArray<TTelefonesClass>;
    Contatos: TArray<TContatosClass>;
    jobject : TJSONObject;
    i,J,k : integer;
    json :string;
  procedure GravaMensagem (const mensagem : string );
  begin
    ExecSql( 'update cli0000  set MER_MENSAGEM = ' + QuotedStr(copy(mensagem,1,400) ) + ' where cli_codigo ='+QuotedStr(qAux.FieldByName('cli_codigo').AsString));
  end;
begin
  J := 0;
  try

    OpenAux('select  * from cli0000 WHERE MER_CLIENTE_ID IS NOT NULL and CLI_INATIVO = ''A''' + ConcatSe(' AND ',DBInicio.ExclusivoSql('CLIENTES')) +
    ' AND CLI_ULTIMA_UPD_MERCOS >' +DateTimeToSQL(UltimaVerificacao)+
    ' ORDER BY CLI_FANTASIA ' );
    if not qAux.IsEmpty then
    while not qAux.Eof do
    begin
      Cliente := TCliente.Create;
      try
        cliente.Nome_fantasia := qAux.FieldByName('cli_fantasia').AsString;
        cliente.razao_social :=  qAux.FieldByName('cli_razao').AsString;
        cliente.Tipo := qAux.FieldByName('CLI_PESSOA').AsString;
        cliente.Cnpj  := qAux.FieldByName('cli_cgc').AsString;
        cliente.Inscricao_estadual := qAux.FieldByName('CLI_INSC').AsString;
        cliente.Suframa := qAux.FieldByName('cli_suframa').AsString;
        cliente.Rua:= RetornaEnderecoSemNumero(qAux.FieldByName('cli_endere').AsString);
        cliente.Numero := RetornaNumeroEndereco(qAux.FieldByName('cli_endere').AsString);
  //      cliente.Complemento := qAux.FieldByName('cli_cidade').AsString;
        cliente.cep := qAux.FieldByName('cli_cep').AsString;
        cliente.bairro := qAux.FieldByName('cli_bairro').AsString;
        cliente.cidade := qAux.FieldByName('cli_cidade').AsString;
        cliente.Estado := qAux.FieldByName('cli_uf').AsString;

  //      cliente.Observacao: String;
        //dimensionar o vetor
        //email
        k:= 1;
        if (qAux.FieldByName('CLI_EMAIL_ALTERNATIVO').AsString = '')  and
           (qAux.FieldByName('CLI_FONE').AsString = '')    then
        begin
          GravaMensagem ('Falta preencher o email e fone');
          qaux.Next;
          Continue
        end
        else
        if qAux.FieldByName('CLI_EMAIL_ALTERNATIVO').AsString = '' then //obrigatório
        begin
          GravaMensagem ('Falta email do contato');
          qaux.Next;
          Continue
        end
        else
        if qAux.FieldByName('CLI_FONE').AsString = '' then
        begin
          GravaMensagem ('Falta preencher o fone');
          qaux.Next;
          Continue
        end;
        if qAux.FieldByName('CLI_EMAIL').AsString <> ''  then
          inc(k);
        if k>0  then
        begin
          SetLength(email,k);
          for I := 0 to k-1 do
            email[i] := TEmailsClass.Create;
          if qAux.FieldByName('CLI_EMAIL_ALTERNATIVO').AsString <> '' then
            email[0].email := qAux.FieldByName('CLI_EMAIL_ALTERNATIVO').AsString;
          if qAux.FieldByName('CLI_EMAIL').AsString <> ''  then
            email[1].email := qAux.FieldByName('CLI_EMAIL').AsString;

          cliente.emails := email;
        end;
        i:=0;
        if qAux.FieldByName('CLI_FONE').AsString <> '' then
           inc(i);
        if qAux.FieldByName('CLI_CELULAR').AsString <> '' then
          inc(i);
        if qAux.FieldByName('CLI_FAX').AsString <> '' then
          inc(i);

        //telefone
        SetLength(Telefones,i);
        for k := 0 to i-1 do
          Telefones[k] := TTelefonesClass.Create;

        if i=3 then
        begin
          Telefones[0].numero := MascaraFone(qAux.FieldByName('CLI_FONE').AsString);  //obrigatório
          Telefones[1].numero := MascaraFone(qAux.FieldByName('CLI_FAX').AsString);
          Telefones[2].numero := MascaraFone(qAux.FieldByName('CLI_CELULAR').AsString);
        end
        else if i =2 then
        begin
          Telefones[0].numero := MascaraFone(qAux.FieldByName('CLI_FONE').AsString);  //obrigatório
          if qAux.FieldByName('CLI_FAX').AsString <> '' then
            Telefones[1].numero := MascaraFone(qAux.FieldByName('CLI_FAX').AsString)
          else
            Telefones[1].numero := MascaraFone(qAux.FieldByName('CLI_CELULAR').AsString);
        end
        else if i=1 then
          Telefones[0].numero := MascaraFone(qAux.FieldByName('CLI_FONE').AsString);  //obrigatório
        cliente.telefones := Telefones;

       // contato
       if qAux.FieldByName('CLI_CONTATO').AsString <> '' then
       begin
          SetLength(Contatos,1);
          Contatos[0] := TContatosClass.Create;
          Contatos[0].cargo := qAux.FieldByName('CLI_FUNCONT').AsString;
          Contatos[0].nome  := qAux.FieldByName('CLI_CONTATO').AsString;
          SetLength(email,1);
          email[0] := TEmailsClass.Create;
          email[0].email := qAux.FieldByName('CLI_EMAIL_ALTERNATIVO').AsString;
          Contatos[0].emails := email;
          cliente.contatos := Contatos;
       end;

        cliente.excluido :=  qAux.FieldByName('CLI_INATIVO').AsString = 'I';

  //      Enderecos_adicionais: TArray<TEnderecos_adicionaisClass>;
        //cliente.Nome_excecao_fiscal: String;
     //   cliente.segmento_id := nil;

        jobject := TJson.ObjectToJsonObject(cliente, [joIgnoreEmptyStrings,joIgnoreEmptyArrays] );
        try
           RESTRequest1.Method :=  TRESTRequestMethod.rmPUT;
           RESTClient1.BaseURL := baseurl +'/clientes/'+IntToStr(qAux.FieldByName('MER_CLIENTE_ID').AsInteger);
           AdiocionarParametros(RESTRequest1);
           RESTRequest1.AddBody(jobject.ToJSON, ContentTypeFromString('application/json'));

           RESTRequest1.Execute;
           //Limite de requisições ultrapassado.
            verificaThrottling(RESTRequest1);
           if RESTResponse1.StatusCode = 200 then
           begin
             INC(J);
             GravaMensagem('Alterado com sucesso.') ;   //RESTResponse1.statustext

           end
           else
             GravaMensagem(AnsiReplaceStr( RESTResponse1.jsontext,'#$D#$A','') )   ;
            // mResultado.Text := ;

        finally
          jobject.Free;
        end;

      finally
        Cliente.Free;
      end;
      qAux.Next;

    end;
  finally
    Result := J;
  end;



end;

function TfrmAtualizaMercos.AlterarProdutosCloud: integer;
var
   Produto : TProdutos;
    jobject : TJSONObject;
    i,J : integer;
  procedure GravaMensagem (const mensagem : string );
  begin
    ExecSql( 'update PRD0000  set MER_MENSAGEM = ' + QuotedStr(copy(mensagem,1,400) ) + ' where prd_codigo ='+QuotedStr(qAux.FieldByName('prd_codigo').AsString));
  end;
begin
  J := 0;
  try

    OpenAux(' select  CAST ((SELECT  FIRST 1 IPI_ALIQ FROM IPI0000 i WHERE pr.ipi_codigo = i.IPI_CODIGO) AS NUMERIC(2,2)) as ipi, '+
            ' CAST((SELECT SUM(kas_saldo) FROM kardex_almox_saldo WHERE prd_codigo = pr.prd_codigo ) AS numeric(10,2)) Estoque, '+
            ' pr.* from PRD0000 pr '+
            ' JOIN PRD_TIPO tp ON (tp.PTI_CODIGO = pr.PTI_CODIGO AND tp.PTI_DISPONIVEL_VENDAS = ''S'')  '+
            ' WHERE MER_PRODUTO_ID IS NOT NULL and PRD_STATUS = ''A''' + ConcatSe(' AND pr.',DBInicio.ExclusivoSql('PRODUTOS')) +
            ' and PRD_ULTIMA_UPD_MERCOS >' +DateTimeToSQL(UltimaVerificacao) +
           // ' and prd_codigo = '+QuotedStr('05616')+ /// só para homologação
           /// ' and MER_MENSAGEM <> '+ QuotedStr('Incluido com sucesso.') +
            ' ORDER BY PRD_DESCRI ' );
    if not qAux.IsEmpty then
    while not qAux.Eof do
    begin
      Produto := TProdutos.Create;
      try
        if StrToIntDef(qAux.FieldByName('prd_refer').AsString,0) <> 0 then
          produto.id  := StrToIntDef(qAux.FieldByName('prd_refer').AsString,0) ;
        Produto.codigo := IntToStr( StrToIntDef(qAux.FieldByName('prd_refer').AsString,0) );
        Produto.nome   := Copy(qAux.FieldByName('prd_descri').AsString,1,100);
        produto.preco_tabela := qAux.FieldByName('PRD_PVENDA').AsFloat;
        produto.ipi := qAux.FieldByName('ipi').AsFloat;
        produto.tipo_ipi:= 'P';
        produto.moeda := '0';
        produto.unidade  := qAux.FieldByName('prd_und').AsString;
        Produto.saldo_estoque := qAux.FieldByName('Estoque').AsFloat;
        Produto.observacoes := qAux.FieldByName('PRD_COMPL').AsString;
        Produto.ativo := True;
        produto.codigo_ncm :=  qAux.FieldByName('IPI_CODIGO').AsString;
        Produto.peso_bruto :=   qAux.FieldByName('PRD_PESOKG').AsFloat;
        Produto.ultima_alteracao := now;
        produto.categoria_id := 0;
        produto.multiplo := 1;
        jobject := TJson.ObjectToJsonObject(produto, [joIgnoreEmptyStrings,joIgnoreEmptyArrays] );
        try
           RESTRequest1.Method :=  TRESTRequestMethod.rmPUT;
           RESTClient1.BaseURL := baseurl +'/produtos/'+IntToStr(qAux.FieldByName('MER_PRODUTO_ID').asinteger);
           AdiocionarParametros(RESTRequest1);

           RESTRequest1.AddBody(AnsiReplaceStr(jobject.ToJSON,'"categoria_id":0,',''), ContentTypeFromString('application/json'));

           RESTRequest1.Execute;
           //Limite de requisições ultrapassado.
           verificaThrottling(RESTRequest1);
           if RESTResponse1.StatusCode = 200 then
           begin
             INC(J);
             GravaMensagem('Alterado com sucesso.') ;   //RESTResponse1.statustext

           end
           else
             GravaMensagem(AnsiReplaceStr( RESTResponse1.jsontext,'#$D#$A','') )   ;
            // mResultado.Text := ;

        finally
          jobject.Free;
        end;


      finally
        Produto.Free;
      end;

      qAux.Next;
    end;
  finally
    Result := j;
  end;

end;

procedure TfrmAtualizaMercos.atualizaDataVerificacao;
begin
  ExecSql(' update EMP0000 set EMP_UltimaVerificacao = '+DateTimeToSQL(Now) + ' where emp_codigo = '+QuotedStr(DBInicio.Empresa.EMP_CODIGO));
end;

function TfrmAtualizaMercos.AtualizarEstoque: integer;
var  Estoque : TEstoque;
    jobject : TJSONObject;
    J: Integer;
begin
  j:= 0;
  OpenAux('SELECT prd_refer, MER_PRODUTO_ID,                                                                                                  '+
           ' CAST((SELECT SUM(kas_saldo) FROM kardex_almox_saldo WHERE prd_codigo = pr.prd_codigo ) AS numeric(10,2)) Estoque '+
           ' FROM PRD0000 pr '+
           ' JOIN PRD_TIPO tp ON (tp.PTI_CODIGO = pr.PTI_CODIGO AND tp.PTI_DISPONIVEL_VENDAS = ''S'')  '+
//           ' WHERE prd_codigo in (SELECT PRD_CODIGO FROM kardex_almox_saldo WHERE KAS_DATA_HORA >= CURRENT_DATE-1 )  ')
           ' WHERE prd_codigo in (SELECT PRD_CODIGO FROM kardex_almox_saldo WHERE KAS_DATA_HORA >= '+ DateTimeToSQL(UltimaVerificacao) + ' )  '+
           ' and MER_PRODUTO_ID IS NOT NULL '  ) ;
  while not qAux.Eof do
  begin
    Estoque := TEstoque.Create;
    try
        Estoque.produto_id := qAux.FieldByName('MER_PRODUTO_ID').AsInteger;
        Estoque.novo_saldo := qAux.FieldByName('Estoque').AsFloat;
        jobject := TJson.ObjectToJsonObject(Estoque, [joIgnoreEmptyStrings,joIgnoreEmptyArrays] );
        try
           RESTRequest1.Method :=  TRESTRequestMethod.rmPUT;
           RESTClient1.BaseURL := baseurl +'/ajustar_estoque'; ///+'/'+IntToStr(qAux.FieldByName('MER_CLIENTE_ID').AsInteger);
           AdiocionarParametros(RESTRequest1);
           RESTRequest1.AddBody(jobject.ToJSON, ContentTypeFromString('application/json'));

           RESTRequest1.Execute;
           //Limite de requisições ultrapassado.
           verificaThrottling(RESTRequest1);
           if RESTResponse1.StatusCode = 200 then     // RESTResponse1.jsontext
           begin
             INC(J);


           end
           else if  (RESTResponse1.StatusCode = 422) and ((pos('O controle de estoque está desativado',RESTResponse1.jsontext)) > 0) then
             raise Exception.Create('O controle de estoque está desativado na representada');


            // mResultado.Text := ;

        finally
          jobject.Free;
        end;
        qAux.Next;
    finally
      Estoque.Free;
    end;

    
  end;
  result := j;
end;

function TfrmAtualizaMercos.AtualizarPrecoPadrao: boolean;
var produto: TPrecoPadrao;
    i,j : integer;
    jobject : TJSONObject;
begin
  inherited;

  OpenAux('SELECT prd_refer, prd_Descri, prd_codigo, MER_PRODUTO_ID, prd_pvenda,PRD_PVENDA2, PRD_PVENDA3, PRD_PVENDA4, PRD_PVENDA5, PRD_PVENDA6, '+
          ' CASE   WHEN prd_refer SIMILAR TO ''[0-9]+'' THEN cast(prd_refer as integer) '+
          '      ELSE 0  END refer_int '+
          ' FROM PRD0000 pr ' +
          ' JOIN PRD_TIPO tp ON (tp.PTI_CODIGO = pr.PTI_CODIGO AND tp.PTI_DISPONIVEL_VENDAS = ''S'') '+
    //      '  WHERE  PRD_CODIGO = ''05615'' ');      //PRD_CODIGO = ''05616'' OR
          ' WHERE MER_PRODUTO_ID <> 0  and MER_PRODUTO_ID IS NOT NULL and PRD_STATUS = ''A''' + ConcatSe(' AND pr.',DBInicio.ExclusivoSql('PRODUTOS'))+
          ' AND PRD_UPD_LISTAPRECO_MERCOS  >' +DateTimeToSQL(UltimaVerificacao)
          );

  while not qaux.Eof do
  begin
     produto := TPrecoPadrao.Create;
     produto.nome :=  qAux.FieldByName('prd_Descri').AsString;
     produto.preco_tabela := qAux.FieldByName('prd_pvenda').AsFloat;
     jobject := TJson.ObjectToJsonObject(produto, [joIgnoreEmptyStrings,joIgnoreEmptyArrays] );
     try
       RESTRequest1.Method :=  TRESTRequestMethod.rmPut;
       RESTClient1.BaseURL := baseurl +'/produtos/'+ IntToStr(qAux.FieldByName('MER_PRODUTO_ID').AsInteger);
       AdiocionarParametros(RESTRequest1);
       RESTRequest1.AddBody(jobject.ToJSON, ContentTypeFromString('application/json'));

       RESTRequest1.Execute;
       //Limite de requisições ultrapassado.
        verificaThrottling(RESTRequest1);
        if RESTResponse1.StatusCode = 200 then   //RESTResponse1.statustext
        INC(J)

     finally
       produto.Free;
       jobject.Free;
     end;
    qAux.next;
  end;
end;

function TfrmAtualizaMercos.AtualizaTabelasPrecos: integer;
var
  TabelaPrecos: TTabelaPreco;
  ja: TJSONArray;
  jv: TJSONValue;
  i: integer;
begin
  inherited;
  RESTRequest1.Method :=  TRESTRequestMethod.rmGET;
  RESTClient1.BaseURL := baseurl +'/tabelas_preco'; ///+'/'+IntToStr(qAux.FieldByName('MER_CLIENTE_ID').AsInteger);
  AdiocionarParametros(RESTRequest1);
  RESTRequest1.Execute;
  //Limite de requisições ultrapassado.
  verificaThrottling(RESTRequest1);
  if RESTResponse1.StatusCode = 200 then  /// RESTResponse1.jsontext
  begin
    TabelasLista.clear;
    ja := TJsonObject.ParseJSONValue(TEncoding.UTF8.GetBytes(RESTResponse1.Content),0) as  TJSONArray;
     try
       for I := 0 to ja.Count-1 do
       begin
        jv:= ja.get(i);
        TabelaPrecos:= TJson.JsonToObject<TTabelaPreco>(trim(jv.ToString)); // deu certo
         try
           if not tabelaprecos.excluido then
             TabelasLista.Add( FloatToStr(tabelaprecos.id));
         finally
           TabelaPrecos.Free;
         end;
       end;
     finally
       ja.Free;
     end;
     result := TabelasLista.Count;
  end;

end;

function TfrmAtualizaMercos.AtualizaVinculos: integer;
var
    j : integer;

begin
  inherited;
  AtualizaTabelasPrecos;
  OpenAux('SELECT prd_refer, prd_codigo, MER_PRODUTO_ID, prd_pvenda,PRD_PVENDA2, PRD_PVENDA3, PRD_PVENDA4, PRD_PVENDA5, PRD_PVENDA6, '+
        ' CASE   WHEN prd_refer SIMILAR TO ''[0-9]+'' THEN cast(prd_refer as integer) '+
        '      ELSE 0  END refer_int '+
        ' FROM PRD0000 pr ' +
        ' JOIN PRD_TIPO tp ON (tp.PTI_CODIGO = pr.PTI_CODIGO AND tp.PTI_DISPONIVEL_VENDAS = ''S'') '+
       // '  WHERE PRD_CODIGO = ''05616'' OR  PRD_CODIGO = ''05615'' ');
        ' WHERE MER_PRODUTO_ID <> 0  and MER_PRODUTO_ID IS NOT NULL and PRD_STATUS = ''A''' + ConcatSe(' AND pr.',DBInicio.ExclusivoSql('PRODUTOS'))+
        ' AND PRD_UPD_LISTAPRECO_MERCOS  >' +DateTimeToSQL(UltimaVerificacao)
        );
  j:=0;
  while not qAux.EOF do
  begin
    TabelasPrecos(qAux.FieldByName('MER_PRODUTO_ID').AsInteger, [qAux.FieldByName('PRD_PVENDA2').AsFloat,
                                                                 qAux.FieldByName('PRD_PVENDA3').AsFloat,
                                                                 qAux.FieldByName('PRD_PVENDA4').AsFloat,
                                                                qAux.FieldByName('PRD_PVENDA5').AsFloat,
                                                                 qAux.FieldByName('PRD_PVENDA6').AsFloat]  );
    inc(j);
    qAux.Next;

  end;
 result := j;

end;

procedure TfrmAtualizaMercos.btnProcessarClick(Sender: TObject);
var j : integer;
limiteUltrapassado : boolean;
begin
  inherited;

  try
    Cursor := crHourGlass;
    btnProcessar.Enabled := False;
    PanelAguarde.Visible:= true;
//    if DBInicio.Usuario.USERNAME = 'NOVI' then
//    begin
      UltimaVerificacao := cxDataVerificacao.Date + cxHora.Time;
//    end;
    if UltimaVerificacao >0  then
    begin

      //INCLUIR OS CLIENTES DO ADJUTOR NA MERCOS
      mResultado.Clear;
      if ChkClienteCloud.Checked then
      begin
        Application.ProcessMessages;
        pmensagem.Caption := 'Verificando clientes novos no Adjutor';
        j:= IncluirClientesCloud;
        mResultado.Lines.Add('Incluido '+ IntToStr(j)+ ' cliente(s) na Mercos');
        Application.ProcessMessages;
        if UltimaVerificacao >0  then
        Begin
          Application.ProcessMessages;
          pmensagem.Caption := 'Verificando se houve alterações em clientes no Adjutor';
          j:=AlterarClientesCloud;
          mResultado.Lines.Add('Atualizando '+ IntToStr(j)+ ' cliente(s) na Mercos');
          Application.ProcessMessages;
        end;
      end;
      //atualizador os codigos da mercos
      Application.ProcessMessages;
      pmensagem.Caption := 'Verificando clientes novos na Mercos';
      j:= ObterClientes;   //atualizar os codigos do clientes na mercos
      mResultado.Lines.Add('Atualizado cod Mercos '+ IntToStr(j)+ ' clientes');
      Application.ProcessMessages;

      //incluir os produtos do adjutor na mercos
      if chkProdutosCloud.Checked then
      begin
        Application.ProcessMessages;
        pmensagem.Caption := 'Verificando produtos novos no Adjutor';
        j:= IncluirProdutosCloud;
        mResultado.Lines.Add('Incluido '+ IntToStr(j)+ ' produtos');
        Application.ProcessMessages;
        if UltimaVerificacao >0  then
        Begin
          Application.ProcessMessages;
          pmensagem.Caption := 'Verificando produtos alterados no Adjutor';
          j:= AlterarProdutosCloud;
          mResultado.Lines.Add('Atualizando '+ IntToStr(j)+ ' produtos na Mercos');
          Application.ProcessMessages;
        end;
      end;
      Application.ProcessMessages;
      pmensagem.Caption := 'Atualizando produtos';
      j:= ObterProdutos;   // atualizar os codigos do produto na mercos
      mResultado.Lines.Add('Atualizado cod. Mercos '+ IntToStr(j)+ ' em produtos');
      Application.ProcessMessages;
    end
    else
    begin

      //atualizador os codigos da mercos

      pmensagem.Caption := 'Verificando clientes novos na Mercos';
      Application.ProcessMessages;
      j:= ObterClientes;   //atualizar os codigos do clientes na mercos
      mResultado.Lines.Add('Atualizado cod Mercos '+ IntToStr(j)+ ' clientes');

      pmensagem.Caption := 'Atualizando produtos';
      Application.ProcessMessages;
      j:= ObterProdutos;   // atualizar os codigos do produto na mercos
      mResultado.Lines.Add('Atualizado cod Mercos '+ IntToStr(j)+ ' em produtos');
      Application.ProcessMessages;


    end;

    //pedido
    if ChkPedidos.Checked then
    begin

      pmensagem.Caption := 'Verificando pedidos na plataforma Mercos';
      Application.ProcessMessages;
      j:= ObterPedidosAPI(limiteUltrapassado);
      if limiteUltrapassado then
        mResultado.Lines.Add('Recebendo somente '+ IntToStr(j)+ ' pedidos para incluir ou atualizar. Houve limite de pedidos ultrapassado, aumente a data de verificação, ou faça diariamente.')
      else
        mResultado.Lines.Add('Recebendo '+ IntToStr(j)+ ' pedidos para incluir ou atualizar');
    end;
    qClientes.Open;
    qProdutos.Open;
    if chkListaPreco.Checked then
    begin
      Application.ProcessMessages;
      pmensagem.Caption := 'Verificando lista preços';
      AtualizarPrecoPadrao;
      j:=AtualizaVinculos; // atualiza preços 2 a 6 de preços
      mResultado.Lines.Add('Atualizando lista de preço de '+ IntToStr(j)+ ' produtos');
    end;
    if chkFatura.Checked then
    begin
      Application.ProcessMessages;
      pmensagem.Caption := 'Verificando pedidos faturados';
      j:= FaturarPedidos;
      mResultado.Lines.Add('Faturado(s) '+ IntToStr(j)+ ' pedido(s)');
    end;
    if chkUpdEstoque.Checked and (UltimaVerificacao > 0) then
    begin
      Application.ProcessMessages;
      pmensagem.Caption := 'Verificando alteração no estoque';
      j:= AtualizarEstoque;
      mResultado.Lines.Add('Atualizando estoque de '+ IntToStr(j)+ ' produtos(s)');
    end;
    ExecSql('UPDATE EMP0000 SET EMP_UltimaVerificacao = '+DateTimeToSQL(NOW) + ' WHERE EMP_CODIGO ='+QuotedStr(DBInicio.Empresa.EMP_CODIGO ));
  finally
    btnProcessar.Enabled := True;
    Cursor := crDefault;
    PanelAguarde.Visible:= False;
  end;

end;

procedure TfrmAtualizaMercos.Button1Click(Sender: TObject);
begin
  inherited;
  IncluirProdutosCloud;
end;

function TfrmAtualizaMercos.FaturarPedidos: integer;
var produto: TFaturamento;
    i,j : integer;
    jobject : TJSONObject;

begin
  inherited;
  j := 0;
  OpenAux('SELECT we.PEDIDO_ID_EXTERNO, nf.NF_NOTANUMBER, nf.NF_TOT_PROD, nf.NF_TOT_NOTA ,NF_EMISSAO, NF.NF_NUM_NFE,NF_OBSERVACAO '+
          ' FROM PEDIDO_WEB WE JOIN PED0000 PED ON (PED.PED_CODIGO = WE.PED_CODIGO) '+
          '  JOIN NF0001 NF ON (NF.PED_CODIGO = PED.PED_CODIGO AND NF_STATUS_NFE = ''A'' ) '+
          '  WHERE PEDIDO_ORIGEM = ''MERCOS'' '+
          '    AND NF_EMISSAO >='+ DateToSQL(UltimaVerificacao)  );

  while not qaux.Eof do
  begin
    produto := TFaturamento.Create;
    produto.pedido_id :=  qAux.FieldByName('PEDIDO_ID_EXTERNO').AsInteger;
    //produto.numero_documento :=  qAux.FieldByName('NF_NOTANUMBER').AsString;
    produto.valor_faturado := qAux.FieldByName('NF_TOT_NOTA').AsFloat;
    produto.data_faturamento := FormatDateTime('yyyy-mm-dd', qAux.FieldByName('NF_EMISSAO').AsDateTime);
    produto.numero_nf := qAux.FieldByName('NF_NUM_NFE').AsString;
    produto.informacoes_adicionais := trim(copy(qAux.FieldByName('NF_OBSERVACAO').AsString,1,500));

    jobject := TJson.ObjectToJsonObject(produto, [joIgnoreEmptyStrings,joIgnoreEmptyArrays] );
     try
       RESTRequest1.Method :=  TRESTRequestMethod.rmPOST;
       RESTClient1.BaseURL := baseurl +'/faturamento' ;
       AdiocionarParametros(RESTRequest1);
       RESTRequest1.AddBody(jobject.ToJSON, ContentTypeFromString('application/json'));

       RESTRequest1.Execute;
       //Limite de requisições ultrapassado.
       verificaThrottling(RESTRequest1);
       if RESTResponse1.StatusCode = 201 then   //RESTResponse1.statustext  or RESTResponse1.content
          INC(J)

     finally
       produto.Free;
       jobject.Free;
     end;
    qAux.Next;
  end;
  result := j;
end;

procedure TfrmAtualizaMercos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TfrmAtualizaMercos.FormCreate(Sender: TObject);
begin
  inherited;
  //HOMOLOGAÇÃO

  OpenAux('SELECT EMP_AMBIENTE_MERCOS FROM EMP0000 WHERE EMP_CODIGO = '+QuotedStr(DBInicio.Empresa.EMP_CODIGO));
  fhomologacao := qAux.FieldByName('EMP_AMBIENTE_MERCOS').AsString = '0';

  if fhomologacao then
    BaseURL := 'https://sandbox.mercos.com/api/v1'
  else
    baseurl:= 'https://app.mercos.com/api/v1';
  OpenAux('select EMP_COMPANYTOKEN, EMP_APPLICATIONTOKEN,EMP_UltimaVerificacao from EMP0000 where emp_codigo = '+QuotedStr(DBInicio.Empresa.EMP_CODIGO));
  if qAux.FieldByName('EMP_COMPANYTOKEN').AsString = EmptyStr then
    raise Exception.Create('Não preenchido CompanyToken da empresa');
  if qAux.FieldByName('EMP_APPLICATIONTOKEN').AsString = EmptyStr then
    raise Exception.Create('Não preenchido ApplicationToken da empresa');
  ApplicationToken :=  qAux.FieldByName('EMP_APPLICATIONTOKEN').AsString;
  CompanyToken :=  qAux.FieldByName('EMP_COMPANYTOKEN').AsString;
  if not qAux.FieldByName('EMP_UltimaVerificacao').IsNull then
    UltimaVerificacao := qAux.FieldByName('EMP_UltimaVerificacao').AsDateTime;

//  if (DBInicio.Usuario.USERNAME = 'NOVI')   then
//  begin
     cxDataVerificacao.Visible := True;
     ldata.Visible := True;
     cxDataVerificacao.Date := StrToDate( DateToStr(qAux.FieldByName('EMP_UltimaVerificacao').AsDateTime));
     cxHora.Visible := True;
     cxHora.Time := StrToTime( TimeToStr(qAux.FieldByName('EMP_UltimaVerificacao').AsDateTime));

  TabelasLista := TStringList.Create;
  TabelasLista.Sort;
end;

procedure TfrmAtualizaMercos.FormDestroy(Sender: TObject);
begin
  inherited;
  if Assigned(TabelasLista) then
      TabelasLista.Free;
  frmAtualizaMercos := nil;
end;

function TfrmAtualizaMercos.GravaPedido (const Pedido: TPedido): boolean;
var ped : integer;
    sql :string;
    cli_cod, ref_cod, rep_cod, vendedor : string;
    I : Integer;
    numero : integer;
begin

    cli_cod := BuscaUmDadoSqlAsString('SELECT CLI_CODIGO from cli0000 WHERE MER_CLIENTE_ID = '+IntToStr( Round(Pedido.cliente_id)));
    if cli_cod = '' then
      cli_cod := BuscaUmDadoSqlAsString('SELECT CLI_CODIGO from cli0000 WHERE CLI_CGC = '+QuotedStr(Pedido.cliente_cnpj) );



  // não tem pedido
  If BuscaUmDadoSqlAsInteger('SELECT 1 FROM PEDIDO_WEB WHERE PEDIDO_ID_EXTERNO = ' +QuotedStr(IntToStr( Round(Pedido.id))) +' and emp_codigo = '+QuotedStr(DBInicio.Empresa.EMP_CODIGO)  ) = 0 then
  begin
    rep_cod := ObterVendedor(Pedido.criador_id, vendedor);
    numero := StrToIntDef(Pedido.cliente_numero,0);
    ped := GetNextSequence('GEN_PEDIDO_WEB_ID');
    sql:= ' INSERT INTO PEDIDO_WEB (PW_REGISTRO, EMP_CODIGO, PEDIDO_ID_EXTERNO, PEDIDO_ORIGEM, PW_DATA_STATUS, PW_DATA, PW_CLI_CNPJ, PW_CLI_NOME,  '+
    ' CLI_CODIGO, REP_CODIGO, PCL_CODIGO, PW_STATUS, PW_OBSERVACAO, PW_CONDICAO_PGTO, PW_VENDEDOR, SPW_DATA_ENTREGA, ' +
    ' SPW_CLI_RAZAO, SPW_CLI_CIDADE, SPW_CLI_UF, SPW_CLI_CEP, SPW_CLI_ENDERE, SPW_CLI_NUMERO, SPW_CLI_COMPLEMENTO, SPW_CLIENTE_ID,  '+
    ' SPW_TIPOPEDIDO, PW_PEDIDO_MERCOS) '+
    ' VALUES('+IntToStr(ped) +','+
    QuotedStr(DBInicio.Empresa.EMP_CODIGO) + ','+
    IntToStr( Round(Pedido.id))+',' +     //PEDIDO_ID_EXTERNO
    QuotedStr('MERCOS') + ',' +   //PEDIDO_ORIGEM
    DateTimeToSQL(Pedido.ultima_alteracao) + ',' + //PW_DATA_STATUS
    DateToSQL(Pedido.data_emissao) + ','+        //PW_DATA
    QuotedStr(Pedido.cliente_cnpj) +','+ //PW_CLI_CNPJ
    QuotedStr(COPY(Pedido.cliente_razao_social,1,50)) + ','+   //PW_CLI_NOME
    QuotedStr(cli_cod) +',' + //CLI_CODIGO
    QuotedStr(rep_cod)+  ','+//REP_CODIGO
    'null,'+  // PCL_CODIGO
    QuotedStr('P') + ','+ //PW_STATUS
    QuotedStr(Pedido.observacoes) + ','+  //PW_OBSERVACAO
    QuotedStr(COPY(Pedido.condicao_pagamento,1,30)) + ','+//  PW_CONDICAO_PGTO
    iif(vendedor='','null', QuotedStr(vendedor)) +','+ //PW_VENDEDOR
    'NULL'+','+//SPW_DATA_ENTREGA
    QuotedStr(COPY(Pedido.cliente_razao_social,1,55)) + ','+ //SPW_CLI_RAZAO
    QuotedStr(COPY(PEDIDO.cliente_cidade,1,30)) + ','+  // SPW_CLI_CIDADE
    QuotedStr(Pedido.cliente_estado) + ','+ // SPW_CLI_UF
    QuotedStr(COPY(RetiraTodaMascara(Pedido.cliente_cep),1,8)) + ','+  // SPW_CLI_CEP
    QuotedStr(COPY(Pedido.cliente_rua,1,50))+ ','+ // SPW_CLI_ENDERE
//    IntToStr( StrToIntDef(Pedido.cliente_numero,0)) +','+ // SPW_CLI_NUMERO DA CASA
    iif(numero=0,'null', IntToStr(numero)) + ',' + // SPW_CLI_NUMERO DA CASA
    iif((numero=0) and (Pedido.cliente_numero<>''),
      QuotedStr(copy((Pedido.cliente_numero + '- '+ Pedido.cliente_complemento),1,15)),
      QuotedStr(copy(Pedido.cliente_complemento,1,15))) + ','+  // SPW_CLI_COMPLEMENTO
    IntToStr( Round(Pedido.cliente_id)) +','+
    '15'+','+ // SPW_TIPOPEDIDO
     IntToStr(Pedido.numero)+ //PW_PEDIDO_MERCOS
    ')' ;//SPW_CLIENTE_ID

     ExecSql(sql);
  end
  else
  begin
     ped := BuscaUmDadoSqlAsInteger('SELECT PW_REGISTRO FROM PEDIDO_WEB WHERE PEDIDO_ID_EXTERNO = ' +QuotedStr(IntToStr( Round(Pedido.id))));
     sql:=  ' UPDATE PEDIDO_WEB         '+
            '  SET PW_DATA = '+DateToSQL(Pedido.data_emissao) +    //PW_DATA
            '   , PW_CLI_CNPJ = '+  QuotedStr(Pedido.cliente_cnpj) + //PW_CLI_CNPJ
            '   , PW_CLI_NOME = '+ QuotedStr(COPY(Pedido.cliente_razao_social,1,50)) +
            '   , CLI_CODIGO = '+  QuotedStr(cli_cod) +
            '   , PW_OBSERVACAO  = ' + QuotedStr(Pedido.observacoes) +
            '   , PW_CONDICAO_PGTO = ' + QuotedStr(COPY(Pedido.condicao_pagamento,1,30))  +
           '   ,  SPW_CLI_RAZAO = ' +QuotedStr(COPY(Pedido.cliente_razao_social,1,55)) +
            '   , SPW_CLI_CIDADE =' + QuotedStr(COPY(PEDIDO.cliente_cidade,1,30)) +
            '   , SPW_CLI_UF = '+   QuotedStr(Pedido.cliente_estado) +
            '   , SPW_CLI_CEP  = '+ QuotedStr(COPY(RetiraTodaMascara(Pedido.cliente_cep),1,8))+
            '   , SPW_CLI_ENDERE = '+QuotedStr(COPY(Pedido.cliente_rua,1,50))+
            '   , SPW_CLI_NUMERO  ='+ IntToStr( StrToIntDef(Pedido.cliente_numero,0)) +
            '   , SPW_CLI_COMPLEMENTO ='+QuotedStr(COPY(Pedido.cliente_complemento,1,15)) +
            '   , SPW_CLIENTE_ID   = '+IntToStr( Round(Pedido.cliente_id)) +
            '  , PW_PEDIDO_MERCOS = '+IntToStr( Pedido.numero)+
            '   WHERE  PEDIDO_ID_EXTERNO = ' +QuotedStr(IntToStr( Round(Pedido.id)) );
    ExecSql(sql);
  end;
    for I := Low(Pedido.items) to length(pedido.items)-1 do
    begin
      ref_cod := BuscaUmDadoSqlAsString('Select PRD_REFER from PRD0000 WHERE MER_PRODUTO_ID = '+IntToStr( Round(Pedido.items[i].produto_id)));

      if not Pedido.items[i].excluido  then
      begin

         if BuscaUmDadoSqlAsInteger('SELECT 1 from PEDIDO_WEB_ITEM where  PW_REGISTRO = '+ IntToStr(ped) + ' and PWI_REFERENCIA = '+QuotedStr(ref_cod)) =0 then
         begin
          //ref_cod := strzero(Pedido.items[i].produto_codigo, 6) ;
          sql:= '  INSERT INTO PEDIDO_WEB_ITEM ( PW_REGISTRO, PWI_TIPO, PWI_REFERENCIA, PWI_DESCRICAO, SPWI_PRODUTO_ID, '+
                '  PWI_UNIDADE_MEDIDA, PWI_QUANTIDADE, PWI_PRECO, SPWI_PRECO_LIQUIDO)' + //  SPWI_DESCTO_VALOR, SPWI_DESCTO_PERCENT, )   '+
                ' VALUES('+
                 IntToStr(ped) +','+
                 QuotedStr('P') + ','+
                 QuotedStr(ref_cod)+','+
                 QuotedStr(COPY(Pedido.items[i].produto_nome,1,20))  +','+
                 IntToStr(Pedido.items[i].produto_id)   +','+
                 QuotedStr('UN')+','+
                 FloatToSQL(Pedido.items[i].quantidade)+','+
                 FloatToSQL(Pedido.items[i].preco_liquido)+','+
                 FloatToSQL(Pedido.items[i].preco_bruto)+
                 ')';
            ExecSql(sql);
         end
         else
         begin
          sql := ' update PEDIDO_WEB_ITEM '+
                ' set PWI_REFERENCIA = ' + QuotedStr(ref_cod)+
                ' ,PWI_DESCRICAO = '+  QuotedStr(COPY(Pedido.items[i].produto_nome,1,200))  +
                ' ,SPWI_PRODUTO_ID =  '+  IntToStr(Pedido.items[i].produto_id)  +
                ' , PWI_QUANTIDADE = '+   FloatToSQL(Pedido.items[i].quantidade)+
                ', PWI_PRECO = '  +  FloatToSQL(Pedido.items[i].preco_liquido)+
                ' ,SPWI_PRECO_LIQUIDO ='+  FloatToSQL(Pedido.items[i].preco_bruto)+
                '  where  PW_REGISTRO = '+ IntToStr(ped) + ' and PWI_REFERENCIA = '+QuotedStr(ref_cod);
              ExecSql(sql);
         end;
      end
      else
      begin
       if ref_cod <> '' then
       begin
         sql := 'delete from PEDIDO_WEB_ITEM where  PW_REGISTRO = '+ IntToStr(ped) + ' and PWI_REFERENCIA = '+QuotedStr(ref_cod);
         ExecSql(sql)
       end;
      end;
    end;



end;

function TfrmAtualizaMercos.IncluirClientesCloud: integer;
var cliente : TCliente;
    erro: TListaErros;
    email: TArray<TEmailsClass>;
    Telefones: TArray<TTelefonesClass>;
    Contatos: TArray<TContatosClass>;
    jobject : TJSONObject;
    i,J,k,q : integer;
    json :string;
    ja: TJSONArray;
    jv: TJSONValue;
    mensagem :string;
    mercos_id : integer;
    CountItems: integer;
     cli_codigo : string;
  procedure GravaMensagem (const mensagem : string; id : integer = 0  );
  begin
   if cli_codigo<> '' then
    ExecSql( 'update cli0000  set MER_MENSAGEM = ' + QuotedStr(copy(mensagem,1,400) ) +
    iif(id>0, ', MER_CLIENTE_ID = '+IntToStr(id),'')+
     ' where cli_codigo ='+QuotedStr(cli_codigo));
  end;
begin
  J := 0;
  try

    OpenAux('select  * from cli0000 WHERE MER_CLIENTE_ID IS NULL and CLI_INATIVO = ''A''' + ConcatSe(' AND ',DBInicio.ExclusivoSql('CLIENTES')) +
    ' ORDER BY CLI_FANTASIA ' );
    if not qAux.IsEmpty then
    while not qAux.Eof do
    begin
      Cliente := TCliente.Create;
      try
        cli_codigo  := qAux.FieldByName('CLI_CODIGO').AsString;
        cliente.ID := StrToIntDef(qAux.FieldByName('CLI_CODIGO').AsString,0) ;
        cliente.Nome_fantasia := qAux.FieldByName('cli_fantasia').AsString;
        cliente.razao_social :=  qAux.FieldByName('cli_razao').AsString;
        cliente.Tipo := qAux.FieldByName('CLI_PESSOA').AsString;
        cliente.Cnpj  := qAux.FieldByName('cli_cgc').AsString;
        cliente.Inscricao_estadual := qAux.FieldByName('CLI_INSC').AsString;
        cliente.Suframa := qAux.FieldByName('cli_suframa').AsString;
        cliente.Rua:= RetornaEnderecoSemNumero(qAux.FieldByName('cli_endere').AsString);
        cliente.Numero := RetornaNumeroEndereco(qAux.FieldByName('cli_endere').AsString);
  //      cliente.Complemento := qAux.FieldByName('cli_cidade').AsString;
        cliente.cep := qAux.FieldByName('cli_cep').AsString;
        cliente.bairro := qAux.FieldByName('cli_bairro').AsString;
        cliente.cidade := qAux.FieldByName('cli_cidade').AsString;
        cliente.Estado := qAux.FieldByName('cli_uf').AsString;

  //      cliente.Observacao: String;
        //dimensionar o vetor
        //email
        k:= 1;
        if (qAux.FieldByName('CLI_EMAIL_ALTERNATIVO').AsString = '')  and
           (qAux.FieldByName('CLI_FONE').AsString = '')    then
        begin
          GravaMensagem ('Falta preencher o email e fone');
          qaux.Next;
          Continue
        end
        else
        if qAux.FieldByName('CLI_EMAIL_ALTERNATIVO').AsString = '' then //obrigatório
        begin
          GravaMensagem ('Falta email do contato');
          qaux.Next;
          Continue
        end
        else
        if qAux.FieldByName('CLI_FONE').AsString = '' then
        begin
          GravaMensagem ('Falta preencher o fone');
          qaux.Next;
          Continue
        end;
        if qAux.FieldByName('CLI_EMAIL').AsString <> ''  then
          inc(k);
        if k>0  then
        begin
          SetLength(email,k);
          for I := 0 to k-1 do
            email[i] := TEmailsClass.Create;
          if qAux.FieldByName('CLI_EMAIL_ALTERNATIVO').AsString <> '' then
            email[0].email := qAux.FieldByName('CLI_EMAIL_ALTERNATIVO').AsString;
          if qAux.FieldByName('CLI_EMAIL').AsString <> ''  then
            email[1].email := qAux.FieldByName('CLI_EMAIL').AsString;

          cliente.emails := email;
        end;
        i:=0;
        if qAux.FieldByName('CLI_FONE').AsString <> '' then
           inc(i);
        if qAux.FieldByName('CLI_CELULAR').AsString <> '' then
          inc(i);
        if qAux.FieldByName('CLI_FAX').AsString <> '' then
          inc(i);

        //telefone
        SetLength(Telefones,i);
        for k := 0 to i-1 do
          Telefones[k] := TTelefonesClass.Create;

        if i=3 then
        begin
          Telefones[0].numero := MascaraFone(qAux.FieldByName('CLI_FONE').AsString);  //obrigatório
          Telefones[1].numero := MascaraFone(qAux.FieldByName('CLI_FAX').AsString);
          Telefones[2].numero := MascaraFone(qAux.FieldByName('CLI_CELULAR').AsString);
        end
        else if i =2 then
        begin
          Telefones[0].numero := MascaraFone(qAux.FieldByName('CLI_FONE').AsString);  //obrigatório
          if qAux.FieldByName('CLI_FAX').AsString <> '' then
            Telefones[1].numero := MascaraFone(qAux.FieldByName('CLI_FAX').AsString)
          else
            Telefones[1].numero := MascaraFone(qAux.FieldByName('CLI_CELULAR').AsString);
        end
        else if i=1 then
          Telefones[0].numero := MascaraFone(qAux.FieldByName('CLI_FONE').AsString);  //obrigatório
        cliente.telefones := Telefones;

       // contato
       if qAux.FieldByName('CLI_CONTATO').AsString <> '' then
       begin
          SetLength(Contatos,1);
          Contatos[0] := TContatosClass.Create;
          Contatos[0].cargo := qAux.FieldByName('CLI_FUNCONT').AsString;
          Contatos[0].nome  := qAux.FieldByName('CLI_CONTATO').AsString;
          SetLength(email,1);
          email[0] := TEmailsClass.Create;
          email[0].email := qAux.FieldByName('CLI_EMAIL_ALTERNATIVO').AsString;
          Contatos[0].emails := email;
          cliente.contatos := Contatos;
       end;

        cliente.excluido :=  qAux.FieldByName('CLI_INATIVO').AsString = 'I';


        jobject := TJson.ObjectToJsonObject(cliente, [joIgnoreEmptyStrings,joIgnoreEmptyArrays] );
        try
           RESTRequest1.Method :=  TRESTRequestMethod.rmPOST;
           RESTClient1.BaseURL := baseurl +'/clientes'; ///+'/'+IntToStr(qAux.FieldByName('MER_CLIENTE_ID').AsInteger);
           AdiocionarParametros(RESTRequest1);
           RESTRequest1.AddBody(jobject.ToJSON, ContentTypeFromString('application/json'));

           RESTRequest1.Execute;

           //Limite de requisições ultrapassado.
           verificaThrottling(RESTRequest1);
           if RESTResponse1.StatusCode = 201 then
           begin
             for q:=RESTResponse1.headers.Count-1 downto 0  do //'MeusPedidosID=4023081'
             begin
                if pos('MeusPedidosID',RESTResponse1.headers[q]) > 0 then
                begin
                  mercos_id := StrToInt(trim(copy(RESTResponse1.headers[q],15,15)))  ;
                  break;
                end;
             end;
             INC(J);
             GravaMensagem('Incluido com sucesso.',mercos_id) ;   //RESTResponse1.statustext

           end
           else
           begin
             try
               mensagem:='' ;
               Erro:= TJson.JsonToObject<TListaErros>(trim((RESTResponse1.Content)));
               CountItems := Length(erro.erros);
               for i := 0 to CountItems-1 do
                  mensagem := mensagem + erro.erros[i].campo+ '->'+ Erro.erros[i].mensagem;
               GravaMensagem(mensagem);
             // Erro.erros[0].mensagem;
             finally
                erro.Free;
             end;

           end;


        finally
          jobject.Free;
        end;

      finally
        Cliente.Free;
      end;
      qAux.Next;

    end;
  finally
    Result := J;
  end;


end;

function TfrmAtualizaMercos.IncluirProdutosCloud: integer;
var
  erro: TListaErros;
  Produto : TProdutos;
  jobject : TJSONObject;
  q,i,J : integer;
  mercos_id : integer;
  CountItems: integer;
  mensagem :string;
  prd_codigo : string;
  procedure GravaMensagem (const mensagem : string; id : integer = 0 );
  begin
    ExecSql( 'update PRD0000  set MER_MENSAGEM = ' + QuotedStr(copy(mensagem,1,400) ) +
      iif(id>0, ', mer_produto_id = '+IntToStr(id),'')+
    ' where prd_codigo ='+QuotedStr(prd_codigo));
  end;
begin
 J := 0;
  try

    OpenAux(' select  CAST ((SELECT  FIRST 1 IPI_ALIQ FROM IPI0000 i WHERE pr.ipi_codigo = i.IPI_CODIGO) AS NUMERIC(2,2)) as ipi, '+
            ' CAST((SELECT SUM(kas_saldo) FROM kardex_almox_saldo WHERE prd_codigo = pr.prd_codigo ) AS numeric(10,2)) Estoque, '+
            ' pr.* from PRD0000 pr '+
            ' JOIN PRD_TIPO tp ON (tp.PTI_CODIGO = pr.PTI_CODIGO AND tp.PTI_DISPONIVEL_VENDAS = ''S'')  '+
            ' WHERE MER_PRODUTO_ID IS NULL and PRD_STATUS = ''A''' + ConcatSe(' AND pr.',DBInicio.ExclusivoSql('PRODUTOS')) +
           // ' and prd_codigo = '+QuotedStr('05616')+ /// só para homologação
           /// ' and MER_MENSAGEM <> '+ QuotedStr('Incluido com sucesso.') +
            ' ORDER BY PRD_DESCRI ' );
     qAux.FIRST;
    if not qAux.IsEmpty then
    while not qAux.Eof do
    begin
      Produto := TProdutos.Create;
      try
        prd_codigo := qAux.FieldByName('prd_codigo').AsString ;
        if StrToIntDef(qAux.FieldByName('prd_refer').AsString,0) <> 0 then
          produto.id  := StrToIntDef(qAux.FieldByName('prd_refer').AsString,0) ;
        Produto.codigo := IntToStr( StrToIntDef(qAux.FieldByName('prd_refer').AsString,0) );
        Produto.nome   := Copy(qAux.FieldByName('prd_descri').AsString,1,100);
        produto.preco_tabela := qAux.FieldByName('PRD_PVENDA').AsFloat;
        produto.ipi := qAux.FieldByName('ipi').AsFloat;
        produto.tipo_ipi:= 'P';
        produto.moeda := '0';
        produto.unidade  := qAux.FieldByName('prd_und').AsString;
        Produto.saldo_estoque := qAux.FieldByName('Estoque').AsFloat;
        Produto.observacoes := qAux.FieldByName('PRD_COMPL').AsString;
        Produto.ativo := True;
        produto.codigo_ncm :=  qAux.FieldByName('IPI_CODIGO').AsString;
        Produto.peso_bruto :=   qAux.FieldByName('PRD_PESOKG').AsFloat;
        Produto.ultima_alteracao := now;
        produto.categoria_id := 0;
        produto.multiplo := 1;
        jobject := TJson.ObjectToJsonObject(produto, [joIgnoreEmptyStrings,joIgnoreEmptyArrays] );
        try
           RESTRequest1.Method :=  TRESTRequestMethod.rmPOST;
           RESTClient1.BaseURL := baseurl +'/produtos';
           AdiocionarParametros(RESTRequest1);

           RESTRequest1.AddBody(AnsiReplaceStr(jobject.ToJSON,'"categoria_id":0,',''), ContentTypeFromString('application/json'));

           RESTRequest1.Execute;
           //Limite de requisições ultrapassado.
           verificaThrottling(RESTRequest1);
           if RESTResponse1.StatusCode = 201 then
           begin
             INC(J);
             for q:=RESTResponse1.headers.Count-1 downto 0  do //'MeusPedidosID=4023081'
             begin
                if pos('MeusPedidosID',RESTResponse1.headers[q]) > 0 then
                begin
                  mercos_id := StrToInt(trim(copy(RESTResponse1.headers[q],15,15)))  ;
                  break;
                end;
             end;

             GravaMensagem('Incluido com sucesso.',mercos_id) ;   //RESTResponse1.statustext


           end
           else
           begin
             try

               Erro:= TJson.JsonToObject<TListaErros>(trim((RESTResponse1.Content)));
               CountItems := Length(erro.erros);
               for i := 0 to CountItems-1 do
                  mensagem := mensagem + erro.erros[i].campo+ '->'+ Erro.erros[i].mensagem;

               GravaMensagem(mensagem)   ;

             finally
                erro.Free;
             end;

           end;
        finally
          jobject.Free;
        end;


      finally
        Produto.Free;
      end;

      qAux.Next;
    end;
  finally
    Result := j;
  end;
end;

function TfrmAtualizaMercos.InsereClienteBanco (const cliente : TCliente) : boolean;
var codigo,sql, sCodigoCidade, sCgc,  sPais,email, sPessoa,cep, sOpe,fone, fone1, fone2 : String ;
 i : integer;
begin
  openAux3( 'select OPE_CODIGO_DENTRO, OPE_CODIGO_FORA from EMP0000 WHERE EMP_CODIGO = '+QuotedStr(DBInicio.empresa.EMP_CODIGO {emp_codigo}) );

  if (dbInicio.Empresa.UF <> cliente.estado) then
     sOpe :=  qAux3.Fields[1].AsString
  Else
     sOpe := qAux3.Fields[0].AsString;


  result := False;
  codigo := strzero( dbInicio.GetNextSequence('GEN_CLI0000_CODIGO'), 5 );
  fone := '';

  sCodigoCidade := BuscaUmDadoSqlasString ( 'SELECT CID_CODIGO FROM CID0000 WHERE CID_CIDADE = '+QuotedStr(UpperCase(cliente.cidade) ) );
  sPais:='N';

  if Length(cliente.cnpj)<14 then
     sPessoa:='F'
  Else
     sPessoa:='J';



  cep := RetiraTodaMascara(cliente.cep) ;
  for I := 0 to Length(cliente.Telefones)-1 do
  begin
    if i=0 then
      fone:= cliente.telefones[0].numero;
    if i=1 then
      fone1 := cliente.telefones[1].numero;
    if i=2 then
      fone2 := cliente.telefones[2].numero;
  end;
  if Length(cliente.emails)>0 then
    email := cliente.emails[0].email;

  sql:= 'insert into CLI0000 ( CLI_codigo, CLI_cgc, CLI_razao, CLI_FANTASIA, CLI_DTINICIO, CLI_ENDERE, CLI_CIDADE, CLI_UF,  CLI_PAIS, CLI_PESSOA, '+
         '                      CLI_CEP, CLI_FONE,CLI_FAX, CLI_CELULAR, CLI_INSC, CLI_BAIRRO, CLI_INATIVO, EMP_CODIGO, cli_email, cli_suframa,  CID_CODIGO, '+
         '                      CLI_CLASSE_CLI_FOR, CLI_PORTE, CLI_PROTESTAR, PAI_CODIGO, OPE_CODIGO,  CLI_TABPRECO, MER_CLIENTE_ID ) '+
         'values ( '+qStr( codigo )+', '+ //for_codigo,
         '         '+qStr( cliente.cnpj )+', '+ //for_cgc,
         '         '+qStr( Copy( UpperCase(cliente.razao_social),1,55) )+', '+
         '         '+QuotedStr(copy(cliente.nome_fantasia,1,55)) +','+
         '         '+DateToSql( date )+', '+ //FOR_DTCADASTRO,
         '         '+qStr( Copy( UpperCase(cliente.rua+','+cliente.numero),1,50))+', '+ //FOR_ENDERE,
         '         '+qStr( Copy( UpperCase(cliente.cidade),1,30))+', '+ //FOR_CIDADE,
         '         '+qStr(UpperCase(cliente.estado))+', '+ //FOR_UF,
         '         '+qStr(sPais)+', '+
         '         '+qStr(sPessoa)+', '+
         '         '+qStr(cep)+', '+ //FOR_CEP,
         '         '+qStr( Copy(ExtrairNumeros(fone),1,11))+', '+ //FOR_FONE,
         '         '+qStr( Copy(ExtrairNumeros(fone1),1,11))+', '+ //CLI_FAX,
         '         '+qStr( Copy(ExtrairNumeros(fone2),1,11))+', '+ //CLI_CELULAR,
         '         '+qStr(RetiraTodaMascara(cliente.inscricao_estadual))+', '+ //cli_INSC,
         '         '+qStr( Copy(UpperCase(cliente.bairro),1,25))+', '+ //FOR_BAIRRO,
         '         '+qStr('A')+', '+ //FOR_ATIVO,
         '         '+qStr(DBInicio.empresa.EMP_CODIGO {emp_codigo})+', '+ //EMP_CODIGO,
         '         '+qStr( Copy( email,1,150))+', '+ //cli_email,
         '         '+qStr(UpperCase(cliente.suframa))+', '+ //cli_suframa,
         '         '+ iif(sCodigoCidade='','null',qStr(sCodigoCidade) )+', '+ //CID_CODIGO, '+
         '         '+qStr( 'C' )+', '+ // CLI_CLASSE_CLI_FOR,
         '         '+qStr( 'P' )+', '+ // CLI_PORTE,
         '         '+qStr( 'N' )+', '+ //CLI_PROTESTAR,
         '         '+qStr( '1058' )+', '+ //PAI_CODIGO,
         '         '+qStr( sOpe )+', '+ // OPE_CODIGO,
         '         '+qStr( 'T1' )+   ','+
         '         ' + IntToStr(cliente.id) +'   )';  // CLI_TABPRECO
   try
    ExecSql (sql);
     result:= true;
   except
     result := False;
   end;


end;



function TfrmAtualizaMercos.ObterClientes: integer;
var cliente_id, linha : string;
    cliente : TCliente;
    email: TArray<TEmailsClass>;
    Telefones: TArray<TTelefonesClass>;
    Contatos: TArray<TContatosClass>;
    jobject : TJSONObject;
    i,J,q : integer;
  ja: TJSONArray;
  jv: TJSONValue;

begin
   RESTRequest1.Method :=  TRESTRequestMethod.rmGET;
   if UltimaVerificacao> 0 then
     RESTClient1.BaseURL := baseurl +'/clientes/?alterado_apos='+FormatDateTime('yyyy-mm-dd',UltimaVerificacao)
   else
      RESTClient1.BaseURL := baseurl +'/clientes/';
   AdiocionarParametros(RESTRequest1);
   j := 0;
   //rdsaCliente.Active := True;
  // MtCliente.Active:= true;
   RESTRequest1.Execute;
  // result := MtCliente.RecordCount;
   //Limite de requisições ultrapassado.
    verificaThrottling(RESTRequest1);
   if RESTResponse1.StatusCode = 200 then
   begin
     OpenAux('select cli_codigo,cli_cgc from cli0000 WHERE MER_CLIENTE_ID IS NULL '+ ConcatSe(' AND ',DBInicio.ExclusivoSql('CLIENTES')) +' ORDER BY CLI_FANTASIA ' );
     qAux.FetchAll;
     ja := TJsonObject.ParseJSONValue(TEncoding.UTF8.GetBytes(RESTResponse1.Content),0) as  TJSONArray;

        for q := 0 to ja.count-1 do
        begin
          jv:= ja.get(q);
          //jv := TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(trim(Memo1.Text)), 0);
          linha := trim(jv.ToString);
          linha := StringReplace(linha, '\', '/', [rfReplaceAll, rfIgnoreCase]);
           cliente:= TJson.JsonToObject<tcliente>(linha);
          try

            if (cliente.excluido) then
               Continue;

             if cliente.cnpj <> '' then
             begin
                if qAux.Locate('cli_cgc', cliente.cnpj,[] ) then // atualizar o MER_CLIENTE_ID
                begin
                  ExecSql( 'update cli0000  set  MER_MENSAGEM = null , MER_CLIENTE_ID = ' +IntToStr( cliente.id) + ' where cli_codigo ='+QuotedStr(qAux.FieldByName('cli_codigo').AsString));
                  inc(j)
                end
                else // talvez seja novo cliente , por enquanto não definido
                begin
                  cliente_id := BuscaUmDadoSqlAsString('select cli_codigo from cli0000 where MER_CLIENTE_ID = ' +IntToStr(cliente.id) ) ;
                  /// tenat pelo cnpj
                  if cliente_id = '' then
                   cliente_id := BuscaUmDadoSqlAsString('select cli_codigo from cli0000 where CLI_CGC = ' + QuotedStr( cliente.cnpj )+ConcatSe(' AND ',DBInicio.ExclusivoSql('CLIENTES'))   ) ;
                  if cliente_id <> '' then
                  begin
                    ExecSql( 'update cli0000  set  MER_MENSAGEM = null , MER_CLIENTE_ID = ' + IntToStr(cliente.id) + ' where cli_codigo ='+QuotedStr(qAux.FieldByName('cli_codigo').AsString));
                    inc(j)

                  end
                  else
                  begin
                     InsereClienteBanco(cliente);


                  end;

                end;


             end;



          finally
            cliente.Free;
            jv.Free;
          end;

        end;

   end;
   result := j;

end;


function TfrmAtualizaMercos.ObterPedidosAPI(out limiteUltrapassado: Boolean): integer;
var
  alterado, linha : string;
  Listapedidos : TListaPedido;
  Pedido : TPedido;
  i,q  : integer;
  ja: TJSONArray;
  jv: TJSONValue;
  strpedidos: string;
  limite: integer;
begin
   Result := 0 ;
   //alterado := FormatDateTime('yyyy-mm-dd hh:nn:ss',now()); //2018-08-05 08:40:51
   alterado :=  FormatDateTime('yyyy-mm-dd hh:nn:ss',UltimaVerificacao);
   RESTRequest1.Method :=  TRESTRequestMethod.rmGET;
   //status 2 pedido ; status 1 orçamento
   RESTClient1.BaseURL := baseurl +'/pedidos/?alterado_apos='+alterado+'&status=2';
   AdiocionarParametros(RESTRequest1);
//   rdsaPedido.Active := True;
//   mtPedido.Active:= true;
   RESTRequest1.Execute;
   //Limite de requisições ultrapassado.
   verificaThrottling(RESTRequest1);
   if RESTResponse1.StatusCode = 200 then
   begin
     // lista pedidos
     for I := 0 to RESTResponse1.headers.Count-1 do
     begin
      if pos('MEUSPEDIDOS_LIMITOU_REGISTROS',RESTResponse1.headers[i])>0  then
         limite:= StrToIntDef(copy ( RESTResponse1.headers[i],pos('=',RESTResponse1.headers[i]) +1) ,0);
      if pos('MEUSPEDIDOS_QTDE_TOTAL_REGISTROS',RESTResponse1.headers[i])>0 then
         q:= StrToIntDef(copy ( RESTResponse1.headers[i],pos('=',RESTResponse1.headers[i]) +1) ,0);
      limiteUltrapassado :=  limite = 1;
     end;
//     strpedidos := RESTResponse1.Content;
//      StringReplace(strpedidos,' ',EmptyStr,[rfReplaceAll])  ;
     ja := TJsonObject.ParseJSONValue(TEncoding.UTF8.GetBytes(RESTResponse1.Content),0) as  TJSONArray;
    // ja := TJsonObject.ParseJSONValue(RESTResponse1.Content) as  TJSONArray;
     try
       for I := 0 to q-1 do
       begin
        jv:= ja.get(i);
        if jv = nil  then
          continue;
        linha := trim(jv.ToString);
        linha := StringReplace(linha, '\', '/', [rfReplaceAll, rfIgnoreCase]);
        Pedido:= TJson.JsonToObject<tpedido>(linha); //
        try
          //Pedido := Pedido.FromJsonString(jv.ToJSON);
          GravaPedido(Pedido) ;

        finally
          if Assigned(Pedido) then
            Pedido.Free;
//           if assigned(jv) then
//             jv.free;
        end;

       end;

     finally
       if Assigned(ja) then
         ja.Free;

    //   pedidoJson.Free
     end;

   end;

   result:= q;
end;

function TfrmAtualizaMercos.ObterProdutos: integer;
var produtos: TProdutos;
   alterado :string;
   j: integer;
  ja: TJSONArray;
  jv: TJSONValue;
begin
  j := 0 ;
  RESTRequest1.Method :=  TRESTRequestMethod.rmGET;
  if UltimaVerificacao > 0  then
    RESTClient1.BaseURL := baseurl +'/produtos/?alterado_apos='+FormatDateTime('yyyy-mm-dd',UltimaVerificacao)
  else
    RESTClient1.BaseURL := baseurl +'/produtos/';
  mtProdutos.close;
  rdsaProdutos.Response := RESTResponse1;
  AdiocionarParametros(RESTRequest1);
  rdsaProdutos.Active := True;
  MtProdutos.Active:= true;
  RESTRequest1.Execute;
   //Limite de requisições ultrapassado.
  verificaThrottling(RESTRequest1);
  if RESTResponse1.StatusCode = 200 then
  begin
    result := mtProdutos.RecordCount;
    OpenAux('SELECT prd_refer, prd_codigo, '+
            ' CASE   WHEN prd_refer SIMILAR TO ''[0-9]+'' THEN cast(prd_refer as integer) '+
            '      ELSE 0  END refer_int, PRD_PVENDA2, PRD_PVENDA3, PRD_PVENDA4, PRD_PVENDA5, PRD_PVENDA6 '+
            ' FROM PRD0000 pr ' +
            ' JOIN PRD_TIPO tp ON (tp.PTI_CODIGO = pr.PTI_CODIGO AND tp.PTI_DISPONIVEL_VENDAS = ''S'') '+
            ' WHERE MER_PRODUTO_ID IS NULL and PRD_STATUS = ''A''' + ConcatSe(' AND pr.',DBInicio.ExclusivoSql('PRODUTOS')));
    if not qAux.IsEmpty then
    begin
      mtProdutos.First;
      while not mtProdutos.Eof do
      begin

        if (mtProdutoscodigo.AsString = '') OR (UpperCase(mtProdutosexcluido.AsString) = 'TRUE') then
        begin
         mtProdutos.next;
         Continue;
        end;
        if qAux.Locate('prd_refer', strzero(mtProdutoscodigo.AsString, 6) ,[] ) then // atualizar o MER_produtos
        begin
          ExecSql( 'update PRD0000  set  MER_MENSAGEM = null , MER_PRODUTO_ID = ' + mtProdutosid.AsString + ' where prd_codigo ='+QuotedStr(qAux.FieldByName('prd_codigo').AsString));
          inc(j)

        end
        else if qAux.Locate('refer_int', mtProdutoscodigo.AsInteger ,[] ) then  //retirando os zeros da referencia do produto
        begin
          ExecSql( 'update PRD0000  set  MER_MENSAGEM = null , MER_PRODUTO_ID = ' + mtProdutosid.AsString + ' where prd_codigo ='+QuotedStr(qAux.FieldByName('prd_codigo').AsString));
          inc(j)
        end;
//        //atualizar lista de preço
        if (mtProdutosid.AsString <> '') AND chkListaPreco.Checked  then
          TabelasPrecos(StrToInt(mtProdutosid.AsString), [qAux.FieldByName('PRD_PVENDA2').AsFloat,
                                                                   qAux.FieldByName('PRD_PVENDA3').AsFloat,
                                                                   qAux.FieldByName('PRD_PVENDA4').AsFloat,
                                                                  qAux.FieldByName('PRD_PVENDA5').AsFloat,
                                                                   qAux.FieldByName('PRD_PVENDA6').AsFloat]  );
         //novo produto , criado pelo site
//        else
//        begin
//         // sem especificação ainda
//
////        end;


       mtProdutos.next;
      end;
    end;
  end;
  result := j;
end;

function TfrmAtualizaMercos.ObterVendedor(const id: integer; out nome : string): string;
var vendedor : TVendedor;
rep_codigo : string;
numero : integer;
begin
  OpenAux2(' SELECT REP_CODIGO,rep_nome FROM REP0000 WHERE MER_VENDEDOR_ID = '+IntToStr(id));
  if not qAux2.IsEmpty then
  begin
    rep_codigo := qAux2.FieldByName('rep_codigo').AsString;
    nome := qAux2.FieldByName('rep_nome').AsString;
  end;
  if rep_codigo = '' then
  begin
    RESTRequest2.Method :=  TRESTRequestMethod.rmGet;
    RESTClient2.BaseURL := baseurl +'/usuarios/'+IntToStr(id);
    AdiocionarParametros(RESTRequest2);
    RESTRequest2.Execute;
     //Limite de requisições ultrapassado.
     verificaThrottling(RESTRequest2);
    if RESTResponse2.StatusCode = 200 then
    begin
      vendedor := TJson.JsonToObject<TVendedor>(trim(RESTResponse2.Content));
      OpenAux2(' SELECT REP_CODIGO FROM REP0000 where rep_email = '+ QuotedStr(vendedor.email) );
      if qAux2.recordcount = 1 then
      begin
        nome := vendedor.nome;
        rep_codigo := qAux2.FieldByName('rep_codigo').AsString;
        ExecSql('update REP0000 set MER_VENDEDOR_ID = '+IntToStr(id) +
                ' where rep_codigo = '+QuotedStr(qAux2.FieldByName('REP_CODIGO').AsString));


      end
      else
      begin
        OpenAux('Select max(rep_Codigo) numero from REP0000');
        numero := qAux.FieldByName('numero').AsInteger +1 ;
        ExecSql('insert into REP0000 (rep_codigo, rep_email, rep_nome,MER_VENDEDOR_ID) '+
                ' values ('+QuotedStr( strzero(numero,3))+','+QuotedStr(vendedor.email)+','+QuotedStr(vendedor.nome)+','+IntToStr(vendedor.id)+ ')');
        nome := vendedor.nome;
        rep_codigo := strzero(numero,3);
      end;

    end;
  end;
  Result := rep_codigo;
end;

procedure TfrmAtualizaMercos.TabelasPrecos(const produto: integer;  const preco: array of double);

var vinculoTabela: TProdutoTabPrc;
    i,j : integer;
    jobject : TJSONObject;
begin
    if TabelasLista.Count = 0  then
      AtualizaTabelasPrecos;

    for i:=0 to TabelasLista.Count-1 do
    begin
      vinculoTabela:= TProdutoTabPrc.Create;
      try
        if preco[i]=0 then
          Continue;
        vinculoTabela.produto_id :=  produto;
        vinculoTabela.tabela_id  := StrToFloat( TabelasLista[i]);
        vinculoTabela.preco :=  preco[i];
        jobject := TJson.ObjectToJsonObject(vinculoTabela, [joIgnoreEmptyStrings,joIgnoreEmptyArrays] );
        try
           RESTRequest2.Method :=  TRESTRequestMethod.rmPOST;
           RESTClient2.BaseURL := baseurl +'/produtos_tabela_preco';
           AdiocionarParametros(RESTRequest2);
           RESTRequest2.AddBody(jobject.ToJSON, ContentTypeFromString('application/json'));

           RESTRequest2.Execute;
           //Limite de requisições ultrapassado.
           verificaThrottling(RESTRequest2);
           if RESTResponse2.StatusCode = 200 then   //RESTResponse1.statustext
             INC(J)
           else  if RESTResponse2.StatusCode = 201 then
           begin
             RESTRequest2.Method :=  TRESTRequestMethod.rmGET;
             RESTRequest2.Execute;
             if RESTResponse2.StatusCode = 200 then   //RESTResponse1.statustext
                INC(J)
           end ;

        finally
          jobject.Free;
        end;
      finally
        vinculoTabela.Free;
      end;

    end;
end;

function TfrmAtualizaMercos.verificaThrottling(const RESTRequest1: TRESTRequest): boolean;
 var thro: TThrottling;

begin
  if RESTRequest1.Response.StatusCode = 429 then
  begin
   thro := TJson.JsonToObject<TThrottling>(trim(RESTRequest1.Response.Content));
   Sleep(thro.tempo_ate_permitir_novamente * 1000);
   Application.ProcessMessages;
   RESTRequest1.Execute;
  end;
end;

end.
