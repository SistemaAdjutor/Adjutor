unit Converte;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask,  rxToolEdit, ComCtrls, Grids, DBGrids;

type
  TForm1 = class(TForm)
    Label2: TLabel;
    FileAdjutor: TFilenameEdit;
    Button17: TButton;
    GroupBox1: TGroupBox;
    BtnClie: TButton;
    BtnFor0000: TButton;
    BtnFor_Prod: TButton;
    BtnBan0000: TButton;
    BtnCli_Ativ: TButton;
    BtnRep0000: TButton;
    BtnReg0000: TButton;
    BtnPrdLinha: TButton;
    BtnPrd_tipo: TButton;
    BtnPrdEnsa: TButton;
    BtnPrdPend: TButton;
    BtnPrdGrupo: TButton;
    btnPcl: TButton;
    BtnSair: TButton;
    BtnCeC: TButton;
    BtnCaixa01: TButton;
    BtnCaixa2: TButton;
    BtnSaldoBco: TButton;
    BtnTrp: TButton;
    BtnPag: TButton;
    BtnPag_Pc: TButton;
    BtnFatPc: TButton;
    BtnFat: TButton;
    GroupBox2: TGroupBox;
    PRBAR: TProgressBar;
    BtnPed0000: TButton;
    BtnPedIt01: TButton;
    BtnPrd0000: TButton;
    BtnFatIt02: TButton;
    BtnNf0001: TButton;
    BtnNFit01: TButton;
    BtnCCT: TButton;
    procedure Button17Click(Sender: tObject);
    procedure BtnClieClick(Sender: tObject);
    function  ExtrairNumeros(wTEXTO:String):String;
    function StrZero(ZEROS:string;QUANT:integer):String;
    function iif(Condicao:Boolean;retornaTrue,retornaFalse:Variant):Variant;    
    procedure BtnFor0000Click(Sender: tObject);
    procedure BtnFor_ProdClick(Sender: tObject);
    procedure BtnBan0000Click(Sender: tObject);
    procedure BtnCli_AtivClick(Sender: tObject);
    procedure BtnRep0000Click(Sender: tObject);
    procedure BtnReg0000Click(Sender: tObject);
    procedure BtnPrdLinhaClick(Sender: tObject);
    procedure BtnPrd_tipoClick(Sender: tObject);
    procedure BtnPrdEnsaClick(Sender: tObject);
    procedure BtnPrdPendClick(Sender: tObject);
    procedure BtnPrdGrupoClick(Sender: tObject);
    procedure btnPclClick(Sender: tObject);
    procedure BtnSairClick(Sender: tObject);
    procedure BtnCeCClick(Sender: tObject);
    procedure BtnCaixa01Click(Sender: tObject);
    procedure BtnCaixa2Click(Sender: tObject);
    procedure BtnSaldoBcoClick(Sender: tObject);
    procedure BtnTrpClick(Sender: tObject);
    procedure BtnPagClick(Sender: tObject);
    procedure BtnPag_PcClick(Sender: tObject);
    procedure BtnFatPcClick(Sender: tObject);
    procedure BtnFatClick(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure BtnPed0000Click(Sender: tObject);
    procedure BtnPedIt01Click(Sender: tObject);
    procedure BtnPrd0000Click(Sender: tObject);
    procedure BtnFatIt02Click(Sender: tObject);
    procedure BtnNf0001Click(Sender: tObject);
    procedure BtnCCTClick(Sender: tObject);
    procedure BtnNFit01Click(Sender: tObject);
  private
    { Private declarations }
    wReg : Integer;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses DBdados1, DB;

{$R *.dfm}

procedure TForm1.Button17Click(Sender: tObject);
begin
    if FileAdjutor.FileName <> '' then
       begin
           Dados1.IBConecta.DatabaseName := FileAdjutor.FileName;
           Dados1.IBConecta.Connected    := true;
       end
    else
       begin
           MessageDlg('Informe o Arquivo do Interbase !',mtWarning,[mbOK],0);
           FileAdjutor.SelectAll;
           FileAdjutor.SetFocus;
       end;
end;

function TForm1.ExtrairNumeros(wTEXTO: String): String;
Var
I:Integer;
wAUX:String;
begin
   wAUX := '';
   for I := 1 to Length(wTEXTO) do
   begin
      if (wTEXTO[I] in ['0'..'9']) then
        begin
           wAUX := wAUX + copy(wTEXTO,I,1);
        end;
   end;
   Result := wAUX;
end;

function TForm1.StrZero(ZEROS: string; QUANT: integer): String;
var
I,Tamanho:integer;
aux: string;
begin
  aux:=zeros;
  Tamanho:=length(ZEROS);
  ZEROS:='';
  for I:=1 to quant-tamanho do
  ZEROS:=ZEROS+'0';
  aux:=zeros+aux;
  StrZero:=aux;
end;

function TForm1.iif(Condicao: Boolean; retornaTrue,retornaFalse: Variant): Variant;
begin
    if Condicao then
       Result := retornaTrue
    else
       Result := retornaFalse;
end;

procedure TForm1.BtnSairClick(Sender: tObject);
begin
    Close;
end;

{Clientes}
procedure TForm1.BtnClieClick(Sender: tObject);
begin
    Screen.Cursor := crHourGlass;
    {Abrir os arquivos}
    Dados1.IBTbClie.Open;
    Dados1.TbCliente.Open;
    {Configura o ProgressBar}
    PrBar.Max := Dados1.TbCliente.RecordCount;
    PrBar.Position := 0;
    {Zera a tabela caso tenha informacao}
    if Dados1.IBTbClie.IsEmpty = false then
       Dados1.IBTbClie.EmptyTable;
    {Aqui faz a transferencia dos dados}
    Dados1.TbCliente.First;
    while not Dados1.TbCliente.Eof do
     begin
        {Interbase                                      Acess}
         Dados1.IBTbClie.Insert;
         Dados1.IBTbClieCLI_CODIGO.AsString          := Dados1.TbClienteCLI_CODIGO.AsString;
         Dados1.IBTbClieCLI_RAZAO.AsString           := Dados1.TbClienteCLI_RAZAO.AsString;
         Dados1.IBTbClieCLI_FANTASIA.AsString        := Dados1.TbClienteCLI_RAZAO.AsString;
         Dados1.IBTbClieCLI_ATIVIDADE.AsString       := Dados1.TbClienteCLI_ATIVIDADE.AsString;
         Dados1.IBTbClieCLI_PORTE.AsString           := Dados1.TbClienteCLI_PORTE.AsString;
         Dados1.IBTbClieCLI_ENDERE.AsString          := Dados1.TbClienteCLI_ENDERE.AsString;
         Dados1.IBTbClieCLI_BAIRRO.AsString          := Dados1.TbClienteCLI_BAIRRO.AsString;
         Dados1.IBTbClieCLI_CIDADE.AsString          := Dados1.TbClienteCLI_CIDADE.AsString;
         Dados1.IBTbClieCLI_CEP.AsString             := Dados1.TbClienteCLI_CEP.AsString;
         Dados1.IBTbClieCLI_CXPOST.AsString          := Dados1.TbClienteCLI_CXPOST.AsString;
         Dados1.IBTbClieCLI_EMAIL.AsString           := Dados1.TbClienteCLI_EMAIL.AsString;
         Dados1.IBTbClieCLI_HOME.AsString            := Dados1.TbClienteCLI_HOME.AsString;
         Dados1.IBTbClieCLI_FONE.AsString            := ExtrairNumeros(Dados1.TbClienteCLI_FONE.AsString);
         Dados1.IBTbClieCLI_FAX.AsString             := ExtrairNumeros(Dados1.TbClienteCLI_FAX.AsString);
         Dados1.IBTbClieCLI_INSC.AsString            := Dados1.TbClienteCLI_INSC.AsString;
         Dados1.IBTbClieCLI_CGC.AsString             := ExtrairNumeros(Dados1.TbClienteCLI_CGC.AsString);
         Dados1.IBTbClieCLI_PESSOA.AsString          := Dados1.TbClienteCLI_PESSOA.AsString;
         Dados1.IBTbClieCLI_CONTATO.AsString         := Dados1.TbClienteCLI_CONTATO.AsString;
         Dados1.IBTbClieCLI_FUNCONT.AsString         := Dados1.TbClienteCLI_FUNCONT.AsString;
         {Importa somente os campos data que tiverem data}
         Dados1.IBTbClieCLI_DTINICIO.Text            := iif(Dados1.TbClienteCLI_DTINICIO.Text = '37957','',Dados1.TbClienteCLI_DTINICIO.Text);
         Dados1.IBTbClieCLI_DTULTCOM.Text            := iif(Dados1.TbClienteCLI_DTULTCOM.Text = '37957','',Dados1.TbClienteCLI_DTULTCOM.Text);
         Dados1.IBTbClieCLI_ENDENTR.AsString         := Dados1.TbClienteCLI_ENDENTR.AsString;
         Dados1.IBTbClieCLI_CIDENTR.AsString         := Dados1.TbClienteCLI_CIDENTR.AsString;
         Dados1.IBTbClieCLI_CEPENTR.AsString         := Dados1.TbClienteCLI_CEPENTR.AsString;
         Dados1.IBTbClieCLI_FONENTR.AsString         := Dados1.TbClienteCLI_FONENTR.AsString;
         Dados1.IBTbClieCLI_ENDFAT.AsString          := Dados1.TbClienteCLI_ENDFAT.AsString;
         Dados1.IBTbClieCLI_CIDFAT.AsString          := Dados1.TbClienteCLI_CIDFAT.AsString;
         Dados1.IBTbClieCLI_CEPFAT.AsString          := Dados1.TbClienteCLI_CEPFAT.AsString;
         Dados1.IBTbClieCLI_UF.AsString              := Dados1.TbClienteCLI_UF.AsString;
         Dados1.IBTbClieCLI_UFENTR.AsString          := Dados1.TbClienteCLI_UFENTR.AsString;
         Dados1.IBTbClieCLI_UFFAT.AsString           := Dados1.TbClienteCLI_UFFAT.AsString;
         Dados1.IBTbClieCLI_INATIVO.AsString         := Dados1.TbClienteCLI_INATIVO.AsString;
         Dados1.IBTbClieCLI_DTINATIVO.Text           := iif(Dados1.TbClienteCLI_DTINATIVO.Text = '37957','',Dados1.TbClienteCLI_DTINATIVO.Text);
         Dados1.IBTbClieCLI_MOTIVO.AsString          := Dados1.TbClienteCLI_MOTIVO.AsString;
//         Dados1.IBTbClieCLI_CURVA.AsString           := Dados1.TbClienteCLI_.AsString;
         Dados1.IBTbClieCLI_LIMITECRED.AsCurrency    := 0;
         Dados1.IBTbClieCLI_LIMITEUTILIZ.AsCurrency  := 0;
//         Dados1.IBTbClieCLI_PEDABERTO.AsString       := Dados1.TbClienteCLI_.AsString;
         Dados1.IBTbClieCLI_VL_ULTCOMP.AsCurrency    := 0;
//         Dados1.IBTbClieCLI_CELULAR.AsString         := Dados1.TbClienteCLI_.AsString;
         Dados1.IBTbClieCLI_OBS.AsString             := Dados1.TbClienteCLI_OBS.AsString;
         Dados1.IBTbClieREG_CODIGO.AsString          := Dados1.TbClienteREG_CODIGO.AsString;
         Dados1.IBTbClieREP_CODIGO.AsString          := Dados1.TbClienteREP_CODIGO.AsString;
         Dados1.IBTbClieTRP_CODIGO.AsString          := Dados1.TbClienteTRP_CODIGO.AsString;
         Dados1.IBTbClieCLI_OBS.AsString             := Dados1.TbClienteCLI_OBS.AsString;
         Dados1.IBTbClieEMP_CODIGO.AsString          := iif(Dados1.TbClienteEMP_CODIGO.AsString = '','001',Dados1.TbClienteEMP_CODIGO.AsString);
         Dados1.IBTbClie.Post;
         Dados1.TbCliente.Next;
         PrBar.Position := PrBar.Position +1;
     end;
    Dados1.IBTransaction.Commit;
    Dados1.IBTbClie.Close;
    Dados1.TbCliente.Close;
    Screen.Cursor := crDefault;
    ShowMessage('Transferência do arquivo CLI0000 OK !');
    PrBar.Position := 0;
end;
{Fornecedor}
procedure TForm1.BtnFor0000Click(Sender: tObject);
begin
    Screen.Cursor := crHourGlass;
    {Abrir os arquivos}
    Dados1.IBTbForne.Open;
    Dados1.TbFornec.Open;
    {Configura o ProgressBar}
    PrBar.Max := Dados1.TbFornec.RecordCount;
    PrBar.Position := 0;
    {Zera a tabela caso tenha informacao no arquivo do interbase}
    if Dados1.IBTbForne.IsEmpty = false then
       Dados1.IBTbForne.EmptyTable;
    {Aqui faz a transferencia dos dados}
    Dados1.TbFornec.First;
    while not Dados1.TbFornec.Eof do
     begin
        {Interbase                                      Acess}
         Dados1.IBTbForne.Insert;
         Dados1.IBTbForneFOR_CODIGO.AsString          := Dados1.TbFornecFOR_CODIGO.AsString;
         Dados1.IBTbForneCCT_CODIGO.AsString          := iif(Dados1.TbFornecCCT_CODIGO.AsString = '','',Dados1.TbFornecCCT_CODIGO.AsString);
         Dados1.IBTbForneFOR_RAZAO.AsString           := Dados1.TbFornecFOR_RAZAO.AsString;
         Dados1.IBTbForneFOR_ENDERE.AsString          := Dados1.TbFornecFOR_ENDERE.AsString;
//         Dados1.IBTbForneFOR_BAIRRO.AsString          := Dados1.TbfClienteCLI_PORTE.AsString;
         Dados1.IBTbForneFOR_CIDADE.AsString          := Dados1.TbFornecFOR_CIDADE.AsString;
         Dados1.IBTbForneFOR_UF.AsString              := Dados1.TbFornecFOR_UF.AsString;
         Dados1.IBTbForneFOR_CEP.AsString             := Dados1.TbFornecFOR_CEP.AsString;
         Dados1.IBTbForneFOR_CONTATO.AsString         := Dados1.TbFornecFOR_CONTATO.AsString;
         Dados1.IBTbForneFOR_FONE.AsString            := ExtrairNumeros(Dados1.TbFornecFOR_FONE.AsString);
         Dados1.IBTbForneFOR_FAX.AsString             := ExtrairNumeros(Dados1.TbFornecFOR_FAX.AsString);
         Dados1.IBTbForneFOR_EMAIL.AsString           := Dados1.TbFornecFOR_EMAIL.AsString;
         Dados1.IBTbForneFOR_FONCONT.AsString         := ExtrairNumeros(Dados1.TbFornecFOR_FONCONT.AsString);
         Dados1.IBTbForneFOR_FAXCONT.AsString         := ExtrairNumeros(Dados1.TbFornecFOR_FAXCONT.AsString);
         Dados1.IBTbForneFOR_OBS.AsString             := Dados1.TbFornecFOR_OBS.AsString;
         Dados1.IBTbForneEMP_CODIGO.AsString          := Dados1.TbFornecEMP_CODIGO.AsString;
         Dados1.IBTbForneFOR_CGC.AsString             := Dados1.TbFornecFOR_CGC.AsString;
         Dados1.IBTbForneFOR_INSC.AsString            := Dados1.TbFornecFOR_INSC.AsString;
         Dados1.IBTbForneFOR_HOME.AsString            := Dados1.TbFornecFOR_HOME.AsString;
         Dados1.IBTbForneFOR_EMAILCONT.AsString       := Dados1.TbFornecFOR_EMAILCONT.AsString;
         Dados1.IBTbForneFOR_PRAZOVENDAS.AsString     := Dados1.TbFornecFOR_PRAZOVENDAS.AsString;
         Dados1.IBTbForneEMP_CODIGO.AsString          := iif(Dados1.TbFornecEMP_CODIGO.AsString = '','001',Dados1.TbFornecEMP_CODIGO.AsString);
         Dados1.IBTbForne.Post;
         Dados1.TbFornec.Next;
         PrBar.Position := PRBAR.Position + 1;
     end;
    Dados1.IBTransaction.Commit;
    Dados1.IBTbForne.Close;
    Dados1.TbFornec.Close;
    ShowMessage('Transferência do arquivo FOR0000 OK !');
    PrBar.Position := 0;
    Screen.Cursor := crDefault;
end;
{Produtos por Fornecedores}
procedure TForm1.BtnFor_ProdClick(Sender: tObject);
begin
    Screen.Cursor := crHourGlass;
    {Abrir os arquivos}
    Dados1.IBTbForProd.Open;
    Dados1.TbForProd.Open;
    {Configura o ProgressBar}
    PrBar.Max := Dados1.TbForProd.RecordCount;
    PrBar.Position := 0;
    {Zera a tabela caso tenha informacao no arquivo do interbase}
    if Dados1.IBTbForProd.IsEmpty = false then
       Dados1.IBTbForProd.EmptyTable;
    {Aqui faz a transferencia dos dados}
    Dados1.TbForProd.First;
    while not Dados1.TbForProd.Eof do
     begin
        {Interbase                                      Acess}
         Dados1.IBTbForProd.Insert;
         Dados1.IBTbForProdFOR_CODIGO.AsString       := Dados1.TbForProdFOR_CODIGO.AsString;
         Dados1.IBTbForProdPRD_REFER.AsString        := Dados1.TbForProdPRD_REFER.AsString;
         Dados1.IBTbForProdEMP_CODIGO.AsString       := iif(Dados1.TbForProdEMP_CODIGO.AsString = '','001',Dados1.TbForProdEMP_CODIGO.AsString);
         Dados1.IBTbForProd.Post;
         Dados1.TbForProd.Next;
         PrBar.Position := PrBar.Position + 1;
     end;
    Dados1.IBTransaction.Commit;
    Dados1.IBTbForProd.Close;
    Dados1.TbForProd.Close;
    ShowMessage('Transferência do arquivo FORPROD OK !');
    PrBar.Position := 0;
    Screen.Cursor := crDefault;
end;
{BAN0000}
procedure TForm1.BtnBan0000Click(Sender: tObject);
begin
    Screen.Cursor := crHourGlass;
    {Abrir os arquivos}
    Dados1.IBTBan.Open;
    Dados1.TbBan.Open;
    {Configura o ProgressBar}
    PrBar.Max := Dados1.TbBan.RecordCount;
    PrBar.Position := 0;
    {Zera a tabela caso tenha informacao no arquivo do interbase}
    if Dados1.IBTBan.IsEmpty = false then
       Dados1.IBTBan.EmptyTable;
    {Aqui faz a transferencia dos dados}
    Dados1.TbBan.First;
    while not Dados1.TbBan.Eof do
     begin
        {Interbase                                    Acess}
         Dados1.IBTBan.Insert;
         Dados1.IBTBanBAN_CODIGO.AsString          := Dados1.TbBanBAN_CODIGO.AsString;
         Dados1.IBTBanBAN_RAZAO.AsString           := Dados1.TbBanBAN_RAZAO.AsString;
         Dados1.IBTBanBAN_APELIDO.AsString         := Dados1.TbBanBAN_APELIDO.AsString;
         Dados1.IBTBanBAN_CODAGE.AsString          := Dados1.TbBanBAN_CODAGE.AsString;
         Dados1.IBTBanBAN_ENDERE.AsString          := Dados1.TbBanBAN_ENDERE.AsString;
         Dados1.IBTBanBAN_CIDADE.AsString          := Dados1.TbBanBAN_CIDADE.AsString;
         Dados1.IBTBanBAN_UF.AsString              := Dados1.TbBanBAN_UF.AsString;
         Dados1.IBTBanBAN_FONE.AsString            := ExtrairNumeros(Dados1.TbBanBAN_FONE.AsString);
         Dados1.IBTBanBAN_FAX.AsString             := ExtrairNumeros(Dados1.TbBanBAN_FAX.AsString);
         Dados1.IBTBanBAN_CEP.AsString             := Dados1.TbBanBAN_CEP.AsString;
         Dados1.IBTBanBAN_CONTATO.AsString         := Dados1.TbBanBAN_CONTATO.AsString;
         Dados1.IBTBanBAN_JUROMES.AsCurrency       := Dados1.TbBanBAN_JUROMES.AsCurrency;
         Dados1.IBTBanBAN_OBS.AsString             := Dados1.TbBanBAN_OBS.AsString;
         Dados1.IBTBanEMP_CODIGO.AsString          := Dados1.TbBanEMP_CODIGO.AsString;
         Dados1.IBTBanBAN_DNAS_CONT.AsString       := Dados1.TbBanBAN_DNAS_CONT.AsString;
         Dados1.IBTBanBAN_EMAIL.AsString           := Dados1.TbBanBAN_EMAIL.AsString;
         Dados1.IBTBanBAN_HOME.AsString            := Dados1.TbBanBAN_HOME.AsString;
         Dados1.IBTBanBAN_CONTA.AsString           := Dados1.TbBanBAN_CONTA.AsString;
//         Dados1.IBTBanBAN_DIGCONTA.AsString        := Dados1.TbBan
         Dados1.IBTBanBAN_COD_CART.AsString        := Dados1.TbBanBAN_COD_CART.AsString;
         Dados1.IBTBanBAN_N_CARTEIRA.AsString      := Dados1.TbBanBAN_N_CARTEIRA.AsString;
         Dados1.IBTBanBAN_INSTRUCAO1.AsString      := Dados1.TbBanBAN_INSTRUCAO1.AsString;
         Dados1.IBTBanBAN_INSTRUCAO2.AsString      := Dados1.TbBanBAN_INSTRUCAO2.AsString;
         Dados1.IBTBanBAN_CODNOBANCO.AsString      := Dados1.TbBanBAN_CODNOBANCO.AsString;
         Dados1.IBTBanBAN_TAM_NONUM.AsString       := Dados1.TbBanBAN_TAM_NONUM.AsString;
         Dados1.IBTBanBAN_PROTPRAZO.AsString       := Dados1.TbBanBAN_PROTPRAZO.AsString;
         Dados1.IBTBanEMP_CODIGO.AsString          := iif(Dados1.TbBanEMP_CODIGO.AsString = '','001',Dados1.TbBanEMP_CODIGO.AsString);
         Dados1.IBTBan.Post;
         Dados1.TbBan.Next;
         PrBar.Position := PrBar.Position + 1;
     end;
    Dados1.IBTransaction.Commit;
    Dados1.IBTBan.Close;
    Dados1.TbBan.Close;
    ShowMessage('Transferência do arquivo BAN0000 OK !');
    PrBar.Position := 0;
    Screen.Cursor := crDefault;
end;
{CLI_ATV1}
procedure TForm1.BtnCli_AtivClick(Sender: tObject);
begin
    Screen.Cursor := crHourGlass;
    {Abrir os arquivos}
    Dados1.IBTbCli_Atv1.Open;
    Dados1.TbCli_Atv1.Open;
    {Configura o ProgressBar}
    PrBar.Max := Dados1.TbCli_Atv1.RecordCount;
    PrBar.Position := 0;
    {Zera a tabela caso tenha informacao no arquivo do interbase}
    if Dados1.IBTbCli_Atv1.IsEmpty = false then
       Dados1.IBTbCli_Atv1.EmptyTable;
    {Aqui faz a transferencia dos dados}
    Dados1.TbCli_Atv1.First;
    while not Dados1.TbCli_Atv1.Eof do
     begin
        {Interbase                                       Acess}
         Dados1.IBTbCli_Atv1.Insert;
         Dados1.IBTbCli_Atv1RCL_CODIGO.AsString       := Dados1.TbCli_Atv1RCL_CODIGO.AsString;
         Dados1.IBTbCli_Atv1RCL_ATIVIDADE.AsString    := Dados1.TbCli_Atv1RCL_ATIVIDADE.AsString;
         Dados1.IBTbCli_Atv1EMP_CODIGO.AsString       := IIF(Dados1.TbCli_Atv1EMP_CODIGO.AsString ='','001',Dados1.TbCli_Atv1EMP_CODIGO.AsString);
         Dados1.IBTbCli_Atv1.Post;
         Dados1.TbCli_Atv1.Next;
         PrBar.Position := PrBar.Position + 1;
     end;
    Dados1.IBTransaction.Commit;
    Dados1.IBTbCli_Atv1.Close;
    Dados1.TbCli_Atv1.Close;
    ShowMessage('Transferência do arquivo CLI_ATV1 OK !');
    PrBar.Position := 0;
    Screen.Cursor := crDefault;
end;
{REP0000}
procedure TForm1.BtnRep0000Click(Sender: tObject);
begin
    Screen.Cursor := crHourGlass;
    {Abrir os arquivos}
    Dados1.IBTbRep.Open;
    Dados1.TbRep.Open;
    {Configura o ProgressBar}
    PrBar.Max := Dados1.TbRep.RecordCount;
    PrBar.Position := 0;
    {Zera a tabela caso tenha informacao no arquivo do interbase}
    if Dados1.IBTbRep.IsEmpty = false then
       Dados1.IBTbRep.EmptyTable;
    {Aqui faz a transferencia dos dados}
    Dados1.TbRep.First;
    while not Dados1.TbRep.Eof do
     begin
        {Interbase                                    Acess}
         Dados1.IBTbRep.Insert;
         Dados1.IBTbRepREP_CODIGO.AsString         := Dados1.TbRepREP_CODIGO.AsString;
         Dados1.IBTbRepREP_GRUPO.AsString          := Dados1.TbRepREP_GRUPO.AsString;
         Dados1.IBTbRepREG_CODIGO.AsString         := Dados1.TbRepREG_CODIGO.AsString;
         Dados1.IBTbRepREP_FUNCAO.AsString         := Dados1.TbRepREP_FUNCAO.AsString;
         Dados1.IBTbRepREP_SUPERVISAO.AsString     := Dados1.TbRepREP_SUPERVISAO.AsString;
         Dados1.IBTbRepREP_GERENTE.AsString        := Dados1.TbRepREP_GERENTE.AsString;
         Dados1.IBTbRepREP_RAZAO.AsString          := Dados1.TbRepREP_RAZAO.AsString;
         Dados1.IBTbRepREP_NOME.AsString           := Dados1.TbRepREP_NOME.AsString;
         Dados1.IBTbRepREP_ENDERE.AsString         := Dados1.TbRepREP_ENDERE.AsString;
         Dados1.IBTbRepREP_CIDADE.AsString         := Dados1.TbRepREP_CIDADE.AsString;
//         Dados1.IBTbRepREP_CELULAR.AsString        := Dados1.Tbreprep_celular.AsString;
//         Dados1.IBTbRepREP_CONTA.AsString          := Dados1.Tbreprep_Conta.AsString;
//         Dados1.IBTbRepREP_AGENCIA.AsString        := Dados1.Tbreprep_agencia.AsString;
//         Dados1.IBTbRepREP_BANCO.AsString          := Dados1.TbrepREP_BANCO.AsString;
         Dados1.IBTbRepREP_BANCOFAVOR.AsString     := Dados1.TbRepREP_BANCOFAVOR.AsString;
         Dados1.IBTbRepREP_UF.AsString             := Dados1.TbRepREP_UF.AsString;
         Dados1.IBTbRepREP_CEP.AsString            := Dados1.TbRepREP_CEP.AsString;
         Dados1.IBTbRepREP_FONE.AsString           := ExtrairNumeros(Dados1.TbRepREP_FONE.AsString);
         Dados1.IBTbRepREP_FAX.AsString            := ExtrairNumeros(Dados1.TbRepREP_FAX.AsString);
         Dados1.IBTbRepREP_EMAIL.AsString          := Dados1.TbRepREP_EMAIL.AsString;
         Dados1.IBTbRepREP_TIPO.AsString           := Dados1.TbRepREP_TIPO.AsString;
         Dados1.IBTbRepREP_SITUACAO.AsString       := Dados1.TbRepREP_SITUACAO.AsString;
         Dados1.IBTbRepREP_OBS.AsString            := Dados1.TbRepREP_OBS.AsString;
         Dados1.IBTbRepREP_QUOTA.AsCurrency        := Dados1.TbRepREP_QUOTA.AsCurrency;
         Dados1.IBTbRepREP_NDEPEND.AsString        := Dados1.TbRepREP_NDEPEND.AsString;
         Dados1.IBTbRepREP_DTNASC.Text             := iif(Dados1.TbRepREP_DTNASC.Text = '37957','',Dados1.TbRepREP_DTNASC.Text);
         Dados1.IBTbRepREP_INSC.AsString           := Dados1.TbRepREP_INSC.AsString;
         Dados1.IBTbRepREP_CGC.AsString            := ExtrairNumeros(Dados1.TbRepREP_CGC.AsString);
         Dados1.IBTbRepEMP_CODIGO.AsString         := iif(Dados1.TbRepEMP_CODIGO.AsString = '','001',Dados1.TbRepEMP_CODIGO.AsString);
         Dados1.IBTbRep.Post;
         Dados1.TbRep.Next;
         PrBar.Position := PrBar.Position + 1;
     end;
    Dados1.IBTransaction.Commit;
    Dados1.IBTbRep.Close;
    Dados1.TbRep.Close;
    ShowMessage('Transferência do arquivo REP0000 OK !');
    PrBar.Position := 0;
    Screen.Cursor := crDefault;
end;
{Reg0000}
procedure TForm1.BtnReg0000Click(Sender: tObject);
begin
    Screen.Cursor := crHourGlass;
    {Abrir os arquivos}
    Dados1.IBTbReg.Open;
    Dados1.TbReg.Open;
    {Configura o ProgressBar}
    PrBar.Max := Dados1.TbReg.RecordCount;
    PrBar.Position := 0;
    {Zera a tabela caso tenha informacao no arquivo do interbase}
    if Dados1.IBTbReg.IsEmpty = false then
       Dados1.IBTbReg.EmptyTable;
    {Aqui faz a transferencia dos dados}
    Dados1.TbReg.First;
    while not Dados1.TbReg.Eof do
     begin
        {Interbase                                  Acess}
         Dados1.IBTbReg.Insert;
         Dados1.IBTbRegREG_CODIGO.AsString       := Dados1.TbRegREG_CODIGO.AsString;
         Dados1.IBTbRegREG_DESCRI.AsString       := Dados1.TbRegREG_DESCRI.AsString;
         Dados1.IBTbRegEMP_CODIGO.AsString       := iif(Dados1.TbRegEMP_CODIGO.AsString = '','001',Dados1.TbRegEMP_CODIGO.AsString);
         Dados1.IBTbReg.Post;
         Dados1.TbReg.Next;
         PrBar.Position := PrBar.Position + 1;
     end;
    Dados1.IBTransaction.Commit;
    Dados1.IBTbReg.Close;
    Dados1.TbReg.Close;
    ShowMessage('Transferência do Arquivo REG0000 OK !');
    PrBar.Position := 0;
    Screen.Cursor := crDefault;
end;
{PRD_LINHA}
procedure TForm1.BtnPrdLinhaClick(Sender: tObject);
begin
    Screen.Cursor := crHourGlass;
    {Abrir os arquivos}
    Dados1.IBTbPrdLinha.Open;
    Dados1.TbPrdLinha.Open;
    {Configura o ProgressBar}
    PrBar.Max := Dados1.TbPrdLinha.RecordCount;
    PrBar.Position := 0;
    {Zera a tabela caso tenha informacao no arquivo do interbase}
    if Dados1.IBTbPrdLinha.IsEmpty = false then
       Dados1.IBTbPrdLinha.EmptyTable;
    {Aqui faz a transferencia dos dados}
    Dados1.TbPrdLinha.First;
    while not Dados1.TbPrdLinha.Eof do
     begin
        {Interbase                                  Acess}
         Dados1.IBTbPrdLinha.Insert;
         Dados1.IBTbPrdLinhaLIN_CODIGO.AsString  := Dados1.TbPrdLinhaLIN_CODIGO.AsString;
         Dados1.IBTbPrdLinhaLIN_DESCRI.AsString  := Dados1.TbPrdLinhaLIN_DESCRI.AsString;
         Dados1.IBTbPrdLinhaEMP_CODIGO.AsString  := iif(Dados1.TbPrdLinhaEMP_CODIGO.AsString = '','001',Dados1.TbPrdLinhaEMP_CODIGO.AsString);
         Dados1.IBTbPrdLinha.Post;
         Dados1.TbPrdLinha.Next;
         PrBar.Position := PrBar.Position + 1;
     end;
    Dados1.IBTransaction.Commit;
    Dados1.IBTbPrdLinha.Close;
    Dados1.TbPrdLinha.Close;
    ShowMessage('Transferência do arquivo PRD_LINHA OK !');
    PrBar.Position := 0;
    Screen.Cursor := crDefault;
end;
{PRD_TIPO}
procedure TForm1.BtnPrd_tipoClick(Sender: tObject);
begin
    Screen.Cursor := crHourGlass;
    {Abrir os arquivos}
    Dados1.IBTbPrdTipo.Open;
    Dados1.TbPrdTipo.Open;
    {Configura o ProgressBar}
    PrBar.Max := Dados1.TbPrdTipo.RecordCount;
    PrBar.Position := 0;
    {Zera a tabela caso tenha informacao no arquivo do interbase}
    if Dados1.IBTbPrdTipo.IsEmpty = false then
       Dados1.IBTbPrdTipo.EmptyTable;
    {Aqui faz a transferencia dos dados}
    Dados1.TbPrdTipo.First;
    while not Dados1.TbPrdTipo.Eof do
     begin
        {Interbase                                  Acess}
         Dados1.IBTbPrdTipo.Insert;
         Dados1.IBTbPrdTipoPTI_CODIGO.AsString   := Dados1.TbPrdTipoPTI_CODIGO.AsString;
         Dados1.IBTbPrdTipoPTI_DESCRI.AsString   := Dados1.TbPrdTipoPTI_DESCRI.AsString;
         Dados1.IBTbPrdTipoEMP_CODIGO.AsString   := iif(Dados1.TbPrdTipoEMP_CODIGO.AsString = '','001',Dados1.TbPrdTipoEMP_CODIGO.AsString);
         Dados1.IBTbPrdTipo.Post;
         Dados1.TbPrdTipo.Next;
         PrBar.Position := PrBar.Position + 1;
     end;
    Dados1.IBTransaction.Commit;
    Dados1.IBTbPrdTipo.Close;
    Dados1.TbPrdTipo.Close;
    ShowMessage('Transferência do arquivo PRD_TIPO OK !');
    PrBar.Position := 0;
    Screen.Cursor := crDefault;
end;
{PRD_ENSA}
procedure TForm1.BtnPrdEnsaClick(Sender: tObject);
begin
    Screen.Cursor := crHourGlass;
    {Abrir os arquivos}
    Dados1.IBTbPrdEnsa.Open;
    Dados1.TbPrdEnsa.Open;
    {Configura o ProgressBar}
    PrBar.Max := Dados1.TbPrdEnsa.RecordCount;
    PrBar.Position := 0;
    {Zera a variavel wReg}
    wReg := 0;
    {Zera a tabela caso tenha informacao no arquivo do interbase}
    if Dados1.IBTbPrdEnsa.IsEmpty = false then
       Dados1.IBTbPrdEnsa.EmptyTable;
    {Aqui faz a transferencia dos dados}
    Dados1.TbPrdEnsa.First;
    while not Dados1.TbPrdEnsa.Eof do
     begin
        {Interbase                                   Acess}
         Dados1.IBTbPrdEnsa.Insert;
         Dados1.IBTbPrdEnsaPES_REGISTRO.AsInteger := wReg;
         Dados1.IBTbPrdEnsaPRD_REFER.AsString     := Dados1.TbPrdEnsaPRD_REFER.AsString;
         Dados1.IBTbPrdEnsaPES_TIPO.AsString      := Dados1.TbPrdEnsaPES_TIPO.AsString;
         Dados1.IBTbPrdEnsaPES_QTDE.AsCurrency    := Dados1.TbPrdEnsaPES_QTDE.AsCurrency;
         Dados1.IBTbPrdEnsaPES_NUMDOC.AsString    := Dados1.TbPrdEnsaPES_NUMDOC.AsString;
         Dados1.IBTbPrdEnsaPES_TIPDOC.AsString    := Dados1.TbPrdEnsaPES_TIPDOC.AsString;
         Dados1.IBTbPrdEnsaPES_DATA.Text          := iif(Dados1.TbPrdEnsaPES_DATA.Text = '37957','',Dados1.TbPrdEnsaPES_DATA.Text);
         Dados1.IBTbPrdEnsaPES_ORIGEM.AsString    := Dados1.TbPrdEnsaPES_ORIGEM.AsString;
         Dados1.IBTbPrdEnsaPES_VALOR.AsCurrency   := Dados1.TbPrdEnsaPES_VALOR.AsCurrency;
         Dados1.IBTbPrdEnsaPES_VAR1.AsCurrency    := Dados1.TbPrdEnsaPES_VAR1.AsCurrency;
         Dados1.IBTbPrdEnsaPES_VAR2.AsCurrency    := Dados1.TbPrdEnsaPES_VAR2.AsCurrency;
         Dados1.IBTbPrdEnsaPES_VAR3.AsCurrency    := Dados1.TbPrdEnsaPES_VAR3.AsCurrency;
         Dados1.IBTbPrdEnsaPES_VAR4.AsCurrency    := Dados1.TbPrdEnsaPES_VAR4.AsCurrency;
         Dados1.IBTbPrdEnsaPES_VAR5.AsCurrency    := Dados1.TbPrdEnsaPES_VAR5.AsCurrency;
         Dados1.IBTbPrdEnsaPES_VAR6.AsCurrency    := Dados1.TbPrdEnsaPES_VAR6.AsCurrency;
         Dados1.IBTbPrdEnsaPES_VAR7.AsCurrency    := Dados1.TbPrdEnsaPES_VAR7.AsCurrency;
         Dados1.IBTbPrdEnsaPES_VAR8.AsCurrency    := Dados1.TbPrdEnsaPES_VAR8.AsCurrency;
         Dados1.IBTbPrdEnsaEMP_CODIGO.AsString    := iif(Dados1.TbPrdEnsaEMP_CODIGO.AsString = '','001',Dados1.TbPrdEnsaEMP_CODIGO.AsString);
         inc(wReg);
         Dados1.IBTbPrdEnsa.Post;
         Dados1.TbPrdEnsa.Next;
         PrBar.Position := PrBar.Position + 1;
     end;
    Dados1.IBTransaction.Commit;
    Dados1.IBTbPrdEnsa.Close;
    Dados1.TbPrdEnsa.Close;
    ShowMessage('Transferência do arquivo PRD_ENSA OK !');
    PrBar.Position := 0;
    Screen.Cursor := crDefault;
end;
{PRD_PEND}
procedure TForm1.BtnPrdPendClick(Sender: tObject);
begin
    Screen.Cursor := crHourGlass;
        {Abrir os arquivos}
    Dados1.IBTbPrdPend.Open;
    Dados1.TbPrdPend.Open;
    {Configura o ProgressBar}
    PrBar.Max := Dados1.TbPrdPend.RecordCount;
    PrBar.Position := 0;
    {Zera a variavel wReg}
    wReg := 0;
    {Zera a tabela caso tenha informacao no arquivo do interbase}
    if Dados1.IBTbPrdPend.IsEmpty = false then
       Dados1.IBTbPrdPend.EmptyTable;
    {Aqui faz a transferencia dos dados}
    Dados1.TbPrdPend.First;
    while not Dados1.TbPrdPend.Eof do
     begin
        {Interbase                                   Acess}
         Dados1.IBTbPrdPend.insert;
         Dados1.IBTbPrdPendPPE_REG.AsInteger      := wReg;
         Dados1.IBTbPrdPendOCP_CODIGO.AsString    := Dados1.TbPrdPendOCP_CODIGO.AsString;
         Dados1.IBTbPrdPendPRD_REFER.AsString     := Dados1.TbPrdPendPRD_REFER.AsString;
         Dados1.IBTbPrdPendPPE_QTDE.AsCurrency    := Dados1.TbPrdPendPPE_QTDE.AsCurrency;
         Dados1.IBTbPrdPendPPE_DATA.Text          := iif(Dados1.TbPrdPendPPE_DATA.Text = '37957','',Dados1.TbPrdPendPPE_DATA.Text);
         Dados1.IBTbPrdEnsaPES_TIPDOC.AsString    := Dados1.TbPrdEnsaPES_TIPDOC.AsString;
         Dados1.IBTbPrdPendEMP_CODIGO.AsString    := '001';
         inc(wReg);
         Dados1.IBTbPrdPend.Post;
         Dados1.TbPrdPend.Next;
         PrBar.Position := PrBar.Position + 1;
     end;
    Dados1.IBTransaction.Commit;
    Dados1.IBTbPrdPend.Close;
    Dados1.TbPrdPend.Close;
    ShowMessage('Transferência do arquivo PRD_PEND OK !');
    PrBar.Position := 0;
    Screen.Cursor := crDefault;
end;
{PRD_GRUPO}
procedure TForm1.BtnPrdGrupoClick(Sender: tObject);
begin
    Screen.Cursor := crHourGlass;
    {Abrir os arquivos}
    Dados1.IBTbPrdGrupo.Open;
    Dados1.TbPrdGrupo.Open;
    {Configura o ProgressBar}
    PrBar.Max := Dados1.TbPrdGrupo.RecordCount;
    PrBar.Position := 0;
    {Zera a tabela caso tenha informacao no arquivo do interbase}
    if Dados1.IBTbPrdGrupo.IsEmpty = false then
       Dados1.IBTbPrdGrupo.EmptyTable;
    {Aqui faz a transferencia dos dados}
    Dados1.TbPrdGrupo.First;
    while not Dados1.TbPrdGrupo.Eof do
     begin
        {Interbase                                   Acess}
         Dados1.IBTbPrdGrupo.insert;
         Dados1.IBTbPrdGrupoPGR_CODIGO.AsString     := Dados1.TbPrdGrupoPGR_CODIGO.AsString;
         Dados1.IBTbPrdGrupoPGR_DESCRI.AsString     := Dados1.TbPrdGrupoPGR_DESCRI.AsString;
         Dados1.IBTbPrdGrupoPGR_COMISS.AsString     := Dados1.TbPrdGrupoPGR_COMISS.AsString;
         Dados1.IBTbPrdGrupoPGR_COM_PERC.AsCurrency := Dados1.TbPrdGrupoPGR_COM_PERC.AsCurrency;
         Dados1.IBTbPrdGrupoEMP_CODIGO.AsString     := iif(Dados1.TbPrdGrupoEMP_CODIGO.AsString = '','001',Dados1.TbPrdGrupoEMP_CODIGO.AsString);
         Dados1.IBTbPrdGrupo.Post;
         Dados1.TbPrdGrupo.Next;
         PrBar.Position := PrBar.Position + 1;
     end;
    Dados1.IBTransaction.Commit;
    Dados1.IBTbPrdGrupo.Close;
    Dados1.TbPrdGrupo.Close;
    ShowMessage('Transferência do arquivo PRD_GRUPO OK !');
    PrBar.Position := 0;
    Screen.Cursor := crDefault;
end;
{PCL0000}
procedure TForm1.btnPclClick(Sender: tObject);
begin
    Screen.Cursor := crHourGlass;
    {Abrir os arquivos}
    Dados1.IBTbPcl.Open;
    Dados1.TbPcl.Open;
    {Configura o ProgressBar}
    PrBar.Max := Dados1.TbPcl.RecordCount;
    PrBar.Position := 0;
    {Zera a tabela caso tenha informacao no arquivo do interbase}
    if Dados1.IBTbPcl.IsEmpty = false then
       Dados1.IBTbPcl.EmptyTable;
    {Aqui faz a transferencia dos dados}
    Dados1.TbPcl.First;
    while not Dados1.TbPcl.Eof do
     begin
        {Interbase                                     Acess}
         Dados1.IBTbPcl.Insert;
         Dados1.IBTbPclPCL_CODIGO.AsString          := StrZero(Dados1.TbPclPCL_CODIGO.AsString,3);
         Dados1.IBTbPclPCL_NOME.AsString            := Dados1.TbPclPCL_NOME.AsString;
         Dados1.IBTbPclPCL_DESCTO.AsCurrency        := Dados1.TbPclPCL_DESCTO.AsCurrency;
         Dados1.IBTbPclPCL_MULTA.AsCurrency         := Dados1.TbPclPCL_MULTA.AsCurrency;
         Dados1.IBTbPclPCL_JUROS.AsCurrency         := Dados1.TbPclPCL_JUROS.AsCurrency;
         Dados1.IBTbPclPCL_NPARCELAS.AsInteger      := Dados1.TbPclPCL_NPARCELAS.AsInteger;
         Dados1.IBTbPclPCL_DIASENTREP.AsInteger     := Dados1.TbPclPCL_DIASENTREP.AsInteger;
         Dados1.IBTbPclPCL_MANTERDIA.AsString       := IIF(Dados1.TbPclPCL_MANTERDIA.AsBoolean = TRUE,'S','N');
         Dados1.IBTbPclPCL_CARENC_PRI.AsInteger     := Dados1.TbPclPCL_CARENC_PRI.AsInteger;
         Dados1.IBTbPclPCL_OBS.AsString             := Dados1.TbPclPCL_OBS.AsString;
         Dados1.IBTbPclPCL_DISPONIVEL.AsString      := IIF(Dados1.TbPclPCL_DISPONIVEL.AsBoolean = TRUE,'S','N');
         Dados1.IBTbPclPCL_OBS.AsString             := Dados1.TbPclPCL_OBS.AsString;
         Dados1.IBTbPclEMP_CODIGO.AsString          := '001';
         Dados1.IBTbPcl.Post;
         Dados1.TbPcl.Next;
         PrBar.Position := PrBar.Position + 1;
     end;
    Dados1.IBTransaction.Commit;
    Dados1.IBTbPcl.Close;
    Dados1.TbPcl.Close;
    ShowMessage('Transferência do arquivo PCL0000 OK !');
    PrBar.Position := 0;
    Screen.Cursor := crDefault;
end;
{CEC0000}
procedure TForm1.BtnCeCClick(Sender: tObject);
begin
    Screen.Cursor := crHourGlass;
    {Abrir os arquivos}
    Dados1.IBTbCec.Open;
    Dados1.TbCec.Open;
    {Configura o ProgressBar}
    PrBar.Max := Dados1.TbCec.RecordCount;
    PrBar.Position := 0;
    {Zera a tabela caso tenha informacao no arquivo do interbase}
    if Dados1.IBTbCec.IsEmpty = false then
       Dados1.IBTbCec.EmptyTable;
    {Aqui faz a transferencia dos dados}
    Dados1.TbCec.First;
    while not Dados1.TbCec.Eof do
     begin
        {Interbase                            Acess}
         Dados1.IBTbCec.Insert;
         Dados1.IBTbCecCEC_CODIGO.AsString := Dados1.TbCecCEC_CODIGO.AsString;
         Dados1.IBTbCecCEC_DESCRI.AsString := Dados1.TbCecCEC_DESCRI.AsString;
         Dados1.IBTbCecCEC_PLANO.AsString  := '';
         Dados1.IBTbCecEMP_CODIGO.AsString := '001';
         Dados1.IBTbCec.Post;
         Dados1.TbCec.Next;
         PrBar.Position := PrBar.Position + 1;
     end;
    Dados1.IBTransaction.Commit;
    Dados1.IBTbCec.Close;
    Dados1.TbCec.Close;
    ShowMessage('Transferência do arquivo CEC_0000 OK !');
    PrBar.Position := 0;
    Screen.Cursor := crDefault;
end;
{CAIXA001}
procedure TForm1.BtnCaixa01Click(Sender: tObject);
begin
    Screen.Cursor := crHourGlass;
    {Abrir os arquivos}
    Dados1.IBTbCAIXA1.Open;
    Dados1.TbCAIXA1.Open;
    {Configura o ProgressBar}
    PrBar.Max := Dados1.TbCAIXA1.RecordCount;
    PrBar.Position := 0;
    {Zera a tabela caso tenha informacao no arquivo do interbase}
    if Dados1.IBTbCAIXA1.IsEmpty = false then
       Dados1.IBTbCAIXA1.EmptyTable;
    {Aqui faz a transferencia dos dados}
    Dados1.TbCaixa1.First;
    while not Dados1.TbCaixa1.Eof do
     begin
        {Interbase                            Acess}
         Dados1.IBTbCAIXA1.Insert;
         Dados1.IBTbCAIXA1CXA_LANCTO.AsString           := Dados1.TbCaixa1CXA_LANCTO.AsString;
         Dados1.IBTbCAIXA1CXA_DATA.Text                 := iif(Dados1.TbCaixa1CXA_DATA.Text = '37957','',Dados1.TbCaixa1CXA_DATA.Text);
         Dados1.IBTbCAIXA1CCT_CODIGO.AsString           := iif(Dados1.TbCaixa1CCT_CODIGO.AsString = '','',Dados1.TbCaixa1CCT_CODIGO.AsString);
         Dados1.IBTbCAIXA1CXA_HISTORICO.AsString        := Dados1.TbCaixa1CXA_HISTORICO.AsString;
         Dados1.IBTbCAIXA1CXA_TIPODOC.AsString          := IIF(Dados1.TbCaixa1CXA_TIPODOC.AsString ='Dinheiro','D','T');
         Dados1.IBTbCAIXA1CXA_SAIDA.AsCurrency          := Dados1.TbCaixa1CXA_SAIDA.AsCurrency;
         Dados1.IBTbCAIXA1CXA_ENTRADA.AsCurrency        := Dados1.TbCaixa1CXA_ENTRADA.AsCurrency;
         Dados1.IBTbCAIXA1CXA_SITUACAO.AsString         := Dados1.TbCaixa1CXA_SITUACAO.AsString;
         Dados1.IBTbCAIXA1EMP_CODIGO.AsString           := '001';
         Dados1.IBTbCAIXA1.Post;
         Dados1.TbCaixa1.Next;
         PRBAR.Position := PRBAR.Position + 1;
     end;
    Dados1.IBTransaction.Commit;
    Dados1.IBTbCAIXA1.Close;
    Dados1.TbCaixa1.Close;
    ShowMessage('Transferência do arquivo CAIXA001 OK !');
    PRBAR.Position := 0;
    Screen.Cursor := crDefault;
end;
{CAIXA002}
procedure TForm1.BtnCaixa2Click(Sender: tObject);
begin
    Screen.Cursor := crHourGlass;
    {Abrir os arquivos}
    Dados1.IBTbCAIXA2.Open;
    Dados1.TbCAIXA2.Open;
    {Configura o ProgressBar}
    PrBar.Max := Dados1.TbCAIXA2.RecordCount;
    PrBar.Position := 0;
    {Zera a tabela caso tenha informacao no arquivo do interbase}
    if Dados1.IBTbCaixa2.IsEmpty = false then
       Dados1.IBTbCAIXA2.EmptyTable;
    {Aqui faz a transferencia dos dados}
    Dados1.TbCaixa2.First;
    while not Dados1.TbCaixa2.Eof do
     begin
        {Interbase                                         Acess}
         Dados1.IBTbCaixa2.Insert;
         Dados1.IBTbCaixa2CXF_CODIGO.AsString           := Dados1.TbCaixa2CXF_CODIGO.AsString;
         Dados1.IBTbCaixa2CXF_ANTERIOR.AsCurrency       := Dados1.TbCaixa2CXF_ANTERIOR.AsCurrency;
         Dados1.IBTbCaixa2CXF_DATAFECHA.Text            := iif(Dados1.TbCaixa2CXF_DATAFECHA.Text = '37957','',Dados1.TbCaixa2CXF_DATAFECHA.text);
         Dados1.IBTbCaixa2CXF_ENTRADAS.AsCurrency       := Dados1.TbCaixa2CXF_ENTRADAS.AsCurrency;
         Dados1.IBTbCaixa2CXF_SAIDAS.AsCurrency         := Dados1.TbCaixa2CXF_SAIDAS.AsCurrency;
         Dados1.IBTbCaixa2CXF_DINICIO.Text              := iif(Dados1.TbCaixa2CXF_DINICIO.Text = '37957','',Dados1.TbCaixa2CXF_DINICIO.Text);
         Dados1.IBTbCaixa2CXF_DFIM.Text                 := iif(Dados1.TbCaixa2CXF_DFIM.Text = '37957','',Dados1.TbCaixa2CXF_DFIM.Text);
         Dados1.IBTbCaixa2EMP_CODIGO.AsString           := '001';
         Dados1.IBTbCAIXA2.Post;
         Dados1.TbCaixa2.Next;
         PRBAR.Position := PRBAR.Position +1;
     end;
    Dados1.IBTransaction.Commit;
    Dados1.IBTbCAIXA2.Close;
    Dados1.TbCaixa2.Close;
    ShowMessage('Transferência do arquivo CAIXA002 OK !');
    PRBAR.Position := 0;
    Screen.Cursor := crDefault;
end;
{SALDOBCO}
procedure TForm1.BtnSaldoBcoClick(Sender: tObject);
begin
    Screen.Cursor := crHourGlass;
    {Abrir os arquivos}
    Dados1.IBTbSaldoBco.Open;
    Dados1.TbSaldoBco.Open;
    {Configura o ProgressBar}
    PrBar.Max := Dados1.TbSaldoBco.RecordCount;
    PrBar.Position := 0;
    {Zera a tabela caso tenha informacao no arquivo do interbase}
    if Dados1.IBTbSaldoBco.IsEmpty = false then
       Dados1.IBTbSaldoBco.EmptyTable;
    {Aqui faz a transferencia dos dados}
    Dados1.TbSaldoBco.First;
    while not Dados1.TbSaldoBco.Eof do
     begin
        {Interbase                                         Acess}
         Dados1.IBTbSaldoBco.Insert;
         Dados1.IBTbSaldoBcoSAB_CODIGO.AsString         := Dados1.TbSaldoBcoSAB_CODIGO.AsString;
         Dados1.IBTbSaldoBcoBAN_CODIGO.AsString         := Dados1.TbSaldoBcoBAN_CODIGO.AsString;
         Dados1.IBTbSaldoBcoSAB_DIA.Text                := iif(Dados1.TbSaldoBcoSAB_DIA.Text = '37957','',Dados1.TbSaldoBcoSAB_DIA.Text);
         Dados1.IBTbSaldoBcoSAB_SALDO.AsCurrency        := Dados1.TbSaldoBcoSAB_SALDO.AsCurrency;
         Dados1.IBTbSaldoBcoSAB_BLOQUEADO.AsCurrency    := Dados1.TbSaldoBcoSAB_BLOQUEADO.AsCurrency;
         Dados1.IBTbSaldoBcoSAB_APLICADO.AsCurrency     := Dados1.TbSaldoBcoSAB_APLICADO.AsCurrency;
         Dados1.IBTbSaldoBcoSAB_TIPOAPL.AsString        := Dados1.TbSaldoBcoSAB_TIPOAPL.AsString;
         Dados1.IBTbSaldoBcoSAB_OBS.AsString            := Dados1.TbSaldoBcoSAB_OBS.AsString;
         Dados1.IBTbSaldoBcoEMP_CODIGO.AsString         := '001';
         Dados1.IBTbSaldoBco.Post;
         Dados1.TbSaldoBco.Next;
         PRBAR.Position := PRBAR.Position + 1;
     end;
    Dados1.IBTransaction.Commit;
    Dados1.IBTbSaldoBco.Close;
    Dados1.TbSaldoBco.Close;
    ShowMessage('Transferência do arquivo SALDOBCO OK !');
    PRBAR.Position := 0;
    Screen.Cursor := crDefault;
end;
{TRP0000}
procedure TForm1.BtnTrpClick(Sender: tObject);
begin
    Screen.Cursor := crHourGlass;
    {Abrir os arquivos}
    Dados1.IBTbTrp.Open;
    Dados1.TbTrp.Open;
    {Configura o ProgressBar}
    PrBar.Max := Dados1.TbTrp.RecordCount;
    PrBar.Position := 0;
    {Zera a tabela caso tenha informacao no arquivo do interbase}
    if Dados1.IBTbTrp.IsEmpty = false then
       Dados1.IBTbTrp.EmptyTable;
    {Aqui faz a transferencia dos dados}
    Dados1.TbTrp.First;
    while not Dados1.TbTrp.Eof do
     begin
        {Interbase                                         Acess}
         Dados1.IBTbTrp.Insert;
         Dados1.IBTbTrpTRP_CODIGO.AsString              := Dados1.TbTrpTRP_CODIGO.AsString;
         Dados1.IBTbTrpTRP_RAZAO.AsString               := Dados1.TbTrpTRP_RAZAO.AsString;
         Dados1.IBTbTrpTRP_ENDERE.AsString              := Dados1.TbTrpTRP_ENDERE.AsString;
         Dados1.IBTbTrpTRP_CIDADE.AsString              := Dados1.TbTrpTRP_CIDADE.AsString;
         Dados1.IBTbTrpTRP_UF.AsString                  := Dados1.TbTrpTRP_UF.AsString;
         Dados1.IBTbTrpTRP_CEP.AsString                 := Dados1.TbTrpTRP_CEP.AsString;
         Dados1.IBTbTrpTRP_CGC.AsString                 := Dados1.TbTrpTRP_CGC.AsString;
         Dados1.IBTbTrpTRP_INSC.AsString                := Dados1.TbTrpTRP_INSC.AsString;
         Dados1.IBTbTrpTRP_FONE.AsString                := ExtrairNumeros(Dados1.TbTrpTRP_FONE.AsString);
         Dados1.IBTbTrpTRP_FAX.AsString                 := ExtrairNumeros(Dados1.TbTrpTRP_FAX.AsString);
         Dados1.IBTbTrpTRP_EMAIL.AsString               := Dados1.TbTrpTRP_EMAIL.AsString;
         Dados1.IBTbTrpTRP_HOME.AsString                := Dados1.TbTrpTRP_HOME.AsString;
         Dados1.IBTbTrpTRP_CONTATO.AsString             := Dados1.TbTrpTRP_CONTATO.AsString;
         Dados1.IBTbTrpEMP_CODIGO.AsString              := iif(Dados1.TbTrpEMP_CODIGO.Text = '','001',Dados1.TbTrpEMP_CODIGO.AsString);
         Dados1.IBTbTrp.Post;
         Dados1.TbTrp.Next;
         PRBAR.Position := PRBAR.Position + 1;
     end;
    Dados1.IBTransaction.Commit;
    Dados1.IBTbTrp.Close;
    Dados1.TbTrp.Close;
    ShowMessage('Transferência do arquivo TRP0000 OK !');
    PRBAR.Position := 0;
    Screen.Cursor := crDefault;
end;
{PAG0000}
procedure TForm1.BtnPagClick(Sender: tObject);
begin
    Screen.Cursor := crHourGlass;
    {Abrir os arquivos}
    Dados1.IBTbPag.Open;
    Dados1.TbPag.Open;
    {Configura o ProgressBar}
    PrBar.Max := Dados1.TbPag.RecordCount;
    PrBar.Position := 0;
    {Zera a tabela caso tenha informacao no arquivo do interbase}
    if Dados1.IBTbPag.IsEmpty = false then
       Dados1.IBTbPag.EmptyTable;
    {Aqui faz a transferencia dos dados}
    Dados1.TbPag.First;
    while not Dados1.TbPag.Eof do
     begin
        {Interbase                                          Acess}
         Dados1.IBTbPag.Insert;
         Dados1.IBTbPagPAG_CODIGO.AsString               := Dados1.TbPagPAG_CODIGO.AsString;
         Dados1.IBTbPagOPV_CODIGO.AsInteger              := 10;
         Dados1.IBTbPagPAG_NUMDOC.AsString               := Dados1.TbPagPAG_NUMDOC.AsString;
         Dados1.IBTbPagFOR_CODIGO.AsString               := Dados1.TbPagFOR_CODIGO.AsString;
         Dados1.IBTbPagPAG_TIPO.AsString                 := Dados1.TbPagPAG_TIPO.AsString;
         Dados1.IBTbPagPAG_DTEMIS.Text                   := iif(Dados1.TbPagPAG_DTEMIS.Text = '37957','',Dados1.TbPagPAG_DTEMIS.Text);
         Dados1.IBTbPagCCT_CODIGO.AsString               := iif(Dados1.TbPagCCT_CODIGO.AsString = '','',Dados1.TbPagCCT_CODIGO.AsString);
         Dados1.IBTbPagPCX_CODIGO.AsString               := Dados1.TbPagPCX_CODIGO.AsString;
         Dados1.IBTbPagPAG_PREVISAO.AsString             := iif(Dados1.TbPagPAG_PREVISAO.AsBoolean = true,'S','N');
         Dados1.IBTbPagPAG_VLNOTA.AsCurrency             := Dados1.TbPagPAG_VLNOTA.AsCurrency;
         Dados1.IBTbPagPAG_SERIE.AsString                := Dados1.TbPagPAG_SERIE.AsString;
         Dados1.IBTbPagPAG_BASEICMS.AsCurrency           := Dados1.TbPagPAG_BASEICMS.AsCurrency;
         Dados1.IBTbPagPAG_ALIQICMS.AsCurrency           := Dados1.TbPagPAG_ALIQICMS.AsCurrency;
         Dados1.IBTbPagPAG_BASEIPI.AsCurrency            := Dados1.TbPagPAG_BASEIPI.AsCurrency;
         Dados1.IBTbPagPAG_VL_IPI.AsCurrency             := Dados1.TbPagPAG_VL_IPI.AsCurrency;
         Dados1.IBTbPagPAG_OBS.AsString                  := Dados1.TbPagPAG_OBS.AsString;
         Dados1.IBTbPagPAG_FAVORECIDO.AsString           := Dados1.TbPagPAG_FAVORECIDO.AsString;
         Dados1.IBTbPagPAG_LIVRO.AsString                := IIF(Dados1.TbPagPAG_LIVRO.AsBoolean = True,'S','N');
         Dados1.IBTbPagPAG_OPERACAO.AsString             := Dados1.TbPagPAG_OPERACAO.AsString;
         Dados1.IBTbPagPAG_COFINS_RET.AsCurrency         := 0;
         Dados1.IBTbPagPAG_VL_RET.AsCurrency             := 0;
         Dados1.IBTbPagPAG_IRPJ_RET.AsCurrency           := 0;
         Dados1.IBTbPagPAG_PIS_RET.AsCurrency            := 0;
         Dados1.IBTbPagPAG_COFINS_PERC.AsCurrency        := 0;
         Dados1.IBTbPagPAG_INSS_RET.AsCurrency           := 0;
         Dados1.IBTbPagPAG_CONTSOCIAL_RET.AsCurrency     := 0;
         Dados1.IBTbPagPAG_BASE_ISS.AsCurrency           := 0;
         Dados1.IBTbPagPAG_BASE_INSS.AsCurrency          := 0;
         Dados1.IBTbPagPAG_IRPJ_PERC.AsCurrency          := 0;
         Dados1.IBTbPagPAG_PIS_PERC.AsCurrency           := 0;
         Dados1.IBTbPagPAG_COFINS_PERC.AsCurrency        := 0;
         Dados1.IBTbPagPAG_INSS_PERC.AsCurrency          := 0;
         Dados1.IBTbPagPAG_CONTSOCIAL_PERC.AsCurrency    := 0;
         Dados1.IBTbPagEMP_CODIGO.AsString               := iif(Dados1.TbPagEMP_CODIGO.AsString = '','001',Dados1.TbPagEMP_CODIGO.AsString);
         Dados1.IBTbPag.Post;
         Dados1.TbPag.Next;
         PRBAR.Position := PRBAR.Position + 1;
     end;
    Dados1.IBTransaction.Commit;
    Dados1.IBTbPag.Close;
    Dados1.TbPag.Close;
    ShowMessage('Transferência do arquivo PAG0000 OK!');
    PRBAR.Position := 0;
    Screen.Cursor := crDefault;
end;
{PAG_PC01}
procedure TForm1.BtnPag_PcClick(Sender: tObject);
begin
    Screen.Cursor := crHourGlass;
    {Abrir os arquivos}
    Dados1.IBTbPagPc.Open;
    Dados1.TbPagPc.Open;
    {Configura o ProgressBar}
    PrBar.Max := Dados1.TbPagPc.RecordCount;
    PrBar.Position := 0;
    {Zera a variavel wReg}
    wReg := 0;
    {Zera a tabela caso tenha informacao no arquivo do interbase}
    if Dados1.IBTbPagPc.IsEmpty = false then
       Dados1.IBTbPagPc.EmptyTable;
    {Aqui faz a transferencia dos dados}
    Dados1.TbPagPc.First;
    while not Dados1.TbPagPc.Eof do
     begin
        {Interbase                                          Acess}
         Dados1.IBTbPagPc.Insert;
         Dados1.IBTbPagPcPAG_REGISTRO.AsInteger          := wReg;
         Dados1.IBTbPagPcPAG_CODIGO.AsString             := Dados1.TbPagPcPAG_CODIGO.AsString;
         Dados1.IBTbPagPcPPC_NUMER.AsString              := iif(Dados1.TbPagPcPPC_NUMER.AsString = '',' ',Dados1.TbPagPcPPC_NUMER.AsString);
         Dados1.IBTbPagPcBAN_CODIGO.AsString             := Dados1.TbPagPcBAN_CODIGO.AsString;
         Dados1.IBTbPagPcPPC_BANCO.AsString              := Dados1.TbPagPcPPC_BANCO.AsString;
         Dados1.IBTbPagPcCCT_CODIGO.AsString             := iif(Dados1.TbPagPcCCT_CODIGO.AsString = '','',Dados1.TbPagPcCCT_CODIGO.AsString);
         Dados1.IBTbPagPcPCX_CODIGO.AsString             := Dados1.TbPagPcPCX_CODIGO.AsString;
         if (Dados1.IBTbPagPcPPC_DTEMIS.Text = '') then
            begin
                try
                  Dados1.IBQUpDate.Close;
                  Dados1.IBQUpDate.SQL.Clear;
                  Dados1.IBQUpDate.SQL.Add('Select PAG_CODIGO,FOR_CODIGO,PAG_DTEMIS,PAG_NUMDOC from PAG0000 where PAG_CODIGO =:wCODIGO order by PAG_CODIGO');
                  Dados1.IBQUpDate.ParamByName('wCODIGO').AsString := Dados1.IBTbPagPcPAG_CODIGO.AsString;
                  Dados1.IBQUpDate.Open;
                  if not Dados1.IBQUpDate.IsEmpty then
                     begin
                         Dados1.IBTbPagPcPPC_DTEMIS.Text        := Dados1.IBQUpDate.FieldByName('PAG_DTEMIS').Text;
                         Dados1.IBTbPagPcPAG_NUMDOC.AsString    := Dados1.IBQUpDate.FieldByName('PAG_NUMDOC').Text;

                         Dados1.IBTbPagPcFOR_CODIGO.AsString    := iif(Dados1.TbPagPcFOR_CODIGO.AsString = '',Dados1.IBQUpDate.FieldByName('FOR_CODIGO').AsString,Dados1.TbPagPcFOR_CODIGO.AsString);
                     end;
                  Dados1.IBQUpDate.Close;
                except
                    Messagedlg('Erro ao abrir a tabela',mtWarning,[mbOK],0);
                end;
            end;
//         Dados1.IBTbPagPcPPC_NPARCELAS.AsInteger         := Dados1.TbPagPcppc_
         Dados1.IBTbPagPcPPC_SITPAG.AsString             := IIF(Dados1.TbPagPcPPC_SITPAG.Value = TRUE,'L','P');
         Dados1.IBTbPagPcPPC_STATUS.AsString             := IIF(Dados1.TbPagPcPPC_SITPAG.Value = TRUE,'Liquidada','Pendente');
         Dados1.IBTbPagPcPPC_DESCTO.AsCurrency           := 0;
         Dados1.IBTbPagPcPPC_VENCTO.Text                 := iif(Dados1.TbPagPcPPC_VENCTO.Text = '37957','',Dados1.TbPagPcPPC_VENCTO.text);
         Dados1.IBTbPagPcPPC_PAGTO.Text                  := iif(Dados1.TbPagPcPPC_PAGTO.Text = '37957','',Dados1.TbPagPcPPC_PAGTO.text);
         Dados1.IBTbPagPcPPC_VLPARC.AsCurrency           := Dados1.TbPagPcPPC_VLPARC.AsCurrency;
         Dados1.IBTbPagPcPPC_VLPAGO.AsCurrency           := Dados1.TbPagPcPPC_VLPAGO.AsCurrency;
         Dados1.IBTbPagPcPPC_OBS.AsString                := Dados1.TbPagPcPPC_OBS.AsString;
         Dados1.IBTbPagPcPPC_JUROS.AsCurrency            := 0;
         Dados1.IBTbPagPcPPC_MULTA.AsCurrency            := 0;
         Dados1.IBTbPagPcEMP_CODIGO.AsString             := iif(Dados1.TbPagPcEMP_CODIGO.AsString = '','001',Dados1.TbPagPcEMP_CODIGO.AsString);
         inc(wReg);
         Dados1.IBTbPagPc.Post;
         Dados1.TbPagPc.Next;
         PRBAR.Position := PRBAR.Position +1;
     end;
    Dados1.IBTransaction.Commit;
    Dados1.IBTbPagPc.Close;
    Dados1.TbPagPc.Close;
    ShowMessage('Transferência do arquivo PAG_PC01 OK !');
    PRBAR.Position := 0;
    Screen.Cursor := crDefault;
end;
{FAT_PC01}
procedure TForm1.BtnFatPcClick(Sender: tObject);
begin
    Screen.Cursor := crHourGlass;
    {Abrir os arquivos}
    Dados1.IBTbFatPc.Open;
    Dados1.TbFatPc.Open;
    {Configura o ProgressBar}
    PrBar.Max := Dados1.TbFatPc.RecordCount;
    PrBar.Position := 0;
    {Zera a variavel wReg}
    wReg := 0;
    {Zera a tabela caso tenha informacao no arquivo do interbase}
    if Dados1.IBTbFatPc.IsEmpty = false then
       Dados1.IBTbFatPc.EmptyTable;
    {Aqui faz a transferencia dos dados}
    Dados1.TbFatPc.First;
    while not Dados1.TbFatPc.Eof do
     begin
        {Interbase                                          Acess}
         Dados1.IBTbFatPc.Insert;
         Dados1.IBTbFatPcFAT_REGISTRO.AsInteger          := wReg;
         Dados1.IBTbFatPcFAT_CODIGO.AsString             := Dados1.TbFatPcFAT_CODIGO.AsString;
         Dados1.IBTbFatPcFPC_NUMER.AsString              := iif(Dados1.TbFatPcFPC_NUMER.AsString='',' ',Dados1.TbFatPcFPC_NUMER.AsString);
         Dados1.IBTbFatPcREP_CODIGO.AsString             := Dados1.TbFatPcREP_CODIGO.AsString;
         Dados1.IBTbFatPcBAN_CODIGO.AsString             := Dados1.TbFatPcBAN_CODIGO.AsString;
         Dados1.IBTbFatPcCCT_CODIGO.AsString             := iif(Dados1.TbFatPcCCT_CODIGO.AsString = '','',Dados1.TbFatPcCCT_CODIGO.AsString);
         Dados1.IBTbFatPcPCX_CODIGO.AsString             := Dados1.TbFatPcPCX_CODIGO.AsString;
         Dados1.IBTbFatPcFPC_DTEMIS.Text                 := iif(Dados1.TbFatPcFPC_DTEMIS.Text = '37957','',Dados1.TbFatPcFPC_DTEMIS.Text);
         Dados1.IBTbFatPcFPC_NPARCELAS.AsInteger         := Dados1.TbFatPcFPC_NPARCELAS.AsInteger;
         Dados1.IBTbFatPcFPC_COBNUM.AsString             := Dados1.TbFatPcFPC_COBNUM.AsString;
         Dados1.IBTbFatPcFPC_COBTIPO.AsString            := Dados1.TbFatPcFPC_COBTIPO.AsString;
         Dados1.IBTbFatPcFPC_TIPODOC.AsString            := '';
         Dados1.IBTbFatPcFPC_SITPAG.AsString             := IIF(Dados1.TbFatPcFPC_SITPAG.AsBoolean = TRUE,'S','N');
         Dados1.IBTbFatPcFPC_STATUS.AsString             := Dados1.TbFatPcFPC_STATUS.AsString;
         Dados1.IBTbFatPcFPC_DESCTO.AsCurrency           := Dados1.TbFatPcFPC_DESCTO.AsCurrency;
         Dados1.IBTbFatPcFPC_DTDESC.Text                 := iif(Dados1.TbFatPcFPC_DTDESC.Text = '37957','',Dados1.TbFatPcFPC_DTDESC.Text);
         Dados1.IBTbFatPcFPC_VENCTO.Text                 := iif(Dados1.TbFatPcFPC_VENCTO.Text = '37957','',Dados1.TbFatPcFPC_VENCTO.Text);
         Dados1.IBTbFatPcFPC_PAGTO.Text                  := iif(Dados1.TbFatPcFPC_PAGTO.Text = '37957','',Dados1.TbFatPcFPC_PAGTO.Text);
         Dados1.IBTbFatPcFPC_VLPARC.AsCurrency           := Dados1.TbFatPcFPC_VLPARC.AsCurrency;
         Dados1.IBTbFatPcFPC_VLPAGO.AsCurrency           := Dados1.TbFatPcFPC_VLPAGO.AsCurrency;
         Dados1.IBTbFatPcFPC_OBS.AsString                := Dados1.TbFatPcFPC_OBS.AsString;
         Dados1.IBTbFatPcCLI_CODIGO.AsString             := Dados1.TbFatPcCLI_CODIGO.AsString;
         Dados1.IBTbFatPcFPC_IMPDUP.AsString             := Dados1.TbFatPcFPC_IMPDUP.AsString;
         Dados1.IBTbFatPcFPC_JUROS.AsCurrency            := 0;
         Dados1.IBTbFatPcFPC_MULTA.AsCurrency            := 0;
         Dados1.IBTbFatPcFPC_VL_RET.AsCurrency           := 0;
         Dados1.IBTbFatPcEMP_CODIGO.AsString             := iif(Dados1.TbFatPcEMP_CODIGO.AsString = '','001',Dados1.TbFatPcEMP_CODIGO.AsString);
         inc(wReg);
         Dados1.IBTbFatPc.Post;
         Dados1.TbFatPc.Next;
         PRBAR.Position := PRBAR.Position + 1;
     end;
    Dados1.IBTransaction.Commit;
    Dados1.IBTbFatPc.Close;
    Dados1.TbFatPc.Close;
    ShowMessage('Transferência do arquivo FAT0000 OK !');
    PRBAR.Position := 0;
    Screen.Cursor := crDefault;
end;
{FAT0000}
procedure TForm1.BtnFatClick(Sender: tObject);
begin
    Screen.Cursor := crHourGlass;
    {Abrir os arquivos}
    Dados1.IBTbFat.Open;
    Dados1.TbFat.Open;
    {Configura o ProgressBar}
    PrBar.Max := Dados1.TbFat.RecordCount;
    PrBar.Position := 0;
    {Zera a tabela caso tenha informacao no arquivo do interbase}
    if Dados1.IBTbFat.IsEmpty = false then
       Dados1.IBTbFat.EmptyTable;
    {Aqui faz a transferencia dos dados}
    Dados1.TbFat.First;
    while not Dados1.TbFat.Eof do
     begin
        {Interbase                                          Acess}
         Dados1.IBTbFat.Insert;
         Dados1.IBTbFatFAT_CODIGO.AsString               := Dados1.TbFatFAT_CODIGO.AsString;
         Dados1.IBTbFatOPV_CODIGO.AsInteger              := 15;
         Dados1.IBTbFatPCL_CODIGO.AsString               := StrZero(Dados1.TbFatPCL_CODIGO.AsString,3);
         Dados1.IBTbFatCLI_CODIGO.AsString               := Dados1.TbFatCLI_CODIGO.AsString;
         Dados1.IBTbFatFAT_CANCELADA.AsString            := IIF(Dados1.TbFatFAT_CANCELADA.AsBoolean = TRUE,'S','N');
         Dados1.IBTbFatREP_CODIGO.AsString               := Dados1.TbFatREP_CODIGO.AsString;
         Dados1.IBTbFatPED_CODIGO.AsString               := Dados1.TbFatPED_CODIGO.AsString;
         Dados1.IBTbFatPCX_CODIGO.AsString               := Dados1.TbFatPCX_CODIGO.AsString;
         Dados1.IBTbFatCCT_CODIGO.AsString               := iif(Dados1.TbFatCCT_CODIGO.AsString = '','',Dados1.TbFatCCT_CODIGO.AsString);
         Dados1.IBTbFatFAT_PREVISAO.AsString             := IIF(Dados1.TbFatFAT_PREVISAO.AsBoolean = true,'S','N');
         Dados1.IBTbFatFAT_QTDITEM.AsCurrency            := Dados1.TbFatFAT_QTDITEM.AsCurrency;
         Dados1.IBTbFatFAT_VL_LIQ.AsCurrency             := Dados1.TbFatFAT_VL_LIQ.AsCurrency;
         Dados1.IBTbFatFAT_VLFAT.AsCurrency              := Dados1.TbFatFAT_VLFAT.AsCurrency;
         Dados1.IBTbFatFAT_VLNCOMIS.AsCurrency           := Dados1.TbFatFAT_VLNCOMIS.AsCurrency;
         Dados1.IBTbFatFAT_DTEMIS.Text                   := iif(Dados1.TbFatFAT_DTEMIS.Text = '37957','',Dados1.TbFatFAT_DTEMIS.Text);
         Dados1.IBTbFatFAT_COMIS1.AsCurrency             := Dados1.TbFatFAT_COMIS1.AsCurrency;
         Dados1.IBTbFatFAT_COMIS2.AsCurrency             := Dados1.TbFatFAT_COMIS2.AsCurrency;
         Dados1.IBTbFatFAT_COMIS3.AsCurrency             := Dados1.TbFatFAT_COMIS3.AsCurrency;
         Dados1.IBTbFatFAT_OBS.AsString                  := Dados1.TbFatFAT_OBS.AsString;
         Dados1.IBTbFatFAT_OPERACAO.AsString             := Dados1.TbFatFAT_OPERACAO.AsString;
         Dados1.IBTbFatFAT_BASESUB.AsCurrency            := Dados1.TbFatFAT_BASESUB.AsCurrency;
         Dados1.IBTbFatFAT_ICMSRET.AsCurrency            := Dados1.TbFatFAT_ICMSRET.AsCurrency;
         Dados1.IBTbFatFAT_DESP_ACES.AsCurrency          := Dados1.TbFatFAT_DESP_ACES.AsCurrency;
         Dados1.IBTbFatFAT_BASEICMS.AsCurrency           := Dados1.TbFatFAT_BASEICMS.AsCurrency;
         Dados1.IBTbFatFAT_VL_IPI.AsCurrency             := Dados1.TbFatFAT_VL_IPI.AsCurrency;
         Dados1.IBTbFatFAT_ALIQUOTA.AsCurrency           := Dados1.TbFatFAT_ALIQUOTA.AsCurrency;
         Dados1.IBTbFatFAT_OBSLIVRO.AsString             := Dados1.TbFatFAT_OBSLIVRO.AsString;
         Dados1.IBTbFatFAT_OPERUF.AsString               := Dados1.TbFatFAT_OPERUF.AsString;
         Dados1.IBTbFatFAT_LIVRO.AsString                := IIF(Dados1.TbFatFAT_LIVRO.AsBoolean = TRUE,'S','N');
         Dados1.IBTbFatFAT_VL_RET.AsCurrency             := 0;
         Dados1.IBTbFatFAT_IRPJ_RET.AsCurrency           := 0;
         Dados1.IBTbFatFAT_PIS_RET.AsCurrency            := 0;
         Dados1.IBTbFatFAT_COFINS_RET.AsCurrency         := 0;
         Dados1.IBTbFatFAT_INSS_RET.AsCurrency           := 0;
         Dados1.IBTbFatFAT_CONTSOCIAL_RET.AsCurrency     := 0;
         Dados1.IBTbFatFAT_BASE_ISS.AsCurrency           := 0;
         Dados1.IBTbFatFAT_BASE_INSS.AsCurrency          := 0;
         Dados1.IBTbFatFAT_IRPJ_PERC.AsCurrency          := 0;
         Dados1.IBTbFatFAT_PIS_PERC.AsCurrency           := 0;
         Dados1.IBTbFatFAT_COFINS_PERC.AsCurrency        := 0;
         Dados1.IBTbFatFAT_INSS_PERC.AsCurrency          := 0;
         Dados1.IBTbFatFAT_CONTSOCIAL_PERC.AsCurrency    := 0;
         Dados1.IBTbFatFAT_ISS_RET.AsCurrency            := 0;
         Dados1.IBTbFatFAT_ISS_PERC.AsCurrency           := 0;
         Dados1.IBTbFatEMP_CODIGO.AsString               := iif(Dados1.TbFatEMP_CODIGO.AsString = '','001',Dados1.TbFatEMP_CODIGO.AsString);
         Dados1.IBTbFat.Post;
         Dados1.TbFat.Next;
         PRBAR.Position := PRBAR.Position + 1;
     end;
    Dados1.IBTransaction.Commit;
    Dados1.IBTbFat.Close;
    Dados1.TbFat.Close;
    ShowMessage('Transferência do arquivo FAT0000 OK !');
    PRBAR.Position := 0;
    Screen.Cursor := crDefault;
end;

procedure TForm1.FormShow(Sender: tObject);
begin
    Dados1.IBConecta.Connected  := False;
end;

procedure TForm1.BtnPed0000Click(Sender: tObject);
begin
    Screen.Cursor := crHourGlass;
    {Abrir os arquivos}
    Dados1.IBTPed0000.Open;
    Dados1.TbPed0000.Open;
    {Configura o ProgressBar}
    PrBar.Max := Dados1.TbPed0000.RecordCount;
    PrBar.Position := 0;
    {Zera a variavel wReg}
    if Dados1.IBTPed0000.IsEmpty = false then
       Dados1.IBTPed0000.EmptyTable;
    {Aqui faz a transferencia dos dados}
    Dados1.TbPed0000.First;
    while not Dados1.TbPed0000.Eof do
     begin
        {Interbase                                    Acess}
         Dados1.IBTPed0000.Insert;
         Dados1.IBTPed0000PED_CODIGO.AsString         := Dados1.TbPed0000PED_CODIGO.AsString;
         Dados1.IBTPed0000CLI_CODIGO.AsString         := Dados1.TbPed0000CLI_CODIGO.AsString;
         Dados1.IBTPed0000REP_CODIGO.AsString         := Dados1.TbPed0000REP_CODIGO.AsString;
         Dados1.IBTPed0000PED_DTENTRADA.Text          := iif(Dados1.TbPed0000PED_DTENTRADA.Text = '37957','',Dados1.TbPed0000PED_DTENTRADA.Text);
         Dados1.IBTPed0000PED_COMIS1.AsCurrency       := Dados1.TbPed0000PED_COMIS1.AsCurrency;
         Dados1.IBTPed0000PED_COMIS2.AsCurrency       := Dados1.TbPed0000PED_COMIS2.AsCurrency;
         Dados1.IBTPed0000PED_COMIS3.AsCurrency       := Dados1.TbPed0000PED_COMIS3.AsCurrency;
         Dados1.IBTPed0000PCL_CODIGO.AsString         := StrZero(Dados1.TbPed0000PCL_CODIGO.AsString,3);
         Dados1.IBTPed0000PED_DESCTOVL.AsCurrency     := Dados1.TbPed0000PED_DESCTOVL.AsCurrency;
         Dados1.IBTPed0000PED_DESCTOPC1.AsCurrency    := Dados1.TbPed0000PED_DESCTOPC.AsCurrency;
         Dados1.IBTPed0000PED_DESCTOPC2.AsCurrency    := Dados1.TbPed0000PED_DESCTOPC2.AsCurrency;
         Dados1.IBTPed0000TRP_CODIGO.AsString         := Dados1.TbPed0000TRP_CODIGO.AsString;
         Dados1.IBTPed0000PED_FRETE2.AsString         := Dados1.TbPed0000PED_FRETE2.AsString;
         Dados1.IBTPed0000PED_FRETE.AsString          := Dados1.TbPed0000PED_FRETE.AsString;
         Dados1.IBTPed0000TRP_REDESP.AsString         := Dados1.TbPed0000TRP_REDESP.AsString;
         Dados1.IBTPed0000PED_OBSNOTA.AsString        := Dados1.TbPed0000PED_OBSNOTA.AsString;
         Dados1.IBTPed0000PED_VLTOTAL_LIQ.AsCurrency  := 0;
         Dados1.IBTPed0000PED_VLFATURADO.AsCurrency   := Dados1.TbPed0000PED_VLFATURADO.AsCurrency;
         Dados1.IBTPed0000PED_SITCRED.AsString        := Dados1.TbPed0000PED_SITCRED.AsString;
         Dados1.IBTPed0000PED_DTEMBARQUE.Text         := iif(Dados1.TbPed0000PED_DTEMBARQUE.Text = '37957','',Dados1.TbPed0000PED_DTEMBARQUE.Text);
         Dados1.IBTPed0000PED_DTLIM_ATD.Text          := iif(Dados1.TbPed0000PED_DTLIM_ATD.Text = '37957','',Dados1.TbPed0000PED_DTLIM_ATD.Text);
         Dados1.IBTPed0000PED_DTSAIDA.Text            := iif(Dados1.TbPed0000PED_DTSAIDA.Text = '37957','',Dados1.TbPed0000PED_DTSAIDA.Text);
         Dados1.IBTPed0000PED_OBSGERAL.AsString       := Dados1.TbPed0000PED_OBSGERAL01.AsString;
         Dados1.IBTPed0000PED_PRIORIDADE.AsString     := Dados1.TbPed0000PED_PRIORIDADE.AsString;
         Dados1.IBTPed0000PED_EXPEDICAO.AsString      := Dados1.TbPed0000PED_EXPEDICAO.AsString;
         Dados1.IBTPed0000EMP_CODIGO.AsString         := iif(Dados1.TbPed0000EMP_CODIGO.AsString = '','001',Dados1.TbPed0000EMP_CODIGO.AsString);
//         Dados1.IBTPed0000OPV_CODIGO.AsString         :=
//         Dados1.IBTPed0000OPE_CODIGO.AsString         :=
         Dados1.IBTPed0000PED_DESCTONF.AsString       := 'N';
         Dados1.IBTPed0000PED_SITUACAO.AsString       := Dados1.TbPed0000PED_SITUACAO.AsString;
         Dados1.IBTPed0000PED_VLTOTAL_BRUTO.AsCurrency:= Dados1.TbPed0000PED_VLTOTAL.AsCurrency;
         Dados1.IBTPed0000PED_TPDESCTO.AsString       := '';
         Dados1.IBTPed0000PED_VLTOTAL_IPI.AsCurrency  := 0;
         Dados1.IBTPed0000.Post;
         Dados1.TbPed0000.Next;
         PrBar.Position := PrBar.Position + 1;
     end;
    Dados1.IBTransaction.Commit;
    Dados1.IBTPed0000.Close;
    Dados1.TbPed0000.Close;
    ShowMessage('Transferência do arquivo PED0000 OK !');
    PrBar.Position := 0;
    Screen.Cursor := crDefault;
end;

procedure TForm1.BtnPedIt01Click(Sender: tObject);
begin
    Screen.Cursor := crHourGlass;
    {Abrir os arquivos}
    Dados1.IBTbPed_It01.Open;
    Dados1.TbPed_it01.Open;
    {Configura o ProgressBar}
    PrBar.Max := Dados1.TbPed_it01.RecordCount;
    PrBar.Position := 0;
    {Zera a variavel wReg}
    wReg := 0;
    {Zera a tabela caso tenha informacao no arquivo do interbase}
    if Dados1.IBTbPed_it01.IsEmpty = false then
       Dados1.IBTbPed_it01.EmptyTable;
    {Aqui faz a transferencia dos dados}
    Dados1.TbPed_it01.First;
    while not Dados1.TbPed_it01.Eof do
     begin
        {Interbase                                    Acess}
         Dados1.IBTbPed_it01.Insert;
         Dados1.IBTbPed_it01PRF_REGISTRO.AsInteger    := wReg;
         Dados1.IBTbPed_it01PED_CODIGO.AsString       := Dados1.TbPed_it01PED_CODIGO.AsString;
         Dados1.IBTbPed_it01PRD_REFER.AsString        := Dados1.TbPed_it01PRD_CODIGO.AsString;
         Dados1.IBTbPed_it01PRF_QTDE.AsCurrency       := Dados1.TbPed_it01PRF_QTDE.AsCurrency;
         Dados1.IBTbPed_it01PRF_QTDEFAT.AsCurrency    := 0;
         Dados1.IBTbPed_it01PRF_PRECO.AsCurrency      := Dados1.TbPed_it01PRF_PRECO.AsCurrency;
         Dados1.IBTbPed_it01PRF_IDESCTO1.AsCurrency   := Dados1.TbPed_it01PRF_IDESCTO1.AsCurrency;
         Dados1.IBTbPed_it01PRF_IDESCTO2.AsCurrency   := Dados1.TbPed_it01PRF_IDESCTO2.AsCurrency;
         Dados1.IBTbPed_it01PRF_SITUACAO.AsString     := Dados1.TbPed_it01PRF_SITUACAO.AsString;
         Dados1.IBTbPed_it01PRF_ITEMCOMIS.AsCurrency  := 0;
         Dados1.IBTbPed_it01PRF_IPIALIQ.AsCurrency    := Dados1.TbPed_it01PRF_IPIALIQ.AsCurrency;
         Dados1.IBTbPed_it01PRF_ICMSALIQ.AsCurrency   := 0;
         Dados1.IBTbPed_it01PRF_PRDDESCRI.AsString    := Dados1.TbPed_it01PRF_PRDDESCRI.AsString;
         Dados1.IBTbPed_it01PRF_VAR1.AsCurrency       := Dados1.TbPed_it01PRF_VAR1.AsCurrency;
         Dados1.IBTbPed_it01PRF_VAR2.AsCurrency       := Dados1.TbPed_it01PRF_VAR2.AsCurrency;
         Dados1.IBTbPed_it01PRF_VAR3.AsCurrency       := Dados1.TbPed_it01PRF_VAR3.AsCurrency;
         Dados1.IBTbPed_it01PRF_VAR4.AsCurrency       := Dados1.TbPed_it01PRF_VAR4.AsCurrency;
         Dados1.IBTbPed_it01PRF_VAR5.AsCurrency       := Dados1.TbPed_it01PRF_VAR5.AsCurrency;
         Dados1.IBTbPed_it01PRF_VAR6.AsCurrency       := Dados1.TbPed_it01PRF_VAR6.AsCurrency;
         Dados1.IBTbPed_it01PRF_VAR7.AsCurrency       := Dados1.TbPed_it01PRF_VAR7.AsCurrency;
         Dados1.IBTbPed_it01PRF_VAR8.AsCurrency       := Dados1.TbPed_it01PRF_VAR8.AsCurrency;
         Dados1.IBTbPed_it01EMP_CODIGO.AsString       := iif(Dados1.TbPed_it01EMP_CODIGO.AsString = '','001',Dados1.TbPed_it01EMP_CODIGO.AsString);
         Dados1.IBTbPed_it01PRF_PRECO_BRUTO.AsCurrency:= 0;
         inc(wReg);
         Dados1.IBTbPed_it01.Post;
         Dados1.TbPed_it01.Next;
         PrBar.Position := PrBar.Position + 1;
     end;
    Dados1.IBTransaction.Commit;
    Dados1.IBTbPed_it01.Close;
    Dados1.TbPed_it01.Close;
    ShowMessage('Transferência do arquivo PED_IT01 OK !');
    PrBar.Position := 0;
    Screen.Cursor := crDefault;
end;

procedure TForm1.BtnPrd0000Click(Sender: tObject);
begin
    Screen.Cursor := crHourGlass;
    {Abrir os arquivos}
    Dados1.IBTbPrd0000.Open;
    Dados1.TbPrd0000.Open;
    {Configura o ProgressBar}
    PrBar.Max := Dados1.TbPrd0000.RecordCount;
    PrBar.Position := 0;
    {Zera a tabela caso tenha informacao no arquivo do interbase}
    if Dados1.IBTbPrd0000.IsEmpty = false then
       Dados1.IBTbPrd0000.EmptyTable;
    {Aqui faz a transferencia dos dados}
    Dados1.TbPrd0000.First;
    while not Dados1.TbPrd0000.Eof do
     begin
        {Interbase                                    Acess}
         {0}
         Dados1.IBTbPrd0000.Insert;
         Dados1.IBTbPrd0000PRD_CODIGO.AsString        := Dados1.TbPrd0000PRD_CODIGO.AsString;
         Dados1.IBTbPrd0000PRD_REFER.AsString         := Dados1.TbPrd0000PRD_REFER.AsString;
         Dados1.IBTbPrd0000PRD_DTCADASTRO.Text        := '';
         Dados1.IBTbPrd0000PRD_DESCRI.AsString        := Dados1.TbPrd0000PRD_DESCRI.AsString;
         Dados1.IBTbPrd0000PRD_DESCRI_RES.AsString    := Dados1.TbPrd0000PRD_DESCRI_RES.AsString;
         Dados1.IBTbPrd0000PRD_UND.AsString           := Dados1.TbPrd0000PRD_UND.AsString;
         Dados1.IBTbPrd0000PRD_EMBALA.AsString        := Dados1.TbPrd0000PRD_EMBALA.AsString;
         Dados1.IBTbPrd0000PGR_CODIGO.AsString        := Dados1.TbPrd0000PGR_CODIGO.AsString;
         Dados1.IBTbPrd0000PTI_CODIGO.AsString        := Dados1.TbPrd0000PTI_CODIGO.AsString;
         Dados1.IBTbPrd0000IPI_CODIGO.AsString        := Dados1.TbPrd0000IPI_CODIGO.AsString;
         {1}
         Dados1.IBTbPrd0000PRD_ALIQICM.AsCurrency     := Dados1.TbPrd0000PRD_ALIQICM.AsCurrency;
         Dados1.IBTbPrd0000LIN_CODIGO.AsString        := Dados1.TbPrd0000LIN_CODIGO.AsString;
         Dados1.IBTbPrd0000PRD_COMPL.AsString         := Dados1.TbPrd0000PRD_COMPL.AsString;
         Dados1.IBTbPrd0000PRD_CARACT.AsString        := Dados1.TbPrd0000PRD_CARACT.AsString;
         Dados1.IBTbPrd0000PRD_MINIMO.AsCurrency      := Dados1.TbPrd0000PRD_MINIMO.AsCurrency;
         Dados1.IBTbPrd0000PRD_PCUSTO.AsCurrency      := Dados1.TbPrd0000PRD_PCUSTO.AsCurrency;
         Dados1.IBTbPrd0000PRD_PVENDA.AsCurrency      := Dados1.TbPrd0000PRD_PVENDA.AsCurrency;
         Dados1.IBTbPrd0000PRD_PMEDIO.AsCurrency      := Dados1.TbPrd0000PRD_PMEDIO.AsCurrency;
         Dados1.IBTbPrd0000PRD_PMATPRI.AsCurrency     := Dados1.TbPrd0000PRD_PMATPRI.AsCurrency;
         Dados1.IBTbPrd0000PRD_MAOOBRA.AsCurrency     := Dados1.TbPrd0000PRD_MAOOBRA.AsCurrency;
         {2}
         Dados1.IBTbPrd0000PRD_ESTOQUE.AsCurrency     := Dados1.TbPrd0000PRD_ESTOQUE.AsCurrency;
         Dados1.IBTbPrd0000PRD_SAIDA.AsCurrency       := Dados1.TbPrd0000PRD_SAIDA.AsCurrency;
         Dados1.IBTbPrd0000PRD_PENDENTE.AsCurrency    := Dados1.TbPrd0000PRD_PENDENTE.AsCurrency;
         Dados1.IBTbPrd0000FOR_CODIGO.AsString        := Dados1.TbPrd0000FOR_CODIGO.AsString;
         Dados1.IBTbPrd0000PRD_ENTRADA.AsCurrency     := Dados1.TbPrd0000PRD_ENTRADA.AsCurrency;
         Dados1.IBTbPrd0000PRD_MAXIMO.AsCurrency      := Dados1.TbPrd0000PRD_MAXIMO.AsCurrency;
         Dados1.IBTbPrd0000PRD_TEMSUB.AsString        := Dados1.TbPrd0000PRD_TEMSUB.AsString;
         Dados1.IBTbPrd0000PRD_SITRIBUT.AsString      := Dados1.TbPrd0000PRD_SITRIBUT.AsString;
         Dados1.IBTbPrd0000PRD_ICMSUBS.AsCurrency     := Dados1.TbPrd0000PRD_ICMSUBS.AsCurrency;
         Dados1.IBTbPrd0000PRD_UTILCONV.AsString      := IIF(Dados1.TbPrd0000PRD_UTILCONV.AsBoolean = TRUE,'S','N');
         {3}
         Dados1.IBTbPrd0000PRD_UNDCOMP.AsString       := Dados1.TbPrd0000PRD_UNDCOMP.AsString;
         Dados1.IBTbPrd0000PRD_PESOKG.AsCurrency      := Dados1.TbPrd0000PRD_PESOKg.AsCurrency;
         Dados1.IBTbPrd0000PRD_FATORC.AsCurrency      := Dados1.TbPrd0000PRD_FATORC.AsCurrency;
         Dados1.IBTbPrd0000PRD_DIVMULT.AsString       := Dados1.TbPrd0000PRD_DIVMULT.AsString;
         Dados1.IBTbPrd0000EMP_CODIGO.AsString        := iif(Dados1.TbPrd0000EMP_CODIGO.AsString = '','001',Dados1.TbPrd0000EMP_CODIGO.AsString);
         Dados1.IBTbPrd0000PRD_DTPCUSTO.Text          := iif(Dados1.TbPrd0000PRD_DTPCUSTO.Text = '37957','',Dados1.TbPrd0000PRD_DTPCUSTO.Text);
         Dados1.IBTbPrd0000PRD_TABPRECO.AsString      := iif(Dados1.TbPrd0000PRD_TABPRECO.AsString = '','N',Dados1.TbPrd0000PRD_TABPRECO.AsString);
         Dados1.IBTbPrd0000PRD_GARANTIA.AsString      := Dados1.TbPrd0000PRD_GARANTIA.AsString;
         Dados1.IBTbPrd0000PRD_FAMILIA.AsString       := Dados1.TbPrd0000PRD_FAMILIA.AsString;
         Dados1.IBTbPrd0000PRD_CODBARRA.AsString      := Dados1.TbPrd0000PRD_CODBARRA.AsString;
         {4}
         Dados1.IBTbPrd0000PRD_VAR1.AsCurrency        := Dados1.TbPrd0000PRD_VAR1.AsCurrency;
         Dados1.IBTbPrd0000PRD_VAR2.AsCurrency        := Dados1.TbPrd0000PRD_VAR2.AsCurrency;
         Dados1.IBTbPrd0000PRD_VAR3.AsCurrency        := Dados1.TbPrd0000PRD_VAR3.AsCurrency;
         Dados1.IBTbPrd0000PRD_VAR4.AsCurrency        := Dados1.TbPrd0000PRD_VAR4.AsCurrency;
         Dados1.IBTbPrd0000PRD_VAR5.AsCurrency        := Dados1.TbPrd0000PRD_VAR5.AsCurrency;
         Dados1.IBTbPrd0000PRD_VAR6.AsCurrency        := Dados1.TbPrd0000PRD_VAR6.AsCurrency;
         Dados1.IBTbPrd0000PRD_VAR7.AsCurrency        := Dados1.TbPrd0000PRD_VAR7.AsCurrency;
         Dados1.IBTbPrd0000PRD_VAR8.AsCurrency        := Dados1.TbPrd0000PRD_VAR8.AsCurrency;
         Dados1.IBTbPrd0000PRD_DCVAR1.AsString        := Dados1.TbPrd0000PRD_DCVAR1.AsString;
         Dados1.IBTbPrd0000PRD_DCVAR2.AsString        := Dados1.TbPrd0000PRD_DCVAR2.AsString;
         {5}
         Dados1.IBTbPrd0000PRD_DCVAR3.AsString        := Dados1.TbPrd0000PRD_DCVAR3.AsString;
         Dados1.IBTbPrd0000PRD_DCVAR4.AsString        := Dados1.TbPrd0000PRD_DCVAR4.AsString;
         Dados1.IBTbPrd0000PRD_DCVAR5.AsString        := Dados1.TbPrd0000PRD_DCVAR5.AsString;
         Dados1.IBTbPrd0000PRD_DCVAR6.AsString        := Dados1.TbPrd0000PRD_DCVAR6.AsString;
         Dados1.IBTbPrd0000PRD_DCVAR7.AsString        := Dados1.TbPrd0000PRD_DCVAR7.AsString;
         Dados1.IBTbPrd0000PRD_DCVAR8.AsString        := Dados1.TbPrd0000PRD_DCVAR8.AsString;
         Dados1.IBTbPrd0000PRD_CURVA.AsString         := '';
         Dados1.IBTbPrd0000PRD_CODORIGINAL.AsString   := Dados1.TbPrd0000PRD_CODORIGINAL.AsString;
         Dados1.IBTbPrd0000PRD_CODMERCOSUL.AsString   := '';
         Dados1.IBTbPrd0000PRD_DTPVENDA.Text          := '';
         {6}
         Dados1.IBTbPrd0000AMX_CODIGO.AsString        := '';
         Dados1.IBTbPrd0000PRD_PESOLIQ.AsCurrency     := 0;
         Dados1.IBTbPrd0000.Post;
         Dados1.TbPrd0000.Next;
         PrBar.Position := PrBar.Position + 1;
     end;
    Dados1.IBTransaction.Commit;
    Dados1.IBTbPrd0000.Close;
    Dados1.TbPrd0000.Close;
    ShowMessage('Transferência do arquivo PRD0000 OK !');
    PrBar.Position := 0;
    Screen.Cursor := crDefault;
end;

procedure TForm1.BtnFatIt02Click(Sender: tObject);
begin
    Screen.Cursor := crHourGlass;
    {Abrir os arquivos}
    Dados1.IBTbFatIt02.Open;
    Dados1.TbFatIt02.Open;
    {Configura o ProgressBar}
    PrBar.Max := Dados1.TbFatIt02.RecordCount;
    PrBar.Position := 0;
    {Zera a tabela caso tenha informacao no arquivo do interbase}
    if Dados1.IBTbFatIt02.IsEmpty = false then
       Dados1.IBTbFatIt02.EmptyTable;
    {Aqui faz a transferencia dos dados}
    Dados1.TbFatIt02.First;
    while not Dados1.TbFatIt02.Eof do
     begin
        {Interbase                                    Acess}
         Dados1.IBTbFatIt02.Insert;
         Dados1.IBTbFatIt02REG.AsInteger           := Dados1.TbFatIt02Reg.AsInteger;
         Dados1.IBTbFatIt02FAT_CODIGO.AsString     := Dados1.TbFatIt02FAT_CODIGO.AsString;
         Dados1.IBTbFatIt02PRD_CODIGO.AsString     := Dados1.TbFatIt02PRD_CODIGO.AsString;
         Dados1.IBTbFatIt02PRD_REFER.AsString      := Dados1.TbFatIt02PRD_REFER.AsString;
         Dados1.IBTbFatIt02FIT_QTDE.AsCurrency     := Dados1.TbFatIt02FIT_QTDE.AsCurrency;
         Dados1.IBTbFatIt02FIT_IPIALIQ.AsCurrency  := Dados1.TbFatIt02FIT_IPIALIQ.AsCurrency;
         Dados1.IBTbFatIt02FIT_PRECO.AsCurrency    := Dados1.TbFatIt02FIT_PRECO.AsCurrency;
         Dados1.IBTbFatIt02FIT_COMIS.AsCurrency    := Dados1.TbFatIt02FIT_COMIS.AsCurrency;
         Dados1.IBTbFatIt02FIT_DESCTO.AsCurrency   := Dados1.TbFatIt02FIT_DESCTO.AsCurrency;
         Dados1.IBTbFatIt02FIT_SUBSTIT.AsCurrency  := Dados1.TbFatIt02FIT_SUBSTIT.AsCurrency;
         Dados1.IBTbFatIt02EMP_CODIGO.AsString     := iif(Dados1.TbFatIt02EMP_CODIGO.AsString = '','001',Dados1.TbFatIt02EMP_CODIGO.AsString);
         Dados1.IBTbFatIt02.Post;
         Dados1.TbFatIt02.Next;
         PrBar.Position := PrBar.Position + 1;
     end;
    Dados1.IBTransaction.Commit;
    Dados1.IBTbFatIt02.Close;
    Dados1.TbFatIt02.Close;
    ShowMessage('Transferência do arquivo FAT_IT02 OK !');
    PrBar.Position := 0;
    Screen.Cursor := crDefault;
end;
{NF0001}
procedure TForm1.BtnNf0001Click(Sender: tObject);
begin
    Screen.Cursor := crHourGlass;
    {Abrir os arquivos}
    Dados1.IBTbNF0001.Open;
    Dados1.TbFat.Open;
    {Configura o ProgressBar}
    PrBar.Max := Dados1.TbFat.RecordCount;
    PrBar.Position := 0;
    {Zera a variavel wReg}
    wReg    := 0;
    {Zera a tabela caso tenha informacao no arquivo do interbase}
    if Dados1.IBTbNF0001.IsEmpty = false then
       Dados1.IBTbNF0001.EmptyTable;
    {Aqui faz a transferencia dos dados}
    Dados1.TbFat.First;
    while not Dados1.TbFat.Eof do
     begin
         {Interbase                                   Acess}
         Dados1.IBTbNF0001.Insert;
         Dados1.IBTbNF0001NF_REGISTRO.AsInteger       := wReg;
         Dados1.IBTbNF0001NF_NOTANUMBER.AsString      := Dados1.TbFatFAT_CODIGO.AsString;
         Dados1.IBTbNF0001NF_EMISSAO.Text             := iif(Dados1.TbFatFAT_DTEMIS.Text = '37957','',Dados1.TbFatFAT_DTEMIS.Text);
         Dados1.IBTbNF0001NF_SAIDA.Text               := iif(Dados1.TbFatFAT_DTEMIS.Text = '37957','',Dados1.TbFatFAT_DTEMIS.Text);
         Dados1.IBTbNF0001NF_HORASAIDA.AsString       := '';
         Dados1.IBTbNF0001PCL_CODIGO.AsString         := StrZero(Dados1.TbFatPCL_CODIGO.AsString,3);
         Dados1.IBTbNF0001NF_CONDPAGTO.AsString       := '';
         Dados1.IBTbNF0001OPE_CODIGO.AsString         := '';
         Dados1.IBTbNF0001OPE_NATUREZA.AsString       := Dados1.TbFatFAT_OPERACAO.AsString;
         Dados1.IBTbNF0001OPE_AGRUPADO.AsString       := '';
         Dados1.IBTbNF0001PED_CODIGO.AsString         := Dados1.TbFatPED_CODIGO.AsString;
         Dados1.IBTbNF0001REP_CODIGO.AsString         := Dados1.TbFatREP_CODIGO.AsString;
         Dados1.IBTbNF0001NF_ENTR_SAID.AsString       := 'S';
         Dados1.IBTbNF0001NF_IMPRESS.AsString         := 'S';
         Dados1.IBTbNF0001CLI_CODIGO.AsString         := Dados1.TbFatCLI_CODIGO.AsString;
         Dados1.IBTbNF0001NF_VLFRETE.AsCurrency       := 0;
         Dados1.IBTbNF0001NF_VLSEGURO.AsCurrency      := 0;
         Dados1.IBTbNF0001NF_DESP_ACES.AsCurrency     := Dados1.TbFatFAT_DESP_ACES.AsCurrency;
         Dados1.IBTbNF0001NF_ALIQ_ICMS.AsCurrency     := Dados1.TbFatFAT_ALIQUOTA.AsCurrency;
         Dados1.IBTbNF0001NF_BASEICMS.AsCurrency      := Dados1.TbFatFAT_BASEICMS.AsCurrency;
         Dados1.IBTbNF0001NF_VL_ICMS.AsCurrency       := 0;
         Dados1.IBTbNF0001NF_VLBASESUBTRIB.AsCurrency := Dados1.TbFatFAT_BASESUB.AsCurrency;
         Dados1.IBTbNF0001NF_VL_SUBTRIB.AsCurrency    := 0;
         Dados1.IBTbNF0001NF_TOT_CSUB.AsCurrency      := 0;
         Dados1.IBTbNF0001NF_TOT_PROD.AsCurrency      := Dados1.TbFatFAT_VL_LIQ.AsCurrency;
         Dados1.IBTbNF0001NF_TOT_NOTA.AsCurrency      := Dados1.TbFatFAT_VLFAT.AsCurrency;
         Dados1.IBTbNF0001NF_VL_IPI.AsCurrency        := Dados1.TbFatFAT_VL_IPI.AsCurrency;
         Dados1.IBTbNF0001NF_BASE_IPI.AsCurrency      := 0;
         Dados1.IBTbNF0001NF_VL_DESCTO.AsCurrency     := 0;
         Dados1.IBTbNF0001NF_PLACAVE.AsString         := '';
         Dados1.IBTbNF0001NF_QTDE.AsCurrency          := Dados1.TbFatFAT_QTDITEM.AsCurrency;
         Dados1.IBTbNF0001NF_PESOBRU.AsCurrency       := 0;
         Dados1.IBTbNF0001NF_PESOLIQ.AsCurrency       := 0;
         Dados1.IBTbNF0001NF_ESPECIE.AsString         := '';
         Dados1.IBTbNF0001NF_MARCA.AsString           := '';
         Dados1.IBTbNF0001NF_NUMERO.AsString          := '';
         Dados1.IBTbNF0001NF_OBS_NOTA.AsString        := '';
         Dados1.IBTbNF0001NF_INTERNO.AsString         := iif(Dados1.TbFatFAT_LIVRO.AsBoolean = TRUE,'N','S');
         Dados1.IBTbNF0001NF_CANCELADA.AsString       := iif(Dados1.TbFatFAT_CANCELADA.AsBoolean = TRUE,'S','N');
         Dados1.IBTbNF0001NF_AGRUPADO.AsString        := '';
         Dados1.IBTbNF0001EMP_CODIGO.AsString         := iif(Dados1.TbFatEMP_CODIGO.AsString = '','001',Dados1.TbFatEMP_CODIGO.AsString);
         inc(wReg);
         Dados1.IBTbNF0001.Post;
         Dados1.TbFat.Next;
         PrBar.Position := PrBar.Position + 1;
     end;
    Dados1.IBTransaction.Commit;
    Dados1.IBTbNF0001.Close;
    Dados1.TbFat.Close;
    ShowMessage('Transferência do arquivo NF0001 OK !');
    PrBar.Position := 0;
    Screen.Cursor := crDefault;
end;
{CCT_0000}
procedure TForm1.BtnCCTClick(Sender: tObject);
begin
    Screen.Cursor := crHourGlass;
    {Abrir os arquivos}
    Dados1.IBQCCT.Close;
    Dados1.IBQCCT.SQL.Clear;
    Dados1.IBQCCT.SQL.Add('Select * from CCT_0000 where CCT_ANTIGO <> '''' order by CCT_ANTIGO');
    Dados1.IBQCCT.Open;
    if Dados1.IBQCCT.IsEmpty = true then
       begin
           MessageDlg('arquivo vazio',mtWarning,[mbOK],0);
       end;
    Dados1.TBCCT.Open;
    {Configura o ProgressBar}
    PrBar.Max := Dados1.IBQCCT.RecordCount;
    PrBar.Position := 0;
    {Aqui faz a transferencia dos dados}
    Dados1.IBQCCT.First;
    while not Dados1.IBQCCT.Eof do
     begin
         IF Dados1.TBCCT.Locate('CCT_CODIGO',Dados1.IBQCCTCCT_ANTIGO.AsString,[]) = TRUE THEN
            BEGIN
                Dados1.IBQUpDate.Close;
                Dados1.IBQUpDate.SQL.Clear;
                Dados1.IBQUpDate.SQL.Add('Update CCT_0000 SET CCT_DESCRI = '''+Dados1.TbCCTCCT_DESCRI.AsString+'''where CCT_ANTIGO = '''+Dados1.IBQCCTCCT_ANTIGO.AsString+'''');
                Dados1.IBQUpDate.ExecSQL;
            END;
         Dados1.IBQCCT.Next;
         PrBar.Position := PrBar.Position + 1;
     end;
    Dados1.IBTransaction.Commit;
    Dados1.IBQCCT.Close;
    Dados1.TBCCT.Close;
    ShowMessage('Transferência do arquivo CCT_0000 OK !');
    PrBar.Position := 0;
    Screen.Cursor := crDefault;
end;
{NF_IT01}
procedure TForm1.BtnNFit01Click(Sender: tObject);
begin
    Screen.Cursor := crHourGlass;
    {Abrir os arquivos}
    Dados1.IBTbNF_IT01.Open;
    Dados1.TbFatIt02.Open;
    {Configura o ProgressBar}
    PrBar.Max := Dados1.TbFatIt02.RecordCount;
    PrBar.Position := 0;
    {Zera a variavel wReg}
    wReg    := 0;
    {Zera a tabela caso tenha informacao no arquivo do interbase}
    if Dados1.IBTbNF_IT01.IsEmpty = false then
       Dados1.IBTbNF_IT01.EmptyTable;
    {Aqui faz a transferencia dos dados}
    Dados1.TbFatIt02.First;
    while not Dados1.TbFatIt02.Eof do
     begin
         {Interbase                                   Acess}
         Dados1.IBTbNF_IT01.Insert;
         Dados1.IBTbNF_IT01NF_REGISTRO.AsInteger      := wReg;
         Dados1.IBTbNF_IT01NF_IT_NOTANUMER.AsString   := Dados1.TbFatIt02FAT_CODIGO.AsString;
         Dados1.IBTbNF_IT01PRD_REFER.AsString         := Dados1.TbFatIt02PRD_REFER.AsString;
         Dados1.IBTbNF_IT01PED_CODIGO.AsString        := ''; //Nao tem na tabela do acess
         Dados1.IBTbNF_IT01NF_QTDE.AsCurrency         := Dados1.TbFatIt02FIT_QTDE.AsCurrency;
         Dados1.IBTbNF_IT01NF_PRECO.AsCurrency        := Dados1.TbFatIt02FIT_PRECO.AsCurrency;
         Dados1.IBTbNF_IT01NF_IPIALIQ.AsCurrency      := Dados1.TbFatIt02FIT_IPIALIQ.AsCurrency;
         Dados1.IBTbNF_IT01IPI_CODIGO.AsString        := ''; //Nao tem na tabela do acess
         Dados1.IBTbNF_IT01NF_VLSUBST.AsCurrency      := Dados1.TbFatIt02FIT_SUBSTIT.AsCurrency;
         Dados1.IBTbNF_IT01NF_IDESCTO1.AsCurrency     := Dados1.TbFatIt02FIT_DESCTO.AsCurrency;
         Dados1.IBTbNF_IT01NF_IDESCTO2.AsCurrency     := 0;
         try
           Dados1.IBQUpDate.Close;
           Dados1.IBQUpDate.SQL.Clear;
           Dados1.IBQUpDate.SQL.Add('Select PRD_REFER,PRD_DESCRI from Prd0000 where PRD_REFER =:wREFER order by PRD_REFER');
           Dados1.IBQUpDate.ParamByName('wREFER').AsString := Dados1.IBTbNF_IT01PRD_REFER.AsString;
           Dados1.IBQUpDate.Open;
           if not Dados1.IBQUpDate.IsEmpty then
              begin
                  Dados1.IBTbNF_IT01PRD_DESCRI.AsString    := Dados1.IBQUpDate.FieldByName('PRD_DESCRI').AsString;
              end;
           Dados1.IBQUpDate.Close;
         except
             Messagedlg('Erro ao abrir a tabela',mtWarning,[mbOK],0);
         end;
         Dados1.IBTbNF_IT01NF_IDESCTO1.AsCurrency     := Dados1.TbFatIt02FIT_DESCTO.AsCurrency;
         Dados1.IBTbNF_IT01EMP_CODIGO.AsString        := iif(Dados1.TbFatIt02EMP_CODIGO.AsString = '','001',Dados1.TbFatIt02EMP_CODIGO.AsString);
         inc(wReg);
         Dados1.IBTbNF_IT01.Post;
         Dados1.TbFatIt02.Next;
         PrBar.Position := PrBar.Position + 1;
     end;
    Dados1.IBTransaction.Commit;
    Dados1.IBTbNF_IT01.Close;
    Dados1.TbFatIt02.Close;
    ShowMessage('Transferência do arquivo NF_IT01 OK !');
    PrBar.Position := 0;
    Screen.Cursor := crDefault;
end;

end.
