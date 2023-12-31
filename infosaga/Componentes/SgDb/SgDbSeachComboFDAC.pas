unit SgDbSeachComboFDAC;

// {$D-}

interface

uses 

Classes, StdCtrls, Buttons, ExtCtrls,
 Vcl.Grids, System.SysUtils,
 DB, DBCtrls, Controls, Messages, Windows, Graphics, Dialogs,Forms, 
 FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
 FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Phys.FBDef, FireDAC.UI.Intf, FireDAC.VCLUI.Wait, FireDAC.VCLUI.Error,
 FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.FB,
 FireDAC.Comp.Client, FireDAC.Comp.UI, FireDAC.Phys.IBBase, FireDAC.Comp.DataSet,
 Vcl.DBGrids, fdac.SgDbAutoF8Unit;

type

 TBeforeSelectedEvent = procedure(Sender: TObject;  text: TCaption) of object;
 tAGrid = class(tCustomDBGrid);

 TDbSearchComboUnitFDAC = class(tCustomEdit)

  procedure TmrOnTimer(Sender: TObject);
  procedure GridClick(Sender: TObject);
  procedure DBGridDrawColumnCell(Sender: TObject; const Rect: TRect;
    DataCol: Integer; Column: TColumn; State: TGridDrawState);
 private
  FOnBeforeSelectedGrid : TBeforeSelectedEvent;
  FOnKeyPress: tKeyPressEvent;
  vlReadDataLinkValue: Boolean;
  vlAfterOpen: Boolean;
  vlCorrigido: Boolean;
  vlButton: tSpeedButton;
  vlButtonClick: tNotifyEvent;
  vlBeforeClickGrid : tNotifyEvent;
  vlAutoF8: TDBAutoF8;
  vlIdRetorno: string;
  vlTimer: tTimer;
  vlEmptyText: string;
  vlGrid: tDbGrid;
  vlText: string;
  vlQry: TFDQuery;
  vlDS: tDataSource;
  vlLookupKeyField: string;
  vlGridClick: Boolean;
  vlUpdatingData: Boolean;
  vlDataLink: tFieldDataLink;
  vlLookupSelect: string;
  vlLookupOrderBy: string;
  vlLookupTable: string;
  vlLookupDispl: string;
  vlGridAutoSize: Boolean;
  vlFiltroTabela: String;
  vlOnSelect: tNotifyEvent;
  fShowButton: Boolean;
  fLookupGroup: string;
  fLookupTableShare: string;
  fAutoF8Columns: String;
  fAutoF8Title: string;
  fFiltroEmpresa: String;
  fAutoF8CrudInfo: tStrings;
  fFiltrar: Boolean;
  fDataFieldFormat: string;
  fListaCamposGrid: string;
  fListaTituloCamposGrid: string;
  fListaCamposWhere: string;
  fWherePersonalizado : string; // where personalizado, ou seja a pessoa faz por fora o where
  vlAtribCampos: Boolean;
  vlGridLeft: Integer;
  vlGridWidth: Integer;
  vlGridHeight: Integer;
  vlGridTop : Integer;
  vlGridShowWhenEnter: Boolean;
  vlSelectWithDoubleClick: Boolean;
  vlLimparCampoAoSair: boolean;
  FFDACConn : TFDConnection;
  vAtivarFiltro : boolean;
  // fDataFieldShow: boolean ;

  procedure Filtro;
  procedure HideGrid;
  procedure ShowGrid;
  procedure CalculaCoordenadasFormParent(var pPonto: tPoint);
  function GetFormParent: tForm;
  procedure MontaSql;

  function GetAutoF8: TDBAutoF8;
  procedure SetAutoF8(const Value: TDBAutoF8);
  procedure SetIdRetorno(const Value: string);
  function GetDataField: String;
  function GetDataSource: tDataSource;
  procedure SetDataField(const Value: String);
  procedure SetDataSource(const Value: tDataSource);
  procedure DataLinkChange(Sender: TObject);
  procedure SetLookupKeyField(const Value: string);
  procedure SetDataLinkValue(pId: string);
  function GetIdByText(const Value: string): String;
  procedure SetVlQry(const Value: TFDQuery);
  procedure FechaTudo;
  Procedure FldGetText(Sender: TField; var Text: string; DisplayText: Boolean);
  procedure CdsAfterOpen(DataSet: TDataSet);
  function GetField: TField;
  function GetIdRetorno: string;
  procedure TestarSeAindaExiste;
  procedure SetShowButton(const Value: Boolean);
  procedure MontaSqlById;
  procedure SetEmptyText(const Value: String);
  procedure CreateAutoF8;
  procedure TestarErrosAdjutor;
  procedure SetLookupTableShare(const Value: string);
  function GetFiltroEmpresa: string;
  procedure MontaSqlByIdNulo;
  function GetSql: String;
  procedure ShowErrRegistroNaoLocalizado;
  function GetCds : TFDQuery;
  function MontaWhere: string;
  procedure SetLookupDispl(const Value: string);
  procedure KeyPress(var Key: Char); Override;
  function GetParentada(pComponent: tWinControl): string;
  procedure SetButton (const value : tSpeedButton);
  // procedure SetDataFieldShow(const Value: boolean);

 public
  procedure Resize;
  constructor Create(AOwner: TComponent); override;
  Destructor Destroy; override;
  procedure SetBounds(ALeft: Integer; ATop: Integer; AWidth: Integer;
    AHeight: Integer); override;
  procedure Click; override;
  Property Button: tSpeedButton Read vlButton write SetButton;
  Property Field: TField Read GetField;
  Property idRetorno: string Read GetIdRetorno write SetIdRetorno;
  Procedure Clear; override;
  Procedure AtribSql(const pDset: TFDQuery);
  procedure DefaultButtonClick(Sender: TObject);
  Property SqlText: String Read GetSql;
  property WherePersonalizado: string read fWherePersonalizado write fWherePersonalizado;
  Property CDS: TFDQuery Read GetCds;
 protected

  procedure DoAutoF8;
  procedure SetParent(AParent: tWinControl); override;
  procedure Notification(AComponent: TComponent;
    Operation: TOperation); override;
  procedure SetName(const Value: TComponentName); override;

  procedure CMVisiblechanged(var Message: TMessage); message CM_VISIBLECHANGED;
  procedure CMEnabledchanged(var Message: TMessage); message CM_ENABLEDCHANGED;
  procedure CMBidimodechanged(var Message: TMessage);
    message CM_BIDIMODECHANGED;
  procedure CMExit(var Message: TCMExit); message CM_EXIT;
  procedure CMEnter(var Message: TCMEnter); message CM_ENTER;
  procedure CMMouseWhell(var Message: TCMMouseWheel); message CM_MOUSEWHEEL;

  procedure Change; Override;
  procedure KeyDown(var Key: Word; Shift: TShiftState); override;

 published

  Property EmptyText: String Read vlEmptyText wRITE SetEmptyText;
  Property OnEnter;
  property TabStop;
  property TabOrder;
  property Text;
  Property OnExit;
  property OnChange;
  Property ReadOnly;
  Property OnKeyDown;
  Property OnBeforeGridClick : TBeforeSelectedEvent read FOnBeforeSelectedGrid write FOnBeforeSelectedGrid;
  property OnKeyPress: tKeyPressEvent read FOnKeyPress write FOnKeyPress;
  Property OnkeyUp;
  Property CharCase;
  property Visible;
  property Enabled;
  property color;
  property font;
  property OnClick;

  Property LookupSelect: string Read vlLookupSelect Write vlLookupSelect;
  Property LookupOrderBy: string Read vlLookupOrderBy Write vlLookupOrderBy;
  Property LookupTable: string Read vlLookupTable Write vlLookupTable;
  Property LookupDispl: string Read vlLookupDispl Write SetLookupDispl;
  Property OnButtonClick: tNotifyEvent Read vlButtonClick Write vlButtonClick;
  Property OnBeforeClickGrid : tNotifyEvent read vlBeforeClickGrid write vlBeforeClickGrid;
  Property OnSelect: tNotifyEvent Read vlOnSelect Write vlOnSelect;
  Property GridAutoSize: Boolean Read vlGridAutoSize Write vlGridAutoSize;

  Property LookupSource: TFDQuery read vlQry write SetVlQry;
  Property AutoF8: TDBAutoF8 read GetAutoF8 write SetAutoF8;

  Property DataField: String Read GetDataField write SetDataField;
  Property DataSource: tDataSource Read GetDataSource write SetDataSource;

  Property LookupKeyField: string Read vlLookupKeyField write SetLookupKeyField;

  Property FiltroTabela: String Read vlFiltroTabela Write vlFiltroTabela;
  Property ShowButton: Boolean Read fShowButton Write SetShowButton;

  Property LookupGroup: string Read fLookupGroup Write fLookupGroup;
  Property LookupTableShare: string Read fLookupTableShare
    Write SetLookupTableShare;
  Property LookupWhere: String Read fListaCamposWhere Write fListaCamposWhere;


  Property AutoF8WinTitulo: string Read fAutoF8Title write fAutoF8Title;
  Property AutoF8ColumnsTitulo: String Read fAutoF8Columns write fAutoF8Columns;
  Property AutoF8CrudInfo: tStrings Read fAutoF8CrudInfo Write fAutoF8CrudInfo;
  Property DataFieldFormat: string Read fDataFieldFormat write fDataFieldFormat;
  Property LookupDbGridColumns: string Read fListaCamposGrid
    Write fListaCamposGrid;
  Property LookupDbGridColumnsTitle: string Read fListaTituloCamposGrid
    Write fListaTituloCamposGrid;

  Property GridLeft: Integer Read vlGridLeft Write vlGridLeft;
  Property GridWidth: Integer Read vlGridWidth Write vlGridWidth;
  Property GridHeight: Integer Read vlGridHeight Write vlGridHeight;
  property GridTop : Integer read vlGridTop write vlGridTop;
  Property GridShowWhenEnter: Boolean Read vlGridShowWhenEnter Write vlGridShowWhenEnter;
  Property SelectWithDoubleClick: Boolean Read vlSelectWithDoubleClick Write vlSelectWithDoubleClick;
  Property LimparCampoAoSair : boolean read vlLimparCampoAoSair write vlLimparCampoAoSair;
  // Property DataFieldShow: boolean Read  fDataFieldShow write SetDataFieldShow;
  Property FDACConn: TFDConnection  read FFDACConn write FFDACConn;
 end;

