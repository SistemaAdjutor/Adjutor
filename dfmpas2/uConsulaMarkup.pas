unit uConsulaMarkup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, BaseDbForm,
  Dialogs, StdCtrls, ComCtrls, SqlExpr, SqlClientDataSet, Provider, DB,
  DBClient, DBLocal,
  DBLocalS, Grids, DBGrids, CheckLst, JvExCheckLst, JvCheckListBox,
  Buttons, Mask, rxToolEdit, ComboBoxRw, rxCurrEdit, TeEngine, Series,
  ExtCtrls, TeeProcs, Chart, DbChart, Menus, VclTee.TeeGDIPlus,
  Data.DBXFirebird, SimpleDS, SgDbSeachComboUnit, ACBrEnterTab, ACBrBase,
  ACBrCalculadora, Data.FMTBCd, Vcl.DBCtrls, BaseForm, ACBrETQ;

type
  TFrmConsultaMarkup = class(TfrmBaseDB)
    PageControl1: TPageControl;
    tsPedido: TTabSheet;
    tsNotaFiscal: TTabSheet;
    grpConsultaProduto: TGroupBox;
    dsPedido: TDataSource;
    grpEmpresa: TGroupBox;
    lstEmpresaPedido: TJvCheckListBox;
    GroupBox5: TGroupBox;
    GroupBox6: TGroupBox;
    lstEmpresaNotaFiscal: TJvCheckListBox;
    GroupBox8: TGroupBox;
    dsNotaFiscal: TDataSource;
    GbData: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    RxDataInicialPedido: TDateEdit;
    RxDataFinalPedido: TDateEdit;
    GroupBox9: TGroupBox;
    GroupBox10: TGroupBox;
    GroupBox11: TGroupBox;
    btnSairPedido: TBitBtn;
    btnPesquisarPedido: TBitBtn;
    cbbTipoPedido: TComboBoxRw;
    cbbVendedorPedido: TComboBoxRw;
    edtCodigoClientePedido: TEdit;
    cbbClientePedido: TComboBoxRw;
    pgcPedido: TPageControl;
    tsResultadoPedido: TTabSheet;
    tsGraficoPedido: TTabSheet;
    grpProdutoResultado: TGroupBox;
    dbgrdPedido: TDBGrid;
    dsGraficoPedido: TDataSource;
    CdsGraficoPedido: TClientDataSet;
    CdsGraficoPedidoVendedor: TStringField;
    CdsGraficoPedidoCusto: TFloatField;
    CdsGraficoPedidovenda: TFloatField;
    CdsGraficoPedidoVendCodigo: TIntegerField;
    CdsGraficoPedidoMarkup: TFloatField;
    chtGrafico: TChart;
    brsrsSeries1: TBarSeries;
    GroupBox12: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    RxDataInicialNotaFiscal: TDateEdit;
    RxDataFinalNotaFiscal: TDateEdit;
    GroupBox2: TGroupBox;
    edtCodigoClienteNotaFiscal: TEdit;
    cbbClienteNotaFiscal: TComboBoxRw;
    btnSairNotaFiscal: TBitBtn;
    BitBtn2: TBitBtn;
    PageControl2: TPageControl;
    tsResultadoNotaFiscal: TTabSheet;
    GroupBox7: TGroupBox;
    dbgrdNotaFiscal: TDBGrid;
    tsGraficoNotaFiscal: TTabSheet;
    Label5: TLabel;
    edit0: TCurrencyEdit;
    chtGraficoNotaFiscal: TChart;
    BarSeries1: TBarSeries;
    CdsGraficoNotaFiscal: TClientDataSet;
    DataSource1: TDataSource;
    CdsGraficoNotaFiscalVendedor: TStringField;
    CdsGraficoNotaFiscalCusto: TFloatField;
    CdsGraficoNotaFiscalVenda: TFloatField;
    CdsGraficoNotaFiscalVendCodigo: TIntegerField;
    CdsGraficoNotaFiscalMarkup: TFloatField;
    btnImprimir: TButton;
    Button1: TButton;
    GroupBox3: TGroupBox;
    Edt_Lista: TEdit;
    GroupBox4: TGroupBox;
    edtPedidoNota: TEdit;
    Label6: TLabel;
    CdsNotaFiscal: TClientDataSet;
    CdsPedido: TClientDataSet;
    qNotaFiscal: TSQLQuery;
    DspNotaFiscal: TDataSetProvider;
    dspPedido: TDataSetProvider;
    CdsNotaFiscalNF_NUM_NFE: TIntegerField;
    CdsNotaFiscalNF_EMISSAO: TDateField;
    CdsNotaFiscalPED_CODIGO: TStringField;
    CdsNotaFiscalCLI_CODIGO: TStringField;
    CdsNotaFiscalCLI_RAZAO: TStringField;
    CdsNotaFiscalREP_NOME: TStringField;
    CdsNotaFiscalNF_TOT_PROD: TFMTBCdField;
    CdsNotaFiscalCUSTO: TFMTBCdField;
    CdsNotaFiscalLUCRO: TFMTBCdField;
    CdsNotaFiscalVENDA_ESPERADA: TFMTBCdField;
    CdsNotaFiscalLUCRO_ESPERADO: TFMTBCdField;
    CdsNotaFiscalMarkup: TFloatField;
    CdsNotaFiscalMarkupPrevisto: TFloatField;
    CdsNotaFiscalREP_CODIGO: TStringField;
    CdsNotaFiscalRV: TFloatField;
    CdsNotaFiscalEMP_CODIGO: TStringField;
    CdsNotaFiscalTOT_NFTOTPROD: TAggregateField;
    DBEdit1: TDBEdit;
    Label7: TLabel;
    DBEdit2: TDBEdit;
    CdsNotaFiscalTOT_CUSTO: TAggregateField;
    Label8: TLabel;
    DBEdit3: TDBEdit;
    CdsNotaFiscalTOT_LUCRO: TAggregateField;
    Label9: TLabel;
    Label11: TLabel;
    DBEdit4: TDBEdit;
    DBEdit6: TDBEdit;
    CdsNotaFiscalTOT_VENDAESPERADA: TAggregateField;
    CdsNotaFiscaltot_lucroesperado: TAggregateField;
    Edit1: TEdit;
    Label10: TLabel;
    Label12: TLabel;
    Edit2: TEdit;
    Label13: TLabel;
    edMargemPrevista: TEdit;
    qPedido: TSQLQuery;
    CdsPedidoPED_CODIGO: TStringField;
    CdsPedidoPED_DTENTRADA: TSQLTimeStampField;
    CdsPedidoCLI_CODIGO: TStringField;
    CdsPedidoCLI_RAZAO: TStringField;
    CdsPedidoCLI_UF: TStringField;
    CdsPedidoREP_CODIGO: TStringField;
    CdsPedidoREP_NOME: TStringField;
    CdsPedidoVLLIQUIDO: TFMTBCdField;
    CdsPedidoCUSTO: TFMTBCdField;
    CdsPedidoLUCRO: TFMTBCdField;
    CdsPedidoVENDA_ESPERADA: TFMTBCdField;
    CdsPedidoLUCRO_ESPERADO: TFMTBCdField;
    CdsPedidoMARKUP: TFloatField;
    CdsPedidoMARKUP_PREVISTO: TFloatField;
    CdsPedidoRV: TFloatField;
    CdsPedidoEMP_CODIGO: TStringField;
    GroupBox13: TGroupBox;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Edit4: TCurrencyEdit;
    DBEdit5: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    CdsPedidoTOT_NFTOTPROD: TAggregateField;
    CdsPedidoTOT_CUSTO: TAggregateField;
    CdsPedidoTOT_LUCRO: TAggregateField;
    CdsPedidoTOT_VENDAESPERADA: TAggregateField;
    CdsPedidotot_lucroesperado: TAggregateField;
    btnExcel: TSpeedButton;
    SpeedButton1: TSpeedButton;
    btCalc: TSpeedButton;
    GroupBox14: TGroupBox;
    CbbTipoNota: TComboBoxRw;
    GroupBox1: TGroupBox;
    cbbVendedorNotaFiscal: TComboBoxRw;
    cdsNotaFiscalMargem: TFloatField;
    cdsNotaFiscalMargemPrevista: TFloatField;
    cdsNotaFiscalNF_TOT_NOTA: TFMTBCDField;
    PHINT: TPanel;
    Memo1: TMemo;
    Memo2: TMemo;
    Label23: TLabel;
    edTotalMargem: TEdit;
    name: TGroupBox;
    cbSituacao: TComboBox;
    Label24: TLabel;
    edMargemObtida: TEdit;
    cdsPedidoMARGEM_OBTIDA: TFloatField;
    SpeedButton2: TSpeedButton;
    qCCusto: TSQLQuery;
    GroupBox15: TGroupBox;
    edCCusto: TSgDbSearchCombo;

    procedure btnSairPedidoClick(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure edtCodigoClientePedidoExit(Sender: tObject);
    procedure CdsPedidoCalcFields(DataSet: TDataSet);
    procedure tsGraficoPedidoShow(Sender: tObject);
    procedure edtCodigoClienteNotaFiscalExit(Sender: tObject);
    procedure BitBtn2Click(Sender: tObject);
    procedure tsGraficoNotaFiscalShow(Sender: tObject);
    procedure btnImprimirClick(Sender: tObject);
    procedure Button1Click(Sender: tObject);
    procedure Edt_ListaExit(Sender: tObject);
    procedure dbgrdPedidoDblClick(Sender: tObject);
    procedure dbgrdNotaFiscalDblClick(Sender: tObject);
    procedure edtPedidoNotaExit(Sender: tObject);
    procedure cbbClienteNotaFiscalSelect(Sender: tObject);
    procedure cbbClientePedidoSelect(Sender: tObject);
    procedure CdsNotaFiscalCalcFields(DataSet: TDataSet);
    procedure CdsNotaFiscalAfterOpen(DataSet: TDataSet);
    procedure FormCreate(Sender: tObject);
    procedure btnPesquisarPedidoClick(Sender: tObject);
    procedure CdsPedidoAfterOpen(DataSet: TDataSet);
    procedure btnExcelClick(Sender: tObject);
    procedure SpeedButton1Click(Sender: tObject);
    procedure btCalcClick(Sender: tObject);
    procedure SpeedButton2Click(Sender: tObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    procedure ListaEmpresas;
    function RetornaEmpresas(CONST sCampo: String; lista: TJvCheckListBox): String;
    procedure ChamaPedidoDetalhe;
    procedure ChamaPedidoDetalheNota;
  public

  end;

var
  FrmConsultaMarkup: TFrmConsultaMarkup;

implementation

uses
    uConsulaMarkupPedido, uteis, iniciodb;

{$R *.dfm}

procedure TFrmConsultaMarkup.btnSairPedidoClick(Sender: tObject);
begin
     Close;
end;

procedure TFrmConsultaMarkup.ListaEmpresas;
begin
     lstEmpresaPedido.Items.Clear;
     lstEmpresaNotaFiscal.Items.Clear;
     openAux ( 'select t1.EMP_CODIGO, T1.EMP_RAZAO from EMP0000 T1' );
     while (not qAux.Eof) do
     begin
          lstEmpresaPedido.Items.Add(qAux.Fields[0].AsString + '-' + qAux.fields[1].AsString);
          lstEmpresaNotaFiscal.Items.Add(qAux.Fields[0].AsString + '-' + qAux.fields[1].AsString);
          qAux.Next;
     end;
     qAux.Close;
     lstEmpresaPedido.CheckAll;
     lstEmpresaNotaFiscal.CheckAll;
end;

procedure TFrmConsultaMarkup.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TFrmConsultaMarkup.FormCreate(Sender: tObject);
begin
  inherited;
  edit0.Clear;
  edit1.Clear;
  edit2.Clear;
  edMargemPrevista.Clear;
  edit4.Clear;
  edit5.Clear;
  edMargemObtida.Clear;
  edit6.Clear;
  edit7.Clear;
  edTotalMargem.Clear;
  // Self.Top := 0 ;
end;

procedure TFrmConsultaMarkup.FormDestroy(Sender: TObject);
begin
  inherited;
  FrmConsultaMarkup := Nil;
end;

procedure TFrmConsultaMarkup.FormShow(Sender: tObject);
begin
  inherited;
  ListaEmpresas;
  RxDataInicialPedido.Date := PrimeiroDiadoMes(Date);
  RxDataFinalPedido.Date := Date;
  RxDataInicialNotaFiscal.Date := PrimeiroDiadoMes(Date);
  RxDataFinalNotaFiscal.Date := Date;
  cbbTipoPedido.Clear;
  cbbVendedorPedido.Clear;
  cbbVendedorNotaFiscal.Clear;
  cbbVendedorNotaFiscal.Clear;
  cbbClienteNotaFiscal.Clear;
  cbbClientePedido.Clear;
  PageControl1.ActivePageIndex := 0;
  PageControl2.ActivePageIndex := 0;
end;

procedure TFrmConsultaMarkup.edtCodigoClientePedidoExit(Sender: tObject);
begin
     if (ActiveControl <> Nil) and (ActiveControl.Name <> 'edtCodigoClientePedido') and (ActiveControl.Name <> 'btnSairPedido') then
     begin
          if (Trim(edtCodigoClientePedido.Text) <> '') then
          begin
               cbbClientePedido.IdRetorno := StrZero(edtCodigoClientePedido.Text,edtCodigoClientePedido.MaxLength);
               if (cbbClientePedido.IdRetorno = '') then
               begin
                    uteis.aviso('Cliente não encontrado !');
                    edtCodigoClientePedido.SetFocus;

               end;
          end;
     end;
end;

procedure TFrmConsultaMarkup.cbbClienteNotaFiscalSelect(Sender: tObject);
begin
     edtCodigoClienteNotaFiscal.Text := cbbClienteNotaFiscal.IdRetorno;
end;

procedure TFrmConsultaMarkup.cbbClientePedidoSelect(Sender: tObject);
begin
     edtCodigoClientePedido.Text := cbbClientePedido.IdRetorno;
end;

procedure TFrmConsultaMarkup.CdsNotaFiscalAfterOpen(DataSet: TDataSet);
begin
     inherited;
     edit0.Clear;
     edit1.Clear;
     edit2.Clear;
     edMargemPrevista.Clear;
     edTotalMargem.Clear;
     if CdsNotaFiscal.Active then
     begin
         if not CdsNotaFiscalTOT_CUSTO.isnull  then
            if CdsNotaFiscalTOT_CUSTO.value>0 then
            begin
                 if not CdsNotaFiscalTOT_NFTOTPROD.IsNull then
                 begin
                    edit1.Text := FormatFloat( '##0.00', ((CdsNotaFiscalTOT_NFTOTPROD.value / CdsNotaFiscalTOT_CUSTO.value)-1) * 100 )+' %';
                    edTotalMargem.Text := FormatFloat( '##0.00', (1-(CdsNotaFiscalTOT_CUSTO.value/CdsNotaFiscalTOT_NFTOTPROD.value  )) * 100 )+' %';
                 end;
                 if not CdsNotaFiscalTOT_VENDAESPERADA.isnull  then
                 begin
                    edit2.Text := FormatFloat( '##0.00', ((CdsNotaFiscalTOT_VENDAESPERADA.value / CdsNotaFiscalTOT_CUSTO.value)-1) * 100 )+' %';
                   edMargemPrevista.Text :=FormatFloat( '##0.00', (1-(CdsNotaFiscalTOT_CUSTO.value/cdsNotaFiscalTOT_VENDAESPERADA.value  )) * 100 )+' %';
                 end;
            end;

         Edit0.Text := CdsNotaFiscal.RecordCount.ToString ;
     end;
end;

procedure TFrmConsultaMarkup.CdsNotaFiscalCalcFields(DataSet: TDataSet);
begin
  inherited;
  //markup  (valor dos produtos - valor do custo)  / valor dos produtos /100
  if (CdsNotaFiscalNF_TOT_NOTA.AsCurrency > 0) and  (CdsNotaFiscalCUSTO.AsCurrency > 0) then
    CdsNotaFiscalMarkup.AsCurrency := (1-(CdsNotaFiscalCUSTO.AsCurrency/CdsNotaFiscalNF_TOT_NOTA.AsCurrency)) * 100
  else
    CdsNotaFiscalMarkup.AsCurrency := 0;

  //markup prevista
  if (CdsNotaFiscalVENDA_ESPERADA.AsCurrency > 0) and (CdsNotaFiscalCUSTO.AsCurrency > 0) then
    CdsNotaFiscalMarkupPrevisto.AsCurrency := (1-(CdsNotaFiscalCUSTO.AsCurrency/CdsNotaFiscalVENDA_ESPERADA.AsCurrency)) * 100
  else
    CdsNotaFiscalMarkupPrevisto.AsCurrency := 0;


  // margem obtida custo x margem
  if (CdsNotaFiscalNF_TOT_NOTA.AsCurrency > 0) and  (CdsNotaFiscalCUSTO.AsCurrency > 0) then
    cdsNotaFiscalMargem.AsCurrency := ((CdsNotaFiscalNF_TOT_NOTA.AsCurrency / CdsNotaFiscalCUSTO.AsCurrency) - 1) * 100
  else
    cdsNotaFiscalMargem.AsCurrency := 0;

  //margem prevista
  if (CdsNotaFiscalVENDA_ESPERADA.AsCurrency > 0) and (CdsNotaFiscalCUSTO.AsCurrency > 0) then
    cdsNotaFiscalMargemPrevista.AsCurrency := ((CdsNotaFiscalVENDA_ESPERADA.AsCurrency / CdsNotaFiscalCUSTO.AsCurrency)- 1) * 100
  else
    cdsNotaFiscalMargemPrevista.AsCurrency := 0;


  if (CdsNotaFiscalVENDA_ESPERADA.AsCurrency > 0) and (CdsNotaFiscalNF_TOT_NOTA.AsCurrency > 0) then
    CdsNotaFiscalRV.AsCurrency := (CdsNotaFiscalNF_TOT_NOTA.AsCurrency * 100) / CdsNotaFiscalVENDA_ESPERADA.AsCurrency
  else
    CdsNotaFiscalRV.AsCurrency := 0;
end;

procedure TFrmConsultaMarkup.CdsPedidoAfterOpen(DataSet: TDataSet);
begin
     inherited;
     edit4.Clear;
     edit5.Clear;
     edMargemObtida.Clear;
     edit6.Clear;
     edit7.Clear;
     if CdsPedido.Active then
     begin
         if CdsPedido.RecordCount = 0 then
           Exit;
         if not CdsPedidoTOT_CUSTO.isnull  then
            if CdsPedidoTOT_CUSTO.value>0 then
            begin
                 if not CdsPedidoTOT_NFTOTPROD.IsNull then
                    edit5.Text := FormatFloat( '##0.00', ((CdsPedidoTOT_NFTOTPROD.value / CdsPedidoTOT_CUSTO.value)-1) * 100 )+' %';
                 if not CdsPedidoTOT_VENDAESPERADA.isnull  then
                    edit6.Text := FormatFloat( '##0.00', ((CdsPedidoTOT_VENDAESPERADA.value / CdsPedidoTOT_CUSTO.value)-1) * 100 )+' %';
            end;

         if (not CdsPedidoTOT_VENDAESPERADA.isnull) and ( not CdsPedidoTOT_NFTOTPROD.isnull ) then
            edit7.Text := FormatFloat( '##0.00', (CdsPedidoTOT_NFTOTPROD.value*100) / CdsPedidoTOT_VENDAESPERADA.value )+' %';

         Edit4.Text := CdsPedido.RecordCount.ToString ;
         edMargemObtida.Text := '% ' + FormatFloat( '##0.00',  (StrToFloat( StringReplace(DBEdit8.Text, '.', '',[rfReplaceAll] ) ) / StrToFloat(StringReplace(DBEdit5.Text, '.', '', [rfReplaceAll])) ) * 100 ) ;
     end;

end;

function TFrmConsultaMarkup.RetornaEmpresas(CONST sCampo: String;lista: TJvCheckListBox): String;
var
   retorno: string;
   empresas: TStringList;
   i: Integer;
begin
     retorno := '';
     empresas := lista.GetChecked;
     i := 0;
     if (empresas.Count > 0) then
        retorno := sCampo + ' IN (';
     while (i <= empresas.Count - 1) do
     begin
          if (i > 0) then
             retorno := retorno + ',';
          retorno := retorno + '''' + COPY(empresas[i], 1, 3) + '''';
          Inc(i);
     end;
     if (empresas.Count > 0) then
        retorno := retorno + ')';
     Result := retorno;
end;

procedure TFrmConsultaMarkup.SpeedButton1Click(Sender: tObject);
begin
  inherited;
  ExportarExcel(dbgrdNotaFiscal, sender);
end;

procedure TFrmConsultaMarkup.SpeedButton2Click(Sender: tObject);
begin
  inherited;
  coCalcula.Execute;
end;

procedure TFrmConsultaMarkup.CdsPedidoCalcFields(DataSet: TDataSet);
begin

      if (CdsPedidoVLLIQUIDO.AsCurrency > 0) and (CdsPedidoCUSTO.AsCurrency > 0)  then
         CdsPedidoMARKUP.AsCurrency := ((CdsPedidoVLLIQUIDO.AsCurrency / CdsPedidoCUSTO.AsCurrency) - 1) * 100
      else
          CdsPedidoMARKUP.AsCurrency := 0;

      if (CdsPedidoVENDA_ESPERADA.AsCurrency > 0) and (CdsPedidoCUSTO.AsCurrency > 0)  then
         CdsPedidoMARKUP_PREVISTO.AsCurrency := ((CdsPedidoVENDA_ESPERADA.AsCurrency / CdsPedidoCUSTO.AsCurrency) - 1) * 100
      else
         CdsPedidoMARKUP_PREVISTO.AsCurrency := 0;

      if (CdsPedidoVENDA_ESPERADA.AsCurrency > 0) and (CdsPedidoVLLIQUIDO.AsCurrency > 0) then
        CdsPedidoRV.AsCurrency := (CdsPedidoVLLIQUIDO.AsCurrency * 100) / CdsPedidoVENDA_ESPERADA.AsCurrency
      else
        CdsPedidoRV.AsCurrency := 0;

      if (CdsPedidoLUCRO.AsCurrency > 0) and (CdsPedidoVLLIQUIDO.AsCurrency > 0) then
        cdsPedidoMARGEM_OBTIDA.AsCurrency := (CdsPedidoLUCRO.AsCurrency  / CdsPedidoVLLIQUIDO.AsCurrency) * 100
      else
        cdsPedidoMARGEM_OBTIDA.AsCurrency := 0;


end;

procedure TFrmConsultaMarkup.tsGraficoPedidoShow(Sender: tObject);
begin
  if CdsGraficoPedido.Active then
   CdsGraficoPedido.EmptyDataSet
  else
    CdsGraficoPedido.CreateDataSet;
  CdsGraficoPedido.IndexFieldNames := '';
  chtGrafico.Series[0].Clear;
  if (not CdsPedido.IsEmpty) then
  begin
    CdsPedido.DisableControls;
    CdsPedido.First;
    while (not CdsPedido.Eof) do
    begin
      if CdsPedidoREP_CODIGO.IsNull then
      begin
         if (CdsGraficoPedido.Locate('VendCodigo', 0, [])) then
         begin
            CdsGraficoPedido.Edit;
            CdsGraficoPedidoCusto.AsCurrency := CdsGraficoPedidoCusto.AsCurrency +
              CdsPedidoCUSTO.AsCurrency;
            CdsGraficoPedidovenda.AsCurrency := CdsGraficoPedidovenda.AsCurrency +
              CdsPedidoVLLIQUIDO.AsCurrency;
            if (CdsGraficoPedidovenda.AsCurrency <> 0) and
              (CdsGraficoPedidoCusto.AsCurrency <> 0) then
              CdsGraficoPedidoMarkup.AsCurrency :=
                ((CdsGraficoPedidovenda.AsCurrency /
                CdsGraficoPedidoCusto.AsCurrency) - 1) * 100
            else
              CdsGraficoPedidoMarkup.AsCurrency := 0;
         end
         else
         begin
          CdsGraficoPedido.Insert;
          CdsGraficoPedidoVendedor.AsString := 'SEM VENDEDOR';
          CdsGraficoPedidoCusto.AsCurrency := CdsPedidoCUSTO.AsCurrency;
          CdsGraficoPedidovenda.AsCurrency := CdsPedidoVLLIQUIDO.AsCurrency;
          CdsGraficoPedidoVendCodigo.AsInteger := 0;
          if (CdsGraficoPedidovenda.AsCurrency <> 0) and
            (CdsGraficoPedidoCusto.AsCurrency <> 0) then
            CdsGraficoPedidoMarkup.AsCurrency :=
              ((CdsGraficoPedidovenda.AsCurrency /
              CdsGraficoPedidoCusto.AsCurrency) - 1) * 100
          else
            CdsGraficoPedidoMarkup.AsCurrency := 0;
         end;
        CdsGraficoPedido.Post;
      end
      else
      if (CdsGraficoPedido.Locate('VendCodigo',
        CdsPedidoREP_CODIGO.AsInteger, [])) then
      begin
        CdsGraficoPedido.Edit;
        CdsGraficoPedidoCusto.AsCurrency := CdsGraficoPedidoCusto.AsCurrency +
          CdsPedidoCUSTO.AsCurrency;
        CdsGraficoPedidovenda.AsCurrency := CdsGraficoPedidovenda.AsCurrency +
          CdsPedidoVLLIQUIDO.AsCurrency;
        if (CdsGraficoPedidovenda.AsCurrency <> 0) and
          (CdsGraficoPedidoCusto.AsCurrency <> 0) then
          CdsGraficoPedidoMarkup.AsCurrency :=
            ((CdsGraficoPedidovenda.AsCurrency /
            CdsGraficoPedidoCusto.AsCurrency) - 1) * 100
        else
          CdsGraficoPedidoMarkup.AsCurrency := 0;
        CdsGraficoPedido.Post;
      end
      else
      begin
        CdsGraficoPedido.Insert;
        CdsGraficoPedidoVendedor.AsString := CdsPedidoREP_NOME.AsString;
        CdsGraficoPedidoCusto.AsCurrency := CdsPedidoCUSTO.AsCurrency;
        CdsGraficoPedidovenda.AsCurrency := CdsPedidoVLLIQUIDO.AsCurrency;
        CdsGraficoPedidoVendCodigo.AsInteger := CdsPedidoREP_CODIGO.AsInteger;
        if (CdsGraficoPedidovenda.AsCurrency <> 0) and
          (CdsGraficoPedidoCusto.AsCurrency <> 0) then
          CdsGraficoPedidoMarkup.AsCurrency :=
            ((CdsGraficoPedidovenda.AsCurrency /
            CdsGraficoPedidoCusto.AsCurrency) - 1) * 100
        else
          CdsGraficoPedidoMarkup.AsCurrency := 0;
        CdsGraficoPedido.Post;
      end;
      CdsPedido.Next;
    end;
    CdsGraficoPedido.IndexFieldNames := 'venda';

    CdsGraficoPedido.First;
    chtGrafico.Series[0].Clear;
    while (not CdsGraficoPedido.Eof) do
    begin
      chtGrafico.Series[0].Add(CdsGraficoPedidovenda.AsCurrency,
        CdsGraficoPedidoVendedor.AsString + ' : ' + FormatFloat('###,##0.00 %',
        CdsGraficoPedidoMarkup.AsCurrency));
      CdsGraficoPedido.Next;
    end;

    CdsPedido.First;
    CdsPedido.EnableControls;
  end;
end;

procedure TFrmConsultaMarkup.edtCodigoClienteNotaFiscalExit(Sender: tObject);
begin
  if (ActiveControl <> Nil) and   (ActiveControl.Name <> 'edtCodigoClienteNotaFiscal') and     (ActiveControl.Name <> 'btnSairNotaFiscal') then
  begin
       if (Trim(edtCodigoClienteNotaFiscal.Text) <> '') then
       begin
            cbbClienteNotaFiscal.IdRetorno := StrZero(edtCodigoClienteNotaFiscal.Text,edtCodigoClienteNotaFiscal.MaxLength);
            if (cbbClienteNotaFiscal.IdRetorno = '') then
            begin
                 uteis.aviso('Cliente não encontrado !');
                 edtCodigoClienteNotaFiscal.SetFocus;

            end;
       end;
  end;
end;

procedure TFrmConsultaMarkup.BitBtn2Click(Sender: tObject);
var  sCondicao, sEmpresaList: string;
begin
  if (RxDataFinalNotaFiscal.Date < RxDataInicialNotaFiscal.Date) then
  begin
    uteis.aviso('A data inicial não pode ser menor que a data final');
    RxDataInicialNotaFiscal.SetFocus;

  end
  else
  begin
       sCondicao := 't1.nf_cancelada  = ' + qStr('N') + ' AND  t1.nf_status_nfe <> ' + qStr('R');
       sEmpresaList := RetornaEmpresas('T1.EMP_CODIGO', lstEmpresaNotaFiscal);
       if (sEmpresaList <> '') then
          sCondicao := sCondicao + ' and ' + sEmpresaList;
       if (edtPedidoNota.Text <> '') and (edtPedidoNota.Text <> '000000') then
          sCondicao := sCondicao + ' and T1.PED_CODIGO = ' +QuotedStr(edtPedidoNota.Text)
       else
       begin
            sCondicao := sCondicao + ' AND T1.nf_emissao between ' +dATEtOsQL(RxDataInicialNotaFiscal.date) + ' AND ' + DateToSql(RxDataFinalNotaFiscal.Date);
            if (cbbVendedorNotaFiscal.IdRetorno <> '') then
               sCondicao := sCondicao + ' AND t1.REP_CODIGO = ' +QuotedStr(cbbVendedorNotaFiscal.IdRetorno);
            if (cbbClienteNotaFiscal.IdRetorno <> '') then
               sCondicao := sCondicao + ' AND t1.CLI_CODIGO = ' +QuotedStr(cbbClienteNotaFiscal.IdRetorno);
            if (edCCusto.IdRetorno <> '') then
               sCondicao := sCondicao + ' AND t4.PCX_CODIGO = ' +QuotedStr(edCCusto.IdRetorno);
            if (CbbTipoNota.IdRetorno <> '') then
               sCondicao := sCondicao + ' AND T4.OPV_CODIGO = ' +QuotedStr(CbbTipoNota.IdRetorno);
       end;
       CdsNotaFiscal.Close;
       qNotaFiscal.Sql.Clear;
       qNotaFiscal.Sql.add('SELECT EMP_CODIGO,');
       qNotaFiscal.Sql.add('       nf_num_nfe,');
       qNotaFiscal.Sql.add('       nf_emissao,');
       qNotaFiscal.Sql.add('       ped_codigo,');
       qNotaFiscal.Sql.add('       cli_codigo,');
       qNotaFiscal.Sql.add('       cli_razao,');
       qNotaFiscal.Sql.add('       rep_codigo,');
       qNotaFiscal.Sql.add('       rep_nome,');
       qNotaFiscal.Sql.add('       nf_tot_prod,');
       qNotaFiscal.Sql.add('       NF_TOT_NOTA,');
       qNotaFiscal.Sql.add('       CAST( CUSTO AS NUMERIC(18,2)) AS CUSTO,');
       qNotaFiscal.Sql.add('       CAST( nf_tot_nota - CUSTO AS NUMERIC(18,2) ) AS LUCRO,');
       qNotaFiscal.Sql.add('       cast ( LUCRO_ESPERADO + custo as Numeric(18,2) ) as  VENDA_ESPERADA,');
       qNotaFiscal.Sql.add('       CAST( LUCRO_ESPERADO AS NUMERIC(18,2) ) AS LUCRO_ESPERADO');
       qNotaFiscal.Sql.add('FROM ( SELECT T1.EMP_CODIGO,');
       qNotaFiscal.Sql.add('              T1.nf_num_nfe,');
       qNotaFiscal.Sql.add('              T1.nf_emissao,');
       qNotaFiscal.Sql.add('              T1.ped_codigo,');
       qNotaFiscal.Sql.add('              T1.cli_codigo,');
       qNotaFiscal.Sql.add('              T2.cli_razao,');
       qNotaFiscal.Sql.add('              T1.rep_codigo,');
       qNotaFiscal.Sql.add('              T3.rep_nome,');
       qNotaFiscal.Sql.add('              T1.nf_tot_prod ,');
       qNotaFiscal.Sql.add('              T1.NF_TOT_NOTA ,');
       qNotaFiscal.Sql.add('              ( select sum(t4.nf_qtde * t4.nf_custo) from nf_it01 t4 where t4.nf_it_notanumer = t1.nf_notanumber  AND T4.emp_codigo = T1.emp_codigo) as custo,');
       qNotaFiscal.Sql.add('              (SELECT coalesce( SUM( T4.NF_qtde * cast(T4.NF_custo as Numeric(18,2)) * cast(T4.NF_margem_produto/100 as Numeric(18,2)) ),0) FROM NF_it01 T4 WHERE t4.nf_it_notanumer = t1.nf_notanumber AND T4.emp_codigo = T1.emp_codigo) AS LUCRO_ESPERADO');
       qNotaFiscal.Sql.add('       FROM nf0001 T1');
       qNotaFiscal.Sql.add('       join cli0000 T2 ON (T2.cli_codigo = T1.cli_codigo)');
       qNotaFiscal.Sql.add('       join rep0000 T3 ON (T3.rep_codigo = T1.rep_codigo)');
       qNotaFiscal.Sql.add('       join ped0000 T4 ON (T4.ped_codigo = T1.ped_codigo  and t1.emp_codigo = t4.emp_codigo)');
       qNotaFiscal.Sql.add('       LEFT JOIN PCX0000 pcx ON		(pcx.PCX_CODIGO = t4.PCX_CODIGO			AND pcx.EMP_CODIGO = t4.EMP_CODIGO)');
       qNotaFiscal.Sql.add('       join OPV0000 OP ON (t4.OPV_CODIGO = OP.OPV_CODIGO AND OP.OPV_VENDA='+qStr('S') +')')   ;
       qNotaFiscal.Sql.add('       WHERE '+sCondicao+' )');
       qNotaFiscal.Sql.add('order by nf_emissao desc, nf_num_nfe, EMP_CODIGO DESC');
       if DBInicio.IsDesenvolvimento then
          CopyToClipBoard(qNotaFiscal.Sql.Text);

       CdsNotaFiscal.Open;
       tsResultadoNotaFiscal.Show;
       if (CdsNotaFiscal.IsEmpty) then
       begin
            uteis.aviso('Nenhuma Nota Fiscal encontrada');
            RxDataInicialNotaFiscal.SetFocus;
       end
       else
           dbgrdNotaFiscal.SetFocus;
  end;
end;

procedure TFrmConsultaMarkup.tsGraficoNotaFiscalShow(Sender: tObject);
begin
   if CdsGraficoNotaFiscal.Active then
      CdsGraficoNotaFiscal.EmptyDataSet
   else
     CdsGraficoNotaFiscal.CreateDataSet;
     CdsGraficoNotaFiscal.IndexFieldNames := '';
     chtGraficoNotaFiscal.Series[0].Clear;
     if (not CdsNotaFiscal.IsEmpty) then
     begin
        CdsNotaFiscal.DisableControls;
        CdsNotaFiscal.First;
        while (not CdsNotaFiscal.Eof) do
        begin
          if (CdsGraficoNotaFiscal.Locate('VendCodigo', CdsNotaFiscalREP_CODIGO.AsInteger, [])) then
          begin
            CdsGraficoNotaFiscal.Edit;
            CdsGraficoNotaFiscalCusto.AsCurrency := CdsGraficoNotaFiscalCusto.AsCurrency + CdsNotaFiscalCUSTO.AsCurrency;
            // CdsGraficoNotaFiscalVenda.AsCurrency := CdsGraficoNotaFiscalVenda.AsCurrency + CdsNotaFiscalNF_TOT_PROD.AsCurrency;
            CdsGraficoNotaFiscalVenda.AsCurrency := CdsGraficoNotaFiscalVenda.AsCurrency + CdsNotaFiscalNF_TOT_NOTA.AsCurrency;
            if (CdsGraficoNotaFiscalVenda.AsCurrency <> 0) and (CdsGraficoNotaFiscalCusto.AsCurrency <> 0) then
              CdsGraficoNotaFiscalMarkup.AsCurrency := ((CdsGraficoNotaFiscalVenda.AsCurrency / CdsGraficoNotaFiscalCusto.AsCurrency) - 1) * 100
            else
              CdsGraficoNotaFiscalMarkup.AsCurrency := 0;
            CdsGraficoNotaFiscal.Post;
          end
          else
          begin
            CdsGraficoNotaFiscal.Insert;
            CdsGraficoNotaFiscalVendedor.AsString := CdsNotaFiscalREP_NOME.AsString;
            CdsGraficoNotaFiscalCusto.AsCurrency := CdsNotaFiscalCUSTO.AsCurrency;
            //CdsGraficoNotaFiscalVenda.AsCurrency := CdsNotaFiscalNF_TOT_PROD.AsCurrency;
            CdsGraficoNotaFiscalVenda.AsCurrency := CdsNotaFiscalNF_TOT_NOTA.AsCurrency;
            CdsGraficoNotaFiscalVendCodigo.AsInteger := CdsNotaFiscalREP_CODIGO.AsInteger;
            if (CdsGraficoNotaFiscalVenda.AsCurrency <> 0) and
              (CdsGraficoNotaFiscalCusto.AsCurrency <> 0) then
              CdsGraficoNotaFiscalMarkup.AsCurrency := ((CdsGraficoNotaFiscalVenda.AsCurrency / CdsGraficoNotaFiscalCusto.AsCurrency) - 1) * 100
            else
              CdsGraficoNotaFiscalMarkup.AsCurrency := 0;
            CdsGraficoNotaFiscal.Post;
          end;
          CdsNotaFiscal.Next;
        end;

        CdsGraficoNotaFiscal.IndexFieldNames := 'Venda';
        CdsGraficoNotaFiscal.First;
        chtGraficoNotaFiscal.Series[0].Clear;
        while (not CdsGraficoNotaFiscal.Eof) do
        begin
             chtGraficoNotaFiscal.Series[0].Add(CdsGraficoNotaFiscalVenda.AsCurrency, CdsGraficoNotaFiscalVendedor.AsString + ' : ' + chr(13) +  FormatFloat('###,##0.00 %', CdsGraficoNotaFiscalMarkup.AsCurrency));
             CdsGraficoNotaFiscal.Next;
        end;
        CdsNotaFiscal.First;
        CdsNotaFiscal.EnableControls;
     end;

end;

procedure TFrmConsultaMarkup.btCalcClick(Sender: tObject);
begin
  inherited;
  coCalcula.Execute;
end;

procedure TFrmConsultaMarkup.btnExcelClick(Sender: tObject);
begin
  inherited;
  ExportarExcel( dbgrdPedido, sender );
end;

procedure TFrmConsultaMarkup.btnImprimirClick(Sender: tObject);
begin
  chtGrafico.PrintProportional := True;
  with TPrintDialog.Create(nil) do
    try
      if Execute then
        chtGrafico.Print;
    finally
      Free;
    end;
end;

procedure TFrmConsultaMarkup.btnPesquisarPedidoClick(Sender: tObject);
var
  sCondicao: string;
  sEmpresaList: string;
begin
     inherited;
  if (RxDataFinalPedido.Date < RxDataInicialPedido.Date) then
  begin
    uteis.aviso('A data inicial não pode ser menor que a data final');
    RxDataInicialPedido.SetFocus;

  end
  else
  begin
       sCondicao := '';
       sEmpresaList := RetornaEmpresas('T1.EMP_CODIGO', lstEmpresaPedido);
       if (sEmpresaList <> '') then
          sCondicao := sEmpresaList;
       if ( Edt_Lista.Text <> '' ) and ( Edt_Lista.Text <> '000000' ) then
          sCondicao := ConcatSE(sCondicao, ' AND ')+' T1.PED_CODIGO = ' +QuotedStr(Edt_Lista.Text)
       else
       begin
         sCondicao := ConcatSE(sCondicao, ' AND ')+' T1.ped_dtentrada between ' +DateToSql(RxDataInicialPedido.Date)+ ' AND ' +DateToSql(RxDataFinalPedido.date);
         if (cbbTipoPedido.IdRetorno <> '') then
           sCondicao := ConcatSE(sCondicao, ' AND ')+' t1.OPV_CODIGO = ' +QuotedStr(cbbTipoPedido.IdRetorno);
         if (cbbVendedorPedido.IdRetorno <> '') then
           sCondicao := ConcatSE(sCondicao, ' AND ')+' t1.REP_CODIGO = ' +QuotedStr(cbbVendedorPedido.IdRetorno);
         if (cbbClientePedido.IdRetorno <> '') then
           sCondicao := ConcatSE(sCondicao, ' AND ')+' t1.CLI_CODIGO = ' +QuotedStr(cbbClientePedido.IdRetorno);
         if (cbSituacao.ItemIndex = 1) then
           scondicao := ConcatSE(sCondicao, ' AND ') + ' t1.ped_situacao = '+QuotedStr('T')
         else if (cbSituacao.ItemIndex = 2) then
           scondicao := ConcatSE(sCondicao, ' AND ') + ' t1.ped_situacao in ( '+QuotedStr('F')+','+QuotedStr('P')+')'
         else if (cbSituacao.ItemIndex = 3) then
            scondicao := ConcatSE(sCondicao, ' AND ') + 't1.PED_SITUACAO = '+QuotedStr('A')  //AGRUPADOS
         else if (cbSituacao.ItemIndex = 4) then
            scondicao := ConcatSE(sCondicao, ' AND ') + ' t1.ped_situacao = '+QuotedStr('C')
          else if (cbSituacao.ItemIndex = 5) then  //FATURADO PARCIAL
            scondicao := ConcatSE(sCondicao, ' AND ') + ' t1.ped_situacao = '+QuotedStr('P')
       end;
    CdsPedido.Close;
    qPedido.SQL.Clear;
    qPedido.sql.Add('select PED_CODIGO,');
    qPedido.sql.Add('       EMP_CODIGO,');
    qPedido.sql.Add('       ped_dtentrada,');
    qPedido.sql.Add('       cli_codigo,');
    qPedido.sql.Add('       cli_razao,');
    qPedido.sql.Add('       cli_uf,');
    qPedido.sql.Add('       rep_codigo,');
    qPedido.sql.Add('       rep_nome,');
    qPedido.sql.Add('       cast ( VlLiquido as Numeric(18,2) ) as VlLiquido,');
    qPedido.sql.Add('       cast ( CUSTO as Numeric(18,2) ) as Custo,');
    qPedido.sql.Add('       cast ( vlLiquido - Custo as Numeric(18,2) ) as  lucro,');
    qPedido.sql.Add('       cast ( LUCRO_ESPERADO + custo as Numeric(18,2) ) as  VENDA_ESPERADA,');
    qPedido.sql.Add('       cast ( LUCRO_ESPERADO as Numeric(18,2) ) as LUCRO_ESPERADO');
    qPedido.sql.Add('From ( SELECT T1.ped_codigo,');
    qPedido.sql.Add('              T1.EMP_CODIGO,');
    qPedido.sql.Add('              T1.ped_dtentrada,');
    qPedido.sql.Add('              T1.cli_codigo,');
    qPedido.sql.Add('              T2.cli_razao,');
    qPedido.sql.Add('              T2.cli_uf,');
    qPedido.sql.Add('              T1.rep_codigo,');
    qPedido.sql.Add('              T3.rep_nome,');
    qPedido.sql.Add('              ((T1.PED_VLFRETE + T1.PED_VLSEGURO + T1.PED_VALOR_CIF + T1.PED_DESP_ACES + ( SELECT coalesce( SUM( T4.prf_qtde * T4.prf_preco ),0)  FROM ped_it01 T4 WHERE T4.ped_codigo = T1.ped_codigo ');
    qPedido.sql.Add('                AND T4.PRF_PRODUTO_AGREGADO <> ''S'')) - T1.PED_DESCTOPC1) AS VlLiquido,');
    qPedido.sql.Add('              ( SELECT coalesce( SUM( T4.prf_qtde * T4.prf_custo ),0) FROM ped_it01 T4 WHERE T4.ped_codigo = T1.ped_codigo AND T4.PRF_PRODUTO_AGREGADO<>'+qStr('S')+') AS CUSTO,');
    qPedido.sql.Add('              ( SELECT coalesce( SUM( T4.prf_qtde * cast(( T4.prf_custo * T4.prf_margem_produto / 100 ) as Numeric(18,2)) ),0) FROM ped_it01 T4 WHERE T4.ped_codigo = T1.ped_codigo AND T4.PRF_PRODUTO_AGREGADO<>'+qStr('S')+') AS LUCRO_ESPERADO');
    qPedido.sql.Add('FROM  ped0000 T1');
    qPedido.sql.Add('            JOIN cli0000 T2 ON (T2.cli_codigo = T1.cli_codigo)');
    qPedido.sql.Add('            LEFT JOIN rep0000 T3 ON (T3.rep_codigo = T1.rep_codigo)');
    qPedido.sql.Add('WHERE'+sCondicao+')');
    qPedido.sql.Add('order by ped_dtentrada desc, ped_codigo desc, EMP_CODIGO DESC');
    if DBInicio.IsDesenvolvimento then
      CopyToClipBoard(qPedido.SQL.Text);
    CdsPedido.Open;

    tsResultadoPedido.Show;
    if (CdsPedido.IsEmpty) then
    begin
      uteis.aviso('Nenhum pedido encontrado');
      RxDataInicialPedido.SetFocus;
    end
    else
      dbgrdPedido.SetFocus;
  end;

end;

procedure TFrmConsultaMarkup.Button1Click(Sender: tObject);
begin
  chtGraficoNotaFiscal.PrintProportional := True;
  with TPrintDialog.Create(nil) do
    try
      if Execute then
        chtGraficoNotaFiscal.Print;
    finally
      Free;
    end;
end;

procedure TFrmConsultaMarkup.Edt_ListaExit(Sender: tObject);
begin
     Edt_Lista.Text := StrZero(ExtrairNumeros(Edt_Lista.Text), 6);
end;

procedure TFrmConsultaMarkup.ChamaPedidoDetalhe;
begin
  if (CdsPedido.IsEmpty) then
  begin
    uteis.aviso('Nenhum pedido Selecionado');
  end
  else
  begin
   FrmConsultaMarkupPedido := TFrmConsultaMarkupPedido.Create(Application);
    try
      FrmConsultaMarkupPedido.edtEmpresa.Text := CdsPedidoEMP_CODIGO.AsString;
      FrmConsultaMarkupPedido.EdPedidoNumero.Text :=     CdsPedidoPED_CODIGO.AsString;
      FrmConsultaMarkupPedido.CurMarkup.Value := CdsPedidoMARKUP.AsCurrency;
      FrmConsultaMarkupPedido.CurResultadoVenda.Value := cdsPedidoMARGEM_OBTIDA.AsCurrency;
      FrmConsultaMarkupPedido.ShowModal;
    finally
      FrmConsultaMarkupPedido.Destroy;
      FrmConsultaMarkupPedido := Nil;
    end;
  end;
end;

procedure TFrmConsultaMarkup.dbgrdPedidoDblClick(Sender: tObject);
begin
     ChamaPedidoDetalhe;
end;

procedure TFrmConsultaMarkup.ChamaPedidoDetalheNota;
begin
  if (CdsNotaFiscal.IsEmpty) then
    uteis.aviso('Nenhuma Nota Fiscal Selecionada')
  else
  begin
    FrmConsultaMarkupPedido := TFrmConsultaMarkupPedido.Create(Application);
    try
       if PageControl1.ActivePageIndex=0 then
       begin
            FrmConsultaMarkupPedido.CurMarkup.Value := cdsNotaFiscalMargem.AsCurrency; // percentual obtido
            FrmConsultaMarkupPedido.CurResultadoVenda.Value := CdsNotaFiscalMarkup.AsCurrency;
            FrmConsultaMarkupPedido.edtEmpresa.Text :=CdsNotaFiscalEMP_CODIGO.AsString;
            FrmConsultaMarkupPedido.EdPedidoNumero.Text :=CdsNotaFiscalPED_CODIGO.AsString;
       end
       Else
       begin
            FrmConsultaMarkupPedido.CurMarkup.Value := CdsPedidoMarkup.AsCurrency;
            FrmConsultaMarkupPedido.CurResultadoVenda.Value := CdsPedidoLucro.AsCurrency;
            FrmConsultaMarkupPedido.edtEmpresa.Text :=CdsPedidoEMP_CODIGO.AsString;
            FrmConsultaMarkupPedido.EdPedidoNumero.Text :=CdsPedidoPED_CODIGO.AsString;
       end;
       FrmConsultaMarkupPedido.ShowModal;
    finally
      FreeAndNil(FrmConsultaMarkupPedido);
    end;
  end;
end;

procedure TFrmConsultaMarkup.dbgrdNotaFiscalDblClick(Sender: tObject);
begin
     ChamaPedidoDetalheNota;
end;

procedure TFrmConsultaMarkup.edtPedidoNotaExit(Sender: tObject);
begin
  edtPedidoNota.Text := StrZero(ExtrairNumeros(edtPedidoNota.Text), 6);
end;

end.
