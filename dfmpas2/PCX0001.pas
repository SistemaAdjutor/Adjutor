unit PCX0001;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  StdCtrls, ExtCtrls, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters;

type
  TFrmProjetoObraCusto = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmProjetoObraCusto: TFrmProjetoObraCusto;

implementation

{$R *.dfm}

end.
