unit copiarEngenharia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBForm, Data.DBXFirebird, Data.FMTBcd, Data.DB, Data.SqlExpr, ACBrEnterTab, ACBrBase, ACBrCalculadora, SgDbSeachComboUnit, Vcl.StdCtrls;

type
  TfrmCopiarEngenharia = class(TfrmBaseDB)
    Label1: TLabel;
    edProdutoCodigo: TEdit;
    cbReferencia: TSgDbSearchCombo;
    qProduto: TSQLQuery;
    qProdutoPRD_CODIGO: TStringField;
    qProdutoPRD_REFER: TStringField;
    qProdutoPRD_DESCRI: TStringField;
    qProdutoPRD_CODBARRA: TStringField;
    qProdutoPRD_PRODSERV: TStringField;
    qProdutoPRD_UND: TStringField;
    qProdutoLIN_DESCRI: TStringField;
    qProdutoPRD_PVENDA: TFMTBCDField;
    btnConfirmar: TButton;
    btnCancelar: TButton;
    procedure btnCancelarClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure edProdutoCodigoExit(Sender: TObject);
    procedure edProdutoCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cbReferenciaButtonClick(Sender: TObject);
    procedure cbReferenciaSelect(Sender: TObject);
  private
    fprd_referOrig, fprd_codigoOrig :string;
  public
    property Prd_referOrig : string read fprd_referOrig write fprd_referOrig;
    property Prd_codigoOrig : string read fprd_codigoOrig write fprd_codigoOrig;
  end;

var
  frmCopiarEngenharia: TfrmCopiarEngenharia;

implementation

uses uteis, Prd0006;
{$R *.dfm}

