unit UPesqOcorrencia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBPesquisaForm, Data.DB, Data.DBXFirebird, Data.FMTBcd, Vcl.Menus, Datasnap.DBClient, Datasnap.Provider, Vcl.ExtCtrls, Data.SqlExpr, ACBrEnterTab, ACBrBase,
  ACBrCalculadora, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.Buttons;

type
  TfmPesqOcorrencia = class(TfrmBaseDBPesquisa)
    LabeledEdit1: TLabeledEdit;
    procedure AdicionarColunas;
    procedure FormCreate(Sender: TObject);
    procedure FiltraOcorrencia;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmPesqOcorrencia: TfmPesqOcorrencia;

implementation

{$R *.dfm}

uses Uteis, UOcorrencia;

{ TfmPesqOcorrencia }

procedure TfmPesqOcorrencia.AdicionarColunas;
begin
  inherited;
  DBGrid.Columns.Add;
  DBGrid.Columns[0].FieldName := 'OCO_CODIGO';
  DBGrid.Columns[0].Title.Caption := 'Código';
  DBGrid.Columns.Add;
  DBGrid.Columns[1].FieldName := 'OCO_Descricao';
  DBGrid.Columns[1].Title.Caption := 'Descrição';
  DBGrid.Columns.Add;
  DBGrid.Columns[2].FieldName := 'OCO_TIPO';
  DBGrid.Columns[2].Title.Caption := 'Tipo';

end;

procedure TfmPesqOcorrencia.btnNovoClick(Sender: TObject);
var mtag: integer;
    tcr: TfmOcorrencia;
    flg: boolean;
begin
  inherited;
  mtag := (sender as tComponent).Tag;
  try
     tcr := TfmOcorrencia.create( self );
     case mtag of
     1: flg:=tcr.novo('Novo Registro') ;
     2: tcr.Consulta(cdsBusco.FieldByName('OCO_CODIGO').asString,'Consulta Registro');
     3: flg:=tcr.edita(cdsBusco.FieldByName('OCO_CODIGO').asString,'Edição de Registro');
     4: flg:=tcr.exclui(cdsBusco.FieldByName('OCO_CODIGO').asString,'Exclusão de Registro');
     end;
     if tcr.ModalResult=mrOk then
     begin
          if CdSBUSCO.Active then
          BEGIN
            CdsBusco.Refresh;
            if trim(tcr.idretorno) <> Trim(cdsBusco.FieldByName('OCO_CODIGO').asstring) then
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

procedure TfmPesqOcorrencia.FiltraOcorrencia;
var vOrd: string;
begin
  inherited;
  with qBusco do
  begin
    sql.Clear;
    SQL.Add('select oco_codigo, oco_descricao, '+
             'case oco_tipo                    '+
             'when 1 then ''INFORMATIVA''      '+
             'when 2 then ''CRÍTICA''          '+
             'end AS OCO_TIPO                      '+
             'from ocorrencia');
    if StrToIntDef(LabeledEdit1.Text,-1)=-1 then
       SqlAdd( CampoSql( 'OCO_DESCRICAO',LabeledEdit1.Text) )
    else
       SqlAdd( CampoSql( 'OCO_CODIGO',LabeledEdit1.Text) );

  end;
end;

procedure TfmPesqOcorrencia.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TfmPesqOcorrencia.FormCreate(Sender: TObject);
begin
  inherited;
  AdicionarColunas;
  Self.CampoID:='OCO_CODIGO';
  Self.ProcedureFiltro:=FiltraOcorrencia;
end;

procedure TfmPesqOcorrencia.FormDestroy(Sender: TObject);
begin
  inherited;
  fmPesqOcorrencia := nil;
end;

procedure TfmPesqOcorrencia.FormResize(Sender: TObject);
begin
  inherited;
  Height := 493;
  Width := 691;
end;

procedure TfmPesqOcorrencia.FormShow(Sender: TObject);
begin
  inherited;
  AbreTabela:=True;
  Filtro; // abre tabelas
end;

end.
