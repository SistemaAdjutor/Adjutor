unit uDetalheInadimplencia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBPesquisaForm, Data.DB, Data.DBXFirebird, Data.FMTBcd, Vcl.Menus, Datasnap.DBClient, Datasnap.Provider, Vcl.ExtCtrls, Data.SqlExpr, ACBrEnterTab, ACBrBase,
  ACBrCalculadora, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.Buttons;

type
  TfrmDetalheInadimplenciaCliente = class(TfrmBaseDBPesquisa)
    cdsBuscodias: TLargeintField;
    cdsBuscofpc_vencto: TSQLTimeStampField;
    cdsBuscovalor: TFMTBCDField;
    cdsBuscofatura: TStringField;
    cdsBuscoFAT_VLFAT: TFMTBCDField;
    cdsBuscoPARCELAS: TStringField;
    cdsBuscoBAN_APELIDO: TStringField;
    cdsBuscoFPG_DESCRICAO: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    fcli_codigo : string;
  public
    procedure filtro;
    property cli_codigo:string read fcli_codigo write fcli_codigo;
  end;

var
  frmDetalheInadimplenciaCliente: TfrmDetalheInadimplenciaCliente;

implementation

{$R *.dfm}
uses iniciodb, Uteis;
{ TfrmDetalheInadimplenciaCliente }

procedure TfrmDetalheInadimplenciaCliente.filtro;
Var
  query : string;
begin
with qBusco, sql do
 begin
   query:= 'select datediff(day, fpc_vencto,CURRENT_DATE) dias,  fpc_vencto , pc.FPC_VLPARC valor, ' + 
          ' ft.FAT_CODIGO as fatura, ' + 
          ' pc.FPC_NUMER || ' + QuotedStr('/') + '  || pc.FPC_NPARCELAS  as PARCELAS, ' + 
          ' ft.FAT_VLFAT, b.BAN_APELIDO, fp.FPG_DESCRICAO' +
          '  from FAT0000 ft '+
          ' INNER JOIN FAT_PC01 pc ON (ft.FAT_CODIGO = pc.FAT_CODIGO) '+
          ' left JOIN BAN0000 b ON (b.BAN_CODIGO = pc.BAN_CODIGO) ' +
          ' left JOIN FORMA_PAGAMENTO fp ON (fp.FPG_REGISTRO = pc.FPG_REGISTRO) ' +
          ' WHERE fpc_STATUS = ''Pendente''   '+
          ' AND FPC_EXCLUSAO = ''N''  '+
          ' AND fpc_vencto <= CURRENT_DATE '+
          ' and ft.emp_codigo = '+QuotedStr(dbInicio.EMPRESA.EMP_CODIGO) +
          ' AND ft.CLI_CODIGO = '+ QuotedStr(cli_codigo)  +
          'ORDER BY 1 DESC  ';
   sql.Clear;
   Add(query) ;
   if DBInicio.IsDesenvolvimento then
    CopyToClipboard(query);

 end;

end;

procedure TfrmDetalheInadimplenciaCliente.FormCreate(Sender: TObject);
begin
  inherited;
  self.ProcedureFiltro:=Filtro;
 // Self.CampoID:='ECTE_REGISTRO';
//  self.Constraints.MinHeight:= 608;;
//  self.Constraints.MinWidth:=540;
//  self.Constraints.MaxWidth:=540;
//  self.Constraints.MaxHeight:= 0;
//  self.width:=540;
//  self.height:=608;

end;

procedure TfrmDetalheInadimplenciaCliente.FormShow(Sender: TObject);
begin
  inherited;
  btnPesquisa.Click;
end;

end.
