unit Pag0009;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, RXSpin, DB, DBClient, Vcl.Mask;

type
  TFormContasPagarRepetir = class(TForm)
    GroupBox1: TGroupBox;
    Bit_Gravar: TBitBtn;
    Bit_Cancelar: TBitBtn;
    GroupBox3: TGroupBox;
    RbMensal: TRadioButton;
    RbSemanal: TRadioButton;
    RbIntervalo: TRadioButton;
    RxIntervalo: TRxSpinEdit;
    RxsQunatidade: TRxSpinEdit;
    Label2: TLabel;
    Label3: TLabel;
    DBGrid1: TDBGrid;
    DsParcela: TDataSource;
    CdsParcela: TClientDataSet;
    CdsParcelaVencimento: TDateField;
    CdsParcelaValor: TFloatField;
    CheckPrevisao: TCheckBox;
    procedure Bit_CancelarClick(Sender: tObject);
    procedure RbMensalEnter(Sender: tObject);
    procedure RbSemanalEnter(Sender: tObject);
    procedure RbIntervaloEnter(Sender: tObject);
    procedure RxsQunatidadeChange(Sender: tObject);
    procedure RxIntervaloChange(Sender: tObject);
    procedure Bit_GravarClick(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure CdsParcelaBeforePost(DataSet: TDataSet);
    procedure CdsParcelaBeforeInsert(DataSet: TDataSet);
  private
    { Private declarations }
    procedure Layout;
    procedure Parcela;
    procedure GravaParcelas;
  public
    { Public declarations }
  end;

var
  FormContasPagarRepetir: TFormContasPagarRepetir;

implementation

uses
  Pag0001, RWFunc, uFinanceiroDao, DataMov, DataCad, Men0001, uteis, iniciodb;

{$R *.dfm}






procedure TFormContasPagarRepetir.Bit_CancelarClick(Sender: tObject);
begin
   Close;
end;

procedure TFormContasPagarRepetir.Layout;
begin
   RxIntervalo.Visible := RbIntervalo.Checked;
   Label3.Visible :=  RbIntervalo.Checked;
   Parcela;
end;

procedure TFormContasPagarRepetir.RbMensalEnter(Sender: tObject);
begin
   RbMensal.Checked := True;
   Layout;
end;

procedure TFormContasPagarRepetir.RbSemanalEnter(Sender: tObject);
begin
   RbSemanal.Checked := True;
   Layout;
end;

procedure TFormContasPagarRepetir.RbIntervaloEnter(Sender: tObject);
begin
   RbIntervalo.Checked := True;
   Layout;
end;

procedure TFormContasPagarRepetir.Parcela;
var
   i:Integer;
   dDataVencimento:TDate;
begin
   i := 1;
   FormContasPagar.SqlCdsPagarParc.First;
   dDataVencimento := FormContasPagar.SqlCdsPagarParcPPC_VENCTO.AsDateTime;
   if (CdsParcela.Active)and(RxIntervalo.Text <> '')and(RxsQunatidade.Text <> '') then
      begin
         CdsParcela.EmptyDataSet;
         while (i <= RxsQunatidade.AsInteger) do
            begin
               if (RbMensal.Checked) then
                  dDataVencimento := AddMonth(dDataVencimento,1)
               else
               if (RbSemanal.Checked) then
                  dDataVencimento := dDataVencimento + 7
               else
                  dDataVencimento := dDataVencimento + RxIntervalo.AsInteger;
               CdsParcela.Append;
               CdsParcelaVencimento.AsDateTime := dDataVencimento;
               CdsParcelaValor.AsCurrency := FormContasPagar.SqlCdsPagarParcPPC_VLPARC.AsCurrency;
               CdsParcela.Post;
               Inc(i);
            end;
      end;
end;

procedure TFormContasPagarRepetir.RxsQunatidadeChange(Sender: tObject);
begin
   Parcela;
end;

procedure TFormContasPagarRepetir.RxIntervaloChange(Sender: tObject);
begin
   Parcela;
end;

procedure TFormContasPagarRepetir.Bit_GravarClick(Sender: tObject);
begin
   GravaParcelas;
end;

procedure TFormContasPagarRepetir.GravaParcelas;
var
   iRegistro:Integer;
   sFatura:String;
begin
   if (CdsParcela.IsEmpty) then
      begin
         uteis.aviso('Não existe parcela a ser lançada');
         RxsQunatidade.SetFocus;
      end
   else
      begin
         if (uteis.confirmacao ( 'Confirma a Replicação?'))=mrYes then
            begin
               CdsParcela.First;
               while (not CdsParcela.Eof) do
                  begin
                    sFatura := SequenciadorPRC(DataCadastros.SQLConnection1,   //Conexao
                                               dbInicio.Empresa.EMP_CODIGO, //empresa
                                               'PAG0000',                      //Tabela
                                               'PAG_CODIGO',                   //Campo da Tabela
                                               0);                             //Busca a Sequencia
                    sFatura := PreenchezeroEsquerda(sFatura,5);
                     //Lanca Cabeçalho
                    iRegistro := ContasPagarCabecalho(sFatura,
                                                      DataMovimento.CdsPagarOPV_CODIGO.AsString,
                                                      DataMovimento.CdsPagarPAG_NUMDOC.AsString,
                                                      DataMovimento.CdsPagarFOR_CODIGO.AsString,
                                                      DataMovimento.CdsPagarPAG_TIPO.AsString,
                                                      DataMovimento.CdsPagarCCT_CODIGO.AsString,
                                                      DataMovimento.CdsPagarPAG_SERIE.AsString,
                                                      DataMovimento.CdsPagarPAG_OBS.AsString,
                                                      DataMovimento.CdsPagarPAG_FAVORECIDO.AsString,
                                                      DataMovimento.CdsPagarPAG_OPERACAO.AsString,
                                                      DataMovimento.CdsPagarPAG_DTEMIS.AsDateTime,
                                                      CheckPrevisao.Checked,
                                                      DataMovimento.CdsPagarPAG_LIVRO.AsString = 'S',
                                                      CdsParcelaValor.AsCurrency,
                                                      0,
                                                      0,
                                                      0,
                                                      0,
                                                      0,
                                                      0,
                                                      0,
                                                      0,
                                                      0,
                                                      0,
                                                      0,
                                                      0,
                                                      0,
                                                      0,
                                                      0,
                                                      0,
                                                      0,
                                                      0,
                                                      0);
                     //Parcela
                     ContasPagarParcela(sFatura,
                                        '',
                                        FormContasPagar.SqlCdsPagarParcBAN_CODIGO.AsString,
                                        FormContasPagar.SqlCdsPagarParcBAN_APELIDO.AsString,
                                        DataMovimento.CdsPagarCCT_CODIGO.AsString,
                                        'P',
                                        'Pendente',
                                        DataMovimento.CdsPagarFOR_CODIGO.AsString,
                                        DataMovimento.CdsPagarPAG_NUMDOC.AsString,
                                        '',
                                        Date,
                                        CdsParcelaVencimento.AsDateTime,
                                        1,
                                        CdsParcelaValor.AsCurrency,
                                        CheckPrevisao.Checked
                                        );

                     CdsParcela.Next;
                  end;
                  uteis.aviso('Processo realizado com sucesso!');
                  Close;
            end;
      end;

end;

procedure TFormContasPagarRepetir.FormShow(Sender: tObject);
begin
   CdsParcela.CreateDataSet;
   RbMensal.Checked := True;
   CheckPrevisao.Checked:=iif(DataMovimento.CdsPagarPAG_PREVISAO.AsString = 'S',TRUE,FALSE);

   Layout;
end;

procedure TFormContasPagarRepetir.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
   CdsParcela.EmptyDataSet;
end;

procedure TFormContasPagarRepetir.CdsParcelaBeforePost(
  DataSet: TDataSet);
begin
   if (CdsParcelaValor.AsCurrency <= 0) then
      CdsParcela.Cancel;

end;

procedure TFormContasPagarRepetir.CdsParcelaBeforeInsert(
  DataSet: TDataSet);
begin
   CdsParcela.Cancel;
end;

end.
