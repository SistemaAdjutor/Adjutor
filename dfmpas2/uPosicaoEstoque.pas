unit uPosicaoEstoque;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBPesquisaForm, Data.DB, Data.DBXFirebird, Data.FMTBcd, Vcl.Menus, Datasnap.DBClient, Datasnap.Provider, Vcl.ExtCtrls, Data.SqlExpr, ACBrEnterTab, ACBrBase,
  ACBrCalculadora, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.Buttons, SgDbSeachComboUnit, uPesqOCP;

type
  TfrmPosicaoEstoque = class(TfrmBaseDBPesquisa)
    cdsBuscoPRD_REFER: TStringField;
    cdsBuscoPRD_UND: TStringField;
    cdsBuscoPRD_DESCRI: TStringField;
    cdsBuscoLIN_DESCRI: TStringField;
    cdsBuscoEstoque: TFMTBCDField;
    cdsBuscoVENDIDONFAT: TFMTBCDField;
    Label3: TLabel;
    cbReferencia: TSgDbSearchCombo;
    cdsBuscoSaldo: TFMTBCDField;
    Label2: TLabel;
    EdtLinha: TEdit;
    CBLinha: TSgDbSearchCombo;
    qTipoProduto: TSQLQuery;
    qLinha: TSQLQuery;
    qProduto: TSQLQuery;
    qProdutoPRD_CODIGO: TStringField;
    qProdutoPRD_REFER: TStringField;
    qProdutoPRD_DESCRI: TStringField;
    qProdutoPRD_CODBARRA: TStringField;
    qProdutoPRD_PRODSERV: TStringField;
    qProdutoPRD_UND: TStringField;
    qProdutoLIN_DESCRI: TStringField;
    qProdutoPRD_PVENDA: TFMTBCDField;
    chkAtrasados: TCheckBox;
    edDiasAtrasos: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    qBuscoPRD_REFER: TStringField;
    qBuscoPRD_DESCRI: TStringField;
    qBuscoPRD_UND: TStringField;
    qBuscoLIN_DESCRI: TStringField;
    qBuscoEstoque: TFMTBCDField;
    qBuscoVENDIDONFAT: TFMTBCDField;
    qBuscoSaldo: TFMTBCDField;
    chkMultiEmpresa: TCheckBox;
    cdsBuscoqtde: TIntegerField;
    qBuscoqtde: TIntegerField;
    chkFalta: TCheckBox;
    DataEntrega: TLabel;
    Label6: TLabel;
    CbGrupo: TSgDbSearchCombo;
    EdtGrupo: TEdit;
    qGrupo: TSQLQuery;
    cdsBuscoPRD_MINIMO: TFMTBCDField;
    qBuscoPRD_MINIMO: TFMTBCDField;
    chkminimo: TCheckBox;
    cdsBuscoPGR_DESCRI: TStringField;
    qBuscoPGR_DESCRI: TStringField;
    cbTipo: TSgDbSearchCombo;
    EdtTipo: TEdit;
    Label1: TLabel;
    Memo1: TMemo;
    tsProducao: TTabSheet;
    DBGrid1: TDBGrid;
    chkDamandaPendente: TCheckBox;
    qProducao: TSQLQuery;
    dspProducao: TDataSetProvider;
    cdsProducao: TClientDataSet;
    dsProducao: TDataSource;
    qProducaoPRD_REFER: TStringField;
    qProducaoPRD_DESCRI: TStringField;
    qProducaoPRD_UND: TStringField;
    qProducaoEstoque: TFMTBCDField;
    qProducaoPRD_MINIMO: TFMTBCDField;
    qProducaoVENDIDONFAT: TFMTBCDField;
    qProducaoSaldo: TFMTBCDField;
    qProducaoCompras: TFMTBCDField;
    qProducaocusto: TFMTBCDField;
    qProducaocustototal: TFMTBCDField;
    cdsProducaoPRD_REFER: TStringField;
    cdsProducaoPRD_DESCRI: TStringField;
    cdsProducaoPRD_UND: TStringField;
    cdsProducaoEstoque: TFMTBCDField;
    cdsProducaoPRD_MINIMO: TFMTBCDField;
    cdsProducaoCONSUMO: TFMTBCDField;
    cdsProducaoSaldo: TFMTBCDField;
    cdsProducaoCompras: TFMTBCDField;
    cdsProducaocusto: TFMTBCDField;
    cdsProducaocustototal: TFMTBCDField;
    qBuscoCOMPRAS: TFMTBCDField;
    cdsBuscoCOMPRAS: TFMTBCDField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbTipoSelect(Sender: TObject);
    procedure CBLinhaSelect(Sender: TObject);
    procedure cbReferenciaButtonClick(Sender: TObject);
    procedure EdtTipoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdtLinhaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdtLinhaExit(Sender: TObject);
    procedure EdtTipoExit(Sender: TObject);
    procedure chkAtrasadosClick(Sender: TObject);
    procedure btnImprimeClick(Sender: TObject);
    procedure chkFaltaClick(Sender: TObject);
    procedure edDiasAtrasosChange(Sender: TObject);
    procedure EdtGrupoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdtGrupoExit(Sender: TObject);
    procedure CbGrupoSelect(Sender: TObject);
    procedure tsProducaoShow(Sender: TObject);
    procedure DBGridDblClick(Sender: TObject);
    procedure DBGridTitleClick(Column: TColumn);
    procedure btnLimparClick(Sender: TObject);

  private
    fCabFiltro, ordenar : string;

  public
    PROCEDURE FILTRO;
  end;

