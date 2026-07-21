unit UPedidoPesqDoacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBForm, Data.DBXFirebird, Data.FMTBcd, Vcl.StdCtrls, Vcl.Buttons, SgDbSeachComboUnit, Vcl.Mask, Vcl.ExtCtrls, Data.DB, Data.SqlExpr,
  ACBrEnterTab, ACBrBase, ACBrCalculadora, Datasnap.DBClient, Datasnap.Provider, Vcl.Grids, Vcl.DBGrids, uteis, InicioDB, RWFUNC, System.DateUtils, Vcl.DBCtrls, JvExStdCtrls, JvEdit, JvValidateEdit,
  JvExMask, JvToolEdit, BaseTelaRelatorioForm, frxClass, frxDBSet, Vcl.Menus, JvExControls, JvArrowButton, frxExportBIFF, frxExportPDF, frxExportXLS,
  frxExportBaseDialog;

type
  TPedidoTipoParcela  = (tpMensal, tpBimestral, tpTrimestral, tpSemestral, tpAnual, tpUnica, tpDesconhecido);

type
  TfrmPesqDoacao = class(TfrmBaseDB)
    Panel1: TPanel;
    Lb_Lista: TLabel;
    GbData: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    DataTipo: TComboBox;
    GroupBox1: TGroupBox;
    Rad_Cliente: TRadioButton;
    Rad_Fantasia: TRadioButton;
    Rad_Pedido: TRadioButton;
    Rad_Pedido_Compra: TRadioButton;
    Rad_Vendedor: TRadioButton;
    rdCCusto: TRadioButton;
    GroupBox2: TGroupBox;
    cbTipo: TSgDbSearchCombo;
    name: TGroupBox;
    cbbFaturamento: TComboBox;
    BtnSair: TBitBtn;
    BitPesquisar: TBitBtn;
    qSqlCdsPesq: TSQLQuery;
    dspSqlCdsPesq: TDataSetProvider;
    SqlCdsPesq: TClientDataSet;
    SqlCdsPesqPED_CODIGO: TStringField;
    SqlCdsPesqPED_VLTOTAL_BRUTO: TFMTBCDField;
    SqlCdsPesqPED_SITUACAO: TStringField;
    SqlCdsPesqREP_CODIGO: TStringField;
    SqlCdsPesqCLI_CGC: TStringField;
    SqlCdsPesqCLI_RAZAO: TStringField;
    SqlCdsPesqCLI_FANTASIA: TStringField;
    SqlCdsPesqOPV_DESCRICAO: TStringField;
    SqlCdsPesqPED_REGISTRO: TIntegerField;
    SqlCdsPesqPED_CONTATO_CLIENTE: TStringField;
    SqlCdsPesqREP_NOME: TStringField;
    SqlCdsPesqEMP_CODIGO: TStringField;
    SqlCdsPesqPED_VLTOTAL_LIQ: TFMTBCDField;
    SqlCdsPesqOPV_CODIGO: TIntegerField;
    SqlCdsPesqcli_codigo: TStringField;
    SqlCdsPesqFPG_REGISTRO: TIntegerField;
    SqlCdsPesqPED_NUMERO_PED_CLIENTE: TStringField;
    DsPedidos: TDataSource;
    SqlCdsPesqCLI_CELULAR: TStringField;
    SqlCdsPesqVL_COMISSAO: TFMTBCDField;
    SqlCdsPesqCLI_FONE: TStringField;
    SqlCdsPesqcli_uf: TStringField;
    SqlCdsPesqcli_cidade: TStringField;
    SqlCdsPesqPED_PARCELA: TIntegerField;
    SqlCdsPesqPED_INICIOPAG: TDateField;
    SqlCdsPesqPED_TIPOPARCELA: TStringField;
    SqlCdsPesqPED_VLPARCELA: TFMTBCDField;
    dbGrPedido: TDBGrid;
    GbCliente: TGroupBox;
    Edt_Lista: TEdit;
    cbPesq: TSgDbSearchCombo;
    CbFantasia: TSgDbSearchCombo;
    cbVendedor: TSgDbSearchCombo;
    gbCCusto: TGroupBox;
    EdProjetoObraCodigo: TEdit;
    CbProjetoObra: TSgDbSearchCombo;
    Panel2: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    edVendas: TEdit;
    SqlCdsClie: TSQLQuery;
    SqlCdsPesqBANCO: TStringField;
    RxDataInicial: TJvDateEdit;
    RxDataFinal: TJvDateEdit;
    edTotal: TJvValidateEdit;
    qSqlCdsPesqPED_CODIGO: TStringField;
    qSqlCdsPesqPED_VLTOTAL_BRUTO: TFMTBCDField;
    qSqlCdsPesqPED_SITUACAO: TStringField;
    qSqlCdsPesqREP_CODIGO: TStringField;
    qSqlCdsPesqCLI_CGC: TStringField;
    qSqlCdsPesqCLI_RAZAO: TStringField;
    qSqlCdsPesqCLI_FANTASIA: TStringField;
    qSqlCdsPesqOPV_DESCRICAO: TStringField;
    qSqlCdsPesqPED_REGISTRO: TIntegerField;
    qSqlCdsPesqPED_CONTATO_CLIENTE: TStringField;
    qSqlCdsPesqREP_NOME: TStringField;
    qSqlCdsPesqEMP_CODIGO: TStringField;
    qSqlCdsPesqPED_VLTOTAL_LIQ: TFMTBCDField;
    qSqlCdsPesqOPV_CODIGO: TIntegerField;
    qSqlCdsPesqcli_codigo: TStringField;
    qSqlCdsPesqFPG_REGISTRO: TIntegerField;
    qSqlCdsPesqPED_NUMERO_PED_CLIENTE: TStringField;
    qSqlCdsPesqPED_PARCELA: TIntegerField;
    qSqlCdsPesqPED_INICIOPAG: TDateField;
    qSqlCdsPesqPED_TIPOPARCELA: TStringField;
    qSqlCdsPesqPED_VLPARCELA: TFMTBCDField;
    qSqlCdsPesqCLI_CELULAR: TStringField;
    qSqlCdsPesqVL_COMISSAO: TFMTBCDField;
    qSqlCdsPesqCLI_FONE: TStringField;
    qSqlCdsPesqcli_uf: TStringField;
    qSqlCdsPesqcli_cidade: TStringField;
    qSqlCdsPesqBANCO: TStringField;
    frxpesquisa: TfrxDBDataset;
    frxpedidosBanco: TfrxReport;
    BtnImprimir: TJvArrowButton;
    relatorios: TPopupMenu;
    Pedidosporbanco1: TMenuItem;
    Lista1: TMenuItem;
    qSqlCdsPesqBAN_APELIDO: TStringField;
    SqlCdsPesqBAN_APELIDO: TStringField;
    qSqlCdsPesqPED_UND_CONSUMIDORA: TLargeintField;
    SqlCdsPesqPED_UND_CONSUMIDORA: TLargeintField;
    frxPedidosLista: TfrxReport;
    Lista2: TMenuItem;
    frxPDFExport1: TfrxPDFExport;
    rgSaida: TRadioGroup;
    SaveDialog1: TSaveDialog;
    frxXLSExport1: TfrxXLSExport;
    qSqlCdsPesqPED_DTENTRADA: TSQLTimeStampField;
    SqlCdsPesqPED_DTENTRADA: TSQLTimeStampField;
    ExportarparaCSV1: TMenuItem;
    dsCdsqSqlCdsPesq: TDataSource;
    qSqlCdsPesqCLI_ENDERE: TStringField;
    qSqlCdsPesqCLI_BAIRRO: TStringField;
    qSqlCdsPesqCLI_CEP: TStringField;
    dspqSqlCdsPesq: TDataSetProvider;
    cdsqSqlCdsPesq: TClientDataSet;
    cdsqSqlCdsPesqPED_CODIGO: TStringField;
    cdsqSqlCdsPesqPED_DTENTRADA: TSQLTimeStampField;
    cdsqSqlCdsPesqCLI_RAZAO: TStringField;
    cdsqSqlCdsPesqCLI_CGC: TStringField;
    cdsqSqlCdsPesqcli_cidade: TStringField;
    cdsqSqlCdsPesqcli_uf: TStringField;
    cdsqSqlCdsPesqBANCO: TStringField;
    cdsqSqlCdsPesqPED_VLPARCELA: TFMTBCDField;
    cdsqSqlCdsPesqPED_PARCELA: TIntegerField;
    cdsqSqlCdsPesqPED_INICIOPAG: TDateField;
    cdsqSqlCdsPesqPED_VLTOTAL_BRUTO: TFMTBCDField;
    cdsqSqlCdsPesqREP_NOME: TStringField;
    cdsqSqlCdsPesqCLI_FONE: TStringField;
    cdsqSqlCdsPesqCLI_CELULAR: TStringField;
    cdsqSqlCdsPesqCLI_ENDERE: TStringField;
    cdsqSqlCdsPesqCLI_BAIRRO: TStringField;
    cdsqSqlCdsPesqCLI_CEP: TStringField;
    cdsqSqlCdsPesqEMP_CODIGO: TStringField;
    cdsqSqlCdsPesqPED_SITUACAO: TStringField;
    cdsqSqlCdsPesqPED_SITUACAO2: TStringField;
    rdCFinanceira: TRadioButton;
    gbCFinanceira: TGroupBox;
    edCFinanceira: TEdit;
    qContafinanceira: TSQLQuery;
    cbContaFinanceira: TSgDbSearchCombo;
    qSqlCdsPesqCLI_DTNASCIMENTO: TSQLTimeStampField;
    cdsqSqlCdsPesqCLI_DTNASCIMENTO: TSQLTimeStampField;
    SqlCdsPesqCCT_DESCRI: TStringField;
    qSqlCdsPesqCCT_DESCRI: TStringField;
    qSqlCdsPesqPCX_DESCRI: TStringField;
    SqlCdsPesqPCX_DESCRI: TStringField;
    cdsqSqlCdsPesqCCT_DESCRI: TStringField;
    cdsqSqlCdsPesqPCX_DESCRI: TStringField;
    cdsqSqlCdsPesqSelecionado: TBooleanField;
    SqlCdsPesqSelecionado: TBooleanField;
    btnRenovarRecorrencias: TButton;
    SqlCdsPesqCLI_DATA_ULTIMA_PARCELA: TSQLTimeStampField;
    qSqlCdsPesqCLI_DATA_ULTIMA_PARCELA: TSQLTimeStampField;
    qSqlCdsPesqPCX_CODIGO: TStringField;
    SqlCdsPesqPCX_CODIGO: TStringField;
    qSqlCdsPesqBAN_CODIGO: TStringField;
    SqlCdsPesqBAN_CODIGO: TStringField;
    qSqlCdsPesqCCT_CODIGO: TStringField;
    SqlCdsPesqCCT_CODIGO: TStringField;
    procedure Rad_ClienteClick(Sender: TObject);
    procedure BitPesquisarClick(Sender: TObject);
    procedure SqlCdsPesqPED_SITUACAOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure BtnSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dbGrPedidoDblClick(Sender: TObject);
    procedure cbVendedorSelect(Sender: TObject);
    procedure CbFantasiaSelect(Sender: TObject);
    procedure cbPesqSelect(Sender: TObject);
    procedure Edt_ListaExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure CbProjetoObraSelect(Sender: TObject);
    procedure EdProjetoObraCodigoClick(Sender: TObject);
    procedure cbbFaturamentoChange(Sender: TObject);
    procedure cbTipoSelect(Sender: TObject);
    procedure frxpedidosBancoGetValue(const VarName: string; var Value: Variant);
    procedure Pedidosporbanco1Click(Sender: TObject);
    procedure Lista1Click(Sender: TObject);
    procedure qSqlCdsPesqPED_DTENTRADAGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure qSqlCdsPesqPED_VLPARCELAGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure qSqlCdsPesqPED_VLTOTAL_BRUTOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure Lista2Click(Sender: TObject);
    procedure ExportarparaCSV1Click(Sender: TObject);
    procedure cdsqSqlCdsPesqPED_SITUACAOGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure cdsqSqlCdsPesqCalcFields(DataSet: TDataSet);
    procedure cbContaFinanceiraSelect(Sender: TObject);
    procedure dbGrPedidoDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbGrPedidoCellClick(Column: TColumn);
    procedure dbGrPedidoTitleClick(Column: TColumn);

    procedure btnRenovarRecorrenciasClick(Sender: TObject);
    procedure RenovarRecorrenciasSelecionadas;
    procedure ProcessarRecorrencia(const ACliCodigo: string; const ADataUltimaParcela: TDateTime);
    function ObterPedidoBaseRecorrencia(const ACliCodigo: String; const ADataUltimaParcela: TDateTime): String;
    procedure CarregarPedidoOrigem(const APedido: String);
    procedure GerarNovoPedido;
    procedure CopiarCabecalhoPedido;
    procedure CopiarItensPedido;
    procedure AtualizarClienteRecorrente(const ACliCodigo: String);
    procedure FinalizarRecorrencia;
    procedure GerarFinanceiro;
    procedure GerarCabecalhoFinanceiro;
    procedure GerarParcelasFinanceiras;
    procedure edTaxaRecorrenciaKeyPress(Sender: TObject; var Key: Char);

    function NormalizaTipoParcela(const AValor: string): TPedidoTipoParcela;
    function GetIntervaloMesesTipoParcela(ATipo: TPedidoTipoParcela): Integer;
    function GetTipoParcelaPedido(const APedCodigo: string): string;
    function CalcularNovaDataRecorrencia(const AData: TDateTime; ATipo: TPedidoTipoParcela): TDateTime;
    function RecalcularValorRecorrencia(AValor: Double): Double;
    function ExisteRecorrenciaSelecionada: Boolean;
  private
    procedure BuscaPedido(ordem: string);
    procedure LayOutPesq;
  var
    FMarcarTodos: Boolean;
    FPedidoOrigem : String;
    FNovoPedido   : String;
    FPedRegistro  : Integer;
    FDataNovaUltimaParcela : TDateTime;
    FCliCodigo      : String;
    FDataUltParcela : TDateTime;
    FTipoParcelaRecorrencia: TPedidoTipoParcela;
    FDataInicioNovoPedido : TDateTime;
    FFatCodigo: String;
    FContaFinanceiraRecorrencia : String; // CCT_CODIGO
    FTaxaRecorrencia            : Double; // percentual
  public
    { Public declarations }
  end;

