unit uFinanceiroConciliacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,  rxToolEdit, ComboBoxRw, Mask,  rxCurrEdit, Buttons, Grids,
  DBGrids, SqlExpr,SqlClientDataSet, Provider, DB, DBClient, DBLocal, DBLocalS, ExtCtrls,
  frxClass, frxDBSet, frxExportODF, frxExportXLS, frxExportPDF, RXDBCtrl,
  Data.DBXFirebird, SimpleDS, SgDbSeachComboUnit, JvExMask, JvToolEdit,
  frxExportBaseDialog;

type
  TFrmFinanceiroConciliacao = class(TForm)
    SQLCdsConciliacaoS: TSQLClientDataSet;
    DsConciliacaoS: TDataSource;
    SQLCdsConciliacaoSPAG_REGISTRO: TIntegerField;
    SQLCdsConciliacaoSPAG_DATA_PAGAMENTO: TDateField;
    SQLCdsConciliacaoSTIPO: TStringField;
    SQLCdsConciliacaoSDOCUMENTO: TStringField;
    SQLCdsConciliacaoSRAZAO: TStringField;
    SQLCdsConciliacaoSPAG_CONCILIADO: TStringField;
    SQLCdsConciliacaoSPAG_DATA_LANCAMENTO: TDateField;
    SQLCdsConciliacaoSHCO_DESCRICAO: TStringField;
    SQLCdsConciliacaoSPAG_PAGO: TFMTBCdField;
    SQLCdsConciliacaoSUSU_NOME: TStringField;
    SQLCdsConciliacaoSSaldo: TCurrencyField;
    SQLCdsConciliacaoSLOCAL: TStringField;
    SQLCdsConciliacaoSSaldoCalculado: TCurrencyField;
    frxExtratoAnaliticoN: TfrxReport;
    frxDBAnaliticoN: TfrxDBDataset;
    SQLCdsConciliacaoN: TSQLClientDataSet;
    DsConciliacaoN: TDataSource;
    frxExtratoAnaliticoS: TfrxReport;
    frxDBAnaliticoS: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    frxXLSExport1: TfrxXLSExport;
    frxODSExport1: TfrxODSExport;
    SQLCdsConciliacaoNSaldo: TFloatField;
    SQLCdsConciliacaoNLOCAL: TStringField;
    SQLCdsConciliacaoNPAG_REGISTRO: TIntegerField;
    SQLCdsConciliacaoNPAG_DATA_PAGAMENTO: TDateField;
    SQLCdsConciliacaoNTIPO: TStringField;
    SQLCdsConciliacaoNDOCUMENTO: TStringField;
    SQLCdsConciliacaoNRAZAO: TStringField;
    SQLCdsConciliacaoNPAG_CONCILIADO: TStringField;
    SQLCdsConciliacaoNPAG_DATA_LANCAMENTO: TDateField;
    SQLCdsConciliacaoNHCO_DESCRICAO: TStringField;
    SQLCdsConciliacaoNPAG_PAGO: TFMTBCdField;
    SQLCdsConciliacaoNUSU_NOME: TStringField;
    SQLCdsConciliacaoNBAN_APELIDO: TStringField;
    Panel3: TPanel;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    EdContaBanco: TEdit;
    CbContaBanco: TComboBoxRw;
    chkConsiderarSaldoAnterior: TCheckBox;
    chkConsiderarLimiteConta: TCheckBox;
    chkMultiEmpresa: TCheckBox;
    BitPesquisar: TBitBtn;
    Bit_Sair: TBitBtn;
    BitBtn1: TBitBtn;
    pna: TPanel;
    pnc: TPanel;
    pnb: TPanel;
    GroupBox3: TGroupBox;
    DbGradeConciliado: TrxDBGrid;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    lblSaldoAnteriorS: TLabel;
    lblCreditoS: TLabel;
    lblDebitoS: TLabel;
    lblSaldoS: TLabel;
    lblSaldoLimiteS: TLabel;
    Label13: TLabel;
    GroupBox2: TGroupBox;
    RbAnaliticoS: TRadioButton;
    RbSinteticoS: TRadioButton;
    GroupBox5: TGroupBox;
    DbGradeConciliadoN: TrxDBGrid;
    Panel1: TPanel;
    Label3: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    lblSaldoAnteriorN: TLabel;
    lblCreditoN: TLabel;
    lblDebitoN: TLabel;
    lblSaldoN: TLabel;
    lblSaldoLimiteN: TLabel;
    Label14: TLabel;
    BtnImprimirN: TBitBtn;
    BtnImprimirS: TBitBtn;
    SQLCdsConciliacaoNped_codigo: TStringField;
    SQLCdsConciliacaoSped_codigo: TStringField;
    SQLCdsConciliacaoNNF_NUM_NFE: TStringField;
    SQLCdsConciliacaoSNF_NUM_NFE: TStringField;
    RxDataFinal: TJvDateEdit;
    RxDataInicial: TJvDateEdit;
    SQLCdsConciliacaoNpag_observacao: TStringField;
    SQLCdsConciliacaoSpag_observacao: TStringField;
    BitBtn2: TBitBtn;
    chkSaldoAnterior: TCheckBox;
    procedure Bit_SairClick(Sender: tObject);
    procedure BitPesquisarClick(Sender: tObject);
    procedure EdContaBancoEnter(Sender: tObject);
    procedure CbContaBancoEnter(Sender: tObject);
    procedure RxDataInicialEnter(Sender: tObject);
    procedure RxDataFinalEnter(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure EdContaBancoExit(Sender: tObject);
    procedure DbGradeConciliadoDrawColumnCell(Sender: tObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DbGradeConciliadoDblClick(Sender: tObject);
    procedure DbGradeConciliadoKeyPress(Sender: tObject; var Key: Char);
    procedure BitBtn1Click(Sender: tObject);
    procedure frxExtratoAnaliticoNGetValue(const VarName: String;
      var Value: Variant);
    procedure DbGradeConciliadoNDrawColumnCell(Sender: tObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DbGradeConciliadoNDblClick(Sender: tObject);
    procedure DbGradeConciliadoNKeyPress(Sender: tObject; var Key: Char);
    procedure BtnImprimirNClick(Sender: tObject);
    procedure frxExtratoAnaliticoSGetValue(const VarName: String;
      var Value: Variant);
    procedure BtnImprimirSClick(Sender: tObject);
    procedure FormCreate(Sender: tObject);
    procedure pnaResize(Sender: tObject);
    procedure SQLCdsConciliacaoNNF_NUM_NFEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure CbContaBancoSelect(Sender: tObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure chkMultiEmpresaClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure chkSaldoAnteriorClick(Sender: TObject);
  private
    { Private declarations }
    sFiltro:String;
    rSaldoS,rSaldoN , rLimite, rSaldoAnteriorS,rSaldoAnteriorN:Currency;
    bPassadoSaldo:Boolean;
    procedure Localizar;
    procedure ChamaManutencaoS;
    procedure ChamaManutencaoN;
  public
    { Public declarations }
    
    procedure CalculaTotal;
    procedure BotoesAcesso;
  end;

var
  FrmFinanceiroConciliacao: TFrmFinanceiroConciliacao;

implementation

uses
  Uteis, DataCad, RWFunc, Menus, Men0001, uFinanceiroConciliacaoLancamento, iniciodb,
  uFinanceiroConciliacaoTransferencia, uFinanceiroConciliacaoLancamentoPagarReceber;

{$R *.dfm}


procedure TFrmFinanceiroConciliacao.Bit_SairClick(Sender: tObject);
begin
   Close;
end;

procedure TFrmFinanceiroConciliacao.BotoesAcesso;
begin
     if Assigned(FrmFinanceiroConciliacao) then
     begin
          BtnImprimirN.Enabled := Uteis.AcessoUsuario('FinanceiroConciliação Financeira e Bancária',DBInicio.Usuario.CODIGO,FrmFinanceiroConciliacao).Relatorio;
          BtnImprimirS.Enabled := Uteis.AcessoUsuario('FinanceiroConciliação Financeira e Bancária',DBInicio.Usuario.CODIGO,FrmFinanceiroConciliacao).Relatorio;
    end;
end;

procedure TFrmFinanceiroConciliacao.Localizar;
var
   sCondicao,sCondicaoAdicionalPagar,sCondicaoAdicionalReceber:string;
   dDataSaldo:TDate;
   wsel, pl: string;
begin
   rSaldoAnteriorS := 0;      // conciliado
   rSaldoAnteriorN := 0;      // lançado no sistema
   rLimite := 0;

   if (RxDataInicial.Text = '  /  /    ') then
      begin
         uteis.aviso('Informe a Data Inicial');
         RxDataInicial.SetFocus;
      end
   else
   if (RxDataFinal.Text = '  /  /    ') then
      begin
         uteis.aviso('Informe a Data Final');
         RxDataFinal.SetFocus;
      end
   else
   if (RxDataInicial.Date > RxDataFinal.Date) then
      begin
         uteis.aviso('A data inicial não pode ser maior que a data final');
         RxDataInicial.SetFocus;
      end
   else
      begin
         //Saldo Anterior
         wSel := '';
         Pl := 'Where ';
         if ( NOT chkMultiEmpresa.Checked ) then
         begin
            wSel := pl+' EMP_CODIGO = '+QuotedStr(dbInicio.Empresa.EMP_CODIGO);
            pl := ' and ';
         end;
         IF ( EdContaBanco.Text <> '9999' ) then
            wSel := wSEl+pl+ 'BAN_CODIGO = '+QuotedStr(EdContaBanco.Text);



         DataCadastros.sqlUpdate.Close;
         DataCadastros.SqlUpdate.sql.text :='SELECT BAN_CONCILIACAO_DATA, BAN_CONCILIACAO_SALDO,BAN_LIMITECREDITO FROM BAN0000 '+wSEl;
         if dbInicio.IsDesenvolvimento then
          copyToClipboard(DataCadastros.SqlUpdate.sql.text);
         DataCadastros.sqlUpdate.open;
         if (not DataCadastros.sqlUpdate.IsEmpty) then
         begin
               if ( dbInicio.BuscaUmdadoSqlAsInteger('Select cast(count(*) as integer) as conta from    BAN0000 '+wSEl)  = 1) then
                  dDataSaldo := DataCadastros.sqlUpdate.FieldByName('BAN_CONCILIACAO_DATA').AsDateTime
               else
                  dDataSaldo := StrToDate('01/01/1900');

               while (not DataCadastros.sqlUpdate.Eof) do
               begin
                     rSaldoAnteriorS := rSaldoAnteriorS + DataCadastros.sqlUpdate.FieldByName('BAN_CONCILIACAO_SALDO').AsCurrency;
                     rSaldoAnteriorN := rSaldoAnteriorN + DataCadastros.sqlUpdate.FieldByName('BAN_CONCILIACAO_SALDO').AsCurrency;
                     rLimite := rLimite + DataCadastros.sqlUpdate.FieldByName('BAN_LIMITECREDITO').AsCurrency;

                     DataCadastros.sqlUpdate.Next;
               end;
         end
         else
         begin
               dDataSaldo := StrToDate('01/01/1900');
               rSaldoAnteriorS := 0.00;
               rSaldoAnteriorN := 0.00;
               rLimite := 0.00;
         end;

         if (not chkConsiderarSaldoAnterior.Checked) then
         begin
               rSaldoAnteriorS := 0.00;
               rSaldoAnteriorN := 0.00;
               dDataSaldo :=  RxDataInicial.Date;
         end;

         if (not chkConsiderarLimiteConta.Checked) then
            rLimite := 0;

         if (RxDataInicial.Date < dDataSaldo) then
            RxDataInicial.Date := dDataSaldo;
         if (RxDataFinal.Date < dDataSaldo) then
            RxDataFinal.Date := dDataSaldo;

         //Calcula as entradas e saidas realizadas da data do saldo ate a data de solicitação

         //*****************************************CONCILIADO*************************************//
         sCondicao := 'SELECT  ''D''  AS TIPO, SUM(PAG.PAG_PAGO) '+
                      'FROM  PAG_PAGAMENTO PAG '+
                      'JOIN FORMA_PAGAMENTO FPG ON (FPG.FPG_REGISTRO = PAG.FPG_REGISTRO AND FPG.FPG_LANCA_CONTA = ''S'') '+
                      'JOIN PAG_PC01 PPC ON (PPC.PAG_REGISTRO = PAG.PAG_REGISTRO) '+
                      'LEFT JOIN FOR0000 FRN ON (FRN.FOR_CODIGO = (SELECT FIRST 1 T3.FOR_CODIGO FROM PAG0000 T3 WHERE T3.PAG_CODIGO = PPC.PAG_CODIGO) ) '+
                      'LEFT JOIN USUARIO USR ON (USR.USU_CODIGO = PAG.USU_CODIGO) '+
                      iif(chkSaldoAnterior.Checked,
                        'WHERE '+iif(NOT chkMultiEmpresa.Checked, 'PAG.EMP_CODIGO = '+QuotedStr(dbInicio.Empresa.EMP_CODIGO)+ ' AND ','')+'PAG.PAG_CONCILIADO = ''S'' '+IIF(EdContaBanco.Text = '9999','',' and PAG.BAN_CODIGO = '+QuotedStr(EdContaBanco.Text))+' AND PAG.PAG_DATA_LANCAMENTO BETWEEN '+QuotedStr(DataAmericana(DateToStr(dDataSaldo)))+' AND '+QuotedStr(DataAmericana(DateToStr(RxDataInicial.Date -1)))+' '       , // vírgula do iif chkSaldoAnterior
                        'WHERE '+iif(NOT chkMultiEmpresa.Checked, 'PAG.EMP_CODIGO = '+QuotedStr(dbInicio.Empresa.EMP_CODIGO)+ ' AND ','')+'PAG.PAG_CONCILIADO = ''S'' '+IIF(EdContaBanco.Text = '9999','',' and PAG.BAN_CODIGO = '+QuotedStr(EdContaBanco.Text))+' AND PAG.PAG_DATA_LANCAMENTO BETWEEN '+QuotedStr(DataAmericana(DateToStr(RxDataInicial.Date)))+' AND '+QuotedStr(DataAmericana(DateToStr(RxDataFinal.Date -1)))+' '
                      ) +
                      'UNION '+
                      'SELECT '+
                      ' ''C''  AS TIPO, SUM(FAT.FRE_RECEBIDO) '+
                      'FROM FAT_RECEBIMENTO FAT '+
                      'JOIN FORMA_PAGAMENTO FPG ON (FPG.FPG_REGISTRO = FAT.FPG_REGISTRO AND FPG.FPG_LANCA_CONTA = ''S'') '+
                      'JOIN FAT_PC01 FPC ON (FPC.FAT_REGISTRO = FAT.FAT_REGISTRO) '+
                      'LEFT JOIN CLI0000 CLI ON (CLI.CLI_CODIGO = (SELECT FIRST 1 T3.CLI_CODIGO FROM FAT0000 T3 WHERE T3.FAT_CODIGO = FPC.FAT_CODIGO)) '+
                      'LEFT JOIN USUARIO USR ON (USR.USU_CODIGO = FAT.USU_CODIGO) '+
                      iif(chkSaldoAnterior.Checked,
                        'WHERE '+iif(NOT chkMultiEmpresa.Checked, 'FAT.EMP_CODIGO = '+QuotedStr(dbInicio.Empresa.EMP_CODIGO)+ ' AND ','')+' FAT.FRE_CONCILIADO = ''S'' '+IIF(EdContaBanco.Text = '9999','',' and FAT.BAN_CODIGO = '+QuotedStr(EdContaBanco.Text))+' AND FAT.FRE_DATA_LANCAMENTO BETWEEN '+QuotedStr(DataAmericana(DateToStr(dDataSaldo)))+' AND '+QuotedStr(DataAmericana(DateToStr(RxDataInicial.Date -1)))+' '      , // virgula do iif chaSaldoAnterior
                        'WHERE '+iif(NOT chkMultiEmpresa.Checked, 'FAT.EMP_CODIGO = '+QuotedStr(dbInicio.Empresa.EMP_CODIGO)+ ' AND ','')+' FAT.FRE_CONCILIADO = ''S'' '+IIF(EdContaBanco.Text = '9999','',' and FAT.BAN_CODIGO = '+QuotedStr(EdContaBanco.Text))+' AND FAT.FRE_DATA_LANCAMENTO BETWEEN '+QuotedStr(DataAmericana(DateToStr(RxDataInicial.Date)))+' AND '+QuotedStr(DataAmericana(DateToStr(RxDataFinal.Date -1)))+' '
                      ) +

                      'UNION '+
                      'SELECT cast(tr.BTR_TIPO as char(1)),SUM(tr.BTR_VALOR) '+
                      'FROM  BAN_TRANSFERENCIA TR '+
                      'LEFT JOIN USUARIO USR ON (USR.USU_CODIGO = tr.USU_CODIGO) '+
                      iif(chkSaldoAnterior.Checked,
                        'WHERE '+iif(NOT chkMultiEmpresa.Checked, 'TR.EMP_CODIGO = '+QuotedStr(dbInicio.Empresa.EMP_CODIGO)+ ' AND ','')+' TR.BTR_CONCILIADO = ''S'' '+IIF(EdContaBanco.Text = '9999','',' and TR.BCO_CODIGO = '+QuotedStr(EdContaBanco.Text))+' AND tr.BTR_DATA_LANCAMENTO BETWEEN '+QuotedStr(DataAmericana(DateToStr(dDataSaldo)))+' AND '+QuotedStr(DataAmericana(DateToStr(RxDataInicial.Date -1)))+' '      , // virgula do iif chaSaldoAnterior
                        'WHERE '+iif(NOT chkMultiEmpresa.Checked, 'TR.EMP_CODIGO = '+QuotedStr(dbInicio.Empresa.EMP_CODIGO)+ ' AND ','')+' TR.BTR_CONCILIADO = ''S'' '+IIF(EdContaBanco.Text = '9999','',' and TR.BCO_CODIGO = '+QuotedStr(EdContaBanco.Text))+' AND tr.BTR_DATA_LANCAMENTO BETWEEN '+QuotedStr(DataAmericana(DateToStr(RxDataInicial.Date)))+' AND '+QuotedStr(DataAmericana(DateToStr(RxDataFinal.Date -1)))+' '
                      ) +
                      'group by tr.BTR_TIPO';

         DataCadastros.sqlUpdate.Close;
         DataCadastros.SqlUpdate.sql.text :=sCondicao;
         if dbInicio.IsDesenvolvimento then
           copyToClipboard(DataCadastros.SqlUpdate.sql.text);
         DataCadastros.sqlUpdate.open;
         if (not DataCadastros.sqlUpdate.IsEmpty) then
            begin
               DataCadastros.sqlUpdate.First;
               while (not DataCadastros.sqlUpdate.Eof) do
                  begin
                     if (DataCadastros.sqlUpdate.FieldByName('TIPO').AsString = 'C') then
                        rSaldoAnteriorS := rSaldoAnteriorS + DataCadastros.sqlUpdate.FieldByName('SUM').AsCurrency
                     else
                        rSaldoAnteriorS := rSaldoAnteriorS - DataCadastros.sqlUpdate.FieldByName('SUM').AsCurrency;
                     DataCadastros.sqlUpdate.Next;
                  end;
            end;
         DataCadastros.sqlUpdate.Close;


         //*****************************************NÃO CONCILIADO*************************************//
         sCondicao := 'SELECT CASE WHEN (1=1) THEN ''D'' END AS TIPO, SUM(PAG.PAG_PAGO) '+
                      'FROM  PAG_PAGAMENTO PAG '+
                      'JOIN FORMA_PAGAMENTO FPG ON (FPG.FPG_REGISTRO = PAG.FPG_REGISTRO AND FPG.FPG_LANCA_CONTA = ''S'') '+
                      'JOIN PAG_PC01 PPC ON (PPC.PAG_REGISTRO = PAG.PAG_REGISTRO) '+
                      'LEFT JOIN FOR0000 FRN ON (FRN.FOR_CODIGO = (SELECT FIRST 1 T3.FOR_CODIGO FROM PAG0000 T3 WHERE T3.PAG_CODIGO = PPC.PAG_CODIGO  and t3.EMP_CODIGO = ppc.EMP_CODIGO) ) '+
                      'LEFT JOIN USUARIO USR ON (USR.USU_CODIGO = PAG.USU_CODIGO) '+
                      iif(chkSaldoAnterior.Checked,
                        'WHERE '+iif(NOT chkMultiEmpresa.Checked, 'PAG.EMP_CODIGO = '+QuotedStr(dbInicio.Empresa.EMP_CODIGO)+ ' AND ','')+''+IIF(EdContaBanco.Text = '9999','',' PAG.BAN_CODIGO = '+QuotedStr(EdContaBanco.Text)+' AND ')+'  PAG.PAG_DATA_PAGAMENTO BETWEEN '+QuotedStr(DataAmericana(DateToStr(dDataSaldo)))+' AND '+QuotedStr(DataAmericana(DateToStr(RxDataInicial.Date -1)))+' '      , // virgula do iif chaSaldoAnterior
                        'WHERE '+iif(NOT chkMultiEmpresa.Checked, 'PAG.EMP_CODIGO = '+QuotedStr(dbInicio.Empresa.EMP_CODIGO)+ ' AND ','')+''+IIF(EdContaBanco.Text = '9999','',' PAG.BAN_CODIGO = '+QuotedStr(EdContaBanco.Text)+' AND ')+'  PAG.PAG_DATA_PAGAMENTO BETWEEN '+QuotedStr(DataAmericana(DateToStr(RxDataInicial.Date)))+' AND '+QuotedStr(DataAmericana(DateToStr(RxDataFinal.Date -1)))+' '
                      ) +
                      'UNION '+
                      'SELECT '+
                      'CASE WHEN (1=1) THEN ''C'' END AS TIPO, SUM(FAT.FRE_RECEBIDO) '+
                      'FROM FAT_RECEBIMENTO FAT '+
                      'JOIN FORMA_PAGAMENTO FPG ON (FPG.FPG_REGISTRO = FAT.FPG_REGISTRO AND FPG.FPG_LANCA_CONTA = ''S'') '+
                      'JOIN FAT_PC01 FPC ON (FPC.FAT_REGISTRO = FAT.FAT_REGISTRO) '+
                      'LEFT JOIN CLI0000 CLI ON (CLI.CLI_CODIGO = (SELECT FIRST 1 T3.CLI_CODIGO FROM FAT0000 T3 WHERE T3.FAT_CODIGO = FPC.FAT_CODIGO   and t3.EMP_CODIGO = FPC.EMP_CODIGO)) '+
                      'LEFT JOIN USUARIO USR ON (USR.USU_CODIGO = FAT.USU_CODIGO) '+
                      iif(chkSaldoAnterior.Checked,
                        'WHERE '+iif(NOT chkMultiEmpresa.Checked, 'FAT.EMP_CODIGO = '+QuotedStr(dbInicio.Empresa.EMP_CODIGO)+ ' AND ','')+''+IIF(EdContaBanco.Text = '9999','',' FAT.BAN_CODIGO = '+QuotedStr(EdContaBanco.Text)+' AND ')+' FAT.FRE_DATA_RECEBIMENTO BETWEEN '+QuotedStr(DataAmericana(DateToStr(dDataSaldo)))+' AND '+QuotedStr(DataAmericana(DateToStr(RxDataInicial.Date -1)))+' '      , // virgula do iif chaSaldoAnterior
                        'WHERE '+iif(NOT chkMultiEmpresa.Checked, 'FAT.EMP_CODIGO = '+QuotedStr(dbInicio.Empresa.EMP_CODIGO)+ ' AND ','')+''+IIF(EdContaBanco.Text = '9999','',' FAT.BAN_CODIGO = '+QuotedStr(EdContaBanco.Text)+' AND ')+' FAT.FRE_DATA_RECEBIMENTO BETWEEN '+QuotedStr(DataAmericana(DateToStr(RxDataInicial.Date)))+' AND '+QuotedStr(DataAmericana(DateToStr(RxDataFinal.Date -1)))+' '
                      ) +
                      'UNION '+
                      'SELECT cast(tr.BTR_TIPO as char(1)),SUM(tr.BTR_VALOR) '+
                      'FROM  BAN_TRANSFERENCIA TR '+
                      'LEFT JOIN USUARIO USR ON (USR.USU_CODIGO = tr.USU_CODIGO) '+
                      iif(chkSaldoAnterior.Checked,
                        'WHERE '+iif(NOT chkMultiEmpresa.Checked, 'TR.EMP_CODIGO = '+QuotedStr(dbInicio.Empresa.EMP_CODIGO)+ ' AND ','')+''+IIF(EdContaBanco.Text = '9999','',' TR.BCO_CODIGO = '+QuotedStr(EdContaBanco.Text)+' AND ')+' tr.BTR_DATA BETWEEN '+QuotedStr(DataAmericana(DateToStr(dDataSaldo)))+' AND '+QuotedStr(DataAmericana(DateToStr(RxDataInicial.Date -1)))+' '      , // virgula do iif chaSaldoAnterior
                        'WHERE '+iif(NOT chkMultiEmpresa.Checked, 'TR.EMP_CODIGO = '+QuotedStr(dbInicio.Empresa.EMP_CODIGO)+ ' AND ','')+''+IIF(EdContaBanco.Text = '9999','',' TR.BCO_CODIGO = '+QuotedStr(EdContaBanco.Text)+' AND ')+' tr.BTR_DATA BETWEEN '+QuotedStr(DataAmericana(DateToStr(RxDataInicial.Date)))+' AND '+QuotedStr(DataAmericana(DateToStr(RxDataFinal.Date -1)))+' '
                      ) +
                      'group by tr.BTR_TIPO';

         DataCadastros.sqlUpdate.Close;
         DataCadastros.SqlUpdate.sql.text :=sCondicao;
         if dbInicio.IsDesenvolvimento then
           copyToClipboard(DataCadastros.SqlUpdate.sql.text);

         DataCadastros.sqlUpdate.open;
         if (not DataCadastros.sqlUpdate.IsEmpty) then
            begin
               DataCadastros.sqlUpdate.First;
               while (not DataCadastros.sqlUpdate.Eof) do
                  begin
                     if (DataCadastros.sqlUpdate.FieldByName('TIPO').AsString = 'C') then
                        rSaldoAnteriorN := rSaldoAnteriorN + DataCadastros.sqlUpdate.FieldByName('SUM').AsCurrency
                     else
                        rSaldoAnteriorN := rSaldoAnteriorN - DataCadastros.sqlUpdate.FieldByName('SUM').AsCurrency;
                     DataCadastros.sqlUpdate.Next;
                  end;
            end;
         DataCadastros.sqlUpdate.Close;

         //****************************************conciliado*************************************************//
         sCondicao :=  'SELECT PAG.PAP_REGISTRO as PAG_REGISTRO, '+#13+
                       '       CASE WHEN (1=1) THEN ''P'' END AS LOCAL, '+#13+
                       '       PAG.PAG_DATA_LANCAMENTO AS PAG_DATA_PAGAMENTO,'+#13+
                       '       CASE WHEN (1=1) THEN ''D'' END AS TIPO, '+#13+
                       '       (SELECT FIRST 1 T3.PAG_NUMDOC FROM PAG0000 T3 WHERE T3.PAG_CODIGO = PPC.PAG_CODIGO and t3.for_codigo = ppc.for_codigo) AS DOCUMENTO, '+#13+
                       '       CAST(FRN.FOR_RAZAO AS VARCHAR(70)) AS RAZAO, '+#13+
                       '       PAG.PAG_CONCILIADO, '+#13+
                       '       PAG.PAG_DATA_PAGAMENTO as PAG_DATA_LANCAMENTO, '+#13+
                       '       (SELECT T1.HCO_DESCRICAO FROM HIST_CONCILIACAO T1 WHERE T1.HCO_REGISTRO = PAG.HCO_REGISTRO) AS HCO_DESCRICAO, '+#13+
                       '       PAG.PAG_PAGO, '+#13+
                       '       USR.USU_NOME, '+#13+
                       '       '+#13+qStr('')+#13+' as ped_codigo, '+#13+
                       '       '+#13+qStr('')+#13+' as nf_num_nfe, ppc_obs as pag_observacao'+#13+
                       'FROM  PAG_PAGAMENTO PAG '+#13+
                       '      JOIN FORMA_PAGAMENTO FPG ON (FPG.FPG_REGISTRO = PAG.FPG_REGISTRO AND FPG.FPG_LANCA_CONTA = ''S'') '+#13+
                       '      JOIN PAG_PC01 PPC ON (PPC.PAG_REGISTRO = PAG.PAG_REGISTRO) '+#13+
                       '      LEFT JOIN FOR0000 FRN ON (FRN.FOR_CODIGO = (SELECT FIRST 1 T3.FOR_CODIGO FROM PAG0000 T3 WHERE T3.PAG_CODIGO = PPC.PAG_CODIGO and t3.for_codigo = ppc.for_codigo and t3.EMP_CODIGO = ppc.EMP_CODIGO) ) '+#13+
                       '      LEFT JOIN USUARIO USR ON (USR.USU_CODIGO = PAG.USU_CODIGO) '+#13+
                       'WHERE '+#13+iif(NOT chkMultiEmpresa.Checked, 'PAG.EMP_CODIGO = '+#13+QuotedStr(dbInicio.Empresa.EMP_CODIGO)+#13+ ' AND ','')
                       +#13+'PAG.PAG_CONCILIADO = ''S'' '+#13+IIF(EdContaBanco.Text = '9999','',' and PAG.BAN_CODIGO= '+#13+QuotedStr(EdContaBanco.Text))+#13+
                       ' AND PAG.PAG_DATA_LANCAMENTO BETWEEN '+#13+QuotedStr(DataAmericana(RxDataInicial.Text))+#13+
                       ' AND '+#13+QuotedStr(DataAmericana(RxDataFinal.Text))+#13+' '+#13+sCondicaoAdicionalPagar+#13+
                       'UNION  '+#13+
                       'SELECT  FAT.FRE_REGISTRO, '+#13+
                       '        CASE WHEN (1=1) THEN ''R'' END AS LOCAL, '+#13+
                       '        FAT.FRE_DATA_LANCAMENTO AS PAG_DATA_PAGAMENTO, '+#13+
                       '        CASE WHEN (1=1) THEN ''C'' END AS TIPO, '+#13+
                       '        CAST(FPC.FAT_CODIGO AS VARCHAR(12)) as DOCUMENTO, '+#13+
                       '        CAST(CLI.CLI_RAZAO AS VARCHAR(70)) AS RAZAO, '+#13+
                       '        FAT.FRE_CONCILIADO, '+#13+
                       '        FAT.FRE_DATA_RECEBIMENTO as FRE_DATA_LANCAMENTO,  '+#13+
                       '        (SELECT T1.HCO_DESCRICAO FROM HIST_CONCILIACAO T1 WHERE T1.HCO_REGISTRO = FAT.HCO_REGISTRO) AS HCO_DESCRICAO, '+#13+
                       '        FAT.FRE_RECEBIDO, '+#13+
                       '        USR.USU_NOME, '+#13+
                       '        f1.ped_codigo, '+#13+
                       '        f1.nf_num_nfe, fpc.fpc_obs as obs '+#13+
                       'FROM  FAT_RECEBIMENTO FAT  '+#13+
                       '      JOIN FORMA_PAGAMENTO FPG ON (FPG.FPG_REGISTRO = FAT.FPG_REGISTRO AND FPG.FPG_LANCA_CONTA = ''S'') '+#13+
                       '      JOIN FAT_PC01 FPC ON (FPC.FAT_REGISTRO = FAT.FAT_REGISTRO) '+#13+
                       '      left join fat0000 f1 on f1.emp_codigo=fat.emp_codigo and f1.fat_CODIGO=fpc.fat_CODIGO '+#13+
                       '      LEFT JOIN CLI0000 CLI ON (CLI.CLI_CODIGO = (SELECT FIRST 1 T3.CLI_CODIGO FROM FAT0000 T3 WHERE T3.FAT_CODIGO = FPC.FAT_CODIGO   and t3.EMP_CODIGO = FPC.EMP_CODIGO)) '+#13+
                       '      LEFT JOIN USUARIO USR ON (USR.USU_CODIGO = FAT.USU_CODIGO) '+#13+
                       'WHERE '+#13+iif(NOT chkMultiEmpresa.Checked, 'FAT.EMP_CODIGO = '+#13+QuotedStr(dbInicio.Empresa.EMP_CODIGO)+#13+ ' AND ','')+#13
                       +'FAT.FRE_CONCILIADO = ''S'' '+#13+IIF(EdContaBanco.Text = '9999','',' and FAT.BAN_CODIGO= '+#13+QuotedStr(EdContaBanco.Text))+#13+
                       ' AND FAT.FRE_DATA_LANCAMENTO BETWEEN '+#13+QuotedStr(DataAmericana(RxDataInicial.Text))+#13+' AND '+#13+QuotedStr(DataAmericana(RxDataFinal.Text))+#13+''+#13+sCondicaoAdicionalReceber+#13+
                       'UNION  '+#13+
                       'SELECT TR.BTR_REGISTRO, '+#13+
                       '       CASE WHEN (1=1) THEN ''T'' END AS LOCAL, '+#13+
                       '       tr.BTR_DATA_LANCAMENTO AS PAG_DATA_PAGAMENTO,'+#13+
                       '       cast(tr.BTR_TIPO as char(1)), '+#13+
                       '       tr.BTR_DOCUMENTO, '+#13+
                       '       tr.BTR_OBSERVACAO, '+#13+
                       '       tr.BTR_CONCILIADO, '+#13+
                       '       tr.BTR_DATA_LANCAMENTO, '+#13+
                       '       (SELECT T1.HCO_DESCRICAO FROM HIST_CONCILIACAO T1 WHERE T1.HCO_REGISTRO = tr.HCO_REGISTRO) AS HCO_DESCRICAO, '+#13+
                       '       tr.BTR_VALOR, '+#13+
                       '       USR.USU_NOME, '+#13+
                       '       '+#13+qStr('')+#13+' as ped_codigo, '+#13+
                       '       '+#13+qStr('')+#13+' as nf_num_nfe, btr_observacao'+#13+

                       'FROM  BAN_TRANSFERENCIA TR  '+#13+
                       '      LEFT JOIN USUARIO USR ON (USR.USU_CODIGO = tr.USU_CODIGO) '+#13+
                       'WHERE '+#13+iif(NOT chkMultiEmpresa.Checked, 'TR.EMP_CODIGO = '+#13+QuotedStr(dbInicio.Empresa.EMP_CODIGO)+#13+ ' AND ','')+
                       #13+'TR.BTR_CONCILIADO = ''S'' '+#13+IIF(EdContaBanco.Text = '9999','',' and TR.BCO_CODIGO = '+#13+QuotedStr(EdContaBanco.Text))+#13+
                       ' AND tr.BTR_DATA_LANCAMENTO BETWEEN '+#13+QuotedStr(DataAmericana(RxDataInicial.Text))+#13+' AND '+#13+QuotedStr(DataAmericana(RxDataFinal.Text))+#13+
                       'ORDER BY 3 ';



         SQLCdsConciliacaoS.Close;
         SQLCdsConciliacaoS.CommandText :=sCondicao;
         if DBInicio.IsDesenvolvimento then
           CopyToClipBoard(SQLCdsConciliacaoS.CommandText);
         SQLCdsConciliacaoS.Open;


         //****************************************NAO conciliado*************************************************//
         sCondicao :=  'SELECT PAG.PAP_REGISTRO as PAG_REGISTRO, '+#13+
                       '        ''P'' AS LOCAL, '+#13+
                       '       PAG.PAG_DATA_PAGAMENTO AS PAG_DATA_PAGAMENTO,'+#13+
                       '       ''D'' AS TIPO, '+#13+
                       '       (SELECT FIRST 1 T3.PAG_NUMDOC FROM PAG0000 T3 WHERE T3.PAG_CODIGO = PPC.PAG_CODIGO and t3.for_codigo = ppc.for_codigo) AS DOCUMENTO, '+#13+
                       '       CAST(FRN.FOR_RAZAO AS VARCHAR(70)) AS RAZAO, '+#13+
                       '       PAG.PAG_CONCILIADO, '+#13+
                       '       PAG.PAG_DATA_LANCAMENTO, '+#13+
                       '       (SELECT T1.HCO_DESCRICAO FROM HIST_CONCILIACAO T1 WHERE T1.HCO_REGISTRO = PAG.HCO_REGISTRO) AS HCO_DESCRICAO, '+#13+
                       '       PAG.PAG_PAGO, '+#13+
                       '       BAN.BAN_APELIDO, '+#13+
                       '       USR.USU_NOME, '+#13+
                       '       '+#13+qStr('')+#13+' as ped_codigo, '+#13+
                       '       '+#13+qStr('')+#13+' as nf_num_nfe, ppc_obs as pag_observacao'+#13+
                       'FROM PAG_PAGAMENTO PAG '+#13+
                       '     JOIN FORMA_PAGAMENTO FPG ON (FPG.FPG_REGISTRO = PAG.FPG_REGISTRO AND FPG.FPG_LANCA_CONTA = ''S'') '+#13+
                       '     LEFT JOIN BAN0000 BAN ON (BAN.BAN_CODIGO = PAG.BAN_CODIGO)'+#13+
                       '     JOIN PAG_PC01 PPC ON (PPC.PAG_REGISTRO = PAG.PAG_REGISTRO) '+#13+
                       '     LEFT JOIN FOR0000 FRN ON (FRN.FOR_CODIGO = (SELECT FIRST 1 T3.FOR_CODIGO FROM PAG0000 T3 '+
                       '                                                 WHERE T3.PAG_CODIGO = PPC.PAG_CODIGO and t3.for_codigo = ppc.for_codigo and t3.EMP_CODIGO = ppc.EMP_CODIGO) ) '+#13+
                       '     LEFT JOIN USUARIO USR ON (USR.USU_CODIGO = PAG.USU_CODIGO) '+#13+
                       'WHERE '+#13+iif(NOT chkMultiEmpresa.Checked, 'PAG.EMP_CODIGO = '+#13+QuotedStr(dbInicio.Empresa.EMP_CODIGO)+#13+
                       ' AND ','')+#13+''+#13+IIF(EdContaBanco.Text = '9999','',' PAG.BAN_CODIGO = '+#13+QuotedStr(EdContaBanco.Text)+#13+
                       ' AND ')+#13+' PAG.PAG_DATA_PAGAMENTO BETWEEN '+#13+QuotedStr(DataAmericana(RxDataInicial.Text))+#13+
                       ' AND '+#13+QuotedStr(DataAmericana(RxDataFinal.Text))+#13+' '+#13+sCondicaoAdicionalPagar+#13+
                       'UNION  '+#13+
                       'SELECT  FAT.FRE_REGISTRO, '+#13+
                       '       ''R''  AS LOCAL, '+#13+
                       '        FAT.FRE_DATA_RECEBIMENTO AS PAG_DATA_PAGAMENTO, '+#13+
                       '         ''C'' AS TIPO, '+#13+
                       '        CAST(FPC.FAT_CODIGO AS VARCHAR(12)) as DOCUMENTO, '+#13+
                       '        CAST(CLI.CLI_RAZAO AS VARCHAR(70)) AS RAZAO, '+#13+
                       '        FAT.FRE_CONCILIADO, '+#13+
                       '        FAT.FRE_DATA_LANCAMENTO,  '+#13+
                       '        (SELECT T1.HCO_DESCRICAO FROM HIST_CONCILIACAO T1 WHERE T1.HCO_REGISTRO = FAT.HCO_REGISTRO) AS HCO_DESCRICAO, '+#13+
                       '        FAT.FRE_RECEBIDO, '+#13+
                       '        BAN.BAN_APELIDO, '+#13+
                       '        USR.USU_NOME, '+#13+
                       '        f1.ped_codigo, '+#13+
                       '        f1.nf_num_nfe, fpc.fpc_obs as obs '+#13+
                       'FROM  FAT_RECEBIMENTO FAT  '+#13+
                       '      JOIN FORMA_PAGAMENTO FPG ON (FPG.FPG_REGISTRO = FAT.FPG_REGISTRO AND FPG.FPG_LANCA_CONTA = ''S'') '+#13+
                       '      JOIN FAT_PC01 FPC ON (FPC.FAT_REGISTRO = FAT.FAT_REGISTRO) '+#13+
                       '      left join fat0000 f1 on f1.emp_codigo=fat.emp_codigo and f1.fat_CODIGO=fpc.fat_CODIGO '+#13+
                       '      LEFT JOIN BAN0000 BAN ON (BAN.BAN_CODIGO = fat.BAN_CODIGO)  '+#13+
                       '      LEFT JOIN CLI0000 CLI ON (CLI.CLI_CODIGO = (SELECT FIRST 1 T3.CLI_CODIGO FROM FAT0000 T3 WHERE T3.FAT_CODIGO = FPC.FAT_CODIGO  and t3.EMP_CODIGO = FPC.EMP_CODIGO)) '+#13+
                       '      LEFT JOIN USUARIO USR ON (USR.USU_CODIGO = FAT.USU_CODIGO) '+#13+
                       'WHERE '+#13+iif(NOT chkMultiEmpresa.Checked, 'FAT.EMP_CODIGO = '+#13+QuotedStr(dbInicio.Empresa.EMP_CODIGO)+#13+
                        ' AND ','')+#13+''+#13+IIF(EdContaBanco.Text = '9999','',' FAT.BAN_CODIGO = '+#13+QuotedStr(EdContaBanco.Text)+#13+
                        ' AND ')+#13+' FAT.FRE_DATA_RECEBIMENTO BETWEEN '+#13+QuotedStr(DataAmericana(RxDataInicial.Text))+#13+
                        ' AND '+#13+QuotedStr(DataAmericana(RxDataFinal.Text))+#13+''+#13+sCondicaoAdicionalReceber+#13+
                       'UNION  '+#13+
                       'SELECT TR.BTR_REGISTRO, '+#13+
                       '        ''T''  AS LOCAL, '+#13+
                       '       tr.BTR_DATA AS PAG_DATA_PAGAMENTO,'+#13+
                       '       cast(tr.BTR_TIPO as char(1)), '+#13+
                       '       tr.BTR_DOCUMENTO, '+#13+
                       '       tr.BTR_OBSERVACAO, '+#13+
                       '       tr.BTR_CONCILIADO, '+#13+
                       '       tr.BTR_DATA_LANCAMENTO, '+#13+
                       '       (SELECT T1.HCO_DESCRICAO FROM HIST_CONCILIACAO T1 WHERE T1.HCO_REGISTRO = tr.HCO_REGISTRO) AS HCO_DESCRICAO, '+#13+
                       '       tr.BTR_VALOR, '+#13+
                       '       BAN.BAN_APELIDO,'+#13+
                       '       USR.USU_NOME, '+#13+
                       '       '+#13+qStr('')+#13+' as ped_codigo, '+#13+
                       '       '+#13+qStr('')+#13+' as nf_num_nfe, btr_observacao'+#13+
                       'FROM  '+#13+
                       'BAN_TRANSFERENCIA TR  '+#13+
                       'LEFT JOIN USUARIO USR ON (USR.USU_CODIGO = tr.USU_CODIGO) '+#13+
                       'LEFT JOIN BAN0000 BAN ON (BAN.BAN_CODIGO = TR.BCO_CODIGO) '+#13+
                       'WHERE '+#13+iif(NOT chkMultiEmpresa.Checked, 'TR.EMP_CODIGO = '+#13+QuotedStr(dbInicio.Empresa.EMP_CODIGO)+#13+
                       ' AND ','')+#13+''+#13+IIF(EdContaBanco.Text = '9999','',' TR.BCO_CODIGO = '+#13+QuotedStr(EdContaBanco.Text)+#13+
                       ' AND ')+#13+' tr.BTR_DATA BETWEEN '+#13+QuotedStr(DataAmericana(RxDataInicial.Text))+#13+' AND '+#13+QuotedStr(DataAmericana(RxDataFinal.Text))+#13+
                       'ORDER BY 3 ';



         SQLCdsConciliacaoN.Close;
         SQLCdsConciliacaoN.CommandText :=sCondicao;
         if DBInicio.IsDesenvolvimento then
           CopyToClipBoard(SQLCdsConciliacaoN.CommandText);

         SQLCdsConciliacaoN.Open;


      end;
   CalculaTotal;
