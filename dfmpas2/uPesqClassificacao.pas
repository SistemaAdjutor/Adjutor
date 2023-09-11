unit uPesqClassificacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBPesquisaForm, Data.DB, Data.DBXFirebird, Data.FMTBcd, Vcl.Menus, Datasnap.DBClient, Datasnap.Provider, Vcl.ExtCtrls, Data.SqlExpr, ACBrEnterTab, ACBrBase,
  ACBrCalculadora, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.Buttons;

type
  TfrmPesqClassificacao = class(TfrmBaseDBPesquisa)
    LabeledEdit1: TLabeledEdit;
    cdsBuscoCMO_CODIGO: TIntegerField;
    cdsBuscoCMO_NOME: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
  private
    { Private declarations }
  public
    procedure filtro;
  end;

var
  frmPesqClassificacao: TfrmPesqClassificacao;

implementation

{$R *.dfm}
uses uteis, uclassificacaoedit;

{ TfrmPesqClassificacao }

procedure TfrmPesqClassificacao.btnNovoClick(Sender: TObject);
var mtag: integer;
    tcr: TfrmClassificacao;
    flg: boolean;
begin
  inherited;
     mtag := (sender as tComponent).Tag;
     tcr := TfrmClassificacao.create( self );
  try
     case mtag of
     1: flg:=tcr.novo('Novo Registro') ;
		 2: tcr.Consulta(cdsBusco.FieldByName('CMO_CODIGO').asString,'Consulta Registro');
		 3: flg:=tcr.edita(cdsBusco.FieldByName('CMO_CODIGO').asString,'Edição de Registro');
     4: flg:=tcr.exclui(cdsBusco.FieldByName('CMO_CODIGO').asString,'Exclusão de Registro');
     end;
     if tcr.ModalResult=mrOk then
     begin
          if CdSBUSCO.Active then
          BEGIN
            CdsBusco.Refresh;
						if trim(tcr.idretorno) <> Trim(cdsBusco.FieldByName('CMO_CODIGO').asstring) then
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

procedure TfrmPesqClassificacao.filtro;
begin
	with qBusco do
	begin
		sql.Clear;
    sql.Text := 'select * from CLASSIFICACAO_MOLA';

		if StrToIntDef(LabeledEdit1.Text,-1)=-1 then
			 SqlAdd( CampoSql( 'CMO_NOME',LabeledEdit1.Text) )
		else
			 SqlAdd( CampoSql( 'cmo_Codigo',LabeledEdit1.Text) );
		//SqlAdd( CampoSql('Descricao',LabeledEdit1.Text));
	end;
end;

procedure TfrmPesqClassificacao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
 Action := caFree;
end;

procedure TfrmPesqClassificacao.FormCreate(Sender: TObject);
begin
  inherited;
  inherited;
	Self.CampoID:='CMO_CODIGO';
  Self.ProcedureFiltro:=Filtro;
end;

procedure TfrmPesqClassificacao.FormDestroy(Sender: TObject);
begin
  inherited;
  frmPesqClassificacao := nil;
end;

procedure TfrmPesqClassificacao.FormResize(Sender: TObject);
begin
  inherited;
  Height := 493;
  Width := 846;
end;

procedure TfrmPesqClassificacao.FormShow(Sender: TObject);
begin
  inherited;
  btnPesquisa.Click;
end;

end.
