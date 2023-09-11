unit GerImp1G;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons;

type
  TFormGerImp1G = class(TForm)
    GroupBox2: TGroupBox;
    BitConfig: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    GroupBox1: TGroupBox;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    PrinterSetupDialog1: TPrinterSetupDialog;
    CboxNomeRel: TComboBox;
    LBoxClass: TListBox;
    Label1: TLabel;
    Procedure PegaRelatorio(EtqRel:String);
    procedure BitConfigClick(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure BitBtn2Click(Sender: tObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormGerImp1G: TFormGerImp1G;

implementation

uses QRTran01 ;

{$R *.DFM}


Procedure TFormGerImp1G.PegaRelatorio(EtqRel:String);
begin
  Label1.Caption := EtqRel;
  RelTransportadora01.preview;
 // NomRel.Preview;
end;

procedure TFormGerImp1G.BitConfigClick(Sender: tObject);
begin
 PrinterSetupDialog1.Execute
end;

procedure TFormGerImp1G.FormShow(Sender: tObject);
begin
  // carregar  comob com nome dos relatórios
  CboxNomeRel.Items.Add('Relatório de Transportadoras');
  CboxNomeRel.SelText := 'Relatório de Transportadoras';
  // Carregar listas com indice p/ impressao
  LBoxClass.Items.Add('Alfábetica');
  LBoxClass.Items.Add('Código    ');
  LBoxClass.TopIndex := 1;
end;

procedure TFormGerImp1G.BitBtn2Click(Sender: tObject);
begin
   CboxNomeRel.Clear;
   LboxClass.Clear;
   Close;
end;

end.
