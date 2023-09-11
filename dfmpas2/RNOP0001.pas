unit RNOP0001;
{******************************************

Critério de prevalência das aliquotas icms:

1 - Regra CFOP (este registro)
2 - Alíquota Icms Reg.Produto
3 - NCM
4 - Icms UF

******************************************}

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DBCtrls, ExtCtrls,
  Mask, DB,  SqlExpr,
  Provider, DBClient, DBLocal, DBLocalS, SimpleDS, BaseDbForm,
  Data.DBXFirebird, SgDbSeachComboUnit, Data.FMTBCd, ACBrEnterTab, ACBrBase, ACBrCalculadora, ACBrETQ, JvExStdCtrls, JvCombobox, JvDBCombobox, JvExMask, JvToolEdit, JvDBControls, Vcl.ComCtrls,
  Vcl.Grids, Vcl.DBGrids;

type
  TFormRegraNatOp = class(TFrmBaseDB)
    DSRegraCFOP: TDataSource;
    CdSRegraCFOP: TClientDataSet;
    CdSRegraCFOPOPR_REGISTRO: TIntegerField;
    CdSRegraCFOPEMP_CODIGO: TStringField;
    CdSRegraCFOPIPI_CODIGO: TStringField;
    CdSRegraCFOPOPE_CODIGO_ORIGEM: TStringField;
    CdSRegraCFOPOPR_AC: TStringField;
    CdSRegraCFOPOPR_AL: TStringField;
    CdSRegraCFOPOPR_AP: TStringField;
    CdSRegraCFOPOPR_AM: TStringField;
    CdSRegraCFOPOPR_BA: TStringField;
    CdSRegraCFOPOPR_CE: TStringField;
    CdSRegraCFOPOPR_DF: TStringField;
    CdSRegraCFOPOPR_GO: TStringField;
    CdSRegraCFOPOPR_ES: TStringField;
    CdSRegraCFOPOPR_MA: TStringField;
    CdSRegraCFOPOPR_MT: TStringField;
    CdSRegraCFOPOPR_MS: TStringField;
    CdSRegraCFOPOPR_MG: TStringField;
    CdSRegraCFOPOPR_PA: TStringField;
    CdSRegraCFOPOPR_PB: TStringField;
    CdSRegraCFOPOPR_PR: TStringField;
    CdSRegraCFOPOPR_PE: TStringField;
    CdSRegraCFOPOPR_PI: TStringField;
    CdSRegraCFOPOPR_RJ: TStringField;
    CdSRegraCFOPOPR_RN: TStringField;
    CdSRegraCFOPOPR_RS: TStringField;
    CdSRegraCFOPOPR_RO: TStringField;
    CdSRegraCFOPOPR_RR: TStringField;
    CdSRegraCFOPOPR_SP: TStringField;
    CdSRegraCFOPOPR_SC: TStringField;
    CdSRegraCFOPOPR_SE: TStringField;
    CdSRegraCFOPOPR_TO: TStringField;
    CdSRegraCFOPOPE_DESTINO: TStringField;
    CdSRegraCFOPSTB_TRIBUTACAO: TStringField;
    CdSRegraCFOPOPR_PERCENTUAL_MVA: TFMTBCdField;
    CdSRegraCFOPDATA_CADASTRO: TDateField;
    CdSRegraCFOPDATA_ALTERACAO: TDateField;
    CdSRegraCFOPOPR_ATIVO: TStringField;
    CdSRegraCFOPOPR_EX: TStringField;
    CdSRegraCFOPOPR_PERCENTUAL_MVA_SIMPLES: TFMTBCdField;
    CdSRegraCFOPOPR_ALIQ_ST_UF: TFMTBCdField;
    CdSRegraCFOPOPR_REDUCAO_BASE_ST: TFMTBCdField;
    DSPRegraCFOP: TDataSetProvider;
    SqlRegraCFOP: TSQLQuery;
    SqlRegraCFOPOPR_REGISTRO: TIntegerField;
    SqlRegraCFOPEMP_CODIGO: TStringField;
    SqlRegraCFOPIPI_CODIGO: TStringField;
    SqlRegraCFOPOPE_CODIGO_ORIGEM: TStringField;
    SqlRegraCFOPOPR_AC: TStringField;
    SqlRegraCFOPOPR_AL: TStringField;
    SqlRegraCFOPOPR_AP: TStringField;
    SqlRegraCFOPOPR_AM: TStringField;
    SqlRegraCFOPOPR_BA: TStringField;
    SqlRegraCFOPOPR_CE: TStringField;
    SqlRegraCFOPOPR_DF: TStringField;
    SqlRegraCFOPOPR_GO: TStringField;
    SqlRegraCFOPOPR_ES: TStringField;
    SqlRegraCFOPOPR_MA: TStringField;
    SqlRegraCFOPOPR_MT: TStringField;
    SqlRegraCFOPOPR_MS: TStringField;
    SqlRegraCFOPOPR_MG: TStringField;
    SqlRegraCFOPOPR_PA: TStringField;
    SqlRegraCFOPOPR_PB: TStringField;
    SqlRegraCFOPOPR_PR: TStringField;
    SqlRegraCFOPOPR_PE: TStringField;
    SqlRegraCFOPOPR_PI: TStringField;
    SqlRegraCFOPOPR_RJ: TStringField;
    SqlRegraCFOPOPR_RN: TStringField;
    SqlRegraCFOPOPR_RS: TStringField;
    SqlRegraCFOPOPR_RO: TStringField;
    SqlRegraCFOPOPR_RR: TStringField;
    SqlRegraCFOPOPR_SP: TStringField;
    SqlRegraCFOPOPR_SC: TStringField;
    SqlRegraCFOPOPR_SE: TStringField;
    SqlRegraCFOPOPR_TO: TStringField;
    SqlRegraCFOPOPE_DESTINO: TStringField;
    SqlRegraCFOPSTB_TRIBUTACAO: TStringField;
    SqlRegraCFOPOPR_PERCENTUAL_MVA: TFMTBCdField;
    SqlRegraCFOPDATA_CADASTRO: TDateField;
    SqlRegraCFOPDATA_ALTERACAO: TDateField;
    SqlRegraCFOPOPR_ATIVO: TStringField;
    SqlRegraCFOPOPR_EX: TStringField;
    SqlRegraCFOPOPR_PERCENTUAL_MVA_SIMPLES: TFMTBCdField;
    SqlRegraCFOPOPR_ALIQ_ST_UF: TFMTBCdField;
    SqlRegraCFOPOPR_REDUCAO_BASE_ST: TFMTBCdField;
    Panel1: TPanel;
    Label5: TLabel;
    EdtRegra_Codigo: TEdit;
    pnMove: TPanel;
    btFirst: TSpeedButton;
    btPrior: TSpeedButton;
    btNext: TSpeedButton;
    btLast: TSpeedButton;
    gbComoFunciona: TGroupBox;
    Label9: TLabel;
    SqlRegraCFOPOPR_ALIQ_INTERESTADUAL: TFMTBCDField;
    CDSRegraCFOPOPR_ALIQ_INTERESTADUAL: TFMTBCDField;
    SqlRegraCFOPOPR_ISENTARICIMS: TStringField;
    CDSRegraCFOPOPR_ISENTARICIMS: TStringField;
    SqlRegraCFOPOPR_ORIGEM: TStringField;
    CDSRegraCFOPOPR_ORIGEM: TStringField;
    CDSRegraCFOPCBenef: TStringField;
    SqlRegraCFOPCBenef: TStringField;
    SqlRegraCFOPOPR_PERC_FCP: TFMTBCDField;
    CDSRegraCFOPOPR_PERC_FCP: TFMTBCDField;
    pcRegra: TPageControl;
    tsRegra: TTabSheet;
    tsAvancado: TTabSheet;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    Label12: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label17: TLabel;
    DBEdit2: TDBEdit;
    DBChAtivo: TDBCheckBox;
    Button1: TButton;
    EdtIPI_codigo: TDBEdit;
    EdGenero: TMemo;
    CbTodosProdutos: TCheckBox;
    edtOrigem: TDBEdit;
    pnCbox: TPanel;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox13: TDBCheckBox;
    DBCheckBox12: TDBCheckBox;
    DBCheckBox23: TDBCheckBox;
    DBCheckBox24: TDBCheckBox;
    DBCheckBox25: TDBCheckBox;
    DBCheckBox14: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox15: TDBCheckBox;
    DBCheckBox26: TDBCheckBox;
    DBCheckBox27: TDBCheckBox;
    DBCheckBox16: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    DBCheckBox17: TDBCheckBox;
    DBCheckBox28: TDBCheckBox;
    DBCheckBox18: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    DBCheckBox8: TDBCheckBox;
    DBCheckBox19: TDBCheckBox;
    DBCheckBox20: TDBCheckBox;
    DBCheckBox9: TDBCheckBox;
    DBCheckBox10: TDBCheckBox;
    DBCheckBox21: TDBCheckBox;
    DBCheckBox22: TDBCheckBox;
    DBCheckBox11: TDBCheckBox;
    CbNatOrigem: TSgDbSearchCombo;
    cbOrigemMarcadoria: TJvDBComboBox;
    DBDataCad: TJvDBDateEdit;
    DBDateEdit1: TJvDBDateEdit;
    GroupBox1: TGroupBox;
    Label20: TLabel;
    Label6: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label13: TLabel;
    Label1: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    DBEPercentualMva: TDBEdit;
    dbedtSTB_TRIBUTACAO: TDBEdit;
    dbedtOPR_PERCENTUAL_MVA_SIMPLES: TDBEdit;
    DBEaliqUF_subtrib: TDBEdit;
    dbedtOPR_REDUCAO_BASE_ST: TDBEdit;
    CbSitTributaria: TSgDbSearchCombo;
    DBEAliqInterestadual: TDBEdit;
    DBCheckBox29: TDBCheckBox;
    CbNatDestino: TSgDbSearchCombo;
    edtDestino: TDBEdit;
    edcbenef: TDBEdit;
    DBEdit1: TDBEdit;
    Label21: TLabel;
    dbCodigoRegraFiscal: TDBEdit;
    Panel3: TPanel;
    Bit_Lista: TBitBtn;
    Bit_Cancelar: TBitBtn;
    Bit_Gravar: TBitBtn;
    Bit_Excluir: TBitBtn;
    BtnAlterar: TBitBtn;
    Bit_novo: TBitBtn;
    Bit_Sair: TBitBtn;
    Panel4: TPanel;
    BitBtn2: TBitBtn;
    btGravarAvancado: TBitBtn;
    btExcluirAvancado: TBitBtn;
    btEditarAvancado: TBitBtn;
    btNovoAvancado: TBitBtn;
    BitBtn7: TBitBtn;
    qAvancado: TSQLQuery;
    dspAvancado: TDataSetProvider;
    cdsAvancado: TClientDataSet;
    dsAvancado: TDataSource;
    cdsAvancadoRFP_CODIGO: TIntegerField;
    cdsAvancadoCAP_CODIGO: TIntegerField;
    cdsAvancadoPRD_REFER: TStringField;
    cdsAvancadoOPR_REGISTRO: TIntegerField;
    DBGrid1: TDBGrid;
    qCapacidade: TSQLQuery;
    qItens: TSQLQuery;
    qItensPRD_REFER: TStringField;
    qItensPRD_DESCRI: TStringField;
    cbReferencia: TSgDbSearchCombo;
    cbCapacidade: TSgDbSearchCombo;
    Label22: TLabel;
    Label23: TLabel;
    Panel2: TPanel;
    procedure FormShow(Sender: tObject);
    procedure FormCloseQuery(Sender: tObject; var CanClose: Boolean);
    procedure Bit_novoClick(Sender: tObject);
    procedure Bit_ExcluirClick(Sender: tObject);
    procedure Bit_GravarClick(Sender: tObject);
    procedure Bit_SairClick(Sender: tObject);
    procedure EdtRegra_CodigoKeyPress(Sender: tObject; var Key: Char);
    procedure Bit_ListaClick(Sender: tObject);
    procedure Bit_CancelarClick(Sender: tObject);
    procedure Button1Click(Sender: tObject);
    procedure EdtIPI_codigoChange(Sender: tObject);
    procedure DBEdit2Change(Sender: tObject);
    procedure CbTodosProdutosClick(Sender: tObject);
    procedure FormCreate(Sender: TObject);
    procedure CbNatOrigemSelect(Sender: TObject);
    procedure CbNatDestinoSelect(Sender: TObject);
    procedure CdSRegraCFOPAfterInsert(DataSet: TDataSet);
    procedure CdSRegraCFOPBeforePost(DataSet: TDataSet);
    procedure CdSRegraCFOPBeforeEdit(DataSet: TDataSet);
    procedure CdSRegraCFOPAfterPost(DataSet: TDataSet);
    procedure CdSRegraCFOPAfterOpen(DataSet: TDataSet);
    procedure btFirstClick(Sender: TObject);
    procedure BtnAlterarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure btNovoAvancadoClick(Sender: TObject);
    procedure btEditarAvancadoClick(Sender: TObject);
    procedure btExcluirAvancadoClick(Sender: TObject);
    procedure btGravarAvancadoClick(Sender: TObject);
    procedure cdsAvancadoPRD_REFERGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure cdsAvancadoCAP_CODIGOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure tsAvancadoShow(Sender: TObject);
    procedure DBGrid1Enter(Sender: TObject);
    procedure cdsAvancadoAfterScroll(DataSet: TDataSet);
    procedure CDSRegraCFOPAfterScroll(DataSet: TDataSet);
    procedure tsRegraShow(Sender: TObject);
    procedure edtOrigemChange(Sender: TObject);
  private
    bMarcadoTodas:Boolean;
    procedure HabilitaBotoes;
    procedure VerificaEdicao;
    procedure AtualizaCombos;
    procedure SelecionaTodos(todos: Boolean);
    procedure DesabilitaBotoes;
    procedure BuscaRegras(const cod: string);

  public
    procedure BotoesAcesso;
  end;