var
  frmPesqDoacao: TfrmPesqDoacao;

implementation

uses   uRecorrencia;

{$R *.dfm}

procedure TfrmPesqDoacao.BitPesquisarClick(Sender: TObject);
begin
  inherited;
  BuscaPedido('');
  if dbGrPedido.canfocus then
        dbGrPedido.SetFocus;
end;

procedure TfrmPesqDoacao.BtnSairClick(Sender: TObject);
begin
  inherited;
  idRetorno := '';
  ModalResult := mrCancel;
end;

procedure TfrmPesqDoacao.BuscaPedido(ordem: string);
var Filtrados: Boolean ;
    campo, wcondicao: string;
    sqlTotal : string;
///
    procedure SqlAdd( stt:string );
    begin
        if stt<>'' then
        begin
             if Filtrados then
                wCondicao := wCondicao + ' AND '+stt+ CrLf
             else
                wCondicao := wCondicao + ' where '+stt+ CrLf;
             Filtrados:=True;
        end;
    end;
begin

  SqlCdsPesq.DisableControls;
  SqlCdsPesq.Close;
  wCondicao := '';
  try
   sqlTotal:= 'SELECT cast(count(*) as integer) NVENDAS, sum(ped_vltotal_bruto) TotalVendas,sum ((PED_COMIS1 * ped_vltotal_bruto)/100) TotalComiss' +
              ' FROM PED0000 PE                                                                         '+
              ' JOIN CLI0000 CL ON (CL.CLI_CODIGO = PE.CLI_CODIGO)                                      '+
              ' JOIN OPV0000 OP ON (OP.OPV_CODIGO = PE.OPV_CODIGO)                                      '+
              ' JOIN REP0000 RP ON (RP.REP_CODIGO = PE.REP_CODIGO)                                      ';
              if (DataTipo.ItemIndex = 1) then
                sqlTotal:=sqlTotal+ '   left join NF0001 T1 on  T1.PED_CODIGO=PE.Ped_codigo and t1.NF_STATUS_NFE <> ''C''' ;
   SqlCdsPesq.SetProvider(dspSqlCdsPesq);

   qSqlCdsPesq.sql.text:=
        'SELECT PE.PED_REGISTRO, PE.PED_CODIGO, PE.OPV_CODIGO, PE.CLI_CODIGO, OP.OPV_DESCRICAO,   '+
        ' pe.PED_DTENTRADA , PE.REP_CODIGO, RP.REP_NOME, PE.PED_COMIS1, PE.PED_NUMERO_PED_CLIENTE,  '+
        'PE.PED_CONTATO_CLIENTE, PED_SITUACAO, PE.PED_OBSERVACAO, PE.BAN_CODIGO, PE.PED_PARCELA,  '+
        'PE.PED_INICIOPAG, PE.PED_TIPOPARCELA, PED_VLTOTAL_BRUTO,pe.FPG_REGISTRO, CLI_CELULAR,    '+
        'pe.emp_codigo, pe.PED_VLTOTAL_LIQ, PED_VLPARCELA, pe.PCX_CODIGO, RP.REP_NOME, CLI_FONE,  '+
        ' cl.cli_cgc, trim(cl.cli_razao) as cli_razao, cl.cli_fantasia, CL.CLI_ENDERE, CL.CLI_BAIRRO, CL.CLI_CEP, ' +
        ' cl.CLI_DTNASCIMENTO, cl.CLI_DATA_ULTIMA_PARCELA, PE.PCX_CODIGO, PE.CCT_CODIGO, ' +
        ' op.opv_descricao, ped_contato_cliente, CLI_UF, '+
        ' ((PED_COMIS1 * PED_VLTOTAL_LIQ)/100) AS VL_COMISSAO, cli_cidade,                        '+
        ' CASE WHEN PED_UND_CONSUMIDORA IS NOT NULL THEN BAN_APELIDO|| ''-'' || PED_UND_CONSUMIDORA '+
        ' ELSE BAN_APELIDO END BANCO, BAN_APELIDO, PED_UND_CONSUMIDORA, cf.cct_descri, pc.PCX_DESCRI '+
        ' FROM PED0000 PE                                                                         '+
        ' JOIN CLI0000 CL ON (CL.CLI_CODIGO = PE.CLI_CODIGO)                                      '+
        ' JOIN OPV0000 OP ON (OP.OPV_CODIGO = PE.OPV_CODIGO)                                      '+
        ' JOIN REP0000 RP ON (RP.REP_CODIGO = PE.REP_CODIGO)                                      '+
        ' JOIN BAN0000 BA ON (BA.BAN_CODIGO = PE.BAN_CODIGO)                                      ' +
        ' LEFT JOIN CCT_0000 cf ON (cf.CCT_CODIGO = PE.CCT_CODIGO)                                ' +
        ' LEFT JOIN PCX0000 pc ON (pc.PCX_CODIGO = PE.PCX_CODIGO)                                ';


      if (DataTipo.ItemIndex = 1) then
         qSqlCdsPesq.sql.add('     left join NF0001 T1 on  T1.PED_CODIGO=PE.Ped_codigo and t1.NF_STATUS_NFE <> ''C''' );
       SQLADD(ConcatSe(' PE.', dbinicio.ExclusivoSql('PEDIDOS')) );
      if (Edt_Lista.Text<>'') and ( Rad_Pedido.checked or Rad_Pedido_Compra.checked)  then  // busca pelo numero informado, desconsidera outros filtros
      begin

          if Rad_Pedido.checked  then
             sqladd( camposql( 'PE.PED_CODIGO', StrZero(ExtrairNumeros(Edt_Lista.Text),6)+ExtrairLetra(Edt_Lista.Text)))
          Else
          if Rad_Pedido_Compra.checked  then
             sqladd( camposql( 'PE.PED_NUMERO_PED_CLIENTE',Edt_Lista.Text));
      end
      else
      begin

          if ( dbInicio.Empresa.VisualizaPedios_P ) and ( dbInicio.Empresa.fCODIGO_REPRES <> '000' ) then
             sqlAdd('( Pe.REP_CODIGO ='+qStr(dbInicio.Empresa.fCODIGO_REPRES) +
                      ' or pe.REP_CODIGO_INTERNO = '+qStr(dbInicio.Empresa.fCODIGO_REPRES)+')'    );

          sqlAdd( camposql( 'Pe.OPV_CODIGO', cbTipo.idRetorno ) ) ;

          if Rad_Cliente.checked then
               sqlAdd( camposql( 'Pe.CLI_CODIGO', cbPesq.idRetorno ) )
          Else
          if Rad_Fantasia.checked then
               sqlAdd( camposql( 'Pe.CLI_CODIGO', cbFantasia.idRetorno ) )
          Else
          if Rad_Vendedor.checked then
             sqlAdd( camposql( 'Pe.REP_CODIGO', cbVendedor.idRetorno ) )
          Else
          if (rdCCusto.Checked) then
             sqlAdd( camposql( 'Pe.pcx_codigo', CbProjetoObra.idRetorno ))
          Else
          if (rdCFinanceira.Checked) then
             sqlAdd( camposql( 'Pe.cct_codigo', CbContaFinanceira.idRetorno ));



           //A FATURAR = F , CANCELADO = C , FATURADO TOTAL = T, PARCIAL = P , FATURADO AGRUPADO  = A
          case cbbFaturamento.ItemIndex of
            1:sqladd('Pe.PED_SITUACAO not in (''F'',''C'')');     //FATURADO
            2:sqladd('Pe.PED_SITUACAO in (''P'',''F'')');         //PENDENTES
            3:SqlAdd('Pe.PED_SITUACAO in (''A'')');  //AGRUPADOS
            4:SqlAdd('Pe.PED_SITUACAO in (''C'')');  //CANCELADOS
          end;

          if DataTipo.ItemIndex = 2 then
          begin
              SqlAdd('CL.CLI_RECORRENTE = ''S''');
              SqlAdd('CL.CLI_DATA_ULTIMA_PARCELA IS NOT NULL');
          end;

         campo := '';
         case DataTipo.ItemIndex of
           0: campo := 'cast(pe.PED_DTENTRADA AS DATE)';
           1: campo := 'cast(T1.NF_EMISSAO as date)';
           2: campo := 'cast(cl.CLI_DATA_ULTIMA_PARCELA as date)';
         end;

          if (RxDataFinal.Date>0) and (RxDataInicial.Date > RxDataFinal.Date) then
             GeraException  ('Data final não pode ser menor que a data inicial!');

            if rxDataInicial.date>0  then
               sqladd( campo+'>='+datetosql(rxDataInicial.date));
            if rxDataFinal.date>0  then
               sqladd( campo+'<='+datetosql(rxDataFinal.date));

      end;

      qSqlCdsPesq.sql.add( wCondicao );
