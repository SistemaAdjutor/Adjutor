unit LicencaForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, jpeg, ExtCtrls, Mask, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, IdHTTP,IdMultipartFormData,
  xmldom, XMLIntf, msxmldom, XMLDoc, BaseForm, ACBrEnterTab, ACBrBase, ACBrCalculadora;

type
  TFrmLicenca = class(TFrmBase)
    Valor1: TMaskEdit;
    Valor2: TMaskEdit;
    Valor3: TMaskEdit;
    Valor4: TMaskEdit;
    Valor5: TMaskEdit;
    Panel1: TPanel;
    Bit_Gravar: TBitBtn;
    Bit_Sair: TBitBtn;
    Image1: TImage;
    Image2: TImage;
    Label1: TLabel;
    Label2: TLabel;
    StaticText1: TStaticText;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    LblDias: TLabel;
    Label7: TLabel;
    EdCnpj: TEdit;
    LblLicencas: TLabel;
    Image4: TImage;
    vXMLDoc: TXMLDocument;
    Button1: TBitBtn;
    procedure Bit_SairClick(Sender: tObject);
    procedure Bit_GravarClick(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure FormCloseQuery(Sender: tObject; var CanClose: Boolean);
    procedure Button1Click(Sender: tObject);
    procedure FormCreate(Sender: tObject);
  private

  public
    { Public declarations }
    iNrDias,iNrLicencas:Integer;
    bValidado: Boolean;
  end;

var
  FrmLicenca: TFrmLicenca;

implementation

uses UFuncoes, RWFunc, uteis, InicioDB, val0002;

{$R *.dfm}

procedure TFrmLicenca.Bit_SairClick(Sender: tObject);
begin
     Application.Terminate;
end;

procedure TFrmLicenca.Bit_GravarClick(Sender: tObject);
var
  sChave : String;
  ValidadeContrato : TDate;
  QuantidadeUsuarios: integer;
begin
  if (uteis.confirmacao  ( 'Confirma a Validação?')=mrYes) then
  begin
    sChave := Valor1.Text+Valor2.Text+Valor3.Text+Valor4.Text+Valor5.Text;
    ValidadeContrato := Validade(sChave);
    QuantidadeUsuarios := Conexoes(sChave);
    dbInicio.ValidaOnLine( edCnpj.Text, True, sChave, ValidadeContrato, QuantidadeUsuarios );
    Application.Terminate;
  end;
end;

procedure TFrmLicenca.FormShow(Sender: tObject);
begin
     inherited;
     EdCnpj.Text := dbInicio.Empresa.CNPJ_CNPF;
     if (iNrDias <= 0) then
        LblDias.Caption := 'Sua licença expirou!'
     else
        LblDias.Caption := 'Faltam '+IntToStr(iNrDias)+' dia(s) para sua licença expirar.';
     LblLicencas.Caption := 'Licenças contratadas: '+IntToStr(iNrLicencas);
end;

procedure TFrmLicenca.FormCloseQuery(Sender: tObject;
  var CanClose: Boolean);
begin
     inherited;
     CanClose := False;
end;

procedure TFrmLicenca.Button1Click(Sender: tObject);
var
  sChave: string;
begin
  sChave := Valor1.Text+Valor2.Text+Valor3.Text+Valor4.Text+Valor5.Text;
  dbInicio.ValidaOnLine( edCnpj.Text, True, '', 0, 0 );
  MessageDlg('Seu Adjutor precisará ser reiniciado', mtInformation, [mbYes], 0);;
  Application.Terminate;
end;

procedure TFrmLicenca.FormCreate(Sender: tObject);
begin
     inherited;
     height := 304;
     width := 572;
end;

end.
