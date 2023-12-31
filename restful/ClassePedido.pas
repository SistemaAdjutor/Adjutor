unit ClassePedido;

{*******************************************************************************
    Generated By   : JsonToDelphiClass - 0.65 (http://jsontodelphi.com)
    Projeto        : Mercos
    Gerado         : 2019-07-10 16:41:40
	Classe         : Pedido https://sandbox.mercos.com/api/v1/pedidos?alterado_apos=
    Criado por     : Jairo Monassa
    
*******************************************************************************}

interface

uses Generics.Collections, Rest.Json;

type

TEndereco_entregaClass = class
private
  FBairro: String;
  FCep: String;
  FCidade: String;
  FComplemento: String;
  FEndereco: String;
  FEstado: String;
  FId: integer;
  FNumero: String;
public
  property bairro: String read FBairro write FBairro;
  property cep: String read FCep write FCep;
  property cidade: String read FCidade write FCidade;
  property complemento: String read FComplemento write FComplemento;
  property endereco: String read FEndereco write FEndereco;
  property estado: String read FEstado write FEstado;
  property id: Integer read FId write FId;
  property numero: String read FNumero write FNumero;
  function ToJsonString: string;
  class function FromJsonString(AJsonString: string): TEndereco_entregaClass;
end;

TExtrasClass = class
private
  FCampo_extra_id: Integer;
  FNome: String;
  FValor: TDate;
public
  property campo_extra_id: Integer read FCampo_extra_id write FCampo_extra_id;
  property nome: String read FNome write FNome;
  property valor: TDate read FValor write FValor;
  function ToJsonString: string;
  class function FromJsonString(AJsonString: string): TExtrasClass;
end;

TQuantidade_gradesClass = class
private
  FQuantidade: Extended;
  FCor: String;
  FTamanho: String;
public
  property Quantidade: Extended read FQuantidade write FQuantidade;
  property cor: String read FCor write FCor;
  property tamanho: String read FTamanho write FTamanho;
  function ToJsonString: string;
  class function FromJsonString(AJsonString: string): TQuantidade_gradesClass;
end;
//item do pedido 
TItemsClass = class
private
  FCotacao_moeda: Extended;
  FDescontos: TArray<Extended>;
  FDescontos_de_politicas: TArray<Extended>;
  FDescontos_de_promocoes: TArray<Extended>;
  FDescontos_do_vendedor: TArray<Extended>;
  FExcluido: Boolean;
  FId: Integer;
  FIpi: Extended;
  FObservacoes: String;
  FPreco_bruto: Extended;
  FPreco_liquido: Extended;
  FProduto_id: Integer;
  FProduto_nome: String;
  Fproduto_codigo: String;
  FQuantidade: Extended;
  FQuantidade_grades: TArray<TQuantidade_gradesClass>;
  FSt: Extended;
  FSubtotal: Extended;
  FTabela_preco_id: integer;
  FTipo_ipi: String;
public
  property cotacao_moeda: Extended read FCotacao_moeda write FCotacao_moeda;
  property descontos: TArray<Extended> read FDescontos write FDescontos;
  property descontos_de_politicas: TArray<Extended> read FDescontos_de_politicas write FDescontos_de_politicas;
  property descontos_de_promocoes: TArray<Extended> read FDescontos_de_promocoes write FDescontos_de_promocoes;
  property descontos_do_vendedor: TArray<Extended> read FDescontos_do_vendedor write FDescontos_do_vendedor;
  property excluido: Boolean read FExcluido write FExcluido;
  property id: integer read FId write FId;
  property ipi: Extended read FIpi write FIpi;
  property observacoes: String read FObservacoes write FObservacoes;
  property preco_bruto: Extended read FPreco_bruto write FPreco_bruto;
  property preco_liquido: Extended read FPreco_liquido write FPreco_liquido;
  property produto_id: integer read FProduto_id write FProduto_id;
  property produto_nome: String read FProduto_nome write FProduto_nome;
  property produto_codigo: string read Fproduto_codigo write Fproduto_codigo;
  property quantidade: Extended read FQuantidade write FQuantidade;
  property quantidade_grades: TArray<TQuantidade_gradesClass> read FQuantidade_grades write FQuantidade_grades;
  property st: Extended read FSt write FSt;
  property subtotal: Extended read FSubtotal write FSubtotal;
  property tabela_preco_id: Integer read FTabela_preco_id write FTabela_preco_id;
  property tipo_ipi: String read FTipo_ipi write FTipo_ipi;
  destructor Destroy; override;
  function ToJsonString: string;
  class function FromJsonString(AJsonString: string): TItemsClass;
end;

TPedido = class
private
  FCliente_id: Integer;
  FCondicao_pagamento: String;
  FCondicao_pagamento_id: Integer;
  FCriador_id: Integer;
  FData_emissao: TDateTime;
  FEndereco_entrega: TEndereco_entregaClass;
  FExtras: TArray<TExtrasClass>;
  FForma_pagamento_id: Integer;
  FId: integer;
  FItems: TArray<TItemsClass>;
  FNome_contato: String;
  FNumero: Integer;
  FObservacoes: String;
  FStatus: String;
  FStatus_faturamento: String;
  FTipo_pedido_id: Integer;
  FTotal: Extended;
  FTransportadora_id: Integer;
  FTransportadora_nome: String;
  FUltima_alteracao: TDateTime;
  FCliente_bairro: String;
  FCliente_cep: String;
  FCliente_cidade: String;
  FCliente_cnpj: String;
  FCliente_complemento: String;
  FCliente_estado: String;
  FCliente_inscricao_estadual: String;
  FCliente_numero: String;
  FCliente_razao_social: String;
  FCliente_rua: String;
  FCliente_suframa: String;
public
  property cliente_id: integer read FCliente_id write FCliente_id;
  property status: String read FStatus write FStatus;
  property condicao_pagamento: String read FCondicao_pagamento write FCondicao_pagamento;
  property forma_pagamento_id: integer read FForma_pagamento_id write FForma_pagamento_id;
  property contato_nome: String read FNome_contato write FNome_contato;
  property cliente_bairro: String read FCliente_bairro write FCliente_bairro;
  property cliente_cep: String read FCliente_cep write FCliente_cep;
  property cliente_cidade: String read FCliente_cidade write FCliente_cidade;
  property cliente_cnpj: String read FCliente_cnpj write FCliente_cnpj;
  property cliente_complemento: String read FCliente_complemento write FCliente_complemento;
  property cliente_estado: String read FCliente_estado write FCliente_estado;
  property cliente_inscricao_estadual: String read FCliente_inscricao_estadual write FCliente_inscricao_estadual;
  property cliente_numero: String read FCliente_numero write FCliente_numero;
  property cliente_razao_social: String read FCliente_razao_social write FCliente_razao_social;
  property cliente_rua: String read FCliente_rua write FCliente_rua;
  property cliente_suframa: String read FCliente_suframa write FCliente_suframa;  
  
  property condicao_pagamento_id: integer read FCondicao_pagamento_id write FCondicao_pagamento_id;
  property criador_id: integer read FCriador_id write FCriador_id;
  property data_emissao: TDateTime read FData_emissao write FData_emissao;
  property endereco_entrega: TEndereco_entregaClass read FEndereco_entrega write FEndereco_entrega;
  property extras: TArray<TExtrasClass> read FExtras write FExtras;
  
  property id: Integer read FId write FId;
  property items: TArray<TItemsClass> read FItems write FItems;
  
  property numero: integer read FNumero write FNumero;
  property observacoes: String read FObservacoes write FObservacoes;
  
  property status_faturamento: String read FStatus_faturamento write FStatus_faturamento;
  property tipo_pedido_id: integer read FTipo_pedido_id write FTipo_pedido_id;
  property total: Extended read FTotal write FTotal;
  property transportadora_id: Integer read FTransportadora_id write FTransportadora_id;
  property transportadora_nome: String read FTransportadora_nome write FTransportadora_nome;
  property ultima_alteracao: TDateTime read FUltima_alteracao write FUltima_alteracao;
  constructor Create;
  destructor Destroy; override;
  function ToJsonString: string;
  class function FromJsonString(AJsonString: string): TPedido;
end;

TListaPedido = class
private
  FItems: TArray<TPedido>;
public
  property Items: TArray<TPedido> read FItems write FItems;
  destructor Destroy; override;
  function ToJsonString: string;
  class function FromJsonString(AJsonString: string): TListaPedido;
end;

implementation

{TEndereco_entregaClass}


function TEndereco_entregaClass.ToJsonString: string;
begin
  result := TJson.ObjectToJsonString(self);
end;

class function TEndereco_entregaClass.FromJsonString(AJsonString: string): TEndereco_entregaClass;
begin
  result := TJson.JsonToObject<TEndereco_entregaClass>(AJsonString)
end;

{TExtrasClass}


function TExtrasClass.ToJsonString: string;
begin
  result := TJson.ObjectToJsonString(self);
end;

class function TExtrasClass.FromJsonString(AJsonString: string): TExtrasClass;
begin
  result := TJson.JsonToObject<TExtrasClass>(AJsonString)
end;

{TQuantidade_gradesClass}


function TQuantidade_gradesClass.ToJsonString: string;
begin
  result := TJson.ObjectToJsonString(self);
end;

class function TQuantidade_gradesClass.FromJsonString(AJsonString: string): TQuantidade_gradesClass;
begin
  result := TJson.JsonToObject<TQuantidade_gradesClass>(AJsonString)
end;

{TItemsClass}

destructor TItemsClass.Destroy;
var
  Lquantidade_gradesItem: TQuantidade_gradesClass;
begin

 for Lquantidade_gradesItem in FQuantidade_grades do
   Lquantidade_gradesItem.Free;

  inherited;
end;

function TItemsClass.ToJsonString: string;
begin
  result := TJson.ObjectToJsonString(self);
end;

class function TItemsClass.FromJsonString(AJsonString: string): TItemsClass;
begin
  result := TJson.JsonToObject<TItemsClass>(AJsonString)
end;

{TPedido}

constructor TPedido.Create;
begin
  inherited;
  FEndereco_entrega := TEndereco_entregaClass.Create();
end;

destructor TPedido.Destroy;
var
  LitemsItem: TItemsClass;
  LextrasItem: TExtrasClass;
begin

 for LitemsItem in FItems do
   LitemsItem.Free;
 for LextrasItem in FExtras do
   LextrasItem.Free;

  FEndereco_entrega.Free;
  inherited;
end;

function TPedido.ToJsonString: string;
begin
  result := TJson.ObjectToJsonString(self);
end;

class function TPedido.FromJsonString(AJsonString: string): TPedido;
begin
  result := TJson.JsonToObject<TPedido>(AJsonString)
end;

{TListaPedido}

destructor TListaPedido.Destroy;
var
  LItemsItem: TPedido;
begin

 for LItemsItem in FItems do
   LItemsItem.Free;

  inherited;
end;

function TListaPedido.ToJsonString: string;
begin
  result := TJson.ObjectToJsonString(self);
end;

class function TListaPedido.FromJsonString(AJsonString: string): TListaPedido;
begin
  result := TJson.JsonToObject<TListaPedido>(AJsonString)
end;

end.