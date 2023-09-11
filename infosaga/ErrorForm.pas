unit ErrorForm;
{$D-}
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, StdCtrls, ExtCtrls;


type

  errObj = class
     errtipo: integer;
     errmsg: string;
  public
     constructor create( tp:integer ; msg:string );
     property tipo:integer read errtipo write errtipo;
     property error:string read errmsg write errmsg;
  end;

  TAutorizaContinuar = function: Boolean of object;

  TFrmError = class(TForm)
    btContinue: TButton;
    btCancele: TButton;
    LstBox: TListBox;
    pnBotton: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btContinueClick(Sender: TObject);
    procedure btCanceleClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure LstBoxDrawItem(Control: TWinControl; Index: Integer; Rect: TRect;
      State: TOwnerDrawState);
    procedure LstBoxMeasureItem(Control: TWinControl; Index: Integer;
      var Height: Integer);
  private
         errList: tList;
         fAutorizaContinuar: TAutorizaContinuar;
  public
    Procedure ClearErrors;
    Procedure AddErrWarning(msg:string);
    Procedure AddErrValidation(msg:string);
    Procedure CheckErrors;
    Property Autoriza: TAutorizaContinuar Read fAutorizaContinuar write fAutorizaContinuar;
  end;

var
  FrmError: TFrmError;

implementation

{$R *.dfm}

procedure TfrmError.ClearErrors;
var
  qtd: Integer;
  x: Integer;
  obj: errObj;
begin
  qtd := errList.Count;
  for x := 0 to qtd - 1 do
  begin
       obj := errObj(errList[x]);
       errList[x]:=Nil;
       FreeAndNil(obj);
  end;
  errList.Clear;
  lstBox.Clear;
end;

procedure TFrmError.FormCreate(Sender: TObject);
begin
  errList:=tList.Create;
  self.Caption:='A T E N Ç Ã O';
  self.BorderIcons:=[biSystemMenu];
  self.BorderStyle:=bsDialog;
  self.position:=poScreenCenter;
  self.KeyPreview:=true;
  ClearErrors;
end;

procedure TFrmError.FormDestroy(Sender: TObject);
begin
  ClearErrors;
end;

procedure TFrmError.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if Key=VK_ESCAPE then
     begin
          btCancele.Click;
     end;
end;

procedure TFrmError.LstBoxDrawItem(Control: TWinControl; Index: Integer;
  Rect: TRect; State: TOwnerDrawState);
var ItemString: string;
  MyList: TListBox;
begin
     MyList := LstBox;
     with MyList.canvas do
     begin
          Canvas.FillRect(Rect);
          ItemString := MyList.Items.Strings[Index];
          Rect.left := Rect.Left + 10 ;
          Font:=LstBox.Font;
          //itemstring := utf8toansi( itemstring ); // Evita aparecimento de caracteres estranhos no listbox
          DrawText(Handle, PChar(ItemString), - 1 {length(ItemString)},Rect, DT_WORDBREAK);
     end;
end;

procedure TFrmError.LstBoxMeasureItem(Control: TWinControl; Index: Integer;
  var Height: Integer);
var ItemString: string;
    MyRect: TRect;
    MyImage: TImage;
    MyList: TListBox;
begin
     // Don't waste time with this on Index = -1
     if (Index > -1) then
     begin
          MyList := LstBox;
          // Create a temporary canvas to calculate the height
          MyImage := TImage.Create(MyList);
          try
             MyRect := MyList.ClientRect;
             ItemString := MyList.Items.Strings[Index];
             MyImage.Canvas.Font := MyList.Font;
             // Calc. using this ComboBox's font size
             Height := 10 + DrawText(MyImage.Canvas.Handle, PChar(ItemString), - 1, MyRect, DT_CALCRECT or DT_WORDBREAK or DT_CALCRECT);
          finally
                 FreeAndNil(MyImage);
          end;
     end;
end;

procedure TfrmError.AddErrWarning(msg: string);
var
  obj: errObj;
begin
     if msg<>'' then
     begin
          obj := errObj.create(1,msg);
          errList.Add(obj);
     end;
end;

procedure TFrmError.btCanceleClick(Sender: TObject);
begin
     self.ModalResult:=mrCancel;
end;

procedure TFrmError.btContinueClick(Sender: TObject);
begin
     if Assigned(fAutorizaContinuar) then
     begin
        if fAutorizaContinuar then
           self.ModalResult:=mrOK;
     end 
     else
         self.ModalResult:=mrOK;
end;

procedure TfrmError.AddErrValidation(msg: string);
var
  obj: errObj;
begin
     if msg<>'' then
     begin
          obj := errObj.create(2,msg);
          errList.Add(obj);
     end;
end;

procedure TfrmError.CheckErrors;
var
  qtd: Integer;
  x: Integer;
  obj: errObj;
begin
     lstBox.Clear;
     qtd := errList.Count;
     if qtd <> 0 then
     begin
          btContinue.Visible:=true;
          btContinue.Enabled:=true;
          for x := 0 to qtd-1 do
          begin
               obj := errObj( errList[x] );
               if obj.tipo>1 then
               begin
                    btContinue.Visible:=false;
                    btContinue.Enabled:=false;
               end;
               lstBox.Items.Add(obj.errmsg);
          end;
          self.ShowModal;
          try
             if self.ModalResult=mrCancel then
                abort;
          Except
                raise;
          end;
     end;
end;


{ errObj }

constructor errObj.create(tp: integer; msg: string);
begin
     tipo := tp;
     error:= msg;
end;

end.
