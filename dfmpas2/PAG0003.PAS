unit Pag0003;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, DBCtrls, StdCtrls, Buttons, Mask;

type
  TFormParcelas = class(TForm)
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label16: TLabel;
    Label15: TLabel;
    Label17: TLabel;
    Label14: TLabel;
    DBLKcboxstatus: TDBLookupComboBox;
    DBePpc_pagto: TDBEdit;
    DBePpc_obs: TDBEdit;
    DBePpc_vlpago: TDBEdit;
    DBePpc_banco: TDBEdit;
    DBePpc_venctoEdit1: TDBEdit;
    DBePpc_vlparc: TDBEdit;
    Panel2: TPanel;
    Bit_Novo: TBitBtn;
    Bit_Excluir: TBitBtn;
    Bit_Gravar: TBitBtn;
    Bit_cancelar: TBitBtn;
    Bit_Sair: TBitBtn;
    EdtPpc_numer: TEdit;
    procedure EdtPpc_numerEnter(Sender: tObject);
    procedure Bit_SairClick(Sender: tObject);
    procedure FormShow(Sender: tObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormParcelas: TFormParcelas;

implementation

{$R *.DFM}

uses database;







procedure TFormParcelas.EdtPpc_numerEnter(Sender: tObject);
begin
 EdtPpc_numer.text := DataModulo.TbParcelasPPC_NUMER.Value;
end;

procedure TFormParcelas.Bit_SairClick(Sender: tObject);
begin
   Close;
end;

procedure TFormParcelas.FormShow(Sender: tObject);
begin
  EdtPpc_numer.SetFocus;
end;

end.
