unit GImpCFix;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask,  RwFunc, Provider, SqlExpr,SqlClientDataSet,
  ppProd, ppClass, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, DB,
  DBClient, DBLocal, DBLocalS, ppModule, raCodMod, ppBands, ppVar, ppCtrls,
  ppPrnabl, ppCache, ppParameter, ppDesignLayer, SimpleDS, Data.DBXFirebird, JvExMask, JvToolEdit;

type
  TFormGimpCxFixo = class(TForm)
    Group03: TGroupBox;
    BitConfig: TBitBtn;
    BitOk: TBitBtn;
    BitCancelar: TBitBtn;
    PrinterSetupDialog1: TPrinterSetupDialog;
    Group01: TGroupBox;
    RadCxAberto: TRadioButton;
    RadCxTodos: TRadioButton;
    Group02: TGroupBox;
    LabData: TLabel;
    LabAte: TLabel;
    GroupTipoRel: TGroupBox;
    LTBoxRelatorio: TListBox;
    GroupDispositivo: TGroupBox;
    RadVideo: TRadioButton;
    RadImpressora: TRadioButton;
    RadText: TRadioButton;
    SqlCdsRelCxFixo: TSQLClientDataSet;
    DsRelCxFixo: TDataSource;
    ppDBCxFixo: TppDBPipeline;
    ppRelCxFixo00: TppReport;
    SqlCdsRelCxFixoCXA_LANCTO: TStringField;
    SqlCdsRelCxFixoCXA_DATA: TSQLTimeStampField;
    SqlCdsRelCxFixoCCT_CODIGO: TStringField;
    SqlCdsRelCxFixoCXA_HISTORICO: TStringField;
    SqlCdsRelCxFixoCXA_DOCUMENTO: TStringField;
    SqlCdsRelCxFixoCXA_TIPODOC: TStringField;
    SqlCdsRelCxFixoCXA_SAIDA: TFMTBCdField;
    SqlCdsRelCxFixoCXA_ENTRADA: TFMTBCdField;
    SqlCdsRelCxFixoCXA_SITUACAO: TStringField;
    SqlCdsRelCxFixoEMP_CODIGO: TStringField;
    ppParameterList1: TppParameterList;
    pp00HeaderBand1: TppHeaderBand;
    ppLine18: TppLine;
    LBL_00_EMPRESA: TppLabel;
    LBL_00_LTITULO1: TppLabel;
    LBL_00_LTITULO2: TppLabel;
    ppLine20: TppLine;
    ppSystemVariable7: TppSystemVariable;
    ppSystemVariable8: TppSystemVariable;
    ppLine21: TppLine;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    pp00DetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLabel7: TppLabel;
    ppDBCalc3: TppDBCalc;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppLine1: TppLine;
    ppLine2: TppLine;
    CdsRelCxFixo: TClientDataSet;
    CdsRelCxFixoDATA: TDateField;
    CdsRelCxFixoLANCTO: TStringField;
    CdsRelCxFixoDOCUMENTO: TStringField;
    CdsRelCxFixoTIPODOC: TStringField;
    CdsRelCxFixoHISTORICO: TStringField;
    CdsRelCxFixoENTRADA: TCurrencyField;
    CdsRelCxFixoSAIDA: TCurrencyField;
    CdsRelCxFixoACUMULADO: TCurrencyField;
    CdsRelCxFixoSALDO_CC: TCurrencyField;
    raCodeModule1: TraCodeModule;
    ppDBText7: TppDBText;
    ppLabel8: TppLabel;
    EditDataI: TJvDateEdit;
    EditDataf: TJvDateEdit;
    procedure EditDataIExit(Sender: tObject);
    procedure EditDatafExit(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure BitOkClick(Sender: tObject);
    procedure RadCxAbertoClick(Sender: tObject);
    procedure RadCxTodosClick(Sender: tObject);
    procedure BitCancelarClick(Sender: tObject);
    procedure EditDataIClick(Sender: tObject);
    procedure EditDatafClick(Sender: tObject);
    procedure LTBoxRelatorioClick(Sender: tObject);
    procedure pp00HeaderBand1BeforePrint(Sender: tObject);
    procedure MudaCorCampos(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: tObject; var CanClose: Boolean);
    procedure LTBoxRelatorioDblClick(Sender: tObject);
    procedure CdsRelCxFixoCalcFields(DataSet: TDataSet);
    procedure FormCreate(Sender: tObject);
  private
PathNewRel :STRING;
    CampoData      : TjvDateEdit;
    cSaldo,
    cSaldo_Acumula : Currency;
    iVez           : Integer;
  public
    { Public declarations }
  end;

var
  FormGimpCxFixo: TFormGimpCxFixo;

implementation

uses Uteis, DataCad, Men0001, ufrmpreviewrb, iniciodb;

{$R *.dfm}






procedure TFormGimpCxFixo.EditDataIExit(Sender: tObject);
begin
if not TestaDataStr(EditDataI.Text) then
    EditDataI.setfocus;

 EditDataF.Text := EditDataI.Text;
end;

procedure TFormGimpCxFixo.EditDatafExit(Sender: tObject);
begin
if not TestaDataStr(EditDataF.Text) then
    EditDataF.setfocus;
end;

procedure TFormGimpCxFixo.FormShow(Sender: tObject);
begin
    Left:= 142;
    Top := 82;
    cSaldo_Acumula := 0;
    {ativa o método ao evento OnActiveControlChange}
    Screen.OnActiveControlChange   := MudaCorCampos;
    screen.cursor := crHourGlass;
    LTBoxRelatorio.Items.Add('Movimento do Caixa');
    LTBoxRelatorio.ItemIndex := 0;
    RadCxTodos.Checked := True;
    if RadCxAberto.checked  then
       begin
           Group02.Visible := False;
           Group03.Top     := 160;
           FormGimpCxFixo.AutoSize := true;
           LBL_00_LTITULO2.Caption := 'LANÇAMENTOS EM ABERTO';
       end
    else
       begin
           FormGimpCxFixo.AutoSize := true;
           LBL_00_LTITULO2.Caption := 'TODOS OS LANÇAMENTOS';
       end;
    screen.cursor := crDefault;
end;

procedure TFormGimpCxFixo.BitOkClick(Sender: tObject);
begin
   {Criar a Tabela Temporaria}
   if (not CdsRelCxFixo.Active) then
      CdsRelCxFixo.CreateDataSet;
   {Limpar Tabela Temporaria}
   CdsRelCxFixo.EmptyDataSet;
   // verifica se a data final é maior que a data inicial
   if EditDataI.Date > EditDataF.Date then
       begin
           uteis.erro  ('Data final não pode ser menor que a data inicial!');
           EditDataF.Date := 0;
           EditDataF.SetFocus;
       end
    else
       begin
          wSeleciona := ' WHERE CXA_TIPODOC <> ''T'' ';
          if RadCxTodos.checked  then
             begin
                 wSeleciona := wSeleciona + 'AND CXA_DATA BETWEEN '''+DataAmericana(EditDataI.Text)+'''AND '''+DataAmericana(EditDataF.Text)+'''';
             end
          else
          if RadCxAberto.checked  then
             begin
                 wSeleciona := wSeleciona + 'AND CXA_SITUACAO = ''A''';
             end;
          wOrdem :='CXA_DATA,CXA_TIPODOC DESC,CXA_LANCTO';
          screen.cursor := crHourGlass;
          try
            SqlCdsRelCxFixo.Close;                    
            SqlCdsRelCxFixo.CommandText := SQLDEF('PAGAR','SELECT * FROM CAIXA001',wSeleciona,wOrdem,'');
            SqlCdsRelCxFixo.Open;
            if (not SqlCdsRelCxFixo.IsEmpty) then
               begin
                  cSaldo_Acumula := 0;
                  while (not SqlCdsRelCxFixo.Eof) do
                   begin
                      cSaldo         := 0;
                      cSaldo         := (SqlCdsRelCxFixoCXA_ENTRADA.AsCurrency - SqlCdsRelCxFixoCXA_SAIDA.AsCurrency);
                      cSaldo_Acumula := cSaldo_Acumula + cSaldo;
                      //
                      CdsRelCxFixo.Append;
                      CdsRelCxFixoDATA.AsDateTime      := SqlCdsRelCxFixoCXA_DATA.AsDateTime;
                      CdsRelCxFixoLANCTO.AsString      := SqlCdsRelCxFixoCXA_LANCTO.AsString;
                      CdsRelCxFixoDOCUMENTO.AsString   := SqlCdsRelCxFixoCXA_DOCUMENTO.AsString;
                      CdsRelCxFixoTIPODOC.AsString     := SqlCdsRelCxFixoCXA_TIPODOC.AsString;
                      CdsRelCxFixoHISTORICO.AsString   := SqlCdsRelCxFixoCXA_HISTORICO.AsString;
                      CdsRelCxFixoENTRADA.AsCurrency   := SqlCdsRelCxFixoCXA_ENTRADA.AsCurrency;
                      CdsRelCxFixoSAIDA.AsCurrency     := SqlCdsRelCxFixoCXA_SAIDA.AsCurrency;
                      CdsRelCxFixoACUMULADO.AsCurrency := cSaldo_Acumula;
                      CdsRelCxFixo.Post;
                      SqlCdsRelCxFixo.Next;
                   end;
               end;
          except on E:EdataBaseError do
             uteis.erro  (Pchar('Erro ao Abrir a Tabela Caixa Fixo !'+e.Message));
          end;
          CdsRelCxFixo.First;
          {Cabecalho do Relatorio}
          if LTBoxRelatorio.ItemIndex = 0 then
             begin
                LBL_00_LTITULO1.Caption := 'MOVIMENTO DE CAIXA';
                LBL_00_LTITULO2.Caption := '';
                if RadCxTodos.checked  then
                   begin
                      LBL_00_LTITULO1.Caption := 'MOVIMENTO DE CAIXA';
                      LBL_00_LTITULO2.Caption := '';
                      LBL_00_LTITULO2.Caption := LBL_00_LTITULO2.Caption +'No Periódo de : '+EditDataI.Text+' até '+EditDataF.Text;
                    end;
                //
                if RadVideo.checked  then
                   begin
                       ppRelCxFixo00.DeviceType := 'Screen';
                       RBuilderPreview(ppRelCxFixo00);
                   end
                else
                if RadImpressora.checked  then
                   begin
                       ppRelCxFixo00.DeviceType := 'Printer';
                       ppRelCxFixo00.ShowPrintDialog := true;
                       ppRelCxFixo00.Print;
                   end

             end;
          if RadCxTodos.checked  then
             EditDataI.SetFocus;
       end;
    screen.cursor := crDefault;
end;

procedure TFormGimpCxFixo.RadCxAbertoClick(Sender: tObject);
begin
    {Desabilita}
    Group02.Visible   := False;
    {Posiciona}
    Group03.Top       := 160;
    {Redimensiona o Formulario}
    FormGimpCxFixo.AutoSize := True;
    LBL_00_LTITULO2.Caption := 'LANÇAMENTOS EM ABERTO';
end;

procedure TFormGimpCxFixo.RadCxTodosClick(Sender: tObject);
begin
    {Habilita}
    Group02.Visible   := True;
    {Posiciona}
    Group02.Top       := 160;
    Group03.Top       := 199;
    {Redimensiona o Formulario}
    FormGimpCxFixo.AutoSize := True;
    LBL_00_LTITULO2.Caption := 'TODOS OS LANÇAMENTOS';
end;

procedure TFormGimpCxFixo.BitCancelarClick(Sender: tObject);
begin
  close;
end;

procedure TFormGimpCxFixo.EditDataIClick(Sender: tObject);
begin
    EditDataI.SelectAll;
end;

procedure TFormGimpCxFixo.EditDatafClick(Sender: tObject);
begin
   EditDataf.SelectAll;
end;

procedure TFormGimpCxFixo.LTBoxRelatorioClick(Sender: tObject);
begin
    if LTBoxRelatorio.ItemIndex = 0 then
       begin
           if RadCxAberto.checked  then
              begin
                  Group02.Visible := False;
                  Group03.Top     := 160;
                  FormGimpCxFixo.AutoSize := true;
                  LBL_00_LTITULO2.Caption := 'LANÇAMENTOS EM ABERTO';
              end
           else
              begin
                  FormGimpCxFixo.AutoSize := true;
                  LBL_00_LTITULO2.Caption := 'TODOS OS LANÇAMENTOS';
              end;
       end;
end;

procedure TFormGimpCxFixo.pp00HeaderBand1BeforePrint(Sender: tObject);
begin
    LBL_00_EMPRESA.Caption := dbInicio.Empresa.Razao;
end;

procedure TFormGimpCxFixo.MudaCorCampos(Sender: tObject);
begin
  {CampoData  :TDateEdit}
   if Assigned(CampoData) then
      begin
         CampoData.color := clWindow;
      end;
   if ActiveControl is TjvDateEdit then
      begin
         TjvDateEdit(ActiveControl).color := $0080FFFF;
         CampoData := TjvDateEdit(ActiveControl);
      end
   else
      begin
         CampoData := nil;
      end;
end;

procedure TFormGimpCxFixo.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
    Screen.OnActiveControlChange := NIL;
end;

procedure TFormGimpCxFixo.FormCloseQuery(Sender: tObject;
  var CanClose: Boolean);
begin
    try
      SqlCdsRelCxFixo.Close;
    except on E:EdataBaseError do
       uteis.erro  (Pchar('Erro ao Fechar a Tabela do Caixa Fixo !'+e.Message));
    end;     
end;

procedure TFormGimpCxFixo.FormCreate(Sender: tObject);
begin
     PathNewRel := dbInicio.GetParametroSistema('PMT_PATHRELATORIO');
end;

procedure TFormGimpCxFixo.LTBoxRelatorioDblClick(Sender: tObject);
begin
    if RadCxTodos.checked  then
       begin
           EditDataI.SetFocus;
           EditDataI.SelectAll;
       end;
end;

procedure TFormGimpCxFixo.CdsRelCxFixoCalcFields(DataSet: TDataSet);
begin
   if RadCxAberto.checked  then
      begin
         CdsRelCxFixoSALDO_CC.AsCurrency := (CdsRelCxFixoENTRADA.AsCurrency - CdsRelCxFixoSAIDA.AsCurrency);
      end
   else
   if RadCxTodos.checked  then
      begin
         if ((CdsRelCxFixoDATA.AsDateTime = EditDataI.Date) and (CdsRelCxFixoTIPODOC.AsString = 'T')) then
            begin
               CdsRelCxFixoSALDO_CC.AsCurrency := (CdsRelCxFixoENTRADA.AsCurrency - CdsRelCxFixoSAIDA.AsCurrency);
            end
         else
            begin
               if (CdsRelCxFixoTIPODOC.AsString <> 'T') then
                  begin
                     CdsRelCxFixoSALDO_CC.AsCurrency := (CdsRelCxFixoENTRADA.AsCurrency - CdsRelCxFixoSAIDA.AsCurrency);
                  end;
            end;
      end;
end;

end.
