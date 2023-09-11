
unit Osv0004;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCGrids, Db, DBTables, Grids, DBGrids, ExtCtrls, StdCtrls, Mask,
  DBCtrls, Buttons, Rwfunc,  rxCurrEdit, rxToolEdit;

type
  TFormOrdServProcesso = class(TForm)
    TQSecao: TQuery;
    DsQSecao: TDataSource;
    TQSecaoSEC_CODIGO: TStringField;
    TQSecaoSEC_DESCRI: TStringField;
    TQPcpSeq: TQuery;
    DsQPcpSeq: TDataSource;
    DBGrid3: TDBGrid;
    GrpDestino: TGroupBox;
    Panel3: TPanel;
    DBLkCboSecaoDescri: TDBLookupComboBox;
    GrpOrigem: TGroupBox;
    Panel2: TPanel;
    DbeEntrada: TDBEdit;
    DbeQtde: TDBEdit;
    Bit_Gravar: TBitBtn;
    Bit_Cancelar: TBitBtn;
    DataEntrada: TDateEdit;
    TQPcpSeqOSV_CODIGO: TStringField;
    TQPcpSeqPcp_seqSEC_CODIGO: TStringField;
    TQPcpSeqSPC_ENTRADA: TDateTimeField;
    TQPcpSeqSPC_QTDE_E: TFloatField;
    TQPcpSeqSPC_SAIDA: TDateTimeField;
    TQPcpSeqSPC_QTDE_S: TFloatField;
    TQPcpSeqSPC_SITUACAO: TStringField;
    TQPcpSeqEMP_CODIGO: TStringField;
    TQPcpSeqPcp_secaoSEC_CODIGO: TStringField;
    TQPcpSeqSEC_DESCRI: TStringField;
    Panel1: TPanel;
    Label1: TLabel;
    EdtOSV_CODIGO: TEdit;
    TQPcpSeqSPC_SEQ: TStringField;
    Label2: TLabel;
    TQPcpGeral: TQuery;
    TQPcpGeralOSV_CODIGO: TStringField;
    TQPcpGeralSPC_SEQ: TStringField;
    TQPcpGeralPcp_seqSEC_CODIGO: TStringField;
    TQPcpGeralSPC_ENTRADA: TDateTimeField;
    TQPcpGeralSPC_QTDE_E: TFloatField;
    TQPcpGeralSPC_SAIDA: TDateTimeField;
    TQPcpGeralSPC_QTDE_S: TFloatField;
    TQPcpGeralSPC_SITUACAO: TStringField;
    TQPcpGeralEMP_CODIGO: TStringField;
    TQPcpGeralPcp_secaoSEC_CODIGO: TStringField;
    TQPcpGeralSEC_DESCRI: TStringField;
    DsQPcpGeral: TDataSource;
    DBGrid1: TDBGrid;
    Panel4: TPanel;
    TQPcpSeqPED_CODIGO: TStringField;
    TQPcpGeralPED_CODIGO: TStringField;
    DbeDescri: TDBEdit;
    SpeedOrigem: TSpeedButton;
    TQPcpSeqSituacao_CC: TStringField;
    TQPcpGeralSITUACAO_CC: TStringField;
    EdtPED_CODIGO: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    EdtDesc_Produto: TEdit;
    TQPcpGeralSPC_PRDDESCRI: TStringField;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    TQPcpSeqSPC_PREVISAO: TDateTimeField;
    TQPcpGeralSPC_PREVISAO: TDateTimeField;
    Qtde_Entrada: TCurrencyEdit;
    NEditQtdeTotal: TCurrencyEdit;
    procedure MudaCorCampos(Sender: tObject);
    procedure DesabilitaOrigem;
    procedure HabilitaOrigem;
    procedure FormShow(Sender: tObject);
    procedure Bit_GravarClick(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure Qtde_EntradaExit(Sender: tObject);
    procedure SpeedOrigemClick(Sender: tObject);
    procedure Bit_CancelarClick(Sender: tObject);
    procedure TQPcpSeqCalcFields(DataSet: TDataSet);
    procedure TQPcpGeralCalcFields(DataSet: TDataSet);
    procedure SpeedButton2Click(Sender: tObject);
    procedure DataEntradaExit(Sender: tObject);
  private
    { Private declarations }
    {campos}
    CampoEdit    :TEdit;
    CampoDBEdit  :TDBEdit;
    CampoData    :TDateEdit;
    CampoTDBLuk  :TDBLookupComboBox;
    CampoCurrency:TCurrencyEdit;
  public
    { Public declarations }
  end;

var
  FormOrdServProcesso: TFormOrdServProcesso;


implementation

uses Osv0001,Osv0003;





{$R *.DFM}


procedure TFormOrdServProcesso.MudaCorCampos(Sender: tObject);
begin
  {cor dos campos TDBEdit}
   if Assigned(CampoDbEdit) then
      begin
         CampoDbEdit.color := clWindow;
      end;
   if ActiveControl is TDBEdit then
      begin
         if TDBEdit(ActiveControl).color = $00D7D7D7 then
            begin
               exit;
            end;
         TDBEdit(ActiveControl).color := $0080FFFF;
         CampoDbEdit := TDBEdit(ActiveControl);
      end
   else
      begin
         CampoDbEdit := nil;
      end;

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

  {CampoData  :TDateEdit}
   if Assigned(CampoData) then
      begin
         CampoData.color := clWindow;
      end;
   if ActiveControl is TDateEdit then
      begin
         TDateEdit(ActiveControl).color := $0080FFFF;
         CampoData := TDateEdit(ActiveControl);
      end
   else
      begin
         CampoData := nil;
      end;


  {CampoTDBLuk  :TDBLookupComboBox}
   if Assigned(CampoTDBLuk) then
      begin
         CampoTDBLuk.color := clWindow;
      end;
   if ActiveControl is TDBLookupComboBox then
      begin
         TDBLookupComboBox(ActiveControl).color := $0080FFFF;
         CampoTDBLuk := TDBLookupComboBox(ActiveControl);
      end
   else
      begin
         CampoTDBLuk := nil;
      end;

  {CampoCurrency :TCurrencyEdit}
   if Assigned(CampoCurrency) then
      begin
         CampoCurrency.color := clWindow;
      end;
   if ActiveControl is TCurrencyEdit then
      begin
         TMaskEdit(ActiveControl).color := $0080FFFF;
         CampoCurrency := TCurrencyEdit(ActiveControl);
      end
   else
      begin
         CampoCurrency := nil;
      end;


end;


procedure TFormOrdServProcesso.DesabilitaOrigem;
begin
  DbeEntrada.Enabled   := False;
  DbeDescri.Enabled    := False;
  DbeQtde.Enabled      := False;
  SpeedOrigem.Enabled  := False;
  GrpOrigem.Enabled    := False;
  GrpOrigem.Font.Color := clGray;
  GrpDestino.Enabled   := True;
  GrpDestino.Font.Color := clMaroon;;
  Qtde_Entrada.Enabled := True;
  DataEntrada.Enabled  := True;
  DBLkCboSecaoDescri.Enabled :=True;
  Bit_Gravar.Enabled := True;
  Bit_Cancelar.Enabled := True;

end;

procedure TFormOrdServProcesso.HabilitaOrigem;
begin
  DbeEntrada.Enabled := True;
  DbeDescri.Enabled  := True;
  DbeQtde.Enabled    := True;
  SpeedOrigem.Enabled:= True;
  GrpOrigem.Enabled  := True;
  GrpOrigem.Font.Color := clMaroon;
  GrpDestino.Enabled := False;
  GrpDestino.Font.Color := clGray;
  Qtde_Entrada.Enabled := False;
  DataEntrada.Enabled  := False;
  DBLkCboSecaoDescri.Enabled :=False;
  Bit_Gravar.Enabled := False;
  Bit_Cancelar.Enabled := False;
end;

procedure TFormOrdServProcesso.FormShow(Sender: tObject);
var
wSituacao:string[1];
begin
//
{ativa o método ao evento OnActiveControlChange}
Screen.OnActiveControlChange   := MudaCorCampos;

try
  TQSecao.DatabaseName := Preopen('OrdemProducao');
  TQSecao.open;
except
  uteis.erro  ('Ocorreu um erro na abertura da tabela "TQSeção"');
end;
//
//
// pega numero e qtde da ordem de producao atual
//EdtOSV_CODIGO.Text  :=FormOrdServCentro.TbOrdServOSV_CODIGO.Value;
//EdtPED_CODIGO.Text  :=FormOrdServCentro.TbOrdServPED_CODIGO.Value;
//EdtDesc_Produto.Text:= FormOrdServCentro.TbOrdServOSV_PRDDESCRI.Value;
//NEditQtdeTotal.Value:= FormOrdServCentro.TbOrdServOSV_QTDE.Value;
try
  TQPcpSeq.Close;
  TQPcpSeq.DatabaseName := Preopen('OrdemProducao');
  TQPcpSeq.Sql.Clear;
  TQPcpSeq.Sql.Add('SELECT Pcp_seq.OSV_CODIGO,Pcp_seq.SEC_CODIGO,Pcp_seq.SPC_ENTRADA,Pcp_seq.SPC_QTDE_E,Pcp_seq.SPC_SAIDA,Pcp_seq.SPC_QTDE_S,Pcp_seq.SPC_SITUACAO,Pcp_seq.EMP_CODIGO,Pcp_secao.SEC_CODIGO,Pcp_secao.SEC_DESCRI,Pcp_seq.SPC_PREVISAO,'+
  'Pcp_seq.SPC_SEQ,Pcp_seq.PED_CODIGO');
  TQPcpSeq.Sql.Add('FROM PCP_SEQ,PCP_SECAO');
  TQPcpSeq.Sql.Add('WHERE Pcp_seq.SEC_CODIGO=Pcp_secao.SEC_CODIGO AND Pcp_Seq.OSV_CODIGO='''+EdtOSV_CODIGO.Text+'''');
  TQPcpSeq.Sql.Add('ORDER BY Pcp_seq.OSV_CODIGO, Pcp_seq.SPC_SEQ');
  TQPcpSeq.Open;
except
  uteis.erro  ('Ocorreu um erro na abertura da tabela "TQPcpSeq"');
end;
//
wSituacao:='P';  // somente itens em Processo
try
  TQPcpGeral.Close;
  TQPcpGeral.DatabaseName := Preopen('OrdemProducao');
  TQPcpGeral.Sql.Clear;
  TQPcpGeral.Sql.Add('SELECT Pcp_seq.OSV_CODIGO,Pcp_seq.SEC_CODIGO,Pcp_seq.SPC_ENTRADA,Pcp_seq.SPC_QTDE_E,Pcp_seq.SPC_SAIDA,Pcp_seq.SPC_QTDE_S,Pcp_seq.SPC_SITUACAO,Pcp_seq.EMP_CODIGO,Pcp_secao.SEC_CODIGO,Pcp_secao.SEC_DESCRI,Pcp_seq.SPC_PREVISAO,'+
  'Pcp_seq.SPC_SEQ,Pcp_seq.PED_CODIGO,Pcp_seq.SPC_PRDDESCRI');
  TQPcpGeral.Sql.Add('FROM PCP_SEQ,PCP_SECAO');
  TQPcpGeral.Sql.Add('WHERE Pcp_seq.SEC_CODIGO=Pcp_secao.SEC_CODIGO AND Pcp_Seq.SPC_SITUACAO='''+wSituacao+'''');
  TQPcpGeral.Sql.Add('ORDER BY Pcp_seq.SEC_CODIGO, Pcp_seq.SPC_ENTRADA');
  TQPcpGeral.Open;
 except
   uteis.erro  ('Ocorreu um erro ao atualizar a tabela "TQPcpGeral"');
 end;
//*** Verificar se é o primeiro processo de produção, para tratamento diferenciado *** //
{
if TQPcpSeq.Locate('OSV_CODIGO',FormOrdServCentro.TbOrdServOSV_CODIGO.Value,[])=False Then
  // é o primeiro registro de processo, tratar tela diferente
  begin
  DesabilitaOrigem;
//  Qtde_Entrada.Value := FormOrdServCentro.TbOrdServOSV_QTDE.Value;
  DataEntrada.Date := DataSistema(now); // data de hoje
  end
else
  HabilitaOrigem;

}
end;

procedure TFormOrdServProcesso.Bit_GravarClick(Sender: tObject);
var
wSequencia,wSituacao : String;
Bookmark : Tbookmark;
begin
{
wSequencia:='00';
if uteis.confirmacao ( 'Confirma Movimento no Processo')=Mryes then
 begin
 //
 if TQPcpSeq.IsEmpty then
   // primeiro e novo registro = somente gerar novo
   begin
   wSequencia := '01';
   if Qtde_Entrada.Value <> FormOrdServCentro.TbOrdServOSV_QTDE.Value then
     begin
     uteis.erro  ('A Qtde enviada para o processo deve ser igual ao total da ordem.');
     FormOrdServCentro.TbPcpSeq.Cancel;
     exit;
     end;
   // insere novo registro
   FormOrdServCentro.TbPcpSeq.Insert;
   FormOrdServCentro.TbPcpSeqOSV_CODIGO.Value  := EdtOSV_CODIGO.Text;
   FormOrdServCentro.TbPcpSeqSPC_SEQ.Value     := wSequencia;
   FormOrdServCentro.TbPcpSeqSEC_CODIGO.Value  := TQSecaoSEC_CODIGO.Value;
   FormOrdServCentro.TbPcpSeqPED_CODIGO.Value  := EdtPED_CODIGO.Text;
   FormOrdServCentro.TbPcpSeqSPC_ENTRADA.Value := DataEntrada.Date;
   FormOrdServCentro.TbPcpSeqSPC_QTDE_E.Value  := Qtde_Entrada.Value;
   FormOrdServCentro.TbPcpSeqSPC_PRDDESCRI.Value := EdtDesc_Produto.Text;
   FormOrdServCentro.TbPcpSeqSPC_SITUACAO.Value:= 'P';  // P = em Producao
   FormOrdServCentro.TbPcpSeq.Post;
   end
 else
   // já em processo = altero registro atual e gero novo registro
   begin
   IF Qtde_Entrada.Value < TQPcpSeqSPC_QTDE_E.Value then
     // ficou quantidade sem terminar
     begin
     // Altero processo atual = atualizao e concluo processo c/qtde concluida
     FormOrdServCentro.TbPcpSeq.Edit;
     // entrada = qtde concluida
     FormOrdServCentro.TbPcpSeqSPC_QTDE_E.Value  := Qtde_Entrada.Value;
     FormOrdServCentro.TbPcpSeqSPC_SAIDA.Value   := DataEntrada.Date;
     FormOrdServCentro.TbPcpSeqSPC_QTDE_S.Value  := Qtde_Entrada.Value;
     FormOrdServCentro.TbPcpSeqSPC_SITUACAO.Value:= 'C';  // C = Concluido
     FormOrdServCentro.TbPcpSeq.Post;
     //
     // gero novo registro do mesmo processo que falta concluir
     Bookmark := TQPcpSeq.GetBookmark; // guarda reg. atual
     TQPcpSeq.Last;
     wSequencia := IntToStr(StrToInt(TQPcpSeqSPC_SEQ.Value)+1);
     wSequencia := StrZero(wSequencia,2);
     //volta posição e destroe marcador
     TQPcpSeq.GotoBookmark(Bookmark);
     TQPcpSeq.FreeBookmark(Bookmark);
     //
     FormOrdServCentro.TbPcpSeq.Insert;
     FormOrdServCentro.TbPcpSeqOSV_CODIGO.Value  := EdtOSV_CODIGO.Text;
     FormOrdServCentro.TbPcpSeqSPC_SEQ.Value     := wSequencia;
     FormOrdServCentro.TbPcpSeqSEC_CODIGO.Value  := TQPcpSeqPcp_SeqSEC_CODIGO.Value; //mesmo processo
     FormOrdServCentro.TbPcpSeqPED_CODIGO.Value  := EdtPED_CODIGO.Text;
     FormOrdServCentro.TbPcpSeqSPC_ENTRADA.Value := TQPcpSeqSPC_ENTRADA.Value;     //mesma data
     FormOrdServCentro.TbPcpSeqSPC_QTDE_E.Value  := TQPcpSeqSPC_QTDE_E.Value-Qtde_Entrada.Value;
     FormOrdServCentro.TbPcpSeqSPC_PRDDESCRI.Value := EdtDesc_Produto.Text;
     FormOrdServCentro.TbPcpSeqSPC_SITUACAO.Value:= 'P';  // P = em Producao
     FormOrdServCentro.TbPcpSeq.Post;
     end
   else
     // senao é maior(ja testado) e nem menor entao é igual a qtde
     begin
     // se a secao destino é a mesma da origem o processo esta sendo finaliza-
     // do, entao avisar o usuário
     If TQPcpSeqPcp_SecaoSEC_CODIGO.Value = TQSecaoSEC_CODIGO.Value then
       begin
       if uteis.confirmacao ( 'Origem e Destino iguais. É o processo Final ?')=Mryes then
         begin
         // Finalizo o movimento do processo atual
         FormOrdServCentro.TbPcpSeq.Edit;
         FormOrdServCentro.TbPcpSeqSPC_SAIDA.Value   := DataEntrada.Date;
         FormOrdServCentro.TbPcpSeqSPC_QTDE_S.Value  := Qtde_Entrada.Value;
         FormOrdServCentro.TbPcpSeqSPC_SITUACAO.Value := 'C';  // C = Concuído
         FormOrdServCentro.TbPcpSeq.Post;
         FormOrdServCentro.TbPcpSeq.Refresh;
         end;
       end
     else
       // se origem e destino nao sao iguais
       begin
       // somente altero o processo atual
       FormOrdServCentro.TbPcpSeq.Edit;
       FormOrdServCentro.TbPcpSeqSPC_SAIDA.Value   := DataEntrada.Date;
       FormOrdServCentro.TbPcpSeqSPC_QTDE_S.Value  := Qtde_Entrada.Value;
       FormOrdServCentro.TbPcpSeqSPC_SITUACAO.Value := 'C';  // C = Concuído
       FormOrdServCentro.TbPcpSeq.Post;
       FormOrdServCentro.TbPcpSeq.Refresh;
       end;
     end;
   //
   { *** Gravar o novo registro para o processo destino, somente se o
     o destino for de secao diferente da origem  }
   {verifico se a origem  e o destino sao p/ o mesmo processo, se forem
    é porque o processo tá sendo concluido(talvez é o último da sequencia

   If TQPcpSeqPcp_SecaoSEC_CODIGO.Value <> TQSecaoSEC_CODIGO.Value then
     begin
     TQPcpSeq.Last;
     if wSequencia='00' then   // valor inicial entao é primeiro movimento
       wSequencia := IntToStr(StrToInt(TQPcpSeqSPC_SEQ.Value)+1)
     else    // houve um movimento anterior
       wSequencia := IntToStr(StrToInt(wSequencia)+1);
     //
     wSequencia := StrZero(wSequencia,2);
      // insere novo registro
     FormOrdServCentro.TbPcpSeq.Insert;
     FormOrdServCentro.TbPcpSeqOSV_CODIGO.Value  := EdtOSV_CODIGO.Text;
     FormOrdServCentro.TbPcpSeqSPC_SEQ.Value     := wSequencia;
     FormOrdServCentro.TbPcpSeqSEC_CODIGO.Value  := TQSecaoSEC_CODIGO.Value; // prox. processo
     FormOrdServCentro.TbPcpSeqPED_CODIGO.Value  := EdtPED_CODIGO.Text;
     FormOrdServCentro.TbPcpSeqSPC_ENTRADA.Value := DataEntrada.Date;
     FormOrdServCentro.TbPcpSeqSPC_QTDE_E.Value  := Qtde_Entrada.Value;
     FormOrdServCentro.TbPcpSeqSPC_PRDDESCRI.Value := EdtDesc_Produto.Text;
     FormOrdServCentro.TbPcpSeqSPC_SITUACAO.Value:= 'P';  // P = em Producao
     FormOrdServCentro.TbPcpSeq.Post;
     end;
   end;
 // atualizar TQPcpSeq
 try
  TQPcpSeq.Close;
  TQPcpSeq.DatabaseName := Preopen('OrdemProducao');
  TQPcpSeq.Sql.Clear;
  TQPcpSeq.Sql.Add('SELECT Pcp_seq.OSV_CODIGO, Pcp_seq.SEC_CODIGO, Pcp_seq.SPC_ENTRADA, Pcp_seq.SPC_QTDE_E, Pcp_seq.SPC_SAIDA, Pcp_seq.SPC_QTDE_S, Pcp_seq.SPC_SITUACAO, Pcp_seq.EMP_CODIGO, Pcp_secao.SEC_CODIGO, Pcp_secao.SEC_DESCRI, Pcp_seq.SPC_PREVISAO,'+
  'Pcp_seq.SPC_SEQ,Pcp_seq.PED_CODIGO');
  TQPcpSeq.Sql.Add('FROM PCP_SEQ,PCP_SECAO');
  TQPcpSeq.Sql.Add('WHERE Pcp_seq.SEC_CODIGO=Pcp_secao.SEC_CODIGO AND Pcp_Seq.OSV_CODIGO='''+EdtOSV_CODIGO.Text+'''');
  TQPcpSeq.Sql.Add('ORDER BY Pcp_seq.OSV_CODIGO, Pcp_seq.SPC_SEQ');
  TQPcpSeq.Open;
 except
   uteis.erro  ('Ocorreu um erro ao atualizar a tabela "TQPcpSeq"');
 end;
wSituacao:='P';  // somente itens em Processo
try
  TQPcpGeral.Close;
  TQPcpGeral.DatabaseName := Preopen('OrdemProducao');
  TQPcpGeral.Sql.Clear;
  TQPcpGeral.Sql.Add('SELECT Pcp_seq.OSV_CODIGO, Pcp_seq.SEC_CODIGO, Pcp_seq.SPC_ENTRADA, Pcp_seq.SPC_QTDE_E, Pcp_seq.SPC_SAIDA, Pcp_seq.SPC_QTDE_S, Pcp_seq.SPC_SITUACAO, Pcp_seq.EMP_CODIGO, Pcp_secao.SEC_CODIGO, Pcp_secao.SEC_DESCRI, Pcp_seq.SPC_PREVISAO,'+
  'Pcp_seq.SPC_SEQ,Pcp_seq.PED_CODIGO,Pcp_seq.SPC_PRDDESCRI');
  TQPcpGeral.Sql.Add('FROM PCP_SEQ,PCP_SECAO');
  TQPcpGeral.Sql.Add('WHERE Pcp_seq.SEC_CODIGO=Pcp_secao.SEC_CODIGO AND Pcp_Seq.SPC_SITUACAO='''+wSituacao+'''');
  TQPcpGeral.Sql.Add('ORDER BY Pcp_seq.SEC_CODIGO, Pcp_seq.SPC_ENTRADA');
  TQPcpGeral.Open;
 except
   uteis.erro  ('Ocorreu um erro ao atualizar a tabela "TQPcpGeral"');
 end;
 end;
//
 HabilitaOrigem;
} 
end;

procedure TFormOrdServProcesso.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
Screen.OnActiveControlChange := NIL;
try
  TQSecao.close;
except
  uteis.erro  ('Ocorreu um erro ao fechar a tabela "TQSeção"');
end;
//
try
  //voltar p/ o indice inicial
//  FormOrdServCentro.TbPcpSeq.IndexName:= 'XOSV_CODIGO';
except
  uteis.erro  ('Ocorreu um erro ao voltar a Indice "FormOrdServCentro.TbPcpSeq"');
end;
//
try
//  TQPcpSeq.Close;   // TQuery
except
  uteis.erro  ('Ocorreu um erro ao fechar a tabela "TQPcpSeq"');
end;

end;

procedure TFormOrdServProcesso.Qtde_EntradaExit(Sender: tObject);
begin
{
if TQPcpSeq.IsEmpty then
  // primeiro registro = comparar c/ qtde total da ordem
  begin
  if Qtde_Entrada.Value > FormOrdServCentro.TbOrdServOSV_QTDE.Value then
     begin
     uteis.erro  ('Impossível, quantidade não pode ser maior que quantidade do Total da Ordem.');
     Qtde_Entrada.Value:=FormOrdServCentro.TbOrdServOSV_QTDE.Value;
     Qtde_entrada.SetFocus;
     end;
  end
else
  // já esta em processo = comparar c/ qtde do processo
  if Qtde_Entrada.Value > TQPcpSeqSPC_QTDE_E.Value then
     begin
     uteis.erro  ('Impossível, quantidade não pode ser maior que a quantidade do Processo Origem.');
     Qtde_Entrada.Value:= TQPcpSeqSPC_QTDE_E.Value;
     Qtde_entrada.SetFocus;
     end;
}
end;

procedure TFormOrdServProcesso.SpeedOrigemClick(Sender: tObject);
begin
If TQPcpSeqSPC_SITUACAO.Value = 'C' then
  begin
  uteis.aviso('Este processo já está concluído!');
  exit;
  end;
//
DesabilitaOrigem;
//
// localizar o registro atual na tabela p/ alteracao
//FormOrdServCentro.TbPcpSeq.FindKey([TQPcpSeqOSV_CODIGO,TQPcpSeqSPC_SEQ]);
//
Qtde_Entrada.Value := TQPcpSeqSPC_QTDE_E.Value;
DataEntrada.Date := Now; // data de hoje
end;

procedure TFormOrdServProcesso.Bit_CancelarClick(Sender: tObject);
begin
HabilitaOrigem;
end;

procedure TFormOrdServProcesso.TQPcpSeqCalcFields(DataSet: TDataSet);
begin
if TQPcpSeqSPC_SITUACAO.Value = 'P' then
   TQPcpSeqSITUACAO_CC.Value := 'Produzindo'
else
   TQPcpSeqSITUACAO_CC.Value := 'Concluído';

end;

procedure TFormOrdServProcesso.TQPcpGeralCalcFields(DataSet: TDataSet);
begin
 if TQPcpGeralSPC_SITUACAO.Value = 'P' then
    TQPcpGeralSITUACAO_CC.Value := 'Produzindo'
 else
    TQPcpGeralSITUACAO_CC.Value := 'Concluído'
end;

procedure TFormOrdServProcesso.SpeedButton2Click(Sender: tObject);
begin
close;
end;

procedure TFormOrdServProcesso.DataEntradaExit(Sender: tObject);
begin
 if not TestaDataStr(DataEntrada.Text) then
    DataEntrada.setfocus;
end;

end.
