{****************************************************************
| Programa...: Ped0003- Nome formulario = FormItensAssociados
| Objetivo...: Lançamento e  Manutenção de Itens associados aos
|              Produtos do Pedido (Embalagens).
| Analista...: Marcio Neu Pacheco
| Programador: Jackson Neu Pacheco
|
| Comentários:
|
| Criação..........: Jan/99
| Ultima Alteração.: Mai/01
| Feito por........: Márcio
|
CdSITEM = DATASET TEMPORARIO

****************************************************************}
unit Ped0003;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, Mask, DBCtrls, Db, Rwfunc,
  Provider, SqlExpr,SqlClientDataSet, DBClient, DBLocal, DBLocalS, ImgList,  rxToolEdit,
   rxCurrEdit, RXCtrls, jpeg, MIDASLIB, Data.DBXFirebird, SimpleDS;

type
  TFormPedItensAss = class(TForm)
    GroupBox1: TGroupBox;
    NoteEmbalagem: TNotebook;
    GroupBox2: TGroupBox;
    DBGrid1: TDBGrid;
    CdsEmbalagem: TSQLClientDataSet;
    DsEmbalagem: TDataSource;
    CdsEmbalagemPRD_REFER: TStringField;
    CdsEmbalagemPRD_DESCRI: TStringField;
    CdsEmbalagemPRD_QDTE: TFMTBCdField;
    RadRef: TRadioButton;
    RadDesc: TRadioButton;
    GroupBox3: TGroupBox;
    BitLocalizar: TButton;
    EdPesquisa: TEdit;
    GroupBox4: TGroupBox;
    GroupBox5: TGroupBox;
    SpSeleciona: TSpeedButton;
    SpExcluir: TSpeedButton;
    DBGrid2: TDBGrid;
    CbGrupo: TComboBox;
    Label1: TLabel;
    CurrQtde: TCurrencyEdit;
    CdsEmbalagemPRD_PCUSTO: TFMTBCdField;
    CdsItem: TClientDataSet;
    DsItem: TDataSource;
    CdsItemITB_REFER: TStringField;
    CdsItemITB_DESCRI: TStringField;
    CdsItemITB_QTDE: TStringField;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    CurrqtdeEmb: TCurrencyEdit;
    Image1: TImage;
    RxTitulo: TRxLabel;
    GroupBox7: TGroupBox;
    DBGrid4: TDBGrid;
    GroupBox8: TGroupBox;
    DBGrid5: TDBGrid;
    CdsItemPend: TClientDataSet;
    DsItemPend: TDataSource;
    CdsItemPendIT_REFER: TStringField;
    CdsItemPendIT_DESCRI: TStringField;
    CdsItemPendIT_QTDE: TStringField;
    Panel1: TPanel;
    BtnVoltar: TButton;
    BtnAvancar: TButton;
    BtnFechar: TButton;
    Panel2: TPanel;
    BtnEmb: TBitBtn;
    DBGrid3: TDBGrid;
    procedure BtnEmbClick(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure ImgVoltarClick(Sender: tObject);
    procedure SpSelecionaClick(Sender: tObject);
    procedure SpExcluirClick(Sender: tObject);
    procedure DBGrid2DblClick(Sender: tObject);
    procedure DBGrid2KeyPress(Sender: tObject; var Key: Char);
    procedure SpeedButton3Click(Sender: tObject);
    procedure SpVoltarClick(Sender: tObject);
    procedure CbGrupoClick(Sender: tObject);
    procedure DBGrid1DblClick(Sender: tObject);
    procedure BitLocalizarClick(Sender: tObject);
    procedure RadRefClick(Sender: tObject);
    procedure RadDescClick(Sender: tObject);
    procedure EdPesquisaExit(Sender: tObject);
    procedure DBGrid1DrawColumnCell(Sender: tObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid3DblClick(Sender: tObject);
    procedure RadRefExit(Sender: tObject);
    procedure RadDescExit(Sender: tObject);
    procedure CdsItemITB_QTDEChange(Sender: TField);
    procedure BtnAvancarClick(Sender: tObject);
    procedure BtnVoltarClick(Sender: tObject);
    procedure DBGrid3KeyPress(Sender: tObject; var Key: Char);
    procedure BtnFecharClick(Sender: tObject);
    procedure DBGrid4DblClick(Sender: tObject);
    procedure FormKeyPress(Sender: tObject; var Key: Char);
    procedure BtnAvancarKeyPress(Sender: tObject; var Key: Char);
  private
  wPageAnterior : Integer;

    CampoEdit     : TEdit;
    CampoCombo    : TcomboBox;
    CampoCurrency : TCurrencyEdit;


  procedure PreencheCombo;
  procedure LocalizaItemPend;
  procedure MudaCorCampos(Sender: tObject);


    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPedItensAss: TFormPedItensAss;

implementation

{$R *.DFM}

uses Uteis, Ped0001, DataCad, DataMov;






procedure TFormPedItensAss.BtnEmbClick(Sender: tObject);
begin
   wPageAnterior           :=  NoteEmbalagem.PageIndex;
   NoteEmbalagem.PageIndex := 2;
   RxTitulo.Caption        := 'Consulta embalagens ref. ao pedido';
  // DataMovimento.CdsItemEmb.close;
  // DataMovimento.CdsItemEmb.MasterSource := DataMovimento.DsEmbalagem;
   //DataMovimento.CdsItemEmb.MasterFields := 'PEB_REGISTRO';
   //DataMovimento.CdsItemEmb.IndexFieldNames := 'PEB_REGISTRO';
   BtnAvancar.Enabled      := false;
   BtnEmb.Enabled          := false;
   BtnVoltar.Enabled       := true;

end;

procedure TFormPedItensAss.FormShow(Sender: tObject);
begin
Left:= 233;
Top := 205;
screen.Cursor := crHourglass;
Screen.OnActiveControlChange   := MudaCorCampos;
    try
        CdsEmbalagem.Close;
        Cdsembalagem.CommandText := 'select PRD_REFER, PRD_DESCRI,PRD_PCUSTO, Sum((PRD_ESTOQUE + PRD_ENTRADA) - PRD_SAIDA) as PRD_QDTE from PRD0000 GROUP BY PRD_REFER,PRD_DESCRI,PRD_PCUSTO';
        CdsEmbalagem.Open;
        If CdsEmbalagem.IsEmpty then
           BtnAvancar.Enabled := false;
    except

    end;

     try
       DataMovimento.CdsEmbalagem.Close;
       DataMovimento.CdsEmbalagem.CommandText := 'Select EB.* , PRD_DESCRI from PED_EB02 EB left join PRD0000 on PRD0000.PRD_REFER = PED_EB02.PRD_REFER Where PED_CODIGO = '''+DataMovimento.CdsPedidosPED_CODIGO.AsString+'''';
       DataMovimento.CdsEmbalagem.Open;
     except on E:EdatabaseError do
        uteis.erro  (pchar('Erro ao pesquisar embalagem !'+e.Message));
     end;


   NoteEmbalagem.PageIndex := 0;
   wPageAnterior := 0;
   PreencheCombo;
   EdPesquisa.SetFocus;
screen.Cursor := crDefault;
end;

procedure TFormPedItensAss.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
//  se foi usado filtro :Tirar , senao podera nao aparecer descri dos
// itens na tela de itens de pedido

    Screen.OnActiveControlChange := nil;
    DataMovimento.CdsEmbalagem.Cancel;
    CdsEmbalagem.Close;
    CdsItem.EmptyDataSet;
    DataMovimento.CdsEmbalagem.CLose;
    DataCadastros.CdsPrdTipo.cLOSE;

end;

procedure TFormPedItensAss.ImgVoltarClick(Sender: tObject);
begin
  Close;
end;

procedure TFormPedItensAss.SpSelecionaClick(Sender: tObject);
begin
  if DataMovimento.CdsPedItem.IsEmpty = false then
     begin
        iF CdsItemPend.IsEmpty = false then
           begin
                if CdsItem.Locate('ITB_REFER',CdsItemPendIT_REFER.AsString,[]) = false then
                  begin
                     CdsItem.Append;
                     CdsItemITB_REFER.AsString     := CdsItemPendIT_REFER.AsString;
                     CdsItemITB_QTDE.AsCurrency    := CdsItemPendIT_QTDE.AsCurrency;
                     CdsItemITB_DESCRI.AsString    := CdsItemPendIT_DESCRI.AsString;
                     Cdsitem.Post;
                     DbGrid2.SetFocus;
                  end
                 else
                   begin
                       uteis.aviso('Item ja selecionado !');
                       DbGrid2.SetFocus;
                   end;
           end;
     end;
end;

procedure TFormPedItensAss.SpExcluirClick(Sender: tObject);
begin
    CdsItem.Delete;
end;

procedure TFormPedItensAss.DBGrid2DblClick(Sender: tObject);
begin
   SpSeleciona.Click;
end;

procedure TFormPedItensAss.DBGrid2KeyPress(Sender: tObject; var Key: Char);
begin
   if key = #13 then
      begin
            SpSeleciona.Click;
            Key := #0;
      end;
end;

procedure TFormPedItensAss.SpeedButton3Click(Sender: tObject);
begin

   close;

end;

procedure TFormPedItensAss.SpVoltarClick(Sender: tObject);
begin
  Case NoteEmbalagem.PageIndex of
    1:begin
         NoteEmbalagem.PageIndex := 0;
         Btnvoltar.Enabled := false;
         BtnAvancar.Caption := 'Avançar >';
       end;
    2:Begin
          NoteEmbalagem.PageIndex := wPageAnterior;
      end;
   end;
end;

procedure TFormPedItensAss.PreencheCombo;
begin
   {}
       try
     {Verifica se compartilha clientes}
         DataCadastros.CdsPrdTipo.Close;
         DataCadastros.CdsPrdTipo.CommandText := SQLDEF('TABELAS','SELECT * FROM PRD_TIPO','','','');
         DataCadastros.CdsPrdTipo.Open;
            DataCadastros.CdsPrdTipo.First;
            While not DataCadastros.CdsPrdTipo.Eof do
               Begin
                   cbGrupo.Items.Add(DataCadastros.CdsPrdTipoPTI_DESCRI.AsString);
                   DataCadastros.CdsPrdTipo.Next;
               end;
  except on E:EdatabaseError do
       uteis.erro  (Pchar('Impossível listar grupos'+e.message));
  end;

end;

procedure TFormPedItensAss.CbGrupoClick(Sender: tObject);
begin
     if CbGrupo.ItemIndex <> 0 then
       begin
          if DataCadastros.CdsPrdTipo.Locate('PTI_DESCRI',CbGrupo.Text,[])=true then
            begin
             CdsEmbalagem.Close;
             Cdsembalagem.CommandText := 'select PRD_REFER, PRD_DESCRI,PRD_PCUSTO, Sum((PRD_ESTOQUE + PRD_ENTRADA) - PRD_SAIDA) as PRD_QDTE from PRD0000 WHERE PTI_CODIGO = '''+DataCadastros.CdsPrdTipoPTI_CODIGO.AsString+''' GROUP BY PRD_REFER,PRD_DESCRI,PRD_PCUSTO';
             CdsEmbalagem.Open;
               If CdsEmbalagem.IsEmpty then
                  BtnAvancar.Enabled := false
               else
                  BtnAvancar.Enabled := true;
           end;
       end;
end;

procedure TFormPedItensAss.DBGrid1DblClick(Sender: tObject);
begin
   CurrQtde.SetFocus;
end;

procedure TFormPedItensAss.BitLocalizarClick(Sender: tObject);
begin
  if RadRef.Checked then
     begin
         If edPesquisa.Text <> '' then
            begin
                  if CdsEmbalagem.Locate('PRD_REFER',EdPesquisa.Text,[loPartialKey]) then
                      begin
                         CdsEmbalagem.IndexFieldNames := 'PRD_REFER';
                         EdPesquisa.Clear;
                         DbGrid1.SetFocus;
                      end
                  else
                    begin
                        uteis.aviso('Referência não econtrada !');
                        EdPesquisa.SetFocus;
                    end;
             end;
     end;
  if RadDesc.Checked then
     begin
         If edPesquisa.Text <> '' then
            begin
                  if CdsEmbalagem.Locate('PRD_DESCRI',EdPesquisa.Text,[loPartialKey]) then
                      begin
                         CdsEmbalagem.IndexFieldNames := 'PRD_DESCRI';
                         EdPesquisa.Clear;
                         DbGrid1.SetFocus;
                      end
                  else
                    begin
                        uteis.aviso('Descrição não econtrada !');
                        EdPesquisa.SetFocus;
                    end;
             end;
     end;
end;

procedure TFormPedItensAss.RadRefClick(Sender: tObject);
begin
   EdPesquisa.Width := 120;
   EdPesquisa.Clear;
   EdPesquisa.SetFocus;
end;

procedure TFormPedItensAss.RadDescClick(Sender: tObject);
begin
   EdPesquisa.Width := 290;
   EdPesquisa.Clear;
   EdPesquisa.SetFocus;
end;

procedure TFormPedItensAss.EdPesquisaExit(Sender: tObject);
begin
   if EdPesquisa.Text <> '' then
      begin
          BitLocalizar.Click;
      end;
end;

procedure TFormPedItensAss.DBGrid1DrawColumnCell(Sender: tObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  If Not odd(CdsEmbalagem.RecNo) then
         If not (GdSelected in State) then
             Begin
                 DbGrid1.Canvas.Brush.Color := $00FFEFDF;
                 DbGrid1.Canvas.FillRect(rect);
                 DbGrid1.DefaultDrawDataCell(Rect,column.Field,state);
             end;
end;

procedure TFormPedItensAss.DBGrid3DblClick(Sender: tObject);
begin
   if uteis.confirmacao ( 'Deseja excluir o item da dembalagem ?')=mryes then
         SpExcluir.Click;
end;

procedure TFormPedItensAss.RadRefExit(Sender: tObject);
begin
   EdPesquisa.SetFocus;
end;

procedure TFormPedItensAss.RadDescExit(Sender: tObject);
begin
   EdPesquisa.SetFocus;
end;

procedure TFormPedItensAss.CdsItemITB_QTDEChange(Sender: TField);
begin
    DataMovimento.CdsPedItem.DisableControls;

    if DataMovimento.CdsPedItem.Locate('PRD_REFER',CdsItemITB_REFER.AsString,[]) then
       begin
           If DataMovimento.CdsPedItemPRF_QTDE.AsCurrency < CdsItemITB_QTDE.AsCurrency then
              begin
                  uteis.aviso('Quantidade maior que solicitada !');
                  CdsItemITB_QTDE.AsCurrency := DataMovimento.CdsPedItemPRF_QTDE.AsCurrency;
              end;
       end;
      DataMovimento.CdsPedItem.EnableControls;
end;

procedure TFormPedItensAss.BtnAvancarClick(Sender: tObject);
begin
  if NoteEmbalagem.PageIndex = 0 then
       begin
         {grava arvqui de embalagem}
       if CurrQtde.Value = 0 then
          begin
               uteis.aviso('Informe a quantidade de embalagem !');
               CurrQtde.SetFocus;
          end
        else
          begin
              try
                DataMovimento.CdsEmbalagem.Open;
                DataMovimento.CdsEmbalagem.Insert;
                DataMovimento.CdsEmbalagemPED_CODIGO.AsString  := DataMovimento.CdsPedidosPED_CODIGO.AsString;
                DataMovimento.CdsEmbalagemPEB_QTDE.AsCurrency  := CurrQtde.Value;
                DataMovimento.CdsEmbalagemPEB_PRECO.AsCurrency := CdsEmbalagemPRD_PCUSTO.AsCurrency;
                DataMovimento.CdsEmbalagemPRD_REFER.AsString   := CdsEmbalagemPRD_REFER.AsString;
                DataMovimento.CdsEmbalagem.Post;
               except on E:EdatabaseError do
                  uteis.erro  (pchar('Erro ao gravar embalagem !'+e.Message));
               end;
               LocalizaItemPend;
               Btnavancar.Caption := '&Concluir';
               NoteEmbalagem.PageIndex := 1;
               RxTitulo.Caption        := 'Relaciona Itens para Imbalagem';
               Btnvoltar.Enabled := true;
               CurrqtdeEmb.Value := Currqtde.Value;
               btnAvancar.SetFocus;
             end;
       end
     else
     begin
         {grava item da tabela virtual p/ arquivo}
              try
               DataMovimento.CdsEmbalagem.ApplyUpdates(0);
               CdsItem.First;
               DataMovimento.CdsItemEmb.Close;
               DataMovimento.CdsItemEmb.CommandText := 'Select PED.* ,PRD_DESCRI from PED_EB03 PED left join PRD0000 on PED_EB03.PRD_CODIGO = PRD0000.PRD_CODIGO where PED_EB03.PEB_REGISTRO = '''+DataMovimento.CdsEmbalagemPEB_REGISTRO.AsString+'''';
               DataMovimento.CdsItemEmb.Open;
               while not CdsItem.Eof do
                  begin
                     DataMovimento.CdsitemEmb.Insert;
                     DataMovimento.CdsItemEmbPEB_REGISTRO.AsInteger := DataMovimento.CdsEmbalagemPEB_REGISTRO.AsInteger;
                     DataMovimento.CdsItemEmbPRD_REFER.AsString     := CdsItemITB_REFER.AsString;
                     DataMovimento.CdsItemEmbEBI_QTDE.AsCurrency    := CdsItemITB_QTDE.AsCurrency;
                     DataMovimento.CdsItemEmb.ApplyUpdates(0);
                     CdsItem.Next;
                  end;
                 close;
               except on E:EdatabaseError do
                   uteis.erro  (pchar('Erro ao gravar item !'+e.message))
               end;
       end;

end;

procedure TFormPedItensAss.BtnVoltarClick(Sender: tObject);
begin
   Case NoteEmbalagem.PageIndex of
    1:begin
         NoteEmbalagem.PageIndex := 0;
         Btnvoltar.Enabled       := false;
         BtnAvancar.Caption      := '&Avançar >';
         DataMovimento.CdsEmbalagem.Delete;
         RxTitulo.Caption := 'Adiciona Embalagem';
         CdsItem.EmptyDataSet;
         CdsItemPend.EmptyDataSet;
         edPesquisa.SetFocus;
       end;
    2:Begin
          NoteEmbalagem.PageIndex := wPageAnterior;
          if wPageAnterior = 1 then
             begin
                 RxTitulo.Caption        := 'Relaciona Itens para Imbalagem';
                 BtnVoltar.Enabled  := true;
                 BtnAvancar.Enabled := true;
                 BtnAvancar.Caption := '&Concluir';

             end;
          if wPageAnterior = 0 then
             begin
                 RxTitulo.Caption   := 'Adiciona Embalagem';
                 BtnVoltar.Enabled  := false;
                 BtnAvancar.Enabled := true;
                 BtnAvancar.Caption := '&Avançar >';
                 EdPesquisa.SetFocus;
             end;

          BtnEmb.Enabled          := true;
      end;
   end;      
end;

procedure TFormPedItensAss.DBGrid3KeyPress(Sender: tObject; var Key: Char);
begin
   if key = #13 then
      begin
         BtnAvancar.SetFocus;
      end;   
end;

procedure TFormPedItensAss.BtnFecharClick(Sender: tObject);
begin
if uteis.confirmacao ( 'Deseja cancelar operação ?')=mryes then
     begin
        close;
     end
   else
     begin
       {não fecha o form}


       case NoteEmbalagem.PageIndex of
         0 : CbGrupo.SetFocus;
         1 : DbGrid2.SetFocus;
         2 : DbGrid4.SetFocus;
       end;
     end;
end;

procedure TFormPedItensAss.LocalizaItemPend;
begin
   {localizar os itens dos quais ainda não foram definidos embalagens}
    try
        DataMovimento.CdsItemEmb.Close;
        DataMovimento.CdsItemEmb.CommandText := 'Select EB.* , PRD_DESCRI from PED_EB03 EB left join PRD0000 on PRD0000.PRD_REFER = PED_EB03.PRD_REFER where PEB_REGISTRO in (select PEB_REGISTRO from PED_EB02 where PED_CODIGO =  '''+DataMovimento.CdsPedidosPED_CODIGO.AsString+''')';
        DataMovimento.CdsItemEmb.Open;

        if DataMovimento.CdsItemEmb.Locate('PRD_REFER',DataMovimento.CdsPedItemPRD_REFER.AsString,[])= false then
           begin
             try
               {Grava item do pedido na embalagem tabela virtual}
                CdsItem.Append;
                CdsItemITB_REFER.AsString     := DataMovimento.CdsPedItemPRD_REFER.AsString;
                CdsItemITB_QTDE.AsCurrency    := DataMovimento.CdsPedItemPRF_QTDE.AsCurrency;
                CdsItemITB_DESCRI.AsString    := DataMovimento.CdsPedItemPRF_PRDDESCRI.AsString;
                Cdsitem.Post;
              except on E:EdatabaseError do
                    uteis.erro  (Pchar('Erro ao gravar item : tabela virtual !'+e.message));
              end;
           end;

        DataMovimento.CdsPedItem.First;
        while not DataMovimento.CdsPedItem.Eof do
           begin
               if DataMovimento.CdsItemEmb.Locate('PRD_REFER',DataMovimento.CdsPedItemPRD_REFER.AsString,[])= True then
                  begin
                      if DataMovimento.CdsItemEmbEBI_QTDE.AsCurrency < DataMovimento.CdsPedItemPRF_QTDE.AsCurrency then
                          begin
                              CdsItemPend.Append;
                              CdsItemPendIT_REFER.AsString   := DataMovimento.CdsPedItemPRD_REFER.AsString;
                              CdsItemPendIT_DESCRI.AsString  := DataMovimento.CdsPedItemPRF_PRDDESCRI.AsString;
                              CdsItemPendIT_QTDE.AsCurrency  := DataMovimento.CdsPedItemPRF_QTDE.AsCurrency - DataMovimento.CdsItemEmbEBI_QTDE.AsCurrency;
                              CdsItemPend.Post;
                          end;
                  end
                else
                   begin
                        if CdsItem.Locate('ITB_REFER',DataMovimento.CdsPedItemPRD_REFER.AsString,[]) = false then
                           begin
                              CdsItemPend.Append;
                              CdsItemPendIT_REFER.AsString   := DataMovimento.CdsPedItemPRD_REFER.AsString;
                              CdsItemPendIT_DESCRI.AsString  := DataMovimento.CdsPedItemPRF_PRDDESCRI.AsString;
                              CdsItemPendIT_QTDE.AsCurrency  := DataMovimento.CdsPedItemPRF_QTDE.AsCurrency;
                              CdsItemPend.Post;
                           end;
                   end;
                   DataMovimento.CdsPedItem.Next;
           end;
    Except on E:EdatabaseError do
       uteis.erro  (pchar('Erro ao localizar item !'+e.Message));
    end;


end;

procedure TFormPedItensAss.MudaCorCampos(Sender: tObject);
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

   if Assigned(CampoCombo) then
      begin
         CampoCombo.color := clWindow;
      end;
   if ActiveControl is TComboBox then
      begin
         TComboBox(ActiveControl).color := $0080FFFF;
         CampoCombo := TComboBox(ActiveControl);
      end
   else
      begin
         CampoCombo := nil;
      end;

   if Assigned(CampoCurrency) then
      begin
         CampoCurrency.color := clWindow;
      end;
   if ActiveControl is TCurrencyEdit then
      begin
         TCurrencyEdit(ActiveControl).color := $0080FFFF;
         CampoCurrency := TCurrencyEdit(ActiveControl);
      end
   else
      begin
         CampoCurrency := nil;
      end;
end;

procedure TFormPedItensAss.DBGrid4DblClick(Sender: tObject);
begin
{libera embalagem para alterar}
//    CdsItem.EmptyDataSet;
 //   CdsItemPend.EmptyDataSet;
end;

procedure TFormPedItensAss.FormKeyPress(Sender: tObject; var Key: Char);
begin
  If key = #27 then
     begin
        BtnFechar.Click;
     end;
end;

procedure TFormPedItensAss.BtnAvancarKeyPress(Sender: tObject;
  var Key: Char);
begin
   if key = #13 then
      begin
         btnAvancar.Click;
      end;
end;

end.
