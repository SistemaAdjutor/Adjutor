unit BaseReportForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, StdCtrls, Buttons, ACBrBase,
  ACBrCalculadora, DB, SqlExpr, ExtCtrls, FMTBcd,
  RLFilters, RLPDFFilter, DBGrids, Math,
  DBClient, Provider, RLReport, BaseDBForm, RLHTMLFilter,
  RLDraftFilter, RLRichFilter, RLXLSFilter, RLPreviewForm, RLTypes,
  uteis, frxClass, frxCrypt, Data.DBXInterBase, Data.DBXFirebird, ACBrEnterTab;

type

  tDetailSumaryAuto = class
      mvValor: Currency ;
      mvFieldName: String;
  Public
    constructor create( const pFieldName: String ) ;
    property Valor: Currency Read mvValor write mvValor;
    property FieldName: String Read mvFieldName write mvFieldName;
  end;

  TfrmBaseReport = class(TfrmBaseDB)
    rpMain: TRLReport;
    RLBand1: TRLBand;
    RLSystemInfo3: TRLSystemInfo;
    RLLabel1: TRLLabel;
    lbEmpresa: TRLLabel;
    lbTituloRel: TRLLabel;
    lbLinha1: TRLLabel;
    lbLinha2: TRLLabel;
    rlPanelLogo: TRLPanel;
    rlLogo: TRLImage;
    qBusco: TSQLQuery;
    dspBusco: TDataSetProvider;
    cdsBusco: TClientDataSet;
    RLPDFFilter1: TRLPDFFilter;
    rlFooterRel: TRLBand;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    procedure rpMainBeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure DetailSumaryAutoBeforePrint(Sender: TObject;var Text: String; var PrintIt: Boolean);
    procedure DetailAutoAfterPrint(Sender: TObject);


  private
    vlTitulo: string;
    vlLin1: string;
    vlLin2: string;
    vlGrid: tDbGrid;
    vlCompactar: Boolean;
    fProcPageSumaryAuto: tProcedureDetalheAfterPrint;
    fProcHeaderBeforePrintAuto: tProcedureDetalheAfterPrint;
    fProcDetailBeforePrintAuto: tProcedureDetalheAfterPrint ;

    fProcAfterPrintAuto: tProcedureDetalheAfterPrint;

    fPageSumaryAuto: TRLDBResult;
    fDetailSumaryAuto: tRLBand;
    fDetailSumarioListAuto: TList;

    fGroupLabelExtra, fGroupField, fGroupLabel: string;
    fZebrar, fQuadricular, fQuadroConferidoPor: boolean ;


    procedure setTitulo(const Value: string);
    procedure SetDbGrid(const Value: tDbGrid);
    procedure ZebrarListagem(Sender: TObject; var PrintIt: Boolean);
    procedure DetailSumarioAutoDestroy;
    procedure AddDetailSumarioAuto(const pFieldName: String);
    procedure SumValorSumarioAuto(const pFieldName: string);
    function GetValorSumarioAuto(const pFieldName: string): Currency;
    function ResetValorSumarioAuto(const pFieldName: string): Currency;
    procedure rlLabelGroupHeaderBeforePrint(Sender: TObject;  var Text: String; var PrintIt: Boolean);
    procedure DetailAutoBeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);


  public
    procedure setLin1(const Value: string);
    procedure setLin2(const Value: string);
    Property Titulo: string read vlTitulo write setTitulo;
    Property Lin1: string read vlLin1 write setLin1;
    Property Lin2: string read vlLin2 write setLin2;
    Property dbGrid: tDbGrid Read vlGrid Write SetDbGrid;
    Property Compactar: Boolean Read vlCompactar Write vlCompactar;

    property PageSumaryAuto: TRLDBResult Read fPageSumaryAuto write fPageSumaryAuto;
    property DetailSumaryAuto: tRLBand Read fDetailSumaryAuto write fDetailSumaryAuto;

    Property ProcPageSumaryAuto: tProcedureDetalheAfterPrint read fProcPageSumaryAuto write fProcPageSumaryAuto;
    Property ProcHeaderBeforePrintAuto: tProcedureDetalheAfterPrint read fProcHeaderBeforePrintAuto write fProcHeaderBeforePrintAuto;
    Property ProcDetailBeforePrintAuto: tProcedureDetalheAfterPrint read fProcDetailBeforePrintAuto write fProcDetailBeforePrintAuto;
    Property ProcAfterPrintAuto: tProcedureDetalheAfterPrint read fProcAfterPrintAuto write fProcAfterPrintAuto;
    property GroupField:string read fGroupField Write fGroupField;
    property GroupLabel:string read fGroupLabel Write fGroupLabel;
    Property GroupLabelExtra: string read fGroupLabelExtra write fGroupLabelExtra;

    property Zebrar: boolean Read fZebrar Write fZebrar;
    Property Quadricular: boolean read fQuadricular write fQuadricular;

    property QuadroConferidoPor: Boolean read fQuadroConferidoPor write fQuadroConferidoPor;


  end;

