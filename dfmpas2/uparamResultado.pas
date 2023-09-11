unit uparamResultado;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBEditFormFDAC, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Phys.FBDef, FireDAC.UI.Intf, FireDAC.VCLUI.Wait, FireDAC.VCLUI.Error, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.FB, JvErrorIndicator,
  JvValidators, JvComponentBase, Data.DB, FireDAC.Comp.Client, FireDAC.Comp.UI, FireDAC.Phys.IBBase, FireDAC.Comp.DataSet, cxClasses, cxLocalization, ACBrBase, ACBrEnterTab, Vcl.Buttons, Vcl.ExtCtrls,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridCustomView, cxGrid, Vcl.StdCtrls, Vcl.DBCtrls;

type
  TfrmParamResultados = class(TfrmBaseDBEditFDAC)
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cdsEditEOR_CODIGO: TIntegerField;
    cdsEditEOR_SEQ: TIntegerField;
    cdsEditOPE_CODIGO: TIntegerField;
    cdsEditEOR_NOME: TStringField;
    cdsEditOPE_NOME: TStringField;
    cxGrid1DBTableView1EOR_SEQ: TcxGridDBColumn;
    cxGrid1DBTableView1EOR_NOME: TcxGridDBColumn;
    JvErrorIndicator2: TJvErrorIndicator;
    procedure cdsEditNewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    foperacoes : string;
    sequencia : integer;
  public
    function AbreTela: boolean;
    property CodOperacoes : string read foperacoes write foperacoes;
  end;

var
  frmParamResultados: TfrmParamResultados;

implementation
uses iniciodb, uteis, uascii;

{$R *.dfm}

{ TfrmParamResultados }

function TfrmParamResultados.AbreTela: boolean;
begin
  if Trim(CodOperacoes) <> '' then
  begin
    ConfigBotoes(3);
    EstadoTela := teEdicao;
    aCaption := 'Resultados de inspeção de produção';
    ReadOnly := false;
    CdsEdit.DisableControls;
    CdsEdit.close;
    cdsEdit.Params[0].Value := CodOperacoes;
    CdsEdit.open;
    CdsEdit.EnableControls;
    self.ShowModal;
    Result := (self.ModalResult = mrOk);
  end;
end;

procedure TfrmParamResultados.cdsEditNewRecord(DataSet: TDataSet);
begin
  inherited;
  try
    inc(sequencia);
    if cdsEditEOR_CODIGO.IsNull then
     cdsEditEOR_CODIGO.AsInteger := GetNextSequence('GEN_MODLESPE_OPERACAO_RESUL');

    cdsEditEOR_SEQ.AsInteger := sequencia;
    cdsEditOPE_CODIGO.AsInteger := StrToInt(CodOperacoes);
  except
   Dec(sequencia);
  end;
end;

procedure TfrmParamResultados.FormCreate(Sender: TObject);
begin
  inherited;
	CampoID:='EOR_CODIGO';
	Tabela:='MODLESPE_OPERACAO_RESUL';
  CampoIDRetorno := 'OPE_CODIGO';
  self.Constraints.MinHeight:= 489;
  self.Constraints.MinWidth:=919;
//  self.Constraints.MaxHeight:= 0;
  TemDetalhe := False;
//  cdsOperacoes.Open('select ope_codigo,ope_nome, ope_Descricao,emp_codigo from operacoes '+
//                   ConcatSe(' where ',dbinicio.ExclusivoSql('ORDEMPRODUCAO')   ));

end;

procedure TfrmParamResultados.FormDestroy(Sender: TObject);
begin
  inherited;
  frmParamResultados := nil;
end;

procedure TfrmParamResultados.FormShow(Sender: TObject);
begin
  inherited;
  if cdsEdit.Active   then
    sequencia := cdsEdit.RecordCount;
end;

end.
