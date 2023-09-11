unit uPesqOCP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBPesquisaForm, Data.DB, Data.DBXFirebird, Data.FMTBcd, Vcl.Menus, Datasnap.DBClient, Datasnap.Provider, Vcl.ExtCtrls, Data.SqlExpr, ACBrEnterTab, ACBrBase,
  ACBrCalculadora, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.Buttons, Vcl.Mask, JvExMask, JvToolEdit, SgDbSeachComboUnit, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxSplitter, SimpleDS, SqlClientDataSet;

type
  TfrmPesqOCP = class(TfrmBaseDBPesquisa)
    Label3: TLabel;
    EdForneCodigo: TEdit;
    PesqFornecedor: TSgDbSearchCombo;
    Label4: TLabel;
    edProdutoCodigo: TEdit;
    cbReferencia: TSgDbSearchCombo;
    GroupBox1: TGroupBox;
    ldataInicial: TLabel;
    lDataFinal: TLabel;
    DataInicial: TJvDateEdit;
    DataFinal: TJvDateEdit;
    edNumeroPedido: TLabeledEdit;
    cdsBuscoOCP_CODIGO: TStringField;
    cdsBuscoFOR_CODIGO: TStringField;
    cdsBuscoOCP_DTENTREGA: TSQLTimeStampField;
    cdsBuscoOCP_DTEMIS: TSQLTimeStampField;
    cdsBuscoOCP_TOTAL: TFMTBCDField;
    cdsBuscoFOR_RAZAO: TStringField;
    cdsBuscoFOR_FONE: TStringField;
    qProduto: TSQLQuery;
    qProdutoPRD_CODIGO: TStringField;
    qProdutoPRD_REFER: TStringField;
    qProdutoPRD_DESCRI: TStringField;
    qProdutoPRD_CODBARRA: TStringField;
    qProdutoPRD_PRODSERV: TStringField;
    qProdutoPRD_UND: TStringField;
    qProdutoLIN_DESCRI: TStringField;
    qProdutoPRD_PVENDA: TFMTBCDField;
    cxSplitter1: TcxSplitter;
    Splitter1: TSplitter;
    GroupBox2: TGroupBox;
    DbGridItemOrdem: TDBGrid;
    edRequerente: TLabeledEdit;
    DsItemOC: TDataSource;
    dspItens: TDataSetProvider;
    cdsItemOC: TClientDataSet;
    SqlItemOc: TSQLQuery;
    cdsItemOCOCP_CODIGO: TStringField;
    cdsItemOCPRD_REFER: TStringField;
    cdsItemOCOCI_QTDES: TFMTBCDField;
    cdsItemOCOCI_QTDER: TFMTBCDField;
    cdsItemOCOCI_IPI: TFMTBCDField;
    cdsItemOCOCI_SITUACAO: TStringField;
    cdsItemOCOCI_PRECO: TFMTBCDField;
    cdsItemOCOCI_DESCRICAO: TMemoField;
    f: TStringField;
    cdsBuscoOCP_STATUS: TStringField;
    cdsItemOCsituacao: TStringField;
    chkDiferenca: TCheckBox;
    cdsItemOCOCI_NOTADIFERE: TStringField;
    cdsItemOCOCI_NOTADIFERE_MOTIVO: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cdsBuscoFOR_FONEGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure cbReferenciaButtonClick(Sender: TObject);
    procedure cdsBuscoOCP_STATUSGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cdsBuscoAfterScroll(DataSet: TDataSet);
    procedure cdsItemOCOCI_DESCRICAOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure edProdutoCodigoExit(Sender: TObject);
    procedure edProdutoCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdForneCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdForneCodigoExit(Sender: TObject);
    procedure cbReferenciaSelect(Sender: TObject);
    procedure PesqFornecedorSelect(Sender: TObject);
    procedure DBGridDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DbGridItemOrdemDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure chkDiferencaClick(Sender: TObject);
    procedure DbGridItemOrdemDblClick(Sender: TObject);
  private
    fProduto : string;
    bpesquisando: boolean;
  public
    procedure filtrar;
    procedure buscaItens;
    property Produto : string read fproduto write fproduto;
  end;

var
  frmPesqOCP: TfrmPesqOCP;

implementation

{$R *.dfm}
uses rwfunc, InicioDB, Uteis, Prd0006;
{ TfrmBaseDBPesquisa1 }

