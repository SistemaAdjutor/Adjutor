{************************************************************************
 Programa........: OCP0002  - Nome formulario = FormOrdCompra
 Objetivo........: tela de consulta das Ordens de Compra
 Analista........: Márcio Neu Pacheco
 Programador.....: Márcio

 Comentários:  Este form é chamado pelas units OCP0001 E NFS0001

 Criação..........: Mar/99
 Ultima Alteração.: Mai/01
 Alterado por.....: Márcio
************************************************************************}
unit Ocp0002;

interface
uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Mask, Grids, DBGrids, RwFunc, ExtCtrls, Db,
  DBTables, DBCtrls,   Provider, SqlExpr,SqlClientDataSet, DBClient, DBLocal,
  DBLocalS, Data.DBXFirebird, SimpleDS, BaseDBForm, BaseForm, JvExMask, JvToolEdit;

type
  TFormOrdCompraGrid = class(TfrmBaseDB)
    Lb_lista: TLabel;
    GroupBox1: TGroupBox;
    Rad_Data: TRadioButton;
    Rad_Fornecedor: TRadioButton;
    Rad_Codigo: TRadioButton;
    GbPesquisaData: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    GbPesquisa: TGroupBox;
    Edt_lista: TEdit;
    BitPesquisar: TBitBtn;
    BitBtn4: TBitBtn;
    BitCancelar: TBitBtn;
    SqlCdsCompra: TSQLClientDataSet;
    DsCompra: TDataSource;
    SqlCdsCompraOCP_CODIGO: TStringField;
    SqlCdsCompraFOR_CODIGO: TStringField;
    SqlCdsCompraOCP_DTENTREGA: TSQLTimeStampField;
    SqlCdsCompraOCP_DTEMIS: TSQLTimeStampField;
    SqlCdsCompraOCP_TOTAL: TFMTBCdField;
    SqlCdsCompraOCP_STATUS: TStringField;
    SqlCdsCompraFOR_RAZAO: TStringField;
    SqlCdsCompraFOR_FONE: TStringField;
    SqlCdsItensOC: TSQLClientDataSet;
    DsItemOC: TDataSource;
    SqlCdsCompraOCP_STATUS_CC: TStringField;
    SqlCdsItensOCOCP_CODIGO: TStringField;
    SqlCdsItensOCPRD_REFER: TStringField;
    SqlCdsItensOCOCI_QTDES: TFMTBCdField;
    SqlCdsItensOCOCI_QTDER: TFMTBCdField;
    SqlCdsItensOCOCI_IPI: TFMTBCdField;
    SqlCdsItensOCOCI_SITUACAO: TStringField;
    SqlCdsItensOCOCI_SITUACAO_CC: TStringField;
    SqlCdsItensOCOCI_PRECO: TFMTBCdField;
    GroupBox2: TGroupBox;
    DbGridItemOrdem: TDBGrid;
    GroupBox3: TGroupBox;
    DbGridOrdComp: TDBGrid;
    SqlCdsItensOCPRD_DESCRI: TBlobField;
    RxDataInicial: TJvDateEdit;
    RxDataFinal: TJvDateEdit;
    procedure Rad_CodigoClick(Sender: tObject);
    procedure DBGridOrdCompraDblClick(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure Rad_FornecedorClick(Sender: tObject);
    procedure Rad_DataClick(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure Edt_listaClick(Sender: tObject);
    procedure Edt_listaEnter(Sender: tObject);
    procedure BitBtn4Click(Sender: tObject);
    procedure BitPesquisarClick(Sender: tObject);
    procedure Edt_listaKeyPress(Sender: tObject; var Key: Char);
    procedure SqlCdsCompraCalcFields(DataSet: TDataSet);
    procedure DbGridOrdCompDblClick(Sender: tObject);
    procedure BitCancelarClick(Sender: tObject);
    procedure SqlCdsItensOCCalcFields(DataSet: TDataSet);
    procedure SqlCdsCompraAfterScroll(DataSet: TDataSet);
    procedure RxDataInicialEnter(Sender: tObject);
    procedure RxDataFinalEnter(Sender: tObject);
    procedure DbGridOrdCompKeyPress(Sender: tObject; var Key: Char);
    procedure Edt_listaExit(Sender: tObject);
    procedure DbGridOrdCompDrawColumnCell(Sender: tObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure RxDataInicialExit(Sender: tObject);
    procedure RxDataFinalExit(Sender: tObject);
    procedure SqlCdsItensOCPRD_DESCRIGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure DbGridOrdCompTitleClick(Column: TColumn);
  private
         vIdRetorno: String ;
         procedure LayOutRad;
         procedure MostraOrdCompra;
         procedure Mensagens;
         procedure BotaoPesquisa;
         procedure BuscarItensOC;
         procedure BuscaItens;
    procedure SelecionaRegistro;
  public
        Property IdRetorno: String Read vIdRetorno Write vIdRetorno;
  end;

var
  FormOrdCompraGrid: TFormOrdCompraGrid;

implementation

{$R *.DFM}

uses Uteis, OCP0001, DataCad, Nfs0001, Men0001;






procedure TFormOrdCompraGrid.Rad_CodigoClick(Sender: tObject);
begin
    LayoutRad;
end;

procedure TFormOrdCompraGrid.Rad_FornecedorClick(Sender: tObject);
begin
    LayoutRad;
end;

procedure TFormOrdCompraGrid.Rad_DataClick(Sender: tObject);
begin
    LayoutRad;
end;

procedure TFormOrdCompraGrid.DBGridOrdCompraDblClick(Sender: tObject);
begin
    Close;
end;

procedure TFormOrdCompraGrid.DbGridOrdCompTitleClick(Column: TColumn);
var indice: string;
    existe: boolean;
    clientdataset_idx: tclientdataset;
begin
  inherited;
     clientdataset_idx := TClientDataset(Column.Grid.DataSource.DataSet);

     if clientdataset_idx.IndexFieldNames = Column.FieldName then
     begin
          indice := AnsiUpperCase(Column.FieldName+'_INV');

          try
             clientdataset_idx.IndexDefs.Find(indice);
             existe := true;
          except
                existe := false;
          end;

          if not existe then
             with clientdataset_idx.IndexDefs.AddIndexDef do
             begin
                  Name := indice;
                  Fields := Column.FieldName;
                  Options := [ixDescending];
             end;
          clientdataset_idx.IndexName := indice;
     end
     else
     if Column.Field.FieldKind<>fkCalculated then
         clientdataset_idx.IndexFieldNames := Column.FieldName
     Else
         GeraException('Coluna Não Permite Ordenação!');

end;

procedure TFormOrdCompraGrid.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
    Screen.Cursor := crHourGlass;
    try
      SqlCdsCompra.Close;
      SqlCdsItensOC.Close;
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao fechar as tabelas !'+e.message));
    end;
    Screen.Cursor := crDefault;
end;

procedure TFormOrdCompraGrid.FormCreate(Sender: TObject);
begin
     vIdRetorno := '';
end;

procedure TFormOrdCompraGrid.FormShow(Sender: tObject);
begin
    Left := 00;
    Top  := 20;
    Rad_Fornecedor.Checked := True;
    Screen.Cursor := crHourglass;
    MostraOrdCompra;
    LayOutRad;
    Edt_lista.SetFocus;
    {PARAMETRO PARA CONFIGURAR CASAS DECIMAIS DA ORDEM DE COMPRAS}
    case FrmMenu.iCasaDecimaisOcp of
       0:Begin
             SqlCdsItensOCOCI_PRECO.DisplayFormat := '###,###,##0.00';
         end;
       1:Begin
             SqlCdsItensOCOCI_PRECO.DisplayFormat := '###,###,##0.00';
         end;
       2:Begin
             SqlCdsItensOCOCI_PRECO.DisplayFormat := '###,###,##0.00';
         end;
       3:Begin
             SqlCdsItensOCOCI_PRECO.DisplayFormat := '###,###,##0.000';
         end;
       4:Begin
             SqlCdsItensOCOCI_PRECO.DisplayFormat := '###,###,##0.0000';
         end;
       5:Begin
             SqlCdsItensOCOCI_PRECO.DisplayFormat := '###,###,##0.00000';
         end;
    end;
    //
    Screen.Cursor := crDefault;
end;

procedure TFormOrdCompraGrid.Edt_listaClick(Sender: tObject);
begin
    Edt_lista.SelectAll;
end;

procedure TFormOrdCompraGrid.Edt_listaEnter(Sender: tObject);
begin
    Edt_Lista.Text  := '';
    BitCancelar.Click;
    BotaoPesquisa;
    Edt_lista.Color := $0080FFFF;
end;

procedure TFormOrdCompraGrid.BitBtn4Click(Sender: tObject);
begin
    Close;
end;

procedure TFormOrdCompraGrid.BitPesquisarClick(Sender: tObject);
begin
    Screen.Cursor := Crhourglass;
    If (Edt_Lista.Text <> '') or (RxDataInicial.Text <> '  /  /    ') then
       begin
           BuscarItensOC;
       end
    else
       begin
           Mensagens;
           Edt_Lista.Text     := '';
           RxDataInicial.Text := '  /  /    ';
           BotaoPesquisa;
           BitCancelar.Click;
       end;
    Screen.Cursor := CrDefault;
end;

procedure TFormOrdCompraGrid.LayOutRad;
begin
    if Rad_Codigo.checked  then
       begin
           GbPesquisaData.Visible := False;
           GbPesquisa.Visible     := true;
           GbPesquisa.Caption     := 'Informe o código do pedido de compra';
           Edt_lista.Width        := 44;
           Edt_lista.MaxLength    := 6;
           Edt_Lista.SetFocus;
       end;
    if Rad_Fornecedor.checked  then
       begin
           GbPesquisaData.Visible := False;
           GbPesquisa.Visible     := true;
           GbPesquisa.Caption     := 'Informe nome do Fornecedor';
           Edt_lista.Width        := 310;
           Edt_lista.MaxLength    := 50;
           Edt_Lista.SetFocus;
       end;
    if Rad_Data.checked  then
       begin
           GbPesquisaData.Visible := True;
           GbPesquisaData.Caption := 'Informe o periódo de emissão';
           GbPesquisa.Visible     := False;
           RxDataInicial.SetFocus;
       end;
end;

procedure TFormOrdCompraGrid.Edt_listaKeyPress(Sender: tObject;
  var Key: Char);
begin
    if Rad_Codigo.checked  then
       begin
           if not (key in ['0'..'9',#8]) then
              begin
                 //beep;
                 Key := #0;
              end;
       end;
end;

procedure TFormOrdCompraGrid.MostraOrdCompra;
Var
  wSeleciona,wDataI,wDataF : String;
begin
    Screen.Cursor := crHourGlass;
    try
      wDataI := DateToStr(now-180);
      wDataF := DateToStr(now);
      wSeleciona := 'WHERE O1.OCP_DTEMIS BETWEEN '''+DataAmericana(wDataI)+''' AND '''+DataAmericana(wDataF)+'''';
      SqlCdsCompra.Close;
      SqlCdsCompra.CommandText := SQLDEF('ORDENSCOMPRA','SELECT O1.OCP_CODIGO,O1.FOR_CODIGO,O1.OCP_DTENTREGA,O1.OCP_DTEMIS,O1.OCP_TOTAL,'+
                                         'O1.OCP_STATUS,F1.FOR_RAZAO,F1.FOR_FONE FROM OCP0000 O1 LEFT OUTER JOIN FOR0000 F1 ON  (O1.FOR_CODIGO = F1.FOR_CODIGO)',wSeleciona,'O1.OCP_DTEMIS DESC','O1.');
      SqlCdsCompra.Open;
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao abrir a tabela !'+e.message));
    end;
    Screen.Cursor := crDefault;
end;

procedure TFormOrdCompraGrid.SqlCdsCompraCalcFields(DataSet: TDataSet);
begin
    SqlCdsCompraOCP_STATUS_CC.AsString := IIF(SqlCdsCompraOCP_STATUS.AsString = 'P','Pendente','Concluído');
end;

procedure TFormOrdCompraGrid.DbGridOrdCompDblClick(Sender: tObject);
begin
    application.processmessages;
    if Assigned(FormNfEntrada) then
    begin
         if FormNFEntrada.RadComOC.checked  then
         begin
              /// ????
         end;
         Close;
    end
    Else
        SelecionaRegistro;
end;

procedure TFormOrdCompraGrid.SelecionaRegistro;
begin
     if not SqlCdsCompraOCP_CODIGO.isnull then
     begin
          idRetorno := SqlCdsCompraOCP_CODIGO.AsString;
          ModalResult := mrOk ;
     end;
end;

procedure TFormOrdCompraGrid.Mensagens;
begin
    if Rad_Codigo.checked  then
       begin
           if Edt_Lista.Text = '' then
              uteis.aviso('Informe o código do pedido de compra !')
           else
              uteis.aviso('Código não encontrado !');
       end;
    if Rad_Fornecedor.checked  then
       begin
           if Edt_Lista.Text = '' then
              uteis.aviso('Informe o Fornecedor da ordem de compra !')
           else
              uteis.aviso('Fornecedor não encontrado !');
       end;
    if Rad_Data.checked  then
       begin
           if RxDataInicial.Text = '  /  /    ' then
              uteis.aviso('Informe a Data de Emissão !')
           else
              uteis.aviso('Data Emissão não encontrado !');
       end;
    Edt_Lista.Text := '';
    RxDataInicial.Text := '  /  /    ';
    BotaoPesquisa;
end;

procedure TFormOrdCompraGrid.BotaoPesquisa;
begin
    if (Edt_Lista.Text <> '') or (RxDataInicial.Text <> '  /  /    ') then
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

procedure TFormOrdCompraGrid.BuscarItensOC;
Var
wSeleciona,wOrdem,wDataI,wDataF : String;
begin
    {Verifica qual Pesquisa Foi Selecionada}
    if Rad_Codigo.checked  then
       begin
           wSeleciona := 'where O1.OCP_CODIGO = '''+Edt_Lista.Text+'''';
           wOrdem     := 'O1.OCP_CODIGO';
       end;
    if Rad_Fornecedor.checked  then
       begin
           wSeleciona := 'where F1.FOR_RAZAO LIKE '''+Edt_lista.Text +'%''';
           wOrdem     := 'F1.FOR_RAZAO';
       end;
    if GbPesquisaData.Visible = true then
       begin
           if Rad_Data.checked  then
              begin
                  wSeleciona := 'where O1.OCP_DTEMIS BETWEEN '''+DataAmericana(RxDataInicial.Text)+''' AND '''+DataAmericana(RxDataFinal.Text)+'''';
                  wOrdem     := 'O1.OCP_DTEMIS DESC';
              end;
       end;
    Screen.Cursor := crHourGlass;
    try
      SqlCdsCompra.Close;
      SqlCdsCompra.CommandText := SQLDEF('ORDENSCOMPRA','SELECT O1.OCP_CODIGO,O1.FOR_CODIGO,O1.OCP_DTENTREGA,O1.OCP_DTEMIS,O1.OCP_TOTAL,'+
                                         'O1.OCP_STATUS,F1.FOR_RAZAO,F1.FOR_FONE FROM OCP0000 O1 LEFT OUTER JOIN FOR0000 F1 ON  (O1.FOR_CODIGO = F1.FOR_CODIGO) ',wSeleciona,wOrdem,'O1.');
      SqlCdsCompra.Open;
      if SqlCdsCompra.IsEmpty then
         begin
             Mensagens;
             Edt_Lista.Text     := '';
             RxDataInicial.Text := '';
             BotaoPesquisa;
             BitCancelar.Click; //Caso digitou qualquer coisa e nao encontrou.
          end
      else
         begin
             BuscaItens;
             BotaoPesquisa;
             DbGridOrdComp.SetFocus;
         end;
    except on E:EdatabaseError do
        uteis.erro  (Pchar('Erro ao Abrir as Tabelas !'+e.Message));
    end;
    Screen.Cursor := crDefault;
end;

procedure TFormOrdCompraGrid.BitCancelarClick(Sender: tObject);
begin
    Screen.Cursor := crHourGlass;
    MostraOrdCompra;
    Edt_Lista.Text     := '';
    RxDataInicial.Text := '';
    BotaoPesquisa;
    Screen.Cursor := crDefault;
    if GbPesquisaData.Visible = true then
       begin
           RxDataInicial.SetFocus;
       end
    else
       begin
           Edt_Lista.SetFocus;
       end;
end;

procedure TFormOrdCompraGrid.SqlCdsItensOCCalcFields(DataSet: TDataSet);
begin
    SqlCdsItensOCOCI_SITUACAO_CC.AsString := IIF(SqlCdsItensOCOCI_SITUACAO.AsString = 'P','Pendente',IIF(SqlCdsItensOCOCI_SITUACAO.AsString = 'F','Parcial','Concluído'));
    // P = PENDENTE / F = PARCIAL / C = CONCLUIDO
    // P = Pendente / F = Parcial / C = Concluido

end;

procedure TFormOrdCompraGrid.BuscaItens;
var
   sQuery, sEmpresa:String;
   QryReg:TSQLQuery;
begin
    try
      sEmpresa := '';
      QryReg := TSQLQuery.Create(Nil);
      QryReg.SQLConnection := DataCadastros.SQLConnection1;
      QryReg.SQL.Clear;
      QryReg.SQL.Add('Select PRODUTOS from SHAREDB');
      QryReg.Open;
      if (QryReg.FieldByName('PRODUTOS').AsString = 'E') then
         begin
            sEmpresa := ' and O1.emp_codigo = P1.emp_codigo ';
         end;
      QryReg.Close;
      FreeAndNil(QryReg);


      SqlCdsItensOC.Close;
      SqlCdsItensOC.CommandText := SQLDEF('ORDENSCOMPRA','SELECT O1.OCP_CODIGO,O1.PRD_REFER,O1.OCI_QTDES,O1.OCI_QTDER,O1.OCI_PRECO,O1.OCI_IPI,O1.OCI_SITUACAO,O1.OCI_DESCRICAO AS PRD_DESCRI '+
                                          'FROM OCP_IT01 O1 LEFT JOIN PRD0000 P1 ON  (O1.PRD_REFER = P1.PRD_REFER '+sEmpresa+') ','where OCP_CODIGO = '''+SqlCdsCompraOCP_CODIGO.AsString+'''','O1.OCP_CODIGO','O1.');
      SqlCdsItensOC.Open;
      if SqlCdsItensOC.IsEmpty then
         begin
             DbGridItemOrdem.Enabled := false
         end
      else
         begin
             DbGridItemOrdem.Enabled := true;
         end;
    except on E:EDataBaseError do
       uteis.erro  (pchar('Erro ao abrir o arquivo de Itens de Compras !'+e.message));
    end;
end;

procedure TFormOrdCompraGrid.SqlCdsCompraAfterScroll(DataSet: TDataSet);
begin
    BuscaItens;
end;

procedure TFormOrdCompraGrid.RxDataInicialEnter(Sender: tObject);
begin
    RxDataInicial.Text := '';
    BotaoPesquisa;
    RxDataInicial.SelectAll;
    RxDataInicial.Color := $0080FFFF;
end;

procedure TFormOrdCompraGrid.RxDataFinalEnter(Sender: tObject);
begin
    RxDataFinal.Color := $0080FFFF;
    RxDataFinal.SelectAll;
end;

procedure TFormOrdCompraGrid.DbGridOrdCompKeyPress(Sender: tObject;
  var Key: Char);
begin
     application.processmessages;
     if key =#13 then
     begin
          if Assigned(FormNfEntrada) then
             close
          Else
              SelecionaRegistro;
     end;
end;

procedure TFormOrdCompraGrid.Edt_listaExit(Sender: tObject);
begin
    Edt_Lista.Color := clWindow;
    if Rad_Codigo.checked  then
       begin
           Edt_Lista.Text := StrZero(Edt_Lista.Text,Edt_Lista.MaxLength);
       end;
end;

procedure TFormOrdCompraGrid.DbGridOrdCompDrawColumnCell(Sender: tObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
    if SqlCdsCompraOCP_STATUS.AsString = 'C' then
       begin
           DbGridOrdComp.Canvas.Font.Color:= clBlue; // coloque aqui a cor desejada
           DbGridOrdComp.DefaultDrawDataCell(Rect,DbGridOrdComp.columns[datacol].field, State);
       end;
end;

procedure TFormOrdCompraGrid.RxDataInicialExit(Sender: tObject);
begin
    if not TestaDataStr(RxDataInicial.Text) then
       RxDataInicial.setfocus;
    RxDataInicial.Color := clWindow;
end;

procedure TFormOrdCompraGrid.RxDataFinalExit(Sender: tObject);
begin
    if not TestaDataStr(RxDataFinal.Text) then
       RxDataFinal.setfocus;
    RxDataFinal.Color := clWindow;
end;

procedure TFormOrdCompraGrid.SqlCdsItensOCPRD_DESCRIGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  Text := SqlCdsItensOCPRD_DESCRI.Asstring;
end;

end.
