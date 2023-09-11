unit uVinculacaoIndustrializacaoRetorno;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, BaseDbEstoqueForm,
  Dialogs, StdCtrls, Buttons, SqlExpr,Provider, DB, DBClient, DBLocal,
  DBLocalS, Grids, DBGrids, {uProcedimentos,} Mask,  rxToolEdit, DBCtrls,
  Data.DBXFirebird, SimpleDS, Iniciodb, Data.FMTBCd, ACBrEnterTab, ACBrBase, ACBrCalculadora, Vcl.ExtCtrls, JvExMask, JvToolEdit, Vcl.Menus;

type
  TFrmVinculacaoIndustrializacaoRetorno = class(TFrmBaseDbEstoque)
    GroupBox1: TGroupBox;
    dbgrdNotasDisponveis: TDBGrid;
    SqlCdsNotasDisponiveis: TClientDataSet;
    SqlCdsNotasDisponiveisENF_NOTANUMBER: TStringField;
    SqlCdsNotasDisponiveisENF_MODELO_NF: TStringField;
    SqlCdsNotasDisponiveisENF_SERIE: TStringField;
    SqlCdsNotasDisponiveisENF_EMISSAO: TDateField;
    SqlCdsNotasDisponiveisFOR_RAZAO: TStringField;
    SqlCdsNotasDisponiveisENF_CFOP: TStringField;
    SqlCdsNotasDisponiveisPRD_REFER: TStringField;
    SqlCdsNotasDisponiveisPRD_DESCRI: TStringField;
    SqlCdsNotasDisponiveisENF_QTDE: TFMTBCdField;
    SqlCdsNotasDisponiveisENF_QUANTIDADE_IND_RETORNO: TFMTBCdField;
    SqlCdsNotasDisponiveisENF_PRECO: TFMTBCdField;
    SqlCdsNotasDisponiveisAMX_CODIGO: TStringField;
    SqlCdsNotasDisponiveisAMX_DESCRI: TStringField;
    dsNotaDisponivel: TDataSource;
    SqlCdsNotasDisponiveisENF_REGISTRO: TIntegerField;
    SqlCdsNotasDisponiveisSelecao: TBooleanField;
    BitConfirmar: TBitBtn;
    BitCancelar: TBitBtn;
    SqlCdsProduto: TClientDataSet;
    SqlCdsProdutoPRD_CODIGO: TStringField;
    SqlCdsProdutoPRD_PCUSTO: TFMTBCdField;
    SqlCdsProdutoPRD_REFER: TStringField;
    SqlCdsProdutoPRD_DESCRI: TStringField;
    SqlCdsProdutoPRD_CODBARRA: TStringField;
    SqlCdsProdutoPRD_CODORIGINAL: TStringField;
    SqlCdsProdutoPRD_PVENDA: TFMTBCdField;
    SqlCdsProdutoPRD_PRODSERV: TStringField;
    SqlCdsProdutoPRD_CUSTOCOMIPI: TFMTBCdField;
    SqlCdsProdutoPRD_MARGEMVENDA: TFMTBCdField;
    SqlCdsProdutoLIN_DESCRI: TStringField;
    SqlCdsProdutoPRD_UND: TStringField;
    SqlCdsProdutoPRD_ORIGEM: TIntegerField;
    SqlCdsProdutoPTI_SIGLA: TStringField;
    SqlCdsNotasDisponiveisPRD_CODIGO: TStringField;
    SqlCdsNotasDisponiveisENF_IPIALIQ: TFMTBCdField;
    SqlCdsNotasDisponiveisENF_VLSUBST: TFMTBCdField;
    SqlCdsNotasDisponiveisQuantidadeTmp: TFloatField;
    grpFiltro: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edtNotaFiscal: TEdit;
    edtFornecedor: TEdit;
    BitLocalizarNota: TBitBtn;
    Label5: TLabel;
    edtReferenciaDescricao: TEdit;
    GroupBox2: TGroupBox;
    dbmmo1: TDBMemo;
    SqlCdsNotasDisponiveisENF_DADOS_ADICIONAIS: TBlobField;
    SqlCdsNotasDisponiveisTipoIndustrializacaoCodigo: TIntegerField;
    SqlCdsNotasDisponiveisTipoIndustrializacaoDescricao: TStringField;
    qSqlCdsProduto: TSQLQuery;
    qSqlCdsNotasDisponiveis: TSQLQuery;
    DspSqlCdsProduto: TDataSetProvider;
    dspSqlCdsNotasDisponiveis: TDataSetProvider;
    DataDe: TJvDateEdit;
    DataAte: TJvDateEdit;
    DBMemo1: TDBMemo;
    SqlCdsNotasDisponiveisENF_DADOS_ADICIONAIS_FISCO: TBlobField;
    SqlCdsNotasDisponiveisENF_PESO_ENTRADA: TFMTBCDField;
    SqlCdsNotasDisponiveisPESOTOTAL: TFMTBCDField;
    SqlCdsNotasDisponiveisENF_UCOM: TStringField;
    pmNotasDisponiveis: TPopupMenu;
    SelecinarTodos1: TMenuItem;
    SqlCdsNotasDisponiveisENF_OBS_INDUST: TMemoField;
    SqlCdsProdutoPRDC_REFERENCIA: TStringField;
    DesmarcarTodos1: TMenuItem;
    procedure Bit_SairClick(Sender: tObject);
    procedure dbgrdNotasDisponveisDblClick(Sender: tObject);
    procedure dbgrdNotasDisponveisKeyPress(Sender: tObject; var Key: Char);
    procedure FormShow(Sender: tObject);
    procedure dbgrdNotasDisponveisDrawColumnCell(Sender: tObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure BitCancelarClick(Sender: tObject);
    procedure BitConfirmarClick(Sender: tObject);
    procedure BitLocalizarNotaClick(Sender: tObject);
    procedure SelecionarTodos1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtNotaFiscalExit(Sender: TObject);
    procedure DesmarcarTodos1Click(Sender: TObject);
  private
    { Private declarations }
    procedure ConsultaDisponiveis;
    procedure Vincular;
    procedure Seleciona;
    var multiSelecao: Boolean;
  public
    { Public declarations }
    sPrdCodigo, iRegistroPedidoItem, sFornecedorCnpj : String;
    rQuantidade:Real;
  end;

var
  FrmVinculacaoIndustrializacaoRetorno: TFrmVinculacaoIndustrializacaoRetorno;

implementation

uses
  Uteis, DataCad, Men0001, RWFunc, uPedido, uPedidoDAO,
  uVinculacaoIndustrializacaoRetornoVincula, uVinculacaoCoresRetorno;

{$R *.dfm}

procedure TFrmVinculacaoIndustrializacaoRetorno.Bit_SairClick(
  Sender: tObject);
begin
  Close;
end;


procedure TFrmVinculacaoIndustrializacaoRetorno.ConsultaDisponiveis;
var
   sCondicao : string;
begin
  sCondicao := '';
  //Filtro
  if (Trim(edtNotaFiscal.Text) <> '') then
    begin
      sCondicao := sCondicao+ ' and t2.enf_notanumber like '+QuotedStr('%'+Trim(edtNotaFiscal.Text));
    end;
  if (Trim(edtFornecedor.Text) <> '') then
    begin
      sCondicao := sCondicao+ ' and T3.for_razao like '+QuotedStr('%'+Trim(edtFornecedor.Text)+'%');
    end;
  if (Trim(edtReferenciaDescricao.Text) <> '') then
    begin
      sCondicao := sCondicao+ ' and (t1.prd_refer like '+QuotedStr('%'+Trim(edtReferenciaDescricao.Text)+'%');
      sCondicao := sCondicao+ ' or t1.prd_descri like '+QuotedStr('%'+Trim(edtReferenciaDescricao.Text)+'%')+')';
    end;
  if (DataDe.Text <> '  /  /    ') then
    begin
      sCondicao := sCondicao+ ' and t2.enf_emissao >= '+QuotedStr(DataAmericana(DataDe.Text));
    end;
  if (DataAte.Text <> '  /  /    ') then
    begin
      sCondicao := sCondicao+ ' and t2.enf_emissao <= '+QuotedStr(DataAmericana(DataAte.Text));
    end;



  SqlCdsNotasDisponiveis.Close;
  qSqlCdsNotasDisponiveis.sql.Text := 'SELECT t1.prd_codigo, t1.ENF_REGISTRO, t1.enf_ipialiq, t1.enf_vlsubst, '+
                                        '    CASE ' +
                                        '      WHEN t1.ENF_UCOM = t1.ENF_UTRIB THEN ' +
                                        '        CASE WHEN t1.ENF_PESO_ENTRADA > 0 THEN t1.ENF_PESO_ENTRADA ' +
                                        '        ELSE ' +
                                        '          CAST ( (ENF_PESO_TOTAL / CAST( ' +
                                        '          (SELECT SUM(CAST(T3.enf_qtde  * T3.ENF_PRECO AS NUMERIC(18,5)) ) FROM enf_it01 T3 WHERE T3.enf_it_notanumber = T1.enf_it_notanumber AND T3.for_codigo = T1.for_codigo) AS numeric(18,5) ) * ' +
                                        '          (SELECT CAST(T3.enf_qtde * T3.ENF_PRECO AS NUMERIC(18,5)) FROM enf_it01 T3 WHERE t1.ENF_REGISTRO = t3.ENF_REGISTRO AND  T3.enf_it_notanumber = T1.enf_it_notanumber AND T3.for_codigo = T1.for_codigo) ' +
                                        '          ) AS NUMERIC (18,5)) ' +
                                        '          / t1.enf_qtde ' +
                                        '        END ' +
                                        '      ELSE (t1.ENF_PESO_ENTRADA  / t1.enf_qtde) ' +
                                        '    END AS ENF_PESO_ENTRADA , ' +
                                        '    CASE ' +
                                        '      WHEN t1.ENF_UCOM = t1.ENF_UTRIB THEN ' +
                                        '           CASE WHEN (t1.ENF_PESO_ENTRADA > 0) AND (ENF_UCOM = ''KG'') THEN t1.ENF_PESO_ENTRADA ' +
                                        '            WHEN (t1.ENF_PESO_ENTRADA > 0) AND (ENF_UCOM <> ''KG'') THEN t1.ENF_PESO_ENTRADA * T1.enf_qtde ' +
                                        '            ELSE ' +
                                        '              CAST((ENF_PESO_TOTAL / ' +
                                        '              (SELECT SUM(T3.enf_qtde  * CAST(T3.ENF_PRECO AS integer) ) FROM enf_it01 T3 WHERE T3.enf_it_notanumber = T1.enf_it_notanumber AND T3.for_codigo = T1.for_codigo) ) * ' +
                                        '              (SELECT T3.enf_qtde * CAST(T3.ENF_PRECO AS integer) FROM enf_it01 T3 WHERE t1.ENF_REGISTRO = t3.ENF_REGISTRO AND  T3.enf_it_notanumber = T1.enf_it_notanumber AND T3.for_codigo = T1.for_codigo) AS NUMERIC(18,5)) ' +
                                        '           END ' +
                                        '      WHEN (t1.ENF_PESO_ENTRADA > 0) AND (t1.ENF_UCOM <> t1.ENF_UTRIB) AND  (ENF_UTRIB = ''KG'') THEN t1.ENF_PESO_ENTRADA  ' +
                                        '      ELSE (t1.ENF_PESO_ENTRADA / t1.enf_qtde) ' +
                                        '    END AS PesoTotal , ' +
                                        '    t2.enf_notanumber, '+
                                        '    t2.enf_modelo_nf, '+
                                        '    t2.enf_serie, '+
                                        '    t2.enf_emissao, '+
                                        '    T3.for_razao, '+
                                        '    T1.enf_cfop, '+
                                        '    t1.prd_refer, '+
                                        '    t1.prd_descri, '+
                                        '    t1.enf_qtde, '+
                                        '    t1.enf_quantidade_ind_retorno, '+
                                        '    t1.enf_preco, '+
                                        '    t1.amx_codigo, '+
                                        '    t4.amx_descri, ' +
                                        '    t2.enf_dados_adicionais, ' +
                                        '    t1.enf_ucom, ' +
                                        '    t2.ENF_OBS_INDUST, ' +
                                        '    t2.enf_dados_adicionais_FISCO '+
                                        'FROM '+
                                        'enf_it01 T1 '+
                                        'join enf0001 t2 on (t2.enf_notanumber = t1.enf_it_notanumber and t2.for_codigo = t1.for_codigo and T2.enf_industrializacao = ''S'') '+
                                        'JOIN for0000 T3 ON (T3.for_codigo = T2.for_codigo ) '+
                                        'left join almox0000 t4 on (t4.amx_codigo = t1.amx_codigo) '+
                                        'WHERE t1.enf_qtde > t1.enf_quantidade_ind_retorno '+sCondicao+
                                        ' order by t2.enf_emissao, t2.enf_notanumber desc';
  if DBInicio.IsDesenvolvimento then
     CopyToClipBoard ( qSqlCdsNotasDisponiveis.sql.Text );

  SqlCdsNotasDisponiveis.Open;

end;

procedure TFrmVinculacaoIndustrializacaoRetorno.dbgrdNotasDisponveisDblClick(
  Sender: tObject);
begin
  //Vincular;
  if multiSelecao and (DBInicio.GetParametroSistema('PMT_RETORNO_POR_CORES') = 'S') then
  begin
    Uteis.Aviso('Os itens foram marcados em grupo, utilize o botão confirmar para escolher a cor dos itens');
    exit;
  end;
  Seleciona;
end;

procedure TFrmVinculacaoIndustrializacaoRetorno.Vincular;
begin
     if (uteis.confirmacao ( 'Confirma a vinculação deste item ?')=mrYes) then
     begin
         DataCadastros.sqlUpdate2.Close;
         DataCadastros.sqlUpdate2.sql.text := 'INSERT INTO PED_IT01_INDUST (PRF_REGISTRO,ENF_REGISTRO,PEDIND_QUANTIDADE) VALUES ('+iRegistroPedidoItem+','+SqlCdsNotasDisponiveisENF_REGISTRO.AsString+','+ValorAmericano(FloatToStr(rQuantidade))+')';
         DataCadastros.sqlUpdate2.ExecSql;

         DataCadastros.sqlUpdate2.Close;
         DataCadastros.sqlUpdate2.sql.text := 'UPDATE ENF_IT01 SET ENF_QUANTIDADE_IND_RETORNO = ENF_QUANTIDADE_IND_RETORNO + '+ValorAmericano(FloatToStr(rQuantidade))+' WHERE ENF_REGISTRO = '+SqlCdsNotasDisponiveisENF_REGISTRO.AsString;
         DataCadastros.sqlUpdate2.ExecSql;

         Close;

     end;
end;

procedure TFrmVinculacaoIndustrializacaoRetorno.dbgrdNotasDisponveisKeyPress(
  Sender: tObject; var Key: Char);
begin
  if (Key = #13) then
    begin
      Key := #0;
      Seleciona;
    end;
end;

procedure TFrmVinculacaoIndustrializacaoRetorno.DesmarcarTodos1Click(Sender: TObject);
begin
  inherited;
  multiSelecao := False;
  if frmVinculacaoCoresRetorno <> nil then
    frmVinculacaoCoresRetorno.cdsGrade.EmptyDataSet;
  SqlCdsNotasDisponiveis.DisableControls;
  SqlCdsNotasDisponiveis.First;
  while not SqlCdsNotasDisponiveis.Eof do
  begin
    SqlCdsNotasDisponiveis.Edit;
    SqlCdsNotasDisponiveisSelecao.AsBoolean := False;
    SqlCdsNotasDisponiveisQuantidadeTmp.AsFloat := 0;
    SqlCdsNotasDisponiveisTipoIndustrializacaoCodigo.AsInteger := 0;
    SqlCdsNotasDisponiveisTipoIndustrializacaoDescricao.AsString := '';
    SqlCdsNotasDisponiveis.Post;
    SqlCdsNotasDisponiveis.Next;
  end;
  SqlCdsNotasDisponiveis.EnableControls;
end;

procedure TFrmVinculacaoIndustrializacaoRetorno.edtNotaFiscalExit(Sender: TObject);
begin
  inherited;
  BitLocalizarNota.Click;
end;

procedure TFrmVinculacaoIndustrializacaoRetorno.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if DBInicio.GetParametroSistema('PMT_RETORNO_POR_CORES') = 'S' then
  begin
    frmVinculacaoCoresRetorno.Free;
    frmVinculacaoCoresRetorno := nil;
  end;
end;

procedure TFrmVinculacaoIndustrializacaoRetorno.FormShow(Sender: tObject);
begin
  inherited;
  SqlCdsProduto.Close;

  qSqlCdsProduto.sql.text := SQLDEF('PRODUTOS',
  'SELECT pc.PRDC_REFERENCIA, t3.PTI_SIGLA, t2.lin_descri,t1.prd_margemvenda,T1.prd_codigo,' +
    ' T1.prd_und, t1.prd_origem, T1.PRD_PCUSTO, t1.PRD_CUSTOCOMIPI, T1.prd_refer, T1.prd_descri, T1.prd_codbarra, ' +
    ' T1.prd_codoriginal, T1.PRD_PVENDA,COALESCE(T1.PRD_PRODSERV,''P'') as  PRD_PRODSERV  ' +
  'FROM prd0000 T1 ' +
  ' left join prd_linha t2 on (t2.lin_codigo = t1.lin_codigo) ' +
  ' LEFT JOIN PRD0000_CODIGO pc ON (pc.PRD_CODIGO = t1.prd_codigo)' +
  ' left join PRD_TIPO t3 on (t3.PTI_CODIGO = t1.PTI_CODIGO)',
  'WHERE T1.PRD_STATUS = ''A''','','t1.') +
  ' ORDER BY T1.prd_refer';
  SqlCdsProduto.Open;
  ConsultaDisponiveis;
  edtNotaFiscal.SetFocus;
end;

procedure TFrmVinculacaoIndustrializacaoRetorno.dbgrdNotasDisponveisDrawColumnCell(
  Sender: tObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
   Check: Integer;
   R: TRect;
begin
    if (not SqlCdsNotasDisponiveis.IsEmpty) then
      begin
         if Column.FieldName = 'Selecao' then
            begin
               dbgrdNotasDisponveis.Canvas.FillRect(Rect);
               Check := 0;
               if SqlCdsNotasDisponiveisSelecao.AsBoolean then
                  Check := DFCS_CHECKED
               else
                  Check := 0;
               R:=Rect;
               InflateRect(R,-2,-2); {Diminue o tamanho do CheckBox}
               DrawFrameControl(dbgrdNotasDisponveis.Canvas.Handle,R,DFC_BUTTON, DFCS_BUTTONCHECK or Check);
            end;
      end;

end;

procedure TFrmVinculacaoIndustrializacaoRetorno.SelecionarTodos1Click(Sender: TObject);
begin
  inherited;
  multiSelecao := True;
  if frmVinculacaoCoresRetorno <> nil then
    frmVinculacaoCoresRetorno.cdsGrade.EmptyDataSet;
  SqlCdsNotasDisponiveis.DisableControls;
  SqlCdsNotasDisponiveis.First;
  while not SqlCdsNotasDisponiveis.Eof do
  begin
    SqlCdsNotasDisponiveis.Edit;
    SqlCdsNotasDisponiveisSelecao.AsBoolean := True;
    SqlCdsNotasDisponiveisQuantidadeTmp.AsFloat := SqlCdsNotasDisponiveisENF_QTDE.AsExtended - SqlCdsNotasDisponiveisENF_QUANTIDADE_IND_RETORNO.AsExtended;
    SqlCdsNotasDisponiveisTipoIndustrializacaoCodigo.AsInteger := 0;
    SqlCdsNotasDisponiveisTipoIndustrializacaoDescricao.AsString := '';
    SqlCdsNotasDisponiveis.Post;
    SqlCdsNotasDisponiveis.Next;
  end;
  SqlCdsNotasDisponiveis.EnableControls;
end;

procedure TFrmVinculacaoIndustrializacaoRetorno.Seleciona;
var
    total: double;
    tcr: TFrmVinculacaoIndustrializacaoRetornoVincula;
begin
     if (not SqlCdsNotasDisponiveis.IsEmpty) then
     begin
       if DBInicio.GetParametroSistema('PMT_RETORNO_POR_CORES') = 'S' then
       begin
          multiSelecao := False;
          if frmVinculacaoCoresRetorno = nil then
            frmVinculacaoCoresRetorno := TfrmVinculacaoCoresRetorno.Create(Self);
          frmVinculacaoCoresRetorno.lancaGrade := True;
          frmVinculacaoCoresRetorno.cdsGrade.Filtered := False;
          frmVinculacaoCoresRetorno.cdsGrade.Filter := 'ENF_REGISTRO = ' + SqlCdsNotasDisponiveisENF_REGISTRO.AsString;
          frmVinculacaoCoresRetorno.cdsGrade.Filtered := True;
          frmVinculacaoCoresRetorno.cdsGrade.First;
          total := 0;
          while not frmVinculacaoCoresRetorno.cdsGrade.Eof do
          begin
            total := total + frmVinculacaoCoresRetorno.cdsGradePEDIND_QUANTIDADE.AsFloat;
            frmVinculacaoCoresRetorno.cdsGrade.Next;
          end;

          frmVinculacaoCoresRetorno.enfRegistro :=  SqlCdsNotasDisponiveisENF_REGISTRO.AsInteger;
          frmVinculacaoCoresRetorno.edQuantidade.Value := (SqlCdsNotasDisponiveisENF_QTDE.AsExtended - SqlCdsNotasDisponiveisENF_QUANTIDADE_IND_RETORNO.AsExtended) - total;
          frmVinculacaoCoresRetorno.quantidadeTotal := frmVinculacaoCoresRetorno.edQuantidade.Value;
          frmVinculacaoCoresRetorno.quantidadeMaxima := (SqlCdsNotasDisponiveisENF_QTDE.AsExtended - SqlCdsNotasDisponiveisENF_QUANTIDADE_IND_RETORNO.AsExtended);
          frmVinculacaoCoresRetorno.lbReferencia.Caption := SqlCdsNotasDisponiveisPRD_REFER.AsString;
          frmVinculacaoCoresRetorno.lbItem.Caption := SqlCdsNotasDisponiveisPRD_DESCRI.AsString;
          frmVinculacaoCoresRetorno.ShowModal;
          if frmVinculacaoCoresRetorno.ModalResult = mrOk then
          begin
              SqlCdsNotasDisponiveis.Edit;
              SqlCdsNotasDisponiveisQuantidadeTmp.AsFloat := frmVinculacaoCoresRetorno.quantidadeRetornada;
              SqlCdsNotasDisponiveisSelecao.AsBoolean := frmVinculacaoCoresRetorno.quantidadeTotal >= 0;
              SqlCdsNotasDisponiveis.Post;
          end;
       end
       else
       begin
          tcr := TFrmVinculacaoIndustrializacaoRetornoVincula.Create(Application);
          try
             tcr.Itt_Registro:=SqlCdsNotasDisponiveisTipoIndustrializacaoCodigo.AsInteger;
             tcr.QtdRetornar:=SqlCdsNotasDisponiveisENF_QTDE.AsExtended - SqlCdsNotasDisponiveisENF_QUANTIDADE_IND_RETORNO.AsExtended;
             tcr.ShowModal;
             if tcr.ModalResult=mrOk then
             begin
                  SqlCdsNotasDisponiveis.Edit;
                  SqlCdsNotasDisponiveisTipoIndustrializacaoCodigo.AsInteger := tcr.ITT_REGISTRO;
                  SqlCdsNotasDisponiveisTipoIndustrializacaoDescricao.AsString := tcr.ITT_DESCRICAO;
                  SqlCdsNotasDisponiveisQuantidadeTmp.AsFloat:=tcr.QtdRetornar;
                  SqlCdsNotasDisponiveisSelecao.AsBoolean := (tcr.QtdRetornar <> 0);
                  SqlCdsNotasDisponiveis.Post;
             end;
          finally
                FreeAndNil(tcr) ;
          end;
       end;
      end;
end;

procedure TFrmVinculacaoIndustrializacaoRetorno.BitCancelarClick(
  Sender: tObject);
begin
  Close;
end;

procedure TFrmVinculacaoIndustrializacaoRetorno.BitConfirmarClick(
  Sender: tObject);
var
  sReferenciaProdutoSelecionada,
  sCodigoProdutoSelecionado,
  prdDescri, obsIndustrializacao, obsPedido :string;
  iRegistro,
  iRegistroItem:Integer;
  preco, retornoPorCoresQuantidade: double;
  retornoPorCores, chamaTelaCor: boolean;

begin
  retornoPorCores :=  DBInicio.GetParametroSistema('PMT_RETORNO_POR_CORES') = 'S';
  SqlCdsNotasDisponiveis.DisableControls;
  //Verifica se Selecionou algum e Filtra Selecionados
  SqlCdsNotasDisponiveis.Filtered := False;
  SqlCdsNotasDisponiveis.Filter   := 'Selecao = True';
  SqlCdsNotasDisponiveis.Filtered := True;
  //
  if (SqlCdsNotasDisponiveis.IsEmpty) then
    begin
      uteis.aviso('Selecione pelo menos um item para realizar o retorno de industrialização');
      SqlCdsNotasDisponiveis.Filtered := False;
    end
  else
    begin
      SqlCdsNotasDisponiveis.First;
      obsPedido := FrmPedido.MemoMensagemAdicionalNotaFiscal.Text + #13 + #10;


      if retornoPorCores then
        begin
               chamaTelaCor := False;
               if frmVinculacaoCoresRetorno = nil then
                 chamaTelaCor := True
               else
                 if frmVinculacaoCoresRetorno.cdsGrade.RecordCount = 0 then
                  chamaTelaCor := True;
               if chamaTelacor then
               begin
                  if frmVinculacaoCoresRetorno = nil then
                    frmVinculacaoCoresRetorno := TfrmVinculacaoCoresRetorno.Create(Self);
                  frmVinculacaoCoresRetorno.lancaGrade := False;
                  frmVinculacaoCoresRetorno.edQuantidade.Enabled := False;
                  frmVinculacaoCoresRetorno.edQuantidade.Value := 0;
                  SqlCdsNotasDisponiveis.First;
                  while not SqlCdsNotasDisponiveis.Eof do
                  begin
                    frmVinculacaoCoresRetorno.edQuantidade.Value := frmVinculacaoCoresRetorno.edQuantidade.Value + (SqlCdsNotasDisponiveisENF_QTDE.AsExtended - SqlCdsNotasDisponiveisENF_QUANTIDADE_IND_RETORNO.AsExtended);
                    SqlCdsNotasDisponiveis.Next;
                  end;
                  frmVinculacaoCoresRetorno.lbTotal.Caption := FormatFloat('###.###.###,##', frmVinculacaoCoresRetorno.edQuantidade.Value);

                  frmVinculacaoCoresRetorno.ShowModal;
                  if (frmVinculacaoCoresRetorno.ModalResult <> mrOK) or (frmVinculacaoCoresRetorno.cdsGrade.RecordCount = 0) then
                  begin
                    frmVinculacaoCoresRetorno.cdsGrade.EmptyDataSet;
                    uteis.aviso('Processo Cancelado pelo Usuário');
                    Exit;
                  end;

                  frmVinculacaoCoresRetorno.cdsGrade.EmptyDataSet;
                  SqlCdsNotasDisponiveis.First;
                  while not SqlCdsNotasDisponiveis.Eof do
                  begin
                    frmVinculacaoCoresRetorno.cdsGrade.Insert;
                    frmVinculacaoCoresRetorno.cdsGradeACO_CODIGO.AsString := frmVinculacaoCoresRetorno.cbCor.idRetorno;
                    frmVinculacaoCoresRetorno.cdsGradeACO_NOME.AsString := frmVinculacaoCoresRetorno.cbCor.Text;
                    frmVinculacaoCoresRetorno.cdsGradePEDIND_QUANTIDADE.AsFloat := SqlCdsNotasDisponiveisENF_QTDE.AsExtended - SqlCdsNotasDisponiveisENF_QUANTIDADE_IND_RETORNO.AsExtended;
                    frmVinculacaoCoresRetorno.cdsGradeENF_REGISTRO.AsInteger := SqlCdsNotasDisponiveisENF_REGISTRO.AsInteger;
                    frmVinculacaoCoresRetorno.cdsGrade.Post;
                    SqlCdsNotasDisponiveis.Next;
                  end;

               end;


        end;



      SqlCdsNotasDisponiveis.First;


      while (not SqlCdsNotasDisponiveis.Eof) do
        begin
          //Lanca Item e Cria vinculação
          //Colocado somente para segurança
            if retornoPorCores then
              begin
                     frmVinculacaoCoresRetorno.cdsGrade.Filtered := False;
                     frmVinculacaoCoresRetorno.cdsGrade.Filter := 'ENF_REGISTRO = ' + SqlCdsNotasDisponiveisENF_REGISTRO.AsString;
                     frmVinculacaoCoresRetorno.cdsGrade.Filtered := True;
                     frmVinculacaoCoresRetorno.cdsGrade.First;
                     retornoPorCoresQuantidade := 0;
                     while not frmVinculacaoCoresRetorno.cdsGrade.Eof do
                     begin
                       if multiSelecao then // seleção multipla
                          retornoPorCoresQuantidade := SqlCdsNotasDisponiveisENF_QTDE.AsExtended - SqlCdsNotasDisponiveisENF_QUANTIDADE_IND_RETORNO.AsExtended
                       else
                          retornoPorCoresQuantidade := retornoPorCoresQuantidade + frmVinculacaoCoresRetorno.cdsGradePEDIND_QUANTIDADE.AsFloat;
                       frmVinculacaoCoresRetorno.cdsGrade.Next;
                     end;
                     frmVinculacaoCoresRetorno.cdsGrade.Filtered := False;

                     sReferenciaProdutoSelecionada := SqlCdsNotasDisponiveisPRD_REFER.AsString;
                     sCodigoProdutoSelecionado := SqlCdsNotasDisponiveisPRD_CODIGO.AsString;
                     iRegistro := dbInicio.GetNextSequence('GEN_ITEM_PEDIDO');
                     if (FrmPedido.SqlCdsTipoPedidoOPV_ATESTOQUE.AsString = 'S') then
                        begin
                           //Verifica se atualiza estoque pelo pedido
                           if (dbInicio.GetParametroSistema('PMT_ATULIZA_ESTOQUE') = 'P') then
                              begin
                                 KardexLancamento(IntToStr(iRegistro),
                                                  'PED',
                                                  SqlCdsNotasDisponiveisAMX_CODIGO.AsString,
                                                  '',
                                                  SqlCdsNotasDisponiveisPRD_CODIGO.AsString,
                                                  '',
                                                  '',
                                                  FrmPedido.SqlCdsTipoPedidoOPV_TIPO.AsString,
                                                  '',
                                                  IntToStr(0),
                                                  'RETORNO INDUSTRIALIZAÇÃO',
                                                  Now,
                                                  retornoPorCoresQuantidade,
                                                  FrmPedido.EdPedidoNumero.Text,
                                                  FrmPedido.edCliente.CdS.FieldByName('CLI_CODIGO').AsString+'-'+FrmPedido.edCliente.CdS.FieldByName('CLI_RAZAO').AsString,
                                                  SqlCdsNotasDisponiveisENF_PRECO.AsFloat);
                              end;
                        end;


    //                 if SqlCdsNotasDisponiveisENF_PESO_ENTRADA.AsFloat > 0 then
    //                    preco := SqlCdsNotasDisponiveisENF_PESO_ENTRADA.AsFloat
                        // preco := SqlCdsNotasDisponiveisQuantidadeTMP.AsFloat * SqlCdsNotasDisponiveisENF_PESO_ENTRADA.AsFloat
    //                 else
                        Preco := SqlCdsNotasDisponiveisENF_PRECO.AsFloat;

                        if (DBInicio.GetParametroSistema('PMT_VINC_NF_ITEM_RETORNO') = 'S') then
                          prdDescri := SqlCdsNotasDisponiveisPRD_DESCRI.AsString + ' ' +
                                       ' # RETORNO REF NF ' + SqlCdsNotasDisponiveisENF_NOTANUMBER.AsString +
                                       ' SÉRIE '  + SqlCdsNotasDisponiveisENF_SERIE.AsString +
                                       ' EMITIDA EM ' +  SqlCdsNotasDisponiveisENF_EMISSAO.AsString
                        else
                          prdDescri := SqlCdsNotasDisponiveisPRD_DESCRI.AsString  ;

                        qAux.Close;
                        qAux.sql.text := SQLDEF('PRODUTOS',
                        'SELECT pc.PRDC_REFERENCIA ' +
                        'FROM prd0000 pr ' +
                        ' LEFT JOIN PRD0000_CODIGO pc ON (pc.PRD_CODIGO = pr.prd_codigo)' ,
                        'WHERE pr.PRD_STATUS = ''A''' +
                        ' AND pr.prd_codigo = ' + QuotedStr(SqlCdsNotasDisponiveisPRD_CODIGO.AsString),'','pr.');
                        qAux.Open;

                        iRegistroItem := GravarPedidoItem(0,
                                                       '',
                                                       FrmPedido.EdPedidoNumero.Text,
                                                       SqlCdsNotasDisponiveisPRD_CODIGO.AsString,
                                                       SqlCdsNotasDisponiveisPRD_REFER.AsString,
                                                       qAux.FieldByName('PRDC_REFERENCIA').AsString,
                                                       COPY(prdDescri,1,254),
                                                       SqlCdsNotasDisponiveisAMX_CODIGO.AsString,
                                                       '',
                                                       '',
                                                       '',
                                                       '0',
                                                       true,
                                                       false,
                                                       retornoPorCoresQuantidade,
                                                       retornoPorCoresQuantidade,
                                                       0,
                                                       preco,
                                                       preco,
                                                       preco,
                                                       0,
                                                       0,
                                                       0,
                                                       0,
                                                       0,
                                                       SqlCdsNotasDisponiveisENF_IPIALIQ.AsFloat,
                                                       SqlCdsNotasDisponiveisENF_VLSUBST.AsFloat,
                                                       0,
                                                       0,
                                                       0,
                                                       StrToInt(dbInicio.Usuario.Codigo),
                                                       0,
                                                       0,
                                                       0,
                                                       0,
                                                       0,
                                                       0,
                                                       '',
                                                       '',
                                                       iif(SqlCdsNotasDisponiveisENF_UCOM.asString = 'KG'
                                                          , SqlCdsNotasDisponiveisQuantidadeTMP.AsFloat  // pesoKG
                                                          , SqlCdsNotasDisponiveisQuantidadeTMP.AsFloat * SqlCdsNotasDisponiveisENF_PESO_ENTRADA.AsFloat
                                                       )
                                                      );


                       //Lanca Vinculação



                       frmVinculacaoCoresRetorno.cdsGrade.Filtered := False;
                       frmVinculacaoCoresRetorno.cdsGrade.Filter := 'ENF_REGISTRO = ' + SqlCdsNotasDisponiveisENF_REGISTRO.AsString;
                       frmVinculacaoCoresRetorno.cdsGrade.Filtered := True;
                       frmVinculacaoCoresRetorno.cdsGrade.First;

                       while not frmVinculacaoCoresRetorno.cdsGrade.Eof do
                       begin

                         DataCadastros.sqlUpdate2.Close;
                         DataCadastros.sqlUpdate2.sql.text := 'INSERT INTO PED_IT01_INDUST (PRF_REGISTRO, ENF_REGISTRO, PEDIND_QUANTIDADE, ACO_CODIGO ) VALUES ('+IntToStr(iRegistroItem)+',' + SqlCdsNotasDisponiveisENF_REGISTRO.AsString +','+ValorAmericano(FloatToStr(frmVinculacaoCoresRetorno.cdsGradePEDIND_QUANTIDADE.AsFloat))+ ',' +  frmVinculacaoCoresRetorno.cdsGradeACO_CODIGO.AsString  +')';
                         DataCadastros.sqlUpdate2.ExecSql;



                         frmVinculacaoCoresRetorno.cdsGrade.Next;
                       end;
                       frmVinculacaoCoresRetorno.cdsGrade.Filtered := False;

                       DataCadastros.sqlUpdate2.Close;
                       DataCadastros.sqlUpdate2.sql.text := 'UPDATE ENF_IT01 SET ENF_QUANTIDADE_IND_RETORNO = ENF_QUANTIDADE_IND_RETORNO + '+ValorAmericano(FloatToStr(retornoPorCoresQuantidade)) + ' WHERE ENF_REGISTRO = '+SqlCdsNotasDisponiveisENF_REGISTRO.AsString;
                       DataCadastros.sqlUpdate2.ExecSql;

                       DataCadastros.sqlUpdate2.Close;
                       DataCadastros.sqlUpdate2.sql.text := 'UPDATE ENF_IT01 SET ITT_REGISTRO = '+IntToStr(SqlCdsNotasDisponiveisTipoIndustrializacaoCodigo.AsInteger) + ' WHERE ENF_REGISTRO = ' + SqlCdsNotasDisponiveisENF_REGISTRO.AsString;
                       DataCadastros.sqlUpdate2.ExecSql;

                       DataCadastros.sqlUpdate2.Close;
                       DataCadastros.sqlUpdate2.sql.text := 'UPDATE PED_IT01 SET ITT_REGISTRO = ' + IntToStr(SqlCdsNotasDisponiveisTipoIndustrializacaoCodigo.AsInteger) + ' WHERE PRF_REGISTRO = ' + IntToStr(iRegistroItem);
                       DataCadastros.sqlUpdate2.ExecSql;

                       DataCadastros.sqlUpdate2.Close;
                       DataCadastros.sqlUpdate2.sql.text := 'UPDATE PED_IT01 SET ENF_REGISTRO = ' + SqlCdsNotasDisponiveisENF_REGISTRO.AsString + ' WHERE PRF_REGISTRO = ' + IntToStr(iRegistroItem);
                       DataCadastros.sqlUpdate2.ExecSql;

                       DataCadastros.sqlUpdate2.Close;
                       DataCadastros.sqlUpdate2.sql.text := 'UPDATE PED_IT01 SET PRD_UND = ' + QuotedStr(SqlCdsNotasDisponiveisENF_UCOM.asString) + ' WHERE PRF_REGISTRO = '+IntToStr(iRegistroItem);
                       DataCadastros.sqlUpdate2.ExecSql;

                       obsIndustrializacao := SqlCdsNotasDisponiveisENF_OBS_INDUST.AsString;


                      SqlCdsNotasDisponiveis.Next;
                      if (obsIndustrializacao <> SqlCdsNotasDisponiveisENF_OBS_INDUST.AsString) OR (SqlCdsNotasDisponiveis.Eof) then
                      begin
                         obsIndustrializacao := StringReplace(obsIndustrializacao, #13, ' ', [rfReplaceAll]);
                         obsIndustrializacao := StringReplace(obsIndustrializacao, #10, ' ', [rfReplaceAll]);
                         if pos(UpperCase(obsIndustrializacao), UpperCase(obsPedido)) = 0 then
                           ObsPedido := ObsPedido + #13 + #10 + obsIndustrializacao;
                      end;


              end
              else
              begin
                 sReferenciaProdutoSelecionada := SqlCdsProdutoPRD_REFER.AsString;
                 sCodigoProdutoSelecionado := SqlCdsNotasDisponiveisPRD_CODIGO.AsString;
                 iRegistro := dbInicio.GetNextSequence('GEN_ITEM_PEDIDO');
                 if (FrmPedido.SqlCdsTipoPedidoOPV_ATESTOQUE.AsString = 'S') then
                    begin
                       //Verifica se atualiza estoque pelo pedido
                       if (dbInicio.GetParametroSistema('PMT_ATULIZA_ESTOQUE') = 'P') then
                          begin
                             KardexLancamento(IntToStr(iRegistro),
                                              'PED',
                                              SqlCdsNotasDisponiveisAMX_CODIGO.AsString,
                                              '',
                                              SqlCdsNotasDisponiveisPRD_CODIGO.AsString,
                                              '',
                                              '',
                                              FrmPedido.SqlCdsTipoPedidoOPV_TIPO.AsString,
                                              '',
                                              IntToStr(0),
                                              'RETORNO INDUSTRIALIZAÇÃO',
                                              Now,
                                              SqlCdsNotasDisponiveisQuantidadeTmp.AsFloat,
                                              FrmPedido.EdPedidoNumero.Text,
                                              FrmPedido.edCliente.CdS.FieldByName('CLI_CODIGO').AsString+'-'+FrmPedido.edCliente.CdS.FieldByName('CLI_RAZAO').AsString,
                                              SqlCdsNotasDisponiveisENF_PRECO.AsFloat);
                          end;
                    end;


//                 if SqlCdsNotasDisponiveisENF_PESO_ENTRADA.AsFloat > 0 then
//                    preco := SqlCdsNotasDisponiveisENF_PESO_ENTRADA.AsFloat
                    // preco := SqlCdsNotasDisponiveisQuantidadeTMP.AsFloat * SqlCdsNotasDisponiveisENF_PESO_ENTRADA.AsFloat
//                 else
                    Preco := SqlCdsNotasDisponiveisENF_PRECO.AsFloat;

                    if (DBInicio.GetParametroSistema('PMT_VINC_NF_ITEM_RETORNO') = 'S') then
                      prdDescri := SqlCdsNotasDisponiveisPRD_DESCRI.AsString +
                                   ' # RETORNO REF NF ' + SqlCdsNotasDisponiveisENF_NOTANUMBER.AsString +
                                   ' SÉRIE '  + SqlCdsNotasDisponiveisENF_SERIE.AsString +
                                   ' EMITIDA EM ' +  SqlCdsNotasDisponiveisENF_EMISSAO.AsString
                    else
                      prdDescri := SqlCdsNotasDisponiveisPRD_DESCRI.AsString;

                    qAux.Close;
                    qAux.sql.text := SQLDEF('PRODUTOS',
                    'SELECT pc.PRDC_REFERENCIA ' +
                    'FROM prd0000 pr ' +
                    ' LEFT JOIN PRD0000_CODIGO pc ON (pc.PRD_CODIGO = pr.prd_codigo)' ,
                    'WHERE pr.PRD_STATUS = ''A''' +
                    ' AND pr.prd_codigo = ' + QuotedStr(SqlCdsNotasDisponiveisPRD_CODIGO.AsString),'','pr.');
                    qAux.Open;

                    iRegistroItem := GravarPedidoItem(0,
                                                   SqlCdsNotasDisponiveisENF_UCOM.asString,
                                                   FrmPedido.EdPedidoNumero.Text,
                                                   SqlCdsNotasDisponiveisPRD_CODIGO.AsString,
                                                   SqlCdsNotasDisponiveisPRD_REFER.AsString,
                                                   qAux.FieldByName('PRDC_REFERENCIA').AsString,
                                                   COPY(prdDescri,1,254),
                                                   SqlCdsNotasDisponiveisAMX_CODIGO.AsString,
                                                   '',
                                                   '',
                                                   '',
                                                   '0',
                                                   true,
                                                   false,
                                                   SqlCdsNotasDisponiveisQuantidadeTmp.AsFloat,
                                                   SqlCdsNotasDisponiveisQuantidadeTmp.AsFloat,
                                                   0,
                                                   preco,
                                                   preco,
                                                   preco,
                                                   0,
                                                   0,
                                                   0,
                                                   0,
                                                   0,
                                                   SqlCdsNotasDisponiveisENF_IPIALIQ.AsFloat,
                                                   SqlCdsNotasDisponiveisENF_VLSUBST.AsFloat,
                                                   0,
                                                   0,
                                                   0,
                                                   StrToInt(dbInicio.Usuario.Codigo),
                                                   0,
                                                   0,
                                                   0,
                                                   0,
                                                   0,
                                                   0,
                                                   '',
                                                   '',
                                                   iif(SqlCdsNotasDisponiveisENF_UCOM.asString = 'KG'
                                                      , SqlCdsNotasDisponiveisQuantidadeTMP.AsFloat  // pesoKG
                                                      , SqlCdsNotasDisponiveisQuantidadeTMP.AsFloat * SqlCdsNotasDisponiveisENF_PESO_ENTRADA.AsFloat
                                                   )
                                                  );


{                                                   iif(SqlCdsNotasDisponiveisENF_UCOM.asString = 'KG'
                                                      , SqlCdsNotasDisponiveisQuantidadeTMP.AsFloat  // pesoKG
                                                      , SqlCdsNotasDisponiveisQuantidadeTMP.AsFloat *
                                                          iif(DBInicio.Empresa.bPMT_INCLUIRRAPIDO, SqlCdsNotasDisponiveisENF_PESO_ENTRADA.AsFloat / SqlCdsNotasDisponiveisQuantidadeTMP.AsFloat, SqlCdsNotasDisponiveisENF_PESO_ENTRADA.AsFloat)
                                                   )}

                 //Lanca Vinculação

                 DataCadastros.sqlUpdate2.Close;
                 DataCadastros.sqlUpdate2.sql.text := 'INSERT INTO PED_IT01_INDUST (PRF_REGISTRO, ENF_REGISTRO, PEDIND_QUANTIDADE ) VALUES ('+IntToStr(iRegistroItem)+','+SqlCdsNotasDisponiveisENF_REGISTRO.AsString+','+ValorAmericano(FloatToStr(SqlCdsNotasDisponiveisQuantidadeTmp.AsFloat))+')';
                 DataCadastros.sqlUpdate2.ExecSql;

                 DataCadastros.sqlUpdate2.Close;
                 DataCadastros.sqlUpdate2.sql.text := 'UPDATE ENF_IT01 SET ENF_QUANTIDADE_IND_RETORNO = ENF_QUANTIDADE_IND_RETORNO + '+ValorAmericano(FloatToStr(SqlCdsNotasDisponiveisQuantidadeTmp.AsFloat)) + ' WHERE ENF_REGISTRO = '+SqlCdsNotasDisponiveisENF_REGISTRO.AsString;
                 DataCadastros.sqlUpdate2.ExecSql;

                 DataCadastros.sqlUpdate2.Close;
                 DataCadastros.sqlUpdate2.sql.text := 'UPDATE PED_IT01 SET ITT_REGISTRO = '+QuotedStr(SqlCdsNotasDisponiveisTipoIndustrializacaoCodigo.AsString) + ', ENF_REGISTRO = ' + IntToStr(StrToIntDef(SqlCdsNotasDisponiveisENF_REGISTRO.AsString, 0)) +  ' WHERE PRF_REGISTRO = ' + IntToStr(iRegistroItem);
                 DataCadastros.sqlUpdate2.ExecSql;

                 DataCadastros.sqlUpdate2.Close;
                 DataCadastros.sqlUpdate2.sql.text := 'UPDATE ENF_IT01 SET ITT_REGISTRO = '+QuotedStr(SqlCdsNotasDisponiveisTipoIndustrializacaoCodigo.AsString) + ' WHERE ENF_REGISTRO = ' + SqlCdsNotasDisponiveisENF_REGISTRO.AsString;
                 DataCadastros.sqlUpdate2.ExecSql;

//                 DataCadastros.sqlUpdate2.Close;
  //               DataCadastros.sqlUpdate2.sql.text := 'UPDATE ENF_IT01 SET ENF_PESO_ENTRADA = '+  FloatToSQL(SqlCdsNotasDisponiveisENF_PESO_ENTRADA.AsFloat)  + ' WHERE ENF_REGISTRO = ' + SqlCdsNotasDisponiveisENF_REGISTRO.AsString;
    //             DataCadastros.sqlUpdate2.ExecSql;



//                 if SqlCdsNotasDisponiveisENF_UCOM.asString = 'KG' then
                 begin
                   DataCadastros.sqlUpdate2.Close;
                   DataCadastros.sqlUpdate2.sql.text := 'UPDATE PED_IT01 SET PRD_UND = ' + QuotedStr(SqlCdsNotasDisponiveisENF_UCOM.asString) + ' WHERE PRF_REGISTRO = '+IntToStr(iRegistroItem);
                   DataCadastros.sqlUpdate2.ExecSql;
                 end;
                 obsIndustrializacao := SqlCdsNotasDisponiveisENF_OBS_INDUST.AsString;
                 SqlCdsNotasDisponiveis.Next;
                 if (obsIndustrializacao <> SqlCdsNotasDisponiveisENF_OBS_INDUST.AsString) OR (SqlCdsNotasDisponiveis.Eof) then
                 begin
                    obsIndustrializacao := StringReplace(obsIndustrializacao, #13, ' ', [rfReplaceAll]);
                    obsIndustrializacao := StringReplace(obsIndustrializacao, #10, ' ', [rfReplaceAll]);
                    if pos(UpperCase(obsIndustrializacao), UpperCase(obsPedido)) = 0 then
                      ObsPedido := ObsPedido + #13 + #10 + obsIndustrializacao;
                 end;

              end;
        end;
        FrmPedido.MemoMensagemAdicionalNotaFiscal.Text := obsPedido;
        SqlCdsNotasDisponiveis.Filtered := False;
        if retornoPorCores then
        begin
          frmVinculacaoCoresRetorno.Free;
          frmVinculacaoCoresRetorno := nil;
        end;
        Close;
    end;
    SqlCdsNotasDisponiveis.EnableControls;
end;

procedure TFrmVinculacaoIndustrializacaoRetorno.BitLocalizarNotaClick(
  Sender: tObject);
begin
  ConsultaDisponiveis;
end;

end.
