unit uPlanoContasCentroCustoCopia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, SqlExpr,SqlClientDataSet, Provider, DB, DBClient, DBLocal, DBLocalS,
  Buttons, SimpleDS, Data.DBXFirebird, SgDbSeachComboUnit, Data.FMTBcd;

type
  TFrmPlanoContasCentroCustoCopia = class(TForm)
    Bit_Cancelar: TBitBtn;
    Bit_Gravar: TBitBtn;
    GroupBox1: TGroupBox;
    CbxCtaAnalise: TSgDbSearchCombo;
    SqlCdsCtaAnalise: TSQLClientDataSet;
    SqlCdsCtaAnaliseCCT_CODIGO: TStringField;
    SqlCdsCtaAnaliseCCT_PROVISAO: TFMTBCdField;
    SqlCdsCtaAnaliseCCT_DESCRI: TStringField;
    SqlCdsCtaAnaliseCEC_CODIGO: TStringField;
    SqlCdsCtaAnaliseCCT_TIPO: TStringField;
    SqlCdsCtaAnaliseCCT_CONTA: TStringField;
    SqlCdsCtaAnaliseEMP_CODIGO: TStringField;
    SqlCdsCtaAnaliseCCT_NIVEL: TStringField;
    SqlCdsCtaAnaliseCCT_STATUS: TStringField;
    grpConta: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    edtConta: TEdit;
    edtDescricao: TEdit;
    CdsPlanoCentro: TSQLClientDataSet;
    CdsPlanoCentroPCX_CODIGO: TStringField;
    CdsPlanoCentroPCX_NIVEL: TStringField;
    CdsPlanoCentroPCX_DESCRI: TStringField;
    CdsPlanoCentroPCXP_INDICE: TFMTBCdField;
    SQLQuery1: TSQLQuery;
    procedure FormShow(Sender: tObject);
    procedure Bit_CancelarClick(Sender: tObject);
    procedure Bit_GravarClick(Sender: tObject);
  private
    { Private declarations }
  public
    { Public declarations }
    sTipoConta,
    sRegistroConta,
    sPerfilRegistro,
    xCodigo:String;
  end;

var
  FrmPlanoContasCentroCustoCopia: TFrmPlanoContasCentroCustoCopia;

implementation

uses
  DataCad, DataMov, RWFunc, Men0001, uteis, iniciodb;

{$R *.dfm}

procedure TFrmPlanoContasCentroCustoCopia.FormShow(Sender: tObject);
begin
     CbxCtaAnalise.FiltroTabela := 'CCT_CONTA = '+QuotedStr(sTipoConta)+' and CCT_STATUS = ''L''';
     CbxCtaAnalise.charcase := ecNormal;
end;

procedure TFrmPlanoContasCentroCustoCopia.Bit_CancelarClick(Sender: tObject);
begin
     Close;
end;

procedure TFrmPlanoContasCentroCustoCopia.Bit_GravarClick(Sender: tObject);
begin
     if CbxCtaAnalise.IDRETORNO<>'' then
     BEGIN
         dbInicio.ExecSql( 'DELETE FROM PCX0000_PLANO '+
                           'where cct_0000 = '+qStr(sRegistroConta)+
                           ' and PCXPF_REGISTRO = '+qStr(sPerfilRegistro)+
                           ConcatSe( ' and ',dbInicio.ExclusivoSql('PLANODECONTAS') ) );

         dbInicio.ExecSql( 'DELETE FROM PCX0000_PERFIL_COLABORADOR '+
                           'where cct_0000 = '+qStr(sRegistroConta)+
                           ' and PCXPF_REGISTRO = '+qStr(sPerfilRegistro)+
                           ConcatSe( ' and ',dbInicio.ExclusivoSql('PLANODECONTAS') ) );

         dbInicio.ExecSql( 'INSERT INTO PCX0000_PERFIL_COLABORADOR '+
                           '( EMP_CODIGO, PCXPF_REGISTRO, PCX_CODIGO, PPC_QUANTIDADE, PPC_QUANTIDADE_TOTAL_PERFIL, PPC_INDICE_REAL,  CCT_0000, PPC_TIPO) '+
                           ' SELECT EMP_CODIGO,  '+
                           '        PCXPF_REGISTRO,  '+
                           '        PCX_CODIGO,  '+
                           '        PPC_QUANTIDADE,   '+
                           '        PPC_QUANTIDADE_TOTAL_PERFIL,   '+
                           '        PPC_INDICE_REAL,  '+
                           '        '+QStr(sRegistroConta)+', '+
                           '        PPC_TIPO  '+
                           'FROM PCX0000_PERFIL_COLABORADOR '+
                           'WHERE PCXPF_REGISTRO = '+QsTR(sPerfilRegistro)+' AND CCT_0000 = '+QuotedStr(CbxCtaAnalise.IDRETORNO) );

         dbInicio.ExecSql( 'INSERT INTO PCX0000_PLANO '+
                           '(EMP_CODIGO, CCT_0000, PCX_CODIGO, PCXP_INDICE,PCXP_INDICE_REAL, PCXP_TIPO,PCXPF_REGISTRO) '+
                           ' SELECT EMP_CODIGO,  '+
                           '        '+QStr(sRegistroConta)+', '+
                           '        PCX_CODIGO,  '+
                           '        PCXP_INDICE,PCXP_INDICE_REAL, PCXP_TIPO,PCXPF_REGISTRO '+
                           'FROM PCX0000_PLANO '+
                           'WHERE PCXPF_REGISTRO = '+QsTR(sPerfilRegistro)+' AND CCT_0000 = '+QuotedStr(CbxCtaAnalise.IDRETORNO) );

         dbInicio.ExecSql( 'UPDATE CCT_0000 '+
                           'SET CCT_PERFIL_RATEIO = (SELECT T2.CCT_PERFIL_RATEIO FROM CCT_0000 T2 WHERE T2.CCT_CODIGO = '+QuotedStr(CbxCtaAnalise.IDRETORNO)+') '+
                           'WHERE CCT_CODIGO = '+qStr(sRegistroConta) ) ;
         Close;
     end
     Else
         GeraException('Informe a Conta de Origem da Configuração a ser Copiada!');

end;

end.
