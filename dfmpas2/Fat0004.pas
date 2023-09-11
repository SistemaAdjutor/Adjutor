unit Fat0004;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, StdCtrls, Buttons, Mask,  rxToolEdit,
  Provider, SqlExpr,SqlClientDataSet, DB, DBClient, DBLocal, DBLocalS, ppCtrls, ppBands,
  ppVar, ppPrnabl, ppClass, ppCache, ppProd, ppReport, ppComm, ppRelatv,   ppXLSDevice,
  ppDB, ppDBPipe,  rxCurrEdit, ComCtrls, RwSQLComando, ComboBoxRw,
  Data.DBXFirebird, ppDesignLayer, ppParameter, SimpleDS, SgDbSeachComboUnit,
  BaseForm, ACBrBase, ACBrCalculadora, ACBrEnterTab, ACBrETQ, JvExMask, JvToolEdit, system.StrUtils;


type
  TFrmConsultaNFSaida = class(TfrmBase)
    Panel1: TPanel;
    SqlCdsNFSaida: TSQLClientDataSet;
    DsNFSaida: TDataSource;
    SqlCdsNFSaidaNF_NOTANUMBER: TStringField;
    SqlCdsNFSaidaNF_EMISSAO: TDateField;
    SqlCdsNFSaidaOPE_NATUREZA: TStringField;
    SqlCdsNFSaidaCLI_CODIGO: TStringField;
    SqlCdsNFSaidaCLI_RAZAO: TStringField;
    SqlCdsNFSaidaNF_TOT_PROD: TFMTBCdField;
    SqlCdsNFSaidaNF_VL_IPI: TFMTBCdField;
    SqlCdsNFSaidaNF_VL_ICMS: TFMTBCdField;
    SqlCdsNFSaidaNF_TOT_NOTA: TFMTBCdField;
    SqlCdsNFSaidaNF_CANCELADA: TStringField;
    SqlCdsNFSaidaCanc_CC: TStringField;
    ppDBNFSAIDA: TppDBPipeline;
    ppREPNFSAIDAS: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppLine30: TppLine;
    LBL_00_EMPRESA: TppLabel;
    LBL_00_LTITULO1: TppLabel;
    LBL_00_LTITULO2: TppLabel;
    ppSystemVariable13: TppSystemVariable;
    ppSystemVariable14: TppSystemVariable;
    ppLine31: TppLine;
    ppDetailBand1: TppDetailBand;
    ppLine1: TppLine;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLine2: TppLine;
    ppLabel10: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    SqlCdsNFSaidaOPE_SEMVLCOM: TStringField;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBText11: TppDBText;
    SqlCdsNFSaidaGrupo_cc: TStringField;
    ppLine3: TppLine;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppLine5: TppLine;
    ppLabel11: TppLabel;
    SqlCdsNFSaidaTOTAL_PROD_LIQ_CC: TCurrencyField;
    SqlCdsNFSaidaNF_VL_DESCTO: TFMTBCdField;
    PageCtrlNF: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    Label10: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    CurrTotalGeralNF: TCurrencyEdit;
    CurrTotalLiquidoNF: TCurrencyEdit;
    Panel4: TPanel;
    CurrNFCancelado: TCurrencyEdit;
    CurrNFSemValor: TCurrencyEdit;
    DBGrid2: TDBGrid;
    Panel3: TPanel;
    Label14: TLabel;
    Label15: TLabel;
    CPTotal: TCurrencyEdit;
    Panel5: TPanel;
    CQtde: TCurrencyEdit;
    SqlRelNota: TSQLClientDataSet;
    DsRelNota: TDataSource;
    SqlRelNotaNF_NOTANUMBER: TStringField;
    SqlRelNotaNF_EMISSAO: TDateField;
    SqlRelNotaOPE_NATUREZA: TStringField;
    SqlRelNotaOPE_SEMVLCOM: TStringField;
    SqlRelNotaCLI_CODIGO: TStringField;
    SqlRelNotaCLI_RAZAO: TStringField;
    SqlRelNotaNF_TOT_PROD: TFMTBCdField;
    SqlRelNotaNF_VL_IPI: TFMTBCdField;
    SqlRelNotaNF_VL_ICMS: TFMTBCdField;
    SqlRelNotaNF_TOT_NOTA: TFMTBCdField;
    SqlRelNotaNF_VL_DESCTO: TFMTBCdField;
    SqlRelNotaNF_CANCELADA: TStringField;
    SqlRelNotaNF_QTDE: TFMTBCdField;
    DsItensNF: TDataSource;
    SqlItensNF: TSQLClientDataSet;
    SqlItensNFNF_REGISTRO: TIntegerField;
    SqlItensNFNF_IT_NOTANUMER: TStringField;
    SqlItensNFPRD_REFER: TStringField;
    SqlItensNFPED_CODIGO: TStringField;
    SqlItensNFNF_QTDE: TFMTBCdField;
    SqlItensNFNF_PRECO: TFMTBCdField;
    SqlItensNFNF_IPIALIQ: TFMTBCdField;
    SqlItensNFIPI_CODIGO: TStringField;
    SqlItensNFNF_VLSUBST: TFMTBCdField;
    SqlItensNFNF_IDESCTO1: TFMTBCdField;
    SqlItensNFNF_IDESCTO2: TFMTBCdField;
    SqlItensNFPRD_DESCRI: TStringField;
    SqlItensNFEMP_CODIGO: TStringField;
    SqlItensNFNF_ICMSALIQ: TFMTBCdField;
    SqlItensNFNF_PMATPRIMA: TFMTBCdField;
    SqlItensNFNF_COMISSAO: TFMTBCdField;
    SqlItensNFNF_QTDE_VAR1: TFMTBCdField;
    SqlItensNFNF_QTDE_VAR2: TFMTBCdField;
    SqlItensNFNF_QTDE_VAR3: TFMTBCdField;
    SqlItensNFNF_QTDE_VAR4: TFMTBCdField;
    SqlItensNFNF_QTDE_VAR5: TFMTBCdField;
    SqlItensNFNF_QTDE_VAR6: TFMTBCdField;
    SqlItensNFNF_QTDE_VAR7: TFMTBCdField;
    SqlItensNFNF_QTDE_VAR8: TFMTBCdField;
    SqlItensNFNF_FLAG_ATUALIZA_ESTOQUE: TStringField;
    SqlItensNFNF_PRODUTO_AGREGADO: TStringField;
    SqlItensNFNF_HORA: TTimeField;
    SqlItensNFPRD_UND: TStringField;
    SqlItensNFID_CC: TIntegerField;
    SqlItensNFPTOTAL_CC: TCurrencyField;
    Label12: TLabel;
    ppLabel12: TppLabel;
    ppDBText12: TppDBText;
    ppDBCalc6: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    SqlRelNotaCanc_cc: TStringField;
    SqlRelNotaGrupo_cc: TStringField;
    SqlRelNotaTOTAL_PROD_LIQ_CC: TCurrencyField;
    ppLabel13: TppLabel;
    SqlRelNotaPCL_NOME: TStringField;
    ppDBText14: TppDBText;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppLabel15: TppLabel;
    ppDBText15: TppDBText;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLabel16: TppLabel;
    ppDBCalc12: TppDBCalc;
    ppDBCalc13: TppDBCalc;
    ppDBCalc14: TppDBCalc;
    ppDBCalc15: TppDBCalc;
    ppDBCalc16: TppDBCalc;
    ppLine8: TppLine;
    SqlCdsNFSaidaNF_NUM_NFE: TIntegerField;
    SqlRelNotaNF_NUM_NFE: TIntegerField;
    SqlRelNotaNF_CHAVE_NFE: TStringField;
    ppLabel3: TppLabel;
    ppDBText3: TppDBText;
    ppLabel14: TppLabel;
    SqlRelNotaNF_VL_SUBTRIB: TFMTBCdField;
    ppDBCalc18: TppDBCalc;
    ppDBText4: TppDBText;
    ppDBCalc17: TppDBCalc;
    ppDBCalc19: TppDBCalc;
    SqlCdsNFSaidaNF_VLFRETE: TFMTBCdField;
    SqlCdsNFSaidaNF_DESP_ACES: TFMTBCdField;
    Panel6: TPanel;
    GroupBox1: TGroupBox;
    Rad_Fatura: TRadioButton;
    Rad_Emissao: TRadioButton;
    Rad_Cliente: TRadioButton;
    Rad_NFe: TRadioButton;
    Grp_Informa: TGroupBox;
    Lbl_Informa: TLabel;
    Pan_Data: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label1: TLabel;
    Edt_Lista: TEdit;
    Cb_Clientes1: TComboBoxRw;
    BitPesquisar: TBitBtn;
    BitImprimir: TBitBtn;
    BitSair: TBitBtn;
    BitBtn1: TBitBtn;
    TxtCFOP_detail: TppDBText;
    RxDataInicial: TJvDateEdit;
    RxDataFinal: TJvDateEdit;
    SqlCdsNFSaidaNF_STATUS_NFE: TStringField;
    procedure FormShow(Sender: tObject);
    procedure BitSairClick(Sender: tObject);
    procedure LayoutClick(Sender: tObject);
    procedure BitPesquisarClick(Sender: tObject);
    procedure Edt_ListaExit(Sender: tObject);
    procedure SqlCdsNFSaidaCalcFields(DataSet: TDataSet);
    procedure BitImprimirClick(Sender: tObject);
    procedure DBGrid1DrawColumnCell(Sender: tObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure SqlItensNFCalcFields(DataSet: TDataSet);
    procedure DBGrid2DrawColumnCell(Sender: tObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1DblClick(Sender: tObject);
    procedure DBGrid1KeyPress(Sender: tObject; var Key: Char);
    procedure PageCtrlNFChange(Sender: tObject);
    procedure SqlRelNotaCalcFields(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: tObject);
    procedure Cb_Clientes1Select(Sender: tObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure ppREPNFSAIDASBeforePrint(Sender: TObject);
    procedure ppREPNFSAIDASAfterPrint(Sender: TObject);
  private
    { Private declarations }
    sTransfCondicao,
    wCodCliente : String;
    wAchouCli   : Boolean;
    procedure BuscaNFSaida;
    procedure Busca_Itens_NF(sNumNota:String);
    procedure Mensagens;

    procedure Calcular_Notas;
    procedure Calcular_Itens_Nota;

    procedure Cancelar_Pesquisar;

  public
    { Public declarations }
    procedure BotoesAcesso;
  end;

var
  FrmConsultaNFSaida: TFrmConsultaNFSaida;

implementation

{$R *.dfm}

uses Uteis, DataCad, Men0001, Fat0005, InicioDb, ufrmpreviewrb;

procedure TFrmConsultaNFSaida.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TFrmConsultaNFSaida.FormDestroy(Sender: TObject);
begin
  inherited;
  FrmConsultaNFSaida := Nil;
end;

procedure TFrmConsultaNFSaida.FormShow(Sender: tObject);
begin
    inherited;
    sTransfCondicao := '';
    LayOutClick(nil);
end;

procedure TFrmConsultaNFSaida.BitSairClick(Sender: tObject);
begin
    close;
end;

procedure TFrmConsultaNFSaida.BotoesAcesso;
begin
     if assigned(FrmConsultaNFSaida) then
     begin
       BitImprimir.Enabled := Uteis.AcessoUsuario('MovimentosConsulta de Nota Fiscal de Saída',DBInicio.Usuario.CODIGO,FrmConsultaNFSaida).Relatorio;
     end;
end;

procedure TFrmConsultaNFSaida.LayoutClick(Sender: tObject);
begin
      Cb_Clientes1.Visible:= False;
      Pan_Data.Visible    := False;
      Lbl_Informa.visible := False;
      Edt_Lista.Visible := False;
      Pan_Data.align    := alBottom;
      Pan_Data.Height:=44;
      Lbl_Informa.visible := true;
      Edt_Lista.Visible := True;
      if (Rad_NFe.checked ) then
      begin
           Grp_Informa.Caption := 'Informa o Nº da Nota Fiscal';
           Lbl_Informa.Caption := 'Nº NFe:';
           Edt_Lista.MaxLength := 6;
           PageCtrlNF.ActivePageIndex := 0;
           Edt_Lista.SetFocus;
      end
      else
      if (Rad_Fatura.checked ) then
      begin
           Grp_Informa.Caption := 'Informa o Nº da Fatura';
           Lbl_Informa.Caption := 'Nº NF:';
           //BitImprimir.Enabled := False;
           Edt_Lista.MaxLength := 6;
           PageCtrlNF.ActivePageIndex := 0;
           Edt_Lista.SetFocus;
      end
      else
      if (Rad_Emissao.checked ) then
      begin
           Grp_Informa.Caption := 'Informa o Período de Emissão';
           Lbl_Informa.Caption := '';
           Pan_Data.Visible    := True;
           PageCtrlNF.ActivePageIndex := 0;
           RxDataInicial.SetFocus;
           Edt_Lista.Visible := False;
      end
      else
      if (Rad_Cliente.checked ) then
      begin
           Grp_Informa.Caption := 'Informa o Código do Cliente';
           Lbl_Informa.Caption := 'Código:';
           Cb_Clientes1.Visible:= True;
           Edt_Lista.MaxLength   := 5;
           PageCtrlNF.ActivePageIndex := 0;
           Edt_Lista.SetFocus;
           Pan_Data.Visible    := True;
           Pan_Data.Height:=24;
      end;
end;


procedure TFrmConsultaNFSaida.BitPesquisarClick(Sender: tObject);
begin
    Screen.Cursor := Crhourglass;
    If (Edt_Lista.Text <> '') or ((RxDataInicial.Date <> 0) and (RxDataFinal.Date <> 0)) then
       BuscaNFSaida
    else
    begin
           Mensagens;
           Cancelar_Pesquisar;
    end;
    Screen.Cursor := CrDefault;
end;

procedure TFrmConsultaNFSaida.BuscaNFSaida;
begin
    {Monta Sql}
    SqlCdsNFSaida.Close;

    FrmMenu.RwSqlGeralCmd.MontarSql      := False;
    FrmMenu.RwSqlGeralCmd.ResetaCampos   := True;
    FrmMenu.RwSqlGeralCmd.CodigoEmpresa  := StrToInt(dbInicio.Empresa.EMP_CODIGO);
    FrmMenu.RwSqlGeralCmd.MultiEmpresa   := True;
    FrmMenu.RwSqlGeralCmd.Apelido        := 'N2.';
    FrmMenu.RwSqlGeralCmd.TipoSql        := Consultar;
    FrmMenu.RwSqlGeralCmd.Campos         := 'N2.NF_NOTANUMBER,'+
                                            'N2.NF_EMISSAO,'+
                                            'N2.OPE_NATUREZA,'+
                                            'N2.OPE_SEMVLCOM,'+
                                            'N2.CLI_CODIGO,'+
                                            'C1.CLI_RAZAO,'+
                                            'N2.NF_TOT_PROD,'+
                                            'N2.NF_VL_IPI,'+
                                            'N2.NF_VL_DESCTO,'+
                                            'N2.NF_VLFRETE,'+
                                            'N2.NF_DESP_ACES,'+
                                            'N2.NF_VL_ICMS,'+
                                            'N2.NF_TOT_NOTA,'+
                                            'N2.NF_CANCELADA,'+
                                            'N2.NF_NUM_NFE,'+
                                            'n2.NF_STATUS_NFE'
                                            ;
    FrmMenu.RwSqlGeralCmd.Tabela         := 'NF0001';
    FrmMenu.RwSqlGeralCmd.Compartilhar   := 'RECEBER';
    FrmMenu.RwSqlGeralCmd.UniaoTabelas   := 'LEFT JOIN CLI0000 C1 ON (N2.CLI_CODIGO = C1.CLI_CODIGO) ';
    {Condicoes}
    if (Rad_NFe.Checked) then
    begin
           FrmMenu.RwSqlGeralCmd.Condicao       := 'N2.NF_NUM_NFE = '''+StrZero(Edt_Lista.Text , Edt_Lista.MaxLength)+'''';
           FrmMenu.RwSqlGeralCmd.CamposOrdernar := 'N2.NF_NUM_NFE';
    end
    else
    if (Rad_emissao.Checked) then
    begin
         if RxDataInicial.date<>0 then
            FrmMenu.RwSqlGeralCmd.Condicao       := 'N2.NF_EMISSAO >= '+DateToSql(RxDataInicial.date);
         if RxDataFinal.date<>0 then
            FrmMenu.RwSqlGeralCmd.Condicao       := ConcatSe ( FrmMenu.RwSqlGeralCmd.Condicao, ' and ')+'N2.NF_EMISSAO <= '+DateToSql(RxDataFinal.date);
         FrmMenu.RwSqlGeralCmd.CamposOrdernar := 'N2.OPE_SEMVLCOM,N2.NF_CANCELADA,N2.NF_EMISSAO,C1.CLI_RAZAO';
    end
    else
    if (Rad_Fatura.Checked) then
    begin
           FrmMenu.RwSqlGeralCmd.Condicao       := 'N2.NF_NOTANUMBER = '''+StrZero(Edt_Lista.Text,Edt_Lista.MaxLength)+'''';
           FrmMenu.RwSqlGeralCmd.CamposOrdernar := 'N2.NF_NOTANUMBER';
    end
    else
    if (Rad_Cliente.Checked) then
    begin
         if RxDataInicial.date<>0 then
            FrmMenu.RwSqlGeralCmd.Condicao       := 'N2.NF_EMISSAO >= '+DateToSql(RxDataInicial.date);
         if RxDataFinal.date<>0 then
            FrmMenu.RwSqlGeralCmd.Condicao       := ConcatSe ( FrmMenu.RwSqlGeralCmd.Condicao, ' and ')+'N2.NF_EMISSAO <= '+DateToSql(RxDataFinal.date) ;
         FrmMenu.RwSqlGeralCmd.Condicao       := ConcatSe ( FrmMenu.RwSqlGeralCmd.Condicao, ' and ')+' C1.CLI_CODIGO = '+qStr(StrZero(Edt_lista.Text,Edt_Lista.MaxLength));
         FrmMenu.RwSqlGeralCmd.CamposOrdernar := 'C1.CLI_RAZAO';
    end;
    Screen.Cursor := crHourGlass;
    try
      FrmMenu.RwSqlGeralCmd.MontarSql      := True;
      SqlCdsNFSaida.Close;
      SqlCdsNFSaida.PacketRecords := -1;
      SqlCdsNFSaida.CommandText   := FrmMenu.RwSqlGeralCmd.ComandoSql ;
      SqlCdsNFSaida.open;
      if SqlCdsNFSaida.IsEmpty then
      begin
             Mensagens;
             sTransfCondicao    := '';
             Cancelar_Pesquisar;
      end
      else
      begin
             sTransfCondicao    := FrmMenu.RwSqlGeralCmd.Condicao;
             SqlCdsNFSaida.DisableControls;
             Calcular_Notas;
             SqlCdsNFSaida.EnableControls;
             DBGrid1.SetFocus;
      end;
    except on E:EdatabaseError do
        uteis.erro  (Pchar('Erro ao Abrir as Tabelas !'+e.Message));
    end;
    Screen.Cursor := crDefault;
end;

procedure TFrmConsultaNFSaida.Mensagens;
begin
    if Rad_NFe.checked  then
       begin
           if Edt_Lista.Text = '' then
              uteis.aviso('Informe o número da nota fiscal !')
           else
              uteis.aviso('Número da nota fiscal não encontrado !');
       end
    else
    if Rad_Fatura.checked  then
       begin
           if Edt_Lista.Text = '' then
              uteis.aviso('Informe o Nº da fatura !')
           else
              uteis.aviso('Nº da fatura não encontrado !');
       end
    else
    if Rad_Cliente.checked  then
       begin
           if Edt_Lista.Text = '' then
              uteis.aviso('Informe o Cliente !')
           else
              uteis.aviso('Não existem nenhuma Nota Fiscais do Cliente informado !');
       end
    else
    if Rad_Emissao.checked  then
       begin
          if (RxDataInicial.Date = 0) then
             uteis.aviso('Informe a Data de Emissão !')
          else
             uteis.aviso('Não existem nenhuma Nota Fiscais no período informado !');
       end;
end;

procedure TFrmConsultaNFSaida.Edt_ListaExit(Sender: tObject);
begin
    Edt_Lista.Text := StrZero(Edt_Lista.text,5);
    if (Rad_Cliente.Checked) then
        if (Edt_Lista.Text <> '00000') then
        begin
              if (ActiveControl <> Nil) and (ActiveControl.Name <> 'BitSair') then
              begin
                   Cb_Clientes1.idRetorno := Edt_Lista.Text;
                   if (Cb_Clientes1.idRetorno='') then
                   begin
                        uteis.aviso('Cliente não localizado com o código informado !');
                        Edt_Lista.SetFocus;
                   end;
              end;
        end
        Else
            Cb_Clientes1.clear;
end;

procedure TFrmConsultaNFSaida.SqlCdsNFSaidaCalcFields(DataSet: TDataSet);
begin
    if (SqlCdsNFSaidaNF_CANCELADA.AsString = 'S') then
       SqlCdsNFSaidaCanc_CC.AsString := 'SIM'
    else
       SqlCdsNFSaidaCanc_CC.AsString := 'NÃO';
end;

procedure TFrmConsultaNFSaida.BitImprimirClick(Sender: tObject);
Var bRel : Boolean;
    wSql1,  wSql2,  wSql3,  wSql4,  wSql5, wSeleciona, wOrdem: String ;
begin
    Screen.Cursor := crHourGlass;
    bRel          := True;
    wSeleciona    := '';
    try
      if (Rad_Emissao.checked ) then
         begin
             if (RxDataInicial.Date = 0) then
                begin
                    uteis.aviso('Informe o Período !');
                    RxDataInicial.SetFocus;
                    bRel := False;
                end;
         end
      else
      if (Rad_Fatura.checked ) or (Rad_NFe.checked ) or (Rad_Cliente.checked ) then
         begin
             if (Edt_Lista.Text = '') then
                begin
                    if (Rad_NFe.checked ) then
                       uteis.aviso('Informe o Número da Nota Fiscal !')
                    else
                    if (Rad_Fatura.checked ) then
                       uteis.aviso('Informe o Número da fatura !')
                    else
                    if (Rad_Cliente.checked ) then
                       uteis.aviso('Informe o Código do Cliente !');

                    Edt_Lista.SetFocus;
                    bRel := False;
                end;
         end;
      if (bRel) then
         begin
            if (Rad_emissao.checked ) then
               begin
                   wSeleciona := 'WHERE N2.NF_EMISSAO BETWEEN '+DateToSql(RxDataInicial.date)+' AND '+DateToSql(RxDataFinal.date);
                   wOrdem     := ' order by N2.OPE_SEMVLCOM,N2.NF_CANCELADA,N2.OPE_NATUREZA,N2.NF_EMISSAO,C1.CLI_RAZAO';
               end
            else
            if Rad_NFe.checked  then
               begin
                   wSeleciona := 'WHERE N2.NF_NUM_NFE = '''+strzero(Edt_Lista.Text,Edt_Lista.MaxLength)+'''';
                   wOrdem     := ' order by N2.NF_NUM_NFE';
               end
            else
            if Rad_Fatura.checked  then
               begin
                   wSeleciona := 'WHERE N2.NF_NOTANUMBER = '''+strzero(Edt_Lista.Text,Edt_Lista.MaxLength)+'''';
                   wOrdem     := ' order by N2.NF_NOTANUMBER';
               end
            else
            if Rad_Cliente.checked  then
               begin
                   wSeleciona := 'WHERE N2.NF_EMISSAO BETWEEN '+DateToSql(rxDataInicial.date)+' AND '+DateToSql(rxDataFinal.date)+' AND C1.CLI_CODIGO = '''+strzero(Edt_lista.Text,Edt_Lista.MaxLength)+'''';
                   wOrdem     := ' order by C1.CLI_RAZAO';
               end;

            wSql1 := 'SELECT N2.NF_NOTANUMBER,N2.NF_EMISSAO,N2.OPE_NATUREZA,N2.OPE_SEMVLCOM,N2.CLI_CODIGO,C1.CLI_RAZAO,N2.NF_TOT_PROD,N2.NF_VL_IPI,N2.NF_VL_ICMS,N2.NF_TOT_NOTA,N2.NF_VL_DESCTO,N2.NF_CANCELADA,T1.PCL_NOME, N2.NF_NUM_NFE, N2.NF_CHAVE_NFE, N2.NF_VL_SUBTRIB,';
            wSql2 := 'N2.NF_VLFRETE,N2.NF_DESP_ACES, COALESCE(SUM(N3.NF_QTDE),0) AS NF_QTDE FROM NF0001 N2 LEFT JOIN NF_IT01 N3 ON (N3.NF_IT_NOTANUMER = N2.NF_NOTANUMBER AND N2.EMP_CODIGO = N3.EMP_CODIGO) AND (N3.NF_FLAG_ATUALIZA_ESTOQUE = ''S'')';
            wSql3 := 'AND (N3.NF_PRODUTO_AGREGADO = ''N'') LEFT JOIN CLI0000 C1 ON (N2.CLI_CODIGO = C1.CLI_CODIGO) LEFT JOIN PCL0000 T1 ON (T1.PCL_CODIGO = N2.PCL_CODIGO)';
            wSql4 := 'GROUP BY N2.NF_NOTANUMBER,N2.NF_EMISSAO,N2.OPE_NATUREZA,N2.OPE_SEMVLCOM,N2.CLI_CODIGO,C1.CLI_RAZAO,N2.NF_TOT_PROD,N2.NF_VL_IPI,N2.NF_VL_ICMS,N2.NF_TOT_NOTA,N2.NF_VL_DESCTO,N2.NF_CANCELADA,T1.PCL_NOME, N2.NF_NUM_NFE, N2.NF_CHAVE_NFE, N2.NF_VL_SUBTRIB,';
            wSql5 := 'N2.NF_VLFRETE,N2.NF_DESP_ACES';
            //
            if dbInicio.Exclusivo('RECEBER') then
               wSeleciona := wSeleciona + ' AND N2.EMP_CODIGO = '''+dbInicio.Empresa.EMP_CODIGO+'''';
            SqlRelNota.Close;
            SqlRelNota.CommandText := wSql1+wSql2+wSql3+wSeleciona+wSql4+wSql5+wOrdem;
            SqlRelNota.Open;
            //
            Screen.Cursor := crDefault;
            LBL_00_EMPRESA.Caption := dbInicio.Empresa.RAZAO;
            LBL_00_LTITULO1.Caption := 'RELATORIO DE NOTAS FISCAIS DE SAÍDA';
            if (Rad_NFe.checked ) then
               begin
                   LBL_00_LTITULO2.Caption := 'Nota Fiscal Nº: '+Edt_Lista.Text;
               end;
            if (Rad_Fatura.checked ) then
               begin
                   LBL_00_LTITULO2.Caption := 'Fatura Nº: '+Edt_Lista.Text;
               end;
            if (Rad_Cliente.checked ) then
               begin
                   LBL_00_LTITULO2.Caption := 'Cliente: '+Edt_Lista.Text+' - '+Cb_Clientes1.Text;
               end;
            if (Rad_Emissao.checked ) then
               begin
                   LBL_00_LTITULO2.Caption := 'Período de '+RxDataInicial.Text+' até '+RxDataFinal.Text;
               end;
            ppREPNFSAIDAS.DeviceType := 'Screen';
            RBuilderPreview(ppREPNFSAIDAS);
         end;
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao Gerar o Relatorio ! '+e.message));
    end;
end;

procedure TFrmConsultaNFSaida.DBGrid1DrawColumnCell(Sender: tObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
      if (SqlCdsNFSaidaNF_CANCELADA.AsString = 'S') then
         DBGrid1.Canvas.Font.Color := clRed; // coloque aqui a cor desejada
      DBGrid1.DefaultDrawDataCell(Rect, DBGrid1.columns[datacol].field, State);
end;

procedure TFrmConsultaNFSaida.Calcular_Notas;
begin
    try
      CurrTotalLiquidoNF.Value := 0;
      CurrTotalGeralNF.Value   := 0;
      CurrNFCancelado.Value    := 0;
      CurrNFSemValor.Value     := 0;
//      SqlCdsNFSaida.DisableControls;
      SqlCdsNFSaida.First;
      while not (SqlCdsNFSaida.Eof) do
       begin
          CurrTotalGeralNF.Value   := CurrTotalGeralNF.Value   + SqlCdsNFSaidaNF_TOT_NOTA.AsCurrency;
          if (SqlCdsNFSaidaOPE_SEMVLCOM.AsString = 'N')
          and(SqlCdsNFSaidaNF_CANCELADA.AsString = 'N') and (MatchStr(SqlCdsNFSaidaNF_STATUS_NFE.AsString,['A','N','O'])) then
             begin
                CurrTotalLiquidoNF.Value := CurrTotalLiquidoNF.Value + SqlCdsNFSaidaNF_TOT_NOTA.AsCurrency;
             end;
          if (SqlCdsNFSaidaOPE_SEMVLCOM.AsString = 'S')
          and(SqlCdsNFSaidaNF_CANCELADA.AsString = 'N') then
             begin
                CurrNFSemValor.Value     := CurrNFSemValor.Value     + SqlCdsNFSaidaNF_TOT_NOTA.AsCurrency;
             end;
          if (SqlCdsNFSaidaNF_CANCELADA.AsString = 'S') then
             begin
                CurrNFCancelado.Value    := CurrNFCancelado.Value    + SqlCdsNFSaidaNF_TOT_NOTA.AsCurrency;
             end;
          SqlCdsNFSaida.Next;
       end;
      SqlCdsNFSaida.First;
//      SqlCdsNFSaida.EnableControls;
    except
      on E:EDataBaseError do
         begin
            uteis.erro  (pchar('Impossível calcular Total das Notas Fiscais !'+#13#10+
                       'Mensagem erro: '+e.message));
         end;
    end;
end;

procedure TFrmConsultaNFSaida.Cancelar_Pesquisar;
begin
    SqlCdsNFSaida.Close;
    PageCtrlNF.ActivePageIndex := 0;
end;

procedure TFrmConsultaNFSaida.Busca_Itens_NF(sNumNota: String);
begin
   if (not SqlCdsNFSaida.IsEmpty) then
   begin
        SqlItensNF.Close;
        SqlItensNF.CommandText := 'SELECT T1.*,T2.PRD_UND FROM NF_IT01 T1 LEFT JOIN PRD0000 T2 ON (T2.PRD_REFER = T1.PRD_REFER) '+
                                  'WHERE T1.NF_IT_NOTANUMER = '+qStr(sNumNota)+ConcatSe( ' and t1.', dbinicio.ExclusivoSql('RECEBER') )+
                                  ' ORDER BY T1.NF_REGISTRO';
        SqlItensNF.Open;
        if (not SqlItensNF.IsEmpty) then
        begin
             PageCtrlNF.ActivePageIndex := 1;
             Calcular_Itens_Nota;
             DBGrid2.SetFocus;
        end;
   end;
end;

procedure TFrmConsultaNFSaida.Calcular_Itens_Nota;
begin
   try
     CQtde.Value   := 0;
     CPTotal.Value := 0;
     SqlItensNF.DisableControls;
     SqlItensNF.First;
     while not SqlItensNF.Eof do
      begin
         CQtde.Value   := CQtde.Value   + SqlItensNFNF_QTDE.AsCurrency;
         CPTotal.Value := CPTotal.Value + SqlItensNFPTOTAL_CC.AsCurrency;
         SqlItensNF.Next;
      end;
     SqlItensNF.First;
     SqlItensNF.EnableControls;
   except
     on E:EDataBaseError do
        begin
           uteis.erro  (pchar('Erro ao calcular os Itens da Nota !'+#13#10+
                      'Mensagem erro: '+e.message));
        end;
   end;
end;

procedure TFrmConsultaNFSaida.SqlItensNFCalcFields(DataSet: TDataSet);
begin
   SqlItensNFID_CC.AsInteger      := SqlItensNF.RecNo;
   SqlItensNFPTOTAL_CC.AsCurrency := (SqlItensNFNF_QTDE.AsCurrency * SqlItensNFNF_PRECO.AsCurrency);
end;

procedure TFrmConsultaNFSaida.DBGrid2DrawColumnCell(Sender: tObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
    if (DBGrid1.Focused) then
    begin
          if (SqlItensNFNF_PRODUTO_AGREGADO.AsString = 'S') then
             DBGrid2.Canvas.Font.Color := clRed; // coloque aqui a cor desejada
          if (gdSelected in State) then
             DBGrid2.Canvas.Font.Color:= clWindow;
          DBGrid2.DefaultDrawDataCell(Rect, DBGrid2.columns[datacol].field, State);
    end
    else
    begin
          if (SqlItensNFNF_PRODUTO_AGREGADO.AsString = 'S') then
             DBGrid2.Canvas.Font.Color := clRed; // coloque aqui a cor desejada
          DBGrid2.DefaultDrawDataCell(Rect, DBGrid2.columns[datacol].field, State);
    end;
end;

procedure TFrmConsultaNFSaida.DBGrid1DblClick(Sender: tObject);
begin
   Busca_Itens_NF(SqlCdsNFSaidaNF_NOTANUMBER.AsString);
end;

procedure TFrmConsultaNFSaida.DBGrid1KeyPress(Sender: tObject;
  var Key: Char);
begin
   if (Key =#13) then
      begin
         Busca_Itens_NF(SqlCdsNFSaidaNF_NOTANUMBER.AsString);
         Key := #0;
      end;
end;

procedure TFrmConsultaNFSaida.PageCtrlNFChange(Sender: tObject);
begin
    Case PageCtrlNF.ActivePageIndex of
    1 : Begin
           Busca_Itens_NF(SqlCdsNFSaidaNF_NOTANUMBER.AsString);
        end;
    end;
end;

procedure TFrmConsultaNFSaida.ppREPNFSAIDASAfterPrint(Sender: TObject);
begin
  inherited;
  TxtCFOP_detail.Visible := false;
end;

procedure TFrmConsultaNFSaida.ppREPNFSAIDASBeforePrint(Sender: TObject);
begin
  inherited;
  TxtCFOP_detail.Visible :=  (TppReport(Sender).FileDevice is TppXLSReportDevice) or
                             (TppReport(Sender).FileDevice is TppXLSDataDevice)    ;


end;

procedure TFrmConsultaNFSaida.SqlRelNotaCalcFields(DataSet: TDataSet);
begin
   if (SqlRelNotaNF_CANCELADA.AsString = 'S') then
      SqlRelNotaCanc_CC.AsString := 'SIM'
   else
      SqlRelNotaCanc_CC.AsString := 'NãO';
   {TOTAL LIQUIDO DO PRODUTO}
   SqlRelNotaTOTAL_PROD_LIQ_CC.AsCurrency := (SqlRelNotaNF_TOT_PROD.AsCurrency - SqlRelNotaNF_VL_DESCTO.AsCurrency);
   {Total de Vendas}
   if (SqlRelNotaOPE_SEMVLCOM.AsString = 'N')
   and(SqlRelNotaNF_CANCELADA.AsString = 'N') then
      SqlRelNotaGrupo_cc.AsString := 'GRUPO NF DE VENDAS';
   {TOTAL DE VENDAS OUTRAS NF}
   if (SqlRelNotaOPE_SEMVLCOM.AsString = 'S')
   and(SqlRelNotaNF_CANCELADA.AsString = 'N') then
      SqlRelNotaGrupo_cc.AsString := 'GRUPO OUTRAS NF(S/V)';
   {TOTAL NOTAS CANCELADAS}
   if (SqlRelNotaNF_CANCELADA.AsString = 'S') then
      SqlRelNotaGrupo_cc.AsString := 'GRUPO NF CANCELADAS';
   //
{   SqlRelNotaCC_TIPODOC.AsString := iif(SqlRelNotaNF_TIPODOC.AsString = '','',
                                    iif(SqlRelNotaNF_TIPODOC.AsString = 'DP','DUPLICATA',
                                    iif(SqlRelNotaNF_TIPODOC.AsString = 'BL','BOLETO',
                                    iif(SqlRelNotaNF_TIPODOC.AsString = 'RC','RECIBO',
                                    iif(SqlRelNotaNF_TIPODOC.AsString = 'CH','CHEQUE',
                                    iif(SqlRelNotaNF_TIPODOC.AsString = 'DN','DINHEIRO',
                                    iif(SqlRelNotaNF_TIPODOC.AsString = 'OU','OUTROS','CREDITO CONTA')))))));}
end;

procedure TFrmConsultaNFSaida.BitBtn1Click(Sender: tObject);
begin
   if (not SqlCdsNFSaida.IsEmpty) then
      begin
         try
           FrmInformativoNF := TFrmInformativoNF.Create(Application);
           try

             FrmInformativoNF.sCondicao := sTransfCondicao;
             FrmInformativoNF.ShowModal;
           finally
             FrmInformativoNF.Destroy;
             FrmInformativoNF := nil;
             DBGrid1.SetFocus;
           end;
         except
             //beep;
             uteis.erro  ('Ocorreu um erro na criação do formulário!');
         end;
      end;
end;

procedure TFrmConsultaNFSaida.Cb_Clientes1Select(Sender: tObject);
begin
     edt_lista.text := cb_clientes1.idretorno;
end;

end.
