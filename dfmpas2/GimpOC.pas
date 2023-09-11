{****************************************************************
| Programa...: GimpOC- Nome formulario = FormGimpOc
| Objetivo...: Gerenciador de Impressão de Ordem de Compra
| Analista...: Márcio Neu Pacheco
| Programador: Márcio
|
| Comentários:
|
| Criação..........: Jan/99
| Ultima Alteração.: Jan/2003
| Alterado por.....: Márcio
|
****************************************************************}
unit GimpOC;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, StdCtrls, Buttons, Mask, ExtCtrls, Db, DBTables,
  RWfunc, Grids, DBGrids,   RDprint, Provider, SqlExpr,SqlClientDataSet,
  DBClient, DBLocal, DBLocalS, ppProd, ppClass, ppReport, ppComm, ppRelatv,
  ppDB, ppDBPipe, ppPrnabl, ppCtrls, ppBands, ppCache, ppModule, raCodMod,
  ppVar, daDataModule, ppFormWrapper, ppRptExp, ppDBBDE, ppDesignLayer,
  ppParameter, SimpleDS, Data.DBXFirebird, JvExMask, JvToolEdit;

type
  TFormGimpOC = class(TForm)
    Grp02: TGroupBox;
    LabelRepresentante: TLabel;
    Grp04: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    EditInicial: TEdit;
    EditFinal: TEdit;
    PrinterSetupDialog1: TPrinterSetupDialog;
    RDPrintOrdem: TRDprint;
    Grp00: TGroupBox;
    LTBox: TListBox;
    GrpDispositivo: TGroupBox;
    RadVideo: TRadioButton;
    RadImpressora: TRadioButton;
    RadText: TRadioButton;
    grp05: TGroupBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Bit_Cancelar: TBitBtn;
    Grp03: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    SqlCdsForn: TSQLClientDataSet;
    SqlCdsFornFOR_CODIGO: TStringField;
    SqlCdsFornFOR_RAZAO: TStringField;
    SqlCdsOC: TSQLClientDataSet;
    DsOC: TDataSource;
    SqlCdsOCOCP_CODIGO: TStringField;
    SqlCdsOCFOR_CODIGO: TStringField;
    SqlCdsOCFOR_RAZAO: TStringField;
    SqlCdsOCFOR_ENDERE: TStringField;
    SqlCdsOCFOR_CIDADE: TStringField;
    SqlCdsOCFOR_UF: TStringField;
    SqlCdsOCFOR_CONTATO: TStringField;
    SqlCdsOCFOR_FONCONT: TStringField;
    SqlCdsOCFOR_FAXCONT: TStringField;
    SqlCdsOCFOR_EMAILCONT: TStringField;
    SqlCdsOCTRP_CODIGO: TStringField;
    SqlCdsOCTRP_RAZAO: TStringField;
    SqlCdsOCTRP_FONE: TStringField;
    SqlCdsOCOCP_DTEMIS: TSQLTimeStampField;
    SqlCdsOCOCP_DTENTREGA: TSQLTimeStampField;
    SqlCdsOCOCP_OBS: TMemoField;
    SqlCdsOCOCP_REQUERENTE: TStringField;
    SqlCdsOCOCP_STATUS: TStringField;
    SqlCdsOCOCP_TOTAL: TFMTBCdField;
    EdtForn: TEdit;
    CbxCod: TComboBox;
    CbxForn: TComboBox;
    SqlCdsOCOCI_SITUACAO_CC: TStringField;
    SqlCdsOCOCI_TOTAL_CC: TCurrencyField;
    SqlCdsOCEMP_CODIGO: TStringField;
    SqlCdsOCPRD_REFER: TStringField;
    SqlCdsOCPRD_DESCRI: TStringField;
    SqlCdsOCOCI_QTDES: TFMTBCdField;
    SqlCdsOCOCI_QTDER: TFMTBCdField;
    SqlCdsOCOCI_PRECO: TFMTBCdField;
    SqlCdsOCOCI_IPI: TFMTBCdField;
    SqlCdsOCOCI_SITUACAO: TStringField;
    SqlCdsItensOC: TSQLClientDataSet;
    DsItensOC: TDataSource;
    SqlCdsItensOCOCP_CODIGO: TStringField;
    SqlCdsItensOCPRD_REFER: TStringField;
    SqlCdsItensOCOCI_QTDES: TFMTBCdField;
    SqlCdsItensOCOCI_QTDER: TFMTBCdField;
    SqlCdsItensOCOCI_PRECO: TFMTBCdField;
    SqlCdsItensOCOCI_IPI: TFMTBCdField;
    SqlCdsItensOCOCI_SITUACAO: TStringField;
    SqlCdsItensOCPRD_DESCRI: TStringField;
    SqlCdsItensOCPRD_UND: TStringField;
    ppDBOC: TppDBPipeline;
    ppReport1: TppReport;
    pp00HeaderBand2: TppHeaderBand;
    ppLine5: TppLine;
    LBL_00_EMPRESA: TppLabel;
    LBL_00_LTITULO1: TppLabel;
    LBL_00_LTITULO2: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppSystemVariable4: TppSystemVariable;
    ppColumnHeaderBand1: TppColumnHeaderBand;
    pp00DetailBand2: TppDetailBand;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText15: TppDBText;
    ppColumnFooterBand1: TppColumnFooterBand;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppLine2: TppLine;
    ppLabel2: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppLine6: TppLine;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppLine3: TppLine;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel7: TppLabel;
    ppLabel6: TppLabel;
    ppDBText14: TppDBText;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLine4: TppLine;
    ppGroupFooterBand1: TppGroupFooterBand;
    SqlCdsOCN: TSQLClientDataSet;
    DsOCN: TDataSource;
    SqlCdsOCNOCP_CODIGO: TStringField;
    SqlCdsOCNOCP_DTEMIS: TSQLTimeStampField;
    SqlCdsOCNOCP_DTENTREGA: TSQLTimeStampField;
    SqlCdsOCNOCP_OBS: TMemoField;
    SqlCdsOCNOCP_REQUERENTE: TStringField;
    SqlCdsOCNOCP_STATUS: TStringField;
    SqlCdsOCNOCP_TOTAL: TFMTBCdField;
    SqlCdsOCNEMP_CODIGO: TStringField;
    SqlCdsOCNFOR_CODIGO: TStringField;
    SqlCdsOCNFOR_RAZAO: TStringField;
    SqlCdsOCNFOR_ENDERE: TStringField;
    SqlCdsOCNFOR_CIDADE: TStringField;
    SqlCdsOCNFOR_UF: TStringField;
    SqlCdsOCNFOR_CONTATO: TStringField;
    SqlCdsOCNFOR_FONCONT: TStringField;
    SqlCdsOCNFOR_FAXCONT: TStringField;
    SqlCdsOCNFOR_EMAILCONT: TStringField;
    SqlCdsOCNTRP_CODIGO: TStringField;
    SqlCdsOCNTRP_RAZAO: TStringField;
    SqlCdsOCNTRP_FONE: TStringField;
    Grp01: TGroupBox;
    RadTodas: TRadioButton;
    RadPende: TRadioButton;
    RadConcluida: TRadioButton;
    ppLine1: TppLine;
    DsCompraAlmox: TDataSource;
    SqlCdsCompraAlmox: TSQLClientDataSet;
    SqlCdsCompraAlmoxOSI_EMP_PENDENTE: TFMTBCdField;
    SqlCdsCompraAlmoxPRD_REFER_ITENS: TStringField;
    SqlCdsCompraAlmoxOSV_CODIGO: TStringField;
    SqlCdsCompraAlmoxPRD_DESCRI: TStringField;
    SqlCdsCompraAlmoxPRD_PCUSTO: TFMTBCdField;
    SqlCdsCompraAlmoxPRD_ESTOQUE: TFMTBCdField;
    SqlCdsCompraAlmoxPRD_ENTRADA: TFMTBCdField;
    SqlCdsCompraAlmoxPRD_SAIDA: TFMTBCdField;
    SqlCdsCompraAlmoxPRD_EMPENHO: TFMTBCdField;
    SqlCdsCompraAlmoxPRD_PENDENTE: TFMTBCdField;
    SqlCdsCompraAlmoxCC_SALDO: TCurrencyField;
    ppRAlmoxarifado: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppLine7: TppLine;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppLine8: TppLine;
    ppLabel16: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppLabel17: TppLabel;
    ppLine9: TppLine;
    ppLabel24: TppLabel;
    SqlCdsCompraAlmoxCC_CUSTO_TOTAL: TCurrencyField;
    ppCompraAlmox: TppDBPipeline;
    ppDBText22: TppDBText;
    ppDBCalc4: TppDBCalc;
    Label_Empresa1: TppLabel;
    SqlCdsOCOCP_PRAZO: TStringField;
    SqlCdsOCNOCP_PRAZO: TStringField;
    ppDBText6: TppDBText;
    EditDataI: TJvDateEdit;
    EditDataF: TJvDateEdit;
    SqlCdsOCFOR_CGC: TStringField;
    ppDBText23: TppDBText;
    ppLabel25: TppLabel;
    SqlCdsOCNFOR_CGC: TStringField;
    radAtraso: TRadioButton;
    procedure MudaCorCampos(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure BitOkClick(Sender: tObject);
    procedure EditInicialExit(Sender: tObject);
    procedure EditFinalExit(Sender: tObject);
    procedure BitCancelarClick(Sender: tObject);
    procedure BitConfigClick(Sender: tObject);
    procedure EditDataIExit(Sender: tObject);
    procedure EditDataFExit(Sender: tObject);
    procedure LTBoxClick(Sender: tObject);
    procedure EditDataIClick(Sender: tObject);
    procedure EditDataFClick(Sender: tObject);
    procedure EditInicialClick(Sender: tObject);
    procedure EditFinalClick(Sender: tObject);
    procedure CbxFornExit(Sender: tObject);
    procedure EdtFornExit(Sender: tObject);
    procedure CbxFornEnter(Sender: tObject);
    procedure CbxFornKeyPress(Sender: tObject; var Key: Char);
    procedure CbxFornClick(Sender: tObject);
    procedure SqlCdsOCCalcFields(DataSet: TDataSet);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure pp00HeaderBand2BeforePrint(Sender: tObject);
    procedure SqlCdsCompraAlmoxCalcFields(DataSet: TDataSet);
    procedure FormCreate(Sender: tObject);
    procedure ppSystemVariable4GetText(Sender: TObject; var Text: string);
    procedure ppSystemVariable2GetText(Sender: TObject; var Text: string);
    procedure ppSystemVariable1GetText(Sender: TObject; var Text: string);
    procedure ppSystemVariable3GetText(Sender: TObject; var Text: string);
    procedure ppDBText23GetText(Sender: TObject; var Text: string);
  private
PathNewRel :STRING;
        {campos}
   CampoEdit    :TEdit;
   CampoBox     :TComboBox;
   CampoTDBLuk  :TDBLookupComboBox;
   procedure ImprimirOrdemComp;
   procedure LayOutRel;
   procedure BuscaCodigo;
   Procedure ImprimiCompraAlmox;
  public
    { Public declarations }
  end;

var
  FormGimpOC: TFormGimpOC;
  wFor_codigo:String[4];
implementation

uses Uteis, DataMov, DataCad, Men0001, ufrmpreviewrb, iniciodb;

{$R *.DFM}





procedure TFormGimpOC.MudaCorCampos(Sender: tObject);
begin
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
    {CampoTDBLuk  :TDBLookupComboBox}
     if Assigned(CampoTDBLuk) then
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
end;

procedure TFormGimpOC.FormShow(Sender: tObject);
begin
    {ativa o método ao evento OnActiveControlChange}
    Screen.OnActiveControlChange   := MudaCorCampos;
    Screen.Cursor := crHourglass;
    Left := 166;
    Top  := 182;
    try
      SqlCdsForn.Close;
      SqlCdsForn.CommandText := SqlDef('FORNECEDORES','Select F1.FOR_CODIGO,F1.FOR_RAZAO from FOR0000 F1','','F1.For_Razao','F1.');
      SqlCdsForn.Open;
      SqlCdsForn.First;
      CbxForn.Items.Clear;
      CbxCod.Items.Clear;
      CbxCod.Items.Add('');
      CbxForn.Items.Add('TODOS OS FORNECEDORES');
      while not SqlCdsForn.Eof do
        begin
            CbxCod.Items.Add(SqlCdsFornFOR_CODIGO.AsString);
            CbxForn.Items.Add(SqlCdsFornFOR_RAZAO.AsString);
            SqlCdsForn.Next;
        end;
      CbxForn.ItemIndex := 0;
      CbxCod.ItemIndex  := 0;
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao abrir a tabela FOR0000 !'+E.MESSAGE));
    end;
    {Carregar o ListBox com os nomes dos relatorios}
    LTBox.Items.Add('Cópia Ordem de Compra');
    LTBox.Items.Add('Relatório Geral de Ordem de Compra');
    LTBox.Items.Add('Produto solicitado pelo almoxarifado para compra');
    LTBox.ItemIndex := 0;
    LayOutRel;
    Screen.Cursor := crDefault;
end;

procedure TFormGimpOC.BitOkClick(Sender: tObject);
var
wdataI,wdataF     : String;
wSeleciona,wOrdem : String;
begin
    Screen.Cursor := crHourGlass;
    try
      if LTBox.ItemIndex = 0 then
         begin
             if (EditInicial.Text = '') and (EditFinal.Text = '') then
                begin
                    uteis.aviso('Informe o número da ordem !');
                    EditInicial.SetFocus;
                    Screen.Cursor := crDefault;
                    exit;
                end;
             wSeleciona := 'where O1.OCP_CODIGO between '''+EditInicial.Text+''' and '''+EditFinal.Text+'''';
             wOrdem     := 'O1.OCP_CODIGO';
         end;
      if LTBox.ItemIndex = 1 then
         begin
             wSeleciona := 'where O1.OCP_DTEMIS between '''+DataAmericana(EditDataI.Text)+''' and '''+DataAmericana(EditDataF.Text)+'''';
             if CbxForn.Text <> 'TODOS OS FORNECEDORES' then
                begin
                    wSeleciona := wSeleciona + ' and O1.FOR_CODIGO = '''+SqlCdsFornFOR_CODIGO.Asstring+'''';
                end;
             LBL_00_LTITULO1.Caption := 'Relatório de Posição de Ordens de Compras';
             LBL_00_LTITULO2.Caption := 'Emitidas entre '+DateTimeToStr(EditDataI.Date)+' e '+DateTimeToStr(EditDataF.Date);
             if RadPende.checked  then
                begin
                    wSeleciona := wSeleciona + ' and  OCP_STATUS = ''P''';
                    LBL_00_LTITULO2.Caption := LBL_00_LTITULO2.Caption + ' - Ordens Pendentes ';
                end;
             if RadConcluida.checked  then
                begin
                    wSeleciona := wSeleciona + ' and  OCP_STATUS = ''C''';
                    LBL_00_LTITULO2.Caption := LBL_00_LTITULO2.Caption + ' - Ordens Concluídas ';
                end;
             if radAtraso.checked  then
                begin
                    wSeleciona := wSeleciona + ' and  OCP_STATUS = ''P'' and OCP_DTENTREGA < ' + DateToSQL(Now);
                    LBL_00_LTITULO2.Caption := LBL_00_LTITULO2.Caption + ' - Ordens em Atraso ';
                end;
             wOrdem     := 'F1.FOR_RAZAO,O2.OCI_REGISTRO';
         end;
      if LTBox.ItemIndex = 0 then
         begin
             SqlCdsOCN.Close;
             SqlCdsOCN.PacketRecords := 10;
             SqlCdsOCN.CommandText:= SqlDef('ORDENSCOMPRA',
                                            'Select O1.OCP_CODIGO,O1.OCP_DTEMIS,O1.OCP_DTENTREGA,O1.OCP_OBS,O1.OCP_REQUERENTE,O1.ocp_status,O1.ocp_total,O1.EMP_CODIGO,O1.FOR_CODIGO,'+
                                            '       F1.FOR_RAZAO,F1.FOR_ENDERE,F1.for_cidade,F1.for_uf,F1.for_contato,F1.for_foncont,F1.for_faxcont,F1.for_emailcont,O1.TRP_CODIGO,'+
                                            'T1.TRP_RAZAO,T1.TRP_FONE,O1.OCP_PRAZO, F1.FOR_CGC '+
                                            'from OCP0000 O1 '+
                                            '     LEFT JOIN FOR0000 F1 ON O1.for_codigo = F1.for_codigo '+
                                            '     LEFT JOIN TRP0000 T1 ON O1.trp_codigo = T1.trp_codigo ',wSeleciona,wOrdem,'O1.');
             SqlCdsOCN.Open;
         end;
      if LTBox.ItemIndex = 1 then
         begin
             SqlCdsOC.Close;
             SqlCdsOC.PacketRecords := 10;
             SqlCdsOC.CommandText := SqlDef('ORDENSCOMPRA',
                                     'Select O1.OCP_CODIGO, O1.OCP_DTEMIS, O1.OCP_DTENTREGA, O1.OCP_OBS, O1.OCP_REQUERENTE, O1.ocp_status, O1.ocp_total, O1.EMP_CODIGO, O1.FOR_CODIGO,'+
                                     '       F1.FOR_RAZAO, F1.FOR_ENDERE,F1. for_cidade, F1.for_uf, F1.for_contato, F1.for_foncont, F1.for_faxcont, F1.for_emailcont, O1.TRP_CODIGO,'+
                                     '       T1.TRP_RAZAO, T1.TRP_FONE, O2.PRD_REFER, P1.PRD_DESCRI, O2.OCI_QTDES, O2.OCI_QTDER, O2.OCI_PRECO, O2.OCI_IPI,O2.OCI_SITUACAO, O1.OCP_PRAZO, F1.FOR_CGC '+
                                     'from OCP0000 O1 '+
                                     '     LEFT JOIN TRP0000 T1 ON O1.trp_codigo = T1.trp_codigo '+
                                     '     JOIN FOR0000 F1 ON O1.for_codigo = F1.for_codigo '+
                                     '     JOIN ocp_it01 O2 ON O1.ocp_codigo = O2.OCP_CODIGO '+
                                     '     JOIN prd0000 P1 ON O2.PRD_REFER = P1.prd_refer ',wSeleciona,wOrdem,'O1.');
             SqlCdsOC.Open;
         end;
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao pesquisar a ordem de compra !'+e.Message));
    end;
    Screen.Cursor := crDefault;
    //
    if LTBox.ItemIndex = 0 then  // COPIA DE ORDEM
       begin
           ImprimirOrdemComp;
           EditInicial.Text := '';
           EditFinal.Text   := '';
       end;
    if LTBox.ItemIndex = 1 then  // relatorio 1
       begin
           if RadVideo.Checked then
              begin
                  ppReport1.DeviceType := 'Screen';
              end else
           if RadImpressora.Checked then
              begin
                  ppReport1.DeviceType := 'Printer';
                  ppReport1.ShowPrintDialog := true;
              end;

           RBuilderPreview(ppReport1);
           EdtForn.Text      := '';
           CbxForn.ItemIndex := 0;
       end;
   if LTBox.ItemIndex = 2 then
      begin
          ImprimiCompraAlmox;
      end;

end;

// Impressão da cópia de Ordem de Compra (objeto RPrint).
procedure TFormGimpOC.ImprimirOrdemComp;
var
  wLinha:Integer;
  WCGC:String;
  Wvalor_total:string;
  WTOT_PRECO, WTOT_QTDE, WTOT_UNITARIO, WTOT_IPI, WTOT_GERAL, WTOT_GERAL_FINAL:Double;
begin

    if RadVideo.checked  then
       RDPrintOrdem.OpcoesPreview.Preview := True
    else
       RDPrintOrdem.OpcoesPreview.Preview := False;
    RDPrintOrdem.Abrir;
    RDPrintOrdem.Setup;
    while not SqlCdsOCN.Eof do
       begin
           // RDPrintOrdem.Imp(2, 1,'------------------------------------------------------------------------------------------------------------------------------------');
           RDPrintOrdem.ImpF(3,82,'ORDEM DE COMPRA Nº:',[Expandido]);
           RDPrintOrdem.ImpF(3,120,SqlCdsOCNOCP_CODIGO.AsString,[Expandido]);
           RDPrintOrdem.ImpF(4, 7, dbInicio.Empresa.RAZAO,[Expandido]);
           RDPrintOrdem.Imp(5, 7,'Endereço : '+dbInicio.Empresa.ENDERECO);
           RDPrintOrdem.Imp(5,82,'Bairro: '+dbInicio.Empresa.BAIRRO);
           RDPrintOrdem.Imp(6, 7,'Cidade   : '+Trim(dbInicio.Empresa.CIDADE)+' - '+dbInicio.Empresa.UF+' - CEP: '+dbInicio.Empresa.CEP);
           RDPrintOrdem.Imp(6,82,'Fone: '+dbInicio.Empresa.FONE);
           RDPrintOrdem.Imp(6,103,'Fax: '+dbInicio.Empresa.FAX);
           RDPrintOrdem.Imp(7, 7,'C.N.P.J. : '+dbInicio.Empresa.CNPJ_CNPF);
           RDPrintOrdem.Imp(7,82,'Insc.Estadual: '+dbInicio.Empresa.INSC_EST);
           RDPrintOrdem.Imp(8, 7,'Home Page: '+dbInicio.Empresa.HOME_PAGE);
           RDPrintOrdem.Imp(8,82,'Email: '+dbInicio.Empresa.EMAIL);
           RDPrintOrdem.Imp(9, 1,'------------------------------------------------------------------------------------------------------------------------------------');
           RDPrintOrdem.ImpF(10,7,'Data: '+SqlCdsOCNOCP_DTEMIS.AsString,[Expandido]);
           RDPrintOrdem.ImpF(10, 46,'limite p/ entrega: '+SqlCdsOCNOCP_DTENTREGA.AsString,[Expandido]);
           RDPrintOrdem.Imp(11, 1,'------------------------------------------------------------------------------------------------------------------------------------');
           //
           RDPrintOrdem.Imp(12, 7,'Contato: '+SqlCdsOCNFOR_CONTATO.AsString);
           RDPrintOrdem.Imp(12, 38,'Fone: '+MascaraFone(SqlCdsOCNFOR_FONCONT.AsString));
           RDPrintOrdem.Imp(12, 60,'Fax: '+MascaraFone(SqlCdsOCNFOR_FAXCONT.AsString));
           RDPrintOrdem.Imp(12, 82,'Email: '+SqlCdsOCNFOR_EMAILCONT.AsString);
           RDPrintOrdem.Imp(13, 1,'------------------------------------------------------------------------------------------------------------------------------------');
           RDPrintOrdem.Imp(14, 07,'Empresa: '+SqlCdsOCNFOR_CODIGO.AsString+'-'+SqlCdsOCNFOR_RAZAO.AsString);
           RDPrintOrdem.Imp(14, 82,'CNPJ: '+ MascaraCNPJ_CPF(SqlCdsOCNFOR_CGC.AsString));
           RDPrintOrdem.Imp(15, 07,'Endereço: '+SqlCdsOCNFOR_ENDERE.AsString);
           RDPrintOrdem.Imp(16, 07,'Cidade: '+SqlCdsOCNFOR_CIDADE.AsString);
           RDPrintOrdem.Imp(16, 56,'Estado: '+SqlCdsOCNFOR_UF.AsString);
           // CABEÇALHO DOS ITENS DA ORDEM //
           RDPrintOrdem.Imp(17, 1,'====================================================================================================================================');
           RDPrintOrdem.Imp(18, 1,'COD                  QTDE   UND   PRODUTO                                                 UNITÁRIO          TOTAL            IPI'    );
           RDPrintOrdem.Imp(19, 1,'------------------------------------------------------------------------------------------------------------------------------------');
           //
           WTOT_GERAL    := 0;
           WTOT_IPI      := 0;
           WTOT_PRECO    := 0;
           WTOT_QTDE     := 0;
           WTOT_UNITARIO := 0;
           wLinha := 20;   // deixando linha p/ 20 itens
           try
             SqlCdsItensOC.Close;
             SqlCdsItensOC.CommandText := SQLDEF('ORDENSCOMPRA','Select O2.OCP_CODIGO,O2.PRD_REFER,P1.PRD_DESCRI,P1.PRD_UND,O2.OCI_QTDES,O2.OCI_QTDER,O2.OCI_PRECO,O2.OCI_IPI,O2.OCI_SITUACAO from OCP_IT01 O2 '+
                                                 'JOIN PRD0000  P1 ON O2.prd_refer  = P1.prd_refer ','where O2.OCP_CODIGO = '''+SqlCdsOCNOCP_CODIGO.AsString+'''','O2.OCI_REGISTRO','O2.');
             SqlCdsItensOC.Open;
             SqlCdsItensOC.First;
           except on E:EDataBaseError do
             uteis.erro  (pchar('Erro ao localizar os itens da ordem de compra !'+e.message));
           end;
           while not SqlCdsItensOC.Eof do
              begin
                  RDPrintOrdem.Imp(wLinha, 1,SqlCdsItensOCPRD_REFER.AsString);
                  RDPrintOrdem.ImpVal(wLinha,12, '###,####0.0000',SqlCdsItensOCOCI_QTDES.AsCurrency,[]);
                  RDPrintOrdem.Imp(wLinha, 30,SqlCdsItensOCPRD_UND.AsString);
                  RDPrintOrdem.Imp(wLinha, 35,SqlCdsItensOCPRD_DESCRI.AsString);
                  { valor unitário}
                  RDPrintOrdem.ImpVal(wLinha, 89, '#,##0.0000',SqlCdsItensOCOCI_PRECO.AsCurrency,[]);
                  WTOT_UNITARIO:=(SqlCdsItensOCOCI_QTDES.AsCurrency*SqlCdsItensOCOCI_PRECO.AsCurrency);
                  {Total}
                  RDPrintOrdem.ImpVal(wLinha, 101, '#,###,##0.00',WTOT_UNITARIO,[]);
                  {IPI}
                  RDPrintOrdem.ImpVal(wLinha, 117,'#,###,##0.00',SqlCdsItensOCOCI_IPI.AsCurrency,[]);
                  //
                  WTOT_QTDE  := WTOT_QTDE      + SqlCdsItensOCOCI_QTDES.AsCurrency;// soma o total dos produtos.
                  WTOT_IPI   := WTOT_IPI       + (WTOT_UNITARIO * SqlCdsItensOCOCI_IPI.AsCurrency/100);// faz calculo do valor do IPI.
                  WTOT_PRECO := WTOT_PRECO     + WTOT_UNITARIO;// calculo do SubTotal e Soma do rodape de total.
                  WTOT_GERAL := (WTOT_UNITARIO + WTOT_GERAL);// FAZ CALCULO DO PREÇO TOTAL
                  WTOT_GERAL_FINAL := (WTOT_IPI+ WTOT_GERAL);
                  WLinha := WLinha + 1;
                  SqlCdsItensOC.Next;
              end;
           // totais //
           RDPrintOrdem.Imp(40, 1,'------------------------------------------------------------------------------------------------------------------------------------');
           RDPrintOrdem.Imp(41, 7,'Qtde Total:');
           RDPrintOrdem.ImpVal(41, 19,'###,##0',WTOT_QTDE,[]);
           RDPrintOrdem.Imp(41, 76,'Total:');
           RDPrintOrdem.ImpVal(41, 89,'#,###,##0.00', WTOT_PRECO,[]);
           RDPrintOrdem.Imp(42, 1,'====================================================================================================================================');
           RDPrintOrdem.Imp(43, 76,'IPI:');
           RDPrintOrdem.ImpVal(43, 89,'#,###,##0.00',WTOT_IPI,[]);
           RDPrintOrdem.Imp(44, 76,'TOTAL:');
           RDPrintOrdem.ImpVal(44, 89,'#,###,##0.00',WTOT_GERAL_FINAL,[]);
           RDPrintOrdem.Imp(45, 1,'====================================================================================================================================');
           // dados finais
           RDPrintOrdem.Imp(46, 7,'LOCAL DE ENTREGA  : '+dbInicio.Empresa.END_ENTREGA);
           RDPrintOrdem.Imp(47, 27,dbInicio.Empresa.CID_ENTREGA+' - '+dbInicio.Empresa.UF_ENTREGA+' - CEP: '+dbInicio.Empresa.CEP_ENTREGA);
           RDPrintOrdem.Imp(49, 7,'CONDIÇÕES DE PAGTO: '+SqlCdsOCNOCP_PRAZO.AsString);
           RDPrintOrdem.Imp(50, 7,'TRANSPORTADORA    :');
           // Localizar tranportadora
           RDPrintOrdem.Imp(50, 27,SqlCdsOCNTRP_RAZAO.AsString+' - Fone: '+MascaraFone(SqlCdsOCNTRP_FONE.AsString));
           RDPrintOrdem.Imp(51, 7,'OBSERVAÇÕES       :'+Copy(SqlCdsOCNOCP_OBS.AsString,1,105));
           RDPrintOrdem.Imp(52, 7,'                   '+Copy(SqlCdsOCNOCP_OBS.AsString,106,105));
           RDPrintOrdem.Imp(53, 7,'                   '+Copy(SqlCdsOCNOCP_OBS.AsString,211,105));
           RDPrintOrdem.Imp(54, 7,'                   '+Copy(SqlCdsOCNOCP_OBS.AsString,316,100));
           RDPrintOrdem.Imp(55, 7,'Nome do Requerente:'+SqlCdsOCNOCP_REQUERENTE.AsString);
           RDPrintOrdem.Imp(56, 66,'Assinatura:');
//             RDPrintOrdem.Imp(55, 1,'------------------------------------------------------------------------------------------------------------------------------------');
           SqlCdsOCN.Next;
           RDPrintOrdem.NovaPagina;
       end; // end primeiro while
     SqlCdsOCN.Close;
     SqlCdsItensOC.Close;
     RDPrintOrdem.Fechar;
end;

procedure TFormGimpOC.EditInicialExit(Sender: tObject);
begin
    if (ActiveControl.Name = 'Bit_Cancelar') then
       exit;
    EditInicial.Text := StrZero(EditInicial.Text,EditInicial.MaxLength);
    EditFinal.Text := EditInicial.Text;
end;

procedure TFormGimpOC.EditFinalExit(Sender: tObject);
begin
    if (ActiveControl.Name = 'Bit_Cancelar') or (ActiveControl.Name = 'EditInicial') then
       exit;
    EditFinal.Text := StrZero(EditFinal.Text,EditFinal.MaxLength);
    if EditFinal.Text < EditInicial.Text then
       begin
           uteis.aviso('Nº Final não pode ser menor que o Nº Inicial !');
           EditFinal.SetFocus;
       end;
end;

procedure TFormGimpOC.BitCancelarClick(Sender: tObject);
begin
    CLOSE;
end;

procedure TFormGimpOC.BitConfigClick(Sender: tObject);
begin
    PrinterSetupDialog1.Execute;
end;

procedure TFormGimpOC.EditDataIExit(Sender: tObject);
begin
    if not TestaDataStr(EditDataI.Text) then
       EditDataI.setfocus;
end;

procedure TFormGimpOC.EditDataFExit(Sender: tObject);
begin
    if not TestaDataStr(EditDataF.Text) then
       EditDataF.setfocus;
end;

procedure TFormGimpOC.LTBoxClick(Sender: tObject);
begin
    LayOutRel;
end;

procedure TFormGimpOC.EditDataIClick(Sender: tObject);
begin
    EditDataI.SelectAll;
end;

procedure TFormGimpOC.EditDataFClick(Sender: tObject);
begin
    EditDataF.SelectAll;
end;

procedure TFormGimpOC.EditInicialClick(Sender: tObject);
begin
    EditInicial.SelectAll;
end;

procedure TFormGimpOC.EditFinalClick(Sender: tObject);
begin
    EditFinal.SelectAll;
end;

procedure TFormGimpOC.LayOutRel;
begin
    if LTBox.ItemIndex = 0 then
       begin
           {Desabilitar}
           Grp01.Visible := false;
           Grp02.Visible := false;
           Grp03.Visible := false;
           {Habilitar}
           Grp04.Visible := true;
           {Posicionar}
           Grp04.Top     := 100;
           Grp05.Top     := 141;
       end;
    if LTBox.ItemIndex = 1 then
       begin
           {Desabilitar}
           Grp04.Visible := false;
           {Habilitar}
           Grp01.Visible := True;
           Grp02.Visible := true;
           Grp03.Visible := true;
           {Posicionar}
           Grp01.Top     := 100;
           Grp02.Top     := 141;
           Grp03.Top     := 182;
           Grp05.Top     := 222;
           EditDataI.Date := now;      // data de hoje
           EditDataF.Date := now;  //Data De Hoje.
       end;
    if LTBox.ItemIndex = 2 then
       begin
           {Desabilitar}
           Grp04.Visible := false;
           {Habilitar}
           Grp01.Visible := False;
           Grp02.Visible := false;
           Grp03.Visible := False;
           {Posicionar}
           Grp05.Top     := 100;

           EditDataI.Date := now;      // data de hoje
           EditDataF.Date := now;  //Data De Hoje.
       end;

    FormGimpOC.AutoSize := true;
end;

procedure TFormGimpOC.BuscaCodigo;
Var
  wCodigo : String[4];
begin
    CbxCod.ItemIndex := CbxForn.ItemIndex;
    wCodigo := Copy(CbxCod.Text,1,4);
    if SqlCdsForn.Locate('FOR_CODIGO',wCodigo,[])= true then
       EdtForn.Text := SqlCdsFornFOR_CODIGO.AsString
    else
       begin
           EdtForn.Text := '';
       end;
end;

procedure TFormGimpOC.CbxFornExit(Sender: tObject);
begin
    if EdtForn.Text <> '' then
       BuscaCodigo;
end;

procedure TFormGimpOC.EdtFornExit(Sender: tObject);
begin
    EdtForn.Text := StrZero(EdtForn.Text,EdtForn.MaxLength);
    if SqlCdsForn.Locate('FOR_CODIGO',EdtForn.Text,[])= true then
       begin
           CbxForn.Text := SqlCdsFornFOR_RAZAO.AsString;
       end
    else
       begin
           EdtForn.Text := '';
           CbxForn.SetFocus;
       end;
end;

procedure TFormGimpOC.CbxFornEnter(Sender: tObject);
begin
    CbxForn.SelectAll;
end;

procedure TFormGimpOC.CbxFornKeyPress(Sender: tObject; var Key: Char);
begin
    if key = #13 then
       begin
           if EdtForn.Text = '' then
              BuscaCodigo;
           key := #0;
       end;
end;

procedure TFormGimpOC.CbxFornClick(Sender: tObject);
begin
    if EdtForn.Text = '' then
       BuscaCodigo;
end;

procedure TFormGimpOC.SqlCdsOCCalcFields(DataSet: TDataSet);
begin
  SqlCdsOCOCI_SITUACAO_CC.AsString := IIF(SqlCdsOCOCI_SITUACAO.AsString = 'F','Parcial',IIF(SqlCdsOCOCI_SITUACAO.AsString = 'P','Pendente','Concluído'));
  SqlCdsOCOCI_TOTAL_CC.AsCurrency  := (SqlCdsOCOCI_QTDES.AsCurrency * SqlCdsOCOCI_PRECO.AsCurrency);
end;

procedure TFormGimpOC.FormClose(Sender: tObject; var Action: TCloseAction);
begin
    Screen.OnActiveControlChange := NIL;
    screen.Cursor := crHourGlass;
    try
      SqlCdsOCN.PacketRecords     := -1;
      SqlCdsOC.PacketRecords      := -1;
      SqlCdsItensOC.PacketRecords := -1;
      SqlCdsOCN.Close;
      SqlCdsOc.Close;
      SqlCdsItensOC.Close;
    except on E:EdataBaseError do
       uteis.erro  (pchar('Erro ao fechas as tabelas !'+e.message));
    end;
    screen.Cursor := crDefault;
end;

procedure TFormGimpOC.FormCreate(Sender: tObject);
begin
     PathNewRel := dbInicio.GetParametroSistema('PMT_PATHRELATORIO');
end;

procedure TFormGimpOC.pp00HeaderBand2BeforePrint(Sender: tObject);
begin
    LBL_00_EMPRESA.Caption := dbInicio.Empresa.Razao;
end;

procedure TFormGimpOC.ppDBText23GetText(Sender: TObject; var Text: string);
begin
  if Text <> '' then
    TEXT:= MascaraCNPJ_CPF(TEXT);
end;

procedure TFormGimpOC.ppSystemVariable1GetText(Sender: TObject; var Text: string);
begin
  text := FormatDateTime('dd/mm/yyyy hh:nn',now);
end;

procedure TFormGimpOC.ppSystemVariable2GetText(Sender: TObject; var Text: string);
begin
  Text:= StringReplace(TEXT,'Page','Pag.',[]);
  Text:= StringReplace(TEXT,'of','de',[]);
end;

procedure TFormGimpOC.ppSystemVariable3GetText(Sender: TObject; var Text: string);
begin
  text := FormatDateTime('dd/mm/yyyy hh:nn',now);
end;

procedure TFormGimpOC.ppSystemVariable4GetText(Sender: TObject; var Text: string);
begin
  Text:= StringReplace(TEXT,'Page','Pag.',[]);
  Text:= StringReplace(TEXT,'of','de',[]);
end;

procedure TFormGimpOC.ImprimiCompraAlmox;
var
wSQL1,wSQL2 :String;
begin
   {Imprimi relatorio de produtos solicitados pelo almoxarifado}
   SqlCdsCompraAlmox.Close;
   wSQL1 := 'select O1.OSI_EMP_PENDENTE,O1.PRD_REFER_ITENS, O1.OSV_CODIGO, P1.PRD_DESCRI, P1.PRD_PCUSTO, P1.PRD_ESTOQUE, P1.PRD_ENTRADA, P1.PRD_SAIDA, P1.PRD_EMPENHO,P1.PRD_PENDENTE from OSV_IT02 O1 '+
            '  left join PRD0000 P1 on (O1.PRD_REFER_ITENS = P1.PRD_REFER)';
   wSQL2 := '  where OSI_EMP_PENDENTE > ''0''';
   SqlCdsCompraAlmox.CommandText := sqldef('PRODUTOS',wSQL1,wSQL2,'O1.OSV_CODIGO','P1.');
   SqlCdsCompraAlmox.Open;
   Label_Empresa1.Caption := dbInicio.Empresa.RAZAO;
     if sqlCdsCompraAlmox.IsEmpty = true then
       Begin
            uteis.aviso('Não há produtos pendentes para compra !');
       end
    else
     begin
         if RadVideo.Checked then
             ppRAlmoxarifado.DeviceType := 'Screen'

        else
          if RadImpressora.checked  then
             ppRAlmoxarifado.DeviceType := 'Printer';

         ppRAlmoxarifado.Print;
     end;
     RBuilderPreview(ppRAlmoxarifado);



end;

procedure TFormGimpOC.SqlCdsCompraAlmoxCalcFields(DataSet: TDataSet);
begin
    SqlCdsCompraAlmoxCC_SALDO.AsCurrency := ((SqlCdsCompraAlmoxPRD_ESTOQUE.AsCurrency + SqlCdsCompraAlmoxPRD_ENTRADA.AsCurrency)-(SqlCdsCompraAlmoxPRD_SAIDA.AsCurrency + SqlCdsCompraAlmoxPRD_EMPENHO.AsCurrency));

    SqlCdsCompraAlmoxCC_CUSTO_TOTAL.AsCurrency := (SqlCdsCompraAlmoxPRD_PCUSTO.AsCurrency * SqlCdsCompraAlmoxOSI_EMP_PENDENTE.AsCurrency);

end;

end.
