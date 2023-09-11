unit REQ0002;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Provider, SqlExpr,SqlClientDataSet, DB, DBClient, DBLocal, DBLocalS, StdCtrls,
  Buttons, ComCtrls, ExtCtrls, Grids, DBGrids, Mask,  rxToolEdit, rxCurrEdit,
  SimpleDS, Data.DBXFirebird;

type
  TFrmManutReqCompra = class(TForm)
    GrpGrid: TGroupBox;
    DBGrid2: TDBGrid;
    PanBotoes: TPanel;
    BitSair: TBitBtn;
    BitAtualizar: TBitBtn;
    GrpDados: TGroupBox;
    SqlCdsReqItens: TSQLClientDataSet;
    DsReqItens: TDataSource;
    SqlCdsReqItensRQI_REGISTRO: TIntegerField;
    SqlCdsReqItensEMP_CODIGO: TStringField;
    SqlCdsReqItensREQ_CODIGO: TIntegerField;
    SqlCdsReqItensOSI_REGISTRO: TIntegerField;
    SqlCdsReqItensOSV_CODIGO: TStringField;
    SqlCdsReqItensPRD_REFER_ITENS: TStringField;
    SqlCdsReqItensRQI_SOLICITADA: TFMTBCdField;
    SqlCdsReqItensRQI_STATUS: TStringField;
    SqlCdsReqItensRQI_ORIGEM: TStringField;
    SqlCdsReqItensPRD_DESCRI: TStringField;
    SqlCdsReqItensPRD_UND: TStringField;
    GrpFiltrar: TGroupBox;
    GrpPesquisa: TGroupBox;
    GrpConsulta: TGroupBox;
    BitCancelar: TBitBtn;
    Rad_Normal: TRadioButton;
    Rad_Urgente: TRadioButton;
    Rad_Prioridade: TRadioButton;
    SqlCdsReqItensStatus_cc: TStringField;
    SqlCdsReqItensOrigem_cc: TStringField;
    Rad_Todos: TRadioButton;
    Rad_Emissao: TRadioButton;
    Rad_Req: TRadioButton;
    PanRel: TPanel;
    Bit_Relatorio: TBitBtn;
    SqlCdsReqItensRQI_SOLICITOU_COMPRA: TStringField;
    SqlCdsReqItensREQ_EMISSAO: TDateField;
    SqlCdsReqItensREQ_HORA: TTimeField;
    SqlCdsReqItensREQ_PRIORIDADE: TStringField;
    SqlCdsReqItensCompra_CC: TStringField;
    Rad_Refer: TRadioButton;
    Pan_Emissao: TPanel;
    Data_Inicial: TDateEdit;
    Data_Final: TDateEdit;
    Label1: TLabel;
    Label2: TLabel;
    Pan_Tipo: TPanel;
    Edt_Pesq: TEdit;
    LBL_Pesq: TLabel;
    BitPesquisa: TBitBtn;
    Bit_Excluir: TBitBtn;
    Label3: TLabel;
    Label4: TLabel;
    EdtRefer: TEdit;
    EdtDescri: TEdit;
    Label5: TLabel;
    EdtUnd: TEdit;
    Label7: TLabel;
    CurrSolicita: TCurrencyEdit;
    Label8: TLabel;
    CbxStatus: TComboBox;
    Label9: TLabel;
    CbxCompra: TComboBox;
    BitConfirma: TBitBtn;
    BitCancelarItem: TBitBtn;
    Rad_Descricao: TRadioButton;
    procedure FormShow(Sender: tObject);
    procedure BitSairClick(Sender: tObject);
    procedure SqlCdsReqAfterScroll(DataSet: TDataSet);
    procedure SqlCdsReqItensCalcFields(DataSet: TDataSet);
    procedure Rad_TodosClick(Sender: tObject);
    procedure Bit_RelatorioClick(Sender: tObject);
    procedure BitAtualizarClick(Sender: tObject);
    procedure Rad_ReqClick(Sender: tObject);
    procedure Data_InicialExit(Sender: tObject);
    procedure Data_FinalExit(Sender: tObject);
    procedure Edt_PesqKeyPress(Sender: tObject; var Key: Char);
    procedure Edt_PesqExit(Sender: tObject);
    procedure BitBtn1Click(Sender: tObject);
    procedure BitCancelarClick(Sender: tObject);
    procedure Edt_PesqEnter(Sender: tObject);
    procedure Edt_PesqChange(Sender: tObject);
    procedure Bit_ExcluirClick(Sender: tObject);
    procedure DBGrid2DblClick(Sender: tObject);
    procedure BitConfirmaClick(Sender: tObject);
    procedure BitCancelarItemClick(Sender: tObject);
    procedure DBGrid2KeyPress(Sender: tObject; var Key: Char);
  private
    { Private declarations }
    procedure BuscaItensReq;
    procedure Filtrar_Requisicao;
    procedure Atualiza_Tela;
    procedure LayOutPesq;
    procedure Mensagens;
    procedure HabilitaBotoesPesquisar;
    procedure ExcluirItens(pRegistro:String);
    procedure AtualizaItem(pRegistro,pStatus,pCompra:String;pSolicitada:Currency);
    procedure Selecionou_Item;
    procedure Travar_Objetos;
    procedure DesTravar_Objetos;
    procedure LimparObjetos;
  public
    { Public declarations }
  end;

