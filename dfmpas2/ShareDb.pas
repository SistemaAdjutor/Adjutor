{************************************************************************
 *  Programa...: ShareDb  - Nome formulario = FormShare
 *  Objetivo...: Compartilhar ou nao a base de dados quando multi-empresa
 *  Analista...: Márcio Neu Pacheco
 *  Programador: Márcio Neu Pacheco
 *
 *  Comentários: Quando situação = "Exclusivo" o cadastro tem uma tabela de
 *               de dados dentro da pasta com o codigo de sua empresa.
 *               Quando situação = "Compartilhado" o cadastro da tabela é o
 *               mesmo para todas as empresas cadastradas. 
 *
 *  Criação..........: Abr/2001
 *  Ultima Alteração.:
 *  Alterado por.....:
 *
 ************************************************************************}
unit ShareDb;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, ExtCtrls, DBCtrls, Buttons;

type
  TFormShare = class(TForm)
    SpdGravar: TSpeedButton;
    SpdCancelar: TSpeedButton;
    SpeedSair: TSpeedButton;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    DBRadioGroup1: TDBRadioGroup;
    DBRadioGroup2: TDBRadioGroup;
    DBRadioGroup3: TDBRadioGroup;
    DBRadioGroup4: TDBRadioGroup;
    DBRadioGroup5: TDBRadioGroup;
    DBRadioGroup6: TDBRadioGroup;
    DBRadioGroup7: TDBRadioGroup;
    DBRadioGroup8: TDBRadioGroup;
    DBRadioGroup9: TDBRadioGroup;
    DBRadioGroup10: TDBRadioGroup;
    DBRadioGroup11: TDBRadioGroup;
    DBRadioGroup12: TDBRadioGroup;
    DBRadioGroup13: TDBRadioGroup;
    DBRadioGroup14: TDBRadioGroup;
    DBRadioGroup15: TDBRadioGroup;
    DBRadioGroup16: TDBRadioGroup;
    DBRadioGroup17: TDBRadioGroup;
    DBRadioGroup18: TDBRadioGroup;
    DBRadioGroup19: TDBRadioGroup;
    Label20: TLabel;
    DBRadioGroup20: TDBRadioGroup;
    procedure FormShow(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure SpdGravarClick(Sender: tObject);
    procedure SpdCancelarClick(Sender: tObject);
    procedure SpeedSairClick(Sender: tObject);
  private
    { Private declarations }
    procedure DesBotoes;
  public
    { Public declarations }
    procedure HabBotoes;
 end;

var
  FormShare: TFormShare;

implementation

Uses Uteis, DataCad;

{$R *.DFM}

procedure TFormShare.FormShow(Sender: tObject);
begin
      Left := 56;
      Top  := 106;
      DataCadastros.CdsSharedb.Close;
      DataCadastros.CdsSharedb.CommandText := 'select * from SHAREDB';
      DataCadastros.CdsSharedb.Open;
      if DataCadastros.CdsSharedb.IsEmpty = true then
      begin
             DataCadastros.CdsSharedb.Insert;
             HabBotoes;
      end
      else
          DesBotoes;
end;

procedure TFormShare.FormClose(Sender: tObject; var Action: TCloseAction);
begin
     //taCadastros.CdsSharedb.Close;
end;

procedure TFormShare.SpdGravarClick(Sender: tObject);
begin
    if  DataCadastros.CdsSharedb.State in [dsEdit,dsInsert] then
        if uteis.confirmacao ( ('Você está mudando o direcionamento da Base de Dados.'+#13+'Poderá comprometer todo o sistema. Tem certeza disto ?'))= MrYes then
        begin
             DataCadastros.CdsSharedb.ApplyUpdates(0);
             DataCadastros.CdsSharedb.Refresh;
        end
        else
        begin
             DataCadastros.CdsSharedb.Cancel;
             DataCadastros.CdsSharedb.Refresh;
        end;
    DesBotoes;
end;

procedure TFormShare.SpdCancelarClick(Sender: tObject);
begin
    if DataCadastros.CdsSharedb.State in [dsEdit,dsInsert] then
    begin
           uteis.aviso('Suas mudanças serão desconsideradas!');
           DataCadastros.CdsSharedb.Cancel;
           DataCadastros.CdsSharedb.Refresh;
           DesBotoes;
    end;
end;

procedure TFormShare.SpeedSairClick(Sender: tObject);
begin
    close;
end;

procedure TFormShare.DesBotoes;
begin
    SpdGravar.Enabled   := false;
    SpdCancelar.Enabled := false;
    SpeedSair.Enabled   := True;    
end;

procedure TFormShare.HabBotoes;
begin
    SpdGravar.Enabled   := true;
    SpdCancelar.Enabled := true;
    SpeedSair.Enabled   := false;
end;

end.
