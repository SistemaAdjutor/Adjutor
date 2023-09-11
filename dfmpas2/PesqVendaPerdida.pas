unit PesqVendaPerdida;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBPesquisaForm, Data.DB, Data.DBXFirebird, Data.FMTBcd, Vcl.Menus, Datasnap.DBClient, Datasnap.Provider, Vcl.ExtCtrls, Data.SqlExpr, ACBrEnterTab, ACBrBase,
  ACBrCalculadora, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.Buttons, Vcl.Mask,  SgDbSeachComboUnit, JvExMask, JvToolEdit;

type
  TfrmVendaPerdidas = class(TfrmBaseDBPesquisa)
    GbCliente: TGroupBox;
    Label2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    PesqCliente: TSgDbSearchCombo;
    EdClienteCodigo: TEdit;
    pesqVendedor: TSgDbSearchCombo;
    edVendedorCodigo: TEdit;
    cbReferencia: TSgDbSearchCombo;
    edProdutoCodigo: TEdit;
    GroupBox1: TGroupBox;
    ldataInicial: TLabel;
    lDataFinal: TLabel;
    cdsBuscoPRD_REFER: TStringField;
    cdsBuscoPRD_DESCRI: TStringField;
    cdsBuscoREP_CODIGO: TStringField;
    cdsBuscoREP_RAZAO: TStringField;
    cdsBuscoCLI_CODIGO: TStringField;
    cdsBuscoCLI_RAZAO: TStringField;
    cdsBuscoPED_CODIGO: TStringField;
    cdsBuscoPVP_DATA: TSQLTimeStampField;
    cdsBuscoPVP_QUANTIDADE: TFMTBCDField;
    qProduto: TSQLQuery;
    qProdutoPRD_CODIGO: TStringField;
    qProdutoPRD_REFER: TStringField;
    qProdutoPRD_DESCRI: TStringField;
    qProdutoPRD_CODBARRA: TStringField;
    qProdutoPRD_PRODSERV: TStringField;
    qProdutoPRD_UND: TStringField;
    qProdutoLIN_DESCRI: TStringField;
    qProdutoPRD_PVENDA: TFMTBCDField;
    qCli: TSQLQuery;
    edNumeroPedido: TLabeledEdit;
    qBuscoPRD_REFER: TStringField;
    qBuscoPRD_DESCRI: TStringField;
    qBuscoREP_CODIGO: TStringField;
    qBuscoREP_RAZAO: TStringField;
    qBuscoCLI_CODIGO: TStringField;
    qBuscoCLI_RAZAO: TStringField;
    qBuscoPED_CODIGO: TStringField;
    qBuscoPVP_DATA: TSQLTimeStampField;
    qBuscoPVP_QUANTIDADE: TFMTBCDField;
    cdsBuscoPVP_REGISTRO: TIntegerField;
    qBuscoPVP_REGISTRO: TIntegerField;
    cdsBuscoPRD_PENDENTE: TFMTBCDField;
    cdsBuscoPRF_PRECO: TFMTBCDField;
    cdsBuscoESTOQUE: TFMTBCDField;
    qBuscoPRD_PENDENTE: TFMTBCDField;
    qBuscoPRF_PRECO: TFMTBCDField;
    qBuscoESTOQUE: TFMTBCDField;
    cdsBuscoTotal: TFMTBCDField;
    chkEstoque: TCheckBox;
    cdsBuscoREP_NOME: TStringField;
    qBuscoREP_NOME: TStringField;
    cdsBuscoselecionado: TBooleanField;
    miSelecionartudo: TMenuItem;
    miDesmarcartudo: TMenuItem;
    cdsBuscoAMX_CODIGO: TStringField;
    cdsBuscoPRD_CODIGO: TStringField;
    qBuscoAMX_CODIGO_DESTINO: TStringField;
    qBuscoPRD_CODIGO: TStringField;
    cdsBuscoPRF_QTDE_KIT: TLargeintField;
    qBuscoPRF_QTDE_KIT: TLargeintField;
    cdsBuscoPRF_QTDE: TFMTBCDField;
    qBuscoPRF_QTDE: TFMTBCDField;
    cdsBuscoprf_registro_vinculado: TIntegerField;
    qBuscoprf_registro_vinculado: TIntegerField;
    DataInicial: TJvDateEdit;
    DataFinal: TJvDateEdit;
    procedure FormCreate(Sender: TObject);
    procedure FiltroVendaPerdida;
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
    procedure edVendedorCodigoExit(Sender: TObject);
    procedure edProdutoCodigoExit(Sender: TObject);
    procedure edNumeroPedidoExit(Sender: TObject);
    procedure EdClienteCodigoExit(Sender: TObject);
    procedure PesqClienteSelect(Sender: TObject);
    procedure pesqVendedorSelect(Sender: TObject);
    procedure cbReferenciaSelect(Sender: TObject);
    procedure PesqClienteButtonClick(Sender: TObject);
    procedure cbReferenciaButtonClick(Sender: TObject);
    procedure EdClienteCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdClienteCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure edVendedorCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edProdutoCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edNumeroPedidoKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridDblClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure cdsBuscoCalcFields(DataSet: TDataSet);
    procedure chkEstoqueClick(Sender: TObject);
    procedure cdsBuscoFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure DBGridDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGridCellClick(Column: TColumn);
    procedure cdsBuscoselecionadoGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure miSelecionartudoClick(Sender: TObject);
    procedure miDesmarcartudoClick(Sender: TObject);
    procedure btnPesquisaClick(Sender: TObject);
  private
    procedure PadroesPesquisa;
  public
   procedure FazerTudo(const marcar: boolean);
   procedure Atender;
  end;

