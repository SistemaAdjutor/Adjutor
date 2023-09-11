unit FormDetalhe;

interface

uses
  Windows,  Messages, SysUtils, Variants, Classes, Graphics, Controls, forms, BaseForm, 
  Dialogs, StdCtrls, Buttons, DB, DBCtrls, Mask, cx_pai;

type
  TFrmDetalhe = class(TPai)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    GroupBox5: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    BitBtn1: TBitBtn;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBMemo1: TDBMemo;
    DS: TDataSource;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDetalhe: TFrmDetalhe;

implementation

{$R *.dfm}

procedure TFrmDetalhe.BitBtn1Click(Sender: TObject);
begin
   Close;
end;

end.
