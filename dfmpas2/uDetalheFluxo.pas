
unit uDetalheFluxo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBPesquisaForm, Data.DB, Data.DBXFirebird, Data.FMTBcd, Vcl.Menus, Datasnap.DBClient, Datasnap.Provider, Vcl.ExtCtrls, Data.SqlExpr, ACBrEnterTab, ACBrBase,
  ACBrCalculadora, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.Buttons, Vcl.Mask, RxToolEdit, Vcl.DBCtrls, JvDBGridFooter, JvExStdCtrls, JvEdit, JvValidateEdit, JvExMask, JvToolEdit;

type
  TfrmDetalheFluxo = class(TfrmBaseDBPesquisa)
    CdsParcelasGridFAT_CODIGO: TStringField;
    cdsBuscoFPC_VLPARC: TFMTBCDField;
    cdsBuscoFPC_VENCTO: TSQLTimeStampField;
    cdsBuscoFPC_VLPAGO: TFMTBCDField;
    cdsBuscoFPC_STATUS: TStringField;
    cdsBuscoBAN_APELIDO: TStringField;
    cdsBuscoFPC_SITPAG: TStringField;
    cdsBuscoFPC_NPARCELAS: TSmallintField;
    cdsBuscoFPC_NUMER: TStringField;
    Splitter1: TSplitter;
    qpaga: TSQLQuery;
    dsppaga: TDataSetProvider;
    cdspaga: TClientDataSet;
    dspaga: TDataSource;
    GroupBox1: TGroupBox;
    ldataInicial: TLabel;
    lDataFinal: TLabel;
    SqlCdsPagarParcPAG_CODIGO: TStringField;
    cdspagaPPC_VLPARC: TFMTBCDField;
    cdspagaPPC_VLPAGO: TFMTBCDField;
    cdspagaPPC_STATUS: TStringField;
    cdspagaPPC_SITPAG: TStringField;
    cdspagaPPC_VENCTO: TSQLTimeStampField;
    cdspagaPPC_PAGTO: TSQLTimeStampField;
    cdspagaPPC_NPARCELAS: TSmallintField;
    cdspagaPPC_NUMER: TStringField;
    cdsBuscoTotalReceber: TAggregateField;
    cdspagaTotalPagar: TAggregateField;
    gbReceber: TGroupBox;
    dbgridreceber: TDBGrid;
    gbpagar: TGroupBox;
    cdsBuscoCLI_RAZAO: TStringField;
    cdspagaFavorecido: TStringField;
    cdsBuscoFPC_PAGTO: TSQLTimeStampField;
    rectot: TLabel;
    edReceber: TDBEdit;
    cdspagaBAN_APELIDO: TStringField;
    cdsBuscoFPC_VALOR_REC: TFMTBCDField;
    cdsBuscoTotalDescontado: TAggregateField;
    Label1: TLabel;
    edPagar: TDBEdit;
    lsaldofinal: TLabel;
    cdsBuscoDESC_CRED: TFMTBCDField;
    cdsBuscoDESC_DEB: TFMTBCDField;
    cdsBuscoTotalDesc_deb: TAggregateField;
    curSaldoFinal: TJvValidateEdit;
    pdescontos: TPanel;
    Label2: TLabel;
    edDescCred: TDBEdit;
    Label3: TLabel;
    edDescDeb: TDBEdit;
    Label4: TLabel;
    CurSaldoReceber: TJvValidateEdit;
    RxDataInicial: TJvDateEdit;
    RxDataFinal: TJvDateEdit;
    cdsBuscoTotal: TAggregateField;
    cdsBuscoFPG_DESCRICAO: TStringField;
    cdsBuscodias_credito: TIntegerField;
    cdsBuscoemp_codigo: TStringField;
    cdspagaemp_codigo: TStringField;
    procedure cdsBuscoFPC_NUMERGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure cdspagaPPC_NUMERGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure DBGridDblClick(Sender: TObject);
    procedure DBGridKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnPesquisaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure dbgridreceberDblClick(Sender: TObject);
  private
    fMultiEmpresa :boolean;
    procedure SetMultiEmpresa (const Value : boolean) ;
  public
    procedure filtro;
    property MultiEmpresa:boolean read fMultiEmpresa write SetMultiEmpresa;
    procedure MostrarTotais (const Dodia: boolean);
  end;

