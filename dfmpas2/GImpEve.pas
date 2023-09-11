unit GImpEve;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, DBCtrls, Buttons, Mask, RwFunc,   Provider, SqlExpr,SqlClientDataSet,
  DB, DBClient, DBLocal, DBLocalS, ppProd, ppClass, ppReport, ppComm,
  ppRelatv, ppDB, ppDBPipe, ppModule, raCodMod, ppBands, ppVar, ppCtrls,
  ppPrnabl, ppCache, ppDesignLayer, ppParameter, SimpleDS, Data.DBXFirebird, JvExMask, JvToolEdit ;

type
  TFormGimpEveRep = class(TForm)
    PrinterSetupDialog1: TPrinterSetupDialog;
    Grp00: TGroupBox;
    GroupBox3: TGroupBox;
    RadVideo: TRadioButton;
    RadImpressora: TRadioButton;
    RadText: TRadioButton;
    Group05: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Group07: TGroupBox;
    BitConfig: TBitBtn;
    BitOk: TBitBtn;
    BitCancelar: TBitBtn;
    SqlCdsRepre: TSQLClientDataSet;
    SqlCdsRepreREP_CODIGO: TStringField;
    SqlCdsRepreREP_NOME: TStringField;
    SqlCdsRepreEMP_CODIGO: TStringField;
    SqlCdsRelEve00: TSQLClientDataSet;
    DsRelEve00: TDataSource;
    ppDBRelEve00: TppDBPipeline;
    ppRelEve00: TppReport;
    CbxRepre: TComboBox;
    SqlCdsRelEve00ERP_CODIGO: TStringField;
    SqlCdsRelEve00ERP_VALOR: TFMTBCdField;
    SqlCdsRelEve00ERP_TIPO: TStringField;
    SqlCdsRelEve00ERP_DATA: TSQLTimeStampField;
    SqlCdsRelEve00ERP_COMPL: TStringField;
    SqlCdsRelEve00ERP_IMPOSTO: TStringField;
    SqlCdsRelEve00EVE_CODIGO: TStringField;
    SqlCdsRelEve00EVE_DESCRI: TStringField;
    SqlCdsRelEve00REP_CODIGO: TStringField;
    SqlCdsRelEve00REP_NOME: TStringField;
    SqlCdsRelEve00EMP_CODIGO: TStringField;
    SqlCdsRelEve00Total_Debito_CC: TCurrencyField;
    SqlCdsRelEve00Total_Credito_CC: TCurrencyField;
    SqlCdsRelEve00Total_Resulta_CC: TCurrencyField;
    pp00HeaderBand1: TppHeaderBand;
    ppLine18: TppLine;
    LBL_00_EMPRESA: TppLabel;
    LBL_00_TITULO1: TppLabel;
    LBL_00_TITULO2: TppLabel;
    ppLine20: TppLine;
    ppSystemVariable7: TppSystemVariable;
    ppSystemVariable8: TppSystemVariable;
    pp00DetailBand1: TppDetailBand;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    DbIrrf: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    pp00SummaryBand1: TppSummaryBand;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppLine21: TppLine;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel6: TppLabel;
    ppLine1: TppLine;
    ppLabel7: TppLabel;
    ppLabel9: TppLabel;
    ppLabel5: TppLabel;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLine2: TppLine;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppLabel8: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppDBCalc3: TppDBCalc;
    raCodeModule1: TraCodeModule;
    EditDataI: TJvDateEdit;
    EditDataF: TJvDateEdit;
    procedure MudaCorCampos(Sender: tObject);
    procedure BitConfigClick(Sender: tObject);
    procedure BitOkClick(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure BitCancelarClick(Sender: tObject);
    procedure EditDataIExit(Sender: tObject);
    procedure EditDataFExit(Sender: tObject);
    procedure pp00HeaderBand1BeforePrint(Sender: tObject);
    procedure SqlCdsRelEve00CalcFields(DataSet: TDataSet);
    procedure CbxRepreClick(Sender: tObject);
    procedure CbxRepreExit(Sender: tObject);
    procedure FormCreate(Sender: tObject);
  private
PathNewRel :STRING;
             {campos}
    CampoData    :TjvDateEdit;
    CampoCombo   :TComboBox;
  public
    { Public declarations }
  end;

var
  FormGimpEveRep: TFormGimpEveRep;

implementation

uses Uteis, DataCad, ufrmpreviewrb, iniciodb;





{$R *.DFM}

procedure TFormGimpEveRep.MudaCorCampos(Sender: tObject);
begin
  {CampoData  :TDBDateEdit}
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
  {CampoCombo  :TComboBox}
   if Assigned(CampoCombo) then
      begin
         CampoCombo.color := clWindow;
      end;
   if ActiveControl is TComboBox then
      begin
         TComboBox(ActiveControl).color := $0080FFFF;
         CampoCombo := TComboBox(ActiveControl);
      end
   else
      begin
         CampoCombo := nil;
      end;
end;

procedure TFormGimpEveRep.BitConfigClick(Sender: tObject);
begin
    PrinterSetupDialog1.Execute;
end;

procedure TFormGimpEveRep.BitOkClick(Sender: tObject);
var
wDataI,wDataF,wSeleciona,wOrdem:String;
begin
    FormatSettings.ShortDateFormat:='mm/dd/yyyy';
    wDataI := DateToStr(EditDataI.Date);
    wDataF := DateToStr(EditDataF.Date);
    if EditDataI.Text <> '  /  /    ' then
       begin
           wSeleciona := 'WHERE R1.REP_SITUACAO = ''A'' AND E1.ERP_DATA BETWEEN '''+wDataI+''' AND '''+wDataF+'''';
       end;
    // verifica se a data final é maior que a data inicial
    if EditDataI.Date > EditDataF.Date then
       begin
           uteis.erro  ('Data final não pode ser menor que a data inicial!');
           EditDataF.Setfocus;
           exit;
       end;
    if CbxRepre.ItemIndex <> 0 then
       begin
           wSeleciona := wSeleciona + ' AND E1.REP_CODIGO = '''+SqlCdsRepreREP_CODIGO.AsString+'''';
       end;
    wOrdem := 'E1.REP_CODIGO, E1.ERP_DATA';
    try
      SqlCdsRelEve00.Close;
      SqlCdsRelEve00.CommandText := SQLDEF('REPRESENTANTES','SELECT E1.ERP_CODIGO,E1.ERP_VALOR,E1.ERP_TIPO,E1.ERP_DATA,E1.ERP_COMPL,E1.ERP_IMPOSTO,E1.EVE_CODIGO,V1.EVE_DESCRI,'+
                                           'E1.REP_CODIGO,R1.REP_NOME,R1.REP_SITUACAO,E1.EMP_CODIGO FROM EVE_RP01 E1 LEFT JOIN rep0000 R1 ON E1.rep_codigo = R1.rep_codigo '+
                                           'LEFT JOIN EVE0000 V1 ON E1.eve_codigo = V1.eve_codigo ',wSeleciona,wOrdem,'E1.');
      SqlCdsRelEve00.Open;
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao Abrir as Tabelas !'+e.message));
    end;
    FormatSettings.ShortDateFormat:='dd/mm/yyyy';
    LBL_00_Titulo2.Caption:= 'Lançamentos no periódo de: '+wDataI+' até '+wDataF;

    if RadVideo.Checked then
       begin
           ppRelEve00.DeviceType := 'Screen';
       end else
    if RadImpressora.Checked then
       begin
           ppRelEve00.DeviceType := 'Printer';
           ppRelEve00.ShowPrintDialog := true;
       end;
    RBuilderPreview(ppRelEve00);
    CbxRepre.ItemIndex :=0;
    EditDataI.SetFocus;
    exit;
end;

procedure TFormGimpEveRep.FormShow(Sender: tObject);
begin
    Left:= 100;
    Top := 182;
    {ativa o método ao evento OnActiveControlChange}
    Screen.OnActiveControlChange   := MudaCorCampos;
    Screen.Cursor := crHourGlass;
    try
      SqlCdsRepre.Close;
      SqlCdsRepre.CommandText := SQLDEF('REPRESENTANTES','SELECT R1.REP_CODIGO,R1.REP_NOME,R1.EMP_CODIGO FROM REP0000 R1','where R1.REP_SITUACAO= ''A''','R1.REP_NOME','R1.');
      SqlCdsRepre.Open;
      SqlCdsRepre.First;
      while not SqlCdsRepre.Eof do
        begin
            CbxRepre.Items.Add(SqlCdsRepreREP_NOME.AsString);
            SqlCdsRepre.Next;
        end;
      CbxRepre.ItemIndex := 0;
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao Abrir a Tabela REP0000 !'+E.MESSAGE));
    end;
    FormGimpEveRep.AutoSize := True;
    EditDataI.Date := now;
    EditDataF.Date := now + 15;
    EditDataI.SetFocus;
    Screen.Cursor := crDefault;
