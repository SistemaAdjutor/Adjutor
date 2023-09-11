unit GimpFich;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons,RwFunc;

type
  TFormGimpFichas = class(TForm)
    PrinterSetupDialog1: TPrinterSetupDialog;
    GroupBox3: TGroupBox;
    RadVideo: TRadioButton;
    RadImpressora: TRadioButton;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    BitConfig: TBitBtn;
    Bit_Sair: TBitBtn;
    procedure BitConfigClick(Sender: tObject);
    procedure SpeedButton1Click(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure SpeedButton2Click(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure SpeedButton3Click(Sender: tObject);
    procedure Bit_SairClick(Sender: tObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormGimpFichas: TFormGimpFichas;

implementation

uses QRClie05, Database, QRClie06;

{$R *.DFM}




procedure TFormGimpFichas.BitConfigClick(Sender: tObject);
begin
PrinterSetupDialog1.Execute;
end;

procedure TFormGimpFichas.SpeedButton1Click(Sender: tObject);
begin
  // imprimir
 if RadVideo.checked  then
   RelCliente05.Preview
 else
   RelCliente05.Print;

end;

procedure TFormGimpFichas.FormShow(Sender: tObject);
begin
Left := 390;
Top  := 35;

 try
  RelCliente05 := TRelCliente05.Create(Application);
  RelCliente06 := TRelCliente06.Create(Application);
 except
   uteis.erro  ('Um ou mais relatórios não foram criados na memória!');
 end;


 With RelCliente05.TQFatParcel do
  begin
   Close;
   DatabaseName:=PreOpen('Receber');
   SQL.Clear;
   Sql.Add('SELECT FAT_PC01.FAT_CODIGO,FAT_PC01.FPC_NUMER,FAT_PC01.FPC_DTEMIS,FAT_PC01.FPC_VENCTO,FAT_PC01.FPC_PAGTO,FAT_PC01.FPC_VLPARC,FAT_PC01.FPC_VLPAGO,FAT_PC01.CLI_CODIGO,FAT_PC01.FPC_STATUS,Fat0000.FAT_CODIGO,Fat0000.FAT_CANCELADA');
   Sql.Add('FROM FAT_PC01, FAT0000');
   Sql.Add('WHERE FAT_PC01.FAT_CODIGO=Fat0000.FAT_CODIGO and Fat0000.FAT_CANCELADA=False and FAT_PC01.CLI_CODIGO='''+Datamodulo.TbClienteCLI_CODIGO.Value+'''');
   Sql.Add('ORDER BY FPC_DTEMIS, FPC_NUMER');
   Open;
  end;
 //
 With RelCliente06.TQFatItens do
    begin
    close;
    DatabaseName:=PreOpen('Receber');
    sql.Clear;
    Sql.Add('SELECT Fat_it02.FAT_CODIGO,Fat_it02.PRD_CODIGO,Fat_it02.PRD_REFER,Fat_it02.FIT_QTDE,Fat_it02.FIT_IPIALIQ,Fat_it02.FIT_PRECO,Fat_it02.EMP_CODIGO,Prd0000.PRD_DESCRI,'+
    'Prd0000.PRD_REFER,Fat0000.FAT_CODIGO,Fat0000.CLI_CODIGO,Fat0000.FAT_DTEMIS,Fat0000.FAT_CANCELADA');
    Sql.Add('FROM FAT_IT02, PRD0000, FAT0000');
    Sql.Add('WHERE Fat0000.FAT_CANCELADA=False and Fat_it02.PRD_REFER=Prd0000.PRD_REFER AND Fat_it02.FAT_CODIGO=Fat0000.FAT_CODIGO and CLI_CODIGO='''+Datamodulo.TbClienteCLI_CODIGO.Value+'''');
    Sql.Add('ORDER BY Fat0000.FAT_DTEMIS');
    Open;
    end;    

end;

procedure TFormGimpFichas.SpeedButton2Click(Sender: tObject);
begin
// imprimir
if RadVideo.checked  then
  RelCliente06.Preview
else
  RelCliente06.Print;

end;

procedure TFormGimpFichas.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
  RelCliente05.TQFatParcel.Close;
  RelCliente06.TQFatItens.Close;
  //
  RelCliente05.Destroy;
  RelCliente05 := nil;
  RelCliente06.Destroy;
  RelCliente06 := nil;

end;

procedure TFormGimpFichas.SpeedButton3Click(Sender: tObject);
begin
// imprimir ambas as fichas
 if RadVideo.checked  then
   begin
   RelCliente05.Preview;
   RelCliente06.Preview;
   end
 else
   begin
   RelCliente05.Print;
   RelCliente06.Print;
   end;
end;

procedure TFormGimpFichas.Bit_SairClick(Sender: tObject);
begin
close;
end;

end.
