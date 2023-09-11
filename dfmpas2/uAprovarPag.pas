unit uAprovarPag;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBEditFormFDAC, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Phys.FBDef, FireDAC.UI.Intf, FireDAC.VCLUI.Wait, FireDAC.VCLUI.Error, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.FB, JvErrorIndicator,
  JvValidators, JvComponentBase, Data.DB, FireDAC.Comp.Client, FireDAC.Comp.UI, FireDAC.Phys.IBBase, FireDAC.Comp.DataSet, cxClasses, cxLocalization, ACBrBase, ACBrEnterTab, Vcl.Buttons, Vcl.ExtCtrls,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, FireDAC.Stan.StorageBin, cxEditRepositoryItems, System.ImageList, Vcl.ImgList, system.DateUtils, system.Threading, system.SyncObjs;

type
  TfrmAprovarPagamento = class(TfrmBaseDBEditFDAC)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cdsEditCCT_DESCRI: TStringField;
    cdsEditBAN_APELIDO: TStringField;
    cdsEditPAG_REGISTRO: TIntegerField;
    cdsEditPPC_DESCTO: TFMTBCDField;
    cdsEditPPC_MULTA: TFMTBCDField;
    cdsEditPPC_JUROS: TFMTBCDField;
    cdsEditPAG_CODIGO: TStringField;
    cdsEditPPC_NUMER: TStringField;
    cdsEditPAG_NUMDOC: TStringField;
    cdsEditPAG_DTEMIS: TSQLTimeStampField;
    cdsEditPPC_VLPARC: TFMTBCDField;
    cdsEditPPC_VENCTO: TSQLTimeStampField;
    cdsEditPPC_PAGTO: TSQLTimeStampField;
    cdsEditPPC_VLPAGO: TFMTBCDField;
    cdsEditPPC_STATUS: TStringField;
    cdsEditPPC_PREVISAO: TStringField;
    cdsEditEMP_CODIGO: TStringField;
    cdsEditPPC_SITPAG: TStringField;
    cdsEditPPC_EXCLUSAO: TStringField;
    cdsEditPAG_OBS: TStringField;
    cdsEditFOR_CODIGO: TStringField;
    cdsEditFOR_RAZAO: TStringField;
    cdsEditPAG_FAVORECIDO: TStringField;
    cdsEditPPC_NPARCELAS: TSmallintField;
    cdsEditPPC_SIT_LIBERACAO: TStringField;
    cdsEditPPC_VALOR_APONTADO: TFMTBCDField;
    cxGrid1DBTableView1CCT_DESCRI: TcxGridDBColumn;
    cxGrid1DBTableView1BAN_APELIDO: TcxGridDBColumn;
    cxGrid1DBTableView1PAG_REGISTRO: TcxGridDBColumn;
    cxGrid1DBTableView1PPC_DESCTO: TcxGridDBColumn;
    cxGrid1DBTableView1PPC_MULTA: TcxGridDBColumn;
    cxGrid1DBTableView1PPC_JUROS: TcxGridDBColumn;
    cxGrid1DBTableView1PAG_CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1PPC_NUMER: TcxGridDBColumn;
    cxGrid1DBTableView1PAG_NUMDOC: TcxGridDBColumn;
    cxGrid1DBTableView1PAG_DTEMIS: TcxGridDBColumn;
    cxGrid1DBTableView1PPC_VLPARC: TcxGridDBColumn;
    cxGrid1DBTableView1PPC_VENCTO: TcxGridDBColumn;
    cxGrid1DBTableView1PPC_PAGTO: TcxGridDBColumn;
    cxGrid1DBTableView1PPC_VLPAGO: TcxGridDBColumn;
    cxGrid1DBTableView1PPC_STATUS: TcxGridDBColumn;
    cxGrid1DBTableView1PPC_PREVISAO: TcxGridDBColumn;
    cxGrid1DBTableView1EMP_CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1PPC_SITPAG: TcxGridDBColumn;
    cxGrid1DBTableView1PPC_EXCLUSAO: TcxGridDBColumn;
    cxGrid1DBTableView1PAG_OBS: TcxGridDBColumn;
    cxGrid1DBTableView1FOR_CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1FOR_RAZAO: TcxGridDBColumn;
    cxGrid1DBTableView1PAG_FAVORECIDO: TcxGridDBColumn;
    cxGrid1DBTableView1PPC_NPARCELAS: TcxGridDBColumn;
    cxGrid1DBTableView1PPC_SIT_LIBERACAO: TcxGridDBColumn;
    cxGrid1DBTableView1PPC_VALOR_APONTADO: TcxGridDBColumn;
    MtbAprovados: TFDMemTable;
    MtbAprovadosCCT_DESCRI: TStringField;
    MtbAprovadosBAN_APELIDO: TStringField;
    MtbAprovadosPAG_REGISTRO: TIntegerField;
    MtbAprovadosPPC_DESCTO: TFMTBCDField;
    MtbAprovadosPPC_MULTA: TFMTBCDField;
    MtbAprovadosPPC_JUROS: TFMTBCDField;
    MtbAprovadosPAG_CODIGO: TStringField;
    MtbAprovadosPPC_NUMER: TStringField;
    MtbAprovadosPAG_NUMDOC: TStringField;
    MtbAprovadosPAG_DTEMIS: TSQLTimeStampField;
    MtbAprovadosPPC_VLPARC: TFMTBCDField;
    MtbAprovadosPPC_VENCTO: TSQLTimeStampField;
    MtbAprovadosPPC_PAGTO: TSQLTimeStampField;
    MtbAprovadosPPC_VLPAGO: TFMTBCDField;
    MtbAprovadosPPC_STATUS: TStringField;
    MtbAprovadosPPC_PREVISAO: TStringField;
    MtbAprovadosEMP_CODIGO: TStringField;
    MtbAprovadosPPC_SITPAG: TStringField;
    MtbAprovadosPPC_EXCLUSAO: TStringField;
    MtbAprovadosPAG_OBS: TStringField;
    MtbAprovadosFOR_CODIGO: TStringField;
    MtbAprovadosFOR_RAZAO: TStringField;
    MtbAprovadosPAG_FAVORECIDO: TStringField;
    MtbAprovadosPPC_NPARCELAS: TSmallintField;
    MtbAprovadosPPC_SIT_LIBERACAO: TStringField;
    MtbAprovadosPPC_VALOR_APONTADO: TFMTBCDField;
    MtbAprovadosCCPendente: TFloatField;
    cxGrid1DBTableView1CCPendente: TcxGridDBColumn;
    ImageList1: TImageList;
    cxEditRepository1: TcxEditRepository;
    cxEditRepository1ButtonItem1: TcxEditRepositoryButtonItem;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    procedure MtbAprovadosPPC_NUMERGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure cxEditRepository1ButtonItem1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure Historico_Controle (const Descr : string; const PAG_REGISTRO, PAG_CODIGO, PPC_NUMER: string);
    procedure AtualizarTitulo (const valor : Double; registro : string);
    procedure btnOkClick(Sender: TObject);
    procedure ValorSolicitado;
    procedure FormShow(Sender: TObject);
    procedure MtbAprovadosPPC_VALOR_APONTADOValidate(Sender: TField);
  private
   FTipo : Integer; // 0 apontar /solicitar 1 - aprovar/autorizar
  public
    property Tipo : integer read ftipo write ftipo;
  end;

