{***********************************************************
| Programa...: CEC0001 - Nome formulario = FormCentroCusto
| Objetivo...: Cadastro dos Centros de Custos
| Analista...: Marcio Neu Pacheco
| Programador: Márcio
|
| Co4mentários:
|
| Criação..........: Jul/01
| Ultima Alteração.:
| Alterado por.....: 
|
***********************************************************}
unit Cec0001;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, DBCtrls, StdCtrls, Buttons, Mask, Db, DBTables, Rwfunc,
  Provider, SqlExpr,SqlClientDataSet, ppProd, ppClass, ppReport, ppComm, ppRelatv, ppDB,
  ppDBPipe, DBClient, DBLocal, DBLocalS, ppModule, raCodMod, ppCtrls,
  ppBands, ppVar, ppPrnabl, ppCache, Data.DBXFirebird, ppDesignLayer,
  ppParameter, SimpleDS;

type
  TFormCentroCusto = class(TForm)
    DBNavigator1: TDBNavigator;
    Label1: TLabel;
    Panel2: TPanel;
    Label2: TLabel;
    DbeCec_Descri: TDBEdit;
    Panel1: TPanel;
    Bit_Cancelar: TBitBtn;
    Bit_Sair: TBitBtn;
    Bit_Excluir: TBitBtn;
    Bit_Gravar: TBitBtn;
    Bit_novo: TBitBtn;
    Panel3: TPanel;
    Bit_Relatorio: TBitBtn;
    SqlCdsRelCentroCusto: TSQLClientDataSet;
    DsRelCentroCusto: TDataSource;
    ppDBRelCentroCusto: TppDBPipeline;
    ppRPRelCentroCusto: TppReport;
    SqlCdsRelCentroCustoCEC_CODIGO: TStringField;
    SqlCdsRelCentroCustoCEC_DESCRI: TStringField;
    SqlCdsRelCentroCustoEMP_CODIGO: TStringField;
    EdtCec_Codigo: TEdit;
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
    pp00DetailBand2: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    pp00SummaryBand2: TppSummaryBand;
    ppLine9: TppLine;
    ppLabel25: TppLabel;
    ppDBCalc2: TppDBCalc;
    raCodeModule2: TraCodeModule;
    DBCheckBox1: TDBCheckBox;
    procedure MudaCorCampos(Sender: tObject);
    procedure VerificaEdicao;
    //procedure BuscaCentroCusto;
    procedure DesabilitaBotoes;
    procedure Habilitabotoes;
    procedure Bit_novoClick(Sender: tObject);
    procedure Bit_ExcluirClick(Sender: tObject);
    procedure Bit_GravarClick(Sender: tObject);
    procedure Bit_SairClick(Sender: tObject);
    procedure Bit_CancelarClick(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: tObject; var CanClose: Boolean);
    procedure FormShow(Sender: tObject);
    procedure Bit_RelatorioClick(Sender: tObject);
    procedure pp00HeaderBand2BeforePrint(Sender: tObject);
    procedure DBNavigator1Click(Sender: tObject; Button: TNavigateBtn);
    procedure MostraDados;
    procedure EdtCec_CodigoEnter(Sender: tObject);
    procedure EdtCec_CodigoKeyPress(Sender: tObject; var Key: Char);
    procedure EdtCec_CodigoExit(Sender: tObject);
    procedure BuscaCentro;
    procedure FormKeyPress(Sender: tObject; var Key: Char);
  private
    { Private declarations }
      {campos}
    CampoEdit    :TEdit;
    CampoDBEdit  :TDBEdit;
  public
    { Public declarations }
  end;

var
  FormCentroCusto: TFormCentroCusto;

implementation

uses Uteis, DataCad, DataCad1, Men0001, ufrmpreviewrb, iniciodb;

{$R *.DFM}






procedure TFormCentroCusto.MudaCorCampos(Sender: tObject);
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

procedure TFormCentroCusto.verificaEdicao;
begin
// verifica estado da tabela em edicao e inclusao
screen.cursor :=crHourglass;
if DataCadastros1.CdsCentroCusto.State in [dsEdit,dsInsert] then
   begin
   if uteis.confirmacao ( 'Deseja salvar alterações ?') = idyes then
      begin
      DataCadastros1.CdsCentroCusto.ApplyUpdates(0);
      Habilitabotoes;
      end
   else
      begin
      DataCadastros1.CdsCentroCusto.Cancel;
      Habilitabotoes;
      end;
   end;
screen.cursor := crDefault;
end;


