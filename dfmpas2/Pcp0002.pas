unit Pcp0002;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, StdCtrls, Buttons, RwFunc, ExtCtrls, Provider, SqlExpr,SqlClientDataSet,
  DB, DBClient, DBLocal, DBLocalS;

type
  TFormPCPGrid = class(TForm)
    Grp00: TGroupBox;
    RadCodigo: TRadioButton;
    Rad_Descri: TRadioButton;
    Grp01: TGroupBox;
    Edt_Busca: TEdit;
    BitPesquisar: TBitBtn;
    BitCancelar: TBitBtn;
    BitSair: TBitBtn;
    SqlCdsConsPcl: TSQLClientDataSet;
    DsConsPcl: TDataSource;
    SqlCdsConsPclSEC_CODIGO: TStringField;
    SqlCdsConsPclSEC_DESCRI: TStringField;
    SqlCdsConsPclSEC_QTDE: TSmallintField;
    SqlCdsConsPclSEC_CUSTO_UNIT: TFMTBCdField;
    SqlCdsConsPclSEC_TMP_CUSTO: TStringField;
    SqlCdsConsPclEMP_CODIGO: TStringField;
    DBGridPCP: TDBGrid;
    procedure Edt_BuscaClick(Sender: tObject);
    procedure RadCodigoClick(Sender: tObject);
    procedure Rad_DescriClick(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure Edt_BuscaEnter(Sender: tObject);
    procedure FormKeyPress(Sender: tObject; var Key: Char);
    procedure BitPesquisarClick(Sender: tObject);
    procedure BitSairClick(Sender: tObject);
    procedure BitCancelarClick(Sender: tObject);
    procedure Edt_BuscaKeyPress(Sender: tObject; var Key: Char);
    procedure Edt_BuscaExit(Sender: tObject);
    procedure FormCloseQuery(Sender: tObject; var CanClose: Boolean);
    procedure DBGridPCPKeyPress(Sender: tObject; var Key: Char);
    procedure DBGridPCPDblClick(Sender: tObject);
  private
    { Private declarations }
    CampoEdit    :TEdit;
    procedure LayOutPesq;
    procedure BotaoPesquisar;
    procedure mensagens;
    procedure MostraPesq;
    procedure BuscaPesq;
  public
    { Public declarations }
  end;

var
  FormPCPGrid: TFormPCPGrid;

implementation

uses Pcp0001, DmProdu, uteis, iniciodb;

{$R *.DFM}





procedure TFormPCPGrid.Edt_BuscaClick(Sender: tObject);
begin
    Edt_Busca.SelectAll;
end;

procedure TFormPCPGrid.RadCodigoClick(Sender: tObject);
begin
    LayOutPesq;
end;

procedure TFormPCPGrid.Rad_DescriClick(Sender: tObject);
begin
    LayOutPesq;
end;

procedure TFormPCPGrid.FormShow(Sender: tObject);
begin
    Left := 237;
    Top  := 191;
    MostraPesq;
    Rad_Descri.Checked := True;
    LayOutPesq;
end;

procedure TFormPCPGrid.Edt_BuscaEnter(Sender: tObject);
begin
    Edt_Busca.Text := '';
    BotaoPesquisar;
    MostraPesq;
    Edt_Busca.Color := $0080FFFF;
end;

procedure TFormPCPGrid.LayOutPesq;
begin
    if RadCodigo.checked  then
       begin
           Grp01.Caption       := 'Código da Seção';
           Edt_Busca.text      := '';
           Edt_Busca.Width     := 26;
           Edt_Busca.MaxLength := 2;
           Edt_Busca.setfocus;
       end;
    if Rad_Descri.checked  then
       begin
           Grp01.Caption       := 'Nome da Seção';
           Edt_Busca.text      := '';
           Edt_Busca.Width     := 200;
           Edt_Busca.MaxLength := 30;
           Edt_Busca.setfocus;
       end;
end;

procedure TFormPCPGrid.FormKeyPress(Sender: tObject; var Key: Char);
begin
    if key = #27 then
       begin
           close;
           key := #0;
       end;
end;

procedure TFormPCPGrid.BotaoPesquisar;
begin
    if Edt_Busca.Text <> '' Then
       begin
           BitPesquisar.Visible := False;
           BitCancelar .Visible := True;
       end
    else
       begin
           BitPesquisar.Visible := True;
           BitCancelar .Visible := False;
       end;
end;

procedure TFormPCPGrid.BuscaPesq;
Var
wSelect, wOrdem : String;
begin
    {Busca pelo nome}
    if Edt_Busca.Text <> '' then
       begin
           if RadCodigo.checked  then
              begin
                  Edt_Busca.Text :=  StrZero(Edt_Busca.Text,Edt_Busca.MaxLength);
                  wSelect := 'where S1.SEC_CODIGO = '''+Edt_Busca.Text+'''';
                  wOrdem  := 'S1.SEC_CODIGO';
              end;
           if Rad_Descri.checked  then
              begin
                  wSelect := 'where S1.SEC_DESCRI LIKE '''+Edt_Busca.Text+'%''';
                  wOrdem  := 'S1.SEC_DESCRI';
              end;
           try
             SqlCdsConsPcl.Close;
             SqlCdsConsPcl.CommandText := SqlDef('ORDEMPRODUCAO','Select S1.* from PCP_SECAO S1',wSelect,wOrdem,'S1.');
             SqlCdsConsPcl.Open;
             if SqlCdsConsPcl.IsEmpty then
                begin
                    Mensagens;
                    Edt_Busca.Text := '';
                    BotaoPesquisar;
                    BitCancelar.Click; //Caso digitou qualquer coisa e nao encontrou.
                 end
             else
                begin
                    BotaoPesquisar;
                    DBGridPCP.setfocus;
                end;
            except on E:EdataBaseError do
                uteis.erro  (Pchar('Erro ao abrir a tabela de PCP_SECAO !'+e.message));
            end;
       end;
    screen.cursor := crDefault;
end;

procedure TFormPCPGrid.mensagens;
begin
    if RadCodigo.checked  then
       begin
           if Edt_Busca.Text = '' then
              uteis.aviso('Informe o Código do Processo da Produção !')
           else
              uteis.aviso('Código Processo da Produção não encontrado !');
       end;
    if Rad_Descri.checked  then
      begin
          if Edt_Busca.Text = '' then
             uteis.aviso('Informe a Descrição do Processo da Produção !')
          else
             uteis.aviso('Processo da Produção não encontrado !');
      end;
end;

procedure TFormPCPGrid.MostraPesq;
begin
    Screen.Cursor := crHourGlass;
    try
      SqlCdsConsPcl.Close;
      SqlCdsConsPcl.CommandText := SQLDEF('ORDEMPRODUCAO','SELECT S1.* from PCP_SECAO S1','','S1.SEC_DESCRI','S1.');
      SqlCdsConsPcl.Open;
    except on E:EDataBaseError do
        uteis.erro  (pchar('Erro ao Abrir a Tabela PCP_SECAO !'+E.MESSAGE));
    end;
    Screen.Cursor := crDefault;
end;

procedure TFormPCPGrid.BitPesquisarClick(Sender: tObject);
begin
    Screen.Cursor := Crhourglass;
    If (Edt_Busca.Text <> '') then
       begin
           BuscaPesq;
       end
    else
       begin
           Mensagens;
           Edt_Busca.Text := '';
           BotaoPesquisar;
           BitCancelar.Click;
       end;
    Screen.Cursor := CrDefault;
end;

procedure TFormPCPGrid.BitSairClick(Sender: tObject);
begin
    Close;
end;

procedure TFormPCPGrid.BitCancelarClick(Sender: tObject);
begin
    Screen.Cursor := crHourGlass;
    MostraPesq;
    Edt_Busca.Text := '';
    BotaoPesquisar;
    Edt_Busca.SetFocus;
    Screen.Cursor := crDefault;
end;

procedure TFormPCPGrid.Edt_BuscaKeyPress(Sender: tObject; var Key: Char);
begin
    if RadCodigo.checked  then
       begin
           if not(Key in['0'..'9',#8]) then
              begin
                  //beep;
                  Key:=#0;
              end;
       end;
end;

procedure TFormPCPGrid.Edt_BuscaExit(Sender: tObject);
begin
    Edt_Busca.Color := clWindow;
    if Edt_Busca.text <>'' then
       begin
           if RadCodigo.checked  then
              Edt_Busca.Text := StrZero(Edt_Busca.text,Edt_Busca.MaxLength);
       end;
end;

procedure TFormPCPGrid.FormCloseQuery(Sender: tObject;
  var CanClose: Boolean);
begin
    Screen.Cursor := crHourGlass;
    try
      FormPCPCadastro.DbeSEC_DESCRI.SetFocus;
      SqlCdsConsPcl.Close;
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao Fechar a Tabela !'+e.message));
    end;
    Screen.Cursor := crDefault;
end;

procedure TFormPCPGrid.DBGridPCPKeyPress(Sender: tObject; var Key: Char);
begin
    if key = #13 then
       begin
           FormPCPCadastro.EdtSEC_CODIGO.Text := SqlCdsConsPclSEC_CODIGO.AsString;
           FormPCPCadastro.Busca;
           FormPCPCadastro.DbeSEC_DESCRI.SetFocus;
           SqlCdsConsPcl.Close;
           close;
           key := #0;
       end;
end;

procedure TFormPCPGrid.DBGridPCPDblClick(Sender: tObject);
begin
    FormPCPCadastro.EdtSEC_CODIGO.Text := SqlCdsConsPclSEC_CODIGO.AsString;
    FormPCPCadastro.Busca;
    FormPCPCadastro.DbeSEC_DESCRI.SetFocus;
    SqlCdsConsPcl.Close;
    close;
end;

end.
