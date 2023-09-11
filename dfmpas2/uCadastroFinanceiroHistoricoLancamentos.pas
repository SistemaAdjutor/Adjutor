unit uCadastroFinanceiroHistoricoLancamentos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, DBCtrls, StdCtrls, Buttons, ExtCtrls, DB, RwFunc, SqlExpr,
  Provider, Grids, DBGrids, DBClient, DBLocal, DBLocalS, FMTBCd;

type
  TFrmCadastroHistoricoConciliacao = class(TForm)
    DBNavigator1: TDBNavigator;
    DsFrases: TDataSource;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    SqlHistorico: TSQLDataSet;
    SqlCdsHistorico: TClientDataSet;
    DspHistorico: TDataSetProvider;
    SqlHistoricoHCO_REGISTRO: TIntegerField;
    SqlHistoricoEMP_CODIGO: TStringField;
    SqlHistoricoHCO_DESCRICAO: TStringField;
    SqlHistoricoHCO_COMPENSACAO_DIAS: TIntegerField;
    SqlCdsHistoricoHCO_REGISTRO: TIntegerField;
    SqlCdsHistoricoEMP_CODIGO: TStringField;
    SqlCdsHistoricoHCO_DESCRICAO: TStringField;
    SqlCdsHistoricoHCO_COMPENSACAO_DIAS: TIntegerField;
    DBRadioGroup1: TDBRadioGroup;
    Bit_Sair: TBitBtn;
    Bit_Gravar: TBitBtn;
    Bit_Excluir: TBitBtn;
    Bit_novo: TBitBtn;
    Bit_Cancelar: TBitBtn;
    SqlHistoricoHCO_TIPO: TStringField;
    SqlCdsHistoricoHCO_TIPO: TStringField;
    procedure FormShow(Sender: tObject);
    procedure Bit_novoClick(Sender: tObject);
    procedure Bit_ExcluirClick(Sender: tObject);
    procedure Bit_GravarClick(Sender: tObject);
    procedure Bit_SairClick(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: tObject; var CanClose: Boolean);
    procedure VerificaEdicao;
    procedure Bit_CancelarClick(Sender: tObject);
    procedure EdtAmox_codigoKeyPress(Sender: tObject; var Key: Char);
    procedure FormKeyPress(Sender: tObject; var Key: Char);
    procedure SqlCdsHistoricoBeforeEdit(DataSet: TDataSet);
  private
    { Private declarations }
     CampoEdit    :TEdit;
     CampoDBEdit  :TDBEdit;
     procedure MudaCorCampos(Sender: tObject);
     procedure HabilitaBotoes;
     procedure PesquisaAlm;
  public
    { Public declarations }
    memo:tObject;
    procedure DesabilitaBotoes;
  end;

var
  FrmCadastroHistoricoConciliacao: TFrmCadastroHistoricoConciliacao;

implementation

uses DataMov, DmProdu, Almox0002, Men0001, DataCad, uteis, iniciodb;

{$R *.dfm}





procedure TFrmCadastroHistoricoConciliacao.DesabilitaBotoes;
begin
    Bit_novo.Enabled       := False;
    Bit_Excluir.Enabled    := False;
    Bit_Gravar.Enabled     := True;
    Bit_Cancelar.Visible   := True;
    Bit_Sair.Visible       := False;
    GroupBox1.Enabled      := False;
    DbNavigator1.Enabled   := False;
end;

procedure TFrmCadastroHistoricoConciliacao.HabilitaBotoes;
begin
    Bit_novo.Enabled       := True;
    Bit_Excluir.Enabled    := True;
    Bit_Gravar.Enabled     := False;
    Bit_Cancelar.Visible   := False;
    Bit_Sair.Visible       := True;
    GroupBox1.Enabled      := True;
    DbNavigator1.Enabled   := True;
end;

procedure TFrmCadastroHistoricoConciliacao.FormShow(Sender: tObject);
begin
    {ativa o método ao evento OnActiveControlChange}
    Screen.OnActiveControlChange   := MudaCorCampos;
    Screen.Cursor := crHourglass;
    Left := 237;
    Top  := 191;
    try
      SqlCdsHistorico.close;
      SqlCdsHistorico.CommandText := SQLDEF('TABELAS','SELECT * FROM HIST_CONCILIACAO','','HCO_DESCRICAO','');
      SqlCdsHistorico.Open;
      if SqlCdsHistorico.IsEmpty Then       //Evita alteração antes que se
         begin                                    //inclua registros na tabela.
             DsFrases.AutoEdit:=False;
         end
      else
         begin
             DsFrases.AutoEdit := true;
         end;
    except on E:EdatabaseError do
        uteis.erro  (Pchar('Erro ao abrir tabela HCO_DESCRICAO!'+e.message));
    end;
    Habilitabotoes;
    Screen.Cursor := crDefault;
end;

