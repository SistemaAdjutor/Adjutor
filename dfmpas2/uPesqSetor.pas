unit uPesqSetor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBPesquisaForm, Data.DB, Data.DBXFirebird, Data.FMTBcd, Vcl.Menus, Datasnap.DBClient, Datasnap.Provider, Vcl.ExtCtrls, Data.SqlExpr, ACBrEnterTab, ACBrBase,
  ACBrCalculadora, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.Buttons;

type
  TfrmPesquisaSetor = class(TfrmBaseDBPesquisa)
    LabeledEdit1: TLabeledEdit;
    cdsBuscoSET_CODIGO: TIntegerField;
    cdsBuscoSET_DESCRICAO: TStringField;
    cdsBuscoEMP_CODIGO: TStringField;
    cdsBuscoPCX_DESCRI: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
  private
    { Private declarations }
  public
    procedure Filtro;
  end;

var
  frmPesquisaSetor: TfrmPesquisaSetor;

implementation

{$R *.dfm}

uses uteis, usetor, InicioDB;

{ TfrmPesquisaSetor }

procedure TfrmPesquisaSetor.btnNovoClick(Sender: TObject);
var mtag: integer;
		tcr: TfmSetor;
		flg: boolean;
begin
	inherited;
	mtag := (sender as tComponent).Tag;
  tcr := TfmSetor.create( self );
	try

		 case mtag of
		 1: flg:=tcr.novo('Novo Registro') ;
		 2: tcr.Consulta(cdsBusco.FieldByName('SET_CODIGO').asString,'Consulta Registro');
		 3: flg:=tcr.edita(cdsBusco.FieldByName('SET_CODIGO').asString,'Edição de Registro');
		 4: flg:=tcr.exclui(cdsBusco.FieldByName('SET_CODIGO').asString,'Exclusão de Registro');
		 end;
		 if tcr.ModalResult=mrOk then
		 begin
					if CdSBUSCO.Active then
					BEGIN
						CdsBusco.Refresh;
						if trim(tcr.idretorno) <> Trim(cdsBusco.FieldByName('SET_CODIGO').asstring) then
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

procedure TfrmPesquisaSetor.Filtro;
begin
	with qBusco do
	begin
		sql.Clear;
		SQL.Add('SELECT * FROM SETOR se LEFT JOIN PCX0000 pc ON (se.PCX_CODIGO = pc.PCX_CODIGO)');
    if DBINICIO.Exclusivo('ORDEMPRODUCAO') then
      SqlAdd(' se.emp_codigo = '+QuotedStr(DBInicio.Empresa.EMP_CODIGO));
		if StrToIntDef(LabeledEdit1.Text,-1)=-1 then
			 SqlAdd( CampoSql( 'SET_DESCRICAO',LabeledEdit1.Text) );
	end;
end;

procedure TfrmPesquisaSetor.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
	Action := caFree;
end;

procedure TfrmPesquisaSetor.FormCreate(Sender: TObject);
begin
  inherited;
	Self.CampoID:='SET_CODIGO';
	Self.ProcedureFiltro:=Filtro;
  SetTamanhoMinimo(493,691);
  SetTamanhoMaximo(493,691);
end;

procedure TfrmPesquisaSetor.FormDestroy(Sender: TObject);
begin
  inherited;
  frmPesquisaSetor := nil;
end;

procedure TfrmPesquisaSetor.FormShow(Sender: TObject);
begin
  inherited;
	AbreTabela:=True;
	Filtro; // abre tabelas
  btnPesquisa.Click;
end;

end.
