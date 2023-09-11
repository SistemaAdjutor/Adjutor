unit uPlanoContasCentroCustoManual;


{$WARNINGS OFF}
{$HINTS OFF}
{$D-}

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, DBClient, Grids, DBGrids, Mask,  rxToolEdit,
   rxCurrEdit, SqlExpr,SqlClientDataSet, Provider, Menus, DBLocal, DBLocalS,
  Data.DBXFirebird, SimpleDS, Data.FMTBcd, Vcl.ExtCtrls;

type
  TFrmPlanoContasCentroCustoManual = class(TForm)
    grpConta: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edtConta: TEdit;
    edtDescricao: TEdit;
    edtReduzido: TEdit;
    GroupBox1: TGroupBox;
    dbgrdCentros: TDBGrid;
    CdsPlanoCentro: TSQLClientDataSet;
    dsPlanoCentro: TDataSource;
    CdsIndices: TClientDataSet;
    CdsIndicesNivel: TStringField;
    CdsIndicesCentroCusto: TStringField;
    CdsIndicesReduzido: TStringField;
    CdsIndicesIndice: TFloatField;
    CdsIndicesIndiceReal: TFloatField;
    pm1: TPopupMenu;
    Adicionar1: TMenuItem;
    Remover1: TMenuItem;
    CdsPercentes: TClientDataSet;
    CdsPercentesNivel: TIntegerField;
    CdsPercentessoma: TFloatField;
    CdsPercentesReferente: TStringField;
    CdsPercentesIndiceReal: TFloatField;
    CdsClone: TClientDataSet;
    CdsCloneNivel: TStringField;
    CdsCloneindice: TFloatField;
    CdsCloneReduzido: TStringField;
    CdsCloneIndiceReal: TFloatField;
    CdsCloneCentroCusto: TStringField;
    CdsIndicesValor: TFloatField;
    grpDuplicata: TGroupBox;
    Label4: TLabel;
    edtFatura: TEdit;
    edtValor: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    edtClienteFornecedor: TEdit;
    CdsPlanoCentroREGISTRO: TIntegerField;
    CdsPlanoCentroFATURA: TStringField;
    CdsPlanoCentroNUMERO: TStringField;
    CdsPlanoCentroRAZAO: TStringField;
    CdsPlanoCentroVALOR: TFMTBCdField;
    CdsPlanoCentroCCT_CODIGO: TStringField;
    CdsPlanoCentroCCT_NIVEL: TStringField;
    CdsPlanoCentroCCT_DESCRI: TStringField;
    CdsCloneValor: TFloatField;
    VLR1: TCurrencyEdit;
    VLR2: TCurrencyEdit;
    qAux: TSQLQuery;
    qAux2: TSQLQuery;
    Panel1: TPanel;
    Bit_Gravar: TBitBtn;
    Bit_Cancelar: TBitBtn;
    btnAdicionar: TBitBtn;
    btnRemover: TBitBtn;
    lbTotal: TLabel;
    procedure Bit_CancelarClick(Sender: tObject);
    procedure btnAdicionarClick(Sender: tObject);
    procedure btnRemoverClick(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure dbgrdCentrosDblClick(Sender: tObject);
    procedure Bit_GravarClick(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure dbgrdCentrosKeyPress(Sender: tObject; var Key: Char);
    procedure Adicionar1Click(Sender: tObject);
    procedure Remover1Click(Sender: tObject);
    procedure InformaIncice;
  private
    { Private declarations }
    procedure AdicionarCentro;
    procedure RemoverCentro;
    procedure AtualizaNivel;
  public
    { Public declarations }
    sCentroSelecionado,
    sConta,
    sTipoRegistro:string;
    iRegistroDuplicata:Integer;
    rValorFatura:Double;
  end;

var
  FrmPlanoContasCentroCustoManual: TFrmPlanoContasCentroCustoManual;

implementation

uses
  DataCad, PCX0000, Men0001, RWFunc, uteis, iniciodb;

{$R *.dfm}

procedure TFrmPlanoContasCentroCustoManual.AdicionarCentro;
var
  I, index: integer;
  lista : TStringList;
begin
   sCentroSelecionado := '';
   FormProjCaixa := TFormProjCaixa.Create(Application);
   FormProjCaixa.FormStyle := fsNormal;
   FormProjCaixa.Visible := false;
   try
      FormProjCaixa.ShowModal;
      if FormProjCaixa.ModalResult=mrOk then
      begin
         sCentroSelecionado := FormProjCaixa.retorno;
         sConta := FormProjCaixa.Conta;
      end;
   finally
      FreeAndNil(FormProjCaixa);
   end;
   if (sCentroSelecionado <> '') then
      begin
          DataCadastros.sqlUpdate.Close;
          // DataCadastros.SqlUpdate.sql.text :=SqlDef('PLANODECONTAS','SELECT T1.pcx_nivel, T1.pcx_codigo, t1.pcx_descri FROM pcx0000 T1 ','WHERE CAST(REPLACE(T1.pcx_nivel, ''.'', '''') AS INTEGER) <= CAST(REPLACE((SELECT T2.pcx_nivel FROM pcx0000 T2 WHERE T2.pcx_codigo = '+QuotedStr(sCentroSelecionado)+'), ''.'', '''') AS INTEGER) AND T1.pcx_codigo IN  (select T3.pcx_codigo FROM pcx0000 T3 WHERE substring(T3.pcx_nivel FROM 1 FOR 3) = (SELECT substring(T2.pcx_nivel FROM 1 FOR 3) FROM pcx0000 T2 WHERE T2.pcx_codigo = '+QuotedStr(sCentroSelecionado)+') )','T1.pcx_nivel','T1.');
          DataCadastros.SqlUpdate.sql.text :=SqlDef('PLANODECONTAS','SELECT T1.pcx_nivel, T1.pcx_codigo, t1.pcx_descri, t1.nivel_pai FROM pcx0000 T1 ','WHERE T1.pcx_nivel <= (SELECT T2.pcx_nivel FROM pcx0000 T2 WHERE T2.pcx_codigo = '+QuotedStr(sCentroSelecionado)+') AND T1.pcx_codigo IN  (select T3.pcx_codigo FROM pcx0000 T3 WHERE substring(T3.pcx_nivel FROM 1 FOR 3) = (SELECT substring(T2.pcx_nivel FROM 1 FOR 3) FROM pcx0000 T2 WHERE T2.pcx_codigo = '+QuotedStr(sCentroSelecionado)+') )','T1.pcx_nivel','T1.');
          DataCadastros.sqlUpdate.Open;
          Lista := TStringList.Create;
          for I := 1 to Length(sConta) do
          begin
            if (sConta[I] = '.') then
            begin
              lista.Add(Copy(sConta, 1, I -1));
            end;
          end;
          lista.Add(sConta);

         DataCadastros.sqlUpdate.First;
         while (not DataCadastros.sqlUpdate.Eof) do
           begin
             if lista.find(DataCadastros.sqlUpdate.FieldByName('pcx_nivel').AsString, index) then
               if (not CdsIndices.Locate('Reduzido',DataCadastros.sqlUpdate.FieldByName('pcx_codigo').AsString,[])) then
                  begin
                     CdsIndices.Append;
                     CdsIndicesNivel.AsString := DataCadastros.sqlUpdate.FieldByName('pcx_nivel').AsString;
                     CdsIndicesCentroCusto.AsString := DataCadastros.sqlUpdate.FieldByName('pcx_descri').AsString;
                     CdsIndicesReduzido.AsString := DataCadastros.sqlUpdate.FieldByName('pcx_codigo').AsString;
                     CdsIndicesIndice.AsFloat := 0;
                     CdsIndices.Post;
                  end;
             DataCadastros.sqlUpdate.Next;
           end;
      end;
end;


procedure TFrmPlanoContasCentroCustoManual.Bit_CancelarClick(
  Sender: tObject);
begin
   Close;
end;

procedure TFrmPlanoContasCentroCustoManual.btnAdicionarClick(
  Sender: tObject);
begin
   AdicionarCentro;
end;

procedure TFrmPlanoContasCentroCustoManual.btnRemoverClick(
  Sender: tObject);
begin
   RemoverCentro;
end;

procedure TFrmPlanoContasCentroCustoManual.InformaIncice;
   var
      valor:Double;
begin
   try
      repeat
         valor := StrToFloat(InputBox('Valor no Centro', 'Informe o Valor',CdsIndicesValor.AsString));
      until valor > 0;

      if (valor < 0) then
         begin
            uteis.aviso('O valor não pode ser negativo');
            InformaIncice;
         end
      else
         begin
            CdsIndices.Edit;
            CdsIndicesValor.AsFloat := valor;
            if (valor > 0) then
               CdsIndicesIndice.AsFloat := (valor * 100) / rValorFatura
            else
               CdsIndicesIndice.AsFloat := 0;
            CdsIndices.Post;
            CdsClone.EmptyDataSet;
            CdsClone.Data := CdsIndices.Data;
            RegistroCorrente := CdsIndices.RecNo;
            while not CdsIndices.Eof do
            begin
              qAux.Close;
              qAux.SQL.Text := 'SELECT PCX_TIPO FROM pcx0000 WHERE PCX_CODIGO = ' + QuotedStr(CdsIndicesReduzido.AsString);
              qAux.Open;
              if qAux.FieldByName('PCX_TIPO').AsString = 'L' then
                CdsIndices.Next
              else
              begin
                CdsIndices.Prior;
                Break;
              end;
            end;
            posicaoUltimoPonto := Length(CdsIndicesNivel.AsString);
            CdsIndices.DisableControls;
            CdsIndices.Last;
            // teve que ser colocada na unit uteis.pas pois esta unit não depura nem a pau
            AjustaNivelSuperior;
            CdsIndices.RecNo := RegistroCorrente;
            CdsIndices.EnableControls;
         end;
   except
    on e:Exception do
      uteis.aviso(e.Message);
      // InformaIncice;
   end;
end;

procedure TFrmPlanoContasCentroCustoManual.RemoverCentro;
begin
   if (not CdsIndices.IsEmpty) then
      begin
         if (uteis.confirmacao ( ('Confirma a desvinculação do Centro de Custo '+CdsIndicesCentroCusto.AsString))=mrYes) then
            begin
               CdsIndices.Filter := 'Nivel like '''+CdsIndicesNivel.AsString+'%''';
               CdsIndices.Filtered := False;
               CdsIndices.Filtered := True;
               CdsIndices.First;
               while (not CdsIndices.Eof) do
                  begin
                     CdsIndices.Delete;
                  end;
               CdsIndices.Filtered := False;
            end;
      end;
end;

procedure TFrmPlanoContasCentroCustoManual.FormShow(Sender: tObject);
begin
   CdsIndices.CreateDataSet;
   CdsPercentes.CreateDataSet;
   CdsClone.CreateDataSet;
   AtualizaNivel;
   AjustaNivelSuperior;
end;

procedure TFrmPlanoContasCentroCustoManual.AtualizaNivel;
begin
   CdsPlanoCentro.Close;
   if (sTipoRegistro <> '') then
      begin
         if (sTipoRegistro = 'R') then //Contas a receber
            CdsPlanoCentro.CommandText := SqlDef('RECEBER','SELECT T1.FAT_REGISTRO AS REGISTRO,    T1.FAT_CODIGO AS FATURA,    T1.FPC_NUMER AS NUMERO,    T2.CLI_RAZAO AS RAZAO,    T1.FPC_VLPARC AS VALOR, t3.CCT_CODIGO, t3.CCT_NIVEL, t3.CCT_DESCRI FROM FAT_PC01 '+
                                                           ' T1 JOIN CLI0000 T2 ON (T2.CLI_CODIGO = T1.CLI_CODIGO) left JOIN CCT_0000 t3 on (t3.CCT_CODIGO = t1.CCT_CODIGO)','where T1.FAT_REGISTRO = '+IntToStr(iRegistroDuplicata),'','T1.')
         else
         if (sTipoRegistro = 'P') then //Contas a receber
            CdsPlanoCentro.CommandText := SqlDef('PAGAR','SELECT T1.PAG_REGISTRO AS REGISTRO,    T1.PAG_CODIGO AS FATURA,    T1.PPC_NUMER AS NUMERO,    T2.FOR_RAZAO AS RAZAO,   (T1.PPC_VLPARC - T1.PPC_VALOR_N_RATEIA) AS VALOR, t3.CCT_CODIGO, t3.CCT_NIVEL, t3.CCT_DESCRI FROM PAG_PC01 T1 '+
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


   DataCadastros.sqlUpdate.Close;
   DataCadastros.SqlUpdate.sql.text :='select t1.FIR_INDICE,t1.PCX_CODIGO,t1.FIR_INDICE_REAL,t1.FIR_TIPO,t1.FIR_REGISTRO_CP_CR,t2.PCX_NIVEL,t2.PCX_DESCRI from FIN_RATEIO t1 join PCX0000 t2 on (t2.PCX_CODIGO = t1.PCX_CODIGO) where t1.FIR_REGISTRO_TIPO = '+QuotedStr(sTipoRegistro)+' and t1.FIR_REGISTRO_CP_CR = '+IntToStr(iRegistroDuplicata);
   DataCadastros.sqlUpdate.Open;



   if (not DataCadastros.sqlUpdate.IsEmpty) then
      begin
         DataCadastros.sqlUpdate.First;
         while (not DataCadastros.sqlUpdate.Eof) do
            begin
               CdsIndices.Append;
               CdsIndicesNivel.AsString := DataCadastros.sqlUpdate.FieldByName('PCX_NIVEL').AsString;
               CdsIndicesCentroCusto.AsString := DataCadastros.sqlUpdate.FieldByName('PCX_DESCRI').AsString;
               CdsIndicesReduzido.AsString := DataCadastros.sqlUpdate.FieldByName('PCX_CODIGO').AsString;
               CdsIndicesIndice.AsFloat := DataCadastros.sqlUpdate.FieldByName('FIR_INDICE').AsFloat;
               CdsIndicesValor.AsFloat := DataCadastros.sqlUpdate.FieldByName('FIR_INDICE_REAL').AsFloat * rValorFatura;
               CdsIndices.Post;
               DataCadastros.sqlUpdate.Next;
            end;
      end;
end;

procedure TFrmPlanoContasCentroCustoManual.dbgrdCentrosDblClick(
  Sender: tObject);
begin
   if (not CdsIndices.IsEmpty) then
      begin
         InformaIncice;
      end;
end;

procedure TFrmPlanoContasCentroCustoManual.Bit_GravarClick(
  Sender: tObject);
   var
      lista:TStringList;
      rIndiceAnterior,
      rSomaTmp,
      rValor1,
      rValor2,
      rResultado
      :Real;
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
   CdsClone.Data := CdsIndices.Data;
   CdsIndices.First;
   rSomaTmp := 0;
   while (not CdsIndices.Eof) do
      begin
         if (CdsIndicesValor.AsFloat > 0) then
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
                  rIndiceAnterior := rValorFatura
               else
               if (CdsClone.Locate('Nivel',sReferencia,[])) then
                  begin
                     if (CdsCloneValor.AsFloat > 0) then
                        rIndiceAnterior := CdsCloneValor.AsFloat;
                  end
               else
                  begin
                     rIndiceAnterior := rValorFatura;
                  end;



               CdsIndices.Edit;
               if (CdsIndicesValor.AsFloat = 0) then
                  CdsIndicesIndice.AsFloat := 0
               else
                  CdsIndicesIndice.AsFloat  := CdsIndicesValor.AsFloat * 100 / rIndiceAnterior;
               CdsIndices.Post;
               rSomaTmp := rSomaTmp + CdsIndicesIndice.AsFloat;
            end;
         CdsIndices.Next;
      end;
   if (not ValidaIndices) then
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
         uteis.aviso(PChar('Os percentuais informados não fecham em 100%, verifique!'+#13#10+#13#10+lista.Text));

         lista.Clear;
         FreeAndNil(lista);
      end
   else
      begin
         //Limpa Indices Anteriores
         DataCadastros.sqlUpdate.Close;
         DataCadastros.SqlUpdate.sql.text :=SqlDef('PLANODECONTAS','DELETE FROM FIN_RATEIO T1','where T1.FIR_REGISTRO_TIPO = '''+sTipoRegistro+''' and t1.FIR_REGISTRO_CP_CR = '+IntToStr(iRegistroDuplicata),'','T1.');
         DataCadastros.sqlUpdate.Execsql;
         DataCadastros.sqlUpdate.Close;
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

               DataCadastros.sqlUpdate.Close;
               DataCadastros.SqlUpdate.sql.text :='INSERT INTO FIN_RATEIO (EMP_CODIGO,PCX_CODIGO,FIR_REGISTRO_CP_CR,FIR_REGISTRO_TIPO,FIR_INDICE,FIR_INDICE_REAL, FIR_TIPO) VALUES ('
                                                                                 +QuotedStr(dbInicio.Empresa.EMP_CODIGO)+','
                                                                                 +QuotedStr(CdsIndicesReduzido.AsString)+','
                                                                                 +QuotedStr(IntToStr(iRegistroDuplicata))+','
                                                                                 +QuotedStr(sTipoRegistro)+','
                                                                                 +ValorAmericano(CdsIndicesIndice.AsString)+','
                                                                                 +ValorAmericano(FloatToStr(rIndiceAnterior))+','
                                                                                 +QuotedStr(sTipoLancamento)
                                                                                 +') ';
               DataCadastros.sqlUpdate.Execsql;
               DataCadastros.sqlUpdate.Close;

               //Atualiza Perfil Rateio
               if (sTipoRegistro = 'R') then
                  begin
                     dataCadastros.sqlUpdate.Close;
                     DataCadastros.SqlUpdate.sql.text :='UPDATE FAT_PC01 SET PCXPF_REGISTRO = '+QuotedStr('-1')+' WHERE FAT_REGISTRO = '+QuotedStr(IntToStr(iRegistroDuplicata));
                     dataCadastros.sqlUpdate.Execsql;
                  end
               else
                  begin
                     dataCadastros.sqlUpdate.Close;
                     DataCadastros.SqlUpdate.sql.text :='UPDATE PAG_PC01 SET PCXPF_REGISTRO = '+QuotedStr('-1')+' WHERE PAG_REGISTRO = '+QuotedStr(IntToStr(iRegistroDuplicata));
                     dataCadastros.sqlUpdate.Execsql;
                  end;

               CdsIndices.Next;
            end;
         Close;
      end;
end;

procedure TFrmPlanoContasCentroCustoManual.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
   CdsPlanoCentro.Close;
   CdsIndices.EmptyDataSet;
   CdsPercentes.EmptyDataSet;
   CdsClone.EmptyDataSet;
end;

procedure TFrmPlanoContasCentroCustoManual.dbgrdCentrosKeyPress(
  Sender: tObject; var Key: Char);
begin
   if (Key = #13) then
      begin
         Key := #0;
         if (not CdsIndices.IsEmpty) then
            begin
               InformaIncice;
            end; 
      end;
end;

procedure TFrmPlanoContasCentroCustoManual.Adicionar1Click(
  Sender: tObject);
begin
   AdicionarCentro;
end;

procedure TFrmPlanoContasCentroCustoManual.Remover1Click(Sender: tObject);
begin
   RemoverCentro;
end;

end.
