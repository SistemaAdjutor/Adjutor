unit uHistoricoEmail;

interface

uses
  PesquisaClientesForm,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, RWFunc, Uteis, InicioDB, System.DateUtils, Winapi.ShellAPI,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBPesquisaFDAC, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  Data.DB, cxDBData, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Phys.FBDef, FireDAC.UI.Intf, FireDAC.VCLUI.Wait, FireDAC.VCLUI.Error, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.FB, ACBrCalculadora, frxClass, Vcl.Menus,
  FireDAC.Comp.Client, FireDAC.Comp.UI, FireDAC.Phys.IBBase, FireDAC.Comp.DataSet, cxLocalization, ACBrBase, ACBrEnterTab, JvExControls, JvArrowButton, Vcl.StdCtrls, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, Vcl.Buttons, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Mask, JvExMask, JvToolEdit, SgDbSeachComboUnit, Data.FMTBcd,
  Data.SqlExpr, frxDBSet, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinTheBezier, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxDataControllerConditionalFormattingRulesManagerDialog;

type
  TfrmHistoricoEmail = class(TfrmBaseDBPesquisaFDAC)
    cxgrd1DBTableView1HEM_MODULO: TcxGridDBColumn;
    cxgrd1DBTableView1HEM_DESTINATARIO: TcxGridDBColumn;
    cxgrd1DBTableView1HEM_TITULO: TcxGridDBColumn;
    cxgrd1DBTableView1CLI_FOR_CODIGO: TcxGridDBColumn;
    cxgrd1DBTableView1HEM_CLI_FOR: TcxGridDBColumn;
    cxgrd1DBTableView1HEM_DATA_ENVIO: TcxGridDBColumn;
    cxgrd1DBTableView1USU_CODIGO: TcxGridDBColumn;
    cdsBuscaHEM_CODIGO: TIntegerField;
    cdsBuscaHEM_MODULO: TStringField;
    cdsBuscaHEM_DESTINATARIO: TStringField;
    cdsBuscaHEM_TITULO: TStringField;
    cdsBuscaCLI_FOR_CODIGO: TStringField;
    cdsBuscaHEM_CLI_FOR: TStringField;
    cdsBuscaHEM_DATA_ENVIO: TSQLTimeStampField;
    cdsBuscaUSU_CODIGO: TIntegerField;
    cdsBuscaUSU_NOME: TStringField;
    gbPeriodo: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    DataI: TJvDateEdit;
    DataF: TJvDateEdit;
    cbSetor: TComboBox;
    Panel1: TPanel;
    cbCliFor: TSgDbSearchCombo;
    rbCliente: TRadioButton;
    rbFornecedor: TRadioButton;
    cbUsuario: TSgDbSearchCombo;
    Label3: TLabel;
    Label4: TLabel;
    qCliFor: TSQLQuery;
    qUsuario: TSQLQuery;
    frxDBcdsBusca: TfrxDBDataset;
    cdsBuscaRAZAO: TStringField;
    cdsBuscaEMP_CODIGO: TStringField;
    cdsBuscaHEM_ANEXO: TStringField;
    cxgrd1DBTableView1HEM_ANEXO: TcxGridDBColumn;
    rbAmbos: TRadioButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnPesquisaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DataIExit(Sender: TObject);
    procedure DataFExit(Sender: TObject);
    procedure rbClienteClick(Sender: TObject);
    procedure rbFornecedorClick(Sender: TObject);
    procedure btnrelatoriosClick(Sender: TObject);
    procedure frxPadraoBeginDoc(Sender: TObject);
    procedure frxPadraoGetValue(const VarName: string; var Value: Variant);
    procedure cxgrd1DBTableView1CellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure rbAmbosClick(Sender: TObject);
    procedure cbCliForButtonClick(Sender: TObject);
  private
     procedure filtro;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmHistoricoEmail: TfrmHistoricoEmail;

implementation

{$R *.dfm}

{ TfrmHistoricoEmail }

procedure TfrmHistoricoEmail.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  action := caFree;
  frmHistoricoEmail := nil;
end;

procedure TfrmHistoricoEmail.FormShow(Sender: TObject);
begin
  inherited;
  filtro;
end;

procedure TfrmHistoricoEmail.frxPadraoBeginDoc(Sender: TObject);
begin
  inherited;
  TfrxPictureView(frxPadrao.FindObject('LogoEmpresa')).Picture.Assign(DBInicio.Empresa.LOGO);
end;

procedure TfrmHistoricoEmail.frxPadraoGetValue(const VarName: string; var Value: Variant);
begin
  inherited;
  if (VarName  = 'EMPRESA') then
     Value := DBInicio.Empresa.RAZAO;
end;

procedure TfrmHistoricoEmail.rbAmbosClick(Sender: TObject);
begin
  inherited;
  cbCliFor.idRetorno := '';
end;

procedure TfrmHistoricoEmail.rbClienteClick(Sender: TObject);
begin
  inherited;
  if rbCliente.Checked then
  begin
    cbCliFor.Enabled := True;
    cbCliFor.idRetorno := '';
    cbCliFor.AutoF8ColumnsTitulo := 'Código, Razão';
    cbCliFor.AutoF8WinTitulo := 'Clientes';
    cbCliFor.LookupDbGridColumns := 'CLI_CODIGO, CLI_RAZAO';
    cbCliFor.LookupDbGridColumnsTitle := 'Código, Razão Social';
    cbCliFor.LookupDispl := 'CLI_RAZAO';
    cbCliFor.LookupKeyField := 'CLI_CODIGO';
    cbCliFor.LookupOrderBy := 'CLI_RAZAO';
    cbCliFor.LookupSelect := 'CLI_CODIGO, CLI_RAZAO';
    cbCliFor.LookupTable := 'CLI0000';
    cbCliFor.Refresh;
    cbCliFor.OnButtonClick := cbCliForButtonClick;
  end;

