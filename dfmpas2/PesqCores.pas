unit PesqCores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBPesquisaForm, Data.DB, Data.DBXFirebird, Data.FMTBcd, Vcl.Menus, Datasnap.DBClient, Datasnap.Provider, Vcl.ExtCtrls, Data.SqlExpr, ACBrEnterTab, ACBrBase,
  ACBrCalculadora, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.Buttons;

type
  TfrmPesqCores = class(TfrmBaseDBPesquisa)
    LabeledEdit1: TLabeledEdit;
    cdsBuscoACO_CODIGO: TIntegerField;
    cdsBuscoACO_NOME: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
  private
    { Private declarations }
  public
    procedure filtro;
  end;

var
  frmPesqCores: TfrmPesqCores;

implementation

uses uCoresEdit, uteis;
{$R *.dfm}

{ TfrmCores }

procedure TfrmPesqCores.btnNovoClick(Sender: TObject);
var mtag: integer;
    tcr: TfrmCoresEdit;
    flg: boolean;
begin
  inherited;
     mtag := (sender as tComponent).Tag;
     tcr := TfrmCoresEdit.create( self );
  try
     case mtag of
     1: flg:=tcr.novo('Novo Registro') ;
		 2: tcr.Consulta(cdsBusco.FieldByName('ACO_CODIGO').asString,'Consulta Registro');
		 3: flg:=tcr.edita(cdsBusco.FieldByName('ACO_CODIGO').asString,'Edição de Registro');
     4: flg:=tcr.exclui(cdsBusco.FieldByName('ACO_CODIGO').asString,'Exclusão de Registro');
     end;
     if tcr.ModalResult=mrOk then
     begin
          if CdSBUSCO.Active then
          BEGIN
            CdsBusco.Refresh;
						if trim(tcr.idretorno) <> Trim(cdsBusco.FieldByName('ACO_CODIGO').asstring) then
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

procedure TfrmPesqCores.filtro;
begin
	with qBusco do
	begin
		sql.Clear;
    sql.Text := 'select * from ACABAMENTO_CORES';

		if StrToIntDef(LabeledEdit1.Text,-1)=-1 then
			 SqlAdd( CampoSql( 'ACO_NOME',LabeledEdit1.Text) )
		else
			 SqlAdd( CampoSql( 'ACO_CODIGO',LabeledEdit1.Text) );
		//SqlAdd( CampoSql('Descricao',LabeledEdit1.Text));
	end;
end;

procedure TfrmPesqCores.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TfrmPesqCores.FormCreate(Sender: TObject);
begin
  inherited;
	Self.CampoID:='ACO_CODIGO';
  Self.ProcedureFiltro:=Filtro;
end;

procedure TfrmPesqCores.FormDestroy(Sender: TObject);
begin
  inherited;
  frmPesqCores := nil;
end;

procedure TfrmPesqCores.FormResize(Sender: TObject);
begin
  inherited;
  Height := 493;
  Width := 846;
end;

procedure TfrmPesqCores.FormShow(Sender: TObject);
begin
  inherited;
  btnPesquisa.Click;
end;

end.
