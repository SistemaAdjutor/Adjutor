unit uRelatorioInventarioCiclico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxPreview, StdCtrls, CheckLst, JvExCheckLst,
  JvCheckListBox, Buttons, cxLookAndFeelPainters, cxButtons, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  SqlExpr,SqlClientDataSet, Provider, frxDBSet, DB, DBClient, DBLocal, DBLocalS,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxGraphics, cxLookAndFeels,
  Vcl.ComCtrls, dxCore, cxDateUtils, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013White,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, Vcl.Menus, Data.DBXFirebird, SimpleDS, frxExportPDF, frxExportRTF, frxExportCSV, frxExportMail, frxExportXLS;

type
  TRelatorioInventarioCiclicoForm = class(TForm)
    grpEmpresa: TGroupBox;
    lstEmpresa: TJvCheckListBox;
    GroupBox1: TGroupBox;
    frxReport1: TfrxReport;
    Label1: TLabel;
    cxDateInicial: TcxDateEdit;
    cxButton3: TcxButton;
    cxButton2: TcxButton;
    CdsEntradasSaidas: TSQLClientDataSet;
    CdsEntradasSaidasPRD_REFER: TStringField;
    CdsEntradasSaidasPRD_DESCRI: TStringField;
    frxDBDataset1: TfrxDBDataset;
    DsAlmoxarifado: TDataSource;
    SqlCdsAlmoxarifado: TSQLClientDataSet;
    SqlCdsAlmoxarifadoAMX_CODIGO: TStringField;
    SqlCdsAlmoxarifadoAMX_DESCRI: TStringField;
    SqlCdsAlmoxarifadoAMX_TIPO: TStringField;
    SqlCdsAlmoxarifadoEMP_CODIGO: TStringField;
    CbAlmoxarifado: TcxLookupComboBox;
    Label5: TLabel;
    Label2: TLabel;
    cxDateEdit1: TcxDateEdit;
    CdsEntradasSaidasPRDE_ENDERECO: TStringField;
    frxXLSExport1: TfrxXLSExport;
    frxMailExport1: TfrxMailExport;
    frxCSVExport1: TfrxCSVExport;
    frxRTFExport1: TfrxRTFExport;
    frxPDFExport1: TfrxPDFExport;
    procedure frxReport1Preview(Sender: tObject);
    procedure btnBit_CancelarClick(Sender: tObject);
    procedure cxButton2Click(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure cxButton3Click(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure CbAlmoxarifadoExit(Sender: TObject);
  private
    { Private declarations }
    sEmpresaList: String;
    procedure ListaEmpresas;
    function RetornaEmpresas(sCampo:String;lista:TJvCheckListBox):String;
  public
    { Public declarations }
  end;

var
  RelatorioInventarioCiclicoForm: TRelatorioInventarioCiclicoForm;

implementation

uses
  DataCad, RWFunc, Men0001, InicioDB, uteis;

{$R *.dfm}

procedure TRelatorioInventarioCiclicoForm.frxReport1Preview(Sender: tObject);
begin
   frxReport1.PreviewOptions.Modal := False;
end;

procedure TRelatorioInventarioCiclicoForm.btnBit_CancelarClick(Sender: tObject);
begin
   frxReport1.ShowReport();
end;

procedure TRelatorioInventarioCiclicoForm.CbAlmoxarifadoExit(Sender: TObject);
begin
  if not AlmoxarifadoUsuario(CbAlmoxarifado.EditValue) then
  begin
    CbAlmoxarifado.SetFocus;
    Exit;
  end;
end;

procedure TRelatorioInventarioCiclicoForm.cxButton2Click(Sender: tObject);
begin
   Close;
end;

procedure TRelatorioInventarioCiclicoForm.ListaEmpresas;
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

procedure TRelatorioInventarioCiclicoForm.FormShow(Sender: tObject);
begin
   SqlCdsAlmoxarifado.Open;
   cxDateInicial.Date := Date-1;
   cxDateEdit1.Date := Date-1;
   ListaEmpresas;

end;

procedure TRelatorioInventarioCiclicoForm.cxButton3Click(Sender: tObject);
var
   sTxtFiltro, sCondicao:string;
begin
   if (cxDateInicial.EditValue = Null) then
   begin
         uteis.aviso('Informe a Data Inicial');
         cxDateInicial.SetFocus;
   end
   else
   if (cxDateEdit1.EditValue = Null) then
   begin
        uteis.aviso('Informe a Data Final');
        cxDateEdit1.SetFocus;
   end
   else
   begin
         sCondicao := ' where t1.data_hora >= '+DateToSql(cxDateInicial.date)+' and t1.data_hora <=  '+ DateTimeToSql(SetHoraFinal(cxDateEdit1.date));

         sEmpresaList := RetornaEmpresas('T1.EMP_CODIGO',lstEmpresa);
         if (sEmpresaList <> '') then
            sCondicao := sCondicao + ' and '+sEmpresaList;

         if (CbAlmoxarifado.EditValue <> Null) then
            if (CbAlmoxarifado.EditValue <> '') then
               sCondicao := sCondicao+ ' and T1.AMX_CODIGO = '+QuotedStr(CbAlmoxarifado.EditValue);

         CdsEntradasSaidas.Close;
         CdsEntradasSaidas.CommandText := 'SELECT  P1.prd_refer, P1.prd_descri, B.PRDE_ENDERECO '+
                                          'FROM  kardex T1 '+
                                          '    JOIN prd0000 P1 ON (P1.prd_codigo = T1.prd_codigo) '+
                                          '    JOIN emp0000 E1 ON (E1.emp_codigo = '+dbInicio.Empresa.EMP_CODIGO+') '+
                                          '    left join PRD0000_ENDERECAMENTO B on b.PRDE_REGISTRO=P1.PRDE_REGISTRO AND B.emp_codigo=P1.emp_codigo '+
                                          ' JOIN USUARIO_ALMOXARIFADO ua ON (ua.USU_CODIGO = ' +  QuotedStr(DBInicio.Usuario.CODIGO) + ' AND ua.AMX_CODIGO = t1.AMX_CODIGO) ' +

                                          sCondicao+
                                          'group by P1.prd_refer, P1.prd_descri, B.PRDE_ENDERECO '+
                                          'order by 3,1';
         CdsEntradasSaidas.Open;

         sTxtFiltro := 'Referente a data de '+DateToStr(cxDateInicial.EditValue)+' a '+DateToStr(cxDateEdit1.EditValue);
         if CbAlmoxarifado.EditValue<>'' then
            sTxtFiltro := sTxtFiltro + ' Almoxarifado: ' +CbAlmoxarifado.EditValue+' - '+SqlCdsAlmoxarifadoAMX_DESCRI.asstring;
         TfrxMemoView(frxReport1.FindObject('Memo3')).Text:=sTxtFiltro;
         TfrxMemoView(frxReport1.FindObject('Memo1')).Text:=DBInicio.empresa.RAZAO;


         frxReport1.ShowReport();
   end;
end;

function TRelatorioInventarioCiclicoForm.RetornaEmpresas(sCampo: String;
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

procedure TRelatorioInventarioCiclicoForm.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
   SqlCdsAlmoxarifado.Close;
   Action := CaFree;
end;

procedure TRelatorioInventarioCiclicoForm.FormDestroy(Sender: TObject);
begin
     RelatorioInventarioCiclicoForm := Nil;
end;

procedure TRelatorioInventarioCiclicoForm.FormResize(Sender: TObject);
begin
     Height := 370;
     Width := 458;
end;

end.
