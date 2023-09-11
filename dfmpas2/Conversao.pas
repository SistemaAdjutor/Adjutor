unit Conversao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Db, DBTables, Rwfunc, Mask, DBCtrls;

type
  TFormConverte = class(TForm)
    Converte: TButton;
    TbCliante: TTable;
    DataSource1: TDataSource;
    TbClianteCL_CODIGO: TStringField;
    TbClianteCL_RAZSOC: TStringField;
    TbClianteCL_ULTCOMP: TDateTimeField;
    TbClianteCL_REGIAO: TStringField;
    TbClianteCL_TIPO: TStringField;
    TbClianteCL_ENDERE: TStringField;
    TbClianteCL_BAIRRO: TStringField;
    TbClianteCL_CIDADE: TStringField;
    TbClianteCL_UF: TStringField;
    TbClianteCL_CEP: TStringField;
    TbClianteCL_CXPOST: TStringField;
    TbClianteCL_FONE: TStringField;
    TbClianteCL_FAX: TStringField;
    TbClianteTP_CODIGO: TStringField;
    TbClianteCL_INSEST: TStringField;
    TbClianteCL_INSCGC: TStringField;
    TbClianteCL_CONTAT: TStringField;
    TbClianteCL_FUNCAO: TStringField;
    TbClianteCL_CODREP: TStringField;
    TbClianteCL_DATACP: TDateTimeField;
    TbClianteCL_ENDENT: TStringField;
    TbClianteCL_BAIENT: TStringField;
    TbClianteCL_CIDENT: TStringField;
    TbClianteCL_UFENT: TStringField;
    TbClianteCL_CEPENT: TStringField;
    TbClianteCL_ENDFAT: TStringField;
    TbClianteCL_BAIFAT: TStringField;
    TbClianteCL_CIDFAT: TStringField;
    TbClianteCL_UFFAT: TStringField;
    TbClianteCL_CEPFAT: TStringField;
    Label1: TLabel;
    Button1: TButton;
    TRepres: TTable;
    DataSource2: TDataSource;
    TRepresRP_CODIGO: TStringField;
    TRepresRP_CODGRP: TStringField;
    TRepresRP_FUNCAO: TStringField;
    TRepresRP_SUPERV: TStringField;
    TRepresRP_NOME: TStringField;
    TRepresRP_RAZSOC: TStringField;
    TRepresRP_ENDERE: TStringField;
    TRepresBAIRRO: TStringField;
    TRepresRP_BAIRRO: TStringField;
    TRepresRP_CIDADE: TStringField;
    TRepresRP_UF: TStringField;
    TRepresRP_CEP: TFloatField;
    TRepresRP_FONE: TStringField;
    TRepresRP_FAX: TStringField;
    TRepresRP_TIPIRF: TStringField;
    TRepresRP_CONTA: TStringField;
    TRepresRP_BCO: TStringField;
    TRepresRP_AGE: TStringField;
    TRepresRP_BANCO: TStringField;
    TRepresRP_ATIVO: TStringField;
    TRepresRP_COTA: TFloatField;
    TRepresRP_VENDEU: TFloatField;
    TRepresRP_VENLIT: TFloatField;
    TRepresRP_LIT01: TFloatField;
    TRepresRP_VAL01: TFloatField;
    TRepresRP_LIT02: TFloatField;
    TRepresRP_VAL02: TFloatField;
    TRepresRP_LIT03: TFloatField;
    TRepresRP_VAL03: TFloatField;
    TRepresRP_LIT04: TFloatField;
    TRepresRP_VAL04: TFloatField;
    TRepresRP_LIT05: TFloatField;
    TRepresRP_VAL05: TFloatField;
    TRepresRP_LIT06: TFloatField;
    TRepresRP_VAL06: TFloatField;
    TRepresRP_LIT07: TFloatField;
    TRepresRP_VAL07: TFloatField;
    TRepresRP_LIT08: TFloatField;
    TRepresRP_VAL08: TFloatField;
    TRepresRP_LIT09: TFloatField;
    TRepresRP_VAL09: TFloatField;
    TRepresRP_LIT10: TFloatField;
    TRepresRP_VAL10: TFloatField;
    TRepresRP_LIT11: TFloatField;
    TRepresRP_VAL11: TFloatField;
    TRepresRP_LIT12: TFloatField;
    TRepresRP_VAL12: TFloatField;
    Button2: TButton;
    Ttransp: TTable;
    DataSource3: TDataSource;
    TtranspTP_CODIGO: TStringField;
    TtranspTP_NOME: TStringField;
    TtranspTP_ENDE: TStringField;
    TtranspTP_CIDADE: TStringField;
    TtranspTP_UF: TStringField;
    TtranspTP_CEP: TStringField;
    TtranspTP_CGC: TStringField;
    TtranspTP_INSCR: TStringField;
    TtranspTP_FONE: TStringField;
    TtranspTP_FAX: TStringField;
    TtranspTP_CONTATO: TStringField;
    Button3: TButton;
    Label2: TLabel;
    Tforn: TTable;
    DataSource4: TDataSource;
    TfornCODFOR: TStringField;
    TfornNOMFOR: TStringField;
    TfornENDFOR: TStringField;
    TfornCIDFOR: TStringField;
    TfornESTFOR: TStringField;
    TfornCEPFOR: TStringField;
    TfornCGCFOR: TStringField;
    TfornINSFOR: TStringField;
    TfornFONFOR: TStringField;
    TfornFAXFOR: TStringField;
    TfornCONTATO: TStringField;
    procedure FormShow(Sender: tObject);
    procedure ConverteClick(Sender: tObject);
    procedure Button1Click(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure Button2Click(Sender: tObject);
    procedure Button3Click(Sender: tObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConverte: TFormConverte;

implementation

uses Database;


{$R *.DFM}

procedure TFormConverte.FormShow(Sender: tObject);
begin
   DataModulo.TbCliente.Open;
   DataModulo.TbRepres.Open;
   Datamodulo.Tbtransport.Open;
   Datamodulo.Tbfornec.Open;
end;


procedure TFormConverte.ConverteClick(Sender: tObject);
var
cont : integer;
begin
Tbcliante.First;
cont :=0;
while not Tbcliante.eof do
 begin
  cont := cont + 1;
  Label1.Caption := intToStr(cont);
  Datamodulo.Tbcliente.insert;
  DataModulo.TbClienteCLI_CODIGO.Value:= StrZero(TbClianteCL_CODIGO.Value,5);
  DataModulo.TbClienteCLI_RAZAO.Value := TbclianteCL_RAZSOC.value;
  DataModulo.TbClienteREG_CODIGO.Value := TbclianteCL_REGIAO.value;
  DataModulo.TbClienteCLI_ENDERE.Value := TbclianteCL_ENDERE.value;
  DataModulo.TbClienteCLI_BAIRRO.Value := TbclianteCL_BAIRRO.value;
  DataModulo.TbClienteCLI_CIDADE.Value := TbclianteCL_CIDADE.value;
  DataModulo.TbClienteCLI_CEP.Value := TbclianteCL_CEP.Value;
  DataModulo.TbClienteCLI_CXPOST.Value := TbclianteCL_CXPOST.value;
  DataModulo.TbClienteCLI_FONE.value := TbclianteCL_FONE.value;
  DataModulo.TbClienteCLI_FAX.value := TbclianteCL_Fax.value;
  DataModulo.TbClienteTRP_CODIGO.Value := TbclianteTP_CODIGO.Value;
  DataModulo.TbClienteCLI_INSC.value := TbclianteCL_INSEST.VALUE;
  DataModulo.TbClienteCLI_CGC.value  := TbclianteCL_INSCGC.Value;
  DataModulo.TbClienteCLI_PESSOA.value := TbclianteCL_TIPO.value;
  DataModulo.TbClienteCLI_CONTATO.Value := TbclianteCL_CONTAT.Value;
  DataModulo.TbClienteCLI_FUNCONT.Value := TbclianteCL_FUNCAO.Value;
  DataModulo.TbClienteREP_CODIGO.Value := copy(TbclianteCL_CODREP.Value,1,3);
  DataModulo.TbClienteCLI_DTINICIO.Value := TbclianteCL_DATACP.Value;
  DataModulo.TbClienteCLI_DTULTCOM.Value := TbclianteCL_ULTCOMP.Value;
  DataModulo.TbClienteCLI_ENDENTR.value := TbclianteCL_ENDENT.Value;
  DataModulo.TbClienteCLI_CIDENTR.Value := TbclianteCL_CIDENT.Value;
  DataModulo.TbClienteCLI_CEPENTR.Value := TbclianteCL_CEPENT.value;
  DataModulo.TbClienteCLI_ENDFAT.Value := TbclianteCL_ENDFAT.value;
  DataModulo.TbClienteCLI_CIDFAT.value := TbclianteCL_CIDFAT.value;
  DataModulo.TbClienteCLI_CEPFAT.Value := TbclianteCL_CEPFAT.value;
  DataModulo.TbClienteCLI_UF.Value := TbclianteCL_UF.VALUE;
  DataModulo.TbClienteCLI_UFENTR.Value := TbclianteCL_UFENT.value;
  DataModulo.TbClienteCLI_UFFAT.Value := TbclianteCL_UFFAT.value;
  Datamodulo.Tbcliente.post;
  Datamodulo.Tbcliente.refresh;
  Tbcliante.Next;
 end;
 label1.caption := 'Fim';
 end;

procedure TFormConverte.Button1Click(Sender: tObject);
begin
Trepres.first;
while  not Trepres.eof do
  begin
   label1.caption := 'Processando ...';
   DataModulo.TbRepres.Insert;
   DataModulo.TbRepresREP_CODIGO.value := TrepresRP_CODIGO.Value;
   DataModulo.TbRepresREP_GRUPO.Value := TrepresRP_CODGRP.Value;
   DataModulo.TbRepresREP_FUNCAO.value := TrepresRP_FUNCAO.value;
   DataModulo.TbRepresREP_SUPERVISAO.VALUE := TrepresRP_SUPERV.Value;
   DataModulo.TbRepresREP_RAZAO.value := TrepresRP_RAZSOC.value;
   DataMOdulo.TbRepresREP_NOME.value := TrepresRP_NOME.value;
   DataModulo.TbRepresREP_ENDERE.value := TrepresRP_ENDERE.value;
   DataModulo.TbRepresREP_CIDADE.Value := TrepresRP_CIDADE.value;
   DataModulo.TbRepresREP_UF.value := TrepresRP_UF.value;
   //DataModulo.TbRepresREP_CEP.value :=
   DataModulo.TbRepresREP_FONE.value := TrepresRP_FONE.value;
   DataModulo.TbRepresREP_FAX.value := TrepresRP_FAX.value;
   DataModulo.TbRepresREP_TIPO.Value := TrepresRP_TIPIRF.value;
   DataModulo.TbRepresREP_QUOTA.value := TrepresRP_COTA.value;
   //
   DataModulo.TbRepres.post;
   DataModulo.TbRepres.refresh;
   Trepres.Next;
  end;
  label1.caption := 'Fim';

end;

procedure TFormConverte.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
   DataModulo.TbCliente.close;
   DataModulo.TbRepres.close;
   Datamodulo.Tbtransport.close;
   Datamodulo.Tbfornec.close;
end;

procedure TFormConverte.Button2Click(Sender: tObject);
begin
  Ttransp.first;
  WHILE NOT TTransp.eof do
  begin
  Datamodulo.Tbtransport.Insert;
  Datamodulo.TbTransportTRP_CODIGO.Value := TTranspTP_CODIGO.Value;
  Datamodulo.TbTransportTRP_RAZAO.value := TTranspTP_NOME.value;
  Datamodulo.TbTransportTRP_ENDERE.Value := TTranspTP_ENDE.Value;
  Datamodulo.TbTransportTRP_CIDADE.value := TTranspTP_CIDADE.Value;
  Datamodulo.TbTransportTRP_UF.value := TTranspTP_UF.Value;
  Datamodulo.TbTransportTRP_CEP.Value := TTranspTP_CEP.value;
  Datamodulo.TbTransportTRP_CGC.Value := TTranspTP_CGC.value;
  Datamodulo.TbTransportTRP_INSC.Value := TTranspTP_INSCR.VALUE;
  Datamodulo.TbTransportTRP_FONE.value := TTranspTP_FONE.value;
  Datamodulo.TbtransportTRP_FAX.value := TTranspTP_FAX.Value;
  Datamodulo.TbTransportTRP_CONTATO.value := TTranspTP_CONTATO.value;
  //
  Datamodulo.Tbtransport.Post;
  Datamodulo.Tbtransport.Refresh;
  TTransp.next;
  end;
  label1.caption := 'Fim';

end;

procedure TFormConverte.Button3Click(Sender: tObject);
begin
  Tforn.first;
  while not Tforn.eof do
  begin
  Datamodulo.Tbfornec.Insert;
  Datamodulo.TbfornecFOR_CODIGO.value := TFornCODFOR.value;
  Datamodulo.TbfornecFOR_RAZAO.value := TfornNOMFOR.value;
  Datamodulo.TbfornecFOR_ENDERE.value := TfornENDFOR.value;
  Datamodulo.TbfornecFOR_CIDADE.value := TfornCIDFOR.value;
  Datamodulo.TbFornecFOR_UF.Value := TfornESTFOR.value;
  Datamodulo.TbFornecFOR_CEP.value := TfornCEPFOR.value;
  Datamodulo.TbfornecFOR_CONTATO.value := TfornCONTATO.value;
  Datamodulo.TbfornecFOR_FONE.value := TfornFONFOR.value;
  Datamodulo.TbfornecFOR_FAX.value := TfornFAXFOR.value;
  Datamodulo.TbfornecFOR_CGC.value := TfornCGCFOR.value;
  Datamodulo.TbfornecFOR_INSC.value := TfornINSFOR.value;
  //
  Datamodulo.Tbfornec.Post;
  Datamodulo.Tbfornec.Refresh;
  Tforn.next;
  end;
  label1.caption := 'Fim';
end;
end.
