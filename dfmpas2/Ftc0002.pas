{************************************************************
 Programa...: FTC0001  - Nome formulario = FormFichaTeGrid
 Objetivo...: Lista  de Ficha Técnica do Produto
 Analista...: Márcio Neu Pacheco
 Programador: Jackson Neu Pacheco

 Comentários: usado Tquery

 Criação..........: fev/00
 Ultima Alteração.: Set/02
 Alterado por.....: Márcio Pacheco
*************************************************************}
unit Ftc0002;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, Db, DBTables, RwFunc,
  Provider, SqlExpr,SqlClientDataSet, DBClient, DBLocal, DBLocalS,
  Data.DBXFirebird, SimpleDS;

type
  TFormFichaTecGrid = class(TForm)
    Grp_Pesquisa: TGroupBox;
    Rd_Refe: TRadioButton;
    Rd_Desc: TRadioButton;
    DBGridFicha: TDBGrid;
    SqlCdsProdutos: TSQLClientDataSet;
    DsProdutos: TDataSource;
    Grp_Produto: TGroupBox;
    Edt_Nome: TEdit;
    BitCancelar: TBitBtn;
    BitPesquisar: TBitBtn;
    BitSair: TBitBtn;
    SqlCdsProdutosPRD_REFER: TStringField;
    SqlCdsProdutosPRD_DESCRI: TStringField;
    SqlCdsProdutosFTC_TUP: TFMTBCdField;
    SqlCdsProdutosFTC_CRIACAO: TSQLTimeStampField;
    procedure Rd_RefeClick(Sender: tObject);
    procedure Rd_DescClick(Sender: tObject);
    procedure Edt_NomeExit(Sender: tObject);
    procedure DBGridFichaDblClick(Sender: tObject);
    procedure Edt_NomeClick(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure Edt_NomeEnter(Sender: tObject);
    procedure BitSairClick(Sender: tObject);
    procedure FormCloseQuery(Sender: tObject; var CanClose: Boolean);
    procedure BitPesquisarClick(Sender: tObject);
    procedure BitCancelarClick(Sender: tObject);
    procedure DBGridFichaKeyPress(Sender: tObject; var Key: Char);
  private
         Procedure RetornaDado;
         procedure LayoutProduto;
         procedure MostraProduto;
         procedure Mensagens;
         procedure BotaoPesquisar;
         procedure BuscaProduto;
  public
    { Public declarations }
  end;

var
  FormFichaTecGrid: TFormFichaTecGrid;

implementation

uses Uteis, Ftc0001, DataCad, Osv0001, Osv0002, OsvN0002;

{$R *.DFM}

procedure TFormFichaTecGrid.Rd_RefeClick(Sender: tObject);
begin
    LayoutProduto;
end;

procedure TFormFichaTecGrid.Rd_DescClick(Sender: tObject);
begin
    LayoutProduto;
end;

procedure TFormFichaTecGrid.Edt_NomeExit(Sender: tObject);
begin
    Edt_Nome.Color := clWindow;
end;

procedure TFormFichaTecGrid.DBGridFichaDblClick(Sender: tObject);
begin
     RetornaDado ;
end;

procedure TFormFichaTecGrid.Edt_NomeClick(Sender: tObject);
begin
    Edt_Nome.SelectAll;
end;

procedure TFormFichaTecGrid.FormShow(Sender: tObject);
begin
    Left := 27;
    Top  := 74;
    Edt_Nome.SetFocus;
    MostraProduto;
    Rd_Desc.Checked := True;
    LayoutProduto;
end;

procedure TFormFichaTecGrid.Edt_NomeEnter(Sender: tObject);
begin
    Edt_nome.Text := '';
    BotaoPesquisar;
    MostraProduto;
    Edt_Nome.Color := $0080FFFF;
    Edt_Nome.SelectAll;
end;

procedure TFormFichaTecGrid.LayoutProduto;
begin
    Grp_Pesquisa.TabOrder := 0;
    Grp_Produto.TabOrder  := 1;
    BitPesquisar.TabOrder := 2;
    BitCancelar.TabOrder  := 3;
    BitSair.TabOrder      := 4;
    if Rd_Refe.checked  then
       begin
           Grp_Produto.Caption   := 'Informe a Referência do Produto.';
           Edt_Nome.text         := '';
           Edt_Nome.Width        := 98;
           Edt_Nome.MaxLength    := 11;
           Edt_Nome.setfocus;
       end;
    if Rd_Desc.checked  then
       begin
           Grp_Produto.Caption := 'Informe a Descrição do Produto.';
           Edt_Nome.text       := '';
           Edt_Nome.Width      := 315;
           Edt_Nome.MaxLength  := 45;
           Edt_Nome.SetFocus;
       end;
end;

procedure TFormFichaTecGrid.BitSairClick(Sender: tObject);
begin
    Close;
end;

procedure TFormFichaTecGrid.FormCloseQuery(Sender: tObject;
  var CanClose: Boolean);
begin
    Screen.Cursor := crHourGlass;
    try
      if Assigned(FormFichaTecnica) then
         begin
             if FormFichaTecnica.EdtPRD_REFER.Text = '' then
                FormFichaTecnica.EdtPRD_REFER.SetFocus;
         end;
      SqlCdsProdutos.Close;
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao Fechar a Tabela !'+e.message));
    end;
    Screen.Cursor := crDefault;
end;

procedure TFormFichaTecGrid.MostraProduto;
begin
    Screen.Cursor := crHourGlass;
    try
      SqlCdsProdutos.Close;
      SqlCdsProdutos.CommandText := SQLDEF('PRODUTOS','select F1.PRD_REFER,P1.PRD_DESCRI,F1.ftc_tup,F1.ftc_criacao from ftc0000 F1 join prd0000 P1 on f1.prd_refer = p1.prd_refer ','','P1.PRD_DESCRI','p1.');
      SqlCdsProdutos.Open;
    except on E:EdataBaseError do
       uteis.erro  (pchar('Erro ao abrir a tabela !'+e.message));
    end;
    Screen.Cursor := crDefault;
end;

procedure TFormFichaTecGrid.Mensagens;
begin
    if Rd_Refe.Checked then
    begin
           if Edt_Nome.Text = '' then
              uteis.aviso('Informe a Referência do Produto !')
           else
              uteis.aviso('Referência não encontrado !');
    end
    Else
    if Rd_Desc.Checked then
    begin
          if Edt_Nome.Text = '' then
             uteis.aviso('Informe a Descrição do Produto !')
          else
             uteis.aviso('Produto não encontrado !');
    end;
end;

procedure TFormFichaTecGrid.BotaoPesquisar;
begin
    if Edt_Nome.Text <> '' Then
       begin
           BitPesquisar.Visible := False;
           BitCancelar .Visible := True;
       end
    else
       begin
           BitPesquisar.Visible := True;
           BitCancelar .Visible := False;
       end;
end;

procedure TFormFichaTecGrid.BitPesquisarClick(Sender: tObject);
begin
    Screen.Cursor := Crhourglass;
    If (Edt_Nome.Text <> '') then
       begin
           BuscaProduto;
       end
    else
       begin
           Mensagens;
           Edt_Nome.Text := '';
           BotaoPesquisar;
           BitCancelar.Click;
       end;
    Screen.Cursor := CrDefault;
end;

procedure TFormFichaTecGrid.BuscaProduto;
Var
wSelect, wOrdem : String;
begin
    {Busca pelo nome}
    if Edt_Nome.Text <> '' then
       begin
           if Rd_Refe.checked  then
              begin
                  wSelect := 'where F1.PRD_REFER LIKE '''+Edt_nome.Text+'%''';
                  wOrdem  := 'F1.PRD_REFER';
              end;
           if Rd_Desc.checked  then
              begin
                  wSelect := 'where P1.PRD_DESCRI LIKE '''+Edt_nome.Text+'%''';
                  wOrdem  := 'P1.PRD_DESCRI';
              end;
           try
             SqlCdsProdutos.Close;
             SqlCdsProdutos.CommandText := SQLDEF('PRODUTOS','select F1.PRD_REFER,P1.PRD_DESCRI,F1.ftc_tup,F1.ftc_criacao from ftc0000 F1 left join prd0000 P1 on f1.prd_refer = p1.prd_refer ',wSelect,wOrdem,'p1.');
             SqlCdsProdutos.Open;
             if SqlCdsProdutos.IsEmpty then
                begin
                    Mensagens;
                    Edt_Nome.Text := '';
                    BotaoPesquisar;
                    BitCancelar.Click; //Caso digitou qualquer coisa e nao encontrou.
                 end
             else
                begin
                    BotaoPesquisar;
                    DBGridFicha.setfocus;
                end;
            except on E:EdataBaseError do
                uteis.erro  (Pchar('Erro ao abrir a tabela de BANCOS !'+e.message));
            end;
       end;
end;

procedure TFormFichaTecGrid.BitCancelarClick(Sender: tObject);
begin
    Screen.Cursor := crHourGlass;
    MostraProduto;
    Edt_nome.Text := '';
    BotaoPesquisar;
    Edt_nome.SetFocus;
    Screen.Cursor := crDefault;
end;

procedure TFormFichaTecGrid.DBGridFichaKeyPress(Sender: tObject;
  var Key: Char);
begin
    if key = #13 then
    begin
         RetornaDado;
         key := #0;
    end;
end;

Procedure TFormFichaTecGrid.RetornaDado;
Begin
   if Assigned(FormFichaTecnica) then
       begin
           FormFichaTecnica.EdtPRD_REFER.Text := SqlCdsProdutosPRD_REFER.AsString;
           FormFichaTecnica.BuscaRefer;
           FormFichaTecnica.DbDtFTC_CRIACAO.SetFocus;
       end;
    if Assigned(FormOrdServGera) then
       begin
           FormOrdServGera.EdtPRD_REFER.Text := SqlCdsProdutosPRD_REFER.AsString;
           FormOrdServGera.EdtPrd_Descri.Text:= SqlCdsProdutosPRD_DESCRI.AsString;
           FormOrdServGera.DtEmissao.SetFocus;
       end;
    if Assigned(FormOrdServCentro) then
       begin
           FormOrdServCentro.EdtRefer.Text := SqlCdsProdutosPRD_REFER.AsString;
       end;
    if Assigned(FormOrdServCentroGerar) then
       begin
           FormOrdServCentroGerar.EdtReferencia.Text := SqlCdsProdutosPRD_REFER.AsString;
       end;
   close;
end;

end.
