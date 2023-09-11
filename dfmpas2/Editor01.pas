unit Editor01;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls, Buttons, ExtCtrls, Menus, ComCtrls, ClipBrd,
  ToolWin, ActnList, ImgList;

type
  TFormEditor = class(TForm)
    MainMenu: TMainMenu;
    FileSaveItem: TMenuItem;
    FilePrintItem: TMenuItem;
    FileExitItem: TMenuItem;
    EditUndoItem: TMenuItem;
    EditCutItem: TMenuItem;
    EditCopyItem: TMenuItem;
    EditPasteItem: TMenuItem;
    FontDialog1: TFontDialog;
    StatusBar: TStatusBar;
    StandardToolBar: TToolBar;
    SaveButton: TToolButton;
    PrintButton: TToolButton;
    ToolButton5: TToolButton;
    UndoButton: TToolButton;
    CutButton: TToolButton;
    CopyButton: TToolButton;
    PasteButton: TToolButton;
    ToolButton10: TToolButton;
    FontName: TComboBox;
    FontSize: TEdit;
    ToolButton11: TToolButton;
    UpDown1: TUpDown;
    BoldButton: TToolButton;
    ItalicButton: TToolButton;
    UnderlineButton: TToolButton;
    ToolButton16: TToolButton;
    LeftAlign: TToolButton;
    CenterAlign: TToolButton;
    RightAlign: TToolButton;
    ToolButton20: TToolButton;
    BulletsButton: TToolButton;
    ToolbarImages: TImageList;
    ToolButton2: TToolButton;
    Formatar1: TMenuItem;
    AlinharEsquerda1: TMenuItem;
    Centralizar1: TMenuItem;
    N1: TMenuItem;
    N3: TMenuItem;
    Fonte1: TMenuItem;
    Ruler: TPanel;
    FirstInd: TLabel;
    LeftInd: TLabel;
    RulerLine: TBevel;
    RightInd: TLabel;
    Bevel1: TBevel;

    procedure SelectionChange(Sender: tObject);
    procedure ShowHint(Sender: tObject);
    procedure FileExit(Sender: tObject);
    procedure EditUndo(Sender: tObject);
    procedure EditCut(Sender: tObject);
    procedure EditCopy(Sender: tObject);
    procedure EditPaste(Sender: tObject);
    procedure SelectFont(Sender: tObject);
    procedure RulerResize(Sender: tObject);
    procedure FormResize(Sender: tObject);
    procedure BoldButtonClick(Sender: tObject);
    procedure ItalicButtonClick(Sender: tObject);
    procedure FontSizeChange(Sender: tObject);
    procedure AlignButtonClick(Sender: tObject);
    procedure FontNameChange(Sender: tObject);
    procedure UnderlineButtonClick(Sender: tObject);
    procedure BulletsButtonClick(Sender: tObject);
    procedure RulerItemMouseDown(Sender: tObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure RulerItemMouseMove(Sender: tObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FirstIndMouseUp(Sender: tObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure LeftIndMouseUp(Sender: tObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure RightIndMouseUp(Sender: tObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure RichEditChange(Sender: tObject);
    procedure FilePrintItemClick(Sender: tObject);
    procedure FileSaveItemClick(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: tObject; var CanClose: Boolean);
    procedure FormShow(Sender: tObject);
    procedure EditorChange(Sender: tObject);
    procedure EditUndoItemClick(Sender: tObject);
    procedure EditCopyItemClick(Sender: tObject);
    procedure EditPasteItemClick(Sender: tObject);
    procedure EditCutItemClick(Sender: tObject);
    procedure Fonte1Click(Sender: tObject);
  private
    wUserAgiu: Boolean;
    wMudouText: Boolean;
    wFileName: string;
    FUpdating: Boolean;
    FDragOfs: Integer;
    FDragging: Boolean;
    function CurrText: TTextAttributes;
    procedure GetFontNames;
    procedure SetupRuler;
    procedure SetEditRect;
    procedure UpdateCursorPos;
    procedure SetModified(Value: Boolean);
  end;

var
  FormEditor: TFormEditor;

implementation

uses Prd0001, ADJ0001;

//uses REAbout, RichEdit, ShellAPI, ReInit;

const
  RulerAdj = 4/3;
  GutterWid = 6;

{$R *.DFM}

////function uteis.confirmacao ( msg : pchar ) : word; far; external 'mensagen';

procedure TFormEditor.SelectionChange(Sender: tObject);
begin
 with Editor.Paragraph do
  try
    FUpdating := True;
    FirstInd.Left := Trunc(FirstIndent*RulerAdj)-4+GutterWid;
    LeftInd.Left := Trunc((LeftIndent+FirstIndent)*RulerAdj)-4+GutterWid;
    RightInd.Left := Ruler.ClientWidth-6-Trunc((RightIndent+GutterWid)*RulerAdj);
    BoldButton.Down := fsBold in Editor.SelAttributes.Style;
    ItalicButton.Down := fsItalic in Editor.SelAttributes.Style;
    UnderlineButton.Down := fsUnderline in Editor.SelAttributes.Style;
    BulletsButton.Down := Boolean(Numbering);
    FontSize.Text := IntToStr(Editor.SelAttributes.Size);
    FontName.Text := Editor.SelAttributes.Name;
    case Ord(Alignment) of
      0: LeftAlign.Down := True;
      1: RightAlign.Down := True;
      2: CenterAlign.Down := True;
    end;
    UpdateCursorPos;
  finally
    FUpdating := False;
  end;

end;

function TFormEditor.CurrText: TTextAttributes;
begin
  if Editor.SelLength > 0 then Result := Editor.SelAttributes
  else Result := Editor.DefAttributes;
end;

function EnumFontsProc(var LogFont: TLogFont; var TextMetric: TTextMetric;
  FontType: Integer; Data: Pointer): Integer; stdcall;
begin
 {TStrings(Data).Add(LogFont.lfFaceName);
  Result := 1; }
end;

procedure TFormEditor.GetFontNames;
var
  DC: HDC;
begin
  DC := GetDC(0);
  EnumFonts(DC, nil, @EnumFontsProc, Pointer(FontName.Items));
  ReleaseDC(0, DC);
  FontName.Sorted := True;    
end;

procedure TFormEditor.SetupRuler;
var
  I: Integer;
  S: String;
begin
 { SetLength(S, 201);
  I := 1;
  while I < 200 do
  begin
    S[I] := #9;
    S[I+1] := '|';
    Inc(I, 2);
  end;
  Ruler.Caption := S;}
end;

procedure TFormEditor.SetEditRect;
var
  R: TRect;
begin
 { with Editor do
  begin
    R := Rect(GutterWid, 0, ClientWidth-GutterWid, ClientHeight);
    SendMessage(Handle, EM_SETRECT, 0, Longint(@R));
  end;  }
end;

{ Event Handlers }



procedure TFormEditor.ShowHint(Sender: tObject);
begin
  {if Length(Application.Hint) > 0 then
  begin
    StatusBar.SimplePanel := True;
    StatusBar.SimpleText := Application.Hint;
  end
  else StatusBar.SimplePanel := False; }
end;

procedure TFormEditor.FileExit(Sender: tObject);
begin
  //Close;
end;

procedure TFormEditor.EditUndo(Sender: tObject);
begin
 // with Editor do
  //  if HandleAllocated then SendMessage(Handle, EM_UNDO, 0, 0);
end;

procedure TFormEditor.EditCut(Sender: tObject);
begin
 // Editor.CutToClipboard;
end;

procedure TFormEditor.EditCopy(Sender: tObject);
begin
  //Editor.CopyToClipboard;
end;

procedure TFormEditor.EditPaste(Sender: tObject);
begin
 // Editor.PasteFromClipboard;
end;

procedure TFormEditor.SelectFont(Sender: tObject);
begin
{  FontDialog1.Font.Assign(Editor.SelAttributes);
  if FontDialog1.Execute then
    CurrText.Assign(FontDialog1.Font);
  SelectionChange(Self);
  Editor.SetFocus;
}end;

procedure TFormEditor.RulerResize(Sender: tObject);
begin
 // RulerLine.Width := Ruler.ClientWidth - (RulerLine.Left*2);
end;

procedure TFormEditor.FormResize(Sender: tObject);
begin
//  SetEditRect;
 // SelectionChange(Sender);
end;

procedure TFormEditor.BoldButtonClick(Sender: tObject);
begin
 // if FUpdating then Exit;
 // if BoldButton.Down then
   // CurrText.Style := CurrText.Style + [fsBold]
//  else
  //  CurrText.Style := CurrText.Style - [fsBold];
end;

procedure TFormEditor.ItalicButtonClick(Sender: tObject);
begin
 { if FUpdating then Exit;
  if ItalicButton.Down then
    CurrText.Style := CurrText.Style + [fsItalic]
  else
  }  CurrText.Style := CurrText.Style - [fsItalic];
end;

procedure TFormEditor.FontSizeChange(Sender: tObject);
begin
  //if FUpdating then Exit;
  //CurrText.Size := StrToInt(FontSize.Text);
end;

procedure TFormEditor.AlignButtonClick(Sender: tObject);
begin
  //if FUpdating then Exit;
  //Editor.Paragraph.Alignment := TAlignment(TControl(Sender).Tag);
end;

procedure TFormEditor.FontNameChange(Sender: tObject);
begin
  //if FUpdating then Exit;
  //CurrText.Name := FontName.Items[FontName.ItemIndex];
end;

procedure TFormEditor.UnderlineButtonClick(Sender: tObject);
begin
  //if FUpdating then Exit;
  //if UnderlineButton.Down then
   // CurrText.Style := CurrText.Style + [fsUnderline]
//  else
 //   CurrText.Style := CurrText.Style - [fsUnderline];
end;

procedure TFormEditor.BulletsButtonClick(Sender: tObject);
begin
//  if FUpdating then Exit;
//  Editor.Paragraph.Numbering := TNumberingStyle(BulletsButton.Down);
end;

{ Ruler Indent Dragging }

procedure TFormEditor.RulerItemMouseDown(Sender: tObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
//  FDragOfs := (TLabel(Sender).Width div 2);
//  TLabel(Sender).Left := TLabel(Sender).Left+X-FDragOfs;
//  FDragging := True;
end;

procedure TFormEditor.RulerItemMouseMove(Sender: tObject; Shift: TShiftState;
  X, Y: Integer);
begin
//  if FDragging then
//    TLabel(Sender).Left :=  TLabel(Sender).Left+X-FDragOfs
end;

procedure TFormEditor.FirstIndMouseUp(Sender: tObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
//  FDragging := False;
  //Editor.Paragraph.FirstIndent := Trunc((FirstInd.Left+FDragOfs-GutterWid) / RulerAdj);
  //LeftIndMouseUp(Sender, Button, Shift, X, Y);
end;

procedure TFormEditor.LeftIndMouseUp(Sender: tObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  {FDragging := False;
  Editor.Paragraph.LeftIndent := Trunc((LeftInd.Left+FDragOfs-GutterWid) / RulerAdj)-Editor.Paragraph.FirstIndent;
  SelectionChange(Sender);}
end;

procedure TFormEditor.RightIndMouseUp(Sender: tObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin                      {
  FDragging := False;
  Editor.Paragraph.RightIndent := Trunc((Ruler.ClientWidth-RightInd.Left+FDragOfs-2) / RulerAdj)-2*GutterWid;
  SelectionChange(Sender);  }
end;

procedure TFormEditor.UpdateCursorPos;
var
  CharPos: TPoint;
begin
 { CharPos.Y := SendMessage(Editor.Handle, EM_EXLINEFROMCHAR, 0,
    Editor.SelStart);
  CharPos.X := (Editor.SelStart -
    SendMessage(Editor.Handle, EM_LINEINDEX, CharPos.Y, 0));
  Inc(CharPos.Y);
  Inc(CharPos.X);
  StatusBar.Panels[0].Text := Format('Line: %3d   Col: %3d', [CharPos.Y, CharPos.X]); }
end;


procedure TFormEditor.RichEditChange(Sender: tObject);
begin
 // SetModified(Editor.Modified);
end;

procedure TFormEditor.SetModified(Value: Boolean);
begin
//  if Value then StatusBar.Panels[1].Text := 'Modified'
//  else StatusBar.Panels[1].Text := '';
end;

//*****************************************************************

procedure TFormEditor.FormShow(Sender: tObject);
var
  ScreenLogPixels: Integer;
  DC: HDC;
begin
  Screen.cursor := crHourGlass;
  Left:= 0;
  Top := 0;
  Width :=  801;
  Height := 572;
  Application.OnHint := ShowHint;
  wUserAgiu := False;
  wMudouText    := False;
  if not FileExists(FormAdjutor.PathCaract+'\'+FormProduto.EDTPRD_REFER.Text+'.Rtf') then
     CopyFile(Pchar(FormAdjutor.PathCaract+'\'+'Default.Rtf'),Pchar(FormAdjutor.PathCaract+'\'+FormProduto.EDTPRD_REFER.Text+'.Rtf'),false);
  wFileName := FormAdjutor.PathCaract+'\'+FormProduto.EDTPRD_REFER.Text+'.Rtf';
  Editor.Lines.LoadFromFile(wFileName);
  Caption := FormProduto.DbePrd_Descri.Text + ' - [Folha de Caracteristicas ]';
  GetFontNames;
  SetupRuler;
  SelectionChange(Self);
  CurrText.Name := DefFontData.Name;
  DC := GetDC(0);
  ScreenLogPixels := GetDeviceCaps(DC, LOGPIXELSY);
  CurrText.Size := -MulDiv(DefFontData.Height, 72, ScreenLogPixels);
  Screen.cursor := crdefault;
end;

procedure TFormEditor.FilePrintItemClick(Sender: tObject);
begin
Editor.Print(wFileName);
end;

procedure TFormEditor.FileSaveItemClick(Sender: tObject);
begin
Editor.Lines.SaveToFile(wFileName);
wMudouText := False;
end;

procedure TFormEditor.FormClose(Sender: tObject; var Action: TCloseAction);
var wMsgResp :Integer;
begin
  close;
end;

procedure TFormEditor.FormCloseQuery(Sender: tObject;
  var CanClose: Boolean);
begin
  if wMudouText = True then
     if uteis.confirmacao ( 'Deseja Salvar o Documento?') = idYes then
        Editor.Lines.SaveToFile(wFileName);
end;

procedure TFormEditor.EditorChange(Sender: tObject);
begin
if wUserAgiu = true then
   wMudouText := True;
end;

procedure TFormEditor.EditUndoItemClick(Sender: tObject);
begin
  with Editor do
    if HandleAllocated then SendMessage(Handle, EM_UNDO, 0, 0);
end;

procedure TFormEditor.EditCopyItemClick(Sender: tObject);
begin
Editor.CopyToClipboard;
end;

procedure TFormEditor.EditPasteItemClick(Sender: tObject);
begin
Editor.PasteFromClipboard;
end;

procedure TFormEditor.EditCutItemClick(Sender: tObject);
begin
  Editor.CutToClipboard;
end;

procedure TFormEditor.Fonte1Click(Sender: tObject);
begin
  FontDialog1.Font.Assign(Editor.SelAttributes);
  if FontDialog1.Execute then
    CurrText.Assign(FontDialog1.Font);
  SelectionChange(Self);
  Editor.SetFocus;
end;

end.
