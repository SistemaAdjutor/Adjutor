{**********************************************************
| Programa...: NFImp2 - Nome Form = FormOpcoesNF
| Objetivo...: Impressao de Notas e Outros
| Analista...: Marcio Neu Pacheco
| Programador: Márcio
|
|
| Criação..........: ago/02
| Ultima Alteração.: Jan/03
| Alterado por.....: Márcio
|
***********************************************************}
unit NFImp2;

interface

uses
 Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
 StdCtrls, Buttons, RwFunc, RwEspec, Db, DBTables, ExtCtrls, DBCtrls, Mask,
  rxToolEdit,  rxCurrEdit,inifiles, RDprint;


type
  TFormOpcoesNF = class(TForm)
    Bit_Ok: TBitBtn;
    Bit_Sair: TBitBtn;
    GroupBox1: TGroupBox;
    RadNota: TRadioButton;
    RadPreNota: TRadioButton;
    RadMinuta: TRadioButton;
    RadEstorno: TRadioButton;
    RadEtiquetas: TRadioButton;
    RadRecibo: TRadioButton;
    RadCaract: TRadioButton;
    Gp_Etiqueta: TGroupBox;
    EdtFim: TEdit;
    Label8: TLabel;
    EdtInicio: TEdit;
    Label7: TLabel;
    Label9: TLabel;
    EditQtde: TEdit;
    procedure MudaCorCampos(Sender: tObject);
    procedure Bit_SairClick(Sender: tObject);
    procedure Bit_OkClick(Sender: tObject);
    procedure RadNotaClick(Sender: tObject);
    procedure RadPreNotaClick(Sender: tObject);
    procedure RadEstornoClick(Sender: tObject);
    procedure RadEtiquetasClick(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure RadReciboClick(Sender: tObject);
    Procedure EspacoCampo(wCampo:string;wTamanho:Integer);
    procedure EdtInicioExit(Sender: tObject);
    procedure EdtFimExit(Sender: tObject);
    procedure EditQtdeKeyPress(Sender: tObject; var Key: Char);
    procedure RadCaractClick(Sender: tObject);
  private
    { Private declarations }
    {campos}
    CampoEdit    :TEdit;
    CampoCurrency:TCurrencyEdit;
    wAbPedido,wAbPedItem,wAbReceber,wAbRecParce,wAbRecItem : Boolean;
    procedure EtiquetaNota;
    public
    { Public declarations }
    // dever ser public pois chama também do form anterior
    //procedure ImprimeNotaFiscal(wImprime:String);
  end;

var
  FormOpcoesNF: TFormOpcoesNF;

implementation

uses Database, NFImprim, QrMinuta, Ped0001, Car0001, Login, ADJ0001;

{$R *.DFM}







procedure TFormOpcoesNF.MudaCorCampos(Sender: tObject);
begin

  {CampoEdit :TEdit}
   if Assigned(CampoEdit) then
      begin
         CampoEdit.color := clWindow;
      end;
   if ActiveControl is TEdit then
      begin
         if TEdit(ActiveControl).color = $00D7D7D7 then
            begin
               exit;
            end;
         TEdit(ActiveControl).color := $0080FFFF;
         CampoEdit := TEdit(ActiveControl);
      end
   else
      begin
         CampoEdit := nil;
      end;


  {CampoCurrency :TCurrencyEdit}
   if Assigned(CampoCurrency) then
      begin
         CampoCurrency.color := clWindow;
      end;
   if ActiveControl is TCurrencyEdit then
      begin
         TMaskEdit(ActiveControl).color := $0080FFFF;
         CampoCurrency := TCurrencyEdit(ActiveControl);
      end
   else
      begin
         CampoCurrency := nil;
      end;


end;

procedure TFormOpcoesNF.Bit_SairClick(Sender: tObject);
begin
close;
end;

Procedure TFormOpcoesNF.EspacoCampo(wCampo:string;wTamanho:Integer);
// imprime espaco em branco p/ complementar tamanho do campo
var
i : integer;
wDifer : integer;
begin
wCompCampo :='';
wDifer:= wTamanho-Length(Trim(wCampo));
for i :=1 to wDifer do
 wCompCampo := wCompCampo+' ';  // sempre recebe mais um espaço

end;

Procedure TFormOpcoesNF.EtiquetaNota;
// Imprime etiquetas conforme o volume de itens na N.F.
// Modelo : Inquibra
//
var
 wNome1,wNome2,wEnde1,wende2,wcida1,wcida2,westa1,westa2:string;
 wTransp1,wtransp2,wnota1,wnota2,wVolume1,wvolume2,wMascara,wMascara2:string;
 wPeso1,Wpeso2:Double;
 wEtiqnota:Integer;
 wImpressora:TextFile;
 wEspaco1,wEspaco2,wEspaco3,wEspaco4:String;
begin
 screen.Cursor := crHourglass;
 Assignfile (WImpressora, 'Lpt1');
 Rewrite (WImpressora);
 // ja esta localizado no registro inicial
 // wetiqnota := StrToInt(FloatToStr(Int(FormNFImprime.TbNfiscalNF_QTDE.Value)));
 wEtiqnota := StrToInt(EditQtde.Text);
 while (FormNFImprime.TbNFiscalNF_NU_NOTA.Text>=EdtInicio.Text)and(FormNFImprime.TbNfiscalNF_NU_NOTA.Value<=EdtFim.Text)and not(FormNFImprime.TbNFiscal.Eof) do
   begin
   // primeira coluna da etiqueta
   Wnome1 := COPY(FormNFImprime.TbNfiscalNF_NOMECLI.Value,1,35);
   if FormNFImprime.TbNfiscalNF_CIDENT.Value = '' then
     begin
     Wende1 := FormNFImprime.TbNfiscalNF_ENDCLI.Value;
     Wcida1 := FormNFImprime.TbNfiscalNF_CIDCLI.value;
     Westa1 := FormNFImprime.TbNFiscalNF_ESTCLI.Value;
     end
   else
     // tem endereco de entrega
     begin
     Wende1 := FormNFImprime.TbNfiscalNF_ENDENT.Value;
     Wcida1 := FormNFImprime.TbNfiscalNF_CIDENT.value;
     Westa1 := FormNFImprime.TbNFiscalNF_ESTENT.Value;
     end;
   Wtransp1 := FormNFImprime.TbNfiscalNF_TRP_NOME.Value;
   Wnota1 := FormNFImprime.TbNfiscalNF_NU_NOTA.Value;
   Wvolume1 := FloatToStr(Int(FormNFImprime.TbNfiscalNF_QTDE.Value));
   WPeso1 := FormNFImprime.TbNfiscalNF_PESOBRU.Value;
   //
   Wetiqnota := Wetiqnota - 1;
   If Wetiqnota <= 0  then
     begin
     FormNFImprime.TbNfiscal.Next;
     Wetiqnota := StrToInt(FloatToStr(Int(FormNFImprime.TbNfiscalNF_QTDE.Value)));
     end;
   // Segunda coluna da etiqueta
   wnome2 := COPY(FormNFImprime.TbNfiscalNF_NOMECLI.Value,1,35);
   if FormNFImprime.TbNfiscalNF_CIDENT.Value = '' then
     begin
     Wende2 := FormNFImprime.TbNfiscalNF_ENDCLI.Value;
     Wcida2 := FormNFImprime.TbNfiscalNF_CIDCLI.value;
     Westa2 := FormNFImprime.TbNFiscalNF_ESTCLI.Value;
     end
   else
     // tem endereco de entrega
     begin
     Wende2 := FormNFImprime.TbNfiscalNF_ENDENT.Value;
     Wcida2 := FormNFImprime.TbNfiscalNF_CIDENT.value;
     Westa2 := FormNFImprime.TbNFiscalNF_ESTENT.Value;
     end;
   wtransp2 := FormNFImprime.TbNfiscalNF_TRP_NOME.Value;
   wnota2   := FormNFImprime.TbNfiscalNF_NU_NOTA.Value;
   wvolume2 := FloatToStr(Int(FormNFImprime.TbNfiscalNF_QTDE.Value));
   wPeso2   := FormNFImprime.TbNfiscalNF_PESOBRU.Value;
   //
   //imprimir duas coluna de etiquetas
   //
   // Writeln(WImpressora,''+'');
   WEspaco1 :='    ';{4}
   EspacoCampo(wnome1,35);
   wEspaco2 := '    '+wCompCampo;{5}
   Writeln(WImpressora,wEspaco1+wNome1+wEspaco2+wNome2);
   //
   Writeln(WImpressora,''+'');
   EspacoCampo(wende1,32);
   wEspaco2:='        '+wCompCampo;{8}
   Writeln(WImpressora,''+WEspaco1+wEnde1+wEspaco2+wEnde2);
   //
   EspacoCampo(wcida1,20);
   wEspaco1 := '     '; {5}
   wEspaco2 := '       '+wCompCampo;{7}
   EspacoCampo(wcida2,20);
   wEspaco4 := '        '+wCompCampo;{8}
   wEspaco3 := '          ';{10}
   Writeln(WImpressora,wEspaco1+wCida1+wEspaco2+wEsta1+wEspaco3+wCida2+wEspaco4+wEsta2);
   Writeln(WImpressora,''+'');  // linha em branco
   EspacoCampo(wTransp1,30);
   wEspaco1:= '          ';{10}
   wEspaco2:='         '+wCompCampo;{9}
   Writeln(WImpressora,wEspaco1+wTransp1+wEspaco2+wTransp2);
   //
   Writeln(WImpressora,''+'');
   //
   wEspaco1:= '           '; {12}
   Writeln(WImpressora,wEspaco1+wNota1+wEspaco1+WEspaco1+wEspaco1+wNota2);
   wMascara := FloatToStrF(wPeso1, ffNumber, 12, 2);
   wMascara2 := FloatToStrF(wPeso2, ffNumber, 12, 2);
   wEspaco1 := '          ';{10}
   wEspaco2 := '                 '; {17}
   Writeln(wImpressora,''+'');
   Writeln(wImpressora,wEspaco1+wVolume1+wEspaco2+wMascara+wEspaco2+wVolume2+wEspaco2+wMascara2);
   Writeln(wImpressora,''+'');
   Writeln(wImpressora,''+'');
   Writeln(WImpressora,''+'');
   Writeln(WImpressora,''+'');
   //
   Wetiqnota := Wetiqnota - 1;
   If Wetiqnota <= 0  then
     begin
     FormNFImprime.TbNfiscal.Next;
     Wetiqnota := StrToInt(FloatToStr(Int(FormNFImprime.TbNfiscalNF_QTDE.Value)));
     end;
   end;//end do while
   //
 CloseFile(WImpressora);
 screen.Cursor := crDefault;
end;



procedure TFormOpcoesNF.Bit_OkClick(Sender: tObject);
begin


if RadEtiquetas.checked  then
  begin
  //wnumeronota:= FormNFImprime.TbNFiscalNF_NU_NOTA.Value;
  //FormNFImprime.TbNFiscal.FindKey([wnumeronota]);
  //PreNota();      //imprimir
  // ETIQUERA MODELO INQUIBRA
  Gp_Etiqueta.Visible := True;
  GrBoxMinuta.Visible := False;
  //
  EtiquetaNota;     // proc. local
  //
  EdtInicio.Text := '';
  EdtFim.Text := '';
  Gp_Etiqueta.Visible := False;
  FormOpcoesNf.Width := 241;
  RadEtiquetas.Checked  := False;
  end;

end;

procedure TFormOpcoesNF.RadNotaClick(Sender: tObject);
begin
FormOpcoesNf.Width := 241;
end;

procedure TFormOpcoesNF.RadPreNotaClick(Sender: tObject);
begin
FormOpcoesNf.Width := 241;
end;

procedure TFormOpcoesNF.RadEstornoClick(Sender: tObject);
begin
FormOpcoesNf.Width := 241;
end;

procedure TFormOpcoesNF.RadEtiquetasClick(Sender: tObject);
begin
Gp_Etiqueta.Visible := True;
GrBoxMinuta.Visible := False;
EdtInicio.Text:=FormNFImprime.TbNFiscalNF_NU_NOTA.Value;
EditQtde.Text :=FloatToStr(Int(FormNFImprime.TbNfiscalNF_QTDE.Value));
EdtInicio.SetFocus;
FormOpcoesNf.Width := 515;
end;

procedure TFormOpcoesNF.FormShow(Sender: tObject);
begin
FormOpcoesNf.Width := 241;
Top:= 275;
Left:=115;
 {ativa o método ao evento OnActiveControlChange}
  Screen.OnActiveControlChange   := MudaCorCampos;

end;

procedure TFormOpcoesNF.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin

Screen.OnActiveControlChange := NIL;
end;

procedure TFormOpcoesNF.RadReciboClick(Sender: tObject);
begin
FormOpcoesNf.Width := 241;
end;

procedure TFormOpcoesNF.EdtInicioExit(Sender: tObject);
begin
EdtInicio.Text:= StrZero(EdtInicio.Text,6);
  if FormNFImprime.TbNfiscal.Findkey([EdtInicio.text])= False then
     uteis.erro  ('No.de Nota não esta na lista ou não existe.');
  EdtFim.Text := EdtInicio.Text;
end;

procedure TFormOpcoesNF.EdtFimExit(Sender: tObject);
begin
EdtFim.Text:= StrZero(EdtFim.Text,6);
end;

procedure TFormOpcoesNF.EditQtdeKeyPress(Sender: tObject; var Key: Char);
begin
  // deixo aceitar somente numeros
  if not(Key in['0','1','2','3','4','5','6','7','8','9',#8]) then
    begin
    //beep;
    Key:=#0;
    end;
end;

procedure TFormOpcoesNF.RadCaractClick(Sender: tObject);
begin
FormOpcoesNf.Width := 241;
end;

end.
