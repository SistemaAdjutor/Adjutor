unit uPlanoContasCentroCustoColaborador;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, SqlExpr, Provider, DB,
  DBClient, DBLocal, DBLocalS,  rxToolEdit, Mask,  rxCurrEdit, RWFunc;

type
  TFrmPlanoContasCentroCustoColaborador = class(TForm)
    grpPerfil: TGroupBox;
    grpTotal: TGroupBox;
    GroupBox1: TGroupBox;
    Bit_Gravar: TBitBtn;
    Bit_Cancelar: TBitBtn;
    DBGrid1: TDBGrid;
    CurTotalColaborador: TCurrencyEdit;
    RxDataInicial: TDateEdit;
    RxDataFinal: TDateEdit;
    Label3: TLabel;
    Label4: TLabel;
    CdsIndices: TClientDataSet;
    CdsIndicesNivel: TStringField;
    CdsIndicesCentroCusto: TStringField;
    CdsIndicesReduzido: TStringField;
    CdsIndicesIndice: TFloatField;
    CdsIndicesIndiceReal: TFloatField;
    dsIndices: TDataSource;
    CdsClone: TClientDataSet;
    CdsCloneNivel: TStringField;
    CdsCloneindice: TFloatField;
    CdsCloneReduzido: TStringField;
    CdsCloneIndiceReal: TFloatField;
    CdsCloneCentroCusto: TStringField;
    CdsPercentes: TClientDataSet;
    CdsPercentesNivel: TIntegerField;
    CdsPercentessoma: TFloatField;
    CdsPercentesReferente: TStringField;
    CdsPercentesIndiceReal: TFloatField;
    CdsIndicesQuantidade: TFloatField;
    CdsCloneQuantidade: TFloatField;
    grpConta: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    edtConta: TEdit;
    edtDescricao: TEdit;
    edtReduzido: TEdit;
    procedure Bit_CancelarClick(Sender: tObject);
    procedure DBGrid1DblClick(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure Bit_GravarClick(Sender: tObject);
  private
    { Private declarations }
    procedure InformaIncice;
  public
    { Public declarations }
    iPerfilRateio:Integer;
    sCCT_0000:String;
  end;

var
  FrmPlanoContasCentroCustoColaborador: TFrmPlanoContasCentroCustoColaborador;

implementation

uses
  DataCad, CCT0001, Men0001, uteis, iniciodb;

{$R *.dfm}

procedure TFrmPlanoContasCentroCustoColaborador.Bit_CancelarClick(Sender: tObject);
begin
   Close;
end;

procedure TFrmPlanoContasCentroCustoColaborador.InformaIncice;
   var
      valor:Double;
begin
   try
      repeat
         valor := StrToFloat(InputBox('Colaboradores', 'Informe a Quantidade: ','0'));
      until valor <> 0;

      if (valor < 0) then
         begin
            uteis.aviso('O valor não pode ser negativo');
            InformaIncice;
         end
      else
         begin
            CdsIndices.Edit;
            CdsIndicesQuantidade.AsFloat := valor; 
            CdsIndices.Post;
         end;
   except
      uteis.aviso('valor inválido');
      InformaIncice;
   end;
end;

procedure TFrmPlanoContasCentroCustoColaborador.DBGrid1DblClick(
  Sender: tObject);
begin
   InformaIncice;
end;

procedure TFrmPlanoContasCentroCustoColaborador.FormShow(Sender: tObject);
begin
   DataCadastros.sqlUpdate.Close;
   DataCadastros.SqlUpdate.sql.text :='INSERT INTO PCX0000_PERFIL_COLABORADOR (EMP_CODIGO, PCXPF_REGISTRO, PCX_CODIGO, PPC_QUANTIDADE, PPC_INDICE_REAL, CCT_0000)  SELECT EMP_CODIGO, '+IntToStr(iPerfilRateio)+', PCX_CODIGO, 0, 0, '+QuotedStr(PreenchezeroEsquerda(DataCadastros.CdsCtAnaliseCCT_CODIGO.AsString,3))+' FROM PCX0000 t1 where t1.PCX_CODIGO NOT IN (SELECT T2.PCX_CODIGO FROM PCX0000_PERFIL_COLABORADOR T2 WHERE T2.PCXPF_REGISTRO = '+IntToStr(iPerfilRateio)+' AND CCT_0000 = '+QuotedStr(PreenchezeroEsquerda(DataCadastros.CdsCtAnaliseCCT_CODIGO.AsString,3))+')';
   DataCadastros.sqlUpdate.Execsql;
   DataCadastros.sqlUpdate.Close;

   FormContAnalise.CdsColaboradorCentroCusto.Refresh;

   RxDataInicial.Date := FormContAnalise.cbPerfil.CdS.FieldByName('PCXPF_DATA_INICIAL').AsDateTime;
   RxDataFinal.Date := FormContAnalise.cbPerfil.CdS.FieldByName('PCXPF_DATA_FINAL').AsDateTime;

   edtConta.Text := DataCadastros.CdsCtAnaliseCCT_NIVEL.AsString;
   edtDescricao.Text := DataCadastros.CdsCtAnaliseCCT_DESCRI.AsString;
   edtReduzido.Text := DataCadastros.CdsCtAnaliseCCT_CODIGO.AsString;


   FormContAnalise.CdsColaboradorCentroCusto.First;
   while (not FormContAnalise.CdsColaboradorCentroCusto.Eof) do
      begin
         CdsIndices.Append;
         CdsIndicesNivel.AsString := FormContAnalise.CdsColaboradorCentroCustoPCX_NIVEL.AsString;
         CdsIndicesReduzido.AsString := FormContAnalise.CdsColaboradorCentroCustoPCX_CODIGO.AsString;
         CdsIndicesCentroCusto.AsString := FormContAnalise.CdsColaboradorCentroCustoPCX_DESCRI.AsString;
         CdsIndicesQuantidade.AsFloat := FormContAnalise.CdsColaboradorCentroCustoPPC_QUANTIDADE.AsFloat;
         CurTotalColaborador.Value :=  FormContAnalise.CdsColaboradorCentroCustoPPC_QUANTIDADE_TOTAL_PERFIL.AsFloat;
         CdsIndices.Post;

         FormContAnalise.CdsColaboradorCentroCusto.Next;
      end;
end;

procedure TFrmPlanoContasCentroCustoColaborador.Bit_GravarClick( Sender: tObject);
var
      lista:TStringList;
      rIndiceAnterior,
      rSomaTmp:Double;
      sReferencia,
      sTipoLancamento:String;
      I,  posicaoUltimoPonto:Integer;
///
   function ValidaIndices:Boolean;
   var I, posicaoUltimoPonto:Integer;
   begin

        Result := True;
        CdsPercentes.EmptyDataSet;
        CdsIndices.First;
        while (not CdsIndices.Eof) do
        begin
            //Nivel
            sReferencia := '';
            posicaoUltimoPonto := 0;
            for I := 1 to Length(CdsIndicesNivel.AsString) do
            begin
                  if (CdsIndicesNivel.AsString[I] = '.') then
                  begin

                        posicaoUltimoPonto := I;
                  end;
            end;
            //Referencia
            sReferencia := Copy(CdsIndicesNivel.AsString,1,posicaoUltimoPonto);
            //Localiza Totalizador
            if (CdsPercentes.Locate('Referente',sReferencia,[])) then
            begin
                  CdsPercentes.Edit;
                  CdsPercentessoma.AsFloat := CdsPercentessoma.AsFloat + CdsIndicesIndice.AsFloat;
                  CdsPercentes.Post;
            end
            else
            begin
                  CdsPercentes.Append;
                  CdsPercentesReferente.AsString := sReferencia;
                  CdsPercentessoma.AsFloat := CdsIndicesIndice.AsFloat;
                  CdsPercentes.Post;
            end;

            CdsIndices.Next;
      end;
      if (CdsIndices.IsEmpty) then
         Result := True
      else
      begin
            CdsPercentes.First;
            while (not CdsPercentes.Eof) do
            begin
                  if (CdsPercentessoma.AsFloat > 101)and(CdsPercentessoma.AsFloat < 99) then
                  begin
                        Result := False;
                        Exit;
                  end;
                  CdsPercentes.Next;
            end;
      end;
   end;
///
   procedure GravaItensTabela;
   var I : Integer;
   begin
      //Limpa Indices Anteriores
      DataCadastros.sqlUpdate.Close;
      DataCadastros.SqlUpdate.sql.text :=SqlDef('PLANODECONTAS','DELETE FROM PCX0000_PERFIL_COLABORADOR T1','where  t1.PCXPF_REGISTRO = '+IntToStr(iPerfilRateio)+' AND CCT_0000 = '+QuotedStr(PreenchezeroEsquerda(DataCadastros.CdsCtAnaliseCCT_CODIGO.AsString,3)) ,'','T1.');
      DataCadastros.sqlUpdate.Execsql;
      DataCadastros.sqlUpdate.Close;
      //Lança Novos
      CdsIndices.First;
      while (not CdsIndices.Eof) do
      begin
            //Localiza o indice anterior
            sReferencia := '';

            posicaoUltimoPonto := 0;
            sTipoLancamento := 'L';
            if (CdsClone.Locate('Nivel',CdsIndicesNivel.AsString+'.',[loPartialKey])) then
               sTipoLancamento := 'T';

            for I := 1 to Length(CdsIndicesNivel.AsString) do
            begin
                  if (CdsIndicesNivel.AsString[I] = '.') then
                  begin

                        posicaoUltimoPonto := I;
                  end;
            end;
            //Referencia
            sReferencia := Copy(CdsIndicesNivel.AsString,1,posicaoUltimoPonto-1);
            if (Length(CdsIndicesNivel.AsString) = 3) then
               rIndiceAnterior := 0;
            //Localiza Totalizador
            if (CdsClone.Locate('Nivel',sReferencia,[])) then
            begin
                  if (CdsCloneindice.AsFloat > 0) then
                     rIndiceAnterior := CdsCloneindice.AsFloat;
            end
            else
               rIndiceAnterior := 0;

            if (CdsIndicesQuantidade.AsCurrency > 0)and(CurTotalColaborador.Value > 0) then
                  rIndiceAnterior := ((CdsIndicesQuantidade.AsCurrency * 100) / CurTotalColaborador.Value)/100;

            if CdsIndicesQuantidade.ASfLOAT<>0 then
            BEGIN
                 DataCadastros.sqlUpdate.Close;
                 DataCadastros.SqlUpdate.sql.text := 'INSERT INTO PCX0000_PERFIL_COLABORADOR ( EMP_CODIGO, PCXPF_REGISTRO,PPC_TIPO , PCX_CODIGO, CCT_0000, '+
                                                     ' PPC_QUANTIDADE, PPC_QUANTIDADE_TOTAL_PERFIL, PPC_INDICE_REAL) VALUES ('+QuotedStr(dbInicio.Empresa.EMP_CODIGO)+','
                                                                  +IntToStr(iPerfilRateio)+','
                                                                  +QuotedStr(sTipoLancamento)+','
                                                                  +QuotedStr(CdsIndicesReduzido.AsString)+','
                                                                  +QuotedStr(PreenchezeroEsquerda(edtReduzido.Text,3))+','
                                                                  +ValorAmericano(CdsIndicesQuantidade.AsString)+','
                                                                  +ValorAmericano(CurTotalColaborador.Text)+','
                                                                  +ValorAmericano(FloatToStr(rIndiceAnterior))+') ';
                  DataCadastros.sqlUpdate.Execsql;
                  DataCadastros.sqlUpdate.Close;
            END;
            CdsIndices.Next;
      end;
      Close;
   end;
///
begin

     CdsClone.EmptyDataSet;
     CdsClone.Data := CdsIndices.Data;

     if (CurTotalColaborador.Value <= 0) then
        GeraException( 'O total de colaboradores informado não é válido!')
     else
     begin

          CdsIndices.First;
          rSomaTmp := 0;
          while (not CdsIndices.Eof) do
          begin
               rSomaTmp := rSomaTmp + CdsIndicesQuantidade.AsFloat;
               CdsIndices.Next;
          end;
          if (rSomaTmp = 0) then
              GeraException('É necessário informar a quantidade de colaboradores por centro de custo!')
          Else
          if rSomaTmp<>CurTotalColaborador.Value then
             GeraException( 'A soma das quantidades informadas por centro de custo difere do total de colaboradores.'+#13+#13+
                            'Total de Colaboradores : '+ FloatToStr( CurTotalColaborador.Value )+#13+
                            'Soma Qtd.(Cto.Custo) ..: '+ FloatToStr( rSomaTmp ) );

          CdsIndices.First;
          while (not CdsIndices.Eof) do
          begin

               if (CdsIndicesQuantidade.AsFloat > 0) then
               begin
                     PosicaoUltimoPonto := 0;

                     for I := 1 to Length(CdsIndicesNivel.AsString) do
                     begin
                           if (CdsIndicesNivel.AsString[I] = '.') then
                           begin

                                 posicaoUltimoPonto := I;
                           end;
                     end;

                     //Referencia
                     sReferencia := Copy(CdsIndicesNivel.AsString,1,posicaoUltimoPonto-1);
                     //Localiza Totalizador
                     if (sReferencia = '') then
                        rIndiceAnterior := CurTotalColaborador.Value
                     else
                     if (CdsClone.Locate('Nivel',sReferencia,[])) then
                     begin
                           if (CdsCloneQuantidade.AsFloat > 0) then
                              rIndiceAnterior := CdsCloneQuantidade.AsFloat;
                     end
                     else
                         rIndiceAnterior := CurTotalColaborador.Value;

                     CdsIndices.Edit;
                     CdsIndicesIndice.AsFloat  := CdsIndicesQuantidade.AsFloat * 100 / rIndiceAnterior;
                     CdsIndices.Post;

               end;
               CdsIndices.Next;
         end;

         GravaItensTabela;

     end;
end;

end.
