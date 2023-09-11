unit Almox0002;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, BaseForm,
  Dialogs, Provider, SqlExpr,SqlClientDataSet, DB, Grids,
  DBGrids, StdCtrls, Buttons, RwFunc, DBClient, DBLocal, DBLocalS,
  Data.DBXFirebird, SimpleDS, ACBrEnterTab, ACBrBase, ACBrCalculadora;

type
  TFormAlmoxGrid = class(TFrmBase)
    BitPesquisar: TBitBtn;
    BitCancelar: TBitBtn;
    BitSair: TBitBtn;
    GroupBox1: TGroupBox;
    RadNome: TRadioButton;
    RadCodigo: TRadioButton;
    GbPesquisa: TGroupBox;
    Edt_nome: TEdit;
    DBGrid1: TDBGrid;
    SqlCdsAlmox: TSQLClientDataSet;
    DsAlmox: TDataSource;
    SqlCdsAlmoxAMX_CODIGO: TStringField;
    SqlCdsAlmoxAMX_DESCRI: TStringField;
    SqlCdsAlmoxAMX_TIPO: TStringField;
    procedure Edt_nomeKeyPress(Sender: tObject; var Key: Char);
    procedure RadCodigoClick(Sender: tObject);
    procedure BitCancelarClick(Sender: tObject);
    procedure BitSairClick(Sender: tObject);
    procedure BitPesquisarClick(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure DBGrid1DblClick(Sender: tObject);
    procedure Edt_nomeEnter(Sender: tObject);
    procedure Edt_nomeExit(Sender: tObject);
    procedure DBGrid1KeyDown(Sender: tObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    procedure LayOutAlmox;
    procedure MostraAlmox;
    procedure Mensagens;
    procedure BotaoPesquisar;
    procedure BuscaAlmox;
  public
    { Public declarations }
  end;

var
  FormAlmoxGrid: TFormAlmoxGrid;

implementation

uses Uteis, Almox0001;

{$R *.dfm}





procedure TFormAlmoxGrid.Edt_nomeKeyPress(Sender: tObject; var Key: Char);
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

procedure TFormAlmoxGrid.RadCodigoClick(Sender: tObject);
begin
    LayOutAlmox;
end;

procedure TFormAlmoxGrid.LayOutAlmox;
begin
    if RadNome.checked  then
       begin
           GbPesquisa.Caption := 'Digite nome do almoxarifado';
           Edt_nome.text      := '';
           Edt_nome.MaxLength := 35;
           Edt_nome.Width     := 175;
       end;
    if RadCodigo.checked  then
       begin
           gbPesquisa.Caption := 'Digite código do almoxarifado !';
           Edt_nome.text      := '';
           Edt_nome.MaxLength := 3;
           Edt_nome.Width     := 30;
       end;
    GroupBox1.TabOrder    := 0;
    GbPesquisa.TabOrder   := 1;
    BitPesquisar.TabOrder := 2;
    BitCancelar.TabOrder  := 3;
    BitSair.TabOrder      := 4;
    Edt_nome.SetFocus;
    BotaoPesquisar;
    MostraAlmox;
end;

procedure TFormAlmoxGrid.MostraAlmox;
begin
    Screen.Cursor := crHourGlass;
    try
      SqlCdsAlmox.Close;
      SqlCdsAlmox.CommandText := SQLDEF('TABELAS','SELECT A1.* from ALMOX0000 A1','','A1.AMX_DESCRI','A1.');
      SqlCdsAlmox.Open;
    except on E:EDataBaseError do
        uteis.erro  (pchar('Erro ao Abrir a Tabela ALMOX0000 !'+E.MESSAGE));
    end;
    Screen.Cursor := crDefault;
end;

procedure TFormAlmoxGrid.Mensagens;
begin
    if RadCodigo.checked  then
       begin
           if Edt_Nome.Text = '' then
              uteis.aviso('Informe o Código do Almoxarifado !')
           else
              uteis.aviso('Código Almoxarifado não encontrado !');
       end;
    if RadNome.checked  then
      begin
          if Edt_Nome.Text = '' then
             uteis.aviso('Informe a Nome do Almoxarifado !')
          else
             uteis.aviso('Almoxarifado não encontrado !');
      end;
end;

procedure TFormAlmoxGrid.BitCancelarClick(Sender: tObject);
begin
    Screen.Cursor := crHourGlass;
    MostraAlmox;
    Edt_nome.Text := '';
    BotaoPesquisar;
    Edt_nome.SetFocus;
    Screen.Cursor := crDefault;
end;

procedure TFormAlmoxGrid.BotaoPesquisar;
begin
    if Edt_Nome.Text <> '' Then
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

procedure TFormAlmoxGrid.BitSairClick(Sender: tObject);
begin
    Close;
end;

procedure TFormAlmoxGrid.BitPesquisarClick(Sender: tObject);
begin
    Screen.Cursor := Crhourglass;
    If (Edt_Nome.Text <> '') then
       begin
           BuscaAlmox;
       end
    else
       begin
           Mensagens;
           Edt_Nome.Text := '';
           BotaoPesquisar;
           BitCancelar.Click;
       end;
    Screen.Cursor := CrDefault;
end;

procedure TFormAlmoxGrid.BuscaAlmox;
Var
  wSelect,wOrdem :String;
begin
    {Busca pelo nome}
    if Edt_Nome.Text <> '' then
       begin
           if RadCodigo.checked  then
              begin
                  Edt_nome.Text :=  StrZero(Edt_nome.Text,Edt_nome.MaxLength);
                  wSelect := 'where A1.AMX_CODIGO = '''+Edt_nome.Text+'''';
                  wOrdem  := 'A1.AMX_CODIGO';
              end;
           if RadNome.checked  then
              begin
                  wSelect := 'where A1.AMX_DESCRI LIKE '''+Edt_nome.Text+'%''';
                  wOrdem  := 'A1.AMX_DESCRI';
              end;
           try
             SqlCdsAlmox.Close;
             SqlCdsAlmox.CommandText := SqlDef('TABELAS','Select A1.* from ALMOX0000 A1',wSelect,wOrdem,'A1.');
             SqlCdsAlmox.Open;
             if SqlCdsAlmox.IsEmpty then
                begin
                    Mensagens;
                    Edt_Nome.Text := '';
                    BotaoPesquisar;
                    BitCancelar.Click;
                 end
             else
                begin
                    BotaoPesquisar;
                    DBGrid1.setfocus;
                end;
            except on E:EdataBaseError do
                uteis.erro  (Pchar('Erro ao abrir a tabela de BANCOS !'+e.message));
            end;
       end;
end;

procedure TFormAlmoxGrid.FormShow(Sender: tObject);
begin
    inherited;
    Edt_Nome.SetFocus;
    MostraAlmox;
    RadNome.Checked := True;
    LayOutAlmox;
end;

procedure TFormAlmoxGrid.DBGrid1DblClick(Sender: tObject);
begin
    FormCadAlmox.EdtAmox_codigo.Text := SqlCdsAlmoxAMX_CODIGO.AsString;
    FormCadAlmox.BuscaAlmox;
    FormCadAlmox.DbeAmx_Descri.SetFocus;
    Close;
end;

procedure TFormAlmoxGrid.DBGrid1KeyDown(Sender: tObject; var Key: Word;
  Shift: TShiftState);
begin
    if key = VK_RETURN then
    begin
         FormCadAlmox.EdtAmox_codigo.Text := SqlCdsAlmoxAMX_CODIGO.AsString;
         FormCadAlmox.BuscaAlmox;
         FormCadAlmox.DbeAmx_Descri.SetFocus;
         Close;
         key := 0;
    end;
    inherited;

end;

procedure TFormAlmoxGrid.Edt_nomeEnter(Sender: tObject);
begin
    Edt_nome.Text := '';
    BitCancelar.Click;
    Edt_nome.Color := $0080FFFF;
end;

procedure TFormAlmoxGrid.Edt_nomeExit(Sender: tObject);
begin
    Edt_nome.Color := clWindow;
    if Edt_Nome.text <>'' then
       begin
           if RadCodigo.checked  then
              Edt_Nome.Text := StrZero(Edt_Nome.text,Edt_Nome.MaxLength);
       end;
end;

end.
