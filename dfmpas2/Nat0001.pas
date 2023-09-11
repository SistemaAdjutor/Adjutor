unit Nat0001;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Provider, SqlExpr,SqlClientDataSet, DB, DBClient, DBLocal, DBLocalS, StdCtrls,
  Buttons, Mask,  rxToolEdit,  rxCurrEdit, ExtCtrls, Data.DBXFirebird, SimpleDS;

type
  TFrmOpNatureza = class(TForm)
    GroupBox2: TGroupBox;
    CbOperDe: TComboBox;
    CurrOpeNatDe: TCurrencyEdit;
    GroupBox3: TGroupBox;
    CurrOpeNatPa: TCurrencyEdit;
    CbOperPa: TComboBox;
    BitBtn1: TBitBtn;
    SqlCdsOPDe: TSQLClientDataSet;
    SqlCdsOPDeOPE_NATUREZA: TStringField;
    SqlCdsOPDeOPE_DESCRI: TStringField;
    SqlCdsOPPa: TSQLClientDataSet;
    SqlCdsOPPaOPE_CODIGO: TStringField;
    SqlCdsOPPaOPE_NATUREZA: TStringField;
    SqlCdsOPPaOPE_DESCRI: TStringField;
    SqlCdsOPPaOPE_DENTRO: TStringField;
    SqlCdsOPPaOPE_TIPO: TStringField;
    Panel2: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    BitSair: TBitBtn;
    procedure BitBtn1Click(Sender: tObject);
    procedure CurrOpeNatDeExit(Sender: tObject);
    procedure CurrOpeNatPaExit(Sender: tObject);
    procedure CbOperDeClick(Sender: tObject);
    procedure CbOperPaClick(Sender: tObject);
    procedure CbOperDeExit(Sender: tObject);
    procedure CbOperPaExit(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure BitSairClick(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    procedure Atualiza_Operacao_NF_Entrada(pNatDe,pNatPa:String);
    procedure BuscaOPDe(pCFOP:String);
    procedure BuscaOPPa(pCFOP:String);
    procedure PreencheComboOPNat;
  public
    { Public declarations }
  end;

var
  FrmOpNatureza: TFrmOpNatureza;

implementation

uses DataCad, RWFunc, uteis, iniciodb;

{$R *.dfm}

procedure TFrmOpNatureza.Atualiza_Operacao_NF_Entrada(pNatDe,
  pNatPa: String);
begin
   try
     wSql1     := 'Update ENF0001 SET OPE_NATUREZA = '''+pNatPa+'''';
     wSeleciona:= ' where OPE_NATUREZA = '''+pNatDe+'''';
     DataCadastros.sqlUpdate.Close;
     DataCadastros.SqlUpdate.sql.text :=wSql1+wSeleciona;
     DataCadastros.sqlUpdate.Execsql;
     uteis.aviso('Atualizado com sucesso !');
     CurrOpeNatDe.Value := 0;
     CbOperDe.Text      := '';
     CurrOpeNatPa.Value := 0;
     CbOperPa.Text      := '';
   except
     on E:EDataBaseError do
       begin
           uteis.erro  (pchar('Impossível atualizar Notas de Entrada !'+#13#10+
                      'Mensagem erro: '+e.Message));
       end;
   end;
end;

procedure TFrmOpNatureza.BitBtn1Click(Sender: tObject);
begin
   if (CurrOpeNatDe.Value = 0) then
      begin
          uteis.aviso('Informe a CFOP De !');
          CurrOpeNatDe.SetFocus;
          CurrOpeNatDe.SelectAll;
      end
   else
   if (CurrOpeNatPa.Value = 0) then
      begin
          uteis.aviso('Informe a CFOP Para !');
          CurrOpeNatPa.SetFocus;
          CurrOpeNatPa.SelectAll;
      end
   else
      begin
          if uteis.confirmacao ( ('Confirma a Troca da Natureza Operação.'+#13#10+
                               'CEOP De: '+CurrOpeNatDe.Text+#13#10+
                               'CEOP Para: '+CurrOpeNatPa.Text+#13#10+
                               'Tem certeza ?'))=mrYes then
             begin
                Atualiza_Operacao_NF_Entrada(StrZero(CurrOpeNatDe.Text,4),StrZero(CurrOpeNatPa.Text,4));
                PreencheComboOPNat;
                CurrOpeNatDe.SetFocus;
             end
          else
             begin
                CurrOpeNatDe.SetFocus;
                CurrOpeNatDe.SelectAll;
             end;
      end;
end;

procedure TFrmOpNatureza.BuscaOPDe(pCFOP: String);
begin
   if (SqlCdsOPDe.Locate('OPE_NATUREZA',pCFOP,[])=True) then
      begin
         CbOperDe.Text := SqlCdsOPDeOPE_NATUREZA.AsString+' - '+SqlCdsOPDeOPE_DESCRI.AsString;
      end
   else
      begin
         uteis.aviso('Operação Fiscal inexistente !');
         CurrOpeNatDe.Value := 0;
         CurrOpeNatDe.SelectAll;
         CurrOpeNatDe.SetFocus;
      end;
end;

procedure TFrmOpNatureza.BuscaOPPa(pCFOP: String);
begin
   if (SqlCdsOPPa.Locate('OPE_NATUREZA',pCFOP,[])=True) then
      begin
         CbOperPa.Text := SqlCdsOPPaOPE_NATUREZA.AsString+' - '+SqlCdsOPPaOPE_DESCRI.AsString;
      end
   else
      begin
         uteis.aviso('Operação Fiscal inexistente !');
         CurrOpeNatPa.Value := 0;
         CurrOpeNatPa.SelectAll;
         CurrOpeNatPa.SetFocus;
      end;
end;

procedure TFrmOpNatureza.PreencheComboOPNat;
begin
   try
     wSQL1   := 'Select Distinct(E1.OPE_NATUREZA),O1.ope_descri from ENF0001 E1 LEFT JOIN OPE0000 O1 ON (O1.ope_natureza = E1.ope_natureza) ';
     wOrdem  := 'E1.OPE_NATUREZA';
     //
     SqlCdsOPDe.Close;
     SqlCdsOPDe.CommandText := SQLDEF('PARAMETROS',wSQL1,'',wOrdem,'E1.');
     SqlCdsOPDe.Open;
     SqlCdsOPDe.First;
     CbOperDe.Items.Clear;
     while (not SqlCdsOPDe.eof) do
      begin
         CbOperDe.Items.Add(SqlCdsOPDeOPE_NATUREZA.AsString+' - '+SqlCdsOPDeOPE_DESCRI.AsString);
         SqlCdsOPDe.Next;
      end;
     CbOperDe.ItemIndex := -1;
     //
     wSql1 := 'select O1.OPE_CODIGO,OPE_NATUREZA,O1.OPE_DESCRI,O1.OPE_DENTRO,O1.OPE_TIPO from OPE0000 O1 ';
//     wSeleciona := ' WHERE O1.OPE_TIPO = ''E''';
     wOrdem     := ' O1.OPE_NATUREZA';
     SqlCdsOPPa.Close;
//     SqlCdsOPPa.CommandText := SQLDEF('PARAMETROS',wSQL1,wSeleciona,wOrdem,'O1.');
     SqlCdsOPPa.CommandText := SQLDEF('OPERACAOFISCAL',wSQL1,'',wOrdem,'O1.');
     SqlCdsOPPa.Open;
     SqlCdsOPPa.First;
     CbOperPa.Items.Clear;
     while (not SqlCdsOPPa.eof) do
      begin
         CbOperPa.Items.Add(SqlCdsOPPaOPE_NATUREZA.AsString+' - '+SqlCdsOPPaOPE_TIPO.AsString+' - '+SqlCdsOPPaOPE_DESCRI.AsString);
         SqlCdsOPPa.Next;
      end;
     CbOperPa.ItemIndex := -1;
   except
     on E:EDatabaseError do
        begin
           uteis.aviso(pchar('Erro ao carregar a combo de Operação Fiscal !'+#13#10+
                       'Mensagem erro: '+e.message));
        end;
   end;
end;

procedure TFrmOpNatureza.CurrOpeNatDeExit(Sender: tObject);
begin
   if (CurrOPeNatDe.Value > 0) then
      BuscaOPDe(StrZero(CurrOpeNatDe.Text,4));
end;

procedure TFrmOpNatureza.CurrOpeNatPaExit(Sender: tObject);
begin
   if (CurrOPeNatPa.Value > 0) then
      BuscaOPPa(StrZero(CurrOpeNatPa.Text,4));
end;

procedure TFrmOpNatureza.CbOperDeClick(Sender: tObject);
begin
    if (CbOperDe.Text <> '') then
       begin
           CurrOpeNatDe.Text := StrZero(Trim(Copy(CbOperDe.Text,01,04)),4);
       end;
end;

procedure TFrmOpNatureza.CbOperPaClick(Sender: tObject);
begin
    if (CbOperPa.Text <> '') then
       begin
           CurrOpeNatPa.Text := StrZero(Trim(Copy(CbOperPa.Text,01,04)),4);
       end;
end;

procedure TFrmOpNatureza.CbOperDeExit(Sender: tObject);
begin
    if ((ActiveControl.Name = 'BitSair') or (ActiveControl.Name = 'CurrOpeNatDe')) then
       exit;
    if (CbOperDe.Text <> '') then
       begin
           CurrOpeNatDe.Text := StrZero(Trim(Copy(CbOperDe.Text,01,04)),4);
       end;
end;

procedure TFrmOpNatureza.CbOperPaExit(Sender: tObject);
begin
    if ((ActiveControl.Name = 'BitSair') or (ActiveControl.Name = 'CurrOpeNatPa')) then
       exit;
    if (CbOperPa.Text <> '') then
       begin
           CurrOpeNatPa.Text := StrZero(Trim(Copy(CbOperPa.Text,01,04)),4);
       end;
end;

procedure TFrmOpNatureza.FormShow(Sender: tObject);
begin
    PreencheComboOPNat;
    CurrOpeNatDe.SetFocus;
    CurrOpeNatDe.SelectAll;
end;

procedure TFrmOpNatureza.BitSairClick(Sender: tObject);
begin
   Close;
end;

procedure TFrmOpNatureza.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
   SqlCdsOPDe.Close;
   SqlCdsOpPa.Close;
   Action := CaFree;
end;

procedure TFrmOpNatureza.FormDestroy(Sender: TObject);
begin
     FrmOpNatureza := Nil;
end;

end.
