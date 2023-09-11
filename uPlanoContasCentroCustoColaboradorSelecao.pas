unit uPlanoContasCentroCustoColaboradorSelecao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, SqlExpr,SqlClientDataSet, Provider, DB,
  DBClient, DBLocal, DBLocalS,  rxToolEdit, Mask,  rxCurrEdit, RWFunc,
  Data.DBXFirebird, SimpleDS;

type
  TFrmPlanoContasCentroCustoColaboradorSelecao = class(TForm)
    grpTotal: TGroupBox;
    GroupBox1: TGroupBox;
    Bit_Gravar: TBitBtn;
    Bit_Cancelar: TBitBtn;
    DBGrid1: TDBGrid;
    CurTotalColaborador: TCurrencyEdit;
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
    CdsIndicesIC_Selecao: TBooleanField;
    grpDuplicata: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    edtFatura: TEdit;
    edtValor: TEdit;
    edtClienteFornecedor: TEdit;
    grpConta: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edtConta: TEdit;
    edtDescricao: TEdit;
    edtReduzido: TEdit;
    CdsPlanoCentro: TSQLClientDataSet;
    CdsPlanoCentroREGISTRO: TIntegerField;
    CdsPlanoCentroFATURA: TStringField;
    CdsPlanoCentroNUMERO: TStringField;
    CdsPlanoCentroRAZAO: TStringField;
    CdsPlanoCentroVALOR: TFMTBCDField;
    CdsPlanoCentroCCT_CODIGO: TStringField;
    CdsPlanoCentroCCT_NIVEL: TStringField;
    CdsPlanoCentroCCT_DESCRI: TStringField;
    CdsColaboradorCentroCusto: TSQLClientDataSet;
    CdsColaboradorCentroCustoPCX_NIVEL: TStringField;
    CdsColaboradorCentroCustoPCX_DESCRI: TStringField;
    CdsColaboradorCentroCustoPPC_QUANTIDADE: TFMTBCDField;
    CdsColaboradorCentroCustoPCX_CODIGO: TStringField;
    CdsColaboradorCentroCustoPPC_QUANTIDADE_TOTAL_PERFIL: TFMTBCDField;
    CdsColaboradorCentroCustoPPC_TIPO: TStringField;
    procedure Bit_CancelarClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Bit_GravarClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    procedure InformaIncice;
    procedure CalculaTotal;
    procedure Seleciona;
  public
    { Public declarations }
    iPerfilRateio:Integer;
    sCentroSelecionado,
    sTipoRegistro:string;
    iRegistroDuplicata:Integer;
    rValorFatura:Double;
    sCCT_0000:String;
  end;

var
  FrmPlanoContasCentroCustoColaboradorSelecao: TFrmPlanoContasCentroCustoColaboradorSelecao;

implementation

uses
  DataCad, CCT0001, Men0001, uteis, iniciodb;

{$R *.dfm}

procedure TFrmPlanoContasCentroCustoColaboradorSelecao.Bit_CancelarClick(Sender: TObject);
begin
   Close;
end;

procedure TFrmPlanoContasCentroCustoColaboradorSelecao.InformaIncice;
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

procedure TFrmPlanoContasCentroCustoColaboradorSelecao.DBGrid1DblClick(
  Sender: TObject);
begin
   Seleciona;
end;