end;

procedure TFrmFinanceiroConciliacao.BitBtn2Click(Sender: TObject);
begin
  if frmFinanceiroConciliacaoLancamentoPagarReceber = nil then
    frmFinanceiroConciliacaoLancamentoPagarReceber := TfrmFinanceiroConciliacaoLancamentoPagarReceber.Create(Self);
  frmFinanceiroConciliacaoLancamentoPagarReceber.ShowModal;
end;

procedure TFrmFinanceiroConciliacao.BitPesquisarClick(Sender: tObject);
begin
   Localizar;
end;

procedure TFrmFinanceiroConciliacao.EdContaBancoEnter(
  Sender: tObject);
begin
   SQLCdsConciliacaoS.Close;
   SQLCdsConciliacaoN.Close;
end;

procedure TFrmFinanceiroConciliacao.CbContaBancoEnter(Sender: tObject);
begin
   SQLCdsConciliacaoS.Close;
   SQLCdsConciliacaoN.Close;
   CalculaTotal;
end;

procedure TFrmFinanceiroConciliacao.RxDataInicialEnter(Sender: tObject);
begin
   SQLCdsConciliacaoS.Close;
   SQLCdsConciliacaoN.Close;
   CalculaTotal;
end;

procedure TFrmFinanceiroConciliacao.RxDataFinalEnter(Sender: tObject);
begin
   SQLCdsConciliacaoS.Close;
   SQLCdsConciliacaoN.Close;
   CalculaTotal;