//      qSqlCdsPesq.sql.add ( 'order by '+concatse( campo, ' desc, ')+' pe.ped_codigo desc ');
      if ordem = '' then
        qSqlCdsPesq.sql.add ( 'order by '+ campo + iif(campo = '', '', ' desc,') + ' cli_razao, pe.ped_codigo desc ')
      else
      if ordem = 'vendas' then
        qSqlCdsPesq.sql.add ( 'order by ban_apelido, '+ campo  + iif(campo = '', '', ' desc ,') +  '  cli_razao ')
      else
      if ordem = 'lista' then
        qSqlCdsPesq.sql.add ( 'order by '+ campo  + iif(campo = '', '', ' desc ,') + '  cli_razao ');

      if dbInicio.isDesenvolvimento then
        CopyToClipboard(sqlTotal+ wcondicao);
      OpenAux(sqlTotal+ wcondicao );
      if not qAux.IsEmpty then
      begin
        edVendas.Text := inttostr(qAux.FieldByName('NVENDAS').AsInteger );
        edTotal.Value := qAux.FieldByName('TotalVendas').AsFloat;


      end
      else
      begin
        edVendas.Text := '0';
        edTotal.Value := 0;

      end;
      if DBInicio.IsDesenvolvimento then
        CopyToClipBoard(qSqlCdsPesq.Text);
      SqlCdsPesq.open;
      SqlCdsPesq.Last;
      SqlCdsPesq.First; // subterfúgio para trazer todos os registros, pois ele estava trazendo somente os primeiros 20...
  finally
     SqlCdsPesq.EnableControls;

  end;

end;




//##############################################################
//## INÍCIO da Renovação automática de doações recorrentes
//##############################################################


procedure TfrmPesqDoacao.btnRenovarRecorrenciasClick(Sender: TObject);
begin
  if SqlCdsPesq.IsEmpty then
    Exit;

  if not ExisteRecorrenciaSelecionada then
  begin
    MessageDlg(
      'Nenhuma recorrência foi selecionada.',
      mtWarning,
      [mbOK],
      0);
    Exit;
  end;


  if MessageDlg(
       'Confirma a renovação das recorrências selecionadas?',
       mtConfirmation,
       [mbYes, mbNo],
       0) <> mrYes then
    Exit;

  frmRecorrencia := TfrmRecorrencia.Create(Self);
  frmRecorrencia.cbContaFinanceiraRecorrencia.idRetorno := SqlCdsPesqCCT_CODIGO.AsString;
  try
    if frmRecorrencia.ShowModal <> mrOk then
      Exit;

    FContaFinanceiraRecorrencia := frmRecorrencia.cbContaFinanceiraRecorrencia.idRetorno;
    FTaxaRecorrencia :=
      StrToFloatDef(
        StringReplace(
          frmRecorrencia.edTaxaRecorrencia.Text,
          ',',
          FormatSettings.DecimalSeparator,
          [rfReplaceAll]),
        0);

    RenovarRecorrenciasSelecionadas;

  finally
    FreeAndNil(frmRecorrencia);
  end;

  BitPesquisarClick(Sender);
  ShowMessage('Processamento concluído.');
end;


procedure TfrmPesqDoacao.RenovarRecorrenciasSelecionadas;
var
  Bmk: TBookmark;
begin
  if SqlCdsPesq.IsEmpty then
    Exit;

  Bmk := SqlCdsPesq.GetBookmark;

  try
    SqlCdsPesq.DisableControls;

    SqlCdsPesq.First;

    while not SqlCdsPesq.Eof do
    begin

      if SqlCdsPesqSELECIONADO.AsBoolean then
      begin
        ProcessarRecorrencia(
          SqlCdsPesqCLI_CODIGO.AsString,
          SqlCdsPesqCLI_DATA_ULTIMA_PARCELA.AsDateTime
        );
      end;

      SqlCdsPesq.Next;
    end;

  finally
    SqlCdsPesq.GotoBookmark(Bmk);
    SqlCdsPesq.FreeBookmark(Bmk);
    SqlCdsPesq.EnableControls;
  end;
end;


procedure TfrmPesqDoacao.ProcessarRecorrencia(
  const ACliCodigo: string;
  const ADataUltimaParcela: TDateTime);
var
  PedidoOrigem : String;
  vTipoParcela : TPedidoTipoParcela;
  vDias        : Integer;
begin

  // -----------------------------------------
  // 1. CONTEXTO BASE (SEMENTE DO PROCESSO)
  // -----------------------------------------
  FCliCodigo := ACliCodigo;
  FDataUltParcela := ADataUltimaParcela;

  if (FCliCodigo = '') or (FDataUltParcela <= 0) then
    Exit;

  // -----------------------------------------
  // 2. DEFINIR PEDIDO BASE (REGRA CENTRAL)
  // -----------------------------------------
  PedidoOrigem := ObterPedidoBaseRecorrencia(
                    FCliCodigo,
                    FDataUltParcela);

  if PedidoOrigem = '' then
    Exit;

  FPedidoOrigem := PedidoOrigem;

  // -----------------------------------------
  // 3. DEFINIR TIPO (UMA VEZ SÓ)
  // -----------------------------------------
  vTipoParcela := NormalizaTipoParcela(GetTipoParcelaPedido(FPedidoOrigem));

  // trava no contexto
  FTipoParcelaRecorrencia := vTipoParcela;

  // -----------------------------------------
  // 4. CALCULAR INTERVALO (REGRA DO MOTOR)
  // -----------------------------------------
  vDias := GetIntervaloMesesTipoParcela(vTipoParcela);

  if vDias > 0 then
    FDataNovaUltimaParcela := IncDay(FDataUltParcela, vDias)
  else
    FDataNovaUltimaParcela := FDataUltParcela;

  // -----------------------------------------
  // 5. EXECUÇÃO DO FLUXO (SEM RECALCULAR NADA)
  // -----------------------------------------
  CarregarPedidoOrigem(FPedidoOrigem);
  GerarNovoPedido;
  CopiarCabecalhoPedido;
  // CopiarItensPedido;
  GerarFinanceiro;
  AtualizarClienteRecorrente(FCliCodigo);
  FinalizarRecorrencia;

end;

function TfrmPesqDoacao.ObterPedidoBaseRecorrencia(
  const ACliCodigo: String;
  const ADataUltimaParcela: TDateTime): String;
