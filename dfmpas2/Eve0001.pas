{**********************************************************
| Programa...: EVE0001  - Nome formulario = FormEvento     
| Objetivo...: Cadastrar Eventos                           
| Programador: Jackson Neu Pacheco                         
|                                                          
| Comentários:                                             
| Criação..........: 11/98                                 
| Ultima Alteração.: 10/99                                 
| Feito por........: Everson

  Migração ............Agosto/2003
  Feito por ...........Rodrigo Ramos
|
|                                                          
***********************************************************}
unit EVE0001;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, DBCtrls, Mask, ExtCtrls, ComCtrls, Buttons, DB, DBTables, RwFunc,
  Provider, SqlExpr,SqlClientDataSet, ppProd, ppClass, ppReport, ppComm, ppRelatv, ppDB,
  ppDBPipe, DBClient, DBLocal, DBLocalS, ppModule, raCodMod, ppCtrls,
  ppBands, ppVar, ppPrnabl, ppCache, ppParameter, Data.DBXFirebird,
  ppDesignLayer, SimpleDS;


type
  TFormEvento = class(TForm)
    Label1: TLabel;
    EdtEve_codigo: TEdit;
    Panel1: TPanel;
    DBNavigator1: TDBNavigator;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Panel2: TPanel;
    Bit_novo: TBitBtn;
    Bit_Excluir: TBitBtn;
    Bit_Gravar: TBitBtn;
    Bit_Cancelar: TBitBtn;
    Bit_Sair: TBitBtn;
    DBRadTipo: TDBRadioGroup;
    DbRadIRRF: TDBRadioGroup;
    DbeEve_descri: TDBEdit;
    Panel3: TPanel;
    Bit_Relatorio: TBitBtn;
    SQLCdSRELEVENTO: TSQLClientDataSet;
    DSRELEVENTO: TDataSource;
    ppDBRELEVENTO: TppDBPipeline;
    ppRPRelEvento01: TppReport;
    SQLCdSRELEVENTOEVE_CODIGO: TStringField;
    SQLCdSRELEVENTOEVE_DESCRI: TStringField;
    SQLCdSRELEVENTOEVE_TIPODC: TStringField;
    SQLCdSRELEVENTOEVE_IRRF: TStringField;
    SQLCdSRELEVENTOEVE_SITUAC: TStringField;
    SQLCdSRELEVENTOEMP_CODIGO: TStringField;
    ppParameterList1: TppParameterList;
    pp00HeaderBand2: TppHeaderBand;
    ppLine5: TppLine;
    LBL_00_EMPRESA: TppLabel;
    LBL_00_LTITULO1: TppLabel;
    LBL_00_LTITULO2: TppLabel;
    ppLine6: TppLine;
    ppSystemVariable3: TppSystemVariable;
    ppSystemVariable4: TppSystemVariable;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLine1: TppLine;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    pp00DetailBand2: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBTextDescri: TppDBText;
    ppDBText3: TppDBText;
    ppVariable1: TppVariable;
    ppVariable2: TppVariable;
    pp00SummaryBand2: TppSummaryBand;
    ppLine9: TppLine;
    ppLabel25: TppLabel;
    ppDBCalc2: TppDBCalc;
    raCodeModule2: TraCodeModule;
    procedure MudaCorCampos(Sender: tObject);
    procedure Bit_SairClick(Sender: tObject);
    procedure Bit_novoClick(Sender: tObject);
    procedure Bit_ExcluirClick(Sender: tObject);
    procedure Bit_GravarClick(Sender: tObject);
    procedure DesabilitaBotoes;
    procedure BuscaEvento;
    procedure HabilitaBotoes;
    procedure verificaEdicao;
    procedure Bit_CancelarClick(Sender: tObject);
    procedure FormCloseQuery(Sender: tObject; var CanClose: Boolean);
    procedure DBNavigator1Click(Sender: tObject; Button: TNavigateBtn);
    procedure FormShow(Sender: tObject);
    procedure EdtEve_codigoExit(Sender: tObject);
    procedure Bit_RelatorioClick(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: tObject; var Key: Char);
    procedure EdtEve_codigoClick(Sender: tObject);
    procedure EdtEve_codigoKeyPress(Sender: tObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);

  private
    { Private declarations }
       {campos}
    CampoEdit    :TEdit;
    CampoDBEdit  :TDBEdit;

  public
    { Public declarations }
    procedure BotoesAcesso;
  end;

