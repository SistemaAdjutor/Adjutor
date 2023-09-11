unit uNovoApontamentoImprime;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.DateUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBForm, Data.DBXFirebird, Data.FMTBcd, Data.DB, Data.SqlExpr, ACBrEnterTab, ACBrBase, ACBrCalculadora, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  SgDbSeachComboUnit, ComboBoxRW, Vcl.Mask, JvExMask, JvToolEdit, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, frxClass, frxDBSet, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfrmNovoApontamentoImprime = class(TfrmBaseDB)
    PrinterApontamento: TPrinterSetupDialog;
    gbBotoes: TGroupBox;
    BitConfig: TBitBtn;
    BitOk: TBitBtn;
    BitCancelar: TBitBtn;
    Panel1: TPanel;
    grp00: TGroupBox;
    lbRelatorio: TListBox;
    gbPeriodo: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    edDataInicial: TJvDateEdit;
    edDataFinal: TJvDateEdit;
    gbColaborador: TGroupBox;
    Label4: TLabel;
    edColaboradorCodigo: TEdit;
    gbOrdemProducao: TGroupBox;
    Label3: TLabel;
    edOrdemProducao: TEdit;
    frxOPColaborador: TfrxReport;
    qOPCabecalho: TFDQuery;
    frxDBOPCabecalho: TfrxDBDataset;
    rgSaida: TRadioGroup;
    cbColaborador: TSgDbSearchCombo;
    qColaborador: TSQLQuery;
    dsColaborador: TDataSource;
    frxOPProducao: TfrxReport;
    frxOPPeriodo: TfrxReport;
    qOPCabecalhoCOL_NOME: TStringField;
    qOPCabecalhoOSV_CODIGO: TStringField;
    qOPCabecalhoOPE_DESCRICAO: TStringField;
    qOPCabecalhoPRD_REFER: TStringField;
    qOPCabecalhoPRD_DESCRI: TStringField;
    qOPCabecalhoOCE_MOTIVO: TStringField;
    qOPCabecalhoIOP_QUANTIDADE: TFMTBCDField;
    qOPCabecalhoOPR_EMISSAO: TSQLTimeStampField;
    qOPCabecalhoAPF_DATA_INI: TSQLTimeStampField;
    qOPCabecalhoAPF_DATA_FIM: TSQLTimeStampField;
    qOPCabecalhoAPF_REFUGADO: TFMTBCDField;
    qOPCabecalhoTEMPO_EM_MINUTOS: TLargeintField;
    dsqOPCabecalho: TDataSource;
    qOPCabecalhoAPF_REBARBA: TFMTBCDField;
    frxOPRefugado: TfrxReport;
    qOPCabecalhoEMP_CODIGO: TStringField;
    gbPedido: TGroupBox;
    Label5: TLabel;
    edPedidoNumero: TEdit;
    qOPPedido: TFDQuery;
    qOPPedidoPED_CODIGO: TStringField;
    qOPPedidoCLI_RAZAO: TStringField;
    qOPPedidoREP_NOME: TStringField;
    qOPPedidoOSV_CODIGO: TStringField;
    qOPPedidoPRD_REFER: TStringField;
    qOPPedidoPRD_DESCRI: TStringField;
    qOPPedidoIOP_QUANTIDADE: TFMTBCDField;
    qOPPedidoOPR_EMISSAO: TSQLTimeStampField;
    qOPPedidoCOL_NOME: TStringField;
    qOPPedidoOPE_CODIGO: TIntegerField;
    qOPPedidoOPE_DESCRICAO: TStringField;
    qOPPedidoEQP_DESCRICAO: TStringField;
    frxDBOPPedido: TfrxDBDataset;
    frxOPPedido: TfrxReport;
    dsOPPedido: TDataSource;
    qOPPedidoENTREGA: TSQLTimeStampField;
    qOPPedidoEMP_CODIGO: TStringField;
    procedure BitConfigClick(Sender: TObject);
    procedure BitCancelarClick(Sender: TObject);
    procedure lbRelatorioClick(Sender: TObject);
    procedure edColaboradorCodigoExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure frxOPColaboradorBeginDoc(Sender: TObject);
    procedure BitOkClick(Sender: TObject);
    procedure frxOPColaboradorGetValue(const VarName: string; var Value: Variant);
    procedure cbColaboradorChange(Sender: TObject);
    procedure frxOPProducaoBeginDoc(Sender: TObject);
    procedure frxOPPeriodoBeginDoc(Sender: TObject);
    procedure frxOPRefugadoBeginDoc(Sender: TObject);
    procedure frxOPPedidoBeginDoc(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    var Minutos: integer;
    var totalColaborador: integer;
  public
    { Public declarations }
  end;

var
  frmNovoApontamentoImprime: TfrmNovoApontamentoImprime;

implementation

uses Uteis, DataCad, InicioDB, system.Math;

{$R *.dfm}

procedure TfrmNovoApontamentoImprime.BitCancelarClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmNovoApontamentoImprime.BitConfigClick(Sender: TObject);
begin
  inherited;
  PrinterApontamento.Execute();
end;

procedure TfrmNovoApontamentoImprime.BitOkClick(Sender: TObject);
var
  sql, dataF : string;
  y,m,d: word;
  lista: TStringList;

begin
  inherited;
  if (edDataInicial.date = 0) and (lbRelatorio.ItemIndex > 0) then
  begin
    MessageDlg('A Data Inicial deve ser informada', mtWarning, [mbOK], 0 );
    Exit;
  end;
  if edDataFinal.date = 0 then
    edDataFinal.Date := now;
  decodedate( edDataFinal.Date, y, m, d);

  dataF := quotedstr( strZero(y, 4) + '-' + strZero(m, 2) + '-' + strZero(d, 2) + ' 23:59:59' );

  qOPCabecalho.Close;
  qOPCabecalho.SQL.Clear;
  if True then
    case lbRelatorio.ItemIndex of
      0, 1, 2, 3:
      begin
        sql := 'SELECT P1.EMP_CODIGO, col.COL_NOME, FB.OSV_CODIGO, OPE_DESCRICAO, P1.PRD_REFER, P1.PRD_DESCRI, oe.OCE_MOTIVO, ' +
          '   OS.IOP_QUANTIDADE, OPR.OPR_EMISSAO, APF.APF_DATA_INI, APF.APF_DATA_FIM, APF.APF_REFUGADO, APF.APF_REBARBA, ' +
          '   DATEDIFF(MINUTE, APF.APF_DATA_INI, APF.APF_DATA_FIM)  AS TEMPO_EM_MINUTOS ' +
          ' FROM FABRICACAO FB ' +
          '   JOIN PRD0000 P1 ON (P1.PRD_CODIGO = fb.PRD_CODIGO) ' +
          '   JOIN ITEM_ORDEMPRODUCAO OS ON (OS.iop_CODIGO = FB.iop_CODIGO AND P1.PRD_codigo = os.PRD_codigo) ' +
          '   JOIN ORDEMPRODUCAO OPR ON (OPR.OPR_CODIGO = OS.OPR_CODIGO) ' +
          '   JOIN OPERACOES OP  ON (OP.OPE_CODIGO = FB.OPE_CODIGO) ' +
          '   JOIN APONTAMENTO_FAB APF ON (APF.FAB_CODIGO = fb.FAB_CODIGO) ' +
          '   JOIN COLABORADOR COL ON (COL.COL_CODIGO = apf.COL_CODIGO) ' +
          '   LEFT JOIN OCORRENCIA_EVENTO OE ON (OE.FAB_CODIGO = FB.FAB_CODIGO) ' +
          '   LEFT JOIN OCORRENCIA OC ON (OC.OCO_CODIGO = OE.OCO_CODIGO) ' +
          '   LEFT JOIN EQUIPAMENTO EQ ON 	(EQ.EQP_CODIGO = APF.EQP_CODIGO) ' +
          ' WHERE (apf.APF_DATA_FIM IS NOT NULL) ' +
          iif(lbRelatorio.ItemIndex = 3, ' AND (apf.APF_REBARBA > 0 OR APF.APF_REFUGADO > 0) ' , '') +
          iif((edDataInicial.date > 0) and  (edDataFinal.date > 0),
            '  AND (OPR.OPR_EMISSAO >= ' + DateToSQL(edDataInicial.date) +  ') AND (OPR.OPR_EMISSAO <= ' + dataF + ')'
            , '' )+
          iif(edOrdemProducao.Text = '', '', ' AND (fb.OSV_CODIGO =  ' + edOrdemProducao.Text + ') ')  +
          iif(edColaboradorCodigo.Text = '', '', ' AND (col.COL_CODIGO = ' + edColaboradorCodigo.Text + ')') ;
          case lbRelatorio.ItemIndex of
            0: sql := sql + ' ORDER BY fb.OSV_CODIGO, APF.APF_DATA_INI ';
            1, 3: sql := sql + ' ORDER BY opr.OPR_EMISSAO, fb.OSV_CODIGO, APF.APF_DATA_INI ';
            2: sql := sql + ' ORDER BY col.COL_NOME, fb.OSV_CODIGO, APF.APF_DATA_INI ';
          end;
          qOPCabecalho.SQL.Text := sql;
          qOPCabecalho.Open();

      end;
      4:
      begin
        sql :=
          'SELECT ' +
          '   opr.EMP_CODIGO , ' +
          '   opr.PED_CODIGO , ' +
          '   c.CLI_RAZAO , ' +
          '   R.REP_NOME , ' +
          '   FB.OSV_CODIGO, ' +
          '   P1.PRD_REFER, ' +
          '   P1.PRD_DESCRI, ' +
          '   OS.IOP_QUANTIDADE, ' +
          '   OPR.OPR_EMISSAO, ' +
          '   OPR.OPR_EMISSAO + 5 as ENTREGA, ' +
          '   COL.COL_NOME , ' +
          '   OP.OPE_CODIGO, ' +
          '   OP.OPE_DESCRICAO, ' +
          '   EQ.EQP_DESCRICAO ' +
          ' FROM  FABRICACAO FB ' +
          ' JOIN PRD0000 P1 ON  (P1.PRD_CODIGO = fb.PRD_CODIGO) ' +
          ' JOIN ITEM_ORDEMPRODUCAO OS ON  (OS.iop_CODIGO = FB.iop_CODIGO    AND P1.PRD_codigo = os.PRD_codigo) ' +
          ' JOIN ORDEMPRODUCAO OPR ON  (OPR.OPR_CODIGO = OS.OPR_CODIGO) ' +
          ' JOIN CLI0000 c ON (c.CLI_CODIGO = OPR.CLI_CODIGO) ' +
          ' JOIN PED0000 p ON (p.PED_CODIGO = opr.PED_CODIGO) ' +
          ' JOIN REP0000 r ON (r.REP_CODIGO = p.REP_CODIGO) ' +
          ' JOIN OPERACOES OP ON  (OP.OPE_CODIGO = FB.OPE_CODIGO) ' +
          ' JOIN APONTAMENTO_FAB APF ON  (APF.FAB_CODIGO = fb.FAB_CODIGO) ' +
          ' JOIN COLABORADOR COL ON  (COL.COL_CODIGO = apf.COL_CODIGO) ' +
          ' LEFT JOIN EQUIPAMENTO EQ ON  (EQ.EQP_CODIGO = APF.EQP_CODIGO) ' +
          ' WHERE 1 = 1 ' +
          iif(edPedidoNumero.Text = '', '' , '  AND (opr.PED_CODIGO = ' + QuotedStr(edPedidoNumero.Text) +  ') ') +
          '  AND APF.APF_DATA_INI = ' +
          '        (SELECT max(apf2.APF_DATA_INI) ' +
          '          FROM APONTAMENTO_FAB APF2 ' +
          '          JOIN FABRICACAO FB2 ON fb2.FAB_CODIGO = apf2.FAB_CODIGO ' +
          '          WHERE APF2.FAB_CODIGO = FB.FAB_CODIGO ' +
          '        ) ' +
          iif((edDataInicial.date > 0) {and  (edDataFinal.date > 0)}   ,
            '  AND (OPR.OPR_EMISSAO >= ' + DateToSQL(edDataInicial.date) +  ') AND (OPR.OPR_EMISSAO <= ' + dataF + ')'
            , '' )+

          ' ORDER BY  apf.APF_DATA_INI ' ;
        qOPPedido.SQL.Text := sql;
        if DBInicio.IsDesenvolvimento then
          CopyToClipboard(sql);
        qOPPedido.Open();
      end;
    end;

  if DBInicio.IsDesenvolvimento then
    CopyToClipBoard(sql);
  lista := TStringList.Create;
  lista.Clear;
  case lbRelatorio.ItemIndex of
    0:
    begin
      if rgSaida.ItemIndex = 0 then
        frxOPProducao.ShowReport()
      else
      begin
        lista.add('OSV_CODIGO');
        lista.add('OPE_DESCRICAO');
        lista.add('COL_NOME');
        lista.add('PRD_REFER');
        lista.add('PRD_DESCRI');
        lista.add('OCE_MOTIVO');
        lista.add('IOP_QUANTIDADE');
        lista.add('APF_REFUGADO');
        lista.add('OPR_EMISSAO');
        lista.add('APF_DATA_INI');
        lista.add('APF_DATA_FIM');
        lista.add('TEMPO_EM_MINUTOS');
        CriaCSV(dsqOPCabecalho, lista, Self);
      end;
    end;
    1:
    begin
      if rgSaida.ItemIndex = 0 then
        frxOPPeriodo.ShowReport()
      else
      begin
        lista.add('OPR_EMISSAO');
        lista.add('OSV_CODIGO');
        lista.add('OPE_DESCRICAO');
        lista.add('COL_NOME');
        lista.add('PRD_REFER');
        lista.add('PRD_DESCRI');
        lista.add('OCE_MOTIVO');
        lista.add('IOP_QUANTIDADE');
        lista.add('APF_DATA_INI');
        lista.add('APF_DATA_FIM');
        lista.add('TEMPO_EM_MINUTOS');
        CriaCSV(dsqOPCabecalho, lista, Self);
      end;
    end;
    2:
    begin
      if rgSaida.ItemIndex = 0 then
        frxOPColaborador.ShowReport()
      else
      begin
        lista.add('COL_NOME');
        lista.add('OSV_CODIGO');
        lista.add('OPE_DESCRICAO');
        lista.add('PRD_REFER');
        lista.add('PRD_DESCRI');
        lista.add('OCE_MOTIVO');
        lista.add('IOP_QUANTIDADE');
        lista.add('OPR_EMISSAO');
        lista.add('APF_DATA_INI');
        lista.add('APF_DATA_FIM');
        lista.add('TEMPO_EM_MINUTOS');
        CriaCSV(dsqOPCabecalho, lista, Self);
      end;
    end;
    3:
    begin
      if rgSaida.ItemIndex = 0 then
        frxOPRefugado.ShowReport()
      else
      begin
        lista.add('OSV_CODIGO');
        lista.add('OPR_EMISSAO');
        lista.add('COL_NOME');
        lista.add('APF_DATA_INI');
        lista.add('APF_DATA_FIM');
        lista.add('TEMPO_EM_MINUTOS');
        lista.add('APF_REFUGADO');
        lista.add('APF_REBARBA');
        CriaCSV(dsqOPCabecalho, lista, Self);
      end;
    end;
    4:
    begin
      if rgSaida.ItemIndex = 0 then
        frxOPPedido.ShowReport()
      else
      begin
        lista.add('PED_CODIGO');
        lista.add('CLI_RAZAO');
        lista.add('REP_NOME');
        lista.add('OSV_CODIGO');
        lista.add('PRD_REFER');
        lista.add('PRD_DESCRI');
        lista.add('OPR_EMISSAO');
        lista.add('COL_NOME');
        lista.add('OPE_CODIGO');
        lista.add('OPE_DESCRICAO');
        lista.add('EQP_DESCRICAO');
        CriaCSV(dsOPPedido, lista, Self);
      end;
    end;
  end;
end;

procedure TfrmNovoApontamentoImprime.cbColaboradorChange(Sender: TObject);
begin
  inherited;
  edColaboradorCodigo.Text := cbColaborador.idRetorno;

end;


procedure TfrmNovoApontamentoImprime.edColaboradorCodigoExit(Sender: TObject);
begin
  inherited;
  cbColaborador.idRetorno := edColaboradorCodigo.Text;
end;

procedure TfrmNovoApontamentoImprime.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  edPedidoNumero.Text := '';
  edDataInicial.Date := 0;
  edDataFinal.Date := 0;
  inherited;

end;

procedure TfrmNovoApontamentoImprime.FormCreate(Sender: TObject);
begin
  inherited;
  lbRelatorio.ItemIndex := 0;
  lbRelatorioClick(Sender);
  Minutos := 0;
  totalColaborador := 0;

end;

procedure TfrmNovoApontamentoImprime.frxOPColaboradorBeginDoc(Sender: TObject);
begin
  inherited;
  TfrxPictureView(frxOPColaborador.FindObject('logoEmpresa')).Picture.Assign(DBInicio.Empresa.LOGO);
  totalColaborador := 0;
end;

procedure TfrmNovoApontamentoImprime.frxOPColaboradorGetValue(const VarName: string; var Value: Variant);
begin
  inherited;
  if VarName = 'tempo' then
  begin
    Minutos := Minutos + qOPCabecalho.FieldByName('TEMPO_EM_MINUTOS').Asinteger;
    totalColaborador := totalColaborador + qOPCabecalho.FieldByName('TEMPO_EM_MINUTOS').Asinteger;
    Value := minutosParaHms(qOPCabecalho.FieldByName('TEMPO_EM_MINUTOS').Asinteger);
  end;
  if VarName = 'totalColaborador' then
  begin
    Value := minutosParaHms(totalColaborador);
    totalColaborador := 0;
  end;
  if VarName = 'tempoTotal' then
  begin
    Value := minutosParaHms(Minutos);
    Minutos := 0;
  end;
  if VarName = 'dataI' then
  begin
    Value := edDataInicial.Text;
  end;
  if VarName = 'dataF' then
  begin
    Value := edDataFinal.Text;
  end;
  if VarName = 'empresa' then
  begin
    Value := DBInicio.Empresa.RAZAO;
  end;
  if VarName = 'endereco' then
  begin
    Value := DBInicio.Empresa.ENDERECO + ' - ' + DBInicio.Empresa.BAIRRO + ' - ' + DBInicio.Empresa.CIDADE;
  end;
end;

procedure TfrmNovoApontamentoImprime.frxOPPedidoBeginDoc(Sender: TObject);
begin
  inherited;
  TfrxPictureView(frxOPPedido.FindObject('logoEmpresa')).Picture.Assign(DBInicio.Empresa.LOGO);
end;

procedure TfrmNovoApontamentoImprime.frxOPPeriodoBeginDoc(Sender: TObject);
begin
  inherited;
  TfrxPictureView(frxOPPeriodo.FindObject('logoEmpresa')).Picture.Assign(DBInicio.Empresa.LOGO);
end;

procedure TfrmNovoApontamentoImprime.frxOPProducaoBeginDoc(Sender: TObject);
begin
  inherited;
  TfrxPictureView(frxOPProducao.FindObject('logoEmpresa')).Picture.Assign(DBInicio.Empresa.LOGO);

end;

procedure TfrmNovoApontamentoImprime.frxOPRefugadoBeginDoc(Sender: TObject);
begin
  inherited;
  TfrxPictureView(frxOPRefugado.FindObject('logoEmpresa')).Picture.Assign(DBInicio.Empresa.LOGO);
end;

procedure TfrmNovoApontamentoImprime.lbRelatorioClick(Sender: TObject);
begin
  inherited;
  case lbRelatorio.ItemIndex of
    0:
    begin
      gbPedido.Visible := False;
      edPedidoNumero.Text := '';
      gbOrdemProducao.Visible := True;
      gbPeriodo.Visible := False;
      edDataInicial.Date := 0;
      edDataFinal.Date := 0;
      gbColaborador.Visible := False;
      edColaboradorCodigo.Text := '';
      cbColaborador.idRetorno := '';
    end;
    1, 3:
    begin
      gbPedido.Visible := False;
      edPedidoNumero.Text := '';
      gbOrdemProducao.Visible := False;
      edOrdemProducao.Text := '';
      gbPeriodo.Visible := True;
      gbColaborador.Visible := False;
      edColaboradorCodigo.Text := '';
      cbColaborador.idRetorno := '';
    end;
    2:
    begin
      gbPedido.Visible := False;
      edPedidoNumero.Text := '';
      gbOrdemProducao.Visible := False;
      edOrdemProducao.Text := '';
      gbPeriodo.Visible := True;
      gbColaborador.Visible := True;
    end;
    4:
    begin
      gbPedido.Visible := True;
      gbPeriodo.Visible := True;
      edPedidoNumero.Text := '';
      gbOrdemProducao.Visible := False;
      edDataInicial.Date := 0;
      edDataFinal.Date := 0;
      gbColaborador.Visible := False;
      edColaboradorCodigo.Text := '';
      cbColaborador.idRetorno := '';
    end;

  end;

end;



end.
