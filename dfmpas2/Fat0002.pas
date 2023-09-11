unit Fat0002;

interface

uses
    Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, BaseDbForm,
    StdCtrls, ExtCtrls, DBCtrls, Mask, Buttons, ComCtrls, Db, DBTables,RwFunc,
    rxCurrEdit,  rxToolEdit, RXDBCtrl, SqlExpr, Provider,
    Data.FMTBCd, SgDbSeachComboUnit, ComboBoxRW, Data.DBXFirebird, ACBrEnterTab, ACBrBase, ACBrCalculadora, ACBrETQ;

type
  TFormFaturar = class(TFrmBaseDb)
    GrpVariacao: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBEdtRefer: TDBEdit;
    DBEdtQtdeTotal: TDBEdit;
    DBEdtQtdeFatu: TDBEdit;
    CurrQtdeFatu: TCurrencyEdit;
    DBEdit25: TDBEdit;
    Label5: TLabel;
    Panel5: TPanel;
    BitConfirmaNota: TBitBtn;
    BitCancelar: TBitBtn;
    GroupBox1: TGroupBox;
    CbOper: TComboBoxRw;
    qCfop: TSQLQuery;
    Button1: TButton;
    Button2: TButton;
    procedure FormShow(Sender: tObject);
    procedure CurrQtdeFatuExit(Sender: tObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    procedure setCodCfop(const Value: string);
    function GetCodCfop: string;
    function GetQtdFaturar: Currency;
  public
    Property QtdFaturar: Currency Read GetQtdFaturar ;
    Property CodCfop: string Read GetCodCfop write setCodCfop;
    var
      registro: integer;
  end;

var
   FormFaturar: TFormFaturar;

implementation

uses Uteis, iniciodb, Fat0003;

{$R *.DFM}

procedure TFormFaturar.FormCreate(Sender: TObject);
begin
  inherited;
  self.height:=230;
  self.width:=417;

end;

procedure TFormFaturar.FormShow(Sender: tObject);
begin
    inherited ;
//    if FormFatPedido.CdsItemPedidoPRF_QTDE_FATURAR_CC.AsCurrency>0 then
//       CurrQtdeFatu.Value := FormFatPedido.CdsItemPedidoPRF_QTDE_FATURAR_CC.AsCurrency
//    Else
       CurrQtdeFatu.Value := 0;
end;

function TFormFaturar.GetCodCfop: string;
begin
     Result := cbOper.idRetorno;
end;

function TFormFaturar.GetQtdFaturar: Currency;
begin
     Result := CurrQtdeFatu.Value;
end;

procedure TFormFaturar.setCodCfop(const Value: string);
begin
     cbOper.idRetorno:= Value;
end;

procedure TFormFaturar.BitBtn2Click(Sender: TObject);
begin
     inherited;
     ModalResult := mrCancel;
end;

procedure TFormFaturar.Button1Click(Sender: TObject);
begin
     inherited;
     ModalResult := mrOk ;
end;

procedure TFormFaturar.Button2Click(Sender: TObject);
begin
     inherited;
     ModalResult := mrCancel ;
end;

procedure TFormFaturar.CurrQtdeFatuExit(Sender: tObject);
begin
    If (DbedtQtdeFatu.Field.AsCurrency + CurrQtdeFatu.Value)>(DBEdtQtdeTotal.Field.AsCurrency)  then
    begin
         uteis.aviso('Quantidade maior que solicitada !');
         CurrQtdeFatu.Value := (DBEdtQtdeTotal.Field.AsCurrency - DbedtQtdeFatu.Field.AsCurrency);
    end;
end;

end.