var
  frmBaseReport: TfrmBaseReport;

implementation

Uses InicioDB;

{$R *.dfm}

procedure TfrmBaseReport.rpMainBeforePrint(Sender: TObject;
  var PrintIt: Boolean);

begin
  inherited;
  rlLogo.Picture.Bitmap.Assign(DbInicio.Empresa.LOGO);
  lbEmpresa.Caption:=dbInicio.Empresa.RAZAO;
end;

procedure TfrmBaseReport.ZebrarListagem(Sender: TObject;
  var PrintIt: Boolean);
var cor: tColor;
begin
  inherited;
  if fZebrar then
  begin
       cor := (Sender as tRlBand).Color;
       if cor=clZebra then
          cor:=clWhite
       Else
          cor:=clZebra;
       (Sender as tRlBand).color:=Cor;
  end;

  if Assigned(fProcPageSumaryAuto) then
     fProcPageSumaryAuto( Self );

  if Assigned(ProcDetailBeforePrintAuto) then
     ProcDetailBeforePrintAuto( Self );

end;

procedure TfrmBaseReport.rlLabelGroupHeaderBeforePrint(Sender: TObject; var Text: String; var PrintIt: Boolean);
begin
  inherited;
  Text := GroupLabel+' '+rpMain.DataSource.DataSet.FieldByName( GroupField ).asstring+fGroupLabelExtra;
end;

procedure TfrmBaseReport.SetDbGrid(const Value: tDbGrid);
var pW, cn,x,lf: integer;
    pMult: Double;
    RLBand, RLBand2, RLBandS, rlGroupHeader: tRlBand;
    RLLabel, RLDBSum, rlLabelGroupHeader: tRlLabel;
    RLDbText: tRlDBText;
    RLDBResult: TRLDBResult;
    lSumarios: string;
    RLGroup: tRlGroup;
    Obj: tComponent;
    //rlDraw: TRLDraw;
    rlPanel: TRLPanel;
    rlMemo: TRLMemo;

///
   Procedure CompactaRelAuto;
   begin
        rpMain.Font.Name:='Times New Roman';

        rpMain.Font.Size:=7;//5;
        RLBand2.Height:=15;//10;
        pMult:=0.80;//0.67;
   end;
///
   Procedure SetDataSetAuto;
   begin
        vlGrid.DataSource.DataSet.First;
        vlGrid.DataSource.DataSet.Last;
        vlGrid.DataSource.DataSet.First;
        rpMain.DataSource:=vlGrid.DataSource;
   end;
