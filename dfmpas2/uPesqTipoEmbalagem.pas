unit uPesqTipoEmbalagem;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBPesquisaForm, Data.DB, Data.DBXFirebird, Data.FMTBcd, Vcl.Menus, Datasnap.DBClient, Datasnap.Provider, Vcl.ExtCtrls, Data.SqlExpr, ACBrEnterTab, ACBrBase,
  ACBrCalculadora, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.Buttons,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfrmPesquisaTipoEmbalagem = class(TfrmBaseDBPesquisa)
    LabeledEdit1: TLabeledEdit;
    cdsBuscoTEM_CODIGO: TIntegerField;
    cdsBuscoTEM_DESCRICAO: TStringField;
    cdsBuscoEMP_CODIGO: TStringField;
    qBuscoTEM_CODIGO: TIntegerField;
    qBuscoTEM_DESCRICAO: TStringField;
    qBuscoEMP_CODIGO: TStringField;
    qBuscoTEM_CAPACIDADE: TFloatField;
    cdsBuscoTEM_CAPACIDADE: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure cdsBuscoCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    procedure Filtro;
  end;

var
  frmPesquisaTipoEmbalagem: TfrmPesquisaTipoEmbalagem;

implementation

{$R *.dfm}

uses uteis, uTipoEmbalagem, InicioDB;

{ TfrmPesquisaTipoEmbalagem }

procedure TfrmPesquisaTipoEmbalagem.btnNovoClick(Sender: TObject);
var mtag: integer;
		tcr: TfmTipoEmbalagem;
		flg: boolean;
begin
	inherited;
	mtag := (sender as tComponent).Tag;
  tcr := TfmTipoEmbalagem.create( self );
	try

		 case mtag of
		 1: flg:=tcr.novo('Novo Registro') ;
		 2: tcr.Consulta(cdsBusco.FieldByName('TEM_CODIGO').asString,'Consulta Registro');
		 3: flg:=tcr.edita(cdsBusco.FieldByName('TEM_CODIGO').asString,'Edição de Registro');
		 4: flg:=tcr.exclui(cdsBusco.FieldByName('TEM_CODIGO').asString,'Exclusão de Registro');
		 end;
		 if tcr.ModalResult=mrOk then
		 begin
					if CdSBUSCO.Active then
					BEGIN
						CdsBusco.Refresh;
						if trim(tcr.idretorno) <> Trim(cdsBusco.FieldByName('TEM_CODIGO').asstring) then
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

procedure TfrmPesquisaTipoEmbalagem.cdsBuscoCalcFields(DataSet: TDataSet);
begin
  inherited;
  cdsBuscoTEM_CAPACIDADE.AsInteger := 20;
end;

procedure TfrmPesquisaTipoEmbalagem.Filtro;
begin
	with qBusco do
	begin
		sql.Clear;
		SQL.Add('select * from TIPO_EMBALAGEM');
    if DBINICIO.Exclusivo('ORDEMPRODUCAO') then
      SqlAdd(' emp_codigo = '+QuotedStr(DBInicio.Empresa.EMP_CODIGO));
		if StrToIntDef(LabeledEdit1.Text,-1)=-1 then
			 SqlAdd( CampoSql( 'TEM_DESCRICAO',LabeledEdit1.Text) );
    Open;
	end;
end;

procedure TfrmPesquisaTipoEmbalagem.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
	Action := caFree;
end;

procedure TfrmPesquisaTipoEmbalagem.FormCreate(Sender: TObject);
begin
  inherited;
	Self.CampoID:='TEM_CODIGO';
	Self.ProcedureFiltro:=Filtro;
  SetTamanhoMinimo(493,691);
  SetTamanhoMaximo(493,691);
end;

procedure TfrmPesquisaTipoEmbalagem.FormDestroy(Sender: TObject);
begin
  inherited;
  frmPesquisaTipoEmbalagem := nil;
end;

procedure TfrmPesquisaTipoEmbalagem.FormShow(Sender: TObject);
begin
  inherited;
	AbreTabela:=True;
	Filtro; // abre tabelas
  btnPesquisa.Click;
end;

end.
