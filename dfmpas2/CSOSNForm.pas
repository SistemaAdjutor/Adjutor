unit CSOSNForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseDBPesquisaForm, {{DBXpress,} FMTBCd, DB, DBClient, Provider,
  SqlExpr, Menus, ExtCtrls, ACBrBase, ACBrCalculadora, Grids, DBGrids,
  JvExDBGrids, JvDBGrid, Buttons, ComCtrls, StdCtrls, Data.DBXInterBase,
  Data.DBXFirebird, ACBrEnterTab;

type
  TfrmCSOSN = class(TfrmBaseDBPesquisa)
    EDT1: TLabeledEdit;
    cbb1: TComboBox;
    lbl1: TLabel;
    CdsBuscoCSON_ID: TIntegerField;
    CdsBuscoCSON_COD: TStringField;
    CdsBuscoCSON_DESCRICAO: TStringField;
    procedure FormCreate(Sender: tObject);
    procedure btnNovoClick(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    procedure FiltraCSON;
    { Private declarations }
  public
    { Public declarations }
    procedure BotoesAcesso;
  end;

var
  frmCSOSN: TfrmCSOSN;

implementation

uses Uteis, InicioDB, EditCSOSNForm, BaseTelaRelatorioForm, Ope0001;

{$R *.dfm}

procedure TfrmCSOSN.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if not assigned(FormOperFisc) then
     Action := CaFree;
end;

procedure TfrmCSOSN.FormCreate(Sender: tObject);
begin
  inherited;
  self.SetTamanhoMinimo(514,900);
  Self.CampoID:='CSON_ID';
  Self.ProcedureFiltro:=FiltraCSON;
  aCaption:='Tabela CSOSN (Código de Situação da Operação no Simples Nacional)';
end;

procedure TfrmCSOSN.FormDestroy(Sender: TObject);
begin
  inherited;
  if not assigned(FormOperFisc) then
     FrmCSOSN := Nil;
end;

procedure TfrmCSOSN.FormResize(Sender: TObject);
begin
  inherited;
  Width := 675;
  Height := 455;
end;

procedure TfrmCSOSN.FiltraCSON;
var vOrd: string;
begin
     with qBusco do
     begin
          sql.Clear;
          SQL.Add('Select * from CSON0000');
          if StrToIntDef(EDT1.Text,-1)=-1 then
             SqlAdd( CampoSql( 'CSON_DESCRICAO',EDT1.Text) )
          else
             SqlAdd( CampoSql( 'CSON_COD',eDT1.Text) );
          CASE cbb1.ItemIndex of
          0: vord := 'CSON_COD';
          1: vord := 'CSON_DESCRICAO';
          end;
          sql.Add('Order By '+vOrd);
     end;
end;



procedure TfrmCSOSN.BotoesAcesso;
begin
     if assigned(frmCSOSN) then
     begin
       btnNovo.Enabled := Uteis.AcessoUsuario('CadastrosFiscal',DBInicio.Usuario.CODIGO,frmCSOSN).Incluir;
       btnExclui.Enabled := Uteis.AcessoUsuario('CadastrosFiscal',DBInicio.Usuario.CODIGO,frmCSOSN).Exluir;
       btnImprime.Enabled := Uteis.AcessoUsuario('CadastrosFiscal',DBInicio.Usuario.CODIGO,frmCSOSN).Relatorio;
       btnEdita.Enabled := Uteis.AcessoUsuario('CadastrosFiscal',DBInicio.Usuario.CODIGO,frmCSOSN).Alterar;
     end;
end;

procedure TfrmCSOSN.btnNovoClick(Sender: tObject);
var mtag: integer;
    tcr: TfrmEditCSOSN;
    flg: boolean;
begin
  inherited;
  mtag := (sender as tComponent).Tag;
  try
     tcr := TfrmEditCSOSN.create( self );
     case mtag of
     1: flg:=tcr.novo('Novo Registro Tabela CSOSN') ;
     2: tcr.Consulta(CdsBuscocson_ID.asString,'Consulta Registro Tabela CSOSN');
     3: flg:=tcr.edita(CdsBuscoCSON_ID.asString,'Edição de Registro Tabela CSOSN');
     4: flg:=tcr.exclui(CdsBuscoCSON_ID.asString,'Exclusão de Registro Tabela CSOSN');
     end;
     if tcr.ModalResult=mrOk then
     begin
          if CdSBUSCO.Active then
          BEGIN
            CdsBusco.Refresh;
            if trim(tcr.idretorno) <> Trim(CdsBuscoCSON_ID.asstring) then
            begin
                 CdsBusco.Locate( CampoID, tcr.IDRetorno, [loCaseInsensitive] ) ;
            end;
          END;
     end;
  finally
    tcr.close;
    freeandnil(tcr);
  end;
end;

procedure TfrmCSOSN.FormShow(Sender: tObject);
begin
  inherited;
  AbreTabela:=True;
  Filtro; // abre tabelas
end;

end.