///
   Procedure SetGroupAuto;
   begin
         if fGroupField<>'' then
         begin

               RLGroup:=tRlGroup.Create(rpMain);
               RLGroup.Parent:=rpMain;
               RlGroup.Visible:=True;
               if fQuadricular then
               begin
                    RlGroup.Borders.DrawLeft:=True;
                    RlGroup.Borders.DrawRight:=True;
                    RlGroup.Borders.DrawTop:=True;
                    RlGroup.Borders.DrawBottom:=True;
               end;


               rlGroupHeader:=TRLBand.Create(RLGroup);
               rlGroupHeader.parent:=RLGroup;
               rlGroupHeader.BandType:=btColumnHeader;
               rlGroupHeader.Height:=20;
               rlGroupHeader.Visible:=True;
               rlGroupHeader.Borders.DrawBottom:=True;
               if fQuadricular then
               begin
                    rlGroupHeader.Borders.DrawLeft:=True;
                    rlGroupHeader.Borders.DrawRight:=True;
                    rlGroupHeader.Borders.DrawTop:=True;
                    rlGroupHeader.Borders.DrawBottom:=True;
               end;


               rlLabelGroupHeader := tRLLabel.Create(rlGroupHeader);
               rlLabelGroupHeader.Parent:=rlGroupHeader;
               rlLabelGroupHeader.Left:=5;
               rlLabelGroupHeader.Top:=3;
               rlLabelGroupHeader.AutoSize:=True;
               rlLabelGroupHeader.Visible :=True;
               rlLabelGroupHeader.BeforePrint:=rlLabelGroupHeaderBeforePrint;

               Obj := RLGroup;
         end
         Else
             Obj := rpMain;
   end;
///
   function TextAlgnmentToRlAlignment( pAlign: tAlignment ): TRLTextAlignment;
   begin
        case pAlign of
        Classes.taLeftJustify: Result := RLReport.taLeftJustify;
        Classes.taRightJustify: Result := RLReport.taRightJustify;
        Classes.taCenter: Result := RLReport.taCenter;
        end;
   end;