end;

procedure TfrmHistoricoEmail.rbFornecedorClick(Sender: TObject);
begin
  inherited;
  if rbFornecedor.Checked then
  begin
    cbCliFor.OnButtonClick := nil;
    cbCliFor.Enabled := True;
    cbCliFor.idRetorno := '';
    cbCliFor.AutoF8ColumnsTitulo := 'Código, Razão';
    cbCliFor.AutoF8WinTitulo := 'Fornecedores';
    cbCliFor.LookupDbGridColumns := 'FOR_CODIGO, FOR_RAZAO';
    cbCliFor.LookupDbGridColumnsTitle := 'Código, Razão Social';
    cbCliFor.LookupDispl := 'FOR_RAZAO';
    cbCliFor.LookupKeyField := 'FOR_CODIGO';
    cbCliFor.LookupOrderBy := 'FOR_RAZAO';
    cbCliFor.LookupSelect := 'FOR_CODIGO, FOR_RAZAO';
    cbCliFor.LookupTable := 'FOR0000';
    cbCliFor.Refresh;
  end;
end;

procedure TfrmHistoricoEmail.btnPesquisaClick(Sender: TObject);
begin
  inherited;
  filtro;
end;

procedure TfrmHistoricoEmail.btnrelatoriosClick(Sender: TObject);
begin
  frxPadrao.ShowReport;
end;

procedure TfrmHistoricoEmail.cbCliForButtonClick(Sender: TObject);
var
  tcr: tFrmPesquisaClientes;
begin
  inherited;
  tcr:= tFrmPesquisaClientes.Create(self);
  try
      tcr.ShowModal;
      if tcr.modalresult = mrok then
         cbCliFor.idRetorno := tcr.IDRetorno;
  finally
       FreeAndNil(tcr);
  end;
end;


procedure TfrmHistoricoEmail.cxgrd1DBTableView1CellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState;
  var AHandled: Boolean);
begin
  inherited;
  if  TcxGridDBColumn(ACellViewInfo.Item).DataBinding.FieldName = 'HEM_ANEXO' then
  begin
    ShellExecute(0, 'OPEN', PChar(TcxGridDBColumn(ACellViewInfo.Item).DataBinding.Field.AsString), '', '', SW_SHOWMAXIMIZED);
  end;
end;

procedure TfrmHistoricoEmail.DataIExit(Sender: TObject);
begin
  inherited;
  ValidaData(DataI.Text, DataI);
end;

procedure TfrmHistoricoEmail.DataFExit(Sender: TObject);
begin
  inherited;
  ValidaData(DataF.Text, DataF);
end;

procedure TfrmHistoricoEmail.filtro;
begin
  cdsBusca.Close;
  cdsBusca.SQL.Text :=
    'SELECT h.*,' +
    ' 	CASE ' +
	  '     WHEN c.CLI_RAZAO IS NULL THEN f.FOR_RAZAO ' +
	  '     WHEN F.FOR_RAZAO IS NULL THEN C.CLI_RAZAO ' +
    '   END AS razao, ' +
    ' u.USU_NOME  ' +
    ' FROM HISTORICO_EMAIL h ' +
    '  LEFT JOIN CLI0000 c ON (c.CLI_CODIGO = h.CLI_FOR_CODIGO) ' +
    '  LEFT JOIN FOR0000 f ON (f.FOR_CODIGO = h.CLI_FOR_CODIGO) ' +
    '  JOIN USUARIO u ON (u.USU_CODIGO = h.USU_CODIGO) ' +
    ' WHERE h.EMP_CODIGO =  ' + QuotedStr(DBInicio.Emp_Codigo) +
    iif(cbSetor.ItemIndex >= 0, ' AND h.HEM_MODULO = ' + QuotedStr(cbSetor.Text), '') +
    iif(cbUsuario.idRetorno = '' , '', ' AND h.USU_CODIGO = ' + cbUsuario.idRetorno) +

    iif (rbCliente.Checked AND (cbCliFor.idRetorno <> ''), ' AND h.CLI_FOR_CODIGO = ' + QuotedStr(cbCliFor.idRetorno), '') +
    iif (rbCliente.Checked AND (cbCliFor.idRetorno =  ''), ' AND h.HEM_CLI_FOR = ' + QuotedStr('C'), '') +

    iif (rbFornecedor.Checked AND (cbCliFor.idRetorno <> ''), ' AND h.CLI_FOR_CODIGO = ' + QuotedStr(cbCliFor.idRetorno), '') +
    iif (rbFornecedor.Checked AND (cbCliFor.idRetorno =  ''), ' AND h.HEM_CLI_FOR = ' + QuotedStr('F'), '') +

    iif((DataI.date = 0) or (DataF.Date = 0), '', ' AND HEM_DATA_ENVIO BETWEEN ' + DateTimeToSQL(DataI.Date) + ' AND ' + DateTimeToSQL(IncMinute(DataF.Date, 1439)))
    ;
  if DBInicio.IsDesenvolvimento then
    CopyToClipBoard(cdsBusca.SQL.Text);
  cdsBusca.Open;
end;


end.