var
  FormRegraNatOp: TFormRegraNatOp;

implementation

uses
   Uteis, RNOP0002, iniciodb;

{$R *.dfm}

procedure TFormRegraNatOp.DesabilitaBotoes;
begin
    BotoesAcesso;
    Bit_lista.Enabled        := false;
    Bit_novo.Enabled         := False;
    BtnAlterar.Enabled         := False;
    Bit_Excluir.Enabled      := False;
    Bit_Gravar.Enabled       := True;
    Bit_Cancelar.Visible     := True;
    Bit_Sair.Visible         := False;
    EdtRegra_Codigo.Enabled  := False;
    EdtRegra_Codigo.Color    := clSilver;
    pnMove.Enabled     := False;

end;

procedure TFormRegraNatOp.BtnAlterarClick(Sender: TObject);
begin
  inherited;
  if not CDSRegraCFOPOPR_REGISTRO.IsNull then
     CdSRegraCFOP.Edit;
end;

procedure TFormRegraNatOp.btNovoAvancadoClick(Sender: TObject);
begin
  inherited;
  cdsAvancado.Insert;
  btNovoAvancado.Enabled := False;
  btExcluirAvancado.Enabled := False;
  btEditarAvancado.Enabled := False;
  btGravarAvancado.Enabled := True;
  cbReferencia.Enabled := True;
  cbCapacidade.Enabled := True;
