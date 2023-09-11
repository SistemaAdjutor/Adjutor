{***********************************************************
| Programa...: Prd0007  - Nome formulario = FormPrdfILTRO  
| Objetivo...: Filtro cadastro de Produto por tipo
| Analista...: Marcio Neu Pacheco
| Programador: Jackson Neu Pacheco
|
| Comentários: Utilizado em varias partes do sistema
|
| Criação..........: Mai/1999
| Ultima Alteração.:
| Feito por........:
|
***********************************************************}
unit CEL0004;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, StdCtrls, Db, DBTables, Buttons, ExtCtrls, RwFunc;

type
  TFormCelFiltro = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    Bit_Aplicar: TBitBtn;
    Bit_Cancelar: TBitBtn;
    DbLkCEL_CODIGO: TDBLookupComboBox;
    Label22: TLabel;
    procedure Bit_AplicarClick(Sender: tObject);
    procedure BitBtn1Click(Sender: tObject);
    procedure Bit_CancelarClick(Sender: tObject);
    procedure FormShow(Sender: tObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCelFiltro: TFormCelFiltro;
  wfecha : Boolean;


implementation

{$R *.DFM}

uses Database, Prd0001;







procedure TFormCelFiltro.Bit_AplicarClick(Sender: tObject);
begin
if DbLkCEL_CODIGO.Text = '' then
   begin
   uteis.aviso('Selecione uma Célula.');
   DbLkCEL_CODIGO.SetFocus;
   exit;
   end;
  With Datamodulo.TbComponentes do
    begin
    Filtered := False;
    Filter   := 'CEL_CODIGO = '''+DbLkCEL_CODIGO.KeyValue+'''';
    Filtered := True;
    end;
close;
end;


procedure TFormCelFiltro.BitBtn1Click(Sender: tObject);
begin
 Datamodulo.TbComponentes.Filtered := False;
 close;
end;


procedure TFormCelFiltro.Bit_CancelarClick(Sender: tObject);
begin
  Close;
end;

procedure TFormCelFiltro.FormShow(Sender: tObject);
begin
Left := 200;
Top  := 110;
end;

end.
