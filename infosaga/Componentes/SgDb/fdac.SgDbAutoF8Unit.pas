unit fdac.SgDbAutoF8Unit;

interface

uses Classes, StdCtrls, ExtCtrls,
     Controls, Messages, Windows,
     SysUtils;
function GetTextBefore(pTexto,pBusca:string):string;
function GetTextAfter(pTexto,pBusca:string):string;
Function iif ( condic: boolean ; restrue, resfalse:variant ): variant; // retorna restrue ou resfalse de acordo com a condição informada
Function InsereAfter(pDado,pSeparador:string):string; // insere pSeparador se pDaDO nao for vazio

type
    tCampoCrud = Class // \campo=id\caption=ID\tamanho=10\readonly=t\required=f ( case sensitive )
    private
      vFieldName:String;
      vCaption:string;
      vSize: integer; // em numero de caracteres
      vReadOnly:boolean;
      vRequired: boolean;
      vUnique: Boolean;
      vObj: Pointer;
      vTipo: string; // N,C,D
      vValor: string;
      vHidden: Boolean;

      vlDefCampo:string;
      function GetDefinicaoCampos: String;
    Public
      constructor create( pDefCampo:string ) ;
      Property OBJ: Pointer read vObj Write vObj;
    Published

      Property FieldName: string read vFieldName write vFieldName; // nome do campo db
      Property Caption: string read vCaption Write vCaption; // titulo do edit ou coluna
      Property Size: integer read vSize write vSize; // tamanho em bytes
      Property ReadOnly: boolean read vReadOnly write vReadOnly; // t/f
      Property Required: boolean READ vRequired write vRequired; // t/f
      Property Unique: boolean read vUnique write vunique;
      Property Tipo: string read vTipo write vTipo;
      Property Value: string read vValor write vValor;
      Property Hidden: boolean read vHidden write vHidden;
      //
      Property DefinicaoCampo: String Read GetDefinicaoCampos;

    End;

    tCampoCrudList = class(tList)
    private
    public
      Function Find( pFieldName: string ):tCampoCrud;
      Function FindCaption( pCaption: string ):tCampoCrud;
      Function FieldsSelect:String;
      Procedure Clear; override;
    end;

    TDBAutoCRUD = Class(tComponent)
    Private
      vlSqlSelect: tStrings;
      vlSqlTable: String;
      vlSqlCampoID: string;
      vlTitulo: string;
      vlGenerator: string;
      vlPodeIncluir: boolean;
      vlPodeEditar: boolean;
      vlPodeExcluir: boolean;
      vlCrudPronto: Boolean;
      vlSqlCampoIDR: String;
      Procedure SetSelect(Value:tStrings);
    Public
      constructor Create(AOwner: TComponent); override;
      destructor Destroy;override;
      Property Pronto: Boolean read vlCrudPronto Write vlCrudPronto;
    Published
      Property SqlSelect: tStrings Read vlSqlSelect Write SetSelect;
      Property SqlTable: String Read vlSqlTable  Write vlSqlTable;
      Property SqlCampoID: String Read vlSqlCampoID Write vlSqlCampoID;
      Property SqlCampoIDRetorno: String Read vlSqlCampoIDR Write vlSqlCampoIDR;
      Property SqlGenerator: string Read vlGenerator Write vlGenerator;
      Property Titulo: string Read vlTitulo write vlTitulo;
      Property PodeIncluir: boolean read vlPodeIncluir write vlPodeIncluir;
      Property PodeEditar: boolean read vlPodeEditar write vlPodeEditar;
      Property PodeExcluir: boolean read vlPodeExcluir write vlPodeExcluir;
    End;

    TDBAutoF8 = Class(tComponent)
    Private
      vlAutoCRUD: TDBAutoCRUD ;
      vlSqlSelect: tStrings;
      vlSqlTable: String;
      vlSqlOrder: String;
      vlSqlFiltro: tStrings;
      vlSqlIdRetorno: string;
      vlSqlId: string;
      vlTitulo: string;
      vlFiltroTabela: string ;
      fAutoF8Columns: String;
      fCampoUnicoPesquisa: Boolean;
      Procedure SetSelect(Value:tStrings);
      Procedure SetFiltro(Value:tStrings);

    Public
      constructor Create(AOwner: TComponent); override;
      destructor Destroy; override;
    Protected
    Published
      Property SqlSelect: tStrings Read vlSqlSelect Write SetSelect;
      Property SqlTable: String Read vlSqlTable  Write vlSqlTable;
      Property SqlOrder: String Read vlSqlOrder  Write vlSqlOrder;
      Property SqlFiltro: tStrings Read vlSqlFiltro Write SetFiltro;
      Property SqlIdRetorno: String Read vlSqlIdRetorno Write vlSqlIdRetorno;
      Property SqlId: String Read vlSqlId Write vlSqlId;
      Property Titulo: string Read vlTitulo write vlTitulo;
      Property AutoCrud: TDBAutoCRUD Read vlAutoCRUD Write vlAutoCRUD;
      Property AutoF8ColumnsTitulo: String Read fAutoF8Columns write fAutoF8Columns;
      Property CampoUnicoPesquisa: Boolean Read fCampoUnicoPesquisa write fCampoUnicoPesquisa;
      Property FiltroTabela: String Read vlFiltroTabela Write vlFiltroTabela;
    End;

