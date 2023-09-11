unit REQ0001;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Provider, SqlExpr,SqlClientDataSet, Grids, DBGrids, DB, DBClient, DBLocal,
  DBLocalS, StdCtrls, RwFunc, ComCtrls, Buttons, ExtCtrls, DBCtrls,
   rxToolEdit, RXDBCtrl, Mask, rxCurrEdit, SimpleDS, Data.DBXFirebird;

type
  TFrmReqCompra = class(TForm)
    Grp_Producao: TGroupBox;
    SqlFaltaComprar: TSQLClientDataSet;
    DsFaltaComprar: TDataSource;
    SqlFaltaComprarOSI_REGISTRO: TIntegerField;
    SqlFaltaComprarEMP_CODIGO: TStringField;
    SqlFaltaComprarOSV_CODIGO: TStringField;
    SqlFaltaComprarOSV_EMISSAO: TSQLTimeStampField;
    SqlFaltaComprarPRD_REFER_ITENS: TStringField;
    SqlFaltaComprarPRD_DESCRI: TStringField;
    SqlFaltaComprarPRD_UND: TStringField;
    SqlFaltaComprarPTI_SIGLA: TStringField;
    SqlFaltaComprarFALTA_COMPRAR: TFloatField;
    Panel2: TPanel;
    BitGeraReq: TBitBtn;
    BitSair: TBitBtn;
    BitCancelar: TBitBtn;
    GrpReq: TGroupBox;
    BitConfirma: TBitBtn;
    Panel1: TPanel;
    ProgressBar1: TProgressBar;
    Label1: TLabel;
    CurrCod: TCurrencyEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Cbx_Depto: TComboBox;
    CurrDepto: TCurrencyEdit;
    Label5: TLabel;
    Label6: TLabel;
    Edt_Data: TEdit;
    Edt_Hora: TEdit;
    Cbx_Obs: TComboBox;
    Edt_Status: TEdit;
    DBGrid1: TDBGrid;
    Label7: TLabel;
    Edt_Solicitante: TEdit;
    SqlDeptos: TSQLClientDataSet;
    SqlDeptosDEP_CODIGO: TIntegerField;
    SqlDeptosDEP_NOME: TStringField;
    Panel3: TPanel;
    LBL_TITULO: TLabel;
    SqlFaltaComprarOSI_ORIGEM: TStringField;
    SqlFaltaComprarORIGEM_CC: TStringField;
    Grp_Simulacao: TGroupBox;
    DBGrid2: TDBGrid;
    DsPrevisao: TDataSource;
    CdsTeste: TClientDataSet;
    CdsTesteMateria: TStringField;
    CdsTesteDescricao: TStringField;
    CdsTesteSigla: TStringField;
    CdsTesteUnd: TStringField;
    CdsTesteQtde: TCurrencyField;
    CdsTesteOrigem: TStringField;
    BitAtualizar: TBitBtn;
    procedure FormShow(Sender: tObject);
    procedure BitSairClick(Sender: tObject);
    procedure BitGeraReqClick(Sender: tObject);
    procedure BitCancelarClick(Sender: tObject);
    procedure BitConfirmaClick(Sender: tObject);
    procedure Cbx_DeptoClick(Sender: tObject);
    procedure CurrDeptoExit(Sender: tObject);
    procedure FormCloseQuery(Sender: tObject; var CanClose: Boolean);
    procedure SqlFaltaComprarCalcFields(DataSet: TDataSet);
    procedure FormCreate(Sender: tObject);
    procedure MudaCorCampos(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure BitAtualizarClick(Sender: tObject);

  private
    { Private declarations }
    {campos}
    CampoEdit    :TEdit;
    CampoBox     :TComboBox;
    CampoCurrency:TCurrencyEdit;
    procedure LimparDados;
    procedure HabilitaBotoes;
    procedure DesabilitaBotoes;
    procedure Processo_Grava_Requisicao_Compra(pReqCodigo,pEmpresa,pDtEmissao,pHora,pDepto,pSolicitante,pPrioridade,pStatus:String);
    procedure Processo_Grava_itens_Compra(pEmpresa,pReqCodigo,pOsvCodigo,pMateria,pStatus,pOsiRegistro,pOrigem:String;pQtdeSolicitada:Currency);
    procedure Processo_Atualiza_Status_Itens(pRegistro,pStatus:String);
    procedure Carrega_Combo;
    procedure Processo_Carregar_Tabela_Temporaria;
    procedure Abrir_Tabelas;
  public
    { Public declarations }
    pFormulario :String[1]; {Se o Formulario da produçao/Simulaçao / Almoxarifado}
  end;

var
  FrmReqCompra: TFrmReqCompra;

implementation

uses Uteis, DataCad, Men0001, PrevCN002, iniciodb;

{$R *.dfm}





procedure TFrmReqCompra.FormShow(Sender: tObject);
begin
    try
      LEFT := 000;
      TOP  := 000;
      Screen.OnActiveControlChange   := MudaCorCampos;
      Screen.Cursor := crHourGlass;
      //
      Abrir_Tabelas;
      //
      HabilitaBotoes;
      Carrega_Combo;
      Screen.Cursor := crDefault;
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao abrir a tabela ! '+e.message));
    end;
end;

procedure TFrmReqCompra.BitSairClick(Sender: tObject);
begin
    close;
end;

procedure TFrmReqCompra.BitGeraReqClick(Sender: tObject);
begin
    try
      CurrCod.Text := SequenciadorPRC(DataCadastros.SQLConnection1,
                                      dbInicio.Empresa.EMP_CODIGO,
                                      'REQUISICAO_COMPRA','REQ_CODIGO',0);
      Edt_Data.Text        := DateToStr(Now);
      Edt_Hora.Text        := TimeToStr(time);
      Edt_Status.Text      := 'PENDENTE';
      Edt_Solicitante.Text := dbInicio.Usuario.nome;
      Cbx_Obs.ItemIndex    := 0;
      Cbx_Depto.Text       := '';
      DesabilitaBotoes;
      Cbx_Obs.SetFocus;
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao Gerar a requisição de Compras ! '+e.message));
    end;
end;

procedure TFrmReqCompra.DesabilitaBotoes;
begin
    BitGeraReq.Enabled  := False;
    BitConfirma.Enabled := True;
    BitCancelar.Enabled := True;
    BitSair.Enabled     := False;
    GrpReq.Enabled      := True;
    if (pFormulario = 'P') then
       Grp_Producao.Enabled := False
    else
       Grp_Simulacao.Enabled := False;
end;

procedure TFrmReqCompra.HabilitaBotoes;
begin
    BitConfirma.Enabled := False;
    BitCancelar.Enabled := False;
    BitSair.Enabled     := True;
    GrpReq.Enabled      := False;
    if (pFormulario = 'P') then
       begin
           if (SqlFaltaComprar.IsEmpty) then
              BitGeraReq.Enabled  := False
           else
              BitGeraReq.Enabled  := True;
           //
           Grp_Producao.Enabled := True
       end
    else
       begin
           if (CdsTeste.IsEmpty) then
              BitGeraReq.Enabled  := False
           else
              BitGeraReq.Enabled  := True;
           Grp_Simulacao.Enabled := True;
       end;
end;

procedure TFrmReqCompra.LimparDados;
begin
    CurrCod.AsInteger   := 0;
    Edt_Data.Text       := '';
    Edt_Hora.Text       := '';
    Cbx_Obs.ItemIndex   := -1;
    CurrDepto.AsInteger := 0;
    Cbx_Depto.Text      := '';
    Edt_Status.Text     := '';
    Edt_Solicitante.Text:= '';
end;

procedure TFrmReqCompra.BitCancelarClick(Sender: tObject);
begin
    SequenciadorPRC(DataCadastros.SQLConnection1,
                    dbInicio.Empresa.EMP_CODIGO,
                    'REQUISICAO_COMPRA',
                    'REQ_CODIGO',
                    1,
                    IntToStr(CurrCod.AsInteger));
    LimparDados;
    HabilitaBotoes;
    if (pFormulario = 'P') then
       DBGrid1.SetFocus
    else
       DBGrid2.SetFocus;
end;

procedure TFrmReqCompra.BitConfirmaClick(Sender: tObject);
begin
    try
      Screen.Cursor := crHourGlass;
      Processo_Grava_Requisicao_Compra(CurrCod.Text,
                                       dbInicio.Empresa.EMP_CODIGO,
                                       Edt_Data.Text,
                                       Edt_Hora.Text,
                                       IntToStr(CurrDepto.AsInteger),
                                       Edt_Solicitante.Text,
                                       Cbx_Obs.Text,
                                       'P'); {Sempre será pendente ao gerar a requisiçao}
      if (pFormulario = 'P') then
         begin
             SqlFaltaComprar.DisableControls;
             SqlFaltaComprar.First;
             ProgressBar1.Max      := SqlFaltaComprar.RecordCount;
             ProgressBar1.Position := 0;
             while not SqlFaltaComprar.Eof do
              begin
                  if (SqlFaltaComprarFALTA_COMPRAR.AsCurrency > 0) then
                     begin
                         Processo_Grava_itens_Compra(dbInicio.Empresa.EMP_CODIGO,
                                                     CurrCod.Text,
                                                     SqlFaltaComprarOSV_CODIGO.AsString,
                                                     SqlFaltaComprarPRD_REFER_ITENS.AsString,
                                                     'P',
                                                     SqlFaltaComprarOSI_REGISTRO.AsString,
                                                     SqlFaltaComprarOSI_ORIGEM.AsString,
                                                     SqlFaltaComprarFALTA_COMPRAR.AsCurrency);
                     end;
                  //
                  Processo_Atualiza_Status_Itens(SqlFaltaComprarOSI_REGISTRO.AsString,
                                                 'S');
                  //
                  ProgressBar1.Position := ProgressBar1.Position + 1;
                  SqlFaltaComprar.Next;
              end;
             SqlFaltaComprar.EnableControls;
         end;
      if (pFormulario = 'S') then
         begin
             CdsTeste.DisableControls;
             CdsTeste.First;
             ProgressBar1.Max      := CdsTeste.RecordCount;
             ProgressBar1.Position := 0;
             while not CdsTeste.Eof do
              begin
                  Processo_Grava_itens_Compra(dbInicio.Empresa.EMP_CODIGO,
                                              CurrCod.Text,
                                              '',
                                              CdsTesteMateria.AsString,
                                              'P',
                                              '',
                                              'S',
                                              CdsTesteQtde.AsCurrency);
                  //
                  Processo_Atualiza_Status_Itens(CdsTesteMateria.AsString,
                                                 'S');
                  //
                  ProgressBar1.Position := ProgressBar1.Position + 1;
                  CdsTeste.Next;
              end;
             CdsTeste.EnableControls;
         end;
      Screen.Cursor := crDefault;
      uteis.aviso('Requisição de Comprar gerada com sucesso !!!');
      CdsTeste.EmptyDataSet;
      SqlFaltaComprar.Close;
      ProgressBar1.Position := 0;
      LimparDados;
      HabilitaBotoes;
      if (pFormulario = 'P') then
         begin
             DbGrid1.SetFocus;
         end
      else
         begin
             DBGrid2.SetFocus;
         end;
    except on E:EdataBaseError do
       uteis.erro  (pchar('Erro ao gravar a Requisição de Compra ! '+e.message));
    end;
end;

procedure TFrmReqCompra.Processo_Grava_itens_Compra(pEmpresa, pReqCodigo,
  pOsvCodigo, pMateria, pStatus,pOsiRegistro,pOrigem: String; pQtdeSolicitada: Currency);
begin
    try
      wSQL1 := 'Insert Into REQUISICAO_COMPRA_ITENS('+
               'EMP_CODIGO,'+
               'REQ_CODIGO,'+
               'OSV_CODIGO,'+
               'PRD_REFER_ITENS,'+
               'OSI_REGISTRO,'+
               'RQI_STATUS,'+
               'RQI_ORIGEM,'+
               'RQI_SOLICITOU_COMPRA,'+
               'RQI_SOLICITADA) ';
      wSQL2 := 'VALUES ('''+pEmpresa+''','+
                            pReqCodigo+','+
                            RetornaNull(pOsvCodigo)+','''+
                            pMateria+''','+
                            RetornaNull(pOsiRegistro)+','''+
                            pStatus+''','''+
                            pOrigem+''','''+
                            'N'','+
                            ValorAmericano(FloatToStr(pQtdeSolicitada))+')';
      DataCadastros.sqlUpdate.Close;
      DataCadastros.SqlUpdate.sql.text :=wSql1+wSql2;
      DataCadastros.sqlUpdate.Execsql;
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao gravar o Item da Requisição de Compra ! '+e.message));
    end;
end;

procedure TFrmReqCompra.Processo_Grava_Requisicao_Compra(pReqCodigo,
  pEmpresa, pDtEmissao, pHora, pDepto, pSolicitante , pPrioridade, pStatus: String);
begin
    try
      wSQL1 := 'Insert Into REQUISICAO_COMPRA('+
               'REQ_CODIGO,'+
               'EMP_CODIGO,'+
               'REQ_EMISSAO,'+
               'REQ_HORA,'+
               'DEP_CODIGO,'+
               'REQ_SOLICITANTE,'+
               'REQ_PRIORIDADE,'+
               'REQ_STATUS) ';
      wSQL2 := 'VALUES ('+pReqCodigo+','''+
                          pEmpresa+''','''+
                          DataAmericana(pDtEmissao)+''','''+
                          pHora+''','+
                          pDepto+','''+
                          pSolicitante+''','''+
                          pPrioridade+''','''+
                          pStatus+''')';
      DataCadastros.sqlUpdate.Close;
      DataCadastros.SqlUpdate.sql.text :=wSql1+wSql2;
      DataCadastros.sqlUpdate.Execsql;
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao gravar a Requisição de Compra ! '+e.message));
    end;
end;

procedure TFrmReqCompra.Processo_Atualiza_Status_Itens(pRegistro,
  pStatus: String);
begin
    try
      if (pFormulario = 'P') then
         begin
             wSql1      := 'Update OSV_IT02 set OSI_REQ_COMPRA = '''+pStatus+'''';
             wSeleciona := ' Where OSI_REGISTRO = '+pRegistro;
             //
             DataCadastros.sqlUpdate.Close;
             DataCadastros.SqlUpdate.sql.text :=wSql1+wSeleciona;
             DataCadastros.sqlUpdate.Execsql;
         end;
      if (pFormulario = 'S') then
         begin
             if (FormPrevisaoProducao.CdsComprar.Locate('Referencia',pRegistro,[])=True) then
                begin
                    FormPrevisaoProducao.CdsComprar.Edit;
                    FormPrevisaoProducao.CdsComprarReq_Compra.AsString := 'S';
                    FormPrevisaoProducao.CdsComprar.Post;
                end;
         end;
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao Atualizar o Status do Item ! '+e.message));
    end;
end;

procedure TFrmReqCompra.Carrega_Combo;
begin
    try
      SqlDeptos.Close;
      SqlDeptos.CommandText := 'Select DEP_CODIGO,DEP_NOME from DEP0000 order by DEP_NOME ';
      SqlDeptos.Open;
      Cbx_Depto.Items.Clear;
      SqlDeptos.First;
      while not SqlDeptos.Eof do
       begin
           Cbx_Depto.Items.Add(SqlDeptosDEP_NOME.AsString);
           SqlDeptos.Next;
       end;
      Cbx_Depto.Text := '';
    except on E:EDataBaseError do
        uteis.erro  (pchar('Erro ao carregar a combo ! '+e.message));
    end;
end;

procedure TFrmReqCompra.Cbx_DeptoClick(Sender: tObject);
begin
    SqlDeptos.Locate('DEP_NOME',Cbx_Depto.Text,[]);
    CurrDepto.AsInteger := SqlDeptosDEP_CODIGO.AsInteger;
end;

procedure TFrmReqCompra.CurrDeptoExit(Sender: tObject);
begin
    if (CurrDepto.AsInteger > 0) then
       begin
           if SqlDeptos.Locate('DEP_CODIGO',CurrDepto.AsInteger,[]) then
              Cbx_Depto.Text := SqlDeptosDEP_NOME.AsString
           else
              CurrDepto.AsInteger := 0;
       end
    else
       CurrDepto.AsInteger := 0;
end;

procedure TFrmReqCompra.FormCloseQuery(Sender: tObject;
  var CanClose: Boolean);
begin
    SqlFaltaComprar.Close;
end;

procedure TFrmReqCompra.SqlFaltaComprarCalcFields(DataSet: TDataSet);
begin
    if (SqlFaltaComprarOSI_ORIGEM.AsString = 'P') then
       SqlFaltaComprarORIGEM_CC.AsString := 'Produção';
    if (SqlFaltaComprarOSI_ORIGEM.AsString = 'A') then
       SqlFaltaComprarORIGEM_CC.AsString := 'Almoxarifado';
end;

procedure TFrmReqCompra.FormCreate(Sender: tObject);
begin
    CdsTeste.CreateDataSet;
end;

procedure TFrmReqCompra.Processo_Carregar_Tabela_Temporaria;
begin
    try
      FormPrevisaoProducao.CdsComprar.First;
      FormPrevisaoProducao.CdsComprar.DisableControls;
      while not FormPrevisaoProducao.CdsComprar.eof do
       begin
           if (FormPrevisaoProducao.CdsComprarReq_Compra.AsString = 'N') then
              begin
                  CdsTeste.Append;
                  CdsTesteMateria.AsString   := FormPrevisaoProducao.CdsComprarReferencia.AsString;
                  CdsTesteDescricao.AsString := FormPrevisaoProducao.CdsComprarDescricao.AsString;
                  CdsTesteSigla.AsString     := FormPrevisaoProducao.CdsComprarTipo.AsString;
                  CdsTesteUnd.AsString       := FormPrevisaoProducao.CdsComprarUnd.AsString;
                  CdsTesteQtde.AsCurrency    := FormPrevisaoProducao.CdsComprarComprar.AsCurrency;
                  CdsTesteOrigem.AsString    := 'Simulação';
                  CdsTeste.Post;
              end;
          FormPrevisaoProducao.CdsComprar.Next;
       end;
      FormPrevisaoProducao.CdsComprar.EnableControls;
    except on E:EDataBaseError do
      uteis.erro  (pchar('Erro ao carregar a tabela Temporaria ! '+e.message));
    end;
end;

procedure TFrmReqCompra.MudaCorCampos(Sender: tObject);
begin
  {CampoEdit :TEdit}
   if Assigned(CampoEdit) then
      begin
         CampoEdit.color := clWindow;
      end;
   if ActiveControl is TEdit then
      begin
         if TEdit(ActiveControl).color = $00D7D7D7 then
            begin
               exit;
            end;
         TEdit(ActiveControl).color := $0080FFFF;
         CampoEdit := TEdit(ActiveControl);
      end
   else
      begin
         CampoEdit := nil;
      end;
   {cor dos campos TCampoBox}
    if Assigned(CampoBox) then
       begin
          CampoBox.color := clWindow;
       end;
    if ActiveControl is TComboBox then
       begin
          TComboBox(ActiveControl).color := $0080FFFF;
          CampoBox := TComboBox(ActiveControl);
       end
    else
       begin
          CampoBox := nil;
       end;
   {cor dos campos TCurrency}
    if Assigned(CampoCurrency) then
       begin
          CampoCurrency.color := clWindow;
       end;
    if ActiveControl is TCurrencyEdit then
       begin
          if TCurrencyEdit(ActiveControl).color = $00D7D7D7 then
             begin
                exit;
             end;
          TCurrencyEdit(ActiveControl).color := $0080FFFF;
          CampoCurrency := TCurrencyEdit(ActiveControl);
       end
    else
       begin
          CampoCurrency := nil;
       end;
end;

procedure TFrmReqCompra.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
    Screen.OnActiveControlChange := NIL;
end;

procedure TFrmReqCompra.BitAtualizarClick(Sender: tObject);
begin
    Screen.Cursor := crHourGlass;
    Abrir_Tabelas;
    HabilitaBotoes;
    Screen.Cursor := crDefault;
end;

procedure TFrmReqCompra.Abrir_Tabelas;
begin
    try
      if (pFormulario = 'P') then
         begin
             Grp_Producao.Visible  := True;
             Grp_Simulacao.Visible := False;
             LBL_TITULO.Caption    := 'Requisição de Compra - Produção';
             BitAtualizar.Enabled  := False;
             //
             wSQL1      := 'select O2.OSI_REGISTRO,O2.OSI_ORIGEM,O2.EMP_CODIGO,O2.OSV_CODIGO,O1.OSV_EMISSAO,O2.PRD_REFER_ITENS,P1.PRD_DESCRI,P1.PRD_UND,P2.PTI_SIGLA,';
             wSQL2      := 'CAST((((O2.osi_qtde1+O2.osi_qtde2+O2.osi_qtde3+O2.osi_qtde4+O2.osi_qtde5+O2.osi_qtde6+O2.osi_qtde7+O2.osi_qtde8))-(O2.osi_reservado + O2.osi_empenho)) AS FLOAT) AS FALTA_COMPRAR ';
//             CAST((O2.osi_uc*(O2.osi_qtde1+O2.osi_qtde2+O2.osi_qtde3+O2.osi_qtde4+O2.osi_qtde5+O2.osi_qtde6+O2.osi_qtde7+O2.osi_qtde8)-O2.osi_empenho) AS FLOAT) AS FALTA_COMPRAR ';
             wSQL3      := 'from OSV_IT02 O2 left join OSV0001 O1 on (O2.OSV_CODIGO = O1.OSV_CODIGO) left join PRD0000 P1 ON (O2.PRD_REFER_ITENS = P1.PRD_REFER) ';
             wSQL4      := 'left join PRD_TIPO P2 on (P1.PTI_CODIGO = P2.PTI_CODIGO) ';
             wSELECIONA := 'where O2.OSI_REQ_COMPRA = ''N'' AND (O2.OSI_STATUSEMPENHO <> ''S'')AND(O1.OSV_STATUS <>''E'')AND(O1.OSV_STATUS <>''C'')';
             wORDEM     := 'P1.PRD_DESCRI';
             SqlFaltaComprar.Close;
             SqlFaltaComprar.CommandText := SQLDEF('ORDEMPRODUCAO',wSql1+wSql2+wSql3+wSql4,wSeleciona,wOrdem,'O2.');
             SqlFaltaComprar.Open;
             SqlFaltaComprar.First;
         end;
      if (pFormulario = 'S') then
         begin
             BitAtualizar.Enabled  := False;
             Grp_Producao.Visible  := False;
             Grp_Simulacao.Visible := True;
             LBL_TITULO.Caption    := 'Requisição de Compra - Simulação';
             Processo_Carregar_Tabela_Temporaria;
         end;
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao abrir as tabelas ! '+e.message));
    end;
end;

end.