Procedure Register;

implementation

Uses  uteis, InicioDB, BaseDBPesquisaFDAC;

Procedure Register;
begin
 RegisterComponents('Novi', [TDbSearchComboUnitFDAC]);
end;


{ TDbSearchComboUnitFDAC }

procedure TDbSearchComboUnitFDAC.CMBidimodechanged(var Message: TMessage);
begin
 inherited;
 if vlButton <> nil then
  vlButton.BiDiMode := BiDiMode;
end;

procedure TDbSearchComboUnitFDAC.CMEnabledchanged(var Message: TMessage);
begin
 inherited;
 if vlButton <> nil then
  vlButton.Enabled := Enabled;
end;

procedure TDbSearchComboUnitFDAC.CMEnter(var Message: TCMEnter);
begin
 inherited;

 vAtivarFiltro := true;
 if vlGridShowWhenEnter then
 begin
  idRetorno := '';
  MontaSql;
  ShowGrid;
 end;

end;

procedure TDbSearchComboUnitFDAC.CMVisiblechanged(var Message: TMessage);
begin
 inherited;
 if vlButton <> nil then
 begin
  vlButton.Visible := Visible and  self.Visible;
  Button.Visible :=Visible and  self.Visible;
 end;
end;

constructor TDbSearchComboUnitFDAC.Create(AOwner: TComponent);
var
 vBitmap: tBitMap;
begin
  vAtivarFiltro:= False;
 vlGridLeft := 0;
 vlGridWidth := 0;
 vlGridTop := 0;
 vlGridHeight := 100; // 6 linhas
 vlAfterOpen := False;
 vlGridShowWhenEnter := False;
 vlSelectWithDoubleClick:=False;


 fShowButton := True;
 vlAtribCampos := False;
 fListaTituloCamposGrid := '';
 fListaCamposWhere := '';
 fWherePersonalizado := '';
 fListaCamposGrid := '';
 vlCorrigido := False;
 vlIdRetorno := '';
 vlFiltroTabela := '';
 // vlEmptyText:='Selecione..';
 vlEmptyText := '';
 vlText := vlEmptyText;
 vlLookupKeyField := '';
 vlGridClick := False;
 vlUpdatingData := False;
 vlLookupSelect := '';
 vlLookupOrderBy := '';
 vlLookupTable := '';
 vlLookupDispl := '';
 fLookupGroup := '';
 vlGridAutoSize := False;
 fAutoF8Title := '';
 fAutoF8Columns := '';
 fFiltroEmpresa := '';
 fAutoF8CrudInfo := tStringList.Create;
 fFiltrar := False;
 fDataFieldFormat := '';
 vlLimparCampoAoSair := True;
 // fDataFieldShow :=False;

 vlTimer := tTimer.Create(self);
// vlTimer.Enabled := False;
 vlTimer.Interval := 200000; // JAIRO
 //vlTimer.OnTimer := TmrOnTimer;

// vlDSP := tDataSetProvider.Create(self);
// vlDSP.Name := 'DSP' + IntToStr(NumeroAleatorio);

// vlCDS := tClientDataSet.Create(self);
// vlcds.SetProvider(vlDSP);
// vlCDS.ProviderName := vlDSP.Name;
// vlCDS.FetchOnDemand := True;
// vlCDS.PacketRecords := 16;

 // vlQry.ReadOnly := True;
