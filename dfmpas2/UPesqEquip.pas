unit UPesqEquip;

interface

uses
	Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
	Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBPesquisaForm, Data.DB, Data.DBXFirebird, Data.FMTBcd, Vcl.Menus, Datasnap.DBClient, Datasnap.Provider, Vcl.ExtCtrls, Data.SqlExpr, ACBrEnterTab, ACBrBase,
	ACBrCalculadora, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.Buttons;

type
	TfmPesqEquip = class(TfrmBaseDBPesquisa)
		LabeledEdit1: TLabeledEdit;
    qBuscoEQP_CODIGO: TIntegerField;
    qBuscoEQP_DESCRICAO: TStringField;
    cdsBuscoEQP_CODIGO: TIntegerField;
    cdsBuscoEQP_DESCRICAO: TStringField;
    cdsBuscoPCX_DESCRI: TStringField;
    cdsBuscoEQP_REFER: TStringField;
    cdsBuscoTRP_NOME: TStringField;
    qBuscoEQP_REFER: TStringField;
    qBuscoPCX_DESCRI: TStringField;
    qBuscoTRP_NOME: TStringField;
    cdsBuscoEQP_DATAAQUISICAO: TDateField;
    qBuscoEQP_DATAAQUISICAO: TDateField;
		procedure FormCreate(Sender: TObject);
		procedure FiltraEquip;
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
	fmPesqEquip: TfmPesqEquip;

implementation

{$R *.dfm}

uses Uteis, UEquip
;

{ TfrmBaseDBPesquisa1 }

procedure TfmPesqEquip.btnNovoClick(Sender: TObject);
var mtag: integer;
    tcr: TfmEquip;
    flg: boolean;
begin
  inherited;
  mtag := (sender as tComponent).Tag;
  tcr := TfmEquip.create( self );
  try

     case mtag of
     1: flg:=tcr.novo('Novo Registro') ;
		 2: tcr.Consulta(cdsBusco.FieldByName('EQP_Codigo').asString,'Consulta Registro');
		 3: flg:=tcr.edita(cdsBusco.FieldByName('EQP_Codigo').asString,'Edição de Registro');
		 4: flg:=tcr.exclui(cdsBusco.FieldByName('EQP_Codigo').asString,'Exclusão de Registro');
		 end;
		 if tcr.ModalResult=mrOk then
		 begin
					if CdSBUSCO.Active then
					BEGIN
						CdsBusco.Refresh;
						if trim(tcr.idretorno) <> Trim(cdsBusco.FieldByName('EQP_Codigo').asstring) then
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

procedure TfmPesqEquip.FiltraEquip;
begin
	with qBusco do
	begin
		sql.Clear;
		SQL.Add('select eq.*, PCX_DESCRI, TRP_NOME from equipamento eq LEFT JOIN PCX0000 pc ON (pc.PCX_CODIGO = eq.PCX_CODIGO) '+
            ' LEFT JOIN TURNO TU ON (TU.TPR_CODIGO = EQ.TPR_CODIGO) ');
		if StrToIntDef(LabeledEdit1.Text,-1)=-1 then
			 SqlAdd( CampoSql( 'EQP_Descricao',LabeledEdit1.Text) )
		else
			 SqlAdd( CampoSql( 'EQP_Codigo',LabeledEdit1.Text) );
		//SqlAdd( CampoSql('Descricao',LabeledEdit1.Text));
	end;

end;

procedure TfmPesqEquip.FormClose(Sender: TObject; var Action: TCloseAction);
begin
	inherited;
	Action := caFree;
end;

procedure TfmPesqEquip.FormCreate(Sender: TObject);
begin
	inherited;
	//AdicionarColunas;
	Self.CampoID:='EQP_Codigo';
  Self.ProcedureFiltro:=FiltraEquip;
end;

procedure TfmPesqEquip.FormDestroy(Sender: TObject);
begin
  inherited;
	fmPesqEquip := nil;
end;

procedure TfmPesqEquip.FormResize(Sender: TObject);
begin
  inherited;
  Height := 493;
  Width := 846;

end;

procedure TfmPesqEquip.FormShow(Sender: TObject);
begin
  inherited;
  AbreTabela:=True;
  Filtro; // abre tabelas
end;

end.
