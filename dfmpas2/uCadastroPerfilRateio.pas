unit uCadastroPerfilRateio;


interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Mask, DBCtrls, ExtCtrls, Db,  rxToolEdit,
  RXDBCtrl, Provider, SqlExpr, ppProd, ppClass, ppReport, ppComm, ppRelatv,
  ppDB, ppDBPipe, DBClient, DBLocal, DBLocalS, ppModule, raCodMod, ppCtrls,
  ppBands, ppVar, ppPrnabl, ppCache, Grids, DBGrids, Vcl.ComCtrls, JvExMask, JvToolEdit, JvDBControls;

type
  TFrmCadastroPerfilRateio = class(TForm)
    Label1: TLabel;
    DBNavigator1: TDBNavigator;
    Panel2: TPanel;
    Panel1: TPanel;
    Bit_Sair: TBitBtn;
    Bit_Cancelar: TBitBtn;
    Bit_Excluir: TBitBtn;
    Bit_Gravar: TBitBtn;
    Bit_novo: TBitBtn;
    Label3: TLabel;
    Label4: TLabel;
    EdtPcx_Codigo: TEdit;
    GroupBox1: TGroupBox;
    dbgrdCentros: TDBGrid;
    ProgressBar1: TProgressBar;
    DBDateEdit1: TJvDBDateEdit;
    DBDateEdit2: TJvDBDateEdit;
    procedure BuscaProjetoCx;
    procedure MudaCorCampos(Sender: tObject);
    procedure Bit_novoClick(Sender: tObject);
    procedure Bit_ExcluirClick(Sender: tObject);
    procedure Bit_GravarClick(Sender: tObject);
    procedure Bit_CancelarClick(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure Bit_SairClick(Sender: tObject);
    procedure FormCloseQuery(Sender: tObject; var CanClose: Boolean);
    procedure verificaEdicao;
    procedure Habilitabotoes;
    procedure Desabilitabotoes;
    procedure DBDateEdit1Exit(Sender: tObject);
    procedure DBDateEdit2Exit(Sender: tObject);
    procedure DBNavigator1Click(Sender: tObject; Button: TNavigateBtn);
    procedure EdtPcx_CodigoKeyPress(Sender: tObject; var Key: Char);
    procedure EdtPcx_CodigoExit(Sender: tObject);
    procedure EdtPcx_CodigoEnter(Sender: tObject);
    procedure FormKeyPress(Sender: tObject; var Key: Char);
    procedure dbgrdCentrosDrawColumnCell(Sender: tObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
  private
    { Private declarations }
          {campos}
    CampoEdit    :TEdit;
    CampoDBEdit  :TDBEdit;
    CampoData    :TDBDateEdit;
  public
    { Public declarations }
  end;

var
  FrmCadastroPerfilRateio: TFrmCadastroPerfilRateio;

implementation

uses Uteis, DataCad, RWFunc, DataCad1, Men0001, uPlanoContasCentroCusto, ufrmpreviewrb, iniciodb;

{$R *.DFM}





procedure TFrmCadastroPerfilRateio.MudaCorCampos(Sender: tObject);
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
   {CampoData  :TDBDateEdit}
    if Assigned(CampoData) then
       begin
          CampoData.color := clWindow;
       end;
    if ActiveControl is TDBDateEdit then
       begin
          TDBDateEdit(ActiveControl).color := $0080FFFF;
          CampoData := TDBDateEdit(ActiveControl);
       end
    else
       begin
          CampoData := nil;
       end;
end;

procedure TFrmCadastroPerfilRateio.FormShow(Sender: tObject);
begin
    Left := 237;
    Top  := 191;
    {ativa o método ao evento OnActiveControlChange}
    Screen.OnActiveControlChange   := MudaCorCampos;
    Screen.Cursor := crHourglass;
    Try
       DataCadastros1.CdsPerfilRateio.Close;
       DataCadastros1.CdsPerfilRateio.CommandText := SQLDEF('TABELAS','SELECT * FROM PCX0000_PERFIL','','PCXPF_DATA_FINAL DESC','');
       Datacadastros1.CdsPerfilRateio.Open;
    except on E:EdatabaseError do
       uteis.erro  (Pchar('Impossível acessar a tabela de Perfil de Rateio!'+e.message));
    end;
    Habilitabotoes;
    if DataCadastros1.CdsPerfilRateio.IsEmpty Then       //Evita alteração antes que se
       DataCadastros1.dsPerfilRateio.AutoEdit := False;
    Screen.Cursor := crDefault;
    EdtPcx_Codigo.Text := DataCadastros1.CdsPerfilRateioPCXPF_REGISTRO.AsString;
end;

procedure TFrmCadastroPerfilRateio.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
    Screen.OnActiveControlChange := NIL;
end;

procedure TFrmCadastroPerfilRateio.verificaEdicao;
begin
    // verifica estado da tabela em edicao e inclusao
    screen.cursor :=crHourglass;
    if DataCadastros1.CdsPerfilRateio.State in [dsEdit,dsInsert] then
       begin
           if uteis.confirmacao ( 'Deseja salvar alterações ?') = idyes then
              begin
                  DataCadastros1.CdsPerfilRateio.ApplyUpdates(0);
                  Habilitabotoes;
              end
           else
              begin
                  DataCadastros1.CdsPerfilRateio.Cancel;
                  Habilitabotoes;
              end;
       end;
    screen.cursor := crDefault;
end;

procedure TFrmCadastroPerfilRateio.HabilitaBotoes;
begin
    Bit_novo.Enabled      := True;
    Bit_Excluir.Enabled   := True;
    Bit_Sair.Visible      := True;
    Bit_Gravar.Enabled    := False;
    Bit_Cancelar.Visible  := False;
    DbNavigator1.Enabled  := True;
end;

procedure TFrmCadastroPerfilRateio.DesabilitaBotoes;
begin
    Bit_novo.Enabled      := False;
    Bit_Excluir.Enabled   := False;
    Bit_Sair.Visible      := False;
    Bit_Gravar.Enabled    := True;
    Bit_Cancelar.Visible  := True;
    DbNavigator1.Enabled  := False;
end;

procedure TFrmCadastroPerfilRateio.Bit_novoClick(Sender: tObject);
   var
      sCodigoConta:string;
begin
   if (DataCadastros1.CdsPerfilRateio.IsEmpty) then
   begin
         sCodigoConta := '001';
         DataCadastros1.CdsPerfilRateio.Insert;
         EdtPcx_CODIGO.Text:= sCodigoConta;
         EdtPcx_Codigo.Enabled := false;
         DataCadastros1.CdsPerfilRateioPCXPF_DATA_INICIAL.AsDateTime := Now;
         DataCadastros1.CdsPerfilRateioPCXPF_DATA_FINAL.AsDateTime := Now + 30;
         DesabilitaBotoes;
         DBDateEdit1.setfocus;
   end
   else
   begin
         DataCadastros1.CdsPerfilRateio.Insert;
         EdtPcx_CODIGO.Text:= '000';
         EdtPcx_Codigo.Enabled := false;
         DataCadastros1.CdsPerfilRateioPCXPF_DATA_INICIAL.AsDateTime := Now;
         DataCadastros1.CdsPerfilRateioPCXPF_DATA_FINAL.AsDateTime := Now + 30;
         DesabilitaBotoes;
         DBDateEdit1.setfocus;
   end;


    try
      Screen.Cursor := crHourGlass;

      screen.cursor := crdefault;
    except on E:EdatabaseError do
       uteis.erro  (Pchar('Erro ao inserir no registro !'+e.Message));
    end;
end;

procedure TFrmCadastroPerfilRateio.Bit_ExcluirClick(Sender: tObject);
begin
    if DataCadastros1.CdsPerfilRateio.IsEmpty Then   //evita exclussão de registro
         Begin                                      // em uma Tabela Vazia.
             messagebeep($ffff);
             uteis.aviso('Perfil de Rateio não está cadastrado !');
             exit;
         end;
    if uteis.confirmacao ( 'Deseja excluir este Perfil de Rateio?')= Mryes then
       begin
           Screen.cursor :=crHourglass;

           dataCadastros.sqlUpdate.Close;
           DataCadastros.SqlUpdate.sql.text :='UPDATE FAT_PC01 SET PCXPF_REGISTRO = '+QuotedStr('0')+' WHERE PCXPF_REGISTRO = '+QuotedStr(DataCadastros1.CdsPerfilRateioPCXPF_REGISTRO.AsString);
           dataCadastros.sqlUpdate.Execsql;

           dataCadastros.sqlUpdate.Close;
           DataCadastros.SqlUpdate.sql.text :='UPDATE PAG_PC01 SET PCXPF_REGISTRO = '+QuotedStr('0')+' WHERE PCXPF_REGISTRO = '+QuotedStr(DataCadastros1.CdsPerfilRateioPCXPF_REGISTRO.AsString);
           dataCadastros.sqlUpdate.Execsql;

           dataCadastros.sqlUpdate.Close;
           DataCadastros.SqlUpdate.sql.text :='DELETE from PCX0000_PLANO WHERE PCXPF_REGISTRO = '+QuotedStr(DataCadastros1.CdsPerfilRateioPCXPF_REGISTRO.AsString);
           dataCadastros.sqlUpdate.Execsql;

           dataCadastros.sqlUpdate.Close;
           DataCadastros.SqlUpdate.sql.text :='DELETE from PCX0000_PERFIL_COLABORADOR WHERE PCXPF_REGISTRO = '+QuotedStr(DataCadastros1.CdsPerfilRateioPCXPF_REGISTRO.AsString);
           dataCadastros.sqlUpdate.Execsql;
           
           DataCadastros1.CdsPerfilRateio.Delete;
           DataCadastros1.CdsPerfilRateio.ApplyUpdates(0);
           DataCadastros1.CdsPerfilRateio.Refresh;

           screen.cursor := crDefault;
       end;
    EdtPcx_Codigo.Text :=DataCadastros1.CdsPerfilRateioPCXPF_REGISTRO.AsString;
    EdtPcx_Codigo.SetFocus;
    EdtPcx_Codigo.SelectAll;
end;

procedure TFrmCadastroPerfilRateio.Bit_GravarClick(Sender: tObject);
var bInclusao:Boolean;
begin
      bInclusao := DataCadastros1.CdsPerfilRateio.State = dsInsert;
      Screen.Cursor := crHourGlass;
      if (bInclusao) then
         DataCadastros1.CdsPerfilRateioPCXPF_REGISTRO.AsString := EdtPcx_Codigo.Text;
      DataCAdastros1.CdsPerfilRateioEMP_CODIGO.AsString := dbInicio.Empresa.EMP_CODIGO;
      DataCadastros1.CdsPerfilRateio.ApplyUpdates(0);
      //Copia plano Anterior
      if (bInclusao)and(DataCadastros1.CdsPerfilRateioPCXPF_REGISTRO.AsInteger > 1) then
      begin
            if (uteis.confirmacao ( 'Gostaria de copiar o centros vinculados no perfil anterior?')=mrYes) then
               begin
                  DataCadastros.sqlUpdate1.Close;
                  DataCadastros.sqlUpdate1.sql.text:= 'SELECT * FROM PCX0000_PLANO WHERE PCXPF_REGISTRO = '+IntToStr(DataCadastros1.CdsPerfilRateioPCXPF_REGISTRO.AsInteger - 1 );
                  DataCadastros.sqlUpdate1.Open;
                  ProgressBar1.Max := DataCadastros.sqlUpdate1.RecordCount;
                  while (not DataCadastros.sqlUpdate1.Eof) do
                     begin
                        DataCadastros.sqlUpdate.Close;
                        DataCadastros.SqlUpdate.sql.text :='INSERT INTO PCX0000_PLANO (EMP_CODIGO,CCT_0000,PCX_CODIGO,PCXP_INDICE,PCXP_INDICE_REAL, PCXP_TIPO,PCXPF_REGISTRO) VALUES ('+
                                                               QuotedStr(dbInicio.Empresa.EMP_CODIGO)+','
                                                               +QuotedStr(DataCadastros.sqlUpdate1.FieldByName('CCT_0000').AsString)+','
                                                               +QuotedStr(DataCadastros.sqlUpdate1.FieldByName('PCX_CODIGO').AsString)+','
                                                               +ValorAmericano(DataCadastros.sqlUpdate1.FieldByName('PCXP_INDICE').AsString)+','
                                                               +ValorAmericano(DataCadastros.sqlUpdate1.FieldByName('PCXP_INDICE_REAL').AsString)+','
                                                               +QuotedStr(DataCadastros.sqlUpdate1.FieldByName('PCXP_TIPO').AsString)+','
                                                               +IntToStr(DataCadastros1.CdsPerfilRateioPCXPF_REGISTRO.AsInteger )+') ';
                        DataCadastros.sqlUpdate.Execsql;


                        DataCadastros.sqlUpdate1.Next;
                        Progressbar1.Position := Progressbar1.Position + 1;
                     end;
                  Progressbar1.Position := 0;
                  DataCadastros.sqlUpdate1.Close;
                  DataCadastros.sqlUpdate1.sql.text:= 'SELECT * FROM PCX0000_PERFIL_COLABORADOR WHERE PCXPF_REGISTRO = '+IntToStr(DataCadastros1.CdsPerfilRateioPCXPF_REGISTRO.AsInteger - 1 );
                  DataCadastros.sqlUpdate1.Open;
                  ProgressBar1.Max := DataCadastros.sqlUpdate1.RecordCount;
                  while (not DataCadastros.sqlUpdate1.Eof) do
                     begin
                        DataCadastros.sqlUpdate.Close;
                        DataCadastros.SqlUpdate.sql.text :='INSERT INTO PCX0000_PERFIL_COLABORADOR (EMP_CODIGO,PCX_CODIGO,PPC_QUANTIDADE,PPC_QUANTIDADE_TOTAL_PERFIL, PPC_INDICE_REAL,PPC_TIPO,CCT_0000,PCXPF_REGISTRO) VALUES ('+
                                                               QuotedStr(dbInicio.Empresa.EMP_CODIGO)+','
                                                               +QuotedStr(DataCadastros.sqlUpdate1.FieldByName('PCX_CODIGO').AsString)+','
                                                               +ValorAmericano(DataCadastros.sqlUpdate1.FieldByName('PPC_QUANTIDADE').AsString)+','
                                                               +ValorAmericano(DataCadastros.sqlUpdate1.FieldByName('PPC_QUANTIDADE_TOTAL_PERFIL').AsString)+','
                                                               +ValorAmericano(DataCadastros.sqlUpdate1.FieldByName('PPC_INDICE_REAL').AsString)+','
                                                               +QuotedStr(DataCadastros.sqlUpdate1.FieldByName('PPC_TIPO').AsString)+','
                                                               +QuotedStr(DataCadastros.sqlUpdate1.FieldByName('CCT_0000').AsString)+','
                                                               +IntToStr(DataCadastros1.CdsPerfilRateioPCXPF_REGISTRO.AsInteger )+') ';
                        DataCadastros.sqlUpdate.Execsql;


                        DataCadastros.sqlUpdate1.Next;
                        Progressbar1.Position := Progressbar1.Position + 1;
                     end;
                      Progressbar1.Position := 0;

               end;
      end;



      DataCadastros1.dsPerfilRateio.AutoEdit := true;
      Screen.Cursor := crDefault;
      Habilitabotoes;
      EdtPcx_Codigo.Enabled := true;
      EdtPcx_Codigo.Text    := StrZero(DataCadastros1.CdsPerfilRateioPCXPF_REGISTRO.AsString,EdtPcx_Codigo.MaxLength);
      DBDateEdit1.Setfocus;
end;

procedure TFrmCadastroPerfilRateio.Bit_CancelarClick(Sender: tObject);
begin
    DataCadastros1.CdsPerfilRateio.Cancel;
    HabilitaBotoes;
    if DataCadastros1.CdsPerfilRateio.IsEmpty Then      //Ao cancelar ultimo record da
         begin                                      //tabela deixa autoedit=true;
             DataCadastros1.dsPerfilRateio.AutoEdit := False;
             EdtPcx_Codigo.Enabled := false;
         end;
    EdtPcx_Codigo.Enabled := True;
    EdtPcx_Codigo.Text    := StrZero(DataCadastros1.CdsPerfilRateioPCXPF_REGISTRO.AsString,EdtPcx_Codigo.MaxLength);
    DBDateEdit1.Setfocus;
end;

procedure TFrmCadastroPerfilRateio.Bit_SairClick(Sender: tObject);
begin
    close;
end;

procedure TFrmCadastroPerfilRateio.FormCloseQuery(Sender: tObject;
  var CanClose: Boolean);
begin
    Verificaedicao;
    Try
      DataCadastros1.CdsPerfilRateio.Close;
    except on E:EdatabaseError do
       uteis.erro  (Pchar('Erro ao Fechar as tabelas !'+e.message));
    end;
end;

procedure TFrmCadastroPerfilRateio.DBDateEdit1Exit(Sender: tObject);
begin
    if DBDateEdit1.text <> '  /  /    ' then
       begin
           if not TestaDataStr(DBDateEdit1.Text) then
              DBDateEdit1.setfocus;
       end;
end;

procedure TFrmCadastroPerfilRateio.DBDateEdit2Exit(Sender: tObject);
begin
    if DBDateEdit2.text <> '  /  /    ' then
       begin
           if DBDateEdit2.Date>=DBDateEdit1.Date then
              begin
                  if not TestaDataStr(DBDateEdit2.Text) then
                     DBDateEdit2.setfocus;
              end
           else
              begin
                  uteis.aviso('A data termino não pode ser menor que a data inicío...');
                  DBDateEdit2.text := '';
                  DBDateEdit2.SetFocus;
              end;
       end;
end;

procedure TFrmCadastroPerfilRateio.DBNavigator1Click(Sender: tObject;
  Button: TNavigateBtn);
begin
    EdtPcx_Codigo.Text := DataCadastros1.CdsPerfilRateioPCXPF_REGISTRO.AsString;
end;

procedure TFrmCadastroPerfilRateio.EdtPcx_CodigoKeyPress(Sender: tObject;
  var Key: Char);
begin
    if not (key in ['0'..'9',#8]) then
       begin
          //beep;
          Key := #0;
       end;
end;

procedure TFrmCadastroPerfilRateio.EdtPcx_CodigoExit(Sender: tObject);
begin
    EdtPcx_Codigo.Text := StrZero(EdtPcx_Codigo.Text,EdtPcx_Codigo.MaxLength);
    if (DataCadastros1.CdsPerfilRateio.State in [dsBrowse]) and not (DataCadastros1.CdsPerfilRateio.IsEmpty) then
       begin
           BuscaProjetoCx;
       end;
end;

procedure TFrmCadastroPerfilRateio.EdtPcx_CodigoEnter(Sender: tObject);
begin
    EDTPCX_CODIGO.SelectAll;
end;

procedure TFrmCadastroPerfilRateio.BuscaProjetoCx;
begin
    if DataCadastros1.CdsPerfilRateio.Locate('PCXPF_REGISTRO',EdtPCX_Codigo.Text,[]) = False then
       begin
           Messagebeep($ffffffff);
           uteis.aviso('Código do Centro de Custo não cadastrado!!!');
           EdtPCX_Codigo.Text := DataCadastros1.CdsPerfilRateioPCXPF_REGISTRO.AsString;
           EdtPCX_Codigo.SetFocus;
       end;
end;

procedure TFrmCadastroPerfilRateio.FormKeyPress(Sender: tObject; var Key: Char);
begin
    if key = #27 then
       begin
          close;
          key := #0;
       end;
end;



procedure TFrmCadastroPerfilRateio.dbgrdCentrosDrawColumnCell(Sender: tObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
    if (not odd(DataCadastros1.CdsPerfilRateio.RecNo)) then
       if not (GdSelected in State) then
          begin
              dbgrdCentros.Canvas.Brush.Color := $00FFEFDF;
              dbgrdCentros.Canvas.FillRect(rect);
              dbgrdCentros.DefaultDrawDataCell(Rect,column.Field,state);
          end;
end;

end.
