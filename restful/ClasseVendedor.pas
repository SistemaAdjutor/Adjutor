unit ClasseVendedor;
{*******************************************************************************
    Generated By   : JsonToDelphiClass - 0.65 (http://jsontodelphi.com)
    Projeto        : Mercos
    Gerado         :2019-11-06 11:00:00
	Classe         : Vendedor
    Criado por     : Jairo Monassa
    
*******************************************************************************}

interface

uses Generics.Collections, Rest.Json;

type

TVendedor = class
private
  FAdministrador: Boolean;
  FEmail: String;
  FExcluido: Boolean;
  FId: integer;
  FNome: String;
  FTelefone: String;
  FUltima_alteracao: TDateTime;
public
  property administrador: Boolean read FAdministrador write FAdministrador;
  property email: String read FEmail write FEmail;
  property excluido: Boolean read FExcluido write FExcluido;
  property id: integer read FId write FId;
  property nome: String read FNome write FNome;
  property telefone: String read FTelefone write FTelefone;
  property ultima_alteracao: TDateTime read FUltima_alteracao write FUltima_alteracao;
  function ToJsonString: string;
  class function FromJsonString(AJsonString: string): TVendedor;
end;

TListaVendedor = class
private
  FItems: TArray<TVendedor>;
public
  property Items: TArray<TVendedor> read FItems write FItems;
  destructor Destroy; override;
  function ToJsonString: string;
  class function FromJsonString(AJsonString: string): TListaVendedor;
end;

implementation

{TVendedor}


function TVendedor.ToJsonString: string;
begin
  result := TJson.ObjectToJsonString(self);
end;

class function TVendedor.FromJsonString(AJsonString: string): TVendedor;
begin
  result := TJson.JsonToObject<TVendedor>(AJsonString)
end;

{TListaVendedor}

destructor TListaVendedor.Destroy;
var
  LItemsItem: TVendedor;
begin

 for LItemsItem in FItems do
   LItemsItem.Free;

  inherited;
end;

function TListaVendedor.ToJsonString: string;
begin
  result := TJson.ObjectToJsonString(self);
end;

class function TListaVendedor.FromJsonString(AJsonString: string): TListaVendedor;
begin
  result := TJson.JsonToObject<TListaVendedor>(AJsonString)
end;

end.