unit sis00072;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons,Db, Mask,  rxToolEdit, ComCtrls,
  Provider, SqlExpr,SqlClientDataSet, DBClient, DBLocal, DBLocalS, Grids, DBGrids, DBCtrls,
  RDprint,  rxCurrEdit, jpeg, RXCtrls, Data.DBXFirebird, SimpleDS, JvExMask, JvToolEdit;

type
  TFrmExportacaoContabilitadade = class(TForm)
    Image1: TImage;
    GroupBox1: TGroupBox;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Panel1: TPanel;
    Image2: TImage;
    BitVoltar: TBitBtn;
    BitAvancar: TBitBtn;
    BitCancelar: TBitBtn;
    NtbExportar: TNotebook;
    GroupBox2: TGroupBox;
    LsBLayout: TListBox;
    GroupBox3: TGroupBox;
    RadNFEntada: TRadioButton;
    RadNFSaida: TRadioButton;
    GroupBox4: TGroupBox;
    FileArqSalvar: TFilenameEdit;
    GbNotas: TGroupBox;
    Label1: TLabel;
    PanNotaFiscal: TPanel;
    GbPeriodo: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    PanEmissao: TPanel;
    Label5: TLabel;
    PanValorNota: TPanel;
    GroupBox7: TGroupBox;
    GroupBox8: TGroupBox;
    Progress: TProgressBar;
    GroupBox9: TGroupBox;
    Label10: TLabel;
    Label11: TLabel;
    DBGridEmpresa: TDBGrid;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    CQtdeNFProc: TCurrencyEdit;
    CQNFiscais: TCurrencyEdit;
    RxLDisplay: TRxLabel;
    RadCliente: TRadioButton;
    RadFornecedor: TRadioButton;
    RadProdutos: TRadioButton;
    SQLClientes: TSQLClientDataSet;
    SQLFornecedor: TSQLClientDataSet;
    BitProcessar: TBitBtn;
    BitCancelarPro: TBitBtn;
    GbGeral: TGroupBox;
    GroupBox5: TGroupBox;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    ProgressBar1: TProgressBar;
    LblDisplay: TLabel;
    PanDisplay: TPanel;
    Label12: TLabel;
    CRegistro: TCurrencyEdit;
    SqlNfs: TSQLClientDataSet;
    SQLPAR: TSQLClientDataSet;
    SqlNFItens: TSQLClientDataSet;
    SqlPedidos: TSQLClientDataSet;
    SQLItemanu: TSQLClientDataSet;
    SQLEstoque: TSQLClientDataSet;
    SqlCdsEmpresa: TSQLClientDataSet;
    SqlCdsEmpresaEMP_CODIGO: TStringField;
    SqlCdsEmpresaEMP_RAZAO: TStringField;
    SqlCdsEmpresaEMP_ENDERE: TStringField;
    SqlCdsEmpresaEMP_BAIRRO: TStringField;
    SqlCdsEmpresaEMP_CXPOSTAL: TStringField;
    SqlCdsEmpresaEMP_CIDADE: TStringField;
    SqlCdsEmpresaEMP_UF: TStringField;
    SqlCdsEmpresaEMP_CEP: TStringField;
    SqlCdsEmpresaEMP_ENDENTR: TStringField;
    SqlCdsEmpresaEMP_CIDENTR: TStringField;
    SqlCdsEmpresaEMP_UFENTR: TStringField;
    SqlCdsEmpresaEMP_CEPENTR: TStringField;
    SqlCdsEmpresaEMP_FONE: TStringField;
    SqlCdsEmpresaEMP_FAX: TStringField;
    SqlCdsEmpresaEMP_EMAIL: TStringField;
    SqlCdsEmpresaEMP_EMAILCOMPRAS: TStringField;
    SqlCdsEmpresaEMP_NOMECOMPRADOR: TStringField;
    SqlCdsEmpresaEMP_EMAILVENDAS: TStringField;
    SqlCdsEmpresaEMP_CGC: TStringField;
    SqlCdsEmpresaEMP_INSC: TStringField;
    SqlCdsEmpresaEMP_FANTASIA: TStringField;
    SqlCdsEmpresaEMP_HOME: TStringField;
    SqlCdsEmpresaCID_CODIGO: TIntegerField;
    SqlCdsEmpresaEMP_AMBIENTE_NFE: TIntegerField;
    SqlCdsEmpresaEMP_MODELO_NFE: TIntegerField;
    SqlCdsEmpresaEMP_SERIE_NFE: TIntegerField;
    SqlCdsEmpresaEMP_CAMINHO_LOGO: TStringField;
    SqlCdsEmpresaEMP_HOST: TStringField;
    SqlCdsEmpresaEMP_USERNAME: TStringField;
    SqlCdsEmpresaEMP_PASSWORD: TStringField;
    SqlCdsEmpresaEMP_REQUER_AUTENTICACAO: TStringField;
    SqlCdsEmpresaEMP_MENSAGEM_NFE: TStringField;
    SqlCdsEmpresaEMP_SISTEMA_CONTINGENCIA_NFE: TStringField;
    SqlCdsEmpresaEMP_OPTANTE_SIMPLES: TStringField;
    SqlCdsEmpresaEMP_PERCENT_SIMPLES: TFMTBCdField;
    SqlCdsEmpresaEMP_CODIGO_CONTABILIDADE: TStringField;
    SqlCdsEmpresaEMP_EMAIL_CONTADOR: TStringField;
    SqlCdsEmpresaEMP_EMAIL_INTERNO: TStringField;
    SqlCdsEmpresaEMP_GENERATION_NFE: TStringField;
    GroupBox6: TGroupBox;
    GrpAlmox: TGroupBox;
    Edt_Almox: TEdit;
    CbAlmox: TComboBox;
    GrpSelecao: TGroupBox;
    LabelBANCO: TLabel;
    Labelcliente: TLabel;
    Label6: TLabel;
    CbTipo: TComboBox;
    CbGrupo: TComboBox;
    Edt_Tipo: TEdit;
    Edt_Grupo: TEdit;
    CbLinha: TComboBox;
    Edt_Linha: TEdit;
    SqlCdsTipo: TSQLClientDataSet;
    SqlCdsTipoPTI_CODIGO: TStringField;
    SqlCdsTipoPTI_DESCRI: TStringField;
    SqlCdsGrupo: TSQLClientDataSet;
    SqlCdsGrupoPGR_CODIGO: TStringField;
    SqlCdsGrupoPGR_DESCRI: TStringField;
    SqlCdsGrupoPGR_COMISS: TStringField;
    SqlCdsGrupoPGR_COM_PERC: TFMTBCdField;
    SqlCdsLinha: TSQLClientDataSet;
    SqlCdsLinhaLIN_CODIGO: TStringField;
    SqlCdsLinhaLIN_DESCRI: TStringField;
    SqlCdsLinhaEMP_CODIGO: TStringField;
    rbInventario: TRadioButton;
    SqlCdsAlmox: TSQLClientDataSet;
    SqlCdsAlmoxAMX_CODIGO: TStringField;
    SqlCdsAlmoxAMX_DESCRI: TStringField;
    SqlCdsAlmoxAMX_TIPO: TStringField;
    SqlCdsAlmoxEMP_CODIGO: TStringField;
    SqlCdsAlmoxAMX_FISICO: TStringField;
    SqlCdsAlmoxAMX_TERCEIROS: TStringField;
    SqlCdsAlmoxAMX_FORATERCEIROS: TStringField;
    SqlCdsAlmoxAMX_CIRCULANTE: TStringField;
    SqlCdsAlmoxAMX_VIRTUAL: TStringField;
    RDprint1: TRDprint;
    rbProdutosCEST: TRadioButton;
    DataInicial: TJvDateEdit;
    DataFinal: TJvDateEdit;
    procedure FormShow(Sender: tObject);
    procedure FormCloseQuery(Sender: tObject; var CanClose: Boolean);
    procedure BitAvancarClick(Sender: tObject);
    procedure BitVoltarClick(Sender: tObject);
    procedure BitCancelarClick(Sender: tObject);
    procedure FormCreate(Sender: tObject);
    procedure DataInicialKeyPress(Sender: tObject; var Key: Char);
    procedure DataFinalKeyPress(Sender: tObject; var Key: Char);
    procedure DataInicialExit(Sender: tObject);
    procedure DBGridEmpresaKeyPress(Sender: tObject; var Key: Char);
    procedure DBGridEmpresaDblClick(Sender: tObject);
    procedure FormKeyPress(Sender: tObject; var Key: Char);
    procedure BitProcessarClick(Sender: tObject);
    procedure BitCancelarProClick(Sender: tObject);
    procedure RadNFEntadaClick(Sender: tObject);
    procedure RadNFSaidaClick(Sender: tObject);
    procedure RadClienteClick(Sender: tObject);
    procedure RadProdutosClick(Sender: tObject);
    procedure RadFornecedorClick(Sender: tObject);
    procedure Edt_AlmoxExit(Sender: tObject);
    procedure CbAlmoxClick(Sender: tObject);
    procedure CbAlmoxExit(Sender: tObject);
    procedure Edt_AlmoxKeyPress(Sender: tObject; var Key: Char);
    procedure Edt_TipoExit(Sender: tObject);
    procedure CbTipoExit(Sender: tObject);
    procedure CbTipoClick(Sender: tObject);
    procedure Edt_GrupoExit(Sender: tObject);
    procedure Edt_GrupoKeyPress(Sender: tObject; var Key: Char);
    procedure CbGrupoExit(Sender: tObject);
    procedure Edt_LinhaExit(Sender: tObject);
    procedure Edt_LinhaKeyPress(Sender: tObject; var Key: Char);
    procedure CbLinhaExit(Sender: tObject);
    procedure CbGrupoClick(Sender: tObject);
    procedure CbLinhaClick(Sender: tObject);
    procedure rbInventarioClick(Sender: tObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure rbProdutosCESTClick(Sender: TObject);
  private
    { Private declarations }
    {variaveis}
     wCANCELAR,wPROCESSO:Boolean;
     iSequencia:Integer;
     sNat_Operacao,
     sCodigoAcumulador:String;
     wDia,wMes,wAno:Word;
     tfTexto:TextFile;
     //
     procedure CarregarImagens;
     procedure ExportacaoNotaEntradasEBS;
     procedure ExportacaoNotaSaidasEBS;
     procedure ExportacaoClientesEBS;
     procedure ExportacaoFornecedorEBS;
     procedure ExportacaoProdutosEBS;
     //
     procedure ExportacaoNotaEntradasDominio;
     procedure ExportacaoNotaSaidasDominio;
     procedure ExportacaoNotaEntradasDominioA;
     procedure ExportacaoClientesDominio;
     procedure ExportacaoFornecedorDominio;
     procedure ExportacaoProdutosDominio;
     procedure ExportacaoProdutosCEST;
     //
     procedure ExportacaoProdutoSCI;
     procedure ExportacaoInventarioProdutoSCI;
  public
    { Public declarations }
  end;

var
  FrmExportacaoContabilitadade: TFrmExportacaoContabilitadade;

implementation

uses Uteis, RwFunc, Men0001, DataCad, iniciodb;

{$R *.dfm}

procedure TFrmExportacaoContabilitadade.FormShow(Sender: tObject);
begin
   try
      SqlCdsTipo.Close;
      SqlCdsTipo.CommandText:=SQLDEF('TABELAS','SELECT PTI_CODIGO,PTI_DESCRI FROM PRD_TIPO','','PTI_DESCRI','');
      SqlCdsTipo.Open;
      SqlCdsTipo.First;
      while not SqlCdsTipo.Eof do
        begin
            CbTipo.Items.Add(SqlCdsTipoPTI_DESCRI.AsString);
            SqlCdsTipo.Next;
        end;
    except on E:EdatabaseError do
        begin
            uteis.erro  (Pchar('Erro ao abrir tabela PRD_TIPO !'+e.message));
        end;
    end;
    try
      SqlCdsGrupo.Close;
      SqlCdsGrupo.CommandText:=SQLDEF('TABELAS','SELECT PGR_CODIGO,PGR_DESCRI, PGR_COMISS, PGR_COM_PERC FROM PRD_GRUPO','','PGR_DESCRI','');
      SqlCdsGrupo.Open;
      SqlCdsGrupo.First;
      while not SqlCdsGrupo.Eof do
        begin
            CbGrupo.Items.Add(SqlCdsGrupoPGR_DESCRI.AsString);
            SqlCdsGrupo.Next;
        end;
    except on E:EdatabaseError do
        begin
            uteis.erro  (Pchar('Erro ao abrir tabela PRD_GRUPO !'+e.message));
        end;
    end;

    try
      SqlCdsLinha.Close;
      SqlCdsLinha.CommandText:=SQLDEF('TABELAS','select LIN_CODIGO, LIN_DESCRI, EMP_CODIGO from prd_linha','','LIN_DESCRI','');
      SqlCdsLinha.Open;
      SqlCdsLinha.First;
      while not SqlCdsLinha.Eof do
        begin
            CbLinha.Items.Add(SqlCdsLinhaLIN_DESCRI.AsString);
            SqlCdsLinha.Next;
        end;
    except on E:EdatabaseError do
        begin
            uteis.erro  (Pchar('Erro ao abrir tabela PRD_LINHA !'+e.message));
        end;
    end;

    try
      SqlCdsAlmox.Close;
      SqlCdsAlmox.CommandText:=SQLDEF('TABELAS','SELECT * FROM ALMOX0000','','AMX_DESCRI','');
      SqlCdsAlmox.Open;
      SqlCdsAlmox.First;
      while not SqlCdsAlmox.Eof do
        begin
            CbAlmox.Items.Add(SqlCdsAlmoxAMX_DESCRI.AsString);
            SqlCdsAlmox.Next;
        end;
    except on E:EdatabaseError do
        begin
            uteis.erro  (Pchar('Erro ao abrir tabela almoxarifado !'+e.message));
        end;
    end;
    Edt_Tipo.Text     := '999';
    CbTipo.ItemIndex  := 0;
    CbTipo.Text       := 'TODOS OS TIPOS';
    Edt_Grupo.Text    := '999';
    CbGrupo.ItemIndex := 0;
    CbGrupo.Text      := 'TODOS OS GRUPOS';
    Edt_Almox.Text    := '9999';
    CbLinha.ItemIndex := 0;
    CbLinha.Text      := 'TODAS AS LINHAS';
    Edt_Linha.Text    := '999';
    CbAlmox.ItemIndex := 0;
    CbAlmox.Text      := 'TODOS OS ALMOXARIFADOS';
   try
     Screen.Cursor    := CrHourglass;
     DataCadastros.CdsEmpresa.Open;
     DataCadastros.CdsEmpresa.First;
    {atribuir caminho padrao}
     FileArqSalvar.FileName := FrmMenu.PathNewRel+'\notaent.txt';
     NtbExportar.PageIndex  := 0;
     LsBLayout.ItemIndex    := 0;
     LsBLayout.SetFocus;
     Screen.Cursor    := CrDefault;
    try
      SqlCdsEmpresa.Close;
      SqlCdsEmpresa.CommandText := SQLDEF('TABELAS','Select EM.* from EMP0000 EM ','WHERE EM.EMP_CODIGO = '''+dbInicio.Empresa.EMP_CODIGO+'''','EM.EMP_CODIGO','EM.');
      SqlCdsEmpresa.Open;
    except on E:EDataBaseError do
      uteis.erro  (pchar('Erro ao abrir a tabela da Empresa ! '+e.Message))
    end;

   except on E:EDataBaseError do
      begin
         Screen.Cursor    := CrDefault;
         uteis.erro  (Pchar('Impossível acessar o arquivo:'+ #13 + E.message));
      end;
    end;
end;

procedure TFrmExportacaoContabilitadade.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     Action := CaFree;
end;

procedure TFrmExportacaoContabilitadade.FormCloseQuery(Sender: tObject;
  var CanClose: Boolean);
begin
   if wPROCESSO  then
      begin
         //beep;
         uteis.aviso('Processo não foi concluido !');
         CanClose := False;
      end
   else
      begin
         try
           Screen.Cursor    := CrHourglass;
//           DadosBase0.CdSEmpresa.Close;
           Screen.Cursor    := CrDefault;
         except on E:EDataBaseError do
            begin
               Screen.Cursor    := CrDefault;
               uteis.erro  (Pchar('Impossível fechar o arquivo:'+ #13 + E.message));
            end;
         end;
      end;
end;

procedure TFrmExportacaoContabilitadade.BitAvancarClick(Sender: tObject);
begin
   if NtbExportar.PageIndex = 0 then
      begin
         if LsBLayout.ItemIndex = -1 then
            begin
               //beep;
               uteis.aviso('informe o layout do arquvio ref. seu contador !');
               LsBLayout.SetFocus;
            end
         else
            begin
               NtbExportar.PageIndex := NtbExportar.PageIndex + 1;
               if not BitVoltar.Enabled  then
                  BitVoltar.Enabled  := True;
            end;
      end
   else
   if NtbExportar.PageIndex = 1 then
      begin
         if (GbPeriodo.Visible) then
            begin
               if DataInicial.Date > DataFinal.Date then
                  begin
                     //beep;
                     uteis.aviso('Data final não poder ser menor que data inicial !');
                     DataInicial.SetFocus;
                     DataInicial.SelectAll;
                  end
               else
               if (DataInicial.Text = '  /  /    ') or (DataFinal.Text = '  /  /    ')then
                  begin
                     //beep;
//                     if RadNFEntada.Checked then
//                        uteis.aviso('Informe a data para exportação de notas de entrada !')
//                     else
                     if RadNFSaida.Checked then
                        uteis.aviso('Informe a data para exportação de notas de saída !');
                     if LsBLayout.ItemIndex = 2 then
                        uteis.aviso('Informe a data para exportação dos Produtos !');
                     DataInicial.SetFocus;
                     DataInicial.SelectAll;
                  end
               else
                  begin
                     NtbExportar.PageIndex := NtbExportar.PageIndex + 1;
                     if BitVoltar.Enabled = False then
                        BitVoltar.Enabled  := True;
                     if (rbInventario.Checked) then
                        begin
                           NtbExportar.PageIndex := 4;
                        end;
                  end;
            end
         else
            begin
               NtbExportar.PageIndex := NtbExportar.PageIndex + 1;
               if BitVoltar.Enabled = False then
                  BitVoltar.Enabled  := True;
            end;

      end
   else
      begin
         if (NtbExportar.PageIndex = 4) then
            begin
               NtbExportar.PageIndex := NtbExportar.PageIndex - 1;
            end
         else
            begin
              NtbExportar.PageIndex := NtbExportar.PageIndex + 1;
              if BitVoltar.Enabled = False then
                 BitVoltar.Enabled  := True;
            end;
      end;
  {focus}
   if NtbExportar.PageIndex = 2 then
      FileArqSalvar.SetFocus
   else
   if NtbExportar.PageIndex = 3 then
      begin
         BitAvancar.Enabled := False;
         BitProcessar.SetFocus;
      end;
end;

procedure TFrmExportacaoContabilitadade.BitVoltarClick(Sender: tObject);
begin
   if NtbExportar.PageIndex = 4 then
      NtbExportar.PageIndex := 1
   else
   if ((NtbExportar.PageIndex = 3) and (rbInventario.Checked)) then
      NtbExportar.PageIndex := 4
   else
   if NtbExportar.PageIndex > 0 then
      NtbExportar.PageIndex := NtbExportar.PageIndex - 1;

   if NtbExportar.PageIndex = 0 then
      BitVoltar.Enabled     := False;
   if BitAvancar.Enabled = False then
      BitAvancar.Enabled    := True;
end;

procedure TFrmExportacaoContabilitadade.BitCancelarClick(Sender: tObject);
begin
   close;
end;

procedure TFrmExportacaoContabilitadade.CarregarImagens;
begin
   try
      Image1.Picture.LoadFromFile(FrmMenu.PathNewFotos+'\barraexp.jpg');
      Image2.Picture.LoadFromFile(FrmMenu.PathNewFotos+'\transf2.bmp');
   except
   end;
end;

procedure TFrmExportacaoContabilitadade.FormCreate(Sender: tObject);
begin
  {incializar variaveis}
   wCANCELAR    := False;
   wPROCESSO    := False;
  {}
   CarregarImagens;
end;

procedure TFrmExportacaoContabilitadade.FormDestroy(Sender: TObject);
begin
     FrmExportacaoContabilitadade := Nil;
end;

procedure TFrmExportacaoContabilitadade.DataInicialKeyPress(
  Sender: tObject; var Key: Char);
begin
   if key = #13 then
      begin
         key := #0;
      end;
end;

procedure TFrmExportacaoContabilitadade.DataFinalKeyPress(Sender: tObject;
  var Key: Char);
begin
   if key = #13 then
      begin
         ValidaData(DataFinal.Text,DataFinal);
         //if DataInicial.Date > DataFinal.Date then
         //   begin
         //      //beep;
         //      uteis.aviso('Data final não poder ser menor que data inicila !');
         //      DataInicial.SetFocus;
         //      DataInicial.SelectAll;
         //   end;
         key := #0;
      end;

end;

procedure TFrmExportacaoContabilitadade.DataInicialExit(Sender: tObject);
begin
   ValidaData(DataInicial.Text,DataInicial);
end;

procedure TFrmExportacaoContabilitadade.ExportacaoNotaEntradasEBS;

begin
{
   try
     try
     Screen.Cursor    := CrHourglass;
     {inicializa variaveis
      wSEQUENCIA        := 1;
      wNAT_OPERACAO     := '';
      wPROCESSO         := True;
      CTotalNotaFiscais.Clear;
      CTotalBases.Clear;
      CTotalIcms.Clear;
      CTotalIPI.Clear;
      CQtdeNFProc.Clear;
      CQNFiscais.Clear;
     {data
      DecodeDate(Date,wANO,wMES,wDIA);
     {local do arquivos
      AssignFile(wTEXTO,FileArqSalvar.FileName);
      RewRite(wTEXTO);
     {inciliza arquivo texto
     {grava registro N.F. entrada
      Writeln(wTEXTO,   '0'{tipo registro
                        +FormatFloat    ('00',wDIA)
                        +FormatFloat    ('00',wMES)
                        +FormatFloat    ('0000',wANO)
                        +dbInicio.Empresa.CNPJ_CNPF
                        +'1'
                        +PreencheDireita(' ',255)
                        +PreencheDireita(' ',191)
                        +PreencheDireita(' ',20)
                        +FormatFloat    ('000000',wSEQUENCIA));
     {incrementa sequencia do registro
      Inc(wSEQUENCIA);
     {nota entrada
      FormatSettings.ShortDateFormat := 'mm/dd/yyyy';
      wDATAINICIAL    := DateToStr(DataInicial.Date);
      wDATAFINAL      := DateToStr(DataFinal.Date);
      FormatSettings.ShortDateFormat := 'dd/mm/yyyy';
     {nota fiscal entrada
      SQLCpgNota.Close;                                                                                                        {CPG_DATA_EMISSAO nao conforme contado contador 09/09/2003 a data e data de entrada CPG_DATA_ENTRADA
      SQLCpgNota.CommandText := 'select CPG.*,FO.* from CPGNOTA CPG join FORNECEDOR FO on CPG_COD_FORNECEDOR = FO_CODIGO where CPG_DATA_ENTRADA between '''+wDATAINICIAL+''' and '''+wDATAFINAL+''' and CPG_STATUS = ''N'' order by CPG_DATA_EMISSAO';
      SQLCpgNota.Open;
     {qtde de notas fiscais
      Progress.Max      := SQLCpgNota.RecordCount;
      CQNFiscais.Value  := SQLCpgNota.RecordCount;
      Progress.Position := 0;
      SQLCpgNota.First;
      if not SQLCpgNota.IsEmpty then
         begin
            while not SQLCpgNota.Eof do
              begin
                {display na tela
                 Application.ProcessMessages;
                 PanNotaFiscal.Caption          := FormatFloat('000000',SQLCpgNota.FieldByname('CPG_NUM_DOCUMENTO').AsInteger);
                 PanEmissao.Caption             := SQLCpgNota.FieldByname('CPG_DATA_EMISSAO').AsString;
                 PanValorNota.Caption           := FormatFloat('###,###,##0.00',SQLCpgNota.FieldByname('CPG_VALOR_DOCUMENTO').AsCurrency);
                {totais
                 CTotalNotaFiscais.Value        := (CTotalNotaFiscais.Value + SQLCpgNota.FieldByname('CPG_VALOR_DOCUMENTO').AsCurrency);
                 CTotalBases.Value              := (CTotalBases.Value       + SQLCpgNota.FieldByname('CPG_BASE_ICM').AsCurrency);
                 CTotalIcms.Value               := (CTotalIcms.Value        + SQLCpgNota.FieldByname('CPG_VALOR_ICMS').AsCurrency);
                 CTotalIPI.Value                := (CTotalIPI.Value         + SQLCpgNota.FieldByname('CPG_VALOR_IPI').AsCurrency);
                 CQtdeNFProc.AsInteger          := (CQtdeNFProc.AsInteger   + 1);
                {registro do emitente /destinatario
                 Writeln(wTEXTO,   '4'{tipo registro
                                   +                    SQLCpgNota.FieldByname('FO_CNPJ_CNPF').AsString
                                   +PreencheDireita     (SQLCpgNota.FieldByname('FO_RAZAO').AsString,040)
                                   +PreencheDireita     (Copy(SQLCpgNota.FieldByname('FO_RAZAO').AsString,1,20),020)
                                   +PreencheDireita     (SQLCpgNota.FieldByname('FO_UF').AsString,02)
                                   +PreencheDireita     (Copy(SQLCpgNota.FieldByname('FO_INSC_EST').AsString,1,20),020)
                                   +PreencheDireita     (SQLCpgNota.FieldByname('FO_ENDERECO').AsString,040)
                                   +PreencheDireita     (SQLCpgNota.FieldByname('FO_BAIRRO').AsString,020)
                                   +PreencheDireita     (SQLCpgNota.FieldByname('FO_CIDADE').AsString,020)
                                   +PreencheDireita     (SQLCpgNota.FieldByname('FO_CEP').AsString,008)
                                   +StrZero             ('0',004)
                                   +StrZero             ('0',003)
                                   +StrZero             (SQLCpgNota.FieldByname('FO_FONE1').AsString,010)
                                   +StrZero             ('0',006){conta p/integração contabil//IIF(SQLCpgNota.FieldByname('CPG_PARCELAMENTO').AsString = 'V',2003,1996)
                                   +StrZero             ('0',003){historico para integração //200
                                   +StrZero             ('0',006)
                                   +StrZero             ('0',003)
                                   +PreencheDireita     ('N',001){produtor rural (S/N)
                                   +PreencheDireita     (' ',255){gravar brancos
                                   +PreencheDireita     (' ',009){gravar brancos
                                   +PreencheDireita     (' ',005){gravar brancos
                                   +FormatFloat         ('000000',wSEQUENCIA)
                        );
                {incrementa sequencia do registro
                 Inc(wSEQUENCIA);
                {data do lancamento
                 DecodeDate(SQLCpgNota.FieldByname('CPG_DATA_ENTRADA').AsDateTime,wANO_L,wMES_L,wDIA_L);
                {data de emissao
                 DecodeDate(SQLCpgNota.FieldByname('CPG_DATA_EMISSAO').AsDateTime,wANO_E,wMES_E,wDIA_E);
                {natureza operacoes
                 if  SQLCpgNota.FieldByname('CPG_NOT_OPERACAO').AsInteger = 6102 then
                     wNAT_OPERACAO := '2102'  {compra fora do estado
                 else
                 if  SQLCpgNota.FieldByname('CPG_NOT_OPERACAO').AsInteger = 5102 then
                     wNAT_OPERACAO := '1102'; {compra dentro do estado
                {
                 if (wNAT_OPERACAO = '2102') or (wNAT_OPERACAO = '1102') then
                     wCLASSIFICA1  := IIF(SQLCpgNota.FieldByname('CPG_PARCELAMENTO').AsString = 'V',02,01)
                 else
                     wCLASSIFICA1  := '00';
                {registro de nota fiscais
                 Writeln(wTEXTO,   '1'
                                   +FormatFloat         ('00',wDIA_L){data lancamento
                                   +FormatFloat         ('00',wMES_L)
                                   +FormatFloat         ('0000',wANO_L)
                                   +StrZero             (SQLCpgNota.FieldByname('CPG_NUM_DOCUMENTO').AsString,006)
                                   +FormatFloat         ('00',wDIA_E){data emissao N.F.
                                   +FormatFloat         ('00',wMES_E)
                                   +FormatFloat         ('0000',wANO_E)
                                   +StrZero             (SQLCpgNota.FieldByname('CPG_MODELO').AsString,002)
                                   +PreencheDireita     (SQLCpgNota.FieldByname('CPG_SERIE').AsString,003)
                                   +PreencheDireita     (SQLCpgNota.FieldByname('CPG_B_SERIE').AsString,003)
                                   +StrZero             (wNAT_OPERACAO,004)
                                   +StrZero             ('0',002){variação da natureza
                                   +StrZero             (wCLASSIFICA1,002){classificação 1 para integração contábil
                                   +StrZero             ('0',002){classificação 2 para integração contábil
                                   +StrZero             (SQLCpgNota.FieldByname('FOR_CGC').AsString,18)
                                   +StrZero             (ExtrairNumeros(FormatFloat('#,###,##0.00',SQLCpgNota.FieldByname('CPG_VALOR_DOCUMENTO').AsCurrency)),012){valor contabil
                                   +StrZero             (ExtrairNumeros('0.00'),012){base pis
                                   +StrZero             (ExtrairNumeros('0.00'),012){base CONFINS
                                   +StrZero             (ExtrairNumeros('0.00'),012){base contr. social
                                   +StrZero             (ExtrairNumeros('0.00'),012){base imposto de renda
                                   +StrZero             (ExtrairNumeros(FormatFloat('#,###,##0.00',SQLCpgNota.FieldByname('CPG_BASE_ICM').AsCurrency)),012)
                                   +StrZero             (ExtrairNumeros(FormatFloat('#0.00',SQLCpgNota.FieldByname('FO_ALIQUOTA_ICMS').AsCurrency)),004)
                                   +StrZero             (ExtrairNumeros(FormatFloat('#,###,##0.00',SQLCpgNota.FieldByname('CPG_VALOR_ICMS').AsCurrency)),012)
                                   +StrZero             (ExtrairNumeros('0.00'),012){base ICMS B
                                   +StrZero             (ExtrairNumeros('0.00'),004){aliquota ICMS B
                                   +StrZero             (ExtrairNumeros('0.00'),012){valor ICMS B
                                   +StrZero             (ExtrairNumeros('0.00'),012){base ICMS c
                                   +StrZero             (ExtrairNumeros('0.00'),004){aliquota ICMS c
                                   +StrZero             (ExtrairNumeros('0.00'),012){valor ICMS c
                                   +StrZero             (ExtrairNumeros('0.00'),012){base ICMS d
                                   +StrZero             (ExtrairNumeros('0.00'),004){aliquota ICMS d
                                   +StrZero             (ExtrairNumeros('0.00'),012){valor ICMS d
                                   +StrZero             (ExtrairNumeros('0.00'),012){valor de isentas de icms //(SQLCpgNota.FieldByname('CPG_VALOR_IPI').AsCurrency)+
                                   +StrZero             (ExtrairNumeros(FormatFloat('#,###,##0.00',(SQLCpgNota.FieldByname('CPG_VALOR_DOCUMENTO').AsCurrency - SQLCpgNota.FieldByname('CPG_BASE_ICM').AsCurrency))),012){valor de outros ICMS
                                   +StrZero             (ExtrairNumeros(FormatFloat('#,###,##0.00',0)),012)//SQLCpgNota.FieldByname('CPG_BASE_IPI').AsCurrency  09/09/2003 conf. contador
                                   +StrZero             (ExtrairNumeros(FormatFloat('#,###,##0.00',0)),012)//SQLCpgNota.FieldByname('CPG_VALOR_IPI').AsCurrency 09/09/2003 conf. contador jogar em outras icms
                                   +StrZero             (ExtrairNumeros('0.00'),012){isentas IPI
                                   +StrZero             (ExtrairNumeros('0.00'),012){outros IPI
                                   +StrZero             (ExtrairNumeros('0.00'),012){valor mercadorias c/ sub. tributaria
                                   +StrZero             (ExtrairNumeros('0.00'),012){base sub. tributaria
                                   +StrZero             (ExtrairNumeros('0.00'),012){ICMS retido por sub tributaria
                                   +StrZero             (ExtrairNumeros('0.00'),012){diferidas
                                   +PreencheDireita     (' ',050){observaçoes a gerar no livro fiscal
                                   +PreencheDireita     ('NF',005){espécie do documento
                                   +PreencheEsquerda    (IIF(SQLCpgNota.FieldByname('CPG_PARCELAMENTO').AsString = 'V','S','N'),001){S= venda a vista e N= venda prazo
                                   +StrZero             (ExtrairNumeros('0'),004){natureza de operação para sub. tributaria
                                   +StrZero             (ExtrairNumeros('0.00'),008){base de pis/cofins por sub. tributaria
                                   +StrZero             (ExtrairNumeros('0.00'),012){base de calculo de iss - valor dos serviços
                                   +StrZero             (ExtrairNumeros('0.00'),004){Aliquota de Tributação de ISS
                                   +StrZero             (ExtrairNumeros('0.00'),012){valor de iss
                                   +StrZero             (ExtrairNumeros('0.00'),012){valor de nota isentos de iss
                                   +StrZero             (ExtrairNumeros('0.00'),012){valor do irrf retido
                                   +StrZero             (ExtrairNumeros('0.00'),012){valor do pis retido
                                   +StrZero             (ExtrairNumeros('0.00'),012){valor de cofins retido
                                   +StrZero             (ExtrairNumeros('0.00'),012){valor do csll retido
                                   +FormatFloat         ('00',0){data pagamento
                                   +FormatFloat         ('00',0)
                                   +FormatFloat         ('0000',0)
                                   +PreencheDireita     (' ',074){campos reservado vazio
                                   +PreencheDireita     (' ',005){campos reservado vazio
                                   +FormatFloat         ('000000',wSEQUENCIA)
                        );
                {incrementa sequencia do registro
                 Inc(wSEQUENCIA);
                {seleciona os produtos
                 SQLCpgItem.Close;
                 SQLCpgItem.CommandText := 'Select ITG.*,EST_DESCRICAO,EST_REGISTRO from CPGITEM ITG,ESTOQUE where ITG_CODIGO_ITEM = EST_CODIGO_PRODUTO  and ITG_NUM_DOCUMENTO = '''+SQLCpgNota.FieldByname('CPG_NUM_DOCUMENTO').AsString+''' and ITG_COD_FORNECEDOR = '''+SQLCpgNota.FieldByname('CPG_COD_FORNECEDOR').AsString+''' order by ITG_ORDEM';
                 SQLCpgItem.Open;
                 SQLCpgItem.First;
                 if not SQLCpgItem.IsEmpty then
                    begin
                       while not SQLCpgItem.Eof do
                          begin
                            {registro de produtos
                             Writeln(wTEXTO,   '2'{tipo registro
                                               +StrZero             (ExtrairNumeros(Copy(SQLCpgItem.FieldByName('EST_REGISTRO').AsString,1,10)),010)
                                               +StrZero             (ExtrairNumeros('#0.000'),009)
                                               +StrZero             (ExtrairNumeros(FormatFloat('###,##0.00',((SQLCpgItem.FieldByName('ITG_VALOR_UNITARIO').AsCurrency - ((SQLCpgItem.FieldByName('ITG_VALOR_UNITARIO').AsCurrency * SQLCpgItem.FieldByName('ITG_DESCONTO').AsCurrency) / 100)) * SQLCpgItem.FieldByName('ITG_QUANTIDADE').AsCurrency))),012) {valor total deste item
                                               +StrZero             (ExtrairNumeros(SQLCpgItem.FieldByName('ITG_QUANTIDADE').AsString),013)
                                               +StrZero             (ExtrairNumeros(FormatFloat('###,##0.00',SQLCpgItem.FieldByName('ITG_DESCONTO').AsCurrency)),012)
                                               +StrZero             (ExtrairNumeros(FormatFloat('###,##0.00',((SQLCpgItem.FieldByName('ITG_VALOR_UNITARIO').AsCurrency - ((SQLCpgItem.FieldByName('ITG_VALOR_UNITARIO').AsCurrency * SQLCpgItem.FieldByName('ITG_DESCONTO').AsCurrency) / 100)) * SQLCpgItem.FieldByName('ITG_QUANTIDADE').AsCurrency))),012) {calcula a base do icms p/item
                                               +StrZero             (ExtrairNumeros(FormatFloat('###,##0.00',SQLCpgItem.FieldByName('ITG_ALIQ_ICMS').AsCurrency)),005){aliquota de tributaçao do icms
                                               +StrZero             (ExtrairNumeros(FormatFloat('###,##0.00',SQLCpgItem.FieldByName('ITG_VALOR_IPI').AsCurrency)),012 ){valor do ipi deste item
                                               +StrZero             (ExtrairNumeros(FormatFloat('###,##0.00',SQLCpgItem.FieldByName('ITG_BASE_SUB_TRIB').AsCurrency)),012){base de cálculo do icms de sub. tributaria
                                               +StrZero             (ExtrairNumeros(FormatFloat('#0.00',SQLCpgItem.FieldByName('ITG_ALIQ_IPI').AsCurrency)),005){alíquota de IPI do item
                                               +StrZero             (ExtrairNumeros('0.00'),005){percentual de redução da base de ICMS
                                               +StrZero             (ExtrairNumeros('000'),003){situacao tributaria do item
                                               +PreencheDireita     (' ',255){gravar vazio
                                               +PreencheDireita     (' ',124){gravar vazio
                                               +PreencheDireita     (' ',004){campo reservado ebs
                                               +FormatFloat         ('000000',wSEQUENCIA)
                                    );
                            {proximo produto
                             SQLCpgItem.Next;
                            {incrementa sequencia do registro
                             Inc(wSEQUENCIA);
                          end;
                    end;
                {registro trailler
                 Writeln(wTEXTO,   '3'{tipo registro
                                   +StrZero             (ExtrairNumeros(SQLCpgNota.FieldByname('CPG_VALOR_DOCUMENTO').AsString),012){valor contabil
                                   +StrZero             (ExtrairNumeros('0.00'),012){base pis
                                   +StrZero             (ExtrairNumeros('0.00'),012){base CONFINS
                                   +StrZero             (ExtrairNumeros('0.00'),012){base contr. social
                                   +StrZero             (ExtrairNumeros('0.00'),012){base imposto de renda
                                   +StrZero             (ExtrairNumeros(FormatFloat('#,###,##0.00',SQLCpgNota.FieldByname('CPG_BASE_ICM').AsCurrency)),012){base de cálculo do icms
                                   +StrZero             (ExtrairNumeros(FormatFloat('#,###,##0.00',SQLCpgNota.FieldByname('CPG_VALOR_ICMS').AsCurrency)),012){valor do crédito do ICMS
                                   +StrZero             (ExtrairNumeros('0.00'),012){base ICMS B
                                   +StrZero             (ExtrairNumeros('0.00'),012){valor ICMS B
                                   +StrZero             (ExtrairNumeros('0.00'),012){base ICMS C
                                   +StrZero             (ExtrairNumeros('0.00'),012){valor ICMS C
                                   +StrZero             (ExtrairNumeros('0.00'),012){base ICMS D
                                   +StrZero             (ExtrairNumeros('0.00'),012){valor ICMS D
                                   +StrZero             (ExtrairNumeros('0.00'),012){valor de isentas de icms
                                   +StrZero             (ExtrairNumeros('0.00'),012){valor de outros ICMS d
                                   +StrZero             (ExtrairNumeros(FormatFloat('#,###,##0.00',SQLCpgNota.FieldByname('CPG_BASE_IPI').AsCurrency)),012)
                                   +StrZero             (ExtrairNumeros(FormatFloat('#,###,##0.00',SQLCpgNota.FieldByname('CPG_VALOR_IPI').AsCurrency)),012)
                                   +StrZero             (ExtrairNumeros('0.00'),012){isentas IPI
                                   +StrZero             (ExtrairNumeros('0.00'),012){outros IPI
                                   +StrZero             (ExtrairNumeros('0.00'),012){valor mercadorias c/ sub. tributaria
                                   +StrZero             (ExtrairNumeros('0.00'),012){base sub. tributaria
                                   +StrZero             (ExtrairNumeros('0.00'),012){ICMS retido por sub tributaria
                                   +StrZero             (ExtrairNumeros('0.00'),012){mercadorias diferidas
                                   +PreencheDireita (' ',217)
                                   +FormatFloat     ('000000',wSEQUENCIA)
                        );
                {proxima nota fiscal
                 SQLCpgNota.Next;
                 Progress.Position := Progress.Position + 1;
                {incrementa sequencia do registro
                 Inc(wSEQUENCIA);
                if wCANCELAR = True then
                   begin
                      //beep;
                      if uteis.confirmacao ( 'Deseja cancelar o processo de exportação de notas de entrada ?') = mryes then
                         begin
                            uteis.aviso('Processo cancelado pelo usuário ?');
                            wCANCELAR                 := False;
                            wPROCESSO                 := False;
                            BitCancelarPro.Enabled    := False;
                            BitProcessar.Enabled      := True;
                            BitCancelar.Enabled       := True;
                            BitVoltar.Enabled         := True;
                            Screen.Cursor    := CrDefault;
                            exit;
                         end
                      else
                         begin
                            wCANCELAR := False;
                         end;
                   end;
              end;
         end
      else
         begin
            //beep;
            uteis.aviso('Não foram encotradas notas fiscais de entrada '+#13#10+
                  'no período informado ref. a Empresa selecionada !');
            BitProcessar.SetFocus;
         end;
     finally
       CloseFile(wTEXTO);
       //beep;
       uteis.aviso('Processo de exportação concluido com sucesso para (EBS).');
       wPROCESSO                 := False;
       BitCancelarPro.Enabled    := False;
       BitProcessar.Enabled      := True;
       BitCancelar.Enabled       := True;
       BitVoltar.Enabled         := True;
     end;
     Screen.Cursor    := CrDefault;
   except on E:EDataBaseError do
      begin
         //beep;
         uteis.erro  (Pchar('Impossível acessar o arquivo:'+ #13 + E.message));
      end;
   end;
}
end;

procedure TFrmExportacaoContabilitadade.DBGridEmpresaKeyPress(
  Sender: tObject; var Key: Char);
begin
   if key = #13 then
      begin
         BitAvancar.SetFocus;
         key := #0;
      end;
end;

procedure TFrmExportacaoContabilitadade.DBGridEmpresaDblClick(
  Sender: tObject);
begin
   BitAvancar.SetFocus;
end;

procedure TFrmExportacaoContabilitadade.FormKeyPress(Sender: tObject;
  var Key: Char);
begin
   if key = #27 then
      begin
         if BitCancelar.Enabled then
            BitCancelar.Click;
         key := #0;
      end;
end;

procedure TFrmExportacaoContabilitadade.BitProcessarClick(Sender: tObject);
begin
    case LsBLayout.ItemIndex of
      0:begin
          if RadNFEntada.Checked then
             begin
                if uteis.confirmacao ( 'Confirma a exportação de notas fiscais de entrada ?') = mryes then
                   begin
                      BitCancelarPro.Enabled    := True;
                      BitProcessar.Enabled      := False;
                      BitCancelar.Enabled       := False;
                      BitVoltar.Enabled         := False;
                      ExportacaoNotaEntradasEBS;
                   end
                else
                   begin
                      BitProcessar.SetFocus;
                   end;
             end
          else
          if RadNFSaida.Checked then
             begin
                if uteis.confirmacao ( 'Confirma a exportação de notas fiscais de saídas ?') = mryes then
                   begin
                      BitCancelarPro.Enabled    := True;
                      BitProcessar.Enabled      := False;
                      BitCancelar.Enabled       := False;
                      BitVoltar.Enabled         := False;
                      ExportacaoNotaSaidasEBS;
                   end
                else
                   begin
                      BitProcessar.SetFocus;
                   end;
             end;
          if RadCliente.Checked then
             begin
                if uteis.confirmacao ( 'Confirma a exportação do cadastro do cliente ?') = mryes then
                   begin
                      BitCancelarPro.Enabled    := True;
                      BitProcessar.Enabled      := False;
                      BitCancelar.Enabled       := False;
                      BitVoltar.Enabled         := False;
                      ExportacaoClientesEBS;
                   end
                else
                   begin
                      BitProcessar.SetFocus;
                   end;
             end;

          if RadFornecedor.Checked then
             begin
                if uteis.confirmacao ( 'Confirma a exportação do cadastro do fornecedores ?') = mryes then
                   begin
                      BitCancelarPro.Enabled    := True;
                      BitProcessar.Enabled      := False;
                      BitCancelar.Enabled       := False;
                      BitVoltar.Enabled         := False;
                      ExportacaoFornecedorEBS;
                   end
                else
                   begin
                      BitProcessar.SetFocus;
                   end;
             end;

          if RadProdutos.Checked then
             begin
                if uteis.confirmacao ( 'Confirma a exportação dos produtos ?') = mryes then
                   begin
                      BitCancelarPro.Enabled    := True;
                      BitProcessar.Enabled      := False;
                      BitCancelar.Enabled       := False;
                      BitVoltar.Enabled         := False;
                      ExportacaoProdutosEBS;
                   end
                else
                   begin
                      BitProcessar.SetFocus;
                   end;
             end;
        end;
        1:begin
          if RadNFEntada.Checked then
             begin
                if uteis.confirmacao ( 'Confirma a exportação de notas fiscais de entrada ?') = mryes then
                   begin
                      BitCancelarPro.Enabled    := True;
                      BitProcessar.Enabled      := False;
                      BitCancelar.Enabled       := False;
                      BitVoltar.Enabled         := False;
                      {Entradas de devoluçao, retorno de garantia e trocas}
                      ExportacaoNotaEntradasDominio;
                      {Notas Fiscais de Entrada de Compras}
                      ExportacaoNotaEntradasDominioA;
                   end
                else
                   begin
                      BitProcessar.SetFocus;
                   end;
             end
          else
          if RadNFSaida.Checked then
             begin
                if uteis.confirmacao ( 'Confirma a exportação de notas fiscais de saídas ?') = mryes then
                   begin
                      BitCancelarPro.Enabled    := True;
                      BitProcessar.Enabled      := False;
                      BitCancelar.Enabled       := False;
                      BitVoltar.Enabled         := False;
                      ExportacaoNotaSaidasDominio;
                   end
                else
                   begin
                      BitProcessar.SetFocus;
                   end;
             end;
          if RadCliente.Checked then
             begin
                if uteis.confirmacao ( 'Confirma a exportação do cadastro do cliente ?') = mryes then
                   begin
                      BitCancelarPro.Enabled    := True;
                      BitProcessar.Enabled      := False;
                      BitCancelar.Enabled       := False;
                      BitVoltar.Enabled         := False;
                      ExportacaoClientesDominio;
                   end
                else
                   begin
                      BitProcessar.SetFocus;
                   end;
             end;

          if RadFornecedor.Checked then
             begin
                if uteis.confirmacao ( 'Confirma a exportação do cadastro do fornecedores ?') = mryes then
                   begin
                      BitCancelarPro.Enabled    := True;
                      BitProcessar.Enabled      := False;
                      BitCancelar.Enabled       := False;
                      BitVoltar.Enabled         := False;
                      ExportacaoFornecedorDominio;
                   end
                else
                   begin
                      BitProcessar.SetFocus;
                   end;
             end;

          if RadProdutos.Checked then
             begin
                if uteis.confirmacao ( 'Confirma a exportação dos produtos ?') = mryes then
                   begin
                      BitCancelarPro.Enabled    := True;
                      BitProcessar.Enabled      := False;
                      BitCancelar.Enabled       := False;
                      BitVoltar.Enabled         := False;
                      ExportacaoProdutosDominio;
                   end
                else
                   begin
                      BitProcessar.SetFocus;
                   end;
             end;
        end;
        2:begin //
          if RadNFEntada.Checked then
             begin
                uteis.aviso('Não implementado para este Layout');
             end
          else
          if RadNFSaida.Checked then
             begin
                uteis.aviso('Não implementado para este Layout');
             end;
          if RadCliente.Checked then
             begin
                uteis.aviso('Não implementado para este Layout');
             end;

          if RadFornecedor.Checked then
             begin
                uteis.aviso('Não implementado para este Layout');
             end;

          if RadProdutos.Checked then
             begin
                if uteis.confirmacao ( 'Confirma a exportação dos produtos ?') = mryes then
                   begin
                      BitCancelarPro.Enabled    := True;
                      BitProcessar.Enabled      := False;
                      BitCancelar.Enabled       := False;
                      BitVoltar.Enabled         := False;
                      ExportacaoProdutoSCI;
                   end
                else
                   begin
                      BitProcessar.SetFocus;
                   end;
             end;

          if rbInventario.Checked then
             begin
                if uteis.confirmacao ( 'Confirma a exportação dos produtos para inventário?') = mryes then
                   begin
                      BitCancelarPro.Enabled    := True;
                      BitProcessar.Enabled      := False;
                      BitCancelar.Enabled       := False;
                      BitVoltar.Enabled         := False;
                      ExportacaoInventarioProdutoSCI;
                   end
                else
                   begin
                      BitProcessar.SetFocus;
                   end;
             end;
          if rbProdutosCEST.Checked then
          begin
            BitCancelarPro.Enabled    := True;
            BitProcessar.Enabled      := False;
            BitCancelar.Enabled       := False;
            BitVoltar.Enabled         := False;
            ExportacaoProdutosCEST;
          end;

        end;
    end;
end;

procedure TFrmExportacaoContabilitadade.BitCancelarProClick(Sender: tObject);
begin
   wCANCELAR := True;
end;

procedure TFrmExportacaoContabilitadade.ExportacaoNotaSaidasEBS;
 Var
 wDATAINICIAL,
 wDATAFINAL: string;
{variaveis para arquivo txt}
 wTEXTO:TextFile;
 wSEQUENCIA:Integer;
begin
    {LAYOUT LUXZED}
    if LsBLayout.ItemIndex = 0 then
       begin
           try
             try
               Screen.Cursor    := CrHourglass;
               {nota entrada}
               FormatSettings.ShortDateFormat := 'mm/dd/yyyy';
               wDATAINICIAL    := DateToStr(DataInicial.Date);
               wDATAFINAL      := DateToStr(DataFinal.Date);
               FormatSettings.ShortDateFormat := 'dd/mm/yyyy';
              {inicializa variaveis}
               wSEQUENCIA := 0;
               CRegistro.Clear;
               PanDisplay.Caption      := '';
//               CTotalNotaFiscais.Clear;
//               CTotalBases.Clear;
//               CTotalIcms.Clear;
//               CTotalIPI.Clear;
               CQtdeNFProc.Clear;
               CQNFiscais.Clear;
               {nota fiscal entrada}
               SqlNfs.Close;
               SqlNfs.CommandText := SQLDEF('RECEBER','Select N1.*,C1.CLI_UF,C1.CLI_CGC from nf0001 N1 JOIN CLI0000 C1 on N1.cli_codigo = C1.CLI_CODIGO ','where N1.NF_EMISSAO between '''+wDATAINICIAL+''' and '''+wDATAFINAL+''' and n1.nf_interno=''N''','N1.NF_EMISSAO','N1.');
               SqlNfs.Open;
               {Pega o parametro da nota fiscal}
               SQLPAR.Close;
               SQLPAR.CommandText := SQLDEF('PARAMETROS','Select SIN_MODE_NF,SIN_SERIE_NF,SIN_SUBSERIE,SIN_CONTATO from prmt0001',' where emp_codigo = '''+dbInicio.Empresa.EMP_CODIGO+'''','','');
               SQLPAR.Open;
               {qtde de notas fiscais}
               Progress.Max      := SqlNfs.RecordCount;
               CQNFiscais.Value  := SqlNfs.RecordCount;
               Progress.Position := 0;
              {local do arquivos}
               AssignFile(wTEXTO,FileArqSalvar.FileName);
              {inicializar o arquivo texto}
               RewRite(wTEXTO);
               if not SqlNfs.IsEmpty then
                  begin
                      while not SqlNfs.Eof do
                         begin
                             {Display}
                             Application.ProcessMessages;
                             PanNotaFiscal.Caption          := FormatFloat('000000',SQLNFS.FieldByname('NF_NOTANUMBER').AsInteger);
                             PanEmissao.Caption             := SQLNFS.FieldByname('NF_EMISSAO').AsString;
                             PanValorNota.Caption           := FormatFloat('###,###,##0.00',SQLNFS.FieldByname('NF_TOT_NOTA').AsCurrency);
                             CQtdeNFProc.AsInteger          := (CQtdeNFProc.AsInteger   + 1);
                             {Grava registro N.F. entrada}
                             FormatSettings.DecimalSeparator := '.';
                             {1ª Linha}
                             Writeln(wTEXTO, Copy(DataCadastros.CdsEmpresaEMP_CODIGO.AsString,2,2)
                                            +PreencheDireita     (SQLPAR.FieldByName('SIN_SERIE_NF').ASSTRING,01)
                                            +PreencheDireita     (SQLPAR.FieldByname('SIN_SUBSERIE').AsString,02)
                                            +PreencheDireita     (SQLNFS.FieldByname('NF_NOTANUMBER').AsString,06)
                                            +PreencheDireita     ('0',01)
                                            +PreencheDireita     (SQLNFS.FieldByname('OPE_NATUREZA').AsString,04)
                                            +PreencheDireita     ('1',01)
                                            +PreencheDireita     (Copy(SQLNFS.FieldByname('NF_EMISSAO').AsString,1,2),02)
                                            +PreencheDireita     (Copy(SQLNFS.FieldByname('NF_EMISSAO').AsString,1,2)+Copy(SQLNFS.FieldByname('NF_EMISSAO').AsString,4,2)+Copy(SQLNFS.FieldByname('NF_EMISSAO').AsString,9,2),06)
                                            +PreencheZeroEsquerda(SQLNFS.FieldByName('CLI_CODIGO').AsString,06)
                                            +PreencheDireita     (SQLNFS.FieldByname('CLI_UF').AsString,02)
                                            +PreencheZeroEsquerda(FormatFloat('###,##0.00',SQLNFS.FieldByName('NF_ALIQ_ICMS').AsCurrency),6)
                                            +PreencheDireita     ('N',1)
                                            +PreencheDireita     ('',13)
                                    );
                             {2ª Linha}
                             Writeln(wTEXTO, PreencheEsquerda    (FormatFloat('#0.00',SQLNFS.FieldByName('NF_TOT_NOTA').AsCurrency),13) {Valor Contabil}
                                            +PreencheEsquerda    (FormatFloat('#0.00',SQLNFS.FieldByName('NF_BASEICMS').AsCurrency),13) {Base de Icms}
                                            +PreencheEsquerda    (FormatFloat('#0.00',SQLNFS.FieldByName('NF_VL_ICMS').AsCurrency),13)   {Imposto Icms}
                                            +PreencheEsquerda    ('0.00',13)                                                            {Isentas Icms}
                                            +PreencheEsquerda    ('0.00',13)                                                            {Outras Icms}
                                            +PreencheEsquerda    (iif(SQLNFS.FieldByName('NF_VL_IPI').AsCurrency>0,FormatFloat('#0.00',SQLNFS.FieldByName('NF_BASE_IPI').AsCurrency),'0.00'),13) {Base IPI}
                                            +PreencheEsquerda    (FormatFloat('#0.00',SQLNFS.FieldByName('NF_VL_IPI').AsCurrency),13)   {Imposto Ipi}
                                            +PreencheEsquerda    ('0.00',13)                                                            {Isentas Ipi}
                                            +PreencheEsquerda    ('0.00',13)                                                            {Outras Ipi}
                                            +PreencheEsquerda    ('0.00',13)                                                            {Diferencial /Frete}
                                            +PreencheEsquerda    ('0.00',13)                                                            {Diferencial /Frete}
                                    );
                             {3ª Linha}
                             Writeln(wTEXTO, PreencheDireita     ('',03)                                                                {Observacao Nota Vazio}
                                            +PreencheDireita     ('',06)                                                                {Numero final/Vazio}
                                            +PreencheDireita     ('N',01)                                                               {Sub Tributaria}
                                            +PreencheDireita     ('P',01)                                                               {Tipo de Pagamento S/N}
                                            +PreencheDireita     ('',13)                                                                {Codigo Contabil}
                                            +PreencheEsquerda    ('0.00',13)                                                            {Valor Substituicao Tributaria}
                                            +PreencheZeroEsquerda(FormatFloat('###,##0.00',SQLNFS.FieldByName('NF_ALIQ_ICMS').AsCurrency),6)
                                            +PreencheDireita     ('IM',02)                                                              {Tipo LCTO no arquivo = IM}
                                            +PreencheEsquerda    ('0.00',13)                                                            {Valor deferimento}
                                            +PreencheDireita     (SQLNFS.FieldByName('CLI_CGC').AsString,18)                            {CNPJ do Cliente}
                                            +PreencheDireita     (SQLNFS.FieldByName('NF_CANCELADA').AsString,01)                       {Nota Cancelada s/n}
                                            +PreencheDireita     ('',04)                                                                {Codigo municipio}
                                    );
                             FormatSettings.DecimalSeparator := '.';
                             if wCANCELAR = True then
                                begin
                                    //beep;
                                    if uteis.confirmacao ( 'Deseja cancelar o processo de exportação de clientes ?') = mryes then
                                       begin
                                           uteis.aviso('Processo cancelado pelo usuário ?');
                                           wCANCELAR                 := False;
                                           wPROCESSO                 := False;
                                           BitCancelarPro.Enabled    := False;
                                           BitProcessar.Enabled      := True;
                                           BitCancelar.Enabled       := True;
                                           BitVoltar.Enabled         := True;
                                           Screen.Cursor    := CrDefault;
                                           exit;
                                       end
                                    else
                                       begin
                                           wCANCELAR := False;
                                       end;
                                end;
                             {proxima Nota}
                             SqlNfs.Next;
                             Progress.Position := Progress.Position + 1;
                         end;
                  end;
             finally
               SQLClientes.Close;
               CloseFile(wTEXTO);
               //beep;
               uteis.aviso('Processo de exportação concluido com sucesso para (LUXZED).');
               wPROCESSO                 := False;
               BitCancelarPro.Enabled    := False;
               BitProcessar.Enabled      := True;
               BitCancelar.Enabled       := True;
               BitVoltar.Enabled         := True;
               Screen.Cursor    := CrDefault;
             end;
           except on E:EDataBaseError do
               begin
                   //beep;
                   Screen.Cursor    := CrDefault;
                   uteis.erro  (Pchar('Impossível acessar o arquivo:'+ #13 + E.message));
               end;
           end;
       end;
end;

procedure TFrmExportacaoContabilitadade.RadNFEntadaClick(Sender: tObject);
begin
    RxLDisplay.Caption     := 'Exportação dos arquivos de  Nota Fiscal Entrada.';
    FileArqSalvar.FileName := FrmMenu.PathNewRel+'\notaent.txt';
    GbPeriodo.Visible      := True;
    GbNotas.Visible        := True;
    GbGeral.Visible        := False;
end;

procedure TFrmExportacaoContabilitadade.RadNFSaidaClick(Sender: tObject);
begin
    RxLDisplay.Caption     := 'Exportação dos arquivos de  Nota Fiscal Saída.';
    FileArqSalvar.FileName := FrmMenu.PathNewRel+'\notasai.txt';
    GbPeriodo.Visible      := True;
    GbNotas.Visible        := True;
    GbGeral.Visible        := False;
end;

procedure TFrmExportacaoContabilitadade.ExportacaoClientesEBS;
 Var
 {variaveis para arquivo txt}
  wTEXTO:TextFile;
  wSEQUENCIA:Integer;
begin
    {LAYOUT EBS
    if LsBLayout.ItemIndex = 0 then
       begin
           try
             try
               Screen.Cursor    := CrHourglass;
              {inicializa variaveis
               wSEQUENCIA := 0;
               CRegistro.Clear;
               PanDisplay.Caption       := '';
               SQLClientes.Close;
               SQLClientes.CommandText := 'select * from CLIENTES order by CL_CNPJ_CNPF';
               SQLClientes.Open;
               SQLClientes.First;
              {local do arquivos
               AssignFile(wTEXTO,FileArqSalvar.FileName);
              {inicializar o arquivo texto
               RewRite(wTEXTO);
               if not SQLClientes.IsEmpty then
                  begin
                     while not SQLClientes.Eof do
                        begin
                           if (Trim(SQLClientes.FieldByname('CL_CNPJ_CNPF').AsString) <> '00000000000') and (SQLClientes.FieldByname('CL_CNPJ_CNPF').AsString <> '00000000000000') then
                              begin
                                  {Display
                                   Application.ProcessMessages;
                                   PanDisplay.Caption  := MascraCNPJ_CNPF(SQLClientes.FieldByname('CL_CNPJ_CNPF').AsString) +'-'+SQLClientes.FieldByname('CL_RAZAO').AsString;
                                   CRegistro.AsInteger := CRegistro.AsInteger + 1;
                                  {grava registro N.F. entrada
                                   Writeln(wTEXTO, PreencheZeroEsquerda(MascraCNPJ_CNPF(Trim(SQLClientes.FieldByname('CL_CNPJ_CNPF').AsString)),18){cnpj/cnpf
                                                  +PreencheDireita     (SQLClientes.FieldByname('CL_RAZAO').AsString,40){razao
                                                  +PreencheDireita     (SQLClientes.FieldByname('CL_FANTASIA').AsString,20){fantasia
                                                  +PreencheDireita     (SQLClientes.FieldByname('CL_UF').AsString,02){estado
                                                  +PreencheDireita     (SQLClientes.FieldByname('CL_INSC_EST_RG').AsString,20){Inscricao estatdual
                                                  +PreencheDireita     (SQLClientes.FieldByname('CL_ENDERECO').AsString,040){endereco
                                                  +PreencheDireita     (SQLClientes.FieldByname('CL_BAIRRO').AsString,020){bairro
                                                  +PreencheDireita     (SQLClientes.FieldByname('CL_CIDADE').AsString,020){cidade
                                                  +PreencheZeroEsquerda(ExtrairNumeros(SQLClientes.FieldByname('CL_CEP').AsString),008){cep
                                                  +PreencheZeroEsquerda(ExtrairNumeros('0'),004){codigo município
                                                  +PreencheZeroEsquerda(ExtrairNumeros('0'),003){ddd
                                                  +PreencheZeroEsquerda(ExtrairNumeros(SQLClientes.FieldByname('CL_FONE1').AsString),010){fone
                                                  +PreencheZeroEsquerda(ExtrairNumeros('0'),006){conta cliente
                                                  +PreencheZeroEsquerda(ExtrairNumeros('0'),003){historico para integracao contabil se cliente
                                                  +PreencheZeroEsquerda(ExtrairNumeros('0'),006){conta para integracao contábil se fornecedor
                                                  +PreencheZeroEsquerda(ExtrairNumeros('0'),003){historico para integracao contabil se forncedor
                                                  +PreencheDireita     ('N',001){cidade
                                                  +PreencheDireita     (' ',065){campo vazio
                                                  +PreencheDireita     (' ',005){uso ebs - gravar vazio
                                                  +FormatFloat         ('000000',wSEQUENCIA)
                                           );
                                {incrementa sequencia
                                 Inc(wSEQUENCIA);
                              end;
                              if wCANCELAR = True then
                                 begin
                                    //beep;
                                    if uteis.confirmacao ( 'Deseja cancelar o processo de exportação de clientes ?') = mryes then
                                       begin
                                          uteis.aviso('Processo cancelado pelo usuário ?');
                                          wCANCELAR                 := False;
                                          wPROCESSO                 := False;
                                          BitCancelarPro.Enabled    := False;
                                          BitProcessar.Enabled      := True;
                                          BitCancelar.Enabled       := True;
                                          BitVoltar.Enabled         := True;
                                          Screen.Cursor    := CrDefault;
                                          exit;
                                       end
                                    else
                                       begin
                                          wCANCELAR := False;
                                       end;
                                 end;
                          {proximo cliente
                           SQLClientes.Next;
                        end;
                  end
               else
                  begin
                     //beep;
                     uteis.aviso('Não foi possível localizar clientes para exportação !');
                     BitProcessar.SetFocus;
                  end;
             finally
               SQLClientes.Close;
               CloseFile(wTEXTO);
               //beep;
               uteis.aviso('Processo de exportação concluido com sucesso para (EBS).');
               wPROCESSO                 := False;
               BitCancelarPro.Enabled    := False;
               BitProcessar.Enabled      := True;
               BitCancelar.Enabled       := True;
               BitVoltar.Enabled         := True;
               Screen.Cursor    := CrDefault;
             end;
           except on E:EDataBaseError do
              begin
                 //beep;
                 Screen.Cursor    := CrDefault;
                 uteis.erro  (Pchar('Impossível acessar o arquivo:'+ #13 + E.message));
              end;
           end;
       end;
}
    {LAYOUT LUXZED}
    if LsBLayout.ItemIndex = 0 then
       begin
           try
             try
               Screen.Cursor    := CrHourglass;
              {inicializa variaveis}

               CRegistro.Clear;
               PanDisplay.Caption      := '';
              {}
               SQLClientes.Close;
               SQLClientes.CommandText := SQLDEF('CLIENTES','select * from CLI0000','','CLI_CGC','');
               SQLClientes.Open;
               SQLClientes.First;
               {}
               ProgressBar1.Max      := SQLClientes.RecordCount;
               ProgressBar1.Position := 0;
              {local do arquivos}
               AssignFile(wTEXTO,FileArqSalvar.FileName);
              {inicializar o arquivo texto}
               RewRite(wTEXTO);
               if not SQLClientes.IsEmpty then
                  begin
                     while not SQLClientes.Eof do
                        begin
                            if (Trim(SQLClientes.FieldByname('CLI_CGC').AsString) <> '00000000000') and (SQLClientes.FieldByname('CLI_CGC').AsString <> '00000000000000') then
                               begin
                                   {Display}
                                    Application.ProcessMessages;
                                    PanDisplay.Caption  := MascraCNPJ_CNPF(SQLClientes.FieldByname('CLI_CGC').AsString) +'-'+SQLClientes.FieldByname('CLI_RAZAO').AsString;
                                    CRegistro.AsInteger := CRegistro.AsInteger + 1;
                                   {grava registro N.F. entrada}
                                    Writeln(wTEXTO, StrZero             (SqlClientes.FieldByName('CLI_CODIGO').AsString,6)                        {Codigo cliente}
                                                   +PreencheDireita     ('C',1)                                                                   {Tipo}
                                                   +PreencheDireita     (TiraAcento(SQLClientes.FieldByname('CLI_RAZAO').AsString,true),30)                        {razao}
                                                   +PreencheDireita     (TiraAcento(SQLClientes.FieldByname('CLI_ENDERE').AsString,true),040)                      {endereco}
                                                   +PreencheDireita     (TiraAcento(SQLClientes.FieldByname('CLI_CIDADE').AsString,true),020)                      {cidade}
                                                   +PreencheDireita     (TiraAcento(SQLClientes.FieldByname('CLI_UF').AsString,true),02)                           {estado}
                                                   +StrZero             (ExtrairNumeros(SQLClientes.FieldByname('CLI_CEP').AsString),008)         {cep}
                                                   +StrZero             (SQLClientes.FieldByname('CLI_CGC').AsString,14)                          {cnpj/cnpf}
                                                   +PreencheDireita     (ExtrairNumeros(SQLClientes.FieldByname('CLI_INSC').AsString),18)                         {Inscricao estatdual}
                                                   +StrZero             (ExtrairNumeros(SQLClientes.FieldByname('CLI_FONE').AsString),018)        {fone}
                                                   +StrZero             (ExtrairNumeros(SQLClientes.FieldByname('CLI_FAX').AsString),010)         {fax}
                                                   +PreencheDireita     (TiraAcento(SQLClientes.FieldByname('CLI_CONTATO').AsString,true),30)                      {Pessoa para Contato}
                                                   +PreencheDireita     ('             ',13)                                                      {Cod Contabil Cliente}
                                            );
                               end;
                            if wCANCELAR  then
                               begin
                                  //beep;
                                  if uteis.confirmacao ( 'Deseja cancelar o processo de exportação de clientes ?') = mryes then
                                     begin
                                        uteis.aviso('Processo cancelado pelo usuário ?');
                                        wCANCELAR                 := False;
                                        wPROCESSO                 := False;
                                        BitCancelarPro.Enabled    := False;
                                        BitProcessar.Enabled      := True;
                                        BitCancelar.Enabled       := True;
                                        BitVoltar.Enabled         := True;
                                        Screen.Cursor    := CrDefault;
                                        exit;
                                     end
                                  else
                                     begin
                                        wCANCELAR := False;
                                     end;
                               end;
                            {proximo cliente}
                            SQLClientes.Next;
                            ProgressBar1.Position := ProgressBar1.Position + 1;
                        end;
                  end
               else
                  begin
                     //beep;
                     uteis.aviso('Não foi possível localizar clientes para exportação !');
                     BitProcessar.SetFocus;
                  end;
             finally
               SQLClientes.Close;
               CloseFile(wTEXTO);
               //beep;
               uteis.aviso('Processo de exportação concluido com sucesso para (LUXZED).');
               wPROCESSO                 := False;
               BitCancelarPro.Enabled    := False;
               BitProcessar.Enabled      := True;
               BitCancelar.Enabled       := True;
               BitVoltar.Enabled         := True;
               Screen.Cursor    := CrDefault;
             end;
           except on E:EDataBaseError do
               begin
                   //beep;
                   Screen.Cursor    := CrDefault;
                   uteis.erro  (Pchar('Impossível acessar o arquivo:'+ #13 + E.message));
               end;
           end;
       end;
end;

procedure TFrmExportacaoContabilitadade.RadClienteClick(Sender: tObject);
begin
    RxLDisplay.Caption     := 'Exportação dos arquivos de cadastro Clientes.';
    FileArqSalvar.FileName := FrmMenu.PathNewRel+'\cliente.txt';
    GbPeriodo.Visible      := False;
    GbNotas.Visible        := False;
    GbGeral.Visible        := True;
    LblDisplay.Left        := 21;
    LblDisplay.Caption     := 'Clientes:';
end;

procedure TFrmExportacaoContabilitadade.ExportacaoFornecedorEBS;
 Var
 {variaveis para arquivo txt}
  wTEXTO:TextFile;

begin
    {LAYOUT EBS
    if LsBLayout.ItemIndex = 0 then
       begin
           try
             try
               Screen.Cursor    := CrHourglass;
              {inicializa variaveis
               wSEQUENCIA := 0;
               CRegistro.Clear;
               PanDisplay.Caption       := '';
               SQLFornecedor.Close;
               SQLFornecedor.CommandText := 'select * from FORNECEDOR order by FO_CNPJ_CNPF';
               SQLFornecedor.Open;
               SQLFornecedor.First;
              {local do arquivos
               AssignFile(wTEXTO,FileArqSalvar.FileName);
              {inciliza arquivo texto
               RewRite(wTEXTO);
               if not SQLFornecedor.IsEmpty then
                  begin
                     while not SQLFornecedor.Eof do
                        begin
                           if (Trim(SQLFornecedor.FieldByname('FO_CNPJ_CNPF').AsString) <> '00000000000') and (SQLFornecedor.FieldByname('FO_CNPJ_CNPF').AsString <> '00000000000000') then
                              begin
                                  {Display
                                   Application.ProcessMessages;
                                   PanDisplay.Caption  := MascraCNPJ_CNPF(SQLFornecedor.FieldByname('FO_CNPJ_CNPF').AsString) +'-'+SQLFornecedor.FieldByname('FO_RAZAO').AsString;
                                   CRegistro.AsInteger := CRegistro.AsInteger + 1;
                                  {grava registro N.F. entrada
                                   Writeln(wTEXTO, PreencheZeroEsquerda(MascraCNPJ_CNPF(Trim(SQLFornecedor.FieldByname('FO_CNPJ_CNPF').AsString)),18){cnpj/cnpf
                                                  +PreencheDireita     (SQLFornecedor.FieldByname('FO_RAZAO').AsString,40){razao
                                                  +PreencheDireita     (SQLFornecedor.FieldByname('FO_FANTASIA').AsString,20){fantasia
                                                  +PreencheDireita     (SQLFornecedor.FieldByname('FO_UF').AsString,02){estado
                                                  +PreencheDireita     (SQLFornecedor.FieldByname('FO_INSC_EST').AsString,20){Inscricao estatdual
                                                  +PreencheDireita     (SQLFornecedor.FieldByname('FO_ENDERECO').AsString,040){endereco
                                                  +PreencheDireita     (SQLFornecedor.FieldByname('FO_BAIRRO').AsString,020){bairro
                                                  +PreencheDireita     (SQLFornecedor.FieldByname('FO_CIDADE').AsString,020){cidade
                                                  +PreencheZeroEsquerda(ExtrairNumeros(SQLFornecedor.FieldByname('FO_CEP').AsString),008){cep
                                                  +PreencheZeroEsquerda(ExtrairNumeros('0'),004){codigo município
                                                  +PreencheZeroEsquerda(ExtrairNumeros('0'),003){ddd
                                                  +PreencheZeroEsquerda(ExtrairNumeros(SQLFornecedor.FieldByname('FO_FONE1').AsString),010){fone
                                                  +PreencheZeroEsquerda(ExtrairNumeros('0'),006){conta cliente
                                                  +PreencheZeroEsquerda(ExtrairNumeros('0'),003){historico para integracao contabil se cliente
                                                  +PreencheZeroEsquerda(ExtrairNumeros('0'),006){conta para integracao contábil se fornecedor
                                                  +PreencheZeroEsquerda(ExtrairNumeros('0'),003){historico para integracao contabil se forncedor
                                                  +PreencheDireita     ('N',001){cidade
                                                  +PreencheDireita     (' ',065){campo vazio
                                                  +PreencheDireita     (' ',005){uso ebs - gravar vazio
                                                  +FormatFloat         ('000000',wSEQUENCIA)
                                           );
                                {incrementa sequencia
                                 Inc(wSEQUENCIA);
                              end;
                              if wCANCELAR = True then
                                 begin
                                    //beep;
                                    if uteis.confirmacao ( 'Deseja cancelar o processo de exportação de fornecedores ?') = mryes then
                                       begin
                                          uteis.aviso('Processo cancelado pelo usuário ?');
                                          wCANCELAR                 := False;
                                          wPROCESSO                 := False;
                                          BitCancelarPro.Enabled    := False;
                                          BitProcessar.Enabled      := True;
                                          BitCancelar.Enabled       := True;
                                          BitVoltar.Enabled         := True;
                                          Screen.Cursor    := CrDefault;
                                          exit;
                                       end
                                    else
                                       begin
                                          wCANCELAR := False;
                                       end;
                                 end;
                          {proximo fornecedores
                           SQLFornecedor.Next;
                        end;
                  end
               else
                  begin
                     //beep;
                     uteis.aviso('Não foi possível localizar fornecedores para exportação !');
                     BitProcessar.SetFocus;
                  end;
             finally
               SQLFornecedor.Close;
               CloseFile(wTEXTO);
               //beep;
               uteis.aviso('Processo de exportação concluido com sucesso para (EBS).');
               wPROCESSO                 := False;
               BitCancelarPro.Enabled    := False;
               BitProcessar.Enabled      := True;
               BitCancelar.Enabled       := True;
               BitVoltar.Enabled         := True;
               Screen.Cursor    := CrDefault;
             end;
           except on E:EDataBaseError do
              begin
                 //beep;
                 Screen.Cursor    := CrDefault;
                 uteis.erro  (Pchar('Impossível acessar o arquivo:'+ #13 + E.message));
              end;
           end;
       end;
}       
    {LAYOUT LUXZED}
    if LsBLayout.ItemIndex = 0 then
       begin
           try
             try
               Screen.Cursor    := CrHourglass;
              {inicializa variaveis}
               CRegistro.Clear;
               PanDisplay.Caption       := '';
              {}
               SQLFornecedor.Close;
               SQLFornecedor.CommandText := SQLDEF('FORNECEDORES','select * from FOR0000 ','where (for_razao <> '''') and (for_Endere <> '''') and (for_cep<> '''')','FOR_RAZAO','');
               SQLFornecedor.Open;
               SQLFornecedor.First;
               {}
               ProgressBar1.Max      := SQLFornecedor.RecordCount;
               ProgressBar1.Position := 0;
              {local do arquivos}
               AssignFile(wTEXTO,FileArqSalvar.FileName);
              {inciliza arquivo texto}
               RewRite(wTEXTO);
               if not SQLFornecedor.IsEmpty then
                  begin
                     while not SQLFornecedor.Eof do
                        begin
                           if (Trim(SQLFornecedor.FieldByname('FOR_CGC').AsString) <> '00000000000') and (SQLFornecedor.FieldByname('FOR_CGC').AsString <> '00000000000000') then
                              begin
                                  {Display}
                                   Application.ProcessMessages;
                                   PanDisplay.Caption  := MascraCNPJ_CNPF(SQLFornecedor.FieldByname('FOR_CGC').AsString) +'-'+SQLFornecedor.FieldByname('FOR_RAZAO').AsString;
                                   CRegistro.AsInteger := CRegistro.AsInteger + 1;
                                  {grava registro Fornecedor}
                                   Writeln(wTEXTO, StrZero             (SQLFornecedor.FieldByName('FOR_CODIGO').AsString,6)                        {Codigo cliente}
                                                  +PreencheDireita     ('F',1)                                                                     {Tipo}
                                                  +PreencheDireita     (TiraAcento(SQLFornecedor.FieldByname('FOR_RAZAO').AsString,true),30)       {razao}
                                                  +PreencheDireita     (TiraAcento(SQLFornecedor.FieldByname('FOR_ENDERE').AsString,true),040)     {endereco}
                                                  +PreencheDireita     (TiraAcento(SQLFornecedor.FieldByname('FOR_CIDADE').AsString,true),020)     {cidade}
                                                  +PreencheDireita     (SQLFornecedor.FieldByname('FOR_UF').AsString,02)                           {estado}
                                                  +StrZero             (ExtrairNumeros(SQLFornecedor.FieldByname('FOR_CEP').AsString),008)         {cep}
                                                  +StrZero             (SQLFornecedor.FieldByname('FOR_CGC').AsString,14)                          {cnpj/cnpf}
                                                  +PreencheDireita     (ExtrairNumeros(SQLFornecedor.FieldByname('FOR_INSC').AsString),18)         {Inscricao estatdual}
                                                  +StrZero             (ExtrairNumeros(SQLFornecedor.FieldByname('FOR_FONE').AsString),018)        {fone}
                                                  +StrZero             (ExtrairNumeros(SQLFornecedor.FieldByname('FOR_FAX').AsString),010)         {fax}
                                                  +PreencheDireita     (TiraAcento(SQLFornecedor.FieldByname('FOR_CONTATO').AsString,true),30)     {Pessoa para Contato}
                                                  +PreencheDireita     ('             ',13)                                                        {Cod Contabil Cliente}
                                           );

                              end;
                              if wCANCELAR = True then
                                 begin
                                    //beep;
                                    if uteis.confirmacao ( 'Deseja cancelar o processo de exportação de fornecedores ?') = mryes then
                                       begin
                                          uteis.aviso('Processo cancelado pelo usuário ?');
                                          wCANCELAR                 := False;
                                          wPROCESSO                 := False;
                                          BitCancelarPro.Enabled    := False;
                                          BitProcessar.Enabled      := True;
                                          BitCancelar.Enabled       := True;
                                          BitVoltar.Enabled         := True;
                                          Screen.Cursor    := CrDefault;
                                          exit;
                                       end
                                    else
                                       begin
                                          wCANCELAR := False;
                                       end;
                                 end;
                          {proximo fornecedores}
                           SQLFornecedor.Next;
                           ProgressBar1.Position := ProgressBar1.Position + 1;
                        end;
                  end
               else
                  begin
                     //beep;
                     uteis.aviso('Não foi possível localizar fornecedores para exportação !');
                     BitProcessar.SetFocus;
                  end;
             finally
               SQLFornecedor.Close;
               CloseFile(wTEXTO);
               //beep;
               uteis.aviso('Processo de exportação concluido com sucesso para (LUXZED).');
               wPROCESSO                 := False;
               BitCancelarPro.Enabled    := False;
               BitProcessar.Enabled      := True;
               BitCancelar.Enabled       := True;
               BitVoltar.Enabled         := True;
               Screen.Cursor    := CrDefault;
             end;
           except on E:EDataBaseError do
              begin
                 //beep;
                 Screen.Cursor    := CrDefault;
                 uteis.erro  (Pchar('Impossível acessar o arquivo:'+ #13 + E.message));
              end;
           end;
       end;
end;

procedure TFrmExportacaoContabilitadade.ExportacaoProdutosEBS;

begin


end;

procedure TFrmExportacaoContabilitadade.RadProdutosClick(Sender: tObject);
begin
    RxLDisplay.Caption     := 'Exportação dos arquivos de cadastro Produtos.';
    FileArqSalvar.FileName := dbInicio.SistemaLocal+'ARQUIVO\Produtos.txt';
    if (LsBLayout.ItemIndex = 2) then
      GbPeriodo.Visible      := True
    else
      GbPeriodo.Visible      := False;
    GbNotas.Visible        := False;
    GbGeral.Visible        := True;
    LblDisplay.Caption     := 'Produtos:';
end;

procedure TFrmExportacaoContabilitadade.RadFornecedorClick(
  Sender: tObject);
begin
    RxLDisplay.Caption     := 'Exportação dos arquivos de cadastro Fornecedores.';
    FileArqSalvar.FileName := FrmMenu.PathNewRel+'\forneced.txt';
    GbPeriodo.Visible      := False;
    GbNotas.Visible        := False;
    GbGeral.Visible        := True;
    LblDisplay.Left        := 6;
    LblDisplay.Caption     := 'Fornecedor:';
end;

procedure TFrmExportacaoContabilitadade.ExportacaoClientesDominio;
begin
     try
       Screen.Cursor    := CrHourglass;
      {inicializa variaveis}
       iSequencia := 0;
       CRegistro.Clear;
       PanDisplay.Caption       := '';
      {data}
      DecodeDate(Date,wANO,wMES,wDIA);
      {}
      SQLEstoque.Close;
      SQLEstoque.CommandText := 'SELECT CLI0000 .*, CID0000.CID_COD_IBGE FROM CLI0000 LEFT JOIN CID0000 ON CLI0000.CID_CODIGO = CID0000.CID_CODIGO';
      SQLEstoque.Open;
      SQLEstoque.First;
     {qtde de notas fiscais}
      Progress.Max      := SQLEstoque.RecordCount;
      CQNFiscais.Value  := SQLEstoque.RecordCount;
      Progress.Position := 0;
      SQLEstoque.First;
      {local do arquivos}
      AssignFile(tfTexto,dbInicio.SistemaLocal+'ARQUIVO\Clientes.txt');
      {inciliza arquivo texto}
       RewRite(tfTexto);
       if (not SQLEstoque.IsEmpty) then
          begin
             while (not SQLEstoque.Eof) do
                begin
                   {Display}
                    Application.ProcessMessages;
                    PanDisplay.Caption  := SQLEstoque.FieldByname('CLI_RAZAO').AsString;
                    CRegistro.AsInteger := CRegistro.AsInteger + 1;
                   {grava registro N.F. entrada}
                    Writeln(tfTexto, '22'{fixo 22}
                                   +PreencheZeroEsquerda(Trim(DataCadastros.CdsEmpresaEMP_CODIGO_CONTABILIDADE.AsString),07){codigo da empresa}
                                   +PreencheDireita     (SQLEstoque.FieldByname('CLI_UF').AsString,02){estado}
                                   +PreencheZeroEsquerda('0',07){codigo da conta}
                                   +PreencheZeroEsquerda(SQLEstoque.FieldByname('CID_COD_IBGE').AsString ,07){codigo do municipio}
                                   +PreencheDireita     (COPY(SQLEstoque.FieldByname('CLI_RAZAO').AsString,1,10),10){razao}
                                   +PreencheDireita     (SQLEstoque.FieldByname('CLI_RAZAO').AsString,40){razao}
                                   +PreencheDireita     (SQLEstoque.FieldByname('CLI_ENDERE').AsString,040){endereco}
                                   +PreencheZeroEsquerda('0',07){numero do endereço}
                                   +PreencheDireita     (SQLEstoque.FieldByname('CLI_CIDADE').AsString,030){cidade}
                                   +PreencheZeroEsquerda(ExtrairNumeros(SQLEstoque.FieldByname('CLI_CEP').AsString),008){cep}
                                   +PreencheZeroEsquerda(ExtrairNumeros(Trim(SQLEstoque.FieldByname('CLI_CGC').AsString)),14){cnpj/cnpf}
                                   +PreencheDireita     (SQLEstoque.FieldByname('CLI_INSC').AsString,20){Inscricao estatdual}
                                   +PreencheZeroEsquerda(ExtrairNumeros(SQLEstoque.FieldByname('CLI_FONE').AsString),014){fone}
                                   +PreencheZeroEsquerda(ExtrairNumeros(SQLEstoque.FieldByname('CLI_FAX').AsString),014){fax}
                                   +'N'{Agropecuário (S,N)}
                                   +'S'{ICMS (S, N)}
                                   +iif(SQLEstoque.FieldByname('CLI_PESSOA').AsString = 'J','1','2'){Tipo de inscrição(1=CGC, 2=CPF, 3=CEI)}
                                   +PreencheDireita      (' ',20){Inscrição Municipal}
                                   +PreencheDireita     (SQLEstoque.FieldByname('CLI_BAIRRO').AsString,020){bairro}
                                   +PreencheZeroEsquerda('0',04){DDD do fone}
                                   +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('##0.00',0)),005){Alíquota do ICMS}
                                   +PreencheZeroEsquerda('0',07){Codigo do pais}
                                   +PreencheDireita     (' ',09)//Numero de inscrição suframa
                                   +PreencheDireita     (' ',100){brancos}
                            );

                  {proximo cliente}
                   SQLEstoque.Next;
                   Progress.Position := (Progress.Position + 1);
                end;
          end
       else
          begin
             //beep;
             uteis.aviso('Não foi possível localizar clientes para exportação !');
          end;
     finally
       wPROCESSO                 := False;
       BitCancelarPro.Enabled    := False;
       BitProcessar.Enabled      := True;
       BitCancelar.Enabled       := True;
       BitVoltar.Enabled         := True;
       SQLEstoque.Close;
       CloseFile(tfTexto);
       //beep;
       uteis.aviso('Processo de exportação dos clientes concluído com sucesso para (Dominio).');
       Screen.Cursor    := CrDefault;
     end;
end;

procedure TFrmExportacaoContabilitadade.ExportacaoFornecedorDominio;
begin
   try
       Screen.Cursor    := CrHourglass;
      {inicializa variaveis}
       iSequencia := 0;
       CRegistro.Clear;
       PanDisplay.Caption       := '';
       {data}
      DecodeDate(Date,wANO,wMES,wDIA);
      {}
      SQLEstoque.Close;
      SQLEstoque.CommandText := 'SELECT FOR0000 .*, CID0000.CID_COD_IBGE FROM FOR0000 LEFT JOIN CID0000 ON FOR0000.CID_CODIGO = CID0000.CID_CODIGO';
      SQLEstoque.Open;
      SQLEstoque.First;
     {qtde de notas fiscais}
      Progress.Max      := SQLEstoque.RecordCount;
      CQNFiscais.Value  := SQLEstoque.RecordCount;
      Progress.Position := 0;
      SQLEstoque.First;
      {local do arquivos}
      AssignFile(tfTexto,dbInicio.SistemaLocal+'ARQUIVO\Fornecedor.txt');
      {inciliza arquivo texto}
       RewRite(tfTexto);
       if not SQLEstoque.IsEmpty then
          begin
             while not SQLEstoque.Eof do
                begin
                  {Display}
                   Application.ProcessMessages;
                   PanDisplay.Caption  := SQLEstoque.FieldByname('FOR_RAZAO').AsString;
                   CRegistro.AsInteger := CRegistro.AsInteger + 1;
                  {grava registro N.F. entrada}
                    Writeln(tfTexto, '11'{fixo 22}
                                   +PreencheZeroEsquerda(Trim(DataCadastros.CdsEmpresaEMP_CODIGO_CONTABILIDADE.AsString),07){codigo da empresa}
                                   +PreencheDireita     (SQLEstoque.FieldByname('FOR_UF').AsString,02){estado}
                                   +PreencheZeroEsquerda('0',07){codigo da conta}
                                   +PreencheZeroEsquerda(SQLEstoque.FieldByname('CID_COD_IBGE').AsString ,07){codigo do municipio}
                                   +PreencheDireita     (COPY(SQLEstoque.FieldByname('FOR_RAZAO').AsString,1,10),10){razao}
                                   +PreencheDireita     (SQLEstoque.FieldByname('FOR_RAZAO').AsString,40){razao}
                                   +PreencheDireita     (SQLEstoque.FieldByname('FOR_ENDERE').AsString,040){endereco}
                                   +PreencheZeroEsquerda('0',07){numero do endereço}
                                   +PreencheDireita     (SQLEstoque.FieldByname('FOR_CIDADE').AsString,030){cidade}
                                   +PreencheZeroEsquerda(ExtrairNumeros(SQLEstoque.FieldByname('FOR_CEP').AsString),008){cep}
                                   +PreencheZeroEsquerda(ExtrairNumeros(Trim(SQLEstoque.FieldByname('FOR_CGC').AsString)),14){cnpj/cnpf}
                                   +PreencheDireita     (SQLEstoque.FieldByname('FOR_INSC').AsString,20){Inscricao estatdual}
                                   +PreencheZeroEsquerda(ExtrairNumeros(SQLEstoque.FieldByname('FOR_FONE').AsString),014){fone}
                                   +PreencheZeroEsquerda(ExtrairNumeros(SQLEstoque.FieldByname('FOR_FAX').AsString),014){fax}
                                   +'N'{Agropecuário (S,N)}
                                   +'S'{ICMS (S, N)}
                                   //+'F'{Tipo de inscrição(1=CGC, 2=CPF, 3=CEI)}
                                   +PreencheDireita     ('1',01){Tipo de inscrição(1=CGC, 2=CPF, 3=CEI)}
                                   +PreencheDireita     (' ',20){Inscrição Municipal}
                                   +PreencheDireita(SQLEstoque.FieldByname('FOR_BAIRRO').AsString,020){bairro}
                                   +PreencheZeroEsquerda('0',04){DDD do fone}
                                   +PreencheZeroEsquerda('0',07){Codigo do pais}
                                   +PreencheDireita     (' ',09)//Numero de inscrição suframa
                                   +PreencheDireita     (' ',100){brancos});
                {incrementa sequencia}
                 Inc(iSequencia);
                {proximo fornecedores}
                 SQLEstoque.Next;
                 Progress.Position := (Progress.Position + 1);
              end;
          end
       else
          begin
             //beep;
             uteis.aviso('Não foi possível localizar fornecedores para exportação !');
          end;
     finally
       wPROCESSO                 := False;
       BitCancelarPro.Enabled    := False;
       BitProcessar.Enabled      := True;
       BitCancelar.Enabled       := True;
       BitVoltar.Enabled         := True;
       SQLEstoque.Close;
       CloseFile(tfTexto);
       //beep;
       uteis.aviso('Processo de exportação dos fornecedores concluido com sucesso para (Dominio).');
       Screen.Cursor    := CrDefault;
     end;
end;

procedure TFrmExportacaoContabilitadade.ExportacaoNotaEntradasDominio;
begin
   try
      Screen.Cursor    := CrHourglass;
      {inicializa variaveis}
      iSequencia        := 1;
      sNat_Operacao     := '';
      {data}
      DecodeDate(Date,wANO,wMES,wDIA);
      {local do arquivos}
      AssignFile(tfTexto,dbInicio.SistemaLocal+'ARQUIVO\NfEntradaC'+FormatFloat('00',wMES)+'-'+FormatFloat('0000',wANO)+'.txt');
      RewRite(tfTexto);
      {inciliza arquivo texto}
      {grava registro N.F. entrada}
      Writeln(tfTexto,   '01'{tipo registro}
                        +PreencheZeroEsquerda(Trim(DataCadastros.CdsEmpresaEMP_CODIGO_CONTABILIDADE.AsString),07){Codigo da Empresa}
                        +PreencheZeroEsquerda (Trim(DataCadastros.CdsEmpresaEMP_CGC.AsString),14){cnpj empresa}
                        +DataInicial.Text{Data Inicial}
                        +DataFinal.Text{Data Final}
                        +'N'{valor fixo 'N'}
                        +'02'{Tipo de Nota (01=Contabilidade/02=Entradas/03=Saídas/04=Seriços)}
                        +'00000'{Constante}
                        +'1'{Sistema(1=Contabilidade/2=Caixa/0=Outro)}
                        +'18'{Valor Fixo}
             );

      {nota fiscal entrada}
      SQLEstoque.Close;
      SQLEstoque.CommandText := 'select * from NF0001 T1 JOIN CLI0000 T2 ON (T2.CLI_CODIGO = T1.CLI_CODIGO) where T1.NF_ENTR_SAID = ''E'' and T1.NF_EMISSAO BETWEEN '+RetornaNull(DataAmericana(DataInicial.Text))+' AND '+RetornaNull(DataAmericana(DataFinal.Text))+'';
      SQLEstoque.Open;
      SQLEstoque.First;
     {qtde de notas fiscais}
      Progress.Max      := SQLEstoque.RecordCount;
      CQNFiscais.Value  := SQLEstoque.RecordCount;
      Progress.Position := 0;
      SQLEstoque.First;
      if (not SQLEstoque.IsEmpty) then
         begin
            while (not SQLEstoque.Eof) do
              begin
                {display na tela}
                 Application.ProcessMessages;
                 if (SQLEstoque.FieldByname('NF_NUM_NFE').AsString <> EmptyStr) and (SQLEstoque.FieldByname('NF_NUM_NFE').AsInteger > 0) then
                  PanNotaFiscal.Caption          := SQLEstoque.FieldByname('NF_NUM_NFE').AsString
                  else
                 PanNotaFiscal.Caption          := SQLEstoque.FieldByname('NF_NOTANUMBER').AsString;

                 PanEmissao.Caption             := SQLEstoque.FieldByname('NF_EMISSAO').AsString;
                 PanValorNota.Caption           := FormatFloat('###,###,##0.00',SQLEstoque.FieldByname('NF_TOT_NOTA').AsCurrency);
                {totais}
                 CQNFiscais.Value        := (CQNFiscais.Value + SQLEstoque.FieldByname('NF_TOT_NOTA').AsCurrency);
                {natureza operacoes}
                 sNat_Operacao := SQLEstoque.FieldByname('OPE_NATUREZA').AsString;
                {}
                {codigo do acumulador}
                 sCodigoAcumulador := '006';
                {registro  Nota Entradas}
                 if (SQLEstoque.FieldByname('NF_NUM_NFE').AsString <> EmptyStr) and (SQLEstoque.FieldByname('NF_NUM_NFE').AsInteger > 0) then
                 begin
                 Writeln(tfTexto,  '02'{fixo 02 entradas}
                                   +FormatFloat         ('0000000',iSequencia)
                                   +PreencheZeroEsquerda(Trim(DataCadastros.CdsEmpresaEMP_CODIGO_CONTABILIDADE.AsString),007){Codigo Empresa}
                                   +PreencheZeroEsquerda(Trim(SQLEstoque.FieldByname('CLI_CGC').AsString),014)
                                   +PreencheZeroEsquerda('1',007){Codigo da Espécie /1=NF-NOTA FISCAL/2=NFF-NOTA FISCAL FATURA/3=NFE-NOTA FISCAL ENTRADA/4=NFS-NOTA FISCAL SERVIÇO}
                                   +PreencheZeroEsquerda('0',002){Codigo da Exclusão da DIEF}
                                   +PreencheZeroEsquerda(sCodigoAcumulador,007){Codigo do acumulador}
                                   +PreencheZeroEsquerda(sNat_Operacao,007){Codigo da Natureza - CFOP}
                                   +PreencheZeroEsquerda('0',002){Seguimento}
                                   +PreencheZeroEsquerda(SQLEstoque.FieldByname('NF_NUM_NFE').AsString,007){Numero do Documento}
                                   +PreencheDireita     (SqlCdsEmpresaEMP_SERIE_NFE.AsString,007)
                                   +PreencheZeroEsquerda('0',007){Documento Final}
                                   +SQLEstoque.FieldByname('NF_EMISSAO').AsString{Data Entrada}
                                   +SQLEstoque.FieldByname('NF_EMISSAO').AsString{Data Emissao}
                                   +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',SQLEstoque.FieldByname('NF_TOT_NOTA').AsCurrency)),013){valor contabil}
                                   +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',0)),013){Valor da Exclusao da DIEF}
                                   +PreencheDireita     (' ',030){Reservado}
                                   +PreencheDireita     (SQLEstoque.FieldByname('CLI_UF').AsString,002) //estado do fornecedor
                                   +'C'{Modalidade do Frete = C=CIF/F=FOB}
                                   +'T'{Emitente da nota (P=PROPRIO / T=TERCEIRO)}
                                   +'P'{Fato Gerador da CRF(E=Emissao ou P=Pagamento)}
                                   +'P'{fato erador do IRPJ(E=Emissao ou P=Pagamento)}
                                   +PreencheZeroEsquerda('0',007) {Código do Município - pode ser o codigo do ibge}
                                   +PreencheZeroEsquerda('0',007) {CFOP Estendido/Detalhamento}
                                   +PreencheZeroEsquerda('0',007) {Apenas para o Estado SE Cód transf utilizado para notas de transf de crpeditos}
                                   +PreencheDireita     (' ',006) {Brancos}  {Apenas para o Estado RS}
                                   +PreencheDireita     (' ',006) {Brancos}
                                   +PreencheZeroEsquerda('0',007) {Código da Observação}
                                   +PreencheDireita     (' ',010) {Data do visto} {Para notas de transf de crédito de ICMS-Obs Apenas p o estado MG.}
                                   +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',SQLEstoque.FieldByname('NF_VLFRETE').AsCurrency)),013){Valor do frete}
                                   +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',SQLEstoque.FieldByname('NF_VLSEGURO').AsCurrency)),013){Valor do seguro}
                                   +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',SQLEstoque.FieldByname('NF_DESP_ACES').AsCurrency)),013){Valor das despesas acessória}
                                   +PreencheZeroEsquerda('0',007) {Código que identifica o tipo da antecipação tributária}
                                   +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',0)),013){Valor do Pis}
                                   +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',0)),013){Valor do Cofins}
                                   +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',SQLEstoque.FieldByname('NF_TOT_PROD').AsCurrency)),013){Valor dos produtos}
                                   +'0'  {Valor B.C.ICMS ST 0=informações complementares ou 1=Quadro Cálculo do Imposto - Apenas para SCANC-CTB}
                                   +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',0)),013){Entrada cuja saída é isenta. Apenas para MG}
                                   +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',0)),013){Outras entradas isentas. Apenas para MG}
                                   +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',0)),013){Valor transporte incluído na base}
                                   +'0'  {Susbst tributária - Apenas para MG - Ressarcimento}
                                   +PreencheZeroEsquerda('0',007) {0=ICMS-SUBTRI A Recolher no período ou 1=ICMS-SUBTRI EM Operações próprias.  Apena par MG. Código do modelo do documento fiscal}
                                   +PreencheZeroEsquerda('0',007) {Código da Situação Tributária}
                                   +PreencheZeroEsquerda('0',007) {Sub Série}
                                   +PreencheDireita     (SQLEstoque.FieldByname('CLI_INSC').AsString,020) {Inscrição Estadual do fornecedor}
                                   +PreencheDireita     (' ',020) {Inscrição municipal forne020cedor}
                                   +PreencheDireita     (' ',150) {Observação}
                                   +PreencheDireita     (' ',150) {Observação}
                                   +PreencheDireita     (' ',044) {Chave da NFe - apenas caracteresres númericos}
                                   +PreencheDireita     (' ',006) {Código de recolhinebto FETHAB}
                                   +'E' {Responsável pelo recolhinebto FETHAB E=EMpresa}
                                   +'0' {Tipo do CT-e (0=Ct-e Normal/1=CT-e de Complemento de valor / 2=Ct-e Emitido em hipótese de anulação de bédito}
                                   +PreencheDireita     (' ',044) {CT-e referência (Apenas caracteres numéricos}
                                   +PreencheDireita     (' ',048) {Brancos} // +PreencheDireita     (' ',047){Brancos}
                                   );
                 end else
                 begin
                 Writeln(tfTexto,  '02'{fixo 02 entradas}
                                   +FormatFloat         ('0000000',iSequencia)
                                   +PreencheZeroEsquerda(Trim(DataCadastros.CdsEmpresaEMP_CODIGO_CONTABILIDADE.AsString),007){Codigo Empresa}
                                   +PreencheZeroEsquerda(Trim(SQLEstoque.FieldByname('CLI_CGC').AsString),014)
                                   +PreencheZeroEsquerda('1',007){Codigo da Espécie /1=NF-NOTA FISCAL/2=NFF-NOTA FISCAL FATURA/3=NFE-NOTA FISCAL ENTRADA/4=NFS-NOTA FISCAL SERVIÇO}
                                   +PreencheZeroEsquerda('0',002){Codigo da Exclusão da DIEF}
                                   +PreencheZeroEsquerda(sCodigoAcumulador,007){Codigo do acumulador}
                                   +PreencheZeroEsquerda(sNat_Operacao,007){Codigo da Natureza - CFOP}
                                   +PreencheZeroEsquerda('0',002){Seguimento}
                                   +PreencheZeroEsquerda(SQLEstoque.FieldByname('NF_NOTANUMBER').AsString,007){Numero do Documento}
                                   +PreencheDireita     (SQLEstoque.FieldByname('NF_SERIE').AsString,007)
                                   +PreencheZeroEsquerda('0',007){Documento Final}
                                   +SQLEstoque.FieldByname('NF_EMISSAO').AsString{Data Entrada}
                                   +SQLEstoque.FieldByname('NF_EMISSAO').AsString{Data Emissao}
                                   +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',SQLEstoque.FieldByname('NF_TOT_NOTA').AsCurrency)),013){valor contabil}
                                   +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',0)),013){Valor da Exclusao da DIEF}
                                   +PreencheDireita     (' ',030){Reservado}
                                   +PreencheDireita     (SQLEstoque.FieldByname('CLI_UF').AsString,002) //estado do fornecedor
                                   +'C'{Modalidade do Frete = C=CIF/F=FOB}
                                   +'T'{Emitente da nota (P=PROPRIO / T=TERCEIRO)}
                                   +'P'{Fato Gerador da CRF(E=Emissao ou P=Pagamento)}
                                   +'P'{fato erador do IRPJ(E=Emissao ou P=Pagamento)}
                                   +PreencheZeroEsquerda('0',007) {Código do Município - pode ser o codigo do ibge}
                                   +PreencheZeroEsquerda('0',007) {CFOP Estendido/Detalhamento}
                                   +PreencheZeroEsquerda('0',007) {Apenas para o Estado SE Cód transf utilizado para notas de transf de crpeditos}
                                   +PreencheDireita     (' ',006) {Brancos}  {Apenas para o Estado RS}
                                   +PreencheDireita     (' ',006) {Brancos}
                                   +PreencheZeroEsquerda('0',007) {Código da Observação}
                                   +PreencheDireita     (' ',010) {Data do visto} {Para notas de transf de crédito de ICMS-Obs Apenas p o estado MG.}
                                   +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',SQLEstoque.FieldByname('NF_VLFRETE').AsCurrency)),013){Valor do frete}
                                   +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',SQLEstoque.FieldByname('NF_VLSEGURO').AsCurrency)),013){Valor do seguro}
                                   +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',SQLEstoque.FieldByname('NF_DESP_ACES').AsCurrency)),013){Valor das despesas acessória}
                                   +PreencheZeroEsquerda('0',007) {Código que identifica o tipo da antecipação tributária}
                                   +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',0)),013){Valor do Pis}
                                   +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',0)),013){Valor do Cofins}
                                   +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',SQLEstoque.FieldByname('NF_TOT_PROD').AsCurrency)),013){Valor dos produtos}
                                   +'0'  {Valor B.C.ICMS ST 0=informações complementares ou 1=Quadro Cálculo do Imposto - Apenas para SCANC-CTB}
                                   +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',0)),013){Entrada cuja saída é isenta. Apenas para MG}
                                   +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',0)),013){Outras entradas isentas. Apenas para MG}
                                   +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',0)),013){Valor transporte incluído na base}
                                   +'0'  {Susbst tributária - Apenas para MG - Ressarcimento}
                                   +PreencheZeroEsquerda('0',007) {0=ICMS-SUBTRI A Recolher no período ou 1=ICMS-SUBTRI EM Operações próprias.  Apena par MG. Código do modelo do documento fiscal}
                                   +PreencheZeroEsquerda('0',007) {Código da Situação Tributária}
                                   +PreencheZeroEsquerda('0',007) {Sub Série}
                                   +PreencheDireita     (SQLEstoque.FieldByname('CLI_INSC').AsString,020) {Inscrição Estadual do fornecedor}
                                   +PreencheDireita     (' ',020) {Inscrição municipal forne020cedor}
                                   +PreencheDireita     (' ',150) {Observação}
                                   +PreencheDireita     (' ',150) {Observação}
                                   +PreencheDireita     (' ',044) {Chave da NFe - apenas caracteresres númericos}
                                   +PreencheDireita     (' ',006) {Código de recolhinebto FETHAB}
                                   +'E' {Responsável pelo recolhinebto FETHAB E=EMpresa}
                                   +'0' {Tipo do CT-e (0=Ct-e Normal/1=CT-e de Complemento de valor / 2=Ct-e Emitido em hipótese de anulação de bédito}
                                   +PreencheDireita     (' ',044) {CT-e referência (Apenas caracteres numéricos}
                                   +PreencheDireita     (' ',048) {Brancos} // +PreencheDireita     (' ',047){Brancos}
                                   );
                end;
                {incrementa sequencia do registro}
                 Inc(iSequencia);
                {codigo do imposto}
                {01-ICMS
                 02-IPI
                 03-ISS
                 08-DIFALI
                 09-SUBST. TRIBUTARIA
                 17-IRRF
                 18-ISS RETIDO
                 22-PIS RETIDO
                 23-CONFINS RETIDO
                 24-CONTRIBUIÇÃO SOCIAL RETIDO
                 25-CONTRIBUICAO RETIDA NA FONTE
                 26-INSS RETIDO}
                {impostos - ICMS}
                 Writeln(tfTexto,   '03'{fixo 03 impostos}
                                   +FormatFloat         ('0000000',iSequencia)
                                   +PreencheZeroEsquerda('1',007){Codigo Impostos 1-ICMS}
                                   +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('##0.00',0)),005){Percentual de Reducao da Base}
                                   +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',SQLEstoque.FieldByname('NF_BASEICMS').AsCurrency)),013){base icms}
                                   +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('##0.00',SQLEstoque.FieldByname('NF_ALIQ_ICMS').AsCurrency)),005){aliquota icms}
                                   +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',SQLEstoque.FieldByname('NF_VL_ICMS').AsCurrency)),013){valor icms}
                                   +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',0)),013){valor Isentos}
                                   +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',0)),013){valor Outros}
                                   +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',SQLEstoque.FieldByname('NF_VL_IPI').AsCurrency)),013){valor Ipi}
                                   +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',SQLEstoque.FieldByname('NF_VL_SUBTRIB').AsCurrency)),013){valor Substituicao Tributaria}
                                   +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',0)),013){valor Contábil}
                                   +PreencheDireita     (' ',06){Código do recolhimento}
                                   +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',0)),013){valor não tributadas - Apenas para GO}
                                   +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',0)),013){valor Parcela reduzida - Apenas para GO}
                                   +PreencheDireita     (' ',074){Brancos}  // +PreencheDireita     (' ',024){Brancos}
                         );
                 Inc(iSequencia);
                {produtos}



                SqlNFItens.Close;
                SqlNFItens.CommandText := SQLDEF('TABELAS','SELECT * FROM NF_IT01','WHERE NF_IT_NOTANUMER ='''+SQLEstoque.FieldByname('NF_NOTANUMBER').AsString+'''','','');
                SqlNFItens.Open;
                SqlNFItens.First;
                 if (not SqlNFItens.IsEmpty) then
                    begin
                       while not SqlNFItens.Eof do
                          begin
                            {registro de produtos}
                             Writeln(tfTexto,   '04'{Produtos}
                                               +FormatFloat         ('0000000',iSequencia)
                                               +PreencheDireita     (Copy(SqlNFItens.FieldByName('PRD_REFER').AsString,1,14),014){codigo do produto}
                                               +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('###,##0.0000',SqlNFItens.FieldByName('NF_QTDE').AsCurrency)),013)//quantidade
                                               +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('###,##0.000',(((SqlNFItens.FieldByName('NF_PRECO').AsCurrency - ((SqlNFItens.FieldByName('NF_QTDE').AsCurrency * SqlNFItens.FieldByName('NF_IDESCTO1').AsCurrency) / 100)) * SqlNFItens.FieldByName('NF_QTDE').AsCurrency))+ SqlNFItens.FieldByName('NF_IPIVALOR').AsCurrency)),013) {calcula a base do icms p/item}  { 13/10/2009 Valor total (Base Calc + ipi)}
                                               +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('###,##0.000',SqlNFItens.FieldByName('NF_IPIVALOR').AsCurrency)),013 ){valor do ipi deste item}
                                               +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('###,##0.000',((SqlNFItens.FieldByName('NF_QTDE').AsCurrency - ((SqlNFItens.FieldByName('NF_PRECO').AsCurrency * SqlNFItens.FieldByName('NF_IDESCTO1').AsCurrency) / 100)) * SqlNFItens.FieldByName('NF_QTDE').AsCurrency))),013) {calcula a base do icms p/item}
                                               +'1'{1=Nota / 2=Extra}
                                               +SQLEstoque.FieldByname('NF_EMISSAO').AsString{Data Emissao}
                                               +PreencheZeroEsquerda(' ',007){Codigo da situacao tributaria}
                                               +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('###,##0.00',(SqlNFItens.FieldByName('NF_PRECO').AsCurrency * SqlNFItens.FieldByName('NF_QTDE').AsCurrency))),013) {calcula a base do icms p/item} {13/10/2009 Valor Bruto do Produto}
                                               +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('###,##0.00',SqlNFItens.FieldByName('NF_IDESCTO1').AsCurrency)),013 ){valor do desconto}
                                               +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('###,##0.00',((SqlNFItens.FieldByName('NF_PRECO').AsCurrency - ((SqlNFItens.FieldByName('NF_PRECO').AsCurrency * SqlNFItens.FieldByName('NF_IDESCTO1').AsCurrency) / 100)) * SqlNFItens.FieldByName('NF_QTDE').AsCurrency))),013) {calcula a base do icms p/item}
                                               +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',SqlNFItens.FieldByName('NF_ICMSVALOR').AsCurrency)),013){Base de calculo do ICMS p/substituicao Tributaria}
                                               +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',SqlNFItens.FieldByname('NF_ICMSALIQ').AsCurrency)),013){aliquota icms}
                                               +'N'  {Produto incentivado S/N}
                                               +PreencheZeroEsquerda('0',007){Codigo da Apuração -Apenas para o Estado do  PE}
                                               +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',0)),013){Valor do frete}
                                               +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',0)),013){Valor do Seguro}
                                               +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',0)),013){Valor das despesas acessórias}
                                               +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',0)),013){Quantidade de gasolina}
                                               +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',0)),013){Valor do ICMS}
                                               +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',0)),013){Valor da SUBTRI}
                                               +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',0)),013){Valor de Isentas IPI}
                                               +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',0)),013){Valor de outras IPI}
                                               +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',0)),013){ICMS NFP}
                                               +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.000000',SqlNFItens.FieldByName('NF_PRECO').AsCurrency)),015){Valor unitário}
                                               +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('##0.00',0)),005){Alíquota da substituição tributária}
                                               +PreencheZeroEsquerda(Iif(SqlNFItens.FieldByName('NF_IPIVALOR').AsCurrency > 0,'07','07'),007)  { +PreencheZeroEsquerda('0',007) } { Codigo da tributação ipi }
                                               +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('##0.00',SqlNFItens.FieldByName('NF_IPIALIQ').AsCurrency)),005){Alíquota do ipi}
                                               +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',0)),013){Base de cálculo ISSQN}
                                               +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('##0.00',0)),005){Alíquota de ISSQN}
                                               +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',0)),013){Valor ISSQN}
                                               +PreencheZeroEsquerda(SqlNFItens.FieldByName('NTP_CFOP').AsString,007){CFOP}
                                               +PreencheDireita     (' ',020){Série do ECF}
                                               +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('##0.00',0)),005){Alíquota de PIS}
                                               +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',0)),013){Valor do PIS}
                                               +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('##0.00',0)),005){Alíquota do COFINS}
                                               +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',0)),013){Valor do COFINS}
                                               +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',0)),013){Custo total}
                                               +PreencheZeroEsquerda('99',007){CST do Pis}
                                               +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',0)),013){Base de cálculo do PIS}
                                               +PreencheZeroEsquerda('99',007){CST do COFINS}
                                               +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',0)),013){Base de cálculo do COFINS}
                                               +PreencheDireita     (' ',017){Chassi do veículo}
                                               +PreencheZeroEsquerda('1',001){Tipo de operação Veículo(0=Concessionária/1=Faturamento/2=Venda direta/9=Outras}
                                               +PreencheDireita     (' ',255){Lote do medicamento}
                                               +PreencheZeroEsquerda('0',007){Quantidade de item por lote de medicamento}
                                               +PreencheDireita     (' ',010){Data de validade}
                                               +PreencheDireita     (' ',010){Data de fabricação do medicamento}
                                               +PreencheZeroEsquerda('0',001){Referência base cálculo(0=Tabelado/1=Negativa/2=Positiva/3=Neutra/4=Mar valor agregado}
                                               +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',0)),013){ Valor tabelado/máximo 13,2}
                                               +PreencheDireita     (' ',255){Número de série da arma}
                                               +PreencheDireita     (' ',255){Número de série do cano}
                                               +PreencheDireita     (' ',003){Enquadramento do IPI}
                                               +PreencheDireita     (' ',100){Brancos  JKO}
                                   );
                            {proximo produto}
                             SqlNFItens.Next;
                            {incrementa sequencia do registro}
                             Inc(iSequencia);
                    end;
                 end;
                {proxima nota fiscal}
                 SQLEstoque.Next;
                 Progress.Position := Progress.Position + 1;
            end;
            {registro trailler}
           Writeln(tfTexto,   Copies('9',100));{Preencher o conteudo com 9}
         end;
     finally
       wPROCESSO                 := False;
       BitCancelarPro.Enabled    := False;
       BitProcessar.Enabled      := True;
       BitCancelar.Enabled       := True;
       BitVoltar.Enabled         := True;
       CloseFile(tfTexto);
       //beep;
       uteis.aviso('Processo de exportação das nota de entrada concluído com sucesso para (Dominio).');
       BitVoltar.Enabled         := True;
     end;
     Screen.Cursor    := CrDefault;
end;

procedure TFrmExportacaoContabilitadade.ExportacaoNotaSaidasDominio;
begin
   try
      Screen.Cursor      := CrHourglass;
      {inicializa variaveis}
      iSequencia        := 0;
      {data}
      DecodeDate(Date,wANO,wMES,wDIA);
      {local do arquivos}
      AssignFile(tfTexto,dbInicio.SistemaLocal+'ARQUIVO\NfSaida'+FormatFloat('00',wMES)+'-'+FormatFloat('0000',wANO)+'.txt');
      {inciliza arquivo texto}
      RewRite(tfTexto);
      {grava registro N.F. entrada}
      Writeln(tfTexto,   '01'{tipo registro}
                        +PreencheZeroEsquerda(Trim(DataCadastros.CdsEmpresaEMP_CODIGO_CONTABILIDADE.AsString),007){Codigo da Empresa}
                        +PreencheZeroEsquerda (Trim(DataCadastros.CdsEmpresaEMP_CGC.AsString),14){cnpj empresa}
                        +DataInicial.Text{Data Inicial}
                        +DataFinal.Text{Data Final}
                        +'N'{valor fixo 'N'}
                        +'03'{Tipo de Nota (01=Contabilidade/02=Entradas/03=Saídas/04=Seriços)}
                        +'00000'{Constante}
                        +'1'{Sistema(1=Contabilidade/2=Caixa/0=Outro)}
                        +'18'{Valor Fixo}
                        );
      {nota fiscal saidas}
      SQLEstoque.Close;
      SQLEstoque.CommandText := 'select * from NF0001 T1 JOIN CLI0000 T2 ON (T2.CLI_CODIGO = T1.CLI_CODIGO) where T1.NF_ENTR_SAID = ''S'' and T1.NF_EMISSAO BETWEEN '+RetornaNull(DataAmericana(DataInicial.Text))+' AND '+RetornaNull(DataAmericana(DataFinal.Text))+'';
      SQLEstoque.Open;
      SQLEstoque.First;
      {qtde de notas fiscais}
      Progress.Max      := SQLEstoque.RecordCount;
      CQNFiscais.Value  := SQLEstoque.RecordCount;
      Progress.Position := 0;
      SQLEstoque.First;
      if (not SQLEstoque.IsEmpty) then
         begin
            while (not SQLEstoque.Eof) do
               begin
                  {display na tela}
                  Application.ProcessMessages;
                  if (SQLEstoque.FieldByname('NF_NUM_NFE').AsString <> EmptyStr) and (SQLEstoque.FieldByname('NF_NUM_NFE').AsInteger > 0) then
                   PanNotaFiscal.Caption          := SQLEstoque.FieldByname('NF_NUM_NFE').AsString
                   else
                  PanNotaFiscal.Caption          := SQLEstoque.FieldByname('NF_NOTANUMBER').AsString;
                  //PanNotaFiscal.Caption          := SQLEstoque.FieldByname('NF_NOTANUMBER').AsString;
                  PanEmissao.Caption             := SQLEstoque.FieldByname('NF_EMISSAO').AsString;
                  PanValorNota.Caption           := FormatFloat('###,###,##0.00',SQLEstoque.FieldByname('NF_TOT_NOTA').AsCurrency);
                  {totais}
                  CQNFiscais.Value        := (CQNFiscais.Value + SQLEstoque.FieldByname('NF_TOT_NOTA').AsCurrency);
                  {}
                  {tipo do frete
                  {codigo do acumulador}
                   sCodigoAcumulador := '003';
                  {incrementa sequencia do registro}
                   Inc(iSequencia);
                  {registro do emitente /destinatario}
                  if (SQLEstoque.FieldByname('NF_NUM_NFE').AsString <> EmptyStr) and (SQLEstoque.FieldByname('NF_NUM_NFE').AsInteger > 0) then
                  begin
                    Writeln(tfTexto, '02'{tipo registro}
                                     +FormatFloat         ('0000000',iSequencia)
                                     +PreencheZeroEsquerda(Trim(DataCadastros.CdsEmpresaEMP_CODIGO_CONTABILIDADE.AsString),007){código Empresa}
                                     +Iif(SQLEstoque.FieldByname('CLI_PESSOA').AsString = 'J',PreencheZeroEsquerda(Trim(SQLEstoque.FieldByname('CLI_CGC').AsString),14),PreencheDireita(Trim(SQLEstoque.FieldByname('CLI_CGC').AsString),14))
                                     +PreencheZeroEsquerda('1',007){Codigo da Espécie /1=NF-NOTA FISCAL/2=NFF-NOTA FISCAL FATURA/3=NFE-NOTA FISCAL ENTRADA/4=NFS-NOTA FISCAL SERVIÇO}
                                     +PreencheZeroEsquerda('0',002){código da Exclusao da DIEF}
                                     +PreencheZeroEsquerda(sCodigoAcumulador,007){código Acumulador}
                                     +PreencheZeroEsquerda(SQLEstoque.FieldByname('OPE_NATUREZA').AsString,007){codigo da natureza}
                                     +PreencheDireita     (SQLEstoque.FieldByname('CLI_UF').AsString,02)
                                     +PreencheZeroEsquerda('0',002){Seguimento}
                                     +PreencheZeroEsquerda(SQLEstoque.FieldByname('NF_NUM_NFE').AsString,007){Numero do Documento}
                                     +PreencheDireita     (SqlCdsEmpresaEMP_SERIE_NFE.AsString,007)
                                     +PreencheZeroEsquerda('0',007){Documento Final}
                                     +SQLEstoque.FieldByname('NF_EMISSAO').AsString{Data Saida}
                                     +SQLEstoque.FieldByname('NF_EMISSAO').AsString{Data Emissao}
                                     +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',SQLEstoque.FieldByname('NF_TOT_NOTA').AsCurrency)),013){valor contabil}
                                     +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',0)),013){Valor da Exclusao da DIEF}
                                     +PreencheDireita     (' ',030){Reservado}
                                     +'C'{Modalidade de frete (c=cif/ f=fob)}
                                     +PreencheZeroEsquerda('0',007){codigo municipio}
                                     +'P'{fator gerador da CRF E=EMISSAO OU P=PAGAMETO}
                                     +' '{fator gerador da CRFOP E=emissão ou P=pagamento}
                                     +' '{fator gerador da IRRFP E=emissão ou P=pagamento}
                                     +'1'{Tipo da Receita (1=Receita Propria /2=Receita de Terceiro (co-fat)/3=Receita Própria - vda mercad/5=Receita própria-vda serv pré pago/6=Outras rec propr/7=Outr rec terc}
                                     +' '{Branco}
                                     +PreencheZeroEsquerda('0',007){CFOP estendido/detalhado apenas estado SE}
                                     +PreencheZeroEsquerda('0',007){Cód da transf utilizado para notas de transf crédito - apenas para estado do RS}
                                     +PreencheZeroEsquerda('0',007){Código da observação}
                                     +PreencheDireita     (' ',010){Data do visto Para notas de transf de crédito ICMS-Obs Apenas para o estado de MG}
                                     +PreencheZeroEsquerda('0',007){Código que identifica o tipo da Antecipação tributária}
                                     +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',SQLEstoque.FieldByname('NF_VLFRETE').AsCurrency)),013){Valor do frete}
                                     +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',SQLEstoque.FieldByname('NF_VLSEGURO').AsCurrency)),013){Valor do Seguro}
                                     +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',SQLEstoque.FieldByname('NF_DESP_ACES').AsCurrency)),013){Valor da despesas acessórias}
                                     +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',SQLEstoque.FieldByname('NF_TOT_PROD').AsCurrency)),013){Valor dos produtos}
                                     +'0' {Valor B.C.ICMS ST 0=Informações complementares ou 1=Quadro cálculo imposto apenas para SCANC-CTB}
                                     +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',0)),013){Outras saídas apenas para MG}
                                     +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',0)),013){Saídas Isentas apenas para MG}
                                     +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',0)),013){Saídas Isentas (Cupom Fiscal). Apenas para MG}
                                     +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',0)),013){Saídas Isentas (N.Fiscal Mod.02). Apenas para MG}
                                     +PreencheZeroEsquerda(SQLEstoque.FieldByname('NF_MODELO_NF').AsString,007){Código do modelo do documento fiscal}
                                     +PreencheZeroEsquerda('0',007){Código fiscal da prestação de serviços}
                                     +PreencheZeroEsquerda('0',007){Código da Situação Tributária}
                                     +PreencheZeroEsquerda(SQLEstoque.FieldByname('NF_SERIE').AsString,007){Sub-Série}
                                     +PreencheZeroEsquerda('00',002){Tipo do título 00=Duplicata/01=Cheque/02=Promissória/03=Recibo/99=Outros}
                                     +PreencheDireita     (' ',050){Identificação do título}
                                     +PreencheDireita     (SQLEstoque.FieldByname('CLI_INSC').AsString,020){Inscrição Estadual do Cliente}
                                     +PreencheDireita     (' ',020){Inscrição Municipal do Cliente}
                                     +PreencheDireita     (' ',150){Observação}
                                     +PreencheDireita     (' ',150) {Observação}
                                     +PreencheDireita     (SQLEstoque.FieldByname('NF_CHAVE_NFE').AsString,044){Chave NFe(apenas caracteres numéricos}
                                     +PreencheDireita     (' ',006){Código de recolhimento FETHAB}
                                     +'E'  {PreencheDireita     (' ',001)} {Responsável pelo recolhimento FETHAB (E=empresa/C=cliente}
                                     +PreencheZeroEsquerda('0',001){Tipo de CT-e (0=CT-e Normal/1=Ct-e de Complement valores /2=CT-e Emitido em hipótese de anulação de débito}
                                     +PreencheDireita     (' ',044){CT-e refrência (Apenas caracteres numéricos)}
                                     +PreencheDireita     (' ',048){Brancos}
                                     );
                  end else
                  begin
                    Writeln(tfTexto, '02'{tipo registro}
                                     +FormatFloat         ('0000000',iSequencia)
                                     +PreencheZeroEsquerda(Trim(DataCadastros.CdsEmpresaEMP_CODIGO_CONTABILIDADE.AsString),007){código Empresa}
                                     +Iif(SQLEstoque.FieldByname('CLI_PESSOA').AsString = 'J',PreencheZeroEsquerda(Trim(SQLEstoque.FieldByname('CLI_CGC').AsString),14),PreencheDireita(Trim(SQLEstoque.FieldByname('CLI_CGC').AsString),14))
                                     +PreencheZeroEsquerda('1',007){Codigo da Espécie /1=NF-NOTA FISCAL/2=NFF-NOTA FISCAL FATURA/3=NFE-NOTA FISCAL ENTRADA/4=NFS-NOTA FISCAL SERVIÇO}
                                     +PreencheZeroEsquerda('0',002){código da Exclusao da DIEF}
                                     +PreencheZeroEsquerda(sCodigoAcumulador,007){código Acumulador}
                                     +PreencheZeroEsquerda(SQLEstoque.FieldByname('OPE_NATUREZA').AsString,007){codigo da natureza}
                                     +PreencheDireita     (SQLEstoque.FieldByname('CLI_UF').AsString,02)
                                     +PreencheZeroEsquerda('0',002){Seguimento}
                                     +PreencheZeroEsquerda(SQLEstoque.FieldByname('NF_NOTANUMBER').AsString,007){Numero do Documento}
                                     +PreencheDireita     ('U',007){serie da nota fiscal}
                                     +PreencheZeroEsquerda('0',007){Documento Final}
                                     +SQLEstoque.FieldByname('NF_EMISSAO').AsString{Data Saida}
                                     +SQLEstoque.FieldByname('NF_EMISSAO').AsString{Data Emissao}
                                     +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',SQLEstoque.FieldByname('NF_TOT_NOTA').AsCurrency)),013){valor contabil}
                                     +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',0)),013){Valor da Exclusao da DIEF}
                                     +PreencheDireita     (' ',030){Reservado}
                                     +'C'{Modalidade de frete (c=cif/ f=fob)}
                                     +PreencheZeroEsquerda('0',007){codigo municipio}
                                     +'P'{fator gerador da CRF E=EMISSAO OU P=PAGAMETO}
                                     +' '{fator gerador da CRFOP E=emissão ou P=pagamento}
                                     +' '{fator gerador da IRRFP E=emissão ou P=pagamento}
                                     +'1'{Tipo da Receita (1=Receita Propria /2=Receita de Terceiro (co-fat)/3=Receita Própria - vda mercad/5=Receita própria-vda serv pré pago/6=Outras rec propr/7=Outr rec terc}
                                     +' '{Branco}
                                     +PreencheZeroEsquerda('0',007){CFOP estendido/detalhado apenas estado SE}
                                     +PreencheZeroEsquerda('0',007){Cód da transf utilizado para notas de transf crédito - apenas para estado do RS}
                                     +PreencheZeroEsquerda('0',007){Código da observação}
                                     +PreencheDireita     (' ',010){Data do visto Para notas de transf de crédito ICMS-Obs Apenas para o estado de MG}
                                     +PreencheZeroEsquerda('0',007){Código que identifica o tipo da Antecipação tributária}
                                     +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',SQLEstoque.FieldByname('NF_VLFRETE').AsCurrency)),013){Valor do frete}
                                     +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',SQLEstoque.FieldByname('NF_VLSEGURO').AsCurrency)),013){Valor do Seguro}
                                     +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',SQLEstoque.FieldByname('NF_DESP_ACES').AsCurrency)),013){Valor da despesas acessórias}
                                     +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',SQLEstoque.FieldByname('NF_TOT_PROD').AsCurrency)),013){Valor dos produtos}
                                     +'0' {Valor B.C.ICMS ST 0=Informações complementares ou 1=Quadro cálculo imposto apenas para SCANC-CTB}
                                     +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',0)),013){Outras saídas apenas para MG}
                                     +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',0)),013){Saídas Isentas apenas para MG}
                                     +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',0)),013){Saídas Isentas (Cupom Fiscal). Apenas para MG}
                                     +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',0)),013){Saídas Isentas (N.Fiscal Mod.02). Apenas para MG}
                                     +PreencheZeroEsquerda(SQLEstoque.FieldByname('NF_MODELO_NF').AsString,007){Código do modelo do documento fiscal}
                                     +PreencheZeroEsquerda('0',007){Código fiscal da prestação de serviços}
                                     +PreencheZeroEsquerda('0',007){Código da Situação Tributária}
                                     +PreencheZeroEsquerda(SQLEstoque.FieldByname('NF_SERIE').AsString,007){Sub-Série}
                                     +PreencheZeroEsquerda('00',002){Tipo do título 00=Duplicata/01=Cheque/02=Promissória/03=Recibo/99=Outros}
                                     +PreencheDireita     (' ',050){Identificação do título}
                                     +PreencheDireita     (SQLEstoque.FieldByname('CLI_INSC').AsString,020){Inscrição Estadual do Cliente}
                                     +PreencheDireita     (' ',020){Inscrição Municipal do Cliente}
                                     +PreencheDireita     (' ',150){Observação}
                                     +PreencheDireita     (' ',150) {Observação}
                                     +PreencheDireita     (SQLEstoque.FieldByname('NF_CHAVE_NFE').AsString,044){Chave NFe(apenas caracteres numéricos}
                                     +PreencheDireita     (' ',006){Código de recolhimento FETHAB}
                                     +'E'  {PreencheDireita     (' ',001)} {Responsável pelo recolhimento FETHAB (E=empresa/C=cliente}
                                     +PreencheZeroEsquerda('0',001){Tipo de CT-e (0=CT-e Normal/1=Ct-e de Complement valores /2=CT-e Emitido em hipótese de anulação de débito}
                                     +PreencheDireita     (' ',044){CT-e refrência (Apenas caracteres numéricos)}
                                     +PreencheDireita     (' ',048){Brancos}
                                     );
                  end;
               {codigo do imposto}
              {01-ICMS
               02-IPI
               03-ISS
               08-DIFALI
               09-SUBST. TRIBUTARIA
               17-IRRF
               18-ISS RETIDO
               22-PIS RETIDO
               23-CONFINS RETIDO
               24-CONTRIBUIÇÃO SOCIAL RETIDO
               25-CONTRIBUICAO RETIDA NA FONTE
               26-INSS RETIDO}
              {sequencia}
               Inc(iSequencia);
              {Impostos - ICMS}
               Writeln(tfTexto,   '03'{tipo registro}
                                 +FormatFloat         ('0000000',iSequencia)
                                 +PreencheZeroEsquerda('1',007){Codigo do Imposto /1=ICMS}
                                 +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('##0.00',0)),005){Percentua Redução}
                                 +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',SQLEstoque.FieldByname('NF_TOT_NOTA').AsCurrency)),013){base contabil}
                                 +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#0.00',SQLEstoque.FieldByname('NF_ALIQ_ICMS').AsCurrency)),005)//aliquota
                                 +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',SQLEstoque.FieldByname('NF_VL_ICMS').AsCurrency)),013)//valor do imposto
                                 +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',0)),013){valor Isentas}
                                 +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',0)),013){valor de Outras}
                                 +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',0)),013){Valor Contábil}
                                 +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',0)),013){Valor não Tributadas (13,2). Apenas para GO}
                                 +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',0)),013){Valor parcela Reduzida(13,2).Apenas para GO}
                                 +PreencheDireita     (' ',074){brancos}
                      );

               if (SQLEstoque.FieldByname('NF_VL_IPI').AsCurrency > 0) then
                  begin
                    {incrementa sequencia do registro}
                     Inc(iSequencia);
                    {Impostos - IPI}
                     Writeln(tfTexto,   '03'{tipo registro}
                                       +FormatFloat         ('0000000',iSequencia)
                                       +PreencheZeroEsquerda('1',007){Codigo do Imposto /2=IPI}
                                       +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('##0.00',0)),005){Percentua Redução}
                                       +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',SQLEstoque.FieldByname('NF_TOT_NOTA').AsCurrency)),013){base contabil}
                                       +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#0.00',SQLEstoque.FieldByname('NF_ALIQ_ICMS').AsCurrency)),005)
                                       +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',SQLEstoque.FieldByname('NF_VL_IPI').AsCurrency)),013)
                                       +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',0)),013){valor Isentas}
                                       +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',0)),013){valor de Outras}
                                       +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',0)),013){Valor Contábil}
                                       +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',0)),013){Valor não Tributadas (13,2). Apenas para GO}
                                       +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',0)),013){Valor parcela Reduzida(13,2).Apenas para GO}
                                       +PreencheDireita     (' ',074){brancos JKO}
                            );
                  end;
              {seleciona os produtos}
                SqlNFItens.Close;
                SqlNFItens.CommandText := SQLDEF('TABELAS','SELECT * FROM NF_IT01','WHERE NF_IT_NOTANUMER ='''+SQLEstoque.FieldByname('NF_NOTANUMBER').AsString+'''','','');
                SqlNFItens.Open;
                SqlNFItens.First;
               if (not SqlNFItens.IsEmpty) then
                  begin
                     while (not SqlNFItens.Eof) do
                        begin
                           {incrementa sequencia do registro}
                           Inc(iSequencia);
                           Writeln(tfTexto,   '04'{tipo registro}
                                              +FormatFloat         ('0000000',iSequencia)
                                              +PreencheDireita     (copy(SqlNFItens.FieldByName('PRD_REFER').AsString,1,14),14){CÓDIGO DO PRODUTO}
                                              +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('###,##0.0000',SqlNFItens.FieldByName('NF_QTDE').AsCurrency)),013){quantidade a importar}
                                              +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('###,##0.000',((SqlNFItens.FieldByName('NF_PRECO').AsCurrency * SqlNFItens.FieldByName('NF_QTDE').AsCurrency) + SqlNFItens.FieldByName('NF_IPIVALOR').AsCurrency))),013) {VALOR TOTAL (Base calc + IPI) anterior:valor total deste item}
                                              +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('###,##0.000',(SqlNFItens.FieldByName('NF_IPIVALOR').AsCurrency))),013){valor do ipi deste item}
                                              +iif(SqlNFItens.FieldByName('NF_IPIVALOR').AsCurrency > 0,PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('###,##0.000',(SqlNFItens.FieldByName('NF_QTDE').AsCurrency * SqlNFItens.FieldByName('NF_PRECO').AsCurrency))),013),PreencheZeroEsquerda('0',13)) {calcula a base do ipi}
                                              +'1'{Nota}
                                              +SQLEstoque.FieldByname('NF_EMISSAO').AsString
                                              +PreencheZeroEsquerda(' ',007){Codigo da situacao triburaria ICMS}
                                              +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('###,##0.00',(SqlNFItens.FieldByName('NF_PRECO').AsCurrency * SqlNFItens.FieldByName('NF_QTDE').AsCurrency))),013) {valor do produto bruto}
                                              +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#0.00',SqlNFItens.FieldByName('NF_IDESCTO1').AsCurrency)),013){valor desconto item}
                                              +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('###,##0.00',(SqlNFItens.FieldByName('NF_PRECO').AsCurrency * SqlNFItens.FieldByName('NF_QTDE').AsCurrency))),013) {calcula a base do icms p/item}
                                              +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('###,##0.00',SqlNFItens.FieldByName('NF_VLSUBST').AsCurrency)),013){Base de Calculo do ICMS Substituicao Tributaria}
                                              +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#0.00',SqlNFItens.FieldByname('NF_ICMSALIQ').AsCurrency)),013)//Aliquota do ICMS
                                              +PreencheDireita     (' ',017){Código do chassi do veículo A PARTIR DAQUI LAYOUT OUT/2009}
                                              +'N' {Produto incentivado S/N Apenas para o estado de PE}
                                              +PreencheZeroEsquerda('0',007){Código de apuração Apenas para o estado de PE}
                                              +PreencheDireita     (' ',004){Situação Tributária do produto quanto ao ECF -Apenas para o estado de SE}
                                              +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#0.00',0)),013){Valor do frete 13,2}
                                              +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#0.00',0)),013){Valor do seguro 13,2}
                                              +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#0.00',0)),013){Valor das despesas acessórias 13,2}
                                              +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#0.000',0)),013){Quantidade de Gasolina 13,3}
                                              +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#0.00',0)),013){Valor do ICMS  13,2}
                                              +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#0.00',SqlNFItens.FieldByName('NF_VLSUBST').AsCurrency)),013){Valor do SUBTRI  13,2}
                                              +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#0.00',0)),013){Valor de isentas IPI  13,2}
                                              +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#0.00',0)),013){Valor de outras ipi 13,2}
                                              +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#0.000000',SqlNFItens.FieldByName('NF_PRECO').AsCurrency)),015){Valor Unitário 15,6}
                                              +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#0.00',0)),05){Alíquota da substituição tributária 5,2}
                                              +PreencheZeroEsquerda('0',007){Código de tributação do ipi}
                                              +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#0.00',SqlNFItens.FieldByName('NF_IPIALIQ').AsCurrency)),005){Alíquota ipi 5,2}
                                              +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#0.00',0)),013){Base de cálculo ISSQN 13,2}
                                              +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#0.00',0)),005){Alíquota ISSQN 5,2}
                                              +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#0.00',0)),013){Valor ISSQN 13,2}
                                              +PreencheDireita     (' ',050){Lote do medicamento}
                                              +PreencheDireita     ('0',010){Data de validade}
                                              +PreencheZeroEsquerda('00',002){Referênci a a base de cálculo 00=Tabelado/01=Negativa/02=Positiva/03=Neutra}
                                              +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#0.00',0)),013){Valor tabelado máximo 13,2}
                                              +PreencheDireita     (' ',050){Número de série da arma}
                                              +PreencheDireita     (' ',050){Número de série do cano}
                                              +PreencheZeroEsquerda('01',002){Tipo de operação do veículo 00=Concessionária/01=Faturamento/02=Venda direta/09=Outras}
                                              +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#0.000',0)),015){Quantidade cancelada 15,3}
                                              +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#0.00',0)),013){Valor do cancelamento 13,2}
                                              +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#0.00',0)),013){Isentas de ICMS 13,2}
                                              +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#0.00',0)),013){Não incidência de ICMS 13,2}
                                              +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#0.00',0)),013){Valor acumulado adquirido com ST 13,2}
                                              +PreencheDireita     ('0',010){Data de fabricação do medicamento}
                                              +PreencheDireita     (' ',020){Série de fabricação do ECF}
                                              +PreencheZeroEsquerda('99',007){CST do PIS}
                                              +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#0.00',0)),013){Base de cálculo do pis 13,2}
                                              +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#0.00',0)),005){Aliquota do pis 5,2}
                                              +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#0.00',0)),013){Valor do pis 13,2}
                                              +PreencheZeroEsquerda('99',007){CST do CONFINS}
                                              +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#0.00',0)),013){Base de Cálculo co Confins 13,2}
                                              +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#0.00',0)),005){Aliquota do confins 5,2 }
                                              +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#0.00',0)),013){Valor do Confins 13,2}
                                              +PreencheZeroEsquerda('0',007){Quantidade de item por lote de medicamento}
                                              +PreencheDireita     (' ',003){Enquadramento do IPI}
                                              +PreencheDireita     (' ',100){Brancos}
                                   );

                          {proximo produto}
                           SqlNFItens.Next;
                        end;
                  end;
              {proxima nota fiscal}
               SQLEstoque.Next;
               Progress.Position := Progress.Position + 1;
            end;
          {registro trailler}
           Writeln(tfTexto,   Copies('9',100));{Preencher o conteudo com 9}
       end
    else
       begin
          //beep;
          uteis.aviso('Não foram encotradas notas fiscais de entrada '+#13#10+
                'no período informado ref. a Empresa selecionada !');
          //BitProcessar.SetFocus;
       end;
   finally
      wPROCESSO                 := False;
      BitCancelarPro.Enabled    := False;
      BitProcessar.Enabled      := True;
      BitCancelar.Enabled       := True;
      BitVoltar.Enabled         := True;
     CloseFile(tfTexto);
     //beep;
     uteis.aviso('Processo de exportação das notas fiscais concluido com sucesso para (Dominio).');
   end;
   Screen.Cursor    := CrDefault;
end;

procedure TFrmExportacaoContabilitadade.ExportacaoProdutosDominio;
begin
   try
     Screen.Cursor    := CrHourglass;
    {inicializa variaveis}
     iSequencia := 0;
     PanDisplay.Caption  := '';
     {data}
      DecodeDate(Date,wANO,wMES,wDIA);
     CRegistro.Clear;
    {}
     SQLEstoque.Close;
     SQLEstoque.CommandText := 'select * from PRD0000 T1';
     SQLEstoque.Open;
     SQLEstoque.First;
     {qtde de notas fiscais}
     Progress.Max      := SQLEstoque.RecordCount;
     Progress.Position := 0;
     SQLEstoque.First;
    {local do arquivos}
     AssignFile(tfTexto,dbInicio.SistemaLocal+'ARQUIVO\Produtos.txt');
    {inciliza arquivo texto}
     RewRite(tfTexto);
     if (not SQLEstoque.IsEmpty) then
        begin
           while (not SQLEstoque.Eof) do
              begin
                {display}
                 Application.ProcessMessages;
                 PanDisplay.Caption  := SQLEstoque.FieldByname('PRD_REFER').AsString;
                 CRegistro.AsInteger := CRegistro.AsInteger + 1;
                {grava registro N.F. entrada}
                 Writeln(tfTexto,'6'
                                +PreencheDireita     (copy(SQLEstoque.FieldByname('PRD_REFER').AsString,001,014),014){codigo produto}
                                +PreencheZeroEsquerda(Trim(DataCadastros.CdsEmpresaEMP_CODIGO_CONTABILIDADE.AsString),007){codigo empresa}
                                +PreencheZeroEsquerda('1',007){codigo do grupo}
                                +PreencheDireita     (' ',010){codigo NBM}
                                +PreencheDireita     (SQLEstoque.FieldByname('PRD_DESCRI').AsString,040){descricao do produto}
                                +PreencheDireita     (SQLEstoque.FieldByname('PRD_UND').AsString,006){unidade de medida}
                                +PreencheDireita     (' ',13){Brancos}
                                +PreencheDireita     (' ',11){Brancos}
                                +PreencheDireita     (' ',11){Brancos}
                                +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('###,###,##0.000',0)),013){valor inicial do estoque}
                                +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('###,###,##0.000',0)),013){valor final do estoque}
                                +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('###,###,##0.00',0)),005){alíquota ipi}
                                +PreencheDireita     (' ',040){Observação}
                                +PreencheDireita     (Trim(SQLEstoque.FieldByname('IPI_CODIGO').AsString),008){Código NCM}
                                +PreencheZeroEsquerda('0',007){espécie para DNF}
                                +PreencheZeroEsquerda('0',007){unidade para DNF}
                                +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('###,###,##0.000',0)),014){fator de conversao para DNF}
                                +'N'{exportar para DNF (S/N)}
                                +PreencheZeroEsquerda(Trim(SQLEstoque.FieldByname('STB_TRIBUTACAO').AsString),007){codigo da situcao tributaria}
                                +PreencheDireita     (' ',017){Branco Layoyt-02} {Chassi do veiculo}
                                +PreencheDireita     (' ',001){Branco Layoyt-02} {veiculo novo (S/N)}
                                +PreencheDireita     (' ',014){codigo EAN (DIC/Sergipe)}
                                +PreencheZeroEsquerda('0',007){Codigo de produto relevante (DIC/Sergipe)} //PreencheZeroEsquerda(copy(DadosConsulta.CdSConsultar.FieldByname('EST_REGISTRO').AsString,01,07,07){codigo de produto}
                                +DateToStr(Date){Data Saldo Final}
                                +PreencheZeroEsquerda('0',007){Codigo do Produto Conf. Anexo I ou II (DNF)}
                                +PreencheZeroEsquerda('0',007){Captacidade Volumétrica (ml) (DNF)}
                                +'N'{Incentivo Fiscal (S/N)}
                                +'N'{Gera informações para GRF-CBT (S/N)}
                                +PreencheZeroEsquerda('0',007){Código do Produto GRF-CTB}
                                +'N'{Gera informações para SCANC (S/N)}
                                +PreencheZeroEsquerda('0',007){Código do Produto SCANC}
                                +'N'{Este produto contém Gasolina A(S/N)}
                                +PreencheDireita     ('UN',002){Unidade (DIEF)}
                                +'1'{Tipo Produto/Serviço - 1=Mercadoria/2=Serviço com ICMS/3=Serviço sem ICMS (DIEF)}
                                +'N'{Gera informações registro 88ST Sintegra (S/N)}
                                +PreencheZeroEsquerda('0',007){Código do Produto na tabela SEFAZ 88ST Sintegra}
                                +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('####0.00',0)),005){alíquota ICMS}
                                +'O'{Tipo V=Veiculo/M=Medicamentos/A=Armas de fogo/O=Outros (S/N)}
                                +'0'{Tipo Tipo arma  (0=Uso Permitido/1=Uso Restrito)}
                                +PreencheDireita     (' ',255){Descrição da arma}
                                +PreencheZeroEsquerda('0',007){Gênero}
                                +PreencheZeroEsquerda('0',007){Código serviço}
                                +PreencheZeroEsquerda('0',007){Classificação}
                                +PreencheZeroEsquerda('0',002){Tipo Item (0=Mercadoria/1=Materia Prima/2=Produto Intermediário)}
                                +PreencheZeroEsquerda('0',02){MCM Exterior}
                                +PreencheZeroEsquerda('0',02){Código Imposto Importação}
                                +'N'{Produto Composto (S/N)}
                                +PreencheDireita     (' ',001){inf. Complementares IPM da PDI somente GO}
                                +'00' { PreencheDireita     (' ',002)Código Produto IPM da PDI somente GO}
                                +PreencheDireita     ('N',001){Cesta Basica S/N}
                                +PreencheZeroEsquerda('0',007){Código do Produto DAM}
                                +PreencheZeroEsquerda(Trim('0'),016){Código de Barras}
                                +PreencheDireita     ('0',001){Tipo medicamento (0=Similar/1=Generico/2=Etico ou de marca)}
                                +PreencheDireita     (Trim(SQLEstoque.FieldByname('PRD_TEMSUB').AsString),001){Produto Indicado Sub. Triburaria (S/N)}
                                +'00/00/0000' {PreencheDireita     (' ',010)Data inicio Subt. Tributaria Rio Grande do Sul}
                                +PreencheDireita     ('N',001){Produto com preço tabelado S/N}
                                +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('####0.00',0)),013){valor Unitario da Substituição Tributaria RS}
                                +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('####0.00',0)),007){MVA da Sub. Triburaria RS}
                                +'1 ' {PreencheDireita     ('0',001)Grupo da Sub. Trib (1=Auto Pecas/2=Raçoes/3=Colchoes/4Cosmeticos/5=Arroz)}
                                +PreencheDireita     ('N',001){Equipamento de ECF (s/n)}
                                +PreencheDireita     ('N',001){Serviço Tributado (s/n)}
                                +PreencheDireita     (' ',003){EX TIPI}
                                +PreencheDireita     ('M',001){Periodicidade do IPI (D=Decendial/M=mensal)}
                                +PreencheZeroEsquerda('0',007){classificação de Itens de Energia Elétrica}
                                +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('###,###,##0.000000',SQLEstoque.FieldByname('PRD_PVENDA').AsCurrency)),015){valor unitario}
                                +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('###,###,##0.0000',0)),013){quantidade inicial 4 casa decimais}
                                +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('###,###,##0.0000',0)),013){quantidade final 4 casa decimais}
                                +PreencheDireita     (' ',58){Brancos}
                         );
                {proximo produto}
                 SQLEstoque.Next;
                 Progress.Position := (Progress.Position + 1);
                {incrementa sequencia}
                 Inc(iSequencia);
              end;
        end
     else
        begin
           //beep;
           uteis.aviso('Não foi possível localizar produtos para exportação !');
        end;
   finally
     wPROCESSO                 := False;
     BitCancelarPro.Enabled    := False;
     BitProcessar.Enabled      := True;
     BitCancelar.Enabled       := True;
     BitVoltar.Enabled         := True;
     SQLEstoque.Close;
     CloseFile(tfTexto);
     //beep;
     uteis.aviso('Processo de exportação dos produtos concluido com sucesso para (Dominio).');
     Screen.Cursor    := CrDefault;
   end;
end;

procedure TFrmExportacaoContabilitadade.ExportacaoNotaEntradasDominioA;
begin
   try
      Screen.Cursor      := CrHourglass;
      {inicializa variaveis}
      iSequencia        := 0;
      {data}
      DecodeDate(Date,wANO,wMES,wDIA);
      {local do arquivos}
      AssignFile(tfTexto,dbInicio.SistemaLocal+'ARQUIVO\NfEntradaF'+FormatFloat('00',wMES)+'-'+FormatFloat('0000',wANO)+'.txt');
      {inciliza arquivo texto}
      RewRite(tfTexto);
      {grava registro N.F. entrada}
      Writeln(tfTexto,   '01'{tipo registro}
                        +PreencheZeroEsquerda(Trim(DataCadastros.CdsEmpresaEMP_CODIGO_CONTABILIDADE.AsString),007){Codigo da Empresa}
                        +PreencheZeroEsquerda (Trim(DataCadastros.CdsEmpresaEMP_CGC.AsString),14){cnpj empresa}
                        +DataInicial.Text{Data Inicial}
                        +DataFinal.Text{Data Final}
                        +'N'{valor fixo 'N'}
                        +'03'{Tipo de Nota (01=Contabilidade/02=Entradas/03=Saídas/04=Seriços)}
                        +'00000'{Constante}
                        +'1'{Sistema(1=Contabilidade/2=Caixa/0=Outro)}
                        +'18'{Valor Fixo}
                        );
      {nota fiscal saidas}
      SQLEstoque.Close;
      SQLEstoque.CommandText := 'select * from ENF0001 T1 JOIN FOR0000 T2 ON (T2.FOR_CODIGO = T1.FOR_CODIGO) where  T1.ENF_EMISSAO BETWEEN '+RetornaNull(DataAmericana(DataInicial.Text))+' AND '+RetornaNull(DataAmericana(DataFinal.Text))+'';
      SQLEstoque.Open;
      SQLEstoque.First;
      {qtde de notas fiscais}
      Progress.Max      := SQLEstoque.RecordCount;
      CQNFiscais.Value  := SQLEstoque.RecordCount;
      Progress.Position := 0;
      SQLEstoque.First;
      if (not SQLEstoque.IsEmpty) then
         begin
            while (not SQLEstoque.Eof) do
               begin
                 PanNotaFiscal.Caption   := SQLEstoque.FieldByname('ENF_NOTANUMBER').AsString;
                 PanEmissao.Caption      := SQLEstoque.FieldByname('ENF_EMISSAO').AsString;
                 PanValorNota.Caption    := FormatFloat('###,###,##0.00',SQLEstoque.FieldByname('ENF_TOT_NOTA').AsCurrency);
                {totais}
                 CQNFiscais.Value        := (CQNFiscais.Value + SQLEstoque.FieldByname('ENF_TOT_NOTA').AsCurrency);
                {natureza operacoes}
                 sNat_Operacao           := SQLEstoque.FieldByname('OPE_NATUREZA').AsString;

                  {}
                  {tipo do frete
                  {codigo do acumulador}
//                   sCodigoAcumulador := '003';
                  {incrementa sequencia do registro}
                   Inc(iSequencia);
                  {registro do emitente /destinatario}
                {}
                {codigo do acumulador}
                 sCodigoAcumulador := '006';
                {registro  Nota Entradas}

                 Writeln(tfTexto,  '02'{fixo 02 entradas}
                                   +FormatFloat         ('0000000',iSequencia)
                                   +PreencheZeroEsquerda(Trim(DataCadastros.CdsEmpresaEMP_CODIGO_CONTABILIDADE.AsString),007){Codigo Empresa}
                                   +PreencheZeroEsquerda(Trim(SQLEstoque.FieldByname('FOR_CGC').AsString),014)
                                   +PreencheZeroEsquerda('1',007){Codigo da Espécie /1=NF-NOTA FISCAL/2=NFF-NOTA FISCAL FATURA/3=NFE-NOTA FISCAL ENTRADA/4=NFS-NOTA FISCAL SERVIÇO}
                                   +PreencheZeroEsquerda('0',002){Codigo da Exclusão da DIEF}
                                   +PreencheZeroEsquerda(sCodigoAcumulador,007){Codigo do acumulador}
                                   +PreencheZeroEsquerda(sNat_Operacao,007){Codigo da Natureza - CFOP}
                                   +PreencheZeroEsquerda('0',002){Seguimento}
                                   +PreencheZeroEsquerda(SQLEstoque.FieldByname('ENF_NOTANUMBER').AsString,007){Numero do Documento}
                                   +PreencheDireita     (SQLEstoque.FieldByname('ENF_SERIE').AsString,007)
                                   +PreencheZeroEsquerda('0',007){Documento Final}
                                   +SQLEstoque.FieldByname('ENF_EMISSAO').AsString{Data Entrada}
                                   +SQLEstoque.FieldByname('ENF_EMISSAO').AsString{Data Emissao}
                                   +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',SQLEstoque.FieldByname('ENF_TOT_NOTA').AsCurrency)),013){valor contabil}
                                   +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',0)),013){Valor da Exclusao da DIEF}
                                   +PreencheDireita     (' ',030){Reservado}
                                   +PreencheDireita     (SQLEstoque.FieldByname('FOR_UF').AsString,002) //estado do fornecedor
                                   +'C'{Modalidade do Frete = C=CIF/F=FOB}
                                   +'T'{Emitente da nota (P=PROPRIO / T=TERCEIRO)}
                                   +'P'{Fato Gerador da CRF(E=Emissao ou P=Pagamento)}
                                   +'P'{fato erador do IRPJ(E=Emissao ou P=Pagamento)}
                                   +PreencheZeroEsquerda('0',007) {Código do Município - pode ser o codigo do ibge}
                                   +PreencheZeroEsquerda('0',007) {CFOP Estendido/Detalhamento}
                                   +PreencheZeroEsquerda('0',007) {Apenas para o Estado SE Cód transf utilizado para notas de transf de crpeditos}
                                   +PreencheDireita     (' ',006) {Brancos}  {Apenas para o Estado RS}
                                   +PreencheDireita     (' ',006) {Brancos}
                                   +PreencheZeroEsquerda('0',007) {Código da Observação}
                                   +PreencheDireita     (' ',010) {Data do visto} {Para notas de transf de crédito de ICMS-Obs Apenas p o estado MG.}
                                   +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',SQLEstoque.FieldByname('ENF_VLFRETE').AsCurrency)),013){Valor do frete}
                                   +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',SQLEstoque.FieldByname('ENF_VLSEGURO').AsCurrency)),013){Valor do seguro}
                                   +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',SQLEstoque.FieldByname('ENF_DESP_ACES').AsCurrency)),013){Valor das despesas acessória}
                                   +PreencheZeroEsquerda('0',007) {Código que identifica o tipo da antecipação tributária}
                                   +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',0)),013){Valor do Pis}
                                   +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',0)),013){Valor do Cofins}
                                   +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',SQLEstoque.FieldByname('ENF_TOT_PROD').AsCurrency)),013){Valor dos produtos}
                                   +'0'  {Valor B.C.ICMS ST 0=informações complementares ou 1=Quadro Cálculo do Imposto - Apenas para SCANC-CTB}
                                   +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',0)),013){Entrada cuja saída é isenta. Apenas para MG}
                                   +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',0)),013){Outras entradas isentas. Apenas para MG}
                                   +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',0)),013){Valor transporte incluído na base}
                                   +'0'  {Susbst tributária - Apenas para MG - Ressarcimento}
                                   +PreencheZeroEsquerda('0',007) {0=ICMS-SUBTRI A Recolher no período ou 1=ICMS-SUBTRI EM Operações próprias.  Apena par MG. Código do modelo do documento fiscal}
                                   +PreencheZeroEsquerda('0',007) {Código da Situação Tributária}
                                   +PreencheZeroEsquerda('0',007) {Sub Série}
                                   +PreencheDireita     (SQLEstoque.FieldByname('FOR_INSC').AsString,020) {Inscrição Estadual do fornecedor}
                                   +PreencheDireita     (' ',020) {Inscrição municipal forne020cedor}
                                   +PreencheDireita     (' ',150) {Observação}
                                   +PreencheDireita     (' ',150) {Observação}
                                   +PreencheDireita     (' ',044) {Chave da NFe - apenas caracteresres númericos}
                                   +PreencheDireita     (' ',006) {Código de recolhinebto FETHAB}
                                   +'E' {Responsável pelo recolhinebto FETHAB E=EMpresa}
                                   +'0' {Tipo do CT-e (0=Ct-e Normal/1=CT-e de Complemento de valor / 2=Ct-e Emitido em hipótese de anulação de bédito}
                                   +PreencheDireita     (' ',044) {CT-e referência (Apenas caracteres numéricos}
                                   +PreencheDireita     (' ',048) {Brancos} // +PreencheDireita     (' ',047){Brancos}
                                   );
               {codigo do imposto}
              {01-ICMS
               02-IPI
               03-ISS
               08-DIFALI
               09-SUBST. TRIBUTARIA
               17-IRRF
               18-ISS RETIDO
               22-PIS RETIDO
               23-CONFINS RETIDO
               24-CONTRIBUIÇÃO SOCIAL RETIDO
               25-CONTRIBUICAO RETIDA NA FONTE
               26-INSS RETIDO}
              {sequencia}
               Inc(iSequencia);
              {Impostos - ICMS}
               Writeln(tfTexto,   '03'{tipo registro}
                                 +FormatFloat         ('0000000',iSequencia)
                                 +PreencheZeroEsquerda('1',007){Codigo do Imposto /1=ICMS}
                                 +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('##0.00',0)),005){Percentua Redução}
                                 +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',SQLEstoque.FieldByname('ENF_TOT_NOTA').AsCurrency)),013){base contabil}
                                 +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#0.00',SQLEstoque.FieldByname('ENF_ALIQ_ICMS').AsCurrency)),005)
                                 +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',SQLEstoque.FieldByname('ENF_VL_ICMS').AsCurrency)),013)
                                 +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',0)),013){valor Isentas}
                                 +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',0)),013){valor de Outras}
                                 +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',0)),013){Valor Contábil}
                                 +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',0)),013){Valor não Tributadas (13,2). Apenas para GO}
                                 +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',0)),013){Valor parcela Reduzida(13,2).Apenas para GO}
                                 +PreencheDireita     (' ',074){brancos}
                      );

               if (SQLEstoque.FieldByname('ENF_VL_IPI').AsCurrency > 0) then
                  begin
                    {incrementa sequencia do registro}
                     Inc(iSequencia);
                    {Impostos - IPI}
                     Writeln(tfTexto,   '03'{tipo registro}
                                       +FormatFloat         ('0000000',iSequencia)
                                       +PreencheZeroEsquerda('1',007){Codigo do Imposto /2=IPI}
                                       +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('##0.00',0)),005){Percentua Redução}
                                       +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',SQLEstoque.FieldByname('ENF_TOT_NOTA').AsCurrency)),013){base contabil}
                                       +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#0.00',SQLEstoque.FieldByname('ENF_ALIQ_ICMS').AsCurrency)),005)
                                       +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',SQLEstoque.FieldByname('ENF_VL_IPI').AsCurrency)),013)
                                       +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',0)),013){valor Isentas}
                                       +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',0)),013){valor de Outras}
                                       +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',0)),013){Valor Contábil}
                                       +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',0)),013){Valor não Tributadas (13,2). Apenas para GO}
                                       +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#,###,##0.00',0)),013){Valor parcela Reduzida(13,2).Apenas para GO}
                                       +PreencheDireita     (' ',074){brancos JKO}
                            );
                  end;
              {seleciona os produtos}
               SqlNFItens.Close;
               SqlNFItens.CommandText := SQLDEF('TABELAS','select * from ENF_IT01','WHERE ENF_IT_NOTANUMBER ='''+SQLEstoque.FieldByname('ENF_NOTANUMBER').AsString+'''','','');
               SqlNFItens.Open;
               SqlNFItens.First;
               if (not SqlNFItens.IsEmpty) then
                  begin
                     while (not SqlNFItens.Eof) do
                        begin
                           {incrementa sequencia do registro}
                           Inc(iSequencia);
                           Writeln(tfTexto,   '04'{tipo registro}
                                              +FormatFloat         ('0000000',iSequencia)
                                              +PreencheDireita     (copy(SqlNFItens.FieldByName('PRD_REFER').AsString,1,14),14){CÓDIGO DO PRODUTO}
                                              +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('###,##0.0000',SqlNFItens.FieldByName('ENF_QTDE').AsCurrency)),013){quantidade a importar}
                                              +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('###,##0.000',((SqlNFItens.FieldByName('ENF_PRECO').AsCurrency * SqlNFItens.FieldByName('ENF_QTDE').AsCurrency) + ((SqlNFItens.FieldByName('ENF_PRECO').AsCurrency * SqlNFItens.FieldByName('ENF_QTDE').AsCurrency) * (SqlNFItens.FieldByName('ENF_IPIALIQ').AsCurrency/100))))),013) {VALOR TOTAL (Base calc + IPI) anterior:valor total deste item}
                                              +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('###,##0.000',(SqlNFItens.FieldByName('ENF_PRECO').AsCurrency * SqlNFItens.FieldByName('ENF_QTDE').AsCurrency) * (SqlNFItens.FieldByName('ENF_IPIALIQ').AsCurrency/100))),013){valor do ipi deste item}
                                              +iif((SqlNFItens.FieldByName('ENF_PRECO').AsCurrency * SqlNFItens.FieldByName('ENF_QTDE').AsCurrency) * (SqlNFItens.FieldByName('ENF_IPIALIQ').AsCurrency/100) > 0,PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('###,##0.000',(SqlNFItens.FieldByName('ENF_QTDE').AsCurrency * SqlNFItens.FieldByName('ENF_PRECO').AsCurrency))),013),PreencheZeroEsquerda('0',13)) {calcula a base do ipi}
                                              +'1'{Nota}
                                              +SQLEstoque.FieldByname('ENF_EMISSAO').AsString
                                              +PreencheZeroEsquerda(' ',007){Codigo da situacao triburaria ICMS}
                                              +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('###,##0.00',(SqlNFItens.FieldByName('ENF_PRECO').AsCurrency * SqlNFItens.FieldByName('ENF_QTDE').AsCurrency))),013) {valor do produto bruto}
                                              +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#0.00',0)),013){valor desconto item}
                                              +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('###,##0.00',(SqlNFItens.FieldByName('ENF_PRECO').AsCurrency * SqlNFItens.FieldByName('ENF_QTDE').AsCurrency))),013) {calcula a base do icms p/item}
                                              +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('###,##0.00',0)),013){Base de Calculo do ICMS Substituicao Tributaria}
                                              +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#0.00',SqlNFItens.FieldByname('ENF_ICMSALIQ').AsCurrency)),013)
                                              +PreencheDireita     (' ',017){Código do chassi do veículo A PARTIR DAQUI LAYOUT OUT/2009}
                                              +'N' {Produto incentivado S/N Apenas para o estado de PE}
                                              +PreencheZeroEsquerda('0',007){Código de apuração Apenas para o estado de PE}
                                              +PreencheDireita     (' ',004){Situação Tributária do produto quanto ao ECF -Apenas para o estado de SE}
                                              +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#0.00',0)),013){Valor do frete 13,2}
                                              +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#0.00',0)),013){Valor do seguro 13,2}
                                              +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#0.00',0)),013){Valor das despesas acessórias 13,2}
                                              +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#0.000',0)),013){Quantidade de Gasolina 13,3}
                                              +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#0.00',0)),013){Valor do ICMS  13,2}
                                              +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#0.00',0)),013){Valor do SUBTRI  13,2}
                                              +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#0.00',0)),013){Valor de isentas IPI  13,2}
                                              +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#0.00',0)),013){Valor de outras ipi 13,2}
                                              +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#0.000000',SqlNFItens.FieldByName('ENF_PRECO').AsCurrency)),015){Valor Unitário 15,6}
                                              +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#0.00',0)),05){Alíquota da substituição tributária 5,2}
                                              +PreencheZeroEsquerda('0',007){Código de tributação do ipi}
                                              +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#0.00',SqlNFItens.FieldByName('ENF_IPIALIQ').AsCurrency)),005){Alíquota ipi 5,2}
                                              +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#0.00',0)),013){Base de cálculo ISSQN 13,2}
                                              +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#0.00',0)),005){Alíquota ISSQN 5,2}
                                              +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#0.00',0)),013){Valor ISSQN 13,2}
                                              +PreencheDireita     (' ',050){Lote do medicamento}
                                              +PreencheDireita     ('0',010){Data de validade}
                                              +PreencheZeroEsquerda('00',002){Referência a base de cálculo 00=Tabelado/01=Negativa/02=Positiva/03=Neutra}
                                              +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#0.00',0)),013){Valor tabelado máximo 13,2}
                                              +PreencheDireita     (' ',050){Número de série da arma}
                                              +PreencheDireita     (' ',050){Número de série do cano}
                                              +PreencheZeroEsquerda('01',002){Tipo de operação do veículo 00=Concessionária/01=Faturamento/02=Venda direta/09=Outras}
                                              +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#0.000',0)),015){Quantidade cancelada 15,3}
                                              +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#0.00',0)),013){Valor do cancelamento 13,2}
                                              +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#0.00',0)),013){Isentas de ICMS 13,2}
                                              +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#0.00',0)),013){Não incidência de ICMS 13,2}
                                              +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#0.00',0)),013){Valor acumulado adquirido com ST 13,2}
                                              +PreencheDireita     ('0',010){Data de fabricação do medicamento}
                                              +PreencheDireita     (' ',020){Série de fabricação do ECF}
                                              +PreencheZeroEsquerda('99',007){CST do PIS}
                                              +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#0.00',0)),013){Base de cálculo do pis 13,2}
                                              +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#0.00',0)),005){Aliquota do pis 5,2}
                                              +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#0.00',0)),013){Valor do pis 13,2}
                                              +PreencheZeroEsquerda('99',007){CST do CONFINS}
                                              +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#0.00',0)),013){Base de Cálculo co Confins 13,2}
                                              +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#0.00',0)),005){Aliquota do confins 5,2 }
                                              +PreencheZeroEsquerda(ExtrairNumeros(FormatFloat('#0.00',0)),013){Valor do Confins 13,2}
                                              +PreencheZeroEsquerda('0',007){Quantidade de item por lote de medicamento}
                                              +PreencheDireita     (' ',003){Enquadramento do IPI}
                                              +PreencheDireita     (' ',100){Brancos}
                                   );

                          {proximo produto}
                           SqlNFItens.Next;
                        end;
                  end;
              {proxima nota fiscal}
               SQLEstoque.Next;
               Progress.Position := Progress.Position + 1;
            end;
          {registro trailler}
           Writeln(tfTexto,   Copies('9',100));{Preencher o conteudo com 9}
       end
    else
       begin
          //beep;
          uteis.aviso('Não foram encotradas notas fiscais de entrada '+#13#10+
                'no período informado ref. a Empresa selecionada !');
          //BitProcessar.SetFocus;
       end;
   finally
      wPROCESSO                 := False;
      BitCancelarPro.Enabled    := False;
      BitProcessar.Enabled      := True;
      BitCancelar.Enabled       := True;
      BitVoltar.Enabled         := True;
     CloseFile(tfTexto);
     //beep;
     uteis.aviso('Processo de exportação das notas fiscais concluido com sucesso para (Dominio).');
   end;
   Screen.Cursor    := CrDefault;
end;

procedure TFrmExportacaoContabilitadade.ExportacaoProdutosCEST;
begin
   try

     Screen.Cursor    := CrHourglass;
     SQLEstoque.Close;
     SQLEstoque.CommandText :=
     ' SELECT prd_refer, PRD_DESCRI, PR.IPI_CODIGO , PRD_UND,PRD_ALIQICM,PRD_ORIGEM, STB_TRIBUTACAO, COALESCE(IP.IPI_ALIQ ,0) IPI_ALIQ,  PRD_EMBALA, PRD_FATORC, SPED_GENCODIGO, pr.SRV_CODIGO,'+
     ' SPED_TIPCODIGO, PRD_CSTPISCOFINS, PRD_ICMSUBS,ID_PRD_ESPECIFICO, PRD_ESPECIFICO_REDST, PR.CEST_COD, '+
     ' ( SELECT FIRST 1 FOR_CGC FROM PRD0000_CODIGO T1 JOIN FOR0000 T2 ON (T2.FOR_CODIGO = T1.FOR_CODIGO) '+
     '  WHERE T1.PRD_CODIGO = pr.PRD_CODIGO) FOR_CGC, PRD_CODBARRA ,                                       '+
     ' ( SELECT ic.ICM_ALIQ from ICM0000 ic where ic.ICM_DESTINO = EP.EMP_UF) as ICMS_ALIQUOTA             '+
     ' FROM PRD0000 PR LEFT JOIN IPI0000 IP ON (IP.IPI_CODIGO = PR.IPI_CODIGO) '+
     ' LEFT JOIN SRV0000 SV ON ( SRV_LANCAMENTO = ''S'' AND SV.SRV_REGISTRO = PR.SRV_REGISTRO) '+
     ' LEFT JOIN EMP0000 EP on (EP.EMP_CODIGO = PR.EMP_CODIGO) '+
     ' WHERE PRD_STATUS = ''A''' +
     ' AND PR.PRD_REFER IN ('+
     '  SELECT DISTINCT  IT.PRD_REFER FROM NF_IT01 IT JOIN NF0001 NF ON (NF.NF_EMISSAO BETWEEN '+RetornaNull(DataAmericana(DataInicial.Text))+
     ' AND '+RetornaNull(DataAmericana(DataFinal.Text))+' AND NF.NF_NOTANUMBER = IT.NF_IT_NOTANUMER AND NF.EMP_CODIGO = IT.EMP_CODIGO)'+
     ' UNION ALL SELECT DISTINCT IT.PRD_REFER FROM ENF_IT01 IT JOIN ENF0001 EF ON (EF.ENF_ENTRADA BETWEEN '+RetornaNull(DataAmericana(DataInicial.Text))+
     ' AND '+RetornaNull(DataAmericana(DataFinal.Text))+' AND EF.ENF_NOTANUMBER = IT.ENF_IT_NOTANUMBER  AND EF.EMP_CODIGO = IT.EMP_CODIGO))';
     SQLEstoque.Open;
     ProgressBar1.Max      := SQLEstoque.RecordCount;
     ProgressBar1.Position := 0;
     SQLEstoque.First;
     {local do arquivos}
      AssignFile(tfTexto,dbInicio.SistemaLocal+'ARQUIVO\ProdutosCEST.txt');
    {inciliza arquivo texto}
     RewRite(tfTexto);
     if (not SQLEstoque.IsEmpty) then
     while (not SQLEstoque.Eof) do
     begin
       Application.ProcessMessages;
       PanDisplay.Caption  := SQLEstoque.FieldByname('PRD_REFER').AsString;
       CRegistro.AsInteger := CRegistro.AsInteger + 1;

       Writeln(tfTexto,'"'+Trim(PreencheDireita(SQLEstoque.FieldByname('PRD_REFER').AsString,020))+'",'{codigo produto}
                       +'"'+Trim(PreencheDireita(copy(SQLEstoque.FieldByname('PRD_DESCRI').AsString,1,030),030))+'",'   {apelido do procuto, peguei 30 posições da descrição}
                       +'"'+Trim(PreencheDireita(copy(SQLEstoque.FieldByname('PRD_DESCRI').AsString,1,100),100))+'",' {descrição do produto}
                       +PreencheDireita(SQLEstoque.FieldByname('IPI_CODIGO').AsString,10)+',' {codigo NCM}
                       +'"'+PreencheDireita(SQLEstoque.FieldByname('PRD_UND').AsString,3)+'",' {UNIDADE DE MEDIDA}
                       +StringReplace((FormatFloat('####0.00',SQLEstoque.FieldByname('ICMS_ALIQUOTA').AsCurrency)),',','.',[rfReplaceAll, rfIgnoreCase])+','{alíquota ICMS}
                       +'"'+Trim(PreencheDireita(copy(SQLEstoque.FieldByname('PRD_ORIGEM').AsString+SQLEstoque.FieldByname('STB_TRIBUTACAO').AsString,001,003),003))+'",'  {CST ICMS}
                       +StringReplace((FormatFloat('####0.00',0)),',','.',[rfReplaceAll, rfIgnoreCase])+','{alíquota IPI}
                       +'"'+IIF(SQLEstoque.FieldByname('PRD_ICMSUBS').AsFloat> 0 , 'Sim','Não')+ '",' {tem substituição TRIBUTARIA}
                       + IntToStr(StrToIntDef(SQLEstoque.FieldByname('PRD_EMBALA').AsString,1))+','              {CAPACIDADE VOLUMETRICA}
                       +StringReplace((FormatFloat('####0.00',SQLEstoque.FieldByname('PRD_FATORC').AsCurrency)),',','.',[rfReplaceAll, rfIgnoreCase])+','{fator de conversão}
                       +'"'+Trim(PreencheDireita (copy(SQLEstoque.FieldByname('SPED_GENCODIGO').AsString,001,002),002))+'",' { CODIGO DO GENERO}
                       +'"'+Trim(PreencheDireita (StringReplace(SQLEstoque.FieldByname('SRV_CODIGO').AsString,'.','',[rfReplaceAll, rfIgnoreCase]),004))+'",'  {CODIGO DO SERVICO}
                       +Trim(PreencheDireita(copy(SQLEstoque.FieldByname('SPED_TIPCODIGO').AsString,001,002),002))+',' {TIPO DE ITEM}
                       +Trim(ExtrairNumeros('01'))+','{CST IPI}
                       +'50,' {CST PIS}
                       +'50,'  {CST CONFINS}
                       +StringReplace((FormatFloat('###0.0000',SQLEstoque.FieldByname('PRD_ICMSUBS').AsCurrency)),',','.',[rfReplaceAll, rfIgnoreCase])+','{alíquota ST}
                       +StringReplace((FormatFloat('####0.0000',0)),',','.',[rfReplaceAll, rfIgnoreCase])+','{Aliquota PIS}
                       +StringReplace((FormatFloat('####0.0000',0)),',','.',[rfReplaceAll, rfIgnoreCase])+','{Aliquota COFINS}
                       + '"'+IIF(SQLEstoque.FieldByname('ID_PRD_ESPECIFICO').AsInteger = 3 , 'Sim','Não')+'",' {OPERACOES MEDICAMENTO}
                       +'"'+'Não'+'",' {com selo IPI}
                       +'"'+'Não'+'",' {Unidade}
                       +'"'+Trim(PreencheDireita(copy('',001,030),030))+'",'
                       +'"'+Trim(PreencheDireita(copy('',001,060),060))+'",'
                       +'"'+Trim(PreencheDireita(copy('',001,002),002))+'",'
                       +'"'+Trim(PreencheDireita(copy('',001,002),002))+'",'
                       +'"'+'N'+'",'    {com incentivo prodepe}
                       +Trim('0.00')+','{Incentivo PRODEPE}
                       +Trim(ExtrairNumeros('50'))+','{CST IPI}
                       +Trim(ExtrairNumeros('01'))+','{CST PIS}
                       +Trim(ExtrairNumeros('01'))+','{CST COFINS}
                       +'"'+IIF( Length(RetirarMascaraCNPJ_INSC(SQLEstoque.FieldByName('for_cgc').AsString)) = 14, RetirarMascaraCNPJ_INSC(SQLEstoque.FieldByName('for_cgc').AsString),'')+'",'
                       +'"'+PreencheDireita(SQLEstoque.FieldByName('PRD_CODBARRA').AsString,25  ) +'",'
                       +','
                       +','
                       +'"'+PreencheDireita('',2)+'",'
                       +'"'+PreencheDireita('',2)+'",'
                       +StringReplace((FormatFloat('####0.00',SQLEstoque.FieldByname('PRD_ESPECIFICO_REDST').AsCurrency)),',','.',[rfReplaceAll, rfIgnoreCase])+','      {alíquota REDUÇÃO ICMS}
                       +PreencheDireita(SQLEstoque.FieldByName('CEST_COD').AsString,7)

                       );
       ProgressBar1.Position := (Progressbar1.Position + 1);
      {incrementa sequencia}
       SQLEstoque.Next;
     end;

      uteis.aviso('Processo de exportação dos produtos com CEST concluido com sucesso.');
   finally
     screen.Cursor := crDefault;
     wPROCESSO                 := False;
     BitCancelarPro.Enabled    := False;
     BitProcessar.Enabled      := True;
     BitCancelar.Enabled       := True;
     BitVoltar.Enabled         := True;
     SQLEstoque.Close;
     CloseFile(tfTexto);


   end;
end;

procedure TFrmExportacaoContabilitadade.ExportacaoProdutoSCI;
var
   sDecricao:String;
   rAliquotaICMS:Double;
begin
   if DataInicial.Date > DataFinal.Date then
      begin
         //beep;
         uteis.aviso('Data final não poder ser menor que data inicial !');
      end
   else
   if (DataInicial.Text = '  /  /    ') or (DataFinal.Text = '  /  /    ')then
      begin
         //beep;
         uteis.aviso('Informe a data !');
      end
   else
      begin
         try
           Screen.Cursor    := CrHourglass;
          {inicializa variaveis}
           iSequencia := 0;
           PanDisplay.Caption  := '';
           {data}
            DecodeDate(Date,wANO,wMES,wDIA);
           CRegistro.Clear;
          {}
           SQLEstoque.Close;
           SQLEstoque.CommandText := 'select T1.*,  T2.*, T3.EMP_UF, (select t5.ICM_ALIQ from ICM0000 t5 where t5.ICM_DESTINO = t3.EMP_UF) as ICMS_ALIQUOTA from PRD0000 T1 LEFT JOIN SRV0000 T2 ON (T2.SRV_REGISTRO = T1.SRV_REGISTRO) left join EMP0000 t3 on (t3.EMP_CODIGO = t1.EMP_CODIGO)'+
                                     ' WHERE T1.PRD_REFER IN (SELECT T1.PRD_REFER FROM NF_IT01 T1 JOIN NF0001 T2 ON (T2.NF_EMISSAO BETWEEN '+RetornaNull(DataAmericana(DataInicial.Text))+' AND '+RetornaNull(DataAmericana(DataFinal.Text))+' AND T2.NF_NOTANUMBER = T1.NF_IT_NOTANUMER AND T2.EMP_CODIGO = T1.EMP_CODIGO) GROUP BY T1.PRD_REFER '+
                                     ' UNION ALL SELECT T4.PRD_REFER FROM ENF_IT01 T4 JOIN ENF0001 T5 ON (T5.ENF_ENTRADA BETWEEN '+RetornaNull(DataAmericana(DataInicial.Text))+' AND '+RetornaNull(DataAmericana(DataFinal.Text))+' AND T5.ENF_NOTANUMBER = T4.ENF_IT_NOTANUMBER AND T5.FOR_CODIGO = T4.FOR_CODIGO AND T5.EMP_CODIGO = T4.EMP_CODIGO) GROUP BY T4.PRD_REFER)';
           SQLEstoque.Open;
           SQLEstoque.First;
           {qtde de notas fiscais}
           Progress.Max      := SQLEstoque.RecordCount;
           Progress.Position := 0;
           SQLEstoque.First;
          {local do arquivos}
           AssignFile(tfTexto,dbInicio.SistemaLocal+'ARQUIVO\Produtos.txt');
          {inciliza arquivo texto}
           RewRite(tfTexto);
           if (not SQLEstoque.IsEmpty) then
              begin
                 while (not SQLEstoque.Eof) do
                    begin
                      {display}
                       Application.ProcessMessages;
                       PanDisplay.Caption  := SQLEstoque.FieldByname('PRD_REFER').AsString;
                       CRegistro.AsInteger := CRegistro.AsInteger + 1;

                       sDecricao := SQLEstoque.FieldByname('PRD_DESCRI').AsString;
                       sDecricao := StringReplace(sDecricao, '"', '',[rfReplaceAll, rfIgnoreCase]);

                       //Aliquota
                       if (SQLEstoque.FieldByname('IPI_CODIGO').AsString <> '') then
                          begin
                             DataCadastros.sqlUpdate.Close;
                             DataCadastros.SqlUpdate.sql.text :='SELECT IPII_ALIQUOTA FROM IPI0000_ICMS WHERE IPI_CODIGO = '+QuotedStr(SQLEstoque.FieldByname('IPI_CODIGO').AsString)+' AND IPII_ESTADO = '+QuotedStr(SQLEstoque.FieldByname('EMP_UF').AsString)+' AND EMP_CODIGO = '+QuotedStr(dbInicio.Empresa.EMP_CODIGO) ;
                             DataCadastros.sqlUpdate.Open;
                             if (not DataCadastros.sqlUpdate.IsEmpty) then
                                begin
                                   rAliquotaICMS := DataCadastros.sqlUpdate.FieldByName('IPII_ALIQUOTA').AsCurrency;
                                end
                             else
                                begin
                                   rAliquotaICMS := SQLEstoque.FieldByname('ICMS_ALIQUOTA').AsCurrency;
                                end;
                          end
                       else
                          begin
                             rAliquotaICMS := SQLEstoque.FieldByname('ICMS_ALIQUOTA').AsCurrency;
                          end;

                       if (SQLEstoque.FieldByname('IPI_CODIGO').AsString <> '') then
                         begin
                            {grava registro N.F. entrada}
                             Writeln(tfTexto,'"'+Trim(PreencheDireita     (copy(SQLEstoque.FieldByname('PRD_REFER').AsString,001,020),020))+'",'{codigo produto}
                                            +'"'+Trim(PreencheDireita     (copy(SQLEstoque.FieldByname('PRD_REFER').AsString,001,030),030))+'",'
                                            +'"'+Trim(PreencheDireita     (copy(sDecricao,001,040),040))+'",'
                                            +'"'+Trim(PreencheDireita     (copy(SQLEstoque.FieldByname('IPI_CODIGO').AsString,001,010),010))+'",'
                                            +'"'+Trim(PreencheDireita     (copy(SQLEstoque.FieldByname('PRD_UND').AsString,001,003),003))+'",'
                                            +StringReplace((FormatFloat('####0.00',rAliquotaICMS)),',','.',[rfReplaceAll, rfIgnoreCase])+','{alíquota ICMS}
                                            +'"'+Trim(PreencheDireita     (copy(SQLEstoque.FieldByname('PRD_ORIGEM').AsString+SQLEstoque.FieldByname('STB_TRIBUTACAO').AsString,001,003),003))+'",'
                                            +StringReplace((FormatFloat('####0.00',0)),',','.',[rfReplaceAll, rfIgnoreCase])+','{alíquota IPI}
                                            +'"'+Trim(PreencheDireita     (copy(SQLEstoque.FieldByname('STB_TRIBUTACAO').AsString,001,003),003))+'",'
                                            +'"'+Trim(PreencheDireita     (copy('1',001,003),003))+'",'
                                            +StringReplace((FormatFloat('####0.000',0)),',','.',[rfReplaceAll, rfIgnoreCase])+','{Fator}
                                            //+'"'+Trim(PreencheDireita     (copy(SQLEstoque.FieldByname('SPED_GENCODIGO').AsString,001,002),002))+'",'
                                            //+'"'+Trim(PreencheDireita     (copy(SQLEstoque.FieldByname('SRV_CODIGO').AsString,001,004),004))+'",'
                                            //+'"'+Trim(PreencheDireita     (copy(SQLEstoque.FieldByname('SPED_TIPCODIGO').AsString,001,002),002))+'",'

                                            +'"'+Trim(PreencheDireita     (copy('',001,002),002))+'",'
                                            +'"'+Trim(PreencheDireita     (copy('',001,004),004))+'",'
                                            +'"'+Trim(PreencheDireita     (copy(SQLEstoque.FieldByname('SPED_TIPCODIGO').AsString,001,002),002))+'",'

                                            +Trim(ExtrairNumeros(''))+','{CST IPI}
                                            +Trim(ExtrairNumeros(''))+','{CST PIS}
                                            +Trim(ExtrairNumeros(''))+','{CST COFINS}
                                            +StringReplace((FormatFloat('####0.0000',0)),',','.',[rfReplaceAll, rfIgnoreCase])+','{Aliquota ST}
                                            +StringReplace((FormatFloat('####0.0000',0)),',','.',[rfReplaceAll, rfIgnoreCase])+','{Aliquota PIS}
                                            +StringReplace((FormatFloat('####0.0000',0)),',','.',[rfReplaceAll, rfIgnoreCase])+','{Aliquota COFINS}
                                            +'"'+Trim(PreencheDireita     (copy('N',001,003),003))+'",' {Medicamentos}
                                            +'"'+Trim(PreencheDireita     (copy('N',001,003),003))+'",' {IPI}
                                            +'"'+Trim(PreencheDireita     (copy('S',001,003),003))+'",' {Unidade}
                                            +'"'+Trim(PreencheDireita     (copy('',001,030),030))+'",'
                                            +'"'+Trim(PreencheDireita     (copy('',001,060),060))+'",'
                                            +'"'+Trim(PreencheDireita     (copy('',001,002),002))+'",'
                                            +'"'+Trim(PreencheDireita     (copy('',001,002),002))+'",'
                                            +'"'+Trim(PreencheDireita     (copy('N',001,002),002))+'",'
                                            +Trim('0.00')+','{Incentivo PRODEPE}
                                            +Trim(ExtrairNumeros(''))+','{CST IPI}
                                            +Trim(ExtrairNumeros(''))+','{CST PIS}
                                            +Trim(ExtrairNumeros(''))+','{CST COFINS}
                                            +'"'+Trim(PreencheDireita     (copy('',001,002),002))+'",'{CNPJ Fornecedor}
                                            +'"'+Trim(PreencheDireita     (copy(SQLEstoque.FieldByname('PRD_CODBARRA').AsString,001,025),025))+'"'
                                     );
                         end;
                      {proximo produto}
                       SQLEstoque.Next;
                       Progress.Position := (Progress.Position + 1);
                      {incrementa sequencia}
                       Inc(iSequencia);
                    end;
              end
           else
              begin
                 //beep;
                 uteis.aviso('Não foi possível localizar produtos para exportação !');
              end;
         finally
           wPROCESSO                 := False;
           BitCancelarPro.Enabled    := False;
           BitProcessar.Enabled      := True;
           BitCancelar.Enabled       := True;
           BitVoltar.Enabled         := True;
           SQLEstoque.Close;
           CloseFile(tfTexto);
           //beep;
           uteis.aviso('Processo de exportação dos produtos concluido com sucesso para (SCI).');
           Screen.Cursor    := CrDefault;
         end;
      end;
end;

procedure TFrmExportacaoContabilitadade.Edt_AlmoxExit(Sender: tObject);
begin
    Edt_Almox.text := StrZero(Edt_Almox.Text,Edt_Almox.MaxLength);
    if (Edt_Almox.Text <> '9999') then
       begin
           if SqlCdsAlmox.Locate('AMX_CODIGO',Edt_Almox.Text,[]) then
              begin
                  CbAlmox.Text := SqlCdsAlmoxAMX_DESCRI.AsString;
              end
           else
              begin
                  Edt_Almox.Text    := '9999';
                  CbAlmox.Text      := 'TODOS OS ALMOXARIFADOS';
                  CbAlmox.ItemIndex := 0;
              end;
       end
    else
       begin
           Edt_Almox.Text    := '9999';
           CbAlmox.Text      := 'TODOS OS ALMOXARIFADOS';
           CbAlmox.ItemIndex := 0;
       end;
end;

procedure TFrmExportacaoContabilitadade.CbAlmoxClick(Sender: tObject);
begin
    if (SqlCdsAlmox.Locate('AMX_DESCRI',CbAlmox.Text,[])=true) then
       begin
           Edt_Almox.Text := SqlCdsAlmoxAMX_CODIGO.AsString;
       end
    else
       begin
           Edt_Almox.Text    := '9999';
           CbAlmox.Text      := 'TODOS OS ALMOXARIFADOS';
           CbAlmox.ItemIndex := 0;
       end;
end;

procedure TFrmExportacaoContabilitadade.CbAlmoxExit(Sender: tObject);
begin
    if (SqlCdsAlmox.Locate('AMX_DESCRI',CbAlmox.Text,[])=true) then
       begin
           Edt_Almox.Text := SqlCdsAlmoxAMX_CODIGO.AsString;
       end
    else
       begin
           Edt_Almox.Text    := '9999';
           CbAlmox.Text      := 'TODOS OS ALMOXARIFADOS';
           CbAlmox.ItemIndex := 0;
       end;
end;

procedure TFrmExportacaoContabilitadade.Edt_AlmoxKeyPress(Sender: tObject;
  var Key: Char);
begin
    if not (key in ['0'..'9',#8]) then
       begin
          //beep;
          Key := #0;
       end;
end;

procedure TFrmExportacaoContabilitadade.Edt_TipoExit(Sender: tObject);
begin
    Edt_Tipo.text := StrZero(Edt_Tipo.Text,Edt_Tipo.MaxLength);
    if (Edt_Tipo.Text <> '999') then
       begin
           if (SqlCdsTipo.Locate('PTI_CODIGO',Edt_Tipo.Text,[])=true) then
              begin
                  CbTipo.Text := SqlCdsTipoPTI_DESCRI.AsString;
              end
           else
              begin
                  Edt_Tipo.Text    := '999';
                  CbTipo.Text      := 'TODOS OS TIPOS';
                  CbTipo.ItemIndex := 0;
              end;
       end
    else
       begin
           Edt_Tipo.Text    := '999';
           CbTipo.Text      := 'TODOS OS TIPOS';
           CbTipo.ItemIndex := 0;
       end;
end;

procedure TFrmExportacaoContabilitadade.CbTipoExit(Sender: tObject);
begin
    if (SqlCdsTipo.Locate('PTI_DESCRI',CbTipo.Text,[])=true) then
       begin
           Edt_Tipo.Text := SqlCdsTipoPTI_CODIGO.AsString;
           CbGrupo.Enabled := True;
       end
    else
       begin
           Edt_Tipo.Text    := '999';
           CbTipo.Text      := 'TODOS OS TIPOS';
           CbTipo.ItemIndex := 0;
       end;
end;

procedure TFrmExportacaoContabilitadade.CbTipoClick(Sender: tObject);
begin
    if (SqlCdsTipo.Locate('PTI_DESCRI',CbTipo.Text,[])=true) then
       begin
           Edt_Tipo.Text := SqlCdsTipoPTI_CODIGO.AsString;
           CbGrupo.Enabled := True;
       end
    else
       begin
           Edt_Tipo.Text    := '999';
           CbTipo.Text      := 'TODOS OS TIPOS';
           CbTipo.ItemIndex := 0;
       end;
end;

procedure TFrmExportacaoContabilitadade.Edt_GrupoExit(Sender: tObject);
begin
    Edt_Grupo.text := StrZero(Edt_Grupo.Text,Edt_Grupo.MaxLength);
    if (Edt_Grupo.Text <> '999') then
       begin
           if (SqlCdsGrupo.Locate('PGR_CODIGO',Edt_Grupo.Text,[])=true) then
              begin
                  CbGrupo.Text := SqlCdsGrupoPGR_DESCRI.AsString;
              end
           else
              begin
                  Edt_Grupo.Text    := '999';
                  CbGrupo.Text      := 'TODOS OS GRUPOS';
                  CbGrupo.ItemIndex := 0;
              end;
       end
    else
       begin
           Edt_Grupo.Text    := '999';
           CbGrupo.Text      := 'TODOS OS GRUPOS';
           CbGrupo.ItemIndex := 0;
       end;
end;

procedure TFrmExportacaoContabilitadade.Edt_GrupoKeyPress(Sender: tObject;
  var Key: Char);
begin
    if not (key in ['0'..'9',#8]) then
       begin
          //beep;
          Key := #0;
       end;
end;

procedure TFrmExportacaoContabilitadade.CbGrupoExit(Sender: tObject);
begin
    if (SqlCdsGrupo.Locate('PGR_DESCRI',CbGrupo.Text,[])=true) then
       begin
           Edt_Grupo.Text := SqlCdsGrupoPGR_CODIGO.AsString;
       end
    else
       begin
           Edt_Grupo.Text    := '999';
           CbGrupo.Text      := 'TODOS OS GRUPOS';
           CbGrupo.ItemIndex := 0;
       end;
end;

procedure TFrmExportacaoContabilitadade.Edt_LinhaExit(Sender: tObject);
begin
    Edt_Linha.text := StrZero(Edt_Linha.Text,Edt_Linha.MaxLength);
    if (Edt_Linha.Text <> '999') then
       begin
           if (SqlCdsLinha.Locate('LIN_CODIGO',Edt_Linha.Text,[])=true) then
              begin
                  CbLinha.Text := SqlCdsLinhaLIN_DESCRI.AsString;
              end
           else
              begin
                  Edt_Linha.Text    := '999';
                  CbLinha.Text      := 'TODAS AS LINHAS';
                  CbLinha.ItemIndex := 0;
              end;
       end
    else
       begin
           Edt_Linha.Text    := '999';
           CbLinha.Text      := 'TODAS AS LINHAS';
           CbLinha.ItemIndex := 0;
       end;
end;

procedure TFrmExportacaoContabilitadade.Edt_LinhaKeyPress(Sender: tObject;
  var Key: Char);
begin
    if not (key in ['0'..'9',#8]) then
       begin
          //beep;
          Key := #0;
       end;
end;

procedure TFrmExportacaoContabilitadade.CbLinhaExit(Sender: tObject);
begin
    if (SqlCdsGrupo.Locate('PGR_DESCRI',CbGrupo.Text,[])=true) then
       begin
           Edt_Grupo.Text := SqlCdsGrupoPGR_CODIGO.AsString;
       end
    else
       begin
           Edt_Grupo.Text    := '999';
           CbGrupo.Text      := 'TODOS OS GRUPOS';
           CbGrupo.ItemIndex := 0;
       end;
end;

procedure TFrmExportacaoContabilitadade.CbGrupoClick(Sender: tObject);
begin
    if (SqlCdsGrupo.Locate('PGR_DESCRI',CbGrupo.Text,[])=true) then
       begin
           Edt_Grupo.Text := SqlCdsGrupoPGR_CODIGO.AsString;
       end
    else
       begin
           Edt_Grupo.Text    := '999';
           CbGrupo.Text      := 'TODOS OS GRUPOS';
           CbGrupo.ItemIndex := 0;
       end;
end;

procedure TFrmExportacaoContabilitadade.CbLinhaClick(Sender: tObject);
begin
    if (SqlCdsLinha.Locate('LIN_DESCRI',CbLinha.Text,[])=true) then
       begin
           Edt_Linha.Text := SqlCdsLinhaLIN_CODIGO.AsString;
       end
    else
       begin
           Edt_Linha.Text    := '999';
           CbLinha.Text      := 'TODAS AS LINHAS';
           CbLinha.ItemIndex := 0;
       end;
end;

procedure TFrmExportacaoContabilitadade.rbInventarioClick(Sender: tObject);
begin
    RxLDisplay.Caption     := 'Exportação dos arquivos de cadastro de Produtos para inventário.';
    FileArqSalvar.FileName := dbInicio.SistemaLocal+'ARQUIVO\InventarioProdutos.txt';
    if (LsBLayout.ItemIndex = 2) then
      GbPeriodo.Visible      := True
    else
      GbPeriodo.Visible      := False;
    GbNotas.Visible        := False;
    GbGeral.Visible        := True;
    LblDisplay.Caption     := 'Inventário dos Produtos:';
end;

procedure TFrmExportacaoContabilitadade.rbProdutosCESTClick(Sender: TObject);
begin
    RxLDisplay.Caption     := 'Exportação dos arquivos de cadastro Produtos para onventário.';
    FileArqSalvar.FileName := dbInicio.SistemaLocal+'ARQUIVO\ProdutosCEST.txt';
    if (LsBLayout.ItemIndex = 2) then
      GbPeriodo.Visible      := True
    else
      GbPeriodo.Visible      := False;
    GbNotas.Visible        := False;
    GbGeral.Visible        := True;
    LblDisplay.Caption     := 'Produtos:';
end;

procedure TFrmExportacaoContabilitadade.ExportacaoInventarioProdutoSCI;
var
   rQuantidade:Real;
   condicaoAdicional: string;
begin
   if DataInicial.Date > DataFinal.Date then
      begin
         //beep;
         uteis.aviso('Data final não poder ser menor que data inicial !');
      end
   else
   if (DataInicial.Text = '  /  /    ') or (DataFinal.Text = '  /  /    ')then
      begin
         //beep;
         uteis.aviso('Informe a data !');
      end
   else                                                                  
      begin
         try
           Screen.Cursor    := CrHourglass;
          {inicializa variaveis}
           iSequencia := 0;
           PanDisplay.Caption  := '';
           {data}
            DecodeDate(Date,wANO,wMES,wDIA);
           CRegistro.Clear;
          {}
          //Tipo
          if (Edt_Tipo.Text <> '999') then
             condicaoAdicional := condicaoAdicional + ' and  T1.PTI_CODIGO = '+QuotedStr(Edt_Tipo.Text);
          //Grupo
          if (Edt_Grupo.Text <> '999') then
             condicaoAdicional := condicaoAdicional + ' and  T1.PGR_CODIGO = '+QuotedStr(Edt_Grupo.Text);
          //Linha
          if (Edt_Linha.Text <> '999') then
             condicaoAdicional := condicaoAdicional + ' and  T1.LIN_CODIGO = '+QuotedStr(Edt_Linha.Text);
          //Somente produtos Ativos
          condicaoAdicional := condicaoAdicional + ' and T1.PRD_STATUS = '+QuotedStr('A');


           SQLEstoque.Close;
           SQLEstoque.CommandText := 'select T1.* from PRD0000 T1 where 1 = 1 '+condicaoAdicional;
           SQLEstoque.Open;
           SQLEstoque.First;
           {qtde de notas fiscais}
           Progress.Max      := SQLEstoque.RecordCount;
           Progress.Position := 0;
           SQLEstoque.First;
          {local do arquivos}
           AssignFile(tfTexto,dbInicio.SistemaLocal+'ARQUIVO\InventarioProdutos.txt');
          {inciliza arquivo texto}
           RewRite(tfTexto);
           if (not SQLEstoque.IsEmpty) then
              begin
                 while (not SQLEstoque.Eof) do
                    begin
                      {display}
                       Application.ProcessMessages;
                       PanDisplay.Caption  := SQLEstoque.FieldByname('PRD_REFER').AsString;
                       CRegistro.AsInteger := CRegistro.AsInteger + 1;
                       //Busca Saldo
                       DataCadastros.sqlUpdate1.Close;
                       DataCadastros.sqlUpdate1.sql.text:= 'SELECT * FROM PCd_KARDEX_SALDO_DATA('+QuotedStr(dbInicio.Empresa.EMP_CODIGO)+','+QuotedStr(SQLEstoque.FieldByname('PRD_CODIGO').AsString)+','''+DataAmericana(DataFinal.Text)+' 23:59:59'''+','''+iif(Edt_Almox.Text = '9999','',Edt_Almox.Text)+''')';
                       DataCadastros.sqlUpdate1.open;
                       if (not DataCadastros.sqlUpdate1.IsEmpty) then
                           begin
                              rQuantidade :=  DataCadastros.sqlUpdate1.FieldByName('saldo').AsFloat;
                           end
                       else
                           begin
                              rQuantidade := 0;
                           end;
                       if (rQuantidade > 0) then
                          begin
                             Writeln(tfTexto,'"'+Trim(PreencheDireita     (copy(SQLEstoque.FieldByname('PRD_REFER').AsString,001,020),020))+'",'{codigo produto}
                                            +''+Trim(copy(DataFinal.Text,4,11))+','
                                            +StringReplace((FormatFloat('####0.0000',rQuantidade)),',','.',[rfReplaceAll, rfIgnoreCase])+','
                                            +StringReplace((FormatFloat('####0.0000',SQLEstoque.FieldByname('PRD_PMEDIO').AsFloat)),',','.',[rfReplaceAll, rfIgnoreCase])+','
                                            +StringReplace((FormatFloat('####0.0000',0)),',','.',[rfReplaceAll, rfIgnoreCase])+','{valor ICMS}
                                            +StringReplace((FormatFloat('####0.0000',SQLEstoque.FieldByname('PRD_PMEDIO').AsFloat * rQuantidade)),',','.',[rfReplaceAll, rfIgnoreCase])+',' // Valor Total Estoque (pMédio*Quant)
                                            +'1,'
                                            +'"",'
                                            +'"1.1.02.03.0003",'
                                            +'"",'
                                            +StringReplace((FormatFloat('####0.00',0)),',','.',[rfReplaceAll, rfIgnoreCase])+','{valor ICMS}
                                            +'"'+SQLEstoque.FieldByname('PRD_ORIGEM').AsString+'/'+SQLEstoque.FieldByname('STB_TRIBUTACAO').AsString+'",'
                                            +StringReplace((FormatFloat('####0.0000',0)),',','.',[rfReplaceAll, rfIgnoreCase])+',' // valor icms st
                                            +StringReplace((FormatFloat('####0.0000',0)),',','.',[rfReplaceAll, rfIgnoreCase])+',' // valor ipi
                                            +StringReplace((FormatFloat('####0.0000',0)),',','.',[rfReplaceAll, rfIgnoreCase])+',' // valor pis
                                            +StringReplace((FormatFloat('####0.0000',0)),',','.',[rfReplaceAll, rfIgnoreCase])+',' // valor cofins
                                            +StringReplace((FormatFloat('####0.00',SQLEstoque.FieldByname('PRD_PMEDIO').AsFloat * rQuantidade)),',','.',[rfReplaceAll, rfIgnoreCase])   // valor para fins IR = Valor Total Estoque
                                     );
                          end;
                      {proximo produto}
                       SQLEstoque.Next;
                       Progress.Position := (Progress.Position + 1);
                      {incrementa sequencia}
                       Inc(iSequencia);
                    end;
              end
           else
              begin
                 //beep;
                 uteis.aviso('Não foi possível localizar produtos para exportação !');
              end;
         finally
           wPROCESSO                 := False;
           BitCancelarPro.Enabled    := False;
           BitProcessar.Enabled      := True;
           BitCancelar.Enabled       := True;
           BitVoltar.Enabled         := True;
           SQLEstoque.Close;
           CloseFile(tfTexto);
           //beep;
           uteis.aviso('Processo de exportação dos produtos concluido com sucesso para (SCI).');
           Screen.Cursor    := CrDefault;
         end;
      end;
end;

end.
