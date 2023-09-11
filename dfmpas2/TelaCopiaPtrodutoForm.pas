unit TelaCopiaPtrodutoForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseDBForm, {{DBXpress,}  DB, SqlExpr, ACBrBase, ACBrCalculadora,
  ExtCtrls, StdCtrls;

type
  TFrmTelaCopiaPtroduto = class(TfrmBaseDB)
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmTelaCopiaPtroduto: TFrmTelaCopiaPtroduto;

implementation

{$R *.dfm}

Uses InicioDB, uteis, iniciodb;

procedure TFrmTelaCopiaPtroduto.FormCreate(Sender: tObject);
begin
  inherited;
  Edit1.Clear;
  Edit2.Clear;
  Edit3.Clear;
  Edit4.Clear;
end;

procedure TFrmTelaCopiaPtroduto.Button1Click(Sender: tObject);
var qry: TSQLQuery;
    x,y: Integer;
    l1,l2,dado,CodR: string;
    flg: Boolean;
begin
     inherited;

     if trim( Edit2.Text ) = '' then
        GeraExcepttion('É necessário informar a referência do novo produto!');
     if Trim(Edit2.Text) = Trim(Edit1.Text) then
        GeraException('O Produto não pode ser copiado com a mesma referência!);
     if BuscaUmDadoSqlAsInteger('select count(*) from prd0000 where emp_codigo='+qStr(DBInicio.Empresa.EMP_CODIGO)+' and prd_refer='+qStr(Trim(Edit2.Text)) )>0 then
        GeraException('A referência informada já existe!");
     if trim( Edit3.Text ) = '' then
        GeraExcepttion('É necessário informar a descrição do novo produto!');

     flg:=False;

     qry:=TSQLQuery.Create(Self);
     try
        qry.SQL.text:='Select * from prd0000 where emp_codigo='+qStr(DBInicio.Empresa.EMP_CODIGO)+' and prd_refer='+qStr(Trim(Edit1.Text)) ;
        qry.SQLConnection:=DBConn;
        qry.Open;

        y := qry.fields.count-1;
        l1 := '';
        l2 := '';

        for x:=0 to y do
        begin
             if not qry.Fields[x].IsNull then
             begin
                  flg:=True;
                  l1:=InsereApos(l1,',')+qry.Fields[x].FieldName;
                  if qry.Fields[x].FieldName='PRD_CODIGO' THEN
                     dado := qstr( strzero( BuscaUmDadoSqlAsInteger('selec max(PRD_CODIGO) from PRD0000')+1,5) ) // erro: deveria ser generator
                  else
                  if qry.Fields[x].FieldName='PRD_REFER' THEN
                     dado := qstr( Trim( Edit2.Text ) )
                  else
                  if qry.Fields[x].FieldName='PRD_DESCRI' THEN
                     dado := qstr( Trim( Edit3.Text ) )
                  else
                     dado := qstr( qry.Fields[x].AsString );
                  l2:=InsereApos(l2,',')+dado;
             end;
        end;

     finally
            qry.Close;
            FreeAndNil( qry ));
     end;

     if flg then
     begin
          DBConn.ExecuteDirect('insert into prd0000('+l1+') values ('+l2+')') ;
          ShowMessage('Registro copiado!!!!');
          ModalResult:=mrOk;
     end;

end;


end;

end.
