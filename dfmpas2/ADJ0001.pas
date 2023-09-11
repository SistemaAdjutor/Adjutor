{**************************************************************************
| Programa.........: ADJ0001 - Nome formulario  =  FormAdjutor
| Objetivo.........: Acessar o Sistema
| Analista.........: Márcio  Neu Pacheco
| Programador......: Jackson e Márcio
| Comentários......:
|
| Criação..........: Set/1998
| Ultima Alteração.: Abr/2000
| Alterado por.....: Márcio
**************************************************************************}
unit ADJ0001;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons, Rwfunc, DBCtrls, Mask, Db, dbTables;

type
  TFormAdjutor = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label5: TLabel;
    Label1: TLabel;
    Image1: TImage;
    BitEntrar: TBitBtn;
    BitSair: TBitBtn;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    EdtEmp_Codigo: TEdit;
    Label4: TLabel;
    DbeCgc: TDBEdit;
    DBLkCboRazao: TDBLookupComboBox;
    DbeEmp_Razao: TDBEdit;
    procedure BitEntrarClick(Sender: tObject);
    procedure BitSairClick(Sender: tObject);
    procedure EdtEmp_CodigoExit(Sender: tObject);
    procedure FormActivate(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure DBLkCboRazaoClick(Sender: tObject);
    procedure EdtEmp_CodigoEnter(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure FormCreate(Sender: tObject);
  //  procedure ProcessaMsg(var Msg: TMsg; var Handled: Boolean);
  private
    // Private declarations }
  public
    // Public declarations }
    wEmp_codigo   : String[3];
    wEmp_Fantasia : String[45];   //nome fantasia da empresa
    wEmp_Razao    : String[45];     // razao
    wEmp_CGC      : String[14];
    wEmp_Endereco : String[45];
    wEmp_Bairro   : String[25];
    wEmp_Cep      : String[8];
    wEmp_Cidade   : String[30];
    wUF           : String[2];
    wEmp_Fone     : String[11];
    wEmp_Email    : String[35];
    wEmp_Home     : String[35];
    wEmp_CxPostal : String[7];
    wEmp_NomeComprador: String[20];
    PathFotos     : String;
    PathFichas    : String;
    PathNewFotos  : String[50];
    PathNewFicha  : String[50];
    PathNewRel    : String[50];
    PathIniNF     : String;
  end;

var
  FormAdjutor   : TFormAdjutor;

Implementation

Uses Ent0001, Database, Emp0001, Login, DataCad;

{$R *.DFM}

function TestaCGC (CampoCGC :TmaskEdit; CGC:String):boolean; far; external 'mensagen.dll';



procedure TFormAdjutor.BitEntrarClick(Sender: tObject);
var
MyList:TstringList;
begin
    Try
      Datamodulo.DTBAdjutor.Connected := False;
    except
      uteis.erro  ('Não posso desconectar o Sistema do Banco de Dados');
    end;
    //ALTERAR O BDE conforme a empresa selecionada
    MyList := TStringList.Create;
    Try
      // Session.GetAliasParams('Adjutor',MyList);
      If EdtEmp_Codigo.Text = '001' then
         begin
             Mylist.Add('DATABASE NAME='+FormLogin.Path+'\Emp1\RwBdAdm.mdb');
             if Datamodulo.TbSharePRODUTOS.Value = 'E' then
                begin
                    // exclusivo (dentro dos Emp's)
                    PathFotos := FormLogin.Path+'\Emp1\Fotos';
                    PathFichas:= FormLogin.Path+'\Emp1\Fichas';
                end
             else
                begin
                    // compartilhado (dentro Adjutor)
                    PathFotos := FormLogin.Path+'\Fotos';
                    PathFichas:= FormLogin.Path+'\Fichas';
                end;
             wEmp_codigo := EdtEmp_Codigo.Text;
             PathIniNF := FormLogin.Path+'\Emp1';
         end;
      If EdtEmp_Codigo.Text = '002' then
         begin
             Mylist.Add('DATABASE NAME='+FormLogin.Path+'\Emp2\RwBdAdm.mdb');
             if Datamodulo.TbSharePRODUTOS.Value = 'E' then
                begin
                    // exclusivo
                    PathFotos := FormLogin.Path+'\Emp2\Fotos';
                    PathFichas:= FormLogin.Path+'\Emp2\Fichas';
                end
             else
                begin
                    // compartilhado
                    PathFotos := FormLogin.Path+'\Fotos';
                    PathFichas:= FormLogin.Path+'\Fichas';
                end;
             wEmp_codigo := EdtEmp_Codigo.Text;
             PathIniNF := FormLogin.Path+'\Emp2';
         end;
      If EdtEmp_Codigo.Text = '003' then
         begin
             Mylist.Add('DATABASE NAME='+FormLogin.Path+'\Emp3\RwBdAdm.mdb');
             if Datamodulo.TbSharePRODUTOS.Value = 'E' then
                begin
                    // exclusivo
                    PathFotos := FormLogin.Path+'\Emp3\Fotos';
                    PathFichas:= FormLogin.Path+'\Emp3\Fichas';
                end
             else
                begin
                    // compartilhado
                    PathFotos := FormLogin.Path+'\Fotos';
                    PathFichas:= FormLogin.Path+'\Fichas';
                end;
             wEmp_codigo := EdtEmp_Codigo.Text;
             PathIniNF := FormLogin.Path+'\Emp3';
         end;
      If EdtEmp_Codigo.Text = '004' then
         begin
             Mylist.Add('DATABASE NAME='+FormLogin.Path+'\Emp4\RwBdAdm.mdb');
             if Datamodulo.TbSharePRODUTOS.Value = 'E' then
                begin
                    // exclusivo
                    PathFotos := FormLogin.Path+'\Emp4\Fotos';
                    PathFichas:= FormLogin.Path+'\Emp4\Fichas';
                end
             else
                begin
                    // compartilhado
                    PathFotos := FormLogin.Path+'\Fotos';
                    PathFichas:= FormLogin.Path+'\Fichas';
                end;
             wEmp_codigo := EdtEmp_Codigo.Text;
             PathIniNF := FormLogin.Path+'\Emp4';
         end;
      //
      //Session.ConfigMode := cmPersistent;
      Session.ModifyAlias('Adjutor',MyList);
      Session.SaveConfigFile;
      // Conectar-se com gerenciador de bancos de dados do Delphi
      try
        Datamodulo.DTBAdjutor.Connected := True;
      except
        uteis.erro  ('Não posso fazer a conexão entre o Sistema e o Banco de Dados');
      end;
    Finally
      //Session.ConfigMode := cmPersistent;
      Mylist.Free;
    end;
    //**********************************************************************//
    //
    //Estado e nome fantasia
    wEmp_Codigo   := Datamodulo.TbEmpresaEMP_CODIGO.Value;
    wEmp_Fantasia := Datamodulo.TbEmpresaEMP_FANTASIA.Value;
    wEmp_Razao    := Datamodulo.TbEmpresaEMP_RAZAO.Value;
    wEmp_cgc      := Datamodulo.TbEmpresaEMP_CGC.Value;
    wEmp_Endereco := Datamodulo.TbEmpresaEMP_ENDERE.Value;
    wEmp_Bairro   := Datamodulo.TbEmpresaEMP_BAIRRO.Value;
    wEmp_Cep      := Datamodulo.TbEmpresaEMP_CEP.Value;
    wEmp_cidade   := Datamodulo.TbEmpresaEMP_CIDADE.Value;
    wUF           := Datamodulo.TbEmpresaEMP_UF.Value;
    wEmp_Fone     := Datamodulo.TbEmpresaEMP_FONE.Value;
    wEmp_Email    := Datamodulo.TbEmpresaEMP_EMAIL.Value;
    wEmp_Home     := Datamodulo.TbEmpresaEMP_HOME.Value;
    wEmp_CxPostal := Datamodulo.TbEmpresaEMP_CXPOSTAL.Value;
    wEmp_NomeComprador:= Datamodulo.TbEmpresaEMP_NOMECOMPRADOR.Value;
    //
    try
      DataCadastros.sqlUpdate.Close;
      DataCadastros.SqlUpdate.sql.text :=SQLDEF('PARAMETROS','SELECT PMT_PATHFOTO,PMT_PATHFICHA,PMT_PATHRELATORIO FROM PRMT0001','','','');
      DataCadastros.sqlUpdate.Open;
      if not DataCadastros.sqlUpdate.IsEmpty then
         begin
             PathNewFotos := DataCadastros.sqlUpdate.fieldbyname('PMT_PATHFOTO').AsString;
             PathNewFicha := DataCadastros.sqlUpdate.fieldbyname('PMT_PATHFICHA').AsString;
             PathNewRel   := DataCadastros.sqlUpdate.fieldbyname('PMT_PATHRELATORIO').AsString;
         end;
      DataCadastros.sqlUpdate.Close;
    except on E:EDataBaseError do
         uteis.erro  (pchar('Erro ao Configurar os paths !'+e.message))
    end;
    FormEntrada.ShowModal;
end;
//
procedure TFormAdjutor.BitSairClick(Sender: tObject);
begin
    Close;
end;
//
procedure TFormAdjutor.EdtEmp_CodigoExit(Sender: tObject);
begin
//  Busca empresa
    if Datamodulo.TbEmpresa.FindKey([EdtEmp_Codigo.Text])= False then
       begin
           Messagebeep($ffffffff);
           uteis.aviso('Empresa não Cadastrada!');
           EdtEmp_Codigo.Text := Datamodulo.TbEmpresaEmp_CODIGO.Value;
       end;
end;


procedure TFormAdjutor.FormActivate(Sender: tObject);
begin
    While Datamodulo.TbEmpresa.RecordCount = 0 do
      begin
          uteis.aviso('Você deve cadastrar a sua Empresa');
          //
          try
            try
              FormEmpresa :=TFormEmpresa.Create(Application);
              FormEmpresa.ShowModal;
              Try
                Datamodulo.TbEmpresa.open;
              except
                uteis.erro  ('Impossível acessar tabela de Empresas');
              end;
            finally
              FormEmpresa.Destroy;
              FormEmpresa := nil //  nil é - From Assigned = False
            end;
          except
              //beep;
              uteis.erro  ('Ocorreu um erro na criação do formulário!');
          end;
      end;
    EdtEmp_Codigo.text:= Datamodulo.TbEmpresaEmp_CODIGO.Value;
end;

procedure TFormAdjutor.FormShow(Sender: tObject);
begin
    Left:= 134;
    Top := 157;
    Screen.Cursor := crHourglass;
    //
    try
     Datamodulo.DTBAdjMaster.Connected := True;
    except
      uteis.erro  ('Não posso fazer a conexão entre o Sistema e o Master');
    end;
    //
    Try
      Datamodulo.TbEmpresa.open;
     except
      uteis.erro  ('Impossível acessar Tabela de Empresas!');
    end;
    //
    Try
      Datamodulo.TbShare.Open;
    except
      uteis.erro  ('Impossível acessar Tabela "TbShare"');
    end;
    Screen.Cursor := crDefault;
end;

procedure TFormAdjutor.DBLkCboRazaoClick(Sender: tObject);
begin
    EdtEmp_Codigo.Text := Datamodulo.TbEmpresaEmp_CODIGO.Value;
    DbeEmp_Razao.Text := Datamodulo.TbEmpresaEMP_RAZAO.Value;
    BitEntrar.SetFocus;
end;

procedure TFormAdjutor.EdtEmp_CodigoEnter(Sender: tObject);
begin
    EdtEmp_Codigo.Text := Datamodulo.TbEmpresaEmp_CODIGO.Value;
end;

{procedure TFormAdjutor.ProcessaMsg(var Msg: TMsg; var Handled: Boolean);
// Faz tecla <Enter> pular p/ proximo objeto
// bug = nos campos c/ mascara faz o arquivo entrar em modo ediçao
begin
if Msg.message = WM_KEYDOWN then
  begin
  if Msg.wParam = VK_RETURN then
    Keybd_event(VK_TAB,0,0,0);
  end;
end; }

procedure TFormAdjutor.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
    Try
      Datamodulo.TbEmpresa.Close;
    except
      uteis.erro  ('Impossível Fechar Tabela Empresa');
    end;
     //
    Try
      Datamodulo.TbShare.Close;
    except
      uteis.erro  ('Impossível fechar Tabela "TbShare"');
    end;

    // fecha form Login que esta em Hide na memoria
    FormLogin.Close;
end;

procedure TFormAdjutor.FormCreate(Sender: tObject);
begin
    FormatSettings.ShortDateFormat:='dd/mm/yyyy';
end;

end.
