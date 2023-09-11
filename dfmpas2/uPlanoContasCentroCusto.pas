unit uPlanoContasCentroCusto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, SqlExpr,SqlClientDataSet, Provider, DB,
  DBClient, DBLocal, DBLocalS, Menus, Mask, rxToolEdit, SimpleDS,
  Data.DBXFirebird, JvExMask, JvToolEdit;

type
  TFrmPlanoContasCentroCusto = class(TForm)
    grpConta: TGroupBox;
    GroupBox1: TGroupBox;
    Bit_Gravar: TBitBtn;
    Bit_Cancelar: TBitBtn;
    edtConta: TEdit;
    edtDescricao: TEdit;
    edtReduzido: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    dbgrdCentros: TDBGrid;
    CdsPlanoCentro: TSQLClientDataSet;
    CdsPlanoCentroPCX_CODIGO: TStringField;
    CdsPlanoCentroPCX_NIVEL: TStringField;
    CdsPlanoCentroPCX_DESCRI: TStringField;
    CdsPlanoCentroPCXP_INDICE: TFMTBCdField;
    dsPlanoCentro: TDataSource;
    CdsIndices: TClientDataSet;
    CdsIndicesNivel: TStringField;
    CdsIndicesCentroCusto: TStringField;
    CdsIndicesReduzido: TStringField;
    CdsIndicesIndice: TFloatField;
    pm1: TPopupMenu;
    Adicionar1: TMenuItem;
    Remover1: TMenuItem;
    CdsPercentes: TClientDataSet;
    CdsPercentesNivel: TIntegerField;
    CdsPercentessoma: TFloatField;
    CdsPercentesReferente: TStringField;
    btnAdicionar: TBitBtn;
    btnRemover: TBitBtn;
    CdsIndicesIndiceReal: TFloatField;
    CdsPercentesIndiceReal: TFloatField;
    CdsClone: TClientDataSet;
    CdsCloneNivel: TStringField;
    CdsCloneindice: TFloatField;
    CdsCloneReduzido: TStringField;
    CdsCloneIndiceReal: TFloatField;
    CdsCloneCentroCusto: TStringField;
    grpPerfil: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    RxDataInicial: TJvDateEdit;
    RxDataFinal: TJvDateEdit;
    procedure Bit_CancelarClick(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure FormShow(Sender: tObject);
    procedure Bit_GravarClick(Sender: tObject);
    procedure dbgrdCentrosDblClick(Sender: tObject);
    procedure dbgrdCentrosKeyPress(Sender: tObject; var Key: Char);
    procedure btnAdicionarClick(Sender: tObject);
    procedure btnRemoverClick(Sender: tObject);
    procedure Adicionar1Click(Sender: tObject);
    procedure Remover1Click(Sender: tObject);
  private
    { Private declarations }
    procedure AtualizaNivel;

    procedure AdicionarCentro;
    procedure RemoverCentro;

    procedure InformaIncice;

  public
    { Public declarations }
    sCentroSelecionado:String;
    iPerfilRateio:Integer;
  end;

var
  FrmPlanoContasCentroCusto: TFrmPlanoContasCentroCusto;

implementation

uses
  DataCad, RWFunc, PCX0000, Men0001, CCT0001, uteis, iniciodb;

{$R *.dfm}

procedure TFrmPlanoContasCentroCusto.AdicionarCentro;
begin
   sCentroSelecionado := '';
   FormProjCaixa := TFormProjCaixa.Create(Application);
   try
      FormProjCaixa.ShowModal;
      if FormProjCaixa.ModalResult=mrOk then
         sCentroSelecionado := FormProjCaixa.retorno;
   finally
      FreeAndNil(FormProjCaixa)
   end;

   if (sCentroSelecionado <> '') then
      begin
         DataCadastros.sqlUpdate.Close;
         DataCadastros.SqlUpdate.sql.text :=SqlDef('PLANODECONTAS','SELECT T1.pcx_nivel, T1.pcx_codigo, t1.pcx_descri FROM pcx0000 T1 ','WHERE CAST(REPLACE(T1.pcx_nivel, ''.'', '''') AS INTEGER) <= CAST(REPLACE((SELECT T2.pcx_nivel FROM pcx0000 T2 WHERE T2.pcx_codigo = '+QuotedStr(sCentroSelecionado)+'), ''.'', '''') AS INTEGER) AND T1.pcx_codigo IN  (select T3.pcx_codigo FROM pcx0000 T3 WHERE substring(T3.pcx_nivel FROM 1 FOR 3) = (SELECT substring(T2.pcx_nivel FROM 1 FOR 3) FROM pcx0000 T2 WHERE T2.pcx_codigo = '+QuotedStr(sCentroSelecionado)+') )','T1.pcx_nivel','T1.');
         DataCadastros.sqlUpdate.Open;
         DataCadastros.sqlUpdate.First;
         while (not DataCadastros.sqlUpdate.Eof) do
            begin
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

procedure TFrmPlanoContasCentroCusto.AtualizaNivel;
begin
   CdsPlanoCentro.Close;
   if (edtReduzido.Text <> '') then
      begin
         CdsPlanoCentro.CommandText := SqlDef('PLANODECONTAS','SELECT T1.pcx_codigo,T2.pcx_nivel,T2.pcx_descri,T1.pcxp_indice FROM pcx0000_plano T1 join pcx0000 T2 ON (T2.pcx_codigo = T1.pcx_codigo)','where T1.cct_0000 = '''+edtReduzido.Text+''' and t1.PCXPF_REGISTRO = '+IntToStr(iPerfilRateio),'T2.pcx_nivel','T1.');
         CdsPlanoCentro.Open;
      end;
   if (not CdsPlanoCentro.IsEmpty) then
      begin
         CdsPlanoCentro.First;
         while (not CdsPlanoCentro.Eof) do
            begin
               CdsIndices.Append;
               CdsIndicesNivel.AsString := CdsPlanoCentroPCX_NIVEL.AsString;
               CdsIndicesCentroCusto.AsString := CdsPlanoCentroPCX_DESCRI.AsString;
               CdsIndicesReduzido.AsString := CdsPlanoCentroPCX_CODIGO.AsString;
               CdsIndicesIndice.AsFloat := CdsPlanoCentroPCXP_INDICE.AsFloat;
               CdsIndices.Post;
               CdsPlanoCentro.Next;
            end;
      end;
end;

procedure TFrmPlanoContasCentroCusto.Bit_CancelarClick(Sender: tObject);
begin
   Close;
end;

procedure TFrmPlanoContasCentroCusto.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
   CdsPlanoCentro.Close;
   CdsIndices.EmptyDataSet;
   CdsPercentes.EmptyDataSet;
   CdsClone.EmptyDataSet;
end;

procedure TFrmPlanoContasCentroCusto.FormShow(Sender: tObject);
begin
   CdsIndices.CreateDataSet;
   CdsPercentes.CreateDataSet;
   CdsClone.CreateDataSet;
   RxDataInicial.Date := FormContAnalise.cbPerfil.CdS.FieldByName('PCXPF_DATA_INICIAL').AsDateTime;
   RxDataFinal.Date := FormContAnalise.cbPerfil.CdS.FieldByName('PCXPF_DATA_FINAL').AsDateTime;
   AtualizaNivel;
end;

procedure TFrmPlanoContasCentroCusto.RemoverCentro;
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

procedure TFrmPlanoContasCentroCusto.Bit_GravarClick(Sender: tObject);
var
   lista:TStringList;
   rIndiceAnterior:Double;
   sReferencia,
   sTipoLancamento:String;
   I, qtdeNivel, posicaoUltimoPonto:Integer;
///
   function ValidaIndices:Boolean;
   var I, qtdeNivel, posicaoUltimoPonto:Integer;
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
         Result := True
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
///
begin
     if (not ValidaIndices) then
     begin
         CdsPercentes.First;
         lista := TStringList.Create;
         while (not CdsPercentes.Eof) do
         begin
              if (CdsPercentessoma.AsFloat < 99)or(CdsPercentessoma.AsFloat > 101) then
                 lista.Add(CdsPercentesReferente.AsString+' '+FormatFloat('##0.00%',CdsPercentessoma.AsFloat)+#13#10);
              CdsPercentes.Next;
         end;
         uteis.aviso(PChar('Os percentuais informados não fecham em 100% varifique!'+#13#10+#13#10+lista.Text));

         lista.Clear;
         FreeAndNil(lista);
     end
     else
     begin
         //Limpa Indices Anteriores
         DataCadastros.sqlUpdate.Close;
         DataCadastros.SqlUpdate.sql.text :=SqlDef('PLANODECONTAS','DELETE FROM PCX0000_PLANO T1','where T1.cct_0000 = '''+edtReduzido.Text+''' and t1.PCXPF_REGISTRO = '+IntToStr(iPerfilRateio),'','T1.');
         DataCadastros.sqlUpdate.Execsql;
         DataCadastros.sqlUpdate.Close;
         //
         CdsClone.EmptyDataSet;
         CdsClone.Data := CdsIndices.Data;
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
                  sTipoLancamento := 'T';

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
                   rIndiceAnterior := 0;

               if (CdsIndicesIndice.AsFloat > 0) then
                  if (rIndiceAnterior > 0) then
                     rIndiceAnterior := ( CdsIndicesIndice.AsFloat /100 ) * (rIndiceAnterior / 100)
                  else
                     rIndiceAnterior := ( CdsIndicesIndice.AsFloat /100 );

               if CdsIndicesIndice.ASfLOAT<>0 then
               BEGIN
                    DataCadastros.SqlUpdate.CLOSE;
                    DataCadastros.SqlUpdate.sql.text :='INSERT INTO PCX0000_PLANO (EMP_CODIGO,CCT_0000,PCX_CODIGO,PCXP_INDICE,PCXP_INDICE_REAL, PCXP_TIPO,PCXPF_REGISTRO) VALUES ('+QuotedStr(dbInicio.Empresa.EMP_CODIGO)+','+QuotedStr(edtReduzido.Text)+','+QuotedStr(CdsIndicesReduzido.AsString)+','+ValorAmericano(CdsIndicesIndice.AsString)+','+ValorAmericano(FloatToStr(rIndiceAnterior))+','+QuotedStr(sTipoLancamento)+','+IntToStr(iPerfilRateio)+') ';
                    DataCadastros.sqlUpdate.Execsql;
               END;
               CdsIndices.Next;
         end;
         Close;
     end;
end;

procedure TFrmPlanoContasCentroCusto.dbgrdCentrosDblClick(Sender: tObject);
begin
   if (not CdsIndices.IsEmpty) then
      begin
         InformaIncice;
      end;  
end;

procedure TFrmPlanoContasCentroCusto.InformaIncice;
   var
      valor:Double;
begin
   try
      repeat
         valor := StrToFloat(InputBox('Centro de Custo', 'Informe o Percentual em %',CdsIndicesIndice.AsString));
      until valor <> -1;
      if (valor > 100) then
         begin
            uteis.aviso('O valor não pode ser maior de 100%');
            InformaIncice;
         end
      else
      if (valor < 0) then
         begin
            uteis.aviso('O valor não pode ser negativo');
            InformaIncice;
         end
      else
         begin
            CdsIndices.Edit;
            CdsIndicesIndice.AsFloat := valor;
            CdsIndices.Post;
         end;
   except
      uteis.aviso('valor inválido');
      InformaIncice;
   end;


end;

procedure TFrmPlanoContasCentroCusto.dbgrdCentrosKeyPress(Sender: tObject;
  var Key: Char);
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

procedure TFrmPlanoContasCentroCusto.btnAdicionarClick(Sender: tObject);
begin
   AdicionarCentro;
end;

procedure TFrmPlanoContasCentroCusto.btnRemoverClick(Sender: tObject);
begin
   RemoverCentro;
end;

procedure TFrmPlanoContasCentroCusto.Adicionar1Click(Sender: tObject);
begin
   AdicionarCentro;
end;

procedure TFrmPlanoContasCentroCusto.Remover1Click(Sender: tObject);
begin
   RemoverCentro;
end;

end.