end;

procedure TFrmFinanceiroConciliacao.FormShow(Sender: tObject);
begin
   //combo
   CbContaBanco.CLEAR;
  //
   EdContaBanco.Text := '9999';
   RxDataInicial.Date := Date - 30;
   RxDataFinal.Date := Date;

   CalculaTotal; 

end;

procedure TFrmFinanceiroConciliacao.EdContaBancoExit(
  Sender: tObject);
begin
   EdContaBanco.Text := PreenchezeroEsquerda(EdContaBanco.Text,4);
   if (EdContaBanco.Text = '0000') then
   begin
         EdContaBanco.Clear;
         CbContaBanco.idRetorno := '';
   end
   else
   if (EdContaBanco.Text = '9999') then
      CbContaBanco.clear
   else
   begin
        CbContaBanco.idRetorno := EdContaBanco.Text;
        if CbContaBanco.idRetorno='' then
        begin
               uteis.aviso('Conta Banco não localizado com o código informado');
               EdContaBanco.SetFocus;
               EdContaBanco.SelectAll;
        end;
   end;
end;

procedure TFrmFinanceiroConciliacao.CbContaBancoSelect(Sender: tObject);
begin
if (CbContaBanco.idRetorno= '') then
      EdContaBanco.Text := '9999'
   else
   begin
     EdContaBanco.Text := CbContaBanco.idRetorno;
     Localizar;
   end;
