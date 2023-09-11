unit sis00082;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, RXCtrls, Buttons, Grids, DBGrids,  rxCurrEdit,
  Mask,  rxToolEdit, Provider, SqlExpr,SqlClientDataSet, DB, DBClient, DBLocal, DBLocalS,Inifiles,
  RDprint, RwFunc;

type
  TFrmEmissaoDuplicata = class(TForm)
    RxLabTitulo: TRxLabel;
    GroupBox1: TGroupBox;
    Notebook: TNotebook;
    GroupBox2: TGroupBox;
    Label7: TLabel;
    CbBancos: TComboBox;
    BoxDuplicata: TGroupBox;
    DBGridDuplicata: TDBGrid;
    GbTipo: TGroupBox;
    RadBoletoBanco: TRadioButton;
    RadRecibo: TRadioButton;
    RadDuplicataDesc: TRadioButton;
    RadBoletoBarras: TRadioButton;
    GroupBox3: TGroupBox;
    RadVideo: TRadioButton;
    RadImpressora: TRadioButton;
    BitImprimir: TBitBtn;
    BitPesquisa: TBitBtn;
    BitCancelar: TBitBtn;
    Bevel1: TBevel;
    BitSair: TBitBtn;
    SQLCdsBancos: TSQLClientDataSet;
    DSCrCduplicata: TDataSource;
    SQLCrCduplicata: TSQLClientDataSet;
    SQLCrCduplicataCRC_REGISTRO: TIntegerField;
    SQLCrCduplicataCRC_COD_CLIENTE: TIntegerField;
    SQLCrCduplicataCRC_COD_VEND1: TIntegerField;
    SQLCrCduplicataCRC_COD_VEND2: TIntegerField;
    SQLCrCduplicataCRC_DUPLICATA: TStringField;
    SQLCrCduplicataCRC_COD_COBRANCA: TStringField;
    SQLCrCduplicataCRC_NUM_AVISO_BANCO: TStringField;
    SQLCrCduplicataCRC_EMISSAO: TDateField;
    SQLCrCduplicataCRC_VENCIMENTO: TDateField;
    SQLCrCduplicataCRC_VALOR_DUPLICATA: TFMTBCdField;
    SQLCrCduplicataCRC_VALOR_PAGO: TFMTBCdField;
    SQLCrCduplicataCRC_VALOR_ADIANTADO: TFMTBCdField;
    SQLCrCduplicataCRC_VALOR_PENDENTE: TFMTBCdField;
    SQLCrCduplicataCRC_INDICE_MOEDA: TFMTBCdField;
    SQLCrCduplicataCRC_NUM_PEDIDO: TIntegerField;
    SQLCrCduplicataCRC_NOTA_FISCAL: TIntegerField;
    SQLCrCduplicataCRC_VALOR_FATURA: TFMTBCdField;
    SQLCrCduplicataCRC_COD_BANCO: TIntegerField;
    SQLCrCduplicataCRC_DATA_AVISO1: TDateField;
    SQLCrCduplicataCRC_DATA_AVISO2: TDateField;
    SQLCrCduplicataCRC_DATA_DEB_REPRES: TDateField;
    SQLCrCduplicataCRC_DATA_PGTO: TDateField;
    SQLCrCduplicataCRC_JUROS: TFMTBCdField;
    SQLCrCduplicataCRC_DESCONTO: TFMTBCdField;
    SQLCrCduplicataCRC_VALOR_LIQUIDO: TFMTBCdField;
    SQLCrCduplicataCRC_TIPO_PAGAMENTO: TStringField;
    SQLCrCduplicataCRC_SITUACAO: TStringField;
    SQLCrCduplicataCRC_STATUS: TStringField;
    SQLCrCduplicataCRC_STATUS_EMISSAO: TStringField;
    SQLCrCduplicataCRC_STATUS_REMESSA: TStringField;
    SQLCrCduplicataCRC_DATA_REMESSA: TDateField;
    SQLCrCduplicataCRC_TIPO_BAIXA: TStringField;
    SQLCrCduplicataCRC_DATA_BAIXA: TDateField;
    SQLCrCduplicataCRC_OBS: TStringField;
    SQLCrCduplicataCRC_TARIFA: TFMTBCdField;
    SQLCrCduplicataCL_RAZAO: TStringField;
    SQLCrCduplicataCL_ENDERECO_COB: TStringField;
    SQLCrCduplicataCL_CNPJ_CNPF: TStringField;
    SQLCrCduplicataCL_CEP_COB: TStringField;
    SQLCrCduplicataCL_CIDADE_COB: TStringField;
    SQLCrCduplicataCL_UF_COB: TStringField;
    SQLCrCduplicataBCO_DESCRICAO: TStringField;
    RDBoletoBancario: tRdPrintOld;
    Panel5: TPanel;
    LblMensagem: TLabel;
    ImgLog: TImage;
    RxLabel1: TRxLabel;
    Group00: TGroupBox;
    RadData: TRadioButton;
    RadDuplicata: TRadioButton;
    Panemissao: TPanel;
    Label2: TLabel;
    DataInicial: TDateEdit;
    Label22: TLabel;
    DataFinal: TDateEdit;
    PanDuplicata: TPanel;
    Label13: TLabel;
    EdtDuplicata: TEdit;
    Label14: TLabel;
    EditParcela: TEdit;
    EdtBanco: TEdit;
    SqlCdsConfImpr: TSQLClientDataSet;
    SqlCdsConfImprBOL_CODBOL: TStringField;
    SqlCdsConfImprBOL_ATIVO: TStringField;
    SqlCdsConfImprBOL_CODBAN: TStringField;
    SqlCdsConfImprBOL_NRLINHA: TStringField;
    SqlCdsConfImprBOL_LOCAL: TStringField;
    SqlCdsConfImprBOL_VENCTO: TStringField;
    SqlCdsConfImprBOL_DTEMIS: TStringField;
    SqlCdsConfImprBOL_CODFAT: TStringField;
    SqlCdsConfImprBOL_ESPDOC: TStringField;
    SqlCdsConfImprBOL_DESESPDOC: TStringField;
    SqlCdsConfImprBOL_ACEITE: TStringField;
    SqlCdsConfImprBOL_DESACEITE: TStringField;
    SqlCdsConfImprBOL_DTPROCE: TStringField;
    SqlCdsConfImprBOL_USOBCO: TStringField;
    SqlCdsConfImprBOL_CARTEIRA: TStringField;
    SqlCdsConfImprBOL_DESCARTEIRA: TStringField;
    SqlCdsConfImprBOL_VLPARC: TStringField;
    SqlCdsConfImprBOL_ESPECIE: TStringField;
    SqlCdsConfImprBOL_DESPECIE: TStringField;
    SqlCdsConfImprBOL_QUANTIDADE: TStringField;
    SqlCdsConfImprBOL_VALOR: TStringField;
    SqlCdsConfImprBOL_VLDOC: TStringField;
    SqlCdsConfImprBOL_JUROMES: TStringField;
    SqlCdsConfImprBOL_DESCABAT: TStringField;
    SqlCdsConfImprBOL_OBSBOL1: TStringField;
    SqlCdsConfImprBOL_OUTDEDU: TStringField;
    SqlCdsConfImprBOL_OBSBOL2: TStringField;
    SqlCdsConfImprBOL_MORAMULTA: TStringField;
    SqlCdsConfImprBOL_OBSBOL3: TStringField;
    SqlCdsConfImprBOL_OUTACRES: TStringField;
    SqlCdsConfImprBOL_OBSBOL4: TStringField;
    SqlCdsConfImprBOL_VLCOBRADO: TStringField;
    SqlCdsConfImprBOL_RAZAO: TStringField;
    SqlCdsConfImprBOL_END: TStringField;
    SqlCdsConfImprBOL_CEP: TStringField;
    SqlCdsConfImprBOL_CID: TStringField;
    SqlCdsConfImprBOL_EST: TStringField;
    SqlCdsConfImprBOL_CNPJ: TStringField;
    SqlCdsConfImprBOL_LOCPGTO: TStringField;
    SqlCdsConfImprBOL_OBS1: TStringField;
    SqlCdsConfImprBOL_OBS2: TStringField;
    SqlCdsConfImprBOL_OBS3: TStringField;
    SqlCdsConfImprBOL_OBS4: TStringField;
    SqlCdsConfImprEMP_CODIGO: TStringField;
    SQLCdsBancosBAN_APELIDO: TStringField;
    SQLCdsBancosBAN_CODIGO: TStringField;
    SQLCdsBancosBAN_COD_APELIDO: TIntegerField;
    SqlCdsBoleto: TSQLClientDataSet;
    SqlCdsBoletoFAT_CODIGO: TStringField;
    SqlCdsBoletoFPC_NUMER: TStringField;
    SqlCdsBoletoBAN_CODIGO: TStringField;
    SqlCdsBoletoCLI_CODIGO: TStringField;
    SqlCdsBoletoFPC_DTEMIS: TSQLTimeStampField;
    SqlCdsBoletoFPC_VENCTO: TSQLTimeStampField;
    SqlCdsBoletoFPC_VLPARC: TFMTBCdField;
    SqlCdsBoletoBAN_JUROMES: TFMTBCdField;
    SqlCdsBoletoCLI_RAZAO: TStringField;
    SqlCdsBoletoCLI_ENDERE: TStringField;
    SqlCdsBoletoCLI_ENDFAT: TStringField;
    SqlCdsBoletoCLI_CIDADE: TStringField;
    SqlCdsBoletoCLI_CIDFAT: TStringField;
    SqlCdsBoletoCLI_CEP: TStringField;
    SqlCdsBoletoCLI_CEPFAT: TStringField;
    SqlCdsBoletoCLI_UF: TStringField;
    SqlCdsBoletoCLI_UFFAT: TStringField;
    SqlCdsBoletoCLI_CGC: TStringField;
    RDPrintBoleto: tRdPrintOld;
    procedure FormShow(Sender: tObject);
    procedure DataInicialKeyPress(Sender: tObject; var Key: Char);
    procedure DataFinalKeyPress(Sender: tObject; var Key: Char);
    procedure BitPesquisaClick(Sender: tObject);
    procedure BitImprimirClick(Sender: tObject);
    procedure CCodBancoKeyPress(Sender: tObject; var Key: Char);
    procedure CbBancosClick(Sender: tObject);
    procedure BitSairClick(Sender: tObject);
    procedure FormKeyPress(Sender: tObject; var Key: Char);
    procedure BitCancelarClick(Sender: tObject);
    procedure FormKeyDown(Sender: tObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridDuplicataKeyPress(Sender: tObject; var Key: Char);
    procedure DBGridDuplicataDblClick(Sender: tObject);
    procedure RadDataClick(Sender: tObject);
  private
    { Private declarations }
    {variaveis}
     wCompCampo : string;
     wPagina    : Integer;
     wDATA_INICIAL,
     wDATA_FINAL   :String[10];
     wESTATISTICA  :String[1];
     wSQL1,
     wSQL2         :String;
    {campos}
     CampoEdit    :TEdit;
     CampoMaskEdit:TMaskEdit;
     //CampoDBEdit  :TDBEdit;
     CampoBox     :TComboBox;
     //CampoData    :TDBDateEdit;
     //CampoDbMemo  :TDBMemo;
     //CampoTDBCombo:TDBComboBox;
     //CampoTDBLuk  :TDBLookupComboBox;
     CampoCurrency:TCurrencyEdit;
     procedure MudaCorCampos(Sender: tObject);
     procedure PreencheComboClientes;
     procedure PreencheBancos;
     procedure PesquisaDuplicataEmissao;
     procedure ImprimeBoletoBancario(wBANCO:String;wTIPO_IMPRESSAO:String);
     procedure AtualizaEmissaoDuplicata;
     procedure LayOutDuplicata;
     procedure BoletoBanco;
     procedure BoletoBarras;
     procedure DuplicataDesc;
     procedure Recibo;
     procedure ImprimirBloqueto;
  public
    { Public declarations }
  end;

var
  FrmEmissaoDuplicata: TFrmEmissaoDuplicata;

implementation

uses sis00078, Men0001, DataCad, DataMov;






{$R *.dfm}

procedure TFrmEmissaoDuplicata.FormShow(Sender: tObject);
begin
   try
     screen.Cursor                  := crHourglass;
     Screen.OnActiveControlChange   := MudaCorCampos;
     PreencheComboClientes;
     PreencheBancos;
    //
     DataInicial.Date    := Date;
     DataFinal.Date      := Date;
     Notebook.PageIndex  := 0;
     screen.Cursor       := crDefault;
     RadData.Checked     := true;
     LayOutDuplicata;
     {Carregar a Combo do Banco}
     SQLCdsBancos.Close;
     SqlCdsBancos.CommandText := SQLDEF('BANCOS','Select BAN_CODIGO,BAN_COD_APELIDO,BAN_APELIDO from BAN0000','','BAN_APELIDO','');
     SQLCdsBancos.Open;
     SqlCdsBancos.First;
     CbBancos.Items.Clear;
     CbBancos.Items.Add('');
     while not SQLCdsBancos.Eof do
      begin
          CbBancos.Items.Add(SQLCdsBancosBAN_APELIDO.AsString);
          SqlCdsBancos.Next;
      end;
     CbBancos.ItemIndex := 0;
   except on E:EDataBaseError do
      begin
         screen.Cursor := crDefault;
         //beep;
         uteis.erro  (Pchar('Impossível acessar o arquivo :'+#13#10+E.Message));
      end;
   end;
end;

procedure TFrmEmissaoDuplicata.MudaCorCampos(Sender: tObject);
begin
  {cor dos campos TDBEdit}
{   if Assigned(CampoDbEdit) then
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
  {cor dos campos TCampoBox}
   if Assigned(CampoBox) then
      begin
         CampoBox.color := clWindow;
      end;
   if ActiveControl is TComboBox then
      begin
         TComboBox(ActiveControl).color := $0080FFFF;
         CampoBox := TComboBox(ActiveControl);
      end
   else
      begin
         CampoBox := nil;
      end;
  {CampoData  :TDBDateEdit}
{   if Assigned(CampoData) then
      begin
         CampoData.color := clWindow;
      end;
   if ActiveControl is TDBDateEdit then
      begin
         TDBDateEdit(ActiveControl).color := $0080FFFF;
         CampoData := TDBDateEdit(ActiveControl);
      end
   else
      begin
         CampoData := nil;
      end;
  {CampoDbMemo:TDBMemo}
{   if Assigned(CampoDbMemo) then
      begin
         CampoDbMemo.color := clWindow;
      end;
   if ActiveControl is TDBMemo then
      begin
         TDBMemo(ActiveControl).color := $0080FFFF;
         CampoDbMemo := TDBMemo(ActiveControl);
      end
   else
      begin
         CampoDbMemo := nil;
      end;
  {CampoTDBCombo:TDBComboBox}
{   if Assigned(CampoTDBCombo) then
      begin
         CampoTDBCombo.color := clWindow;
      end;
   if ActiveControl is TDBComboBox then
      begin
         TDBComboBox(ActiveControl).color := $0080FFFF;
         CampoTDBCombo := TDBComboBox(ActiveControl);
      end
   else
      begin
         CampoTDBCombo := nil;
      end;
  {CampoTDBLuk  :TDBLookupComboBox}
{   if Assigned(CampoTDBLuk) then
      begin
         CampoTDBLuk.color := clWindow;
      end;
   if ActiveControl is TDBLookupComboBox then
      begin
         TDBLookupComboBox(ActiveControl).color := $0080FFFF;
         CampoTDBLuk := TDBLookupComboBox(ActiveControl);
      end
   else
      begin
         CampoTDBLuk := nil;
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
  {CampoEdit :TMaskEdit}
   if Assigned(CampoMaskEdit) then
      begin
         CampoMaskEdit.color := clWindow;
      end;
   if ActiveControl is TMaskEdit then
      begin
         TMaskEdit(ActiveControl).color := $0080FFFF;
         CampoMaskEdit := TMaskEdit(ActiveControl);
      end
   else
      begin
         CampoMaskEdit := nil;
      end;
  {CampoCurrencyEdit :TCurrencyEdit}
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

procedure TFrmEmissaoDuplicata.PreencheBancos;
begin
{
   try
      screen.Cursor := crHourglass;
      SQLBancos.Close;
      SQLBancos.CommandText := 'select BCO_CODIGO,BCO_DESCRICAO from bancos order by BCO_DESCRICAO';
      SQLBancos.Open;
      CbBancos.Items.Clear;
      while not SQLBancos.Eof do
        begin
           CbBancos.Items.Add(SQLBancos.FieldByname('BCO_DESCRICAO').AsString);
           SQLBancos.Next;
        end;
      CCodBanco.Clear;
      CbBancos.Text        := '';
      screen.Cursor := crDefault;
   except on E:EDataBaseError do
      begin
         screen.Cursor := crDefault;
         //beep;
         uteis.erro  (Pchar('Impossível acessar o arquivo :'+#13#10+E.Message));
      end;
   end;
}
end;

procedure TFrmEmissaoDuplicata.PreencheComboClientes;
begin
{
   try
      screen.Cursor := crHourglass;
      SQLClientes.Close;
      SQLClientes.CommandText := 'select CL_CODIGO,CL_RAZAO from CLIENTES order by CL_RAZAO';
      SQLClientes.Open;
      SQLClientes.First;
      CbClientes.Items.Clear;
      CbClientes.Items.Add('TODOS CLIENTES');
      while not SQLClientes.Eof do
         begin
            CbCLientes.Items.Add(SQLClientes.FieldByname('CL_RAZAO').AsString);
            SQLClientes.Next;
         end;
      CCodCliente.AsInteger  := 999999;
      CbClientes.ItemIndex   := 0;
      screen.Cursor := crDefault;
   except on E:EDataBaseError do
      begin
         screen.Cursor := crDefault;
         //beep;
         uteis.erro  (Pchar('Impossível acessar o arquivo :'+#13#10+E.Message));
      end;
   end;
}
end;

procedure TFrmEmissaoDuplicata.DataInicialKeyPress(Sender: tObject;
  var Key: Char);
begin
{
   if key = #13 then
      begin
         ValidaData(DataInicial.Text,DataInicial);
         key := #0;
      end;
}      
end;

procedure TFrmEmissaoDuplicata.DataFinalKeyPress(Sender: tObject;
  var Key: Char);
begin
{
   if key = #13 then
      begin
         ValidaData(DataFinal.Text,DataFinal);
         if DataInicial.Date > DataFinal.Date then
            begin
               //beep;
               uteis.aviso('Data final informada não pode ser menor que Data Inicial !');
               DataInicial.SetFocus;
               DataInicial.SelectAll;
            end;
         key := #0;
      end;
}
end;

procedure TFrmEmissaoDuplicata.BitPesquisaClick(Sender: tObject);
begin
{
   if uteis.confirmacao ( 'Confirma o Período para Emissão da(s) Duplicata(s)') = mryes then
      begin
         if CCodBanco.AsInteger = 0 then
            begin
               //beep;
               uteis.aviso('Informe o banco para emissão da(s) duplicata(s) !');
               CCodBanco.SetFocus;
               CCodBanco.SelectAll;
            end
         else
            begin
               PesquisaDuplicataEmissao;
            end;
      end
   else
      begin
         DataInicial.SetFocus;
         DataInicial.SelectAll;
      end;
}
end;

procedure TFrmEmissaoDuplicata.PesquisaDuplicataEmissao;
begin
{
   try
      Screen.Cursor   := CrHourglass;
      FormatSettings.ShortDateFormat := 'mm/dd/yyyy';
      wDATA_INICIAL   := DateToStr(DataInicial.Date);
      wDATA_FINAL     := DateToStr(DataFinal.Date);
      FormatSettings.ShortDateFormat := 'dd/mm/yyyy';
     //
      if wESTATISTICA = 'G' then
         begin
            if CCodCliente.AsInteger <> 999999 then
               begin
                  wSQL1     := 'select CRC.*,CL_RAZAO,CL_CNPJ_CNPF,CL_ENDERECO_COB,CL_CEP_COB,CL_CIDADE_COB,CL_BAIRRO_COB,CL_UF_COB,BCO_DESCRICAO from CRCdUPLICATA CRC join CLIENTES on CRC_COD_CLIENTE = CL_CODIGO join BANCOS on CRC_COD_BANCO = BCO_CODIGO where CRC_EMISSAO between '''+wDATA_INICIAL+''' and '''+wDATA_FINAL+'''';
                  wSQL2     := ' and CRC_COD_CLIENTE = '''+CCodCliente.Text+''' and CRC_COD_BANCO = '''+CCodBanco.Text+''' and CRC_STATUS_EMISSAO = ''N'' order by CRC_DUPLICATA,CRC_VENCIMENTO';
               end
            else
               begin
                  wSQL1     := 'select CRC.*,CL_RAZAO,CL_CNPJ_CNPF,CL_ENDERECO_COB,CL_CEP_COB,CL_CIDADE_COB,CL_BAIRRO_COB,CL_UF_COB,BCO_DESCRICAO from CRCdUPLICATA CRC join CLIENTES on CRC_COD_CLIENTE = CL_CODIGO join BANCOS on CRC_COD_BANCO = BCO_CODIGO where CRC_EMISSAO between '''+wDATA_INICIAL+''' and '''+wDATA_FINAL+'''';
                  wSQL2     := ' and CRC_COD_BANCO = '''+CCodBanco.Text+''' and CRC_STATUS_EMISSAO = ''N'' order by CRC_DUPLICATA,CRC_VENCIMENTO';
               end;
         end
      else
         begin
            if CCodCliente.AsInteger <> 999999 then
               begin
                  wSQL1     := 'select CRC.*,CL_RAZAO,CL_CNPJ_CNPF,CL_ENDERECO_COB,CL_CEP_COB,CL_CIDADE_COB,CL_BAIRRO_COB,CL_UF_COB,BCO_DESCRICAO from CRCdUPLICATA CRC join CLIENTES on CRC_COD_CLIENTE = CL_CODIGO join BANCOS on CRC_COD_BANCO = BCO_CODIGO where CRC_EMISSAO between '''+wDATA_INICIAL+''' and '''+wDATA_FINAL+'''';
                  wSQL2     := ' and CRC_COD_CLIENTE = '''+CCodCliente.Text+''' and CRC_STATUS = '''+wESTATISTICA+''' and CRC_COD_BANCO = '''+CCodBanco.Text+''' and CRC_STATUS_EMISSAO = ''N'' order by CRC_DUPLICATA,CRC_VENCIMENTO';
               end
            else
               begin
                  wSQL1     := 'select CRC.*,CL_RAZAO,CL_CNPJ_CNPF,CL_ENDERECO_COB,CL_CEP_COB,CL_CIDADE_COB,CL_BAIRRO_COB,CL_UF_COB,BCO_DESCRICAO from CRCdUPLICATA CRC join CLIENTES on CRC_COD_CLIENTE = CL_CODIGO join BANCOS on CRC_COD_BANCO = BCO_CODIGO where CRC_EMISSAO between '''+wDATA_INICIAL+''' and '''+wDATA_FINAL+'''';
                  wSQL2     := ' and CRC_COD_BANCO = '''+CCodBanco.Text+''' and CRC_STATUS = '''+wESTATISTICA+''' and CRC_STATUS_EMISSAO = ''N'' order by CRC_DUPLICATA,CRC_VENCIMENTO';
               end;
         end;
      //
      SQLCrCduplicata.Close;
      SQLCrCduplicata.CommandText := wSQL1 + wSQL2;
      SQLCrCduplicata.Open;
      if SQLCrCduplicata.IsEmpty then
         begin
            //beep;
            SQLCrCduplicata.Close;
            uteis.aviso('Duplicata(s) não Encotrada(s) para Emissão no período e Banco Informado !');
            BitImprimir.Enabled := False;
            DataInicial.SetFocus;
            DataInicial.SelectAll;
         end
      else
         begin
            BitPesquisa.Enabled      := False;
            DataInicial.Enabled      := False;
            DataFinal.Enabled        := False;
            CCodCliente.Enabled      := False;
            CbClientes.Enabled       := False;
            CCodBanco.Enabled        := False;
            CbBancos.Enabled         := False;
            RadDuplicataImp.Enabled  := True;
            RadBoletoBarras.Enabled  := True;
            RadVideo.Enabled         := True;
            RadImpressora.Enabled    := True;
            BitCancelar.Enabled      := True;
            BitImprimir.Enabled      := True;
            RadDuplicataImp.SetFocus;
         end;
      Screen.Cursor := CrDefault;
   except on E:EDataBaseError do
     begin
        Screen.Cursor := CrDefault;
        uteis.erro  (Pchar('Impossível atualizar o arquivo:'+ #13 + E.message));
     end;
   end;
}
end;

procedure TFrmEmissaoDuplicata.BitImprimirClick(Sender: tObject);
begin
    if (RadBoletoBanco.checked ) then
       begin
           BoletoBanco;
       end;
    if (RadBoletoBarras.checked ) then
       begin
           BoletoBarras;
       end;
    if (RadDuplicataDesc.checked ) then
       begin
           DuplicataDesc;
       end;
    if (RadRecibo.checked ) then
       begin
           Recibo;
       end;



{
   if uteis.confirmacao ( 'Confirma a emissão do boleto bancario para duplicata(s) !') = mryes then
      begin
         try
            if RadDuplicataImp.Checked then
               begin
                  if RadVideo.Checked then
                     ImprimeBoletoBancario(FormatFloat('0000',CCodBanco.AsInteger),'V')
                  else
                     ImprimeBoletoBancario(FormatFloat('0000',CCodBanco.AsInteger),'I');
               end
            else
            if RadBoletoBarras.Checked then
               begin
                  try
                     FrmBoletoCodBarras := TFrmBoletoCodBarras.Create(application);
                     if RadVideo.Checked then
                        FrmBoletoCodBarras.ImprimirBoletoCodigoBarras('','G','V','N',SQLCrCduplicata.CommandText)
                     else
                        FrmBoletoCodBarras.ImprimirBoletoCodigoBarras('','G','I','N',SQLCrCduplicata.CommandText);
                  finally
                     FrmBoletoCodBarras.Destroy;
                     FrmBoletoCodBarras := Nil;
                  end;
               end;
         finally
           if uteis.confirmacao ( 'Todas Duplicatas foram impressas ?') = mryes then
              begin
                {atualiza status da emissao da duplicata
                 AtualizaEmissaoDuplicata;
                //
                 SQLCrCduplicata.Close;
                 BitPesquisa.Enabled      := True;
                 DataInicial.Enabled      := True;
                 DataFinal.Enabled        := True;
                 CCodCliente.Enabled      := True;
                 CbClientes.Enabled       := True;
                 CCodBanco.Enabled        := True;
                 CbBancos.Enabled         := True;
                 RadDuplicataImp.Enabled  := False;
                 RadBoletoBarras.Enabled  := False;
                 RadVideo.Enabled         := False;
                 RadImpressora.Enabled    := False;
                 BitCancelar.Enabled      := False;
                 BitImprimir.Enabled      := False;
                 //
                 DataInicial.Date         := Date;
                 DataFinal.Date           := Date;
                 CCodCliente.AsInteger    := 999999;
                 CbClientes.Text          := 'TODOS CLIENTES';
                 CCodBanco.Clear;
                 CbBancos.Text            := '';
                 DataInicial.SetFocus;
                 DataInicial.SelectAll;
              end
           else
              begin
                 if uteis.confirmacao ( 'Deseja Imprimir novamente as duplicatas') = mryes then
                    begin
                       BitImprimir.Click;
                    end
                 else
                    begin
                       SQLCrCduplicata.Close;
                       BitPesquisa.Enabled      := True;
                       DataInicial.Enabled      := True;
                       DataFinal.Enabled        := True;
                       CCodCliente.Enabled      := True;
                       CbClientes.Enabled       := True;
                       CCodBanco.Enabled        := True;
                       CbBancos.Enabled         := True;
                       RadDuplicataImp.Enabled  := False;
                       RadBoletoBarras.Enabled  := False;
                       RadVideo.Enabled         := False;
                       RadImpressora.Enabled    := False;
                       BitCancelar.Enabled      := False;
                       BitImprimir.Enabled      := False;
                       //
                       DataInicial.Date         := Date;
                       DataFinal.Date           := Date;
                       CCodCliente.AsInteger    := 999999;
                       CbClientes.Text          := 'TODOS CLIENTES';
                       CCodBanco.Clear;
                       CbBancos.Text            := '';
                       DataInicial.SetFocus;
                       DataInicial.SelectAll;
                    end;
              end;

         end;
      end
   else
      begin
         RadDuplicataImp.SetFocus;
      end;
}
end;

procedure TFrmEmissaoDuplicata.ImprimeBoletoBancario(wBANCO,
  wTIPO_IMPRESSAO: String);
 Var
   wARQUIVOINI:TiniFile;
   wVALOR_MORA,
   wJURO_MORA:Currency;
begin
{
   Screen.Cursor := crHourGlass;
   if wTIPO_IMPRESSAO = 'V' then
      begin
         RDBoletoBancario.OpcoesPreview.Preview := True;
         RDBoletoBancario.abrir;
      if RDBoletoBancario.Setup = False then
         exit;
      end
    else
      begin
         RDBoletoBancario.OpcoesPreview.Preview := False;
         RDBoletoBancario.abrir;
         if RDBoletoBancario.Setup = False then
            exit;
      end;
   try
      screen.Cursor := crHourglass;
     {inicializa variaveis
      wJURO_MORA  := 0;
      wVALOR_MORA := 0;
     {cria o arquivo
      SQLCrCduplicata.DisableControls;
      SQLCrCduplicata.First;
      if not SQLCrCduplicata.IsEmpty then
         begin
            if not FileExists(dbInicio.SistemaLocal+'\'+wBANCO+'.ini') then
               begin
                  //beep;
                  uteis.erro  (Pchar('Não foi possível localizar arquivo ref. o banco:'+wBANCO));
               end
            else
               begin
                  wARQUIVOINI := TiniFile.Create(dbInicio.SistemaLocal+'\'+wBANCO+'.ini');
                  SQLCrCduplicata.First;
                  while not SQLCrCduplicata.Eof do
                     begin
                        {local pagamento
                         if wARQUIVOINI.ReadString('LocaPagamento','Imprime','')='S' then
                            RDBoletoBancario.ImpF(StrToInt(wARQUIVOINI.ReadString('LocaPagamento','Linha','')),StrToInt(wARQUIVOINI.ReadString('LocaPagamento','Coluna','')), wARQUIVOINI.ReadString('LocaPagamento','Descricao',''),[]);
                        {vencimento
                         if wARQUIVOINI.ReadString('Vencimento','Imprime','')='S' then
                            RDBoletoBancario.ImpF(StrToInt(wARQUIVOINI.ReadString('Vencimento','Linha','')),StrToInt(wARQUIVOINI.ReadString('Vencimento','Coluna','')),SQLCrCduplicata.FieldByname('CRC_VENCIMENTO').AsString,[]);
                        {DATA DOCUMENTO
                         if wARQUIVOINI.ReadString('DataDocumento','Imprime','')='S' then
                            RDBoletoBancario.ImpF(StrToInt(wARQUIVOINI.ReadString('DataDocumento','Linha','')),StrToInt(wARQUIVOINI.ReadString('DataDocumento','Coluna','')),SQLCrCduplicata.FieldByname('CRC_EMISSAO').AsString,[]);
                        {NUMERO DOCUMENTO
                         if wARQUIVOINI.ReadString('NumDocumento','Imprime','')='S' then
                         RDBoletoBancario.ImpF(StrToInt(wARQUIVOINI.ReadString('NumDocumento','Linha','')),StrToInt(wARQUIVOINI.ReadString('NumDocumento','Coluna','')),SQLCrCduplicata.FieldByname('CRC_DUPLICATA').AsString,[]);
                        {PARCELA
                         if wARQUIVOINI.ReadString('ParcelaDocumento','Imprime','')='S' then
                            RDBoletoBancario.ImpF(StrToInt(wARQUIVOINI.ReadString('ParcelaDocumento','Linha','')),StrToInt(wARQUIVOINI.ReadString('ParcelaDocumento','Coluna','')),''  ,[]);
                        {Espécie Documento
                         if wARQUIVOINI.ReadString('EspecieDocumento','Imprime','')='S' then
                            RDBoletoBancario.ImpF(StrToInt(wARQUIVOINI.ReadString('EspecieDocumento','Linha','')),StrToInt(wARQUIVOINI.ReadString('EspecieDocumento','Coluna','')),'',[]);
                        {Aceite
                         if wARQUIVOINI.ReadString('Aceite','Imprime','')='S' then
                            RDBoletoBancario.ImpF(StrToInt(wARQUIVOINI.ReadString('Aceite','Linha','')),StrToInt(wARQUIVOINI.ReadString('Aceite','Coluna','NAO')),'',[]);
                        {DataProcessamento
                         if wARQUIVOINI.ReadString('DataProcessamento','Imprime','')='S' then
                            RDBoletoBancario.ImpF(StrToInt(wARQUIVOINI.ReadString('DataProcessamento','Linha','')),StrToInt(wARQUIVOINI.ReadString('DataProcessamento','Coluna','')),'',[]);
                        {EspecieMoeda
                         if wARQUIVOINI.ReadString('EspecieMoeda','Imprime','')='S' then
                            RDBoletoBancario.ImpF(StrToInt(wARQUIVOINI.ReadString('EspecieMoeda','Linha','')),StrToInt(wARQUIVOINI.ReadString('EspecieMoeda','Coluna','')),'R$',[]);
                        {QuantidadeMoeda
                         if wARQUIVOINI.ReadString('QuantidadeMoeda','Imprime','')='S' then
                            RDBoletoBancario.ImpF(StrToInt(wARQUIVOINI.ReadString('QuantidadeMoeda','Linha','')),StrToInt(wARQUIVOINI.ReadString('QuantidadeMoeda','Coluna','')),'',[]);
                        {ValorMoeda
                         if wARQUIVOINI.ReadString('ValorMoeda','Imprime','')='S' then
                            RDBoletoBancario.ImpF(StrToInt(wARQUIVOINI.ReadString('ValorMoeda','Linha','')),StrToInt(wARQUIVOINI.ReadString('ValorMoeda','Coluna','')),'',[]);
                        {ValorDocumento
                         if wARQUIVOINI.ReadString('ValorDocumento','Imprime','')='S' then
                            RDBoletoBancario.ImpVal(StrToInt(wARQUIVOINI.ReadString('ValorDocumento','Linha','')),StrToInt(wARQUIVOINI.ReadString('ValorDocumento','Coluna','')),'###,###,##0.00',SQLCrCduplicata.FieldByname('CRC_VALOR_DUPLICATA').AsCurrency,[]);
                        {DescAbatimento
                         if wARQUIVOINI.ReadString('DescAbatimento','Imprime','')='S' then
                            RDBoletoBancario.ImpVal(StrToInt(wARQUIVOINI.ReadString('DescAbatimento','Linha','')),StrToInt(wARQUIVOINI.ReadString('DescAbatimento','Coluna','')),'###,###,##0.00',0,[]);
                        {OutrasDeducoes
                         if wARQUIVOINI.ReadString('OutrasDeducoes','Imprime','')='S' then
                            RDBoletoBancario.ImpVal(StrToInt(wARQUIVOINI.ReadString('OutrasDeducoes','Linha','')),StrToInt(wARQUIVOINI.ReadString('OutrasDeducoes','Coluna','')),'###,###,##0.00',0,[]);
                        {MoraMulta
                         if wARQUIVOINI.ReadString('MoraMulta','Imprime','')='S' then
                            begin
                               wJURO_MORA  := StrToCurr(wARQUIVOINI.ReadString('JurosMora','ValorMora',''));
                               wVALOR_MORA := (((SQLCrCduplicata.FieldByname('CRC_VALOR_DUPLICATA').AsCurrency * wJURO_MORA) /100)/30);
                               RDBoletoBancario.ImpVal(StrToInt(wARQUIVOINI.ReadString('MoraMulta','Linha','')),StrToInt(wARQUIVOINI.ReadString('MoraMulta','Coluna','')),'###,###,##0.00',wVALOR_MORA,[]);
                            end;
                        {OutrosAcrescimos
                         if wARQUIVOINI.ReadString('OutrosAcrescimos','Imprime','')='S' then
                            RDBoletoBancario.ImpVal(StrToInt(wARQUIVOINI.ReadString('OutrosAcrescimos','Linha','')),StrToInt(wARQUIVOINI.ReadString('OutrosAcrescimos','Coluna','')),'###,###,##0.00',0,[]);
                        {Instrucoes1
                         if wARQUIVOINI.ReadString('Instrucoes1','Imprime','')='S' then
                            RDBoletoBancario.ImpF(StrToInt(wARQUIVOINI.ReadString('Instrucoes1','Linha','')),StrToInt(wARQUIVOINI.ReadString('Instrucoes1','Coluna','')),wARQUIVOINI.ReadString('Instrucoes1','Descricao',''),[]);
                        {Instrucoes2
                         if wARQUIVOINI.ReadString('Instrucoes2','Imprime','')='S' then
                            RDBoletoBancario.ImpF(StrToInt(wARQUIVOINI.ReadString('Instrucoes2','Linha','')),StrToInt(wARQUIVOINI.ReadString('Instrucoes2','Coluna','')),wARQUIVOINI.ReadString('Instrucoes2','Descricao',''),[]);
                        {Instrucoes3
                         if wARQUIVOINI.ReadString('Instrucoes3','Imprime','')='S' then
                            RDBoletoBancario.ImpF(StrToInt(wARQUIVOINI.ReadString('Instrucoes3','Linha','')),StrToInt(wARQUIVOINI.ReadString('Instrucoes3','Coluna','')),wARQUIVOINI.ReadString('Instrucoes3','Descricao',''),[]);
                        {Instrucoes4
                         if wARQUIVOINI.ReadString('Instrucoes4','Imprime','')='S' then
                            RDBoletoBancario.ImpF(StrToInt(wARQUIVOINI.ReadString('Instrucoes4','Linha','')),StrToInt(wARQUIVOINI.ReadString('Instrucoes4','Coluna','')),wARQUIVOINI.ReadString('Instrucoes4','Descricao',''),[]);
                        {Instrucoes5
                         if wARQUIVOINI.ReadString('Instrucoes5','Imprime','')='S' then
                            RDBoletoBancario.ImpF(StrToInt(wARQUIVOINI.ReadString('Instrucoes5','Linha','')),StrToInt(wARQUIVOINI.ReadString('Instrucoes5','Coluna','')),wARQUIVOINI.ReadString('Instrucoes5','Descricao',''),[]);
                        {Instrucoes6
                         if wARQUIVOINI.ReadString('Instrucoes6','Imprime','')='S' then
                            RDBoletoBancario.ImpF(StrToInt(wARQUIVOINI.ReadString('Instrucoes6','Linha','')),StrToInt(wARQUIVOINI.ReadString('Instrucoes6','Coluna','')),wARQUIVOINI.ReadString('Instrucoes6','Descricao',''),[]);
                        {Instrucoes7
                         if wARQUIVOINI.ReadString('Instrucoes7','Imprime','')='S' then
                            RDBoletoBancario.ImpF(StrToInt(wARQUIVOINI.ReadString('Instrucoes7','Linha','')),StrToInt(wARQUIVOINI.ReadString('Instrucoes7','Coluna','')),wARQUIVOINI.ReadString('Instrucoes7','Descricao',''),[]);
                        {Instrucoes8
                         if wARQUIVOINI.ReadString('Instrucoes8','Imprime','')='S' then
                            RDBoletoBancario.ImpF(StrToInt(wARQUIVOINI.ReadString('Instrucoes8','Linha','')),StrToInt(wARQUIVOINI.ReadString('Instrucoes8','Coluna','')),wARQUIVOINI.ReadString('Instrucoes8','Descricao',''),[]);
                        {Instrucoes9
                         if wARQUIVOINI.ReadString('Instrucoes9','Imprime','')='S' then
                            RDBoletoBancario.ImpF(StrToInt(wARQUIVOINI.ReadString('Instrucoes9','Linha','')),StrToInt(wARQUIVOINI.ReadString('Instrucoes1','Coluna','')),wARQUIVOINI.ReadString('Instrucoes9','Descricao',''),[]);
                        {Instrucoes10
                         if wARQUIVOINI.ReadString('Instrucoes10','Imprime','')='S' then
                            RDBoletoBancario.ImpF(StrToInt(wARQUIVOINI.ReadString('Instrucoes10','Linha','')),StrToInt(wARQUIVOINI.ReadString('Instrucoes10','Coluna','')),wARQUIVOINI.ReadString('Instrucoes10','Descricao',''),[]);
                        {SACADO1
                         //if wARQUIVOINI.ReadString('Sacado1','Imprime','')='S' then
                            RDBoletoBancario.ImpF(StrToInt(wARQUIVOINI.ReadString('Sacado1','Linha','')),StrToInt(wARQUIVOINI.ReadString('Sacado1','Coluna','')),FormatFLoat('0000',SQLCrCduplicata.FieldByname('CRC_COD_CLIENTE').AsInteger)+'-'+SQLCrCduplicata.FieldByname('CL_RAZAO').AsString,[]);
                        {SACADO2
                         //if wARQUIVOINI.ReadString('Sacado2','Imprime','')='S' then
                            RDBoletoBancario.ImpF(StrToInt(wARQUIVOINI.ReadString('Sacado2','Linha','')),StrToInt(wARQUIVOINI.ReadString('Sacado2','Coluna','')),SQLCrCduplicata.FieldByname('CL_ENDERECO_COB').AsString,[]);
                        {SACADO3
                         //if wARQUIVOINI.ReadString('Sacado3','Imprime','')='S' then
                            RDBoletoBancario.ImpF(StrToInt(wARQUIVOINI.ReadString('Sacado3','Linha','')),StrToInt(wARQUIVOINI.ReadString('Sacado3','Coluna','')),copy(SQLCrCduplicata.FieldByname('CL_CEP_COB').AsString,1,5)+'-'+copy(SQLCrCduplicata.FieldByname('CL_CEP_COB').AsString,6,3)+'   '+PreencheDireita(SQLCrCduplicata.FieldByname('CL_CIDADE_COB').AsString,25) + ' '+SQLCrCduplicata.FieldByname('CL_UF_COB').AsString,[]);
                        {SACADO4
                         //if wARQUIVOINI.ReadString('Sacado4','Imprime','')='S' then
                            RDBoletoBancario.ImpF(StrToInt(wARQUIVOINI.ReadString('Sacado4','Linha','')),StrToInt(wARQUIVOINI.ReadString('Sacado4','Coluna','')),MascraCNPJ_CNPF(SQLCrCduplicata.FieldByname('CL_CNPJ_CNPF').AsString),[]);
                        {proxima duplicata
                         SQLCrCduplicata.Next;
                         RDBoletoBancario.Novapagina;
                     end;
               end;
         end;
   finally
       RDBoletoBancario.Fechar;
       wARQUIVOINI.Free;
       SQLCrCduplicata.EnableControls;
       Screen.Cursor := CrDefault;
   end;
}
end;

procedure TFrmEmissaoDuplicata.CCodBancoKeyPress(Sender: tObject;
  var Key: Char);
begin
{
   if key = #13 then
      begin
         if CCodBanco.AsInteger <> 0 then
            begin
               if SQLBancos.Locate('BCO_CODIGO',CCodBanco.AsInteger,[]) then
                  CbBancos.Text := SQLBancos.FieldByname('BCO_DESCRICAO').AsString
               else
                  begin
                     //beep;
                     uteis.aviso('Banco não localizado com o código informado !');
                     CCodBanco.SetFocus;
                     CCodBanco.SelectAll;
                  end;
            end
         else
            begin
               //beep;
               uteis.aviso('Informe o banco padrão para gerar as faturas do agrupamento !');
               CCodBanco.SetFocus;
               CCodBanco.SelectAll;
            end;
         Key := #0;
      end;
}
end;

procedure TFrmEmissaoDuplicata.CbBancosClick(Sender: tObject);
begin
{
   if SQLBancos.Locate('BCO_DESCRICAO',CbBancos.Text,[]) then
      CCodBanco.AsInteger := SQLBancos.FieldByname('BCO_CODIGO').AsInteger;
}
end;

procedure TFrmEmissaoDuplicata.BitSairClick(Sender: tObject);
begin
   close;
end;

procedure TFrmEmissaoDuplicata.FormKeyPress(Sender: tObject;
  var Key: Char);
begin
   if key = #27 then
      begin
         if BitCancelar.Enabled then
            BitCancelar.Click
         else
            close;
         key := #0;
      end;
end;

procedure TFrmEmissaoDuplicata.BitCancelarClick(Sender: tObject);
begin
{
   if uteis.confirmacao ( 'Confirma o Cancelamento da Pesquisa Atual ?') = mryes then
      begin
         SQLCrCduplicata.Close;
         BitPesquisa.Enabled      := True;
         DataInicial.Enabled      := True;
         DataFinal.Enabled        := True;
         CCodCliente.Enabled      := True;
         CbClientes.Enabled       := True;
         CCodBanco.Enabled        := True;
         CbBancos.Enabled         := True;
         RadDuplicataImp.Enabled  := False;
         RadBoletoBarras.Enabled  := False;
         RadVideo.Enabled         := False;
         RadImpressora.Enabled    := False;

         BitCancelar.Enabled      := False;
         BitImprimir.Enabled      := False;
         //
         DataInicial.Date         := Date;
         DataFinal.Date           := Date;
         CCodCliente.AsInteger    := 999999;
         CbClientes.Text          := 'TODOS CLIENTES';
         CCodBanco.Clear;
         CbBancos.Text            := '';
         DataInicial.SetFocus;
         DataInicial.SelectAll;
      end
   else
      begin
         RadDuplicataImp.SetFocus;
         //BitImprimir
      end;
}
end;

procedure TFrmEmissaoDuplicata.FormKeyDown(Sender: tObject; var Key: Word;
  Shift: TShiftState);
begin
{
   case key of
       VK_F5:begin
                if FrmMenu.ACESSOS_USUARIO.ESTATISTICA = 'S' then
                   begin
                       if wESTATISTICA = 'N' then
                          begin
                             wESTATISTICA := 'S';
                             LblEstatisitica.Visible := True;
                             LblEstatisitica.Caption := 'Estatistica';
                          end
                       else
                          begin
                             wESTATISTICA := 'N';
                             LblEstatisitica.Visible := False;
                             LblEstatisitica.Caption := 'Estatistica';
                          end;
                   end;
             end;
       VK_F8:begin
                if FrmMenu.ACESSOS_USUARIO.ESTATISTICA = 'S' then
                  begin
                     if wESTATISTICA = 'G' then
                        begin
                           wESTATISTICA := 'N';
                           LblEstatisitica.Visible := False;
                           LblEstatisitica.Caption := 'Estatistica';
                        end
                     else
                        begin
                           wESTATISTICA := 'G';
                           LblEstatisitica.Caption := 'Geral';
                           LblEstatisitica.Visible := True;
                        end;
                  end;
             end;
   end;
}
end;

procedure TFrmEmissaoDuplicata.AtualizaEmissaoDuplicata;
begin
{
   try
     screen.Cursor := crHourglass;
     try
      SQLCrCduplicata.DisableControls;
      SQLCrCduplicata.First;
      if not SQLCrCduplicata.IsEmpty then
         begin
            while not SQLCrCduplicata.Eof do
               begin
                  DadosBase3.CdSatualizacao.Close;
                  DadosBase3.CdSatualizacao.CommandText := 'update CRCdUPLICATA set CRC_STATUS_EMISSAO = ''S'' where CRC_DUPLICATA = '''+SQLCrCduplicata.FieldByname('CRC_DUPLICATA').AsString+'''';
                  DadosBase3.CdSatualizacao.Execute;
                 //
                  SQLCrCduplicata.Next;
               end;
         end
      else
         begin
            //beep;
            uteis.erro  ('Não foram encotradas duplicata para atualizar !!!')
         end;
     finally
       SQLCrCduplicata.EnableControls;
       screen.Cursor := crDefault;
     end;
   except on E:EDataBaseError do
      begin
         screen.Cursor := crDefault;
         //beep;
         uteis.erro  (Pchar('Impossível acessar o arquivo :'+#13#10+E.Message));
      end;
   end;
}
end;

procedure TFrmEmissaoDuplicata.DBGridDuplicataKeyPress(Sender: tObject;
  var Key: Char);
begin
    if key = #13 then
       begin
          if RadBoletoBanco.Enabled then
             RadBoletoBanco.SetFocus;
          key := #0;
       end;
end;

procedure TFrmEmissaoDuplicata.DBGridDuplicataDblClick(Sender: tObject);
begin
    if RadBoletoBanco.Enabled then
       RadBoletoBanco.SetFocus;
end;

procedure TFrmEmissaoDuplicata.RadDataClick(Sender: tObject);
begin
    LayOutDuplicata;
end;

procedure TFrmEmissaoDuplicata.LayOutDuplicata;
begin
    if RadData.checked  then
       begin
           Panemissao.Visible   := True;
           PanDuplicata.Visible := False;
           DataInicial.SetFocus;
       end;
    if RadDuplicata.checked  then
       begin
           Panemissao.Visible   := False;
           PanDuplicata.Visible := True;
           EdtDuplicata.SetFocus;
       end;
end;

procedure TFrmEmissaoDuplicata.BoletoBanco;
var
  wDataI, wDataF, wSeleciona : String;
begin
    Screen.Cursor := crHourglass;
    {Abrir o arquivo de Configuração do Boleto}
    try
      SqlCdsConfImpr.Close;
      SqlCdsConfImpr.CommandText := SQLDEF('TABELAS','SELECT B1.* FROM SYSBOLETO B1','WHERE B1.BOL_CODBAN = '''+EdtBanco.Text+'''','B1.BOL_CODBAN','B1.');
      SqlCdsConfImpr.Open;
    except on E:EDataBaseError do
        uteis.erro  (pchar('Erro ao Abrir a Tabela SYSBOLETO !'+E.MESSAGE));
    end;
    FormatSettings.ShortDateFormat:='mm/dd/yyyy';
    wDataI := DateToStr(DataInicial.Date);
    wDataF := DateToStr(DataFinal.Date);
    // verifica se a data final é maior que a data inicial
    if DataInicial.Date > DataFinal.Date then
       begin
           uteis.erro  ('Data final não pode ser menor que a data inicial!');
           DataFinal.Setfocus;
           exit;
       end;
    if RadData.checked  then
       begin
           wSeleciona := 'WHERE P1.FPC_DTEMIS BETWEEN '''+wDataI+''' AND '''+wDataF+''' AND P1.BAN_CODIGO = '''+EdtBanco.Text+'''';
       end
    else
       begin
           if EditParcela.Text <> '' then
              wSeleciona := 'WHERE P1.FAT_CODIGO = '''+StrZero(EdtDuplicata.Text,6)+''' AND P1.FPC_NUMER = '''+StrZero(EditParcela.Text,2)+''' AND P1.BAN_CODIGO = '''+EdtBanco.Text+''''
           else
              wSeleciona := 'WHERE P1.FAT_CODIGO = '''+StrZero(EdtDuplicata.Text,6)+''' AND P1.BAN_CODIGO = '''+EdtBanco.Text+'''';
       end;
    {Abrir a SqlCdsBoleto}
    try
      SqlCdsBoleto.Close;
      SqlCdsBoleto.CommandText := SQLDEF('RECEBER','SELECT P1.FAT_CODIGO,P1.FPC_NUMER,P1.BAN_CODIGO, P1.CLI_CODIGO,P1.FPC_DTEMIS,'+
                                         'P1.FPC_VENCTO,P1.FPC_VLPARC,P1.EMP_CODIGO,B1.BAN_JUROMES,C1.CLI_RAZAO,C1.CLI_ENDERE,C1.CLI_ENDFAT,'+
                                         'C1.CLI_CIDADE,C1.CLI_CIDFAT,C1.CLI_CEP,C1.CLI_CEPFAT,C1.CLI_UF,C1.CLI_UFFAT,C1.CLI_CGC FROM fat_pc01 P1 '+
                                         'JOIN ban0000 B1 ON B1.ban_codigo = P1.ban_codigo JOIN CLI0000 C1 ON C1.cli_codigo = P1.cli_codigo',wSeleciona,'P1.FPC_DTEMIS,P1.BAN_CODIGO','P1.');
      SqlCdsBoleto.Open;
    except on E:EDataBaseError do
       uteis.erro  (Pchar('Erro ao Abrir a Tabela RECEBER !'+E.MESSAGE));
    end;
    FormatSettings.ShortDateFormat:='dd/mm/yy';
    wDataI := DateToStr(DataInicial.Date);
    wDataF := DateToStr(DataFinal.Date);
    ImprimirBloqueto;
    if RadData.checked  then
       begin
           DataInicial.SetFocus;
       end
    else
       begin
           EdtDuplicata.SetFocus;
       end;
    Screen.Cursor := crDefault;
end;

procedure TFrmEmissaoDuplicata.BoletoBarras;
begin
//
end;

procedure TFrmEmissaoDuplicata.DuplicataDesc;
begin
//
end;

procedure TFrmEmissaoDuplicata.Recibo;
begin
//
end;

procedure TFrmEmissaoDuplicata.ImprimirBloqueto;
var
  wJurosMes : Currency;
begin
    wPagina := 1;
    RDPrintBoleto.FonteTamanhoPadrao := S10cpp;
    RDPrintBoleto.TamanhoQteLinhas   := iif(SqlCdsConfImprBOL_NRLINHA.AsString = '',StrToInt('020'),StrToInt(SqlCdsConfImprBOL_NRLINHA.AsString));

    if RadVideo.checked  then
       RDPrintBoleto.OpcoesPreview.Preview := True
    else
       RDPrintBoleto.OpcoesPreview.Preview := False;
    //
    RDPrintBoleto.Abrir;
    screen.Cursor := CrHourglass;
    {Abrir o SqlCdsBoleto}
    while not SqlCdsBoleto.Eof do
      begin
          {Local de Pagamento}
          IF COPY(SqlCdsConfImprBOL_LOCAL.AsString,7,1) ='S' then
             RDPrintBoleto.Imp(StrToInt(Copy(SqlCdsConfImprBOL_LOCAL.AsString, 1,3)),StrToInt(Copy(SqlCdsConfImprBOL_LOCAL.AsString, 4,3)),SqlCdsConfImprBOL_LOCPGTO.AsString);
          {Vencimento}
          IF COPY(SqlCdsConfImprBOL_VENCTO.AsString,7,1)='S' then
             RDPrintBoleto.Imp(StrToInt(COPY(SqlCdsConfImprBOL_VENCTO.AsString,1,3)),StrToInt(COPY(SqlCdsConfImprBOL_VENCTO.AsString,4,3)),DateToStr(SqlCdsBoletoFPC_VENCTO.AsDateTime));
          {Data documento}
          IF COPY(SqlCdsConfImprBOL_DTEMIS.AsString,7,1)='S' then
             RDPrintBoleto.Imp(StrToInt(COPY(SqlCdsConfImprBOL_DTEMIS.AsString,1,3)),StrToInt(COPY(SqlCdsConfImprBOL_DTEMIS.AsString,4,3)),DateToStr(SqlCdsBoletoFPC_DTEMIS.AsDateTime));
          {Numero do Documento}
          IF COPY(SqlCdsConfImprBOL_CODFAT.AsString,7,1)='S' then
             RDPrintBoleto.Imp(StrToInt(Copy(SqlCdsConfImprBOL_CODFAT.AsString,1,3)),StrToInt(Copy(SqlCdsConfImprBOL_CODFAT.AsString,4,3)),SqlCdsBoletoFAT_CODIGO.AsString+IIF(SqlCdsBoletoFPC_NUMER.AsString<>'','/','')+SqlCdsBoletoFPC_NUMER.AsString);
          {Esp.Docum.}
          IF COPY(SqlCdsConfImprBOL_ESPDOC.AsString,7,1)='S' then
             RDPrintBoleto.Imp(StrToInt(COPY(SqlCdsConfImprBOL_ESPDOC.AsString,1,3)),StrToInt(COPY(SqlCdsConfImprBOL_ESPDOC.AsString,4,3)),SqlCdsConfImprBOL_DESESPDOC.AsString);
          {Aceite}
          IF COPY(SqlCdsConfImprBOL_ACEITE.AsString,7,1)='S' then
             RDPrintBoleto.Imp(StrToInt(COPY(SqlCdsConfImprBOL_ACEITE.AsString,1,3)),StrToInt(COPY(SqlCdsConfImprBOL_ACEITE.AsString,4,3)),SqlCdsConfImprBOL_DESACEITE.AsString);
          {Data processamento}
          IF COPY(SqlCdsConfImprBOL_DTPROCE.AsString,7,1)='S' then
             RDPrintBoleto.Imp(StrToInt(COPY(SqlCdsConfImprBOL_DTPROCE.AsString,1,3)),StrToInt(COPY(SqlCdsConfImprBOL_DTPROCE.AsString,4,3)),DateToStr(SqlCdsBoletoFPC_DTEMIS.AsDateTime));
          //SEM PREENCHER INFORMACAO DO BANCO
          {Uso do Banco}
          //SEM PREENCHER INFORMACAO DO BANCO
          {Carteira}
          IF COPY(SqlCdsConfImprBOL_CARTEIRA.AsString,7,1)='S' then
             RDPrintBoleto.Imp(StrToInt(COPY(SqlCdsConfImprBOL_CARTEIRA.AsString,1,3)),StrToInt(COPY(SqlCdsConfImprBOL_CARTEIRA.AsString,4,3)),SqlCdsConfImprBOL_DESCARTEIRA.AsString);
          {Especie}
          IF COPY(SqlCdsConfImprBOL_ESPECIE.AsString,7,1)='S' then
             RDPrintBoleto.Imp(StrToInt(COPY(SqlCdsConfImprBOL_ESPECIE.AsString,1,3)),StrToInt(COPY(SqlCdsConfImprBOL_ESPECIE.AsString,4,3)),SqlCdsConfImprBOL_DESPECIE.AsString);
          {Quantidade}
          {Valor}
          IF COPY(SqlCdsConfImprBOL_VLPARC.AsString,7,1)='S' then
             RDPrintBoleto.ImpVal(StrToInt(COPY(SqlCdsConfImprBOL_VLPARC.AsString,1,3)),StrToInt(COPY(SqlCdsConfImprBOL_VLPARC.AsString,4,3)),'#,##0.00',SqlCdsBoletoFPC_VLPARC.AsCurrency,[]);
          {Valor do documento}
          IF COPY(SqlCdsConfImprBOL_VLDOC.AsString,7,1)='S' then
             RDPrintBoleto.ImpVal(StrToInt(COPY(SqlCdsConfImprBOL_VLDOC.AsString,1,3)),StrToInt(COPY(SqlCdsConfImprBOL_VLDOC.AsString,4,3)),'#,##0.00',SqlCdsBoletoFPC_VLPARC.AsCurrency,[]);
          {Mora}
          IF COPY(SqlCdsConfImprBOL_JUROMES.AsString,7,1)='S' then
             begin
                 wJurosMes := (SqlCdsBoletoBAN_JUROMES.AsCurrency/30)*(SqlCdsBoletoFPC_VLPARC.AsCurrency)/100;
                 RDPrintBoleto.ImpVal(StrToInt(COPY(SqlCdsConfImprBOL_JUROMES.AsString,1,3)),StrToInt(COPY(SqlCdsConfImprBOL_JUROMES.AsString,4,3)),' MORA DIARIA R$ '+'#,##0.00',wJurosMes,[]);
             end;
          {Desconto / Abatimento}
          {Instrucao Obs1}
          IF COPY(SqlCdsConfImprBOL_OBSBOL1.AsString,7,1)='S' then
             RDPrintBoleto.Imp(StrToInt(COPY(SqlCdsConfImprBOL_OBSBOL1.AsString,1,3)),StrToInt(COPY(SqlCdsConfImprBOL_OBSBOL1.AsString,4,3)),SqlCdsConfImprBOL_OBS1.AsString);
          {Outras deducoes}
          {Instrucao Obs2}
          IF COPY(SqlCdsConfImprBOL_OBSBOL2.AsString,7,1)='S' then
             RDPrintBoleto.Imp(StrToInt(COPY(SqlCdsConfImprBOL_OBSBOL2.AsString,1,3)),StrToInt(COPY(SqlCdsConfImprBOL_OBSBOL2.AsString,4,3)),SqlCdsConfImprBOL_OBS2.AsString);
          {Mora / Multa}
          {Instrucao Obs3}
          IF COPY(SqlCdsConfImprBOL_OBSBOL3.AsString,7,1)='S' then
             RDPrintBoleto.Imp(StrToInt(COPY(SqlCdsConfImprBOL_OBSBOL3.AsString,1,3)),StrToInt(COPY(SqlCdsConfImprBOL_OBSBOL3.AsString,4,3)),SqlCdsConfImprBOL_OBS3.AsString);
          {Outros Acrescimos}
          {Instrucao Obs4}
          IF COPY(SqlCdsConfImprBOL_OBSBOL4.AsString,7,1)='S' then
             RDPrintBoleto.Imp(StrToInt(COPY(SqlCdsConfImprBOL_OBSBOL4.AsString,1,3)),StrToInt(COPY(SqlCdsConfImprBOL_OBSBOL4.AsString,4,3)),SqlCdsConfImprBOL_OBS4.AsString);
          {Valor Cobrado}
          {Razao Social}
          IF COPY(SqlCdsConfImprBOL_RAZAO.AsString,7,1)='S' then
             RDPrintBoleto.Imp(StrToInt(COPY(SqlCdsConfImprBOL_RAZAO.AsString,1,3)),StrToInt(COPY(SqlCdsConfImprBOL_RAZAO.AsString,4,3)),SqlCdsBoletoCLI_RAZAO.AsString);
          {CNPJ}
          IF COPY(SqlCdsConfImprBOL_CNPJ.AsString,7,1)='S' then
             RDPrintBoleto.Imp(StrToInt(COPY(SqlCdsConfImprBOL_CNPJ.AsString,1,3)),StrToInt(COPY(SqlCdsConfImprBOL_CNPJ.AsString,4,3)),MascaraCNPJ_CPF(SqlCdsBoletoCLI_CGC.AsString));
          {Verifica qual o endereço vai ser impresso (Fatura/Endereço)}
          IF SqlCdsBoletoCLI_CIDFAT.AsString<> '' THEN
             begin
                 {Endereço de Fatura}
                 IF COPY(SqlCdsConfImprBOL_END.AsString,7,1)='S' then
                    RDPrintBoleto.Imp(StrToInt(COPY(SqlCdsConfImprBOL_END.AsString,1,3)),StrToInt(COPY(SqlCdsConfImprBOL_END.AsString,4,3)),SqlCdsBoletoCLI_ENDFAT.AsString);
                 {Cep}
                 IF COPY(SqlCdsConfImprBOL_CEP.AsString,7,1)='S' then
                    RDPrintBoleto.Imp(StrToInt(COPY(SqlCdsConfImprBOL_CEP.AsString,1,3)),StrToInt(COPY(SqlCdsConfImprBOL_CEP.AsString,4,3)),MascaraCep(SqlCdsBoletoCLI_CEPFAT.AsString)+' '+TRIM(SqlCdsBoletoCLI_CIDFAT.AsString)+' - '+SqlCdsBoletoCLI_UFFAT.AsString);
             end
          else
             begin
                 {Endereço}
                 IF COPY(SqlCdsConfImprBOL_END.AsString,7,1)='S' then
                    RDPrintBoleto.Imp(StrToInt(COPY(SqlCdsConfImprBOL_END.AsString,1,3)),StrToInt(COPY(SqlCdsConfImprBOL_END.AsString,4,3)),SqlCdsBoletoCLI_ENDERE.AsString);
                 {Cep}
                 IF COPY(SqlCdsConfImprBOL_CEP.AsString,7,1)='S' then
                    RDPrintBoleto.Imp(StrToInt(COPY(SqlCdsConfImprBOL_CEP.AsString,1,3)),StrToInt(COPY(SqlCdsConfImprBOL_CEP.AsString,4,3)),MascaraCep(SqlCdsBoletoCLI_CEP.AsString)+' '+TRIM(SqlCdsBoletoCLI_CIDADE.AsString)+' - '+SqlCdsBoletoCLI_UF.AsString);
             end;
          RDPrintBoleto.Novapagina;
          SqlCdsBoleto.Next;
      end;
    RDPrintBoleto.Fechar;
    Screen.Cursor := crDefault;
end;

end.
