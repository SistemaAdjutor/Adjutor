unit uEtiquetasExpedicao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  ACBrBase, ACBrDevice, ACBrETQ, Vcl.Samples.Spin, RWFunc;

type
  TFrmEtiquetasExpedicao = class(TForm)
    ACBrETQ: TACBrETQ;
    GrBEtiqueta: TGroupBox;
    Label9: TLabel;
    grpMensagem: TGroupBox;
    edtMensagem: TEdit;
    BitImprimeEtiq: TBitBtn;
    BitEtiqFechar: TBitBtn;
    Gb_Estilo_Etiqueta: TGroupBox;
    rbModelo1: TRadioButton;
    EdtNf: TEdit;
    Label2: TLabel;
    EditCli: TEdit;
    Label3: TLabel;
    EditDestino: TEdit;
    Label4: TLabel;
    EditTransp: TEdit;
    Label1: TLabel;
    EditQtdeEtiquetas: TSpinEdit;
    rbModelo2: TRadioButton;
    procedure FormShow(Sender: TObject);
    procedure BitEtiqFecharClick(Sender: TObject);
    procedure BitImprimeEtiqClick(Sender: TObject);
  private
    { Private declarations }
    vNF: String;
    vDest: String;
    vEmp: String;
    vVol: String;
    vCli: String;
    vTransp: String;
    vSituacao: String;
    vEnderecoEmp: String;
    vBairroEmp: String;
    vFoneEmp: String;
    vFaxEmp: String;
    vEnderecoCli: String;
    vCidadeCli: String;
    vEstadoCli: String;
    vCepCli: String;
    vCepTransp: String;
    vCidadeTransp: String;
    vEstadoTransp: String;
    vEnderecoTransp: String;
    procedure SetNF(const Value: string);
    procedure Setdest(const Value: String);
    procedure Setemp(const Value: String);
    procedure AtivarACBrETQ;
   // function AtivarACBrETQ: string;         //exempo marcio 22/07
    procedure Setvol(const Value: String);
    procedure Setcli(const Value: String);
    procedure setTransp(const Value: String);
    procedure setSituacao(const Value: String);
    procedure setEnderecoEmp(const Value: String);
    procedure setBairroEmp(const Value: String);
    procedure setFaxEmp(const Value: String);
    procedure setFoneEmp(const Value: String);
    procedure setEnderecoCli(const Value: String);
    procedure setCidadeCli(const Value: String);
    procedure setEstadoCli(const Value: String);
    procedure SetCepCli(const Value: String);
    procedure SetCepTransp(const Value: String);
    procedure SetCidadeTransp(const Value: String);
    procedure SetEstadoTransp(const Value: String);
    procedure SetEnderecoTransp(const Value: String);

  public
    { Public declarations }
    Property NF: string Read vNF Write SetNF;
    Property dest: String Read vDest Write Setdest;
    Property emp: String Read vEmp Write Setemp;
    Property vol: String Read vVol Write Setvol;
    Property cli: String Read vCli Write Setcli;
    Property transp: String Read vTransp Write setTransp;
    Property situacao: String Read vSituacao Write setSituacao;
    Property EnderecoEmp: String Read vEnderecoEmp Write setEnderecoEmp;
    Property BairroEmp: String Read vBairroEmp Write setBairroEmp;
    Property FoneEmp: String Read vFoneEmp Write setFoneEmp;
    Property FaxEmp: String Read vFaxEmp Write setFaxEmp;
    Property EnderecoCli: String Read vEnderecoCli Write setEnderecoCli;
    Property CidadeCli: String Read vCidadeCli Write setCidadeCli;
    Property EstadoCli: String Read vEstadoCli Write setEstadoCli;
    Property CepCli: String Read vCepCli Write SetCepCli;
    Property CepTransp: String Read vCepTransp Write SetCepTransp;
    Property CidadeTransp: String Read vCidadeTransp Write SetCidadeTransp;
    Property EstadoTransp: String Read vEstadoTransp Write SetEstadoTransp;
    Property EnderecoTransp: String Read vEnderecoTransp Write SetEnderecoTransp;
  end;

var
  FrmEtiquetasExpedicao: TFrmEtiquetasExpedicao;

Const
  STX = chr(2);
  CR = chr(13);
  LF = chr(10);
  SOH = chr(1);

implementation

{$R *.dfm}

uses uteis;

procedure TFrmEtiquetasExpedicao.BitEtiqFecharClick(Sender: TObject);
begin
   Close;
end;


procedure TFrmEtiquetasExpedicao.AtivarACBrETQ;
begin
  ACBrETQ.Desativar;
  with ACBrETQ do
  begin
     Porta         := '\\127.0.0.1\Argox';

     LimparMemoria := True;

     Ativar

   // Porta         := '\\127.0.0.1\Argox';
   // DPI           := TACBrETQDPI(dpi203); //dpi203, dpi300, dpi600
   // Modelo        := TACBrETQModelo(etqPpla); //etqNenhuma, etqPpla, etqPPlb, etqZPLII,etqEpl2
  end;
end;

