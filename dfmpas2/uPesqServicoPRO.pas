unit uPesqServicoPRO;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBPesquisaFDAC, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  Data.DB, cxDBData, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Phys.FBDef, FireDAC.UI.Intf, FireDAC.VCLUI.Wait, FireDAC.VCLUI.Error, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.FB, frxClass, Vcl.Menus, FireDAC.Comp.Client,
  FireDAC.Comp.UI, FireDAC.Phys.IBBase, FireDAC.Comp.DataSet, cxLocalization, ACBrBase, ACBrEnterTab, JvExControls, JvArrowButton, Vcl.StdCtrls, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, Vcl.Buttons, Vcl.ExtCtrls, Vcl.ComCtrls, ACBrCalculadora;

type
  TfrmServicos = class(TfrmBaseDBPesquisaFDAC)
    cdsBuscaSRV_CODIGO: TIntegerField;
    cdsBuscaSRV_NOME: TStringField;
    LabeledEdit1: TLabeledEdit;
    cxgrd1DBTableView1SRV_CODIGO: TcxGridDBColumn;
    cxgrd1DBTableView1SRV_NOME: TcxGridDBColumn;
    cdsBuscaSET_DESCRICAO: TStringField;
    cxgrd1DBTableView1SET_DESCRICAO: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
  private
    { Private declarations }
  public
   procedure pesquisa;
  end;

var
  frmServicos: TfrmServicos;

implementation

uses iniciodb, uEditServicoPro;
{$R *.dfm}

{ TfrmBaseDBPesquisaFDAC2 }

procedure TfrmServicos.btnNovoClick(Sender: TObject);
var mtag: integer;
   	flg: boolean;
begin
	inherited;
	mtag := (sender as tComponent).Tag;
  frmEditServico := tfrmEditServico.create( self );
	try

		 case mtag of
		 1: flg:=frmEditServico.novo('Novo serviço') ;
		 2: frmEditServico.Consulta(cdsBusca.FieldByName('SRV_CODIGO').asString,'Consulta ao serviço nº '+ cdsBusca.FieldByName('SRV_CODIGO').asString );
		 3: flg:=frmEditServico.edita(cdsBusca.FieldByName('SRV_CODIGO').asString,'Edição do serviço nº '+cdsBusca.FieldByName('SRV_CODIGO').asString);
		 4: flg:=frmEditServico.exclui(cdsBusca.FieldByName('SRV_CODIGO').asString,'Exclusão de Registro');
		 end;
		 if frmEditServico.ModalResult=mrOk then
		 begin
					if CdSBUSCa.Active then
					BEGIN
						CdsBusca.Refresh;
						if trim(frmEditServico.idretorno) <> Trim(cdsBusca.FieldByName('SRV_CODIGO').asstring) then
						begin
								 CdsBusca.Locate( CampoID, frmEditServico.IDRetorno, [loCaseInsensitive] ) ;
						end;
					END;
		 end;
	finally
		frmEditServico.close;
		freeandnil(frmEditServico);
    cdsBusca.Refresh;
	end;
end;

procedure TfrmServicos.FormCreate(Sender: TObject);
begin
  inherited;

  Self.ProcedureFiltro:=Pesquisa;
  self.Constraints.MinHeight:= 612;;
  self.Constraints.MinWidth:=1175;
  self.Constraints.MaxHeight:= 0;
  self.width:=1175;
  self.height:=612;
  //Menu :=
  filtro;
  self.CampoID :=   'SRV_CODIGO';
end;

procedure TfrmServicos.FormDestroy(Sender: TObject);
begin
  inherited;
  frmServicos:= nil;
end;

procedure TfrmServicos.pesquisa;
begin
  with cdsBusca,sql do
  begin
    cdsBusca.SQL.Text := 'SELECT srv_codigo,srv_nome, set_descricao from servico se left join setor st on (se.set_codigo = st.set_codigo)';
    if DBINICIO.Exclusivo('ORDEMPRODUCAO') then
      SqlAdd(' se.emp_codigo = '+QuotedStr(DBInicio.Empresa.EMP_CODIGO));
    if LabeledEdit1.text <> '' then
      SqlAdd(' srv_nome CONTAINING '+ QuotedStr(LabeledEdit1.Text));

  end;
end;

end.