end;

procedure TFormGimpEveRep.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
    Screen.OnActiveControlChange := NIL;
    Screen.Cursor := crHourGlass;
    try
      SqlCdsRepre.Close;
    except on E:EDataBaseError do
         uteis.erro  (pchar('Erro ao Fechar a Tabela REP0000 !'+E.Message));
    end;
    Screen.Cursor := crDefault;
end;

procedure TFormGimpEveRep.FormCreate(Sender: tObject);
begin
     PathNewRel := dbInicio.GetParametroSistema('PMT_PATHRELATORIO');
end;

procedure TFormGimpEveRep.BitCancelarClick(Sender: tObject);
begin
    close;
end;

procedure TFormGimpEveRep.EditDataIExit(Sender: tObject);
begin
    if EditDataI.Text <> '  /  /    ' then
       begin
           if not TestaDataStr(EditDataI.Text) then
              EditDataI.setfocus;
       end;
end;

procedure TFormGimpEveRep.EditDataFExit(Sender: tObject);
begin
    if EditDataF.Text <> '  /  /    ' then
       begin
           if not TestaDataStr(EditDataF.Text) then
              EditDataF.setfocus;
       end;
end;

procedure TFormGimpEveRep.pp00HeaderBand1BeforePrint(Sender: tObject);
begin
    LBL_00_EMPRESA.Caption := DBINICIO.EMPRESA.Razao;
