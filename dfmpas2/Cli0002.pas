unit Cli0002;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, BaseDbForm,
  Grids, DBGrids, StdCtrls, Buttons, Mask, Db, DBTables, RwFunc, ExtCtrls,
  Provider, SqlExpr, ppDB, ppComm, ppRelatv, ppDBPipe, DBClient, DBLocal,
  DBLocalS, Data.DBXFirebird, SimpleDS, Data.FMTBCd, ACBrEnterTab, ACBrBase, ACBrCalculadora;

type
  TFormClienteGrid = class(TfrmBaseDB)
    GroupBox1: TGroupBox;
    RadNome: TRadioButton;
    RadCodigo: TRadioButton;
    RadCgc: TRadioButton;
    RadCPF: TRadioButton;
    DBGridCliente: TDBGrid;
    DsCons: TDataSource;
    RadFantasia: TRadioButton;
    BitHistorico: TBitBtn;
    BitPesquisa: TBitBtn;
    BitSair: TBitBtn;
    BitCancelar: TBitBtn;
    CdsConsCLI_CODIGO: TStringField;
    CdsConsCLI_RAZAO: TStringField;
    CdsConsCLI_FANTASIA: TStringField;
    CdsConsCLI_FONE: TStringField;
    CdsConsCLI_DTULTCOM: TSQLTimeStampField;
    CdsConsCLI_CIDADE: TStringField;
    CdsConsCLI_CGC: TStringField;
    CdsConsCLI_UF: TStringField;
    CdsConsCLI_ENDERE: TStringField;
    CdsConsCLI_INATIVO: TStringField;
    RadCidade: TRadioButton;
    RadBairro: TRadioButton;
    chkOcultarInativas: TCheckBox;
    qCons: TSQLQuery;
    dspCons: TDataSetProvider;
    CdsCons: TClientDataSet;
    Msk_Lista: TMaskEdit;
    procedure RadNomeClick(Sender: tObject);
    procedure Edt_codigoExit(Sender: tObject);
    procedure DBGridClienteDblClick(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure Msk_ListaEnter(Sender: tObject);
    procedure DBGridClienteCellClick(Column: TColumn);
    procedure BitHistoricoClick(Sender: tObject);
    procedure BitSairClick(Sender: tObject);
    procedure BitPesquisaClick(Sender: tObject);
    procedure BitCancelarClick(Sender: tObject);
    procedure Msk_ListaKeyPress(Sender: tObject; var Key: Char);
    procedure DBGridClienteDrawColumnCell(Sender: tObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure DBGridClienteTitleClick(Column: TColumn);
    procedure RadCidadeClick(Sender: tObject);
    procedure RadBairroClick(Sender: tObject);
    procedure DBGridClienteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
   private
         procedure LayOutPesq;
         procedure BotaoPesquisa;
         procedure Mensagens;

         procedure BuscaCliente;
         procedure TransfereCliente;
         function RetornaQuantidadeRegistros(sTabela, sCondicao: String): Integer;
  public

  end;

var
  FormClienteGrid: TFormClienteGrid;

implementation

{$R *.DFM}

uses uteis, GimpFichaCliente, DataCad, DataMov, InicioDb,
	 uPedido, Men0001, uFinanceiroAnaliseCreditoCliente, uPedidoWebAcao;


procedure TformClientegrid.BuscaCliente;
Var  wSelect, wOrdem,sCondicao : String;
     whe: boolean;
///
   procedure sqladd( stt: string );
   begin
        if stt<>'' then
        begin
           if whe then
              qCons.SQL.Add('and '+stt)
           Else
              qCons.SQL.Add('where '+stt);
           whe:=true;
        end;

   end;
///
begin
     whe:=false;
     CdsCons.DisableControls;
     try
        CdsCons.Close;
        qCons.SQL.Clear;
        qCons.SQL.add('select CLI_CODIGO, ');
        qCons.SQL.add('       CLI_RAZAO,  ');
        qCons.SQL.add('       CLI_FANTASIA, ');
        qCons.SQL.add('       CLI_CGC, ');
        qCons.SQL.add('       CLI_FONE, ');
        qCons.SQL.add('       CLI_DTULTCOM, ');
        qCons.SQL.add('       CLI_CIDADE, ');
        qCons.SQL.add('       CLI_UF, ');
        qCons.SQL.add('       CLI_BAIRRO, ');
        qCons.SQL.add('       CLI_ENDERE,' );
        qCons.SQL.add('FROM CLI0000 ');
        if (dbInicio.Empresa.bVisualizaClientes_P) and (dbInicio.Empresa.fCODIGO_REPRES <> '000') then
           SqlAdd( 'REP_CODIGO ='+qStr(dbInicio.Empresa.fCODIGO_REPRES) );

        sqladd( dbInicio.ExclusivoSql('CLIENTES') );

        if (chkOcultarInativas.Checked) then
           sqladd( 'CLI_INATIVO = '+qStr('A') );

        wOrdem  := '';
        if RadCodigo.checked  then
        begin
             wOrdem  := 'CLI_CODIGO';
             Msk_Lista.Text := StrZero(Msk_Lista.Text,5);
        end
        Else
        if RadNome.checked  then
             wOrdem  := 'CLI_RAZAO'
        else
        if RadFantasia.checked  then
           wOrdem  := 'CLI_FANTASIA'
        else
        if RadCGC.checked  or RadCPF.checked  then
           wOrdem := 'CLI_CGC'
        else
        if RadCidade.checked  then
           wOrdem  := 'CLI_CIDADE'
        else
        if RadBairro.checked  then
           wOrdem  := 'CLI_BAIRRO';

        SqlAdd( CampoSql ( wOrdem , Msk_Lista.Text ) );

        qCons.SQL.add('Order By '+wOrdem );

        CdsCons.Open;
     Finally
        CdsCons.EnableControls;
     end;
end;

procedure TFormClienteGrid.LayOutPesq;
begin
     Msk_Lista.text      := '';
     Msk_Lista.EditMask  := '';
    if RadCodigo.checked  then
       begin
           GBLista.Caption     := 'Código do Cliente:';
           Msk_Lista.Width     := 50;
       end;
    if RadNome.checked  then
       begin
           GBLista.Caption     := 'Razão Social:';
           GBLista.Width       := 351;
           Msk_Lista.text      := '';
           Msk_Lista.MaxLength := 50;
           Msk_Lista.Width     := 340;
           Msk_Lista.EditMask  := '';
           Msk_Lista.SetFocus;
       end;
    if RadFantasia.checked  then
       begin
           GBLista.Caption     := 'Nome Fantasia:';
           GBLista.Width       := 351;
           Msk_Lista.text      := '';
           Msk_Lista.MaxLength := 50;
           Msk_Lista.Width     := 340;
           Msk_Lista.EditMask  := '';
           Msk_Lista.SetFocus;
       end;
    if RadCPF.checked  then
       begin
           GbLista.Caption     := 'CPF do Cliente:';
           GbLista.Width       := 130;
           Msk_Lista.Text      := '';
           Msk_Lista.MaxLength := 11;
           Msk_Lista.Width     := 117;
           Msk_Lista.EditMask  := '999.999.999-99;0;_';
           Msk_Lista.SetFocus;
       end;
    if RadCgc.checked  then
       begin
           GbLista.Caption     := 'CNPJ do Cliente:';
           GbLista.Width       := 130;
           Msk_Lista.Text      := '';
           Msk_Lista.MaxLength := 14;
           Msk_Lista.Width     := 117;
           Msk_Lista.EditMask  := '99.999.999/9999-99;0;_';
           Msk_Lista.SetFocus;
       end;
    if RadCidade.checked  then
       begin
           GBLista.Caption     := 'Cidade:';
           GBLista.Width       := 310;
           Msk_Lista.text      := '';
           Msk_Lista.MaxLength := 30;
           Msk_Lista.Width     := 300;
           Msk_Lista.EditMask  := '';
           Msk_Lista.SetFocus;
       end;
    if RadBairro.checked  then
       begin
           GBLista.Caption     := 'Bairro:';
           GBLista.Width       := 310;
           Msk_Lista.text      := '';
           Msk_Lista.MaxLength := 30;
           Msk_Lista.Width     := 300;
           Msk_Lista.EditMask  := '';
           Msk_Lista.SetFocus;
       end;


    BotaoPesquisa;
//    MostraClie;
end;

procedure TFormClienteGrid.Mensagens;
begin
    if RadCodigo.checked  then
       begin
           if Msk_Lista.Text = '' then
              uteis.aviso('Informe o Código do Cliente !')
           else
              uteis.aviso('Código não encontrado !');
       end;
    if RadNome.checked  then
       begin
           if Msk_Lista.Text = '' then
              uteis.aviso('Informe a Razão Social do Cliente !')
           else
              uteis.aviso('Razão Social não encontrado !');
       end;
    if RadFantasia.checked  then
       begin
           if Msk_Lista.Text = '' then
              uteis.aviso('Informe Nome Fantasia do Cliente !')
           else
              uteis.aviso('Nome Fantasia não encotrado !');
       end;
    if RadCgc.checked  then
       begin
           if Msk_Lista.Text = '' then
              uteis.aviso('Informe o CNPJ do Cliente !')
           else
              uteis.aviso('CNPJ não encontrado !');
       end;
    if RadCPF.checked  then
       begin
           if Msk_Lista.Text = '' then
              uteis.aviso('Informe o CPF do Cliente !')
           else
              uteis.aviso('CPF não encontrado !');
       end;
    if RadCidade.checked  then
       begin
           if Msk_Lista.Text = '' then
              uteis.aviso('Informe a Cidade do Cliente !')
           else
              uteis.aviso('Cidade não encontrada !');
       end;
     if RadBairro.checked  then
       begin
           if Msk_Lista.Text = '' then
              uteis.aviso('Informe o Bairro do Cliente !')
           else
              uteis.aviso('Bairro não encontrado !');
       end;

    Msk_Lista.Text := '';
    BotaoPesquisa;
end;

procedure TFormClienteGrid.BotaoPesquisa;
begin
    if Msk_Lista.Text <> '' then
       begin
           BitCancelar.Visible := True;
           BitPesquisa.Visible := False;
       end
    else
       begin
           BitCancelar.Visible := False;
           BitPesquisa.Visible := True;
       end;
end;

procedure TFormClienteGrid.BitCancelarClick(Sender: tObject);
begin
    Screen.Cursor := crHourGlass;
    MostraClie;
    Msk_Lista.Text := '';
    BotaoPesquisa;
    Screen.Cursor := crDefault;
    Msk_Lista.SetFocus;
end;

procedure TFormClienteGrid.RadNomeClick(Sender: tObject);
begin
    LayOutPesq;
end;

procedure TFormClienteGrid.Edt_codigoExit(Sender: tObject);
begin
    buscaCliente;
end;

procedure TFormClienteGrid.DBGridClienteDblClick(Sender: tObject);
begin
   TransfereCliente;
end;

procedure TFormClienteGrid.FormShow(Sender: tObject);
begin
    INHERITED;
    MostraClie;
    RadNome.Checked := True;
    LayOutPesq;

end;

procedure TFormClienteGrid.Msk_ListaEnter(Sender: tObject);
begin
    Msk_Lista.Text  := '';
    BotaoPesquisa;
end;

procedure TFormClienteGrid.DBGridClienteCellClick(Column: TColumn);
begin
    BitHistorico.Enabled := True;
end;

procedure TFormClienteGrid.BitHistoricoClick(Sender: tObject);
begin
    try
      try
        FormGimpFichas :=TFormGimpFichas.Create(Application);
        FormGimpFichas.ShowModal;
       finally
         FormGimpFichas.Destroy;
         FormGimpFichas := nil //  nil é - From Assigned = False
       end;
     except
         //beep;
         uteis.erro  ('Ocorreu um erro na criação do formulário!');
     end;
end;

procedure TFormClienteGrid.BitSairClick(Sender: tObject);
begin
    close;
end;

procedure TFormClienteGrid.BitPesquisaClick(Sender: tObject);
begin
    Screen.Cursor := Crhourglass;
    BuscaCliente;
    Screen.Cursor := CrDefault;
end;

procedure TFormClienteGrid.Msk_ListaKeyPress(Sender: tObject;
  var Key: Char);
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



procedure TFormClienteGrid.TransfereCliente;
begin
     idRetorno:=CdsConsCLI_CODIGO.Asstring;
     ModalResult:=mrOk;

     if Tag = 0 then
     begin
       FormCliente.PageCliente.ActivePageIndex := 0;
       FormCliente.BuscaCliente(CdsConsCLI_CODIGO.AsString);
       //DataCadastros.CdsClientes.Locate('cli_codigo',CdsConsCLI_CODIGO.AsString,[]);
       FormCliente.MostrarCliente;

       FormCliente.DbeCli_razao.SetFocus;
       Close;
     end
     Else
     {if Tag = 1 then
     begin
       if datamovimento.CdsPedidos.State in [dsInsert, dsEdit] then
       begin
         DataMovimento.CdsPedidosCLI_CODIGO.Value := CdsConsCLI_CODIGO.Value;
         formpedidos.CbClientes1.text := CdsConsCLI_RAZAO.Value;
         FormPedidos.CbClientes1.OnChange(self);
         //FormPedidos.LBL_RAZAO.Caption := CdsConsCLI_RAZAO.Value;
         DataMovimento.CdsPedidosCLI_CODIGO.Value := CdsConsCLI_CODIGO.Value;

         FormPedidos.DBeCli_codigo.OnExit(Self);
         FormPedidos.DbeTRP_CODIGOExit(self);
         FormPedidos.MskCnpj.Text := CdsConsCLI_CGC.AsString;
       end;
       Close;
     end
     Else}
     if Tag = 2 then
     begin
           FrmPedido.EdClienteCodigo.Text := CdsConsCLI_CODIGO.Value;
           Close;
     end
     Else
     if Tag = 3 then
        Close
     Else
     if Tag = 4 then
        begin
           FrmFinanceiroAnaliseCreditoCliente.EdClienteCodigo.Text := CdsConsCLI_CODIGO.AsString;
           FrmFinanceiroAnaliseCreditoCliente.CbCliente.Text := CdsConsCLI_RAZAO.AsString;
           Close;
        end
     Else
     if Tag = 5 then
        begin
           FrmPedidoWebAcao.EdClienteCodigo.Text := CdsConsCLI_CODIGO.Value;
           Close;
        end
     Else
     if Tag = -1 then // adr
     begin
          if not CdsConsCLI_CODIGO.IsNull then
          begin
          end;
     end;

end;

procedure TFormClienteGrid.DBGridClienteDrawColumnCell(Sender: tObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
    if (CdsConsCLI_INATIVO.AsString = 'I') then
       DBGridCliente.Canvas.Font.Color := clRed;
    inherited;
end;

procedure TFormClienteGrid.DBGridClienteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if Key = VK_RETURN then
     begin
          TransfereCliente;
          Key :=0;
     end;
     INHERITED;
end;

procedure TFormClienteGrid.DBGridClienteTitleClick(Column: TColumn);
begin
   try
      CdsCons.IndexFieldNames:=Column.FieldName;
   except
      uteis.aviso('Não é possivel ordenar por esta coluna');
   end;
end;

procedure TFormClienteGrid.RadCidadeClick(Sender: tObject);
begin
   LayOutPesq;
end;

procedure TFormClienteGrid.RadBairroClick(Sender: tObject);
begin
   LayOutPesq;
end;

function TFormClienteGrid.RetornaQuantidadeRegistros(sTabela,sCondicao:String):Integer;
begin
   //
   DataCadastros.sqlUpdate.Close;
   DataCadastros.SqlUpdate.sql.text :='SELECT count(*) as qtde from  '+sTabela+ IIF(sCondicao <> '',' where '+sCondicao,'');
   DataCadastros.sqlUpdate.open;
   if (not DataCadastros.sqlUpdate.IsEmpty) then
      Result := DataCadastros.sqlUpdate.FieldByName('qtde').AsInteger
   else
      Result := 0;
   DataCadastros.sqlUpdate.Close;
end;


end.





