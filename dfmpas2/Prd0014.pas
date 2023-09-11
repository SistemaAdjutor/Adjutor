unit Prd0014;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ExtCtrls,  rxToolEdit, Mask,  rxCurrEdit, DB,
  Provider, SqlExpr,SqlClientDataSet, DBClient, DBLocal, DBLocalS, DBCtrls,
  SimpleDS, Data.DBXFirebird;

type
  TFrmAcertoEstoque = class(TForm)
    GrpCodigo: TGroupBox;
    Edt_Refer: TEdit;
    Edt_Descri: TEdit;
    Label1: TLabel;
    SpPesquisa: TSpeedButton;
    Pn_Botoes: TPanel;
    Bit_Cancelar: TBitBtn;
    Bit_Confirma: TBitBtn;
    Panel5: TPanel;
    LblMensagem: TLabel;
    ImgLog: TImage;
    Label2: TLabel;
    GroupDados: TGroupBox;
    Label9: TLabel;
    Label10: TLabel;
    CSaldoAcerto: TCurrencyEdit;
    DataMovimento: TDateEdit;
    SqlProduto: TSQLClientDataSet;
    SqlProdutoPRD_REFER: TStringField;
    SqlProdutoPRD_DESCRI: TStringField;
    lbl_almox: TLabel;
    CurrAlmox: TCurrencyEdit;
    Cb_Almox: TComboBox;
    SqlCdsAlmox: TSQLClientDataSet;
    GrpVariacao: TGroupBox;
    SqlProdutoPRD_DCVAR1: TStringField;
    SqlProdutoPRD_DCVAR2: TStringField;
    SqlProdutoPRD_DCVAR3: TStringField;
    SqlProdutoPRD_DCVAR4: TStringField;
    SqlProdutoPRD_DCVAR5: TStringField;
    SqlProdutoPRD_DCVAR6: TStringField;
    SqlProdutoPRD_DCVAR7: TStringField;
    SqlProdutoPRD_DCVAR8: TStringField;
    DsProduto: TDataSource;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    CurrVar1: TCurrencyEdit;
    CurrVar2: TCurrencyEdit;
    CurrVar3: TCurrencyEdit;
    CurrVar4: TCurrencyEdit;
    CurrVar5: TCurrencyEdit;
    CurrVar6: TCurrencyEdit;
    CurrVar7: TCurrencyEdit;
    CurrVar8: TCurrencyEdit;
    Label5: TLabel;
    CurrTotal: TCurrencyEdit;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    SqlProdutoPRD_ESTOQUE: TFMTBCdField;
    SqlProdutoPRD_ENTRADA: TFMTBCdField;
    SqlProdutoPRD_SAIDA: TFMTBCdField;
    SqlProdutoPRD_RESERVA: TFMTBCdField;
    SqlProdutoPRD_EMPENHO: TFMTBCdField;
    CurrSaldoInicial: TCurrencyEdit;
    CurrEntrada: TCurrencyEdit;
    CurrSaida: TCurrencyEdit;
    CurrReservado: TCurrencyEdit;
    CurrEmpenhado: TCurrencyEdit;
    Label13: TLabel;
    Panel10: TPanel;
    Panel11: TPanel;
    Panel12: TPanel;
    Panel13: TPanel;
    Panel14: TPanel;
    Panel15: TPanel;
    CurrSaldo: TCurrencyEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    Label6: TLabel;
    SqlProdutoPRD_VAR1: TFMTBCdField;
    SqlProdutoPRD_VAR2: TFMTBCdField;
    SqlProdutoPRD_VAR3: TFMTBCdField;
    SqlProdutoPRD_VAR4: TFMTBCdField;
    SqlProdutoPRD_VAR5: TFMTBCdField;
    SqlProdutoPRD_VAR6: TFMTBCdField;
    SqlProdutoPRD_VAR7: TFMTBCdField;
    SqlProdutoPRD_VAR8: TFMTBCdField;
    Bit_Sair: TBitBtn;
    Label7: TLabel;
    PanHora: TPanel;
    TimeHoraAcerto: TTimer;
    SqlProdutoPRD_RESERVA_VAR1: TFMTBCdField;
    SqlProdutoPRD_RESERVA_VAR2: TFMTBCdField;
    SqlProdutoPRD_RESERVA_VAR3: TFMTBCdField;
    SqlProdutoPRD_RESERVA_VAR4: TFMTBCdField;
    SqlProdutoPRD_RESERVA_VAR5: TFMTBCdField;
    SqlProdutoPRD_RESERVA_VAR6: TFMTBCdField;
    SqlProdutoPRD_RESERVA_VAR7: TFMTBCdField;
    SqlProdutoPRD_RESERVA_VAR8: TFMTBCdField;
    SqlAtualizaFlag: TSQLClientDataSet;
    SqlAtualizaFlagPES_REGISTRO: TIntegerField;
    SqlAtualizaFlagPRD_REFER: TStringField;
    SqlAtualizaFlagPES_TIPO: TStringField;
    SqlAtualizaFlagPES_QTDE: TFMTBCdField;
    SqlAtualizaFlagPES_NUMDOC: TStringField;
    SqlAtualizaFlagPES_TIPDOC: TStringField;
    SqlAtualizaFlagPES_DATA: TSQLTimeStampField;
    SqlAtualizaFlagEMP_CODIGO: TStringField;
    SqlAtualizaFlagPES_ORIGEM: TStringField;
    SqlAtualizaFlagPES_VALOR: TFMTBCdField;
    SqlAtualizaFlagPES_VAR1: TFMTBCdField;
    SqlAtualizaFlagPES_VAR2: TFMTBCdField;
    SqlAtualizaFlagPES_VAR3: TFMTBCdField;
    SqlAtualizaFlagPES_VAR4: TFMTBCdField;
    SqlAtualizaFlagPES_VAR5: TFMTBCdField;
    SqlAtualizaFlagPES_VAR6: TFMTBCdField;
    SqlAtualizaFlagPES_VAR7: TFMTBCdField;
    SqlAtualizaFlagPES_VAR8: TFMTBCdField;
    SqlAtualizaFlagAMX_CODIGO: TStringField;
    SqlAtualizaFlagFOR_CODIGO: TStringField;
    SqlAtualizaFlagPES_IPI: TFMTBCdField;
    SqlAtualizaFlagPES_FLAG_ACERTO: TStringField;
    SqlAtualizaFlagPES_FLAG_CONTA: TStringField;
    SqlAtualizaFlagPES_HORA: TTimeField;
    SqlAtualizaFlagPES_KARDEX_TIPO: TStringField;
    SqlAtualizaFlagPES_KARDEX_OBS: TStringField;
    SqlAtualizaFlagPED_CODIGO: TStringField;
    SqlCdsAlmoxAMX_CODIGO: TStringField;
    SqlCdsAlmoxAMX_DESCRI: TStringField;
    procedure Bit_SairClick(Sender: tObject);
    procedure SpPesquisaClick(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure Edt_ReferExit(Sender: tObject);
    procedure PreenchaCombo;
    procedure CurrAlmoxExit(Sender: tObject);
    procedure CurrVar1Exit(Sender: tObject);
    procedure CurrVar2Exit(Sender: tObject);
    procedure CurrVar3Exit(Sender: tObject);
    procedure CurrVar4Exit(Sender: tObject);
    procedure CurrVar5Exit(Sender: tObject);
    procedure CurrVar6Exit(Sender: tObject);
    procedure CurrVar7Exit(Sender: tObject);
    procedure CurrVar8Exit(Sender: tObject);
    procedure Bit_ConfirmaClick(Sender: tObject);
    procedure MudaCorCampos(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure Bit_CancelarClick(Sender: tObject);
    procedure Edt_ReferEnter(Sender: tObject);
    procedure Edt_ReferKeyPress(Sender: tObject; var Key: Char);
    procedure TimeHoraAcertoTimer(Sender: tObject);
    procedure FormCreate(Sender: tObject);
    procedure Cb_AlmoxClick(Sender: tObject);
    procedure Cb_AlmoxExit(Sender: tObject);

  private
WvARIACOES :STRING;
    {campos}
//    CampoEdit     :TEdit;
    CampoDBEdit   :TDBEdit;
    CampoData     :TDateEdit;
    CampoCombo    :TcomboBox;
    CampoCurrency :TCurrencyEdit;

    procedure SomaVariacao;
    procedure LimparObjetos;
    procedure HabilitaBotoes;
    procedure DesabilitaBotoes;
    procedure BuscaProduto;
    procedure Acerta_Estoque(pReferencia:String);
    procedure Lancar_Acerto_Kardex(pReferencia:String);
    procedure Atualiza_Flag_Conta(pReferencia,pData,pHora:String);
  public
    { Public declarations }
  end;

var
  FrmAcertoEstoque: TFrmAcertoEstoque;

implementation

uses Uteis, Prd0006, DataCad, RWFunc, Men0001, INICIODB;

{$R *.dfm}

procedure TFrmAcertoEstoque.Bit_SairClick(Sender: tObject);
begin
    Close;
end;

procedure TFrmAcertoEstoque.SpPesquisaClick(Sender: tObject);
begin
    FormProdutoGrid := TFormProdutoGrid.Create(Application);
    try
      FormProdutoGrid.ShowModal;
      IF FormProdutoGrid.MODALRESULT = MROK THEN
      begin
           Edt_Refer.Text := FormProdutoGrid.ReferRetorno;
           Edt_Descri.Text := FormProdutoGrid.DescricaoRetorno;
           Edt_Refer.SetFocus;
      end;

    finally
          FREEANDNIL(FormProdutoGrid);
          Screen.OnActiveControlChange   := MudaCorCampos;
          Edt_Refer.SetFocus;
    end;
end;

procedure TFrmAcertoEstoque.FormShow(Sender: tObject);
begin
    try
      Screen.OnActiveControlChange   := MudaCorCampos;
//      Left := 2;
//      Top  := 144;
      if (wVariacoes = 'S') then
         begin
             GrpVariacao.Visible := True;
             if (dbInicio.Empresa.wMultiAlmox = 'S') then
                begin
                    GrpCodigo.Height  := 73;
                    GroupDados.Top    := 122;
                    GrpVariacao.Top   := 210;
                    Pn_Botoes.Top     := 344;
                    lbl_almox.Visible := True;
                    CurrAlmox.Visible := True;
                    Cb_Almox.Visible  := True;
                    PreenchaCombo;
                end
             else
                begin
                    GrpCodigo.Height  := 49;
                    GroupDados.Top    := 98;
                    GrpVariacao.Top   := 185;
                    Pn_Botoes.Top     := 320;
                    lbl_almox.Visible := False;
                    CurrAlmox.Visible := False;
                    Cb_Almox.Visible  := False;
                end;
         end
      else
         begin
             GrpVariacao.Visible := False;
             if (dbInicio.Empresa.wMultiAlmox = 'S') then
                begin
                    GrpCodigo.Height  := 73;
                    GroupDados.Top    := 122;
                    Pn_Botoes.Top     := 212;
                    lbl_almox.Visible := True;
                    CurrAlmox.Visible := True;
                    Cb_Almox.Visible  := True;
                    PreenchaCombo;
                end
             else
                begin
                    GrpCodigo.Height  := 49;
                    GroupDados.Top    := 98;
                    Pn_Botoes.Top     := 190;
                    lbl_almox.Visible := False;
                    CurrAlmox.Visible := False;
                    Cb_Almox.Visible  := False;
                end;
         end;
      DesabilitaBotoes;
      FrmAcertoEstoque.AutoSize := True;
    except
       uteis.erro  (pchar('Erro ao abrir o formulário !'));
    end;
end;

procedure TFrmAcertoEstoque.Edt_ReferExit(Sender: tObject);
begin
    Edt_Refer.Color  := clWindow;
    BuscaProduto;
end;

procedure TFrmAcertoEstoque.PreenchaCombo;
begin
    try
      Screen.Cursor      := crHourGlass;
      Cb_Almox.Items.Clear;
      Cb_Almox.Items.Add('');
      SqlCdsAlmox.Active := True;
      SqlCdsAlmox.DisableControls;
      SqlCdsAlmox.First;
      while not SqlCdsAlmox.Eof do
       begin
           Cb_Almox.Items.Add(SqlCdsAlmoxAMX_DESCRI.AsString);
           SqlCdsAlmox.Next;
       end;
      Cb_Almox.ItemIndex := 0;
      CurrAlmox.Value    := 0;
      SqlCdsAlmox.EnableControls;
      Screen.Cursor      := crDefault;
    except on E:EdataBaseError do
       uteis.erro  (pchar('Erro ao Carregar a Combo(s) ! '+e.message));
    end;
end;

procedure TFrmAcertoEstoque.CurrAlmoxExit(Sender: tObject);
begin
    if (CurrAlmox.Value > 0) then
       begin
           if (SqlCdsAlmox.Locate('AMX_CODIGO',StrZero(CurrAlmox.Text,4),[])= True) then
              begin
                  Cb_Almox.Text := SqlCdsAlmoxAMX_DESCRI.AsString;
              end
           else
              begin
                  CurrAlmox.Value := 0;
                  Cb_Almox.SetFocus;
                  Cb_Almox.SelectAll;
              end;
       end;
end;

procedure TFrmAcertoEstoque.SomaVariacao;
Var
  wVar1,
  wVar2,
  wVar3,
  wVar4,
  wVar5,
  wVar6,
  wVar7,
  wVar8 : Currency;
begin
    wVar1 := CurrVar1.Value;
    wVar2 := CurrVar2.Value;
    wVar3 := CurrVar3.Value;
    wVar4 := CurrVar4.Value;
    wVar5 := CurrVar5.Value;
    wVar6 := CurrVar6.Value;
    wVar7 := CurrVar7.Value;
    wVar8 := CurrVar8.Value;
    CurrTotal.Value := (wVar1+wVar2+wVar3+wVar4+wVar5+wVar6+wVar7+wVar8);
end;

procedure TFrmAcertoEstoque.CurrVar1Exit(Sender: tObject);
begin
    if (CurrVar1.Value>0) then
       SomaVariacao;
end;

procedure TFrmAcertoEstoque.CurrVar2Exit(Sender: tObject);
begin
    if (CurrVar2.Value>0) then
       SomaVariacao;
end;

procedure TFrmAcertoEstoque.CurrVar3Exit(Sender: tObject);
begin
    if (CurrVar3.Value>0) then
       SomaVariacao;
end;

procedure TFrmAcertoEstoque.CurrVar4Exit(Sender: tObject);
begin
    if (CurrVar4.Value>0) then
       SomaVariacao;
end;

procedure TFrmAcertoEstoque.CurrVar5Exit(Sender: tObject);
begin
    if (CurrVar5.Value>0) then
       SomaVariacao;
end;

procedure TFrmAcertoEstoque.CurrVar6Exit(Sender: tObject);
begin
    if (CurrVar6.Value>0) then
       SomaVariacao;
end;

procedure TFrmAcertoEstoque.CurrVar7Exit(Sender: tObject);
begin
    if (CurrVar7.Value>0) then
       SomaVariacao;
end;

procedure TFrmAcertoEstoque.CurrVar8Exit(Sender: tObject);
begin
    if (CurrVar8.Value>0) then
       SomaVariacao;
end;

procedure TFrmAcertoEstoque.Bit_ConfirmaClick(Sender: tObject);
begin
    try
      if (wVariacoes = 'S') then
         begin
            if (CSaldoAcerto.Value <> CurrTotal.Value) then
               begin
                  uteis.aviso('A quantidade das variações é menor/maior, que o Saldo Acerto !');
                  CurrVar1.SetFocus;
                  Exit;
               end;
         end;
//      if ((CurrReservado.Value>0) or (CurrEmpenhado.Value > 0)) then
//         begin
//             uteis.aviso('Impossível fazer acerto. Referência contém Reserva(s) ou Empenho(s) !');
//         end
//      else
//         begin
  if dbInicio.Empresa.wMultiAlmox <> 'S' then
  begin
    if (CSaldoAcerto.Value = 0) and (CurrSaldo.Value > 0) then
       begin
            if (uteis.confirmacao ( ('Referência contém saldo em estoque !'+#13#10+'Deseja zerar o estoque ?'))=mrYes) then
               begin
                  Acerta_Estoque(Edt_Refer.Text);
                  Lancar_Acerto_Kardex(Edt_Refer.Text);
                  Atualiza_Flag_Conta(Edt_Refer.Text,DataMovimento.Text,PanHora.Caption);
               end;
         end
      else
         begin
            if (CSaldoAcerto.Value >= 0) then
               begin
                  Acerta_Estoque(Edt_Refer.Text);
                  Lancar_Acerto_Kardex(Edt_Refer.Text);
                  Atualiza_Flag_Conta(Edt_Refer.Text,DataMovimento.Text,PanHora.Caption);
               end;
         end;
  end else
  begin
    if (CSaldoAcerto.Value = 0) and (CurrSaldo.Value > 0) then
       begin
            if (uteis.confirmacao ( ('Referência contém saldo em estoque !'+#13#10+'Deseja zerar o estoque ?'))=mrYes) then
               begin
                  Atualiza_Flag_Conta(Edt_Refer.Text,DataMovimento.Text,PanHora.Caption);
                  Acerta_Estoque(Edt_Refer.Text);
                  Lancar_Acerto_Kardex(Edt_Refer.Text);
               end;
         end
      else
         begin
            if (CSaldoAcerto.Value >= 0) then
               begin
                  Atualiza_Flag_Conta(Edt_Refer.Text,DataMovimento.Text,PanHora.Caption);
                  Acerta_Estoque(Edt_Refer.Text);
                  Lancar_Acerto_Kardex(Edt_Refer.Text);
               end;
         end;
  end;

//         end;
      uteis.aviso('Acerto manual efetuado com sucesso!');
      LimparObjetos;
      DesabilitaBotoes;
      Edt_Refer.SetFocus;
      SqlProduto.close;

    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao atualizar o Estoque ! '+e.message));
    end;
end;

procedure TFrmAcertoEstoque.LimparObjetos;
begin
    Edt_Refer.Text         := '';
    Edt_Descri.Text        := '';
    CurrSaldoInicial.Value := 0;
    CurrEntrada.Value      := 0;
    CurrSaida.Value        := 0;
    CurrReservado.Value    := 0;
    CurrEmpenhado.Value    := 0;
    CurrSaldo.Value        := 0;
    CSaldoAcerto.Value     := 0;
    CurrTotal.Value        := 0;
    DataMovimento.Date     := 0;
    if (wVariacoes = 'S') then
       begin
           CurrVar1.Value  := 0;
           CurrVar2.Value  := 0;
           CurrVar3.Value  := 0;
           CurrVar4.Value  := 0;
           CurrVar5.Value  := 0;
           CurrVar6.Value  := 0;
           CurrVar7.Value  := 0;
           CurrVar8.Value  := 0;
       end;
    if (dbInicio.Empresa.wMultiAlmox = 'S') then
       begin
           CurrAlmox.Value := 0;
           Cb_Almox.Text   := '';
       end;
end;

procedure TFrmAcertoEstoque.MudaCorCampos(Sender: tObject);
begin
  {cor dos campos TDBEdit}
   if Assigned(CampoDbEdit) then
      begin
         CampoDbEdit.color := clWindow;
      end;
   if ActiveControl is TDBEdit then
      begin
         if (TDBEdit(ActiveControl).color = $00D7D7D7) or (TDBEdit(ActiveControl).color = $00FCFCE9) then
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
  {CampoEdit :TEdit
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
  {CampoData     :TDateEdit}
   if Assigned(CampoData) then
      begin
         CampoData.color := clWindow;
      end;
   if ActiveControl is TDateEdit then
      begin
         TDateEdit(ActiveControl).color := $0080FFFF;
         CampoData := TDateEdit(ActiveControl);
      end
   else
      begin
         CampoData := nil;
      end;
  {CampoCombo:TComboBox}
   if Assigned(CampoCombo) then
      begin
         CampoCombo.color := clWindow;
      end;
   if ActiveControl is TComboBox then
      begin
         TComboBox(ActiveControl).color := $0080FFFF;
         CampoCombo := TComboBox(ActiveControl);
      end
   else
      begin
         CampoCombo := nil;
      end;
   {Currency}
   if Assigned(CampoCurrency) then
      begin
         CampoCurrency.color := clWindow;
      end;
   if ActiveControl is TCurrencyEdit then
      begin
         if TCurrencyEdit(ActiveControl).color = $00D7D7D7 then
            begin
               exit;
            end;
         TCurrencyEdit(ActiveControl).color := $0080FFFF;
         CampoCurrency := TCurrencyEdit(ActiveControl);
      end
   else
      begin
         CampoCurrency := nil;
      end;
end;

procedure TFrmAcertoEstoque.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
    Screen.OnActiveControlChange := NIL;
    TimeHoraAcerto.Enabled       := False;
end;

procedure TFrmAcertoEstoque.DesabilitaBotoes;
begin
    Edt_Refer.Color      := clWindow;
    Edt_Refer.ReadOnly   := False;
    Edt_Refer.TabStop    := True;
    GroupDados.Enabled   := False;
    if (wVariacoes = 'S') then
       GrpVariacao.Enabled := False;
    Bit_Confirma.Enabled := False;
    Bit_Cancelar.Enabled := False;
    Bit_Sair.Enabled     := True;
end;

procedure TFrmAcertoEstoque.HabilitaBotoes;
begin
    GroupDados.Enabled   := True;
    if (wVariacoes = 'S') then
       GrpVariacao.Enabled := True;
    Bit_Confirma.Enabled := True;
    Bit_Cancelar.Enabled := True;
    Bit_Sair.Enabled     := False;
end;

procedure TFrmAcertoEstoque.Bit_CancelarClick(Sender: tObject);
begin
    SqlProduto.Close;
    LimparObjetos;
    DesabilitaBotoes;
    Edt_Refer.SetFocus;
end;

procedure TFrmAcertoEstoque.Edt_ReferEnter(Sender: tObject);
begin
    Edt_Refer.SelectAll;
    Edt_Refer.Color := $0080FFFF;
end;

procedure TFrmAcertoEstoque.BuscaProduto;
begin
    if (Edt_Refer.Text <> '') then
       begin
           wSql1      := 'Select P1.PRD_REFER,P1.PRD_DESCRI,P1.PRD_ESTOQUE,P1.PRD_ENTRADA,P1.PRD_SAIDA,P1.PRD_RESERVA,P1.PRD_EMPENHO,';
           wSql2      := 'P1.PRD_DCVAR1,P1.PRD_DCVAR2,P1.PRD_DCVAR3,P1.PRD_DCVAR4,P1.PRD_DCVAR5,P1.PRD_DCVAR6,P1.PRD_DCVAR7,P1.PRD_DCVAR8,';
           wSql3      := 'P1.PRD_VAR1,P1.PRD_VAR2,P1.PRD_VAR3,P1.PRD_VAR4,P1.PRD_VAR5,P1.PRD_VAR6,P1.PRD_VAR7,P1.PRD_VAR8,';
           wSql4      := 'P1.PRD_RESERVA_VAR1,P1.PRD_RESERVA_VAR2,P1.PRD_RESERVA_VAR3,P1.PRD_RESERVA_VAR4,P1.PRD_RESERVA_VAR5,P1.PRD_RESERVA_VAR6,P1.PRD_RESERVA_VAR7,P1.PRD_RESERVA_VAR8 from PRD0000 P1 ';
           wSeleciona := 'where P1.PRD_REFER = '''+Edt_Refer.Text+'''';
           wOrdem     := 'P1.PRD_REFER';
           //
           SqlProduto.Close;
           SqlProduto.CommandText := SQLDEF('PRODUTOS',wSql1+wSql2+wSql3+wSql4,wSeleciona,wOrdem,'P1.');
           SqlProduto.Open;
           if (SqlProduto.IsEmpty) then
              begin
                  uteis.aviso('Referência não encontrado !');
                  Edt_Refer.SetFocus;
                  Edt_Refer.SelectAll;
              end
           else
              begin
                  HabilitaBotoes;
                  Edt_Refer.Color        := $00D7D7D7;
                  Edt_Refer.TabStop      := False;
                  Edt_Refer.ReadOnly     := True;
                  Edt_Descri.Text        := SqlProdutoPRD_DESCRI.AsString;
                  CurrSaldoInicial.Value := SqlProdutoPRD_ESTOQUE.AsCurrency;
                  CurrEntrada.Value      := SqlProdutoPRD_ENTRADA.AsCurrency;
                  CurrSaida.Value        := SqlProdutoPRD_SAIDA.AsCurrency;
                  CurrReservado.Value    := SqlProdutoPRD_RESERVA.AsCurrency;
                  CurrEmpenhado.Value    := SqlProdutoPRD_EMPENHO.AsCurrency;
                  CurrSaldo.Value        := ((CurrSaldoInicial.Value+CurrEntrada.Value)-(CurrSaida.Value+CurrReservado.Value+CurrEmpenhado.Value));
                  //
                  if (wVariacoes = 'S') then
                     begin
                         DBEdit1.Enabled := iif(SqlProdutoPRD_DCVAR1.IsNull,False,True);
                         DBEdit2.Enabled := iif(SqlProdutoPRD_DCVAR2.IsNull,False,True);
                         DBEdit3.Enabled := iif(SqlProdutoPRD_DCVAR3.IsNull,False,True);
                         DBEdit4.Enabled := iif(SqlProdutoPRD_DCVAR4.IsNull,False,True);
                         DBEdit5.Enabled := iif(SqlProdutoPRD_DCVAR5.IsNull,False,True);
                         DBEdit6.Enabled := iif(SqlProdutoPRD_DCVAR6.IsNull,False,True);
                         DBEdit7.Enabled := iif(SqlProdutoPRD_DCVAR7.IsNull,False,True);
                         DBEdit8.Enabled := iif(SqlProdutoPRD_DCVAR8.IsNull,False,True);
                         //
                         CurrVar1.Enabled := iif(SqlProdutoPRD_DCVAR1.IsNull,False,True);
                         CurrVar2.Enabled := iif(SqlProdutoPRD_DCVAR2.IsNull,False,True);
                         CurrVar3.Enabled := iif(SqlProdutoPRD_DCVAR3.IsNull,False,True);
                         CurrVar4.Enabled := iif(SqlProdutoPRD_DCVAR4.IsNull,False,True);
                         CurrVar5.Enabled := iif(SqlProdutoPRD_DCVAR5.IsNull,False,True);
                         CurrVar6.Enabled := iif(SqlProdutoPRD_DCVAR6.IsNull,False,True);
                         CurrVar7.Enabled := iif(SqlProdutoPRD_DCVAR7.IsNull,False,True);
                         CurrVar8.Enabled := iif(SqlProdutoPRD_DCVAR8.IsNull,False,True);
                     end;
                  //
                  DataMovimento.Date := now;
                  if (dbInicio.Empresa.wMultiAlmox = 'S') then
                     CurrAlmox.SetFocus
                  else
                     CSaldoAcerto.SetFocus;
              end;
       end;
end;

procedure TFrmAcertoEstoque.Edt_ReferKeyPress(Sender: tObject;
  var Key: Char);
begin
    if (Key = #13) then
       begin
           BuscaProduto;
           Key := #0;
       end;
end;

procedure TFrmAcertoEstoque.Acerta_Estoque(pReferencia: String);
var QTDEE, QTDES : Currency;
begin
  try
  // se não eh com multi almox
  if dbInicio.Empresa.wMultiAlmox <> 'S' then
  begin

      if (wVariacoes = 'S') then
         begin
             wSql1 := 'Update PRD0000 SET '+
                      'PRD_VAR1    = '+ValorAmericano(FloatToStr(CurrVar1.Value - SqlProdutoPRD_RESERVA_VAR1.AsCurrency))+','+
                      'PRD_VAR2    = '+ValorAmericano(FloatToStr(CurrVar2.Value - SqlProdutoPRD_RESERVA_VAR2.AsCurrency))+','+
                      'PRD_VAR3    = '+ValorAmericano(FloatToStr(CurrVar3.Value - SqlProdutoPRD_RESERVA_VAR3.AsCurrency))+','+
                      'PRD_VAR4    = '+ValorAmericano(FloatToStr(CurrVar4.Value - SqlProdutoPRD_RESERVA_VAR4.AsCurrency))+','+
                      'PRD_VAR5    = '+ValorAmericano(FloatToStr(CurrVar5.Value - SqlProdutoPRD_RESERVA_VAR5.AsCurrency))+','+
                      'PRD_VAR6    = '+ValorAmericano(FloatToStr(CurrVar6.Value - SqlProdutoPRD_RESERVA_VAR6.AsCurrency))+','+
                      'PRD_VAR7    = '+ValorAmericano(FloatToStr(CurrVar7.Value - SqlProdutoPRD_RESERVA_VAR7.AsCurrency))+','+
                      'PRD_VAR8    = '+ValorAmericano(FloatToStr(CurrVar8.Value - SqlProdutoPRD_RESERVA_VAR8.AsCurrency))+','+
                      'PRD_ENTRADA = 0,'+
                      'PRD_ESTOQUE = '+ValorAmericano(CSaldoAcerto.Text)+','+
                      'PRD_SAIDA   = 0';
         end
      else
         begin
             wSql1 := 'Update PRD0000 SET '+
                      'PRD_ESTOQUE = '+ValorAmericano(CSaldoAcerto.Text)+','+
                      'PRD_ENTRADA = 0,'+  ///ValorAmericano(CSaldoAcerto.Text)+','+
                    //  'PRD_ENTRADA = '+ValorAmericano(CSaldoAcerto.Text)+','+
                      'PRD_SAIDA   = 0';
         end;
      //

      DataCadastros.sqlUpdate.Close;
      DataCadastros.SqlUpdate.sql.text :=SQLDEF('PRODUTOS',wSql1,'where PRD_REFER = '''+pReferencia+'''','','');
      DataCadastros.sqlUpdate.Execsql;

  end else
  // eh com multi-almoxarifado
  begin
    DataCadastros.sqlUpdate.Close;
    DataCadastros.SqlUpdate.sql.text :='select * from PRD_ENSA where PES_FLAG_CONTA = ''S'' AND PRD_REFER = '''+pReferencia+'''';
    DataCadastros.sqlUpdate.Open;
    DataCadastros.sqlUpdate.First;
    while not DataCadastros.sqlUpdate.Eof do
    begin
      // Entrada ou Balanço é positivo
      if (DataCadastros.sqlUpdate.FieldByName('PES_TIPO').AsString = 'E') or (DataCadastros.sqlUpdate.FieldByName('PES_TIPO').AsString = 'B')then
         QTDEE := QTDEE + DataCadastros.sqlUpdate.FieldByName('PES_QTDE').AsCurrency;
      if DataCadastros.sqlUpdate.FieldByName('PES_TIPO').AsString = 'S' then
         QTDES := QTDES + DataCadastros.sqlUpdate.FieldByName('PES_QTDE').AsCurrency;
      DataCadastros.sqlUpdate.next;
    end;
    DataCadastros.sqlUpdate.Close;
    DataCadastros.SqlUpdate.sql.text :='Update PRD0000 SET PRD_ENTRADA = '''+CurrToStr(QTDEE + CSaldoAcerto.Value)+''', PRD_SAIDA = '''+CurrToStr(QTDES)+''' where PRD_REFER = '''+pReferencia+'''';
    DataCadastros.sqlUpdate.Execsql;
  end;

    except on E:EdataBaseError do
       uteis.erro  (pchar('Erro ao fazer o acerto do estoque !'+e.message));
    end;
end;

procedure TFrmAcertoEstoque.Lancar_Acerto_Kardex(pReferencia: String);
Var
wTipoDoc,
wOrigem,
wData,
wAlmox,
wkardextipo,
wTipo :String;
begin
    try
      wTipoDoc := 'AC';
      wOrigem  := 'INICIAL';
      wData    := DataAmericana(DataMovimento.Text);
      wTipo    :=  'B'; // Balanço        {'E';     ENTRADA }
      wkardextipo := 'I'; // ACERTO INICIAL
      wAlmox   := StrZero(CurrAlmox.Text,4);

      if (dbInicio.Empresa.wMultiAlmox = 'S') then
         wSeleciona := 'Where E1.PRD_REFER = '''+pReferencia+''' AND E1.PES_DATA = '''+wData+''' AND E1.PES_TIPO = '''+wTipo+''' AND E1.PES_TIPDOC = '''+wTipoDoc+''' AND E1.PES_ORIGEM = '''+wOrigem+''' AND E1.PES_KARDEX_TIPO = '''+wKardextipo+''' AND E1.AMX_CODIGO = '''+wAlmox+''''
      else
         wSeleciona := 'Where E1.PRD_REFER = '''+pReferencia+''' AND E1.PES_DATA = '''+wData+''' AND E1.PES_TIPO = '''+wTipo+''' AND E1.PES_TIPDOC = '''+wTipoDoc+''' AND E1.PES_ORIGEM = '''+wOrigem+''' AND E1.PES_KARDEX_TIPO = '''+wKardextipo+'''';
      //
      DataCadastros.CdsPrdManut.Close;
      DataCadastros.CdsPrdManut.CommandText := SQLDEF('PRODUTOS','SELECT E1.*,A1.AMX_DESCRI FROM PRD_ENSA E1 LEFT JOIN ALMOX0000 A1 ON (A1.AMX_CODIGO = E1.AMX_CODIGO) ',wSeleciona,'E1.PES_DATA DESC,E1.PRD_REFER','E1.');
      DataCadastros.CdsPrdManut.Open;
      if (DataCadastros.CdsPrdManut.IsEmpty) then
         DataCadastros.CdsPrdManut.Insert
      else
         DataCadastros.CdsPrdManut.Edit;
      //
      DataCadastros.CdsPrdManutPRD_REFER.AsString      := pReferencia;
      DataCadastros.CdsPrdManutPES_DATA.AsString       := DataMovimento.Text;
      DataCadastros.CdsPrdManutPES_TIPDOC.AsString     := wTipoDoc;
      DataCadastros.CdsPrdManutEMP_CODIGO.AsString     := dbInicio.Empresa.EMP_CODIGO;
      DataCadastros.CdsPrdManutPES_ORIGEM.AsString     := wOrigem;
      DataCadastros.CdsPrdManutPES_TIPO.AsString       := wTipo;   // E = Entrada S = Saída  B = BALANÇO
      DataCadastros.CdsPrdManutPES_QTDE.AsCurrency     := (CSaldoAcerto.Value - SqlProdutoPRD_RESERVA.AsCurrency);
      DataCadastros.CdsPrdManutPES_FLAG_ACERTO.AsString := 'S';
      DataCadastros.CdsPrdManutPES_FLAG_CONTA.AsString  := 'S';
      DataCadastros.CdsPrdManutPES_KARDEX_OBS.AsString  := 'ESTOQUE INICIAL - ACERTO DO ESTOQUE - BALANÇO MANUAL';
      DataCadastros.CdsPrdManutPES_HORA.AsString        := PanHora.Caption;
      DataCadastros.CdsPrdManutPES_KARDEX_TIPO.AsString := 'I';
      DataCadastros.CdsPrdManutUSU_CODIGO.Value         := strtoInt(dbInicio.Usuario.Codigo);
      DataCadastros.CdsPrdManutUSU_LOGIN.AsString       := dbInicio.Usuario.nome;
      if (wVariacoes = 'S') then
         begin
             DataCadastros.CdsPrdManutPES_VAR1.AsCurrency := (CurrVar1.Value - SqlProdutoPRD_RESERVA_VAR1.AsCurrency);
             DataCadastros.CdsPrdManutPES_VAR2.AsCurrency := (CurrVar2.Value - SqlProdutoPRD_RESERVA_VAR2.AsCurrency);
             DataCadastros.CdsPrdManutPES_VAR3.AsCurrency := (CurrVar3.Value - SqlProdutoPRD_RESERVA_VAR3.AsCurrency);
             DataCadastros.CdsPrdManutPES_VAR4.AsCurrency := (CurrVar4.Value - SqlProdutoPRD_RESERVA_VAR4.AsCurrency);
             DataCadastros.CdsPrdManutPES_VAR5.AsCurrency := (CurrVar5.Value - SqlProdutoPRD_RESERVA_VAR5.AsCurrency);
             DataCadastros.CdsPrdManutPES_VAR6.AsCurrency := (CurrVar6.Value - SqlProdutoPRD_RESERVA_VAR6.AsCurrency);
             DataCadastros.CdsPrdManutPES_VAR7.AsCurrency := (CurrVar7.Value - SqlProdutoPRD_RESERVA_VAR7.AsCurrency);
             DataCadastros.CdsPrdManutPES_VAR8.AsCurrency := (CurrVar8.Value - SqlProdutoPRD_RESERVA_VAR8.AsCurrency);
         end;
      if (dbInicio.Empresa.wMultiAlmox = 'S') then
         if (CurrAlmox.Value <> 9999) then
            DataCadastros.CdsPrdManutAMX_CODIGO.AsString := wAlmox;
      //
      DataCadastros.CdsPrdManut.ApplyUpdates(0);
      DataCadastros.CdsPrdManut.Close;
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao inserir lançamento no Kardex ! '+e.message));
    end;
end;

procedure TFrmAcertoEstoque.Atualiza_Flag_Conta(pReferencia,pData,pHora: String);
   var
      wData:TDateTime;
      wTime:TTime;
      iNumeroReg:Integer;
begin
   try
      SqlAtualizaFlag.Close;
      SqlAtualizaFlag.CommandText := 'SELECT T1.* FROM PRD_ENSA T1 WHERE (T1.PES_DATA <= '''+DataAmericana(pData)+''' or T1.PES_DATA IS NULL ) AND T1.PRD_REFER = '''+pReferencia+'''';
      SqlAtualizaFlag.Open;
      SqlAtualizaFlag.First;
      while (not SqlAtualizaFlag.Eof) do
         begin
            iNumeroReg := 0;
            wData      := StrToDate(pData);
            wTime      := StrToTime(pHora);
            if (wData > SqlAtualizaFlagPES_DATA.AsDateTime) then
               begin
                  iNumeroReg := SqlAtualizaFlagPES_REGISTRO.AsInteger;
                  wSql1      := 'Update PRD_ENSA set PES_FLAG_CONTA = ''N''';
                  if CurrAlmox.Value > 0 then
                  wSeleciona := 'where PES_REGISTRO = '+IntToStr(iNumeroReg)+' AND AMX_CODIGO = '+CurrAlmox.Text+''
                  else
                  wSeleciona := 'where PES_REGISTRO = '+IntToStr(iNumeroReg)+'';
                  DataCadastros.sqlUpdate.Close;
                  DataCadastros.SqlUpdate.sql.text :=SQLDEF('PRODUTOS',wSql1,wSeleciona,'','');
                  DataCadastros.sqlUpdate.Execsql;
               end
            else
               begin
                  if (wTime > SqlAtualizaFlagPES_HORA.AsDateTime) then
                     begin
                        iNumeroReg := SqlAtualizaFlagPES_REGISTRO.AsInteger;
                        wSql1      := 'Update PRD_ENSA set PES_FLAG_CONTA = ''N''';
                        if CurrAlmox.Value > 0 then
                        wSeleciona := 'where PES_REGISTRO = '+IntToStr(iNumeroReg)+' AND AMX_CODIGO = '+CurrAlmox.Text+''
                        else
                        wSeleciona := 'where PES_REGISTRO = '+IntToStr(iNumeroReg)+'';
                        DataCadastros.sqlUpdate.Close;
                        DataCadastros.SqlUpdate.sql.text :=SQLDEF('PRODUTOS',wSql1,wSeleciona,'','');
                        DataCadastros.sqlUpdate.Execsql;
                     end;
               end;
            SqlAtualizaFlag.Next;
         end;
      SqlAtualizaFlag.Close;
   except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao atualizar flag de acerto ! '+e.message))
    end;
   {

    try
      wSql1 := 'Update PRD_ENSA set PES_FLAG_CONTA = ''N''';
      //
      wSeleciona := 'where PRD_REFER = '''+pReferencia+'''and PES_DATA <= '''+DataAmericana(pData)+''' and PES_HORA < '''+pHORA+'''';
      //
      DataCadastros.sqlUpdate.Close;
      DataCadastros.SqlUpdate.sql.text :=SQLDEF('PRODUTOS',wSql1,wSeleciona,'','');
      DataCadastros.sqlUpdate.Execsql;
      //
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao atualizar flag de acerto ! '+e.message))
    end;}
end;

procedure TFrmAcertoEstoque.TimeHoraAcertoTimer(Sender: tObject);
begin
    PanHora.Caption := TimeToSTr(Time);
end;

procedure TFrmAcertoEstoque.FormCreate(Sender: tObject);
begin
   TimeHoraAcerto.Enabled := True;
   WvARIACOES := DBINICIO.GETPARAMETROSISTEMA( 'PMT_VARIACOES');
end;

procedure TFrmAcertoEstoque.Cb_AlmoxClick(Sender: tObject);
begin
    if (SqlCdsAlmox.Locate('AMX_DESCRI',Cb_Almox.Text,[])=True) then
       begin
           CurrAlmox.Value := SqlCdsAlmoxAMX_CODIGO.AsInteger;
       end;
end;

procedure TFrmAcertoEstoque.Cb_AlmoxExit(Sender: tObject);
begin
    if (SqlCdsAlmox.Locate('AMX_DESCRI',Cb_Almox.Text,[])=True) then
       begin
           CurrAlmox.Value := SqlCdsAlmoxAMX_CODIGO.AsInteger;
       end;
end;

end.