var
  FrmManutReqCompra: TFrmManutReqCompra;

implementation

uses Uteis, DataCad, RWFunc, GimpReqCompra;

{$R *.dfm}




procedure TFrmManutReqCompra.FormShow(Sender: tObject);
begin
    try
      Left  := 0;
      Top   := 0;
      Atualiza_Tela;
      if (SqlCdsReqItens.IsEmpty = True) then
         SqlCdsReqItens.Close
      else
         begin
             Filtrar_Requisicao;
             LayOutPesq;
         end;
      DBGrid2.SetFocus;
    except on E:EDataBAseError do
       uteis.erro  (pchar('Erro ao abrir a tabela ! '+e.message));
    end;
end;

procedure TFrmManutReqCompra.BitSairClick(Sender: tObject);
begin
    CLOSE;
end;

procedure TFrmManutReqCompra.BuscaItensReq;
begin
    try
      if (Rad_Req.Checked) then
         begin
             wSeleciona := 'where R2.REQ_CODIGO = '''+Edt_Pesq.Text+'''';
             wOrdem     := 'R2.REQ_CODIGO,P1.PRD_DESCRI';
         end
      else
      if (Rad_Refer.Checked) then
         begin
             wSeleciona := 'where R2.PRD_REFER_ITENS = '''+Edt_Pesq.Text+'''';
             wOrdem     := 'R2.REQ_CODIGO,R2.PRD_REFER_ITENS';
         end
      else
      if (Rad_Emissao.Checked) then
         begin
             wSeleciona := 'where R1.REQ_EMISSAO Between '''+DataAmericana(Data_Inicial.Text)+''' and '''+DataAmericana(Data_Final.Text)+'''';
             wOrdem     := 'R1.REQ_EMISSAO,R2.PRD_REFER_ITENS';
         end
      else
      if (Rad_Descricao.Checked) then
         begin
             wSeleciona := 'where P1.PRD_DESCRI LIKE '''+Edt_Pesq.Text+'%''';
             wOrdem     := 'R1.REQ_EMISSAO,P1.PRD_DESCRI';
         end;
      //
      wSql1 := 'Select R2.*,R1.REQ_EMISSAO,R1.REQ_HORA,R1.REQ_PRIORIDADE,P1.PRD_DESCRI,P1.PRD_UND from REQUISICAO_COMPRA_ITENS R2 ';
      wSql2 := 'LEFT JOIN REQUISICAO_COMPRA R1 ON (R2.REQ_CODIGO = R1.REQ_CODIGO) LEFT JOIN PRD0000 P1 ON (R2.PRD_REFER_ITENS = P1.PRD_REFER) ';
      //
      SqlCdsReqItens.Close;
      SqlCdsReqItens.CommandText := SQLDEF('ORDEMPRODUCAO',wSql1+wSql2,wSeleciona,wOrdem,'R2.');
      SqlCdsReqItens.Open;
      if (SqlCdsReqItens.IsEmpty) then
         begin
             Mensagens;
             Edt_Pesq.Text := '';
             if (Rad_Emissao.Checked) then
                begin
                    Data_Inicial.SetFocus;
                    Data_Inicial.SelectAll;
                end
             else
                begin
                    Edt_Pesq.SetFocus;
                    Edt_Pesq.SelectAll;
                end;
             BitCancelar.Click; //Caso digitou qualquer coisa e nao encontrou.
         end
      else
         begin
             BitPesquisa.Enabled := False;
             BitCancelar.Enabled := True;
             DBGrid2.SetFocus;
         end;
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao buscar os itens da requisição ! '+e.message));
    end;
