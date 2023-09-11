unit CCT0001;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, StdCtrls, Buttons, ExtCtrls, Mask, Db, DBTables, Rwfunc, BaseDbForm,
  Provider, SqlExpr,SqlClientDataSet, ppProd, ppClass, ppReport, ppComm, ppRelatv, ppDB,
  ppDBPipe, DBClient, DBLocal, DBLocalS, ppModule, raCodMod, ppCtrls,
  ppBands, ppVar, ppPrnabl, ppCache, Grids, DBGrids, ComCtrls, FMTBCd,
  ppDBBDE, SgDbSeachComboUnit, Vcl.Menus, ppParameter, ppDesignLayer, SimpleDS,
  Data.DBXFirebird, ACBrETQ, ACBrEnterTab, ACBrBase, ACBrCalculadora, RxToolEdit, RxCurrEdit;

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
    CdsPlanoCentro: TClientDataSet;
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
    CdsColaboradorCentroCusto: TClientDataSet;
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
    rgTipoRateio: TDBRadioGroup;
    grpPerfilRateio: TGroupBox;
    SpeedButton2: TSpeedButton;
    pmContas: TPopupMenu;
    CopiarConfiguraodeRateio1: TMenuItem;
    PopupMenu1: TPopupMenu;
    RemoverEsteCCusto1: TMenuItem;
    CdsColaboradorCentroCustoPPC_REGISTRO: TIntegerField;
    N1: TMenuItem;
    RemoverTodososCCusto1: TMenuItem;
    CdsPlanoCentroPCXP_REGISTRO: TIntegerField;
    VincularNovoCCusto1: TMenuItem;
    cbPerfil: TSgDbSearchCombo;
    qPerfil: TSQLQuery;
    pnlColaborador: TPanel;
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    pnlPercentual: TPanel;
    grpRateio: TGroupBox;
    dbgrdRateio: TDBGrid;
    pnGrRateio: TPanel;
    grpTotal: TGroupBox;
    qColaborador: TSQLQuery;
    dspColaborador: TDataSetProvider;
    qColaboradorPCX_NIVEL: TStringField;
    qColaboradorPCX_DESCRI: TStringField;
    qColaboradorPPC_QUANTIDADE: TFMTBCDField;
    qColaboradorPCX_CODIGO: TStringField;
    qColaboradorPPC_QUANTIDADE_TOTAL_PERFIL: TFMTBCDField;
    qColaboradorPPC_REGISTRO: TIntegerField;
    DsCtAnalise: TDataSource;
    CdsCtAnalise: TClientDataSet;
    CdsCtAnaliseCCT_CODIGO: TStringField;
    CdsCtAnaliseCCT_DESCRI: TStringField;
    CdsCtAnaliseCCT_PROVISAO: TFMTBCDField;
    CdsCtAnaliseCEC_CODIGO: TStringField;
    CdsCtAnaliseCCT_TIPO: TStringField;
    CdsCtAnaliseCCT_CONTA: TStringField;
    CdsCtAnaliseCCT_NIVEL: TStringField;
    CdsCtAnaliseCCT_MOV_CC: TStringField;
    CdsCtAnaliseCCT_STATUS: TStringField;
    CdsCtAnaliseEMP_CODIGO: TStringField;
    CdsCtAnaliseCCT_ANTIGO: TStringField;
    CdsCtAnaliseCCT_NOVO: TStringField;
    CdsCtAnaliseCCT_PERFIL_RATEIO: TStringField;
    DspCtAnalise: TDataSetProvider;
    SqlCtAnalise: TSQLQuery;
    SqlCtAnaliseCCT_CODIGO: TStringField;
    SqlCtAnaliseCCT_DESCRI: TStringField;
    SqlCtAnaliseCCT_PROVISAO: TFMTBCDField;
    SqlCtAnaliseCCT_TIPO: TStringField;
    SqlCtAnaliseCEC_CODIGO: TStringField;
    SqlCtAnaliseCCT_CONTA: TStringField;
    SqlCtAnaliseCCT_NIVEL: TStringField;
    SqlCtAnaliseCCT_STATUS: TStringField;
    SqlCtAnaliseEMP_CODIGO: TStringField;
    SqlCtAnaliseCCT_ANTIGO: TStringField;
    SqlCtAnaliseCCT_NOVO: TStringField;
    SqlCtAnaliseCCT_PERFIL_RATEIO: TStringField;
    EditarCCusto1: TMenuItem;
    PopupMenu2: TPopupMenu;
    MenuItem4: TMenuItem;
    MenuItem6: TMenuItem;
    N2: TMenuItem;
    InserirTodososCentrosdeCustos1: TMenuItem;
    N3: TMenuItem;
    InserirTodososCentrosdeCustos2: TMenuItem;
    qColaboradorPPC_TIPO: TStringField;
    CdsColaboradorCentroCustoPPC_TIPO: TStringField;
    qPlanoCentro: TSQLQuery;
    dspPlanoCentro: TDataSetProvider;
    CdsPlanoCentroPCXP_TIPO: TStringField;
    qPlanoCentroPCX_CODIGO: TStringField;
    qPlanoCentroPCX_NIVEL: TStringField;
    qPlanoCentroPCX_DESCRI: TStringField;
    qPlanoCentroPCXP_INDICE: TFMTBCDField;
    qPlanoCentroPCXP_REGISTRO: TIntegerField;
    qPlanoCentroPCXP_TIPO: TStringField;
    N4: TMenuItem;
    ExportarparaExcel1: TMenuItem;
    N5: TMenuItem;
    ExportarparaExcel2: TMenuItem;
    N6: TMenuItem;
    ExportarPlanoContasPExcel1: TMenuItem;
    N7: TMenuItem;
    InserirCCuto1: TMenuItem;
    EditarCCusto2: TMenuItem;
    CdsPercentes: TClientDataSet;
    CdsPercentesNivel: TIntegerField;
    CdsPercentessoma: TFloatField;
    CdsPercentesReferente: TStringField;
    CdsPercentesIndiceReal: TFloatField;
    qPlanoCentroPCXP_INDICE_REAL: TFMTBCDField;
    CdsPlanoCentroPCXP_INDICE_REAL: TFMTBCDField;
    qNatureza: TSQLQuery;
    SqlCtAnaliseNCC_CODIGO: TIntegerField;
    SqlCtAnaliseCCT_ANALITICO_SINTETICO: TStringField;
    SqlCtAnaliseCCT_CODIGO_CONTA: TStringField;
    CdsCtAnaliseNCC_CODIGO: TIntegerField;
    CdsCtAnaliseCCT_ANALITICO_SINTETICO: TStringField;
    CdsCtAnaliseCCT_CODIGO_CONTA: TStringField;
    GroupBox3: TGroupBox;
    GroupBox2: TGroupBox;
    SpeedButton1: TSpeedButton;
    SgDbSearchCombo1: TSgDbSearchCombo;
    DBRadioGroup1: TDBRadioGroup;
    GroupBox4: TGroupBox;
    DBEdit2: TDBEdit;

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
    procedure SpeedButton2Click(Sender: tObject);
    procedure rgTipoRateioChange(Sender: tObject);
    procedure EdtCCT_codigoChange(Sender: tObject);
    procedure CopiarConfiguraodeRateio1Click(Sender: tObject);
    procedure RemoverEsteCCusto1Click(Sender: tObject);
    procedure RemoverTodososCCusto1Click(Sender: tObject);
    procedure VincularNovoCCusto1Click(Sender: tObject);
    procedure FormCreate(Sender: tObject);
    procedure cbPerfilSelect(Sender: tObject);
    procedure PopupMenu1Popup(Sender: TObject);
    procedure CdsCtAnaliseAfterScroll(DataSet: TDataSet);
    procedure CdsCtAnaliseBeforeEdit(DataSet: TDataSet);
    procedure CdsCtAnaliseBeforePost(DataSet: TDataSet);
    procedure CdsCtAnaliseCalcFields(DataSet: TDataSet);
    procedure EditarCCusto1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure MenuItem6Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure InserirTodososCentrosdeCustos1Click(Sender: TObject);
    procedure InserirTodososCentrosdeCustos2Click(Sender: TObject);
    procedure CdsColaboradorCentroCustoBeforeInsert(DataSet: TDataSet);
    procedure CdsColaboradorCentroCustoAfterPost(DataSet: TDataSet);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbgrdRateioDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure CdsColaboradorCentroCustoBeforeEdit(DataSet: TDataSet);
    procedure ExportarparaExcel1Click(Sender: TObject);
    procedure ExportarparaExcel2Click(Sender: TObject);
    procedure ExportarPlanoContasPExcel1Click(Sender: TObject);
    procedure InserirCCuto1Click(Sender: TObject);
    procedure EditarCCusto2Click(Sender: TObject);
    procedure CdsPlanoCentroAfterPost(DataSet: TDataSet);
    procedure PopupMenu2Popup(Sender: TObject);
    procedure FormShow(Sender: TObject);

    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    Botao_nivel  : Boolean;
    fAlterouCustoMargem: Boolean;
    procedure BuscaCtaAnalise;
    procedure ExcluirNivel;
    function  AddNivel (Campo:String;Titulo:String) : String;


    procedure LayoutRateio;

    procedure AjustaTotaisColaboradores;
    procedure InsereNiveisPlanoCusto;
    procedure AjustaTotaisIndices;
    procedure RemoverCCustoGrupoIndiceVazio;
    Function validacentrocusto:boolean;

  public
        procedure AtualizaNivel;
        procedure BotoesAcesso;
  end;