procedure TFrmPlanoContasCentroCustoColaboradorSelecao.FormShow(Sender: TObject);
begin
   CdsPlanoCentro.Close;
   if (sTipoRegistro <> '') then
      begin
         if (sTipoRegistro = 'R') then //Contas a receber
            CdsPlanoCentro.CommandText := SqlDef('RECEBER','SELECT T1.FAT_REGISTRO AS REGISTRO,    T1.FAT_CODIGO AS FATURA,    T1.FPC_NUMER AS NUMERO,    T2.CLI_RAZAO AS RAZAO,    T1.FPC_VLPARC AS VALOR, t3.CCT_CODIGO, t3.CCT_NIVEL, t3.CCT_DESCRI FROM FAT_PC01 '+
                                                           ' T1 JOIN CLI0000 T2 ON (T2.CLI_CODIGO = T1.CLI_CODIGO) left JOIN CCT_0000 t3 on (t3.CCT_CODIGO = t1.CCT_CODIGO)','where T1.FAT_REGISTRO = '+IntToStr(iRegistroDuplicata),'','T1.')
         else
         if (sTipoRegistro = 'P') then //Contas a receber
            CdsPlanoCentro.CommandText := SqlDef('PAGAR','SELECT T1.PAG_REGISTRO AS REGISTRO,    T1.PAG_CODIGO AS FATURA,    T1.PPC_NUMER AS NUMERO,    T2.FOR_RAZAO AS RAZAO,    T1.PPC_VLPARC AS VALOR, t3.CCT_CODIGO, t3.CCT_NIVEL, t3.CCT_DESCRI FROM PAG_PC01 T1 '+
                                                         ' JOIN FOR0000 T2 ON (T2.FOR_CODIGO = T1.FOR_CODIGO) left JOIN CCT_0000 t3 on (t3.CCT_CODIGO = t1.CCT_CODIGO)','where T1.PAG_REGISTRO  = '+IntToStr(iRegistroDuplicata),'','T1.');
         CdsPlanoCentro.Open;
      end;
   if (not CdsPlanoCentro.IsEmpty) then
      begin
         edtFatura.Text := CdsPlanoCentroFATURA.AsString;
         edtValor.Text := FormatFloat('###,###,###,###,##0.00',CdsPlanoCentroVALOR.AsFloat);
         rValorFatura := CdsPlanoCentroVALOR.AsFloat;
         edtClienteFornecedor.Text := CdsPlanoCentroRAZAO.AsString;

         edtConta.Text := CdsPlanoCentroCCT_NIVEL.AsString;
         edtDescricao.Text := CdsPlanoCentroCCT_DESCRI.AsString;
         edtReduzido.Text := CdsPlanoCentroCCT_CODIGO.AsString;

      end;



   DataCadastros.SqlUpdate.Close;
   DataCadastros.SqlUpdate.Sql.Text := 'INSERT INTO PCX0000_PERFIL_COLABORADOR (EMP_CODIGO, PCXPF_REGISTRO, PCX_CODIGO, PPC_QUANTIDADE, PPC_INDICE_REAL, CCT_0000)  SELECT EMP_CODIGO, '+IntToStr(iPerfilRateio)+', PCX_CODIGO, 0, 0, '+QuotedStr(PreenchezeroEsquerda(DataCadastros.CdsCtAnaliseCCT_CODIGO.AsString,3))+' FROM PCX0000 t1 where t1.PCX_CODIGO NOT IN (SELECT T2.PCX_CODIGO FROM PCX0000_PERFIL_COLABORADOR T2 WHERE T2.PCXPF_REGISTRO = '+IntToStr(iPerfilRateio)+' AND CCT_0000 = '+QuotedStr(PreenchezeroEsquerda(DataCadastros.CdsCtAnaliseCCT_CODIGO.AsString,3))+')';
   DataCadastros.SqlUpdate.ExecSql;
   DataCadastros.SqlUpdate.Close;

   CdsPlanoCentro.Close;
   CdsColaboradorCentroCusto.Close;
   if (sCCT_0000 <> '')and(iPerfilRateio <> 0) then
      begin
         //grpRateio.Caption := DataCadastros.CdsCtAnaliseCCT_DESCRI.AsString;
         //CdsPlanoCentro.CommandText := SqlDef('PLANODECONTAS','SELECT T1.pcx_codigo,T2.pcx_nivel,T2.pcx_descri,T1.pcxp_indice FROM pcx0000_plano T1 join pcx0000 T2 ON (T2.pcx_codigo = T1.pcx_codigo)','where T1.cct_0000 = '''+sCCT_0000+''' and t1.PCXPF_REGISTRO = '+IntToStr(iPerfilRateio),'T2.pcx_nivel','T1.');
         //CdsPlanoCentro.Open;

         CdsColaboradorCentroCusto.CommandText := SqlDef('PLANODECONTAS','SELECT t1.PPC_TIPO, T1.PPC_QUANTIDADE_TOTAL_PERFIL, T2.PCX_CODIGO, T2.PCX_NIVEL, T2.PCX_DESCRI, T1.PPC_QUANTIDADE FROM PCX0000_PERFIL_COLABORADOR T1 JOIN PCX0000 T2 ON (T2.PCX_CODIGO = T1.PCX_CODIGO AND T2.pcx_terminado = ''N'')',
        'where t1.PCXPF_REGISTRO = '+IntToStr(iPerfilRateio)+' and T1.PPC_QUANTIDADE > 0 and t1.PPC_TIPO = ''L'' and CCT_0000 = '+QuotedStr(sCCT_0000),'T2.pcx_nivel','T1.');
         CdsColaboradorCentroCusto.Open;

      end;
   if (CdsColaboradorCentroCusto.IsEmpty) then
      begin
         uteis.aviso('Não foi localizado colaboradores para esta conta');
      end;
   CdsColaboradorCentroCusto.First;
   while (not CdsColaboradorCentroCusto.Eof) do
      begin
         CdsIndices.Append;
         CdsIndicesNivel.AsString := CdsColaboradorCentroCustoPCX_NIVEL.AsString;
         CdsIndicesReduzido.AsString := CdsColaboradorCentroCustoPCX_CODIGO.AsString;
         if (CdsColaboradorCentroCustoPPC_TIPO.AsString = 'L') then
            CdsIndicesQuantidade.AsFloat := CdsColaboradorCentroCustoPPC_QUANTIDADE.AsFloat
         else
            CdsIndicesQuantidade.AsFloat := 0;
         CdsIndicesCentroCusto.AsString := CdsColaboradorCentroCustoPCX_DESCRI.AsString;
         CurTotalColaborador.Value :=  CdsColaboradorCentroCustoPPC_QUANTIDADE_TOTAL_PERFIL.AsFloat;
         CdsIndices.Post;

         CdsColaboradorCentroCusto.Next;
      end;
   CdsIndices.First;
