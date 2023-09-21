unit BaseDBPesquisaFDAC;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBFormFdac, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.UI.Intf, FireDAC.VCLUI.Wait, FireDAC.VCLUI.Error, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.FB, Data.DB,
  FireDAC.Comp.Client, FireDAC.Comp.UI, FireDAC.Phys.IBBase, FireDAC.Comp.DataSet, ACBrBase, ACBrEnterTab, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.ComCtrls, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridLevel, cxGrid, cxLocalization, JvDBGridExport, JvComponentBase, Vcl.Menus, JvExControls, JvArrowButton, frxClass, QExport4,
  cxGridExportLink, basedbeditformfdac, fdac.SgDbAutoF8Unit, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Phys.FBDef, cxCustomData, cxFilter, cxData, ACBrCalculadora, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxEditorProducers, dxPScxExtEditorProducers, dxPSCore,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue,
  cxDataControllerConditionalFormattingRulesManagerDialog;

const
  UM_MYMESSAGE = WM_USER + 1;


type

  tProcedureFiltro = Procedure of object;


type
  TfrmBaseDBPesquisaFDAC = class(TfrmBaseDBFDAC)
    pgc1: TPageControl;
    tsNotas: TTabSheet;
    pnlControle: TPanel;
    pnlFiltro: TPanel;
    pnlpn1: TPanel;
    btnPesquisa: TSpeedButton;
    btnLimpar: TSpeedButton;
    pnl1: TPanel;
    btnCalc: TSpeedButton;
    btnSelect: TSpeedButton;
    lblCntRegistros: TLabel;
    pnlUtilTop: TPanel;
    btnExclui: TSpeedButton;
    btnNovo: TSpeedButton;
    btnConsulta: TSpeedButton;
    btnEdita: TSpeedButton;
    btnFechar: TSpeedButton;
    btnExtra: TSpeedButton;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    cxgrd1: TcxGrid;
    dsBusca: TDataSource;
    cdsBusca: TFDQuery;
    cxgrd1DBTableView1: TcxGridDBTableView;
    btnMP_Expotar: TJvArrowButton;
    btnrelatorios: TJvArrowButton;
    pmExportar: TPopupMenu;
    PopupMenu2: TPopupMenu;
    miExcel: TMenuItem;
    miword: TMenuItem;
    frxPadrao: TfrxReport;
    SaveDialog1: TSaveDialog;
    qUsuMenu: TFDQuery;
    qUsuMenuUSA_ALTERACAO: TStringField;
    qUsuMenuUSA_INCLUSAO: TStringField;
    qUsuMenuUSA_EXCLUSAO: TStringField;
    qUsuMenuUSA_RELATORIO: TStringField;
    cdsBuscaDetalhes: TFDQuery;
    dsBuscaDetalhes: TDataSource;
    coCalcula: TACBrCalculadora;
    procedure btnPesquisaClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure miExcelClick(Sender: TObject);
    procedure btnMP_ExpotarClick(Sender: TObject);
    procedure miwordClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure cdsBuscaAfterOpen(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnCalcClick(Sender: TObject);
    procedure btnSelectClick(Sender: TObject);
  private
    fMenu: string;
    vlFiltrados: boolean;
    vlImprimindo: boolean;
    vlProcedureFiltro: tProcedureFiltro;
    vlAntesFiltro: tprocedureFiltro;
    vlDepoisFiltro : tprocedureFiltro;
    vlProcedureFiltroDetalhe : tProcedureFiltro;
    vlAutoF8: TDBAutoF8;
    vlCamposSelectF8: tCampoCRUDList;
    vlCamposFiltroF8: tCampoCRUDList;
    procedure SetAutoF8(const Value: TDBAutoF8);
    procedure FiltroAutoF8;
    function GetProcedureFitro: tProcedureFiltro;
    function GetProcedureFitroDetalhe: tProcedureFiltro;
    procedure SetAntesFiltro (const value : tProcedureFiltro);
    procedure SetDepoisFiltro (const value : tprocedureFiltro);
    procedure SetProcedureFitro(const Value: tProcedureFiltro);
    procedure SetProcedureFitroDetalhe (const Value: tProcedureFiltro);
    procedure ExecuteAutoCrud(sender: tObject);

  public
	  Property AutoF8: TDBAutoF8 Write SetAutoF8;
    property AntesFiltro: tprocedureFiltro read vlAntesFiltro write SetAntesFiltro ;
    property DepoisFiltro: tprocedureFiltro read vlDepoisFiltro write SetDepoisFiltro ;
    Property ProcedureFiltro: tProcedureFiltro Read GetProcedureFitro Write SetProcedureFitro;
    Property ProcedureFiltroDetalhe: tProcedureFiltro Read GetProcedureFitroDetalhe Write SetProcedureFitroDetalhe;
    Property Filtrados: boolean read vlFiltrados write vlFiltrados;
    property Menu: string read FMenu write FMenu;
    procedure Filtro;
    procedure PadraoPesquisa ;
    procedure SqlAdd(const  stt:string );
    procedure SqlAddOR(const stt: string);
    procedure LimpaComponentes(pcmp: tWinControl);

  end;

var
  frmBaseDBPesquisaFDAC: TfrmBaseDBPesquisaFDAC;

implementation

uses  InicioDB, Uteis;

{$R *.dfm}

{ TfrmBaseDBPesquisaFDAC }

procedure TfrmBaseDBPesquisaFDAC.btnCalcClick(Sender: TObject);
begin
  inherited;
  coCalcula.Execute;
end;

procedure TfrmBaseDBPesquisaFDAC.btnFecharClick(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TfrmBaseDBPesquisaFDAC.btnLimparClick(Sender: TObject);
begin
  inherited;
  LimpaComponentes( pnlControle );
  PadraoPesquisa;
end;

procedure TfrmBaseDBPesquisaFDAC.btnMP_ExpotarClick(Sender: TObject);
begin
  inherited;
  miExcel.Click;
end;

procedure TfrmBaseDBPesquisaFDAC.btnNovoClick(Sender: TObject);
var tag: integer;
    Err: boolean;
begin
  inherited;
  tag:=  twincontrol(sender).Tag;
  if tag>1 then
  begin
     Err := not cdsBusca.Active;
     if not Err then
        Err := cdsBusca.FieldByName(CampoID).IsNull;
     if Err then
        GeraException('Selecione um Registro e Tente Novamente...');
  end;
  ExecuteAutoCrud(Sender);
end;

procedure TfrmBaseDBPesquisaFDAC.btnPesquisaClick(Sender: TObject);
begin

  if not vlImprimindo then
  begin
 //   inherited;
    filtro;
  end;

end;

procedure TfrmBaseDBPesquisaFDAC.btnSelectClick(Sender: TObject);
begin
  inherited;
  IDRetorno := cdsBusca.FieldByName(CampoIDRetorno).AsString;
  close;
end;

procedure TfrmBaseDBPesquisaFDAC.cdsBuscaAfterOpen(DataSet: TDataSet);
begin
  inherited;
  if assigned(vlProcedureFiltroDetalhe) then
    vlProcedureFiltroDetalhe;
end;

procedure TfrmBaseDBPesquisaFDAC.ExecuteAutoCrud(sender: tObject);
var tcr: TfrmBaseDBEditFDAC;
    tag: integer;
begin
  if assigned(vlAutoF8) then
     if assigned(vlAutoF8.AutoCrud) then
     begin
          tcr:=TfrmBaseDBEditFDAC.create(self);
          try
            tcr.AutoCrud:=vlAutoF8.AutoCrud;
            tag:=  twincontrol(sender).Tag;
            if tag=1 then
               tcr.novo('Novo Registro de '+aCaption)
            else
            begin
              if cdsBusca.active then
              case tag of
              2: tcr.Consulta(cdsBusca.fieldbyname(Campoid).asstring,'Visualizar '+aCaption);
              3: tcr.edita(cdsBusca.fieldbyname(campoid).asstring,'Edição de '+aCaption);
              4: tcr.Exclui(cdsBusca.fieldbyname(campoid).asstring,'Exclusão de '+aCaption);
              end;
            end;
            if tcr.modalresult=mrOK then
               if cdsBusca.Active then
                  cdsBusca.refresh;
          finally
                 FreeAndnil(tcr);
          end;

     end;

end;

procedure TfrmBaseDBPesquisaFDAC.Filtro;

begin
  if Assigned(vlProcedureFiltro) then
  begin
    try
        Filtrados:=False;
        cdsBusca.DisableControls;

        if cdsBusca.Active then
        begin

          cdsBusca.Close;
        end;
        cdsBusca.sql.Clear;

        if Assigned( vlAntesFiltro) then
          vlAntesFiltro;
        vlProcedureFiltro;

        if DBInicio.IsDesenvolvimento then
          CopyToClipBoard(cdsBusca.SQL.Text);

        if trim(cdsBusca.SQL.Text)='' then
           GeraException('ProcedureFiltro: não retornou nenhum SQL para QUERY');
        try
         cdsBusca.Open;
         if Assigned(vlDepoisFiltro) then
           vlDepoisFiltro;
         cdsBusca.Last;
         if cdsBusca.RecordCount > 1 then
           lblCntRegistros.Caption :=  IntToStr(cdsBusca.RecordCount) + ' Registros '
         else if cdsBusca.RecordCount = 0  then
           lblCntRegistros.Caption :=  ' 1 Registro '
         else
           lblCntRegistros.Caption :=  ' Nada encontrado ';

        except
          On e:exception do
          begin
            raise Exception.Create('erro de consulta:' +e.Message);
          end;

        end;

    finally
     cdsBusca.Filter := '';
     cdsBusca.Filtered := False;
     cdsBusca.EnableControls;
     cdsBusca.Refresh;
    end;
  end;
end;

procedure TfrmBaseDBPesquisaFDAC.FiltroAutoF8;

var x:integer;
    vDado: string;
begin
    cdsBusca.SQL.Clear;
    cdsBusca.SQL.Add('Select '+ vlCamposSelectF8.FieldsSelect );
    cdsBusca.SQL.Add('From '+vlAutoF8.SqlTable);

    IF vlAutoF8.CampoUnicoPesquisa then
    begin
         vDado := {'%'+}tLabeledEdit(tCampoCrud(vlCamposFiltroF8[0]).OBJ^).text;

         for x := 0 to vlCamposFiltroF8.Count-1 do
              SqlAddOR( CampoSql( tCampoCrud(vlCamposFiltroF8[x]).FieldName, vDado) );
         if Filtrados then
            cdsBusca.SQL.Add(')');
    end
    Else
    for x := 0 to vlCamposFiltroF8.Count-1 do
    begin
         vDado := tLabeledEdit(tCampoCrud(vlCamposFiltroF8[x]).OBJ^).text;
         SqlAdd( CampoSql( tCampoCrud(vlCamposFiltroF8[x]).FieldName, vDado) );
    end;
    if vlAutoF8.FiltroTabela<>'' then
       SqlAdd( vlAutoF8.FiltroTabela );


    cdsBusca.SQL.add('Order By '+vlAutoF8.SqlOrder);
end;

procedure TfrmBaseDBPesquisaFDAC.FormClose(Sender: TObject; var Action: TCloseAction);
var
  arq: string;
begin
  inherited;
  arq := DBInicio.SistemaLocal  + 'settings\' + Self.Name + DBInicio.Usuario.USERNAME  + '.grid';
  cxgrd1DBTableView1.StoreToIniFile(arq, true, [gsoUseFilter, gsoUseSummary]);
  Action := caFree;
  Self := nil;
end;

procedure TfrmBaseDBPesquisaFDAC.FormCreate(Sender: TObject);

var
  i : Integer;
  arq: string;
begin
  inherited;
  arq := DBInicio.SistemaLocal  + 'settings\' + Self.Name + DBInicio.Usuario.USERNAME  + '.grid';
  cxgrd1DBTableView1.RestoreFromIniFile(arq, true, false, [gsoUseFilter, gsoUseSummary]);
  for I := 0 to self.ComponentCount-1 do
  begin
    if self.Components[i].InheritsFrom(TFDQuery) then
    begin
      TFDQuery( self.Components[i] ).Transaction := nil;

    end;


  end;
end;

procedure TfrmBaseDBPesquisaFDAC.FormDestroy(Sender: TObject);
begin
  inherited;
  TForm(Sender) := nil;
end;

procedure TfrmBaseDBPesquisaFDAC.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if GetKeyState( VK_CONTROL ) and 128 > 0 then // control pressionado
  begin
       if key = VK_N then // Ctrl + N
       begin
          if btnNovo.Enabled then
             btnNovo.click;
          key:=0;
       end
       else
       if key = VK_DELETE then // Ctrl + DEL
       begin
          if btnExclui.enabled then
             btnExclui.Click;
          key := 0;
       end
       else
       if key = VK_F5 then // Ctrl + DEL
       begin
          if btnCalc.enabled then
             btnCalc.Click;
          key := 0;
       end ;

  end
  Else
  begin

       if key = VK_F9 then //
       begin
          if btnConsulta.Enabled then
             btnConsulta.Click;
          key := 0;
       end
       else
       if key = VK_F10 then //
       begin
            if btnEdita.Enabled then
               btnEdita.Click;
          key:=0;
       end
      else if (Key=VK_ESCAPE) then
      begin
        self.close;
        key := 0;
      end;

  end;

end;

procedure TfrmBaseDBPesquisaFDAC.FormShow(Sender: TObject);
begin
  inherited;
  if Menu <> '' then
  Begin
    qUsuMenu.SQL.Text := 'select usa_alteracao, usa_inclusao, usa_exclusao, usa_relatorio from USUARIO_ACESSO where usa_cod_usuario = ' +  DBInicio.Usuario.CODIGO+
    ' and UPPER(usa_menu) = UPPER(' +QuotedStr(Menu)  +')';

     qUsuMenu.Open;
   if qUsuMenu.IsEmpty then
   begin
    btnNovo.Enabled := false;
    btnEdita.Enabled := false;
    btnexclui.Enabled := false;
    btnrelatorios.Enabled := false;
    btnMP_Expotar.Enabled :=  false;

   end
   else
   begin
    btnNovo.Enabled := (qUsuMenu.FieldByName('usa_inclusao') .AsString = 'S');
    btnEdita.Enabled := (qUsuMenu.FieldByName('usa_alteracao') .AsString = 'S');
    btnexclui.Enabled :=  (qUsuMenu.FieldByName('usa_exclusao').AsString = 'S');

    btnrelatorios.Enabled := (qUsuMenu.FieldByName('usa_relatorio').AsString = 'S');
    btnMP_Expotar.Enabled :=  (qUsuMenu.FieldByName('usa_relatorio').AsString = 'S');
   end;
  End;

end;

function TfrmBaseDBPesquisaFDAC.GetProcedureFitro: tProcedureFiltro;
begin
   Result := vlProcedureFiltro;
end;

function TfrmBaseDBPesquisaFDAC.GetProcedureFitroDetalhe: tProcedureFiltro;
begin
   Result := vlProcedureFiltroDetalhe;
end;

procedure TfrmBaseDBPesquisaFDAC.LimpaComponentes(pcmp: tWinControl);
var x,y: integer;
begin
  y := Self.ComponentCount-1;
  for x := 0 to y do
  begin
       if tWinControl(Self.Components[x]).parent=pcmp then
       begin
            if Self.Components[x].inheritsfrom(tCustomEdit) then
               tCustomEdit(Self.Components[x]).clear
            Else
            if Self.Components[x].inheritsfrom(TComboBox) then
               TComboBox(Self.Components[x]).itemindex:=TComboBox(Self.Components[x]).tag
            Else
            if Self.Components[x].inheritsfrom(TGroupBox) or
               Self.Components[x].inheritsfrom(TPanel) then
               LimpaComponentes(tWinControl(Self.Components[x]));
       end;
  end;

end;

procedure TfrmBaseDBPesquisaFDAC.miExcelClick(Sender: TObject);
begin
  inherited;
  if not(cdsBusca.active) or
    (cdsBusca.RecordCount <= 0) then
    GeraException('Não Existem Registros!');

  SaveDialog1.Filter := 'Planilha Excel |*.xls ';    //'Text file|*.txt|Word file|*.doc';
  SaveDialog1.title := 'Exportar Dados';
  SaveDialog1.DefaultExt := '.xls';

  if SaveDialog1.Execute then
  begin

    ExportGridToXLSX(SaveDialog1.FileName, cxgrd1, False, True, True, 'xlsx');
  end;
end;

procedure TfrmBaseDBPesquisaFDAC.miwordClick(Sender: TObject);
begin
  inherited;
  if not(cdsBusca.active) or
    (cdsBusca.RecordCount <= 0) then
    GeraException('Não Existem Registros!');

  SaveDialog1.Filter := 'Text file|*.txt|Word file|*.doc|Word file| *.docx ' ;    //'Text file|*.txt|Word file|*.doc';
  SaveDialog1.title := 'Exportar Dados';
  SaveDialog1.DefaultExt := '.doc';
  if SaveDialog1.Execute then
    ExportGridToText(SaveDialog1.FileName, cxgrd1, False, True, ';','','', 'csv');
end;

procedure TfrmBaseDBPesquisaFDAC.PadraoPesquisa;
begin
  inherited;

end;

procedure TfrmBaseDBPesquisaFDAC.SetAntesFiltro(const value: tProcedureFiltro);
begin
  vlAntesFiltro := value;
end;

procedure TfrmBaseDBPesquisaFDAC.SetAutoF8(const Value: TDBAutoF8);
begin

end;

procedure TfrmBaseDBPesquisaFDAC.SetDepoisFiltro(const value: tprocedureFiltro);
begin
 vlDepoisFiltro := value;
end;

procedure TfrmBaseDBPesquisaFDAC.SetProcedureFitro(const Value: tProcedureFiltro);
begin
  vlProcedureFiltro:=Value;
end;

procedure TfrmBaseDBPesquisaFDAC.SetProcedureFitroDetalhe(const Value: tProcedureFiltro);
begin
   vlProcedureFiltroDetalhe:=Value;
end;

procedure TfrmBaseDBPesquisaFDAC.SqlAdd(const stt: string);
begin
  if stt<>'' then
  begin
    if Filtrados then
      cdsBusca.SQL.Add('AND '+stt)
    else
      cdsBusca.SQL.Add('WHERE '+stt);
    Filtrados:=True;
  end;
end;

procedure TfrmBaseDBPesquisaFDAC.SqlAddOR(const stt: string);
begin
  if stt<>'' then
  begin
    if Filtrados then
      cdsBusca.SQL.Add('OR '+stt)
    else
      cdsBusca.SQL.Add('WHERE ('+stt);
    Filtrados:=True;
  end;

end;


end.
