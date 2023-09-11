unit TESTE1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, DB, DBTables,RwFunc;

type
  TForm1 = class(TForm)
    TQTeste: TQuery;
    TQFatura: TQuery;
    DsQTeste: TDataSource;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    BitBtn1: TBitBtn;
    DsQFatura: TDataSource;
    TQTeste2: TQuery;
    DsQTeste2: TDataSource;
    DBGrid3: TDBGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    TQTeste2REPREP_CODIGO: TStringField;
    TQTeste2REP_GRUPO: TStringField;
    TQTeste2REG_CODIGO: TStringField;
    TQTeste2REP_FUNCAO: TStringField;
    TQTeste2REP_SUPERVISAO: TStringField;
    TQTeste2REP_RAZAO: TStringField;
    TQTeste2REP_NOME: TStringField;
    TQTeste2REP_ENDERE: TStringField;
    TQTeste2REP_CIDADE: TStringField;
    TQTeste2REP_UF: TStringField;
    TQTeste2REP_CEP: TStringField;
    TQTeste2REP_FONE: TStringField;
    TQTeste2REP_FAX: TStringField;
    TQTeste2REP_EMAIL: TStringField;
    TQTeste2REP_TIPO: TStringField;
    TQTeste2REP_SITUACAO: TStringField;
    TQTeste2REP_OBS: TMemoField;
    TQTeste2REP_QUOTA: TFloatField;
    TQTeste2REP_NDEPEND: TSmallintField;
    TQTeste2REP_DTNASC: TDateTimeField;
    TQTeste2REP_INSC: TStringField;
    TQTeste2REP_CGC: TStringField;
    TQTeste2REPEMP_CODIGO: TStringField;
    TQTeste2REP_CELULAR: TStringField;
    TQTeste2REP_CONTA: TStringField;
    TQTeste2REP_AGENCIA: TStringField;
    TQTeste2REP_BANCO: TStringField;
    TQTeste2REP_BANCOFAVOR: TStringField;
    TQTeste2FAT_CODIGO: TStringField;
    TQTeste2FAT_NPARCELAS: TSmallintField;
    TQTeste2PCL_CODIGO: TStringField;
    TQTeste2CLI_CODIGO: TStringField;
    TQTeste2FATREP_CODIGO: TStringField;
    TQTeste2CCT_CODIGO: TStringField;
    TQTeste2PCX_CODIGO: TStringField;
    TQTeste2FAT_PREVISAO: TBooleanField;
    TQTeste2PED_CODIGO: TStringField;
    TQTeste2FAT_QTDITEM: TFloatField;
    TQTeste2FAT_VL_LIQ: TFloatField;
    TQTeste2FAT_VLFAT: TFloatField;
    TQTeste2FAT_VLNCOMIS: TFloatField;
    TQTeste2FAT_DTEMIS: TDateTimeField;
    TQTeste2FAT_COMIS1: TFloatField;
    TQTeste2FAT_COMIS2: TFloatField;
    TQTeste2FAT_COMIS3: TFloatField;
    TQTeste2FAT_OBS: TStringField;
    TQTeste2FAT_OPERACAO: TStringField;
    TQTeste2FAT_BASEICMS: TFloatField;
    TQTeste2FAT_ALIQUOTA: TFloatField;
    TQTeste2FAT_VL_IPI: TFloatField;
    TQTeste2FAT_CANCELADA: TBooleanField;
    TQTeste2FAT_BASESUB: TFloatField;
    TQTeste2FAT_ICMSRET: TFloatField;
    TQTeste2FAT_DESP_ACES: TFloatField;
    TQTeste2FAT_OBSLIVRO: TStringField;
    TQTeste2FAT_OPERUF: TStringField;
    TQTeste2FAT_LIVRO: TBooleanField;
    TQTeste2FATEMP_CODIGO: TStringField;
    procedure BitBtn1Click(Sender: tObject);
    procedure DBGrid3CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.BitBtn1Click(Sender: tObject);
var
wcodsuper:string;
begin
   wcodsuper:= '010';
   TQTeste2.Close;
   TQTeste2.DatabaseName := Preopen('Receber');
   TQTeste2.SQL.Clear;
   TQTeste2.SQL.ADD('SELECT REP.*,FAT.* FROM REP0000 REP LEFT OUTER JOIN FAT0000 FAT ON Fat.REP_CODIGO=Rep.REP_CODIGO');
   TQTeste2.SQL.ADD('Where Rep.REP_CODIGO='''+wcodsuper+'''OR Rep.REP_SUPERVISAO='''+wcodsuper+'''');
   TQTeste2.SQL.ADD('Order by FAT.REP_CODIGO');
   TQTeste2.Open;
   Edit1.Text := IntToStr(TQTeste2.RecordCount);

{  TQTeste2.Close;
   TQTeste2.DatabaseName := Preopen('Receber');
   TQTeste2.SQL.Clear;
   TQTeste2.SQL.ADD('SELECT REP.*,FAT.* FROM REP0000 REP,FAT0000 FAT');
   TQTeste2.SQL.ADD('Where Rep.REP_CODIGO=Fat.REP_CODIGO IN');
   TQTeste2.SQL.ADD('(SELECT REP.* FROM REP0000 REP Where Rep.REP_CODIGO='''+wcodsuper+'''OR Rep.REP_SUPERVISAO='''+wcodsuper+''')');
   TQTeste2.SQL.ADD('Order by Fat.FAT_CODIGO');
   TQTeste2.Open;
   Edit1.Text := IntToStr(TQTeste2.RecordCount);
 }
   TQTeste.Close;
   TQTeste.DatabaseName := Preopen('Receber');
   TQTeste.SQL.Clear;
   TQTeste.SQL.ADD('Select REP_CODIGO, REP_SUPERVISAO, REP_RAZAO, REP_NOME, REP_QUOTA, REP_FUNCAO FROM REP0000');
   TQTeste.SQL.ADD('Where REP_CODIGO='''+wcodsuper+'''OR REP_SUPERVISAO='''+wcodsuper+'''');
   TQTeste.SQL.ADD('Order by REP_CODIGO');
   TQTeste.Open;

   // Linkar
   TQFatura.DataSource := DsQTeste;
   TQFatura.Close;
   TQFatura.DatabaseName := Preopen('Receber');
   TQFatura.SQL.Clear;

   TQFatura.SQL.ADD('Select FAT_CODIGO, REP_CODIGO, FAT_QTDITEM, FAT_VL_LIQ, FAT_VLFAT, FAT_DTEMIS FROM FAT0000');
   TQFatura.SQL.ADD('Where REP_CODIGO =:REP_CODIGO');
   TQFatura.SQL.ADD('Order by REP_CODIGO');
   TQFatura.Open;
   Edit2.Text := IntToStr(TQFatura.RecordCount);
end;

procedure TForm1.DBGrid3CellClick(Column: TColumn);
begin
  Edit2.Text := IntToStr(TQFatura.RecordCount);
end;

end.
