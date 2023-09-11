unit CPRA001;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, DB, DBClient, Grids, DBGrids, Mask,
   rxToolEdit, rxCurrEdit;

type
  TformCompraMenu = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Notebook1: TNotebook;
    Panel2: TPanel;
    SpeedButton1: TSpeedButton;
    GroupBox1: TGroupBox;
    RadRefer: TRadioButton;
    RadPedido: TRadioButton;
    RadOp: TRadioButton;
    EdPesqPrevisao: TEdit;
    BtnConfirmar: TBitBtn;
    GroupBox2: TGroupBox;
    DBGrid1: TDBGrid;
    DsTempPed: TDataSource;
    CdsTempPed: TClientDataSet;
    CdsTempPedNUMERO: TStringField;
    CdsTempPedDATA: TStringField;
    CdsTempPedTIPO: TStringField;
    CdsTempPedCOD_CLIENTE: TIntegerField;
    CdsTempPedNOME_CLIENTE: TStringField;
    CdsTempPedPREVISAO: TDateField;
    GroupBox3: TGroupBox;
    DBGrid2: TDBGrid;
    CdsTempProd: TClientDataSet;
    CdsTempProdREFERENCIA: TStringField;
    CdsTempProdDESCRICAO: TStringField;
    CdsTempProdQTDE_VAR1: TCurrencyField;
    CdsTempProdQTDE_VAR2: TCurrencyField;
    CdsTempProdQTDE_VAR3: TCurrencyField;
    CdsTempProdQTDE_VAR4: TCurrencyField;
    CdsTempProdQTDE_VAR5: TCurrencyField;
    CdsTempProdQTDE_VAR6: TCurrencyField;
    CdsTempProdQTDE_VAR7: TCurrencyField;
    CdsTempProdQTDE_VAR8: TCurrencyField;
    CdsTempProdQTDE_TOTAL: TCurrencyField;
    CdsTempProdNUM_OP: TStringField;
    CdsTempProdNUM_PEDIDO: TStringField;
    DsTempProd: TDataSource;
    Cqtde: TCurrencyEdit;
    Label2: TLabel;
    procedure RadReferClick(Sender: tObject);
    procedure RadPedidoClick(Sender: tObject);
    procedure RadOpClick(Sender: tObject);
    procedure SpeedButton1Click(Sender: tObject);
  private
    { Private declarations }
    wSQL1,wSQL2,wSQL3 :String;
    Procedure GravaTemp;
  public
    { Public declarations }
  end;

var
  formCompraMenu: TformCompraMenu;

implementation

uses DataCad,RWFunc, uteis, iniciodb;

{$R *.dfm}





procedure TformCompraMenu.RadReferClick(Sender: tObject);
begin
   Label2.Visible := TRue;
   cQtde.Visible  := true;
   EdPesqPrevisao.Clear;
   EdPesqPrevisao.SetFocus;
end;

procedure TformCompraMenu.RadPedidoClick(Sender: tObject);
begin
   Label2.Visible := False;
   cQtde.Visible  :=False;
   EdPesqPrevisao.Clear;
   EdPesqPrevisao.SetFocus;

end;

procedure TformCompraMenu.RadOpClick(Sender: tObject);
begin
   Label2.Visible := False;
   cQtde.Visible  := False;
   EdPesqPrevisao.Clear;
   EdPesqPrevisao.SetFocus;

end;

procedure TformCompraMenu.SpeedButton1Click(Sender: tObject);
begin
     Notebook1.PageIndex := 1;
end;

procedure TformCompraMenu.GravaTemp;
begin
{}
     if RadRefer.checked  then
         begin
             wSQL1 := 'Select PRD_DESCRI from PRD0000 where PRD_REFER = '''+EdPesqPrevisao.Text+'''';

             DataCadastros.sqlUpdate.Close;
             DataCadastros.SqlUpdate.sql.text :=SqlDef('PRODUTOS',wSQL1,'','','');
             DataCadastros.sqlUpdate.Open;
                if DataCadastros.sqlUpdate.IsEmpty = true then
                   begin
                       uteis.aviso('Produto não encontrado !');
                       EdPesqPrevisao.SetFocus;
                       EdPesqPrevisao.SelectAll;
                   end
                else
                  begin
                       CdsTempProd.Append;
                       CdsTempProdREFERENCIA.AsString := EdPesqPrevisao.Text;
                       CdsTempProdQTDE_TOTAL.AsCurrency := Cqtde.Value;
                       CdsTempProdDESCRICAO.AsString    := DataCadastros.sqlUpdate.fieldByName('PRD_DESCRI').AsString;
                       CdsTempProd.Post;
                  end;
         end;
end;

end.
