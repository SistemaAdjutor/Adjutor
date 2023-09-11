unit uPesqGancho;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBPesquisaForm, Data.DB, Data.DBXFirebird, Data.FMTBcd, Vcl.Menus, Datasnap.DBClient, Datasnap.Provider, Vcl.ExtCtrls, Data.SqlExpr, ACBrEnterTab, ACBrBase,
  ACBrCalculadora, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.Buttons;

type
  TfrmPesqGancho = class(TfrmBaseDBPesquisa)
    LabeledEdit1: TLabeledEdit;
    cdsBuscoGAN_CODIGO: TIntegerField;
    cdsBuscoGAN_NOME: TStringField;
    cdsBuscoGAN_QTD_ESPIRAS: TSingleField;
    procedure FormShow(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
  private
    { Private declarations }
  public
    procedure Filtro;
  end;

var
  frmPesqGancho: TfrmPesqGancho;

implementation

{$R *.dfm}
uses uteis , uganchoedit;

procedure TfrmPesqGancho.btnNovoClick(Sender: TObject);
var mtag: integer;
    tcr: TfrmGanchoEdit;
    flg: boolean;
begin
  inherited;
     mtag := (sender as tComponent).Tag;
     tcr := TfrmGanchoEdit.create( self );
  try
     case mtag of
     1: flg:=tcr.novo('Novo Registro') ;
		 2: tcr.Consulta(cdsBusco.FieldByName('GAN_CODIGO').asString,'Consulta Registro');
		 3: flg:=tcr.edita(cdsBusco.FieldByName('GAN_CODIGO').asString,'Edição de Registro');
     4: flg:=tcr.exclui(cdsBusco.FieldByName('GAN_CODIGO').asString,'Exclusão de Registro');
     end;
     if tcr.ModalResult=mrOk then
     begin
          if CdSBUSCO.Active then
          BEGIN
            CdsBusco.Refresh;
						if trim(tcr.idretorno) <> Trim(cdsBusco.FieldByName('GAN_CODIGO').asstring) then
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

procedure TfrmPesqGancho.Filtro;
begin
	with qBusco do
	begin
		sql.Clear;
    sql.Text := 'select * from gancho';

		if StrToIntDef(LabeledEdit1.Text,-1)=-1 then
			 SqlAdd( CampoSql( 'GAN_NOME',LabeledEdit1.Text) )
		else
			 SqlAdd( CampoSql( 'GAN_Codigo',LabeledEdit1.Text) );
		//SqlAdd( CampoSql('Descricao',LabeledEdit1.Text));
	end;
end;

procedure TfrmPesqGancho.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:= caFree;
end;

procedure TfrmPesqGancho.FormCreate(Sender: TObject);
begin
  inherited;
	Self.CampoID:='GAN_CODIGO';
  Self.ProcedureFiltro:=Filtro;
end;

procedure TfrmPesqGancho.FormDestroy(Sender: TObject);
begin
  inherited;
  frmPesqGancho := NIL;
end;

procedure TfrmPesqGancho.FormResize(Sender: TObject);
begin
  inherited;
  Height := 493;
  Width := 846;
end;

procedure TfrmPesqGancho.FormShow(Sender: TObject);
begin
  inherited;
  btnPesquisa.Click;
end;

end.
