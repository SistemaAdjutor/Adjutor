unit CEL0005;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, StdCtrls, Buttons, ExtCtrls, Mask, Grids, Db, DBGrids, DBTables,
  Spin, Provider, SqlExpr,SqlClientDataSet, DBClient, DBLocal, DBLocalS,  rxToolEdit, rxCurrEdit,
  SimpleDS, Data.DBXFirebird;

type
  TFormMetaProd = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    EdtMes: TEdit;
    EdtAno: TEdit;
    Panel1: TPanel;
    Bit_Cancelar: TBitBtn;
    Bit_Sair: TBitBtn;
    Bit_Excluir: TBitBtn;
    Bit_Gravar: TBitBtn;
    Bit_novo: TBitBtn;
    DBNavigator1: TDBNavigator;
    Panel2: TPanel;
    Panel3: TPanel;
    Bit_Lista: TBitBtn;
    Bit_Relatorio: TBitBtn;
    GroupBox1: TGroupBox;
    Grd_Integra: TDBGrid;
    GroupBox2: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DbeDiaUtil: TDBEdit;
    DbeTupMes: TDBEdit;
    DbeTupAcrescent: TDBEdit;
    DbeTupNegativo: TDBEdit;
    DBEdit1: TDBEdit;
    Dbe_TupRealizado: TDBEdit;
    Panel4: TPanel;
    BitDuplicar: TBitBtn;
    BitExcluiComp: TBitBtn;
    Label10: TLabel;
    Label11: TLabel;
    BitConfirma: TBitBtn;
    BitCancela: TBitBtn;
    SqlCdsCelulas: TSQLClientDataSet;
    SqlCdsCelulasCEL_CODIGO: TStringField;
    SqlCdsCelulasCEL_NOME: TStringField;
    SqlGridIntegrantes: TSQLClientDataSet;
    DsGridIntegrantes: TDataSource;
    SqlGridIntegrantesCME_CODIGO: TStringField;
    SqlGridIntegrantesCCP_CODIGO: TStringField;
    SqlGridIntegrantesCEL_CODIGO: TStringField;
    SqlGridIntegrantesMEC_TUPDIARIO: TFMTBCdField;
    SqlGridIntegrantesMEC_DIAS: TFMTBCdField;
    SqlGridIntegrantesEMP_CODIGO: TStringField;
    SqlGridIntegrantesCCP_NOME: TStringField;
    DsCelulas: TDataSource;
    SqlGridIntegrantesTOTAL_TUP_CC: TCurrencyField;
    EdtCCP_CODIGO: TEdit;
    EdtCCP_NOME: TEdit;
    CurMeCdias: TCurrencyEdit;
    CurMeCdiario: TCurrencyEdit;
    SqlGridIntegrantesCME_REGISTRO: TIntegerField;
    Bit_Lancar: TBitBtn;
    EdtCelula: TEdit;
    CbxCelulas: TComboBox;
    procedure MudaCorCampos(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure HabilitaBotoes;
    procedure DesabilitaBotoes;
    procedure Bit_novoClick(Sender: tObject);
    procedure Bit_GravarClick(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure EdtMesExit(Sender: tObject);
    procedure EdtAnoExit(Sender: tObject);
    procedure DBNavigator1Click(Sender: tObject; Button: TNavigateBtn);
    procedure DbeDiaUtilExit(Sender: tObject);
    procedure Bit_ExcluirClick(Sender: tObject);
    procedure Bit_CancelarClick(Sender: tObject);
    procedure Bit_SairClick(Sender: tObject);
    procedure FormCloseQuery(Sender: tObject; var CanClose: Boolean);
    procedure Bit_ListaClick(Sender: tObject);
    procedure Bit_LancarClick(Sender: tObject);
    procedure Grd_IntegraKeyDown(Sender: tObject; var Key: Word; Shift: TShiftState);
    procedure BitDuplicarClick(Sender: tObject);
    procedure BitExcluiCompClick(Sender: tObject);
    procedure HabilitaConfirmacao;
    procedure DesabilitaConfirmacao;
    procedure BitCancelaClick(Sender: tObject);
    procedure BitConfirmaClick(Sender: tObject);
    procedure Panel4Exit(Sender: tObject);
    procedure SqlGridIntegrantesCalcFields(DataSet: TDataSet);
    procedure SqlGridIntegrantesBeforeEdit(DataSet: TDataSet);
    procedure Grd_IntegraDblClick(Sender: tObject);
    procedure Grd_IntegraKeyPress(Sender: tObject; var Key: Char);
    procedure PreenchaCombo;
    procedure EdtMesKeyPress(Sender: tObject; var Key: Char);
    procedure CbxCelulasExit(Sender: tObject);
    procedure CbxCelulasClick(Sender: tObject);
    procedure DbeDiaUtilEnter(Sender: tObject);
    procedure DbeTupAcrescentEnter(Sender: tObject);
    procedure DbeTupNegativoEnter(Sender: tObject);
    procedure DBEdit1Enter(Sender: tObject);
    procedure EdtMesClick(Sender: tObject);
    procedure EdtAnoClick(Sender: tObject);
    procedure CbxCelulasEnter(Sender: tObject);
    procedure BuscaCelula;
    procedure BuscaMeta;
    procedure VerificaMeta;
    procedure EdtCelulaClick(Sender: tObject);
    procedure EdtCelulaExit(Sender: tObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
      {campos}
    CampoEdit    :TEdit;
    CampoDBEdit  :TDBEdit;
    CampoBox     :TComboBox;
      {String}
    wCodMeta     :String[9];
      {Currency}
    wToTupEquipe :Currency;

    procedure CalculaTupMensal;
    Function  ValidaDados():boolean;
    procedure AbreArquivos;
    procedure MostraGrid;
    procedure LancarIntegrantes;
    procedure TabelaVazia;
  public
    { Public declarations }
    procedure BotoesAcesso;

  end;

var
  FormMetaProd: TFormMetaProd;

implementation

uses  Uteis, RWFunc, CEL0006, DmProdu, DataCad, Men0001, iniciodb;

{$R *.DFM}





procedure TFormMetaProd.MudaCorCampos(Sender: tObject);
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
    {CampoBox : TComboBox}
    if Assigned(CampoBox) then
       begin
          CampoBox.color := clWindow;
       end;
    if ActiveControl is TComboBox then
       begin
          TComboBox(ActiveControl).color := $0080FFFF;
          CampoBox := TComboBox(ActiveControl);
       end
    else
       begin
          CampoBox := nil;
       end;
end;

procedure TFormMetaProd.LancarIntegrantes;
begin
    try
      wCodMeta:=EdtAno.Text+EdtMes.Text+EdtCelula.Text;
      DataCadastros.sqlUpdate.Close;
      DataCadastros.SqlUpdate.sql.text :=SQLDEF('ORDEMPRODUCAO','SELECT C4.CME_CODIGO FROM CEL_MTC04 C4','Where C4.CME_CODIGO='''+wCodMeta+'''','C4.CME_CODIGO','C4.');
      DataCadastros.sqlUpdate.Open;
      {Se existir a meta desta equipe exclui os integrantes}
      if not DataCadastros.sqlUpdate.IsEmpty then
         begin
             if uteis.confirmacao ( 'Composição de TUP da equipe já existe!'+#13+'Deseja configurar nova composição e cancelar a atual ?')=MrYes then
                begin
                    try
                      DataCadastros.SqlUpdate.Close;
                      DataCadastros.SqlUpdate.sql.text :=SQLDEF('ORDEMPRODUCAO','Delete From CEL_MTC04','Where CME_CODIGO='''+wCodMeta+'''','','');
                      DataCadastros.SqlUpdate.ExecSQL;
                      SqlGridIntegrantes.Refresh;
                    except on E:EDataBaseError do
                       uteis.erro  (pchar('Erro ao excluir os integrantes da meta !'+e.Message));
                    end;
                end
             else
                begin
                    exit;
                end;
         end;
      try
        DmProducao.CdsComponentes.Close;
        DmProducao.CdsComponentes.CommandText:=SQLDEF('ORDEMPRODUCAO','SELECT C1.* FROM CEL_CP01 C1','WHERE C1.CEL_CODIGO='''+EdtCelula.Text+'''','C1.CEL_CODIGO','C1.');
        DmProducao.CdsComponentes.Open;
        if not DmProducao.CdsComponentes.IsEmpty then
           begin
               DmProducao.CdsComponentes.First;
               wToTupEquipe:=0;
               while not DmProducao.CdsComponentes.Eof do
                 begin
                     try
                       DmProducao.CdsCompMeta.Close;
                       DmProducao.CdsCompMeta.CommandText := SQLDEF( 'ORDEMPRODUCAO','Select Z1.* from CEL_MTC04 Z1 ','','Z1.CME_REGISTRO','Z1.');
                       DmProducao.CdsCompMeta.Open;
                       DmProducao.CdsCompMeta.Insert;
                       DmProducao.CdsCompMetaCME_CODIGO.AsString      := wCodMeta;
                       DmProducao.CdsCompMetaCCP_CODIGO.AsString      := DmProducao.CdsComponentesCCP_CODIGO.AsString;
                       DmProducao.CdsCompMetaCEL_CODIGO.AsString      := DmProducao.CdsComponentesCEL_CODIGO.AsString;
                       DmProducao.CdsCompMetaMEC_TUPDIARIO.AsCurrency := DmProducao.CdsComponentesCCP_TUPDIARIO.AsCurrency;
                       DmProducao.CdsCompMetaMEC_DIAS.AsCurrency      := DmProducao.CdsMetasCME_DIASUTEIS.AsCurrency;
                       DmProducao.CdsCompMetaEMP_CODIGO.AsString      := dbInicio.Empresa.EMP_CODIGO;
                       DmProducao.CdsCompMeta.ApplyUpdates(0);
                     except on E:EDataBaseError do
                        uteis.erro  (pchar('Erro ao inserir o Integrante na Meta !'+e.message));
                     end;
                     DmProducao.CdsComponentes.Next;
                 end;
           end;
      except on E:EdatabaseError do
         uteis.erro  (Pchar('Erro ao abrir a tabela CEL_MTC04 !'+e.message));
      end;
    except on E:EdatabaseError do
        uteis.erro  (Pchar('Erro ao verificar a meta !'+e.message));
    end;
    Screen.Cursor := crDefault;
end;

procedure TFormMetaProd.AbreArquivos;
begin
    try
      DmProducao.CdsMetas.close;
      DmProducao.CdsMetas.CommandText := SQLDEF('ORDEMPRODUCAO','SELECT P1.* FROM CEL_ME02 P1','','P1.CME_CODIGO DESC','P1.');
      DmProducao.CdsMetas.Open;
      DmProducao.CdsMetas.First;
      EdtAno.Text        := copy(DmProducao.CdsMetasCME_CODIGO.AsString,1,4);
      EdtMes.text        := copy(DmProducao.CdsMetasCME_CODIGO.AsString,5,2);
      EdtCelula.Text     := copy(DmProducao.CdsMetasCME_CODIGO.AsString,7,3);
      if not DmProducao.CdsMetas.IsEmpty then
         begin
             Try
               wCodMeta := EdtAno.Text+EdtMes.Text+EdtCelula.Text;
               SqlGridIntegrantes.close;
               SqlGridIntegrantes.CommandText:=SQLDEF('ORDEMPRODUCAO','SELECT P2.*,C2.CCP_NOME FROM CEL_MTC04 P2 LEFT JOIN CEL_CP01 C2 ON P2.CCP_CODIGO = C2.CCP_CODIGO','WHERE P2.CME_CODIGO='''+wCodMeta+'''','P2.CME_CODIGO','P2.');
               SqlGridIntegrantes.Open;
               SqlGridIntegrantes.First;
               If SqlGridIntegrantes.IsEmpty then
                  begin
                      SqlGridIntegrantes.Refresh; {Esta fazendo Refresh porque quando excluir uma meta atualiza o grid, se o arquivo estiver vazio o grid ficara vazio.}
                      SqlGridIntegrantes.Close;
                  end;
             except on E:EdatabaseError do
                uteis.erro  (Pchar('Erro ao abrir tabela CEL_MTC04!'+e.message));
             end;
         end;
    except on E:EdatabaseError do
       uteis.erro  (Pchar('Erro ao abrir tabela CEL_ME02!'+e.message));
    end;
end;

procedure TFormMetaProd.VerificaMeta;
begin
    wCodMeta := EdtAno.Text + EdtMes.Text + EdtCelula.Text;
    try
      DataCadastros.sqlUpdate.Close;
      DataCadastros.SqlUpdate.sql.text :=SQLDEF('ORDEMPRODUCAO','SELECT CME_CODIGO FROM CEL_ME02','WHERE CME_CODIGO = '''+wCodMeta+'''','','');
      DataCadastros.sqlUpdate.Open;
      if not DataCadastros.sqlUpdate.IsEmpty then
         begin
             if DmProducao.CdsMetas.State = dsInsert then
                begin
                    uteis.aviso('A meta da célula para este mês já foi definida!');
                    DmProducao.CdsMetas.Cancel;
                end;
             MostraGrid;
             EdtMes.Enabled        := True;
             EdtAno.Enabled        := True;
             EdtCelula.Enabled     := True;
             CbxCelulas.Enabled    := True;
             HabilitaBotoes;
         end
      else
         begin
             if DmProducao.CdsMetas.State = dsBrowse then
                begin
                    uteis.aviso('Meta não encontrada !');
                    EdtMes.SetFocus;
                    AbreArquivos;
                    MostraGrid;
                end;
         end;
      DataCadastros.sqlUpdate.Close;
    except on E:EdataBaseError do
       uteis.erro  (pchar('Erro ao verifica a meta !'+e.message));
    end;
end;

procedure TFormMetaProd.MostraGrid;
begin
    if not DmProducao.CdsMetas.IsEmpty then
       begin
           Try
             SqlGridIntegrantes.close;
             SqlGridIntegrantes.CommandText:=SQLDEF('ORDEMPRODUCAO','SELECT P1.*,C2.CCP_NOME FROM CEL_MTC04 P1 LEFT JOIN CEL_CP01 C2 ON P1.CCP_CODIGO = C2.CCP_CODIGO','WHERE P1.CME_CODIGO ='''+wCodMeta+'''','P1.CME_CODIGO','P1.');
             SqlGridIntegrantes.Open;
           except on E:EdatabaseError do
              uteis.erro  (Pchar('Erro ao abrir tabela CEL_MTC04!'+e.message));
           end;
       end;
end;

procedure TFormMetaProd.FormShow(Sender: tObject);
begin
    {ativa o método ao evento OnActiveControlChange}
    Screen.OnActiveControlChange   := MudaCorCampos;
    Screen.Cursor := crHourglass;
    Left := 65;
    //Top := 25;
    PreenchaCombo;
    AbreArquivos;
    Habilitabotoes;
    TabelaVazia;
    BuscaCelula;
    Screen.Cursor := crDefault;             //Evita alteração antes que se
end;

procedure TFormMetaProd.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
    Screen.OnActiveControlChange := NIL;
    {Fechando Tabelas}
    DmProducao.CdsCompMeta.Close;
    DmProducao.CdsComponentes.Close;
    DmProducao.CdsCelula.Close;
    DmProducao.CdsCelula.Close;
    Action := CaFree;

end;

procedure TFormMetaProd.HabilitaBotoes;
begin
    DbNavigator1.Enabled  := True;
    Bit_Lancar.Enabled    := True;
    Bit_novo.Enabled      := True;
    Bit_Excluir.Enabled   := True;
    Bit_Relatorio.Enabled := True;
    Bit_Lista.Enabled     := True;
    Bit_Gravar.Enabled    := False;
    Bit_Cancelar.Visible  := False;
    Bit_Sair.Visible      := True;
    if DmProducao.CdsMetas.State = dsBrowse then
       begin
           EdtAno.Enabled        := True;
           EdtAno.Color          := clWindow;
           EdtMes.Enabled        := True;
           EdtMes.Color          := clWindow;
           EdtCelula.Enabled     := True;
           EdtCelula.Color       := clWindow;
           CbxCelulas.Enabled    := True;
           CbxCelulas.Color      := clWindow;
       end;

       BotoesAcesso;
end;

procedure TFormMetaProd.DesabilitaBotoes;
begin
    BotoesAcesso;
    DbNavigator1.Enabled  := False;
    Bit_Lancar.Enabled    := False;
    Bit_novo.Enabled      := False;
    Bit_Excluir.Enabled   := False;
    Bit_Relatorio.Enabled := False;
    Bit_Lista.Enabled     := False;
    Bit_Gravar.Enabled    := True;
    Bit_Cancelar.Visible  := True;
    Bit_Sair.Visible      := False;


end;

Function TFormMetaProd.ValidaDados():boolean;
begin
    if EdtMes.Text = '' then
       begin
           uteis.aviso('Digite o Mês!');
           EdtMes.SetFocus;
           exit;
       end;
    if Length(EdtAno.Text) < 4 then
       begin
           uteis.aviso('Digite o Ano com 4 Dígitos!');
           EdtAno.SetFocus;
           exit;
       end;
    if EdtCelula.Text = '' then
       begin
           uteis.aviso('Defina uma Célula!');
           EdtCelula.SetFocus;
           Exit;
       end;
    {Validando Mês e ano}
    try
      StrToDate('01/'+EdtMes.Text+'/'+EdtAno.Text);
    except
      uteis.erro  ('Mês ou ano Inválido(s)!');
      EdtMes.SetFocus;
      exit;
    end;
    {definir dias uteis}
    if DmProducao.CdsMetasCME_DIASUTEIS.AsCurrency<= 0 then
       begin
           DbeDiaUtil.SetFocus;
           uteis.aviso('Informe dias úteis!');
           Exit;
       end;
    EdtMes.Enabled     := False;
    EdtAno.Enabled     := False;
    EdtCelula.Enabled  := False;
    CbxCelulas.Enabled := False;
end;

procedure TFormMetaProd.Bit_novoClick(Sender: tObject);
begin
    try
      Screen.Cursor := crHourglass;
      TabelaVazia;
      DesabilitaBotoes;
      DmProducao.CdsMetas.Insert;
      EdtMes.text        := copy(datetoStr(Date),4,2);
      EdtAno.Text        := copy(datetoStr(Date),7,4);
      EdtCelula.Text     := '';
      DmProducao.CdsMetasCME_DIASUTEIS.AsCurrency    := 0;
      DmProducao.CdsMetasCME_TUPMETAMES.AsCurrency   := 0;
      DmProducao.CdsMetasCME_TUPACRECENT.AsCurrency  := 0;
      DmProducao.CdsMetasCME_TUPNEGATIVO.AsCurrency  := 0;
      DmProducao.CdsMetasCME_TOT_DIAS_COMP.AsCurrency:= 0;
      DbeDiaUtil.Text       := '';
      DbeTupMes.Text        := '';
      DbeTupAcrescent.Text  := '';
      DbeTupNegativo.Text   := '';
      Dbedit1.Text          := '';
      Dbe_TupRealizado.Text := '';
      CbxCelulas.Text       := '';
      SqlGridIntegrantes.Close;
      EdtMes.SetFocus;
      EdtMes.SelectAll;
      screen.cursor := crdefault;
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao inserir o registro !'+e.message));
    end;
end;

procedure TFormMetaProd.HabilitaConfirmacao;
begin
    CurMeCdias.Enabled    := True;
    CurMeCdiario.Enabled  := True;
    BitDuplicar.Visible   := False;
    BitExcluiComp.Visible := False;
    BitConfirma.Visible   := True;
    BitCancela.Visible    := True;
    Grd_Integra.Enabled   := False;
    DBNavigator1.Enabled  := False;
end;

procedure TFormMetaProd.DesabilitaConfirmacao;
begin
    CurMeCdias.Enabled    := False;
    CurMeCdiario.Enabled  := False;
    BitDuplicar.Visible   := True;
    BitExcluiComp.Visible := True;
    BitConfirma.Visible   := False;
    BitCancela.Visible    := False;
    Grd_Integra.Enabled   := True;
    DBNavigator1.Enabled  := True;
end;

procedure TFormMetaProd.Bit_GravarClick(Sender: tObject);
begin
    wCodMeta := EdtAno.text + EdtMes.Text + EdtCelula.Text;
    DmProducao.CdsMetasCME_CODIGO.AsString := wCodMeta;
    DmProducao.CdsMetasCEL_CODIGO.AsString := EdtCelula.Text;
    DmProducao.CdsMetasEMP_CODIGO.AsString := dbInicio.Empresa.EMP_CODIGO;
    if DmProducao.CdsMetas.State = dsInsert then
       begin
           LancarIntegrantes;
           CalculaTupMensal;
       end;
    TabelaVazia;
    DmProducao.CdsMetas.ApplyUpdates(0);
    DmProducao.CdsMetas.Refresh;
    HabilitaBotoes;
    EdtMes.Enabled     := True;
    EdtAno.Enabled     := True;
    EdtCelula.Enabled  := True;
    CbxCelulas.Enabled := True;
    MostraGrid;
    EdtMes.SetFocus;
end;

procedure TFormMetaProd.EdtMesExit(Sender: tObject);
begin
    if EdtMes.Text = '' then
       exit;
    EdtMes.Text := StrZero(EdtMes.Text,2);
    if (StrToInt(EdtMes.Text)<1)or(StrToInt(EdtMes.Text)>12)then
       begin
           uteis.aviso('Mês Invalido!');
           EdtMes.SetFocus;
           EdtMes.SelectAll;
       end;
end;

procedure TFormMetaProd.EdtAnoExit(Sender: tObject);
begin
    if EdtAno.Text = '' then
       exit;
    if Length(EdtAno.text)<>4 then
       begin
           uteis.aviso('Entre com ano de 4 dígitos!');
           EdtAno.SetFocus;
           EdtAno.SelectAll;
       end;
end;

procedure TFormMetaProd.DBNavigator1Click(Sender: tObject;
  Button: TNavigateBtn);
begin
    EdtAno.Text    := copy(DmProducao.CdsMetasCME_CODIGO.AsString,1,4);
    EdtMes.text    := copy(DmProducao.CdsMetasCME_CODIGO.AsString,5,2);
    EdtCelula.Text := Copy(DmProducao.CdsMetasCME_CODIGO.AsString,7,3);
    wCodMeta       := EdtAno.Text+EdtMes.Text+EdtCelula.Text;
    BuscaCelula;
    MostraGrid;
end;

procedure TFormMetaProd.DbeDiaUtilExit(Sender: tObject);
begin
    if Bit_novo.Enabled = false then
       begin
           if DbeDiaUtil.Text = '' then
              DmProducao.CdsMetasCME_DIASUTEIS.AsCurrency:= 0 ;
       end;
end;

procedure TFormMetaProd.Bit_ExcluirClick(Sender: tObject);
begin
    if DmProducao.CdsMetas.IsEmpty Then   //evita exclussão de registro
         Begin                                      // em uma Tabela Vazia.
           messagebeep($ffff);
           uteis.aviso('Não existe meta cadastrada!');
           exit;
         end;
    if uteis.confirmacao ( 'Deseja excluir Meta?')= Mryes then
       begin
           DataCadastros.sqlUpdate.Close;
           DataCadastros.SqlUpdate.sql.text :=SQLDEF('ORDEMPRODUCAO','DELETE FROM CEL_MTC04','WHERE CME_CODIGO = '''+wCodMeta+'''','','');
           DataCadastros.sqlUpdate.Execsql;
           SqlGridIntegrantes.Refresh;
           DmProducao.CdsMetas.Delete;
           DmProducao.CdsMetas.ApplyUpdates(0);
           DmProducao.CdsMetas.Refresh;
           screen.cursor  := crDefault;
           EdtAno.Text    := copy(DmProducao.CdsMetasCME_CODIGO.AsString,1,4);
           EdtMes.text    := copy(DmProducao.CdsMetasCME_CODIGO.AsString,5,2);
           EdtCelula.Text := Copy(DmProducao.CdsMetasCME_CODIGO.AsString,7,3);
       end;
    BuscaCelula;
    MostraGrid;
    EdtMes.SetFocus;
end;

procedure TFormMetaProd.Bit_CancelarClick(Sender: tObject);
begin
    DmProducao.CdsMetas.Cancel;
    DmProducao.CdsCompMeta.Cancel;
    SqlCdsCelulas.Cancel;
    SqlGridIntegrantes.Cancel;
    HabilitaBotoes;
    AbreArquivos;
    BuscaCelula;
    MostraGrid;
    EdtMes.SetFocus;
end;

procedure TFormMetaProd.Bit_SairClick(Sender: tObject);
begin
    close;
end;

procedure TFormMetaProd.BotoesAcesso;
begin
     if assigned(FormMetaProd) then
     begin
       Bit_novo.Enabled := Uteis.AcessoUsuario('ProduçãoCélulas de Produção',DBInicio.Usuario.CODIGO,FormMetaProd).Incluir;
       Bit_Excluir.Enabled := Uteis.AcessoUsuario('ProduçãoCélulas de Produção',DBInicio.Usuario.CODIGO,FormMetaProd).Exluir;
       Bit_Relatorio.Enabled := Uteis.AcessoUsuario('ProduçãoCélulas de Produção',DBInicio.Usuario.CODIGO,FormMetaProd).Relatorio;
       DsGridIntegrantes.AutoEdit := Uteis.AcessoUsuario('ProduçãoCélulas de Produção',DBInicio.Usuario.CODIGO,FormMetaProd).Alterar;
     end;
end;

procedure TFormMetaProd.FormCloseQuery(Sender: tObject;
  var CanClose: Boolean);
begin
    if DmProducao.CdsMetas.State in [dsEdit,dsInsert] then
       begin
           if uteis.confirmacao ( 'Deseja salvar alterações ?') = idyes then
              begin
                  if SqlGridIntegrantes.State in [dsEdit] then
                     SqlGridIntegrantes.Cancel;
                     Bit_Gravar.Click;
              end
           else
              begin
                  if SqlGridIntegrantes.State in [dsEdit] then
                     SqlGridIntegrantes.Cancel;
                     SqlCdsCelulas.Cancel;
                     Habilitabotoes;
                  end;
       end
    else if SqlGridIntegrantes.State in [dsEdit] then
       begin
           if uteis.confirmacao ( 'Deseja salvar alterações ?') = idyes then
              SqlGridIntegrantes.ApplyUpdates(0)
           else
              SqlGridIntegrantes.Cancel;
       end;
    //close;
end;

procedure TFormMetaProd.FormDestroy(Sender: TObject);
begin
     FormMetaProd := Nil;
end;

procedure TFormMetaProd.Bit_ListaClick(Sender: tObject);
begin
    try
      try
        FormMetasGrid := TFormMetasGrid.Create(Application);
        FormMetasGrid.ShowModal;
      finally
        FormMetasGrid.Destroy;
        FormMetasGrid := nil //  nil é - From Assigned = False
      end;
    except
        //beep;
        uteis.erro  ('Ocorreu um erro na criação do formulário!');
    end;
end;

procedure TFormMetaProd.CalculaTupMensal;
var
  wTup_mes : Currency;
begin
    wTup_mes := 0;
    MostraGrid;
    SQlGridIntegrantes.DisableControls;
    SqlGridIntegrantes.First;
    while not SqlGridIntegrantes.Eof do
      begin
          wTup_mes := wTup_mes + SqlGridIntegrantesTOTAL_TUP_CC.AsCurrency;
          SqlGridIntegrantes.Next;
      end;
    if DmProducao.CdsMetas.State in [dsInsert,dsEdit] then
       DmProducao.CdsMetasCME_TUPMETAMES.AsCurrency := wTup_mes
    else
       begin
           DmProducao.CdsMetas.Edit;
           DmProducao.CdsMetasCME_TUPMETAMES.AsCurrency := wTup_mes
       end;
    SQlGridIntegrantes.EnableControls;
    SqlGridIntegrantes.First;
    DmProducao.CdsMetas.ApplyUpdates(0);
    DmProducao.CdsMetas.Refresh;
end;

procedure TFormMetaProd.Bit_LancarClick(Sender: tObject);
begin
    LancarIntegrantes;
    SqlGridIntegrantes.Refresh;
    MostraGrid;
    CalCulaTupMensal;
    HabilitaBotoes;
    EdtMes.SetFocus;
    EdtMes.SelectAll;
end;

procedure TFormMetaProd.Grd_IntegraKeyDown(Sender: tObject; var Key: Word;
  Shift: TShiftState);
begin
  {Faz com que a grade libere o focu c/ tecla TAB
  if Key = 9 then
    if Shift = [ssShift] then
      SelectNext(ActiveControl,False,true)
    else  if Shift = [] then
      SelectNext(ActiveControl,True,true);
}
end;

procedure TFormMetaProd.BitDuplicarClick(Sender: tObject);
begin
    if uteis.confirmacao ( 'Duplicar lançamento do integrante atual ?')= MrYes then
      begin
          //valores dos registro atual do Grid a replicar
          // replicar
          DmProducao.CdsCompMeta.Open;
          DmProducao.CdsCompMeta.Insert;
          DmProducao.CdsCompMetaCME_CODIGO.Value         := wCodMeta;
          DmProducao.CdsCompMetaCCP_CODIGO.AsString      := SqlGridIntegrantesCCP_CODIGO.AsString;
          DmProducao.CdsCompMetaCEL_CODIGO.Value         := SqlGridIntegrantesCEL_CODIGO.AsString;
          DmProducao.CdsCompMetaMEC_TUPDIARIO.AsCurrency := SqlGridIntegrantesMEC_TUPDIARIO.AsCurrency;
          DmProducao.CdsCompMetaMEC_DIAS.AsCurrency      := SqlGridIntegrantesMEC_DIAS.AsCurrency;
          DmProducao.CdsCompMetaEMP_CODIGO.Value         := dbInicio.Empresa.EMP_CODIGO;
          DmProducao.CdsCompMeta.ApplyUpdates(0);
          SqlGridIntegrantes.Refresh;
          CalCulaTupMensal;
          HabilitaBotoes;
      end;
end;

procedure TFormMetaProd.BitExcluiCompClick(Sender: tObject);
begin
    if uteis.confirmacao ( 'A exclusão do integrante diminuirá o TUP mensal da Célula. Confirma ?')= Mryes then
       begin
           DataCadastros.sqlUpdate.Close;
           DataCadastros.SqlUpdate.SQL.text :=SQLDEF('ORDEMPRODUCAO','DELETE FROM CEL_MTC04','Where CME_REGISTRO='''+SqlGridIntegrantesCME_REGISTRO.AsString+'''','','');
           DataCadastros.sqlUpdate.Execsql;
           SqlGridIntegrantes.Refresh;
           CalCulaTupMensal;
           MostraGrid;
           HabilitaBotoes;
      end;
end;

procedure TFormMetaProd.BitCancelaClick(Sender: tObject);
begin
    // nao confirma alteracao
    DataCadastros.sqlUpdate.Cancel;
    DesabilitaConfirmacao;
    CurMeCdias.Value   :=0;
    EdtCCP_CODIGO.Text :='';
    EdtCCP_NOME.Text   :='';
    CurMeCdiario.Value :=0;
end;

procedure TFormMetaProd.BitConfirmaClick(Sender: tObject);
begin
    DataCadastros.sqlUpdate.close;
    DataCadastros.SqlUpdate.sql.text :=SQLDEF('ORDEMPRODUCAO','UPDATE CEL_MTC04 SET MEC_DIAS = '''+ValorAmericano(CurrToStr(CurMeCdias.Value))+''', MEC_TUPDIARIO = '''+ValorAmericano(CurrToStr(CurMeCdiario.Value))+'''','WHERE CME_REGISTRO ='''+SqlGridIntegrantesCME_REGISTRO.AsString+'''','','');
    DataCadastros.sqlUpdate.Execsql;
    DesabilitaConfirmacao;
    CurMeCdias.Text   :='';
    EdtCCP_CODIGO.Text:='';
    EdtCCP_NOME.Text  :='';
    CurMeCdiario.Text :='';
    SqlGridIntegrantes.Refresh;
    CalCulaTupMensal;
    HabilitaBotoes;
end;

procedure TFormMetaProd.Panel4Exit(Sender: tObject);
begin
    if BitConfirma.Visible = True then
       begin
           //beep;
           BitConfirma.SetFocus;
       end;
end;

procedure TFormMetaProd.SqlGridIntegrantesCalcFields(DataSet: TDataSet);
begin
    SqlGridIntegrantesTOTAL_TUP_CC.AsCurrency := (SqlGridIntegrantesTOTAL_TUP_CC.AsCurrency + (SqlGridIntegrantesMEC_DIAS.AsCurrency * SqlGridIntegrantesMEC_TUPDIARIO.AsCurrency));
end;

procedure TFormMetaProd.SqlGridIntegrantesBeforeEdit(DataSet: TDataSet);
begin
    if Assigned(FormMetaProd)then
       FormMetaProd.HabilitaConfirmacao;
end;

procedure TFormMetaProd.Grd_IntegraDblClick(Sender: tObject);
begin
    HabilitaConfirmacao;
    EdtCCP_CODIGO.Text := SqlGridIntegrantesCCP_CODIGO.AsString;
    EdtCCP_NOME.Text   := SqlGridIntegrantesCCP_NOME.AsString;
    CurMeCdias.Value   := SqlGridIntegrantesMEC_DIAS.AsCurrency;
    CurMeCdiario.Value := SqlGridIntegrantesMEC_TUPDIARIO.AsCurrency;
    CurMeCdias.SetFocus;
    CurMeCdias.SelectAll;
end;

procedure TFormMetaProd.Grd_IntegraKeyPress(Sender: tObject;
  var Key: Char);
begin
    if Key=#13 Then
       Begin
           CurMeCdias.Value   := SqlGridIntegrantesMEC_DIAS.AsCurrency;
           EdtCCP_CODIGO.Text := SqlGridIntegrantesCCP_CODIGO.AsString;
           EdtCCP_NOME.Text   := SqlGridIntegrantesCCP_NOME.AsString;
           CurMeCdiario.Value := SqlGridIntegrantesMEC_TUPDIARIO.AsCurrency;
           CurMeCdias.SetFocus;
           CurMeCdias.SelectAll;
           HabilitaConfirmacao;
       end;
end;

procedure TFormMetaProd.TabelaVazia;
begin
    if DmProducao.CdsMetas.IsEmpty Then
       DmProducao.DsMetas.AutoEdit:= False
    else
       DmProducao.DsMetas.AutoEdit:= True;
end;

procedure TFormMetaProd.PreenchaCombo;
begin
    try
      SqlCdsCelulas.Close;
      SqlCdsCelulas.CommandText := SQLDEF('ORDEMPRODUCAO','select C1.CEL_CODIGO,C1.CEL_NOME from CEL0000 C1','','C1.CEL_NOME','C1.');
      SqlCdsCelulas.Open;
      SqlCdsCelulas.First;
      CbxCelulas.Items.Clear;
      CbxCelulas.Items.Add('');
      while not SqlCdsCelulas.Eof do
       begin
           CbxCelulas.Items.Add(SqlCdsCelulasCEL_NOME.AsString);
           SqlCdsCelulas.Next;
       end;
      CbxCelulas.ItemIndex := 0;
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao preencher a combo !'+e.message));
    end;
end;

procedure TFormMetaProd.EdtMesKeyPress(Sender: tObject; var Key: Char);
begin
    If not( key in['0'..'9',#8] ) then
      begin
          //beep;
          key:=#0;
      end;
end;

procedure TFormMetaProd.BuscaCelula;
Var
  wCelula : String[3];
begin
    wCelula := StrZero(EdtCelula.Text,EdtCelula.MaxLength);
    if SqlCdsCelulas.Locate('CEL_CODIGO',wCelula,[]) = true then
       begin
           CbxCelulas.Text := SqlCdsCelulasCEL_NOME.AsString;
       end
    else
       begin
           CbxCelulas.Text := '';
       end;
end;

procedure TFormMetaProd.CbxCelulasExit(Sender: tObject);
begin
    if SqlCdsCelulas.Locate('cel_nome',CbxCelulas.Text,[]) = true then
       begin
           EdtCelula.Text := SqlCdsCelulasCEL_CODIGO.AsString;
           if (EdtAno.Text<> '') and (EdtMes.Text <> '') then
              begin
                  if DmProducao.CdsMetas.State in [DsInsert] then
                     VerificaMeta
                  else
                     BuscaMeta;
              end;
       end;
end;

procedure TFormMetaProd.CbxCelulasClick(Sender: tObject);
begin
    if (ActiveControl.Name = 'Bit_Sair') or (ActiveControl.Name = 'Bit_Cancelar') then
       exit;
    if SqlCdsCelulas.Locate('CEL_NOME',CbxCelulas.Text,[]) = true then
       begin
           EdtCelula.Text := SqlCdsCelulasCEL_CODIGO.AsString;
       end
    else
       begin
           uteis.aviso('Informe uma Célula !');
           CbxCelulas.SetFocus;
       end;
end;

procedure TFormMetaProd.DbeDiaUtilEnter(Sender: tObject);
begin
    DbeDiaUtil.SelectAll;
end;

procedure TFormMetaProd.DbeTupAcrescentEnter(Sender: tObject);
begin
    DbeTupAcrescent.SelectAll;
end;

procedure TFormMetaProd.DbeTupNegativoEnter(Sender: tObject);
begin
    DbeTupNegativo.SelectAll;
end;

procedure TFormMetaProd.DBEdit1Enter(Sender: tObject);
begin
    DbEdit1.SelectAll;
end;

procedure TFormMetaProd.EdtMesClick(Sender: tObject);
begin
    EdtMes.SelectAll;
end;

procedure TFormMetaProd.EdtAnoClick(Sender: tObject);
begin
    EdtAno.SelectAll;
end;

procedure TFormMetaProd.CbxCelulasEnter(Sender: tObject);
begin
    CbxCelulas.SelectAll;
end;

procedure TFormMetaProd.EdtCelulaClick(Sender: tObject);
begin
    EdtCelula.SelectAll;
end;

procedure TFormMetaProd.EdtCelulaExit(Sender: tObject);
begin
    EdtCelula.Text := StrZero(EdtCelula.Text,EdtCelula.MaxLength);
    if SqlCdsCelulas.Locate('cel_codigo',EdtCelula.Text,[]) = true then
       begin
           CbxCelulas.Text := SqlCdsCelulasCEL_NOME.AsString;
           if (EdtMes.Text <>'') and (EdtAno.Text <> '') then
              begin
                  if DmProducao.CdsMetas.State = dsInsert then
                     VerificaMeta
                  else
                     BuscaMeta;
              end;
       end
    else
       begin
           CbxCelulas.SetFocus;
           EdtCelula.Text := '';
       end;
end;

procedure TFormMetaProd.BuscaMeta;
begin
    try
      wCodMeta := EdtAno.Text + EdtMes.Text + EdtCelula.Text;
      if DmProducao.CdsMetas.Locate('CME_CODIGO',wCodMeta,[])=false then
         begin
             uteis.aviso('Meta-Mês de producão não encontrada !');
             EdtAno.Text    := Copy(DmProducao.CdsMetasCME_CODIGO.AsString,1,4);
             EdtMes.Text    := Copy(DmProducao.CdsMetasCME_CODIGO.AsString,5,2);
             EdtCelula.Text := Copy(DmProducao.CdsMetasCME_CODIGO.AsString,7,3);
             BuscaCelula;
             EdtCelula.SetFocus;
         end
      else
         begin
             BuscaCelula;
             MostraGrid;
         end;
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao Localizar a meta !'+e.message));
    end;



end;

end.

