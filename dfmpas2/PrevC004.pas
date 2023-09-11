unit PrevC004;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons,  rxToolEdit,  rxCurrEdit, RXDBCtrl, Mask, DBCtrls, RwFunc, DB;

type
  TFormComprar = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    BitConfirma: TBitBtn;
    BitCancelar: TBitBtn;
    RxCalcComprar: TRxCalcEdit;
    procedure BitConfirmaClick(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure BitCancelarClick(Sender: tObject);
    procedure RxCalcComprarExit(Sender: tObject);
    procedure RxCalcComprarEnter(Sender: tObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormComprar: TFormComprar;

implementation

uses Uteis, PrevCN002;

{$R *.dfm}





procedure TFormComprar.BitConfirmaClick(Sender: tObject);
begin
    screen.Cursor := crHourGlass;
    try
      FormPrevisaoProducao.CdsComprarComprar.AsCurrency := RxCalcComprar.Value;
      FormPrevisaoProducao.CdsComprar.Post;
    except on e:EdataBaseError do
      uteis.erro  (pchar('erro ao atualizar o grid de Compra !'+e.message));
    end;
    Close;
    screen.cursor := crDefault;
end;

procedure TFormComprar.FormShow(Sender: tObject);
begin
    Left := 250;
    Top  := 390;
    FormPrevisaoProducao.CdsComprar.Edit;
    RxCalcComprar.Hint := 'Digite a quantidade para Comprar ou '+#13+'Esc para cancelar ou '+#13+'clique no botão cancelar !';
    RxCalcComprar.SetFocus;
    RxCalcComprar.SelectAll;
end;

procedure TFormComprar.BitCancelarClick(Sender: tObject);
begin
    FormPrevisaoProducao.CdsComprar.Cancel;
    Close;
end;

procedure TFormComprar.RxCalcComprarExit(Sender: tObject);
begin
    if (RxCalcComprar.Value < DBEdit3.Field.AsCurrency) then
       begin
           if uteis.confirmacao ( ('A qtde que você digitou é menor que a Qtde solicitada. Confirma ?'))= MrNo then
              begin
                  RxCalcComprar.Value := DBEdit3.Field.AsCurrency;
                  RxCalcComprar.SetFocus;
                  RxCalcComprar.SelectAll;
              end
           else
              begin
                  BitConfirma.Click;
              end;
       end;
    RxCalcComprar.Color := clWindow;
end;

procedure TFormComprar.RxCalcComprarEnter(Sender: tObject);
begin
    RxCalcComprar.Color := $0080FFFF;
end;

end.
