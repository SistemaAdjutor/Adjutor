unit BaseFormFDAC;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ACBrBase, ACBrEnterTab,
  cxClasses, cxLocalization, System.TypInfo, IniFiles,
  vcl.extctrls, data.db, vcl.stdctrls, ErrorForm, Vcl.ComCtrls;


type
  TfrmBaseFDAC = class(TForm)
    ACBrEnterTab1: TACBrEnterTab;
    cxLocalizer1: TcxLocalizer;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    fIDRetorno : string;
    vlCaption: TCaption;
    fReadOnly: Boolean;
    procedure SetReadOnly(const AValue: Boolean);
    procedure SetReadOnlyB(const AValue: Boolean; prnt: tWinControl);
  public

     ErrHandler : tFrmError;
     procedure checkErrors;
     procedure ClearErrors;
     Procedure AddErrValidation(const msg:string);
     procedure SetColorEditReadOnly(obj:tComponent);
     property IDRetorno:string read fIDRetorno write fIDRetorno;
     Property aCaption: tCaption Read vlCaption Write vlCaption;
     Property ReadOnly: Boolean Read fReadOnly Write SetReadOnly;

  end;

var
  frmBasefdac: TfrmBaseFDAC;

implementation

{$R *.dfm}

uses InicioDB, Uteis;

procedure TfrmBaseFDAC.AddErrValidation(const msg: string);
begin
   ErrHandler.AddErrValidation(msg);
end;

procedure TfrmBaseFDAC.checkErrors;
begin
   try
      ErrHandler.CheckErrors;
   except
         raise;
   end;
end;

procedure TfrmBaseFDAC.ClearErrors;
begin
  errHandler.ClearErrors;
end;

procedure TfrmBaseFDAC.FormClose(Sender: TObject; var Action: TCloseAction);
var
  ini:TIniFile;
  nome: string;
begin
  TestaPasta ( dbInicio.SistemaLocal+'settings' );
  nome:= dbInicio.SistemaLocal+'settings\' + self.name + DBInicio.Usuario.CODIGO + 'form.pos';
  ini:=TIniFile.Create(nome);
  ini.WriteInteger('FORM', 'Top', Self.Top);
  ini.WriteInteger('FORM', 'Left', Self.Left);
  ini.WriteInteger('FORM', 'Width', Self.Width);
  ini.WriteInteger('FORM', 'Height', Self.Height);
  ini.Free;
end;

procedure TfrmBaseFDAC.FormCreate(Sender: TObject);
begin
  if FileExists(ExtractFilePath(Application.ExeName)+'\devpt.ini') then
  begin
    cxLocalizer1.LoadFromFile(ExtractFilePath(Application.ExeName)+  '\devpt.ini');
    cxLocalizer1.Locale := 1046;
    //cxLocalizer1.LanguageIndex := 1; // MUDA DE LINGUAGEM
    cxLocalizer1.Active := TRUE;     // ATIVA O COMPONENTE
  end;
end;

procedure TfrmBaseFDAC.FormShow(Sender: TObject);
var
 ini:TIniFile;
 nome: string;
begin
  nome:= dbInicio.SistemaLocal+'settings\' + self.name + DBInicio.Usuario.CODIGO + 'form.pos';
  ini:=TiniFile.Create(nome);
  Self.Top:=ini.ReadInteger('FORM', 'Top', 0);
  Self.Left:=ini.ReadInteger('FORM', 'Left', 0);
  Self.Width:=ini.ReadInteger('FORM', 'Width', Self.Width);
  Self.Height:=ini.ReadInteger('FORM', 'Height', Self.Height);
  ini.Free;
end;

procedure TfrmBaseFDAC.SetColorEditReadOnly(obj: tComponent);
var prop, propr: pPropInfo; // rtti
    vObj:tObject;
    vRo:Boolean;
begin
     vObj := tObject( Obj );
     prop := GetPropInfo( vObj , 'COLOR');
     propr := GetPropInfo( vObj , 'READONLY');
     if (prop<>nil) and (propr<>nil) then
     begin
          vro := getpropvalue( vObj , 'READONLY');
          if vro then
            SetPropValue( vObj , 'COLOR', $00E2E2E2 )
          Else
            SetPropValue( vObj , 'COLOR', clWindow );
     end;

end;

procedure TfrmBaseFDAC.SetReadOnly(const AValue: Boolean);
begin
  SetReadOnlyB( AValue, Self ) ;
end;

procedure TfrmBaseFDAC.SetReadOnlyB(const AValue: Boolean; prnt: tWinControl);
var
  prop: pPropInfo;
  vWinC:tWinControl;
  vObj:tObject;

  x: Integer;
  CanReadWrite: Boolean;

begin

     for x := 0 to (prnt.ControlCount - 1) do
     begin
          vWinC := tWinControl(prnt.Controls[x]);
          if vWinC.Parent=prnt then
          begin
              if vWinC.InheritsFrom(tPanel) or vWinC.InheritsFrom(tGroupBox) or vWinC.InheritsFrom(TCustomTabControl) OR vWinC.InheritsFrom(TTabSheet) then
                 SetReadOnlyB( AValue, vWinC )
              else
              if not ( vWinC.InheritsFrom(tDataSet) or vWinC.InheritsFrom(tField) ) then
              begin
                   vObj := tObject(vWinC );
                   Prop := GetPropInfo( vObj , 'READONLY');
                   if Prop<>nil then
                   begin
                          CanReadWrite:=True;
                          // Estado de tabstop serve para determinar
                          if GetPropInfo( vObj , 'TABSTOP')<>nil then
                             CanReadWrite:=GetPropValue( vObj , 'TABSTOP');
                          if CanReadWrite then
                             SetPropValue( vObj , 'READONLY', AValue);
                           if GetPropInfo( vObj , 'COLOR')<>nil then
                           begin
                              if vObj.InheritsFrom(tCustomEdit) then
                                 SetColorEditReadOnly(tComponent(vObj));
                           end;
                   END;
              end;
          end;
     end;

     fReadOnly:=AValue;


end;

end.