var
  frmPosicaoEstoque: TfrmPosicaoEstoque;

implementation

{$R *.dfm}

uses Prd0006, uteis, InicioDB, BaseTelaRelatorioForm;

procedure TfrmPosicaoEstoque.btnImprimeClick(Sender: TObject);
var tcr: tFrmBaseTelaRelatorio;

begin
  if PageControl1.ActivePage = tsNotas then
  begin

    tcr:= tFrmBaseTelaRelatorio.Create(self);
    try
       tcr.TituloRelatorio:='Posição do Estoque';
//       qBusco.Filtered := False;
//       qBusco.Filter := cdsBusco.Filter;
//       qbusco.Filtered := True;
       tcr.Query:=qBusco;
       tcr.LinhaTitulo1 := '' ;
        tcr.LinhaTitulo2 := fCabFiltro;
      // tcr.SelecionaTodos:=btnLimparClick;
       tcr.ImprimeAuto;
//       tcr.ShowModal;
    finally
      FreeAndNil(tcr);
      qbusco.Filtered := False;
    end;
  end
  else
  begin
    tcr:= tFrmBaseTelaRelatorio.Create(self);
    try
       tcr.TituloRelatorio:='Posição do Estoque de produção';
       tcr.Query:=qProducao;
//       tcr.LinhaTitulo1 := '' ;
//        tcr.LinhaTitulo2 := fCabFiltro;
       tcr.SelecionaTodos:=btnLimparClick;
       tcr.ImprimeAuto;
//       tcr.ShowModal;
    finally
      FreeAndNil(tcr);
    end;




  end;


end;

procedure TfrmPosicaoEstoque.btnLimparClick(Sender: TObject);
begin
  ordenar := 'PRD_REFER';
  inherited;

end;

procedure TfrmPosicaoEstoque.CbGrupoSelect(Sender: TObject);
begin
  inherited;
  EdtGrupo.Text := CbGrupo.idRetorno;
end;

procedure TfrmPosicaoEstoque.CBLinhaSelect(Sender: TObject);
begin
  inherited;
  EdtLinha.Text := CbLinha.idRetorno;
end;

procedure TfrmPosicaoEstoque.cbReferenciaButtonClick(Sender: TObject);
begin
  inherited;
   FormProdutoGrid := TFormProdutoGrid.Create(Application);
   try
      FormProdutoGrid.ShowModal;
      if FormProdutoGrid.ModalResult=mrOk then
         cbReferencia.IdRetorno := FormProdutoGrid.ReferRetorno ;
   finally
          FreeAndNil( FormProdutoGrid );
   end;
end;

procedure TfrmPosicaoEstoque.cbTipoSelect(Sender: TObject);
begin
  inherited;
  EdtTipo.Text := CBtIPO.idRetorno;
end;

procedure TfrmPosicaoEstoque.chkAtrasadosClick(Sender: TObject);
begin
  inherited;
  btnPesquisa.Click;
end;

procedure TfrmPosicaoEstoque.chkFaltaClick(Sender: TObject);
begin
  inherited;
  if chkFalta.Checked and  chkminimo.Checked then
  begin
    cdsBusco.Filtered := False;
    cdsBusco.Filter := '(saldo <0) and (PRD_MINIMO > estoque )';
    cdsBusco.Filtered := True;
  end
  else if chkFalta.Checked and  not chkminimo.Checked then
  begin
    cdsBusco.Filtered := False;
    cdsBusco.Filter := '(saldo <0)';
    cdsBusco.Filtered := True;
  end
  else if  chkminimo.Checked then
  begin
    cdsBusco.Filtered := False;
    cdsBusco.Filter := ' (PRD_MINIMO > estoque )';
    cdsBusco.Filtered := True;

  end
  else
    cdsBusco.Filtered := False;