procedure TFormCentroCusto.HabilitaBotoes;
begin
Bit_novo.Enabled := True;
Bit_Excluir.Enabled := True;
Bit_Sair.Visible := True;
Bit_Relatorio.Enabled := True;
Bit_Gravar.Enabled := False;
Bit_Cancelar.Visible := False;
DbNavigator1.Enabled := True;
end;

procedure TFormCentroCusto.DesabilitaBotoes;
begin
  Bit_novo.Enabled := False;
  Bit_Excluir.Enabled := False;
  Bit_Sair.Visible := False;
  Bit_Relatorio.Enabled := False;
  Bit_Gravar.Enabled := True;
  Bit_Cancelar.Visible := True;
  DbNavigator1.Enabled := False;
end;

procedure TFormCentroCusto.Bit_novoClick(Sender: tObject);
begin
    try
    Screen.Cursor := crHourglass;
    DataCadastros1.CdsCentroCusto.Insert;
    EdtCec_Codigo.Text := '000';
    EdtCec_Codigo.Enabled := false;
    DesabilitaBotoes;
    DbeCEC_descri.setfocus;
    screen.cursor := crdefault;
    except on E:EDataBaseError do
        uteis.erro  (pchar('Erro ao inserir o registro !'+e.message));
    end;
end;

procedure TFormCentroCusto.Bit_ExcluirClick(Sender: tObject);
begin
    if DataCadastros1.CdsCentroCusto.IsEmpty Then   //evita exclussão de registro
       Begin                                      // em uma Tabela Vazia.
           messagebeep($ffff);
           uteis.aviso('Não há conta cadastrada !');
           exit;
       end;
    if uteis.confirmacao ( 'Deseja excluir Centro de Custos atual ?')= Mryes then
       begin
           Screen.cursor :=crHourglass;
           DataCadastros1.CdsCentroCusto.Delete;
           DataCadastros1.CdsCentroCusto.ApplyUpdates(0);
           DataCadastros1.CdsCentroCusto.Refresh;
           screen.cursor := crDefault;
       end;
   MostraDados;    
   DbeCec_Descri.SetFocus;
   DbeCec_Descri.SelectAll;
end;

procedure TFormCentroCusto.Bit_GravarClick(Sender: tObject);
begin
    try
      Screen.Cursor := crHourGlass;
      //salva o registro
      DataCadastros1.CdsCentroCustoCEC_CODIGO.AsString := StrZero(EdtCec_Codigo.Text,EdtCec_Codigo.MaxLength);
      DataCadastros1.CdsCentroCustoEMP_CODIGO.AsString := dbInicio.Empresa.EMP_CODIGO;
      DataCadastros1.CdsCentroCusto.ApplyUpdates(0);
      DataCadastros1.CdsCentroCusto.refresh;
      DataCadastros1.DsCentroCusto.AutoEdit := true;
      Screen.Cursor := crDefault;
      Habilitabotoes;
      EdtCec_Codigo.Enabled := true;
      EdtCec_Codigo.Text    := StrZero(DataCadastros1.CdsCentroCustoCEC_CODIGO.AsString,EdtCec_Codigo.MaxLength);
      DbeCEC_descri.Setfocus;
    except on E:EDataBaseError do
        uteis.erro  (pchar('Erro ao gravar o registro !'+e.message));
    end;
end;

procedure TFormCentroCusto.Bit_SairClick(Sender: tObject);
begin
 close;
end;

procedure TFormCentroCusto.Bit_CancelarClick(Sender: tObject);
begin
    DataCadastros1.CdsCentroCusto.Cancel;
    DataCadastros1.CdsCentroCusto.Refresh;
    HabilitaBotoes;
    if DataCadastros1.CdsCentroCusto.IsEmpty Then      //Ao cancelar ultimo record da
         begin                                    //tabela deixa autoedit=true;
             DataCadastros1.DsCentroCusto.AutoEdit := False;
         end;
    EdtCec_Codigo.Enabled := True;
    EdtCec_Codigo.Text    := StrZero(DataCadastros1.CdsCentroCustoCEC_CODIGO.Value,EdtCec_Codigo.MaxLength);
    MostraDados;
    DbeCEC_descri.Setfocus;
end;

procedure TFormCentroCusto.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
   Screen.OnActiveControlChange := NIL;
end;

procedure TFormCentroCusto.FormCloseQuery(Sender: tObject;
  var CanClose: Boolean);
begin
    Verificaedicao;
    Try
      DataCadastros1.CdsCentroCusto.Close;
    except on E:EdatabaseError do
       begin
          uteis.erro  (Pchar('Impossível Fechar a Tabela "OPERAÇÃO"!'+e.message));
       end;
    end;
    Try
      SqlCdsRelCentroCusto.Close;
    except on E:EdatabaseError do
       begin
          uteis.erro  (Pchar('Impossível Fechar a Tabela "OPERAÇÃO"!'+e.message));
       end;
    end;