Procedure Register;

implementation


Procedure Register;
begin
  RegisterComponents('Novi',[TDBAutoCRUD]);
  RegisterComponents('Novi',[TDBAutoF8]);
end;


{ tCampoCrud }

constructor tCampoCrud.create(pDefCampo: string);
var vaux: string;
////
    Function GetInfoCrud(ptag,pDef:string):string;
    var vtxt: string;
    begin
         vtxt:=trim(GetTextAfter(pDef,pTag+'='));
         if pos('\',vtxt)>0 then
            vtxt:=GetTextBefore(vtxt,'\');
         Result := vTxt;
    end;
////
begin
     {
     ex:
     \campo=id\caption=Código:\tamanho=10
     \campo=descricao\caption=Descrição da Marca/Modelo:\tamanho=40
      }
      if pDefCampo<>''  then
      begin
         vFieldName:=GetInfoCrud('\campo',pdefcampo);
         vCaption:=GetInfoCrud('\caption',pdefcampo);
         if vCaption='' then
            vCaption:=GetInfoCrud('\titulo',pdefcampo);
         if vCaption='' then
            vCaption:=GetInfoCrud('\coluna',pdefcampo);
         vSize:=StrToIntDef( GetInfoCrud('\tamanho',pdefcampo) ,0);
         vAux:=GetInfoCrud('\readonly',pdefcampo);
         vReadOnly:=(UpperCase(vaux)='T') ;
         vAux:=GetInfoCrud('\required',pdefcampo);
         vRequired:=(UpperCase(vaux)='T') ;
         vAux:=GetInfoCrud('\unique',pdefcampo);
         vUnique:=(UpperCase(vaux)='T') ;
         vtipo:=GetInfoCrud('\tipo',pdefcampo);
         vValor:=GetInfoCrud('\value',pdefcampo);
         vAux:=GetInfoCrud('\hidden',pdefcampo);
         vHidden:=(UpperCase(vaux)='T') ;
     end;
     vlDefCampo:=pDefCampo;
     vObj:=Nil;
end;

function tCampoCrud.GetDefinicaoCampos: String;
begin
     result:='\campo='+vFieldName +
             '\caption='+vCaption+
             '\tamanho='+IntToStr(vSize)+
             '\readonly='+iif(vReadOnly,'True','False')+
             '\required='+iif(vRequired,'True','False')+
             '\unique='+iif(vUnique,'True','False')+
             '\tipo='+vTipo;
end;

{ tCampoCrudList }

procedure tCampoCrudList.Clear;
var x: integer;
begin
    for x := 0 to Self.Count-1 do
    begin
         dispose( tCampoCrud(self.items[x]).Obj );
    end;
    inherited Clear;
end;

function tCampoCrudList.FieldsSelect: String;
var I:integer;
begin
     result := '';
     for I := 0 to count-1 do
         with tCampoCrud(self.Items[I]) do
         if FieldName<>'' then
             result:=InsereAfter(result,',')+FieldName;
end;

function tCampoCrudList.Find(pFieldName: string): tCampoCrud;
var I,y: integer;
    vFN: string;
begin
     y := self.Count-1;
     vFN := UpperCase(pFieldName);
     Result := Nil;
     for I := 0 to y do
     begin
       if UpperCase(tCampoCrud(self.Items[I]).FieldName)=vFN then
          Result := tCampoCrud(self.Items[I]);
     end;
end;

function tCampoCrudList.FindCaption(pCaption: string): tCampoCrud;
var I,y: integer;
    vFN: string;
begin
     y := self.Count-1;
     vFN := UpperCase(pCaption);
     Result := Nil;
     for I := 0 to y do
     begin
       if UpperCase(tCampoCrud(self.Items[I]).Caption)=vFN then
          Result := tCampoCrud(self.Items[I]);
     end;
end;

{ TDBAutoCRUD }

constructor TDBAutoCRUD.Create(AOwner: TComponent);
begin
  inherited Create(Aowner);
  vlSqlSelect:=tStringList.create;
  vlSqlTable:='';
  VlSqlCampoID:='';
  vlGenerator:='';
  vlTitulo:='';
  vlPodeIncluir:=true;
  vlPodeEditar:=true;
  vlPodeExcluir:=true;

end;

destructor TDBAutoCRUD.Destroy;
begin
  vlSqlSelect.Clear;
  inherited Destroy;
end;

procedure TDBAutoCRUD.SetSelect(Value: tStrings);
begin
  if vlSqlSelect.Text <> Value.Text then
  begin
    vlSqlSelect.BeginUpdate;
    try
      vlSqlSelect.Assign(Value);
    finally
      vlSqlSelect.EndUpdate;
    end;
  end;
end;

{ TDBAutoF8 }

constructor TDBAutoF8.Create(AOwner: TComponent);
begin
  inherited Create(Aowner);
  vlSqlSelect:=tStringList.create;
  vlSqlTable:='';
  vlSqlOrder:='';
  vlSqlFiltro:=tStringList.create;
  VlSqlIdRetorno:='';
  vlTitulo:='';
  fCampoUnicoPesquisa:=False;
  vlFiltroTabela:='';
end;

destructor TDBAutoF8.Destroy;
begin
  vlSqlSelect.Clear;
  vlSqlFiltro.Clear;
  inherited Destroy;
end;


procedure TDBAutoF8.SetFiltro(Value: tStrings);
begin
  if vlSqlFiltro.Text <> Value.Text then
  begin
    vlSqlFiltro.BeginUpdate;
    try
      vlSqlFiltro.Assign(Value);
    finally
      vlSqlFiltro.EndUpdate;
    end;
  end;
end;

procedure TDBAutoF8.SetSelect(Value: tStrings);
begin
  if vlSqlSelect.Text <> Value.Text then
  begin
    vlSqlSelect.BeginUpdate;
    try
      vlSqlSelect.Assign(Value);
    finally
      vlSqlSelect.EndUpdate;
    end;
  end;
end;

function GetTextBefore(pTexto,pBusca:string):string;
var p:integer;
begin
  p := pos(pBusca.toUpper,pTexto.toUpper);
  if p>0 then
     result:=Copy(pTexto,1,p-1)
  Else
     result:='';
end;
function GetTextAfter(pTexto,pBusca:string):string;
var p:integer;
begin
  p := pos(pBusca.toUpper,pTexto.toUpper);
  if p>0 then
     result:=Copy(pTexto,p+length(pBusca),length(pTexto))
  Else
     result:='';
end;
Function  iif ( condic: boolean ; restrue, resfalse:variant ): variant;
begin
     if condic then
        iif := restrue
     else
        iif := resfalse;
end;
Function InsereAfter(pDado,pSeparador:string):string;
begin
     result := '';
     if trim(pdado)<>'' then
        result := pDado+pSeparador;
end;

end.
