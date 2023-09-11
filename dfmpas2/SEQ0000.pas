unit SEQ0000;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, ExtCtrls, Mask, DBCtrls, DB;

type
  TFrmSequenciador = class(TForm)
    Pn_Botoes: TPanel;
    Bit_Sair: TBitBtn;
    Bit_Cancelar: TBitBtn;
    Bit_Excluir: TBitBtn;
    Bit_Gravar: TBitBtn;
    Bit_novo: TBitBtn;
    GrpSequenciador: TGroupBox;
    DBGridSeq: TDBGrid;
    GrpPendencia: TGroupBox;
    GroupBox3: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBEdtTabela: TDBEdit;
    DBEdtCampo: TDBEdit;
    DBEdtSequencia: TDBEdit;
    DBGridSeqPend: TDBGrid;
    procedure MudaCorCampos(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure Bit_GravarClick(Sender: tObject);
    procedure Bit_SairClick(Sender: tObject);
    procedure Bit_CancelarClick(Sender: tObject);
    procedure Bit_novoClick(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure Bit_ExcluirClick(Sender: tObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    {campos}
    CampoDBEdit  :TDBEdit;
    wSeleciona,
    wOrdem       :String;
    procedure LimparDados;
    procedure DesabilitaDados;
    procedure HabilitaDados;
  public
    { Public declarations }
    procedure HabilitaBotoes;
  end;

var
  FrmSequenciador: TFrmSequenciador;

implementation

uses Uteis, DmSysCfg, RWFunc, Men0001, DataCad, iniciodb;


{$R *.dfm}

procedure TFrmSequenciador.FormShow(Sender: tObject);
begin
    Screen.Cursor := crHourGlass;
    Screen.OnActiveControlChange   := MudaCorCampos;
    wSeleciona := '';
    Left :=  60;
    Top  := 150;
    try
      wSeleciona := 'WHERE S1.SEQUENCIA_EMPRESA = '''+dbInicio.Empresa.EMP_CODIGO+'''';
      wOrdem := ' ORDER BY S1.SEQUENCIA_EMPRESA,S1.SEQUENCIA_TABELA';
      DmCfg.CdsSeq.Close;
      DmCfg.CdsSeq.CommandText := 'SELECT S1.* FROM SYS_SEQUENCIADOR S1 '+wSeleciona+wOrdem;
      DmCfg.CdsSeq.Open;
      if (DmCfg.CdsSeq.IsEmpty=True) then
         begin
             DmCfg.DsSeq.AutoEdit := False;
         end
      else
         begin
             DmCfg.DsSeq.AutoEdit := True;
             HabilitaBotoes;
             DBGridSeq.SetFocus;
         end;
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao abrir a Tabela ! '+e.message));
    end;
    Screen.Cursor := crDefault;
end;

procedure TFrmSequenciador.Bit_GravarClick(Sender: tObject);
begin
    Screen.Cursor := crHourGlass;
    try
      DmCfg.CdsSeq.FieldByName('SEQUENCIA_EMPRESA').AsString := dbInicio.Empresa.EMP_CODIGO;
      DmCfg.CdsSeq.ApplyUpdates(0);
      DmCfg.CdsSeq.Refresh;
//      LimparDados;
      HabilitaBotoes;
      HabilitaDados;
      DBGridSeq.SetFocus;
    except on E:EdatabaseError do
       uteis.erro  (pchar('Erro ao Gravar o Registro ! '+E.message));
    end;
    Screen.Cursor := crDefault;
end;

procedure TFrmSequenciador.Bit_SairClick(Sender: tObject);
begin
    Close;
end;

procedure TFrmSequenciador.LimparDados;
begin
    DBEdtTabela.Text    := '';
    DBEdtCampo.Text     := '';
    DBEdtSequencia.Text := '';
end;

procedure TFrmSequenciador.HabilitaBotoes;
begin
   Bit_novo.Enabled     := DmCfg.CdsSeq.State in [dsBrowse,dsInactive];
   Bit_Excluir.Enabled  := DmCfg.CdsSeq.State in [dsBrowse];
   Bit_Cancelar.Enabled := DmCfg.CdsSeq.State in [dsInsert,dsEdit];
   Bit_Gravar.Enabled   := DmCfg.CdsSeq.State in [dsInsert,dsEdit];
   Bit_Sair.Enabled     := DmCfg.CdsSeq.State in [dsBrowse,dsInactive];
   if DmCfg.CdsSeq.IsEmpty then
      begin
         Bit_Excluir.Enabled   := False;
      end;
end;

procedure TFrmSequenciador.Bit_CancelarClick(Sender: tObject);
begin
    Screen.Cursor := crHourGlass;
    try
      DmCfg.CdsSeq.CancelUpdates;
      HabilitaBotoes;
      HabilitaDados;
      DBGridSeq.SetFocus;
    except on E:EdataBaseError do
        uteis.erro  (pchar('Erro ao cancelar os dados ! '+e.message));
    end;
    Screen.Cursor := crDefault;
end;

procedure TFrmSequenciador.Bit_novoClick(Sender: tObject);
begin
    Screen.Cursor := crHourGlass;
    try
      DmCfg.CdsSeq.Insert;
      HabilitaBotoes;
      DesabilitaDados;
      DmCfg.CdsSeq.FieldByName('SEQUENCIA_VALOR').AsInteger := 0;
      DBEdtTabela.SetFocus;
      DBEdtTabela.SelectAll;
    except on E:EdataBaseError do
        uteis.erro  (pchar('Erro ao Inserir o Registro ! '+e.message));
    end;
    Screen.Cursor := crDefault;
end;

procedure TFrmSequenciador.MudaCorCampos;
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
end;

procedure TFrmSequenciador.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
    Screen.OnActiveControlChange := NIL;
    //Close;
    Action := CaFree;
end;

procedure TFrmSequenciador.FormDestroy(Sender: TObject);
begin
     FrmSequenciador := Nil;
end;

procedure TFrmSequenciador.Bit_ExcluirClick(Sender: tObject);
begin
    Screen.Cursor := crHourGlass;
    try
      wSeleciona := ' WHERE S2.SEQUENCIA_TABELA = '''+TRIM(DmCfg.CdsSeqSEQUENCIA_TABELA.AsString)+''' AND S2.SEQUENCIA_CAMPO = '''+Trim(DmCfg.CdsSeqSEQUENCIA_CAMPO.AsString)+'''';
      if SHARE('PARAMETROS')='E' then
         begin
             wSeleciona := wSeleciona + ' AND S2.SEQUENCIA_EMPRESA = '''+Trim(DmCfg.CdsSeqSEQUENCIA_EMPRESA.AsString)+'''';
         end
      else
         begin
             wSeleciona := '';
         end;
      wOrdem     := ' ORDER BY S2.SEQUENCIA_EMPRESA,S2.SEQUENCIA_TABELA,S2.SEQUENCIA_CAMPO';
      DmCfg.CdsSeqPed.Close;
      DmCfg.CdsSeqPed.CommandText := 'SELECT S2.* FROM SYS_SEQUENCIADOR_PENDENCIAS S2 '+wSeleciona+wOrdem;
      DmCfg.CdsSeqPed.Open;
      if (DmCfg.CdsSeqPed.IsEmpty = False) then
         begin
             uteis.aviso('Não pode excluir este sequênciador, existe pendência para ele !');
             DBGridSeq.SetFocus;
         end
      else
         begin
             if uteis.confirmacao ( ('Deseja excluir esta sequência ?'+#13#10+
                'Empresa  : '+Trim(DmCfg.CdsSeqSEQUENCIA_EMPRESA.AsString)+#13#10+
                'Tabela    : '+Trim(DmCfg.CdsSeqSEQUENCIA_TABELA.AsString)+#13#10+
                'Campo    : '+Trim(DmCfg.CdsSeqSEQUENCIA_CAMPO.AsString)+#13#10+
                'Sequencia: '+DmCfg.CdsSeqSEQUENCIA_VALOR.AsString))= Mryes then
                begin
                    DmCfg.CdsSeq.Delete;
                    DmCfg.CdsSeq.ApplyUpdates(0);
                    DBGridSeq.SetFocus;
                end
             else
                begin
                    DmCfg.CdsSeq.CancelUpdates;
                    DBGridSeq.SetFocus;
                end
         end;
    except on E:EDataBaseError do
        uteis.erro  (pchar('Erro ao excluir o registro da tabela ! '+e.message));
    end;
    Screen.Cursor := crDefault;
end;

procedure TFrmSequenciador.DesabilitaDados;
begin
    GrpSequenciador.Enabled := False;
    GrpPendencia.Enabled    := False;
    DBGridSeq.Enabled       := False;
    DBGridSeqPend.Enabled   := False;
end;

procedure TFrmSequenciador.HabilitaDados;
begin
    GrpSequenciador.Enabled := True;
    GrpPendencia.Enabled    := True;
    DBGridSeq.Enabled       := True;
    DBGridSeqPend.Enabled   := True;
end;

end.
