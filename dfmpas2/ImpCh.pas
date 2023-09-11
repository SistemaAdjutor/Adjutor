unit ImpCh;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Mask,  rxToolEdit,  rxCurrEdit, Grids, DBGrids,
  Buttons, DB, DBClient, Provider, SqlExpr,SqlClientDataSet, DBLocal, DBLocalS, ACBrBase,
  ACBrCHQ,printers, RDprint, ImgList, Data.DBXFirebird, System.ImageList,
  SimpleDS, JvExMask, JvToolEdit;

type
  TFormImpCheque = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    GrpDadosCheque: TGroupBox;
    Label2: TLabel;
    CCodConta: TCurrencyEdit;
    CbBanco: TComboBox;
    Label3: TLabel;
    CValor: TCurrencyEdit;
    Label4: TLabel;
    GrpCheques: TGroupBox;
    DBGridCheques: TDBGrid;
    Dscheque: TDataSource;
    SqlCdsContas: TSQLClientDataSet;
    SqlCfeCheque: TSQLClientDataSet;
    Edt_Bco: TEdit;
    CCodBanco: TCurrencyEdit;
    Label7: TLabel;
    Label8: TLabel;
    cNumCheque: TCurrencyEdit;
    Label51: TLabel;
    Label79: TLabel;
    Cdigito: TCurrencyEdit;
    Label9: TLabel;
    Edt_Obs: TEdit;
    SqlCdsContasBAN_CODIGO: TStringField;
    SqlCdsContasBAN_RAZAO: TStringField;
    SqlCdsContasBAN_SEQ_CHEQUE: TIntegerField;
    SqlCdsContasBAN_COD_APELIDO: TIntegerField;
    SqlCdsContasBCO_DESCRICAO: TStringField;
    Panel5: TPanel;
    Panel6: TPanel;
    Bit_Alterar: TBitBtn;
    Bit_Excluir: TBitBtn;
    Bit_Gravar: TBitBtn;
    Bit_Cancelar: TBitBtn;
    Panel7: TPanel;
    GrpTipo: TGroupBox;
    Rad_Clientes: TRadioButton;
    Rad_Fornecedor: TRadioButton;
    Rad_Outro: TRadioButton;
    Grp_Liquidar: TGroupBox;
    Rad_Sim: TRadioButton;
    Rad_Nao: TRadioButton;
    Label5: TLabel;
    SqlCdsFornecedor: TSQLClientDataSet;
    SqlCdsClientes: TSQLClientDataSet;
    DsFornecedor: TDataSource;
    GrpFavorecido: TGroupBox;
    DBGridFavorecido: TDBGrid;
    cCodFavorecido: TCurrencyEdit;
    Edt_Favorecido: TEdit;
    Label10: TLabel;
    DBGridCliente: TDBGrid;
    DsClientes: TDataSource;
    SqlCdsClientesCLI_CODIGO: TStringField;
    SqlCdsClientesCLI_RAZAO: TStringField;
    SqlCdsClientesCLI_FANTASIA: TStringField;
    LBL_Nome_Favorecido: TLabel;
    Bit_Imprimir: TBitBtn;
    Bit_Sair: TBitBtn;
    Rad_Pagar: TRadioButton;
    DBGridFornecedor: TDBGrid;
    SqlCdsPagar: TSQLClientDataSet;
    DsPagar: TDataSource;
    SqlCdsFornecedorFOR_CODIGO: TStringField;
    SqlCdsFornecedorFOR_RAZAO: TStringField;
    SqlCdsFornecedorCCT_CODIGO: TStringField;
    SqlCdsPagarPAG_REGISTRO: TIntegerField;
    SqlCdsPagarPAG_CODIGO: TStringField;
    SqlCdsPagarPPC_NUMER: TStringField;
    SqlCdsPagarPPC_VLPARC: TFMTBCdField;
    SqlCdsPagarPPC_VENCTO: TSQLTimeStampField;
    SqlCdsPagarFOR_RAZAO: TStringField;
    GrpPesquisar: TGroupBox;
    Grp_Filtrar: TGroupBox;
    Rad_Codigo: TRadioButton;
    Rad_Razao: TRadioButton;
    Rad_Fantasia: TRadioButton;
    Rad_Forne: TRadioButton;
    Rad_Favorecido: TRadioButton;
    Rad_Vencto: TRadioButton;
    Pan_Pan_Todos: TPanel;
    Label12: TLabel;
    cCod_Pesquisa: TCurrencyEdit;
    Cb_Favorecido: TComboBox;
    Cb_Fornecedor: TComboBox;
    Cb_Razao: TComboBox;
    Cb_Fantasia: TComboBox;
    Pan_Pagar_Codigo: TPanel;
    Label6: TLabel;
    Label11: TLabel;
    cNumLancto: TCurrencyEdit;
    cNumParc: TCurrencyEdit;
    Pan_Pagar_Vencto: TPanel;
    Label13: TLabel;
    Label14: TLabel;
    BitPesquisar: TBitBtn;
    SqlCds_Cb_Clientes: TSQLClientDataSet;
    SqlCds_Cb_For_Favo: TSQLClientDataSet;
    SqlCds_Cb_For_FavoFOR_CODIGO: TStringField;
    SqlCds_Cb_For_FavoFOR_RAZAO: TStringField;
    SqlCds_Cb_ClientesCLI_CODIGO: TStringField;
    SqlCds_Cb_ClientesCLI_RAZAO: TStringField;
    SqlCds_Cb_ClientesCLI_FANTASIA: TStringField;
    CbFor_Fav: TComboBox;
    CbCliCod: TComboBox;
    CbFant: TComboBox;
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
    Edt_Nome_Favorecido: TEdit;
    SqlCdsChequeCC_NUM_CHEQUE: TStringField;
    SqlCdsChequeCHQ_PAG_REGISTRO: TIntegerField;
    SqlCdsChequeCHQ_OBSERVACAO: TStringField;
    ImageList1: TImageList;
    SqlCdsChequeIC_SELECAO: TBooleanField;
    SqlCfeChequeSCH_REGISTRO: TIntegerField;
    SqlCfeChequeEMP_CODIGO: TStringField;
    SqlCfeChequeBAN_CODIGO: TStringField;
    SqlCfeChequeSCH_FONTE: TIntegerField;
    SqlCfeChequeSCH_ENTRE_LINHAS: TIntegerField;
    SqlCfeChequeSCH_QTDE_LINHAS: TIntegerField;
    SqlCfeChequeSCH_VALOR: TStringField;
    SqlCfeChequeSCH_LINHA1_EXT: TStringField;
    SqlCfeChequeSCH_LINHA2_EXT: TStringField;
    SqlCfeChequeSCH_QTDE_CARACTERES: TIntegerField;
    SqlCfeChequeSCH_FAVORECIDO: TStringField;
    SqlCfeChequeSCH_CIDADE: TStringField;
    SqlCfeChequeSCH_DIA: TStringField;
    SqlCfeChequeSCH_MES: TStringField;
    SqlCfeChequeSCH_ANO: TStringField;
    SqlCfeChequeSCH_TAM_ANO: TIntegerField;
    SqlCfeChequeSCH_BOM_PARA: TStringField;
    SqlCdsChequeCHQ_EXCLUSAO: TStringField;
    SqlCdsChequeCHQ_MOTIVO_EXCLUSAO: TStringField;
    SqlCdsChequeCHQ_DATA_EXCLUSAO: TDateField;
    SqlCdsChequeCHQ_HORA_EXCLUSAO: TTimeField;
    SqlCdsChequeUSU_CODIGO_EXCLUSAO: TIntegerField;
    SqlCdsChequeUSU_LOGIN_EXCLUSAO: TStringField;
    RDCheque: TRDprint;
    DtEmissao: TJvDateEdit;
    DtBomPara: TJvDateEdit;
    DataI: TJvDateEdit;
    DataF: TJvDateEdit;
    procedure Bit_CancelarClick(Sender: tObject);
    procedure Bit_SairClick(Sender: tObject);
    procedure CCodContaExit(Sender: tObject);
    procedure CbBancoClick(Sender: tObject);
    procedure CbBancoExit(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure FormCreate(Sender: tObject);
    procedure Rad_FornecedorClick(Sender: tObject);
    procedure DBGridFavorecidoDblClick(Sender: tObject);
    procedure DBGridFavorecidoKeyPress(Sender: tObject; var Key: Char);
    procedure DBGridClienteKeyPress(Sender: tObject; var Key: Char);
    procedure DBGridClienteDblClick(Sender: tObject);
    procedure Edt_Nome_FavorecidoExit(Sender: tObject);
    procedure Rad_CodigoClick(Sender: tObject);
    procedure BitPesquisarClick(Sender: tObject);
    procedure Cb_FornecedorClick(Sender: tObject);
    procedure Cb_FavorecidoClick(Sender: tObject);
    procedure Cb_FantasiaClick(Sender: tObject);
    procedure Cb_RazaoClick(Sender: tObject);
    procedure cCod_PesquisaExit(Sender: tObject);
    procedure DataIExit(Sender: tObject);
    procedure DataFExit(Sender: tObject);
    procedure Bit_GravarClick(Sender: tObject);
    procedure SqlCdsChequeCalcFields(DataSet: TDataSet);
    procedure Bit_AlterarClick(Sender: tObject);
    procedure FormKeyPress(Sender: tObject; var Key: Char);
    procedure Bit_ExcluirClick(Sender: tObject);
    procedure Bit_ImprimirClick(Sender: tObject);
    procedure SqlCdsChequeAfterScroll(DataSet: TDataSet);
    procedure DBGridChequesDrawColumnCell(Sender: tObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure DBGridChequesDblClick(Sender: tObject);
    procedure DBGridChequesKeyPress(Sender: tObject; var Key: Char);
    procedure DBGridFavorecidoDrawColumnCell(Sender: tObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure DBGridFornecedorDrawColumnCell(Sender: tObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure DBGridClienteDrawColumnCell(Sender: tObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure DtEmissaoExit(Sender: tObject);
    procedure DtBomParaExit(Sender: tObject);
    procedure cNumChequeExit(Sender: tObject);
    procedure DBGridChequesEnter(Sender: tObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    {campos}
    CampoEdit     :TEdit;
    CampoData     :TDateEdit;
    CampoCombo    :TcomboBox;
    CampoCurrency :TCurrencyEdit;
    {Variaveis}
    bIncluir : Boolean;

    procedure MudaCorCampos(Sender: tObject);
    procedure PreencheCombo;
    procedure LayOutFavorecidos;
    procedure LayOutPesquisa;
    procedure BuscaConta(sPesquisa:String);
    procedure Mostrar_Dados_Favorecidos;
    procedure Transfere_Favorecido;
    procedure Habilita_Botao;
    procedure Desabilita_Botao;
    procedure Habilita_Objetos;
    procedure Desabilita_Objetos;
    procedure Limpar_Objetos;
    procedure Focar_Objetos;
    procedure Faz_Pesquisa;
    procedure Localiza_Forn_Favo;
    procedure Localiza_Razao_Fantasia;
    procedure Gravar_Cheque;
    procedure Buscar_Cheque_para_Imprimir;
    procedure Atribuir_Dados_Cheque_Objetos;
    procedure Quitar_Titulo_Pagar(sRegistro,sQuita:String);
    procedure Excluir_Cheque(sRegistroCheque:String);
    procedure Liberar_Titulo_Cheque(sRegistroPagar:String);
    procedure Lancar_Movimento_Pagar;
    procedure Mudar_Flag_Imp_Cheque(sRegistroCheque:String);
    procedure Imprimir_Cheque;
    procedure Marcar_Cheques_Imprimir;
    procedure Marcar_Todos_Cheques;
    procedure Atualiza_Sequencia_Cheques(sConta:String);
    //
    Function Verifica_Cheque_Mesmo_Banco:Boolean;
    Function Verifica_Selecao_Cheque:Boolean;
    Function Retorna_Sequencia_Cheque(sConta:String):Integer;

  public
    { Public declarations }
    bConfirmar_Exclusao_cheque : Boolean;
    procedure BotoesAcesso;
  end;

var
  FormImpCheque: TFormImpCheque;

implementation

uses Uteis, DataCad, Men0001, RWFunc, DataMov, Cheque0002, Motivo, iniciodb;

{$R *.dfm}

procedure TFormImpCheque.Bit_CancelarClick(Sender: tObject);
begin
   if uteis.confirmacao ( 'Deseja cancelar digitação do cheque ?')=mryes then
      begin
         bIncluir := False;
         Habilita_Objetos;
         Habilita_Botao;
         Limpar_Objetos;
         Focar_Objetos;
      end
   else
      begin
         CCodConta.SetFocus;
      end;
end;

procedure TFormImpCheque.Bit_SairClick(Sender: tObject);
begin
    close;
end;

procedure TFormImpCheque.BotoesAcesso;
begin
     if assigned(FormImpCheque) then
     begin
       Bit_Excluir.Enabled := Uteis.AcessoUsuario('FinanceiroImpressão de Cheques',DBInicio.Usuario.CODIGO,FormImpCheque).Exluir;
       Bit_Imprimir.Enabled := Uteis.AcessoUsuario('FinanceiroImpressão de Cheques',DBInicio.Usuario.CODIGO,FormImpCheque).Relatorio;
       Bit_Alterar.Enabled := Uteis.AcessoUsuario('FinanceiroImpressão de Cheques',DBInicio.Usuario.CODIGO,FormImpCheque).Alterar;
       DsPagar.AutoEdit := Uteis.AcessoUsuario('FinanceiroImpressão de Cheques',DBInicio.Usuario.CODIGO,FormImpCheque).Alterar;
     end;
end;

procedure TFormImpCheque.PreencheCombo;
begin
    {combo CbBanco}
    try
      wSQL1      := 'SELECT T1.BAN_CODIGO,T1.BAN_RAZAO,T1.BAN_SEQ_CHEQUE,T1.BAN_COD_APELIDO,T2.BCO_DESCRICAO FROM BAN0000 T1 JOIN BANCOS T2 ON (T2.BCO_CODIGO = T1.BAN_COD_APELIDO) ';
      wSeleciona := 'WHERE T1.BAN_GERACHEQUE = ''S''';
      wOrdem     := 'T1.BAN_RAZAO';
      SqlCdsContas.close;
      SqlCdsContas.CommandText := SQLDEF('BANCOS',wSql1,wSeleciona,wOrdem,'T1.');
      SqlCdsContas.Open;
      SqlCdsContas.first;
      CbBanco.Clear;
      while not SqlCdsContas.Eof do
       begin
          CbBanco.Items.Add(SqlCdsContasBAN_RAZAO.AsString);
          SqlCdsContas.Next;
       end;
      SqlCdsContas.first;
    except on E:EdatabaseError do
       begin
          uteis.erro  (pchar('Erro ao listar as Contas !'#13#10+
                     'Mensagem erro: '+e.message));
       end;
    end;
    {Combo Cb_Favorecido e Combo Cb_Fornecedor}
    try
      wSql1  := 'SELECT T1.FOR_CODIGO,T1.FOR_RAZAO FROM FOR0000 T1 ';
      wOrdem := 'T1.FOR_RAZAO';
      SqlCds_Cb_For_Favo.Close;
      SqlCds_Cb_For_Favo.CommandText := SQLDEF('FORNECEDORES',wSql1,'',wOrdem,'T1.');
      SqlCds_Cb_For_Favo.Open;
      SqlCds_Cb_For_Favo.First;
      Cb_Favorecido.Clear;
      Cb_Fornecedor.Clear;
      Cb_Favorecido.Items.Add('TODOS');
      Cb_Fornecedor.Items.Add('TODOS');
      CbFor_Fav.Items.Add('9999');
      while (not SqlCds_Cb_For_Favo.Eof) do
       begin
          Cb_Favorecido.Items.Add(SqlCds_Cb_For_FavoFOR_RAZAO.AsString);
          Cb_Fornecedor.Items.Add(SqlCds_Cb_For_FavoFOR_RAZAO.AsString);
          CbFor_Fav.Items.Add(SqlCds_Cb_For_FavoFOR_CODIGO.AsString);
          SqlCds_Cb_For_Favo.Next;
       end;
      SqlCds_Cb_For_Favo.First;
      Cb_Favorecido.ItemIndex := 0;
      Cb_Fornecedor.ItemIndex := 0;
      CbFor_Fav.ItemIndex     := 0;
     except on E:EdatabaseError do
        begin
            uteis.erro  (pchar('Erro ao preencher a combo Favorecido e Fornecedor !'#13#10+
                       'Mensagem erro: '+e.message));
        end;
    end;
    {Combo Cb_Razao}
    try
      wSQL1  := 'SELECT T1.CLI_CODIGO,T1.CLI_RAZAO,T1.CLI_FANTASIA FROM CLI0000 T1 ';
      wOrdem := 'T1.CLI_RAZAO';
      SqlCds_Cb_Clientes.Close;
      SqlCds_Cb_Clientes.CommandText := SQLDEF('CLIENTES',wSql1,'',wOrdem,'T1.');
      SqlCds_Cb_Clientes.Open;
      SqlCds_Cb_Clientes.First;
      Cb_Razao.Clear;
      CbCliCod.Clear;
      Cb_Razao.Items.Add('TODOS');
      CbCliCod.Items.Add('99999');
      while (not SqlCds_Cb_Clientes.Eof) do
       begin
          Cb_Razao.Items.Add(SqlCds_Cb_ClientesCLI_RAZAO.AsString);
          CbCliCod.Items.Add(SqlCds_Cb_ClientesCLI_CODIGO.AsString);
          SqlCds_Cb_Clientes.Next;
       end;
      SqlCds_Cb_Clientes.First;
      Cb_Razao.ItemIndex := 0;
      CbCliCod.ItemIndex := 0;
    except on E:EdatabaseError do
       begin
          uteis.erro  (pchar('Erro ao listar as Contas !'#13#10+
                     'Mensagem erro: '+e.message));
       end;
    end;
    {Combo Cb_Fantasia}
    try
      wSQL1  := 'SELECT T1.CLI_CODIGO,T1.CLI_RAZAO,T1.CLI_FANTASIA FROM CLI0000 T1 ';
      wOrdem := 'T1.CLI_FANTASIA';
      SqlCds_Cb_Clientes.Close;
      SqlCds_Cb_Clientes.CommandText := SQLDEF('CLIENTES',wSql1,'',wOrdem,'T1.');
      SqlCds_Cb_Clientes.Open;
      SqlCds_Cb_Clientes.First;
      Cb_Fantasia.Clear;
      CbFant.Clear;
      Cb_Fantasia.Items.Add('TODOS');
      CbFant.Items.Add('99999');
      while (not SqlCds_Cb_Clientes.Eof) do
       begin
          Cb_Fantasia.Items.Add(SqlCds_Cb_ClientesCLI_FANTASIA.AsString);
          CbFant.Items.Add(SqlCds_Cb_ClientesCLI_CODIGO.AsString);
          SqlCds_Cb_Clientes.Next;
       end;
      SqlCds_Cb_Clientes.First;
      CbFant.ItemIndex      := 0;
      Cb_Fantasia.ItemIndex := 0;
    except on E:EdatabaseError do
       begin
          uteis.erro  (pchar('Erro ao listar as Contas !'#13#10+
                     'Mensagem erro: '+e.message));
       end;
    end;
end;

procedure TFormImpCheque.CCodContaExit(Sender: tObject);
begin
   BuscaConta('C');
end;

procedure TFormImpCheque.CbBancoClick(Sender: tObject);
begin
   BuscaConta('N');
end;

procedure TFormImpCheque.CbBancoExit(Sender: tObject);
begin
   BuscaConta('N');
end;

procedure TFormImpCheque.FormShow(Sender: tObject);
begin
   Preenchecombo;
   screen.OnActiveControlChange := MudaCorCampos;
   Mostrar_Dados_Favorecidos;
   Habilita_Botao;
   Habilita_Objetos;
   LayOutFavorecidos;
   Buscar_Cheque_para_Imprimir;
end;

procedure TFormImpCheque.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
   Screen.OnActiveControlChange := nil;
   Action := CaFree;
end;

procedure TFormImpCheque.MudaCorCampos(Sender: tObject);
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

procedure TFormImpCheque.FormCreate(Sender: tObject);
begin
   Left     := 0;
   Top      := 0;
   bIncluir := False;
   bConfirmar_Exclusao_cheque := False;
end;

procedure TFormImpCheque.FormDestroy(Sender: TObject);
begin
     FormImpCheque := Nil;
end;

procedure TFormImpCheque.BuscaConta(sPesquisa: String);
begin
   {Faz a Busca da Seguinte Maneira
    sPesquisa -> C = Busca pelo Código
              -> N = Busca pelo Nome }
   try
     if (sPesquisa = 'C') then
        begin
           if CCodConta.Value <> 0 then
              begin
                  if SqlCdsContas.Locate('BAN_CODIGO',StrZero(CCodConta.Text,4),[])= true then
                     begin
                         CbBanco.Text    := SqlCdsContasBAN_RAZAO.AsString;
                         CCodBanco.Text  := SqlCdsContasBAN_COD_APELIDO.AsString;
                         Edt_Bco.Text    := SqlCdsContasBCO_DESCRICAO.AsString;
                         if (bIncluir) then
                            if (cNumCheque.AsInteger = 0) then
//                               cNumCheque.Text := SqlCdsContasBAN_SEQ_CHEQUE.AsString;
                               cNumCheque.AsInteger := Retorna_Sequencia_Cheque(StrZero(CCodConta.Text,4));
                     end
                  else
                     begin
                         uteis.aviso('Conta não encontrado com o código informado !');
                         CbBanco.Text    := '';
                         CCodBanco.Text  := '';
                         Edt_Bco.Text    := '';
                         cNumCheque.Text := '';
                     end;
              end;
        end
     else
     if (sPesquisa = 'N') then
        begin
           if CbBanco.Text <> '' then
              begin
                  if SqlCdsContas.locate('BAN_RAZAO',CbBanco.Text,[]) = true then
                     begin
                        CCodConta.Text  := SqlCdsContasBAN_CODIGO.AsString;
                        CCodBanco.Text  := SqlCdsContasBAN_COD_APELIDO.AsString;
                        Edt_Bco.Text    := SqlCdsContasBCO_DESCRICAO.AsString;
                        if (bIncluir) then
                           if (cNumCheque.AsInteger = 0) then
                              cNumCheque.AsInteger := Retorna_Sequencia_Cheque(StrZero(CCodConta.Text,4));
                     end
                  else
                     begin
                        uteis.aviso('Conta não encontrado com o nome informado !');
                        CCodConta.Text  := '';
                        CCodBanco.Text  := '';
                        Edt_Bco.Text    := '';
                        cNumCheque.Text := '';
                        CCodConta.SetFocus;
                     end;
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

procedure TFormImpCheque.Rad_FornecedorClick(Sender: tObject);
begin
   LayOutFavorecidos;
end;

procedure TFormImpCheque.LayOutFavorecidos;
begin
   if (Rad_Pagar.Checked) then
      begin
          GrpFavorecido.Caption       := 'Contas a Pagar';
          DBGridFavorecido.Visible    := True;
          DBGridCliente.Visible       := False;
          DBGridFornecedor.Visible    := False;
          Edt_Nome_Favorecido.Visible := False;
          {Desabilitar RadioButton}
          Rad_Forne.Enabled           := False;
          Rad_Razao.Enabled           := False;
          Rad_Fantasia.Enabled        := False;
          {Habilita RadioButton}
          Rad_Codigo.Enabled          := True;
          Rad_Favorecido.Enabled      := True;
          Rad_Vencto.Enabled          := True;
          {Rad_Default}
          Rad_Codigo.Checked          := True;
          //
          BitPesquisar.Enabled        := True;
          //
          cCodFavorecido.AsInteger    := 0;
          Edt_Favorecido.Left         := 192;
          Edt_Favorecido.Width        := 437;
      end
   else
   if (Rad_Fornecedor.Checked) then
      begin
          GrpFavorecido.Caption       := 'Fornecedor';
          DBGridFavorecido.Visible    := False;
          DBGridFornecedor.Visible    := True;
          DBGridCliente.Visible       := False;
          Edt_Nome_Favorecido.Visible := False;
          {Desabilitar RadioButton}
          Rad_Codigo.Enabled          := False;
          Rad_Vencto.Enabled          := False;
          Rad_Favorecido.Enabled      := False;
          Rad_Fantasia.Enabled        := False;
          Rad_Razao.Enabled           := False;
          {Habilita RadioButton}
          Rad_Forne.Enabled           := True;
          {Rad_Default}
          Rad_Forne.Checked           := True;
          //
          BitPesquisar.Enabled        := True;
          //
          cCodFavorecido.AsInteger    := 0;
          Edt_Favorecido.Left         := 192;
          Edt_Favorecido.Width        := 437;
      end
   else
   if (Rad_Clientes.Checked) then
      begin
          GrpFavorecido.Caption       := 'Clientes';
          DBGridFavorecido.Visible    := False;
          DBGridFornecedor.Visible    := False;
          DBGridCliente.Visible       := True;
          Edt_Nome_Favorecido.Visible := False;
          {Desabilitar RadioButton}
          Rad_Codigo.Enabled          := False;
          Rad_Vencto.Enabled          := False;
          Rad_Favorecido.Enabled      := False;
          Rad_Forne.Enabled           := False;
          {Habilita RadioButton}
          Rad_Razao.Enabled           := True;
          Rad_Fantasia.Enabled        := True;
          {Rad_Default}
          Rad_Razao.Checked           := True;
          //
          BitPesquisar.Enabled        := True;
          //
          cCodFavorecido.AsInteger    := 0;
          Edt_Favorecido.Left         := 192;
          Edt_Favorecido.Width        := 437;
      end
   else
   if (Rad_Outro.Checked) then
      begin
          GrpFavorecido.Caption       := 'Outros';
          DBGridFavorecido.Visible    := False;
          DBGridFornecedor.Visible    := False;
          DBGridCliente.Visible       := False;
          //
          Edt_Nome_Favorecido.Visible := True;
          {Desabilitar RadioButton}
          Rad_Vencto.Enabled          := False;
          Rad_Favorecido.Enabled      := False;
          Rad_Forne.Enabled           := False;
          Rad_Fantasia.Enabled        := False;
          Rad_Codigo.Enabled          := False;
          Rad_Razao.Enabled           := False;
          //
          Rad_Vencto.Checked          := False;
          Rad_Favorecido.Checked      := False;
          Rad_Forne.Checked           := False;
          Rad_Fantasia.Checked        := False;
          Rad_Codigo.Checked          := False;
          Rad_Razao.Checked           := False;
          //
          Pan_Pan_Todos.Visible       := False;
          Pan_Pagar_Codigo.Visible    := False;
          Pan_Pagar_Vencto.Visible    := False;
          Grp_Filtrar.Caption         := '';
          //
          BitPesquisar.Enabled        := False;
          //
          cCodFavorecido.AsInteger    := 0;
          Edt_Favorecido.Left         := 192;
          Edt_Favorecido.Width        := 437;
      end;
   Mostrar_Dados_Favorecidos;
end;

procedure TFormImpCheque.Transfere_Favorecido;
begin
   Limpar_Objetos;
   if (Rad_Pagar.Checked) then
      begin
         cCodFavorecido.AsInteger := SqlCdsPagarPAG_CODIGO.AsInteger;
         Edt_Favorecido.Text      := SqlCdsPagarFOR_RAZAO.AsString;
         CValor.Value             := SqlCdsPagarPPC_VLPARC.AsCurrency;
         DtBomPara.Date           := date; //SqlCdsPagarPPC_VENCTO.AsDateTime;
         Grp_Liquidar.Enabled     := True;
         Rad_Sim.Checked          := True;
      end
   else
   if (Rad_Fornecedor.Checked) then
      begin
         cCodFavorecido.AsInteger := SqlCdsFornecedorFOR_CODIGO.AsInteger;
         Edt_Favorecido.Text      := SqlCdsFornecedorFOR_RAZAO.AsString;
         if (DtBomPara.Date = 0) then
            DtBomPara.Date    := date;
         Grp_Liquidar.Enabled := False;
         Rad_Sim.Checked      := False;
         Rad_Nao.Checked      := True;
      end
   else
   if (Rad_Clientes.Checked) then
      begin
         cCodFavorecido.AsInteger := SqlCdsClientesCLI_CODIGO.AsInteger;
         Edt_Favorecido.Text      := SqlCdsClientesCLI_RAZAO.AsString;
         if (DtBomPara.Date = 0) then
            DtBomPara.Date    := date;
         Grp_Liquidar.Enabled := False;
         Rad_Sim.Checked      := False;
         Rad_Nao.Checked      := True;
      end
   else
   if (Rad_Outro.Checked) then
      begin
         cCodFavorecido.AsInteger := 0;
         Edt_Favorecido.Text      := Edt_Nome_Favorecido.Text;
         if (DtBomPara.Date = 0) then
            DtBomPara.Date    := date;
         Grp_Liquidar.Enabled := False;
         Rad_Sim.Checked      := False;
         Rad_Nao.Checked      := True;
      end;
   bIncluir := True;
   Desabilita_Objetos;
   Desabilita_Botao;
   DtEmissao.Date := date;
   CCodConta.SetFocus;
end;

procedure TFormImpCheque.DBGridFavorecidoDblClick(Sender: tObject);
begin
    Transfere_Favorecido;
end;

procedure TFormImpCheque.DBGridFavorecidoKeyPress(Sender: tObject;
  var Key: Char);
begin
   if (Key = #13) then
      begin
         Transfere_Favorecido;
         Key := #0;
      end;
end;

procedure TFormImpCheque.DBGridClienteKeyPress(Sender: tObject;
  var Key: Char);
begin
   if (Key = #13) then
      begin
         Transfere_Favorecido;
         Key := #0;
      end;
end;

procedure TFormImpCheque.DBGridClienteDblClick(Sender: tObject);
begin
   Transfere_Favorecido;
end;

procedure TFormImpCheque.Edt_Nome_FavorecidoExit(Sender: tObject);
begin
   if (ActiveControl <> nil)
   and(ActiveControl.Name <> 'Rad_Pagar')
   and(ActiveControl.Name <> 'Rad_Fornecedor')
   and(ActiveControl.Name <> 'Rad_Clientes')
   and(ActiveControl.Name <> 'Rad_Outro')
   and(ActiveControl.Name <> 'Bit_Imprimir')
   and(ActiveControl.Name <> 'Bit_Sair') then
      begin
         if (ActiveControl <> nil)
         and(ActiveControl.Name = 'DBGridCheques') and (Edt_Nome_Favorecido.Text = '') then
            exit
         else   
         if (Edt_Nome_Favorecido.Text <> '') then
            Transfere_Favorecido
         else
            begin
               uteis.aviso('Informe o Nome do Favorecido !');
               Edt_Nome_Favorecido.SetFocus;
            end;
      end;
end;

procedure TFormImpCheque.Desabilita_Botao;
begin
   Bit_Alterar.Enabled  := False;
   Bit_Excluir.Enabled  := False;
   Bit_Imprimir.Enabled := False;
   Bit_Sair.Enabled     := False;
   Bit_Gravar.Enabled   := True;
   Bit_Cancelar.Enabled := True;
   BotoesAcesso;
end;

procedure TFormImpCheque.Habilita_Botao;
begin
   Bit_Alterar.Enabled  := True;
   Bit_Excluir.Enabled  := True;
   Bit_Imprimir.Enabled := True;
   Bit_Sair.Enabled     := True;
   Bit_Gravar.Enabled   := False;
   Bit_Cancelar.Enabled := False;
   BotoesAcesso;
end;

procedure TFormImpCheque.Desabilita_Objetos;
begin
   Grp_Filtrar.Enabled    := False;
   GrpPesquisar.Enabled   := False;
   BitPesquisar.Enabled   := False;
   GrpTipo.Enabled        := False;
   GrpFavorecido.Enabled  := False;
   GrpCheques.Enabled     := False;
   GrpDadosCheque.Enabled := True;
end;

procedure TFormImpCheque.Habilita_Objetos;
begin
   Grp_Filtrar.Enabled    := True;
   GrpPesquisar.Enabled   := True;
   BitPesquisar.Enabled   := True;
   GrpTipo.Enabled        := True;
   GrpFavorecido.Enabled  := True;
   GrpCheques.Enabled     := True;
   GrpDadosCheque.Enabled := False;
end;

procedure TFormImpCheque.Limpar_Objetos;
begin
    CCodConta.AsInteger      := 0;
    CCodBanco.AsInteger      := 0;
    cCodFavorecido.AsInteger := 0;
    cNumCheque.AsInteger     := 0;
    Cdigito.AsInteger        := 0;
    DtEmissao.Date           := 0;
    DtBomPara.Date           := 0;
    CValor.Value             := 0;
    Edt_Obs.Text             := '';
    Edt_Favorecido.Text      := '';
    Edt_Bco.Text             := '';
    CbBanco.Text             := '';
    Rad_Sim.Checked          := False;
    Rad_Nao.Checked          := False;
end;

procedure TFormImpCheque.Focar_Objetos;
begin
   if (Rad_Pagar.Checked) then
      DBGridFavorecido.SetFocus
   else
   if (Rad_Fornecedor.Checked) then
      DBGridFornecedor.SetFocus
   else
   if (Rad_Clientes.Checked) then
      DBGridCliente.SetFocus
   else
   if (Rad_Outro.Checked) then
      Edt_Nome_Favorecido.SetFocus;
end;

procedure TFormImpCheque.LayOutPesquisa;
begin
   if (Rad_Codigo.Checked) then
      begin
         Pan_Pagar_Codigo.Visible := True;
         Pan_Pagar_Vencto.Visible := False;
         Pan_Pan_Todos.Visible    := False;
         Grp_Filtrar.Caption      := 'Informe o Código para Pesquisa';
         cNumLancto.SetFocus;
      end
   else
   if (Rad_Razao.Checked) then
      begin
         Pan_Pagar_Codigo.Visible    := False;
         Pan_Pagar_Vencto.Visible    := False;
         Pan_Pan_Todos.Visible       := True;
         Cb_Razao.Visible            := True;
         Cb_Favorecido.Visible       := False;
         Cb_Fornecedor.Visible       := False;
         Cb_Fantasia.Visible         := False;
         Grp_Filtrar.Caption         := 'Informe a Razão Social para Pesquisa';
         cCod_Pesquisa.DisplayFormat := '00000';
         cCod_Pesquisa.MaxLength     := 5;
         cCod_Pesquisa.AsInteger     := 99999;
         Cb_Razao.Text               := 'TODOS';
         Cb_Razao.ItemIndex          := 0;
         CbCliCod.ItemIndex          := 0;
         cCod_Pesquisa.SetFocus;
      end
   else
   if (Rad_Fantasia.Checked) then
      begin
         Pan_Pagar_Codigo.Visible    := False;
         Pan_Pagar_Vencto.Visible    := False;
         Pan_Pan_Todos.Visible       := True;
         Cb_Razao.Visible            := False;
         Cb_Favorecido.Visible       := False;
         Cb_Fornecedor.Visible       := False;
         Cb_Fantasia.Visible         := True;
         Grp_Filtrar.Caption         := 'Informe o Nome Fantasia para Pesquisa';
         cCod_Pesquisa.DisplayFormat := '00000';
         cCod_Pesquisa.MaxLength     := 5;
         cCod_Pesquisa.AsInteger     := 99999;
         Cb_Fantasia.Text            := 'TODOS';
         Cb_Fantasia.ItemIndex       := 0;
         CbFant.ItemIndex            := 0;
         cCod_Pesquisa.SetFocus;
      end
   else
   if (Rad_Forne.Checked) then
      begin
         Pan_Pagar_Codigo.Visible    := False;
         Pan_Pagar_Vencto.Visible    := False;
         Pan_Pan_Todos.Visible       := True;
         Cb_Razao.Visible            := False;
         Cb_Favorecido.Visible       := False;
         Cb_Fornecedor.Visible       := True;
         Cb_Fantasia.Visible         := False;
         Grp_Filtrar.Caption         := 'Informe o Fornecedor para Pesquisa';
         cCod_Pesquisa.DisplayFormat := '0000';
         cCod_Pesquisa.MaxLength     := 4;
         cCod_Pesquisa.AsInteger     := 9999;
         Cb_Fornecedor.Text          := 'TODOS';
         Cb_Fornecedor.ItemIndex     := 0;
         CbFor_Fav.ItemIndex         := 0;
         cCod_Pesquisa.SetFocus;
      end
   else
   if (Rad_Favorecido.Checked) then
      begin
         Pan_Pagar_Codigo.Visible    := False;
         Pan_Pagar_Vencto.Visible    := False;
         Pan_Pan_Todos.Visible       := True;
         Cb_Razao.Visible            := False;
         Cb_Favorecido.Visible       := True;
         Cb_Fornecedor.Visible       := False;
         Cb_Fantasia.Visible         := False;
         Grp_Filtrar.Caption         := 'Informe o Favorecido para Pesquisa';
         cCod_Pesquisa.DisplayFormat := '0000';
         cCod_Pesquisa.MaxLength     := 4;
         cCod_Pesquisa.AsInteger     := 9999;
         Cb_Favorecido.Text          := 'TODOS';
         Cb_Favorecido.ItemIndex     := 0;
         CbFor_Fav.ItemIndex         := 0;
         cCod_Pesquisa.SetFocus;
      end
   else
   if (Rad_Vencto.Checked) then
      begin
         Pan_Pagar_Codigo.Visible := False;
         Pan_Pagar_Vencto.Visible := True;
         Pan_Pan_Todos.Visible    := False;
         Grp_Filtrar.Caption      := 'Informe o Vencimento para Pesquisa';
         DataI.Date               := 0;
         DataF.Date               := 0;
         DataI.SetFocus;
      end;
end;

procedure TFormImpCheque.Rad_CodigoClick(Sender: tObject);
begin
   LayOutPesquisa;
end;

procedure TFormImpCheque.BitPesquisarClick(Sender: tObject);
begin
   if (Rad_Pagar.Checked)
   and(Rad_Codigo.Checked) then
      begin
         if (cNumLancto.AsInteger = 0) then
            begin
               uteis.aviso('Informe o Código do Lançamento !');
               cNumLancto.SetFocus;
               cNumLancto.SelectAll;
            end
         else
            Faz_Pesquisa;
      end
   else
   if (Rad_Pagar.Checked)
   and(Rad_Favorecido.Checked) then
      begin
         if (cCod_Pesquisa.AsInteger = 0) then
            begin
               uteis.aviso('Informe o Código do Favorecido !');
               cCod_Pesquisa.SetFocus;
               cCod_Pesquisa.SelectAll;
            end
         else
            Faz_Pesquisa;
      end
   else
   if (Rad_Pagar.Checked)
   and(Rad_Vencto.Checked) then
      begin
         if (DataI.Date = 0) then
            begin
               uteis.aviso('Informe a Data Inicial !');
               DataI.SetFocus;
               DataI.SelectAll;
            end
         else
            Faz_Pesquisa;
      end
   else
   if (Rad_Fornecedor.Checked)
   and(Rad_Forne.Checked) then
      begin
         if (cCod_Pesquisa.AsInteger = 0) then
            begin
               uteis.aviso('Informe o Código do Fornecedor !');
               cCod_Pesquisa.SetFocus;
               cCod_Pesquisa.SelectAll;
            end
         else
            Faz_Pesquisa;
      end
   else
   if (Rad_Clientes.Checked)
   and(Rad_Razao.Checked) then
      begin
         if (cCod_Pesquisa.AsInteger = 0) then
            begin
               uteis.aviso('Informe o Código do Cliente !');
               cCod_Pesquisa.SetFocus;
               cCod_Pesquisa.SelectAll;
            end
         else
            Faz_Pesquisa;
      end
   else
   if (Rad_Clientes.Checked)
   and(Rad_Fantasia.Checked) then
      begin
         if (cCod_Pesquisa.AsInteger = 0) then
            begin
               uteis.aviso('Informe o Código do Cliente !');
               cCod_Pesquisa.SetFocus;
               cCod_Pesquisa.SelectAll;
            end
         else
            Faz_Pesquisa;
      end;
end;

procedure TFormImpCheque.Faz_Pesquisa;
begin
   wSql1      := '';
   wSeleciona := '';
   wOrdem     := '';
   if (Rad_Pagar.Checked) then
      begin
         wSql1 := 'SELECT T1.PAG_REGISTRO,T1.PAG_CODIGO,T1.PPC_NUMER,T1.PPC_VLPARC,T1.PPC_VENCTO,T2.FOR_RAZAO FROM PAG_PC01 T1 JOIN FOR0000 T2 ON (T2.FOR_CODIGO = T1.FOR_CODIGO) ';
         if (Rad_Codigo.Checked) then
            begin
               if (cNumParc.AsInteger > 0) then
                  wSeleciona := 'WHERE T1.PPC_SITPAG = ''P'' AND T1.PAG_CODIGO = '''+StrZero(cNumLancto.Text,5)+''' AND T1.PPC_NUMER = '''+StrZero(cNumParc.Text,2)+''''
               else
                  wSeleciona := 'WHERE T1.PPC_SITPAG = ''P'' AND T1.PAG_CODIGO = '''+StrZero(cNumLancto.Text,5)+'''';
               wOrdem     := 'T1.PAG_CODIGO,T1.PPC_NUMER';
            end
         else
         if (Rad_Favorecido.Checked) then
            begin
               wSeleciona := 'WHERE T1.PPC_SITPAG = ''P'' AND T1.FOR_CODIGO = '''+StrZero(cCod_Pesquisa.Text,4)+'''';
               wOrdem     := 'T1.FOR_CODIGO';
            end
         else
         if (Rad_Vencto.Checked) then
            begin
               wSeleciona := 'WHERE T1.PPC_SITPAG = ''P'' AND T1.PPC_VENCTO BETWEEN '''+DataAmericana(DataI.Text)+''' AND '''+DataAmericana(DataF.Text)+'''';
               wOrdem     := 'T1.PPC_VENCTO';
            end;
         SqlCdsPagar.Close;
         SqlCdsPagar.PacketRecords := 10;
         SqlCdsPagar.CommandText := SQLDEF('PAGAR',wSql1,wSeleciona,wOrdem,'T1.');
         SqlCdsPagar.Open;
         if (not SqlCdsPagar.IsEmpty) then
            begin
               DBGridFavorecido.SetFocus;
            end
         else
            begin
               uteis.aviso('Lançamento não Localizado !');
               if (Rad_Codigo.Checked)
               or (Rad_Favorecido.Checked) then
                  cCod_Pesquisa.SetFocus
               else
               if (Rad_Vencto.Checked) then
                  DataI.SetFocus;
            end;
      end
   else
   if (Rad_Fornecedor.Checked) then
      begin
         if (Rad_Forne.Checked) then
            begin
               wSql1      := 'SELECT T1.FOR_CODIGO,T1.FOR_RAZAO,T1.CCT_CODIGO FROM FOR0000 T1 ';
               wSeleciona := 'WHERE T1.FOR_CODIGO = '''+StrZero(cCod_Pesquisa.Text,4)+'''';
               wOrdem     := 'T1.FOR_CODIGO';
               SqlCdsFornecedor.Close;
               SqlCdsFornecedor.PacketRecords := 10;
               SqlCdsFornecedor.CommandText := SQLDEF('FORNECEDORES',wSql1,wSeleciona,wOrdem,'T1.');
               SqlCdsFornecedor.Open;
               if (not SqlCdsFornecedor.IsEmpty) then
                  begin
                     DBGridFornecedor.SetFocus;
                  end
               else
                  begin
                     uteis.aviso('Fornecedor não encontrado com o código informado !');
                     cCod_Pesquisa.SetFocus;
                  end;
            end;
      end
   else
   if (Rad_Clientes.Checked) then
      begin
         wSql1      := 'SELECT T1.CLI_CODIGO,T1.CLI_RAZAO,T1.CLI_FANTASIA FROM CLI0000 T1 ';
         wSeleciona := 'WHERE T1.CLI_CODIGO = '''+StrZero(cCod_Pesquisa.Text,5)+'''';
         wOrdem     := 'T1.CLI_CODIGO';
         //
         SqlCdsClientes.Close;
         SqlCdsClientes.PacketRecords := 10;
         SqlCdsClientes.CommandText := SQLDEF('CLIENTES',wSql1,wSeleciona,wOrdem,'T1.');
         SqlCdsClientes.Open;
         if (not SqlCdsClientes.IsEmpty) then
            begin
               DBGridCliente.SetFocus;
            end
         else
            begin
               uteis.aviso('Cliente não localizado com o Código Informado !');
               cCod_Pesquisa.SetFocus;
            end;
      end;
end;

procedure TFormImpCheque.Mostrar_Dados_Favorecidos;
begin
   if (Rad_Pagar.Checked) then
      begin
         wSql1      := 'SELECT T1.PAG_REGISTRO,T1.PAG_CODIGO,T1.PPC_NUMER,T1.PPC_VLPARC,T1.PPC_VENCTO,T2.FOR_RAZAO FROM PAG_PC01 T1 JOIN FOR0000 T2 ON (T2.FOR_CODIGO = T1.FOR_CODIGO) ';
         wSeleciona := 'WHERE T1.PPC_SITPAG = ''P'' AND T1.PPC_IMP_CHEQUE = ''N''';
         wOrdem     := 'T1.PPC_VENCTO';
         SqlCdsPagar.Close;
         SqlCdsPagar.PacketRecords := 10;
         SqlCdsPagar.CommandText := SQLDEF('PAGAR',wSql1,wSeleciona,wOrdem,'T1.');
         SqlCdsPagar.Open;
         SqlCdsPagar.First;
      end
   else
   if (Rad_Fornecedor.Checked) then
      begin
         wSql1      := 'SELECT T1.FOR_CODIGO,T1.FOR_RAZAO,T1.CCT_CODIGO FROM FOR0000 T1 ';
         wSeleciona := '';
         wOrdem     := 'T1.FOR_RAZAO';
         SqlCdsFornecedor.Close;
         SqlCdsFornecedor.PacketRecords := 10;
         SqlCdsFornecedor.CommandText := SQLDEF('FORNECEDORES',wSql1,wSeleciona,wOrdem,'T1.');
         SqlCdsFornecedor.Open;
         SqlCdsFornecedor.First;
      end
   else
   if (Rad_Clientes.Checked) then
      begin
         wSql1      := 'SELECT T1.CLI_CODIGO,T1.CLI_RAZAO,T1.CLI_FANTASIA FROM CLI0000 T1 ';
         wSeleciona := '';
         wOrdem     := 'T1.CLI_RAZAO';
         SqlCdsClientes.Close;
         SqlCdsClientes.PacketRecords := 10;
         SqlCdsClientes.CommandText := SQLDEF('CLIENTES',wSql1,wSeleciona,wOrdem,'T1.');
         SqlCdsClientes.Open;
         SqlCdsClientes.First;
      end
   else
   if (Rad_Outro.Checked) then
      begin
         Edt_Nome_Favorecido.SetFocus;
      end;
end;

procedure TFormImpCheque.Localiza_Forn_Favo;
Var
  sCodFor : String[4];
begin
   sCodFor := '';
   if (Rad_Pagar.Checked)
   and(Rad_Favorecido.Checked) then
      begin
         Screen.Cursor := crHourGlass;
         CbFor_Fav.ItemIndex := Cb_Favorecido.ItemIndex;
         sCodFor             := Copy(CbFor_Fav.Text,1,4);
         if SqlCds_Cb_For_Favo.Locate('FOR_CODIGO',sCodFor,[])=true then
            cCod_Pesquisa.Text := SqlCds_Cb_For_FavoFOR_CODIGO.AsString
         else
            cCod_Pesquisa.AsInteger := 9999;
         Screen.Cursor   := crDefault;
      end
   else
   if (Rad_Fornecedor.Checked)
   and(Rad_Forne.Checked) then
      begin
         Screen.Cursor := crHourGlass;
         CbFor_Fav.ItemIndex := Cb_Fornecedor.ItemIndex;
         sCodFor := Copy(CbFor_Fav.Text,1,4);
         if SqlCds_Cb_For_Favo.Locate('FOR_CODIGO',sCodFor,[])=true then
            cCod_Pesquisa.Text := SqlCds_Cb_For_FavoFOR_CODIGO.AsString
         else
            cCod_Pesquisa.AsInteger := 9999;
         Screen.Cursor   := crDefault;
      end;
end;

procedure TFormImpCheque.Cb_FornecedorClick(Sender: tObject);
begin
   Localiza_Forn_Favo;
end;

procedure TFormImpCheque.Cb_FavorecidoClick(Sender: tObject);
begin
   Localiza_Forn_Favo;
end;

procedure TFormImpCheque.Localiza_Razao_Fantasia;
Var
  sCodCli,
  sCodFan :String[5];
begin
   if (Rad_Clientes.Checked)
   and(Rad_Razao.Checked) then
      begin
         Screen.Cursor := crHourGlass;
         CbCliCod.ItemIndex := Cb_Razao.ItemIndex;
         sCodCli := Copy(CbCliCod.Text,1,5);
         if SqlCds_Cb_Clientes.Locate('CLI_CODIGO',sCodCli,[])=true then
            cCod_Pesquisa.Text := SqlCds_Cb_ClientesCLI_CODIGO.AsString
         else
            cCod_Pesquisa.AsInteger := 99999;
         Screen.Cursor   := crDefault;
      end
   else
   if (Rad_Clientes.Checked)
   and(Rad_Fantasia.Checked) then
      begin
         Screen.Cursor := crHourGlass;
         CbFant.ItemIndex := Cb_Fantasia.ItemIndex;
         sCodFan := Copy(CbFant.Text,1,5);
         if SqlCds_Cb_Clientes.Locate('CLI_CODIGO',sCodFan,[])=true then
            cCod_Pesquisa.Text := SqlCds_Cb_ClientesCLI_CODIGO.AsString
         else
            cCod_Pesquisa.AsInteger := 99999;
         Screen.Cursor   := crDefault;
      end;
end;

procedure TFormImpCheque.Cb_FantasiaClick(Sender: tObject);
begin
   Localiza_Razao_Fantasia;
end;

procedure TFormImpCheque.Cb_RazaoClick(Sender: tObject);
begin
   Localiza_Razao_Fantasia;
end;

procedure TFormImpCheque.cCod_PesquisaExit(Sender: tObject);
begin
   if (Rad_Pagar.Checked)
   and(Rad_Favorecido.Checked) then
      begin
         if (cCod_Pesquisa.AsInteger <> 9999) then
            begin
               SqlCds_Cb_For_Favo.Locate('FOR_CODIGO',StrZero(cCod_Pesquisa.Text,4),[]);
               Cb_Favorecido.Text := SqlCds_Cb_For_FavoFOR_RAZAO.AsString;
            end;
      end
   else
   if (Rad_Fornecedor.Checked)
   and(Rad_Forne.Checked) then
      begin
         if (cCod_Pesquisa.AsInteger <> 9999) then
            begin
               SqlCds_Cb_For_Favo.Locate('FOR_CODIGO',StrZero(cCod_Pesquisa.Text,4),[]);
               Cb_Fornecedor.Text := SqlCds_Cb_For_FavoFOR_RAZAO.AsString;
            end;
      end
   else
   if (Rad_Clientes.Checked)
   and(Rad_Razao.Checked) then
      begin
         if (cCod_Pesquisa.AsInteger <> 99999) then
            begin
               SqlCds_Cb_Clientes.Locate('CLI_CODIGO',StrZero(cCod_Pesquisa.Text,5),[]);
               Cb_Razao.Text := SqlCds_Cb_ClientesCLI_RAZAO.AsString;
            end;
      end
   else
   if (Rad_Clientes.Checked)
   and(Rad_Fantasia.Checked) then
      begin
         if (cCod_Pesquisa.AsInteger <> 99999) then
            begin
               SqlCds_Cb_Clientes.Locate('CLI_CODIGO',StrZero(cCod_Pesquisa.Text,5),[]);
               Cb_Fantasia.Text := SqlCds_Cb_ClientesCLI_FANTASIA.AsString;
            end;
      end;
end;

procedure TFormImpCheque.DataIExit(Sender: tObject);
begin
    if (DataI.Date > 0) then
       begin
          DataI.Text := PreenchaData(DataI.Text);
          if not TestaDataStr(DataI.Text) then
             DataI.setfocus;
       end;
end;

procedure TFormImpCheque.DataFExit(Sender: tObject);
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

procedure TFormImpCheque.Bit_GravarClick(Sender: tObject);
begin
   if (CCodConta.AsInteger = 0) then
      begin
         uteis.aviso('Informe a Conta !');
         CCodConta.SetFocus;
      end
   else
   if (cNumCheque.AsInteger = 0) then
      begin
         uteis.aviso('Informe o Número do Cheque !');
         cNumCheque.SetFocus;
      end
   else
   if (DtEmissao.Date = 0) then
      begin
         uteis.aviso('Informe a Data de Emissão do Cheque !');
         DtEmissao.SetFocus;
      end
   else
   if (CValor.Value = 0) then
      begin
         uteis.aviso('Informe o Valor do Cheque !');
         CValor.SetFocus;
      end
   else
      Gravar_Cheque;
end;

procedure TFormImpCheque.Gravar_Cheque;
Var
  sTipo_Favorecido,
  sCodi_Favorecido,
  sLiquidar : String;
  iCodPagar : Integer;
begin
   try
     iCodPagar        := 0;
     sTipo_Favorecido := '';
     sCodi_Favorecido := '';
     sLiquidar        := '';
     //
     sCodi_Favorecido := iif(Rad_Clientes.Checked,StrZero(cCodFavorecido.Text,5),StrZero(cCodFavorecido.Text,4));
     sTipo_Favorecido := iif(Rad_Pagar.Checked,'P',
                         iif(Rad_Fornecedor.Checked,'F',
                         iif(Rad_Clientes.Checked,'C','O')));
     sLiquidar        := iif(Rad_Sim.Checked,'S','N');

     iCodPagar        :=  iif(Rad_Pagar.Checked,SqlCdsPagarPAG_REGISTRO.AsInteger,0);
     if (bIncluir = true) then
        begin
           wSql1 := 'Insert into CHQ0000 ('+
                    'EMP_CODIGO,'+
                    'BAN_CODIGO,'+
                    'CHQ_EMISSAO,'+
                    'CHQ_BOMPARA,'+
                    'CHQ_NUMERO,'+
                    'CHQ_NUMERO_DV,'+
                    'CHQ_VALOR,'+
                    'CHQ_SITUACAO,'+
                    'CHQ_IMP,'+
                    'CHQ_TIPO_FAVORECIDO,'+
                    'CHQ_CODIGO_FAVORECIDO,'+
                    'CHQ_NOME_FAVORECIDO,'+
                    'CHQ_OBSERVACAO,'+
                    'CHQ_LIQUIDAR,'+
                    'CHQ_PAG_REGISTRO,'+
                    'CHQ_EXCLUSAO,'+
                    'USU_CODIGO,'+
                    'USU_LOGIN) ';
           wSql2 := 'Values ('''+dbInicio.Empresa.EMP_CODIGO+''','''+
                                 StrZero(CCodConta.Text,4)+''','''+
                                 DataAmericana(DtEmissao.Text)+''','''+
                                 DataAmericana(DtBomPara.Text)+''','''+
                                 StrZero(cNumCheque.Text,10)+''','''+
                                 Cdigito.Text+''','''+
                                 ValorAmericano(CValor.Text)+''','''+
                                 'P'+''','''+
                                 'N'+''','''+
                                 sTipo_Favorecido+''','''+
                                 sCodi_Favorecido+''','''+
                                 Edt_Favorecido.Text+''','''+
                                 Edt_Obs.Text+''','''+
                                 sLiquidar+''','+
                                 IntToStr(iCodPagar)+','''+
                                 'N'+''','''+
                                 dbInicio.Usuario.Codigo+''','''+
                                 dbInicio.Usuario.nome+''')';
           //
        end
     else
        begin
           wSql1 := 'Update CHQ0000 SET '+
                    'BAN_CODIGO = '''+StrZero(CCodConta.Text,4)+''','+
                    'CHQ_EMISSAO = '''+DataAmericana(DtEmissao.Text)+''','+
                    'CHQ_BOMPARA = '''+DataAmericana(DtBomPara.Text)+''','+
                    'CHQ_NUMERO = '''+StrZero(cNumCheque.Text,10)+''','+
                    'CHQ_NUMERO_DV = '''+Cdigito.Text+''','+
                    'CHQ_VALOR = '''+ValorAmericano(CValor.Text)+''','+
                    'CHQ_SITUACAO = ''P'','+
                    'CHQ_IMP = ''N'','+
                    'CHQ_TIPO_FAVORECIDO = '''+sTipo_Favorecido+''','+
                    'CHQ_CODIGO_FAVORECIDO = '''+sCodi_Favorecido+''','+
                    'CHQ_NOME_FAVORECIDO = '''+Edt_Favorecido.Text+''','+
                    'CHQ_OBSERVACAO = '''+Edt_Obs.Text+''','+
                    'CHQ_LIQUIDAR = '''+sLiquidar+'''';
           //
           wSql2 := ' WHERE CHQ_REGISTRO = '''+SqlCdsChequeCHQ_REGISTRO.AsString+'''';
           //
        end;
     //
     DataCadastros.sqlUpdate.Close;
     DataCadastros.SqlUpdate.sql.text :=wSql1+wSql2;
     DataCadastros.sqlUpdate.Execsql;
     {Atualiza a sequencia do cheque}
     if (bIncluir) then
        begin
           Atualiza_Sequencia_Cheques(StrZero(CCodConta.Text,4));
        end;
     //
     if (Rad_Pagar.Checked) then
        begin
           if (bIncluir) then
              Quitar_Titulo_Pagar(SqlCdsPagarPAG_REGISTRO.AsString,
                                  sLiquidar)
           else
              Quitar_Titulo_Pagar(SqlCdsChequeCHQ_PAG_REGISTRO.AsString,
                                  sLiquidar)
        end
     else
     if (Rad_Fornecedor.Checked) then
        begin
           if (bIncluir) then
              begin
                 Lancar_Movimento_Pagar;
              end;
        end;
     //
     bIncluir := False;
     Habilita_Objetos;
     Habilita_Botao;
     Limpar_Objetos;
     if (Rad_Outro.Checked) then
        Edt_Nome_Favorecido.Clear;
     Focar_Objetos;
     Mostrar_Dados_Favorecidos;
     SqlCdsCheque.Refresh;
   except
     on E:EDataBaseError do
        begin
           uteis.erro  (pchar('Erro ao gravar o Cheque !'+#13#10+
                      'Mensagem erro: '+e.message));
        end;
   end;
end;

procedure TFormImpCheque.Buscar_Cheque_para_Imprimir;
begin
   try
     wSql1      := 'SELECT T1.*,T2.BAN_APELIDO FROM CHQ0000 T1 LEFT JOIN BAN0000 T2 ON (T2.BAN_CODIGO = T1.BAN_CODIGO) ';
     wSeleciona := 'WHERE T1.CHQ_IMP = ''N'' AND T1.CHQ_EXCLUSAO = ''N''';
     wOrdem     := 'T1.CHQ_EMISSAO,T1.BAN_CODIGO,T1.CHQ_NUMERO';
     //
     SqlCdsCheque.Close;
     SqlCdsCheque.CommandText := SQLDEF('BANCOS',wSql1,wSeleciona,wOrdem,'T1.');
     SqlCdsCheque.Filtered    := False;
     SqlCdsCheque.Filter      := '';
     SqlCdsCheque.Filtered    := True;
     SqlCdsCheque.Open;
     SqlCdsCheque.First;
     if (not SqlCdsCheque.IsEmpty) then
        begin
           Atribuir_Dados_Cheque_Objetos;
        end;
   except
     on E:EDataBaseError do
       begin
          uteis.erro  (pchar('Erro ao buscar os cheques para Impressão !'+#13#10+
                     'Mensagem erro: '+e.message));
       end;
   end;
end;


procedure TFormImpCheque.Atribuir_Dados_Cheque_Objetos;
begin
   CCodConta.Text       := SqlCdsChequeBAN_CODIGO.AsString;
   CbBanco.Text         := SqlCdsChequeBAN_APELIDO.AsString;
   cCodFavorecido.Text  := SqlCdsChequeCHQ_CODIGO_FAVORECIDO.Text;
   Edt_Favorecido.Text  := SqlCdsChequeCHQ_NOME_FAVORECIDO.Text;
   cNumCheque.Text      := SqlCdsChequeCHQ_NUMERO.AsString;
   Cdigito.Text         := SqlCdsChequeCHQ_NUMERO_DV.AsString;
   DtEmissao.Text       := SqlCdsChequeCHQ_EMISSAO.AsString;
   DtBomPara.Text       := SqlCdsChequeCHQ_BOMPARA.AsString;
   CValor.Value         := SqlCdsChequeCHQ_VALOR.AsCurrency;
   Edt_Obs.Text         := SqlCdsChequeCHQ_OBSERVACAO.AsString;
   if (SqlCdsChequeCHQ_LIQUIDAR.AsString = 'S') then
      Rad_Sim.Checked := True
   else
      Rad_Nao.Checked := True;
   BuscaConta('C');
   //
end;

procedure TFormImpCheque.SqlCdsChequeCalcFields(DataSet: TDataSet);
begin
   SqlCdsChequeCC_NUM_CHEQUE.AsString := SqlCdsChequeCHQ_NUMERO.AsString+'-'+SqlCdsChequeCHQ_NUMERO_DV.AsString;  
end;

procedure TFormImpCheque.Bit_AlterarClick(Sender: tObject);
begin
   if (CCodConta.AsInteger > 0) then
      begin
         if (SqlCdsChequeCHQ_EXCLUSAO.AsString = 'N') then
            begin
               bIncluir := False;
               Desabilita_Objetos;
               Desabilita_Botao;
               CCodConta.SetFocus;
            end
         else
            begin
               uteis.aviso('Não pode alterar um cheque excluído !');
               DBGridCheques.SetFocus;
            end;
      end
   else
      begin
         uteis.aviso('Selecione o Cheque para alteração !');
         DBGridCheques.SetFocus;
      end;
end;

procedure TFormImpCheque.FormKeyPress(Sender: tObject; var Key: Char);
begin
   if (Key = #27) then
      begin
         Limpar_Objetos;
         Key := #0;
      end;
end;

procedure TFormImpCheque.Quitar_Titulo_Pagar(sRegistro, sQuita: String);
begin
   try
     if (sQuita = 'S') then
        begin
           wSql1 := 'Update PAG_PC01 SET '+
                    'BAN_CODIGO = '''+StrZero(CCodConta.Text,4)+''','+
                    'PPC_PAGTO = '''+DataAmericana(DtEmissao.Text)+''','+
                    'PPC_VLPAGO = '''+ValorAmericano(CValor.Text)+''','+
                    'PPC_FORMA = ''C'','+
                    'PPC_SITPAG = ''L'','+
                    'PPC_IMP_CHEQUE = ''S'','+
                    'PPC_STATUS = ''Liquidada'','+
                    'PPC_NUM_CHEQUE = '''+StrZero(cNumCheque.Text,10)+''','+
                    'PPC_NUM_CHEQUE_DV = '''+Cdigito.Text+'''';
        end
     else
        begin
           wSql1 := 'Update PAG_PC01 SET '+
                    'PPC_PAGTO = Null,'+
                    'PPC_NUM_CHEQUE = Null,'+
                    'PPC_NUM_CHEQUE_DV = Null,'+
                    'PPC_VLPAGO = ''0.00'','+
                    'PPC_FORMA = ''C'','+
                    'PPC_SITPAG = ''P'','+
                    'PPC_IMP_CHEQUE = ''S'','+
                    'PPC_STATUS = ''Pendente''';
        end;
     //
     wSql2 := 'WHERE PAG_REGISTRO = '''+sRegistro+'''';
     //
     DataCadastros.sqlUpdate.Close;
     DataCadastros.SqlUpdate.sql.text :=wSql1+wSql2;
     DataCadastros.sqlUpdate.Execsql;
   except
     on E:EDataBaseError do
        begin
           uteis.erro  (pchar('Erro ao quitar o Título no Contas à Pagar !'+#13#10+
                      'Mensagem erro: '+e.message));
        end;
   end;
end;

procedure TFormImpCheque.Excluir_Cheque(sRegistroCheque: String);
begin
   try
     wSql1 := 'Update CHQ0000 set CHQ_EXCLUSAO = ''S'','+
              'CHQ_MOTIVO_EXCLUSAO = '''+FrmMotivo.Edt_Motivo.Text+''','+
              'CHQ_DATA_EXCLUSAO = '''+DataAmericana(DateToStr(now))+''','+
              'CHQ_HORA_EXCLUSAO = '''+TimeToStr(now)+''','+
              'USU_CODIGO_EXCLUSAO = '''+dbInicio.Usuario.Codigo+''','+
              'USU_LOGIN_EXCLUSAO = '''+dbInicio.Usuario.nome+'''';
     wSql2 := 'where CHQ_REGISTRO = '''+sRegistroCheque+'''';
     //
     DataCadastros.sqlUpdate.Close;
     DataCadastros.SqlUpdate.sql.text :=wSql1+wSql2;
     DataCadastros.sqlUpdate.Execsql;
   except
     on E:EDataBaseError do
        begin
           uteis.erro  (pchar('Erro ao excluir o cheque !'+#13#10+
                      'Mensagem erro: '+e.message));
        end;
   end;
end;

procedure TFormImpCheque.Liberar_Titulo_Cheque(sRegistroPagar: String);
begin
   try
     wSql1 := 'Update PAG_PC01 SET '+
              'PPC_PAGTO = Null,'+
              'PPC_NUM_CHEQUE = Null,'+
              'PPC_NUM_CHEQUE_DV = Null,'+
              'PPC_VLPAGO = ''0.00'','+
              'PPC_FORMA = ''C'','+
              'PPC_SITPAG = ''P'','+
              'PPC_IMP_CHEQUE = ''N'','+
              'PPC_STATUS = ''Pendente''';
     //
     wSql2 := 'WHERE PAG_REGISTRO = '''+sRegistroPagar+'''';
     //
     DataCadastros.sqlUpdate.Close;
     DataCadastros.SqlUpdate.sql.text :=wSql1+wSql2;
     DataCadastros.sqlUpdate.Execsql;
   except
     on E:EDataBaseError do
        begin
           uteis.erro  (pchar('Erro ao quitar o Título no Contas à Pagar !'+#13#10+
                      'Mensagem erro: '+e.message));
        end;
   end;
end;

procedure TFormImpCheque.Bit_ExcluirClick(Sender: tObject);
begin
   if (SqlCdsChequeCHQ_EXCLUSAO.AsString = 'N') then
      begin
         if (CCodConta.AsInteger > 0) then
            begin
               if (SqlCdsChequeCHQ_SITUACAO.AsString = 'L') then
                  begin
                     messagebeep($ffff);
                     uteis.aviso('Não posso excluir um Cheque Liquidado !');
                  end
               else
                  begin
                     if (uteis.confirmacao ( ('Confirma a exclusão do Cheque ?'+#13#10+
                                           'Conta  : '+SqlCdsChequeBAN_CODIGO.AsString+'-'+SqlCdsChequeBAN_APELIDO.AsString+#13#10+
                                           'Numero : '+SqlCdsChequeCHQ_NUMERO.AsString+'-'+SqlCdsChequeCHQ_NUMERO_DV.AsString+#13#10+
                                           'Emissão: '+SqlCdsChequeCHQ_EMISSAO.AsString+#13#10+
                                           'Valor  : '+SqlCdsChequeCHQ_VALOR.AsString+#13#10+#13#10))= MrYes) Then
                        begin
                           try
                             try
                               FrmMotivo := TFrmMotivo.Create(Application);
                               FrmMotivo.Edt_Motivo.MaxLength := 30;
                               FrmMotivo.ShowModal;
                             finally
                                if (bConfirmar_Exclusao_cheque) then
                                   begin
                                      Screen.cursor :=crHourglass;
                                      if (Rad_Pagar.Checked) then
                                         begin
                                            Liberar_Titulo_Cheque(SqlCdsChequeCHQ_PAG_REGISTRO.AsString);
                                         end;
                                      Excluir_Cheque(SqlCdsChequeCHQ_REGISTRO.AsString);
                                      Screen.Cursor := crDefault;
                                      SqlCdsCheque.Refresh;
                                   end;
                             end;
                           except
                              //beep;
                              uteis.erro  ('Ocorreu um erro na criação do formulário!');
                           end;
                        end;
                     //
                     Mostrar_Dados_Favorecidos;
                     Limpar_Objetos;
                     DBGridCheques.SetFocus;
                  end;
            end
         else
            begin
               uteis.aviso('Selecione o Cheque para exlcusão !');
               DBGridCheques.SetFocus;
            end;
      end
   else
      begin
         //beep;
         uteis.aviso('Registro já excluído !');
      end;
end;

procedure TFormImpCheque.Lancar_Movimento_Pagar;
Var
  sCodPagar : String;
begin
   try
     if (bIncluir) then
        begin
           {Pega o Ultimo Codigo no Sequenciador do (Pagar)}
           sCodPagar := SequenciadorPRC(DataCadastros.SQLConnection1,dbInicio.Empresa.EMP_CODIGO, 'PAG0000', 'PAG_CODIGO', 0);
           sCodPagar := StrZero(sCodPagar,5);
           {Verifica o Codigo nao existe no contas a pagar}
           DataCadastros.sqlUpdate.Close;
           DataMovimento.CdsPagar.close;
           DataMovimento.CdsPagar.CommandText := SQLDEF('PAGAR','Select P1.* from PAG0000 P1 ','where P1.PAG_CODIGO = '''+sCodPagar+'''','P1.PAG_CODIGO','P1.');
           DataMovimento.CdsPagar.Open;
           if DataMovimento.CdsPagar.IsEmpty = true then
              begin
                  DataMovimento.CdsPagar.Insert;
                  DataMovimento.CdsPagarPAG_CODIGO.AsString   := sCodPagar;
                  DataMovimento.CdsPagarPAG_NUMDOC.AsString   := StrZero(cNumCheque.Text,10)+'-'+Cdigito.Text;
                  DataMovimento.CdsPagarPAG_DTEMIS.AsString   := DtEmissao.Text;
                  DataMovimento.CdsPagarFOR_CODIGO.AsString   := StrZero(cCodFavorecido.Text,4);
                  DataMovimento.CdsPagarPAG_VLNOTA.AsCurrency := CValor.Value;
                  DataMovimento.CdsPagarPAG_TIPO.AsString     := 'CH';
                  DataMovimento.CdsPagarPAG_PREVISAO.AsString := 'N';
                  DataMovimento.CdsPagarPAG_EXCLUSAO.AsString := 'N';
                  DataMovimento.CdsPagarPAG_OBS.AsString      := Edt_Obs.Text;
                  DataMovimento.CdsPagarCCT_CODIGO.AsString   := SqlCdsFornecedorCCT_CODIGO.AsString;
                  DataMovimento.CdsPagarOPV_CODIGO.AsInteger  := 7;
                  DataMovimento.CdsPagarEmp_Codigo.AsString   := dbInicio.Empresa.EMP_CODIGO;
                  DataMovimento.CdsPagar.ApplyUpdates(0);
                  {Inserir a parcela na tabela PAG_PC01}
                  wSeleciona := ' where P1.PAG_CODIGO = '''+sCodPagar+'''';
                  DataMovimento.CdsPagarParc.Close;
                  DataMovimento.CdsPagarParc.CommandText := SQLDEF('PAGAR','select P1.*,BAN_APELIDO from PAG_PC01 P1 LEFT JOIN BAN0000 B1 ON P1.BAN_CODIGO = B1.BAN_CODIGO ',wSeleciona,'P1.PAG_CODIGO,P1.PPC_NUMER','P1.');
                  DataMovimento.CdsPagarParc.Open;
                  if (DataMovimento.CdsPagarParc.IsEmpty = true) then
                     begin
                         DataMovimento.CdsPagarParc.Insert;
                         DataMovimento.CdsPagarParcPAG_CODIGO.AsString        := sCodPagar;
                         DataMovimento.CdsPagarParcCCT_CODIGO.AsString        := '7';
                         DataMovimento.CdsPagarParcPPC_NPARCELAS.AsInteger    := 1;
                         DataMovimento.CdsPagarParcPPC_VLPARC.AsCurrency      := CValor.Value;
                         DataMovimento.CdsPagarParcPPC_VLPAGO.AsCurrency      := CValor.Value;
                         DataMovimento.CdsPagarParcCCT_CODIGO.AsString        := SqlCdsFornecedorCCT_CODIGO.AsString;
                         DataMovimento.CdsPagarParcPPC_SITPAG.AsString        := 'L';
                         DataMovimento.CdsPagarParcPPC_STATUS.AsString        := 'Liquidada';
                         DataMovimento.CdsPagarParcPPC_FORMA.AsString         := 'C';
                         DataMovimento.CdsPagarParcPPC_PREVISAO.AsString      := 'N';
                         DataMovimento.CdsPagarParcPPC_EXCLUSAO.AsString      := 'N';
                         DataMovimento.CdsPagarParcPPC_IMP_CHEQUE.AsString    := 'S';
                         DataMovimento.CdsPagarParcBAN_CODIGO.AsString        := StrZero(CCodConta.Text,4);
                         DataMovimento.CdsPagarParcPPC_NUM_CHEQUE.AsString    := StrZero(cNumCheque.Text,10);
                         DataMovimento.CdsPagarParcPPC_NUM_CHEQUE_DV.AsString := Cdigito.Text;
                         DataMovimento.CdsPagarParcPPC_VENCTO.AsDateTime      := DtBomPara.Date;
                         DataMovimento.CdsPagarParcFOR_CODIGO.AsString        := StrZero(cCodFavorecido.Text,4);
                         DataMovimento.CdsPagarParcPPC_DTEMIS.AsDateTime      := DtEmissao.Date;
                         DataMovimento.CdsPagarParcPPC_PAGTO.AsDateTime       := DtEmissao.Date;
                         DataMovimento.CdsPagarParcPAG_NUMDOC.AsString        := StrZero(cNumCheque.Text,10)+'-'+Cdigito.Text;
                         DataMovimento.CdsPagarParcEmp_CODIGO.AsString        := dbInicio.Empresa.EMP_CODIGO;
                         DataMovimento.CdsPagarParc.ApplyUpdates(0);
                     end;
              end;
        end;
   except
     on E:EDataBaseError do
        begin
           uteis.erro  (pchar('Erro ao inserir movimento no Contas à Pagar !'+#13#10+
                      'Mensagem erro: '+e.message));
        end;
   end;
end;

function TFormImpCheque.Verifica_Cheque_Mesmo_Banco: Boolean;
Var
  sBanco : String;
begin
   try
     SqlCdsCheque.DisableControls;
     SqlCdsCheque.First;
     Result := True;
     sBanco := SqlCdsChequeBAN_CODIGO.AsString;
     while (not SqlCdsCheque.eof) do
      begin
         if (SqlCdsChequeBAN_CODIGO.AsString <> sBanco) then
            Result := False;
         SqlCdsCheque.Next;
      end;
     SqlCdsCheque.First;
     SqlCdsCheque.EnableControls;
   except
     on E:EDataBaseError do
        begin
           uteis.erro  (pchar('Erro ao verificar o Mesmo Banco !'+#13#10+
                      'Mensagem erro: '+e.message));
        end;
   end;
end;

procedure TFormImpCheque.Bit_ImprimirClick(Sender: tObject);
begin
   if (Verifica_Selecao_Cheque) then
      begin
         SqlCdsCheque.Filtered := False;
         SqlCdsCheque.Filter   := 'IC_SELECAO = True';
         SqlCdsCheque.Filtered := True;
         SqlCdsCheque.First;
         if (Verifica_Cheque_Mesmo_Banco) then
            begin
               Imprimir_Cheque;
               Limpar_Objetos;
            end
         else
            begin
               uteis.aviso('Selecione os Cheques da Mesma Conta !');
               Marcar_Todos_Cheques;
               DBGridCheques.SetFocus;
            end;
      end
   else
      begin
         uteis.aviso('Selecione os Cheques para Impressão !');
         DBGridCheques.SetFocus;
      end;
end;

procedure TFormImpCheque.Mudar_Flag_Imp_Cheque(sRegistroCheque: String);
begin
   try
     wSql1 := 'Update CHQ0000 SET CHQ_IMP = ''S'' ';
     //
     wSql2 := 'WHERE CHQ_REGISTRO = '''+sRegistroCheque+'''';
     //
     DataCadastros.sqlUpdate.Close;
     DataCadastros.SqlUpdate.sql.text :=wSql1+wSql2;
     DataCadastros.sqlUpdate.Execsql;
   except
    on E:EDataBaseError do
      begin
         uteis.erro  (pchar('Erro ao Atualizar o Flag da Impressão do Cheque !'+#13#10+
                    'Mensagem Erro: '+e.message));
      end;
   end;
end;

procedure TFormImpCheque.Imprimir_Cheque;
Var
  sValorExtenso,
  sLinha_ext1,
  sLinha_ext2,
  sDia,
  sMes,
  sAno    :String;
  iQtde_Caracter, I :Integer;
begin
   try
     {Seleciona a Configuraçao do Cheque}
     wSQL1      := 'SELECT T1.* FROM SYS_CHEQUE T1 ';
     wSeleciona := 'WHERE BAN_CODIGO = '''+SqlCdsChequeBAN_CODIGO.AsString+'''';
     //
     SqlCfeCheque.Close;
     SqlCfeCheque.CommandText := SQLDEF('BANCOS',wSql1,wSeleciona,'','T1.');
     SqlCfeCheque.Open;
     if (not SqlCfeCheque.IsEmpty) then
        begin
           iQtde_Caracter := SqlCfeChequeSCH_QTDE_CARACTERES.AsInteger;
           try
             try
               RDCheque.TamanhoQteLinhas      := SqlCfeChequeSCH_QTDE_LINHAS.AsInteger;
               RDCheque.FonteTamanhoPadrao    := SqlCfeChequeSCH_FONTE.AsVariant;
               RDCheque.OpcoesPreview.Preview := True;
               RDCheque.Abrir;
               if RDCheque.Setup = False then
                  exit;
               //
               SqlCdsCheque.First;
               while not (SqlCdsCheque.Eof) do
                begin
                   sValorExtenso := Extenso(SqlCdsChequeCHQ_VALOR.AsCurrency);
                   sLinha_ext1   := Copy(sValorExtenso,01,iQtde_Caracter);
                   sLinha_ext2   := TrimLeft(Copy(sValorExtenso,(iQtde_Caracter+1),iQtde_Caracter));
                   sDia          := Copy(SqlCdsChequeCHQ_EMISSAO.AsString,1,2);
                   sMes          := MesExtenso(StrToInt(Copy(SqlCdsChequeCHQ_EMISSAO.AsString,4,2)));
                   if (SqlCfeChequeSCH_TAM_ANO.AsInteger = 4) then
                      sAno       := Copy(SqlCdsChequeCHQ_EMISSAO.AsString,7,4)
                   else
                      sAno       := Copy(SqlCdsChequeCHQ_EMISSAO.AsString,9,2);
                   {Valor Numero R$ 199,00}
                   if (Copy(SqlCfeChequeSCH_VALOR.Asstring,7,1) = 'S') then
                      RDCheque.ImpF  (StrToInt(COPY(SqlCfeChequeSCH_VALOR.AsString,1,3)),StrToInt(COPY(SqlCfeChequeSCH_VALOR.AsString,4,3)),'('+FormatFloat('#,##0.00',SqlCdsChequeCHQ_VALOR.AsCurrency)+')',[]);
                   {Valor por extenso Linha 1}
                   if (Copy(SqlCfeChequeSCH_LINHA1_EXT.Asstring,7,1) = 'S') then
                      RDCheque.ImpF (StrToInt(COPY(SqlCfeChequeSCH_LINHA1_EXT.AsString,1,3)),StrToInt(COPY(SqlCfeChequeSCH_LINHA1_EXT.AsString,4,3)),sLinha_ext1,[]);
                   {Valor por extenso Linha 2}
                   if (Copy(SqlCfeChequeSCH_LINHA2_EXT.Asstring,7,1) = 'S') then
                      RDCheque.ImpF (StrToInt(COPY(SqlCfeChequeSCH_LINHA2_EXT.AsString,1,3)),StrToInt(COPY(SqlCfeChequeSCH_LINHA2_EXT.AsString,4,3)),sLinha_ext2,[]);
                   {Favorecido}
                   if (Copy(SqlCfeChequeSCH_FAVORECIDO.Asstring,7,1) = 'S') then
                      RDCheque.ImpF (StrToInt(COPY(SqlCfeChequeSCH_FAVORECIDO.AsString,1,3)),StrToInt(COPY(SqlCfeChequeSCH_FAVORECIDO.AsString,4,3)),SqlCdsChequeCHQ_NOME_FAVORECIDO.AsString,[]);
                   {Cidade}
                   if (Copy(SqlCfeChequeSCH_CIDADE.Asstring,7,1) = 'S') then
                      RDCheque.ImpF (StrToInt(COPY(SqlCfeChequeSCH_CIDADE.AsString,1,3)),StrToInt(COPY(SqlCfeChequeSCH_CIDADE.AsString,4,3)),dbInicio.Empresa.CIDADE,[]);
                   {Dia}
                   if (Copy(SqlCfeChequeSCH_DIA.Asstring,7,1) = 'S') then
                      RDCheque.ImpF (StrToInt(COPY(SqlCfeChequeSCH_DIA.AsString,1,3)),StrToInt(COPY(SqlCfeChequeSCH_DIA.AsString,4,3)),sDia,[]);
                   {Mes}
                   if (Copy(SqlCfeChequeSCH_MES.Asstring,7,1) = 'S') then
                      RDCheque.ImpF (StrToInt(COPY(SqlCfeChequeSCH_MES.AsString,1,3)),StrToInt(COPY(SqlCfeChequeSCH_MES.AsString,4,3)),sMes,[]);
                   {Ano}
                   if (Copy(SqlCfeChequeSCH_ANO.Asstring,7,1) = 'S') then
                      RDCheque.ImpF (StrToInt(COPY(SqlCfeChequeSCH_ANO.AsString,1,3)),StrToInt(COPY(SqlCfeChequeSCH_ANO.AsString,4,3)),sAno,[]);
                   {Bom Para}
                   if (SqlCdsChequeCHQ_BOMPARA.AsString > SqlCdsChequeCHQ_EMISSAO.AsString) then
                      begin
                         if (Copy(SqlCfeChequeSCH_BOM_PARA.Asstring,7,1) = 'S') then
                            RDCheque.ImpF (StrToInt(COPY(SqlCfeChequeSCH_BOM_PARA.AsString,1,3)),StrToInt(COPY(SqlCfeChequeSCH_BOM_PARA.AsString,4,3)),'Bom para: '+SqlCdsChequeCHQ_BOMPARA.AsString,[]);
                      end;
                   //
                   Mudar_Flag_Imp_Cheque(SqlCdsChequeCHQ_REGISTRO.AsString);
                   SqlCdsCheque.Next;
                   RDCheque.Novapagina;
                end;
             finally
                RDCheque.Fechar;
                SqlCdsCheque.Filtered := False;
                SqlCdsCheque.Filter   := '';
                SqlCdsCheque.Filtered := True;
                SqlCdsCheque.Refresh;
             end;
           except
             on E:EDataBaseError do
               begin
                  uteis.erro  (pchar('Erro ao imprimir o Cheque !'+#13#10+
                             'Mensagem erro: '+e.message));
               end;
           end;
        end
     else
        begin
           uteis.aviso('Não existe configuração de impressão desse Banco !');
           Buscar_Cheque_para_Imprimir;
           DBGridCheques.SetFocus;
        end;
   except
     on E:EDataBaseError do
        begin
           uteis.erro  (pchar('Erro ao Localizar a Configuração da Impressão do Cheque !'+#13#10+
                      'Mensagem erro: '+e.message));
        end;
   end;
end;

procedure TFormImpCheque.Marcar_Cheques_Imprimir;
begin
   if (SqlCdsChequeCHQ_EXCLUSAO.AsString = 'N') then
      begin
         SqlCdsCheque.Edit;
         if (SqlCdsChequeIC_SELECAO.AsBoolean) then
            SqlCdsChequeIC_SELECAO.AsBoolean := False
         else
            SqlCdsChequeIC_SELECAO.AsBoolean := True;
         SqlCdsCheque.Post;
      end
   else
      begin
         uteis.aviso('Não pode selecionar um cheque excluído !');
         DBGridCheques.SetFocus;
      end;
end;

procedure TFormImpCheque.SqlCdsChequeAfterScroll(DataSet: TDataSet);
begin
   Atribuir_Dados_Cheque_Objetos;
end;

procedure TFormImpCheque.DBGridChequesDrawColumnCell(Sender: tObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
   if (not odd(SqlCdsCheque.RecNo)) then
      if not (GdSelected in State) then
         begin
            DBGridCheques.Canvas.Brush.Color := $00FFEFDF;
            DBGridCheques.Canvas.FillRect(rect);
            DBGridCheques.DefaultDrawDataCell(Rect,column.Field,state);
         end;
   //
   if (DBGridCheques.Focused) then
      begin
         if (SqlCdsChequeCHQ_EXCLUSAO.AsString = 'S') then
            DBGridCheques.Canvas.Font.Color:= $0000B900; // coloque aqui a cor desejada
           if (gdSelected in State) then
              DBGridCheques.Canvas.Font.Color:= clWindow;
         DBGridCheques.DefaultDrawDataCell(Rect, DBGridCheques.columns[datacol].field, State);
      end
   else
      begin
         if (SqlCdsChequeCHQ_EXCLUSAO.AsString = 'S') then
            DBGridCheques.Canvas.Font.Color:= $0000B900; // coloque aqui a cor desejada
         DBGridCheques.DefaultDrawDataCell(Rect, DBGridCheques.columns[datacol].field, State);
      end;
   if Column.Field = (SqlCdsChequeIC_SELECAO) then
      begin
         DBGridCheques.Canvas.FillRect(Rect);
         if (SqlCdsChequeIC_SELECAO.AsBoolean) then
            ImageList1.Draw(DBGridCheques.Canvas,Rect.Left+03,Rect.Top+1,2)
         else
            ImageList1.Draw(DBGridCheques.Canvas,Rect.Left+03,Rect.Top+1,0);
      end;
end;

procedure TFormImpCheque.DBGridChequesDblClick(Sender: tObject);
begin
   Marcar_Cheques_Imprimir;
end;

procedure TFormImpCheque.DBGridChequesKeyPress(Sender: tObject;
  var Key: Char);
begin
   if (Key = #13) then
      begin
         Marcar_Cheques_Imprimir;
         Key := #0;
      end;
end;

procedure TFormImpCheque.DBGridFavorecidoDrawColumnCell(Sender: tObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
   if (not odd(SqlCdsPagar.RecNo)) then
      if not (GdSelected in State) then
         begin
            DBGridFavorecido.Canvas.Brush.Color := $00FFEFDF;
            DBGridFavorecido.Canvas.FillRect(rect);
            DBGridFavorecido.DefaultDrawDataCell(Rect,column.Field,state);
         end;
end;

procedure TFormImpCheque.DBGridFornecedorDrawColumnCell(Sender: tObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
   if (not odd(SqlCdsFornecedor.RecNo)) then
      if not (GdSelected in State) then
         begin
            DBGridFornecedor.Canvas.Brush.Color := $00FFEFDF;
            DBGridFornecedor.Canvas.FillRect(rect);
            DBGridFornecedor.DefaultDrawDataCell(Rect,column.Field,state);
         end;
end;

procedure TFormImpCheque.DBGridClienteDrawColumnCell(Sender: tObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
   if (not odd(SqlCdsClientes.RecNo)) then
      if not (GdSelected in State) then
         begin
            DBGridCliente.Canvas.Brush.Color := $00FFEFDF;
            DBGridCliente.Canvas.FillRect(rect);
            DBGridCliente.DefaultDrawDataCell(Rect,column.Field,state);
         end;
end;

function TFormImpCheque.Verifica_Selecao_Cheque: Boolean;
Var
  bSelecionouCheque:Boolean;
begin
   bSelecionouCheque := False;
   SqlCdsCheque.DisableControls;
   SqlCdsCheque.First;
   while (not SqlCdsCheque.Eof) do
    begin
       if (SqlCdsChequeIC_SELECAO.AsBoolean) then
          bSelecionouCheque := True;
       SqlCdsCheque.Next;
    end;
   SqlCdsCheque.First;
   SqlCdsCheque.EnableControls;
   Result := bSelecionouCheque;
end;

procedure TFormImpCheque.DtEmissaoExit(Sender: tObject);
begin
    if (DtEmissao.Date > 0) then
       begin
          DtEmissao.Text := PreenchaData(DtEmissao.Text);
          if not TestaDataStr(DtEmissao.Text) then
             DtEmissao.setfocus;
       end;
end;

procedure TFormImpCheque.DtBomParaExit(Sender: tObject);
begin
    if (DtBomPara.Date > 0) then
       begin
          DtBomPara.Text := PreenchaData(DtBomPara.Text);
          if not TestaDataStr(DtBomPara.Text) then
             DtBomPara.setfocus
          else
             begin
                if (DtBomPara.Date < DtBomPara.Date) then
                   begin
                      uteis.aviso('Data Final menor que a Data Inicial !');
                      DtBomPara.Date := 0;
                      DtBomPara.SetFocus;
                   end;
             end;
       end;
end;

procedure TFormImpCheque.Marcar_Todos_Cheques;
begin
   SqlCdsCheque.DisableControls;
   SqlCdsCheque.First;
   While not SqlCdsCheque.Eof do
    begin
       SqlCdsCheque.Edit;
       SqlCdsChequeIC_SELECAO.AsBoolean := False;
       SqlCdsCheque.Post;
//       SqlCdsCheque.Next;
    end;
   SqlCdsCheque.First;
   SqlCdsCheque.EnableControls;
   SqlCdsCheque.Filtered := False;
   SqlCdsCheque.Filter   := '';
   SqlCdsCheque.Filtered := True;
end;

procedure TFormImpCheque.cNumChequeExit(Sender: tObject);
begin
   if (cNumCheque.AsInteger > 0) then
      Cdigito.Text := CalculaC3cheque(cNumCheque.Text);
end;

procedure TFormImpCheque.Atualiza_Sequencia_Cheques(sConta: String);
begin
   try
     wSql1      := 'UPDATE BAN0000 SET BAN_SEQ_CHEQUE = (BAN_SEQ_CHEQUE + 1) ';
     wSeleciona := ' WHERE BAN_CODIGO = '''+sConta+'''';
     //
     DataCadastros.sqlUpdate.Close;
     DataCadastros.SqlUpdate.sql.text :=SQLDEF('BANCOS',wSql1,wSeleciona,'','');
     DataCadastros.sqlUpdate.Execsql;
   except
     on E:EDataBaseError do
       begin
          uteis.erro  (pchar('Impossível atualizar a Sequencia do Cheque !'+#13#10+
                     'Mensagem erro: '+e.message));
       end;
   end;
end;

procedure TFormImpCheque.DBGridChequesEnter(Sender: tObject);
begin
   Atribuir_Dados_Cheque_Objetos;
end;

function TFormImpCheque.Retorna_Sequencia_Cheque(sConta: String): Integer;
begin
   try
     wSql1      := 'SELECT T1.BAN_SEQ_CHEQUE FROM BAN0000 T1 ';
     wSeleciona := 'WHERE T1.BAN_CODIGO = '''+sConta+'''';
     //
     DataCadastros.sqlUpdate.Close;
     DataCadastros.SqlUpdate.sql.text :=SQLDEF('BANCOS',wSql1,wSeleciona,'','T1.');
     DataCadastros.sqlUpdate.Open;
     if (not DataCadastros.sqlUpdate.IsEmpty) then
        begin
           Result := DataCadastros.sqlUpdate.FieldByName('BAN_SEQ_CHEQUE').AsInteger;
        end
     else
        begin
           Result := 0;
        end;
     DataCadastros.sqlUpdate.Close;
   except
     on E:EDataBaseError do
        begin
           uteis.erro  (pchar('Erro ao Retornar Sequencia do Cheque !'+#13#10+
                      'Mensagem erro: '+e.message));
        end;
   end;
end;

end.



