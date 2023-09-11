unit osv0005;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, BaseDbEstoqueForm,
  Dialogs, Mask,  rxToolEdit, StdCtrls, Buttons, ExtCtrls, RwFunc, DB,
  SqlExpr,SqlClientDataSet, Provider, DBClient, DBLocal, DBLocalS, cxControls, cxContainer,
  cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013White,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, Data.DBXFirebird, SimpleDS, Data.FMTBCd, ACBrEnterTab, ACBrBase, ACBrCalculadora, RxCurrEdit, JvExMask, JvToolEdit;

type
  TFormConcluirOP = class(TFrmBaseDbEstoque)
    GroupBox1: TGroupBox;
    EditRefer: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Panel2: TPanel;
    Bit_Cancelar: TBitBtn;
    Bit_GravarMateria: TBitBtn;
    Cds_Prod_Conv: TSQLClientDataSet;
    Cds_Prod_ConvPRD_REFER: TStringField;
    Cds_Prod_ConvPRD_UTILCONV: TStringField;
    Cds_Prod_ConvPRD_FATORC: TFMTBCdField;
    Cds_Prod_ConvPRD_DIVMULT: TStringField;
    CdsLoteProduto: TSQLClientDataSet;
    CdsLoteProdutoPRDL_REGISTRO: TIntegerField;
    CdsLoteProdutoEMP_CODIGO: TStringField;
    CdsLoteProdutoPRDL_DATA_FABRICACAO: TDateField;
    CdsLoteProdutoPRDL_DATA_VALIDADE: TDateField;
    CdsLoteProdutoPRDL_LOTE: TStringField;
    CdsLoteProdutoPRDL_PRECO_MAXIMO: TFMTBCdField;
    CdsLoteProdutoPRDL_SALDO: TFMTBCdField;
    CdsLoteProdutoPRD_CODIGO: TStringField;
    dsLoteProduto: TDataSource;
    SpeedButton3: TSpeedButton;
    CbLoteProduto: TcxLookupComboBox;
    LblLote: TLabel;
    Edt_Lote: TEdit;
    LbLote: TLabel;
    EditLotePredefinido: TEdit;
    CurQtdeConcluida: TCurrencyEdit;
    Label6: TLabel;
    SqlCdsLotes: TSQLDataSet;
    SqlCdsLotesPRDL_REGISTRO: TIntegerField;
    SqlCdsLotesEMP_CODIGO: TStringField;
    SqlCdsLotesPRDL_DATA_FABRICACAO: TDateField;
    SqlCdsLotesPRDL_DATA_VALIDADE: TDateField;
    SqlCdsLotesPRDL_LOTE: TStringField;
    SqlCdsLotesPRDL_PRECO_MAXIMO: TFMTBCDField;
    SqlCdsLotesPRDL_SALDO: TFMTBCDField;
    SqlCdsLotesPRD_CODIGO: TStringField;
    SqlCdsLotesPRDL_CADASTRO: TDateField;
    SqlCdsLotesPRDL_DESCRICAO: TStringField;
    DspLotes: TDataSetProvider;
    CdsLotes: TClientDataSet;
    CdsLotesPRDL_REGISTRO: TIntegerField;
    CdsLotesEMP_CODIGO: TStringField;
    CdsLotesPRDL_DATA_FABRICACAO: TDateField;
    CdsLotesPRDL_DATA_VALIDADE: TDateField;
    CdsLotesPRDL_LOTE: TStringField;
    CdsLotesPRDL_PRECO_MAXIMO: TFMTBCDField;
    CdsLotesPRDL_SALDO: TFMTBCDField;
    CdsLotesPRD_CODIGO: TStringField;
    CdsLotesPRDL_CADASTRO: TDateField;
    CdsLotesPRDL_DESCRICAO: TStringField;
    Editcomsemlote: TEdit;
    DtFab: TJvDateEdit;
    DtValidade: TJvDateEdit;
    procedure Bit_CancelarClick(Sender: tObject);
    procedure Bit_GravarMateriaClick(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure DtFabExit(Sender: tObject);
    procedure DtValidadeExit(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure SpeedButton3Click(Sender: tObject);
    procedure EditReferChange(Sender: tObject);
    procedure CbLoteProdutoExit(Sender: tObject);
    procedure FormCreate(Sender: tObject);
  private

    wPmt_Amx_Producao_Entrada     : string;
    wAtualiza_Estoque : String;
    sLote, sloteregistro:String;
    sLoteDescricao :String;
    wConcluirAnterior : Currency;
    Procedure GravaKardex;
    Procedure BaixaEstoque;
    function RetornaValorConversao(const sProduto: String;rValor:Real): Real;

  public
    { Public declarations }
  end;

var
  FormConcluirOP: TFormConcluirOP;

implementation

uses Uteis, DataCad, Men0001, OsvN0001, Osv0001, DataMov2, DataMov, DmProdu, 
  iniciodb, uCadastroLote, uProdutoDao;

{$R *.dfm}

procedure TFormConcluirOP.Bit_CancelarClick(Sender: tObject);
begin
    Close;
end;

procedure TFormConcluirOP.Bit_GravarMateriaClick(Sender: tObject);
var wlotefixoOS,wConluirMenor  : string;
begin
    wlotefixoOS   :='';
    wConluirMenor :='';
     try

        if (FormOrdServCentroNovo.CdsOPOSV_LOTE.AsString <> '') and (FrmMenu.sGerarNumLote = 'A') and not VarIsNull(CbLoteProduto.EditValue)  then   // lote automatico
           sLote := CbLoteProduto.EditValue

     Except
     end;

     if (sLote = '') and (FormOrdServCentroNovo.CdsOPPRD_GERENCIA_LOTE.AsString = 'S') then
        begin
           uteis.aviso('PRODUTO COM LOTE GERENCIADO : É preciso Criar e/ou Selecionar o lote!');
          exit;
        end;

   if CurQtdeConcluida.value < (FormOrdServCentroNovo.CdsOPOSV_QTDE.AsCurrency-FormOrdServCentroNovo.CdsOPOSV_QTDE_CONCLUIDA.AsCurrency) then
     begin
        if uteis.confirmacao(Pchar('CONCLUSÃO MENOR : QTDE DA OP = '+floattoStr(FormOrdServCentroNovo.CdsOPOSV_QTDE.AsCurrency)+'  |  Qtde à ser Cocluída = '+floattoStr(CurQtdeConcluida.value)+#13#10+
            'Confirma conclusão da qtde menor da OP ? ')) = idno then
              exit;
            //
        if uteis.confirmacao('Deseja que a OP fique com Status PARCIAL de  '+FloattoStr(wConcluirAnterior-CurQtdeConcluida.value)+'  para concluir posteriormente?') = idno then
           wConluirMenor := 'S';   //SIM
     end
   else
      begin
         // if porque qAtde conCluida pode ser igual, então nao mostrar mensagem MAIOR
         if CurQtdeConcluida.value > (FormOrdServCentroNovo.CdsOPOSV_QTDE.AsCurrency-FormOrdServCentroNovo.CdsOPOSV_QTDE_CONCLUIDA.AsCurrency) then
            if uteis.confirmacao(Pchar('CONCLUSÃO MAIOR : QTDE DA OP = '+floattoStr(FormOrdServCentroNovo.CdsOPOSV_QTDE.AsCurrency)+' | Qtde já Produzida = '+floattoStr(FormOrdServCentroNovo.CdsOPOSV_QTDE_CONCLUIDA.AsCurrency)+
              ' | Falta Produzir = '+FloattoStr(FormOrdServCentroNovo.CdsOPOSV_QTDE.AsCurrency-FormOrdServCentroNovo.CdsOPOSV_QTDE_CONCLUIDA.AsCurrency)+#13#10+
              'Tem certeza que quantidade de  '+floattoStr(CurQtdeConcluida.value)+ '  a ser Concluida esta correta ? ')) = idno then
               exit;
      end;

     if (FormOrdServCentroNovo.SqlCdsParamPMT_CELULAPROD.AsString = 'S') then
     begin
          {não baixar se nao foi informado uma celula de produção}
          if (FormOrdServCentroNovo.CdsOPCEL_CODIGO.AsString = '') then
             begin
                 uteis.aviso('Para concluir é preciso informar a célula de produção!');
                 exit;
             end;
          {nao baixar celulas sem a data de conclusao}
          FormOrdServCentroNovo.SqlCdsCelOp.DisableControls;
          FormOrdServCentroNovo.SqlCdsCelOp.First;  // (tabela relacionada, reg. sempre ativo)
          while not FormOrdServCentroNovo.SqlCdsCelOp.Eof do
           begin
               if (FormOrdServCentroNovo.SqlCdsCelOpCEM_DTCONCLUIU.IsNull) then
                  begin
                      uteis.aviso('Para concluir Informe a data de conclusão na Célula de Produção');
                      exit;
                  end;
               FormOrdServCentroNovo.SqlCdsCelOp.Next;
           end;
          FormOrdServCentroNovo.SqlCdsCelOp.EnableControls;
      end;
   if (FormOrdServCentroNovo.CdsOPOSV_STATUS.AsString = 'P') or (FormOrdServCentroNovo.CdsOPOSV_STATUS.AsString = 'I') then      // CONCLUIDA OU PARCIAL
      begin
          //
          if (FrmMenu.sGerarNumLote = 'M') and (FormOrdServCentroNovo.CdsOPPRD_GERENCIA_LOTE.AsString = 'S') then    // lote manual, combo habilitada para selecionar e até criar novo lote
//               sloteregistro:= CbLoteProduto.Properties.DataController.DataSet.Lookup('PRDL_REGISTRO',CbLoteProduto.EditValue,'PRDL_LOTE')
          begin
            sloteregistro:= CbLoteProduto.EditValue;
            ExecSQL('UPDATE PRD_LOTE SET ' +
                    ' PRDL_QTDELOTE = COALESCE(PRDL_QTDELOTE, 0) + ' + FloatToSQL(CurQtdeConcluida.value)  + ',' +
                    ' PRDL_SALDO = COALESCE(PRDL_SALDO, 0) + ' + FloatToSQL(CurQtdeConcluida.value)  +
                    ' WHERE PRDL_REGISTRO = ' + sLoteRegistro
                    );
          end
          else
          if FormOrdServCentroNovo.CdsOPPRD_GERENCIA_LOTE.AsString = 'S' then
          begin
             // lote automatico - gravação no lote sem intervenção do usuário
             CdsLotes.Open;
             CdsLotes.Insert;
             CdsLotesPRDL_REGISTRO.AsInteger := GetNextSequence('gen_prd_lote_id');
             sloteregistro := IntToStr(CdsLotesPRDL_REGISTRO.AsInteger);
             CdsLotesEMP_CODIGO.AsString := dbInicio.Empresa.EMP_CODIGO;
             CdsLotesPRDL_DATA_FABRICACAO.AsDateTime := DtFab.Date; //RxDataFabricacao.Date;
             CdsLotesPRDL_DATA_VALIDADE.AsDateTime := DtValidade.Date; //RxDataValidade.Date;

             if  CurQtdeConcluida.value >= FormOrdServCentroNovo.CdsOPOSV_QTDE.AsCurrency then
                 CdsLotesPRDL_LOTE.AsString := 'LT'+Trim(Edt_Lote.Text)
             else
             begin
                   //  LT = Lote com controle de estoque , LS = lote simples, não grava na tabela de lote
                if FrmMenu.sGerarNumLote = 'A' then
                begin
                  CdsLotesPRDL_LOTE.AsString := 'LT'+Trim(EditLotePredefinido.Text)+'/'+floatToStr(CurQtdeConcluida.value);  // numero do lote
                  wlotefixoOS := EditLotePredefinido.Text
                end
                else
                begin
                  CdsLotesPRDL_LOTE.AsString := Trim(Edt_Lote.Text)+'/'+floatToStr(CurQtdeConcluida.value);  // numero do lote
                  wlotefixoOS := sLote;
                end;
             end;

           CdsLotesPRDL_SALDO.AsFloat  := CurQtdeConcluida.value;  // := 0
           CdsLotesPRD_CODIGO.AsString := FormOrdServCentroNovo.CdsOPPRD_CODIGO.AsString;
           CdsLotesPRDL_CADASTRO.AsDateTime := Date;
           CdsLotesPRDL_DESCRICAO.AsString := 'Lote automático gerado pela OP No.: '+FormOrdServCentroNovo.CdsOPOSV_CODIGO.AsString;
           CdsLotes.ApplyUpdates(0);
           CdsLotes.Close;
          end;

         //  LT = Lote com controle de estoque , LS = lote simples, não grava na tabela de lote
          if wlotefixoOS <> '' then          // serve para lote automatico com OP concluida parcial
              sLote := wlotefixoOS;

          if FrmMenu.sGerarNumLote = 'A' then
             if FormOrdServCentroNovo.CdsOPPRD_GERENCIA_LOTE.AsString = 'S' then
                 sLote :=('LT'+sLote)
             else
                 sLote :=iif(wlotefixoOS<>'',slote,('LS'+EditLotePredefinido.Text));

          {Gravar Entrada do Produto Acabado na tabela PRD0000}
          GravaKardex;
          {}
          BaixaEstoque;
          {}
          if (FormOrdServCentroNovo.CdsOPOSV_PAI.AsString = 'P') then
             begin
                 if (wAtualiza_Estoque = 'F') then
                    begin
                        {Diminui Empenho da Tabela PRD0000}
                        Atualiza_Empenho_Estoque('E',
                                                 FormOrdServCentroNovo.CdsOPPRD_REFER.AsString,
                                                 ValorAmericano(FloatToStr(FormOrdServCentroNovo.CdsOPOSV_ESTOQUE.AsCurrency)));

                        {Diminui o Saldo da Produçao}
                        AtualizaQtdeProducao(FormOrdServCentroNovo.CdsOPPRD_REFER.AsString,
                                             'S',
                                             ValorAmericano(FloatToStr(FormOrdServCentroNovo.CdsOPOSV_ESTOQUE.AsCurrency)));

                    end;
             end;



          try
            Screen.Cursor := crHourGlass;
            try

              FormOrdServCentroNovo.CdsOP.Edit;
              FormOrdServCentroNovo.CdsOPOSV_LOTE.AsString        := sLote;

              FormOrdServCentroNovo.CdsOpOSV_CONCLUSAO.AsDateTime := DtFab.Date;
              FormOrdServCentroNovo.CdsOpOSV_VALIDADE.AsDateTime  := DtValidade.Date;
              //
              if (CurQtdeConcluida.value < (FormOrdServCentroNovo.CdsOPOSV_QTDE.AsCurrency-FormOrdServCentroNovo.CdsOPOSV_QTDE_CONCLUIDA.AsCurrency)) and (wConluirMenor <> 'S') then
                 begin
                 // concluiu menos que a qtde da OP
                 FormOrdServCentroNovo.CdsOPOSV_QTDE_CONCLUIDA.AsCurrency := FormOrdServCentroNovo.CdsOPOSV_QTDE_CONCLUIDA.AsCurrency+CurQtdeConcluida.Value;
                 FormOrdServCentroNovo.CdsOPOSV_STATUS.AsString      := 'I';   //Conlusao parcial
                 end
              else
                 // concluiu igual ou mais
                 begin
                 FormOrdServCentroNovo.CdsOPOSV_QTDE_CONCLUIDA.AsCurrency := (FormOrdServCentroNovo.CdsOPOSV_QTDE_CONCLUIDA.AsCurrency+CurQtdeConcluida.Value);
                 FormOrdServCentroNovo.CdsOPOSV_STATUS.AsString      :='C';   // concluida
                 end;

              FormOrdServCentroNovo.CdsOP.Post;
              FormOrdServCentroNovo.CdsOP.ApplyUpdates(0);
              // Gravar descrição especifica da produção no lote
              if (FrmMenu.sGerarNumLote = 'M') and (FormOrdServCentroNovo.CdsOPPRD_GERENCIA_LOTE.AsString = 'S') then
                  ExecSql('UPDATE PRD_LOTE SET PRDL_DESCRICAO = '+qStr(sLoteDescricao)+' WHERE PRDL_REGISTRO = '+qStr(CbLoteProduto.EditValue));

            except on E:EdataBaseError do
              uteis.erro  (pchar('Erro ao atualizar a tabela OSV0001 !'+e.message));
            end;
          finally
             Screen.Cursor := crDefault;
          end;
      end
   else
      begin
          uteis.aviso('Ordem de produção esta aberta ! não pode ser concluída !');
      end;
{  if (FormOrdServCentroNovo.CdsOP.state<>dsBrowse) then
      FormOrdServCentroNovo.CdsOP.Post;
   if (FormOrdServCentroNovo.CdsOP.UpdateStatus<>usUnmodified) then
       if FormOrdServCentroNovo.CdsOP.ApplyUpdates(-1)<>-1 then
       begin
          FormOrdServCentroNovo.CdsOP.Delta
       end;}

   FormOrdServCentroNovo.CdsOP.Close;
   FormOrdServCentroNovo.CdsOP.open;
   Close;
//       end;
end;

procedure TFormConcluirOP.FormShow(Sender: tObject);
begin
    inherited;
    left            := 186;
    Top             := 154;
    EditRefer.Text  := FormOrdServCentroNovo.CdsOPPRD_REFER.AsString;

    Edit2.Text      := FormOrdServCentroNovo.CdsOPPRD_DESCRI.AsString;
    Edt_Lote.Visible:= False;
    if FrmMenu.sGerarNumLote = 'A' then
        EditLotePredefinido.Text := FormOrdServCentroNovo.CdsOPOSV_CODIGO.AsString
    else
       EditLotePredefinido.Text  := FormOrdServCentroNovo.CdsOPOSV_LOTE.AsString;
    // qtde que falta cocluir
    CurQtdeConcluida.Value := (FormOrdServCentroNovo.CdsOPOSV_QTDE.AsFloat - FormOrdServCentroNovo.CdsOPOSV_QTDE_CONCLUIDA.AsFloat);
    wConcluirAnterior :=  CurQtdeConcluida.Value;
   //
    if (FormOrdServCentroNovo.CdsOPOSV_LOTE.AsString <> '') and (FrmMenu.sGerarNumLote = 'A') then
    begin
        Edt_Lote.Text            := FormOrdServCentroNovo.CdsOPOSV_LOTE.AsString;      // se lote manual pode mudar na conclusao
        sLote                    := Edt_Lote.text;
        LbLote.Caption           := 'Lote Auto-definido:';
        Edt_Lote.Visible         := True;
        CbLoteProduto.Visible    := False;
        SpeedButton3.Visible     := False;
    end;

    if FormOrdServCentroNovo.CdsOPPRD_GERENCIA_LOTE.AsString = 'S' Then
       begin
        Editcomsemlote.Font.Color := clGreen;
        Editcomsemlote.Text := 'Produto com Controle de Lote';
       end
      else
      begin
        Editcomsemlote.Font.Color := clRed;
        Editcomsemlote.Text := 'Produto Sem Controle de Lote';
      end;


    DtFab.date      := now;
    Screen.Cursor   := crDefault;
end;

procedure TFormConcluirOP.DtFabExit(Sender: tObject);
begin

    if (DtFab.Text <> '  /  /    ') then
       if not TestaDataStr(DtFab.Text) then
          DtFab.setfocus;
end;

procedure TFormConcluirOP.DtValidadeExit(Sender: tObject);
begin

    if (DtValidade.Text <> '  /  /    ') then
       if not TestaDataStr(DtValidade.Text) then
          DtValidade.setfocus;
end;

procedure TFormConcluirOP.BaixaEstoque;
begin
    DmProducao.CdsOsvIt.Close;
    DmProducao.CdsOsvIt.CommandText := SqlDef('ORDEMPRODUCAO','Select * from OSV_IT02','Where OSV_CODIGO = '''+FormOrdServCentroNovo.CdsOPOSV_CODIGO.AsString+''' and PRD_REFER = '''+FormOrdServCentroNovo.CdsOPPRD_REFER.AsString+'''','','');
    DmProducao.CdsOsvIt.Open;
    DmProducao.CdsOsvIt.First;
    while not DmProducao.CdsOsvIt.Eof do
     begin
         Datamovimento2.sqlaux.close;
         DataMovimento2.sqlaux.sql.text := SQLDEF('ORDEMPRODUCAO','Update PRD0000 set PRD_SAIDA = (PRD_SAIDA + '+ValorAmericano(DmProducao.CdsOsvItOSI_EMPENHO.AsString)+') , PRD_EMPENHO = (PRD_EMPENHO - '+ValorAmericano(DmProducao.CdsOsvItOSI_EMPENHO.AsString)+')',' where PRD_REFER = '''+DmProducao.CdsOsvItPRD_REFER_ITENS.AsString+'''','','');
         DataMovimento2.sqlaux.ExecSql;
         {Atualiza o Kardex dos Itens da OP}
         Atualiza_Kardex('P',
                         'S',
                         DmProducao.CdsOsvItOSV_CODIGO.AsString,
                         DmProducao.CdsOsvItPRD_REFER_ITENS.AsString,
                         DmProducao.CdsOsvItEMP_CODIGO.AsString,
                         DataAmericana(DateToStr(Now)),
                         CurrToStr(DmProducao.CdsOsvItOSI_EMPENHO.AsCurrency));
         {Diminui o Saldo da Produçao}
         AtualizaQtdeProducao(DmProducao.CdsOsvItPRD_REFER_ITENS.AsString,
                              'S',
                              ValorAmericano(FloatToStr(DmProducao.CdsOsvItOSI_EMPENHO.AsCurrency)));
         //
         DmProducao.CdsOsvIt.Next;
     end;
end;

procedure TFormConcluirOP.GravaKardex;
var
  sDescricao :String;
begin                                                                                                                                                                                                                                     //FormOrdServCentroNovo.CdsOPOSV_QTDE_CONVERTIDA.AsCurrency
    try


       // descrição para gravar no kardex
        if (FormOrdServCentroNovo.CdsOPCLI_CODIGO.AsString <> '')and(FormOrdServCentroNovo.CdsOPCLI_CODIGO.AsString <> 'null') then
          begin
            sDescricao := FormOrdServCentroNovo.CdsOPCLI_CODIGO.AsString+'-'+FormOrdServCentroNovo.CdsOPCLI_RAZAO.AsString;
          end
        else
          if (sLote <> '') then
            begin
             sDescricao :='Lote: '+sLote+' - '+'OP No.'+FormOrdServCentroNovo.CdsOPOSV_CODIGO.AsString; // no kardex
            end
          else
            begin
              sDescricao := 'ENTRADA PELA ORDEM DE PRODUÇÃO';     // no kardex
            end;

        // descriçao para o lote
        if (sLote <> '') then
          begin
           sLoteDescricao := 'Gerado pela OP No.'+FormOrdServCentroNovo.CdsOPOSV_CODIGO.AsString;
          end;

        KardexLancamento(FormOrdServCentroNovo.CdsOPOSV_REGISTRO.AsString,
                          'PRO',
                          wPmt_Amx_Producao_Entrada,
                          '',          // almoxarifado de origem
                          FormOrdServCentroNovo.CdsOPPRD_CODIGO.AsString,
                          '',          // grade
                          '',         // unidade de medida
                          'E',        // Tipo
                          sLote,      //        '',         { lote   }
                          sloteregistro  ,
                          'ENTRADA DE PRODUCAO',
                          Now,
                          CurQtdeConcluida.value,       //(FormOrdServCentroNovo.CdsOPOSV_QTDE.AsFloat),
                          FormOrdServCentroNovo.CdsOPOSV_CODIGO.AsString,
                          sDescricao,
                          0.00,'','','',FormOrdServCentroNovo.cdsOpPRD_REFER.AsString);
                          
      except on E:EDataBaseError do
        begin
            uteis.erro  (pchar('Erro ao grvar lançamento no kardex !'+E.MESSAGE));
        end;
      end;
end;

function TFormConcluirOP.RetornaValorConversao(const sProduto: String;  rValor: Real): Real;
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
   Result := rTmpFator;

end;

procedure TFormConcluirOP.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
   inherited;
   CdsLoteProduto.Close;

end;

procedure TFormConcluirOP.FormCreate(Sender: tObject);
begin
     inherited;
     wAtualiza_Estoque:=dbInicio.GetParametroSistema('PMT_ATULIZA_ESTOQUE');
     wPmt_Amx_Producao_Entrada:= dbInicio.GetParametroSistema('PMT_AMX_PRODUCAO_ENTRADA');
end;

procedure TFormConcluirOP.SpeedButton3Click(Sender: tObject);
begin
   try
      FrmCadastroProdutoLote := TFrmCadastroProdutoLote.Create(Application);
      try
        FrmCadastroProdutoLote.sPrdCodido := RetornaProdutoReferencia(EditRefer.Text);
        FrmCadastroProdutoLote.ShowModal;
      finally
        FrmCadastroProdutoLote.Destroy;
        FrmCadastroProdutoLote := nil;
      end;
      try
        CdsLoteProduto.Refresh;
      except

      end;


    except
        //beep;
        uteis.erro  ('Ocorreu um erro na criação do formulário!');
    end;
end;

procedure TFormConcluirOP.EditReferChange(Sender: tObject);
begin
   if (EditRefer.Text <> '') then
   if (ProdutoGerenciaLote(EditRefer.Text)) then
      begin
         CbLoteProduto.Enabled := True;
         CdsLoteProduto.Close;
         CdsLoteProduto.CommandText := SQLDEF('PRODUTOS','SELECT * from PRD_LOTE','where PRD_CODIGO = '''+RetornaProdutoReferencia(EditRefer.Text)+'''','PRD_CODIGO','');
         CdsLoteProduto.Open;
      end
   else
      begin
         CbLoteProduto.Enabled := False;
      end;
end;

procedure TFormConcluirOP.CbLoteProdutoExit(Sender: tObject);
begin
      sLote := CbLoteProduto.Properties.DataController.DataSet.Lookup('PRDL_REGISTRO',CbLoteProduto.EditValue,'PRDL_LOTE');
      DtValidade.Date := CbLoteProduto.Properties.DataController.DataSet.Lookup('PRDL_REGISTRO',CbLoteProduto.EditValue,'PRDL_DATA_VALIDADE');
end;

end.