var
  frmDetalheFluxo: TfrmDetalheFluxo;

implementation

{$R *.dfm}
uses uteis, InicioDB, Pag0001, Rec0001;

procedure TfrmDetalheFluxo.btnPesquisaClick(Sender: TObject);
begin
 // inherited;
  filtro;
end;

procedure TfrmDetalheFluxo.cdsBuscoFPC_NUMERGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if not cdsBusco.IsEmpty then
    text :=  InttoStr(StrToInt(Sender.AsString)) + '/' + IntToStr(cdsBusco.FieldByName('FPC_NPARCELAS').AsInteger);
end;

procedure TfrmDetalheFluxo.cdspagaPPC_NUMERGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if not cdspaga.IsEmpty then
  begin
    if Sender.AsString ='' then
       text:= '1/1'
    else
        text := intToStr(StrToInt(Sender.AsString))+ '/'+ IntToStr(cdspaga.FieldByName('PPC_NPARCELAS').AsInteger);
  end;
end;

procedure TfrmDetalheFluxo.DBGridDblClick(Sender: TObject);
begin
 // inherited;
 if (cdspagaemp_codigo.AsString <> dbInicio.EMPRESA.EMP_CODIGO) then
      raise Exception.Create('A fatura pertence a outra empresa, favor logar na outra empresa para manutenção');

 if not assigned(FormContasPagar) then
  begin
    FormContasPagar := TFormContasPagar.Create(Application);
    FormContasPagar.BotoesAcesso;
    // try
    if (MDIChildCount > 1) then
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0)
    else
      FormContasPagar.Top := 0;

  end;
  frmDetalheFluxo.WindowState :=   wsNormal;
  FormContasPagar.BringToFront;
  FormContasPagar.EdtPag_codigo.text := SqlCdsPagarParcPAG_CODIGO.AsString;
  FormContasPagar.BuscaLancto(2);
  FormContasPagar.EdtPag_codigo.SetFocus;
  FormContasPagar.Show;
end;

procedure TfrmDetalheFluxo.DBGridKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  //inherited;

end;

procedure TfrmDetalheFluxo.dbgridreceberDblClick(Sender: TObject);
begin
  inherited;
  if not assigned(FormContasReceber) then
  Begin

    if (cdsBuscoemp_codigo.AsString <> dbInicio.EMPRESA.EMP_CODIGO) then
      raise Exception.Create('A fatura pertence a outra empresa, favor logar na outra empresa para manutenção');
    FormContasReceber := TFormContasReceber.Create(Application);
    FormContasReceber.BotoesAcesso;
    // try
    if (MDIChildCount > 1) then
      SendMessage(ClientHandle, WM_MDICASCADE, 0, 0)
    else
      FormContasReceber.Top := 0;

    // finally
    // FreeAndNil(FormContasReceber);
    // end;
  End;
  frmDetalheFluxo.WindowState :=   wsNormal;
  FormContasReceber.BringToFront;
  FormContasReceber.EditFatura.Text := CdsParcelasGridFAT_CODIGO.AsString;
  FormContasReceber.BuscaFatura(2);
  FormContasReceber.Show;

end;

