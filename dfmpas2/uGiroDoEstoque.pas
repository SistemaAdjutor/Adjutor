unit uGiroDoEstoque;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DBXFirebird, Data.FMTBCd,
  Datasnap.DBClient, Datasnap.Provider, Data.SqlExpr, ACBrBase, ACBrEnterTab,
  ACBrCalculadora, BaseForm, BaseDBPesquisaSimplesForm, Vcl.Buttons, Vcl.Menus, System.ImageList,
  Vcl.ImgList, dateutils, Vcl.Mask, RxToolEdit, BaseDBForm, basereportform,
  SgDbSeachComboUnit, Vcl.Samples.Spin, BaseDBPesquisaForm, animacao, JvExMask, JvToolEdit;

type
  TFrmGiroDoEstoquexCompras = class(TfrmBaseDBPesquisaSimples)
    ComboLinha: TSgDbSearchCombo;
    qLinhas: TSQLQuery;
    Label3: TLabel;
    ComboGrupo: TSgDbSearchCombo;
    Label5: TLabel;
    qGrupo: TSQLQuery;
    ComboTipo: TSgDbSearchCombo;
    Label6: TLabel;
    qTipo: TSQLQuery;
    qBusco2: TSQLQuery;
    EdtMeses: TSpinEdit;
    Label1: TLabel;
    Label10: TLabel;
    cb1: TCheckBox;
    btnEstoqueMinimo: TButton;
    clearence: TGroupBox;
    GroupBox3: TGroupBox;
    chkVenda30: TCheckBox;
    chkVendas60: TCheckBox;
    chkVendas90: TCheckBox;
    chkDiasVariaveis: TCheckBox;
    edDias: TEdit;
    Selecionartudo1: TMenuItem;
    Desmarcartudo1: TMenuItem;
    Label8: TLabel;
    RadEstoqueMinimo: TCheckBox;
    grperiodo: TGroupBox;
    Label2: TLabel;
    rdTipo: TRadioGroup;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    chkLote30: TCheckBox;
    chkLote60: TCheckBox;
    chkLote90: TCheckBox;
    chkLoteVariaveisDias: TCheckBox;
    edDiasLote: TEdit;
    chkSemMov: TCheckBox;
    dt1: TJvDateEdit;
    dt2: TJvDateEdit;
    sqlqryProduto: TSQLQuery;
    strngfldProdutoPRD_CODIGO: TStringField;
    strngfldProdutoPRD_REFER: TStringField;
    strngfldProdutoPRD_DESCRI: TStringField;
    strngfldProdutoPRD_CODBARRA: TStringField;
    strngfldProdutoPRD_PRODSERV: TStringField;
    strngfldProdutoPRD_UND: TStringField;
    strngfldProdutoLIN_DESCRI: TStringField;
    fmtbcdfldProdutoPRD_PVENDA: TFMTBCDField;
    cbProdutoReferencia: TSgDbSearchCombo;
    lblproduto: TLabel;
    Label7: TLabel;
    cbFornecedor: TSgDbSearchCombo;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cdsBuscoAfterOpen(DataSet: TDataSet);
    procedure FormatarCamposFloat(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure btnPesquisaClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure DBGridDblClick(Sender: TObject);
    procedure btnEstoqueMinimoClick(Sender: TObject);
    procedure DBGridCellClick(Column: TColumn);
    procedure DBGridDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure chkAcaoFiltro(Sender: TObject);
    procedure Selecionartudo1Click(Sender: TObject);
    procedure Desmarcartudo1Click(Sender: TObject);
    procedure rdTipoClick(Sender: TObject);
    procedure chkLoteFiltro(Sender: TObject);
    procedure configuraCabImpressao (Sender : Tform);
    procedure cbProdutoReferenciaButtonClick(Sender: TObject);
    procedure cbFornecedorButtonClick(Sender: TObject);
  private
    bpesquisar : boolean;
    procedure DefaultOnChange(Sender: TObject);
    procedure FiltraDados;

  public

  end;

var
  FrmGiroDoEstoquexCompras: TFrmGiroDoEstoquexCompras;

implementation

{$R *.dfm}

uses uteis, iniciodb, PRD0001, rwfunc, Prd0006, For0002;

procedure TFrmGiroDoEstoquexCompras.cbProdutoReferenciaButtonClick(Sender: TObject);
begin
  inherited;
   FormProdutoGrid := TFormProdutoGrid.Create(Application);
   try
      FormProdutoGrid.ShowModal;
      if FormProdutoGrid.ModalResult=mrOk then
         cbProdutoReferencia.IdRetorno := FormProdutoGrid.ReferRetorno ;
   finally
          FreeAndNil( FormProdutoGrid );
   end;
end;

procedure TFrmGiroDoEstoquexCompras.cdsBuscoAfterOpen(DataSet: TDataSet);
var x, y : integer;
begin
  inherited;
  y := dataSet.Fields.count - 1;
  for x := 0 to y do
  begin
       dataSet.Fields[x].onGetText := FormatarCamposFloat;
  end;


end;


procedure TFrmGiroDoEstoquexCompras.chkAcaoFiltro(Sender: TObject);
begin
  inherited;
  if TCheckBox(Sender).Checked then
  begin
    chkVenda30.OnClick := nil;
    chkVendas60.OnClick := nil;
    chkVendas90.OnClick := nil;
    chkDiasVariaveis.OnClick := nil;
    if TCheckBox(Sender).Name <>  'chkDiasVariaveis' then
       edDias.Text := '';

    chkVenda30.Checked:= False;
    chkVendas60.Checked:= False;
    chkVendas90.Checked:= False;
    chkDiasVariaveis.Checked:= False;

    TCheckBox(Sender).Checked := True;
    chkVenda30.OnClick := chkAcaoFiltro;
    chkVendas60.OnClick := chkAcaoFiltro;
    chkVendas90.OnClick := chkAcaoFiltro;
    chkDiasVariaveis.OnClick := chkAcaoFiltro;
  end;
  bpesquisar := not (chkDiasVariaveis.Checked and ((edDias.Text = '') or (edDias.Text = '0')))
end;

procedure TFrmGiroDoEstoquexCompras.chkLoteFiltro(Sender: TObject);
begin
  inherited;
   if TCheckBox(Sender).Checked then
  begin
    chkLote30.OnClick := nil;
    chkLote60.OnClick := nil;
    chkLote90.OnClick := nil;
    chkLoteVariaveisDias.OnClick := nil;
    if TCheckBox(Sender).Name <>  'chkLoteVariaveisDias' then
       edDiasLote.Text := '';
    chkLote30.Checked := False;
    chkLote60.Checked := False;
    chkLote90.Checked := False;
    chkLoteVariaveisDias.Checked := False;

    TCheckBox(Sender).Checked := True;
    chkLote30.OnClick := chkLoteFiltro;
    chkLote60.OnClick := chkLoteFiltro;
    chkLote90.OnClick := chkLoteFiltro;
    chkLoteVariaveisDias.OnClick := chkLoteFiltro;

  end;

  bpesquisar := not (chkLoteVariaveisDias.Checked and ((edDiasLote.Text = '') or (edDiasLote.Text = '0')))
end;

procedure TFrmGiroDoEstoquexCompras.configuraCabImpressao(Sender: Tform);
begin
  dbgrid.Columns[0].Visible := False;

    with TfrmBaseReport(Sender) do
     begin
        PageSumaryAuto.ResetAfterPrint:=False;
        lbLinha1.Caption := 'Projeção de compras para '+EdtMeses.Text + 'mes(es).';


        lbLinha1.Caption:= lbLinha1.Caption + grperiodo.Caption +' '+ DateToStr(dt1.Date) + ' até '+ DateToStr(dt2.Date);
        if cb1.Checked then
          lbLinha1.Caption:= lbLinha1.Caption +' e com movimentação';
        if chkSemMov.Checked then
          lbLinha1.Caption:= lbLinha1.Caption +' e sem movimentação, porém com estoque';
        if RadEstoqueMinimo.Checked then
          lbLinha1.Caption:= lbLinha1.Caption +' . E estoque abaixo do mínimo ';
        if ComboTipo.idRetorno <> '' then
          lbLinha1.Caption := lbLinha1.Caption+ '. Tipo : '+ ComboTipo.Text;
        if ComboGrupo.idRetorno <> '' then
          lbLinha1.Caption := lbLinha1.Caption+ '. Grupo : '+ ComboGrupo.Text ;
        if ComboLinha.idRetorno <> '' then
          lbLinha1.Caption := lbLinha1.Caption+ '. Linha : '+ ComboLinha.Text ;
        lbLinha2.Caption := ' ';
        if chkVenda30.Checked  then
           lbLinha2.Caption := 'Produto sem venda nos últimos 30 dias'
        else
        if chkVendas60.Checked  then
           lbLinha2.Caption := 'Produto sem venda nos últimos 60 dias'
        else
        if chkVendas90.Checked  then
           lbLinha2.Caption := 'Produto sem venda nos últimos 90 dias'
        else
        if chkDiasVariaveis.Checked  then
           lbLinha2.Caption := 'Produto sem venda nos últimos '+ edDias.Text  + ' dias' ;
        if Length(lbLinha2.Caption) > 10 then
          lbLinha2.Caption := lbLinha2.Caption + '. ';
        if chkLote30.Checked then
           lbLinha2.Caption := lbLinha2.Caption + 'Lote a vencer nos próximos 30 dias'
        else
        if chkLote60.Checked then
           lbLinha2.Caption := lbLinha2.Caption + 'Lote a vencer nos próximos 60 dias'
        else
        if chkLote90.Checked then
           lbLinha2.Caption := lbLinha2.Caption + 'Lote a vencer nos próximos 90 dias'
        else
        if chkLoteVariaveisDias.Checked then
           lbLinha2.Caption := lbLinha2.Caption + 'Lote a vencer nos próximos '+ edDiasLote.Text  +' dias'
     end;
  dbgrid.Columns[0].Visible := True;
end;

procedure TFrmGiroDoEstoquexCompras.DBGridCellClick(Column: TColumn);
begin
  inherited;
  if not (cdsBusco.IsEmpty) and (Column.FieldName = 'SELECIONADO') then
  begin
      if  not (cdsBusco.State in dsEditModes)  then
        cdsBusco.Edit;
     if cdsBusco.FieldByName('selecionado').AsInteger = 0 then
       cdsBusco.FieldByName('selecionado').AsInteger :=  1
      else
       cdsBusco.FieldByName('selecionado').AsInteger := 0;
     cdsBusco.Post;
  end;
end;

procedure TFrmGiroDoEstoquexCompras.DBGridDblClick(Sender: TObject);
begin
  inherited;
//     FormProduto := TFormProduto.Create(Application);
//     try
//        FormProduto.FormStyle := fsNormal;
//        FormProduto.Visible := false;
//
//         if (FormProduto.CdsProdutos.State in [dsBrowse]) and not(FormProduto.CdsProdutos.isEmpty) then
//         begin
//              FormProduto.EdtPrd_Refer.Text := cdsBusco.FieldByName('prd_refer').AsString;
//              FormProduto.BuscaProduto;
//              FormProduto.AtivaSqls;
//         end;
//         FormProduto.ShowModal;
//     finally
//        FreeAndNil( FormProduto );
//     end;
end;

procedure TFrmGiroDoEstoquexCompras.DBGridDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  Check: Integer;
  R: TRect;
begin
  inherited;
 if not cdsBusco.IsEmpty then
  begin
    if Column.FieldName = 'SELECIONADO' then
    begin
      TDBGrid(Sender).Canvas.FillRect(Rect);
      if cdsBusco.FindField('SELECIONADO').AsInteger = 1 then
          Check := DFCS_CHECKED
      else Check := 0;

      R:=Rect;
      TDBGrid(sender).Canvas.Font.Color :=  TDBGrid(sender).Canvas.Brush.Color;
      InflateRect(R,-2,-2); //Diminue o tamanho do CheckBox
      DrawFrameControl(TDBGrid(Sender).Canvas.Handle,R,DFC_BUTTON, DFCS_BUTTONCHECK or Check);
    end;
  end;
end;

procedure TFrmGiroDoEstoquexCompras.DefaultOnChange(Sender: TObject);
begin
  bpesquisar := False;
end;

procedure TFrmGiroDoEstoquexCompras.Desmarcartudo1Click(Sender: TObject);

var clone : TClientDataSet;
begin
  clone := TClientDataSet.Create(Self);

  try
    clone.CloneCursor(cdsBusco,False);

    clone.Filtered := False;
    clone.First;
    while not clone.eof do
    begin
      clone.Edit;
      clone.FieldByName('SELECIONADO').AsInteger := 0;
      clone.Post;
      clone.Next;
    end;

  finally
    FreeAndNil(clone);
  end;

end;

procedure TFrmGiroDoEstoquexCompras.FormatarCamposFloat(Sender: TField; var Text: string; DisplayText: Boolean);
var comprar, custocompra, ultimoPreco, saldo: currency;
begin
    if (sender.DataType = ftFloat)  or  (sender.DataType =  ftCurrency) or (sender.DataType =  ftBCD) or (sender.DataType = ftFMTBcd) or  (sender.DataType = ftExtended)
    then
        text := formatFloat('###,###,##0.000', sender.asFloat)
    else
        text := sender.asString;

    if sender.FieldName = 'COMPRAR' then
    begin
      comprar:= 0 ;
      if (cdsBusco.FieldByName('media').AsCurrency >0) then
      begin
        comprar := (cdsBusco.FieldByName('media').AsCurrency * EdtMeses.Value) - cdsBusco.FieldByName('kas_saldo').AsCurrency;

       if(comprar <= 0) then
         comprar := 0;

       if (cdsBusco.FieldByName('prd_minimo').AsCurrency > comprar) and (comprar > 0 )  then
         comprar := cdsBusco.FieldByName('prd_minimo').AsCurrency - comprar;
      end
      else
      begin
        if (cdsBusco.FieldByName('prd_minimo').AsCurrency >0 ) then
          comprar := cdsBusco.FieldByName('prd_minimo').AsCurrency -  cdsBusco.FieldByName('kas_saldo').AsCurrency;

      end;

     if(comprar <= 0) then
         text := '0.000'
     else
         text :=  formatFloat('###,###,##0.000', comprar );
    end;
    if sender.FieldName = 'CUSTOCOMPRA' then
    begin
        ultimoPreco :=  cdsBusco.FieldByName('custo').AsCurrency;
        comprar := (cdsBusco.FieldByName('media').AsCurrency * EdtMeses.Value) - cdsBusco.FieldByName('kas_saldo').AsCurrency;
        if(comprar <= 0) then
            text :=  '0.000'
        else
        text :=  formatFloat('###,###,##0.000', (Uteis.RoundTo(ultimoPreco,-3) * comprar) ) ;
    end
    else
    if  UpperCase(sender.FieldName) = 'VALORESTOQUE' then
    begin
      saldo := cdsBusco.FieldByName('kas_saldo').AsCurrency;
      ultimoPreco :=  cdsBusco.FieldByName('custo').AsCurrency;
      text :=  formatFloat('###,###,##0.00', (saldo * Uteis.RoundTo(ultimoPreco,-3))) ;
    end
    else if sender.FieldName = 'SELECIONADO' then
    begin
      Text := EmptyStr

    end;



end;

procedure TFrmGiroDoEstoquexCompras.FiltraDados;
var mes, ano, dia, mes1 : word ;
    anoini,mesini, // ano e mes inicial da pesquisa
    anofim,mesfim : integer; // ano e mes final da pesquisa
    d1, d2: tDateTime;
    FieldName: string;

    quantidadeDeMeses : integer;
    diasLote : string;
    Const  AMes: Array[1..12] of String = ('Jan','Fev','Mar','Abr','Mai','Jun','Jul','Ago','Set','Out','Nov','Dez');

///
   PRocedure addcolumn( cln, fld: string; largura: integer );
   begin
       with dbGrid.Columns.add do
       begin
            title.Caption :=  cln;
            FieldName := fld;
            if largura <> 0 then
                Width := largura;
       end;

   end;
///
begin
  try
   if not bpesquisar then
    exit;

    Screen.Cursor := crHourGlass;
    if chkSemMov.Checked then
      cdsbusco.filter := 'media=0 and (kas_saldo <>0)'
    else if cb1.checked then
      cdsbusco.filter := 'media<>0';

    cdsBusco.Filtered :=  cb1.checked or chkSemMov.checked;


     qBusco.sql.clear;
     qBusco.sql.ADD('SELECT 0 as selecionado, prd0000.prd_codigo,  prd0000.prd_refer , prd0000.prd_descri,                         ');
     qBusco.SQL.Add(' COALESCE((select SUM(COALESCE(kas_saldo,0)) FROM KARDEX_ALMOX_SALDO where KARDEX_ALMOX_SALDO.PRD_CODIGO = PRD0000.PRD_CODIGO '
     +ConcatSe(' AND KARDEX_ALMOX_SALDO.',dbInicio.ExclusivoSql('ESTOQUES'))+'  ),0)  AS kas_saldo, ');
     qBusco.sql.ADD( '  prd0000.prd_minimo,prd0000.prd_und, 0.00 as Comprar, prd0000.prd_pcusto as custo, 0.00 as CustoCompra, 0.00 as ValorEstoque ' );
     d1 := StartOfTheMonth(dt1.Date);
     d2 := EndOfTheMonth(dt2.Date);

     mes1 := MonthOf ( d1 );
     mes := MonthOf ( d1 ) ;
     ano := YearOf ( d1 ) ;
     dia := 1;


     mesini:= MonthOfTheYear (dt1.Date);
     anoini:= YearOf(dt1.Date);
     mesfim:= MonthOfTheYear (dt2.Date);
     anofim:= YearOf(dt2.Date);

     dbGrid.Columns.Clear;
     addcolumn ('*','selecionado',20);
     addcolumn ('Referência','prd_refer',70);
     addcolumn ('Descrição','prd_descri',300);
     addcolumn ('UN','prd_und',30);

      quantidadeDeMeses:= 0;

     while d1 <= d2 do
     begin
         if not chkSemMov.Checked then
         begin
         FieldName := 'prd'+ IntToStr(mes) + IntToStr(ano);
         if rdTipo.ItemIndex = 0 then     //VENDA
          qBusco.sql.ADD( ', (select sum(qtd) from Lista_Qtde_Vendas_MesAno va '+
          'where va.prd_refer = prd0000.prd_refer and va.mes = '+mes.toString+' and va.ano = '+ano.tostring+' ) as '+FieldName)
         Else   //CONSUMO
          qBusco.SQL.Add(', (SELECT  SUM( osi_qtde1)                                                                                  '+
                         ' FROM OSV_IT02 oit JOIN OSV0001 O1 ON (O1.osv_codigo = oit.OSV_CODIGO AND o1.EMP_CODIGO = oit.EMP_CODIGO )  '+
                         ' WHERE oit.prd_refer_itens = prd0000.PRD_REFER  '+ ConcatSe(' and prd0000.',DBInicio.ExclusivoSql('PRODUTOS')) +
                         ' and extract( month from OSV_EMISSAO ) = '+ mes.toString +
                         ' and extract( year from OSV_EMISSAO ) =  '+ ano.tostring+' ) as '+FieldName);


         addcolumn( ames[mes]+'/'+ano.ToString, FieldName,90);
         end;
         inc(mes);
         if mes>12 then
         begin
              mes := 1;
              inc(ano);
         end;

         d1 := encodedate ( ano, mes, dia );
        INC(quantidadeDeMeses);
    end;
    Dec(mes);
    d1 := StartOfTheMonth(dt1.Date);
    d2 := EndOfTheMonth(dt2.Date);
    if rdTipo.ItemIndex = 0 then     //VENDA
      //media de venda : itens da nota + os itens dos kit que não vão a nota
      qBusco.sql.ADD( ', (( SELECT  coalesce(sum(coalesce(it.nf_qtde ,0)),0) '+
                      ' from nf0001 nf                                                   '+
                      ' join nf_it01 it on it.nf_it_notanumer = nf.nf_notanumber         '+
                  //    ' join ope0000 D on d.ope_codigo=it.ope_codigo and d.OPE_TIPO_OPERACAO=''V'' '+
                      ' where it.prd_codigo = prd0000.prd_codigo ' +
                      ' and NF_VENDA_FATURADA = '+ QuotedStr('S')+
                      ' and nf.nf_emissao  BETWEEN '+ DateToSQL(d1)+' and '+ DateToSQL(d2) +
                      '  ) +  '+
                      ' (select  coalesce(sum(it.prf_qtde *  it2.PRF_QTDE),0)  '+
                      '  FROM PED_IT01 it                                    '+
                      '  JOIN NF0001 nf ON (it.PED_CODIGO = nf.PED_CODIGO)   '+
                      '  join PED_IT01 it2 on (it2.PRF_REGISTRO = it.PRF_REGISTRO_VINCULADO)   '+
                      '  WHERE it.PRF_REGISTRO_VINCULADO > 0 '+
                      ' and prd0000.prd_codigo=it.prd_codigo '+
                      ' and NF_VENDA_FATURADA = '+ QuotedStr('S')+
                      ' and nf.nf_emissao  BETWEEN '+ DateToSQL(d1)+' and '+ DateToSQL(d2) +
                      ' ))/ '+quantidadeDeMeses.ToString+ ' as media ' )
    Else // média consumo
      qBusco.sql.ADD( ', ( SELECT  SUM(coalesce(osi_qtde1,0))  / '+quantidadeDeMeses.ToString+
                      ' FROM OSV_IT02 oit JOIN OSV0001 O1 ON (O1.osv_codigo = oit.OSV_CODIGO AND o1.EMP_CODIGO = oit.EMP_CODIGO ) '+
                      ' WHERE oit.prd_refer_itens = prd0000.PRD_REFER '+ConcatSe('and prd0000.',DBInicio.ExclusivoSql('PRODUTOS'))+
                      ' AND OSV_EMISSAO BETWEEN ' + DateToSQL(d1)+' and '+ DateToSQL(d2) +' ) as media ') ;

    //quantidade de fornecedores
    qBusco.SQL.Add(',(SELECT cast(count(DISTINCT FOR_CODIGO) as integer)         '+
                  ' FROM (SELECT DISTINCT FOR_CODIGO            '+
                  ' FROM ENF_IT01 E1                            '+
                  ' WHERE E1.prd_codigo = prd0000.prd_codigo    '+
                  '	UNION                                       '+
                  ' SELECT FOR_CODIGO                           '+
                  ' FROM PRD0000_CODIGO PC                      '+
                  ' WHERE PC.PRD_CODIGO = PRD0000.PRD_CODIGO  )) QF ');
    if rdTipo.ItemIndex = 0 then
    begin
      qBusco.SQL.Add(' ,(SELECT  MAX( NF_EMISSAO) FROM NF_IT01 T1                          '+
                     '   JOIN NF0001 T7 ON (T7.NF_NOTANUMBER = T1.NF_IT_NOTANUMER)        '+
                     ' WHERE T7.NF_VENDA_FATURADA = ''S''                                   '+
                     ' AND  T1.PRD_CODIGO = prd0000.PRD_CODIGO  ) data_ult                  ');

      qBusco.SQL.Add(' ,datediff(day,  (SELECT  MAX( NF_EMISSAO) FROM NF_IT01 T1                   '+
                     '   JOIN NF0001 T7 ON (T7.NF_NOTANUMBER = T1.NF_IT_NOTANUMER)                '+
                     ' WHERE T7.NF_VENDA_FATURADA = ''S''                                           '+
                     ' AND  T1.PRD_CODIGO = prd0000.PRD_CODIGO  ) , CURRENT_DATE) as DIAS_SEMCOMPRA ');
//      qBusco.SQL.Add(',( SELECT min(PRDL_DATA_VALIDADE) FROM PRD_LOTE lte  WHERE PRDL_SALDO > 0 '+
//                       'AND  lte.PRD_CODIGO = prd0000.PRD_CODIGO) lote_validade       ');
    end;
    qBusco.sql.ADD( 'FROM prd0000                                                                         ');
    If (ComboTipo.text<>'') then
      qBusco.sql.ADD( '  join prd_tipo on prd0000.pti_codigo = prd_tipo.pti_codigo                  ');
    If (ComboGrupo.text<>'') then
      qBusco.sql.ADD( ' join PRD_GRUPO pg on prd0000.pgr_codigo = pg.pgr_codigo                  ');
    If (ComboLinha.text<>'') then
      qBusco.sql.ADD( '  join PRD_LINHA pl on prd0000.LIN_CODIGO = pl.LIN_CODIGO                  ');
//    qBusco.sql.ADD( '     left join ped_venda_perdida on prd0000.prd_refer = ped_venda_perdida.prd_refer ' );
//    qBusco.sql.ADD( '     LEFT JOIN KARDEX_ALMOX_SALDO ON KARDEX_ALMOX_SALDO.PRD_CODIGO = PRD0000.PRD_CODIGO ');

  //  addcolumn ('Venda Perdida','pvp_quantidade',90);
    addcolumn ('Estoque Atual','kas_saldo',90);
    addcolumn ('Valor Estoque','ValorEstoque',90);

    if rdTipo.ItemIndex = 0 then
      addcolumn ('Média Venda', 'media', 90)
    else
      addcolumn ('Média consumo', 'media', 90);
    addcolumn ('Estoque Minimo','prd_minimo',90);
    addcolumn ('Sugestão Compra', 'comprar', 100);
    addcolumn ('Último Custo', 'custo', 90);
    addcolumn ('Custo Compra', 'CustoCompra', 90);
    if rdTipo.ItemIndex = 0 then
    begin
      addcolumn ('Última venda', 'data_ult', 90);
      addcolumn ('Dias sem venda', 'DIAS_SEMCOMPRA',90);
    end;
    addcolumn ('Num Fornecedores', 'QF', 90);
     { where restrições da pesquisa  }
//    //CONSIDERAR
//    If RadVendasPerdidas.Checked then
//       SQLADD( 'ped_venda_perdida.pvp_quantidade > 0'); //VENDAS PERDIDAS
    If RadEstoqueMinimo.Checked then
      SqlAdd('COALESCE((select SUM(COALESCE(kas_saldo,0)) FROM KARDEX_ALMOX_SALDO where KARDEX_ALMOX_SALDO.PRD_CODIGO = PRD0000.PRD_CODIGO '+
             ConcatSe(' AND KARDEX_ALMOX_SALDO.',dbInicio.ExclusivoSql('ESTOQUES'))+'  ),0)< PRD0000.PRD_MINIMO ' );

    //BUSCA
    if cbFornecedor.idretorno <> '' then
      sqladd(' exists (SELECT 1 FROM PRD0000_CODIGO fr WHERE fr.PRD_CODIGO = prd0000.prd_codigo AND FOR_CODIGO = '+ quotedstr(cbfornecedor.idretorno) + ')');

    If (ComboTipo.text<>'') then
      sqladd( 'PRD_TIPO.PTI_DESCRI CONTAINING '+qStr(ComboTipo.Text)); //TIPO
    If (ComboGrupo.text<>'') then
      sqladd( 'pg.PGR_DESCRI CONTAINING '+qStr(ComboGrupo.Text)); //GRUPO
    If (ComboLinha.text<>'') then
      sqladd( 'pl.LIN_DESCRI CONTAINING '+qStr(ComboLinha.Text)); //LINHA
    If cbProdutoReferencia.idRetorno <> '' then
       sqladd( 'prd0000.prd_refer = '+QuotedStr(cbProdutoReferencia.idRetorno)  )
    else
    if cbProdutoReferencia.Text <> '' then
     sqladd( 'prd0000.PRD_DESCRI CONTAINING '+ QuotedStr(cbProdutoReferencia.Text)); //produto

    if (rdTipo.ItemIndex = 0) and chkVenda30.Checked then
      sqladd( ' datediff(day,  (SELECT  MAX( NF_EMISSAO) FROM NF_IT01 T1                   '+
              '   JOIN NF0001 T7 ON (T7.NF_NOTANUMBER = T1.NF_IT_NOTANUMER)                '+
              ' WHERE T7.NF_VENDA_FATURADA = ''S''                                         '+
              ' AND  T1.PRD_CODIGO = prd0000.PRD_CODIGO  ) , CURRENT_DATE)   >=30          ')
   else
   if (rdTipo.ItemIndex = 0) and  chkVendas60.Checked then
      sqladd( ' datediff(day,  (SELECT  MAX( NF_EMISSAO) FROM NF_IT01 T1                   '+
              '   JOIN NF0001 T7 ON (T7.NF_NOTANUMBER = T1.NF_IT_NOTANUMER)                '+
              ' WHERE T7.NF_VENDA_FATURADA = ''S''                                         '+
              ' AND  T1.PRD_CODIGO = prd0000.PRD_CODIGO  ) , CURRENT_DATE)   >=60          ')
   else
   if (rdTipo.ItemIndex = 0) and  chkVendas90.Checked then
      sqladd( ' datediff(day,  (SELECT  MAX( NF_EMISSAO) FROM NF_IT01 T1                   '+
              '   JOIN NF0001 T7 ON (T7.NF_NOTANUMBER = T1.NF_IT_NOTANUMER)                '+
              ' WHERE T7.NF_VENDA_FATURADA = ''S''                                         '+
              ' AND  T1.PRD_CODIGO = prd0000.PRD_CODIGO  ) , CURRENT_DATE)   >=90          ')
   else
   if (rdTipo.ItemIndex = 0) and  chkDiasVariaveis.Checked then
   begin
     if (edDias.Text = '' ) or (edDias.Text = '0') then
     begin
      edDias.SetFocus;
      raise Exception.Create('Preencher os dias');
     end;
      sqladd( ' datediff(day,  (SELECT  MAX( NF_EMISSAO) FROM NF_IT01 T1                   '+
                '   JOIN NF0001 T7 ON (T7.NF_NOTANUMBER = T1.NF_IT_NOTANUMER)                '+
                ' WHERE T7.NF_VENDA_FATURADA = ''S''                                         '+
                ' AND  T1.PRD_CODIGO = prd0000.PRD_CODIGO  ) , CURRENT_DATE)   >='+  edDias.Text );

  end    ;
  if (rdTipo.ItemIndex = 0) and chkLote30.Checked then
    diasLote := '30'
  else
  if (rdTipo.ItemIndex = 0) and  chkLote60.Checked then
    diasLote := '60'
  else
  if (rdTipo.ItemIndex = 0) and chkLote90.Checked then
    diasLote := '90'
  else
  if (rdTipo.ItemIndex = 0) and  chkLoteVariaveisDias.Checked then
  begin
    if (edDiasLote.Text = '') or (edDiasLote.Text = '0') then
    begin
      edDiasLote.SetFocus;
      raise Exception.Create('Coloque os dias para vencer o lote.');
    end;
    diasLote := edDiasLote.Text;
  end;
  if StrToIntDef(diasLote,0) > 0  then
    SqlAdd('EXISTS (  SELECT 1 FROM PRD_LOTE lte '+
           ' WHERE PRDL_SALDO > 0 ' + // tem saldo
           ' AND datediff(DAY,CURRENT_DATE,PRDL_DATA_VALIDADE) <= '+diasLote +
           ' AND lte.PRD_CODIGO = prd0000.prd_codigo  )');

 finally
  Screen.Cursor := crDefault;
  bpesquisar := False;
 end;
end;


procedure TFrmGiroDoEstoquexCompras.btnEstoqueMinimoClick(Sender: TObject);
var clone: TClientDataSet;
begin

  if cdsbusco.IsEmpty then
    exit;

  if (Uteis.confirmacao ('Atenção: '+#13+#10+'Se prosseguir esta ação o sistema estará redefinindo o estoque mínimo do(s) produto(s) selecionado(s) pela média de venda que foi calculado.'+#13+#10) = mrYes ) then
  begin
    clone:= TClientDataSet.Create(self);
    try
     Screen.Cursor := crHourGlass;
     clone.CloneCursor(cdsbusco,false);
     clone.Filtered := False;
      clone.Filter:= '(selecionado = true)';
      clone.Filtered := True;
      if clone.RecordCount = 0 then
        raise Exception.Create('Nada foi selecionado.');
      while not clone.Eof do
      begin
        if clone.FieldByName('media').AsFloat > 0 then
        ExecSql('update prd0000 set prd_minimo = '+ FloatToSQL (clone.FieldByName('media').AsFloat)+
               ' where prd_codigo = '+QuotedStr(clone.FieldByName('PRD_CODIGO').AsString) );
        clone.Next;
      end;
      Aviso('Atualização do estoque mínimo realizado com sucesso');
    finally
     FreeAndNil(clone);
     Screen.Cursor := crDefault;
    end;

  end;

end;

procedure TFrmGiroDoEstoquexCompras.btnLimparClick(Sender: TObject);
begin
 inherited;
 edtMeses.Value:=1;
end;

procedure TFrmGiroDoEstoquexCompras.btnPesquisaClick(Sender: TObject);
begin

  bpesquisar := True;


  fmAnimacao := TfmAnimacao.Create(application);
  try
   Screen.Cursor := crHourGlass;

    fmAnimacao.Caption :=  'Buscando Informações. Aguarde, isto poderá demorar um pouco...';
    Application.ProcessMessages;
    fmAnimacao.Show;

    inherited;
  finally
    fmAnimacao.Close;
end;
end;

procedure TFrmGiroDoEstoquexCompras.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TFrmGiroDoEstoquexCompras.FormCreate(Sender: TObject);
begin
  inherited;
  SalvaStatusGrid:=False;
  CampoID := 'prd_codigo';
  campoIDretorno := 'prd_codigo';
  ProcedureFiltro:= FiltraDados;
  aCaption := 'GIRO DO ESTOQUE X NECESSIDADE DE COMPRAS';
  Self.ProcHeaderBeforePrintAuto:=configuraCabImpressao;
  Filtrados := True;
 // TituloRelAuto := acaption;
  dt1.Date := StartOfTheMonth(Date - 90);
  dt2.Date := EndOfTheMonth(Date);
  bpesquisar := False;
  self.Constraints.MaxHeight := 0 ;
end;

procedure TFrmGiroDoEstoquexCompras.FormDestroy(Sender: TObject);
begin
  inherited;
  FrmGiroDoEstoquexCompras := Nil;
end;

procedure TFrmGiroDoEstoquexCompras.FormResize(Sender: TObject);
begin
  inherited;
//  Width:=989;
//  Height:=642;
end;

procedure TFrmGiroDoEstoquexCompras.FormShow(Sender: TObject);
begin
  inherited;
  self.windowstate :=  wsMaximized;
  dt1.OnChange :=  DefaultOnChange;
  dt2.OnChange := DefaultOnChange;
  EdtMeses.OnChange := DefaultOnChange;
  cbProdutoReferencia.OnChange := DefaultOnChange;
  ComboTipo.OnChange :=DefaultOnChange;
  ComboGrupo.OnChange := DefaultOnChange;
  ComboLinha.OnChange := DefaultOnChange;
 // Filtro;
end;

procedure TFrmGiroDoEstoquexCompras.rdTipoClick(Sender: TObject);
begin
  inherited;
  if rdTipo.ItemIndex = 0 then
  begin
    grperiodo.Caption := 'Vendas entre ';
    clearence.Visible := True;

  end
  else
  begin
    grperiodo.Caption := 'Consumo entre ';
    clearence.Visible := False;

  end;
end;

procedure TFrmGiroDoEstoquexCompras.Selecionartudo1Click(Sender: TObject);
var clone : TClientDataSet;
begin
  clone := TClientDataSet.Create(Self);

  try
    clone.CloneCursor(cdsBusco,False);

    clone.Filtered := False;
    clone.First;
    while not clone.eof do
    begin
      clone.Edit;
      clone.FieldByName('SELECIONADO').AsInteger := 1;
      clone.Post;
      clone.Next;
    end;

  finally
    FreeAndNil(clone);
  end;

end;

procedure TFrmGiroDoEstoquexCompras.cbFornecedorButtonClick(Sender: TObject);
begin
  inherited;
   FormFornecGrid := TFormFornecGrid.Create(Application);
   try
      if FormFornecGrid.ShowModal= mrok then
        cbFornecedor.IdRetorno := FormFornecGrid.IDRetorno; ;
   finally
      FreeAndNil( FormFornecGrid );
   end;
end;

end.