procedure TFrmCadastroHistoricoConciliacao.MudaCorCampos(Sender: tObject);
begin
    {cor dos campos TDBEdit}
     if Assigned(CampoDbEdit) then
        begin
           CampoDbEdit.color := clWindow;
        end;
     if ActiveControl is TDBEdit then
        begin
           if TDBEdit(ActiveControl).color = $00D7D7D7 then
              begin
                 exit;
              end;
           TDBEdit(ActiveControl).color := $0080FFFF;
           CampoDbEdit := TDBEdit(ActiveControl);
        end
     else
        begin
           CampoDbEdit := nil;
        end;
    {CampoEdit :TEdit}
     if Assigned(CampoEdit) then
        begin
           CampoEdit.color := clWindow;
        end;
     if ActiveControl is TEdit then
        begin
           if TEdit(ActiveControl).color = $00D7D7D7 then
              begin
                 exit;
              end;
           TEdit(ActiveControl).color := $0080FFFF;
           CampoEdit := TEdit(ActiveControl);
        end
     else
        begin
           CampoEdit := nil;
        end;
end;

procedure TFrmCadastroHistoricoConciliacao.Bit_novoClick(Sender: tObject);
begin
    try
      screen.Cursor:= crHourglass;
      SqlCdsHistorico.Insert;
      // DEFAULT
      SqlCdsHistoricoEMP_CODIGO.AsString := dbInicio.Empresa.EMP_CODIGO;
      SqlCdsHistoricoHCO_COMPENSACAO_DIAS.AsInteger := 0;
      Screen.Cursor := crDefault;
      Desabilitabotoes;
      DBEdit1.SetFocus;
    except on E:EdatabaseError do
        uteis.erro  (Pchar('Erro ao inserir registro !'+e.Message));
    end;
end;

procedure TFrmCadastroHistoricoConciliacao.Bit_ExcluirClick(Sender: tObject);
begin
    if SqlCdsHistorico.IsEmpty Then        //evita exclusão de registro
       Begin                                        //em uma Tabela Vazia.
           messagebeep($ffff);
           uteis.aviso('Não existe Histórico cadastrado !');
           exit;
       end;
    screen.Cursor := crHourGlass;
    try
       if uteis.confirmacao ( 'Deseja excluir a Observação ?') = Mryes then
          begin
              Screen.Cursor := crHourGlass;
              SqlCdsHistorico.Delete;
              SqlCdsHistorico.ApplyUpdates(0);
              Screen.Cursor := crDefault;
          end;
    except on E:EdataBaseError do
       uteis.erro  (pchar('Erro ao excluir o registro !'+e.message));
    end;
    Screen.Cursor := crDefault;
    DBGrid1.SetFocus;
end;

procedure TFrmCadastroHistoricoConciliacao.Bit_GravarClick(Sender: tObject);
begin
    try
      screen.cursor := crHourglass;
      SqlCdsHistorico.ApplyUpdates(0);
      SqlCdsHistorico.Refresh;
      screen.cursor := crDefault;
      Habilitabotoes;
      DBGrid1.SetFocus;
      DsFrases.AutoEdit := true;
    except on E:EdatabaseError do
       uteis.erro  (Pchar('Erro ao gravar registro !'+e.Message));
    end;
end;

procedure TFrmCadastroHistoricoConciliacao.Bit_SairClick(Sender: tObject);
begin
    Close;
end;

procedure TFrmCadastroHistoricoConciliacao.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
    Screen.OnActiveControlChange := NIL;
end;

procedure TFrmCadastroHistoricoConciliacao.FormCloseQuery(Sender: tObject;
  var CanClose: Boolean);
begin
    verificaEdicao;
    Screen.cursor := crHourGlass;
    Try
      SqlCdsHistorico.Close;
    except on E:EDataBaseError do
      uteis.erro  (pchar('Impossível fechar a tabela de FRASES !'+e.message));
    end;
    Screen.cursor := crDefault;
end;

procedure TFrmCadastroHistoricoConciliacao.VerificaEdicao;
begin
    // verifica estado da tabela em edicao e inclusao
    screen.cursor :=crHourglass;
    if SqlCdsHistorico.State in [dsEdit,dsInsert] then
       begin
           if uteis.confirmacao ( 'Deseja salvar alterações ?') = idyes then
              begin
                  SqlCdsHistorico.ApplyUpdates(0);
                  SqlCdsHistorico.Refresh;
                  Habilitabotoes;
              end
           else
              begin
                  SqlCdsHistorico.Cancel;
                  Habilitabotoes;
              end;
           end;
    screen.cursor := crDefault;
end;

procedure TFrmCadastroHistoricoConciliacao.Bit_CancelarClick(Sender: tObject);
begin
    screen.Cursor := crHourglass;
    SqlCdsHistorico.Cancel;
    if SqlCdsHistorico.IsEmpty Then
       begin
           DsFrases.AutoEdit := False;
       end;
    screen.Cursor :=crDefault;
    Habilitabotoes;
    DBGrid1.SetFocus;
end;

procedure TFrmCadastroHistoricoConciliacao.PesquisaAlm;
begin
end;

procedure TFrmCadastroHistoricoConciliacao.EdtAmox_codigoKeyPress(Sender: tObject;
  var Key: Char);
begin
    if not (key in ['0'..'9',#8]) then
       begin
          //beep;
          Key := #0;
       end;
end;

procedure TFrmCadastroHistoricoConciliacao.FormKeyPress(Sender: tObject; var Key: Char);
begin
    if key = #27 then
       begin
          close;
          key := #0;
       end;
end;

procedure TFrmCadastroHistoricoConciliacao.SqlCdsHistoricoBeforeEdit(DataSet: TDataSet);
begin
   DesabilitaBotoes;
end;

end.
