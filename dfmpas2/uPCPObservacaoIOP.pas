unit uPCPObservacaoIOP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBFormFdac, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Phys.FBDef, FireDAC.UI.Intf, FireDAC.VCLUI.Wait, FireDAC.VCLUI.Error, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Comp.Client, Data.DB, FireDAC.Comp.UI, FireDAC.Phys.IBBase, FireDAC.Comp.DataSet, cxClasses, cxLocalization, ACBrBase, ACBrEnterTab, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmPCPObservacaoIOP = class(TfrmBaseDBFDAC)
    gbPedido: TGroupBox;
    gbProduto: TGroupBox;
    pnBotoes: TPanel;
    btSalvar: TButton;
    btSair: TButton;
    ObsPed: TMemo;
    ObsPrd: TMemo;
    procedure btSalvarClick(Sender: TObject);
    procedure btSairClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPCPObservacaoIOP: TfrmPCPObservacaoIOP;

implementation

{$R *.dfm}

procedure TfrmPCPObservacaoIOP.btSairClick(Sender: TObject);
begin
  inherited;
  ModalResult := mrCancel;
end;

procedure TfrmPCPObservacaoIOP.btSalvarClick(Sender: TObject);
begin
  inherited;
  ModalResult := mrOk;
end;

procedure TfrmPCPObservacaoIOP.FormResize(Sender: TObject);
begin
  inherited;
  gbPedido.Height := (frmPCPObservacaoIOP.Height div 2) - pnBotoes.Height ;

end;

end.
