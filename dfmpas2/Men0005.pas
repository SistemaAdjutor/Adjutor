

unit Men0005;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, ExtCtrls, Menus;

type
  TFormMenuConfig = class(TForm)
    MainMenu1: TMainMenu;
    Senhas: TMenuItem;
    Empresa: TMenuItem;
    Cadastro1: TMenuItem;
    PnTitulo: TPanel;
    StatusBar: TStatusBar;
    Sair1: TMenuItem;
    Label5: TLabel;
    Senhasdeusurios1: TMenuItem;
    DesabilitarSenhas1: TMenuItem;
    Configuracoes: TMenuItem;
    Parametrosdosistema1: TMenuItem;
    CompartilhamentoDB1: TMenuItem;
    procedure Cadastro1Click(Sender: tObject);
    procedure FormActivate(Sender: tObject);
    procedure Sair1Click(Sender: tObject);
    procedure ParametrosdoSistema1Click(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure Senhasdeusurios1Click(Sender: tObject);
    procedure CompartilhamentoDB1Click(Sender: tObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMenuConfig: TFormMenuConfig;

implementation


uses Emp0001, ADJ0001, Usu0001, Prmd0001, ShareDb, Men0001;





{$R *.DFM}


procedure TFormMenuConfig.Cadastro1Click(Sender: tObject);
begin
 try
    try
      FormEmpresa := TFormEmpresa.Create(Application);
      FormEmpresa.ShowModal;
    finally
      FormEmpresa.Destroy;
      FormEmpresa := nil //  nil é - From Assigned = False
    end;
  except
      //beep;
      uteis.erro  ('Ocorreu um erro na criação do formulário!');
  end;
end;

procedure TFormMenuConfig.FormActivate(Sender: tObject);
begin
  Pntitulo.Caption := dbInicio.Empresa.Razao;
  StatusBar.Panels[2].Text:= DateTimeToStr(date);
end;

procedure TFormMenuConfig.Sair1Click(Sender: tObject);
begin
 Close;
end;

procedure TFormMenuConfig.ParametrosdoSistema1Click(Sender: tObject);
begin
    try
      try
        FormParametros := TFormParametros.Create(Application);
        FormParametros.ShowModal;
      finally
        FormParametros.Destroy;
        FormParametros:= nil //  nil é - From Assigned = False
      end;
    except
      //beep;
      uteis.erro  ('Ocorreu um erro na criação do formulário!');
    end;
end;

procedure TFormMenuConfig.FormShow(Sender: tObject);
begin
  Left:= 0;
  Top := 0;
  Width := 801;
  Height:= 572;
end;

procedure TFormMenuConfig.Senhasdeusurios1Click(Sender: tObject);
begin
try
    try
      FormUsu_dace := TFormUsu_dace.Create(Application);
      FormUsu_dace.ShowModal;
    finally
      FormUsu_dace.Destroy;
      FormUsu_dace:= nil //  nil é - From Assigned = False
    end;
  except
      //beep;
      uteis.erro  ('Ocorreu um erro na criação do formulário!');
  end;
end;

procedure TFormMenuConfig.CompartilhamentoDB1Click(Sender: tObject);
begin
try
    try
      FormShare := TFormShare.Create(Application);
      FormShare.ShowModal;
    finally
      FormShare.Destroy;
      FormShare:= nil //  nil é - From Assigned = False
    end;
  except
      //beep;
      uteis.erro  ('Ocorreu um erro na criação do formulário!');
  end;
end;

end.