end;

procedure TFormGimpEveRep.SqlCdsRelEve00CalcFields(DataSet: TDataSet);
begin
    if SqlCdsRelEve00ERP_TIPO.AsString = 'D' then
       begin
           SqlCdsRelEve00Total_Debito_CC.AsCurrency  := SqlCdsRelEve00ERP_VALOR.AsCurrency;
           SqlCdsRelEve00Total_Credito_CC.AsCurrency := 0;
       end
    else
       begin
           SqlCdsRelEve00Total_Credito_CC.AsCurrency := SqlCdsRelEve00ERP_VALOR.AsCurrency;
           SqlCdsRelEve00Total_Debito_CC.AsCurrency  := 0;
       end;
    SqlCdsRelEve00Total_Resulta_CC.AsCurrency := SqlCdsRelEve00Total_Resulta_CC.AsCurrency + (SqlCdsRelEve00Total_Credito_CC.AsCurrency - SqlCdsRelEve00Total_Debito_CC.AsCurrency);
end;

procedure TFormGimpEveRep.CbxRepreClick(Sender: tObject);
begin
    SqlCdsRepre.Locate('REP_NOME',CbxRepre.Text,[]);
end;

procedure TFormGimpEveRep.CbxRepreExit(Sender: tObject);
begin
    if CbxRepre.ItemIndex <> 0 then
       SqlCdsRepre.Locate('REP_NOME',CbxRepre.Text,[]);
end;

end.