end;

procedure TfrmPosicaoEstoque.DBGridDblClick(Sender: TObject);
begin
  inherited;
  if cdsProducaoCompras.AsFloat > 0 then
  begin
    if not Assigned(frmPesqOCP) then
      frmPesqOCP := TfrmPesqOCP.Create(Application);
    frmPesqOCP.Produto := cdsProducaoPRD_REFER.AsString;
    frmPesqOCP.Show;
  end;
end;

procedure TfrmPosicaoEstoque.DBGridTitleClick(Column: TColumn);
begin
  inherited;
  ordenar := Column.FieldName;
  Filtro;
  btnPesquisa.Click;
end;

procedure TfrmPosicaoEstoque.edDiasAtrasosChange(Sender: TObject);
var dias : integer;
data : TDate;
begin
  inherited;
  if edDiasAtrasos.Text = '' then
    DataEntrega.Caption := ''
  else
  begin
    if TryStrToInt(edDiasAtrasos.Text,dias) then
       data := Date + dias;
      DataEntrega.Caption := '('+ FormatDateTime('dd/mm/yyyy',data)+ ')';
  end;
end;

procedure TfrmPosicaoEstoque.EdtGrupoExit(Sender: TObject);
begin
  inherited;
  CbGrupo.idRetorno :=  EdtGrupo.Text;
end;

procedure TfrmPosicaoEstoque.EdtGrupoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F4 then
    CbGrupo.Button.Click;
end;

procedure TfrmPosicaoEstoque.EdtLinhaExit(Sender: TObject);
begin
  inherited;
  CBLinha.idRetorno := EdtLinha.Text;
end;

procedure TfrmPosicaoEstoque.EdtLinhaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F4 then
    CBLinha.Button.Click;
end;

procedure TfrmPosicaoEstoque.EdtTipoExit(Sender: TObject);
begin
  inherited;
  cbTipo.idRetorno :=  EdtTipo.Text;
end;

procedure TfrmPosicaoEstoque.EdtTipoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F4 then
    cbtipo.Button.Click;
end;

