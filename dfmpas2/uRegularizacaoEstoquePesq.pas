unit uRegularizacaoEstoquePesq;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, BaseDbForm,
  StdCtrls, DBCtrls, Mask, ExtCtrls, ComCtrls, Buttons, DB, Grids, DBGrids,
  RwFunc, Provider, SqlExpr, SqlClientDataSet, DBClient, DBLocal, DBLocalS,
  FMTBCd,
  JvExDBGrids, JvDBGrid, Data.DBXFirebird, SimpleDS, ACBrEnterTab,
  ACBrBase, ACBrCalculadora, SgDbSeachComboUnit, SgDbLookupComboUnit, ACBrETQ, frxClass, frxDBSet;

type
  TfrmRegularizacaoEstoquePesq = class(TfrmBaseDB)
    DsRefer: TDataSource;
    pn1: TPanel;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    edAlmoxarifado: TEdit;
    GroupBox1: TGroupBox;
    RadNome: TRadioButton;
    RadRefer: TRadioButton;
    GbPesquisa: TGroupBox;
    Edt_Nome: TEdit;
    BitPesquisar: TBitBtn;
    BitSair: TBitBtn;
    GrpProdutos: TGroupBox;
    DbProdutoGrid: TDBGrid;
    DspSaldos: TDataSetProvider;
    CdsSaldos: TClientDataSet;
    CdsSaldosAMX_CODIGO_RET: TStringField;
    CdsSaldosAMX_DESCRI_RET: TStringField;
    CdsSaldosAMX_SALDO_RET: TFMTBCdField;
    DsSaldos: TDataSource;
    GroupBox4: TGroupBox;
    JvDBGrid5: TJvDBGrid;
    rbCodigoFornecedor: TRadioButton;
    RbEnderecamento: TRadioButton;
    cbAlmoxarifado: TSgDbSearchCombo;
    qAlmoxarifado: TSQLQuery;
    qRefer: TSQLQuery;
    dspRfer: TDataSetProvider;
    CdsRefer: TClientDataSet;
    CdsReferPRD_REFER: TStringField;
    CdsReferPRD_ESTOQUE: TFMTBCdField;
    CdsReferPRD_DESCRI: TStringField;
    CdsReferPRD_UND: TStringField;
    CdsReferIPI_CODIGO: TStringField;
    sqlSaldos: TSQLQuery;
    btnLimpar: TBitBtn;
    cdsReferPRD_MAXIMO: TFMTBCDField;
    cdsReferPRD_CODIGO: TStringField;
    cdsReferPRD_STATUS: TStringField;
    cdsReferLIN_DESCRI: TStringField;
    cdsReferPRDE_ENDERECO: TStringField;
    cdsReferPRD_ESTOQUE_SEGURANCA_REG: TFMTBCDField;
    cdsReferPRD_LOTE_COMPRA_REG: TStringField;
    cdsReferPRD_OBSERVACAO_REG: TMemoField;
    cdsReferPRD_DATA_REG: TDateField;
    cdsReferPRD_USU_CODIGO_REG: TIntegerField;
    cdsReferAMX_CODIGO: TStringField;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    frxDBRefer: TfrxDBDataset;
    frxRefer: TfrxReport;
    cdsReferUSU_NOME: TStringField;
    cdsReferEMP_CODIGO: TStringField;
    procedure BuscaProduto;
    procedure RadNomeClick(Sender: tObject);
    procedure RadCodigoClick(Sender: tObject);
    procedure DbProdutoGridDblClick(Sender: tObject);
    procedure RadReferClick(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure SpeedButton1Click(Sender: tObject);
    procedure RadCodigoExit(Sender: tObject);
    procedure RadNomeExit(Sender: tObject);
    procedure RadReferExit(Sender: tObject);
    procedure BitPesquisarClick(Sender: tObject);
    procedure BitSairClick(Sender: tObject);
    procedure edAlmoxarifadoExit(Sender: tObject);
    procedure DbProdutoGridDrawColumnCell(Sender: tObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DbProdutoGridKeyDown(Sender: tObject; var Key: Word;
      Shift: TShiftState);
    procedure CdsReferPRD_PCUSTOGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure cbAlmoxarifadoSelect(Sender: TObject);
    procedure CdsReferAfterScroll(DataSet: TDataSet);
    procedure CBLinhakeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnLimparClick(Sender: TObject);
    procedure Edt_NomeChange(Sender: TObject);
    procedure cdsReferOBSERVACAO_REGGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure cdsReferPRD_OBSERVACAO_REGGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure cdsReferPRD_USU_CODIGO_REGGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure cdsReferPRD_ESTOQUE_SEGURANCA_REGGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure frxReferGetValue(const VarName: string; var Value: Variant);
    procedure frxReferBeginDoc(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  privaTe


    fCodigoRet: string;
    fReferRet: String;
    fDescricaoRetorno: string;
    fUnidadeRetorno: string;
    fDisponivelVendas : boolean;
    fCodigoFornecedor : string;
    procedure LayOutRad;

    //procedure Calcular_Saldo_Almoxarifado(sRefer: String);
    procedure MostraSaldoAlmox;
    procedure RetornaProduto;
  public
    Property CodigoRetorno: String Read fCodigoRet write fCodigoRet;
    Property ReferRetorno: String Read fReferRet write fReferRet;
    Property DescricaoRetorno:string read fDescricaoRetorno write fDescricaoRetorno;
    Property UnidadeRetorno:string read fUnidadeRetorno write fUnidadeRetorno;
    property DisponivelVendas: boolean read fDisponivelVendas write fDisponivelVendas;
    property CodigoFornecedor: string read fCodigoFornecedor write fCodigoFornecedor;

  end;

var frmRegularizacaoEstoquePesq: TfrmRegularizacaoEstoquePesq;

implementation

{$R *.DFM}

uses Uteis, InicioDB;

procedure TfrmRegularizacaoEstoquePesq.BuscaProduto;
var whe : boolean;
    wOrdem: string;
///
   procedure sqladd( stt: string );
   begin
        if stt<>'' then
        begin
            if whe then
               qRefer.sql.add( ' where '+stt )
            Else
               qRefer.sql.add( ' and '+stt );
            whe := False;
        end;
   end;
///
begin

  if cbAlmoxarifado.idRetorno <> '' then
  begin
    if BuscaUmDadoSqlAsString('SELECT USU_CODIGO FROM USUARIO_ALMOXARIFADO ua WHERE ua.USU_CODIGO = ' + DBInicio.Usuario.CODIGO + ' AND ua.AMX_CODIGO = ' + QuotedStr(cbAlmoxarifado.idRetorno)) = '' then
    begin
       MessageDlg('Usuário não autorizado para visualizar este almoxarifado', mtWarning, [mbOK], 0);
       cbAlmoxarifado.SetFocus;
       Exit;
    end
    else
      edAlmoxarifado.Text := cbAlmoxarifado.idRetorno;
  end
  else
  begin
    if BuscaUmDadoSqlAsString('SELECT USP_PROD_SEM_ALMOX FROM USUARIO_PARAMETRO up WHERE up.USP_COD_USUARIO = ' + DBInicio.Usuario.CODIGO) <> 'S' then
    begin
       MessageDlg('Usuário não autorizado a visualizar os produtos sem almoxarifado.', mtWarning, [mbOK], 0);
       cbAlmoxarifado.SetFocus;
       Exit;
    end;
  end;


     whe := True;
     CdsRefer.DisableControls;
     try
         CdsRefer.Close;
         qRefer.Close;
         qRefer.sql.text := '';
         qRefer.sql.ADD( 'Select DISTINCT PRD_STATUS,');
         qRefer.sql.ADD( '        T1.PRD_MARGEMVENDA,');
         qRefer.sql.ADD( '        T1.EMP_CODIGO,');
         qRefer.sql.ADD( '        T1.PTI_CODIGO,');
         qRefer.sql.ADD( '        IPI_CODIGO,');
         qRefer.sql.ADD( '        ( SELECT FIRST 1 T4.PRDCO_CODIGO_ORIGINAL FROM PRD_CODIGOORIGINAL T4 WHERE T4.PRD_CODIGO = T1.PRD_CODIGO  ) as PRD_CODORIGINAL,');
         qRefer.sql.ADD( '        PRD_REFER,');
         qRefer.sql.ADD( '        t1.PRD_CODIGO,');
         qRefer.sql.ADD( '        PRD_DESCRI,');
         qRefer.sql.ADD( '        PRD_UND,');
         qRefer.sql.ADD( '        (SELECT SUM(KAS_SALDO) - COALESCE(sum(KAS_RESERVA),0) FROM KARDEX_ALMOX_SALDO kas WHERE kas.PRD_CODIGO = T1.PRD_CODIGO ' +
           iif(dbInicio.Exclusivo('ESTOQUES') , ' AND kas.EMP_CODIGO = ' + QuotedStr(DBInicio.Emp_Codigo) ,'') + ' ) as PRD_ESTOQUE,');
         qRefer.sql.ADD( '        PRD_ESTOQUE_SEGURANCA_REG,');
         qRefer.sql.ADD( '        PRD_LOTE_COMPRA_REG,');
         qRefer.sql.ADD( '        PRD_OBSERVACAO_REG,');
         qRefer.sql.ADD( '        PRD_USU_CODIGO_REG,');
         qRefer.sql.ADD( '        PRD_DATA_REG,');
         qRefer.sql.ADD( '        PRD_MINIMO,');
         qRefer.sql.ADD( '        PRD_MAXIMO,');
         qRefer.sql.ADD( '        t1.AMX_CODIGO,');
         qRefer.sql.ADD( '        t3.prde_endereco,');
         qRefer.sql.ADD( '        u.USU_NOME,');
         qRefer.sql.ADD( '        t2.lin_descri, ');
         qRefer.sql.ADD( ' ( SELECT FIRST 1 cl.cli_razao FROM PRD_CODIGOORIGINAL T4  left join cli0000 cl on (cl.cli_codigo=t4.cli_codigo) WHERE T4.PRD_CODIGO = T1.PRD_CODIGO ) cli_razao ');
         qRefer.sql.ADD( 'from PRD0000 t1 ');
         if cbAlmoxarifado.idRetorno <> '' then
           qRefer.sql.ADD( ' JOIN USUARIO_ALMOXARIFADO ua ON (ua.USU_CODIGO = ' + DBInicio.Usuario.CODIGO + ' AND ua.AMX_CODIGO = t1.AMX_CODIGO) ' );

         if DisponivelVendas then
          qRefer.sql.ADD( '    inner JOIN PRD_TIPO pt ON (T1.PTI_CODIGO = pt.PTI_CODIGO AND pti_disponivel_vendas = '+ QuotedStr('S')+')');

         qRefer.sql.ADD( '     left join prd_linha t2 on (t2.lin_codigo = t1.lin_codigo) ');
         qRefer.sql.ADD( '     left join USUARIO u on (u.USU_CODIGO = t1.PRD_USU_CODIGO_REG) ');

         qRefer.sql.ADD( '     '+IIF(RbEnderecamento.checked,'','left ')+'join prd0000_enderecamento t3 on (t3.prde_registro = t1.prde_registro)');
         qRefer.sql.ADD( '     ');

         if rbCodigoFornecedor.checked then
            qRefer.sql.ADD( '     join prd0000_codigo cf on cf.prd_codigo=t1.prd_codigo');

         wOrdem := 'PRD_REFER';

         SqlAdd(' t1.PRD_STATUS = ''A'' ');

         if RadNome.checked then
         begin
              SqlAdd( CampoSql ( 't1.PRD_DESCRI' , Edt_Nome.Text) );
              wOrdem := 'PRD_DESCRI';
         end
         else
         if RadRefer.checked then
            SqlAdd( CampoSql ( 't1.PRD_REFER' , Edt_Nome.Text) )
         else
         if rbCodigoFornecedor.checked then
            SqlAdd( CampoSql( 'cf.prdc_referencia',Edt_Nome.Text) )
         else
         if RbEnderecamento.checked then
            SqlAdd( CampoSql( 't3.PRDE_ENDERECO',Edt_Nome.Text) )
         else


         sqladd( ConcatSE( 't1.',dbInicio.ExclusivoSql( 'PRODUTOS') ) );

         if cbAlmoxarifado.idRetorno = '' then
         begin
           SqlAdd('  (t1.AMX_CODIGO IS NULL) OR (t1.AMX_CODIGO = '''')  ');
         end
         else
         begin
           SqlAdd('  (t1.AMX_CODIGO = ' +  QuotedStr(cbAlmoxarifado.idRetorno) + ')  ');
         end;

         qRefer.sql.ADD( 'order by '+wordem );

         // CopyToClipBoard(qRefer.sql.text);
         CdsRefer.Open;
     Finally
            CdsRefer.EnableControls;
     end;
end;

procedure TfrmRegularizacaoEstoquePesq.RadNomeClick(Sender: tObject);
begin
  LayOutRad;
end;

procedure TfrmRegularizacaoEstoquePesq.RadCodigoClick(Sender: tObject);
begin
  LayOutRad;
end;

procedure TfrmRegularizacaoEstoquePesq.DbProdutoGridDblClick(Sender: tObject);
begin
     RetornaProduto;
end;

procedure TfrmRegularizacaoEstoquePesq.RetornaProduto;
begin
    if not CdsReferPRD_CODIGO.IsNull then
    begin
        edAlmoxarifado.SetFocus;
        application.ProcessMessages;
        CodigoRetorno := CdsReferPRD_CODIGO.Asstring;
        ReferRetorno := CdsReferPRD_REFER.Asstring;
        DescricaoRetorno:=CdsReferPRD_DESCRI.Asstring;
        UnidadeRetorno:=CdsReferPRD_UND.Asstring;
        ModalResult := mrOk;
    end;
end;

procedure TfrmRegularizacaoEstoquePesq.RadReferClick(Sender: tObject);
begin
  LayOutRad;
end;

procedure TfrmRegularizacaoEstoquePesq.FormShow(Sender: tObject);
var
  i : integer;
begin
  DisponivelVendas := False;
  LeEstadoPesquisa := True;
  SalvaEstadoPesquisa := True;
  self.Constraints.MaxHeight:=0;
  self.Constraints.MaxWidth:=0;
  self.WindowState := wsMaximized;

    inherited;
    if (dbInicio.Empresa.sPadraoPesquisaProduto = 'R') then
       RadRefer.checked := true
    else
    if (dbInicio.Empresa.sPadraoPesquisaProduto = 'D') then
       RadNome.checked := true
    else
    if (dbInicio.Empresa.sPadraoPesquisaProduto = 'F') then
       rbCodigoFornecedor.checked := true
    else if CodigoFornecedor <> '' then
    begin
       rbCodigoFornecedor.Checked := (CodigoFornecedor <> '');
       Edt_Nome.Text := CodigoFornecedor ;

    end;


   LayOutRad;
   Edt_Nome.SetFocus;
   CarregaEstadoPesquisa(pn1)  ;
   BuscaProduto;
end;


procedure TfrmRegularizacaoEstoquePesq.frxReferBeginDoc(Sender: TObject);
begin
  inherited;
  TfrxPictureView(frxRefer.FindObject('logoempresa')).Picture.Bitmap.Assign(DbInicio.empresa.logo);
end;

procedure TfrmRegularizacaoEstoquePesq.frxReferGetValue(const VarName: string; var Value: Variant);
begin
  inherited;
  if (VarName  = 'USUARIO') then
    Value := BuscaUmDadoSqlAsString('SELECT USU_NOME FROM USUARIO WHERE USU_CODIGO = ' + IntToStr(cdsReferPRD_USU_CODIGO_REG.AsInteger))
  else
  if (VarName  = 'RAZAO') then
    Value := DBInicio.Empresa.RAZAO
  else
  if (VarName  = 'ENDERECO') then
    Value := DBInicio.Empresa.ENDERECO
  else
  if (VarName  = 'CEP')  then
    Value := DBInicio.Empresa.CEP
  else
  if (VarName  = 'CIDADE') then
    Value := DBInicio.Empresa.CIDADE
  else
  if (VarName  = 'UF') then
    Value := DBInicio.Empresa.UF
  else
  if (VarName  = 'SITE')   then
    Value := DBInicio.Empresa.HOME_PAGE
  else
  if (VarName  = 'FONE') then
    Value := DBInicio.Empresa.FONE
  else
  if (VarName  = 'EMAIL')  then
    Value := DBInicio.Empresa.EMAIL
  else
  if (VarName  = 'CNPJ')  then
    Value := DBInicio.Empresa.CNPJ_CNPF
  else
  if (VarName  = 'INSCR') then
    Value := DBInicio.Empresa.INSC_EST;

end;

procedure TfrmRegularizacaoEstoquePesq.cbAlmoxarifadoSelect(Sender: TObject);
begin
  inherited;
  if cbAlmoxarifado.idRetorno = '' then
  begin
    edAlmoxarifado.Text := '';
    Exit;
  end;
  if BuscaUmDadoSqlAsString('SELECT * FROM USUARIO_ALMOXARIFADO ua WHERE ua.USU_CODIGO = ' + DBInicio.Usuario.CODIGO + ' AND ua.AMX_CODIGO = ' + QuotedStr(cbAlmoxarifado.idRetorno)) = '' then
  begin
     MessageDlg('Usuário não autorizado para visualizar este almoxarifado', mtWarning, [mbOK], 0);
     cbAlmoxarifado.SetFocus;
     Exit;
  end
  else
    edAlmoxarifado.Text := cbAlmoxarifado.idRetorno;
end;

procedure TfrmRegularizacaoEstoquePesq.CdsReferAfterScroll(DataSet: TDataSet);
begin
     inherited;
     MostraSaldoAlmox;
end;

procedure TfrmRegularizacaoEstoquePesq.cdsReferOBSERVACAO_REGGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text := Sender.AsString;
end;

procedure TfrmRegularizacaoEstoquePesq.cdsReferPRD_ESTOQUE_SEGURANCA_REGGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text := FormatFloat('###,###,##0.0000', Sender.AsFloat);
end;

procedure TfrmRegularizacaoEstoquePesq.cdsReferPRD_OBSERVACAO_REGGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text := Sender.AsString;
end;

procedure TfrmRegularizacaoEstoquePesq.SpeedButton1Click(Sender: tObject);
begin
     Close;
end;

procedure TfrmRegularizacaoEstoquePesq.RadCodigoExit(Sender: tObject);
begin
  Edt_Nome.SetFocus;
end;

procedure TfrmRegularizacaoEstoquePesq.RadNomeExit(Sender: tObject);
begin
  Edt_Nome.SetFocus;
end;

procedure TfrmRegularizacaoEstoquePesq.RadReferExit(Sender: tObject);
begin
  Edt_Nome.SetFocus;
end;

procedure TfrmRegularizacaoEstoquePesq.BitBtn1Click(Sender: TObject);
begin
  inherited;
  frxRefer.ShowReport;
end;

procedure TfrmRegularizacaoEstoquePesq.BitBtn2Click(Sender: TObject);
var
  lista: TStringList;
begin
  inherited;
  lista := TStringList.Create;
  lista.Clear;
  lista.add('PRD_REFER');
  lista.add('PRD_DESCRI');
  lista.add('PRD_ESTOQUE');
  lista.add('IPI_CODIGO');
  lista.add('LIN_DESCRI');
  lista.add('PRDE_ENDERECO');
  lista.add('PRD_UND');
  lista.add('PRD_MINIMO');
  lista.add('PRD_MAXIMO');
  lista.add('PRD_ESTOQUE_SEGURANCA_REG');
  lista.add('PRD_LOTE_COMPRA_REG');
  lista.add('PRD_DATA_REG');
  lista.add('USU_NOME');
  lista.add('PRD_OBSERVACAO_REG');
  CriaCSV(DsRefer, lista, Self);
end;

procedure TfrmRegularizacaoEstoquePesq.BitPesquisarClick(Sender: tObject);
begin
  BuscaProduto;
  DbProdutoGrid.SetFocus;
end;

procedure TfrmRegularizacaoEstoquePesq.BitSairClick(Sender: tObject);
begin
     DbProdutoGrid.Columns.SaveToFile(DBInicio.SistemaLocal + '\' + self.Name+ '.ini');
     ModalResult:=mrCancel;
end;

procedure TfrmRegularizacaoEstoquePesq.btnLimparClick(Sender: TObject);
begin
  inherited;
  cbAlmoxarifado.idRetorno := '';
  edAlmoxarifado.Text := '';
  Edt_Nome.Text := '';
  RadRefer.Checked := true;
end;

procedure TfrmRegularizacaoEstoquePesq.LayOutRad;
begin
     if RadNome.checked then
        GbPesquisa.Caption := 'Informe o Nome do produto:'
     else
     if RadRefer.checked then
        GbPesquisa.Caption := 'Informe a Referência do produto:'
     else
     if rbCodigoFornecedor.checked then
        GbPesquisa.Caption := 'Informe o Código do Fornecedor:'
     else
     if RbEnderecamento.checked then
        GbPesquisa.Caption := 'Informe o endereçamento do produto';
end;

procedure TfrmRegularizacaoEstoquePesq.CBLinhakeyPress(Sender: TObject; var Key: Char);
begin
     inherited;
     if key = #13 then
     begin
          edt_nome.setfocus;
          application.processmessages;
          edt_nome.setfocus;
          application.processmessages;
          key := #0;
     end;
end;

procedure TfrmRegularizacaoEstoquePesq.edAlmoxarifadoExit(Sender: tObject);
begin
  cbAlmoxarifado.idRetorno := strzero(edAlmoxarifado.Text, edAlmoxarifado.MaxLength);
  edAlmoxarifado.Text := cbAlmoxarifado.idRetorno;
  if edAlmoxarifado.Text = '' then
    Exit;
  if BuscaUmDadoSqlAsString('SELECT * FROM USUARIO_ALMOXARIFADO ua WHERE ua.USU_CODIGO = ' + DBInicio.Usuario.CODIGO + ' AND ua.AMX_CODIGO = ' + QuotedStr(edAlmoxarifado.Text)) = '' then
  begin
     MessageDlg('Usuário não autorizado para visualizar este almoxarifado', mtWarning, [mbOK], 0);
     edAlmoxarifado.SetFocus;
  end
end;

procedure TfrmRegularizacaoEstoquePesq.Edt_NomeChange(Sender: TObject);
begin
 // inherited;
  BuscaProduto;
end;

procedure TfrmRegularizacaoEstoquePesq.DbProdutoGridDrawColumnCell(Sender: tObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if (CdsReferPRD_STATUS.Asstring <> 'A') then
  begin
    DbProdutoGrid.Canvas.Font.Color := clRed;
    DbProdutoGrid.DefaultDrawDataCell(Rect, DbProdutoGrid.Columns[DataCol].Field, State);
  end;
end;

procedure TfrmRegularizacaoEstoquePesq.MostraSaldoAlmox;
begin
     CdsSaldos.DisableControls;
     CdsSaldos.Close;
     SqlSaldos.CommandText := 'SELECT DISTINCT * '+
                              'FROM pcd_Kardex_Saldo(' +qStr(dbInicio.Empresa.EMP_CODIGO) + ',' +qStr(CdsReferPRD_CODIGO.Value) +',null) t1 '+
                              ' JOIN USUARIO_ALMOXARIFADO ua ON (ua.USU_CODIGO = ' + DBInicio.Usuario.CODIGO + ' AND ua.AMX_CODIGO = t1.AMX_CODIGO_RET) ' +
                              'where t1.AMX_CODIGO_RET in ( SELECT t2.AMX_CODIGO from ALMOX0000 t2 '+
                              '                             WHERE t2.AMX_CODIGO = t1.AMX_CODIGO_RET and t2.AMX_ATIVO = ''S'')';
     CdsSaldos.Open;
     CdsSaldos.EnableControls;
end;


procedure TfrmRegularizacaoEstoquePesq.DbProdutoGridKeyDown(Sender: tObject; var Key: Word;
  Shift: TShiftState);
begin
     if key = VK_RETURN then
     begin
          RetornaProduto;
          key := 0;
     end;
end;

procedure TfrmRegularizacaoEstoquePesq.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  SalvaEstadoPesquisaProc(pn1);
  Tag := 1;
end;

procedure TfrmRegularizacaoEstoquePesq.CdsReferPRD_PCUSTOGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  IF dbinicio.empresa.pVENDA_VER_CUSTO <> 'S' then
    Text := '**********'
  Else
    Text := FormatFloat(TFloatField(Sender).DisplayFormat, Sender.AsFloat);

end;


procedure TfrmRegularizacaoEstoquePesq.cdsReferPRD_USU_CODIGO_REGGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if Sender.AsString <> '' then
    Text := BuscaUmDadoSqlAsString('SELECT USU_NOME FROM USUARIO WHERE USU_CODIGO = ' + Sender.AsString);
end;

end.