end;

procedure TFrmManutReqCompra.SqlCdsReqAfterScroll(DataSet: TDataSet);
begin
    SqlCdsReqItens.Close;
end;

procedure TFrmManutReqCompra.SqlCdsReqItensCalcFields(DataSet: TDataSet);
begin
    if (SqlCdsReqItensRQI_STATUS.AsString = 'P') then
       SqlCdsReqItensStatus_cc.AsString := 'Pendente';
    if (SqlCdsReqItensRQI_STATUS.AsString = 'C') then
       SqlCdsReqItensStatus_cc.AsString := 'Concluído';
    if (SqlCdsReqItensRQI_STATUS.AsString = 'R') then
       SqlCdsReqItensStatus_cc.AsString := 'Parcial';
    //
    if (SqlCdsReqItensRQI_ORIGEM.AsString = 'P') then
       SqlCdsReqItensOrigem_cc.AsString := 'Produção';
    if (SqlCdsReqItensRQI_ORIGEM.AsString = 'S') then
       SqlCdsReqItensOrigem_cc.AsString := 'Simulação';
    if (SqlCdsReqItensRQI_ORIGEM.AsString = 'A') then
       SqlCdsReqItensOrigem_cc.AsString := 'Almoxarifado';
    //
    if (SqlCdsReqItensRQI_SOLICITOU_COMPRA.AsString = 'S') then
       SqlCdsReqItensCompra_CC.AsString := 'Sim'
    else
       SqlCdsReqItensCompra_CC.AsString := 'Não';
end;

procedure TFrmManutReqCompra.Filtrar_Requisicao;
begin
    try
      SqlCdsReqItens.Filtered := False;
      if (Rad_Todos.Checked) then
         SqlCdsReqItens.Filter := '';
      if (Rad_Normal.Checked) then
         SqlCdsReqItens.Filter := 'REQ_PRIORIDADE = ''NORMAL''';
      if (Rad_Urgente.Checked) then
         SqlCdsReqItens.Filter := 'REQ_PRIORIDADE = ''URGENTE''';
      if (Rad_Prioridade.Checked) then
         SqlCdsReqItens.Filter := 'REQ_PRIORIDADE = ''PRIORIDADE''';
      SqlCdsReqItens.Filtered := True;
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao filtrar a Requisição de Compra ! '+e.Message));
    end;
end;

procedure TFrmManutReqCompra.Rad_TodosClick(Sender: tObject);
begin
    Filtrar_Requisicao;
end;

procedure TFrmManutReqCompra.Bit_RelatorioClick(Sender: tObject);
begin
    try
      FrmGimpReqCompra := TFrmGimpReqCompra.Create(application);
      FrmGimpReqCompra.ShowModal;
    finally
      begin
          FrmGimpReqCompra.Destroy;
          FrmGimpReqCompra := nil;
          if (SqlCdsReqItens.Active) then
             SqlCdsReqItens.Refresh;
      end;
    end;
end;

procedure TFrmManutReqCompra.BitAtualizarClick(Sender: tObject);
begin
    Atualiza_Tela;
end;