var
  frmVendaPerdidas: TfrmVendaPerdidas;

implementation

{$R *.dfm}

uses InicioDB, uteis, PesquisaClientesForm, Prd0006,uPedido, uPedidoDAO, BaseDbEstoqueForm, rwfunc;

procedure TfrmVendaPerdidas.Atender;
var clone : TClientDataSet;
  tcr : TfrmBaseDbEstoque;
  rQtdeAnterior, rQtdeNova, qPendenteAnterior,
  qPendenteNova, qpreciso: double;
  rSaldo: currency;
  dQtdeEstoque: double;
  stipoKardesES: string;
  dQtdeKit: double;
  squery :string;
begin
  inherited;
  if not cdsBusco.IsEmpty then
  begin
    clone := TClientDataSet.Create(Self);
    tcr := TfrmBaseDbEstoque.Create(self);
    try
      clone.CloneCursor(Cdsbusco,False,true);
      clone.Filtered := False;
      clone.Filter:= '(selecionado = true) and (estoque > 0 ) ';
      clone.Filtered := True;
      clone.First;
      if clone.IsEmpty then
        GeraException('Nenhum item foi selecionado');
      while not clone.Eof do
      begin
          rQtdeAnterior:= clone.FieldByName('PRF_QTDE').AsCurrency;
          rQtdeNova:= clone.FieldByName('PRF_QTDE').AsCurrency;
          qPendenteAnterior := clone.FieldByName('PVP_QUANTIDADE').AsCurrency;
          qpreciso := 0 ;
          dQtdeKit:= clone.FieldByName('PRF_QTDE_KIT').AsFloat;
          //busca de novo o estoque porque pode ter produto repetido na lista selecionada, e assim, o produto anteriormente pode
          // ter baixado o estoque
          rsaldo := tcr.KardexRetornaSaldo(clone.FieldByName('PRD_CODIGO').AsString , clone.FieldByName('AMX_CODIGO_DESTINO').asString, '');
          if rsaldo > 0  then
          begin
            CalculoEstoquePendente(TRUE,'A','1','1',rQtdeAnterior, rQtdeNova, qPendenteAnterior, qPendenteNova, qpreciso, rsaldo, dQtdeKit, dQtdeEstoque,stipoKardesES);
            tcr.KardexLancamento(IntToStr(clone.FieldByName('prf_registro').asInteger),
                                 'PED',
                                 clone.FieldByName('AMX_CODIGO_DESTINO').asString,
                                 '',
                                 clone.FieldByName('PRD_CODIGO').AsString,
                                 '',
                                 '',
                                 'S',
                                 '',
                                 '',//IntToStr(iRegistroLote),
                                 'ALTERAÇÃO DE ITEM - EMPENHADO PELO PEDIDO',
                                 Now,
                                 dQtdeEstoque ,
                                 clone.FieldByName('PED_CODIGO').AsString,
                                 clone.FieldByName('CLI_CODIGO').AsString+'-'+clone.FieldByName('CLI_RAZAO').AsString,
                                 clone.FieldByName('PRF_PRECO').AsFloat);
           sQuery := 'UPDATE ped_it01 SET '+
                     ' prf_qtdePend = '+ QuotedStr(ValorAmericano(FloatToStr(qPendenteNova)))+
                     ' WHERE prf_registro = '+IntToStr(clone.FieldByName('prf_registro').asInteger)+' and EMP_CODIGO = '+QuotedStr(dbInicio.Empresa.EMP_CODIGO);

           DBInicio.ExecSql(squery);
           if clone.FieldByName('prf_registro_vinculado').asInteger > 0 then
             KitsCompletos(true,clone.FieldByName('prf_registro_vinculado').asInteger)
          end;
        clone.Next;
      end;

    finally
      clone.Free;
      FreeAndNil(tcr);
    end;
  end;

