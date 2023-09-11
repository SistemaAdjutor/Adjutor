unit uSelProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBFormFdac, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Phys.FBDef, FireDAC.UI.Intf, FireDAC.VCLUI.Wait, FireDAC.VCLUI.Error, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.FB,
  SgDbSeachComboUnit, Vcl.StdCtrls, FireDAC.Comp.Client, Data.DB, FireDAC.Comp.UI, FireDAC.Phys.IBBase, FireDAC.Comp.DataSet, cxClasses, cxLocalization, ACBrBase, ACBrEnterTab, Data.FMTBcd,
  Data.SqlExpr, DataCad, JvExStdCtrls, JvEdit, JvValidateEdit;

type
  TfrmSelecaoProduto = class(TfrmBaseDBFDAC)
    Label1: TLabel;
    edProdutoCodigo: TEdit;
    cbReferencia: TSgDbSearchCombo;
    btnok: TButton;
    btnCancelar: TButton;
    qProduto: TSQLQuery;
    qProdutoPRD_CODIGO: TStringField;
    qProdutoPRD_REFER: TStringField;
    qProdutoPRD_DESCRI: TStringField;
    qProdutoPRD_CODBARRA: TStringField;
    qProdutoPRD_PRODSERV: TStringField;
    qProdutoPRD_UND: TStringField;
    qProdutoLIN_DESCRI: TStringField;
    qProdutoPRD_PVENDA: TFMTBCDField;
    edConsumoTotal: TJvValidateEdit;
    lbTotal: TLabel;
    lmaximo: TLabel;
    LblLote: TLabel;
    CbLoteProduto: TSgDbSearchCombo;
    qLoteProduto: TSQLQuery;
    qLoteProdutoPRDL_REGISTRO: TIntegerField;
    qLoteProdutoPRDL_LOTE: TStringField;
    qLoteProdutoPRDL_DATA_FABRICACAO: TDateField;
    qLoteProdutoPRDL_DATA_VALIDADE: TDateField;
    qLoteProdutoPRDL_SALDO: TFMTBCDField;
    SQLQuery1: TSQLQuery;
    qLoteProdutoPRD_CODIGO: TStringField;
    lEstoque: TLabel;
    edConsumoUnitario: TJvValidateEdit;
    lbUnitario: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btnokClick(Sender: TObject);
    procedure cbReferenciaButtonClick(Sender: TObject);
    procedure edProdutoCodigoExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure CbLoteProdutoSelect(Sender: TObject);
    procedure cbReferenciaSelect(Sender: TObject);
  private
    FCod_prod : string;
    fcod_refer :string;
    FCod_prod_original : string;
    FConsumoTotal : double;
    FConsumoUnitario : double;
    FEnvase : boolean;
    FSaldo: double;
    FformName: string;
  public
    property ConsumoUnitario : double read FConsumoUnitario write FConsumoUnitario;
    property ConsumoTotal : double read FConsumoTotal write FConsumoTotal;
    property Cod_Prod : string read fcod_prod write fcod_prod;
    property Cod_refer : string read fcod_refer write fcod_refer;
    property Cod_Prod_original : string read FCod_prod_original write FCod_prod_original;
    property Envase : boolean read FEnvase write Fenvase;
    property Saldo: double read FSaldo write FSaldo;
    property formName : string read FformName write FformName;


  end;

var
  frmSelecaoProduto: TfrmSelecaoProduto;

implementation

{$R *.dfm}

uses Prd0006, Uteis, InicioDB;

procedure TfrmSelecaoProduto.btnokClick(Sender: TObject);
begin

  if cbReferencia.idRetorno = '' then
  begin
    edProdutoCodigo.SetFocus;
    GeraException('Referência do produto não preenchida');

  end;
  if (Cod_Prod_original = Cod_Prod) and not Envase then
  begin
    edProdutoCodigo.SetFocus;
    GeraException('Mesmo produto');
  end;

  if edConsumoTotal.Value = 0  then
  begin
    if not envase then
      GeraException('Quantidade total transferida deve ser maior que zero')
    else
      GeraException('Quantidade total deve ser maior que zero');
    edConsumoTotal.SetFocus;
  end;
  if edConsumoUnitario.Value = 0  then
  begin
    if not envase then
    begin
      GeraException('Quantidade Unitária transferida deve ser maior que zero');
      edConsumoUnitario.SetFocus;
    end
    else
    if formName <> 'ENVASE' then
    begin
      GeraException('Quantidade Unitária deve ser maior que zero');
      edConsumoUnitario.SetFocus;
    end;
  end;

  ConsumoTotal := edConsumoTotal.AsFloat;
  ConsumoUnitario := edConsumoUnitario.AsFloat;

