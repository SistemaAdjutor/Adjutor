unit SgDbLabeledUnit;

interface

uses Classes, StdCtrls, Buttons, ExtCtrls,
     DBGrids, SqlExpr, Provider, DBClient,
     DB, DBCtrls, Controls, Messages, Windows,
     SysUtils, Graphics, Dialogs, Forms;

Type

    TAccessBoundLabel = Class( TBoundLabel );

    TsgDBLabeledEdit = class(TDBEdit) // qiqi
    private
      FEditLabel: TBoundLabel;
      FLabelPosition: TLabelPosition;
      FLabelSpacing: Integer;
      procedure SetLabelPosition(const Value: TLabelPosition);
      procedure SetLabelSpacing(const Value: Integer);
    protected
      procedure SetParent(AParent: TWinControl); override;
      procedure Notification(AComponent: TComponent; Operation: TOperation); override;
      procedure SetName(const Value: TComponentName); override;
      procedure CMVisiblechanged(var Message: TMessage);message CM_VISIBLECHANGED;
      procedure CMEnabledchanged(var Message: TMessage);message CM_ENABLEDCHANGED;
      procedure CMBidimodechanged(var Message: TMessage);message CM_BIDIMODECHANGED;
    public
      { Public declarations }
      constructor Create(AOwner: TComponent); override;
      procedure SetBounds(ALeft: Integer; ATop: Integer; AWidth: Integer; AHeight: Integer); override;
      procedure SetupInternalLabel;
    published
      property EditLabel: TBoundLabel read FEditLabel;
      property LabelPosition: TLabelPosition read FLabelPosition write SetLabelPosition default lpAbove;
      property LabelSpacing: Integer read FLabelSpacing write SetLabelSpacing default 3;
    end;

Procedure Register;

implementation

Procedure Register;
begin
  RegisterComponents('Infosaga',[TsgDBLabeledEdit]);
end;

{ TsgDBLabeledEdit }

function AdjustedAlignment(RightToLeftAlignment: Boolean; Alignment: TAlignment): TAlignment;
begin
  Result := Alignment;
  if RightToLeftAlignment then
    case Result of
      taLeftJustify: Result := taRightJustify;
      taRightJustify: Result := taLeftJustify;
    end;
end;

constructor TsgDBLabeledEdit.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FLabelPosition := lpAbove;
  FLabelSpacing := 0;
  SetupInternalLabel;
end;

procedure TsgDBLabeledEdit.CMBidimodechanged(var Message: TMessage);
begin
  inherited;
  if FEditLabel <> nil then
    FEditLabel.BiDiMode := BiDiMode;
end;

procedure TsgDBLabeledEdit.CMEnabledchanged(var Message: TMessage);
begin
  inherited;
  if FEditLabel <> nil then
    FEditLabel.Enabled := Enabled;
end;

procedure TsgDBLabeledEdit.CMVisiblechanged(var Message: TMessage);
begin
  inherited;
  if FEditLabel <> nil then
    FEditLabel.Visible := Visible;
end;

procedure TsgDBLabeledEdit.Notification(AComponent: TComponent;
  Operation: TOperation);
begin
  inherited Notification(AComponent, Operation);
  if (AComponent = FEditLabel) and (Operation = opRemove) then
    FEditLabel := nil;
end;

procedure TsgDBLabeledEdit.SetBounds(ALeft, ATop, AWidth, AHeight: Integer);
begin
  inherited SetBounds(ALeft, ATop, AWidth, AHeight);
  SetLabelPosition(FLabelPosition);
end;

procedure TsgDBLabeledEdit.SetLabelPosition(const Value: TLabelPosition);
var
  P: TPoint;
begin
  if FEditLabel = nil then Exit;
  FLabelPosition := Value;
  case Value of
    lpAbove:
      case AdjustedAlignment(UseRightToLeftAlignment, taLeftJustify) of
        taLeftJustify: P := Point(Left, Top - FEditLabel.Height - FLabelSpacing);
        taRightJustify: P := Point(Left + Width - FEditLabel.Width,
          Top - FEditLabel.Height - FLabelSpacing);
        taCenter: P := Point(Left + (Width - FEditLabel.Width) div 2,
          Top - FEditLabel.Height - FLabelSpacing);
      end;
    lpBelow:
      case AdjustedAlignment(UseRightToLeftAlignment, taLeftJustify) of
        taLeftJustify: P := Point(Left, Top + Height + FLabelSpacing);
        taRightJustify: P := Point(Left + Width - FEditLabel.Width,
          Top + Height + FLabelSpacing);
        taCenter: P := Point(Left + (Width - FEditLabel.Width) div 2,
          Top + Height + FLabelSpacing);
      end;
    lpLeft : P := Point(Left - FEditLabel.Width - FLabelSpacing,
                    Top + ((Height - FEditLabel.Height) div 2));
    lpRight: P := Point(Left + Width + FLabelSpacing,
                    Top + ((Height - FEditLabel.Height) div 2));
  end;
  FEditLabel.SetBounds(P.x, P.y, FEditLabel.Width, FEditLabel.Height);
end;

procedure TsgDBLabeledEdit.SetLabelSpacing(const Value: Integer);
begin
  FLabelSpacing := Value;
  SetLabelPosition(FLabelPosition);
end;

procedure TsgDBLabeledEdit.SetName(const Value: TComponentName);
var
  LClearText: Boolean;
begin
  if (csDesigning in ComponentState) and (FEditLabel <> nil) and
     ((FEditlabel.GetTextLen = 0) or
     (CompareText(FEditLabel.Caption, Name) = 0)) then
    FEditLabel.Caption := Value;
  LClearText := (csDesigning in ComponentState) and (Text = '');
  inherited SetName(Value);
  if LClearText then
    Text := '';
end;

procedure TsgDBLabeledEdit.SetParent(AParent: TWinControl);
begin
  inherited SetParent(AParent);
  if FEditLabel = nil then exit;
  FEditLabel.Parent := AParent;
  FEditLabel.Visible := True;
end;

procedure TsgDBLabeledEdit.SetupInternalLabel;
begin
  if Assigned(FEditLabel) then exit;
  FEditLabel := TBoundLabel.Create(Self);
  FEditLabel.FreeNotification(Self);
  TAccessBoundLabel(FEditLabel).FocusControl := Self;
end;



end.
