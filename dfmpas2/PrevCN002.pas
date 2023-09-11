unit PrevCN002;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, StdCtrls, Buttons, ExtCtrls, Mask,  rxToolEdit,
   rxCurrEdit, Provider, SqlExpr,SqlClientDataSet, DB, DBClient, DBLocal, DBLocalS, RwFunc,
  ppProd, ppClass, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppBands,
  ppVar, ppCtrls, ppPrnabl, ppCache, ppStrtch, ppSubRpt, ppModule, raCodMod,
  Data.DBXFirebird, SimpleDS, Vcl.ComCtrls;

type
  TFormPrevisaoProducao = class(TForm)
    GroupBox2: TGroupBox;
    DBGrid1: TDBGrid;
    SqlCdsProdutos: TSQLClientDataSet;
    DsProdutos: TDataSource;
    SqlCdsDisponivel: TSQLClientDataSet;
    DsDisponivel: TDataSource;
    SQLCdsComprar: TSQLClientDataSet;
    DsComprar: TDataSource;
    SqlCdsProduz: TSQLClientDataSet;
    DsProduz: TDataSource;
    SQLCdsComprarPSI_CUSTO_CC: TCurrencyField;
    SqlCdsProduzPSI_CUSTO_CC: TCurrencyField;
    SQLCdsComprarWCONSUMO: TFMTBCdField;
    SqlCdsDisponivelPSI_CUSTO_CC: TCurrencyField;
    SQLCdsComprarPSI_FALTA_CC: TCurrencyField;
    SqlCdsProdutosPSV_REGISTRO: TIntegerField;
    SqlCdsProdutosPRD_REFER: TStringField;
    SqlCdsProdutosPRD_DESCRI: TStringField;
    SqlCdsProdutosPSV_MODE1: TStringField;
    SqlCdsProdutosPSV_QUANT1: TFMTBCdField;
    Panel1: TPanel;
    Bit_Relatorios: TBitBtn;
    SQLCdsComprarPSI_FALTA_DT: TCurrencyField;
    SqlCdsProduzPRD_REFER_ITENS: TStringField;
    SqlCdsProduzPRD_DESCRI: TStringField;
    SqlCdsProduzPSI_UND: TStringField;
    SqlCdsProduzPSI_SIGLA: TStringField;
    SqlCdsProduzPSI_ESTFISICO: TFMTBCdField;
    SqlCdsProduzPSI_ESTANTEC: TFMTBCdField;
    SqlCdsProduzPSI_ESTRESERVA: TFMTBCdField;
    SqlCdsProduzPSI_CUSTO: TFMTBCdField;
    SqlCdsProduzWCONSUMO: TFMTBCdField;
    SQLCdsComprarPRD_REFER_ITENS: TStringField;
    SQLCdsComprarPRD_DESCRI: TStringField;
    SQLCdsComprarPSI_UND: TStringField;
    SQLCdsComprarPSI_SIGLA: TStringField;
    SQLCdsComprarPSI_ESTFISICO: TFMTBCdField;
    SQLCdsComprarPSI_ESTANTEC: TFMTBCdField;
    SQLCdsComprarPSI_ESTRESERVA: TFMTBCdField;
    SQLCdsComprarPSI_CUSTO: TFMTBCdField;
    SqlCdsDisponivelPRD_REFER_ITENS: TStringField;
    SqlCdsDisponivelPRD_DESCRI: TStringField;
    SqlCdsDisponivelPSI_UND: TStringField;
    SqlCdsDisponivelPSI_SIGLA: TStringField;
    SqlCdsDisponivelPSI_ESTFISICO: TFMTBCdField;
    SqlCdsDisponivelPSI_ESTANTEC: TFMTBCdField;
    SqlCdsDisponivelPSI_ESTRESERVA: TFMTBCdField;
    SqlCdsDisponivelPSI_CUSTO: TFMTBCdField;
    SqlCdsDisponivelWCONSUMO: TFMTBCdField;
    SqlCdsDisponivelPSI_PAI: TStringField;
    SQLCdsComprarPSI_PAI: TStringField;
    SqlCdsProduzPSI_PAI: TStringField;
    SqlCdsDisponivelPSI_DISPONIVEL: TFMTBCdField;
    SqlCdsDisponivelPSI_FALTA: TFMTBCdField;
    SqlCdsProduzPSI_DISPONIVEL: TFMTBCdField;
    SqlCdsProduzPSI_FALTA: TFMTBCdField;
    Bit_Sair: TBitBtn;
    BitGerar: TBitBtn;
    SqlCdsDisponivelPSI_REQ_COMPRA: TStringField;
    SQLCdsComprarPSI_REQ_COMPRA: TStringField;
    SQLCdsComprarPSI_DISPONIVEL: TFMTBCdField;
    SQLCdsComprarPSI_FALTA: TFMTBCdField;
    SqlCdsProduzPSI_REQ_COMPRA: TStringField;
    CdsComprar: TClientDataSet;
    CdsComprarReferencia: TStringField;
    CdsComprarDescricao: TStringField;
    CdsComprarUnd: TStringField;
    CdsComprarTipo: TStringField;
    CdsComprarConsumo: TCurrencyField;
    CdsComprarEstFisico: TCurrencyField;
    CdsComprarEstCompra: TCurrencyField;
    CdsComprarEstReserva: TCurrencyField;
    CdsComprarPCusto: TCurrencyField;
    CdsComprarComprar: TCurrencyField;
    CdsComprarReq_Compra: TStringField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    DBGrid2: TDBGrid;
    DBGridMatPrima: TDBGrid;
    DBGridProdutos: TDBGrid;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Label3: TLabel;
    NumEditProduzir: TCurrencyEdit;
    Label1: TLabel;
    NumEditDisponivel: TCurrencyEdit;
    Label2: TLabel;
    NumEditSimulacao: TCurrencyEdit;
    NumEditAjustada: TCurrencyEdit;
    Label4: TLabel;
    ButRecalcular: TButton;
    procedure FormShow(Sender: tObject);
    procedure SpeedButton1Click(Sender: tObject);
    procedure CalculaCusto;
    procedure CalculaCustoComprar;
    procedure CalculaDisponivel;
    procedure CalculaProduzir;
    procedure Bit_SairClick(Sender: tObject);
    procedure DBGRIDGRADEKeyPress(Sender: tObject; var Key: Char);
    procedure FormCreate(Sender: tObject);
    procedure DBGrid2TitleClick(Column: TColumn);
    procedure DBGridProdutosTitleClick(Column: TColumn);
    procedure DBGridMatPrimaTitleClick(Column: TColumn);
    procedure Bit_RelatoriosClick(Sender: tObject);
    procedure DBGridMatPrimaDblClick(Sender: tObject);
    procedure DBGridMatPrimaKeyPress(Sender: tObject; var Key: Char);
    procedure BitGerarClick(Sender: tObject);
    procedure FormCloseQuery(Sender: tObject; var CanClose: Boolean);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ButRecalcularClick(Sender: TObject);
  private
    { Private declarations }
    procedure AtribuiQtdedeCompra;
    procedure Chama_Tela_Comprar;
    procedure Carregar_Tabela_Temporaria;
  public
    { Public declarations }
  end;

