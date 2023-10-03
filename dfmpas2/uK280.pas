unit uK280;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBEditFormFDAC, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Phys.FBDef, FireDAC.UI.Intf, FireDAC.VCLUI.Wait, FireDAC.VCLUI.Error, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.FB, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, ACBrEFDImportar, JvErrorIndicator, JvValidators, JvComponentBase, FireDAC.Comp.Client, FireDAC.Comp.UI, FireDAC.Phys.IBBase,
  FireDAC.Comp.DataSet, cxLocalization, ACBrBase, ACBrEnterTab, Vcl.Buttons, Vcl.ExtCtrls, cxGridBandedTableView, cxGridDBBandedTableView, cxEditRepositoryItems, cxButtonEdit, Vcl.StdCtrls,
  System.Actions, Vcl.ActnList, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinTheBezier, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxDataControllerConditionalFormattingRulesManagerDialog;

type
  TfrmK280 = class(TfrmBaseDBEditFDAC)
    cxgrdlvlGrid1Level1: TcxGridLevel;
    cxgrd1: TcxGrid;
    cxgrd1DBBandedTableView1: TcxGridDBBandedTableView;
    cxEditRepository1: TcxEditRepository;
    cxEditRepository1ButtonItem1: TcxEditRepositoryButtonItem;
    cdsEditKSP_CODIGO: TIntegerField;
    cdsEditEMP_CODIGO: TStringField;
    cdsEditANO: TIntegerField;
    cdsEditMES: TIntegerField;
    cdsEditREF_ANO: TIntegerField;
    cdsEditREF_MES: TIntegerField;
    cdsEditQTDE_DECLA: TFMTBCDField;
    cdsEditQTDE_DIF: TFMTBCDField;
    cdsEditPRD_CODIGO: TStringField;
    cdsEditPRD_REFER: TStringField;
    cdsEditPRD_DESCRI: TStringField;
    cxgrd1DBBandedTableView1REF_ANO: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1REF_MES: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1QTDE_DIF: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1PRD_CODIGO: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1PRD_REFER: TcxGridDBBandedColumn;
    cxgrd1DBBandedTableView1PRD_DESCRI: TcxGridDBBandedColumn;
    Label1: TLabel;
    cxgrd1DBBandedTableView1Column1: TcxGridDBBandedColumn;
    ActionList1: TActionList;
    Action1: TAction;
    actdelete: TAction;
    procedure cxgrd1DBBandedTableView1CellClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cdsEditNewRecord(DataSet: TDataSet);
    procedure DataValidate(Sender: TField);
    procedure cxgrd1DBBandedTableView1PRD_CODIGOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure SelecionarProduto;
    procedure cxgrd1DBBandedTableView1PRD_REFERPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cdsEditPRD_REFERValidate(Sender: TField);
    procedure cdsEditREF_MESValidate(Sender: TField);
    procedure cdsEditAfterPost(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actdeleteExecute(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure cdsEditBeforePost(DataSet: TDataSet);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
  private
   FEMP_CODIGO : string;
   FANO : Integer;
   FMES : Integer;
   ano_ref , mes_Ref : Integer;
    analisando : boolean;
  public
    property EMP_CODIGO: string read FEMP_CODIGO write FEMP_CODIGO;
    property Ano : Integer read fano write FANO;
    property mes : Integer read FMES write FMES;

  end;

var
  frmK280: TfrmK280;

implementation

uses InicioDB, Prd0006, RWFunc;
{$R *.dfm}

procedure TfrmK280.actdeleteExecute(Sender: TObject);
begin
  inherited;
  cdsEdit.Delete;
end;

procedure TfrmK280.Action1Execute(Sender: TObject);
begin
  inherited;
  cdsEdit.Insert;
end;

procedure TfrmK280.btnCancelarClick(Sender: TObject);
begin
  if (MessageDlg('Deseja Excluir as alterações ?', mtConfirmation, [mbYes, mbNo], 0) in [mrNo, mrNone] ) then
    exit;

  inherited;

end;

procedure TfrmK280.btnOkClick(Sender: TObject);
begin
  cdsEdit.Next;
  if cdsEdit.State in dsEditModes then
    cdsedit.Post;

  inherited;

end;

procedure TfrmK280.cdsEditAfterPost(DataSet: TDataSet);
var

  prd_codigo, PRD_DESCRI, PRD_REFER : string;
  dif : double;
  i : integer;
  ano_ref, mes_ref : integer;

begin
  if analisando then
    exit;
  // inherited;
  if (mes > Dataset.FieldByName('ref_mes').AsInteger + 1 ) and (ano = Dataset.FieldByName('ref_ano').AsInteger) then
  begin
    if (MessageDlg('Deseja lançar meses posteriores até o  mês de referência do apontamento ? ',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
    begin
       analisando := True;
       cdsEdit.DisableControls;
       try
          //    Dataset.FetchAll;

         prd_codigo := Dataset.FieldByName('PRD_CODIGO').AsString;
         PRD_REFER := Dataset.FieldByName('PRD_REFER').AsString;
         PRD_DESCRI := Dataset.FieldByName('PRD_DESCRI').AsString;
         ano_ref := Dataset.FieldByName('ref_ano').asInteger;
         mes_ref := Dataset.FieldByName('ref_mes').AsInteger;
         dif := cdsEditQTDE_DIF.AsFloat;
         for I := mes_ref+1 to mes-1 do
         begin
            if cdsEdit.Locate('prd_codigo;ref_ano;ref_mes',VarArrayOf([prd_codigo,ano_ref,i]),[]) then
            begin
              cdsEdit.Edit;
              cdsEdit.FieldByName('QTDE_DIF').AsFloat := dif;
              cdsEdit.post;

            end
            else
            begin
              cdsedit.Insert;
              cdsedit.FieldByName('QTDE_DIF').AsFloat := dif;
              cdsedit.FieldByName('prd_codigo').AsString := prd_codigo;
              cdsedit.FieldByName('PRD_DESCRI').AsString  := PRD_DESCRI;
              cdsedit.FieldByName('PRD_REFER').AsString  :=  PRD_REFER;
              cdsedit.FieldByName('ref_mes').AsInteger := i;
              cdsedit.Post;
            end;


         end;
       finally

         cdsEdit.EnableControls;
       end;
       analisando := False;
    end;

  end;
end;

procedure TfrmK280.cdsEditBeforePost(DataSet: TDataSet);
begin
  inherited;
  if cdsEditREF_ANO.IsNull then
    raise Exception.Create('Ano de referência não preenchido.');
  if cdsEditREF_MES.IsNull then
    raise Exception.Create('Mês de referência não preenchido.');
  if cdsEditPRD_CODIGO.IsNull then
    raise Exception.Create('Produto não preenchido.');
  if cdsEditQTDE_DIF.IsNull then
    raise Exception.Create('Diferência de estoque, pode ser negativo.');
  ano_ref :=  cdsEdit.FieldByName('ref_ano').AsInteger;
  mes_Ref :=  cdsEdit.FieldByName('ref_mes').AsInteger;
end;

procedure TfrmK280.cdsEditNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsEditKSP_CODIGO.AsInteger := GetNextSequence('GEN_SPED_K280');
  cdsEditEMP_CODIGO.AsString := EMP_CODIGO;
  cdsEditANO.AsInteger := ano;
  cdsEditMES.AsInteger := mes;
  cdsEditREF_ANO.AsInteger := ano_ref;
  cdsEditREF_MES.AsInteger := mes_Ref;
end;

procedure TfrmK280.cdsEditPRD_REFERValidate(Sender: TField);
var codigo :string;
begin
  inherited;
  codigo := BuscaUmDadoSqlAsString(SQLDEF('PRODUTOS', 'SELECT PRD_CODIGO FROM PRD0000 ',' WHERE PRD_REFER = '+QuotedStr(Sender.AsString),'',''));
  if Codigo = '' then
    raise Exception.Create('Produto inexistente');

  if codigo <> '' then
  begin
    cdsEditPRD_CODIGO.AsString := codigo;
    cdsEditPRD_DESCRI.AsString :=  BuscaUmDadoSqlAsString(SQLDEF('PRODUTOS', 'SELECT PRD_DESCRI FROM PRD0000 ',' WHERE PRD_REFER = '+QuotedStr(Sender.AsString),'',''));
  end;
end;

procedure TfrmK280.cdsEditREF_MESValidate(Sender: TField);
begin
  inherited;
  if ( Sender.AsInteger < 1) AND (Sender.AsInteger > 12 ) then
    raise Exception.Create('Mês inválido');

end;

procedure TfrmK280.cxgrd1DBBandedTableView1CellClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState;
  var AHandled: Boolean);
begin
  inherited;
 if ACellViewInfo.Item.Index = 6 then
  begin
    FormProdutoGrid := TFormProdutoGrid.Create(Application);
    try
      FormProdutoGrid.TAG := 4;
      FormProdutoGrid.ShowModal;
      if FormProdutoGrid.ModalResult = mrOk then
      begin

          cdsEditPRD_REFER.AsString := FormProdutoGrid.ReferRetorno;
          cdsEditPRD_CODIGO.AsString := FormProdutoGrid.CodigoRetorno;
          cdsEditPRD_DESCRI.AsString := FormProdutoGrid.DescricaoRetorno;

      end;
    finally
      FreeAndNil(FormProdutoGrid);
    end;



  end;
end;

procedure TfrmK280.cxgrd1DBBandedTableView1PRD_CODIGOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  SelecionarProduto;
end;

procedure TfrmK280.cxgrd1DBBandedTableView1PRD_REFERPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  SelecionarProduto;
end;

procedure TfrmK280.DataValidate(Sender: TField);
begin
  inherited;
  if not (cdsEditREF_ANO.IsNull or  cdsEditREF_MES.IsNull) then
  begin
    if( cdsEditREF_ANO.AsInteger = cdsEditANO.AsInteger) and (cdsEditMES.AsInteger  = cdsEditREF_MES.AsInteger)  then
      raise Exception.Create('O mês de referência deve ser anterior ');


  end;

end;

procedure TfrmK280.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TfrmK280.FormCreate(Sender: TObject);
begin
  inherited;
  EMP_CODIGO := DBInicio.Emp_Codigo;
  self.Constraints.MinHeight:= 612;
  self.Constraints.MinWidth:=790;
  self.Constraints.MaxHeight:= 0;
  self.width:=719;
  self.height:=612;
  TemDetalhe := False;
	CampoID:='KSP_CODIGO';
	Tabela:='SPED_K280';
  CampoIDRetorno := 'ksp_codigo';
  analisando := False;
end;

procedure TfrmK280.FormDestroy(Sender: TObject);
begin
  inherited;
  frmK280 := nil;
end;

procedure TfrmK280.FormShow(Sender: TObject);
begin
  inherited;
  ConfigBotoes(1);
  EstadoTela := teNovo;

  frmK280.caption := 'Bloco K280';

  ReadOnly := false;
  cdsEdit.Connection := dbConn;
  CdsEdit.Close;

  cdsEdit.ParamByName('ano').AsInteger := Ano;
  cdsEdit.ParamByName('mes').AsInteger := mes;
  cdsEdit.ParamByName('emp_codigo').AsString := EMP_CODIGO;

  CdsEdit.Open;
  ano_ref :=  cdsEdit.FieldByName('ref_ano').AsInteger ;
  mes_Ref :=  cdsEdit.FieldByName('ref_mes').AsInteger ;

  CdsEdit.Insert;

end;

procedure TfrmK280.SelecionarProduto;
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
    end;
  finally
    FreeAndNil(FormProdutoGrid);
  end;

end;

end.