procedure TFrmManutReqCompra.Atualiza_Tela;
begin
    try
      wSql1 := 'Select R2.*,R1.REQ_EMISSAO,R1.REQ_HORA,R1.REQ_PRIORIDADE,P1.PRD_DESCRI,P1.PRD_UND from REQUISICAO_COMPRA_ITENS R2 ';
      wSql2 := 'LEFT JOIN REQUISICAO_COMPRA R1 ON (R2.REQ_CODIGO = R1.REQ_CODIGO) LEFT JOIN PRD0000 P1 ON (R2.PRD_REFER_ITENS = P1.PRD_REFER) ';
      wOrdem:= 'P1.PRD_DESCRI';
      SqlCdsReqItens.Close;
      SqlCdsReqItens.CommandText := SQLDEF('ORDEMPRODUCAO',wSQL1+wSQL2,'',wOrdem,'R2.');
      SqlCdsReqItens.Open;
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao atualizar a tela ! '+e.message));
    end;
end;

procedure TFrmManutReqCompra.Rad_ReqClick(Sender: tObject);
begin
    LayOutPesq;
end;

procedure TFrmManutReqCompra.LayOutPesq;
begin
    if (Rad_Req.checked ) then
       begin
           Pan_Emissao.Visible := False;
           Pan_Tipo.Visible    := True;
           LBL_Pesq.Caption    := 'Requisição:';
           Edt_Pesq.MaxLength  := 6;
           Edt_Pesq.Width      := 60;
       end
    else
    if (Rad_Refer.checked ) then
       begin
           Pan_Emissao.Visible := False;
           Pan_Tipo.Visible    := True;
           LBL_Pesq.Caption    := 'Referência:';
           Edt_Pesq.MaxLength  := 11;
           Edt_Pesq.Width      := 75;
       end
    else
    if (Rad_Emissao.checked ) then
       begin
           Pan_Emissao.Visible := True;
           Pan_Tipo.Visible    := False;
       end
    else
    if (Rad_Descricao.checked ) then
       begin
           Pan_Emissao.Visible := False;
           Pan_Tipo.Visible    := True;
           LBL_Pesq.Caption    := 'Descrição:';
           Edt_Pesq.MaxLength  := 50;
           Edt_Pesq.Width      := 170;
       end;
end;

procedure TFrmManutReqCompra.Data_InicialExit(Sender: tObject);
begin
    Data_Inicial.Text := PreenchaData(Data_Inicial.Text);
    if not TestaDataStr(Data_Inicial.Text) then
       Data_Inicial.setfocus;
end;

procedure TFrmManutReqCompra.Data_FinalExit(Sender: tObject);
begin
    Data_Final.Text := PreenchaData(Data_Final.Text);
    if (not TestaDataStr(Data_Final.Text)) then
       Data_Final.setfocus;
    if (Data_Final.Date < Data_Inicial.Date) then
       begin
           uteis.aviso('Data Final menor que a Data Inicial !');
           Data_Final.SetFocus;
           Data_Final.SelectAll;
       end;
end;

procedure TFrmManutReqCompra.Edt_PesqKeyPress(Sender: tObject;
  var Key: Char);