var
  wCustTotal:Double;
  FormPrevisaoProducao: TFormPrevisaoProducao;

implementation

uses PrevC001, DmProdu, DataCad, Men0001, PrevC003, PrevC004, REQ0001, uteis, ufrmpreviewrb, iniciodb;

{$R *.DFM}



procedure TFormPrevisaoProducao.FormShow(Sender: tObject);
begin

    Left := 0;
    Top  := 0;

    try

      {Abrir a tabela dos produtos a serem produzidos}
     wSql1      := 'SELECT R1.PSV_REGISTRO,R1.PRD_REFER,P1.PRD_DESCRI,R1.PSV_MODE1,R1.PSV_QUANT1 FROM PSV0000 R1 LEFT JOIN PRD0000 P1 ON (P1.PRD_REFER = R1.PRD_REFER) ';
      wSeleciona := 'where R1.PSV_FLAG = ''U''';  //'where R1.PSV_FLAG = ''P''';
      SqlCdsProdutos.Close;
      SqlCdsProdutos.CommandText := SQLDEF('ORDEMPRODUCAO',wSql1,wSeleciona,'R1.PRD_REFER','R1.');
      SqlCdsProdutos.Open;

      {Abrir a tabela da materia prima consumida}
      wSQL1 := 'SELECT X1.PRD_REFER_ITENS,X1.PSI_REQ_COMPRA,P1.PRD_DESCRI,X1.PSI_UND,X1.PSI_SIGLA,X1.PSI_PAI,X1.PSI_ESTFISICO,X1.PSI_ESTANTEC,X1.PSI_ESTRESERVA,(X1.PSI_ESTFISICO-SUM(X1.PSI_CONSUMO)) as PSI_DISPONIVEL,';
      wSQL2 := '(SUM(X1.PSI_CONSUMO) - X1.PSI_ESTFISICO) as PSI_FALTA, X1.PSI_CUSTO,SUM(X1.PSI_CONSUMO) AS WCONSUMO FROM PSV_IT01 X1 LEFT JOIN PRD0000 P1 ON (X1.PRD_REFER_ITENS = P1.PRD_REFER) ';
      wSQL3 := 'GROUP BY X1.PRD_REFER_ITENS,X1.PSI_REQ_COMPRA,P1.PRD_DESCRI,X1.PSI_UND,X1.PSI_SIGLA,X1.PSI_PAI,X1.PSI_ESTFISICO,X1.PSI_ESTANTEC,X1.PSI_ESTRESERVA,X1.PSI_FALTA,X1.PSI_CUSTO ';
      wOrdem := 'ORDER BY P1.PRD_DESCRI ';

      {Produtos disponivel no estoque}
      wSeleciona := ' WHERE (X1.PSI_ESTFISICO>0)';
      SqlCdsDisponivel.Close;
      SqlCdsDisponivel.CommandText := wSql1+wSql2+wSql3+' HAVING X1.PSI_ESTFISICO >= SUM(x1.PSI_CONSUMO) '+wOrdem;
      SqlCdsDisponivel.Open;

      {Abrir a tabela da materia prima consumida}
      //
      {Produtos para Produzir}
      wSeleciona := ' WHERE ((X1.PSI_SIGLA = ''PA'') or (X1.PSI_SIGLA = ''PI''))';
      //wSeleciona := ' ';
      SqlCdsProduz.Close;
      SqlCdsProduz.CommandText := wSql1+wSql2+wSeleciona+wSql3+' having SUM(X1.PSI_CONSUMO) > X1.PSI_ESTFISICO '+wOrdem;
      SqlCdsProduz.Open;

      {Materia Prima a comprar}
      //wSeleciona := ' WHERE (X1.PSI_ESTFISICO <=0) AND ((X1.PSI_SIGLA <> ''PA'') AND (X1.PSI_SIGLA <> ''PI''))';
     wSeleciona := ' WHERE (X1.PSI_ESTFISICO <=0)';
      //
      SQLCdsComprar.Close;
      SQLCdsComprar.CommandText := wSql1+wSql2+wSql3+' HAVING SUM(x1.PSI_CONSUMO) >= X1.PSI_ESTFISICO or  X1.PSI_ESTFISICO <=0 '+wOrdem;
      SQLCdsComprar.Open;
      //
      AtribuiQtdedeCompra;
      //
      Carregar_Tabela_Temporaria;
      //
      CalculaCusto;
      CalculaCustoComprar;
      CalculaDisponivel;
      CalculaProduzir;

    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao abrir a tabela !'+e.message));
    end;