end;

procedure TFormRegraNatOp.BuscaRegras( const cod: string );
begin
     CdSRegraCFOP.close;
     SqlRegraCfop.sql.clear;
     SqlRegraCfop.sql.add( 'SELECT * FROM OPE_REGRA ');
     SqlRegraCfop.sql.add( 'where OPR_REGISTRO='+qStr(cod) );
     SqlRegraCfop.sql.add( ConcatSe( ' and ', dbInicio.ExclusivoSql('FISCAL') ) );
     if DBInicio.IsDesenvolvimento then
      CopyToClipBoard(SqlRegraCfop.SQL.Text);

     CdSRegraCFOP.Open;
     cdsAvancado.Filtered := False;
     cdsAvancado.Filter := 'OPR_REGISTRO = ' + qStr(cod);
     cdsAvancado.Filtered := True;
end;

procedure TFormRegraNatOp.FormShow(Sender: tObject);
begin
     inherited;
     bMarcadoTodas := False;
     BuscaRegras( BuscaUmDadoSqlAsString( 'select COALESCE(min (opr.OPR_REGISTRO),1) ' +
                                          ' from OPE0000 o  ' +
                                          ' LEFT JOIN OPE_REGRA opr ON (opr.OPE_CODIGO_ORIGEM = o.OPE_CODIGO AND opr.EMP_CODIGO = o.EMP_CODIGO) ' +
                                          ConcatSe( ' where  opr.', dbInicio.ExclusivoSql('FISCAL') ) )) ;
     if CdSRegraCFOP.IsEmpty Then
     begin
          DSRegraCFOP.AutoEdit  := False;
          EdtRegra_Codigo.Enabled := False;
     end
     else
         BuscaRegras( BuscaUmDadoSqlAsString( 'select COALESCE(min (opr.OPR_REGISTRO),1) ' +
                                              ' from OPE0000 o  ' +
                                              ' LEFT JOIN OPE_REGRA opr ON (opr.OPE_CODIGO_ORIGEM = o.OPE_CODIGO AND opr.EMP_CODIGO = o.EMP_CODIGO) ' +
                                              ConcatSe( ' where  opr.', dbInicio.ExclusivoSql('FISCAL') ) )) ;
         DSRegraCFOP.AutoEdit := true;
     Habilitabotoes;
     AtualizaCombos;
