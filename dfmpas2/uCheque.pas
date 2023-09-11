unit uCheque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, SqlExpr,SqlClientDataSet, Provider, DB, DBClient, DBLocal, DBLocalS,
  DBCtrls, Grids, DBGrids, ComboBoxRw,  rxToolEdit, Mask,  rxCurrEdit, Buttons,
  Menus, frxClass, frxDBSet, frxExportXLS, frxExportPDF, Data.DBXFirebird,
  SimpleDS, SgDbSeachComboUnit, SgDbAutoF8Unit;

type
  TFrmCheque = class(TForm)
    grpFiltro: TGroupBox;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    dsCheque: TDataSource;
    CdsCheque: TSQLClientDataSet;
    CdsChequeCH_REGISTRO: TIntegerField;
    CdsChequeEMP_CODIGO: TStringField;
    CdsChequeBCO_CODIGO: TIntegerField;
    CdsChequeCH_AGENCIA: TStringField;
    CdsChequeCH_CONTA_CORRENTE: TStringField;
    CdsChequeCH_SERIE: TStringField;
    CdsChequeCH_NUMERO: TStringField;
    CdsChequeCH_VALOR: TFMTBCdField;
    CdsChequeCH_EMISSAO: TDateField;
    CdsChequeCH_PRE_DATADO: TDateField;
    CdsChequeCLI_CODIGO: TStringField;
    CdsChequeCH_EMISSOR: TStringField;
    CdsChequeCH_CPF_CNPJ: TStringField;
    CdsChequeCH_DI_RG: TStringField;
    CdsChequeCH_TELEFONE: TStringField;
    CdsChequeCH_OBSERVACAO: TBlobField;
    CdsChequeCHS_REGISTRO: TIntegerField;
    CdsChequeBCO_DESCRICAO: TStringField;
    CdsChequeCHS_DESCRICAO: TStringField;
    CdsChequeCLI_RAZAO: TStringField;
    CdsChequeSelecao: TBooleanField;
    dbgrdCheque: TDBGrid;
    DBMemo1: TDBMemo;
    Label1: TLabel;
    cbStatus: TComboBoxRw;
    Label2: TLabel;
    cbBanco: TComboBoxRw;
    edtAgencia: TEdit;
    Label3: TLabel;
    edtContaCorrente: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    edtNumero: TEdit;
    Label6: TLabel;
    edtSerie: TEdit;
    CurValor: TCurrencyEdit;
    Label7: TLabel;
    Label8: TLabel;
    edtEmissor: TEdit;
    Label9: TLabel;
    cbbTipoData: TComboBox;
    Label10: TLabel;
    RxDataInicial: TDateEdit;
    Label11: TLabel;
    RxDataFinal: TDateEdit;
    Label12: TLabel;
    Edt_Lista: TEdit;
    CbClientes1: TComboBoxRw;
    Label13: TLabel;
    cbStatusMover: TComboBoxRw;
    BitBaixar: TBitBtn;
    BitBtn2: TBitBtn;
    Bit_Sair: TBitBtn;
    Bit_novo: TBitBtn;
    Bit_Excluir: TBitBtn;
    pmMenu: TPopupMenu;
    MarcarTodas1: TMenuItem;
    DesmarcarTodas1: TMenuItem;
    Selecionar1: TMenuItem;
    N1: TMenuItem;
    EditarCheque1: TMenuItem;
    frxCheques: TfrxReport;
    frxdbdtstCheques: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    frxXLSExport1: TfrxXLSExport;
    sgDBAutoCRUD1: TsgDBAutoCRUD;
    procedure Bit_SairClick(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure Edt_ListaExit(Sender: tObject);
    procedure CbClientes1Change(Sender: tObject);
    procedure CbClientes1Exit(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure cbStatusChange(Sender: tObject);
    procedure dbgrdChequeDrawColumnCell(Sender: tObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Bit_ExcluirClick(Sender: tObject);
    procedure Bit_novoClick(Sender: tObject);
    procedure Selecionar1Click(Sender: tObject);
    procedure MarcarTodas1Click(Sender: tObject);
    procedure DesmarcarTodas1Click(Sender: tObject);
    procedure BitBaixarClick(Sender: tObject);
    procedure dbgrdChequeKeyPress(Sender: tObject; var Key: Char);
    procedure dbgrdChequeDblClick(Sender: tObject);
    procedure EditarCheque1Click(Sender: tObject);
    procedure frxChequesGetValue(const VarName: String;
      var Value: Variant);
    procedure BitBtn2Click(Sender: tObject);
    procedure RxDataInicialExit(Sender: tObject);
    procedure RxDataFinalExit(Sender: tObject);
    procedure FormCreate(Sender: tObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);

  private
    { Private declarations d}
    procedure FiltraCheques;
    procedure Seleciona;
    procedure MarcarTodas;
    procedure DesmarcarTodas;
    procedure EditarCheque;
  public
    { Public declarations }
    sFiltro:String;
    procedure BotoesAcesso;
  end;

var
  FrmCheque: TFrmCheque;

implementation

uses
  DataCad, UFuncoes, RWFunc, uChequeCadastro, uteis, iniciodb;

{$R *.dfm}

procedure TFrmCheque.Bit_SairClick(Sender: tObject);
begin
   Close;
end;

procedure TFrmCheque.BotoesAcesso;
begin
     if assigned(FrmCheque) then
     begin
       Bit_novo.Enabled := Uteis.AcessoUsuario('FinanceiroGerenciador de Cheques',DBInicio.Usuario.CODIGO,FrmCheque).Incluir;
       Bit_Excluir.Enabled := Uteis.AcessoUsuario('FinanceiroGerenciador de Cheques',DBInicio.Usuario.CODIGO,FrmCheque).Exluir;
       BitBtn2.Enabled := Uteis.AcessoUsuario('FinanceiroGerenciador de Cheques',DBInicio.Usuario.CODIGO,FrmCheque).Relatorio;
       dsCheque.AutoEdit := Uteis.AcessoUsuario('FinanceiroGerenciador de Cheques',DBInicio.Usuario.CODIGO,FrmCheque).Alterar;
     end;
end;

procedure TFrmCheque.FormShow(Sender: tObject);
begin
   //Inicio
   
   edtAgencia.Clear;
   edtContaCorrente.Clear;
   edtNumero.Clear;
   edtSerie.Clear;
   edtEmissor.Clear;
   cbbTipoData.ItemIndex := 0;
   RxDataInicial.Date := Date - 60;
   RxDataFinal.Date := Date;

   
   FiltraCheques;
   BotoesAcesso;

end;

procedure TFrmCheque.Edt_ListaExit(Sender: tObject);
begin
   Edt_Lista.Color := clWindow;
   screen.Cursor := crHourGlass;
   if (ActiveControl <> Nil)
   and(ActiveControl.Name <> 'Bit_Cancelar')
   and(ActiveControl.Name <> 'Bit_Sair') then
      begin
         if (Trim(Edt_Lista.Text)<> '') then
            begin
               CbClientes1.TextoLocalizar := StrZero(Edt_Lista.Text,5);
               CbClientes1.Localizar := True;
               if (CbClientes1.Localizado = False) then
                  begin
                     //beep;
                     uteis.aviso('Cliente não localizado !');
                     Edt_Lista.Text     := '';
                     CbClientes1.Text   := '';
                     Edt_Lista.SetFocus;
                  end
               else
                  begin
                     Edt_Lista.Text := StrZero(Edt_Lista.Text,5);
                  end;
            end;
      end;
    screen.cursor:=crDefault;
end;

procedure TFrmCheque.CbClientes1Change(Sender: tObject);
begin
   Edt_Lista.Text := CbClientes1.CodigoLista;
end;

procedure TFrmCheque.CbClientes1Exit(Sender: tObject);
begin
   screen.Cursor := crHourGlass;
   if (ActiveControl <> Nil)
   and(ActiveControl.Name <> 'Bit_Cancelar')
   and(ActiveControl.Name <> 'Bit_Sair') then
      begin
         if (Trim(CbClientes1.Text)<>'') then
            begin
               CbClientes1.TextoLocalizar := StrZero(Edt_Lista.Text,5);
               CbClientes1.Localizar      := True;
               if (CbClientes1.Localizado = False) then
                  begin
                     //beep;
                     uteis.aviso('Cliente não localizado !');
                     Edt_Lista.SetFocus;
                     Edt_Lista.SelectAll;
                  end;
            end;
      end;
   screen.cursor:=crDefault;
end;

procedure TFrmCheque.FiltraCheques;
var
   sCondicao:String;


begin
   sFiltro := '';
   sCondicao := ' WHERE 1=1 ';
   if (cbStatus.CodigoLista <> '') then
      begin
         sCondicao := sCondicao + ' and t1.CHS_REGISTRO = '+cbStatus.CodigoLista;
         sFiltro := sFiltro + ' Status : '+cbStatus.Text;
      end;
   if (cbBanco.CodigoLista <> '') then
      begin
         sCondicao := sCondicao + ' and t1.BCO_CODIGO = '+cbBanco.CodigoLista;
         sFiltro := sFiltro + ' Banco : '+cbBanco.Text;
      end;
   if (edtAgencia.Text <> '') then
      begin
         sCondicao := sCondicao + ' and t1.CH_AGENCIA = '+QuotedStr(edtAgencia.Text);
         sFiltro := sFiltro + ' Agência : '+edtAgencia.Text;
      end;
   if (edtContaCorrente.Text <> '') then
      begin
         sCondicao := sCondicao + ' and t1.CH_CONTA_CORRENTE = '+QuotedStr(edtContaCorrente.Text);
         sFiltro := sFiltro + ' Conta : '+edtContaCorrente.Text;
      end;
   if (edtNumero.Text <> '') then
      begin
         sCondicao := sCondicao + ' and t1.CH_NUMERO = '+QuotedStr(edtNumero.Text);
         sFiltro := sFiltro + ' Número : '+edtNumero.Text;
      end;
   if (edtSerie.Text <> '') then
      begin
         sCondicao := sCondicao + ' and t1.CH_SERIE = '+QuotedStr(edtSerie.Text);
         sFiltro := sFiltro + ' Série : '+edtSerie.Text;
      end;
   if (CurValor.Value <> 0) then
      begin
         sCondicao := sCondicao + ' and t1.CH_VALOR = '+ValorAmericano(CurValor.Text);
         sFiltro := sFiltro + ' Valor : '+CurValor.Text;
      end;
   if (edtEmissor.Text <> '') then
      begin
         sCondicao := sCondicao + ' and t1.CH_EMISSOR like '+QuotedStr('%'+edtEmissor.Text+'%');
         sFiltro := sFiltro + ' Emissor : '+edtEmissor.Text;
      end;
   //Data
   if (RxDataInicial.Text <> '  /  /    ')and(RxDataFinal.Text <> '  /  /    ') then
      begin
         if (cbbTipoData.ItemIndex = 0) then //Emissao
            begin
               sCondicao := sCondicao + ' and t1.CH_EMISSAO ';
               sFiltro := sFiltro + ' Emissão :';
            end
         else
            begin
               sCondicao := sCondicao + ' and t1.CH_PRE_DATADO ';
               sFiltro := sFiltro + ' Pré-Datado :';
            end;
         sCondicao := sCondicao + ' BETWEEN '+QuotedStr(DataAmericana(RxDataInicial.Text))+' AND '+QuotedStr(DataAmericana(RxDataFinal.Text));
         sFiltro := sFiltro + ' '+RxDataInicial.Text+'  até '+RxDataFinal.Text ;
      end;
   //Cliente
   if (Edt_Lista.Text <> '')and(Edt_Lista.Text <> '99999') then
      begin
         sCondicao := sCondicao + ' and t1.CLI_CODIGO = '+QuotedStr(Edt_Lista.Text);
         sFiltro := sFiltro + ' Cliente : '+CbClientes1.Text;
      end; 
   if Share('BANCOS') = 'E' then
     sCondicao := sCondicao + ' and t1.emp_codigo = '+dbInicio.EMPRESA.EMP_CODIGO;


   try
      CdsCheque.Close;
      CdsCheque.CommandText := 'select '+
                               '     T1.*, '+
                               '     T2.BCO_DESCRICAO, '+
                               '     t3.CHS_DESCRICAO, '+
                               '     t4.CLI_RAZAO, '+
                               '     T5.BCO_DESCRICAO  '+
                               ' from  '+
                               '     CHEQUE T1  '+
                               ' JOIN BANCOS T2 ON (T2.BCO_CODIGO = T1.BCO_CODIGO) '+
                               ' JOIN CHEQUE_STATUS T3 ON (T3.CHS_REGISTRO = T1.CHS_REGISTRO)  '+
                               ' LEFT JOIN CLI0000 t4 on (t4.CLI_CODIGO = t1.CLI_CODIGO) '+
                               ' LEFT JOIN BANCOS T5 ON (T5.BCO_CODIGO = T1.BCO_CODIGO) '+sCondicao;
      CdsCheque.Open;
   except
      CdsCheque.Close;
   end;
end;

procedure TFrmCheque.FormClose(Sender: tObject; var Action: TCloseAction);
begin
   //Combos
   cbStatus.CarregarCombo := False;
   cbBanco.CarregarCombo := False;
   cbStatusMover.CarregarCombo := False;
   CbClientes1.CarregarCombo := True;
   //CdsCheque.Close;
   Action := CaFree;
end;

procedure TFrmCheque.FormCreate(Sender: tObject);
begin
     cbStatus.AutoF8CrudInfo.Clear;
     cbStatus.AutoF8CrudInfo.add('\campo=chs_registro\caption=Código\tamanho=8\readonly=T\tipo=N');
     cbStatus.AutoF8CrudInfo.add('\campo=emp_codigo\hidden=T\value='+dbInicio.Empresa.Emp_Codigo);
     cbStatus.AutoF8CrudInfo.add('\campo=chs_descricao\caption=Descrição\tamanho=60\tipo=C\required=T\Unique=T');

end;

procedure TFrmCheque.FormDestroy(Sender: TObject);
begin
     FrmCheque := Nil;
end;

procedure TFrmCheque.FormResize(Sender: TObject);
begin
     Width := 964;
     Height := 602;
end;

procedure TFrmCheque.cbStatusChange(Sender: tObject);
begin
   Edt_Lista.Text := CbClientes1.CodigoLista;
   FiltraCheques;
end;

procedure TFrmCheque.dbgrdChequeDrawColumnCell(Sender: tObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
   Check: Integer;
   R: TRect;
begin
   if (not odd(CdsCheque.RecNo)) then
       if not (GdSelected in State) then
          begin
              dbgrdCheque.Canvas.Brush.Color := $00FFEFDF;
              dbgrdCheque.Canvas.FillRect(rect);
              dbgrdCheque.DefaultDrawDataCell(Rect,column.Field,state);
          end;
   if (not CdsCheque.IsEmpty) then
      begin
         if Column.FieldName = 'Selecao' then
            begin
               dbgrdCheque.Canvas.FillRect(Rect);
               Check := 0;
               if CdsChequeSelecao.AsBoolean then
                  Check := DFCS_CHECKED
               else
                  Check := 0;
               R:=Rect;
               InflateRect(R,-2,-2); {Diminue o tamanho do CheckBox}
               DrawFrameControl(dbgrdCheque.Canvas.Handle,R,DFC_BUTTON, DFCS_BUTTONCHECK or Check);
            end;
      end;
end;

procedure TFrmCheque.Bit_ExcluirClick(Sender: tObject);
begin
   if (not CdsCheque.IsEmpty) then
      begin
         if (uteis.confirmacao  ( 'Gostaria de Excluir o Cheque ? ')=mrYes) then
            begin
               DataCadastros.sqlUpdate.Close;
               DataCadastros.SqlUpdate.sql.text :='DELETE FROM CHEQUE WHERE CH_REGISTRO = '+CdsChequeCH_REGISTRO.AsString;
               DataCadastros.sqlUpdate.Execsql;
               DataCadastros.sqlUpdate.Close;
               FiltraCheques;
            end;
      end;
end;

procedure TFrmCheque.Bit_novoClick(Sender: tObject);
begin
   try
      FrmChequeCadastro := TFrmChequeCadastro.Create(Application);
      FrmChequeCadastro.ShowModal;
   finally
      FrmChequeCadastro.Destroy;
      FrmChequeCadastro := Nil;
   end;
   cbStatusMover.CarregarCombo := False;
   cbStatusMover.CarregarCombo := True;
   FiltraCheques;
   uteis.HabilitaIncluir('FinanceiroManutenção de Cheques',DBInicio.Usuario.CODIGO,FrmCheque);
end;

procedure TFrmCheque.DesmarcarTodas;
var
   point:TBookmark;
begin
   if (not CdsCheque.IsEmpty) then
      begin
         point := CdsCheque.GetBookmark;
         CdsCheque.First;
         while (not CdsCheque.Eof) do
            begin
               CdsCheque.Edit;
               CdsChequeSelecao.AsBoolean := False;
               CdsCheque.Post;
               CdsCheque.Next;
            end;
      end;
end;

procedure TFrmCheque.MarcarTodas;
var
   point:TBookmark;
begin
   if (not CdsCheque.IsEmpty) then
      begin
         point := CdsCheque.GetBookmark;
         CdsCheque.First;
         while (not CdsCheque.Eof) do
            begin
               CdsCheque.Edit;
               CdsChequeSelecao.AsBoolean := True;
               CdsCheque.Post;
               CdsCheque.Next;
            end;
      end;

end;

procedure TFrmCheque.Seleciona;
begin
   CdsCheque.Edit;
   CdsChequeSelecao.AsBoolean := not CdsChequeSelecao.AsBoolean;
   CdsCheque.Post;
end;

procedure TFrmCheque.Selecionar1Click(Sender: tObject);
begin
   Seleciona;
end;

procedure TFrmCheque.MarcarTodas1Click(Sender: tObject);
begin
   MarcarTodas;
end;

procedure TFrmCheque.DesmarcarTodas1Click(Sender: tObject);
begin
   DesmarcarTodas;
end;

procedure TFrmCheque.BitBaixarClick(Sender: tObject);
begin
   if (CdsCheque.IsEmpty) then
      begin
         uteis.aviso('Não Existe cheque para mover!');
      end
   else
   if (cbStatusMover.CodigoLista  = '') then
      begin
         uteis.aviso('Informe o Status que deseja mover os Cheques selecionados!');
      end
   else
      begin
         CdsCheque.Filtered := False;
         CdsCheque.Filter := 'Selecao = True';
         CdsCheque.Filtered := True;
         if (CdsCheque.IsEmpty) then
            begin
               uteis.aviso('Nenhum cheque selecionado');
            end
         else
            begin
               if (uteis.confirmacao  ( Pchar('Confirma mover os cheques selecionados para : '+cbStatusMover.Text))=mrYes) then
                  begin
                     CdsCheque.First;
                     while (not CdsCheque.Eof) do
                        begin
                           DataCadastros.sqlUpdate.Close;
                           DataCadastros.SqlUpdate.sql.text :='UPDATE CHEQUE SET CHS_REGISTRO = '+cbStatusMover.CodigoLista+' WHERE CH_REGISTRO = '+CdsChequeCH_REGISTRO.AsString;
                           DataCadastros.sqlUpdate.Execsql;
                           DataCadastros.sqlUpdate.Close;
                           CdsCheque.Next;
                        end;
                  end;
            end;
         CdsCheque.Filtered := False;
         FiltraCheques;
      end;
end;

procedure TFrmCheque.dbgrdChequeKeyPress(Sender: tObject; var Key: Char);
begin
   if (Key = #13) then
      begin
         Key := #0;
         Seleciona;
      end;
end;

procedure TFrmCheque.dbgrdChequeDblClick(Sender: tObject);
begin
   Seleciona;
end;

procedure TFrmCheque.EditarCheque1Click(Sender: tObject);
begin
   EditarCheque;
end;

procedure TFrmCheque.EditarCheque;
begin
   if (CdsCheque.IsEmpty) then
      begin
         uteis.aviso('Nenhum cheque encontrado');
      end
   else
      begin
         try
            FrmChequeCadastro := TFrmChequeCadastro.Create(Application);
            FrmChequeCadastro.iIdCheque := CdsChequeCH_REGISTRO.AsInteger;
            FrmChequeCadastro.ShowModal;
         finally
            FrmChequeCadastro.Destroy;
            FrmChequeCadastro := Nil;
         end;    FiltraCheques;
      end;

end;

procedure TFrmCheque.frxChequesGetValue(const VarName: String;
  var Value: Variant);
begin
   if (VarName = 'Empresa') then
      Value := dbInicio.EMPRESA.RAZAO
   else
   if (VarName = 'Filtro') then
      Value := sFiltro;
end;

procedure TFrmCheque.BitBtn2Click(Sender: tObject);
begin

   //Chamo o Relatório
   frxCheques.ShowReport();   
end;

procedure TFrmCheque.RxDataInicialExit(Sender: tObject);
   var
      data:TDate;
begin
   try
      data := StrToDate(RxDataInicial.Text);
      FiltraCheques;
   except
      RxDataInicial.Date :=  Date - 60;
   end;
end;

procedure TFrmCheque.RxDataFinalExit(Sender: tObject);
var
      data:TDate;
begin
   try
      data := StrToDate(RxDataFinal.Text);
      FiltraCheques;
   except
      RxDataFinal.Date :=  Date;
   end;
end;

end.
