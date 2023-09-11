unit uPesqArtefato;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBPesquisaForm, Data.DB, Data.DBXFirebird, Data.FMTBcd, Vcl.Menus, Datasnap.DBClient, Datasnap.Provider, Vcl.ExtCtrls, Data.SqlExpr, ACBrEnterTab, ACBrBase,
  ACBrCalculadora, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.Buttons;

type
  TfrmPesqArtefato = class(TfrmBaseDBPesquisa)
    LabeledEdit1: TLabeledEdit;
    cdsBuscoART_CODIGO: TIntegerField;
    cdsBuscoART_NOME: TStringField;
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
  frmPesqArtefato: TfrmPesqArtefato;

implementation

{$R *.dfm}
uses uteis, uartefatoedit;

procedure TfrmPesqArtefato.btnNovoClick(Sender: TObject);
var mtag: integer;
    tcr: tfrmArtefato;
    flg: boolean;
begin
  inherited;
     mtag := (sender as tComponent).Tag;
     tcr := tfrmArtefato.create( self );
  try
     case mtag of
     1: flg:=tcr.novo('Novo Registro') ;
		 2: tcr.Consulta(cdsBusco.FieldByName('ART_CODIGO').asString,'Consulta Registro');
		 3: flg:=tcr.edita(cdsBusco.FieldByName('ART_CODIGO').asString,'Edição de Registro');
     4: flg:=tcr.exclui(cdsBusco.FieldByName('ART_CODIGO').asString,'Exclusão de Registro');
     end;
     if tcr.ModalResult=mrOk then
     begin
          if CdSBUSCO.Active then
          BEGIN
            CdsBusco.Refresh;
						if trim(tcr.idretorno) <> Trim(cdsBusco.FieldByName('ART_CODIGO').asstring) then
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

procedure TfrmPesqArtefato.filtro;
begin
	with qBusco do
	begin
		sql.Clear;
    sql.Text := 'select * from artefato';

		if StrToIntDef(LabeledEdit1.Text,-1)=-1 then
			 SqlAdd( CampoSql( 'art_nome',LabeledEdit1.Text) )
		else
			 SqlAdd( CampoSql( 'art_Codigo',LabeledEdit1.Text) );
		//SqlAdd( CampoSql('Descricao',LabeledEdit1.Text));
	end;
end;

procedure TfrmPesqArtefato.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
	Action := caFree;
end;

procedure TfrmPesqArtefato.FormCreate(Sender: TObject);
begin
  inherited;
	Self.CampoID:='ART_CODIGO';
  Self.ProcedureFiltro:=Filtro;
end;

procedure TfrmPesqArtefato.FormDestroy(Sender: TObject);
begin
  inherited;
  frmPesqArtefato := nil;
end;

procedure TfrmPesqArtefato.FormResize(Sender: TObject);
begin
  inherited;
  Height := 493;
  Width := 846;
end;

procedure TfrmPesqArtefato.FormShow(Sender: TObject);
begin
  inherited;
  btnPesquisa.Click;
end;

end.