end;

procedure TFormRegraNatOp.HabilitaBotoes;
begin
    Bit_lista.Enabled        := true;
    Bit_novo.Enabled         := True;
    BtnAlterar.Enabled         := True;
    Bit_Excluir.Enabled      := True;
    Bit_Gravar.Enabled       := False;
    Bit_Cancelar.Visible     := False;
    Bit_Sair.Visible         := True;
    EdtRegra_Codigo.Enabled := True;
    EdtRegra_Codigo.Color   := clWindow;
    pnMove.Enabled     := True;
	   BotoesAcesso;
end;

procedure TFormRegraNatOp.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TFormRegraNatOp.FormCloseQuery(Sender: tObject;
  var CanClose: Boolean);
begin
     inherited;
     verificaEdicao;
end;

procedure TFormRegraNatOp.FormCreate(Sender: TObject);
begin
     inherited;
     self.Height:=597;
     self.Width:=965;
     Bit_Cancelar.Left := Bit_Sair.Left;
     Bit_Cancelar.Top := Bit_Sair.Top;
     Bit_Cancelar.SendToBack;
     pcRegra.ActivePage := tsRegra;
     cdsAvancado.Open;
end;
procedure TFormRegraNatOp.FormDestroy(Sender: TObject);
begin
  inherited;
  FormRegraNatOp := Nil;
