unit Rec0006;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, DB, Provider, SqlExpr,SqlClientDataSet, DBClient,
  DBLocal, DBLocalS, Data.DBXFirebird, SimpleDS;

type
  TFrmAtualizaLimite = class(TForm)
    GroupBox1: TGroupBox;
    ProgressBar1: TProgressBar;
    BitImprimeEtiq: TBitBtn;
    BitFechar: TBitBtn;
    SqlCdsBaixaAuto: TSQLClientDataSet;
    SqlCdsBaixaAutoFAT_REGISTRO: TIntegerField;
    SqlCdsBaixaAutoBAN_CODIGO: TStringField;
    SqlCdsBaixaAutoFPC_COBTIPO: TStringField;
    SqlCdsBaixaAutoWBAIXAR_LIMITE: TFMTBCdField;
    procedure BitFecharClick(Sender: tObject);
    procedure BitImprimeEtiqClick(Sender: tObject);
  private
    { Private declarations }
    procedure Baixa_Limite_Banco(pTipo,pBanco,pVlFatura:String);
    procedure Atualiza_Flag_Fatura(pRegistro:String);
    procedure Buscar_Faturas_Baixar_Limite;

  public
    { Public declarations }
  end;

var
  FrmAtualizaLimite: TFrmAtualizaLimite;

implementation

uses Rec0005, DataCad, Men0001, RWFunc, uteis, iniciodb;

{$R *.dfm}

procedure TFrmAtualizaLimite.Atualiza_Flag_Fatura(pRegistro: String);
begin
    try
      wSql1   := 'Update FAT_PC01 set FPC_CONFIRMADESCTO = ''S''';
      //
      wSeleciona := 'where FAT_REGISTRO = '''+pRegistro+'''';
      //
      DataCadastros.sqlUpdate.close;
      DataCadastros.SqlUpdate.sql.text :=wSql1 + wSeleciona;
      DataCadastros.sqlUpdate.Execsql;
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao baixar limite do banco ! '+e.message));
    end;
end;

procedure TFrmAtualizaLimite.Baixa_Limite_Banco(pTipo, pBanco,
  pVlFatura: String);
begin
    try
      if (pTipo = 'D') then  //D = Duplicata
         wSql1   := 'Update Ban0000 set BAN_LIMITE_UTILIZADO_DUPL = (BAN_LIMITE_UTILIZADO_DUPL - '+ValorAmericano(pVlFatura)+')'
      else        //C = Cheque
         wSql1   := 'Update Ban0000 set BAN_LIMITE_UTILIZADO_CHEQ = (BAN_LIMITE_UTILIZADO_CHEQ - '+ValorAmericano(pVlFatura)+')';
      //
      wSeleciona := ' where BAN_CODIGO = '''+pBanco+'''';
      //
      DataCadastros.sqlUpdate.close;
      DataCadastros.SqlUpdate.sql.text :=wSql1 + wSeleciona;
      DataCadastros.sqlUpdate.Execsql;
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao baixar limite do banco ! '+e.message));
    end;
end;

procedure TFrmAtualizaLimite.BitFecharClick(Sender: tObject);
begin
    Close;
end;

procedure TFrmAtualizaLimite.BitImprimeEtiqClick(Sender: tObject);
begin
    Buscar_Faturas_Baixar_Limite;
end;

procedure TFrmAtualizaLimite.Buscar_Faturas_Baixar_Limite;
Var
  wDataHoje,
  wTipoDoc :String;
begin
    try
      wDataHoje  := DaTaAmericana(DateToStr(Now));
      //
      wSql1      := 'Select F1.FAT_REGISTRO,B1.BAN_CODIGO,F1.FPC_COBTIPO,Sum(F1.fpc_vlparc)as wBaixar_Limite FROM fat_pc01 F1 LEFT JOIN BAN0000 B1 ON (F1.BAN_CODIGO = B1.BAN_CODIGO) ';
      wSeleciona := 'WHERE (F1.FPC_VENCTO < '''+wDataHoje+''' AND F1.FPC_DESCONTADO = ''S'' AND F1.FPC_CONFIRMADESCTO = ''N'' and F1.FPC_CONFIRMADEVOLUCAO = ''N'' AND F1.FPC_EXCLUSAO =''N'')';

      wSql2      := 'Group by F1.FAT_REGISTRO,B1.BAN_CODIGO,F1.FPC_COBTIPO ';
      //
      if (Share('RECEBER') = 'E') then
         wSeleciona := wSeleciona + ' AND F1.EMP_CODIGO = '''+dbInicio.Empresa.EMP_CODIGO+'''';
      //
      SqlCdsBaixaAuto.Close;
      SqlCdsBaixaAuto.CommandText := wSql1+wSeleciona+wSql2;
      SqlCdsBaixaAuto.Open;
      if (not SqlCdsBaixaAuto.IsEmpty) then
         begin
             ProgressBar1.Position := 0;
             ProgressBar1.Max := SqlCdsBaixaAuto.RecordCount;
             //
             SqlCdsBaixaAuto.DisableControls;
             SqlCdsBaixaAuto.First;
             while not SqlCdsBaixaAuto.Eof do
              begin
                  if (SqlCdsBaixaAutoFPC_COBTIPO.AsString = 'Cd') then
                     wTipoDoc := 'D'
                  else
                  if (SqlCdsBaixaAutoFPC_COBTIPO.AsString = 'CH') then
                     wTipoDoc := 'C';
                  Baixa_Limite_Banco(wTipoDoc,
                                     SqlCdsBaixaAutoBAN_CODIGO.AsString,
                                     SqlCdsBaixaAutoWBAIXAR_LIMITE.AsString);
                  //
                  Atualiza_Flag_Fatura(SqlCdsBaixaAutoFAT_REGISTRO.AsString);
                  ProgressBar1.Position := ProgressBar1.Position + 1;
                  SqlCdsBaixaAuto.Next;
              end;
             SqlCdsBaixaAuto.EnableControls;
             uteis.aviso('Limite atualizado com sucesso !');
             ProgressBar1.Position := 0;
         end;
      Close;
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao buscar as faturas para baixar o limite ! '+e.message));
    end;
end;

end.
