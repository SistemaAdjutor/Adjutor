{***********************************************************
 Programa...: Pag0005  - Nome formulario = FormChequesItens
 Objetivo...: Lista de contas p/ preenchimento de cheque
 Analista...: Márcio Neu Pacheco
 Programador: Márcio Neu Pacheco

 Comentários:

 Criação..........: Ago/01
 Ultima Alteração.:
 Alterado por.....: 

 Migração Interbase
 Migração .......? Ago/20003
 Migrado por Rodrigo Ramos
************************************************************}
unit Pag0005;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, StdCtrls, Buttons, ExtCtrls, DBCtrls, Db, DBTables, Mask,
   rxToolEdit, RXDBCtrl,RwFunc;

type
  TFormChequesItens = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DbGridCheques: TDBGrid;
    Label3: TLabel;
    Panel1: TPanel;
    Label4: TLabel;
    DBLookupBanco: TDBLookupComboBox;
    RadNominal: TRadioGroup;
    SpedRecalcula: TSpeedButton;
    SpdFinaliza: TSpeedButton;
    SpdContinua: TSpeedButton;
    SpdRemove: TSpeedButton;
    SpdImprime: TSpeedButton;
    BitListaCheque: TBitBtn;
    DbeChq_codigo: TDBEdit;
    DbeTotal: TDBEdit;
    DBNavCheque: TDBNavigator;
    Label5: TLabel;
    DbeFinaliza: TDBEdit;
    Label6: TLabel;
    DbeNominal: TDBEdit;
    Label7: TLabel;
    DBDateEdit1: TDBDateEdit;
    procedure MudaCorCampos(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure SpdRemoveClick(Sender: tObject);
    procedure SpedRecalculaClick(Sender: tObject);
    procedure SpdFinalizaClick(Sender: tObject);
    procedure Recalcula;
    procedure SpdContinuaClick(Sender: tObject);
    procedure RadNominalClick(Sender: tObject);
    procedure DbeNominalExit(Sender: tObject);
    procedure DbeDataEnter(Sender: tObject);
    procedure DbeDataExit(Sender: tObject);
    procedure DBDateEdit1Enter(Sender: tObject);
    procedure DBDateEdit1Exit(Sender: tObject);
    procedure BitListaChequeClick(Sender: tObject);
    procedure DBLookupBancoEnter(Sender: tObject);
    procedure DBLookupBancoExit(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
  private
    { Private declarations }
    CampoDBEdit  :TDBEdit;
    CampoData    :TDBDateEdit;
    CampoTDBLuk  :TDBLookupComboBox;
  public
    { Public declarations }
  end;

var
  FormChequesItens: TFormChequesItens;


implementation

uses Database, Pag0006, DataCad1, DataCad, DataMov;





{$R *.DFM}

procedure  TFormChequesItens.MudaCorCampos(Sender: tObject);
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

end;


procedure TFormChequesItens.FormShow(Sender: tObject);
var
wchequenovo:string;
wcodigo:integer;
begin
 Left := 12;
 Top := 90;

 {ativa o método ao evento OnActiveControlChange}
 Screen.OnActiveControlChange   := MudaCorCampos;

 //Tabelas ja foram abertas nas parcelas do ctas a pagar
 //
 // testa se tem cheque em processo
(* DataCadastros1.CdsCheques.Last;
 // prox numeracao caso seja novo cheque
 if DataCadastros1.CdsChequesCHQ_CODIGO.IsNull = True Then
   wcodigo := 1
 else
   wcodigo := StrToInt(DataCadastros1.CdsChequesCHQ_CODIGO.Value)+1;*)
 //
 wchequenovo := 'S';
 (*
 while not DataCadastros1.CdsCheques.Bof do
   begin
   if DataCadastros1.CdsChequesCHQ_FINALIZA.Value = 'N' Then
     begin
     wchequenovo := 'N';
     break;
     end;
    DataCadastros1.CdsCheques.Prior;
   end;
   *)
 // Verifica se a conta ja existe em outro cheque
 // tirar Link dastabelas
 //
try
  DataCadastros1.CdsCheques.Close;
  DataCadastros1.CdsCheques.CommandText := SQLDEF('PAGAR','SELECT * FROM CHQ0000','','','');
  DataCadastros1.CdsCheques.Open;


  DataCadastros1.CdsChequesitens.Close;
  DataCadastros1.CdsChequesItens.CommandText :=SQLDEF('PAGAR','Select * from CHQ_IT01','WHERE PAG_CODIGO = '''+DataMovimento.CdsPagarPAG_CODIGO.AsString+''' AND CHE_PARCELA = '''+DataMovimento.CdsPagarParcPPC_NUMER.AsString+'''','','');
  DataCadastros1.CdsChequesItens.Open;
(* IF DataCadastros1.CdsChequesItens.FindKey([DataMovimento.CdsPagarPAG_CODIGO.Value,DataMovimento.CdsPagarParcPPC_NUMER.Value])= False Then
  begin*)

 If DataCadastros1.CdsChequesItens.IsEmpty then
  begin
  // nao existe
  // se nao tem cheque em processo é cheque novo, criar novo registro
  if wchequenovo = 'S' then
    begin
    DataCadastros1.CdsCheques.Insert;
    {Gera automaticamente}
//    DataCadastros1.CdsChequesCHQ_CODIGO.Value   := IntToStr(wcodigo);
    DataCadastros1.CdsChequesBAN_CODIGO.Value   := DataMovimento.CdsPagarParcBAN_CODIGO.Value;
    if DataCadastros.CdsBanco.FindKey([DataMovimento.CdsPagarParcBAN_CODIGO.Value])=True then
      DataCadastros1.CdsChequesBAN_NOME.Value   := DataCadastros.CdsBancoBAN_APELIDO.Value;

    DataCadastros1.CdsChequesCHQ_DATA.AsDateTime     := StrToDateTime(FormatDateTime('dd/mm/YYYY',now));
    DataCadastros1.CdsChequesCHQ_FINALIZA.Value := 'N';
    DataCadastros1.CdsCheques.ApplyUpdates(0);
    DataCadastros1.CdsCheques.Refresh;
    end;
   // Incluir esta conta como um item do codigo
   DataCadastros1.CdsChequesItens.Insert;
   DataCadastros1.CdsChequesItensCHQ_CODIGO.value     := DataCadastros1.CdsChequesCHQ_CODIGO.Value;
   DataCadastros1.CdsChequesItensCHE_FAVORECIDO.Value := DataMovimento.CdsPagarPAG_FAVORECIDO.Value;
   DataCadastros1.CdsChequesItensCHE_NUMDOC.Value     := DataMovimento.CdsPagarPAG_NUMDOC.Value;
   DataCadastros1.CdsChequesItensPAG_CODIGO.Value     := DataMovimento.CdsPagarPAG_CODIGO.Value;
   DataCadastros1.CdsChequesItensCHE_PARCELA.Value    := DataMovimento.CdsPagarParcPPC_NUMER.Value;
   DataCadastros1.CdsChequesItensCHE_OBS.Value        := DataMovimento.CdsPagarParcPPC_OBS.Value;
   DataCadastros1.CdsChequesItensCHE_VLPAGO.Value     := DataMovimento.CdsPagarParcPPC_VLPAGO.Value;
   DataCadastros1.CdsChequesItensCHE_VENCTO.AsDateTime := DataMovimento.CdsPagarParcPPC_VENCTO.AsDateTime;
   DataCadastros1.CdsChequesItens.ApplyUpdates(0);
   DataCadastros1.CdsChequesItens.Refresh;
  end
 else
   begin
   uteis.aviso('Já existe um cheque com esta conta !');
   // volta indice padrao
   //DataCadastros1.CdsChequesItens.IndexName := 'XCHQ_CODI_IT';
   end;
//Linkar tabelas novamente
//DataCadastros1.CdsChequesItens.MasterSource := Datamodulo.DsCheque;
//DataCadastros1.CdsChequesItens.MasterFields := 'CHQ_CODIGO';
//
except on E:EdatabaseError do
    uteis.erro  (Pchar('Erro atualizar tabela "cheques" !'+e.Message));
end;

Recalcula;
end;

procedure TFormChequesItens.SpdRemoveClick(Sender: tObject);
begin
if uteis.confirmacao ( 'Remove item selecionado ?')= Mryes then
   begin
   // marca item e subtrai total
   DataCadastros1.CdsChequesItens.Edit;
   DataCadastros1.CdsChequesItensCHE_REMOVE.Value := 'X';
   DataCadastros1.CdsChequesItens.ApplyUpdates(0);
   end;
end;

procedure TFormChequesItens.Recalcula;
begin
DataCadastros1.CdsCheques.Edit;
DataCadastros1.CdsChequesCHQ_TOTAL.AsCurrency := 0;
//
DataCadastros1.CdsChequesItens.First;
While not DataCadastros1.CdsChequesItens.Eof do
  begin
  if DataCadastros1.CdsChequesItensCHE_REMOVE.Value = 'X' then
     begin
     DataCadastros1.CdsChequesItens.Delete;
     DataCadastros1.CdsChequesItens.Refresh;
     end
  else
    begin
    //recalcular
    DataCadastros1.CdsChequesCHQ_TOTAL.AsCurrency := DataCadastros1.CdsChequesCHQ_TOTAL.AsCurrency+DataCadastros1.CdsChequesItensCHE_VLPAGO.AsCurrency;
    DataCadastros1.CdsChequesItens.Next;
    end;
  end; //while
DataCadastros1.CdsCheques.ApplyUpdates(0);
DataCadastros1.CdsCheques.Refresh;
end;


procedure TFormChequesItens.SpedRecalculaClick(Sender: tObject);
begin
 Recalcula;
end;

procedure TFormChequesItens.SpdFinalizaClick(Sender: tObject);
begin
if  DataCadastros1.CdsChequesCHQ_FINALIZA.Value = 'S' then
  begin
  uteis.aviso('Cheque já está finalizado !');
  exit;
  end;
if uteis.confirmacao ( 'Confirma fechamento do cheque ?')= Mryes then
   begin
   DataCadastros1.CdsCheques.Edit;
   DataCadastros1.CdsChequesCHQ_FINALIZA.Value := 'S';
   DataCadastros1.CdsCheques.ApplyUpdates(0);
   Recalcula;
   end;
end;

procedure TFormChequesItens.SpdContinuaClick(Sender: tObject);
begin
 close;
end;

procedure TFormChequesItens.RadNominalClick(Sender: tObject);
begin
if RadNominal.ItemIndex = 0 then
  begin
  DbeNominal.Enabled := False;
  DataCadastros1.CdsCheques.Edit;
  DataCadastros1.CdsChequesCHQ_NOMINAL.Value := DataCadastros1.CdsChequesItensCHE_FAVORECIDO.Value;
  DataCadastros1.CdsCheques.ApplyUpdates(0);
  DataCadastros1.CdsCheques.Refresh;
  end;
if RadNominal.ItemIndex = 1 then
  begin
  DbeNominal.Enabled := False;
  DataCadastros1.CdsCheques.Edit;
  DataCadastros1.CdsChequesCHQ_NOMINAL.Value := DataCadastros.CdsBancoBAN_RAZAO.Value;
  DataCadastros1.CdsCheques.ApplyUpdates(0);
  DataCadastros1.CdsCheques.Refresh;
  end;
if RadNominal.ItemIndex = 2 then
  begin
  DbeNominal.Enabled := True;
  DataCadastros1.CdsCheques.Edit;
  DBNavCheque.Enabled := False;
  DataCadastros1.CdsChequesCHQ_NOMINAL.Value := '';
  DbeNominal.SetFocus;
  end;
end;

procedure TFormChequesItens.DbeNominalExit(Sender: tObject);
begin
  // somente se foi escolhido digitar  manualmente (outro)
  DataCadastros1.CdsCheques.ApplyUpdates(0);
  DataCadastros1.CdsCheques.Refresh;
  DbeNominal.Enabled := False;
  DBNavCheque.Enabled := True;
end;

procedure TFormChequesItens.DbeDataEnter(Sender: tObject);
begin
// deixar em edit pode quer alterar data
DataCadastros1.CdsCheques.Edit;

end;

procedure TFormChequesItens.DbeDataExit(Sender: tObject);
begin
// grava data
DataCadastros1.CdsCheques.ApplyUpdates(0);
end;

procedure TFormChequesItens.DBDateEdit1Enter(Sender: tObject);
begin
DBNavCheque.Enabled := False;
DataCadastros1.CdsCheques.Edit;
end;

procedure TFormChequesItens.DBDateEdit1Exit(Sender: tObject);
begin
if not TestaDataStr(DBDateEdit1.Text) then
    DBDateEdit1.setfocus;

DataCadastros1.CdsCheques.ApplyUpdates(0);
DBNavCheque.Enabled := True;

end;

procedure TFormChequesItens.BitListaChequeClick(Sender: tObject);
begin
// Abrir formulario cheque
 try
    try
      FormCheque := TFormCheque.Create(Application);
      FormCheque.ShowModal;
    finally
      FormCheque.Destroy;
      FormCheque := nil //  nil é - From Assigned = False
    end;
  except
      //beep;
      uteis.erro  ('Ocorreu um erro na criação do formulário!');
  end;
end;

procedure TFormChequesItens.DBLookupBancoEnter(Sender: tObject);
begin
DBNavCheque.Enabled := False;
DataCadastros1.CdsCheques.Edit;
end;

procedure TFormChequesItens.DBLookupBancoExit(Sender: tObject);
begin
DataCadastros1.CdsChequesBAN_NOME.Value := DataCadastros.CdsBancoBAN_APELIDO.Value;
DataCadastros1.CdsCheques.ApplyUpdates(0);
DBNavCheque.Enabled := True;
end;

procedure TFormChequesItens.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
Screen.OnActiveControlChange := NIL;
end;

end.