var
  FormEvento: TFormEvento;

implementation

uses DataCad, Men0001, uteis, ufrmpreviewrb, iniciodb;

{$R *.DFM}


function TestaCGC (CampoCGC :TmaskEdit; CGC:String):boolean; far; external 'mensagen.dll';



procedure TformEvento.MudaCorCampos(Sender: tObject);
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
  {CampoEdit :TEdit}
   if Assigned(CampoEdit) then
      begin
         CampoEdit.color := clWindow;
      end;
   if ActiveControl is TEdit then
      begin
         if TEdit(ActiveControl).color = $00D7D7D7 then
            begin
               exit;
            end;
         TEdit(ActiveControl).color := $0080FFFF;
         CampoEdit := TEdit(ActiveControl);
      end
   else
      begin
         CampoEdit := nil;
      end;
end;

procedure TformEvento.verificaEdicao;
begin
    // verifica estado da tabela em edicao e inclusao
    screen.cursor :=crHourglass;
    if DataCadastros.CdsEvento.State in [dsEdit,dsInsert] then
      begin
        if uteis.confirmacao ( 'Deseja salvar alterações ?') = idyes then
           begin
               DataCadastros.CdsEvento.ApplyUpdates(0);
               Habilitabotoes;
           end
        else
           begin
               DataCadastros.CdsEvento.Cancel;
               Habilitabotoes;
           end;
        end;
    screen.cursor := crDefault;
end;

procedure TformEvento.HabilitaBotoes;
begin
    Bit_novo.Enabled            := True;
    Bit_Excluir.Enabled         := True;
    Bit_Sair.Visible            := True;
    Bit_Relatorio.Enabled       := True;
    Bit_Gravar.Enabled          := False;
    Bit_Cancelar.Visible        := False;
    EdtEve_codigo.Color         := clWindow;
    EdtEve_codigo.Enabled       := True;
    DBnavigator1.Enabled        := True;
    BotoesAcesso;
end;

procedure TformEvento.DesabilitaBotoes;
begin
    BotoesAcesso;
    Bit_novo.Enabled            := False;
    Bit_Excluir.Enabled         := False;
    Bit_Sair.Visible            := False;
    Bit_Relatorio.Enabled       := False;
    Bit_Gravar.Enabled          := True;
    Bit_Cancelar.Visible        := True;
    EdtEve_codigo.Color         := clSilver;
    EdtEve_codigo.Enabled       := False;
    DBnavigator1.Enabled        := False;

end;

procedure TformEvento.BuscaEvento;// busca por codigo
begin
    if DataCadastros.CdsEvento.Locate('EVE_CODIGO',EdtEve_codigo.text,[]) = false then
        begin
            messagebeep($ffff);
            uteis.aviso('Codigo do evento não cadastrado');
            EdtEve_codigo.Text := DataCadastros.CdsEventoEVE_CODIGO.AsString;
        end;
end;

procedure TformEvento.FormShow(Sender: tObject);
begin
    Left := 237;
    Top  := 191;
    Screen.Cursor := crHourglass;
    Screen.OnActiveControlChange   := MudaCorCampos;
    try
      DataCadastros.CdsEvento.Close;
      DataCadastros.CdsEvento.CommandText := SQLDEF('TABELAS','SELECT * FROM EVE0000','','EVE_CODIGO','');
      DataCadastros.CdsEvento.open;
    except on E:EdatabaseError do
       uteis.erro  ('Impossivel acessar a tabela de eventos !!! ');
    end;
    Habilitabotoes;
    if DataCadastros.CdsEvento.IsEmpty Then  //Evita alteração antes que se
       begin                                //inclua registros na tabela.
           DataCadastros.DsEvento.AutoEdit := False;
       end;
    EdtEve_codigo.text := DataCadastros.CdsEventoEve_codigo.AsString;
    EdtEve_Codigo.SetFocus;
    Screen.Cursor := crdefault;