procedure TfrmDetalheFluxo.filtro;
begin
 try
  cdspaga.DisableControls;
  cdsBusco.DisableControls;
  with qBusco do
	begin
    cdsBusco.Close;
		sql.Clear;
    //receber
    SQL.Add('SELECT Ft.emp_codigo, FPC_VLPARC, FAT_CODIGO,FPC_NUMER,b.BAN_APELIDO, FPC_VENCTO, FPC_VLPAGO,FPC_STATUS,FPC_SITPAG, FPC_PAGTO,  '+
            ' FPC_NPARCELAS,  FPC_TIPODOC, cl.CLI_RAZAO,FP.FPG_DESCRICAO, '+
            ' CASE WHEN (FPC_TIPODOC = ''BL'' OR  FPG_DESCRICAO =''BOLETO'')  THEN  BAN_DIASCRED_COBRANCA'+
            '      WHEN FPG_DESCRICAO IN (''CARTÃO DE CRÉDITO'', ''CARTAO DE CREDITO'',''CARTAO CREDITO'')   THEN  BAN_DIASCRED_CARTAO '+
            ' ELSE 0 END dias_credito, '+
            ' CASE WHEN FPC_VENCTO='+DateToSQL(RxDataInicial.Date)+' THEN FPC_VLPARC  ELSE 0.0   END  FPC_VALOR_REC, '+
            ' CASE WHEN FPC_DESCONTADO = ''S'' AND FPC_DATADESCTO ='+DateToSQL(RxDataInicial.Date)+ ' THEN FPC_VLPARC  ELSE 0.0 END DESC_CRED, '+   //TOTAL  LIQUIDADO POR DESCONTADO E CAIU NA DATA
            ' CASE WHEN FPC_DESCONTADO = ''S'' AND FPC_DATADESCTO <> '+DateToSQL(RxDataInicial.Date)+ ' THEN FPC_VLPARC  ELSE 0.0 END DESC_DEB '+  //DESCONTADO EM OUTRO DIA
            ' from FAT_PC01 ft '+
            ' LEFT JOIN BAN0000 B ON (FT.BAN_CODIGO = B.BAN_CODIGO '
                                   +ConcatSe(' and B.', DBInicio.ExclusivoSql('BANCOS') )+')  '+
            ' LEFT JOIN CLI0000 cl ON (cl.CLI_CODIGO = ft.CLI_CODIGO '
                        +ConcatSe(' and cl.', DBInicio.ExclusivoSql('CLIENTES') )+')  '+
            ' LEFT JOIN FORMA_PAGAMENTO FP ON (FP.FPG_REGISTRO = FT.FPG_REGISTRO )   ' +
            ' WHERE FPC_EXCLUSAO = ''N''' );
    if not MultiEmpresa then
      SQL.Add( 'and ft.emp_codigo ='+QuotedStr(DBInicio.Empresa.EMP_CODIGO));

    if RxDataInicial.Date = RxDataFinal.Date then
      SQL.Add(' and ((FPC_VENCTO = '+DateToSQL(RxDataInicial.Date) +                             // todos os outros
                 ' AND ( FPC_TIPODOC <> ''BL'' OR NOT FPG_DESCRICAO IN (''CARTÃO DE CRÉDITO'', ''CARTAO DE CREDITO'',''CARTAO CREDITO'',''BOLETO'')))'+
              // cobrança de boleto  fora da data de vencimento, data de credito
             ' OR  ((FPC_VENCTO + COALESCE(BAN_DIASCRED_COBRANCA,0)) = '+DateToSQL(RxDataInicial.Date) +
               '  AND  (FPC_TIPODOC = ''BL'' OR  FPG_DESCRICAO =''BOLETO'')       ))'+
              // cartão de credito fora da data de vencimento, data de credito
             ' OR  ((FPC_VENCTO + COALESCE(BAN_DIASCRED_CARTAO,0)) = '+DateToSQL(RxDataInicial.Date) +
               '  AND  (FPG_DESCRICAO IN (''CARTÃO DE CRÉDITO'', ''CARTAO DE CREDITO'',''CARTAO CREDITO'')  ))'+
             //os valores descontados no dia em questão
             ' OR (FPC_DESCONTADO = ''S'' AND FPC_DATADESCTO = '+DateToSQL(RxDataInicial.Date)+')'
             )
    else
    if (RxDataInicial.Date > 0) and (RxDataFinal.Date > 0)  then
       sql.Add( ' and FPC_VENCTO  between ' + DateToSQL(RxDataInicial.Date)+' and '+ DateToSQL(RxDataFinal.Date) )
    else if  (RxDataInicial.Date > 0)  then
       sql.Add( ' and  FPC_VENCTO  >= ' + DateToSQL(RxDataInicial.Date))
    else if RxDataFinal.Date > 0 then
        sql.Add(' and FPC_VENCTO <= ' + DateToSQL(RxDataFinal.Date));

    if RxDataInicial.Date = RxDataFinal.Date then
      edReceber.DataField := 'TotalReceber'
    else
       edReceber.DataField := 'Total';
    cdsBusco.Open;
  end;
  //pagamentos
  with qpaga do
  begin
    cdspaga.Close;
    sql.Clear;
    sql.Add('Select pg.emp_codigo, PAG_CODIGO, PPC_NUMER, PPC_NPARCELAS, PPC_STATUS, PPC_SITPAG, PPC_VLPARC, PPC_VENCTO, '+
            ' PPC_PAGTO, PPC_VLPAGO , FOR_RAZAO FAVORECIDO, b.BAN_APELIDO   '+
            '  from PAG_PC01 pg      '+
            ' LEFT JOIN BAN0000 B ON (pg.BAN_CODIGO = B.BAN_CODIGO '
                       +ConcatSe(' and B.', DBInicio.ExclusivoSql('BANCOS') )+')  '+
            ' Left join  for0000 fo on (fo.for_codigo = pg.for_codigo    '
               +ConcatSe(' and fo.', DBInicio.ExclusivoSql('FORNECEDORES') )+')  '+
            ' where PPC_EXCLUSAO = ''N'' ');
    if not MultiEmpresa then
      SQL.Add( 'and pg.emp_codigo ='+QuotedStr(DBInicio.Empresa.EMP_CODIGO));
    if RxDataInicial.Date = RxDataFinal.Date then
      sql.Add(' and PPC_VENCTO = '+ DateToSQL(RxDataInicial.Date))
    else
    if (RxDataInicial.Date > 0) and (RxDataFinal.Date > 0)  then
       sql.Add( ' and PPC_VENCTO  between ' + DateToSQL(RxDataInicial.Date)+' and '+ DateToSQL(RxDataFinal.Date) )
    else if  (RxDataInicial.Date > 0)  then
       sql.Add( ' and  PPC_VENCTO  >= ' + DateToSQL(RxDataInicial.Date))
    else if RxDataFinal.Date > 0 then
      sql.Add(' and PPC_VENCTO <= ' + DateToSQL(RxDataFinal.Date));


    cdspaga.Open;
  end;


 finally
  MostrarTotais(RxDataInicial.Date = RxDataFinal.Date);


  cdsBusco.EnableControls;
  cdspaga.EnableControls;
  if RxDataInicial.Date = RxDataFinal.Date then
  begin
    //saldo
    try
      CurSaldoReceber.AsCurrency :=  edReceber.Field.Value + edDescCred.Field.Value - edDescDeb.Field.Value;
      curSaldoFinal.AsCurrency :=  CurSaldoReceber.AsCurrency  -  edPagar.Field.Value;
    except

    end;

  end;


 end;
end;

procedure TfrmDetalheFluxo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
   Action := CaFree;
end;

procedure TfrmDetalheFluxo.FormCreate(Sender: TObject);
begin
  inherited;
	Self.ProcedureFiltro:=Filtro;
  self.Constraints.MinHeight:= 638;;
  self.Constraints.MinWidth:=1074;
  self.Constraints.MaxHeight:= 0;
  self.width:=1074;
  self.height:=638;
  DBGrid.Parent := gbpagar;
  DBGrid.Align := alClient;

end;

procedure TfrmDetalheFluxo.FormDestroy(Sender: TObject);
begin
  inherited;
  frmDetalheFluxo := nil;
end;

procedure TfrmDetalheFluxo.MostrarTotais(const Dodia: boolean);
begin
 pdescontos.Visible :=  dodia;
 lsaldofinal.Visible :=  dodia;
 curSaldoFinal.Visible := dodia;
 if dodia then
 begin
  panel2.Height :=60;
 end
 else
  panel2.Height := 36;
end;

procedure TfrmDetalheFluxo.SetMultiEmpresa(const Value: boolean);
begin
  fMultiEmpresa :=  Value;
end;

end.