// vlCDS.AfterOpen := CdsAfterOpen;

 vlDS := tDataSource.Create(self); // data source interno para a tabela lookup;
 vlDS.DataSet := vlQry;
 vlDS.AutoEdit := False;

 vlDataLink := tFieldDataLink.Create;
 vlDataLink.OnDataChange := DataLinkChange;

 inherited Create(AOwner);


 if LimparCampoAoSair then
    Text := vlEmptyText;

 vlButton := tSpeedButton.Create(self);
 vlButton.FreeNotification(self);
 vlButton.onClick := DefaultButtonClick;
 // vlButton.Height:=Height;
 try
  vBitmap := tBitMap.Create;
  vBitmap.LoadFromResourceName(hinstance, 'TSGDBSEARCHCOMBO_C');
  vlButton.Glyph.Assign(vBitmap);
 finally
  FreeAndNil(vBitmap);
 end;

end;

procedure TDbSearchComboUnitFDAC.Notification(AComponent: TComponent;
  Operation: TOperation);
begin
 inherited Notification(AComponent, Operation);
 if (Operation = opRemove) then
 begin
  if (AComponent = vlButton) Then
   vlButton := nil
  Else if (AComponent = vlTimer) Then
   vlTimer := nil
  Else if (AComponent = vlGrid) Then
   vlGrid := nil
  Else if (AComponent = vlDS) Then
   vlDS := nil;
 end;
end;

procedure TDbSearchComboUnitFDAC.Resize;
begin
  if not(csDesigning in ComponentState) then
  begin
     if assigned(vlQry) and assigned (vlGrid) then
     begin
       vlGrid.Height := vlGridHeight;
       if vlGridWidth > 0 then
          vlGrid.Width := vlGridWidth
       Else
          vlGrid.Width := (self.Width + 1 + vlButton.Width);
     end;
  end;
end;

procedure TDbSearchComboUnitFDAC.SetAutoF8(const Value: TDBAutoF8);
begin
 vlAutoF8 := Value;
end;

procedure TDbSearchComboUnitFDAC.SetBounds(ALeft, ATop, AWidth, AHeight: Integer);
var
 P: tPoint;
begin
 inherited SetBounds(ALeft, ATop, AWidth, AHeight);
 if vlButton = nil then
  Exit;
 P := Point(Left + Width + 1, Top + ((Height - vlButton.Height) div 2));
 vlButton.SetBounds(P.x, P.y, vlButton.Width, vlButton.Height);
end;

procedure TDbSearchComboUnitFDAC.SetButton(const value: tSpeedButton);
begin
  vlButton:= Value;
end;

procedure TDbSearchComboUnitFDAC.SetDataField(const Value: String);
begin
 vlDataLink.FieldName := Value;


end;


procedure TDbSearchComboUnitFDAC.DataLinkChange(Sender: TObject);
var
 NewID: string;
begin
 if not vlUpdatingData then
  try
   vlUpdatingData := True;
   if assigned(DataSource) then
   begin
    if assigned(DataSource.DataSet) then
    begin
     if DataSource.DataSet.active then
     begin
      if not(csDestroying in ComponentState) then
      begin
       if vlDataLink.Field.IsNull then
        NewID := ''
       Else
       begin
        try

         if (fDataFieldFormat <> '') then
          NewID := FormatFloat(fDataFieldFormat,
            StrToFloatDef(trim(vlDataLink.Field.asstring), 0))
         Else
          NewID := trim(vlDataLink.Field.asstring);

        Except
         raise; // Exception.Create( 'DataLink Value is Invalid: '+vlDataLink.FieldName+'='+vlDataLink.Field.AsString );
        end;
       end;
       try
        vlReadDataLinkValue := True;
        if idRetorno <> NewID then
         idRetorno := NewID;
       finally
        vlReadDataLinkValue := False;
       end;
      end;
     end;
    end;
   end;
  finally
   vlUpdatingData := False;
  end;
end;

procedure TDbSearchComboUnitFDAC.SetDataSource(const Value: tDataSource);
begin
 if not(vlDataLink.DataSourceFixed and (csLoading in ComponentState)) then
  vlDataLink.DataSource := Value;
 if Value <> nil then
  Value.FreeNotification(self);
end;

procedure TDbSearchComboUnitFDAC.SetEmptyText(const Value: String);
begin
 vlEmptyText := Value;
end;

Procedure TDbSearchComboUnitFDAC.MontaSqlById;
begin
 // if not (csLoading in ComponentState) then
 begin

  TestarErrosAdjutor;
  if assigned(vlQry) then
  begin
   try
    // Uteis.CopyToClipBoard ( vlQry.SQLConnection.Params.Text );
    vlQry.DisableControls;
    vlQry.Close;
    vlQry.Sql.Clear;
    vlQry.Sql.Text := 'Select ' + LookupSelect + ' from ' + LookupTable +
      ' where ' + LookupKeyField + '=' + qStr(vlIdRetorno) +
    { iif( vlFiltroTabela<>'',' and '+vlFiltroTabela, '')+ }
      ConcatSe(' and ', GetFiltroEmpresa) + ' and ( ' + self.LookupDispl +
      ' is not null )' + iif(LookupGroup <> '', ' group by ' + LookupGroup, '')
      + ' order by ' + LookupOrderBy;


   finally
    vlQry.Open;
    vlQry.EnableControls;
   end;
  end;

 end;
end;

Procedure TDbSearchComboUnitFDAC.MontaSqlByIdNulo;
begin
 // if  not (csLoading in ComponentState) then
 begin
//  vlCDS.PacketRecords := 4;
  TestarErrosAdjutor;
  if assigned(vlQry) then
  begin
   try
    vlQry.DisableControls;
    vlQry.Close;
    vlQry.Sql.Clear;
    vlQry.Sql.Text := 'Select ' + LookupSelect + ' from ' + LookupTable +
      ' where 1=2 ' + // apenas para for�ar leitura metadata
      iif(LookupGroup <> '', ' group by ' + LookupGroup, '');
   finally
 //   vlCDS.Open;
    vlQry.EnableControls;
   end;
  end;
  if LimparCampoAoSair then
    Text := vlEmptyText;
 end;
end;

procedure TDbSearchComboUnitFDAC.ShowErrRegistroNaoLocalizado;
var
 flgerr: Boolean;
begin
 if (fDataFieldFormat <> '') then
  flgerr := FormatFloat(fDataFieldFormat, StrToFloatDef(self.idRetorno.trim, 0))
    <> FormatFloat(fDataFieldFormat, 0)
 Else
  flgerr := StrToIntDef(self.idRetorno.trim, 0) <> 0;
 if flgerr then
 begin
  Text := 'ERRO: ' + idRetorno + ' Registro N�o Localizado  !';
  self.color := clRed;
 end;
end;

procedure TDbSearchComboUnitFDAC.SetIdRetorno(const Value: string);
var
 nm, NewValue, NewID: string;