end;

procedure TformEvento.Bit_novoClick(Sender: tObject);
begin
    try
      Screen.Cursor := crHourglass;
      DataCadastros.CdsEvento.Insert;
      Edteve_codigo.Text := '00';
      DesabilitaBotoes;
      uteis.HabilitaIncluir('CadastrosTabelas',DBInicio.Usuario.CODIGO,formEvento);
      DbeEve_descri.setfocus;
      screen.cursor := crdefault;
    except on E:EDataBaseError do
        uteis.erro  (pchar('Erro ao inserir o registro !'+e.Message));
    end;
end;

procedure TformEvento.Bit_ExcluirClick(Sender: tObject);
begin
    if DataCadastros.CdsEvento.IsEmpty Then   //evita exclussão de registro
       Begin                                      // em uma Tabela Vazia.
           messagebeep($ffff);
           uteis.aviso('Não existe Evento Cadastrado !!!');
           exit;
       end;
    if uteis.confirmacao ( 'Deseja Excluir este Evento?')= Mryes then
       begin
           Screen.cursor :=crHourglass;
           DataCadastros.CdsEvento.Delete;
           dataCAdastros.CdsEvento.ApplyUpdates(0);
           screen.cursor := crDefault;
       end;
       EdtEve_codigo.text := DataCadastros.CdsEventoEVE_CODIGO.AsString;
       EdtEve_codigo.SetFocus;
end;

procedure TformEvento.Bit_GravarClick(Sender: tObject);
begin
    if DBRadTipo.Value = '' then
      begin
          //beep;
          uteis.aviso('Você deve Selecionar o Tipo!');
          screen.cursor := crDefault;
          exit;
      end;
     //massengem para não deixar gravar sem setar o irrf.
    if DbRadIRRF.Value = '' then
      begin
          //beep;
          uteis.aviso('Você deve Selecionar o IRRF!');
          screen.cursor := crDefault;
          exit;
      end;
    try
      Screen.Cursor := crHourGlass;
      DataCadastros.CdsEventoEVE_CODIGO.AsString := StrZero(EdtEve_codigo.Text,EdtEve_codigo.MaxLength);
      DataCAdastros.CdsEventoEMP_CODIGO.AsString := dbInicio.Empresa.EMP_CODIGO;
      DataCadastros.CdsEvento.ApplyUpdates(0);
      DataCadastros.CdsEvento.refresh;
      DataCadastros.DsEvento.AutoEdit := true;
      Screen.Cursor := crDefault;
      Habilitabotoes;
      EdtEve_codigo.Text := DataCadastros.CdsEventoEVE_CODIGO.AsString;
      DbeEve_descri.Setfocus;
    except on E:EdatabaseError do
       uteis.erro  (Pchar('Erro ao gravar registro !'+e.Message));
    end;
end;

procedure TformEvento.Bit_CancelarClick(Sender: tObject);
begin
    Screen.Cursor := crHourGlass;
    DataCadastros.CdsEvento.Cancel;
    if DataCadastros.CdsEvento.IsEmpty Then   //Ao cancelar ultimo record da
       begin                                          //tabela deixa autoedit=true;
         DataCadastros.DsEvento.AutoEdit := False;
         EdtEve_codigo.Enabled := False;
       end;
    HabilitaBotoes;
    EdtEve_codigo.Text := DataCadastros.CdsEventoEVE_CODIGO.AsString;
    DbeEve_descri.Setfocus;
    Screen.Cursor := crDefault;
end;

procedure TformEvento.Bit_SairClick(Sender: tObject);
begin
   close;
