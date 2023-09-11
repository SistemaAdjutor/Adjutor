unit TelaCopiaProdutoForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseDBForm, {{DBXpress,}  DB, SqlExpr, ACBrBase, ACBrCalculadora,
  ExtCtrls, StdCtrls, Data.DBXInterBase, Data.DBXFirebird, ACBrEnterTab, Data.FMTBCd, ACBrETQ;

type
  TFrmTelaCopiaProduto = class(TfrmBaseDB)
    Label3: TLabel;
    Edit1: TEdit;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Button1: TButton;
    Button2: TButton;
    Edit4: TEdit;
    procedure FormCreate(Sender: tObject);
    procedure Button1Click(Sender: tObject);
    procedure Button2Click(Sender: tObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmTelaCopiaProduto: TFrmTelaCopiaProduto;

implementation

{$R *.dfm}

Uses InicioDB, uteis;

procedure TFrmTelaCopiaProduto.FormCreate(Sender: tObject);
begin
  inherited;
  Edit1.Clear;
  Edit2.Clear;
  Edit3.Clear;
  Edit4.Clear;
  self.WindowState:=wsNormal;
  Self.Position:=poOwnerFormCenter;
  self.Width:= 558;
  Self.Height:= 282;
  aCaption:='Copiar Produto Como Novo';
end;

procedure TFrmTelaCopiaProduto.Button1Click(Sender: tObject);
var x, y: Integer;
    l1, l2, dado, fName: string;
    flg, Compartilhado: Boolean;
begin
     inherited;

     if trim( Edit2.Text ) = '' then
        GeraException('É necessário informar a referência do novo produto!');
     if Trim(Edit2.Text) = Trim(Edit1.Text) then
        GeraException('O Produto não pode ser copiado com a mesma referência!');
     Compartilhado := BuscaUmDadoSqlAsString('SELECT PRODUTOS FROM SHAREDB') = 'C';
     if Compartilhado then
     begin
       if BuscaUmDadoSqlAsInteger('Select cast(count(prd_refer) as integer) as conta from prd0000 where prd_refer = ' + qStr(Trim(Edit2.Text)) ) > 0 then
         GeraException('A referência informada já existe!');
     end
     else
     begin
       if BuscaUmDadoSqlAsInteger('Select cast(count(prd_refer) as integer) as conta from prd0000 where emp_codigo = '+qStr(DBInicio.Empresa.EMP_CODIGO)+' and prd_refer = ' + qStr(Trim(Edit2.Text))) > 0 then
         GeraException('A referência informada já existe!');
     end;

     if trim( Edit3.Text ) = '' then
        GeraException('É necessário informar a descrição do novo produto!');

     flg:=False;

     qAux.SQL.Clear;
     qAux.SQL.Add('Select PRD_CODIGO,PRD_REFER,PRD_STATUS,PRD_DTCADASTRO,PRD_DESCRI,PRD_DESCRI_RES,PRD_UND,PRD_UND_GRADE_CALCULO,');
     qAux.SQL.Add('       PRD_EMBALA,PGR_CODIGO,PTI_CODIGO,IPI_CODIGO,PRD_ALIQICM,LIN_CODIGO,PRD_MINIMO,PRD_MAXIMO,PRD_TEMSUB,');
     qAux.SQL.Add('       PRD_SITRIBUT,PRD_ICMSUBS,PRD_UTILCONV,PRD_UNDCOMP,PRD_FATORC,PRD_DIVMULT,EMP_CODIGO,PRD_TABPRECO,');
     qAux.SQL.Add('       PRD_FAMILIA,PRD_CURVA,AMX_CODIGO,PRD_GRADE,PRD_COMISSAO,STB_TRIBUTACAO,PRD_ORIGEM,PRD_MARGEMVENDA,');
     qAux.SQL.Add('       PRD_MARGEMOFERTA,SPED_GENCODIGO,SPED_TIPCODIGO,PRD_UNICODIGO,PRD_PRODSERV,PRDE_REGISTRO,');
     qAux.SQL.Add('       CEST_COD,CEST_REVISAR');
     qAux.SQL.Add('from   prd0000');
     qAux.SQL.Add('where  prd_refer='+qStr(Trim(Edit1.Text)) + ConcatSe( ' and ',dbInicio.ExclusivoSql('PRODUTOS') ) ) ;

     qAux.SQLConnection:=DBConn;
     qAux.Open;

     y := qAux.fields.count-1;
     l1 := '';
     l2 := '';

     for x:=0 to y do
     begin
         fName:=qAux.Fields[x].FieldName;
         if qAux.Fields[x].IsNull then
            dado := 'Null'
         Else
         if fName='PRD_CODIGO' THEN
            dado := QuotedStr(StrZero(BuscaUmDadoSqlAsInteger('SELECT max(CAST(prd_codigo AS INTEGER))+1  from prd0000') ,5))
         else
         if fName='PRD_REFER' THEN
            dado := qstr( Trim( Edit2.Text ) )
         else
         if fName='PRD_DESCRI' THEN
            dado := qstr( Trim( Edit3.Text ) )
         else
         if (qAux.Fields[x].DataType=ftDate) or (qAux.Fields[x].DataType=ftDateTime) then
            dado := DateToSql( qAux.Fields[x].asDateTime )
         Else
         if (qAux.Fields[x].DataType=ftFloat) or (qAux.Fields[x].DataType=ftCurrency) or (qAux.Fields[x].DataType=ftBCd) or (qAux.Fields[x].DataType=ftFMTBCd) then
            dado := FloatToSql( qAux.Fields[x].asFloat )
         Else
         if (qAux.Fields[x].DataType=ftSmallint) or (qAux.Fields[x].DataType=ftInteger) or (qAux.Fields[x].DataType=ftWord) or (qAux.Fields[x].DataType=ftLargeint) then
            dado := inttostr( qAux.Fields[x].asInteger )
         Else
            dado := qstr( qAux.Fields[x].AsString );

         flg:=True;
         l1:=InsereApos(l1,',')+fName;
         l2:=InsereApos(l2,',')+dado;

     end;

     if flg then
     begin

          ExecSql('insert into prd0000('+l1+') values ('+l2+')') ;
          ShowMessage('Registro copiado!!!!');
          ModalResult:=mrOk;
     end
     Else
          ShowMessage('Ignorado - Nada foi feito!!!! - Não existem dados a copiar!');

end;


procedure TFrmTelaCopiaProduto.Button2Click(Sender: tObject);
begin
  inherited;
  ModalResult := mrCancel;
end;

end.



