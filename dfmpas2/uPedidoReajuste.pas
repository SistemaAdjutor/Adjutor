unit uPedidoReajuste;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,  dateutils,
  Dialogs, ExtCtrls, StdCtrls, Mask,  rxToolEdit,  rxCurrEdit, Buttons, Math;

  
  
  
type
  TFrmPedidoReajuste = class(TForm)
    GroupBox1: TGroupBox;
    Label31: TLabel;
    CurTotalProduto: TCurrencyEdit;
    GroupBox2: TGroupBox;
    RbAumenta: TRadioButton;
    RbDiminui: TRadioButton;
    Label1: TLabel;
    CurrPercente: TCurrencyEdit;
    Image1: TImage;
    Image2: TImage;
    GroupBox3: TGroupBox;
    Label2: TLabel;
    CurTotalProdutoNovo: TCurrencyEdit;
    Bit_Cancelar: TBitBtn;
    Bit_Gravar: TBitBtn;
    Label3: TLabel;
    CurTotalPedido: TCurrencyEdit;
    Label4: TLabel;
    CurTotalPedidoNovo: TCurrencyEdit;
    lbl1: TLabel;
    btnRestaurar: TBitBtn;
    procedure Bit_CancelarClick(Sender: tObject);
    procedure Bit_GravarClick(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure CurrPercenteChange(Sender: tObject);
    procedure RbAumentaClick(Sender: tObject);
    procedure CurTotalProdutoNovoExit(Sender: tObject);
    procedure btnRestaurarClick(Sender: tObject);
  private
    { Private declarations }
    procedure RestaurarPrecos;
  public
    { Public declarations }
  end;

var
  FrmPedidoReajuste: TFrmPedidoReajuste;

implementation

uses
  Uteis, uPedido, DataCad, RWFunc, Men0001, DB, iniciodb;

{$R *.dfm}





procedure TFrmPedidoReajuste.Bit_CancelarClick(Sender: tObject);
begin
   Close;
end;

procedure TFrmPedidoReajuste.Bit_GravarClick(Sender: tObject);
begin
   if (RbDiminui.Checked and (CurrPercente.Value > 99.99)) then
      begin
         uteis.aviso('Valor Percentual Inválido');
         CurrPercente.SetFocus;
         CurrPercente.SelectAll;
      end
   else
      begin
         if (uteis.confirmacao ( 'Confirma o reajuste dos valores nos itens do pedido?')=mrYes) then
            begin

               if (RbAumenta.Checked) then
                  begin
                     if (CurrPercente.Value > 0) then
                        begin
                           DataCadastros.sqlUpdate.Close;
                           DataCadastros.SqlUpdate.sql.text :='UPDATE ped_it01 set PRF_PRECO_BRUTO = PRF_PRECO_BRUTO + cast ( (PRF_PRECO_BRUTO * '+ValorAmericano(FloatToStr(Uteis.RoundTo(CurrPercente.Value, -6) / 100))+') as numeric(18,2)) , '+
                                                                  'PRF_PRECO = PRF_PRECO + cast (  (PRF_PRECO * '+ValorAmericano(FloatToStr(Uteis.RoundTo(CurrPercente.Value, -6) / 100))+')  as numeric(18,2)) '+
                                                            'WHERE PED_CODIGO = '+QuotedStr(FrmPedido.EdPedidoNumero.Text)+ ' and EMP_CODIGO ='+QuotedStr(dbInicio.Empresa.EMP_CODIGO) ;
                           DataCadastros.sqlUpdate.Execsql;
                           DataCadastros.sqlUpdate.Close;
                        end;
                  end
               else
               if (RbDiminui.Checked) then
                  begin
                     DataCadastros.sqlUpdate.Close;
                     if (CurrPercente.Value = 0) then
                        begin
                           DataCadastros.SqlUpdate.sql.text :='UPDATE ped_it01 SET PRF_IDESCTO1 = cast ( '+ValorAmericano(FloatToStr(CurrPercente.Value))+' as numeric(18,2)) ,'+
                                                            'PRF_PRECO = PRF_PRECO_BRUTO '+
                                                            'WHERE PED_CODIGO = '+QuotedStr(FrmPedido.EdPedidoNumero.Text)+ ' and EMP_CODIGO ='+QuotedStr(dbInicio.Empresa.EMP_CODIGO) ;
                        end
                     else
                        begin
                           DataCadastros.SqlUpdate.sql.text :='UPDATE ped_it01 SET PRF_IDESCTO1 = cast ( '+ValorAmericano(FloatToStr(CurrPercente.Value))+' as numeric(18,2)) ,'+
                                                            'PRF_PRECO = PRF_PRECO_BRUTO - cast ( (PRF_PRECO_BRUTO * '+ValorAmericano(FloatToStr(Uteis.RoundTo(CurrPercente.Value, -6) / 100))+') as numeric(18,2)) '+
                                                            'WHERE PED_CODIGO = '+QuotedStr(FrmPedido.EdPedidoNumero.Text)+ ' and EMP_CODIGO ='+QuotedStr(dbInicio.Empresa.EMP_CODIGO) ;
                        end;

                     DataCadastros.sqlUpdate.Execsql;
                     DataCadastros.sqlUpdate.Close;

                  end;
               //
               FrmPedido.bRecalculaSTGeral := true;
               FrmPedido.RecalculaSTItem;
               FrmPedido.bRecalculaSTGeral := false;
               Close;
            end;
      end;
end;

procedure TFrmPedidoReajuste.FormShow(Sender: tObject);
begin
   CurTotalProduto.Value := FrmPedido.rTotalProdutosBruto;
   CurTotalPedido.Value := FrmPedido.rTotalProdutosBruto+
                           FrmPedido.CurTotalIPI.Value +
                           FrmPedido.CurFrete.Value +
                           FrmPedido.CurDespesasAcessorias.Value +
                           FrmPedido.CurSeguro.Value;
   if (not FrmPedido.SqlCdsPedidoItem.IsEmpty) then
      begin
         CurrPercente.Value := FrmPedido.SqlCdsPedidoItemPRF_IDESCTO1.AsCurrency;
      end
   else
      CurrPercente.Value  := 0;
end;

procedure TFrmPedidoReajuste.CurrPercenteChange(Sender: tObject);
begin
   if (CurrPercente.Value <= 0) then
      CurTotalProdutoNovo.Value := CurTotalProduto.Value
   else
   if (RbAumenta.Checked) then
      CurTotalProdutoNovo.Value := CurTotalProduto.Value  + (CurTotalProduto.Value * (CurrPercente.Value/100))
   else
      CurTotalProdutoNovo.Value := CurTotalProduto.Value  - (CurTotalProduto.Value * (CurrPercente.Value/100));

   CurTotalPedidoNovo.Value := CurTotalPedido.Value - CurTotalProduto.Value +  CurTotalProdutoNovo.Value;
end;

procedure TFrmPedidoReajuste.RbAumentaClick(Sender: tObject);
begin
   CurrPercente.Value := 0;
end;

procedure TFrmPedidoReajuste.CurTotalProdutoNovoExit(Sender: tObject);
var
   rTmp:Real;
begin
   if (CurTotalProdutoNovo.Value = CurTotalProduto.Value) then
      begin
         CurrPercente.Value := 0;
      end
   else
      begin
         if (CurTotalProdutoNovo.Value > CurTotalProduto.Value) then
           begin
              RbAumenta.Checked := True;

              rTmp := ((CurTotalProdutoNovo.Value * 100)/CurTotalProduto.Value)-100;
              if (rTmp < 0) then
                rTmp := rTmp * -1;
              CurrPercente.Value := rTmp;              
           end
         else
           begin
              rTmp := (CurTotalProdutoNovo.Value * 100)/CurTotalProduto.Value;
              RbDiminui.Checked := True;
              if (rTmp < 0) then
                rTmp := rTmp * -1;
              rTmp := 100 - rTmp;
              CurrPercente.Value := rTmp;
           end;



      end;
end;

procedure TFrmPedidoReajuste.RestaurarPrecos;
begin
  if (uteis.confirmacao  ( 'Confirma a restauração do preço original do pedido ?')=mrYes) then
    begin
      DataCadastros.sqlUpdate.Close;
      DataCadastros.SqlUpdate.sql.text :='UPDATE ped_it01 set PRF_PRECO_BRUTO = PRF_PRECO_ORIGINAL,  '+
                                             'PRF_PRECO = PRF_PRECO_ORIGINAL, PRF_IDESCTO1 = 0, PRF_ACRESCIMO = 0 '+
                                       'WHERE PED_CODIGO = '+QuotedStr(FrmPedido.EdPedidoNumero.Text)+ ' and EMP_CODIGO ='+QuotedStr(dbInicio.Empresa.EMP_CODIGO) ;
      DataCadastros.sqlUpdate.Execsql;
      DataCadastros.sqlUpdate.Close;
      Close;
    end;

end;

procedure TFrmPedidoReajuste.btnRestaurarClick(Sender: tObject);
begin
  RestaurarPrecos;
end;

end.
