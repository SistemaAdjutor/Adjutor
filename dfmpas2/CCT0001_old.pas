unit CCT0001;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, StdCtrls, Buttons, ExtCtrls, Mask, Db, DBTables, Rwfunc, BaseDbForm,
  Provider, SqlExpr,SqlClientDataSet, ppProd, ppClass, ppReport, ppComm, ppRelatv, ppDB,
  ppDBPipe, DBClient, DBLocal, DBLocalS, ppModule, raCodMod, ppCtrls,
  ppBands, ppVar, ppPrnabl, ppCache, Grids, DBGrids, ComCtrls, FMTBCd,
  ppDBBDE, SgDbSeachComboUnit, Vcl.Menus, ppParameter, ppDesignLayer, SimpleDS,
  Data.DBXFirebird, ACBrETQ, ACBrEnterTab, ACBrBase, ACBrCalculadora;

type
  TFormContAnalise = class(TfrmBaseDB)
    DBNavigator1: TDBNavigator;
    Panel1: TPanel;
    Bit_Excluir: TBitBtn;
    Bit_Gravar: TBitBtn;
    Bit_Cancelar: TBitBtn;
    Bit_Sair: TBitBtn;
    Bit_novo: TBitBtn;
    SqlCdsContAnalise: TSQLClientDataSet;
    DsContAnalise: TDataSource;
    ppRPRelCentroCusto01: TppReport;
    SqlCdsContAnaliseCCT_CODIGO: TStringField;
    SqlCdsContAnaliseCCT_CONTA: TStringField;
    SqlCdsContAnaliseCCT_PROVISAO: TFMTBCdField;
    SqlCdsContAnaliseCEC_CODIGO: TStringField;
    SqlCdsContAnaliseEMP_CODIGO: TStringField;
    SqlCdsContAnaliseCCT_TIPO: TStringField;
    SqlCdsContAnaliseCCT_NIVEL: TStringField;
    SqlCdsContAnaliseCCT_DESCRI: TStringField;
    SqlCdsContAnaliseCCT_STATUS: TStringField;
    ppBDEPipeline1: TppBDEPipeline;
    GroupCadastro: TGroupBox;
    Label7: TLabel;
    DbeCct_Descri: TDBEdit;
    pp00HeaderBand2: TppHeaderBand;
    ppLine5: TppLine;
    LBL_00_EMPRESA: TppLabel;
    LBL_00_LTITULO1: TppLabel;
    LBL_00_LTITULO2: TppLabel;
    ppLine6: TppLine;
    ppSystemVariable3: TppSystemVariable;
    ppSystemVariable4: TppSystemVariable;
    ppLabel2: TppLabel;
    ppLine1: TppLine;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    pp00DetailBand2: TppDetailBand;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText5: TppDBText;
    ppDBText4: TppDBText;
    ppDBText6: TppDBText;
    pp00SummaryBand2: TppSummaryBand;
    ppLine9: TppLine;
    ppLabel25: TppLabel;
    ppDBCalc2: TppDBCalc;
    ppDBText1: TppDBText;
    ppLabel1: TppLabel;
    grpPlano: TGroupBox;
    DBGridContas: TDBGrid;
    CdsPlanoCentro: TSQLClientDataSet;
    CdsPlanoCentroPCX_CODIGO: TStringField;
    CdsPlanoCentroPCX_NIVEL: TStringField;
    CdsPlanoCentroPCX_DESCRI: TStringField;
    CdsPlanoCentroPCXP_INDICE: TFMTBCdField;
    dsPlanoCentro: TDataSource;
    Label6: TLabel;
    DbeProvisao: TDBEdit;
    pnl1: TPanel;
    Bit_Relatorio: TBitBtn;
    dsColaboradorCentroCusto: TDataSource;
    CdsColaboradorCentroCusto: TSQLClientDataSet;
    CdsColaboradorCentroCustoPCX_NIVEL: TStringField;
    CdsColaboradorCentroCustoPCX_DESCRI: TStringField;
    CdsColaboradorCentroCustoPPC_QUANTIDADE: TFMTBCdField;
    CdsColaboradorCentroCustoPCX_CODIGO: TStringField;
    CdsColaboradorCentroCustoPPC_QUANTIDADE_TOTAL_PERFIL: TFMTBCdField;
    DBRadNivel: TDBRadioGroup;
    Label1: TLabel;
    EdtCCT_codigo: TEdit;
    DbeCCT_Nivel: TDBEdit;
    Label5: TLabel;
    DbRadMovimento: TDBRadioGroup;
    CbxTipoCta: TComboBox;
    Label4: TLabel;
    grpRateios: TGroupBox;
    dbrgrpCCT_PERFIL_RATEIO: TDBRadioGroup;
    grpPerfilRateio: TGroupBox;
    SpeedButton2: TSpeedButton;
    nbTipoPerfil: TNotebook;
    pnlManual: TPanel;
    pnlPercentual: TPanel;
    pnlColaborador: TPanel;
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    grpRateio: TGroupBox;
    dbgrdRateio: TDBGrid;
    btnCentro: TBitBtn;
    Label2: TLabel;
    pmContas: TPopupMenu;
    CopiarConfiguraodeRateio1: TMenuItem;
    PopupMenu1: TPopupMenu;
    RemoverEsteCCusto1: TMenuItem;
    CdsColaboradorCentroCustoPPC_REGISTRO: TIntegerField;
    N1: TMenuItem;
    RemoverTodososCCusto1: TMenuItem;
    AdicionarTodososCCustos1: TMenuItem;
    CdsPlanoCentroPCXP_REGISTRO: TIntegerField;
    VincularNovoCCusto1: TMenuItem;
    cbPerfil: TSgDbSearchCombo;
    qPerfil: TSQLQuery;
    procedure VerificaEdicao;
    procedure DesabilitaBotoes;
    procedure Habilitabotoes;
    procedure Bit_novoClick(Sender: tObject);
    procedure Bit_ExcluirClick(Sender: tObject);
    procedure Bit_GravarClick(Sender: tObject);
    procedure Bit_CancelarClick(Sender: tObject);
    procedure Bit_SairClick(Sender: tObject);
    procedure FormCloseQuery(Sender: tObject; var CanClose: Boolean);
    procedure EdtCct_codigoExit(Sender: tObject);
    procedure TbCtAnaliseBeforeEdit(DataSet: TDataSet);
    procedure Bit_RelatorioClick(Sender: tObject);
    procedure DBEdCodigoExit(Sender: tObject);
    procedure DBNavigator1Click(Sender: tObject; Button: TNavigateBtn);
    procedure EdtCEC_CodigoKeyPress(Sender: tObject; var Key: Char);
    procedure EdtCCT_codigoKeyPress(Sender: tObject; var Key: Char);
    procedure CbxTipoCtaChange(Sender: tObject);
    procedure MostraDados;
    procedure BloquearEditContas;
    procedure DesBloquearEditContas;
    procedure CbxTipoCtaClick(Sender: tObject);
    procedure dbgrdRateioDrawColumnCell(Sender: tObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnCentroClick(Sender: tObject);
    procedure SpeedButton2Click(Sender: tObject);
    procedure BitBtn1Click(Sender: tObject);
    procedure dbrgrpCCT_PERFIL_RATEIOChange(Sender: tObject);
    procedure dbrgrpCCT_PERFIL_RATEIOExit(Sender: tObject);
    procedure dbrgrpCCT_PERFIL_RATEIOClick(Sender: tObject);
    procedure EdtCCT_codigoChange(Sender: tObject);
    procedure CopiarConfiguraodeRateio1Click(Sender: tObject);
    procedure RemoverEsteCCusto1Click(Sender: tObject);
    procedure RemoverTodososCCusto1Click(Sender: tObject);
    procedure AdicionarTodososCCustos1Click(Sender: tObject);
    procedure VincularNovoCCusto1Click(Sender: tObject);
    procedure FormCreate(Sender: tObject);
    procedure cbPerfilSelect(Sender: tObject);
  private
    Botao_nivel  : Boolean;
    procedure BuscaCtaAnalise;
    procedure ExcluirNivel;
    function  AddNivel (Campo:String;Titulo:String) : String;
    procedure ChamaManutencaoIndice;
    procedure ChamaManutencaoColaborador;
    procedure LayoutRateio;
    Function GetCodPerfilRateio:string;
  public
    { Public declarations }
    procedure AtualizaNivel;
  end;

var
  FormContAnalise: TFormContAnalise;

implementation

uses Uteis, DataCad, DataCad1, Men0001, uPlanoContasCentroCusto,
  uCadastroPerfilRateio, Variants, uPlanoContasCentroCustoColaborador,
  uPlanoContasCentroCustoCopia, iniciodb, InsereRateioCustoForm, InsereRateioColaboradorForm, ufrmpreviewrb ;

{$R *.DFM}

procedure TFormContAnalise.RemoverEsteCCusto1Click(Sender: tObject);
var tcr: tFrmInsereRateioCusto;
begin
     {if nbTipoPerfil.ActivePage = 'Colaborador' then
        fld:=CdsColaboradorCentroCustoppc_registro
     else
        fld:=CdsPlanoCentroPCXP_REGISTRO;}

     tcr:=tFrmInsereRateioCusto.create(self);
     try
        tcr.Conta:=DataCadastros.CdsCtAnaliseCCT_CODIGO.AsString;
        tcr.Perfil:=cbPerfil.IdRetorno.ToInteger;
        tcr.Exclui( CdsColaboradorCentroCustoppc_registro.asstring, 'Excluir C.Custo para Rateio') ;
        if tcr.ModalResult=mrOk then
           CdsColaboradorCentroCusto.Refresh
     finally
          FreeAndNil(tcr);
     end;
end;

procedure TFormContAnalise.AdicionarTodososCCustos1Click(Sender: tObject);
begin
     if DataCadastros.CdsCtAnaliseCCT_STATUS.asstring='L' then
     begin
         if nbTipoPerfil.ActivePage = 'Colaborador' then
         begin
               dbInicio.ExecSql( 'INSERT INTO PCX0000_PERFIL_COLABORADOR (EMP_CODIGO, PCXPF_REGISTRO, PCX_CODIGO, PPC_QUANTIDADE, PPC_INDICE_REAL, CCT_0000) '+
                                 'SELECT EMP_CODIGO, '+CbPerfil.idRetorno+', PCX_CODIGO, 0, 0, '+qStr(PreenchezeroEsquerda(DataCadastros.CdsCtAnaliseCCT_CODIGO.AsString,3))+' FROM PCX0000 t1 '+
                                 'where t1.PCX_CODIGO NOT IN ( '+
                                 '      SELECT T2.PCX_CODIGO '+
                                 '      FROM PCX0000_PERFIL_COLABORADOR T2 '+
                                 '      WHERE T2.PCXPF_REGISTRO = '+CbPerfil.idRetorno+' AND CCT_0000 = '+qStr(PreenchezeroEsquerda(DataCadastros.CdsCtAnaliseCCT_CODIGO.AsString,3))+')');
               CdsColaboradorCentroCusto.Refresh;
         end
         Else
         begin
               dbInicio.ExecSql( 'INSERT INTO pcx0000_plano (EMP_CODIGO, PCXPF_REGISTRO, PCX_CODIGO, PCXP_INDICE, PCXP_INDICE_REAL, CCT_0000, PCXP_TIPO) '+
                                 'SELECT EMP_CODIGO, '+CbPerfil.idRetorno+', PCX_CODIGO, 0, 0, '+qStr(DataCadastros.CdsCtAnaliseCCT_CODIGO.AsString)+','+qStr('L')+' FROM PCX0000 t1 '+
                                 'where t1.PCX_CODIGO NOT IN ( '+
                                 '      SELECT T2.PCX_CODIGO '+
                                 '      FROM pcx0000_plano T2 '+
                                 '      WHERE T2.PCXPF_REGISTRO = '+CbPerfil.idRetorno+' AND CCT_0000 = '+qStr(PreenchezeroEsquerda(DataCadastros.CdsCtAnaliseCCT_CODIGO.AsString,3))+')');
               CdsPlanoCentro.Refresh;
         end;
     end
     Else
         GeraException('Somente Contas do Tipo LANÇAMENTO pode receber vinculos a rateios por C.Custo!');
end;

procedure TFormContAnalise.RemoverTodososCCusto1Click(Sender: tObject);
var fld: tField;
begin
     if nbTipoPerfil.ActivePage = 'Colaborador' then
        fld:=CdsColaboradorCentroCustoppc_registro
     else
        fld:=CdsPlanoCentroPCXP_REGISTRO;
     if not fld.IsNull then
        if messagedlg ('Confirma Exclusão de Todos os C.Custos sem Quantidades Informadas do Perfil Selecionado?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
           if nbTipoPerfil.ActivePage = 'Colaborador' then
           begin
                dbInicio.ExecSql ('delete FROM PCX0000_PERFIL_COLABORADOR where coalesce(ppc_quantidade,0) = 0 and PCXPF_REGISTRO = '+CbPerfil.idRetorno+' and CCT_0000 = '+QuotedStr(DataCadastros.CdsCtAnaliseCCT_CODIGO.AsString));
                CdsColaboradorCentroCusto.applyupdates(0);
                CdsColaboradorCentroCusto.Refresh;
           end
           Else
           begin
                dbInicio.ExecSql ('delete FROM PCX0000_Plano where coalesce(pcxp_indice,0) = 0 and PCXPF_REGISTRO = '+CbPerfil.idRetorno+' and CCT_0000 = '+QuotedStr(DataCadastros.CdsCtAnaliseCCT_CODIGO.AsString));
                CdsPlanoCentro.applyupdates(0);
                CdsPlanoCentro.Refresh;
           end;
end;

procedure TFormContAnalise.verificaEdicao;
begin
    screen.cursor :=crHourglass;
    if DataCadastros.CdsCtAnalise.State in [dsEdit,dsInsert] then
       begin
           if uteis.confirmacao ( 'Deseja salvar alterações ?') = idyes then
              begin
                  DataCadastros.CdsCtAnalise.ApplyUpdates(0);
                  Habilitabotoes;
              end
           else
              begin
                  DataCadastros.CdsCtAnalise.Cancel;
                  Habilitabotoes;
              end;
       end;
    screen.cursor := crDefault;
end;

procedure TFormContAnalise.VincularNovoCCusto1Click(Sender: tObject);
var flg: boolean;
///
   Procedure RateioColaborador ;
   var tcr: TfrmInsereRateioColaborador;
   begin
        tcr:=TfrmInsereRateioColaborador.create(self);
        try
           tcr.Conta:=DataCadastros.CdsCtAnaliseCCT_CODIGO.AsString;
           tcr.Perfil:=CbPerfil.idRetorno.ToInteger;
           flg := tcr.novo( 'Novo Rateio por Colaborador') ;
           if flg then
              CdsColaboradorCentroCusto.Refresh
        finally
               FreeAndNil(tcr);
        end;
   end;
///
   Procedure RateioIndice ;
   var tcr: tFrmInsereRateioCusto;
   begin
         tcr:=tFrmInsereRateioCusto.create(self);
         try
            tcr.Conta:=DataCadastros.CdsCtAnaliseCCT_CODIGO.AsString;
            tcr.Perfil:=CbPerfil.idRetorno.ToInteger;
            flg := tcr.novo( 'Novo Rateio por Indice') ;
            if flg then
               CdsColaboradorCentroCusto.Refresh
         finally
           FreeAndNil(tcr);
         end;
   end;
///
begin
     if DataCadastros.CdsCtAnaliseCCT_STATUS.asstring='L' then
     begin
          if CbPerfil.idRetorno<>'' then
          begin
               if DataCadastros.CDsCtAnaliseCCT_PERFIL_RATEIO.asstring='C' then
                  RateioColaborador
               Else
                  RateioIndice ;
          end
          Else
              GeraException('Selecione um PERFIL e Tente Novamente!!');
     end
     Else
         GeraException('Selecione uma CONTA DO TIPO LANÇAMENTO e Tente Novamente!!');
end;

procedure TFormContAnalise.HabilitaBotoes;
begin
    Bit_novo.Enabled            := True;
    Bit_Excluir.Enabled         := True;
    Bit_Sair.Visible            := True;
    Bit_Relatorio.Enabled       := True;
    Bit_Gravar.Enabled          := False;
    Bit_Cancelar.Visible        := False;
    DbNavigator1.Enabled        := True;
    DBGridContas.Enabled        := True;
    EdtCCT_codigo.Enabled       := True;
    EdtCCT_codigo.Color         := clWindow;
end;

procedure TFormContAnalise.DesabilitaBotoes;
begin
    Bit_novo.Enabled            := False;
    Bit_Excluir.Enabled         := False;
    Bit_Sair.Visible            := False;
    Bit_Relatorio.Enabled       := False;
    Bit_Gravar.Enabled          := True;
    Bit_Cancelar.Visible        := True;
    DbNavigator1.Enabled        := False;
    DBGridContas.Enabled        := False;
    EdtCCT_codigo.Enabled       := false;
    EdtCCT_codigo.Color         := clSilver;
end;

procedure TFormContAnalise.Bit_novoClick(Sender: tObject);
var
wCct_Nivel:string;
wMovimento:String;
begin
    try
      //
      DBGridContas.Enabled   := False;
      wMovimento    := DataCadastros.CdsCtAnaliseCCT_CONTA.AsString;
      wCct_Nivel    := AddNivel(DataCadastros.CdsCtAnaliseCCT_NIVEL.AsString,DataCadastros.CdsCtAnaliseCCT_DESCRI.AsString);
      //
      //[999]flag informa que estourou o nível
      If wCct_Nivel = '999' then
         begin
         Habilitabotoes;
         DBGridContas.Enabled   := True;
         DBGridContas.SetFocus;
         exit;
         end;
      Screen.Cursor := crHourglass;
      DataCadastros.CdsCtAnalise.Insert;
      EdtCCT_codigo.Text    := '000';
      CbxTipoCta.ItemIndex := 0;
      CbxTipoCta.Text      := '';
      DbeCct_Descri.SetFocus;
      // apresenta o novo nivel sendo incluido
      DbeCCT_Nivel.Text    := wCct_Nivel;
      {A sub-conta sendo criada dever ser do mesmo movimento da conta acima }
      if wMovimento = 'S' then
          begin
          DbRadMovimento.ItemIndex := 0;
          DataCadastros.CdsCtAnaliseCCT_CONTA.AsString := 'S';
          end
      else
          begin
          DbRadMovimento.ItemIndex := 1;
          DataCadastros.CdsCtAnaliseCCT_CONTA.AsString := 'E'
          end;
          // nao deixa alterar

      if Length(Trim(DbeCCT_Nivel.Text)) = 1 then
          DbRadMovimento.ReadOnly := False
       else
          DbRadMovimento.ReadOnly := True;
      //
      DesabilitaBotoes;
      screen.cursor        := crdefault;
    Except on E:EdatabaseError do
       uteis.erro  (Pchar('Erro ao inserir registro !'+e.Message));
    end;
end;

procedure TFormContAnalise.Bit_ExcluirClick(Sender: tObject);
begin
    if DataCadastros.CdsCtAnalise.IsEmpty Then   //evita exclussão de registro
       Begin                                      // em uma Tabela Vazia.
           messagebeep($ffff);
           uteis.aviso('Conta não está cadastrada !');
           exit;
       end;
    ExcluirNivel;
    MostraDados;
    DbGridContas.SetFocus;
end;

procedure TFormContAnalise.Bit_GravarClick(Sender: tObject);
begin
    //MENSAGEM PARA NÃO PODER GRAVAR UMA CONTA SEM CONTA E TIPO.
    if DBRadNivel.Value = '' then
    begin
           uteis.aviso('Você deve informar se o nivel é Título ou Lançamento !');
           DBRadNivel.SetFocus;
           screen.Cursor := crDefault;
           Exit;
    end;
    //salva o registro
    try
      Screen.Cursor := crHourGlass;
      DataCadastros.CdsCtAnaliseCCT_CODIGO.AsString := Uteis.StrZero(EdtCCT_codigo.Text,EdtCCT_codigo.MaxLength);
      DataCadastros.CdsCtAnaliseCCT_TIPO.AsString   := IIF(CbxTipoCta.ItemIndex = 1,'CF',
                                                       IIF(CbxTipoCta.ItemIndex = 2,'CV',
                                                       IIF(CbxTipoCta.ItemIndex = 3,'OE',
                                                       IIF(CbxTipoCta.ItemIndex = 4,'OS',
                                                       IIF(CbxTipoCta.ItemIndex = 5,'EV','')))));
      DataCadastros.CdsCtAnaliseEMP_CODIGO.AsString := dbInicio.Empresa.EMP_CODIGO;
      DataCadastros.CdsCtAnalise.Post;
      DataCadastros.CdsCtAnalise.ApplyUpdates(0);

      DataCadastros.CdsCtAnalise.refresh;
      DataCadastros.DsCtAnalise.AutoEdit := true;
      Screen.Cursor := crDefault;
      Habilitabotoes;
      DBGridContas.Enabled  := True;
      DBGridContas.SetFocus;
      EdtCCT_Codigo.Text    := DataCadastros.CdsCtAnaliseCCT_CODIGO.AsString;
      DbRadMovimento.ReadOnly := False;
    except on E:EdatabaseError do
       uteis.erro  (Pchar('Erro ao gravar registro !'+e.Message));
    end;
end;

procedure TFormContAnalise.Bit_CancelarClick(Sender: tObject);
begin
    Screen.Cursor := crHourGlass;
    DataCadastros.CdsCtAnalise.Cancel;
    if DataCadastros.CdsCtAnalise.IsEmpty Then   //Ao cancelar ultimo record da
       begin                                      //tabela deixa autoedit=true;
           DataCadastros.DsCtAnalise.AutoEdit := False;
           EdtCCT_codigo.Enabled := false;
       end
    else
       begin
           DataCadastros.DsCtAnalise.AutoEdit := True;
       end;
    Screen.Cursor := crDefault;
    HabilitaBotoes;
    MostraDados;
    DBGridContas.Enabled    := True;
    DBGridContas.SetFocus;
    EdtCCT_codigo.Text      := DataCadastros.CdsCtAnaliseCCT_CODIGO.AsString;
    DbRadMovimento.ReadOnly := False;
end;

procedure TFormContAnalise.Bit_SairClick(Sender: tObject);
begin
   close;
end;

procedure TFormContAnalise.FormCloseQuery(Sender: tObject; var CanClose: Boolean);
begin
     Verificaedicao;
     DataCadastros1.CdsCentroCusto.Close;
     SqlCdsContAnalise.Close;
     CdsPlanoCentro.Close;
     inherited;
end;

procedure TFormContAnalise.FormCreate(Sender: tObject);
begin
     inherited;
     SELF.WIDTH := 967;
     SELF.HEIGHT := 630;

     DataCadastros.CdsCtAnalise.Close;
     DataCadastros.CdsCtAnalise.CommandText := SQLDEF('PLANODECONTAS','SELECT * FROM CCT_0000','','CCT_NIVEL','');
     DataCadastros.CdsCtAnalise.Open;

     if DataCadastros.CdsCtAnalise.IsEmpty Then        //Evita alteração antes que se
         DataCadastros.DsCtAnalise.AutoEdit := False
     else
         MostraDados;

     DataCadastros1.CdsCentroCusto.Open;

     cbPerfil.idRetorno:=dbInicio.BuscaUmDadoSqlAsString('select Max(PCXPF_REGISTRO) from PCX0000_PERFIL');

     Habilitabotoes;

end;

procedure TFormContAnalise.TbCtAnaliseBeforeEdit(DataSet: TDataSet);
begin
    Desabilitabotoes;
end;

procedure TFormContAnalise.EdtCct_codigoExit(Sender: tObject);
begin
    if not DataCadastros.CdsCtAnalise.IsEmpty then
       begin
           EdtCCT_CODIGO.Text := Uteis.StrZero(EdtCCT_CODIGO.Text,EdtCCT_CODIGO.MaxLength);
           if DataCadastros.CdsCtAnalise.State in [Dsbrowse] then
              BuscaCtaAnalise;
       end;
end;

procedure TFormContAnalise.Bit_RelatorioClick(Sender: tObject);
begin
    Screen.Cursor := crHourGlass;
    Try
      SqlCdsContAnalise.Close;
      SqlCdsContAnalise.CommandText := SQLDEF('PLANODECONTAS','Select * from CCT_0000','','CCT_NIVEL','');
      SqlCdsContAnalise.Open;
      LBL_00_EMPRESA.Caption:=dbInicio.Empresa.Razao;
      LBL_00_LTITULO1.Caption:='LISTAGEM DO PLANO DE CONTAS';
      LBL_00_LTITULO2.Caption:='ORDEM DE CONTA';
      ppRPRelCentroCusto01.DeviceType:='Screen';
      RBuilderPreview(ppRPRelCentroCusto01);
    except on E:EdatabaseError do
       uteis.erro  (Pchar('Erro ao gerar o relatório !'+e.message));
    end;
    Screen.Cursor := crDefault;
end;

procedure TFormContAnalise.DBEdCodigoExit(Sender: tObject);
begin
    EdtCCT_codigo.Text := Uteis.StrZero(EdtCCT_codigo.Text, EdtCCT_codigo.Maxlength);
    if DataCadastros.CdsCtAnalise.State in [Dsbrowse] then
       BuscaCtaAnalise;
end;

procedure TFormContAnalise.DBNavigator1Click(Sender: tObject;
  Button: TNavigateBtn);
begin
    MostraDados;
    EdtCCT_codigo.Text := Uteis.StrZero(DataCadastros.CdsCtAnaliseCCT_CODIGO.AsString,EdtCCT_codigo.MaxLength);
end;

procedure TFormContAnalise.BuscaCtaAnalise;
begin
    if (ActiveControl.Name = 'Bit_Cancelar') or (ActiveControl.Name = 'Bit_Sair') then
       exit;
    EdtCCT_codigo.Text := Uteis.StrZero(EdtCCT_codigo.Text,EdtCCT_codigo.MaxLength);
    if DataCadastros.CdsCtAnalise.Locate('CCT_CODIGO',EdtCCT_codigo.Text,[])= False then
       begin
           Messagebeep($ffffffff);
           uteis.aviso('Código da Conta Analise não cadastrado!!!');
           MostraDados;
           EdtCCT_Codigo.SetFocus;
       end
end;

procedure TFormContAnalise.cbPerfilSelect(Sender: tObject);
begin
     AtualizaNivel;
end;

procedure TFormContAnalise.MostraDados;
begin
    EdtCCT_codigo.Text := Uteis.StrZero(DataCadastros.CdsCtAnaliseCCT_CODIGO.AsString,EdtCCT_codigo.MaxLength);
    CbxTipoCta.ItemIndex := IIF(DataCadastros.CdsCtAnaliseCCT_TIPO.AsString = ''  ,0,
                            IIF(DataCadastros.CdsCtAnaliseCCT_TIPO.AsString = 'CF',1,
                            IIF(DataCadastros.CdsCtAnaliseCCT_TIPO.AsString = 'CV',2,
                            IIF(DataCadastros.CdsCtAnaliseCCT_TIPO.AsString = 'OE',3,
                            IIF(DataCadastros.CdsCtAnaliseCCT_TIPO.AsString = 'OS',4,0)))));
end;

procedure TFormContAnalise.EdtCEC_CodigoKeyPress(Sender: tObject;
  var Key: Char);
begin
    if not (key in ['0'..'9',#8]) then
       begin
          //beep;
          Key := #0;
       end;
end;

procedure TFormContAnalise.EdtCCT_codigoKeyPress(Sender: tObject;
  var Key: Char);
begin
    if not (key in ['0'..'9',#8]) then
       begin
          //beep;
          Key := #0;
       end;
end;

procedure TFormContAnalise.CbxTipoCtaChange(Sender: tObject);
begin
    if DataCadastros.CdsCtAnalise.State in [dsBrowse] then
       DataCadastros.CdsCtAnalise.Edit;
end;

procedure TFormContAnalise.BloquearEditContas;
begin
  // bloquear alteracao das contas raízes 1 - Entradas e 2 - Saídas
  GroupCadastro.Enabled := False;
  DbeCct_Descri.Color     := $00D7D7D7;
  CbxTipoCta.Color        := $00D7D7D7;
end;

procedure TFormContAnalise.DesBloquearEditContas;
begin
  // desbloquear alteracao de contas.
  GroupCadastro.Enabled := True;
  DbeCct_Descri.Color     := clWindow;
  CbxTipoCta.Color        := clWindow;
end;


procedure TFormContAnalise.ExcluirNivel;
begin
    // Proibido exluir as contas raizes 1-Entradas , 2-Saídas
    if (Trim(DataCadastros.CdsCtAnaliseCCT_NIVEL.Value)='1')or(Trim(DataCadastros.CdsCtAnaliseCCT_NIVEL.Value)='2') then
       begin
           uteis.aviso('Contas raízes : 1 - Entradas e 2 - Saídas não podem ser excluídas');
           exit;
       end;
    Screen.Cursor := crHourGlass;
    try
      DataCadastros.sqlUpdate.close;
      DataCadastros.SqlUpdate.sql.text :='Select CCT_NIVEL from CCT_0000 where CCT_NIVEL LIKE '''+DbeCCT_Nivel.Text+'%''';
      DataCadastros.sqlUpdate.Open;
      if dbInicio.BuscaUmdadoSqlAsInteger('select count(*) from CCT_0000 where CCT_NIVEL LIKE '+qStr(DbeCCT_Nivel.Text+'%')) >1 then
         begin
             uteis.aviso('Esta Conta possui Sub-conta e não pode ser excluída !');
         end
      else
         begin
             Screen.Cursor := crHourGlass;
             if DataCadastros.CdsCtAnaliseCCT_CONTA.AsString = 'E' then
                begin
                    try
                      DataCadastros.sqlUpdate.Close;
                      DataCadastros.SqlUpdate.sql.text :=SQLDEF('PLANODECONTAS','Select FAT_CODIGO,CCT_CODIGO from FAT0000','where CCT_CODIGO = '''+DataCadastros.CdsCtAnaliseCCT_CODIGO.AsString+'''','CCT_CODIGO','');
                      DataCadastros.sqlUpdate.Open;
                      if DataCadastros.sqlUpdate.IsEmpty then
                         begin
                             if uteis.confirmacao ( 'Deseja excluir esta Conta ?')= Mryes then
                                begin
                                    Screen.cursor :=crHourglass;
                                    DataCadastros.CdsCtAnalise.Delete;
                                    DataCadastros.CdsCtAnalise.ApplyUpdates(0);
                                    DataCadastros.CdsCtAnalise.Refresh;
                                    screen.cursor := crDefault;
                                end;
                         end
                      else
                         begin
                             uteis.aviso('Existem lançamentos com esta conta no Contas à Receber e não pode ser excluída !');
                         end;
                    except on E:EDataBAseError do
                       uteis.erro  (pchar('Erro ao verificar lançamentos no Contas a Receber !'+e.message));
                    end;
                end
             else
                begin
                    try
                      DataCadastros.sqlUpdate.Close;
                      DataCadastros.SqlUpdate.sql.text :=SQLDEF('PLANODECONTAS','Select PAG_CODIGO,CCT_CODIGO from PAG0000','where CCT_CODIGO = '''+DataCadastros.CdsCtAnaliseCCT_CODIGO.AsString+'''','CCT_CODIGO','');
                      DataCadastros.sqlUpdate.Open;
                      if DataCadastros.sqlUpdate.IsEmpty then
                         begin
                             if uteis.confirmacao ( 'Deseja excluir esta Conta ?')= Mryes then
                                begin
                                    Screen.cursor :=crHourglass;
                                    DataCadastros.CdsCtAnalise.Delete;
                                    DataCadastros.CdsCtAnalise.ApplyUpdates(0);
                                    DataCadastros.CdsCtAnalise.Refresh;
                                    screen.cursor := crDefault;
                                end;
                         end
                      else
                         begin
                             uteis.aviso('Existem lançamentos desta conta no Contas à Pagar e não pode ser excluída !');
                         end;
                    except on E:EDataBAseError do
                       uteis.erro  (pchar('Erro ao verificar lançamentos no Contas a Pagar !'+e.message));
                    end;
                end;
             Screen.Cursor := crDefault;
         end;
    except on E:EDataBaseError do
         uteis.erro  (pchar('Erro ao Excluir um nivel !'+e.message));
    end;
    DataCadastros.sqlUpdate.Close;
    Screen.Cursor := crDefault;
end;

function TFormContAnalise.AddNivel (Campo:String;Titulo:String) : String;
Var
N1       : String[1];
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
    N1 := COPY(CAMPO,1,1);
    N2 := COPY(CAMPO,3,2);
    N3 := COPY(CAMPO,6,2);
    N4 := COPY(CAMPO,9,3);
    N5 := COPY(CAMPO,13,3);
    N6 := COPY(CAMPO,17,3);
    {Atribui no NovoCod a conta sem os pontos}
    NovoCod := N1+N2+N3+N4+N5+N6;
    {Faz a somatoria do numero da Conta}
    if (N1 <> '') then
       begin
           if uteis.confirmacao ( ('LEIA ESTA MENSAGEM CUIDADOSAMENTE !!!'+#13+#10+'Você esta prestes a inserir uma Sub-Conta ligada a Conta:'+#13+#10+CAMPO+' - '+Titulo+#13+#10+#13+#10+'Deseja confirmar a Inclusão?')) = idYes then
              begin
                  // nao pode incrementar mais que 6 niveis
                  if (N6 = '') then
                     begin
                        NovoCod := NovoCod + '1';
                        wInCodigo  := StrToCurr(NovoCod);
                        For i := 1 to 999 do
                           begin
                             {Monta o Numero da Conta}
                             if COPY(NOVOCOD,1,1)<> '' then
                                Retorna := COPY(NOVOCOD,1,1)+IIF(COPY(NOVOCOD,2,2)<>'','.','');
                             if COPY(NOVOCOD,2,2)<> '' then
                                Retorna := Retorna + Uteis.StrZero(COPY(NOVOCOD,2,2),2)+IIF(COPY(NOVOCOD,4,2)<>'','.','');
                             if COPY(NOVOCOD,4,2)<> '' then
                                Retorna := Retorna + Uteis.StrZero(COPY(NOVOCOD,4,2),2)+IIF(COPY(NOVOCOD,6,3)<>'','.','');
                             if COPY(NOVOCOD,6,3)<> '' then
                                Retorna := Retorna + Uteis.StrZero(COPY(NOVOCOD,6,3),3)+IIF(COPY(NOVOCOD,9,3)<>'','.','');
                             if COPY(NOVOCOD,9,3)<> '' then
                                Retorna := Retorna + Uteis.StrZero(COPY(NOVOCOD,9,3),3)+IIF(COPY(NOVOCOD,12,3)<>'','.','');
                             if COPY(NOVOCOD,12,3)<> '' then
                                Retorna := Retorna + Uteis.StrZero(COPY(NOVOCOD,12,3),3);
                             //
                             try
                               DataCadastros.sqlUpdate.Close;
                               DataCadastros.SqlUpdate.sql.text :=SqlDef('PLANODECONTAS','Select CCT_NIVEL from CCT_0000','where CCT_NIVEL='''+Retorna+'''','CCT_NIVEL','');
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
                                     N1 := COPY(Retorna,1,1);
                                     N2 := COPY(Retorna,3,2);
                                     N3 := COPY(Retorna,6,2);
                                     N4 := COPY(Retorna,9,3);
                                     N5 := COPY(Retorna,13,3);
                                     N6 := COPY(Retorna,17,3);
                                     {Atribui var Retorna sem os pontos}
                                     Retorna := N1+N2+N3+N4+N5+N6;
                                     //incremenar a conta porque já existe o codigo
                                     wInCodigo  := StrToCurr(Retorna) + 1;
                                     NovoCod    := CurrToStr(wInCodigo);
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
                   if uteis.confirmacao ( ('Conta é de 1º grau. Incrementa a conta selecionada: '+#13+#10+CAMPO+' - '+Titulo))= idYes then
                      begin
                         NovoCod := IntToStr(StrToInt(NovoCod) + 1);
                         For I := 1 to 9 do
                            begin
                            Retorna := NOVOCOD;
                            try
                               DataCadastros.sqlUpdate.Close;
                               DataCadastros.SqlUpdate.sql.text :=SqlDef('PLANODECONTAS','Select CCT_NIVEL from CCT_0000','where CCT_NIVEL='''+Retorna+'''','CCT_NIVEL','');
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
                                     NovoCod := IntToStr(StrToInt(NovoCod) + 1);
                                  end;
                             except on E:EDataBaseError do
                                 uteis.erro  (pchar('Erro ao gravar a nova conta !'+e.message));
                             end;

                            end; // end For

                      end;

                   end
                 else
                    begin
                    // nao confirmou a inclusao da sub-Conta
                    Retorna := '999';
                    Result  := Retorna;
                    exit;
                    end;

              end;
       end;

end;


procedure TFormContAnalise.CbxTipoCtaClick(Sender: tObject);
begin
    if DataCadastros.CdsCtAnalise.State = DsBrowse then
       DataCadastros.CdsCtAnalise.Edit;
end;

procedure TFormContAnalise.ChamaManutencaoIndice;
begin
   if (DataCadastros.CdsCtAnalise.IsEmpty) then
      uteis.aviso('Não existe Conta selecionada para realizar Manutenção dos índices')
   else
   if (DataCadastros.CdsCtAnaliseCCT_STATUS.AsString <> 'L') then
      uteis.aviso('Somente poderá ser selecionada para realizar Manutenção dos índices, contas do tipo Lançamento')
   else
   if (CbPerfil.idRetorno='') then
      uteis.aviso('Para vincular o Centro de Custo é necessário configurar um perfil de Rateio')
   else
   begin
         FrmPlanoContasCentroCusto := TFrmPlanoContasCentroCusto.Create(Application);
         try
            FrmPlanoContasCentroCusto.edtConta.Text := DataCadastros.CdsCtAnaliseCCT_NIVEL.AsString;
            FrmPlanoContasCentroCusto.iPerfilRateio := CbPerfil.idRetorno.ToInteger;
            FrmPlanoContasCentroCusto.edtDescricao.Text := DataCadastros.CdsCtAnaliseCCT_DESCRI.AsString;
            FrmPlanoContasCentroCusto.edtReduzido.Text := DataCadastros.CdsCtAnaliseCCT_CODIGO.AsString;
            FrmPlanoContasCentroCusto.ShowModal;
         finally
            FreeAndNil(FrmPlanoContasCentroCusto);
         end;
         CdsPlanoCentro.Refresh;
      end;

end;

Function TFormContAnalise.GetCodPerfilRateio:string;
begin
End;

procedure TFormContAnalise.AtualizaNivel;
begin
     grpRateio.Caption := 'Nenhuma Conta Selecionada';
     CdsPlanoCentro.Close;
     CdsColaboradorCentroCusto.Close;
     if (DataCadastros.CdsCtAnaliseCCT_CODIGO.AsString <> '') and (CbPerfil.idRetorno<>'') then
     begin
           grpRateio.Caption := DataCadastros.CdsCtAnaliseCCT_DESCRI.AsString;
           CdsPlanoCentro.CommandText :=         'SELECT T1.pcx_codigo,T2.pcx_nivel,T2.pcx_descri,T1.pcxp_indice, t1.pcxp_registro '+
                                                 'FROM pcx0000_plano T1 '+
                                                 '     join pcx0000 T2 ON (T2.pcx_codigo = T1.pcx_codigo) '+
                                                 'where T1.cct_0000 = '+qStr( DataCadastros.CdsCtAnaliseCCT_CODIGO.AsString)+
                                                 '      and t1.PCXPF_REGISTRO = '+CbPerfil.IdRetorno+
                                                 ConcatSe(' and t1.', dbInicio.ExclusivoSql('PLANODECONTAS') )+
                                                 ' Order by T2.pcx_nivel';
           CdsPlanoCentro.Open;
           CdsColaboradorCentroCusto.CommandText := 'SELECT t2.PCX_CODIGO, T2.PCX_NIVEL, T2.PCX_DESCRI, t1.PPC_QUANTIDADE_TOTAL_PERFIL, T1.PPC_QUANTIDADE, t1.ppc_registro '+
                                                    'FROM PCX0000_PERFIL_COLABORADOR T1 '+
                                                    '      JOIN PCX0000 T2 ON T2.PCX_CODIGO = T1.PCX_CODIGO AND T2.pcx_terminado = '+qstr('N')+
                                                    ' where t1.PCXPF_REGISTRO = '+CbPerfil.IdRetorno+
                                                    '       and CCT_0000 = '+QuotedStr(DataCadastros.CdsCtAnaliseCCT_CODIGO.AsString)+
                                                    ConcatSe(' and t1.', dbInicio.ExclusivoSql('PLANODECONTAS') )+
                                                    ' order by T2.pcx_nivel' ;
           CdsColaboradorCentroCusto.Open;
     end;
end;

procedure TFormContAnalise.dbgrdRateioDrawColumnCell(Sender: tObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
    if (not odd(CdsPlanoCentro.RecNo)) then
       if not (GdSelected in State) then
          begin
              dbgrdRateio.Canvas.Brush.Color := $00FFEFDF;
              dbgrdRateio.Canvas.FillRect(rect);
              dbgrdRateio.DefaultDrawDataCell(Rect,column.Field,state);
          end;
end;

procedure TFormContAnalise.btnCentroClick(Sender: tObject);
begin
     ChamaManutencaoIndice;     
end;

procedure TFormContAnalise.SpeedButton2Click(Sender: tObject);
begin
     FrmCadastroPerfilRateio := TFrmCadastroPerfilRateio.Create(Application);
     try
        FrmCadastroPerfilRateio.ShowModal;
     finally
            FreeAndNil(FrmCadastroPerfilRateio);
     end;
end;

procedure TFormContAnalise.ChamaManutencaoColaborador;
begin
     if (DataCadastros.CdsCtAnalise.IsEmpty) then
        uteis.aviso('Não existe Conta selecionada para realizar Manutenção dos Colaboradores')
     else
     if (CbPerfil.idRetorno='') then
        uteis.aviso('Para vincular o Colaborador por Centro de Custo é necessário selecionar um perfil de Rateio')
     else
     begin
         FrmPlanoContasCentroCustoColaborador := TFrmPlanoContasCentroCustoColaborador.Create(Application);
         try
            FrmPlanoContasCentroCustoColaborador.iPerfilRateio := CbPerfil.idRetorno.ToInteger;
            FrmPlanoContasCentroCustoColaborador.sCCT_0000 := DataCadastros.CdsCtAnaliseCCT_CODIGO.AsString;
            FrmPlanoContasCentroCustoColaborador.ShowModal;
         finally
            FreeAndNil( FrmPlanoContasCentroCustoColaborador);
         end;
         CdsColaboradorCentroCusto.Refresh;
   end;
end;

procedure TFormContAnalise.BitBtn1Click(Sender: tObject);
begin
   ChamaManutencaoColaborador;
end;

procedure TFormContAnalise.LayoutRateio;
begin
   if (not DataCadastros.CdsCtAnalise.IsEmpty) then
   begin
         if (DataCadastros.CdsCtAnaliseCCT_PERFIL_RATEIO.AsString = 'P') then //Percentual
            nbTipoPerfil.ActivePage := 'Percentual'
         else
         if (DataCadastros.CdsCtAnaliseCCT_PERFIL_RATEIO.AsString = 'C') then //Percentual
            nbTipoPerfil.ActivePage := 'Colaborador'
         else
            nbTipoPerfil.ActivePage := 'Manual';
         application.processmessages;
   end;
end;

procedure TFormContAnalise.dbrgrpCCT_PERFIL_RATEIOChange(Sender: tObject);
begin
   LayoutRateio;
end;

procedure TFormContAnalise.dbrgrpCCT_PERFIL_RATEIOExit(Sender: tObject);
begin
   LayoutRateio;
end;

procedure TFormContAnalise.dbrgrpCCT_PERFIL_RATEIOClick(Sender: tObject);
begin
   LayoutRateio;
end;

procedure TFormContAnalise.EdtCCT_codigoChange(Sender: tObject);
begin
   LayoutRateio;
end;

procedure TFormContAnalise.CopiarConfiguraodeRateio1Click(Sender: tObject);
begin
   if (not DataCadastros.CdsCtAnalise.IsEmpty) then
      begin
         if (DataCadastros.CdsCtAnaliseCCT_STATUS.AsString <> 'L') then
            begin
               uteis.aviso('Somente é possível copiar de contado do tipo Lançamento!');
            end
         else
            begin
               try
                  FrmPlanoContasCentroCustoCopia := TFrmPlanoContasCentroCustoCopia.Create(Application);
                  FrmPlanoContasCentroCustoCopia.sTipoConta := DataCadastros.CdsCtAnaliseCCT_CONTA.AsString;
                  FrmPlanoContasCentroCustoCopia.sRegistroConta := DataCadastros.CdsCtAnaliseCCT_CODIGO.AsString;
                  FrmPlanoContasCentroCustoCopia.sPerfilRegistro := CbPerfil.idRetorno;
                  FrmPlanoContasCentroCustoCopia.ShowModal;
               finally
                  FrmPlanoContasCentroCustoCopia.Destroy;
                  FrmPlanoContasCentroCustoCopia := nil;
               end;

               DataCadastros.CdsCtAnalise.Refresh;
            end;
      end;
end;

end.


SELECT T1.* FROM PCX0000_PERFIL T1

select PCXPF_REGISTRO,EMP_CODIGO,PERIoDO from PCX0000_PERFIL_VIEW where PCXPF_REGISTRO='-1'


