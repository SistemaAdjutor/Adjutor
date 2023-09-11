{***********************************************************************
 Programa.....: Balanço- Nome formulario = FormBalanço
 Objetivo.....: Balanço automático de Estoque e Limpa Movimentos de E/S
 Analista.....: Márcio Neu Pacheco
 Programador..: Márcio Neu Pacheco

 Comentários:  mexe somento do estoque fisico, pendente continua

 Criação..........: Jul/00
 Ultima Alteração.: Out/2010
 Alterado por.....: Márcio

************************************************************************}

unit Balanco;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Buttons, ComCtrls, RwFunc, Provider, SqlExpr,SqlClientDataSet, DB,
  DBClient, Grids, DBGrids, FMTBCd, MIDASLIB, DBLocal, DBLocalS, SimpleDS,
  Data.DBXFirebird;

type
  TFormBalanco = class(TForm)
    GrpSeleciona: TGroupBox;
    GroupBox2: TGroupBox;
    ProgressBar1: TProgressBar;
    EdtTipo: TEdit;
    EdtGrupo: TEdit;
    Label18: TLabel;
    Label19: TLabel;
    Bit_Zerar: TBitBtn;
    Bit_Sair: TBitBtn;
    CbTipo: TComboBox;
    CbGrupo: TComboBox;
    SqlCdsTipo: TSQLClientDataSet;
    SqlCdsGrupo: TSQLClientDataSet;
    SqlCdsTipoPTI_CODIGO: TStringField;
    SqlCdsTipoPTI_DESCRI: TStringField;
    SqlCdsTipoEMP_CODIGO: TStringField;
    SqlCdsGrupoPGR_CODIGO: TStringField;
    SqlCdsGrupoPGR_DESCRI: TStringField;
    SqlCdsGrupoPGR_COMISS: TStringField;
    SqlCdsGrupoPGR_COM_PERC: TFMTBCdField;
    SqlCdsGrupoEMP_CODIGO: TStringField;
    SqlCdsProduto: TSQLClientDataSet;
    DsProduto: TDataSource;
    SqlCdsProdutoPRD_REFER: TStringField;
    SqlCdsProdutoPRD_DESCRI: TStringField;
    SqlCdsProdutoPRD_ESTOQUE: TFMTBCdField;
    SqlCdsProdutoPRD_ENTRADA: TFMTBCdField;
    SqlCdsProdutoPRD_PENDENTE: TFMTBCdField;
    SqlCdsProdutoPRD_SAIDA: TFMTBCdField;
    BitCancelar: TBitBtn;
    BitPesquisar: TBitBtn;
    CdsAtualiza: TClientDataSet;
    DspAtualiza: TDataSetProvider;
    SqlAtualiza: TSQLDataSet;
    SqlCdsProdutoPRD_ESTFISICO_CC: TCurrencyField;
    Panel1: TPanel;
    PnBalanco: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    GroupBox1: TGroupBox;
    Chk_Limpar_Kardex: TCheckBox;
    Label20: TLabel;
    EdAlmox: TEdit;
    CbAlmox: TComboBox;
    SQLCdsAlmox: TSQLClientDataSet;
    SQLCdsAlmoxAMX_CODIGO: TStringField;
    SQLCdsAlmoxAMX_DESCRI: TStringField;
    SQLCdsAlmoxAMX_TIPO: TStringField;
    SQLCdsAlmoxEMP_CODIGO: TStringField;
    SqlCdsPrdManut: TSQLClientDataSet;
    SqlCdsPrdManutPRD_REFER: TStringField;
    SqlCdsPrdManutPES_TIPO: TStringField;
    SqlCdsPrdManutPES_QTDE: TFMTBCdField;
    SqlCdsPrdManutPES_NUMDOC: TStringField;
    SqlCdsPrdManutPES_TIPDOC: TStringField;
    SqlCdsPrdManutPES_DATA: TSQLTimeStampField;
    SqlCdsPrdManutEMP_CODIGO: TStringField;
    SqlCdsPrdManutPES_ORIGEM: TStringField;
    SqlCdsPrdManutPES_VALOR: TFMTBCdField;
    SqlCdsPrdManutPES_VAR1: TFMTBCdField;
    SqlCdsPrdManutPES_VAR2: TFMTBCdField;
    SqlCdsPrdManutPES_VAR3: TFMTBCdField;
    SqlCdsPrdManutPES_VAR4: TFMTBCdField;
    SqlCdsPrdManutPES_VAR5: TFMTBCdField;
    SqlCdsPrdManutPES_VAR6: TFMTBCdField;
    SqlCdsPrdManutPES_VAR7: TFMTBCdField;
    SqlCdsPrdManutPES_VAR8: TFMTBCdField;
    SqlCdsPrdManutPES_REGISTRO: TIntegerField;
    SqlCdsPrdManutAMX_CODIGO: TStringField;
    SqlCdsPrdManutFOR_CODIGO: TStringField;
    SqlCdsPrdManutAMX_DESCRI: TStringField;
    SqlCdsPrdManutPES_IPI: TFMTBCdField;
    SqlCdsPrdManutPES_TIPO_CA: TStringField;
    SqlCdsPrdManutPES_IPI_CC: TCurrencyField;
    SqlCdsPrdManutPES_FLAG_ACERTO: TStringField;
    SqlCdsPrdManutPES_FLAG_CONTA: TStringField;
    SqlCdsPrdManutPES_HORA: TTimeField;
    SqlCdsPrdManutCONTA_CC: TStringField;
    SqlCdsPrdManutPES_KARDEX_TIPO: TStringField;
    SqlCdsPrdManutPES_KARDEX_OBS: TStringField;
    SqlCdsPrdManutKARDEX_TIPO: TStringField;
    SqlCdsPrdManutPED_CODIGO: TStringField;
    SqlConsulta: TSQLClientDataSet;
    Cdsupdate1: TSQLClientDataSet;
    SqlCdsProdutoPRD_RESERVA: TFMTBCdField;
    SqlCdsProdutoPRD_EMPENHO: TFMTBCdField;
    PnZerar: TPanel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBGrid1: TDBGrid;
    procedure FormShow(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure Bit_ZerarClick(Sender: tObject);
    procedure Bit_SairClick(Sender: tObject);
    procedure EdtTipoEnter(Sender: tObject);
    procedure EdtGrupoEnter(Sender: tObject);
    procedure CbTipoEnter(Sender: tObject);
    procedure CbGrupoEnter(Sender: tObject);
    procedure EdtTipoExit(Sender: tObject);
    procedure CbTipoExit(Sender: tObject);
    procedure EdtGrupoExit(Sender: tObject);
    procedure CbGrupoExit(Sender: tObject);
    procedure CbGrupoClick(Sender: tObject);
    procedure CbTipoClick(Sender: tObject);
    procedure BitPesquisarClick(Sender: tObject);
    procedure BitCancelarClick(Sender: tObject);
    procedure SqlCdsProdutoCalcFields(DataSet: TDataSet);
    procedure EdtTipoClick(Sender: tObject);
    procedure EdtGrupoClick(Sender: tObject);
    procedure EdtTipoKeyPress(Sender: tObject; var Key: Char);
    procedure EdtGrupoKeyPress(Sender: tObject; var Key: Char);
    procedure FormCreate(Sender: tObject);
    procedure DBGrid1DrawColumnCell(Sender: tObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure EdAlmoxClick(Sender: tObject);
    procedure EdAlmoxEnter(Sender: tObject);
    procedure EdAlmoxExit(Sender: tObject);
    procedure EdAlmoxKeyPress(Sender: tObject; var Key: Char);
    procedure CbAlmoxClick(Sender: tObject);
    procedure CbAlmoxEnter(Sender: tObject);
    procedure CbAlmoxExit(Sender: tObject);
  private
    { Private declarations }
    procedure PreencheCombo;
    procedure Lancar_Kardex;
    procedure Lancar_Kardex_AMX;
    procedure AcertaSaldoProduto(sCodProduto:String);
    procedure AdicionaKardex(sReferencia,  {código do Produto}
                             sTipoES,      {E = Entrada S = Saída}
                             sQuantidade,  {Quantidade}
                             sNumeroDoc,   {Número do Documento}
                             sTipoDoc,     {Tipo do Documento}
                             sData,        {Data da Movimentação}
                             sHora,        {Hora da Movimentação}
                             sOrigem,      {Origem do Lançamento}
                             sValor,       {Valor do Lançamento}
                             sVar1,        {Variavel}
                             sVar2,        {Variavel}
                             sVar3,        {Variavel}
                             sVar4,        {Variavel}
                             sVar5,        {Variavel}
                             sVar6,        {Variavel}
                             sVar7,        {Variavel}
                             sVar8,        {Variavel}
                             sIpi,         {Variavel}
                             sFlagAcerto,  {Flag de Acerto}
                             sFlagConta,   {Flag de Conta}
                             sKardexTipo,  {Tipo do Kardex}
                             sCodPedido,   {Códgo do Pedido}
                             sAlmox,       {Almoxerifado}
                             sObs,         {Observação do Lançamento}
                             sUsuarioCodigo,
                             sUsuarioLogin:
                             String);
  public
    { Public declarations }
  end;

var
  FormBalanco: TFormBalanco;

implementation

uses Uteis, Men0001, DataCad, PRD0011, iniciodb;

{$R *.DFM}






procedure TFormBalanco.FormShow(Sender: tObject);
begin
    Left := 70;
    Top  :=  0;
    Screen.Cursor := crHourGlass;
    if FrmMenu.wPub_Estoque = 'B' then
       begin
           PnBalanco.BringToFront;
           FormBalanco.Caption       := 'Balanço Automático';
           GrpSeleciona.Caption      := 'Filtrar Produtos para balanço';
           // 22/10/2009 jko
           CbAlmox.Text    := 'TODOS OS ALMOXARIFADOS';
           EdAlmox.Text    := '999';
           CbAlmox.visible := false;
           EdAlmox.visible := false;
           Label20.Caption := '';
       end
    else
       begin
           PnZerar.BringToFront;
           FormBalanco.Caption       := 'Zerar Estoque';
           GrpSeleciona.Caption      := 'Filtrar Produtos para zerar';
       end;
    PreencheCombo;
    EdtTipo.SetFocus;
    screen.cursor := crDefault;
end;

procedure TFormBalanco.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
    screen.cursor := crHourGlass;
    try
      SqlCdsTipo.Close;
      SqlCdsGrupo.Close;
      SQLCdsAlmox.Close;
    except on E:EdataBaseError do
      uteis.erro  (pchar('Erro ao fechar as tabelas !'+e.message));
    end;
    screen.cursor := crDefault;
end;

procedure TFormBalanco.Bit_ZerarClick(Sender: tObject);
var
   flg_ok_exc: boolean;
   dData:TDateTime;
begin
   {Verificar se o Cds esta vazio}
   if (not SqlCdsProduto.IsEmpty) then
      begin
         dData := Now;
         if ((Chk_Limpar_Kardex.State=cbChecked) and (FrmMenu.wPub_Estoque = 'Z')) then
            begin
               // Excluir kardex
              if MessageDlg('Confirma a opção Limpar Kardex?',
                   mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                 begin
                    flg_ok_exc := true;
                 end
              else
                 begin
                    flg_ok_exc := false;
                 end;
            end;

               {Bloqueia Cds}
               SqlCdsProduto.DisableControls;
               {Envia para Primeiro registro}
               SqlCdsProduto.First;
               {Zerar Barra}
               ProgressBar1.Position := 0;
               {Informa para a barra a quatodade de registro}
               ProgressBar1.Max := SqlCdsProduto.RecordCount;
               {rOTINA DE cORREÇÃO DE nULL}
               CdsAtualiza.close;
               CdsAtualiza.CommandText := 'UPDATE PRD_ENSA T1 SET T1.PES_HORA = ''00:00:00''';
               //               CdsAtualiza.CommandText := 'UPDATE PRD_ENSA T1 SET T1.PES_HORA = ''01:00:00'' WHERE T1.PES_HORA IS NULL';
               CdsAtualiza.Execute;
               {Percorrer Produtos}
               while (not SqlCdsProduto.Eof) do
                  begin
                        {Balanço}
                        if (FrmMenu.wPub_Estoque = 'B') then     // Balanco
                        begin
                           {lista entradas e saídas dos produtos por amx}
                           Cdsupdate1.Close;
                           Cdsupdate1.commandtext := 'SELECT '
                                                     +'     ((SELECT COALESCE(SUM(T2.PES_QTDE),0) FROM PRD_ENSA T2 WHERE COALESCE(T2.AMX_CODIGO,0) = COALESCE(T1.AMX_CODIGO,0) AND T2.PES_TIPO = ''E'' AND T2.PES_FLAG_CONTA = ''S'' AND T2.PRD_REFER = '+RetornaNull(SqlCdsProdutoPRD_REFER.AsString)+') '
                                                     +'     - '
                                                     +'     (SELECT COALESCE(SUM(T2.PES_QTDE),0) FROM PRD_ENSA T2 WHERE COALESCE(T2.AMX_CODIGO,0) = COALESCE(T1.AMX_CODIGO,0) AND T2.PES_TIPO = ''S'' AND T2.PES_FLAG_CONTA = ''S'' AND T2.PRD_REFER = '+RetornaNull(SqlCdsProdutoPRD_REFER.AsString)+')) AS SALDO,'
                                                     +'     T1.AMX_CODIGO '
                                                     +' FROM   '
                                                     +' PRD_ENSA T1 '
                                                     +' WHERE T1.PES_FLAG_CONTA = ''S'' '
                                                     +' GROUP BY '
                                                     +' T1.AMX_CODIGO';

                                                    // +'WHERE T1.PES_FLAG_CONTA = ''S'' AND T1.PRD_REFER = '+RetornaNull(sCodProduto)+''  {PES_TIPDOC jko  +'WHERE T1.PES_FLAG_CONTA = ''S'' AND T1.PRD_REFER = '+RetornaNull(sCodProduto)+''}
                                                    // AND T1.PES_TIPDOC =''AC''
                           Cdsupdate1.Open;
                           {refaz os saldos}
                           while (not Cdsupdate1.Eof) do
                              begin
                                 if (Cdsupdate1.FieldByName('SALDO').AsFloat <> 0) and (Cdsupdate1.FieldByName('SALDO').AsFloat > 0) then
//                                 if (Cdsupdate1.FieldByName('SALDO').AsFloat >= 0) then//and (Cdsupdate1.FieldByName('AMX_CODIGO').AsFloat > 0)) then// and (Cdsupdate1.RecordCount > 0) then
                                    begin
                                       {Lançar no kardex o movimento de balanço}
                                       AdicionaKardex(SqlCdsProdutoPRD_REFER.AsString,  {código do Produto}
                                                         'E',      {E = Entrada}
                                                         Cdsupdate1.FieldByName('SALDO').AsString,  {Quantidade}
                                                         '',   {Número do Documento}
                                                         'AC',     {Tipo do Documento}
                                                         DateToStr(dData),       {Data da Movimentação}
                                                         TimeToStr(dData),        {Hora da Movimentação}
                                                         'Automatico',      {Origem do Lançamento}
                                                         '0',       {Valor do Lançamento}
                                                         '0',        {Variavel}
                                                         '0',        {Variavel}
                                                         '0',        {Variavel}
                                                         '0',        {Variavel}
                                                         '0',        {Variavel}
                                                         '0',        {Variavel}
                                                         '0',        {Variavel}
                                                         '0',        {Variavel}
                                                         '0',         {Variavel}
                                                         'S',  {Flag de Acerto}
                                                         'S',   {Flag de Conta}
                                                         'B',  {E = Entrada Tipo do Kardex}
                                                         '0',   {Códgo do Pedido}
                                                         Cdsupdate1.FieldByName('AMX_CODIGO').AsString,
                                                         'BALANÇO AUTOMÁTICO',
                                                         dbInicio.Usuario.Codigo,
                                                         dbInicio.Usuario.nome);
                                    end;
                                 //lançamento no kardex de produtos que tem saldo negativo colocando como saida.
                                 if (Cdsupdate1.FieldByName('SALDO').AsFloat <> 0) and (Cdsupdate1.FieldByName('SALDO').AsFloat < 0) then
//                                 if (Cdsupdate1.FieldByName('SALDO').AsFloat <= 0) then //and (Cdsupdate1.FieldByName('AMX_CODIGO').AsFloat > 0)) then//and (Cdsupdate1.RecordCount > 0) then
                                    begin
                                       {Lançar no kardex o movimento de balanço}
                                       AdicionaKardex(SqlCdsProdutoPRD_REFER.AsString,  {código do Produto}
                                                         'S',      { S = Saída}
                                                         (Cdsupdate1.FieldByName('SALDO').Value * - 1),  {Quantidade}
                                                         '',   {Número do Documento}
                                                         'AC',     {Tipo do Documento}
                                                         DateToStr(dData),       {Data da Movimentação}
                                                         TimeToStr(dData),        {Hora da Movimentação}
                                                         'Automatico',      {Origem do Lançamento}
                                                         '0',       {Valor do Lançamento}
                                                         '0',        {Variavel}
                                                         '0',        {Variavel}
                                                         '0',        {Variavel}
                                                         '0',        {Variavel}
                                                         '0',        {Variavel}
                                                         '0',        {Variavel}
                                                         '0',        {Variavel}
                                                         '0',        {Variavel}
                                                         '0',         {Variavel}
                                                         'S',  {Flag de Acerto}
                                                         'S',   {Flag de Conta}
                                                         'B',  {E = Entrada Tipo do Kardex}
                                                         '0',   {Códgo do Pedido}
                                                         Cdsupdate1.FieldByName('AMX_CODIGO').AsString,
                                                         'BALANÇO AUTOMÁTICO',
                                                         dbInicio.Usuario.Codigo,
                                                         dbInicio.Usuario.nome);

                                    end;
                            (*      desativado por marcio em 23/02/11
                                 //lançamento no kardex produtos que nao tem movimentação.
                                 if (Cdsupdate1.FieldByName('SALDO').AsFloat = 0) then
//                                 if (Cdsupdate1.FieldByName('SALDO').AsFloat >= 0) then//and (Cdsupdate1.FieldByName('AMX_CODIGO').AsFloat > 0)) then// and (Cdsupdate1.RecordCount > 0) then
                                    begin
                                       {Lançar no kardex o movimento de balanço}
                                       AdicionaKardex(SqlCdsProdutoPRD_REFER.AsString,  {código do Produto}
                                                         'E',      {E = Entrada S = Saída}
                                                         Cdsupdate1.FieldByName('SALDO').AsString,  {Quantidade}
                                                         '',   {Número do Documento}
                                                         'AC',     {Tipo do Documento}
                                                         DateToStr(dData),       {Data da Movimentação}
                                                         TimeToStr(dData),        {Hora da Movimentação}
                                                         'Automatico',      {Origem do Lançamento}
                                                         '0',       {Valor do Lançamento}
                                                         '0',        {Variavel}
                                                         '0',        {Variavel}
                                                         '0',        {Variavel}
                                                         '0',        {Variavel}
                                                         '0',        {Variavel}
                                                         '0',        {Variavel}
                                                         '0',        {Variavel}
                                                         '0',        {Variavel}
                                                         '0',         {Variavel}
                                                         'S',  {Flag de Acerto}
                                                         'S',   {Flag de Conta}
                                                         'B',  {E = Entrada Tipo do Kardex}
                                                         '0',   {Códgo do Pedido}
                                                         Cdsupdate1.FieldByName('AMX_CODIGO').AsString,
                                                         'BALANÇO AUTOMÁTICO',
                                                         dbInicio.Usuario.Codigo,
                                                         dbInicio.Usuario.nome);

                                    end;   *)

                                 Cdsupdate1.Next;
                              end;
                           {Atualizar Flag = N que nao participa do estoque}
                           //
                           CdsAtualiza.close;
                           CdsAtualiza.CommandText := 'UPDATE PRD_ENSA SET PES_FLAG_CONTA = ''N'' WHERE (PES_DATA <= '+RetornaNull(DateToSql(dData))+
                                                      ' AND PES_HORA < '+RetornaNull(TimeToStr(dData))+
                                                      ' OR PES_DATA IS NULL) '+
                                                      ' AND PRD_REFER = '''+SqlCdsProdutoPRD_REFER.AsString+''''+
                                                      iif(EdAlmox.Text <> '999',' AND AMX_CODIGO = '''+EdAlmox.Text+'''','');
                           CdsAtualiza.Execute;
                          {acerto Saldo}
                           AcertaSaldoProduto(SqlCdsProdutoPRD_REFER.AsString);
//                           DataCadastros.Cdsupdate.Close;
                        end
                     else
                        begin
                           {Zerar}
                           if (FrmMenu.wPub_Estoque = 'Z') then     // Zerar Estoque
                              begin
                                 if (flg_ok_exc) then
                                    begin
                                       CdsAtualiza.close;
                                       CdsAtualiza.CommandText := 'DELETE FROM PRD_ENSA T1 WHERE T1.PRD_REFER = '''+SqlCdsProdutoPRD_REFER.AsString+''''++iif(EdAlmox.Text <> '999',' AND T1.AMX_CODIGO = '''+EdAlmox.Text+'''','');
                                       CdsAtualiza.Execute;
                                    end
                                 else
                                    begin
                                       {Atualizar Flag = N que nao participa do estoque}
                                       CdsAtualiza.close;
                                       CdsAtualiza.CommandText := 'UPDATE PRD_ENSA T1 SET T1.PES_FLAG_CONTA = ''N'' WHERE T1.PRD_REFER = '''+SqlCdsProdutoPRD_REFER.AsString+''''++iif(EdAlmox.Text <> '999',' AND T1.AMX_CODIGO = '''+EdAlmox.Text+'''','');
                                       CdsAtualiza.Execute;
                                    end;
                                if SqlCdsProdutoPRD_ESTFISICO_CC.AsCurrency <> 0 then
                                begin
                                  {Lançar no kardex o movimento de estoque zerado}
                                  {Lançar no kardex o movimento de balanço}
                                  AdicionaKardex(SqlCdsProdutoPRD_REFER.AsString,  {código do Produto}
                                                   'E',      {E = Entrada S = Saída}
                                                   '0',  {Quantidade}
                                                   '',   {Número do Documento}
                                                   'AC',     {Tipo do Documento}
                                                   DateToStr(Now),        {Data da Movimentação}
                                                   '',        {Hora da Movimentação}
                                                   'Automatico',      {Origem do Lançamento}
                                                   '0',       {Valor do Lançamento}
                                                   '0',        {Variavel}
                                                   '0',        {Variavel}
                                                   '0',        {Variavel}
                                                   '0',        {Variavel}
                                                   '0',        {Variavel}
                                                   '0',        {Variavel}
                                                   '0',        {Variavel}
                                                   '0',        {Variavel}
                                                   '0',         {Variavel}
                                                   'S',  {Flag de Acerto}
                                                   'S',   {Flag de Conta}
                                                   'Z',  {E = Entrada Tipo do Kardex}
                                                   '0',   {Códgo do Pedido}
                                                   iif(EdAlmox.Text <> '999',''+EdAlmox.Text+'',''),
                                                   'ZERADO O ESTOQUE AUTOMATICAMENTE',
                                                    dbInicio.Usuario.Codigo,
                                                    dbInicio.Usuario.nome);

                                  end;
                                 {Acerto Saldo}
                                 AcertaSaldoProduto(SqlCdsProdutoPRD_REFER.AsString);
                              end;
                        end;
                     ProgressBar1.Position := ProgressBar1.Position + 1;;
                     Application.ProcessMessages;
                     {Proximo}
                     SqlCdsProduto.Next;

                  end;
               {Terminou}
               ProgressBar1.Position := 0;
               uteis.aviso('Processo realizado');
               {Envia para Primeiro registro}
               SqlCdsProduto.First;
               {Habilita}
               SqlCdsProduto.EnableControls;

      end;
end;

procedure TFormBalanco.Bit_SairClick(Sender: tObject);
begin
    close;
end;

procedure TFormBalanco.PreencheCombo;
begin
    screen.cursor := crHourGlass;
    try
      SqlCdsTipo.Close;
      SqlCdsTipo.CommandText := SQLDEF('TABELAS','SELECT * FROM PRD_TIPO','','PTI_DESCRI','');
      SqlCdsTipo.Open;
      SqlCdsTipo.First;
      CbTipo.Items.Clear;
      CbTipo.Items.Add('TODOS OS TIPOS');
      while not SqlCdsTipo.Eof do
       begin
           CbTipo.Items.Add(SqlCdsTipoPTI_DESCRI.AsString);
           SqlCdsTipo.Next;
       end;
      EdtTipo.Text     := '999';
      CbTipo.ItemIndex := 0;
      //
      SqlCdsGrupo.Close;
      SqlCdsGrupo.CommandText := SQLDEF('TABELAS','SELECT * FROM PRD_GRUPO','','PGR_DESCRI','');
      SqlCdsGrupo.Open;
      SqlCdsGrupo.First;
      CbGrupo.Items.Clear;
      CbGrupo.Items.Add('TODOS OS GRUPOS');
      while not SqlCdsGrupo.Eof do
       begin
           CbGrupo.Items.Add(SqlCdsGrupoPGR_DESCRI.AsString);
           SqlCdsGrupo.Next;
       end;
      EdtGrupo.Text     := '999';
      CbGrupo.ItemIndex := 0;
      //
      EdAlmox.Text     := '999';
      CbAlmox.ItemIndex := 0;
      //
      SQLCdsAlmox.Close;
      SQLCdsAlmox.CommandText := SQLDEF('TABELAS','SELECT * FROM ALMOX0000','','AMX_DESCRI','');
      SQLCdsAlmox.Open;
      SQLCdsAlmox.First;
      CbAlmox.Items.Clear;
      CbAlmox.Items.Add('TODOS OS ALMOXARIFADOS');
      while not SQLCdsAlmox.Eof do
       begin
           CbAlmox.Items.Add(SQLCdsAlmoxAMX_DESCRI.AsString);
           SQLCdsAlmox.Next;
       end;
      EdAlmox.Text     := '999';
      CbAlmox.ItemIndex := 0;
    except on E:EDataBaseError do
      uteis.erro  (pchar('Erro ao preencher as combos !'+e.message));
    end;
    Screen.Cursor := crdefault;
end;

procedure TFormBalanco.EdtTipoEnter(Sender: tObject);
begin
    EdtTipo.SelectAll;
    EdtTipo.Color := $0080FFFF;
end;

procedure TFormBalanco.EdtGrupoEnter(Sender: tObject);
begin
    EdtGrupo.SelectAll;
    EdtGrupo.Color := $0080FFFF;
end;

procedure TFormBalanco.CbTipoEnter(Sender: tObject);
begin
    CbTipo.Color := $0080FFFF;
end;

procedure TFormBalanco.CbGrupoEnter(Sender: tObject);
begin
    CbGrupo.SelectAll;
    CbGrupo.Color := $0080FFFF;
end;

procedure TFormBalanco.EdtTipoExit(Sender: tObject);
begin
    EdtTipo.Color := clWindow;
    EdtTipo.Text  := StrZero(EdtTipo.Text,EdtTipo.MaxLength);
{
    if SqlCdsTipo.Locate('PTI_CODIGO',EdtTipo.Text,[]) = true then
       begin
           CbTipo.Text := SqlCdsTipoPTI_DESCRI.AsString;
       end
    else
       begin
           uteis.aviso('Tipo não encontrado !');
           if (EdtTipo.Text <> '999') then
              begin
                  CbTipo.SetFocus;
              end
           else
              begin
                  EdtTipo.Text := '999';
                  CbTipo.Text  := 'TODOS OS TIPOS';
              end;
       end;
}
end;

procedure TFormBalanco.CbTipoExit(Sender: tObject);
begin
    if (ActiveControl.Name = 'EdtTipo') or
       (ActiveControl.Name = 'Bit_Zerar') or
       (ActiveControl.Name = 'Bit_Sair') then
       exit;  
    CbTipo.Color := clWindow;
    if CbTipo.Text <> 'TODOS OS TIPOS' then
       begin
           if SqlCdsTipo.Locate('PTI_DESCRI',Cbtipo.Text,[])= true then
              begin
                  EdtTipo.Text := SqlCdsTipoPTI_CODIGO.AsString;
              end
           else
              begin
                  uteis.aviso('Tipo não encotnrado !');
                  CbTipo.Text      := 'TODOS OS TIPOS';
                  CbTipo.ItemIndex := 0;
                  CbTipo.SetFocus;
                  CbTipo.SelectAll;
              end;
       end;
{
    else
       begin
           if
       end;
}       
end;

procedure TFormBalanco.EdtGrupoExit(Sender: tObject);
begin
    EdtGrupo.Color := clWindow;
    EdtGrupo.Text  := StrZero(EdtGrupo.Text,EdtGrupo.MaxLength);
end;

procedure TFormBalanco.CbGrupoExit(Sender: tObject);
begin
    CbGrupo.Color := clWindow;
    if (ActiveControl.Name = 'EdtGrupo') or
       (ActiveControl.Name = 'Bit_Zerar') or
       (ActiveControl.Name = 'Bit_Sair') then
       exit;
    if CbGrupo.Text <> 'TODOS OS GRUPOS' then
       begin
           if SqlCdsGrupo.Locate('PGR_DESCRI',CbGrupo.Text,[])= true then
              begin
                  EdtGrupo.Text := SqlCdsGrupoPGR_CODIGO.AsString;
              end
           else
              begin
                  uteis.aviso('Grupo não encotnrado !');
                  CbGrupo.Text      := 'TODOS OS TIPOS';
                  CbGrupo.ItemIndex := 0;
                  CbGrupo.SetFocus;
                  CbGrupo.SelectAll;
              end;
       end;
end;

procedure TFormBalanco.CbGrupoClick(Sender: tObject);
begin
    if SqlCdsGrupo.Locate('PGR_DESCRI',CbGrupo.Text,[]) = true then
       begin
           EdtGrupo.Text := SqlCdsGrupoPGR_CODIGO.AsString;
       end
    else
       begin
           if (CbGrupo.Text = 'TODOS OS GRUPOS') then
              EdtGrupo.Text := '999';
       end;
end;

procedure TFormBalanco.CbTipoClick(Sender: tObject);
begin
    if SqlCdsTipo.Locate('PTI_DESCRI',CbTipo.Text,[]) = true then
       begin
           EdtTipo.Text := SqlCdsTipoPTI_CODIGO.AsString;
       end
    else
       begin
           if (CbTipo.Text = 'TODOS OS TIPOS') then
              EdtTipo.Text := '999';
       end;
end;

procedure TFormBalanco.BitPesquisarClick(Sender: tObject);
Var
  wSeleciona : String;
begin
    Screen.Cursor := crHourGlass;
    if (EdtTipo.Text = '999') and (CbTipo.Text = 'TODOS OS TIPOS') then
       wSeleciona := ''
    else
       wSeleciona := 'where P1.PTI_CODIGO = '''+EdtTipo.Text+'''';
    if (EdtGrupo.Text <> '999') and (CbGrupo.Text <> 'TODOS OS GRUPOS') then
       begin
           if EdtTipo.Text <> '999' then
              begin
                  wSeleciona := wSeleciona + 'and P1.PGR_CODIGO = '''+EdtGrupo.Text+'''';
              end
           else
              begin
                  wSeleciona := 'where P1.PGR_CODIGO = '''+EdtGrupo.Text+'''';
              end;
       end
    else
       begin
           if EdtTipo.Text = '999' then
              wSeleciona := '';
       end;
    try


      SqlCdsProduto.Close;
      SqlCdsProduto.CommandText := SQLDEF('PRODUTOS','SELECT  '+
                                          '     P1.PRD_REFER, '+
                                          '     P1.PRD_DESCRI,'+
                                          '     P1.PRD_RESERVA,'+
                                          '     P1.PRD_EMPENHO,'+
                                          '     COALESCE((select '+
                                          '         SUM(E1.PES_QTDE) '+
                                          '      from PRD_ENSA E1 '+
                                          '      WHERE E1.PES_TIPO  = ''E'' AND E1.PES_FLAG_CONTA = ''S'' AND E1.PES_TIPDOC = ''AC'' AND E1.PRD_REFER = P1.PRD_REFER '+ IIF(EdAlmox.Text <> '999','AND E1.AMX_CODIGO = '''+EdAlmox.Text+''' ','') +
                                          '     ),0) AS PRD_ESTOQUE, '+
                                          '     COALESCE((select '+
                                          '         SUM(E1.PES_QTDE) '+
                                          '      from PRD_ENSA E1 '+
                                          '      WHERE E1.PES_TIPO  = ''E'' AND E1.PES_FLAG_CONTA = ''S'' AND E1.PES_TIPDOC <> ''AC'' AND E1.PRD_REFER = P1.PRD_REFER '+ IIF(EdAlmox.Text <> '999','AND E1.AMX_CODIGO = '''+EdAlmox.Text+''' ','') +
                                          '     ),0) AS PRD_ENTRADA,  '+
                                          '     P1.PRD_PENDENTE, '+
                                          '     COALESCE((select  '+
                                          '         SUM(E1.PES_QTDE) '+
                                          '      from PRD_ENSA E1    '+
                                          '      WHERE E1.PES_TIPO  = ''S'' AND E1.PES_FLAG_CONTA = ''S'' AND E1.PRD_REFER = P1.PRD_REFER '+ IIF(EdAlmox.Text <> '999','AND E1.AMX_CODIGO = '''+EdAlmox.Text+''' ','') +
                                          '      ),0) AS PRD_SAIDA  '+
                                          ' from PRD0000 P1 ',
                                          wSeleciona,
                                          'P1.PRD_DESCRI','P1.');
      SqlCdsProduto.Open;


      if (SqlCdsProduto.IsEmpty = false) then
         BitPesquisar.Enabled := false
      else
         BitPesquisar.Enabled := True;
      DBGrid1.SetFocus;
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao localizar os produtos !'+e.message));
    end;
    Screen.Cursor := crDefault;
end;

procedure TFormBalanco.BitCancelarClick(Sender: tObject);
begin
    Screen.Cursor := crHourGlass;
    try
      SqlCdsProduto.Close;
      EdtTipo.Text         := '999';
      CbTipo.Text          := 'TODOS OS TIPOS';
      CbTipo.Enabled       := true;
      EdtGrupo.Text        := '999';
      CbGrupo.Text         := 'TODOS OS GRUPOS';
      CbGrupo.Enabled      := true;
      BitPesquisar.Enabled := true;
      EdtTipo.SetFocus; 
    except on E:EdataBaseError do
      uteis.erro  (pchar('Erro ao fechar o arquivo !'+e.message));
    end;
    Screen.Cursor := crDefault;
end;

procedure TFormBalanco.SqlCdsProdutoCalcFields(DataSet: TDataSet);
begin
//    SqlCdsProdutoPRD_ESTFISICO_CC.AsCurrency := (SqlCdsProdutoPRD_ESTOQUE.AsCurrency + SqlCdsProdutoPRD_ENTRADA.AsCurrency) - SqlCdsProdutoPRD_SAIDA.AsCurrency;
  SqlCdsProdutoPRD_ESTFISICO_CC.AsCurrency := ((SqlCdsProdutoPRD_ESTOQUE.AsCurrency + SqlCdsProdutoPRD_ENTRADA.AsCurrency)-(SqlCdsProdutoPRD_SAIDA.AsCurrency+SqlCdsProdutoPRD_RESERVA.AsCurrency+SqlCdsProdutoPRD_EMPENHO.AsCurrency));
end;

procedure TFormBalanco.EdtTipoClick(Sender: tObject);
begin
    EdtTipo.SelectAll;
end;

procedure TFormBalanco.EdtGrupoClick(Sender: tObject);
begin
    EdtGrupo.SelectAll;
end;

procedure TFormBalanco.EdtTipoKeyPress(Sender: tObject; var Key: Char);
begin
    if key = #13 then
       begin
           if SqlCdsTipo.Locate('PTI_CODIGO',EdtTipo.Text,[]) = true then
              begin
                  CbTipo.Text := SqlCdsTipoPTI_DESCRI.AsString;
              end
           else
              begin
                  if (EdtTipo.Text <> '999') then
                     begin
                         uteis.aviso('Tipo não encontrado !');
                         EdtTipo.Text := '999';
                         CbTipo.SetFocus;
                     end
                  else
                     begin
                         EdtTipo.Text := '999';
                         CbTipo.Text  := 'TODOS OS TIPOS';
                     end;
              end;
           key := #0;
       end;
end;

procedure TFormBalanco.EdtGrupoKeyPress(Sender: tObject; var Key: Char);
begin
    if key = #13 then
       begin
           if SqlCdsGrupo.Locate('PGR_CODIGO',EdtGrupo.Text,[]) = true then
              begin
                  CbGrupo.Text := SqlCdsGrupoPGR_DESCRI.AsString;
                  BitPesquisar.SetFocus;
              end
           else
              begin
                  if EdtGrupo.Text <> '999' then
                     begin
                         uteis.aviso('Informe o Grupo !');
                         EdtGrupo.Text := '999';
                         CbGrupo.SetFocus;
                     end
                  else
                     begin
                         EdtGrupo.Text := '999';
                         CbGrupo.Text  := 'TODOS OS GRUPOS';
                     end;
              end;
           key := #0;
       end;
end;

procedure TFormBalanco.FormCreate(Sender: tObject);
begin
    wSql1      := '';
    wSql2      := '';
    wSeleciona := '';
    wOrdem     := '';
end;

procedure TFormBalanco.DBGrid1DrawColumnCell(Sender: tObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
    if (not odd(SqlCdsProduto.RecNo)) then
       if not (GdSelected in State) then
          begin
              DBGrid1.Canvas.Brush.Color := $00FFEFDF;
              DBGrid1.Canvas.FillRect(rect);
              DBGrid1.DefaultDrawDataCell(Rect,column.Field,state);
          end;
end;

procedure TFormBalanco.Lancar_Kardex;
   var
      bLanca:Boolean;
begin
   try
     wSql1 := 'Insert into PRD_ENSA ('+
              'PRD_REFER,'+
              'PES_TIPO,'+
              'PES_QTDE,'+
              'PES_NUMDOC,'+
              'PES_TIPDOC,'+
              'PES_DATA,'+
              'EMP_CODIGO,'+
              'PES_ORIGEM,'+
              'PES_VALOR,'+
              'PES_VAR1,'+
              'PES_VAR2,'+
              'PES_VAR3,'+
              'PES_VAR4,'+
              'PES_VAR5,'+
              'PES_VAR6,'+
              'PES_VAR7,'+
              'PES_VAR8,'+
              'AMX_CODIGO,'+
              'FOR_CODIGO,'+
              'PES_IPI,'+
              'PES_FLAG_ACERTO,'+
              'PES_FLAG_CONTA,'+
              'PES_HORA,'+
              'PES_KARDEX_TIPO,'+
              'PES_KARDEX_OBS,'+
              'PED_CODIGO) ';
     if (EdAlmox.Text <> '999') then
        begin
           bLanca := False;
           if (SqlCdsProdutoPRD_REFER.AsString = '')or
              (EdAlmox.Text = '')  then
               Exit;
           try
             SqlConsulta.Close;
             SqlConsulta.CommandText := ('SELECT T1.PRD_REFER FROM PRD_ENSA T1 WHERE T1.AMX_CODIGO = '''+EdAlmox.Text+''' AND T1.PRD_REFER = '''+SqlCdsProdutoPRD_REFER.AsString+''' and T1.PES_TIPDOC <> ''AC''');
             SqlConsulta.Open;
             if (not SqlConsulta.IsEmpty) then
                bLanca := True;
           except on E:EDataBaseError do
           end;
           //
           if (not bLanca) then
              exit
           else
              wSql2 := 'Values ('''+
                                SqlCdsProdutoPRD_REFER.AsString+''','''+ //prd_refer
                                'E'+''','''+  //pes_tipo
                                '0'+''','+    //pes_qtde
                                'Null'+','''+ //pes_numdoc
                                'AC'+''','''+ //pes_tipdoc
                                DateToSql(now)+''','''+  //pes_data
                                dbInicio.Empresa.EMP_CODIGO+''','''+ //emp_codigo
                                'ZERAR ALMO'+''','''+ //pes_origem
                                '0'+''','''+ //pes_valor
                                '0'+''','''+ //pes_var1
                                '0'+''','''+ //pes_var2
                                '0'+''','''+ //pes_var3
                                '0'+''','''+ //pes_var4
                                '0'+''','''+ //pes_var5
                                '0'+''','''+ //pes_var6
                                '0'+''','''+ //pes_var7
                                '0'+''','''+ //pes_var8
                                PreenchezeroEsquerda(EdAlmox.Text,3)+''','''+ //amx_codigo
                                '0'+''','''+ //for_codigo
                                '0'+''','''+ //pes_ipi
                                'N'+''','''+ //pes_flag_acerto
                                'N'+''','''+ //pes_flag_conta
                                TimeToStr(Now)+''','''+ //pes_hora
                                'O'+''','+ //pes_kardex_tipo
                                'Null'+','''+  //pes_Kardex_obs
                                StrZero('0',7)+''') '; //ped_codigo
        end
     else
        begin
           wSql2 := 'Values ('''+
                             SqlCdsProdutoPRD_REFER.AsString+''','''+ //prd_refer
                             'E'+''','''+  //pes_tipo
                             '0'+''','+    //pes_qtde
                             'Null'+','''+ //pes_numdoc
                             'AC'+''','''+ //pes_tipdoc
                             DateToSql(now)+''','''+  //pes_data
                             dbInicio.Empresa.EMP_CODIGO+''','''+ //emp_codigo
                             'ZERAR ESTO'+''','''+ //pes_origem
                             '0'+''','''+ //pes_valor
                             '0'+''','''+ //pes_var1
                             '0'+''','''+ //pes_var2
                             '0'+''','''+ //pes_var3
                             '0'+''','''+ //pes_var4
                             '0'+''','''+ //pes_var5
                             '0'+''','''+ //pes_var6
                             '0'+''','''+ //pes_var7
                             '0'+''','+ //pes_var8
                             'Null'+','''+ //amx_codigo
                             '0'+''','''+ //for_codigo
                             '0'+''','''+ //pes_ipi
                             'S'+''','''+ //pes_flag_acerto
                             'S'+''','''+ //pes_flag_conta
                             TimeToStr(Now)+''','''+ //pes_hora
                             'O'+''','+ //pes_kardex_tipo
                             'Null'+','''+  //pes_Kardex_obs
                             StrZero('0',7)+''') '; //ped_codigo
        end;
     DataCadastros.sqlupdate.Close;
     DataCadastros.sqlupdate.sql.text :=wSql1+wSql2;
     DataCadastros.sqlupdate.Execsql;
   except
     on E:EDataBaseError do
        begin
           uteis.erro  (pchar('Erro ao Inserir Registro no Kardex !'+#13#10+
                      'Mensagem erro: '+e.message));
        end;
   end;
end;

procedure TFormBalanco.EdAlmoxClick(Sender: tObject);
begin
   EdAlmox.SelectAll;
end;

procedure TFormBalanco.EdAlmoxEnter(Sender: tObject);
begin
    EdAlmox.SelectAll;
    EdAlmox.Color := $0080FFFF;
end;

procedure TFormBalanco.EdAlmoxExit(Sender: tObject);
begin
   EdAlmox.Color := clWindow;
   EdAlmox.Text  := StrZero(EdAlmox.Text,EdAlmox.MaxLength);
end;

procedure TFormBalanco.EdAlmoxKeyPress(Sender: tObject; var Key: Char);
begin
    if key = #13 then
       begin
           if SQLCdsAlmox.Locate('AMX_CODIGO',EdAlmox.Text,[]) = true then
              begin
                  CbAlmox.Text := SQLCdsAlmoxAMX_DESCRI.AsString;
                  BitPesquisar.SetFocus;
              end
           else
              begin
                  if EdAlmox.Text <> '999' then
                     begin
                         uteis.aviso('Informe o Almoxarifado !');
                         EdAlmox.Text := '999';
                         CbAlmox.SetFocus;
                     end
                  else
                     begin
                         EdAlmox.Text := '999';
                         CbAlmox.Text  := 'TODOS OS ALMOXARIFADOS';
                     end;
              end;
           key := #0;
       end;
end;

procedure TFormBalanco.CbAlmoxClick(Sender: tObject);
begin
    if SQLCdsAlmox.Locate('AMX_DESCRI',CbAlmox.Text,[]) = true then
       begin
           EdAlmox.Text := SQLCdsAlmoxAMX_CODIGO.AsString;
       end
    else
       begin
           if (CbAlmox.Text = 'TODOS OS ALMOXARIFADOS') then
              EdAlmox.Text := '999';
       end;
end;

procedure TFormBalanco.CbAlmoxEnter(Sender: tObject);
begin
    CbAlmox.SelectAll;
    CbAlmox.Color := $0080FFFF;
end;

procedure TFormBalanco.CbAlmoxExit(Sender: tObject);
begin
    CbAlmox.Color := clWindow;
    if (ActiveControl.Name = 'EdAlmox') or
       (ActiveControl.Name = 'Bit_Zerar') or
       (ActiveControl.Name = 'Bit_Sair') then
       exit;
    if CbAlmox.Text <> 'TODOS OS ALMOXARIFADOS' then
       begin
           if SQLCdsAlmox.Locate('AMX_DESCRI',CbAlmox.Text,[])= true then
              begin
                  EdAlmox.Text := SQLCdsAlmoxAMX_CODIGO.AsString;
              end
           else
              begin
                  uteis.aviso('Almoxarifado não encontrado !');
                  CbAlmox.Text      := 'TODOS OS ALMOXARIFADOS';
                  CbAlmox.ItemIndex := 0;
                  CbAlmox.SetFocus;
                  CbAlmox.SelectAll;
              end;
       end;
end;

procedure TFormBalanco.AcertaSaldoProduto(sCodProduto: String);
   var
      rSaldo_Inicial,
      rSaldo_QtdeEntrada,
      rSaldo_QtdeSaida,
      rSaldo_Var1,
      rSaldo_Var2,
      rSaldo_Var3,
      rSaldo_Var4,
      rSaldo_Var5,
      rSaldo_Var6,
      rSaldo_Var7,
      rSaldo_Var8:Real;
begin
   {Inicializa Variaveis}
   rSaldo_Inicial     := 0; // JKO
   rSaldo_QtdeEntrada := 0;
   rSaldo_QtdeSaida   := 0;
   rSaldo_Var1        := 0;
   rSaldo_Var2        := 0;
   rSaldo_Var3        := 0;
   rSaldo_Var4        := 0;
   rSaldo_Var5        := 0;
   rSaldo_Var6        := 0;
   rSaldo_Var7        := 0;
   rSaldo_Var8        := 0;
   {lista entradas e saídas dos produtos}
   Cdsupdate1.Close;
   Cdsupdate1.commandtext := 'SELECT '
                            +'T1.PES_TIPO,'
                            +'SUM(T1.PES_QTDE) AS SALDO_QTDE, '
                            +'SUM(T1.PES_VAR1) AS SALDO_VAR1, '
                            +'SUM(T1.PES_VAR2) AS SALDO_VAR2, '
                            +'SUM(T1.PES_VAR3) AS SALDO_VAR3, '
                            +'SUM(T1.PES_VAR4) AS SALDO_VAR4, '
                            +'SUM(T1.PES_VAR5) AS SALDO_VAR5, '
                            +'SUM(T1.PES_VAR6) AS SALDO_VAR6, '
                            +'SUM(T1.PES_VAR7) AS SALDO_VAR7, '
                            +'SUM(T1.PES_VAR8) AS SALDO_VAR8  '
                            +'FROM '
                            +'PRD_ENSA T1 '
                            +'WHERE T1.PES_FLAG_CONTA = ''S'' AND T1.PRD_REFER = '+RetornaNull(sCodProduto)+''  {PES_TIPDOC jko  +'WHERE T1.PES_FLAG_CONTA = ''S'' AND T1.PRD_REFER = '+RetornaNull(sCodProduto)+''}

                            +'GROUP BY  '
                            +'T1.PES_TIPO ';

                            // +'WHERE T1.PES_FLAG_CONTA = ''S'' AND T1.PRD_REFER = '+RetornaNull(sCodProduto)+''  {PES_TIPDOC jko  +'WHERE T1.PES_FLAG_CONTA = ''S'' AND T1.PRD_REFER = '+RetornaNull(sCodProduto)+''}
                            // AND T1.PES_TIPDOC =''AC''
   Cdsupdate1.Open;
   {refaz os saldos}
   while (not Cdsupdate1.Eof) do
      begin
         if (Cdsupdate1.FieldByName('PES_TIPO').AsString = 'E') then
            begin
                rSaldo_QtdeEntrada := Cdsupdate1.FieldByName('SALDO_QTDE').AsFloat;
               //rSaldo_QtdeEntrada := 0;

                rSaldo_Var1        := Cdsupdate1.FieldByName('SALDO_VAR1').AsFloat;
                rSaldo_Var2        := Cdsupdate1.FieldByName('SALDO_VAR2').AsFloat;
                rSaldo_Var3        := Cdsupdate1.FieldByName('SALDO_VAR3').AsFloat;
                rSaldo_Var4        := Cdsupdate1.FieldByName('SALDO_VAR4').AsFloat;
                rSaldo_Var5        := Cdsupdate1.FieldByName('SALDO_VAR5').AsFloat;
                rSaldo_Var6        := Cdsupdate1.FieldByName('SALDO_VAR6').AsFloat;
                rSaldo_Var7        := Cdsupdate1.FieldByName('SALDO_VAR7').AsFloat;
                rSaldo_Var8        := Cdsupdate1.FieldByName('SALDO_VAR8').AsFloat;

            end
         else
         if (Cdsupdate1.FieldByName('PES_TIPO').AsString = 'S') then
            begin
               rSaldo_QtdeSaida := Cdsupdate1.FieldByName('SALDO_QTDE').AsFloat;
               //rSaldo_QtdeSaida :=  0;
               //
               rSaldo_Var1      := rSaldo_Var1 - Cdsupdate1.FieldByName('SALDO_VAR1').AsFloat;
               rSaldo_Var2      := rSaldo_Var2 - Cdsupdate1.FieldByName('SALDO_VAR2').AsFloat;
               rSaldo_Var3      := rSaldo_Var3 - Cdsupdate1.FieldByName('SALDO_VAR3').AsFloat;
               rSaldo_Var4      := rSaldo_Var4 - Cdsupdate1.FieldByName('SALDO_VAR4').AsFloat;
               rSaldo_Var5      := rSaldo_Var5 - Cdsupdate1.FieldByName('SALDO_VAR5').AsFloat;
               rSaldo_Var6      := rSaldo_Var6 - Cdsupdate1.FieldByName('SALDO_VAR6').AsFloat;
               rSaldo_Var7      := rSaldo_Var7 - Cdsupdate1.FieldByName('SALDO_VAR7').AsFloat;
               rSaldo_Var8      := rSaldo_Var8 - Cdsupdate1.FieldByName('SALDO_VAR8').AsFloat;
            end;


         Cdsupdate1.Next;
      end;


   {Atualiza Saldo do Produto}
   DataCadastros.SqlUpdate.Close;
   DataCadastros.SqlUpdate.sql.text :='UPDATE '
                                         +'PRD0000 T1 '
                                         +'SET '
                                         +'T1.PRD_VAR1 = '+ValorAmericano(FloatToStr(rSaldo_Var1))+','
                                         +'T1.PRD_VAR2 = '+ValorAmericano(FloatToStr(rSaldo_Var2))+','
                                         +'T1.PRD_VAR3 = '+ValorAmericano(FloatToStr(rSaldo_Var3))+','
                                         +'T1.PRD_VAR4 = '+ValorAmericano(FloatToStr(rSaldo_Var4))+','
                                         +'T1.PRD_VAR5 = '+ValorAmericano(FloatToStr(rSaldo_Var5))+','
                                         +'T1.PRD_VAR6 = '+ValorAmericano(FloatToStr(rSaldo_Var6))+','
                                         +'T1.PRD_VAR7 = '+ValorAmericano(FloatToStr(rSaldo_Var7))+','
                                         +'T1.PRD_VAR8 = '+ValorAmericano(FloatToStr(rSaldo_Var8))+','
                                         //+'T1.PRD_ESTOQUE = '+ValorAmericano(FloatToStr(0))+','  aqui nunca mexer no saldo inicial
                                         +'T1.PRD_ENTRADA = '+ValorAmericano(FloatToStr(rSaldo_QtdeEntrada))+', '
                                         +'T1.PRD_SAIDA = '+ValorAmericano(FloatToStr(rSaldo_QtdeSaida))+' '
                                         +' WHERE T1.PRD_REFER = '+RetornaNull(sCodProduto)+'';
   DataCadastros.SqlUpdate.Execsql;

      (* jko 23/10/2009
   {Atualiza Saldo do Produto}
   DataCadastros.SqlUpdate.Close;
   DataCadastros.SqlUpdate.sql.text :='UPDATE '
                                         +'PRD0000 T1 '
                                         +'SET '
                                         +'T1.PRD_VAR1 = '+ValorAmericano(FloatToStr(rSaldo_Var1))+','
                                         +'T1.PRD_VAR2 = '+ValorAmericano(FloatToStr(rSaldo_Var2))+','
                                         +'T1.PRD_VAR3 = '+ValorAmericano(FloatToStr(rSaldo_Var3))+','
                                         +'T1.PRD_VAR4 = '+ValorAmericano(FloatToStr(rSaldo_Var4))+','
                                         +'T1.PRD_VAR5 = '+ValorAmericano(FloatToStr(rSaldo_Var5))+','
                                         +'T1.PRD_VAR6 = '+ValorAmericano(FloatToStr(rSaldo_Var6))+','
                                         +'T1.PRD_VAR7 = '+ValorAmericano(FloatToStr(rSaldo_Var7))+','
                                         +'T1.PRD_VAR8    = '+ValorAmericano(FloatToStr(rSaldo_Var8))+','
                                         +'T1.PRD_ESTOQUE = '+ValorAmericano(FloatToStr(rSaldo_Inicial))+','
                                         +'T1.PRD_ENTRADA = '+ValorAmericano(FloatToStr(rSaldo_QtdeEntrada))+','
                                         +'T1.PRD_SAIDA   = '+ValorAmericano(FloatToStr(rSaldo_QtdeSaida))+' '
                                         +' WHERE T1.PRD_REFER = '+RetornaNull(sCodProduto)+'';
   DataCadastros.SqlUpdate.Execsql;
    *)

end;

procedure TFormBalanco.AdicionaKardex(sReferencia, sTipoES, sQuantidade,
  sNumeroDoc, sTipoDoc, sData, sHora, sOrigem, sValor, sVar1, sVar2, sVar3,
  sVar4, sVar5, sVar6, sVar7, sVar8, sIpi, sFlagAcerto, sFlagConta,
  sKardexTipo, sCodPedido, sAlmox, sObs,sUsuarioCodigo ,sUsuarioLogin: String);
begin
   wSql1 := 'INSERT INTO PRD_ENSA (PRD_REFER,'+
                                   'PES_TIPO,'+
                                   'PES_QTDE,'+
                                   'PES_NUMDOC,'+
                                   'PES_TIPDOC,'+
                                   'PES_DATA,'+
                                   'EMP_CODIGO,'+
                                   'PES_ORIGEM,'+
                                   'PES_VALOR,'+
                                   'PES_VAR1,'+
                                   'PES_VAR2,'+
                                   'PES_VAR3,'+
                                   'PES_VAR4,'+
                                   'PES_VAR5,'+
                                   'PES_VAR6,'+
                                   'PES_VAR7,'+
                                   'PES_VAR8,'+
                                   'PES_IPI,'+
                                   'PES_FLAG_ACERTO,'+
                                   'PES_FLAG_CONTA,'+
                                   'PES_HORA,'+
                                   'PES_KARDEX_TIPO,'+
                                   'PED_CODIGO,'+
                                   'AMX_CODIGO,'+
                                   'PES_KARDEX_OBS,'+
                                   'USU_CODIGO,'+
                                   'USU_LOGIN)';

   wSql2 := 'Values ('+RetornaNull(sReferencia)+','+
                     RetornaNull(sTipoES)+','+
                     RetornaNull(ValorAmericano(sQuantidade))+','+
                     RetornaNull(sNumeroDoc)+','+
                     RetornaNull(sTipoDoc)+','+
                     RetornaNull(DateToSql(strtodate(sData)))+','+
                     RetornaNull(dbInicio.Empresa.EMP_CODIGO)+','+
                     RetornaNull(sOrigem)+','+
                     RetornaNull(ValorAmericano(sValor))+','+
                     RetornaNull(ValorAmericano(sVar1))+','+
                     RetornaNull(ValorAmericano(sVar2))+','+
                     RetornaNull(ValorAmericano(sVar3))+','+
                     RetornaNull(ValorAmericano(sVar4))+','+
                     RetornaNull(ValorAmericano(sVar5))+','+
                     RetornaNull(ValorAmericano(sVar6))+','+
                     RetornaNull(ValorAmericano(sVar7))+','+
                     RetornaNull(ValorAmericano(sVar8))+','+
                     RetornaNull(ValorAmericano(sIpi))+','+
                     RetornaNull(sFlagAcerto)+','+
                     RetornaNull(sFlagConta)+','+
                     RetornaNull(sHora)+','+
                     RetornaNull(sKardexTipo)+','+
                     RetornaNull(sCodPedido)+','+
                     RetornaNull(sAlmox)+','+
                     RetornaNull(copy(sObs,1,60))+','+
                     RetornaNull(ValorAmericano(sUsuarioCodigo))+','+
                     RetornaNull(sUsuarioLogin)+')';

                    //   RetornaNull(copy(sObs,1,40))+')';
   //
   DataCadastros.SqlUpdate.Close;
   DataCadastros.SqlUpdate.sql.text :=wSql1 + wSql2;

   DataCadastros.SqlUpdate.Execsql;
end;

procedure TFormBalanco.Lancar_Kardex_AMX;
begin

end;

END.
