unit uCadastroConversaoMedida;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DBCtrls, Grids, DBGrids, Mask, Data.DB;

type
  TFormCadastroConversaoMedida = class(TForm)
    Panel2: TPanel;
    Bit_novo: TBitBtn;
    Bit_Excluir: TBitBtn;
    Bit_Gravar: TBitBtn;
    Bit_Cancelar: TBitBtn;
    Bit_Sair: TBitBtn;
    DBNavigator1: TDBNavigator;
    Label1: TLabel;
    dbedtCONV_UND_DE: TDBEdit;
    dbedtCONV_UND_PARA: TDBEdit;
    dbedtCONV_FATOR: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label2: TLabel;
    dbrgrpOperacao: TDBRadioGroup;
    lblFator: TLabel;
    grpFatores: TGroupBox;
    dbgrdFatores: TDBGrid;
    Label3: TLabel;
    procedure Bit_SairClick(Sender: tObject);
    procedure Bit_novoClick(Sender: tObject);
    procedure Bit_ExcluirClick(Sender: tObject);
    procedure Bit_GravarClick(Sender: tObject);
    procedure Bit_CancelarClick(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);

  private
    { Private declarations }

  public
    { Public declarations }
    procedure HabilitaDesbilitaBotoes(bStatus:Boolean);
    procedure BotoesAcesso;
  end;

var
  FormCadastroConversaoMedida: TFormCadastroConversaoMedida;

implementation

uses
  DataCad, Men0001, uteis, iniciodb;

{$R *.dfm}

procedure TFormCadastroConversaoMedida.Bit_SairClick(Sender: tObject);
begin
   Close;
end;

procedure TFormCadastroConversaoMedida.BotoesAcesso;
begin
     if assigned(FormCadastroConversaoMedida) then
     begin
       Bit_novo.Enabled := Uteis.AcessoUsuario('CadastrosTabelas',DBInicio.Usuario.CODIGO,FormCadastroConversaoMedida).Incluir;
       Bit_Excluir.Enabled := Uteis.AcessoUsuario('CadastrosTabelas',DBInicio.Usuario.CODIGO,FormCadastroConversaoMedida).Exluir;
       DataCadastros.dsConversaoMedida.AutoEdit := Uteis.AcessoUsuario('CadastrosTabelas',DBInicio.Usuario.CODIGO,FormCadastroConversaoMedida).Alterar;
     end;
end;

procedure TFormCadastroConversaoMedida.Bit_novoClick(Sender: tObject);
begin
   try
      DataCadastros.CdsConversaoMedida.Insert;
      DataCadastros.CdsConversaoMedidaEMP_CODIGO.AsString := dbInicio.Empresa.EMP_CODIGO;
      DataCadastros.CdsConversaoMedidaCONV_OPERACAO.AsString := 'D';
      HabilitaDesbilitaBotoes(True);
      uteis.HabilitaIncluir('CadastrosTabelas',DBInicio.Usuario.CODIGO,FormCadastroConversaoMedida);
      dbedtCONV_UND_DE.SetFocus;
    except
        uteis.erro  ('Erro ao inserir registro !');
    end
end;

procedure TFormCadastroConversaoMedida.HabilitaDesbilitaBotoes(
  bStatus: Boolean);
begin
    BotoesAcesso;
    Bit_novo.Enabled       := not bStatus;
    Bit_Excluir.Enabled    := not bStatus;
    Bit_Gravar.Enabled     := bStatus;
    Bit_Cancelar.Enabled   := bStatus;
    Bit_Sair.Enabled       := not bStatus;
    DbNavigator1.Enabled   := not bStatus;

end;

procedure TFormCadastroConversaoMedida.Bit_ExcluirClick(Sender: tObject);
begin
   if (DataCadastros.CdsConversaoMedida.IsEmpty) then
      begin
         uteis.aviso('Não existe registro para ser excluído');
      end
   else
      begin
         if uteis.confirmacao ( 'Deseja excluir o Registro ?') = Mryes then
            begin
                Screen.Cursor := crHourGlass;
                DataCadastros.CdsConversaoMedida.Delete;
                DataCadastros.CdsConversaoMedida.ApplyUpdates(0);
                Screen.Cursor := crDefault;
            end;
      end
end;

procedure TFormCadastroConversaoMedida.Bit_GravarClick(Sender: tObject);
begin
   if (dbedtCONV_UND_DE.Text = '') then
      begin
         uteis.aviso('Informe a unidade de medida');
         dbedtCONV_UND_DE.SetFocus;
         dbedtCONV_UND_DE.SelectAll;
      end
   else
   if (dbedtCONV_UND_PARA.Text = '') then
      begin
         uteis.aviso('Informe a unidade de medida');
         dbedtCONV_UND_PARA.SetFocus;
         dbedtCONV_UND_PARA.SelectAll;
      end
   else
   if ((dbedtCONV_FATOR.Text = '')or(DataCadastros.CdsConversaoMedidaCONV_FATOR.AsFloat <= 0)) then
      begin
         uteis.aviso('Informe o Fator');
         dbedtCONV_FATOR.SetFocus;
         dbedtCONV_FATOR.SelectAll;
      end
   else
      begin
         HabilitaDesbilitaBotoes(False);
         DataCadastros.CdsConversaoMedida.ApplyUpdates(0);
         DataCadastros.CdsConversaoMedida.Refresh;
         DataCadastros.dsConversaoMedida.AutoEdit := true;

      end;
end;

procedure TFormCadastroConversaoMedida.Bit_CancelarClick(Sender: tObject);
begin
   HabilitaDesbilitaBotoes(False);
   DataCadastros.CdsConversaoMedida.Cancel;
   DataCadastros.CdsConversaoMedida.Refresh;
   DataCadastros.dsConversaoMedida.AutoEdit := true;
end;

procedure TFormCadastroConversaoMedida.FormShow(Sender: tObject);
begin
   HabilitaDesbilitaBotoes(False);
   DataCadastros.CdsConversaoMedida.Open;
end;

procedure TFormCadastroConversaoMedida.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
   Action := CaFree;
end;

procedure TFormCadastroConversaoMedida.FormDestroy(Sender: TObject);
begin
     FormCadastroConversaoMedida := Nil;
end;

end.
