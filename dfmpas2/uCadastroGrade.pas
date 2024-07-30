unit uCadastroGrade;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask,  rxToolEdit,  rxCurrEdit, Buttons;

type
  TFrmCadastroGrade = class(TForm)
    grpProduto: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    edtProdutoReferencia: TEdit;
    edtProdutoDescricao: TEdit;
    CurPrecoBruto: TCurrencyEdit;
    Label7: TLabel;
    grpInformaeGrade: TGroupBox;
    lbMedida1: TLabel;
    Label4: TLabel;
    edtGrade: TEdit;
    CurMedida1: TCurrencyEdit;
    lbMedida2: TLabel;
    CurMedida2: TCurrencyEdit;
    lbMedida3: TLabel;
    CurMedida3: TCurrencyEdit;
    Label8: TLabel;
    CurReducao: TCurrencyEdit;
    lbIndice: TLabel;
    CurIndice: TCurrencyEdit;
    CurPrecoCalculado: TCurrencyEdit;
    Label10: TLabel;
    Bit_Cancelar: TBitBtn;
    Bit_Gravar: TBitBtn;
    Label11: TLabel;
    CurDensidade: TCurrencyEdit;
    CurrPeso: TCurrencyEdit;
    Label12: TLabel;
    procedure Bit_CancelarClick(Sender: tObject);
    procedure Bit_GravarClick(Sender: tObject);
    procedure CurMedida1Change(Sender: tObject);
    procedure FormShow(Sender: tObject);
  private
    { Private declarations }
    procedure CalculaIndiceGrade;
  public
    { Public declarations }
    sProdutoCodigo,
    sProdutoUnidade:String;
    rPrecoItem:Double;

  end;

var
  FrmCadastroGrade: TFrmCadastroGrade;

implementation

uses
  RWFunc, DataCad, Men0001, uPedidoItem, DB, Prd0001, uteis, iniciodb;

{$R *.dfm}

procedure TFrmCadastroGrade.Bit_CancelarClick(Sender: tObject);
begin
   Close;
end;

procedure TFrmCadastroGrade.Bit_GravarClick(Sender: tObject);
var
   sQuery:String;
begin
   CalculaIndiceGrade;
   //Verifica se ja nao existe a grade cadastrada
   if (Trim(edtGrade.Text) = '') then
      begin
         if (CurMedida1.Text <> '') then
            edtGrade.Text := CurMedida1.Text;
         if (CurMedida2.Text <> '') then
            edtGrade.Text := edtGrade.Text + 'X'+CurMedida2.Text;
         if (CurMedida3.Text <> '') then
            edtGrade.Text := edtGrade.Text + 'X'+CurMedida3.Text;
      end;
   DataCadastros.sqlUpdate.Close;
   DataCadastros.SqlUpdate.sql.text :=SQLDEF('TABELAS','SELECT t1.PRG_REGISTRO, T1.prg_descricao FROM prd_grade T1','WHERE T1.prg_descricao = '+QuotedStr(Trim(edtGrade.Text))+' AND T1.prd_codigo = '+QuotedStr(sProdutoCodigo),'','t1.');
   DataCadastros.sqlUpdate.Open;
   //caso nao encontre
   if (DataCadastros.sqlUpdate.IsEmpty) then
      begin
         sQuery := 'INSERT INTO prd_grade (EMP_CODIGO,PRD_CODIGO,PRG_DESCRICAO,PRG_MEDIDA_1,PRG_MEDIDA_2,PRG_MEDIDA_3,PRG_REDUCAO_PERCENT,PRG_INDICE) '+
                                                                               'VALUES ('+QuotedStr(dbInicio.Empresa.EMP_CODIGO)+','
                                                                                         +QuotedStr(sProdutoCodigo)+','
                                                                                         +QuotedStr(Trim(edtGrade.Text))+','
                                                                                         +FloatToSql(CurMedida1.value)+','
                                                                                         +FloatToSql(CurMedida2.value)+','
                                                                                         +FloatToSql(CurMedida3.value)+','
                                                                                         +FloatToSql(CurReducao.value)+','
                                                                                         +FloatToSql(CurIndice.value)+
                                                                                        ')';
         //cadastra nova grade
         DataCadastros.sqlUpdate.Close;
         DataCadastros.SqlUpdate.sql.text :=sQuery;
         DataCadastros.sqlUpdate.Execsql;

         DataCadastros.sqlUpdate.Close;
         DataCadastros.SqlUpdate.sql.text :='SELECT PRG_REGISTRO FROM prd_grade WHERE prg_descricao = '+QuotedStr(Trim(edtGrade.Text));
         DataCadastros.sqlUpdate.Open;

         if (not DataCadastros.sqlUpdate.IsEmpty) then
            begin
               if (Assigned(FormProduto)) then
                  FormProduto.sGradeDescricaoCadastrada := DataCadastros.sqlUpdate.FieldByName('PRG_REGISTRO').AsString
               else
               begin
                  FrmPedidoItem.sGradeDescricaoCadastrada := DataCadastros.sqlUpdate.FieldByName('PRG_REGISTRO').AsString;
                  FrmPedidoItem.CurrPesoIndividual.Value := CurrPeso.Value;
               end;
            end
         else
            if (Assigned(FormProduto)) then
               FormProduto.sGradeDescricaoCadastrada := ''
            else
               FrmPedidoItem.sGradeDescricaoCadastrada := '';

         Close;
      end
   else
      begin
        uteis.aviso('Grade já Cadastrada!');

      end;