begin
 if not((csDesigning in ComponentState)) then
  if (vlIdRetorno <> Value) then
  begin
   HideGrid;
   self.color := clWindow;
   if assigned(vlQry) then
   begin
    vlUpdatingData := True;
    vAtivarFiltro := False;
    vlIdRetorno := Value;
    if vlIdRetorno <> '' then
    begin
     MontaSqlById;
     if pos('.', LookupDispl) > 0 then
      nm := gettextafter(LookupDispl, '.')
     else
      nm := LookupDispl;

     if vlQry.FieldByName(nm).IsNull then
     begin
      if Not vlReadDataLinkValue then
      begin
       if LimparCampoAoSair then
         Text := vlEmptyText
      end
      Else
       ShowErrRegistroNaoLocalizado;
      selectall;
      vlIdRetorno := '';
     end
     Else
      Text := vlQry.FieldByName(nm).asstring;

     vlTimer.Enabled := False;
     // desabilita timer (ativado durante atribui��o text
     vlText := Text;

    end
    Else
     MontaSqlByIdNulo;
    NewValue := vlIdRetorno;

    if assigned(vlOnSelect) then
     vlOnSelect(self);
    vlUpdatingData := False;
   end
   Else
   begin
    if Not vlReadDataLinkValue then
    begin
      if vlLimparCampoAoSair then
         Text := vlEmptyText
    end
    Else
     ShowErrRegistroNaoLocalizado;
    vlIdRetorno := '';
    NewValue := '';
    selectall;
   end;
   if Not vlReadDataLinkValue then
    SetDataLinkValue(NewValue);
  end
  Else if (vlIdRetorno = '') or (not vlQry.active) then
  begin
   vlText := '';
   //MontaSqlByIdNulo;
  end
  else if vlIdRetorno = Value then
  begin
    if pos('.', LookupDispl) > 0 then
      nm := gettextafter(LookupDispl, '.')
    else
      nm := LookupDispl;
    vlText :=  vlQry.FieldByName(nm).asstring;

  end;

end;

procedure TDbSearchComboUnitFDAC.SetLookupDispl(const Value: string);
begin
 vlLookupDispl := Value.ToUpper;
end;

procedure TDbSearchComboUnitFDAC.SetLookupKeyField(const Value: string);
begin
 vlLookupKeyField := Value;
end;

procedure TDbSearchComboUnitFDAC.SetLookupTableShare(const Value: string);
begin
 fLookupTableShare := Value;
 fFiltroEmpresa := '';
 fFiltrar := True;
end;

procedure TDbSearchComboUnitFDAC.SetParent(AParent: tWinControl);
begin
 inherited SetParent(AParent);
 if vlButton = nil then
  Exit;
 vlButton.Parent := AParent;
 vlButton.Visible := self.Visible and visible;
end;

procedure TDbSearchComboUnitFDAC.SetShowButton(const Value: Boolean);
begin
 if fShowButton <> Value then
 begin
  fShowButton := Value;
  vlButton.Visible := Value;
  vlButton.Enabled := Value;
 end;
 if vlButton.Visible then
  vlButton.Show
 Else
  vlButton.hide;

end;

procedure TDbSearchComboUnitFDAC.SetVlQry(const Value: TFDQuery);
begin
 vlQry := Value;
 vlDS.DataSet := vlQry;
 vlDS.AutoEdit := False;
end;

procedure TDbSearchComboUnitFDAC.TestarSeAindaExiste;
var
 vqry: TFDQuery;
begin
 HideGrid;
 TestarErrosAdjutor;
 if assigned(vlQry) then
 begin
  if trim(idRetorno) <> '' then
  begin
   try
    vqry := TFDQuery.Create(self);
    vqry.Connection := vlQry.Connection;
    vqry.Sql.Text := 'Select count(*) from ' + LookupTable + ' where ' +
      LookupKeyField + '=' + qStr(trim(idRetorno));
    if delphiaberto then
     Uteis.copytoclipboard(vqry.Sql.Text);
    vqry.Open;
    if vqry.Fields[0].asInteger = 0 then
     idRetorno := '';
   finally
    vqry.Close;
    FreeAndNil(vqry);
   end;
  end;
 end
 Else
  GeraException(self.Name + '(self.classname) erro: LookupSource Faltando.');
end;

function TDbSearchComboUnitFDAC.GetParentada(pComponent: tWinControl): string;
begin
 result := pComponent.Name;
 if (not pComponent.InheritsFrom(tForm)) and (assigned(pComponent.Parent)) then
  result := GetParentada(pComponent.Parent) + '_' + result;
end;

procedure TDbSearchComboUnitFDAC.DoAutoF8;
var
 tcr: TfrmBaseDBPesquisaFDAC;
begin
   tcr := TfrmBaseDBPesquisaFDAC.Create(nil);
 try

  tcr.Name := GetParentada(self);
  // tcr.SalvaStatusGrid:=False;
  tcr.AutoF8 := vlAutoF8;
  //tcr.LeEstadoPesquisa := False;
  //tcr.SalvaEstadoPesquisa := False;
  //tcr.SalvaStatusGrid := False;
  if readonly then
   tcr.btnSelect.Enabled := False;
  tcr.ShowModal;
  if (tcr.ModalResult = mrOk) and (not readonly) then
   idRetorno := tcr.idRetorno
  Else
   TestarSeAindaExiste;
 finally
  tcr.Close;
  FreeAndNil(tcr);
 end;
end;

procedure TDbSearchComboUnitFDAC.DefaultButtonClick(Sender: TObject);
begin
 if not(csDesigning in ComponentState) then
 begin
  if assigned(vlButtonClick) then
   vlButtonClick(Sender)
  else
  begin
   //retirado porque n�o atualizava a pesquisa quando alterava o filtrotabela
   //if not assigned(vlAutoF8) then
    CreateAutoF8;
   DoAutoF8;
  end;
 end;
end;

destructor TDbSearchComboUnitFDAC.Destroy;
begin
 if assigned(vlButton) then
  FreeAndNil(vlButton); // .Free;
 if assigned(vlTimer) then
  FreeAndNil(vlTimer); // .Free;
 if assigned(vlGrid) then
  FreeAndNil(vlGrid); // .Free;
 if assigned(vlDS) then
  FreeAndNil(vlDS); // .Free;
 if assigned(vlDataLink) then
  FreeAndNil(vlDataLink); // .Free;
 if assigned(fAutoF8CrudInfo) then
 begin
  fAutoF8CrudInfo.Clear;
  FreeAndNil(fAutoF8CrudInfo); // .Free;
 end;
 inherited;
end;

procedure TDbSearchComboUnitFDAC.Clear;
begin
 inherited Clear;
 idRetorno := '';
end;

procedure TDbSearchComboUnitFDAC.Click;
begin
 inherited;
 self.selectall;
end;

procedure TDbSearchComboUnitFDAC.HideGrid;
begin
 if not(csDesigning in ComponentState) then
 begin
  if assigned(vlGrid) then
  begin
   vlGrid.Visible := False;
   vlGrid.hide;
  end;
 end;
end;

function TDbSearchComboUnitFDAC.GetAutoF8: TDBAutoF8;
begin
 result := vlAutoF8;
