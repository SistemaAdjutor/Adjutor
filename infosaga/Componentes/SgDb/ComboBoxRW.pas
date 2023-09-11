// Adriano 2016

unit ComboBoxRW;
{$D-}

interface

uses
  SysUtils, Classes, Controls, StdCtrls, SqlExpr, Messages , Dialogs, SgDbSeachComboUnit;

type
  TComboBoxRw = class(TSgDbSearchCombo)

  private
     vlQry: tSqlQuery ;
     fSemFuncaoStrings: tStrings;
     fSemFuncaoBooleano: Boolean;
     fSemFuncaoString: String;
     fSemFuncaoInteger: Integer;
     fSemFuncaoStyle: TComboBoxStyle;
     procedure SetCamposCarregar(const Value: String);
     function GetCampoCarregar: String;
     function GetTabela: String;
     procedure SetTabela(const Value: String);
     function GetCampoRetorno: String;
     procedure SetCampoRetorno(const Value: String);
     function GetCondicao: String;
     procedure SetCondicao(const Value: String);
     function GetAgrupar: String;
     procedure SetAgrupar(const Value: String);
     function GetOrdenar: String;
     procedure SetOrdenar(const Value: String);
     function GetCompartilhar: String;
     procedure SetCompartilhar(const Value: String);
     function GetIdRetorno: String;
     procedure SetIdRetorno(const Value: String);
     function GetLocalizado: Boolean;
     function GetConexaoBanco: TSQLConnection;
    procedure SetConexaoBanco(const Value: TSQLConnection);

  protected
      procedure Notification(AComponent: TComponent; Operation: TOperation); override;
  public
    constructor Create(AOwner: TComponent); override;
    Destructor Destroy  ; override ;
  published
    property Tabela: String read GetTabela write SetTabela;
    property CamposCarregar: String  read GetCampoCarregar  write SetCamposCarregar;
    property CamposRetornar: String  read GetCampoRetorno  write SetCampoRetorno;
    property Condicao      : String  read GetCondicao  write SetCondicao;
    property CamposAgrupar : String  read GetAgrupar write SetAgrupar;
    property CamposOrdernar: String  read GetOrdenar write SetOrdenar;
    property CodigoLista   : String  read GetIdRetorno write SetIdRetorno;
    property ConexaoBanco  : TSQLConnection read GetConexaoBanco write SetConexaoBanco;
    property Compartilhar  : String  read GetCompartilhar write SetCompartilhar;
    property Localizado    : Boolean read GetLocalizado write fSemFuncaoBooleano;
    property TextoLocalizar: String  read GetIdRetorno write SetIdRetorno;

    // sem função - mantido apenas para compatibilidade

    property ItensRetorno  : TStrings read fSemFuncaoStrings Write fSemFuncaoStrings;
    property CodigoEmpresa : Integer read fSemFuncaoInteger write fSemFuncaoInteger;
    property ResetaCampos  : Boolean read fSemFuncaoBooleano write fSemFuncaoBooleano;
    property MultiEmpresa  : Boolean read fSemFuncaoBooleano write fSemFuncaoBooleano;
    property Localizar     : Boolean read fSemFuncaoBooleano write fSemFuncaoBooleano;
    property CarregarCombo : Boolean  read fSemFuncaoBooleano write fSemFuncaoBooleano;
    property itemindex : Integer read fSemFuncaoInteger write fSemFuncaoInteger;
    property style: TComboBoxStyle read fSemFuncaoStyle write fSemFuncaoStyle;
    property itens: TStrings read fSemFuncaoStrings Write fSemFuncaoStrings;
  end;

procedure Register;

implementation

procedure Register;
begin
   RegisterComponents('Infosaga', [TComboBoxRw]);
end;

constructor TComboBoxRw.Create(AOwner: TComponent);
begin
  inherited Create( AOwner ) ;

  self.Width:=self.Width-self.Button.Width;

  vlQry:=tSqlQuery.Create(Self);
  vlQry.Name:='InternalSource';

  self.LookupSource:=vlQry;

  fSemFuncaoStrings:=tStringList.Create;
  fSemFuncaoString:='';
  fSemFuncaoBooleano:=False;
  fSemFuncaoInteger:=0;

  self.ShowButton:=True;
  //self.ShowButton
end;

procedure TComboBoxRw.Notification(AComponent: TComponent;
  Operation: TOperation);
begin
  inherited Notification(AComponent, Operation);
  if (Operation = opRemove) then
  begin
    if (AComponent = vlQry) Then
      vlQry := nil;
  end;
end;

destructor TComboBoxRw.Destroy;
begin
     if assigned(vlQry) then
        vlqry.Free;
     inherited;
end;

function TComboBoxRw.GetAgrupar: String;
begin
     Result := Self.LookupGroup;
end;

function TComboBoxRw.GetCampoCarregar: String;
begin
     Result := self.LookupSelect;
end;

function TComboBoxRw.GetCampoRetorno: String;
begin
     Result := self.LookupKeyField;
end;


function TComboBoxRw.GetCompartilhar: String;
begin
     Result := self.LookupTableShare;
end;

function TComboBoxRw.GetCondicao: String;
begin
     Result := Self.FiltroTabela;
end;

function TComboBoxRw.GetConexaoBanco: TSQLConnection;
begin
     Result := vlQry.SQLConnection;
end;

function TComboBoxRw.GetIdRetorno: String;
begin
     result := self.idRetorno;
end;

function TComboBoxRw.GetLocalizado: Boolean;
begin
     Result := ( self.idRetorno<>'');
end;

function TComboBoxRw.GetOrdenar: String;
begin
     Result := Self.LookupOrderBy;
end;

function TComboBoxRw.GetTabela: String;
begin
     Result := self.LookupTable;
end;

procedure TComboBoxRw.SetAgrupar(const Value: String);
begin
     if not Value.IsEmpty then
        Self.LookupGroup:=Value;
end;

procedure TComboBoxRw.SetCampoRetorno(const Value: String);
begin
     if not Value.IsEmpty then
        Self.LookupKeyField:=Value;
end;

procedure TComboBoxRw.SetCamposCarregar(const Value: String);
begin
     if not Value.IsEmpty then
        Self.LookupSelect := Value;
end;

procedure TComboBoxRw.SetCompartilhar(const Value: String);
begin
     if not Value.IsEmpty then
        self.LookupTableShare:=Value;
end;

procedure TComboBoxRw.SetCondicao(const Value: String);
begin
     if not Value.IsEmpty then
        Self.FiltroTabela:=Value;
end;

procedure TComboBoxRw.SetConexaoBanco(const Value: TSQLConnection);
begin
     vlQry.SQLConnection:=Value;
end;

procedure TComboBoxRw.SetIdRetorno(const Value: String);
begin
     if not Value.IsEmpty then
        self.idRetorno:=Value;
end;

procedure TComboBoxRw.SetOrdenar(const Value: String);
begin
     if not Value.IsEmpty then
        self.LookupOrderBy:=Value;
end;

procedure TComboBoxRw.SetTabela(const Value: String);
begin
     Self.LookupTable:=Value;
end;

end.
