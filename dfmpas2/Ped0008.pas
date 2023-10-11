unit Ped0008;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, PesquisaClientesForm,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, Mask,  rxToolEdit, Provider,
  SqlExpr,SqlClientDataSet, DB, DBClient, DBLocal, DBLocalS, DBCtrls, RwFunc, ppProd, ClipBrd,
  ppClass, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppCtrls, ppModule,
  raCodMod, ppBands, ppVar, ppPrnabl, ppCache, ExtCtrls, OleServer, ComObj,
  ComboBoxRw, ppDesignLayer, ppParameter, SimpleDS, Data.DBXFirebird,
  SgDbSeachComboUnit, JvExMask, JvToolEdit, Data.FMTBcd;

type
  TFormConsultaPedido = class(TForm)
    SqlCdsClie: TSQLClientDataSet;
    SqlCdsRep: TSQLClientDataSet;
    SqlCdsRepREP_CODIGO: TStringField;
    SqlCdsRepREP_NOME: TStringField;
    GbDados: TGroupBox;
    DbedtFone: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    DbedtFax: TDBEdit;
    Label6: TLabel;
    DbedtEmail: TDBEdit;
    DbedtCidade: TDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    DbedtContato: TDBEdit;
    Label9: TLabel;
    DbedtCnpj: TDBEdit;
    SqlCdsPesq: TSQLClientDataSet;
    DsPesq: TDataSource;
    lblcnpj: TLabel;
    DbedtInsc: TDBEdit;
    Label10: TLabel;
    DbedtUF: TDBEdit;
    ppDBPesq: TppDBPipeline;
    ppRpPesq: TppReport;
    SqlCdsPesqPED_CODIGO: TStringField;
    SqlCdsPesqPRD_REFER: TStringField;
    SqlCdsPesqPRF_PRDDESCRI: TStringField;
    SqlCdsPesqPRF_QTDE: TFMTBCdField;
    SqlCdsPesqPRF_PRECO: TFMTBCdField;
    SqlCdsPesqPED_DTENTRADA: TSQLTimeStampField;
    SqlCdsPesqPED_DTSAIDA: TSQLTimeStampField;
    SqlCdsPesqPED_SITUACAO: TStringField;
    SqlCdsPesqCLI_CODIGO: TStringField;
    SqlCdsPesqREP_CODIGO: TStringField;
    SqlCdsPesqCLI_FONE: TStringField;
    SqlCdsPesqCLI_FAX: TStringField;
    SqlCdsPesqCLI_ENDERE: TStringField;
    SqlCdsPesqCLI_CIDADE: TStringField;
    SqlCdsPesqCLI_UF: TStringField;
    SqlCdsPesqCLI_RAZAO: TStringField;
    SqlCdsPesqCLI_EMAIL: TStringField;
    SqlCdsPesqCLI_CONTATO: TStringField;
    SqlCdsPesqCLI_CGC: TStringField;
    SqlCdsPesqCLI_INSC: TStringField;
    SqlCdsPesqREP_NOME: TStringField;
    SqlCdsClieCLI_CODIGO: TStringField;
    SqlCdsClieCLI_RAZAO: TStringField;
    SqlCdsPesqPED_SITUACAO_CC: TStringField;
    PanImprimir: TPanel;
    GroupBox4: TGroupBox;
    RadVisual: TRadioButton;
    BtnImprimir: TBitBtn;
    DBGridVendas: TDBGrid;
    BtnFechar: TBitBtn;
    SqlCdsPesqPRF_ITEMCOMIS: TFMTBCdField;
    SqlCdsPesqPRDL_LOTE: TStringField;
    SqlCdsPesqNF_NUM_NFE: TIntegerField;
    SqlCdsPesqNF_EMISSAO: TDateField;
    SqlCdsPesqPED_TOTAL_CC: TFMTBCDField;
    ppesquisa: TPanel;
    GbPesq: TGroupBox;
    Rad_Cliente: TRadioButton;
    Rad_Rep: TRadioButton;
    Rad_Ref: TRadioButton;
    Rad_lote: TRadioButton;
    GbPed: TGroupBox;
    Rad_todos: TRadioButton;
    Rad_Fatu: TRadioButton;
    Rad_Pend: TRadioButton;
    Panel7: TPanel;
    Panel10: TPanel;
    Panel13: TPanel;
    GbCliente: TGroupBox;
    Label48: TLabel;
    Label1: TLabel;
    Edt_Lista: TEdit;
    CbProjetoObra: TComboBoxRw;
    EdProjetoObraCodigo: TEdit;
    GroupBox1: TGroupBox;
    Label11: TLabel;
    Label12: TLabel;
    RxDataInicial: TJvDateEdit;
    RxDataFinal: TJvDateEdit;
    BitPesquisar: TBitBtn;
    BtnRel: TBitBtn;
    BtnSair: TBitBtn;
    BitCancelar: TBitBtn;
    chkMultiempresa: TCheckBox;
    SqlCdsPesqemp_codigo: TStringField;
    SqlCdsPesqVL_DESCONTO: TFMTBCDField;
    Label2: TLabel;
    EdLinhaCodigo: TEdit;
    cbLinha: TComboBoxRw;
    ppRpPesqLote: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLine3: TppLine;
    LBL_LT_EMPRESA: TppLabel;
    LBL_LT_LTITULO1: TppLabel;
    LBL_LT_LTITULO2: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppLine4: TppLine;
    ppLine6: TppLine;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLine7: TppLine;
    ppDBCalc3: TppDBCalc;
    ppLabel31: TppLabel;
    ppVariable1: TppVariable;
    ppDBCalc4: TppDBCalc;
    raCodeModule2: TraCodeModule;
    ppDesignLayers2: TppDesignLayers;
    ppDesignLayer2: TppDesignLayer;
    ppParameterList2: TppParameterList;
    SqlCdsPesqNTP_CFOP: TIntegerField;
    pp00HeaderBand2: TppHeaderBand;
    ppLine5: TppLine;
    LBL_00_EMPRESA: TppLabel;
    LBL_00_LTITULO1: TppLabel;
    LBL_00_LTITULO2: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppSystemVariable4: TppSystemVariable;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel3: TppLabel;
    ppLabel15: TppLabel;
    pp00DetailBand2: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText13: TppDBText;
    ppDBText3: TppDBText;
    ppDBText27: TppDBText;
    ppDBText2: TppDBText;
    pp00SummaryBand2: TppSummaryBand;
    ppLine8: TppLine;
    ppDBCalc1: TppDBCalc;
    ppLabel14: TppLabel;
    ppVarTotal: TppVariable;
    ppDBCalc2: TppDBCalc;
    raCodeModule1: TraCodeModule;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    qCli: TSQLQuery;
    cbClientes1: TSgDbSearchCombo;
    procedure MudaCorCampos(Sender: tObject);
    procedure Rad_ClienteClick(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure BtnSairClick(Sender: tObject);
    procedure Edt_ListaKeyPress(Sender: tObject; var Key: Char);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure BitPesquisarClick(Sender: tObject);
    procedure BitCancelarClick(Sender: tObject);
    procedure SqlCdsPesqCalcFields(DataSet: TDataSet);
    procedure Edt_ListaExit(Sender: tObject);
    procedure CbPesqClick(Sender: tObject);
    procedure MASCARACNPJ;
    procedure BtnRelClick(Sender: tObject);
    procedure pp00HeaderBand2BeforePrint(Sender: tObject);
    procedure RxDataInicialExit(Sender: tObject);
    procedure RxDataFinalExit(Sender: tObject);
    procedure BtnImprimirClick(Sender: tObject);
    procedure BtnFecharClick(Sender: tObject);
    procedure Rad_RepClick(Sender: tObject);
    procedure Rad_RefClick(Sender: tObject);
    procedure RxDataInicialClick(Sender: tObject);
    procedure RxDataFinalClick(Sender: tObject);
    procedure CbPesqChange(Sender: tObject);
    procedure DBGridVendasDrawColumnCell(Sender: tObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure EdProjetoObraCodigoExit(Sender: tObject);
    procedure CbProjetoObraChange(Sender: tObject);
    procedure CbProjetoObraExit(Sender: tObject);
    procedure FormCreate(Sender: tObject);
    procedure FormDestroy(Sender: TObject);
    procedure DBGridVendasTitleClick(Column: TColumn);
    procedure EdLinhaCodigoExit(Sender: TObject);
    procedure cbLinhaChange(Sender: TObject);
    procedure cbLinhaExit(Sender: TObject);
    procedure cbClientes1ButtonClick(Sender: TObject);
    procedure cbClientes1Select(Sender: TObject);
  private
    wSql1,wSql2,wSql3,wSql4:String;
    {campos}
    CampoEdit    : TEdit;
    CampoData    : TDateEdit;
    CampoCombo   : TComboBox;
    procedure LayOutPesq;
    procedure PreenchaCombo;
    procedure BuscaVendas;
    procedure Mensagens;
    procedure BotaoPesquisar;
    procedure BuscaCodigo;
    procedure PreencheComboBusca;
  protected
  public
        procedure BotoesAcesso;
  end;

var
  FormConsultaPedido: TFormConsultaPedido;

implementation

uses DataCad, Men0001, GImpPedi, uteis, ufrmpreviewrb, iniciodb;

{$R *.dfm}

procedure TFormConsultaPedido.MudaCorCampos(Sender: tObject);
begin
  {CampoEdit :TEdit}
   if Assigned(CampoEdit) then
      begin
         CampoEdit.color := clWindow;
      end;
   if ActiveControl is TEdit then
      begin
         if TEdit(ActiveControl).color = $00D7D7D7 then
            begin
               exit;
            end;
         TEdit(ActiveControl).color := $0080FFFF;
         CampoEdit := TEdit(ActiveControl);
      end
   else
      begin
         CampoEdit := nil;
      end;
   {CampoComboBox}
   if Assigned(CampoCombo) then
      begin
          CampoCombo.color := clWindow;
      end;
   if ActiveControl is TComboBox then
      begin
          if TComboBox(ActiveControl).color = $00D7D7D7 then
             begin
                 exit;
             end;
          TComboBox(ActiveControl).color := $0080FFFF;
          CampoCombo := TComboBox(ActiveControl);
      end
   else
      begin
          CampoCombo := nil;
      end;
  {CampoData  :TDateEdit}
   if Assigned(CampoData) then
      begin
         CampoData.color := clWindow;
      end;
   if ActiveControl is TDateEdit then
      begin
         TDateEdit(ActiveControl).color := $0080FFFF;
         CampoData := TDateEdit(ActiveControl);
      end
   else
      begin
         CampoData := nil;
      end;
end;

procedure TFormConsultaPedido.LayOutPesq;
begin
    Edt_Lista.Text :=  '';
    if (Rad_Cliente.checked ) then
       begin
           //GbCliente.Caption   := 'Cliente / C.Custo:';
           Label1.Caption := 'Cliente:';
           cbClientes1.OnButtonClick := cbClientes1ButtonClick;
           cbClientes1.Visible      := true;
           Edt_Lista.Width     := 38;
           Edt_Lista.MaxLength := 5;
           preenchaCombo;
           //Edt_Lista.SetFocus;
       end;
    if (Rad_Rep.checked ) then
       begin
           //GbCliente.Caption   := 'Vendedor / C.Custo:';
           Label1.Caption := 'Vendedor:';
           cbClientes1.Visible      := true;
           cbClientes1.OnButtonClick := nil;
           Edt_Lista.Width     := 38;
           Edt_Lista.MaxLength := 3;
           PreenchaCombo;
          // Edt_Lista.SetFocus;
       end;
    if Rad_Ref.checked  then
       begin
           //GbCliente.Caption   := 'Referência / C.Custo:';
           Label1.Caption := 'Refer:';
           cbClientes1.Visible      := False;
           Edt_Lista.Width     := 150;
           Edt_Lista.MaxLength := 20;
           //Edt_Lista.SetFocus;
       end;
       if Rad_lote.checked  then
       begin
           //GbCliente.Caption   := 'Referência / C.Custo:';
           Label1.Caption := 'Lote:';
           cbClientes1.Visible      := False;
           Edt_Lista.Width     := 150;
           Edt_Lista.MaxLength := 30;
           //Edt_Lista.SetFocus;
       end;
end;

procedure TFormConsultaPedido.PreenchaCombo;

begin
    if Rad_Cliente.checked  then
       begin
         cbClientes1.AutoF8ColumnsTitulo := '';
         cbClientes1.AutoF8WinTitulo := '';
         cbClientes1.EmptyText := '';
         cbClientes1.LookupDispl := 'T1.CLI_RAZAO';
         cbClientes1.LookupKeyField := 't1.cli_codigo';
         cbClientes1.LookupOrderBy := 't1.cli_razao';
         cbClientes1.LookupSelect := 't1.cli_valorfrete,t1.cli_valordespesas,t1.cli_codigo,t1.cli_tabpreco,t1.cli_razao,t1.cli_cgc,t1.cli_insc, ' +
                                     't2.cid_cidade,t2.cid_estado,t1.cli_modo_trib_st,cn1.cnae_carga_trib_media,t1.pcx_codigo,t1.cli_consfinal, ' +
                                     ' t1.CLI_REGIME_TRIBUTARIO,t1.OPE_CODIGO,t1.pcl_codigo,t3.pcl_nome,t1.REP_CODIGO,t1.TRP_CODIGO,cli_fone, ' +
                                     't1.VEND_INTERNO_CODIGO, FPG_REGISTRO, CLI_FRETE, CLI_CONSU_PROPRIO, cori_codigo';
         cbClientes1.LookupTable := 'cli0000 t1 left join cid0000 t2 on (t2.cid_codigo = t1.cid_codigo) ' +
                                    '  LEFT JOIN cnae CN1 ON (CN1.cnae_registro = t1.cnae_registro) ' +
                                    ' left join pcl0000 t3 on (t3.pcl_codigo = t1.pcl_codigo)';
         cbClientes1.LookupTableShare := 'CLIENTES';
         cbClientes1.WherePersonalizado := '';
         cbClientes1.Refresh;
       end;
    if Rad_Rep.checked  then
       begin

         cbClientes1.AutoF8ColumnsTitulo := 'Código, Nome';
         cbClientes1.AutoF8WinTitulo := 'Vendedores';
         cbClientes1.EmptyText := '';
         cbClientes1.LookupDispl := 'REP_NOME';
         cbClientes1.LookupKeyField := 'REP_CODIGO';
         cbClientes1.LookupOrderBy := 'REP_NOME';
         cbClientes1.LookupTable := 'REP0000';
         cbClientes1.LookupTableShare := 'REPRESENTANTES';
         cbClientes1.WherePersonalizado := ' WHERE REP_SITUACAO = ''A'' ';
         cbClientes1.LookupSelect := 'REP_CODIGO, REP_NOME';
         cbClientes1.Refresh;
       end;
   cbClientes1.idRetorno := '';
end;

procedure TFormConsultaPedido.FormShow(Sender: tObject);
begin
  //  Screen.OnActiveControlChange := MudaCorCampos;
  Rad_Cliente.Checked := true;
//  PreenchaCombo;
  Edt_Lista.SetFocus;
  BuscaVendas;
  MascaraCNPJ;
end;

procedure TFormConsultaPedido.BtnSairClick(Sender: tObject);
begin
    Close
end;

procedure TFormConsultaPedido.Edt_ListaKeyPress(Sender: tObject;
  var Key: Char);
begin
    if (Rad_Cliente.checked ) or (Rad_Rep.checked ) then
        begin
            if not (key in ['0'..'9',#8]) then
               begin
                   //beep;
                   Key := #0;
               end;
        end;
end;

procedure TFormConsultaPedido.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
    Screen.OnActiveControlChange := NIL;
    Screen.Cursor := crHourGlass;
    try
      SqlCdsPesq.PacketRecords := -1;
      SqlCdsClie.close;
      SqlCdsRep.Close;
      SqlCdsPesq.Close;
    except on E:EDataBaseError do
        uteis.erro  (pchar('Erro ao fechar as tabelas !'+e.message));
    end;
    Screen.Cursor := crDefault;
    Action := CaFree;
end;

procedure TFormConsultaPedido.BitPesquisarClick(Sender: tObject);
begin
  // forçcar o merge
//  if (Edt_Lista.Text<> '') or  (RxDataInicial.Text <> '  /  /    ') OR (EdProjetoObraCodigo.TEXT<>'') then
   begin
     if (RxDataInicial.Text <> '  /  /    ') and (RxDataFinal.Text = '  /  /    ') then
       GeraException('A data final precisa ser preenchida.') ;

      Screen.Cursor  := Crhourglass;
      try
       BtnRel.Enabled := True;
       BuscaVendas;
      finally
        Screen.Cursor  := CrDefault;
      end;
      SqlCdsPesq.Open;
      if SqlCdsPesq.IsEmpty then
      begin
        if not PanImprimir.Visible then
        begin
             if Rad_Cliente.Checked then
                uteis.aviso('Não foram encontrado pedido(s) para o cliente informado !')
             else
             if Rad_Rep.Checked then
                uteis.aviso('Não foram encontrado pedido(s) para o vendedor informado !')
             else
                uteis.aviso('Não foram encontrado pedido(s) para o produto informado !');
             BitCancelar.Click; //Caso digitou qualquer coisa e nao encontrou.
        end;
      end;
   end
//  else
//   begin
       //uteis.aviso('Informe dados para pesquisa !');
//       BitCancelar.Click;
//       Edt_Lista.SetFocus;
//   end;
end;

procedure TFormConsultaPedido.BitCancelarClick(Sender: tObject);
begin
    Screen.Cursor  := crHourGlass;
    BtnRel.Enabled := False;
    Edt_Lista.Text := '';
    cbClientes1.idRetorno    := '';
    RxDataInicial.Text := '';
    RxDataFinal.Text   := '';
    BotaoPesquisar;
    Edt_Lista.SetFocus;
    Screen.Cursor  := crDefault;
end;

procedure TFormConsultaPedido.BuscaVendas;
Var
wSelect, wOrdem, wCCust, wLinha : String;
begin
       wSelect :=  ' where PRF_REGISTRO_VINCULADO = 0 ';
       if RxDataInicial.Text <> '  /  /    ' then
       begin
         {filtra pelo periodo obrigatorio}
         if Rad_Fatu.Checked then
         begin
           wSelect := wSelect+ ' and NF_EMISSAO between '''+DataAmericana(RxDataInicial.Text)+''' AND '''+DataAmericana(RxDataFinal.Text)+'''';
           wOrdem  := 'NF_EMISSAO,NF.NF_NUM_NFE ';
         end
         Else
         begin
           wSelect :=wSelect+ 'and  PED_DTENTRADA between '''+DataAmericana(RxDataInicial.Text)+''' AND '''+DataAmericana(RxDataFinal.Text)+'''';
           wOrdem  := 'PED_DTENTRADA';
         end;
       end;
    {Busca pelo Cliente}
    if Rad_Cliente.checked  then
       begin
           if cbClientes1.idRetorno <> '' then
              begin
                  if RxDataInicial.Text <> '  /  /    ' then
                     wSelect := wSelect + ' AND P0.CLI_CODIGO = '''+Edt_Lista.Text +''''
                  else if Edt_Lista.Text <> '00000' then
                     wSelect := ' where P0.CLI_CODIGO = '''+Edt_Lista.Text +''''
                  else
                    wSelect := ' where 1=1 ';
                  if wOrdem <> '' then
                    wOrdem := wOrdem + ', ';
                  wOrdem  := wOrdem+ ' P0.CLI_CODIGO';
                end;
       end;
    {Busca pelo Representante}
    if Rad_Rep.checked  then
       begin
           if cbClientes1.idRetorno <> '' then
              begin
                  if RxDataInicial.Text <> '  /  /    ' then
                     wSelect := wSelect + ' AND P0.REP_CODIGO = '''+Edt_Lista.Text +''''
                  else
                     wSelect := ' where P0.REP_CODIGO = '''+Edt_Lista.Text +'''';
                  if wOrdem <> '' then
                    wOrdem := wOrdem + ', ';
                  wOrdem  := wOrdem+'P0.REP_CODIGO';
              end;
       end;
    {Busca pela Referência do Produto}
    if Rad_Ref.checked  then
       begin
           if Edt_Lista.Text <> '' then
              begin
                  if RxDataInicial.Text <> '  /  /    ' then
                     wSelect := wSelect + ' AND P1.PRD_REFER  = '''+Edt_Lista.Text +''''
                  else
                     wSelect :=' where P1.PRD_REFER  = '''+Edt_Lista.Text +'''';
                  if wOrdem <> '' then
                    wOrdem := wOrdem + ', ';
                  wOrdem  :=  wOrdem+ 'P1.PRD_REFER';
              end;
       end;

      {Busca pelo lote vendido do Produto}
    if Rad_lote.checked  then
       begin
           if Edt_Lista.Text <> '' then
              begin
                  if RxDataInicial.Text <> '  /  /    ' then
                     wSelect := wSelect + ' AND L1.PRDL_LOTE  = '''+Edt_Lista.Text +''''
                  else
                     wSelect :=' where L1.PRDL_LOTE  = '''+Edt_Lista.Text +'''';
                  if wOrdem <> '' then
                    wOrdem := wOrdem + ', ';
                  wOrdem  :=  wOrdem+' L1.PRDL_LOTE';
              end;
       end;
    if Rad_Fatu.checked  then
        wSelect := wSelect + ' AND P0.PED_SITUACAO in (''T'',''P'')  ';
    if Rad_Pend.checked  then
        wSelect := wSelect + ' AND P0.PED_SITUACAO IN (''F'',''P'')';
    if Rad_todos.Checked then
       wSelect := wSelect + ' AND (P0.PED_SITUACAO <> ''C'') ' ;

    //
    // buscas pedidos do representante logado ou todos
    if (dbInicio.Empresa.VisualizaPedios_P) and (dbInicio.Empresa.fCODIGO_REPRES <> '000') then
        wSelect := wSelect + ' AND ( R1.REP_CODIGO ='+QuotedStr(dbInicio.Empresa.fCODIGO_REPRES) +
                                   ' or P0.REP_CODIGO_INTERNO = '+QuotedStr(dbInicio.Empresa.fCODIGO_REPRES) +')';

    wCCust := '';
    if EdProjetoObraCodigo.text<>'' then
      wCCust := 'AND (P0.PCX_CODIGO='+QUOTEDSTR(EdProjetoObraCodigo.text)+')';
    wLinha := '';
    if EdLinhaCodigo.text<>'' then
      wCCust := 'AND (LIN.LIN_CODIGO='+QUOTEDSTR(EdLinhaCodigo.text)+')';

    try
      wSql1 := 'Select it.NTP_CFOP, P0.emp_codigo, NF.NF_NUM_NFE, NF.NF_EMISSAO, P1.PED_CODIGO,P1.PRD_REFER,P1.PRF_PRDDESCRI,COALESCE (it.NF_QTDE,(P1.PRF_QTDE-p1.PRF_QTDEFAT))  AS PRF_QTDE, prf_preco, '+
               ' CASE WHEN it.NF_QTDE IS NOT NULL  AND NF_IDESCTO1 > 0 THEN NF_PRECO- (NF_IDESCTO1/it.NF_QTDE) ELSE P1.PRF_PRECO END  AS VL_DESCONTO, ' +
               ' CASE WHEN it.NF_QTDE IS NOT NULL  AND NF_IDESCTO1 > 0 THEN ((it.NF_QTDE*NF_PRECO)-COALESCE(NF_IDESCTO1,0))  ELSE PRF_PRECO*COALESCE (it.NF_QTDE,(P1.PRF_QTDE-p1.PRF_QTDEFAT)) END PED_TOTAL_CC,' +
               '  P1.PRF_ITEMCOMIS,P0.PED_DTENTRADA,P0.PED_DTSAIDA,P0.PED_SITUACAO,P0.CLI_CODIGO,P0.REP_CODIGO,C1.CLI_FONE,';
      wSql2 := 'C1.CLI_FAX,C1.CLI_ENDERE,C1.CLI_CIDADE,C1.CLI_UF,C1.CLI_RAZAO,C1.CLI_EMAIL,C1.CLI_CONTATO,C1.CLI_CGC,C1.CLI_INSC,R1.REP_NOME,L1.PRDL_LOTE from PED_IT01 P1 ';
      wSql3 := ' LEFT JOIN PRD0000 PRODUTO ON (P1.PRD_CODIGO = PRODUTO.PRD_CODIGO) ' +
               iif(EdLinhaCodigo.Text <> '','','LEFT ')+
               ' JOIN PRD_LINHA LIN ON (PRODUTO.LIN_CODIGO = LIN.LIN_CODIGO) ' + WLinha +
               ' JOIN PED0000 P0 ON (P1.PED_CODIGO = P0.PED_CODIGO) '+WCCust+' AND (P1.EMP_CODIGO = P0.EMP_CODIGO) JOIN opv0000 OPV ON (OPV.opv_codigo = P0.opv_codigo AND OPV.OPV_VENDA = ''S'')'+
               ' JOIN CLI0000 C1 ON (P0.CLI_CODIGO = C1.CLI_CODIGO) '+
               iif(Rad_Fatu.Checked,'','LEFT ')+
               ' JOIN NF0001 NF ON (NF.PED_CODIGO = P0.PED_CODIGO AND NF.EMP_CODIGO = P0.EMP_CODIGO AND nf_cancelada = ''N'' ) '+
               iif(Rad_Fatu.Checked,'','LEFT ')+
               ' JOIN NF_IT01 it ON (it.PED_CODIGO = p1.PED_CODIGO AND it.NF_IT_NOTANUMER = nf.NF_NOTANUMBER AND it.PRF_REGISTRO = p1.PRF_REGISTRO  ) '+
               ' LEFT JOIN REP0000 R1 ON (P0.REP_CODIGO = R1.REP_CODIGO) LEFT JOIN PRD_LOTE L1 ON (L1.PRDL_REGISTRO = P1.PRDL_REGISTRO) ';
      SqlCdsPesq.Close;
      //SqlCdsPesq.PacketRecords := 5;

      if wOrdem = '' then
        wOrdem := 'NF_EMISSAO';

      if chkMultiempresa.Checked then
        SqlCdsPesq.CommandText :=  wSql1+wSql2+wSql3+wSelect+'order by '+wOrdem
      else
        SqlCdsPesq.CommandText := SqlDef('PEDIDOS',wSql1+wSql2+wSql3,wSelect,wOrdem,'P0.');

      if DBInicio.IsDesenvolvimento then
        CopyToClipBoard(SqlCdsPesq.CommandText);

      SqlCdsPesq.Open;

//      SqlCdsPesq.Filter := ' prf_preco > VL_DESCONTO';
//      SqlCdsPesq.Filtered := True;
     except on E:EdataBaseError do
         uteis.erro  (Pchar('Erro ao abrir as tabelas !'+e.message));
     end;
    screen.cursor := crDefault;
end;

procedure TFormConsultaPedido.cbClientes1ButtonClick(Sender: TObject);
var
  tcr: tFrmPesquisaClientes;
begin
  inherited;
  PreenchaCombo;
  if Rad_Cliente.checked  then
         begin
            tcr:= tFrmPesquisaClientes.Create(self);
            try
                tcr.ShowModal;
                if tcr.modalresult = mrok then
                begin
                   cbClientes1.idRetorno := tcr.IDRetorno;
                   // Edt_Lista.Text := tcr.IDRetorno;
                end;
            finally
                 FreeAndNil(tcr);
            end;
         end;




end;

procedure TFormConsultaPedido.cbClientes1Select(Sender: TObject);
begin
  if cbClientes1.idRetorno <> '' then
    Edt_Lista.Text := cbClientes1.idRetorno;
  BitPesquisar.Click
end;

procedure TFormConsultaPedido.cbLinhaChange(Sender: TObject);
begin
   EdLinhaCodigo.Text := CbLinha.CodigoLista;

end;

procedure TFormConsultaPedido.cbLinhaExit(Sender: TObject);
begin
  if (cbLinha.CodigoLista = '') or (cbLinha.Text = '') then
  begin
     cbLinha.Text := '';
     EdLinhaCodigo.Text := '';
  end
  else
  begin
     EdLinhaCodigo.Text := CbLinha.CodigoLista;
  end;
end;

procedure TFormConsultaPedido.Mensagens;
begin
    if Rad_Cliente.checked  then
       begin
           if Edt_Lista.Text = '' then
              uteis.aviso('Informe o Código do Cliente !')
           else
              uteis.aviso('Código Cliente não encontrado !');
       end;
    if Rad_Rep.checked  then
      begin
          if Edt_Lista.Text = '' then
             uteis.aviso('Informe a Nome do Representante !')
          else
             uteis.aviso('Representante não encontrado !');
      end;
    if Rad_Ref.checked  then
      begin
          if Edt_Lista.Text = '' then
             uteis.aviso('Informe a Referência !')
          else
             uteis.aviso('Referência não encontrado !');
      end;
end;


procedure TFormConsultaPedido.BotaoPesquisar;
begin
    if (Edt_Lista.Text <> '') or (cbClientes1.idRetorno <> '') or (RxDataInicial.Text <> '  /  /    ') then
       begin
           BitPesquisar.Visible := False;
           BitCancelar .Visible := True;
       end
    else
       begin
           BitPesquisar.Visible := True;
           BitCancelar .Visible := False;
       end;
end;

procedure TFormConsultaPedido.BotoesAcesso;
begin
     if assigned(FormConsultaPedido) then
     begin
       BtnRel.Enabled := Uteis.AcessoUsuario('ComercialConsulta Pedidos/Vendas/Produtos',DBInicio.Usuario.CODIGO,FormConsultaPedido).Relatorio;
     end;
end;

procedure TFormConsultaPedido.SqlCdsPesqCalcFields(DataSet: TDataSet);
begin
//    SqlCdsPesqPED_TOTAL_CC.AsCurrency := (SqlCdsPesqPRF_PRECO.AsCurrency * SqlCdsPesqPRF_QTDE.AsCurrency);
    SqlCdsPesqPED_SITUACAO_CC.AsString:= IIF(SqlCdsPesqPED_SITUACAO.AsString = 'T','Faturado Total',IIF(SqlCdsPesqPED_SITUACAO.AsString = 'F','À Faturar',iif(SqlCdsPesqPED_SITUACAO.AsString = 'P','Faturado Parcial','')));
end;

procedure TFormConsultaPedido.PreencheComboBusca;
begin
{
      if Rad_Cliente.checked  then
       begin
           Edt_Lista.Text := StrZero(Edt_Lista.Text,Edt_Lista.MaxLength);
           try
             if SqlCdsClie.Locate('CLI_CODIGO',Edt_Lista.Text,[]) = true then
                begin
                    CbPesq.Text := SqlCdsClieCLI_RAZAO.AsString;
                end
             else
                begin
                    Edt_Lista.Text := '';
                    CbPesq.SetFocus;
                    CbPesq.SelectAll;
                end;
           except on E:EdataBaseError do
              uteis.erro  (pchar('Erro ao localizar o codigo do cliente !'+e.message));
           end;
       end;
       if Rad_Rep.checked  then
       begin
           Edt_Lista.Text := StrZero(Edt_Lista.Text,Edt_Lista.MaxLength);
           try
             if SqlCdsRep.Locate('REP_CODIGO',Edt_Lista.Text,[]) = true then
                begin
                    CbPesq.Text := SqlCdsRepREP_NOME.AsString;
                end
             else
                begin
                    Edt_Lista.Text := '';
                    CbPesq.SetFocus;
                    CbPesq.SelectAll;
                end;
           except on E:EdataBaseError do
              uteis.erro  (pchar('Erro ao localizar o codigo do representante !'+e.message));
           end;
       end;
       }
end;


procedure TFormConsultaPedido.Edt_ListaExit(Sender: tObject);
begin
    cbClientes1.idRetorno := Edt_Lista.Text;
    PreencheComboBusca;
end;

procedure TFormConsultaPedido.CbPesqClick(Sender: tObject);
begin
    //
{
    if Rad_Cliente.checked  then
       begin
           if CbPesq.ItemIndex <> 0 then
              begin
                  try
                    if SqlCdsClie.Locate('CLI_RAZAO',CbPesq.text,[]) = true then
                       begin
                           Edt_Lista.Text := SqlCdsClieCLI_CODIGO.AsString;
                       end
                    else
                       begin
                           uteis.aviso('Cliente não encontrado !');
                           CbPesq.Text := '';
                           CbPesq.SetFocus;
                           CbPesq.SelectAll;
                       end;
                  except on E:EdataBaseError do
                     uteis.erro  (pchar('Erro ao localizar o cliente !'+e.message));
                  end;
              end
           else
              begin
                 Edt_Lista.Text := '';
                 CbPesq.Text    := '';
              end;
       end;
    if Rad_Rep.checked  then
       begin
           if CbPesq.ItemIndex <> 0 then
              begin
                  try
                    if SqlCdsRep.Locate('REP_NOME',CbPesq.Text,[]) = true then
                       begin
                           Edt_Lista.Text := SqlCdsRepREP_CODIGO.AsString;
                       end
                    else
                       begin
                           uteis.aviso('Representante não encontrado !');
                           CbPesq.Text := '';
                           CbPesq.SetFocus;
                           CbPesq.SelectAll;
                       end;
                  except on E:EdataBaseError do
                     uteis.erro  (pchar('Erro ao localizar o representante !'+e.message));
                  end;
             end
          else
             begin
                 Edt_Lista.Text := '';
                 CbPesq.Text    := '';
             end;
       end;
         }
end;

procedure TFormConsultaPedido.MASCARACNPJ;
begin
    If Length(SqlCdsPesqCLI_CGC.AsString) =14  then
       begin
           SqlCdsPesqCLI_CGC.EditMask := '99.999.999/9999-99;0;_';
           lblcnpj.Caption := 'CNPJ:';
       end
    else
       // pessoa fisica
       begin
           SqlCdsPesqCLI_CGC.EditMask := '999.999.999-99;0;_';
           lblcnpj.Caption := 'CPF:';
       end;
end;

procedure TFormConsultaPedido.BtnRelClick(Sender: tObject);
Var
  VExcel : Variant;
  Linha : Integer;

begin
    try
      {Desabilitar}
      GbPesq.Enabled      := False;
      GbCliente.Enabled   := False;
      GbDados.Enabled     := false;
      SqlCdsPesq.DisableControls;
      Screen.Cursor := crHourGlass;
    {Habilita Impressao}

           BuscaVendas;
           if  chkMultiempresa.Checked then
           begin
              LBL_00_LTITULO1.Caption := 'Relatório de Vendas / Rastreabilidade - Multiempresa';
              LBL_LT_LTITULO1.Caption := 'Relatório de Vendas / Rastreabilidade - Multiempresa';
           end
           else
           begin
              LBL_00_LTITULO1.Caption := 'Relatório de Vendas / Rastreabilidade';
              LBL_LT_LTITULO1.Caption := 'Relatório de Vendas / Rastreabilidade';
           end;

           LBL_00_LTITULO2.Caption := 'Periódo de: '+RxDataInicial.Text+' até '+RxDataFinal.Text;
           LBL_LT_LTITULO2.Caption := 'Periódo de: '+RxDataInicial.Text+' até '+RxDataFinal.Text;

           if Rad_todos.checked  then
           begin
              LBL_00_LTITULO2.Caption := LBL_00_LTITULO2.Caption + ' Todos os Pedidos';
              LBL_LT_LTITULO2.Caption := LBL_00_LTITULO2.Caption + ' Todos os Pedidos';
           end;
           if Rad_Fatu.checked  then
           begin
              LBL_00_LTITULO2.Caption := LBL_00_LTITULO2.Caption + ' Pedidos Faturado(s)';
              LBL_LT_LTITULO2.Caption := LBL_00_LTITULO2.Caption + ' Pedidos Faturado(s)';
           end;
           if Rad_Pend.checked  then
           begin
              LBL_00_LTITULO2.Caption := LBL_00_LTITULO2.Caption + ' Pedidos Pendente(s)';
              LBL_LT_LTITULO2.Caption := LBL_00_LTITULO2.Caption + ' Pedidos Pendente(s)';
           end;
           if Rad_Cliente.checked  then
              begin
                  if cbClientes1.idRetorno <> '' then
                  begin
                     LBL_00_LTITULO2.Caption := LBL_00_LTITULO2.Caption + ' do Cliente: '+Edt_Lista.Text+' '+cbClientes1.Text;
                     LBL_LT_LTITULO2.Caption := LBL_00_LTITULO2.Caption + ' do Cliente: '+Edt_Lista.Text+' '+cbClientes1.Text;
                  end;
              end;
           if Rad_Rep.checked  then
              begin
                  if cbClientes1.idRetorno <> '' then
                  begin
                     LBL_00_LTITULO2.Caption := LBL_00_LTITULO2.Caption + ' do Vendedor: '+Edt_Lista.Text+' '+cbClientes1.Text;
                     LBL_LT_LTITULO2.Caption := LBL_00_LTITULO2.Caption + ' do Vendedor: '+Edt_Lista.Text+' '+cbClientes1.Text;
                  end;
              end;
           if Rad_Ref.checked  then
              begin
                  if Edt_Lista.Text <> '' then
                  begin
                     LBL_00_LTITULO2.Caption := LBL_00_LTITULO2.Caption + ' Ref. ao produto: '+Edt_Lista.Text;
                     LBL_LT_LTITULO2.Caption := LBL_00_LTITULO2.Caption + ' Ref. ao produto: '+Edt_Lista.Text;
                  end;
              end;

           if EdProjetoObraCodigo.text<>'' then
           begin
             LBL_00_LTITULO2.Caption := LBL_00_LTITULO2.Caption + ' / C.Custo: '+EdProjetoObraCodigo.text;
             LBL_LT_LTITULO2.Caption := LBL_00_LTITULO2.Caption + ' / C.Custo: '+EdProjetoObraCodigo.text;
           end;


           if SqlCdsPesq.IsEmpty = false then
              begin
                  ppRpPesq.DeviceType := 'Screen';
                  if DBInicio.GetParametroSistema('PMT_LOTE_RASTREABILIDADE') = 'S' then
                    RBuilderPreview(ppRpPesqLote)
                  else
                    RBuilderPreview(ppRpPesq);
              end
           else
              begin
                  uteis.aviso('Deve informar um periódo !');
                  RxDataInicial.SetFocus;
              end;


    finally
      GbPesq.Enabled      := True;
      GbCliente.Enabled   := True;

      GbDados.Enabled     := True;
      SqlCdsPesq.EnableControls;
      Screen.Cursor := crDefault;
    end;
   // PanImprimir.Visible := true;
end;

procedure TFormConsultaPedido.BuscaCodigo;
Var
  wCodigo : String;
begin
{
    if Rad_Cliente.checked  then
       begin
           wCodigo             := cbClientes1.idRetorno;
           if SqlCdsClie.Locate('CLI_CODIGO',wCodigo,[])= true then
              begin
                  Edt_Lista.Text      := SqlCdsClieCLI_CODIGO.AsString;
                  CbxCodigo.ItemIndex := CbPesq.ItemIndex;
                  CbPesq.Text         := SqlCdsClieCLI_RAZAO.AsString;
                  MascaraCNPJ;
              end;
       end;
    if Rad_Rep.checked  then
       begin
           CbxCodigo.ItemIndex := CbPesq.ItemIndex;
           wCodigo             := Copy(CbxCodigo.Text,0,3);
           if SqlCdsRep.Locate('REP_CODIGO',wCodigo,[])= true then
              begin
                  Edt_Lista.Text      := SqlCdsRepREP_CODIGO.AsString;
                  CbxCodigo.ItemIndex := CbPesq.ItemIndex;
                  CbPesq.Text         := SqlCdsRepREP_NOME.AsString;
                  MascaraCNPJ;
              end;
       end;
    }
end;

procedure TFormConsultaPedido.pp00HeaderBand2BeforePrint(Sender: tObject);
begin
    LBL_00_EMPRESA.Caption := dbInicio.Empresa.RAZAO;
end;

procedure TFormConsultaPedido.RxDataInicialExit(Sender: tObject);
begin
    if RxDataInicial.text <> '  /  /    ' then
       begin
           if not TestaDataStr(RxDataInicial.Text) then
              begin
                  RxDataInicial.Date := Now;
                  RxDataInicial.setfocus;
              end;
       end;
end;

procedure TFormConsultaPedido.RxDataFinalExit(Sender: tObject);
begin
   if RxDataFinal.text <> '  /  /    ' then
       begin
           if not TestaDataStr(RxDataFinal.Text) then
              begin
                  RxDataFinal.Date := Now;
                  RxDataFinal.setfocus;
              end;
       end;
    if RxDataFinal.Date < RxDataFinal.Date then
       begin
           uteis.aviso('Data Final menor que Data Inicial !');
           RxDataFinal.SetFocus;
       end;
end;

procedure TFormConsultaPedido.BtnImprimirClick(Sender: tObject);
Var
  VExcel : Variant;
  Linha : Integer;
begin
    if RadVisual.checked  then
       begin
           BuscaVendas;
           LBL_00_LTITULO1.Caption := 'Relatório de Pedidos<->Vendas<->Produtos';
           LBL_00_LTITULO2.Caption := 'Periódo de: '+RxDataInicial.Text+' até '+RxDataFinal.Text;
           if Rad_todos.checked  then
              LBL_00_LTITULO2.Caption := LBL_00_LTITULO2.Caption + ' Todos os Pedidos';
           if Rad_Fatu.checked  then
              LBL_00_LTITULO2.Caption := LBL_00_LTITULO2.Caption + ' Pedidos Faturado(s)';
           if Rad_Pend.checked  then
              LBL_00_LTITULO2.Caption := LBL_00_LTITULO2.Caption + ' Pedidos Pendente(s)';
           if Rad_Cliente.checked  then
              begin
                  if cbClientes1.idRetorno <> '' then
                     LBL_00_LTITULO2.Caption := LBL_00_LTITULO2.Caption + ' do Cliente: '+Edt_Lista.Text+' '+cbClientes1.Text;
              end;
           if Rad_Rep.checked  then
              begin
                  if cbClientes1.idRetorno <> '' then
                     LBL_00_LTITULO2.Caption := LBL_00_LTITULO2.Caption + ' do Vendedor: '+Edt_Lista.Text+' '+cbClientes1.Text;
              end;
           if Rad_Ref.checked  then
              begin
                  if Edt_Lista.Text <> '' then
                     LBL_00_LTITULO2.Caption := LBL_00_LTITULO2.Caption + ' Ref. ao produto: '+Edt_Lista.Text;
              end;

           if EdProjetoObraCodigo.text<>'' then
             LBL_00_LTITULO2.Caption := LBL_00_LTITULO2.Caption + ' / C.Custo: '+EdProjetoObraCodigo.text;

           Screen.Cursor := crHourGlass;
           if SqlCdsPesq.IsEmpty = false then
              begin
                  ppRpPesq.DeviceType := 'Screen';
                  RBuilderPreview(ppRpPesq);
              end
           else
              begin
                  uteis.aviso('Deve informar um periódo !');
                  RxDataInicial.SetFocus;
              end;
           Screen.Cursor := crDefault;
       end;
    end;

procedure TFormConsultaPedido.BtnFecharClick(Sender: tObject);
begin
    GbPesq.Enabled      := true;
    GbCliente.Enabled   := true;

    GbDados.Enabled     := true;
    PanImprimir.Visible := false;
    BitCancelar.Click;
end;

procedure TFormConsultaPedido.Rad_ClienteClick(Sender: tObject);
begin
    LayOutPesq;
    if BitCancelar.Visible = true then
       BitCancelar.Click;

    PreencheComboBusca
end;

procedure TFormConsultaPedido.Rad_RepClick(Sender: tObject);
begin
  LayOutPesq;
  if BitCancelar.Visible = true then
     BitCancelar.Click;

  PreenchaCombo; // PreencheComboBusca
end;

procedure TFormConsultaPedido.Rad_RefClick(Sender: tObject);
begin
  LayOutPesq;
  if BitCancelar.Visible = true then
     BitCancelar.Click;

  PreencheComboBusca
end;

procedure TFormConsultaPedido.RxDataInicialClick(Sender: tObject);
begin
  RxDataInicial.SelectAll;
end;

procedure TFormConsultaPedido.RxDataFinalClick(Sender: tObject);
begin
  RxDataFinal.SelectAll;
end;

procedure TFormConsultaPedido.CbPesqChange(Sender: tObject);
begin
  BuscaCodigo;
end;

procedure TFormConsultaPedido.DBGridVendasDrawColumnCell(Sender: tObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
    if (not odd(SqlCdsPesq.RecNo)) then
     if not (GdSelected in State) then
        begin
            DBGridVendas.Canvas.Brush.Color := $00FFEFDF;
            DBGridVendas.Canvas.FillRect(rect);
            DBGridVendas.DefaultDrawDataCell(Rect,column.Field,state);
        end;
    if (DBGridVendas.Focused) then
     begin
         if SqlCdsPesqPED_SITUACAO.AsString = 'T' then
            DBGridVendas.Canvas.Font.Color:= clBlue; // coloque aqui a cor desejada
        // if (gdSelected in State) then
         //   DBGridVendas.Canvas.Font.Color:= clWindow;
         DBGridVendas.DefaultDrawDataCell(Rect,DBGridVendas.columns[datacol].field, State);
     end
    else
     begin
         if SqlCdsPesqPED_SITUACAO.AsString = 'T' then
            DBGridVendas.Canvas.Font.Color:= clBlue; // coloque aqui a cor desejada
         DBGridVendas.DefaultDrawDataCell(Rect,DBGridVendas.columns[datacol].field, State);
     end;
end;

procedure TFormConsultaPedido.DBGridVendasTitleClick(Column: TColumn);

var indice: string;
    existe: boolean;

begin


     if SqlCdsPesq.IndexFieldNames = Column.FieldName then
     begin
          indice := AnsiUpperCase(Column.FieldName+'_INV');

          try
             SqlCdsPesq.IndexDefs.Find(indice);
             existe := true;
          except
                existe := false;
          end;

          if not existe then
             with SqlCdsPesq.IndexDefs.AddIndexDef do
             begin
                  Name := indice;
                  Fields := Column.FieldName;
                  Options := [ixDescending];
             end;
          SqlCdsPesq.IndexName := indice;
     end
     else
     if Column.Field.FieldKind<>fkCalculated then
         SqlCdsPesq.IndexFieldNames := Column.FieldName
     Else
         GeraException('Coluna Não Permite Ordenação!');

  DBGridVendas.Refresh;
end;

procedure TFormConsultaPedido.EdLinhaCodigoExit(Sender: TObject);
begin
   EdLinhaCodigo.Text := PreenchezeroEsquerda(EdLinhaCodigo.Text,3);
   if (EdLinhaCodigo.Text = '000') then
      begin
         EdLinhaCodigo.Clear;
         CbLinha.Text := '';
      end
   else
      begin
         CbLinha.TextoLocalizar := EdLinhaCodigo.Text;
         CbLinha.Localizar := True;
         if not (CbLinha.Localizado) then
            begin
               uteis.aviso('Marca/Linha não localizada com o código informado');
               CbLinha.Text := '';
               EdLinhaCodigo.SetFocus;
               EdLinhaCodigo.SelectAll;
            end;
      end;
end;

procedure TFormConsultaPedido.EdProjetoObraCodigoExit(Sender: tObject);
begin
   EdProjetoObraCodigo.Text := PreenchezeroEsquerda(EdProjetoObraCodigo.Text,3);
   if (EdProjetoObraCodigo.Text = '000') then
      begin
         EdProjetoObraCodigo.Clear;
         CbProjetoObra.Text := '';
      end
   else
      begin
         CbProjetoObra.TextoLocalizar := EdProjetoObraCodigo.Text;
         CbProjetoObra.Localizar := True;
         if not (CbProjetoObra.Localizado) then
            begin
               uteis.aviso('Centro de Custo não localizado com o código informado');
               CbProjetoObra.Text := '';
               EdProjetoObraCodigo.SetFocus;
               EdProjetoObraCodigo.SelectAll;
            end;
      end;

end;

procedure TFormConsultaPedido.CbProjetoObraChange(Sender: tObject);
begin
   EdProjetoObraCodigo.Text := CbProjetoObra.CodigoLista;
end;

procedure TFormConsultaPedido.CbProjetoObraExit(Sender: tObject);
begin
  if (CbProjetoObra.CodigoLista = '') or (CbProjetoObra.Text = '') then
  begin
     CbProjetoObra.Text := '';
     EdProjetoObraCodigo.Text := '';
  end
  else
  begin
     EdProjetoObraCodigo.Text := CbProjetoObra.CodigoLista;
  end;
end;

procedure TFormConsultaPedido.FormCreate(Sender: tObject);
begin
 // CbProjetoObra.CarregarCombo := True;
  RxDataInicial.Date := Date-30;
  RxDataFinal.Date := Date;
end;

procedure TFormConsultaPedido.FormDestroy(Sender: TObject);
begin
  FormConsultaPedido := Nil;
end;

end.