begin

  Result := '';

  qAux.Close;
  qAux.SQL.Text :=
    'SELECT FIRST 1 ' +
    '  P.PED_CODIGO ' +
    'FROM FAT_PC01 FP ' +

    // liga FAT_PC01 -> FAT0000
    'INNER JOIN FAT0000 F ON F.FAT_CODIGO = FP.FAT_CODIGO ' +
    ' AND F.EMP_CODIGO = FP.EMP_CODIGO ' +

    // liga FAT0000 -> PED0000
    'INNER JOIN PED0000 P ON P.PED_CODIGO = F.PED_CODIGO ' +
    ' AND P.EMP_CODIGO = F.EMP_CODIGO ' +

    'WHERE FP.CLI_CODIGO = ' + QuotedStr(ACliCodigo) +
    ' AND FP.EMP_CODIGO = ' + QuotedStr(dbInicio.EMP_CODIGO) +

    // consistência financeira
    ' AND FP.FPC_VENCTO IS NOT NULL ' +
    ' AND CAST(FP.FPC_VENCTO AS DATE) <= ' + DateToSQL(ADataUltimaParcela) +

    // evita registros excluídos
    ' AND COALESCE(FP.FPC_EXCLUSAO, ''N'') <> ''S'' ' +

    // determinismo
    ' ORDER BY FP.FPC_VENCTO DESC, FP.FAT_CODIGO DESC';

  qAux.Open;

  if not qAux.IsEmpty then
    Result := qAux.FieldByName('PED_CODIGO').AsString;

end;


procedure TfrmPesqDoacao.CarregarPedidoOrigem(
  const APedido: String);
begin

  qAux.Close;
  qAux.SQL.Clear;

  qAux.SQL.Add('SELECT *');
  qAux.SQL.Add('FROM PED0000');
  qAux.SQL.Add('WHERE PED_CODIGO = ' + QuotedStr(APedido));
  qAux.SQL.Add('  AND EMP_CODIGO = ' + QuotedStr(dbInicio.EMP_CODIGO));

  qAux.Open;

  if qAux.IsEmpty then
    raise Exception.Create('Pedido origem não localizado.');
end;


procedure TfrmPesqDoacao.GerarNovoPedido;
var
  vTipoStr: string;
  TotalParcela: double;
