unit uPesqArame;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBPesquisaForm, Data.DB, Data.DBXFirebird, Data.FMTBcd, Vcl.Menus, Datasnap.DBClient, Datasnap.Provider, Vcl.ExtCtrls, Data.SqlExpr, ACBrEnterTab, ACBrBase,
  ACBrCalculadora, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.Buttons;

type
  TfrmPesqArame = class(TfrmBaseDBPesquisa)
    cdsBuscoARA_CODIGO: TIntegerField;
    cdsBuscoNOME: TStringField;
    LabeledEdit1: TLabeledEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    procedure filtro;
  end;

var
  frmPesqArame: TfrmPesqArame;

implementation

{$R *.dfm}
uses uteis,uArameEdit;

procedure TfrmPesqArame.btnNovoClick(Sender: TObject);
var mtag: integer;
    tcr: TfrmArameEdit;
    flg: boolean;
begin
  inherited;
     mtag := (sender as tComponent).Tag;
     tcr := TfrmArameEdit.create( self );
  try
     case mtag of
     1: flg:=tcr.novo('Novo Registro') ;
		 2: tcr.Consulta(cdsBusco.FieldByName('ARA_CODIGO').asString,'Consulta Registro');
		 3: flg:=tcr.edita(cdsBusco.FieldByName('ARA_CODIGO').asString,'Edi��o de Registro');
     4: flg:=tcr.exclui(cdsBusco.FieldByName('ARA_CODIGO').asString,'Exclus�o de Registro');
     end;
     if tcr.ModalResult=mrOk then
     begin
          if CdSBUSCO.Active then
          BEGIN
            CdsBusco.Refresh;
						if trim(tcr.idretorno) <> Trim(cdsBusco.FieldByName('ARA_CODIGO').asstring) then
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

procedure TfrmPesqArame.filtro;
begin
	with qBusco do
	begin
		sql.Clear;
    sql.Text := 'select * from arame';

		if StrToIntDef(LabeledEdit1.Text,-1)=-1 then
			 SqlAdd( CampoSql( 'nome',LabeledEdit1.Text) )
		else
			 SqlAdd( CampoSql( 'ara_Codigo',LabeledEdit1.Text) );
		//SqlAdd( CampoSql('Descricao',LabeledEdit1.Text));
	end;
end;

procedure TfrmPesqArame.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:= caFree;
end;

procedure TfrmPesqArame.FormCreate(Sender: TObject);
begin
  inherited;
	Self.CampoID:='ARA_CODIGO';
  Self.ProcedureFiltro:=Filtro;
end;

procedure TfrmPesqArame.FormDestroy(Sender: TObject);
begin
  inherited;
  frmPesqArame := nil;
end;

procedure TfrmPesqArame.FormResize(Sender: TObject);
begin
  inherited;
  Height := 493;
  Width := 846;
end;

procedure TfrmPesqArame.FormShow(Sender: TObject);
begin
  inherited;
  btnPesquisa.Click;
end;

end.
