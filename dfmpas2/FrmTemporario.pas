unit FrmTemporario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB;

type
  TFrmTemp = class(TForm)
    DBGrid1: TDBGrid;
    BtnSair: TButton;
    DsTemp: TDataSource;
    procedure BtnSairClick(Sender: tObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmTemp: TFrmTemp;

implementation

uses OsvN0002;

{$R *.dfm}

procedure TFrmTemp.BtnSairClick(Sender: tObject);
begin
    Close;
end;

end.
