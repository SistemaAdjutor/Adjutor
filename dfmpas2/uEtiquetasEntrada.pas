unit uEtiquetasEntrada;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Mask,  Vcl.StdCtrls,
  Vcl.Buttons, ACBrBase, ACBrDevice, ACBrETQ, Vcl.Samples.Spin, JvExMask, JvToolEdit;

type
  TFrmEtiquetasEntrada = class(TForm)
    GrBEtiqueta: TGroupBox;
    Label9: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    EdtRefer: TEdit;
    EditDescri: TEdit;
    Gb_Estilo_Etiqueta: TGroupBox;
    rbModelo1: TRadioButton;
    BitImprimeEtiq: TBitBtn;
    BitEtiqFechar: TBitBtn;
    Label4: TLabel;
    EdtEmpresa: TEdit;
    Label5: TLabel;
    ACBrETQ: TACBrETQ;
    Edit1: TSpinEdit;
    EdtQtdItem: TSpinEdit;
    RxDataEmbalagem: TJvDateEdit;
    procedure BitEtiqFecharClick(Sender: TObject);
    procedure BitImprimeEtiqClick(Sender: TObject);
  private
    { Private declarations }
    vRefer: String;
    vDescri: String;
    vQtdItens: String;
    procedure AtivarACBrETQ ;
    procedure SetRefer(const Value: string);
    procedure SetDescri(const Value: String);
    procedure SetQtdItens(const Value: String);
  public
    { Public declarations }
    Property Refer: string Read vRefer Write SetRefer;
    Property Descri: String Read vDescri Write SetDescri;
    Property QtdItens: String Read vQtdItens Write SetQtdItens;
  end;

var
  FrmEtiquetasEntrada: TFrmEtiquetasEntrada;

Const
     STX = chr(2);
     CR  = chr(13);
     LF = chr(10);
     SOH = chr(1);


implementation

{$R *.dfm}
uses Uteis, iniciodb;

procedure TFrmEtiquetasEntrada.BitEtiqFecharClick(Sender: TObject);
begin
     Close;
end;

procedure TFrmEtiquetasEntrada.AtivarACBrETQ ;
begin
  with ACBrETQ do
  begin
     Porta         := '\\127.0.0.1\Argox';

     LimparMemoria := True;

     Ativar ;
  end ;
end ;

procedure TFrmEtiquetasEntrada.BitImprimeEtiqClick(Sender: TObject);
var
x: integer;
ix: integer;
descri1: string;
descri2: string;
begin
ix := StrToInt(Edit1.TEXT);
AtivarACBrETQ;
descri1 := copy(EditDescri.text,1,27);
descri2 := copy(EditDescri.text,28,54);
with ACBrETQ do
 begin
       if rbModelo1.Checked then
       begin
//         ACBrETQ.etq.listacmd.Clear;
//         for x := 1 to ix do
//            ACBrETQ.etq.listacmd.add( STX+'n'+CR+LF+
//                                      STX+'M0936'+CR+LF+
//                                      STX+'O0220'+CR+LF+
//                                      STX+'V0'+CR+LF+
//                                      STX+'f220'+CR+LF+
//                                      SOH+'D'+CR+LF+
//                                      STX+'L'+CR+LF+
//                                      'D11'+CR+LF+
//                                      'A2'+CR+LF+
//                                      '141100003430008'+TiraAcento(Centraliza(DBInicio.Empresa.FANTASIA,25),true)+CR+LF+
//                                      '121100003220004'+TiraAcento(Centraliza(DBInicio.Empresa.RAZAO,47),true)+CR+LF+
//                                      '121100003060004'+Centraliza(TiraAcento(DBInicio.Empresa.CIDADE,true)+' -- '+TiraAcento(DBInicio.Empresa.UF,true),47)+CR+LF+
//                                      '1X1100002960000L293001'+CR+LF+
//                                      '111100002830019(|) CODIGO'+CR+LF+
//                                      '131100002610019'+EdtRefer.Text+CR+LF+
//                                      '111100002440019DESCRICAO DO MATERIAL'+CR+LF+
//                                      '131100002210019'+TiraAcento(descri1,true)+CR+LF+
//                                      '131100002000019'+TiraAcento(descri2,true)+CR+LF+
//                                      '1X1100001940000L292001'+CR+LF+
//                                      '111100001830019(||) QUANTIDADE'+CR+LF+
//                                      '131100001580019'+EdtQtdItem.Text+CR+LF+
//                                      '131100001270019'+EdtEmpresa.Text+CR+LF+
//                                      '1X1100001190000L292001'+CR+LF+
//                                      '111100001040019DATA DA EMBALAGEM'+CR+LF+
//                                      '131100000790019'+RxDataEmbalagem.Text+CR+LF+
//                                      '1X1100000640000L292001'+CR+LF+
//                                      '111100000490019(|||) RASTREABILIDADE'+CR+LF+
//                                      '1e4203502540203C'+EdtRefer.Text+CR+LF+
//                                      '111100002450225'+CR+LF+
//                                      '1e4203501540203C'+EdtQtdItem.Text+CR+LF+
//                                      '1911A0601430225'+CR+LF+
//                                      '1e4203000810203C'+RxDataEmbalagem.Text+CR+LF+
//                                      '1911A0600710225'+CR+LF+
//                                      'Q0001'+CR+LF+
//                                      'E'+CR+LF
//                                      );
//        ACBrETQ.etq.imprimir(2, 15);
        Close;
       end
       else if rbModelo1.Checked <> true then
       begin
            uteis.aviso('Selecione um modelo de etiqueta.');
       end;
 end;
end;

procedure TFrmEtiquetasEntrada.SetDescri(const Value: String);
begin
     vDescri := value;
     EditDescri.Text := vDescri;
end;

procedure TFrmEtiquetasEntrada.SetQtdItens(const Value: String);
begin
     vQtdItens := value;
     EdtQtdItem.Text := vQtdItens;
end;

procedure TFrmEtiquetasEntrada.SetRefer(const Value: string);
begin
     vRefer := value;
     EdtRefer.Text := vRefer;
end;

end.
