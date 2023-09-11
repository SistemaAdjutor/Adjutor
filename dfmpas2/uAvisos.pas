unit uAvisos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dbcgrids, StdCtrls, DBCtrls, Buttons, DB, DBClient, ExtCtrls;

type
  TFormAviSos = class(TForm)
    DBCtrlGrid1: TDBCtrlGrid;
    dsAvisos: TDataSource;
    CdsAvisos: TClientDataSet;
    CdsAvisosMensagem: TStringField;
    Bit_Sair: TBitBtn;
    dbtxtMensagem: TDBText;
    Image1: TImage;
    procedure Bit_SairClick(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure FormShow(Sender: tObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Adicionaaviso(Aviso: String);
    function possuiAvisos():Boolean;
  end;

var
  FormAviSos: TFormAviSos;

Procedure ClientePossuiFaturasAtrasadas(sClienteID, Campo:String);

implementation

uses uteis, iniciodb;

{$R *.dfm}

Procedure ClientePossuiFaturasAtrasadas(sClienteID, Campo:String);
var nPrc: integer;
    msg: string;
begin

     FormAvisos := TFormAvisos.Create(Application);

     try

        if (dbInicio.empresa.wPMT_VENDA_MSG_ATRASO_FIN = 'S') then
        begin
             nPrc := dbInicio.BuscaUmDadoSqlAsInteger  ( 'SELECT cast(COUNT(FAT_REGISTRO) as integer) '+
                                                         'FROM FAT_PC01 WHERE CLI_CODIGO = '+qStr(sClienteID)+
                                                         ' AND FPC_SITPAG = '+qStr('P')+' AND FPC_VENCTO < CURRENT_DATE');
             if nPrc > 0 then
                FormAvisos.AdicionaAviso('O Cliente possui faturas em atraso!');

        end;

        with dbInicio.qAux3 do
        begin
             close;
             sql.Text := 'SELECT clim_mensagem  '+
                         'FROM cli_mensagens '+
                         'WHERE clim_ativo = '+qStr('S')+
                         ' AND '+campo+' = '+qStr('S')+
                         ' AND cli_codigo = ' + qStr(sClienteID);
             open;
             while not eof do
             Begin
                  if fields[0].asstring<>'' then
                     FormAvisos.AdicionaAviso(fields[0].asstring);
                  Next;
             End;
             close;
        end;

        if (FormAvisos.possuiAvisos) then
           FormAvisos.ShowModal;

     finally
            FreeAndNil(FormAvisos);
     end;

end;

procedure TFormAviSos.Adicionaaviso(Aviso: String);
begin
  CdsAvisos.Append;
  CdsAvisosMensagem.AsString := Aviso;
  CdsAvisos.Post;
end;

procedure TFormAviSos.Bit_SairClick(Sender: tObject);
begin
  Close;
end;

procedure TFormAviSos.FormClose(Sender: tObject; var Action: TCloseAction);
begin
  CdsAvisos.Close;
end;

function TFormAviSos.possuiAvisos: Boolean;
begin
  Result := CdsAvisos.RecordCount > 0;
end;

procedure TFormAviSos.FormShow(Sender: tObject);
begin
  CdsAvisos.First;
end;

end.