end;

procedure TFrmCadastroGrade.CalculaIndiceGrade;
begin
   //Inicia
   CurIndice.Clear;
   CurPrecoCalculado.Clear;
   //M2 NORMAL
   if (sProdutoUnidade = 'M2')and(CurMedida1.Value <> 0)and(CurMedida2.Value <> 0)and(CurMedida3.Value = 0) then
      begin
         CurIndice.Value := CurMedida1.Value  * CurMedida2.Value;
         if (CurReducao.Value > 0) then
            CurIndice.Value := CurIndice.Value - (CurIndice.Value * (CurReducao.Value/100));
      end
   else
   //M2 DOIDAO
   if (sProdutoUnidade = 'M2')and(CurMedida1.Value <> 0)and(CurMedida2.Value <> 0)and(CurMedida3.Value <> 0) then
      begin
         CurIndice.Value := (CurMedida1.Value  * CurMedida2.Value * CurMedida2.Value)/1000000;
         if (CurReducao.Value > 0) then
            CurIndice.Value := CurIndice.Value - (CurIndice.Value * (CurReducao.Value/100));
      end
   else
   //M3
   if (sProdutoUnidade = 'M3')and(CurMedida1.Value <> 0)and(CurMedida2.Value <> 0)and(CurMedida3.Value <> 0) then
      begin
         CurIndice.Value := (CurMedida1.Value  * CurMedida2.Value * CurMedida3.Value) { / 1000000} ;
         if (CurReducao.Value > 0) then
            CurIndice.Value := CurIndice.Value - (CurIndice.Value * (CurReducao.Value/100));
      end
   else
   //MT linear
   if (sProdutoUnidade = 'MT')and(CurMedida1.Value <> 0)and(CurMedida2.Value <> 0)and(CurMedida3.Value <> 0) then
      begin
         CurIndice.Value := ((CurMedida1.Value  * CurMedida2.Value * CurMedida3.Value) / 1000000);
         if (CurReducao.Value > 0) then
            CurIndice.Value := CurIndice.Value - (CurIndice.Value * (CurReducao.Value/100));
      end
   else
      CurIndice.Value := 0;
   //Calcula Preco +-
   if (CurIndice.Value > 0) then
      CurPrecoCalculado.Value := CurIndice.Value * rPrecoItem
   else
      CurPrecoCalculado.Value := rPrecoItem;
    // peso é igual m3 x densidade , que por usa vez m3 é medida 1 x medida 2 x medida 3
    // a medida 1 e 2 estão mm
    // medida 3 em metros
   if (CurDensidade.Value > 0) and (CurMedida1.Value>0) and (CurMedida2.Value > 0 ) and (CurMedida3.Value > 0) then
     CurrPeso.Value := (CurMedida1.Value/1000)  * (CurMedida2.Value/1000) * CurMedida3.Value * CurDensidade.Value ;
end;

procedure TFrmCadastroGrade.CurMedida1Change(Sender: tObject);
begin
   CalculaIndiceGrade;
   edtGrade.Text := CurMedida1.Text + ' X ' + CurMedida2.Text + ' X ' + CurMedida3.Text;
end;

procedure TFrmCadastroGrade.FormShow(Sender: tObject);
begin
  if (sProdutoCodigo <> '') then
  begin
    DataCadastros.sqlUpdate.Close;
    DataCadastros.SqlUpdate.sql.text :='SELECT PRD_UND_GRADE_CALCULO, PRD_FATOR_PROD FROM PRD0000 WHERE PRD_CODIGO = '+QuotedStr(Trim(sProdutoCodigo));
    DataCadastros.sqlUpdate.Open;

    if (not DataCadastros.sqlUpdate.IsEmpty) then
    begin
      if (DataCadastros.sqlUpdate.FieldByName('PRD_UND_GRADE_CALCULO').AsString <> '') then
        sProdutoUnidade := DataCadastros.sqlUpdate.FieldByName('PRD_UND_GRADE_CALCULO').AsString;
      CurDensidade.Value :=    DataCadastros.sqlUpdate.FieldByName('PRD_FATOR_PROD').AsFloat;
    end;
     DataCadastros.sqlUpdate.Close;
  end;
  if (DBInicio.GetParametroSistema('PMT_VENDA_GRADE') = 'S') or (DBInicio.GetParametroSistema('PMT_DIGITACAO_GRID_VENDAS') = 'S')  then
  begin
    lbMedida1.Caption := DBInicio.GetParametroSistema('PMT_GRADE_MEDIDA1');
    lbMedida2.Caption := DBInicio.GetParametroSistema('PMT_GRADE_MEDIDA2');
    lbMedida3.Caption := DBInicio.GetParametroSistema('PMT_GRADE_MEDIDA3');
  end;

  if sProdutoUnidade = 'M3' then
  begin
    lbIndice.Caption := 'Índice M3';
    lbIndice.Hint := 'Inserir valor da metragem cúbica para a grade.';
    lbIndice.ShowHint := True;
    CurIndice.Hint := 'Inserir valor da metragem cúbica para a grade.';
    CurIndice.ShowHint := True;
  end
  else
    lbIndice.Caption := 'Índice';





end;

end.


