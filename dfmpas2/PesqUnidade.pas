unit PesqUnidade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBPesquisaForm, Data.DB, Data.DBXFirebird, Data.FMTBcd, Vcl.Menus, Datasnap.DBClient, Datasnap.Provider, Vcl.ExtCtrls, Data.SqlExpr, ACBrEnterTab, ACBrBase,
  ACBrCalculadora, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.Buttons;

type
  TfrmCadUnidadeMedida = class(TfrmBaseDBPesquisa)
    LabeledEdit1: TLabeledEdit;
    cdsBuscoPRD_UNISIGLA: TStringField;
    cdsBuscoPRD_UNIDESCRI: TStringField;
    cdsBuscoPRD_UNICODIGO: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    procedure filtro;
  public
    { Public declarations }
  end;

var
  frmCadUnidadeMedida: TfrmCadUnidadeMedida;

implementation
uses uUnidade;
{$R *.dfm}

procedure TfrmCadUnidadeMedida.btnNovoClick(Sender: TObject);
var mtag: integer;
    tcr: TfrmEditUnidade;
    flg: boolean;
begin
  inherited;
     mtag := (sender as tComponent).Tag;
     tcr := TfrmEditUnidade.create( self );
  try
     case mtag of
     1: flg:=tcr.novo('Novo Registro') ;
		 2: tcr.Consulta(cdsBusco.FieldByName('PRD_UNICODIGO').asString,'Consulta Registro');
		 3: flg:=tcr.edita(cdsBusco.FieldByName('PRD_UNICODIGO').asString,'Edição de Registro');
     4: flg:=tcr.exclui(cdsBusco.FieldByName('PRD_UNICODIGO').asString,'Exclusão de Registro');
     end;
     if tcr.ModalResult=mrOk then
     begin
          if CdSBUSCO.Active then
          BEGIN
            CdsBusco.Refresh;
						if trim(tcr.idretorno) <> Trim(cdsBusco.FieldByName('PRD_UNICODIGO').asstring) then
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

procedure TfrmCadUnidadeMedida.filtro;
begin
 with qBusco do
 begin
    SQL.Text := 'SELECT * FROM PRD_UNIDADE';
   if LabeledEdit1.Text <>'' then
     SqlAdd('PRD_UNIDESCRI LIKE ' + QuotedStr('%'+LabeledEdit1.Text+'%'));

 end;
end;

procedure TfrmCadUnidadeMedida.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TfrmCadUnidadeMedida.FormCreate(Sender: TObject);
begin
  inherited;
  self.ProcedureFiltro:=Filtro;
  Self.CampoID:='PRD_UNICODIGO';
  self.Constraints.MinHeight:= 608;;
  self.Constraints.MinWidth:=580;
  self.Constraints.MaxHeight:= 0;
  self.width:=580;
  self.height:=608;
  filtro;
  btnPesquisa.Click;
end;

procedure TfrmCadUnidadeMedida.FormDestroy(Sender: TObject);
begin
  inherited;
  frmCadUnidadeMedida := nil;
end;

end.
