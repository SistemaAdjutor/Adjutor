unit uProducaoSemPedido;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBPesquisaFDAC, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  Data.DB, cxDBData, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Phys.FBDef, FireDAC.UI.Intf, FireDAC.VCLUI.Wait, FireDAC.VCLUI.Error, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.FB, ACBrCalculadora, frxClass, Vcl.Menus,
  FireDAC.Comp.Client, FireDAC.Comp.UI, FireDAC.Phys.IBBase, FireDAC.Comp.DataSet, cxLocalization, ACBrBase, ACBrEnterTab, JvExControls, JvArrowButton, Vcl.StdCtrls, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, Vcl.Buttons, Vcl.ExtCtrls, Vcl.ComCtrls, cxCheckBox, cxButtonEdit, cxGridBandedTableView, cxGridDBBandedTableView,
  System.Actions, Vcl.ActnList, cxEditRepositoryItems, SgDbSeachComboUnit, Data.FMTBcd, Data.SqlExpr;

type
  TfrmProdutoSemPedido = class(TfrmBaseDBPesquisaFDAC)
    rgTipo: TRadioGroup;
    cdsBuscaPRD_CODIGO: TStringField;
    cdsBuscaPRD_REFER: TStringField;
    cdsBuscaPRD_DESCRI: TStringField;
    cdsBuscaSALDO: TBCDField;
    cdsBuscaPRD_MINIMO: TFMTBCDField;
    cdsBuscaPRD_UND: TStringField;
    cdsBuscaPRODUCAO: TFMTBCDField;
    cxgrd1DBTableView1PRD_CODIGO: TcxGridDBColumn;
    cxgrd1DBTableView1PRD_REFER: TcxGridDBColumn;
    cxgrd1DBTableView1PRD_DESCRI: TcxGridDBColumn;
    cxgrd1DBTableView1SALDO: TcxGridDBColumn;
    cxgrd1DBTableView1PRD_MINIMO: TcxGridDBColumn;
    cxgrd1DBTableView1PRD_UND: TcxGridDBColumn;
    cxgrd1DBTableView1PRODUCAO: TcxGridDBColumn;
    cdsBuscaSelecionado: TBooleanField;
    cdsBuscaProduzir: TFMTBCDField;
    cxgrd1DBTableView1Selecionado: TcxGridDBColumn;
    cxgrd1DBTableView1Produzir: TcxGridDBColumn;
    cdsBuscaPTI_DESCRI: TStringField;
    cxgrd1DBTableView1PTI_DESCRI: TcxGridDBColumn;
    cxgrdDireto: TcxGrid;
    cxgrdDiretoDBBandedTableView1: TcxGridDBBandedTableView;
    cxgrdDiretoDBBandedTableView1Column1: TcxGridDBBandedColumn;
    cxgrdDiretoDBBandedTableView1PRD_CODIGO: TcxGridDBBandedColumn;
    cxgrdDiretoDBBandedTableView1PRD_REFER: TcxGridDBBandedColumn;
    cxgrdDiretoDBBandedTableView1PRD_DESCRI: TcxGridDBBandedColumn;
    cxgrdDiretoDBBandedTableView1QTDE: TcxGridDBBandedColumn;
    cxgrdDiretolvlGrid1Level1: TcxGridLevel;
    cdsEdit: TFDQuery;
    cdsEditPRD_CODIGO: TStringField;
    cdsEditPRD_REFER: TStringField;
    cdsEditPRD_DESCRI: TStringField;
    btnOk: TSpeedButton;
    btnCancelar: TSpeedButton;
    cdsEditQUANTIDADE: TFMTBCDField;
    dsEdits: TDataSource;
    cxEditRepository1: TcxEditRepository;
    cxEditRepository1ButtonItem1: TcxEditRepositoryButtonItem;
    ActionList1: TActionList;
    Action1: TAction;
    actdelete: TAction;
    Label1: TLabel;
    EdClienteCodigo: TEdit;
    edCliente: TSgDbSearchCombo;
    qCli: TSQLQuery;
    cdsEditUnidadeConvertida: TFMTBCDField;
    cxgrdDiretoDBBandedTableView1PRD_FATOR_PROD: TcxGridDBBandedColumn;
    cxgrdDiretoDBBandedTableView1UnidadeConvertida: TcxGridDBBandedColumn;
    cdsEditPRD_UND: TStringField;
    cxgrdDiretoDBBandedTableView1PRD_UND: TcxGridDBBandedColumn;
    cdsEditPRD_FATOR_PROD: TFMTBCDField;
    procedure rgTipoClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure actdeleteExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure cxgrdDiretoDBBandedTableView1PRD_REFERPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure btnCancelarClick(Sender: TObject);
    procedure edClienteButtonClick(Sender: TObject);
    procedure edClienteSelect(Sender: TObject);
    procedure EdClienteCodigoExit(Sender: TObject);
    procedure cdsBuscaProduzirChange(Sender: TField);
    procedure btnOkClick(Sender: TObject);
    procedure cxgrdDiretoEnter(Sender: TObject);
    procedure cdsEditQUANTIDADEChange(Sender: TField);
  private
    { Private declarations }
  public
    procedure EstoqueMinimo ;
    procedure ProducaoDireta;
    procedure selecionarProduto;
  end;