{
function TFrmEtiquetasExpedicao.AtivarACBrETQ: string;
Var
   eAvanco :string;
begin
 if vImpressoraEtiqueta = 'Argox OS 214-Plus' then
 begin
     eAvanco := vAvanco;
     ACBrETQ.Desativar;

    with ACBrETQ do
    begin
       DPI           := TACBrETQDPI(dpi203); //dpi203, dpi300, dpi600
       Modelo        := TACBrETQModelo(etqPpla); //etqNenhuma, etqPpla, etqPPlb, etqZPLII,etqEpl2
       Porta         := vCompatilhamento;
       LimparMemoria := True;

       Ativar;
    end;
  end;
end;
  }

procedure TFrmEtiquetasExpedicao.BitImprimeEtiqClick(Sender: TObject);
var
  etiqueta: String;
  x: integer;
  ix: integer;
  enderecocli1: string;
  enderecocli2: string;
  enderecoTransp1: string;
  enderecoTransp2: string;
begin
  ix := StrToInt(EditQtdeEtiquetas.TEXT);
  AtivarACBrETQ;
  enderecocli1 := copy(vEnderecoCli,1,46);
  enderecocli2 := copy(vEnderecoCli,47,92);
  enderecoTransp1 := copy(vEnderecoTransp,1,46);
  enderecoTransp2 := copy(vEnderecoTransp,47,92);
  with ACBrETQ do
  begin
    if (rbModelo1.Checked) then //and (ix <> 0) and (vSituacao <> 'F')) then
    begin
      if (vNF = '0') then
      begin
        vNF := '';
      end;
  //    ACBrETQ.etq.listacmd.Clear;
//      for x := 1 to ix do
//        ACBrETQ.etq.listacmd.add( STX+'n'+CR+LF+
//                                  STX+'M0936'+CR+LF+
//                                  STX+'O0220'+CR+LF+
//                                  STX+'V0'+CR+LF+
//                                  STX+'f220'+CR+LF+
//                                  SOH+'D'+CR+LF+
//                                  STX+'L'+CR+LF+
//                                  'D11'+CR+LF+
//                                  'A2'+CR+LF+
//                                  '1X1100003160000L293040'+CR+LF+
//                                  '1X1100002110000L293053'+CR+LF+
//                                  '1X1100001260000L293046'+CR+LF+
//                                  '1X1100000200000L293054'+CR+LF+
//                                  '1X1100003280000L290031'+CR+LF+
//                                  'A1'+CR+LF+
//                                  '141100003290010'+Centraliza(TiraAcento(vEmp,true),27)+CR+LF+
//                                  'A2'+CR+LF+
//                                  '141100002830134NF'+CR+LF+
//                                  '1X1100002290000L291031'+CR+LF+
//                                  'A1'+CR+LF+
//                                  '141100002310010'+Centraliza(EdtNf.TEXT,27)+CR+LF+
//                                  'A2'+CR+LF+
//                                  '1X1100001410107L074031'+CR+LF+
//                                  'A1'+CR+LF+
//                                  '141100001420109DESTINO'+CR+LF+
//                                  'A2'+CR+LF+
//                                  '1X1100000390000L291031'+CR+LF+
//                                  'A1'+CR+LF+
//                                  '141100000400010'+Centraliza(TiraAcento(EditDestino.TEXT,true),27)+CR+LF+
//                                  'Q0001'+CR+LF+
//                                  'E'+CR+LF
//                                  );
//      ACBrETQ.etq.imprimir(2, 15);
      Desativar;
      Close;
    end
    else if (rbModelo2.Checked) then // and (ix <> 0) and (vSituacao <> 'F')) then
    begin
       if (vNF = '0') then
      begin
        vNF := '';
      end;
  //    ACBrETQ.etq.listacmd.Clear;
