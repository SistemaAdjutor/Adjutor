unit ScriptForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseForm, ACBrBase, ACBrCalculadora, ExtCtrls, ZSqlProcessor,
  StdCtrls, ACBrEnterTab, ACBrETQ;

type
  TFrmScript = class(TfrmBase)
    Memo1: TMemo;
    Button1: TButton;
    zScript: TZSQLProcessor;
    procedure Button1Click(Sender: tObject);
    procedure zScriptAfterExecute(Processor: TZSQLProcessor;
      StatementIndex: Integer);
    procedure zScriptError(Processor: TZSQLProcessor;
      StatementIndex: Integer; E: Exception;
      var ErrorHandleAction: TZErrorHandleAction);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmScript: TFrmScript;

implementation

Uses Uteis, InicioDB;

{$R *.dfm}

procedure TFrmScript.Button1Click(Sender: tObject);
begin
  inherited;
  {zScript.Script.Text:=memo1.Lines.Text;
  try
    DBInicio.ZMainDB.StartTransaction;
    zScript.Execute;
    DBInicio.ZMainDB.Commit;
  Except
    DBInicio.ZMainDB.Rollback;
  end;}

end;

procedure TFrmScript.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TFrmScript.FormDestroy(Sender: TObject);
begin
  inherited;
  FrmScript := Nil;
end;

procedure TFrmScript.zScriptAfterExecute(Processor: TZSQLProcessor;
  StatementIndex: Integer);
begin
  inherited;
  ShowMessage('Cocluído!!!');
end;

procedure TFrmScript.zScriptError(Processor: TZSQLProcessor;
  StatementIndex: Integer; E: Exception;
  var ErrorHandleAction: TZErrorHandleAction);
begin
  inherited;
  ShowMessage( 'Erro!!!'+#13+#13+e.Message );
end;

end.
