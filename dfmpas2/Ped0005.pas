{***************************************************************
| Programa...: Ped0005- Nome formulario = FormPedDetalhes
| Objetivo...: Detalhes na consulta do pedido
| Analista...: Marcio Neu Pacheco
| Programador: Márcio
|
| Comentários: chamado atraves de duplo clique na consulta
|
| Criação..........: Nov/2000
| Ultima Alteração.: Jun/2001
| Alterado por.....: Márcio
|
****************************************************************}
unit Ped0005;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons,  rxToolEdit, RXDBCtrl, Provider,
  SqlExpr,SqlClientDataSet, DB, DBClient, DBLocal, DBLocalS, Data.DBXFirebird,
  SimpleDS;

type
  TFormPedDetalhes = class(TForm)
    DBePed_codigo: TDBEdit;
    Label11: TLabel;
    DBDPed_Dtlim_Atd: TDBDateEdit;
    Label5: TLabel;
    DbePED_VLTOTAL: TDBEdit;
    Label6: TLabel;
    DbePED_VLFATURADO: TDBEdit;
    Label7: TLabel;
    DbePED_FATURAS: TDBEdit;
    Panel1: TPanel;
    Label16: TLabel;
    DbePED_OBSNOTA: TDBEdit;
    Label17: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    SpeedButton1: TSpeedButton;
    Label3: TLabel;
    DbeCGC: TDBEdit;
    CdsPed: TSQLClientDataSet;
    DsPed: TDataSource;
    CdsPedPED_CODIGO: TStringField;
    CdsPedPED_OBSNOTA: TStringField;
    CdsPedPED_VLFATURADO: TFMTBCdField;
    CdsPedPED_DTLIM_ATD: TSQLTimeStampField;
    CdsPedCLI_RAZAO: TStringField;
    CdsPedCLI_CGC: TStringField;
    DBMemo1: TDBMemo;
    CdsPedPED_OBSGERAL: TMemoField;
    procedure FormKeyDown(Sender: tObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton1Click(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: tObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPedDetalhes: TFormPedDetalhes;

implementation

Uses DataCad;

{$R *.DFM}

procedure TFormPedDetalhes.FormKeyDown(Sender: tObject; var Key: Word;
  Shift: TShiftState);
begin
if Key = VK_F9 then
  close;
end;

procedure TFormPedDetalhes.SpeedButton1Click(Sender: tObject);
begin
     close;
end;

procedure TFormPedDetalhes.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
 CdsPed.Close;
end;

procedure TFormPedDetalhes.FormKeyPress(Sender: tObject; var Key: Char);
begin
   if key = #27 then
      Begin
         close;
      end;
end;

end.
