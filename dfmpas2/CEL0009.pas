unit CEL0009;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, Mask, Buttons, ExtCtrls, Grids, DBGrids, Db, DBTables,
  RwFunc, StdCtrls,  rxToolEdit, RXDBCtrl, JvExMask, JvToolEdit, JvDBControls;

type
  TFormManutMovCel = class(TForm)
    Panel1: TPanel;
    Bit_Gravar: TBitBtn;
    Bit_Cancelar: TBitBtn;
    Bit_Sair: TBitBtn;
    Label1: TLabel;
    DBEdtCelCodigo: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdtTup: TDBEdit;
    DBEdtPUnit: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DBEdtQtde: TDBEdit;
    Bit_Excluir: TBitBtn;
    DbDt_Entrada: TJvDBDateEdit;
    DbDt_Conclusao: TJvDBDateEdit;
    procedure MudaCorCampos(Sender: tObject);
    procedure HabilitaBotoes;
    procedure DesabilitaBotoes;
    procedure FormShow(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure Bit_ExcluirClick(Sender: tObject);
    procedure Bit_GravarClick(Sender: tObject);
    procedure Bit_CancelarClick(Sender: tObject);
    procedure Bit_SairClick(Sender: tObject);
    procedure DbDt_EntradaExit(Sender: tObject);
    procedure DbDt_ConclusaoExit(Sender: tObject);
  private
    { Private declarations }
        {campos}
    CampoDBEdit  :TDBEdit;
    CampoData    :TDBDateEdit;
  public
    { Public declarations }
  end;

var
  FormManutMovCel: TFormManutMovCel;
  wVct_tup:Double;

implementation

uses Uteis, DataCad, DataCad1, DmProdu, CEL0008;

{$R *.DFM}





procedure TFormManutMovCel.MudaCorCampos(Sender: tObject);
begin
  {cor dos campos TDBEdit}
   if Assigned(CampoDbEdit) then
      begin
         CampoDbEdit.color := clWindow;
      end;
   if ActiveControl is TDBEdit then
      begin
         if TDBEdit(ActiveControl).color = $00D7D7D7 then
            begin
               exit;
            end;
         TDBEdit(ActiveControl).color := $0080FFFF;
         CampoDbEdit := TDBEdit(ActiveControl);
      end
   else
      begin
         CampoDbEdit := nil;
      end;

   {CampoData  :TDBDateEdit}
   if Assigned(CampoData) then
      begin
         CampoData.color := clWindow;
      end;
   if ActiveControl is TDBDateEdit then
      begin
         TDBDateEdit(ActiveControl).color := $0080FFFF;
         CampoData := TDBDateEdit(ActiveControl);
      end
   else
      begin
         CampoData := nil;
      end;

end;

procedure TFormManutMovCel.HabilitaBotoes;
begin
    Bit_Excluir.Enabled   := True;
    Bit_Sair.Enabled      := True;
    Bit_Gravar.Enabled    := False;
    Bit_Cancelar.Enabled  := False;
end;

procedure TFormManutMovCel.DesabilitaBotoes;
begin
    Bit_Excluir.Enabled   := False;
    Bit_Sair.Enabled      := False;
    Bit_Gravar.Enabled    := True;
    Bit_Cancelar.Enabled  := True;
end;

procedure TFormManutMovCel.FormShow(Sender: tObject);
var
wClasse:String;
begin
    {ativa o método ao evento OnActiveControlChange}
    Screen.OnActiveControlChange   := MudaCorCampos;
    Screen.Cursor := crHourGlass;
    Try
      DataCadastros.sqlUpdate.Close;
      DataCadastros.SqlUpdate.sql.text :=SQLDEF('PARAMETROS','SELECT PMT_EMPRESACLASSE FROM PRMT0001 ','','PMT_NOSSOCODIGO','');
      DataCadastros.sqlUpdate.open;
      if DataCadastros.sqlUpdate.IsEmpty = false then
         begin
             wClasse:=DataCadastros.sqlUpdate.FieldByName('PMT_EMPRESACLASSE').AsString;
             DataCadastros.sqlUpdate.Close;
         end;

      DmProducao.CdsFatorCustos.close;
      DmProducao.CdsFatorCustos.CommandText := SQLDEF('PRODUTOS','SELECT * FROM VCT0000','where VCT_CLASSE = '''+wClasse+'''','','');
      DmProducao.CdsFatorCustos.Open;
      if DmProducao.CdsFatorCustos.IsEmpty = False then
         begin
             wVct_tup:= DmProducao.CdsFatorCustosVCT_TUP.AsCurrency;
             DmProducao.CdsFatorCustos.close;
         end;
//        FormMovCelulas.SqlCdsMovCelula.Edit;
//        DesabilitaBotoes;
//      FormMovCelulas.SqlCdsMovCelula.Locate('CEM_REGISTRO',)

      {
      DmProducao.CdsMovCel.Close;
      DmProducao.CdsMovCel.CommandText:=SQLDEF('ORDEMPRODUCAO','SELECT C3.*,C1.CEL_NOME FROM CEL_MOV03 C3 LEFT JOIN CEL0000 C1 ON (C1.CEL_CODIGO = C3.CEL_CODIGO)','','','C3.');
      DmProducao.CdsMovCel.open;
      }
    except on E:EdataBaseError do
      uteis.erro  (pchar('Erro ao abrir as tabelas !'+e.message));
    end;
    Screen.Cursor := crDefault;
end;

procedure TFormManutMovCel.FormClose(Sender: tObject;
  var Action: TCloseAction);
var
  wOsv_codigo:string;
begin
    Screen.OnActiveControlChange := NIL;
end;

procedure TFormManutMovCel.Bit_ExcluirClick(Sender: tObject);
begin
    if uteis.confirmacao ( 'Exclui Movimento ?')=MrYes  then
       begin
           {Excluir o dados da tabela CEL_MOV03}
           DataCadastros.sqlUpdate.Close;
           DataCadastros.SqlUpdate.sql.text :=SQLDEF('ORDEMPRODUCAO','Delete from CEL_MOV03 ','where CEM_REGISTRO = '''+FormMovCelulas.SqlCdsMovCelulaCEM_REGISTRO.AsString+'''','','');
           DataCadastros.sqlUpdate.Execsql;
           {Atualiza o DBGrid}
           FormMovCelulas.SqlCdsMovCelula.Delete;
           Bit_Sair.Click;
       end
    else
       begin
           DBEdtQtde.SetFocus;
       end;
end;

procedure TFormManutMovCel.Bit_GravarClick(Sender: tObject);
Var
  wCME_CODIGO : String;
  wSITUACAO   : String[1];
begin
    if FormMovCelulas.SqlCdsMovCelula.State in [dsEdit] then
       begin
           {Cria Cod. Metas = CME_CODIGO}
           wCME_CODIGO := copy(DbDt_Conclusao.Text,7,4)+copy(DbDt_Conclusao.Text,4,2);
           if FormMovCelulas.SqlCdsMovCelulaCME_CODIGO.AsString <> '      ' then
              wCME_CODIGO := wCME_CODIGO + DBEdtCelCodigo.Text
           else
              wCME_CODIGO := '000000' + DBEdtCelCodigo.Text;
              // gravar flag de concluida
           wSITUACAO := '';
           if COPY(FormMovCelulas.SqlCdsMovCelulaCME_CODIGO.AsString,1,6)<>'000000' then    //6 caracters
              wSITUACAO := 'C';
           {Atualiza a tabela CEL_MOV03}
           DataCadastros.sqlUpdate.Close;
           DataCadastros.SqlUpdate.sql.text :=SQLDEF('ORDEMPRODUCAO','UPDATE CEL_MOV03 SET CME_CODIGO = '''+wCME_CODIGO+''',CEM_SITUACAO = '''+wSITUACAO+''',OSV_QTDE = '''+ValorAmericano(DBEdtQtde.Text)+''',CEM_TUPTRAB = '''+ValorAmericano(DBEdtTup.Text)+''',CEM_PRECOUNIT = '''+ValorAmericano(DBEdtPUnit.Text)+''',CEM_DTENTROU = '''+DataAmericana(DbDt_Entrada.Field.Text)+''',CEM_DTCONCLUIU = '''+DataAmericana(DbDt_Conclusao.Field.Text)+''',VCT_TUP = '''+ValorAmericano(FloatToStr(wVct_Tup))+'''','where CEM_REGISTRO = '''+FormMovCelulas.SqlCdsMovCelulaCEM_REGISTRO.AsString+'''','','');
           DataCadastros.sqlUpdate.Execsql;
           FormMovCelulas.SqlCdsMovCelula.Post;
       end;
    Habilitabotoes;
end;

procedure TFormManutMovCel.Bit_CancelarClick(Sender: tObject);
begin
    if FormMovCelulas.SqlCdsMovCelula.State in [dsEdit] then
       FormMovCelulas.SqlCdsMovCelula.CancelUpdates;
    Habilitabotoes;
end;

procedure TFormManutMovCel.Bit_SairClick(Sender: tObject);
begin
    close;
end;

procedure TFormManutMovCel.DbDt_EntradaExit(Sender: tObject);
begin
    if not TestaDataStr(DbDt_Entrada.Text) then
       DbDt_Entrada.setfocus;
end;

procedure TFormManutMovCel.DbDt_ConclusaoExit(Sender: tObject);
begin
    if not TestaDataStr(DbDt_Conclusao.Text) then
       DbDt_Conclusao.setfocus;
end;

end.

