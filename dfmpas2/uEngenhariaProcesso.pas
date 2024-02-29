unit uEngenhariaProcesso;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBEditForm, Data.DBXFirebird, Data.FMTBcd, Data.DB, Datasnap.DBClient, Datasnap.Provider, Data.SqlExpr, ACBrEnterTab, ACBrBase, ACBrCalculadora,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, SgDbSeachComboUnit, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxTimeEdit, cxDBEdit, cxTextEdit, cxMaskEdit,
  cxSpinEdit, Uteis, Vcl.Mask, Vcl.DBCtrls, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  dxSkinXmas2008Blue;

type
  TfmEngenhariaProcesso = class(TfrmBaseDBEdit)
    edOperacao: TSgDbSearchCombo;
    qOperacoes: TSQLQuery;
    Label2: TLabel;
    Label3: TLabel;
    cxDBSpinEdit2: TcxDBSpinEdit;
    Label4: TLabel;
    dspSequencia: TDataSetProvider;
    cdsSequencia: TClientDataSet;
    IntegerField1: TIntegerField;
    IntegerField3: TIntegerField;
    EdOperacaoCodigo: TEdit;
    DBEdit1: TDBEdit;
    edPesquisaEquipamento: TSgDbSearchCombo;
    edEquipamento: TEdit;
    Label1: TLabel;
    qEquipamento: TSQLQuery;
    CdsEditENG_CODIGO: TIntegerField;
    CdsEditOPE_CODIGO: TIntegerField;
    CdsEditSEQUENCIA: TIntegerField;
    CdsEditEQP_CODIGO: TIntegerField;
    CdsEditPRD_CODIGO: TStringField;
    CdsEditTEMPO_ESTIMADO: TIntegerField;
    Label5: TLabel;
    qEditENG_CODIGO: TIntegerField;
    qEditOPE_CODIGO: TIntegerField;
    qEditSEQUENCIA: TIntegerField;
    qEditEQP_CODIGO: TIntegerField;
    qEditPRD_CODIGO: TStringField;
    qEditTEMPO_ESTIMADO: TIntegerField;
    Panel1: TPanel;
    imgLogo: TImage;
    btnRemoveImage: TSpeedButton;
    btnAddImage: TSpeedButton;
    CdsEditESP_ESBOCO: TBlobField;
    OpenDialog1: TOpenDialog;
    qEditESP_ESBOCO: TBlobField;
    Label6: TLabel;
    edObs: TDBMemo;
    qEditENG_OBSERVACAO: TBlobField;
    CdsEditENG_OBSERVACAO: TBlobField;
    procedure FormCreate(Sender: TObject);
    procedure CdsEditBeforePost(DataSet: TDataSet);
    procedure edOperacaoSelect(Sender: TObject);
    procedure EdOperacaoCodigoExit(Sender: TObject);
    procedure CdsEditAfterOpen(DataSet: TDataSet);
    procedure CdsEditAfterInsert(DataSet: TDataSet);
    procedure edPesquisaEquipamentoSelect(Sender: TObject);
    procedure edEquipamentoExit(Sender: TObject);
    procedure btnAddImageClick(Sender: TObject);
    procedure btnRemoveImageClick(Sender: TObject);
    procedure BuscaEquipamento;

  private
   FPRD_CODIGO : String;
   FSequencia : integer;
   procedure SetPRD_CODIGO (AValues : String);
   procedure SetSequencia (AValues : integer);
   procedure AtualizarSequencias (seq : integer);
  public
    property PRD_CODIGO :string read FPRD_CODIGO write SetPRD_CODIGO;
    property Sequencia : integer read FSequencia write SetSequencia;
  end;

var
  fmEngenhariaProcesso: TfmEngenhariaProcesso;

implementation

{$R *.dfm}

procedure TfmEngenhariaProcesso.AtualizarSequencias(seq: integer);
var cloneEngenharia: TClientDataSet;

  vtr: Boolean;