var
  FormContAnalise: TFormContAnalise;

implementation

uses Uteis, uCadastroPerfilRateio,  uPlanoContasCentroCustoCopia, iniciodb, InsereRateioIndiceForm,
     InsereRateioCustoForm, InsereRateioColaboradorForm, ufrmpreviewrb , uCadastroNaturezaContaContabil;

{$R *.DFM}

procedure TFormContAnalise.RemoverEsteCCusto1Click(Sender: tObject);
begin
     if not CdsColaboradorCentroCustoPCX_NIVEL.IsNull then
     begin
          // REMOVE O CTO CUSTO E SUBNIVEIS DO MESMO CTO DE CUSTO CASO EXISTAM
          ExecSql ( 'delete FROM PCX0000_Perfil_colaborador '+
                    'where EMP_CODIGO = '+qStr(dbInicio.Empresa.emp_codigo)+  // empresa
                    '      AND CCT_0000 = '+qStr(CdsCtAnaliseCCT_CODIGO.AsString)+ // conta
                    '      AND PCXPF_REGISTRO = '+CbPerfil.idRetorno+ //perfil
                    '      and PPC_REGISTRO = '+QuotedStr(CdsColaboradorCentroCustoPPC_REGISTRO.AsString));
          ExecSql ( 'delete FROM PCX0000_Perfil_colaborador a '+
                    'where a.EMP_CODIGO = '+qStr(dbInicio.Empresa.emp_codigo)+  // empresa
                    '      AND a.CCT_0000 = '+qStr(CdsCtAnaliseCCT_CODIGO.AsString)+ // conta
                    '      AND a.PCXPF_REGISTRO = '+CbPerfil.idRetorno+ //perfil
                    '      and a.pcx_codigo in ( Select b.pcx_codigo from pcx0000 b where b.emp_codigo=a.emp_codigo and b.PCX_NIVEL like '+qStr( CdsColaboradorCentroCustoPCX_NIVEL.asstring+'.%' )+' )' );
          CdsColaboradorCentroCusto.Refresh;
          AjustaTotaisColaboradores;
          DesabilitaBotoes;
     end;

end;

procedure TFormContAnalise.AjustaTotaisColaboradores;
var Total, IndReal, IndRealT: Currency;
    lCod, Conta: string;
    Perfil: Integer;

    it: tBookMark;
begin

     CdsColaboradorCentroCusto.Refresh;

     Conta:=CdsCtAnaliseCCT_CODIGO.AsString;
     Perfil:=CbPerfil.idRetorno.ToInteger;

     it := CdsColaboradorCentroCusto.GetBookmark;
     CdsColaboradorCentroCusto.DisableControls;
     try
         // totalizar grupos de contas
         CdsColaboradorCentroCusto.First;
         while not CdsColaboradorCentroCusto.eof do
         begin
              if CdsColaboradorCentroCustoPPC_TIPO.AsString='T' then
              begin
                   Total := BuscaUmDadoSqlAsInteger( 'select sum( PF.ppc_quantidade ) '+
                                                     'from PCX0000_PERFIL_COLABORADOR PF, PCX0000 CT '+
                                                     'where PF.emp_codigo='+qStr(dbInicio.Empresa.EMP_CODIGO)+
                                                     '      and PF.cct_0000='+qStr(conta)+
                                                     '      and PF.pcxpf_registro='+qStr(Perfil.ToString)+
                                                     '      and PF.PPC_TIPO='+qStr('L')+
                                                     '      and CT.PCX_CODIGO=PF.PCX_CODIGO'+
                                                     '      and CT.PCX_NIVEL like '+qStr(CdsColaboradorCentroCustoPCX_NIVEL.AsString+'.%') );
                   ExecSql( 'Update PCX0000_PERFIL_COLABORADOR SET ppc_quantidade='+FloatToSql( Total )+' where ppc_registro = '+CdsColaboradorCentroCustoppc_registro.AsString );
              end;
              CdsColaboradorCentroCusto.Next;
         end;
     finally
             if it<>Nil then
                if CdsColaboradorCentroCusto.BookmarkValid(it) then
                   CdsColaboradorCentroCusto.GotoBookmark(it);
             CdsColaboradorCentroCusto.EnableControls;

     end;

      Total := BuscaUmDadoSqlAsInteger('select sum( ppc_quantidade ) from PCX0000_PERFIL_COLABORADOR where PPC_TIPO='+qStr('L')+' and emp_codigo='+qStr(dbInicio.Empresa.EMP_CODIGO)+' and cct_0000='+qStr(conta)+' and pcxpf_registro='+Perfil.ToString);
      ExecSql( 'Update PCX0000_PERFIL_COLABORADOR set PPC_QUANTIDADE_TOTAL_PERFIL = '+FloatToSql( Total )+' where emp_codigo='+qStr(dbInicio.Empresa.EMP_CODIGO)+' and cct_0000='+qStr(conta)+' and pcxpf_registro='+Perfil.ToString);

      IndReal:=0;
      IndRealT:=0;

      //1 - Total Geral atribuido a todos os registros conta/perfil
      qAux.close;
      qAux.sql.Clear;
      qAux.sql.Text := 'Select ppc_registro, ppc_quantidade from PCX0000_PERFIL_COLABORADOR where emp_codigo='+qStr(dbInicio.Empresa.EMP_CODIGO)+' and cct_0000='+qStr(conta)+' and pcxpf_registro='+Perfil.ToString;
      qAux.open;
      while not qAux.eof do
      begin
         lCod :=qAux.fields[0].asstring;
         if qAux.fields[1].AsInteger>0 then
         begin
              IndReal := Uteis.RoundTo( (qAux.fields[1].AsInteger / Total) * 100 , -4 );
              IndRealT := IndRealT + IndReal;
              ExecSql('Update PCX0000_PERFIL_COLABORADOR set PPC_INDICE_REAL = '+FloatToSql( iNDrEAL )+' where ppc_registro='+qStr(lCod) );
         end
         Else
             ExecSql('Update PCX0000_PERFIL_COLABORADOR set PPC_INDICE_REAL = 0 where ppc_registro='+qStr(lCod) );
         qAux.next;
      end;
      if (IndRealT<100) and (Total>0)then
      begin
         IndRealT := 100 - IndRealT;
         ExecSql('Update PCX0000_PERFIL_COLABORADOR set PPC_INDICE_REAL = PPC_INDICE_REAL+'+FloatToSql( iNDrEAL )+' where emp_codigo='+qStr(dbInicio.Empresa.EMP_CODIGO)+' and ppc_registro='+qStr(lCod));
      end;
      qAux.close;

      cdsColaboradorCentroCusto.Refresh;

end;

procedure TFormContAnalise.RemoverTodososCCusto1Click(Sender: tObject);
begin
     if not CdsColaboradorCentroCustoppc_registro.IsNull then
     begin
          // colaborador - remove todos com qtd zero
          ExecSql ( 'delete FROM PCX0000_PERFIL_COLABORADOR '+
                    'where EMP_CODIGO = '+qStr(dbInicio.Empresa.emp_codigo)+  // empresa
                    '      AND CCT_0000 = '+qStr(CdsCtAnaliseCCT_CODIGO.AsString)+ // conta
                    '      AND PCXPF_REGISTRO = '+CbPerfil.idRetorno+ //perfil
                    '      AND coalesce(ppc_quantidade,0)=0' );
          CdsColaboradorCentroCusto.Refresh;
          DesabilitaBotoes;
     end