end;

procedure TfrmVendaPerdidas.btnLimparClick(Sender: TObject);
begin
 // inherited;
 PadroesPesquisa;
end;

procedure TfrmVendaPerdidas.btnNovoClick(Sender: TObject);
var
    mtag: integer;
   spedido: string;
begin
  inherited;
	mtag := (sender as tComponent).Tag;

  case mtag of
   1: begin
        atender;
        btnPesquisa.Click;
      end;
   2: begin
        if not assigned(FrmPedido) then
        begin
          FrmPedido := TFrmPedido.Create(Application);
          FrmPedido.BotoesAcesso;
          if (MDIChildCount > 1) then
            SendMessage(ClientHandle, WM_MDICASCADE, 0, 0)
          else
            FrmPedido.Top := 0;
        end;
        FrmPedido.Show;
        FrmPedido.BringToFront;
       spedido:= cdsBuscoPED_CODIGO.AsString;
       FrmPedido.BuscaPedido(spedido);
      end;


  end;


end;

procedure TfrmVendaPerdidas.btnPesquisaClick(Sender: TObject);
begin
  inherited;
// teste
end;

procedure TfrmVendaPerdidas.cbReferenciaButtonClick(Sender: TObject);
begin
  inherited;
   FormProdutoGrid := TFormProdutoGrid.Create(Application);
   try
      FormProdutoGrid.ShowModal;
      if FormProdutoGrid.ModalResult=mrOk then
         cbReferencia.IdRetorno := FormProdutoGrid.ReferRetorno ;
   finally
     FreeAndNil( FormProdutoGrid );
   end;

end;

procedure TfrmVendaPerdidas.cbReferenciaSelect(Sender: TObject);
begin
  inherited;
  if cbReferencia.idRetorno <> '' then
    edProdutoCodigo.Text := cbReferencia.idRetorno
  else
  begin
   cbReferencia.Clear;
   edProdutoCodigo.Clear;

  end;
end;

procedure TfrmVendaPerdidas.cdsBuscoCalcFields(DataSet: TDataSet);
begin
  inherited;
  if not cdsBusco.IsEmpty then
    cdsBusco.FieldByName('total').AsFloat := RoundTo ((cdsBuscoPVP_QUANTIDADE.AsFloat * cdsBuscoPRF_PRECO.AsFloat),-2);
end;

procedure TfrmVendaPerdidas.cdsBuscoFilterRecord(DataSet: TDataSet; var Accept: Boolean);
begin
  inherited;
  Accept := DataSet.FieldByName('estoque').AsFloat>0

end;

