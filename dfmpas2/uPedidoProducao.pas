unit uPedidoProducao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Grids, DBGrids, Buttons, OleCtrls, SHDocVw,
  DB, DBClient, SqlExpr,SqlClientDataSet, Provider, DBLocal, DBLocalS, ComboBoxRw,  rxCurrEdit,
  Mask,  rxToolEdit, IdMultipartFormData, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdHTTP, StrUtils, Data.DBXFirebird, SimpleDS,
  SgDbSeachComboUnit;

  
  
type
  TFrmPedidoProducao = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    DbGradePedido: TDBGrid;
    DbGradeItemPedido: TDBGrid;
    RbPedido: TRadioButton;
    RBEmissao: TRadioButton;
    RbPrevista: TRadioButton;
    RBProgramada: TRadioButton;
    RBConclusao: TRadioButton;
    RbCliente: TRadioButton;
    BtnGravar: TBitBtn;
    BtnConsultar: TBitBtn;
    ScrollBox1: TScrollBox;
    DsPedido: TDataSource;
    DsPedidoItem: TDataSource;
    CdsPedido: TSQLClientDataSet;
    CdsPedidoPED_STATUS_ANALISE_PRODUCAO: TStringField;
    CdsPedidoPED_CODIGO: TStringField;
    CdsPedidoPED_DTENTRADA: TSQLTimeStampField;
    CdsPedidoPED_DTSAIDA: TSQLTimeStampField;
    CdsPedidoPED_PCP_DATA_PROGRAMADA: TSQLTimeStampField;
    CdsPedidoPED_PCP_SIT_PRODUCAO: TStringField;
    CdsPedidoCLI_CODIGO: TStringField;
    CdsPedidoCLI_RAZAO: TStringField;
    CdsPedidoCONCLUSAO: TFMTBCdField;
    CdsPedidoItem: TSQLClientDataSet;
    CdsPedidoItemPRD_REFER: TStringField;
    CdsPedidoItemPRF_PRDDESCRI: TStringField;
    CdsPedidoItemPRD_UND: TStringField;
    CdsPedidoItemPRF_QTDE: TFMTBCdField;
    CdsPedidoItemPRF_PCP_QTDE_ATENDIDA: TFMTBCdField;
    CdsPedidoItemPRF_PCP_QTDE_ESTOQUE: TFMTBCdField;
    CdsPedidoItemFALTA_LIBERAR: TFMTBCdField;
    CdsPedidoItemCONCLUSAO: TFMTBCdField;
    CdsPedidoCCSITUACAO: TStringField;
    BitBtn1: TBitBtn;
    CdsPedidoPED_OBSERVACAO: TBlobField;
    DBMemo1: TDBMemo;
    GbPesquisa: TGroupBox;
    spCliente: TSpeedButton;
    EdPedido: TEdit;
    DataInicial: TDateEdit;
    DataFinal: TDateEdit;
    CurrConclusao: TCurrencyEdit;
    CbCliente: TComboBoxRw;
    EdClienteCodigo: TEdit;
    CbConclusao: TComboBox;
    LblEntreDatas: TLabel;
    Label1: TLabel;
    CbSituacao: TComboBox;
    CdsPedidoEMP_CODIGO: TStringField;
    CdsPedidoItemPRF_REGISTRO: TIntegerField;
    CdsPedidoItemPRG_DESCRICAO: TStringField;
    CdsPedidoItemPTI_SIGLA: TStringField;
    Memo: TMemo;
    IdHTTP1: TIdHTTP;
    procedure CdsPedidoCalcFields(DataSet: TDataSet);
    procedure spClienteClick(Sender: tObject);
    procedure EdClienteCodigoExit(Sender: tObject);
    procedure CbClienteExit(Sender: tObject);
    procedure CbClienteChange(Sender: tObject);
    procedure CbSituacaoKeyPress(Sender: tObject; var Key: Char);
    procedure RbPedidoEnter(Sender: tObject);
    procedure RBEmissaoEnter(Sender: tObject);
    procedure RbPrevistaEnter(Sender: tObject);
    procedure RBProgramadaEnter(Sender: tObject);
    procedure RBConclusaoEnter(Sender: tObject);
    procedure RbClienteEnter(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure FormCloseQuery(Sender: tObject; var CanClose: Boolean);
    procedure DsPedidoDataChange(Sender: tObject; Field: TField);
    procedure DbGradePedidoDrawColumnCell(Sender: tObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure DbGradeItemPedidoDrawColumnCell(Sender: tObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure BtnGravarClick(Sender: tObject);
    procedure BtnConsultarClick(Sender: tObject);
    procedure BitBtn1Click(Sender: tObject);
  private
    { Private declarations }
    procedure Pesquisar;
    procedure BuscaItens;
    procedure Layout;
    procedure Liberar;
    procedure Enviar;
    procedure Sincronizar;
  public
    { Public declarations }
  end;

var
  FrmPedidoProducao: TFrmPedidoProducao;

implementation

uses
  DataCad, RWFunc, Men0001, uteis, iniciodb;

{$R *.dfm}

procedure TFrmPedidoProducao.CdsPedidoCalcFields(DataSet: TDataSet);
begin
   if (not CdsPedido.IsEmpty) then
      begin
         if (CdsPedidoPED_PCP_SIT_PRODUCAO.AsString = 'P') then
            CdsPedidoCCSITUACAO.AsString := 'PENDENTE'
         else
         if (CdsPedidoPED_PCP_SIT_PRODUCAO.AsString = 'E') then
            CdsPedidoCCSITUACAO.AsString := 'ENVIADO'
         else
         if (CdsPedidoPED_PCP_SIT_PRODUCAO.AsString = 'R') then
            CdsPedidoCCSITUACAO.AsString := 'EM PRODUÇÃO'
         else
         if (CdsPedidoPED_PCP_SIT_PRODUCAO.AsString = 'C') then
            CdsPedidoCCSITUACAO.AsString := 'CONCLUIDO'
         else
         if (CdsPedidoPED_PCP_SIT_PRODUCAO.AsString = 'D') then
            CdsPedidoCCSITUACAO.AsString := 'DISPONIBILIDADO';
      end;

end;

procedure TFrmPedidoProducao.spClienteClick(Sender: tObject);
begin
   Pesquisar;
end;

procedure TFrmPedidoProducao.EdClienteCodigoExit(Sender: tObject);
begin
   EdClienteCodigo.Text := PreenchezeroEsquerda(EdClienteCodigo.Text,5);
   if (EdClienteCodigo.Text = '00000') then
      begin
         EdClienteCodigo.Clear;
         CbCliente.Text := '';
      end
   else
      begin
         CbCliente.TextoLocalizar := EdClienteCodigo.Text;
         CbCliente.Localizar := True;
         if (CbCliente.Localizado) then
            begin
               //BuscaCliente(EdClienteCodigo.Text);
            end
         else
            begin
               uteis.aviso('Cliente não localizado com o código informado');
               CbCliente.Text := '';
               EdClienteCodigo.SetFocus;
               EdClienteCodigo.SelectAll;
            end;
      end;
end;

procedure TFrmPedidoProducao.CbClienteExit(Sender: tObject);
begin
   if (CbCliente.CodigoLista = '') or (CbCliente.Text = '') then
      begin
         CbCliente.Text := '';
         EdClienteCodigo.Text := '';
      end
   else
      begin
         EdClienteCodigo.Text := CbCliente.CodigoLista;
      end;
end;

procedure TFrmPedidoProducao.CbClienteChange(Sender: tObject);
begin
   EdClienteCodigo.Text := CbCliente.CodigoLista;
end;

procedure TFrmPedidoProducao.CbSituacaoKeyPress(Sender: tObject;
  var Key: Char);
begin
   if (Key = #13) then
      begin
         Key := #0;
         Pesquisar;
      end;
end;

procedure TFrmPedidoProducao.Layout;
begin
   //Deixa Todos Invisiveis
   //Pedido
   EdPedido.Clear;
   EdPedido.Visible := False;
   //Emissao / Prevista / Programada
   DataInicial.Date := now - 30;
   DataInicial.Visible := False;
   LblEntreDatas.Visible := False;
   DataFinal.Date := Now;
   DataFinal.Visible := False;
   // % Conclusão
   CbConclusao.ItemIndex := 0;
   CbConclusao.Visible := False;
   CurrConclusao.Clear;
   CurrConclusao.Visible := False;
   //Cliente
   EdClienteCodigo.Clear;
   EdClienteCodigo.Visible := False;
   CbCliente.Text := '';
   CbCliente.Visible := False;
   //Agora ve qual que esta marcado e mostra somente os campos de cada tipo de consulta
   if (RbPedido.Checked) then
      begin
         GbPesquisa.Caption := 'Pesquisa pelo número do pedido';
         EdPedido.Visible := True;
         EdPedido.SetFocus;
      end
   else
   if (RBEmissao.Checked) then
      begin
         GbPesquisa.Caption := 'Pesquisa pela data de emissão';
         DataInicial.Visible := True;
         LblEntreDatas.Visible := True;
         DataFinal.Visible := True;
         DataInicial.SetFocus;
         DataInicial.SelectAll;
      end
   else
   if (RbPrevista.Checked) then
      begin
         GbPesquisa.Caption := 'Pesquisa pela data de previsão';
         DataInicial.Visible := True;
         LblEntreDatas.Visible := True;
         DataFinal.Visible := True;
         DataInicial.SetFocus;
         DataInicial.SelectAll;
      end
   else
   if (RBProgramada.Checked) then
      begin
         GbPesquisa.Caption := 'Pesquisa pela data de programação';
         DataInicial.Visible := True;
         LblEntreDatas.Visible := True;
         DataFinal.Visible := True;
         DataInicial.SetFocus;
         DataInicial.SelectAll;
      end
   else
   if (RBConclusao.Checked) then
      begin
         CbConclusao.Visible := True;
         CurrConclusao.Visible := True;
         CbConclusao.SetFocus;
      end
   else
   if (RbCliente.Checked) then
      begin
         EdClienteCodigo.Visible := True;
         CbCliente.Visible := True;
         EdClienteCodigo.SetFocus;
      end;
end;

procedure TFrmPedidoProducao.Pesquisar;
var
   sQuery:WideString;
   sCondicao:String;
begin
   sCondicao := '';
   CdsPedido.Close;
   if (RbPedido.Checked) then
      begin
         if (Trim(EdPedido.Text) = '') then
            begin
               uteis.aviso('Informe o pedido');
               EdPedido.SetFocus;
            end
         else
            begin
               sCondicao := 'WHERE t1.ped_codigo = '+QuotedStr(Trim(EdPedido.Text));
            end;
      end
   else
   if (RBEmissao.Checked)or(RbPrevista.Checked)or(RBProgramada.Checked) then
      begin
         if (DataInicial.Text = '  /  /    ') then
            begin
               uteis.aviso('Informe a data Inicial');
               DataInicial.SetFocus;
               DataInicial.SelectAll;
            end
         else
         if (DataFinal.Text = '  /  /    ') then
            begin
               uteis.aviso('Informe a data Final');
               DataFinal.SetFocus;
               DataFinal.SelectAll;
            end
         else
         if (DataFinal.Date  < DataInicial.Date) then
            begin
               uteis.aviso('A data Inicial não pode ser maior que a data final');
               EdPedido.SetFocus;
            end
         else
            begin
               sCondicao := 'WHERE ';
               if (RBEmissao.Checked) then
                  sCondicao := sCondicao + ' t1.ped_dtentrada '
               else
               if (RbPrevista.Checked) then
                  sCondicao := sCondicao + ' t1.ped_dtsaida '
               else
               if (RBProgramada.Checked) then
                  sCondicao := sCondicao + ' t1.ped_pcp_data_programada ';
               sCondicao := sCondicao + ' BETWEEN '+QuotedStr(DataAmericana(DataInicial.Text))+' AND '+QuotedStr(DataAmericana(DataFinal.Text));
            end;
      end
   else
   if (RBConclusao.Checked) then
      begin
         sCondicao := ' WHERE cast(coalesce(((select sum(coalesce(t3.prf_pcp_qtde_estoque,0)) from ped_it01 t3 where '+
                     't3.ped_codigo = t1.ped_codigo and t3.emp_codigo = t1.emp_codigo) * 100)/(select '+
                     'sum(coalesce(t3.prf_qtde,0)) from ped_it01 t3 where t3.ped_codigo = t1.ped_codigo '+
                     'and t3.emp_codigo = t1.emp_codigo),0) as numeric(15,2)) ';
         if (CbConclusao.ItemIndex = 0) then //Maior Que
            sCondicao := sCondicao + '  > '
         else
         if (CbConclusao.ItemIndex = 1) then //Maior Que
            sCondicao := sCondicao + '  < '
         else
            sCondicao := sCondicao + '  = ';

         sCondicao := sCondicao + ValorAmericano(CurrConclusao.Text);
      end
   else
   if (RbCliente.Checked) then
      begin
         if (Trim(EdClienteCodigo.Text) = '') then
            begin
               uteis.aviso('Inform o Cliente');
               EdClienteCodigo.SetFocus;
               EdClienteCodigo.SelectAll;
            end
         else
            begin
               sCondicao := ' WHERE t1.cli_codigo = '+QuotedStr(EdClienteCodigo.Text);
            end;
      end;
   if (sCondicao = '') then
      begin
         uteis.aviso('Nenhuma condição realizada');
         Layout
      end
   else
      begin
         if (CbSituacao.ItemIndex <> 5) then
            begin
               sCondicao := sCondicao + ' and t1.ped_status_analise_producao = ';
               if (CbSituacao.ItemIndex = 0) then // CONCLUÍDO
                  sCondicao := sCondicao +QuotedStr('C')
               else
               if (CbSituacao.ItemIndex = 1) then // DISPONIBILIZADO
                  sCondicao := sCondicao +QuotedStr('D')
               else
               if (CbSituacao.ItemIndex = 2) then // EM PRODUÇÃO
                  sCondicao := sCondicao +QuotedStr('R')
               else
               if (CbSituacao.ItemIndex = 3) then // ENVIADO
                  sCondicao := sCondicao +QuotedStr('E')
               else
               if (CbSituacao.ItemIndex = 4) then // PENDENTE
                  sCondicao := sCondicao +QuotedStr('P');
            end;   

         sQuery := 'select '+
                   't1.emp_codigo,'+
                   't1.ped_status_analise_producao, '+
                   't1.ped_codigo, '+
                   't1.ped_observacao, '+
                   't1.ped_dtentrada,'+
                   't1.ped_dtsaida,'+
                   'T1.ped_pcp_data_programada,  '+
                   'T1.ped_pcp_sit_producao,'+
                   'T1.cli_codigo,'+
                   'T2.cli_razao,'+
                   'cast(coalesce(((select sum(coalesce(t3.prf_pcp_qtde_estoque,0)) from ped_it01 '+
                   't3 where t3.ped_codigo = t1.ped_codigo and t3.emp_codigo = t1.emp_codigo) * 100)'+
                   '/(select sum(coalesce(t3.prf_qtde,0)) from ped_it01 t3 where t3.ped_codigo = '+
                   't1.ped_codigo and t3.emp_codigo = t1.emp_codigo),0) as numeric(15,2)) as conclusao '+
                  'from '+
                  'ped0000 t1 '+
                  'LEFT JOIN cli0000 T2 ON (T2.cli_codigo = T1.cli_codigo)';

         CdsPedido.CommandText := SQLDEF('PEDIDOS',sQuery,sCondicao,'t1.ped_codigo  desc','t1.');
         CdsPedido.Open;
         if (CdsPedido.IsEmpty) then
            begin
               uteis.aviso('Nenhum pedido Localizado');
                Layout;
            end
         else
            begin
               DbGradePedido.SetFocus;
            end;
      end;
end;

procedure TFrmPedidoProducao.RbPedidoEnter(Sender: tObject);
begin
   RbPedido.Checked := True;
   Layout;
end;

procedure TFrmPedidoProducao.RBEmissaoEnter(Sender: tObject);
begin
   RBEmissao.Checked := True;
   Layout;
end;

procedure TFrmPedidoProducao.RbPrevistaEnter(Sender: tObject);
begin
   RbPrevista.Checked := True;
   Layout;
end;

procedure TFrmPedidoProducao.RBProgramadaEnter(Sender: tObject);
begin
   RBProgramada.Checked := True;
   Layout;
end;

procedure TFrmPedidoProducao.RBConclusaoEnter(Sender: tObject);
begin
   RBConclusao.Checked := True;
   Layout;
end;

procedure TFrmPedidoProducao.RbClienteEnter(Sender: tObject);
begin
   RbCliente.Checked := True;
   Layout;
end;

procedure TFrmPedidoProducao.FormShow(Sender: tObject);
begin
   //Combos
   CbCliente.CarregarCombo := True;
   Layout;
   Pesquisar;
end;

procedure TFrmPedidoProducao.FormCloseQuery(Sender: tObject;
  var CanClose: Boolean);
begin
   CdsPedido.Close;
   CdsPedidoItem.Close;
   CbCliente.CarregarCombo := False;
end;

procedure TFrmPedidoProducao.BuscaItens;
var
   sQuery:WideString;
begin
   CdsPedidoItem.Close;
   if (not CdsPedido.IsEmpty) then
      begin
         sQuery := 'SELECT '+
                   'T1.prd_refer,'+
                   't1.PRF_REGISTRO,'+
                   't3.PRG_DESCRICAO,'+
                   'T1.prf_prddescri,'+
                   'T2.prd_und,'+
                   'T1.prf_qtde, '+
                   't4.PTI_SIGLA, '+
                   'coalesce(T1.prf_pcp_qtde_atendida,0) as prf_pcp_qtde_atendida,'+
                   'coalesce(T1.prf_pcp_qtde_estoque,0) as prf_pcp_qtde_estoque,'+
                   'coalesce((T1.prf_pcp_qtde_atendida - T1.prf_pcp_qtde_estoque),0) AS FALTA_LIBERAR,'+
                   'case '+
                   '    when (T1.prf_pcp_qtde_estoque > 0 and T1.prf_qtde > 0) then '+
                   '        CAST(((coalesce(T1.prf_pcp_qtde_estoque,0) * 100) / COALESCE(T1.prf_qtde,0))  AS numeric(15,2)) '+
                   '    else '+
                   '        0 '+
                   'end as CONCLUSAO '+
                   'FROM  '+
                   'ped_it01 T1 '+
                   'left join prd0000 T2 ON (T2.prd_refer = T1.prd_refer)  left join PRD_GRADE t3 on (t3.PRG_REGISTRO = t1.PRG_REGISTRO) left join PRD_TIPO t4 on (t4.PTI_CODIGO = t2.PTI_CODIGO)';
         CdsPedidoItem.CommandText := SQLDEF('PEDIDOS',sQuery,'WHERE PED_CODIGO = '+QuotedStr(CdsPedidoPED_CODIGO.AsString),'PED_CODIGO DESC','T1.');
         CdsPedidoItem.Open;
      end;
end;

procedure TFrmPedidoProducao.DsPedidoDataChange(Sender: tObject;
  Field: TField);
begin
   BuscaItens;
end;

procedure TFrmPedidoProducao.DbGradePedidoDrawColumnCell(Sender: tObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
   Check: Integer;
   R: TRect;
begin
    if (not odd(CdsPedido.RecNo)) then
       if not (GdSelected in State) then
          begin
              DbGradePedido.Canvas.Brush.Color := $00FFEFDF;
              DbGradePedido.Canvas.FillRect(rect);
              DbGradePedido.DefaultDrawDataCell(Rect,column.Field,state);
          end;
   //Desenha um checkbox no dbgrid
   if Column.FieldName = 'PED_STATUS_ANALISE_PRODUCAO' then
      begin
         DbGradePedido.Canvas.FillRect(Rect);
         Check := 0;
         if CdsPedidoPED_STATUS_ANALISE_PRODUCAO.AsString = 'S' then
            Check := DFCS_CHECKED
         else
            Check := 0;
         R:=Rect;
         InflateRect(R,-2,-2); {Diminue o tamanho do CheckBox}
         DrawFrameControl(DbGradePedido.Canvas.Handle,R,DFC_BUTTON, DFCS_BUTTONCHECK or Check);
      end;
end;

procedure TFrmPedidoProducao.DbGradeItemPedidoDrawColumnCell(
  Sender: tObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
   if (not odd(CdsPedidoItem.RecNo)) then
      if not (GdSelected in State) then
         begin
             DbGradeItemPedido.Canvas.Brush.Color := $00FFEFDF;
             DbGradeItemPedido.Canvas.FillRect(rect);
             DbGradeItemPedido.DefaultDrawDataCell(Rect,column.Field,state);
         end;
end;

procedure TFrmPedidoProducao.BtnGravarClick(Sender: tObject);
begin
   Liberar;
end;

procedure TFrmPedidoProducao.BtnConsultarClick(Sender: tObject);
begin
   Enviar;
end;

procedure TFrmPedidoProducao.BitBtn1Click(Sender: tObject);
begin
   Sincronizar;
end;

procedure TFrmPedidoProducao.Enviar;
var
   data: TIdMultiPartFormDataStream;
begin
   //Variaveis
   Memo.Clear;
   //Monta XML
   Memo.Lines.Add('<pedidoProducao>');
   Memo.Lines.Add('<empresa>'+CdsPedidoEMP_CODIGO.AsString+'</empresa>');
   Memo.Lines.Add('<pedido>'+CdsPedidoPED_CODIGO.AsString+'</pedido>');
   Memo.Lines.Add('<clienteCodigo>'+CdsPedidoCLI_CODIGO.AsString+'</clienteCodigo>');
   Memo.Lines.Add('<clienteRazao>'+CdsPedidoCLI_RAZAO.AsString+'</clienteRazao>');
   Memo.Lines.Add('<dataPedido>'+FormatDateTime('yyyy-mm-dd',CdsPedidoPED_DTENTRADA.AsDateTime)+'T'+FormatDateTime('hh:mm:ss',CdsPedidoPED_DTENTRADA.AsDateTime)+'</dataPedido>');
   Memo.Lines.Add('<dataPrevisao>'+FormatDateTime('yyyy-mm-dd',CdsPedidoPED_DTSAIDA.AsDateTime)+'T'+FormatDateTime('hh:mm:ss',CdsPedidoPED_DTSAIDA.AsDateTime)+'</dataPrevisao>');
   CdsPedidoItem.First;
   while (not CdsPedidoItem.Eof) do
      begin
         //Item do pedido
         Memo.Lines.Add('<item>');
         Memo.Lines.Add('<codigo>'+CdsPedidoItemPRF_REGISTRO.AsString+'</codigo>');
         Memo.Lines.Add('<referencia>'+CdsPedidoItemPRD_REFER.AsString+'</referencia>');
         Memo.Lines.Add('<tipo>'+CdsPedidoItemPTI_SIGLA.AsString+'</tipo>');
         Memo.Lines.Add('<unidade>'+CdsPedidoItemPRD_UND.AsString+'</unidade>');
         if (CdsPedidoItemPRG_DESCRICAO.AsString <> '') then
            Memo.Lines.Add('<grade>'+CdsPedidoItemPRG_DESCRICAO.AsString+'</grade>');
         Memo.Lines.Add('<descricao>'+CdsPedidoItemPRF_PRDDESCRI.AsString+'</descricao>');
         Memo.Lines.Add('<quantidade>'+AnsiReplaceStr(FormatFloat('0.0000' , CdsPedidoItemPRF_QTDE.AsFloat), FormatSettings.DecimalSeparator , '.')+'</quantidade>');
         Memo.Lines.Add('</item>');
         //Next
         CdsPedidoItem.Next;
      end;
   Memo.Lines.Add('</pedidoProducao>');
   //Transmite
   data := TIdMultiPartFormDataStream.Create;
   data.AddFormField('xmlAutenticacao', '<autorizacao><login>admin</login><passw>admin</passw></autorizacao>');
   data.AddFormField('xmlPedidoProducao', Memo.Text);
   try
      IdHTTP1.ReadTimeout := 1000;
      Memo.Lines.Text := IdHTTP1.Post('http://localhost:8080/AdjutorProducao/webService/recepcaoPedido', data);
   except
      uteis.aviso('Problemas ao se conectar com o Webservice');
   end;
   //Resultado
   uteis.aviso(Pchar('Retorno:'+Memo.Text));

end;

procedure TFrmPedidoProducao.Liberar;
begin
      uteis.aviso('Nao ta pronto');
end;

procedure TFrmPedidoProducao.Sincronizar;
begin
      uteis.aviso('Nao ta pronto');
end;

end.