end;

procedure TFormContAnalise.verificaEdicao;
begin
     if CdsCtAnalise.State in [dsEdit,dsInsert] then
     begin
          if uteis.confirmacao ( 'Deseja salvar alterações ?') = idyes then
             Bit_GravarClick(nil)
          else
          begin
               CdsCtAnalise.Cancel;
               RollBackTransaction;
          end;
          Habilitabotoes;
     end;
end;

procedure TFormContAnalise.VincularNovoCCusto1Click(Sender: tObject);
var tcr: TfrmInsereRateioColaborador;
begin
     if CdsCtAnaliseCCT_STATUS.asstring='L' then
     begin
          if CbPerfil.idRetorno<>'' then
          begin
              tcr:=TfrmInsereRateioColaborador.create(self);
              try
                 tcr.SqlConnection:=dbConn;
                 tcr.Conta:=CdsCtAnaliseCCT_CODIGO.AsString;
                 tcr.Perfil:=CbPerfil.idRetorno.ToInteger;
                 tcr.novo( 'Novo Rateio por Colaborador') ;
                 AjustaTotaisColaboradores;
                 DesabilitaBotoes;
              finally
                     FreeAndNil(tcr);
              end;
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
    if Assigned(FormContAnalise) then
      BotoesAcesso;
end;

procedure TFormContAnalise.InserirCCuto1Click(Sender: TObject);
var tcr: TfrmInsereRateioIndice;
begin
     if CdsCtAnaliseCCT_STATUS.asstring='L' then
     begin
          if CbPerfil.idRetorno<>'' then
          begin
              tcr:=TfrmInsereRateioIndice.create(self);
              try
                 tcr.SqlConnection:=dbConn;
                 tcr.Conta:=CdsCtAnaliseCCT_CODIGO.AsString;
                 tcr.Perfil:=CbPerfil.idRetorno.ToInteger;
                 tcr.novo( 'Novo Rateio por Indice') ;
                 AjustaTotaisIndices;
                 DesabilitaBotoes;
                 fAlterouCustoMargem:=True;
              finally
                     FreeAndNil(tcr);
              end;
          end
          Else
              GeraException('Selecione um PERFIL e Tente Novamente!!');
     end
     Else
         GeraException('Selecione uma CONTA DO TIPO LANÇAMENTO e Tente Novamente!!');
end;

procedure TFormContAnalise.AjustaTotaisIndices;
var Total, IndReal, IndRealT: Currency;
    lCod, Conta: string;
    Perfil: Integer;
    it: tBookMark;
begin
     CdsPlanoCentro.Refresh;
end;

procedure TFormContAnalise.InserirTodososCentrosdeCustos1Click(Sender: TObject);
begin
     inherited;
     // Colaborador
     if CdsCtAnaliseCCT_STATUS.asstring='L' then
     begin
         ExecSql( 'INSERT INTO PCX0000_PERFIL_COLABORADOR (EMP_CODIGO, PCXPF_REGISTRO, PCX_CODIGO, PPC_QUANTIDADE, PPC_INDICE_REAL, CCT_0000, PPC_TIPO) '+
                  'SELECT '+qStr(dbInicio.Empresa.Emp_Codigo)+', '+CbPerfil.idRetorno+', PCX_CODIGO, 0, 0, '+qStr(CdsCtAnaliseCCT_CODIGO.AsString)+', PCX_TIPO FROM PCX0000 t1 '+
                  'where t1.PCX_CODIGO NOT IN ( '+
                  '      SELECT T2.PCX_CODIGO '+
                  '      FROM PCX0000_PERFIL_COLABORADOR T2 '+
                  '      WHERE T2.PCXPF_REGISTRO = '+CbPerfil.idRetorno+' AND CCT_0000 = '+qStr(CdsCtAnaliseCCT_CODIGO.AsString)+')');
         CdsColaboradorCentroCusto.Refresh;
         DesabilitaBotoes;
     end
     Else
         GeraException('Somente Contas do Tipo LANÇAMENTO pode receber vinculos a rateios por C.Custo!');
end;

procedure TFormContAnalise.InserirTodososCentrosdeCustos2Click(Sender: TObject);
begin
     inherited;
     // Indices
     if CdsCtAnaliseCCT_STATUS.asstring='L' then
     begin
         ExecSql( 'INSERT INTO pcx0000_plano (EMP_CODIGO, PCXPF_REGISTRO, PCX_CODIGO, PCXP_INDICE, PCXP_INDICE_REAL, CCT_0000, PCXP_TIPO) '+
                  'SELECT '+qStr(dbInicio.Empresa.Emp_Codigo)+', '+CbPerfil.idRetorno+', PCNU_CODIGO, 0, 0, '+qStr(CdsCtAnaliseCCT_CODIGO.AsString)+', PCX_TIPO FROM PCX0000 t1 '+
                  'where t1.PCX_CODIGO NOT IN ( '+
                  '      SELECT T2.PCX_CODIGO '+
                  '      FROM pcx0000_plano T2 '+
                  '      WHERE T2.PCXPF_REGISTRO = '+CbPerfil.idRetorno+' AND CCT_0000 = '+qStr(PreenchezeroEsquerda(CdsCtAnaliseCCT_CODIGO.AsString,3))+')');
         CdsPlanoCentro.Refresh;
         DesabilitaBotoes;
         fAlterouCustoMargem:=True;
     end
     Else
         GeraException('Somente Contas do Tipo LANÇAMENTO pode receber vinculos a rateios por C.Custo!');
end;

procedure TFormContAnalise.DesabilitaBotoes;
begin
    BotoesAcesso;
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
var wCct_Nivel:string;
    wMovimento:String;
begin

      DBGridContas.Enabled   := False;
      wMovimento    := CdsCtAnaliseCCT_CONTA.AsString;
      wCct_Nivel    := AddNivel(CdsCtAnaliseCCT_NIVEL.AsString,CdsCtAnaliseCCT_DESCRI.AsString);

      //[999]flag informa que estourou o nível
      If wCct_Nivel = '999' then
      begin
           Habilitabotoes;
           DBGridContas.Enabled   := True;
           uteis.HabilitaIncluir('CadastrosPlano de Contas',DBInicio.Usuario.CODIGO,FormContAnalise);
           DBGridContas.SetFocus;
           exit;
      end;

      CdsCtAnalise.Insert;
      EdtCCT_codigo.Clear;
      CbxTipoCta.ItemIndex := 0;
      CbxTipoCta.Text      := '';
      uteis.HabilitaIncluir('CadastrosPlano de Contas',DBInicio.Usuario.CODIGO,FormContAnalise);
      DbeCct_Descri.SetFocus;
      // apresenta o novo nivel sendo incluido
      DbeCCT_Nivel.Text    := wCct_Nivel;
      {A sub-conta sendo criada dever ser do mesmo movimento da conta acima }
      if wMovimento = 'S' then
      begin
          DbRadMovimento.ItemIndex := 0;
          CdsCtAnaliseCCT_CONTA.AsString := 'S';
      end
      else
      begin
          DbRadMovimento.ItemIndex := 1;
          CdsCtAnaliseCCT_CONTA.AsString := 'E'
      end;
          // nao deixa alterar

      if Length(Trim(DbeCCT_Nivel.Text)) = 1 then
          DbRadMovimento.ReadOnly := False
      else
          DbRadMovimento.ReadOnly := True;

      DesabilitaBotoes;

end;

procedure TFormContAnalise.Bit_ExcluirClick(Sender: tObject);
begin
     if not CdsCtAnalise.IsEmpty Then   //evita exclusão de registro
     Begin
          ExcluirNivel;
          MostraDados;
     End;
end;

