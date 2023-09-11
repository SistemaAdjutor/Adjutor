unit uCadastroFrases;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, DBCtrls, StdCtrls, Buttons, ExtCtrls, DB, RwFunc, SqlExpr,SqlClientDataSet,
  Provider, Grids, DBGrids, DBClient, DBLocal, DBLocalS, Data.DBXFirebird,
  SimpleDS;

type
  TFrmCadastroObservacao = class(TForm)
    Panel1: TPanel;
    Bit_Cancelar: TBitBtn;
    Bit_Sair: TBitBtn;
    Bit_Excluir: TBitBtn;
    Bit_Gravar: TBitBtn;
    Bit_novo: TBitBtn;
    DBNavigator1: TDBNavigator;
    DsFrases: TDataSource;
    SqlCdsFrases: TSQLClientDataSet;
    SqlCdsFrasesFRA_REGISTRO: TIntegerField;
    SqlCdsFrasesEMP_CODIGO: TStringField;
    SqlCdsFrasesFRA_TITULO: TStringField;
    SqlCdsFrasesFRA_FRASE: TMemoField;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    GroupBox3: TGroupBox;
    DBMemo1: TDBMemo;
    DBEdit1: TDBEdit;
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
    procedure DBGrid1KeyPress(Sender: tObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: tObject);
    procedure SqlCdsFrasesBeforeEdit(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);

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
    procedure BotoesAcesso;
  end;

var
  FrmCadastroObservacao: TFrmCadastroObservacao;

implementation

uses Uteis, DataMov, DmProdu, Almox0002, Men0001, DataCad, iniciodb, uPedidoItem;

{$R *.dfm}


procedure TFrmCadastroObservacao.DesabilitaBotoes;
begin
    BotoesAcesso;
    Bit_novo.Enabled       := False;
    Bit_Excluir.Enabled    := False;
    Bit_Gravar.Enabled     := True;
    Bit_Cancelar.Visible   := True;
    Bit_Sair.Visible       := False;
    GroupBox1.Enabled      := False;
    DbNavigator1.Enabled   := False;

end;

procedure TFrmCadastroObservacao.HabilitaBotoes;
begin
    Bit_novo.Enabled       := True;
    Bit_Excluir.Enabled    := True;
    Bit_Gravar.Enabled     := False;
    Bit_Cancelar.Visible   := False;
    Bit_Sair.Visible       := True;
    GroupBox1.Enabled      := True;
    DbNavigator1.Enabled   := True;
    BotoesAcesso;
end;

procedure TFrmCadastroObservacao.FormShow(Sender: tObject);
begin
    {ativa o método ao evento OnActiveControlChange}
    Screen.OnActiveControlChange   := MudaCorCampos;
    Screen.Cursor := crHourglass;
    Left := 237;
    Top  := 191;
    try
      SqlCdsFrases.close;
      SqlCdsFrases.CommandText := SQLDEF('TABELAS','SELECT * FROM FRASES','','FRA_TITULO','');
      SqlCdsFrases.Open;
      if SqlCdsFrases.IsEmpty Then       //Evita alteração antes que se
         begin                                    //inclua registros na tabela.
             DsFrases.AutoEdit:=False;
         end
      else
         begin
             DsFrases.AutoEdit := true;
         end;
    except on E:EdatabaseError do
        uteis.erro  (Pchar('Erro ao abrir tabela FRASES!'+e.message));
    end;
    Habilitabotoes;
    Screen.Cursor := crDefault;
end;

procedure TFrmCadastroObservacao.MudaCorCampos(Sender: tObject);
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

procedure TFrmCadastroObservacao.Bit_novoClick(Sender: tObject);
begin
    try
      screen.Cursor:= crHourglass;
      SqlCdsFrases.Insert;
      // DEFAULT
      SqlCdsFrasesEMP_CODIGO.AsString := dbInicio.Empresa.EMP_CODIGO;
      Screen.Cursor := crDefault;
      Desabilitabotoes;
      uteis.HabilitaIncluir('CadastrosTabelas',DBInicio.Usuario.CODIGO,FrmCadastroObservacao);
      DBEdit1.SetFocus;
    except on E:EdatabaseError do
        uteis.erro  (Pchar('Erro ao inserir registro !'+e.Message));
    end;
end;

procedure TFrmCadastroObservacao.Bit_ExcluirClick(Sender: tObject);
begin
    if sqlCdsFrases.IsEmpty Then        //evita exclusão de registro
       Begin                                        //em uma Tabela Vazia.
           messagebeep($ffff);
           uteis.aviso('Não existe Observação cadastrada !');
           exit;
       end;
    screen.Cursor := crHourGlass;
    try
       if uteis.confirmacao ( 'Deseja excluir a Observação ?') = Mryes then
          begin
              Screen.Cursor := crHourGlass;
              sqlCdsFrases.Delete;
              sqlCdsFrases.ApplyUpdates(0);
              Screen.Cursor := crDefault;
          end;
    except on E:EdataBaseError do
       uteis.erro  (pchar('Erro ao excluir o registro !'+e.message));
    end;
    Screen.Cursor := crDefault;
    DBGrid1.SetFocus;