procedure TfrmPesqOCP.buscaItens;
begin
 cdsItemOC.Close;
 SqlItemOc.SQL.Clear;
 SqlItemOc.SQL.Text := SQLDEF( 'ORDENSCOMPRA',
       ' select case when OCI_SITUACAO = ''P'' then ''Pendente''  when OCI_SITUACAO = ''F'' then ''Parcial''   when OCI_SITUACAO = ''C'' then ''Recebido'' end as situacao,   ' +
       ' (SELECT FIRST 1 pc.PRDC_REFERENCIA from  PRD0000_CODIGO pc where  pc.PRD_CODIGO = e.PRD_CODIGO AND pc.FOR_CODIGO = '+QuotedStr(cdsBuscoFOR_CODIGO.AsString)+') PRDC_REFERENCIA, '+
       ' (SELECT FIRST 1 pc.PRDC_DESSCRICAO from  PRD0000_CODIGO pc where  pc.PRD_CODIGO = e.PRD_CODIGO AND pc.FOR_CODIGO = '+QuotedStr(cdsBuscoFOR_CODIGO.AsString)+') PRDC_DESSCRICAO, '+
       '  I.OCI_DESCRICAO AS PRD_DESCRI,COALESCE(I.PRD_UND, E.PRD_UND) as PRD_UND ,E.PRD_ESTOQUE,E.PRD_ENTRADA,' +
       '  E.PRD_SAIDA,E.PRD_PENDENTE,I.* from ocp_it01 I '+
       '  JOIN PRD0000 E ON I.PRD_REFER = E.prd_refer '+ ConcatSe ( ' and e.',dbinicio.ExclusivoSql('PRODUTOS')) ,
       ' where I.OCP_CODIGO = '+ QuotedStr(cdsBuscoOCP_CODIGO.AsString) ,'I.OCI_REGISTRO','I.');
  cdsItemOC.Open;


end;

procedure TfrmPesqOCP.cbReferenciaButtonClick(Sender: TObject);
begin
  inherited;
   FormProdutoGrid := TFormProdutoGrid.Create(Application);
   try
      FormProdutoGrid.ShowModal;
      if FormProdutoGrid.ModalResult=mrOk then
         cbReferencia.IdRetorno := FormProdutoGrid.ReferRetorno ;
   finally
          FreeAndNil( FormProdutoGrid );
   end;
end;

procedure TfrmPesqOCP.cbReferenciaSelect(Sender: TObject);
begin
  inherited;
  if cbReferencia.idRetorno <> '' then
    edProdutoCodigo.Text := cbReferencia.idRetorno
  else
  begin
   cbReferencia.Clear;
   edProdutoCodigo.Clear;

  end;
end;

procedure TfrmPesqOCP.cdsBuscoAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if not cdsBusco.IsEmpty and ( cdsBusco.Active) then
   buscaItens;
end;

procedure TfrmPesqOCP.cdsBuscoFOR_FONEGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if Sender.AsString <> '' then
   Text :=  MascaraFone(Sender.AsString);
end;

procedure TfrmPesqOCP.cdsBuscoOCP_STATUSGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
//  if Sender.Text = 'P' then
//    Text := 'Pendente'
//  Else if sender.Text = 'F' then
//   TEXT := 'Parcial'
//  else IF sender.Text = 'C' then text := 'Concluído';
end;

procedure TfrmPesqOCP.cdsItemOCOCI_DESCRICAOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
    Text := cdsItemOCOCI_DESCRICAO.Asstring;
end;

procedure TfrmPesqOCP.chkDiferencaClick(Sender: TObject);
begin
  btnPesquisa.Click;

end;

procedure TfrmPesqOCP.DBGridDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  if not cdsBusco.IsEmpty and( cdsBuscoOCP_STATUS.AsString = 'C') then
  Begin
       DBGrid.Canvas.Font.Color := clBlue; // coloque aqui a cor desejada
       DBGrid.DefaultDrawDataCell(Rect, DBGrid.columns[datacol].field, State);

  End;

end;

procedure TfrmPesqOCP.DbGridItemOrdemDblClick(Sender: TObject);
begin
  inherited;
  if (cdsItemOCOCI_NOTADIFERE.AsString = 'S') AND (cdsItemOCOCI_NOTADIFERE_MOTIVO.AsString <> '') then
  begin
    ShowMessage(cdsItemOCOCI_NOTADIFERE_MOTIVO.AsString);
  end;
end;

procedure TfrmPesqOCP.DbGridItemOrdemDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  if cdsItemOCOCI_NOTADIFERE.AsString = 'S' then
   begin
      DbGridItemOrdem.Canvas.Brush.Color:=clSkyBlue;
      DbGridItemOrdem.DefaultDrawColumnCell  (Rect, DataCol, Column, State);
   end;
end;

procedure TfrmPesqOCP.EdForneCodigoExit(Sender: TObject);
begin
  inherited;
  if EdForneCodigo.Text <> '' then
  begin
     PesqFornecedor.idRetorno := EdForneCodigo.Text;
     if PesqFornecedor.idRetorno = '' then
        GeraException('Fornecedor não localizado')
  end
  else
  begin
   PesqFornecedor.Clear;
   EdForneCodigo.Clear;

  end;
  btnPesquisa.Click;
end;

procedure TfrmPesqOCP.EdForneCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F4 then
    PesqFornecedor.Button.Click;
end;

procedure TfrmPesqOCP.edProdutoCodigoExit(Sender: TObject);
begin
  inherited;
  if edProdutoCodigo.Text <> '' then
  begin
     cbReferencia.idRetorno := edProdutoCodigo.Text;
     if cbReferencia.idRetorno = '' then
        GeraException('Produto não localizado')
  end
  else
  begin
   cbReferencia.Clear;
   edProdutoCodigo.Clear;

  end;
  btnPesquisa.Click;
