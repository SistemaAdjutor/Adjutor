unit uPesqTurno;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBPesquisaForm, Data.DB, Data.DBXFirebird, Data.FMTBcd, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Menus, Datasnap.DBClient, Datasnap.Provider, Data.SqlExpr,
  ACBrEnterTab, ACBrBase, ACBrCalculadora, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.Buttons;

type
  TfrmPesqTurnos = class(TfrmBaseDBPesquisa)
    edPesquisaLivre: TLabeledEdit;
    cdsBuscoTPR_CODIGO: TIntegerField;
    cdsBuscoTRP_NOME: TStringField;
    cdsBuscoEMP_CODIGO: TStringField;
    cdsBuscoTRP_ATIVO: TStringField;
    cdsBuscoTRP_DIASSEMANAS: TIntegerField;
    cdsBuscoTRP_INICIO: TTimeField;
    cdsBuscoTRP_DESCRICAO_INT1: TStringField;
    cdsBuscoTRP_DESCRICAO_INT2: TStringField;
    cdsBuscoTRP_DESCRICAO_INT3: TStringField;
    cdsBuscoTRP_TEMPOINTERVALO1: TTimeField;
    cdsBuscoTRP_FIM: TTimeField;
    cdsBuscoTRP_TEMPOINTERVALO2: TTimeField;
    cdsBuscoTRP_TEMPOINTERVALO3: TTimeField;
    procedure FormDestroy(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cdsBuscoTRP_ATIVOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
  private
    { Private declarations }
  public
    procedure filtro ;
    procedure PadraoPesquisa;
  end;

var
  frmPesqTurnos: TfrmPesqTurnos;

implementation

{$R *.dfm}
    uses uturno, uteis, InicioDB;
{ TfrmBaseDBPesquisa1 }

procedure TfrmPesqTurnos.btnNovoClick(Sender: TObject);
var mtag: integer;
		tcr: TfrmTurnos;
		flg: boolean;

begin
	inherited;
	mtag := (sender as tComponent).Tag;
  tcr := TfrmTurnos.create( self );

	try

		 case mtag of
		 1: flg:=tcr.novo('Novo turno') ;
		 2: begin
         tcr.Consulta(cdsBusco.FieldByName('TPR_CODIGO').asString,'Turno - Consulta Registro');
         tcr.btnOk.Enabled := False;
        end;
		 3: flg:=tcr.edita(cdsBusco.FieldByName('TPR_CODIGO').asString,'Turno - Edição de Registro');
		 4: begin
         if (MessageDlg('Deseja excluir o turno ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
         begin
           tcr.Exclui(cdsBusco.FieldByName('TPR_CODIGO').asString,'Excluindo')
           //flg:= tcr.ExcluiTarefa(cdsBusco.FieldByName('TRF_REGISTRO').AsInteger);
         end;
        end;
		 end;
     btnPesquisa.Click;
		 if ( mtag <> 4) then
		 begin
					if (CdsBusco.Active) and (tcr.IDRetorno <> '') then
					BEGIN
						if trim(tcr.idretorno) <> Trim(cdsBusco.FieldByName('TPR_CODIGO').asstring) then
						 CdsBusco.Locate( CampoID, tcr.IDRetorno, [loCaseInsensitive] ) ;

					END;
		 end;

	finally
		tcr.close;
		freeandnil(tcr);


	end;

end;

procedure TfrmPesqTurnos.cdsBuscoTRP_ATIVOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if sender.AsString = 'S' then
    text := 'Ativo'
  else
    text := 'Inativo';
end;

procedure TfrmPesqTurnos.filtro;
begin
with qBusco do
	begin
		sql.Clear;
		SQL.Add(' SELECT EMP_CODIGO, TPR_CODIGO, TRP_NOME, TRP_ATIVO, TRP_DIASSEMANAS, TRP_INICIO, TRP_FIM, '+
           ' TRP_DESCRICAO_INT1, TRP_TEMPOINTERVALO1, TRP_DESCRICAO_INT2, TRP_TEMPOINTERVALO2, TRP_DESCRICAO_INT3, TRP_TEMPOINTERVALO3 '+
        ' FROM TURNO ');
    if DBINICIO.Exclusivo('ORDEMPRODUCAO') then
       SqlAdd(' emp_codigo = '+QuotedStr(DBInicio.Empresa.EMP_CODIGO));
    //if edPesquisaLivre.Text <> '' then

    if edPesquisaLivre.Text <> '' then
      SqlAdd('TRP_NOME CONTAINING '+QuotedStr(edPesquisaLivre.Text));

  end;
end;

procedure TfrmPesqTurnos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TfrmPesqTurnos.FormCreate(Sender: TObject);
begin
  inherited;
	Self.CampoID:='TPR_CODIGO';
  Self.CampoIDRetorno :='TPR_CODIGO';
  Self.ProcedureFiltro:=Filtro;
  self.Constraints.MinHeight:= 612;;
  self.Constraints.MinWidth:=1175;
  self.Constraints.MaxHeight:= 0;
  self.width:=1175;
  self.height:=612;

  PadraoPesquisa;
  btnPesquisa.Click;
end;

procedure TfrmPesqTurnos.FormDestroy(Sender: TObject);
begin
  inherited;
  frmPesqTurnos := nil;
end;

procedure TfrmPesqTurnos.FormShow(Sender: TObject);
begin
  inherited;
  AbreTabela:=True;
end;

procedure TfrmPesqTurnos.PadraoPesquisa;
begin

end;

end.
