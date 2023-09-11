program Validador;

uses
  Forms,
  val0000 in 'val0000.pas' {Form1},
  val0002 in '..\dfmpas2\val0002.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
