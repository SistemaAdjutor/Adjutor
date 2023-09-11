unit uPesqCliOrigem;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBPesquisaForm, Data.DB, Data.DBXFirebird, Data.FMTBcd, Vcl.Menus, Datasnap.DBClient, Datasnap.Provider, Vcl.ExtCtrls, Data.SqlExpr, ACBrEnterTab,
  ACBrBase, ACBrCalculadora, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Vcl.ComCtrls, BaseDBPesquisaBaseForm;

type
  TfrmPesqOrigemCliente = class(TfrmBaseDBPesquisa)
    LabeledEdit1: TLabeledEdit;
    cdsBuscoCORI_CODIGO: TIntegerField;
    cdsBuscoCORI_DESCRICAO: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
  private
   procedure Filtro;
  public
    { Public declarations }
  end;

var
  frmPesqOrigemCliente: TfrmPesqOrigemCliente;

implementation

uses uteis, InicioDB, uClienteOrigem;
{$R *.dfm}

{ TfrmBaseDBPesquisaBase1 }

procedure TfrmPesqOrigemCliente.btnNovoClick(Sender: TObject);
var mtag: integer;
		tcr: TfrmClieOrigem;
		flg: boolean;
begin
	inherited;
	mtag := (sender as tComponent).Tag;
  tcr := TfrmClieOrigem.create( self );
	try

		 case mtag of
		 1: flg:=tcr.novo('Novo Registro') ;
		 2: tcr.Consulta(cdsBusco.FieldByName('CORI_CODIGO').asString,'Consulta Registro');
		 3: flg:=tcr.edita(cdsBusco.FieldByName('CORI_CODIGO').asString,'Edição de Registro');
		 4: flg:=tcr.exclui(cdsBusco.FieldByName('CORI_CODIGO').asString,'Exclusão de Registro');
		 end;
		 if tcr.ModalResult=mrOk then
		 begin
					if CdSBUSCO.Active then
					BEGIN
						CdsBusco.Refresh;
						if trim(tcr.idretorno) <> Trim(cdsBusco.FieldByName('CORI_CODIGO').asstring) then
						begin
								 CdsBusco.Locate( CampoID, tcr.IDRetorno, [loCaseInsensitive] ) ;
						end;
					END;
		 end;
	finally
		tcr.close;
		freeandnil(tcr);
    cdsBusco.Refresh;
	end;

end;

procedure TfrmPesqOrigemCliente.Filtro;
begin
	with qBusco do
	begin
		sql.Clear;
		SQL.Add('select * from CLIENTE_ORIGEM');

		if StrToIntDef(LabeledEdit1.Text,-1)=-1 then
			 SqlAdd( CampoSql( 'CORI_DESCRICAO',LabeledEdit1.Text) );

	end;
end;

procedure TfrmPesqOrigemCliente.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
	Action := caFree;
end;

procedure TfrmPesqOrigemCliente.FormCreate(Sender: TObject);
begin
  inherited;
	Self.CampoID:='CORI_CODIGO';
	Self.ProcedureFiltro:=Filtro;
  SetTamanhoMinimo(493,691);
  SetTamanhoMaximo(493,691);
end;

procedure TfrmPesqOrigemCliente.FormDestroy(Sender: TObject);
begin
  inherited;
  frmPesqOrigemCliente := nil;
end;

procedure TfrmPesqOrigemCliente.FormShow(Sender: TObject);
begin
  inherited;
	AbreTabela:=True;
	Filtro; // abre tabelas
  btnPesquisa.Click;
end;

end.
