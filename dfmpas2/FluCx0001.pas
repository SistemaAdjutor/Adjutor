unit FluCx0001;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Mask,  rxToolEdit, Grids, ExtCtrls, Buttons,
   rxCurrEdit, Provider, SqlExpr,SqlClientDataSet, DB, DBClient, DBLocal, DBLocalS, FMTBCd,
  DBGrids, DBCtrls, dbcgrids, RXDBCtrl, ppBands,
  ppVar, ppCtrls, ppPrnabl, ppClass, ppCache, ppDB, ppProd, ppReport,
  ppComm, ppRelatv, ppDBPipe, ppDesignLayer, ppParameter, JvExMask, JvToolEdit;

type
  TFrmFluxoCaixa = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Bevel1: TBevel;
    BitSair: TBitBtn;
    BitPesquisa: TBitBtn;
    BitCancelar: TBitBtn;
    BitImprimir: TBitBtn;
    BitSaldo: TBitBtn;
    SQLFluxoCaixa: TSQLDataSet;
    CdSFluxoCaixa: TClientDataSet;
    DSPFluxoCaixa: TDataSetProvider;
    DSFluxoCaixa: TDataSource;
    CdSFluxoCaixaDATA_MOVIMENTO: TDateField;
    CdSFluxoCaixaVALOR_PREVISAO_RECEBER: TFMTBCdField;
    CdSFluxoCaixaVALOR_RECEBIDO: TFMTBCdField;
    CdSFluxoCaixaVALOR_RECEBER: TFMTBCdField;
    CdSFluxoCaixaVALOR_DESCONTADO: TFMTBCdField;
    CdSFluxoCaixaVALOR_PREVISAO_PAGAR: TFMTBCdField;
    CdSFluxoCaixaVALOR_PAGO: TFMTBCdField;
    CdSFluxoCaixaVALOR_PAGAR: TFMTBCdField;
    CdSFluxoCaixaSALDO_DO_DIA_PREV: TFMTBCdField;
    CdSFluxoCaixaSALDO_DO_DIA_REAL: TFMTBCdField;
    CdSFluxoCaixaSALDO_ACUMULADO_PREV: TFMTBCdField;
    CdSFluxoCaixaSALDO_ACUMULADO_REAL: TFMTBCdField;
    GroupBox3: TGroupBox;
    CdSFluxoCaixaTOTAL_PV_RECEBER: TAggregateField;
    CdSFluxoCaixaTOTAL_RECEBIDO: TAggregateField;
    CdSFluxoCaixaTOTAL_RECEBER: TAggregateField;
    CdSFluxoCaixaTOTAL_PV_PAGAR: TAggregateField;
    CdSFluxoCaixaTOTAL_PAGO: TAggregateField;
    CdSFluxoCaixaTOTAL_PAGAR: TAggregateField;
    CdSFluxoCaixaTOTAL_DESCONTADO: TAggregateField;
    CdSFluxoCaixaTOTAL_SALDO_PV: TAggregateField;
    CdSFluxoCaixaTOTAL_SALDO_REAL: TAggregateField;
    RxDBGridFluxo: TRxDBGrid;
    GroupBox4: TGroupBox;
    Panel1: TPanel;
    Label14: TLabel;
    Panel2: TPanel;
    Label15: TLabel;
    Panel3: TPanel;
    Label16: TLabel;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    CTotalReceberPv: TCurrencyEdit;
    CTotalRecebido: TCurrencyEdit;
    CTotalReceber: TCurrencyEdit;
    CTotalNegociados: TCurrencyEdit;
    CTotalPagarPV: TCurrencyEdit;
    CTotalPago: TCurrencyEdit;
    CTotalPagar: TCurrencyEdit;
    CTotalSaldoPv: TCurrencyEdit;
    CTotalSaldo: TCurrencyEdit;
    ppDBFluxoCaixa: TppDBPipeline;
    ppReportFluxo: TppReport;
    ppHeaderBand5: TppHeaderBand;
    ppLine38: TppLine;
    LBL_00_EMPRESA: TppLabel;
    LBL_00_LTITULO1: TppLabel;
    LBL_00_LTITULO2: TppLabel;
    ppSystemVariable13: TppSystemVariable;
    ppSystemVariable14: TppSystemVariable;
    ppLine39: TppLine;
    ppDetailBand6: TppDetailBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLine1: TppLine;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    GroupBox5: TGroupBox;
    Rad_Analitico: TRadioButton;
    Rad_Realizado: TRadioButton;
    Rad_Previsto: TRadioButton;
    DataInicial: TJvDateEdit;
    DataFinal: TJvDateEdit;
    procedure FormShow(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure BitPesquisaClick(Sender: tObject);
    procedure BitSairClick(Sender: tObject);
    procedure FormKeyPress(Sender: tObject; var Key: Char);
    procedure BitCancelarClick(Sender: tObject);
    procedure DataInicialExit(Sender: tObject);
    procedure DataFinalExit(Sender: tObject);
    procedure BitImprimirClick(Sender: tObject);
    procedure Rad_AnaliticoClick(Sender: tObject);
  private
     CampoBox     :TComboBox;
     //CampoData    :TDBDateEdit;
     CampoDataEd    :TDateEdit;
     //CampoDbMemo  :TDBMemo;
     //CampoTDBCombo:TDBComboBox;
     //CampoTDBLuk  :TDBLookupComboBox;
     CampoCurrency:TCurrencyEdit;
     procedure MudaCorCampos(Sender: tObject);
     procedure GeraFluxoCaixa;
     procedure LayOutPesquisa;
  public
    { Public declarations }
  end;

var
  FrmFluxoCaixa: TFrmFluxoCaixa;

implementation

uses Uteis, Types, RWFunc, DataCad, DataMov, Men0001, ufrmpreviewrb, iniciodb;

{$R *.dfm}





{ TFrmConsultaCpraVenda }

procedure TFrmFluxoCaixa.FormShow(Sender: tObject);
begin
   try
     Screen.Cursor := CrHourglass;
     Screen.OnActiveControlChange := MudaCorCampos;
     DataInicial.Date := PrimeiroDiadoMes(Date);
     DataFinal.Date   := Date;
     LayOutPesquisa;
     Screen.Cursor    := CrDefault;
   except
      on E:EDataBaseError do
        begin
           Screen.Cursor := CrDefault;
           uteis.erro  (Pchar('Impossível acessar o arquivo:'+ #13 + E.message));
        end;
   end;
end;

procedure TFrmFluxoCaixa.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
   try
     Screen.Cursor := CrHourglass;
     Screen.OnActiveControlChange := Nil;
     CdSFluxoCaixa.Close;
     Screen.Cursor := CrDefault;
   except
      on E:EDataBaseError do
         begin
            Screen.Cursor := CrDefault;
            uteis.erro  (Pchar('Impossível Fechar o arquivo !'+#13#10+
                       'Mensagem Erro: '+E.message));
         end;
   end;
end;

procedure TFrmFluxoCaixa.MudaCorCampos(Sender: tObject);
begin
   {CampoDataEd    :TDateEdit}
   if Assigned(CampoDataEd) then
      begin
         CampoDataEd.color := clWindow;
      end;
   if ActiveControl is TDateEdit then
      begin
         TDateEdit(ActiveControl).color := $0080FFFF;
         CampoDataEd := TDateEdit(ActiveControl);
      end
   else
      begin
         CampoDataEd := nil;
      end;
end;

procedure TFrmFluxoCaixa.BitPesquisaClick(Sender: tObject);
begin
    GeraFluxoCaixa;
end;

procedure TFrmFluxoCaixa.BitSairClick(Sender: tObject);
begin
   BitSair.SetFocus;
   close;
end;

procedure TFrmFluxoCaixa.FormKeyPress(Sender: tObject;
  var Key: Char);
begin
   if (key = #27) then
      begin
         if (BitCancelar.Enabled) then
            BitCancelar.Click
         else
         if (BitSair.Enabled) then
            BitSair.Click;
         key := #0;
      end;
end;

procedure TFrmFluxoCaixa.BitCancelarClick(Sender: tObject);
begin
   BitCancelar.SetFocus;
   if (uteis.confirmacao ( 'Deseja cancelar a consulta atual ?') = mryes) then
      begin
         CdSFluxoCaixa.Close;
         CTotalReceberPv.Value  := 0;
         CTotalRecebido.Value   := 0;
         CTotalReceber.Value    := 0;
         CTotalNegociados.Value := 0;
         CTotalPagarPV.Value    := 0;
         CTotalPago.Value       := 0;
         CTotalPagar.Value      := 0;
         CTotalSaldoPv.Value    := 0;
         CTotalSaldo.Value      := 0;
         //
         BitPesquisa.Enabled    := True;
         BitSair.Enabled        := True;
         DataInicial.Enabled    := True;
         DataFinal.Enabled      := True;
         //
         BitCancelar.Enabled    := False;
         BitImprimir.Enabled    := False;
         DataInicial.SetFocus;
         DataInicial.SelectAll;
      end
   else
      begin
         RxDBGridFluxo.SetFocus;
      end;
end;

procedure TFrmFluxoCaixa.DataInicialExit(Sender: tObject);
begin
   if (ActiveControl <> Nil)
   and(ActiveControl.Name <> 'BitCancelar')
   and(ActiveControl.Name <> 'BitSair') then
      begin
         if (DataInicial.Text <> '  /  /    ') then
            begin
               DataInicial.Text := PreenchaData(DataInicial.Text);
               if (TestaDataStr(DataInicial.Text) = False) then
                  begin
                     DataInicial.SetFocus;
                     DataInicial.SelectAll;
                  end;
            end;
      end;
end;

procedure TFrmFluxoCaixa.DataFinalExit(Sender: tObject);
begin
   if (ActiveControl <> Nil)
   and(ActiveControl.Name <> 'BitCancelar')
   and(ActiveControl.Name <> 'BitSair') then
      begin
         if (DataFinal.Text <> '  /  /    ') then
            begin
               DataFinal.Text := PreenchaData(DataFinal.Text);
               if (TestaDataStr(DataFinal.Text) = False) then
                  begin
                     DataFinal.SetFocus;
                     DataFinal.SelectAll;
                  end
               else
               if (DataFinal.Date < DataInicial.Date) then
                  begin
                     //beep;
                     uteis.aviso('Data final informada não pode ser menor que data inicial !');
                     DataInicial.SetFocus;
                     DataInicial.SelectAll;
                  end;
            end;
      end;
end;

procedure TFrmFluxoCaixa.GeraFluxoCaixa;
begin
   try
    {inicializa campos}
     Screen.Cursor := CrHourglass;
     CTotalReceberPv.Value  := 0;
     CTotalRecebido.Value   := 0;
     CTotalReceber.Value    := 0;
     CTotalNegociados.Value := 0;
     CTotalPagarPV.Value    := 0;
     CTotalPago.Value       := 0;
     CTotalPagar.Value      := 0;
     CTotalSaldoPv.Value    := 0;
     CTotalSaldo.Value      := 0;
    {}
     CdSFluxoCaixa.Close;
     CdSFluxoCaixa.CommandText := 'Select * from PCd_FLUXO_CAIXA('''+DataAmericana(DataInicial.Text)+''','''+DataAmericana(DataFinal.Text)+''','''+dbInicio.Empresa.EMP_CODIGO+''')';
     CdSFluxoCaixa.Open;
     if (not CdSFluxoCaixa.IsEmpty) then
        begin
           CdSFluxoCaixa.First;
          {atribuir totais}
           CTotalReceberPv.Value  := CdSFluxoCaixaTOTAL_PV_RECEBER.Value;
           CTotalRecebido.Value   := CdSFluxoCaixaTOTAL_RECEBIDO.Value;
           CTotalReceber.Value    := CdSFluxoCaixaTOTAL_RECEBER.Value;
           CTotalNegociados.Value := CdSFluxoCaixaTOTAL_DESCONTADO.Value;
           CTotalPagarPV.Value    := CdSFluxoCaixaTOTAL_PV_PAGAR.Value;
           CTotalPago.Value       := CdSFluxoCaixaTOTAL_PAGO.Value;
           CTotalPagar.Value      := CdSFluxoCaixaTOTAL_PAGAR.Value;
           CTotalSaldoPv.Value    := CdSFluxoCaixaTOTAL_SALDO_PV.Value;
           CTotalSaldo.Value      := CdSFluxoCaixaTOTAL_SALDO_REAL.Value;
           //
           BitPesquisa.Enabled    := False;
           BitSair.Enabled        := False;
           DataInicial.Enabled    := False;
           DataFinal.Enabled      := False;
           //
           BitCancelar.Enabled    := True;
           BitImprimir.Enabled    := True;
           RxDBGridFluxo.SetFocus;
        end
     else
        begin
           //beep;
           uteis.aviso('Não foram localizados movimentos no período informado !');
           DataInicial.SetFocus;
           DataInicial.SelectAll;
        end;
     Screen.Cursor    := CrDefault;
   except
      on E:EDataBaseError do
         begin
            Screen.Cursor := CrDefault;
            uteis.erro  (Pchar('Impossível Fechar o arquivo !'+#13#10+
                       'Mensagem Erro: '+E.message));
         end;
   end;
end;

procedure TFrmFluxoCaixa.BitImprimirClick(Sender: tObject);
begin
    try
      CdSFluxoCaixa.First;
      LBL_00_EMPRESA.Caption  := dbInicio.Empresa.RAZAO;
      LBL_00_LTITULO1.Caption := 'RELATÓRIO ANALITICO DO FLUXO DE CAIXA';
      LBL_00_LTITULO2.Caption := 'Período: '+DataInicial.Text+' até '+DataFinal.Text;
      ppReportFluxo.DeviceType := 'Screen';
      RBuilderPreview(ppReportFluxo);
    except on e:EdataBaseError do
       uteis.erro  (pchar('Erro ao gerar o relatorio ! '+e.message));
    end;
end;

procedure TFrmFluxoCaixa.Rad_AnaliticoClick(Sender: tObject);
begin
    LayOutPesquisa;
end;

procedure TFrmFluxoCaixa.LayOutPesquisa;
begin
    if (Rad_Analitico.Checked) then
       begin
           RxDBGridFluxo.Columns[00].Visible := true;   //data
           RxDBGridFluxo.Columns[00].Width   := 75;     //data

           RxDBGridFluxo.Columns[01].Visible := true;   //Prev.Receber
           RxDBGridFluxo.Columns[01].Width   := 75;     //data

           RxDBGridFluxo.Columns[02].Visible := true;   //Recebido
           RxDBGridFluxo.Columns[02].Width   := 75;     //data

           RxDBGridFluxo.Columns[03].Visible := true;   //a Receber
           RxDBGridFluxo.Columns[03].Width   := 75;     //data

           RxDBGridFluxo.Columns[04].Visible := true;   //Negocidado
           RxDBGridFluxo.Columns[04].Width   := 75;     //data

           RxDBGridFluxo.Columns[05].Visible := true;   //Prev. Pagar
           RxDBGridFluxo.Columns[05].Width   := 75;     //data

           RxDBGridFluxo.Columns[06].Visible := true;   //Pago
           RxDBGridFluxo.Columns[06].Width   := 75;     //data

           RxDBGridFluxo.Columns[07].Visible := true;   //a Pagar
           RxDBGridFluxo.Columns[07].Width   := 75;     //data

           RxDBGridFluxo.Columns[08].Visible := true;   //Prev. Saldo
           RxDBGridFluxo.Columns[08].Width   := 75;     //data

           RxDBGridFluxo.Columns[09].Visible := true;   //Saldo Real
           RxDBGridFluxo.Columns[09].Width   := 75;     //data

           RxDBGridFluxo.Columns[10].Visible := true;   //Prev. Acumulado
           RxDBGridFluxo.Columns[10].Width   := 75;     //data

           RxDBGridFluxo.Columns[11].Visible := true;   //Acumulado
           RxDBGridFluxo.Columns[11].Width   := 75;     //data
       end;
    if (Rad_Realizado.Checked) then
       begin
           RxDBGridFluxo.Columns[00].Visible := true;   //data
           RxDBGridFluxo.Columns[00].Width   := 75;     //data
           RxDBGridFluxo.Columns[01].Visible := False;  //Prev.Receber

           RxDBGridFluxo.Columns[02].Visible := true;   //Recebido
           RxDBGridFluxo.Columns[02].Width   := 135;    //Recebido

           RxDBGridFluxo.Columns[03].Visible := False;  //a Receber

           RxDBGridFluxo.Columns[04].Visible := true;   //Negocidado
           RxDBGridFluxo.Columns[04].Width   := 135;    //Negocidado

           RxDBGridFluxo.Columns[05].Visible := False;  //Prev. Pagar

           RxDBGridFluxo.Columns[06].Visible := true;   //Pago
           RxDBGridFluxo.Columns[06].Width   := 135;    //Pago

           RxDBGridFluxo.Columns[07].Visible := False;  //a Pagar
           RxDBGridFluxo.Columns[08].Visible := False;  //Prev. Saldo

           RxDBGridFluxo.Columns[09].Visible := True;   //Saldo Real
           RxDBGridFluxo.Columns[09].Width   := 135;    //Saldo Real

           RxDBGridFluxo.Columns[10].Visible := False;  //Prev. Acumulado
           RxDBGridFluxo.Columns[11].Visible := true;   //Acumulado
           RxDBGridFluxo.Columns[11].Width   := 135;   //Acumulado
       end;
    if (Rad_Previsto.Checked) then
       begin
           RxDBGridFluxo.Columns[00].Visible := true;    //data
           RxDBGridFluxo.Columns[00].Width   := 75;      //data

           RxDBGridFluxo.Columns[01].Visible := True;    //Prev.Receber
           RxDBGridFluxo.Columns[01].Width   := 135;     //Prev.Receber

           RxDBGridFluxo.Columns[02].Visible := False;   //Recebido
           RxDBGridFluxo.Columns[03].Visible := False;   //a Receber
           RxDBGridFluxo.Columns[04].Visible := False;   //Negocidado
           RxDBGridFluxo.Columns[05].Visible := True;    //Prev. Pagar
           RxDBGridFluxo.Columns[05].Width   := 135;     //Prev. Pagar

           RxDBGridFluxo.Columns[06].Visible := False;   //Pago
           RxDBGridFluxo.Columns[07].Visible := False;   //a Pagar
           RxDBGridFluxo.Columns[08].Visible := True;    //Prev. Saldo
           RxDBGridFluxo.Columns[08].Width   := 135;     //Prev. Saldo

           RxDBGridFluxo.Columns[09].Visible := False;   //Saldo Real
           RxDBGridFluxo.Columns[10].Visible := True;    //Prev. Acumulado
           RxDBGridFluxo.Columns[10].Width   := 135;     //Prev. Acumulado

           RxDBGridFluxo.Columns[11].Visible := true;    //Acumulado
           RxDBGridFluxo.Columns[11].Width   := 135;     //Acumulado
       end;
end;

end.