///
begin

     vlGrid := Value;
     if assigned(vlGrid) then
     begin

          if fQuadricular then
          begin
             rpmain.Borders.DrawLeft:=True;
             rpmain.Borders.DrawRight:=True;
             rpmain.Borders.DrawTop:=True;
             rpmain.Borders.DrawBottom:=True;
             rlBand1.Borders.DrawLeft:=True;
             rlBand1.Borders.DrawRight:=True;
             rlBand1.Borders.DrawTop:=True;
             rlBand1.Borders.DrawBottom:=True;
          end;


          SetDataSetAuto;
          SetGroupAuto;

          RlBand:=TRLBand.Create( Obj );
          RlBand.Parent:=TWinControl(Obj);
          RlBand.BandType:=btColumnHeader;
          RlBand.Height:=20;
          RlBand.Visible:=True;
          if fQuadricular then
          begin
             RLBand.Borders.DrawLeft:=True;
             RLBand.Borders.DrawRight:=True;
             RLBand.Borders.DrawTop:=True;
             RLBand.Borders.DrawBottom:=True;
          end;


          RlBand2:=TRLBand.Create( Obj );
          RlBand2.Parent:=TWinControl(Obj);
          RlBand2.BandType:=btDetail;
          RLBand2.Height:=16;
          RLBand2.Visible:=True;
          RLBand2.BeforePrint:=ZebrarListagem;
          if fQuadricular then
          begin
             RLBand2.Borders.DrawLeft:=True;
             RLBand2.Borders.DrawRight:=True;
             RLBand2.Borders.DrawTop:=True;
             RLBand2.Borders.DrawBottom:=True;
             RLBand2.Height:=20;
          end;


          //RLBand2.AfterPrint:=DetailAfterPrintAuto;


          cn := VlGrid.Columns.count-1;

          lf := 5;
          for x := 0 to cn do
            if vlGrid.columns[x].Visible then
              lf:=lf+vlGrid.columns[x].width+3;

          pMult:=1;
          if lf>(rpmain.Width-10)  then
          begin
             rpMain.pagesetup.Orientation:=poLandscape;
             if lf>(rpmain.Width-10) then
                CompactaRelAuto;
          end;

          If Compactar then
             CompactaRelAuto;

          lf := 5;
          lSumarios:='';
          for x := 0 to cn do
          begin
            if vlGrid.columns[x].Visible then
            begin
               pW := Floor( vlGrid.columns[x].width * pMult );
               RLLabel := tRLLabel.Create(RLBand);
               RLLabel.Parent:=RLBand;
               RLLabel.Left:=lf;
               RLLabel.Top:=3;
               RLLabel.AutoSize:=False;
               RLLabel.Borders.DrawBottom:=True;
               RLLabel.Caption:=vlGrid.columns[x].title.caption;
               RLLabel.width:=pW;
               RLLabel.Alignment:=TextAlgnmentToRlAlignment( vlGrid.columns[x].title.Alignment );
               RLLabel.Visible:=True;

               RLDBText := tRLDBText.Create(RLBand2);
               RLDBText.Parent:=RLBand2;
               RLDBText.Left:=lf;
               RLDBText.Top:=1;
               RLDBText.AutoSize:=False;
               RLDBText.DataSource:=vlGrid.DataSource;
               RLDBText.DataField:=vlGrid.columns[x].FieldName;
               RLDBText.Alignment:=TextAlgnmentToRlAlignment(vlGrid.columns[x].Alignment);
               RLDBText.width:=pW;
               RLDBText.Visible:=True;
               RLDBText.BeforePrint:=DetailAutoBeforePrint;
               RLDBText.AfterPrint:=DetailAutoAfterPrint;

               if fQuadricular then
               begin
                    RlLabel.Borders.DrawBottom:=False;

                    if x<cn then
                    begin
                         RLLabel := tRLLabel.Create(RLBand);
                         RLLabel.Parent:=RLBand;
                         RLLabel.Left:=lf+pw+2;
                         RLLabel.Top:=0;
                         RLLabel.Width:=1;
                         RLLabel.align := faHeight;
                         RLLabel.Borders.DrawLeft:=True;
                         RLLabel.Visible:=True;

                         RLLabel := tRLLabel.Create(RLBand2);
                         RLLabel.Parent:=RLBand2;
                         RLLabel.Left:=lf+pw+2;
                         RLLabel.Top:=0;
                         RLLabel.Width:=1;
                         RLLabel.align := faHeight;
                         RLLabel.Borders.DrawLeft:=True;
                         RLLabel.Visible:=True;
                    end;

                    RLBand2.Height:=20;
                    RLDBText.Top:=3;

               End;

               lf:=lf+pW+3;

               //sumario

               if vlGrid.DataSource.DataSet.FieldByName(vlGrid.columns[x].FieldName).Tag>0 then   // tag > 0 -> numeros / sumarios
               begin
                    lSumarios:=','+lSumarios+vlGrid.columns[x].FieldName+',';
                    RLLabel.Alignment:=taRightJustify;
                    RLDBText.Alignment:=taRightJustify;
               end;
            end;
          end;

          RLDBResult:= TRLDBResult.Create(rlFooterRel);
          RLDBResult.Parent:=rlFooterRel;
          RLDBResult.Left := 5;
          RLDBResult.Top := 1;
          RLDBResult.DataSource := dbGrid.DataSource;
          RLDBResult.Info := riCount;
          RLDBResult.Text := 'Quantidade de Registros Listados: ';
          RLDBResult.Visible := True;
          if fQuadricular then
          begin
             RLDBResult.Borders.DrawLeft:=True;
             RLDBResult.Borders.DrawRight:=True;
             RLDBResult.Borders.DrawTop:=True;
             RLDBResult.Borders.DrawBottom:=True;
          end;

          if QuadroConferidoPor then
          begin
               rlFooterRel.Height:=139;

               rlPanel := TRLPanel.Create( rlFooterRel );
               rlPanel.Parent:=rlFooterRel;
               rlPanel.top:=32;
               rlPanel.Left:=8;
               rlPanel.Height:=96;
               rlPanel.Width:=308;
               rlPanel.Borders.Sides:=sdAll;
               rlPanel.Visible:=True;

               RLLabel := tRLLabel.Create(RlPanel);
               RLLabel.Parent:=RlPanel;
               RLLabel.Left:=7;
               RLLabel.Top:=5;
               RLLabel.Caption := 'Conferente: (assinar e datar)';
               RLLabel.Visible:=True;

               rlMemo:= TRLMemo.Create(RlPanel);
               rlMemo.Parent:=rlPanel;
               rlMemo.Alignment := taCenter;
               rlMemo.top:=61;
               rlMemo.Left:=27;
               rlMemo.Width := 63;
               rlMemo.Lines.Add('___/___/______');
               rlMemo.Lines.Add('DATA');
               rlMemo.Visible := True;

               rlMemo:= TRLMemo.Create(RlPanel);
               rlMemo.Parent:=rlPanel;
               rlMemo.Alignment := taCenter;
               rlMemo.top:=61;
               rlMemo.Left:=80;
               rlMemo.Width:=240;
               rlMemo.Lines.Add('___________________________________');
               rlMemo.Lines.Add('VISTO CONFERENTE');
               rlMemo.Visible := True;

          end;

          fPageSumaryAuto:=RLDBResult;

          if lSumarios<>'' then
          begin
               RlBandS := tRLBand.Create(rpMain);
               RlBandS.Parent:=rpMain;
               RlBandS.BandType:=btSummary;
               RLBandS.Height:=16;
               RLBandS.Visible:=True;
               RLBandS.BeforePrint:=ZebrarListagem;
               lf := 5;
               for x := 0 to cn do
               begin
                    pW := Floor( vlGrid.columns[x].width * pMult );
                    if Pos(','+vlGrid.columns[x].FieldName+',',lSumarios)>0 then
                    begin
                         RLDBSum := tRlLabel.Create(RLBandS);
                         RLDBSum.Parent:=RLBandS;
                         //RLDBSum.AutoSize:=True;
                         RLDBSum.Left:=lf;
                         RLDBSum.Top:=0;
                         RLDBSum.AutoSize:=False;

                         //RLDBSum.DataSource:=vlGrid.DataSource;
                         //RLDBSum.DataField:=vlGrid.columns[x].FieldName;

                         RLDBSum.width:=pW;
                         RLDBSum.Visible:=True;
                         //RLDBSum.Info:=riSum;
                         RLDBSum.Font.Style:=[fsBold];
                         RLDBSum.Borders.DrawTop:=True;
                         RLDBSum.Alignment:=taRightJustify;
                         RLDBSum.Hint := vlGrid.columns[x].FieldName;
                         RLDBSum.BeforePrint:=DetailSumaryAutoBeforePrint;

                         AddDetailSumarioAuto(RLDBSum.Hint);
                    end;
                    lf:=lf+pW+3;
               end;

               fDetailSumaryAuto:=RLBandS;

          end;

     end;
     rpMain.Prepare;

