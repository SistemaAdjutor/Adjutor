unit uOrcamentoItemPro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBFormFdac, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.UI.Intf, FireDAC.VCLUI.Wait, FireDAC.VCLUI.Error, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.FB, Vcl.ExtCtrls,
  Data.DB, FireDAC.Comp.Client, FireDAC.Comp.UI, FireDAC.Phys.IBBase, FireDAC.Comp.DataSet, cxClasses, cxLocalization, ACBrBase, ACBrEnterTab, Data.FMTBcd, Data.SqlExpr, Vcl.StdCtrls,
  SgDbSeachComboUnit, ueditOrcamentoPro,  Vcl.Buttons, BaseDBEditDetailFDAC, Vcl.Mask, Vcl.DBCtrls, JvValidators, JvErrorIndicator, JvComponentBase, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Phys.FBDef, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxDBEdit,
  System.StrUtils;

type
  TfrmitemOrcamento = class(TfrmBaseDBEditDetailFDAC)
    cbReferencia: TSgDbSearchCombo;
    Label1: TLabel;
    qProduto: TSQLQuery;
    qProdutoPRD_CODIGO: TStringField;
    qProdutoPRD_REFER: TStringField;
    qProdutoPRD_DESCRI: TStringField;
    qProdutoPRD_CODBARRA: TStringField;
    qProdutoPRD_PRODSERV: TStringField;
    qProdutoPRD_UND: TStringField;
    qProdutoLIN_DESCRI: TStringField;
    qProdutoPRD_PVENDA: TFMTBCDField;
    Label2: TLabel;
    cbServico: TSgDbSearchCombo;
    cbProcesso: TSgDbSearchCombo;
    Label3: TLabel;
    qProcessos: TSQLQuery;
    Label4: TLabel;
    edDescricao: TDBEdit;
    qServico: TSQLQuery;
    qProcessosPRO_CODIGO: TIntegerField;
    qProcessosPRO_DESCRICAO: TStringField;
    edtipo: TDBEdit;
    edPeso: TDBEdit;
    edsuperficial: TDBEdit;
    edMaterial: TDBEdit;
    edProfundidade: TDBEdit;
    ednucleo: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    DBEdit8: TDBEdit;
    Label12: TLabel;
    edTamanho: TDBEdit;
    Label13: TLabel;
    edEHT: TDBEdit;
    Label14: TLabel;
    edDesenho: TDBEdit;
    Label15: TLabel;
    Label16: TLabel;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    Label17: TLabel;
    edValorComercial: TDBEdit;
    Label18: TLabel;
    edQuantidade: TDBEdit;
    Label19: TLabel;
    edPesoTotal: TDBEdit;
    Label20: TLabel;
    edTotal: TDBEdit;
    Label21: TLabel;
    ValidarValorComercial: TJvCustomValidator;
    ValidarQuantidade: TJvCustomValidator;
    qServicoSRV_CODIGO: TIntegerField;
    qServicoSRV_NOME: TStringField;
    PesoRequerido: TJvCustomValidator;
    Label22: TLabel;
    cbUnidade: TcxDBComboBox;
    edRefer: TEdit;
    ValidarDescricao: TJvCustomValidator;
    ValidarMaterial: TJvCustomValidator;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure cbReferenciaButtonClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ValidarValorComercialValidate(Sender: TObject; ValueToValidate: Variant; var Valid: Boolean);
    procedure ValidarQuantidadeValidate(Sender: TObject; ValueToValidate: Variant; var Valid: Boolean);
    procedure edPesoExit(Sender: TObject);
    procedure edQuantidadeExit(Sender: TObject);
    procedure edValorComercialExit(Sender: TObject);
    procedure PesoRequeridoValidate(Sender: TObject; ValueToValidate: Variant; var Valid: Boolean);
    procedure cbReferenciaSelect(Sender: TObject);
    procedure ValidarDescricaoValidate(Sender: TObject; ValueToValidate: Variant; var Valid: Boolean);
    procedure ValidarMaterialValidate(Sender: TObject; ValueToValidate: Variant; var Valid: Boolean);
    procedure cbUnidadePropertiesChange(Sender: TObject);
    procedure cbProcessoButtonClick(Sender: TObject);
    procedure cbProcessoEnter(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
   procedure CalculaTotais;
  public
    { Public declarations }
  end;

var
  frmitemOrcamento: TfrmitemOrcamento;

implementation

uses  iniciodb, PRD0006, uPesqProcessos, uSimulacaoPrecoServico;
{$R *.dfm}

procedure TfrmitemOrcamento.btnConfirmarClick(Sender: TObject);
begin
  inherited;
  with FrmEditOrcamentoPRO do
  begin
    if cdsEditDetailOIP_CODIGO.IsNull then
      cdsEditDetailOIP_CODIGO.AsInteger := GetNextSequence('GEN_ORCIT_PROD');

      cdsEditDetailPRD_REFER.AsString  := cbReferencia.idRetorno;
      if cbReferencia.idRetorno <> '' then
      begin
        cdsEditDetailPRD_CODIGO.AsString := cbReferencia.CDS.FieldByName('PRD_CODIGO').AsString;
       cdsEditDetailPRD_DESCRI.AsString := cbReferencia.CDS.FieldByName('PRD_DESCRI').AsString;
      end
      else
      begin
       cdsEditDetailPRD_CODIGO.AsString := '';
       cdsEditDetailPRD_DESCRI.AsString := '';
      end;
      cdsEditDetailSRV_CODIGO.AsString := cbServico.idRetorno;
      if cbServico.idRetorno <> '' then
       cdsEditDetailSRV_NOME.AsString := cbServico.CDS.FieldByName('SRV_NOME').AsString
      else
        cdsEditDetailSRV_NOME.AsString := '';



    if cbProcesso.idRetorno <> '' then
    begin
      cdsEditDetailPRO_DESCRICAO.AsString := cbprocesso.CDS.FieldByName('PRO_DESCRICAO').AsString;
      cdsEditDetailPRO_CODIGO.AsInteger := StrToInt( cbProcesso.idRetorno );
    end
     else
     begin
      cdsEditDetailPRO_DESCRICAO.AsString := '' ;
      cdsEditDetailPRO_CODIGO.Clear;
     end;

    if cdsEditDetailORC_CODIGO.IsNull then
      cdsEditDetailORC_CODIGO.AsInteger := cdsEditORC_CODIGO.AsInteger;

  end;
end;

procedure TfrmitemOrcamento.Button1Click(Sender: TObject);
begin
  inherited;
  if FrmEditOrcamentoPRO.cdsEditDetailOIP_CODIGO.IsNull then
    FrmEditOrcamentoPRO.cdsEditDetailOIP_CODIGO.AsInteger := GetNextSequence('GEN_ORCIT_PROD')
  else
  begin
    FrmEditOrcamentoPRO.qsimulado.Filtered := False;
    FrmEditOrcamentoPRO.qsimulado.Filter :=  'oip_codigo = '+ IntToStr(FrmEditOrcamentoPRO.cdsEditDetailOIP_CODIGO.AsInteger);
    FrmEditOrcamentoPRO.qsimulado.Filtered := true;
  end;
  if not assigned(frmSimularPrecoServicos) then
  begin
    frmSimularPrecoServicos := TfrmSimularPrecoServicos.Create(Application);
    frmSimularPrecoServicos.qsimulado.Data :=   FrmEditOrcamentoPRO.qsimulado.Data;

  end;
 FrmEditOrcamentoPRO.qsimulado.Filtered := False;
 frmSimularPrecoServicos.ShowModal;
end;

procedure TfrmitemOrcamento.CalculaTotais;
begin
  with FrmEditOrcamentoPRO do
  begin
    if (cdsEditDetailoip_qde.asfloat > 0 ) then
    cdsEditDetailOIP_PESOTOTAL.AsFloat :=  cdsEditDetailoip_qde.asfloat *  cdsEditDetailOIP_PESO.AsFloat; ;

    if MatchStr(cdsEditDetailOIP_UND.AsString , ['PC','UN']) then
      cdsEditDetailOIP_QDE.DisplayFormat := '###,###,##0'
    else
    begin
      FrmEditOrcamentoPRO.cdsEditDetailOIP_QDE.DisplayFormat := '###,###,##0.0000'
    end;
    if cbUnidade.EditValue = 'KG' then
    begin
      if ( cdsEditDetailOIP_PRECO.AsFloat > 0) and (cdsEditDetailoip_qde.asfloat >0 ) and  (cdsEditDetailOIP_PESO.AsFloat>0) then
       cdsEditDetailOIP_TOTAL.AsFloat:=  cdsEditDetailOIP_PRECO.AsFloat * cdsEditDetailoip_qde.asfloat *  cdsEditDetailOIP_PESO.AsFloat;
    end
    else
    begin
      if ( cdsEditDetailOIP_PRECO.AsFloat > 0) and (cdsEditDetailoip_qde.asfloat >0 ) then
       cdsEditDetailOIP_TOTAL.AsFloat:=  cdsEditDetailOIP_PRECO.AsFloat * cdsEditDetailoip_qde.asfloat ;

    end;

  end;

end;

procedure TfrmitemOrcamento.cbProcessoButtonClick(Sender: TObject);
begin
  inherited;
   if not assigned(frmPesqProcessos) then
   frmPesqProcessos := TfrmPesqProcessos.Create(Application);
 try
  frmPesqProcessos.btnSelect.Visible := True;
  frmPesqProcessos.pnlUtilTop.Visible := False;
  frmPesqProcessos.cxgrd1DBTableView1.OptionsView.GroupByBox := False;
  frmPesqProcessos.cxgrd1Level1.Visible := False;

  if cbServico.idRetorno <> '' then
    frmPesqProcessos.Servico := StrToInt(cbServico.idRetorno)
  else
    frmPesqProcessos.Servico := 0 ;

  frmPesqProcessos.ShowModal;
   if frmPesqProcessos.ModalResult=mrOk then
   begin
      cbProcesso.idRetorno := frmPesqProcessos.IDRetorno;

   end;
 finally
    FreeAndNil( frmPesqProcessos );
 end;
end;

procedure TfrmitemOrcamento.cbProcessoEnter(Sender: TObject);
begin
  inherited;
  if cbServico.idRetorno <> '' then
    cbProcesso.WherePersonalizado := ' WHERE SRV_CODIGO = ' +QuotedStr( cbServico.idRetorno)   ;
end;

procedure TfrmitemOrcamento.cbReferenciaButtonClick(Sender: TObject);
begin
  inherited;
   FormProdutoGrid := TFormProdutoGrid.Create(Application);
   try
      FormProdutoGrid.DisponivelVendas := True;
      FormProdutoGrid.ShowModal;
      if FormProdutoGrid.ModalResult=mrOk then
      begin
         cbReferencia.IdRetorno := FormProdutoGrid.ReferRetorno ;
         FrmEditOrcamentoPRO.cdsEditDetailPRD_CODIGO.AsString :=  FormProdutoGrid.CodigoRetorno;
      end;
   finally
      FreeAndNil( FormProdutoGrid );
   end;
end;

procedure TfrmitemOrcamento.cbReferenciaSelect(Sender: TObject);
begin
  inherited;
  edRefer.Text := cbReferencia.idRetorno;
end;

procedure TfrmitemOrcamento.cbUnidadePropertiesChange(Sender: TObject);
begin
  inherited;
  CalculaTotais;
end;

procedure TfrmitemOrcamento.edPesoExit(Sender: TObject);
begin
  inherited;
  CalculaTotais;
end;

procedure TfrmitemOrcamento.edQuantidadeExit(Sender: TObject);
begin
  inherited;
  CalculaTotais;

end;

procedure TfrmitemOrcamento.edValorComercialExit(Sender: TObject);
begin
  inherited;
  CalculaTotais;
end;

procedure TfrmitemOrcamento.FormCreate(Sender: TObject);
begin
  inherited;
  qproduto.SQLConnection :=  dbInicio.MainDB;
  qServico.SQLConnection := dbInicio.MainDB;
  qProcessos.SQLConnection := dbInicio.MainDB;
end;

procedure TfrmitemOrcamento.FormShow(Sender: TObject);
begin
  inherited;
  edRefer.MaxLength := 20;
  edDescricao.MaxLength := 100;
  edtipo.MaxLength :=30;
  edMaterial.MaxLength :=15;
  edProfundidade.MaxLength := 35;
  edsuperficial.MaxLength := 20;
  ednucleo.MaxLength := 20;
  edTamanho.MaxLength := 20;
  edEHT.MaxLength := 10;
  edDesenho.MaxLength := 20;

  if self.EstadoTela in [tedConsulta, tedEdicao] then
  begin
    with FrmEditOrcamentoPRO do
    begin
      if cdsEditDetailPRD_REFER.AsString <> '' then
        cbReferencia.idRetorno :=  cdsEditDetailPRD_REFER.AsString;
      if not cdsEditDetailSRV_CODIGO.IsNull then
        cbServico.idRetorno := cdsEditDetailSRV_CODIGO.AsString;
      if not cdsEditDetailPRO_CODIGO.IsNull then
        cbProcesso.idRetorno := IntToStr( cdsEditDetailPRO_CODIGO.AsInteger );
      if MatchStr(cdsEditDetailOIP_UND.AsString , ['PC','UN']) then
        cdsEditDetailOIP_QDE.DisplayFormat := '###,###,##0'
      else
      begin
        FrmEditOrcamentoPRO.cdsEditDetailOIP_QDE.DisplayFormat := '###,###,##0.0000'
      end;

    end;
  end
  else if self.EstadoTela = tedNovo then
  begin
    FrmEditOrcamentoPRO.cdsEditDetailOIP_SEQ.AsInteger :=  FrmEditOrcamentoPRO.cdsEditDetail.RecordCount + 1;
    FrmEditOrcamentoPRO.cdsEditDetailOIP_UND.AsString := 'PC';
    FrmEditOrcamentoPRO.cdsEditDetailOIP_QDE.DisplayFormat := '###,###,##0';
  end;
end;

procedure TfrmitemOrcamento.PesoRequeridoValidate(Sender: TObject; ValueToValidate: Variant; var Valid: Boolean);
begin
  inherited;
  Valid := FrmEditOrcamentoPRO.cdsEditDetailOIP_PESO.AsFloat > 0
end;

procedure TfrmitemOrcamento.ValidarDescricaoValidate(Sender: TObject; ValueToValidate: Variant; var Valid: Boolean);
begin
  inherited;
  valid:= Length(edDescricao.Text)>0 ;
end;

procedure TfrmitemOrcamento.ValidarMaterialValidate(Sender: TObject; ValueToValidate: Variant; var Valid: Boolean);
begin
  inherited;
  valid:= Length(edMaterial.Text)>0
end;

procedure TfrmitemOrcamento.ValidarQuantidadeValidate(Sender: TObject; ValueToValidate: Variant; var Valid: Boolean);
begin
  inherited;
  Valid := FrmEditOrcamentoPRO.cdsEditDetailoip_qde.asfloat  >0 ;
end;

procedure TfrmitemOrcamento.ValidarValorComercialValidate(Sender: TObject; ValueToValidate: Variant; var Valid: Boolean);
begin
  inherited;
  Valid :=   FrmEditOrcamentoPRO.cdsEditDetailOIP_PRECO.AsFloat  >0 ;
end;

end.
