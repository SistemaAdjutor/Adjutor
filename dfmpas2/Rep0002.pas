{***********************************************************
 Programa...: Rep0002  - Nome formulario = FormRepresGrid   |
 Objetivo...: Lista de representantes                       |
 Analista...: Márcio Neu Pacheco                            |
 Programador:                          |
                                                            |
 Comentários:                                               |
                                                            |
 Criação..........: Out/1998.                               |
 Ultima Alteração.: Out/2011                                |


************************************************************}
unit Rep0002;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Mask, Grids, DBGrids, RwFunc, ExtCtrls, Provider,
  SqlExpr,SqlClientDataSet, DB, DBClient, DBLocal, DBLocalS, Data.DBXFirebird,
  SimpleDS;

type
  TFormRepresGrid = class(TForm)
    GroupBox1: TGroupBox;
    RadNome: TRadioButton;
    RadCodigo: TRadioButton;
    RadCgc: TRadioButton;
    RadCPF: TRadioButton;
    GbPesquisa: TGroupBox;
    Msk_nome: TMaskEdit;
    DBGridRepres: TDBGrid;
    BitPesquisar: TBitBtn;
    BitSair: TBitBtn;
    SqlCdsConsRep: TSQLClientDataSet;
    DsConsRep: TDataSource;
    SqlCdsConsRepREP_CODIGO: TStringField;
    SqlCdsConsRepREP_NOME: TStringField;
    SqlCdsConsRepREP_FONE: TStringField;
    SqlCdsConsRepREP_GRUPO: TStringField;
    SqlCdsConsRepREP_QUOTA: TFMTBCdField;
    SqlCdsConsRepREP_FUNCAO_CC: TStringField;
    SqlCdsConsRepREP_SITUACAO_CC: TStringField;
    SqlCdsConsRepREP_FUNCAO: TStringField;
    SqlCdsConsRepREP_SITUACAO: TStringField;
    BitCancelar: TBitBtn;
    SqlCdsConsRepREP_CGC: TStringField;
    cb1: TCheckBox;
    procedure MudaCorCampos(Sender: tObject);
    procedure RadNomeClick(Sender: tObject);
    procedure RadCodigoClick(Sender: tObject);
    procedure RadCgcClick(Sender: tObject);
    procedure RadCPFClick(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure BitSairClick(Sender: tObject);
    procedure SqlCdsConsRepCalcFields(DataSet: TDataSet);
    procedure BitPesquisarClick(Sender: tObject);
    procedure BitCancelarClick(Sender: tObject);
    procedure DBGridRepresDblClick(Sender: tObject);
    procedure FormKeyPress(Sender: tObject; var Key: Char);
    procedure Msk_nomeEnter(Sender: tObject);
    procedure Msk_nomeKeyPress(Sender: tObject; var Key: Char);
    procedure Msk_nomeExit(Sender: tObject);
    procedure FormCloseQuery(Sender: tObject; var CanClose: Boolean);
    procedure DBGridRepresKeyPress(Sender: tObject; var Key: Char);
    procedure DBGridRepresDrawColumnCell(Sender: tObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure FormCreate(Sender: tObject);
  private
 CampoEdit    :TEdit;
 CampoMask     :TMaskEdit;
    { Private declarations }
    procedure LayOutRep;
    procedure BotaoPesquisa;
    procedure Mensagens;
    procedure MostraRep;
    procedure BuscaRep;
  public
    { Public declarations }
  end;

var
  FormRepresGrid: TFormRepresGrid;

implementation

{$R *.DFM}
uses Rep0001, DataCad, uteis, iniciodb;








procedure TFormRepresGrid.RadNomeClick(Sender: tObject);
begin
    LayOutRep;
end;

procedure TFormRepresGrid.RadCodigoClick(Sender: tObject);
begin
    LayOutRep;
end;

procedure TFormRepresGrid.RadCgcClick(Sender: tObject);
begin
    LayOutRep;
end;

procedure TFormRepresGrid.RadCPFClick(Sender: tObject);
begin
    LayOutRep;
end;

procedure TFormRepresGrid.FormShow(Sender: tObject);
begin
    Left := 01;
    Top  := 38;
    Screen.OnActiveControlChange := MudaCorCampos;
    Screen.Cursor := crHourGlass;
    //MostraRep;
    BuscaRep;
    LayOutRep;
    Screen.Cursor := crDefault;
end;

procedure TFormRepresGrid.MudaCorCampos(Sender: tObject);
begin
     {cor dos campos TDBEdit}
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

   if Assigned(CampoMAsk) then
      begin
         CampoMask.color := clWindow;
      end;
   if ActiveControl is TMaskEdit then
      begin
         if TMaskEdit(ActiveControl).color = $00D7D7D7 then
            begin
               exit;
            end;
         TMaskEdit(ActiveControl).color := $0080FFFF;
         CampoMask := TMaskEdit(ActiveControl);
      end
   else
      begin
         CampoMask := nil;
      end;

end;

procedure TFormRepresGrid.BitSairClick(Sender: tObject);
begin
    Close;
end;

procedure TFormRepresGrid.SqlCdsConsRepCalcFields(DataSet: TDataSet);
begin
    SqlCdsConsRepREP_SITUACAO_CC.AsString := IIF(SqlCdsConsRepREP_SITUACAO.AsString ='A','Ativo','Inativo');
    SqlCdsConsRepREP_FUNCAO_CC.AsString   := IIF(SqlCdsConsRepREP_FUNCAO.AsString = 'G','Gerente',iif(SqlCdsConsRepREP_FUNCAO.AsString = 'S','Supervisor',iif(SqlCdsConsRepREP_FUNCAO.AsString = 'R','Representante','Televendas')));
end;

procedure TFormRepresGrid.LayOutRep;
begin
    if RadNome.checked  then
       begin
           GbPesquisa.Caption := 'Digite nome do vendedor';
           Msk_nome.EditMask  := '';
           Msk_nome.Clear;
           Msk_nome.Width     := 300;
           Msk_nome.MaxLength := 45;
           Msk_nome.SetFocus;
       end;
    if RadCodigo.checked  then
       begin
           GbPesquisa.Caption := 'Digite código do vendedor';
           Msk_nome.EditMask  := '';
           Msk_nome.Clear;
           Msk_nome.Width     := 40;
           Msk_nome.MaxLength := 3;
           Msk_nome.SetFocus;
       end;
    if RadCgc.checked  then
       begin
           GbPesquisa.Caption := 'Digite CNPJ do vendedor';
           Msk_nome.EditMask  := ' 99.999.999/9999-99;0;_';
           Msk_nome.Clear;
           Msk_nome.Width     := 112;
           Msk_nome.MaxLength := 18;
           Msk_nome.SetFocus;
       end;
    if RadCPF.checked  then
       begin
           GbPesquisa.Caption := 'Digite CPF do vendedor';
           Msk_nome.EditMask  := '999.999.999-99;0;_';
           Msk_nome.Clear;
           Msk_nome.Width     := 112;
           Msk_nome.MaxLength := 14;
           Msk_nome.SetFocus;
       end;
end;

procedure TFormRepresGrid.MostraRep;
begin
    Screen.Cursor := crHourGlass;
    try
      SqlCdsConsRep.Close;
      SqlCdsConsRep.CommandText := SQLDEF('REPRESENTANTES','select REP_CODIGO, REP_NOME, REP_FONE, REP_GRUPO, REP_QUOTA,REP_CGC, REP_FUNCAO, REP_SITUACAO from REP0000','','REP_NOME','');
      SqlCdsConsRep.Open;
    except on E:EdatabaseError do
        uteis.erro  (Pchar('Erro ao Abrir o arquivo de Representantes !'+e.Message));
    end;
    Screen.Cursor := crDefault;
end;

procedure TFormRepresGrid.BotaoPesquisa;
begin
    if Msk_Nome.Text <> '' then
       begin
           BitCancelar.Visible := True;
           BitPesquisar.Visible := False;
       end
    else
       begin
           BitCancelar.Visible := False;
           BitPesquisar.Visible := True;
       end;
end;

procedure TFormRepresGrid.Mensagens;
begin
    {if RadNome.checked  then
       begin
           if Msk_Nome.Text = '' then
              uteis.aviso('Informe o Nome do vendedor !')
           else
              uteis.aviso('Nome não encontrado !');
       end;}
    if RadCodigo.checked  then
       begin
           if Msk_Nome.Text = '' then
              uteis.aviso('Informe o Código do Vendedor !')
           else
              uteis.aviso('Código não encontrado !');
       end;
    if RadCgc.checked  then
       begin
           if Msk_Nome.Text = '' then
              uteis.aviso('Informe o CNPJ do Vendedor !')
           else
              uteis.aviso('CNPJ não encontrado !');
       end;
    if RadCPF.checked  then
       begin
           if Msk_Nome.Text = '' then
              uteis.aviso('Informe o CPF do Vendedor !')
           else
              uteis.aviso('CPF não encontrado !');
       end;
    Msk_Nome.Text := '';
    BotaoPesquisa;
end;

procedure TFormRepresGrid.BitPesquisarClick(Sender: tObject);
begin
    Screen.Cursor := Crhourglass;
    BuscaRep;
    {If (Msk_nome.Text <> '') then
       begin
           BuscaRep;
       end
    else
       begin
           Mensagens;
           Msk_Nome.Text := '';
           BotaoPesquisa;
           BitCancelar.Click;
       end;}
    Screen.Cursor := CrDefault;
end;

procedure TFormRepresGrid.BuscaRep;
Var
wSelect, wOrdem, psq : String;
begin
    {Busca pelo nome}
       psq:=trim(Msk_Nome.Text);
       begin
           if RadCodigo.checked  then
              begin
                  Msk_Nome.Text := StrZero(Msk_Nome.Text,Msk_nome.MaxLength);
                  wSelect := 'where REP_CODIGO = '''+Msk_Nome.Text +'''';
                  wOrdem  := 'REP_CODIGO';
              end;
           if RadNome.checked  then
              begin
                  {Caso seja compartilhado}
                  wSelect := 'where REP_NOME LIKE '''+Msk_Nome.Text +'%''';
                  wOrdem  := 'REP_NOME';
              end;
           if RadCGC.checked  then
              begin
                  if Msk_Nome.Text <> '' then
                     begin
                         wSelect := 'where REP_CGC = '''+Msk_Nome.Text +'''';
                         wOrdem  := 'REP_CGC';
                     end;
              end;
           if RadCPF.checked  then
              begin
                  if Msk_Nome.Text <> '' then
                     begin
                         wSelect := 'where REP_CGC = '''+Msk_Nome.Text +'''';
                         wOrdem  := 'REP_CGC';
                     end;
              end;
           if cb1.checked then
              wSelect := wSelect + ' and REP_SITUACAO='+qStr('A');

       end;

    try
      SqlCdsConsRep.Close;
      SqlCdsConsRep.CommandText := SqlDef('REPRESENTANTES','select REP_CODIGO, REP_NOME, REP_FONE, REP_GRUPO, REP_QUOTA, REP_FUNCAO, REP_SITUACAO,REP_CGC from REP0000',wSelect,wOrdem,'');
      SqlCdsConsRep.Open;
      if SqlCdsConsRep.IsEmpty then
         begin
             Mensagens;
             Msk_Nome.Text := '';
             BotaoPesquisa;
             BitCancelar.Click; //Caso digitou qualquer coisa e nao encontrou.
          end
      else
         begin
             BotaoPesquisa;
             DBGridRepres.SetFocus;
         end;
     except on E:EdataBaseError do
         uteis.erro  (Pchar('Erro ao abrir a tabela de vendedores !'+e.message));
     end;
end;

procedure TFormRepresGrid.BitCancelarClick(Sender: tObject);
begin
    Screen.Cursor := crHourGlass;
    MostraRep;
    Msk_Nome.Text := '';
    BotaoPesquisa;
    Screen.Cursor := crDefault;
    Msk_Nome.SetFocus;
end;

procedure TFormRepresGrid.DBGridRepresDblClick(Sender: tObject);
begin
    formRepres.EdtRep_codigo.Text := SqlCdsConsRepREP_CODIGO.AsString;
    formRepres.buscaRepres;
    formRepres.MostraDados;
    close;
end;

procedure TFormRepresGrid.FormKeyPress(Sender: tObject; var Key: Char);
begin
    if key = #27 then
       Begin
           Close;
           key :=#0;
       end;
end;

procedure TFormRepresGrid.Msk_nomeEnter(Sender: tObject);
begin
    Msk_Nome.Text  := '';
    BotaoPesquisa;
    Msk_Nome.Color := $0080FFFF;
end;

procedure TFormRepresGrid.Msk_nomeKeyPress(Sender: tObject; var Key: Char);
begin
    if RadCodigo.checked  then
       begin
           if not(Key in['0'..'9',#8]) then
              begin
                  //beep;
                  Key:=#0;
              end;
       end;
end;

procedure TFormRepresGrid.Msk_nomeExit(Sender: tObject);
begin
    Msk_Nome.Color := clWindow;
end;

procedure TFormRepresGrid.FormCloseQuery(Sender: tObject;
  var CanClose: Boolean);
begin
    try
      SqlCdsConsRep.close;
    except on E:EdataBaseError do
      uteis.erro  (pchar('Impossivel Fechar as Tabelas !'+e.message));
    end;

end;

procedure TFormRepresGrid.DBGridRepresKeyPress(Sender: tObject;
  var Key: Char);
begin
    if key = #13 then
       begin
           formRepres.EdtRep_codigo.Text := SqlCdsConsRepREP_CODIGO.AsString;
           formRepres.buscaRepres;
           formRepres.MostraDados;
           close;
           key := #0;
       end;
end;

procedure TFormRepresGrid.DBGridRepresDrawColumnCell(Sender: tObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
    if (not odd(SqlCdsConsRep.RecNo)) then
       if not (GdSelected in State) then
          begin
              DBGridRepres.Canvas.Brush.Color := $00FFEFDF;
              DBGridRepres.Canvas.FillRect(rect);
              DBGridRepres.DefaultDrawDataCell(Rect,column.Field,state);
          end;
end;

procedure TFormRepresGrid.FormCreate(Sender: tObject);
begin
     cb1.checked:=True;
end;

end.
