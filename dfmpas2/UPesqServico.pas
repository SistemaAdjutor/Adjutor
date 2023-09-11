unit UPesqServico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBPesquisaForm, Data.DB, Data.DBXFirebird, Data.FMTBcd, Vcl.Menus, Datasnap.DBClient, Datasnap.Provider, Vcl.ExtCtrls, Data.SqlExpr, ACBrEnterTab, ACBrBase,
  ACBrCalculadora, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.Buttons;

type
  TfrmPesqServico = class(TfrmBaseDBPesquisa)
    cdsBuscoSRV_REGISTRO: TIntegerField;
    cdsBuscoSRV_CODIGO: TStringField;
    cdsBuscoSRV_DESCRICAO: TStringField;
    LabeledEdit1: TLabeledEdit;
    qBuscoSRV_REGISTRO: TIntegerField;
    qBuscoSRV_CODIGO: TStringField;
    qBuscoSRV_DESCRICAO: TStringField;
    cdsBuscocodigoservico: TStringField;
    qBuscocodigoservico: TStringField;
    procedure btnNovoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FiltrarServico;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesqServico: TfrmPesqServico;

implementation

{$R *.dfm}
uses Uteis, UServico;

procedure TfrmPesqServico.btnNovoClick(Sender: TObject);
var mtag: integer;
    tcr: TfrmItemServico;
    flg: boolean;
begin
  inherited;
  mtag := (sender as tComponent).Tag;
  try
     tcr := TfrmItemServico.create( self );
     case mtag of
     1: flg:=tcr.novo('Novo Registro') ;
		 2: tcr.Consulta(cdsBusco.FieldByName('SRV_REGISTRO').asString,'Consulta Registro');
		 3: flg:=tcr.edita(cdsBusco.FieldByName('SRV_REGISTRO').asString,'Edição de Registro');
		 4: flg:=tcr.exclui(cdsBusco.FieldByName('SRV_REGISTRO').asString,'Exclusão de Registro');
		 end;
		 if tcr.ModalResult=mrOk then
		 begin
					if CdSBUSCO.Active then
					BEGIN
						CdsBusco.Refresh;
						if trim(tcr.idretorno) <> Trim(cdsBusco.FieldByName('SRV_REGISTRO').asstring) then
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

procedure TfrmPesqServico.FiltrarServico;
begin
	with qBusco do
	begin
		sql.Clear;
		SQL.Add('SELECT SRV_REGISTRO,SRV_CODIGO,SRV_DESCRICAO, codigoservico FROM SRV0000');
		if StrToIntDef(LabeledEdit1.Text,-1)=-1 then
			 SqlAdd( CampoSql( 'SRV_DESCRICAO',LabeledEdit1.Text) )
		else
			 SqlAdd( CampoSql( 'SRV_DESCRICAO',LabeledEdit1.Text) );

	end;

end;

procedure TfrmPesqServico.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
	Action := caFree;
end;

procedure TfrmPesqServico.FormCreate(Sender: TObject);
begin
  inherited;
	Self.CampoID:='SRV_REGISTRO';
  Self.ProcedureFiltro:=FiltrarServico;
end;

procedure TfrmPesqServico.FormDestroy(Sender: TObject);
begin
  inherited;
	frmPesqServico := nil;
end;

procedure TfrmPesqServico.FormShow(Sender: TObject);
begin
  inherited;
  AbreTabela:=True;
  Filtro; // abre tabelas
end;

end.
