unit UPesqParametrosDaQualidade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBPesquisaForm, Data.DB, Data.DBXFirebird, Data.FMTBcd, Vcl.Menus, Datasnap.DBClient, Datasnap.Provider, Vcl.ExtCtrls, Data.SqlExpr, ACBrEnterTab, ACBrBase,
  ACBrCalculadora, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.Buttons;

type
	TfrmPesqParametrosDaQualidade = class(TfrmBaseDBPesquisa)
		LabeledEdit1: TLabeledEdit;
		qBuscoCOL_CODIGO: TIntegerField;
		qBuscoCOL_NOME: TStringField;
    cdsBuscoPAR_CODIGO: TIntegerField;
    cdsBuscoPAR_DESCRICAO: TStringField;
    qBuscoPAR_OBSERVACAO: TStringField;
    cdsBuscoPAR_OBSERVACAO: TStringField;
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
	frmPesqParametrosDaQualidade: TfrmPesqParametrosDaQualidade;

implementation

{$R *.dfm}

uses UCadParametrosDaQualidade, Uteis;

{ TfmPesqOperacoes }

procedure TfrmPesqParametrosDaQualidade.btnNovoClick(Sender: TObject);
var mtag: integer;
		tcr: TfrmCadParametrosDaQualidade;
		flg: boolean;
begin
	inherited;
	mtag := (sender as tComponent).Tag;
  tcr := TfrmCadParametrosDaQualidade.create( self );
	try

		 case mtag of
		 1: flg:=tcr.novo('Novo Registro') ;
		 2: tcr.Consulta(cdsBusco.FieldByName('PAR_CODIGO').asString,'Consulta Registro');
		 3: flg:=tcr.edita(cdsBusco.FieldByName('PAR_CODIGO').asString,'Edição de Registro');
		 4: flg:=tcr.exclui(cdsBusco.FieldByName('PAR_CODIGO').asString,'Exclusão de Registro');
		 end;
		 if tcr.ModalResult=mrOk then
		 begin
					if CdSBUSCO.Active then
					BEGIN
						CdsBusco.Refresh;
						if trim(tcr.idretorno) <> Trim(cdsBusco.FieldByName('PAR_CODIGO').asstring) then
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

procedure TfrmPesqParametrosDaQualidade.FiltraColaborador;
var vOrd: string;
begin
	inherited;
	with qBusco do
	begin
		sql.Clear;
		SQL.Add('select * from PARAMETROS_DA_QUALIDADE');
		if StrToIntDef(LabeledEdit1.Text,-1)=-1 then
			 SqlAdd( CampoSql( 'PAR_DESCRICAO',LabeledEdit1.Text) )
		else
			 SqlAdd( CampoSql( 'PAR_CODIGO',LabeledEdit1.Text) );
	end;
end;

procedure TfrmPesqParametrosDaQualidade.FormClose(Sender: TObject; var Action: TCloseAction);
begin
	inherited;
	Action := caFree;
end;

procedure TfrmPesqParametrosDaQualidade.FormCreate(Sender: TObject);
begin
	inherited;

	Self.CampoID:='PAR_CODIGO';
	Self.ProcedureFiltro:=FiltraColaborador;

end;

procedure TfrmPesqParametrosDaQualidade.FormDestroy(Sender: TObject);
begin
	inherited;
	frmPesqParametrosDaQualidade := nil;
end;

procedure TfrmPesqParametrosDaQualidade.FormResize(Sender: TObject);
begin
	inherited;
	Height := 493;
	Width := 849;
end;

procedure TfrmPesqParametrosDaQualidade.FormShow(Sender: TObject);
begin
	inherited;
	AbreTabela:=True;
	Filtro; // abre tabelas
end;

end.