begin

  // -----------------------------------
  // 1. GERA NOVO CÓDIGO DO PEDIDO
  // -----------------------------------
  FNovoPedido := StrZero( SequenciadorPRC ( dbInicio.MainDB, '001', 'PED0000', 'PED_CODIGO', 0 ) , 6 );

  // -----------------------------------
  // 2. BUSCA TIPO DE PARCELA DO PEDIDO ORIGEM
  // -----------------------------------
  qAux.Close;
  qAux.SQL.Text :=
    'SELECT PED_TIPOPARCELA ' +
    'FROM PED0000 ' +
    'WHERE PED_CODIGO = ' + QuotedStr(FPedidoOrigem) +
    ' AND EMP_CODIGO = ' + QuotedStr(dbInicio.EMP_CODIGO);

  qAux.Open;

  vTipoStr := Trim(qAux.FieldByName('PED_TIPOPARCELA').AsString);
  TotalParcela := RecalcularValorRecorrencia(SqlCdsPesqPED_VLPARCELA.AsFloat);

  // ----------------------------------------
  // 2.1 CALCULA PRIMEIRO VENCIMENTO DO NOVO CICLO
  // ----------------------------------------
  FDataInicioNovoPedido :=
    CalcularNovaDataRecorrencia(
      FDataUltParcela,
      FTipoParcelaRecorrencia
    );



  // -----------------------------------
  // 3. INSERE CABEÇALHO DO NOVO PEDIDO
  // -----------------------------------
  qAux2.Close;
  qAux2.SQL.Text :=
    'INSERT INTO PED0000 (' +
    'PED_CODIGO, EMP_CODIGO, CLI_CODIGO, PED_SITUACAO, ' +
    'PED_DTENTRADA, ' +
    'REP_CODIGO, ' +
    'PED_VLTOTAL_LIQ, ' +
    'PED_VLFATURADO, ' +
    'OPV_CODIGO, ' +
    'PED_VLTOTAL_BRUTO, ' +
    'PCX_CODIGO, ' +
    'FPG_REGISTRO, ' +
    'BAN_CODIGO, ' +
    'PED_PARCELA, ' +
    'PED_INICIOPAG, ' +
    'PED_VLPARCELA, ' +
    'PED_UND_CONSUMIDORA, ' +
    'CCT_CODIGO, ' +
    'PED_TIPOPARCELA ' +
    ') VALUES (' +
    QuotedStr(FNovoPedido) + ', ' +
    QuotedStr(dbInicio.EMP_CODIGO) + ', ' +
    '(SELECT CLI_CODIGO FROM PED0000 ' +
    ' WHERE PED_CODIGO = ' + QuotedStr(FPedidoOrigem) +
    ' AND EMP_CODIGO = ' + QuotedStr(dbInicio.EMP_CODIGO) + '), ' +
    '''T'', ' +
    DateTimeToSQL(Now) + ', ' +
    QuotedStr(SqlCdsPesqREP_CODIGO.AsString) + ', ' +
    FloatToSql(SqlCdsPesqPED_VLTOTAL_LIQ.AsFloat) + ', ' +
    FloatToSql(SqlCdsPesqPED_VLTOTAL_LIQ.AsFloat) + ', ' +
    QuotedStr(SqlCdsPesqOPV_CODIGO.AsString) + ', ' +
    FloatToSql(SqlCdsPesqPED_VLTOTAL_BRUTO.AsFloat) + ', ' +
    QuotedStr(SqlCdsPesqPCX_CODIGO.AsString) + ', ' +
    SqlCdsPesqFPG_REGISTRO.AsString + ', ' +
    QuotedStr(SqlCdsPesqBAN_CODIGO.AsString) + ', ' +
    SqlCdsPesqPED_PARCELA.AsString + ', ' +
    DateToSQL(FDataInicioNovoPedido) + ', ' +
    FloatToSql(TotalParcela) + ', ' +
    SqlCdsPesqPED_UND_CONSUMIDORA.AsString + ', ' +
    QuotedStr(SqlCdsPesqCCT_CODIGO.AsString) + ', ' +
    QuotedStr(vTipoStr) + ')';

  if dbInicio.IsDesenvolvimento then
    CopyToClipboard(qAux2.SQL.Text);
  qAux2.ExecSQL;

end;



procedure TfrmPesqDoacao.CopiarCabecalhoPedido;
var
  vCCTCodigo      : String;
  vVlTotalBruto   : Double;
  vVlTotalLiquido : Double;
begin

  qAux2.Close;
  qAux2.SQL.Text :=
    'SELECT * FROM PED0000 ' +
    'WHERE PED_CODIGO = ' + QuotedStr(FPedidoOrigem) +
    ' AND EMP_CODIGO = ' + QuotedStr(dbInicio.EMP_CODIGO);

  qAux2.Open;

  if qAux2.IsEmpty then
    Exit;

  // ----------------------------------------
  // Recalcula valores
  // ----------------------------------------
  vVlTotalBruto :=
    RecalcularValorRecorrencia(
      qAux2.FieldByName('PED_VLTOTAL_BRUTO').AsFloat);

  vVlTotalLiquido :=
    RecalcularValorRecorrencia(
      qAux2.FieldByName('PED_VLTOTAL_LIQ').AsFloat);

  // ----------------------------------------
  // Centro de custo
  // ----------------------------------------
  if Trim(FContaFinanceiraRecorrencia) <> '' then
    vCCTCodigo := FContaFinanceiraRecorrencia
  else
    vCCTCodigo := qAux2.FieldByName('CCT_CODIGO').AsString;

  qAux3.Close;
  qAux3.SQL.Text :=
    'UPDATE PED0000 SET ' +

    'PED_SITUACAO = ''T'', ' +

    'PED_VLTOTAL_BRUTO = ' + FloatToSql(vVlTotalBruto) + ', ' +
    'PED_VLTOTAL_LIQ = ' + FloatToSql(vVlTotalLiquido) + ', ' +

    'PED_TIPOPARCELA = ' + QuotedStr(qAux2.FieldByName('PED_TIPOPARCELA').AsString) + ', ' +

    'CCT_CODIGO = ' + QuotedStr(vCCTCodigo) +

    ' WHERE PED_CODIGO = ' + QuotedStr(FNovoPedido) +
    ' AND EMP_CODIGO = ' + QuotedStr(dbInicio.EMP_CODIGO);

  qAux3.ExecSQL;

end;


procedure TfrmPesqDoacao.CopiarItensPedido;
var
  vSQL: TStringList;
begin
  qAux2.Close;
  qAux2.SQL.Clear;

  qAux2.SQL.Add('SELECT * FROM PED_IT01');
  qAux2.SQL.Add('WHERE PED_CODIGO = ' + QuotedStr(FPedidoOrigem));
  qAux2.SQL.Add('AND EMP_CODIGO = ' + QuotedStr(dbInicio.EMP_CODIGO));

  qAux2.Open;

  while not qAux2.Eof do
  begin

    vSQL := TStringList.Create;
    try

      vSQL.Add('INSERT INTO PED_IT01 (');
      vSQL.Add('PRF_REGISTRO,');
      vSQL.Add('PED_CODIGO,');
      vSQL.Add('EMP_CODIGO,');
      vSQL.Add('PRD_REFER,');
      vSQL.Add('PRF_QTDE,');
      vSQL.Add('PRF_QTDEFAT,');
      vSQL.Add('PRF_PRECO,');
      vSQL.Add('PRF_CUSTO,');
      vSQL.Add('PRF_PRDDESCRI');
      vSQL.Add(') VALUES (');

      // PK do item
      vSQL.Add(IntToStr(GetNextSequence('GEN_PRF_REGISTRO')) + ',');

      // novo pedido
      vSQL.Add(QuotedStr(FNovoPedido) + ',');

      // empresa
      vSQL.Add(QuotedStr(dbInicio.EMP_CODIGO) + ',');

      // campos do item origem
      vSQL.Add(QuotedStr(qAux2.FieldByName('PRD_REFER').AsString) + ',');
      vSQL.Add(StringReplace(qAux2.FieldByName('PRF_QTDE').AsString, ',', '.', [rfReplaceAll]) + ',');
      vSQL.Add(StringReplace(qAux2.FieldByName('PRF_QTDEFAT').AsString, ',', '.', [rfReplaceAll]) + ',');
      vSQL.Add(StringReplace(qAux2.FieldByName('PRF_PRECO').AsString, ',', '.', [rfReplaceAll]) + ',');
      vSQL.Add(StringReplace(qAux2.FieldByName('PRF_CUSTO').AsString, ',', '.', [rfReplaceAll]) + ',');
      vSQL.Add(QuotedStr(qAux2.FieldByName('PRF_PRDDESCRI').AsString));

      vSQL.Add(')');

      qAux3.Close;
      qAux3.SQL.Text := vSQL.Text;
      qAux3.ExecSQL;

    finally
      vSQL.Free;
    end;

    qAux2.Next;
  end;

end;

procedure TfrmPesqDoacao.AtualizarClienteRecorrente(const ACliCodigo: String);
var
  vNovaData: TDateTime;
  vHistorico: string;
begin

  // 1. Busca data atual do cliente
  qAux2.Close;
  qAux2.SQL.Text :=
    'SELECT CLI_DATA_ULTIMA_PARCELA, CLI_HISTORICO '+
    'FROM CLI0000 '+
    'WHERE CLI_CODIGO = ' + QuotedStr(ACliCodigo) +
    ' AND EMP_CODIGO = ' + QuotedStr(dbInicio.EMP_CODIGO);

  qAux2.Open;

  if qAux2.IsEmpty then
    Exit;

  // 2. Se não tem data, não faz nada (proteção)
  if qAux2.FieldByName('CLI_DATA_ULTIMA_PARCELA').IsNull then
    Exit;

  // 3. Calcula próximo ciclo (padrão da recorrência)
  vNovaData :=
    qAux2.FieldByName('CLI_DATA_ULTIMA_PARCELA').AsDateTime +
    GetIntervaloMesesTipoParcela(FTipoParcelaRecorrencia);

  vHistorico := qAux2.FieldByName('CLI_HISTORICO').AsString + #13 + #10 +
                FormatDateTime('dd/mm/yyyy', Now) + ' - ' +
                SqlCdsPesqREP_NOME.AsString  + ' - ' +
                'RENOVAÇÃO AUTOMÁTICA PELO SISTEMA';




  // 4. Atualiza cliente
  qAux3.Close;
  qAux3.SQL.Text :=
    'UPDATE CLI0000 SET ' +
    'CLI_DATA_ULTIMA_PARCELA = ' + DateToSQL(vNovaData) + ',' +
    'CLI_HISTORICO = ' + QuotedStr(vHistorico) +
    ' WHERE CLI_CODIGO = ' + QuotedStr(ACliCodigo) +
    ' AND EMP_CODIGO = ' + QuotedStr(dbInicio.EMP_CODIGO);

  qAux3.ExecSQL;

end;

procedure TfrmPesqDoacao.FinalizarRecorrencia;
begin

  // ----------------------------------------
  // 1. ATUALIZA CLIENTE (MARCA RECORRÊNCIA)
  // ----------------------------------------
  qAux2.Close;
  qAux2.SQL.Text :=
    'UPDATE CLI0000 SET ' +
    'CLI_RECORRENTE = ''S'', ' +
    'CLI_DATA_ULTIMA_PARCELA = ' + DateToSQL(FDataNovaUltimaParcela) + ' ' +
    'WHERE CLI_CODIGO = ' +
    '  (SELECT CLI_CODIGO FROM PED0000 ' +
    '   WHERE PED_CODIGO = ' + QuotedStr(FPedidoOrigem) +
    '   AND EMP_CODIGO = ' + QuotedStr(dbInicio.EMP_CODIGO) + ')';

  qAux2.ExecSQL;

  // ----------------------------------------
  // 2. ENCERRAMENTO (SÓ SE NECESSÁRIO)
  // ----------------------------------------
  if FTipoParcelaRecorrencia = tpUnica then
  begin

    qAux3.Close;
    qAux3.SQL.Text :=
      'UPDATE CLI0000 SET CLI_RECORRENTE = ''N'' ' +
      'WHERE CLI_CODIGO = ' +
      '  (SELECT CLI_CODIGO FROM PED0000 ' +
      '   WHERE PED_CODIGO = ' + QuotedStr(FPedidoOrigem) +
      '   AND EMP_CODIGO = ' + QuotedStr(dbInicio.EMP_CODIGO) + ')';

    qAux3.ExecSQL;

  end;

end;



//#######################################
//          FATURAMENTO
//#######################################
procedure TfrmPesqDoacao.GerarFinanceiro;
begin
  GerarCabecalhoFinanceiro;
  GerarParcelasFinanceiras
end;

procedure TfrmPesqDoacao.GerarCabecalhoFinanceiro;
var
  vVlFat     : Double;
  vVlLiquido : Double;
  vCCTCodigo : String;
begin

  // ----------------------------------------
  // 1. GERA IDENTIFICADORES
  // ----------------------------------------
  FFatCodigo := strzero(
                  SequenciadorPRC(
                    dbConn,
                    dbInicio.EMPRESA.EMP_CODIGO,
                    'NF0001',
                    'NF_NOTANUMBER_S',
                    0),6);

  // ----------------------------------------
  // 2. CARREGA O PEDIDO RECÉM GERADO
  // ----------------------------------------
  qAux.Close;
  qAux.SQL.Text :=
    'SELECT * '+
    'FROM PED0000 '+
    'WHERE PED_CODIGO = ' + QuotedStr(FNovoPedido) +
    ' AND EMP_CODIGO = ' + QuotedStr(dbInicio.EMP_CODIGO);

  qAux.Open;

  if qAux.IsEmpty then
    Exit;

  // ----------------------------------------
  // 3. RECALCULA VALORES
  // ----------------------------------------
  vVlFat := qAux.FieldByName('PED_VLTOTAL_BRUTO').AsFloat;

  vVlLiquido := qAux.FieldByName('PED_VLTOTAL_LIQ').AsFloat;

  // ----------------------------------------
  // 4. CENTRO DE CUSTO
  // ----------------------------------------
  if Trim(FContaFinanceiraRecorrencia) <> '' then
    vCCTCodigo := FContaFinanceiraRecorrencia
  else
    vCCTCodigo := qAux.FieldByName('CCT_CODIGO').AsString;

  // ----------------------------------------
  // 5. GERA O CABEÇALHO FINANCEIRO
  // ----------------------------------------
  qAux2.Close;
  qAux2.SQL.Text :=
    'INSERT INTO FAT0000 ('+

    ' FAT_CODIGO,'+
    ' PED_CODIGO,'+
    ' EMP_CODIGO,'+
    ' CLI_CODIGO,'+
    ' REP_CODIGO,'+
    ' OPV_CODIGO,'+
    ' PCX_CODIGO,'+
    ' FAT_DTEMIS,'+
    ' FAT_VLFAT,'+
    ' CCT_CODIGO,'+
    ' FAT_PREVISAO,'+
    ' FAT_EXCLUSAO,'+
    ' FAT_VL_LIQ'+

    ') VALUES ('+

    QuotedStr(FFatCodigo)+','+
    QuotedStr(FNovoPedido)+','+
    QuotedStr(dbInicio.EMP_CODIGO)+','+
    QuotedStr(qAux.FieldByName('CLI_CODIGO').AsString)+','+
    QuotedStr(qAux.FieldByName('REP_CODIGO').AsString)+','+
    QuotedStr(qAux.FieldByName('OPV_CODIGO').AsString)+','+
    QuotedStr(qAux.FieldByName('PCX_CODIGO').AsString)+','+
    DateToSQL(Date)+','+

    FloatToSql(vVlFat)+','+

    QuotedStr(vCCTCodigo)+','+

    QuotedStr('N')+','+
    QuotedStr('N')+','+

    FloatToSql(vVlLiquido)+

    ')';

  qAux2.ExecSQL;

end;

procedure TfrmPesqDoacao.GerarParcelasFinanceiras;
var
  i               : Integer;
  vFatRegistro    : Integer;
  vQtdParcelas    : Integer;
  vValorParcela   : Double;
  vDataVencimento : TDateTime;
  vCCTCodigo      : String;
begin

  // ----------------------------------------
  // 1. CARREGA O PEDIDO E OS DADOS DA ULTIMA PARCELA
  // ----------------------------------------
  qAux.Close;
  qAux.SQL.Text :=
    'SELECT '+
    '  P.*, '+
    '  FP.* '+

    'FROM PED0000 P '+

    'LEFT JOIN FAT0000 F '+
    '  ON F.PED_CODIGO = ' + QuotedStr(FPedidoOrigem) +
    ' AND F.EMP_CODIGO = P.EMP_CODIGO '+

    'LEFT JOIN FAT_PC01 FP '+
    '  ON FP.FAT_CODIGO = F.FAT_CODIGO '+
    ' AND FP.EMP_CODIGO = F.EMP_CODIGO '+
    ' AND FP.FPC_NUMER = ('+
    '      SELECT MAX(FP2.FPC_NUMER) '+
    '      FROM FAT_PC01 FP2 '+
    '      WHERE FP2.FAT_CODIGO = FP.FAT_CODIGO '+
    '        AND FP2.EMP_CODIGO = FP.EMP_CODIGO'+
    ' ) '+

    'WHERE P.PED_CODIGO = ' + QuotedStr(FNovoPedido) +
    ' AND P.EMP_CODIGO = ' + QuotedStr(dbInicio.EMP_CODIGO);

  if dbInicio.IsDesenvolvimento then
    CopyToClipboard(qAux.SQL.Text);

  qAux.Open;

  if qAux.IsEmpty then
    Exit;

  // ----------------------------------------
  // Centro de custo
  // ----------------------------------------
  if Trim(FContaFinanceiraRecorrencia) <> '' then
    vCCTCodigo := FContaFinanceiraRecorrencia
  else
    vCCTCodigo := qAux.FieldByName('CCT_CODIGO').AsString;

  // ----------------------------------------
  // Dados financeiros
  // ----------------------------------------
  vQtdParcelas    := qAux.FieldByName('PED_PARCELA').AsInteger;
  vValorParcela   := qAux.FieldByName('PED_VLPARCELA').AsFloat;
  vDataVencimento := qAux.FieldByName('PED_INICIOPAG').AsDateTime;

  // ----------------------------------------
  // 2. GERA AS PARCELAS
  // ----------------------------------------
  for i := 1 to vQtdParcelas do
  begin

    vFatRegistro := dbInicio.GetNextSequence('GEN_FAT_PC01_REGISTRO');

    qAux2.Close;
    qAux2.SQL.Text :=
      'INSERT INTO FAT_PC01 ('+
      ' FAT_REGISTRO,'+
      ' FAT_CODIGO,'+
      ' FPC_NUMER,'+
      ' REP_CODIGO,'+
      ' BAN_CODIGO,'+
      ' CCT_CODIGO,'+
      ' PCX_CODIGO,'+
      ' FPC_DTEMIS,'+
      ' FPC_NPARCELAS,'+
      ' FPC_SITPAG,'+
      ' FPC_STATUS,'+
      ' FPC_VENCTO,'+
      ' FPC_VLPARC,'+
      ' CLI_CODIGO,'+
      ' EMP_CODIGO,'+
      ' FPG_REGISTRO,'+
      ' FPC_COBTIPO,'+
      ' FPC_TIPODOC,'+
      ' FPC_IMPDUP,'+
      ' FPC_PREVISAO,'+
      ' FPC_STATUS_REMESSA,'+
      ' BAN_COD_APELIDO,'+
      ' FPC_DESCONTADO,'+
      ' FPC_CONFIRMADEVOLUCAO,'+
      ' FPC_EXCLUSAO,'+
      ' PED_UND_CONSUMIDORA'+
      ') VALUES ('+

      IntToStr(vFatRegistro)+','+

      QuotedStr(FFatCodigo)+','+

      QuotedStr(StrZero(IntToStr(i),2))+','+

      QuotedStr(qAux.FieldByName('REP_CODIGO').AsString)+','+
      QuotedStr(qAux.FieldByName('BAN_CODIGO').AsString)+','+

      QuotedStr(vCCTCodigo)+','+

      QuotedStr(qAux.FieldByName('PCX_CODIGO').AsString)+','+

      DateToSQL(Date)+','+

      IntToStr(vQtdParcelas)+','+

      QuotedStr('P')+','+
      QuotedStr('Pendente')+','+

      DateToSQL(vDataVencimento)+','+

      FloatToSql(vValorParcela)+','+

      QuotedStr(qAux.FieldByName('CLI_CODIGO').AsString)+','+
      QuotedStr(dbInicio.EMP_CODIGO)+','+

      IntToStr(qAux.FieldByName('FPG_REGISTRO').AsInteger)+','+

      QuotedStr(qAux.FieldByName('FPC_COBTIPO').AsString)+','+
      QuotedStr(qAux.FieldByName('FPC_TIPODOC').AsString)+','+
      QuotedStr(qAux.FieldByName('FPC_IMPDUP').AsString)+','+
      QuotedStr(qAux.FieldByName('FPC_PREVISAO').AsString)+','+
      QuotedStr(qAux.FieldByName('FPC_STATUS_REMESSA').AsString)+','+
      qAux.FieldByName('BAN_COD_APELIDO').AsString+','+
      QuotedStr(qAux.FieldByName('FPC_DESCONTADO').AsString)+','+
      QuotedStr(qAux.FieldByName('FPC_CONFIRMADEVOLUCAO').AsString)+','+
      QuotedStr(qAux.FieldByName('FPC_EXCLUSAO').AsString)+','+

      qAux.FieldByName('PED_UND_CONSUMIDORA').AsString+

      ')';

    if dbInicio.IsDesenvolvimento then
      CopyToClipboard(qAux2.SQL.Text);

    qAux2.ExecSQL;

    // Guarda a data da última parcela gerada
    FDataNovaUltimaParcela := vDataVencimento;

    // Próximo vencimento
    vDataVencimento :=
      IncMonth(
        vDataVencimento,
        GetIntervaloMesesTipoParcela(FTipoParcelaRecorrencia));

  end;

end;



{ FUNÇÕES AUXILIARES DA RECORRÊNCIA }
function TfrmPesqDoacao.NormalizaTipoParcela(const AValor: string): TPedidoTipoParcela;
var
  v: string;
begin

  v := UpperCase(Trim(AValor));

  // remove acentos críticos (mínimo pragmático)
  v := StringReplace(v, 'ÚNICA', 'UNICA', [rfReplaceAll, rfIgnoreCase]);

  if v = 'MENSAL' then Exit(tpMensal);
  if v = 'BIMESTRAL' then Exit(tpBimestral);
  if v = 'TRIMESTRAL' then Exit(tpTrimestral);
  if v = 'SEMESTRAL' then Exit(tpSemestral);
  if v = 'ANUAL' then Exit(tpAnual);
  if v = 'UNICA' then Exit(tpUnica);

  Result := tpDesconhecido;

end;


function TfrmPesqDoacao.GetIntervaloMesesTipoParcela(ATipo: TPedidoTipoParcela): Integer;
begin
  case ATipo of

    tpMensal:      Result := 1;
    tpBimestral:   Result := 2;
    tpTrimestral:  Result := 3;
    tpSemestral:   Result := 6;
    tpAnual:       Result := 12;
    tpUnica:       Result := 0;
  else
    Result := 0;
  end;
end;


function TfrmPesqDoacao.GetTipoParcelaPedido(const APedCodigo: string): string;
begin

  qAux.Close;
  qAux.SQL.Text :=
    'SELECT PED_TIPOPARCELA ' +
    'FROM PED0000 ' +
    'WHERE PED_CODIGO = ' + QuotedStr(APedCodigo) +
    ' AND EMP_CODIGO = ' + QuotedStr(dbInicio.EMP_CODIGO);

  qAux.Open;

  Result := Trim(qAux.FieldByName('PED_TIPOPARCELA').AsString);

end;


function TfrmPesqDoacao.CalcularNovaDataRecorrencia(
  const AData: TDateTime;
  ATipo: TPedidoTipoParcela): TDateTime;
begin
  // Result := AData + GetIntervaloMesesTipoParcela(ATipo);
  Result := IncMonth(AData, + GetIntervaloMesesTipoParcela(ATipo));

end;

function TfrmPesqDoacao.RecalcularValorRecorrencia(AValor: Double): Double;
begin
  Result := AValor;

  if FTaxaRecorrencia > 0 then
    Result :=
      Result +
      (Result * FTaxaRecorrencia / 100);
end;


function TfrmPesqDoacao.ExisteRecorrenciaSelecionada: Boolean;
begin
  Result := False;

  SqlCdsPesq.DisableControls;
  try
    SqlCdsPesq.First;
    while not SqlCdsPesq.Eof do
    begin
      if SqlCdsPesqSelecionado.AsBoolean = True then
      begin
        Result := True;
        Break;
      end;
      SqlCdsPesq.Next;
    end;
  finally
    SqlCdsPesq.EnableControls;
  end;
end;



//########################################################
//** FIM DA Renovação automática de doações recorrentes
//########################################################










procedure TfrmPesqDoacao.cbbFaturamentoChange(Sender: TObject);
begin
  inherited;
  buscapedido('');
end;



procedure TfrmPesqDoacao.cbContaFinanceiraSelect(Sender: TObject);
begin
  inherited;
   EdCFinanceira.Text := CbContaFinanceira.idRetorno;
   BuscaPedido('');
end;

procedure TfrmPesqDoacao.CbFantasiaSelect(Sender: TObject);
begin
  inherited;
  Edt_Lista.Text := CbFantasia.idRetorno ;
   BuscaPedido('');
end;

procedure TfrmPesqDoacao.cbPesqSelect(Sender: TObject);
begin
  inherited;
  Edt_Lista.Text := CbPesq.IdRetorno;
  BuscaPedido('');
end;

procedure TfrmPesqDoacao.CbProjetoObraSelect(Sender: TObject);
begin
  inherited;
   EdProjetoObraCodigo.Text := CbProjetoObra.idRetorno;
   BuscaPedido('');
end;

procedure TfrmPesqDoacao.cbTipoSelect(Sender: TObject);
begin
  inherited;
  BuscaPedido('');
end;

procedure TfrmPesqDoacao.cbVendedorSelect(Sender: TObject);
begin
  inherited;
  Edt_Lista.Text := cbVendedor.idRetorno;
  BuscaPedido('');
end;

procedure TfrmPesqDoacao.cdsqSqlCdsPesqCalcFields(DataSet: TDataSet);
begin
  inherited;
  if cdsqSqlCdsPesqPED_SITUACAO.AsString = 'C' then
  begin
    cdsqSqlCdsPesqPED_SITUACAO2.AsString := 'CANCELADO'
  end
  else
  if cdsqSqlCdsPesqPED_SITUACAO.AsString = 'P' then
  begin
    cdsqSqlCdsPesqPED_SITUACAO2.AsString := 'FATURADO';
  end
  else
  if cdsqSqlCdsPesqPED_SITUACAO.AsString = 'F' then
  begin
    cdsqSqlCdsPesqPED_SITUACAO2.AsString := 'À FATURAR';
  end
  else
  if cdsqSqlCdsPesqPED_SITUACAO.AsString = 'T' then
  begin
    cdsqSqlCdsPesqPED_SITUACAO2.AsString := 'FATURADO';
  end

end;

procedure TfrmPesqDoacao.cdsqSqlCdsPesqPED_SITUACAOGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  if Sender.AsString = 'C' then
  begin
    Text := 'CANCELADO'
  end
  else
  if sender.AsString = 'P' then
  begin
    Text := 'FATURADO';
  end
  else
  if sender.AsString = 'F' then
  begin
    Text := 'À FATURAR';
  end
  else
  if sender.AsString = 'T' then
  begin
    Text := 'FATURADO';
  end

end;

procedure TfrmPesqDoacao.dbGrPedidoCellClick(Column: TColumn);
begin
  inherited;

  if SameText(Column.FieldName, 'SELECIONADO') then
  begin
    SqlCdsPesq.Edit;
    try
      SqlCdsPesqSELECIONADO.AsBoolean :=
        not SqlCdsPesqSELECIONADO.AsBoolean;
      SqlCdsPesq.Post;
    except
      SqlCdsPesq.Cancel;
      raise;
    end;

    dbGrPedido.Invalidate;
  end;
end;

procedure TfrmPesqDoacao.dbGrPedidoDblClick(Sender: TObject);
begin
 // inherited;
   idRetorno := SqlCdsPesqPED_CODIGO.AsString;
   ModalResult:=mrOk;
end;

procedure TfrmPesqDoacao.dbGrPedidoDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  R: TRect;
  Flags: UINT;
begin
  if SameText(Column.FieldName, 'SELECIONADO') then
  begin
    dbGrPedido.Canvas.Brush.Color := dbGrPedido.Color;
    dbGrPedido.Canvas.FillRect(Rect);

    R.Left   := Rect.Left + (Rect.Width - 13) div 2;
    R.Top    := Rect.Top + (Rect.Height - 13) div 2;
    R.Right  := R.Left + 13;
    R.Bottom := R.Top + 13;

    Flags := DFCS_BUTTONCHECK;

    if Column.Field.AsBoolean then
      Flags := Flags or DFCS_CHECKED;

    DrawFrameControl(
      dbGrPedido.Canvas.Handle,
      R,
      DFC_BUTTON,
      Flags
    );

    Exit;   // <<< IMPORTANTE
  end;

  dbGrPedido.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TfrmPesqDoacao.dbGrPedidoTitleClick(Column: TColumn);
var
  Bmk: TBookmark;
begin
  if not SameText(Column.FieldName, 'SELECIONADO') then
    Exit;

  Screen.Cursor := crHourGlass;
  try
    Bmk := SqlCdsPesq.GetBookmark;
    try
      SqlCdsPesq.DisableControls;
      try
        SqlCdsPesq.First;
        while not SqlCdsPesq.Eof do
        begin
          SqlCdsPesq.Edit;
          SqlCdsPesqSELECIONADO.AsBoolean := FMarcarTodos;
          SqlCdsPesq.Post;
          SqlCdsPesq.Next;
        end;
      finally
        SqlCdsPesq.EnableControls;
      end;
    finally
      if SqlCdsPesq.BookmarkValid(Bmk) then
        SqlCdsPesq.GotoBookmark(Bmk);
      SqlCdsPesq.FreeBookmark(Bmk);
    end;

    FMarcarTodos := not FMarcarTodos;

    dbGrPedido.Invalidate;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TfrmPesqDoacao.EdProjetoObraCodigoClick(Sender: TObject);
begin
  inherited;
   if (EdProjetoObraCodigo.Text <>'') then
   begin
      CbProjetoObra.idRetorno := STRzERO(EdProjetoObraCodigo.Text,3);
      if (CbProjetoObra.idRetorno='') then
         GeraException('Centro de Custo não localizado com o código informado');
   end;
end;

procedure TfrmPesqDoacao.edTaxaRecorrenciaKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  // Permite apenas números, Backspace e separador decimal
  if not (Key in ['0'..'9', #8, FormatSettings.DecimalSeparator]) then
  begin
    Key := #0;
    Exit;
  end;

  // Permite apenas um separador decimal
  if (Key = FormatSettings.DecimalSeparator) and
     (Pos(FormatSettings.DecimalSeparator, TEdit(Sender).Text) > 0) then
    Key := #0;
end;

procedure TfrmPesqDoacao.Edt_ListaExit(Sender: TObject);
begin
  inherited;
     if Rad_Cliente.checked then
     begin
          if Edt_Lista.Text <> '' then
          begin
               CbPesq.idRetorno:=StrZero(Edt_Lista.Text,5);
               if CbPesq.idRetorno='' then
                  GeraException('Cliente Não Localizado!');
          end
          Else
              CbPesq.Clear;
     end
     else
     if rad_fantasia.Checked then
     begin
          if Edt_Lista.Text <> '' then
          begin
               CbfANTASIA.idRetorno:=StrZero(Edt_Lista.Text,5);
               if CbfANTASIA.idRetorno='' then
                  GeraException('Cliente Não Localizado!');
          end
          Else
              CbFantasia.Clear;
     end
     else
     if Rad_Vendedor.checked  then
     begin
          if Edt_Lista.Text <> '' then
          begin
               CBVendedor.idretorno := StrZero(Edt_Lista.Text,3);
               if CBVendedor.idretorno='' then
                  GeraException('Vendedor Não Localizado!');
          end
          else
              CBVendedor.clear;
    end;
    if Edt_Lista.Text <> '' then
       BitPesquisar.Click;
end;

procedure TfrmPesqDoacao.ExportarparaCSV1Click(Sender: TObject);
var
  lista: TStringList;
begin
  inherited;
  lista := TStringList.Create;
  lista.Add('PED_CODIGO');
  lista.Add('PED_DTENTRADA');
  lista.Add('CLI_RAZAO');
  lista.Add('CLI_CGC');
  lista.Add('CLI_DTNASCIMENTO');
  lista.Add('CLI_ENDERE');
  lista.Add('CLI_BAIRRO');
  lista.Add('CLI_CIDADE');
  lista.Add('CLI_CEP');
  lista.Add('CLI_UF');
  lista.Add('BANCO');
  lista.Add('PED_VLPARCELA');
  lista.Add('PED_INICIOPAG');
  lista.Add('PED_PARCELA');
  lista.Add('PED_VLTOTAL_BRUTO');
  lista.Add('REP_NOME');
  lista.Add('CLI_FONE');
  lista.Add('CLI_CELULAR');
  lista.Add('PED_SITUACAO2');
  lista.Add('CCT_DESCRI');
  lista.Add('PCX_DESCRI');
  qSqlCdsPesq.Close;
  cdsqSqlCdsPesq.Close;
  cdsqSqlCdsPesq.Open;
  CriaCSV(dsCdsqSqlCdsPesq, lista, Self);

end;

procedure TfrmPesqDoacao.FormCreate(Sender: TObject);
begin
  inherited;
  SELF.Width := 1025;
  SELF.Height := 483;
  SELF.Constraints.MinWidth :=  1025 ;
  SELF.Constraints.MinHeight :=  550 ;
  if (dbInicio.Empresa.fCODIGO_REPRES <> '000') AND (DBInicio.Empresa.bVisualizaClientes_P ) then
  begin
     cbPesq.LookupWhere := 'REP_CODIGO = '+QuotedStr(dbInicio.Empresa.fCODIGO_REPRES);
     CbFantasia.LookupSelect := 'REP_CODIGO = '+QuotedStr(dbInicio.Empresa.fCODIGO_REPRES);
  end;
 gbcliente.Parent := Panel1;
 gbCCusto.Parent := Panel1;
 gbCFinanceira.Parent := Panel1;

 GbCliente.Left := 394;
 GbCliente.top := gbData.Top;
 gbCCusto.Left := 394;
 gbCCusto.top := gbData.Top;
 gbCFinanceira.Left := 394;
 gbCFinanceira.top := gbData.Top;

 gbCliente.Height:= gbData.Height;

 cbVendedor.Top:=cbPesq.top;
 cbFantasia.Top:=cbPesq.top;
 cbVendedor.left:=cbPesq.left;
 cbFantasia.left:=cbPesq.left;

 RxDataInicial.Date := StartOfTheMonth(Date);
 RxDataFinal.Date := EndOfTheMonth(date);

 Edt_Lista.clear;
 Rad_Pedido.Checked   := True;
 cbTipo.Clear;
 CbProjetoObra.Clear;
 cbPesq.Clear;


 gbCliente.Height := gbCCusto.Height;
 cbbFaturamento.ItemIndex := 1;
 dataTipo.ItemIndex := 0;

 rgSaida.ItemIndex := 0;
 FMarcarTodos := True;

 BuscaPedido('');


end;

procedure TfrmPesqDoacao.FormResize(Sender: TObject);
begin
  inherited;
//  Self.Height := 550;
//  SELF.Width := 1002;
end;

procedure TfrmPesqDoacao.FormShow(Sender: TObject);
begin
  inherited;
  LayOutPesq;
  BitPesquisar.Click;
end;

procedure TfrmPesqDoacao.frxpedidosBancoGetValue(const VarName: string; var Value: Variant);
begin
  inherited;
  if VarName = 'EMPRESA' then
    Value := DBInicio.Empresa.RAZAO
    else if VarName = 'Periodo' then
      Value := rxdatainicial.Text + ' à ' + rxdatafinal.Text;
end;

procedure TfrmPesqDoacao.LayOutPesq;
begin
     CBVendedor.Visible := False;
//   if (dbInicio.Empresa.sPadraoConsultaPedidoStatus = 'T') then
//      cbbFaturamento.ItemIndex := 0
//   else
//   if (dbInicio.Empresa.sPadraoConsultaPedidoStatus = 'F') then
//      cbbFaturamento.ItemIndex := 1
//   else
//   if (dbInicio.Empresa.sPadraoConsultaPedidoStatus = 'P') then
//      cbbFaturamento.ItemIndex := 2;

   GbCliente.Visible     := true;
   //GbCliente.Width       := 405;
   GbCliente.TabOrder    := 1;
   BitPesquisar.TabOrder := 2;
   CbPesq.Visible        := False;
   CbFantasia.Visible    := False;
   Edt_Lista.Width       := 38;
   Edt_Lista.MaxLength   := 5;

   gbCCusto.Visible := False;
   gbCFinanceira.Visible := False;

    if (Rad_Pedido_Compra.checked ) then
    begin
           GbCliente.Caption     := 'Informe a Ordem do Cliente';
           Edt_Lista.Text        := '';
           Edt_Lista.Width       := 54;
           Edt_Lista.MaxLength   := 7;
    end
    else
    if (Rad_Cliente.checked ) then
    begin
           GbCliente.Caption     := 'Informe o Cliente';
           CbPesq.Visible        := true;
           Edt_Lista.CLEAR;
    end
    else
    if (Rad_Fantasia.checked ) then
    begin

           cbFantasia.Clear;
           GbCliente.Caption     := 'Informe o Nome Fantasia do Cliente';
           CbFantasia.Visible    := true;
           Edt_Lista.CLEAR;
    end
    else
    if (Rad_Pedido.checked ) then
    begin
           GbCliente.Caption     := 'Informe o Nº do Pedido';
           Edt_Lista.Text        := '';
           Edt_Lista.Width       := 54;
           Edt_Lista.MaxLength   := 7;
    end
    else
    if (Rad_Vendedor.checked ) then
    begin
          cbVendedor.Clear;
           GbCliente.Caption     := 'Informe o Vendedor';
           CBVendedor.Visible    := True;
           Edt_Lista.Width       := 38;
           Edt_Lista.MaxLength   := 3;
           Edt_Lista.CLEAR;
    end
    else
    if (rdCCusto.checked ) then
    begin
           gbCCusto.Visible := True;
           gbCCusto.TabOrder    := 1;
           BitPesquisar.TabOrder := 2;
    end
    else
    if (rdCFinanceira.checked ) then
    begin
           gbCFinanceira.Visible := True;
           gbCFinanceira.TabOrder    := 1;
           BitPesquisar.TabOrder := 2;
    end;

    RxDataInicial.SetFocus;


end;

procedure TfrmPesqDoacao.Lista1Click(Sender: TObject);
var tcr: tFrmBaseTelaRelatorio;
fCabFiltro : STRING;
begin
  inherited;
  tcr:= tFrmBaseTelaRelatorio.Create(self);
    try
       if Rad_Cliente.Checked then
         fCabFiltro := 'Cliente : '+ CbFantasia.Text;

       tcr.TituloRelatorio:='Vendas Doação';
//       qBusco.Filtered := False;
//       qBusco.Filter := cdsBusco.Filter;
//       qbusco.Filtered := True;
       tcr.Query:=qSqlCdsPesq;
       tcr.LinhaTitulo1 := '' ;
        tcr.LinhaTitulo2 := fCabFiltro;
      // tcr.SelecionaTodos:=btnLimparClick;
       tcr.ImprimeAuto( SqlCdsPesq.IndexFieldNames );

//       tcr.ShowModal;
    finally
      FreeAndNil(tcr);
      qSqlCdsPesq.Filtered := False;
    end;
end;

procedure TfrmPesqDoacao.Lista2Click(Sender: TObject);
var indice : string;
begin
  inherited;
  try
    indice := '';
    Cursor := crHourGlass;
//    if SqlCdsPesq.IndexFieldNames= '' then
//       SqlCdsPesq.IndexFieldNames := 'ban_apelido; ped_dtentrada; cli_razao'
//    else
//    begin
//      indice := SqlCdsPesq.IndexFieldNames;
//      SqlCdsPesq.IndexFieldNames := 'ban_apelido;'+indice;
//    end;
    BuscaPedido('lista');
    TfrxPictureView(frxpedidosLista.FindObject('LogoEmpresa')).Picture.Assign(DBInicio.Empresa.LOGO);
    if rgSaida.ItemIndex = 0 then
      frxPedidosLista.ShowReport()
    else if rgSaida.ItemIndex = 1 then
    begin
      SaveDialog1.Filter := 'Arquivos PDF (*.pdf)|*.PDF';
      if SaveDialog1.Execute then
      begin
        if pos('.pdf', LowerCase(SaveDialog1.FileName)) = 0 then
          SaveDialog1.FileName := SaveDialog1.FileName + '.pdf';
        frxPDFExport1.FileName    := SaveDialog1.FileName;
        frxPDFExport1.ShowDialog  := False;
        frxPedidosLista.PrepareReport();
        if frxPedidosLista.Export(frxPDFExport1) then
          MessageDlg('Processo de exportação realizado com sucesso!', mtInformation, [mbOk], 0)
        else
          MessageDlg('Erro no processo de exportação', mtError, [mbOk], 0);
      end;
    end
    else if rgSaida.ItemIndex = 2 then
    begin
      SaveDialog1.Filter := 'Arquivos XLS (*.xls)|*.XLS';
      if SaveDialog1.Execute then
      begin
        if pos('.xls', LowerCase(SaveDialog1.FileName)) = 0 then
          SaveDialog1.FileName := SaveDialog1.FileName + '.xls';
        frxXLSExport1.FileName    := SaveDialog1.FileName;
        frxXLSExport1.ShowDialog  := False;
        frxpedidosLista.FindObject('PageHeader1').Visible := False;
        frxpedidosLista.FindObject('Footer1').Visible := False;
        frxpedidosLista.FindObject('PageFooter1').Visible := False;
        frxPedidosLista.PrepareReport();
        if frxPedidosLista.Export(frxXLSExport1) then
          MessageDlg('Processo de exportação realizado com sucesso!', mtInformation, [mbOk], 0)
        else
          MessageDlg('Erro no processo de exportação', mtError, [mbOk], 0);
        frxpedidosLista.FindObject('PageHeader1').Visible := True;
        frxpedidosLista.FindObject('Footer1').Visible := True;
        frxpedidosLista.FindObject('PageFooter1').Visible := True;
      end;
    end;

  finally
    SqlCdsPesq.IndexFieldNames := indice;
    Cursor := crDefault;
  end;

end;

procedure TfrmPesqDoacao.Pedidosporbanco1Click(Sender: TObject);
var indice : string;
begin
  inherited;
  try
    BuscaPedido('vendas');
    indice := '';
    Cursor := crHourGlass;
//    if SqlCdsPesq.IndexFieldNames= '' then
//       SqlCdsPesq.IndexFieldNames := 'ban_apelido; ped_dtentrada; cli_razao'
//    else
//    begin
//      indice := SqlCdsPesq.IndexFieldNames;
//      SqlCdsPesq.IndexFieldNames := 'ban_apelido;'+indice;
//    end;
    TfrxPictureView(frxpedidosBanco.FindObject('LogoEmpresa')).Picture.Assign(DBInicio.Empresa.LOGO);
    if rgSaida.ItemIndex = 0 then
      frxpedidosBanco.ShowReport()
    else if rgSaida.ItemIndex = 1 then
    begin
      SaveDialog1.Filter := 'Arquivos PDF (*.pdf)|*.PDF';
      if SaveDialog1.Execute then
      begin
        if pos('.pdf', LowerCase(SaveDialog1.FileName)) = 0 then
          SaveDialog1.FileName := SaveDialog1.FileName + '.pdf';
        frxPDFExport1.FileName    := SaveDialog1.FileName;
        frxPDFExport1.ShowDialog  := False;
        frxpedidosBanco.PrepareReport();
        if frxpedidosBanco.Export(frxPDFExport1) then
          MessageDlg('Processo de exportação realizado com sucesso!', mtInformation, [mbOk], 0)
        else
          MessageDlg('Erro no processo de exportação', mtError, [mbOk], 0);

      end;
    end
    else if rgSaida.ItemIndex = 2 then
    begin
      SaveDialog1.Filter := 'Arquivos XLS (*.xls)|*.XLS';
      if SaveDialog1.Execute then
      begin
        if pos('.xls', LowerCase(SaveDialog1.FileName)) = 0 then
          SaveDialog1.FileName := SaveDialog1.FileName + '.xls';
        frxXLSExport1.FileName    := SaveDialog1.FileName;
        frxXLSExport1.ShowDialog  := False;
        frxpedidosBanco.FindObject('PageHeader1').Visible := False;
        frxpedidosBanco.FindObject('Footer1').Visible := False;
        frxpedidosBanco.FindObject('PageFooter1').Visible := False;
        frxpedidosBanco.PrepareReport();
        if frxpedidosBanco.Export(frxXLSExport1) then
          MessageDlg('Processo de exportação realizado com sucesso!', mtInformation, [mbOk], 0)
        else
          MessageDlg('Erro no processo de exportação', mtError, [mbOk], 0);
        frxpedidosBanco.FindObject('PageHeader1').Visible := True;
        frxpedidosBanco.FindObject('Footer1').Visible := True;
        frxpedidosBanco.FindObject('PageFooter1').Visible := True;
      end;
    end;

  finally
    SqlCdsPesq.IndexFieldNames := indice;
    Cursor := crDefault;
  end;
end;

procedure TfrmPesqDoacao.qSqlCdsPesqPED_DTENTRADAGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  text := FormatDateTime('dd/mm/yyyy hh:nn',sender.Value)  ;

end;

procedure TfrmPesqDoacao.qSqlCdsPesqPED_VLPARCELAGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  text := FormatFloat('#.00', sender.Value);
end;

procedure TfrmPesqDoacao.qSqlCdsPesqPED_VLTOTAL_BRUTOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  text := FormatFloat('#.00', sender.Value);
end;

procedure TfrmPesqDoacao.Rad_ClienteClick(Sender: TObject);
begin
  inherited;
  LayOutPesq;
end;

procedure TfrmPesqDoacao.SqlCdsPesqPED_SITUACAOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
     if Sender.AsString = 'C' then
     begin
          Text := 'CANCELADO'
     end
     else
     if sender.AsString = 'P' then
     begin
          Text := 'FATURADO';
     end
     else
     if sender.AsString = 'F' then
     begin
          Text := 'À FATURAR';
     end
     else
     if sender.AsString = 'T' then
     begin
          Text := 'FATURADO';
     end

end;

end.
