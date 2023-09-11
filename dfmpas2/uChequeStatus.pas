unit uChequeStatus;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, Buttons, ExtCtrls, DB, Grids, DBGrids;

type
  TFrmChequeStatus = class(TForm)
    Panel1: TPanel;
    Bit_Cancelar: TBitBtn;
    Bit_Sair: TBitBtn;
    Bit_Excluir: TBitBtn;
    Bit_Gravar: TBitBtn;
    Bit_novo: TBitBtn;
    DBNavigator1: TDBNavigator;
    DbeCid_Descri: TDBEdit;
    Label2: TLabel;
    grpListStatus: TGroupBox;
    dbgrdStatus: TDBGrid;
    procedure FormKeyPress(Sender: tObject; var Key: Char);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: tObject; var CanClose: Boolean);
    procedure Bit_novoClick(Sender: tObject);
    procedure Bit_ExcluirClick(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure Bit_GravarClick(Sender: tObject);
    procedure Bit_SairClick(Sender: tObject);
    procedure Bit_CancelarClick(Sender: tObject);
    procedure EdtCidade_CodigoKeyPress(Sender: tObject; var Key: Char);
    procedure EdtCidade_CodigoExit(Sender: tObject);
    procedure DbeCid_CodIBGEKeyPress(Sender: tObject; var Key: Char);
    procedure DBECid_CEP_InicialKeyPress(Sender: tObject; var Key: Char);
    procedure DBECid_CEP_FinalKeyPress(Sender: tObject; var Key: Char);
  private
    { Private declarations }
    CampoEdit    :TEdit;
    CampoDBEdit  :TDBEdit;
    procedure MudaCorCampos(Sender: tObject);

  public
    { Public declarations }
    procedure BuscaCidade;
    procedure VerificaEdicao;
    procedure HabilitaBotoes;
    procedure DesabilitaBotoes;
  end;

var
  FrmChequeStatus: TFrmChequeStatus;

implementation

uses Uteis, DataCad1, DataCad, RWFunc, iniciodb;

{$R *.dfm}

procedure TFrmChequeStatus.BuscaCidade;
begin
end;

procedure TFrmChequeStatus.FormKeyPress(Sender: tObject; var Key: Char);
begin
   if key = #27 then
      begin
         Close;
         key := #0;
      end;
end;

procedure TFrmChequeStatus.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
    Screen.OnActiveControlChange := NIL;
end;

procedure TFrmChequeStatus.FormCloseQuery(Sender: tObject;
  var CanClose: Boolean);
begin
    verificaEdicao;
    Screen.cursor := crHourGlass;
    Try
      DataCadastros1.CdsChequeStatus.Close;
    except on E:EDataBaseError do
      uteis.erro  (pchar('Impossível fechar a tabela de CHEQUE_STATUS !'+e.message));
    end;
    Screen.cursor := crDefault;
end;

procedure TFrmChequeStatus.VerificaEdicao;
begin
    // verifica estado da tabela em edicao e inclusao
    screen.cursor :=crHourglass;
    if DataCadastros1.CdsChequeStatus.State in [dsEdit,dsInsert] then
       begin
           if uteis.confirmacao ( 'Deseja salvar alterações ?') = idyes then
              begin
                  DataCadastros1.CdsChequeStatus.ApplyUpdates(0);
                  DataCadastros1.CdsChequeStatus.Refresh;
                  Habilitabotoes;
              end
           else
              begin
                  DataCadastros1.CdsChequeStatus.Cancel;
                  Habilitabotoes;
              end;
           end;
    screen.cursor := crDefault;
end;

procedure TFrmChequeStatus.DesabilitaBotoes;
begin
    Bit_novo.Enabled         := False;
    Bit_Excluir.Enabled      := False;
    Bit_Gravar.Enabled       := True;
    Bit_Cancelar.Visible     := True;
    Bit_Sair.Visible         := False;
    DbNavigator1.Enabled     := False;
end;

procedure TFrmChequeStatus.HabilitaBotoes;
begin
    Bit_novo.Enabled         := True;
    Bit_Excluir.Enabled      := True;
    Bit_Gravar.Enabled       := False;
    Bit_Cancelar.Visible     := False;
    Bit_Sair.Visible         := True;
    DbNavigator1.Enabled     := True;
end;

procedure TFrmChequeStatus.MudaCorCampos(Sender: tObject);
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

procedure TFrmChequeStatus.Bit_novoClick(Sender: tObject);
begin
    try
      screen.Cursor:= crHourglass;
      DataCadastros1.CdsChequeStatus.Insert;
      Screen.Cursor := crDefault;
      Desabilitabotoes;
      DbeCid_Descri.SetFocus;
    except on E:EdatabaseError do
        uteis.erro  (Pchar('Erro ao inserir registro !'+e.Message));
    end;
end;

procedure TFrmChequeStatus.Bit_ExcluirClick(Sender: tObject);
   var
      iRegistros:Integer;
begin
    if DataCadastros1.CdsChequeStatus.IsEmpty Then        //evita exclusão de registro
       Begin                                        //em uma Tabela Vazia.
           messagebeep($ffff);
           uteis.aviso('Não existe Status cadastrado !');
           exit;
       end;
    screen.Cursor := crHourGlass;
    try
      DataCadastros.sqlUpdate.close;
      DataCadastros.SqlUpdate.sql.text :=SQLDEF('TABELAS','select count(CHS_REGISTRO) from CHEQUE ','where CHS_REGISTRO = '''+DataCadastros1.CdsChequeStatusCHS_REGISTRO.AsString+'''','','');
      DataCadastros.sqlUpdate.Open;

      iRegistros := DataCadastros.sqlUpdate.FieldByName('COUNT').asinteger;

      if (iRegistros = 0) then
         begin
             if uteis.confirmacao ( 'Deseja excluir o Status ?') = Mryes then
                begin
                    Screen.Cursor := crHourGlass;
                    DataCadastros1.CdsChequeStatus.Delete;
                    DataCadastros1.CdsChequeStatus.ApplyUpdates(0);
                    Screen.Cursor := crDefault;
                end;
         end
      else
         begin
             uteis.aviso('Status não pode ser excluído, existe vinculação do mesmo em um cheque !');
             DataCadastros.sqlUpdate.Close;
         end;
    except on E:EdataBaseError do
       uteis.erro  (pchar('Erro ao excluir o registro !'+e.message));
    end;
    Screen.Cursor := crDefault;
end;

procedure TFrmChequeStatus.FormShow(Sender: tObject);
begin
    {ativa o método ao evento OnActiveControlChange}
    Screen.OnActiveControlChange   := MudaCorCampos;
    Screen.Cursor := crHourglass;
    try
      DataCadastros1.CdsChequeStatus.close;
      DataCadastros1.CdsChequeStatus.CommandText := SQLDEF('TABELAS','SELECT * FROM CHEQUE_STATUS','','CHS_DESCRICAO','');
      DataCadastros1.CdsChequeStatus.Open;
      if DataCadastros1.CdsChequeStatus.IsEmpty Then       //Evita alteração antes que se
         begin                                    //inclua registros na tabela.
             DataCadastros1.dsChequeStatus.AutoEdit:=False;
         end
      else
         begin
             DataCadastros1.dsChequeStatus.AutoEdit := true;
         end;
    except on E:EdatabaseError do
        uteis.erro  (Pchar('Erro ao abrir tabela CHEQUE_STATUS!'+e.message));
    end;
    Habilitabotoes;
    Screen.Cursor := crDefault;
end;
procedure TFrmChequeStatus.Bit_GravarClick(Sender: tObject);
begin
    try
      screen.cursor := crHourglass;
      DataCadastros1.CdsChequeStatusEMP_CODIGO.AsString := dbInicio.Empresa.EMP_CODIGO;
      DataCadastros1.CdsChequeStatus.ApplyUpdates(0);
      DataCadastros1.CdsChequeStatus.Refresh;
      screen.cursor := crDefault;
      Habilitabotoes;
      DbeCid_Descri.SetFocus;
      DataCadastros1.dsChequeStatus.AutoEdit := true;
    except on E:EdatabaseError do
       uteis.erro  (Pchar('Erro ao gravar registro !'+e.Message));
    end;
end;


procedure TFrmChequeStatus.Bit_SairClick(Sender: tObject);
begin
   Close;
end;

procedure TFrmChequeStatus.Bit_CancelarClick(Sender: tObject);
begin
    screen.Cursor := crHourglass;
    DataCadastros1.CdsChequeStatus.Cancel;
    if DataCadastros1.CdsChequeStatus.IsEmpty Then
       begin
           DataCadastros1.dsChequeStatus.AutoEdit := False;
       end;
    screen.Cursor :=crDefault;
    Habilitabotoes;
end;

procedure TFrmChequeStatus.EdtCidade_CodigoKeyPress(Sender: tObject;
  var Key: Char);
begin
    if not (key in ['0'..'9',#8]) then
       begin
          //beep;
          Key := #0;
       end;
end;

procedure TFrmChequeStatus.EdtCidade_CodigoExit(Sender: tObject);
begin
    if (DataCadastros1.CdsCidade.State in [Dsbrowse]) and not (DataCadastros1.CdsCidade.IsEmpty) then
       begin
           Screen.Cursor := crHourGlass;
           BuscaCidade;
           Screen.Cursor := crDefault;
       end;
end;

procedure TFrmChequeStatus.DbeCid_CodIBGEKeyPress(Sender: tObject;
  var Key: Char);
begin
    if not (key in ['0'..'9',#8]) then
       begin
          //beep;
          Key := #0;
       end;
end;

procedure TFrmChequeStatus.DBECid_CEP_InicialKeyPress(Sender: tObject;
  var Key: Char);
begin
    if not (key in ['0'..'9',#8]) then
       begin
          //beep;
          Key := #0;
       end;
end;

procedure TFrmChequeStatus.DBECid_CEP_FinalKeyPress(Sender: tObject;
  var Key: Char);
begin
    if not (key in ['0'..'9',#8]) then
       begin
          //beep;
          Key := #0;
       end;
end;

end.


