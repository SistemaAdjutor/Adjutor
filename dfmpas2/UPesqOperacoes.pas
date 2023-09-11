unit UPesqOperacoes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBPesquisaForm, Data.DB, Data.DBXFirebird, Data.FMTBcd, Vcl.Menus, Datasnap.DBClient, Datasnap.Provider, Vcl.ExtCtrls, Data.SqlExpr, ACBrEnterTab, ACBrBase,
  ACBrCalculadora, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.Buttons;

type
  TfmPesqOperacoes = class(TfrmBaseDBPesquisa)
    LabeledEdit1: TLabeledEdit;
    cdsBuscoOPE_CODIGO: TIntegerField;
    cdsBuscoOPE_DESCRICAO: TStringField;
    qBuscoOPE_CODIGO: TIntegerField;
    qBuscoOPE_DESCRICAO: TStringField;
    cdsBuscoOPE_NOME: TStringField;
    cdsBuscoOPE_CUSTOHORA: TFMTBCDField;
    cdsBuscoPCX_CODIGO: TStringField;
    cdsBuscoPCX_DESCRI: TStringField;
    qBuscoOPE_NOME: TStringField;
    qBuscoOPE_CUSTOHORA: TFMTBCDField;
    qBuscoPCX_CODIGO: TStringField;
    qBuscoPCX_DESCRI: TStringField;
    qBuscoEQP_DESCRICAO: TStringField;
    cdsBuscoEQP_DESCRICAO: TStringField;
    qBuscoSET_DESCRICAO: TStringField;
    cdsBuscoSET_DESCRICAO: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FiltraOperacoes;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmPesqOperacoes: TfmPesqOperacoes;

implementation

{$R *.dfm}

uses Uoperacoes, Uteis, InicioDB;

{ TfmPesqOperacoes }

procedure TfmPesqOperacoes.btnNovoClick(Sender: TObject);
var mtag: integer;
    tcr: TfmOperacoes;
    flg: boolean;
begin
  inherited;
     mtag := (sender as tComponent).Tag;
     tcr := TfmOperacoes.create( self );
  try
     case mtag of
     1: flg:=tcr.novo('Novo Registro') ;
		 2: tcr.Consulta(cdsBusco.FieldByName('ope_Codigo').asString,'Consulta Registro');
		 3: flg:=tcr.edita(cdsBusco.FieldByName('ope_Codigo').asString,'Edição de Registro');
     4: flg:=tcr.exclui(cdsBusco.FieldByName('ope_Codigo').asString,'Exclusão de Registro');
     end;
     if tcr.ModalResult=mrOk then
     begin
          if CdSBUSCO.Active then
          BEGIN
            CdsBusco.Refresh;
						if trim(tcr.idretorno) <> Trim(cdsBusco.FieldByName('ope_Codigo').asstring) then
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

procedure TfmPesqOperacoes.FiltraOperacoes;
var vOrd: string;
begin
  inherited;
  with qBusco do
  begin
    sql.Clear;
    SQL.Add('select ope.*, pc.PCX_DESCRI, eq.EQP_DESCRICAO , se.SET_DESCRICAO from operacoes ope ');
    SQL.Add(' LEFT JOIN PCX0000 pc ON (pc.PCX_CODIGO = ope.PCX_CODIGO) ');
    SQL.Add(' LEFT JOIN EQUIPAMENTO eq ON (eq.EQP_CODIGO = ope.EQP_CODIGO) ');
    SQL.Add(' LEFT JOIN SETOR se ON (se.SET_CODIGO = ope.SET_CODIGO) ');
    if DBINICIO.Exclusivo('ORDEMPRODUCAO') then
      SqlAdd(' ope.emp_codigo = '+QuotedStr(DBInicio.Empresa.EMP_CODIGO));

    if StrToIntDef(LabeledEdit1.Text,-1)=-1 then
			 SqlAdd( CampoSql( 'ope_Descricao',LabeledEdit1.Text) )
    else
			 SqlAdd( CampoSql( 'ope_Codigo',LabeledEdit1.Text) );
  end;
end;

procedure TfmPesqOperacoes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TfmPesqOperacoes.FormCreate(Sender: TObject);
begin
  inherited;

	Self.CampoID:='ope_Codigo';
  Self.ProcedureFiltro:=FiltraOperacoes;
end;

procedure TfmPesqOperacoes.FormDestroy(Sender: TObject);
begin
  inherited;
  fmPesqOperacoes := nil;
end;

procedure TfmPesqOperacoes.FormShow(Sender: TObject);
begin
  inherited;
  AbreTabela:=True;
  Filtro; // abre tabelas
end;

end.
