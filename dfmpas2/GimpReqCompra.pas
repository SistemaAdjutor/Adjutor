unit GimpReqCompra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Provider, SqlExpr,SqlClientDataSet, DB, RDprint, DBClient,
  DBLocal, DBLocalS, Mask, SimpleDS, Data.DBXFirebird, JvExMask, JvToolEdit;

type
  TFrmGimpReqCompra = class(TForm)
    Group00: TGroupBox;
    LTBox: TListBox;
    GrpDispositivo: TGroupBox;
    RadVideo: TRadioButton;
    RadImpressora: TRadioButton;
    RadText: TRadioButton;
    Group06: TGroupBox;
    BitConfig: TBitBtn;
    BitOk: TBitBtn;
    BitCancelar: TBitBtn;
    PrintCfgReq: TPrinterSetupDialog;
    RdpReq: TRDprint;
    CdsImpReq: TClientDataSet;
    CdsImpReqReferencia: TStringField;
    CdsImpReqDescricao: TStringField;
    CdsImpReqUnd: TStringField;
    CdsImpReqQtde: TCurrencyField;
    SqlImpReq: TSQLClientDataSet;
    SqlImpReqRQI_REGISTRO: TIntegerField;
    SqlImpReqPRD_REFER_ITENS: TStringField;
    SqlImpReqPRD_DESCRI: TStringField;
    SqlImpReqPRD_UND: TStringField;
    SqlImpReqRQI_SOLICITADA: TFMTBCdField;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    CbxOrigem: TComboBox;
    Label4: TLabel;
    CbxPrioridade: TComboBox;
    Label5: TLabel;
    CbxCompra: TComboBox;
    CdsImpReqVlUltCompra: TCurrencyField;
    SqlImpReqPRD_CUSTOCOMIPI: TFMTBCdField;
    RxDataInicial: TJvDateEdit;
    RxDataFinal: TJvDateEdit;
    procedure BitCancelarClick(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure BitOkClick(Sender: tObject);
    procedure BitConfigClick(Sender: tObject);
    procedure RdpReqNewPage(Sender: tObject; Pagina: Integer);
    procedure RxDataInicialEnter(Sender: tObject);
    procedure RxDataFinalEnter(Sender: tObject);
    procedure CbxOrigemEnter(Sender: tObject);
    procedure CbxPrioridadeEnter(Sender: tObject);
    procedure CbxCompraEnter(Sender: tObject);
    procedure RxDataInicialExit(Sender: tObject);
    procedure RxDataFinalExit(Sender: tObject);
    procedure CbxOrigemExit(Sender: tObject);
    procedure CbxPrioridadeExit(Sender: tObject);
    procedure CbxCompraExit(Sender: tObject);
  private
    { Private declarations }
    wPagina,
    wLinha       : Integer;
    cTotalCompra : Real;

    procedure GerarRelCompras;
    procedure Carrega_Tabela_Temp;
    procedure Atualiza_Status_Compra(pRegistro:String);
  public
    { Public declarations }
  end;

var
  FrmGimpReqCompra: TFrmGimpReqCompra;

implementation

uses DataCad, RWFunc, Men0001, uteis, iniciodb;

{$R *.dfm}

procedure TFrmGimpReqCompra.BitCancelarClick(Sender: tObject);
begin
    close;
end;

procedure TFrmGimpReqCompra.FormShow(Sender: tObject);
begin
    Left := 166;
    Top  := 180;
    Screen.cursor := crHourGlass;
    LTBox.Items.Add('Relatório para Compras de Matéria-Prima');              //00
    LTBox.ItemIndex := 0;  // seta no primeiro item
    screen.cursor   := crDefault;
//    LayOut;
    LTBox.SetFocus;
    FrmGimpReqCompra.AutoSize := True;
    Screen.cursor := crDefault;
end;

procedure TFrmGimpReqCompra.BitOkClick(Sender: tObject);
begin
    Screen.Cursor := crHourGlass;
    if (RxDataInicial.Date > 0)
    and(RxDataFinal.Date > 0) then
       begin
          if (LTBox.ItemIndex = 0) then
             begin
                 Carrega_Tabela_Temp;
                 GerarRelCompras;
                 CdsImpReq.EmptyDataSet;
             end;
       end
    else
       begin
          uteis.aviso('Informe o período !');
          RxDataInicial.SetFocus;
          RxDataInicial.SelectAll;
       end;
    Screen.cursor := crDefault;
end;

procedure TFrmGimpReqCompra.BitConfigClick(Sender: tObject);
begin
    PrintCfgReq.Execute;
end;

procedure TFrmGimpReqCompra.GerarRelCompras;
begin
    try
      wLinha           := 0;
      wPagina          := 0;
      if RadVideo.checked  then
         begin
             RdpReq.OpcoesPreview.Preview := True;
             RdpReq.Abrir;
         end
      else
         begin
             RdpReq.OpcoesPreview.Preview := False;
             RdpReq.Abrir;
             if RdpReq.Setup = False then
                exit;
         end;
      //
      cTotalCompra := 0;
      CdsImpReq.First;
      CdsImpReq.DisableControls;
      while not CdsImpReq.Eof do
       begin
           RdpReq.Imp   (wLinha,001,CdsImpReqReferencia.AsString);
           RdpReq.Imp   (wLinha,014,copy(CdsImpReqDescricao.AsString,1,60));
           RdpReq.Imp   (wLinha,070,CdsImpReqUnd.AsString);
           RdpReq.ImpVal(wLinha,085,'###,##0.000',CdsImpReqQtde.AsCurrency,[]);
           RdpReq.ImpVal(wLinha,099,'###,##0.000',CdsImpReqVlUltCompra.AsCurrency,[]);
           RdpReq.ImpVal(wLinha,112,'###,##0.000',(CdsImpReqQtde.AsCurrency * CdsImpReqVlUltCompra.AsCurrency),[]);

           RdpReq.Imp   (wLinha,126,'_________');
           //
           cTotalCompra := (cTotalCompra + (CdsImpReqQtde.AsCurrency * CdsImpReqVlUltCompra.AsCurrency));
           //
           CdsImpReq.Next;
           if (wLinha>=58) then
              begin
                  Inc(wLinha);
                  RdpReq.Imp (wLinha,001,'-----------------------------------------------------------------------------------------------------------------------------------------');
                  wLinha := 0;
                  RdpReq.Novapagina;
              end
           else
              begin
                  Inc(wLinha);
              end;
       end;
      RdpReq.Imp (wLinha,001,'-----------------------------------------------------------------------------------------------------------------------------------------');
      Inc(wLinha);
      RdpReq.ImpF  (wLinha,002,'TOTAL DA COMPRA',[Negrito]);
      RdpReq.ImpVal(wLinha,112,'###,##0.000',cTotalCompra,[]);
      Inc(wLinha);
      RdpReq.Imp (wLinha,001,'-----------------------------------------------------------------------------------------------------------------------------------------');
      //
      RdpReq.Fechar;
      CdsImpReq.EnableControls;
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao gerar o relatorio ! '+e.Message));
    end;
end;

procedure TFrmGimpReqCompra.RdpReqNewPage(Sender: tObject;
  Pagina: Integer);
begin
    Inc(wPagina);
    RdpReq.Imp (001,001   ,'-----------------------------------------------------------------------------------------------------------------------------------------');
    RdpReq.ImpF(002,002   ,dbInicio.Empresa.RAZAO,[Expandido]);
    RdpReq.Imp (002,115   ,'Data.....: '+DateToStr(Now));
    RdpReq.ImpF(003,002   ,'RELATÓRIO DE COMPRAS DE MATERIA-PRIMAS',[negrito]);
    RdpReq.Imp (003,115   ,'Hora.....: '+TimeToStr(Time));
    RdpReq.Imp (004,002   ,'Período.: '+RxDataInicial.Text+' até '+RxDataFinal.Text);
    //                               1         2         3         4         5         6         7         8         9         0         1         2         3
    //                      12345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567
    //                       Período.: 18/01/2006 até 18/01/2006 - Observação.: Prioridade - Origem.: Producao
    RdpReq.Imp (004,038   ,'- Observação.: '+Trim(CbxPrioridade.Text)+' - Origem.: '+CbxOrigem.Text);

    RdpReq.Imp (004,115   ,'Pagina Nº: '+StrZero(IntToStr(wPagina),2));
    RdpReq.Imp (005,001   ,'----------------------------------------------------------------------------------------------------------------------------------------');
    RdpReq.Imp (006,001   ,'REFERENCIA   DESCRICAO DO PRODUTO                                    UND        QTDE SOLICITADA     VL. CUSTO    VL.COMPRA              ');
    RdpReq.Imp (007,001   ,'----------------------------------------------------------------------------------------------------------------------------------------');
               //           1234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456
               //                    1         2         3         4         5         6         7         8         9         0         1         2         3
               //                                                                                           9,999,999,9999      9,999,999    9,999,999

    wLinha := 8;
end;

procedure TFrmGimpReqCompra.Carrega_Tabela_Temp;
begin
    try
//      wSql1      := 'Select R2.RQI_REGISTRO,R2.PRD_REFER_ITENS,P1.PRD_DESCRI,P1.PRD_UND,R2.RQI_SOLICITADA ';
//      wSql2      := 'from REQUISICAO_COMPRA_ITENS R2 left join PRD0000 P1 ON (R2.prd_refer_itens = P1.prd_refer) ';

      wSql1      := 'Select R2.RQI_REGISTRO,R2.PRD_REFER_ITENS,R2.RQI_ORIGEM,P1.PRD_DESCRI,P1.PRD_UND,P1.PRD_CUSTOCOMIPI,R2.RQI_SOLICITADA,R2.RQI_SOLICITOU_COMPRA,R1.REQ_EMISSAO,R1.REQ_PRIORIDADE from REQUISICAO_COMPRA_ITENS R2 ';
      wSql2      := 'Left Join REQUISICAO_COMPRA R1 ON (R2.REQ_CODIGO = R1.REQ_CODIGO) Left Join PRD0000 P1 ON (R2.PRD_REFER_ITENS = P1.PRD_REFER) ';

      wSeleciona := 'Where R1.REQ_EMISSAO Between '''+DataAmericana(RxDataInicial.Text)+''' and '''+DataAmericana(RxDataFinal.Text)+''' AND R2.RQI_STATUS <> ''C''';
      {Origem do Produto se foi na Produçao/Simulaçao}
      if (CbxOrigem.ItemIndex <> 0) then
         begin
             wSeleciona := wSeleciona +' and R2.RQI_ORIGEM = '''+IIF(CbxOrigem.ItemIndex = 1,'P','S')+'''';
         end;
      {Prioridade}
      if (CbxPrioridade.ItemIndex <> 0) then
         begin
             wSeleciona := wSeleciona +' and R1.REQ_PRIORIDADE = '''+CbxPrioridade.Text+'''';
         end;
      {Compra}
      if (CbxCompra.ItemIndex <> 0) then
         begin
             wSeleciona := wSeleciona +' and R2.RQI_SOLICITOU_COMPRA = '''+IIF(CbxCompra.ItemIndex = 1,'S','N')+'''';
         end;

      wOrdem     := 'ORDER BY R2.PRD_REFER_ITENS';
      //
      SqlImpReq.Close;
      SqlImpReq.CommandText := wSql1+wSql2+wSeleciona+wOrdem;
      SqlImpReq.Open;
      SqlImpReq.First;
      SqlImpReq.DisableControls;
      while not SqlImpReq.Eof do
       begin
           if (CdsImpReq.Locate('Referencia',SqlImpReqPRD_REFER_ITENS.AsString,[])=True) then
              CdsImpReq.Edit
           else
              CdsImpReq.Append;
           //
           CdsImpReqReferencia.AsString    := SqlImpReqPRD_REFER_ITENS.AsString;
           CdsImpReqDescricao.AsString     := SqlImpReqPRD_DESCRI.AsString;
           CdsImpReqUnd.AsString           := SqlImpReqPRD_UND.AsString;
           CdsImpReqVlUltCompra.AsCurrency := SqlImpReqPRD_CUSTOCOMIPI.AsCurrency;
           CdsImpReqQtde.AsCurrency        := CdsImpReqQtde.AsCurrency + SqlImpReqRQI_SOLICITADA.AsCurrency;
           CdsImpReq.Post;
           //
           Atualiza_Status_Compra(SqlImpReqRQI_REGISTRO.AsString);
           //
           SqlImpReq.Next;
       end;
      SqlImpReq.EnableControls;
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao carregar tabela Temporaria ! '+e.message))
    end;
end;

procedure TFrmGimpReqCompra.Atualiza_Status_Compra(pRegistro: String);
begin
    try
      wSql1      := 'Update REQUISICAO_COMPRA_ITENS set RQI_SOLICITOU_COMPRA = ''S''';
      wSeleciona := 'where RQI_REGISTRO = '+pRegistro+'';
      //
      DataCadastros.sqlUpdate.Close;
      DataCadastros.SqlUpdate.sql.text :=wSql1+wSeleciona;
      DataCadastros.sqlUpdate.Execsql;
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao atualizar o Status de Compra ! '+e.message));
    end;
end;

procedure TFrmGimpReqCompra.RxDataInicialEnter(Sender: tObject);
begin
    RxDataInicial.Color := $00B0FFFF;
end;

procedure TFrmGimpReqCompra.RxDataFinalEnter(Sender: tObject);
begin
    RxDataFinal.Color := $00B0FFFF;
end;

procedure TFrmGimpReqCompra.CbxOrigemEnter(Sender: tObject);
begin
    CbxOrigem.Color := $00B0FFFF;
end;

procedure TFrmGimpReqCompra.CbxPrioridadeEnter(Sender: tObject);
begin
    CbxPrioridade.Color := $00B0FFFF;
end;

procedure TFrmGimpReqCompra.CbxCompraEnter(Sender: tObject);
begin
    CbxCompra.Color := $00B0FFFF;
end;

procedure TFrmGimpReqCompra.RxDataInicialExit(Sender: tObject);
begin
    RxDataInicial.Color := clWindow;
    RxDataInicial.Text  := PreenchaData(RxDataInicial.Text);
    if (not TestaDataStr(RxDataInicial.Text)) then
       RxDataInicial.SetFocus;
end;

procedure TFrmGimpReqCompra.RxDataFinalExit(Sender: tObject);
begin
    RxDataFinal.Color := clWindow;
    RxDataFinal.Text  := PreenchaData(RxDataFinal.Text);
    if (not TestaDataStr(RxDataFinal.Text)) then
       RxDataFinal.SetFocus
    else
       if (RxDataFinal.Date < RxDataInicial.Date) then
          begin
              uteis.aviso('Data Final não poder ser menor que a Data Inicial !');
              RxDataFinal.SetFocus;
          end;
end;

procedure TFrmGimpReqCompra.CbxOrigemExit(Sender: tObject);
begin
    CbxOrigem.Color := clWindow;
end;

procedure TFrmGimpReqCompra.CbxPrioridadeExit(Sender: tObject);
begin
    CbxPrioridade.Color := clWindow;
end;

procedure TFrmGimpReqCompra.CbxCompraExit(Sender: tObject);
begin
    CbxCompra.Color := clWindow;
end;

end.
