unit UContaCorrenteCredito;

interface

uses
  PesquisaClientesForm,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBEditForm, Data.DBXFirebird, Data.FMTBcd, Data.DB, Datasnap.DBClient, Datasnap.Provider, Data.SqlExpr, ACBrEnterTab, ACBrBase, ACBrCalculadora,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxGroupBox, cxRadioGroup, cxDBEdit, RxToolEdit,
  RxCurrEdit, SgDbSeachComboUnit, SgDbLookupComboUnit, cxTextEdit, cxCurrencyEdit, JvExMask, JvToolEdit, JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit, JvDBDatePickerEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar;

type
  TfmContaCorrenteCredito = class(TfrmBaseDBEdit)
    edID: TDBEdit;
    lbl1: TLabel;
    edDescricao: TDBEdit;
    lbl2: TLabel;
    cxDBRadioGroup1: TcxDBRadioGroup;
    cxDBRadioGroup2: TcxDBRadioGroup;
    cxDBRadioGroup3: TcxDBRadioGroup;
    edDocumento: TDBEdit;
    Label1: TLabel;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label7: TLabel;
    edFornecedor: TDBEdit;
    CbForne: TsgDBLookupCombo;
    edCliente: TDBEdit;
    Label22: TLabel;
    Label23: TLabel;
    edVendedor: TDBEdit;
    CbVendedor: TsgDBLookupCombo;
    qEditTIPO: TStringField;
    qEditCONTA: TStringField;
    qEditDOCUMENTO: TStringField;
    qEditDESCRICAO: TStringField;
    qEditLANCADO: TStringField;
    qEditUSU_CODIGO: TIntegerField;
    qEditCOD_VENDEDOR: TStringField;
    qEditCOD_CLIENTE: TStringField;
    qEditCOD_FORNECEDOR: TStringField;
    qEditCANCELAMENTO: TStringField;
    qEditMOTIVO_CANCELAMENTO: TStringField;
    qEditUSUARIO_CANCELAMENTO: TIntegerField;
    CdsEditTIPO: TStringField;
    CdsEditCONTA: TStringField;
    CdsEditDOCUMENTO: TStringField;
    CdsEditDESCRICAO: TStringField;
    CdsEditLANCADO: TStringField;
    CdsEditUSU_CODIGO: TIntegerField;
    CdsEditCOD_VENDEDOR: TStringField;
    CdsEditCOD_CLIENTE: TStringField;
    CdsEditCOD_FORNECEDOR: TStringField;
    CdsEditCANCELAMENTO: TStringField;
    CdsEditMOTIVO_CANCELAMENTO: TStringField;
    CdsEditUSUARIO_CANCELAMENTO: TIntegerField;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    qEditCODIGO: TStringField;
    CdsEditCODIGO: TStringField;
    qCli0000: TSQLQuery;
    Rep0000: TSQLQuery;
    qFor0000: TSQLQuery;
    qEditCOD_PRODUTO: TStringField;
    qEditDATA: TSQLTimeStampField;
    CdsEditCOD_PRODUTO: TStringField;
    CdsEditDATA: TSQLTimeStampField;
    qEditVALOR: TFMTBCDField;
    qEditVALOR_UTILIZADO: TFMTBCDField;
    CdsEditVALOR: TFMTBCDField;
    CdsEditVALOR_UTILIZADO: TFMTBCDField;
    Label4: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    Label5: TLabel;
    edSaldo: TcxDBCurrencyEdit;
    CdsEditSALDO: TFMTBCDField;
    cbCliente: TSgDbSearchCombo;
    procedure FormCreate(Sender: TObject);
    procedure CdsEditNewRecord(DataSet: TDataSet);
    procedure CdsEditBeforePost(DataSet: TDataSet);
    procedure CbVendedorMenuEditaClick(Sender: TObject);
    procedure CbVendedorMenuNovoClick(Sender: TObject);
    procedure CbForneMenuEditaClick(Sender: TObject);
    procedure CbForneMenuNovoClick(Sender: TObject);
    procedure VerificaTipo;
    procedure cxDBRadioGroup1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure CdsEditCalcFields(DataSet: TDataSet);
    procedure cbClienteButtonClick(Sender: TObject);
    procedure cbClienteSelect(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmContaCorrenteCredito: TfmContaCorrenteCredito;

implementation

{$R *.dfm}

uses Rep0001, Cli0001, For0001, InicioDB, UPesqContaCorrenteCredito, Rec0001, DataMov;

procedure TfmContaCorrenteCredito.btnOKClick(Sender: TObject);
begin
  inherited;
  if Assigned(fmPesqContaCorrenteCredito) then
    fmPesqContaCorrenteCredito.btnPesquisa.Click;
  if cxDBRadioGroup2.ItemIndex = 0 then
  begin
    if MessageDlg('Deseja lançar no Contas a Receber?', mtConfirmation, [mbYes, mbNo], 0) <> mrYes then
      Exit;
    if FormContasReceber = nil then
      FormContasReceber := TFormContasReceber.Create(Application);
    FormContasReceber.BotoesAcesso;
    FormContasReceber.Bit_novo.Click;
    DataMovimento.CdsReceberCLI_CODIGO.AsString := edCliente.Text;
    DataMovimento.CdsReceberFAT_VLFAT.AsCurrency  := edSaldo.Value;
    DataMovimento.CdsReceberFAT_VL_LIQ.Ascurrency := edSaldo.Value;
    DataMovimento.CdsReceberFAT_OBS.AsString := edDocumento.Text + ' - ' + edDescricao.Text;
    FormContasReceber.DBeRep_codigo.SetFocus;
    FormContasReceber.Show;
  end;
end;

procedure TfmContaCorrenteCredito.cbClienteSelect(Sender: TObject);
begin
  inherited;
  edCliente.Text := cbCliente.idRetorno;
end;

procedure TfmContaCorrenteCredito.CbForneMenuEditaClick(Sender: TObject);
begin
  inherited;
//     if not assigned(FormFornec) then
//      begin
//      FormFornec := TFormFornec.Create(Application);
//      FormFornec.BotoesAcesso;
//      //try
//      if (MDIChildCount > 1) then
//             SendMessage(ClientHandle, WM_MDICASCADE, 0, 0)
//
//      //finally
//             //FreeAndNil( FormProdTipo );
//      //end;
//      end;
//      FormFornec.Show;
     if not assigned(FormFornec) then
     begin
       FormFornec := TFormFornec.Create(Application);
       try
         FormFornec.BotoesAcesso;
         FormFornec.FormStyle := fsNormal;
         FormFornec.Visible := false;
         FormFornec.ShowModal;
       finally
        FreeAndNil(FormFornec);
       end;
     end;
end;

procedure TfmContaCorrenteCredito.CbForneMenuNovoClick(Sender: TObject);
begin
  inherited;
//     if not assigned(FormFornec) then
//      begin
//      FormFornec := TFormFornec.Create(Application);
//      FormFornec.BotoesAcesso;
//      //try
//      if (MDIChildCount > 1) then
//             SendMessage(ClientHandle, WM_MDICASCADE, 0, 0)
//
//      //finally
//             //FreeAndNil( FormProdTipo );
//      //end;
//      end;
//      FormFornec.Show;
     if not assigned(FormFornec) then
     begin
       FormFornec := TFormFornec.Create(Application);
       try
         FormFornec.BotoesAcesso;
         FormFornec.FormStyle := fsNormal;
         FormFornec.Visible := false;
         FormFornec.ShowModal;
       finally
        FreeAndNil(FormFornec);
       end;
     end;
end;

procedure TfmContaCorrenteCredito.CbVendedorMenuEditaClick(Sender: TObject);
begin
  inherited;
//     if not assigned(FormRepres) then
//      begin
//      FormRepres := TFormRepres.Create(Application);
//      FormRepres.BotoesAcesso;
//      //try
//      if (MDIChildCount > 1) then
//             SendMessage(ClientHandle, WM_MDICASCADE, 0, 0)
//
//      //finally
//             //FreeAndNil( FormProdTipo );
//      //end;
//      end;
//      FormRepres.Show;

     if not assigned(FormRepres) then
     begin
       FormRepres := TFormRepres.Create(Application);
       try
         FormRepres.BotoesAcesso;
         FormRepres.FormStyle := fsNormal;
         FormRepres.Visible := false;
         FormRepres.ShowModal;
       finally
        FreeAndNil(FormRepres);
       end;
     end;
end;

procedure TfmContaCorrenteCredito.CbVendedorMenuNovoClick(Sender: TObject);
begin
  inherited;
//     if not assigned(FormRepres) then
//      begin
//      FormRepres := TFormRepres.Create(Application);
//      FormRepres.BotoesAcesso;
//      //try
//      if (MDIChildCount > 1) then
//             SendMessage(ClientHandle, WM_MDICASCADE, 0, 0)
//
//      //finally
//             //FreeAndNil( FormProdTipo );
//      //end;
//      end;
//      FormRepres.Show;
     if not assigned(FormRepres) then
     begin
       FormRepres := TFormRepres.Create(Application);
       try
         FormRepres.BotoesAcesso;
         FormRepres.FormStyle := fsNormal;
         FormRepres.Visible := false;
         FormRepres.ShowModal;
       finally
        FreeAndNil(FormRepres);
       end;
     end;
end;

procedure TfmContaCorrenteCredito.CdsEditBeforePost(DataSet: TDataSet);
begin
  inherited;
  ClearErrors;
  if CdsEditDOCUMENTO.AsString=EmptyStr THEN
     AddErrValidation('Documento precisa ser informado.');
  if CdsEditDESCRICAO.AsString=EmptyStr THEN
     AddErrValidation('Descrição precisa ser informado.');
  if CdsEditCONTA.Value=EmptyStr THEN
     AddErrValidation('Conta precisa ser de Crédito ou Débito.');
  if CdsEditTIPO.Value=EmptyStr THEN
     AddErrValidation('Tipo da Conta precisa ser informado.');

  if cxDBRadioGroup1.ItemIndex = 0 then
  begin
   if CdsEditCOD_VENDEDOR.Value = EmptyStr then
     AddErrValidation('Vendedor precisa ser informado.');
  end;
  if cxDBRadioGroup1.ItemIndex = 1 then
  begin
   if CdsEditCOD_CLIENTE.Value = EmptyStr then
     AddErrValidation('Cliente precisa ser informado.');
  end;
  if cxDBRadioGroup1.ItemIndex = 2 then
  begin
   if CdsEditCOD_FORNECEDOR.Value = EmptyStr then
     AddErrValidation('Fornecedor precisa ser informado.');
  end;

  CheckErrors;

  if CdsEditCODIGO.IsNull then
     CdsEditCODIGO.asInteger := GetNextSequence('GEN_CONTA_CORRENTE_CODIGO');

end;

procedure TfmContaCorrenteCredito.CdsEditCalcFields(DataSet: TDataSet);
begin
  inherited;
  if not (DataSet.FieldByName('VALOR').IsNull ) and not  (DataSet.FieldByName('VALOR_UTILIZADO').IsNull )  then
     DataSet.FieldByName('SALDO').AsFloat := DataSet.FieldByName('VALOR').AsFloat  -DataSet.FieldByName('VALOR_UTILIZADO').AsFloat
  else if (DataSet.FieldByName('VALOR').IsNull)  and
     not  (DataSet.FieldByName('VALOR_UTILIZADO').IsNull ) then
     DataSet.FieldByName('SALDO').AsFloat :=   -DataSet.FieldByName('VALOR_UTILIZADO').AsFloat
  else if not (DataSet.FieldByName('VALOR').IsNull)  then
     DataSet.FieldByName('SALDO').AsFloat :=   -DataSet.FieldByName('VALOR').AsFloat
  else
    DataSet.FieldByName('SALDO').AsFloat := 0;


end;

procedure TfmContaCorrenteCredito.CdsEditNewRecord(DataSet: TDataSet);
begin
  inherited;
  cxDBRadioGroup3.ItemIndex := 2;
  CdsEditLANCADO.Value := 'M';
  CdsEditVALOR.Value := 0;
  CdsEditVALOR_UTILIZADO.Value := 0;
  CdsEditUSU_CODIGO.Value := StrToInt(dbInicio.Usuario.codigo);
  CdsEditDATA.AsDateTime := Date;
end;

procedure TfmContaCorrenteCredito.cxDBRadioGroup1Click(Sender: TObject);
begin
  inherited;
  VerificaTipo;
end;

procedure TfmContaCorrenteCredito.FormCreate(Sender: TObject);
begin
  inherited;
  CampoID:='CODIGO';
  Tabela:='CONTA_CORRENTE';
  SetTamanhoMinimo(285,671);
  cbPersistente.Visible := False;
end;

procedure TfmContaCorrenteCredito.FormShow(Sender: TObject);
begin
  inherited;
  VerificaTipo;
  cxDBRadioGroup3.Enabled := false;
end;

procedure TfmContaCorrenteCredito.cbClienteButtonClick(Sender: TObject);
var
  tcr: tFrmPesquisaClientes;
begin
  inherited;
  tcr:= tFrmPesquisaClientes.Create(self);
  try
      tcr.ShowModal;
      if tcr.modalresult = mrok then
         cbCliente.idRetorno := tcr.IDRetorno;
  finally
       FreeAndNil(tcr);
  end;
end;

procedure TfmContaCorrenteCredito.VerificaTipo;
begin
  if CdsEdit.State in [dsInsert,dsEdit] then
  begin
    if cxDBRadioGroup1.ItemIndex = 0 then
    begin
      CdsEditCOD_CLIENTE.Clear;
      edCliente.Clear;
      CbCliente.Clear;
      CdsEditCOD_FORNECEDOR.Clear;
      edFornecedor.Clear;
      CbForne.Clear;
    end;
    if cxDBRadioGroup1.ItemIndex = 1 then
    begin
      CdsEditCOD_VENDEDOR.Clear;
      edVendedor.Clear;
      CbVendedor.Clear;
      CdsEditCOD_FORNECEDOR.Clear;
      edFornecedor.Clear;
      CbForne.Clear;
    end;
    if cxDBRadioGroup1.ItemIndex = 2 then
    begin
      CdsEditCOD_VENDEDOR.Clear;
      edVendedor.Clear;
      CbVendedor.Clear;
      CdsEditCOD_CLIENTE.Clear;
      edCliente.Clear;
      CbCliente.Clear;
    end;

    edVendedor.Enabled := cxDBRadioGroup1.ItemIndex = 0;
    CbVendedor.Enabled := cxDBRadioGroup1.ItemIndex = 0;
    Label23.Enabled := cxDBRadioGroup1.ItemIndex = 0;

    edCliente.Enabled := cxDBRadioGroup1.ItemIndex = 1;
    CbCliente.Enabled := cxDBRadioGroup1.ItemIndex = 1;
    Label22.Enabled := cxDBRadioGroup1.ItemIndex = 1;

    edFornecedor.Enabled := cxDBRadioGroup1.ItemIndex = 2;
    CbForne.Enabled := cxDBRadioGroup1.ItemIndex = 2;
    Label7.Enabled := cxDBRadioGroup1.ItemIndex = 2;
  end;

end;

end.
