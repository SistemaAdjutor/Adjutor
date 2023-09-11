{************************************************************
 Programa...: CUS0001  - Nome formulario = FormCusto
 Objetivo...: Cadastro de Fatores Econômicos de custos
 Analista...: Márcio Neu Pacheco
 Programador: Márcio

 Comentários: Limitado a três registro (classe de empresa)

 Criação..........: 09/99
 Ultima Alteração.: 09/00
 Alterado por.....: Márcio Pacheco

*************************************************************}
unit Cus0001;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, DBCtrls, Mask, ExtCtrls, ComCtrls, Buttons, DB, DBTables, RWFunc;

type
  TFormCusto = class(TForm)
    DBEdit2: TDBEdit;
    RadTipoEmpresa: TRadioGroup;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    DBeCus_uni: TDBEdit;
    Label13: TLabel;
    DBeCus_Maqu: TDBEdit;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    DBeCus_Desp: TDBEdit;
    Label4: TLabel;
    DBeCus_Des_vari: TDBEdit;
    Label5: TLabel;
    DBeCus_Icms: TDBEdit;
    Label6: TLabel;
    DBeCus_Fed: TDBEdit;
    Label7: TLabel;
    DBeCus_Prop: TDBEdit;
    Label8: TLabel;
    DBeCus_Lucr: TDBEdit;
    Label9: TLabel;
    DBeCus_Fin: TDBEdit;
    Label10: TLabel;
    DBeCus_CRep: TDBEdit;
    GroupBox3: TGroupBox;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    DbeCus_fixo: TDBEdit;
    DbeCus_comple: TDBEdit;
    DbeCus_Peca: TDBEdit;
    Dbe_CusMaoIndireta: TDBEdit;
    DbeCus_Perda: TDBEdit;
    GroupBox4: TGroupBox;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    GroupBox5: TGroupBox;
    Label2: TLabel;
    DbeCus_frete: TDBEdit;
    Panel1: TPanel;
    Bit_Gravar: TBitBtn;
    Bit_Cancelar: TBitBtn;
    Bit_Sair: TBitBtn;
    procedure MudaCorCampos(Sender: tObject);
    procedure Bit_GravarClick(Sender: tObject);
    procedure Bit_CancelarClick(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure Bit_SairClick(Sender: tObject);
    procedure FormCloseQuery(Sender: tObject; var CanClose: Boolean);
    procedure RadTipoEmpresaClick(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure DBEdit1Exit(Sender: tObject);
    procedure DBEdit3Exit(Sender: tObject);
    procedure DBEdit4Exit(Sender: tObject);
    procedure DBEdit5Exit(Sender: tObject);
    procedure DBEdit6Exit(Sender: tObject);
    procedure DBEdit7Exit(Sender: tObject);
    procedure DbeCus_freteExit(Sender: tObject);
    procedure DesabilitaBotoes;
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    {campos}
    CampoDBEdit  :TDBEdit;
    procedure HabilitaBotoes;
  public
    { Public declarations }
    procedure VerificaEdicao;
  end;

var
  FormCusto: TFormCusto;

implementation

{$R *.DFM}

uses Uteis, DataCad1,DmProdu, DataCad;





procedure TFormCusto.MudaCorCampos(Sender: tObject);
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
end;

procedure TFormCusto.verificaEdicao;
begin
  if DmProducao.DsFatorCustos.State in [dsEdit,dsInsert] then
     begin
         if uteis.confirmacao ( 'Deseja salvar alterações ?') = idyes then
            begin
                DmProducao.CdsFatorCustos.ApplyUpdates(0);
                DmProducao.CdsFatorCustos.Refresh;
                Desabilitabotoes;
            end
         else
           begin
               DmProducao.CdsFatorCustos.Cancel;
               HabilitaBotoes;
           end;
     end;
end;

procedure TFormCusto.HabilitaBotoes;
begin
    Bit_gravar.Enabled   := False;
    Bit_Cancelar.Enabled := False;
    Bit_Sair.Enabled     := True;
end;

procedure TFormCusto.DesabilitaBotoes;
begin
    Bit_gravar.Enabled   := True;
    Bit_Cancelar.Enabled := True;
    Bit_Sair.Enabled     := False;
end;

procedure TFormCusto.Bit_GravarClick(Sender: tObject);
begin
    screen.cursor := crHourglass;
    // validar juros
    if DmProducao.CdsFatorCustosVCT_30D.AsCurrency = 0 then DmProducao.CdsFatorCustosVCT_30D.AsCurrency:=DmProducao.CdsFatorCustosVCT_VISTA.AsCurrency;
    if DmProducao.CdsFatorCustosVCT_45D.AsCurrency = 0 then DmProducao.CdsFatorCustosVCT_45D.AsCurrency:=DmProducao.CdsFatorCustosVCT_30D.AsCurrency;
    if DmProducao.CdsFatorCustosVCT_60D.AsCurrency = 0 then DmProducao.CdsFatorCustosVCT_60D.AsCurrency:=DmProducao.CdsFatorCustosVCT_45D.AsCurrency;
    if DmProducao.CdsFatorCustosVCT_75D.AsCurrency = 0 then DmProducao.CdsFatorCustosVCT_75D.AsCurrency:=DmProducao.CdsFatorCustosVCT_60D.AsCurrency;
    if DmProducao.CdsFatorCustosVCT_90D.AsCurrency = 0 then DmProducao.CdsFatorCustosVCT_90D.AsCurrency:=DmProducao.CdsFatorCustosVCT_75D.AsCurrency;
    DmProducao.CdsFatorCustos.ApplyUpdates(0);
    DmProducao.CdsFatorCustos.Refresh;
    Desabilitabotoes; HabilitaBotoes;
    DbeCus_uni.setfocus;
    screen.cursor := crDefault;
end;

procedure TFormCusto.Bit_CancelarClick(Sender: tObject);
begin
    screen.Cursor := crHourglass;
    DmProducao.CdsFatorCustos.Cancel;
    DmProducao.CdsFatorCustos.Refresh;
    if DmProducao.CdsFatorCustos.IsEmpty then
       DmProducao.DsFatorCustos.AutoEdit := False;
    HabilitaBotoes;
    DbeCus_uni.setfocus;
    screen.Cursor :=crDefault;
end;

procedure TFormCusto.FormShow(Sender: tObject);
begin
    screen.cursor := crHourglass;
    {ativa o método ao evento OnActiveControlChange}
    Screen.OnActiveControlChange   := MudaCorCampos;
    try
      DmProducao.CdsFatorCustos.Close;
      DmProducao.CdsFatorCustos.CommandText := SQLDEF('PRODUTOS','SELECT V1.* FROM VCT0000 V1 ','','V1.VCT_CLASSE','V1.');
      DmProducao.CdsFatorCustos.Open;
      {}
      DataCadastros.sqlUpdate.Close;
      DataCadastros.SqlUpdate.sql.text :=SQLDEF('PARAMETROS','SELECT P1.PMT_EMPRESACLASSE FROM PRMT0001 P1','','P1.EMP_CODIGO','P1.');
      DataCadastros.sqlUpdate.Open;
      RadTipoEmpresa.ItemIndex:=DataCadastros.sqlUpdate.FieldByName('PMT_EMPRESACLASSE').AsInteger;
      HabilitaBotoes;
    except on E:EdatabaseError do
      begin
          uteis.erro  (Pchar('Erro ao abrir as Tabelas !'+e.message));
      end;
    end;
    Screen.cursor := crDefault;
end;

procedure TFormCusto.Bit_SairClick(Sender: tObject);
begin
    close;
end;

procedure TFormCusto.FormCloseQuery(Sender: tObject;
  var CanClose: Boolean);
begin
    VerificaEdicao;
end;

procedure TFormCusto.FormDestroy(Sender: TObject);
begin
     FormCusto := Nil;
end;

procedure TFormCusto.RadTipoEmpresaClick(Sender: tObject);
var
  wSeleciona :String;
begin
    if RadTipoEmpresa.ItemIndex = 0 then
       begin
           DmProducao.CdsFatorCustos.Locate('VCT_CLASSE','0',[]);
       end;
    if RadTipoEmpresa.ItemIndex = 1 then
       begin
           DmProducao.CdsFatorCustos.Locate('VCT_CLASSE','1',[]);
       end;
    if RadTipoEmpresa.ItemIndex = 2 then
       begin
           DmProducao.CdsFatorCustos.Locate('VCT_CLASSE','2',[]);
       end;
end;

procedure TFormCusto.FormClose(Sender: tObject; var Action: TCloseAction);
begin
    Screen.OnActiveControlChange := NIL;
    try
      DmProducao.CdsFatorCustos.Close;
      DataCadastros1.SqlParametros.Close;
    except on E:EdataBaseError do
      uteis.erro  (pchar('Erro ao fechar as tabelas !'+e.Message));
    end;
    Action := CaFree;
end;

procedure TFormCusto.DBEdit1Exit(Sender: tObject);
begin
    if DmProducao.CdsFatorCustosVCT_VISTA.AsCurrency > 99  then
       begin
           uteis.erro  ('Juros não pode ser maior que 99%');
           DBEdit1.SetFocus;
       end;
end;

procedure TFormCusto.DBEdit3Exit(Sender: tObject);
begin
    if DmProducao.CdsFatorCustosVCT_30D.AsCurrency > 99  then
       begin
           uteis.erro  ('Juros não pode ser maior que 99%');
           DBEdit3.SetFocus;
       end;
end;

procedure TFormCusto.DBEdit4Exit(Sender: tObject);
begin
    if DmProducao.CdsFatorCustosVCT_45D.AsCurrency > 99  then
       begin
           uteis.erro  ('Juros não pode ser maior que 99%');
           DBEdit4.SetFocus;
       end;
end;

procedure TFormCusto.DBEdit5Exit(Sender: tObject);
begin
    if DmProducao.CdsFatorCustosVCT_60D.AsCurrency > 99  then
       begin
           uteis.erro  ('Juros não pode ser maior que 99%');
           DBEdit5.SetFocus;
       end;
end;

procedure TFormCusto.DBEdit6Exit(Sender: tObject);
begin
    if DmProducao.CdsFatorCustosVCT_75D.AsCurrency > 99  then
       begin
           uteis.erro  ('Juros não pode ser maior que 99%');
           DBEdit6.SetFocus;
       end;
end;

procedure TFormCusto.DBEdit7Exit(Sender: tObject);
begin
    if DmProducao.CdsFatorCustosVCT_90D.AsCurrency > 99  then
       begin
           uteis.erro  ('Juros não pode ser maior que 99%');
           DBEdit7.SetFocus;
       end;
end;

procedure TFormCusto.DbeCus_freteExit(Sender: tObject);
begin
    if DmProducao.CdsFatorCustosVCT_DESC.AsCurrency > 99  then
       begin
           uteis.erro  ('Desconto não pode ser maior que 99%');
           DbeCus_frete.SetFocus;
       end;
end;

end.
