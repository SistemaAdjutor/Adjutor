unit Ped0002;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, Provider, SqlExpr,SqlClientDataSet, DB, DBClient,
  DBLocal, DBLocalS, StdCtrls, Buttons,RwFunc, Mask,  rxToolEdit,  rxCurrEdit,
  DBCtrls, Data.DBXFirebird, SimpleDS;

type
  TFrmKardexPedido = class(TForm)
    DsKardexE: TDataSource;
    GroupBox2: TGroupBox;
    DbGrdManutE: TDBGrid;
    GroupBox3: TGroupBox;
    DbGrdManutS: TDBGrid;
    SqlCdsKardexE: TSQLClientDataSet;
    SqlCdsKardexEPRD_REFER: TStringField;
    SqlCdsKardexEPES_TIPO: TStringField;
    SqlCdsKardexEPES_QTDE: TFMTBCdField;
    SqlCdsKardexEPES_NUMDOC: TStringField;
    SqlCdsKardexEPES_TIPDOC: TStringField;
    SqlCdsKardexEPES_DATA: TSQLTimeStampField;
    SqlCdsKardexEEMP_CODIGO: TStringField;
    SqlCdsKardexEPES_ORIGEM: TStringField;
    SqlCdsKardexEPES_VALOR: TFMTBCdField;
    SqlCdsKardexEPES_VAR1: TFMTBCdField;
    SqlCdsKardexEPES_VAR2: TFMTBCdField;
    SqlCdsKardexEPES_VAR3: TFMTBCdField;
    SqlCdsKardexEPES_VAR4: TFMTBCdField;
    SqlCdsKardexEPES_VAR5: TFMTBCdField;
    SqlCdsKardexEPES_VAR6: TFMTBCdField;
    SqlCdsKardexEPES_VAR7: TFMTBCdField;
    SqlCdsKardexEPES_VAR8: TFMTBCdField;
    SqlCdsKardexEPES_REGISTRO: TIntegerField;
    SqlCdsKardexEMOV_CC: TStringField;
    SqlCdsKardexEAMX_CODIGO: TStringField;
    SqlCdsKardexEFOR_CODIGO: TStringField;
    SqlCdsKardexEAMX_DESCRI: TStringField;
    SqlCdsKardexEPES_IPI: TFMTBCdField;
    SqlCdsKardexS: TSQLClientDataSet;
    DsKardexS: TDataSource;
    SqlCdsKardexSPES_REGISTRO: TIntegerField;
    SqlCdsKardexSPRD_REFER: TStringField;
    SqlCdsKardexSPES_TIPO: TStringField;
    SqlCdsKardexSPES_QTDE: TFMTBCdField;
    SqlCdsKardexSPES_NUMDOC: TStringField;
    SqlCdsKardexSPES_TIPDOC: TStringField;
    SqlCdsKardexSPES_DATA: TSQLTimeStampField;
    SqlCdsKardexSEMP_CODIGO: TStringField;
    SqlCdsKardexSPES_ORIGEM: TStringField;
    SqlCdsKardexSPES_VALOR: TFMTBCdField;
    SqlCdsKardexSPES_VAR1: TFMTBCdField;
    SqlCdsKardexSPES_VAR2: TFMTBCdField;
    SqlCdsKardexSPES_VAR3: TFMTBCdField;
    SqlCdsKardexSPES_VAR4: TFMTBCdField;
    SqlCdsKardexSPES_VAR5: TFMTBCdField;
    SqlCdsKardexSPES_VAR6: TFMTBCdField;
    SqlCdsKardexSPES_VAR7: TFMTBCdField;
    SqlCdsKardexSPES_VAR8: TFMTBCdField;
    SqlCdsKardexSAMX_CODIGO: TStringField;
    SqlCdsKardexSFOR_CODIGO: TStringField;
    SqlCdsKardexSPES_IPI: TFMTBCdField;
    SqlCdsKardexSAMX_DESCRI: TStringField;
    SqlCdsKardexSMOV_CC: TStringField;
    SqlCdsKardexSPES_VLCOMIPI_CC: TCurrencyField;
    SqlCdsKardexEPES_VLCOMIPI_CC: TCurrencyField;
    Panel1: TPanel;
    Label1: TLabel;
    EdtRefer: TEdit;
    EdtDescricao: TEdit;
    GroupMultiAlmox: TGroupBox;
    Panel2: TPanel;
    BitSair: TBitBtn;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    cEntrada: TCurrencyEdit;
    cSaida: TCurrencyEdit;
    cSaldo: TCurrencyEdit;
    DsRefer: TDataSource;
    SqlCdsRefer: TSQLClientDataSet;
    SqlCdsReferPTI_CODIGO: TStringField;
    SqlCdsReferPRD_REFER: TStringField;
    SqlCdsReferPRD_DESCRI: TStringField;
    SqlCdsReferPRD_ESTOQUE: TFMTBCdField;
    SqlCdsReferPRD_ENTRADA: TFMTBCdField;
    SqlCdsReferPRD_SAIDA: TFMTBCdField;
    SqlCdsReferPRD_PENDENTE: TFMTBCdField;
    SqlCdsReferPRD_PCUSTO: TFMTBCdField;
    SqlCdsReferPRD_PVENDA: TFMTBCdField;
    SqlCdsReferPRD_VAR1: TFMTBCdField;
    SqlCdsReferPRD_VAR2: TFMTBCdField;
    SqlCdsReferPRD_VAR3: TFMTBCdField;
    SqlCdsReferPRD_VAR4: TFMTBCdField;
    SqlCdsReferPRD_VAR5: TFMTBCdField;
    SqlCdsReferPRD_VAR6: TFMTBCdField;
    SqlCdsReferPRD_VAR7: TFMTBCdField;
    SqlCdsReferPRD_VAR8: TFMTBCdField;
    SqlCdsReferPRD_DCVAR1: TStringField;
    SqlCdsReferPRD_DCVAR2: TStringField;
    SqlCdsReferPRD_DCVAR3: TStringField;
    SqlCdsReferPRD_DCVAR4: TStringField;
    SqlCdsReferPRD_DCVAR5: TStringField;
    SqlCdsReferPRD_DCVAR6: TStringField;
    SqlCdsReferPRD_DCVAR7: TStringField;
    SqlCdsReferPRD_DCVAR8: TStringField;
    SqlCdsReferPRD_FISICO_CC: TCurrencyField;
    SqlCdsReferPRD_ANTECIPADO_CC: TCurrencyField;
    SqlCdsReferPRD_RESERVA: TFMTBCdField;
    SqlCdsReferPRD_EMPENHO: TFMTBCdField;
    GroupBox4: TGroupBox;
    Panel3: TPanel;
    DBEdit56: TDBEdit;
    Panel4: TPanel;
    DBEdit14: TDBEdit;
    Panel9: TPanel;
    DBEdit18: TDBEdit;
    Panel11: TPanel;
    DBEdit19: TDBEdit;
    Panel12: TPanel;
    DBEdit1: TDBEdit;
    Panel10: TPanel;
    DBEdit17: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label5: TLabel;
    SqlCdsKardexEPES_KARDEX_OBS: TStringField;
    SqlCdsKardexSPES_KARDEX_OBS: TStringField;
    procedure BitSairClick(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure SqlCdsKardexECalcFields(DataSet: TDataSet);
    procedure DbGrdManutEDblClick(Sender: tObject);
    procedure DbGrdManutEKeyPress(Sender: tObject; var Key: Char);
    procedure SqlCdsKardexSCalcFields(DataSet: TDataSet);
    procedure DbGrdManutSDblClick(Sender: tObject);
    procedure DbGrdManutSKeyPress(Sender: tObject; var Key: Char);
    procedure SqlCdsReferCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    procedure MostraMovimento;
  public
    { Public declarations }
  end;

var
  FrmKardexPedido: TFrmKardexPedido;

implementation

uses Uteis, DataCad, Men0001;


{$R *.dfm}

procedure TFrmKardexPedido.BitSairClick(Sender: tObject);
begin
    Close;
end;

procedure TFrmKardexPedido.FormShow(Sender: tObject);
begin
    Screen.Cursor := crHourGlass;
    try
      Left := 197;
      Top  := 105;
      if (dbInicio.Empresa.wMultiAlmox = 'S') then
         GroupMultiAlmox.Visible := True
      else
          GroupMultiAlmox.Visible := False;

      MostraMovimento;
      DbGrdManutE.SetFocus;
    except on e:EdataBaseError do
       uteis.erro  (pchar('Erro ao abrir a tabela ! '+e.message));
    end;
    Screen.Cursor := crDefault;
end;

procedure TFrmKardexPedido.MostraMovimento;
Var
  wSeleciona : String;
begin
    try
      cEntrada.Value := 0;
      cSaida.Value   := 0;
      cSaldo.Value   := 0;
      // entradas
      {EdtRefer    .Text := FormPedidos.CbRef.Text;
      EdtDescricao.Text := FormPedidos.EdDescricao.Text;}
      SqlCdsRefer.Close;
      SqlCdsRefer.Params.ParamByName('PRD_REFER').Value := EdtRefer.Text;
      SqlCdsRefer.Open;
      // ver se é mukti-almoxarifado
      if (dbInicio.Empresa.wMultiAlmox = 'S') then
          wSeleciona := 'WHERE E1.PES_TIPO = ''E'' AND E1.PRD_REFER = '''+FormPedidos.CbRef.Text+''' AND E1.AMX_CODIGO = '''+FormPedidos.DBeAlmox.Text+''''
      else
          wSeleciona := 'WHERE E1.PES_TIPO = ''E'' AND E1.PRD_REFER = '''+FormPedidos.CbRef.Text+''' AND E1.PES_QTDE > 0 ';


      SqlCdsKardexE.Close;
      SqlCdsKardexE.CommandText := SQLDEF('PRODUTOS','SELECT E1.*,A1.AMX_DESCRI FROM PRD_ENSA E1 LEFT JOIN ALMOX0000 A1 ON (A1.AMX_CODIGO = E1.AMX_CODIGO) ',wSeleciona,'E1.PES_DATA DESC,E1.PRD_REFER','E1.');
      SqlCdsKardexE.Open;
      if (not SqlCdsKardexE.IsEmpty) then
         begin
            SqlCdsKardexE.DisableControls;
            SqlCdsKardexE.First;
            while (not SqlCdsKardexE.Eof) do
             begin
                cEntrada.Value := (cEntrada.Value + SqlCdsKardexEPES_QTDE.AsCurrency);
                SqlCdsKardexE.Next;
             end;
            //
            SqlCdsKardexE.First;
            SqlCdsKardexE.EnableControls;
         end;
      //  saidas
      // ver se é mukti-almoxarifado
      if (dbInicio.Empresa.wMultiAlmox = 'S') then
         wSeleciona := 'WHERE E1.PES_TIPO = ''S'' AND E1.PRD_REFER = '''+FormPedidos.CbRef.Text+''' AND E1.AMX_CODIGO = '''+FormPedidos.DBeAlmox.Text+''''
      else
         wSeleciona := 'WHERE E1.PES_TIPO = ''S'' AND E1.PRD_REFER = '''+FormPedidos.CbRef.Text+''' AND E1.PES_QTDE > 0 ';


      SqlCdsKardexS.Close;
      SqlCdsKardexS.CommandText := SQLDEF('PRODUTOS','SELECT E1.*,A1.AMX_DESCRI FROM PRD_ENSA E1 LEFT JOIN ALMOX0000 A1 ON (A1.AMX_CODIGO = E1.AMX_CODIGO) ',wSeleciona,'E1.PES_DATA DESC,E1.PRD_REFER','E1.');
      SqlCdsKardexS.Open;
      if (not SqlCdsKardexS.IsEmpty) then
         begin
            SqlCdsKardexS.DisableControls;
            SqlCdsKardexS.First;
            while (not SqlCdsKardexS.Eof) do
             begin
                cSaida.Value := (cSaida.Value + SqlCdsKardexSPES_QTDE.AsCurrency);
                SqlCdsKardexS.Next;
             end;
            //
            SqlCdsKardexS.First;
            SqlCdsKardexS.EnableControls;
         end;
      //
      cSaldo.Value := (cEntrada.Value - cSaida.Value);
      //
    except on E:EdataBaseError do
       uteis.erro  (pchar('Erro ao Abrir a Tabela ! '+e.message));
    end;
end;

procedure TFrmKardexPedido.SqlCdsKardexECalcFields(DataSet: TDataSet);
begin
    if SqlCdsKardexEPES_TIPO.AsString = 'E' then
       SqlCdsKardexEMOV_CC.AsString := 'Entrada'
    else
       SqlCdsKardexEMOV_CC.AsString := 'Saída';
    if (SqlCdsKardexEPES_VALOR.AsCurrency>0) then
       SqlCdsKardexEPES_VLCOMIPI_CC.AsCurrency := SqlCdsKardexEPES_VALOR.AsCurrency+((SqlCdsKardexEPES_VALOR.AsCurrency*SqlCdsKardexEPES_IPI.AsCurrency)/100);
end;

procedure TFrmKardexPedido.DbGrdManutEDblClick(Sender: tObject);
begin
    FormPedidos.CurrPrecoBruto.Value := SqlCdsKardexEPES_VLCOMIPI_CC.AsCurrency;
    BitSair.Click;
end;

procedure TFrmKardexPedido.DbGrdManutEKeyPress(Sender: tObject;
  var Key: Char);
begin
    if (key=#13) then
       begin
           FormPedidos.CurrPrecoBruto.Value := SqlCdsKardexEPES_VLCOMIPI_CC.AsCurrency;
           BitSair.Click;
           Key :=#0;
       end;
end;

procedure TFrmKardexPedido.SqlCdsKardexSCalcFields(DataSet: TDataSet);
begin
    if SqlCdsKardexSPES_TIPO.AsString = 'E' then
       SqlCdsKardexSMOV_CC.AsString := 'Entrada'
    else
       SqlCdsKardexSMOV_CC.AsString := 'Saída';
    if (SqlCdsKardexSPES_VALOR.AsCurrency>0) then
       SqlCdsKardexSPES_VLCOMIPI_CC.AsCurrency := SqlCdsKardexSPES_VALOR.AsCurrency+((SqlCdsKardexSPES_VALOR.AsCurrency*SqlCdsKardexSPES_IPI.AsCurrency)/100);
end;

procedure TFrmKardexPedido.DbGrdManutSDblClick(Sender: tObject);
begin
    FormPedidos.CurrPrecoBruto.Value := SqlCdsKardexSPES_VLCOMIPI_CC.AsCurrency;
    BitSair.Click;
end;

procedure TFrmKardexPedido.DbGrdManutSKeyPress(Sender: tObject;
  var Key: Char);
begin
    if (key=#13) then
       begin
           FormPedidos.CurrPrecoBruto.Value := SqlCdsKardexSPES_VLCOMIPI_CC.AsCurrency;
           BitSair.Click;
           Key :=#0;
       end;
end;

procedure TFrmKardexPedido.SqlCdsReferCalcFields(DataSet: TDataSet);
begin
  SqlCdsReferPRD_FISICO_CC.AsCurrency  := ((SqlCdsReferPRD_ESTOQUE.AsCurrency + SqlCdsReferPRD_ENTRADA.AsCurrency) - (SqlCdsReferPRD_SAIDA.AsCurrency + SqlCdsReferPRD_RESERVA.AsCurrency + SqlCdsReferPRD_EMPENHO.Ascurrency));
end;

end.
