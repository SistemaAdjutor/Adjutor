{***********************************************************
| Programa...: Flu0002   - Nome formulario = FormIntervFluxo|
| Objetivo...: Definir o INtervalo para mostrar o Fluxo     |
| Analista...: Marcio Neu Pacheco                           |
| Programador: Jackson Neu Pacheco                          |
| Comentários:                                              |
|                                                           |
| Criação..........:  fev/1999.                             |
| Ultima Alteração.:  Mai/1999.                             |
| Feito por........:  Jackson Neu Pacheco                   |
|                                                           |
************************************************************}
unit Flu0002;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, BaseForm,
  StdCtrls, Buttons, Mask, ExtCtrls,RwFunc,  rxToolEdit, Provider, SqlExpr,SqlClientDataSet,
  DB, DBClient, DBLocal, DBLocalS, Data.DBXFirebird, SimpleDS, ACBrEnterTab,
  ACBrBase, ACBrCalculadora, JvExMask, JvToolEdit;

type
  TFormFluxoInterv = class(TFrmBase)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    CdsReceber: TSQLClientDataSet;
    CdsPagar: TSQLClientDataSet;
    CdsSaldo: TSQLClientDataSet;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    Dt_Inicio: TJvDateEdit;
    Dt_final: TJvDateEdit;
    procedure BitBtn1Click(Sender: tObject);
    procedure BitBtn2Click(Sender: tObject);
    procedure CalculaFluxo;
    procedure FormShow(Sender: tObject);
    procedure Dt_InicioExit(Sender: tObject);
    procedure Dt_finalExit(Sender: tObject);
  private
  public
  end;

var
  FormFluxoInterv: TFormFluxoInterv;

implementation

{$R *.DFM}

uses Uteis, DataCad, InicioDB;

procedure TFormFluxoInterv.BitBtn2Click(Sender: tObject);
begin
    modalresult:=mrCancel;
end;

procedure TFormFluxoInterv.FormShow(Sender: tObject);
begin
    inherited;
    Dt_Inicio.Text := '';
    Dt_final.Text  := '';
    Dt_Inicio.SetFocus;
    AutoSize := True;
end;

procedure TFormFluxoInterv.CalculaFluxo;
var WDT : TDatetime;
    wCaixadia, WAcumulo,WPagar,WReceber,WSaldoBanco : CURRENCY;
    wDataInicial,WdataFinal,wData :String;
