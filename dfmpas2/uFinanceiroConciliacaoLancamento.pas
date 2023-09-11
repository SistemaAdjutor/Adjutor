unit uFinanceiroConciliacaoLancamento;


interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask,  rxToolEdit, ComboBoxRw, SgDbSeachComboUnit;

type
  TFrmFinanceiroConciliacaoLancamento = class(TForm)
    GroupBox1: TGroupBox;
    Bit_Cancelar: TBitBtn;
    Bit_Gravar: TBitBtn;
    CbConciliado: TCheckBox;
    RxDataLancamento: TDateEdit;
    Label1: TLabel;
    Label2: TLabel;
    CbContaBanco: TComboBoxRw;
    EdContaBanco: TEdit;
    Sb_ContaBanco: TSpeedButton;
    procedure Bit_CancelarClick(Sender: tObject);
    procedure EdContaBancoExit(Sender: tObject);
    procedure Sb_ContaBancoClick(Sender: tObject);
    procedure Bit_GravarClick(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure CbConciliadoClick(Sender: tObject);
    procedure FormCreate(Sender: tObject);
    procedure CbContaBancoSelect(Sender: tObject);
  private
    { Private declarations }
    procedure ConfiguraLayout;
  public
    { Public declarations }
    bConciliado:Boolean;
  end;

var
  FrmFinanceiroConciliacaoLancamento: TFrmFinanceiroConciliacaoLancamento;

implementation

uses
  uFinanceiroConciliacao, DataCad, RWFunc, Men0001, uCadastroFinanceiroHistoricoLancamentos, uteis, iniciodb;

{$R *.dfm}
procedure TFrmFinanceiroConciliacaoLancamento.Bit_CancelarClick(Sender: tObject);
begin
     Close;
end;

procedure TFrmFinanceiroConciliacaoLancamento.EdContaBancoExit(
  Sender: tObject);
begin
     EdContaBanco.Text := PreenchezeroEsquerda(EdContaBanco.Text,4);
     if (EdContaBanco.Text <> '0000') then
     begin
          CbContaBanco.idRetorno := EdContaBanco.Text;
          if CbContaBanco.idRetorno='' then
          begin
               uteis.aviso('Histórico não localizado com o código informado');
               EdContaBanco.Clear;
               EdContaBanco.SetFocus;
          end;
     end
     else
         CbContaBanco.idRetorno := '';
end;

procedure TFrmFinanceiroConciliacaoLancamento.CbContaBancoSelect(
  Sender: tObject);
begin
     EdContaBanco.Text := CbContaBanco.idRetorno;
end;

procedure TFrmFinanceiroConciliacaoLancamento.Sb_ContaBancoClick(Sender: tObject);
begin
   FrmCadastroHistoricoConciliacao := TFrmCadastroHistoricoConciliacao.Create(Application);
   try
      FrmCadastroHistoricoConciliacao.ShowModal;
   finally
      FreeAndNil( FrmCadastroHistoricoConciliacao);
   end;
end;

procedure TFrmFinanceiroConciliacaoLancamento.ConfiguraLayout;
begin
   if (not CbConciliado.Checked) then
   begin
         EdContaBanco.Clear;
         CbContaBanco.Text := '';
         RxDataLancamento.Clear;

         EdContaBanco.Enabled := False;
         CbContaBanco.Enabled := False;
         RxDataLancamento.Enabled := False;

   end
   else
   begin
         EdContaBanco.Enabled := True;
         CbContaBanco.Enabled := True;
         RxDataLancamento.Enabled := True;

         RxDataLancamento.Date := FrmFinanceiroConciliacao.SQLCdsConciliacaoNPAG_DATA_PAGAMENTO.AsDateTime;
   end;
end;

procedure TFrmFinanceiroConciliacaoLancamento.Bit_GravarClick(Sender: tObject);
begin
   if (CbConciliado.Checked) then
      begin
         if (EdContaBanco.Text = '') then
            begin
               uteis.aviso('Informe o Histórico');
               EdContaBanco.SetFocus;
            end
         else
         if (RxDataLancamento.Text = '  /  /    ') then
            begin
               uteis.aviso('Informe a Data de Lançamento');
               RxDataLancamento.SetFocus;
            end
         else
            begin
               if (bConciliado) then
                  begin
                     if (FrmFinanceiroConciliacao.SQLCdsConciliacaoSLOCAL.AsString = 'R') then //PAGAR
                         begin
                            dataCadastros.sqlUpdate.Close;
                            DataCadastros.SqlUpdate.sql.text :='UPDATE FAT_RECEBIMENTO SET FRE_CONCILIADO = ''S'', HCO_REGISTRO = '+EdContaBanco.Text+',FRE_DATA_LANCAMENTO = '+QuotedStr(DataAmericana(RxDataLancamento.Text))+
                                                                   ' WHERE  FRE_REGISTRO = '+FrmFinanceiroConciliacao.SQLCdsConciliacaoSPAG_REGISTRO.AsString;
                            dataCadastros.sqlUpdate.Execsql;
                            dataCadastros.sqlUpdate.Close;
                         end
                      else
                      if (FrmFinanceiroConciliacao.SQLCdsConciliacaoSLOCAL.AsString = 'P') then //RECEBER
                         begin
                            dataCadastros.sqlUpdate.Close;
                            DataCadastros.SqlUpdate.sql.text :='UPDATE PAG_PAGAMENTO SET PAG_CONCILIADO = ''S'', HCO_REGISTRO = '+EdContaBanco.Text+',PAG_DATA_LANCAMENTO = '+QuotedStr(DataAmericana(RxDataLancamento.Text))+
                                                                   ' WHERE  PAP_REGISTRO = '+FrmFinanceiroConciliacao.SQLCdsConciliacaoSPAG_REGISTRO.AsString;
                            dataCadastros.sqlUpdate.Execsql;
                            dataCadastros.sqlUpdate.Close;
                         end
                      else
                      if (FrmFinanceiroConciliacao.SQLCdsConciliacaoSLOCAL.AsString = 'T') then //TRANSFERENCIA
                         begin
                            dataCadastros.sqlUpdate.Close;
                            DataCadastros.SqlUpdate.sql.text :='UPDATE BAN_TRANSFERENCIA SET BTR_CONCILIADO = ''S'', HCO_REGISTRO = '+EdContaBanco.Text+',BTR_DATA_LANCAMENTO = '+QuotedStr(DataAmericana(RxDataLancamento.Text))+
                                                                   ' WHERE  BTR_REGISTRO = '+FrmFinanceiroConciliacao.SQLCdsConciliacaoSPAG_REGISTRO.AsString;
                            dataCadastros.sqlUpdate.Execsql;
                            dataCadastros.sqlUpdate.Close;
                         end;
                  end
               else
                  begin
                     if (FrmFinanceiroConciliacao.SQLCdsConciliacaoNLOCAL.AsString = 'R') then //PAGAR
                         begin
                            dataCadastros.sqlUpdate.Close;
                            DataCadastros.SqlUpdate.sql.text :='UPDATE FAT_RECEBIMENTO SET FRE_CONCILIADO = ''S'', HCO_REGISTRO = '+EdContaBanco.Text+',FRE_DATA_LANCAMENTO = '+QuotedStr(DataAmericana(RxDataLancamento.Text))+
                                                                   ' WHERE  FRE_REGISTRO = '+FrmFinanceiroConciliacao.SQLCdsConciliacaoNPAG_REGISTRO.AsString;
                            dataCadastros.sqlUpdate.Execsql;
                            dataCadastros.sqlUpdate.Close;
                         end
                      else
                      if (FrmFinanceiroConciliacao.SQLCdsConciliacaoNLOCAL.AsString = 'P') then //RECEBER
                         begin
                            dataCadastros.sqlUpdate.Close;
                            DataCadastros.SqlUpdate.sql.text :='UPDATE PAG_PAGAMENTO SET PAG_CONCILIADO = ''S'', HCO_REGISTRO = '+EdContaBanco.Text+',PAG_DATA_LANCAMENTO = '+QuotedStr(DataAmericana(RxDataLancamento.Text))+
                                                                   ' WHERE  PAP_REGISTRO = '+FrmFinanceiroConciliacao.SQLCdsConciliacaoNPAG_REGISTRO.AsString;
                            dataCadastros.sqlUpdate.Execsql;
                            dataCadastros.sqlUpdate.Close;
                         end
                      else
                      if (FrmFinanceiroConciliacao.SQLCdsConciliacaoNLOCAL.AsString = 'T') then //TRANSFERENCIA
                         begin
                            dataCadastros.sqlUpdate.Close;
                            DataCadastros.SqlUpdate.sql.text :='UPDATE BAN_TRANSFERENCIA SET BTR_CONCILIADO = ''S'', HCO_REGISTRO = '+EdContaBanco.Text+',BTR_DATA_LANCAMENTO = '+QuotedStr(DataAmericana(RxDataLancamento.Text))+
                                                                   ' WHERE  BTR_REGISTRO = '+FrmFinanceiroConciliacao.SQLCdsConciliacaoNPAG_REGISTRO.AsString;
                            dataCadastros.sqlUpdate.Execsql;
                            dataCadastros.sqlUpdate.Close;
                         end;
                  end;
               Close;
            end;
      end
   else
      begin
         if (bConciliado) then
            begin
               if (FrmFinanceiroConciliacao.SQLCdsConciliacaoSLOCAL.AsString = 'R') then //PAGAR
                   begin
                      dataCadastros.sqlUpdate.Close;
                      DataCadastros.SqlUpdate.sql.text :='UPDATE FAT_RECEBIMENTO SET FRE_CONCILIADO = ''N'', HCO_REGISTRO = NULL ,FRE_DATA_LANCAMENTO = NULL '+
                                                             ' WHERE  FRE_REGISTRO = '+FrmFinanceiroConciliacao.SQLCdsConciliacaoSPAG_REGISTRO.AsString;
                      dataCadastros.sqlUpdate.Execsql;
                      dataCadastros.sqlUpdate.Close;
                   end
                else
                if (FrmFinanceiroConciliacao.SQLCdsConciliacaoSLOCAL.AsString = 'P') then //RECEBER
                   begin
                      dataCadastros.sqlUpdate.Close;
                      DataCadastros.SqlUpdate.sql.text :='UPDATE PAG_PAGAMENTO SET PAG_CONCILIADO = ''N'', HCO_REGISTRO = NULL ,PAG_DATA_LANCAMENTO = NULL '+
                                                             ' WHERE  PAP_REGISTRO = '+FrmFinanceiroConciliacao.SQLCdsConciliacaoSPAG_REGISTRO.AsString;
                      dataCadastros.sqlUpdate.Execsql;
                      dataCadastros.sqlUpdate.Close;
                   end
                else
                if (FrmFinanceiroConciliacao.SQLCdsConciliacaoSLOCAL.AsString = 'T') then //TRANSFERENCIA
                   begin
                      dataCadastros.sqlUpdate.Close;
                      DataCadastros.SqlUpdate.sql.text :='UPDATE BAN_TRANSFERENCIA SET BTR_CONCILIADO = ''N'', HCO_REGISTRO = NULL ,BTR_DATA_LANCAMENTO = NULL '+
                                                             ' WHERE  BTR_REGISTRO = '+FrmFinanceiroConciliacao.SQLCdsConciliacaoSPAG_REGISTRO.AsString;
                      dataCadastros.sqlUpdate.Execsql;
                      dataCadastros.sqlUpdate.Close;
                   end;
            end
         else
            begin
               if (FrmFinanceiroConciliacao.SQLCdsConciliacaoNLOCAL.AsString = 'R') then //PAGAR
                   begin
                      dataCadastros.sqlUpdate.Close;
                      DataCadastros.SqlUpdate.sql.text :='UPDATE FAT_RECEBIMENTO SET FRE_CONCILIADO = ''N'', HCO_REGISTRO = NULL ,FRE_DATA_LANCAMENTO = NULL '+
                                                             ' WHERE  FRE_REGISTRO = '+FrmFinanceiroConciliacao.SQLCdsConciliacaoNPAG_REGISTRO.AsString;
                      dataCadastros.sqlUpdate.Execsql;
                      dataCadastros.sqlUpdate.Close;
                   end
                else
                if (FrmFinanceiroConciliacao.SQLCdsConciliacaoNLOCAL.AsString = 'P') then //RECEBER
                   begin
                      dataCadastros.sqlUpdate.Close;
                      DataCadastros.SqlUpdate.sql.text :='UPDATE PAG_PAGAMENTO SET PAG_CONCILIADO = ''N'', HCO_REGISTRO = NULL ,PAG_DATA_LANCAMENTO = NULL '+
                                                             ' WHERE  PAP_REGISTRO = '+FrmFinanceiroConciliacao.SQLCdsConciliacaoNPAG_REGISTRO.AsString;
                      dataCadastros.sqlUpdate.Execsql;
                      dataCadastros.sqlUpdate.Close;
                   end
                else
                if (FrmFinanceiroConciliacao.SQLCdsConciliacaoNLOCAL.AsString = 'T') then //TRANSFERENCIA
                   begin
                      dataCadastros.sqlUpdate.Close;
                      DataCadastros.SqlUpdate.sql.text :='UPDATE BAN_TRANSFERENCIA SET BTR_CONCILIADO = ''N'', HCO_REGISTRO = NULL ,BTR_DATA_LANCAMENTO = NULL '+
                                                             ' WHERE  BTR_REGISTRO = '+FrmFinanceiroConciliacao.SQLCdsConciliacaoNPAG_REGISTRO.AsString;
                      dataCadastros.sqlUpdate.Execsql;
                      dataCadastros.sqlUpdate.Close;
                   end;
            end;
          close;
      end;
end;

procedure TFrmFinanceiroConciliacaoLancamento.FormCreate(Sender: tObject);
begin
     EdContaBanco.Clear;
end;

procedure TFrmFinanceiroConciliacaoLancamento.FormShow(Sender: tObject);
begin
   if (bConciliado) then
      CbContaBanco.FiltroTabela := 'HCO_TIPO in ('''+FrmFinanceiroConciliacao.SQLCdsConciliacaoSTIPO.AsString+''',''A'')'
   else
      CbContaBanco.FiltroTabela := 'HCO_TIPO in ('''+FrmFinanceiroConciliacao.SQLCdsConciliacaoNTIPO.AsString+''',''A'')';
   ConfiguraLayout;
end;

procedure TFrmFinanceiroConciliacaoLancamento.CbConciliadoClick(Sender: tObject);
begin
     ConfiguraLayout;
end;

end.
