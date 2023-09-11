unit uInfLote;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBFormFdac, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Phys.FBDef, FireDAC.UI.Intf, FireDAC.VCLUI.Wait, FireDAC.VCLUI.Error, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Comp.Client, Data.DB, FireDAC.Comp.UI, FireDAC.Phys.IBBase, FireDAC.Comp.DataSet, cxClasses, cxLocalization, ACBrBase, ACBrEnterTab, Vcl.StdCtrls, Vcl.Mask, JvExMask, JvToolEdit;

type
  TfrmInfLotePrd = class(TfrmBaseDBFDAC)
    GLote: TGroupBox;
    Label1: TLabel;
    lfab: TLabel;
    Label2: TLabel;
    dtValidade: TJvDateEdit;
    dtFabricacao: TJvDateEdit;
    edLote: TEdit;
    btnok: TButton;
    btnCancelar: TButton;
    procedure btnokClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmInfLotePrd: TfrmInfLotePrd;

implementation

{$R *.dfm}

procedure TfrmInfLotePrd.btnokClick(Sender: TObject);
begin
  inherited;

  if (edLote.Text  ='') then
     raise Exception.Create('Não preenchido o lote');
  ModalResult := mrOk;
end;

end.