end;

procedure TFormEvento.BotoesAcesso;
begin
     if assigned(FormEvento) then
     begin
       Bit_novo.Enabled := Uteis.AcessoUsuario('CadastrosTabelas',DBInicio.Usuario.CODIGO,FormEvento).Incluir;
       Bit_Excluir.Enabled := Uteis.AcessoUsuario('CadastrosTabelas',DBInicio.Usuario.CODIGO,FormEvento).Exluir;
       Bit_Relatorio.Enabled := Uteis.AcessoUsuario('CadastrosTabelas',DBInicio.Usuario.CODIGO,FormEvento).Relatorio;
       DataCadastros.DsEvento.AutoEdit := Uteis.AcessoUsuario('CadastrosTabelas',DBInicio.Usuario.CODIGO,FormEvento).Alterar;
     end;
end;

procedure TformEvento.DBNavigator1Click(Sender: tObject;
  Button: TNavigateBtn);
begin
    EdtEve_codigo.Text := DataCadastros.CdsEventoEVE_CODIGO.AsString;
end;

procedure TformEvento.EdtEve_codigoExit(Sender: tObject);
begin
    if (ActiveControl.Name = 'Bit_Cancelar') or (ActiveControl.Name = 'Bit_Sair') or (ActiveControl.Name = 'Bit_novo') then
       exit;
    if EdtEve_codigo.Text <> '' then
       begin
           if DataCadastros.CdsEvento.State in [Dsbrowse] then
              BuscaEvento;
       end
    else
       begin
           uteis.aviso('Informe o Código do Evento !');
           EdtEve_codigo.SetFocus;
           EdtEve_Codigo.SelectAll;
       end;
end;

procedure TformEvento.FormCloseQuery(Sender: tObject;
  var CanClose: Boolean);
begin
    VerificaEdicao;
    try
      DataCadastros.CdsEvento.Close;
    except
      uteis.erro  ('Não posso fechar Tabela de evento');
    end;
    try
      SQLCdSRELEVENTO.Close;
    except
      uteis.erro  ('Não posso fechar Tabela de evento');
    end;
end;
procedure TFormEvento.FormDestroy(Sender: TObject);
begin
     FormEvento := Nil;
end;

procedure TFormEvento.Bit_RelatorioClick(Sender: tObject);
begin
    Screen.Cursor := crHourGlass;
    try
      SqlCdsRelEvento.Close;
      SqlCdsRelEvento.CommandText:=SQLDEF('TABELAS','SELECT * FROM EVE0000','','EVE_CODIGO','');
      SqlCdsRelEvento.Open;
      LBL_00_EMPRESA.Caption := dbInicio.Empresa.Razao;
      LBL_00_LTITULO1.Caption:= 'RELATÓRIO DE EVENTO';
      LBL_00_LTITULO2.Caption:= 'ORDEM POR EVENTO';
      ppRPRelEvento01.DeviceType:='Screen';
      RBuilderPreview(ppRPRelEvento01);
      EdtEve_Codigo.SetFocus;
    except on E:EdatabaseError do
       uteis.erro  (pchar('Erro ao gerar o relatório !'+e.message));
    end;
    Screen.Cursor := crDefault;
end;

procedure TFormEvento.FormClose(Sender: tObject; var Action: TCloseAction);
begin
    Screen.OnActiveControlChange := NIL;
    Action := CaFree;
end;

procedure TFormEvento.FormKeyPress(Sender: tObject; var Key: Char);
begin
    if key = #27 then
       begin
          close;
          key := #0;
       end;
end;

procedure TFormEvento.EdtEve_codigoClick(Sender: tObject);
begin
    EdtEve_Codigo.SelectAll;
end;

procedure TFormEvento.EdtEve_codigoKeyPress(Sender: tObject;
  var Key: Char);
begin
    if not (key in ['0'..'9',#8]) then
       begin
          //beep;
          Key := #0;
       end;
end;

end.