procedure TfrmVendaPerdidas.cdsBuscoselecionadoGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  text := '';
end;

procedure TfrmVendaPerdidas.chkEstoqueClick(Sender: TObject);
begin
  inherited;
  cdsBusco.Filtered := chkEstoque.Checked;
end;

procedure TfrmVendaPerdidas.DBGridCellClick(Column: TColumn);
begin
  inherited;
  if not (cdsbusco.IsEmpty) and (Column.FieldName = 'selecionado') then
  begin
      if  not (cdsbusco.State in dsEditModes)  then
        cdsbusco.Edit;
     cdsBuscoselecionado.AsBoolean :=  not cdsbuscoselecionado.AsBoolean;
     cdsbusco.Post;
  end;
end;

procedure TfrmVendaPerdidas.DBGridDblClick(Sender: TObject);
begin
  inherited;
  btnConsulta.Click;
end;

procedure TfrmVendaPerdidas.DBGridDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
   R: TRect;
  Check: Integer;
begin
  inherited;
  if not cdsBusco.IsEmpty then
  begin
    if Column.FieldName = 'selecionado' then
    begin
      DBGrid.Canvas.FillRect(Rect);
      Check := 0;
      if cdsbusco.FindField('selecionado').AsBoolean then
          Check := DFCS_CHECKED
      else Check := 0;
      R:=Rect;
      TDBGrid(sender).Canvas.Font.Color :=  TDBGrid(sender).Canvas.Brush.Color;
      InflateRect(R,-2,-2); //Diminue o tamanho do CheckBox
      DrawFrameControl(DBGrid.Canvas.Handle,R,DFC_BUTTON, DFCS_BUTTONCHECK or Check);
    end
    else
    if cdsBuscoESTOQUE.AsFloat > 0  then
    begin
     DBGrid.Canvas.Font.Color := clBlue;
     DBGrid.Canvas.FillRect(rect);
     DBGrid.DefaultDrawDataCell(Rect,column.Field,state);
    end;
  end;
end;

procedure TfrmVendaPerdidas.EdClienteCodigoExit(Sender: TObject);
begin
  inherited;
  edClienteCodigo.Text:=StrZero(EdClienteCodigo.Text,5);
  if edClienteCodigo.Text<>'00000' then
  begin
      PesqCliente.idRetorno:=edClienteCodigo.Text;
      if PesqCliente.idRetorno='' then
         GeraException('Cliente não localizado com o código informado');

  end
  Else
  begin
      edClienteCodigo.clear;
      PesqCliente.Clear;
  end;
  btnPesquisa.Click;
end;

procedure TfrmVendaPerdidas.EdClienteCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F4 then
      PesqCliente.Button.Click;
end;