end;

procedure TFrmFinanceiroConciliacao.CalculaTotal;
var
   rTotal,rCredito,rDebito:Currency;
   point:TBookmark;
begin
   rTotal := 0;
   rCredito := 0;
   rDebito := 0;
   rSaldoS := rSaldoAnteriorS;
   rSaldoN := rSaldoAnteriorN;

   //Limpas Label´s
   lblSaldoAnteriorS.Caption := FormatFloat('###,###,###,##0.00',0);
   lblCreditoS.Caption := FormatFloat('###,###,###,##0.00',0);
   lblDebitoS.Caption := FormatFloat('###,###,###,##0.00',0);
   lblSaldoS.Caption := FormatFloat('###,###,###,##0.00',0);
   lblSaldoLimiteS.Caption := FormatFloat('###,###,###,##0.00',0);
   lblSaldoAnteriorS.Caption := FormatFloat('###,###,###,##0.00',rSaldoAnteriorS);



   if (not SQLCdsConciliacaoS.IsEmpty) then
      begin

         point := SQLCdsConciliacaoS.GetBookmark;
         SQLCdsConciliacaoS.DisableControls;
         SQLCdsConciliacaoS.First;
         while (not SQLCdsConciliacaoS.Eof) do
            begin
               if (SQLCdsConciliacaoSTIPO.AsString = 'C') then
                  begin
                     rSaldoS := rSaldoS + SQLCdsConciliacaoSPAG_PAGO.AsCurrency;
                     rCredito := rCredito + SQLCdsConciliacaoSPAG_PAGO.AsCurrency;
                  end
               else
                  begin
                     rSaldoS := rSaldoS - SQLCdsConciliacaoSPAG_PAGO.AsCurrency;
                     rDebito := rDebito + SQLCdsConciliacaoSPAG_PAGO.AsCurrency;
                  end;
               SQLCdsConciliacaoS.Edit;
               SQLCdsConciliacaoSSaldo.AsCurrency := rSaldoS;
               SQLCdsConciliacaoS.Post;
               SQLCdsConciliacaoS.Next;
            end;
         SQLCdsConciliacaoS.First;
         try
            SQLCdsConciliacaoS.GotoBookmark(point);
         except
         end;
         SQLCdsConciliacaoS.EnableControls;



      end;
    lblCreditoS.Caption := FormatFloat('###,###,###,##0.00',rCredito);
    lblDebitoS.Caption := FormatFloat('###,###,###,##0.00',rDebito);
    lblSaldoS.Caption := FormatFloat('###,###,###,##0.00',rSaldoAnteriorS+rCredito-rDebito);
    lblSaldoLimiteS.Caption := FormatFloat('###,###,###,##0.00',rSaldoAnteriorS+rCredito-rDebito+rLimite);



   if ((rSaldoS+rCredito-rDebito) >= 0) then
      lblSaldoS.Font.Color := clBlue
   else
      lblSaldoS.Font.Color := clMaroon;

   if ((rSaldoS+rCredito-rDebito+rLimite) >= 0) then
      lblSaldoLimiteS.Font.Color := clBlue
   else
      lblSaldoLimiteS.Font.Color := clMaroon;

   //Sem conciliação

   rTotal := 0;
   rCredito := 0;
   rDebito := 0;

   lblSaldoAnteriorN.Caption := FormatFloat('###,###,###,##0.00',0);
   lblCreditoN.Caption := FormatFloat('###,###,###,##0.00',0);
   lblDebitoN.Caption := FormatFloat('###,###,###,##0.00',0);
   lblSaldoN.Caption := FormatFloat('###,###,###,##0.00',0);
   lblSaldoLimiteN.Caption := FormatFloat('###,###,###,##0.00',0);
   lblSaldoAnteriorN.Caption := FormatFloat('###,###,###,##0.00',rSaldoAnteriorN);

   if (not SQLCdsConciliacaoN.IsEmpty) then
      begin

         point := SQLCdsConciliacaoN.GetBookmark;
         SQLCdsConciliacaoN.DisableControls;
         SQLCdsConciliacaoN.First;
         while (not SQLCdsConciliacaoN.Eof) do
            begin
               if (SQLCdsConciliacaoNTIPO.AsString = 'C') then
                  begin
                     rSaldoN := rSaldoN + SQLCdsConciliacaoNPAG_PAGO.AsCurrency;
                     rCredito := rCredito + SQLCdsConciliacaoNPAG_PAGO.AsCurrency;
                  end
               else
                  begin
                     rSaldoN := rSaldoN - SQLCdsConciliacaoNPAG_PAGO.AsCurrency;
                     rDebito := rDebito + SQLCdsConciliacaoNPAG_PAGO.AsCurrency;
                  end;
               SQLCdsConciliacaoN.Edit;
               SQLCdsConciliacaoNSaldo.AsCurrency := rSaldoN;
               SQLCdsConciliacaoN.Post;
               SQLCdsConciliacaoN.Next;
            end;
         SQLCdsConciliacaoN.First;
         try
            SQLCdsConciliacaoN.GotoBookmark(point);
         except
         end;
         SQLCdsConciliacaoN.EnableControls;



      end;
   lblCreditoN.Caption := FormatFloat('###,###,###,##0.00',rCredito);
   lblDebitoN.Caption := FormatFloat('###,###,###,##0.00',rDebito);
   lblSaldoN.Caption := FormatFloat('###,###,###,##0.00',rSaldoAnteriorN+rCredito-rDebito);
   lblSaldoLimiteN.Caption := FormatFloat('###,###,###,##0.00',rSaldoAnteriorN+rCredito-rDebito+rLimite);



   if ((rSaldoN+rCredito-rDebito) >= 0) then
      lblSaldoN.Font.Color := clBlue
   else
      lblSaldoN.Font.Color := clMaroon;

   if ((rSaldoN+rCredito-rDebito+rLimite) >= 0) then
      lblSaldoLimiteN.Font.Color := clBlue
   else
      lblSaldoLimiteN.Font.Color := clMaroon;


