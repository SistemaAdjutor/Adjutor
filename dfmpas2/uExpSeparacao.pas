unit uExpSeparacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDbEstoqueForm, Data.DBXFirebird, Data.FMTBcd, Data.DB, Data.SqlExpr, ACBrEnterTab, ACBrBase, ACBrCalculadora, Vcl.Grids, Vcl.DBGrids, Datasnap.DBClient,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, JvExMask, JvToolEdit, JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit, Vcl.ComCtrls, JvExComCtrls, JvDateTimePicker, Vcl.Buttons, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, Datasnap.Provider;

type
  TfrmExpSeparacao = class(TfrmBaseDbEstoque)
    DBGrid1: TDBGrid;
    cdsItensSeparar: TClientDataSet;
    cdsItensSepararprf_registro: TIntegerField;
    cdsItensSepararPRD_REFER: TStringField;
    cdsItensSepararPRF_PRDDESCRI: TStringField;
    cdsItensSepararPRF_QTDE: TFMTBCDField;
    cdsItensSepararPRD_UND: TStringField;
    cdsItensSepararPRD_CODBARRA: TStringField;
    cdsItensSepararPRD_CODORIGINAL: TStringField;
    cdsItensSepararEMP_CODIGO: TStringField;
    cdsItensSepararPED_CODIGO: TStringField;
    cdsItensSepararPRF_FALTA: TFMTBCDField;
    cdsItensSepararPRF_QTDE_EXPEDIDOS: TFMTBCDField;
    dsitemseparar: TDataSource;
    Panel1: TPanel;
    btnConfirmar: TButton;
    btnCancelar: TButton;
    cdsItensSepararTotalSele: TAggregateField;
    Panel2: TPanel;
    Memo1: TMemo;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    horaEnvio: TJvDateTimePicker;
    cdsItensSepararESTOQUE: TFMTBCDField;
    labelPedido: TLabel;
    labelCliente: TLabel;
    dtAbertura: TJvDateEdit;
    dtEnvio: TJvDateEdit;
    dtEncerramento: TJvDateEdit;
    cdsItensSepararPRD_CODIGO: TStringField;
    cdsItensSepararPRF_FLAG_ATUALIZA_ESTOQUE: TStringField;
    Panel14: TPanel;
    SpeedButton3: TSpeedButton;
    cdsItensSepararPRF_SELECIONADA: TFMTBCDField;
    cxGrid2: TDBGrid;
    CdsSaldos: TClientDataSet;
    CdsSaldosAMX_CODIGO_RET: TStringField;
    CdsSaldosAMX_DESCRI_RET: TStringField;
    CdsSaldosAMX_SALDO_RET: TFMTBCDField;
    dssaldos: TDataSource;
    dspSaldos: TDataSetProvider;
    qSaldos: TSQLQuery;
    procedure FormDestroy(Sender: TObject);
    procedure cdsItensSepararPRF_SELECIONADAValidate(Sender: TField);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure DBGrid1DrawDataCell(Sender: TObject; const Rect: TRect; Field: TField; State: TGridDrawState);
    procedure cdsItensSepararAfterScroll(DataSet: TDataSet);
  private
    femp_codigo : string;
    fped_codigo : string;
    fcliente : string;
    fexpedicao : integer;
  public
     function IncluirExpedicao : Integer;
     procedure IncluirItem (const expedicao, prf_registro : Integer; const qtde : Double) ;
     property ped_codigo :string read fped_codigo write fped_codigo;
     property cliente : string read fcliente write fcliente;
     property expedicao: integer read fexpedicao write fexpedicao;
  end;

var
  frmExpSeparacao: TfrmExpSeparacao;

implementation

uses uteis, InicioDB, uCadastroFrases;
{$R *.dfm}

