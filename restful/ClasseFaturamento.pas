unit ClasseFaturamento;


{*******************************************************************************
    Generated By   : JsonToDelphiClass - 0.65 (http://jsontodelphi.com)
    Projeto        : Mercos
    Gerado         : 2019-10-11 11:27:40
	Classe         : Faturamento do pedido
    Criado por     : Jairo Monassa
    
*******************************************************************************}

interface

uses Generics.Collections, Rest.Json;

type

TFaturamento = class
private
  FData_faturamento: string;
  //Fnumero_documento: string;
  FInformacoes_adicionais: String;
  FNumero_nf: String;
  FPedido_id: Extended;
  FValor_faturado: Extended;
public
  property data_faturamento: string read FData_faturamento write FData_faturamento;
//  property numero_documento : string  read Fnumero_documento write Fnumero_documento;
  property informacoes_adicionais: String read FInformacoes_adicionais write FInformacoes_adicionais;
  property numero_nf: String read FNumero_nf write FNumero_nf;
  property pedido_id: Extended read FPedido_id write FPedido_id;
  property valor_faturado: Extended read FValor_faturado write FValor_faturado;
  function ToJsonString: string;
  class function FromJsonString(AJsonString: string): TFaturamento;
end;

implementation

{TFaturamento}


function TFaturamento.ToJsonString: string;
begin
  result := TJson.ObjectToJsonString(self);
end;

class function TFaturamento.FromJsonString(AJsonString: string): TFaturamento;
begin
  result := TJson.JsonToObject<TFaturamento>(AJsonString)
end;

end.