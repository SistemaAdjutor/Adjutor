unit uVinculandoServico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBEditFormFDAC, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Phys.FBDef, FireDAC.UI.Intf, FireDAC.VCLUI.Wait, FireDAC.VCLUI.Error, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.FB, Data.FMTBcd,
  JvExStdCtrls, JvEdit, JvValidateEdit, Vcl.StdCtrls, SgDbSeachComboUnit, Data.DB, Data.SqlExpr, JvErrorIndicator, JvValidators, JvComponentBase, FireDAC.Comp.Client, FireDAC.Comp.UI,
  FireDAC.Phys.IBBase, FireDAC.Comp.DataSet, cxClasses, cxLocalization, ACBrBase, ACBrEnterTab, Vcl.Buttons, Vcl.ExtCtrls, uProducaoDAO;

type
  TfrmVinculandoServico = class(TfrmBaseDBEditFDAC)
    qServico: TSQLQuery;
    qServicoSRV_CODIGO: TIntegerField;
    qServicoSRV_NOME: TStringField;
    qServicoSRV_CUSTO: TFMTBCDField;
    Label1: TLabel;
    cbServico: TSgDbSearchCombo;
    Label2: TLabel;
    edCusto: TJvValidateEdit;
    Label3: TLabel;
    edQtde: TJvValidateEdit;
    Label4: TLabel;
    edTotal: TJvValidateEdit;
    cdsEditSRO_CODIGO: TIntegerField;
    cdsEditIOP_CODIGO: TIntegerField;
    cdsEditSRO_QUATDE: TFMTBCDField;
    cdsEditSRV_CUSTO: TFMTBCDField;
    cdsEditSRV_CODIGO: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbServicoSelect(Sender: TObject);
    procedure edQtdeChange(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    fIop_codigo : integer;
    tcr : tproducaodao;
  public
    property iop_codigo : integer read fIop_codigo write fIop_codigo;
  end;

var
  frmVinculandoServico: TfrmVinculandoServico;

implementation

uses iniciodb, Uteis;
{$R *.dfm}

procedure TfrmVinculandoServico.btnOkClick(Sender: TObject);
begin
  if cbServico.idRetorno = '' then
    raise Exception.Create('Serviço não preenchido');
  if edQtde.Value = 0 then
    raise Exception.Create('Quantidade de serviços deve ser preenchido');
  if edCusto.Value = 0  then
    raise Exception.Create('Custo não definido');

  if cdsEditSRO_CODIGO.IsNull then
    cdsEditSRO_CODIGO.AsInteger := GetNextSequence('GEN_SERVICOS_ORDEM');

  cdsEditIOP_CODIGO.AsInteger := iop_codigo;
  cdsEditSRO_QUATDE.AsFloat := edQtde.Value;
  cdsEditSRV_CUSTO.AsFloat := edCusto.Value;
  cdsEditSRV_CODIGO.AsInteger := StrToInt( cbServico.idRetorno);
  cdsEdit.Post;
  inherited;
  tcr.CustoServico(iop_codigo, edTotal.Value);
  ModalResult := mrOk;
end;

procedure TfrmVinculandoServico.cbServicoSelect(Sender: TObject);
begin
  inherited;
  if cbServico.CDS.FieldByName('SRV_CUSTO').AsFloat > 0 then
  begin
    edCusto.Value := cbServico.CDS.FieldByName('SRV_CUSTO').AsFloat;
    edCusto.Enabled := False;
  end
  else
    edCusto.Enabled := true;

end;

procedure TfrmVinculandoServico.edQtdeChange(Sender: TObject);
begin
  inherited;
  edTotal.Value := edCusto.Value * edQtde.Value;
end;

procedure TfrmVinculandoServico.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TfrmVinculandoServico.FormCreate(Sender: TObject);
begin
  inherited;
  self.Height :=153;
  self.Constraints.MinHeight:= 153;
  self.Constraints.MinWidth:=620;
  edTotal.DecimalPlaces := dbInicio.Empresa.fPMT_QTDE_DEC_PED;
  edCusto.DecimalPlaces := dbInicio.Empresa.fPMT_QTDE_DEC_PED;
  edQtde.DecimalPlaces := dbInicio.Empresa.fPMT_QTDE_DEC_PED;
  cdsEditSRV_CUSTO.DisplayFormat := '###,###,##0.'+StrZero('0', dbInicio.Empresa.fPMT_QTDE_DEC_PED);
  cdsEditSRO_QUATDE.DisplayFormat := '###,###,##0.'+StrZero('0', dbInicio.Empresa.fPMT_QTDE_DEC_PED);
     tcr := TProducaoDao.Create(application);
end;

procedure TfrmVinculandoServico.FormDestroy(Sender: TObject);
begin
  inherited;
  frmVinculandoServico := nil;
end;

procedure TfrmVinculandoServico.FormShow(Sender: TObject);
begin
  inherited;
  self.Caption := 'Vinculação de serviço';
  cdsEdit.Open;
  cdsEdit.Insert;
end;

end.


