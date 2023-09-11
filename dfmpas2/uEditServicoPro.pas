unit uEditServicoPro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBEditFormFDAC, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Phys.FBDef, FireDAC.UI.Intf, FireDAC.VCLUI.Wait, FireDAC.VCLUI.Error, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.FB, JvErrorIndicator,
  JvValidators, JvComponentBase, Data.DB, FireDAC.Comp.Client, FireDAC.Comp.UI, FireDAC.Phys.IBBase, FireDAC.Comp.DataSet, cxClasses, cxLocalization, ACBrBase, ACBrEnterTab, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, Datasnap.DBClient;

type
  TfrmEditServico = class(TfrmBaseDBEditFDAC)
    pprincipal: TPanel;
    DBEdit1: TDBEdit;
    edNome: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    NomeValidador: TJvCustomValidator;
    litens: TLabel;
    cdsEditSRV_CODIGO: TIntegerField;
    cdsEditSRV_NOME: TStringField;
    cdsEditEMP_CODIGO: TStringField;
    Label3: TLabel;
    setor: TcxDBLookupComboBox;
    cdsSetor: TFDQuery;
    dsSetor: TDataSource;
    cdsEditSET_CODIGO: TIntegerField;
    cdsSetorSET_CODIGO: TIntegerField;
    cdsSetorSET_DESCRICAO: TStringField;
    cdsSetorEMP_CODIGO: TStringField;
    cdsEditSRV_CUSTO: TFMTBCDField;
    cdsEditSRV_UND: TStringField;
    cdsEditSRV_TIPO: TIntegerField;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    Label4: TLabel;
    cdsUnidade: TClientDataSet;
    cdsUnidadePRD_UNICODIGO: TIntegerField;
    cdsUnidadePRD_UNISIGLA: TStringField;
    cdsUnidadePRD_UNIDESCRI: TStringField;
    DBRadioGroup1: TDBRadioGroup;
    procedure FormCreate(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure NomeValidadorValidate(Sender: TObject; ValueToValidate: Variant; var Valid: Boolean);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEditServico: TfrmEditServico;

implementation

uses UTEIS, AcbrUtil,  InicioDB;
{$R *.dfm}

procedure TfrmEditServico.btnOkClick(Sender: TObject);
begin

  if cdsEditSRV_CODIGO.IsNull then
    cdsEditSRV_CODIGO.AsInteger := GetNextSequence('GEN_SERVICO_ID') ;

  if cdsEditEMP_CODIGO.AsString = '' then
     cdsEditEMP_CODIGO.AsString := DBInicio.Empresa.EMP_CODIGO;
  inherited;
end;

procedure TfrmEditServico.FormCreate(Sender: TObject);
begin
  inherited;
	CampoID:='SRV_CODIGO';
	Tabela:='SERVICO';
  self.Constraints.MinHeight:= 129;
  self.Constraints.MinWidth:=662;
  self.Constraints.MaxHeight:= 0;
  TemDetalhe := false;
end;

procedure TfrmEditServico.FormShow(Sender: TObject);
begin
  inherited;
  cdssetor.Open;
  edNome.SetFocus;
  cdsEditDetail.Open;
end;

procedure TfrmEditServico.NomeValidadorValidate(Sender: TObject; ValueToValidate: Variant; var Valid: Boolean);
begin
  inherited;
  valid := Length(edNome.Text)>2;
end;

end.