procedure TFormContAnalise.Bit_GravarClick(Sender: tObject);
begin
    //MENSAGEM PARA NÃO PODER GRAVAR UMA CONTA SEM CONTA E TIPO.
    if DBRadNivel.Value = '' then
    begin
           uteis.aviso('Você deve informar se o nivel é Título ou Lançamento !');
           DBRadNivel.SetFocus;
           Exit;
    end;
    //salva o registro
    if rgTipoRateio.ITEMINDEX=0 then
       if fAlterouCustoMargem then
          if not validacentrocusto then
             exit;

    fAlterouCustoMargem:=False;

    if CdsCtAnalise.State<>dsBrowse then
    begin
         if (CdsCtAnaliseCCT_CODIGO.isnull) then
            CdsCtAnaliseCCT_CODIGO.asstring := StrZero( IntToStr(BuscaUmDadoSqlAsInteger('Select Max (cct_codigo) from cct_0000')+1) , 3 )
         Else
            CdsCtAnaliseCCT_CODIGO.AsString := StrZero( EdtCCT_codigo.Text , 3 );
         {
          0 - Em Branco
          1 - CUSTOS FIXOS
          2 - CUSTOS VARIAVEIS
          3 - OUTRAS ENTRADAS
          4 - OUTRAS SAIDAS
          5 - ENTRADA POR VENDAS
          6 - INVESTIMENTO
         }
         //CdsCtAnaliseCCT_TIPO.AsString   := IIF(CbxTipoCta.ItemIndex = 1,'CF',
         //                                   IIF(CbxTipoCta.ItemIndex = 2,'CV',
         //                                   IIF(CbxTipoCta.ItemIndex = 3,'OE',
         //                                  IIF(CbxTipoCta.ItemIndex = 4,'OS',
         //                                   IIF(CbxTipoCta.ItemIndex = 5,'EV','')))));

         case CbxTipoCta.ItemIndex of
            0: CdsCtAnaliseCCT_TIPO.AsString := '';
            1: CdsCtAnaliseCCT_TIPO.AsString := 'CF';
            2: CdsCtAnaliseCCT_TIPO.AsString := 'CV';
            3: CdsCtAnaliseCCT_TIPO.AsString := 'OE';
            4: CdsCtAnaliseCCT_TIPO.AsString := 'OS';
            5: CdsCtAnaliseCCT_TIPO.AsString := 'EV';
            6: CdsCtAnaliseCCT_TIPO.AsString := 'IN';
         end;
         CdsCtAnaliseEMP_CODIGO.AsString := dbInicio.Empresa.EMP_CODIGO;
         CdsCtAnalise.Post;
         CdsCtAnalise.ApplyUpdates(0);

         CdsCtAnalise.refresh;
         DsCtAnalise.AutoEdit := true;

         DBGridContas.Enabled  := True;
         DBGridContas.SetFocus;
         EdtCCT_Codigo.Text    := CdsCtAnaliseCCT_CODIGO.AsString;
         DbRadMovimento.ReadOnly := False;
    end;

    CommitTransaction;
    Habilitabotoes;

end;

Function TFormContAnalise.validacentrocusto:boolean;
var lista:TStringList;
    rIndiceAnterior:Double;
    sReferencia,
    sTipoLancamento, sql:String;
    I, qtdeNivel, posicaoUltimoPonto:Integer;
    it : tBookMark ;
    cdsClone: tCustomClientDataSet;
