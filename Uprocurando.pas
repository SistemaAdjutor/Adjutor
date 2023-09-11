unit Uprocurando;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.WinXCtrls,
  Vcl.ExtCtrls;

type
  TForm2 = class(TForm)
    GroupBox12: TGroupBox;
    Label396: TLabel;
    ChkPrecoBrutoP: TCheckBox;
    ChkPrecoLiqP: TCheckBox;
    ChkRelatoriosP: TCheckBox;
    ChkReeMissaoP: TCheckBox;
    ChkExclusaoPedP: TCheckBox;
    ChkAlteraDescP: TCheckBox;
    CheckVisualizaPedidos: TCheckBox;
    ChkFuncaoReajuste: TCheckBox;
    ChkCadastroProduto: TCheckBox;
    CheckVisualizaClientes: TCheckBox;
    chkAnaliseCredito: TCheckBox;
    chkMarkupPedido: TCheckBox;
    chkTransferenciaMercadorias: TCheckBox;
    chkAlteraTabelaPreco: TCheckBox;
    ChkPrazoDesabilitado: TCheckBox;
    ChkAutorizaVendaAbaixo: TCheckBox;
    chkComissaoPedido: TCheckBox;
    GroupBox14: TGroupBox;
    ChkComissao: TCheckBox;
    ChkCusto: TCheckBox;
    ChkMargem: TCheckBox;
    ChkMagemMinima: TCheckBox;
    ChkPrecoVenda: TCheckBox;
    ChkPrecoOferta: TCheckBox;
    chkAlteraCustosAutomaticos: TCheckBox;
    ChkVisualizacustosProd: TCheckBox;
    GroupBox6: TGroupBox;
    ChkAlteraNFEntrada: TCheckBox;
    GroupBox2: TGroupBox;
    ChkAlteraComissao: TCheckBox;
    ChkLiberaAnaliseCredito: TCheckBox;
    ChkLiberaAnaliseProducao: TCheckBox;
    GroupBox9: TGroupBox;
    ChkKardexLancEntrada: TCheckBox;
    ChkKardexLancSaida: TCheckBox;
    ChkKardexLancBalanco: TCheckBox;
    Panel1: TPanel;
    Edit1: TEdit;
    SearchBox1: TSearchBox;
    ListBox1: TListBox;
    procedure SearchBox1Change(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
    procedure SearchBox1Enter(Sender: TObject);
    procedure SearchBox1Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}
 uses RegularExpressions;
procedure TForm2.ListBox1Click(Sender: TObject);
begin
 if ListBox1.Count =0  then
   exit;

 //   TCheckBox(ListBox1.Items.Objects[ ListBox1.ItemIndex ]).SetFocus;
  if TWinControl(ListBox1.Items.Objects[ ListBox1.ItemIndex ]).CanFocus then
  begin
   TWinControl(ListBox1.Items.Objects[ ListBox1.ItemIndex ]).SetFocus;

   TCheckBox(ListBox1.Items.Objects[ ListBox1.ItemIndex ]).Color := clRed;
  // TButtonControl(ListBox1.Items.Objects[ ListBox1.ItemIndex ]).
  end;
  ListBox1.Visible := False;
end;

procedure TForm2.SearchBox1Change(Sender: TObject);
var i : integer;
capt, dica :string;
begin
  if  Length( SearchBox1.Text ) < 3 then
    exit;
  ListBox1.Clear;
  listbox1.Visible := False;
  for i:= 0 to Panel1.parent.ComponentCount-1 do
  begin
    if panel1.parent.Components[i] is TCheckBox then
    begin
     capt := TCheckBox( panel1.parent.Components[i]).Caption;
     capt := StringReplace( capt,'&','',[rfReplaceAll]);
     dica := TCheckBox( panel1.parent.Components[i]).Hint;
      if TRegEx.IsMatch( capt, SearchBox1.text,[roIgnoreCase]) then
       ListBox1.AddItem(capt, TObject(panel1.parent.Components[i]));

    end;

  end;
   listbox1.Visible := True;
end;

procedure TForm2.SearchBox1Enter(Sender: TObject);
begin
 ListBox1.Visible :=  Length( SearchBox1.Text ) > 2;

end;

procedure TForm2.SearchBox1Exit(Sender: TObject);
begin
//  ListBox1.Visible := False;
end;

end.