end;


function TDbSearchComboUnitFDAC.GetCds: TFDQuery;
begin
  result := vlQry
end;

function TDbSearchComboUnitFDAC.GetDataField: String;
begin
 result := vlDataLink.FieldName;
end;

function TDbSearchComboUnitFDAC.GetDataSource: tDataSource;
begin
 if vlDataLink <> Nil then
  if assigned(vlDataLink) then
   if assigned(vlDataLink.DataSource) then
    result := vlDataLink.DataSource
   Else
    result := Nil;
end;

function TDbSearchComboUnitFDAC.GetField: TField;
begin
 if vlDataLink <> Nil then
  if assigned(vlDataLink) then
   if assigned(vlDataLink.Field) then
    result := vlDataLink.Field
   Else
    result := nil;
end;

function TDbSearchComboUnitFDAC.GetFormParent: tForm;
var
 vlCmp: tWinControl;
begin
 vlCmp := tWinControl(self);
 while not(vlCmp.InheritsFrom(tForm)) do
  vlCmp := vlCmp.Parent;
 result := tForm(vlCmp);
end;

Procedure TDbSearchComboUnitFDAC.CalculaCoordenadasFormParent(var pPonto: tPoint);
var
 pRect: TRect;
 vlCmp: tWinControl;
 x, y: Integer;
begin

 vlCmp := tWinControl(self);
 x := 0;
 y := 0;
 while not(vlCmp.InheritsFrom(tForm)) do
 begin
  // GetWindowRect(vlCmp.Handle,pRect);
  x := x + vlCmp.Left;
  y := y + vlCmp.Top;
  vlCmp := vlCmp.Parent;
 end;
 pPonto.x := x;
 pPonto.y := y + self.Height;

 // pPonto := GetFormParent.ScreenToClient(self.ClientToScreen(Point(self.Left, self.Top)));
end;

procedure TDbSearchComboUnitFDAC.DBGridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
 inherited;
 with tAGrid(vlGrid) do
 begin
  if not(datalink.DataSet.IsEmpty) then
  begin
   // Zebrar o Grid azul claro/branco
   If odd(DataSource.DataSet.RecNo) then
    Canvas.Brush.color := $00FFEFDF // azul claro
   else
    Canvas.Brush.color := clWhite;

   if datalink.ActiveRecord = Row - 1 then
   begin
    Canvas.Brush.color := clHighlight; // pinta linha selecionada azul
    Canvas.font.color := clHighlightText;
   end
   else
   begin
    // Canvas.Brush.Color := clWindow;
    Canvas.font.color := clWindowText;
   end;

   if (gdSelected in State) and (not datalink.eof) then
   begin
    Canvas.font.color := clWindowText;
    Canvas.font.Style := [fsBold];
    Canvas.Brush.color := $0080FF80; // destaca lin/col selecionada com verde
   end;
  end
  Else
   Canvas.Brush.color := $00FFEFDF; // azul claro

  DefaultDrawColumnCell(Rect, DataCol, Column, State);

 End;
end;


procedure TDbSearchComboUnitFDAC.ShowGrid;
var  vData: String;
     vPixWidth, x: Integer;
     vPonto: tPoint;
     nm: string;
     ListaCampos, ListaTitulos: tStrings;
     flgTitles: Boolean;
     lDataSet: TDataSet;
begin

    if not(csDesigning in ComponentState) then
    begin
         if assigned(vlQry) then
         begin
              if not assigned(vlGrid) then
              begin

                   ListaCampos := tStringList.Create;
                   ListaTitulos := tStringList.Create;

                   try

                       if pos('.', LookupDispl) > 0 then
                          nm := gettextafter(LookupDispl, '.')
                       else
                          nm := LookupDispl;

                       if fListaCamposGrid = '' then
                          fListaCamposGrid := nm.ToUpper;

                       vlGrid := tDbGrid.Create(GetFormParent);
                       vlGrid.Parent := GetFormParent;
                       vlGrid.ControlStyle := vlGrid.ControlStyle + [csClickEvents];
                       // ativa onclick do grid;
                       vlGrid.DataSource := vlDS;

                       CalculaCoordenadasFormParent(vPonto);

                       vlGrid.Top := vPonto.y + vlGridTop; // -10

                       if vlGridLeft > 0 then
                          vlGrid.Left := vlGridLeft
                       Else
                          vlGrid.Left := vPonto.x; // -8

                       vlGrid.Height := vlGridHeight;
                       if vlGridWidth > 0 then
                          vlGrid.Width := vlGridWidth
                       Else
                          vlGrid.Width := (self.Width + 1 + vlButton.Width);

                       GetListaStringssepVirgula(fListaCamposGrid.ToUpper, ListaCampos);
                       GetListaStringssepVirgula(fListaTituloCamposGrid, ListaTitulos);

                       if ListaCampos.Count > 1 then
                          lDataSet := vlQry;

                       vPixWidth := 0;

                       flgTitles := False;
                       vlGrid.Columns.Clear;

                       for x := 0 to ListaCampos.Count - 1 do
                       begin

                            with vlGrid.Columns.Add do
                            begin

                                 if pos('.', ListaCampos[x].ToUpper) > 0 then
                                    nm := gettextafter(ListaCampos[x].ToUpper.trim, '.')
                                 else
                                    nm := ListaCampos[x].ToUpper.trim;

                                 FieldName := nm;

                                 if (ListaTitulos.Count - 1 >= x) then
                                 begin
                                      flgTitles := True;
                                      Title.Caption := ListaTitulos[x];
                                 end;

                                 Try
                                    if lDataSet.FieldByName(nm).Tag <> 0 then
                                    begin
                                         vPixWidth := vPixWidth + lDataSet.FieldByName(nm).Tag;
                                         Width := lDataSet.FieldByName(nm).Tag;
                                    end
                                    Else
                                    begin
                                         vData := PreencherString(vData, lDataSet.FieldByName(nm).size, 'A');
                                         vPixWidth := vPixWidth + vlGrid.Canvas.TextWidth(vData) + 20;
                                         Width := vlGrid.Canvas.TextWidth(vData) + 20;
                                    end;
                                 Except
                                       // raise ;// Exception.Create( '('+self.name+') Para apresentar nomes de colunas no grid � necess�rio definir os campos no dataset '+lDataSet.Name+' atribuido ao LookupDataSouce!');
                                 End;

                            end;

                       end;

                       if vlGridAutoSize then
                       begin
                            if vPixWidth = 0 then
                               vlGrid.Width := (self.Width + 1 + vlButton.Width)
                            Else
                               vlGrid.Width := vPixWidth;
                       end;

                       if flgTitles then
                       begin
                           vlGrid.Options := [dgRowSelect, dgColLines, dgTitles, dgIndicator, dgAlwaysShowSelection, dgColumnResize];
                           vlGrid.OnDrawColumnCell := DBGridDrawColumnCell;
                       end
                       Else
                           vlGrid.Options := [dgIndicator, dgAlwaysShowSelection, dgColumnResize];

                       vlGrid.Visible := False;
                       if vlSelectWithDoubleClick then
                          tAGrid(vlGrid).onDblClick := GridClick
                       else
                          tAGrid(vlGrid).onClick := GridClick;
                       vlGrid.TabStop := False;
                       vlGrid.color := clCampoDestaque;

                   finally

                          ListaCampos.Clear;
                          ListaTitulos.Clear;

                   end;
              end ;
              vlGrid.Visible := True;
              vlGrid.BringToFront;
         end;
    end;