var
  frmProdutoSemPedido: TfrmProdutoSemPedido;

implementation

{$R *.dfm}
uses InicioDB, Prd0006, RWFunc, PesquisaClientesForm, Uteis, uPedidoDAO, uProducaoDAO;

procedure TfrmProdutoSemPedido.actdeleteExecute(Sender: TObject);
begin
  inherited;
  cdsEdit.Delete
end;

procedure TfrmProdutoSemPedido.Action1Execute(Sender: TObject);
begin
  inherited;
  cdsEdit.Insert;
end;

procedure TfrmProdutoSemPedido.btnCancelarClick(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TfrmProdutoSemPedido.btnOkClick(Sender: TObject);
var opv : integer;
    numeropedido, fCodEmSeqUnica : string;
    item : integer;
begin
  inherited;

  try
   //prooduto direito
   if rgTipo.ItemIndex = 0 then
   begin
     if  (cdsEdit.State in dsEditModes) then
        cdsEdit.Post;
     if EdClienteCodigo.Text = EmptyStr then
       raise Exception.Create('Não preenchido o cliente');
      cdsEdit.DisableControls;
     cdsEdit.Filtered := False;
     cdsEdit.Filter := 'QUANTIDADE>0';
     cdsEdit.Filtered:= True;
     if cdsEdit.RecordCount =0 then
      begin
        cdsEdit.EnableControls;
        raise Exception.Create('Nenhum produto com quantidade foi adicionado');
      end;

   end;
  finally
    cdsEdit.EnableControls;
    cdsEdit.Filtered:= False;
  end;

  // por estoque minimo
  if rgTipo.ItemIndex = 1 then
  begin
    try
      if DBInicio.Empresa.PMT_CLIENTE_PRODUCAO = '' then
         raise Exception.Create('Cliente padrão em pedidos interno não preenchido no parametros de produção. ');

      if (cdsBusca.State in dsEditModes) then
        cdsBusca.Post;
      cdsBusca.DisableControls;
      cdsBusca.Filtered := False;
      cdsbusca.Filter := 'selecionado = true and Produzir>0';
      cdsBusca.Filtered:= True;
      if cdsBusca.RecordCount = 0  then
      begin
        cdsBusca.EnableControls;
        raise Exception.Create('Nenhum produto foi selecionado');
      end;
      cdsedit.close;
      cdsedit.Open;

      cdsBusca.first;
      while not cdsBusca.eof do
      begin
        cdsEdit.Insert;
        cdsEditPRD_CODIGO.AsString := cdsBuscaPRD_CODIGO.AsString ;
        cdsEditPRD_REFER.AsString := cdsBuscaPRD_REFER.AsString  ;
        cdsEditPRD_DESCRI.AsString := cdsBuscaPRD_DESCRI.AsString ;
        cdsEditQUANTIDADE.AsFloat := cdsBuscaProduzir.AsFloat ;
        cdsEdit.Post;
        cdsBusca.Next;


      end;
    finally
      cdsBusca.EnableControls  ;
      cdsbusca.Filtered:= false;
    end;



  end;

  // gravar o pedido
   opv := BuscaUmDadoSqlAsInteger('SELECT OPV_CODIGO FROM OPV0000 WHERE OPV_PRODUCAO = ''S'' AND OPV_PEDIDOINTERNO = ''S'' ');


   if dbInicio.empresa.fSeqUnicaPed then
      fCodEmSeqUnica := '001'
   Else
      fCodEmSeqUnica := dbInicio.Empresa.EMP_CODIGO;
   numeropedido := StrZero( SequenciadorPRC ( fCodEmSeqUnica,'PED0000', 'PED_CODIGO', 0, '' ) , 6 );


    // numeropedido := StrZero( SequenciadorPRC ( DBInicio.Empresa.EMP_CODIGO,'PED0000', 'PED_CODIGO', 0, '' ) , 6 );



   if rgTipo.ItemIndex = 0  then
     GravarPedidoResumido (numeropedido,IntToStr(opv), EdClienteCodigo.Text,now,now)
   else if rgTipo.ItemIndex = 1 then
     GravarPedidoResumido (numeropedido,IntToStr(opv), DBInicio.Empresa.PMT_CLIENTE_PRODUCAO,now,now) ;

   // gravar a demanda
   if not Assigned(ProducaoDao) then
    ProducaoDao := TProducaoDao.Create(self);
   try
     cdsEdit.First;
     cdsEdit.DisableControls;
     while not cdsEdit.eof do
     begin
       item:= GravarPedidoItemResumido(numeropedido,
                                       cdsEditPRD_CODIGO.AsString,
                                       cdsEditPRD_REFER.AsString,
                                       cdsEditPRD_DESCRI.AsString,
                                       cdsEditQuantidade.AsFloat,
                                       iif(cdsEditUnidadeConvertida.AsFloat>0,cdsEditUnidadeConvertida.AsFloat, cdsEditQUANTIDADE.AsFloat),
                                       StrToInt( DBInicio.Usuario.CODIGO)) ;
       ProducaoDao.EnviarDemanda( numeropedido,
                                  cdsEditPRD_CODIGO.AsString,
                                  'I', //situacao
                                  0,  // fti_registro (ficha tecnica)
                                  item,
                                  0, // iop_codigo (somente preenche quando vai a produção)
                                  now,
                                  0 );//estoque )
       cdsEdit.Next
     end;
   finally
     cdsEdit.EnableControls;
      FreeAndNil(ProducaoDao);
   end;

  close;
end;

procedure TfrmProdutoSemPedido.cdsBuscaProduzirChange(Sender: TField);
begin
  inherited;
  cdsBuscaSelecionado.AsBoolean := Sender.AsFloat > 0
end;

procedure TfrmProdutoSemPedido.cdsEditQUANTIDADEChange(Sender: TField);
begin
  inherited;
  if (cdsEditPRD_FATOR_PROD.AsFloat>0) and (cdsEditQUANTIDADE.AsFloat >0 ) then
    cdsEditUnidadeConvertida.AsFloat := cdsEditPRD_FATOR_PROD.AsFloat * cdsEditQUANTIDADE.AsFloat;

end;

procedure TfrmProdutoSemPedido.cxgrdDiretoDBBandedTableView1PRD_REFERPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  selecionarProduto;
end;

procedure TfrmProdutoSemPedido.cxgrdDiretoEnter(Sender: TObject);
begin
  inherited;
  if (cdsEdit.State<> dsInsert) and (cdsEdit.RecordCount = 0)  then
    cdsEdit.Insert;




end;

procedure TfrmProdutoSemPedido.edClienteButtonClick(Sender: TObject);
var tcr: tFrmPesquisaClientes;
begin
    tcr:= tFrmPesquisaClientes.Create(self);
    try
        tcr.ShowModal;
        if tcr.modalresult = mrok then
           edCliente.idRetorno := tcr.IDRetorno;


    finally
         FreeAndNil(tcr);
    end;
end;

procedure TfrmProdutoSemPedido.EdClienteCodigoExit(Sender: TObject);
begin
  inherited;
  edClienteCodigo.Text:=StrZero(EdClienteCodigo.Text,5);
  if edClienteCodigo.Text<>'00000' then
  begin
      edCliente.idRetorno:=edClienteCodigo.Text;
      if edCliente.idRetorno='' then
         GeraException('Cliente não localizado com o código informado');
  end
  Else
  begin
      edClienteCodigo.clear;
      edCliente.Clear;
  end;

end;

procedure TfrmProdutoSemPedido.edClienteSelect(Sender: TObject);
begin
  inherited;
  if edCliente.idRetorno<>'' then
  begin
    edClienteCodigo.Text:=edCliente.idRetorno;
 end
 Else
    edClienteCodigo.clear;
end;

procedure TfrmProdutoSemPedido.EstoqueMinimo;
begin
  cdsBusca.close;
  cdsBusca.open;
  cxgrd1.Visible := True ;
  cxgrdDireto.Visible := False;
  edCliente.Visible := False  ;
  EdClienteCodigo.Visible := false;
  Label1.Visible := false;
end;
procedure TfrmProdutoSemPedido.ProducaoDireta;
begin
  cdsEdit.Close;
  cdsEdit.Open;
  cdsEdit.Insert;
  cxgrd1.Visible := False ;
  cxgrdDireto.Visible := True;
  edCliente.Visible := true;
  EdClienteCodigo.Visible := true;
  Label1.Visible := true;
end;

procedure TfrmProdutoSemPedido.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TfrmProdutoSemPedido.FormCreate(Sender: TObject);
begin
  inherited;
  self.Constraints.MinHeight:= 566;
  self.Constraints.MinWidth:=960;
  self.Constraints.MaxHeight:= 0;
  self.width:=960;
  self.height:=566;
  rgTipo.ItemIndex :=0 ;
  ProducaoDireta;
  EdCliente.idretorno := DBInicio.Empresa.PMT_CLIENTE_PRODUCAO;

end;

procedure TfrmProdutoSemPedido.FormDestroy(Sender: TObject);
begin
  inherited;
  frmProdutoSemPedido := nil;

end;



procedure TfrmProdutoSemPedido.rgTipoClick(Sender: TObject);
begin
  inherited;
  if rgTipo.ItemIndex = 1 then
    EstoqueMinimo
  else if rgTipo.ItemIndex  = 0 then
    ProducaoDireta;

end;

procedure TfrmProdutoSemPedido.selecionarProduto;
begin
  FormProdutoGrid := TFormProdutoGrid.Create(Application);
  try
//    FormProdutoGrid.TAG := 4;
    FormProdutoGrid.ShowModal;
    if FormProdutoGrid.ModalResult = mrOk then
    begin
      if not (cdsEdit.State in dsEditModes) then
        cdsEdit.Edit;
        cdsEditPRD_REFER.AsString := FormProdutoGrid.ReferRetorno;
        cdsEditPRD_CODIGO.AsString := FormProdutoGrid.CodigoRetorno;
        cdsEditPRD_DESCRI.AsString := FormProdutoGrid.DescricaoRetorno;
        cdsEditPRD_UND.AsString := FormProdutoGrid.UnidadeRetorno ;
        cdsEditPRD_FATOR_PROD.AsFloat := BuscaUmDadoSqlAsFloat('SELECT PRD_FATOR_PROD FROM PRD0000 where prd_codigo = '+QuotedStr(cdsEditPRD_CODIGO.AsString))  ;
    end;
  finally
    FreeAndNil(FormProdutoGrid);
  end;

end;

end.
