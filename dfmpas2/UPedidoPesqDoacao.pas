unit UPedidoPesqDoacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBForm, Data.DBXFirebird, Data.FMTBcd, Vcl.StdCtrls, Vcl.Buttons, SgDbSeachComboUnit, Vcl.Mask, Vcl.ExtCtrls, Data.DB, Data.SqlExpr,
  ACBrEnterTab, ACBrBase, ACBrCalculadora, Datasnap.DBClient, Datasnap.Provider, Vcl.Grids, Vcl.DBGrids, uteis, InicioDB, RWFUNC, System.DateUtils, Vcl.DBCtrls, JvExStdCtrls, JvEdit, JvValidateEdit,
  JvExMask, JvToolEdit, BaseTelaRelatorioForm, frxClass, frxDBSet, Vcl.Menus, JvExControls, JvArrowButton, frxExportBIFF, frxExportPDF, frxExportXLS,
  frxExportBaseDialog;

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
    qSqlCdsPesqPED_UND_CONSUMIDORA: TIntegerField;
    SqlCdsPesqPED_UND_CONSUMIDORA: TIntegerField;
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

  private
   procedure BuscaPedido(ordem: string);
   procedure LayOutPesq;
  public
    { Public declarations }
  end;

var
  frmPesqDoacao: TfrmPesqDoacao;

implementation

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
//        'cast(pe.PED_DTENTRADA AS DATE) as PED_DTENTRADA, PE.REP_CODIGO, RP.REP_NOME, PE.PED_COMIS1, PE.PED_NUMERO_PED_CLIENTE,  '+
        'PE.PED_CONTATO_CLIENTE, PED_SITUACAO, PE.PED_OBSERVACAO, PE.BAN_CODIGO, PE.PED_PARCELA,  '+
        'PE.PED_INICIOPAG, PE.PED_TIPOPARCELA, PED_VLTOTAL_BRUTO,pe.FPG_REGISTRO, CLI_CELULAR,    '+
        'pe.emp_codigo, pe.PED_VLTOTAL_LIQ, PED_VLPARCELA, pe.PCX_CODIGO, RP.REP_NOME, CLI_FONE,  '+
        ' cl.cli_cgc, trim(cl.cli_razao) as cli_razao, cl.cli_fantasia, CL.CLI_ENDERE, CL.CLI_BAIRRO, CL.CLI_CEP, ' +
        ' cl.CLI_DTNASCIMENTO, ' +
        ' op.opv_descricao, ped_contato_cliente, CLI_UF, '+
        ' ((PED_COMIS1 * PED_VLTOTAL_LIQ)/100) AS VL_COMISSAO, cli_cidade,                        '+
        ' CASE WHEN PED_UND_CONSUMIDORA IS NOT NULL THEN BAN_APELIDO|| ''-'' || PED_UND_CONSUMIDORA '+
        ' ELSE BAN_APELIDO END BANCO, BAN_APELIDO, PED_UND_CONSUMIDORA '+
        ' FROM PED0000 PE                                                                         '+
        ' JOIN CLI0000 CL ON (CL.CLI_CODIGO = PE.CLI_CODIGO)                                      '+
        ' JOIN OPV0000 OP ON (OP.OPV_CODIGO = PE.OPV_CODIGO)                                      '+
        ' JOIN REP0000 RP ON (RP.REP_CODIGO = PE.REP_CODIGO)                                      '+
        ' JOIN BAN0000 BA ON (BA.BAN_CODIGO = PE.BAN_CODIGO)                                       ';


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

         campo := '';
          case DataTipo.ItemIndex of
          0: campo:='cast(pe.PED_DTENTRADA AS DATE)';
//          1: campo:='pe.PED_DTSAIDA';
          1: campo:='cast(T1.NF_EMISSAO as date)';
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

procedure TfrmPesqDoacao.dbGrPedidoDblClick(Sender: TObject);
begin
 // inherited;
   idRetorno := SqlCdsPesqPED_CODIGO.AsString;
   ModalResult:=mrOk;
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
