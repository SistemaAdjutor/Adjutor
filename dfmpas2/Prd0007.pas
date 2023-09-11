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
unit Prd0007;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Uteis,
  DBCtrls, StdCtrls, Db, DBTables, Buttons, ExtCtrls, RwFunc;

type
  TFormPrdFiltro = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    Bit_Aplicar: TBitBtn;
    Bit_Cancelar: TBitBtn;
    DBLKcboxPti_codigo: TDBLookupComboBox;
    Label22: TLabel;
    procedure Bit_AplicarClick(Sender: tObject);
    procedure BitBtn1Click(Sender: tObject);
    procedure Bit_CancelarClick(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrdFiltro: TFormPrdFiltro;
  wfecha : Boolean;


implementation

{$R *.DFM}

uses Database, Prd0001;







procedure TFormPrdFiltro.Bit_AplicarClick(Sender: tObject);
begin
  With Datamodulo.TbProduto do
    begin
    Filtered := False;
    Filter   := 'PTI_CODIGO = '''+DBLKcboxPti_codigo.KeyValue+'''';
    Filtered := True;
    end;
close;
end;


procedure TFormPrdFiltro.BitBtn1Click(Sender: tObject);
begin
 Datamodulo.TbProduto.Filtered := False;
 close;
end;


procedure TFormPrdFiltro.Bit_CancelarClick(Sender: tObject);
begin
  Close;
end;

procedure TFormPrdFiltro.FormShow(Sender: tObject);
begin
Left := 210;
Top  := 82;
wfecha := True;
//
if Datamodulo.TbPrdTipo.Active = False then
  Begin
   // precisa abrir a tabela tipo
   try
     Datamodulo.TbPrdTipo.DatabaseName := Preopen('Tabelas');
     Datamodulo.TbPrdTipo.Open;
   except
     uteis.erro  ('Não posso abrir Tabela de "TbPrdTipo"');
   end;
  end
else
  // já estava aberta, entao nao vou fechar
  wfecha := False;

end;

procedure TFormPrdFiltro.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
if wfecha = True then 
  Begin
   // este form abriu entao ele fecha
   try
     Datamodulo.TbPrdTipo.Close;
   except
     uteis.erro  ('Não posso fechar a Tabela de "TbPrdTipo"');
   end;
  end;
end;

end.