end;

procedure TDbSearchComboUnitFDAC.GridClick(Sender: TObject);
var
 nm: string;
begin
 if pos('.', LookupKeyField) > 0 then
  nm := gettextafter(LookupKeyField, '.')
 Else
  nm := LookupKeyField;
 //COLOCAR UM EVENTO AQUI ANTES DE CLICAR NA GRID
 if Assigned(FOnBeforeSelectedGrid)
    then FOnBeforeSelectedGrid(Self, self.Text);
 if not vlQry.FieldByName(nm).IsNull then
  idRetorno := trim(vlQry.FieldByName(nm).asstring);
 vlGridClick := True;
 FechaTudo;
end;

Procedure TDbSearchComboUnitFDAC.AtribSql(const pDset: TFDQuery);
begin
 pDset.Sql.Text := RemoveTraillingBlanks(pDset.Sql.Text);
 // LookupSource:=pDset;
 LookupSelect := gettextafter(GetTextBefore(pDset.Sql.Text, 'FROM'), 'SELECT');
 LookupOrderBy := gettextafter(pDset.Sql.Text, 'ORDER BY');
 LookupKeyField := GetTextBefore(gettextafter(pDset.Sql.Text, 'select'), ',');
 // primeiro campo do select
 // LookupDispl:=GetTextBefore(LookupOrderBy+',',','); // primeiro campo do order by
 LookupTable := gettextafter(GetTextBefore(pDset.Sql.Text, 'WHERE'), 'FROM');
end;

Function TDbSearchComboUnitFDAC.MontaWhere: string;
var
 ListaCampos: tStrings;
 x: Integer;
 pal: string;
 pBusca: String;
begin

 result := '';
 if fWherePersonalizado <> '' then
   result := fWherePersonalizado
 else
 begin

   pBusca := vlText;
   if pBusca.trim <> '' then
   begin
    if pBusca[1] = '=' then
    begin
     pBusca := gettextafter(pBusca, '=');
     pBusca := ' like ' + qStr(pBusca + '%');
    end
    Else
     pBusca := ' like ' + qStr(pBusca + '%');

    if fListaCamposWhere = '' then
     result := ' where ' + LookupDispl + pBusca + iif(vlFiltroTabela <> '',
       ' and ' + vlFiltroTabela, '')
    Else
    Begin
     ListaCampos := tStringList.Create;
     try
      ListaCampos.Delimiter := ',';
      ListaCampos.StrictDelimiter := True;
      ListaCampos.DelimitedText := fListaCamposWhere;
  //    GetListaStringssepVirgula(fListaCamposWhere, ListaCampos);
      result := ' where ( ';
      pal := '';
      for x := 0 to ListaCampos.Count - 1 do
      begin
       result := result + pal + ListaCampos[x].ToUpper.trim + pBusca;
       pal := ' or ';
      end;
      result := result + ' ) ' + iif(vlFiltroTabela <> '',
        ' and ' + vlFiltroTabela, '');
     finally
      ListaCampos.Clear;
      FreeAndNil(ListaCampos);
     end;
    End;
   end
   Else if (vlFiltroTabela <> '') then
    result := ' where ' + vlFiltroTabela;
   if result = '' then
    result := ' where '
   Else
    result := result + ' and ';
   result := result + '( coalesce( ' + self.LookupDispl + ', ' + qStr('') +
     ' ) <> ' + qStr('') + ' ) ' + ConcatSe(' and ', GetFiltroEmpresa);
 end;
end;

Procedure TDbSearchComboUnitFDAC.MontaSql;
begin
 // if  not (csLoading in ComponentState) then
 begin
//  vlCDS.PacketRecords := 4;
  TestarErrosAdjutor;
  if assigned(vlQry) then

  begin
   try
    vlQry.DisableControls;
    vlQry.Close;
    vlQry.Sql.Clear;
    vlQry.Sql.Text := 'Select ' + LookupSelect + ' from ' + LookupTable +
     MontaWhere + iif(LookupGroup <> '', ' group by ' + LookupGroup, '') +
      ' order by ' + LookupOrderBy;
//    if delphiaberto then
//     Uteis.copytoclipboard(vlQry.Sql.Text);
   finally
    vlQry.Open;
    vlQry.EnableControls;
   end;
  end;
  { Else
    GeraException(self.name+'(self.classname) erro: LookupSource Faltando.'); }

 end;
end;

procedure TDbSearchComboUnitFDAC.KeyDown(var Key: Word; Shift: TShiftState);
var
 lKey: Char;
begin
 if GetKeyState(VK_MENU) and 128 > 0 then // alt PREssionado
 begin
  if (Key = VK_DOWN) then // ctrl + seta down
  begin
   vlText := '';
   MontaSql;
   ShowGrid;
  end;
 end
 else if GetKeyState(VK_CONTROL) and 128 = 0 then // control LIBERADO
 begin
  if (Key = VK_DOWN) or (Key = VK_UP) or (Key = VK_NEXT) or (Key = VK_PRIOR)
  then
  begin
   if assigned(vlGrid) then
   begin
    if vlGrid.Visible then
    begin
     tAGrid(vlGrid).KeyDown(Key, Shift);
     Key := 0;
    end;
   end;

  end
  Else if (Key = VK_RETURN) then
  begin
   if vlQry.active then
    if pos('.', LookupKeyField) > 0 then
     idRetorno := vlQry.FieldByName(gettextafter(LookupKeyField, '.'))
       .asstring.trim
    Else
     idRetorno := vlQry.FieldByName(LookupKeyField).asstring.trim;
   if assigned(FOnKeyPress) then
   begin
    lKey := #13;
    FOnKeyPress(self, lKey);
   end;
   Key := 0;
  end
  Else if Key = VK_F4 then
  begin
   DefaultButtonClick(nil);
   Key := 0;
  end
  else if (Key = VK_ESCAPE) then
  begin
   if assigned(vlGrid) then
    if vlGrid.Visible then
    begin
     HideGrid;
     Key := 0;
    end;
   if AnsiUpperCase(Text) <> AnsiUpperCase(vlEmptyText) then
    idRetorno := GetIdByText(Text);
   selectall;
  end;
 end;

 inherited;
end;