end;

procedure TfrmPesqOCP.edProdutoCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F4 then
    cbReferencia.Button.Click;
end;

procedure TfrmPesqOCP.filtrar;
begin
	with qBusco do
	begin
    qBusco.Close;
		sql.Clear;
		SQL.Add(' select OC.OCP_CODIGO, OC.EMP_CODIGO, OCP_PRAZO , OCP_REQUERENTE, OCP_DTEMIS, OCP_DTENTREGA, OCP_TOTAL, '+
           '  FO.FOR_CODIGO, FOR_RAZAO, OCP_STATUS, '+
           ' case when OCP_STATUS = ''P'' THEN ''Pendente''' +
           '      when OCP_STATUS = ''F'' THEN ''Parcial''' +
           '    else  ''Concluído'' end as STATUS, OCP_STATUS, '   +
           '  FO.FOR_FONE '+
           ' FROM OCP0000 OC '+
           ' LEFT JOIN FOR0000 FO ON (FO.FOR_CODIGO = OC.FOR_CODIGO ) ');

    if edNumeroPedido.Text = '' then
    begin
      if DBInicio.Exclusivo('ORDENSCOMPRA') then
        SqlAdd('OC.EMP_CODIGO = '+QuotedStr(DBInicio.Empresa.EMP_CODIGO));
     if (DataInicial.Date > 0) and (DataFinal.Date > 0 ) then
       SqlAdd(' OC.OCP_DTEMIS BETWEEN '+ DateToSQL(DataInicial.date)+' AND '+DateToSQL(DataFinal.date))
     else if (DataInicial.Date > 0) then
       SqlAdd(' OC.OCP_DTEMIS >= '+ DateToSQL(DataInicial.date))
     else if  (DataFinal.Date > 0 ) then
       SqlAdd(' OC.OCP_DTEMIS <= '+ DateToSQL(DataFinal.date))  ;
     if PesqFornecedor.idRetorno <> '' then
       SqlAdd(' FO.FOR_CODIGO  = '+QuotedStr( PesqFornecedor.idRetorno));

     IF cbReferencia.idRetorno <> '' then
      SqlAdd(' EXISTS (SELECT 1  FROM OCP_IT01 it WHERE oc.OCP_CODIGO = it.OCP_CODIGO AND oc.EMP_CODIGO = it.EMP_CODIGO AND prd_refer = '+QuotedStr(cbReferencia.idRetorno) + ' )');
     if edRequerente.Text <> '' then
       SqlAdd('OCP_REQUERENTE  CONTAINING ' +QuotedStr(edRequerente.Text));
     if chkDiferenca.Checked then
       SQL.Add(' AND EXISTS ( SELECT 1 FROM OCP_IT01 IT WHERE OC.OCP_CODIGO = IT.OCP_CODIGO AND OCI_NOTADIFERE = ''S'' )');
    end
    else
    begin
       SqlAdd(' OC.OCP_CODIGO = '+QuotedStr(strzero(edNumeroPedido.Text,6)));
    end;
    if not DBInicio.Sharedb.OrdensCompra then // é exclusivo
      SqlAdd( 'OC.EMP_CODIGO = ' + QuotedStr(DBInicio.Emp_Codigo));

    SQL.Add( 'ORDER BY OC.OCP_DTEMIS DESC');
    buscaItens;
	end;
end;

procedure TfrmPesqOCP.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TfrmPesqOCP.FormCreate(Sender: TObject);
begin
  inherited;
  DataInicial.Date := Date-180;
  DataFinal.Date := Date;
 	Self.CampoID:='OCP_CODIGO';
  self.CampoIDRetorno := 'OCP_CODIGO';
	Self.ProcedureFiltro:=filtrar;

end;

procedure TfrmPesqOCP.FormShow(Sender: TObject);
begin
  inherited;
  bpesquisando := True;

  bpesquisando := False;
  btnPesquisa.Click;
  self.Caption := 'Pedido de compra de produto referência '+ Produto;
  SetTamanhoMinimo(622,1222);
//  cdsBuscoOCI_QTDE.DisplayFormat :=  QtdeCasaDecimal(DBInicio.Empresa.EMP_CODIGO,'OCP') ;
//  cdsBuscoOCI_PRECO.DisplayFormat :=  QtdeCasaDecimal(DBInicio.Empresa.EMP_CODIGO,'OCP') ;
//  cdsBuscoVALOR.DisplayFormat :=  QtdeCasaDecimal(DBInicio.Empresa.EMP_CODIGO,'OCP') ;
end;

procedure TfrmPesqOCP.PesqFornecedorSelect(Sender: TObject);
begin
  inherited;
  if PesqFornecedor.idRetorno <> '' then
    EdForneCodigo.Text := PesqFornecedor.idRetorno
  else
  begin
   PesqFornecedor.Clear;
   EdForneCodigo.Clear;

  end;
end;

end.
