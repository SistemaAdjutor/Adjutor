unit PesqCodigoOriginal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBPesquisaForm, Data.DB, Data.DBXFirebird, Data.FMTBcd, Vcl.Menus, Datasnap.DBClient, Datasnap.Provider, Vcl.ExtCtrls, Data.SqlExpr, ACBrEnterTab, ACBrBase,
  ACBrCalculadora, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.Buttons, uteis, InicioDB;

type
  TfrmPesqCodOriginal = class(TfrmBaseDBPesquisa)
    LabeledEdit1: TLabeledEdit;
    sbNovo: TSpeedButton;
    qBuscoPRDCO_CODIGO_ORIGINAL: TStringField;
    qBuscoPRD_CODIGO: TStringField;
    qBuscoCLI_CODIGO: TStringField;
    qBuscoPRDCO_DESCRICAO: TStringField;
    qBuscoPED_CODIGO: TStringField;
    cdsBuscoPRDCO_CODIGO_ORIGINAL: TStringField;
    cdsBuscoPRD_CODIGO: TStringField;
    cdsBuscoCLI_CODIGO: TStringField;
    cdsBuscoPRDCO_DESCRICAO: TStringField;
    cdsBuscoPED_CODIGO: TStringField;
    cdsBuscoPRDCO_REGISTRO: TIntegerField;
    qBuscoPRDCO_REGISTRO: TIntegerField;
    btExcluir: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure LabeledEdit1KeyPress(Sender: TObject; var Key: Char);
  private
   FPedido : String;
   FProduto: string;
   FCliente: string;
	public
    procedure FiltraCodigoOriginal;
    property Pedido:string read FPedido write FPedido;
    property Produto :string read FProduto write FProduto;
    property Cliente:string read FCliente write FCliente;

  published

  end;

var
  frmPesqCodOriginal: TfrmPesqCodOriginal;

implementation

{$R *.dfm}

{ TfrmPesqCodOriginal }

procedure TfrmPesqCodOriginal.btExcluirClick(Sender: TObject);
begin
  inherited;
  if (MessageDlg('Deseja excluir '+cdsBusco.FieldByName('PRDCO_CODIGO_ORIGINAL').asString +' ?', mtWarning, [mbYes, mbNo], 0)=mrYes) then
  begin
     ExecSql('DELETE FROM PRD_CODIGOORIGINAL '+
            'WHERE PRDCO_CODIGO_ORIGINAL = '+QuotedStr(cdsBusco.FieldByName('PRDCO_CODIGO_ORIGINAL').asString) +
            'AND PRD_CODIGO = '+QuotedStr(Produto)+
            'AND CLI_CODIGO = '+QuotedStr(Cliente)+
            'AND PED_CODIGO = '+QuotedStr(Pedido));

    cdsBusco.Refresh;
  end;
end;

procedure TfrmPesqCodOriginal.btnNovoClick(Sender: TObject);
var codorig :string;
 id :integer;
begin
  inherited;
  codorig :=  LabeledEdit1.Text;
  if codorig <> '' then
  begin

//    if DBInicio.Empresa.bPMT_HABILITAR_CODORIGINAL then
//    begin
//      if SqlCdsPedidoItemPRDCO_CODIGO_ORIGINAL.AsString = '' then
//        desc :=  SqlCdsPedidoItemDESCRICAO.AsString + '['+ codorig  +']'
//      else
//      begin
//        ini := Pos('[',SqlCdsPedidoItemDESCRICAO.AsString);
//        fim := pos(']',SqlCdsPedidoItemDESCRICAO.AsString);
//        if (ini > 0) and (fim > 0)  then
//          desc:= copy(SqlCdsPedidoItemDESCRICAO.AsString,1,ini-1)+ '['+ codorig  +']'
//        else
//          desc:=  SqlCdsPedidoItemDESCRICAO.AsString + '['+ codorig  +']'
//      end;
//    end;
//    SqlCdsPedidoItemDESCRICAO.AsString:= desc;
//    SqlCdsPedidoItemPRDCO_CODIGO_ORIGINAL.AsString := codorig;
//    SqlCdsPedidoItem.Post;

//
//    ExecSql(' UPDATE PED_IT01 '+
//            ' SET PRDCO_CODIGO_ORIGINAL = '+ QuotedStr(codorig)+
//            ' WHERE ped_codigo ='+QuotedStr(Pedido) +
//            ' and prf_registro = '+IntToStr(SqlCdsPedidoItemPRF_REGISTRO.AsInteger) );


      id := dbInicio.GetNextSequence('gen_prd_codigooriginal_id');

      ExecSql('INSERT INTO PRD_CODIGOORIGINAL (PRDCO_REGISTRO, PRD_CODIGO, PRDCO_CODIGO_ORIGINAL, CLI_CODIGO,PED_CODIGO) '+
              ' VALUES ('+ inttostr(id) + ','+
              QuotedStr(Produto) + ','+
              QuotedStr(codorig)+','+
              QuotedStr(cliente) +','+
              QuotedStr(Pedido)+ ')  ');
     cdsBusco.Refresh;
     LabeledEdit1.Clear;
  end;
end;

procedure TfrmPesqCodOriginal.FiltraCodigoOriginal;
begin
	with qBusco do
	begin
		sql.Clear;
		SQL.Add('select * from PRD_CODIGOORIGINAL');
    SqlAdd( CampoSql( 'PRDCO_CODIGO_ORIGINAL',LabeledEdit1.Text) );
    SqlAdd(CampoSql('PED_CODIGO',Pedido));
    SqlAdd(CampoSql('PRD_CODIGO',Produto));
	end;
end;

procedure TfrmPesqCodOriginal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
	Action := caFree;
end;

procedure TfrmPesqCodOriginal.FormCreate(Sender: TObject);
begin
  inherited;
	Self.CampoID:='PRDCO_REGISTRO';
	Self.ProcedureFiltro:=FiltraCodigoOriginal;
end;

procedure TfrmPesqCodOriginal.FormDestroy(Sender: TObject);
begin
  inherited;
  frmPesqCodOriginal := nil;
end;

procedure TfrmPesqCodOriginal.FormResize(Sender: TObject);
begin
//  inherited;
  Width := 415;
end;

procedure TfrmPesqCodOriginal.FormShow(Sender: TObject);
begin
  inherited;
	AbreTabela:=True;
	Filtro; // abre tabelas
end;

procedure TfrmPesqCodOriginal.LabeledEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
    sbNovo.Click;
end;

end.
