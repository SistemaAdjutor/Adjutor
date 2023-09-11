unit GImpOPrd;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls;

type
  TFormGimpOP = class(TForm)
    GroupBox2: TGroupBox;
    RadVideo: TRadioButton;
    RadImpressora: TRadioButton;
    GroupBox5: TGroupBox;
    BitConfig: TBitBtn;
    BitOk: TBitBtn;
    BitCancelar: TBitBtn;
    PrinterSetupDialog1: TPrinterSetupDialog;
    CBoxNomeRel: TComboBox;
    Panel1: TPanel;
    procedure BitConfigClick(Sender: tObject);
    procedure FormShow(Sender: tObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormGimpOP: TFormGimpOP;

implementation

{$R *.DFM}

procedure TFormGimpOP.BitConfigClick(Sender: tObject);
begin
PrinterSetupDialog1.Execute;
end;

procedure TFormGimpOP.FormShow(Sender: tObject);
begin
 Left:= 134;
  Top := 82;
  //
{  try
   RelCliente01 := TRelCliente01.Create(Application);//cria o relatorio na memoria
   RelCliente02 := TRelCliente02.Create(Application);//cria o relatorio na memoria
  except
   uteis.erro  ('Um ou Mais Relatórios não Foram Criados na Memória!');
  end;
}  //
  screen.cursor := crHourglass;
  CboxNomeRel.Items.Add('Ordem de Produção Individual');
  CboxNomeRel.Items.Add('Ordem de Produção por Pedido');
  CboxNomeRel.ItemIndex := 0;
  screen.Cursor := Crdefault;
end;

end.
