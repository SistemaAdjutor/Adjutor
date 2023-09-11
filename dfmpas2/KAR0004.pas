unit KAR0004;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, BaseDbEstoqueForm,
  Dialogs, StdCtrls, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, JvLabel, JvExControls, JvGradient, SqlExpr,SqlClientDataSet, Provider,
  DB, DBClient, DBLocal, DBLocalS, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxDBData, cxLookAndFeelPainters,
  cxButtons, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, Gauges,
  cxLookAndFeels, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013White,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, Vcl.Menus, dxSkinscxPCPainter,
  cxNavigator, SimpleDS, Data.DBXFirebird, Data.FMTBCd, ACBrEnterTab, ACBrBase, ACBrCalculadora, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TKardexZerarEstoque = class(TFrmBaseDbEstoque)
    GroupBox1: TGroupBox;
    CbTipo: TcxLookupComboBox;
    Label4: TLabel;
    Label1: TLabel;
    CbGrupo: TcxLookupComboBox;
    Label2: TLabel;
    CbAlmoxarifado: TcxLookupComboBox;
    SqlCdsTipo: TSQLClientDataSet;
    SqlCdsTipoPTI_CODIGO: TStringField;
    SqlCdsTipoPTI_DESCRI: TStringField;
    SqlCdsTipoEMP_CODIGO: TStringField;
    SqlCdsGrupo: TSQLClientDataSet;
    SqlCdsGrupoPGR_CODIGO: TStringField;
    SqlCdsGrupoPGR_DESCRI: TStringField;
    SqlCdsGrupoPGR_COMISS: TStringField;
    SqlCdsGrupoPGR_COM_PERC: TFMTBCdField;
    SqlCdsGrupoEMP_CODIGO: TStringField;
    SQLCdsAlmox: TSQLClientDataSet;
    SQLCdsAlmoxAMX_CODIGO: TStringField;
    SQLCdsAlmoxAMX_DESCRI: TStringField;
    SQLCdsAlmoxAMX_TIPO: TStringField;
    SQLCdsAlmoxEMP_CODIGO: TStringField;
    GroupBox2: TGroupBox;
    cxButton2: TcxButton;
    cxButton1: TcxButton;
    cxButton3: TcxButton;
    DsProdutoGeral: TDataSource;
    SqlCdsProdutoGeral: TSQLClientDataSet;
    DsTipo: TDataSource;
    DsGrupo: TDataSource;
    DsAlmoxarifado: TDataSource;
    SqlCdsProdutoGeralPRD_CODIGO: TStringField;
    SqlCdsProdutoGeralPRD_REFER: TStringField;
    SqlCdsProdutoGeralPRD_DESCRI: TStringField;
    SqlCdsProdutoGeralPRD_UND: TStringField;
    SqlCdsProdutoGeralAMX_CODIGO: TStringField;
    SqlCdsProdutoGeralAMX_DESCRI: TStringField;
    SqlCdsProdutoGeralKAS_SALDO: TFMTBCdField;
    Gauge1: TGauge;
    Gauge2: TGauge;
    EdAlmoxarifadoDescricao: TEdit;
    EdTipo: TEdit;
    EdGrupo: TEdit;
    DBGrid1: TDBGrid;
    Label3: TLabel;
    Label5: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    SqlCdsZerar: TSqlClientDataSet;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    FMTBCDField1: TFMTBCDField;
    chkZerarNegativos: TCheckBox;
    procedure cxButton2Click(Sender: tObject);
    procedure cxButton3Click(Sender: tObject);
    procedure FormCreate(Sender: tObject);
    procedure FormCloseQuery(Sender: tObject; var CanClose: Boolean);
    procedure cxButton1Click(Sender: tObject);
    procedure CbAlmoxarifadoExit(Sender: tObject);
    procedure CbTipoExit(Sender: tObject);
    procedure CbGrupoExit(Sender: tObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
    procedure Processar;
    procedure Pesquisa;
  public
    { Public declarations }
  end;

var
  KardexZerarEstoque: TKardexZerarEstoque;

implementation

uses
  UFuncoes, InicioDB, DataCad, Men0001, uteis;

{$R *.dfm}

procedure TKardexZerarEstoque.cxButton2Click(Sender: tObject);
begin
   Close;
end;

procedure TKardexZerarEstoque.cxButton3Click(Sender: tObject);
begin
  Processar;
end;

procedure TKardexZerarEstoque.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  if not odd(SqlCdsProdutoGeral.RecNo) then
    if not (gdSelected in State) then
      begin
      DBGrid1.Canvas.Brush.Color := clGradientInactiveCaption;
      DBGrid1.Canvas.FillRect(Rect);
      DBGrid1.DefaultDrawDataCell(rect,Column.Field,state);
    end;
end;

procedure TKardexZerarEstoque.Processar;
var saldo : Double;
  validaEmpresa : string;
begin
  try
    SqlCdsProdutoGeral.DisableControls;
   if (SqlCdsProdutoGeral.IsEmpty) then
      begin
         uteis.aviso('Não existe produto a ser zerado');
         CbTipo.SetFocus;
      end
   else
      begin
         uteis.aviso('Cuidado zerar os estoques é irreversível !');
         if (uteis.confirmacao ( 'Confirma o Inicio do Procedimento?')=mrYes) then
            begin
               cxButton1.Enabled := false;
               cxButton2.Enabled := false;
               cxButton3.Enabled := false;
               Gauge2.Visible    := true;
               Gauge2.Progress   := 0;
               Gauge2.MaxValue   := SqlCdsProdutoGeral.RecordCount;
               if (not DBInicio.Exclusivo('PRODUTOS') AND DBInicio.Exclusivo('ESTOQUES') )then
                 validaEmpresa := ' AND EMP_CODIGO = ' + QuotedStr(DBInicio.Emp_Codigo)
               else
                 validaEmpresa := '';
               SqlCdsProdutoGeral.First;
               while (not SqlCdsProdutoGeral.Eof) do
                  begin

                     DBInicio.ExecSql('DELETE FROM kardex_almox_saldo WHERE PRD_CODIGO = ' +QuotedStr(SqlCdsProdutoGeralPRD_CODIGO.AsString) +
                                      ' and	AMX_CODIGO = '+QuotedStr(SqlCdsProdutoGeralAMX_CODIGO.AsString) +
                                      validaEmpresa
                                      );
                     saldo := dbinicio.BuscaUmDadoSqlAsFloat('SELECT FIRST 1 KAR_SALDO FROM KARDEX ' +
                                                             ' WHERE prd_codigo = ' +QuotedStr(SqlCdsProdutoGeralPRD_CODIGO.AsString) +
                                                             validaEmpresa +
                                                             ' ORDER BY DATA_HORA DESC ') ;

										 KardexLancamento('0',
                                      'BAL',
																			SqlCdsProdutoGeralAMX_CODIGO.AsString,
                                      '',
                                      SqlCdsProdutoGeralPRD_CODIGO.AsString,
                                      '',//grade
                                      SqlCdsProdutoGeralPRD_UND.AsString,
                                      iif(saldo < 0,'E','S'),
                                      '',
                                      '',//Novo esquema de lote
                                      'ZERAR',  // observação 'zerar atualiza a grade', não tirar
                                      Now,
                                      IIF(saldo < 0,saldo * -1, saldo),
                                      '',
                                      '',
																			0.00,'','','',SqlCdsProdutoGeralPRD_REFER.AsString);

                            { Problema do Acces Violation é porque esta mandando menos parametro para a função }

                     Gauge2.Progress := Gauge2.Progress + 1;
                     SqlCdsProdutoGeral.Next;
                     Application.ProcessMessages;
                  end;
               SqlCdsProdutoGeral.First;
               SqlCdsProdutoGeral.Refresh;
               uteis.aviso('Processo Finalizado');
               Gauge2.Visible := false;
               cxButton1.Enabled := true;
               cxButton2.Enabled := true;
               cxButton3.Enabled := true;
               Edit1.Clear;
               Edit2.Clear;
            end;
      end;
  finally
    SqlCdsProdutoGeral.EnableControls;
  end;
end;

procedure TKardexZerarEstoque.FormCreate(Sender: tObject);
begin
   SqlCdsTipo.Open;
   SqlCdsGrupo.Open;
   SQLCdsAlmox.Open;
end;

procedure TKardexZerarEstoque.FormDestroy(Sender: TObject);
begin
  inherited;
  KardexZerarEstoque := Nil;
end;

procedure TKardexZerarEstoque.FormResize(Sender: TObject);
begin
  inherited;
//  Height := 509;
//  Width := 934;
end;

procedure TKardexZerarEstoque.FormShow(Sender: TObject);
begin
  inherited;
  Caption := 'Operação de Zerar Estoque';
end;

procedure TKardexZerarEstoque.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TKardexZerarEstoque.FormCloseQuery(Sender: tObject;
  var CanClose: Boolean);
begin
   SqlCdsTipo.Close;
   SqlCdsGrupo.Close;
   SQLCdsAlmox.Close;
   SqlCdsProdutoGeral.Close;
end;

procedure TKardexZerarEstoque.cxButton1Click(Sender: tObject);
begin
	 Pesquisa;
end;

procedure TKardexZerarEstoque.Pesquisa;
var
	 sCondicao, sAlmoxarifado:String;
begin
	 Edit1.Clear;
	 Edit2.Clear;
	 sCondicao := '';
	 //Almoxarifado
	 if (CbAlmoxarifado.EditValue <> Null) then
			sAlmoxarifado := ' and t1.amx_codigo = '+QuotedStr(CbAlmoxarifado.EditValue)
	 else
			sAlmoxarifado := '';
	 if (CbTipo.EditValue <> Null) then
			if (CbTipo.EditValue <> '') then
				 sCondicao :=  'prd0000.pti_codigo = '+QuotedStr(CbTipo.EditValue);
	 if (CbGrupo.EditValue <> Null) then
    begin
       if (CbGrupo.EditValue <> '') then
          begin
             if (sCondicao <> '') then
                sCondicao := sCondicao + ' and ';
             sCondicao := sCondicao +  'prd0000.pgr_codigo = '+QuotedStr(CbGrupo.EditValue);
          end;
    end;
    if chkZerarNegativos.Checked then
    begin
      if (sCondicao <> '') then
         sCondicao := sCondicao + ' and ';
      scondicao := sCondicao + 't1.kas_saldo < 0 ';
    end;

	 SqlCdsProdutoGeral.Close;
	 SqlCdsProdutoGeral.CommandText := 'SELECT '+
																		 '     prd0000.prd_codigo,'+
																		 '     prd0000.prd_refer,'+
																		 '     prd0000.prd_descri,'+
																		 '     prd0000.prd_und,'+
																		 '     T1.amx_codigo,'+
																		 '     T2.amx_descri,'+
																		 '     T1.kas_saldo'+
																		 ' FROM '+
																		 '     prd0000 '+
																		 '     join kardex_almox_saldo T1 ON (T1.prd_codigo = prd0000.prd_codigo '+sAlmoxarifado+' and t1.emp_codigo = '+QuotedStr(dbInicio.Empresa.EMP_CODIGO)+') '+
																		 '     join almox0000 T2 ON (T2.amx_codigo = T1.amx_codigo)'+
																		 IIF(sCondicao<>'',' where '+sCondicao,' order by prd0000.prd_descri');

  SqlCdsZerar.Close;
  SqlCdsZerar.CommandText := 'SELECT '+
                             '     prd0000.prd_codigo,'+
                             '     prd0000.prd_refer,'+
                             '     prd0000.prd_descri,'+
                             '     prd0000.prd_und,'+
                             '     T1.amx_codigo,'+
                             '     T2.amx_descri,'+
                             '     T1.kas_saldo'+
                             ' FROM '+
                             '     prd0000 '+
                             '     join kardex_almox_saldo T1 ON (T1.prd_codigo = prd0000.prd_codigo '+sAlmoxarifado+' and t1.emp_codigo = '+QuotedStr(dbInicio.Empresa.EMP_CODIGO)+') '+
                             '     join almox0000 T2 ON (T2.amx_codigo = T1.amx_codigo)'+
                             '     where T1.kas_saldo <> 0 '+
                             IIF(sCondicao<>'',' and '+sCondicao,' order by prd0000.prd_descri');


	 SqlCdsProdutoGeral.Open;
	 SqlCdsZerar.Open;
	 Edit1.Text := FormatFloat('#0',(SqlCdsProdutoGeral.RecordCount));
	 Edit2.Text := FormatFloat('#0',(SqlCdsZerar.RecordCount));

	 if (not SqlCdsProdutoGeral.IsEmpty) then
			begin
				 //cxGrid3.SetFocus;
			end;

end;

procedure TKardexZerarEstoque.CbAlmoxarifadoExit(Sender: tObject);
begin
	 try
			if CbAlmoxarifado.Text = '' then
				 EdAlmoxarifadoDescricao.Text := 'TODOS OS ALMOXARIFADOS'
			else
				 EdAlmoxarifadoDescricao.Text := CbAlmoxarifado.Properties.DataController.DataSet.Lookup('AMX_CODIGO',CbAlmoxarifado.EditValue,'AMX_DESCRI');

	 except

	 end;
end;

procedure TKardexZerarEstoque.CbTipoExit(Sender: tObject);
begin
	 try
			if CbTipo.Text = '' then
				EdTipo.Text := 'TODOS OS TIPOS'
			else
				EdTipo.Text := CbTipo.Properties.DataController.DataSet.Lookup('PTI_CODIGO',CbTipo.EditValue,'PTI_DESCRI');
	 except

   end;
end;

procedure TKardexZerarEstoque.CbGrupoExit(Sender: tObject);
begin
    try
      if CbGrupo.Text = '' then
        EdGrupo.Text := ' TODOS OS GRUPOS'
      else
        EdGrupo.Text := CbGrupo.Properties.DataController.DataSet.Lookup('PGR_CODIGO',CbGrupo.EditValue,'PGR_DESCRI');
   except

   end;
end;

end.
