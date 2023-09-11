unit Car0001;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, StdCtrls, Mask, DBCtrls, DBCGrids, Db, DBTables, ExtCtrls, Buttons,
  ComCtrls;

type
  TFormGImpCaract = class(TForm)
    CrtGr_Produtos: TDBCtrlGrid;
    CkFCR_IMPRIMIR: TDBCheckBox;
    DbPRD_REFER: TDBEdit;
    DbPRD_DESCRI: TDBEdit;
    DbFCR_NFNUMER: TDBEdit;
    TbPrdTemp: TTable;
    DsPrdTemp: TDataSource;
    TbPrdTempPRD_REFER: TStringField;
    TbPrdTempPRD_DESCRI: TStringField;
    TbPrdTempFCR_IMPRIMIR: TBooleanField;
    TbPrdTempFCR_NFNUMER: TStringField;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Panel3: TPanel;
    Bit_Relatorio: TBitBtn;
    Documento: TRichEdit;
    procedure FormShow(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure TbPrdTempAfterInsert(DataSet: TDataSet);
    procedure Bit_RelatorioClick(Sender: tObject);
    procedure FormCloseQuery(Sender: tObject; var CanClose: Boolean);
  private
  wTbTmpOk : Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormGImpCaract: TFormGImpCaract;

implementation

uses NFImprim, RWFunc, ADJ0001, Men0001;

{$R *.DFM}



procedure TFormGImpCaract.FormShow(Sender: tObject);
var wQtLinha :integer;
begin
Screen.Cursor := crHourGlass;
  try
  TbPrdTemp.DatabaseName := Preopen('produtos');
  TbPrdTemp.Open;
  except
  Screen.Cursor := crDefault;
  uteis.erro  ('Ocorreu um Erro ao abrir a a Tabela Temporária!');
  end;
{Prparando Dados}
wTbTmpOk := False;
TbPrdTemp.First;
while Not TbPrdTemp.IsEmpty do
  TbPrdTemp.Delete;
FormNFImprime.TbNFiscalIten.First;
wQtLinha := 0;
while not FormNFImprime.TbNFiscalIten.Eof do
  begin
  wQtLinha := wQtLinha + 1;
  TbPrdTemp.Insert;
  TbPrdTempPRD_REFER.Value    := FormNFImprime.TbNFiscalItenPRD_REFER.Value;
  TbPrdTempPRD_DESCRI.Value   := FormNFImprime.TbNFiscalItenPRD_DESCRI.Value;
  TbPrdTempFCR_IMPRIMIR.Value := True;
  TbPrdTempFCR_NFNUMER.Value  := FormNFImprime.TbNFiscalItenNF_NUMERO.Value;
  TbPrdTemp.Post;
  FormNFImprime.TbNFiscalIten.Next;
  end;
//CrtGr_Produtos.RowCount := wQtLinha;
wTbTmpOk := True;
Screen.Cursor := crDefault;
end;

procedure TFormGImpCaract.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
TbPrdTemp.Close;
end;

procedure TFormGImpCaract.TbPrdTempAfterInsert(DataSet: TDataSet);
begin
if (TbPrdTemp.State in [dsInsert])and(wTbTmpOk = True)then
   TbPrdTemp.Cancel;
end;

procedure TFormGImpCaract.Bit_RelatorioClick(Sender: tObject);
var wNomeArq:String;
begin
TbPrdTemp.First;
while not TbPrdTemp.Eof do
  begin
  wNomeArq := FrmMenu.PathNewFicha+'\'+TbPrdTempPRD_REFER.Value+'.Rtf';
  if FileExists(wNomeArq)then
     begin
     if TbPrdTempFCR_IMPRIMIR.Value = True then
        begin
        Documento.Clear;
        Documento.Lines.LoadFromFile(wNomeArq);
        Documento.Print(wNomeArq);
        end;
     end;
  TbPrdTemp.Next;
  end;
Close;
end;

procedure TFormGImpCaract.FormCloseQuery(Sender: tObject;
  var CanClose: Boolean);
begin
TbPrdTemp.Refresh;
end;

end.