begin
  vtr := dbConn.InTransaction;
  begintransaction;
  try
    qaux.Close;
    qAux.SQL.Clear;
    qAux.SQL.Text := ' SELECT ENG_CODIGO,  SEQUENCIA '+
                     ' FROM ENGENHARIA_PROCESSO   '+
                     ' WHERE PRD_CODIGO = '+ PRD_CODIGO+
                     ' AND SEQUENCIA >= ' + IntToStr(SEQ)+
                     ' AND ENG_CODIGO <> '+ IntToStr(CdsEditENG_CODIGO.AsInteger) +
                     ' ORDER BY SEQUENCIA ' ;

    dspSequencia.DataSet := qAux;
    cdsSequencia.Open;
    cloneEngenharia := TClientDataSet.Create(nil);
    try
       cloneEngenharia.CloneCursor(cdssequencia, true);
       cloneEngenharia.First;
       while not cloneEngenharia.Eof do
       begin
        cloneEngenharia.Edit;
        if cloneEngenharia.FieldByName('Sequencia').AsInteger = seq then
           cloneEngenharia.FieldByName('Sequencia').AsInteger:= seq +1
        else
         begin
           cloneEngenharia.FieldByName('Sequencia').AsInteger:= seq;

         end;
        seq := seq+1;
        cloneEngenharia.Post;
        cloneEngenharia.Next;
       end;

    IF cdsSequencia.ApplyUpdates(0) <> 0 THEN
       GeraException('Erro ao tentar atualizar as sequências');
    if Assigned(AfterApplyUpdates) then
      AfterApplyUpdates(Nil);
    if not vtr then
      CommitTransaction;
    finally
      FreeAndNil(cloneEngenharia);
    end;
  except
    if not vtr then
    begin
      RollBackTransaction;
      raise;
    end;

  end;
end;

procedure TfmEngenhariaProcesso.btnAddImageClick(Sender: TObject);
begin
  inherited;
  if (OpenDialog1.Execute) then
  begin
    if (CdsEdit.State in [Dsbrowse]) and not (CdsEdit.IsEmpty) then
       CdsEdit.Edit;
    Le_Imagem_BMP(OpenDialog1.FileName, imgLogo );
    Save_Imagem_BMP_toJPEG( imgLogo, CdsEditESP_ESBOCO);
  end;
end;

procedure TfmEngenhariaProcesso.btnRemoveImageClick(Sender: TObject);
begin
  inherited;
     if (CdsEdit.State in [Dsbrowse]) and not (CdsEdit.IsEmpty) then
         CdsEdit.Edit;
     CdsEditESP_ESBOCO.Clear;
     imgLogo.Picture.Bitmap:=Nil ;
end;



procedure TfmEngenhariaProcesso.CdsEditAfterInsert(DataSet: TDataSet);
begin
  inherited;
  if sequencia > 0  then
    CdsEditSEQUENCIA.Value := Sequencia;
end;

procedure TfmEngenhariaProcesso.CdsEditAfterOpen(DataSet: TDataSet);
begin
  inherited;
  if not ((CdsEditOPE_CODIGO.IsNull) or (CdsEditOPE_CODIGO.AsInteger = 0))  then
  begin
     EdOperacaoCodigo.Text :=   VarToStr(CdsEditOPE_CODIGO.Value);
     edOperacao.idRetorno := EdOperacaoCodigo.Text;
  end;

  edEquipamento.Text := CdsEditEQP_CODIGO.AsString;
  edPesquisaEquipamento.idRetorno := edEquipamento.Text;


  if not CdsEdit.IsEmpty then
    Le_Imagem_JPEG_toBMP(CdsEditESP_ESBOCO,imgLogo);
end;

procedure TfmEngenhariaProcesso.CdsEditBeforePost(DataSet: TDataSet);

