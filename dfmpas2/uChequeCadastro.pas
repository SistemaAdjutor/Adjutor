unit uChequeCadastro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons,  rxToolEdit, Mask,  rxCurrEdit, ComboBoxRw,
  JvExMask, JvMaskEdit, SgDbSeachComboUnit;

type
  TFrmChequeCadastro = class(TForm)
    grpCheque: TGroupBox;
    GroupBox1: TGroupBox;
    Bit_Gravar: TBitBtn;
    Bit_Cancelar: TBitBtn;
    mmoObservacao: TMemo;
    cbBanco: TComboBoxRw;
    Label2: TLabel;
    Label3: TLabel;
    edtAgencia: TEdit;
    Label4: TLabel;
    edtContaCorrente: TEdit;
    Label5: TLabel;
    edtNumero: TEdit;
    Label6: TLabel;
    edtSerie: TEdit;
    Label7: TLabel;
    CurValor: TCurrencyEdit;
    Label8: TLabel;
    edtEmissor: TEdit;
    Label10: TLabel;
    RxDataEmissao: TDateEdit;
    Label11: TLabel;
    RxDataPreDatado: TDateEdit;
    Label12: TLabel;
    CbClientes1: TComboBoxRw;
    Edt_Lista: TEdit;
    Label1: TLabel;
    cbStatus: TComboBoxRw;
    Sb_ContaBanco: TSpeedButton;
    Label9: TLabel;
    edtCPFCNPJ: TEdit;
    Label13: TLabel;
    medtTelefone: TMaskEdit;
    procedure Bit_CancelarClick(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure Edt_ListaExit(Sender: tObject);
    procedure CbClientes1Change(Sender: tObject);
    procedure CbClientes1Exit(Sender: tObject);
    procedure Bit_GravarClick(Sender: tObject);
    procedure Sb_ContaBancoClick(Sender: tObject);
  private
    { Private declarations }
    procedure IniciaValores;
  public
    { Public declarations }
    iIdCheque:Integer;
  end;

var
  FrmChequeCadastro: TFrmChequeCadastro;

implementation

uses
  DataCad, RWFunc, Men0001, uChequeStatus, DB, uteis, iniciodb;

{$R *.dfm}

procedure TFrmChequeCadastro.Bit_CancelarClick(Sender: tObject);
begin
   Close;
end;

procedure TFrmChequeCadastro.FormShow(Sender: tObject);
begin
   //Combos
   cbStatus.CodigoEmpresa := StrToInt(dbInicio.Empresa.EMP_CODIGO);
   cbStatus.CarregarCombo := True;
   CbClientes1.CodigoEmpresa := StrToInt(dbInicio.Empresa.EMP_CODIGO);
   CbClientes1.CarregarCombo := True;
   cbBanco.CodigoEmpresa := StrToInt(dbInicio.Empresa.EMP_CODIGO);
   cbBanco.CarregarCombo := True;
   mmoObservacao.Clear;
   //Inicio
   IniciaValores;
end;

procedure TFrmChequeCadastro.Edt_ListaExit(Sender: tObject);
begin
   Edt_Lista.Color := clWindow;
   screen.Cursor := crHourGlass;
   if (ActiveControl <> Nil)
   and(ActiveControl.Name <> 'Bit_Cancelar')
   and(ActiveControl.Name <> 'Bit_Sair') then
      begin
         if (Trim(Edt_Lista.Text)<> '') then
            begin
               CbClientes1.TextoLocalizar := StrZero(Edt_Lista.Text,5);
               CbClientes1.Localizar := True;
               if (CbClientes1.Localizado = False) then
                  begin
                     //beep;
                     uteis.aviso('Cliente não localizado !');
                     Edt_Lista.Text     := '';
                     CbClientes1.Text   := '';
                     Edt_Lista.SetFocus;
                  end
               else
                  begin
                     Edt_Lista.Text := StrZero(Edt_Lista.Text,5);
                  end;
            end;
      end;
    screen.cursor:=crDefault;
end;

procedure TFrmChequeCadastro.CbClientes1Change(Sender: tObject);
begin
   Edt_Lista.Text := CbClientes1.CodigoLista;
end;

procedure TFrmChequeCadastro.CbClientes1Exit(Sender: tObject);
begin
   screen.Cursor := crHourGlass;
   if (ActiveControl <> Nil)
   and(ActiveControl.Name <> 'Bit_Cancelar')
   and(ActiveControl.Name <> 'Bit_Sair') then
      begin
         if (Trim(CbClientes1.Text)<>'') then
            begin
               CbClientes1.TextoLocalizar := StrZero(Edt_Lista.Text,5);
               CbClientes1.Localizar      := True;
               if (CbClientes1.Localizado = False) then
                  begin
                     //beep;
                     uteis.aviso('Cliente não localizado !');
                     Edt_Lista.SetFocus;
                     Edt_Lista.SelectAll;
                  end;
            end;
      end;
   screen.cursor:=crDefault;
end;

procedure TFrmChequeCadastro.Bit_GravarClick(Sender: tObject);
var
   sQuery,
   sDataEmissao,
   sDataPreDatado:String;
begin
   //Valida Campos Obrigatórios
   if (cbBanco.CodigoLista = '') then
      begin
         uteis.aviso('Informe o Banco');
      end
   else
   if (edtAgencia.Text = '') then
      begin
         uteis.aviso('Informe a Agência');
      end
   else
   if (edtContaCorrente.Text = '') then
      begin
         uteis.aviso('Informe a Conta Corrente');
      end
   else
   if (edtNumero.Text = '') then
      begin
         uteis.aviso('Informe o Número');
      end
   else
   if (CurValor.Value <= 0) then
      begin
         uteis.aviso('Informe o Valor');
      end
   else
   if (RxDataEmissao.Text = '  /  /    ') then
      begin
         uteis.aviso('Informe a Data de Emissão');
      end
   else
   if (edtEmissor.Text = '') then
      begin
         uteis.aviso('Informe o Emissor');
      end
   else
   if (Length(ExtrairNumeros(edtCPFCNPJ.Text)) <> 11)AND(Length(ExtrairNumeros(edtCPFCNPJ.Text)) <> 14) then
      begin
         uteis.aviso('Informe o CPF/CNPJ');
      end
   else
   if (cbStatus.CodigoLista = '') then
      begin
         uteis.aviso('Informe o Status');
      end
   else
      begin
         if (uteis.confirmacao  ( 'Confirma o lancamento?')=mrYes) then
            begin
               sDataEmissao := '';
               sDataPreDatado := '';
               if (RxDataEmissao.Text <> '  /  /    ') then
                  begin
                     sDataEmissao := DataAmericana(RxDataEmissao.Text);
                  end;
               if (RxDataPreDatado.Text <> '  /  /    ') then
                  begin
                     sDataPreDatado := DataAmericana(RxDataPreDatado.Text);
                  end;

               if (iIdCheque <> 0) then
                  begin

                     //Update
                     sQuery := 'UPDATE CHEQUE SET '+
                               ' BCO_CODIGO = '+QuotedStr(cbBanco.CodigoLista)+','+
                               ' CH_AGENCIA = '+QuotedStr(edtAgencia.Text)+','+
                               ' CH_CONTA_CORRENTE = '+QuotedStr(edtContaCorrente.Text)+','+
                               ' CH_VALOR = '+QuotedStr(ValorAmericano(FormatFloat('###########0.0000',CurValor.Value)))+','+
                               ' CH_EMISSAO = '+RetornaNull(sDataEmissao)+','+
                               ' CH_PRE_DATADO = '+RetornaNull(sDataPreDatado)+','+
                               ' CLI_CODIGO = '+QuotedStr(Edt_Lista.Text)+','+
                               ' CH_EMISSOR = '+QuotedStr(edtEmissor.Text)+','+
                               ' CH_TELEFONE = '+QuotedStr(medtTelefone.Text)+','+
                               ' CHS_REGISTRO = '+QuotedStr(cbStatus.CodigoLista)+','+
                               ' CH_CPF_CNPJ = '+QuotedStr(edtCPFCNPJ.Text)+','+
                               ' CH_OBSERVACAO = '+QuotedStr(mmoObservacao.Text)+
                               ' WHERE CH_REGISTRO = '+QuotedStr(IntToStr(iIdCheque))
                               ;
                     dataCadastros.sqlUpdate.Close;
                     DataCadastros.SqlUpdate.sql.text :=sQuery;
                     dataCadastros.sqlUpdate.Execsql;
                     dataCadastros.sqlUpdate.Close;

                     Close;
                  end
               else
                  begin
                     //Insert
                     sQuery := 'INSERT INTO CHEQUE '+
                                                     '('+
                                                     'EMP_CODIGO,'+
                                                     'BCO_CODIGO,'+
                                                     'CH_AGENCIA,'+
                                                     'CH_CONTA_CORRENTE,'+
                                                     'CH_SERIE,'+
                                                     'CH_NUMERO,'+
                                                     'CH_VALOR,'+
                                                     'CH_EMISSAO,'+
                                                     'CH_PRE_DATADO,'+
                                                     'CLI_CODIGO,'+
                                                     'CH_EMISSOR,'+
                                                     'CH_CPF_CNPJ,'+
                                                     'CH_TELEFONE,'+
                                                     'CH_OBSERVACAO,'+
                                                     'CHS_REGISTRO'+
                                                     ')'+
                                                     'VALUES'+
                                                     '('+
                                                     QuotedStr(dbInicio.Empresa.EMP_CODIGO)+','+
                                                     QuotedStr(cbBanco.CodigoLista)+','+
                                                     QuotedStr(edtAgencia.Text)+','+
                                                     QuotedStr(edtContaCorrente.Text)+','+
                                                     QuotedStr(edtSerie.Text)+','+
                                                     QuotedStr(edtNumero.Text)+','+
                                                     QuotedStr(ValorAmericano(FloatToStr(CurValor.Value)))+','+
                                                     RetornaNull(sDataEmissao)+','+
                                                     RetornaNull(sDataPreDatado)+','+
                                                     QuotedStr(Edt_Lista.Text)+','+
                                                     QuotedStr(edtEmissor.Text)+','+
                                                     QuotedStr(ExtrairNumeros(edtCPFCNPJ.Text))+','+
                                                     QuotedStr(medtTelefone.Text)+','+
                                                     QuotedStr(mmoObservacao.Text)+','+
                                                     QuotedStr(cbStatus.CodigoLista)+
                                                     ')';


                     DataCadastros.sqlUpdate.Close;
                     DataCadastros.SqlUpdate.sql.text :=sQuery;
                     DataCadastros.sqlUpdate.Execsql;
                     DataCadastros.sqlUpdate.Close;

                     if (uteis.confirmacao ( 'Cheque Cadastrado com Seucesso!'+#13#10+
                           'Gostaria de lancar outro cheque ? ')=mrYes) then
                        begin

                           IniciaValores;
                        end
                     else
                        Close;
                  end;

            end;
      end;
end;

procedure TFrmChequeCadastro.IniciaValores;
begin
      edtAgencia.Clear;
   edtContaCorrente.Clear;
   edtNumero.Clear;
   edtSerie.Clear;
   mmoObservacao.Clear;
   edtEmissor.Clear;
   edtCPFCNPJ.Clear;
   CurValor.Clear;
   medtTelefone.Clear;
   RxDataEmissao.Date := Date;
   RxDataPreDatado.Text := '';

   if (iIdCheque <> 0) then
      begin
         DataCadastros.sqlUpdate.Close;
         DataCadastros.SqlUpdate.sql.text :='SELECT * FROM CHEQUE WHERE CH_REGISTRO = '+IntToStr(iIdCheque);
         DataCadastros.sqlUpdate.Open;
         if (not DataCadastros.sqlUpdate.IsEmpty) then
            begin
               cbStatus.TextoLocalizar := DataCadastros.sqlUpdate.FieldByName('CHS_REGISTRO').AsString;
               cbStatus.Localizar := True;
               cbBanco.TextoLocalizar := DataCadastros.sqlUpdate.FieldByName('BCO_CODIGO').AsString;
               cbBanco.Localizar := True;
               edtAgencia.Text := DataCadastros.sqlUpdate.FieldByName('CH_AGENCIA').AsString;
               edtContaCorrente.Text := DataCadastros.sqlUpdate.FieldByName('CH_CONTA_CORRENTE').AsString;
               edtNumero.Text := DataCadastros.sqlUpdate.FieldByName('CH_NUMERO').AsString;
               edtSerie.Text := DataCadastros.sqlUpdate.FieldByName('CH_SERIE').AsString;
               CurValor.Value := DataCadastros.sqlUpdate.FieldByName('CH_VALOR').AsCurrency;
               edtEmissor.Text := DataCadastros.sqlUpdate.FieldByName('CH_EMISSOR').AsString;
               medtTelefone.Text := DataCadastros.sqlUpdate.FieldByName('CH_TELEFONE').AsString;
               edtCPFCNPJ.Text := DataCadastros.sqlUpdate.FieldByName('CH_CPF_CNPJ').AsString;
               RxDataEmissao.Date := DataCadastros.sqlUpdate.FieldByName('CH_EMISSAO').AsDateTime;
               RxDataPreDatado.Date := DataCadastros.sqlUpdate.FieldByName('CH_PRE_DATADO').AsDateTime;
               Edt_Lista.Text := DataCadastros.sqlUpdate.FieldByName('CLI_CODIGO').AsString;
               CbClientes1.TextoLocalizar := DataCadastros.sqlUpdate.FieldByName('CLI_CODIGO').AsString;
               CbClientes1.Localizar := True;
               mmoObservacao.Text := DataCadastros.sqlUpdate.FieldByName('CH_OBSERVACAO').AsString;
            end;
      end;


   cbBanco.SetFocus;

end;

procedure TFrmChequeCadastro.Sb_ContaBancoClick(Sender: tObject);
begin
   try
      FrmChequeStatus := TFrmChequeStatus.Create(Application);
      FrmChequeStatus.ShowModal;
   finally
      FrmChequeStatus.Destroy;
      FrmChequeStatus := Nil;
   end;
   cbStatus.CarregarCombo := False;
   cbStatus.CarregarCombo := True;
end;

end.

