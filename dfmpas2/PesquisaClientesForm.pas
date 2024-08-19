unit PesquisaClientesForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.DBXFirebird, Data.FMTBCd, BaseDBPesquisaSimplesForm,
  Vcl.Menus, Datasnap.DBClient, Datasnap.Provider, Vcl.ExtCtrls, Data.SqlExpr, ACBrEnterTab, ACBrBase,
  ACBrCalculadora, Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid, Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, SgDbSeachComboUnit,
  cli0001, Vcl.Mask,  JvExMask, JvToolEdit, JvExComCtrls, JvDateTimePicker,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client  ;

type
 TfrmPesquisaClientes = class(TfrmBaseDBPesquisaSimples)
    CdsBuscoCLI_CODIGO: TStringField;
    CdsBuscoCLI_RAZAO: TStringField;
    CdsBuscoCLI_FANTASIA: TStringField;
    CdsBuscoCLI_CGC: TStringField;
    CdsBuscoCLI_FONE: TStringField;
    CdsBuscoCLI_DTULTCOM: TSQLTimeStampField;
    CdsBuscoCLI_CIDADE: TStringField;
    CdsBuscoCLI_UF: TStringField;
    CdsBuscoCLI_BAIRRO: TStringField;
    CdsBuscoCLI_ENDERE: TStringField;
    CdsBuscoCLI_INSC: TStringField;
    LabeledEdit1: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
    LabeledEdit3: TLabeledEdit;
    LabeledEdit4: TLabeledEdit;
    ComboBox1: TComboBox;
    Label1: TLabel;
    mnuListar: TPopupMenu;
    MenuItem1: TMenuItem;
    N1: TMenuItem;
    Listagem1: TMenuItem;
    Label2: TLabel;
    cbAtividade: TSgDbSearchCombo;
    qRamo: TSQLQuery;
    cdsBuscoCLI_CONTATO: TStringField;
    cdsBuscoCLI_EMAIL_ALTERNATIVO: TStringField;
    cdsBuscoCLI_EMAIL: TStringField;
    cdsBuscoRCL_ATIVIDADE: TStringField;
    sbCadastra: TSpeedButton;
    spEditar: TSpeedButton;
    GbPesquisaData: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    edEndereco: TLabeledEdit;
    RxDataInicial: TJvDateEdit;
    RxDataFinal: TJvDateEdit;
    cdsBuscoCLI_CEP: TStringField;
    cdsBuscocli_celular: TStringField;
    cdsBuscoCLI_FAX: TStringField;
    rgTipoPessoa: TRadioGroup;
    edUnidade: TLabeledEdit;
    cdsBuscoCLI_UND_CONSUMIDORA: TIntegerField;
    chkUltCompra: TCheckBox;
    cdsBuscoREP_NOME: TStringField;
    cbVendedor: TSgDbSearchCombo;
    Label5: TLabel;
    qVendedor: TSQLQuery;
    qOrigem: TSQLQuery;
    cbOrigem: TSgDbSearchCombo;
    Label6: TLabel;
    cdsBuscoCORI_DESCRICAO: TStringField;
    cdsBuscoCLI_DTNASCIMENTO: TSQLTimeStampField;
    cdsBuscoEMP_CODIGO: TStringField;
    cdsBuscoFPC_VENCTO: TDateField;
    qExport: TFDQuery;
    dsExport: TDataSource;
    qExportCLI_CODIGO: TStringField;
    qExportCLI_RAZAO: TStringField;
    qExportCLI_FANTASIA: TStringField;
    qExportCLI_CGC: TStringField;
    qExportCLI_FONE: TStringField;
    qExportCLI_DTULTCOM: TSQLTimeStampField;
    qExportCLI_CIDADE: TStringField;
    qExportCLI_UF: TStringField;
    qExportCLI_BAIRRO: TStringField;
    qExportCLI_ENDERE: TStringField;
    qExportCLI_CONTATO: TStringField;
    qExportCLI_EMAIL_ALTERNATIVO: TStringField;
    qExportCLI_EMAIL: TStringField;
    qExportRCL_ATIVIDADE: TStringField;
    qExportCLI_INSC: TStringField;
    qExportCLI_CEP: TStringField;
    qExportcli_celular: TStringField;
    qExportCLI_FAX: TStringField;
    qExportCLI_UND_CONSUMIDORA: TIntegerField;
    qExportREP_NOME: TStringField;
    qExportCORI_DESCRICAO: TStringField;
    qExportCLI_DTNASCIMENTO: TSQLTimeStampField;
    qExportEMP_CODIGO: TStringField;
    qExportFPC_VENCTO: TDateField;
    cdsBuscoSITUACAO: TStringField;
    qExportSITUACAO: TStringField;
    qExportULTPARCELA: TFMTBCDField;
    procedure FormCreate(Sender: TObject);
    procedure CdsBuscoCLI_RAZAOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure CdsBuscoCLI_CGCGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure FormShow(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure Listagem1Click(Sender: TObject);
    procedure btnImprimeClick(Sender: TObject);
    procedure sbCadastraClick(Sender: TObject);
    procedure spEditarClick(Sender: TObject);
    procedure cdsBuscoCLI_FONEGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure rgTipoPessoaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnExcelClick(Sender: TObject);
  private
    procedure FiltraCli;
    var
      arquivo: string;
    { Private declarations }
  public
    { Public declarations }

  end;

var
  frmPesquisaClientes: TfrmPesquisaClientes;
  wclicodigo :string;

implementation

{$R *.dfm}

uses uteis, iniciodb, GimpFichaCliente, IniFiles ;

procedure TfrmPesquisaClientes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  // GravaIni(arquivo, 'pesquisa', 'razao', LabeledEdit1.text);
  // GravaIni(arquivo, 'pesquisa', 'cnpj',  LabeledEdit2.text);
  GravaIni(arquivo, 'pesquisa', 'situacao', IntToStr(ComboBox1.itemindex) );
  GravaIni(arquivo, 'pesquisa', 'cidade', LabeledEdit3.text);
  GravaIni(arquivo, 'pesquisa', 'bairro', LabeledEdit4.text);
  GravaIni(arquivo, 'pesquisa', 'endereco', edEndereco.text);
  GravaIni(arquivo, 'pesquisa', 'tipo', IntToStr(rgTipoPessoa.ItemIndex));
  GravaIni(arquivo, 'pesquisa', 'unidade', edUnidade.text);
  GravaIni(arquivo, 'pesquisa', 'ramo', cbAtividade.idRetorno);
  GravaIni(arquivo, 'pesquisa', 'vendedor', cbVendedor.idRetorno);
  GravaIni(arquivo, 'pesquisa', 'datainicial', RxDataInicial.Text);
  GravaIni(arquivo, 'pesquisa', 'datafinal', RxDataFinal.Text);
  GravaIni(arquivo, 'pesquisa', 'ultimacompra', iif(chkUltCompra.Checked, 'TRUE', 'FALSE'));
end;

procedure TfrmPesquisaClientes.FormCreate(Sender: TObject);
begin
  inherited;
  //SetTamanhoMinimo(700,1278);
  arquivo:=  Self.Name + DBInicio.Usuario.CODIGO + 'pesquisa';
  CampoID:='CLI_CODIGO';
  CampoIDRetorno:='CLI_CODIGO';
  ProcedureFiltro:=FiltraCli;
  aCaption:='Clientes';
  self.Constraints.MaxHeight:=0;
  self.Constraints.MaxWidth:=0;
  SELF.WindowState := wsMaximized;
  sbCadastra.Enabled :=  DBInicio.Empresa.bUSP_INCLUIR_CLIENTES;
  spEditar.Enabled := DBINICIO.Empresa.bUSP_ALTERAR_CLIENTES;
  btnImprime.Enabled := Uteis.AcessoUsuario('CadastrosClientes',DBInicio.Usuario.CODIGO,NIL).Relatorio;
  btnExcel.Enabled := Uteis.AcessoUsuario('CadastrosClientes',DBInicio.Usuario.CODIGO,NIL).Relatorio;
end;

procedure TfrmPesquisaClientes.FormShow(Sender: TObject);
var
  ret: string;
begin
  inherited;
  // LabeledEdit1.text := LeIni(arquivo, 'pesquisa', 'razao', ret);
  // LabeledEdit2.text := LeIni(arquivo, 'pesquisa', 'cnpj',  ret);
  LeIni(arquivo, 'pesquisa', 'situacao', ret );
  if ret = '' then
    ComboBox1.itemindex := -1
  else
    ComboBox1.itemindex := StrToInt(ret);
  LabeledEdit3.text := LeIni(arquivo, 'pesquisa', 'cidade', ret);
  LabeledEdit4.text := LeIni(arquivo, 'pesquisa', 'bairro', ret);
  edEndereco.text := LeIni(arquivo, 'pesquisa', 'endereco', ret);
  LeIni(arquivo, 'pesquisa', 'tipo', ret);
  if ret = '' then
    rgTipoPessoa.ItemIndex := -1
  else
    rgTipoPessoa.ItemIndex := StrToInt(ret);
  edUnidade.text := LeIni(arquivo, 'pesquisa', 'unidade', ret);
  cbAtividade.idRetorno := LeIni(arquivo, 'pesquisa', 'ramo', ret);
  cbVendedor.idRetorno := LeIni(arquivo, 'pesquisa', 'vendedor', ret);
  LeIni(arquivo, 'pesquisa', 'datainicial', ret);
  if ret <> '' then
    try
      RxDataInicial.Date := StrToDate(ret);
    except
      // POG para não dar erro
    end;
  LeIni(arquivo, 'pesquisa', 'datafinal', ret);
  if ret <> '' then
    try
     RxDataFinal.Date := StrToDate(ret);
    except
      // POG para não dar erro
    end;
  chkUltCompra.Checked := iif(LeIni(arquivo, 'pesquisa', 'ultimacompra', ret) = 'TRUE', True, False)  ;
  AbreTabela:=True;
  Filtro; // abre tabelas
end;


procedure TfrmPesquisaClientes.Listagem1Click(Sender: TObject);
begin
  inherited;
  if (RxDataInicial.Date>0) and (RxDataFinal.Date >0)  then
    TituloRelAuto :=  'Cadastro de '+DateToStr(RxDataInicial.Date) +' até '+ DateToStr(RxDataFinal.Date);
  GeraRelatorioAuto(Self);
end;

procedure TfrmPesquisaClientes.MenuItem1Click(Sender: TObject);
begin
  inherited;
  FormGimpFichas :=TFormGimpFichas.Create(Application);
  try
    wclicodigo := cdsBuscoCLI_CODIGO.AsString;
    FormGimpFichas.ShowModal;
  finally
        freeandnil( FormGimpFichas );
  end;
end;

procedure TfrmPesquisaClientes.rgTipoPessoaClick(Sender: TObject);
begin
  inherited;
  btnPesquisa.Click;
end;

procedure TfrmPesquisaClientes.sbCadastraClick(Sender: TObject);
begin
  inherited;
  if Not DBInicio.LaunchExe('CLIENTES') then
  begin
    TrimAppmemorySize;
    if not assigned(FormCliente) then
    begin
      FormCliente := TFormCliente.Create(Application);
      FormCliente.BotoesAcesso;
      if (MDIChildCount > 1) then
      begin
        SendMessage(ClientHandle, WM_MDICASCADE, 0, 0)
      end
      else
      begin
        FormCliente.Top := 0;
      end;


    end;
    self.Close;
    FormCliente.Show;
    FormCliente.BringToFront;
    FormCliente.Bit_novo.Click;
  end;
end;

procedure TfrmPesquisaClientes.spEditarClick(Sender: TObject);
begin
  inherited;
 if Not DBInicio.LaunchExe('CLIENTES') then
  begin
    TrimAppmemorySize;
    if not assigned(FormCliente) then
    begin
      FormCliente := TFormCliente.Create(Application);
      FormCliente.BotoesAcesso;
      if (MDIChildCount > 1) then
      begin
        SendMessage(ClientHandle, WM_MDICASCADE, 0, 0)
      end
      else
      begin
        FormCliente.Top := 0;
      end;


    end;
    FormCliente.BuscaCliente(CdsBuscoCLI_CODIGO.AsString);
    self.Close;
    FormCliente.Show;
    FormCliente.BringToFront;

  end;
end;

procedure TfrmPesquisaClientes.btnExcelClick(Sender: TObject);
var
  lista: TStringList;
begin
//  inherited;
  qExport.Close;
  qExport.SQL.Text := qBusco.SQL.Text;
  qExport.Open;
  lista := TStringList.Create;
  lista.Add('CLI_CODIGO');
  lista.Add('CLI_RAZAO');
  lista.Add('CLI_FANTASIA');
  lista.Add('SITUACAO');
  lista.Add('CLI_CGC');
  lista.Add('CLI_INSC');
  lista.Add('REP_NOME');
  lista.Add('CORI_DESCRICAO');
  lista.Add('RCL_ATIVIDADE');
  lista.Add('ULTPARCELA');
  lista.Add('CLI_ENDERE');
  lista.Add('CLI_BAIRRO');
  lista.Add('CLI_CIDADE');
  lista.Add('CLI_UF');
  lista.Add('CLI_CEP');
  lista.Add('CLI_DTNASCIMENTO');
  lista.Add('CLI_CELULAR');
  lista.Add('CLI_FONE');
  lista.Add('CLI_FAX');
  lista.Add('CLI_EMAIL_ALTERNATIVO');
  lista.Add('CLI_EMAIL');
  lista.Add('CLI_CONTATO');

//   lista.Add('FPC_VENCTO');
  CriaCSV(dsExport, lista, Self);
end;

procedure TfrmPesquisaClientes.btnImprimeClick(Sender: TObject);
var Ponto : TPoint;
begin
   inherited;
   Ponto := btnImprime.ClientToScreen(Point(0, btnImprime.Height));
   mnuListar.Popup(Ponto.X, Ponto.Y);
end;

procedure TfrmPesquisaClientes.CdsBuscoCLI_CGCGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text := FormataCgcCpf( Sender.AsString ) ;
end;

procedure TfrmPesquisaClientes.cdsBuscoCLI_FONEGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if (not Sender.IsNull) or (Sender.AsString <> '') then
    Text := MascaraFone(SENDER.Value)
  else
    text := '';
end;

procedure TfrmPesquisaClientes.CdsBuscoCLI_RAZAOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text := CdsBuscoCli_codigo.asstring;
  while dbGrid.Canvas.TextWidth(text)<=30 do
        text := ' '+text ;
  text := text + ' - '+Sender.AsString;
end;

procedure TfrmPesquisaClientes.FiltraCli;
var pCid, pUf, wOrd: string;
begin
     with qBusco,sql do
     begin
          Clear;
          add('select CL.CLI_CODIGO, ');
          add('       CL.EMP_CODIGO,  ');
          add('       CL.CLI_RAZAO,  ');
          add('       CL.CLI_FANTASIA, ');
          add('       CL.CLI_CGC, ');
          add('       CL.CLI_FONE, ');
          // add('       CL.CLI_DTULTCOM, ');
          add('(SELECT MAX(PED_DTENTRADA)  FROM PED0000 p WHERE p.EMP_CODIGO = CL.EMP_CODIGO AND p.CLI_CODIGO = CL.CLI_CODIGO) AS CLI_DTULTCOM,');
          add('       CL.CLI_DTNASCIMENTO,  ');
          add('       CL.CLI_CIDADE, ');
          add('       CL.CLI_UF, ');
          add('       CL.CLI_BAIRRO, ');
          add('       CL.CLI_ENDERE, ' );
          Add('       CL.CLI_CONTATO, CL.CLI_EMAIL_ALTERNATIVO, CL.CLI_EMAIL, ');
          Add('       ATV.RCL_ATIVIDADE,' );
          Add('       CL.CLI_INSC, rp.REP_NOME, ' );
          Add('       VEND_INTERNO_CODIGO, CLI_CEP, cli_fax, cli_celular, CLI_UND_CONSUMIDORA, co.CORI_DESCRICAO,');

          if dbInicio.GetParametroSistema('PMT_PEDIDO_DOACAO') = 'S' then
            Add('  (SELECT  MAX(FPC_VLPARC) FROM FAT_PC01 pc ' +
                '    WHERE pc.CLI_CODIGO = cl.CLI_CODIGO ' +
                '      AND FPC_EXCLUSAO = ''N''   ' +
                     ConcatSe(' AND PC.', dbinicio.ExclusivoSql('RECEBER')) +
                '      AND FPC_VENCTO =   ( SELECT  max(FPC_VENCTO) FROM FAT_PC01 pc2  ' +
                '             WHERE pc2.CLI_CODIGO = cl.CLI_CODIGO  ' +
                              ConcatSe(' AND pc2.', dbinicio.ExclusivoSql('RECEBER')) +
                '               AND FPC_EXCLUSAO = ''N''   ' +
                '                     ) ) AS ULTPARCELA, ' )
          else
            Add ('CAST(0 as NUMERIC(18,5)) AS ULTPARCELA, ' );


          Add('       CASE ' +
              '            WHEN CL.CLI_INATIVO = ''A'' THEN ''ATIVO''   ' +
              '            WHEN CL.CLI_INATIVO = ''I'' THEN ''INATIVO''   ' +
              '            WHEN CL.CLI_INATIVO = ''R'' THEN ''EM RECUPERAÇÃO''    ' +
              '       END AS SITUACAO, ' );

          if dbInicio.GetParametroSistema('PMT_PEDIDO_DOACAO') = 'S' then
            Add(       'CAST (((SELECT MAX(T1.FRE_DATA_RECEBIMENTO) ' +
                       '   FROM FAT_RECEBIMENTO T1 ' +
                       '     JOIN FAT_PC01 f ON f.fat_registro = t1.fat_registro ' +
                       '   WHERE T1.FAT_REGISTRO = f.fat_registro ' +
                       '   	AND T1.EMP_CODIGO = CL.EMP_CODIGO ' +
                       '   	AND CLI_CODIGO  = CL.CLI_CODIGO'  +
                       '  )) AS DATE) AS FPC_VENCTO ' )
          else
            Add ('CAST(CURRENT_DATE as DATE) AS FPC_VENCTO ' );

          add('FROM CLI0000 CL');
          add('     LEFT JOIN CLI_ATV1 ATV ON ATV.RCL_CODIGO=CL.CLI_ATIVIDADE ');
          add('     LEFT JOIN REP0000 rp ON (rp.REP_CODIGO = cl.REP_CODIGO) ');
          add('     LEFT JOIN CLIENTE_ORIGEM co ON (co.CORI_CODIGO = cl.CORI_CODIGO) ');
          wOrd := 'CL.Cli_razao';

          if (dbInicio.Empresa.bVisualizaClientes_P) and (dbInicio.Empresa.fCODIGO_REPRES <> '000') then
             SqlAdd( '(CL.REP_CODIGO ='+QuotedStr(dbInicio.Empresa.fCODIGO_REPRES)     +
                       ' or cl.VEND_INTERNO_CODIGO = '+QuotedStr(dbInicio.Empresa.fCODIGO_REPRES)   +')'

             );

          sqladd( ConcatSE( 'CL.', dbInicio.ExclusivoSql('CLIENTES') ) );
          if edUnidade.Text <> '' then
             SqlAdd( ' CLI_UND_CONSUMIDORA containing '+ QuotedStr(edUnidade.Text));

          if cbAtividade.idRetorno<>'' then
             SqlAdd( 'CL.CLI_ATIVIDADE=' +qStr(cbAtividade.idRetorno) );

          if cbVendedor.idRetorno <> '' then
             SqlAdd( 'CL.REP_CODIGO = ' +qStr(cbVendedor.idRetorno) );

          if cbOrigem.idRetorno <> '' then
             SqlAdd( 'CL.CORI_CODIGO = ' +qStr(cbOrigem.idRetorno) );

          if chkUltCompra.Checked then
          begin
            if (RxDataInicial.Date > 0) and (RxDataFinal.Date > 0)  then
              SqlAdd (' (CLI_DTINICIO  between ' + DateToSQL(RxDataInicial.Date)+' and '+ DateToSQL(RxDataFinal.Date)+ ' or '+
                     '  CLI_DTULTCOM   between ' + DateToSQL(RxDataInicial.Date)+' and '+ DateToSQL(RxDataFinal.Date)+ ')'  )
            else if  (RxDataInicial.Date > 0)  then
              SqlAdd (' ( CLI_DTINICIO  >= ' + DateToSQL(RxDataInicial.Date) +' or ' +
                         ' CLI_DTULTCOM  >= ' + DateToSQL(RxDataInicial.Date)  +')')
            else if RxDataFinal.Date > 0 then
              SqlAdd (' (CLI_DTINICIO <= ' + DateToSQL(RxDataFinal.Date)+' or ' +
                      '  CLI_DTULTCOM <= ' + DateToSQL(RxDataFinal.Date)+' )'        );

          end
          else
          begin
            if (RxDataInicial.Date > 0) and (RxDataFinal.Date > 0)  then
              SqlAdd (' CLI_DTINICIO  between ' + DateToSQL(RxDataInicial.Date)+' and '+ DateToSQL(RxDataFinal.Date) )
            else if  (RxDataInicial.Date > 0)  then
              SqlAdd ('  CLI_DTINICIO  >= ' + DateToSQL(RxDataInicial.Date))
            else if RxDataFinal.Date > 0 then
              SqlAdd (' CLI_DTINICIO <= ' + DateToSQL(RxDataFinal.Date));
          end;

          if rgTipoPessoa.ItemIndex <> -1 then
            case rgTipoPessoa.ItemIndex of
              0: SqlAdd(' CL.CLI_PESSOA = '+QuotedStr('F'));
              1: SqlAdd(' CL.CLI_PESSOA = '+QuotedStr('J'));
            end;


          case ComboBox1.ItemIndex of
            0:  sqladd( 'CL.CLI_INATIVO = '+qStr('A') );
            1:  sqladd( 'CL.CLI_INATIVO = '+qStr('I') );
            2:  sqladd( 'CL.CLI_INATIVO = '+qStr('R') );
          end;
          if LabeledEdit1.Text <> '' then
               if IsNum( LabeledEdit1.Text ) then
               begin
                    SqlAdd('CL.cli_codigo = '+ LabeledEdit1.Text );
                    wOrd := 'CL.cli_codigo';
               end
               else
                  sqlAdd( CampoSqlOr( ['CL.Cli_Razao','CL.Cli_Fantasia'], LabeledEdit1.Text ) );
          sqladd( CampoSql( 'CL.CLI_CGC', ExtrairNumeros ( LabeledEdit2.Text ) ) );
          if SepareCidadeUf( LabeledEdit3.Text, pCid, pUf ) then
             wOrd := 'CL.cli_uf, CL.cli_cidade, CL.cli_razao' ;
          sqladd( camposql( 'CL.cli_cidade', pCid ) );
          sqladd( camposql( 'CL.cli_uf', pUf ) );
          sqladd( camposql( 'CL.CLI_BAIRRO', LabeledEdit4.Text ) );
           sqladd( camposql( 'CL.CLI_ENDERE', edEndereco.Text ) );
          sql.Add( 'order by '+wOrd );

     end;
     if dbInicio.isDesenvolvimento then
       copyToClipboard(qBusco.SQL.Text);
end;

end.




