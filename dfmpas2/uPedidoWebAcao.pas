
unit uPedidoWebAcao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ImgList, Grids, DBGrids, Buttons,  rxCurrEdit,
  Mask,  rxToolEdit, ComboBoxRw, DB, DBClient, SqlExpr,SqlClientDataSet, Provider, DBLocal,
  DBLocalS, uProdutoDao, RWFunc, uPedidoTipoInicial, Data.DBXFirebird, SimpleDS,
  System.ImageList, SgDbSeachComboUnit;

type
  TFrmPedidoWebAcao = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    grpObservacao: TGroupBox;
    Panel1: TPanel;
    dbgrdItens: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    ilLista: TImageList;
    Image1: TImage;
    Label6: TLabel;
    Label7: TLabel;
    Image2: TImage;
    mmoObservacao: TMemo;
    Label8: TLabel;
    EdPrazoCodigo: TEdit;
    CbPrazo: TComboBoxRw;
    spCliente: TSpeedButton;
    CbCliente: TComboBoxRw;
    EdClienteCodigo: TEdit;
    CbVendedor: TComboBoxRw;
    EdVendedorCodigo: TEdit;
    EdPedidoTipo: TEdit;
    SpeedTipo: TSpeedButton;
    DteEntrada: TDateEdit;
    CbEmpresa: TComboBox;
    CEmpresa: TCurrencyEdit;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    btnBit_Cancelar: TBitBtn;
    btnBit_Gravar: TBitBtn;
    lblDataPedido: TLabel;
    lblTipoPedido: TLabel;
    lblVendedor: TLabel;
    lblPrazo: TLabel;
    lblCliente: TLabel;
    lblEmpresa: TLabel;
    Image3: TImage;
    Label15: TLabel;
    Label16: TLabel;
    Image4: TImage;
    CdsIensPedido: TClientDataSet;
    CdsIensPedidoSituacao: TBooleanField;
    CdsIensPedidoTipo: TStringField;
    CdsIensPedidoReferencia: TStringField;
    CdsIensPedidoDescricao: TStringField;
    CdsIensPedidoUnidade: TStringField;
    CdsIensPedidoQuantidade: TFloatField;
    CdsIensPedidoPreco: TFloatField;
    CdsIensPedidoTotal: TFloatField;
    CdsIensPedidoPRD_REFER: TStringField;
    pnlProduto: TPanel;
    GroupBox3: TGroupBox;
    btnCadastrar: TBitBtn;
    btnVincular: TBitBtn;
    BitBtn1: TBitBtn;
    CdsIensPedidoPRD_CODIGO: TStringField;
    CdsTemp: TSQLClientDataSet;
    SQLEmpresa: TSQLClientDataSet;
    dsItens: TDataSource;
    Label32: TLabel;
    CurTotalPedido: TCurrencyEdit;
    DBGrid1: TDBGrid;
    procedure btnBit_CancelarClick(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure CdsIensPedidoCalcFields(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: tObject);
    procedure btnVincularClick(Sender: tObject);
    procedure btnCadastrarClick(Sender: tObject);
    procedure CbEmpresaClick(Sender: tObject);
    procedure CbEmpresaExit(Sender: tObject);
    procedure CEmpresaExit(Sender: tObject);
    procedure EdClienteCodigoExit(Sender: tObject);
    procedure CbClienteChange(Sender: tObject);
    procedure CbClienteExit(Sender: tObject);
    procedure EdPrazoCodigoExit(Sender: tObject);
    procedure CbPrazoChange(Sender: tObject);
    procedure CbPrazoExit(Sender: tObject);
    procedure EdVendedorCodigoExit(Sender: tObject);
    procedure CbVendedorExit(Sender: tObject);
    procedure CbVendedorChange(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure dbgrdItensDrawColumnCell(Sender: tObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbgrdItensDblClick(Sender: tObject);
    procedure dbgrdItensKeyPress(Sender: tObject; var Key: Char);
    procedure SpeedTipoClick(Sender: tObject);
    procedure btnBit_GravarClick(Sender: tObject);
    procedure FormCreate(Sender: tObject);
  private
     fSeqUnicaPed:boolean;
     fCodEmSeqUnica:string;
     procedure VerificaStatus;
     procedure ChamaProdutoManutencao;
  public
    sPrdCodigo,
    sReferencia,
    sDescricao,
    sUnidade,
    sTipoCodigo,
    sTipoDescricao:String;
    bTipoServico:Boolean;
  end;

var
  FrmPedidoWebAcao: TFrmPedidoWebAcao;

implementation

uses uPedidoWeb, Prd0006, DataCad, Men0001, Nfs0001, Prd0001, iniciodb,
  uPedidoDAO, uClienteDao, uteis, BaseDbEstoqueForm;

{$R *.dfm}

procedure TFrmPedidoWebAcao.btnBit_CancelarClick(Sender: tObject);
begin
   Close;
end;

procedure TFrmPedidoWebAcao.FormShow(Sender: tObject);
   var
      sCorProd:string;
begin

   //Carrega Combos
   try
     SQLEmpresa.Close;
     SQLEmpresa.CommandText := 'select EMP_CODIGO, EMP_RAZAO from EMP0000 order by EMP_CODIGO';
     SQLEmpresa.Open;
     SQLEmpresa.First;
     while not SQLEmpresa.Eof do
      begin
          CbEmpresa.Items.Add(SQLEmpresa.FieldByName('EMP_RAZAO').AsString);
          SQLEmpresa.Next;
      end;
   finally
     Screen.cursor := crDefault;
     SQLEmpresa.First;
     CbEmpresa.ItemIndex := 0;
     CEmpresa.Text  := SQLEmpresa.FieldByName('EMP_CODIGO').AsString;
     lblEmpresa.Caption := DBInicio.Empresa.RAZAO;
   end;
   //Combo
   CbCliente.CodigoEmpresa := StrToInt(dbInicio.Empresa.EMP_CODIGO);
   CbCliente.Compartilhar := 'CLIENTES';
   CbCliente.CarregarCombo := True;

   EdClienteCodigo.Text := RetornaClienteCnpj(FrmPedidoWeb.SQLPedidosPW_CLI_CNPJ.AsString);
   CbCliente.TextoLocalizar := EdClienteCodigo.Text;
   CbCliente.Localizar := True;


   CbPrazo.CarregarCombo := True;
//   EdPrazoCodigo.Text :=  FrmPedidoWeb.SQLPedidosPCL_CODIGO.AsString;
//   CbPrazo.Text := FrmPedidoWeb.SQLPedidosPRAZO.AsString;
   if FrmPedidoWeb.SQLPedidosPCL_CODIGO.AsString <> '' then
    CbPrazo.idRetorno :=  FrmPedidoWeb.SQLPedidosPCL_CODIGO.AsString
   else
   begin
     CbPrazo.TextoLocalizar := FrmPedidoWeb.SQLPedidosPRAZO.AsString;
     CbPrazo.Localizar := True;
   end;
   if (CbPrazo.CodigoLista = '') then
      CbPrazo.Text := '';



   CbVendedor.CarregarCombo := True;
  // CbVendedor.Text := FrmPedidoWeb.SQLPedidosVENDEDOR.AsString;
   CbVendedor.idRetorno :=   FrmPedidoWeb.SQLPedidosREP_CODIGO.AsString;
   if (CbVendedor.CodigoLista = '') then
      CbVendedor.Text := '';

   CurTotalPedido.Value  := FrmPedidoWeb.SQLPedidosTOTAL.AsFloat;

   //Cabeçalho
   lblDataPedido.Caption := FrmPedidoWeb.SQLPedidosPW_DATA.AsString;
   lblVendedor.Caption   := FrmPedidoWeb.SQLPedidosVENDEDOR.AsString;
   lblPrazo.Caption      := FrmPedidoWeb.SQLPedidosPRAZO.AsString;
   lblCliente.Caption    := FrmPedidoWeb.SQLPedidosCLIENTE.AsString;
   DteEntrada.Date       := FrmPedidoWeb.SQLPedidosPW_DATA.AsDateTime;
   //Adiciona Itens
   CdsIensPedido.EmptyDataSet;
   FrmPedidoWeb.SQLPedidosItem.First;
   while (not FrmPedidoWeb.SQLPedidosItem.Eof) do
      begin
         CdsIensPedido.Insert;
         CdsIensPedidoTipo.AsString := FrmPedidoWeb.SQLPedidosItemPWI_TIPO.AsString;
         CdsIensPedidoReferencia.AsString := FrmPedidoWeb.SQLPedidosItemPWI_REFERENCIA.AsString;
         CdsIensPedidoDescricao.AsString := FrmPedidoWeb.SQLPedidosItemPWI_DESCRICAO.AsString;
         CdsIensPedidoUnidade.AsString := FrmPedidoWeb.SQLPedidosItemPWI_UNIDADE_MEDIDA.AsString;
         CdsIensPedidoQuantidade.AsString := FrmPedidoWeb.SQLPedidosItemPWI_QUANTIDADE.AsString;
         CdsIensPedidoPreco.AsString := FrmPedidoWeb.SQLPedidosItemPWI_PRECO.AsString;

         //Verifica se existe a referencia ou nos vinculados
         CdsTemp.Close;
         CdsTemp.CommandText := 'SELECT T1.prd_codigo,  T1.PRD_REFER, PRD_DESCRI, PRD_UND FROM PRD0000 T1 WHERE T1.PRD_REFER = '+QuotedStr(CdsIensPedidoReferencia.AsString);
         CdsTemp.Open;
         if (not CdsTemp.IsEmpty) then
            begin
               CdsIensPedidoReferencia.AsString  := CdsTemp.FieldByName('PRD_REFER').AsString;
               CdsIensPedidoPRD_REFER.AsString   := CdsTemp.FieldByName('PRD_REFER').AsString;
               CdsIensPedidoPRD_CODIGO.AsString  := CdsTemp.FieldByName('prd_codigo').AsString;
               CdsIensPedidoDescricao.AsString   := CdsTemp.FieldByName('PRD_DESCRI').AsString;
               CdsIensPedidoUnidade.AsString := CdsTemp.FieldByName('PRD_UND').AsString;
            end
         else
            begin
               sCorProd := uProdutoDao.RetornaProdutoCodigoPelaReferencia(CdsIensPedidoReferencia.AsString,'000');

               CdsTemp.Close;
               CdsTemp.CommandText := 'SELECT T1.PRD_REFER, PRD_DESCRI, PRD_UND FROM PRD0000 T1 WHERE T1.PRD_CODIGO = '+QuotedStr(sCorProd);
               CdsTemp.Open;
               if (not CdsTemp.IsEmpty) then
                  begin
                     CdsIensPedidoReferencia.AsString  := CdsTemp.FieldByName('PRD_REFER').AsString;
                     CdsIensPedidoPRD_REFER.AsString   := CdsTemp.FieldByName('PRD_REFER').AsString;
                     CdsIensPedidoPRD_CODIGO.AsString  := sCorProd;
                     CdsIensPedidoDescricao.AsString   := CdsTemp.FieldByName('PRD_DESCRI').AsString;
                     CdsIensPedidoUnidade.AsString := CdsTemp.FieldByName('PRD_UND').AsString;
                  end;
            end;
         CdsTemp.Close;

         CdsIensPedido.Post;
         FrmPedidoWeb.SQLPedidosItem.Next;
      end;
   FrmPedidoWeb.SQLPedidosItem.First;
   CdsIensPedido.First;
   VerificaStatus;
   //Observação
   mmoObservacao.Text    := FrmPedidoWeb.SQLPedidosPW_OBSERVACAO.AsString;
   sTipoCodigo := FrmPedidoWeb.SQLPedidosSPW_TIPOPEDIDO.AsString;
   if sTipoCodigo <> '' then
   begin
     EdPedidoTipo.Text := DBInicio.BuscaUmDadoSqlAsString('SELECT OPV_DESCRICAO FROM OPV0000 WHERE OPV_CODIGO ='+sTipoCodigo);
     lblTipoPedido.Caption := EdPedidoTipo.Text;
   end;
end;

procedure TFrmPedidoWebAcao.CdsIensPedidoCalcFields(DataSet: TDataSet);
begin
   CdsIensPedidoTotal.AsFloat := CdsIensPedidoQuantidade.AsFloat * CdsIensPedidoPreco.AsFloat;
end;

procedure TFrmPedidoWebAcao.BitBtn1Click(Sender: tObject);
begin
   pnlProduto.Visible := False;
end;

procedure TFrmPedidoWebAcao.btnVincularClick(Sender: tObject);
begin
   sPrdCodigo := '';
   sReferencia := '';
   sDescricao := '';
   sUnidade := '';

      FormProdutoGrid := TFormProdutoGrid.Create(Application);
      try
         FormProdutoGrid.soativos:=True;
         FormProdutoGrid.ShowModal;
         if FormProdutoGrid.modalresult=mrok then
         begin
              sReferencia := FormProdutoGrid.ReferRetorno;
              sDescricao := FormProdutoGrid.DescricaoRetorno;
              sPrdCodigo := FormProdutoGrid.CodigoRetorno;
              sUnidade := FormProdutoGrid.UnidadeRetorno;
         end;

      finally
         freeandnil(FormProdutoGrid);
      end;
   //
   if (CdsIensPedidoReferencia.AsString <> '') then
      begin
         if (uteis.confirmacao ( ('Confirma a vinculação do código '+CdsIensPedidoReferencia.AsString+' ao produto '+sReferencia+' ?'))=mrYes) then
            begin
               //Cria Vinculação
               DataCadastros.sqlUpdate.Close;
               DataCadastros.SqlUpdate.sql.text :='INSERT INTO PRD0000_CODIGO (PRD_CODIGO,PRDC_REFERENCIA,PRDC_DESSCRICAO,FOR_CODIGO) VALUES ('+QuotedStr(sPrdCodigo)+','+QuotedStr(UpperCase(CdsIensPedidoReferencia.AsString))+','+QuotedStr(UpperCase(CdsIensPedidoDescricao.AsString))+','+QuotedStr('000')+')';
               DataCadastros.sqlUpdate.Execsql;

               if (sPrdCodigo <> '') then
                  begin
                     CdsIensPedido.Edit;
                     CdsIensPedidoPRD_CODIGO.AsString := sPrdCodigo;
                     CdsIensPedidoPRD_REFER.AsString := sReferencia;
                     CdsIensPedidoReferencia.AsString := sReferencia;
                     CdsIensPedidoDescricao.AsString := sDescricao;
                     CdsIensPedidoUnidade.AsString := sUnidade;
                     CdsIensPedido.Post;
                  end;
            end;
      end;
   //Verifica Status do Pedido para ver se esta tudo ok
   VerificaStatus;
   pnlProduto.Visible := False;
end;

procedure TFrmPedidoWebAcao.VerificaStatus;
var
   point:TBookmark;
begin
   if (not CdsIensPedido.IsEmpty) then
      begin
         point := CdsIensPedido.GetBookmark;
         CdsIensPedido.DisableControls;
         CdsIensPedido.First;
         while (not CdsIensPedido.Eof) do
            begin
               CdsIensPedido.Edit;
               CdsIensPedidoSituacao.AsBoolean := CdsIensPedidoPRD_CODIGO.AsString <> '';
               CdsIensPedido.Post;
               CdsIensPedido.Next;
            end;
         CdsIensPedido.GotoBookmark(point);
         CdsIensPedido.EnableControls;
      end;
end;

procedure TFrmPedidoWebAcao.btnCadastrarClick(Sender: tObject);
begin
   if (uteis.confirmacao ( ('Confirma cadastrar o produto '+CdsIensPedidoReferencia.AsString+' como um novo produto ?'))=mrYes) then
      begin
         //Cadastra Produto
         DataCadastros.CdsProdutos.Close;
         DataCadastros.CdsProdutos.PacketRecords := 1;
         DataCadastros.CdsProdutos.CommandText := SQLDEF('PRODUTOS','SELECT * FROM PRD0000','','PRD_CODIGO','');
         DataCadastros.CdsProdutos.Open;
         DataCadastros.CdsProdutos.Insert;
         DataCadastros.CdsProdutosPRD_CODIGO.AsString := StrZero(DataCadastros.CdsProdutosPRD_CODIGO.AsString,4);
         sPrdCodigo :=  DataCadastros.CdsProdutosPRD_CODIGO.AsString;
         sReferencia := UpperCase(COPY(CdsIensPedidoReferencia.AsString,1,20));
         sDescricao :=  UpperCase(Copy(CdsIensPedidoDescricao.AsString,1,100));
         sUnidade := UpperCase(CdsIensPedidoUnidade.AsString);



         DataCadastros.CdsProdutosPRD_REFER.AsString := UpperCase(sReferencia);
         DataCadastros.CdsProdutosPRD_UND.AsString := UpperCase(CdsIensPedidoUnidade.AsString);

         DataCadastros.CdsProdutosPRD_EMBALA.AsString := UpperCase(CdsIensPedidoUnidade.AsString);
         DataCadastros.CdsProdutosPGR_CODIGO.AsString      := '';
         DataCadastros.CdsProdutosPTI_CODIGO.AsString      := '';

         DataCadastros.CdsProdutosPRD_ALIQICM.AsCurrency   := 0;
         DataCadastros.CdsProdutosEMP_CODIGO.AsString      := dbInicio.Empresa.EMP_CODIGO;
         DataCadastros.CdsProdutosSTB_TRIBUTACAO.AsString  := '00';
         DataCadastros.CdsProdutosPRD_ORIGEM.AsInteger     := 0;
         DataCadastros.CdsProdutosSPED_GENCODIGO.AsString  := '';
         DataCadastros.CdsProdutosPRD_PRODSERV.AsString    := 'P'; // P ou S
         DataCadastros.CdsProdutosPRD_UTILCONV.AsString    := 'N';
         DataCadastros.CdsProdutosPRD_FATORC.AsString      := '0';
         DataCadastros.CdsProdutosPRD_DIVMULT.AsString     := 'D';
         DataCadastros.CdsProdutosPRD_DESCRI.AsString      := UpperCase(Copy(CdsIensPedidoDescricao.AsString,1,100));
         DataCadastros.CdsProdutosPRD_CODORIGINAL.AsString := sReferencia;
         DataCadastros.CdsProdutos.ApplyUpdates(0);
         DataCadastros.CdsProdutos.Close;

         //Cria Vinculação
         if (Trim(sPrdCodigo) <> '') then
            begin
               DataCadastros.sqlUpdate.Close;
               DataCadastros.SqlUpdate.sql.text :='INSERT INTO PRD0000_CODIGO (PRD_CODIGO,PRDC_REFERENCIA,PRDC_DESSCRICAO,FOR_CODIGO) VALUES ('+QuotedStr(sPrdCodigo)+','+QuotedStr(UpperCase(sReferencia))+','+QuotedStr(UpperCase(CdsIensPedidoDescricao.AsString))+','+QuotedStr('000')+')';
               DataCadastros.sqlUpdate.Execsql;
            end;
         try
           FormProduto := TFormProduto.Create(Application);
            try
              FormProduto.ShowModal;
            finally
              FormProduto.Destroy;
              FormProduto := nil;
             end;
         except
             //beep;
             uteis.erro  ('Ocorreu um erro na criação do formulário!');
         end;
         if (sPrdCodigo <> '') then
            begin
               CdsIensPedido.Edit;
               CdsIensPedidoPRD_CODIGO.AsString := sPrdCodigo;
               CdsIensPedidoPRD_REFER.AsString := sReferencia;
               CdsIensPedidoReferencia.AsString := sReferencia;
               CdsIensPedidoDescricao.AsString := sDescricao;
               CdsIensPedidoUnidade.AsString := sUnidade;
               CdsIensPedido.Post;
            end;
      end;
   VerificaStatus;
   pnlProduto.Visible := False;
end;

procedure TFrmPedidoWebAcao.CbEmpresaClick(Sender: tObject);
begin
   if (SQLEmpresa.Active)
   and(not SQLEmpresa.IsEmpty) then
      begin
         if (SQLEmpresa.Locate('EMP_RAZAO',CbEmpresa.Text,[])) then
            begin
               CEmpresa.AsInteger := SQLEmpresa.FieldByName('EMP_CODIGO').AsInteger;
            end
         else
            begin
               CEmpresa.AsInteger := 0;
            end;
      end;
end;

procedure TFrmPedidoWebAcao.CbEmpresaExit(Sender: tObject);
begin
   if (ActiveControl <> Nil)
   and(ActiveControl.Name <> 'BitCancela') then
      begin
         if (SQLEmpresa.Active)
         and(not SQLEmpresa.IsEmpty) then
            begin
               if (not SQLEmpresa.Locate('EMP_RAZAO',CbEmpresa.Text,[])) then
                  begin
                     //beep;
                     CEmpresa.AsInteger := 0;
                     uteis.aviso('Empresa não localizada com o login informado !');
                     CEmpresa.SetFocus;
                     CEmpresa.SelectAll;
                  end;
            end;
      end;
   CbEmpresa.Color := clWindow;
end;

procedure TFrmPedidoWebAcao.CEmpresaExit(Sender: tObject);
begin
   if (ActiveControl <> Nil)
   and(ActiveControl.Name <> 'BitCancelar') then
      begin
         if (SQLEmpresa.Active)
         and(not SQLEmpresa.IsEmpty) then
            begin
               if (CEmpresa.AsInteger <> 0) then
                  begin
                     if (SQLEmpresa.Locate('EMP_CODIGO',StrZero(CEmpresa.Text,3),[])) then
                        begin
                            CbEmpresa.Text     := SQLEmpresa.FieldByName('EMP_RAZAO').AsString;
                        end
                     else
                        begin
                           //beep;
                           CbEmpresa.Text      := '';
                           uteis.aviso('Empresa não localizada com o código informado !');
                           CEmpresa.SetFocus;
                           CEmpresa.SelectAll;
                        end;
                  end
               else
                  begin
                     CbEmpresa.Text := '';
                  end;
            end;
      end;
    CEmpresa.color := clWindow;
end;

procedure TFrmPedidoWebAcao.EdClienteCodigoExit(Sender: tObject);
begin
   EdClienteCodigo.Text := PreenchezeroEsquerda(EdClienteCodigo.Text,5);
   if (EdClienteCodigo.Text = '00000') then
      begin
         EdClienteCodigo.Clear;
         CbCliente.Text := '';
      end
   else
      begin
         CbCliente.TextoLocalizar := EdClienteCodigo.Text;
         CbCliente.Localizar := True;
         if (CbCliente.Localizado) then
            begin
            end
         else
            begin
               uteis.aviso('Cliente não localizado com o código informado');
               CbCliente.Text := '';
               EdClienteCodigo.SetFocus;
               EdClienteCodigo.SelectAll;
            end;
      end;
end;

procedure TFrmPedidoWebAcao.CbClienteChange(Sender: tObject);
begin
   EdClienteCodigo.Text := CbCliente.CodigoLista;
end;

procedure TFrmPedidoWebAcao.CbClienteExit(Sender: tObject);
begin
   if (CbCliente.CodigoLista = '') or (CbCliente.Text = '') then
      begin
         CbCliente.Text := '';
         EdClienteCodigo.Text := '';
      end
   else
      begin
         EdClienteCodigo.Text := CbCliente.CodigoLista;
      end;
end;

procedure TFrmPedidoWebAcao.EdPrazoCodigoExit(Sender: tObject);
begin
   EdPrazoCodigo.Text := PreenchezeroEsquerda(EdPrazoCodigo.Text,3);
   if (EdPrazoCodigo.Text = '000') then
      begin
         EdPrazoCodigo.Clear;
         CbPrazo.Text := '';
      end
   else
      begin
         CbPrazo.TextoLocalizar := EdPrazoCodigo.Text;
         CbPrazo.Localizar := True;
         if (CbPrazo.Localizado) then
            begin
            end
         else
            begin
               uteis.aviso('Prazo não localizado com o código informado');
               CbPrazo.Text := '';
               EdPrazoCodigo.SetFocus;
               EdPrazoCodigo.SelectAll;
            end;
      end;
end;

procedure TFrmPedidoWebAcao.CbPrazoChange(Sender: tObject);
begin
   EdPrazoCodigo.Text := CbPrazo.CodigoLista;
end;

procedure TFrmPedidoWebAcao.CbPrazoExit(Sender: tObject);
begin
   if (CbPrazo.CodigoLista = '') or (CbPrazo.Text = '') then
      begin
         CbPrazo.Text := '';
         EdPrazoCodigo.Text := '';
      end
   else
      begin
         EdPrazoCodigo.Text := CbPrazo.CodigoLista;
      end;
end;

procedure TFrmPedidoWebAcao.EdVendedorCodigoExit(Sender: tObject);
begin
   EdVendedorCodigo.Text := PreenchezeroEsquerda(EdVendedorCodigo.Text,3);
   if (EdVendedorCodigo.Text = '000') then
      begin
         EdVendedorCodigo.Clear;
         CbVendedor.Text := '';
      end
   else
      begin
         CbVendedor.TextoLocalizar := EdVendedorCodigo.Text;
         CbVendedor.Localizar := True;
         if (CbVendedor.Localizado) then
            begin
            end
         else
            begin
               uteis.aviso('Vendedor não localizado com o código informado');
               CbVendedor.Text := '';
               EdVendedorCodigo.SetFocus;
               EdVendedorCodigo.SelectAll;
            end;
      end;
end;

procedure TFrmPedidoWebAcao.CbVendedorExit(Sender: tObject);
begin
   if (CbVendedor.CodigoLista = '') or (CbVendedor.Text = '') then
      begin
         CbVendedor.Text := '';
         EdVendedorCodigo.Text := '';
      end
   else
      begin
         EdVendedorCodigo.Text := CbVendedor.CodigoLista;
      end;
end;

procedure TFrmPedidoWebAcao.CbVendedorChange(Sender: tObject);
begin
   EdVendedorCodigo.Text := CbVendedor.CodigoLista;
end;

procedure TFrmPedidoWebAcao.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
   SQLEmpresa.Close;
   CdsIensPedido.Close;
   CdsTemp.Close;
   CbCliente.CarregarCombo := True;
   CbPrazo.CarregarCombo := True;
   CbVendedor.CarregarCombo := True;
end;

procedure TFrmPedidoWebAcao.FormCreate(Sender: tObject);
begin
     fSeqUnicaPed:=(dbInicio.GetParametroSistema('PMT_SEQUENCIA_UNICA_PEDIDO') = 'S');
     if fSeqUnicaPed then
        fCodEmSeqUnica:='001'
     Else
        fCodEmSeqUnica:=dbInicio.Empresa.EMP_CODIGO;
end;

procedure TFrmPedidoWebAcao.dbgrdItensDrawColumnCell(Sender: tObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
   if (not odd(CdsIensPedido.RecNo)) then
       if not (GdSelected in State) then
          begin
              dbgrdItens.Canvas.Brush.Color := $00FFEFDF;
              dbgrdItens.Canvas.FillRect(rect);
              dbgrdItens.DefaultDrawDataCell(Rect,column.Field,state);
          end;
   if (not CdsIensPedido.IsEmpty) then
      begin
         if Column.Field = (CdsIensPedidoSituacao) then
            begin
               dbgrdItens.Canvas.FillRect(Rect);
               if (CdsIensPedidoSituacao.AsBoolean) then
                  ilLista.Draw(dbgrdItens.Canvas,Rect.Left+03,Rect.Top+1,1)
               else
                  ilLista.Draw(dbgrdItens.Canvas,Rect.Left+03,Rect.Top+1,2);
            end;
      end;
end;

procedure TFrmPedidoWebAcao.ChamaProdutoManutencao;
begin
   if (not CdsIensPedido.IsEmpty) then
      begin
         if (CdsIensPedidoSituacao.AsBoolean) then
            begin
               uteis.aviso('Produto já vinculado!');
            end
         else
            begin
               pnlProduto.Visible := True;
            end;
      end;
end;

procedure TFrmPedidoWebAcao.dbgrdItensDblClick(Sender: tObject);
begin
   ChamaProdutoManutencao;
end;

procedure TFrmPedidoWebAcao.dbgrdItensKeyPress(Sender: tObject;
  var Key: Char);
begin
   if (Key = #13) then
      begin
         Key := #0;
         ChamaProdutoManutencao;
      end;
end;

procedure TFrmPedidoWebAcao.SpeedTipoClick(Sender: tObject);
begin
    FrmPedidoTipoInicial := TFrmPedidoTipoInicial.Create(Application);
   try
      FrmPedidoTipoInicial.ShowModal;
   finally
      FrmPedidoTipoInicial.Destroy;
      FrmPedidoTipoInicial := nil;
   end;
   EdPedidoTipo.Text := sTipoDescricao;
end;

procedure TFrmPedidoWebAcao.btnBit_GravarClick(Sender: tObject);
var
   bContinua:Boolean;
   sPedidoNumero, sDescricaoProduto:string;
   rCusto, comissao1:Double;
   saldo, pendente, itemPendente, baixaKardex: real;
   comissao: currency;

   totalcomissao, mediacomissao : currency;
begin
    bContinua := True;
   //Validar Pedido
   if (CEmpresa.AsInteger <= 0) then
      begin
         uteis.aviso('Informe a empresa');
         CEmpresa.SetFocus;
         CEmpresa.SelectAll;
      end
   else
   if (EdClienteCodigo.Text = '') then
      begin
         uteis.aviso('Informe o Cliente');
         EdClienteCodigo.SetFocus;
         EdClienteCodigo.SelectAll;
      end
   else
   if (EdPrazoCodigo.Text = '') then
      begin
         uteis.aviso('Informe o Prazo');
         EdPrazoCodigo.SetFocus;
         EdPrazoCodigo.SelectAll;
      end
   else
   if (EdVendedorCodigo.Text = '') then
      begin
         uteis.aviso('Informe o Vendedor');
         EdVendedorCodigo.SetFocus;
         EdVendedorCodigo.SelectAll;
      end
   else
   if (EdPedidoTipo.Text = '') then
      begin
         uteis.aviso('Informe o Tipo do Pedido');
      end
   else
   if (DteEntrada.Text = '  /  /    ') then
      begin
         uteis.aviso('Informe a Data de Entrada');
      end
   else
      begin
         //Verifica se os itens do pedidos foram todos vinculados
         CdsIensPedido.DisableControls;
         CdsIensPedido.Filtered := False;
         CdsIensPedido.Filter   := 'Situacao = false';
         CdsIensPedido.Filtered := True;
         if (not CdsIensPedido.IsEmpty) then
            begin
               uteis.aviso('Existe produtos não vinculados ou cadastrados no sistema, favor verificar!');
               bContinua := False;
            end;
         CdsIensPedido.Filtered := False;
         CdsIensPedido.EnableControls;
         if (bContinua) then
            begin
               sPedidoNumero := StrZero(SequenciadorPRC(DataCadastros.SQLConnection1, fCodEmSeqUnica,'PED0000', 'PED_CODIGO', 0),6);
               comissao1 := DBInicio.BuscaUmDadoSqlAsFloat('SELECT REP_COMISSAO FROM REP0000 WHERE REP_CODIGO ='+QuotedStr(EdVendedorCodigo.Text));
               //Cria Pedido
               GravarPedido('', // multiplas inscrições estaduais
                            '', // É consumidor final?
                            '', // É consumo próprio
                            iif(bTipoServico, 'S', 'N'),
                            sPedidoNumero,
                            sTipoCodigo,
                            EdClienteCodigo.Text,
                            EdVendedorCodigo.Text,
                            '',
                            EdPrazoCodigo.Text,
                            '',
                            '',
                            '',
                            'A',//A pagar = 'F' Pago = 'C'  Outros = 'O'
                            '',
                            '',
                            'F',//F = Faturar /P = Parcial /T = Faturado
                            '',
                            '',
                            '',
                            '',
                            '0',
                            '0',
                            '',
                            '',
                            false,
                            DteEntrada.Date,
                            DteEntrada.Date,
                            comissao1,  //vendedor
                            iif(dbInicio.EMPRESA.pComissaoPadrao,dbInicio.Empresa.pComissaoGerentePadrao,0),        //gerente                    ,
                            iif(dbInicio.EMPRESA.pComissaoPadrao,dbInicio.Empresa.pComissaoSupervisorPadrao,0),    //surpervisor                        ,
                            0,
                            0,
                            0,
                            0,
                            0,
                            0,
                            0,
                            0,
                            0,
                            0,
                            FrmPedidoWeb.SQLPedidosTOTAL.AsFloat,
                            FrmPedidoWeb.SQLPedidosTOTAL.AsFloat,
                            mmoObservacao.Text,
                            '',
                            '',
                            '',
                            '',
                            '',
                            0 ,
                            'PEN',
                            0,'');

                            

               //Lança Itens
               CdsIensPedido.First;
               totalcomissao :=0;
               while (not CdsIensPedido.Eof) do
                  begin
                     rCusto := 0;
                     sDescricaoProduto := RetornaProdutoDescricaoPelaReferencia(CdsIensPedidoPRD_REFER.AsString);
                     if (sDescricaoProduto = '') then
                        sDescricaoProduto := CdsIensPedidoDescricao.AsString;
                     comissao :=  PercentualComissao(CdsIensPedidoPRD_REFER.AsString, CdsIensPedidoPRD_CODIGO.AsString,EdClienteCodigo.Text,CdsIensPedidoPreco.AsFloat) ;
                     if comissao>0 then
                       totalcomissao := totalcomissao +  ((CdsIensPedidoQuantidade.AsFloat * CdsIensPedidoPreco.AsFloat) * (comissao/100));
                     saldo := DBInicio.BuscaUmDadoSqlAsFloat(' SELECT AMX_SALDO_RET AS SALDO FROM pcd_Kardex_Saldo(' +  QuotedStr(DBInicio.Empresa.EMP_CODIGO) + ', ' + QuotedStr(CdsIensPedidoPRD_CODIGO.AsString) + ', ' + QuotedStr(dbInicio.GetParametroSistema('PMT_AMX_VENDA')) + ')');
                     pendente := Saldo - CdsIensPedidoQuantidade.AsFloat;
                     if pendente >= 0 then
                       itemPendente := 0
                     else
                       itemPendente := Abs(pendente);
                     GravarPedidoItem(0,
                                      CdsIensPedidoUnidade.AsString,
                                      sPedidoNumero,
                                      CdsIensPedidoPRD_CODIGO.AsString,
                                      CdsIensPedidoPRD_REFER.AsString,
                                      '',
                                      COPY(sDescricaoProduto,1,100),
                                      dbInicio.GetParametroSistema('PMT_AMX_VENDA'),
                                      '',
                                      '',
                                      '',
                                      '0',
                                      False,
                                      False,
                                      CdsIensPedidoQuantidade.AsFloat,
                                      CdsIensPedidoQuantidade.AsFloat,
                                      0,
                                      CdsIensPedidoPreco.AsFloat, //preço
                                      CdsIensPedidoPreco.AsFloat, //preço bruto
                                      rCusto, //custo
                                      0,//Margem
                                      0,//acrescimo
                                      0,//desconto
                                      0,//desconto2
                                      comissao ,//rComissaoItem
                                      0,
                                      0,
                                      0,
                                      0,
                                      0,
                                      StrToInt(dbInicio.Usuario.Codigo),
                                      0,
                                      0,
                                      0,
                                      0,
                                      0,
                                      0,
                                      '',
                                      '',
                                      0,
                                      DBInicio.BuscaUmDadoSqlAsInteger('SELECT FIRST 1 '+ FloatToStr(itemPendente) + 'FROM EMP0000')    // PENDENTE  pog nervosa para fazer funcionar
                                      );

                     if (DBInicio.Empresa.wAtualizaEstoque = 'P') and (dbInicio.BuscaUmDadoSQLasString('SELECT OPV_ATESTOQUE FROM OPV0000 o WHERE OPV_CODIGO =  ' + sTipoCodigo) = 'S') then
                     begin

                        if not Assigned(frmBaseDbEstoque) then
                          frmBaseDbEstoque:= TfrmBaseDbEstoque.Create(Application);

                        if pendente <= 0 then
                          baixaKardex := saldo
                        else
                          baixaKardex := CdsIensPedidoQuantidade.AsFloat;
                        if baixaKardex > 0 then
                          frmBaseDbEstoque.KardexLancamento('0',
                                        'WEB',
                                        dbinicio.empresa.wPMT_AMX_VENDA,
                                        '',
                                        CdsIensPedidoPRD_CODIGO.AsString,
                                        '',//grade
                                        DBInicio.BuscaUmDadoSQLAsString('SELECT PRD_UND FROM PRD0000 WHERE PRD_CODIGO = ' + QuotedStr( CdsIensPedidoPRD_CODIGO.AsString)),
                                        'S',
                                        '',
                                        '',//Novo esquema de lote
                                        'Saída Pedido Web',
                                        Now,
                                        baixaKardex,
                                        sPedidoNumero,
                                        '',
                                        0.00,
                                        EdClienteCodigo.Text,
                                        '',
                                        CbVendedor.idRetorno       );

                     end;







                     CdsIensPedido.Next
                  end;
                  if totalcomissao>0 then
                  begin
                    mediacomissao := totalcomissao/FrmPedidoWeb.SQLPedidosTOTAL.AsFloat*100;
                     DataCadastros.sqlUpdate.Close;
                     DataCadastros.SqlUpdate.sql.text  :=SQLDEF('PEDIDOS','UPDATE ped0000 SET PED_COMIS1 = '+QuotedStr(ValorAmericano(FormatFloat('###,###,###,##0.0000',mediacomissao))),
                                                                'WHERE PED_CODIGO = '+QuotedStr(sPedidoNumero),'','');
                     DataCadastros.sqlUpdate.ExecSQL;
                  end;
                 DataCadastros.sqlUpdate.Close;
                 DataCadastros.SqlUpdate.sql.text :='UPDATE PEDIDO_WEB SET PW_DATA_STATUS ='+QuotedStr(DataAmericana(DateToStr(Date)))+', PW_STATUS = '+QuotedStr('A')+', PED_CODIGO = '+QuotedStr(sPedidoNumero)+' WHERE PW_REGISTRO = '+FrmPedidoWeb.SQLPedidosPW_REGISTRO.AsString;
                 DataCadastros.sqlUpdate.Execsql;
                 DataCadastros.sqlUpdate.Close;
                 uteis.aviso('Pedido Adicionado');
                 Close;

            end;
      end;
end;

end.





