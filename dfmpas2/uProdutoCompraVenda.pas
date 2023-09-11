unit uProdutoCompraVenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SqlExpr,SqlClientDataSet, Provider, DB, DBClient, DBLocal, DBLocalS, Grids,
  DBGrids, Buttons, StdCtrls, Data.DBXFirebird, SimpleDS;

type
  TFrmProdutoCompraVenda = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    Bit_Sair: TBitBtn;
    Label1: TLabel;
    EdReferencia: TEdit;
    Label2: TLabel;
    EdDescricao: TEdit;
    Label3: TLabel;
    spCliente: TSpeedButton;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    SqlCdsCompra: TSQLClientDataSet;
    SqlCdsVenda: TSQLClientDataSet;
    DsCompra: TDataSource;
    DsVenda: TDataSource;
    SqlCdsCompraENF_IT_NOTANUMBER: TStringField;
    SqlCdsCompraPRD_REFER: TStringField;
    SqlCdsCompraENF_QTDE: TFMTBCdField;
    SqlCdsCompraENF_CFOP: TStringField;
    SqlCdsCompraENF_PRECO: TFMTBCdField;
    SqlCdsCompraENF_EMISSAO: TDateField;
    SqlCdsCompraFOR_CODIGO: TStringField;
    SqlCdsCompraFOR_RAZAO: TStringField;
    SqlCdsVendaPRD_REFER: TStringField;
    SqlCdsVendaNF_IT_NOTANUMER: TStringField;
    SqlCdsVendaNF_NUM_NFE: TIntegerField;
    SqlCdsVendaPED_CODIGO: TStringField;
    SqlCdsVendaNF_QTDE: TFMTBCdField;
    SqlCdsVendaCLI_CODIGO: TStringField;
    SqlCdsVendaCLI_RAZAO: TStringField;
    SqlCdsVendaNF_EMISSAO: TDateField;
    SqlCdsVendaNTP_CFOP: TIntegerField;
    SqlCdsVendaNF_PRECO: TFMTBCdField;
    SqlCdsVendaAMX_CODIGO_DESTINO: TStringField;
    SqlCdsVendaAMX_DESCRI: TStringField;
    SqlCdsCompraAMX_CODIGO: TStringField;
    SqlCdsCompraAMX_DESCRI: TStringField;
    SqlCdsCompraCUSTO_ENTRADA: TFMTBCdField;
    SqlCdsCompraENF_IPIALIQ: TFMTBCdField;
    SqlCdsCompraENF_IT_VLSUBTRIB: TFMTBCdField;
    SqlCdsCompraENF_IT_VALFRETE: TFMTBCdField;
    SqlCdsCompraENF_IT_VLDESP_ACES: TFMTBCdField;
    SqlCdsCompraENF_IT_VLSEGURO: TFMTBCdField;
    SqlCdsVendaNF_IPIALIQ: TFMTBCdField;
    SqlCdsVendaNF_VLSUBST: TFMTBCdField;
    SqlCdsVendaNF_IFRETE: TFMTBCdField;
    SqlCdsVendaNF_IDESP_ACES: TFMTBCdField;
    SqlCdsVendaNF_ISEGURO: TFMTBCdField;
    procedure Bit_SairClick(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure spClienteClick(Sender: tObject);
    procedure DBGrid1DrawColumnCell(Sender: tObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid2DrawColumnCell(Sender: tObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormKeyDown(Sender: tObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: tObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure SqlCdsCompraCUSTO_ENTRADAGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure EdReferenciaExit(Sender: TObject);
  private
    { Private declarations }
    procedure ListaCompra(sReferencia:String);
    procedure ListaVenda(sReferencia:String);
  public
    { Public declarations }
    procedure BuscaProduto(sReferencia:String);
  end;

var
  FrmProdutoCompraVenda: TFrmProdutoCompraVenda;

implementation

uses
  DataCad, RWFunc, Prd0006, uPedidoItem, Prd0001, InicioDB;

{$R *.dfm}

procedure TFrmProdutoCompraVenda.Bit_SairClick(Sender: tObject);
begin
   Close;
end;

procedure TFrmProdutoCompraVenda.BuscaProduto(sReferencia: String);
var
   sQuery:WideString;
begin
   EdReferencia.Clear;
   EdDescricao.Clear;
   ListaCompra('');
   ListaVenda('');
   if (Trim(sReferencia) <> '') then
   begin
         sQuery := 'SELECT '+
                   'T1.PRD_REFER, '+
                   'T1.PRD_DESCRI '+
                   'FROM '+
                   'PRD0000 T1 ';

         dataCadastros.sqlUpdate.Close;
         DataCadastros.SqlUpdate.sql.text :=SqlDef('PRODUTOS',sQuery,'WHERE T1.PRD_REFER = '+QuotedStr(Trim(sReferencia)),'PRD_REFER',' T1.');
         dataCadastros.sqlUpdate.Open;
         if (not dataCadastros.sqlUpdate.IsEmpty) then
            begin
               EdReferencia.Text := dataCadastros.sqlUpdate.FieldByName('PRD_REFER').AsString;
               EdDescricao.Text  := dataCadastros.sqlUpdate.FieldByName('PRD_DESCRI').AsString;

               ListaCompra(sReferencia);
               ListaVenda(sReferencia);
            end
            else
              MessageDlg('Produto não encontrado', mtWarning, [mbOK], 0 );;
      end;
end;

procedure TFrmProdutoCompraVenda.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
   SqlCdsCompra.Close;
   SqlCdsVenda.Close;
   if not assigned(FrmPedidoItem) then
      Action := CaFree;
end;

procedure TFrmProdutoCompraVenda.FormDestroy(Sender: TObject);
begin
     if not assigned(FrmPedidoItem) then
        FrmProdutoCompraVenda := Nil;
end;

procedure TFrmProdutoCompraVenda.ListaCompra(sReferencia: String);
var
   sQuery:WideString;
begin
   sQuery := 'SELECT '+
             'T1.ENF_IT_NOTANUMBER, '+
             'T1.PRD_REFER, '+
             'T1.ENF_QTDE, '+
             'T1.ENF_CFOP, '+
             'T1.ENF_PRECO, '+
             'T2.ENF_EMISSAO, '+
             'T1.FOR_CODIGO, '+
             'T3.FOR_RAZAO, '+
             't1.AMX_CODIGO, '+
             'T4.AMX_DESCRI, '+
             'cast(cast(coalesce(t1.enf_preco * t1.enf_qtde,0) + coalesce(t1.enf_vlsubst,0) + '+
                                   ' coalesce(t1.enf_it_vlipi,0) + coalesce(t1.enf_it_valfrete,0) + coalesce(t1.enf_it_vlseguro,0) + coalesce(t1.enf_it_vldesp_aces,0)as numeric(18,4)) / t1.enf_qtde as numeric(18,4)) as custo_entrada,'+
             'T1.enf_ipialiq, '+
             'cast (T1.enf_vlsubst / T1.ENF_QTDE as numeric(18,4)) as enf_it_vlsubtrib, '+
             'cast (T1.enf_it_valfrete / T1.ENF_QTDE as numeric(18,4)) as enf_it_valfrete, '+
             'cast (T1.enf_it_vldesp_aces / T1.ENF_QTDE as numeric(18,4)) as enf_it_vldesp_aces, '+
             'cast (T1.enf_it_vlseguro / T1.ENF_QTDE as numeric(18,4)) as  enf_it_vlseguro'+
             ' FROM '+
             'ENF_IT01 T1 '+
             'JOIN ENF0001 T2 ON (T2.ENF_NOTANUMBER = T1.ENF_IT_NOTANUMBER AND T2.FOR_CODIGO = T1.FOR_CODIGO) '+
             'JOIN FOR0000 T3 ON (T3.FOR_CODIGO = T1.FOR_CODIGO) '+
             'LEFT JOIN ALMOX0000 T4 ON (T4.AMX_CODIGO = T1.AMX_CODIGO)';

   SqlCdsCompra.Close;
   SqlCdsCompra.CommandText := SqlDef('RECEBER',sQuery,'WHERE T1.PRD_REFER = '+QuotedStr(Trim(sReferencia)),'T2.ENF_EMISSAO DESC',' T1.');
   SqlCdsCompra.Open;
end;

procedure TFrmProdutoCompraVenda.ListaVenda(sReferencia: String);
var
   sQuery:WideString;
begin
   sQuery := 'select  '+
             'T1.PRD_REFER, '+
             'T1.NF_IT_NOTANUMER, '+
             'T2.NF_NUM_NFE, '+
             'T2.PED_CODIGO, '+
             'T1.NF_QTDE, '+
             'T2.CLI_CODIGO, '+
             'T3.CLI_RAZAO, '+
             'T2.NF_EMISSAO, '+
             'T1.NTP_CFOP, '+
             'T1.NF_PRECO, '+
             't1.nf_ipialiq, '+
             'cast (t1.nf_vlsubst / T1.NF_QTDE as numeric(18,4)) as nf_vlsubst, '+
             'cast (t1.nf_ifrete / T1.NF_QTDE as numeric(18,4)) as nf_ifrete, '+
             'cast (t1.nf_idesp_aces / T1.NF_QTDE as numeric(18,4)) as nf_idesp_aces, '+
             'cast (t1.nf_iseguro / T1.NF_QTDE as numeric(18,4)) as nf_iseguro,'+
             't1.AMX_CODIGO_DESTINO, '+
             'T4.AMX_DESCRI '+
             ' from '+
             'NF_IT01 t1 '+
             'JOIN NF0001 T2 ON (T2.NF_NOTANUMBER = T1.NF_IT_NOTANUMER and t2.EMP_CODIGO = t1.EMP_CODIGO) '+
             'JOIN CLI0000 T3 ON (T3.CLI_CODIGO = T2.CLI_CODIGO) '+
             'LEFT JOIN  ALMOX0000 T4 ON (T4.AMX_CODIGO = T1.AMX_CODIGO_DESTINO)';

   SqlCdsVenda.Close;
   SqlCdsVenda.CommandText := SqlDef('PAGAR',sQuery,'WHERE T1.PRD_REFER = '+QuotedStr(Trim(sReferencia)),'T2.NF_EMISSAO DESC',' T1.');
   SqlCdsVenda.Open;
end;

procedure TFrmProdutoCompraVenda.spClienteClick(Sender: tObject);
begin
     FormProdutoGrid := TFormProdutoGrid.Create(Application);
     try
        FormProdutoGrid.SoAtivos:=True ;
        FormProdutoGrid.ShowModal;
        if FormProdutoGrid.ModalResult=mrOk then
        begin
           BuscaProduto( FormProdutoGrid.ReferRetorno ) ;
        end;

     finally
            FreeAndNil(FormProdutoGrid);
     end;
end;

procedure TFrmProdutoCompraVenda.SqlCdsCompraCUSTO_ENTRADAGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
 if dbInicio.GetParametroUsuario('PERMITE_VER_CUSTO') <> 'S' then
    Text := '****'
 else
    Text := Sender.AsString;
end;

procedure TFrmProdutoCompraVenda.DBGrid1DrawColumnCell(Sender: tObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
   if (not odd(SqlCdsCompra.RecNo)) then
      if not (GdSelected in State) then
         begin
             DBGrid1.Canvas.Brush.Color := $00FFEFDF;
             DBGrid1.Canvas.FillRect(rect);
             DBGrid1.DefaultDrawDataCell(Rect,column.Field,state);
         end;
end;

procedure TFrmProdutoCompraVenda.DBGrid2DrawColumnCell(Sender: tObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
   if (not odd(SqlCdsVenda.RecNo)) then
      if not (GdSelected in State) then
         begin
             DBGrid2.Canvas.Brush.Color := $00FFEFDF;
             DBGrid2.Canvas.FillRect(rect);
             DBGrid2.DefaultDrawDataCell(Rect,column.Field,state);
         end;
end;

procedure TFrmProdutoCompraVenda.EdReferenciaExit(Sender: TObject);
begin
  buscaProduto(edReferencia.Text);
end;

procedure TFrmProdutoCompraVenda.FormKeyDown(Sender: tObject;
  var Key: Word; Shift: TShiftState);
begin
   if (Key = VK_f2)then
      begin
         Key := 0;
         spClienteClick(Sender);
      end;
end;

procedure TFrmProdutoCompraVenda.FormResize(Sender: TObject);
begin
     Height := 602;
     Width := 967;
end;

procedure TFrmProdutoCompraVenda.FormShow(Sender: tObject);
begin
   try
      EdReferencia.SetFocus;
   except

   end;
end;

end.