end;

procedure TFrmCadastroObservacao.Bit_GravarClick(Sender: tObject);
begin
    try
      screen.cursor := crHourglass;
      SqlCdsFrases.ApplyUpdates(0);
      SqlCdsFrases.Refresh;
      screen.cursor := crDefault;
      Habilitabotoes;
      DBGrid1.SetFocus;
      DsFrases.AutoEdit := true;
    except on E:EdatabaseError do
       uteis.erro  (Pchar('Erro ao gravar registro !'+e.Message));
    end;
end;

procedure TFrmCadastroObservacao.Bit_SairClick(Sender: tObject);
begin
    Close;
end;

procedure TFrmCadastroObservacao.BotoesAcesso;
begin
     if assigned(FrmCadastroObservacao) then
     begin
       Bit_novo.Enabled := Uteis.AcessoUsuario('CadastrosTabelas',DBInicio.Usuario.CODIGO,FrmCadastroObservacao).Incluir;
       Bit_Excluir.Enabled := Uteis.AcessoUsuario('CadastrosTabelas',DBInicio.Usuario.CODIGO,FrmCadastroObservacao).Exluir;
       DsFrases.AutoEdit := Uteis.AcessoUsuario('CadastrosTabelas',DBInicio.Usuario.CODIGO,FrmCadastroObservacao).Alterar;
     end;
end;

procedure TFrmCadastroObservacao.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
    Screen.OnActiveControlChange := NIL;
    if not assigned(FrmPedidoItem)then
       Action := CaFree;
end;

procedure TFrmCadastroObservacao.FormCloseQuery(Sender: tObject;
  var CanClose: Boolean);
begin    verificaEdicao;
//    Screen.cursor := crHourGlass;
    Try
      SqlCdsFrases.Close;
    except on E:EDataBaseError do
      uteis.erro  (pchar('Impossível fechar a tabela de FRASES !'+e.message));
    End;
end;

procedure TFrmCadastroObservacao.FormDestroy(Sender: TObject);
begin
     if not assigned(FrmPedidoItem)then
        FrmCadastroObservacao := Nil;
end;

procedure TFrmCadastroObservacao.VerificaEdicao;
begin
    // verifica estado da tabela em edicao e inclusao
    screen.cursor :=crHourglass;
    if SqlCdsFrases.State in [dsEdit,dsInsert] then
       begin
           if uteis.confirmacao ( 'Deseja salvar alterações ?') = idyes then
              begin
                  DmProducao.CdsAlmox.ApplyUpdates(0);
                  DmProducao.CdsAlmox.Refresh;
                  Habilitabotoes;
              end
           else
              begin
                  SqlCdsFrases.Cancel;
                  Habilitabotoes;
              end;
           end;
    screen.cursor := crDefault;
end;

procedure TFrmCadastroObservacao.Bit_CancelarClick(Sender: tObject);
begin
    screen.Cursor := crHourglass;
    SqlCdsFrases.Cancel;
    if SqlCdsFrases.IsEmpty Then
       begin
           DsFrases.AutoEdit := False;
       end;
    screen.Cursor :=crDefault;
    Habilitabotoes;
    DBGrid1.SetFocus;
end;

procedure TFrmCadastroObservacao.PesquisaAlm;
begin
end;

procedure TFrmCadastroObservacao.EdtAmox_codigoKeyPress(Sender: tObject;
  var Key: Char);
begin
    if not (key in ['0'..'9',#8]) then
       begin
          //beep;
          Key := #0;
       end;
end;

procedure TFrmCadastroObservacao.FormKeyPress(Sender: tObject; var Key: Char);
begin
    if key = #27 then
       begin
          close;
          key := #0;
       end;
end;

procedure TFrmCadastroObservacao.DBGrid1KeyPress(Sender: tObject;
  var Key: Char);
begin
   if (Key = #13) then
      begin
         Key := #0;
         if (Assigned(memo)) and (not SqlCdsFrases.IsEmpty) then
            begin
               if (memo.ClassType = TMemo) then
                  (memo as TMemo).Lines.Add(SqlCdsFrasesFRA_FRASE.AsString)
               else
               if (memo.ClassType = TDBMemo) then
                  (memo as TDBMemo).Lines.Add(SqlCdsFrasesFRA_FRASE.AsString);
               Close;
            end;
      end;
end;

procedure TFrmCadastroObservacao.DBGrid1DblClick(Sender: tObject);
begin
   if (Assigned(memo)) and (not SqlCdsFrases.IsEmpty) then
      begin
         if (memo.ClassType = TMemo) then
            (memo as TMemo).Lines.Add(SqlCdsFrasesFRA_FRASE.AsString)
         else
         if (memo.ClassType = TDBMemo) then
            (memo as TDBMemo).Lines.Add(SqlCdsFrasesFRA_FRASE.AsString);
         Close;
         Close;
      end;
end;

procedure TFrmCadastroObservacao.SqlCdsFrasesBeforeEdit(DataSet: TDataSet);
begin
   DesabilitaBotoes;
end;

end.



