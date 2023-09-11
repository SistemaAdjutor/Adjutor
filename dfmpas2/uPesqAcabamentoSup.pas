unit uPesqAcabamentoSup;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBPesquisaForm, Data.DB, Data.DBXFirebird, Data.FMTBcd, Vcl.Menus, Datasnap.DBClient, Datasnap.Provider, Vcl.ExtCtrls, Data.SqlExpr, ACBrEnterTab, ACBrBase,
  ACBrCalculadora, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.Buttons;

type
  TfrmPesqAcabamentoSup = class(TfrmBaseDBPesquisa)
    cdsBuscoASU_CODIGO: TIntegerField;
    cdsBuscoASU_NOME: TStringField;
    LabeledEdit1: TLabeledEdit;
    procedure btnNovoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    procedure filtro;
  end;

var
  frmPesqAcabamentoSup: TfrmPesqAcabamentoSup;

implementation

{$R *.dfm}

{ TfrmPesqAcabamentoSup }
uses uteis , uacabamentosupedit;

procedure TfrmPesqAcabamentoSup.btnNovoClick(Sender: TObject);
var mtag: integer;
    tcr: TfrmAcabamentoSuperEdit;
    flg: boolean;
begin
  inherited;
     mtag := (sender as tComponent).Tag;
     tcr := TfrmAcabamentoSuperEdit.create( self );
  try
     case mtag of
     1: flg:=tcr.novo('Novo Registro') ;
		 2: tcr.Consulta(cdsBusco.FieldByName('ASU_CODIGO').asString,'Consulta Registro');
		 3: flg:=tcr.edita(cdsBusco.FieldByName('ASU_CODIGO').asString,'Edição de Registro');
     4: flg:=tcr.exclui(cdsBusco.FieldByName('ASU_CODIGO').asString,'Exclusão de Registro');
     end;
     if tcr.ModalResult=mrOk then
     begin
          if CdSBUSCO.Active then
          BEGIN
            CdsBusco.Refresh;
						if trim(tcr.idretorno) <> Trim(cdsBusco.FieldByName('ASU_CODIGO').asstring) then
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

procedure TfrmPesqAcabamentoSup.filtro;
begin
	with qBusco do
	begin
		sql.Clear;
    sql.Text := 'select * from ACABAMENTO_SUPERFICIAL';

		if StrToIntDef(LabeledEdit1.Text,-1)=-1 then
			 SqlAdd( CampoSql( 'asu_NOME',LabeledEdit1.Text) )
		else
			 SqlAdd( CampoSql( 'asu_Codigo',LabeledEdit1.Text) );
		//SqlAdd( CampoSql('Descricao',LabeledEdit1.Text));
	end;
end;

procedure TfrmPesqAcabamentoSup.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action  := caFree;
end;

procedure TfrmPesqAcabamentoSup.FormCreate(Sender: TObject);
begin
  inherited;
	Self.CampoID:='ASU_CODIGO';
  Self.ProcedureFiltro:=Filtro;
end;

procedure TfrmPesqAcabamentoSup.FormDestroy(Sender: TObject);
begin
  inherited;
  frmPesqAcabamentoSup := NIL;
end;

procedure TfrmPesqAcabamentoSup.FormShow(Sender: TObject);
begin
  inherited;
  btnPesquisa.Click;
end;

end.