end;

procedure TFormCentroCusto.FormShow(Sender: tObject);
begin
    Left := 237;
    Top  := 191;
    {ativa o método ao evento OnActiveControlChange}
    Screen.OnActiveControlChange   := MudaCorCampos;
    Screen.Cursor := crHourglass;
    Try
      {Verifica se compartilha tabela}
      DataCadastros1.CdsCentroCusto.CLose;
      DataCadastros1.CdsCentroCusto.CommandText :=SQLDEF('TABELAS','SELECT * FROM CEC_0000','','CEC_CODIGO','');
      DataCadastros1.CdsCentroCusto.Open;
    except on E:EdatabaseError do
       begin
          uteis.erro  ('Impossível acessar tabela de Centro de Custos!');
       end;
    end;
    Habilitabotoes;
    if DataCadastros1.CdsCentroCusto.IsEmpty Then       //Evita alteração antes que se
       begin                               //inclua registros na tabela.
           DataCadastros1.DsCentroCusto.AutoEdit := False;
       end;
    MostraDados;
    Screen.Cursor := crDefault;
end;

procedure TFormCentroCusto.Bit_RelatorioClick(Sender: tObject);
begin
    Screen.Cursor := crHourGlass;
    Try
      {Verifica se compartilha tabela}
      SqlCdsRelCentroCusto.CLose;
      SqlCdsRelCentroCusto.CommandText :=SQLDEF('TABELAS','SELECT * FROM CEC_0000','','CEC_DESCRI','');
      SqlCdsRelCentroCusto.Open;
      LBL_00_LTITULO1.Caption:='LISTAGEM DOS CENTROS DE CUSTOS';
      LBL_00_LTITULO2.Caption:='ORDEM POR DESCRIÇÃO';
      ppRPRelCentroCusto.DeviceType:='Screen';
      RBuilderPreview(ppRPRelCentroCusto);
      EdtCec_Codigo.SetFocus;
    except on E:EdatabaseError do
       uteis.erro  (pchar('Erro ao gerar o relatório !'+e.message));
    end;
    Screen.Cursor := crDefault;
end;

procedure TFormCentroCusto.pp00HeaderBand2BeforePrint(Sender: tObject);
begin
    LBL_00_EMPRESA.Caption:=dbInicio.Empresa.Razao;
end;

procedure TFormCentroCusto.DBNavigator1Click(Sender: tObject;
  Button: TNavigateBtn);
begin
    MostraDados;
end;

procedure TFormCentroCusto.MostraDados;
begin
    if DataCadastros1.CdsCentroCusto.State in [dsBrowse] then
       begin
           EdtCec_Codigo.Text := DataCadastros1.CdsCentroCustoCEC_CODIGO.AsString;
       end;
end;

procedure TFormCentroCusto.EdtCec_CodigoEnter(Sender: tObject);
begin
    EdtCec_Codigo.SelectAll;
end;

procedure TFormCentroCusto.EdtCec_CodigoKeyPress(Sender: tObject;
  var Key: Char);
begin
    if not (key in ['0'..'9',#8]) then
       begin
          //beep;
          Key := #0;
       end;
end;

procedure TFormCentroCusto.EdtCec_CodigoExit(Sender: tObject);
begin
    if (DataCadastros1.CdsCentroCusto.State in [dsBrowse]) and not (DataCadastros1.CdsCentroCusto.IsEmpty) then
        begin
            EdtCec_Codigo.Text := StrZero(EdtCec_Codigo.Text, EdtCec_Codigo.Maxlength);
            Screen.Cursor := crHourGlass;
            BuscaCentro;
            Screen.Cursor := crDefault;
        end;
end;

procedure TFormCentroCusto.BuscaCentro;
begin
    if EdtCec_Codigo.Text <> '' then
       begin
           if DataCadastros1.CdsCentroCusto.Locate('CEC_CODIGO',EdtCec_Codigo.Text,[])= False then
              begin
                  Messagebeep($ffffffff);
                  uteis.aviso('Código do Centro de Custos não cadastrado!!!');
                  EdtCec_Codigo.Text := DataCadastros1.CdsCentroCustoCEC_CODIGO.AsString;
              end;
       end;
end;

procedure TFormCentroCusto.FormKeyPress(Sender: tObject; var Key: Char);
begin
    if key = #27 then
       begin
//          if Bit_Cancelar.Visible then
//             Bit_Cancelar.Click
//          else
//          if Bit_Sair.Visible then
//             Bit_Sair.Click;
          close;
          key := #0;
       end;
end;

end.
