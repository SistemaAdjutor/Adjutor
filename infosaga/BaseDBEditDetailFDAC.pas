unit BaseDBEditDetailFDAC;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBFormFdac, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.UI.Intf, FireDAC.VCLUI.Wait, FireDAC.VCLUI.Error, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.FB, Data.DB,
  FireDAC.Comp.Client, FireDAC.Comp.UI, FireDAC.Phys.IBBase, FireDAC.Comp.DataSet, cxClasses, cxLocalization, ACBrBase, ACBrEnterTab, Vcl.Buttons, Vcl.ExtCtrls, Vcl.StdCtrls, JvErrorIndicator,
  JvComponentBase, JvValidators, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Phys.FBDef;

type
  TEstadoDetalhe =(tedNovo, tedConsulta, tedEdicao, tedExclusao, tedInicial );


type
  TfrmBaseDBEditDetailFDAC = class(TfrmBaseDBFDAC)
    Panel1: TPanel;
    btnConfirmar: TButton;
    btnCancelar: TButton;
    pprincipal: TPanel;
    JvValidators1: TJvValidators;
    JvErrorIndicator1: TJvErrorIndicator;
    JvValidationSummary1: TJvValidationSummary;
    procedure FormShow(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
  private
    fEstado : TEstadoDetalhe;
    procedure SetEstado (const Value : TEstadoDetalhe);
  public
    function Edita(const Capt: tCaption): Boolean;
    function Exclui(const pID: string; const Capt: tCaption): Boolean;
    function Novo(const Capt: tCaption): Boolean;
    property EstadoTela : TEstadoDetalhe read  fEstado write  SetEstado;
  end;

var
  frmBaseDBEditDetailFDAC: TfrmBaseDBEditDetailFDAC;

implementation

{$R *.dfm}

{ TTfrmBaseDBEditFDAC }

procedure TfrmBaseDBEditDetailFDAC.btnConfirmarClick(Sender: TObject);
begin
  inherited;
  JvErrorIndicator1.ClearErrors;
  JvValidators1.ValidationSummary := nil;
  JvValidators1.ErrorIndicator := JvErrorIndicator1;
 // JvValidators1.OnValidateFailed := JvValidators1ValidateFailed;
  if not JvValidators1.Validate then
    ModalResult := mrNone
  else
    ModalResult := mrOk;
end;

function TfrmBaseDBEditDetailFDAC.Edita(const Capt: tCaption): Boolean;
begin
  aCaption := capt;
  EstadoTela := tedEdicao;

end;

function TfrmBaseDBEditDetailFDAC.Exclui(const pID: string; const Capt: tCaption): Boolean;
begin
  aCaption := capt;
  EstadoTela := tedExclusao;
end;

procedure TfrmBaseDBEditDetailFDAC.FormShow(Sender: TObject);
begin
  inherited;
  TForm(Self).Caption := aCaption;
end;

function TfrmBaseDBEditDetailFDAC.Novo(const Capt: tCaption): Boolean;
begin
  aCaption := capt;
  EstadoTela := tedNovo;

end;

procedure TfrmBaseDBEditDetailFDAC.SetEstado(const Value: TEstadoDetalhe);
begin
  fEstado := Value;
end;

end.
