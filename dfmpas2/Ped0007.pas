{************************************************************************
 Programa...: Ped0007  - Nome formulario = FormPedFAturas
 Objetivo...: Mostrar faturas do cliente durante inclusao do pedido
 Analista...: Márcio Neu Pacheco
 Programador: Marcio Neu Pacheco

 Comentários:

 Criação..........: Set/20001
 Ultima Alteração.:
 Alterado por.....: Márcio

************************************************************************}
unit Ped0007;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, StdCtrls, Buttons, Provider, SqlExpr,SqlClientDataSet, DB, DBClient,
  DBLocal, DBLocalS;

type
  TFormPedFatura = class(TForm)
    BitSairFat: TBitBtn;
    DBGrid1: TDBGrid;
    SqlCdsDupFat: TSQLClientDataSet;
    SqlCdsDupFatFAT_CODIGO: TStringField;
    SqlCdsDupFatFPC_NUMER: TStringField;
    SqlCdsDupFatFPC_VLPARC: TFMTBCdField;
    SqlCdsDupFatFPC_VENCTO: TSQLTimeStampField;
    SqlCdsDupFatFPC_VLPAGO: TFMTBCdField;
    SqlCdsDupFatFPC_PAGTO: TSQLTimeStampField;
    SqlCdsDupFatFPC_STATUS: TStringField;
    SqlCdsDupFatBAN_APELIDO: TStringField;
    DsDupFat: TDataSource;
    procedure SpeedButton1Click(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure BitSairFatClick(Sender: tObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPedFatura: TFormPedFatura;

implementation

uses Ped0001;

{$R *.DFM}

procedure TFormPedFatura.SpeedButton1Click(Sender: tObject);
begin
close;
end;

procedure TFormPedFatura.FormShow(Sender: tObject);
begin
LEFT := 50;
TOP := 160;
end;

procedure TFormPedFatura.BitSairFatClick(Sender: tObject);
begin
close;
end;

end.