{
  if ConsumoTotal > Saldo then
  begin
    if (MessageDlg('Saldo do Produto ' + cbReferencia.idRetorno + ' insuficiente para esta produção.' + #13 +
                   ' Deseja continuar?',
       mtWarning, [mbYes, mbNo], 0) in [mrNone, mrNo]) then
       begin
        cbReferencia.SetFocus;
        exit;
       end;

  end;
}
  IDRetorno := cbReferencia.idRetorno;
  CampoIDRetorno := cbReferencia.cds.FieldByName('PRD_CODIGO').AsString;
  ModalResult := mrOk;
  inherited;
end;

procedure TfrmSelecaoProduto.CbLoteProdutoSelect(Sender: TObject);
begin
  inherited;
//  if (CbLoteProduto.idRetorno<> '') and (edConsumoTotal.Value = 0) then
//  begin
    edConsumoTotal.Value :=  CbLoteProduto.CDS.FieldByName('prdl_saldo').AsFloat;
    edConsumoUnitario.Value :=  CbLoteProduto.CDS.FieldByName('prdl_saldo').AsFloat;
//  end
//  else
//  begin
//    edConsumoUnitario.Value := edConsumoTotal.Value;
//  end;
end;

procedure TfrmSelecaoProduto.cbReferenciaButtonClick(Sender: TObject);
begin
  inherited;
   FormProdutoGrid := TFormProdutoGrid.Create(self);
   try
      FormProdutoGrid.ShowModal;
      if FormProdutoGrid.ModalResult=mrOk then
      begin
         Cod_Prod := FormProdutoGrid.CodigoRetorno;
         Cod_refer := FormProdutoGrid.ReferRetorno;
         cbReferencia.idRetorno := FormProdutoGrid.ReferRetorno ;
         edProdutoCodigo.Text :=  FormProdutoGrid.ReferRetorno ;
      end;
   finally
       FreeAndNil( FormProdutoGrid );
   end;
end;

procedure TfrmSelecaoProduto.cbReferenciaSelect(Sender: TObject);
var
  emp, prd: string;
begin
  inherited;

  emp := QuotedStr(dbInicio.Empresa.EMP_CODIGO);
  prd := QuotedStr(cbReferencia.idRetorno);

  qAux.Close;
  qAux.Sql.Clear;
  qAux.Sql.Text := 'SELECT SUM(kas_saldo)AS Saldo ' +
                   ' 	FROM PRD0000 pr ' +
                   ' JOIN kardex_almox_saldo k ON (k.PRD_CODIGO = pr.PRD_CODIGO) ' +
                   ' WHERE pr.PRD_REFER = ' + prd + ' AND pr.EMP_CODIGO = ' + emp;
  qAux.Open;
  Saldo := qAux.FieldByName('Saldo').AsFloat;
  lEstoque.Caption := 'Estoque: ' + FormatFloat('#,###,##0.0000', Saldo);

end;

procedure TfrmSelecaoProduto.edProdutoCodigoExit(Sender: TObject);
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
end;

procedure TfrmSelecaoProduto.FormCreate(Sender: TObject);
begin
  inherited;
  self.Constraints.MinHeight := 200;
  self.Constraints.MinWidth := 430;
  self.Constraints.MaxHeight:= 0;
  self.width := 430;
  self.height := 200;
  Envase := False;
end;

procedure TfrmSelecaoProduto.FormKeyPress(Sender: TObject; var Key: Char);
begin
  //inherited;
  if (key = #13) and (btnok.Focused) then
    btnok.Click
end;

procedure TfrmSelecaoProduto.FormShow(Sender: TObject);
begin
  inherited;
  ACBrEnterTab1.EnterAsTab := True;
  edConsumoTotal.DecimalPlaces := dbInicio.Empresa.fPMT_QTDE_DEC_PED;
  edConsumoUnitario.DecimalPlaces := dbInicio.Empresa.fPMT_QTDE_DEC_PED;
  if not Envase then
  begin
    edConsumoTotal.MaxValue := ConsumoTotal; // consumo total será o consumo total do item que será substituir retirando os que já foram consumidos na produção
    edConsumoUnitario.MaxValue := ConsumoTotal;
    lmaximo.Caption := 'C. Máximo :' +FloatToStr(ConsumoTotal);
    lmaximo.Visible := True;
  end
  else
  begin
    lmaximo.Visible := False;

  end;
  CbLoteProduto.WherePersonalizado :=
  ' WHERE  EXISTS (SELECT * FROM PRD0000 WHERE PRD0000.prd_codigo = PRD_LOTE.prd_codigo '+
  ' and PRD0000.prd_envase = ''S''  AND PRDL_SALDO > 0 )  ' ;
end;

end.
