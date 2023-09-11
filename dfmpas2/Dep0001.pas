unit Dep0001;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, Buttons, ExtCtrls, Mask,db;

type
  TFormDepartamento = class(TForm)
    Panel1: TPanel;
    Bit_Cancelar: TBitBtn;
    Bit_Sair: TBitBtn;
    Bit_Excluir: TBitBtn;
    Bit_Gravar: TBitBtn;
    Bit_novo: TBitBtn;
    Panel3: TPanel;
    Bit_Relatorio: TBitBtn;
    Panel2: TPanel;
    DBNavigator1: TDBNavigator;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Edt_codigo: TEdit;
    procedure Bit_novoClick(Sender: tObject);
    procedure Bit_GravarClick(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure Bit_CancelarClick(Sender: tObject);
    procedure Bit_SairClick(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure Bit_ExcluirClick(Sender: tObject);
    procedure DBNavigator1Click(Sender: tObject; Button: TNavigateBtn);
    procedure Edt_codigoKeyPress(Sender: tObject; var Key: Char);
    procedure Edt_codigoExit(Sender: tObject);
  private
    { Private declarations }
    CampoEdit : TEdit;
    CampoDbEdit : TDbEdit;
    procedure MudaCorCampos(Sender: tObject);
  public
    { Public declarations }
     Procedure DesabilitaBotoes;
     Procedure HabilitaBotoes;

  end;

var
  FormDepartamento: TFormDepartamento;

implementation

uses Uteis, DataMov, DataMov2;

{$R *.dfm}




procedure TFormDepartamento.Bit_novoClick(Sender: tObject);
begin
   try
     DataMovimento2.CdsDepartamento.Insert;
     Edt_codigo.Text := FormatFloat('000',Datamovimento2.CdsDepartamentoDEP_CODIGO.AsCurrency);

     DesabilitaBotoes;
     DbEdit1.SetFocus;

   except
       On e:EdatabaseError do
          begin
             uteis.erro  (pchar('Erro ao inserir registro !'+e.message));
          end;
   end;

end;

procedure TFormDepartamento.Bit_GravarClick(Sender: tObject);
begin
    Datamovimento2.CdsDepartamento.ApplyUpdates(0);
    HabilitaBotoes;
end;

procedure TFormDepartamento.FormShow(Sender: tObject);
begin
     DataMovimento2.CdsDepartamento.Open;
     Edt_codigo.Text := FormatFloat('000',Datamovimento2.CdsDepartamentoDEP_CODIGO.AsCurrency);
     Edt_codigo.SetFocus;
     Screen.OnActiveControlChange := mudaCorCampos;
end;

procedure TFormDepartamento.DesabilitaBotoes;
begin
   {}
  Bit_novo.Enabled := False;
  Bit_Excluir.Enabled := False;
  Bit_Sair.Visible := False;
  Bit_Relatorio.Enabled := False;
  Bit_Gravar.Enabled := True;
  Bit_Cancelar.Visible := True;
  DbNavigator1.Enabled := False;
  Edt_codigo.Enabled := false;
  Edt_codigo.Color := $00D6D6D6;

end;

procedure TFormDepartamento.HabilitaBotoes;
begin
{}
      Bit_novo.Enabled    := True;
      Bit_Excluir.Enabled := True;
      Bit_Sair.Visible    := True;
      Bit_Relatorio.Enabled := True;
      Bit_Gravar.Enabled    := False;
      Bit_Cancelar.Visible  := False;
      DbNavigator1.Enabled  := True;
      Edt_codigo.Enabled    := True;
      Edt_codigo.Color      := clWindow;

end;

procedure TFormDepartamento.Bit_CancelarClick(Sender: tObject);
begin
    DataMovimento2.CdsDepartamento.Cancel;
    Edt_codigo.Text := FormatFloat('000',Datamovimento2.CdsDepartamentoDEP_CODIGO.AsCurrency);
    HabilitaBotoes;
end;

procedure TFormDepartamento.Bit_SairClick(Sender: tObject);
begin
    close;
end;

procedure TFormDepartamento.MudaCorCampos(Sender: tObject);
begin
   {}
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

procedure TFormDepartamento.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
    if (dataMovimento2.CdsDepartamento.State = dsEdit) or (dataMovimento2.CdsDepartamento.State = dsInsert) then
       uteis.aviso('"ATENÇAO" conclua a operação atual ! clique em gravar ou cancelar !');
    Screen.OnActiveControlChange := nil;
end;

procedure TFormDepartamento.Bit_ExcluirClick(Sender: tObject);
begin
    If uteis.confirmacao ( 'Deseja excluir o departamento selecionado ?')=mryes then
        begin
            DataMovimento2.CdsDepartamento.Delete;
            HabilitaBotoes;
            Edt_codigo.Text := FormatFloat('000',Datamovimento2.CdsDepartamentoDEP_CODIGO.AsCurrency);
        end;
end;

procedure TFormDepartamento.DBNavigator1Click(Sender: tObject;
  Button: TNavigateBtn);
begin
   Edt_codigo.Text := FormatFloat('000',Datamovimento2.CdsDepartamentoDEP_CODIGO.AsCurrency);
end;

procedure TFormDepartamento.Edt_codigoKeyPress(Sender: tObject;
  var Key: Char);
begin
   if not (key in['0'..'9',#8]) then
      begin
          Key := #0;
      end;
end;

procedure TFormDepartamento.Edt_codigoExit(Sender: tObject);
begin
   if (ActiveControl.Name = 'Bit_novo') or
      (ActiveControl.Name = 'Bit_Sair') then
      exit;
   if (edt_codigo.Text <> '') then
      begin
          if (DataMovimento2.CdsDepartamento.State <> DsEdit) or (DataMovimento2.CdsDepartamento.State <>  Dsinsert) then
             begin
                if DataMovimento2.CdsDepartamento.Locate('DEP_CODIGO',Edt_codigo.Text,[])= false then
                   begin
                       uteis.aviso('Departamento não encontrado com código informado !');
                       Edt_codigo.SetFocus;
                       Edt_codigo.SelectAll;
                   end;
             end;
      end;
end;

end.
