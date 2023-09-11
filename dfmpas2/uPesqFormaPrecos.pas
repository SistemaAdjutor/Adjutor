unit uPesqFormaPrecos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBPesquisaFDAC, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  Data.DB, cxDBData, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Phys.FBDef, FireDAC.UI.Intf, FireDAC.VCLUI.Wait, FireDAC.VCLUI.Error, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.FB, frxClass, Vcl.Menus, FireDAC.Comp.Client,
  FireDAC.Comp.UI, FireDAC.Phys.IBBase, FireDAC.Comp.DataSet, cxLocalization, ACBrBase, ACBrEnterTab, JvExControls, JvArrowButton, Vcl.StdCtrls, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, Vcl.Buttons, Vcl.ExtCtrls, Vcl.ComCtrls, dxLayoutContainer, cxGridLayoutView, cxGridDBLayoutView, cxGridCustomLayoutView, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv,
  dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxEditorProducers, dxPScxExtEditorProducers, dxPSCore, ACBrCalculadora;

type
  TfrmFormacaoPreco = class(TfrmBaseDBPesquisaFDAC)
    cdsBuscaDetalhesCIO_CODIGO: TIntegerField;
    cdsBuscaDetalhesEMP_CODIGO: TStringField;
    cdsBuscaDetalhesCIO_MES: TIntegerField;
    cdsBuscaDetalhesCIO_ANO: TIntegerField;
    cdsBuscaDetalhesSRV_CODIGO: TIntegerField;
    cdsBuscaDetalhesCIO_IMPOSTOS: TBCDField;
    cdsBuscaDetalhesCIO_MKP: TBCDField;
    cdsBuscaDetalhesCIO_REPORTE: TBCDField;
    cdsBuscaDetalhesCIO_PV: TBCDField;
    cdsBuscaCIO_MES: TIntegerField;
    cdsBuscaCIO_ANO: TIntegerField;
    cdsBuscaMESANO: TStringField;
    cdsBuscaDetalhesMESANO: TStringField;
    cxgrd1Level1: TcxGridLevel;
    cxgrd1DBTableView1CIO_MES: TcxGridDBColumn;
    cxgrd1DBTableView1CIO_ANO: TcxGridDBColumn;
    cxgrd1DBTableView2: TcxGridDBTableView;
    cxgrd1DBTableView2SET_CODIGO: TcxGridDBColumn;
    cxgrd1DBTableView2CIO_CUSTOS: TcxGridDBColumn;
    cxgrd1DBTableView2CIO_DESPESAS: TcxGridDBColumn;
    cxgrd1DBTableView2CIO_IMPOSTOS: TcxGridDBColumn;
    cxgrd1DBTableView2CIO_MKP: TcxGridDBColumn;
    cxgrd1DBTableView2CIO_REPORTE: TcxGridDBColumn;
    cxgrd1DBTableView2CIO_PV: TcxGridDBColumn;
    cxgrd1DBTableView2SET_DESCRICAO: TcxGridDBColumn;
    pInserir: TPopupMenu;
    cxgrd1DBLayoutView1Group_Root: TdxLayoutGroup;
    cxgrd1DBLayoutView1: TcxGridDBLayoutView;
    cxgrd1DBLayoutView1LayoutItem6: TcxGridLayoutItem;
    cxgrd1DBLayoutView1CIO_CUSTOS: TcxGridDBLayoutViewItem;
    cxgrd1DBLayoutView1LayoutItem7: TcxGridLayoutItem;
    cxgrd1DBLayoutView1CIO_DESPESAS: TcxGridDBLayoutViewItem;
    cxgrd1DBLayoutView1LayoutItem8: TcxGridLayoutItem;
    cxgrd1DBLayoutView1CIO_IMPOSTOS: TcxGridDBLayoutViewItem;
    cxgrd1DBLayoutView1LayoutItem9: TcxGridLayoutItem;
    cxgrd1DBLayoutView1CIO_MKP: TcxGridDBLayoutViewItem;
    cxgrd1DBLayoutView1LayoutItem10: TcxGridLayoutItem;
    cxgrd1DBLayoutView1CIO_REPORTE: TcxGridDBLayoutViewItem;
    cxgrd1DBLayoutView1LayoutItem11: TcxGridLayoutItem;
    cxgrd1DBLayoutView1CIO_PV: TcxGridDBLayoutViewItem;
    cxgrd1DBLayoutView1LayoutItem12: TcxGridLayoutItem;
    cxgrd1DBLayoutView1SRV_NOME: TcxGridDBLayoutViewItem;
    cdsBuscaDetalhesCIO_TOTAL: TFMTBCDField;
    cxgrd1DBTableView2CIO_TOTAL: TcxGridDBColumn;
    cdsBuscaDetalhesSET_DESCRICAO: TStringField;
    cdsBuscaDetalhesSET_CODIGO: TIntegerField;
    cdsBuscaDetalhesCIO_CUSTOS: TBCDField;
    cdsBuscaDetalhesCIO_DESPESAS: TBCDField;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure filtro;
    procedure filtroDetalhe;
  end;

var
  frmFormacaoPreco: TfrmFormacaoPreco;

implementation

uses iniciodb, ueditcustopro, uteis;
{$R *.dfm}

procedure TfrmFormacaoPreco.btnNovoClick(Sender: TObject);
var
  ano, mes, dia : word;
  mesano : string;
  mtag: integer;
  flg: boolean;
