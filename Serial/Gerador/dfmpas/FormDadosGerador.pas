unit FormDadosGerador;

interface

uses
  SysUtils, Classes, {{DBXpress,}  FMTBcd, Provider, DBClient, DB, SqlExpr;

type
  TDados_Gerador = class(TDataModule)
    CONEXAO: TSQLConnection;
    SQL_SENHA: TSQLQuery;
    SQL_SENHAS_ID: TIntegerField;
    SQL_SENHAS_SOLICITANTE: TStringField;
    SQL_SENHAS_DATA_ATENDIMENTO: TDateField;
    SQL_SENHAS_HORA_ATENDIMENTO: TTimeField;
    SQL_SENHAS_SERIAL_FORNECIDO: TStringField;
    SQL_SENHAS_SERIAL_GERADO: TStringField;
    SQL_SENHAS_DATA_VALIDADE: TDateField;
    SQL_SENHAS_ID_FUNCIONARIO_RENEW: TIntegerField;
    SQL_SENHAS_OBSERVACAO: TStringField;
    CDS_SENHA: TClientDataSet;
    DSP_SENHA: TDataSetProvider;
    SQL_SENHAS_NUMERO_HD: TStringField;
    SQL_USER: TSQLQuery;
    CDS_USER: TClientDataSet;
    DSP_USER: TDataSetProvider;
    SQL_CLIENTE: TSQLQuery;
    CDS_CLIENTE: TClientDataSet;
    DSP_CLIENTE: TDataSetProvider;
    SQL_CLIENTECLI_CODIGO: TStringField;
    SQL_CLIENTECLI_RAZAO: TStringField;
    CDS_CLIENTECLI_CODIGO: TStringField;
    CDS_CLIENTECLI_RAZAO: TStringField;
    SQL_SENHACLI_CODIGO: TStringField;
    SQL_SENHACLI_RAZAO: TStringField;
    SQL_SENHAS_ID_CLI: TStringField;
    CDS_SENHAS_ID: TIntegerField;
    CDS_SENHAS_SOLICITANTE: TStringField;
    CDS_SENHAS_DATA_ATENDIMENTO: TDateField;
    CDS_SENHAS_HORA_ATENDIMENTO: TTimeField;
    CDS_SENHAS_SERIAL_FORNECIDO: TStringField;
    CDS_SENHAS_SERIAL_GERADO: TStringField;
    CDS_SENHAS_DATA_VALIDADE: TDateField;
    CDS_SENHAS_ID_FUNCIONARIO_RENEW: TIntegerField;
    CDS_SENHAS_OBSERVACAO: TStringField;
    CDS_SENHAS_NUMERO_HD: TStringField;
    CDS_SENHACLI_CODIGO: TStringField;
    CDS_SENHACLI_RAZAO: TStringField;
    CDS_SENHAS_ID_CLI: TStringField;
    SQL_USERUSU_CODIGO: TIntegerField;
    SQL_USERUSU_NOME: TStringField;
    CDS_USERUSU_CODIGO: TIntegerField;
    CDS_USERUSU_NOME: TStringField;
    SQL_SENHAUSU_CODIGO: TIntegerField;
    SQL_SENHAUSU_NOME: TStringField;
    CDS_SENHAUSU_CODIGO: TIntegerField;
    CDS_SENHAUSU_NOME: TStringField;
  private
    { Private declarations }
  
  public
    { Public declarations }
    procedure ListarTodosAtendimentos;
  end;

var
  Dados_Gerador: TDados_Gerador;

implementation

{$R *.dfm}

{ TDados_Gerador }



{ TDados_Gerador }

procedure TDados_Gerador.ListarTodosAtendimentos;
begin
    Dados_Gerador.CDS_SENHA.Close;
    Dados_Gerador.CDS_SENHA.CommandText := 'SELECT '+
    'T1.*,'+
    'T2.CLI_CODIGO, '+
    'T2.CLI_RAZAO, '+
    'T3.USU_CODIGO, '+
    'T3.USU_NOME '+
    'FROM SERIAL_RENEW T1 '+
    'left JOIN USUARIO T3 ON (T3.USU_codigo = T1.s_id_funcionario_renew) '+
    'left JOIN CLI0000 T2 ON (T2.cli_codigo = T1.s_id_cli) order by S_DATA_ATENDIMENTO DESC, S_HORA_ATENDIMENTO DESC';
    Dados_Gerador.CDS_SENHA.Open;
end;

end.
