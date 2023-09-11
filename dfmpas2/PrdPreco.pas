{***********************************************************************
 Programa...: PRDPRECO  - Nome formulario = FormAtualizaPreco
 Objetivo...: Atualizar Preço de matéria-prima
 Analista...: Márcio Neu Pacheco
 Programador: Márcio Neu Pacheco

 Comentários: Atualiza inclusive por codigo da familia de produto

 Criação..........: Set/00
 Ultima Alteração.: Mai/01
 Alterado por.....: 

************************************************************************}
unit PrdPreco;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, StdCtrls, Mask, ExtCtrls, Buttons, Db,DBTables, RwFunc,  rxCurrEdit,  rxToolEdit,
  Provider, SqlExpr,SqlClientDataSet, DBClient, DBLocal, DBLocalS, RXDBCtrl,
  Data.DBXFirebird, SimpleDS;

type
  TFormAtualizaPreco = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    EdtRefer: TEdit;
    Label2: TLabel;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DbePrd_UndComp: TDBEdit;
    DbePrd_und: TDBEdit;
    DbePrd_Fatorc: TDBEdit;
    DbePrd_divmult: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    DbePrd_Pcusto: TDBEdit;
    Label8: TLabel;
    Panel3: TPanel;
    Bit_Confirmar: TBitBtn;
    Bit_Cancelar: TBitBtn;
    Bit_Sair: TBitBtn;
    NumEditPrecoCompra: TCurrencyEdit;
    SpPesquisa: TSpeedButton;
    SqlCdsProduto: TSQLClientDataSet;
    DsProduto: TDataSource;
    SqlCdsProdutoPRD_REFER: TStringField;
    SqlCdsProdutoPRD_DESCRI: TStringField;
    SqlCdsProdutoPRD_UNDCOMP: TStringField;
    SqlCdsProdutoPRD_UND: TStringField;
    SqlCdsProdutoPRD_FATORC: TFMTBCdField;
    SqlCdsProdutoPRD_DIVMULT: TStringField;
    SqlCdsProdutoPRD_PCUSTO: TFMTBCdField;
    SqlCdsProdutoPRD_DTPCUSTO: TSQLTimeStampField;
    DBEdit1: TDBEdit;
    EdDtAtualiza: TDateEdit;
    procedure MudaCorCampos(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure EdtReferExit(Sender: tObject);
    procedure EdtReferEnter(Sender: tObject);
    procedure Bit_CancelarClick(Sender: tObject);
    procedure Reconvertepcompra;
    procedure NumEditPrecoCompraEnter(Sender: tObject);
    procedure NumEditPrecoCompraExit(Sender: tObject);
    procedure Bit_ConfirmarClick(Sender: tObject);
    procedure Bit_SairClick(Sender: tObject);
    procedure FormCloseQuery(Sender: tObject; var CanClose: Boolean);
    procedure SpPesquisaClick(Sender: tObject);
    procedure BuscaProduto;
    procedure DBDtAtualizaExit(Sender: tObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    {campos}
    CampoEdit    :TEdit;
    CampoDBEdit  :TDBEdit;
    CampoData    :TDateEdit;
    CampoTDBLuk  :TDBLookupComboBox;
    CampoCurrency:TCurrencyEdit;
  public
    { Public declarations }
  end;

var
  FormAtualizaPreco: TFormAtualizaPreco;

implementation

Uses DataCad, Prd0006, uteis, iniciodb;

{$R *.DFM}






procedure TFormAtualizaPreco.MudaCorCampos(Sender: tObject);
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
    if ActiveControl is TDateEdit then
       begin
          TDateEdit(ActiveControl).color := $0080FFFF;
          CampoData := TDateEdit(ActiveControl);
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
  {CampoCurrency :TCurrencyEdit}
   if Assigned(CampoCurrency) then
      begin
         CampoCurrency.color := clWindow;
      end;
   if ActiveControl is TCurrencyEdit then
      begin
         TMaskEdit(ActiveControl).color := $0080FFFF;
         CampoCurrency := TCurrencyEdit(ActiveControl);
      end
   else
      begin
         CampoCurrency := nil;
      end;
end;

procedure TFormAtualizaPreco.FormShow(Sender: tObject);
begin
    {ativa o método ao evento OnActiveControlChange}
    Screen.OnActiveControlChange   := MudaCorCampos;
end;

procedure TFormAtualizaPreco.FormClose(Sender: tObject;
var
  Action: TCloseAction);
begin
    Screen.OnActiveControlChange := NIL;
    try
      SqlCdsProduto.Close;
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao fechar a tabela !'+e.message));
    end;
    Action := CaFree;
end;

procedure TFormAtualizaPreco.Reconvertepcompra;
begin
    // trazer preco atual
    NumEditPrecoCompra.Value := SqlCdsProdutoPRD_PCUSTO.AsCurrency;
    if SqlCdsProdutoPRD_FATORC.AsCurrency > 0 then
       begin
           if SqlCdsProdutoPRD_DIVMULT.AsString = 'D' then  // divisor
              // Construir p. comprado através do preço trabalhado
              NumEditPrecoCompra.Value := SqlCdsProdutoPRD_PCUSTO.AsCurrency * SqlCdsProdutoPRD_FATORC.AsCurrency
           else                                      // multiplicador
              NumEditPrecoCompra.Value := SqlCdsProdutoPRD_PCUSTO.AsCurrency / SqlCdsProdutoPRD_FATORC.AsCurrency;
       end;
end;

procedure TFormAtualizaPreco.EdtReferExit(Sender: tObject);
begin
//    if (ActiveControl.name='Bit_Sair') then
//       exit;
    BuscaProduto;
end;

procedure TFormAtualizaPreco.EdtReferEnter(Sender: tObject);
begin
    EdtRefer.SelectAll;
end;

procedure TFormAtualizaPreco.Bit_CancelarClick(Sender: tObject);
begin
    SqlCdsProduto.Close;
    EdtRefer.Enabled := true;
    EdtRefer.Text := '';
    NumEditPrecoCompra.Value := 0;
    EdDtAtualiza.Text := '';
    EdtRefer.SetFocus;
    Bit_Confirmar.Enabled := False;
    Bit_cancelar.Enabled  := False;
    Bit_Sair.Enabled      := True;
end;

procedure TFormAtualizaPreco.NumEditPrecoCompraEnter(Sender: tObject);
begin
    NumEditPrecoCompra.SelectAll;
    // deixar a tabela em edição p/ atualização
    SqlCdsProduto.Edit;
    Bit_Confirmar.Enabled := True;
    Bit_cancelar.Enabled  := True;
    Bit_Sair.Enabled      := False;
end;

procedure TFormAtualizaPreco.NumEditPrecoCompraExit(Sender: tObject);
begin
    // Atualizar o preco unitario trabalhado
    SqlCdsProdutoPRD_PCUSTO.AsCurrency :=  NumEditPrecoCompra.Value;
    If SqlCdsProdutoPRD_FATORC.AsCurrency > 0 then
       begin
           if SqlCdsProdutoPRD_DIVMULT.AsString = 'D' then  // divisor
              SqlCdsProdutoPRD_PCUSTO.AsCurrency := SqlCdsProdutoPRD_PCUSTO.AsCurrency / SqlCdsProdutoPRD_FATORC.AsCurrency
           else                                     // multiplicador
              SqlCdsProdutoPRD_PCUSTO.AsCurrency := SqlCdsProdutoPRD_PCUSTO.AsCurrency * SqlCdsProdutoPRD_FATORC.AsCurrency;
       end;
end;

procedure TFormAtualizaPreco.Bit_ConfirmarClick(Sender: tObject);
var
  wPrecoCusto:Double;
  wFamilia:String;
begin
    Screen.Cursor := crHourGlass;
    try
      DataCadastros.sqlUpdate.Close;
      FormatSettings.DecimalSeparator := '.';
      DataCadastros.SqlUpdate.sql.text :=SQLDEF('PRODUTOS','Update PRD0000 set PRD_PCUSTO = '''+FloatToStr(SqlCdsProdutoPRD_PCUSTO.AsCurrency)+''', PRD_DTPCUSTO = '''+DataAmericana(EdDtAtualiza.Text)+'''','where PRD_REFER = '''+EdtRefer.Text+'''','','');
      DataCadastros.sqlUpdate.Execsql;
      FormatSettings.DecimalSeparator := ',';
      SqlCdsProduto.Close;
      EdtRefer.Enabled := true;
      EdtRefer.Text := '';
      NumEditPrecoCompra.Value := 0;
      EdDtAtualiza.Text := '';
      EdtRefer.SetFocus;
      Bit_Confirmar.Enabled := False;
      Bit_cancelar.Enabled  := False;
      Bit_Sair.Enabled      := True;
    except on E:EDataBaseError do
      uteis.erro  (pchar('Erro ao atualizar o preço de custo !'+e.message));
    end;
    Screen.Cursor := crDefault;
end;

procedure TFormAtualizaPreco.Bit_SairClick(Sender: tObject);
begin
    close;
end;

procedure TFormAtualizaPreco.FormCloseQuery(Sender: tObject;
var
  CanClose: Boolean);
begin
    // verifica estado da tabela em edicao e inclusao
end;

procedure TFormAtualizaPreco.FormDestroy(Sender: TObject);
begin
     FormAtualizaPreco := Nil;
end;

procedure TFormAtualizaPreco.SpPesquisaClick(Sender: tObject);
begin

      FormProdutoGrid := TFormProdutoGrid.Create(Application);
      try

         FormProdutoGrid.ShowModal;
         if FormProdutoGrid.modalresult=mrok then
         begin
            EdtREFER.Text := FormProdutoGrid.ReferRetorno;
            BuscaProduto;
            NumEditPrecoCompra.SetFocus;
         end;


      finally
         FreeAndNil(FormProdutoGrid);
      end;
end;

procedure TFormAtualizaPreco.BuscaProduto;
begin
    Screen.Cursor := crHourGlass;
    try
      SqlCdsProduto.Close;
      SqlCdsProduto.CommandText := SQLDEF('PRODUTOS','Select P1.PRD_REFER,P1.PRD_DESCRI,P1.PRD_UNDCOMP,P1.PRD_UND,P1.PRD_FATORC,P1.PRD_DIVMULT,P1.PRD_PCUSTO,P1.PRD_DTPCUSTO from PRD0000 P1','where P1.PRD_REFER = '''+EdtRefer.Text+'''','P1.PRD_REFER','P1.');
      SqlCdsProduto.Open;
      if SqlCdsProduto.IsEmpty = true then
         begin
             uteis.erro  ('Referência não cadastrada !');
             SqlCdsProduto.Close;
             EdtRefer.SetFocus;
          end
       else
          begin
              EdtRefer.Enabled  := false;
              EdDtAtualiza.Date := now;
              Reconvertepcompra;
              NumEditPrecoCompra.SetFocus;
          end;
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao localizar o produto !'+e.message));
    end;
    Screen.Cursor := crDefault;
end;

procedure TFormAtualizaPreco.DBDtAtualizaExit(Sender: tObject);
begin
    if not TestaDataStr(EdDtAtualiza.Text) then
       EdDtAtualiza.setfocus;
end;

end.