procedure TfrmVendaPerdidas.EdClienteCodigoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Pos(key,'1234567890'+#8)=0 then
     key := #0;
end;

procedure TfrmVendaPerdidas.edNumeroPedidoExit(Sender: TObject);
begin
  inherited;
  if edNumeroPedido.Text <> '' then
    edNumeroPedido.Text := strzero(edNumeroPedido.Text,6);
end;

procedure TfrmVendaPerdidas.edNumeroPedidoKeyPress(Sender: TObject; var Key: Char);
begin

  inherited;
  if (Key = #13) and  (edNumeroPedido.Text <> '') then
  begin
   edNumeroPedido.Text := strzero(edNumeroPedido.Text,6) ;
   btnPesquisa.Click;
  end;
end;

procedure TfrmVendaPerdidas.edProdutoCodigoExit(Sender: TObject);
begin
  inherited;
  if edProdutoCodigo.Text <> '' then
  begin
     cbReferencia.idRetorno := edProdutoCodigo.Text;
     if cbReferencia.idRetorno = '' then
        GeraException('Produto não localizado')
  end
  else
  begin
   cbReferencia.Clear;
   edProdutoCodigo.Clear;

  end;
  btnPesquisa.Click;
end;

procedure TfrmVendaPerdidas.edProdutoCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F4 then
    cbReferencia.Button.Click;
end;

procedure TfrmVendaPerdidas.edVendedorCodigoExit(Sender: TObject);
begin
  inherited;
  edVendedorCodigo.Text:=StrZero(edVendedorCodigo.Text,3);
  if edVendedorCodigo.Text<>'000' then
  begin
      pesqVendedor.idRetorno:=edVendedorCodigo.Text;
      if pesqVendedor.idRetorno='' then
         GeraException('Vendedor não localizado com o código informado');
  end
  Else
  begin
      edVendedorCodigo.clear;
      pesqVendedor.Clear;
  end;
  btnPesquisa.Click;
end;

procedure TfrmVendaPerdidas.edVendedorCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F4 then
      pesqVendedor.Button.Click;
end;

procedure TfrmVendaPerdidas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
	Action := caFree;
end;

procedure TfrmVendaPerdidas.FormCreate(Sender: TObject);
begin
  try
    inherited;
    Self.CampoID:='PRF_REGISTRO';
    Self.ProcedureFiltro:=FiltroVendaPerdida;
    self.Constraints.MinHeight:= 638;;
    self.Constraints.MinWidth:=1074;
    self.Constraints.MaxHeight:= 0;
    self.width:=1074;
    self.height:=638;
  except
   // raise; silecioso
  end;
end;

procedure TfrmVendaPerdidas.FormDestroy(Sender: TObject);
begin
  inherited;
  frmVendaPerdidas:= nil;
end;

procedure TfrmVendaPerdidas.FormShow(Sender: TObject);
begin
  try
    inherited;
    PadroesPesquisa;
    AbreTabela:=True;
    Filtro; // abre tabelas
    DBGrid.OnDrawColumnCell := DBGridDrawColumnCell;
  except
//    raise; silencioso number is out of range
  end;
end;

procedure TfrmVendaPerdidas.miDesmarcartudoClick(Sender: TObject);
begin
  inherited;
  FazerTudo(false);
end;

procedure TfrmVendaPerdidas.miSelecionartudoClick(Sender: TObject);
begin
  inherited;
  FazerTudo(true);
end;

procedure TfrmVendaPerdidas.PadroesPesquisa;
begin
  DataInicial.Date := Date-15;
  DataFinal.Date := Date;
  PesqCliente.idRetorno := '';
  pesqVendedor.idRetorno := '';
  cbReferencia.idRetorno := '';
  edNumeroPedido.Text := '';
  chkEstoque.Checked := False;
end;

procedure TfrmVendaPerdidas.PesqClienteButtonClick(Sender: TObject);
var tcr : tFrmPesquisaClientes;
begin
  inherited;
    tcr:= tFrmPesquisaClientes.Create(self);
    try
        tcr.ShowModal;
        if tcr.modalresult = mrok then
           PesqCliente.idRetorno := tcr.IDRetorno;
    finally
         FreeAndNil(tcr);
    end;
end;

procedure TfrmVendaPerdidas.PesqClienteSelect(Sender: TObject);
begin
  inherited;
  if PesqCliente.IdRetorno <> '' then
    EdClienteCodigo.Text := PesqCliente.IdRetorno
  else
  begin
   PesqCliente.Clear;
   EdClienteCodigo.Clear;

  end;
end;

procedure TfrmVendaPerdidas.pesqVendedorSelect(Sender: TObject);
begin
  inherited;
  if pesqVendedor.idRetorno <> '' then
    edVendedorCodigo.Text := pesqVendedor.idRetorno
  else
  begin
    edVendedorCodigo.Clear;
    pesqVendedor.Clear;

  end;
end;

procedure TfrmVendaPerdidas.FazerTudo(const marcar: boolean);
var clone : TClientDataSet;
begin
  inherited;
  if not cdsBusco.IsEmpty then
  begin
    clone := TClientDataSet.Create(Self);

    try
      clone.CloneCursor(Cdsbusco,False,true);
      clone.Filtered := False;
      clone.Filter:= '(ESTOQUE > 0) ';
      clone.Filtered := True;
      clone.First;
      while not clone.Eof do
      begin
        clone.Edit;
        clone.FieldByName('selecionado').AsBoolean := marcar;
        clone.Post;
        clone.Next;
      end;

    finally
      clone.Free;
    end;
  end;

end;

procedure TfrmVendaPerdidas.FiltroVendaPerdida;
begin
 with qBusco do
	begin
		sql.Clear;
		SQL.Add('SELECT VP.AMX_CODIGO_DESTINO, PR.PRD_CODIGO,  prf_registro, VP.PRD_REFER, PR.PRD_DESCRI, RE.REP_CODIGO, RE.REP_RAZAO, RE.REP_NOME, '+
            ' PRF_QTDE,  vp.PRF_QTDEPEND PVP_QUANTIDADE, CL.CLI_CODIGO, CL.CLI_RAZAO, VP.PED_CODIGO, ' +
            ' vp.PRF_DTPENDENCIA as PVP_DATA,  pr.PRD_PENDENTE, vp.pRF_PRECO,    '+
            ' COALESCE((SELECT SUM(COALESCE(kas_saldo,0)) FROM KARDEX_ALMOX_SALDO KS WHERE PRD_CODIGO = PR.PRD_CODIGO AND VP.AMX_CODIGO_DESTINO = KS.AMX_CODIGO),0) ESTOQUE, '+
            ' COALESCE((SELECT ROUND(PRF_QTDE) FROM PED_IT01 it2 WHERE it2.PRF_REGISTRO = vp.PRF_REGISTRO_VINCULADO),1) PRF_QTDE_KIT, prf_registro_vinculado '+
            ' FROM PED_IT01 vp  '+
            ' JOIN PED0000 Pe ON (Pe.PED_CODIGO = vp.PED_CODIGO)  '+
            ' JOIN PRD0000 PR ON (PR.PRD_CODIGO = VP.PRD_CODIGO)  '+
            ' JOIN REP0000 Re ON (RE.REP_CODIGO = pe.REP_CODIGO)  '+
            ' LEFT JOIN PRD_TIPO Tp on (tp.pti_codigo = pr.pti_codigo) '+
            ' JOIN CLI0000 cl ON (cl.CLI_CODIGO = pe.CLI_CODIGO)  ');
     SqlAdd(' PRF_QTDEPEND > 0' );
     if not (DBInicio.Empresa.wPMT_CONTROLA_KIT) then
       SqlAdd('PTI_SIGLA <> '+QuotedStr('KT'));
     if dbinicio.Exclusivo('ESTOQUES') then
      SqlAdd( ' vp.EMP_CODIGO = ' + QuotedStr(DBInicio.Empresa.EMP_CODIGO));
    if PesqCliente.idRetorno <> '' then
      SqlAdd( ' cl.cli_codigo =' + QuotedStr(PesqCliente.idRetorno)  );
    if pesqVendedor.idRetorno <> '' then
      SqlAdd( ' re.rep_codigo = '+QuotedStr(pesqVendedor.idRetorno) );
    if cbReferencia.idRetorno <> '' then
      SqlAdd(' pr.prd_Refer = ' + QuotedStr(cbReferencia.idRetorno));
    if edNumeroPedido.Text <> '' then
       SqlAdd(' vp.ped_codigo = ' + QuotedStr(edNumeroPedido.Text)  );

    if (DataInicial.Date > 0) and (DataFinal.Date > 0)  then
       SqlAdd (' PRF_DTPENDENCIA  between ' + DateTimeToSQL(DataInicial.Date)+' and '+ DateTimeToSQL(SetHoraFinal(DataFinal.Date)  ) )
    else if  (DataInicial.Date > 0)  then
       SqlAdd ('  PRF_DTPENDENCIA  >= ' + DateTimeToSQL(DataInicial.Date))
    else if DataFinal.Date > 0 then
        SqlAdd (' and PRF_DTPENDENCIA <= ' + DateTimeToSQL(SetHoraFinal(DataFinal.Date)));

     sql.Add('ORDER BY prf_registro ');
	end;
end;

end.
