unit FormRel;

interface

uses
  Windows,  Messages, SysUtils, Variants, Classes, Graphics, Controls, forms, BaseForm, 
  Dialogs, StdCtrls, Mask,  rx rxToolEdit,  rx rxCurrEdit, ComboBoxRw, Buttons, RDprint,
  ppVar, ppPrnabl, ppClass, ppCtrls, ppBands, ppCache, ppComm, ppRelatv,
  ppProd, ppReport, DB, ppDB, ppDBPipe, cx_pai;

type
  TFrmRel = class(TPai)
    GroupBox1: TGroupBox;
    BtnFechar: TBitBtn;
    BitBtn1: TBitBtn;
    RbTodosClientes: TRadioButton;
    RbClienteEspecifico: TRadioButton;
    Gb_Cliente: TGroupBox;
    Nr_Id_Cliente: TCurrencyEdit;
    Cb_Cliente: TComboBoxRw;
    RelCliente: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppDBText1: TppDBText;
    ppDBPipeline1: TppDBPipeline;
    DS: TDataSource;
    ppLabel12: TppLabel;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText6: TppDBText;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppDBText7: TppDBText;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppLabel3: TppLabel;
    ppDBText5: TppDBText;
    ppLabel4: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    procedure FormShow(Sender: TObject);
    procedure RbClienteEspecificoClick(Sender: TObject);
    procedure RbTodosClientesClick(Sender: TObject);
    procedure Cb_ClienteChange(Sender: TObject);
    procedure Cb_ClienteExit(Sender: TObject);
    procedure Nr_Id_ClienteExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnFecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRel: TFrmRel;

implementation
uses Ufuncoes, FormDadosGerador;

{$R *.dfm}

procedure TFrmRel.FormShow(Sender: TObject);
begin
   Cb_Cliente.CarregarCombo := True;
   RbTodosClientes.Checked := True;
   Gb_Cliente.Visible := False;

end;

procedure TFrmRel.RbClienteEspecificoClick(Sender: TObject);
begin
   Gb_Cliente.Visible := True;
   Nr_Id_Cliente.SetFocus;
end;

procedure TFrmRel.RbTodosClientesClick(Sender: TObject);
begin
   Gb_Cliente.Visible := False;
end;

procedure TFrmRel.Cb_ClienteChange(Sender: TObject);
begin
   Nr_Id_Cliente.Text := Cb_Cliente.CodigoLista;
end;

procedure TFrmRel.Cb_ClienteExit(Sender: TObject);
begin
   if (ActiveControl <> Nil) then
      begin
         if (Trim(Cb_Cliente.Text) <> '') then
            begin
               if (Cb_Cliente.Localizado = False) then
                  begin
                     //beep;
                     ShowMessage('Cliente Informado não Localizado');
                     Nr_Id_Cliente.SetFocus;
                     Nr_Id_Cliente.SelectAll;
                  end;
            end
         else
         if (Trim(Cb_Cliente.Text) = '') then
            begin
               //beep;
               ShowMessage('Informe o Cliente!');
               Nr_Id_Cliente.SetFocus;
               Nr_Id_Cliente.SelectAll;
            end;
      end;
end;

procedure TFrmRel.Nr_Id_ClienteExit(Sender: TObject);
begin
   if (Nr_Id_Cliente.Value<>0) then
   begin
       if (ActiveControl <> Nil) then
          begin
             Cb_Cliente.TextoLocalizar := PreencheEsquerda(Nr_Id_Cliente.Text,5);
             Cb_Cliente.Localizar := True;
             if (Cb_Cliente.Localizado = False) then
                begin
                   //beep;
                   ShowMessage('Cliente Informado não Localizado');
                   Nr_Id_Cliente.SetFocus;
                   Nr_Id_Cliente.SelectAll;
                end;
          end;
   end;
end;

procedure TFrmRel.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Cb_Cliente.CarregarCombo := False;
end;

procedure TFrmRel.BtnFecharClick(Sender: TObject);
Var
   Cod_Cli : string;
begin
   if (RbTodosClientes.Checked) then
   begin
      //select no banco
      Cod_Cli := PreencheEsquerda(IntToStr(Nr_Id_Cliente.AsInteger),5);
      Dados_Gerador.CDS_SENHA.Close;
      Dados_Gerador.CDS_SENHA.CommandText := 'SELECT '+
      'T1.*,'+
      'T2.CLI_CODIGO, '+
      'T2.CLI_RAZAO, '+
      'T3.USU_CODIGO, '+
      'T3.USU_NOME '+
      'FROM  SERIAL_RENEW T1 '+
      'left JOIN USUARIO T3 ON (T3.USU_codigo = T1.s_id_funcionario_renew) '+
      'left JOIN CLI0000 T2 ON (T2.cli_codigo = T1.s_id_cli) order by T2.CLI_RAZAO , S_DATA_ATENDIMENTO DESC, S_HORA_ATENDIMENTO DESC';
      Dados_Gerador.CDS_SENHA.Open;
      //pré-visualização
      RelCliente.Print;
   end else
      begin
         //select no banco
         Cod_Cli := PreencheEsquerda(IntToStr(Nr_Id_Cliente.AsInteger),5);
         Dados_Gerador.CDS_SENHA.Close;
         Dados_Gerador.CDS_SENHA.CommandText := 'SELECT '+
         'T1.*,'+
         'T2.CLI_CODIGO, '+
         'T2.CLI_RAZAO, '+
         'T3.USU_CODIGO, '+
         'T3.USU_NOME '+
         'FROM  SERIAL_RENEW T1 '+
         'left JOIN USUARIO T3 ON (T3.USU_codigo = T1.s_id_funcionario_renew) '+
         'left JOIN CLI0000 T2 ON (T2.cli_codigo = T1.s_id_cli) where t1.S_id_cli = '''+Cod_Cli+''' order by T2.CLI_RAZAO , S_DATA_ATENDIMENTO DESC, S_HORA_ATENDIMENTO DESC';
         Dados_Gerador.CDS_SENHA.Open;
         //pré-visualização
         if (Dados_Gerador.CDS_SENHAS_ID.IsNull) then
            ShowMessage('Nenhum registro localizado')
         else
            RelCliente.Print;
      end;
end;

end.