procedure TfrmExpSeparacao.btnCancelarClick(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TfrmExpSeparacao.btnConfirmarClick(Sender: TObject);
var
  almx : string ;
  qtdeExiste : integer;
  clone : TClientDataSet;
begin
  inherited;

  if cdsItensSeparar.State in dsEditModes then
    cdsItensSeparar.post;
  if cdsItensSeparar.FieldByName('TotalSele').Value = 0  then
     raise Exception.Create('Não foi separado nada');

   clone := TClientDataSet.Create(Self);
   try
     clone.CloneCursor(cdsItensSeparar,true);
     clone.Filter := 'PRF_FALTA <> PRF_SELECIONADA ';
     clone.Filtered := True;
     qtdeExiste := clone.RecordCount ;

   finally
      FreeAndNil(clone);
   end;
   if (MessageDlg('Desejar concluir a separação?', mtConfirmation, [mbYes, mbNo], 0) in [mrNo]) then
    abort;

  cdsItensSeparar.Filtered:=False;
  cdsItensSeparar.Filter := 'PRF_SELECIONADA >0';
  cdsItensSeparar.Filtered := True;
  expedicao:= IncluirExpedicao;
  ExecSql(' INSERT INTO HISTORICO_EXPE (HIS_REGISTRO, EMP_CODIGO, SITEXP,DATASIT,USU_CODIGO, PED_CODIGO, OBSERVACAO) '+
     ' VALUES (GEN_ID(GEN_HIST_EXPE,1),' +QuotedStr(femp_codigo) + ',  ''SEP'',CURRENT_TIMESTAMP,'+DBInicio.Usuario.CODIGO+
     ','+QuotedStr(ped_codigo)  + ','+QuotedStr('SEPARACAO EXPEDIÇÃO Nº'+IntToStr(expedicao))+  ')');
  if qtdeExiste>0 then
     ExecSql(' update PED0000 set sitexp = '+QuotedStr('DPA')  +'WHERE PED_CODIGO = '+QuotedStr(ped_codigo) +
           ' AND EMP_CODIGO = ' +QuotedStr(femp_codigo))  //DEPACHO PARCIAL
  else
   ExecSql(' update PED0000 set sitexp = '+QuotedStr('DEP')  +'WHERE PED_CODIGO = '+QuotedStr(ped_codigo) +
           ' AND EMP_CODIGO = ' +QuotedStr(femp_codigo));

  cdsItensSeparar.first;
  while not cdsItensSeparar.Eof do
  begin
    IncluirItem(expedicao,cdsItensSepararprf_registro.AsInteger,cdsItensSepararPRF_SELECIONADA.AsFloat);


    if (dbInicio.Empresa.wAtualizaEstoque = 'E')  AND (cdsItensSepararPRF_FLAG_ATUALIZA_ESTOQUE.AsString = 'S' ) then
    begin
      almx:= BuscaUmDadoSqlAsString('select AMX_CODIGO_DESTINO from PED_IT01 where  prf_registro = '+IntToStr(cdsItensSepararprf_registro.AsInteger) );

      KardexLancamento( IntToStr(expedicao),
                        'EXP',
                        almx,
                        '',
                        cdsItensSepararPRD_CODIGO.AsString,
                        '',
                        '',
                        'S',
                        '',
                        '',
                        'VENDA DO ITEM - EMPENHADO PELA EXPEDICAO',
                        Now,
                        cdsItensSepararPRF_SELECIONADA.AsFloat,
                        IntToStr(expedicao),
                        '',
                        0,
                        '',
                        '',
                        '',
                        cdsItensSepararPRD_REFER.AsString);
                        ;
    end;
    cdsItensSeparar.Next;
  end;
  cdsItensSeparar.Filtered:= False;
  ModalResult := mrOk;
end;

procedure TfrmExpSeparacao.cdsItensSepararAfterScroll(DataSet: TDataSet);
begin
  inherited;
  CdsSaldos.DisableControls;
  CdsSaldos.Close;
  if (not DataSet.isEmpty) then
  begin
    qSaldos.CommandText := 'SELECT * FROM pCd_kardex_saldo(' + QStr(dbInicio.empresa.EMP_CODIGO) + ',' + qStr(cdsItensSepararPRD_CODIGO.AsString) + ',null)';
    CdsSaldos.Open;
  end;
  CdsSaldos.EnableControls;
end;

procedure TfrmExpSeparacao.cdsItensSepararPRF_SELECIONADAValidate(Sender: TField);
begin
  inherited;
  if sender.AsFloat > cdsItensSepararPRF_FALTA.AsFloat then
    raise Exception.Create('Quantidade digitada maior do que falta');
end;

procedure TfrmExpSeparacao.DBGrid1DrawDataCell(Sender: TObject; const Rect: TRect; Field: TField; State: TGridDrawState);
begin
  inherited;
  if Field.Name = 'PRF_SELECIONADA' then
     TFloatField(Field).DisplayFormat := '###,###,##0.000';

end;

procedure TfrmExpSeparacao.FormDestroy(Sender: TObject);
begin
  inherited;
   frmExpSeparacao := nil;
end;

procedure TfrmExpSeparacao.FormShow(Sender: TObject);
begin
  inherited;
  femp_codigo := cdsItensSepararEMP_CODIGO.AsString;
  labelPedido.Caption := 'Pedido de venda nº: '+ ped_codigo;
  labelCliente.Caption := 'Cliente : '+ cliente;
  Memo1.Clear;
   horaEnvio.DateTime := now;
end;

function TfrmExpSeparacao.IncluirExpedicao: Integer;
var expedicao : integer;
    sql : string;
    ped_reg : integer;
    ano, mes, dia : word;
    dataenvio : string;
begin
  try
    if dtEnvio.Date <> 0  then
    begin
       DecodeDate(dtEnvio.Date,ano,mes,dia);
       dataenvio:= strzero(ano,4)+'-'+strzero(mes,2)+'-'+strzero(dia,2) +' '+TimeToStr(horaEnvio.DateTime);
    end;

    ped_reg :=  BuscaUmDadoSqlAsInteger('select PED_REGISTRO from ped0000 where ped_codigo = '+QuotedStr(ped_codigo) +' and emp_codigo = '+QuotedStr(femp_codigo)  );
    expedicao:= GetNextSequence('GEN_EXPEDICAO');
    sql:= ' INSERT INTO EXPEDICAO (EXP_CODIGO, EMP_CODIGO, EXP_DATAABERTURA, EXP_DATAENCERRA, EXP_SITUACAO, USU_CODIGO, EXP_DATAENVIO, '+
          ' PED_REGISTRO, EXP_OBSERVACAO) '+
          ' VALUES('+IntToStr(expedicao) + ',' + //exp_codigo
                   QuotedStr(femp_codigo) +','+ //emp_codigo
                   DateToSQL(DtAbertura.Date) +','+ // dataabertura
                   DateToSQL(dtEncerramento.Date) + ','+ //data encerramento
                   QuotedStr('F') +','+
                   dbinicio.usuario.CODIGO + ','+
                   QuotedStr(dataenvio)+','+
                   IntToStr(ped_reg)+','+
                   QuotedStr(COPY(Memo1.Text,1,100)) +
                  ')';
    ExecSql(sql);
    result :=expedicao
  except on E: Exception do
  begin
    result := 0 ;
    raise;
  end;
  end;
end;

procedure TfrmExpSeparacao.IncluirItem (const expedicao, PRF_REGISTRO : Integer; const qtde : Double) ;
var sql :string;
begin
  try
     sql := ' INSERT INTO EXPEDICAO_ITEM ( EXP_CODIGO, PRF_REGISTRO, EXI_QTDE) '+
            '  VALUES('+IntToStr(expedicao) +','+
                        IntToStr(prf_registro) + ','+
                        FloatToSQL(qtde) +
                      ')';
     ExecSql(sql);
     sql := 'update PED_IT01 set PRF_QTDE_EXPEDIDOS =  coalesce(PRF_QTDE_EXPEDIDOS,0) + '+FloatToSQL(qtde)+
            ' where prf_registro = '+  IntToStr(prf_registro) ;
     ExecSql(sql);
  except on E: Exception do
    begin
      raise;
    end;
  end;
end;

procedure TfrmExpSeparacao.SpeedButton3Click(Sender: TObject);
begin
  inherited;
   FrmCadastroObservacao := TFrmCadastroObservacao.Create(Application);
   try
      FrmCadastroObservacao.memo := Memo1;
      FrmCadastroObservacao.FormStyle := fsNormal;
      FrmCadastroObservacao.Visible := false;
      FrmCadastroObservacao.ShowModal;
   finally
      FrmCadastroObservacao :=Nil;
   end;
end;

end.
