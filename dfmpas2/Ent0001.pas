{***********************************************************************
| Programa.....: Ent0001   - Nome formulario = FormEntrada
| Objetivo.....: Menu de Entrada do Sistema
| Analista.....: Marcio Neu Pacheco
| Programador..: Márcio
| Comentários..:
|
| Criação..........: Ago/98
| Ultima Alteração.: Fev/01
| Alterado por.....: Márcio
|
************************************************************************}
unit Ent0001;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Buttons, StdCtrls,ComCtrls, Menus,DBCtrls;

type
  TFormEntrada = class(TForm)
    StatusBar: TStatusBar;
    SButAdm: TSpeedButton;
    SbutSie: TSpeedButton;
    SbutProd: TSpeedButton;
    SbutConfig: TSpeedButton;
    SbutSair: TSpeedButton;
    PnTitulo: TPanel;
    ImgFundo: TImage;
    ImgLogo: TImage;
    Label5: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    procedure MudaComEnter(var Msg: TMsg; var Handled: Boolean);
    procedure BitAbandonarClick(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure FormActivate(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure MostraStatus(Sender: tObject);
    procedure SButAdmClick(Sender: tObject);
    procedure SbutSieClick(Sender: tObject);
    procedure SbutProdClick(Sender: tObject);
    procedure SbutConfigClick(Sender: tObject);
    procedure SbutSairClick(Sender: tObject);
    procedure AlternaEmpresa;
    procedure SpeedButton1Click(Sender: tObject);
    procedure SpeedButton2Click(Sender: tObject);
   private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormEntrada: TFormEntrada;

implementation

uses Men0001, database, ADJ0001, Men0003, Men0005, GImpAdmi,
  Login;






{$R *.DFM}


procedure TFormEntrada.MudaComEnter(var Msg: TMsg; var Handled: Boolean);
begin
   if not ((Screen.ActiveControl is TCustomMemo) or
           (Screen.ActiveControl is TBitBtn) or
           (Screen.ActiveControl is TGroupBox)  {or
            (Screen.ActiveControl is TDBLookupComboBox) }
           {(Screen.ActiveForm.ClassName = 'TMessageForm')}) then
      begin
         if Msg.message = WM_KEYDOWN then
            begin
               case Msg.wParam of
                 VK_RETURN :Screen.ActiveForm.Perform(WM_NextDlgCtl,0,0);
                 //VK_RETURN,VK_DOWN :Screen.ActiveForm.Perform(WM_NextDlgCtl,0,0);
                 //VK_UP             :Screen.ActiveForm.Perform(WM_NextDlgCtl,1,0);
               end;
           end;
       end;

// if Msg.message = WM_KEYDOWN then
//    begin
//    if Msg.wParam = VK_RETURN then
//       Keybd_event(VK_TAB,0,0,0);
//    end;

end;

procedure TFormEntrada.BitAbandonarClick(Sender: tObject);
begin
   Close;
end;

procedure TformEntrada.MostraStatus(Sender: tObject);
begin
  // atribui todas a hint do objetos p/barra de estatus
  StatusBar.Panels[1].Text:=Application.hint;
  StatusBar.Panels[2].Text:= DateTimeToStr(date);
 end;


procedure TFormEntrada.FormShow(Sender: tObject);
begin
  //
  Application.OnMessage  := MudaComEnter;
  Left:= 0;
  Top := 0;
  Width :=  801;
  Height := 572;// define onde o formulario fica no video.
  //
  //chama rotina p/mostra as hits dos objetos}
  Application.onHint:= MostraStatus;
  //
  Try
    Datamodulo.TbEmpresa.Close;
    // FormAdjutor Abriu
  except
    uteis.erro  ('Impossível Fechar Tabela de Empresa!');
  end;

FormAdjutor.Hide;
end;


procedure TFormEntrada.FormActivate(Sender: tObject);
begin
  PnTitulo.Caption := FormAdjutor.WEmp_Fantasia;
  Imgfundo.Picture.LoadFromFile(FormLogin.Path+'\fundoRW.Bmp');
  ImgLogo.Picture.LoadFromFile(FormLogin.Path+'\logrenew.Bmp');
end;


procedure TFormEntrada.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
    Datamodulo.DTBAdjutor.Connected := False;
    FormAdjutor.Close;
end;

procedure TFormEntrada.SButAdmClick(Sender: tObject);
begin
  FrmMenu.ShowModal;
end;

procedure TFormEntrada.SbutSieClick(Sender: tObject);
begin
 try
    try
      FormGImpRelAdm := TFormGImpRelAdm.Create(Application);
      FormGImpRelAdm.ShowModal;
    finally
      FormGImpRelAdm.Destroy;
      FormGImpRelAdm := nil //  nil é - From Assigned = False
    end;
  except
      //beep;
      uteis.erro  ('Ocorreu um erro na criação do formulário!');
  end;
end;

procedure TFormEntrada.SbutProdClick(Sender: tObject);
begin
  // precisa estar carregado desde o inico - senhas
  FormMenuProducao.ShowModal;
end;

procedure TFormEntrada.SbutConfigClick(Sender: tObject);
begin

 FormMenuConfig.ShowModal;
end;

procedure TFormEntrada.SbutSairClick(Sender: tObject);
begin
  close;
end;

procedure TFormEntrada.AlternaEmpresa;
var wArquivo:TextFile;
begin
{cria arquivo c/ LOG e SENHA}
AssignFile(wArquivo, 'Log.Tmp');
Rewrite(wArquivo);
Append(wArquivo);
Writeln(wArquivo,DataModulo.TbUsersNOME.Value);
Writeln(wArquivo,DataModulo.TbUsersSENHA.Value);
CloseFile(wArquivo);
{reinicializa o Adjutor}
WinExec(pansichar(ExtractFileName(Application.ExeName)),sw_show);
Application.Terminate;
end;

procedure TFormEntrada.SpeedButton1Click(Sender: tObject);
begin
AlternaEmpresa;
end;

procedure TFormEntrada.SpeedButton2Click(Sender: tObject);
begin
{reinicializa o Adjutor}
WinExec(pansichar(ExtractFileName(Application.ExeName)),sw_show);
Application.Terminate;
end;

end.
