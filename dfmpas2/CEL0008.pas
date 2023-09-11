unit CEL0008;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Grids, DBGrids, ExtCtrls, StdCtrls, Buttons, DBCtrls, Mask,
  Provider, SqlExpr,SqlClientDataSet, DBClient, DBLocal, DBLocalS,
  SimpleDS, frxExportXLS, frxClass, Data.DBXFirebird;

type
  TFormMovCelulas = class(TForm)
    DBGridMov: TDBGrid;
    Panel2: TPanel;
    Bit_Relatorio: TBitBtn;
    Bit_Manut: TBitBtn;
    Bit_Sair: TBitBtn;
    GroupBox1: TGroupBox;
    Rd_OP: TRadioButton;
    Rd_Celula: TRadioButton;
    Rd_Entrada: TRadioButton;
    Rd_Conclu: TRadioButton;
    SqlCdsMovCelula: TSQLClientDataSet;
    DsMovCelula: TDataSource;
    GroupBox2: TGroupBox;
    Edt_Nome: TEdit;
    SqlCdsMovCelulaTUP_TOTAL_CC: TCurrencyField;
    SqlCdsMovCelulaFATURAMENTO_CC: TCurrencyField;
    BitCancelar: TBitBtn;
    BitPesquisar: TBitBtn;
    SqlCdsMovCelulaOSV_CODIGO: TStringField;
    SqlCdsMovCelulaCEL_CODIGO: TStringField;
    SqlCdsMovCelulaCEL_NOME: TStringField;
    SqlCdsMovCelulaPRD_REFER: TStringField;
    SqlCdsMovCelulaPRD_DESCRI: TStringField;
    SqlCdsMovCelulaCME_CODIGO: TStringField;
    SqlCdsMovCelulaOSV_EMISSAO: TDateField;
    SqlCdsMovCelulaOSV_QTDE: TFMTBCdField;
    SqlCdsMovCelulaPED_CODIGO: TStringField;
    SqlCdsMovCelulaCEM_DTENTROU: TDateField;
    SqlCdsMovCelulaCEM_DTCONCLUIU: TDateField;
    SqlCdsMovCelulaCEM_PRECOUNIT: TFMTBCdField;
    SqlCdsMovCelulaCEM_TUPUNIT: TFMTBCdField;
    SqlCdsMovCelulaCEM_CELAUX: TStringField;
    SqlCdsMovCelulaCEM_TRABALHO: TStringField;
    SqlCdsMovCelulaCEM_TUPTRAB: TFMTBCdField;
    SqlCdsMovCelulaVCT_TUP: TFMTBCdField;
    SqlCdsMovCelulaCEM_SITUACAO: TStringField;
    SqlCdsMovCelulaCEM_REGISTRO: TIntegerField;
    frxXLSExport1: TfrxXLSExport;
    procedure FormShow(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure Bit_SairClick(Sender: tObject);
    procedure DBGridMovDblClick(Sender: tObject);
    procedure Bit_ManutClick(Sender: tObject);
    procedure Rd_CelulaClick(Sender: tObject);
    procedure SpeedButton1Click(Sender: tObject);
    procedure BitBtn1Click(Sender: tObject);
    procedure Edt_NomeExit(Sender: tObject);
    procedure Bit_RelatorioClick(Sender: tObject);
    procedure Edt_NomeKeyPress(Sender: tObject; var Key: Char);
    procedure Edt_NomeEnter(Sender: tObject);
    procedure SqlCdsMovCelulaCalcFields(DataSet: TDataSet);
    procedure BitPesquisarClick(Sender: tObject);
    procedure BitCancelarClick(Sender: tObject);
    procedure SqlCdsMovCelulaBeforeEdit(DataSet: TDataSet);
    procedure DBGridMovKeyPress(Sender: tObject; var Key: Char);
    procedure FormCreate(Sender: tObject);
    procedure DBGridMovDrawColumnCell(Sender: tObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    procedure Reclassifica;
    procedure BuscaOP;
    procedure BotaoPesquisar;
  public
    { Public declarations }
    procedure BotoesAcesso;
  end;

var
  FormMovCelulas: TFormMovCelulas;

implementation

uses Uteis, RWFunc, CEL0009, GImpCel, DataCad, DataCad1, DmProdu, InicioDB;

{$R *.DFM}





procedure TFormMovCelulas.Reclassifica;
begin
    Screen.cursor := crHourGlass;
    try
      if Rd_OP.Checked then
         begin
             wOrdem := 'C3.OSV_CODIGO';
         end;
      if Rd_Celula.Checked then
         begin
             wOrdem := 'C3.CEL_CODIGO';
         end;
      if Rd_Entrada.Checked then
         begin
             wOrdem := 'C3.CEM_DTENTROU DESC';
         end;
      if Rd_Conclu.Checked then
         begin
             wOrdem := 'C3.CEM_DTCONCLUIU DESC';
         end;
      wSql1 := 'SELECT C3.CEM_REGISTRO,C3.OSV_CODIGO,C3.CEL_CODIGO,C1.CEL_NOME,C3.PRD_REFER,P1.PRD_DESCRI,C3.CME_CODIGO,C3.OSV_EMISSAO,C3.OSV_QTDE,C3.PED_CODIGO,C3.CEM_DTENTROU,C3.CEM_DTCONCLUIU,C3.CEM_PRECOUNIT,C3.CEM_TUPUNIT,C3.CEM_CELAUX,C3.CEM_TRABALHO,';
      wSql2 := 'C3.CEM_TUPTRAB,C3.VCT_TUP,C3.CEM_SITUACAO FROM CEL_MOV03 C3 LEFT JOIN CEL0000 C1 ON (C1.CEL_CODIGO = C3.CEL_CODIGO) LEFT JOIN PRD0000 P1 ON (P1.PRD_REFER  = C3.PRD_REFER)';
      SqlCdsMovCelula.Close;
      SqlCdsMovCelula.PacketRecords := 10;
      SqlCdsMovCelula.CommandText := SQLDEF('ORDEMPRODUCAO',wSql1+wSql2,'',wOrdem,'C3.');
      SqlCdsMovCelula.Open;
    except on E:EdataBaseError do
      uteis.erro  (pchar('Erro ao classificar a tabela !'+e.message));
    end;
    Screen.cursor := crDefault;
end;

procedure TFormMovCelulas.FormShow(Sender: tObject);
begin
    screen.Cursor := crHourGlass;
    Rd_OP.Checked := True;
    Reclassifica;
    Edt_Nome.SetFocus;
    Screen.Cursor := crDefault;
end;

procedure TFormMovCelulas.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
    Screen.Cursor := crHourGlass;
    try
      SqlCdsMovCelula.PacketRecords := -1;
      SqlCdsMovCelula.Close;
    except on E:EDataBaseError do
        uteis.erro  (pchar('Erro ao fechar as tabelas !'+e.message));
    end;
    Screen.Cursor := crDefault;
    Action := CaFree;
end;

procedure TFormMovCelulas.Bit_SairClick(Sender: tObject);
begin
    close;
end;

procedure TFormMovCelulas.DBGridMovDblClick(Sender: tObject);
begin
    Bit_Manut.Click;
end;

procedure TFormMovCelulas.Bit_ManutClick(Sender: tObject);
begin
try
   try
     FormManutMovCel := TFormManutMovCel.Create(Application);
     FormManutMovCel.ShowModal;
   finally
     FormManutMovCel.Destroy;
     FormManutMovCel := nil //  nil é - From Assigned = False
   end;
  except
     //beep;
     uteis.erro  ('Ocorreu um erro na criação do formulário!');
  end;
end;

procedure TFormMovCelulas.Rd_CelulaClick(Sender: tObject);
begin
    Reclassifica;
end;

procedure TFormMovCelulas.SpeedButton1Click(Sender: tObject);
begin
    close;
end;

procedure TFormMovCelulas.BitBtn1Click(Sender: tObject);
begin
    close;
end;

procedure TFormMovCelulas.Edt_NomeExit(Sender: tObject);
begin
    Edt_nome.Color := clWindow;
    if Edt_Nome.text <>'' then
       begin
           Edt_Nome.Text := StrZero(Edt_Nome.text,Edt_Nome.MaxLength);
       end;
end;

procedure TFormMovCelulas.Bit_RelatorioClick(Sender: tObject);
begin
    try
      try
        SqlCdsMovCelula.DisableControls;
        FormGImpCel := TFormGImpCel.Create(Application);
        FormGImpCel.ShowModal;
      finally
        FormGImpCel.Destroy;
        FormGImpCel := nil; //  nil é - From Assigned = False
        SqlCdsMovCelula.EnableControls;
        Reclassifica;
      end;
    except
        //beep;
        uteis.erro  ('Ocorreu um erro na criação do formulário!');
    end;
end;

procedure TFormMovCelulas.Edt_NomeKeyPress(Sender: tObject;
  var Key: Char);
begin
    if Rd_OP.checked  then
       begin
           
       end;
end;

procedure TFormMovCelulas.Edt_NomeEnter(Sender: tObject);
begin
    Edt_Nome.Color := $0080FFFF;
end;

procedure TFormMovCelulas.SqlCdsMovCelulaCalcFields(DataSet: TDataSet);
begin
    SqlCdsMovCelulaTUP_TOTAL_CC.AsCurrency   := SqlCdsMovCelulaCEM_TUPTRAB.AsCurrency * SqlCdsMovCelulaOSV_QTDE.AsCurrency;
    SqlCdsMovCelulaFATURAMENTO_CC.AsCurrency := SqlCdsMovCelulaCEM_PRECOUNIT.AsCurrency * SqlCdsMovCelulaOSV_QTDE.AsCurrency;
end;

procedure TFormMovCelulas.BitPesquisarClick(Sender: tObject);
begin
    Screen.Cursor := Crhourglass;
    if (Edt_Nome.Text <> '') then
       begin
           BuscaOP;
       end
    else
       begin
           uteis.aviso('Informe a O.P. !');
           Edt_Nome.SetFocus;
       end;
    Screen.Cursor := CrDefault;
end;

procedure TFormMovCelulas.BuscaOP;
begin
    {Busca pelo nome}
    if Edt_Nome.Text <> '' then
       begin
           try
             wSeleciona := 'where C3.OSV_CODIGO = '''+Edt_Nome.Text+'''';
             wSql1      := 'SELECT C3.CEM_REGISTRO,C3.OSV_CODIGO,C3.CEL_CODIGO,C1.CEL_NOME,C3.PRD_REFER,P1.PRD_DESCRI,C3.CME_CODIGO,C3.OSV_EMISSAO,C3.OSV_QTDE,C3.PED_CODIGO,C3.CEM_DTENTROU,C3.CEM_DTCONCLUIU,C3.CEM_PRECOUNIT,C3.CEM_TUPUNIT,C3.CEM_CELAUX,C3.CEM_TRABALHO,';
             wSql2      := 'C3.CEM_TUPTRAB,C3.VCT_TUP,C3.CEM_SITUACAO FROM CEL_MOV03 C3 LEFT JOIN CEL0000 C1 ON (C1.CEL_CODIGO = C3.CEL_CODIGO) LEFT JOIN PRD0000 P1 ON (P1.PRD_REFER  = C3.PRD_REFER)';
             SqlCdsMovCelula.PacketRecords := 10;
             SqlCdsMovCelula.Close;
             SqlCdsMovCelula.CommandText := SQLDEF('ORDEMPRODUCAO',wSql1+wSql2,wSeleciona,'C3.OSV_CODIGO','C3.');
             SqlCdsMovCelula.Open;
             if SqlCdsMovCelula.IsEmpty then
                begin
                    uteis.aviso('O.P. não encontrado !');
                    Edt_Nome.Text := '';
                    BotaoPesquisar;
                    BitCancelar.Click;
                end
             else
                begin
                    BotaoPesquisar;
                    DBGridMov.setfocus;
                end;
            except on E:EdataBaseError do
                uteis.erro  (Pchar('Erro ao abrir a tabela !'+e.message));
            end;
       end;
end;

procedure TFormMovCelulas.BotaoPesquisar;
begin
    if Edt_Nome.Text <> '' Then
       begin
           BitPesquisar.Enabled := False;
           BitCancelar .Enabled := True;
       end
    else
       begin
           BitPesquisar.Enabled := True;
           BitCancelar .Enabled := False;
       end;
end;

procedure TFormMovCelulas.BotoesAcesso;
begin
     if assigned(FormMovCelulas) then
     begin
       Bit_Relatorio.Enabled := Uteis.AcessoUsuario('ProduçãoCélulas de Produção',DBInicio.Usuario.CODIGO,FormMovCelulas).Relatorio;
     end;
end;

procedure TFormMovCelulas.BitCancelarClick(Sender: tObject);
begin
    Screen.Cursor := crHourGlass;
    Reclassifica;
    Edt_nome.Text := '';
    BotaoPesquisar;
    Edt_nome.SetFocus;
    Screen.Cursor := crDefault;
end;

procedure TFormMovCelulas.SqlCdsMovCelulaBeforeEdit(DataSet: TDataSet);
begin
    FormManutMovCel.DesabilitaBotoes;
end;

procedure TFormMovCelulas.DBGridMovKeyPress(Sender: tObject;
  var Key: Char);
begin
    if (Key=#13) then
       begin
           Bit_Manut.Click;
           Key :=#0;
       end;
end;

procedure TFormMovCelulas.FormCreate(Sender: tObject);
begin
    wSql1      := '';
    wSql2      := '';
    wSeleciona := '';
    wOrdem     := '';
    wDataI     := '';
    wDataF     := '';
end;

procedure TFormMovCelulas.FormDestroy(Sender: TObject);
begin
     FormMovCelulas := Nil;
end;

procedure TFormMovCelulas.DBGridMovDrawColumnCell(Sender: tObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
    if (not odd(SqlCdsMovCelula.RecNo)) then
       if not (GdSelected in State) then
          begin
              DBGridMov.Canvas.Brush.Color := $00FFEFDF;
              DBGridMov.Canvas.FillRect(rect);
              DBGridMov.DefaultDrawDataCell(Rect,column.Field,state);
          end;
end;


end.


