unit FormGeraCSenha;

interface

uses
  Windows,  Messages, SysUtils, Variants, Classes, Graphics, Controls, forms, BaseForm, 
  Dialogs, StdCtrls, Buttons, Mask, WinSkinData,  rx rxToolEdit, ComboBoxRw,
  CurrEdit;

type
   TVet = array [1..16] of string;
   TTabela = array [1..4, 1..9] of string;
   TTabData = array [1..10] of integer;
   TVetData = array [1..8] of integer;

   TFrmGeraCSenha = class(tFrmBase)
    GbInfo: TGroupBox;
    Label1: TLabel;
    LblHd: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    BtnGerar: TBitBtn;
    BtnFechar: TBitBtn;
    Ed1: TEdit;
    Ed2: TEdit;
    Ed3: TEdit;
    Ed4: TEdit;
    DataValidade: TDateEdit;
    GroupBox1: TGroupBox;
    Nr_Id_Cliente: TCurrencyEdit;
    Cb_Cliente: TComboBoxRw;
    GroupBox2: TGroupBox;
    Ed_Solicitante: TEdit;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    Nr_Id_Funcionario: TCurrencyEdit;
    EdC1: TEdit;
    EdC2: TEdit;
    EdC3: TEdit;
    EdC4: TEdit;
    GroupBox5: TGroupBox;
    Obs: TMemo;
    BitBtn1: TBitBtn;
    LblData: TLabel;
    Cb_Usuario: TComboBoxRw;
    procedure Tabela;
    procedure BtnFecharClick(Sender: TObject);
    function Criptografa(senha: String): String;
    function DesCriptografa(cifrado: string): string;
    function GerarContraSenha(Senha: string; sDataValidade: string): string;
    function GeraCodigoData(Data: string):string;
    procedure BtnGerarClick(Sender: TObject);
    function ValidaData(Data: string):boolean;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DataValidadeExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Nr_Id_ClienteExit(Sender: TObject);
    procedure Cb_ClienteExit(Sender: TObject);
    procedure Cb_ClienteChange(Sender: TObject);
    procedure Cb_UsuarioExit(Sender: TObject);
    procedure Cb_UsuarioChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Nr_Id_FuncionarioExit(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
     iTabela1, iTabela2:TTabela;
     iTabData : TTabData;
     iVetData : TVetData;
     sContraSenha : string;
  end;

var
   FrmGeraCSenha: TFrmGeraCSenha;

implementation

uses FormDadosGerador,UFuncoes;


{$R *.dfm}

procedure TFrmGeraCSenha.BtnFecharClick(Sender: TObject);
begin
   Dados_Gerador.CDS_SENHA.Insert;
   PreencheEsquerda(IntToStr(Nr_Id_Cliente.AsInteger),5);
   Dados_Gerador.CDS_SENHAS_ID_CLI.AsString := PreencheEsquerda(IntToStr(Nr_Id_Cliente.AsInteger),5);
   Dados_Gerador.CDS_SENHAS_SOLICITANTE.AsString := Ed_Solicitante.Text;
   Dados_Gerador.CDS_SENHAS_DATA_ATENDIMENTO.AsDateTime := Date;
   Dados_Gerador.CDS_SENHAS_HORA_ATENDIMENTO.AsDateTime := Time;
   Dados_Gerador.CDS_SENHAS_SERIAL_FORNECIDO.AsString := Ed1.Text+'-'+Ed2.Text+'-'+Ed3.Text+'-'+Ed4.Text;
   Dados_Gerador.CDS_SENHAS_SERIAL_GERADO.AsString := EdC1.Text+'-'+EdC2.Text+'-'+EdC3.Text+'-'+EdC4.Text;
   Dados_Gerador.CDS_SENHAS_DATA_VALIDADE.AsDateTime := DataValidade.Date;
   Dados_Gerador.CDS_SENHAS_NUMERO_HD.AsString := LblHd.Caption;
   Dados_Gerador.CDS_SENHAS_ID_FUNCIONARIO_RENEW.AsInteger := Nr_Id_Funcionario.AsInteger;
   Dados_Gerador.CDS_SENHAS_OBSERVACAO.AsString := Obs.Text;
   Dados_Gerador.CDS_SENHA.ApplyUpdates(0);
   Dados_Gerador.CDS_SENHA.Refresh;
   Close;
end;

function TFrmGeraCSenha.GerarContraSenha(Senha: string; sDataValidade: string): string;
Var
   sSenha, sContra, sVlr1, sVlr2, sContraHd, sContraData, sContraData1: string;
   iCont, iCont1, iLinha, iColuna,iV1,iV2,iV3,iV4,iV5,iV6,iV7,iV8,iV9 : integer;
   iContra, iVetHd, iVet, iVet1, iVet2 :TVet;
begin
   Tabela;
   iCont := 1;
   iCont1 := 1;
   iLinha := 1;
   iColuna := 1;
   sSenha := '';
   while (iCont<17) do
   begin
      iVetHd[iCont] := copy(senha,iCont,1);
      inc(iCont);
   end;
   iCont := 1;
   while (iCont<17) do
   begin
      iV1 := StrToInt(iVetHd[iCont]);
      iV2 := StrToInt(iVetHd[iCont+1]);
      sSenha := sSenha+iTabela1[iV1,iV2];
      iCont := iCont+2;
   end;
   iCont := 1;
   iLinha := 1;
   iColuna := 1;
   while (iCont<9) do
   begin
      iVet[iCont] := Copy(sSenha,iCont,1);
      iCont := iCont+1;
   end;
   iCont := 1;
   while (iCont<9) do
   begin
      while (iLinha < 5) do
      begin
         iColuna := 1;
         while (iColuna < 10) do
         begin
            sVlr1 := iTabela2[iLinha,iColuna];
            sVlr2 := iVet[iCont];
            if ( sVlr1 = sVlr2) then
               iContra[iCont] := IntToStr(iLinha) + IntToStr(iColuna);
            iColuna := iColuna+1;
         end;
         iLinha := iLinha+1;
      end;
      iLinha := 1;
      inc(iCont);
   end;
   iCont := 1;
   sContra := '';
   while (iCont<9) do
   begin
      sContra := sContra + iContra[iCont];
      iCont := iCont+1;
   end;
   LblHd.Caption := sSenha;
   sContraData1 := GeraCodigoData(sDataValidade);
   Result := sContra+sContraData1;
end;


function TFrmGeraCSenha.GeraCodigoData(Data: string): string;
Var
   iCont, iPos : integer;
   sContraData: string;
begin
   iCont := 1;
   iPos := 1;
   sContraData := '';
   sContraData := Copy(Data,1,2);
   sContraData := sContraData + Copy(Data,4,2);
   sContraData := sContraData + Copy(Data,7,4);
   sContraData := IntToStr((StrToInt(sContraData)+35487));
   Result := sContraData;
end;

procedure TFrmGeraCSenha.Tabela;
begin
   //Tabela 1
   iTabela1[1, 1] := '1';
   iTabela1[1, 2] := '2';
   iTabela1[1, 3] := '3';
   iTabela1[1, 4] := '4';
   iTabela1[1, 5] := '5';
   iTabela1[1, 6] := '6';
   iTabela1[1, 7] := '7';
   iTabela1[1, 8] := '8';
   iTabela1[1, 9] := '9';
   iTabela1[2, 1] := 'A';
   iTabela1[2, 2] := 'B';
   iTabela1[2, 3] := 'C';
   iTabela1[2, 4] := 'D';
   iTabela1[2, 5] := 'E';
   iTabela1[2, 6] := 'F';
   iTabela1[2, 7] := 'G';
   iTabela1[2, 8] := 'H';
   iTabela1[2, 9] := 'I';
   iTabela1[3, 1] := 'J';
   iTabela1[3, 2] := 'K';
   iTabela1[3, 3] := 'L';
   iTabela1[3, 4] := 'M';
   iTabela1[3, 5] := 'N';
   iTabela1[3, 6] := 'O';
   iTabela1[3, 7] := 'P';
   iTabela1[3, 8] := 'Q';
   iTabela1[3, 9] := 'R';
   iTabela1[4, 1] := 'S';
   iTabela1[4, 2] := 'T';
   iTabela1[4, 3] := 'U';
   iTabela1[4, 4] := 'V';
   iTabela1[4, 5] := 'W';
   iTabela1[4, 6] := 'Y';
   iTabela1[4, 7] := 'Z';
   iTabela1[4, 8] := '0';
   iTabela1[4, 9] := '0';
   //Tabela 2
   iTabela2[4, 1] := '1';
   iTabela2[4, 2] := '2';
   iTabela2[4, 3] := '3';
   iTabela2[4, 4] := '4';
   iTabela2[4, 5] := '5';
   iTabela2[4, 6] := '6';
   iTabela2[4, 7] := '7';
   iTabela2[4, 8] := '8';
   iTabela2[4, 9] := '9';
   iTabela2[3, 1] := 'A';
   iTabela2[3, 2] := 'B';
   iTabela2[3, 3] := 'C';
   iTabela2[3, 4] := 'D';
   iTabela2[3, 5] := 'E';
   iTabela2[3, 6] := 'F';
   iTabela2[3, 7] := 'G';
   iTabela2[3, 8] := 'H';
   iTabela2[3, 9] := 'I';
   iTabela2[2, 1] := 'J';
   iTabela2[2, 2] := 'K';
   iTabela2[2, 3] := 'L';
   iTabela2[2, 4] := 'M';
   iTabela2[2, 5] := 'N';
   iTabela2[2, 6] := 'O';
   iTabela2[2, 7] := 'P';
   iTabela2[2, 8] := 'Q';
   iTabela2[2, 9] := 'R';
   iTabela2[1, 1] := 'S';
   iTabela2[1, 2] := 'T';
   iTabela2[1, 3] := 'U';
   iTabela2[1, 4] := 'V';
   iTabela2[1, 5] := 'W';
   iTabela2[1, 6] := 'Y';
   iTabela2[1, 7] := 'Z';
   iTabela2[1, 8] := '0';
   iTabela2[1, 9] := '0';
end;

function TFrmGeraCSenha.Criptografa(senha: String): String;
var
   Tamanho, n: integer;
   Retorno: String;
begin
   Tamanho := Length(senha);
   Retorno := '';
   for n := 1 to Tamanho do
      Retorno := Retorno + Chr(Ord(senha[n]) + 131);
   Criptografa := Retorno;
end;

function TFrmGeraCSenha.DesCriptografa(cifrado: string): string;
Var
   Tamanho, n: integer;
   Retorno: String;
begin
   Tamanho := Length(cifrado);
   Retorno := '';
   for n := 1 to Tamanho do
      Retorno := Retorno + Chr(Ord(cifrado[n]) - 131);
   DesCriptografa := Retorno;
end;

procedure TFrmGeraCSenha.BtnGerarClick(Sender: TObject);

Var
   sContra, sContra1, sContra2, sContra3, sContra4 : string;
begin
   if ((Ed1.Text = '')or(Ed1.Text = '')or(Ed1.Text = '')or(Ed1.Text = '')
      or(DataValidade.Text = '  /  /    '))then
      Application.MessageBox('Não pode haver nenhum campo vazio!', 'Atenção',MB_ICONEXCLAMATION)
   else begin
      sContra := Ed1.Text + Ed2.Text + Ed3.Text + Ed4.Text;
      sContraSenha := GerarContraSenha(sContra, DataValidade.Text);
      EdC1.Text := Copy(sContraSenha,1,6);
      EdC2.Text := Copy(sContraSenha,7,6);
      EdC3.Text := Copy(sContraSenha,13,6);
      EdC4.Text := Copy(sContraSenha,19,9);
      EdC1.SetFocus;
      EdC1.SelectAll;
   end;

end;



function TFrmGeraCSenha.ValidaData(Data: string): boolean;
begin
   try
      StrToDate(Data);
      Result := True;
   except
   on EConvertError do
   ShowMessage ('Data Inválida!');
   

end;

end;

procedure TFrmGeraCSenha.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key = VK_RETURN then Perform(Wm_NextDlgCtl,0,0);
end;

procedure TFrmGeraCSenha.DataValidadeExit(Sender: TObject);
begin
   if (ValidaData(DataValidade.Text)) then
      BtnGerar.SetFocus
   else
      DataValidade.SetFocus;
end;

procedure TFrmGeraCSenha.FormShow(Sender: TObject);
begin
   LblData.Caption := FormatDateTime('DD/MM/YYYY',Date);
   Nr_Id_Funcionario.AsInteger := Dados_Gerador.CDS_USERUSU_CODIGO.AsInteger;
   //Ed_Funcionario.Text := Dados_Gerador.CDS_USERNOME.AsString;
   Cb_Usuario.CarregarCombo := True;
   Cb_Cliente.CarregarCombo := True;
end;

procedure TFrmGeraCSenha.Nr_Id_ClienteExit(Sender: TObject);
begin
   if not (Nr_Id_Cliente.Value = 0) then
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

procedure TFrmGeraCSenha.Cb_ClienteExit(Sender: TObject);
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
               ShowMessage('Informe o Cliente para Suprimento!');
               Nr_Id_Cliente.SetFocus;
               Nr_Id_Cliente.SelectAll;
            end;
      end;
end;

procedure TFrmGeraCSenha.Cb_ClienteChange(Sender: TObject);
begin
   Nr_Id_Cliente.Text := Cb_Cliente.CodigoLista;
end;


procedure TFrmGeraCSenha.Cb_UsuarioExit(Sender: TObject);
begin
  if (ActiveControl <> Nil) then
      begin
         if (Trim(Cb_Usuario.Text) <> '') then
            begin
               if (Cb_Usuario.Localizado = False) then
                  begin
                     //beep;
                     ShowMessage('Cliente Informado não Localizado');
                     Nr_Id_Funcionario.SetFocus;
                     Nr_Id_Funcionario.SelectAll;
                  end;
            end
         else
         if (Trim(Cb_Usuario.Text) = '') then
            begin
               //beep;
               ShowMessage('Informe o Cliente para Suprimento!');
               Nr_Id_Funcionario.SetFocus;
               Nr_Id_Funcionario.SelectAll;
            end;
      end;
end;

procedure TFrmGeraCSenha.Cb_UsuarioChange(Sender: TObject);
begin
   Nr_Id_Funcionario.Text := Cb_Usuario.CodigoLista;
end;

procedure TFrmGeraCSenha.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Cb_Cliente.CarregarCombo := False;
   Cb_Usuario.CarregarCombo := False;
end;

procedure TFrmGeraCSenha.Nr_Id_FuncionarioExit(Sender: TObject);
begin
   if not (Nr_Id_Funcionario.Value = 0) then
   begin
       if (ActiveControl <> Nil) then
          begin
             Cb_Usuario.TextoLocalizar := PreencheEsquerda(Nr_Id_Funcionario.Text,5);
             Cb_Usuario.Localizar := True;
             if (Cb_Usuario.Localizado = False) then
                begin
                   //beep;
                   ShowMessage('Cliente Informado não Localizado');
                   Nr_Id_Funcionario.SetFocus;
                   Nr_Id_Funcionario.SelectAll;
                end;
          end;
    end;
end;

end.
