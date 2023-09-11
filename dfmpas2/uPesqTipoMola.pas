unit uPesqTipoMola;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBPesquisaForm, Data.DB, Data.DBXFirebird, Data.FMTBcd, Vcl.Menus, Datasnap.DBClient, Datasnap.Provider, Vcl.ExtCtrls, Data.SqlExpr, ACBrEnterTab, ACBrBase,
  ACBrCalculadora, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.Buttons;

type
  TfrmPesqTipoMola = class(TfrmBaseDBPesquisa)
    cdsBuscoPTI_CODIGO: TStringField;
    cdsBuscoPTI_DESCRI: TStringField;
    cdsBuscoPTI_SIGLA: TStringField;
    cdsBuscotim_codigo: TIntegerField;
    LabeledEdit1: TLabeledEdit;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
  private
    { Private declarations }
  public
    procedure filtro;
  end;

var
  frmPesqTipoMola: TfrmPesqTipoMola;

implementation
uses uteis, utipomolaedit;
{$R *.dfm}

procedure TfrmPesqTipoMola.btnNovoClick(Sender: TObject);

var mtag: integer;
    tcr: TfrmTipoMola;
    flg: boolean;
begin
  inherited;
     mtag := (sender as tComponent).Tag;
     tcr := TfrmTipoMola.create( self );
  try
    tcr.tipoDescricao := cdsBuscoPTI_CODIGO.asstring + ' - '+cdsBuscoPTI_DESCRI.AsString;
    tcr.codigo := cdsBuscoPTI_CODIGO.AsString;
     if cdsbusco.fieldByName('tim_codigo').isnull then
      flg:=tcr.novo('Novo Registro')
		 else
       flg:=tcr.edita(cdsBusco.FieldByName('tim_codigo').asString,'Edição de Registro');


     if tcr.ModalResult=mrOk then
     begin
          if CdSBUSCO.Active then
          BEGIN
            CdsBusco.Refresh;
						if trim(tcr.idretorno) <> Trim(cdsBusco.FieldByName('tim_codigo').asstring) then
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

procedure TfrmPesqTipoMola.filtro;
begin
	with qBusco do
	begin
		sql.Clear;
    sql.Text := 'SELECT tp.PTI_CODIGO, pti_descri, pti_sigla, tim_codigo FROM tipo_mola mo right JOIN PRD_TIPO tp ON (tp.PTI_CODIGO = mo.PTI_CODIGO)';

		if StrToIntDef(LabeledEdit1.Text,-1)=-1 then
			 SqlAdd( CampoSql( 'pti_descri',LabeledEdit1.Text) )
		else
			 SqlAdd( CampoSql( 'tp.PTI_CODIGO',LabeledEdit1.Text) );
		//SqlAdd( CampoSql('Descricao',LabeledEdit1.Text));
	end;
end;

procedure TfrmPesqTipoMola.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TfrmPesqTipoMola.FormCreate(Sender: TObject);
begin
  inherited;

	Self.CampoID:='pti_CODIGO';
  Self.ProcedureFiltro:=Filtro;
end;

procedure TfrmPesqTipoMola.FormDestroy(Sender: TObject);
begin
  inherited;
  frmPesqTipoMola := nil;
end;

procedure TfrmPesqTipoMola.FormResize(Sender: TObject);
begin
  inherited;
   Height := 493;
  Width := 846;
end;

procedure TfrmPesqTipoMola.FormShow(Sender: TObject);
begin
  inherited;
  btnPesquisa.Click;
end;

end.
