{***********************************************************
| Programa...: SAB0001   - Nome formulario = FormSaldoBanco
| Objetivo...: Dar Entrada do Saldo Bancario
| Analista...: Marcio Neu Pacheco
| Programador: Jackson Neu Pacheco
| Comentários:
|
| Criação..........:  fev/99
| Ultima Alteração.:  mai/01
| Feito por........:  Jackson Neu Pacheco
|
***********************************************************}

unit Sab0001;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Mask, DBCtrls, StdCtrls, ExtCtrls, Buttons, DB, rwFunc, rxToolEdit,
  RXDBCtrl,  rxCurrEdit, Provider, SqlExpr,SqlClientDataSet, DBClient, DBLocal, DBLocalS,
  ppProd, ppClass, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppModule,
  raCodMod, ppBands, ppVar, ppCtrls, ppPrnabl, ppCache, Data.DBXFirebird,
  ppDesignLayer, ppParameter, SimpleDS, JvExMask, JvToolEdit, JvDBControls ;

type
  TFormSaldoBanco = class(TForm)
    Panel2: TPanel;
    Bit_novo: TBitBtn;
    Bit_Excluir: TBitBtn;
    Bit_Gravar: TBitBtn;
    Bit_Cancelar: TBitBtn;
    Bit_Sair: TBitBtn;
    Panel1: TPanel;
    DBNavigator1: TDBNavigator;
    EdtSAB_CODIGO: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    label3: TLabel;
    Label4: TLabel;
    DbeSAB_SALDO: TDBEdit;
    DbeSAB_BLOQUEADO: TDBEdit;
    Label5: TLabel;
    DbeSAB_APLICADO: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    DbeSAB_TIPOAPL: TDBEdit;
    DbeSAB_OBS: TDBEdit;
    Label8: TLabel;
    Panel3: TPanel;
    Bit_Lista: TBitBtn;
    Bit_Relatorio: TBitBtn;
    CbBanco: TComboBox;
    CdsBancos: TSQLClientDataSet;
    DbCodBanco: TDBEdit;
    SqlCdsRelSBco: TSQLClientDataSet;
    DsSaldo: TDataSource;
    ppDBCOSaldo: TppDBPipeline;
    ppRelBCOSaldo: TppReport;
    SqlCdsRelSBcoBAN_CODIGO: TStringField;
    SqlCdsRelSBcoBAN_APELIDO: TStringField;
    SqlCdsRelSBcoSAB_DIA: TSQLTimeStampField;
    SqlCdsRelSBcoSAB_SALDO: TFMTBCdField;
    SqlCdsRelSBcoSAB_BLOQUEADO: TFMTBCdField;
    SqlCdsRelSBcoSAB_APLICADO: TFMTBCdField;
    SqlCdsRelSBcoBAN_RAZAO: TStringField;
    CdsBancosBAN_CODIGO: TStringField;
    CdsBancosBAN_APELIDO: TStringField;
    CdsBancosEMP_CODIGO: TStringField;
    pp00HeaderBand1: TppHeaderBand;
    ppLine18: TppLine;
    LBL_00_EMPRESA: TppLabel;
    LBL_00_LTITULO1: TppLabel;
    LBL_00_LTITULO2: TppLabel;
    ppLine20: TppLine;
    ppSystemVariable7: TppSystemVariable;
    ppSystemVariable8: TppSystemVariable;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    pp00DetailBand1: TppDetailBand;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLine4: TppLine;
    ppLabel8: TppLabel;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLine1: TppLine;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppLabel7: TppLabel;
    raCodeModule3: TraCodeModule;
    DbeSAB_DIA: TJvDBDateEdit;
    procedure MudaCorCampos(Sender: tObject);
    procedure Bit_SairClick(Sender: tObject);
    procedure Bit_novoClick(Sender: tObject);
    procedure Bit_GravarClick(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure Bit_ExcluirClick(Sender: tObject);
    procedure VerificaEdicao;
    procedure DesabilitaBotoes;
    procedure HabilitaBotoes;
    procedure BuscaSaldo;
    procedure Bit_CancelarClick(Sender: tObject);
    procedure DBNavigator1Click(Sender: tObject; Button: TNavigateBtn);
    procedure Bit_ListaClick(Sender: tObject);
    procedure FormCloseQuery(Sender: tObject; var CanClose: Boolean);
    procedure EdtSAB_CODIGOExit(Sender: tObject);
    procedure Bit_RelatorioClick(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure CbBancoClick(Sender: tObject);
    procedure CurrCodbancoExit(Sender: tObject);
    procedure DbCodBancoExit(Sender: tObject);
    procedure pp00HeaderBand1BeforePrint(Sender: tObject);
    procedure DbCodBancoKeyPress(Sender: tObject; var Key: Char);
    procedure EdtSAB_CODIGOEnter(Sender: tObject);
    procedure EdtSAB_CODIGOKeyPress(Sender: tObject; var Key: Char);
    procedure FormKeyPress(Sender: tObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);

  private
    { Private declarations }
       {campos}
    CampoEdit    :TEdit;
    CampoDBEdit  :TDBEdit;
    CampoData    :TDBDateEdit;
    CampoTDBLuk  :TDBLookupComboBox;
    CampoCombo   : TComboBox;
    Procedure PreencheCombo;
    Procedure MostraDados;
    procedure AtivaCombo;
    procedure DesativaCombo;
  public
    { Public declarations }
    procedure BotoesAcesso;
  end;

var
  FormSaldoBanco: TFormSaldoBanco;

implementation

{$R *.DFM}

uses Uteis, Sab0002, DataMov, DataCad, Men0001, ufrmpreviewrb, iniciodb;

procedure TFormSaldoBanco.MudaCorCampos(Sender: tObject);
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
   {CampoTDBLuk  :TDBLookupComboBox}
   if Assigned(CampoTDBLuk) then
      begin
         CampoTDBLuk.color := clWindow;
      end;
   if ActiveControl is TDBLookupComboBox then
      begin
         TDBLookupComboBox(ActiveControl).color := $0080FFFF;
         CampoTDBLuk := TDBLookupComboBox(ActiveControl);
      end
   else
      begin
         CampoTDBLuk := nil;
      end;
   if Assigned(CampoCombo) then
       begin
           CampoCombo.color := clWindow;
       end;
   {CampoComboBox}
   if ActiveControl is TComboBox then
      begin
          if TComboBox(ActiveControl).color = $00D7D7D7 then
             begin
                 exit;
             end;
          TComboBox(ActiveControl).color := $0080FFFF;
          CampoCombo := TComboBox(ActiveControl);
      end
   else
      begin
          CampoCombo := nil;
      end;
end;

procedure TFormSaldoBanco.verificaEdicao;
begin
    // verifica estado da tabela em edicao e inclusao
    screen.cursor :=crHourglass;
    if DataMovimento.CdsSaldoBanco.State in [dsEdit,dsInsert] then
       begin
           if uteis.confirmacao ( 'Deseja salvar alterações ?') = idyes then
              begin
                  DataMovimento.CdsSaldoBancoSAB_CODIGO.AsString := EdtSAB_CODIGO.Text;
                  DataMovimento.CdsSaldoBanco.ApplyUpdates(0);
                  Habilitabotoes;
              end
           else
              begin
                  DataMovimento.CdsSaldoBanco.Cancel;
                  Habilitabotoes;
              end;
       end;
    screen.cursor := crDefault;
end;

procedure TFormSaldoBanco.HabilitaBotoes;
begin
    Bit_novo.Enabled            := True;
    Bit_Excluir.Enabled         := True;
    Bit_Sair.Visible            := True;
    Bit_Relatorio.Enabled       := True;
    Bit_Lista.Enabled           := True;
    Bit_Gravar.Enabled          := False;
    Bit_Cancelar.Visible        := False;
    if DataMovimento.CdsSaldoBanco.IsEmpty then
       EdtSAB_CODIGO.Enabled       := False
    else
       EdtSAB_CODIGO.Enabled       := True;
    EdtSab_codigo.Color         := clWindow;    
    DbNavigator1.Enabled        := True;
    BotoesAcesso;
end;

procedure TFormSaldoBanco.DesabilitaBotoes;
begin
    BotoesAcesso;
    Bit_novo.Enabled            := False;
    Bit_Excluir.Enabled         := False;
    Bit_Sair.Visible            := False;
    Bit_Relatorio.Enabled       := False;
    Bit_Lista.Enabled           := False;
    Bit_Gravar.Enabled          := True;
    Bit_Cancelar.Visible        := True;
    EdtSAB_CODIGO.Enabled       := False;
    EdtSab_codigo.Color         := clSilver;
    DbNavigator1.Enabled        := False;

end;

procedure TFormSaldoBanco.buscaSaldo; //Busca o Saldo pelo codigo lançamento
begin
    if DataMovimento.CdsSaldoBanco.State in [dsBrowse] then
       begin
           EdtSab_Codigo.Text := StrZero(EdtSab_Codigo.Text,EdtSab_Codigo.MaxLength);
           if DataMovimento.CdsSaldoBanco.Locate('SAB_CODIGO',EdtSAB_CODIGO.Text,[])= false then
              begin
                  Messagebeep($ffffffff);
                  uteis.aviso('Não Existe Lançamento com Este Número!');
                  EdtSAB_CODIGO.Text := DataMovimento.CdsSaldoBancoSAB_CODIGO.AsString;
                  EdtSAB_CODIGO.SetFocus;
                  EdtSAB_CODIGO.SelectAll;
              end
           else
              MostraDados;
      end;
end;

procedure TFormSaldoBanco.FormShow(Sender: tObject);
begin
    Left := 100;
    Top  := 162;
    {ativa o método ao evento OnActiveControlChange}
    Screen.OnActiveControlChange   := MudaCorCampos;
    Screen.Cursor := crHourglass;
    PreencheCombo;
    Try
      DataMovimento.CdsSaldoBanco.Close;
      DataMovimento.CdsSaldoBanco.CommandText := SQLDEF('BANCOS','SELECT * FROM SALDOBCO','','SAB_CODIGO','');
      DataMovimento.CdsSaldoBanco.open;
      if DataMovimento.CdsSaldoBanco.IsEmpty then
         begin
             DataMovimento.DsSaldoBanco.AutoEdit := False;
             EdtSAB_CODIGO.Enabled := false;
             CbBanco.Text := '';
             DesativaCombo;
         end;
      AtivaCombo;
      Habilitabotoes;
      MostraDados;
    except on E:EdatabaseError do
      uteis.erro  (Pchar('Impossível acessar tabela de Saldos!'+e.Message));
    end;
    Screen.Cursor := crDefault;
end;

procedure TFormSaldoBanco.Bit_ListaClick(Sender: tObject);
begin
    try
      try
        FormSaldoBancoGrid := TFormSaldoBancoGrid.Create(Application);
        FormSaldoBancoGrid.ShowModal;
      finally
        FormSaldoBancoGrid.Destroy;
        FormSaldoBancoGrid := nil //  nil é - From Assigned = False
      end;
    except
        //beep;
        uteis.erro  ('Ocorreu um erro na criação do formulário!');
    end;
end;

procedure TFormSaldoBanco.Bit_novoClick(Sender: tObject);
begin
    try
      Screen.Cursor := crHourglass;
      DataMovimento.CdsSaldoBanco.Insert;
      screen.cursor := crdefault;
      EdtSAB_CODIGO.Text := '0000';
      DbeSAB_DIA.Date := date;
      AtivaCombo;
      CbBanco.Text := '';
      DesabilitaBotoes;
      uteis.HabilitaIncluir('FinanceiroSaldo de Banco',DBInicio.Usuario.CODIGO,FormSaldoBanco);
      DbCodBanco.SetFocus;
    except on E:EDataBaseError do
        uteis.erro  (pchar('Erro ao inserir registro !'+e.message));
    end;
end;

procedure TFormSaldoBanco.Bit_ExcluirClick(Sender: tObject);
begin
    if DataMovimento.CdsSaldoBanco.IsEmpty Then   //evita exclussão de registro
       Begin                                      // em uma Tabela Vazia.
           messagebeep($ffff);
           uteis.aviso('Não existe Saldo do banco cadastrado !!!');
           DesativaCombo;
           DbCodBanco.SetFocus;
           exit;
       end;
    if uteis.confirmacao ( 'Deseja Excluir este Lançamento ?')= Mryes then
       begin
           Screen.cursor :=crHourglass;
           DataMovimento.CdsSaldoBanco.Delete;
           DataMovimento.CdsSaldoBanco.ApplyUpdates(0);
           screen.cursor := crDefault;
       end;
    MostraDados;
end;

procedure TFormSaldoBanco.Bit_GravarClick(Sender: tObject);
begin
    try
      Screen.Cursor := crHourGlass;
      DataMovimento.CdsSaldoBancoSAB_CODIGO.AsString := StrZero(EdtSAB_CODIGO.text,EdtSAB_CODIGO.MaxLength);
      DataMovimento.CdsSaldoBancoEMP_CODIGO.AsString := dbInicio.Empresa.EMP_CODIGO;
      DataMovimento.CdsSaldoBanco.ApplyUpdates(0);
      DataMovimento.CdsSaldoBanco.Refresh;
      Screen.Cursor := crDefault;
      Habilitabotoes;
      MostraDados;
      EdtSAB_CODIGO.Text := StrZero(DataMovimento.CdsSaldoBancoSAB_CODIGO.AsString,EdtSAB_CODIGO.Maxlength);
      EdtSAB_CODIGO.SetFocus;
    except on E:EdatabaseError do
       uteis.erro  (Pchar('Erro ao gravar registro !'+e.Message));
    end;
end;

procedure TFormSaldoBanco.Bit_CancelarClick(Sender: tObject);
begin
    Screen.Cursor := crHourGlass;
    DataMovimento.CdsSaldoBanco.Cancel;
    if DataMovimento.CdsSaldoBanco.IsEmpty Then   //Ao cancelar ultimo record da
       begin                                      //tabela deixa autoedit=true;
           DataMovimento.DsSaldoBanco.AutoEdit := False;
           EdtSAB_CODIGO.Enabled := False;
       end;
    Screen.Cursor := crDefault;
    HabilitaBotoes;
    DbCodBanco.SetFocus;
    MostraDados;
end;

procedure TFormSaldoBanco.Bit_SairClick(Sender: tObject);
begin
   close;
end;

procedure TFormSaldoBanco.BotoesAcesso;
begin
     if assigned(FormSaldoBanco) then
     begin
       Bit_novo.Enabled := Uteis.AcessoUsuario('FinanceiroSaldo de Banco',DBInicio.Usuario.CODIGO,FormSaldoBanco).Incluir;
       Bit_Excluir.Enabled := Uteis.AcessoUsuario('FinanceiroSaldo de Banco',DBInicio.Usuario.CODIGO,FormSaldoBanco).Exluir;
       Bit_Relatorio.Enabled := Uteis.AcessoUsuario('FinanceiroSaldo de Banco',DBInicio.Usuario.CODIGO,FormSaldoBanco).Relatorio;
       DataMovimento.DsSaldoBanco.AutoEdit := Uteis.AcessoUsuario('FinanceiroSaldo de Banco',DBInicio.Usuario.CODIGO,FormSaldoBanco).Alterar;
     end;
end;

procedure TFormSaldoBanco.DBNavigator1Click(Sender: tObject;
  Button: TNavigateBtn);
begin
    MostraDados;
end;

procedure TFormSaldoBanco.EdtSAB_CODIGOExit(Sender: tObject);
begin
    EdtSAB_CODIGO.Text := StrZero(EdtSAB_CODIGO.Text, EdtSAB_CODIGO.Maxlength);
    if (DataMovimento.CdsSaldoBanco.State in [Dsbrowse]) and not (DataMovimento.CdsSaldoBanco.IsEmpty) then
       BuscaSaldo;
end;

procedure TFormSaldoBanco.FormCloseQuery(Sender: tObject; var CanClose: Boolean);
begin
    Verificaedicao;
    { Se o if abaixo for Falso a chamada foi feita pelo formFluxoCaixa
    que já abriu o a tabela ""TbSaldoBanco"" .
    O formFluxoCaixa fechará a tabela "}
    if DataMovimento.DsFluxoCaixa.State in [dsInactive]  then
       begin
           Try
             DataMovimento.CdsSaldoBanco.Close;
           except on E:EdataBaseError do
             uteis.erro  (pchar('Impossível fechar a tabela de Saldos!'+e.message));
           end;
       end
    else
       Try
         CdsBancos.Close;
         SqlCdsRelSbco.Close;
       except on E:EDataBaseError do
         uteis.erro  (Pchar('Erro ao Fechar a Tabela SqlCdsRelSBCO !'+e.message));
       end;
end;
procedure TFormSaldoBanco.FormDestroy(Sender: TObject);
begin
     FormSaldoBAnco := Nil;
end;

procedure TFormSaldoBanco.Bit_RelatorioClick(Sender: tObject);
begin
    try
      wSql1  := 'SELECT B1.BAN_CODIGO,B1.BAN_RAZAO,B1.BAN_APELIDO,S1.SAB_DIA,S1.SAB_SALDO,S1.SAB_BLOQUEADO,S1.SAB_APLICADO FROM SALDOBCO S1 JOIN BAN0000 B1 ON S1.BAN_CODIGO = B1.BAN_CODIGO ';
      wOrdem := 'B1.BAN_APELIDO';
      //
      SqlCdsRelSBco.Close;
      SqlCdsRelSBco.CommandText := SQLDEF('BANCOS',wSql1,'',wOrdem,'S1.');
      SqlCdsRelSBco.Open;
      //
      LBL_00_LTITULO1.Caption := 'RELATÓRIO DE SALDO BANCÁRIO';
      LBL_00_LTITULO2.Caption := '';
      ppRelBCOSaldo.DeviceType:='Screen';
      RBuilderPreview(ppRelBCOSaldo);
    except on E:EdatabaseError do
       uteis.erro  (pchar('Erro ao gerar o relatorio ! '+e.message));
    end;
end;

procedure TFormSaldoBanco.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
    Screen.OnActiveControlChange := NIL;
    Action := CaFree;
end;

procedure TFormSaldoBanco.PreencheCombo;
begin
    Try
       CdsBancos.Close;
       CdsBancos.CommandText := SQLDEF('BANCOS','SELECT BAN_CODIGO,BAN_APELIDO,EMP_CODIGO FROM BAN0000','','BAN_APELIDO','');
       CdsBancos.open;
       CdsBancos.First;
       while not CdsBancos.Eof do
        begin
            CbBanco.Items.Add(CdsBancosBAN_APELIDO.AsString);
            CdsBancos.Next;
        end;
       CbBanco.ItemIndex := 0;
    except on E:EdatabaseError do
        uteis.erro  (Pchar('Impossível Acessar a Tabela "BANCOS!'+e.message));
    end;
end;

procedure TFormSaldoBanco.CbBancoClick(Sender: tObject);
begin
    if (DataMovimento.CdsSaldoBanco.State in [Dsbrowse])and not (DataMovimento.CdsSaldoBanco.IsEmpty) then
      begin
         DataMovimento.CdsSaldoBanco.Edit;
         if CdsBancos.Locate('BAN_APELIDO',CbBanco.Text,[]) = true then
            DbCodBanco.Field.Text := StrZero(CdsBancosBAN_CODIGO.AsString,DbCodBanco.MaxLength)
         else
            DbCodBanco.Field.Text := '';
      end
    else
    if (DataMovimento.CdsSaldoBanco.State in [Dsbrowse])and (DataMovimento.CdsSaldoBanco.IsEmpty) then
       begin
         Bit_novoClick(Sender);
         CbBanco.Text := '';
       end;
    if CdsBancos.Locate('BAN_APELIDO',CbBanco.Text,[]) = true then
       DbCodBanco.Field.Text := StrZero(CdsBancosBAN_CODIGO.AsString,DbCodBanco.MaxLength)
    else
       DbCodBanco.Field.Text := '';
end;

procedure TFormSaldoBanco.CurrCodbancoExit(Sender: tObject);
begin
    if (DbCodBanco.Field.Value <> 0) and (DbCodBanco.Text <> '') then
       begin
           if CdsBancos.Locate('BAN_CODIGO',FormatFloat('0000',DbCodBanco.Field.value),[]) = true then
              begin
                  CbBanco.Text := CdsBancos.FieldByName('BAN_APELIDO').value;
              end
           else
              Begin
                  uteis.aviso('Banco não cadastrado com o código informado !');
              end;
       end;
end;

procedure TFormSaldoBanco.DbCodBancoExit(Sender: tObject);
begin
    if (DataMovimento.CdsSaldoBanco.State in [dsEdit,dsInsert])and not (DataMovimento.CdsSaldoBancoBAN_CODIGO.AsString='')then
       begin
           if (DbCodBanco.Text <> '') and (DbCodBanco.Text <> '') then
              begin
                  DbCodBanco.Text := StrZero(DbCodBanco.Text,DbCodBanco.MaxLength);
                  if CdsBancos.Locate('BAN_CODIGO',DbCodBanco.Text,[]) = true then
                     begin
                         CbBanco.Text := CdsBancos.FieldByName('BAN_APELIDO').value;
                     end
                  else
                     Begin
                         uteis.aviso('Banco não cadastrado com o código informado !');
                         DbCodBanco.Text := '';
                         CbBanco.SetFocus;
                     end;
              end;
       end;
end;

procedure TFormSaldoBanco.pp00HeaderBand1BeforePrint(Sender: tObject);
begin
    LBL_00_EMPRESA.Caption := dbInicio.Empresa.Razao;
end;

procedure TFormSaldoBanco.MostraDados;
begin
    EdtSAB_CODIGO.Text    := StrZero(DataMovimento.CdsSaldoBancoSAB_CODIGO.AsString,EdtSAB_CODIGO.MaxLength);
    if CdsBancos.Locate('BAN_CODIGO',DbCodBanco.Text,[]) = true then
       begin
           CbBanco.Text := CdsBancosBAN_APELIDO.AsString;
       end
    else
       begin
           CbBanco.TExt := '';
       end;
end;

procedure TFormSaldoBanco.AtivaCombo;
begin
    CbBanco.Enabled := true;
end;

procedure TFormSaldoBanco.DesativaCombo;
begin
    CbBanco.Enabled := false;
end;

procedure TFormSaldoBanco.DbCodBancoKeyPress(Sender: tObject;
  var Key: Char);
begin
    if not (key in ['0'..'9',#8]) then
       begin
          //beep;
          Key := #0;
       end;
end;

procedure TFormSaldoBanco.EdtSAB_CODIGOEnter(Sender: tObject);
begin
    EdtSAB_CODIGO.SelectAll;
end;

procedure TFormSaldoBanco.EdtSAB_CODIGOKeyPress(Sender: tObject;
  var Key: Char);
begin
   If not( key in['0'..'9',#8] ) then
       begin
           //beep;
           key:=#0;
       end;

end;

procedure TFormSaldoBanco.FormKeyPress(Sender: tObject; var Key: Char);
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
