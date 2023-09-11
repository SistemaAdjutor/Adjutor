unit uPesqRequisicaoMaterialOri;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBPesquisaForm, Data.DB, Data.DBXFirebird, Data.FMTBcd, Vcl.Menus, Datasnap.DBClient, Datasnap.Provider, Vcl.ExtCtrls, Data.SqlExpr, ACBrEnterTab, ACBrBase,
  ACBrCalculadora, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.Buttons;

type
  TfrmPesqRequisicaoMaterialOri = class(TfrmBaseDBPesquisa)
    LabeledEdit1: TLabeledEdit;
    cdsBuscoRMO_CODIGO: TIntegerField;
    cdsBuscoRMO_DESCRICAO: TStringField;
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
  frmPesqRequisicaoMaterialOri: TfrmPesqRequisicaoMaterialOri;

implementation

{$R *.dfm}

uses uteis, uRequisicaoMaterialOri, InicioDB, uPesqSetor;

{ TfrmPesquisaSetor }

procedure TfrmPesqRequisicaoMaterialOri.btnNovoClick(Sender: TObject);
var mtag: integer;
		tcr: TfrmRequisicaoMaterialOri;
		flg: boolean;
begin
	inherited;
	mtag := (sender as tComponent).Tag;
  tcr := TfrmRequisicaoMaterialOri.create( self );
	try

		 case mtag of
		 1: flg:=tcr.novo('Novo Registro') ;
		 2: tcr.Consulta(cdsBusco.FieldByName('RMO_CODIGO').asString,'Consulta Registro');
		 3: flg:=tcr.edita(cdsBusco.FieldByName('RMO_CODIGO').asString,'Edição de Registro');
		 4: flg:=tcr.exclui(cdsBusco.FieldByName('RMO_CODIGO').asString,'Exclusão de Registro');
		 end;
		 if tcr.ModalResult=mrOk then
		 begin
					if CdSBUSCO.Active then
					BEGIN
						CdsBusco.Refresh;
						if trim(tcr.idretorno) <> Trim(cdsBusco.FieldByName('RMO_CODIGO').asstring) then
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

procedure TfrmPesqRequisicaoMaterialOri.Filtro;
begin
	with qBusco do
	begin
		sql.Clear;
		SQL.Add('SELECT * FROM REQUISICAO_MATERIAL_ORI');
		if StrToIntDef(LabeledEdit1.Text,-1)=-1 then
			 SqlAdd( CampoSql( 'RMO_DESCRICAO',LabeledEdit1.Text) );
	end;
end;

procedure TfrmPesqRequisicaoMaterialOri.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
	Action := caFree;
end;

procedure TfrmPesqRequisicaoMaterialOri.FormCreate(Sender: TObject);
begin
  inherited;
	Self.CampoID:='RMO_CODIGO';
	Self.ProcedureFiltro:=Filtro;
  SetTamanhoMinimo(493,691);
  SetTamanhoMaximo(493,691);
end;

procedure TfrmPesqRequisicaoMaterialOri.FormDestroy(Sender: TObject);
begin
  inherited;
  frmPesquisaSetor := nil;
end;

procedure TfrmPesqRequisicaoMaterialOri.FormShow(Sender: TObject);
begin
  inherited;
	AbreTabela:=True;
	Filtro; // abre tabelas
  btnPesquisa.Click;
end;

end.
