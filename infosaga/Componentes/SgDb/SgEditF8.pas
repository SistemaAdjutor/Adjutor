unit SgEditF8;

interface


uses Classes, StdCtrls, Buttons, ExtCtrls,
     DBGrids, SqlExpr, Provider, DBClient,
     DB, DBCtrls, Controls, Messages, Windows,
     SysUtils, Graphics, Dialogs, Forms, uteis,
     SgDbAutoF8Unit, BaseDBPesquisaForm;

type
    TSgEditF8 = class(tCustomEdit)
    private
      vlButton: tSpeedButton;
      vlButtonClick: tNotifyEvent;
      vlAutoF8: TsgDBAutoF8;
      vlSelectAutoF8: tNotifyEvent;
      procedure SetupInternal;
      procedure KeyDown(var Key: Word; Shift: TShiftState); override;
    procedure DefaultButtonClick(Sender: tObject);
    function GetAutoF8: TsgDBAutoF8;
    procedure SetAutoF8(const Value: TsgDBAutoF8);

    public
          constructor Create(AOwner: TComponent); override;
          Destructor Destroy; override;
          procedure SetBounds(ALeft: Integer; ATop: Integer; AWidth: Integer; AHeight: Integer); override;
          Property Button: tSpeedButton Read vlButton;
    protected
      procedure SetParent(AParent: TWinControl); override;
      procedure Notification(AComponent: TComponent; Operation: TOperation); override;
      procedure SetName(const Value: TComponentName); override;
      procedure CMVisiblechanged(var Message: TMessage);message CM_VISIBLECHANGED;
      procedure CMEnabledchanged(var Message: TMessage);message CM_ENABLEDCHANGED;
      procedure CMBidimodechanged(var Message: TMessage);message CM_BIDIMODECHANGED;
    published
             Property AutoF8:TsgDBAutoF8 read GetAutoF8 write SetAutoF8;
             Property OnButtonClick: tNotifyEvent Read vlButtonClick Write vlButtonClick;
             Property OnSelectAutoF8: tNotiFyEvent Read vlSelectAutoF8 write vlSelectAutoF8;
             Property TabOrder;
             Property ReadOnly;
             Property Text;
    end;

Procedure Register;

implementation

Procedure Register;
begin
  RegisterComponents('Infosaga',[TSgEditF8]);
end;

{ TSgEditF8 }

procedure TSgEditF8.CMBidimodechanged(var Message: TMessage);
begin
  if vlButton <> nil then
    vlButton.BiDiMode := BiDiMode;
end;

procedure TSgEditF8.CMEnabledchanged(var Message: TMessage);
begin
  if vlButton <> nil then
    vlButton.Enabled := Enabled;
end;

procedure TSgEditF8.CMVisiblechanged(var Message: TMessage);
begin
  if vlButton <> nil then
    vlButton.Visible := Visible;
end;

constructor TSgEditF8.Create(AOwner: TComponent);
begin
   inherited Create(AOwner);
   SetupInternal;
end;

destructor TSgEditF8.Destroy;
begin
  inherited;
end;

procedure TSgEditF8.KeyDown(var Key: Word; Shift: TShiftState);
begin
     inherited;
   if GetKeyState( VK_CONTROL ) and 128 = 0 then // control LIBERADO
   begin
     if Key=VK_F8 then
     begin
         vlButton.Click;
         key:=0;
     end;
   end;
end;

procedure TSgEditF8.Notification(AComponent: TComponent;
  Operation: TOperation);
begin
  inherited Notification(AComponent, Operation);
  if (Operation = opRemove) then
  begin
    if (AComponent = vlButton) Then
      vlButton := nil;
  end;
end;

procedure TSgEditF8.SetBounds(ALeft, ATop, AWidth, AHeight: Integer);
var
  P: TPoint;
begin
  inherited SetBounds(ALeft, ATop, AWidth, AHeight);
  if vlButton = nil then Exit;
  P := Point( Left + Width + 1, Top + ((Height - vlButton.Height) div 2));
  vlButton.SetBounds(P.x, P.y, vlButton.Width, vlButton.Height);
end;

procedure TSgEditF8.SetName(const Value: TComponentName);
var
  LClearText: Boolean;
begin
  LClearText := (csDesigning in ComponentState) and (Text = '');
  inherited SetName(Value);
  if LClearText then
    Text := '';
end;

procedure TSgEditF8.SetParent(AParent: TWinControl);
begin
  inherited SetParent(AParent);
  if vlButton = nil then exit;
  vlButton.Parent := AParent;
  vlButton.Visible := True;
end;

procedure TSgEditF8.SetupInternal;
var vBitmap:tBitMap;
begin
  if vlButton=nil then
  begin
    vlButton := tSpeedButton.Create(Self);
    vlButton.FreeNotification(Self);
    vlButton.OnClick:=DefaultButtonClick;
    try
      vBitmap:=tBitMap.Create;
      vBitmap.LoadFromResourceName(hinstance,'TsgDBSEARCHCOMBO');
      vlButton.Glyph.Assign(vBitMap);
    finally
          FreeAndNil(vBitMap);
    end;
  end;
end;

procedure TSgEditF8.SetAutoF8(const Value: TsgDBAutoF8);
begin
     vlAutoF8:=Value;
end;

procedure TSgEditF8.DefaultButtonClick(Sender:tObject);
///
  Procedure DoAutoF8;
  var tcr: tFrmBaseDbPesquisa;
  begin
       try
          tcr:= tFrmBaseDbPesquisa.create(nil);
          tcr.AutoF8:=vlAutoF8 ;
          if readonly then
             tcr.btnSelect.Enabled:=False;
          tcr.ShowModal;
          if (tcr.ModalResult=mrOk) and (not readonly) then
          begin
               if assigned(vlSelectAutoF8) then
                  vlSelectAutoF8(tcr);
          end;
       finally
          FreeAndNil(tcr);
       end;
  end;
///
begin
     if not (csDesigning in ComponentState) then
     begin
          if assigned(vlAutoF8) then
             DoAutoF8;
          if assigned(vlButtonClick) then
             vlButtonClick(Sender)
     end;
end;

function TSgEditF8.GetAutoF8: TsgDBAutoF8;
begin
     Result := vlAutoF8;
end;



end.
