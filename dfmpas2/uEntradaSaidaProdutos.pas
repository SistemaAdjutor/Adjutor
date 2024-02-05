unit uEntradaSaidaProdutos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxPreview, StdCtrls, CheckLst, JvExCheckLst,
  JvCheckListBox, Buttons, cxLookAndFeelPainters, cxButtons, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  SqlExpr,SqlClientDataSet, Provider, frxDBSet, DB, DBClient, DBLocal, DBLocalS,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxGraphics, cxLookAndFeels, Vcl.ComCtrls, dxCore, cxDateUtils, Vcl.Menus, Data.DBXFirebird, SimpleDS, Data.FMTBcd, SgDbSeachComboUnit, ComboBoxRW,
  frxExportPDF, frxExportRTF, frxExportCSV, frxExportMail, frxExportXLS,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, frxExportBaseDialog;

type
  TFrmEntradaSaidaProdutos = class(TForm)
    grpEmpresa: TGroupBox;
    lstEmpresa: TJvCheckListBox;
    GroupBox1: TGroupBox;
    frxReport1: TfrxReport;
    Label1: TLabel;
    cxDateInicial: TcxDateEdit;
    Label3: TLabel;
    cxDateFinal: TcxDateEdit;
    cbbTipoES: TComboBox;
    Label2: TLabel;
    Label4: TLabel;
    cbbListar: TComboBox;
    cxButton3: TcxButton;
    cxButton2: TcxButton;
    CdsEntradasSaidas: TSQLClientDataSet;
    CdsEntradasSaidasEMP_CODIGO: TStringField;
    CdsEntradasSaidasEMP_RAZAO: TStringField;
    CdsEntradasSaidasPRD_REFER: TStringField;
    CdsEntradasSaidasPRD_DESCRI: TStringField;
    CdsEntradasSaidasKAR_ENTRADA_SAIDA: TStringField;
    CdsEntradasSaidasKAR_QUANTIDADE: TFMTBCdField;
    CdsEntradasSaidasDATA_HORA: TSQLTimeStampField;
    CdsEntradasSaidasKAR_DESCRICAO: TStringField;
    CdsEntradasSaidasTIPO: TStringField;
    CdsEntradasSaidasKAR_DOCUMENTO: TStringField;
    frxDBDataset1: TfrxDBDataset;
    CdsEntradasSaidasES: TStringField;
    DsAlmoxarifado: TDataSource;
    SqlCdsAlmoxarifado: TSQLClientDataSet;
    SqlCdsAlmoxarifadoAMX_CODIGO: TStringField;
    SqlCdsAlmoxarifadoAMX_DESCRI: TStringField;
    SqlCdsAlmoxarifadoAMX_TIPO: TStringField;
    SqlCdsAlmoxarifadoEMP_CODIGO: TStringField;
    CbAlmoxarifado: TcxLookupComboBox;
    Label5: TLabel;
    Label6: TLabel;
    qTipoProduto: TSQLQuery;
    cbTipoProduto: TComboBoxRw;
    EdTipoCodigo: TEdit;
    frxXLSExport1: TfrxXLSExport;
    frxMailExport1: TfrxMailExport;
    frxRTFExport1: TfrxRTFExport;
    frxCSVExport1: TfrxCSVExport;
    frxPDFExport1: TfrxPDFExport;
    Label7: TLabel;
    EdColaboradorCodigo: TEdit;
    edColaborador: TSgDbSearchCombo;
    qColaborador: TSQLQuery;
    cbProduto: TComboBoxRw;
    Label8: TLabel;
    edProduto: TEdit;
    cbGrupo: TComboBoxRw;
    Label9: TLabel;
    edGrupo: TEdit;
    procedure frxReport1Preview(Sender: tObject);
    procedure btnBit_CancelarClick(Sender: tObject);
    procedure cxButton2Click(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure cxButton3Click(Sender: tObject);
    procedure frxReport1GetValue(const VarName: String;
      var Value: Variant);
    procedure CdsEntradasSaidasCalcFields(DataSet: TDataSet);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure cbTipoProdutoSelect(Sender: TObject);
    procedure EdTipoCodigoExit(Sender: TObject);
    procedure edColaboradorSelect(Sender: TObject);
    procedure EdColaboradorCodigoExit(Sender: TObject);
    procedure CbAlmoxarifadoExit(Sender: TObject);
    procedure cbProdutoSelect(Sender: TObject);
    procedure edProdutoExit(Sender: TObject);
    procedure edGrupoExit(Sender: TObject);
    procedure cbGrupoSelect(Sender: TObject);
  private
    { Private declarations }
    sEmpresaList: String;
    procedure ListaEmpresas;
    function RetornaEmpresas(sCampo:String;lista:TJvCheckListBox):String;
  public
    { Public declarations }
  end;

var
  FrmEntradaSaidaProdutos: TFrmEntradaSaidaProdutos;

implementation

uses
  DataCad, RWFunc, Men0001, uteis, iniciodb;

{$R *.dfm}

procedure TFrmEntradaSaidaProdutos.frxReport1Preview(Sender: tObject);
begin
   frxReport1.PreviewOptions.Modal := False;
end;

procedure TFrmEntradaSaidaProdutos.btnBit_CancelarClick(Sender: tObject);
begin
   frxReport1.ShowReport();
end;

procedure TFrmEntradaSaidaProdutos.cxButton2Click(Sender: tObject);
begin
   Close;
end;

procedure TFrmEntradaSaidaProdutos.ListaEmpresas;
begin
   lstEmpresa.Items.Clear;
   dataCadastros.sqlUpdate.Close;
   DataCadastros.SqlUpdate.sql.text :='select t1.EMP_CODIGO, T1.EMP_RAZAO from EMP0000 T1';
   dataCadastros.sqlUpdate.Open;
   while (not dataCadastros.sqlUpdate.Eof) do
      begin
         lstEmpresa.Items.Add(dataCadastros.sqlUpdate.FieldByName('EMP_CODIGO').AsString+'-'+dataCadastros.sqlUpdate.FieldByName('EMP_RAZAO').AsString);
         dataCadastros.sqlUpdate.Next;
      end;
   dataCadastros.sqlUpdate.Close;
   lstEmpresa.CheckAll;
end;

procedure TFrmEntradaSaidaProdutos.FormShow(Sender: tObject);
begin
   SqlCdsAlmoxarifado.Open;
   cxDateInicial.Date := Date;
   cxDateFinal.Date   := Date; 
   ListaEmpresas;
end;

procedure TFrmEntradaSaidaProdutos.cxButton3Click(Sender: tObject);
var
   sCondicao:string;
   relatorio : TfrxReport;
   filtro : string;
begin
   if (cxDateInicial.EditValue = Null) then
   begin
         uteis.aviso('Informe a Data Inicial');
         cxDateInicial.SetFocus;
   end
   else
   if (cxDateFinal.EditValue = Null) then
   begin
         uteis.aviso('Informe a Data Final');
         cxDateFinal.SetFocus;
   end
   else
   if (cxDateFinal.Date < cxDateInicial.Date) then
   begin
         uteis.aviso('A Data inicial não pode ser maior que data final');
         cxDateFinal.SetFocus;
   end
   else
   begin
         sCondicao := ' where t1.data_hora between '+QuotedStr(DataAmericana(DateToStr(cxDateInicial.EditValue))+' 00:00:00')+' and '+ QuotedStr(DataAmericana(DateToStr(cxDateFinal.EditValue))+' 23:59:59')+'';
         filtro := 'Data ' + formatdatetime('dd/mm/yy',cxDateInicial.Date) + ' até ' + formatdatetime('dd/mm/yy',cxDateFinal.Date);
         sEmpresaList := RetornaEmpresas('T1.EMP_CODIGO',lstEmpresa);
         if (sEmpresaList <> '') then
            sCondicao := sCondicao + ' and '+sEmpresaList;

         if (cbbTipoES.ItemIndex = 1) then
            sCondicao := sCondicao+ ' and t1.kar_entrada_saida = ''E'' '
         else
         if (cbbTipoES.ItemIndex = 2) then
            sCondicao := sCondicao+ ' and t1.kar_entrada_saida = ''S'' ' ;

         filtro := filtro + '. Tipo mov.: '+ cbbTipoES.Text;

         if (cbbListar.ItemIndex = 1) then
            sCondicao := sCondicao+ ' and T1.kar_tipo_registro = ''TRA'''
         else
         if (cbbListar.ItemIndex = 2) then
            sCondicao := sCondicao+ ' and T1.kar_tipo_registro <> ''TRA''    and T1.kar_tipo_registro <> ''MAN''   '
         else
         if (cbbListar.ItemIndex = 3) then
         begin
            scondicao := scondicao + ' and T1.kar_tipo_registro = ''MAN''  ' ;
            filtro := filtro + '. Movimento Manual do Estoque ';
         end;

            ;

         filtro := filtro + '. Tipo operação: '+ cbbListar.Text;

         if (CbAlmoxarifado.EditValue <> Null) then
            if (CbAlmoxarifado.EditValue <> '') then
            begin
               sCondicao := sCondicao+ ' and T1.AMX_CODIGO = '+QuotedStr(CbAlmoxarifado.EditValue);
               filtro := filtro + '. Almoxarifado : ' + CbAlmoxarifado.EditText;
            end;

         if edProduto.Text <> ''  then
         begin
            scondicao := scondicao + ' and P1.prd_refer = ' + QuotedStr(edProduto.Text);
            filtro := filtro + '. Produto: '+ cbProduto.Text;
         end;

         if edGrupo.Text <> ''  then
         begin
            scondicao := scondicao + ' and P1.pgr_codigo = ' + QuotedStr(edGrupo.Text);
            filtro := filtro + '. Grupo: '+ cbGrupo.Text;
         end;


         if EdTipoCodigo.Text <> ''  then
         begin
            scondicao := scondicao + ' and p1.PTI_CODIGO = ' +QuotedStr(EdTipoCodigo.Text);
            filtro := filtro + '. Tipo produto: '+ cbTipoProduto.Text;
         end;

         if edColaborador.idRetorno <> '' then
         begin
           scondicao := scondicao + ' and COL_CODIGO = ' +edColaborador.idRetorno;
            filtro := filtro + '. Colaborador: '+ edColaborador.Text;
         end;


         CdsEntradasSaidas.Close;
         CdsEntradasSaidas.CommandText := 'SELECT DISTINCT '+
                                          'T1.emp_codigo, '+
                                          'E1.emp_razao, '+
                                          'P1.prd_refer, '+
                                          'P1.prd_descri, '+
                                          't1.kar_entrada_saida, '+
                                          't1.kar_quantidade, '+
                                          'CAST(CAST(T1.data_hora AS date) AS TIMESTAMP) AS data_hora, '+ // t1.data_hora
                                          'coalesce(t1.kar_observacao,'''')||'' ''||coalesce(t1.kar_descricao,'''') as kar_descricao, '+
                                          'case '+
                                          '    when (T1.kar_tipo_registro = ''ENF'') then '+
                                          '        ''ENTRADA NOTA FISCAL'' '+
                                          '    when (T1.kar_tipo_registro = ''PED'') then '+
                                          '        ''PEDIDO'' '+
                                          '    when (T1.kar_tipo_registro = ''NF'') then '+
                                          '        ''NOTA FISCAL SAIDA'' '+
                                          '    when (T1.kar_tipo_registro = ''MAN'') then '+
                                          '        ''MANUAL'' '+
                                          '    when (T1.kar_tipo_registro = ''BAL'' and T1.kar_descricao = ''ZERAR'') then '+
                                          '        ''ZERADO'' '+
                                          '    when (T1.kar_tipo_registro = ''BAL'' and T1.kar_descricao = ''ZERAR'') then '+
                                          '        ''BALANÃ‡O'' '+
                                          '    when (T1.kar_tipo_registro = ''TRA'') then '+
                                          '        ''TRANSFERENCIA'' '+
                                          'end as tipo, '+
                                          't1.kar_documento '+
                                          'FROM  '+
                                          'kardex T1 '+
                                          'JOIN prd0000 P1 ON (P1.prd_codigo = T1.prd_codigo) '+
                                          'JOIN emp0000 E1 ON (T1.emp_codigo = E1.emp_codigo) '+
                                          ' JOIN USUARIO_ALMOXARIFADO ua ON (ua.USU_CODIGO = ' +  QuotedStr(DBInicio.Usuario.CODIGO) + ' AND ua.AMX_CODIGO = t1.AMX_CODIGO) ' +
                                          sCondicao+
                                          'order by t1.emp_codigo, t1.kar_entrada_saida,t1.data_hora   ';
         if dbInicio.IsDesenvolvimento then
          CopyToClipboard(CdsEntradasSaidas.CommandText);
         CdsEntradasSaidas.Open;
         relatorio := frxReport1;
         TfrxMemoView(relatorio.FindObject('mFiltro')).Text := filtro;
         relatorio.ShowReport();
   end;
end;

procedure TFrmEntradaSaidaProdutos.EdColaboradorCodigoExit(Sender: TObject);
begin
  edColaborador.idRetorno := EdColaboradorCodigo.Text;
end;

procedure TFrmEntradaSaidaProdutos.edColaboradorSelect(Sender: TObject);
begin
  if edColaborador.idRetorno <> '' then
    EdColaboradorCodigo.Text :=  edColaborador.idRetorno
  else
    EdColaboradorCodigo.Clear;
end;

procedure TFrmEntradaSaidaProdutos.edGrupoExit(Sender: TObject);
begin
  cbGrupo.idRetorno := edGrupo.Text;
end;

procedure TFrmEntradaSaidaProdutos.edProdutoExit(Sender: TObject);
begin
  cbProduto.idRetorno := edProduto.Text;
end;

procedure TFrmEntradaSaidaProdutos.EdTipoCodigoExit(Sender: TObject);
begin
 if EdTipoCodigo.Text <> '' then
 begin
   cbTipoProduto.IdRetorno:=StrZero( EdTipoCodigo.Text, 3 );
   if cbTipoProduto.IdRetorno = '' then
      GeraException ('Tipo não localizado com este código!');
 end
 else
  cbTipoProduto.Clear;
end;

procedure TFrmEntradaSaidaProdutos.frxReport1GetValue(
  const VarName: String; var Value: Variant);
begin
   if (VarName = 'empresa') then
      Value := dbInicio.Empresa.RAZAO
   else
   if (VarName = 'Filtro') then
      Value := 'Período de '+DateToStr(cxDateInicial.EditValue)+' até '+DateToStr(cxDateFinal.Date) + ' ' +CbAlmoxarifado.EditValue;

end;

function TFrmEntradaSaidaProdutos.RetornaEmpresas(sCampo: String;
  lista: TJvCheckListBox): String;
var
   retorno:string;
   empresas : TStringList;
   i:Integer;
begin
   retorno := '';
   empresas := lista.GetChecked;
   i := 0;
   if (empresas.Count > 0) then
      retorno := sCampo+' IN (';
   while (i <= empresas.Count - 1) do
      begin
         if (i > 0) then
            retorno := retorno+',';
         retorno := retorno+''''+COPY(empresas[i],1,3)+'''';
         Inc(i);
      end;
   if (empresas.Count > 0) then
      retorno := retorno + ')';
   Result := retorno;
end;

procedure TFrmEntradaSaidaProdutos.CbAlmoxarifadoExit(Sender: TObject);
begin
  if not AlmoxarifadoUsuario(CbAlmoxarifado.EditValue) then
  begin
    CbAlmoxarifado.SetFocus;
    Exit;
  end;
end;

procedure TFrmEntradaSaidaProdutos.cbGrupoSelect(Sender: TObject);
begin
  edGrupo.Text :=  cbGrupo.idRetorno;
end;

procedure TFrmEntradaSaidaProdutos.cbProdutoSelect(Sender: TObject);
begin
  edProduto.Text :=  cbProduto.idRetorno;
end;

procedure TFrmEntradaSaidaProdutos.cbTipoProdutoSelect(Sender: TObject);
begin
  if cbTipoProduto.idRetorno <> ''  then
  begin
    EdTipoCodigo.Text :=  cbTipoProduto.idRetorno;
  end;

end;

procedure TFrmEntradaSaidaProdutos.CdsEntradasSaidasCalcFields(
  DataSet: TDataSet);
begin
   if (CdsEntradasSaidasKAR_ENTRADA_SAIDA.AsString = 'E') then
      CdsEntradasSaidasES.AsString := 'ENTRADA'
   else
      CdsEntradasSaidasES.AsString := 'SAÍDA';
end;

procedure TFrmEntradaSaidaProdutos.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
   SqlCdsAlmoxarifado.Close;
   Action := CaFree;
end;

procedure TFrmEntradaSaidaProdutos.FormDestroy(Sender: TObject);
begin
     FrmEntradaSaidaProdutos := Nil;
end;

procedure TFrmEntradaSaidaProdutos.FormResize(Sender: TObject);
begin
     Height := 368;
     Width := 458;
end;

end.