end;

procedure TFrmPlanoContasCentroCustoColaboradorSelecao.Bit_GravarClick(
  Sender: TObject);
   var
      lista:TStringList;
      rIndiceAnterior,
      rSomaTmp:Double;
      sReferencia,
      sTipoLancamento:String;
      I, qtdeNivel, posicaoUltimoPonto:Integer;
   function ValidaIndices:Boolean;
      var
         I, qtdeNivel, posicaoUltimoPonto:Integer;
   begin
      Result := True;
      CdsPercentes.EmptyDataSet;
      CdsIndices.First;
      while (not CdsIndices.Eof) do
         begin
            //Nivel
            sReferencia := '';
            qtdeNivel := 0;
            posicaoUltimoPonto := 0;
            for I := 1 to Length(CdsIndicesNivel.AsString) do
               begin
                  if (CdsIndicesNivel.AsString[I] = '.') then
                     begin
                        Inc(qtdeNivel);
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
         begin
            Result := True;
         end
      else
         begin
            CdsPercentes.First;
            while (not CdsPercentes.Eof) do
               begin
                  if (CdsPercentessoma.AsFloat < 99)or(CdsPercentessoma.AsFloat > 101) then
                     begin
                        Result := False;
                        Exit;
                     end;
                  CdsPercentes.Next;
               end;
         end;

   end;

