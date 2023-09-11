unit PrevC003;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, RDprint, Provider, SqlExpr, DB, DBClient,
  DBLocal, DBLocalS;

type
  TFormGimpPrevisao = class(TForm)
    Grp00: TGroupBox;
    LTBox: TListBox;
    GrpDispositivo: TGroupBox;
    RadVideo: TRadioButton;
    RadImpressora: TRadioButton;
    RadText: TRadioButton;
    grp05: TGroupBox;
    BitBtn1: TBitBtn;
    Bit_OK: TBitBtn;
    Bit_Cancelar: TBitBtn;
    PrinterSetupDialog1: TPrinterSetupDialog;
    RDPrintPrevisao: TRDprint;
    procedure Bit_CancelarClick(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure Bit_OKClick(Sender: tObject);
    procedure BitBtn1Click(Sender: tObject);
  private
    { Private declarations }
    wLinha,
    wPagina : integer;
    wTotalDisponivel :Real;
    procedure GeraPrevisaodeConsumo;
    procedure CabecalhoPrevisao(wTipo:Integer);
  public
    { Public declarations }
  end;

var
  FormGimpPrevisao: TFormGimpPrevisao;

implementation

uses DataCad, RWFunc, Men0001, PrevC002, PrevCN002, PrevC001, uteis, iniciodb;

{$R *.dfm}

procedure TFormGimpPrevisao.Bit_CancelarClick(Sender: tObject);
begin
    Close;
end;

procedure TFormGimpPrevisao.FormShow(Sender: tObject);
begin
    Screen.Cursor := crHourGlass;
    LTBox.Items.Add('Relatório de Previsão de Consumo');
    LTBox.ItemIndex := 0;
    FormGimpPrevisao.AutoSize := True;
    Screen.Cursor := crDefault;
end;

procedure TFormGimpPrevisao.Bit_OKClick(Sender: tObject);
begin
     Screen.Cursor := crHourGlass;
     if (LTBox.ItemIndex = 0) then
        GeraPrevisaodeConsumo;
     Screen.cursor := crDefault;
end;

procedure TFormGimpPrevisao.GeraPrevisaodeConsumo;
begin
        RDPrintPrevisao.OpcoesPreview.Preview := RadVideo.Checked;
        RDPrintPrevisao.Abrir;
        if not RadVideo.Checked then
           if RDPrintPrevisao.Setup = False then
                exit;

        wLinha           := 0;
        wPagina          := 0;
        CabecalhoPrevisao(1);
        wTotalDisponivel := 0;

        FormPrevisaoProducao.SqlCdsDisponivel.DisableControls;
        FormPrevisaoProducao.SqlCdsDisponivel.First;
        if (FormPrevisaoProducao.SqlCdsDisponivel.IsEmpty = False) then
        begin
             while not FormPrevisaoProducao.SqlCdsDisponivel.Eof do
             Begin
                   if (wLinha = 0) then
                      CabecalhoPrevisao(1);
                   RDPrintPrevisao.Imp   (wLinha,001,FormPrevisaoProducao.SqlCdsDisponivelPRD_REFER_ITENS.AsString);
                   RDPrintPrevisao.Imp   (wLinha,013,copy(FormPrevisaoProducao.SqlCdsDisponivelPRD_DESCRI.AsString,1,40));
                   RDPrintPrevisao.Imp   (wLinha,054,FormPrevisaoProducao.SqlCdsDisponivelPSI_UND.AsString);
                   RDPrintPrevisao.Imp   (wLinha,058,FormPrevisaoProducao.SqlCdsDisponivelPSI_SIGLA.AsString);
                   RDPrintPrevisao.ImpVal(wLinha,062,'###,##0.000',FormPrevisaoProducao.SqlCdsDisponivelWCONSUMO.AsCurrency,[]);
                   RDPrintPrevisao.ImpVal(wLinha,075,'###,##0.000',FormPrevisaoProducao.SqlCdsDisponivelPSI_ESTANTEC.AsCurrency,[]);
                   RDPrintPrevisao.ImpVal(wLinha,088,'###,##0.000',FormPrevisaoProducao.SqlCdsDisponivelPSI_ESTRESERVA.AsCurrency,[]);
                   RDPrintPrevisao.ImpVal(wLinha,100,'###,##0.0000',FormPrevisaoProducao.SqlCdsDisponivelPSI_CUSTO.AsCurrency,[]);
                   RDPrintPrevisao.ImpVal(wLinha,113,'###,##0.000',FormPrevisaoProducao.SqlCdsDisponivelPSI_DISPONIVEL.AsCurrency,[]);
                   RDPrintPrevisao.ImpVal(wLinha,125,'#,###,##0.000',(FormPrevisaoProducao.SqlCdsDisponivelPSI_DISPONIVEL.AsCurrency*FormPrevisaoProducao.SqlCdsDisponivelPSI_CUSTO.AsCurrency),[]);
                   wTotalDisponivel := wTotalDisponivel + (FormPrevisaoProducao.SqlCdsDisponivelPSI_DISPONIVEL.AsCurrency*FormPrevisaoProducao.SqlCdsDisponivelPSI_CUSTO.AsCurrency);
                   FormPrevisaoProducao.SqlCdsDisponivel.Next;
                   Inc(wLinha);
                   if (wLinha>=58) then
                   begin
                        RDPrintPrevisao.Imp (wLinha,001,'-----------------------------------------------------------------------------------------------------------------------------------------');
                        wLinha := 0;
                        RDPrintPrevisao.Novapagina;
                   end;
             end;
             RDPrintPrevisao.Imp   (wLinha,001,'-----------------------------------------------------------------------------------------------------------------------------------------');
             Inc(wLinha);
             RDPrintPrevisao.ImpF  (wLinha,003,'CUSTO DOS MATERIAIS DISPONIVEIS PARA SIMULAÇÃO :',[]);
             RDPrintPrevisao.ImpVal(wLinha,056,'###,###,##0.000',FormPrevisaoProducao.NumEditDisponivel.VALUE,[negrito]);
             RDPrintPrevisao.ImpF  (wLinha,079,'CUSTO TOTAL DOS MATERIAIS QUE FICAM : ',[]);
             RDPrintPrevisao.ImpVal(wLinha,122,'###,###,##0.000',wTotalDisponivel,[negrito]);
             Inc(wLinha);
             RDPrintPrevisao.Imp   (wLinha,001,'-----------------------------------------------------------------------------------------------------------------------------------------');
             //
             RDPrintPrevisao.Novapagina;
             //
        end;
        wLinha           := 0;
        CabecalhoPrevisao(2);
        wTotalDisponivel := 0;
        FormPrevisaoProducao.Cdscomprar.DisableControls;
        FormPrevisaoProducao.CdsComprar.First;
        while not FormPrevisaoProducao.CdsComprar.Eof do
        begin
             if (wLinha = 0) then
                CabecalhoPrevisao(2);
             RDPrintPrevisao.Imp   (wLinha,001,FormPrevisaoProducao.CdsComprarREFERENCIA.AsString);
             RDPrintPrevisao.Imp   (wLinha,013,COPY(FormPrevisaoProducao.CdsComprarDESCRICAO.AsString,1,40));
             RDPrintPrevisao.Imp   (wLinha,054,FormPrevisaoProducao.CdsComprarUND.AsString);
             RDPrintPrevisao.Imp   (wLinha,058,FormPrevisaoProducao.CdsComprarTIPO.AsString);
             RDPrintPrevisao.ImpVal(wLinha,062,'###,##0.000',FormPrevisaoProducao.cdsComprarCONSUMO.AsCurrency,[]);
             RDPrintPrevisao.ImpVal(wLinha,075,'###,##0.000',FormPrevisaoProducao.CdsComprarESTFISICO.AsCurrency,[]);
             RDPrintPrevisao.ImpVal(wLinha,086,'#,##0.000',FormPrevisaoProducao.CdsComprarESTRESERVA.AsCurrency,[]);
             RDPrintPrevisao.ImpVal(wLinha,099,'###,##0.0000',FormPrevisaoProducao.CdsComprarPCUSTO.AsCurrency,[]);
             RDPrintPrevisao.ImpVal(wLinha,113,'###,##0.000',FormPrevisaoProducao.CdsComprarCOMPRAR.AsCurrency,[]);

             RDPrintPrevisao.ImpVal(wLinha,125,'#,###,##0.000',(FormPrevisaoProducao.CdsComprarCOMPRAR.AsCurrency*FormPrevisaoProducao.CdsComprarPCUSTO.AsCurrency),[]);
             //wTotalDisponivel := wTotalDisponivel + (FormPrevisaoProducao.SQLCdsComprarPSI_FALTA_DT.AsCurrency*FormPrevisaoProducao.SQLCdsComprarPSI_CUSTO.AsCurrency);
              wTotalDisponivel := wTotalDisponivel + (FormPrevisaoProducao.CdsComprarCOMPRAR.AsCurrency*FormPrevisaoProducao.CdsComprarPCUSTO.AsCurrency);

             FormPrevisaoProducao.CdsComprar.Next;
             Inc(wLinha);
             if (wLinha>=58) then
             begin
                   RDPrintPrevisao.Imp (wLinha,001,'-----------------------------------------------------------------------------------------------------------------------------------------');
                   wLinha := 0;
                   RDPrintPrevisao.Novapagina;
             end;
        end;
        RDPrintPrevisao.Imp   (wLinha,001,'-----------------------------------------------------------------------------------------------------------------------------------------');
        Inc(wLinha);
        RDPrintPrevisao.ImpF  (wLinha,003,'CUSTO DE COMPRAS DA SIMULAÇÃO : ',[]);
        RDPrintPrevisao.ImpVal(wLinha,039,'##,###,##0.000',FormPrevisaoProducao.NumEditSimulacao.Value,[negrito]);
        //
        RDPrintPrevisao.ImpF  (wLinha,066,'CUSTO DE COMPRAS DE TODO ESTOQUE EM FALTA/AJUSTADO : ',[]);
       // RDPrintPrevisao.ImpVal(wLinha,115,'##,###,##0.000',wTotalDisponivel,[negrito]);
        RDPrintPrevisao.ImpVal(wLinha,122,'###,###,##0.000',FormPrevisaoProducao.NumEditAjustada.Value,[negrito]);
        Inc(wLinha);
        RDPrintPrevisao.Imp   (wLinha,001,'-----------------------------------------------------------------------------------------------------------------------------------------');
        //
        RDPrintPrevisao.Novapagina;
        //
        wLinha           := 0;
        CabecalhoPrevisao(3);
        wTotalDisponivel := 0;
        FormPrevisaoProducao.SqlCdsProduz.DisableControls;
        FormPrevisaoProducao.SqlCdsProduz.First;
        while not FormPrevisaoProducao.SqlCdsProduz.Eof do
        begin
             if (wLinha = 0) then
                CabecalhoPrevisao(3);
             RDPrintPrevisao.Imp   (wLinha,001,FormPrevisaoProducao.SqlCdsProduzPRD_REFER_ITENS.AsString);
             RDPrintPrevisao.Imp   (wLinha,013,copy(FormPrevisaoProducao.SqlCdsProduzPRD_DESCRI.AsString,1,40));
             RDPrintPrevisao.Imp   (wLinha,054,FormPrevisaoProducao.SqlCdsProduzPSI_UND.AsString);
             RDPrintPrevisao.Imp   (wLinha,058,FormPrevisaoProducao.SqlCdsProduzPSI_SIGLA.AsString);
             RDPrintPrevisao.ImpVal(wLinha,062,'###,##0.000',FormPrevisaoProducao.SqlCdsProduzWCONSUMO.AsCurrency,[]);
             RDPrintPrevisao.ImpVal(wLinha,075,'###,##0.000',FormPrevisaoProducao.SqlCdsProduzPSI_ESTANTEC.AsCurrency,[]);
             RDPrintPrevisao.ImpVal(wLinha,088,'###,##0.000',FormPrevisaoProducao.SqlCdsProduzPSI_ESTRESERVA.AsCurrency,[]);
             RDPrintPrevisao.ImpVal(wLinha,100,'###,##0.0000',FormPrevisaoProducao.SqlCdsProduzPSI_CUSTO.AsCurrency,[]);
             RDPrintPrevisao.ImpVal(wLinha,113,'###,##0.000',FormPrevisaoProducao.SqlCdsProduzPSI_FALTA.AsCurrency,[]);
             RDPrintPrevisao.ImpVal(wLinha,125,'#,###,##0.000',(FormPrevisaoProducao.SqlCdsProduzPSI_FALTA.AsCurrency*FormPrevisaoProducao.SqlCdsProduzPSI_CUSTO.AsCurrency),[]);
             wTotalDisponivel := wTotalDisponivel + (FormPrevisaoProducao.SqlCdsProduzPSI_FALTA.AsCurrency*FormPrevisaoProducao.SqlCdsProduzPSI_CUSTO.AsCurrency);
             FormPrevisaoProducao.SqlCdsProduz.Next;
             inc(wLinha);
             if (wLinha>=58) then
             begin
                   RDPrintPrevisao.Imp (wLinha,001,'-----------------------------------------------------------------------------------------------------------------------------------------');
                   wLinha := 0;
                   RDPrintPrevisao.Novapagina;
             end;
        end;
        RDPrintPrevisao.Imp   (wLinha,001,'-----------------------------------------------------------------------------------------------------------------------------------------');
        Inc(wLinha);
        RDPrintPrevisao.ImpF  (wLinha,002,'CUSTO DOS PRODUTOS A PRODUZIR : ',[]);
        RDPrintPrevisao.ImpVal(wLinha,124,'##,###,##0.000',wTotalDisponivel,[negrito]);
        Inc(wLinha);
        RDPrintPrevisao.Imp   (wLinha,001,'-----------------------------------------------------------------------------------------------------------------------------------------');
        //
        RDPrintPrevisao.Fechar;
        //
        FormPrevisaoProducao.SqlCdsDisponivel.EnableControls;
        FormPrevisaoProducao.SQLCdsComprar.EnableControls;
        FormPrevisaoProducao.SqlCdsProduz.EnableControls;
        //
end;

procedure TFormGimpPrevisao.CabecalhoPrevisao(wTipo:Integer);
begin
    Inc(wPagina);
    RDPrintPrevisao.Imp (001,001   ,'-----------------------------------------------------------------------------------------------------------------------------------------');
    RDPrintPrevisao.ImpF(002,002   ,dbInicio.Empresa.RAZAO,[negrito]);
    RDPrintPrevisao.Imp (002,115   ,'Data.....: '+DateToStr(Now));
    RDPrintPrevisao.ImpF(003,002   ,'RELATÓRIO DE SIMULAÇÃO DE CONSUMO DOS MATERIAIS ('+IIF(FormPrevConsumo.wConsiderar = 'S','Considerando Estoque)','Não Considerando Estoque)') ,[]);
    RDPrintPrevisao.Imp (003,115   ,'Hora.....: '+TimeToStr(Time));
    if (wTipo=1) then
       RDPrintPrevisao.ImpF(004,002,'QUANTIDADE DE PRODUTOS/MATERIA-PRIMAS DISPONIVEIS NO ESTOQUE',[]);
    if (wTipo=2) then
       RDPrintPrevisao.ImpF(004,002,'MATERIA-PRIMA EM FALTAS NO ESTOQUE (COMPRAR)',[]);
    if (wTipo=3) then
       RDPrintPrevisao.ImpF(004,002,'SOLICITACAO DE PRODUTOS A SEREM PRODUZIDOS',[]);
    RDPrintPrevisao.Imp (004,115   ,'Pagina Nº: '+StrZero(IntToStr(wPagina),2));
    RDPrintPrevisao.Imp (005,001   ,'-----------------------------------------------------------------------------------------------------------------------------------------');
    //                                        1         2         3         4         5         6         7         8         9         0         1         2         3
    //                               12345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567
    RDPrintPrevisao.Imp (006,001   ,'REFERENCIA   DESCRICAO DO PRODUTO                               VARIACAO     QTDE SOLICITADA');
    RDPrintPrevisao.Imp (007,001   ,'-----------------------------------------------------------------------------------------------------------------------------------------');
    wLinha := 8;
    FormPrevisaoProducao.SqlCdsProdutos.First;
    While not FormPrevisaoProducao.SqlCdsProdutos.Eof do
     begin
         RDPrintPrevisao.Imp   (wLinha,001,FormPrevisaoProducao.SqlCdsProdutosPRD_REFER.AsString);
         RDPrintPrevisao.Imp   (wLinha,014,FormPrevisaoProducao.SqlCdsProdutosPRD_DESCRI.AsString);
         RDPrintPrevisao.Imp   (wLinha,065,FormPrevisaoProducao.SqlCdsProdutosPSV_MODE1.AsString);
         RDPrintPrevisao.ImpVal(wLinha,079,'##,###,##0.000',FormPrevisaoProducao.SqlCdsProdutosPSV_QUANT1.AsCurrency,[]);
         inc(wLinha);
         FormPrevisaoProducao.SqlCdsProdutos.Next;
     end;
    RDPrintPrevisao.Imp (wLinha,001       ,'-----------------------------------------------------------------------------------------------------------------------------------------');
    inc(wLinha);
    if (wTipo=1) then
       RDPrintPrevisao.Imp (wLinha,001   ,'REFERENCIA  DESCRIÇÃO DO PRODUTOS                    UND TP  QTDE CONSUMO  EST+COMPRA   RESERVA    CUSTO UNIT. FICA ESTOQUE  TOTAL CUSTO');
    if (wTipo=2) then
       RDPrintPrevisao.Imp (wLinha,001   ,'REFERENCIA  DESCRIÇÃO DO PRODUTOS                    UND TP  QTDE CONSUMO  EST+COMPRA   RESERVA    CUSTO UNIT. QTDE COMPRAR   TOTAL CUSTO');
    if (wTipo=3) then
       RDPrintPrevisao.Imp (wLinha,001   ,'REFERENCIA  DESCRIÇÃO DO PRODUTOS                    UND TP  QTDE CONSUMO  EST+COMPRA   RESERVA    CUSTO UNIT. QTDE PRODUZIR  TOTAL CUSTO');
    //                                  12345678901 1234567890123456789012345678901234567890 XXX XX  999.999,999  999.999,999  999.999,999  999.999,999 999.999,999   999.999,999
    inc(wLinha);
    RDPrintPrevisao.Imp (wLinha,001   ,'-----------------------------------------------------------------------------------------------------------------------------------------');
    Inc(wLinha);
end;

procedure TFormGimpPrevisao.BitBtn1Click(Sender: tObject);
begin
    PrinterSetupDialog1.Execute;
end;

end.