end;

procedure TFormRegraNatOp.VerificaEdicao;
begin
    // verifica estado da tabela em edicao e inclusao
    if CdSRegraCFOP.State in [dsEdit,dsInsert] then
    begin
           if uteis.confirmacao ( 'Deseja salvar alterações ?') = idyes then
           begin
                  CdSRegraCFOP.ApplyUpdates(0);
                  CdSRegraCFOP.Refresh;
                  Habilitabotoes;
           end
           else
               Habilitabotoes;
    end;
end;

procedure TFormRegraNatOp.Bit_novoClick(Sender: tObject);
begin
  CdsRegraCFOP.Open;
  CdSRegraCFOP.Insert;
  cbOrigemMarcadoria.ItemIndex:=2;
  CdSRegraCFOPOPR_PERCENTUAL_MVA.Value :=0 ;
  CdSRegraCFOPOPR_PERCENTUAL_MVA_SIMPLES.Value :=0 ;
  uteis.HabilitaIncluir('CadastrosFiscal',DBInicio.Usuario.CODIGO,FormRegraNatOp);
end;

procedure TFormRegraNatOp.Bit_ExcluirClick(Sender: tObject);
begin
    if not CdSRegraCFOPOPR_REGISTRO.isNull Then
       if uteis.Confirmacao('Excluir esta Regra?')=mrYes then
       Begin
            CdSRegraCFOP.Delete;
            CdSRegraCFOP.ApplyUpdates(0);
       End;
end;

procedure TFormRegraNatOp.Bit_GravarClick(Sender: tObject);
begin
     // se tiver MVA obrigar digitar aliquotas de icms
     if (StrtoFloat(DBEPercentualMva.Text) > 0) and (DBEaliqUF_subtrib.Text = '') then
     begin
        uteis.Aviso('O campo "Aliquota Interna da UF para Sub.Tributária" deve ser preenchido.')  ;
        DBEaliqUF_subtrib.SetFocus;
     end
     else
     if (StrtoFloat(DBEPercentualMva.Text) > 0) and (DBEAliqInterestadual.Text = '') then
     begin
        uteis.Aviso('O campo "Aliquota ICMS Interestadual" deve ser preenchido.')  ;
        DBEAliqInterestadual.SetFocus;
     end
     else
     if (StrtoFloat(DBEPercentualMva.Text) > 0) and (DBEAliqInterestadual.text = '0,00') then
     begin
        uteis.Aviso('O campo "Aliquota ICMS Interestadual" não pode ser zero.')  ;
        DBEAliqInterestadual.SetFocus;
     end
     else
     if (StrtoFloat(DBEPercentualMva.Text) > 0) and (DBEaliqUF_subtrib.text = '0,00') then
     begin
        uteis.Aviso('O campo "Aliquota Interna da UF para Sub.Tributária" não pode ser zero.')  ;
        DBEaliqUF_subtrib.SetFocus;
     end
     else
     if cbOrigemMarcadoria.ItemIndex = -1 then
     begin
       uteis.Aviso('Origem da mercadoria obrigatória')  ;
       cbOrigemMarcadoria.SetFocus;
     end
     else
     begin
        CdSRegraCFOP.post;
        CdSRegraCFOP.ApplyUpdates(0);
     end;

end;

procedure TFormRegraNatOp.Bit_SairClick(Sender: tObject);
begin
     Close;
end;

procedure TFormRegraNatOp.BotoesAcesso;
begin
     if assigned(FormRegraNatOp) then
     begin
       Bit_novo.Enabled := Uteis.AcessoUsuario('CadastrosFiscal',DBInicio.Usuario.CODIGO,FormRegraNatOp).Incluir;
       BtnAlterar.Enabled := Uteis.AcessoUsuario('CadastrosFiscal',DBInicio.Usuario.CODIGO,FormRegraNatOp).Alterar;
       Bit_Excluir.Enabled := Uteis.AcessoUsuario('CadastrosFiscal',DBInicio.Usuario.CODIGO,FormRegraNatOp).Exluir;
       DSRegraCFOP.AutoEdit := Uteis.AcessoUsuario('CadastrosFiscal',DBInicio.Usuario.CODIGO,FormRegraNatOp).Alterar;
     end;
