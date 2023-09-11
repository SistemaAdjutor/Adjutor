unit OsvN0007;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, BaseDbEstoqueForm,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, SqlExpr,SqlClientDataSet, Provider, DB,
  DBClient, DBLocal, DBLocalS, RwSQLComando, ExtCtrls, Data.DBXFirebird,
  SimpleDS;

type
  TFormOrdServConsiderar = class(TFrmBaseDbEstoque)
    GbSecundaria: TGroupBox;
    Rad_Nao_Considera: TRadioButton;
    GbItens: TGroupBox;
    DBGridItens: TDBGrid;
    GroupBox3: TGroupBox;
    RbQtdeSolicitada: TRadioButton;
    RbSaldo: TRadioButton;
    DsPs2: TDataSource;
    SqlCdsPs2: TSQLClientDataSet;
    SqlCdsPs2PS2_REGISTRO: TIntegerField;
    SqlCdsPs2EMP_CODIGO: TStringField;
    SqlCdsPs2PED_CODIGO: TStringField;
    SqlCdsPs2PRD_REFER: TStringField;
    SqlCdsPs2PS2_QTDE: TFMTBCdField;
    SqlCdsPs2PS2_QTDE1: TFMTBCdField;
    SqlCdsPs2PS2_QTDE2: TFMTBCdField;
    SqlCdsPs2PS2_QTDE3: TFMTBCdField;
    SqlCdsPs2PS2_QTDE4: TFMTBCdField;
    SqlCdsPs2PS2_QTDE5: TFMTBCdField;
    SqlCdsPs2PS2_QTDE6: TFMTBCdField;
    SqlCdsPs2PS2_QTDE7: TFMTBCdField;
    SqlCdsPs2PS2_QTDE8: TFMTBCdField;
    SqlCdsPs2PS2_FICHA: TStringField;
    SqlCdsPs2PRD_DESCRI: TStringField;
    SqlCdsPs2PS2_FICHA_CC: TBooleanField;
    SqlCdsPs2CLI_CODIGO: TStringField;
    SqlCdsPs2PS2_LOTE: TStringField;
    SqlCdsPs2CLI_RAZAO: TStringField;
    SqlCdsPs2PS2_QTDE_CONVERTIDA: TFMTBCdField;
    SqlCdsPs2rSaldoEstoque: TFloatField;
    SqlCdsPs2rQtdeProduzir: TFloatField;
    Cds_Prod_Conv: TSQLClientDataSet;
    Cds_Prod_ConvPRD_REFER: TStringField;
    Cds_Prod_ConvPRD_UTILCONV: TStringField;
    Cds_Prod_ConvPRD_FATORC: TFMTBCdField;
    Cds_Prod_ConvPRD_DIVMULT: TStringField;
    Panel1: TPanel;
    Btn_OK: TBitBtn;
    Bit_Cancelar: TBitBtn;
    Rad_Sim_Considera: TRadioButton;
    dspPs2: TDataSetProvider;
    cdsPs2: TClientDataSet;
    cdsPs2PS2_REGISTRO: TIntegerField;
    cdsPs2EMP_CODIGO: TStringField;
    cdsPs2PED_CODIGO: TStringField;
    cdsPs2PRD_REFER: TStringField;
    cdsPs2PS2_QTDE: TFMTBCDField;
    cdsPs2PS2_QTDE1: TFMTBCDField;
    cdsPs2PS2_QTDE2: TFMTBCDField;
    cdsPs2PS2_QTDE3: TFMTBCDField;
    cdsPs2PS2_QTDE4: TFMTBCDField;
    cdsPs2PS2_QTDE5: TFMTBCDField;
    cdsPs2PS2_QTDE6: TFMTBCDField;
    cdsPs2PS2_QTDE7: TFMTBCDField;
    cdsPs2PS2_QTDE8: TFMTBCDField;
    cdsPs2PS2_FICHA: TStringField;
    cdsPs2PRD_DESCRI: TStringField;
    cdsPs2CLI_CODIGO: TStringField;
    cdsPs2PS2_LOTE: TStringField;
    cdsPs2CLI_RAZAO: TStringField;
    procedure Btn_OKClick(Sender: tObject);
    procedure Bit_CancelarClick(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure SqlCdsPs2CalcFields(DataSet: TDataSet);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure FormCreate(Sender: tObject);
    procedure RbSaldoEnter(Sender: tObject);
    procedure RbQtdeSolicitadaEnter(Sender: tObject);
  private
    wPmt_Amx_Producao_saida : string;
    procedure IniciaCampos;
    function RetornaValorConversao(sProduto:String;rValor:Real):Real;

  public
    { Public declarations }
  end;

var
  FormOrdServConsiderar: TFormOrdServConsiderar;

implementation

uses Uteis, RWFunc, Men0001, OsvN0002, PrevC001, DataCad1, DataCad, InicioDB, Animacao;

{$R *.dfm}

procedure TFormOrdServConsiderar.Btn_OKClick(Sender: tObject);
var
   rValorConvertido:Real;
begin

   //Atualizar saldos e Eliminar
   SqlCdsPs2.DisableControls;
   SqlCdsPs2.First;

   while (not SqlCdsPs2.Eof) do
   begin

         if (SqlCdsPs2rQtdeProduzir.AsFloat = 0) then
         begin
               //Deletar item
               DataCadastros.sqlUpdate.Close;
               DataCadastros.SqlUpdate.sql.text :='DELETE FROM PSV_IT02 WHERE PS2_REGISTRO = '+SqlCdsPs2PS2_REGISTRO.AsString;
               DataCadastros.sqlUpdate.Execsql;
         end
         else
         begin
               //Fator
               rValorConvertido := RetornaValorConversao( SqlCdsPs2PRD_REFER.AsString, SqlCdsPs2rQtdeProduzir.AsFloat );
               if (rValorConvertido <= 0) then
                  rValorConvertido := SqlCdsPs2rQtdeProduzir.AsFloat;
               //Atualizar Item
               DataCadastros.sqlUpdate.Close;
               DataCadastros.SqlUpdate.sql.text := 'UPDATE PSV_IT02 SET PS2_QTDE = '+QuotedStr(ValorAmericano(SqlCdsPs2rQtdeProduzir.AsString))+
                                             //      ', PS2_QTDE_CONVERTIDA = '+ValorAmericano(FloatToStr(rValorConvertido))+
                                                   ' WHERE PS2_REGISTRO = '+SqlCdsPs2PS2_REGISTRO.AsString;
               DataCadastros.sqlUpdate.Execsql;
         end;



         SqlCdsPs2.Next;

   end;

   SqlCdsPs2.First;
   SqlCdsPs2.EnableControls;

   if Assigned(FormOrdServCentroGerar) then
   begin
         if (Rad_Sim_Considera.checked ) then
            FormOrdServCentroGerar.wConsiderar := 'S'
         else
            FormOrdServCentroGerar.wConsiderar := 'N';
   end;

   if Assigned(FormPrevConsumo) then
   begin
        FormPrevConsumo.wSaldo := rbSaldo.Checked ;
         if (Rad_Sim_Considera.checked ) then
            FormPrevConsumo.wConsiderar := 'S'
         else
            FormPrevConsumo.wConsiderar := 'N';

   end;

   close;
end;

procedure TFormOrdServConsiderar.Bit_CancelarClick(Sender: tObject);
begin
    if Assigned(FormOrdServCentroGerar) then
       FormOrdServCentroGerar.wBtn_Cancel := 'S';
    if Assigned(FormPrevConsumo) then
       FormPrevConsumo.wBtn_Cancel := 'S';
    Close;
end;

procedure TFormOrdServConsiderar.FormShow(Sender: tObject);
begin
   inherited;
   if Assigned(FormOrdServCentroGerar) then
      FormOrdServCentroGerar.wBtn_Cancel := 'N'
   else
   if Assigned(FormPrevConsumo) then
      FormPrevConsumo.wBtn_Cancel := 'N';
end;


procedure TFormOrdServConsiderar.SqlCdsPs2CalcFields(DataSet: TDataSet);
var prd_codigo : string;
begin
   prd_codigo := DBInicio.BuscaUmDadoSqlAsString(SQLDEF('PRODUTOS','select prd_codigo from prd0000 pr','where PRD_REFER = '+QuotedStr(SqlCdsPs2PRD_REFER.AsString),'','pr.') ) ;
   SqlCdsPs2rSaldoEstoque.AsFloat := KardexRetornaSaldo(prd_codigo,wPmt_Amx_Producao_saida,'');

   if (RbQtdeSolicitada.Checked) then
      //SqlCdsPs2rQtdeProduzir.AsFloat := SqlCdsPs2PS2_QTDE_CONVERTIDA.AsFloat               -- marcio 13/07/17
      SqlCdsPs2rQtdeProduzir.AsFloat := SqlCdsPs2PS2_QTDE.AsFloat
   else
   if (SqlCdsPs2rSaldoEstoque.AsFloat <= 0) then
     // SqlCdsPs2rQtdeProduzir.AsFloat := SqlCdsPs2PS2_QTDE_CONVERTIDA.AsFloat
      SqlCdsPs2rQtdeProduzir.AsFloat := SqlCdsPs2PS2_QTDE.AsFloat
   else
   // if (SqlCdsPs2rSaldoEstoque.AsFloat <= SqlCdsPs2PS2_QTDE_CONVERTIDA.AsFloat ) then
    if (SqlCdsPs2rSaldoEstoque.AsFloat <= SqlCdsPs2PS2_QTDE.AsFloat ) then
     //  SqlCdsPs2rQtdeProduzir.AsFloat := SqlCdsPs2PS2_QTDE_CONVERTIDA.AsFloat - SqlCdsPs2rSaldoEstoque.AsFloat
       SqlCdsPs2rQtdeProduzir.AsFloat := SqlCdsPs2PS2_QTDE.AsFloat - SqlCdsPs2rSaldoEstoque.AsFloat
   else
      SqlCdsPs2rQtdeProduzir.AsFloat := 0;

end;

procedure TFormOrdServConsiderar.IniciaCampos;
begin
   {Monta Sql}
   FrmMenu.RwSqlGeralCmd.MontarSql      := False;
   FrmMenu.RwSqlGeralCmd.ResetaCampos   := True;
   FrmMenu.RwSqlGeralCmd.CodigoEmpresa  := StrToInt(dbInicio.Empresa.EMP_CODIGO);
   FrmMenu.RwSqlGeralCmd.MultiEmpresa   := True;
   FrmMenu.RwSqlGeralCmd.TipoSql        := Consultar;
   FrmMenu.RwSqlGeralCmd.Apelido        := 'T2.';
   FrmMenu.RwSqlGeralCmd.Campos         := 'T2.*,'+
                                           'P1.PRD_DESCRI,'+
                                           'C1.CLI_RAZAO';
   FrmMenu.RwSqlGeralCmd.Tabela         := 'PSV_IT02';
   FrmMenu.RwSqlGeralCmd.UniaoTabelas   := 'LEFT JOIN PRD0000 P1 ON (T2.PRD_REFER = P1.PRD_REFER '+ConcatSe(' and p1.', DBInicio.ExclusivoSql('PRODUTOS')) +  ') '+
                                           'LEFT JOIN CLI0000 C1 ON (T2.CLI_CODIGO = C1.CLI_CODIGO)';
   FrmMenu.RwSqlGeralCmd.Compartilhar   := 'ORDEMPRODUCAO';
   FrmMenu.RwSqlGeralCmd.Condicao       := '';
   FrmMenu.RwSqlGeralCmd.CamposOrdernar := 'T2.PS2_REGISTRO DESC';
   FrmMenu.RwSqlGeralCmd.MontarSql      := True;
   //
   SqlCdsPs2.Close;
   SqlCdsPs2.CommandText := FrmMenu.RwSqlGeralCmd.ComandoSql;
   SqlCdsPs2.Open;
end;

procedure TFormOrdServConsiderar.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
     inherited;
     SqlCdsPs2.Close;
end;

procedure TFormOrdServConsiderar.FormCreate(Sender: tObject);
begin
     inherited;
     wPmt_Amx_Producao_saida := dbInicio.GetParametroSistema('PMT_AMX_PRODUCAO_SAIDA');
     if Assigned(FormOrdServCentroGerar) then
     begin
         GbItens.Visible := True;
         GbSecundaria.Visible := True;
     end
     else
     if Assigned(FormPrevConsumo) then
     begin
         GbItens.Visible := False;
         GbSecundaria.Visible := False;
         FormPrevConsumo.wBtn_Cancel := 'N';
     end;
     IniciaCampos;
end;

procedure TFormOrdServConsiderar.RbSaldoEnter(Sender: tObject);
begin
     RbSaldo.Checked := True;
     SqlCdsPs2.Refresh;
end;

procedure TFormOrdServConsiderar.RbQtdeSolicitadaEnter(Sender: tObject);
begin
   RbQtdeSolicitada.Checked := True;
   SqlCdsPs2.Refresh;
end;

function TFormOrdServConsiderar.RetornaValorConversao(sProduto: String;
  rValor: Real): Real;
var
   rTmpFator:Real;
begin
   {conversão}
   rTmpFator := 0;
   wSql1      := 'SELECT '+
                 'T1.PRD_REFER, '+
                 'COALESCE(T1.PRD_UTILCONV,''N'') AS PRD_UTILCONV, '+
                 'COALESCE(T1.PRD_FATOR_PROD,0) AS PRD_FATORC, '+
                 'COALESCE(T1.PRD_DIV_MULT_PROD,''N'') AS PRD_DIVMULT';
   wSql2      := ' FROM PRD0000  T1 ';

   wSeleciona := 'WHERE T1.PRD_REFER = '''+Trim(sProduto)+'''';
   wOrdem     := 'T1.PRD_REFER ';
   //
   Cds_Prod_Conv.Close;
   Cds_Prod_Conv.CommandText := SQLDEF('PRODUTOS',wSql1+wSql2,wSeleciona,wOrdem,'T1.');
   Cds_Prod_Conv.Open;
   if ((Cds_Prod_ConvPRD_UTILCONV.AsString = 'S')
   and(Cds_Prod_ConvPRD_FATORC.AsCurrency > 0)) then
      begin
         rTmpFator := Cds_Prod_ConvPRD_FATORC.AsCurrency;
         if (Cds_Prod_ConvPRD_DIVMULT.AsString = 'M') then
            begin
               rValor := rValor*rTmpFator;
            end
         else
            begin
               rValor := rValor/rTmpFator;
            end;
         rTmpFator := rValor;
      end
   else
      rTmpFator := 0;
   Cds_Prod_Conv.Close;
   Result := rTmpFator;
end;

end.


