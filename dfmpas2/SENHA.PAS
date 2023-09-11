{*************************************************************
| Programa...: Senha  - Nome formulario = FormSenha           |
| Objetivo...:  Controle de distribuição de acesso            |
| Analista...:  Márcio Neu Pacheco                            |
| Programador: Jackson Neu Pacheco                            |
|                                                             |
| Comentários:                                                |
|                                                             |
| Criação..........: jan/1999.                                |
| Ultima Alteração.:                                          |
| Feito por........:                                          |
|                                                             |
**************************************************************}
unit Senha;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls;

type
  TFormSenha = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormSenha: TFormSenha;

implementation

uses Ent0001;

{$R *.DFM}

end.