var
  frmAprovarPagamento: TfrmAprovarPagamento;

implementation

{$R *.dfm}
uses uteis, InicioDB;

procedure TfrmAprovarPagamento.AtualizarTitulo(const valor: Double; registro : string);
var sit: string;
begin
  if tipo =0 then
    sit := 'L' // LIBERADO
  else
    sit:= 'A'; // APROVADO

 ExecSql(' UPDATE PAG_PC01  SET PPC_SIT_LIBERACAO = '+QuotedStr(sit) +
        IIF(sit = 'L', ' , PPC_VALOR_APONTADO = '+ FloatToSQL(valor),'')+
         '  WHERE PAG_REGISTRO = '+ registro );
end;

procedure TfrmAprovarPagamento.btnOkClick(Sender: TObject);
var
 str : string;
begin
//  inherited;
 MtbAprovados.First;
 while not MtbAprovados.Eof do
 begin

   if Tipo = 0 then // soliciado
      str := 'Solicitado o valor de ' + FormatFloat('#,##0.00',MtbAprovadosPPC_VALOR_APONTADO.AsFloat)
   else
      str := 'Aprovado pagamento';
   Historico_Controle (str, MtbAprovadosPAG_REGISTRO.AsString,   MtbAprovadosPAG_CODIGO.AsString,  MtbAprovadosPPC_NUMER.AsString);
   AtualizarTitulo(MtbAprovadosPPC_VALOR_APONTADO.AsFloat,MtbAprovadosPAG_REGISTRO.AsString);
   MtbAprovados.Next;
 end;
 ModalResult := mrOk;
