unit FormPai;

interface

uses
  Windows,  Messages, SysUtils, Variants, Classes, Graphics, Controls, forms, BaseForm, 
  Dialogs, ComCtrls, ToolWin, StdCtrls, Grids, DBGrids, WinSkinData,
  Buttons, ImgList, DB, ComboBoxRw, Mask,  rx rxToolEdit,  rx rxCurrEdit, cx_pai;

type
  TFrmPai = class(TPai)
    DBGrid1: TDBGrid;
    GroupBox1: TGroupBox;
    Rb_Cliente: TRadioButton;
    RbSolicitante: TRadioButton;
    RbFuncionario: TRadioButton;
    SkinData1: TSkinData;
    ImageList1: TImageList;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DS: TDataSource;
    Label1: TLabel;
    Gb_Cliente: TGroupBox;
    Nr_Id_Cliente: TCurrencyEdit;
    Cb_Cliente: TComboBoxRw;
    BtnConsultar: TBitBtn;
    BitBtn4: TBitBtn;
    Gb_Funcionario: TGroupBox;
    Cb_Funcionario: TComboBoxRw;
    Gb_Solicitante: TGroupBox;
    Ed_Solicitante: TEdit;
    Nr_Funcionario: TCurrencyEdit;
    RbDataValidade: TRadioButton;
    GbData: TGroupBox;
    Data1: TDateEdit;
    Data2: TDateEdit;
    Label2: TLabel;
    BitBtn3: TBitBtn;
    procedure DBGrid1DblClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BtnConsultarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Cb_ClienteChange(Sender: TObject);
    procedure Cb_FuncionarioChange(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure Rb_ClienteClick(Sender: TObject);
    procedure RbSolicitanteClick(Sender: TObject);
    procedure RbFuncionarioClick(Sender: TObject);
    procedure Nr_FuncionarioExit(Sender: TObject);
    procedure Cb_FuncionarioExit(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure RbDataValidadeClick(Sender: TObject);
    procedure Data1Exit(Sender: TObject);
    procedure Data2Exit(Sender: TObject);
    procedure Nr_Id_ClienteExit(Sender: TObject);
    procedure Cb_ClienteExit(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPai: TFrmPai;

implementation

uses FormDetalhe, FormGeraCSenha, FormDadosGerador, Ufuncoes, FormRel;

{$R *.dfm}

procedure TFrmPai.DBGrid1DblClick(Sender: TObject);
begin
   FrmDetalhe := TFrmDetalhe.Create(Application);
   FrmDetalhe.ShowModal;
end;

procedure TFrmPai.BitBtn2Click(Sender: TObject);
begin
   FrmRel := TFrmRel.Create(Application);
   FrmRel.ShowModal;
   Dados_Gerador.ListarTodosAtendimentos;
end;

procedure TFrmPai.BitBtn1Click(Sender: TObject);
begin
   FrmGeraCSenha := TFrmGeraCSenha.Create(Application);
   FrmGeraCSenha.ShowModal;

end;

procedure TFrmPai.BtnConsultarClick(Sender: TObject);
Var
   Cod_Cli : String;
   wData1, wData2 : TDate;
begin
   if(Rb_Cliente.Checked)then
   begin
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
      'left JOIN CLI0000 T2 ON (T2.cli_codigo = T1.s_id_cli) where t1.s_id_cli = '''+
      Cod_Cli+''' order by S_DATA_ATENDIMENTO DESC, S_HORA_ATENDIMENTO DESC';
      Dados_Gerador.CDS_SENHA.Open;
   end else
      Begin
         if(RbSolicitante.Checked)then
         begin
            Dados_Gerador.CDS_SENHA.Close;
            Dados_Gerador.CDS_SENHA.CommandText := 'SELECT '+
            'T1.*,'+
            'T2.CLI_CODIGO, '+
            'T2.CLI_RAZAO, '+
            'T3.USU_CODIGO, '+
            'T3.USU_NOME '+
            'FROM  SERIAL_RENEW T1 '+
            'left JOIN USUARIO T3 ON (T3.USU_codigo = T1.s_id_funcionario_renew) '+
            'left JOIN CLI0000 T2 ON (T2.cli_codigo = T1.s_id_cli) where t1.s_solicitante like '''+
            Ed_Solicitante.Text+'%'' order by S_DATA_ATENDIMENTO DESC, S_HORA_ATENDIMENTO DESC';
            Dados_Gerador.CDS_SENHA.Open;
          end else
             begin
                if (RbFuncionario.Checked) then
                begin
                   Dados_Gerador.CDS_SENHA.Close;
                   Dados_Gerador.CDS_SENHA.CommandText := 'SELECT '+
                   'T1.*,'+
                   'T2.CLI_CODIGO, '+
                   'T2.CLI_RAZAO, '+
                   'T3.USU_CODIGO, '+
                   'T3.USU_NOME '+
                   'FROM  SERIAL_RENEW T1 '+
                   'left JOIN USUARIO T3 ON (T3.USU_codigo = T1.s_id_funcionario_renew) '+
                   'left JOIN CLI0000 T2 ON (T2.cli_codigo = T1.s_id_cli) where t1.s_id_funcionario_renew = '+
                   Nr_Funcionario.Text+' order by S_DATA_ATENDIMENTO DESC, S_HORA_ATENDIMENTO DESC';
                   Dados_Gerador.CDS_SENHA.Open;
                end else
                   begin
                       wData1 := StrToDate(Data1.Text);
                       wData2 := StrToDate(Data2.Text);
                       if (wData1 < wData2) then
                       begin
                          Dados_Gerador.CDS_SENHA.Close;
                          Dados_Gerador.CDS_SENHA.CommandText := 'SELECT '+
                          'T1.*,'+
                          'T2.CLI_CODIGO, '+
                          'T2.CLI_RAZAO, '+
                          'T3.USU_CODIGO, '+
                          'T3.USU_NOME '+
                          'FROM  SERIAL_RENEW T1 '+
                          'left JOIN USUARIO T3 ON (T3.USU_codigo = T1.s_id_funcionario_renew) '+
                          'left JOIN CLI0000 T2 ON (T2.cli_codigo = T1.s_id_cli) where t1.S_DATA_VALIDADE between '''+
                          Data1.Text+''' and '''+Data2.Text+''' order by S_DATA_ATENDIMENTO DESC, S_HORA_ATENDIMENTO DESC';
                          Dados_Gerador.CDS_SENHA.Open;
                       end else
                          begin
                             ShowMessage('Data iniccial não pode ser maior que a final');
                             Data1.SetFocus;
                          end;
                   end;
             end;
      end;
end;

procedure TFrmPai.FormShow(Sender: TObject);
begin
   Cb_Cliente.CarregarCombo     := True;
   Cb_Funcionario.CarregarCombo := True;
   Gb_Cliente.Visible           := True;
   Gb_Funcionario.Visible       := False;
   Gb_Solicitante.Visible       := False;
   GbData.Visible               := False;
end;

procedure TFrmPai.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Cb_Cliente.CarregarCombo     := False;
   Cb_Funcionario.CarregarCombo := False;
end;

procedure TFrmPai.Cb_ClienteChange(Sender: TObject);
begin
   Nr_Id_Cliente.Text := Cb_Cliente.CodigoLista;
end;

procedure TFrmPai.BitBtn4Click(Sender: TObject);
begin
   Dados_Gerador.ListarTodosAtendimentos;
end;

procedure TFrmPai.Rb_ClienteClick(Sender: TObject);
begin
   Gb_Cliente.Visible     := True;
   Gb_Funcionario.Visible := False;
   Gb_Solicitante.Visible := False;
   GbData.Visible         := False;
   Nr_Id_Cliente.SetFocus;
end;

procedure TFrmPai.RbSolicitanteClick(Sender: TObject);
begin
   Gb_Cliente.Visible     := False;
   Gb_Funcionario.Visible := False;
   Gb_Solicitante.Visible := True;
   GbData.Visible         := False;
   Ed_Solicitante.SetFocus;
end;

procedure TFrmPai.RbFuncionarioClick(Sender: TObject);
begin
   Gb_Cliente.Visible     := False;
   Gb_Funcionario.Visible := True;
   Gb_Solicitante.Visible := False;
   GbData.Visible         := False;
   Nr_Funcionario.SetFocus;
end;

procedure TFrmPai.Nr_FuncionarioExit(Sender: TObject);
begin
   if (Nr_Funcionario.Value<>0) then
   begin
       if (ActiveControl <> Nil) then
          begin
             Cb_Funcionario.TextoLocalizar := Nr_Funcionario.Text;
             Cb_Funcionario.Localizar := True;
             if (Cb_Funcionario.Localizado = False) then
                begin
                   //beep;
                   ShowMessage('Funcionário Informado não Localizado');
                   Nr_Funcionario.SetFocus;
                   Nr_Funcionario.SelectAll;
                end;
          end;
   end;
end;

procedure TFrmPai.Cb_FuncionarioExit(Sender: TObject);
begin
   if (ActiveControl <> Nil) then
      begin
         if (Trim(Cb_Funcionario.Text) <> '') then
            begin
               if (Cb_Funcionario.Localizado = False) then
                  begin
                     //beep;
                     ShowMessage('Funcionário Informado não Localizado');
                     Nr_Funcionario.SetFocus;
                     Nr_Funcionario.SelectAll;
                  end;
            end
         else
         if (Trim(Cb_Funcionario.Text) = '') then
            begin
               //beep;
               ShowMessage('Informe o Funcionário para Suprimento!');
               Nr_Funcionario.SetFocus;
               Nr_Funcionario.SelectAll;
            end;
      end;
end;

procedure TFrmPai.Cb_FuncionarioChange(Sender: TObject);
begin
   Nr_Funcionario.Text := Cb_Funcionario.CodigoLista;
end;

procedure TFrmPai.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
 If Not odd(Dados_Gerador.CDS_SENHA.RecNo) then
     If not (GdSelected in State) then
         Begin
             DBGrid1.Canvas.Brush.Color := $00FFEFDF;
             DBGrid1.Canvas.FillRect(rect);
             DBGrid1.DefaultDrawDataCell(Rect,column.Field,state);
         end;
 end;

procedure TFrmPai.RbDataValidadeClick(Sender: TObject);
begin
   Gb_Cliente.Visible     := False;
   Gb_Funcionario.Visible := False;
   Gb_Solicitante.Visible := False;
   GbData.Visible         := True;
   Data1.SetFocus;
end;

procedure TFrmPai.Data1Exit(Sender: TObject);
begin
   if (Data1.Text <> '  /  /    ') then
   begin
       try
          StrToDate(Data1.Text);
          //Result := True;
       except
       //on EConvertError do
       ShowMessage ('Data Inválida!');
       Data1.SetFocus;
       end;
   end;
end;

procedure TFrmPai.Data2Exit(Sender: TObject);
begin
   if (Data2.Text <> '  /  /    ') then
   begin
       try
          StrToDate(Data2.Text);
          //Result := True;
       except
       //on EConvertError do
       ShowMessage ('Data Inválida!');
       Data2.SetFocus;
       end;
   end;
end;

procedure TFrmPai.Nr_Id_ClienteExit(Sender: TObject);
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

procedure TFrmPai.Cb_ClienteExit(Sender: TObject);
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

procedure TFrmPai.BitBtn3Click(Sender: TObject);
begin
   Close;
end;

end.