procedure TDbSearchComboUnitFDAC.SetDataLinkValue(pId: string);
begin
 if not(csDesigning in ComponentState) then
  if (not vlUpdatingData) AND (NOT self.ReadOnly) THEN
   if assigned(vlDataLink.DataSource) then
    if assigned(vlDataLink.DataSource.DataSet) then
     if assigned(vlDataLink.Field) then
      if vlIdRetorno <> vlDataLink.Field.asstring then
      BEGIN
       if vlDataLink.DataSource.DataSet.State = dsBrowse then
        vlDataLink.DataSource.DataSet.Edit;
       idRetorno := pId;
       if trim(vlIdRetorno) <> '' then
        vlDataLink.Field.asstring := vlIdRetorno
       Else
        vlDataLink.Field.Clear;
      END;
end;

Function TDbSearchComboUnitFDAC.GetIdByText(const Value: string): String;
var
 vqry: TFDQuery;
 vDesc: String;
begin
 HideGrid;
 TestarErrosAdjutor;
 vDesc := Value;
 result := '';

 if assigned(vlQry) then
 begin
  if AnsiUpperCase(vDesc) = AnsiUpperCase(vlEmptyText) then
   vDesc := '-9999999';
  if vDesc <> '' then
  begin
   try
    vqry := TFDQuery.Create(self);
    vqry.Connection := vlQry.Connection;
    if fWherePersonalizado <> '' then
        vqry.Sql.Text := 'Select ' + LookupKeyField + ' from ' + LookupTable +
         fWherePersonalizado
    else
      vqry.Sql.Text := 'Select ' + LookupKeyField + ' from ' + LookupTable +
        ' where ' + LookupDispl + '=' + qStr(vDesc);
    if delphiaberto then
     Uteis.copytoclipboard(vqry.Sql.Text);
    vqry.Open;
    if not(vqry.Fields[0].IsNull) then
     result := trim(vqry.Fields[0].asstring)
    Else
    begin
     if LimparCampoAoSair then
         Text := vlEmptyText;
     selectall;
    end;

   finally
    vqry.Close;
    FreeAndNil(vqry);
   end;
  end;
 end
 Else
  GeraException(self.Name + '(self.classname) erro: LookupSource Faltando.');
end;

function TDbSearchComboUnitFDAC.GetIdRetorno: string;
begin
 result := trim(self.vlIdRetorno);
end;

function TDbSearchComboUnitFDAC.GetSql: String;
begin
 if assigned(vlQry) then
  result := vlQry.Sql.Text;
end;

procedure TDbSearchComboUnitFDAC.FechaTudo;
begin
 vlGridClick := False;
 HideGrid;
 // vlCds.Close;
 if (Text <> '') then
 begin
  vlIdRetorno := GetIdByText(Text);
  SetDataLinkValue(vlIdRetorno);
 end;
end;

procedure TDbSearchComboUnitFDAC.CMExit(var Message: TCMExit);
///
begin

 try
  self.SelStart := 0; // qiqi
  if assigned(vlGrid) then
  begin
   if vlGrid.Focused then
   begin
    if vlGridClick then
     FechaTudo;
   end
   Else
   begin
    FechaTudo;
    if assigned(vlGrid) then
     FreeAndNil(vlGrid);
   end;
  end;

  { if Observers.IsObserving(TObserverMapping.EditLinkID) then
    TLinkObservers.EditLinkUpdate(Observers);

    if Observers.IsObserving(TObserverMapping.ControlValueID) then
    TLinkObservers.ControlValueUpdate(Observers); }

  inherited;

 except

  selectall;
  SetFocus;
  raise;

 end;
end;

procedure TDbSearchComboUnitFDAC.CMMouseWhell(var Message: TCMMouseWheel);
var
 n: Integer;
begin
 n := Message.WheelDelta;
 if vlQry.active then
 begin
  if n > 0 then
   vlQry.Prior
  Else
   vlQry.Next;
 end;
end;

Procedure TDbSearchComboUnitFDAC.TmrOnTimer(Sender: TObject);
begin
 if not(csDestroying in ComponentState) then
 begin
  vlTimer.Enabled := False;
  Filtro;
 end;
end;

procedure TDbSearchComboUnitFDAC.Change;
begin
 inherited;
 if not(csDesigning in ComponentState) then
 begin
  TestarErrosAdjutor;
  if vAtivarFiltro then
   Filtro;

//  if vlTimer = nil then
//   Exit;
//  vlTimer.Enabled := False; // desabilita timer
//  vlTimer.Interval := 200; // 0,2 segundos
//  vlTimer.Enabled := True; // reabilita timer
 end;
end;

procedure TDbSearchComboUnitFDAC.TestarErrosAdjutor;
begin
 if not vlCorrigido then
 begin
  if self.LookupDispl = '' then
   self.LookupDispl := self.LookupOrderBy;
  if pos(UpperCase(self.LookupKeyField), UpperCase(self.LookupSelect)) = 0 then
   self.LookupSelect := self.LookupKeyField + ',' + self.LookupSelect;

  if assigned(dbInicio) then
  begin
   if not assigned(vlQry) then
   begin
     vlqry := TFDQuery.Create(self);
     vlqry.Connection := vlQry.Connection;
     vlDS.DataSet :=  vlqry;
   end;

   if assigned(vlQry.Connection) then // corrigir erros Novi
   begin
     DBInicio.IniciaDBFireDAC(DBInicio.FDACConn);
   end
   else
     vlQry.Connection := DBInicio.FDACConn;

  end;
  vlCorrigido := True;
 end;
end;

Function TDbSearchComboUnitFDAC.GetFiltroEmpresa: string;
VAR
 acron: STRING;
begin
 if fLookupTableShare = '' then
  result := ''
 Else if fFiltrar then
 begin
  acron := trim(GetTextBefore(gettextafter(LookupTable, ' '), ' '));
  if acron <> '' then
   acron := acron + '.';

  fFiltroEmpresa := dbInicio.ExclusivoSql(fLookupTableShare);
  if fFiltroEmpresa <> '' then
   fFiltroEmpresa := acron + fFiltroEmpresa;
  fFiltrar := False;
 end;
 result := fFiltroEmpresa;
end;

procedure TDbSearchComboUnitFDAC.Filtro;
begin
 if not(csDesigning in ComponentState)  then
 begin
  if AnsiUpperCase(trim(Text)) <> AnsiUpperCase(vlEmptyText) then
  begin
   if trim(Text) = '' then
   begin
    MontaSql;
    if LimparCampoAoSair then
       Text := vlEmptyText;
    vlText := '';
    idRetorno := '';
    selectall;
    if not vlGridShowWhenEnter then
     HideGrid;
   end
   Else if AnsiUpperCase(trim(Text)) <> AnsiUpperCase(trim(vlText)) then
   begin
    vlText := Text;
    MontaSql;
    if self.Focused then
     ShowGrid;
   end;
  end
  else
   try
    if idRetorno <> '' then
     idRetorno := '';
   Except
   end;
 end;
end;

Procedure TDbSearchComboUnitFDAC.CdsAfterOpen(DataSet: TDataSet);
var
 a, n: Integer;
 nomes: string;
begin

 n := vlQry.Fields.Count - 1;
 nomes := '';
 for a := 0 to n do
 begin
  vlQry.Fields[a].OnGetText := FldGetText;
  nomes := nomes + vlQry.Fields[a].FieldName;
 end;
