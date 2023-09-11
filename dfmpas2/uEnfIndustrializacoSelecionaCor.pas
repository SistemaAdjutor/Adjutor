unit uEnfIndustrializacoSelecionaCor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBFormFdac, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Phys.FBDef, FireDAC.UI.Intf, FireDAC.VCLUI.Wait, FireDAC.VCLUI.Error, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Comp.Client, Data.DB, FireDAC.Comp.UI, FireDAC.Phys.IBBase, FireDAC.Comp.DataSet, cxClasses, cxLocalization, ACBrBase, ACBrEnterTab, Data.FMTBcd, Vcl.StdCtrls, Vcl.Buttons, JvExStdCtrls,
  JvEdit, JvValidateEdit, Vcl.ExtCtrls, SgDbSeachComboUnit, Data.SqlExpr;

type
  TfrmEnfIndustrializacoSelecionaCor = class(TfrmBaseDBFDAC)
    qCor: TSQLQuery;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Label5: TLabel;
    cbCor: TSgDbSearchCombo;
    btGravar: TBitBtn;
    btCancelar: TBitBtn;
    procedure btGravarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure cbCorSelect(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    var
      descricao, PedidoItem: string;
      recebida, enviada: double;

  end;

var
  frmEnfIndustrializacoSelecionaCor: TfrmEnfIndustrializacoSelecionaCor;

implementation

uses InicioDB, EnfIndustrializacao;

{$R *.dfm}

procedure TfrmEnfIndustrializacoSelecionaCor.btGravarClick(Sender: TObject);
begin
  inherited;
  if (cbCor.idRetorno = '') and (PedidoItem = 'Item') then
  begin
    MessageDlg('É necessário informar uma cor.', mtWarning, [mbOK], 0);
    ModalResult := mrNone;
    cbCor.SetFocus;
    Exit;
  end;

  end;

procedure TfrmEnfIndustrializacoSelecionaCor.cbCorSelect(Sender: TObject);
begin
  inherited;
  btGravar.SetFocus;
end;

procedure TfrmEnfIndustrializacoSelecionaCor.FormActivate(Sender: TObject);
begin
  inherited;
  cbCor.SetFocus;
end;

end.
