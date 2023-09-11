unit uPesqCapacidade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBPesquisaForm, Data.DB, Data.DBXFirebird, Data.FMTBcd, Vcl.Menus, Datasnap.DBClient, Datasnap.Provider, Vcl.ExtCtrls, Data.SqlExpr, ACBrEnterTab, ACBrBase,
  ACBrCalculadora, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.Buttons;

type
  TfrmPesqCapacidade = class(TfrmBaseDBPesquisa)
    LabeledEdit1: TLabeledEdit;
    cdsBuscoCAP_CODIGO: TIntegerField;
    cdsBuscoCAP_DESCRICAO: TStringField;
    cdsBuscoCAP_SUBSTITUICAO_TRIBUTARIA: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure cdsBuscoCAP_SUBSTITUICAO_TRIBUTARIAGetText(Sender: TField; var Text: string; DisplayText: Boolean);
  private
    { Private declarations }
  public
    procedure Filtro;
  end;

var
  frmPesqCapacidade: TfrmPesqCapacidade;

implementation

{$R *.dfm}

uses uteis, uCapacidade, InicioDB;

{ TfrmPesqCapacidade }

procedure TfrmPesqCapacidade.btnNovoClick(Sender: TObject);
var mtag: integer;
		tcr: TfrmCapacidade;
		flg: boolean;
begin
	inherited;
	mtag := (sender as tComponent).Tag;
  tcr := TfrmCapacidade.create( self );
	try

		 case mtag of
		 1: flg:=tcr.novo('Novo Registro') ;
		 2: tcr.Consulta(cdsBusco.FieldByName('CAP_CODIGO').asString,'Consulta Registro');
		 3: flg:=tcr.edita(cdsBusco.FieldByName('CAP_CODIGO').asString,'Edição de Registro');
		 4: flg:=tcr.exclui(cdsBusco.FieldByName('CAP_CODIGO').asString,'Exclusão de Registro');
		 end;
		 if tcr.ModalResult=mrOk then
		 begin
					if CdSBUSCO.Active then
					BEGIN
						CdsBusco.Refresh;
						if trim(tcr.idretorno) <> Trim(cdsBusco.FieldByName('CAP_CODIGO').asstring) then
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

procedure TfrmPesqCapacidade.cdsBuscoCAP_SUBSTITUICAO_TRIBUTARIAGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if Sender.AsString = 'S' then
    Text := 'Sim'
  else
    Text := 'Não';
end;

procedure TfrmPesqCapacidade.Filtro;
begin
	with qBusco do
	begin
		sql.Clear;
		SQL.Add('SELECT * FROM CAPACIDADE');
		if StrToIntDef(LabeledEdit1.Text,-1)=-1 then
			 SqlAdd( CampoSql( 'CAP_DESCRICAO',LabeledEdit1.Text) );
	end;
end;

procedure TfrmPesqCapacidade.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
	Action := caFree;
end;

procedure TfrmPesqCapacidade.FormCreate(Sender: TObject);
begin
  inherited;
	Self.CampoID:='CAP_CODIGO';
	Self.ProcedureFiltro:=Filtro;
  SetTamanhoMinimo(493,691);
  SetTamanhoMaximo(493,691);
end;

procedure TfrmPesqCapacidade.FormShow(Sender: TObject);
begin
  inherited;
	AbreTabela:=True;
	Filtro; // abre tabelas
  btnPesquisa.Click;
end;

end.
