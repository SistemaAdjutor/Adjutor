unit Prd0010;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Grids, DBGrids, ExtCtrls, Buttons,RwFunc, Db,
  DBTables;

type
  TFormEtiqbarra = class(TForm)
    DBGridProd: TDBGrid;
    GroupBox1: TGroupBox;
    RadNome: TRadioButton;
    RadRefer: TRadioButton;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    EditLote: TEdit;
    Label2: TLabel;
    EditValidade: TEdit;
    Label3: TLabel;
    LboxModelos: TListBox;
    MemModelos: TMemo;
    Label4: TLabel;
    Label5: TLabel;
    GroupBox3: TGroupBox;
    Label6: TLabel;
    EditCopias: TEdit;
    Label7: TLabel;
    PanProduto: TPanel;
    FiltroProd: TSpeedButton;
    LblNome: TLabel;
    EditRefer: TEdit;
    BitImprimir: TBitBtn;
    GroupBox4: TGroupBox;
    RadVideo: TRadioButton;
    RadImpressora: TRadioButton;
    TbCodbar: TTable;
    DsCodbar: TDataSource;
    TbCodbarCB_PRD_REFER: TStringField;
    TbCodbarCB_PRD_DESCRI: TStringField;
    TbCodbarCB_PRD_COMPL: TStringField;
    TbCodbarCB_EAN13: TStringField;
    TbCodbarCB_LOTE: TStringField;
    TbCodbarCB_VALIDADE: TStringField;
    TbCodbarCB_PRD_UND: TStringField;
    TbCodbarCB_LDETAIL1: TStringField;
    TbCodbarCB_LDETAIL2: TStringField;
    TbCodbarCB_LDETAIL3: TStringField;
    TbCodbarCB_LDETAIL4: TStringField;
    TbNumer: TTable;
    DsNumer: TDataSource;
    TbNumerNFSEQUENC: TStringField;
    TbNumerOS_SEQUENC: TStringField;
    TbNumerCB_LOTE: TStringField;
    TbNumerCB_VALIDADE: TStringField;
    EditQtde: TEdit;
    TbCodbarCB_QUANT: TStringField;
    Bit_Sair: TBitBtn;
    procedure FormShow(Sender: tObject);
    procedure Selecionado;
    procedure LboxModelosClick(Sender: tObject);
    procedure FiltroProdClick(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure DBGridProdCellClick(Column: TColumn);
    procedure DBGridProdKeyDown(Sender: tObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridProdKeyUp(Sender: tObject; var Key: Word;
      Shift: TShiftState);
    procedure RadReferClick(Sender: tObject);
    procedure RadNomeClick(Sender: tObject);
    procedure EditReferEnter(Sender: tObject);
    procedure EditReferExit(Sender: tObject);
    procedure BitImprimirClick(Sender: tObject);
    procedure EditQtdeKeyPress(Sender: tObject; var Key: Char);
    procedure EditCopiasKeyPress(Sender: tObject; var Key: Char);
    procedure Bit_SairClick(Sender: tObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormEtiqbarra: TFormEtiqbarra;
  // Parametros do relatório
  wNumeroColunas  :Integer;
  wMargemEsquerta :Extended;
  wMargemDireita  :Extended;
  wPagLargura     :Extended;
  wPagComprimento :Extended;
  wMargemTopo     :Extended;
  wMargemRodape   :Extended;
  // Parametros da Etiqueta
  wAlturaEtiq     :Extended;
  wLarguraEtiq    :Extended;

implementation

uses database, Prd0007, QrBar01, QrBar02, QrBar03;

{$R *.DFM}






procedure TFormEtiqbarra.FormShow(Sender: tObject);
begin
 Left := 45;
 Top := 40;
{ try
    Datamodulo.TbProduto.OPen;
  except
    uteis.erro  ('Impossível fechar a tabela "TbProduto". ');
  end;
  // volta Index Defaut
  Datamodulo.TbProduto.IndexName := 'XPRD_CODI';
}
 try
    // nao precisa usar PreOPen
    TbCodbar.open;
  except
    uteis.erro  ('Impossível acessar a tabela "TbCodbar". ');
  end;
  // tabela que guarda o numero do ultimo lote
  try
   // TbNumer.DatabaseName := PreOpen('Produtos');
    TbNumer.open;
  except
    uteis.erro  ('Impossível acessar a tabela "TbNumer". ');
  end;
  // Atualizar tela com lote atual
  EditLote.Text:=TbNumerCB_LOTE.Value;
  EditValidade.Text:=TbNumerCB_VALIDADE.Value;
  //
{  try
    Datamodulo.TbParametros.Open;
    Datamodulo.TbParametros.First;
  except
    uteis.erro  ('Impossível acessar a tabela "Parametros". ');
  end;
 // ***  PARAMETROS GLOBAIS *** //
 // ver a descricao a ser utilizada na grade e nas etiquetas
 if Datamodulo.TbParametrosPMT_DESCPRODRES.Value then
   DbGridProd.Columns.Items[1].FieldName := 'PRD_DESCRI_RES'
 else       }
   DbGridProd.Columns.Items[1].FieldName := 'PRD_DESCRI';
 //
 // Carregar listBox
 LboxModelos.Items.Add('EAN13 - Etiqueta Grande');
 LboxModelos.Items.Add('EAN13 - Etiqueta Média');
 LboxModelos.Items.Add('EAN13 - Etiqueta Pequena');
 LboxModelos.Items.Add('EAN13 - Etiqueta Modelo4');
 LboxModelos.Items.Add('EAN13 - Etiqueta Modelo5');
 LboxModelos.Items.Add('EAN8   - Etiqueta Modelo1');
 LboxModelos.Items.Add('EAN8   - Etiqueta Modelo2');
 // seta no primmeiro (defaut)
 LboxModelos.ItemIndex := 0;
 MemModelos.Lines[0]:= 'Tipo          :    1 coluna';
 MemModelos.Lines[1]:= 'Altura        :    3,56  cm';
 MemModelos.Lines[2]:= 'Largura     :    10,2  cm';
 MemModelos.Lines[3]:= 'Atributos: Complto,Lote,Validade,Quant.';
//
// atribui registro atual
{if Datamodulo.TbParametrosPMT_DESCPRODRES.Value then
   // RESUMIDA
   PanProduto.Caption:=Datamodulo.TbProdutoPRD_REFER.Value+' - '+Datamodulo.TbProdutoPRD_DESCRI_RES.Value
 else
   //PADRAO    }
   PanProduto.Caption:=Datamodulo.TbProdutoPRD_REFER.Value+' - '+Datamodulo.TbProdutoPRD_DESCRI.Value;

LboxModelos.ItemIndex := 1;
Selecionado;

end;

procedure TFormEtiqbarra.LboxModelosClick(Sender: tObject);
begin
// sem modelo por enquanto
if LboxModelos.ItemIndex > 2   then
 begin
  MemModelos.Lines[0]:= ' ';
  MemModelos.Lines[1]:= ' ';
  MemModelos.Lines[2]:= ' ';
  MemModelos.Lines[3]:= ' ';
  end;
//
{Parametros de tipo de etiquetas conforme selecionado  }
if LboxModelos.ItemIndex = 0   then
  begin
  MemModelos.Lines[0]:= 'Tipo          :    1 coluna';
  MemModelos.Lines[1]:= 'Altura        :    3,56  cm';
  MemModelos.Lines[2]:= 'Largura     :    10,2  cm';
  MemModelos.Lines[3]:= 'Atributos: Complto,Lote,Validade,Quant.';
  // Laser e Jato de tinta -  1 Col - 3,56 x 10,2 cm
  // Parametros do Report  - Custom
  wNumeroColunas  := 1;
  wMargemEsquerta := 5.00;
  wMargemDireita  := 0.00;
  wPagLargura     := 110.1;  // custom
  wPagComprimento := 36.4;
  wMargemTopo     := 0.00;
  wMargemRodape   := 0.00;
  // Parametros da Etiqueta
  wAlturaEtiq    := 35.4;
  wLarguraEtiq:= 110.1;
  end;
if LboxModelos.ItemIndex = 1   then
  begin
  MemModelos.Lines[0]:= 'Tipo          :    1 coluna';
  MemModelos.Lines[1]:= 'Altura        :    2,3    cm';
  MemModelos.Lines[2]:= 'Largura     :    7,00  cm';
  MemModelos.Lines[3]:= 'Atributos: Complto,Lote,Validade,Quant.'
  end;
if LboxModelos.ItemIndex = 2   then
  begin
  MemModelos.Lines[0]:= 'Tipo          :    3 colunas';
  MemModelos.Lines[1]:= 'Altura        :    1,50   cm';
  MemModelos.Lines[2]:= 'Largura     :    2,70   cm';
  MemModelos.Lines[3]:= 'Atributos: Complto,Lote,Validade,Quant.';
   // Parametros do Report  - Custom
  wNumeroColunas  := 3;
  wMargemEsquerta := 0.00;
  wMargemDireita  := 0.00;
  wPagLargura     := 84.0;  // custom  28 X 3
  wPagComprimento := 16.0;
  wMargemTopo     := 0.00;
  wMargemRodape   := 0.00;
  // Parametros da Etiqueta
  wAlturaEtiq    := 15.0;
  wLarguraEtiq:= 27.0;
  end;
end;

procedure TFormEtiqbarra.FiltroProdClick(Sender: tObject);
begin
{ try
    try
      FormPrdFiltro     := TFormPrdFiltro.Create(Application);
      FormPrdFiltro.Top := 0;
      FormPrdFiltro.Left:= 30;
      FormPrdFiltro.ShowModal;
    finally
      FormPrdFiltro.Destroy;
      FormPrdFiltro := nil //  nil é - From Assigned = False
    end;
  except
      //beep;
      uteis.erro  ('Ocorreu um erro na criação do formulário!');
  end;   }
end;


procedure TFormEtiqbarra.Selecionado;
// deixa o registro atual ou registro de busca pronto p/ etiqueta
begin

LblNome.Visible:=False;
EditRefer.Visible :=False;
RadRefer.Checked := False;
RadNome.Checked  := False;
//
// atribui registro atual
//if Datamodulo.TbParametrosPMT_DESCPRODRES.Value then
   // RESUMIDA
//   PanProduto.Caption:=Datamodulo.TbProdutoPRD_REFER.Value+' - '+Datamodulo.TbProdutoPRD_DESCRI_RES.Value
// else
   //PADRAO
   PanProduto.Caption:=Datamodulo.TbProdutoPRD_REFER.Value+' - '+Datamodulo.TbProdutoPRD_DESCRI.Value;
//
EditRefer.Text := Datamodulo.TbProdutoPRD_REFER.Value;
EditQtde.Text  := Datamodulo.TbProdutoPRD_EMBALA.Value;
DBGridProd.Setfocus;
end;


procedure TFormEtiqbarra.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
{ try
    Datamodulo.TbProduto.Close;
  except
    uteis.erro  ('Impossível fechar a tabela "TbProduto". ');
  end;
  // volta Index Defaut
  Datamodulo.TbProduto.IndexName := 'XPRD_CODI';
}
  try
    TbCodbar.close;
  except
    uteis.erro  ('Impossível fechar a tabela "TbCodbar". ');
  end;
  //
  try
    TbNumer.close;
  except
    uteis.erro  ('Impossível fechar a tabela "TbNumer". ');
  end;
  //
{  try
    Datamodulo.TbParametros.Close;
  except
    uteis.erro  ('Impossível acessar a tabela "Parametros". ');
  end;   }
end;

procedure TFormEtiqbarra.DBGridProdCellClick(Column: TColumn);
begin
  //proc
  Selecionado;
end;

procedure TFormEtiqbarra.DBGridProdKeyDown(Sender: tObject; var Key: Word;
  Shift: TShiftState);
begin
  //proc
  Selecionado;
end;

procedure TFormEtiqbarra.DBGridProdKeyUp(Sender: tObject; var Key: Word;
  Shift: TShiftState);
begin
  //proc
  Selecionado;
end;

procedure TFormEtiqbarra.RadReferClick(Sender: tObject);
begin
LblNome.Visible:=True;
EditRefer.Visible :=True;
LblNome.Caption := 'Referência :';
EditRefer.setfocus;
EditRefer.MaxLength := 11;
EditRefer.Width := 102;
end;

procedure TFormEtiqbarra.RadNomeClick(Sender: tObject);
begin
LblNome.Visible:=True;
EditRefer.Visible :=True;
LblNome.Caption := 'Descrição:';
EditRefer.setfocus;
EditRefer.MaxLength := 40;
EditRefer.Width := 300;
end;

procedure TFormEtiqbarra.EditReferEnter(Sender: tObject);
begin
 EditRefer.SelectAll;
end;

procedure TFormEtiqbarra.EditReferExit(Sender: tObject);
begin
if RadNome.checked  then
   Begin
     Datamodulo.TbProduto.IndexName := 'XPRD_DESC';
     Datamodulo.TbProduto.FindNearest([EditRefer.text]);
     //proc
     Selecionado;
     DBGridProd.setfocus;
   end;
if RadRefer.checked  then
   Begin
     Datamodulo.TbProduto.IndexName := 'XPRD_REFE';
     if Datamodulo.TbProduto.Findkey([EditRefer.text]) = False Then
       begin
         messagebeep(10);
         uteis.aviso('Referência não encontrada !');
         Datamodulo.TbProduto.First;
       end;
     //proc
     Selecionado;
     DBGridProd.setfocus;
   end;
end;

procedure TFormEtiqbarra.BitImprimirClick(Sender: tObject);
var
wContador,i,wdigito,wsoma,nn : integer;
wdiv:double;
wdivres:string;
begin
wContador := 0;i:=0;
 // Validar campos
if Datamodulo.TbProdutoPRD_CODBARRA.Value = '' then
   begin
   uteis.erro  ('Não foi cadastrado o código de barras do produto.');
   exit;
   end;

 if EditLote.Text = '' then
   begin
     uteis.erro  ('É preciso digitar o Lote');
     EditLote.SetFocus;
   end;
 if EditValidade.Text = '' then
   begin
     uteis.erro  ('É preciso digitar a Validade');
     EditValidade.SetFocus;
   end;
 if Copy(EditQtde.Text,1,2)= '  ' then
   begin
     uteis.erro  ('É preciso digitar a quantidade da embalagem');
     EditQtde.SetFocus;
   end;
 if not(EditCopias.Text >= '1') then
   begin
     uteis.erro  ('É preciso digitar a qtde de cópias. ');
     EditQtde.SetFocus;
   end;
  // limpar registros antes de iniciar
  TbCodBar.First;
  While not TbCodbar.EOF do
    TbCodBar.Delete;
   //
   TbCodBar.Refresh;
   // Gravar etiquetas nas tabela
   While (wContador < StrToInt(EditCopias.text)) do
     begin
     TbCodbar.Insert;
     if Datamodulo.TbParametrosPMT_DESCPRODRES.Value then
       // uso descri resumida
       TbCodbarCB_PRD_DESCRI.Value:= Datamodulo.TbProdutoPRD_DESCRI_RES.Value
     else
       // uso descri noramal
      TbCodbarCB_PRD_DESCRI.Value:= Datamodulo.TbProdutoPRD_DESCRI.Value;

     TbCodbarCB_PRD_REFER.Value := Datamodulo.TbProdutoPRD_REFER.Value;
     TbCodbarCB_PRD_COMPL.Value := Datamodulo.TbProdutoPRD_COMPL.Value;
     // formacao do código de barras
     TbCodbarCB_EAN13.Value     := Datamodulo.TbParametrosPMT_EANPAIS.Value+Datamodulo.TbParametrosPMT_EANEMPRESA.Value+Datamodulo.TbProdutoPRD_CODBARRA.Value;
     // calculo do digito verificador
     // multiplicar na sequencia por 1 e 3 e somar o resultado
     nn:=1;
     wsoma:=0;
     For i := 1 to 12 do
     begin
      wsoma := wsoma+StrToInt(copy(TbCodbarCB_EAN13.Value,i,1))*nn;
      if nn=1 then
         nn:=3
      else
         nn:=1;
     end;
     //
     // a soma diminui do multiplo de 10 imediatamente superior
     wdiv:=Int(wsoma/10);
     wdivRes:=FloatToStr(wdiv);
     wdigito:=(StrToInt(wdivres)+1)*10;
     wdigito:=wdigito-wsoma;
     //
     TbCodbarCB_EAN13.Value:=TbCodbarCB_EAN13.Value+IntToStr(wdigito);
     TbCodbarCB_LOTE.Value      := EditLote.Text;
     TbCodbarCB_VALIDADE.Value  := EditValidade.Text;
     //TbCodBarCB_PRD_UND.Value   := Datamodulo.TbProdutoPRD_UND.Value;
     TbCodbarCB_QUANT.Value     := Trim(EditQtde.Text)+' '+Datamodulo.TbProdutoPRD_UND.Value;
     TbCodbar.post;
     TbCodbar.First;
     wContador := wContador + 1;
     end;
   // atualizar lote e validade
   TbNumer.Edit;
   TbNumerCB_LOTE.Value := EditLote.Text;
   TbNumerCB_VALIDADE.Value := EditValidade.Text;
   TbNumer.post;
   TbNumer.refresh;

// modelo 1 - grande
 try
   try
    RelEtiqBarra01 := TRelEtiqBarra01.Create(Application);
    if LboxModelos.ItemIndex = 0 then
      if RadVideo.checked  then
         RelEtiqBarra01.Preview
       else
         RelEtiqBarra01.Print;
  finally
     RelEtiqBarra01.Destroy;
     RelEtiqBarra01 := nil
  end;
 except
   //beep;
   uteis.erro  ('Ocorreu um erro na Etiqueta Modelo1!');
 end;
// modelo 2 média
try
   try
    RelEtiqBarra02 := TRelEtiqBarra02.Create(Application);
    if LboxModelos.ItemIndex = 1 then
      if RadVideo.checked  then
         RelEtiqBarra02.Preview
       else
         RelEtiqBarra02.Print;
  finally
     RelEtiqBarra02.Destroy;
     RelEtiqBarra02 := nil
  end;
 except
   //beep;
   uteis.erro  ('Ocorreu um erro na Etiqueta Modelo2!');
 end;
// modelo 2 pequena
try
   try
    RelEtiqBarra03 := TRelEtiqBarra03.Create(Application);
    if LboxModelos.ItemIndex = 2 then
      if RadVideo.checked  then
         RelEtiqBarra03.Preview
       else
         RelEtiqBarra03.Print;
  finally
     RelEtiqBarra03.Destroy;
     RelEtiqBarra03 := nil
  end;
 except
   //beep;
   uteis.erro  ('Ocorreu um erro na Etiqueta Modelo3!');
 end;

end;

procedure TFormEtiqbarra.EditQtdeKeyPress(Sender: tObject; var Key: Char);
begin
 // deixo aceitar somente numeros
  if not(Key in['0','1','2','3','4','5','6','7','8','9',#8]) then
    begin
      //beep;
      Key:=#0;
    end;
end;

procedure TFormEtiqbarra.EditCopiasKeyPress(Sender: tObject;
  var Key: Char);
begin
 // deixo aceitar somente numeros
  if not(Key in['0','1','2','3','4','5','6','7','8','9',#8]) then
    begin
      //beep;
      Key:=#0;
    end;
end;

procedure TFormEtiqbarra.Bit_SairClick(Sender: tObject);
begin
close;
end;

end.
