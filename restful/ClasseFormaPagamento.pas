unit ClasseFormaPagamento;

{*******************************************************************************
    Generated By   : JsonToDelphiClass - 0.65 (http://jsontodelphi.com)
    Projeto        : Mercos
    Gerado         : 2019-07-10 16:41:40
	Classe         : Transportador https://sandbox.mercos.com/api/v1/transportadoras
    Criado por     : Jairo Monassa
    
*******************************************************************************}

interface

uses Generics.Collections, Rest.Json;

type

TFormaPagamento = class
private
  FExcluido: Boolean;
  FNome: String;
public
  property excluido: Boolean read FExcluido write FExcluido;
  property nome: String read FNome write FNome;
  function ToJsonString: string;
  class function FromJsonString(AJsonString: string): TFormaPagamento;
end;

implementation

{TFormaPagamento}


function TFormaPagamento.ToJsonString: string;
begin
  result := TJson.ObjectToJsonString(self);
end;

class function TRootClass.FromJsonString(AJsonString: string): TFormaPagamento;
begin
  result := TJson.JsonToObject<TFormaPagamento>(AJsonString)
end;

end.