end;

procedure TFormPrevisaoProducao.SpeedButton1Click(Sender: tObject);
begin
    Close;
end;

procedure TFormPrevisaoProducao.Bit_SairClick(Sender: tObject);
begin
   Close;
end;

procedure TFormPrevisaoProducao.ButRecalcularClick(Sender: TObject);
begin
  CalculaCustoComprar;
end;

procedure TFormPrevisaoProducao.DBGRIDGRADEKeyPress(Sender: tObject;
  var Key: Char);
begin
    if key =#13 then
       begin
           DBGridProdutos.SetFocus;
           Key :=#0;
       end;
end;

procedure TFormPrevisaoProducao.FormCreate(Sender: tObject);
begin
    wSql1 := '';
    wSql2 := '';
    DBGridMatPrima.Hint := 'Dê duplo clique ou pressione <Enter>. '+#13+#10+'Para alterar a quantidade à comprar';
end;

procedure TFormPrevisaoProducao.DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if Column.Field.FieldName = 'PSI_DISPONIVEL' then
  begin
    if SqlCdsDisponivelPSI_DISPONIVEL.Value <= 0 then
    begin
      DBGrid2.Canvas.Font.Color:= clRed;
      DBGrid2.Canvas.FillRect(Rect);
      DBGrid2.DefaultDrawColumnCell(Rect, DataCol, Column, State);
    end
    else
    begin
      DBGrid2.Canvas.Font.Color:= clBlack;
      DBGrid2.Canvas.FillRect(Rect);
      DBGrid2.DefaultDrawColumnCell(Rect, DataCol, Column, State);
    end;
  end;

