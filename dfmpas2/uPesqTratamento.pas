unit uPesqTratamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBPesquisaForm, Data.DB, Data.DBXFirebird, Data.FMTBcd, Vcl.Menus, Datasnap.DBClient, Datasnap.Provider, Vcl.ExtCtrls, Data.SqlExpr, ACBrEnterTab, ACBrBase,
  ACBrCalculadora, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.Buttons;

type
  TfrmPesqTratamento = class(TfrmBaseDBPesquisa)
    LabeledEdit1: TLabeledEdit;
    cdsBuscoTSU_CODIGO: TIntegerField;
    cdsBuscoTSU_NOME: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
  private
    { Private declarations }
  public
    procedure filtro;
  end;

var
  frmPesqTratamento: TfrmPesqTratamento;

implementation

uses uteis, uTratamentoEDIT;
{$R *.dfm}

procedure TfrmPesqTratamento.btnNovoClick(Sender: TObject);

var mtag: integer;
    tcr: TfrmTratamentoEdit;
    flg: boolean;
begin
  inherited;
     mtag := (sender as tComponent).Tag;
     tcr := TfrmTratamentoEdit.create( self );
  try
     case mtag of
     1: flg:=tcr.novo('Novo Registro') ;
		 2: tcr.Consulta(cdsBusco.FieldByName('TSU_CODIGO').asString,'Consulta Registro');
		 3: flg:=tcr.edita(cdsBusco.FieldByName('TSU_CODIGO').asString,'Edição de Registro');
     4: flg:=tcr.exclui(cdsBusco.FieldByName('TSU_CODIGO').asString,'Exclusão de Registro');
     end;
     if tcr.ModalResult=mrOk then
     begin
          if CdSBUSCO.Active then
          BEGIN
            CdsBusco.Refresh;
						if trim(tcr.idretorno) <> Trim(cdsBusco.FieldByName('TSU_CODIGO').asstring) then
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

procedure TfrmPesqTratamento.filtro;
begin
	with qBusco do
	begin
		sql.Clear;
    sql.Text := 'select * from TRATAMENTO_SUPERFICIAL';

		if StrToIntDef(LabeledEdit1.Text,-1)=-1 then
			 SqlAdd( CampoSql( 'tsu_nome',LabeledEdit1.Text) )
		else
			 SqlAdd( CampoSql( 'tsu_Codigo',LabeledEdit1.Text) );
		//SqlAdd( CampoSql('Descricao',LabeledEdit1.Text));
	end;
end;

procedure TfrmPesqTratamento.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TfrmPesqTratamento.FormCreate(Sender: TObject);
begin
  inherited;
	Self.CampoID:='TSU_CODIGO';
  Self.ProcedureFiltro:=Filtro;
end;

procedure TfrmPesqTratamento.FormDestroy(Sender: TObject);
begin
  inherited;
  frmPesqTratamento := nil;
end;

procedure TfrmPesqTratamento.FormResize(Sender: TObject);
begin
  inherited;
  Height := 493;
  Width := 846;
end;

procedure TfrmPesqTratamento.FormShow(Sender: TObject);
begin
  inherited;
  btnPesquisa.Click;
end;

end.