procedure TfrmPosicaoEstoque.FILTRO;
var dias : integer;
begin
 fCabFiltro := '';
 with qBusco do
	begin
    sql.Clear;
    SQL.Add('   SELECT PRD_REFER, PRD_DESCRI, PGR_DESCRI, PTI_DESCRI, LIN_DESCRI, PRD_UND, PRD_MINIMO,            '+
            '   SUM(VENDIDONFAT) AS VENDIDONFAT,          '+
            '  CAST(SUM(qtdePed) AS INTEGER)  as qtde,  MIN (PRD_PENDENTE) AS COMPRAS,                            '+
            iif(DBInicio.Empresa.wAtualizaEstoque  = 'F',' (coalesce(max(Estoque),0) -   SUM(VENDIDONFAT)) ', '  MIN(Estoque) ')+ ' AS SALDO, '+
            iif(DBInicio.Empresa.wAtualizaEstoque  = 'F', ' MIN(Estoque)',' (coalesce(MIN(Estoque),0) +  SUM(VENDIDONFAT))' ) +' AS Estoque ' +

            '   FROM   (                                                                                          '+
            ' SELECT  IT.PRD_REFER, PR.PRD_DESCRI, TP.PTI_DESCRI,  LI.LIN_DESCRI, PR.PRD_UND,     '+
            '  GR.PGR_DESCRI, ( SELECT SUM(kas_saldo) FROM kardex_almox_saldo KAS                                 '+
            ' JOIN ALMOX0000 amx ON (amx.AMX_CODIGO = kas.AMX_CODIGO AND amx.AMX_FISICO =''S'')                   '+
            '     WHERE prd_codigo = it.prd_codigo' +   ConcatSe (' and KAS.',dbInicio.ExclusivoSql('ESTOQUES') )  +
            ' ) Estoque, PRD_MINIMO,   1  AS  qtdePed, PRD_PENDENTE,                                                          ' +
'  ((COALESCE((SELECT PRF_QTDE-PRF_QTDEFAT FROM PED_IT01 kit WHERE kit.PRF_REGISTRO = it.PRF_REGISTRO_VINCULADO),1) * (PRF_QTDE-PRF_QTDEFAT))) AS VENDIDONFAT '+
            '  FROM PED0000 PE                                                                                   ' +
            '  JOIN OPV0000 OPV ON (OPV.OPV_CODIGO = PE.OPV_CODIGO AND OPV_VENDA = ''S'' AND                     ' +
            '  PED_SITUACAO NOT IN (''C'',''T'',''A'')  )                                                        ' +
            '  JOIN PED_IT01 IT ON (IT.PED_CODIGO = PE.PED_CODIGO AND IT.EMP_CODIGO = PE.EMP_CODIGO AND          ' +
            ' PRF_QTDEFAT  <> PRF_QTDE  )                                                                        ' +
            '  JOIN PRD0000 PR ON (PR.PRD_CODIGO = IT.PRD_CODIGO and PRD_STATUS = ''A'' )                        ' +
            '  JOIN PRD_TIPO TP ON (TP.PTI_CODIGO = PR.PTI_CODIGO)                                               ' );

    if CBLinha.idRetorno <> '' then
      SQL.Add(' JOIN PRD_LINHA LI ON (LI.LIN_CODIGO = PR.LIN_CODIGO)                                             ')
    Else
      SQL.Add(' LEFT JOIN PRD_LINHA LI ON (LI.LIN_CODIGO = PR.LIN_CODIGO)                                        ');

    if CbGrupo.idRetorno <> '' then
      SQL.Add(' JOIN PRD_GRUPO GR ON (GR.PGR_CODIGO = PR.PGR_CODIGO)                                              ')
    else
     SQL.Add( ' LEFT JOIN PRD_GRUPO GR ON (GR.PGR_CODIGO = PR.PGR_CODIGO)                                         ');

    if not chkMultiEmpresa.Checked then
       SqlAdd( ' pe.EMP_CODIGO = ' + QuotedStr(DBInicio.Empresa.EMP_CODIGO));
    if cbReferencia.idRetorno <> '' then
    begin
       SqlAdd(' IT.PRD_REFER = '+QuotedStr(cbReferencia.idRetorno));
       fCabFiltro := fCabFiltro + 'Refência : ' +cbReferencia.idRetorno + '.';
    end;
    if CBLinha.idRetorno <> '' then
    begin
       SqlAdd(' LI.LIN_CODIGO = '+QuotedStr(CBLinha.idRetorno));
       fCabFiltro := fCabFiltro + 'Linha : ' +CBLinha.idRetorno + '.';
    end;
    if CbGrupo.idRetorno <> '' then
    Begin
      SqlAdd('  PR.PGR_CODIGO = '+QuotedStr(CbGrupo.idRetorno));
      fCabFiltro := fCabFiltro + 'Grupo : ' +CbGrupo.idRetorno + '.';
    End;
    if cbTipo.idRetorno <> '' then
    begin
       SqlAdd('  TP.PTI_CODIGO = '+QuotedStr(cbTipo.idRetorno));
       fCabFiltro := fCabFiltro + 'Tipo : ' +cbTipo.idRetorno + '-'+ cbTipo.Text+  '.';
    end;

    if chkAtrasados.Checked and (edDiasAtrasos.Text = '')  then
    begin
       SqlAdd('  PED_DTSAIDA < '+DateToSQL(Date));
       fCabFiltro := fCabFiltro + 'Atrasados .';
    end;
    if (edDiasAtrasos.Text <> '') and not chkAtrasados.Checked then
    begin
      if TryStrToInt(edDiasAtrasos.Text,dias) then
          SqlAdd('  datediff(day, CURRENT_TIMESTAMP, PED_DTSAIDA) <= ' +IntToStr(dias));
       SqlAdd('  PED_DTSAIDA> CURRENT_DATE' );
       fCabFiltro := fCabFiltro + 'Entrega em até '+ IntToStr(dias)+ ' dias '+ DataEntrega.Caption +'  .';
    end
    else if chkAtrasados.Checked and  (edDiasAtrasos.Text <> '') then
    begin
       SqlAdd('  (PED_DTSAIDA < '+DateToSQL(Date));
      if TryStrToInt(edDiasAtrasos.Text,dias) then
          SQL.Add(' or datediff(day, CURRENT_TIMESTAMP, PED_DTSAIDA) <= ' +IntToStr(dias) +')');

    //   fCabFiltro := fCabFiltro + 'Atrasados .';
       fCabFiltro := fCabFiltro + 'Entrega em até '+ IntToStr(dias)+ ' dias '+ DataEntrega.Caption +'  .';

    end;

    if not chkDamandaPendente.Checked then
    begin
      sql.Add(' UNION ALL '+
              '  SELECT PRD_REFER,PR.PRD_DESCRI, TP.PTI_DESCRI,  LI.LIN_DESCRI, PR.PRD_UND, '+
              '  GR.PGR_DESCRI,   '+
              ' ( SELECT COALESCE (SUM(kas_saldo),0) FROM kardex_almox_saldo KAS '+
              '  JOIN ALMOX0000 amx ON (amx.AMX_CODIGO = kas.AMX_CODIGO AND amx.AMX_FISICO = ''S'' ) '+
              ' WHERE prd_codigo = pr.prd_codigo   '+ ConcatSe (' and KAS.',dbInicio.ExclusivoSql('ESTOQUES') )+
              ' ) Estoque, PRD_MINIMO, 0 ,PRD_PENDENTE, 0   '+
              '  FROM PRD0000 PR '+
              ' JOIN PRD_TIPO TP ON (TP.PTI_CODIGO = PR.PTI_CODIGO ) ');

      if CBLinha.idRetorno <> '' then
        SQL.Add(' JOIN PRD_LINHA LI ON (LI.LIN_CODIGO = PR.LIN_CODIGO)                                             ')
      Else
       SQL.Add(' LEFT JOIN PRD_LINHA LI ON (LI.LIN_CODIGO = PR.LIN_CODIGO)                                        ');

      if CbGrupo.idRetorno <> '' then
         SQL.Add(' JOIN PRD_GRUPO GR ON (GR.PGR_CODIGO = PR.PGR_CODIGO)                                              ')
      else
         SQL.Add( ' LEFT JOIN PRD_GRUPO GR ON (GR.PGR_CODIGO = PR.PGR_CODIGO)                                         ');
      Filtrados := False;
      SqlAdd('  PR.PRD_STATUS = ''A''  ');
      if cbReferencia.idRetorno <> '' then
        SqlAdd('  PR.PRD_REFER = '+QuotedStr(cbReferencia.idRetorno));
      if CBLinha.idRetorno <> '' then
        SqlAdd('  LI.LIN_CODIGO = '+QuotedStr(CBLinha.idRetorno));
      if CbGrupo.idRetorno <> '' then
         SqlAdd('  PR.PGR_CODIGO = '+QuotedStr(CbGrupo.idRetorno));
      if cbTipo.idRetorno <> '' then
         SqlAdd('  TP.PTI_CODIGO = '+QuotedStr(cbTipo.idRetorno));





    end;


    //AGRUPAR
    SQL.ADD (')  GROUP BY  1,2,3,4,5,6,7 ');
    SQL.ADD (' ORDER BY ' + Ordenar);

	end;