end;

procedure TFormRegraNatOp.btEditarAvancadoClick(Sender: TObject);
begin
  inherited;
  cdsAvancado.Edit;
  cbReferencia.idRetorno := cdsAvancadoPRD_REFER.AsString;
  cbCapacidade.idRetorno := cdsAvancadoCAP_CODIGO.AsString;

  btNovoAvancado.Enabled := False;
  btExcluirAvancado.Enabled := False;
  btEditarAvancado.Enabled := False;
  btGravarAvancado.Enabled := True;
  cbReferencia.Enabled := True;
  cbCapacidade.Enabled := True;
end;

procedure TFormRegraNatOp.btExcluirAvancadoClick(Sender: TObject);
begin
  inherited;
  if MessageDlg('Deseja Ecluir o Registro?', mtConfirmation, [mbYes, mbNo], 0) <> mrYes then
    exit;
  cdsAvancado.Delete;
  cdsAvancado.ApplyUpdates(0);
end;

procedure TFormRegraNatOp.btFirstClick(Sender: TObject);
var
  bof, eof: Boolean;
  cId, bId, tabela:  string;
begin
     tabela := 'ope_regra';
     Campoid :='OPR_REGISTRO';
     bId := CdSRegraCFOPOPR_REGISTRO.asstring;
     bof := false;
     eof := false;
     case tComponent(Sender).tag of
     1:cId := BuscaUmDadoSqlasString('SELECT MIN(OPR_REGISTRO) FROM '+ Tabela);
     2:cId := BuscaUmDadoSqlasString('SELECT MAX(OPR_REGISTRO) FROM ' + Tabela + ' WHERE ' + CampoID + ' < ' + bId);
     3:cId := BuscaUmDadoSqlasString('SELECT MIN(OPR_REGISTRO) FROM ' + Tabela + ' WHERE ' + CampoID + ' > ' + bId);
     4:cId := BuscaUmDadoSqlasString('SELECT MAX(OPR_REGISTRO) FROM ' + Tabela);
     end;
     if cId <> '' then
     begin
          bof := (cId = BuscaUmDadoSqlasString('SELECT MIN(OPR_REGISTRO) FROM '+ Tabela));
          if not bof then
             eof := (cId = BuscaUmDadoSqlasString('SELECT MAX(OPR_REGISTRO) FROM ' + Tabela));
          BuscaRegras( cId );
     end
     else
     if tComponent(Sender).tag = 1 then
        bof := True
     else
     if tComponent(Sender).tag = 4 then
        eof := True;
     btFirst.Enabled := not bof;
     btPrior.Enabled := not bof;
     btNext.Enabled := not eof;
     btLast.Enabled := not eof;
end;

procedure TFormRegraNatOp.btGravarAvancadoClick(Sender: TObject);
begin
  inherited;
  if cdsAvancado.State = dsInsert then
  begin
    cdsAvancadoRFP_CODIGO.AsInteger := GetNextSequence('GEN_REGRA_FISCAL_PROD_CAP');
    cdsAvancadoOPR_REGISTRO.AsString := dbCodigoRegraFiscal.Text;
  end;
  cdsAvancadoPRD_REFER.AsString := cbReferencia.idRetorno;
  cdsAvancadoCAP_CODIGO.AsString := iif(cbCapacidade.idRetorno = '', '0', cbCapacidade.idRetorno);
  cdsAvancado.Post;
  cdsAvancado.ApplyUpdates(0);
  btNovoAvancado.Enabled := True;
  btExcluirAvancado.Enabled := True;
  btEditarAvancado.Enabled := True;
  btGravarAvancado.Enabled := False;
  cbReferencia.Enabled := False;
  cbCapacidade.Enabled := False;
end;

procedure TFormRegraNatOp.AtualizaCombos;
begin
     bMarcadoTodas := (CdSRegraCFOPOPR_AC.AsString = 'S');
     Habilitabotoes;
end;

procedure TFormRegraNatOp.EdtRegra_CodigoKeyPress(Sender: tObject;
  var Key: Char);
