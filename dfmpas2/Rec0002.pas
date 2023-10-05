{*************************************************************
| Programa...: Rec0002  - Nome formulario = FormRecParcelas
| Objetivo...: Lista de Parcelas (Contas a receber)
| Analista...: Márcio Neu Pacheco
| Programador: Jackson Neu Pacheco
|
| Comentários:
|
| Criação..........: Nov/1998.
| Ultima Alteração.: NOV/1999.
| Feito por........: Márcio
|--------------------------------------------------------------------
| Conversão Interbase:
| Ultima Alteração...:
| Convertido por.....: RODRIGO RAMOS
| Ultima Alteração...: 06/02/2004
| Feito por..........:
********************************************************************}
unit Rec0002;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Mask, StdCtrls, Buttons, Grids, DBGrids, DBCtrls, ExtCtrls, Db, DBTables, RwFunc,
   rxToolEdit, RXDBCtrl, Provider, SqlExpr,SqlClientDataSet, DBClient, DBLocal, DBLocalS, MIDASLIB,
  Data.DBXFirebird, SimpleDS, Data.FMTBcd, SgDbSeachComboUnit, JvExMask, JvToolEdit, JvDBControls;


type
  TFormContasRecParcelas = class(TForm)
    GroupBox1: TGroupBox;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    DbCBoxFpc_Status: TDBComboBox;
    DBeFpc_vlparc: TDBEdit;
    DBeFpc_vlpagto: TDBEdit;
    DBeFpc_cobnum: TDBEdit;
    DBeFpc_decto: TDBEdit;
    CbxCarteira: TComboBox;
    CbxTipoDoc: TComboBox;
    Label2: TLabel;
    CbxBco: TComboBox;
    SqlCdsBco: TSQLClientDataSet;
    SqlCdsBcoBAN_CODIGO: TStringField;
    SqlCdsBcoBAN_APELIDO: TStringField;
    SqlCdsBcoEMP_CODIGO: TStringField;
    DbeBan_Codigo: TDBEdit;
    Label4: TLabel;
    DbeFpc_Juros: TDBEdit;
    DBFPC_MULTA: TDBEdit;
    Label5: TLabel;
    DBFPC_OBS: TDBEdit;
    SqlCdsBcoBAN_COD_APELIDO: TIntegerField;
    CbDup: TComboBox;
    Label3: TLabel;
    Label6: TLabel;
    CbRemessa: TComboBox;
    SqlBcoCheque: TSQLClientDataSet;
    SqlBcoChequeBCO_CODIGO: TIntegerField;
    SqlBcoChequeBCO_DESCRICAO: TStringField;
    SqlBcoChequeEMP_CODIGO: TStringField;
    GrpExclusao: TGroupBox;
    Label34: TLabel;
    Label35: TLabel;
    DBEdit5: TDBEdit;
    Edt_Usu_Cod: TDBEdit;
    Edt_Usu_Nome: TDBEdit;
    DBCheckBox2: TDBCheckBox;
    Label36: TLabel;
    DBEdt_Motivo: TDBEdit;
    Panel1: TPanel;
    Label7: TLabel;
    DBEdit2: TDBEdit;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Panel2: TPanel;
    Label28: TLabel;
    DBChkFat_previsao: TDBCheckBox;
    Cheque: TGroupBox;
    Label20: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label30: TLabel;
    DBEdt_Bco_Cheque: TDBEdit;
    CbBcoCheque: TComboBox;
    DbeCheque: TDBEdit;
    DbeCheque_Dv: TDBEdit;
    DbeSacado_Cheque: TDBEdit;
    GroupBox3: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    Label10: TLabel;
    Label14: TLabel;
    Edt_Descontado: TEdit;
    DBEdit3: TDBEdit;
    CbxConfDevolucao: TComboBox;
    DBEdit4: TDBEdit;
    DBFPC_JUROS_DESCTO: TDBEdit;
    Bit_Excluir: TBitBtn;
    Bit_Gravar: TBitBtn;
    Bit_Cancelar: TBitBtn;
    Bit_Sair: TBitBtn;
    EdCliente: TEdit;
    DBCheckBox1: TDBCheckBox;
    Label12: TLabel;
    Label29: TLabel;
    edFPagto: TSgDbSearchCombo;
    qFPagto: TSQLQuery;
    DbDtFPC_VENCTO: TJvDBDateEdit;
    DbDtFpc_FPC_DTDESC: TJvDBDateEdit;
    DbDtFpc_pagto: TJvDBDateEdit;
    DBDateEdit1: TJvDBDateEdit;
    DBDataDevolucao: TJvDBDateEdit;
    pnAntecipacao: TPanel;
    dbFPC_USU_CODIGO_ANTECIPACAO: TDBText;
    dbFPC_DATA_ANTECIPACAO: TDBText;
    Label31: TLabel;
    Label32: TLabel;
    cbFPC_ANTECIPACAO_CONCLUIDA: TCheckBox;
    procedure MudaCorCampos(Sender: tObject);
    procedure DesabilitaBotoes;
    procedure HabilitaBotoes;
    procedure Bit_ExcluirClick(Sender: tObject);
    procedure Bit_GravarClick(Sender: tObject);
    procedure Bit_CancelarClick(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure Bit_SairClick(Sender: tObject);
    procedure DBeFpc_vlpagtoExit(Sender: tObject);
    procedure DbDtFpc_pagtoExit(Sender: tObject);
    procedure DbDtFPC_VENCTOExit(Sender: tObject);
    procedure DbDtFpc_FPC_DTDESCExit(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure DbeBan_CodigoExit(Sender: tObject);
    procedure CbxBcoClick(Sender: tObject);
    procedure CbxCarteiraClick(Sender: tObject);
    procedure CbxTipoDocClick(Sender: tObject);
    procedure DBFPC_MULTAExit(Sender: tObject);
    procedure Calcular;
    procedure DBeFpc_vlparcClick(Sender: tObject);
    procedure CbDupChange(Sender: tObject);
    procedure CbxCarteiraExit(Sender: tObject);
    procedure CbxFormaClick(Sender: tObject);
    procedure DBDataDevolucaoExit(Sender: tObject);
    procedure CbxConfDevolucaoClick(Sender: tObject);
    procedure CbxConfDevolucaoChange(Sender: tObject);
    procedure DbCBoxFpc_StatusClick(Sender: tObject);
    procedure DbCBoxFpc_StatusExit(Sender: tObject);
    procedure CbxTipoDocChange(Sender: tObject);
    procedure DbeChequeExit(Sender: tObject);
    procedure DBEdt_Bco_ChequeExit(Sender: tObject);
    procedure CbBcoChequeClick(Sender: tObject);
    procedure cbFPC_ANTECIPACAO_CONCLUIDAClick(Sender: TObject);
  private
    { Private declarations }
     {campos}
    CampoEdit    :TEdit;
    CampoDBEdit  :TDBEdit;
    CampoData    :TDBDateEdit;
    CampoTDBLuk  :TDBLookupComboBox;
    CampoMemo    :TDBMemo;
    CampoCombo   :TComboBox;
    CampoDbCombo :TDBComboBox;
    {Variaveis}
    wDevolucao,
    wTipoDoc :String[1];

    rValorParcelaAntes,
    rValorParcelaDepois:Currency;

    procedure MostraDados;
    procedure Habilita_Cheque;
    procedure BuscaBcoCheque;

    procedure Habilita_Objetos;
    procedure Desabilita_Objetos;

    procedure Verifica_Se_Exclui_Registro_Principal(CONST sCodigo, sEmpresa: String);

  public
    { Public declarations }
    bConfirmar_Exclusao_parcela : Boolean;
  end;

var
  FormContasRecParcelas: TFormContasRecParcelas;

implementation

{$R *.DFM}

uses Uteis, Rec0001, DataMov, DataCad, DataCad1,
  Rec0003, Men0001, Motivo, iniciodb;







procedure TFormContasRecParcelas.MudaCorCampos(Sender: tObject);
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
  {CampoTDBLuk  :TDBLookupComboBox}
   if Assigned(CampoTDBLuk) then
      begin
         CampoTDBLuk.color := clWindow;
      end;
   if ActiveControl is TDBLookupComboBox then
      begin
         TDBLookupComboBox(ActiveControl).color := $0080FFFF;
         CampoTDBLuk := TDBLookupComboBox(ActiveControl);
      end
   else
      begin
         CampoTDBLuk := nil;
      end;
  {CampoComboBox}
  if Assigned(CampoCombo) then
      begin
          CampoCombo.color := clWindow;
      end;
   if ActiveControl is TComboBox then
      begin
          if TComboBox(ActiveControl).color = $00D7D7D7 then
             begin
                 exit;
             end;
          TComboBox(ActiveControl).color := $0080FFFF;
          CampoCombo := TComboBox(ActiveControl);
      end
   else
      begin
          CampoCombo := nil;
      end;
  {CampoDbCombo}
  if Assigned(CampoDbCombo) then
      begin
          CampoDbCombo.color := clWindow;
      end;
   if ActiveControl is TDBComboBox then
      begin
          if TDBComboBox(ActiveControl).color = $00D7D7D7 then
             begin
                 exit;
             end;
          TDBComboBox(ActiveControl).color := $0080FFFF;
          CampoDbCombo := TDBComboBox(ActiveControl);
      end
   else
      begin
          CampoDbCombo := nil;
      end;
  {CampoMemo  :TDBMemo}
   if Assigned(CampoMemo) then
      begin
         CampoMemo.color := clWindow;
      end;
   if ActiveControl is TDBMemo then
      begin
         TDBMemo(ActiveControl).color := $0080FFFF;
         CampoMemo := TDBMemo(ActiveControl);
      end
   else
      begin
         CampoMemo := nil;
      end;
end;

procedure TFormContasRecParcelas.HabilitaBotoes;
begin
    Bit_Excluir.Enabled  := True;
    Bit_Sair.Enabled     := True;
    Bit_Gravar.Enabled   := False;
    Bit_Cancelar.Enabled := False;
end;

procedure TFormContasRecParcelas.DesabilitaBotoes;
begin
    Bit_Excluir.Enabled  := False;
    Bit_Sair.Enabled     := False;
    Bit_Gravar.Enabled   := True;
    Bit_Cancelar.Enabled := True;
end;

procedure TFormContasRecParcelas.Bit_ExcluirClick(Sender: tObject);
begin
   if (DataMovimento.CdsRecParceFPC_EXCLUSAO.AsString = 'N') then
      begin
         if (DataMovimento.CdsRecParceFPC_SITPAG.AsString = 'L') then
            begin
               messagebeep($ffff);
               uteis.aviso('Não posso excluir uma Fatura "Liquidada" !');
            end
         else
         if uteis.confirmacao ( 'Deseja Excluir a Parcela?')= Mryes then
            begin
               try
                 try
                   FrmMotivo := TFrmMotivo.Create(Application);
                   FrmMotivo.Edt_Motivo.MaxLength := 20;
                   FrmMotivo.ShowModal;
                 finally
                    if (bConfirmar_Exclusao_parcela) then
                       begin
                          Screen.cursor := crHourglass;
                          if (DataMovimento.CdsRecParce.State in [dsBrowse]) then
                             DataMovimento.CdsRecParce.Edit;
                          DataMovimento.CdsRecParceFPC_MOTIVO_EXCLUSAO.AsString := FrmMotivo.Edt_Motivo.Text;
                          DataMovimento.CdsRecParceFPC_DATA_EXCLUSAO.AsString   := DateToStr(now);
                          DataMovimento.CdsRecParceFPC_HORA_EXCLUSAO.AsString   := TimeToStr(now);
                          DataMovimento.CdsRecParceUSU_CODIGO.AsString          := dbInicio.Usuario.Codigo;
                          DataMovimento.CdsRecParceUSU_LOGIN.AsString           := dbInicio.Usuario.nome;
                          DataMovimento.CdsRecParceFPC_EXCLUSAO.AsString        := 'S';
                          DataMovimento.CdsRecParceFPC_STATUS.AsString          := 'Excluída';
                          DataMovimento.CdsRecParceFPC_SITPAG.AsString          := 'X';
                          DataMovimento.CdsRecParce.ApplyUpdates(0);
                          {Verifica se todas as parcelas foram excluídas}
                          Verifica_Se_Exclui_Registro_Principal(DBEdit2.Text,DataMovimento.CdsRecParceEMP_CODIGO.AsString);
                          screen.cursor := crDefault;
                       end;
                    FrmMotivo.Destroy;
                    FrmMotivo := nil;
                 end;
               except
                   //beep;
                   uteis.erro  ('Ocorreu um erro na criação do formulário!');
               end;
               close;
            end;
      end
   else
      begin
         //beep;
         uteis.aviso('Registro já excluído !');
      end;
end;

procedure TFormContasRecParcelas.Bit_GravarClick(Sender: tObject);
Var
  bGravar : Boolean;
begin
   bGravar       := True;
   Screen.Cursor := crHourGlass;
   //salva a parcela
   if (DbDtFPC_PAGTO.Date = 0) and (DbeFpc_Vlpagto.Field.AsCurrency > 0) then
   begin
         uteis.aviso('Informe a data do recebimento !');
         DbDtFPC_PAGTO.SetFocus;
         Screen.Cursor := crDefault;
         bGravar := False;
   end
   else
   if (DbCBoxFpc_Status.ItemIndex = 6)  and (DbDtFPC_PAGTO.Date = 0) then
   begin
         uteis.aviso('Informe a data do recebimento !');
         DbDtFPC_PAGTO.SetFocus;
         DbDtFPC_PAGTO.SelectAll;
         Screen.Cursor := crDefault;
         bGravar := False;
   end
   else
   if (DbCBoxFpc_Status.ItemIndex = 6) and (DbDtFPC_PAGTO.Date > 0) and (DbeFpc_Vlpagto.Field.AsCurrency = 0) then
   begin
         uteis.aviso('Informe o valor do recebimento !');
         DBeFpc_vlpagto.SetFocus;
         Screen.Cursor := crDefault;
         bGravar := False;
   end
   else
   if (DbDtFPC_PAGTO.Date > 0) and (DbeFpc_Vlpagto.Field.AsCurrency = 0) then
   begin
         uteis.aviso('Informe o valor do recebimento !');
         DBeFpc_vlpagto.SetFocus;
         Screen.Cursor := crDefault;
         bGravar := False;
   end
   else
   if (CbxTipoDoc.ItemIndex = 4) then
   begin
         if (DBEdt_Bco_Cheque.Text = '') then
         begin
               uteis.aviso('Informe o Banco do Cheque !');
               DBEdt_Bco_Cheque.SetFocus;
               DBEdt_Bco_Cheque.SelectAll;
               Screen.Cursor := crDefault;
               bGravar := False;
         end
         else
         if (DbeCheque.Text = '') then
         begin
               uteis.aviso('Informe o Número do Cheque !');
               DbeCheque.SetFocus;
               DbeCheque.SelectAll;
               Screen.Cursor := crDefault;
               bGravar := False;
         end;
   end
   else
   {Verificando se foi definido um banco, ai obrigar definir uma cobrança}
   if (DbeBan_Codigo.Text <> '') then
   begin
         if (CbxCarteira.Text = '') or (CbxCarteira.ItemIndex = 0) then
         begin
               uteis.aviso('Informe uma Cobrança');
               CbxCarteira.SetFocus;
               Screen.Cursor := crDefault;
               bGravar := False;
         end;
   end;
   //
   if (bGravar ) then
   begin
         (*DataMovimento.CdsRecParceFPC_FORMAPAGTO.AsString := IIF(CbxForma.ItemIndex = 0,'',
                                                             IIF(CbxForma.ItemIndex = 1,'CH',
                                                             IIF(CbxForma.ItemIndex = 2,'DI',
                                                             IIF(CbxForma.ItemIndex = 3,'CO',''))));*)

         DataMovimento.CdsRecParceFPC_COBTIPO.AsString := IIF(CbxCarteira.ItemIndex = 0,''  ,
                                                          IIF(CbxCarteira.ItemIndex = 1,'CT',               //CT = CARTEIRA
                                                          IIF(CbxCarteira.ItemIndex = 2,'CS',               //CS = COBRANCA SIMPLES
                                                          IIF(CbxCarteira.ItemIndex = 3,'CC',               //CC = COBRANCA CAUCIONADA
                                                          IIF(CbxCarteira.ItemIndex = 4,'CD',               //Cd = COBRANCA DESCONTADA
                                                          IIF(CbxCarteira.ItemIndex = 5,'SR',               //SR = COBRANCA SEM REGISTRO
                                                          IIF(CbxCarteira.ItemIndex = 6,'CR',               //CR = COBRANCA RAPIDA
                                                          IIF(CbxCarteira.ItemIndex = 7,'CQ','CH'))))))));  //CQ = CUSTODIA CHEQUE / CH = CHEQUE DESCONTADO

         DataMovimento.CdsRecParceFPC_TIPODOC.AsString := IIF(CbxTipoDoc.ItemIndex = 0,''  ,
                                                          IIF(CbxTipoDoc.ItemIndex = 1,'DP',
                                                          IIF(CbxTipoDoc.ItemIndex = 2,'BL',
                                                          IIF(CbxTipoDoc.ItemIndex = 3,'RC',
                                                          IIF(CbxTipoDoc.ItemIndex = 4,'CH',
                                                          IIF(CbxTipoDoc.ItemIndex = 5,'DN',
                                                          IIF(CbxTipoDoc.ItemIndex = 6,'OU','CC')))))));
         //
         DataMovimento.CdsRecParceFPC_IMPDUP.AsString            := IIF(CbDup.ItemIndex = 0,'S','N');
         DataMovimento.CdsRecParceFPC_STATUS_REMESSA.AsString    := IIF(CbRemessa.ItemIndex = 0,'S','N');
         DataMovimento.CdsRecParceFPC_CONFIRMADEVOLUCAO.AsString := IIF(CbxConfDevolucao.ItemIndex = 0, 'S','N');
         if DataMovimento.CdsRecParceFPC_STATUS.AsString = 'Cancelada' then
            DataMovimento.CdsRecParceFPC_SITPAG.AsString := 'C'
         Else if DataMovimento.CdsRecParceFPC_STATUS.AsString = 'Liquidada' then
            DataMovimento.CdsRecParceFPC_SITPAG.AsString := 'L'
         ELSE
           DataMovimento.CdsRecParceFPC_SITPAG.AsString := 'P' ;

         if (DbeBan_Codigo.Text <> '') then
            DataMovimento.CdsRecParceBAN_COD_APELIDO.AsInteger := SqlCdsBcoBAN_COD_APELIDO.AsInteger;
         {Atualiza o limite de Credito Utilizado tanto no Cheque/Duplicata}
         if (CbxCarteira.ItemIndex = 8) and (DbCBoxFpc_Status.ItemIndex = 5) then
         begin
                if ((DataMovimento.CdsRecParceFPC_COBTIPO.AsString = 'CH') or
                    (DataMovimento.CdsRecParceFPC_COBTIPO.AsString = 'CD')) and
                    (DataMovimento.CdsRecParceFPC_SITPAG.AsString = 'L') and
                    (DataMovimento.CdsRecParceFPC_DESCONTADO.AsString = 'S') and
                    (wDevolucao = 'N') then
                begin
                       Atualizar_Limite_Conta('C',
                                              wTipoDoc,
                                              DataMovimento.CdsRecParceEMP_CODIGO.AsString,
                                              DataMovimento.CdsRecParceBAN_CODIGO.AsString,
                                              DataMovimento.CdsRecParceFPC_VLPARC.AsString);
                end
                else
                if ((DataMovimento.CdsRecParceFPC_COBTIPO.AsString = 'CH') or
                    (DataMovimento.CdsRecParceFPC_COBTIPO.AsString = 'CD')) and
                    (DataMovimento.CdsRecParceFPC_SITPAG.AsString = 'L') and
                    (DataMovimento.CdsRecParceFPC_DESCONTADO.AsString = 'S') and
                    (wDevolucao = 'S') then
                begin
                       Atualizar_Limite_Conta('D',
                                              wTipoDoc,
                                              DataMovimento.CdsRecParceEMP_CODIGO.AsString,
                                              DataMovimento.CdsRecParceBAN_CODIGO.AsString,
                                              DataMovimento.CdsRecParceFPC_VLPARC.AsString);
                end;
         end;
         //

         DataMovimento.CdsRecParceFPC_ANTECIPACAO_CONCLUIDA.AsString := iif(cbFPC_ANTECIPACAO_CONCLUIDA.Checked, 'S', 'N');

         DataMovimento.CdsRecParce.Post;
         DataMovimento.CdsRecParce.ApplyUpdates(0);

         rValorParcelaDepois := DataMovimento.CdsRecParceFPC_VLPARC.AsCurrency;


         if (rValorParcelaDepois <> rValorParcelaAntes) then
         begin
               if (uteis.confirmacao ( 'O Valor da parcela foi alterado gostaria de atualizar o valor Total da Nota ?')=mrYes) then
               begin
                     dataCadastros.sqlUpdate.Close;
                     DataCadastros.SqlUpdate.sql.text :='UPDATE FAT0000 SET FAT_VLFAT = FAT_VLFAT + '+ValorAmericano(FloatToStr(rValorParcelaDepois - rValorParcelaAntes))+' WHERE FAT_REGISTRO = '+DataMovimento.CdsReceberFAT_REGISTRO.AsString;
                     dataCadastros.sqlUpdate.Execsql;
                     dataCadastros.sqlUpdate.Close;
               end;
         end;


         if Assigned(FormContasRecParceGrid) then
         begin
                close;
                FormContasRecParceGrid.CdsReceber.Refresh;
         end;
         DataMovimento.CdsRecParce.Refresh;
         Habilitabotoes;
         Bit_Sair.Click;
      end;
   Screen.Cursor := crDefault;
end;

procedure TFormContasRecParcelas.Bit_CancelarClick(Sender: tObject);
begin
    DataMovimento.CdsRecParce.Cancel;
    if DataMovimento.CdsRecParce.IsEmpty Then
       begin
         DataMovimento.DsRecParc.AutoEdit := False;
       end;
    HabilitaBotoes;
    MostraDados;
    DbDtFPC_VENCTO.SetFocus;
end;

procedure TFormContasRecParcelas.FormShow(Sender: tObject);
Var
  wSeleciona,wOrdem :String;
begin
    try
     // Left := 30;
     // Top  := 00;
      bConfirmar_Exclusao_parcela := False;
      {ativa o método ao evento OnActiveControlChange}
      Screen.OnActiveControlChange   := MudaCorCampos;
      //
      //FormContasReceber.Pn_Botoes.Visible := True;
      {Carrega Combo do Banco Cheque}
      try
        SqlBcoCheque.Close;
        SqlBcoCheque.CommandText := SQLDEF('BANCOS','SELECT * FROM BANCOS','','BCO_DESCRICAO','');
        SqlBcoCheque.Open;
        SqlBcoCheque.First;
        CbBcoCheque.Items.Clear;
        CbBcoCheque.Items.Add('');
        while not SqlBcoCheque.eof do
          begin
              CbBcoCheque.Items.Add(SqlBcoChequeBCO_DESCRICAO.AsString);
              SqlBcoCheque.Next;
          end;
        CbBcoCheque.Text := '';
      except
        on E:EDataBaseError do
           begin
              uteis.erro  (pchar('Erro ao abrir a tabela de Banco dos Cheques !'+#13#10+
                         'Mensagem erro: '+e.message));
           end;
      end;
      //
      try
        SqlCdsBco.Close;
        SqlCdsBco.CommandText := SQLDEF('BANCOS',
                                 'SELECT BAN_CODIGO,BAN_APELIDO,BAN_COD_APELIDO,EMP_CODIGO FROM BAN0000',
                                 'WHERE BAN_ATIVO = ''S''','BAN_APELIDO','');
        SqlCdsBco.Open;
        SqlCdsBco.First;
        CbxBco.Items.Clear;
        CbxBco.Items.Add('');
        while not SqlCdsBco.eof do
         begin
             CbxBco.Items.Add(SqlCdsBcoBAN_APELIDO.AsString);
             SqlCdsBco.Next;
         end;
        CbxBco.Text      := '';
      except on E:EDataBaseError do
         uteis.erro  (pchar('Erro ao Abrir a Tabela BANCO !'+E.MESSAGE));
      end;
      if Assigned(FormContasRecParceGrid) then
         wSeleciona := 'WHERE F1.FAT_REGISTRO = '''+FormContasRecParceGrid.CdsReceberFAT_REGISTRO.AsString+''''
      else
         wSeleciona := 'WHERE F1.FAT_REGISTRO = '''+FormContasReceber.CdsParcelasGridFAT_REGISTRO.AsString+'''';
      wOrdem := 'F1.FAT_REGISTRO';
      if DataMovimento.CdsReceber.State in [dsBrowse] then
         begin
             try
               wSql1 := 'Select F1.*,B1.BAN_APELIDO from FAT_PC01 F1 ';
               wSql2 := 'left join BAN0000 B1 on (F1.BAN_CODIGO = B1.BAN_CODIGO) ';
               DataMovimento.CdsRecParce.Close;
               DataMovimento.CdsRecParce.CommandText := SQLDEF('RECEBER',wSql1+wSql2,wSeleciona,wOrdem,'F1.');
               DataMovimento.CdsRecParce.Open;
               if (DataMovimento.CdsRecParce.IsEmpty) then
                  begin
                      DataMovimento.DsRecParc.AutoEdit := False;
                  end
               else
                  begin
                     if DataMovimento.CdsReceber.State in [dsInsert] then
                        DesabilitaBotoes
                     else
                        HabilitaBotoes;
                     //
                     if (DataMovimento.CdsRecParceFPC_DESCONTADO.AsString = 'S') then
                        begin
                           CbxCarteira.Enabled      := False;
                           DbCBoxFpc_Status.Enabled := False;
                        end
                     else
                        begin
                           CbxCarteira.Enabled      := True;
                           DbCBoxFpc_Status.Enabled := True;
                        end;
                     if (DataMovimento.CdsRecParceFPC_EXCLUSAO.AsString = 'S') then
                        begin
                           Desabilita_Objetos;
                           DataMovimento.DsRecParc.AutoEdit := False;
                        end
                     else
                        begin
                           Habilita_Objetos;
                           DataMovimento.DsRecParc.AutoEdit := True;
                        end;
                  end;
             except on E:EdataBaseError do
                uteis.erro  (pchar('Erro ao Abrir a tabela de parcelamentos ! '+e.message))
             end;
         end;
      if (DataMovimento.CdsRecParceFPC_COBTIPO.IsNull) and (DataMovimento.CdsRecParceFPC_TIPODOC.IsNull) then
         begin
             CbxCarteira.ItemIndex := 0;
             CbxTipoDoc.ItemIndex  := 0;
         end;
      MostraDados;
      rValorParcelaAntes := DataMovimento.CdsRecParceFPC_VLPARC.AsCurrency;
      pnAntecipacao.Visible := (DBInicio.GetParametroSistema('PMT_GER_AVANC_ANTECIP_DESC') = 'S') and (DbCBoxFpc_Status.Text = 'Liq.p/Descto');

      cbFPC_ANTECIPACAO_CONCLUIDA.Checked := iif(DataMovimento.CdsRecParceFPC_ANTECIPACAO_CONCLUIDA.AsString = 'S', True, False);

         DBeFpc_vlparc.Enabled := (DataMovimento.CdsRecParceFPC_STATUS.AsString = 'Pendente');
      DbDtFpc_Vencto.SetFocus;
    except on E:EdatabaseError do
      uteis.erro  (Pchar('Erro ao abrir arquivos !'+e.message));
    end;
end;

procedure TFormContasRecParcelas.Bit_SairClick(Sender: tObject);
begin
  Close;
end;

procedure TFormContasRecParcelas.DBeFpc_vlpagtoExit(Sender: tObject);
begin
    if (DbeFpc_Vlpagto.Text = '') then
       DbeFpc_Vlpagto.Field.AsCurrency := 0;
    if (DbeFpc_Vlpagto.Field.AsCurrency >=0) then
       Calcular;
    if (DbDtFPC_PAGTO.Date = 0) and (DbeFpc_Vlpagto.Field.AsCurrency>0) then
       begin
           uteis.aviso('Informe a data do recebimento !');
           DbDtFPC_PAGTO.SetFocus;
       end;
end;

procedure TFormContasRecParcelas.DbDtFpc_pagtoExit(Sender: tObject);
begin
    if DataMovimento.CdsRecParceFPC_PREVISAO.AsString = 'N' then
       begin
           if DbDtFpc_pagto.Text <> '  /  /    ' then
              begin
                  if not TestaDataStr(DbDtFpc_pagto.Text) then
                     DbDtFpc_pagto.setfocus;
                  // se usuario preencheu a data o programa já transfere o vl da parcela para o vl pago que pode ser mudado
                  if (DbDtFpc_pagto.Text <> '  /  /    ') then //and(DataMovimento.CdsRecParceFPC_VLPAGO.AsCurrency = 0) then
                     begin
                         if DataMovimento.CdsRecParce.State in [dsBrowse] then
                            DataMovimento.CdsRecParce.Edit;
                         if DBeFpc_vlpagto.Field.AsCurrency = 0 then
                            DataMovimento.CdsRecParceFPC_VLPAGO.AsCurrency := DataMovimento.CdsRecParceFPC_VLPARC.AsCurrency;
                         if (DataMovimento.CdsRecParceFPC_DESCONTADO.AsString = 'N') then
                            DataMovimento.CdsRecParceFPC_STATUS.AsString      := 'Liquidada';
                     end;
              end;
       end
    else
       begin
           if DbDtFPC_PAGTO.Date>0 then
              begin
                  uteis.aviso('Esta conta é de previsão e não pode ser Liquidada !');
                  DbDtFPC_PAGTO.Date         := 0;
                  DbeFpc_Vlpagto.Field.Value := 0;
                  DbDtFPC_PAGTO.SetFocus;
              end;
       end;
end;

procedure TFormContasRecParcelas.DbDtFPC_VENCTOExit(Sender: tObject);
begin
    if (ActiveControl.Name = 'Bit_Cancelar') or (ActiveControl.Name = 'Bit_Sair') then
       exit;
    if DbDtFPC_VENCTO.text <> '  /  /    ' then
       begin
           if not TestaDataStr(DbDtFPC_VENCTO.Text) then
              DbDtFPC_VENCTO.setfocus;
       end;
end;

procedure TFormContasRecParcelas.DbDtFpc_FPC_DTDESCExit(Sender: tObject);
begin
    if DbDtFpc_FPC_DTDESC.text <> '  /  /    ' then
       begin
           if not TestaDataStr(DbDtFpc_FPC_DTDESC.Text) then
              DbDtFpc_FPC_DTDESC.setfocus;
       end;
end;

procedure TFormContasRecParcelas.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
    Screen.OnActiveControlChange := NIL;
end;

procedure TFormContasRecParcelas.DbeBan_CodigoExit(Sender: tObject);
begin
    screen.Cursor := crHourGlass;
    if DbeBan_codigo.Field.Text <> '' then
       begin
           if SqlCdsBco.Locate('BAN_CODIGO',StrZero(DbeBan_Codigo.Text,DbeBan_Codigo.MaxLength),[]) then
              begin
                  CbxBco.Text := SqlCdsBcoBAN_APELIDO.AsString;
                  DbeBan_Codigo.Text := StrZero(DbeBan_Codigo.Text,DbeBan_Codigo.MaxLength);
              end
           else
              begin
                  uteis.aviso('Banco não encontrado !');
                  CbxBco.SetFocus;
              end;
       end;
    screen.cursor:=crDefault;
end;

procedure TFormContasRecParcelas.CbxBcoClick(Sender: tObject);
begin
  if SqlCdsBco.Locate('BAN_APELIDO',CbxBco.Text,[]) then
     begin
         if DataMovimento.CdsRecParce.State = DsBrowse then
            DataMovimento.CdsRecParce.Edit;
         DbeBan_Codigo.Field.Text := SqlCdsBcoBAN_CODIGO.AsString;
     end
  else
     begin
         if (CbxBco.Text = '') or (CbxBco.ItemIndex = 0) then
            begin
                if DataMovimento.CdsRecParce.State = DsBrowse then
                   DataMovimento.CdsRecParce.Edit;
                DbeBan_codigo.Field.Text := '';
            end;
     end;
end;

procedure TFormContasRecParcelas.CbxCarteiraClick(Sender: tObject);
begin
    if DataMovimento.CdsRecParce.State = DsBrowse then
       DataMovimento.CdsRecParce.Edit;
end;

procedure TFormContasRecParcelas.CbxTipoDocClick(Sender: tObject);
begin
    if DataMovimento.CdsRecParce.State = DsBrowse then
       DataMovimento.CdsRecParce.Edit;
end;

procedure TFormContasRecParcelas.DBFPC_MULTAExit(Sender: tObject);
begin
    Calcular;
end;

procedure TFormContasRecParcelas.Calcular;
begin
    if DataMovimento.CdsRecParce.State in [dsEdit,dsInsert] then
       begin
           if (DataMovimento.CdsRecParceFPC_VLPAGO.AsCurrency >= DataMovimento.CdsRecParceFPC_VLPARC.AsCurrency) then
              begin
                  DataMovimento.CdsRecParceFPC_JUROS.AsCurrency := DataMovimento.CdsRecParceFPC_VLPAGO.AsCurrency -(DataMovimento.CdsRecParceFPC_VLPARC.AsCurrency + DataMovimento.CdsRecParceFPC_MULTA.AsCurrency);
                  if DataMovimento.CdsRecParceFPC_DESCTO.AsCurrency > 0 then
                     DataMovimento.CdsRecParceFPC_DESCTO.AsCurrency := 0;
              end;
           if (DataMovimento.CdsRecParceFPC_VLPAGO.AsCurrency <= DataMovimento.CdsRecParceFPC_VLPARC.AsCurrency) then
              begin
                  if DataMovimento.CdsRecParceFPC_JUROS.AsCurrency >0 then
                     DataMovimento.CdsRecParceFPC_JUROS.AsCurrency := 0;
                  if DBeFpc_vlpagto.Field.Value >0 then
                     DataMovimento.CdsRecParceFPC_DESCTO.AsCurrency := (DataMovimento.CdsRecParceFPC_VLPARC.AsCurrency - DataMovimento.CdsRecParceFPC_VLPAGO.AsCurrency);
              end;
       end;
end;

procedure TFormContasRecParcelas.DBeFpc_vlparcClick(Sender: tObject);
begin
    DBeFPC_VLPARC.SelectAll;
end;

procedure TFormContasRecParcelas.MostraDados;
begin
    if SqlCdsBco.Locate('BAN_CODIGO',DbeBan_Codigo.field.Text,[]) then
       CbxBco.Text := SqlCdsBcoBAN_APELIDO.AsString
    else
       CbxBco.Text := '';

    (*CbxForma.ItemIndex := IIF(DataMovimento.CdsRecParceFPC_FORMAPAGTO.AsString = ''  ,0,
                          IIF(DataMovimento.CdsRecParceFPC_FORMAPAGTO.AsString = 'CH',1,
                          IIF(DataMovimento.CdsRecParceFPC_FORMAPAGTO.AsString = 'DI',2,
                          IIF(DataMovimento.CdsRecParceFPC_FORMAPAGTO.AsString = 'CO',3,0)))); *)


    CbxCarteira.ItemIndex := IIF(DataMovimento.CdsRecParceFPC_COBTIPO.AsString = ''  ,0,
                             IIF(DataMovimento.CdsRecParceFPC_COBTIPO.AsString = 'CT',1,
                             IIF(DataMovimento.CdsRecParceFPC_COBTIPO.AsString = 'CS',2,
                             IIF(DataMovimento.CdsRecParceFPC_COBTIPO.AsString = 'CC',3,
                             IIF(DataMovimento.CdsRecParceFPC_COBTIPO.AsString = 'CD',4,
                             IIF(DataMovimento.CdsRecParceFPC_COBTIPO.AsString = 'SR',5,
                             IIF(DataMovimento.CdsRecParceFPC_COBTIPO.AsString = 'CR',6,
                             IIF(DataMovimento.CdsRecParceFPC_COBTIPO.AsString = 'CQ',7,8))))))));

    CbxTipoDoc.ItemIndex  := IIF(DataMovimento.CdsRecParceFPC_TIPODOC.AsString = ''  ,0,
                             IIF(DataMovimento.CdsRecParceFPC_TIPODOC.AsString = 'DP',1,
                             IIF(DataMovimento.CdsRecParceFPC_TIPODOC.AsString = 'BL',2,
                             IIF(DataMovimento.CdsRecParceFPC_TIPODOC.AsString = 'RC',3,
                             IIF(DataMovimento.CdsRecParceFPC_TIPODOC.AsString = 'CH',4,
                             IIF(DataMovimento.CdsRecParceFPC_TIPODOC.AsString = 'DN',5,
                             IIF(DataMovimento.CdsRecParceFPC_TIPODOC.AsString = 'OU',6,7)))))));

    Habilita_Cheque;
    //
    if (DataMovimento.CdsRecParceFPC_EXCLUSAO.AsString = 'S') then
       GrpExclusao.Visible := True
    else
       GrpExclusao.Visible := False;
    //
    {So habilita a devoluçao de duplicatas/cheque quando foi realmente descontados}
    if (DataMovimento.CdsRecParceFPC_DESCONTADO.AsString = 'S') then
       begin
          CbxConfDevolucao.Enabled := True;
          CbxConfDevolucao.Color   := clWindow;
          DBDataDevolucao.Color    := clWindow;
       end
    else
       begin
          CbxConfDevolucao.Enabled := False;
          CbxConfDevolucao.Color   := $00D7D7D7;
          DBDataDevolucao.Color    := $00D7D7D7;
       end;
    CbDup.ItemIndex            := IIF(DataMovimento.CdsRecParceFPC_IMPDUP.AsString = 'S',0,1);
    CbRemessa.ItemIndex        := IIF(DataMovimento.CdsRecParceFPC_STATUS_REMESSA.AsString = 'S',0,1);
    Edt_Descontado.Text        := IIF(DataMovimento.CdsRecParceFPC_DESCONTADO.AsString = 'S','SIM','NAO');
    CbxConfDevolucao.ItemIndex := IIF(DataMovimento.CdsRecParceFPC_CONFIRMADEVOLUCAO.AsString = 'S',0,1);
    {Quando o Status parcelamento for Liq.p/Descto,
     Bloqueia o Codigo da Conta e a Descriçao da conta}
    if (DataMovimento.CdsRecParceFPC_EXCLUSAO.AsString = 'N') then
       begin
          if (DataMovimento.CdsRecParceFPC_STATUS.AsString = 'Liq.p/Descto') then
             begin
                 DbeBan_Codigo.Enabled    := False;
                 CbxBco.Enabled           := False;
                 DbCBoxFpc_Status.Enabled := False;
             end
          else
             begin
                 DbeBan_Codigo.Enabled    := True;
                 CbxBco.Enabled           := True;
                 DbCBoxFpc_Status.Enabled := True;
             end;
       end;
    {Habilita a Data de Devolucao quando a confirmacao devolucao = Sim}
    if (DataMovimento.CdsRecParceFPC_CONFIRMADEVOLUCAO.AsString = 'S') then
       DBDataDevolucao.Enabled := True
    else
       DBDataDevolucao.Enabled := False;
    FormContasRecParcelas.AutoSize := True;   
end;

procedure TFormContasRecParcelas.CbDupChange(Sender: tObject);
begin
    if DataMovimento.CdsRecParce.State in [DsBrowse] then
       DataMovimento.CdsRecParce.Edit;
end;

procedure TFormContasRecParcelas.cbFPC_ANTECIPACAO_CONCLUIDAClick(
  Sender: TObject);
begin
  if not (DataMovimento.CdsRecParce.State in dsEditModes) then
  begin
    DataMovimento.CdsRecParce.Edit;
    DataMovimento.CdsRecParceFPC_USU_CODIGO_ANTECIPACAO.AsString := DBInicio.Usuario.CODIGO;
    DataMovimento.CdsRecParceFPC_DATA_ANTECIPACAO.AsDateTime := Now;
  end;
  if (DataMovimento.CdsRecParce.State in dsEditModes) then
  begin
    DataMovimento.CdsRecParceFPC_USU_CODIGO_ANTECIPACAO.AsString := DBInicio.Usuario.CODIGO;
    DataMovimento.CdsRecParceFPC_DATA_ANTECIPACAO.AsDateTime := Now;
  end;
end;

procedure TFormContasRecParcelas.CbxCarteiraExit(Sender: tObject);
begin
    if (ActiveControl.Name = 'Bit_Cancelar') then
       exit;
    if (DbeBan_Codigo.Field.Text <> '') then
       begin
           if (CbxCarteira.Text = '') or (CbxCarteira.ItemIndex = 0) then
              begin
                  uteis.aviso('Informe uma Cobrança');
                  CbxCarteira.SetFocus;
              end;
       end;
end;

procedure TFormContasRecParcelas.CbxFormaClick(Sender: tObject);
begin
    if DataMovimento.CdsRecParce.State = DsBrowse then
       DataMovimento.CdsRecParce.Edit;
end;

procedure TFormContasRecParcelas.DBDataDevolucaoExit(Sender: tObject);
begin
    if DBDataDevolucao.text <> '  /  /    ' then
       begin
           if not TestaDataStr(DBDataDevolucao.Text) then
              DBDataDevolucao.setfocus;
       end;
end;

procedure TFormContasRecParcelas.CbxConfDevolucaoClick(Sender: tObject);
begin
    if (CbxConfDevolucao.ItemIndex = 0) then //sim
       begin
           DBDataDevolucao.Enabled := True;
           DBDataDevolucao.Date    := now;
       end
    else
       begin
           DBDataDevolucao.Enabled := False;
           DBDataDevolucao.Date    := 0;
       end;
end;

procedure TFormContasRecParcelas.CbxConfDevolucaoChange(Sender: tObject);
begin
    if DataMovimento.CdsRecParce.State in [DsBrowse] then
       DataMovimento.CdsRecParce.Edit;
    //
    if (CbxConfDevolucao.ItemIndex = 0) then
       begin
           wDevolucao := 'S';
           DBDataDevolucao.Enabled := True;
           DBDataDevolucao.Date    := now;
       end
    else
       begin
           wDevolucao := 'N';
           DBDataDevolucao.Enabled := False;
           DBDataDevolucao.Date    := 0;
       end;
    //
    if (DataMovimento.CdsRecParceFPC_COBTIPO.AsString = 'CH') then
       wTipoDoc := 'C'
    else
    if (DataMovimento.CdsRecParceFPC_COBTIPO.AsString = 'Cd') then
       wTipoDoc := 'D';
end;

procedure TFormContasRecParcelas.DbCBoxFpc_StatusClick(Sender: tObject);
begin
   if (DataMovimento.CdsRecParceFPC_EXCLUSAO.AsString = 'N') then
      begin
         if (DbCBoxFpc_Status.ItemIndex = 5) then
            begin
                DbeBan_Codigo.Enabled := False;
                CbxBco.Enabled        := False;
            end
         else
            begin
                DbeBan_Codigo.Enabled := True;
                CbxBco.Enabled        := True;
            end;
      end;
    pnAntecipacao.Visible := (DBInicio.GetParametroSistema('PMT_GER_AVANC_ANTECIP_DESC') = 'S') and (DbCBoxFpc_Status.Text = 'Liq.p/Descto');
end;

procedure TFormContasRecParcelas.DbCBoxFpc_StatusExit(Sender: tObject);
begin
   if (ActiveControl <> Nil) and
      (ActiveControl.Name <> 'Bit_Cancelar') then
      if (DbCBoxFpc_Status.ItemIndex = 5) then // Liq.p/Descto
         begin
            uteis.aviso(pchar('Status não pode ser selecionado manualmente.'+#13#10+
                        'Para utiliza-lo, execute procedimento de remessa.'+#13#10));
            DbCBoxFpc_Status.Text := '';
            DbCBoxFpc_Status.SetFocus;
            DbCBoxFpc_Status.SelectAll;
         end;
end;

procedure TFormContasRecParcelas.CbxTipoDocChange(Sender: tObject);
begin
   Habilita_Cheque;
end;

procedure TFormContasRecParcelas.Habilita_Cheque;
begin
   if (DataMovimento.CdsRecParceFPC_EXCLUSAO.AsString = 'N') then
      begin
         if (CbxTipoDoc.ItemIndex <> 4) then
            begin
               DBEdt_Bco_Cheque.Clear;
               DBEdt_Bco_Cheque.Enabled := False;
               DBEdt_Bco_Cheque.Color   := $00D7D7D7;
               CbBcoCheque.Text         := '';
               CbBcoCheque.Enabled      := False;
               CbBcoCheque.Color        := $00D7D7D7;
               DbeCheque.Clear;
               DbeCheque.Enabled        := False;
               DbeCheque.Color          := $00D7D7D7;
               DbeCheque_Dv.Clear;
               DbeCheque_Dv.Enabled     := False;
               DbeCheque_Dv.Color       := $00D7D7D7;
               DbeSacado_Cheque.Clear;
               DbeSacado_Cheque.Enabled := False;
               DbeSacado_Cheque.Color   := $00D7D7D7;
            end;
         if (CbxTipoDoc.ItemIndex = 4) then
            begin
               DBEdt_Bco_Cheque.Enabled := true;
               DBEdt_Bco_Cheque.Color   := clWindow;
               CbBcoCheque.Enabled      := true;
               CbBcoCheque.Color        := clWindow;
               DbeCheque.Enabled        := true;
               DbeCheque.Color          := clWindow;
               DbeCheque_Dv.Enabled     := true;
               DbeCheque_Dv.Color       := clWindow;
               DbeSacado_Cheque.Enabled := True;
               DbeSacado_Cheque.Color   := clWindow;
               if (DBEdt_Bco_Cheque.Text <> '') then
                  begin
                     if SqlBcoCheque.Locate('BCO_CODIGO',DBEdt_Bco_Cheque.Text,[]) then
                        CbBcoCheque.Text := SqlBcoChequeBCO_DESCRICAO.AsString
                     else
                        CbBcoCheque.Text := '';
                  end;
            end;
      end;
end;

procedure TFormContasRecParcelas.DbeChequeExit(Sender: tObject);
begin
   if (Trim(DbeCheque.Text) <> '') then
      begin
         DbeCheque.Text          := StrZero(Trim(DbeCheque.Text),10);
         if (Length(Trim(DataMovimento.CdsRecParceFPC_NUM_CHEQUE_DV.AsString))=0) then
            begin
               if DataMovimento.CdsRecParce.State = DsBrowse then
                  DataMovimento.CdsRecParce.Edit;
               DbeCheque_Dv.Field.Text := CalculaC3cheque(DbeCheque.Text);
            end;
      end
   else
      begin
         //beep;
         uteis.aviso('Informe o número do cheque !');
         DbeCheque.SetFocus;
         DbeCheque.SelectAll;
      end;

end;

procedure TFormContasRecParcelas.DBEdt_Bco_ChequeExit(Sender: tObject);
begin
   if (DBEdt_Bco_Cheque.Text <> '') then
      begin
         if (ActiveControl <> Nil) then
            begin
               if NOT (SqlBcoCheque.Locate('BCO_CODIGO',DBEdt_Bco_Cheque.Text,[])) then
                  begin
                     //beep;
                     uteis.aviso('Banco Informado não Localizado');
                     DBEdt_Bco_Cheque.SetFocus;
                     DBEdt_Bco_Cheque.SelectAll;
                  end
               else
                  begin
                     DBEdt_Bco_Cheque.Text := StrZero(DBEdt_Bco_Cheque.Text,4);
                     CbBcoCheque.Text := SqlBcoChequeBCO_DESCRICAO.AsString;
                  end;
            end;
      end;
end;

procedure TFormContasRecParcelas.CbBcoChequeClick(Sender: tObject);
begin
   BuscaBcoCheque;
end;

procedure TFormContasRecParcelas.BuscaBcoCheque;
begin
   if NOT (SqlBcoCheque.Locate('BCO_DESCRICAO',CbBcoCheque.Text,[]) ) then
      begin
         uteis.aviso('Banco não localizado !');
         CbBcoCheque.SetFocus;
         CbBcoCheque.SelectAll;
      end
   else
      begin
         if DataMovimento.CdsRecParce.State = DsBrowse then
            DataMovimento.CdsRecParce.Edit;
         DBEdt_Bco_Cheque.Text := StrZero(SqlBcoChequeBCO_CODIGO.AsString,4);
      end;
end;

procedure TFormContasRecParcelas.Desabilita_Objetos;
begin
   CbxBco.Enabled           := False;
   CbxCarteira.Enabled      := False;
   CbxTipoDoc.Enabled       := False;
   CbBcoCheque.Enabled      := False;
   //CbxForma.Enabled         := False;
   CbDup.Enabled            := False;
   CbRemessa.Enabled        := False;
   DbCBoxFpc_Status.Enabled := False;
   Bit_Excluir.Enabled      := False;
end;

procedure TFormContasRecParcelas.Habilita_Objetos;
begin
   CbxBco.Enabled           := True;
   CbxCarteira.Enabled      := True;
   CbxTipoDoc.Enabled       := True;
   CbBcoCheque.Enabled      := True;
   //CbxForma.Enabled         := True;
   CbDup.Enabled            := True;
   CbRemessa.Enabled        := True;
   DbCBoxFpc_Status.Enabled := True;
   Bit_Excluir.Enabled      := True;
end;

procedure TFormContasRecParcelas.Verifica_Se_Exclui_Registro_Principal( CONST
  sCodigo, sEmpresa: String);
begin
   try
     wSql1      := 'SELECT T1.FPC_EXCLUSAO FROM FAT_PC01 T1 ';
     wSeleciona := ' WHERE T1.FPC_EXCLUSAO = ''N'' AND T1.FAT_CODIGO = '''+sCodigo+''' AND T1.EMP_CODIGO = '''+sEmpresa+'''';
     //
     DataCadastros.sqlUpdate.Close;
     DataCadastros.SqlUpdate.sql.text :=wSql1+wSeleciona;
     DataCadastros.sqlUpdate.Open;
     if (DataCadastros.sqlUpdate.IsEmpty) then
        begin
           {Excluir parcelas do faturamentos}
           try
             wSql1      := 'UPDATE FAT0000 SET FAT_EXCLUSAO = ''S'',FAT_DATA_EXCLUSAO = '''+DataAmericana(DateToStr(now))+''',FAT_HORA_EXCLUSAO = '''+TimeToStr(Time)+''',FAT_MOTIVO_EXCLUSAO = '''+DBEdt_Motivo.Text+''',USU_CODIGO = '''+Edt_Usu_Cod.Text+''',USU_LOGIN = '''+Edt_Usu_Nome.Text+'''';
             wSeleciona := ' WHERE FAT_CODIGO = '''+sCodigo+''' AND EMP_CODIGO = '''+sEmpresa+'''';
             //
             DataCadastros.sqlUpdate.Close;
             DataCadastros.SqlUpdate.sql.text :=wSql1+wSeleciona;
             DataCAdastros.sqlUpdate.Execsql;
           except on E:EdatabaseError do
              uteis.erro  (Pchar('Erro ao excluir parcelas !'+e.Message));
           end;
        end;
     DataCadastros.sqlUpdate.Close;
   except
     on E:EDataBaseError do
       begin
          uteis.erro  (pchar('Erro ao Excluir o Registro Principal !'+#13#10+
                     'Mensagem erro: '+e.message));
       end;
   end;
end;

end.