///
   Procedure ValidaIndices;
   var NivelBasico: Currency ;
   begin
        NivelBasico := uteis.RoundTo( BuscaUmDadoSqlAsCurrency ( 'select sum( t1.pcxp_indice ) '+
                                                                 'from PCX0000_PLANO T1 '+
                                                                 '     join PCX0000 T2 on T2.PCX_CODIGO = T1.PCX_CODIGO '+
                                                               //  'where T2.PCX_TIPO = '+qStr('T')+
                                                                 ' WHERE T1.EMP_CODIGO = '+qStr(dbInicio.empresa.emp_codigo)+
                                                                 '      and T1.CCT_0000 = '+qStr( CdsCtAnaliseCCT_CODIGO.asstring )+
                                                                 '      and T1.PCXPF_REGISTRO = '+qStr( cbPerfil.idRetorno )+
                                                                 '      and t2.nivel_pai = '+qStr('') ), -4 );

        OpenAux( 'select t2.pcx_nivel, t1.pcxp_indice '+
                 'from PCX0000_PLANO T1 '+
                 '     join PCX0000 T2 on T2.PCX_CODIGO = T1.PCX_CODIGO '+
            //     'where T2.PCX_TIPO = '+qStr('T')+
                 ' WHERE T1.EMP_CODIGO = '+qStr(dbInicio.empresa.emp_codigo)+
                 '      and T1.CCT_0000 = '+qStr( CdsCtAnaliseCCT_CODIGO.asstring )+
                 '      and T1.PCXPF_REGISTRO = '+qStr( cbPerfil.idRetorno )+
                 'Order By t2.pcx_nivel ' );

        while Not qAux.Eof do
        begin
             if NivelBasico <> 100 then
                lista.add(qAux.Fields[0].asString+' : '+FormatFloat ( '##0.0000 %', qAux.Fields[1].asCurrency ));
             qAux.Next;
        end;
        qAux.Close;


        if NivelBasico <> 100 then
           lista.add(#13+'Geral: '+FormatFloat ( '##0.0000 %', NivelBasico ) );
   end;
///
begin

     if CdsPlanoCentro.STATE<>dsBrowse then
        CdsPlanoCentro.POST;
     CdsPlanoCentro.APPLYUPDATES(0);

     Result := True;
     if NOT CdsPlanoCentro.ISEMPTY then
     BEGIN
          CdsPlanoCentro.DisableControls;
          it := CdsPlanoCentro.GetBookMark ;
          result := True ;

          try

             lista := TStringList.Create;

             try
                ValidaIndices;
                if lista.Count>0 then
                begin
                     uteis.aviso(PChar('Os percentuais informados não fecham em 100%, verifique!'+#13#10+#13#10+lista.Text));
                     result := False;
                     exit;
                end;
             Finally
                  lista.Clear;
                  FreeAndNil(lista);
             end;

             // remove calculo anterior
             sql := SqlDef('PLANODECONTAS','DELETE FROM PCX0000_PLANO T1','where T1.cct_0000 = '+qStr(CdsCtAnaliseCCT_CODIGO.asstring)+' and t1.PCXPF_REGISTRO = '+qStr(cbPerfil.idretorno),'','T1.') ;
             ExecSql( sql);

             // recalcula indices
             CdsClone := tClientDataSet.Create(self);
             CdsClone.CloneCursor( CdsPlanoCentro, false, false ) ;

             try

                CdsPlanoCentro.First;
                while (not CdsPlanoCentro.Eof) do
                begin
                     rIndiceAnterior := 0;
                     sReferencia := '';
                     qtdeNivel := 0;
                     posicaoUltimoPonto := 0;
                     sTipoLancamento := 'L';

                     if (CdsClone.Locate('pcx_nivel',CdsPlanoCentropcx_nivel.AsString+'.',[loPartialKey])) then
                        sTipoLancamento := 'T';

                     for I := 1 to Length(CdsPlanoCentropcx_nivel.AsString) do
                     begin
                         if (CdsPlanoCentropcx_nivel.AsString[I] = '.') then
                         begin
                              Inc(qtdeNivel);
                              posicaoUltimoPonto := I;
                         end;
                     end;

                     //Referencia
                     sReferencia := Copy(CdsPlanoCentropcx_nivel.AsString,1,posicaoUltimoPonto-1);
                     //Localiza Totalizador
                     if (CdsClone.Locate('pcx_nivel',sReferencia,[])) then
                     begin
                          if (CdsClone.FieldByName('pcxp_indice_real').AsFloat > 0) then
                             rIndiceAnterior := CdsClone.FieldByName('pcxp_indice_real').AsFloat;
                     end
                     else
                        rIndiceAnterior := 0;

                     if (CdsPlanoCentropcxp_Indice.AsFloat > 0) then
                       if (rIndiceAnterior > 0) then
                          rIndiceAnterior := ( CdsPlanoCentropcxp_Indice.AsFloat /100 ) * (rIndiceAnterior)
                       else
                          rIndiceAnterior := ( CdsPlanoCentropcxp_Indice.AsFloat /100 );



                     rIndiceAnterior := ( CdsPlanoCentropcxp_Indice.AsFloat /100 );


                     if CdsPlanoCentropcxp_Indice.ASfLOAT<>0 then
                     begin
                        sql := 'INSERT INTO PCX0000_PLANO ( EMP_CODIGO, CCT_0000, PCX_CODIGO,PCXP_INDICE,PCXP_INDICE_REAL, PCXP_TIPO,PCXPF_REGISTRO) '+
                                'VALUES ('+qStr( dbInicio.Empresa.EMP_CODIGO)+', '+
                                '        '+qStr( CdsCtAnaliseCCT_CODIGO.asstring )+', '+
                                '        '+qStr( CdsPlanoCentropcx_codigo.AsString)+', '+
                                '        '+FloatToSql( CdsPlanoCentropcxp_Indice.ASfLOAT )+', '+
                                '        '+FloatToSql( rIndiceAnterior )+', '+
                                '        '+qStr ( sTipoLancamento )+', '+
                                '        '+qStr(cbPerfil.idRetorno)+') ' ;
                        ExecSql( sql );
                     end;
                     CdsPlanoCentro.Next;
                end;
             Finally
                    CdsClone.Close;
                    FreeAndNil(CdsClone);
             end;

          Finally
                 if it <> Nil then
                    if CdsPlanoCentro.BookMarkValid(it) then
                       CdsPlanoCentro.GotoBookMark(it);
                 CdsPlanoCentro.EnableControls;
          end;
     END;
end;

procedure TFormContAnalise.Bit_CancelarClick(Sender: tObject);
begin

    RollBackTransaction;

    CdsCtAnalise.Cancel;
    if CdsCtAnalise.IsEmpty Then   //Ao cancelar ultimo record da
    begin
         DsCtAnalise.AutoEdit := False;
         EdtCCT_codigo.Enabled := false;
    end
    else
        DsCtAnalise.AutoEdit := True;

    HabilitaBotoes;
    MostraDados;
    DBGridContas.Enabled    := True;
    DBGridContas.SetFocus;
    EdtCCT_codigo.Text      := CdsCtAnaliseCCT_CODIGO.AsString;
    DbRadMovimento.ReadOnly := False;
end;

procedure TFormContAnalise.Bit_SairClick(Sender: tObject);
begin
   close;
end;

procedure TFormContAnalise.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TFormContAnalise.FormCloseQuery(Sender: tObject; var CanClose: Boolean);
begin
     Verificaedicao;

     SqlCdsContAnalise.Close;
     CdsPlanoCentro.Close;
     inherited;
end;

procedure TFormContAnalise.FormCreate(Sender: tObject);
begin

     inherited;

     SELF.WIDTH := 967;
     SELF.HEIGHT := 640;
     fAlterouCustoMargem:=False;
     CdsCtAnalise.Close;
     CdsCtAnalise.CommandText := SQLDEF('PLANODECONTAS','SELECT * FROM CCT_0000','','CCT_NIVEL','');
     CdsCtAnalise.Open;

     if CdsCtAnalise.IsEmpty Then        //Evita alteração antes que se
         DsCtAnalise.AutoEdit := False
     else
         MostraDados;

     cbPerfil.idRetorno:=BuscaUmDadoSqlAsString('select Max(PCXPF_REGISTRO) from PCX0000_PERFIL');

     Habilitabotoes;

     pnlColaborador.parent := pnGrRateio;
     pnlColaborador.align := alClient;
     pnlPercentual.parent := pnGrRateio;
     pnlPercentual.align := alClient;


end;

procedure TFormContAnalise.FormDestroy(Sender: TObject);
begin
  inherited;
  FormContAnalise := Nil;
end;

procedure TFormContAnalise.FormShow(Sender: TObject);
begin
  inherited;
  DbeCct_Descri.CharCase := ecNormal;
  BloquearEditContas;
end;

procedure TFormContAnalise.TbCtAnaliseBeforeEdit(DataSet: TDataSet);
begin
    Desabilitabotoes;
end;

procedure TFormContAnalise.EdtCct_codigoExit(Sender: tObject);
begin
     if not CdsCtAnalise.IsEmpty then
     begin
           EdtCCT_CODIGO.Text := Uteis.StrZero(EdtCCT_CODIGO.Text,EdtCCT_CODIGO.MaxLength);
           if CdsCtAnalise.State in [Dsbrowse] then
              BuscaCtaAnalise;
     end;
end;

procedure TFormContAnalise.Bit_RelatorioClick(Sender: tObject);
begin

      SqlCdsContAnalise.Close;
      SqlCdsContAnalise.CommandText := SQLDEF('PLANODECONTAS','Select * from CCT_0000','','CCT_NIVEL','');
      SqlCdsContAnalise.Open;
      LBL_00_EMPRESA.Caption:=dbInicio.Empresa.Razao;
      LBL_00_LTITULO1.Caption:='LISTAGEM DO PLANO DE CONTAS';
      LBL_00_LTITULO2.Caption:='ORDEM DE CONTA';
      ppRPRelCentroCusto01.DeviceType:='Screen';
      RBuilderPreview(ppRPRelCentroCusto01);

end;

procedure TFormContAnalise.DBEdCodigoExit(Sender: tObject);
begin
    EdtCCT_codigo.Text := Uteis.StrZero(EdtCCT_codigo.Text, EdtCCT_codigo.Maxlength);
    if CdsCtAnalise.State in [Dsbrowse] then
       BuscaCtaAnalise;
end;

procedure TFormContAnalise.dbgrdRateioDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
     inherited;
     if CdsPlanoCentroPCXP_TIPO.AsString='T' then
        dbgrdRateio.Canvas.Font.Style := [fsBold]
     Else
        dbgrdRateio.Canvas.Font.Style := [];
     dbgrdRateio.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure TFormContAnalise.DBGrid1DblClick(Sender: TObject);
begin
     inherited;
     EditarCCusto1Click(Nil);
end;

procedure TFormContAnalise.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
     inherited;
     if CdsColaboradorCentroCustoPPC_TIPO.AsString='T' then
        DBGrid1.Canvas.Font.Style := [fsBold]
     Else
        DBGrid1.Canvas.Font.Style := [];
     DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure TFormContAnalise.DBNavigator1Click(Sender: tObject;
  Button: TNavigateBtn);
begin
    MostraDados;
    EdtCCT_codigo.Text := Uteis.StrZero(CdsCtAnaliseCCT_CODIGO.AsString,EdtCCT_codigo.MaxLength);
end;

procedure TFormContAnalise.BuscaCtaAnalise;
begin
    if (ActiveControl.Name = 'Bit_Cancelar') or (ActiveControl.Name = 'Bit_Sair') then
       exit;
    EdtCCT_codigo.Text := Uteis.StrZero(EdtCCT_codigo.Text,EdtCCT_codigo.MaxLength);
    if CdsCtAnalise.Locate('CCT_CODIGO',EdtCCT_codigo.Text,[])= False then
    begin
           uteis.aviso('Código da Conta Analise não cadastrado!!!');
           MostraDados;
           EdtCCT_Codigo.SetFocus;
    end
end;

procedure TFormContAnalise.cbPerfilSelect(Sender: tObject);
begin
     AtualizaNivel;
end;

procedure TFormContAnalise.MenuItem4Click(Sender: TObject);
begin
     inherited;
     if not CdsPlanoCentroPCXP_REGISTRO.IsNull then
     begin
          // REMOVE O CTO CUSTO E SUBNIVEIS DO MESMO CTO DE CUSTO CASO EXISTAM
          ExecSql ( 'delete FROM PCX0000_Plano '+
                    'where EMP_CODIGO = '+qStr(dbInicio.Empresa.emp_codigo)+  // empresa
                    '      AND CCT_0000 = '+qStr(CdsCtAnaliseCCT_CODIGO.AsString)+ // conta
                    '      AND PCXPF_REGISTRO = '+CbPerfil.idRetorno+ //perfil
                    '      and PCXP_REGISTRO = '+QuotedStr(CdsPlanoCentroPCXP_REGISTRO.AsString));
          ExecSql ( 'delete FROM PCX0000_Plano a '+
                    'where a.EMP_CODIGO = '+qStr(dbInicio.Empresa.emp_codigo)+  // empresa
                    '      AND a.CCT_0000 = '+qStr(CdsCtAnaliseCCT_CODIGO.AsString)+ // conta
                    '      AND a.PCXPF_REGISTRO = '+CbPerfil.idRetorno+ //perfil
                    '      and a.pcx_codigo in ( Select b.pcx_codigo from pcx0000 b where b.emp_codigo=a.emp_codigo and b.PCX_NIVEL like '+qStr( CdsPlanoCentroPCX_NIVEL.asstring+'.%' )+' )' );
          RemoverCCustoGrupoIndiceVazio;
          DesabilitaBotoes;
          fAlterouCustoMargem:=True;
          CdsPlanoCentro.Refresh;
     end;
end;

procedure TFormContAnalise.MenuItem6Click(Sender: TObject);
var t, y : integer;
    NivCusto, lNivel, CodCusto : String;
begin
     if not CdsPlanoCentroPCXP_REGISTRO.IsNull then
     begin
          // REMOVE c.custos tipo lancto com indice = 0
          ExecSql ( 'delete FROM PCX0000_Plano '+
                    'where EMP_CODIGO = '+qStr(dbInicio.Empresa.emp_codigo)+  // empresa
                    '      AND CCT_0000 = '+qStr(CdsCtAnaliseCCT_CODIGO.AsString)+ // conta
                    '      AND PCXPF_REGISTRO = '+CbPerfil.idRetorno+ //perfil
                    '      and pcxp_tipo='+qStr('L')+
                    '      AND coalesce(PCXP_indice,0)=0' );
          //OpenAux( 'Select
          RemoverCCustoGrupoIndiceVazio;
          DesabilitaBotoes;
          fAlterouCustoMargem:=True;
          CdsPlanoCentro.Refresh;

          CdsPlanoCentro.fIRST;
          while NOT CdsPlanoCentro.EOF do
          BEGIN
               // inserir contas totaliz
               NivCusto := CdsPlanoCentroPCX_NIVEL.AsString;
               t := NivCusto.length - 1; //'001.01.005' = 10 - 1 = 9
               for y := 0 to t do
               begin
                    if NivCusto[y]='.' then // conta de totalização
                    begin
                         lNivel := Copy( NivCusto, 1, y-1 );
                         CodCusto := BuscaUmDadoSqlAsString( 'select pcx_codigo from pcx0000 where pcx_nivel = '+qStr(lNivel)+' and pcx_tipo='+qStr('T')+' and emp_codigo='+qStr(dbInicio.Empresa.Emp_codigo) );
                         if CodCusto<>'' then
                         begin

                              if BuscaUmDadoSqlasInteger ( 'Select cast(count(*) as integer) as conta from    pcx0000_plano where emp_codigo='+qStr(dbInicio.Empresa.EMP_CODIGO)+' and pcxpf_registro='+qStr(cbPERFIL.idRetorno)+
                                                           ' and cct_0000='+qStr(CdsCtAnaliseCCT_CODIGO.asstring)+' and pcx_codigo='+qStr(CodCusto) )=0 then
                                  ExecSql( 'insert into pcx0000_plano (EMP_CODIGO, CCT_0000, PCX_CODIGO, PCXP_TIPO, PCXPF_REGISTRO) '+
                                           'values ( '+qStr(dbinicio.Empresa.EMP_CODIGO)+', '+ // emp_codigo
                                           '         '+qStr(CdsCtAnaliseCCT_CODIGO.asstring)+', '+
                                           '         '+qStr(CodCusto)+', '+
                                           '         '+qStr('T')+', '+
                                           '         '+qStr(cbPERFIL.idRetorno)+' )' );
                         end;
                    end;
               end;
               CdsPlanoCentro.next;
          END;
          CdsPlanoCentro.First;
          CdsPlanoCentro.Refresh;


     end;
end;

procedure TFormContAnalise.RemoverCCustoGrupoIndiceVazio;
var x: integer;
begin
     //busca grupos sem custos tipo lancto (grupos vazios)
     for x := 1 to 10 do
     begin
           OpenAux3( 'select t1.pcxp_registro, T1.PCXP_INDICE, t2.pcx_nivel, '+
                     '       (   select cast( Count(*) as integer) '+
                     '           from pcx0000_plano t3 '+
                     '                join pcx0000 t4 on t4.pcx_codigo = t3.pcx_codigo '+
                     '           where t3.emp_codigo=t1.emp_codigo '+
                     '                 and t3.cct_0000=T1.CCT_0000 '+
                     '                 and T3.PCXPF_REGISTRO = T1.PCXPF_REGISTRO '+
                     '                 and t4.pcx_nivel like ( trim( t2.pcx_nivel )||'+qStr('.')+'||'+qStr('%')+' ) ) '+
                     'from pcx0000_plano t1 '+
                     '     join pcx0000 t2 on t2.pcx_codigo = t1.pcx_codigo '+
                     'where t1.pcxp_tipo='+qStr('T')+
                     '      AND t1.EMP_CODIGO = '+qStr(dbInicio.Empresa.emp_codigo)+  // empresa
                     '      AND t1.CCT_0000 = '+qStr(CdsCtAnaliseCCT_CODIGO.AsString)+ // conta
                     '      AND t1.PCXPF_REGISTRO = '+CbPerfil.idRetorno +
                     ' order by t2.pcx_nivel' ) ; //perfil

           if qAux3.IsEmpty then
              Exit;
           while not qAux3.Eof do
           begin
                if qAux3.Fields[3].asInteger=0 then // remove os grupos
                   ExecSql ( 'delete FROM PCX0000_Plano a '+
                             'where a.EMP_CODIGO = '+qStr(dbInicio.Empresa.emp_codigo)+  // empresa
                             '      AND a.CCT_0000 = '+qStr(CdsCtAnaliseCCT_CODIGO.AsString)+ // conta
                             '      AND a.PCXPF_REGISTRO = '+CbPerfil.idRetorno+ //perfil
                             '      and a.pcxp_registro='+qStr(qAux3.fields[0].asstring ) );
                qAux3.next;
           end;
     end;
     qAux3.Close;
end;

procedure TFormContAnalise.MostraDados;
begin
    EdtCCT_codigo.Text := Uteis.StrZero(CdsCtAnaliseCCT_CODIGO.AsString,EdtCCT_codigo.MaxLength);
     {
      0 - Em Branco
      1 - CUSTOS FIXOS
      2 - CUSTOS VARIAVEIS
      3 - OUTRAS ENTRADAS
      4 - OUTRAS SAIDAS
      5 - ENTRADA POR VENDAS
      6 - INVESTIMENTO
     }
    // CbxTipoCta.ItemIndex := IIF(CdsCtAnaliseCCT_TIPO.AsString = ''  ,0,
    //                        IIF(CdsCtAnaliseCCT_TIPO.AsString = 'CF',1,
    //                        IIF(CdsCtAnaliseCCT_TIPO.AsString = 'CV',2,
    //                        IIF(CdsCtAnaliseCCT_TIPO.AsString = 'OE',3,
    //                        IIF(CdsCtAnaliseCCT_TIPO.AsString = 'OS',4,0)))));
    if CdsCtAnaliseCCT_TIPO.AsString = '' then
      CbxTipoCta.ItemIndex := 0
    else if CdsCtAnaliseCCT_TIPO.AsString = 'CF' then
      CbxTipoCta.ItemIndex := 1
    else if CdsCtAnaliseCCT_TIPO.AsString = 'CV' then
      CbxTipoCta.ItemIndex := 2
    else if CdsCtAnaliseCCT_TIPO.AsString = 'OE' then
      CbxTipoCta.ItemIndex := 3
    else if CdsCtAnaliseCCT_TIPO.AsString = 'OS' then
      CbxTipoCta.ItemIndex := 4
    else if CdsCtAnaliseCCT_TIPO.AsString = 'EV' then
      CbxTipoCta.ItemIndex := 5
    else if CdsCtAnaliseCCT_TIPO.AsString = 'IN' then
      CbxTipoCta.ItemIndex := 6 ;


end;

procedure TFormContAnalise.PopupMenu1Popup(Sender: TObject);
begin
     inherited;
     BeginTransaction;
     RemoverEsteCCusto1.enabled := not CdsColaboradorCentroCustoppc_registro.isnull;
     EditarCCusto1.enabled := not CdsColaboradorCentroCustoppc_registro.isnull;
end;

procedure TFormContAnalise.PopupMenu2Popup(Sender: TObject);
begin
     inherited;
     BeginTransaction;
     MenuItem4.enabled := not CdsPlanoCentroPCXP_REGISTRO.isnull;
     EditarCCusto2.enabled := not CdsPlanoCentroPCXP_REGISTRO.isnull;
end;

procedure TFormContAnalise.EdtCEC_CodigoKeyPress(Sender: tObject;
  var Key: Char);
begin
    if not (key in ['0'..'9',#8]) then
       Key := #0;
end;

procedure TFormContAnalise.EdtCCT_codigoKeyPress(Sender: tObject;
  var Key: Char);
begin
     if not (key in ['0'..'9',#8]) then
        Key := #0;
end;

procedure TFormContAnalise.CbxTipoCtaChange(Sender: tObject);
begin
    if CdsCtAnalise.State in [dsBrowse] then
       CdsCtAnalise.Edit;
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
    if (Trim(CdsCtAnaliseCCT_NIVEL.Value)='1')or(Trim(CdsCtAnaliseCCT_NIVEL.Value)='2') then
       uteis.aviso('Contas raízes : 1 - Entradas e 2 - Saídas não podem ser excluídas')
    else
    if BuscaUmdadoSqlAsInteger('Select cast(count(*) as integer) as conta from    CCT_0000 where CCT_NIVEL LIKE '+qStr(DbeCCT_Nivel.Text+'%')+ConcatSe( ' and ',dbInicio.ExclusivoSql('PLANODECONTAS')) ) >1 then
       uteis.aviso('Esta Conta possui Sub-conta e não pode ser excluída !')
    else
    if CdsCtAnaliseCCT_CONTA.AsString = 'E' then
    begin
         if BuscaUmdadoSqlAsInteger('Select cast(count(*) as integer) as conta from    FAT0000 where CCT_CODIGO = '+qStr(CdsCtAnaliseCCT_CODIGO.AsString)+ConcatSe( ' and ',dbInicio.ExclusivoSql('PLANODECONTAS')) )=0 then
         begin
              if uteis.confirmacao ( 'Deseja excluir esta Conta ?')= Mryes then
                   CdsCtAnalise.Delete;
         end
         else
             uteis.aviso('Existem lançamentos com esta conta no Contas à Receber e não pode ser excluída !');
    end
    else
    if BuscaUmdadoSqlAsInteger('Select cast(count(*) as integer) as conta from    pag0000 where CCT_CODIGO = '+qStr(CdsCtAnaliseCCT_CODIGO.AsString)+ConcatSe( ' and ',dbInicio.ExclusivoSql('PLANODECONTAS')) ) =0 then
    begin
         if uteis.confirmacao ( 'Excluir esta Conta ?')= Mryes then
            CdsCtAnalise.Delete;
    end
    else
        uteis.aviso('Existem lançamentos desta conta no Contas à Pagar e não pode ser excluída !');
end;

procedure TFormContAnalise.ExportarparaExcel1Click(Sender: TObject);
begin
     inherited;
     ExportarExcel( dbgrdRateio, Nil );
end;

procedure TFormContAnalise.ExportarparaExcel2Click(Sender: TObject);
begin
     inherited;
     ExportarExcel( dbGrid1, Nil );
end;

procedure TFormContAnalise.ExportarPlanoContasPExcel1Click(Sender: TObject);
begin
     inherited;
     ExportarExcel( DBGridContas, Nil );
end;

function TFormContAnalise.AddNivel (Campo:String;Titulo:String) : String;
Var
Retorna  : String[19];
i        : Integer;
 Niveis : TStringList;
 Encontrou, subnivel : boolean;
begin


    Niveis:= TStringList.Create;
    try
      NIVEIS.Delimiter := '.';
      Niveis.DelimitedText := CAMPO;
      // nivel 1 passa a ser dois digitos, ao inves de 1
      // nivel 1 ao 3 dois digitos e nivel 4 a 6 3 digitos
      {tirando os pontos da conta}

     subnivel := uteis.confirmacao ( ('LEIA ESTA MENSAGEM CUIDADOSAMENTE !!!'+#13+#10+'Você esta prestes a inserir uma Subconta ligada a Conta:'+#13+#10+CAMPO+' - '+
     Titulo+#13+#10+#13+#10+'Deseja confirmar a Inclusão?')) = idYes ;
      if not subnivel and ( uteis.confirmacao ( ('Conta é de 1º grau. Incrementa a conta selecionada: '+#13+#10+CAMPO+' - '+Titulo))<> idYes) then
      begin
         Retorna := '999';
         Result  := Retorna;
         exit;

      end;
      if (niveis.count>=6) and subnivel then
      begin
        uteis.aviso('Número máximo de nível esgotado !');
        Retorna := '999';
        Result  := Retorna;
        exit;
      end;
      encontrou := False;
      i := 1;
      while not encontrou do
      begin
        if not subnivel then
          retorna:= IntToStr(i)
        else
        begin
           case Niveis.Count+1 of

             2,3: retorna:= campo+ '.'+ strzero(i,2);
             4,5,6 : retorna:= campo+ '.'+  strzero(i,3);


           end;
        end;
         encontrou:=  BuscaUmdadoSqlAsInteger('Select cast(count(*) as integer) as conta '+
                                   ' from  CCT_0000 where CCT_NIVEL = ' + qStr( Retorna ) +
                                   ConcatSe( ' and ',dbInicio.ExclusivoSql('PLANODECONTAS')) ) = 0 ; // não encontrou

         inc(i);
      end;
     Result  := Retorna;


    finally

    end;
end;


procedure TFormContAnalise.CbxTipoCtaClick(Sender: tObject);
begin
    if CdsCtAnalise.State = DsBrowse then
       CdsCtAnalise.Edit;
end;

procedure TFormContAnalise.CdsColaboradorCentroCustoAfterPost(DataSet: TDataSet);
begin
     inherited;
     CdsColaboradorCentroCusto.ApplyUpdates(0);
     DesabilitaBotoes;
     AjustaTotaisColaboradores;
end;

procedure TFormContAnalise.CdsColaboradorCentroCustoBeforeEdit(DataSet: TDataSet);
begin
     inherited;
     if CdsColaboradorCentroCustoPPC_TIPO.AsString='T' then
        Abort;
end;

procedure TFormContAnalise.CdsColaboradorCentroCustoBeforeInsert(DataSet: TDataSet);
begin
     inherited;
     abort;
end;

procedure TFormContAnalise.CdsCtAnaliseAfterScroll(DataSet: TDataSet);
begin
     inherited;
//     if (CdsCtAnaliseCCT_NIVEL.asString='1') or (CdsCtAnaliseCCT_NIVEL.asString='2') then
//        BloquearEditContas
//     else
        DesBloquearEditContas;
    LayoutRateio;
     AtualizaNivel;
     MostraDados;
end;

procedure TFormContAnalise.CdsCtAnaliseBeforeEdit(DataSet: TDataSet);
begin
     inherited;
     DesabilitaBotoes;
end;

procedure TFormContAnalise.CdsCtAnaliseBeforePost(DataSet: TDataSet);
begin
     inherited;
     if CdsCtAnaliseCCT_CODIGO.ISNULL then
        CdsCtAnaliseCCT_CODIGO.AsInteger:=dbInicio.GetNextSequence( 'GEN_CCT_0000_ID') ;
end;

procedure TFormContAnalise.CdsCtAnaliseCalcFields(DataSet: TDataSet);
begin
     inherited;
     if CdsCtAnaliseCCT_CONTA.AsString = 'S' then
        CdsCtAnaliseCCT_MOV_CC.AsString := 'Saída'
     else
        CdsCtAnaliseCCT_MOV_CC.AsString := 'Entrada';
end;

procedure TFormContAnalise.CdsPlanoCentroAfterPost(DataSet: TDataSet);
begin
  inherited;
  CdsPlanoCentro.ApplyUpdates(0);
  DesabilitaBotoes;
  fAlterouCustoMargem:=True;
end;

procedure TFormContAnalise.InsereNiveisPlanoCusto;
var t, y : integer;
    NivCusto, lNivel, CodCusto : String;
begin
     inherited;
     NivCusto := CdsPlanoCentroPCX_NIVEL.asstring;
     t := NivCusto.length - 1; //'001.01.005' = 10 - 1 = 9
     for y := 0 to t do
     begin
          if NivCusto[y]='.' then // conta de totalização
          begin
               lNivel := Copy( NivCusto, 1, y );
               CodCusto := BuscaUmDadoSqlAsString( 'select pcx_codigo from pcx0000 where pcx_nivel = '+qStr(lNivel)+' and pcx_tipo='+qStr('T')+' and emp_codigo='+qStr(dbInicio.Empresa.Emp_codigo) );
               if CodCusto<>'' then
               begin

                    if BuscaUmDadoSqlasInteger ( 'Select cast(count(*) as integer) as conta from    pcx0000_plano where emp_codigo='+qStr(dbInicio.Empresa.EMP_CODIGO)+' and pcxpf_registro='+qStr(cbPerfil.idRetorno)+
                                                 ' and cct_0000='+qStr(CdsCtAnaliseCCT_CODIGO.AsString)+' and pcx_codigo='+qStr(CodCusto) )=0 then
                       ExecSql( 'insert into pcx0000_plano (EMP_CODIGO, CCT_0000, PCX_CODIGO, PCXP_TIPO, PCXPF_REGISTRO) '+
                                'values ( '+qStr(dbinicio.Empresa.EMP_CODIGO)+', '+ // emp_codigo
                                '         '+qStr(CdsCtAnaliseCCT_CODIGO.AsString)+', '+
                                '         '+qStr(CodCusto)+', '+
                                '         '+qStr(cbPerfil.idRetorno)+' )' );
               end;
          end;
     end;
end;

procedure TFormContAnalise.AtualizaNivel;
begin
     grpRateio.Caption := 'Nenhuma Conta Selecionada';
     CdsPlanoCentro.Close;
     CdsColaboradorCentroCusto.Close;
     if (CdsCtAnaliseCCT_CODIGO.AsString <> '') and (CbPerfil.idRetorno<>'') then
     begin
           grpRateio.Caption := CdsCtAnaliseCCT_DESCRI.AsString;
           qPlanoCentro.Sql.Text := 'SELECT T1.pcx_codigo,T2.pcx_nivel,T2.pcx_descri,T1.pcxp_indice, t1.pcxp_registro, t1.PCXP_TIPO,pcxp_indice_real '+
                                    'FROM pcx0000_plano T1 '+
                                    '     join pcx0000 T2 ON (T2.pcx_codigo = T1.pcx_codigo) '+
                                    'where T1.cct_0000 = '+qStr( CdsCtAnaliseCCT_CODIGO.AsString)+
                                    '      and t1.PCXPF_REGISTRO = '+CbPerfil.IdRetorno+
                                    ConcatSe(' and t1.', dbInicio.ExclusivoSql('PLANODECONTAS') )+
                                    ' Order by T2.pcx_nivel';
           CdsPlanoCentro.Open;
           if delphiaberto then
              CopyToClipBoard( qPlanoCentro.SQL.Text );

           qColaborador.SQL.Text :=  'SELECT t2.PCX_CODIGO, T2.PCX_NIVEL, T2.PCX_DESCRI, t1.PPC_QUANTIDADE_TOTAL_PERFIL, T1.PPC_QUANTIDADE, t1.ppc_registro, t1.ppc_tipo '+
                                     'FROM PCX0000_PERFIL_COLABORADOR T1 '+
                                     '      JOIN PCX0000 T2 ON T2.PCX_CODIGO = T1.PCX_CODIGO ' + //AND T2.pcx_terminado = '+qstr('N')+
                                     ' where t1.PCXPF_REGISTRO = '+CbPerfil.IdRetorno+
                                     '       and CCT_0000 = '+QuotedStr(CdsCtAnaliseCCT_CODIGO.AsString)+
                                     ConcatSe(' and t1.', dbInicio.ExclusivoSql('PLANODECONTAS') )+
                                     ' order by T2.pcx_nivel' ;
           CdsColaboradorCentroCusto.Open;
     end;
end;

procedure TFormContAnalise.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  if FrmCadastroNaturezaContaContabil = nil then
    FrmCadastroNaturezaContaContabil := TFrmCadastroNaturezaContaContabil.Create(Application);
  FrmCadastroNaturezaContaContabil.ShowModal;
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

procedure TFormContAnalise.LayoutRateio;
begin
     pnlColaborador.visible := rgTipoRateio.ITEMINDEX=2;
     pnlPercentual.visible := rgTipoRateio.ITEMINDEX=0;
     if rgTipoRateio.ITEMINDEX=0 then
     begin
        pnlPercentual.Parent := pnGrRateio;
        pnlPercentual.bringtofront ;
     end
     Else
     if rgTipoRateio.ITEMINDEX=2 then
     begin
       pnlColaborador.Parent := pnGrRateio;
        pnlColaborador.bringtofront;
     end;
     application.processmessages;
end;

procedure TFormContAnalise.rgTipoRateioChange(Sender: tObject);
begin
     LayoutRateio;
end;

procedure TFormContAnalise.EditarCCusto1Click(Sender: TObject);
var tcr: TfrmInsereRateioColaborador;
begin
     if not CdsColaboradorCentroCustoPPC_REGISTRO.isnull then
     begin
          tcr:=TfrmInsereRateioColaborador.create(self);
          try
             tcr.SqlConnection:=dbConn;
             tcr.Conta:=CdsCtAnaliseCCT_CODIGO.AsString;
             tcr.Perfil:=CbPerfil.idRetorno.ToInteger;
             tcr.Edita( CdsColaboradorCentroCustoppc_registro.asString , 'Edição de Rateio por Colaborador') ;
             AjustaTotaisColaboradores;
             DesabilitaBotoes;
          finally
                 FreeAndNil(tcr);
          end;
     end;
end;

procedure TFormContAnalise.EditarCCusto2Click(Sender: TObject);
var tcr: TfrmInsereRateioIndice;
begin
     if not CdsPlanoCentroPCXP_REGISTRO.isnull then
     begin
              tcr:=TfrmInsereRateioIndice.create(self);
              try
                 tcr.SqlConnection:=dbConn;
                 tcr.Conta:=CdsCtAnaliseCCT_CODIGO.AsString;
                 tcr.Perfil:=CbPerfil.idRetorno.ToInteger;
                 tcr.Edita ( CdsPlanoCentroPCXP_REGISTRO.asstring ,  'Edição de Rateio por Indice') ;
                 AjustaTotaisIndices;
                 DesabilitaBotoes;
                 fAlterouCustoMargem:=True;
              finally
                     FreeAndNil(tcr);
              end;
     end
     Else
         GeraException('Selecione um Registro e Tente Novamente!!');
end;

procedure TFormContAnalise.EdtCCT_codigoChange(Sender: tObject);
begin
     LayoutRateio;
end;

procedure TFormContAnalise.CopiarConfiguraodeRateio1Click(Sender: tObject);
begin
   if (not CdsCtAnalise.IsEmpty) then
      begin
         if (CdsCtAnaliseCCT_STATUS.AsString <> 'L') then
            begin
               uteis.aviso('Somente é possível copiar de conta do tipo Lançamento!');
            end
         else
            begin
              FrmPlanoContasCentroCustoCopia := TFrmPlanoContasCentroCustoCopia.Create(Application);
               try

                  FrmPlanoContasCentroCustoCopia.edtConta.text := CdsCtAnaliseCCT_NIVEL.AsString;
                  FrmPlanoContasCentroCustoCopia.edtDescricao.text := CdsCtAnaliseCCT_DESCRI.AsString;
                  FrmPlanoContasCentroCustoCopia.sTipoConta := CdsCtAnaliseCCT_CONTA.AsString;
                  FrmPlanoContasCentroCustoCopia.sRegistroConta := CdsCtAnaliseCCT_CODIGO.AsString;
                  FrmPlanoContasCentroCustoCopia.sPerfilRegistro := CbPerfil.idRetorno;
                  FrmPlanoContasCentroCustoCopia.ShowModal;
               finally
                  FreeAndNil( FrmPlanoContasCentroCustoCopia );
               end;

               CdsCtAnalise.Refresh;
               rgTipoRateio.Refresh;
               cdsPlanoCentro.Refresh;
               CdsColaboradorCentroCusto.Refresh;
            end;
      end;
end;

procedure TFormContAnalise.BotoesAcesso;
begin
     if assigned(FormContAnalise) then
     begin
       Bit_novo.Enabled := Uteis.AcessoUsuario('CadastrosPlano de Contas',DBInicio.Usuario.CODIGO,FormContAnalise).Incluir;
       Bit_Excluir.Enabled := Uteis.AcessoUsuario('CadastrosPlano de Contas',DBInicio.Usuario.CODIGO,FormContAnalise).Exluir;
       Bit_Relatorio.Enabled := Uteis.AcessoUsuario('CadastrosPlano de Contas',DBInicio.Usuario.CODIGO,FormContAnalise).Relatorio;
       DsCtAnalise.AutoEdit := Uteis.AcessoUsuario('CadastrosPlano de Contas',DBInicio.Usuario.CODIGO,FormContAnalise).Alterar;
     end;
end;


end.

