unit STR0002;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComboBoxRw, Mask,  rxToolEdit,  rxCurrEdit, Grids, DBGrids,
  Buttons, db, SgDbSeachComboUnit;

type
  TFormConsultaSitTrib = class(TForm)
    GbPesquisa: TGroupBox;
    DBGrid1: TDBGrid;
    DBESituTrib: TEdit;
    CbRwSituacaoTrib: TEdit;
    Label97: TLabel;
    BitSair: TBitBtn;
    BitPesquisar: TBitBtn;
    procedure DBGrid1DblClick(Sender: tObject);
    procedure DBGrid1KeyPress(Sender: tObject; var Key: Char);
    procedure BitPesquisarClick(Sender: tObject);
    procedure BitSairClick(Sender: tObject);
    procedure DBESituTribExit(Sender: tObject);
    procedure CbRwSituacaoTribExit(Sender: tObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConsultaSitTrib: TFormConsultaSitTrib;

implementation

uses
  DataCad1, Men0001, RWFunc, uteis, iniciodb;

{$R *.dfm}




procedure TFormConsultaSitTrib.DBESituTribExit(Sender: tObject);
begin
     BitPesquisar.Click;
end;

procedure TFormConsultaSitTrib.DBGrid1DblClick(Sender: tObject);
var sCodigo : string;
begin
     DataCadastros1.CdSSitTributaria.Filtered := False;
     sCodigo := DataCadastros1.CdSSitTributariaSTB_CODIGO.AsString;
     if sCodigo <> '' then
        DataCadastros1.CdSSitTributaria.Locate('STB_CODIGO',sCodigo,[]);
     Close;
end;

procedure TFormConsultaSitTrib.DBGrid1KeyPress(Sender: tObject;
 var Key: Char);
begin
     if (Key = #13) then
     begin
         Key := #0;
         Close;
     end;
end;


procedure TFormConsultaSitTrib.BitPesquisarClick(Sender: tObject);
Var  wSelect :String;
begin
     wSelect:='';
     if DBESituTrib.Text <> '' then
        wSelect:= 'STB_TRIBUTACAO = '+qStr(DBESituTrib.Text);
     if CbRwSituacaoTrib.Text <> '' then
        wSelect:= ConcatSE( wSelect, ' and ')+'STB_DESCRICAO = '+qStr(CbRwSituacaoTrib.Text);

     DataCadastros1.CdSSitTributaria.Filtered := False;
     DataCadastros1.CdSSitTributaria.Filter   := wSelect ;
     DataCadastros1.CdSSitTributaria.Filtered := True;


     if DataCadastros1.CdSSitTributaria.IsEmpty then
     begin
          ShowMessage('Nenhuma Regra Localizada!');
          DBESituTrib.Text := '';
          DataCadastros1.CdSSitTributaria.Filtered := False;
     end;

End;

procedure TFormConsultaSitTrib.BitSairClick(Sender: tObject);
begin
   Close;
end;

procedure TFormConsultaSitTrib.CbRwSituacaoTribExit(Sender: tObject);
begin
     BitPesquisar.Click;
end;

end.

