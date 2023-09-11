unit DiretivasItemForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseDBPesquisaForm, {{DBXpress,}  FMTBCd, DB, DBClient, Provider,
  SqlExpr, Menus, ExtCtrls, ACBrBase, ACBrCalculadora, Grids, DBGrids,
  JvExDBGrids, JvDBGrid, Buttons, ComCtrls, StdCtrls, Data.DBXInterBase, Data.DBXFirebird, ACBrEnterTab;

type
  TFrmDiretivasItem = class(TfrmBaseDBPesquisa)
    edPRF_REGISTRO: TEdit;
    CdsBuscoPRDD_REGISTRO: TIntegerField;
    CdsBuscoPRDD_DESCRICAO: TStringField;
    CdsBuscoPRDD_SIGLA: TStringField;
    CdsBuscoPDI_REGISTRO: TIntegerField;
    procedure FormCreate(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure btnNovoClick(Sender: tObject);
  private
    procedure Filtra;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDiretivasItem: TFrmDiretivasItem;

implementation

USES Uteis, InicioDB, EditDiretivaItemForm;

{$R *.dfm}

procedure TFrmDiretivasItem.FormCreate(Sender: tObject);
begin
  inherited;
  self.SetTamanhoMinimo(514,900);
  Self.CampoID:='PDI_REGISTRO';
  Self.ProcedureFiltro:=Filtra;
  aCaption:='Diretivas';
end;

procedure TFrmDiretivasItem.Filtra;
var vOrd: string;
begin
     with qBusco do
     begin
          sql.Clear;
          SQL.Add('Select A.PDI_REGISTRO, A.PRDD_REGISTRO, B.PRDD_DESCRICAO, B.PRDD_SIGLA');
          SQL.Add('from PRD_DIRETIVA_ITEM A');
          SQL.Add('     join PRD_DIRETIVA B ON B.EMP_CODIGO='+qStr(DBINICIO.Empresa.EMP_CODIGO)+' AND B.prdd_registro=A.prdd_registro');
          SQL.Add('WHERE  A.prf_registro='+iNTtOsTR(StrToIntDef(edPRF_REGISTRO.Text,-1)) ) ;
          SQL.Add('Order by PDI_REGISTRO');
     end;
end;

procedure TFrmDiretivasItem.FormShow(Sender: tObject);
begin
  inherited;
  Self.Caption:= tsnotas.caption;
  AbreTabela:=True;
  Filtro; // abre tabelas
end;

procedure TFrmDiretivasItem.btnNovoClick(Sender: tObject);
var mtag: integer;
    tcr: TfrmEditDiretivaItem;
begin
  inherited;
  mtag := (sender as tComponent).Tag;
  try
     tcr := TfrmEditDiretivaItem.create( self );
     tcr.PRF_REGISTRO := StrToIntDef(edPRF_REGISTRO.TEXT,-1);
     tcr.Cds:= CdsBusco;
     case mtag of
     1: tcr.novo('Incluir Diretiva.') ;
     3: tcr.edita(CdsBuscoPDI_REGISTRO.asString,'Alterar Diretiva.');
     4: tcr.exclui(CdsBuscoPDI_REGISTRO.asString,'Exfcluir Diretiva.');
     end;
     if CdSBUSCO.Active then
        CdsBusco.Refresh;
  finally
    tcr.close;
    freeandnil(tcr);
  end;
end;

end.
