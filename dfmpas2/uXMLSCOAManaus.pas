unit uXMLSCOAManaus;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBFormFdac, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Phys.FBDef, FireDAC.UI.Intf, FireDAC.VCLUI.Wait, FireDAC.VCLUI.Error, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Comp.Client, Data.DB, FireDAC.Comp.UI, FireDAC.Phys.IBBase, FireDAC.Comp.DataSet, cxClasses, cxLocalization, ACBrBase, ACBrEnterTab, SgDbSeachComboUnit, ComboBoxRW, Vcl.StdCtrls,
  Vcl.ComCtrls, Vcl.Buttons, Vcl.Mask, JvExMask, JvSpin, Vcl.Imaging.jpeg, Vcl.ExtCtrls, JvBaseDlg, JvBrowseFolder, JvExControls, JvAnimatedImage, JvGIFCtrl;

type
  TfrmXMLSCOAManaus = class(TfrmBaseDBFDAC)
    Panel1: TPanel;
    Image1: TImage;
    GroupBox1: TGroupBox;
    lblPeriodo: TLabel;
    lblLocal: TLabel;
    btnFolder: TSpeedButton;
    edtAnoInicial: TJvSpinEdit;
    edtMesInicial: TJvSpinEdit;
    edtLocal: TEdit;
    btnGerar: TBitBtn;
    pg: TPageControl;
    tsArquivoGerado: TTabSheet;
    memoArquivo: TMemo;
    tserros: TTabSheet;
    memoErros: TMemo;
    Label1: TLabel;
    EdAlmoxarifadoCodigo: TEdit;
    CbAlmoxarifado: TComboBoxRw;
    AbrirPasta: TJvBrowseForFolderDialog;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    lbCnpj: TLabel;
    Label4: TLabel;
    lbIE: TLabel;
    Label3: TLabel;
    lbAtoDeclaratorio: TLabel;
    Label6: TLabel;
    lbValidade: TLabel;
    PanelAguarde: TPanel;
    JvGIFAnimator1: TJvGIFAnimator;
    pinfo: TPanel;
    procedure EdAlmoxarifadoCodigoExit(Sender: TObject);
    procedure CbAlmoxarifadoSelect(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnFolderClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnGerarClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure BuscaDadosAlmoxarifado(var IE: string; var CNPJ: string; var numAtoDeclaratorio: string; var validadeAtoDeclaratorio: string; var validadeAtoDeclaratorioBR: string);
    procedure informacoesDoArmazem;
    var
      arquivo, IE, CNPJ, numAtoDeclaratorio, validadeAtoDeclaratorio, validadeAtoDeclaratorioBR: string;
  public
    { Public declarations }
  end;

var
  frmXMLSCOAManaus: TfrmXMLSCOAManaus;

implementation

{$R *.dfm}

uses Uteis, InicioDB, XMLIntf, XMLDoc, UFuncoes;

procedure TfrmXMLSCOAManaus.btnFolderClick(Sender: TObject);
begin
  inherited;
   if (AbrirPasta.Execute) then
      edtLocal.Text := AbrirPasta.Directory;
end;

procedure TfrmXMLSCOAManaus.btnGerarClick(Sender: TObject);
Var
  XML : IXMLDOCUMENT;
  Raiz, element, complexType,
  sequence,
  complexTypeTDeclaracaoSCOA, sequenceTDeclaracaoSCOA,
  elementListaArmazem, complexTypeListaArmazem, sequenceListaArmazem, elementDadosArmazem,
  complexTypeDadosArmazem, sequenceDadosArmazem,
  complexTypeNF, complexTypeNF2, sequenceNF, sequenceNF2, elementNF, elementNF2, element0, sequence0,
  elementPI, elementPItem, elementLPI, elementLNF
    : IXMLNODE;

  dataF, dataK, dataInventario: TDateTime;
  dataInicial, dataFinal, dataKardex, menorZero, dataInv : string;
  j : integer;
  precoUnitProduto, somaPrecoUnitario: double;
  lista : TStringList;
  dia, mes, ano: integer;
begin
  if edtLocal.Text = '' then
  begin
    MessageDlg('Local de armazenamento do arquivo não escolhido.', mtError, [mbOK] , 0);
    Exit;
  end;
  if EdAlmoxarifadoCodigo.Text = '' then
  begin
    MessageDlg('Almoxarifado não informado.', mtError, [mbOK] , 0);
    Exit;
  end;

  BuscaDadosAlmoxarifado(IE, CNPJ, numAtoDeclaratorio, validadeAtoDeclaratorio, validadeAtoDeclaratorioBR);
  if IE = '' then
  begin
    MessageDlg('Almoxarifado sem inscrição estadual.', mtError, [mbOK] , 0);
    Exit;
  end;
  if CNPJ = '' then
  begin
    MessageDlg('Almoxarifado sem CNPJ.', mtError, [mbOK] , 0);
    Exit;
  end;
  if numAtoDeclaratorio = '' then
  begin
    MessageDlg('Nº do Ato Declaratório não informado neste almoxarifado.', mtError, [mbOK] , 0);
    Exit;
  end;
  if validadeAtoDeclaratorio = '--' then
  begin
    MessageDlg('Validade do Ato Declaratório não informada neste almoxarifado.', mtError, [mbOK] , 0);
    Exit;
  end;
  if StrToDateTime(validadeAtoDeclaratorioBR) < date then
  begin
    MessageDlg('Validade do Ato Declaratório expirou.', mtError, [mbOK] , 0);
    Exit;
  end;
  PanelAguarde.Visible := True;
  memoErros.Lines.Clear;
  memoArquivo.Lines.Clear;
  pg.ActivePageIndex := 0;
  dataInicial := DataAmericana('01/' + PrencheZeroEsquerda(edtMesInicial.Text,2) + '/' + edtAnoInicial.Text);
  dataF := UltimoDiaMes(StrToDate('01/' + PrencheZeroEsquerda(edtMesInicial.Text,2) + '/' + edtAnoInicial.Text ),False);
  dataK := IncMonth(dataF, -1);
  dataFinal := DataAmericana(DateToStr(dataF)); // + ' 23:59:59';
  dataKardex := DataAmericana(DateToStr(dataK)) + ' 23:59:59';
  mes := StrToInt(edtMesInicial.Text) - 1;
  if mes = 0 then
    mes := 1;
  dataInventario := UltimoDiaMes(StrToDate('01/' + PrencheZeroEsquerda(IntToStr(mes),2) + '/' + edtAnoInicial.Text ),False);
  dataInv := DateToSQL(dataInventario);
  Application.ProcessMessages;
  XML := NewXMLDocument;
  XML.Encoding := 'UTF-8';
  XML.Options := [doNodeAutoIndent];
    Raiz := XML.AddChild('enviSCOA');
    Raiz.Attributes['xmlns'] := 'http://www.sefaz.am.gov.br/scoa';
      element := Raiz.AddChild('versao');
      element.Text := '1.00';
      element.AttributeNodes.Delete('xmlns');
      element := Raiz.AddChild('IE');
      element.Text := IE;
      element.AttributeNodes.Delete('xmlns');
      element := Raiz.AddChild('periodoArquivo');
      element.Text := FloatToStr(edtAnoInicial.Value) + strzero(FloatToStr(edtMesInicial.Value), 2);
      element.AttributeNodes.Delete('xmlns');
      element := Raiz.AddChild('nomeResponsavel');
      element.Text := RetiraAcentos(BuscaUmDadoSqlAsString('SELECT EMP_CONT_NOME FROM EMP0000 WHERE EMP_CODIGO = ' + QuotedStr(DBInicio.Emp_Codigo) ));
      element.AttributeNodes.Delete('xmlns');
      elementListaArmazem := Raiz.AddChild('listaArmazem');
        elementDadosArmazem := elementListaArmazem.AddChild('dadosArmazem');
          element := elementDadosArmazem.AddChild('numCNPJ');
          element.Text := CNPJ;
          element := elementDadosArmazem.AddChild('numAtoDeclaratorio');
          element.Text := numAtoDeclaratorio;
          element := elementDadosArmazem.AddChild('validadeAtoDeclaratorio');
          element.Text := validadeAtoDeclaratorio;



          elementLPI := elementDadosArmazem.AddChild('listaProdutosInventario');
          elementLPI.Normalize;

            qAux.Close;
            qAux.SQL.Text :=
              ' SELECT DISTINCT pr.PRD_REFER, pr.PRD_CODIGO, pr.PRD_DESCRI, pr.PRD_UND, PR.PRD_PVENDA ' +
              '    FROM PRD0000 pr ' +
              '    JOIN KARDEX k ON (k.PRD_REFER = pr.PRD_REFER) ' +
//              '    WHERE k.DATA_HORA BETWEEN ' + QuotedStr(dataInicial) + ' AND ' + QuotedStr(dataFinal) +
              '    WHERE k.DATA_HORA <= ' +  dataInv +
              '    AND k.AMX_CODIGO = ' + QuotedStr(EdAlmoxarifadoCodigo.Text) +
              '    AND pr.EMP_CODIGO = ' + QuotedStr(DBInicio.Emp_Codigo) +
              '  ORDER BY pr.PRD_REFER';
            qAux.Open;
            while not qAux.EOF do
            begin
              elementPI := elementLPI.AddChild('produtoInventario');
                elementPItem := elementPI.AddChild('codProduto');
                elementPItem.Text := qAux.FieldByName('PRD_REFER').AsString;
                elementPItem := elementPI.AddChild('descProduto');
                elementPItem.Text := Trim(RetiraAcentos(qAux.FieldByName('PRD_DESCRI').AsString));
                elementPItem:= elementPI.AddChild('creditoEstimulo');
                elementPItem.text := '5500';
                elementPItem := elementPI.AddChild('estoqueInicial');
                elementPItem.Text := FloatToSQL(StrToFloat(FormatFloat('########.00',
                                       BuscaUmDadoSqlAsFloat('SELECT * FROM PCd_KARDEX_SALDO_DATA(' +
                                         QuotedStr(dbInicio.Empresa.EMP_CODIGO) + ',' +
                                         QuotedStr(qAux.FieldByname('PRD_CODIGO').AsString)+ ',' +
                                         QuotedStr(dataKardex) + ',' +
                                         QuotedStr(EdAlmoxarifadoCodigo.Text) +')' )
                                     )));
                menorZero := StringReplace(elementPItem.Text, '.', ',', [rfReplaceAll]);
                if StrToFloat(menorZero) < 0 then
                begin
                  memoErros.Lines.Add(
                    'Linha: ' + IntToStr(XML.XML.Count + 3) + ' - ' +
                    ' - Valor: ' + elementPItem.Text + ' é menor que zero. ' +
                    ' - Referência: ' + qAux.FieldByName('PRD_REFER').AsString +
                    ' - Descrição ' + qAux.FieldByName('PRD_DESCRI').AsString
                  );
                end;
                elementPItem := elementPI.AddChild('unidProduto');
                elementPItem.Text := qAux.FieldByName('PRD_UND').AsString;
                elementPItem := elementPI.AddChild('precoUnitProduto');
                qAux4.Close;
                qAux4.SQL.Text :=
                  ' SELECT DISTINCT pr.PRD_REFER, nf.NF_CHAVE_NFE, ni.NF_PRECO ' +
                  '  FROM NF0001 nf ' +
                  '    JOIN NF_IT01 ni ON (ni.NF_IT_NOTANUMER = nf.NF_NOTANUMBER) ' +
                  '    JOIN PRD0000 pr ON (ni.PRD_REFER = pr.PRD_REFER) ' +
                  '    JOIN KARDEX k ON (k.PRD_REFER = ni.PRD_REFER) ' +
                  '    JOIN OPE0000 op ON (op.OPE_CODIGO = ni.OPE_CODIGO) ' +
                  '    WHERE k.DATA_HORA BETWEEN ' + QuotedStr(dataInicial) + ' AND ' + QuotedStr(dataFinal) +
                  '    AND k.AMX_CODIGO = ' + QuotedStr(EdAlmoxarifadoCodigo.Text) +
                  '    AND nf.NF_STATUS_NFE = ''A'' ' +
                  '    AND (op.OPE_TIPO_OPERACAO = ''R'' OR op.OPE_TIPO_OPERACAO = ''V'')' +
                  '    AND op.OPE_VENDA_SAIDA_ARMAZEM = ''S'' ' +
                  '    AND pr.EMP_CODIGO = ' + QuotedStr(DBInicio.Emp_Codigo) +
                  '    AND pr.PRD_REFER = ' + QuotedStr(qAux.FieldByName('PRD_REFER').AsString ) +
                  '  ORDER BY nf.NF_NOTANUMBER ';
                qAux4.Open;
                somaPrecoUnitario := 0;
                if not qAux4.IsEmpty then
                begin
                  while not qAux4.Eof do
                  begin
                    somaPrecoUnitario := somaPrecoUnitario + qAux4.FieldByName('NF_PRECO').AsFloat;
                    qAux4.Next;
                  end;
                  somaPrecoUnitario := somaPrecoUnitario / qAux4.RecordCount;
                end;
                if somaPrecoUnitario = 0 then
                  elementPItem.Text :=FloatToSQL(StrToFloat(FormatFloat('########.00', qAux.FieldByName('PRD_PVENDA').AsFloat)))
                else
                  elementPItem.Text :=FloatToSQL(StrToFloat(FormatFloat('########.00', somaPrecoUnitario)));
              qAux.Next;
            end;


          elementLNF := elementDadosArmazem.AddChild('listaNotasFiscais');
            qAux2.Close;
            qAux2.SQL.Text :=
              ' SELECT DISTINCT nf.NF_NOTANUMBER,nf.NF_REGISTRO, nf.NF_CHAVE_NFE, op.OPE_TIPO_OPERACAO ' +
              '  FROM NF0001 nf ' +
              '    JOIN NF_IT01 ni ON (ni.NF_IT_NOTANUMER = nf.NF_NOTANUMBER) ' +
              '    JOIN PRD0000 pr ON (ni.PRD_REFER = pr.PRD_REFER) ' +
              '    JOIN KARDEX k ON (k.PRD_REFER = ni.PRD_REFER) ' +
              '    JOIN ALMOX0000 al ON al.AMX_CODIGO = ni.AMX_CODIGO_DESTINO ' +
              '    JOIN PED0000 pe ON (pe.PED_CODIGO = nf.PED_CODIGO AND pe.EMI_CODIGO = al.EMI_CODIGO) ' +
              '    JOIN OPE0000 op ON (op.OPE_CODIGO = ni.OPE_CODIGO) ' +
              '    WHERE nf.NF_EMISSAO BETWEEN ' + QuotedStr(dataInicial) + ' AND ' + QuotedStr(dataFinal) +
              '    AND al.AMX_CODIGO = ' + QuotedStr(EdAlmoxarifadoCodigo.Text) +
              '    AND nf.NF_STATUS_NFE = ''A'' ' +
              '    AND (op.OPE_TIPO_OPERACAO = ''R'' OR op.OPE_TIPO_OPERACAO = ''V'')' +
              '    AND op.OPE_VENDA_SAIDA_ARMAZEM = ''S'' ' +
              '    AND pr.EMP_CODIGO = ' + QuotedStr(DBInicio.Emp_Codigo) +
              '  ORDER BY nf.NF_NOTANUMBER ';
            qAux2.Open;
            while not qAux2.Eof do
            begin
              elementNF := elementLNF.AddChild('notaFiscal');
                elementNF2 := elementNF.AddChild('chaveAcessoNFe');
                elementNF2.Text := qAux2.FieldByName('NF_CHAVE_NFE').AsString;
                elementNF2 := elementNF.AddChild('tipoOperacaoNFe');
                elementNF2.Text := qAux2.FieldByName('OPE_TIPO_OPERACAO').AsString;
                elementNF2 := elementNF.AddChild('listaProdutosNFe');
                qAux3.Close;
                qAux3.SQL.Text :=
                  ' SELECT ni.PRD_REFER, ni.NF_QTDE, ni.NF_PRECO ' +
                  '   FROM NF_IT01 ni ' +
                  ' WHERE ni.NF_IT_NOTANUMER = ' + QuotedStr(qAux2.FieldByName('NF_NOTANUMBER').AsString);
                qAux3.Open;
                while not qAux3.Eof do
                begin
                  sequence := elementNF2.AddChild('produtoNFe');
                    element := sequence.AddChild('codProdutoNFe');
                    element.Text := qAux3.FieldByName('PRD_REFER').AsString;
                    element := sequence.AddChild('quantidade');
                    element.Text := FloatToSQL(qAux3.FieldByName('NF_QTDE').AsFloat);
                    element := sequence.AddChild('precoUnitProdutoNFe');
                    element.Text := FloatToSQL(qAux3.FieldByName('NF_PRECO').AsFloat);
                  qAux3.Next
                end;
              qAux2.Next;
            end;




      element := elementDadosArmazem.AddChild('diferencaValorOperacoes');
          sequence := element.AddChild('difValor');
            element := sequence.AddChild('codProduto');
            element.Text := '00000';
            element := sequence.AddChild('diferencaBaseCalculo');
            element.Text := '0.00';
            element := sequence.AddChild('chaveAcessoNFeComplementar');
            element.Text := '00000000000000000000000000000000000000000000';




  arquivo := edtLocal.Text + '\SCOA-' + FloatToStr(edtAnoInicial.Value) + '-' + FloatToStr(edtMesInicial.Value) + '.xml';
  lista := TStringList.Create;
  lista.Text := XML.XML.Text;
  for j := 2 to lista.Count-1 do
  begin
    lista[j] := StringReplace(lista[j], ' xmlns=""', '', [rfReplaceAll]);
    lista[j] := StringReplace(lista[j], '<listaProdutosInventario/>', '<listaProdutosInventario></listaProdutosInventario>', [rfReplaceAll]);
    lista[j] := StringReplace(lista[j], '<listaNotasFiscais/>', '<listaNotasFiscais></listaNotasFiscais>', [rfReplaceAll]);
  end;
  lista.SaveToFile(arquivo);
  memoArquivo.Lines := lista;
  PanelAguarde.Visible := False;
  CopyToClipBoard(arquivo);
  MessageDlg('Arquivo ' + arquivo + ' gerado com sucesso!', mtInformation, [mbOK], 0);
  if memoErros.Lines.Count > 0 then
    pg.ActivePageIndex := 1;


end;

procedure TfrmXMLSCOAManaus.BuscaDadosAlmoxarifado(var IE: string; var CNPJ: string; var numAtoDeclaratorio: string; var validadeAtoDeclaratorio: string; var validadeAtoDeclaratorioBR: string);
var
  ano, mes, dia: string;
begin
    qAux4.Close;
    qAux4.SQL.Text :=
      'SELECT emi.EMI_IE, amx.AMX_CNPJ_PART, AMX_NUM_ATO_DECLARATORIO, AMX_VALIDADE_ATO_DECLARATORIO ' +
      '  FROM ALMOX0000 amx ' +
      '    JOIN  EMP_MULTIPLAS_IE emi ON (emi.EMI_CODIGO = amx.EMI_CODIGO)  ' +
      '  WHERE AMX_CODIGO = ' + QuotedStr(EdAlmoxarifadoCodigo.Text);
    qAux4.Open;
    IE := qAux4.FieldByName('EMI_IE').AsString;
    CNPJ := qAux4.FieldByName('AMX_CNPJ_PART').AsString;
    numAtoDeclaratorio := qAux4.FieldByName('AMX_NUM_ATO_DECLARATORIO').AsString;
    ano := copy(qAux4.FieldByName('AMX_VALIDADE_ATO_DECLARATORIO').AsString, 7, 4);
    mes := copy(qAux4.FieldByName('AMX_VALIDADE_ATO_DECLARATORIO').AsString, 4, 2);
    dia := copy(qAux4.FieldByName('AMX_VALIDADE_ATO_DECLARATORIO').AsString, 1, 2);
    validadeAtoDeclaratorio := ano + '-' + mes + '-' + dia;
    validadeAtoDeclaratorioBR := qAux4.FieldByName('AMX_VALIDADE_ATO_DECLARATORIO').AsString;
end;

procedure TfrmXMLSCOAManaus.CbAlmoxarifadoSelect(Sender: TObject);
begin
  inherited;
  if cbAlmoxarifado.idRetorno<>'' then
    EdAlmoxarifadoCodigo.Text := cbAlmoxarifado.idRetorno
  Else
     EdAlmoxarifadoCodigo.Clear;
  InformacoesDoArmazem;

end;

procedure TfrmXMLSCOAManaus.EdAlmoxarifadoCodigoExit(Sender: TObject);
begin
  inherited;
  if EdAlmoxarifadoCodigo.Text <> '' then
  begin
    edAlmoxarifadoCodigo.Text := StrZero( edAlmoxarifadoCodigo.Text,  4 ) ;
    if EdAlmoxarifadoCodigo.Text <> '0000' then
    begin
      cbAlmoxarifado.idRetorno := edAlmoxarifadoCodigo.Text;
      informacoesDoArmazem;
      if cbAlmoxarifado.idRetorno = '' then
      begin
        EdAlmoxarifadoCodigo.clear;
        uteis.aviso('Almoxarifado não localizado com o código informado');
      end;
    end
    else
      cbAlmoxarifado.Clear;
  end
  else
    cbAlmoxarifado.Clear;
end;

procedure TfrmXMLSCOAManaus.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  GravaIni('CaminhoSCOA', 'caminho', 'caminho', edtLocal.Text);
  Action := caFree;
  frmXMLSCOAManaus := nil;
end;

procedure TfrmXMLSCOAManaus.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #27 then
    Close;
end;

procedure TfrmXMLSCOAManaus.FormResize(Sender: TObject);
begin
  inherited;
  PanelAguarde.Top := (Self.Height div 2) - (PanelAguarde.Height div 2);
  PanelAguarde.Left := (Self.Width div 2) - (PanelAguarde.Width div 2);
end;

procedure TfrmXMLSCOAManaus.FormShow(Sender: TObject);
var
  local: string;
begin
  inherited;
  edtMesInicial.Value := StrToInt(FormatDateTime('mm',Date));
  edtAnoInicial.Value := StrToInt(FormatDateTime('yyyy',Date));
  ForceDirectories(Pchar(dbInicio.SistemaLocal+'SCOA'));
  LeIni('CaminhoSCOA', 'caminho', 'caminho', local);
  if local = '' then
    edtLocal.Text := dbInicio.SistemaLocal + 'SCOA'
  else
    edtLocal.Text := local;

  lbCnpj.Caption := '';
  lbIE.Caption := '';
  lbAtoDeclaratorio.Caption := '';
  lbValidade.Caption := '';
end;

procedure TfrmXMLSCOAManaus.informacoesDoArmazem;
begin
  BuscaDadosAlmoxarifado(IE, CNPJ, numAtoDeclaratorio, validadeAtoDeclaratorio, validadeAtoDeclaratorioBR);
  lbIE.Caption := IE;
  lbCnpj.Caption := MascaraCNPJ_CPF(CNPJ);
  lbAtoDeclaratorio.Caption := numAtoDeclaratorio;
  lbValidade.Caption := validadeAtoDeclaratorioBR;
end;

end.
