unit uEnfIndustrializacoEnviaDemanda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBFormFdac, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Phys.FBDef, FireDAC.UI.Intf, FireDAC.VCLUI.Wait, FireDAC.VCLUI.Error, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Comp.Client, Data.DB, FireDAC.Comp.UI, FireDAC.Phys.IBBase, FireDAC.Comp.DataSet, cxClasses, cxLocalization, ACBrBase, ACBrEnterTab, Data.FMTBcd, Vcl.StdCtrls, Vcl.Buttons, JvExStdCtrls,
  JvEdit, JvValidateEdit, Vcl.ExtCtrls, SgDbSeachComboUnit, Data.SqlExpr;

type
  TfrmEnfIndustrializacoEnviaDemanda = class(TfrmBaseDBFDAC)
    qCor: TSQLQuery;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    edEnviar: TJvValidateEdit;
    cbCor: TSgDbSearchCombo;
    lbDescricao: TLabel;
    lbRecebida: TLabel;
    lbEnviada: TLabel;
    btGravar: TBitBtn;
    btCancelar: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure cbCorSelect(Sender: TObject);
    procedure edEnviarKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    var
      descricao, PedidoItem: string;
      recebida, enviada: double;

  end;

var
  frmEnfIndustrializacoEnviaDemanda: TfrmEnfIndustrializacoEnviaDemanda;

implementation

uses InicioDB, EnfIndustrializacao;

{$R *.dfm}

procedure TfrmEnfIndustrializacoEnviaDemanda.btGravarClick(Sender: TObject);
begin
  inherited;
  if (cbCor.idRetorno = '') then // and (PedidoItem = 'Item') then
  begin
    MessageDlg('É necessário informar uma cor para enviar o pedido para demanda.', mtWarning, [mbOK], 0);
    ModalResult := mrNone;
    cbCor.SetFocus;
    Exit;
  end;
  if (edEnviar.Value = 0) and (PedidoItem = 'Item')  then
  begin
    MessageDlg('É necessário informar uma quantidade para enviar o pedido para demanda.', mtWarning, [mbOK], 0);
    ModalResult := mrNone;
    edEnviar.SetFocus;
    Exit;
  end;
  if FrmEnfIndustrializacao <> nil then
    if (FrmEnfIndustrializacao.SqlCdsNotaItemENF_IT_QTD_ENV_PCP_DEMANDA.AsCurrency + edEnviar.Value > FrmEnfIndustrializacao.SqlCdsNotaItemENF_QTDE.AsFloat) and (PedidoItem = 'Item')  then
    begin
      MessageDlg('Quantidade informada, mais o que já foi enviado, excedem a quantidade do pedido.', mtWarning, [mbOk], 0 );
      ModalResult := mrNone;
    end;
end;

procedure TfrmEnfIndustrializacoEnviaDemanda.cbCorSelect(Sender: TObject);
begin
  inherited;
  btGravar.SetFocus;
end;

procedure TfrmEnfIndustrializacoEnviaDemanda.edEnviarKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
    btGravar.SetFocus;
end;

procedure TfrmEnfIndustrializacoEnviaDemanda.FormActivate(Sender: TObject);
begin
  inherited;
  cbCor.SetFocus;
end;

procedure TfrmEnfIndustrializacoEnviaDemanda.FormShow(Sender: TObject);
begin
  inherited;
  lbDescricao.Caption := descricao;
  lbRecebida.Caption := FormatFloat('###,###,##0.00', recebida);
  lbEnviada.Caption := FormatFloat('###,###,##0.00', enviada);
end;

end.