end;

procedure TfrmPosicaoEstoque.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
	Action := caFree;
end;

procedure TfrmPosicaoEstoque.FormCreate(Sender: TObject);
begin
  inherited;
  btnImprime.Enabled :=  Uteis.AcessoUsuario('ComercialPosição de estoque',DBInicio.Usuario.CODIGO,frmPosicaoEstoque).Relatorio;
  btnExcel.Enabled :=  Uteis.AcessoUsuario('ComercialPosição de estoque',DBInicio.Usuario.CODIGO,frmPosicaoEstoque).Relatorio;
  try
    inherited;
    Self.CampoID:='PRD_REFER';
    Self.ProcedureFiltro:=Filtro;
    self.Constraints.MinHeight:= 638;;
    self.Constraints.MinWidth:=1074;
    self.Constraints.MaxHeight:= 0;
    self.width:=1074;
    self.height:=638;
    edDiasAtrasos.Text := '15';
  except
   // raise; silecioso
  end;
  self.WindowState := wsMaximized;
end;

procedure TfrmPosicaoEstoque.FormDestroy(Sender: TObject);
begin
  inherited;
  frmPosicaoEstoque := NIL;
end;

procedure TfrmPosicaoEstoque.FormShow(Sender: TObject);
begin
  inherited;
  try
    //PadroesPesquisa;
    AbreTabela:=True;
    ordenar := 'PRD_REFER';
    Filtro; // abre tabelas
    btnPesquisa.Click;
  //  DBGrid.OnDrawColumnCell := DBGridDrawColumnCell;
   IF DBInicio.Empresa.wAtualizaEstoque  = 'F' then
   begin
     DBGrid.Columns[5].Title.Caption := 'Estoque';
     qBuscoEstoque.DisplayLabel := 'Estoque';
     qBuscoEstoque.DisplayWidth := 8 ;
   end
   else
   begin
     DBGrid.Columns[5].Title.Caption := 'Estoque Anterior';
     qBuscoEstoque.DisplayLabel := 'Estoque Anterior';
     qBuscoEstoque.DisplayWidth := 12 ;
   end;
  except