end;

procedure TFormPrevisaoProducao.DBGrid2TitleClick(Column: TColumn);
begin
    screen.Cursor := crHourglass;
    if not (Column.Field.FieldKind = fkCalculated) then
       begin
           if not (Column.Field.DataType in [ftBlob,ftMemo]) then
              begin
                 SqlCdsDisponivel.IndexFieldNames := Column.FieldName;
              end;
       end;
    screen.Cursor := crDefault;
end;

procedure TFormPrevisaoProducao.DBGridProdutosTitleClick(Column: TColumn);
begin
    screen.Cursor := crHourglass;
    if not (Column.Field.FieldKind = fkCalculated) then
       begin
           if not (Column.Field.DataType in [ftBlob,ftMemo]) then
              begin
                 SqlCdsProduz.IndexFieldNames := Column.FieldName;
              end;
       end;
    screen.Cursor := crDefault;
end;

procedure TFormPrevisaoProducao.DBGridMatPrimaTitleClick(Column: TColumn);
begin
    screen.Cursor := crHourglass;
    if not (Column.Field.FieldKind = fkCalculated) then
       begin
           if not (Column.Field.DataType in [ftBlob,ftMemo]) then
              begin
                 SQLCdsComprar.IndexFieldNames := Column.FieldName;
              end;
       end;
    screen.Cursor := crDefault;
end;

procedure TFormPrevisaoProducao.CalculaCusto;
begin
    // comprar da simulação oficial
    NumEditSimulacao.Value := 0;
    SQLCdsComprar.First;
    SQLCdsComprar.DisableControls;
    while not SQLCdsComprar.Eof do
     begin
         NumEditSimulacao.Value := NumEditSimulacao.Value + (SQLCdsComprarPSI_CUSTO.AsCurrency * SQLCdsComprarWCONSUMO.AsCurrency);
         SQLCdsComprar.Next;
     end;
    SQLCdsComprar.EnableControls;
    SQLCdsComprar.First;

end;

procedure TFormPrevisaoProducao.CalculaDisponivel;
begin
    NumEditDisponivel.Value := 0;
    SqlCdsDisponivel.First;
    SqlCdsDisponivel.DisableControls;
    while not SqlCdsDisponivel.Eof do
     begin
         NumEditDisponivel.Value := NumEditDisponivel.Value + (SqlCdsDisponivelPSI_CUSTO.AsCurrency * SqlCdsDisponivelWCONSUMO.AsCurrency);
         SqlCdsDisponivel.Next;
     end;
    SqlCdsDisponivel.EnableControls;
    SqlCdsDisponivel.First;
end;

procedure TFormPrevisaoProducao.CalculaProduzir;
begin
    NumEditProduzir.Value := 0;
    SqlCdsProduz.First;
    SqlCdsProduz.DisableControls;
    while not SqlCdsProduz.Eof do
     begin
         NumEditProduzir.Value := NumEditProduzir.Value + (SqlCdsProduzPSI_CUSTO.AsCurrency * SqlCdsProduzPSI_FALTA.AsCurrency);
         SqlCdsProduz.Next;
     end;
    SqlCdsProduz.EnableControls;
    SqlCdsProduz.First;
end;

procedure TFormPrevisaoProducao.Bit_RelatoriosClick(Sender: tObject);
begin
      FormGimpPrevisao := TFormGimpPrevisao.Create(Application);
      try
        FormGimpPrevisao.ShowModal;
      finally
        FreeAndNil(FormGimpPrevisao);
      end;
end;

procedure TFormPrevisaoProducao.AtribuiQtdedeCompra;
begin
    SQLCdsComprar.First;
    while not SQLCdsComprar.Eof do
     begin
         SQLCdsComprar.Edit;
         if (FormPrevConsumo.wConsiderar = 'S') then
            SQLCdsComprarPSI_FALTA_DT.AsCurrency := (SQLCdsComprarPSI_ESTANTEC.AsCurrency - SQLCdsComprarWCONSUMO.AsCurrency)*-1
         else
            //SQLCdsComprarPSI_FALTA_DT.AsCurrency := (SQLCdsComprarWCONSUMO.AsCurrency);
         SQLCdsComprar.Post;
         SQLCdsComprar.Next;
     end;
