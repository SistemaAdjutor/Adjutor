unit Prd0013;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, Provider, SqlExpr,SqlClientDataSet,
  DB, DBClient, DBLocal, DBLocalS, Data.DBXFirebird, SimpleDS;

type
  TFrmPrdEquivalente = class(TForm)
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    Grp_Dados: TGroupBox;
    Panel1: TPanel;
    Bit_Cancelar: TBitBtn;
    Bit_Sair: TBitBtn;
    Bit_novo: TBitBtn;
    Bit_Excluir: TBitBtn;
    Bit_Gravar: TBitBtn;
    Label1: TLabel;
    Edt_Refer: TEdit;
    Edt_Descri: TEdit;
    Label2: TLabel;
    Edt_Codigo: TEdit;
    Label3: TLabel;
    Edt_Equiva: TEdit;
    Cbx_Cliente: TComboBox;
    SqlCdsEquiva: TSQLClientDataSet;
    DsEquiva: TDataSource;
    SqlCdsEquivaEQV_REGISTRO: TIntegerField;
    SqlCdsEquivaPRD_REFER: TStringField;
    SqlCdsEquivaPRD_REFER_EQUIV: TStringField;
    SqlCdsEquivaCLI_CODIGO: TStringField;
    SqlCdsEquivaEMP_CODIGO: TStringField;
    SqlCdsEquivaPRD_DESCRI: TStringField;
    SqlCdsEquivaCLI_RAZAO: TStringField;
    SqlCdsClie: TSQLClientDataSet;
    SqlCdsClieCLI_CODIGO: TStringField;
    SqlCdsClieCLI_RAZAO: TStringField;
    CbTeste: TComboBox;
    procedure Bit_SairClick(Sender: tObject);
    procedure MudaCorCampos(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure Cbx_ClienteClick(Sender: tObject);
    procedure Cbx_ClienteChange(Sender: tObject);
    procedure Edt_CodigoExit(Sender: tObject);
    procedure Bit_novoClick(Sender: tObject);
    procedure HabilitaBotoes;
    procedure DesabilitaBotoes;
    procedure Bit_GravarClick(Sender: tObject);
    procedure Bit_CancelarClick(Sender: tObject);
    procedure Bit_ExcluirClick(Sender: tObject);
  private
    { Private declarations }
    {campos}
    CampoEdit    : TEdit;
    CampoBox     : TComboBox;
    wCodCliente  : String;
    procedure PreencheCombo;
    procedure Busca_Produtos_Equivalentes;
    procedure Localiza_Cliente;
    procedure HabilitaDados;
    procedure DesabilitaDados;
    procedure LimparDados;
    procedure Gravar_Equivalencia;
  public
    { Public declarations }
    wCodEmpresa  : String;  //Esta variavel guarda o codigo do produto da empresa que foi cadastrado.    
  end;

var
  FrmPrdEquivalente: TFrmPrdEquivalente;

implementation

uses Uteis, DataCad, RWFunc;

{$R *.dfm}

procedure TFrmPrdEquivalente.Bit_SairClick(Sender: tObject);
begin
    Close;
end;

procedure TFrmPrdEquivalente.MudaCorCampos(Sender: tObject);
begin
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
    {CampoBox :TComboBox}
    if Assigned(CampoBox) then
       begin
          CampoBox.color := clWindow;
       end;
    if ActiveControl is TComboBox then
       begin
          TComboBox(ActiveControl).color := $0080FFFF;
          CampoBox := TComboBox(ActiveControl);
       end
    else
       begin
          CampoBox := nil;
       end;
end;

procedure TFrmPrdEquivalente.FormShow(Sender: tObject);
begin
    Screen.cursor := CrHourglass;
    Screen.OnActiveControlChange   := MudaCorCampos;
    Left := 91;
    Top  := 144;
    PreencheCombo;
    Busca_Produtos_Equivalentes;
    DBGrid1.SetFocus;
    HabilitaBotoes;
    DesabilitaDados;
    screen.cursor := crDefault;
end;

procedure TFrmPrdEquivalente.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
    Screen.OnActiveControlChange := NIL;
end;

procedure TFrmPrdEquivalente.PreencheCombo;
begin
    try
      wSql1 := 'Select C1.CLI_CODIGO,C1.CLI_RAZAO from CLI0000 C1 ';
      SqlCdsClie.Close;
      SqlCdsClie.CommandText := SQLDEF('CLIENTES',wSql1,'','C1.CLI_RAZAO','C1.');
      SqlCdsClie.Open;
      SqlCdsClie.First;
      Cbx_Cliente.Clear;
      Cbx_Cliente.Items.Add('');
      CbTeste.Clear;
      CbTeste.Items.Add('');
      while not SqlCdsClie.Eof do
       begin
           Cbx_Cliente.Items.Add(SqlCdsClieCLI_RAZAO.AsString);
           CbTeste.Items.Add(SqlCdsClieCLI_CODIGO.AsString);
           SqlCdsClie.Next;
       end;
      Cbx_Cliente.ItemIndex := 0;
      CbTeste.ItemIndex     := 0;
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao carregar a Combo ! '+e.message));
    end;
end;

procedure TFrmPrdEquivalente.Busca_Produtos_Equivalentes;
begin
    try
      wSql1      := 'Select E1.*,P1.PRD_DESCRI,C1.CLI_RAZAO from PRD_EQUIV E1 LEFT JOIN PRD0000 P1 ON (E1.PRD_REFER = P1.PRD_REFER) LEFT JOIN CLI0000 C1 ON (E1.CLI_CODIGO = C1.CLI_CODIGO) ';
      wSeleciona := 'Where E1.PRD_REFER = '''+Edt_Refer.Text+'''';
      wOrdem     := 'E1.PRD_REFER,E1.PRD_REFER_EQUIV';
      SqlCdsEquiva.close;
      SqlCdsEquiva.CommandText := SQLDEF('PRODUTOS',wSql1,wSeleciona,wOrdem,'E1.');
      SqlCdsEquiva.Open;
    except on E:EdataBaseError do
       uteis.erro  (pchar('Erro ao localizar os produtos Equivalentes ! '+e.message));
    end;
end;

procedure TFrmPrdEquivalente.Cbx_ClienteClick(Sender: tObject);
begin
    Localiza_Cliente;
end;

procedure TFrmPrdEquivalente.Localiza_Cliente;
begin
    try
      if (SqlCdsClie.Locate('CLI_CODIGO',wCodCliente,[])=True) then
         begin
             Edt_Codigo.Text := SqlCdsClieCLI_CODIGO.AsString;
         end
      else
         begin
             Edt_Codigo.Text := '';
         end;
    except on e:EdataBaseError do
        uteis.erro  (pchar('Erro ao Localizar o Cliente ! '+e.message));
    end;
end;

procedure TFrmPrdEquivalente.Cbx_ClienteChange(Sender: tObject);
begin
    CbTeste.ItemIndex := cbx_Cliente.ItemIndex;
    wCodCliente       := Copy(CbTEste.Text,0,5);
    if SqlCdsClie.Locate('CLI_CODIGO',wCodCliente,[])= true then
       begin
           Edt_Codigo.Text   := SqlCdsClieCLI_CODIGO.AsString;
           CbTeste.ItemIndex := Cbx_Cliente.ItemIndex;
       end
    else
       begin
           Edt_Codigo.Clear;
       end;
end;

procedure TFrmPrdEquivalente.Edt_CodigoExit(Sender: tObject);
begin
    if (Edt_Codigo.Text <> '') then
       begin
           Edt_Codigo.Text := StrZero(Edt_Codigo.Text,Edt_Codigo.MaxLength);
           if (SqlCdsClie.Locate('CLI_CODIGO',Edt_Codigo.Text,[])=True) then
              begin
                  Cbx_Cliente.Text := SqlCdsClieCLI_RAZAO.AsString;
                  wCodCliente      := SqlCdsClieCLI_CODIGO.AsString;
              end
           else
              begin
                  Edt_Codigo.Text  := '';
                  Cbx_Cliente.Text := '';
              end;
       end;
end;

procedure TFrmPrdEquivalente.DesabilitaDados;
begin
    Grp_Dados.Enabled   := False;
    Edt_Equiva.ReadOnly := True;
    Edt_Equiva.Color    := $00D7D7D7;
end;

procedure TFrmPrdEquivalente.HabilitaDados;
begin
    Grp_Dados.Enabled   := True;
    Edt_Equiva.ReadOnly := False;
    Edt_Equiva.Color    := clWindow;
end;

procedure TFrmPrdEquivalente.Bit_novoClick(Sender: tObject);
begin
    try
      HabilitaDados;
      DesabilitaBotoes;
      Edt_Codigo.SetFocus;
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao criar o novo registro ! '+e.message));
    end;
end;

procedure TFrmPrdEquivalente.DesabilitaBotoes;
begin
    Bit_novo.Enabled     := False;
    Bit_Excluir.Enabled  := False;
    Bit_Gravar.Enabled   := True;
    Bit_Cancelar.Enabled := True;
    Bit_Sair.Visible     := False;
end;

procedure TFrmPrdEquivalente.HabilitaBotoes;
begin
    Bit_novo.Enabled     := True;
    Bit_Excluir.Enabled  := True;
    Bit_Gravar.Enabled   := False;
    Bit_Cancelar.Enabled := False;
    Bit_Sair.Visible     := True;
end;

procedure TFrmPrdEquivalente.Bit_GravarClick(Sender: tObject);
begin
    try
      if (Edt_codigo.Text = '') then
         Begin
             uteis.aviso('Favor informar o código do cliente !');
             Edt_codigo.SetFocus;
             exit;
         end;
      if (Edt_Equiva.Text = '') then
         begin
             uteis.aviso('Favor informar o código da equivalência do produto !');
             Edt_Equiva.SetFocus;
             exit;
         end;
      wSql1      := 'Select Eq.* from PRD_EQUIV Eq ';
      wSeleciona := 'Where Eq.CLI_CODIGO = '''+Edt_Codigo.Text+''' AND Eq.PRD_REFER = '''+Edt_Refer.Text+''' AND Eq.PRD_REFER_EQUIV = '''+Edt_Equiva.Text+'''';
      wOrdem     := 'Eq.EMP_CODIGO,Eq.CLI_CODIGO,Eq.PRD_REFER,Eq.PRD_REFER_EQUIV';
      DataCadastros.sqlUpdate.Close;
      DataCadastros.SqlUpdate.sql.text :=SQLDEF('PRODUTOS',wSql1,wSeleciona,wOrdem,'Eq.');
      DataCadastros.sqlUpdate.Open;
      if (DataCadastros.sqlUpdate.IsEmpty = True) then
         begin
             Gravar_Equivalencia;
             Busca_Produtos_Equivalentes;
         end
      else
         begin
             uteis.aviso('Equivalência já cadastrada !');
             SqlCdsEquiva.Locate('EQV_REGISTRO',DataCadastros.sqlUpdate.FieldByName('EQV_REGISTRO').AsInteger,[]);
         end;
      DesabilitaDados;
      HabilitaBotoes;
      LimparDados;
      DBGrid1.SetFocus;
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao gravar o registro ! '+e.message));
    end;
end;

procedure TFrmPrdEquivalente.Bit_CancelarClick(Sender: tObject);
begin
    try
      DesabilitaDados;
      HabilitaBotoes;
      LimparDados;
      Busca_Produtos_Equivalentes;
      DBGrid1.SetFocus;
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao cancelar o registro ! '+e.message));
    end;
end;

procedure TFrmPrdEquivalente.LimparDados;
begin
    Edt_Codigo.Text  := '';
    Cbx_Cliente.Text := '';
    Edt_Equiva.Text  := '';
end;

procedure TFrmPrdEquivalente.Gravar_Equivalencia;
begin
    try
      wSql1 := 'Insert into PRD_EQUIV ('+
                                       'EMP_CODIGO,'+
                                       'PRD_REFER,'+
                                       'PRD_REFER_EQUIV,'+
                                       'CLI_CODIGO)';
      wSql2 := 'Values ('''+wCodEmpresa+''','''+
                            Edt_Refer.Text+''','''+
                            Edt_Equiva.Text+''','''+
                            Edt_Codigo.Text+''')';
      //
      DataCadastros.sqlUpdate.Close;
      DataCadastros.SqlUpdate.sql.text :=wSql1 + wSql2;
      DataCadastros.sqlUpdate.Execsql;
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao gravar o registro ! '+e.message));
    end;
end;

procedure TFrmPrdEquivalente.Bit_ExcluirClick(Sender: tObject);
begin
    if (uteis.confirmacao ( ('Deseja excluir a equivalência : '+SqlCdsEquivaPRD_REFER_EQUIV.AsString+' ?'+#13#10+'Confirma exclusão !'))=mrYes) then
       begin
           Screen.Cursor := crHourGlass;
           try
             wSql1      := 'Delete from PRD_EQUIV ';
             wSeleciona := 'where EQV_REGISTRO = '''+SqlCdsEquivaEQV_REGISTRO.AsString+'''';
             //
             DataCadastros.sqlUpdate.Close;
             DataCadastros.SqlUpdate.sql.text :=wSql1+wSeleciona;
             DataCadastros.sqlUpdate.Execsql;
             Busca_Produtos_Equivalentes;
           except on E:EDataBaseError do
              uteis.erro  (pchar('Erro ao excluir o registro ! '+e.message));
           end;
           Screen.Cursor := crDefault;
       end;
    DbGrid1.SetFocus;
end;


end.