end;




procedure TfrmAprovarPagamento.cxEditRepository1ButtonItem1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  MtbAprovados.Delete;
  if MtbAprovados.RecordCount = 0 then
    self.ModalResult := mrCancel;
end;

procedure TfrmAprovarPagamento.FormCreate(Sender: TObject);
begin
  inherited;
  SELF.Height := 572;
  SELF.Width :=  1000;

end;

procedure TfrmAprovarPagamento.FormShow(Sender: TObject);
begin
  inherited;
  ValorSolicitado;
  // aprovação
  if Tipo = 1 then
  begin
   cxGrid1DBTableView1PPC_VALOR_APONTADO.Options.Editing := False;
   cxGrid1DBTableView1PPC_VALOR_APONTADO.Styles.Content := nil;
  end;

end;

procedure TfrmAprovarPagamento.Historico_Controle(const Descr, PAG_REGISTRO, PAG_CODIGO, PPC_NUMER: string);
begin
    ExecSql(' insert into CONTROLE_TIT_PAGAR ( CTP_DATA_MOV, CTP_DESCRI, COD_USU, PAG_REGISTRO, PAG_CODIGO, PPC_NUMER) '+
            ' VALUES( '+DateTimeToSQL(NOW)+ ',' + QuotedStr(Descr) + ','+ DBInicio.Usuario.CODIGO + ','+   PAG_REGISTRO+ ',' + QuotedStr(PAG_CODIGO)+ ','+ QuotedStr(PPC_NUMER) +')');
end;

procedure TfrmAprovarPagamento.MtbAprovadosPPC_NUMERGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;

  if Sender.IsNull or (Sender.AsString = '')  then
    text := '1/1'
  else
    text :=  inttostr(strtoint(Sender.AsString)) + '/'+ IntToStr(MtbAprovados.FieldByName('PPC_NPARCELAS').AsInteger);


end;

procedure TfrmAprovarPagamento.MtbAprovadosPPC_VALOR_APONTADOValidate(Sender: TField);
begin
  inherited;
  if sender.AsFloat > MtbAprovadosCCPendente.AsFloat then
    raise Exception.Create('Não pode autorizar um valor maior que valor pendente.');
end;

procedure TfrmAprovarPagamento.ValorSolicitado;
begin
//  inherited;
 MtbAprovados.First;

 while not MtbAprovados.Eof do
 begin
  MtbAprovados.Edit;
  if  (MtbAprovadosPPC_VALOR_APONTADO.AsFloat = 0 ) OR  MtbAprovadosPPC_VALOR_APONTADO.IsNull then
    MtbAprovadosPPC_VALOR_APONTADO.AsFloat := MtbAprovadosCCPendente.AsFloat;
  MtbAprovados.Post;


   MtbAprovados.Next;
 end;

end;

end.