end;

procedure TFrmFinanceiroConciliacao.DbGradeConciliadoDrawColumnCell(Sender: tObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
   Check: Integer;
   R: TRect;
begin
    if (not odd(SQLCdsConciliacaoS.RecNo)) then
       if not (GdSelected in State) then
          begin
              DbGradeConciliado.Canvas.Brush.Color := $00FFEFDF;
              DbGradeConciliado.Canvas.FillRect(rect);
              DbGradeConciliado.DefaultDrawDataCell(Rect,column.Field,state);
          end;
end;

procedure TFrmFinanceiroConciliacao.DbGradeConciliadoDblClick(
  Sender: tObject);
begin
   ChamaManutencaoS;
end;

procedure TFrmFinanceiroConciliacao.DbGradeConciliadoKeyPress(
  Sender: tObject; var Key: Char);
begin
   if (Key = #13) then
      begin
         Key := #0;
         ChamaManutencaoS;
      end;
end;

procedure TFrmFinanceiroConciliacao.BitBtn1Click(Sender: tObject);
begin
   try
      FrmFinanceiroConciliacaoTransferencia := TFrmFinanceiroConciliacaoTransferencia.Create(Application);
      FrmFinanceiroConciliacaoTransferencia.ShowModal;
   finally
      FrmFinanceiroConciliacaoTransferencia.Destroy;
      FrmFinanceiroConciliacaoTransferencia := Nil;
   end;
   CalculaTotal;
end;

procedure TFrmFinanceiroConciliacao.frxExtratoAnaliticoNGetValue(
  const VarName: String; var Value: Variant);
  var valor:String;
begin

   if (VarName = 'saldo') then
      Value := rSaldoAnteriorN;
   if (VarName = 'Empresa') then
      Value := dbInicio.Empresa.RAZAO
   else
   if (VarName = 'Filtro') then
      Value := sFiltro;
   if (VarName = 'rSaldoAnteriorN') then
      Value := rSaldoAnteriorN;
   if (VarName = 'sCredito') then
      Value := lblCreditoN.Caption;
   if (VarName = 'sDebito') then
      Value := lblDebitoN.Caption;
   if (VarName = 'sSaldo') then
      Value := lblSaldoN.Caption;
   if (VarName = 'sSaldoLimite') then
      begin
         valor := StringReplace(lblSaldoLimiteN.Caption, '.', '',[rfReplaceAll, rfIgnoreCase]);
         Value := StrToFloat(valor);

      end;
end;

procedure TFrmFinanceiroConciliacao.ChamaManutencaoN;
begin
   if (not SQLCdsConciliacaoN.IsEmpty) then
      begin
         if (SQLCdsConciliacaoNPAG_CONCILIADO.AsString <> 'S') then
            begin
               try
                  FrmFinanceiroConciliacaoLancamento := TFrmFinanceiroConciliacaoLancamento.Create(Application);
                  //
                  FrmFinanceiroConciliacaoLancamento.CbConciliado.Checked := true;
                  FrmFinanceiroConciliacaoLancamento.CbContaBanco.Text := FrmFinanceiroConciliacao.SQLCdsConciliacaoNHCO_DESCRICAO.AsString;
                  FrmFinanceiroConciliacaoLancamento.EdContaBanco.Text := CbContaBanco.CodigoLista;
                  FrmFinanceiroConciliacaoLancamento.RxDataLancamento.Date := FrmFinanceiroConciliacao.SQLCdsConciliacaoNPAG_DATA_LANCAMENTO.AsDateTime;
                  FrmFinanceiroConciliacaoLancamento.bConciliado := False;
                  FrmFinanceiroConciliacaoLancamento.ShowModal;
               finally
                  FrmFinanceiroConciliacaoLancamento.Destroy;
                  FrmFinanceiroConciliacaoLancamento := Nil;
               end;
            end
         else
            begin
               uteis.aviso('Movimento já conciliado!');
            end;
      end;
   try
      SQLCdsConciliacaoN.Refresh;
   except

   end;
   try
      SQLCdsConciliacaoS.Refresh;
   except

   end;
   CalculaTotal;
end;

procedure TFrmFinanceiroConciliacao.ChamaManutencaoS;

begin
   if (not SQLCdsConciliacaoS.IsEmpty) then
      begin
         try
            FrmFinanceiroConciliacaoLancamento := TFrmFinanceiroConciliacaoLancamento.Create(Application);
            //
            FrmFinanceiroConciliacaoLancamento.CbConciliado.Checked := True;
            FrmFinanceiroConciliacaoLancamento.CbContaBanco.Text := FrmFinanceiroConciliacao.SQLCdsConciliacaoSHCO_DESCRICAO.AsString;
            FrmFinanceiroConciliacaoLancamento.EdContaBanco.Text := CbContaBanco.CodigoLista;
            FrmFinanceiroConciliacaoLancamento.RxDataLancamento.Date := FrmFinanceiroConciliacao.SQLCdsConciliacaoSPAG_DATA_LANCAMENTO.AsDateTime;
            FrmFinanceiroConciliacaoLancamento.bConciliado := True;
            FrmFinanceiroConciliacaoLancamento.ShowModal;
         finally
            FrmFinanceiroConciliacaoLancamento.Destroy;
            FrmFinanceiroConciliacaoLancamento := Nil;
         end;
      end;
   try
      SQLCdsConciliacaoN.Refresh;
   except

   end;
   try
      SQLCdsConciliacaoS.Refresh;
   except

   end;
   CalculaTotal;
end;

procedure TFrmFinanceiroConciliacao.chkMultiEmpresaClick(Sender: TObject);
begin
  Localizar;
end;

procedure TFrmFinanceiroConciliacao.chkSaldoAnteriorClick(Sender: TObject);
begin
  if chkSaldoAnterior.Checked then
    chkSaldoAnterior.Caption := 'Considera Saldo Anterior'
  else
    chkSaldoAnterior.Caption := 'Considera Período Informado';
  Localizar;
end;

procedure TFrmFinanceiroConciliacao.DbGradeConciliadoNDrawColumnCell(Sender: tObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
   if SQLCdsConciliacaoNPAG_CONCILIADO.AsString = 'S' then
        DbGradeConciliadoN.Canvas.Font.Color:= clGreen; // coloque aqui a cor desejada
    if (not odd(SQLCdsConciliacaoN.RecNo)) then
       if not (GdSelected in State) then
          begin
              DbGradeConciliadoN.Canvas.Brush.Color := $00FFEFDF;
          end;
    DbGradeConciliadoN.Canvas.FillRect(rect);
    DbGradeConciliadoN.DefaultDrawDataCell(Rect, DbGradeConciliadoN.columns[datacol].field, State);
end;

procedure TFrmFinanceiroConciliacao.DbGradeConciliadoNDblClick(
  Sender: tObject);
begin
   ChamaManutencaoN;
end;

procedure TFrmFinanceiroConciliacao.DbGradeConciliadoNKeyPress(
  Sender: tObject; var Key: Char);
begin
   if (Key = #13) then
      begin
         Key := #0;
         ChamaManutencaoN;
      end;
end;

procedure TFrmFinanceiroConciliacao.BtnImprimirNClick(Sender: tObject);
begin
   if (SQLCdsConciliacaoN.IsEmpty) then
      begin
         uteis.aviso('Não existe lançamentos à serem impressos');
      end
   else
      begin
         sFiltro := 'CONTA: '+CbContaBanco.Text+' Período de '+RxDataInicial.Text+' até '+RxDataFinal.Text;
         bPassadoSaldo := False;
         frxExtratoAnaliticoN.ShowReport();
      end;
end;


procedure TFrmFinanceiroConciliacao.frxExtratoAnaliticoSGetValue(
  const VarName: String; var Value: Variant);
  var valor:String;
begin
   if (VarName = 'Empresa') then
      Value := dbInicio.Empresa.RAZAO
   else
   if (VarName = 'Filtro') then
      Value := sFiltro;    
   if (VarName = 'saldo') then
      Value := rSaldoAnteriorS;
   if (VarName = 'rSaldoAnteriorN') then
      Value := rSaldoAnteriorS;
   if (VarName = 'sCredito') then
      Value := lblCreditoS.Caption;
   if (VarName = 'sDebito') then
      Value := lblDebitoS.Caption;
   if (VarName = 'sSaldo') then
      Value := lblSaldoS.Caption;
   if (VarName = 'sSaldoLimite') then
      begin
         valor := StringReplace(lblSaldoLimiteS.Caption, '.', '',[rfReplaceAll, rfIgnoreCase]);
         Value := StrToFloat(valor);
      end;

end;

procedure TFrmFinanceiroConciliacao.BtnImprimirSClick(Sender: tObject);
begin
    if (SQLCdsConciliacaoS.IsEmpty) then
      begin
         uteis.aviso('Não existe lançamentos à serem impressos');
      end
   else
      begin
         bPassadoSaldo := False;
         if (RbAnaliticoS.Checked) then
            begin
               sFiltro := 'CONTA: '+CbContaBanco.Text+' Período de '+RxDataInicial.Text+' até '+RxDataFinal.Text;
               frxExtratoAnaliticoS.ShowReport();
            end
         else
            begin

            end;


      end;
end;

procedure TFrmFinanceiroConciliacao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     Action := CaFree;
end;

procedure TFrmFinanceiroConciliacao.FormCreate(Sender: tObject);
begin
     self.width:=1150;
     self.height:= 640;
     CbContaBanco.EmptyText := 'TODOS O BANCOS';
end;

procedure TFrmFinanceiroConciliacao.FormDestroy(Sender: TObject);
begin
     FrmFinanceiroConciliacao := Nil;
end;

procedure TFrmFinanceiroConciliacao.FormResize(Sender: TObject);
begin
//     width:=980;
//     height:= 640;
end;

procedure TFrmFinanceiroConciliacao.pnaResize(Sender: tObject);
begin
     pnc.Height:= Trunc( pna.height / 2 );
end;

procedure TFrmFinanceiroConciliacao.SQLCdsConciliacaoNNF_NUM_NFEGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
     IF StrToIntDef(Sender.AsString,0) = 0 then
        Text := ''
     else
        Text := Sender.AsString;
end;

end.


