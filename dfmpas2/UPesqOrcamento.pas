unit UPesqOrcamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBPesquisaForm, Data.DB, Data.DBXFirebird, Data.FMTBcd, Vcl.Menus, Datasnap.DBClient, Datasnap.Provider, Vcl.ExtCtrls, Data.SqlExpr, ACBrEnterTab, ACBrBase,
  ACBrCalculadora, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.Buttons;

type
  TfrmBaseDBPesquisa1 = class(TfrmBaseDBPesquisa)
    qBuscoEMP_CODIGO: TStringField;
    qBuscoORC_CODIGO: TIntegerField;
    qBuscoORC_DATAAQUISICAO: TSQLTimeStampField;
    qBuscoCLI_CODIGO: TStringField;
    qBuscoCLI_RAZAO: TStringField;
    qBuscoORC_EMAIL: TStringField;
    qBuscoORC_DIAS_ENTREGA: TSQLTimeStampField;
    qBuscoORC_DIAS_VALIDADE: TSQLTimeStampField;
    qBuscoFPG_REGISTRO: TIntegerField;
    qBuscoORC_VLR_TOTAL: TFMTBCDField;
    qBuscoORC_SITUACAO: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    procedure filtro;
  end;

var
  frmBaseDBPesquisa1: TfrmBaseDBPesquisa1;

implementation

uses iniciodb, uteis, rwfunc;
{$R *.dfm}

procedure TfrmBaseDBPesquisa1.filtro;
begin
  with qBusco do
	begin
		sql.Clear;
//		SQL.Add(
//      'SELECT ORC_CODIGO, EMP_CODIGO, ORC_DATAAQUISICAO, CLI_CODIGO, ORC_CLIENTE, ORC_EMAIL, ORC_FONE, ORC_FAX, ORC_DIAS_ENTREGA, ' +
//      ' ORC_DIAS_VALIDADE, ORC_ENDERECO, FPG_REGISTRO, ORC_SITUACAO, ORC_VLR_TOTAL, ORC_OBSERVACAO , COALESCE(CLI_RAZAO,ORC_CLIENTE) CLI_RAZAO,  '+
//      ' FPG_DESCRICAO '+
//      ' FROM ORCAMENTO_PROD  OCP JOIN CLI0000 CL ON (OCP.CLI_CODIGO = CL.CLI_CODIGO'+ConcatSe(' AND CL.',DBInicio.Exclusivo('CLIENTES')) + ' )'+
//      ' LEFT JOIN FORMA_PAGAMENTO FP ON (FP.FPG_REGISTRO = OCP.FPG_REGISTRO) ');
//    SqlAdd(DBInicio.ExclusivoSql('PEDIDOS'));

  end;

end;

procedure TfrmBaseDBPesquisa1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TfrmBaseDBPesquisa1.FormCreate(Sender: TObject);
begin
  inherited;
  Self.ProcedureFiltro:=Filtro;
  self.Constraints.MinHeight:= 612;;
  self.Constraints.MinWidth:=1109;
  self.Constraints.MaxHeight:= 0;
  self.width:=1109;
  self.height:=612;


end;

end.
