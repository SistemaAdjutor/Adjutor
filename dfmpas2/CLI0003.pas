{**********************************************************
 Programa...: Cli0003  - Nome formulario = FormClientFats
 Objetivo...: Browse de faturas e parcelamento p/ cliente
 Analista...: Márcio Neu Pacheco
 Programador: Jackson Neu Pacheco e Marcio Neu Pacheco

 Comentários:

 Criação..........: Jun/1999
 Ultima Alteração.: Outubro/2000
 Alteradopor......: Márcio

*********************************************************}

unit CLI0003;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, StdCtrls, Mask, DBCtrls, ExtCtrls, Db, DBTables, Buttons,
  RwFunc;

type
  TFormClientFats = class(TForm)
    DBGrid1: TDBGrid;
    Label4: TLabel;
    Label1: TLabel;
    TQReceber: TQuery;
    DsQReceber: TDataSource;
    TQReceParc: TQuery;
    TQCliente: TQuery;
    TQReceberFAT_CODIGO: TStringField;
    TQReceberCLI_CODIGO: TStringField;
    TQReceberPED_CODIGO: TStringField;
    TQReceberFAT_VLFAT: TFloatField;
    TQReceberFAT_QTDITEM: TFloatField;
    TQReceberFAT_DTEMIS: TDateTimeField;
    TQReceberCli_Razao_Lk: TStringField;
    DBGrid2: TDBGrid;
    DsQReceParc: TDataSource;
    Label2: TLabel;
    DbGridItens: TDBGrid;
    TQRecItem: TQuery;
    DsQRecItem: TDataSource;
    TQRecItemFAT_CODIGO: TStringField;
    TQRecItemPRD_CODIGO: TStringField;
    TQRecItemFat_it02PRD_REFER: TStringField;
    TQRecItemFIT_QTDE: TFloatField;
    TQRecItemFIT_IPIALIQ: TFloatField;
    TQRecItemFIT_PRECO: TFloatField;
    TQRecItemEMP_CODIGO: TStringField;
    TQRecItemPRD_DESCRI: TStringField;
    TQRecItemPrd0000PRD_REFER: TStringField;
    TQRecItemFIT_TOTAL_CC: TFloatField;
    TQReceParcFPC_NUMER: TStringField;
    TQReceParcFAT_CODIGO: TStringField;
    TQReceParcFPC_VENCTO: TDateTimeField;
    TQReceParcFPC_PAGTO: TDateTimeField;
    TQReceParcFAT_PC01BAN_CODIGO: TStringField;
    TQReceParcFPC_VLPAGO: TFloatField;
    TQReceParcFPC_VLPARC: TFloatField;
    TQReceParcFPC_STATUS: TStringField;
    TQReceParcBAN0000BAN_CODIGO: TStringField;
    SpeedButton1: TSpeedButton;
    TQReceParcBAN_APELIDO: TStringField;
    TQReceberFAT_CANCELADA: TBooleanField;
    procedure FormShow(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure DBGrid2DblClick(Sender: tObject);
    procedure TQRecItemCalcFields(DataSet: TDataSet);
    procedure SpeedButton1Click(Sender: tObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormClientFats: TFormClientFats;

implementation

{$R *.DFM}


uses Database;





procedure TFormClientFats.FormShow(Sender: tObject);
var
wcli_codigo : string;
begin
  Left := 70;
  Top := 6;
  wcli_codigo := Datamodulo.TbClienteCLI_CODIGO.Value;
  // fatura do contas a receber
  try
    With TQReceber do
    begin
    close;
    DatabaseName := PreOpen('Receber');
    Sql.clear;
    Sql.Add('SELECT FAT_CODIGO, CLI_CODIGO, PED_CODIGO, FAT_VLFAT, FAT_QTDITEM, FAT_DTEMIS,FAT_CANCELADA');
    Sql.Add('FROM FAT0000');
    Sql.Add('WHERE FAT_CANCELADA=False and CLI_CODIGO='''+wcli_codigo+'''');
    Sql.Add('ORDER BY FAT_DTEMIS');
    Open;
    end;
  except
    uteis.erro  ('Não foi possível abrir a tabela "TQReceber"!');
  end;
  TQReceber.Last;
  // Tquery master/detalhe (relacionamento)
  TQReceParc.DataSource:= DsQReceber;
  // parcelas da fatura  c/ LEFT OUTER JOIN
  try
    With TQReceParc do
    begin
    close;
    DatabaseName := PreOpen('Receber');
    Sql.clear;
    Sql.Add('SELECT FAT_PC01.FPC_NUMER, FAT_PC01.FAT_CODIGO, FAT_PC01.FPC_VENCTO, FAT_PC01.FPC_PAGTO, FAT_PC01.BAN_CODIGO, FAT_PC01.FPC_VLPAGO, FAT_PC01.FPC_VLPARC, FAT_PC01.FPC_STATUS, Ban0000.BAN_CODIGO, Ban0000.BAN_APELIDO');
    Sql.Add('FROM FAT_PC01 LEFT OUTER JOIN BAN0000 ON FAT_PC01.BAN_CODIGO=BAN0000.BAN_CODIGO');
    Sql.Add('WHERE FAT_PC01.FAT_CODIGO = :FAT_CODIGO');
    Open;
    end;
  except
    uteis.erro  ('Não foi possível abrir a tabela "TQReceParc"!');
  end;
  // Tquery master/detalhe (relacionamento)
  TQRecItem.DataSource := DsQReceber;
  // Itens vendidos na fatura
  try
    With TQRecItem do
    begin
    close;
    DatabaseName := PreOpen('Receber');
    Sql.clear;
    SQL.ADD('SELECT Fat_it02.FAT_CODIGO, Fat_it02.PRD_CODIGO, Fat_it02.PRD_REFER, Fat_it02.FIT_QTDE, Fat_it02.FIT_IPIALIQ, Fat_it02.FIT_PRECO, Fat_it02.EMP_CODIGO, Prd0000.PRD_DESCRI, Prd0000.PRD_REFER');
    Sql.Add('FROM FAT_IT02 , PRD0000');
    SQL.ADD('WHERE FAT_IT02.FAT_CODIGO = :FAT_CODIGO AND Fat_it02.PRD_REFER=Prd0000.PRD_REFER');
    Open;
    end;
  except
    uteis.erro  ('Não foi possível abrir a tabela "TQRecItem"!');
  end;
  //
end;

procedure TFormClientFats.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
  try
    TQReceber.close;
    TQReceParc.close;
    TQRecItem.Close;
  except
    uteis.erro  ('Não foi possível fechar a tabelas !');
  end;
end;

procedure TFormClientFats.DBGrid2DblClick(Sender: tObject);
begin
  close;
end;

procedure TFormClientFats.TQRecItemCalcFields(DataSet: TDataSet);
begin
  TQRecItemFIT_TOTAL_CC.Value:= TQRecItemFIT_QTDE.Value*TQRecItemFIT_PRECO.Value;
end;

procedure TFormClientFats.SpeedButton1Click(Sender: tObject);
begin
  close;
end;

end.
