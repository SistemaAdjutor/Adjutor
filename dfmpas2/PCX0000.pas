unit PCX0000;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Mask, DBCtrls, ExtCtrls, Db,  rxToolEdit,
  RXDBCtrl, Provider, SqlExpr,SqlClientDataSet, ppProd, ppClass, ppReport, ppComm, ppRelatv,
  ppDB, ppDBPipe, DBClient, DBLocal, DBLocalS, ppModule, raCodMod, ppCtrls,
  ppBands, ppVar, ppPrnabl, ppCache, Grids, DBGrids, Data.DBXFirebird,
  ppDesignLayer, ppParameter, SimpleDS, JvExMask, JvToolEdit, JvDBControls;

type
  TFormProjCaixa = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DBNavigator1: TDBNavigator;
    Panel2: TPanel;
    DbePCX_DESCRI: TDBEdit;
    Panel1: TPanel;
    Bit_Sair: TBitBtn;
    Bit_Cancelar: TBitBtn;
    Bit_Excluir: TBitBtn;
    Bit_Gravar: TBitBtn;
    Bit_novo: TBitBtn;
    Panel3: TPanel;
    Bit_Relatorio: TBitBtn;
    Label3: TLabel;
    Label4: TLabel;
    DBRadioGroup1: TDBRadioGroup;
    SqlCdsRelProjCaixa: TSQLClientDataSet;
    DsRelProjCaixa: TDataSource;
    ppDBRelProjCaixa: TppDBPipeline;
    ppRPRelProjCaixa: TppReport;
    SqlCdsRelProjCaixaPCX_CODIGO: TStringField;
    SqlCdsRelProjCaixaPCX_DESCRI: TStringField;
    SqlCdsRelProjCaixaPCX_INICIO: TSQLTimeStampField;
    SqlCdsRelProjCaixaPCX_FIM: TSQLTimeStampField;
    SqlCdsRelProjCaixaPCX_TERMINADO: TStringField;
    SqlCdsRelProjCaixaEMP_CODIGO: TStringField;
    EdtPcx_Codigo: TEdit;
    Label5: TLabel;
    dbedtPCX_NIVEL: TDBEdit;
    GroupBox1: TGroupBox;
    dbgrdCentros: TDBGrid;
    SqlCdsRelProjCaixaPCX_NIVEL: TStringField;
    DBDateEdit1: TJvDBDateEdit;
    DBDateEdit2: TJvDBDateEdit;
    dbParticipaCustoOperacional: TDBCheckBox;
    SqlCdsRelProjCaixaPCX_PARTICIPA_CUSTO_OPERACIONAL: TStringField;
    pp00HeaderBand2: TppHeaderBand;
    ppLine2: TppLine;
    LBL_00_EMPRESA: TppLabel;
    LBL_00_LTITULO1: TppLabel;
    LBL_00_LTITULO2: TppLabel;
    ppLine3: TppLine;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLine1: TppLine;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    pp00DetailBand2: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    pp00SummaryBand2: TppSummaryBand;
    ppLine4: TppLine;
    ppLabel7: TppLabel;
    ppDBCalc1: TppDBCalc;
    raCodeModule1: TraCodeModule;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    cbCentroCustoEncerrado: TCheckBox;
    btTransfere: TBitBtn;
    procedure BuscaProjetoCx;
    procedure MudaCorCampos(Sender: tObject);
    procedure Bit_RelatorioClick(Sender: tObject);
    procedure Bit_novoClick(Sender: tObject);
    procedure Bit_ExcluirClick(Sender: tObject);
    procedure Bit_GravarClick(Sender: tObject);
    procedure Bit_CancelarClick(Sender: tObject);
    procedure FormShow(Sender: tObject);
    procedure FormClose(Sender: tObject; var Action: TCloseAction);
    procedure Bit_SairClick(Sender: tObject);
    procedure FormCloseQuery(Sender: tObject; var CanClose: Boolean);
    procedure verificaEdicao;
    procedure Habilitabotoes;
    procedure Desabilitabotoes;
    procedure DBDateEdit1Exit(Sender: tObject);
    procedure DBDateEdit2Exit(Sender: tObject);
    procedure DBNavigator1Click(Sender: tObject; Button: TNavigateBtn);
    procedure EdtPcx_CodigoKeyPress(Sender: tObject; var Key: Char);
    procedure EdtPcx_CodigoExit(Sender: tObject);
    procedure EdtPcx_CodigoEnter(Sender: tObject);
    procedure FormKeyPress(Sender: tObject; var Key: Char);
    procedure dbgrdCentrosDrawColumnCell(Sender: tObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure dbgrdCentrosDblClick(Sender: tObject);
    procedure FormCreate(Sender: tObject);
    procedure FormDestroy(Sender: TObject);
    procedure cbCentroCustoEncerradoClick(Sender: TObject);
    procedure btTransfereClick(Sender: TObject);

  private
    CampoEdit    :TEdit;
    CampoDBEdit  :TDBEdit;
    CampoData    :TDBDateEdit;
    fRetorno: String;
    fConta: string;

    fEdita: Boolean;
    fNovo: Boolean ;
    function RetornaQuantidadeFilhos(sNivel:String):Integer;
    function  AddNivel (Campo:String;Titulo:String) : String;
  public
        Property Retorno: String Read fRetorno Write fRetorno;
        Property Conta: String Read fConta Write fConta;
        procedure edita;
        procedure novo;
        procedure BotoesAcesso;
  end;

var
  FormProjCaixa: TFormProjCaixa;

implementation

uses Uteis, DataCad, RWFunc, DataCad1, uPlanoContasCentroCusto, uPlanoContasCentroCustoManual, ufrmpreviewrb, iniciodb, uTransfereCentroCusto;

{$R *.DFM}


procedure TFormProjCaixa.MudaCorCampos(Sender: tObject);
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
    if ActiveControl is TDBDateEdit then
       begin
          TDBDateEdit(ActiveControl).color := $0080FFFF;
          CampoData := TDBDateEdit(ActiveControl);
       end
    else
       begin
          CampoData := nil;
       end;
end;

procedure TFormProjCaixa.novo;
begin
     fNovo:=True;
end;

procedure TFormProjCaixa.FormShow(Sender: tObject);
begin
    Left := 237;
    //Top  := 191;

    Screen.OnActiveControlChange   := MudaCorCampos;

       DataCadastros1.CdsProCaixa.Close;
       DataCadastros1.CdsProCaixa.CommandText := SQLDEF('TABELAS','select T1.* from PCX0000 T1','','PCX_NIVEL','');
       Datacadastros1.CdsProCaixa.Open;

    Habilitabotoes;

    if DataCadastros1.CdsProCaixa.IsEmpty Then       //Evita alteração antes que se
       DataCadastros1.DsCentroCusto.AutoEdit := False;

    EdtPcx_Codigo.Text := DataCadastros1.CdsProCaixaPCX_CODIGO.AsString;

    if fNovo then
       //Bit_novoClick(nil)
    Else
    if fEdita and (retorno<>'') then
    begin
         EdtPcx_Codigo.Text := retorno;
         EdtPcx_CodigoExit(nil);
    end;

end;

procedure TFormProjCaixa.FormClose(Sender: tObject;
  var Action: TCloseAction);
begin
    Screen.OnActiveControlChange := NIL;
	Action := CaFree;
end;

procedure TFormProjCaixa.verificaEdicao;
begin
    // verifica estado da tabela em edicao e inclusao

    if DataCadastros1.CdsProCaixa.State in [dsEdit,dsInsert] then
       begin
           if uteis.confirmacao ( 'Deseja salvar alterações ?') = idyes then
              begin
                  DataCadastros1.CdsProCaixa.ApplyUpdates(0);
                  Habilitabotoes;
              end
           else
              begin
                  DataCadastros1.CdsProCaixa.Cancel;
                  Habilitabotoes;
              end;
       end;

end;

procedure TFormProjCaixa.HabilitaBotoes;
begin
    Bit_novo.Enabled      := True;
    Bit_Excluir.Enabled   := True;
    Bit_Sair.Visible      := True;
    Bit_Relatorio.Enabled := True;
    Bit_Gravar.Enabled    := False;
    Bit_Cancelar.Visible  := False;
    DbNavigator1.Enabled  := True;
    BotoesAcesso;
end;

procedure TFormProjCaixa.DesabilitaBotoes;
begin
    BotoesAcesso;
    Bit_novo.Enabled      := False;
    Bit_Excluir.Enabled   := False;
    Bit_Sair.Visible      := False;
    Bit_Relatorio.Enabled := False;
    Bit_Gravar.Enabled    := True;
    Bit_Cancelar.Visible  := True;
    DbNavigator1.Enabled  := False;

end;

procedure TFormProjCaixa.edita;
begin
     fEdita := True ;
end;

procedure TFormProjCaixa.Bit_novoClick(Sender: tObject);
   var
      sCodigoConta:string;
begin
     if (DataCadastros1.CdsProCaixa.IsEmpty) then
     begin
         sCodigoConta := '001';
         DataCadastros1.CdsProCaixa.Insert;
         EdtPcx_Codigo.Text := DataCadastros1.CdsProCaixaPCX_CODIGO.AsString;
         EdtPcx_CODIGO.Text:= sCodigoConta;
         EdtPcx_Codigo.Enabled := false;
         DataCadastros1.CdsProCaixaPCX_NIVEL.AsString := sCodigoConta;
         DataCadastros1.CdsProCaixaPCX_INICIO.AsDateTime := Now;
         DataCadastros1.CdsProCaixaPCX_TERMINADO.Value := 'N';
         DesabilitaBotoes;
         uteis.HabilitaIncluir('CadastrosCentro de Custos',DBInicio.Usuario.CODIGO,FormProjCaixa);
         //DbePCX_DESCRI.setfocus;
     end
     else
     begin
         sCodigoConta := AddNivel(DataCadastros1.CdsProCaixaPCX_NIVEL.AsString,DataCadastros1.CdsProCaixaPCX_DESCRI.AsString);
         if (sCodigoConta <> '') then
            begin
              DataCadastros1.CdsProCaixa.Insert;
              EdtPcx_Codigo.Text := DataCadastros1.CdsProCaixaPCX_CODIGO.AsString;
              EdtPcx_Codigo.Enabled := false;
              DataCadastros1.CdsProCaixaPCX_NIVEL.AsString := sCodigoConta;
              DataCadastros1.CdsProCaixaPCX_INICIO.AsDateTime := Now;
              DataCadastros1.CdsProCaixaPCX_TERMINADO.Value := 'N';
              DesabilitaBotoes;
              uteis.HabilitaIncluir('CadastrosCentro de Custos',DBInicio.Usuario.CODIGO,FormProjCaixa);
              //DbePCX_DESCRI.setfocus;
            end;
     end;


end;

procedure TFormProjCaixa.Bit_ExcluirClick(Sender: tObject);
begin
    if DataCadastros1.CdsProCaixa.IsEmpty Then   //evita exclussão de registro
         Begin                                      // em uma Tabela Vazia.
             messagebeep($ffff);
             uteis.aviso('Centro de Custo não está cadastrado !');
             exit;
         end;
    DataCadastros.sqlUpdate1.Close;
    DataCadastros.sqlUpdate1.sql.text:= 'select (SELECT COALESCE(COUNT(T2.FIR_REGISTRO),0) FROM FIN_RATEIO T2 WHERE T2.PCX_CODIGO = T1.PCX_CODIGO)+(SELECT COALESCE(COUNT(T3.PCXPF_REGISTRO),0) FROM PCX0000_PLANO T3 WHERE T3.PCX_CODIGO = T1.PCX_CODIGO) as uso from PCX0000 T1 WHERE T1.PCX_CODIGO = '+QuotedStr(DataCadastros1.CdsProCaixaPCX_CODIGO.AsString);
    DataCadastros.sqlUpdate1.Open;
    if (DataCadastros.sqlUpdate1.FieldByName('USO').AsInteger > 0) then
       begin
         messagebeep($ffff);
         uteis.aviso('Centro de Custo não pode ser excluído pois já é utilizado em outras partes do Sistema !');
         exit;
       end;
    DataCadastros.sqlUpdate1.Close;

    if uteis.confirmacao ( 'Deseja excluir este Centro de Custo ?')= Mryes then
       begin

           DataCadastros1.CdsProCaixa.Delete;
           DataCadastros1.CdsProCaixa.ApplyUpdates(0);
           DataCadastros1.CdsProCaixa.Refresh;

       end;
    EdtPcx_Codigo.Text :=DataCadastros1.CdsProCaixaPCX_CODIGO.AsString;
    EdtPcx_Codigo.SetFocus;
    EdtPcx_Codigo.SelectAll;
end;

procedure TFormProjCaixa.Bit_GravarClick(Sender: tObject);
begin
    if DBDateEdit2.text <> '  /  /    ' then
       DBRadioGroup1.ItemIndex := 1;


      if (DataCadastros1.CdsProCaixa.State <> dsEdit) then
         begin
            DataCadastros1.CdsProCaixaPCX_CODIGO.AsString := EdtPcx_Codigo.Text;
            DataCAdastros1.CdsProCaixaEMP_CODIGO.AsString := dbInicio.Empresa.Emp_codigo;
         end;
      DataCadastros1.CdsProCaixa.ApplyUpdates(0);
      //
      DataCadastros.sqlUpdate2.Close;
      DataCadastros.sqlUpdate2.sql.text := 'UPDATE PCX0000 SET PCX_TIPO = ''T''';
      DataCadastros.sqlUpdate2.ExecSql;

      DataCadastros.sqlUpdate2.Close;
      DataCadastros.sqlUpdate2.sql.text := 'UPDATE PCX0000 T1 SET T1.PCX_TIPO = ''L'' WHERE (Select cast(count(*) as integer) as conta from    PCX0000 T2 WHERE T2.PCX_NIVEL LIKE T1.PCX_NIVEL||''%'') = 1';
      DataCadastros.sqlUpdate2.ExecSql;

      DataCadastros1.DsProCaixa.AutoEdit := true;

      Habilitabotoes;
      EdtPcx_Codigo.Enabled := true;
      EdtPcx_Codigo.Text    := StrZero(DataCadastros1.CdsProCaixaPCX_CODIGO.AsString,EdtPcx_Codigo.MaxLength);
      DbePCX_DESCRI.Setfocus;
      if fEdita or fNovo then
      begin
           retorno := DataCadastros1.CdsProCaixaPCX_CODIGO.AsString ;
           ModalResult := mrOk;
      end;

end;

procedure TFormProjCaixa.btTransfereClick(Sender: TObject);
begin
  try
    if frmTransfereCentroCusto = nil then
      frmTransfereCentroCusto := tfrmTransfereCentroCusto.Create(Self);
    frmTransfereCentroCusto.ShowModal;
  finally
    frmTransfereCentroCusto := nil;
  end;
end;

procedure TFormProjCaixa.Bit_CancelarClick(Sender: tObject);
begin
    DataCadastros1.CdsProCaixa.Cancel;
    HabilitaBotoes;
    if DataCadastros1.CdsProCaixa.IsEmpty Then      //Ao cancelar ultimo record da
         begin                                      //tabela deixa autoedit=true;
             DataCadastros1.DsProCaixa.AutoEdit := False;
             EdtPcx_Codigo.Enabled := false;
         end;
    EdtPcx_Codigo.Enabled := True;
    EdtPcx_Codigo.Text    := StrZero(DataCadastros1.CdsProCaixaPCX_CODIGO.AsString,EdtPcx_Codigo.MaxLength);
    DbePCX_DESCRI.Setfocus;
end;

procedure TFormProjCaixa.Bit_SairClick(Sender: tObject);
begin
    close;
end;

procedure TFormProjCaixa.BotoesAcesso;
begin
     if assigned(FormProjCaixa) then
     begin
       Bit_novo.Enabled := Uteis.AcessoUsuario('CadastrosCentro de Custos',DBInicio.Usuario.CODIGO,FormProjCaixa).Incluir;
       Bit_Excluir.Enabled := Uteis.AcessoUsuario('CadastrosCentro de Custos',DBInicio.Usuario.CODIGO,FormProjCaixa).Exluir;
       Bit_Relatorio.Enabled := Uteis.AcessoUsuario('CadastrosCentro de Custos',DBInicio.Usuario.CODIGO,FormProjCaixa).Relatorio;
       DataCadastros1.DsProCaixa.AutoEdit := Uteis.AcessoUsuario('CadastrosCentro de Custos',DBInicio.Usuario.CODIGO,FormProjCaixa).Alterar;
     end;
end;

procedure TFormProjCaixa.FormCloseQuery(Sender: tObject;
  var CanClose: Boolean);
begin
    Verificaedicao;
    Try
      DataCadastros1.CdsProCaixa.Close;
      SqlCdsRelProjCaixa.Close;
    except on E:EdatabaseError do
       uteis.erro  (Pchar('Erro ao Fechar as tabelas !'+e.message));
    end;
end;

procedure TFormProjCaixa.FormCreate(Sender: tObject);
begin
     fRetorno := '';
     fEdita:=False;
     fNovo:=False;
     cbCentroCustoEncerrado.State := cbGrayed;
end;

procedure TFormProjCaixa.FormDestroy(Sender: TObject);
begin
    DataCadastros1.CdsProCaixa.Filtered := False;
    FormProjCaixa := Nil;
end;

procedure TFormProjCaixa.Bit_RelatorioClick(Sender: tObject);
begin

    Try
       SqlCdsRelProjCaixa.Close;
       SqlCdsRelProjCaixa.CommandText := SQLDEF('TABELAS','SELECT * FROM PCX0000','','PCX_DESCRI','');
       SqlCdsRelProjCaixa.Open;


       if cbCentroCustoEncerrado.State = cbChecked then
       begin
         SqlCdsRelProjCaixa.Filtered := False;
         SqlCdsRelProjCaixa.Filter := 'PCX_TERMINADO = ''S'' ';
         SqlCdsRelProjCaixa.Filtered := True;
       end
       else
       if cbCentroCustoEncerrado.State = cbUnchecked then
       begin
         SqlCdsRelProjCaixa.Filtered := False;
         SqlCdsRelProjCaixa.Filter := 'PCX_TERMINADO = ''N'' ';
         SqlCdsRelProjCaixa.Filtered := True;
       end
       else
       if cbCentroCustoEncerrado.State = cbGrayed then
       begin
         SqlCdsRelProjCaixa.Filtered := False;
       end;



       LBL_00_EMPRESA.Caption  := dbinicio.Empresa.RAZAO;
       LBL_00_LTITULO1.Caption := 'LISTAGEM DOS DE CENTRO DE CUSTO';
       LBL_00_LTITULO2.Caption := 'ORDEM POR DESCRIÇÃO';
       ppRPRelProjCaixa.DeviceType := 'Screen';
       RBuilderPreview(ppRPRelProjCaixa);
    except on E:EdatabaseError do
       uteis.erro  (Pchar('Erro ao gerar o relatório !'+e.message));
    end;

end;

procedure TFormProjCaixa.DBDateEdit1Exit(Sender: tObject);
begin
    if DBDateEdit1.date<>0 then
       begin
           if not TestaDataStr(DBDateEdit1.Text) then
              DBDateEdit1.setfocus;
       end;
end;

procedure TFormProjCaixa.DBDateEdit2Exit(Sender: tObject);
begin
    if DBDateEdit2.date<>0 then
       begin
           if DBDateEdit2.Date>=DBDateEdit1.Date then
              begin
                  if not TestaDataStr(DBDateEdit2.Text) then
                     DBDateEdit2.setfocus;
              end
           else
              begin
                  uteis.aviso('A data termino não pode ser menor que a data inicío...');
                  DBDateEdit2.text := '';
                  DBDateEdit2.SetFocus;
              end;
       end;
end;

procedure TFormProjCaixa.DBNavigator1Click(Sender: tObject;
  Button: TNavigateBtn);
begin
    EdtPcx_Codigo.Text := DataCadastros1.CdsProCaixaPCX_CODIGO.AsString;
end;

procedure TFormProjCaixa.EdtPcx_CodigoKeyPress(Sender: tObject;
  var Key: Char);
begin
    if not (key in ['0'..'9',#8]) then
       begin
          //beep;
          Key := #0;
       end;
end;

procedure TFormProjCaixa.EdtPcx_CodigoExit(Sender: tObject);
begin
    EdtPcx_Codigo.Text := StrZero(EdtPcx_Codigo.Text,EdtPcx_Codigo.MaxLength);
    if (DataCadastros1.CdsProCaixa.State in [dsBrowse]) and not (DataCadastros1.CdsProCaixa.IsEmpty) then
       begin
           BuscaProjetoCx;
       end;
end;

procedure TFormProjCaixa.EdtPcx_CodigoEnter(Sender: tObject);
begin
    EDTPCX_CODIGO.SelectAll;
end;

procedure TFormProjCaixa.BuscaProjetoCx;
begin
     if DataCadastros1.CdsProCaixa.Locate('PCX_CODIGO',EdtPCX_Codigo.Text,[]) = False then
     begin
           uteis.aviso('Código do Centro de Custo não cadastrado!!!');
           EdtPCX_Codigo.Text := DataCadastros1.CdsProCaixaPCX_CODIGO.AsString;
           EdtPCX_Codigo.SetFocus;
     end;
end;

procedure TFormProjCaixa.cbCentroCustoEncerradoClick(Sender: TObject);
begin
  if cbCentroCustoEncerrado.State = cbChecked then
  begin
    DataCadastros1.CdsProCaixa.Filtered := False;
    DataCadastros1.CdsProCaixa.Filter := 'PCX_TERMINADO = ''S'' ';
    DataCadastros1.CdsProCaixa.Filtered := True;
  end
  else
  if cbCentroCustoEncerrado.State = cbUnchecked then
  begin
    DataCadastros1.CdsProCaixa.Filtered := False;
    DataCadastros1.CdsProCaixa.Filter := 'PCX_TERMINADO = ''N'' ';
    DataCadastros1.CdsProCaixa.Filtered := True;
  end
  else
  if cbCentroCustoEncerrado.State = cbGrayed then
  begin
    DataCadastros1.CdsProCaixa.Filtered := False;
  end;

end;

procedure TFormProjCaixa.FormKeyPress(Sender: tObject; var Key: Char);
begin
    if key = #27 then
       begin
//          if Bit_Cancelar.Visible then
//             Bit_Cancelar.Click
//          else
//          if Bit_Sair.Visible then
//             Bit_Sair.Click;
          close;
          key := #0;
       end;
end;

function TFormProjCaixa.RetornaQuantidadeFilhos(sNivel: String): Integer;
begin
   DataCadastros.sqlUpdate.Close;
   DataCadastros.SqlUpdate.sql.text :=SQLDEF('TABELAS','SELECT COUNT(PCX_DESCRI) FROM PCX0000','WHERE pcx_nivel LIKE','PCX_DESCRI','');
   DataCadastros.sqlUpdate.Open;


end;

function TFormProjCaixa.AddNivel(Campo, Titulo: String): String;
Var
N1       : String[3];
N2,N3    : String[2];
N4,N5,N6 : String[3];
NovoCod  : String[14];
Retorna  : String[19];
i        : Integer;
wInCodigo: Currency;
a,b :string;
begin
    a:= Campo;
    b:= Titulo;
    wInCodigo :=0;
    {tirando os pontos da conta}
    N1 := COPY(CAMPO,1,3);
    N2 := COPY(CAMPO,5,2);
    N3 := COPY(CAMPO,8,2);
    N4 := COPY(CAMPO,11,3);
    N5 := COPY(CAMPO,15,3);
    N6 := COPY(CAMPO,19,3);
    {Atribui no NovoCod a conta sem os pontos}
    NovoCod := N1+N2+N3+N4+N5+N6;
    {Faz a somatoria do numero da Conta}
    if (N1 <> '') then
       begin
           if uteis.confirmacao ( ('LEIA ESTA MENSAGEM CUIDADOSAMENTE !!!'+#13+#10+'Você esta prestes a inserir um Sub-Centro ligado a Centro:'+#13+#10+CAMPO+' - '+Titulo+#13+#10+#13+#10+'Deseja confirmar a criação do sub-centro?')) = idYes then
              begin
                  // nao pode incrementar mais que 6 niveis
                  if (N6 = '') then
                     begin
                        if (N1 = '') then
                           NovoCod := NovoCod + '001'
                        else
                        if (N2 = '') then
                           NovoCod := NovoCod + '01'
                        else
                        if (N3 = '') then
                           NovoCod := NovoCod + '01'
                        else
                        if (N4 = '') then
                           NovoCod := NovoCod + '001'
                        else
                        if (N5 = '') then
                           NovoCod := NovoCod + '001'
                        else
                           NovoCod := NovoCod + '001';

                        wInCodigo  := StrToCurr(NovoCod);
                        For i := 1 to 999 do
                           begin
                             {Monta o Numero da Conta}
                             if COPY(NOVOCOD,1,3)<> '' then
                                Retorna := COPY(NOVOCOD,1,3)+IIF(COPY(NOVOCOD,4,2)<>'','.','');
                             if COPY(NOVOCOD,5,2)<> '' then
                                Retorna := Retorna + StrZero(COPY(NOVOCOD,4,2),2)+IIF(COPY(NOVOCOD,6,2)<>'','.','');
                             if COPY(NOVOCOD,6,2)<> '' then
                                Retorna := Retorna + StrZero(COPY(NOVOCOD,6,2),2)+IIF(COPY(NOVOCOD,8,3)<>'','.','');
                             if COPY(NOVOCOD,8,3)<> '' then
                                Retorna := Retorna + StrZero(COPY(NOVOCOD,8,3),3)+IIF(COPY(NOVOCOD,11,3)<>'','.','');
                             if COPY(NOVOCOD,11,3)<> '' then
                                Retorna := Retorna + StrZero(COPY(NOVOCOD,11,3),3)+IIF(COPY(NOVOCOD,15,3)<>'','.','');
                             if COPY(NOVOCOD,15,3)<> '' then
                                Retorna := Retorna + StrZero(COPY(NOVOCOD,15,3),3);
                             //
                             try
                               DataCadastros.sqlUpdate.Close;
                               DataCadastros.SqlUpdate.sql.text :=SqlDef('TABELAS','Select pcx_nivel from PCX0000','where pcx_nivel='''+Retorna+'''','pcx_nivel','');
                               DataCadastros.sqlUpdate.Open;
                               if DataCadastros.sqlUpdate.IsEmpty then
                                  // se tabela é vazia a sub-conta incrementado é aceita
                                  begin
                                     Result  := Retorna;
                                     exit;
                                  end
                               else
                                  begin
                                     {tirando os pontos do retorna p/incrementar}
                                     N1 := COPY(Retorna,1,3);
                                     N2 := COPY(Retorna,5,2);
                                     N3 := COPY(Retorna,8,2);
                                     N4 := COPY(Retorna,11,3);
                                     N5 := COPY(Retorna,15,3);
                                     N6 := COPY(Retorna,19,3);
                                     {Atribui var Retorna sem os pontos}
                                     Retorna := N1 + N2 + N3 + N4 + N5 + N6;
                                     //incremenar a conta porque já existe o codigo

                                     wInCodigo  := StrToCurr(Retorna) + 1;
                                     NovoCod    := PreenchezeroEsquerda(CurrToStr(wInCodigo),Length(Retorna));

                                  end;
                             except on E:EDataBaseError do
                                 uteis.erro  (pchar('Erro ao gravar a nova conta !'+e.message));
                             end;
                           end;  //end do For

                     end
                  else
                     begin
                       uteis.aviso('Número máximo de nível esgotado !');
                       Retorna := '999';
                       Result  := Retorna;
                       exit;
                     end;
              end
           else
              begin
                // Nao confirmou inclusao da sub-conta
                {verificar se é conta de 1o grau
                 se nivel 2 = vazio entao é a conta de primeiro grau}
                {conta de primeiro grau é incrementada até 9 }
                if (N2 = '') then
                  begin
                   if uteis.confirmacao ( 'Novo Centro de Custo de 1º grau será incrementado.Confirma ? ')= idYes then
                      begin
                         NovoCod := PreenchezeroEsquerda(IntToStr(StrToInt(NovoCod) + 1),3);
                         For I := 1 to 999 do
                            begin
                            Retorna := NOVOCOD;
                            try
                               DataCadastros.sqlUpdate.Close;
                               DataCadastros.SqlUpdate.sql.text :=SqlDef('PLANODECONTAS','Select pcx_nivel from pcx0000','where pcx_nivel='''+Retorna+'''','pcx_nivel','');
                               DataCadastros.sqlUpdate.Open;
                               if DataCadastros.sqlUpdate.IsEmpty then
                                  // se tabela é vazia a conta incrementado é aceita
                                  begin
                                     Result  := Retorna;
                                     exit;
                                  end
                               else
                                  begin
                                     // é preciso incremenar a conta porque já existe o codigo
                                     NovoCod := PreenchezeroEsquerda(IntToStr(StrToInt(NovoCod) + 1),3);
                                  end;
                             except on E:EDataBaseError do
                                 uteis.erro  (pchar('Erro ao gravar a nova conta !'+e.message));
                             end;

                            end; // end For

                      end;

                   end
                 else
                    begin
                      Bit_Cancelar.Click;
                      exit;
                    end;

              end;
       end;
end;

procedure TFormProjCaixa.dbgrdCentrosDrawColumnCell(Sender: tObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
    if (not odd(DataCadastros1.CdsProCaixa.RecNo)) then
       if not (GdSelected in State) then
          begin
              dbgrdCentros.Canvas.Brush.Color := $00FFEFDF;
              dbgrdCentros.Canvas.FillRect(rect);
              dbgrdCentros.DefaultDrawDataCell(Rect,column.Field,state);
          end;
end;


procedure TFormProjCaixa.dbgrdCentrosDblClick(Sender: tObject);
begin
     fRetorno := DataCadastros1.CdsProCaixaPCX_CODIGO.AsString;
     fConta := DataCadastros1.CdsProCaixaPCX_NIVEL.AsString;
     ModalResult := mrOk;
end;

end.
