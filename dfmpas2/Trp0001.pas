{************************************************************************
 Programa...: Trp0001  - Nome formulario = FormTransport
 Objetivo...: Cadastrar Transportadora
 Analista...: Márcio Neu Pacheco
 Programador:

 Comentários:

 Criação..........: Set/1998.
 Ultima Alteração.: mar/2011
 Alterado por.....: Márcio

************************************************************************}
unit Trp0001;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, DBCtrls, Mask, ExtCtrls, ComCtrls, Buttons, DB, DBTables, RwFunc, System.Variants, Data.FMTBcd, Data.SqlExpr, JvExStdCtrls, JvCombobox, JvDBCombobox, Datasnap.DBClient, Datasnap.Provider;

type
  TFormTransport = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    EdtTrp_codigo: TEdit;
    DBeTrp_razao: TDBEdit;
    DBeTrp_endere: TDBEdit;
    DBetrp_cidade: TDBEdit;
    DbeTrp_cgc: TDBEdit;
    DBeTrp_insc: TDBEdit;
    DBeTrp_contato: TDBEdit;
    DBeTrp_fone: TDBEdit;
    DBeTrp_fax: TDBEdit;
    DBeTrp_email: TDBEdit;
    Panel1: TPanel;
    DBNavigator1: TDBNavigator;
    DBeTrp_uf: TDBEdit;
    DBeTrp_cep: TDBEdit;
    Panel2: TPanel;
    Bit_novo: TBitBtn;
    Bit_Excluir: TBitBtn;
    Bit_Gravar: TBitBtn;
    Bit_Cancelar: TBitBtn;
    Bit_Sair: TBitBtn;
    Panel3: TPanel;
    Bit_Lista: TBitBtn;
    Bit_Relatorio: TBitBtn;
    DBeTrp_Home: TDBEdit;
    Label4: TLabel;
    Label14: TLabel;
    DBRadioGroup1: TDBRadioGroup;
    Label15: TLabel;
    DBMemo1: TDBMemo;
    SpeedButton5: TSpeedButton;
    Label16: TLabel;
    dbedtTRP_BAIRRO: TDBEdit;
    Label17: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label18: TLabel;
    GroupBox1: TGroupBox;
    Label19: TLabel;
    CbTipoFrete: TComboBox;
    Label20: TLabel;
    DBRadioGroup2: TDBRadioGroup;
    qBusco: TSQLQuery;
    JvDBComboBox1: TJvDBComboBox;
    BitBtn1: TBitBtn;
    qTransportadoras: TSQLQuery;
    dsExportaExcel: TDataSource;
    qTransportadorasTRP_CGC: TStringField;
    qTransportadorasTRP_RAZAO: TStringField;
    qTransportadorasTRP_TIPO: TStringField;
    qTransportadorasTRP_INSC: TStringField;
    qTransportadorasTRP_CONTATO: TStringField;
    qTransportadorasTRP_FONE: TStringField;
    qTransportadorasTRP_FAX: TStringField;
    qTransportadorasTRP_EMAIL: TStringField;
    qTransportadorasTRP_CEP: TStringField;
    qTransportadorasTRP_CIDADE: TStringField;
    qTransportadorasTRP_UF: TStringField;
    qTransportadorasTRP_ENDERE: TStringField;
    qTransportadorasTRP_NUMERO: TStringField;
    qTransportadorasTRP_BAIRRO: TStringField;
    qTransportadorasTRP_FANTASIA: TStringField;
    qTransportadorasTRP_EMAIL_NFE: TStringField;
    qTransportadorasREP_RAZAO: TStringField;
    qTransportadorasPCX_DESCRI: TStringField;
    qTransportadorasBAN_APELIDO: TStringField;
    qTransportadorasCLI_UND_CONSUMIDORA: TStringField;
    qTransportadorasEMP_CODIGO: TStringField;
    dspTransportadoras: TDataSetProvider;
    cdsTransportadoras: TClientDataSet;
    cdsTransportadorasTRP_CGC: TStringField;
    cdsTransportadorasTRP_RAZAO: TStringField;
    cdsTransportadorasTRP_TIPO: TStringField;
    cdsTransportadorasTRP_FANTASIA: TStringField;
    cdsTransportadorasTRP_INSC: TStringField;
    cdsTransportadorasTRP_CONTATO: TStringField;
    cdsTransportadorasTRP_FONE: TStringField;
    cdsTransportadorasTRP_FAX: TStringField;
    cdsTransportadorasTRP_EMAIL: TStringField;
    cdsTransportadorasTRP_EMAIL_NFE: TStringField;
    cdsTransportadorasTRP_CEP: TStringField;
    cdsTransportadorasTRP_CIDADE: TStringField;
    cdsTransportadorasTRP_UF: TStringField;
    cdsTransportadorasTRP_ENDERE: TStringField;
    cdsTransportadorasTRP_NUMERO: TStringField;
    cdsTransportadorasTRP_BAIRRO: TStringField;
    cdsTransportadorasREP_RAZAO: TStringField;
    cdsTransportadorasPCX_DESCRI: TStringField;
    cdsTransportadorasBAN_APELIDO: TStringField;
    cdsTransportadorasCLI_UND_CONSUMIDORA: TStringField;
    cdsTransportadorasEMP_CODIGO: TStringField;
    procedure MudaCorCampos(Sender: tObject);
    procedure Bit_SairClick(Sender: tObject);
    procedure Bit_novoClick(Sender: tObject);
    procedure Bit_ExcluirClick(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure BuscaTransport;
    procedure VerificaEdicao;
    procedure DesabilitaBotoes;
    procedure HabilitaBotoes;
    procedure Bit_GravarClick(Sender: tObject);
    procedure Bit_CancelarClick(Sender: tObject);
    procedure DBNavigator1Click(Sender: tObject; Button: TNavigateBtn);
    procedure Bit_ListaClick(Sender: tObject);
    procedure FormCloseQuery(Sender: tObject; var CanClose: Boolean);
    procedure EdtTrp_codigoExit(Sender: tObject);
    procedure DbeTrp_cgcExit(Sender: tObject);
    procedure Bit_RelatorioClick(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure EdtTrp_codigoKeyPress(Sender: tObject; var Key: Char);
    procedure FormKeyPress(Sender: tObject; var Key: Char);
    procedure DBMemo1KeyPress(Sender: tObject; var Key: Char);
    procedure EdtTrp_codigoEnter(Sender: tObject);
    procedure SpeedButton5Click(Sender: tObject);
    procedure DBeTrp_inscExit(Sender: tObject);
    procedure DbeTrp_cgcEnter(Sender: tObject);
    procedure FormDestroy(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
    {campos}
    CampoMemo    :TDBMemo;
    CampoEdit    :TEdit;
    CampoDBEdit  :TDBEdit;
    
  public
    { Public declarations }
    procedure BotoesAcesso;
end;

var
  FormTransport: TFormTransport;

implementation

{$R *.DFM}
uses Uteis, TRP0002, GImpTran, DataCad, Men0001, CID0002, iniciodb, DataCad1;







procedure TformTransport.MudaCorCampos(Sender: tObject);
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
   {CampoMemo:TDBMemo}
    if Assigned(CampoMemo) then
       begin
          CampoMemo.color := clWindow;
       end;
    if ActiveControl is TDBMemo then
       begin
          if TDBMemo(ActiveControl).color = $00D7D7D7 then
             begin
                exit;
             end;
          TDBMemo(ActiveControl).color := $0080FFFF;
          CampoMemo := TDBMemo(ActiveControl);
       end
    else
       begin
          CampoMemo := nil;
       end;
end;

procedure TformTransport.verificaEdicao;
begin
    // verifica estado da tabela em edicao e inclusao
    screen.cursor :=crHourglass;
    if DataCadastros.CdsTransportadora.State in [dsEdit,dsInsert] then
       begin
           if uteis.confirmacao ( 'Deseja salvar alterações ?') = idyes then
              begin
                  DataCadastros.CdsTransportadoraTRP_CODIGO.AsString := EdtTrp_codigo.Text;
                  DataCadastros.CdsTransportadora.Post;
                  DataCadastros.CdsTransportadora.Refresh;
              end
           else
              DataCadastros.CdsTransportadora.Cancel;
           Habilitabotoes;
       end;
    Screen.cursor := crDefault;
end;

procedure TformTransport.HabilitaBotoes;
begin
    Bit_novo.Enabled            := True;
    Bit_Excluir.Enabled         := True;
    Bit_Sair.Visible            := True;
    Bit_Relatorio.Enabled       := True;
    Bit_Lista.Enabled           := True;
    Bit_Gravar.Enabled          := False;
    Bit_Cancelar.Visible        := False;
    EdtTrp_codigo.color         := clWindow;
    EdtTrp_codigo.TabStop       := True;
    EdtTrp_codigo.ReadOnly      := False;
    DbNavigator1.Enabled        := True;
    BotoesAcesso;
end;

procedure TformTransport.DesabilitaBotoes;
begin
    BotoesAcesso;
    Bit_novo.Enabled            := False;
    Bit_Excluir.Enabled         := False;
    Bit_Sair.Visible            := False;
    Bit_Relatorio.enabled       := False;
    Bit_Lista.Enabled           := False;
    Bit_Gravar.Enabled          := True;
    Bit_Cancelar.Visible        := True;
    EdtTrp_codigo.color         := $00D7D7D7;
    EdtTrp_codigo.TabStop       := False;
    EdtTrp_codigo.ReadOnly      := True;
    DbNavigator1.Enabled        := False;

end;

procedure TFormTransport.BuscaTransport;
begin
    if DataCadastros.CdsTransportadora.Locate('TRP_CODIGO',EdtTrp_Codigo.Text,[])= false then
       begin
           uteis.aviso('Transpotadora não cadastrada !!!');
           EdtTrp_codigo.Text := DataCadastros.CdsTransportadoraTRP_CODIGO.AsString;
       end;


    qBusco.Close;
    qBusco.SQL.Clear;
    qBusco.SQL.Add('SELECT FRETE FROM TRP0000 WHERE TRP0000.TRP_CODIGO = '+EdtTrp_codigo.Text);
    qBusco.Open;

end;

procedure TFormTransport.FormShow(Sender: tObject);
begin
    Left := 83;
    top  := 83;
    //
    {ativa o método ao evento OnActiveControlChange}
    Screen.OnActiveControlChange   := MudaCorCampos;
    Screen.Cursor := crHourglass;
    Try
      DataCadastros.CdsTransportadora.Close;
      DataCadastros.CdsTransportadora.CommandText := SQLDEF('TRANSPORTADORAS','SELECT * FROM TRP0000','','TRP_CODIGO','');
      DataCadastros.CdsTransportadora.Open;
    except on E:EDataBaseError do
      uteis.erro  (pchar('Impossível acessar a Tabela de Transportadoras!!!'+e.message));
    end;
    HabilitaBotoes;
    if DataCadastros.CdsTransportadora.IsEmpty Then  //Evita alteração antes que se
       begin                                     //inclua registros na tabela.
           DataCadastros.DsTransportadora.autoEdit := False;
           EdtTrp_codigo.Enabled := False;
       end;
    EdtTRP_Codigo.text := DataCadastros.CdsTransportadoraTRP_CODIGO.AsString;
    // mostrar mascara cnpj ou CPF no registro atual
    if Length(trim(DbeTrp_cgc.EditText)) = 14 then
       DataCadastros.CdsTransportadora.FieldByName('TRP_CGC').EditMask := '99\.999\.999\/9999\-99;0;_'
    else
       DataCadastros.CdsTransportadora.FieldByName('TRP_CGC').EditMask := '999\.999\.999\-99;0;_';

       if DBetrp_cidade.EditText = '' then
      begin
         uteis.aviso('ATENÇÃO : Informar a Cidade e o CEP da transportadora');
         DBetrp_cidade.setfocus;
         exit;
      end;

      if (Trim(DBEdit1.Text)<>'') and (Trim(DBEdit2.Text)='') then
      begin
         uteis.aviso('ATENÇÃO : Informar a UF Emplacamento veículo!');
         DbEdit2.setfocus;
         exit;
      end;

    Screen.Cursor := crdefault;

    qBusco.Close;
    qBusco.SQL.Clear;
    qBusco.SQL.Add('SELECT FRETE FROM TRP0000 WHERE TRP0000.TRP_CODIGO = '+EdtTrp_codigo.Text);
    qBusco.Open;

    if qBusco.Fields[0].AsString = '' then
       DBRadioGroup2.ItemIndex := 1;

end;

procedure TFormTransport.Bit_ListaClick(Sender: tObject);
begin
  try
    try
      FormTransportGrid := TFormTransportGrid.Create(Application);
      FormTransportGrid.ShowModal;
    finally
      FormTransportGrid.Destroy;
      FormTransportGrid := nil; //  nil é - From Assigned = False
      DBeTrp_razao.SetFocus;
    end;
  except
      //beep;
      uteis.erro  ('Ocorreu um erro na criação do formulário!');
  end;
//FormTransportGrid.show;
end;

procedure TFormTransport.Bit_novoClick(Sender: tObject);
begin
      DataCadastros.CdsTransportadora.Insert;
      DataCadastros.CdsTransportadoraTRP_ATIVO.AsString := 'S';
      DataCadastros.CdsTransportadoraFRETE.AsString := '0' ;
      DataCadastros.CdsTransportadoraEMP_CODIGO.AsString := DBInicio.Empresa.EMP_CODIGO;
      EdtTrp_codigo.Text    := '000';
      Screen.Cursor:= crDefault;
      DesabilitaBotoes;
      uteis.HabilitaIncluir('CadastrosTransportadoras',DBInicio.Usuario.CODIGO,FormTransport);
      DbeTrp_Razao.SetFocus;
end;

procedure TFormTransport.Bit_ExcluirClick(Sender: tObject);
begin
    if DataCadastros.CdsTransportadora.RecordCount = 0 Then   //evita exclussão de registro
       Begin                                      // em uma Tabela Vazia.
           messagebeep($ffff);
           uteis.aviso('Não existe transportadora cadastrada !!!');
           EdtTrp_codigo.SetFocus;
           exit;
       end;
    if uteis.confirmacao ( 'Deseja Excluir esta Transportadora?')= mrYes then
       begin
           Screen.Cursor := crHourglass;
           DataCadastros.CdsTransportadora.Delete;
           DataCadastros.CdsTransportadora.ApplyUpdates(0);
           screen.cursor := crdefault;
       end;
    EdtTrp_codigo.text := DataCadastros.CdsTransportadoraTRP_CODIGO.AsString;
    EdtTrp_codigo.SetFocus;
end;

procedure TFormTransport.Bit_GravarClick(Sender: tObject);

begin
    //salva o registro

      if DBetrp_cidade.EditText = '' then
      begin
         uteis.aviso('ATENÇÃO : Informar a Cidade e o CEP da transportadora');
         DBetrp_cidade.setfocus;
         exit;
      end;

      if (Trim(DBEdit1.Text)<>'') and (Trim(DBEdit2.Text)='') then
      begin
         uteis.aviso('ATENÇÃO : Informar a UF Emplacamento veículo!');
         DbEdit2.setfocus;
         exit;
      end;


      if StrToIntDef( EdtTrp_Codigo.Text,0 )=0 then
         EdtTrp_Codigo.Text:= strzero( dbInicio.GetNextSequence('GEN_TRP0000_CODIGO'), 3 ) ;
      DataCadastros.CdsTransportadoraTRP_CODIGO.AsString := StrZero(EdtTrp_Codigo.text,EdtTrp_codigo.MaxLength);

      if (DataCadastros.CdsTransportadora.State in [dsInsert]) then
         DataCadastros.CdsTransportadoraEMP_CODIGO.AsString := dbInicio.Empresa.EMP_CODIGO;

      if DataCadastros.CdsTransportadoraEMP_CODIGO.AsString = '' then
        DataCadastros.CdsTransportadoraEMP_CODIGO.AsString :=   dbInicio.Empresa.EMP_CODIGO;
      DataCadastros.CdsTransportadora.Post;
      DataCadastros.CdsTransportadora.ApplyUpdates(0);

      Screen.Cursor := crDefault;
      DataCadastros.DsTransportadora.AutoEdit := true;
      Habilitabotoes;
      DbeTRP_Razao.Setfocus;
end;


procedure TFormTransport.Bit_CancelarClick(Sender: tObject);
begin
    Screen.Cursor := crHourGlass;
    DataCadastros.CdsTransportadora.Cancel;
    if DataCadastros.CdsTransportadora.IsEmpty Then   //Ao cancelar ultimo record da
       begin
           DataCadastros.DsTransportadora.AutoEdit := False;
           EdtTrp_codigo.Enabled := False;
       end;
    Screen.Cursor := crDefault;
    HabilitaBotoes;
    DbeTRP_Razao.Setfocus;
    EdtTrp_Codigo.Enabled := True;
    EdtTRP_Codigo.Text    := DataCadastros.CdsTransportadoraTRP_CODIGO.AsString;
end;

procedure TFormTransport.Bit_SairClick(Sender: tObject);
begin
  close;
end;

procedure TFormTransport.BotoesAcesso;
begin
     if assigned(FormTransport) then
     begin
      Bit_novo.Enabled := Uteis.AcessoUsuario('CadastrosTransportadoras',DBInicio.Usuario.CODIGO,FormTransport).Incluir;
      Bit_Excluir.Enabled := Uteis.AcessoUsuario('CadastrosTransportadoras',DBInicio.Usuario.CODIGO,FormTransport).Exluir;
      Bit_Relatorio.Enabled := Uteis.AcessoUsuario('CadastrosTransportadoras',DBInicio.Usuario.CODIGO,FormTransport).Relatorio;
      DataCadastros.DsTransportadora.AutoEdit := Uteis.AcessoUsuario('CadastrosTransportadoras',DBInicio.Usuario.CODIGO,FormTransport).Alterar;
     end;
end;

procedure TFormTransport.DBNavigator1Click(Sender: tObject;
  Button: TNavigateBtn);
begin
    EdtTrp_Codigo.text := DataCadastros.CdsTransportadoraTRP_CODIGO.AsString;
    // mostrar mascara cnpj ou CPF no registro atual
    DataCadastros.CdsTransportadora.FieldByName('TRP_CGC').EditMask := '';
    if Length(trim(DbeTrp_cgc.EditText)) = 14 then
       DataCadastros.CdsTransportadora.FieldByName('TRP_CGC').EditMask := '99\.999\.999\/9999\-99;0;_'
    else
       DataCadastros.CdsTransportadora.FieldByName('TRP_CGC').EditMask := '999\.999\.999\-99;0;_';
    
end;

procedure TFormTransport.FormCloseQuery(Sender: tObject;
  var CanClose: Boolean);
begin
    VerificaEdicao;
    try
       DataCadastros.CdsTransportadora.close;
     except
       uteis.erro  ('Impossível fechar a Tabela "Transportadora".')
    end;
end;

procedure TFormTransport.FormDestroy(Sender: TObject);
begin
     FormTransport := Nil;
end;

procedure TFormTransport.EdtTrp_codigoExit(Sender: tObject);
begin
    if (DataCadastros.CdsTransportadora.State in [Dsbrowse]) and not (DataCadastros.CdsTransportadora.IsEmpty) then
       begin
           EdtTrp_codigo.Text := StrZero(EdtTrp_codigo.Text,EdtTrp_codigo.MaxLength);
           Screen.Cursor := crHourGlass;
           BuscaTransport;
           Screen.Cursor := crDefault;
       end;
end;

procedure TFormTransport.DbeTrp_cgcExit(Sender: tObject);
begin
    if Length(trim(DbeTrp_cgc.EditText)) = 0 then
       uteis.aviso('A falta de CNPJ ou CPF provocará inconsistência na NFe');
    if Length(trim(DbeTrp_cgc.EditText)) >11 then
    begin
         RWFunc.TestaCgcCpf(DbeTrp_cgc.EditText,'J');
         DataCadastros.CdsTransportadora.FieldByName('TRP_CGC').EditMask := '99\.999\.999\/9999\-99;0;_';
    end;
    if Length(trim(DbeTrp_cgc.EditText)) <=11 then
    begin
         RWFunc.TestaCgcCpf(DbeTrp_cgc.EditText,'F');
         DataCadastros.CdsTransportadora.FieldByName('TRP_CGC').EditMask := '999\.999\.999\-99;0;_';
    end;

end;

procedure TFormTransport.Bit_RelatorioClick(Sender: tObject);
begin
    try
      try
        FormGImpTran := TFormGImpTran.Create(Application);
        FormGImpTran.ShowModal;
      finally
        FormGImpTran.Destroy;
        FormGImpTran := nil; //  nil é - From Assigned = False
      end;
    except
        //beep;
        uteis.erro  ('Ocorreu um erro na criação do formulário!');
    end;

    {ativa o método ao evento OnActiveControlChange}
    Screen.OnActiveControlChange   := MudaCorCampos;
end;

procedure TFormTransport.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
    Screen.OnActiveControlChange := NIL;
    Action := CaFree;
end;

procedure TFormTransport.EdtTrp_codigoKeyPress(Sender: tObject;
  var Key: Char);
begin
    if not (key in ['0'..'9',#8]) then
       begin
          //beep;
          Key := #0;
       end;
end;

procedure TFormTransport.FormKeyPress(Sender: tObject; var Key: Char);
begin
    if key = #27 then
       close;
end;

procedure TFormTransport.DBMemo1KeyPress(Sender: tObject; var Key: Char);
begin
   Key:= Upcase(Key);
end;

procedure TFormTransport.EdtTrp_codigoEnter(Sender: tObject);
begin
   EdtTrp_codigo.SelectAll;
end;

procedure TFormTransport.SpeedButton5Click(Sender: tObject);
begin
try
      FormCidadeGrid := TFormCidadeGrid.Create(Application);
      FormCidadeGrid.ShowModal;
   finally
      FormCidadeGrid.Destroy;
      FormCidadeGrid := Nil;
   end;
end;

procedure TFormTransport.DBeTrp_inscExit(Sender: tObject);
begin
    if DBeTrp_insc.EditText = '' then
       begin
       uteis.aviso('ATENÇÃO : Informar IE quando tiver ou informar ISENTO');
       DBeTrp_insc.SetFocus;
       end;

end;

procedure TFormTransport.DbeTrp_cgcEnter(Sender: tObject);
begin
     DataCadastros.CdsTransportadora.FieldByName('TRP_CGC').EditMask := '';
end;

procedure TFormTransport.BitBtn1Click(Sender: TObject);
var
  lista: TStringList;
begin
  inherited;
  qTransportadoras.Close;
  cdsTransportadoras.close;
  qTransportadoras.SQL.Text :=
    '  SELECT' +
      ' EMP_CODIGO,' +
      ' TRP_CGC,' +
      ' TRP_RAZAO,' +
      ' ''T'' AS TRP_TIPO,' +
      ' TRP_RAZAO AS TRP_FANTASIA,' +
      ' REPLACE(REPLACE (TRP_INSC, ''-'', ''''), ''.'', '''') AS TRP_INSC,' +
      ' TRP_CONTATO,' +
      ' ''(''||SUBSTRING (TRP_FONE FROM 1 FOR 2)||'')''||SUBSTRING (TRP_FONE FROM 3 FOR 255) AS TRP_FONE,' +
      ' ''(''||SUBSTRING (TRP_FAX FROM 1 FOR 2)||'')''||SUBSTRING (TRP_FAX FROM 3 FOR 255) AS TRP_FAX,' +
      ' TRP_EMAIL,' +
      ' TRP_EMAIL AS TRP_EMAIL_NFE,' +
      ' TRP_CEP,' +
      ' CASE' +
        ' WHEN TRP_CIDADE = '''' THEN ''não informado''' +
        ' WHEN TRP_CIDADE IS NULL THEN ''não informado''' +
        ' ELSE TRP_CIDADE' +
      ' END AS TRP_CIDADE,' +
      ' CASE' +
        ' WHEN TRP_UF = '''' THEN ''não informado''' +
        ' WHEN TRP_UF IS NULL THEN ''não informado''' +
        ' ELSE TRP_UF' +
      ' END AS TRP_UF,  ' +
      ' CASE' +
        ' WHEN TRP_ENDERE = '''' THEN ''não informado''' +
        ' WHEN TRP_ENDERE IS NULL THEN ''não informado''' +
        ' WHEN position ('','' in TRP_ENDERE) = 0 THEN TRP_ENDERE ' +
        ' ELSE ' +
        ' CASE' +
          ' WHEN position ('','' in TRP_ENDERE) > 0 THEN SUBSTRING (TRP_ENDERE FROM 1 FOR POSITION('','' in TRP_ENDERE) -1)' +
        ' END' +
      ' END AS TRP_ENDERE,' +
      ' CASE' +
        ' WHEN POSITION('','' IN TRP_ENDERE) > 0 THEN SUBSTRING (TRP_ENDERE FROM POSITION('','' IN TRP_ENDERE) + 1 FOR 255)' +
        ' ELSE ''S/N''' +
      ' END AS TRP_NUMERO,  ' +
      ' CASE' +
        ' WHEN TRP_BAIRRO = '''' THEN ''não informado''' +
        ' WHEN TRP_BAIRRO IS NULL THEN ''não informado''' +
        ' ELSE TRP_BAIRRO' +
      ' END AS TRP_BAIRRO,' +
      ' '''' AS REP_RAZAO,' +
      ' '''' AS PCX_DESCRI,' +
      ' '''' AS BAN_APELIDO,' +
      ' '''' AS CLI_UND_CONSUMIDORA' +
    ' FROM TRP0000 c' +
    ' ORDER BY TRP_RAZAO';
  cdsTransportadoras.Open;
  lista := TStringList.Create;
  lista.Add('TRP_CGC');
  lista.Add('TRP_RAZAO');
  lista.Add('TRP_TIPO');
  lista.Add('TRP_FANTASIA');
  lista.Add('TRP_INSC');
  lista.Add('TRP_CONTATO');
  lista.Add('TRP_FONE');
  lista.Add('TRP_FAX');
  lista.Add('TRP_EMAIL');
  lista.Add('TRP_EMAIL_NFE');
  lista.Add('TRP_CEP');
  lista.Add('TRP_CIDADE');
  lista.Add('TRP_UF');
  lista.Add('TRP_ENDERE');
  lista.Add('TRP_NUMERO');
  lista.Add('TRP_BAIRRO');
  lista.Add('REP_RAZAO');
  lista.Add('PCX_DESCRI');
  lista.Add('BAN_APELIDO');
  lista.Add('CLI_UND_CONSUMIDORA');

  CriaCSV(dsExportaExcel, lista, Self);

end;

end.