begin
    wAcumulo := 0;
    {limpa tabela fluxo de caixa}
   // dbInicio.ExecSql('DELETE FROM FLUXOCX '+concatse(' where ',dbInicio.ExclusivoSql('TABELAS')) );
     dbInicio.ExecSql('DELETE FROM FLUXOCX ');

    {Guarda a primeira data a ser buscada}
    WDT := Dt_Inicio.Date;
    {Enquanto não for a ultima data requerida}
    //
   {limpa variaveis}
   {Procura saldo pela data no contas á pagar}
   CdsPagar.Close;
   CdsPagar.CommandText   := 'Select PPC_VENCTO,sum(PPC_VLPARC)as TotalPagar from PAG_PC01 where PPC_EXCLUSAO = ''N'' AND PPC_VENCTO Between '''+DataAmericana(Dt_Inicio.Text)+''' and '''+DataAmericana(Dt_final.Text)+''' and EMP_CODIGO = '''+dbInicio.EMPRESA.EMP_CODIGO+''' group by PPC_VENCTO';
   CdsPagar.Open;
   //
   CdsReceber.Close;
   CdsReceber.CommandText := 'Select FPC_VENCTO,sum(FPC_VLPARC)as TotalReceber from FAT_PC01 where FPG_REGISTRO <>  ' +  DBInicio.GetParametroSistema('PMT_LANCA_CC_VERBA_FPG_REGISTRO')  +  ' AND FPC_EXCLUSAO = ''N'' AND FPC_VENCTO Between '''+DataAmericana(Dt_Inicio.Text)+''' and '''+DataAmericana(Dt_final.Text)+''' and EMP_CODIGO = '''+dbInicio.EMPRESA.EMP_CODIGO+'''group by FPC_VENCTO'; // and FAT_CODIGO NOT IN(SELECT FAT_CODIGO FROM FAT0000 ) group by FPC_VENCTO';
   CdsReceber.Open;
   //
   CdsSaldo.Close;
   CdsSaldo.CommandTExt   := 'Select SAB_DIA,sum(SAB_SALDO)as TotalSaldo from SALDOBCO where SAB_DIA Between '''+DataAmericana(Dt_Inicio.Text)+''' and '''+DataAmericana(Dt_final.Text)+''' and EMP_CODIGO = '''+dbInicio.EMPRESA.EMP_CODIGO+''' GROUP BY SAB_DIA';
   CdsSaldo.OPen;
   //
   while WDT <= Dt_Final.Date do
   Begin
        WPagar      :=0;
        WReceber    :=0;
        WSaldoBanco :=0;
        {Contas a Receber}
        if CdsReceber.Locate('FPC_VENCTO',DateToStr(WDT),[]) = TRUE then
           wReceber := CdsReceber.FieldByName('TotalReceber').AsCurrency
        else
           wReceber := 0;
        {Contas a Pagar}
        if CdsPAgar.Locate('PPC_VENCTO',DateToStr(WDT),[]) = True then
           wPAgar := CdsPagar.FieldByName('TotalPAgar').AsCurrency
        else
           wPagar := 0;
        {Saldo do Banco}
        if CdsSaldo.Locate('SAB_DIA',DateToStr(WDT),[])= true then
           WSaldoBanco := CdsSaldo.FieldByName('TotalSaldo').AsCurrency
        else
           wSaldoBanco := 0;

        if ((wReceber <> 0) or (wPagar <> 0) or (wSaldoBanco <> 0)) then
        begin
               wCaixadia   := (wReceber + WSaldoBanco) - WPagar;
               wAcumulo    := wAcumulo + wCaixadia;
               wSaldobanco := wSaldobanco+(wAcumulo-wcaixadia);
               dbInicio.ExecSql( 'Insert into FLUXOCX (FLU_DIA,FLU_SALDO,FLU_RECEBE,FLU_PAGAR,FLU_BANCO,FLU_ACUMULO,EMP_CODIGO) '+
                                 'VALUES( '+DateToSql(WDT)+','+FloatToSql(wCaixadia)+','+FloatToSql(WReceber)+','+FloatToSql(WPagar)+','+FloatToSql(wSaldoBanco)+','+FloatToSql(wAcumulo)+','+ ''''+DBInicio.Empresa.EMP_CODIGO+'''' +')');
        end;
        {Incrementa Data para buscar saldo do proxímo dia}
        WDT := WDT + 1;
    end;
    Close;
end;

procedure TFormFluxoInterv.BitBtn1Click(Sender: tObject);
begin
    {Evita data inicio ser maior que data final}
    if Dt_Inicio.Date > Dt_Final.Date then
    begin
           uteis.aviso('Data Inicial Deve Ser Menor ou Igual a Data Final !');
           Dt_Inicio.Text := '';
           Dt_Final.Text := '';
           Dt_Inicio.SetFocus;
    end
    else
    {Evita data Final ser menor que a data Inicial}
    if (Dt_Final.Date<Dt_Inicio.Date) then
    begin
           uteis.aviso('Data final menor que a Data Inicial...');
           Dt_Final.SetFocus;
    end
    else
    {limita intervalo em 5 anos, p/ não forçar processador}
    if (Dt_Final.Date - Dt_Inicio.Date) > 1827{cinco anos}then
    begin
           uteis.aviso('Intevalo maxímo = 5 anos !');
           Dt_Final.Text := '';
           Dt_Final.SetFocus;

    end
    else
    if (Dt_Inicio.date=0) or (Dt_Final.date=0) then
    begin
           uteis.aviso('Digite o Intervalo a ser Calculado!');
           Dt_Inicio.SetFocus;
    end
    else
        CalculaFluxo;
    ModalResult := mrOk ;
end;

procedure TFormFluxoInterv.Dt_InicioExit(Sender: tObject);
begin
    if Dt_Inicio.DATE<>0 then
         if not TestaDataStr(Dt_Inicio.Text) then
         begin
              Dt_Inicio.Date := Now;
              Dt_Inicio.setfocus;
         end;
end;

procedure TFormFluxoInterv.Dt_finalExit(Sender: tObject);
begin
    if Dt_final.DATE<>0 then
           if not TestaDataStr(Dt_final.Text) then
           begin
                  Dt_final.Date := Now;
                  Dt_final.setfocus;
           end;
end;

end.
