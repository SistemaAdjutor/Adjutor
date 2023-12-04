unit uCadControleDeQualidade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBEditDetailFDAC, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Phys.FBDef, FireDAC.UI.Intf, FireDAC.VCLUI.Wait, FireDAC.VCLUI.Error, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.FB, Vcl.StdCtrls,
  Data.DB, Vcl.DBCtrls, FireDAC.Comp.Client, JvValidators, JvErrorIndicator, JvComponentBase, FireDAC.Comp.UI, FireDAC.Phys.IBBase, FireDAC.Comp.DataSet, cxClasses, cxLocalization, ACBrBase,
  ACBrEnterTab, Vcl.ExtCtrls, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxDBEdit, cxTextEdit, cxMaskEdit, cxSpinEdit, Vcl.Grids, Vcl.DBGrids, cxDropDownEdit,
  cxCalendar, Vcl.Mask, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
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
  dxSkinXmas2008Blue;

type
  TfrmCadControleDeQualidade = class(TfrmBaseDBEditDetailFDAC)
    qAux2PAR_CODIGO: TIntegerField;
    qAux2PAR_DESCRICAO: TStringField;
    FDTable1: TFDTable;
    DBNavigator1: TDBNavigator;
    DataSource1: TDataSource;
    CQUA_CODIGO: TcxDBSpinEdit;
    Label2: TLabel;
    CQUA_PRDL_LOTE: TcxDBTextEdit;
    Label3: TLabel;
    CQUA_IOP_NORDEM: TcxDBTextEdit;
    Label4: TLabel;
    CQUA_PAR_CODIGO: TcxDBSpinEdit;
    Label5: TLabel;
    CQUA_RESULTADO: TcxDBTextEdit;
    qAuxPAR_CODIGO: TIntegerField;
    qAuxPAR_DESCRICAO: TStringField;
    dsqAux: TDataSource;
    lkCQUA_PAR_CODIGO: TDBLookupComboBox;
    DBGrid1: TDBGrid;
    FDTable1CQUA_CODIGO: TIntegerField;
    FDTable1CQUA_PRDL_LOTE: TStringField;
    FDTable1CQUA_IOP_NORDEM: TStringField;
    FDTable1CQUA_PAR_CODIGO: TIntegerField;
    FDTable1CQUA_RESULTADO: TStringField;
    ed_CQUA_PRDL_LOTE: TEdit;
    ed_CQUA_IOP_NORDEM: TEdit;
    Label1: TLabel;
    minimo: TEdit;
    Label6: TLabel;
    maximo: TEdit;
    dsqAux3: TDataSource;
    FDQuery1: TFDQuery;
    DataSource2: TDataSource;
    FDQuery1CQUA_CODIGO: TIntegerField;
    FDQuery1CQUA_PRDL_LOTE: TStringField;
    FDQuery1CQUA_IOP_NORDEM: TStringField;
    FDQuery1CQUA_PAR_CODIGO: TIntegerField;
    FDQuery1CQUA_RESULTADO: TStringField;
    FDQuery1PAR_CODIGO: TIntegerField;
    FDQuery1PAR_DESCRICAO: TStringField;
    FDTable1CQUA_OBSERVACAO: TStringField;
    FDTable1CQUA_DATA_INICIALIZACAO: TSQLTimeStampField;
    FDTable1CQUA_DATA_CONCLUSAO: TSQLTimeStampField;
    Label7: TLabel;
    db_CQUA_OBSERVACAO: TcxDBTextEdit;
    Label8: TLabel;
    Label9: TLabel;
    FDQuery1CQUA_OBSERVACAO: TStringField;
    FDQuery1CQUA_DATA_INICIALIZACAO: TSQLTimeStampField;
    FDQuery1CQUA_DATA_CONCLUSAO: TSQLTimeStampField;
    db_CQUA_DATA_INICIALIZACAO: TDBEdit;
    db_CQUA_DATA_CONCLUSAO: TDBEdit;
    labelReferencia: TLabel;
    lbDescricao: TLabel;
    esperado: TEdit;
    Label10: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    FDTable1PRD_REFER: TStringField;
    PRD_REFER: TcxDBTextEdit;
    ed_PRD_REFER: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure lkCQUA_PAR_CODIGOClick(Sender: TObject);
    procedure FDTable1AfterInsert(DataSet: TDataSet);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure FormShow(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure DataSource2DataChange(Sender: TObject; Field: TField);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    alterado: boolean;
  end;

var
  frmCadControleDeQualidade: TfrmCadControleDeQualidade;

implementation

{$R *.dfm}

uses uteis, uControleDeQualidade, InicioDB;

procedure TfrmCadControleDeQualidade.btnConfirmarClick(Sender: TObject);
begin
  inherited;
  qAux4.Close;
  qAux4.SQL.Clear;
  qAux4.SQL.Text := 'UPDATE CONTROLE_DE_QUALIDADE ' +
  ' SET CQUA_DATA_CONCLUSAO = ' + DateTimeToSQL(now)  +
  ' WHERE CQUA_PRDL_LOTE = ' + QuotedStr(CQUA_PRDL_LOTE.Text) +
  ' AND  CQUA_IOP_NORDEM = ' + QuotedStr(CQUA_IOP_NORDEM.Text) ;
  qAux4.ExecSQL;

  qAux4.Close;
  qAux4.SQL.Clear;
  qAux4.SQL.Text := 'INSERT INTO HIST_CONTROLE_DE_QUALIDADE (HCQ_CODIGO, PRDL_LOTE, IOP_NORDEM, HCQ_DESCRICAO, HCQ_DATA_HORA, USU_CODIGO)' +
  'VALUES (' + IntTostr(GetNextSequence('GEN_HIST_CONTROLE_DE_QUALIDADE')) + ',' +
    QuotedStr(CQUA_PRDL_LOTE.Text) + ',' +
    QuotedStr(CQUA_IOP_NORDEM.Text) + ',' +
    QuotedStr('Finalizado o controle de qualidade.') + ',' +
    DateTimeToSQL(now) + ',' +
    DBInicio.Usuario.CODIGO + ')';
  qAux4.ExecSQL;


  frmCadControleDeQualidade.Close;
  frmControleDeQualidade.filtro;
end;

procedure TfrmCadControleDeQualidade.DataSource2DataChange(Sender: TObject; Field: TField);
begin
  inherited;
  lkCQUA_PAR_CODIGO.KeyValue := FDQuery1CQUA_PAR_CODIGO.Value;
  CQUA_PAR_CODIGO.Text := lkCQUA_PAR_CODIGO.KeyValue;
  CQUA_RESULTADO.Text := FDQuery1CQUA_RESULTADO.Value;
  qAux3.Close;

  qAux3.SQL.Clear;
  qAux3.SQL.Text := 'SELECT CQP_ESPERADO, CQP_VALOR_MIN, CQP_VALOR_MAX, PAR_OBSERVACAO ' +
  ' FROM CONTROLE_DE_QUALIDADE_PRODUTO CQP ' +
  ' JOIN PARAMETROS_DA_QUALIDADE PQ ON PQ.PAR_CODIGO = CQP.PAR_CODIGO ' +
    'WHERE PRD_REFER = ' + QuotedStr(labelReferencia.Caption) + ' AND CQP.PAR_CODIGO = ' + CQUA_PAR_CODIGO.Text;
  qAux3.Open();
  esperado.Text := qAux3.FieldByName('CQP_ESPERADO').AsString;
  minimo.Text := qAux3.FieldByName('CQP_VALOR_MIN').AsString;
  maximo.Text := qAux3.FieldByName('CQP_VALOR_MAX').AsString;


  FDTable1.Active := True;
  FDTable1.Locate('CQUA_CODIGO', FDQuery1CQUA_CODIGO.Value);
  CQUA_RESULTADO.Text :=   FDTable1.FieldByName('CQUA_RESULTADO').AsString;
  CQUA_PAR_CODIGO.Text := FDTable1.FieldByName('CQUA_PAR_CODIGO').AsString;
  db_CQUA_OBSERVACAO.Text := FDTable1.FieldByName('CQUA_OBSERVACAO').AsString;

end;

procedure TfrmCadControleDeQualidade.DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
var
    dataHoraFormatada, sql: string;

begin
  inherited;
  CQUA_PRDL_LOTE.Text := ed_CQUA_PRDL_LOTE.Text;
  CQUA_IOP_NORDEM.Text := ed_CQUA_IOP_NORDEM.Text;
  PRD_REFER.Text := ed_PRD_REFER.Text;

  if (Button = nbInsert) OR (Button = nbEdit) then
  begin
    lkCQUA_PAR_CODIGO.Enabled := True;
    CQUA_RESULTADO.Enabled := True;
    db_CQUA_OBSERVACAO.Enabled := True;
    DateTimeToString(dataHoraFormatada, 'dd/mm/yyyy HH:MM:SS', Now);

    if db_CQUA_DATA_INICIALIZACAO.text = '' then
      db_CQUA_DATA_INICIALIZACAO.Text := dataHoraFormatada;
  end
  else if (Button = nbDelete)  then
  begin
//    qAux4.Close;
//    qAux4.SQL.Clear;
//    qAux4.SQL.Text :=  'SELECT * FROM CONTROLE_DE_QUALIDADE CQ ' +
//    ' WHERE CQ.CQUA_PRDL_LOTE = ' +  sqstr(ed_CQUA_PRDL_LOTE.text)+  ' AND  CQ.CQUA_IOP_NORDEM = ' + sqstr(ed_CQUA_IOP_NORDEM.Text) ;
//    qAux4.Open;
//    if qAux4.RecordCount = 0 then
//      exit;
    qAux4.Close;
    qAux4.SQL.Clear;
    qAux4.SQL.Text := 'INSERT INTO HIST_CONTROLE_DE_QUALIDADE (HCQ_CODIGO, PRDL_LOTE, IOP_NORDEM, HCQ_DESCRICAO, HCQ_DATA_HORA, USU_CODIGO)' +
    'VALUES (' + IntTostr(GetNextSequence('GEN_HIST_CONTROLE_DE_QUALIDADE')) + ',' +
      QuotedStr(CQUA_PRDL_LOTE.Text) + ',' +
      QuotedStr(CQUA_IOP_NORDEM.Text) + ',' +
      QuotedStr('Excluído o item do controle de qualidade: ' + lkCQUA_PAR_CODIGO.Text) + ',' +
      DateTimeToSQL(now) + ',' +
      DBInicio.Usuario.CODIGO + ')';
    qAux4.ExecSQL;
    lkCQUA_PAR_CODIGO.Enabled := False;
    CQUA_RESULTADO.Enabled := False;
    db_CQUA_OBSERVACAO.Enabled := False;
    FDQuery1.Refresh;
  end
  else if (Button = nbPost)  then
  begin
    qAux4.Close;
    qAux4.SQL.Clear;
    qAux4.SQL.Text :=  'SELECT * FROM CONTROLE_DE_QUALIDADE CQ ' +
    ' WHERE CQ.CQUA_PRDL_LOTE = ' +  sqstr(ed_CQUA_PRDL_LOTE.text)+  ' AND  CQ.CQUA_IOP_NORDEM = ' + sqstr(ed_CQUA_IOP_NORDEM.Text) ;
    qAux4.Open;
    if qAux4.RecordCount = 1 then
    begin
      qAux4.Close;
      qAux4.SQL.Clear;
      qAux4.SQL.Text := 'INSERT INTO HIST_CONTROLE_DE_QUALIDADE (HCQ_CODIGO, PRDL_LOTE, IOP_NORDEM, HCQ_DESCRICAO, HCQ_DATA_HORA, USU_CODIGO)' +
      'VALUES (' + IntToStr(GetNextSequence('GEN_HIST_CONTROLE_DE_QUALIDADE')) + ',' +
        QuotedStr(CQUA_PRDL_LOTE.Text) + ',' +
        QuotedStr(CQUA_IOP_NORDEM.Text) + ',' +
        QuotedStr('Início do controle de qualidade.') + ',' +
        DateTimeToSQL(now) + ',' +
        DBInicio.Usuario.CODIGO + ')';
      qAux4.ExecSQL;
    lkCQUA_PAR_CODIGO.Enabled := False;
    CQUA_RESULTADO.Enabled := False;
    db_CQUA_OBSERVACAO.Enabled := False;
      FDQuery1.Refresh;
    end;
    qAux4.Close;
    qAux4.SQL.Clear;
    sql := 'INSERT INTO HIST_CONTROLE_DE_QUALIDADE (HCQ_CODIGO, PRDL_LOTE, IOP_NORDEM, HCQ_DESCRICAO, HCQ_DATA_HORA, USU_CODIGO)' +
    'VALUES (' + IntToStr(GetNextSequence('GEN_HIST_CONTROLE_DE_QUALIDADE')) + ',' +
      QuotedStr(CQUA_PRDL_LOTE.Text) + ',' +
      QuotedStr(CQUA_IOP_NORDEM.Text) + ',';
      if alterado then
        sql := sql + QuotedStr('Alterado item do controle de qualidade: ' + lkCQUA_PAR_CODIGO.Text) + ','
      else
        sql := sql + QuotedStr('Incluído item do controle de qualidade: ' + lkCQUA_PAR_CODIGO.Text) + ',';
      sql := sql + DateTimeToSQL(now) + ',' +
      DBInicio.Usuario.CODIGO + ')';
    qAux4.SQL.Text := sql;
    qAux4.ExecSQL;
    lkCQUA_PAR_CODIGO.Enabled := False;
    CQUA_RESULTADO.Enabled := False;
    db_CQUA_OBSERVACAO.Enabled := False;
    FDQuery1.Refresh;
    alterado := false
  end
  else if (Button = nbDelete)  then
  begin
    qAux4.Close;
    qAux4.SQL.Clear;
    qAux4.SQL.Text := 'INSERT INTO HIST_CONTROLE_DE_QUALIDADE (HCQ_CODIGO, PRDL_LOTE, IOP_NORDEM, HCQ_DESCRICAO, HCQ_DATA_HORA, USU_CODIGO)' +
    'VALUES (' + IntToStr(GetNextSequence('GEN_HIST_CONTROLE_DE_QUALIDADE')) + ',' +
      QuotedStr(CQUA_PRDL_LOTE.Text) + ',' +
      QuotedStr(CQUA_IOP_NORDEM.Text) + ',' +
      QuotedStr('Excluído o item do controle de qualidade: ' + lkCQUA_PAR_CODIGO.Text) + ',' +
      DateTimeToSQL(now) + ',' +
      DBInicio.Usuario.CODIGO + ')';
    qAux4.ExecSQL;
    lkCQUA_PAR_CODIGO.Enabled := False;
    CQUA_RESULTADO.Enabled := False;
    db_CQUA_OBSERVACAO.Enabled := False;
    FDQuery1.Refresh;
  end
  else
  begin
    lkCQUA_PAR_CODIGO.Enabled := False;
    CQUA_RESULTADO.Enabled := False;
    db_CQUA_OBSERVACAO.Enabled := False;
    FDQuery1.Refresh;
  end;
  if (Button = nbEdit) then
   alterado := true
  else
    alterado := false;
  if (Button = nbInsert) then
    lkCQUA_PAR_CODIGO.KeyValue := -1;
//  frmControleDeQualidade.filtro;

end;

procedure TfrmCadControleDeQualidade.FDTable1AfterInsert(DataSet: TDataSet);
begin
  inherited;
	if CQUA_CODIGO.Text = '0' then
 		 CQUA_CODIGO.Text := IntToStr(GetNextSequence('GEN_CONTROLE_DE_QUALIDADE'));

end;

procedure TfrmCadControleDeQualidade.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frmControleDeQualidade.filtro;
end;

procedure TfrmCadControleDeQualidade.FormCreate(Sender: TObject);
begin
  inherited;
  FDTable1.Connection := dbConn;
  FDTable1.Open();

end;

procedure TfrmCadControleDeQualidade.FormShow(Sender: TObject);
var
  lote: Variant;
begin
  inherited;

  FDTable1.Filter := 'CQUA_PRDL_LOTE = ' +  sqstr(ed_CQUA_PRDL_LOTE.text)+  ' AND  CQUA_IOP_NORDEM = ' + sqstr(ed_CQUA_IOP_NORDEM.Text) ;
  FDTable1.Filtered := True;
  FDQuery1.SQL.Clear;
  FDQuery1.SQL.Text := 'SELECT * FROM CONTROLE_DE_QUALIDADE CQ ' +
    ' INNER JOIN PARAMETROS_DA_QUALIDADE PQ ON (CQ.CQUA_PAR_CODIGO = PQ.PAR_CODIGO) ' +
    ' WHERE CQ.CQUA_PRDL_LOTE = ' +  sqstr(ed_CQUA_PRDL_LOTE.text)+  ' AND  CQ.CQUA_IOP_NORDEM = ' + sqstr(ed_CQUA_IOP_NORDEM.Text) ;
  FDQuery1.Open;

  qAux.SQL.Text := 'SELECT * FROM PARAMETROS_DA_QUALIDADE PQ' +
  ' JOIN CONTROLE_DE_QUALIDADE_PRODUTO CQP ON (CQP.PAR_CODIGO = PQ.PAR_CODIGO) ' +
  ' WHERE CQP.PRD_REFER =  ' + QuotedStr(labelReferencia.Caption) +
  ' ORDER BY PAR_DESCRICAO ' ;

  qAux.Open();
end;

procedure TfrmCadControleDeQualidade.lkCQUA_PAR_CODIGOClick(Sender: TObject);
begin
  inherited;
  CQUA_PAR_CODIGO.Text := lkCQUA_PAR_CODIGO.KeyValue;
  qAux3.SQL.Clear;
  qAux3.SQL.Text := 'SELECT CQP_ESPERADO, CQP_VALOR_MIN, CQP_VALOR_MAX, PAR_OBSERVACAO ' +
  ' FROM CONTROLE_DE_QUALIDADE_PRODUTO CQP ' +
  ' JOIN PARAMETROS_DA_QUALIDADE PQ ON PQ.PAR_CODIGO = CQP.PAR_CODIGO ' +
    'WHERE PRD_REFER = ' + QuotedStr(labelReferencia.Caption) + ' AND CQP.PAR_CODIGO = ' + CQUA_PAR_CODIGO.Text;
  qAux3.Open();
  esperado.Text := qAux3.FieldByName('CQP_ESPERADO').AsString;
  minimo.Text := qAux3.FieldByName('CQP_VALOR_MIN').AsString;
  maximo.Text := qAux3.FieldByName('CQP_VALOR_MAX').AsString;
//  db_CQUA_OBSERVACAO.Text := qAux3.FieldByName('PAR_OBSERVACAO').AsString;

  FDTable1.FieldByName('CQUA_OBSERVACAO').AsString := qAux3.FieldByName('PAR_OBSERVACAO').AsString;
end;

end.
