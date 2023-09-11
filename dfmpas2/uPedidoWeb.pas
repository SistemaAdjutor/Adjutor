unit uPedidoWeb;

interface



uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DBCtrls, Grids, DBGrids, Buttons, Mask,
   rxToolEdit, SqlExpr,SqlClientDataSet, Provider, DB, DBClient, DBLocal, DBLocalS, ImgList, Data.DBXFirebird, System.ImageList, SimpleDS;

type
  TFrmPedidoWeb = class(TForm)
    grpFiltro: TGroupBox;
    grpPedidos: TGroupBox;
    grpItens: TGroupBox;
    grpObservacao: TGroupBox;
    dbgrdPedidos: TDBGrid;
    DBGrid1: TDBGrid;
    DBMemo1: TDBMemo;
    grpStatus: TGroupBox;
    Image2: TImage;
    chkPendente: TCheckBox;
    chkAprovado: TCheckBox;
    Image1: TImage;
    Image3: TImage;
    chkRejeitado: TCheckBox;
    EdPedidoNumero: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    edtNumeroPedidoExterno: TEdit;
    Label3: TLabel;
    RxDataInicial: TDateEdit;
    Label4: TLabel;
    RxDataFinal: TDateEdit;
    Label5: TLabel;
    edtCliente: TEdit;
    BitPesquisar: TBitBtn;
    BitSair: TBitBtn;
    DSPedidoWeb: TDataSource;
    DSPedidoWebItem: TDataSource;
    SQLPedidosItem: TSQLClientDataSet;
    SQLPedidosItemPWI_REGISTRO: TIntegerField;
    SQLPedidosItemPWI_TIPO: TStringField;
    SQLPedidosItemPWI_REFERENCIA: TStringField;
    SQLPedidosItemPWI_DESCRICAO: TStringField;
    SQLPedidosItemPWI_UNIDADE_MEDIDA: TStringField;
    SQLPedidosItemPWI_QUANTIDADE: TFMTBCdField;
    SQLPedidosItemPWI_PRECO: TFMTBCdField;
    SQLPedidosItemTOTAL: TFMTBCdField;

    //SQLPedidosPW_REGISTRO: TStringField;

    ImageList1: TImageList;
    PAcao: TPanel;
    btnAprovar: TBitBtn;
    BitBtn1: TBitBtn;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label22: TLabel;
    SQLPedidos: TSqlClientDataSet;
    edtCNPJ: TDBEdit;
    edtRazSocial: TDBEdit;
    edtInscricao: TDBEdit;
    edtEndereco: TDBEdit;
    edtNumero: TDBEdit;
    edtComplemento: TDBEdit;
    edtCEP: TDBEdit;
    edtCidade: TDBEdit;
    edtUF: TDBEdit;
    edtTelefone1: TDBEdit;
    edtTelefone2: TDBEdit;
    edtCelular: TDBEdit;
    edtEmail: TDBEdit;
    edtEmailNFe: TDBEdit;
    edtTipoPedido: TDBEdit;
    edtDataEntrega: TDBEdit;
    edtObsCadastro: TDBEdit;
    edtObsPedido: TDBEdit;
    edtObsNota: TDBEdit;
    SQLPedidosPW_REGISTRO: TIntegerField;
    SQLPedidosEMP_CODIGO: TStringField;
    SQLPedidosPEDIDO_ID_EXTERNO: TStringField;
    SQLPedidosPEDIDO_ORIGEM: TStringField;
    SQLPedidosPW_DATA_STATUS: TSQLTimeStampField;
    SQLPedidosPW_DATA: TSQLTimeStampField;
    SQLPedidosPW_CLI_CNPJ: TStringField;
    SQLPedidosSPW_CLI_CELULAR: TStringField;
    SQLPedidosSPW_CLI_CEP: TStringField;
    SQLPedidosSPW_CLI_CIDADE: TStringField;
    SQLPedidosSPW_CLI_COMPLEMENTO: TStringField;
    SQLPedidosSPW_CLI_EMAIL: TStringField;
    SQLPedidosSPW_CLI_EMAIL_NFE: TStringField;
    SQLPedidosSPW_CLI_ENDERE: TStringField;
    SQLPedidosSPW_CLI_INSCRICAO: TStringField;
    SQLPedidosSPW_CLI_NUMERO: TIntegerField;
    SQLPedidosSPW_CLI_OBS: TStringField;
    SQLPedidosSPW_CLI_RAZAO: TStringField;
    SQLPedidosSPW_CLI_TELEFONE1: TStringField;
    SQLPedidosSPW_CLI_TELEFONE2: TStringField;
    SQLPedidosSPW_CLI_UF: TStringField;
    SQLPedidosSPW_DATA_ENTREGA: TDateField;
    SQLPedidosSPW_OBS_NOTA: TStringField;
    SQLPedidosSPW_OBS_PED: TStringField;
    SQLPedidosSPW_ORDEM: TStringField;
    SQLPedidosSPW_TIPOPEDIDO: TStringField;
    SQLPedidosCLIENTE: TStringField;
    SQLPedidosPED_CODIGO: TStringField;
    SQLPedidosVENDEDOR: TStringField;
    SQLPedidosPRAZO: TStringField;
    SQLPedidosPW_STATUS: TStringField;
    SQLPedidosPW_OBSERVACAO: TMemoField;
    SQLPedidosTOTAL: TFMTBCDField;
    SQLPedidosPCL_CODIGO: TStringField;
    SQLPedidosREP_CODIGO: TStringField;
    SQLPedidosPW_PEDIDO_MERCOS: TIntegerField;
    procedure BitSairClick(Sender: tObject);
    procedure DSPedidoWebDataChange(Sender: tObject; Field: TField);
    procedure FormShow(Sender: tObject);
    procedure BitPesquisarClick(Sender: tObject);
    procedure dbgrdPedidosDrawColumnCell(Sender: tObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure BitBtn1Click(Sender: tObject);
    procedure dbgrdPedidosDblClick(Sender: tObject);
    procedure dbgrdPedidosKeyPress(Sender: tObject; var Key: Char);
    procedure btnAprovarClick(Sender: tObject);
    procedure DBGrid1DrawColumnCell(Sender: tObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure SQLPedidosPEDIDO_ID_EXTERNOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
  private
    { Private declarations }
    procedure BuscaPedidos;
    procedure BuscaPedidoItem;
    procedure SelecionarPedido;
    procedure AbrePedidoAceita;
  public
    { Public declarations }
  end;

var
  FrmPedidoWeb: TFrmPedidoWeb;

implementation

uses
  DataCad, UFuncoes, uPedidoWebAcao, uteis, iniciodb;

{$R *.dfm}

procedure TFrmPedidoWeb.BitSairClick(Sender: tObject);
begin
   Close;
end;

procedure TFrmPedidoWeb.BuscaPedidoItem;
begin
   SQLPedidosItem.Close;
   if (not SQLPedidos.IsEmpty) then
      begin
         SQLPedidosItem.CommandText := ' SELECT '+
                                       '     T1.PWI_REGISTRO, '+
                                       '     T1.PWI_TIPO, '+
                                       '     T1.PWI_REFERENCIA, '+
                                       '     T1.PWI_DESCRICAO, '+
                                       '     T1.PWI_UNIDADE_MEDIDA, '+
                                       '     T1.PWI_QUANTIDADE, '+
                                       '     T1.PWI_PRECO, '+
                                       '     CAST(T1.PWI_QUANTIDADE * T1.PWI_PRECO  AS NUMERIC(18,2)) AS TOTAL '+
                                       ' FROM '+
                                       ' PEDIDO_WEB_ITEM T1'+
                                       ' WHERE PW_REGISTRO = '+QuotedStr(SQLPedidosPW_REGISTRO.AsString);
         SQLPedidosItem.Open;
      end;
end;

procedure TFrmPedidoWeb.BuscaPedidos;
var
   sSqlCondicao:string;
begin
   //Parametros
   sSqlCondicao := 'where EMP_CODIGO = '+QuotedStr(DBInicio.Empresa.EMP_CODIGO);
   if (chkPendente.Checked)or(chkAprovado.Checked)or(chkRejeitado.Checked) then
      begin
         if (sSqlCondicao <> '') then
            begin
               sSqlCondicao := sSqlCondicao + ' AND ';
            end;
         sSqlCondicao := sSqlCondicao + ' PW_STATUS in (';
         if (chkPendente.Checked) then
            sSqlCondicao := sSqlCondicao +'''P''';
         if (chkAprovado.Checked) then
            begin
              if chkPendente.Checked then
                sSqlCondicao := sSqlCondicao +',';
              sSqlCondicao := sSqlCondicao +'''A'''
            end;
         if (chkRejeitado.Checked) then
            begin
             if chkPendente.Checked or chkAprovado.Checked  then
                sSqlCondicao := sSqlCondicao +',';

               sSqlCondicao := sSqlCondicao +'''R''';
            end;
         sSqlCondicao := sSqlCondicao +' )';
      end;
   //Numero do Pedido
   if (Trim(EdPedidoNumero.Text) <> '') then
      begin
         if (sSqlCondicao <> '') then
            begin
               sSqlCondicao := sSqlCondicao + ' AND ';
            end;
         sSqlCondicao := sSqlCondicao +' PED_CODIGO like '+QuotedStr('%'+Trim(EdPedidoNumero.Text));
      end;
   //Numero do Pedido Externo
   if (Trim(edtNumeroPedidoExterno.Text) <> '') then
      begin
         if (sSqlCondicao <> '') then
            begin
               sSqlCondicao := sSqlCondicao + ' AND ';
            end;
         sSqlCondicao := sSqlCondicao +'( PEDIDO_ID_EXTERNO = '+QuotedStr(Trim(edtNumeroPedidoExterno.Text))
                     +' or PW_PEDIDO_MERCOS = '+edtNumeroPedidoExterno.Text +')';
      end;
    if (RxDataInicial.Text <> '  /  /    ')and(RxDataFinal.Text <> '  /  /    ') then
      begin
         sSqlCondicao := sSqlCondicao + ' AND PW_DATA BETWEEN '+QuotedStr(DataAmericana(RxDataInicial.Text))+' and '+QuotedStr(DataAmericana(RxDataFinal.Text)) ;
      end;
    if (edtCliente.Text <> '') then
      begin
         sSqlCondicao := sSqlCondicao + ' AND PW_CLI_NOME LIKE ''%'+QuotedStr(edtCliente.Text)+'%''';
      end;
//    if (sSqlCondicao <> '') then
//      begin
//         sSqlCondicao := 'WHERE '+sSqlCondicao;
//      end;
    SQLPedidos.Close;
    SQLPedidos.CommandText := 'SELECT '+
                              '   T1.PW_REGISTRO,  '+
                              '   T1.EMP_CODIGO, '+
                              '   T1.PEDIDO_ID_EXTERNO, '+
                              '   T1.PEDIDO_ORIGEM, '+
                              '   T1.PW_DATA_STATUS, '+
                              '   T1.PW_DATA, '+
                              '   T1.PW_CLI_CNPJ,'+
                              '   T1.SPW_CLI_CELULAR,'+
                              '   T1.SPW_CLI_CEP,'+
                              '   T1.SPW_CLI_CIDADE,'+
                              '   T1.SPW_CLI_COMPLEMENTO,'+
                              '   T1.SPW_CLI_EMAIL,'+
                              '   T1.SPW_CLI_EMAIL_NFE,'+
                              '   T1.SPW_CLI_ENDERE,'+
                              '   T1.SPW_CLI_INSCRICAO,'+
                              '   T1.SPW_CLI_NUMERO,'+
                              '   T1.SPW_CLI_OBS,'+
                              '   T1.SPW_CLI_RAZAO,'+
                              '   T1.SPW_CLI_TELEFONE1,'+
                              '   T1.SPW_CLI_TELEFONE2,'+
                              '   T1.SPW_CLI_UF,'+
                              '   T1.SPW_DATA_ENTREGA,'+
                              '   T1.SPW_OBS_NOTA,'+
                              '   T1.SPW_OBS_PED,'+
                              '   T1.SPW_ORDEM,'+
                              '   T1.SPW_TIPOPEDIDO,'+
                              '   CASE    '+
                              '       WHEN (T1.CLI_CODIGO IS NULL)OR(T1.CLI_CODIGO = '''') THEN  '+
                              '           T1.PW_CLI_NOME  '+
                              '       ELSE  '+
                              '           (SELECT T2.CLI_RAZAO FROM CLI0000 T2 WHERE (T2.CLI_CODIGO = T1.CLI_CODIGO))  '+
                              '   END AS CLIENTE,  '+
                              '   T1.PED_CODIGO,  '+
                              '   CASE  '+
                              '       WHEN (T1.REP_CODIGO IS NULL)OR(T1.REP_CODIGO = '''') THEN  '+
                              '           T1.PW_VENDEDOR  '+
                              '       ELSE  '+
                              '           (SELECT T3.REP_NOME FROM REP0000 T3 WHERE (T3.REP_CODIGO = T1.REP_CODIGO))  '+
                              '   END AS VENDEDOR,  '+
                              '   CASE  '+
                              '       WHEN (T1.PCL_CODIGO IS NULL)OR(T1.PCL_CODIGO = '''') THEN   '+
                              '           T1.PW_CONDICAO_PGTO  '+
                              '       ELSE  '+
                              '           (SELECT T4.PCL_NOME FROM PCL0000 T4 WHERE (T4.PCL_CODIGO = T1.PCL_CODIGO))  '+
                              '   END AS PRAZO, '+
                              '   T1.PCL_CODIGO,' +
                              '   t1.rep_codigo, '+
                              '   T1.PW_STATUS, '+
                              '   T1.PW_OBSERVACAO, '+
                              '  t1.PW_PEDIDO_MERCOS, '+
                              ' (SELECT CAST(SUM (T5.PWI_QUANTIDADE * T5.PWI_PRECO) AS NUMERIC(18,2)) FROM PEDIDO_WEB_ITEM T5 WHERE T5.PW_REGISTRO = T1.PW_REGISTRO) AS TOTAL  '+
                              ' FROM  '+
                              ' PEDIDO_WEB T1 '+sSqlCondicao   ;
    SQLPedidos.Open;
    dbgrdPedidos.SetFocus;


end;

procedure TFrmPedidoWeb.DSPedidoWebDataChange(Sender: tObject;
  Field: TField);
begin
   BuscaPedidoItem;
end;

procedure TFrmPedidoWeb.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     Action := CaFree;
end;

procedure TFrmPedidoWeb.FormDestroy(Sender: TObject);
begin
     FrmPedidoWeb := Nil;
end;

procedure TFrmPedidoWeb.FormResize(Sender: TObject);
begin
     Height := 602;
     Width := 964;
end;

procedure TFrmPedidoWeb.FormShow(Sender: tObject);
begin
   BuscaPedidos;
end;

procedure TFrmPedidoWeb.BitPesquisarClick(Sender: tObject);
begin
   BuscaPedidos;
end;

procedure TFrmPedidoWeb.dbgrdPedidosDrawColumnCell(Sender: tObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
   if (not odd(SQLPedidos.RecNo)) then
   if not (GdSelected in State) then
      begin
          dbgrdPedidos.Canvas.Brush.Color := $00FFEFDF;
          dbgrdPedidos.Canvas.FillRect(rect);
          dbgrdPedidos.DefaultDrawDataCell(Rect,column.Field,state);
      end;
   if (not SQLPedidos.IsEmpty) then
      begin
         if Column.FieldName = 'PW_STATUS' then
            begin
               dbgrdPedidos.Canvas.FillRect(Rect);
               //0 = amarelo (parcial) | 1 = azul | = 2 cinza (previsao) | 3 = preto (pendente) | 4 = vermelho (vencida) | 5 = verde (liquidada)
               if (SQLPedidosPW_STATUS.AsString = 'A') then
                 ImageList1.Draw(dbgrdPedidos.Canvas,Rect.Left+03,Rect.Top+1,5)
               else
               if (SQLPedidosPW_STATUS.AsString = 'R') then
                 ImageList1.Draw(dbgrdPedidos.Canvas,Rect.Left+03,Rect.Top+1,4)
               else
                 ImageList1.Draw(dbgrdPedidos.Canvas,Rect.Left+03,Rect.Top+1,1);
            end;
      end;
end;

procedure TFrmPedidoWeb.SelecionarPedido;
begin
   if (SQLPedidos.IsEmpty) then
      uteis.aviso('Nenhum Pedido Selecionado')
   else
   begin
         //Já foi dado entrada
         if (SQLPedidosPW_STATUS.AsString = 'A') then
            uteis.aviso('Pedido Já joi aceito!')
         else
            PAcao.Visible := True;
   end;
end;

procedure TFrmPedidoWeb.SQLPedidosPEDIDO_ID_EXTERNOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  if SQLPedidosPEDIDO_ORIGEM.AsString = 'MERCOS' then
     TEXT := IntToStr( SQLPedidosPW_PEDIDO_MERCOS.AsInteger)
  else
   TEXT:=   SQLPedidosPEDIDO_ID_EXTERNO.AsString;

end;

procedure TFrmPedidoWeb.BitBtn1Click(Sender: tObject);
begin
   DataCadastros.sqlUpdate.Close;
   DataCadastros.SqlUpdate.sql.text :='UPDATE PEDIDO_WEB SET PW_DATA_STATUS ='+QuotedStr(DataAmericana(DateToStr(Date)))+', PW_STATUS = '+QuotedStr('R')+' WHERE PW_REGISTRO = '+SQLPedidosPW_REGISTRO.AsString;
   DataCadastros.sqlUpdate.Execsql;
   DataCadastros.sqlUpdate.Close;
   PAcao.Visible := False;
   SQLPedidos.Refresh;
end;

procedure TFrmPedidoWeb.dbgrdPedidosDblClick(Sender: tObject);
begin
   SelecionarPedido;
end;

procedure TFrmPedidoWeb.dbgrdPedidosKeyPress(Sender: tObject;
  var Key: Char);
begin
   if (Key = #13) then
      begin
         Key := #0;
         SelecionarPedido;
      end;
end;

procedure TFrmPedidoWeb.AbrePedidoAceita;
begin
   FrmPedidoWebAcao := TFrmPedidoWebAcao.Create(Application);
   try
      FrmPedidoWebAcao.ShowModal;
   finally
      FrmPedidoWebAcao.Destroy;
      FrmPedidoWebAcao := nil;
   end;
   PAcao.Visible := False;
   SQLPedidos.Refresh;
end;

procedure TFrmPedidoWeb.btnAprovarClick(Sender: tObject);
begin
   AbrePedidoAceita;
end;

procedure TFrmPedidoWeb.DBGrid1DrawColumnCell(Sender: tObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
   if (not odd(SQLPedidosItem.RecNo)) then
   if not (GdSelected in State) then
      begin
          DBGrid1.Canvas.Brush.Color := $00FFEFDF;
          DBGrid1.Canvas.FillRect(rect);
          DBGrid1.DefaultDrawDataCell(Rect,column.Field,state);
      end;
end;

end.