//      for x := 1 to ix do
//        ACBrETQ.etq.listacmd.add( STX+'n'+CR+LF+
//                                  STX+'M0936'+CR+LF+
//                                  STX+'O0220'+CR+LF+
//                                  STX+'V0'+CR+LF+
//                                  STX+'f220'+CR+LF+
//                                  SOH+'D'+CR+LF+
//                                  STX+'L'+CR+LF+
//                                  'D11'+CR+LF+
//                                  'A2'+CR+LF+
//                                  '1X1100002960000L293001'+CR+LF+
//                                  '1X1100001980000L292001'+CR+LF+
//                                  '1X1100000670000L292001'+CR+LF+
//                                  '141100003430008'+TiraAcento(Centraliza(vEmp,25),true)+CR+LF+
//                                  '121100003250004'+Centraliza(TiraAcento(vEnderecoEmp,true)+'  '+TiraAcento(vBairroEmp,true),47)+CR+LF+
//                                  '121100003060030'+Centraliza(MascaraFone(vFoneEmp)+' -- '+MascaraFone(vFaxEmp),37)+CR+LF+
//                                  '121100002810019DESTINATARIO'+CR+LF+
//                                  '1X1100002800019L071001'+CR+LF+
//                                  '121100002610019'+TiraAcento(EditCli.Text,true)+CR+LF+
//                                  '121100002120017'+TiraAcento(vCidadeCli,true)+' / '+TiraAcento(vEstadoCli,true)+CR+LF+
//                                  '121100001790017TRANSPORTADORA'+CR+LF+
//                                  '1X1100001780017L083001'+CR+LF+
//                                  '121100001590017'+TiraAcento(EditTransp.Text,true)+CR+LF+
//                                  '121100002120189'+AlinhaD(MascaraCep(vCepCli),17)+CR+LF+
//                                  '121100001020017'+TiraAcento(vCidadeTransp,true)+' / '+TiraAcento(vEstadoTransp,true)+CR+LF+
//                                  '121100001020189'+AlinhaD(MascaraCep(vCepTransp),17)+CR+LF+
//                                  '121100000810017VOLUMES:'+CR+LF+
//                                  '1X1100000800017L047001'+CR+LF+
//                                  '121100000810076'+x.ToString+'/'+EditQtdeEtiquetas.Text+CR+LF+
//                                  '121100002410019'+TiraAcento(enderecocli1,true)+CR+LF+
//                                  '121100002260019'+TiraAcento(enderecocli2,true)+CR+LF+
//                                  '121100001380017'+TiraAcento(enderecoTransp1,true)+CR+LF+
//                                  '121100001230017'+TiraAcento(enderecoTransp2,true)+CR+LF+
//                                  '121100000370012NOTA FISCAL:'+CR+LF+
//                                  '1X1100000370011L071001'+CR+LF+
//                                  '121100000370097'+EdtNf.Text+CR+LF+
//                                  '1e4202200280197C'+EdtNf.Text+CR+LF+
//                                  '111100000190219'+CR+LF+
//                                  '1X1100000180218L035001'+CR+LF+
//                                  'Q0001'+CR+LF+
//                                   'E'+CR+LF
//                                  );
//      ACBrETQ.etq.imprimir(2, 15);
      Desativar;
      Close;
    end
    else if ((rbModelo1.Checked) and (ix = 0) and (vSituacao <> 'F')) then
    begin
      uteis.aviso('Revisar quantidade de volumes.');
      EditQtdeEtiquetas.SetFocus;
    end
    else if rbModelo1.Checked <> true then
    begin
      uteis.aviso('Selecione um modelo de etiqueta.');
    end;

  end;

end;

procedure TFrmEtiquetasExpedicao.FormShow(Sender: TObject);
begin
  Left := 0;
  Top := 0;
end;

procedure TFrmEtiquetasExpedicao.setBairroEmp(const Value: String);
begin
     vBairroEmp := value;
end;

procedure TFrmEtiquetasExpedicao.SetCepCli(const Value: String);
begin
     vCepCli := value;
end;

procedure TFrmEtiquetasExpedicao.SetCepTransp(const Value: String);
begin
     vCepTransp := value;
end;

procedure TFrmEtiquetasExpedicao.setCidadeCli(const Value: String);
begin
     vCidadeCli := value;
end;

procedure TFrmEtiquetasExpedicao.SetCidadeTransp(const Value: String);
begin
     vCidadeTransp := value;
end;

procedure TFrmEtiquetasExpedicao.Setcli(const Value: String);
begin
  vCli := Value;
  EditCli.TEXT := vCli;
end;

procedure TFrmEtiquetasExpedicao.Setdest(const Value: String);
begin
  vDest := Value;
  EditDestino.TEXT := vDest;
end;

procedure TFrmEtiquetasExpedicao.Setemp(const Value: String);
begin
  vEmp := Value;
end;

procedure TFrmEtiquetasExpedicao.setEnderecoCli(const Value: String);
begin
     vEnderecoCli := value;
end;

procedure TFrmEtiquetasExpedicao.setEnderecoEmp(const Value: String);
begin
     vEnderecoEmp := value;
end;

procedure TFrmEtiquetasExpedicao.SetEnderecoTransp(const Value: String);
begin
     vEnderecoTransp := value;
end;

procedure TFrmEtiquetasExpedicao.setEstadoCli(const Value: String);
begin
     vEstadoCli := value;
end;

procedure TFrmEtiquetasExpedicao.SetEstadoTransp(const Value: String);
begin
     vEstadoTransp := value;
end;

procedure TFrmEtiquetasExpedicao.setFaxEmp(const Value: String);
begin
     vFaxEmp := value;
end;

procedure TFrmEtiquetasExpedicao.setFoneEmp(const Value: String);
begin
     vFoneEmp := value;
end;

procedure TFrmEtiquetasExpedicao.SetNF(const Value: string);
begin
  vNF := Value;
  EdtNf.TEXT := vNF;
end;

procedure TFrmEtiquetasExpedicao.setSituacao(const Value: String);
begin
  vSituacao := Value;
end;

procedure TFrmEtiquetasExpedicao.setTransp(const Value: String);
begin
  vTransp := Value;
  EditTransp.TEXT := vTransp;
end;

procedure TFrmEtiquetasExpedicao.Setvol(const Value: String);
begin
  vVol := Value;
  EditQtdeEtiquetas.TEXT := vVol;
end;

end.
