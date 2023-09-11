{***********************************************************
| Programa...: TIR0001  - Nome formulario = formIRRF       |
| Objetivo...: Inserir Tabela progressiva do IRFF          |
| Analista...: Marcio Neu Pacheco                          |
| Programador: Jackson Neu Pacheco                         |
|                                                          |
| Comentários:                                             |
|                                                          |
| Criação..........:  Nov/1998.                            |
| Ultima Alteração.:  Jun/1999.                            |
| Feito por........:  Jackson                              |
|                                                          |
***********************************************************}
unit TIR0001;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Mask, DBCtrls, StdCtrls, ExtCtrls, Buttons, DB, DBTables;


type
  TFormIRRF = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    DbeIR_teto1: TDBEdit;
    DbeIR_teto2: TDBEdit;
    Label6: TLabel;
    DbeIR_teto3: TDBEdit;
    Label7: TLabel;
    Label9: TLabel;
    Panel6: TPanel;
    Label11: TLabel;
    Label12: TLabel;
    Panel7: TPanel;
    Label13: TLabel;
    Label14: TLabel;
    DbeIR_aliq1: TDBEdit;
    DbeIR_aliq2: TDBEdit;
    DbeIR_aliq3: TDBEdit;
    DbeIR_dedu1: TDBEdit;
    DbeIR_dedu2: TDBEdit;
    DbeIR_dedu3: TDBEdit;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    DbeIR_JURIDI: TDBEdit;
    Label18: TLabel;
    DbeIR_DEPEND: TDBEdit;
    Panel8: TPanel;
    Panel9: TPanel;
    Bit_novo: TBitBtn;
    Bit_Excluir: TBitBtn;
    Bit_Gravar: TBitBtn;
    Bit_Cancelar: TBitBtn;
    Bit_Sair: TBitBtn;
    DBNavigator1: TDBNavigator;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    EdtIR_mes: TMaskEdit;
    Panel10: TPanel;
    Bit_Relatorio: TBitBtn;
    procedure Bit_SairClick(Sender: tObject);
    procedure Bit_novoClick(Sender: tObject);
    procedure Bit_GravarClick(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure Bit_ExcluirClick(Sender: tObject);
    procedure VerificaEdicao;
    procedure DesabilitaBotoes;
    procedure HabilitaBotoes;
    procedure Bit_CancelarClick(Sender: tObject);
    procedure FormCloseQuery(Sender: tObject; var CanClose: Boolean);
    procedure DBNavigator1Click(Sender: tObject; Button: TNavigateBtn);
    procedure TbIRRFBeforeEdit(DataSet: TDataSet);
    procedure EdtIR_mesExit(Sender: tObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormIRRF: TFormIRRF;

implementation

uses Database;

{$R *.DFM}



function TestaCGC (CampoCGC :TmaskEdit; CGC:String):boolean; far; external 'mensagen.dll';




procedure TFormIRRF.verificaEdicao;
begin
// verifica estado da tabela em edicao e inclusao
screen.cursor :=crHourglass;
if Datamodulo.TbIRRF.State in [dsEdit,dsInsert] then
   begin
   if uteis.confirmacao ( 'Deseja salvar alterações ?') = idyes then
      begin
        Datamodulo.TbIRRFIR_Mes.Value := EdtIR_Mes.Text;
        Datamodulo.TbIRRF.Post;
        Datamodulo.TbIRRF.Refresh;
        Habilitabotoes;
      end
   else
      begin
        Datamodulo.TbIRRF.Cancel;
        Habilitabotoes;
      end;
   end;
screen.cursor := crDefault;
end;


procedure TFormIRRF.HabilitaBotoes;
begin
  Bit_novo.Enabled      := True;
  Bit_Excluir.Enabled   := True;
  Bit_Sair.visible      := True;
  Bit_Relatorio.Enabled := true;
  Bit_Gravar.Enabled    := False;
  Bit_Cancelar.Visible  := False;
  DbNavigator1.Enabled  := True;
end;


procedure TFormIRRF.DesabilitaBotoes;
begin
  Bit_novo.Enabled      := False;
  Bit_Excluir.Enabled   := False;
  Bit_Sair.Visible      := False;
  Bit_Relatorio.Enabled := False;
  Bit_Gravar.Enabled    := True;
  Bit_Cancelar.Visible  := True;
  DbNavigator1.Enabled  := False;
end;



procedure TFormIRRF.FormShow(Sender: tObject);
begin
  Left := 73;
  Top := 28;
  //
Screen.Cursor := crHourglass;
   Try
     Datamodulo.TbIRRF.open;
     Datamodulo.TbIRRF.IndexName := 'XIR_MES';
    except
      uteis.erro  ('Impossível Acessar Tabela de IRRF !!!');
   end;
Habilitabotoes;
if Datamodulo.TbIRRF.IsEmpty Then  //Evita alteração antes que se
   begin                                     //inclua IRistros na tabela.
   Datamodulo.DsIRRF.AutoEdit := False;
   EdtIR_Mes.Enabled := False;
   end;
EdtIR_Mes.text := Datamodulo.TbIRRFIR_Mes.Value;
Screen.Cursor := crdefault;
end;



procedure TFormIRRF.Bit_novoClick(Sender: tObject);
begin
Screen.Cursor := crHourglass;
// vai p/ o ultimo IRistro
Datamodulo.TbIRRF.Last;
Datamodulo.DsIRRF.AutoEdit := True;
//inclui um IRistro
Datamodulo.TbIRRF.Insert;
DesabilitaBotoes;
EdtIR_Mes.Enabled := True; // Esta Falso Quando a Tabela esta vasia
EdtIR_mes.SetFocus;
screen.cursor := crdefault;
EdtIR_Mes.Text := Datamodulo.TbIRRFIR_Mes.Value;
end;


procedure TFormIRRF.Bit_ExcluirClick(Sender: tObject);
begin
if Datamodulo.TbIRRF.RecordCount = 0 Then   //evita exclussão de IRistro
     Begin                                      // em uma Tabela Vazia.
       messagebeep($ffff);
       uteis.aviso('Não existe tabela cadastrada !!!');
       exit;
     end;
if uteis.confirmacao ( 'Deseja Excluir esta Tabela ?')= Mryes then
   begin
   Screen.cursor :=crHourglass;
   Datamodulo.TbIRRF.Delete;
   screen.cursor := crDefault;
   end;
EdtIR_Mes.Text := Datamodulo.TbIRRFIR_Mes.Value;
if Datamodulo.TbIRRF.IsEmpty Then   //Ao excluir ultimo record da
     BEGIN                                      //tabela deixa autoedit=true;
       Datamodulo.DsIRRF.AutoEdit := False;
       EdtIR_Mes.Enabled := False;
     end;
end;


procedure TFormIRRF.Bit_GravarClick(Sender: tObject);
begin
  if EdtIR_mes.Text = '' then
     begin
     uteis.aviso('Digite o Mês e o Ano!:99/9999.');
     EdtIR_mes.SetFocus;
     exit;
     end;
  //salva o IRistro
  Datamodulo.TbIRRFIR_Mes.Value := EdtIR_Mes.text;
  Datamodulo.TbIRRF.post;
  Datamodulo.TbIRRF.refresh;
  Habilitabotoes;
  EdtIR_mes.Enabled := True;
end;


procedure TFormIRRF.Bit_CancelarClick(Sender: tObject);
begin
Datamodulo.TbIRRF.Cancel;
Datamodulo.TbIRRF.Refresh;
if Datamodulo.TbIRRF.IsEmpty Then   //Ao cancelar ultimo record da
     BEGIN                                      //tabela deixa autoedit=true;
       Datamodulo.DsIRRF.AutoEdit := False;
       EdtIR_Mes.Enabled := False;
     end;
HabilitaBotoes;
EdtIR_mes.Enabled := True;
EdtIR_Mes.Text := Datamodulo.TbIRRFIR_Mes.value;
end;


procedure TFormIRRF.Bit_SairClick(Sender: tObject);
begin
close;
end;


procedure TFormIRRF.DBNavigator1Click(Sender: tObject;
  Button: TNavigateBtn);
begin
  EdtIR_Mes.Text := Datamodulo.TbIRRFIR_Mes.Value;
end;


procedure TFormIRRF.FormCloseQuery(Sender: tObject;
  var CanClose: Boolean);
begin
  VerificaEdicao;
  Try
     Datamodulo.TbIRRF.Close;
  except
     messagebeep(20);
     uteis.erro  ('Impossível fechar a tabela "IRRF".');
  end;
end;



procedure TFormIRRF.TbIRRFBeforeEdit(DataSet: TDataSet);
begin
  DesabilitaBotoes;
end;

procedure TFormIRRF.EdtIR_mesExit(Sender: tObject);
begin
  if Datamodulo.TbIRRF.State in [dsInsert] Then
    if Datamodulo.TbIRRF.FindKey([EdtIR_Mes.Text])= True then
       Begin
       uteis.erro  ('A tabela de IR deste mês já está cadastrada.');
       Habilitabotoes;
       Exit;
       end
    else
       Begin
       //voltar modo Insert que Findkey cancelou
       Datamodulo.TbIRRF.Insert;
       end
  else
    // é modo Browse ou Edit
    if Datamodulo.TbIRRF.FindKey([EdtIR_Mes.Text])= False then
      begin
      messageBeep($ffff);
      uteis.aviso('Tabela IR deste mês não cadastrada.');
      EdtIR_Mes.Text := Datamodulo.TbIRRFIR_Mes.Value;
      end;

end;

end.

