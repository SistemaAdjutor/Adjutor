unit ICMS0000;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, StdCtrls, Mask, DBCtrls, Buttons, ExtCtrls,db,RwFunc;

type
  TFormAliqICms = class(TForm)
    Panel2: TPanel;
    Bit_novo: TBitBtn;
    Bit_Excluir: TBitBtn;
    Bit_Gravar: TBitBtn;
    Bit_Cancelar: TBitBtn;
    Bit_Sair: TBitBtn;
    DBGridIcms: TDBGrid;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    DbeIcms: TDBEdit;
    DbeSub: TDBEdit;
    DbeIE_Subst: TDBEdit;
    DBEDestino: TDBEdit;
    DBEDestinoDesc: TDBEdit;
    DBEIbge: TDBEdit;
    DBEdit1: TDBEdit;
    CbSubst_SN: TComboBox;
    CbApliSoma: TComboBox;
    Label12: TLabel;
    DBEdit2: TDBEdit;
    Label13: TLabel;
    Panel3: TPanel;
    Label1: TLabel;
    CbUf: TComboBox;
    DBNavigator1: TDBNavigator;
    Label14: TLabel;
    DBEdit3: TDBEdit;
    Label15: TLabel;
    lbl1: TLabel;
    lbl2: TLabel;
    DBEdit4: TDBEdit;
    Label11: TLabel;
    dbIcmTipoCalculoDifal: TDBRadioGroup;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure MudaCorCampos(Sender: tObject);
    procedure HabilitaBotoes;
    procedure DesabilitaBotoes;
    procedure Bit_novoClick(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure Bit_ExcluirClick(Sender: tObject);
    procedure Bit_GravarClick(Sender: tObject);
    procedure Bit_CancelarClick(Sender: tObject);
    procedure Bit_SairClick(Sender: tObject);
    procedure CbUfClick(Sender: tObject);
    procedure CbUfExit(Sender: tObject);
    procedure DBNavigator1Click(Sender: tObject; Button: TNavigateBtn);
    procedure FormCloseQuery(Sender: tObject; var CanClose: Boolean);
    procedure VerificaEdicao;
    procedure FormKeyPress(Sender: tObject; var Key: Char);
    procedure DBGridIcmsDrawColumnCell(Sender: tObject; const Rect: TRect;      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure CbSubst_SNChange(Sender: tObject);
    procedure CbSubst_SNEnter(Sender: tObject);
    procedure CbSubst_SNExit(Sender: tObject);
    procedure DBEDestinoChange(Sender: tObject);
    procedure CbSubst_SNKeyPress(Sender: tObject; var Key: Char);
    procedure CbApliSomaEnter(Sender: tObject);
    procedure CbApliSomaExit(Sender: tObject);
    procedure CbApliSomaChange(Sender: tObject);
    procedure CbApliSomaKeyPress(Sender: tObject; var Key: Char);
    procedure FormCreate(Sender: tObject);
    procedure FormDestroy(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);

  private
         wVariacoes :string;
         CampoEdit    :TEdit;
         CampoDBEdit  :TDBEdit;
  public
    { Public declarations }
    procedure BotoesAcesso;
  end;

var
  FormAliqICms: TFormAliqICms;

implementation

USES Uteis, DataCad1, DataCad, InicioDb;

{$R *.DFM}

procedure TFormAliqICms.MudaCorCampos(Sender: tObject);
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

procedure TFormAliqICms.HabilitaBotoes;
begin
  Bit_novo.Enabled     := True;
  Bit_Excluir.Enabled  := True;
  Bit_Sair.Enabled     := True;
  DbGridIcms.Enabled   := True;
  Bit_Gravar.Enabled   := False;
  Bit_cancelar.Enabled := False;
  DbNavigator1.Enabled := True;
  BotoesAcesso;
end;

procedure TFormAliqICms.DesabilitaBotoes;
begin
  BotoesAcesso;
  Bit_novo.Enabled     :=False;
  Bit_Excluir.Enabled  :=False;
  Bit_Sair.Enabled     :=False;
  DbGridIcms.Enabled   :=False;
  Bit_Gravar.Enabled   :=True;
  Bit_cancelar.Enabled :=True;
  DbNavigator1.Enabled := False;

end;

procedure TFormAliqICms.Bit_novoClick(Sender: tObject);
begin
    cbUf.ItemIndex := -1;
    DataCadastros1.CdsICMS.Insert;
    DesabilitaBotoes;
    uteis.HabilitaIncluir('CadastrosFiscal',DBInicio.Usuario.CODIGO,FormAliqICms);
    CbUF.SetFocus;
end;

procedure TFormAliqICms.FormShow(Sender: tObject);
begin
//    Left := 003;
//    Top  := 112;

    {ativa o método ao evento OnActiveControlChange}
    Screen.OnActiveControlChange   := MudaCorCampos;
    Screen.Cursor := crHourGlass;
    Try
      DataCadastros1.CdsICMS.Close;
      DataCAdastros1.CdsICMS.CommandText := SQLDEF('ICMS','SELECT T1.* FROM ICM0000 T1','','T1.ICM_REGISTRO','T1.');
      DataCadastros1.CdsICMS.Open;
      CbUf.Text := DataCadastros1.CdsICMSICM_DESTINO.AsString;
      DbGridIcms.SetFocus;
    except on E:EdatabaseError do
       uteis.erro  (Pchar('Impossível abrir tabela !'+e.message));
    end;
    screen.Cursor := crDefault;
    BotoesAcesso;
end;

procedure TFormAliqICms.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
    Screen.OnActiveControlChange := NIL;
	Action := CaFree;
end;

procedure TFormAliqICms.Bit_ExcluirClick(Sender: tObject);
begin
    if uteis.confirmacao ( 'Confirma a exclusão da aliquota de ICMS ?')= Mryes then
       Begin
          DataCadastros1.CdsICMS.Delete;
          DataCadastros1.CdsICMS.ApplyUpdates(0);
       end;
    CbUF.SetFocus;
end;

procedure TFormAliqICms.Bit_GravarClick(Sender: tObject);
begin
    try
      if DBEDestino.Text = '' Then
         begin
             uteis.aviso('O Campo Sigla deve ser preenchido');
             CbUF.SetFocus;
             exit;
         end;
      if DBEDestinoDesc.Text = '' Then
         begin
             uteis.aviso('O Campo Estado deve ser preenchido');
             DBEDestinoDesc.SetFocus;
             exit;
         end;
      if DBEIbge.Text = '' Then
         begin
             uteis.aviso('O Campo Código do IBGE deve ser preenchido');
             DBEIbge.SetFocus;
             exit;
         end;
      DataCadastros1.CdsICMSEMP_CODIGO.AsString := dbInicio.EMPRESA.EMP_CODIGO;
      DataCadastros1.CdsICMS.ApplyUpdates(0);
      DataCadastros1.CdsICMS.Refresh;
      HabilitaBotoes;
      CbUf.ItemIndex := -1;
      DbeIcms.SetFocus;
    except on E:EdatabaseError do
        uteis.erro  ('Erro ao gravar registro !');
    end;
end;

procedure TFormAliqICms.BitBtn1Click(Sender: TObject);
begin
  MessageDlg('Cálculo com base simples:' + #13 + 'Base = Valor da Operação', mtInformation, [mbOK], 0 );
end;

procedure TFormAliqICms.BitBtn2Click(Sender: TObject);
begin
  MessageDlg('Cálculo com base por dentro :' + #13 + 'Base = (Valor da Operação-ICMSInterestadual) / (1 – (Alíquota Interestadual / 100))', mtInformation, [mbOK], 0 );
end;

procedure TFormAliqICms.Bit_CancelarClick(Sender: tObject);
begin
    DataCadastros1.CdsICMS.Cancel;
    HabilitaBotoes;
    CbUf.ItemIndex := -1;
    DbeIcms.SetFocus;
end;

procedure TFormAliqICms.Bit_SairClick(Sender: tObject);
begin
    close;
end;

procedure TFormAliqICms.BotoesAcesso;
begin
     if assigned(FormAliqICms) then
     begin
       Bit_novo.Enabled := Uteis.AcessoUsuario('CadastrosFiscal',DBInicio.Usuario.CODIGO,FormAliqICms).Incluir;
       Bit_Excluir.Enabled := Uteis.AcessoUsuario('CadastrosFiscal',DBInicio.Usuario.CODIGO,FormAliqICms).Exluir;
       DataCadastros1.DsICMS.AutoEdit := Uteis.AcessoUsuario('CadastrosFiscal',DBInicio.Usuario.CODIGO,FormAliqICms).Alterar;
     end;
end;

procedure TFormAliqICms.CbUfClick(Sender: tObject);
begin
    if DataCadastros1.CdsICMS.State = DsBrowse then
        begin
            if DataCadastros1.CdsICMS.Locate('ICM_DESTINO',CbUf.Text,[])= False then
                begin
                    uteis.aviso('Não há aliquota cadastrada para o destino informado !');
                    CbUf.ItemIndex := -1;
                    CbUf.Text := '';
                end;
        end;
end;

procedure TFormAliqICms.CbUfExit(Sender: tObject);
begin
    if DataCadastros1.CdsICMS.State in [dsInsert] then
       begin
           {Verifica na insercao}
           Screen.Cursor := crHourGlass;
           DataCadastros.sqlUpdate.close;
           DataCadastros.SqlUpdate.sql.text :=SQLDEF('ICMS','Select X1.* from ICM0000 X1 ','where X1.ICM_DESTINO = '''+CbUf.Text+'''','X1.ICM_DESTINO','X1.');
           DataCadastros.sqlUpdate.Open;
           if DataCadastros.sqlUpdate.IsEmpty then
              begin
                  DBEDestino.Field.Text := CbUf.Text;
                  DbeIcms.SetFocus;
              end
           else
              begin
                  {Localizou o Estado}
                  uteis.aviso('Estado já cadastrado !');
                  DataCadastros1.CdsICMS.Cancel;
                  DataCadastros1.CdsICMS.Locate('ICM_DESTINO',CbUf.Text,[]);
                  HabilitaBotoes;
                  DbeIcms.SetFocus;
              end;
           Screen.Cursor := crDefault;
       end;
end;

procedure TFormAliqICms.DBNavigator1Click(Sender: tObject;
  Button: TNavigateBtn);
begin
    CbUf.Text := DataCadastros1.CdsICMSICM_DESTINO.AsString;
end;

procedure TFormAliqICms.FormCloseQuery(Sender: tObject;
  var CanClose: Boolean);
begin
    Verificaedicao;
    Screen.cursor := crHourGlass;
    Try
      DataCadastros1.CdsICMS.Close;
    except on E:EdatabaseError do
       uteis.erro  (Pchar('Erro ao Fechar as tabelas !'+e.message));
    end;
    Screen.cursor := crDefault;
end;

procedure TFormAliqICms.FormCreate(Sender: tObject);
begin
     wVariacoes := dbInicio.GetParametroSistema('PMT_VARIACOES');
end;

procedure TFormAliqICms.FormDestroy(Sender: TObject);
begin
     FormAliqICms := Nil;
end;

procedure TFormAliqICms.VerificaEdicao;
begin
    // verifica estado da tabela em edicao e inclusao
    screen.cursor :=crHourglass;
    if DataCadastros1.CdsICMS.State in [dsEdit,dsInsert] then
       begin
           if uteis.confirmacao ( 'Deseja salvar alterações ?') = idyes then
              begin
                  DataCadastros1.CdsICMS.ApplyUpdates(0);
                  Habilitabotoes;
              end
           else
              begin
                  DataCadastros1.CdsICMS.Cancel;
                  Habilitabotoes;
              end;
       end;
    screen.cursor := crDefault;
end;

procedure TFormAliqICms.FormKeyPress(Sender: tObject; var Key: Char);
begin
    if key = #27 then
       begin
          close;
          key := #0;
       end;
end;

procedure TFormAliqICms.DBGridIcmsDrawColumnCell(Sender: tObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
    if (not odd(DataCadastros1.CdsICMS.RecNo)) then
       if not (GdSelected in State) then
          begin
              DBGridIcms.Canvas.Brush.Color := $00FFEFDF;
              DBGridIcms.Canvas.FillRect(rect);
              DBGridIcms.DefaultDrawDataCell(Rect,column.Field,state);
          end;

end;

procedure TFormAliqICms.CbSubst_SNChange(Sender: tObject);
begin
   if  not ( DataCadastros1.CdsICMS.State in [dsInsert] ) then
      begin
         if  not ( DataCadastros1.CdsICMS.State in [dsEdit] ) then
             begin
                DataCadastros1.CdsICMS.edit;
                DesabilitaBotoes;
             end;
       end;
end;

procedure TFormAliqICms.CbSubst_SNEnter(Sender: tObject);
begin
   CbSubst_SN.Color := $0080FFFF;  // amarela
end;

procedure TFormAliqICms.CbSubst_SNExit(Sender: tObject);
begin
   CbSubst_SN.Color := clWindow;
end;

procedure TFormAliqICms.DBEDestinoChange(Sender: tObject);
begin

   { 04/11/2009 jko }
   if (DataCadastros1.DsICMS.DataSet.Active)
        and(not DataCadastros1.DsICMS.DataSet.IsEmpty)
        and(DataCadastros1.DsICMS.DataSet.State = dsBrowse) then
           begin
              {substituição tributária S-im/N-ão}
              if (not DataCadastros1.DsICMS.DataSet.FieldByname('ICM_SUB_TRI_SN').IsNull) then
                 begin
                    if (DataCadastros1.DsICMS.DataSet.FieldByname('ICM_SUB_TRI_SN').AsString = 'S') then
                         CbSubst_SN.ItemIndex := 1
                    else
                         CbSubst_SN.ItemIndex := 0;
                end
              else
                begin
                   CbSubst_SN.ItemIndex := -1;
                 end;
              {aplica e soma o MVA  S-im/N-ão}
              if (not DataCadastros1.DsICMS.DataSet.FieldByname('SOMA_MVA_SN').IsNull) then
                 begin
                    if (DataCadastros1.DsICMS.DataSet.FieldByname('SOMA_MVA_SN').AsString = 'S') then
                         CbApliSoma.ItemIndex := 1
                    else
                         CbApliSoma.ItemIndex := 0;
                end
              else
                begin
                   CbApliSoma.ItemIndex := -1;
                 end;

           end;
end;

procedure TFormAliqICms.CbSubst_SNKeyPress(Sender: tObject; var Key: Char);
begin
   Key := Upcase(key);
end;

procedure TFormAliqICms.CbApliSomaEnter(Sender: tObject);
begin
   CbApliSoma.Color := $0080FFFF;  // amarela
end;

procedure TFormAliqICms.CbApliSomaExit(Sender: tObject);
begin
   CbApliSoma.Color := clWindow;
end;

procedure TFormAliqICms.CbApliSomaChange(Sender: tObject);
begin
   if  not ( DataCadastros1.CdsICMS.State in [dsInsert] ) then
      begin
         if  not ( DataCadastros1.CdsICMS.State in [dsEdit] ) then
             begin
                DataCadastros1.CdsICMS.edit;
                DesabilitaBotoes;
             end;
       end;
end;

procedure TFormAliqICms.CbApliSomaKeyPress(Sender: tObject; var Key: Char);
begin
  Key := Upcase(key);
end;

end.
