unit Rec0001B;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, ExtCtrls, ComCtrls;

type
  TFormContasReceberB = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    GroupBox1: TGroupBox;
    Rad_Vencimento: TRadioButton;
    Rad_Cliente: TRadioButton;
    Rad_Emissao: TRadioButton;
    Rad_Fatura: TRadioButton;
    Rad_Num: TRadioButton;
    GroupBox2: TGroupBox;
    ChkPrevisao: TCheckBox;
    GbCliente: TGroupBox;
    CbClientes: TComboBox;
    Edt_Lista: TEdit;
    PanClie: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    lbl_codigo: TLabel;
    lbl_cidade: TLabel;
    BitCancelar: TBitBtn;
    BitPesquisar: TBitBtn;
    BitBaixar: TBitBtn;
    BitBtn4: TBitBtn;
    DBGridRecParce: TDBGrid;
    procedure FormShow(Sender: tObject);
    procedure BitBtn4Click(Sender: tObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormContasReceberB: TFormContasReceberB;

implementation

{$R *.dfm}

procedure TFormContasReceberB.FormShow(Sender: tObject);
begin
    TOP  := 0;
    LEFT := 0;
end;

procedure TFormContasReceberB.BitBtn4Click(Sender: tObject);
begin
    Close;
end;

end.