begin
    if not (key in ['0'..'9',#8]) then
       Key := #0;
end;

procedure TFormRegraNatOp.Bit_ListaClick(Sender: tObject);
begin
     FormRNOPGrid := TFormRNOPGrid.Create(Application);
     try
        FormRNOPGrid.ShowModal;
        if FormRNOPGrid.modalresult = mrOk then
           BuscaRegras( FormRNOPGrid.idRetorno );
     finally
        FreeAndNil( FormRNOPGrid );
     end;
end;

procedure TFormRegraNatOp.Bit_CancelarClick(Sender: tObject);
begin
    CdSRegraCFOP.Cancel;
    if CdSRegraCFOP.IsEmpty Then
    begin
         DSRegraCFOP.AutoEdit := False;
         EdtRegra_Codigo.Enabled := False;
    end;
    Habilitabotoes;
    AtualizaCombos;
    EdtRegra_Codigo.Text := CdSRegraCFOPOPR_REGISTRO.AsString;
    EdtRegra_Codigo.SetFocus;
end;

procedure TFormRegraNatOp.SelecionaTodos(todos: Boolean);
var x,y: integer;
begin
     if CdSRegraCFOP.state=dsBrowse then
        CdSRegraCFOP.edit;
     y := pnCbox.ComponentCount-1;
     for x := 0 to y do
     begin
          if pnCbox.Components[x].InheritsFrom( tDbCheckBox ) then
             tDbCheckBox( panel2.Components[x] ).Checked:=todos;
     end;
end;

procedure TFormRegraNatOp.tsAvancadoShow(Sender: TObject);
begin
  inherited;
  btNovoAvancado.Enabled := True;
  btExcluirAvancado.Enabled := True;
  btEditarAvancado.Enabled := True;
  btGravarAvancado.Enabled := False;
  cbReferencia.Enabled := False;
  cbCapacidade.Enabled := False;
  gbComoFunciona.Visible := False;
end;

procedure TFormRegraNatOp.tsRegraShow(Sender: TObject);
begin
  inherited;
  gbComoFunciona.Visible := True;
  cdsAvancado.CancelUpdates;
end;

procedure TFormRegraNatOp.CbNatOrigemSelect(Sender: TObject);
begin
     inherited;
     //edtOrigem.Text := CbNatOrigem.CdS.FieldByName('ope_natureza').asstring;
end;

procedure TFormRegraNatOp.CbNatDestinoSelect(Sender: TObject);
begin
     inherited;
     //edtDestino.Text := CbNatDestino.CdS.FieldByName('ope_natureza').asstring;
end;

procedure TFormRegraNatOp.Button1Click(Sender: tObject);
begin
     bMarcadoTodas := not bMarcadoTodas;
     SelecionaTodos(bMarcadoTodas);
end;

procedure TFormRegraNatOp.EdtIPI_codigoChange(Sender: tObject);
begin
     EdGenero.Text := '';
     if (Length(EdtIPI_codigo.Text) >= 2) then
     begin
          if (EdtIPI_codigo.Text = '**') then
          begin
               EdGenero.Text := 'Todos os Gêneros';
               CbTodosProdutos.Checked := True;
          end
          Else
          begin
               EdGenero.Text := BuscaUmDadoSqlasString ( 'select SPED_GENDESCRI from SPED_GENERO where SPED_GENCODIGO = '+qStr(copy(EdtIPI_codigo.Text,1,2)) );
               CbTodosProdutos.Checked := False;
          end;
     end;
end;

procedure TFormRegraNatOp.edtOrigemChange(Sender: TObject);
var
 Operacao, empresa: string;
begin
  inherited;
  qAux.sql.clear;
  qAux.sql.add( 'SELECT * FROM OPE0000 ');
  qaux.sql.add( 'where OPE_CODIGO = ' + qStr(CbNatOrigem.idRetorno) );
  qAux.sql.add( ConcatSe( ' and ', dbInicio.ExclusivoSql('FISCAL') ) );
  if DBInicio.IsDesenvolvimento then
    CopyToClipBoard(qAux.SQL.Text);
  qAux.Open;
//  if qAux.IsEmpty and (CbNatOrigem.idRetorno = '') then
//    exit;
  if qAux.IsEmpty and (CdSRegraCFOP.State <> dsInsert) and (CdSRegraCFOPOPE_CODIGO_ORIGEM.AsString <> '') then
  begin
    Operacao := BuscaUmDadoSqlAsString('SELECT OPE_NATUREZA || ' + QuotedStr(' - ') + ' || OPE_DESCRI FROM OPE0000 WHERE OPE_CODIGO = ' + qStr(CdSRegraCFOPOPE_CODIGO_ORIGEM.AsString) );
    empresa := BuscaUmDadoSqlAsString('SELECT EMP_CODIGO FROM OPE0000 WHERE OPE_CODIGO = ' + qStr(CdSRegraCFOPOPE_CODIGO_ORIGEM.AsString) );
    MessageDlg('CFOP Padrão a Faturar ' + UpperCase(Operacao) + ' não pertence à empresa '+ DBInicio.Emp_Codigo + ', pertence à empresa ' + empresa +  CRLF + 'Favor alterar para um existente na empresa ' + DBInicio.Emp_Codigo + '.', mtWarning, [mbOK], 0);
    if CbNatOrigem.CanFocus then
      CbNatOrigem.SetFocus;
  end;

end;

procedure TFormRegraNatOp.DBEdit2Change(Sender: tObject);
begin
     if (CbTodosProdutos.Enabled) then
        CbTodosProdutos.Checked := False;
     if (not CdSRegraCFOP.IsEmpty) then
     begin
         if (CdSRegraCFOPIPI_CODIGO.AsString <> '') then
            CbTodosProdutos.Checked := CdSRegraCFOPIPI_CODIGO.AsString = '**';
     end;
end;

procedure TFormRegraNatOp.DBGrid1Enter(Sender: TObject);
begin
  inherited;
  cbReferencia.idRetorno := cdsAvancadoPRD_REFER.AsString;
  cbCapacidade.idRetorno := cdsAvancadoCAP_CODIGO.AsString;

end;

procedure TFormRegraNatOp.CbTodosProdutosClick(Sender: tObject);
begin
     if (not (CdSRegraCFOP.State in [Dsbrowse])) and (CbTodosProdutos.Focused) then
     begin
         if (CbTodosProdutos.Checked) then
            EdtIPI_codigo.Field.Text := '**'
         else
            EdtIPI_codigo.Field.Text := '';
     end;
end;

procedure TFormRegraNatOp.cdsAvancadoAfterScroll(DataSet: TDataSet);
begin
  inherited;
  cbReferencia.idRetorno := cdsAvancadoPRD_REFER.AsString;
  cbCapacidade.idRetorno := cdsAvancadoCAP_CODIGO.AsString;
end;

procedure TFormRegraNatOp.cdsAvancadoCAP_CODIGOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text := BuscaUmDadoSqlAsString('SELECT CAP_DESCRICAO FROM CAPACIDADE WHERE CAP_CODIGO = ' + IntToStr(StrToIntDef(Sender.AsString, 0)));
end;

procedure TFormRegraNatOp.cdsAvancadoPRD_REFERGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text := BuscaUmDadoSqlAsString('SELECT PRD_DESCRI FROM PRD0000 WHERE PRD_REFER = ' + QuotedStr(Sender.AsString));
end;

procedure TFormRegraNatOp.CdSRegraCFOPAfterInsert(DataSet: TDataSet);
begin
     inherited;
     CdSRegraCFOPDATA_ALTERACAO.AsDateTime := Date;
     CdSRegraCFOPDATA_CADASTRO.AsDateTime := Date;
     CdSRegraCFOPSTB_TRIBUTACAO.AsString := '';
     CdSRegraCFOPOPR_ATIVO.AsString   :=  'S';
     CdSRegraCFOPEMP_CODIGO.AsString     := dbInicio.Empresa.EMP_CODIGO;
     CDSRegraCFOPOPR_ISENTARICIMS.AsString := 'N';
     CbNatOrigem.clear;
     CbSitTributaria.clear;
     CbNatDestino.clear;
     EdtRegra_Codigo.TExt := '000';
     SelecionaTodos(False);
     Desabilitabotoes;

end;

procedure TFormRegraNatOp.CdSRegraCFOPAfterOpen(DataSet: TDataSet);
begin
     inherited;
     AtualizaCombos;
end;

procedure TFormRegraNatOp.CdSRegraCFOPAfterPost(DataSet: TDataSet);
begin
     inherited;
     HABILITABOTOES;
end;

procedure TFormRegraNatOp.CDSRegraCFOPAfterScroll(DataSet: TDataSet);
begin
  inherited;
  cbReferencia.Enabled := False;
  cbCapacidade.Enabled := False;
end;

procedure TFormRegraNatOp.CdSRegraCFOPBeforeEdit(DataSet: TDataSet);
begin
     inherited;
     DesabilitaBotoes;
end;

procedure TFormRegraNatOp.CdSRegraCFOPBeforePost(DataSet: TDataSet);
begin
  inherited;
   if (CbNatOrigem.idRetorno='') or (CbSitTributaria.idRetorno='') or (CbNatDestino.idRetorno='')  then
      GeraException('Existem campos não preenchidos')
   else
   if (Length(EdtIPI_codigo.Field.Text) < 2) then
      GeraException('A classificação fiscal necessita de pelo menos o gênero informado');
   if CdSRegraCFOPopr_registro.isnull then
      CdSRegraCFOPopr_registro.ASiNTEGER := dbInicio.GetNextSequence('gen_ope_regra_id');
  CDSRegraCFOPOPR_ORIGEM.AsString := cbOrigemMarcadoria.Values[cbOrigemMarcadoria.ItemIndex];
end;

end.


