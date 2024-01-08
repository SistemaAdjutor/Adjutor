{************************************************************************
 * Programa....: Osv0002  - Nome formulario = FormOrdServGera
 * Objetivo....: Gerar Ordem de Serviço
 * Analista....: Márcio Neu Pacheco
 * Programador.: Jackson e Márcio
 *
 * Comentários:
 *
 * Criação..........: Set/99
 * Ultima Alteração.: Nov/02
 * Alterado por.....: Márcio
 *
 ************************************************************************}
unit Osv0002;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Mask, DBCtrls, StdCtrls, Buttons, ExtCtrls, Db, DBTables,RwFunc,
   rxCurrEdit,  rxToolEdit, Provider, SqlExpr,SqlClientDataSet, DBClient, DBLocal, DBLocalS,
  SimpleDS, Data.DBXFirebird, JvExMask, JvToolEdit;

type
  TFormOrdServGera = class(TForm)
    GrpRef: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    EdtPRD_REFER: TEdit;
    Edt_Pedido: TEdit;
    GrpOp: TGroupBox;
    LblQtdeOP: TLabel;
    LblProduz: TLabel;
    LblOGerar: TLabel;
    GrpVar: TGroupBox;
    DbtMod1: TDBText;
    DbtMod2: TDBText;
    DbtMod3: TDBText;
    DbtMod4: TDBText;
    DbtMod5: TDBText;
    Panel2: TPanel;
    Bit_Gravar: TBitBtn;
    Bit_Cancelar: TBitBtn;
    LblMod1: TLabel;
    LblMod2: TLabel;
    LblMod3: TLabel;
    LblMod4: TLabel;
    LblMod5: TLabel;
    EdtCLI_RAZAO: TEdit;
    Label14: TLabel;
    Label15: TLabel;
    DbtMod6: TDBText;
    LblMod6: TLabel;
    Label17: TLabel;
    Num_Preco: TCurrencyEdit;
    DbtMod7: TDBText;
    LblMod7: TLabel;
    DbtMod8: TDBText;
    LblMod8: TLabel;
    SqlCdsPedido: TSQLClientDataSet;
    SqlCdsPedidoPED_CODIGO: TStringField;
    SqlCdsPedidoCLI_CODIGO: TStringField;
    SqlCdsPedidoCLI_RAZAO: TStringField;
    SpProduto: TSpeedButton;
    EdtPrd_Descri: TEdit;
    SqlCdsFichaTec: TSQLClientDataSet;
    DsFichaTec: TDataSource;
    SqlCdsFichaTecPRD_REFER: TStringField;
    SqlCdsFichaTecFTC_TUP: TFMTBCdField;
    SqlCdsFichaTecFTC_CRIACAO: TSQLTimeStampField;
    SqlCdsFichaTecFTC_PROC1: TStringField;
    SqlCdsFichaTecFTC_PROC2: TStringField;
    SqlCdsFichaTecFTC_PROC3: TStringField;
    SqlCdsFichaTecFTC_PROC4: TStringField;
    SqlCdsFichaTecFTC_PROC5: TStringField;
    SqlCdsFichaTecFTC_PROC6: TStringField;
    SqlCdsFichaTecFTC_PROC7: TStringField;
    SqlCdsFichaTecFTC_PROC8: TStringField;
    SqlCdsFichaTecFTC_FIXO: TFMTBCdField;
    SqlCdsFichaTecFTC_COMPLE: TFMTBCdField;
    SqlCdsFichaTecFTC_INDIRETA: TFMTBCdField;
    SqlCdsFichaTecFTC_LUCROUNID: TFMTBCdField;
    SqlCdsFichaTecEMP_CODIGO: TStringField;
    SqlCdsFichaTecPRD_DESCRI: TStringField;
    SqlCdsFichaTecPRD_DCVAR1: TStringField;
    SqlCdsFichaTecPRD_DCVAR2: TStringField;
    SqlCdsFichaTecPRD_DCVAR3: TStringField;
    SqlCdsFichaTecPRD_DCVAR4: TStringField;
    SqlCdsFichaTecPRD_DCVAR5: TStringField;
    SqlCdsFichaTecPRD_DCVAR6: TStringField;
    SqlCdsFichaTecPRD_DCVAR7: TStringField;
    SqlCdsFichaTecPRD_DCVAR8: TStringField;
    CurrMod1: TCurrencyEdit;
    CurrMod2: TCurrencyEdit;
    CurrMod3: TCurrencyEdit;
    CurrMod4: TCurrencyEdit;
    CurrMod5: TCurrencyEdit;
    CurrMod6: TCurrencyEdit;
    CurrMod7: TCurrencyEdit;
    CurrMod8: TCurrencyEdit;
    Bit_Sair: TBitBtn;
    CurrQtdeOP: TCurrencyEdit;
    CurrOPGerar: TCurrencyEdit;
    CurrQtde: TCurrencyEdit;
    SqlCdsItensFicha: TSQLClientDataSet;
    GbObs: TGroupBox;
    Panel1: TPanel;
    EdtOsv_obs1: TEdit;
    EdtOsv_obs2: TEdit;
    EdtOsv_Obs3: TEdit;
    EdtOsv_obs4: TEdit;
    EdtOsv_obs5: TEdit;
    EdtOsv_obs6: TEdit;
    EdtOsv_obs7: TEdit;
    EdtORDEM: TEdit;
    Edit1: TEdit;
    SqlCdsItensFicha2: TSQLClientDataSet;
    SqlCdsItensFicha2FTI_REGISTRO: TIntegerField;
    SqlCdsItensFicha2PRD_REFER: TStringField;
    SqlCdsItensFicha2PRD_REFER_ITENS: TStringField;
    SqlCdsItensFicha2FTI_MODIFICADA: TSQLTimeStampField;
    SqlCdsItensFicha2FTI_UC: TFMTBCdField;
    SqlCdsItensFicha2FTI_UCMODIFIC: TFMTBCdField;
    SqlCdsItensFicha2FTI_MODE1: TStringField;
    SqlCdsItensFicha2FTI_MODE2: TStringField;
    SqlCdsItensFicha2FTI_MODE3: TStringField;
    SqlCdsItensFicha2FTI_MODE4: TStringField;
    SqlCdsItensFicha2FTI_MODE5: TStringField;
    SqlCdsItensFicha2FTI_MODE6: TStringField;
    SqlCdsItensFicha2FTI_MODE7: TStringField;
    SqlCdsItensFicha2FTI_MODE8: TStringField;
    SqlCdsItensFicha2FTI_PRECOCUSTO: TFMTBCdField;
    SqlCdsItensFicha2EMP_CODIGO: TStringField;
    SqlCdsItensFicha2FTI_SEQUENCIA: TIntegerField;
    SqlCdsItensFicha2FTI_REFER_PAI: TStringField;
    SqlCdsItensFicha2FTI_TIPO_PI: TStringField;
    SqlCdsItensFicha2FTI_NIVEL: TIntegerField;
    SqlCdsItensFicha2PTI_SIGLA: TStringField;
    SqlCdsItensFicha3: TSQLClientDataSet;
    SqlCdsItensFicha3FTI_REGISTRO: TIntegerField;
    SqlCdsItensFicha3PRD_REFER: TStringField;
    SqlCdsItensFicha3PRD_REFER_ITENS: TStringField;
    SqlCdsItensFicha3FTI_MODIFICADA: TSQLTimeStampField;
    SqlCdsItensFicha3FTI_UC: TFMTBCdField;
    SqlCdsItensFicha3FTI_UCMODIFIC: TFMTBCdField;
    SqlCdsItensFicha3FTI_MODE1: TStringField;
    SqlCdsItensFicha3FTI_MODE2: TStringField;
    SqlCdsItensFicha3FTI_MODE3: TStringField;
    SqlCdsItensFicha3FTI_MODE4: TStringField;
    SqlCdsItensFicha3FTI_MODE5: TStringField;
    SqlCdsItensFicha3FTI_MODE6: TStringField;
    SqlCdsItensFicha3FTI_MODE7: TStringField;
    SqlCdsItensFicha3FTI_MODE8: TStringField;
    SqlCdsItensFicha3FTI_PRECOCUSTO: TFMTBCdField;
    SqlCdsItensFicha3EMP_CODIGO: TStringField;
    SqlCdsItensFicha3FTI_SEQUENCIA: TIntegerField;
    SqlCdsItensFicha3FTI_REFER_PAI: TStringField;
    SqlCdsItensFicha3FTI_TIPO_PI: TStringField;
    SqlCdsItensFicha3FTI_NIVEL: TIntegerField;
    SqlCdsItensFicha3PTI_SIGLA: TStringField;
    SqlCdsItensFichaFTI_REGISTRO: TIntegerField;
    SqlCdsItensFichaPRD_REFER: TStringField;
    SqlCdsItensFichaPRD_REFER_ITENS: TStringField;
    SqlCdsItensFichaFTI_MODIFICADA: TSQLTimeStampField;
    SqlCdsItensFichaFTI_UC: TFMTBCdField;
    SqlCdsItensFichaFTI_UCMODIFIC: TFMTBCdField;
    SqlCdsItensFichaFTI_MODE1: TStringField;
    SqlCdsItensFichaFTI_MODE2: TStringField;
    SqlCdsItensFichaFTI_MODE3: TStringField;
    SqlCdsItensFichaFTI_MODE4: TStringField;
    SqlCdsItensFichaFTI_MODE5: TStringField;
    SqlCdsItensFichaFTI_MODE6: TStringField;
    SqlCdsItensFichaFTI_MODE7: TStringField;
    SqlCdsItensFichaFTI_MODE8: TStringField;
    SqlCdsItensFichaFTI_PRECOCUSTO: TFMTBCdField;
    SqlCdsItensFichaEMP_CODIGO: TStringField;
    SqlCdsItensFichaFTI_SEQUENCIA: TIntegerField;
    SqlCdsItensFichaFTI_REFER_PAI: TStringField;
    SqlCdsItensFichaFTI_TIPO_PI: TStringField;
    SqlCdsItensFichaFTI_NIVEL: TIntegerField;
    SqlCdsItensFichaPTI_SIGLA: TStringField;
    SqlCdsItensFicha4: TSQLClientDataSet;
    SqlCdsItensFicha4FTI_REGISTRO: TIntegerField;
    SqlCdsItensFicha4PRD_REFER: TStringField;
    SqlCdsItensFicha4PRD_REFER_ITENS: TStringField;
    SqlCdsItensFicha4FTI_MODIFICADA: TSQLTimeStampField;
    SqlCdsItensFicha4FTI_UC: TFMTBCdField;
    SqlCdsItensFicha4FTI_UCMODIFIC: TFMTBCdField;
    SqlCdsItensFicha4FTI_MODE1: TStringField;
    SqlCdsItensFicha4FTI_MODE2: TStringField;
    SqlCdsItensFicha4FTI_MODE3: TStringField;
    SqlCdsItensFicha4FTI_MODE4: TStringField;
    SqlCdsItensFicha4FTI_MODE5: TStringField;
    SqlCdsItensFicha4FTI_MODE6: TStringField;
    SqlCdsItensFicha4FTI_MODE7: TStringField;
    SqlCdsItensFicha4FTI_MODE8: TStringField;
    SqlCdsItensFicha4FTI_PRECOCUSTO: TFMTBCdField;
    SqlCdsItensFicha4EMP_CODIGO: TStringField;
    SqlCdsItensFicha4FTI_SEQUENCIA: TIntegerField;
    SqlCdsItensFicha4FTI_REFER_PAI: TStringField;
    SqlCdsItensFicha4FTI_TIPO_PI: TStringField;
    SqlCdsItensFicha4FTI_NIVEL: TIntegerField;
    SqlCdsItensFicha4PTI_SIGLA: TStringField;
    SqlCdsItensFicha5: TSQLClientDataSet;
    SqlCdsItensFicha5FTI_REGISTRO: TIntegerField;
    SqlCdsItensFicha5PRD_REFER: TStringField;
    SqlCdsItensFicha5PRD_REFER_ITENS: TStringField;
    SqlCdsItensFicha5FTI_MODIFICADA: TSQLTimeStampField;
    SqlCdsItensFicha5FTI_UC: TFMTBCdField;
    SqlCdsItensFicha5FTI_UCMODIFIC: TFMTBCdField;
    SqlCdsItensFicha5FTI_MODE1: TStringField;
    SqlCdsItensFicha5FTI_MODE2: TStringField;
    SqlCdsItensFicha5FTI_MODE3: TStringField;
    SqlCdsItensFicha5FTI_MODE4: TStringField;
    SqlCdsItensFicha5FTI_MODE5: TStringField;
    SqlCdsItensFicha5FTI_MODE6: TStringField;
    SqlCdsItensFicha5FTI_MODE7: TStringField;
    SqlCdsItensFicha5FTI_MODE8: TStringField;
    SqlCdsItensFicha5FTI_PRECOCUSTO: TFMTBCdField;
    SqlCdsItensFicha5EMP_CODIGO: TStringField;
    SqlCdsItensFicha5FTI_SEQUENCIA: TIntegerField;
    SqlCdsItensFicha5FTI_REFER_PAI: TStringField;
    SqlCdsItensFicha5FTI_TIPO_PI: TStringField;
    SqlCdsItensFicha5FTI_NIVEL: TIntegerField;
    SqlCdsItensFicha5PTI_SIGLA: TStringField;
    DtEmissao: TJvDateEdit;
    procedure MudaCorCampos(Sender: tObject);
    procedure Bit_VoltarClick(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure EdtPRD_REFERExit(Sender: tObject);
    procedure Edt_PedidoExit(Sender: tObject);
    procedure Bit_GravarClick(Sender: tObject);
    procedure DtEmissaoEnter(Sender: tObject);
    procedure DtEmissaoExit(Sender: tObject);
    procedure Edt_PedidoClick(Sender: tObject);
    procedure Edt_PedidoEnter(Sender: tObject);
    procedure SpProdutoClick(Sender: tObject);
    procedure Bit_SairClick(Sender: tObject);
    procedure Bit_CancelarClick(Sender: tObject);
    procedure CurrOPGerarExit(Sender: tObject);
    procedure EdtORDEMKeyPress(Sender: tObject; var Key: Char);
    procedure EdtORDEMExit(Sender: tObject);
    procedure DesabilitaBotoes;
    procedure FormCreate(Sender: tObject);
  private
WvARIACOES :STRING;
    wM1,wM2,wM3,wM4,wM5,wM6,wM7,wM8  :Currency;
    wConsumo,wSaida :Currency;
    wSql1,wSql2 : String;
    {campos}
    CampoEdit    : TEdit;
    CampoDBEdit  : TDBEdit;
    CampoData    : TDateEdit;
    CampoCurrency: TCurrencyEdit;
    wCOLUNA,
    xREFER,
    xRefer2,
    xRefer3      : String;
    X            : Integer;
    procedure BuscaFicha(wPRODUTO:String);
    procedure LimparDados;
    procedure HabilitaBotoes;
    procedure IncluirOP(wOP:String; wPRODUTO:String);
    procedure IncluirItensOP(wTipo :Integer; wOP, wRefer, wRefeItens:String);
    Function AtribuirLetra : String;
  public
    { Public declarations }
    wLETRA1,wLETRA2 : Integer;

  end;

var
  FormOrdServGera: TFormOrdServGera;

implementation

uses Uteis, Osv0001, DataCad, DmProdu, Ftc0002, INICIODB;

{$R *.DFM}





procedure TFormOrdServGera.MudaCorCampos(Sender: tObject);
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
   if ActiveControl is TDateEdit then
      begin
         TDateEdit(ActiveControl).color := $0080FFFF;
         CampoData := TDateEdit(ActiveControl);
      end
   else
      begin
         CampoData := nil;
      end;
  {cor dos campos TCurrencyEdit}
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

procedure TFormOrdServGera.Bit_VoltarClick(Sender: tObject);
begin
    close;
end;

procedure TFormOrdServGera.FormShow(Sender: tObject);
begin
    FormOrdServGera.Left := 4;
    FormOrdServGera.Top  := 125;
    Screen.Cursor        := crHourGlass;
    try
      {ativa o método ao evento OnActiveControlChange}
      Screen.OnActiveControlChange := MudaCorCampos;
      {Busca o Codigo no sequenciador}
      EdtORDEM.Text := SequenciadorPRC(DataCadastros.SQLConnection1,DBINICIO.EMPRESA.EMP_CODIGO, 'OSV0001', 'OSV_CODIGO', 0);
      EdtORDEM.Text := StrZero(EdtORDEM.Text,EdtORDEM.MaxLength);
      {}
      DmProducao.CdsOsv.Close;
      DmProducao.CdsOsv.CommandText := SQLDEF('ORDEMPRODUCAO','SELECT X1.* FROM OSV0001 X1 ','WHERE X1.OSV_CODIGO = '''+EdtOrdem.Text+'''','X1.OSV_CODIGO','X1.');
      DmProducao.CdsOsv.Open;
      DmProducao.CdsOsv.Insert;
      DesabilitaBotoes;
      {}
//      if DtEmissao.Text = '00/00/0000' then
      DtEmissao.Date := now;
      if FormOrdServCentro.SqlCdsParamPMT_VARIACOES.AsString = 'S' then
         begin
             {Ativa Somente quem tem variacoes}
             GrpVar.Visible   := true;
         end
      else
         begin
             GrpVar.Visible   := false;
         end;
    except on E:EDataBaseError do
      uteis.erro  (pchar('Erro ao inserir o registro !'+e.message));
    end;
    Screen.Cursor := crDefault;
end;

procedure TFormOrdServGera.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
    Screen.OnActiveControlChange := NIL;
    Screen.Cursor := crHourGlass;
    try
      if DmProducao.CdsOsv.State in [dsInsert] then
         DmProducao.CdsOsv.CancelUpdates;
      SqlCdsPedido.Close;
    except on E:EdataBaseError do
       uteis.erro  (pchar('Erro ao fechar as tabelas !'+e.message));
    end;
    Screen.Cursor := crDefault;
end;

procedure TFormOrdServGera.FormCreate(Sender: tObject);
begin
     WvARIACOES := DBINICIO.GETPARAMETROSISTEMA( 'PMT_VARIACOES');
end;

procedure TFormOrdServGera.EdtPRD_REFERExit(Sender: tObject);
begin
    if (ActiveControl.Name = 'Bit_Gravar') or (ActiveControl.Name = 'Bit_Cancelar') or (ActiveControl.Name = 'Bit_Sair') then
       exit;
    Screen.Cursor := crHourGlass;
    if (ActiveControl.Name = 'Bit_Confirmar')or
       (ActiveControl.Name = 'Bit_Cancelar') then
       exit;
    if EdtPRD_REFER.Text <> '' then
       begin
           BuscaFicha(EdtPRD_REFER.Text);
           EdtPrd_Descri.Text    := SqlCdsFichaTecPRD_DESCRI.AsString;
           DtEmissao.Date        := now;
           DtEmissao.SetFocus;
           DtEmissao.SelectAll;
       end
    else
       begin
           uteis.aviso('Informe a Referência !');
           EdtPRD_REFER.SetFocus;
       end;
    Screen.Cursor := crDefault;
end;

procedure TFormOrdServGera.Edt_PedidoExit(Sender: tObject);
begin
    Edt_Pedido.Text := StrZero(Edt_Pedido.Text,Edt_Pedido.MaxLength);
    try
      SqlCdsPedido.Close;
      SqlCdsPedido.CommandText := SQLDEF('ORDEMPRODUCAO','SELECT P1.PED_CODIGO,P1.CLI_CODIGO,C1.CLI_RAZAO FROM PED0000 P1 LEFT JOIN CLI0000 C1 ON P1.CLI_CODIGO = C1.CLI_CODIGO ','WHERE P1.PED_CODIGO = '''+Edt_Pedido.Text+''' AND P1.EMP_CODIGO = '''+DBINICIO.EMPRESA.EMP_CODIGO+'''','P1.PED_CODIGO','P1.');
      SqlCdsPedido.Open;
      if SqlCdsPedido.IsEmpty = false then
         begin
             EdtCLI_RAZAO.Text := SqlCdsPedidoCLI_RAZAO.AsString;
         end
      else
         begin
             Edt_Pedido.Text   := '';
             EdtCLI_RAZAO.Text := '';
         end;
    except on E:EdataBaseError do
       uteis.erro  (pchar('Erro ao localizar o Cliente do Pedido !'+e.message));
    end;
end;

procedure TFormOrdServGera.Bit_GravarClick(Sender: tObject);
Var
  wGerar : integer;
begin
    if CurrQtdeOP.Value = 0 then
       begin
           uteis.erro  ('É necessário informar a quantidade a produzir');
           CurrQtdeOp.SetFocus;
           CurrQtdeOp.SelectAll;
           exit;
       end;
    Screen.Cursor := crHourGlass;
    {so confirma se prod. já selecto}
    if EdtPRD_REFER.Text = '' then
       begin
           uteis.aviso('Selecione um produto !');
           Screen.Cursor := crDefault;
           exit;
       end;
    if FormOrdServCentro.SqlCdsParamPMT_VARIACOES.AsString = 'S' then
       begin
           {verifica se quant. p/ modelos bate c/ quant. p/ ord}
           if (CurrQtdeOP.Value)<>(CurrMod1.Value+CurrMod2.Value+CurrMod3.Value+CurrMod4.Value+CurrMod5.Value+CurrMod6.Value+CurrMod7.Value+CurrMod8.Value) then
              begin
                  uteis.aviso('A soma  da quantidade por variações deve' +
                  #13 + 'ser igual a quantidade por Ordem.');
                  Screen.Cursor := crDefault;
                  exit;
              end;
       end;
       {ZERAR O GENERATORS CASO A TABELA OSV_IT02 ESTIVER VAZIA}
       try
         DataCadastros.sqlUpdate.Close;
         DataCadastros.SqlUpdate.sql.text :='SELECT MAX(OSI_REGISTRO) AS wZerar FROM OSV_IT02';
         DataCadastros.sqlUpdate.Open;
         if DataCadastros.sqlUpdate.FieldByName('wZerar').IsNull = true then
            begin
                DataCadastros.sqlUpdate.Close;
                DataCadastros.SqlUpdate.sql.text :='SET GENERATOR GEN_OSV_IT02 TO 0';
                DataCadastros.sqlUpdate.Execsql;
            end;
       except on E:EdataBaseError do
          uteis.erro  (pchar('Erro ao zerar a tabela OSV_IT02 !'+E.MESSAGE));
       end;

    {insere e grava O.S(s)}
    for wGerar := 1 to CurrOPGerar.AsInteger do
      begin
          {grava ORDEM (cabeçalho O.P.)}
          Screen.Cursor := crHourGlass;
          try
            if wGerar > 1 then
               begin
                   {Busca no sequenciador o proximo codigo}
                   EdtORDEM.Text := SequenciadorPRC(DataCadastros.SQLConnection1,DBINICIO.EMPRESA.EMP_CODIGO, 'OSV0001', 'OSV_CODIGO', 0);
                   EdtORDEM.Text := StrZero(EdtORDEM.Text,EdtORDEM.MaxLength);
               end;
            IncluirOP(EdtORDEM.Text,EdtPRD_REFER.Text);
            {Busca itens da Ficha tecnica para passar para Ordem Serviço Itens}
            try
              wSql1 := 'SELECT I1.*,P1.PTI_SIGLA FROM FTC_IT01 I1 LEFT JOIN PRD0000 P2 ON (P2.PRD_REFER = I1.PRD_REFER_ITENS)LEFT JOIN PRD_TIPO P1 ON (P1.PTI_CODIGO = P2.PTI_CODIGO)';
              SqlCdsItensFicha.Close;
              SqlCdsItensFicha.CommandText := SQLDEF('PRODUTOS',wSql1,'WHERE I1.PRD_REFER = '''+EdtPRD_REFER.Text+'''','I1.FTI_REGISTRO,I1.PRD_REFER,I1.PRD_REFER_ITENS','I1.');
              SqlCdsItensFicha.Open;
              if SqlCdsItensFicha.IsEmpty = false then
                 begin
                     {Carrega todos os itens da ficha na tabela OSV_IT02}
                     SqlCdsItensFicha.First;
                     SqlCdsItensFicha.DisableControls;
                     while(SqlCdsItensFichaPRD_REFER.AsString = EdtPRD_REFER.Text)and not(SqlCdsItensFicha.Eof) do
                      begin
                          {Gravando os Itens da Ficha Tecnica na Tabela OSV_IT02}
                          try
                            try
                              {Zerar as variaveis}
                              wM1:=0;wM2:=0;wM3:=0;wM4:=0;wM5:=0;wM6:=0;wM7:=0;wM8:=0;
                              FormatSettings.DecimalSeparator := '.';
                              if FormOrdServCentro.SqlCdsParamPMT_VARIACOES.AsString = 'S' then
                                 begin
                                     if (SqlCdsItensFichaFTI_MODE1.AsString <> '')and(CurrMod1.Value>0) then
                                        wM1 := CurrMod1.AsInteger;
                                     if (SqlCdsItensFichaFTI_MODE2.AsString <> '')and(CurrMod2.Value>0) then
                                        wM2 := CurrMod2.AsInteger;
                                     if (SqlCdsItensFichaFTI_MODE3.AsString <> '')and(CurrMod3.Value>0) then
                                        wM3 := CurrMod3.AsInteger;
                                     if (SqlCdsItensFichaFTI_MODE4.AsString <> '')and(CurrMod4.Value>0) then
                                        wM4 := CurrMod4.AsInteger;
                                     if (SqlCdsItensFichaFTI_MODE5.AsString <> '')and(CurrMod5.Value>0) then
                                        wM5 := CurrMod5.AsInteger;
                                     if (SqlCdsItensFichaFTI_MODE6.AsString <> '')and(CurrMod6.Value>0) then
                                        wM6 := CurrMod6.AsInteger;
                                     if (SqlCdsItensFichaFTI_MODE7.AsString <> '')and(CurrMod7.Value>0) then
                                        wM7 := CurrMod7.AsInteger;
                                     if (SqlCdsItensFichaFTI_MODE8.AsString <> '')and(CurrMod8.Value>0) then
                                        wM8 := CurrMod8.AsInteger;
                                 end
                              else
                                 begin
                                     if (SqlCdsItensFichaFTI_MODE1.AsString <> '')and(CurrQtdeOP.AsInteger>0) then
                                        wM1 := CurrQtdeOP.AsInteger;
                                 end;
                              wConsumo := 0;
                              wConsumo := SqlCdsItensFichaFTI_UC.AsFloat;
                              {Inclui o item na tabela item da op}
                              IncluirItensOP(1,EdtORDEM.Text,EdtPRD_REFER.Text,SqlCdsItensFichaPRD_REFER_ITENS.AsString);
                            except on E:EdataBaseError do
                              uteis.erro  (pchar('Erro ao inserir o item na tabela OSV_IT02 !'+e.message));
                            end;
                          finally
                             FormatSettings.DecimalSeparator := ',';
                          end;
                          SqlCdsItensFicha.Next;
                      end;
                     wLETRA1 := 65;
                     wLETRA2 := 64;
                     X       := 01;
                     SqlCdsItensFicha.First;
                     SqlCdsItensFicha.DisableControls;
                     while(SqlCdsItensFichaPRD_REFER.AsString = EdtPRD_REFER.Text)and not(SqlCdsItensFicha.Eof) do
                      begin
                          {Gravando os Itens da Ficha Tecnica na Tabela OSV_IT02}
                          try
                            try
                              {Zerar as variaveis}
                              wM1:=0;wM2:=0;wM3:=0;wM4:=0;wM5:=0;wM6:=0;wM7:=0;wM8:=0;
                              FormatSettings.DecimalSeparator := '.';
                              if (SqlCdsItensFichaPTI_SIGLA.AsString = 'PA') or (SqlCdsItensFichaPTI_SIGLA.AsString = 'PI') then
                                 begin
                                     if FormOrdServCentro.SqlCdsParamPMT_VARIACOES.AsString = 'S' then
                                        begin
                                            if (SqlCdsItensFichaFTI_MODE1.AsString <> '')and(CurrMod1.Value>0) then
                                               wM1 := CurrMod1.AsInteger;
                                            if (SqlCdsItensFichaFTI_MODE2.AsString <> '')and(CurrMod2.Value>0) then
                                               wM2 := CurrMod2.AsInteger;
                                            if (SqlCdsItensFichaFTI_MODE3.AsString <> '')and(CurrMod3.Value>0) then
                                               wM3 := CurrMod3.AsInteger;
                                            if (SqlCdsItensFichaFTI_MODE4.AsString <> '')and(CurrMod4.Value>0) then
                                               wM4 := CurrMod4.AsInteger;
                                            if (SqlCdsItensFichaFTI_MODE5.AsString <> '')and(CurrMod5.Value>0) then
                                               wM5 := CurrMod5.AsInteger;
                                            if (SqlCdsItensFichaFTI_MODE6.AsString <> '')and(CurrMod6.Value>0) then
                                               wM6 := CurrMod6.AsInteger;
                                            if (SqlCdsItensFichaFTI_MODE7.AsString <> '')and(CurrMod7.Value>0) then
                                               wM7 := CurrMod7.AsInteger;
                                            if (SqlCdsItensFichaFTI_MODE8.AsString <> '')and(CurrMod8.Value>0) then
                                               wM8 := CurrMod8.AsInteger;
                                        end
                                     else
                                        begin
                                            if (SqlCdsItensFichaFTI_MODE1.AsString <> '')and(CurrQtdeOP.AsInteger>0) then
                                               wM1 := CurrQtdeOP.AsInteger;
                                        end;
                                     wConsumo := 0;
                                     wConsumo := SqlCdsItensFichaFTI_UC.AsFloat;
                                     Edit1.Text := EdtORDEM.Text + AtribuirLetra();
                                     BuscaFicha(SqlCdsItensFichaPRD_REFER_ITENS.AsString);
                                     IncluirOP(Edit1.Text,SqlCdsItensFichaPRD_REFER_ITENS.AsString);
                                     IncluirItensOP(2,Edit1.Text,SqlCdsItensFichaPRD_REFER.AsString,SqlCdsItensFichaPRD_REFER_ITENS.AsString);
                                     INC(X);
                                 end;
                            except on E:EdataBaseError do
                              uteis.erro  (pchar('Erro ao inserir o item na tabela OSV_IT02 !'+e.message));
                            end;
                          finally
                             FormatSettings.DecimalSeparator := ',';
                          end;
                          SqlCdsItensFicha.Next;
                      end;
                     SqlCdsItensFicha.EnableControls;
                     DmProducao.CdsOsvIt.Close;
                     SqlCdsItensFicha.Close;
                 end;
            except on E:EdataBaseError do
               uteis.erro  (pchar('Erro ao localizar os itens da ficha técnica !'+e.message));
            end;
          except on E:EDataBaseError do
            uteis.erro  (pchar('Erro ao gravar o registro !'+e.message));
          end;
          Screen.cursor := crDefault;
      end;
    uteis.aviso('O.P. aberta com sucesso!'+#13+'O Consumo de matéria-prima já foi considerado para saldo de estoque');
    EdtORDEM.Enabled := true;
    FormOrdServCentro.CdsOP.Refresh;
    Screen.Cursor := crDefault;
    close;
end;

procedure TFormOrdServGera.DtEmissaoEnter(Sender: tObject);
begin
  DtEmissao.Date := now;
end;

procedure TFormOrdServGera.DtEmissaoExit(Sender: tObject);
begin
    if not TestaDataStr(DtEmissao.Text) then
       DtEmissao.setfocus;
end;

procedure TFormOrdServGera.Edt_PedidoClick(Sender: tObject);
begin
    Edt_Pedido.SelectAll;
end;

procedure TFormOrdServGera.Edt_PedidoEnter(Sender: tObject);
begin
    Edt_Pedido.SelectAll;
end;

procedure TFormOrdServGera.BuscaFicha(wPRODUTO:String);
begin
    Screen.Cursor := crHourGlass;
    try
      SqlCdsFichaTec.Close;
      SqlCdsFichaTec.CommandText := SQLDEF('PRODUTOS','SELECT F1.*,P1.PRD_DESCRI,P1.PRD_DCVAR1,P1.PRD_DCVAR2,P1.PRD_DCVAR3,P1.PRD_DCVAR4,P1.PRD_DCVAR5,P1.PRD_DCVAR6,P1.PRD_DCVAR7,P1.PRD_DCVAR8 from FTC0000 F1 '+
                                           'LEFT JOIN PRD0000 P1 ON F1.PRD_REFER = P1.PRD_REFER','WHERE F1.PRD_REFER = '''+wPRODUTO+'''','F1.PRD_REFER','F1.');
      SqlCdsFichaTec.Open;
      if (SqlCdsFichaTec.IsEmpty = TRUE) then
         begin
             uteis.aviso('Ficha Técnica não cadastrada !');
             EdtPRD_REFER.Text := '';
             EdtPRD_REFER.SetFocus;
             EdtPRD_REFER.SelectAll;
             SpProduto.Enabled := true;
         end
      else
         begin
             CurrMod1.Enabled := iif(SqlCdsFichaTecPRD_DCVAR1.IsNull = False,'true','false');
             CurrMod1.Color   := iif(SqlCdsFichaTecPRD_DCVAR1.IsNull = False,clWindow,$00D7D7D7);
             CurrMod2.Enabled := iif(SqlCdsFichaTecPRD_DCVAR2.IsNull = False,'true','false');
             CurrMod2.Color   := iif(SqlCdsFichaTecPRD_DCVAR2.IsNull = False,clWindow,$00D7D7D7);
             CurrMod3.Enabled := iif(SqlCdsFichaTecPRD_DCVAR3.IsNull = False,'true','false');
             CurrMod3.Color   := iif(SqlCdsFichaTecPRD_DCVAR3.IsNull = False,clWindow,$00D7D7D7);
             CurrMod4.Enabled := iif(SqlCdsFichaTecPRD_DCVAR4.IsNull = False,'true','false');
             CurrMod4.Color   := iif(SqlCdsFichaTecPRD_DCVAR4.IsNull = False,clWindow,$00D7D7D7);
             CurrMod5.Enabled := iif(SqlCdsFichaTecPRD_DCVAR5.IsNull = False,'true','false');
             CurrMod5.Color   := iif(SqlCdsFichaTecPRD_DCVAR5.IsNull = False,clWindow,$00D7D7D7);
             CurrMod6.Enabled := iif(SqlCdsFichaTecPRD_DCVAR6.IsNull = False,'true','false');
             CurrMod6.Color   := iif(SqlCdsFichaTecPRD_DCVAR6.IsNull = False,clWindow,$00D7D7D7);
             CurrMod7.Enabled := iif(SqlCdsFichaTecPRD_DCVAR7.IsNull = False,'true','false');
             CurrMod7.Color   := iif(SqlCdsFichaTecPRD_DCVAR7.IsNull = False,clWindow,$00D7D7D7);
             CurrMod8.Enabled := iif(SqlCdsFichaTecPRD_DCVAR8.IsNull = False,'true','false');
             CurrMod8.Color   := iif(SqlCdsFichaTecPRD_DCVAR8.IsNull = False,clWindow,$00D7D7D7);
             LblMod1.Visible  := iif(SqlCdsFichaTecPRD_DCVAR1.IsNull = False,'true','false');
             LblMod2.Visible  := iif(SqlCdsFichaTecPRD_DCVAR2.IsNull = False,'true','false');
             LblMod3.Visible  := iif(SqlCdsFichaTecPRD_DCVAR3.IsNull = False,'true','false');
             LblMod4.Visible  := iif(SqlCdsFichaTecPRD_DCVAR4.IsNull = False,'true','false');
             LblMod5.Visible  := iif(SqlCdsFichaTecPRD_DCVAR5.IsNull = False,'true','false');
             LblMod6.Visible  := iif(SqlCdsFichaTecPRD_DCVAR6.IsNull = False,'true','false');
             LblMod7.Visible  := iif(SqlCdsFichaTecPRD_DCVAR7.IsNull = False,'true','false');
             LblMod8.Visible  := iif(SqlCdsFichaTecPRD_DCVAR8.IsNull = False,'true','false');
         end;
    except on E:EdatabaseError do
      uteis.erro  (pchar('Erro ao localizar a ficha técnica !'+e.Message));
    end;
    Screen.Cursor := crDefault;
end;

procedure TFormOrdServGera.SpProdutoClick(Sender: tObject);
begin
    try
      try
        FormFichaTecGrid := TFormFichaTecGrid.Create(Application);
        FormFichaTecGrid.ShowModal;
      finally
        FormFichaTecGrid.Destroy;
        FormFichaTecGrid := nil;
      end;
    except
        //beep;
        uteis.erro  ('Ocorreu um erro na criação do formulário!');
    end;
end;

procedure TFormOrdServGera.Bit_SairClick(Sender: tObject);
begin
    Close;
end;

procedure TFormOrdServGera.Bit_CancelarClick(Sender: tObject);
begin
    try
      EdtPRD_REFER.Color    := clWindow;
      EdtPRD_REFER.TabStop  := True;
      EdtPRD_REFER.ReadOnly := False;
      SpProduto.Enabled     := True;
      SqlCdsFichaTec.Close;
      SqlCdsPedido.Close;
      DataCadastros.sqlUpdate.close;
      DataCadastros.SqlUpdate.sql.text :=SQLDEF('ORDEMPRODUCAO','DELETE FROM OSV0001 ','WHERE OSV_CODIGO = '''+EdtORDEM.Text+'''','','');
      DataCadastros.sqlUpdate.Execsql;
      {Grava o codigo cancelado na tabela SEQUENCIADOR_PENDENCIAS}
      SequenciadorPRC(DataCadastros.SQLConnection1, DBINICIO.EMPRESA.EMP_CODIGO,'OSV0001', 'OSV_CODIGO', 1, EdtORDEM.Text);
      LimparDados;
      HabilitaBotoes;
      EdtORDEM.Color   := clWindow;
      EdtORDEM.Enabled := true;
      EdtORDEM.SetFocus;
      EdtORDEM.SelectAll;
    except on E:EDataBaseError do
      uteis.erro  (pchar('Erro ao cancelar a Ordem de serviço ! '+e.Message));
    end;
end;

procedure TFormOrdServGera.LimparDados;
begin
    EdtPRD_REFER.Text  := '';
    EdtPrd_Descri.Text := '';
    Edt_Pedido.Text    := '';
    EdtCLI_RAZAO.Text  := '';
    DtEmissao.Text     := '';
    Num_Preco.Value    := 0;
    CurrQtdeOp.Value   := 0;
    CurrOPGerar.Value  := 0;
    CurrQtde.Value     := 0;
    CurrMod1.Value     := 0;
    CurrMod2.Value     := 0;
    CurrMod3.Value     := 0;
    CurrMod4.Value     := 0;
    CurrMod5.Value     := 0;
    CurrMod6.Value     := 0;
    CurrMod7.Value     := 0;
    CurrMod8.Value     := 0;
end;

procedure TFormOrdServGera.CurrOPGerarExit(Sender: tObject);
begin
    {setar "1" p/ minimo}
    if (CurrOPGerar.Value = 0) then
       CurrOPGerar.Value := 1;
    {define total a produzir}
    CurrQtde.Value := (CurrQtdeOP.Value * CurrOPGerar.Value);
end;

procedure TFormOrdServGera.EdtORDEMKeyPress(Sender: tObject;
  var Key: Char);
begin
    if not (key in ['0'..'9',#8]) then
       begin
          //beep;
          Key := #0;
       end;
end;

procedure TFormOrdServGera.EdtORDEMExit(Sender: tObject);
begin
    EdtORDEM.Text     := StrZero(EDTORDEM.Text,EDTORDEM.MaxLength);
end;

procedure TFormOrdServGera.DesabilitaBotoes;
begin
    Bit_Gravar.Enabled   := True;
    Bit_Cancelar.Enabled := True;
    Bit_Sair.Enabled     := False;
end;

procedure TFormOrdServGera.HabilitaBotoes;
begin
    Bit_Gravar.Enabled   := False;
    Bit_Cancelar.Enabled := False;
    Bit_Sair.Enabled     := True;
end;

////////////////////////////////////////////////////
function TFormOrdServGera.AtribuirLetra():String;
begin
    try
      Screen.Cursor := CrHourglass;
//    666667777777777888888888891
//    56789012345678901234567890[
//    ABCdEFGHIJKLMNOPQRSTUVWXYZ
      if (X >=1) and (X <= 26) then
         begin
             INC(wLETRA2);
             wCOLUNA := CHAR(ord(wLETRA1))+CHAR(ord(wLETRA2));
         end
      else
         begin
             X := 1;
             wLETRA2 := 65;
             INC(wLETRA1);
             wCOLUNA := CHAR(ord(wLETRA1))+CHAR(ord(wLETRA2));
         end;
      Result := wColuna;
    except on E:EDataBaseError do
      uteis.erro  (pchar('erro ao gerar o codigo ! '));
    end;
end;

procedure TFormOrdServGera.IncluirOP(wOP: String; wPRODUTO: String);
begin
    try
      wSql1 := 'INSERT INTO OSV0001 ('+
               'OSV_CODIGO,'+
               'FTC_CRIACAO,'+
               'OSV_EMISSAO,'+
               'OSV_QTDE,'+
               'OSV_PRECOUNIT,'+
               'FTC_TUP,'+
               'PRD_REFER,'+
               'PED_CODIGO,'+
               'OSV_QTDE1,'+
               'OSV_QTDE2,'+
               'OSV_QTDE3,'+
               'OSV_QTDE4,'+
               'OSV_QTDE5,'+
               'OSV_QTDE6,'+
               'OSV_QTDE7,'+
               'OSV_QTDE8,'+
               'CLI_CODIGO,'+
               'OSV_STATUS,'+
               'OSV_OBS1,'+
               'OSV_OBS2,'+
               'OSV_OBS3,'+
               'OSV_OBS4,'+
               'OSV_OBS5,'+
               'OSV_OBS6,'+
               'OSV_OBS7,'+
               'EMP_CODIGO)';
      wSql2 := 'VALUES ('''+wOP+''','''+
                            DataAmericana(SqlCdsFichaTecFTC_CRIACAO.Text)+''','''+
                            DataAmericana(DtEmissao.Text)+''','''+
                            ValorAmericano(CurrQtdeOP.Text)+''','''+
                            ValorAmericano(Num_preco.Text)+''','''+
                            ValorAmericano(SqlCdsFichaTecFTC_TUP.Text)+''','''+
                            wPRODUTO+''','+
                            IIF(Edt_Pedido.Text='','null',chr(39)+Edt_Pedido.Text+chr(39))+','''+
                            IIF(WvARIACOES = 'S',ValorAmericano(CurrMod1.Text),'0')+''','''+
                            IIF(WvARIACOES = 'S',ValorAmericano(CurrMod2.Text),'0')+''','''+
                            IIF(WvARIACOES = 'S',ValorAmericano(CurrMod3.Text),'0')+''','''+
                            IIF(WvARIACOES = 'S',ValorAmericano(CurrMod4.Text),'0')+''','''+
                            IIF(WvARIACOES = 'S',ValorAmericano(CurrMod5.Text),'0')+''','''+
                            IIF(WvARIACOES = 'S',ValorAmericano(CurrMod6.Text),'0')+''','''+
                            IIF(WvARIACOES = 'S',ValorAmericano(CurrMod7.Text),'0')+''','''+
                            IIF(WvARIACOES = 'S',ValorAmericano(CurrMod8.Text),'0')+''','+
                            iif(SqlCdsPedidoCLI_CODIGO.isNull=true,'null',chr(39)+SqlCdsPedidoCLI_CODIGO.AsString+chr(39))+','''+
                            'A'','+
                            iif(EdtOsv_obs1.Text='','null',chr(39)+EdtOsv_obs1.Text+chr(39))+','+
                            iif(EdtOsv_obs2.Text='','null',chr(39)+EdtOsv_obs2.Text+chr(39))+','+
                            iif(EdtOsv_obs3.Text='','null',chr(39)+EdtOsv_obs3.Text+chr(39))+','+
                            iif(EdtOsv_obs4.Text='','null',chr(39)+EdtOsv_obs4.Text+chr(39))+','+
                            iif(EdtOsv_obs5.Text='','null',chr(39)+EdtOsv_obs5.Text+chr(39))+','+
                            iif(EdtOsv_obs6.Text='','null',chr(39)+EdtOsv_obs6.Text+chr(39))+','+
                            iif(EdtOsv_obs7.Text='','null',chr(39)+EdtOsv_obs7.Text+chr(39))+','''+
                            DBINICIO.EMPRESA.EMP_CODIGO+''')';
      DataCadastros.sqlUpdate.Close;
      DataCadastros.SqlUpdate.sql.text :=wSql1+wSql2;
      DataCadastros.sqlUpdate.Execsql;
    except on E:EDataBaseError do
        uteis.erro  (pchar('Erro ao incluir a Ordem de Produção ! '+e.message));
    end;
end;

procedure TFormOrdServGera.IncluirItensOP(wTipo :Integer; wOP,wRefer, wRefeItens: String);
begin
    try
      if (wTipo = 1) then
         begin
             wSql1 := 'INSERT INTO OSV_IT02 ('+
                      'OSV_CODIGO,'+
                      'PRD_REFER,'+
                      'PRD_REFER_ITENS,'+
                      'OSI_UC,'+
                      'OSI_QTDE1,'+
                      'OSI_QTDE2,'+
                      'OSI_QTDE3,'+
                      'OSI_QTDE4,'+
                      'OSI_QTDE5,'+
                      'OSI_QTDE6,'+
                      'OSI_QTDE7,'+
                      'OSI_QTDE8,'+
                      'EMP_CODIGO) ';
             wSql2 := 'VALUES ('''+wOP+''','''+
                                   wRefer+''','''+
                                   wRefeItens+''','''+
                                   CurrToStr(wConsumo)+''','''+
                                   FloatToStr(wM1)+''','''+
                                   FloatToStr(wM2)+''','''+
                                   FloatToStr(wM3)+''','''+
                                   FloatToStr(wM4)+''','''+
                                   FloatToStr(wM5)+''','''+
                                   FloatToStr(wM6)+''','''+
                                   FloatToStr(wM7)+''','''+
                                   FloatToStr(wM8)+''','''+
                                   DBINICIO.EMPRESA.EMP_CODIGO+''')';
             if (wM1>0)or(wM2>0)or(wM3>0)or(wM4>0)or(wM5>0)or(wM6>0)or(wM7>0)or(wM8>0) then
                begin
                    DataCadastros.sqlUpdate.Close;
                    DataCadastros.SqlUpdate.sql.text :=wSql1+wSql2;
                    DataCadastros.sqlUpdate.Execsql;
                end;
         end;
      if (wTipo = 2) then
         begin
             wSql1 := 'SELECT I1.*,P1.PTI_SIGLA FROM FTC_IT01 I1 LEFT JOIN PRD0000 P2 ON (P2.PRD_REFER = I1.PRD_REFER_ITENS)LEFT JOIN PRD_TIPO P1 ON (P1.PTI_CODIGO = P2.PTI_CODIGO)';
             SqlCdsItensFicha2.Close;
             SqlCdsItensFicha2.CommandText := SQLDEF('PRODUTOS',wSql1,'WHERE I1.PRD_REFER = '''+wRefeItens+'''','I1.FTI_REGISTRO,I1.PRD_REFER,I1.PRD_REFER_ITENS','I1.');
             SqlCdsItensFicha2.Open;
             if SqlCdsItensFicha2.IsEmpty = false then
                begin
                    {Inserir todos os itens na tabela OSV_IT02}
                    SqlCdsItensFicha2.First;
                    SqlCdsItensFicha2.DisableControls;
                    while(SqlCdsItensFicha2.FieldByName('PRD_REFER').AsString = wRefeItens)and not(SqlCdsItensFicha2.Eof) do
                     begin
                         {Gravando os Itens da Ficha Tecnica na Tabela OSV_IT02}
                         try
                           FormatSettings.DecimalSeparator := '.';
                           try
                             {Zerar as variaveis}
                             wM1:=0;wM2:=0;wM3:=0;wM4:=0;wM5:=0;wM6:=0;wM7:=0;wM8:=0;
                             if FormOrdServCentro.SqlCdsParamPMT_VARIACOES.AsString = 'S' then
                                begin
                                    if (SqlCdsItensFicha2.FieldByName('FTI_MODE1').AsString <> '')and(CurrMod1.Value>0) then
                                       wM1 := CurrMod1.AsInteger;
                                    if (SqlCdsItensFicha2.FieldByName('FTI_MODE2').AsString <> '')and(CurrMod2.Value>0) then
                                       wM2 := CurrMod2.AsInteger;
                                    if (SqlCdsItensFicha2.FieldByName('FTI_MODE3').AsString <> '')and(CurrMod3.Value>0) then
                                       wM3 := CurrMod3.AsInteger;
                                    if (SqlCdsItensFicha2.FieldByName('FTI_MODE4').AsString <> '')and(CurrMod4.Value>0) then
                                       wM4 := CurrMod4.AsInteger;
                                    if (SqlCdsItensFicha2.FieldByName('FTI_MODE5').AsString <> '')and(CurrMod5.Value>0) then
                                       wM5 := CurrMod5.AsInteger;
                                    if (SqlCdsItensFicha2.FieldByName('FTI_MODE6').AsString <> '')and(CurrMod6.Value>0) then
                                       wM6 := CurrMod6.AsInteger;
                                    if (SqlCdsItensFicha2.FieldByName('FTI_MODE7').AsString <> '')and(CurrMod7.Value>0) then
                                       wM7 := CurrMod7.AsInteger;
                                    if (SqlCdsItensFicha2.FieldByName('FTI_MODE8').AsString <> '')and(CurrMod8.Value>0) then
                                       wM8 := CurrMod8.AsInteger;
                                end
                             else
                                begin
                                    if (SqlCdsItensFicha2.FieldByName('FTI_MODE1').AsString <> '')and(CurrQtdeOP.AsInteger>0) then
                                       wM1 := CurrQtdeOP.AsInteger;
                                end;
                             wConsumo := 0;
                             wConsumo := SqlCdsItensFicha2.FieldByName('FTI_UC').AsFloat;
                             IncluirItensOP(1,Edit1.Text,SqlCdsItensFicha2PRD_REFER.AsString,SqlCdsItensFicha2PRD_REFER_ITENS.AsString);
                           except on E:EDataBaseError do
                              uteis.erro  (pchar('Erro ao inserir os itens na tabela OSV_IT02 ! '+E.MESSAGE));
                           end;
                         finally
                            FormatSettings.DecimalSeparator := ',';
                         end;
                         SqlCdsItensFicha2.Next;
                     end;
                    {Insere os itens com grade}
                    SqlCdsItensFicha2.First;
                    while(SqlCdsItensFicha2.FieldByName('PRD_REFER').AsString = wRefeItens)and not(SqlCdsItensFicha2.Eof) do
                     begin
                         {Gravando os Itens da Ficha Tecnica na Tabela OSV_IT02}
                         try
                           FormatSettings.DecimalSeparator := '.';
                           try
                             {Zerar as variaveis}
                             wM1:=0;wM2:=0;wM3:=0;wM4:=0;wM5:=0;wM6:=0;wM7:=0;wM8:=0;
                             if (SqlCdsItensFicha2PTI_SIGLA.AsString = 'PA') or (SqlCdsItensFicha2PTI_SIGLA.AsString = 'PI') then
                                begin
                                    if FormOrdServCentro.SqlCdsParamPMT_VARIACOES.AsString = 'S' then
                                       begin
                                           if (SqlCdsItensFicha2.FieldByName('FTI_MODE1').AsString <> '')and(CurrMod1.Value>0) then
                                              wM1 := CurrMod1.AsInteger;
                                           if (SqlCdsItensFicha2.FieldByName('FTI_MODE2').AsString <> '')and(CurrMod2.Value>0) then
                                              wM2 := CurrMod2.AsInteger;
                                           if (SqlCdsItensFicha2.FieldByName('FTI_MODE3').AsString <> '')and(CurrMod3.Value>0) then
                                              wM3 := CurrMod3.AsInteger;
                                           if (SqlCdsItensFicha2.FieldByName('FTI_MODE4').AsString <> '')and(CurrMod4.Value>0) then
                                              wM4 := CurrMod4.AsInteger;
                                           if (SqlCdsItensFicha2.FieldByName('FTI_MODE5').AsString <> '')and(CurrMod5.Value>0) then
                                              wM5 := CurrMod5.AsInteger;
                                           if (SqlCdsItensFicha2.FieldByName('FTI_MODE6').AsString <> '')and(CurrMod6.Value>0) then
                                              wM6 := CurrMod6.AsInteger;
                                           if (SqlCdsItensFicha2.FieldByName('FTI_MODE7').AsString <> '')and(CurrMod7.Value>0) then
                                              wM7 := CurrMod7.AsInteger;
                                           if (SqlCdsItensFicha2.FieldByName('FTI_MODE8').AsString <> '')and(CurrMod8.Value>0) then
                                              wM8 := CurrMod8.AsInteger;
                                       end
                                    else
                                       begin
                                           if (SqlCdsItensFicha2.FieldByName('FTI_MODE1').AsString <> '')and(CurrQtdeOP.AsInteger>0) then
                                              wM1 := CurrQtdeOP.AsInteger;
                                       end;
                                    wConsumo := 0;
                                    wConsumo := SqlCdsItensFicha2.FieldByName('FTI_UC').AsFloat;
                                    Edit1.Text := EdtORDEM.Text + AtribuirLetra();
                                    BuscaFicha(SqlCdsItensFicha2PRD_REFER_ITENS.AsString);
                                    IncluirOP(Edit1.Text,SqlCdsItensFicha2PRD_REFER_ITENS.AsString);
                                    IncluirItensOP(3,Edit1.Text,SqlCdsItensFicha2PRD_REFER.AsString,SqlCdsItensFicha2PRD_REFER_ITENS.AsString);
                                    INC(X);
                                end;
                           except on E:EDataBaseError do
                              uteis.erro  (pchar('Erro ao inserir os itens na tabela OSV_IT02 ! '+E.MESSAGE));
                           end;
                         finally
                            FormatSettings.DecimalSeparator := ',';
                         end;
                         SqlCdsItensFicha2.Next;
                     end;
                    SqlCdsItensFicha2.EnableControls;
                end;
         end;

      if (wTipo = 3) then
         begin
             wSql1 := 'SELECT I1.*,P1.PTI_SIGLA FROM FTC_IT01 I1 LEFT JOIN PRD0000 P2 ON (P2.PRD_REFER = I1.PRD_REFER_ITENS)LEFT JOIN PRD_TIPO P1 ON (P1.PTI_CODIGO = P2.PTI_CODIGO)';
             SqlCdsItensFicha3.Close;
             SqlCdsItensFicha3.CommandText := SQLDEF('PRODUTOS',wSql1,'WHERE I1.PRD_REFER = '''+wRefeItens+'''','I1.FTI_REGISTRO,I1.PRD_REFER,I1.PRD_REFER_ITENS','I1.');
             SqlCdsItensFicha3.Open;
             if SqlCdsItensFicha3.IsEmpty = false then
                begin
                    {Inserir todos os itens na tabela OSV_IT02}
                    SqlCdsItensFicha3.First;
                    SqlCdsItensFicha3.DisableControls;
                    while(SqlCdsItensFicha3.FieldByName('PRD_REFER').AsString = wRefeItens)and not(SqlCdsItensFicha3.Eof) do
                     begin
                         {Gravando os Itens da Ficha Tecnica na Tabela OSV_IT02}
                         try
                           FormatSettings.DecimalSeparator := '.';
                           try
                             {Zerar as variaveis}
                             wM1:=0;wM2:=0;wM3:=0;wM4:=0;wM5:=0;wM6:=0;wM7:=0;wM8:=0;
                             if FormOrdServCentro.SqlCdsParamPMT_VARIACOES.AsString = 'S' then
                                begin
                                    if (SqlCdsItensFicha3.FieldByName('FTI_MODE1').AsString <> '')and(CurrMod1.Value>0) then
                                       wM1 := CurrMod1.AsInteger;
                                    if (SqlCdsItensFicha3.FieldByName('FTI_MODE2').AsString <> '')and(CurrMod2.Value>0) then
                                       wM2 := CurrMod2.AsInteger;
                                    if (SqlCdsItensFicha3.FieldByName('FTI_MODE3').AsString <> '')and(CurrMod3.Value>0) then
                                       wM3 := CurrMod3.AsInteger;
                                    if (SqlCdsItensFicha3.FieldByName('FTI_MODE4').AsString <> '')and(CurrMod4.Value>0) then
                                       wM4 := CurrMod4.AsInteger;
                                    if (SqlCdsItensFicha3.FieldByName('FTI_MODE5').AsString <> '')and(CurrMod5.Value>0) then
                                       wM5 := CurrMod5.AsInteger;
                                    if (SqlCdsItensFicha3.FieldByName('FTI_MODE6').AsString <> '')and(CurrMod6.Value>0) then
                                       wM6 := CurrMod6.AsInteger;
                                    if (SqlCdsItensFicha3.FieldByName('FTI_MODE7').AsString <> '')and(CurrMod7.Value>0) then
                                       wM7 := CurrMod7.AsInteger;
                                    if (SqlCdsItensFicha3.FieldByName('FTI_MODE8').AsString <> '')and(CurrMod8.Value>0) then
                                       wM8 := CurrMod8.AsInteger;
                                end
                             else
                                begin
                                    if (SqlCdsItensFicha3.FieldByName('FTI_MODE1').AsString <> '')and(CurrQtdeOP.AsInteger>0) then
                                       wM1 := CurrQtdeOP.AsInteger;
                                end;
                             wConsumo := 0;
                             wConsumo := SqlCdsItensFicha3.FieldByName('FTI_UC').AsFloat;
                             IncluirItensOP(1,Edit1.Text,SqlCdsItensFicha3PRD_REFER.AsString,SqlCdsItensFicha3PRD_REFER_ITENS.AsString);
                           except on E:EDataBaseError do
                              uteis.erro  (pchar('Erro ao inserir os itens na tabela OSV_IT02 ! '+E.MESSAGE));
                           end;
                         finally
                            FormatSettings.DecimalSeparator := ',';
                         end;
                         SqlCdsItensFicha3.Next;
                     end;
                    SqlCdsItensFicha3.First;
                    while(SqlCdsItensFicha3.FieldByName('PRD_REFER').AsString = wRefeItens)and not(SqlCdsItensFicha3.Eof) do
                     begin
                         {Gravando os Itens da Ficha Tecnica na Tabela OSV_IT02}
                         try
                           FormatSettings.DecimalSeparator := '.';
                           try
                             {Zerar as variaveis}
                             wM1:=0;wM2:=0;wM3:=0;wM4:=0;wM5:=0;wM6:=0;wM7:=0;wM8:=0;
                             if (SqlCdsItensFicha3PTI_SIGLA.AsString = 'PA') or (SqlCdsItensFicha3PTI_SIGLA.AsString = 'PI') then
                                begin
                                    if FormOrdServCentro.SqlCdsParamPMT_VARIACOES.AsString = 'S' then
                                       begin
                                           if (SqlCdsItensFicha3.FieldByName('FTI_MODE1').AsString <> '')and(CurrMod1.Value>0) then
                                              wM1 := CurrMod1.AsInteger;
                                           if (SqlCdsItensFicha3.FieldByName('FTI_MODE2').AsString <> '')and(CurrMod2.Value>0) then
                                              wM2 := CurrMod2.AsInteger;
                                           if (SqlCdsItensFicha3.FieldByName('FTI_MODE3').AsString <> '')and(CurrMod3.Value>0) then
                                              wM3 := CurrMod3.AsInteger;
                                           if (SqlCdsItensFicha3.FieldByName('FTI_MODE4').AsString <> '')and(CurrMod4.Value>0) then
                                              wM4 := CurrMod4.AsInteger;
                                           if (SqlCdsItensFicha3.FieldByName('FTI_MODE5').AsString <> '')and(CurrMod5.Value>0) then
                                              wM5 := CurrMod5.AsInteger;
                                           if (SqlCdsItensFicha3.FieldByName('FTI_MODE6').AsString <> '')and(CurrMod6.Value>0) then
                                              wM6 := CurrMod6.AsInteger;
                                           if (SqlCdsItensFicha3.FieldByName('FTI_MODE7').AsString <> '')and(CurrMod7.Value>0) then
                                              wM7 := CurrMod7.AsInteger;
                                           if (SqlCdsItensFicha3.FieldByName('FTI_MODE8').AsString <> '')and(CurrMod8.Value>0) then
                                              wM8 := CurrMod8.AsInteger;
                                       end
                                    else
                                       begin
                                           if (SqlCdsItensFicha3.FieldByName('FTI_MODE1').AsString <> '')and(CurrQtdeOP.AsInteger>0) then
                                              wM1 := CurrQtdeOP.AsInteger;
                                       end;
                                    wConsumo := 0;
                                    wConsumo := SqlCdsItensFicha3.FieldByName('FTI_UC').AsFloat;
                                    Edit1.Text := EdtORDEM.Text + AtribuirLetra();
                                    BuscaFicha(SqlCdsItensFicha3PRD_REFER_ITENS.AsString);
                                    IncluirOP(Edit1.Text,SqlCdsItensFicha3PRD_REFER_ITENS.AsString);
                                    IncluirItensOP(4,Edit1.Text,SqlCdsItensFicha3PRD_REFER.AsString,SqlCdsItensFicha3PRD_REFER_ITENS.AsString);
                                    INC(X);
                                end;
                           except on E:EDataBaseError do
                              uteis.erro  (pchar('Erro ao inserir os itens na tabela OSV_IT02 ! '+E.MESSAGE));
                           end;
                         finally
                            FormatSettings.DecimalSeparator := ',';
                         end;
                         SqlCdsItensFicha3.Next;
                     end;
                    SqlCdsItensFicha3.EnableControls;
                end;
         end;

      if (wTipo = 4) then
         begin
             wSql1 := 'SELECT I1.*,P1.PTI_SIGLA FROM FTC_IT01 I1 LEFT JOIN PRD0000 P2 ON (P2.PRD_REFER = I1.PRD_REFER_ITENS)LEFT JOIN PRD_TIPO P1 ON (P1.PTI_CODIGO = P2.PTI_CODIGO)';
             SqlCdsItensFicha4.Close;
             SqlCdsItensFicha4.CommandText := SQLDEF('PRODUTOS',wSql1,'WHERE I1.PRD_REFER = '''+wRefeItens+'''','I1.FTI_REGISTRO,I1.PRD_REFER,I1.PRD_REFER_ITENS','I1.');
             SqlCdsItensFicha4.Open;
             if SqlCdsItensFicha4.IsEmpty = false then
                begin
                    {Inserir todos os itens na tabela OSV_IT02}
                    SqlCdsItensFicha4.First;
                    SqlCdsItensFicha4.DisableControls;
                    while(SqlCdsItensFicha4.FieldByName('PRD_REFER').AsString = wRefeItens)and not(SqlCdsItensFicha4.Eof) do
                     begin
                         {Gravando os Itens da Ficha Tecnica na Tabela OSV_IT02}
                         try
                           FormatSettings.DecimalSeparator := '.';
                           try
                             {Zerar as variaveis}
                             wM1:=0;wM2:=0;wM3:=0;wM4:=0;wM5:=0;wM6:=0;wM7:=0;wM8:=0;
                             if FormOrdServCentro.SqlCdsParamPMT_VARIACOES.AsString = 'S' then
                                begin
                                    if (SqlCdsItensFicha4.FieldByName('FTI_MODE1').AsString <> '')and(CurrMod1.Value>0) then
                                       wM1 := CurrMod1.AsInteger;
                                    if (SqlCdsItensFicha4.FieldByName('FTI_MODE2').AsString <> '')and(CurrMod2.Value>0) then
                                       wM2 := CurrMod2.AsInteger;
                                    if (SqlCdsItensFicha4.FieldByName('FTI_MODE3').AsString <> '')and(CurrMod3.Value>0) then
                                       wM3 := CurrMod3.AsInteger;
                                    if (SqlCdsItensFicha4.FieldByName('FTI_MODE4').AsString <> '')and(CurrMod4.Value>0) then
                                       wM4 := CurrMod4.AsInteger;
                                    if (SqlCdsItensFicha4.FieldByName('FTI_MODE5').AsString <> '')and(CurrMod5.Value>0) then
                                       wM5 := CurrMod5.AsInteger;
                                    if (SqlCdsItensFicha4.FieldByName('FTI_MODE6').AsString <> '')and(CurrMod6.Value>0) then
                                       wM6 := CurrMod6.AsInteger;
                                    if (SqlCdsItensFicha4.FieldByName('FTI_MODE7').AsString <> '')and(CurrMod7.Value>0) then
                                       wM7 := CurrMod7.AsInteger;
                                    if (SqlCdsItensFicha4.FieldByName('FTI_MODE8').AsString <> '')and(CurrMod8.Value>0) then
                                       wM8 := CurrMod8.AsInteger;
                                end
                             else
                                begin
                                    if (SqlCdsItensFicha4.FieldByName('FTI_MODE1').AsString <> '')and(CurrQtdeOP.AsInteger>0) then
                                       wM1 := CurrQtdeOP.AsInteger;
                                end;
                             wConsumo := 0;
                             wConsumo := SqlCdsItensFicha4.FieldByName('FTI_UC').AsFloat;
                             IncluirItensOP(1,Edit1.Text,SqlCdsItensFicha4PRD_REFER.AsString,SqlCdsItensFicha4PRD_REFER_ITENS.AsString);
                           except on E:EDataBaseError do
                              uteis.erro  (pchar('Erro ao inserir os itens na tabela OSV_IT02 ! '+E.MESSAGE));
                           end;
                         finally
                            FormatSettings.DecimalSeparator := ',';
                         end;
                         SqlCdsItensFicha4.Next;
                     end;
                    SqlCdsItensFicha4.First;
                    while(SqlCdsItensFicha4.FieldByName('PRD_REFER').AsString = wRefeItens)and not(SqlCdsItensFicha4.Eof) do
                     begin
                         {Gravando os Itens da Ficha Tecnica na Tabela OSV_IT02}
                         try
                           FormatSettings.DecimalSeparator := '.';
                           try
                             {Zerar as variaveis}
                             wM1:=0;wM2:=0;wM3:=0;wM4:=0;wM5:=0;wM6:=0;wM7:=0;wM8:=0;
                             if (SqlCdsItensFicha4PTI_SIGLA.AsString = 'PA') or (SqlCdsItensFicha4PTI_SIGLA.AsString = 'PI') then
                                begin
                                    if FormOrdServCentro.SqlCdsParamPMT_VARIACOES.AsString = 'S' then
                                       begin
                                           if (SqlCdsItensFicha4.FieldByName('FTI_MODE1').AsString <> '')and(CurrMod1.Value>0) then
                                              wM1 := CurrMod1.AsInteger;
                                           if (SqlCdsItensFicha4.FieldByName('FTI_MODE2').AsString <> '')and(CurrMod2.Value>0) then
                                              wM2 := CurrMod2.AsInteger;
                                           if (SqlCdsItensFicha4.FieldByName('FTI_MODE3').AsString <> '')and(CurrMod3.Value>0) then
                                              wM3 := CurrMod3.AsInteger;
                                           if (SqlCdsItensFicha4.FieldByName('FTI_MODE4').AsString <> '')and(CurrMod4.Value>0) then
                                              wM4 := CurrMod4.AsInteger;
                                           if (SqlCdsItensFicha4.FieldByName('FTI_MODE5').AsString <> '')and(CurrMod5.Value>0) then
                                              wM5 := CurrMod5.AsInteger;
                                           if (SqlCdsItensFicha4.FieldByName('FTI_MODE6').AsString <> '')and(CurrMod6.Value>0) then
                                              wM6 := CurrMod6.AsInteger;
                                           if (SqlCdsItensFicha4.FieldByName('FTI_MODE7').AsString <> '')and(CurrMod7.Value>0) then
                                              wM7 := CurrMod7.AsInteger;
                                           if (SqlCdsItensFicha4.FieldByName('FTI_MODE8').AsString <> '')and(CurrMod8.Value>0) then
                                              wM8 := CurrMod8.AsInteger;
                                       end
                                    else
                                       begin
                                           if (SqlCdsItensFicha4.FieldByName('FTI_MODE1').AsString <> '')and(CurrQtdeOP.AsInteger>0) then
                                              wM1 := CurrQtdeOP.AsInteger;
                                       end;
                                    wConsumo := 0;
                                    wConsumo := SqlCdsItensFicha4.FieldByName('FTI_UC').AsFloat;
                                    Edit1.Text := EdtORDEM.Text + AtribuirLetra();
                                    BuscaFicha(SqlCdsItensFicha4PRD_REFER_ITENS.AsString);
                                    IncluirOP(Edit1.Text,SqlCdsItensFicha4PRD_REFER_ITENS.AsString);
                                    IncluirItensOP(5,Edit1.Text,SqlCdsItensFicha4PRD_REFER.AsString,SqlCdsItensFicha4PRD_REFER_ITENS.AsString);
                                    INC(X);
                                end;
                           except on E:EDataBaseError do
                              uteis.erro  (pchar('Erro ao inserir os itens na tabela OSV_IT02 ! '+E.MESSAGE));
                           end;
                         finally
                            FormatSettings.DecimalSeparator := ',';
                         end;
                         SqlCdsItensFicha4.Next;
                     end;
                    SqlCdsItensFicha4.EnableControls;
                end;
         end;

      if (wTipo = 5) then
         begin
             wSql1 := 'SELECT I1.*,P1.PTI_SIGLA FROM FTC_IT01 I1 LEFT JOIN PRD0000 P2 ON (P2.PRD_REFER = I1.PRD_REFER_ITENS)LEFT JOIN PRD_TIPO P1 ON (P1.PTI_CODIGO = P2.PTI_CODIGO)';
             SqlCdsItensFicha5.Close;
             SqlCdsItensFicha5.CommandText := SQLDEF('PRODUTOS',wSql1,'WHERE I1.PRD_REFER = '''+wRefeItens+'''','I1.FTI_REGISTRO,I1.PRD_REFER,I1.PRD_REFER_ITENS','I1.');
             SqlCdsItensFicha5.Open;
             if SqlCdsItensFicha5.IsEmpty = false then
                begin
                    SqlCdsItensFicha5.First;
                    SqlCdsItensFicha5.DisableControls;
                    while(SqlCdsItensFicha5.FieldByName('PRD_REFER').AsString = wRefeItens)and not(SqlCdsItensFicha5.Eof) do
                     begin
                         {Gravando os Itens da Ficha Tecnica na Tabela OSV_IT02}
                         try
                           FormatSettings.DecimalSeparator := '.';
                           try
                             {Zerar as variaveis}
                             wM1:=0;wM2:=0;wM3:=0;wM4:=0;wM5:=0;wM6:=0;wM7:=0;wM8:=0;
                             if FormOrdServCentro.SqlCdsParamPMT_VARIACOES.AsString = 'S' then
                                begin
                                    if (SqlCdsItensFicha5.FieldByName('FTI_MODE1').AsString <> '')and(CurrMod1.Value>0) then
                                       wM1 := CurrMod1.AsInteger;
                                    if (SqlCdsItensFicha5.FieldByName('FTI_MODE2').AsString <> '')and(CurrMod2.Value>0) then
                                       wM2 := CurrMod2.AsInteger;
                                    if (SqlCdsItensFicha5.FieldByName('FTI_MODE3').AsString <> '')and(CurrMod3.Value>0) then
                                       wM3 := CurrMod3.AsInteger;
                                    if (SqlCdsItensFicha5.FieldByName('FTI_MODE4').AsString <> '')and(CurrMod4.Value>0) then
                                       wM4 := CurrMod4.AsInteger;
                                    if (SqlCdsItensFicha5.FieldByName('FTI_MODE5').AsString <> '')and(CurrMod5.Value>0) then
                                       wM5 := CurrMod5.AsInteger;
                                    if (SqlCdsItensFicha5.FieldByName('FTI_MODE6').AsString <> '')and(CurrMod6.Value>0) then
                                       wM6 := CurrMod6.AsInteger;
                                    if (SqlCdsItensFicha5.FieldByName('FTI_MODE7').AsString <> '')and(CurrMod7.Value>0) then
                                       wM7 := CurrMod7.AsInteger;
                                    if (SqlCdsItensFicha5.FieldByName('FTI_MODE8').AsString <> '')and(CurrMod8.Value>0) then
                                       wM8 := CurrMod8.AsInteger;
                                end
                             else
                                begin
                                    if (SqlCdsItensFicha5.FieldByName('FTI_MODE1').AsString <> '')and(CurrQtdeOP.AsInteger>0) then
                                       wM1 := CurrQtdeOP.AsInteger;
                                end;
                             wConsumo := 0;
                             wConsumo := SqlCdsItensFicha5.FieldByName('FTI_UC').AsFloat;

                             wSql1 := 'INSERT INTO OSV_IT02 ('+
                                      'OSV_CODIGO,'+
                                      'PRD_REFER,'+
                                      'PRD_REFER_ITENS,'+
                                      'OSI_UC,'+
                                      'OSI_QTDE1,'+
                                      'OSI_QTDE2,'+
                                      'OSI_QTDE3,'+
                                      'OSI_QTDE4,'+
                                      'OSI_QTDE5,'+
                                      'OSI_QTDE6,'+
                                      'OSI_QTDE7,'+
                                      'OSI_QTDE8,'+
                                      'EMP_CODIGO) ';

                             wSql2 := 'VALUES ('''+wOP+''','''+
                                                   wRefeItens+''','''+
                                                   SqlCdsItensFicha5.FieldByName('PRD_REFER_ITENS').AsString+''','''+
                                                   CurrToStr(wConsumo)+''','''+
                                                   FloatToStr(wM1)+''','''+
                                                   FloatToStr(wM2)+''','''+
                                                   FloatToStr(wM3)+''','''+
                                                   FloatToStr(wM4)+''','''+
                                                   FloatToStr(wM5)+''','''+
                                                   FloatToStr(wM6)+''','''+
                                                   FloatToStr(wM7)+''','''+
                                                   FloatToStr(wM8)+''','''+
                                                   DBINICIO.EMPRESA.EMP_CODIGO+''')';
                             if (wM1>0)or(wM2>0)or(wM3>0)or(wM4>0)or(wM5>0)or(wM6>0)or(wM7>0)or(wM8>0) then
                                begin
                                    DataCadastros.sqlUpdate.Close;
                                    DataCadastros.SqlUpdate.sql.text :=wSql1+wSql2;
                                    DataCadastros.sqlUpdate.Execsql;
                                end;
                           except on E:EDataBaseError do
                              uteis.erro  (pchar('Erro ao inserir os itens na tabela OSV_IT02 ! '+E.MESSAGE));
                           end;
                         finally
                            FormatSettings.DecimalSeparator := ',';
                         end;
                         SqlCdsItensFicha5.Next;
                     end;
                    SqlCdsItensFicha5.EnableControls;
                end;
         end;
    except on E:EDataBaseError do
        uteis.erro  (pchar('Erro ao gravar os itens na tabela OSV_IT02 ! '+E.MESSAGE));
    end;
end;

end.

