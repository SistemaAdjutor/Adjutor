unit uPesqISSMunicipio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBPesquisaForm, Data.DB, Data.DBXFirebird, Data.FMTBcd, Vcl.Menus, Datasnap.DBClient, Datasnap.Provider, Vcl.ExtCtrls, Data.SqlExpr, ACBrEnterTab, ACBrBase,
  ACBrCalculadora, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.Buttons, UEDITISS_MUNICIPIO;

type
  TfrmIssMunicipios = class(TfrmBaseDBPesquisa)
    cdsBuscoISS_CODIGO: TStringField;
    cdsBuscoISS_MUNICIPIO: TStringField;
    cdsBuscoISS_UF: TStringField;
    cdsBuscoISS_PGRC_ISS: TFMTBCDField;
    cdsBuscoEMP_CODIGO: TStringField;
    cdsBuscoCID_CODIGO: TIntegerField;
    cdsBuscoISS_PERCENT_INSS: TFMTBCDField;
    cdsBuscoISS_PERCENT_CSLL: TFMTBCDField;
    cdsBuscoISS_PERCENT_IR: TFMTBCDField;
    cdsBuscoISS_PERCENT_PIS: TFMTBCDField;
    cdsBuscoISS_PERCENT_COFINS: TFMTBCDField;
    LabeledEdit1: TLabeledEdit;
    qBuscoISS_CODIGO: TStringField;
    qBuscoISS_MUNICIPIO: TStringField;
    qBuscoISS_UF: TStringField;
    qBuscoISS_PGRC_ISS: TFMTBCDField;
    qBuscoEMP_CODIGO: TStringField;
    qBuscoCID_CODIGO: TIntegerField;
    qBuscoISS_PERCENT_INSS: TFMTBCDField;
    qBuscoISS_PERCENT_CSLL: TFMTBCDField;
    qBuscoISS_PERCENT_IR: TFMTBCDField;
    qBuscoISS_PERCENT_PIS: TFMTBCDField;
    qBuscoISS_PERCENT_COFINS: TFMTBCDField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
  private
    { Private declarations }
  public
   procedure filtrar;
  end;

var
  frmIssMunicipios: TfrmIssMunicipios;

implementation

uses uteis;
{$R *.dfm}

procedure TfrmIssMunicipios.btnNovoClick(Sender: TObject);
var mtag: integer;
		tcr: TfrmEditISS_Municipio;
		flg: boolean;
begin
	inherited;
	mtag := (sender as tComponent).Tag;
  tcr := TfrmEditISS_Municipio.create( self );
	try

		 case mtag of
		 1: flg:=tcr.novo('Novo Registro') ;
		 2: tcr.Consulta(cdsBusco.FieldByName('ISS_CODIGO').asString,'Consulta Registro');
		 3: flg:=tcr.edita(cdsBusco.FieldByName('ISS_CODIGO').asString,'Edição de Registro');
		 4: flg:=tcr.exclui(cdsBusco.FieldByName('ISS_CODIGO').asString,'Exclusão de Registro');
		 end;
		 if tcr.ModalResult=mrOk then
		 begin
					if CdSBUSCO.Active then
					BEGIN
						CdsBusco.Refresh;
						if trim(tcr.idretorno) <> Trim(cdsBusco.FieldByName('ISS_CODIGO').asstring) then
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

procedure TfrmIssMunicipios.filtrar;
begin
	with qBusco do
	begin
		sql.Clear;
		SQL.Add('SELECT * FROM ISS0000');
		if StrToIntDef(LabeledEdit1.Text,-1)=-1 then
			 SqlAdd( CampoSql( 'ISS_MUNICIPIO',LabeledEdit1.Text) );
	end;
end;

procedure TfrmIssMunicipios.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
	Action := caFree;
end;

procedure TfrmIssMunicipios.FormCreate(Sender: TObject);
begin
  inherited;
	Self.CampoID:='CID_CODIGO';
	Self.ProcedureFiltro:=Filtrar;
end;

procedure TfrmIssMunicipios.FormDestroy(Sender: TObject);
begin
  inherited;
  frmIssMunicipios := nil;
end;

procedure TfrmIssMunicipios.FormResize(Sender: TObject);
begin
  inherited;
	Height := 493;
	Width := 644;
end;

procedure TfrmIssMunicipios.FormShow(Sender: TObject);
begin
  inherited;
	AbreTabela:=True;
	Filtrar; // abre tabelas
  btnPesquisa.Click;
end;

end.
