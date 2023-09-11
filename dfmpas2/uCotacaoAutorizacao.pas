unit uCotacaoAutorizacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBFormFdac, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Phys.FBDef, FireDAC.UI.Intf, FireDAC.VCLUI.Wait, FireDAC.VCLUI.Error, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Comp.Client, Data.DB, FireDAC.Comp.UI, FireDAC.Phys.IBBase, FireDAC.Comp.DataSet, cxClasses, cxLocalization, ACBrBase, ACBrEnterTab, Vcl.StdCtrls, Vcl.Mask, JvExMask, JvToolEdit;

type
  TfrmCotacaoAutorizacao = class(TfrmBaseDBFDAC)
    Label1: TLabel;
    dtCitDataAutorizacao: TJvDateEdit;
    Label2: TLabel;
    edResponsavel: TEdit;
    cbStatus: TComboBox;
    Label3: TLabel;
    Label4: TLabel;
    edObservacao: TEdit;
    btGravar: TButton;
    btCancelar: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btGravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCotacaoAutorizacao: TfrmCotacaoAutorizacao;

implementation

{$R *.dfm}

uses Uteis, uCotacaoPesquisa, InicioDB;

procedure TfrmCotacaoAutorizacao.btGravarClick(Sender: TObject);
var
  Atualizado : Boolean;
begin
  inherited;

  Atualizado := False;

  frmCotacaoPesquisa.qCotacao.First;
  while not frmCotacaoPesquisa.qCotacao.Eof do
  begin
    if (frmCotacaoPesquisa.qCotacaoCIT_STATUS.AsInteger < 4) and (cbStatus.ItemIndex in [4, 5, 6] ) then  // Aberta, Rejeitada ou Autorizada / Finalizada, Aut. Compra ou Concluída
      if BuscaUmDadoSqlAsString('SELECT CIT_CODIGO FROM COTACAO_FORNECEDOR cf WHERE CIT_CODIGO = ' +
                                  frmCotacaoPesquisa.qCotacaoCIT_CODIGO.AsString +
                                  ' AND COF_PRECO_COTACAO > 0' +
                                  ' AND COF_APROVADA = ''S'' ' ) = '' then
    begin
        MessageDlg('Não há informação de preço cotado ou se a Cotação foi aprovada para o item ' + frmCotacaoPesquisa.qCotacaoPRD_DESCRICAO.AsString , mtInformation, [mbOK], 0);
        frmCotacaoPesquisa.qCotacao.Next;
        Continue;
    end;


    qAux.Close;
    qAux.SQL.Clear;
    qAux.SQL.Text := 'UPDATE COTACAO_ITEM SET ' +
      ' CIT_DATA_AUTORIZACAO = ' + DateToSQL(dtCitDataAutorizacao.Date) + ',' +
      ' CIT_RESPONSAVEL = ' + QuotedStr(edResponsavel.Text) + ',' +
      ' CIT_STATUS = ' + IntToStr(cbStatus.ItemIndex) + ',' +
      ' CIT_OBS_AUTORIZACAO = ' + QuotedStr(edObservacao.Text) +
      ' WHERE CIT_CODIGO = ' + frmCotacaoPesquisa.qCotacaoCIT_CODIGO.AsString;
    qAux.ExecSQL;
    Atualizado := True;
    frmCotacaoPesquisa.qCotacao.Next;
  end;
//  frmCotacaoPesquisa.qCotacao.Filtered := False;
//  frmCotacaoPesquisa.qCotacao.Refresh;
  if Atualizado then
    MessageDlg('Gravado com sucesso.', mtInformation, [mbOK], 0);
  frmCotacaoPesquisa.AbreOperacoes(frmCotacaoPesquisa.UltimaOperacao);
  Close;
end;

procedure TfrmCotacaoAutorizacao.btCancelarClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmCotacaoAutorizacao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
  frmCotacaoAutorizacao := nil;
end;

procedure TfrmCotacaoAutorizacao.FormShow(Sender: TObject);
begin
  inherited;
  dtCitDataAutorizacao.Date := now;
  edResponsavel.Text := DBInicio.Usuario.NOME;
  cbStatus.SetFocus;
end;

end.
