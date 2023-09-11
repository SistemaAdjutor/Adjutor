unit Ftc0000;

interface

uses

  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, Mask, DBCtrls, StdCtrls, ExtCtrls, Buttons, Db, DBTables;

type
  TFormFichaTecnica01 = class(TForm)
    EditPrd_Refer: TEdit;
    Label1: TLabel;
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    DbeFTP_TUP: TDBEdit;
    Label4: TLabel;
    DbeFTP_DCMODE1: TDBEdit;
    DbeFTP_DCMODE2: TDBEdit;
    DbeFTP_DCMODE3: TDBEdit;
    DbeFTP_DCMODE4: TDBEdit;
    DbeFTP_DCMODE5: TDBEdit;
    DBGridfichaTecIten: TDBGrid;
    BitBtn1: TBitBtn;
    Panel2: TPanel;
    Panel3: TPanel;
    Bit_Lista: TBitBtn;
    Bit_Relatorio: TBitBtn;
    Bit_Excluir: TBitBtn;
    Bit_Gravar: TBitBtn;
    Bit_Sair: TBitBtn;
    DsProduAux: TDataSource;
    TbProduAux: TTable;
    Bit_Cancelar: TBitBtn;
    TbProduAuxPRD_CODIGO: TStringField;
    TbProduAuxPRD_DESCRI: TStringField;
    TbProduAuxPRD_REFER: TStringField;
    TbProduAuxPRD_UND: TStringField;
    TbProduAuxPRD_EMBALA: TStringField;
    TbProduAuxPGR_CODIGO: TStringField;
    TbProduAuxPTI_CODIGO: TStringField;
    TbProduAuxIPI_CODIGO: TStringField;
    TbProduAuxPRD_ALIQICM: TFloatField;
    TbProduAuxLIN_CODIGO: TStringField;
    TbProduAuxPRD_COMPL: TStringField;
    TbProduAuxPRD_CARACT: TMemoField;
    TbProduAuxPRD_MINIMO: TFloatField;
    TbProduAuxPRD_PCUSTO: TFloatField;
    TbProduAuxPRD_PVENDA: TFloatField;
    TbProduAuxPRD_PMEDIO: TFloatField;
    TbProduAuxPRD_ESTOQUE: TFloatField;
    TbProduAuxPRD_SAIDA: TFloatField;
    TbProduAuxPRD_PENDENTE: TFloatField;
    TbProduAuxFOR_CODIGO: TStringField;
    TbProduAuxPRD_ENTRADA: TFloatField;
    TbProduAuxPRD_MAXIMO: TFloatField;
    TbProduAuxPRD_ICMSUBS: TFloatField;
    TbProduAuxPRD_UTILCONV: TBooleanField;
    TbProduAuxPRD_UNDCOMP: TStringField;
    TbProduAuxPRD_PESOKg: TFloatField;
    TbProduAuxPRD_FATORC: TFloatField;
    TbProduAuxPRD_DIVMULT: TStringField;
    TbProduAuxEMP_CODIGO: TStringField;
    TbProduAuxPRD_DTPCUSTO: TDateTimeField;
    DBLkupPRD_DESCRI: TDBLookupComboBox;
    DbePRD_DESCRI: TDBEdit;
    DbePrd_Refer: TDBEdit;
    procedure VerificaEdicao;
    procedure HabilitaBotoes;
    procedure DesabilitaBotoes;
    procedure BuscaFicha;
    procedure Bit_ExcluirClick(Sender: tObject);
    procedure Bit_GravarClick(Sender: tObject);
    procedure Bit_SairClick(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure EditPrd_ReferExit(Sender: tObject);
    procedure DBGridfichaTecItenColEnter(Sender: tObject);
    procedure DBGridfichaTecItenEnter(Sender: tObject);
    procedure DBGridfichaTecItenExit(Sender: tObject);
    procedure DBLkupPRD_DESCRIClick(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure Bit_CancelarClick(Sender: tObject);
    procedure DBGridfichaTecItenColExit(Sender: tObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormFichaTecnica01: TFormFichaTecnica01;

implementation

{$R *.DFM}

uses Database, PRD0007, FTC0002;







procedure TFormFichaTecnica01.FormShow(Sender: tObject);
begin
 Screen.Cursor := crHourglass;
  try
  Datamodulo.TbFichaTec.Open;
  Datamodulo.TbFichaTec.IndexName := 'XPRD_REFER_FTC';
  except
  uteis.aviso('Não posso abrir a tabela de "Ficha técnica"!');
  end;
  try
  Datamodulo.TbFichaTecIten.open;
  Datamodulo.TbFichaTecIten.IndexName := 'XPRD_REFE_FTI';
  except
  uteis.aviso('Não posso abrir a tabela de "Itens da ficha técnica"!');
  end;
  try
  TbProduAux.Open;
  TbProduAux.IndexName := 'XPRD_REFE';
  except
  uteis.aviso('Não posso abrir a tabela de "Produto"!');
  end;
  // relacionamento de tabelas
  Datamodulo.TbFichaTecIten.IndexFieldNames := 'PRD_REFER';
  DataModulo.TbFichaTecIten.MasterSource := Datamodulo.DsFichaTec;
  DataModulo.TbFichaTecIten.MasterFields := 'PRD_REFER';
  //
//  Datamodulo.TbFichaTec.IndexFieldNames := 'PRD_REFER';
//  Datamodulo.TbFichaTec.MasterSource := DsProduAux;
//  Datamodulo.TbFichaTec.MasterFields := 'PRD_REFER';
    //
  if Datamodulo.TbFichaTec.IsEmpty  then
     begin
     DAtamodulo.DsFichaTec.AutoEdit := False;
     end
  else
     begin
     Datamodulo.DsFichaTec.AutoEdit := True;
     // deixar tela setada na primeira ficha
     Datamodulo.TbFichaTec.Last;
     EditPRD_Refer.Text := Datamodulo.TbFichaTecPRD_REFER.Value;
     end;
  Habilitabotoes;
{  TbProduAux.First;
  while (not TbProduAux.EOF) do
     begin
     CbxPRD_DESCRI.Items.Add(TbProduAuxPRD_DESCRI.Value);
     TbProduAux.Next;
     end;  }
Screen.Cursor := crDefault;
end;


procedure TFormFichaTecnica01.VerificaEdicao;
begin
// verifica estado da tabela em edicao e inclusao
screen.cursor :=crHourglass;
  if Datamodulo.TbFichaTec.State in [dsEdit,dsInsert] then
    begin
      if uteis.confirmacao ( 'Deseja salvar alterações ?') = idyes then
         begin
         Bit_Gravar.Click;
         end
      else
         begin
         Bit_Cancelar.Click;
         end;
      end;
screen.cursor := crDefault;
end;




procedure TFormFichaTecnica01.HabilitaBotoes;
begin
  Bit_Excluir.Enabled := True;
  Bit_Sair.Visible := True;
  Bit_Relatorio.Enabled := True;
  Bit_Lista.Enabled := True;
  Bit_Gravar.Enabled := False;
  Bit_Cancelar.Visible := False;
  EditPRD_Refer.Color := clWindow;
end;


procedure TFormFichaTecnica01.DesabilitaBotoes;
begin
  Bit_Excluir.Enabled := False;
  Bit_Sair.Visible := False;
  Bit_Relatorio.Enabled := False;
  Bit_Lista.Enabled := False;
  Bit_Gravar.Enabled := True;
  Bit_Cancelar.visible := True;
  EditPRD_Refer.Color := clSilver;
end;

procedure TFormFichaTecnica01.Bit_ExcluirClick(Sender: tObject);
begin
Screen.cursor :=crHourglass;
if Datamodulo.TbFichaTec.RecordCount = 0 Then   //evita exclussão de registro
     Begin                                      //em uma Tabela Vazia.
       messagebeep($ffff);
       uteis.aviso('Não Existe Ficha Técnica Cadastrada !!!');
       Screen.Cursor := crDefault;
       exit;
     end;

if uteis.confirmacao ( 'Deseja Excluir está Ficha Técnica?')= Mryes then
   begin
   if Datamodulo.TbFichaTecIten.FindKey([EditPRD_REFER.Text]) then
     begin
        while Datamodulo.TbFichaTecItenPRD_REFER.Value = EditPRD_REFER.Text do
          Begin
           Datamodulo.TbFichaTecIten.Delete;
          end;
     end;
   Datamodulo.TbFichaTec.Delete;
   Datamodulo.TbFichaTecIten.Refresh;
   Datamodulo.TbFichaTec.Refresh;
   end;
//EditPRD_Refer.text := '';
EditPRD_REFER.SetFocus;
screen.cursor := crDefault;
if Datamodulo.TbFichaTec.RecordCount = 0 Then  //Evita alteração antes que se
   begin                                    //inclua registros na tabela.
     Datamodulo.DSFichaTec.AutoEdit := False;
   end;
end;

procedure TFormFichaTecnica01.Bit_GravarClick(Sender: tObject);
begin
  Datamodulo.TbFichaTec.Post;
  Datamodulo.TbFichaTec.Refresh;
  HabilitaBotoes;
  DbePRD_DESCRI.SetFocus;
end;

procedure TFormFichaTecnica01.Bit_SairClick(Sender: tObject);
begin
  close;
end;

procedure TFormFichaTecnica01.EditPrd_ReferExit(Sender: tObject);
begin
  BuscaFicha;  // proc. interna
end;

procedure TFormFichaTecnica01.BuscaFicha;
begin
 if  Datamodulo.TbFichaTec.FindKey([EditPRD_REFER.Text]) = False then
     begin
     Messagebeep($ffffffff);
     uteis.aviso('Não há ficha técnica cadastrada!');
     //
     if TbProduAux.FindKey([EditPRD_REFER.Text]) = False then
        begin
        Messagebeep($ffffffff);
        uteis.aviso('Produto não cadastrado');
        end
      else
        begin
        Datamodulo.TbFichaTec.Insert;
        Desabilitabotoes;
        end;
     end;
   DbePrd_Refer.Text := EditPrd_refer.Text;
end;

procedure TFormFichaTecnica01.DBGridfichaTecItenColEnter( Sender: tObject);
begin
if Datamodulo.TbfichaTec.State in [dsBrowse]then
     begin
     {foi preciso usar tabela auxiliar p/ grade não mostrar ultimo item da ordem
     anterior ao entrar na grade(fata de controle do objeto Dbgrid). Verifico se já
     existe item p/ relacionamento, se não existe vou p/ ultimo registro
     que é limpo. Obs: Não posso dar findkey na tabela ligada a grade porque ela
     perde o controle de estado e fica dsBrowse}
     TbProduAux.Refresh; //- Atualizo antes da procura
     If TbProduAux.FindKey([EditPRD_REFER.Text])= False then
        Datamodulo.TbFichaTecIten.Last;
     end;
  //Datamodulo.TbOrdCompItemOCP_CODIGO.Value := Datamodulo.TbOrdCompraOCP_CODIGO.Value;
end;

procedure TFormFichaTecnica01.DBGridfichaTecItenEnter(
  Sender: tObject);
begin
  DbGridFichaTecIten.SelectedIndex := 0;
end;

procedure TFormFichaTecnica01.DBGridfichaTecItenExit(Sender: tObject);
begin
  Close;
end;

procedure TFormFichaTecnica01.DBLkupPRD_DESCRIClick(Sender: tObject);
begin
  EditPRD_REFER.Text := TbProduAuxPRD_REFER.Value;
  BuscaFicha;  // proc. interna
end;

procedure TFormFichaTecnica01.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
  Datamodulo.TbFichaTecIten.IndexFieldNames := '';
  DataModulo.TbFichaTecIten.MasterFields := '';
  DataModulo.TbFichaTecIten.MasterSource := nil;
  //
  Datamodulo.TbFichaTec.IndexFieldNames := '';
  DataModulo.TbFichaTec.MasterFields := '';
  DataModulo.TbFichaTec.MasterSource := nil;
  //
  try
  TbProduAux.Close;
  except
  uteis.aviso('Não posso Fechar a tabela de "PRODUTO"!');
  end;
  try
  Datamodulo.TbFichaTecIten.Close;
  except
  uteis.aviso('Não posso Fechar a tabela de "ITENS DA FICHA TÉCNICA"!');
  end;
  //
  try
  Datamodulo.TbFichaTec.Close;
  except
  uteis.aviso('Não posso Fechar a tabela de "FICHA TÉCNICA"!');
  end;
end;

procedure TFormFichaTecnica01.Bit_CancelarClick(Sender: tObject);
begin
screen.cursor := crHourGlass;
if Datamodulo.TbFichaTec.State in [dsInsert]then
   begin
   if Datamodulo.TbFichaTecIten.FindKey([EditPRD_Refer.Text]) then
      Begin
        while Datamodulo.TbFichaTecItenPRD_REFER.Value =  EditPRD_REFER.Text do
          Begin
            Datamodulo.TbFichaTecIten.Delete;
          End;
      end;
   Datamodulo.TbFichaTec.Cancel;
   end
else
   Datamodulo.TbFichaTec.Cancel;
//
if Datamodulo.TbFichaTec.RecordCount = 0 Then   //Ao cancelar ultimo record da
   begin                                       //Tabela deixa autoedit=true;
     Datamodulo.DsFichaTec.AutoEdit := False;
   end;
HabilitaBotoes;   // privada
DbePRD_REFER.SetFocus;
screen.cursor := crDefault;
end;

procedure TFormFichaTecnica01.DBGridfichaTecItenColExit( Sender: tObject);
begin // verifica se a referencia do produto existe
  if DbGridFichaTecIten.SelectedIndex = 0 then
     Begin
     TbProduAux.IndexName := 'XPRD_REFE';
     if not (Datamodulo.TbFichatecItenPRD_REFER.Value = '')then
     if TbProduAux.FindKey([DataModulo.TbFichaTecItenPRD_REFER.Value])= False then
        begin
        //beep;
        uteis.erro  ('Produto não encontrado!');
        end;
     end;
end;

end.
