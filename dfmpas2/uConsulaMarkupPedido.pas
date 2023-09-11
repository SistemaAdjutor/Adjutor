unit uConsulaMarkupPedido;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, SqlExpr,SqlClientDataSet, Provider, DB, DBClient, DBLocal,
  DBLocalS, Grids, DBGrids,  rxCurrEdit, Mask,  rxToolEdit, Menus,
  Data.DBXFirebird, SimpleDS, Vcl.ExtCtrls;

type
  TFrmConsultaMarkupPedido = class(TForm)
    grpPedido: TGroupBox;
    grpPedidoItens: TGroupBox;
    lblPedido: TLabel;
    lblEmissao: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    EdPedidoNumero: TEdit;
    DteEntrada: TDateEdit;
    edtVendedor: TEdit;
    CurValorProdutos: TCurrencyEdit;
    Label3: TLabel;
    CurCusto: TCurrencyEdit;
    Label4: TLabel;
    CurLucro: TCurrencyEdit;
    CurMarkup: TCurrencyEdit;
    Label5: TLabel;
    Label6: TLabel;
    CurResultadoVenda: TCurrencyEdit;
    Label7: TLabel;
    edtCliente: TEdit;
    Label8: TLabel;
    DbGradeItemPedido: TDBGrid;
    DsPedidoItem: TDataSource;
    SqlCdsPedidoItem: TSQLClientDataSet;
    SqlCdsPedidoItemPED_CODIGO: TStringField;
    SqlCdsPedidoItemPRF_REGISTRO: TIntegerField;
    SqlCdsPedidoItemPRD_REFER: TStringField;
    SqlCdsPedidoItemDESCRICAO: TStringField;
    SqlCdsPedidoItemPRF_QTDE: TFMTBCdField;
    SqlCdsPedidoItemPRF_QTDEFAT: TFMTBCdField;
    SqlCdsPedidoItemDESCONTO: TFMTBCdField;
    SqlCdsPedidoItemPRF_PRECO: TFMTBCdField;
    SqlCdsPedidoItemMARKUP: TFMTBCdField;
    SqlCdsPedidoItemTOTAL: TFMTBCdField;
    SqlCdsPedidoItemPRF_IPIALIQ: TFMTBCdField;
    SqlCdsPedidoItemPRF_ITEMCOMIS: TFMTBCdField;
    SqlCdsPedidoItemDI: TStringField;
    SqlCdsPedidoItemPRD_PESOLIQ: TFMTBCdField;
    SqlCdsPedidoItemPRD_PESOKG: TFMTBCdField;
    SqlCdsPedidoItemPRD_CODIGO: TStringField;
    SqlCdsPedidoItemPRD_DESCRI: TStringField;
    SqlCdsPedidoItemPRF_PRODUTO_AGREGADO: TStringField;
    SqlCdsPedidoItemPRG_REGISTRO: TIntegerField;
    SqlCdsPedidoItemPRF_COMPL_DESCRI: TStringField;
    SqlCdsPedidoItemAMX_CODIGO_DESTINO: TStringField;
    SqlCdsPedidoItemPRD_PRODSERV: TStringField;
    SqlCdsPedidoItemPRF_ACRESCIMO: TFMTBCdField;
    SqlCdsPedidoItemPRF_QTDE_ENV_PRODUCAO: TFMTBCdField;
    SqlCdsPedidoItemPRF_CUSTO: TFMTBCdField;
    SqlCdsPedidoItemCustoItem: TFloatField;
    SqlCdsPedidoItemMarkupItem: TFloatField;
    SqlCdsPedidoItemLucro: TFloatField;
    Label9: TLabel;
    edtEmpresa: TEdit;
    CdsPedido: TSQLClientDataSet;
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
    dsPedido: TDataSource;
    pmNota: TPopupMenu;
    ManutenodeCustos1: TMenuItem;
    SqlCdsPedidoItemPRF_IDESCTO1: TFloatField;
    SqlCdsPedidoItemPRF_IDESCTO2: TFloatField;
    Panel1: TPanel;
    Label10: TLabel;
    Bit_Sair: TBitBtn;
    SqlCdsPedidoItemMargem: TFloatField;
    SqlCdsPedidoItemprf_preco_bruto: TFMTBCDField;
    CdsPedidoNF_TOT_NOTA: TFMTBCDField;
    lbTotal: TLabel;
    lbTotalDesconto: TLabel;
    lbDescontoMedio: TLabel;
    procedure Bit_SairClick(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure SqlCdsPedidoItemCalcFields(DataSet: TDataSet);
    procedure CdsPedidoCalcFields(DataSet: TDataSet);
    procedure ManutenodeCustos1Click(Sender: tObject);
  private
    { Private declarations }
    procedure BuscaPedidoItem(sPedidoCodigo: String);
    procedure BuscaPedido(sPedidoCodigo: String);
    procedure ChamaConsultaMarkupManutencao(sPedido, sReferenciaProduto,
      sEmpresa: String);
  public
    { Public declarations }
  end;

var
  FrmConsultaMarkupPedido: TFrmConsultaMarkupPedido;

implementation

uses
  uConsulaMarkup, uConsulaMarkupManu,  RWFunc, uteis, InicioDB;

{$R *.dfm}

procedure TFrmConsultaMarkupPedido.Bit_SairClick(Sender: tObject);
begin
   Close;
end;

procedure TFrmConsultaMarkupPedido.BuscaPedidoItem(sPedidoCodigo: String);
var
   sQuery:String;
   soma, totalDesconto, descontoMedio, prfQtde, prfPrecoLiq, PrfPrecoBruto: Double;
   divisorDescontoMedio : integer;
begin
   SqlCdsPedidoItem.Close;
   if (sPedidoCodigo <> '') then
      begin
         sQuery := 'select '+
                   't2.PRD_CODIGO,'+
                   't1.AMX_CODIGO_DESTINO,'+
                   't1.ped_codigo, '+
                   't1.prf_registro, '+
                   't1.prd_refer, '+
                   'coalesce(t1.PRF_PRDDESCRI,'''')||'' ''||coalesce(t1.prf_compl_descri,'''') AS DESCRICAO, '+
                   't1.prf_qtde, '+
                   't2.prd_codigo,' +
                   't2.prd_descri, '+
                   't1.prf_produto_agregado, '+
                   't1.prg_registro, '+
                   't1.prf_compl_descri, '+
                   't1.amx_codigo_destino, '+
                   't1.prf_idescto1, '+
                   't1.prf_idescto2, '+
                   't1.prf_qtdefat, '+
                   't1.prf_acrescimo, '+
                   ' cast(t1.prf_preco_bruto as numeric(15,5)) AS prf_preco_bruto, ' +
                 //  't1.prf_preco_bruto, '+
                   ' CAST((case when t1.prf_qtde IS NOT NULL  AND t1.prf_idescto1 > 0 THEN  (t1.prf_preco_bruto - t1.prf_preco) '+
                   '      when (t1.prf_preco_bruto > t1.prf_preco) then   (t1.prf_preco_bruto - t1.prf_preco) '+
                   ' else 0.00 END) as numeric(15,5))  AS desconto, ' +
                   //'t1.prf_idescto1 - (t1.prf_idescto2 /100) as desconto,'+
//                   't1.prf_preco, '+
                  // ' CASE WHEN it.NF_QTDE IS NOT NULL  AND NF_IDESCTO1 > 0 THEN NF_PRECO- (NF_IDESCTO1/it.NF_QTDE) ELSE t1.PRF_PRECO END  AS prf_preco, ' +
                  ' prf_preco, '+
                   't1.prf_custo, '+
                   'case '+
                   '    when (0 > 0) then '+
                   '        0.00 '+
                   '    else '+
                   '        0.00 '+
                   'end as markup, '+
                   'Cast(cast(t1.prf_qtde as numeric(15,3)) * cast(t1.prf_preco as numeric(15,5))as numeric(18,2)) as total,'+
                   't1.prf_ipialiq, '+
                   't1.prf_itemcomis, '+
                   'case '+
                   '    when ((select cast(count(t6.pid_registro) as integer) from ped_it01_di t6 where t6.prf_registro = t1.prf_registro) > 0) then '+
                   '        ''S'' '+
                   '    else '+
                   '        ''N'' '+
                   'end as di, '+
                   't2.prd_pesoliq, '+
                   't2.prd_pesokg,'+
                   't1.prf_qtde_env_producao,'+
                   'COALESCE(t2.PRD_PRODSERV,''P'') as  PRD_PRODSERV '+
                   'from '+
                   'ped_it01 t1 '+
                   ' join prd0000 t2 on (t2.prd_refer = t1.prd_refer  '+ ConcatSe(' and t2.',DBInicio.ExclusivoSql('PRODUTOS')) +' )'+
                   ' left join prd_grade t3 on (t3.prg_registro = t1.prg_registro)' ;
//                   ' left join NF0001 NF ON (NF.PED_CODIGO = t1.PED_CODIGO AND NF.EMP_CODIGO = t1.EMP_CODIGO AND nf_cancelada = ''N'' ) '+
//                   ' left join NF_IT01 it ON (it.NF_IT_NOTANUMER = nf.NF_NOTANUMBER AND NF.EMP_CODIGO = it.EMP_CODIGO  AND it.PRF_REGISTRO = t1.PRF_REGISTRO  ) ';
         SqlCdsPedidoItem.CommandText := '';
         SqlCdsPedidoItem.CommandText := sQuery +' where t1.ped_codigo = '+QuotedStr(sPedidoCodigo)+' and T1.EMP_CODIGO = '+QuotedStr(edtEmpresa.Text)+' ORDER BY PRF_REGISTRO';
         if DBInicio.IsDesenvolvimento then
            CopyToClipBoard(SqlCdsPedidoItem.CommandText);
         SqlCdsPedidoItem.Open;
         soma := 0;
         totalDesconto := 0;
         descontoMedio := 0;
         divisorDescontoMedio := 0;
         SqlCdsPedidoItem.DisableControls;
         while not SqlCdsPedidoItem.Eof do
         begin
           soma := soma + SqlCdsPedidoItem.FieldByName('total').AsFloat;
           totalDesconto := totalDesconto + (SqlCdsPedidoItem.FieldByName('prf_qtde').AsFloat * SqlCdsPedidoItem.FieldByName('desconto').AsFloat);

           prfQtde := SqlCdsPedidoItem.FieldByName('prf_qtde').AsFloat;
           prfPrecoLiq := SqlCdsPedidoItem.FieldByName('prf_preco').AsFloat;
           prfPrecoBruto := SqlCdsPedidoItem.FieldByName('prf_preco_bruto').AsFloat;
           descontoMedio := descontoMedio + ( 1-  ((prfQtde * prfPrecoLiq) / (prfQtde * PrfPrecoBruto)) )   * 100;
           Inc(divisorDescontoMedio);
           SqlCdsPedidoItem.Next;
         end;
         SqlCdsPedidoItem.First;
         SqlCdsPedidoItem.EnableControls;
         lbTotal.Caption := 'Total Liquido: ' + FormatFloat('###,###,##.00', soma);
         lbTotalDesconto.Caption := 'Total Desconto: ' + FormatFloat('###,###,##.00', totalDesconto);
         lbDescontoMedio.Caption := '% Desconto Médio: ' + FormatFloat('###,###,##.00', descontoMedio / divisorDescontoMedio);
      end;
end;

procedure TFrmConsultaMarkupPedido.FormShow(Sender: tObject);
begin
   //
   BuscaPedido(EdPedidoNumero.Text);

   //Infirmações Pedido
   edtEmpresa.Text :=  CdsPedidoEMP_CODIGO.AsString;
   EdPedidoNumero.Text := CdsPedidoPED_CODIGO.AsString;
   DteEntrada.Date := CdsPedidoPED_DTENTRADA.AsDateTime;
   edtVendedor.Text := CdsPedidoREP_NOME.AsString;

   edtCliente.Text := CdsPedidoCLI_RAZAO.AsString;
   CurValorProdutos.Value := CdsPedidoNF_TOT_NOTA.AsCurrency;
   CurCusto.Value := CdsPedidoCUSTO.AsCurrency;
   // CurLucro.Value := CdsPedidoLUCRO.AsCurrency;
   CurLucro.Value := CurValorProdutos.Value - CurCusto.Value;
   //Itens
   BuscaPedidoItem(EdPedidoNumero.Text);
end;

procedure TFrmConsultaMarkupPedido.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
   CdsPedido.Close;
   SqlCdsPedidoItem.Close;
end;

procedure TFrmConsultaMarkupPedido.SqlCdsPedidoItemCalcFields(
  DataSet: TDataSet);
begin
   SqlCdsPedidoItemCustoItem.AsCurrency := uteis.RoundTo(SqlCdsPedidoItemPRF_CUSTO.AsCurrency,-2) * SqlCdsPedidoItemPRF_QTDE.AsCurrency;

   SqlCdsPedidoItemLucro.AsCurrency := (SqlCdsPedidoItemPRF_QTDE.AsCurrency * SqlCdsPedidoItemPRF_PRECO.AsCurrency) - SqlCdsPedidoItemCustoItem.AsCurrency;

   if ((SqlCdsPedidoItemPRF_QTDE.AsCurrency * SqlCdsPedidoItemPRF_PRECO.AsCurrency) > 0)and
      (SqlCdsPedidoItemCustoItem.AsCurrency > 0) then
      SqlCdsPedidoItemMarkupItem.AsCurrency := (1-(SqlCdsPedidoItemPRF_CUSTO.AsCurrency/ SqlCdsPedidoItemPRF_PRECO.AsCurrency ))*100
   else
      SqlCdsPedidoItemMarkupItem.AsCurrency := 0;

   if ((SqlCdsPedidoItemPRF_QTDE.AsCurrency * SqlCdsPedidoItemPRF_PRECO.AsCurrency) > 0)and
      (SqlCdsPedidoItemCustoItem.AsCurrency > 0) then
      SqlCdsPedidoItemMargem.AsCurrency := ((( SqlCdsPedidoItemPRF_PRECO.AsCurrency) / SqlCdsPedidoItemPRF_CUSTO.AsCurrency) - 1) * 100
   else
      SqlCdsPedidoItemMargem.AsCurrency := 0;

end;

procedure TFrmConsultaMarkupPedido.BuscaPedido(sPedidoCodigo: String);
var
    sCondicao:WideString;
begin
   sCondicao := '1 = 1';
   sCondicao := sCondicao + ' and T1.PED_CODIGO = '+QuotedStr(EdPedidoNumero.Text) ;
   sCondicao := sCondicao + ' and T1.EMP_CODIGO = '+QuotedStr(edtEmpresa.Text) ;


   CdsPedido.Close;
   CdsPedido.CommandText := 'SELECT '+
                            '    nf.NF_TOT_NOTA, ' +
                            '    T1.ped_codigo, '+
                            '    T1.EMP_CODIGO, '+
                            '    T1.ped_dtentrada, '+
                            '    T1.cli_codigo, '+
                            '    T2.cli_razao, '+
                            '    T2.cli_uf, '+
                            '    T1.rep_codigo, '+
                            '    T3.rep_nome, '+
                            '    (SELECT CAST(coalesce(SUM(T4.prf_qtde * T4.prf_preco),0) AS NUMERIC(18,2)) '+
                            '       FROM ped_it01 T4 WHERE T4.ped_codigo = T1.ped_codigo) AS VlLiquido, '+
                            '    (SELECT CAST(coalesce(SUM(T4.prf_qtde * T4.prf_custo),0) AS NUMERIC(18,2)) '+
                            '       FROM ped_it01 T4 WHERE T4.ped_codigo = T1.ped_codigo) AS CUSTO , '+
                            '    (SELECT CAST(coalesce(SUM(T4.prf_qtde * T4.prf_preco),0) AS NUMERIC(18,2)) '+
                            '       FROM ped_it01 T4 WHERE T4.ped_codigo = T1.ped_codigo) - (SELECT CAST(coalesce(SUM'+
                            '       (T4.prf_qtde * T4.prf_custo),0) AS NUMERIC(18,2)) FROM ped_it01 T4 WHERE T4.ped_codigo = T1.ped_codigo) AS LUCRO, '+
                            '    (SELECT CAST(coalesce(SUM(T4.prf_qtde * (T4.prf_custo + ( CASE WHEN coalesce '+
                            '       (T4.prf_margem_produto,0) > 0 THEN (T4.prf_custo * CAST(T4.prf_margem_produto / 100 '+
                            '       AS numeric(18,2))) ELSE 0 END ))),0) AS NUMERIC(18,2)) FROM ped_it01 T4 WHERE T4.ped_codigo = T1.ped_codigo) AS VENDA_ESPERADA, '+
                            '    (SELECT CAST(coalesce(SUM(T4.prf_qtde * (T4.prf_custo + ( CASE WHEN coalesce(T4.prf_margem_produto,0) > 0 THEN '+
                            '       (T4.prf_custo * CAST(T4.prf_margem_produto / 100 AS numeric(18,2))) ELSE 0 END ))),0) AS NUMERIC(18,2)) '+
                            '       FROM ped_it01 T4 WHERE T4.ped_codigo = T1.ped_codigo) - (SELECT CAST(coalesce(SUM(T4.prf_qtde * T4.prf_custo),0) '+
                            '       AS NUMERIC(18,2)) FROM ped_it01 T4 WHERE T4.ped_codigo = T1.ped_codigo) AS LUCRO_ESPERADO '+
                            'FROM ped0000 T1 '+
                            'JOIN cli0000 T2 ON (T2.cli_codigo = T1.cli_codigo) '+
                            'LEFT JOIN rep0000 T3 ON (T3.rep_codigo = T1.rep_codigo) '+
                            'LEFT JOIN NF0001 NF ON (NF.PED_CODIGO = t1.PED_CODIGO AND NF.EMP_CODIGO = t1.EMP_CODIGO AND nf_cancelada = ''N'' ) ' +
                            'WHERE '+sCondicao+' order by T1.ped_dtentrada desc';
   CdsPedido.Open;
end;

procedure TFrmConsultaMarkupPedido.CdsPedidoCalcFields(DataSet: TDataSet);
begin
   if (CdsPedidoVLLIQUIDO.AsCurrency > 0)and
      (CdsPedidoCUSTO.AsCurrency > 0) then
      CdsPedidoMARKUP.AsCurrency := ((CdsPedidoVLLIQUIDO.AsCurrency / CdsPedidoCUSTO.AsCurrency) - 1) * 100
   else
      CdsPedidoMARKUP.AsCurrency := 0;
   if (CdsPedidoVENDA_ESPERADA.AsCurrency > 0)and
      (CdsPedidoCUSTO.AsCurrency > 0) then
      CdsPedidoMARKUP_PREVISTO.AsCurrency := ((CdsPedidoVENDA_ESPERADA.AsCurrency / CdsPedidoCUSTO.AsCurrency) - 1) * 100
   else
      CdsPedidoMARKUP_PREVISTO.AsCurrency := 0;

   if (CdsPedidoVENDA_ESPERADA.AsCurrency > 0)and(CdsPedidoVLLIQUIDO.AsCurrency > 0) then
      CdsPedidoRV.AsCurrency := (CdsPedidoVLLIQUIDO.AsCurrency * 100) / CdsPedidoVENDA_ESPERADA.AsCurrency
   else
      CdsPedidoRV.AsCurrency := 0;
end;

procedure TFrmConsultaMarkupPedido.ManutenodeCustos1Click(Sender: tObject);
var
   ponto:TBookmark;
begin
   ponto := SqlCdsPedidoItem.GetBookmark;
   ChamaConsultaMarkupManutencao(EdPedidoNumero.Text,SqlCdsPedidoItemPRD_REFER.AsString, CdsPedidoEMP_CODIGO.AsString);
   BuscaPedido(EdPedidoNumero.Text);
   //Infirmações Pedido
   edtEmpresa.Text :=  CdsPedidoEMP_CODIGO.AsString;
   EdPedidoNumero.Text := CdsPedidoPED_CODIGO.AsString;
   DteEntrada.Date := CdsPedidoPED_DTENTRADA.AsDateTime;
   edtVendedor.Text := CdsPedidoREP_NOME.AsString;


   edtCliente.Text := CdsPedidoCLI_RAZAO.AsString;
   CurValorProdutos.Value := CdsPedidoNF_TOT_NOTA.AsCurrency;
   CurCusto.Value := CdsPedidoCUSTO.AsCurrency;
//   CurLucro.Value := CdsPedidoLUCRO.AsCurrency;
   CurLucro.Value := CurValorProdutos.Value - CurCusto.Value;
   //Itens
   BuscaPedidoItem(EdPedidoNumero.Text);
   SqlCdsPedidoItem.GotoBookmark(ponto);
end;

procedure TFrmConsultaMarkupPedido.ChamaConsultaMarkupManutencao(sPedido, sReferenciaProduto, sEmpresa  : String);
begin
         try
            FrmConsultaMarkupManu := TFrmConsultaMarkupManu.Create(Application);
            FrmConsultaMarkupManu.sPedido := sPedido;
            FrmConsultaMarkupManu.sProduto := sReferenciaProduto;
            FrmConsultaMarkupManu.sEmpresa := sEmpresa;
            FrmConsultaMarkupManu.ShowModal;
         finally
            FrmConsultaMarkupManu.Destroy;
            FrmConsultaMarkupManu := nil;
         end;
end;


end.