end;

procedure TDbSearchComboUnitFDAC.FldGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
var
 fld: TField;
begin
 fld := vlQry.FindField(Sender.FieldName);
 if fld <> nil then
 begin
  if assigned(fld.OnGetText) then
   fld.OnGetText(Sender, Text, True)
  Else
   Text := Sender.asstring;
 end
 Else
  Text := Sender.asstring;
end;

procedure TDbSearchComboUnitFDAC.SetName(const Value: TComponentName);
var
 LClearText: Boolean;
begin
 LClearText := (csDesigning in ComponentState) and (Text = '');
 inherited SetName(Value);
 if LClearText then
  Text := '';
end;

procedure TDbSearchComboUnitFDAC.KeyPress(var Key: Char);
begin
 { if Text=EmptyText then
   begin
   if not IsCharEspec(key)  then
   Text := '';
   end; }
 if assigned(FOnKeyPress) then
  FOnKeyPress(self, Key);
end;

procedure TDbSearchComboUnitFDAC.CreateAutoF8;
var
 dAutoF8: TDBAutoF8;
 dAutoCrud: TDBAutoCRUD;
 //
 Function GetGeometriaSql: tStrings;
 var
  qry: TFDQuery;
  campos, lcaption: string;
  x: Integer;
  DescCampos, CamposSql: tStrings;
 begin
  DescCampos := tStringList.Create;
  DescCampos.Delimiter := ',';
  DescCampos.DelimitedText := dAutoF8.AutoF8ColumnsTitulo;

  result := tStringList.Create;
  CamposSql := tStringList.Create;
  CamposSql.Delimiter := ',';
  CamposSql.DelimitedText := UpperCase(self.LookupSelect);
  campos := '';
  for x := 0 to CamposSql.Count - 1 do
   campos := InsereApos(campos, ',') + qStr(CamposSql[x]);
  result.Clear;

  qry := TFDQuery.Create(nil);
  qry.Connection := FDACConn;
  try
   for x := 0 to CamposSql.Count - 1 do
   begin
    qry.Sql.Clear;
    qry.Sql.Add
      ('select A.rdb$field_name, b.rdb$field_Length, a.rdb$description, b.rdb$field_type');
    qry.Sql.Add
      ('from rdb$relation_fields A join rdb$fields B on b.rdb$field_name=a.rdb$field_source');
    qry.Sql.Add('where a.rdb$relation_name=' +
      QuotedStr(trim(UpperCase(self.LookupTable))));
    qry.Sql.Add('and A.rdb$field_name = ' + QuotedStr(CamposSql[x]));
    qry.Open;

    if (DescCampos.Count > 0) and ((DescCampos.Count - 1) >= x) then
     lcaption := DescCampos[x]
    Else if not qry.Fields[2].IsNull then
     lcaption := qry.Fields[2].asstring
    Else
     lcaption := '';

    if lcaption <> '' then
     with tCampoCrud.Create('') do
     begin
      FieldName := qry.Fields[0].asstring;
      Caption := lcaption;

      size := qry.Fields[1].asInteger + 3;
      ReadOnly := False;
      Required := False;
      Unique := False;
      case qry.Fields[3].asInteger of
       7:
        Tipo := 'N'; // 'SMALLINT'
       8:
        Tipo := 'N'; // 'INTEGER'
       9:
        Tipo := 'N'; // 'QUAD'
       10:
        Tipo := 'N'; // 'FLOAT'
       11:
        Tipo := 'N'; // 'D_FLOAT'
       12:
        Tipo := 'D'; // 'DATE'
       13:
        Tipo := 'D'; // 'TIME'
       14:
        Tipo := 'C'; // 'CHAR'
       16:
        Tipo := 'N'; // 'INT64'
       27:
        Tipo := 'N'; // 'DOUBLE'
       35:
        Tipo := 'D'; // 'TIMESTAMP'
       37:
        Tipo := 'C'; // 'VARCHAR'
       40:
        Tipo := 'C'; // 'CSTRING'
       261:
        Tipo := 'C'; // 'BLOB'
      end;
      campos := DefinicaoCampo;
      result.Add(campos);
     end;
    qry.Close;
   end;
  finally
   qry.Close;
   FreeAndNil(qry);
  end;
 end;

//
begin
 TestarErrosAdjutor;
 dAutoF8 := TDBAutoF8.Create(self);
 dAutoF8.AutoF8ColumnsTitulo := self.AutoF8ColumnsTitulo;
 dAutoF8.SqlSelect := GetGeometriaSql;
 dAutoF8.Sqlfiltro := dAutoF8.SqlSelect;
 // campos que ser�o utilizados para busca de dados
 dAutoF8.FiltroTabela := self.FiltroTabela;
 // filtro sql definido no componente searchcombo
 if GetFiltroEmpresa <> '' then
  dAutoF8.FiltroTabela := ConcatSe(dAutoF8.FiltroTabela, ' and ') +
    GetFiltroEmpresa;
 dAutoF8.FiltroTabela := ConcatSe(dAutoF8.FiltroTabela, ' and ') + '( ' +
   self.LookupDispl + ' is not null )';
 dAutoF8.SqlTable := self.LookupTable;
 dAutoF8.SqlOrder := self.LookupOrderBy;
 dAutoF8.SqlIdRetorno := self.LookupKeyField;
 dAutoF8.SqlId := self.LookupKeyField;
 dAutoF8.Titulo := dbInicio.BuscaUmDadoSqlAsString
   ('Select rdb$description from rdb$relations where rdb$relation_name=' +
   QuotedStr(UpperCase(self.LookupTable)));
 dAutoF8.CampoUnicoPesquisa := True;
 if dAutoF8.Titulo = '' then
  if self.AutoF8WinTitulo <> '' then
   dAutoF8.Titulo := self.AutoF8WinTitulo
  Else
   dAutoF8.Titulo := self.LookupTable;
 if self.AutoF8CrudInfo.Text <> '' then
 begin
  dAutoCrud := TDBAutoCRUD.Create(self);
  dAutoCrud.SqlCampoID := self.LookupKeyField;
  dAutoCrud.SqlCampoIDRetorno := self.LookupKeyField;
  dAutoCrud.SqlGenerator := 'GEN_' + self.LookupKeyField + '_' +
    self.LookupTable; // gen_id_CSTPISCOFINS
  dbInicio.InsereGenerator(dAutoCrud.SqlGenerator);
  dAutoCrud.SqlTable := self.LookupTable;
  dAutoCrud.Titulo := self.AutoF8WinTitulo;
  dAutoCrud.PodeIncluir := True;
  dAutoCrud.PodeEditar := True;
  dAutoCrud.PodeExcluir := True;
  dAutoCrud.SqlSelect := self.AutoF8CrudInfo;
  dAutoF8.AutoCrud := dAutoCrud;

 end;
 self.AutoF8 := dAutoF8;
end;

end.



