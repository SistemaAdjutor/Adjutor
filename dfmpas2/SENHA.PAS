{*************************************************************
| Programa...: Senha  - Nome formulario = FormSenha           |
| Objetivo...:  Controle de distribui��o de acesso            |
| Analista...:  M�rcio Neu Pacheco                            |
| Programador: Jackson Neu Pacheco                            |
|                                                             |
| Coment�rios:                                                |
|                                                             |
| Cria��o..........: jan/1999.                                |
| Ultima Altera��o.:                                          |
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