begin
	inherited;
	mtag := (sender as tComponent).Tag;
  frmCustoMesAno := tfrmCustoMesAno.create( self );
	try

		 case mtag of
		 1: begin
          DecodeDate(date,ano,mes,dia);
          mesano:=  InputBox ('Incluindo novo preço','Digite mês/ano', inttostr(mes) + '/' +inttostr(ano)  );
          if mesano<>'' then
          begin
            if Length(mesano) = 7  then
            begin
             mes := StrToInt(copy(mesano,1,2));
             ano := StrToInt(copy(mesano,4,4));
            end
            else
            if Length(mesano) = 6  then
            begin
             mes := StrToInt(copy(mesano,1,1));
             ano := StrToInt(copy(mesano,3,4));
            end;
            if (ano >2000 )  and (mes >0) and (mes<13)  then
            begin
              ExecSql('INSERT INTO CUSTOINDUST (cio_codigo, EMP_CODIGO,CIO_MES, CIO_ANO, SET_CODIGO) '+
                      ' SELECT  gen_id(GEN_CUSTOINDUST_ID,1),'+QuotedStr(dbinicio.Empresa.EMP_CODIGO)+','+
                       inttostr(mes)+ ','+ inttostr(ano)+','+  ' set_codigo '+
                      ' FROM SETOR se  WHERE NOT EXISTS '+
                      ' (SELECT 1 FROM CUSTOINDUST ci WHERE ci.SET_CODIGO = se.SET_CODIGO '+
                      iif(DBINICIO.Exclusivo('ORDEMPRODUCAO') ,' and ci.emp_codigo = '+QuotedStr(DBInicio.Empresa.EMP_CODIGO) ,'' )+
                      ' AND cio_mes = '+ inttostr(mes)+ ' AND cio_ano = '+ inttostr(ano)+')'  +
                      iif(DBINICIO.Exclusivo('ORDEMPRODUCAO') ,' and se.emp_codigo = '+QuotedStr(DBInicio.Empresa.EMP_CODIGO) ,'' ));

              flg:=frmCustoMesAno.edita(  inttostr(ano)+  strzero(mes,2)  ,'Formação de preço de ' +inttostr(mes)+ '/'+ inttostr(ano));
            end;

          end;


        end;

		 2: frmCustoMesAno.Consulta(cdsBusca.FieldByName('MESANO').asString,'Consulta ' );
		 3: flg:=frmCustoMesAno.edita(cdsBusca.FieldByName('MESANO').asString,'Edição ');
		 4: flg:=frmCustoMesAno.exclui(cdsBusca.FieldByName('MESANO').asString,'Exclusão de Registro');
		 end;
	finally
    mesano := frmCustoMesAno.IDRetorno;
		frmCustoMesAno.close;
		freeandnil(frmCustoMesAno);
    CdsBusca.Close;
    cdsBuscaDetalhes.Close;
    CdsBusca.Open;
    cdsBuscaDetalhes.Open;
    CdsBusca.Locate( CampoID, mesano, [loCaseInsensitive] ) ;
	end;
end;

procedure TfrmFormacaoPreco.filtro;
 var sqltext : string;
begin
  with cdsBusca,sql do
  begin
    cdsBusca.SQL.Text := 'SELECT DISTINCT cio_mes,cio_ano,cast(cio_ano as varchar(4))|| cast(lpad (cio_mes,2,''0'')  as varchar(2)) as mesano '+
                        ' FROM CUSTOINDUST ci   ';
    if DBINICIO.Exclusivo('ORDEMPRODUCAO') then
       SqlAdd(' ci.emp_codigo = '+QuotedStr(DBInicio.Empresa.EMP_CODIGO));
    SQL.Add('ORDER BY 3 DESC');
  end;

end;

procedure TfrmFormacaoPreco.filtroDetalhe;
begin
   OpenAux(' select * from SETOR '+ ConcatSe( ' where ',DBINICIO.ExclusivoSql('ORDEMPRODUCAO'))  );
//   qaux.FieldByName(')
   cdsBuscaDetalhes.SQL.Text := 'SELECT SET_DESCRICAO, cast(cio_ano as varchar(4))|| cast(lpad (cio_mes,2,''0'')  as varchar(2)) as mesano ,'  +
   ' ci.*, (cio_pv * CIO_REPORTE) as cio_total FROM CUSTOINDUST ci JOIN SETOR se on se.SET_codigo = ci.SET_CODIGO '+
   iif(DBINICIO.Exclusivo('ORDEMPRODUCAO') ,'where ci.emp_codigo = '+QuotedStr(DBInicio.Empresa.EMP_CODIGO) ,'' )+
   'ORDER BY 2 DESC';
   cdsBuscaDetalhes.Open;
end;

procedure TfrmFormacaoPreco.FormCreate(Sender: TObject);
begin
  inherited;
  Self.ProcedureFiltro:=filtro;
  Self.ProcedureFiltroDetalhe:=filtroDetalhe;
  self.Constraints.MinHeight:= 612;
  self.Constraints.MinWidth:=1175;
  self.Constraints.MaxHeight:= 0;
  self.width:=1175;
  self.height:=612;
  Menu := 'ProduçãoTabela de Formação Preços';
  filtro;
  self.CampoID := 'MESANO';

end;

procedure TfrmFormacaoPreco.FormDestroy(Sender: TObject);
begin
  inherited;
  frmFormacaoPreco:= nil;
end;

procedure TfrmFormacaoPreco.FormShow(Sender: TObject);
var ano, mes, dia : word;
begin
  inherited;
  btnPesquisa.Click;
  DecodeDate(date,ano,mes,dia);
  cdsBusca.Locate('cio_mes;cio_ano',VarArrayOf([mes,ano]),[]);
end;

end.