end;

procedure TFormPrevisaoProducao.DBGridMatPrimaDblClick(Sender: tObject);
begin
    Chama_Tela_Comprar;
end;

procedure TFormPrevisaoProducao.CalculaCustoComprar;
Var
  savePlace :TBookMark;
begin
    NumEditAjustada.Value := 0;
   // saveplace := CdsComprar.GetBookmark;
    CdsComprar.First;
    CdsComprar.DisableControls;
    while not CdsComprar.Eof do
     begin
         NumEditAjustada.Value := NumEditAjustada.Value + (CdsComprarPCusto.AsCurrency * CdsComprarComprar.AsCurrency);
         CdsComprar.Next;
     end;
    CdsComprar.EnableControls;
   // CdsComprar.GotoBookmark(savePlace);
end;

procedure TFormPrevisaoProducao.DBGridMatPrimaKeyPress(Sender: tObject;
  var Key: Char);
begin
    if (key=#13) then
       begin
           Chama_Tela_Comprar;
           Key :=#0;
       end;
end;

procedure TFormPrevisaoProducao.Chama_Tela_Comprar;
begin
    try
      try
        FormComprar := TFormComprar.Create(Application);
        FormComprar.ShowModal;
      finally
        FormComprar.Destroy;
        FormComprar := nil;
        CalculaCustoComprar;
      end;
    except
        //beep;
        uteis.erro  ('Ocorreu um erro na criação do formulário!');
    end;
end;

procedure TFormPrevisaoProducao.BitGerarClick(Sender: tObject);
begin
    try
      FrmReqCompra := TFrmReqCompra.Create(application);
      FrmReqCompra.pFormulario := 'S';
      FrmReqCompra.ShowModal;
    finally
      begin
          FrmReqCompra.Destroy;
          FrmReqCompra := nil;
      end;
    end;
end;

procedure TFormPrevisaoProducao.Carregar_Tabela_Temporaria;
var comprar : Currency;
begin
    try
      SQLCdsComprar.First;
      while not SQLCdsComprar.Eof do
       begin
           CdsComprar.Append;
           CdsComprarReferencia.AsString  := SQLCdsComprarPRD_REFER_ITENS.AsString;
           CdsComprarDescricao.AsString   := SQLCdsComprarPRD_DESCRI.AsString;
           CdsComprarUnd.AsString         := SQLCdsComprarPSI_UND.AsString;
           CdsComprarTipo.AsString        := SQLCdsComprarPSI_SIGLA.AsString;
           CdsComprarConsumo.AsCurrency   := SQLCdsComprarWCONSUMO.AsCurrency;
           CdsComprarEstFisico.AsCurrency := SQLCdsComprarPSI_ESTFISICO.AsCurrency;
           CdsComprarEstCompra.AsCurrency := SQLCdsComprarPSI_ESTANTEC.AsCurrency;
           CdsComprarEstReserva.AsCurrency:= SQLCdsComprarPSI_ESTRESERVA.AsCurrency;
           CdsComprarPCusto.AsCurrency    := SQLCdsComprarPSI_CUSTO.AsCurrency;
           comprar := SQLCdsComprarWCONSUMO.AsCurrency - SQLCdsComprarPSI_ESTFISICO.AsCurrency;
//           CdsComprarComprar.AsCurrency   := SQLCdsComprarPSI_FALTA_DT.AsCurrency;
           if comprar < 0 then
             comprar := comprar*(-1);
           CdsComprarComprar.AsCurrency := comprar;
           CdsComprarReq_Compra.AsString  := SQLCdsComprarPSI_REQ_COMPRA.AsString;
           CdsComprar.Post;
           SQLCdsComprar.Next;
       end;
     CdsComprar.First;
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao Carregar a Tabela Temporaria ! '+e.message));
    end;
end;

procedure TFormPrevisaoProducao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  SqlCdsProdutos.Close;
  SqlCdsDisponivel.Close;
  SqlCdsProduz.Close;
  SQLCdsComprar.Close;


end;

procedure TFormPrevisaoProducao.FormCloseQuery(Sender: tObject;
  var CanClose: Boolean);
begin
    CdsComprar.Destroy;
end;

end.