//    raise; silencioso number is out of range
  end;
end;



procedure TfrmPosicaoEstoque.tsProducaoShow(Sender: TObject);
var sql :string;
begin
  inherited;
  cdsProducao.Close;
  sql :=  ' SELECT PRD_REFER, PRD_DESCRI, PGR_DESCRI, PTI_DESCRI, LIN_DESCRI, PRD_UND, PRD_MINIMO, max(Estoque) AS Estoque,    '+
          '  SUM(Consumo) AS CONSUMO, (coalesce(max(Estoque),0) -   SUM(Consumo)) AS SALDO,                                    '+
          ' min(compras) as Compras, min(PRD_PCUSTO_UN) custo,                                                                 '+
          ' CAST((MIN(PRD_PCUSTO_UN) * SUM(Consumo)) AS NUMERIC(18,5)) custototal                                              '+
          ' from (  SELECT PR.PRD_REFER, PR.PRD_DESCRI, TP.PTI_DESCRI,  LI.LIN_DESCRI, PR.PRD_UND, GR.PGR_DESCRI,              '+
          ' ( SELECT SUM(kas_saldo) FROM kardex_almox_saldo KAS                                                                '+
          ' JOIN ALMOX0000 amx ON (amx.AMX_CODIGO = kas.AMX_CODIGO AND amx.AMX_FISICO =''S'')                                  '+
          '  WHERE prd_codigo = pr.prd_codigo  ) Estoque,                                                                      '+
          '  PRD_MINIMO  , 1  AS  qtdePed, CAST(( fti_uc * (PRF_QTDE-PRF_QTDEFAT)) AS DOUBLE PRECISION) AS Consumo  ,             '+
          '   (PRF_QTDE-PRF_QTDEFAT) vendido , PRD_PENDENTE  AS compras,                                                       '+
          ' CAST(case                                                                                                          '+
          '       WHEN PRMT.pmt_calcularpv = ''0'' THEN                                                                        '+
          '            Pr.PRD_PCUSTO                                                                                           '+
          '        WHEN PRMT.pmt_calcularpv = ''1'' THEN                                                                       '+
          '            Pr.prd_custocomipi                                                                                      '+
          '        WHEN PRMT.pmt_calcularpv = ''2'' THEN                                                                       '+
          '            Pr.PRD_PMEDIO                                                                                           '+
          '   END as numeric(15,4)) AS PRD_PCUSTO_UN                                                                           '+
          ' FROM PED0000 PE                                                                                                    '+
          ' JOIN OPV0000 OPV ON (OPV.OPV_CODIGO = PE.OPV_CODIGO AND OPV_VENDA = ''S'' AND PED_SITUACAO NOT IN (''C'',''T'',''A'')  ) '+
          '  JOIN PED_IT01 IT ON (IT.PED_CODIGO = PE.PED_CODIGO AND IT.EMP_CODIGO = PE.EMP_CODIGO AND PRF_QTDEFAT  <> PRF_QTDE  )    '+
          '  JOIN FTC_IT01 FI ON (FI.PRD_REFER = IT.PRD_REFER)                                                                '+
          '  JOIN PRD0000 PR ON (PR.PRD_REFER = FI.PRD_REFER_ITENS)                                                           '+
          '  left JOIN prmt0001 PRMT ON PRMT.emp_codigo = Pr.emp_codigo                                                       '+
          '  JOIN PRD_TIPO TP ON (TP.PTI_CODIGO = PR.PTI_CODIGO)                                                              '+
          '  LEFT JOIN PRD_LINHA LI ON (LI.LIN_CODIGO = PR.LIN_CODIGO)                                                        '+
          '  LEFT JOIN PRD_GRUPO GR ON (GR.PGR_CODIGO = PR.PGR_CODIGO)                                                        '+
          '  )   GROUP BY  1,2,3,4,5,6,7 ';
  qProducao.SQL.Clear;
  qProducao.SQL.Add( sql);
  cdsProducao.Open;
end;

end.