end;

procedure TfrmBaseReport.setLin1(const Value: string);
begin
     lbLinha1.Caption:=Value;
     vlLin1:=Value;
end;

procedure TfrmBaseReport.setLin2(const Value: string);
begin
     lbLinha2.Caption:=Value;
     vlLin2:=Value;
end;

procedure TfrmBaseReport.setTitulo(const Value: string);
begin
     lbTituloRel.Caption:=Value;
     vlTitulo:=Value;
End;


procedure TfrmBaseReport.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  inherited;
  if Assigned(ProcHeaderBeforePrintAuto) then
     ProcHeaderBeforePrintAuto(Self);
end;

procedure TfrmBaseReport.FormCreate(Sender: TObject);
begin
     inherited;
     fDetailSumarioListAuto:=TList.Create;
     fGroupField:='';
     fGroupLabel:='';
     fGroupLabelExtra:='';
     FZebrar:=True;
     fQuadricular:=False;
     fQuadroConferidoPor:=False;
end;

procedure TfrmBaseReport.FormDestroy(Sender: TObject);
begin
  inherited;
  if Assigned(ProcAfterPrintAuto) then
    ProcAfterPrintAuto(self);

  DetailSumarioAutoDestroy ;
end;

procedure TfrmBaseReport.DetailSumarioAutoDestroy ;
var mx, x: integer;
    it : tDetailSumaryAuto;
