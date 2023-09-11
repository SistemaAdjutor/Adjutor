unit cx_pai;

interface

uses
  Windows,  SqlClientDataSet,Messages, SysUtils, Variants, Classes, Graphics, Controls, forms, BaseForm, 
  Dialogs, StdCtrls, Mask, DBCtrls, Typinfo, Grids, DBGrids, RXDBCtrl;

type
  TPai = class(tFrmBase)
    procedure FormKeyDown(Sender: TObject; var Key: Word ;Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

  private
    { Private declarations }
    function AchaComponente(Nome: string; F: tFrmBase): TComponent;
    function LeProp(Comp: TComponent; Const PropName: string): string;
    procedure AtribuiProp(Comp: TComponent; Const PropName: string; Val: string);
    procedure ColorControl(Sender: TObject);


  public
    { Public declarations }
  end;

var
  Pai: TPai;

implementation

uses Ufuncoes;//cx_00012;

{$R *.dfm}

function TPai.AchaComponente(Nome: string; F: tFrmBase): TComponent;
var
  i: integer;
  C: TComponent;
begin
  Result := nil;
  // Converte nome para maiúscula
  Nome := UpperCase(Nome);
  // Varre o formulário à procura do componente
  for i := 0 to F.ComponentCount - 1 do
  begin
  C := F.Components[i];
  // O nome está correto?
  if UpperCase(C.Name) = Nome then
  begin
  // Retorna o componente
  Result := C;
  // Sai do loop
  exit;
  end;
  end;
end;


procedure TPai.AtribuiProp(Comp: TComponent; const PropName: string;
  Val: string);
var
  PInfo: PPropInfo;
begin
  // Pega informações de tipo da propriedade
  PInfo := GetPropInfo(Comp.ClassInfo, PropName);
  // Achou?
  if PInfo <> nil then
  begin
  // Trata conforme o tipo
  case PInfo^.Proptype^.Kind of
  tkInteger: SetOrdProp(Comp, PInfo, StrToInt(Val));
  tkChar, tkWChar: SetOrdProp(Comp, PInfo, ord(Val[1]));
  tkEnumeration: SetOrdProp(Comp, PInfo, GetEnumValue(PInfo^.PropType^, Val));
  tkFloat: SetFloatProp(Comp, PInfo, StrToFloat(Val));
  tkString, tkLString, tkWString: SetStrProp(Comp, PInfo, Val);
  tkVariant: SetVariantProp(Comp, PInfo, Val);
  tkInt64: SetInt64Prop(Comp, PInfo, StrToInt64(Val));
  else
  ShowMessage('Este tipo não é suportado por este programa');
  end;
  end
  else
  ShowMessage('Propriedade não achada');
end;

procedure TPai.ColorControl(Sender: TObject);
var
  Cor: TColor;
  I: integer;
begin
   With Screen.ActiveForm do
    begin
       for I:= 0 to ComponentCount -1 do
        begin
           {TEdit e TDBEdit}

           if Components[I] is TCustomEdit then
              begin
                 if (Components[I] as TCustomEdit).Focused then
                    Cor := $0080FFFF
                 else
                    {Se a Properties TabStop for Falso diz que o componente so mostra
                     os dados como tivesse disabilitado}
                    if (Components[I] as TCustomEdit).TabStop = False then
                       Cor := $00D7D7D7
                    else
                       Cor := clWindow;
                 AtribuiProp(Components[I], 'Color', IntToStr(Cor));
              end
           else
           {TComboBox e TDBLookComboBox}
           if Components[I] is TCustomComboBox then
//           if Components[I] is TComboBox then
              begin
                 if (Components[I] as TComboBox).Focused then
                    Cor := $0080FFFF
                 else
                    if (Components[I] as TComboBox).Color = $00D7D7D7 then
                       exit
                    else
                       Cor := clWindow;
                 AtribuiProp(Components[I], 'Color', IntToStr(Cor));
              end;
        end;
    end;
end;


procedure TPai.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   if Key = VK_RETURN then Perform(Wm_NextDlgCtl,0,0);
end;


function TPai.LeProp(Comp: TComponent; const PropName: string): string;
var
  PInfo: PPropInfo;
begin
  Result := '';
  // Pega informações de tipo da propriedade
  PInfo := GetPropInfo(Comp.ClassInfo, PropName);
  // Achou?
  if PInfo <> nil then
  begin
  // Trata conforme o tipo
  case PInfo^.Proptype^.Kind of
  tkInteger: Result := IntToStr(GetOrdProp(Comp, PInfo));
  tkChar, tkWChar: Result := char(GetOrdProp(Comp, PInfo));
  tkEnumeration: Result := GetEnumName(PInfo^.PropType^, GetOrdProp(Comp, PInfo));
  tkFloat: Result := FloatToStr(GetFloatProp(Comp, PInfo));
  tkString, tkLString, tkWString: Result := GetStrProp(Comp, PInfo);
  tkVariant: GetVariantProp(Comp, PInfo);
  tkInt64: Result := IntToStr(GetInt64Prop(Comp, PInfo));
  else
  ShowMessage('Este tipo não é suportado por este programa');
  end;
  end
  else
  ShowMessage('Propriedade não achada');
end;

procedure TPai.FormCreate(Sender: TObject);
begin
   Screen.OnActiveControlChange := ColorControl;
end;

procedure TPai.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Screen.OnActiveControlChange := nil;
end;



end.