procedure TfrmCopiarEngenharia.btnCancelarClick(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TfrmCopiarEngenharia.btnConfirmarClick(Sender: TObject);
var vcodigoOrig , vcodigoDest: string;
 icodEng, icodEsp : integer;
begin
  inherited;
  Screen.Cursor:=crSqlWait;
  try
    if cbReferencia.idRetorno = '' then
       GeraException('Selecione o produto destino.');

    if cbReferencia.idRetorno = Prd_referOrig then
      GeraException('Creio que há algo errado: O produto de origem é igual o destino.');

    qaux.Close;
    qAux.SQL.Clear;
    qAux.SQL.Text := 'Select Count(*) conta from ftc_it01 FTC where FTC.prd_refer = '+QuotedStr(cbReferencia.idRetorno)   ;
    qaux.Open;

    if qAux.FieldByName('conta').AsInteger  <=0 then
       GeraException('O produto não tem ficha técnica.');

    qAux.close;
    qaux.SQL.Clear;
    qaux.SQL.Text :='select count(*) conta from ENGENHARIA_PROCESSO ep inner join PRD0000 pr on (pr.prd_codigo = ep.prd_codigo) where prd_refer = '+ QuotedStr(Prd_referOrig) ;
    qaux.Open;
    if qAux.FieldByName('conta').AsInteger  <=0 then
       GeraException('O produto de origem não possui engenharia.');

    qAux.close;
    qaux.SQL.Clear;
    qaux.SQL.Text :='select count(*) conta from ENGENHARIA_PROCESSO ep inner join PRD0000 pr on (pr.prd_codigo = ep.prd_codigo) where prd_refer = '+ QuotedStr(cbReferencia.idRetorno) ;
    qaux.Open;
    if qAux.FieldByName('conta').AsInteger > 0  then
      if (MessageDlg('O produto de destino já possui uma engenharia. Deseja'+#13+#10+
                     ' excluir a atual e substituir pela copia ? no caso de  '+#13+#10+
                     ' substituição não afetará as que já foram para produção.', mtConfirmation, [mbYes, mbNo], 0) in [mrNo, mrNone]) then
             exit;

    qaux.Close;
    qAux.SQL.Clear;
    qAux.SQL.Text := 'Select prd_codigo from PRD0000 where prd_refer = '+QuotedStr(cbReferencia.idRetorno)   ;
    qaux.Open;
    vcodigoDest := qaux.FieldByName('prd_codigo').AsString;


    vcodigoOrig := Prd_codigoOrig;
    if Prd_codigoOrig ='' then
    begin
      qAux.close;
      qaux.SQL.Clear;
      qaux.SQL.Text :='select first 1 prd_codigo from prd0000 where prd_refer = '+  QuotedStr(Prd_referOrig) ;
      qaux.Open;
      vcodigoOrig := qaux.FieldByName('prd_codigo').AsString;
    end;

   try
    qaux.close;
    qaux.sql.clear;
    qaux.sql.text := 'SELECT ENG_CODIGO, PRD_CODIGO,ope_codigo,sequencia, eqp_codigo, TEMPO_ESTIMADO from ENGENHARIA_PROCESSO ep '+
                     ' WHERE PRD_CODIGO = '+quotedstr(vcodigoOrig);
    qAux.open;
    qAux.First ;
    BeginTransaction;
    ExecSql(' DELETE FROM ESPECIFICACOES WHERE EXISTS (SELECT 1 FROM ENGENHARIA_PROCESSO EP WHERE EP.ENG_CODIGO = ESPECIFICACOES.ENG_CODIGO AND PRD_CODIGO = '+ quotedstr(vcodigoDest) +')');
    ExecSql(' DELETE FROM ENGENHARIA_PROCESSO WHERE PRD_CODIGO = '+ quotedstr(vcodigoDest));

    while not qaux.Eof do
    begin
      icodEng:= GetNextSequence('GEN_ENGENHARIA_PROCESSO');
      ExecSql(' INSERT INTO ENGENHARIA_PROCESSO (eng_codigo, prd_codigo,ope_codigo,sequencia, eqp_codigo, TEMPO_ESTIMADO)' +
             ' VALUES (' + IntToStr(icodEng)+ ', ' + QuotedStr( vcodigoDest ) +', '+ iif(qAux.FieldByName('ope_codigo').AsInteger=0,'NULL',inttostr(qAux.FieldByName('ope_codigo').AsInteger)) + ', '+
             inttostr(qAux.FieldByName('sequencia').AsInteger)+ ',' +iif(qAux.FieldByName('eqp_codigo').AsInteger=0,'NULL', inttostr(qAux.FieldByName('eqp_codigo').AsInteger)  ) + ', '+
             inttostr(qAux.FieldByName('TEMPO_ESTIMADO').AsInteger) +') ');
     qAux2.close;
     qaux2.SQL.Clear;
     qaux2.SQL.Text := 'SELECT esp_codigo, esp_nome,esp_padroes, ENG_CODIGO, ESP_COL1,ESP_COL2, ESP_COL3, ESP_COL4, ESP_COL5, ESP_COL6, ESP_COL7 FROM ESPECIFICACOES '+
                       ' WHERE ENG_CODIGO ='+ IntToStr(qaux.FieldByName('ENG_CODIGO').AsInteger);
     qaux2.Open;
     qaux2.First;
     while not qaux2.Eof do
     begin
       icodEsp := GetNextSequence('GEN_ESPECIFICACOES');
       ExecSql(' INSERT INTO ESPECIFICACOES (esp_codigo, esp_nome,esp_padroes, ENG_CODIGO, ESP_COL1,ESP_COL2, ESP_COL3, ESP_COL4, ESP_COL5, ESP_COL6, ESP_COL7) ' +
               ' VALUES (' +IntToStr(icodEsp)+','+ QuotedStr(qaux2.FieldByName('esp_nome').AsString)+','+QuotedStr(qaux2.FieldByName('esp_padroes').AsString)+', '+
               IntToStr(icodEng)+ ', '+   QuotedStr(qaux2.FieldByName('ESP_COL1').AsString)+', '+
               QuotedStr(qaux2.FieldByName('ESP_COL2').AsString)+', '+ QuotedStr(qaux2.FieldByName('ESP_COL3').AsString)+', '+
               QuotedStr(qaux2.FieldByName('ESP_COL4').ASSTRING)+', '+ QuotedStr(qaux2.FieldByName('ESP_COL5').AsString)+', '+
                QuotedStr(qaux2.FieldByName('ESP_COL6').AsString)+', '+ QuotedStr(qaux2.FieldByName('ESP_COL7').AsString)+ ')');
       qAux2.Next;
     end;
     qAux.Next;
    end;
     CommitTransaction;
     Aviso('Copiado com sucesso.');
     close;
   except
   on e:exception do
     begin
      RollBackTransaction;
      raise Exception.Create('Erro ocorreu :'+e.Message);
     end;
   end;

  finally
    Screen.Cursor:= crDefault;
  end;

end;

procedure TfrmCopiarEngenharia.cbReferenciaButtonClick(Sender: TObject);
begin
  inherited;
   FormProdutoGrid := TFormProdutoGrid.Create(Application);
   try
      FormProdutoGrid.cbFicha.Checked := True;
      FormProdutoGrid.TAG := 4;
      FormProdutoGrid.ShowModal;
      if FormProdutoGrid.ModalResult=mrOk then
         cbReferencia.idRetorno := FormProdutoGrid.ReferRetorno;

   finally
          FreeAndNil( FormProdutoGrid );
   end;
end;

procedure TfrmCopiarEngenharia.cbReferenciaSelect(Sender: TObject);
begin
  inherited;
  if cbReferencia.IdRetorno <> ''  then
  begin
    edProdutoCodigo.Text := cbReferencia.IdRetorno;

  end
  else
  begin
   cbReferencia.Clear;
   edProdutoCodigo.Clear;

  end;

end;

procedure TfrmCopiarEngenharia.edProdutoCodigoExit(Sender: TObject);
begin
  inherited;
  if edProdutoCodigo.Text <> '' then
  begin
     cbReferencia.idRetorno := edProdutoCodigo.Text;
     if cbReferencia.idRetorno = '' then
        GeraException('Produto não localizado')  ;

  end
  else
  begin
   cbReferencia.Clear;
   edProdutoCodigo.Clear;

  end;
end;

procedure TfrmCopiarEngenharia.edProdutoCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F4 then
    cbReferencia.Button.Click;
end;

end.
