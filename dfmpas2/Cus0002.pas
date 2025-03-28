unit Cus0002;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, Mask, Buttons, ExtCtrls, Grids, DBGrids, Db, DBTables, RwFunc, StdCtrls,
  Provider, SqlExpr,SqlClientDataSet, DBClient, DBLocal, DBLocalS, ppDB, ppProd, ppClass,
  ppReport, ppComm, ppRelatv, ppDBPipe, ppCtrls, ppBands, ppVar, ppPrnabl,
  ppCache, ComCtrls, Data.DBXFirebird, ppDesignLayer, ppParameter, SimpleDS,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormCustoGlobal = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    GroupBox1: TGroupBox;
    RadVideo: TRadioButton;
    RadImpressora: TRadioButton;
    CbSeg: TComboBox;
    EdtSeg: TEdit;
    SqlCdsLinha: TSQLClientDataSet;
    SqlCdsItensFicha: TSQLClientDataSet;
    SqlCdsFichaTec: TSQLClientDataSet;
    DsItensFicha: TDataSource;
    DsFichaTec: TDataSource;
    SqlCdsParam: TSQLClientDataSet;
    SqlCdsParamPMT_EMPRESACLASSE: TStringField;
    SqlCdsFichaTecPRD_REFER: TStringField;
    SqlCdsFichaTecFTC_TUP: TFMTBCdField;
    SqlCdsItensFichaPRD_REFER: TStringField;
    SqlCdsItensFichaPRD_REFER_ITENS: TStringField;
    SqlCdsItensFichaFTI_UC: TFloatField;
    SqlCdsItensFichaFTI_MODE1: TStringField;
    GrpBotoes: TGroupBox;
    BitBtn2: TBitBtn;
    BitBtn4: TBitBtn;
    GroupBox2: TGroupBox;
    RadFichaTec: TRadioButton;
    RadProdutos: TRadioButton;
    RadSegmento: TRadioButton;
    PrinterSetupDialog1: TPrinterSetupDialog;
    SqlCdsRelCusto: TSQLClientDataSet;
    DsRelCusto: TDataSource;
    ppDBRelCusto: TppDBPipeline;
    ppRelCusto: TppReport;
    SqlCdsRelCustoPRD_DESCRI: TStringField;
    SqlCdsRelCustoPRD_REFER: TStringField;
    SqlCdsRelCustoPRD_PCUSTO: TFMTBCdField;
    SqlCdsRelCustoPRD_PVENDA: TFMTBCdField;
    SqlCdsRelCustoPRD_PMATPRI: TFMTBCdField;
    SqlCdsRelCustoPRD_MAOOBRA: TFMTBCdField;
    SqlCdsRelCustoLIN_CODIGO: TStringField;
    ppHeaderBand1: TppHeaderBand;
    ppLine14: TppLine;
    LBL_00_EMPRESA: TppLabel;
    LBL_00_LTITULO1: TppLabel;
    LBL_00_LTITULO2: TppLabel;
    ppSystemVariable11: TppSystemVariable;
    ppSystemVariable12: TppSystemVariable;
    ppLine29: TppLine;
    ppDetailBand2: TppDetailBand;
    ppLabel1: TppLabel;
    ppLine1: TppLine;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    SqlCdsRelCustoFINAN_CC: TCurrencyField;
    ppDBText6: TppDBText;
    SqlCdsLinhaLIN_CODIGO: TStringField;
    SqlCdsLinhaLIN_DESCRI: TStringField;
    SqlCdsItensFichaPRD_PCUSTO: TFMTBCdField;
    SqlCdsParamPMT_UNFORMULA: TSmallintField;
    Panel2: TPanel;
    BitProcessar: TBitBtn;
    PrBar: TProgressBar;
    SqlCdsItensFichaPRD_CUSTOCOMIPI: TFMTBCDField;
    Memo1: TMemo;
    SqlCdsFichaTecPRD_MARGEMVENDA: TFMTBCDField;
    FDQuery1: TFDQuery;
    SqlCdsFichaTecLIN_CODIGO: TStringField;
    procedure FormShow(Sender: tObject);
    procedure BitProcessarClick(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: tObject);
    procedure BitBtn4Click(Sender: tObject);
    procedure BitBtn2Click(Sender: tObject);
    procedure RadFichaTecClick(Sender: tObject);
    procedure SqlCdsRelCustoCalcFields(DataSet: TDataSet);
    procedure EdtSegKeyPress(Sender: tObject; var Key: Char);
    procedure EdtSegClick(Sender: tObject);
    procedure EdtSegEnter(Sender: tObject);
    procedure EdtSegExit(Sender: tObject);
    procedure CbSegClick(Sender: tObject);
    procedure CbSegExit(Sender: tObject);
    procedure CbSegEnter(Sender: tObject);
    procedure FormCreate(Sender: tObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    wPrecoUnit,wPreco_Mprima,wPreco_EntradaUnit,wPrecoTotal, wPreco_EntradaTotal, wValor_Mobra,wPrecoFinal,wIndice,wFormula:Double;
    wRefer,wReferItens:String;
    procedure LayOutClasse;
    procedure LayOutRel;
    procedure BuscaFichas;
    function AtualizarPrecoProduto(Referencia, ReferenciaPai: string; ftiUC: double): TArray<Double>;
  public
    { Public declarations }
  end;

var
  FormCustoGlobal: TFormCustoGlobal;

implementation

Uses Uteis, DataCad, Men0001, ufrmpreviewrb, iniciodb;

{$R *.DFM}


procedure TFormCustoGlobal.FormShow(Sender: tObject);
begin
    try
      LayOutRel;
      BuscaFichas;
      if not SqlCdsFichaTec.IsEmpty  then
         begin
             try
               wSql1      := 'SELECT F2.PRD_REFER,F2.PRD_REFER_ITENS,F2.FTI_UC,F2.FTI_MODE1,P1.PRD_PCUSTO,P1.PRD_CUSTOCOMIPI FROM FTC_IT01 F2 ';
               wSql2      := 'JOIN PRD0000 P1 ON (P1.PRD_REFER = F2.PRD_REFER_ITENS) ';
               wSeleciona := '';
               wOrdem     := 'F2.PRD_REFER,F2.PRD_REFER_ITENS';
               SqlCdsItensFicha.Close;
               SqlCdsItensFicha.CommandText := SQLDEF('PRODUTOS',wSql1+wSql2,wSeleciona,wOrdem,'F2.');
               SqlCdsItensFicha.Open;
             except on E:EDataBaseError do
               uteis.erro  (pchar('Erro ao Localizar o Itens da Ficha Técnica ! '+e.message));
             end;
         end;
      wFormula :=0;
      if not SqlCdsFichaTec.IsEmpty  then
         begin
             SqlCdsParam.Close;
             SqlCdsParam.CommandText := SQLDEF('PARAMETROS','SELECT P1.PMT_EMPRESACLASSE,P1.PMT_UNFORMULA FROM PRMT0001 P1','','P1.EMP_CODIGO','P1.');
             SqlCdsParam.Open;
             if not SqlCdsParam.IsEmpty then
               wFormula           := SqlCdsParamPMT_UNFORMULA.AsCurrency;
             SqlCdsParam.Close;
         end;
      {Preencher a combo linha}
      SqlCdsLinha.Close;
      SqlCdsLinha.CommandText := SQLDEF('TABELAS','SELECT L1.LIN_CODIGO,L1.LIN_DESCRI FROM PRD_LINHA L1 ','','L1.LIN_DESCRI','L1.');
      SqlCdsLinha.Open;
      CbSeg.Items.Clear;
      CbSeg.Items.Add('');
      SqlCdsLinha.First;
      While not SqlCdsLinha.Eof do
       begin
           CbSeg.Items.Add(SqlCdsLinhaLIN_DESCRI.AsString);
           SqlCdsLinha.Next;
       end;
      CbSeg.ItemIndex := 0;
    except on E:EDataBaseError do
      uteis.erro  (pchar('Erro ao Abrir a tabelas ! '+e.message));
    end;
end;

{
function TFormCustoGlobal.AtualizarPrecoProduto(Referencia, ReferenciaPai: string; ftiUC: double): TArray<Double>;
var
  sqlFichaTecnica, sqlProduto: TFDQuery;
  MateriaPrima: TArray<Double>;
  Custo, CustoIPI, UC: double;
begin
  // Cria a consulta
  sqlFichaTecnica := TFDQuery.Create(nil);
  sqlProduto := TFDQuery.Create(nil);
  try
    sqlFichaTecnica.Connection := dbInicio.FDACConn;
    sqlProduto.Connection := dbInicio.FDACConn;
    Custo := 0;
    CustoIPI := 0;
    UC := 0;

    // Consulta os subitens do produto
    sqlFichaTecnica.SQL.Text :=
      'SELECT F2.PRD_REFER, F2.PRD_REFER_ITENS, F2.FTI_UC, P1.PRD_PCUSTO, P1.PRD_CUSTOCOMIPI ' +
      'FROM FTC_IT01 F2 ' +
      'JOIN PRD0000 P1 ON (P1.PRD_REFER = F2.PRD_REFER_ITENS) ' +
      'WHERE F2.PRD_REFER = :Referencia';
    sqlFichaTecnica.ParamByName('Referencia').AsString := Referencia;
    sqlFichaTecnica.Open;

    // Varre os subitens do produto
    if sqlFichaTecnica.RecordCount = 0 then
    begin


      sqlProduto.SQL.Text :=
        'SELECT F2.PRD_REFER, F2.PRD_REFER_ITENS, F2.FTI_UC, P1.PRD_PCUSTO, P1.PRD_CUSTOCOMIPI ' +
        'FROM FTC_IT01 F2 ' +
        'JOIN PRD0000 P1 ON (P1.PRD_REFER = F2.PRD_REFER_ITENS) ' +
        'WHERE F2.PRD_REFER = :ReferenciaPai AND F2.PRD_REFER_ITENS = :Referencia';
      sqlProduto.ParamByName('ReferenciaPai').AsString := ReferenciaPai;
      sqlProduto.ParamByName('Referencia').AsString := Referencia;
      sqlProduto.Open;
      SetLength(Result, 3);
      Result[0] := (sqlProduto.FieldByName('PRD_PCUSTO').AsFloat * sqlProduto.FieldByName('FTI_UC').AsFloat) * ftiUC ;
      Result[1] := (sqlProduto.FieldByName('PRD_CUSTOCOMIPI').AsFloat * sqlProduto.FieldByName('FTI_UC').AsFloat) * ftiUC;
      Result[2] := sqlProduto.FieldByName('FTI_UC').AsFloat;

    end
    else
    begin
      while not sqlFichaTecnica.Eof do
      begin
        if ReferenciaPai = '' then
          UC := sqlFichaTecnica.FieldByName('FTI_UC').AsFloat
        else
          UC := dbInicio.BuscaUmDadoSqlAsFloat('SELECT FTI_UC FROM FTC_IT01 WHERE PRD_REFER = ' + QuotedStr(ReferenciaPai) + ' AND PRD_REFER_ITENS = ' + QuotedStr(Referencia) );
        MateriaPrima := AtualizarPrecoProduto(sqlFichaTecnica.FieldByName('PRD_REFER_ITENS').AsString,
                                              sqlFichaTecnica.FieldByName('PRD_REFER').AsString,
                                              UC
                                              );

        Custo := Custo +  MateriaPrima[0];
        CustoIPI := CustoIPI + MateriaPrima[1];




        sqlFichaTecnica.Next;
      end;
      SetLength(Result, 3);
      Result[0] := Custo;
      Result[1] := CustoIPI;
      Result[2] := ftiUC;
    end;
  finally
    sqlFichaTecnica.Free;
    sqlProduto.Free;
  end;
end;

    }

function TFormCustoGlobal.AtualizarPrecoProduto(Referencia, ReferenciaPai: string; ftiUC: double): TArray<Double>;
var
  sqlFichaTecnica, sqlProduto: TFDQuery;
  MateriaPrima: TArray<Double>;
  Custo, CustoIPI, UC, UCAtual: double;
begin
  // Cria a consulta
  sqlFichaTecnica := TFDQuery.Create(nil);
  sqlProduto := TFDQuery.Create(nil);
  try
    sqlFichaTecnica.Connection := dbInicio.FDACConn;
    sqlProduto.Connection := dbInicio.FDACConn;
    Custo := 0;
    CustoIPI := 0;
    UC := ftiUC;  // Mantém o consumo acumulado corretamente
    SetLength(Result, 3);  // Garante que a função sempre retorna um array válido

    // Consulta os subitens do produto
    sqlFichaTecnica.SQL.Text :=
      'SELECT F2.PRD_REFER, F2.PRD_REFER_ITENS, F2.FTI_UC, P1.PRD_PCUSTO, P1.PRD_CUSTOCOMIPI ' +
      'FROM FTC_IT01 F2 ' +
      'JOIN PRD0000 P1 ON (P1.PRD_REFER = F2.PRD_REFER_ITENS) ' +
      'WHERE F2.PRD_REFER = :Referencia';
    sqlFichaTecnica.ParamByName('Referencia').AsString := Referencia;
    sqlFichaTecnica.Open;

    // Se não tem ficha técnica, busca o custo diretamente no PRD0000
    if sqlFichaTecnica.RecordCount = 0 then
    begin
      sqlProduto.SQL.Text :=
        'SELECT P1.PRD_PCUSTO, P1.PRD_CUSTOCOMIPI, F2.FTI_UC ' +
        'FROM FTC_IT01 F2 ' +
        'JOIN PRD0000 P1 ON (P1.PRD_REFER = F2.PRD_REFER_ITENS) ' +
        'WHERE F2.PRD_REFER = :ReferenciaPai AND F2.PRD_REFER_ITENS = :Referencia';
      sqlProduto.ParamByName('ReferenciaPai').AsString := ReferenciaPai;
      sqlProduto.ParamByName('Referencia').AsString := Referencia;
      sqlProduto.Open;

      if not sqlProduto.IsEmpty then
      begin
        Result[0] := (sqlProduto.FieldByName('PRD_PCUSTO').AsFloat * sqlProduto.FieldByName('FTI_UC').AsFloat) * ftiUC;
        Result[1] := (sqlProduto.FieldByName('PRD_CUSTOCOMIPI').AsFloat * sqlProduto.FieldByName('FTI_UC').AsFloat) * ftiUC;
        Result[2] := sqlProduto.FieldByName('FTI_UC').AsFloat;
      end
      else
      begin
        // Caso não encontre a matéria-prima
        Result[0] := 0;
        Result[1] := 0;
        Result[2] := 1;
      end;
    end
    else
    begin
      while not sqlFichaTecnica.Eof do
      begin
        if ReferenciaPai = '' then
          UCAtual := 1
        else
        begin
          UCAtual := dbInicio.BuscaUmDadoSqlAsFloat(
            'SELECT FTI_UC FROM FTC_IT01 WHERE PRD_REFER = ' + QuotedStr(ReferenciaPai) +
            ' AND PRD_REFER_ITENS = ' + QuotedStr(Referencia));
          if UCAtual = 0 then UCAtual := 1;  // Evita multiplicações por zero
        end;

        MateriaPrima := AtualizarPrecoProduto(
          sqlFichaTecnica.FieldByName('PRD_REFER_ITENS').AsString,
          sqlFichaTecnica.FieldByName('PRD_REFER').AsString,
          UCAtual
        );

        Custo := Custo + MateriaPrima[0];
        CustoIPI := CustoIPI + MateriaPrima[1];

        sqlFichaTecnica.Next;
      end;

      Result[0] := Custo;
      Result[1] := CustoIPI;
      Result[2] := UC;
    end;
  finally
    sqlFichaTecnica.Free;
    sqlProduto.Free;
  end;
end;






procedure TFormCustoGlobal.BitProcessarClick(Sender: tObject);
Var
  wConsumo, dBaseFormula, preco_MPrima, Preco_Final,
  valor_MObra, preco_Total, preco_EntradaTotal, precoTotal: double;
  MateriaPrima: TArray<Double>;
begin
    if uteis.confirmacao ( 'Esta rotina atualiza os custos de matéria-prima para composição de item com ficha técnica. Confirma ?')= Mrno then
       exit;

    if RadSegmento.Checked then
    begin
      SqlCdsFichaTec.Filtered := False;
      SqlCdsFichaTec.Filter := 'LIN_CODIGO = ' + QuotedStr(EdtSeg.Text);
      SqlCdsFichaTec.Filtered := True;
    end;


    Screen.Cursor := crHourGlass;
    SqlCdsFichaTec.First;
    PrBar.Max      := SqlCdsFichaTec.RecordCount;
    PrBar.Position := 0;

    while not SqlCdsFichaTec.Eof do
    begin
         MateriaPrima := AtualizarPrecoProduto(SqlCdsFichaTecPRD_REFER.AsString, '', 0);

         dBaseFormula := DBInicio.BuscaUmDadoSqlAsCurrency(SQLDEF('PRODUTOS',' SELECT FTC_BASEFORMULA FROM FTC0000 f ',
                                                            'WHERE PRD_REFER  = ' + QuotedStr(SqlCdsFichaTecPRD_REFER.AsString) ,'',''));

         wPreco_Mprima := MateriaPrima[0] / dBaseFormula; // PRD_PCUSTO
         wPrecoTotal := MateriaPrima[0] / dBaseFormula; // PRD_PCUSTO
         wPreco_EntradaTotal := MateriaPrima[1] / dBaseFormula; // PRD_CUSTOCOMIPI

         wIndice := SqlCdsFichaTecPRD_MARGEMVENDA.AsFloat;




         if dBaseFormula > 0 then
           wPrecoFinal := (MateriaPrima[1] + ((MateriaPrima[1] / 100) * wIndice)) / dBaseFormula
         else
           wPrecoFinal := (MateriaPrima[1] + ((MateriaPrima[1] / 100) * wIndice)) ;




         try

           wSql1      :=
           'UPDATE PRD0000 SET '+
           IIF(not DBInicio.Empresa.wPMT_NAO_AUTO_PVENDA, ' PRD_PVENDA='+QuotedStr(ValorAmericano(FloatToStr(wPrecoFinal)))+',','' )+
           ' PRD_PMATPRI= '+QuotedStr(ValorAmericano(FloatToStr(wPreco_Mprima)))+
           ' ,PRD_PCUSTO = '+QuotedStr(ValorAmericano(FloatToStr(wPrecoTotal))) +
           ' ,PRD_CUSTOCOMIPI = '+QuotedStr(ValorAmericano(FloatToStr(wPreco_EntradaTotal))) ;
           wSeleciona := 'WHERE PRD_REFER = '+QuotedStr(SqlCdsFichaTecPRD_REFER.AsString);
           DataCadastros.sqlUpdate.close;
           DataCadastros.SqlUpdate.sql.text :=SQLDEF('PRODUTOS',wSql1,wSeleciona,'','');
           DataCadastros.sqlUpdate.Execsql;
         except on E:EDataBaseError do
           uteis.erro  (pchar('Erro ao atualizar o Preço de Custo ! '+e.message));
         end;




         PrBar.Position := PrBar.Position + 1;
         SqlCdsFichaTec.Next;
     end;
    PrBar.Position := 0;
    SqlCdsItensFicha.EnableControls;
    SqlCdsFichaTec.Filtered := False;
    SqlCdsFichaTec.EnableControls;
    SqlCdsFichaTec.Refresh;
    SqlCdsFichaTec.First;
    SqlCdsItensFicha.Refresh;
    MessageDlg('Atualizado com sucesso', mtInformation, [mbOK], 0);
    Screen.Cursor := crDefault;

end;

procedure TFormCustoGlobal.BuscaFichas;
begin
  SqlCdsFichaTec.Close;
  SqlCdsFichaTec.CommandText := SQLDEF('PRODUTOS','SELECT F1.PRD_REFER,F1.FTC_TUP, P1.prd_margemvenda, P1.LIN_CODIGO FROM FTC0000 F1 join PRD0000 P1 ON (P1.PRD_REFER = F1.PRD_REFER) ','','F1.PRD_REFER','F1.');
  SqlCdsFichaTec.Open;

end;

procedure TFormCustoGlobal.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
    try
      SqlCdsLinha.Close;
      SqlCdsFichaTec.Close;
      SqlCdsItensFicha.Close;
      SqlCdsRelCusto.close;
      SqlCdsParam.Close;
    except on E:EdataBaseError do
      uteis.erro  (pchar('Erro ao fechar as tabelas ! '+e.message));
    end;
    Action := CaFree;
end;

procedure TFormCustoGlobal.BitBtn1Click(Sender: tObject);
begin
    try
      if RadFichaTec.checked  then
         begin
             wSeleciona := '';
             LBL_00_LTITULO2.Caption := 'Todas as Referências e Materiais do cadastro';
         end;
      if RadProdutos.checked  then
         begin
             wSeleciona := 'WHERE P1.PRD_TABPRECO = ''S''';
             LBL_00_LTITULO2.Caption := 'Somente as Referências marcadas p/ sair na tabela';
         end;
      if RadSegmento.checked  then
         begin
             wSeleciona := 'WHERE LIN_CODIGO = '''+EdtSeg.Text+'''';
             LBL_00_LTITULO2.Caption := 'Referências do Segmento/Linha : '+EdtSeg.Text+' - '+CbSeg.Text;
         end;
      wSql1 := 'SELECT P1.PRD_DESCRI,P1.PRD_REFER,P1.PRD_PCUSTO,P1.PRD_PVENDA,P1.PRD_PMATPRI,';
      wSql2 := 'P1.PRD_MAOOBRA,P1.LIN_CODIGO FROM PRD0000 P1 JOIN PRD_TIPO PT ON (PT.PTI_CODIGO = P1.PTI_CODIGO AND PTI_SIGLA IN ( ''KT'',''PA'', ''PI''))  ';
      wOrdem:= 'P1.PRD_REFER';
      SqlCdsRelCusto.Close;
      SqlCdsRelCusto.CommandText := SQLDEF('PRODUTOS',wSql1+wSql2,wSeleciona,wOrdem,'P1.');
      SqlCdsRelCusto.Open;
      LBL_00_EMPRESA.Caption := dbInicio.Empresa.RAZAO;
      if RadVideo.checked  then
         begin
             ppRelCusto.DeviceType:='Screen';

         end
      else
         begin
             ppRelCusto.DeviceType:='Printer';
             ppRelCusto.ShowPrintDialog := true;
         end;
         RBuilderPreview(ppRelCusto);
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao gerar o relatório ! '+e.message));
    end;
end;

procedure TFormCustoGlobal.LayOutClasse;
BEGIN
end;

procedure TFormCustoGlobal.BitBtn4Click(Sender: tObject);
begin
    Close;
end;

procedure TFormCustoGlobal.BitBtn2Click(Sender: tObject);
begin
    PrinterSetupDialog1.Execute;
end;

procedure TFormCustoGlobal.RadFichaTecClick(Sender: tObject);
begin
    LayOutRel;
end;

procedure TFormCustoGlobal.LayOutRel;
begin
    if RadFichaTec.checked  then
       begin
           EdtSeg.Text    := '';
           CbSeg.Text     := '';
           CbSeg.ItemIndex:= 0;
           EdtSeg.Enabled := False;
           CbSeg.Enabled  := False;
       end;
    if RadProdutos.checked  then
       begin
           EdtSeg.Text    := '';
           CbSeg.Text     := '';
           CbSeg.ItemIndex:= 0;
           EdtSeg.Enabled := False;
           CbSeg.Enabled  := False;
       end;
    if RadSegmento.checked  then
       begin
           EdtSeg.Text    := '';
           CbSeg.Text     := '';
           CbSeg.ItemIndex:= 0;
           EdtSeg.Enabled := True;
           CbSeg.Enabled  := True;
           EdtSeg.SetFocus;
           EdtSeg.SelectAll;
       end;
end;

procedure TFormCustoGlobal.SqlCdsRelCustoCalcFields(DataSet: TDataSet);
begin
    if SqlCdsRelCustoPRD_PCUSTO.AsCurrency>0 then
       SqlCdsRelCustoFINAN_CC.AsCurrency := 100-((SqlCdsRelCustoPRD_PMATPRI.AsCurrency+SqlCdsRelCustoPRD_MAOOBRA.AsCurrency)/SqlCdsRelCustoPRD_PCUSTO.AsCurrency*100)
    else
       SqlCdsRelCustoFINAN_CC.AsCurrency := 0;
end;

procedure TFormCustoGlobal.EdtSegKeyPress(Sender: tObject; var Key: Char);
begin
    if not (key in ['0'..'9',#8]) then
       begin
          //beep;
          Key := #0;
       end;
end;

procedure TFormCustoGlobal.EdtSegClick(Sender: tObject);
begin
    EdtSeg.SelectAll;
end;

procedure TFormCustoGlobal.EdtSegEnter(Sender: tObject);
begin
    EdtSeg.Color := $0080FFFF;
    EdtSeg.SelectAll;
end;

procedure TFormCustoGlobal.EdtSegExit(Sender: tObject);
begin
    EdtSeg.Color := clWindow;
    EdtSeg.Text := StrZero(EdtSeg.Text,EdtSeg.MaxLength);
    if SqlCdsLinha.Locate('LIN_CODIGO',EdtSeg.Text,[])= true then
       begin
           CbSeg.Text := SqlCdsLinhaLIN_DESCRI.AsString;
       end;
end;

procedure TFormCustoGlobal.CbSegClick(Sender: tObject);
begin
    if (CbSeg.Text <> '') then
       begin
           if SqlCdsLinha.Locate('LIN_DESCRI',CbSeg.Text,[])=true then
              begin
                  EdtSeg.Text := SqlCdsLinhaLIN_CODIGO.AsString;
              end;
       end
    else
       begin
           EdtSeg.Text := '';
           CbSeg.Text  := '';
       end;
end;

procedure TFormCustoGlobal.CbSegExit(Sender: tObject);
begin
    CbSeg.Color := clWindow;
    if (CbSeg.Text <> '') then
       begin
           if SqlCdsLinha.Locate('LIN_DESCRI',CbSeg.Text,[])=true then
              begin
                  EdtSeg.Text := SqlCdsLinhaLIN_CODIGO.AsString;
              end;
       end
    else
       begin
           EdtSeg.Text := '';
           CbSeg.Text  := '';
       end;
end;

procedure TFormCustoGlobal.CbSegEnter(Sender: tObject);
begin
    CbSeg.Color := $0080FFFF;
end;

procedure TFormCustoGlobal.FormCreate(Sender: tObject);
begin
    wSql1      := '';
    wSql2      := '';
    wSeleciona := '';
    wOrdem     := '';
end;

procedure TFormCustoGlobal.FormDestroy(Sender: TObject);
begin
     FormCustoGlobal := Nil;
end;

end.
