unit Prmd0002;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Provider, SqlExpr,SqlClientDataSet, DB, DBClient,
  DBLocal, DBLocalS, Data.DBXFirebird, SimpleDS, ClipBrd;

type
  TFrmParamDuplicar = class(TForm)
    GroupBox1: TGroupBox;
    Edt_Para_Codigo: TEdit;
    Cbx_Para_Empresa: TComboBox;
    Edt_Cod_Empresa: TEdit;
    Edt_Nome: TEdit;
    Panel1: TPanel;
    Bit_Cancelar: TBitBtn;
    Bit_Confirma: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    SqlCds_Empresa: TSQLClientDataSet;
    SqlCds_EmpresaEMP_CODIGO: TStringField;
    SqlCds_EmpresaEMP_RAZAO: TStringField;
    cdsExporta: TSqlClientDataSet;
    cdsGrava: TSqlClientDataSet;
    procedure Bit_CancelarClick(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure Cbx_Para_EmpresaClick(Sender: tObject);
    procedure Edt_Para_CodigoExit(Sender: tObject);
    procedure Edt_Para_CodigoEnter(Sender: tObject);
    procedure Cbx_Para_EmpresaEnter(Sender: tObject);
    procedure Bit_ConfirmaClick(Sender: tObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmParamDuplicar: TFrmParamDuplicar;

implementation

uses Uteis, Prmd0001, DataCad, RWFunc, DataCad1, InicioDB;

{$R *.dfm}





procedure TFrmParamDuplicar.Bit_CancelarClick(Sender: tObject);
begin
    Close;
end;

procedure TFrmParamDuplicar.FormShow(Sender: tObject);
begin
    Screen.Cursor := crHourGlass;
    try
      SqlCds_Empresa.Close;
      SqlCds_Empresa.CommandText := 'Select E1.EMP_CODIGO,E1.EMP_RAZAO from EMP0000 E1 order by E1.EMP_RAZAO';
      SqlCds_Empresa.open;
      SqlCds_Empresa.First;
      Cbx_Para_Empresa.Clear;
      Cbx_Para_Empresa.Items.Add('');
      while not SqlCds_Empresa.Eof do
       begin
           if (Edt_Cod_Empresa.Text <> SqlCds_EmpresaEMP_CODIGO.AsString) then
              Cbx_Para_Empresa.Items.Add(SqlCds_EmpresaEMP_RAZAO.AsString);
           SqlCds_Empresa.Next;
       end;
      Cbx_Para_Empresa.ItemIndex := 0;
      //
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao Carregar os Dados ! '+e.message));
    end;
    Screen.Cursor := crDefault;
end;

procedure TFrmParamDuplicar.Cbx_Para_EmpresaClick(Sender: tObject);
begin
    Cbx_Para_Empresa.Color := clWindow;
    if (SqlCds_Empresa.Locate('EMP_RAZAO',Cbx_Para_Empresa.Text,[])=True) then
       begin
           Edt_Para_Codigo.Text := SqlCds_EmpresaEMP_CODIGO.AsString;
           {Verifica se ja existe o parametro para a empresa selecionada}
           DataCadastros.sqlUpdate.Close;
           DataCadastros.SqlUpdate.sql.text :='Select E1.EMP_CODIGO from PRMT0001 E1 where E1.EMP_CODIGO = '''+Edt_Para_Codigo.Text+''' order by E1.EMP_CODIGO';
           DataCadastros.sqlUpdate.Open;
           if (not DataCadastros.sqlUpdate.IsEmpty) then
              begin
                  uteis.aviso('Parametro já definido para esta empresa !');
                  Edt_Para_Codigo.Text       := '';
                  Cbx_Para_Empresa.Text      := '';
                  Cbx_Para_Empresa.ItemIndex := 0;
                  Edt_Para_Codigo.SetFocus;
              end;
           DataCadastros.sqlUpdate.Close;
       end
    else
       begin
           Edt_Para_Codigo.Text := '';
       end;
end;

procedure TFrmParamDuplicar.Edt_Para_CodigoExit(Sender: tObject);
begin
    Edt_Para_Codigo.Color := clWindow;
    Edt_Para_Codigo.Text := StrZero(Edt_Para_Codigo.Text,Edt_Para_Codigo.MaxLength);
    if (Edt_Para_Codigo.Text <>'') then
       begin
           if (SqlCds_Empresa.Locate('EMP_CODIGO',Edt_Para_Codigo.Text,[])=True) then
              begin
                  Cbx_Para_Empresa.Text := SqlCds_EmpresaEMP_RAZAO.AsString;
                  uteis.aviso('Parametro já definido para esta empresa !');
                  Edt_Para_Codigo.Text       := '';
                  Cbx_Para_Empresa.Text      := '';
                  Cbx_Para_Empresa.ItemIndex := 0;
                  Edt_Para_Codigo.SetFocus;
              end
           else
              begin
                  Edt_Para_Codigo.Text  := '';
                  Cbx_Para_Empresa.Text := '';
              end;
       end;
end;

procedure TFrmParamDuplicar.Edt_Para_CodigoEnter(Sender: tObject);
begin
    Edt_Para_Codigo.Color := $0080FFFF;
end;

procedure TFrmParamDuplicar.Cbx_Para_EmpresaEnter(Sender: tObject);
begin
    Cbx_Para_Empresa.Color := $0080FFFF;
end;

procedure TFrmParamDuplicar.Bit_ConfirmaClick(Sender: tObject);
var
  j : integer;
begin
  try
    cdsExporta.Close;
    cdsExporta.CommandText := 'SELECT * FROM PRMT0001 WHERE EMP_CODIGO = ' + QuotedStr(Edt_Cod_Empresa.Text);
    cdsExporta.Open;
    cdsGrava.Open;
    cdsGrava.Insert;
    for j := 0 to cdsExporta.Fields.Count - 1 do
    begin
      if cdsExporta.Fields[j].FieldName = 'PMT_REGISTRO' then
        cdsGrava.Fields[j].AsVariant := dbInicio.BuscaUmDadoSqlAsInteger('SELECT MAX(PMT_REGISTRO) + 1 FROM PRMT0001')
      else
      if cdsExporta.Fields[j].FieldName = 'EMP_CODIGO' then
        cdsGrava.Fields[j].AsVariant := Edt_Para_Codigo.Text
      else
        cdsGrava.Fields[j].AsVariant := cdsExporta.Fields[j].AsVariant;
    end;

    cdsGrava.Post;
    cdsGrava.ApplyUpdates(0);

    MessageDlg('Registro Copiado com Sucecsso.', mtInformation, [mbOK], 0);
    Close;
    DataCadastros1.CdsParametros.Close;
    DataCadastros1.CdsParametros.Open;

  except on E:EDataBaseError do
     uteis.erro  (pchar('Erro ao Gravar o registro ! '+e.message));
  end;
end;


end.