begin
    if (Rad_Req.checked ) then
       begin
           if not (Key in ['0'..'9',#8]) then
              begin
                  //beep;
                  Key := #0;
              end;
       end;
end;

procedure TFrmManutReqCompra.Edt_PesqExit(Sender: tObject);
begin
    Edt_Pesq.Color := clWindow;

    if (Rad_Req.checked ) then
       Edt_Pesq.Text := StrZero(Edt_Pesq.Text,Edt_Pesq.MaxLength);
end;

procedure TFrmManutReqCompra.BitBtn1Click(Sender: tObject);
begin
    Screen.Cursor := Crhourglass;
    if (Edt_Pesq.Text <> '') or ((Data_Inicial.Text <> '  /  /    ') and (Data_Final.Text <> '  /  /    ')) then
       begin
           BuscaItensReq;
       end
    else
       begin
           Mensagens;
           Edt_Pesq.Text     := '';
           Data_Inicial.Date := 0;
           Data_Final.Date   := 0;
           BitCancelar.Click;
           if (Rad_Emissao.Checked = False) then
              Edt_Pesq.SetFocus
           else
              Data_Inicial.SetFocus;
       end;
    Screen.Cursor := CrDefault;
end;

procedure TFrmManutReqCompra.BitCancelarClick(Sender: tObject);
begin
    Screen.Cursor := crHourGlass;
    Atualiza_Tela;
    HabilitaBotoesPesquisar;
    DesTravar_Objetos;
    if (Rad_Emissao.Checked) then
       Data_Inicial.SetFocus
    else
       Edt_Pesq.SetFocus;
    Screen.Cursor := crDefault;
end;

procedure TFrmManutReqCompra.Edt_PesqEnter(Sender: tObject);
begin
    Edt_Pesq.Text  := '';
    HabilitaBotoesPesquisar;
    Edt_Pesq.Color := $0080FFFF;
    Edt_Pesq.SelectAll;
end;

procedure TFrmManutReqCompra.Mensagens;
begin
    if (Rad_Req.checked ) then
       begin
           if Edt_Pesq.Text = '' then
              uteis.aviso('Informe o Número da Requisição !')
           else
              uteis.aviso('Requisição não encontrado !');
       end;
    if (Rad_Refer.checked ) then
       begin
           if Edt_Pesq.Text = '' then
              uteis.aviso('Informe a Referência do produto !')
           else
              uteis.aviso('Referência não encontrado !');
       end;
    if (Rad_Emissao.checked ) then
       begin
           if Data_Inicial.Text = '' then
              uteis.aviso('Informe a Data Inicial !')
           else
              uteis.aviso('Não existe itens no período informado !');
       end;
    Edt_Pesq.Text     := '';
    Data_Inicial.Date := 0;
    Data_Final.Date   := 0;
end;

procedure TFrmManutReqCompra.Edt_PesqChange(Sender: tObject);
begin
    if (Edt_Pesq.Text <> '') then
       HabilitaBotoesPesquisar;

end;

procedure TFrmManutReqCompra.HabilitaBotoesPesquisar;
begin
    if (BitPesquisa.Enabled = False) then
       begin
           BitPesquisa.Enabled := True;
           BitCancelar.Enabled := False;
       end;
end;

procedure TFrmManutReqCompra.Bit_ExcluirClick(Sender: tObject);
begin
    if uteis.confirmacao ( ('Deseja excluir a: '+#13#10+
                         'Referência : '+SqlCdsReqItensPRD_REFER_ITENS.AsString+#13#10+
                         'Descrição  : '+SqlCdsReqItensPRD_DESCRI.AsString+#13#10+
                         'Quantidade : '+SqlCdsReqItensRQI_SOLICITADA.AsString+#13#10+#13#10+
                         'Confirma Exclusão ?'))=MrYes then
       begin
           ExcluirItens(SqlCdsReqItensRQI_REGISTRO.AsString);
           SqlCdsReqItens.Refresh;
       end
    else
       DBGrid2.SetFocus;
end;

procedure TFrmManutReqCompra.ExcluirItens(pRegistro: String);
begin
    try
      wSql1      := 'Delete from REQUISICAO_COMPRA_ITENS ';
      wSeleciona := 'where RQI_REGISTRO = '''+pRegistro+'''';
      DataCadastros.sqlUpdate.Close;
      DataCadastros.SqlUpdate.sql.text :=wSql1 + wSeleciona;
      DataCadastros.sqlUpdate.Execsql;
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao excluir o item ! '+e.Message));
    end;
end;

procedure TFrmManutReqCompra.Selecionou_Item;
begin
    Screen.Cursor      := crHourGlass;
    EdtRefer.Text      := SqlCdsReqItensPRD_REFER_ITENS.AsString;
    EdtDescri.Text     := SqlCdsReqItensPRD_DESCRI.AsString;
    EdtUnd.Text        := SqlCdsReqItensPRD_UND.AsString;
    CurrSolicita.Value := SqlCdsReqItensRQI_SOLICITADA.AsCurrency;
    if (SqlCdsReqItensRQI_STATUS.AsString = 'P') then  //Pendente
       CbxStatus.ItemIndex := 0;
    if (SqlCdsReqItensRQI_STATUS.AsString = 'C') then  //Concluído
       CbxStatus.ItemIndex := 1;
    if (SqlCdsReqItensRQI_STATUS.AsString = 'R') then  // Parcial
       CbxStatus.ItemIndex := 2;
    //   
    if (SqlCdsReqItensRQI_SOLICITOU_COMPRA.AsString = 'S') then
       CbxCompra.ItemIndex := 0;
    if (SqlCdsReqItensRQI_SOLICITOU_COMPRA.AsString = 'N') then
       CbxCompra.ItemIndex := 1;
    Screen.Cursor := crDefault;
end;

procedure TFrmManutReqCompra.DBGrid2DblClick(Sender: tObject);
begin
    Travar_Objetos;
    Selecionou_Item;
    CurrSolicita.SetFocus;
end;

procedure TFrmManutReqCompra.DesTravar_Objetos;
begin
    GrpFiltrar.Enabled      := True;
    GrpPesquisa.Enabled     := True;
    GrpConsulta.Enabled     := True;
    BitPesquisa.Enabled     := True;
    GrpGrid.Enabled         := True;
    PanRel.Visible          := True;
    PanBotoes.Visible       := True;
    BitCancelarItem.Enabled := False;
    BitConfirma.Enabled     := False;
    GrpDados.Enabled        := False;
end;

procedure TFrmManutReqCompra.Travar_Objetos;
begin
    GrpFiltrar.Enabled      := False;
    GrpPesquisa.Enabled     := False;
    GrpConsulta.Enabled     := False;
    BitPesquisa.Enabled     := False;
    GrpGrid.Enabled         := False;
    PanRel.Visible          := False;
    PanBotoes.Visible       := False;
    BitCancelarItem.Enabled := True;
    BitConfirma.Enabled     := True;
    GrpDados.Enabled        := True;
end;

procedure TFrmManutReqCompra.BitConfirmaClick(Sender: tObject);
Var
  xStatus,xCompra:String;
begin
    xStatus := IIF(CbxStatus.ItemIndex = 0,'P',
               IIF(CbxStatus.ItemIndex = 1,'C','R'));

    xCompra := IIF(CbxCompra.ItemIndex = 0,'S','N');
    AtualizaItem(SqlCdsReqItensRQI_REGISTRO.AsString,
                 xStatus,
                 xCompra,
                 CurrSolicita.Value);
    LimparObjetos;
    DesTravar_Objetos;
    SqlCdsReqItens.Refresh;
    DBGrid2.SetFocus;
end;

procedure TFrmManutReqCompra.BitCancelarItemClick(Sender: tObject);
begin
    LimparObjetos;
    DesTravar_Objetos;
    DBGrid2.SetFocus;
end;

procedure TFrmManutReqCompra.LimparObjetos;
begin
    EdtRefer.Text       := '';
    EdtDescri.Text      := '';
    EdtUnd.Text         := '';
    CurrSolicita.Value  := 0;
    CbxStatus.ItemIndex := -1;
    CbxCompra.ItemIndex := -1;
end;

procedure TFrmManutReqCompra.AtualizaItem(pRegistro, pStatus,
  pCompra: String; pSolicitada: Currency);
begin
    try
      wSQL1      := 'UpDate REQUISICAO_COMPRA_ITENS Set RQI_STATUS = '''+pStatus+''',RQI_SOLICITOU_COMPRA = '''+pCompra+''',RQI_SOLICITADA = '''+ValorAmericano(FloatToStr(pSolicitada))+'''';
      wSeleciona := ' where RQI_REGISTRO = '''+pRegistro+'''';
      //
      DataCadastros.sqlUpdate.Close;
      DataCadastros.SqlUpdate.sql.text :=wSQL1+wSeleciona;
      DataCadastros.sqlUpdate.Execsql;
    except on e:EDataBaseError do
       uteis.erro  (pchar('Erro ao atualizar o Item ! '+e.message));
    end;
end;

procedure TFrmManutReqCompra.DBGrid2KeyPress(Sender: tObject;
  var Key: Char);
begin
    if (Key = #13) then
       begin
           Travar_Objetos;
           Selecionou_Item;
           CurrSolicita.SetFocus;
           Key := #0;
       end;
end;

end.