begin
  inherited;
  ClearErrors;
  if edOperacao.idRetorno = '' then
      GeraException('Operação é obrigatória');
  if (CdsEditSEQUENCIA.AsInteger <= 0 ) or (CdsEditSEQUENCIA.IsNull) then
      GeraException('Sequência é obrigatória');

  if edPesquisaEquipamento.idRetorno <> '' then
    CdsEditeqp_codigo.AsInteger := StrToInt(edPesquisaEquipamento.idRetorno);
  CdsEditOPE_CODIGO.AsInteger := StrToInt(edOperacao.idRetorno);
  if CdsEditPRD_CODIGO.IsNull then
     CdsEditPRD_CODIGO.AsString := PRD_CODIGO;
  if CdsEditENG_CODIGO.IsNull then
     CdsEditENG_CODIGO.asInteger := GetNextSequence('GEN_ENGENHARIA_PROCESSO');

end;

procedure TfmEngenhariaProcesso.edEquipamentoExit(Sender: TObject);
begin
  inherited;
  if edEquipamento.Text<>'' then
  begin
      edPesquisaEquipamento.idRetorno:=edEquipamento.Text;
      if edPesquisaEquipamento.idRetorno='' then
         GeraException('Equipamento não existente');
  end
  Else
  begin
      edEquipamento.clear;
      edPesquisaEquipamento.Clear;
  end;
end;

procedure TfmEngenhariaProcesso.BuscaEquipamento;
begin
    edEquipamento.Text := BuscaUmDadoSqlAsString('SELECT EQP_CODIGO FROM OPERACOES WHERE OPE_CODIGO = ' +   QuotedStr(EdOperacaoCodigo.Text) );
    edPesquisaEquipamento.IdRetorno := edEquipamento.Text;
end;

procedure TfmEngenhariaProcesso.EdOperacaoCodigoExit(Sender: TObject);
begin
  inherited;
  if EdOperacaoCodigo.Text<>'' then
  begin
      BuscaEquipamento;
      edOperacao.idRetorno:=EdOperacaoCodigo.Text;
      if edOperacao.idRetorno='' then
         GeraException('Operação não existente');
  end
  Else
  begin
      EdOperacaoCodigo.clear;
      edOperacao.Clear;
  end;
end;

procedure TfmEngenhariaProcesso.edOperacaoSelect(Sender: TObject);

begin
  inherited;

  if edOperacao.idRetorno <> '' then
  begin
     EdOperacaoCodigo.Text :=  edOperacao.idRetorno;
     BuscaEquipamento;
     OpenAux('select OPE_OBSERVACAO from OPERACOES where  ope_codigo = '+edOperacao.idRetorno);

    if qAux.FieldByName('OPE_OBSERVACAO').AsString <> '' then
    begin
      if cdsedit.State in dsEditModes then
        edObs.Text :=  qAux.FieldByName('OPE_OBSERVACAO').AsString;

    end;
  end
  else
     EdOperacaoCodigo.Clear;
end;

procedure TfmEngenhariaProcesso.edPesquisaEquipamentoSelect(Sender: TObject);
begin
  inherited;
  if edPesquisaEquipamento.idRetorno <> '' then
     edEquipamento.Text :=  edPesquisaEquipamento.idRetorno
  else
     edEquipamento.Clear;
end;

procedure TfmEngenhariaProcesso.FormCreate(Sender: TObject);
begin
  inherited;
  CampoID:='ENG_CODIGO';
  Tabela:='ENGENHARIA_PROCESSO';
  DspEdit.UpdateMode := upWhereKeyOnly;
  SetTamanhoMinimo(355,918);

end;

procedure TfmEngenhariaProcesso.SetPRD_CODIGO(AValues: String);
begin
 FPRD_CODIGO := AValues;
end;

procedure TfmEngenhariaProcesso.SetSequencia(AValues: integer);
begin
 FSequencia := AValues;
end;

end.
