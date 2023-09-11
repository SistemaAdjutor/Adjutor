unit ExportCodFornForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseDBPesquisaForm, {{DBXpress,}  FMTBCd, DB, DBClient, Provider,
  SqlExpr,Menus, ExtCtrls, ACBrBase, ACBrCalculadora, Grids, DBGrids,
  JvExDBGrids, JvDBGrid, Buttons, ComCtrls, StdCtrls, Data.DBXInterBase, Data.DBXFirebird, ACBrEnterTab;

type
  TFrmExportCodForn = class(TfrmBaseDBPesquisa)
    CdsBuscoPRD_CODIGO: TStringField;
    CdsBuscoPRD_REFER: TStringField;
    CdsBuscoPRD_DESCRI: TStringField;
    CdsBuscoFOR_CODIGO: TStringField;
    CdsBuscoPRDC_REFERENCIA: TStringField;
    CdsBuscoPRDC_DESSCRICAO: TStringField;
    CdsBuscoFOR_CGC: TStringField;
    CdsBuscoFOR_RAZAO: TStringField;
    procedure FormCreate(Sender: tObject);
    procedure CdsBuscoFOR_CGCGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
  private
    fBotao:TButton;
    procedure FiltraProd;
    procedure SetBotao(const Value: TButton);
  public
    fTipo : string;
    fInativo : boolean;
    procedure Exportar;
    Property Botao: TButton Read fBotao write SetBotao;
    property Tipo:string read fTipo write Ftipo;
    property Inativo : boolean read fInativo write fInativo;
  end;

var
  FrmExportCodForn: TFrmExportCodForn;

implementation

uses Uteis, InicioDB;

{$R *.dfm}

procedure TFrmExportCodForn.FormCreate(Sender: tObject);
begin
  inherited;
  Self.ProcedureFiltro:=FiltraProd;
end;

procedure TFrmExportCodForn.FiltraProd;

var query : string;
begin
   with qBusco, SQL do
   begin
     Clear;
     query := 'select A.PRD_CODIGO, A.PRD_REFER, A.PRD_DESCRI, B.for_codigo, B.prdc_referencia, B.prdc_desscricao, c.for_cgc, C.for_razao'+
              ' From PRD0000 A ' +
              ' JOIN prd0000_codigo B ON B.prd_codigo=A.PRD_CODIGO ' +
              ' left join for0000 C on C.for_codigo=B.for_codigo '   ;


     qBusco.sql.Add(query) ;
     if DBInicio.ExclusivoSql('PRODUTOS') <> '' then
        SqlAdd(ConcatSe(' A.', DBInicio.ExclusivoSql('PRODUTOS'))) ;

     if Inativo then
       SqlAdd('PRD_STATUS = '+QuotedStr('A'));
     if TIPO <> '' then
       SqlAdd('PTI_CODIGO = '+QuotedStr(TIPO));

     Add('order by PRD_REFER, b.for_codigo ');
   end;
end;

procedure TFrmExportCodForn.Exportar;
begin
     AbreTabela:=True;
     Filtro; // abre tabelas
     btnExcelClick(fBotao);
end;


procedure TFrmExportCodForn.SetBotao(const Value: TButton);
begin
  fBotao := Value;
end;

procedure TFrmExportCodForn.CdsBuscoFOR_CGCGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  text := FormataCgcCpf(Sender.asstring);
end;

end.
