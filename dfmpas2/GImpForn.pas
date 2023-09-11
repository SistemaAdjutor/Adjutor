unit GImpForn;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Mask, DBCtrls, ExtCtrls, Db, DBTables,RwFunc,
  Provider, SqlExpr,SqlClientDataSet, DBClient, DBLocal, DBLocalS, ppProd, ppClass,
  ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppModule, raCodMod, ppCtrls,
  ppBands, ppVar, ppPrnabl, ppCache, ppStrtch, ppSubRpt, frxClass, frxDBSet,
  ComboBoxRw, Data.DBXFirebird, ppDesignLayer, ppParameter, SimpleDS,
  SgDbSeachComboUnit, frxExportPDF, frxExportXLSX, frxExportXLS, Data.FMTBcd;


type
  TFormGImpForn = class(TForm)
    PrinterSetupDialog1: TPrinterSetupDialog;
    grp02: TGroupBox;
    GroupBox4: TGroupBox;
    LTBoxFornec: TListBox;
    GrpDispositivo: TGroupBox;
    RadVideo: TRadioButton;
    RadImpressora: TRadioButton;
    RadText: TRadioButton;
    grp01: TGroupBox;
    grp03: TGroupBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    grp00: TGroupBox;
    CbBoxTipoEtiq: TComboBox;
    RadCodigo: TRadioButton;
    RadAlfa: TRadioButton;
    CbAnalise: TComboBox;
    SqlCdsAnalise: TSQLClientDataSet;
    SqlCdsAnaliseCCT_CODIGO: TStringField;
    SqlCdsAnaliseCCT_DESCRI: TStringField;
    SqlCdsAnaliseEMP_CODIGO: TStringField;
    SqlCdsFornece: TSQLClientDataSet;
    DsFornece: TDataSource;
    ppDBFornece: TppDBPipeline;
    ppRP00: TppReport;
    SqlCdsForneceFOR_CODIGO: TStringField;
    SqlCdsForneceFOR_RAZAO: TStringField;
    SqlCdsForneceFOR_CIDADE: TStringField;
    SqlCdsForneceFOR_UF: TStringField;
    SqlCdsForneceFOR_FONE: TStringField;
    SqlCdsForneceFOR_CONTATO: TStringField;
    SqlCdsForneceFOR_FONCONT: TStringField;
    SqlCdsForneceCCT_CODIGO: TStringField;
    SqlCdsForneceEMP_CODIGO: TStringField;
    SqlCdsForneceFOR_ENDERE: TStringField;
    SqlCdsForneceFOR_BAIRRO: TStringField;
    SqlCdsForneceFOR_CEP: TStringField;
    ppRP01: TppReport;
    ppColumnHeaderBand1: TppColumnHeaderBand;
    ppDetailEtiq: TppDetailBand;
    ppDBText22: TppDBText;
    ppDBText62: TppDBText;
    ppDBText63: TppDBText;
    ppDBTextCep: TppDBText;
    ppVariable1: TppVariable;
    ppVariable2: TppVariable;
    ppColumnFooterBand1: TppColumnFooterBand;
    raCodeModule1: TraCodeModule;
    SqlCdsFor02: TSQLClientDataSet;
    DsFor02: TDataSource;
    ppDBFor02: TppDBPipeline;
    ppRelFor02: TppReport;
    DsFor021: TDataSource;
    SqlCdsFor021: TSQLClientDataSet;
    SqlCdsFor021FOR_CODIGO: TStringField;
    SqlCdsFor021PRD_REFER: TStringField;
    SqlCdsFor021PRD_DESCRI: TStringField;
    SqlCdsFor021PRD_PCUSTO: TFMTBCdField;
    SqlCdsFor021PRD_CUSTOCOMIPI: TFMTBCdField;
    grp04: TGroupBox;
    CbFor: TComboBox;
    EdtFor: TEdit;
    SqlCdsFor: TSQLClientDataSet;
    SqlCdsForFOR_CODIGO: TStringField;
    SqlCdsForFOR_RAZAO: TStringField;
    EdtCCT: TEdit;
    SqlCdsFor02FOR_CODIGO: TStringField;
    SqlCdsFor02FOR_RAZAO: TStringField;
    SqlCdsFor02FOR_ENDERE: TStringField;
    SqlCdsFor02FOR_BAIRRO: TStringField;
    SqlCdsFor02FOR_CEP: TStringField;
    SqlCdsFor02FOR_CIDADE: TStringField;
    SqlCdsFor02FOR_UF: TStringField;
    SqlCdsFor02FOR_FONE: TStringField;
    SqlCdsFor02FOR_CONTATO: TStringField;
    SqlCdsFor02FOR_FONCONT: TStringField;
    SqlCdsFor02EMP_CODIGO: TStringField;
    SqlCdsFor02CCT_CODIGO: TStringField;
    ppHeaderBand2: TppHeaderBand;
    ppLine30: TppLine;
    LBL_02_EMPRESA: TppLabel;
    LBL_02_LTITULO1: TppLabel;
    LBL_02_LTITULO2: TppLabel;
    ppSystemVariable13: TppSystemVariable;
    ppSystemVariable14: TppSystemVariable;
    ppDetailBand1: TppDetailBand;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppLine2: TppLine;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLine3: TppLine;
    ppLabel14: TppLabel;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppSubFor021: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppLine4: TppLine;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    raCodeModule3: TraCodeModule;
    ppLine7: TppLine;
    SqlCdsFor021PRD_UND: TStringField;
    ppDBFor021: TppDBPipeline;
    ppLabel19: TppLabel;
    ppDBText19: TppDBText;
    pp00HeaderBand2: TppHeaderBand;
    ppLine5: TppLine;
    LBL_00_EMPRESA: TppLabel;
    LBL_00_LTITULO1: TppLabel;
    LBL_00_LTITULO2: TppLabel;
    ppLine6: TppLine;
    ppSystemVariable3: TppSystemVariable;
    ppSystemVariable4: TppSystemVariable;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLine1: TppLine;
    ppLabel7: TppLabel;
    pp00DetailBand2: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    pp00SummaryBand2: TppSummaryBand;
    ppLine9: TppLine;
    ppLabel25: TppLabel;
    ppDBCalc2: TppDBCalc;
    raCodeModule2: TraCodeModule;
    ppLabel20: TppLabel;
    ppDBText20: TppDBText;
    SqlCdsFor021ENF_ENTRADA: TDateField;
    CdsFornecedorMateria: TSQLClientDataSet;
    CdsFornecedorMateriaFOR_CODIGO: TStringField;
    CdsFornecedorMateriaFOR_RAZAO: TStringField;
    CdsFornecedorMateriaFOR_CIDADE: TStringField;
    CdsFornecedorMateriaFOR_UF: TStringField;
    CdsFornecedorMateriaFOR_FONE: TStringField;
    CdsFornecedorMateriaFOR_CONTATO: TStringField;
    CdsFornecedorMateriaFOR_FAX: TStringField;
    CdsFornecedorMateriaPRD_REFER: TStringField;
    CdsFornecedorMateriaPRD_DESCRI: TStringField;
    CdsFornecedorMateriaPRD_UND: TStringField;
    CdsFornecedorMateriaPRD_PCUSTO: TFMTBCdField;
    CdsFornecedorMateriaPRD_CUSTOCOMIPI: TFMTBCdField;
    CdsFornecedorMateriaENF_ENTRADA: TDateField;
    frx: TfrxReport;
    frxdbFornecedorMateria: TfrxDBDataset;
    grpTipo: TGroupBox;
    cbTipoProduto: TComboBoxRw;
    frxColaborador: TfrxReport;
    frxDBColaborador: TfrxDBDataset;
    SqlCdsForneceFOR_CGC: TStringField;
    ppDBText7: TppDBText;
    frxProdPorForn: TfrxReport;
    frxPDFExport1: TfrxPDFExport;
    frxXLSExport1: TfrxXLSExport;
    frxXLSXExport1: TfrxXLSXExport;
    procedure BitConfigClick(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure FormShow(Sender: tObject);
    procedure BitOkClick(Sender: tObject);
    procedure BitCancelarClick(Sender: tObject);
    procedure CbBoxTipoEtiqClick(Sender: tObject);
    procedure LTBoxFornecClick(Sender: tObject);
    procedure CbAnaliseClick(Sender: tObject);
    procedure pp00HeaderBand2BeforePrint(Sender: tObject);
    procedure FormCloseQuery(Sender: tObject; var CanClose: Boolean);
    procedure ppRP01PreviewFormCreate(Sender: tObject);
    procedure EdtForClick(Sender: tObject);
    procedure EdtForKeyPress(Sender: tObject; var Key: Char);
    procedure EdtCCTClick(Sender: tObject);
    procedure EdtForExit(Sender: tObject);
    procedure EdtCCTExit(Sender: tObject);
    procedure CbAnaliseExit(Sender: tObject);
    procedure CbForClick(Sender: tObject);
    procedure CbForExit(Sender: tObject);
    procedure frxGetValue(const VarName: String; var Value: Variant);
    procedure SqlCdsForneceFOR_CGCGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure ppDBText6GetText(Sender: TObject; var Text: string);
    procedure frxProdPorFornGetValue(const VarName: string; var Value: Variant);
  private

    { Private declarations }
    {campos}
    CampoBox     :TComboBox;
    procedure MudaCorCampos(Sender: tObject);
    procedure LayOutForm;

  public
    { Public declarations }
  end;

var
  FormGImpForn: TFormGImpForn;
  // Parametros do relatório
    wNumeroColunas  :Integer;
    wEspacoColuna1  :INTEGER;
    wEspacoColuna2  :INTEGER;
    wEspacoColuna3  :INTEGER;
    wMargemEsquerta :Extended;
    wMargemDireita  :Extended;
    wPagLargura     :Extended;
    wPagComprimento :Extended;
    wMargemTopo     :Extended;
    wMargemRodape   :Extended;
    // Parametros da Etiqueta
    wLarguraEtiq    :Extended;
    wComprimentoEtiq:Extended;
    wEntreLinhasEtiq:Extended;

implementation

uses Uteis, DataCad, Men0001, ufrmpreviewrb, iniciodb;

{$R *.DFM}





procedure TFormGImpForn.MudaCorCampos(Sender: tObject);
begin
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
end;

procedure TFormGImpForn.BitConfigClick(Sender: tObject);
begin
    PrinterSetupDialog1.Execute;
end;

procedure TFormGImpForn.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
    Screen.OnActiveControlChange := NIL;
    Close;
end;

procedure TFormGImpForn.FormShow(Sender: tObject);
begin
    Left :=  74;
    Top  := 334;
    Screen.cursor := crHourGlass;
    //
    {ativa o método ao evento OnActiveControlChange}
    Screen.OnActiveControlChange   := MudaCorCampos;
    wSql1 := '';
    wSeleciona := '';
    wOrdem     := '';
    try
      SqlCdsAnalise.Close;
      SqlCdsAnalise.CommandText:=SQLDEF('TABELAS','SELECT CCT_CODIGO, CCT_DESCRI, EMP_CODIGO FROM CCT_0000','','CCT_DESCRI','');
      SqlCdsAnalise.Open;
      SqlCdsAnalise.First;
      while not SqlCdsAnalise.Eof do
        begin
            CbAnalise.Items.Add(SqlCdsAnaliseCCT_DESCRI.AsString);
            SqlCdsAnalise.Next;
        end;
      SqlCdsFor.Close;
      SqlCdsFor.CommandText := SQLDEF('FORNECEDORES','SELECT F1.FOR_CODIGO,FOR_RAZAO FROM FOR0000 F1 ','','F1.FOR_RAZAO','F1.');
      SqlCdsFor.Open;
      SqlCdsFor.First;
      CbFor.Items.Clear;
      CbFor.Items.Add('TODOS OS FORNECEDORES');
      While not SqlCdsFor.Eof do
       begin
           CbFor.Items.Add(SqlCdsForFOR_RAZAO.AsString);
           SqlCdsFor.Next;
       end;
      EdtFor.Text     := '9999';
      CbFor.ItemIndex := 0;
    except on E:EdatabaseError do
        begin
            uteis.erro  (Pchar('Erro ao Carregar as Combos !'+e.message));
        end;
    end;
    CbAnalise.ItemIndex := 0;

    cbTipoProduto.CarregarCombo := True;

    // carregar combo com nome dos relatórios
    LTBoxFornec.Items.Add('Relatório de Fornecedores');
    LTBoxFornec.Items.Add('Relatório de Fornecedores e produtos que fornecem');
    LTBoxFornec.Items.Add('Etiqueta de Fornecedores');
    LTBoxFornec.Items.Add('Relatório de Produto por fornecedores');

    LTBoxFornec.ItemIndex :=0;   // seta no primeiro item
    // carrega combo c/ tipos de etiquetas
    CbBoxTipoEtiq.Items.Clear;
    CbBoxTipoEtiq.Items.Add('Matricial    - 2 Col - Tam. 2,38 x  8,89 cm - Folio(21,59 x 33,02)');
    CbBoxTipoEtiq.Items.Add('Matricial    - 3 Col - Tam. 3,60 x 10,30 cm - Ledger(43,18 x 27,94)');
    CbBoxTipoEtiq.Items.Add('Laser e Jato - 2 Col - Tam. 2,54 x 10,16 cm - Carta(21,59 x 27,94)');
    CbBoxTipoEtiq.Items.Add('Laser e Jato - 2 Col - Tam. 3,39 x 10,16 cm - Carta(21,59 x 27,94)');
    CbBoxTipoEtiq.ItemIndex := 0;
    {Carrega a Etiqueta Padrão}
    // Matricial -  2 Col - 2,38 x 8,89 cm
    // Parametros do Report (folio)
    wNumeroColunas  := 2;
    wMargemEsquerta := 5;
    wMargemDireita  := 5;
    wPagLargura     := 216;
    wPagComprimento := 279;
    wMargemTopo     := 0;
    wMargemRodape   := 0;
    // Parametros da Etiqueta
    wLarguraEtiq    := 23;
    wComprimentoEtiq:= 99;
    wEntreLinhasEtiq:= 1;
    wEspacoColuna1  := 5;
    wEspacoColuna2  := 100;
    LTBoxFornec.ItemIndex := 0;
    LayOutForm;
    Screen.Cursor := crdefault;

end;

procedure TFormGImpForn.BitOkClick(Sender: tObject);
begin
    if RadAlfa.checked  then
       begin
           wOrdem:='F1.FOR_RAZAO';
       end
    else
       begin
           wOrdem:='F1.FOR_CODIGO';
       end;
    try
    screen.cursor := crHourGlass;
    if (LTBoxFornec.ItemIndex=0) or (LTBoxFornec.ItemIndex=2) then
     begin
         if (LTBoxFornec.ItemIndex=0) then
            begin
                if CbAnalise.ItemIndex<>0 then
                   begin
                       wSeleciona:=' WHERE F1.CCT_CODIGO='''+EdtCCT.Text+'''';
                   end
                else
                   begin
                       wSeleciona:='';
                   end;
            end;
         if (LTBoxFornec.ItemIndex=2) then
            begin
                if (EdtFor.Text<>'9999') then
                   begin
                       wSeleciona := 'WHERE FOR_CODIGO = '''+EdtFor.Text+'''';
                   end
                else
                   begin
                       wSeleciona := '';
                   end;
            end;
         try
           wSql1 := 'SELECT FOR_CGC, F1.FOR_CODIGO,F1.FOR_RAZAO,F1.FOR_ENDERE,F1.FOR_BAIRRO,F1.FOR_CEP,F1.FOR_CIDADE,F1.FOR_UF,F1.FOR_FONE,F1.FOR_CONTATO,F1.FOR_FONCONT,F1.CCT_CODIGO,F1.EMP_CODIGO FROM FOR0000 F1 ';
           SqlCdsFornece.Close;
           SqlCdsFornece.CommandText:=SQLDEF('FORNECEDORES',wSql1,wSeleciona,wOrdem,'F1.');
           SqlCdsFornece.Open;
         except on E:EdatabaseError do
           begin
               uteis.erro  (Pchar('Erro ao abrir tabela FORNECEDORES !'+e.message));
           end;
         end;
         screen.cursor := crDefault;
         if LTBoxFornec.ItemIndex = 0 then
            begin
                LBL_00_LTitulo1.Caption := 'Relatório de Fornecedores da Conta de Análise : '+IIF(CbAnalise.ItemIndex<>0,CbAnalise.Text,'TODAS AS CONTAS DE ANALISE');
                LBL_00_LTITULO2.Caption := IIF(RADCODIGO.Checked,'ORDEM POR CÓDIGO','ORDEM ALFABETICA');
                if RadVideo.Checked then
                   begin
                       ppRP00.DeviceType:='Screen';
                   end else
                if RadImpressora.checked  then
                   begin
                       ppRP00.DeviceType:='Printer';
                       ppRP00.ShowPrintDialog := true;
                   end;

                RBuilderPreview(ppRP00);
            end;
         if LTBOXFornec.ItemIndex = 2 then
            begin
                if RadVideo.Checked then
                   begin
                       ppRP01.DeviceType:='Screen';
                   end else
                if RadImpressora.Checked then
                   begin
                       ppRP01.DeviceType:='Printer';
                       ppRP01.ShowPrintDialog := True;
                   end;

                RBuilderPreview(ppRP01);
            end;
            LTBoxFornec.SetFocus;
            RadVideo.Checked:=true;
     end
    else
    if (LTBoxFornec.ItemIndex in [1,3]) then
    begin
         try
           if (EdtFor.Text<>'9999') then
            begin
                wSeleciona := ' WHERE f1.FOR_CODIGO = '+QuotedStr( EdtFor.Text);
                LBL_02_LTITULO2.Caption := 'FORNECEDOR : '+EdtFor.Text+'- '+CbFor.Text;
            end
           else
            begin
                wSeleciona := '';
                LBL_02_LTITULO2.Caption := 'FORNECEDOR : TODOS OS FORNECEDORES ';
            end;
           if (cbTipoProduto.idRetorno <>'') then
            begin
                if (wSeleciona = '') then
                    wSeleciona := ' WHERE PTI_CODIGO = '''+cbTipoProduto.CodigoLista+''' '
                else
                    wSeleciona := wSeleciona+' and PTI_CODIGO = '''+cbTipoProduto.CodigoLista+''' ';
                LBL_02_LTITULO2.Caption := LBL_02_LTITULO2.Caption+ ' TIPO : '+cbTipoProduto.Text;
            end;

            if wSeleciona = '' then
              wSeleciona:= ConcatSe( ' WHERE f1.', dbInicio.ExclusivoSql('PRODUTOS') )
            Else
              wSeleciona:= wSeleciona+ ConcatSe( ' and f1.', dbInicio.ExclusivoSql('PRODUTOS') ) ;


           CdsFornecedorMateria.Close;
           CdsFornecedorMateria.CommandText := 'SELECT '+
                                               'F1.FOR_CODIGO, '+
                                               'FOR1.FOR_RAZAO, '+
                                               'FOR1.FOR_CIDADE, '+
                                               'FOR1.FOR_UF, '+
                                               'FOR1.FOR_FONE, '+
                                               'FOR1.FOR_CONTATO, '+
                                               'FOR1.FOR_FAX, '+
                                               'F1.PRD_REFER, '+
                                               'P1.PRD_DESCRI, '+
                                               'P1.PRD_UND, '+
                                               ' 0.000 as prd_pcusto ,'+
                                               ' 0.000 as prd_pcusto2 ,'+
                                               ' 0.000 as prd_pcusto3 ,'+
//                                                 '(select first 1 T1.ENF_CUSTO from ENF_IT01 T1 JOIN ENF0001 T2 ON (T2.ENF_NOTANUMBER = T1.ENF_IT_NOTANUMBER AND T2.FOR_CODIGO = T1.FOR_CODIGO) '+
//                                                 'LEFT JOIN PRD0000 P1 ON (T1.PRD_REFER = P1.PRD_REFER) WHERE T1.FOR_CODIGO = F1.FOR_CODIGO AND T1.PRD_REFER = F1.PRD_REFER ORDER BY T2.ENF_ENTRADA '+
//                                                 ' DESC , T2.ENF_REGISTRO DESC) as PRD_PCUSTO, '+
                                               '(select first 1 T1.ENF_CUSTO + (T1.ENF_CUSTO * (T1.ENF_IPIALIQ/100)) from ENF_IT01 T1 JOIN ENF0001 T2 ON (T2.ENF_NOTANUMBER = T1.ENF_IT_NOTANUMBER '+
                                               'AND T2.FOR_CODIGO = T1.FOR_CODIGO) LEFT JOIN PRD0000 P1 ON (T1.PRD_REFER = P1.PRD_REFER) WHERE T1.FOR_CODIGO = F1.FOR_CODIGO AND T1.PRD_REFER = F1.PRD_REFER '+
                                               'ORDER BY T2.ENF_ENTRADA DESC , T2.ENF_REGISTRO DESC) as PRD_CUSTOCOMIPI, '+
                                               '(select first 1 T2.ENF_ENTRADA from ENF_IT01 T1 JOIN ENF0001 T2 ON (T2.ENF_NOTANUMBER = T1.ENF_IT_NOTANUMBER AND T2.FOR_CODIGO = T1.FOR_CODIGO) '+
                                               'LEFT JOIN PRD0000 P1 ON (T1.PRD_REFER = P1.PRD_REFER and p1.EMP_CODIGO = t1.EMP_CODIGO) WHERE T1.FOR_CODIGO = F1.FOR_CODIGO AND T1.PRD_REFER = F1.PRD_REFER '+
                                               'ORDER BY T2.ENF_ENTRADA DESC , T2.ENF_REGISTRO DESC) as ENF_ENTRADA '+
                                               'FROM FOR_PROD F1 '+
                                               ' JOIN FOR0000 FOR1 ON (FOR1.FOR_CODIGO = F1.FOR_CODIGO) '+
                                               ' JOIN PRD0000 P1 ON (F1.PRD_REFER = P1.PRD_REFER) '+
                                               wSeleciona+
                                               ' ORDER BY FOR1.FOR_RAZAO,P1.PRD_DESCRI';
           CdsFornecedorMateria.Open;
           if CdsFornecedorMateria.RecordCount = 0  then
              raise Exception.Create('Não foram encontrados fornecedores com este critério');
           if LTBoxFornec.ItemIndex  = 1 then
             frx.ShowReport();


          if (LTBoxFornec.ItemIndex=3) then
          begin
              CdsFornecedorMateria.First;
              try
                  CdsFornecedorMateria.IndexDefs.Find('FornProd')
                except
                  CdsFornecedorMateria.AddIndex('FornProd','FOR_RAZAO;PRD_DESCRI',[]);
                end;
                CdsFornecedorMateria.IndexName := 'FornProd';
              frxProdPorForn.ShowReport(True);
              CdsFornecedorMateria.IndexDefs.clear;
              CdsFornecedorMateria.IndexName := '';
              CdsFornecedorMateria.Close;
          end;
         except on E:EdatabaseError do
           begin
               uteis.erro  (Pchar('Erro ao abrir tabela FORNECEDORES !'+e.message));
           end;
         end;    end;

    finally

     screen.cursor := crDefault;

    end;
end;


procedure TFormGImpForn.BitCancelarClick(Sender: tObject);
begin
  Close;
end;

procedure TFormGImpForn.CbBoxTipoEtiqClick(Sender: tObject);
begin
    {Parametros de tipo de etiquetas conforme selecionado  }
    if CbBoxTipoEtiq.ItemIndex = 0 then
      begin
          // Matricial -  2 Col - 2,38 x 8,89 cm
          // Parametros do Report (folio)
          wNumeroColunas  := 2;
          wMargemEsquerta := 5;
          wMargemDireita  := 5;
          wPagLargura     := 216;
          wPagComprimento := 279;
          wMargemTopo     := 0;
          wMargemRodape   := 0;
          // Parametros da Etiqueta
          wLarguraEtiq    := 23;
          wComprimentoEtiq:= 99;
          wEntreLinhasEtiq:= 1;
          wEspacoColuna1  := 5;
          wEspacoColuna2  := 100;
      end;

    if CbBoxTipoEtiq.ItemIndex = 1 then
      begin
          // Matricial -  3 Col - 3,6 x 10,3 cm(usando somente 2 colunas)
          // Parametros do Report ()
          wNumeroColunas  := 3;
          wMargemEsquerta := 12;
          wMargemDireita  := 5;
          wPagLargura     := 337;
          wPagComprimento := 304;
          wMargemTopo     := 0.00;
          wMargemRodape   := 0.0;
          // Parametros da Etiqueta
          wLarguraEtiq    := 36;
          wComprimentoEtiq:= 99;
          wEntreLinhasEtiq:= 1;
          wEspacoColuna1  := 12;
          wEspacoColuna2  := 117;
          wEspacoColuna3  := 222;
      end;

    if CbBoxTipoEtiq.ItemIndex = 2 then
      begin
          // Laser e Jato de tinta -  2 Col - 2,54 x 10,16 cm
          // Parametros do Report
          wNumeroColunas  := 2;
          wMargemEsquerta := 3;
          wMargemDireita  := 0.00;
          wPagLargura     := 216;
          wPagComprimento := 279;
          wMargemTopo     := 21;
          wMargemRodape   := 21;
          // Parametros da Etiqueta
          wLarguraEtiq    := 23;
          wComprimentoEtiq:= 99;
          wEntreLinhasEtiq:= 1;
          wEspacoColuna1  := 3;
          wEspacoColuna2  := 110;
      end;
    if CbBoxTipoEtiq.ItemIndex = 3 then
      begin
          // Laser e Jato de tinta -  2 Col - 3,39 x 10,16 cm
          // Parametros do Report
          wNumeroColunas  := 2;
          wMargemEsquerta := 3;
          wMargemDireita  := 0;
          wPagLargura     := 216;
          wPagComprimento := 279;
          wMargemTopo     := 20;
          wMargemRodape   := 20;
          // Parametros da Etiqueta
          wLarguraEtiq    := 33.9;
          wComprimentoEtiq:= 99;
          wEntreLinhasEtiq:= 0;
          wEspacoColuna1  := 3;
          wEspacoColuna2  := 110;
      end;
end;

procedure TFormGImpForn.LTBoxFornecClick(Sender: tObject);
begin
    LayOutForm;
end;

procedure TFormGImpForn.CbAnaliseClick(Sender: tObject);
begin
    if (CbAnalise.ItemIndex<>0) then
       begin
           if SqlCdsAnalise.Locate('CCT_DESCRI',CbAnalise.Text,[])  then
              begin
                  EdtCCT.Text := SqlCdsAnaliseCCT_CODIGO.AsString;
              end
           else
              begin
                  CbAnalise.Text := 'TODAS AS CONTAS ANALISE';
                  EdtCCT.Text    := '999';
              end;
       end
    else
       begin
           CbAnalise.Text := 'TODAS AS CONTAS ANALISE';
           EdtCCT.Text    := '999';
       end;
end;

procedure TFormGImpForn.pp00HeaderBand2BeforePrint(Sender: tObject);
begin
    LBL_00_EMPRESA.Caption:=dbInicio.Empresa.Razao;
end;

procedure TFormGImpForn.ppDBText6GetText(Sender: TObject; var Text: string);
begin
  if Text <> '' then
   text := MascaraCNPJ_CPF(Text);
end;

procedure TFormGImpForn.FormCloseQuery(Sender: tObject;
  var CanClose: Boolean);
begin
    try
      SqlCdsAnalise.Close;
      SqlCdsFornece.Close;
      cbTipoProduto.CarregarCombo := False;
    except on E:EdatabaseError do
      uteis.erro  ('Impossível fechar a tabela Fornecedores !');
    end;
end;

procedure TFormGImpForn.ppRP01PreviewFormCreate(Sender: tObject);
begin
    {Recebe parametros da Etiqueta definido nas variáveis do gerenciador}
    ppRP01.Columns                  :=wNumeroColunas;
    ppRP01.PrinterSetup.MarginLeft  :=wMargemEsquerta;
    ppRP01.PrinterSetup.MarginRight :=wMargemDireita;
    ppRP01.PrinterSetup.PaperWidth  :=wPagLargura;
    ppRP01.PrinterSetup.PaperHeight :=wPagComprimento;
    ppRP01.PrinterSetup.MarginTop   :=wMargemTopo;
    ppRP01.PrinterSetup.MarginBottom:=wMargemRodape;
    {Parametros do tamanho da Etiqueta na Band}
    ppDetailEtiq.Height             :=wLarguraEtiq;
    ppRP01.ColumnWidth              :=wComprimentoEtiq;
    ppDetailEtiq.BottomOffset       :=wEntreLinhasEtiq;
    ppDetailEtiq.ColumnTraversal    :=ctLeftToRight;
    ppRP01.ColumnPositions.Clear;
    ppRP01.ColumnPositions.Add(INTTOSTR(wEspacoColuna1));
    ppRP01.ColumnPositions.Add(INTTOSTR(wEspacoColuna2));
    if ppRP01.Columns = 3 then
       begin
           ppRP01.ColumnPositions.Add(INTTOSTR(wEspacoColuna3));
       end;
end;

procedure TFormGImpForn.SqlCdsForneceFOR_CGCGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  if sender.AsString <> '' then
    text := MascaraCNPJ_CPF(sender.AsString);
end;

procedure TFormGImpForn.LayOutForm;
begin
    grpTipo.Visible  := False;
    if LTBoxFornec.ItemIndex = 0 then
       begin
           //FormGImpForn.Left :=  74;
           //FormGImpForn.Top  := 332;
           grp00.Visible := False;
           grp04.Visible := False;
           grp01.Visible := true;
           grp02.Visible := true;
           grp01.Top     := 100;
           grp02.Top     := 100;
           grp03.Top     := 141;

       end;
    if LTBoxFornec.ItemIndex = 1 then
       begin
           //FormGImpForn.Left :=  74;
           //FormGImpForn.Top  := 332;
           grp00.Visible := False;
           grp01.Visible := true;
           grp02.Visible := False;
           grp04.Visible := true;
           grpTipo.Visible  := True;
           grp04.Top     := 100;
           grpTipo.Top   := 141;
           grp03.Top     := 182;

       end;
    If LTBoxFornec.ItemIndex = 2 then
       begin
           //FormGImpForn.Left :=  74;
           //.Top  := 291;
           grp00.Visible := true;
           grp04.Visible := True;
           grp01.Visible := false;
           grp02.Visible := True;

           grp00.Top     := 100;
           grp02.Top     := 141;
           grp04.Top     := 141;
           grp03.Top     := 182;
       end;
    If LTBoxFornec.ItemIndex = 3 then
       begin
           //FormGImpForn.Left :=  74;
           //.Top  := 291;
           grp00.Visible := False;
           grp04.Visible := True;
           grp01.Visible := false;
           grp02.Visible := False;
           grp04.Top     := 100;
           grp03.Top     := 141;
       end;
    FormGimpForn.AutoSize := True;
end;

procedure TFormGImpForn.EdtForClick(Sender: tObject);
begin
    EdtFor.SelectAll;
end;

procedure TFormGImpForn.EdtForKeyPress(Sender: tObject; var Key: Char);
begin
    if not (key in ['0'..'9',#8]) then
       begin
          //beep;
          Key := #0;
       end;
end;

procedure TFormGImpForn.EdtCCTClick(Sender: tObject);
begin
    EdtCCT.SelectAll;
end;

procedure TFormGImpForn.EdtForExit(Sender: tObject);
begin
    EdtFor.Text := StrZero(EdtFor.Text,EdtFor.MaxLength);
    if EdtFor.Text <> '9999' then
       begin
           if SqlCdsFor.Locate('FOR_CODIGO',EdtFor.Text,[]) then
              begin
                  CbFor.Text := SqlCdsForFOR_RAZAO.AsString;
              end
           else
              begin
                  CbFor.ItemIndex := 0;
                  CbFor.Text      := 'TODOS OS FORNECEDORES';
                  EdtFor.Text     := '9999';
              end;
       end
    else
       begin
           CbFor.ItemIndex := 0;
           CbFor.Text      := 'TODOS OS FORNECEDORES';
           EdtFor.Text     := '9999';
       end;
end;

procedure TFormGImpForn.EdtCCTExit(Sender: tObject);
begin
    EdtCCT.Text := StrZero(EdtCCT.Text,EdtCCT.MaxLength);
    if EdtCCT.Text <> '999' then
       begin
           if SqlCdsAnalise.Locate('CCT_CODIGO',EdtCCT.Text,[]) then
              begin
                  CbAnalise.Text := SqlCdsAnaliseCCT_DESCRI.AsString;
              end
           else
              begin
                  CbAnalise.ItemIndex := 0;
                  EdtCCT.Text         := '999';
              end;
       end
    else
       begin
           CbAnalise.ItemIndex := 0;
           EdtCCT.Text         := '999';
       end;
end;

procedure TFormGImpForn.CbAnaliseExit(Sender: tObject);
begin
    if (CbAnalise.ItemIndex <> 0) AND (EdtCCT.Text <> '999') then
       begin
           if SqlCdsAnalise.Locate('CCT_DESCRI',CbAnalise.Text,[]) then
              begin
                  EdtCCT.Text := SqlCdsAnaliseCCT_CODIGO.AsString;
              end
           else
              begin
                  uteis.aviso('Conta analise não encontrado !');
                  CbAnalise.ItemIndex := 0;
                  EdtCCT.Text         := '999';
              end;
       end
    else
       begin
           CbAnalise.ItemIndex := 0;
           EdtCCT.Text         := '999';
       end;
end;

procedure TFormGImpForn.CbForClick(Sender: tObject);
begin
    if (CbFor.ItemIndex<>0) then
       begin
           if SqlCdsFor.Locate('FOR_RAZAO',CbFor.Text,[]) then
              begin
                  EdtFor.Text := SqlCdsForFOR_CODIGO.AsString;
              end
           else
              begin
                  CbFor.ItemIndex := 0;
                  CbFor.Text      := 'TODOS OS FORNECEDORES';
                  EdtFor.Text     := '9999';
              end;
       end
    else
       begin
           CbFor.ItemIndex := 0;
           CbFor.Text  := 'TODOS OS FORNECEDORES';
           EdtFor.Text := '9999';
       end;
end;

procedure TFormGImpForn.CbForExit(Sender: tObject);
begin
    if (EdtFor.Text <> '9999') then
       begin
           if SqlCdsFor.Locate('FOR_RAZAO',CbFor.Text,[])  then
              begin
                  EdtFor.Text := SqlCdsForFOR_CODIGO.AsString;
              end
           else
              begin
                  uteis.aviso('Fornecedor não encontrado !');
                  CbFor.ItemIndex := 0;
                  CbFor.Text      := 'TODOS OS FORNECEDORES';
                  EdtFor.Text     := '9999';
              end;
       end
    else
       begin
           CbFor.ItemIndex := 0;
           CbFor.Text      := 'TODOS OS FORNECEDORES';
           EdtFor.Text     := '9999';
       end;
end;

procedure TFormGImpForn.frxGetValue(const VarName: String;
  var Value: Variant);
begin
   if (VarName = 'Empresa') then
      Value := dbInicio.Empresa.RAZAO
   else
   if (VarName = 'Filtro') then
      Value := LBL_02_LTITULO2.Caption;
end;

procedure TFormGImpForn.frxProdPorFornGetValue(const VarName: string; var Value: Variant);
begin
  if (VarName = 'Empresa') then
    Value := dbInicio.Empresa.RAZAO;
end;

end.
