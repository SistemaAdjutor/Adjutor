{**************************************************************
 *  Programa...: Osv0003  - Nome formulario = FormOrdServManut
 *  Objetivo...: Manutenção da Ordem de Serviço
 *  Analista...: Márcio Neu Pacheco
 *  Programador: Jackson Neu Pacheco
 *
 *  Comentários:
 *
 *  Criação..........: Set/1999
 *  Ultima Alteração.: Nov/2002
 *  Alterado por.....: Márcio
 *
 ***************************************************************}
unit Osv0003;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, DBCtrls, Mask, StdCtrls, Grids, DBGrids, Buttons, RwFunc,
  DBCGrids,  rxToolEdit, RXDBCtrl;

type
  TFormOrdServManut = class(TForm)
    Label1: TLabel;
    EdtOSV_CODIGO: TEdit;
    DbdOSV_EMISSAO: TDBDateEdit;
    DBNavigator1: TDBNavigator;
    Label2: TLabel;
    Label3: TLabel;
    DbePRD_REFER: TDBEdit;
    DbePRD_DESCRI: TDBEdit;
    Label4: TLabel;
    DbePED_CODIGO: TDBEdit;
    Panel1: TPanel;
    DBGridOsvItem: TDBGrid;
    BitBtn1: TBitBtn;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    Panel9: TPanel;
    Label6: TLabel;
    BitBtn3: TBitBtn;
    Panel3: TPanel;
    DBText6: TDBText;
    Panel2: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    Panel12: TPanel;
    DBText7: TDBText;
    Panel13: TPanel;
    Panel14: TPanel;
    Panel15: TPanel;
    Panel16: TPanel;
    Panel17: TPanel;
    DBText8: TDBText;
    DBText9: TDBText;
    DBText10: TDBText;
    DBText11: TDBText;
    DBText12: TDBText;
    procedure Bit_VoltarClick(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure DBNavigator1Click(Sender: tObject; Button: TNavigateBtn);
    procedure EdtOSV_CODIGOExit(Sender: tObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormOrdServManut: TFormOrdServManut;

implementation

uses Database, Osv0001, Osv0004;

{$R *.DFM}







procedure TFormOrdServManut.Bit_VoltarClick(Sender: tObject);
begin
  close;
end;

procedure TFormOrdServManut.FormShow(Sender: tObject);
begin
  Left := 1;
  Top := 30;
  {relacionamento: Ordem de seviço e seus itens}
//  FormOrdServCentro.TbOrdServItem.MasterSource := FormOrdServCentro.DsOrdServ;
//  FormOrdServCentro.TbOrdServItem.MasterFields := 'OSV_CODIGO';
  {Atualiza visual}
//  EdtOSV_CODIGO.Text := FormOrdServCentro.TbOrdServOSV_CODIGO.Value;
end;

procedure TFormOrdServManut.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
  {Desfaz relacionamento}
//  FormOrdServCentro.TbOrdServItem.MasterFields := '';
//  FormOrdServCentro.TbOrdServItem.MasterSource := nil;
  close;
end;

procedure TFormOrdServManut.DBNavigator1Click(Sender: tObject;
  Button: TNavigateBtn);
begin
  {Atualiza visual}
//  EdtOSV_CODIGO.Text := FormOrdServCentro.TbOrdServOSV_CODIGO.Value;
end;

procedure TFormOrdServManut.EdtOSV_CODIGOExit(Sender: tObject);
Begin
{
   screen.cursor := crHourglass;
   EdtOSV_CODIGO.text := StrZero(EdtOSV_CODIGO.text,6);
   FormOrdServCentro.TbOrdServ.IndexName := 'XOSV_CODI';
   if FormOrdServCentro.TbOrdServ.Findkey([EdtOSV_CODIGO.text]) = False Then
      begin
      messagebeep(10);
      uteis.aviso('Ordem de Serviço não encontrada.');
      {Atuliza visual
      EdtOSV_CODIGO.Text := FormOrdServCentro.TbOrdServOSV_CODIGO.Value;
      EdtOSV_CODIGO.SetFocus;
      end;
   screen.cursor := crDefault;
}
end;

end.
