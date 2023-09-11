{***********************************************************
 Programa...: Pag0005  - Nome formulario = FormCheques
 Objetivo...: Lista de Cheques a imprimir
 Analista...: Márcio Neu Pacheco
 Programador: Márcio Neu Pacheco

 Comentários:

 Criação..........: Ago/01
 Ultima Alteração.:
 Alterado por.....:

************************************************************}
unit Pag0006;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, DBCtrls, StdCtrls, Buttons, RwFunc;

type
  TFormCheque = class(TForm)
    DBGrid1: TDBGrid;
    Label1: TLabel;
    DBLookupBanco: TDBLookupComboBox;
    SpdImprime: TSpeedButton;
    BitLimpa: TBitBtn;
    SpeedButton1: TSpeedButton;
    procedure FormShow(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure SpdImprimeClick(Sender: tObject);
    procedure DBGrid1DblClick(Sender: tObject);
    procedure BitLimpaClick(Sender: tObject);
    procedure DBLookupBancoEnter(Sender: tObject);
    procedure DBLookupBancoExit(Sender: tObject);
  private
    { Private declarations }
   wAbCheque,wAbChequeItens,wAbBanco : Boolean;  // flag de abertura Defaut é False
  public
    { Public declarations }
  end;

var
  FormCheque: TFormCheque;

implementation

uses database;





{$R *.DFM}

procedure TFormCheque.FormShow(Sender: tObject);
begin
 Left := 94;
 Top  := 90;
// Abrir tabelas de cheques
if Datamodulo.TbCheque.Active <> True then
 Begin
 wAbCheque := True;
 try
    Datamodulo.TbCheque.DatabaseName := Preopen('Pagar');
    Datamodulo.TbCheque.IndexFieldNames := 'BAN_CODIGO';
    Datamodulo.TbCheque.Open;
 except
    uteis.erro  ('Impossível acessar a Tabela "TbCheque"');
 end;
 end
 else
  // troca indice da tabela
  Datamodulo.TbCheque.IndexFieldNames := 'BAN_CODIGO';

if Datamodulo.TbChequeItens.Active <> True then
 Begin
 wAbChequeItens := True;
 try
    Datamodulo.TbChequeItens.DatabaseName := Preopen('Pagar');
    Datamodulo.TbChequeItens.IndexName := 'XCHQ_CODI_IT';
    Datamodulo.TbChequeItens.Open;
 except
    uteis.erro  ('Impossível acessar a Tabela de "TbChequeItens"');
 end;
 end;
if (wAbcheque) or (wAbChequeItens) then
  begin
  // Likar tabelas
  Datamodulo.TbChequeItens.MasterSource := Datamodulo.DsCheque;
  Datamodulo.TbChequeItens.MasterFields := 'CHQ_CODIGO';
  end;
if Datamodulo.TbBanco.Active <> True then
 Begin
 wAbBanco := True;
  try
     Datamodulo.TbBanco.DatabaseName := Preopen('Bancos');
     Datamodulo.TbBanco.IndexFieldNames := 'BAN_CODIGO';
     Datamodulo.TbBanco.open;
   except
     uteis.erro  ('Impossível acessar a tabela "TbBanco".');
   end;
 end;

end;

procedure TFormCheque.FormClose(Sender: tObject; var Action: TCloseAction);
begin
if wAbCheque then
 Begin
 try
    Datamodulo.TbCheque.Close;
 except
    uteis.erro  ('Impossível fechar a Tabela  "TbCheque"');
 end;
 end
 else
   // volta indice principal
  Datamodulo.TbCheque.IndexFieldNames := 'CHQ_CODIGO';

if wAbChequeItens then
 Begin
 try
    Datamodulo.TbChequeItens.Close;
 except
    uteis.erro  ('Impossível fechar a Tabela "TbChequeItens"');
 end;
 end;
if (wAbcheque) or (wAbChequeItens) then
  begin
  // tirar Link tabelas
  Datamodulo.TbChequeItens.MasterSource := Nil;
  Datamodulo.TbChequeItens.MasterFields := '';
  end;

if wAbBanco then
 Begin
 try
    Datamodulo.TbBanco.Close;
 except
    uteis.erro  ('Impossível fechar a Tabela de "TbBanco"');
 end;
 end;

end;

procedure TFormCheque.SpdImprimeClick(Sender: tObject);
var
 wMascara, wVal_Extenso,wEspaco1,wDataCheque:string;
 wImpressora:TextFile;
begin
if DBLookupBanco.Text = '' then
  begin
  uteis.aviso('É preciso selecionar o banco p/ imprimir cheques');
  exit;
  end;

 // *** imprime cheque *** //
 Assignfile (WImpressora, 'Lpt1');
 Rewrite (WImpressora);
 //
 // localizar-se no banco selecionado
 Datamodulo.TbCheque.FindKey([Datamodulo.TbBancoBAN_CODIGO.Value]);
 while(Datamodulo.TbChequeBAN_CODIGO.Value=Datamodulo.TbBancoBAN_CODIGO.Value)and not(Datamodulo.TbCheque.Eof) do
  begin
  if Datamodulo.TbChequeCHQ_IMP.Value <> 'S' then
   begin
   // Deixa linhas em branco na impressão para casar os campos da duplicata.
   //
   wEspaco1 :='                                                  ';//50
   wMascara := FloatToStrF(Datamodulo.TbChequeCHQ_TOTAL.Value, ffNumber, 12, 2);
   Writeln(WImpressora,wEspaco1+wMascara);
   Writeln(WImpressora,''+'');
   //
   WVal_Extenso := Extenso(Datamodulo.TbChequeCHQ_TOTAL.Value,0);
   wEspaco1 :='      '; //6
   Writeln(WImpressora,''+wEspaco1+WVal_Extenso);
   //
   Writeln(WImpressora,''+'');
   Writeln(WImpressora,''+'');
   //
   Writeln(WImpressora,' '+''+Datamodulo.TbChequeCHQ_NOMINAL.Value);
   //
   Writeln(WImpressora,''+'');
   wDataCheque:=DataExtenso(Datamodulo.TbChequeCHQ_DATA.Value);
   wEspaco1 := '                         ';// 25
   Writeln(WImpressora,''+wEspaco1+wDataCheque);
   //
   Writeln(WImpressora,''+'');
   Writeln(WImpressora,''+'');
   Writeln(WImpressora,''+'');
   Writeln(WImpressora,''+'');
   Writeln(WImpressora,''+'');
   Writeln(WImpressora,''+'');
   Writeln(WImpressora,''+'');
   Writeln(WImpressora,''+'');
   Writeln(WImpressora,''+'');
   Writeln(WImpressora,''+'');
   // gravar flag =
   Datamodulo.TbCheque.Edit;
   Datamodulo.TbChequeCHQ_IMP.Value := 'S';
   Datamodulo.TbCheque.Post;
   end;
   Datamodulo.TbCheque.Next;
  end;// end do while.
  CloseFile(WImpressora);
end;

procedure TFormCheque.DBGrid1DblClick(Sender: tObject);
begin
if uteis.confirmacao ( 'Libera cheque p/ imprimir ?')= Mryes then
  Begin
  Datamodulo.TbCheque.Edit;
  Datamodulo.TbChequeCHQ_IMP.Value := '';
  Datamodulo.TbCheque.post;
  Datamodulo.TbCheque.Refresh;
  end;
end;

procedure TFormCheque.BitLimpaClick(Sender: tObject);
begin
 Datamodulo.TbCheque.First;
 while not(Datamodulo.TbCheque.Eof) do
  if Datamodulo.TbChequeCHQ_IMP.Value = 'S' then
    begin
     // antes deletar os itens do cheque
     while(Datamodulo.TbChequeCHQ_CODIGO.Value=Datamodulo.TbChequeItensCHQ_CODIGO.Value) and
      not(Datamodulo.TbChequeItens.Eof) do
        Datamodulo.TbChequeItens.Delete;
     //
     Datamodulo.TbCheque.Delete;
    end
  else
     Datamodulo.TbCheque.Next;

end;

procedure TFormCheque.DBLookupBancoEnter(Sender: tObject);
begin
DBLookupBanco.Color := $0080FFFF;
end;

procedure TFormCheque.DBLookupBancoExit(Sender: tObject);
begin
DBLookupBanco.Color := clWindow;
end;

end.