begin
     mx := fDetailSumarioListAuto.Count;
     for x := 0 to mx-1 do
     begin
          it := tDetailSumaryAuto ( fDetailSumarioListAuto[x] ) ;
          FreeAndnil( it );
          fDetailSumarioListAuto[X]:=Nil;
     end;
     fDetailSumarioListAuto.Clear;
     FreeAndNil(fDetailSumarioListAuto);
end;

procedure TfrmBaseReport.AddDetailSumarioAuto(const pFieldName: String);
var it: tDetailSumaryAuto;
begin
     it := tDetailSumaryAuto.create( pFieldName ); // ponteiro
     fDetailSumarioListAuto.Add(it); // Lista
end;


Procedure TfrmBaseReport.SumValorSumarioAuto(const pFieldName: string);
var mx,x: integer;
    it : tDetailSumaryAuto;
begin
     mx := fDetailSumarioListAuto.count - 1;
     for x := 0 to mx do
     begin
          it := tDetailSumaryAuto(fDetailSumarioListAuto[x]); // pointer
          if it.FieldName  = pFieldName then
          begin
               it.Valor := it.Valor + tCurrencyField(rpMain.DataSource.DataSet.FieldByName( pFieldName )).AsCurrency;
          end;
     end;
end;

Function TfrmBaseReport.GetValorSumarioAuto(const pFieldName: string):Currency;
var mx,x: integer;
    it : tDetailSumaryAuto;
begin
     Result := 0;
     mx := fDetailSumarioListAuto.count - 1;
     for x := 0 to mx do
     begin
          it := tDetailSumaryAuto(fDetailSumarioListAuto[x]); // pointer
          if it.FieldName  = pFieldName then
          begin
               Result := it.Valor;
          end;
     end;
end;

Function TfrmBaseReport.ResetValorSumarioAuto(const pFieldName: string):Currency;
var mx,x: integer;
    it : tDetailSumaryAuto;
begin
     Result := 0;
     mx := fDetailSumarioListAuto.count - 1;
     for x := 0 to mx do
     begin
          it := tDetailSumaryAuto(fDetailSumarioListAuto[x]); // pointer
          if it.FieldName  = pFieldName then
          begin
               it.Valor := 0;
          end;
     end;
end;

constructor tDetailSumaryAuto.create( const pFieldName: String ) ;
begin
     Valor := 0;
     FieldName := pFieldName;
end;

procedure TfrmBaseReport.DetailSumaryAutoBeforePrint(Sender: TObject;   var Text: String; var PrintIt: Boolean);
begin
  inherited;
  with tRlLabel(sender) do
  begin
       Text := FormatFloat ( tCurrencyField(rpMain.DataSource.DataSet.FieldByName( Hint )).DisplayFormat, GetValorSumarioAuto( Hint ) );
       ResetValorSumarioAuto( Hint );
  end;
end;

procedure TfrmBaseReport.DetailAutoAfterPrint(Sender: TObject);
begin
     inherited;
     SumValorSumarioAuto( tRLDBText(sender).DataField );
end;

procedure TfrmBaseReport.DetailAutoBeforePrint(Sender: TObject; var Text: String; var PrintIt: Boolean);
begin
  inherited;
  try
    if Assigned(TRLDBText( Sender ).Field.OnGetText) then
       TRLDBText( Sender ).Field.OnGetText(TRLDBText( Sender ).Field, text, true)
    else
       Text := TRLDBText( Sender ).Field.AsString;
  except
    //silencioso
  end;
end;

end.
