unit UPesqColaborador;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBPesquisaForm, Data.DB, Data.DBXFirebird, Data.FMTBcd, Vcl.Menus, Datasnap.DBClient, Datasnap.Provider, Vcl.ExtCtrls, Data.SqlExpr, ACBrEnterTab, ACBrBase,
  ACBrCalculadora, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.Buttons;

type
	TfmPesqColaborador = class(TfrmBaseDBPesquisa)
		LabeledEdit1: TLabeledEdit;
		qBuscoCOL_CODIGO: TIntegerField;
		qBuscoCOL_NOME: TStringField;
		qBuscoCOL_FUNC: TStringField;
		qBuscoCOL_SETOR: TStringField;
		qBuscoCOL_SALARIO_HORA: TFMTBCDField;
		cdsBuscoCOL_CODIGO: TIntegerField;
		cdsBuscoCOL_NOME: TStringField;
		cdsBuscoCOL_FUNC: TStringField;
		cdsBuscoCOL_SETOR: TStringField;
		cdsBuscoCOL_SALARIO_HORA: TFMTBCDField;
		procedure FormCreate(Sender: TObject);
		procedure FiltraColaborador;
		procedure FormClose(Sender: TObject; var Action: TCloseAction);
		procedure FormDestroy(Sender: TObject);
		procedure FormShow(Sender: TObject);
		procedure FormResize(Sender: TObject);
		procedure btnNovoClick(Sender: TObject);
	private
		{ Private declarations }
	public
		{ Public declarations }
	end;

var
	fmPesqColaborador: TfmPesqColaborador;

implementation

{$R *.dfm}

uses UColaborador, Uteis;

{ TfmPesqOperacoes }

procedure TfmPesqColaborador.btnNovoClick(Sender: TObject);
var mtag: integer;
		tcr: TfmColaborador;
		flg: boolean;
begin
	inherited;
	mtag := (sender as tComponent).Tag;
  tcr := TfmColaborador.create( self );
	try

		 case mtag of
		 1: flg:=tcr.novo('Novo Registro') ;
		 2: tcr.Consulta(cdsBusco.FieldByName('COL_CODIGO').asString,'Consulta Registro');
		 3: flg:=tcr.edita(cdsBusco.FieldByName('COL_CODIGO').asString,'Edição de Registro');
		 4: flg:=tcr.exclui(cdsBusco.FieldByName('COL_CODIGO').asString,'Exclusão de Registro');
		 end;
		 if tcr.ModalResult=mrOk then
		 begin
					if CdSBUSCO.Active then
					BEGIN
						CdsBusco.Refresh;
						if trim(tcr.idretorno) <> Trim(cdsBusco.FieldByName('COL_CODIGO').asstring) then
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

procedure TfmPesqColaborador.FiltraColaborador;
var vOrd: string;
begin
	inherited;
	with qBusco do
	begin
		sql.Clear;
		SQL.Add('select * from colaborador');
		if StrToIntDef(LabeledEdit1.Text,-1)=-1 then
			 SqlAdd( CampoSql( 'COL_Nome',LabeledEdit1.Text) )
		else
			 SqlAdd( CampoSql( 'COL_CODIGO',LabeledEdit1.Text) );
	end;
end;

procedure TfmPesqColaborador.FormClose(Sender: TObject; var Action: TCloseAction);
begin
	inherited;
	Action := caFree;
end;

procedure TfmPesqColaborador.FormCreate(Sender: TObject);
begin
	inherited;

	Self.CampoID:='COL_CODIGO';
	Self.ProcedureFiltro:=FiltraColaborador;

end;

procedure TfmPesqColaborador.FormDestroy(Sender: TObject);
begin
	inherited;
	fmPesqColaborador := nil;
end;

procedure TfmPesqColaborador.FormResize(Sender: TObject);
begin
	inherited;
	Height := 493;
	Width := 849;
end;

procedure TfmPesqColaborador.FormShow(Sender: TObject);
begin
	inherited;
	AbreTabela:=True;
	Filtro; // abre tabelas
end;

end.