begin
   //RecalculaIndices
   CdsClone.EmptyDataSet;
   CdsIndices.Filtered := False;
   CdsIndices.Filter := 'IC_Selecao = true';
   CdsIndices.Filtered := true;


   CdsClone.Data := CdsIndices.Data;
   CdsIndices.First;
   rSomaTmp := 0;
   while (not CdsIndices.Eof) do
      begin
         if (CdsIndicesQuantidade.AsFloat > 0) then
            begin
               posicaoUltimoPonto := 0;
               for I := 1 to Length(CdsIndicesNivel.AsString) do
                  begin
                     if (CdsIndicesNivel.AsString[I] = '.') then
                        begin
                           Inc(qtdeNivel);
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
                     //if (CdsCloneQuantidade.AsFloat > 0) then
                     //   rIndiceAnterior := CdsCloneQuantidade.AsFloat;
                  end
               else
                  begin
                     rIndiceAnterior := CurTotalColaborador.Value;
                  end;



               CdsIndices.Edit;
               if (CdsIndicesQuantidade.AsFloat = 0) then
                  CdsIndicesIndice.AsFloat := 0
               else
                  CdsIndicesIndice.AsFloat  := CdsIndicesQuantidade.AsFloat * 100 / rIndiceAnterior;
               CdsIndices.Post;
               rSomaTmp := rSomaTmp + CdsIndicesIndice.AsFloat;
            end;
         CdsIndices.Next;
      end;
   if (1 <> 1) then
      begin
         CdsPercentes.First;
         lista := TStringList.Create;
         while (not CdsPercentes.Eof) do
            begin
               if (CdsPercentessoma.AsFloat < 99)or(CdsPercentessoma.AsFloat > 101) then
                  begin
                     lista.Add(CdsPercentesReferente.AsString+' '+FormatFloat('##0.00%',CdsPercentessoma.AsFloat)+#13#10);
                  end;
               CdsPercentes.Next;
            end;
         uteis.aviso(PChar('Os percentuais informados não fecham em 100% varifique!'+#13#10+#13#10+lista.Text));

         lista.Clear;
         FreeAndNil(lista);
      end
   else
      begin
         //Limpa Indices Anteriores
         DataCadastros.SqlUpdate.Close;
         DataCadastros.SqlUpdate.Sql.Text := SqlDef('PLANODECONTAS','DELETE FROM FIN_RATEIO T1','where T1.FIR_REGISTRO_TIPO = '''+sTipoRegistro+''' and t1.FIR_REGISTRO_CP_CR = '+IntToStr(iRegistroDuplicata),'','T1.');
         DataCadastros.SqlUpdate.ExecSql;
         DataCadastros.SqlUpdate.Close;
         //

         //Lança Novos
         CdsIndices.First;
         while (not CdsIndices.Eof) do
            begin
               rIndiceAnterior := 0;
               //Localiza o indice anterior
               sReferencia := '';
               qtdeNivel := 0;
               posicaoUltimoPonto := 0;
               sTipoLancamento := 'L';
               if (CdsClone.Locate('Nivel',CdsIndicesNivel.AsString+'.',[loPartialKey])) then
                  begin
                     sTipoLancamento := 'T';
                  end;

               for I := 1 to Length(CdsIndicesNivel.AsString) do
                  begin
                     if (CdsIndicesNivel.AsString[I] = '.') then
                        begin
                           Inc(qtdeNivel);
                           posicaoUltimoPonto := I;
                        end;
                  end;
               //Referencia
               sReferencia := Copy(CdsIndicesNivel.AsString,1,posicaoUltimoPonto-1);
               //Localiza Totalizador
               if (CdsClone.Locate('Nivel',sReferencia,[])) then
                  begin
                     if (CdsCloneindice.AsFloat > 0) then
                        rIndiceAnterior := CdsCloneindice.AsFloat;
                  end
               else
                  begin
                     rIndiceAnterior := 0;
                  end;

               if (CdsIndicesIndice.AsFloat > 0) then
                  begin
                     if (rIndiceAnterior > 0) then
                        rIndiceAnterior := ( CdsIndicesIndice.AsFloat /100 ) * (rIndiceAnterior / 100)
                     else
                        rIndiceAnterior := ( CdsIndicesIndice.AsFloat /100 );
                  end;

               DataCadastros.SqlUpdate.Close;
               DataCadastros.SqlUpdate.Sql.Text := 'INSERT INTO FIN_RATEIO (EMP_CODIGO,PCX_CODIGO,FIR_REGISTRO_CP_CR,FIR_REGISTRO_TIPO,FIR_INDICE,FIR_INDICE_REAL, FIR_TIPO) VALUES ('
                                                                                 +QuotedStr(dbInicio.EMPRESA.EMP_CODIGO)+','
                                                                                 +QuotedStr(CdsIndicesReduzido.AsString)+','
                                                                                 +QuotedStr(IntToStr(iRegistroDuplicata))+','
                                                                                 +QuotedStr(sTipoRegistro)+','
                                                                                 +ValorAmericano(CdsIndicesIndice.AsString)+','
                                                                                 +ValorAmericano(FloatToStr(rIndiceAnterior))+','
                                                                                 +QuotedStr(sTipoLancamento)
                                                                                 +') ';
               DataCadastros.SqlUpdate.ExecSql;
               DataCadastros.SqlUpdate.Close;

               //Atualiza Perfil Rateio
               if (sTipoRegistro = 'R') then
                  begin
                     dataCadastros.SqlUpdate.Close;
                     dataCadastros.SqlUpdate.Sql.Text := 'UPDATE FAT_PC01 SET PCXPF_REGISTRO = '+QuotedStr('-1')+' WHERE FAT_REGISTRO = '+QuotedStr(IntToStr(iRegistroDuplicata));
                     dataCadastros.SqlUpdate.ExecSql;
                  end
               else
                  begin
                     dataCadastros.SqlUpdate.Close;
                     dataCadastros.SqlUpdate.Sql.Text := 'UPDATE PAG_PC01 SET PCXPF_REGISTRO = '+QuotedStr('-1')+' WHERE PAG_REGISTRO = '+QuotedStr(IntToStr(iRegistroDuplicata));
                     dataCadastros.SqlUpdate.ExecSql;
                  end;

               CdsIndices.Next;
            end;
         Close;
      end;
   CdsIndices.Filtered := False;
end;

procedure TFrmPlanoContasCentroCustoColaboradorSelecao.DBGrid1DrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
   Check: Integer;
   R: TRect;
begin
   if (not CdsIndices.IsEmpty) then
      begin
         if Column.FieldName = 'IC_Selecao' then
            begin
               DBGrid1.Canvas.FillRect(Rect);
               Check := 0;
               if CdsIndicesIC_Selecao.AsBoolean then
                  Check := DFCS_CHECKED
               else
                  Check := 0;
               R:=Rect;
               InflateRect(R,-2,-2); {Diminue o tamanho do CheckBox}
               DrawFrameControl(DBGrid1.Canvas.Handle,R,DFC_BUTTON, DFCS_BUTTONCHECK or Check);    
            end;
      end;
end;

procedure TFrmPlanoContasCentroCustoColaboradorSelecao.CalculaTotal;
var
   rTotal,acumuladoNivel:Real;
   ponto, ponto1:TBookmark;
   sNivel:String;
begin
   rTotal := 0;
   CdsIndices.DisableControls;
   ponto := CdsIndices.GetBookmark;
   CdsIndices.First;
   CurTotalColaborador.AsInteger := 0;

   while (not CdsIndices.Eof) do
      begin
         sNivel := CdsIndicesNivel.AsString;

         CdsIndices.Filtered := false;
         CdsIndices.Filter := 'Nivel like '''+sNivel+'.%''';
         CdsIndices.Filtered := True;

         if (not CdsIndices.IsEmpty) then
            begin
               CdsIndices.Filtered := false;
               CdsIndices.Locate('Nivel',sNivel,[]);
               CdsIndices.Edit;
               CdsIndicesIC_Selecao.AsBoolean := False;
               CdsIndicesQuantidade.AsFloat := 0;
               CdsIndices.Post;
            end;

         CdsIndices.Filtered := false;
         CdsIndices.Filter := 'Nivel like '''+sNivel+'.%''';
         CdsIndices.Filtered := True;
         acumuladoNivel := 0;
         
         while (not CdsIndices.Eof) do
            begin
               if (CdsIndicesIC_Selecao.AsBoolean) then
                  acumuladoNivel := acumuladoNivel + CdsIndicesQuantidade.AsFloat;
               CdsIndices.Next;
            end;

         CdsIndices.Filtered := false;
         CdsIndices.Locate('Nivel',sNivel,[]);

         if (acumuladoNivel > 0) then
            begin
               CdsIndices.Edit;
               CdsIndicesIC_Selecao.AsBoolean := True;
               CdsIndicesQuantidade.AsFloat := acumuladoNivel;
               CdsIndices.Post;
            end;


          if (CdsIndicesIC_Selecao.AsBoolean)and(acumuladoNivel = 0) then
            rTotal :=  rTotal + CdsIndicesQuantidade.Value;
         CdsIndices.Next;
      end;
   CurTotalColaborador.Value := rTotal;
   CdsIndices.First;
   CdsIndices.GotoBookmark(ponto);
   CdsIndices.EnableControls;
end;

procedure TFrmPlanoContasCentroCustoColaboradorSelecao.FormClose(
  Sender: TObject; var Action: TCloseAction);
begin
   CdsPlanoCentro.Close;
end;

procedure TFrmPlanoContasCentroCustoColaboradorSelecao.Seleciona;
var
   tipo:Boolean;
   sNivel:string;
begin
   if (not CdsIndices.IsEmpty) then
      begin
         try
            sNivel := CdsIndicesNivel.AsString;
            CdsIndices.Edit;
            CdsIndicesIC_Selecao.AsBoolean := not CdsIndicesIC_Selecao.AsBoolean;
            tipo := CdsIndicesIC_Selecao.AsBoolean;
            CdsIndices.Post;

            CdsIndices.Filtered := false;
            CdsIndices.Filter := 'Nivel like '''+sNivel+'.%''';
            CdsIndices.Filtered := True;

            while (not CdsIndices.Eof) do
               begin
                  CdsIndices.Edit;
                  CdsIndicesIC_Selecao.AsBoolean := tipo;
                  CdsIndices.Post;
                  CdsIndices.Next;
               end;

            CdsIndices.Filtered := false;
            CdsIndices.Locate('Nivel',sNivel,[]);

         except
         end;
         CalculaTotal;
      end;
end;

procedure TFrmPlanoContasCentroCustoColaboradorSelecao.DBGrid1KeyPress(
  Sender: TObject; var Key: Char);
begin
   if (Key = #13) then
      begin
         Key := #0;
         Seleciona;
      end;
end;

end.
