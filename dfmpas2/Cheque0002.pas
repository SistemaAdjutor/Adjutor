unit Cheque0002;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SqlExpr,SqlClientDataSet, Provider, DB, DBClient, DBLocal, DBLocalS, StdCtrls,
  Mask,  rxToolEdit,  rxCurrEdit, Buttons, ImgList, ExtCtrls, Grids, DBGrids,
  Data.DBXFirebird, SimpleDS, JvExMask, JvToolEdit;

type
  TFrmChequeConsulta = class(TForm)
    GrpCheques: TGroupBox;
    DBGridCheques: TDBGrid;
    Panel5: TPanel;
    Panel6: TPanel;
    Bit_Alterar: TBitBtn;
    Bit_Gravar: TBitBtn;
    Bit_Cancelar: TBitBtn;
    Bit_Sair: TBitBtn;
    GrpDadosCheque: TGroupBox;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label51: TLabel;
    Label79: TLabel;
    Label9: TLabel;
    Label5: TLabel;
    Label10: TLabel;
    Grp_Liquidar: TGroupBox;
    Rad_Sim: TRadioButton;
    Rad_Nao: TRadioButton;
    CValor: TCurrencyEdit;
    Edt_Bco: TEdit;
    CCodBanco: TCurrencyEdit;
    cNumCheque: TCurrencyEdit;
    Cdigito: TCurrencyEdit;
    Edt_Obs: TEdit;
    cCodFavorecido: TCurrencyEdit;
    Edt_Favorecido: TEdit;
    Panel1: TPanel;
    Grp01: TGroupBox;
    Label2: TLabel;
    CCodConta: TCurrencyEdit;
    CbBanco: TComboBox;
    SqlCdsCheque: TSQLClientDataSet;
    SqlCdsChequeCHQ_REGISTRO: TIntegerField;
    SqlCdsChequeEMP_CODIGO: TStringField;
    SqlCdsChequeBAN_CODIGO: TStringField;
    SqlCdsChequeCHQ_EMISSAO: TDateField;
    SqlCdsChequeCHQ_BOMPARA: TDateField;
    SqlCdsChequeCHQ_NUMERO: TStringField;
    SqlCdsChequeCHQ_NUMERO_DV: TStringField;
    SqlCdsChequeCHQ_VALOR: TFMTBCdField;
    SqlCdsChequeCHQ_SITUACAO: TStringField;
    SqlCdsChequeCHQ_IMP: TStringField;
    SqlCdsChequeCHQ_TIPO_FAVORECIDO: TStringField;
    SqlCdsChequeCHQ_CODIGO_FAVORECIDO: TStringField;
    SqlCdsChequeCHQ_NOME_FAVORECIDO: TStringField;
    SqlCdsChequeCHQ_LIQUIDAR: TStringField;
    SqlCdsChequeUSU_CODIGO: TIntegerField;
    SqlCdsChequeUSU_LOGIN: TStringField;
    SqlCdsChequeBAN_APELIDO: TStringField;
    SqlCdsChequeCC_NUM_CHEQUE: TStringField;
    SqlCdsChequeCHQ_PAG_REGISTRO: TIntegerField;
    SqlCdsChequeCHQ_OBSERVACAO: TStringField;
    Dscheque: TDataSource;
    SqlCdsContas: TSQLClientDataSet;
    SqlCdsContasBAN_CODIGO: TStringField;
    CBancoCod: TCurrencyEdit;
    Edt_Banco: TEdit;
    DtEmissao: TEdit;
    DtBomPara: TEdit;
    Cb_Imp: TComboBox;
    Label6: TLabel;
    Label11: TLabel;
    CbSituacao: TComboBox;
    SqlCdsChequeBAN_COD_APELIDO: TIntegerField;
    SqlCdsChequeBCO_DESCRICAO: TStringField;
    Grp_Filtrar: TGroupBox;
    Pan_Data: TPanel;
    Label15: TLabel;
    Label16: TLabel;
    Grp02: TGroupBox;
    Rad_Emissao: TRadioButton;
    Rad_NCheque: TRadioButton;
    Rad_Favorecido: TRadioButton;
    Pan_NCheque: TPanel;
    Label12: TLabel;
    cNCheque: TCurrencyEdit;
    Label14: TLabel;
    CdvCheque: TCurrencyEdit;
    Pan_Favorecido: TPanel;
    Label13: TLabel;
    Edt_Nome_Favorecido: TEdit;
    SqlCdsChequeCHQ_EXCLUSAO: TStringField;
    SqlCdsChequeCHQ_MOTIVO_EXCLUSAO: TStringField;
    SqlCdsChequeCHQ_DATA_EXCLUSAO: TDateField;
    SqlCdsChequeCHQ_HORA_EXCLUSAO: TTimeField;
    SqlCdsChequeUSU_CODIGO_EXCLUSAO: TIntegerField;
    SqlCdsChequeUSU_LOGIN_EXCLUSAO: TStringField;
    Panel2: TPanel;
    Label17: TLabel;
    SqlCdsContasBAN_APELIDO: TStringField;
    Bit_Relatorio: TBitBtn;
    BitPesquisar: TBitBtn;
    SqlCdsChequeCC_EXCLUSAO: TStringField;
    SqlCdsChequeCC_SITUACAO: TStringField;
    GrpExclusao: TGroupBox;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label19: TLabel;
    Edt_Data_Exclusao: TEdit;
    CCodUsu_Exclusao: TCurrencyEdit;
    Edt_Login_Exclusao: TEdit;
    Edt_Motivo_Exclusao: TEdit;
    Edt_Hora_Exclusao: TEdit;
    Panel4: TPanel;
    Label18: TLabel;
    DataI: TJvDateEdit;
    DataF: TJvDateEdit;
    procedure BitBtn2Click(Sender: tObject);
    procedure SqlCdsChequeCalcFields(DataSet: TDataSet);
    procedure SqlCdsChequeAfterScroll(DataSet: TDataSet);
    procedure FormShow(Sender: tObject);
    procedure Bit_SairClick(Sender: tObject);
    procedure CCodContaExit(Sender: tObject);
    procedure CbBancoClick(Sender: tObject);
    procedure Rad_EmissaoClick(Sender: tObject);
    procedure DataIExit(Sender: tObject);
    procedure DataFExit(Sender: tObject);
    procedure BitPesquisarClick(Sender: tObject);
    procedure Bit_AlterarClick(Sender: tObject);
    procedure Bit_CancelarClick(Sender: tObject);
    procedure DBGridChequesDrawColumnCell(Sender: tObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure Bit_GravarClick(Sender: tObject);
    procedure DBGridChequesDblClick(Sender: tObject);
    procedure DBGridChequesKeyPress(Sender: tObject; var Key: Char);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure cNChequeEnter(Sender: tObject);
    procedure Edt_Nome_FavorecidoEnter(Sender: tObject);
    procedure DataIEnter(Sender: tObject);
    procedure Bit_RelatorioClick(Sender: tObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    {campos}
    CampoEdit     :TEdit;
    CampoData     :TDateEdit;
    CampoCombo    :TcomboBox;
    CampoCurrency :TCurrencyEdit;
    procedure MudaCorCampos(Sender: tObject);
    procedure Atribuir_Dados_Cheque_Objetos;
    procedure BuscaConta(sPesquisa:String);
    procedure BuscaCheque_Impressos(sConta:String);
    procedure PreencheCombo;
    procedure LayOutFiltrar;
    procedure Habilita_Botao;
    procedure Desabilita_Botao;
    procedure Desabilita_Objetos;
    procedure Habilita_Objetos;
    procedure Limpar_Objetos;
    procedure Grava_Manutencao_Cheque(sRegistro:String);
    procedure Faz_Pesquisa;
    procedure Focar_Objetos;
    procedure Limpar_Objetos_Pesquisa;
  public
    { Public declarations }
    procedure BotoesAcesso;
  end;

var
  FrmChequeConsulta: TFrmChequeConsulta;





implementation

uses Uteis, RWFunc, DataCad, GimpCheques, InicioDB;

{$R *.dfm}

procedure TFrmChequeConsulta.BitBtn2Click(Sender: tObject);
begin
   Close;
end;

procedure TFrmChequeConsulta.SqlCdsChequeCalcFields(DataSet: TDataSet);
begin
   SqlCdsChequeCC_NUM_CHEQUE.AsString := SqlCdsChequeCHQ_NUMERO.AsString+'-'+SqlCdsChequeCHQ_NUMERO_DV.AsString;
   SqlCdsChequeCC_EXCLUSAO.AsString   := IIF(SqlCdsChequeCHQ_EXCLUSAO.AsString = 'S','Sim','Não');
   SqlCdsChequeCC_SITUACAO.AsString   := iif(SqlCdsChequeCHQ_SITUACAO.AsString = 'P','Pendente',
                                         iif(SqlCdsChequeCHQ_SITUACAO.AsString = 'L','Liquidado',
                                         iif(SqlCdsChequeCHQ_SITUACAO.AsString = 'C','Cancelado',
                                         iif(SqlCdsChequeCHQ_SITUACAO.AsString = 'D','Devolvido',
                                         iif(SqlCdsChequeCHQ_SITUACAO.AsString = 'R','Repassado','Reapresentado')))));
end;

procedure TFrmChequeConsulta.SqlCdsChequeAfterScroll(DataSet: TDataSet);
begin
   Atribuir_Dados_Cheque_Objetos;
end;

procedure TFrmChequeConsulta.Atribuir_Dados_Cheque_Objetos;
begin
   CBancoCod.Text       := SqlCdsChequeBAN_CODIGO.AsString;
   Edt_Banco.Text       := SqlCdsChequeBAN_APELIDO.AsString;
   CCodBanco.Text       := SqlCdsChequeBAN_COD_APELIDO.AsString;
   Edt_Bco.Text         := SqlCdsChequeBCO_DESCRICAO.AsString;
   cCodFavorecido.Text  := SqlCdsChequeCHQ_CODIGO_FAVORECIDO.Text;
   Edt_Favorecido.Text  := SqlCdsChequeCHQ_NOME_FAVORECIDO.Text;
   cNumCheque.Text      := SqlCdsChequeCHQ_NUMERO.AsString;
   Cdigito.Text         := SqlCdsChequeCHQ_NUMERO_DV.AsString;
   DtEmissao.Text       := SqlCdsChequeCHQ_EMISSAO.AsString;
   DtBomPara.Text       := SqlCdsChequeCHQ_BOMPARA.AsString;
   CValor.Value         := SqlCdsChequeCHQ_VALOR.AsCurrency;
   Edt_Obs.Text         := SqlCdsChequeCHQ_OBSERVACAO.AsString;
   Grp_Liquidar.Enabled := False;
   if (SqlCdsChequeCHQ_LIQUIDAR.AsString = 'S') then
      Rad_Sim.Checked := True
   else
      Rad_Nao.Checked := True;
   //
   Cb_Imp.ItemIndex   := iif(SqlCdsChequeCHQ_IMP.AsString = 'S',0,1);
   //
   CbSituacao.ItemIndex := iif(SqlCdsChequeCHQ_SITUACAO.AsString = 'P',0,
                           iif(SqlCdsChequeCHQ_SITUACAO.AsString = 'L',1,
                           iif(SqlCdsChequeCHQ_SITUACAO.AsString = 'C',2,
                           iif(SqlCdsChequeCHQ_SITUACAO.AsString = 'D',3,
                           iif(SqlCdsChequeCHQ_SITUACAO.AsString = 'R',4,5)))));
   //
   if (SqlCdsChequeCHQ_EXCLUSAO.AsString = 'S') then
      begin
         GrpExclusao.Visible      := True;
         Edt_Data_Exclusao.Text   := SqlCdsChequeCHQ_DATA_EXCLUSAO.AsString;
         Edt_Hora_Exclusao.Text   := SqlCdsChequeCHQ_HORA_EXCLUSAO.AsString;
         CCodUsu_Exclusao.Text    := SqlCdsChequeUSU_CODIGO_EXCLUSAO.AsString;
         Edt_Login_Exclusao.Text  := SqlCdsChequeUSU_LOGIN_EXCLUSAO.AsString;
         Edt_Motivo_Exclusao.Text := SqlCdsChequeCHQ_MOTIVO_EXCLUSAO.AsString;
      end
   else
      begin
         GrpExclusao.Visible      := False;
         Edt_Data_Exclusao.Text   := '';
         Edt_Hora_Exclusao.Text   := '';
         CCodUsu_Exclusao.Text    := '';
         Edt_Login_Exclusao.Text  := '';
         Edt_Motivo_Exclusao.Text := '';
      end;
end;

procedure TFrmChequeConsulta.BuscaConta(sPesquisa: String);
begin
   {Faz a Busca da Seguinte Maneira
    sPesquisa -> C = Busca pelo Código
              -> N = Busca pelo Nome }
   try
     if (sPesquisa = 'C') then
        begin
           if CCodConta.Value <> 9999 then
              begin
                  if SqlCdsContas.Locate('BAN_CODIGO',StrZero(CCodConta.Text,4),[])= true then
                     begin
                         CbBanco.Text := SqlCdsContasBAN_APELIDO.AsString;
                         BuscaCheque_Impressos(CCodConta.Text);
                     end
                  else
                     begin
                         uteis.aviso('Conta não encontrado com o código informado !');
                         CbBanco.Text    := 'TODAS CONTAS';
                         CCodConta.Text  := '9999';
                     end;
              end
           else
              begin
                 CCodConta.AsInteger := 9999;
                 CbBanco.Text        := 'TODAS AS CONTAS';
                 BuscaCheque_Impressos(CCodConta.Text);
              end;
        end
     else
     if (sPesquisa = 'N') then
        begin
           if (CbBanco.Text <> 'TODAS CONTAS') then
              begin
                  if SqlCdsContas.locate('BAN_APELIDO',CbBanco.Text,[]) = true then
                     begin
                        CCodConta.Text := SqlCdsContasBAN_CODIGO.AsString;
                        BuscaCheque_Impressos(CCodConta.Text);
                     end
                  else
                     begin
                        uteis.aviso('Conta não encontrado com o nome informado !');
                         CbBanco.Text    := 'TODAS CONTAS';
                         CCodConta.Text  := '9999';
                     end;
              end
           else
              begin
                 CCodConta.AsInteger := 9999;
                 CbBanco.Text        := 'TODAS CONTAS';
                 BuscaCheque_Impressos(CCodConta.Text);
              end;

        end;
   except
     on E:EDataBaseError do
        begin
           uteis.erro  (pchar('Impossível realizar Busca !'+#13#10+
                      'Mensagem erro: '+e.message));
        end;
   end;
end;

procedure TFrmChequeConsulta.BuscaCheque_Impressos(sConta:String);
begin
   try
     wSql1      := 'SELECT T1.*,T2.BAN_APELIDO,T2.BAN_COD_APELIDO,T3.BCO_DESCRICAO FROM CHQ0000 T1 LEFT JOIN BAN0000 T2 ON (T2.BAN_CODIGO = T1.BAN_CODIGO) LEFT JOIN BANCOS T3 ON (T3.BCO_CODIGO = T2.BAN_COD_APELIDO) ';
     if (sConta = '9999') then
        wSeleciona := 'WHERE (T1.CHQ_IMP = ''S'' OR T1.CHQ_EXCLUSAO = ''S'')'
     else
        wSeleciona := 'WHERE (T1.CHQ_IMP = ''S'' OR T1.CHQ_EXCLUSAO = ''S'') AND T1.BAN_CODIGO = '''+StrZero(sConta,4)+'''';
     wOrdem     := 'T1.CHQ_EMISSAO,T1.BAN_CODIGO,T1.CHQ_NUMERO';
     //
     SqlCdsCheque.Close;
     SqlCdsCheque.CommandText := SQLDEF('BANCOS',wSql1,wSeleciona,wOrdem,'T1.');
     SqlCdsCheque.Open;
     SqlCdsCheque.Filtered := False;
     SqlCdsCheque.Filter   := '';
     SqlCdsCheque.Filtered := True;
     SqlCdsCheque.First;
   except
     on E:EDataBaseError do
       begin
          uteis.erro  (pchar('Erro ao buscar os cheques para Impressão !'+#13#10+
                     'Mensagem erro: '+e.message));
       end;
   end;
end;

procedure TFrmChequeConsulta.FormShow(Sender: tObject);
begin
   screen.OnActiveControlChange := MudaCorCampos;
   PreencheCombo;
   BuscaCheque_Impressos('9999');
   Habilita_Objetos;
   Habilita_Botao;
   LayOutFiltrar;
end;

procedure TFrmChequeConsulta.Bit_SairClick(Sender: tObject);
begin
   Close;
end;

procedure TFrmChequeConsulta.BotoesAcesso;
begin
     if assigned(FrmChequeConsulta) then
     begin
       Bit_Alterar.Enabled := Uteis.AcessoUsuario('FinanceiroManutenção de Cheques',DBInicio.Usuario.CODIGO,FrmChequeConsulta).Alterar;
       Bit_Relatorio.Enabled := Uteis.AcessoUsuario('FinanceiroManutenção de Cheques',DBInicio.Usuario.CODIGO,FrmChequeConsulta).Relatorio;
       Dscheque.AutoEdit := Uteis.AcessoUsuario('FinanceiroManutenção de Cheques',DBInicio.Usuario.CODIGO,FrmChequeConsulta).Alterar;
     end;
end;

procedure TFrmChequeConsulta.CCodContaExit(Sender: tObject);
begin
   if (ActiveControl <> Nil)
   and(ActiveControl.Name <> 'Bit_Sair')
   and(ActiveControl.Name <> 'Rad_Emissao')
   and(ActiveControl.Name <> 'Rad_NCheque')
   and(ActiveControl.Name <> 'Rad_Favorecido')
   and(ActiveControl.Name <> 'DBGridCheques') then
      begin
         if (CCodConta.AsInteger > 0) then
            begin
               BuscaConta('C');
            end;
      end;
end;

procedure TFrmChequeConsulta.PreencheCombo;
begin
    {combo CbBanco}
    try
      wSQL1  := 'SELECT T1.BAN_CODIGO,T1.BAN_APELIDO FROM BAN0000 T1 ';
      wOrdem := 'T1.BAN_APELIDO';
      SqlCdsContas.close;
      SqlCdsContas.CommandText := SQLDEF('BANCOS',wSql1,'',wOrdem,'T1.');
      SqlCdsContas.Open;
      SqlCdsContas.first;
      CbBanco.Clear;
      CbBanco.Items.Add('TODAS CONTAS');
      while not SqlCdsContas.Eof do
       begin
          CbBanco.Items.Add(SqlCdsContasBAN_APELIDO.AsString);
          SqlCdsContas.Next;
       end;
      CbBanco.ItemIndex := 0;
    except on E:EdatabaseError do
       begin
          uteis.erro  (pchar('Erro ao listar as Contas !'#13#10+
                     'Mensagem erro: '+e.message));
       end;
    end;
end;

procedure TFrmChequeConsulta.CbBancoClick(Sender: tObject);
begin
   if (ActiveControl <> Nil)
   and(ActiveControl.Name <> 'Bit_Sair')
   and(ActiveControl.Name <> 'CCodConta')
   and(ActiveControl.Name <> 'DBGridCheques') then
      begin
         BuscaConta('N');
      end;
end;

procedure TFrmChequeConsulta.Rad_EmissaoClick(Sender: tObject);
begin
   LayOutFiltrar;
end;

procedure TFrmChequeConsulta.LayOutFiltrar;
begin
   if (Rad_Emissao.Checked) then
      begin
         Pan_Data.Visible       := True;
         Pan_Data.TabOrder      := 0;
         BitPesquisar.TabOrder  := 1;
         Pan_NCheque.Visible    := False;
         Pan_Favorecido.Visible := False;
         Grp_Filtrar.Caption    := 'Informe a Data de Emissão';
         DataI.SetFocus;
      end
   else
   if (Rad_NCheque.Checked) then
      begin
         Pan_Data.Visible       := False;
         Pan_NCheque.Visible    := True;
         Pan_NCheque.TabOrder   := 0;
         BitPesquisar.TabOrder  := 1;
         Pan_Favorecido.Visible := False;
         Grp_Filtrar.Caption    := 'Informe o Número do Cheque e Digito';
         cNCheque.SetFocus;
      end
   else
   if (Rad_Favorecido.Checked) then
      begin
         Pan_Data.Visible       := False;
         Pan_NCheque.Visible    := False;
         Pan_Favorecido.Visible := True;
         Pan_Favorecido.TabOrder:= 0;
         BitPesquisar.TabOrder  := 1;
         Grp_Filtrar.Caption    := 'Informe o Nome do Favorecido';
         Edt_Nome_Favorecido.SetFocus;
      end;
end;

procedure TFrmChequeConsulta.DataIExit(Sender: tObject);
begin
    if (DataI.Date > 0) then
       begin
          DataI.Text := PreenchaData(DataI.Text);
          if not TestaDataStr(DataI.Text) then
             DataI.setfocus;
       end;
end;

procedure TFrmChequeConsulta.DataFExit(Sender: tObject);
begin
    if (DataF.Date > 0) then
       begin
          DataF.Text := PreenchaData(DataF.Text);
          if not TestaDataStr(DataF.Text) then
             DataF.setfocus
          else
             begin
                if (DataF.Date < DataI.Date) then
                   begin
                      uteis.aviso('Data Final menor que a Data Inicial !');
                      DataF.Date := 0;
                      DataF.SetFocus;
                   end;
             end;
       end;
end;

procedure TFrmChequeConsulta.BitPesquisarClick(Sender: tObject);
begin
//   if (CCodConta.AsInteger > 0) then
//      begin
   if (Rad_Emissao.Checked) then
      begin
         if (DataI.Date = 0) then
            begin
               uteis.aviso('Informe a Data Inicial !');
               DataI.SetFocus;
               DataI.SelectAll;
            end
         else
         if (DataF.Date = 0) then
            begin
               uteis.aviso('Informe a Data Final !');
               DataF.SetFocus;
               DataF.SelectAll;
            end
         else
            Faz_Pesquisa;
      end
   else
   if (Rad_NCheque.Checked) then
      begin
         if (cNCheque.AsInteger = 0) then
            begin
               uteis.aviso('Informe o Número do Cheque !');
               cNCheque.SetFocus;
               cNCheque.SelectAll;
            end
         else
         if (CdvCheque.AsInteger = 0) then
            begin
               uteis.aviso('Informe o Dígito do Cheque !');
               CdvCheque.SetFocus;
               CdvCheque.SelectAll;
            end
         else
            Faz_Pesquisa;
      end
   else
   if (Rad_Favorecido.Checked) then
      begin
         if (Edt_Nome_Favorecido.Text = '') then
            begin
               uteis.aviso('Informe o Nome do Favorecido !');
               Edt_Nome_Favorecido.SetFocus;
               Edt_Nome_Favorecido.SelectAll;
            end
         else
            Faz_Pesquisa;
      end;
//      end
//   else
//      begin
//         uteis.aviso('Informe a Conta !');
//         CCodConta.SetFocus;
//      end;
end;

procedure TFrmChequeConsulta.Bit_AlterarClick(Sender: tObject);
begin
   if (not SqlCdsCheque.IsEmpty) then
      begin
         if (SqlCdsChequeCHQ_EXCLUSAO.AsString = 'N') then
            begin
               if (CBancoCod.AsInteger > 0) then
                  begin
                     Desabilita_Botao;
                     Desabilita_Objetos;
                     Cb_Imp.SetFocus;
                  end
               else
                  begin
                     uteis.aviso('Selecione o Cheque para alteração !');
                     DBGridCheques.SetFocus;
                  end;
            end
         else
            begin
               uteis.aviso('Não pode alterar um cheque excluído !');
               DBGridCheques.SetFocus;
            end;
      end
   else
      begin
         uteis.aviso('Não há cheques impressos para manutenção !');
         DBGridCheques.SetFocus;
      end;
end;

procedure TFrmChequeConsulta.Desabilita_Botao;
begin
   Bit_Alterar.Enabled  := False;
   Bit_Gravar.Enabled   := True;
   Bit_Cancelar.Enabled := True;
   Bit_Sair.Enabled     := False;
   BotoesAcesso;
end;

procedure TFrmChequeConsulta.Habilita_Botao;
begin
   Bit_Alterar.Enabled  := True;
   Bit_Gravar.Enabled   := False;
   Bit_Cancelar.Enabled := False;
   Bit_Sair.Enabled     := True;
   BotoesAcesso;
end;

procedure TFrmChequeConsulta.Desabilita_Objetos;
begin
   Grp01.Enabled          := False;
   Grp02.Enabled          := False;
   Grp_Filtrar.Enabled    := False;
   GrpDadosCheque.Enabled := True;
   GrpCheques.Enabled     := False;
end;

procedure TFrmChequeConsulta.Habilita_Objetos;
begin
   Grp01.Enabled          := true;
   Grp02.Enabled          := true;
   Grp_Filtrar.Enabled    := true;
   GrpDadosCheque.Enabled := False;
   GrpCheques.Enabled     := True;
end;

procedure TFrmChequeConsulta.Bit_CancelarClick(Sender: tObject);
begin
   Habilita_Botao;
   Habilita_Objetos;
   DBGridCheques.SetFocus;
end;

procedure TFrmChequeConsulta.DBGridChequesDrawColumnCell(Sender: tObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
   if (DBGridCheques.Focused) then
      begin
         if (SqlCdsChequeCHQ_EXCLUSAO.AsString = 'S') then
            DBGridCheques.Canvas.Font.Color := $0000B900; // coloque aqui a cor desejada
           if (gdSelected in State) then
              DBGridCheques.Canvas.Font.Color := clWindow;
         DBGridCheques.DefaultDrawDataCell(Rect, DBGridCheques.columns[datacol].field, State);
      end
   else
      begin
         if (SqlCdsChequeCHQ_EXCLUSAO.AsString = 'S') then
            DBGridCheques.Canvas.Font.Color := $0000B900; // coloque aqui a cor desejada
         DBGridCheques.DefaultDrawDataCell(Rect, DBGridCheques.columns[datacol].field, State);
      end;
end;

procedure TFrmChequeConsulta.Bit_GravarClick(Sender: tObject);
begin
   Grava_Manutencao_Cheque(SqlCdsChequeCHQ_REGISTRO.AsString);
   SqlCdsCheque.Refresh;
   Habilita_Botao;
   Habilita_Objetos;
   Limpar_Objetos;
   Limpar_Objetos_Pesquisa;   
   DBGridCheques.SetFocus;
end;

procedure TFrmChequeConsulta.Grava_Manutencao_Cheque(sRegistro: String);
Var
  sImp,
  sSituacao : String[1];
begin
   try
     sImp      := IIF(Cb_Imp.ItemIndex = 0,'S','N');
     //
     sSituacao := IIF(CbSituacao.ItemIndex = 0,'P',
                  IIF(CbSituacao.ItemIndex = 1,'L',
                  IIF(CbSituacao.ItemIndex = 2,'C',
                  IIF(CbSituacao.ItemIndex = 3,'D',
                  IIF(CbSituacao.ItemIndex = 4,'R','A')))));
     //
     wSql1 := 'Update CHQ0000 SET '+
              'CHQ_IMP = '''+sImp+''','+
              'CHQ_SITUACAO = '''+sSituacao+''' ';
     wSql2 := 'Where CHQ_REGISTRO = '''+sRegistro+'''';
     //
     DataCadastros.sqlUpdate.Close;
     DataCadastros.SqlUpdate.sql.text :=wSql1+wSql2;
     DataCadastros.sqlUpdate.Execsql;
   except
     on E:EDatabaseError do
       begin
          uteis.erro  (pchar('Erro ao Fazer a Manutenção do Cheque !'+#13#10+
                     'Mensagem erro: '+e.message));
       end;
   end;
end;

procedure TFrmChequeConsulta.Limpar_Objetos;
begin
    CBancoCod.AsInteger      := 0;
    CCodBanco.AsInteger      := 0;
    cCodFavorecido.AsInteger := 0;
    cNumCheque.AsInteger     := 0;
    Cdigito.AsInteger        := 0;
    CValor.Value             := 0;
    Edt_Banco.Text           := ''; 
    DtEmissao.Text           := '';
    DtBomPara.Text           := '';
    Edt_Obs.Text             := '';
    Edt_Favorecido.Text      := '';
    Edt_Bco.Text             := '';
    CbBanco.Text             := '';
    Edt_Nome_Favorecido.Text := '';
    Rad_Sim.Checked          := False;
    Rad_Nao.Checked          := False;
    Cb_Imp.ItemIndex         := -1;
    CbSituacao.ItemIndex     := -1;
end;

procedure TFrmChequeConsulta.DBGridChequesDblClick(Sender: tObject);
begin
   Atribuir_Dados_Cheque_Objetos;
end;

procedure TFrmChequeConsulta.DBGridChequesKeyPress(Sender: tObject;
  var Key: Char);
begin
   if (Key = #13) then
      begin
         Atribuir_Dados_Cheque_Objetos;
         Key := #0;
      end;
end;

procedure TFrmChequeConsulta.MudaCorCampos(Sender: tObject);
begin
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
   if ActiveControl is TDateEdit then
      begin
         TDateEdit(ActiveControl).color := $0080FFFF;
         CampoData := TDateEdit(ActiveControl);
      end
   else
      begin
         CampoData := nil;
      end;

  {CampoTDBCombo:TDBComboBox}
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

procedure TFrmChequeConsulta.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
   Screen.OnActiveControlChange := nil;
   Action := CaFree;
end;

procedure TFrmChequeConsulta.FormDestroy(Sender: TObject);
begin
     FrmChequeConsulta := Nil;
end;

procedure TFrmChequeConsulta.Faz_Pesquisa;
begin
   SqlCdsCheque.Filtered := False;
   if (Rad_Emissao.Checked) then
      begin
         SqlCdsCheque.Filter   := 'CHQ_EMISSAO >='''+DataI.Text+''' AND CHQ_EMISSAO <= '''+DataF.Text+'''';
      end
   else
   if (Rad_NCheque.Checked) then
      begin
         SqlCdsCheque.Filter   := 'CHQ_NUMERO = '''+StrZero(cNCheque.Text,10)+''' AND CHQ_NUMERO_DV = '''+CdvCheque.Text+'''';
      end
   else
   if (Rad_Favorecido.Checked) then
      begin
         SqlCdsCheque.Filter   := 'CHQ_NOME_FAVORECIDO LIKE '''+Edt_Nome_Favorecido.Text+'%''';
      end;
   SqlCdsCheque.Filtered := True;
   SqlCdsCheque.First;
   if (not SqlCdsCheque.IsEmpty) then
      begin
         DBGridCheques.SetFocus;
      end
   else
      begin
         uteis.aviso('Cheques não encontrados !');
         Focar_Objetos;
      end;
end;

procedure TFrmChequeConsulta.cNChequeEnter(Sender: tObject);
begin
   Limpar_Objetos_Pesquisa;
   BuscaCheque_Impressos(StrZero(CCodConta.Text,4));
end;

procedure TFrmChequeConsulta.Edt_Nome_FavorecidoEnter(Sender: tObject);
begin
   Limpar_Objetos_Pesquisa;
   BuscaCheque_Impressos(StrZero(CCodConta.Text,4));
end;

procedure TFrmChequeConsulta.DataIEnter(Sender: tObject);
begin
   Limpar_Objetos_Pesquisa;
   BuscaCheque_Impressos(StrZero(CCodConta.Text,4));
end;

procedure TFrmChequeConsulta.Focar_Objetos;
begin
   if (Rad_Emissao.Checked) then
      DataI.SetFocus
   else
   if (Rad_NCheque.Checked) then
      cNCheque.SetFocus
   else
   if (Rad_Favorecido.Checked) then
      Edt_Nome_Favorecido.SetFocus;
end;

procedure TFrmChequeConsulta.Limpar_Objetos_Pesquisa;
begin
   DataI.Date          := 0;
   DataF.Date          := 0;
   cNCheque.AsInteger  := 0;
   CdvCheque.AsInteger := 0;
   Edt_Nome_Favorecido.Clear;
end;

procedure TFrmChequeConsulta.Bit_RelatorioClick(Sender: tObject);
begin
    try
      try
        FrmGimpCheques :=TFrmGimpCheques.Create(Application);
        FrmGimpCheques.ShowModal;
      finally
        FrmGimpCheques.Destroy;
        FrmGimpCheques := nil;
        Screen.OnActiveControlChange   := MudaCorCampos;
      end;
    except
        //beep;
        uteis.erro  ('Ocorreu um erro na criação do formulário!');
    end;
end;

end.
