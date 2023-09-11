unit CEL0006;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Grids, DBGrids, Buttons, Provider, SqlExpr,SqlClientDataSet, DB, DBClient,
  DBLocal, DBLocalS, Data.DBXFirebird, SimpleDS;

type
  TFormMetasGrid = class(TForm)
    DBGridMetas: TDBGrid;
    GroupBox1: TGroupBox;
    RadMes: TRadioButton;
    RadCelula: TRadioButton;
    SqlCdsPesquisa: TSQLClientDataSet;
    DsPesquisa: TDataSource;
    Gr_pesquisa: TGroupBox;
    SqlCdsPesquisaCME_CODIGO: TStringField;
    SqlCdsPesquisaCME_DIASUTEIS: TFMTBCdField;
    SqlCdsPesquisaCME_TUPMETAMES: TFMTBCdField;
    SqlCdsPesquisaCME_TUPACRECENT: TFMTBCdField;
    SqlCdsPesquisaCME_TUPNEGATIVO: TFMTBCdField;
    SqlCdsPesquisaCEL_CODIGO: TStringField;
    SqlCdsCelula: TSQLClientDataSet;
    SqlCdsCelulaCEL_CODIGO: TStringField;
    SqlCdsCelulaCEL_NOME: TStringField;
    Cb_lista: TComboBox;
    SqlCdsPesquisaCME_ANO_CC: TStringField;
    SqlCdsPesquisaCME_MES_CC: TStringField;
    SqlCdsPesquisaCME_TUPREALIZADO: TFMTBCdField;
    SqlCdsPesquisaCME_FATURAMENTO: TFMTBCdField;
    SqlCdsPesquisaCME_PERCPATICIPA: TFMTBCdField;
    SqlCdsPesquisaCME_TOT_DIAS_COMP: TFMTBCdField;
    SqlCdsPesquisaCEL_NOME: TStringField;
    Gr_Mes: TGroupBox;
    Edt_Mes: TEdit;
    Edt_Ano: TEdit;
    BitCancelar: TBitBtn;
    BitPesquisar: TBitBtn;
    BitSair: TBitBtn;
    Edt_Lista: TEdit;

    procedure RadMesClick(Sender: tObject);
    procedure RadCelulaClick(Sender: tObject);
    procedure SpeedButton1Click(Sender: tObject);
    procedure DBGridMetasDblClick(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure FormCloseQuery(Sender: tObject; var CanClose: Boolean);
    procedure SqlCdsPesquisaCalcFields(DataSet: TDataSet);
    procedure Edt_MesKeyPress(Sender: tObject; var Key: Char);
    procedure BitSairClick(Sender: tObject);
    procedure BitPesquisarClick(Sender: tObject);
    procedure Edt_ListaExit(Sender: tObject);
    procedure Edt_ListaEnter(Sender: tObject);
    procedure Cb_listaClick(Sender: tObject);
    procedure BitCancelarClick(Sender: tObject);
    procedure Cb_listaEnter(Sender: tObject);
    procedure Cb_listaExit(Sender: tObject);
    procedure Edt_AnoEnter(Sender: tObject);
    procedure Edt_AnoExit(Sender: tObject);
    procedure Edt_MesExit(Sender: tObject);
    procedure Edt_MesEnter(Sender: tObject);

  private
    { Private declarations }
    procedure LayoutMetas;
    procedure BotaoPesquisar;
    procedure mensagens;
    procedure MostraMetas;
    procedure BuscaMeta;
    procedure PreencheCombo;

  public
    { Public declarations }
  end;

var
  FormMetasGrid: TFormMetasGrid;

implementation

uses Uteis, RWFunc, Cel0005, DmProdu;

{$R *.DFM}





procedure TFormMetasGrid.RadMesClick(Sender: tObject);
begin
    LayoutMetas;
end;

procedure TFormMetasGrid.RadCelulaClick(Sender: tObject);
begin
    LayOutMetas;
end;

procedure TFormMetasGrid.SpeedButton1Click(Sender: tObject);
begin
    close;
end;

procedure TFormMetasGrid.DBGridMetasDblClick(Sender: tObject);
begin
    FormMetaProd.EdtMes.Text    := copy(SqlCdsPesquisaCME_CODIGO.AsString,5,2);
    FormMetaProd.EdtAno.Text    := copy(SqlCdsPesquisaCME_CODIGO.AsString,1,4);
    FormMetaProd.EdtCelula.Text := copy(SqlCdsPesquisaCME_CODIGO.AsString,7,3);
    FormMetaProd.BuscaCelula;
    FormMetaProd.VerificaMeta;
    FormMetaProd.DbeDiaUtil.SetFocus;
    FormMetaProd.DbeDiaUtil.SelectAll;
    Close;
end;

procedure TFormMetasGrid.FormShow(Sender: tObject);
begin
    Top := 135;
    Left:=  65;
    MostraMetas;
    PreencheCombo;
    RadCelula.Checked := true;
    LayoutMetas;
end;

procedure TFormMetasGrid.PreencheCombo;
begin
    try
      SqlCdsCelula.Close;
      SqlCdsCelula.CommandText := SQLDEF('ORDEMPRODUCAO','SELECT CEL_CODIGO,CEL_NOME FROM CEL0000','','','');
      SqlCdsCelula.Open;
      SqlCdsCelula.First;
      Cb_Lista.Items.Clear;
      Cb_Lista.Items.Add('TODAS AS CELULAS');
      while not SqlCdsCelula.Eof do
       begin
           Cb_lista.Items.Add(SqlCdsCelulaCEL_NOME.AsString);
           SqlCdsCelula.Next;
       end;
       Cb_lista.ItemIndex := 0;
    except on E:EdatabaseError do
       uteis.erro  (Pchar('Erro ao preencher a combo !'+e.message));
    end;
end;

procedure TFormMetasGrid.FormCloseQuery(Sender: tObject;
  var CanClose: Boolean);
begin
    try
      SqlCdsCelula.Close;
      SqlCdsPesquisa.Close;
    except on E:EdatabaseError do
      uteis.erro  (Pchar('Erro ao Fechar as tabelas !'+e.message));
    end;
end;

procedure TFormMetasGrid.SqlCdsPesquisaCalcFields(DataSet: TDataSet);
begin
    SqlCdsPesquisaCME_ANO_CC.AsString := copy(SqlCdsPesquisaCME_CODIGO.AsString,1,4);
    SqlCdsPesquisaCME_MES_CC.AsString := copy(SqlCdsPesquisaCME_CODIGO.AsString,5,2);
end;

procedure TFormMetasGrid.BuscaMeta;
Var
  wSeleciona,wOrdem :String;
begin
    screen.Cursor := crHourGlass;
    if RadCelula.checked  then
       begin
           wSeleciona := 'WHERE P1.CEL_CODIGO = '''+Edt_Lista.Text+''' and C1.CEL_CODIGO= '''+Edt_Lista.Text+'''';
           wOrdem := 'P1.CEL_CODIGO';
       end;
    if RadMes.checked  then
       begin
           if (Edt_Mes.Text<> '') and (Edt_Ano.Text<> '') then
              wSeleciona := 'WHERE (P1.CME_CODIGO LIKE '''+Edt_ANO.Text+Edt_MES.Text+'%'')';
           wOrdem := 'P1.CME_CODIGO';
       end;
    try
      SqlCdsPesquisa.Close;
      SqlCdsPesquisa.CommandText:=SQLDEF('ORDEMPRODUCAO','SELECT P1.*,C1.CEL_NOME FROM CEL_ME02 P1 LEFT JOIN CEL0000 C1 ON P1.CEL_CODIGO = C1.CEL_CODIGO',wSeleciona,wOrdem,'P1.');
      SqlCdsPesquisa.Open;
      if SqlCdsPesquisa.IsEmpty then
         begin
             Mensagens;
             if RadCelula.checked  then
                Cb_lista.ItemIndex := 0
             else
                Edt_Ano.Text := '';
             BotaoPesquisar;
             BitCancelar.Click; //Caso digitou qualquer coisa e nao encontrou.
          end
      else
         begin
             BotaoPesquisar;
             DBGridMetas.setfocus;
         end;
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao abrir a pesquisa !'+e.message));
    end;
    Screen.Cursor := crDefault;
end;

procedure TFormMetasGrid.Edt_MesKeyPress(Sender: tObject; var Key: Char);
begin
    if not( key in['0'..'9',#8] ) then
      begin
          //beep;
          key:=#0;
      end;
end;

procedure TFormMetasGrid.LayoutMetas;
begin
    if RadMes.checked  then
       begin
           Gr_Pesquisa.Visible := false;
           Gr_Mes.Visible      := true;
           Gr_Mes.TabOrder       := 1;
           BitPesquisar.TabOrder := 2;
           Edt_Ano.SetFocus;
       end;
    if RadCelula.checked  then
       begin
           Gr_Pesquisa.Visible := true;
           Gr_Mes.Visible      := False;
           Gr_pesquisa.TabOrder  := 1;
           BitPesquisar.TabOrder := 2;
           Edt_Lista.SetFocus;
       end;
end;

procedure TFormMetasGrid.MostraMetas;
begin
    try
      SqlCdsPesquisa.Close;
      SqlCdsPesquisa.CommandText := SQLDEF('ORDEMPRODUCAO','SELECT P1.*,C1.CEL_NOME FROM CEL_ME02 P1 LEFT JOIN CEL0000 C1 ON P1.CEL_CODIGO = C1.CEL_CODIGO ','','C1.CEL_NOME','P1.');
      SqlCdsPesquisa.Open;
    except on E:EdatabaseError do
       uteis.erro  (Pchar('Erro ao abrir tabela CEL_ME02 !'+e.message));
    end;
end;

procedure TFormMetasGrid.BitSairClick(Sender: tObject);
begin
    close;
end;

procedure TFormMetasGrid.BotaoPesquisar;
begin
    if (Edt_Lista.Text <> '') or (Edt_Ano.Text <> '') Then
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

procedure TFormMetasGrid.mensagens;
begin
    if RadMes.checked  then
       begin
           if (Edt_Mes.Text = '') or (Edt_Ano.Text = '') then
              uteis.aviso('Informe o Ano/Mês da meta !')
           else
              uteis.aviso('Meta não encontrado !');
       end;
    if RadCelula.checked  then
      begin
          if Edt_lista.Text = '' then
             uteis.aviso('Informe a Célula !')
          else
             uteis.aviso('Célula não encontrado !');
      end;
end;

procedure TFormMetasGrid.BitPesquisarClick(Sender: tObject);
begin
    Screen.Cursor := Crhourglass;
    If (Edt_Lista.Text <> '') or (Edt_Mes.Text <> '') then
       begin
           BuscaMeta;
       end
    else
       begin
           Mensagens;
           if RadCelula.checked  then
              Edt_Lista.Text := ''
           else
              Edt_Ano.Text := '';
           BotaoPesquisar;
           BitCancelar.Click;
       end;
    Screen.Cursor := CrDefault;
end;

procedure TFormMetasGrid.Edt_ListaExit(Sender: tObject);
begin
    Edt_Lista.Color := clWindow;
    if (RadCelula.checked ) then
       begin
           if Edt_Lista.Text <> '' then
              begin
                  Edt_Lista.Text := StrZero(Edt_Lista.Text,Edt_Lista.MaxLength);
                  if SqlCdsCelula.Locate('CEL_CODIGO',Edt_Lista.Text,[]) = False then
                     begin
                         Mensagens;
                         Cb_lista.Text  := '';
                         Edt_Lista.Text := '';
                         Edt_Lista.SetFocus;
                     end
                  else
                     begin
                         Cb_lista.Text :=SqlCdsCelulaCEL_NOME.AsString;
                     end;
              end;
       end;
end;

procedure TFormMetasGrid.Edt_ListaEnter(Sender: tObject);
begin
    BitCancelar.Click;
    Edt_lista.Color := $0080FFFF;
end;

procedure TFormMetasGrid.Cb_listaClick(Sender: tObject);
begin
    if SqlCdsCelula.Locate('CEL_NOME',Cb_lista.Text,[]) = true then
       begin
           Edt_lista.Text := SqlCdsCelulaCEL_CODIGO.AsString;
       end;
end;

procedure TFormMetasGrid.BitCancelarClick(Sender: tObject);
begin
    Screen.Cursor := crHourGlass;
    MostraMetas;
    if RadCelula.checked  then
       begin
           Edt_Lista.Text:= '';
           Cb_lista.text := '';
       end
    else
       begin
           Edt_Mes.Text := '';
           Edt_Ano.Text := '';
       end;
    BotaoPesquisar;
    Screen.Cursor := crDefault;
    if RadCelula.checked  then
       Edt_Lista.SetFocus
    else
       Edt_Ano.SetFocus;
end;

procedure TFormMetasGrid.Cb_listaEnter(Sender: tObject);
begin
    Cb_lista.Color := $0080FFFF;
end;

procedure TFormMetasGrid.Cb_listaExit(Sender: tObject);
begin
    Cb_lista.Color := clWindow;
    if (ActiveControl.Name = 'BitSair') or (ActiveControl.Name = 'RadMes') or (ActiveControl.Name = 'Edt_Lista') then
       exit;
    if SqlCdsCelula.Locate('CEL_NOME',Cb_lista.Text,[]) = true then
       Edt_Lista.Text := SqlCdsCelulaCEL_CODIGO.AsString
    else
       begin
           uteis.aviso('Informe uma Célula !');
           Cb_lista.SetFocus;
       end;
end;

procedure TFormMetasGrid.Edt_AnoEnter(Sender: tObject);
begin
    BitCancelar.Click;
    Edt_Ano.Color := $0080FFFF;
end;

procedure TFormMetasGrid.Edt_AnoExit(Sender: tObject);
begin
    Edt_Ano.Color := clWindow;
end;

procedure TFormMetasGrid.Edt_MesExit(Sender: tObject);
begin
    Edt_Mes.Color := clWindow;
end;

procedure TFormMetasGrid.Edt_MesEnter(Sender: tObject);
begin
    Edt_Mes.Color := $0080FFFF;
end;

end.
