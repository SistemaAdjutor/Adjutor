unit OsvN0008;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Grids, DBGrids, SqlExpr,SqlClientDataSet, Provider,
  DB, DBClient, DBLocal, DBLocalS, ppModule, raCodMod, ppCtrls, ppBands,
  ppVar, ppPrnabl, ppClass, ppCache, ppParameter, ppProd, ppReport, ppComm,
  ppRelatv, ppDB, ppDBPipe, ppStrtch, ppSubRpt, Data.DBXFirebird, ppDesignLayer, SimpleDS;

type
  TFormProdutosOPs = class(TForm)
    Grp_Pesquisa: TGroupBox;
    Rd_Refer: TRadioButton;
    Rd_Descricao: TRadioButton;
    Grp_filtra: TGroupBox;
    Edt_Nome: TEdit;
    BitPesquisar: TBitBtn;
    BitCancelar: TBitBtn;
    GroupBox2: TGroupBox;
    DBGrid2: TDBGrid;
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    SqlCdsEstoque: TSQLClientDataSet;
    DsEstoque: TDataSource;
    SqlCdsEstoquePRD_REFER_ITENS: TStringField;
    SqlCdsEstoquePRD_DESCRI: TStringField;
    SqlCdsEstoquePRD_UND: TStringField;
    SqlCdsEstoquePTI_SIGLA: TStringField;
    SqlCdsEstoqueWSALDO: TFMTBCdField;
    SqlCdsEstoqueFALTA_EMPENHAR: TFloatField;
    SqlCdsOps: TSQLClientDataSet;
    DsOps: TDataSource;
    SqlCdsEstoquePRD_MINIMO: TFMTBCdField;
    ppDBOps: TppDBPipeline;
    ppRelFalta: TppReport;
    ppParameterList1: TppParameterList;
    ppDBEstoque: TppDBPipeline;
    SQLRelFalta: TSQLClientDataSet;
    DsRelFalta: TDataSource;
    ppHeaderBand3: TppHeaderBand;
    ppLine20: TppLine;
    LBL_00_EMPRESA: TppLabel;
    LBL_00_LTITULO1: TppLabel;
    LBL_00_LTITULO2: TppLabel;
    ppSystemVariable23: TppSystemVariable;
    ppSystemVariable24: TppSystemVariable;
    ppLine66: TppLine;
    ppLine1: TppLine;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppDetailBand4: TppDetailBand;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppShape1: TppShape;
    ppSummaryBand1: TppSummaryBand;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLine4: TppLine;
    ppLine3: TppLine;
    ppLabel6: TppLabel;
    ppLine2: TppLine;
    ppDetailBand1: TppDetailBand;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    SQLRelFaltaPRD_REFER: TStringField;
    SQLRelFaltaPRD_DESCRI: TStringField;
    SQLRelFaltaPRD_UND: TStringField;
    SQLRelFaltaCQTDE: TFMTBCdField;
    ppSummaryBand2: TppSummaryBand;
    ppLine5: TppLine;
    ppLine6: TppLine;
    SqlCdsOpsOSV_CODIGO: TStringField;
    SqlCdsOpsPRD_REFER: TStringField;
    SqlCdsOpsPRD_DESCRI: TStringField;
    SqlCdsOpsPRD_UND: TStringField;
    SqlCdsOpsPTI_SIGLA: TStringField;
    SqlCdsOpsOSV_QTDE: TFMTBCdField;
    Bit_Imprimir: TBitBtn;
    Bit_Sair: TBitBtn;
    SqlCdsEstoqueConsumo: TFloatField;
    SqlCdsIOP: TSqlClientDataSet;
    dsIOP: TDataSource;
    SqlCdsEstoquePRD_REFER: TStringField;
    procedure FormShow(Sender: tObject);
    procedure Bit_SairClick(Sender: tObject);
    procedure SqlCdsEstoqueAfterScroll(DataSet: TDataSet);
    procedure Rd_ReferClick(Sender: tObject);
    procedure BitPesquisarClick(Sender: tObject);
    procedure BitCancelarClick(Sender: tObject);
    procedure DBGrid2TitleClick(Column: TColumn);
    procedure Bit_ImprimirClick(Sender: tObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
    procedure Mostra_Itens_OPs_Pendentes;
    procedure Mostra_Ops(sRefer:String);
    procedure LayoutOps;
    procedure mensagens;
    procedure Busca;

  public
    { Public declarations }
    procedure BotoesAcesso;

  end;

var
  FormProdutosOPs: TFormProdutosOPs;

implementation

uses Uteis, RWFunc, Men0001, DataCad, RwSQLComando, ufrmpreviewrb, iniciodb;

{$R *.dfm}






procedure TFormProdutosOPs.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     Action := CaFree;
end;

procedure TFormProdutosOPs.FormDestroy(Sender: TObject);
begin
     FormProdutosOPs := Nil;
end;

procedure TFormProdutosOPs.FormResize(Sender: TObject);
begin
    Height := 592;
    Width := 950;
end;

procedure TFormProdutosOPs.FormShow(Sender: tObject);
begin
   LayoutOps;
   Mostra_Itens_OPs_Pendentes;
end;

procedure TFormProdutosOPs.Bit_SairClick(Sender: tObject);
begin
   Close;
end;

procedure TFormProdutosOPs.BotoesAcesso;
begin
//     if assigned(FormProdutosOPs) then
//     begin
//       Bit_Imprimir.Enabled := Uteis.AcessoUsuario('Produção : Estoque em Falta na Produção',DBInicio.Usuario.CODIGO,FormProdutosOPs).Relatorio;
//     end;
end;

procedure TFormProdutosOPs.Mostra_Itens_OPs_Pendentes;
begin
   Screen.Cursor := crHourGlass;
  if DBInicio.empresa.PMT_HABILITAR_PRODU_ANTIGO then
   begin

     try
       {Monta Sql}
       FrmMenu.RwSqlGeralCmd.MontarSql      := False;
       FrmMenu.RwSqlGeralCmd.ResetaCampos   := True;
       FrmMenu.RwSqlGeralCmd.CodigoEmpresa  := StrToInt(dbInicio.Empresa.EMP_CODIGO);
       FrmMenu.RwSqlGeralCmd.MultiEmpresa   := True;
       FrmMenu.RwSqlGeralCmd.TipoSql        := Consultar;
       FrmMenu.RwSqlGeralCmd.Apelido        := 'T1.';
       FrmMenu.RwSqlGeralCmd.Campos         := '0 as consumo, O2.PRD_REFER_ITENS,'+
                                               'P1.PRD_DESCRI,'+
                                               'P1.PRD_MINIMO,'+
                                               'P1.PRD_UND,'+
                                               'P2.PTI_SIGLA,'+
                                               '((P1.PRD_ESTOQUE+P1.PRD_ENTRADA)-(P1.PRD_SAIDA+P1.PRD_RESERVA+P1.PRD_EMPENHO)) AS WSALDO,'+
                                               'SUM(CAST((((O2.OSI_QTDE1+O2.OSI_QTDE2+O2.OSI_QTDE3+O2.OSI_QTDE4+O2.OSI_QTDE5+O2.OSI_QTDE6+O2.OSI_QTDE7+O2.OSI_QTDE8))-(O2.OSI_RESERVADO + O2.OSI_EMPENHO)) AS NUMERIC(15,4))) AS FALTA_EMPENHAR ';

       FrmMenu.RwSqlGeralCmd.Tabela         := 'OSV0001';
       FrmMenu.RwSqlGeralCmd.UniaoTabelas   := 'JOIN OSV_IT02 O2 ON (O2.OSV_CODIGO = T1.OSV_CODIGO) '+
                                               'LEFT JOIN PRD0000 P1 ON (O2.PRD_REFER_ITENS = P1.PRD_REFER) '+
                                               'LEFT JOIN PRD_TIPO P2 on (P1.PTI_CODIGO = P2.PTI_CODIGO) ';
       FrmMenu.RwSqlGeralCmd.Compartilhar   := 'ORDEMPRODUCAO';
       FrmMenu.RwSqlGeralCmd.Condicao       := '((T1.OSV_STATUS <> ''C'')AND(T1.OSV_STATUS <> ''E''))AND O2.OSI_STATUSEMPENHO <>''S''';
       FrmMenu.RwSqlGeralCmd.CamposAgrupar  := 'O2.PRD_REFER_ITENS,'+
                                               'P1.PRD_DESCRI,'+
                                               'P1.PRD_MINIMO,'+
                                               'P1.PRD_UND,'+
                                               'P2.PTI_SIGLA,'+
                                               'P1.PRD_ESTOQUE,'+
                                               'P1.PRD_ENTRADA,'+
                                               'P1.PRD_SAIDA,'+
                                               'P1.PRD_RESERVA,'+
                                               'P1.PRD_EMPENHO ';

       FrmMenu.RwSqlGeralCmd.CamposOrdernar := 'P1.PRD_DESCRI';
       FrmMenu.RwSqlGeralCmd.MontarSql      := True;
       //
       SqlCdsEstoque.Close;
       SqlCdsEstoque.PacketRecords := 10;
       SqlCdsEstoque.CommandText   := FrmMenu.RwSqlGeralCmd.ComandoSql;
       SqlCdsEstoque.Open;
       //
     except on E:EDataBaseError do
        uteis.erro  (pchar('Erro ao Abrir as tabelas ! '+e.message));
     end;
   end
  else
  begin
    SqlCdsEstoque.Close;
    SqlCdsEstoque.CommandText   :=
       ' SELECT pr.PRD_REFER, PR.PRD_REFER_ITENS, PR.prd_descri, PTI_SIGLA, PR.PRD_UND, PR.PRD_MINIMO, SUM(WSALDO) as WSALDO, SUM(CONSUMO) as CONSUMO ,SUM(PR.FALTA_EMPENHAR) as FALTA_EMPENHAR ' +
       ' FROM ( ' +
       ' SELECT pr.PRD_REFER, fi.PRD_REFER_ITENS, iop.IOP_CODIGO, ' +
       '   (SELECT prd_descri FROM PRD0000 pr2 WHERE pr2.prd_refer = fi.PRD_REFER_ITENS) AS prd_descri, ' +
       '   (SELECT pt.PTI_SIGLA FROM PRD0000 pr5 JOIN PRD_TIPO pt ON (pt.PTI_CODIGO = pr5.PTI_CODIGO) WHERE pr5.prd_refer = fi.PRD_REFER_ITENS) AS PTI_SIGLA, ' +
       '   (SELECT PRD_MINIMO FROM PRD0000 pr6 WHERE pr6.prd_refer = fi.PRD_REFER_ITENS) AS PRD_MINIMO, ' +
       '   (SELECT PRD_UND FROM PRD0000 pr7 WHERE pr7.prd_refer = fi.PRD_REFER_ITENS) AS PRD_UND, ' +
       '   (SELECT SUM(KAS_SALDO) FROM PRD0000 pr3 JOIN KARDEX_ALMOX_SALDO kas ON (kas.EMP_CODIGO = pr3.EMP_CODIGO AND kas.PRD_CODIGO = pr3.PRD_CODIGO) WHERE pr3.prd_refer = fi.PRD_REFER_ITENS) ' +
       '     AS WSALDO, ' +
       '   (SELECT sum(mp.MP_CONSUMOTOTAL) FROM PRD0000 pr4 JOIN  MATERIAPRIMA_ORDEMPRODUCAO mp ON (mp.PRD_CODIGO = pr4.PRD_CODIGO AND mp.IOP_CODIGO = iop.IOP_CODIGO)  WHERE pr4.prd_refer = fi.PRD_REFER_ITENS) ' +
       '     AS Consumo, ' +
       '   (SELECT SUM(KAS_SALDO) FROM PRD0000 pr3 JOIN KARDEX_ALMOX_SALDO kas ON (kas.EMP_CODIGO = pr3.EMP_CODIGO AND kas.PRD_CODIGO = pr3.PRD_CODIGO) WHERE pr3.prd_refer = fi.PRD_REFER_ITENS) - ' +
       '   (SELECT sum(mp.MP_CONSUMOTOTAL) FROM PRD0000 pr4 JOIN  MATERIAPRIMA_ORDEMPRODUCAO mp ON (mp.PRD_CODIGO = pr4.PRD_CODIGO AND mp.IOP_CODIGO = iop.IOP_CODIGO)  WHERE pr4.prd_refer = fi.PRD_REFER_ITENS) ' +
       '     AS FALTA_EMPENHAR ' +
       ' FROM ORDEMPRODUCAO op ' +
       '   JOIN item_ORDEMPRODUCAO iop ON (iop.OPR_CODIGO = op.OPR_CODIGO) ' +
       '   JOIN PRD0000 pr ON (pr.PRD_CODIGO = iop.PRD_CODIGO) ' +
       '   JOIN FTC_IT01 fi ON (fi.PRD_REFER = pr.PRD_REFER) ' +
       ' WHERE iop.iop_status <> ''F'' ' +
       ' AND op.EMP_CODIGO = ' + QuotedStr(DBInicio.Emp_Codigo) +
       ' GROUP BY 1,2,3 ' +
       ' ) AS PR ' +
       ' GROUP BY 1,2,3,4,5,6 '
    ;
    SqlCdsEstoque.Open;


  end;

   Screen.Cursor := crDefault;
end;

procedure TFormProdutosOPs.SqlCdsEstoqueAfterScroll(DataSet: TDataSet);
begin
   Mostra_Ops(SqlCdsEstoquePRD_REFER_ITENS.AsString);
end;

procedure TFormProdutosOPs.Mostra_Ops(sRefer: String);
begin
  if DBInicio.empresa.PMT_HABILITAR_PRODU_ANTIGO then
   begin

     try
       {Monta Sql}
       FrmMenu.RwSqlGeralCmd.MontarSql      := False;
       FrmMenu.RwSqlGeralCmd.ResetaCampos   := True;
       FrmMenu.RwSqlGeralCmd.CodigoEmpresa  := StrToInt(dbInicio.Empresa.EMP_CODIGO);
       FrmMenu.RwSqlGeralCmd.MultiEmpresa   := True;
       FrmMenu.RwSqlGeralCmd.TipoSql        := Consultar;
       FrmMenu.RwSqlGeralCmd.Apelido        := 'T1.';
       FrmMenu.RwSqlGeralCmd.Campos         := 'T1.OSV_CODIGO,'+
                                               'T1.PRD_REFER,'+
                                               'P1.PRD_DESCRI,'+
                                               'P1.PRD_UND,'+
                                               'P2.PTI_SIGLA,'+
                                               'T1.OSV_QTDE';
       FrmMenu.RwSqlGeralCmd.Tabela         := 'OSV0001';
       FrmMenu.RwSqlGeralCmd.UniaoTabelas   := 'LEFT JOIN OSV_IT02 O2 ON (O2.OSV_CODIGO = T1.OSV_CODIGO)'+
                                               'LEFT JOIN PRD0000 P1 ON (P1.PRD_REFER = T1.PRD_REFER)'+
                                               'LEFT JOIN PRD_TIPO P2 on (P1.PTI_CODIGO = P2.PTI_CODIGO)';
       FrmMenu.RwSqlGeralCmd.Compartilhar   := 'ORDEMPRODUCAO';
       FrmMenu.RwSqlGeralCmd.Condicao       := '((T1.OSV_STATUS <> ''C'')AND(T1.OSV_STATUS <> ''E'')) AND O2.OSI_STATUSEMPENHO <>''S'' AND T1.OSV_STATUS_SITUACAO = ''N'' AND O2.PRD_REFER_ITENS = '''+sRefer+'''';
       FrmMenu.RwSqlGeralCmd.MontarSql      := True;
       //
       SqlCdsOps.Close;
       SqlCdsOps.CommandText := FrmMenu.RwSqlGeralCmd.ComandoSql;
       SqlCdsOps.Open;
       //
     except
       on E:EDataBaseError do
         begin
            uteis.erro  (pchar('Erro ao abrir a tabela !'+#13#10+
                       'Mensagem erro: '+e.message));
         end;
     end;
   end
   else
   begin

     SqlCdsOps.Close;
     SqlCdsOps.CommandText :=
      ' SELECT DISTINCT CAST(iop.OPR_CODIGO AS varchar(8)) OSV_CODIGO, ' +
      '   ft.PRD_REFER, pr.PRD_DESCRI, pr.PRD_UND, pt.PTI_SIGLA, iop.IOP_QUANTIDADE OSV_QTDE ' +
      ' FROM  FTC0000 ft ' +
      ' JOIN FTC_IT01  fi ON  (fi.PRD_REFER  = ft.PRD_REFER) ' +
      ' JOIN PRD0000 pr ON  (pr.PRD_REFER = ft.PRD_REFER) ' +
      ' JOIN PRD_TIPO pt ON  (pr.PTI_CODIGO = pt.PTI_CODIGO) ' +
      ' JOIN ITEM_ORDEMPRODUCAO iop ON (iop.PRD_CODIGO = pr.PRD_CODIGO ) ' +
      ' JOIN ORDEMPRODUCAO op ON (op.OPR_CODIGO = iop.OPR_CODIGO) ' +
      ' WHERE NOT EXISTS (SELECT e.emp_quantidade FROM EMPENHO e WHERE e.PRD_CODIGO = pr.PRD_CODIGO) ' +
      '   AND (IOP.IOP_STATUS <> ''C'') ' +
      '   AND (IOP.IOP_STATUS <> ''F'') ' +
      '   AND (OP.EMP_CODIGO = ' + QuotedStr(DBInicio.Emp_Codigo) + ') ' +
      '   AND (fi.PRD_REFER_ITENS = ' + QuotedStr(sRefer) + ') '
      ;

     SqlCdsOps.Open;



   end;
end;

procedure TFormProdutosOPs.LayoutOps;
begin
   if Rd_Refer.checked  then
      begin
         Grp_filtra.Caption := 'Referência da Matéria-prima';
         Edt_Nome.MaxLength := 20;
         Edt_Nome.Width     := 65;
      end
   else
   if Rd_Descricao.checked  then
      begin
         Grp_filtra.Caption := 'Descrição da Matéria-prima';
         Edt_Nome.MaxLength := 50;
         Edt_Nome.Width     := 264;
      end;
   Edt_Nome.text := '';
   Edt_Nome.SetFocus;
end;

procedure TFormProdutosOPs.Rd_ReferClick(Sender: tObject);
begin
   LayoutOps;
end;

procedure TFormProdutosOPs.BitPesquisarClick(Sender: tObject);
begin
   Screen.Cursor := Crhourglass;
   If (Edt_Nome.Text <> '') then
      begin
         Busca;
      end
   else
      begin
         Mensagens;
         Edt_Nome.Text := '';
         Edt_Nome.SetFocus;
      end;
   Screen.Cursor := CrDefault;
end;

procedure TFormProdutosOPs.mensagens;
begin
   if Rd_Refer.checked  then
      begin
         if Edt_Nome.Text = '' then
            uteis.aviso('Referência da Matéria-prima !')
         else
            uteis.aviso('Referência não encontrada !');
      end
   else
   if Rd_Descricao.checked  then
      begin
         if Edt_Nome.Text = '' then
            uteis.aviso('Descrição da Matéria-prima !')
         else
            uteis.aviso('Descrição não encontrada !');
      end;
end;

procedure TFormProdutosOPs.Busca;
begin

   if (Edt_Nome.Text <> '') then
   begin
    if DBInicio.empresa.PMT_HABILITAR_PRODU_ANTIGO then
      begin
         Screen.Cursor := crHourGlass;
         try
           {Monta Sql}
           FrmMenu.RwSqlGeralCmd.MontarSql      := False;
           FrmMenu.RwSqlGeralCmd.ResetaCampos   := True;
           FrmMenu.RwSqlGeralCmd.CodigoEmpresa  := StrToInt(dbInicio.Empresa.EMP_CODIGO);
           FrmMenu.RwSqlGeralCmd.MultiEmpresa   := True;
           FrmMenu.RwSqlGeralCmd.TipoSql        := Consultar;
           FrmMenu.RwSqlGeralCmd.Apelido        := 'T1.';
           FrmMenu.RwSqlGeralCmd.Campos         := '0 as consumo, O2.PRD_REFER_ITENS,'+
                                                   'P1.PRD_DESCRI,'+
                                                   'P1.PRD_MINIMO,'+
                                                   'P1.PRD_UND,'+
                                                   'P2.PTI_SIGLA,'+
                                                   '((P1.PRD_ESTOQUE+P1.PRD_ENTRADA)-(P1.PRD_SAIDA+P1.PRD_RESERVA+P1.PRD_EMPENHO)) AS WSALDO,'+
                                                   'SUM(CAST((((O2.OSI_QTDE1+O2.OSI_QTDE2+O2.OSI_QTDE3+O2.OSI_QTDE4+O2.OSI_QTDE5+O2.OSI_QTDE6+O2.OSI_QTDE7+O2.OSI_QTDE8))-(O2.OSI_RESERVADO + O2.OSI_EMPENHO)) AS NUMERIC(15,4))) AS FALTA_EMPENHAR ';

           FrmMenu.RwSqlGeralCmd.Tabela         := 'OSV0001';
           FrmMenu.RwSqlGeralCmd.UniaoTabelas   := 'JOIN OSV_IT02 O2 ON (O2.OSV_CODIGO = T1.OSV_CODIGO) '+
                                                   'LEFT JOIN PRD0000 P1 ON (O2.PRD_REFER_ITENS = P1.PRD_REFER) '+
                                                   'LEFT JOIN PRD_TIPO P2 on (P1.PTI_CODIGO = P2.PTI_CODIGO) ';
           FrmMenu.RwSqlGeralCmd.Compartilhar   := 'ORDEMPRODUCAO';
           FrmMenu.RwSqlGeralCmd.CamposAgrupar  := 'O2.PRD_REFER_ITENS,'+
                                                   'P1.PRD_DESCRI,'+
                                                   'P1.PRD_MINIMO,'+
                                                   'P1.PRD_UND,'+
                                                   'P2.PTI_SIGLA,'+
                                                   'P1.PRD_ESTOQUE,'+
                                                   'P1.PRD_ENTRADA,'+
                                                   'P1.PRD_SAIDA,'+
                                                   'P1.PRD_RESERVA,'+
                                                   'P1.PRD_EMPENHO ';
           //
           if (Rd_Refer.Checked) then
              begin
                 FrmMenu.RwSqlGeralCmd.Condicao       := '((T1.OSV_STATUS <> ''C'')AND(T1.OSV_STATUS <> ''E''))AND O2.OSI_STATUSEMPENHO <>''S'' AND O2.PRD_REFER_ITENS LIKE '''+Edt_Nome.Text+'%''';
                 FrmMenu.RwSqlGeralCmd.CamposOrdernar := 'O2.PRD_REFER_ITENS';
              end
           else
           if (Rd_Descricao.Checked) then
              begin
                 FrmMenu.RwSqlGeralCmd.Condicao       := '((T1.OSV_STATUS <> ''C'')AND(T1.OSV_STATUS <> ''E''))AND O2.OSI_STATUSEMPENHO <>''S'' AND P1.PRD_DESCRI LIKE '''+Edt_Nome.Text+'%''';
                 FrmMenu.RwSqlGeralCmd.CamposOrdernar := 'P1.PRD_DESCRI';
              end;
           //
           FrmMenu.RwSqlGeralCmd.MontarSql      := True;
           //
           SqlCdsEstoque.Close;
           SqlCdsEstoque.PacketRecords := -1;
           SqlCdsEstoque.CommandText   := FrmMenu.RwSqlGeralCmd.ComandoSql;
           SqlCdsEstoque.Open;
           //
           if (SqlCdsEstoque.IsEmpty) then
              begin
                 Mensagens;
                 Edt_Nome.Text := '';
                 Edt_Nome.SetFocus;
                 Mostra_Itens_OPs_Pendentes;
              end
           else
              begin
                 DBGrid2.SetFocus;
              end;
         except on E:EdatabaseError do
            uteis.erro  (pchar('Erro ao Localizar a ordem de produção !'+e.message));
         end;
         Screen.Cursor := crDefault;
      end
      else
      begin
        SqlCdsEstoque.Close;
        SqlCdsEstoque.CommandText   :=
           ' SELECT pr.PRD_REFER, PR.PRD_REFER_ITENS, PR.prd_descri, PTI_SIGLA, PR.PRD_UND, PR.PRD_MINIMO, SUM(WSALDO) as WSALDO, SUM(CONSUMO) as CONSUMO ,SUM(PR.FALTA_EMPENHAR) as FALTA_EMPENHAR ' +
           ' FROM ( ' +
           ' SELECT pr.PRD_REFER, fi.PRD_REFER_ITENS, iop.IOP_CODIGO, ' +
           '   (SELECT prd_descri FROM PRD0000 pr2 WHERE pr2.prd_refer = fi.PRD_REFER_ITENS) AS prd_descri, ' +
           '   (SELECT pt.PTI_SIGLA FROM PRD0000 pr5 JOIN PRD_TIPO pt ON (pt.PTI_CODIGO = pr5.PTI_CODIGO) WHERE pr5.prd_refer = fi.PRD_REFER_ITENS) AS PTI_SIGLA, ' +
           '   (SELECT PRD_MINIMO FROM PRD0000 pr6 WHERE pr6.prd_refer = fi.PRD_REFER_ITENS) AS PRD_MINIMO, ' +
           '   (SELECT PRD_UND FROM PRD0000 pr7 WHERE pr7.prd_refer = fi.PRD_REFER_ITENS) AS PRD_UND, ' +
           '   (SELECT SUM(KAS_SALDO) FROM PRD0000 pr3 JOIN KARDEX_ALMOX_SALDO kas ON (kas.EMP_CODIGO = pr3.EMP_CODIGO AND kas.PRD_CODIGO = pr3.PRD_CODIGO) WHERE pr3.prd_refer = fi.PRD_REFER_ITENS) ' +
           '     AS WSALDO, ' +
           '   (SELECT sum(mp.MP_CONSUMOTOTAL) FROM PRD0000 pr4 JOIN  MATERIAPRIMA_ORDEMPRODUCAO mp ON (mp.PRD_CODIGO = pr4.PRD_CODIGO AND mp.IOP_CODIGO = iop.IOP_CODIGO)  WHERE pr4.prd_refer = fi.PRD_REFER_ITENS) ' +
           '     AS Consumo, ' +
           '   (SELECT SUM(KAS_SALDO) FROM PRD0000 pr3 JOIN KARDEX_ALMOX_SALDO kas ON (kas.EMP_CODIGO = pr3.EMP_CODIGO AND kas.PRD_CODIGO = pr3.PRD_CODIGO) WHERE pr3.prd_refer = fi.PRD_REFER_ITENS) - ' +
           '   (SELECT sum(mp.MP_CONSUMOTOTAL) FROM PRD0000 pr4 JOIN  MATERIAPRIMA_ORDEMPRODUCAO mp ON (mp.PRD_CODIGO = pr4.PRD_CODIGO AND mp.IOP_CODIGO = iop.IOP_CODIGO)  WHERE pr4.prd_refer = fi.PRD_REFER_ITENS) ' +
           '     AS FALTA_EMPENHAR ' +
           ' FROM ORDEMPRODUCAO op ' +
           '   JOIN item_ORDEMPRODUCAO iop ON (iop.OPR_CODIGO = op.OPR_CODIGO) ' +
           '   JOIN PRD0000 pr ON (pr.PRD_CODIGO = iop.PRD_CODIGO) ' +
           '   JOIN FTC_IT01 fi ON (fi.PRD_REFER = pr.PRD_REFER) ' +
           ' WHERE iop.iop_status <> ''F'' ' +
           ' AND op.EMP_CODIGO = ' + QuotedStr(DBInicio.Emp_Codigo) +
           iif(Rd_Refer.Checked, ' AND fi.PRD_REFER_ITENS LIKE '''+Edt_Nome.Text+'%''' ,  ' AND pr.PRD_DESCRI LIKE ''%'+Edt_Nome.Text+'%''' ) +
           ' GROUP BY 1,2,3 ' +
           ' ) AS PR ' +
           ' GROUP BY 1,2,3,4,5,6 ';

{
          ' SELECT fti.PRD_REFER_ITENS, pr.PRD_DESCRI, pr.PRD_MINIMO, pr.PRD_UND, pt.PTI_SIGLA, ' +
          '  max((SELECT SUM(KAS_SALDO) FROM KARDEX_ALMOX_SALDO kas WHERE kas.EMP_CODIGO = pr.EMP_CODIGO AND kas.PRD_CODIGO = pr.PRD_CODIGO)) AS WSALDO, ' +
          '  max((SELECT sum(mp.MP_CONSUMOTOTAL) FROM MATERIAPRIMA_ORDEMPRODUCAO mp  WHERE mp.PRD_CODIGO  = pr.PRD_CODIGO ))' +
          '    AS Consumo,' +
          '  max((SELECT sum(mp.MP_CONSUMOTOTAL) FROM MATERIAPRIMA_ORDEMPRODUCAO mp  WHERE mp.PRD_CODIGO  = pr.PRD_CODIGO )) -' +
          '  max((SELECT SUM(KAS_SALDO) FROM KARDEX_ALMOX_SALDO kas WHERE kas.EMP_CODIGO = pr.EMP_CODIGO AND kas.PRD_CODIGO = pr.PRD_CODIGO))' +
          '    AS FALTA_EMPENHAR' +
          '   FROM FTC_IT01 fti ' +
          '   JOIN PRD0000 pr ON (pr.PRD_REFER = fti.PRD_REFER_ITENS) ' +
          '   JOIN ITEM_ORDEMPRODUCAO iop ON (Iop.PRD_CODIGO = pr.PRD_CODIGO ) ' +
          '   JOIN ORDEMPRODUCAO op ON (op.OPR_CODIGO = iop.OPR_CODIGO ) ' +
          '   LEFT JOIN PRD_TIPO pt ON (pt.PTI_CODIGO = pr.PTI_CODIGO) ' +
          '   LEFT JOIN EMPENHO em ON (em.prd_codigo = pr.PRD_CODIGO AND em.IOP_CODIGO = iop.IOP_CODIGO AND em.EMP_QUANTIDADE = 0) ' +
          '     WHERE (IOP.IOP_STATUS <> ''C'') ' +
          '      AND (IOP.IOP_STATUS <> ''F'') ' +
          '      AND (OP.EMP_CODIGO = ' + QuotedStr(DBInicio.Emp_Codigo) + ') ' +
          iif(Rd_Refer.Checked, ' AND fti.PRD_REFER_ITENS LIKE '''+Edt_Nome.Text+'%''' ,  ' AND pr.PRD_DESCRI LIKE ''%'+Edt_Nome.Text+'%''' ) +
          '   GROUP BY 1,2,3,4,5 ';
}
        SqlCdsEstoque.Open;
      end;
   end;
end;

procedure TFormProdutosOPs.BitCancelarClick(Sender: tObject);
begin
   Screen.Cursor := crHourGlass;
   Edt_Nome.Text := '';
   Mostra_Itens_OPs_Pendentes;
   Screen.Cursor := crDefault;
end;

procedure TFormProdutosOPs.DBGrid2TitleClick(Column: TColumn);
begin
   screen.Cursor := crHourglass;
  {Recupera a cor original da coluna atualmente indexada}
   if (SqlCdsEstoque.IndexFieldNames <> '') then
       DBGrid2.Columns[DBGrid2.Tag].Title.Color := DBGrid2.FixedColor;
  {Se o campo não for blob ou memo e se for do tipo data}
   if (not (Column.Field.DataType in [ftBlob,ftMemo]))
   and(Column.Field.FieldKind = fkData) then
      begin
         DBGrid2.Tag := Column.Index;
         SqlCdsEstoque.IndexFieldNames := Column.FieldName;
         Column.Title.Color := $00FFBB77;
      end
   else
      begin
         //beep;
         uteis.aviso('Não e possível ordernar por esta coluna!');
      end;
    screen.Cursor := crDefault;
end;

procedure TFormProdutosOPs.Bit_ImprimirClick(Sender: tObject);
begin
    if DBInicio.empresa.PMT_HABILITAR_PRODU_ANTIGO then
      begin

         try
           {Monta Sql}

           FrmMenu.RwSqlGeralCmd.MontarSql      := False;
           FrmMenu.RwSqlGeralCmd.ResetaCampos   := True;
           FrmMenu.RwSqlGeralCmd.CodigoEmpresa  := StrToInt(dbInicio.Empresa.EMP_CODIGO);
           FrmMenu.RwSqlGeralCmd.MultiEmpresa   := True;
           FrmMenu.RwSqlGeralCmd.TipoSql        := Consultar;
           FrmMenu.RwSqlGeralCmd.Apelido        := 'T1.';
           FrmMenu.RwSqlGeralCmd.Campos         := 'T1.PRD_REFER,'+
                                                   'T2.PRD_DESCRI,'+
                                                   'T2.PRD_UND,'+
                                                   'SUM(T1.OSV_QTDE) AS CQTDE ';
           FrmMenu.RwSqlGeralCmd.Tabela         := 'OSV0001';
           FrmMenu.RwSqlGeralCmd.UniaoTabelas   := 'LEFT JOIN PRD0000 T2 ON (T2.PRD_REFER = T1.PRD_REFER)';
           FrmMenu.RwSqlGeralCmd.Compartilhar   := 'ORDEMPRODUCAO';
           FrmMenu.RwSqlGeralCmd.Condicao       := '((T1.OSV_STATUS <> ''C'')AND(T1.OSV_STATUS <> ''E'')) AND T1.OSV_STATUS_SITUACAO = ''N''';
           FrmMenu.RwSqlGeralCmd.CamposAgrupar  := 'T1.PRD_REFER,'+
                                                   'T2.PRD_DESCRI,'+
                                                   'T2.PRD_UND';
           FrmMenu.RwSqlGeralCmd.CamposOrdernar := 'T2.PRD_DESCRI';
           FrmMenu.RwSqlGeralCmd.MontarSql      := True;
           //
           SQLRelFalta.Close;
           SQLRelFalta.CommandText := FrmMenu.RwSqlGeralCmd.ComandoSql;
           SQLRelFalta.Open;
           //

         except
           on E:EDataBaseError do
             begin
                uteis.erro  (pchar('Erro ao abrir a tabela !'+#13#10+
                           'Mensagem erro: '+e.message));
             end;
         end;
      end
      else
      begin
        SQLRelFalta.Close;
        SQLRelFalta.CommandText   :=
           ' SELECT pr.PRD_REFER, PR.PRD_REFER_ITENS, PR.prd_descri, PTI_SIGLA, PR.PRD_UND, PR.PRD_MINIMO, SUM(WSALDO) as CQTDE, SUM(CONSUMO) as CONSUMO ,SUM(PR.FALTA_EMPENHAR) as FALTA_EMPENHAR ' +
           ' FROM ( ' +
           ' SELECT pr.PRD_REFER, fi.PRD_REFER_ITENS, iop.IOP_CODIGO, ' +
           '   (SELECT prd_descri FROM PRD0000 pr2 WHERE pr2.prd_refer = fi.PRD_REFER_ITENS) AS prd_descri, ' +
           '   (SELECT pt.PTI_SIGLA FROM PRD0000 pr5 JOIN PRD_TIPO pt ON (pt.PTI_CODIGO = pr5.PTI_CODIGO) WHERE pr5.prd_refer = fi.PRD_REFER_ITENS) AS PTI_SIGLA, ' +
           '   (SELECT PRD_MINIMO FROM PRD0000 pr6 WHERE pr6.prd_refer = fi.PRD_REFER_ITENS) AS PRD_MINIMO, ' +
           '   (SELECT PRD_UND FROM PRD0000 pr7 WHERE pr7.prd_refer = fi.PRD_REFER_ITENS) AS PRD_UND, ' +
           '   (SELECT SUM(KAS_SALDO) FROM PRD0000 pr3 JOIN KARDEX_ALMOX_SALDO kas ON (kas.EMP_CODIGO = pr3.EMP_CODIGO AND kas.PRD_CODIGO = pr3.PRD_CODIGO) WHERE pr3.prd_refer = fi.PRD_REFER_ITENS) ' +
           '     AS WSALDO, ' +
           '   (SELECT sum(mp.MP_CONSUMOTOTAL) FROM PRD0000 pr4 JOIN  MATERIAPRIMA_ORDEMPRODUCAO mp ON (mp.PRD_CODIGO = pr4.PRD_CODIGO AND mp.IOP_CODIGO = iop.IOP_CODIGO)  WHERE pr4.prd_refer = fi.PRD_REFER_ITENS) ' +
           '     AS Consumo, ' +
           '   (SELECT SUM(KAS_SALDO) FROM PRD0000 pr3 JOIN KARDEX_ALMOX_SALDO kas ON (kas.EMP_CODIGO = pr3.EMP_CODIGO AND kas.PRD_CODIGO = pr3.PRD_CODIGO) WHERE pr3.prd_refer = fi.PRD_REFER_ITENS) - ' +
           '   (SELECT sum(mp.MP_CONSUMOTOTAL) FROM PRD0000 pr4 JOIN  MATERIAPRIMA_ORDEMPRODUCAO mp ON (mp.PRD_CODIGO = pr4.PRD_CODIGO AND mp.IOP_CODIGO = iop.IOP_CODIGO)  WHERE pr4.prd_refer = fi.PRD_REFER_ITENS) ' +
           '     AS FALTA_EMPENHAR ' +
           ' FROM ORDEMPRODUCAO op ' +
           '   JOIN item_ORDEMPRODUCAO iop ON (iop.OPR_CODIGO = op.OPR_CODIGO) ' +
           '   JOIN PRD0000 pr ON (pr.PRD_CODIGO = iop.PRD_CODIGO) ' +
           '   JOIN FTC_IT01 fi ON (fi.PRD_REFER = pr.PRD_REFER) ' +
           ' WHERE iop.iop_status <> ''F'' ' +
           ' AND op.EMP_CODIGO = ' + QuotedStr(DBInicio.Emp_Codigo) +
           ' GROUP BY 1,2,3 ' +
           ' ) AS PR ' +
           ' GROUP BY 1,2,3,4,5,6 ' +
           ' ORDER BY pr.PRD_DESCRI '
        ;

{
         ' SELECT DISTINCT ft.PRD_REFER, pr.PRD_DESCRI, pr.PRD_UND, pt.PTI_SIGLA, ' +
          '  max((SELECT sum(mp.MP_CONSUMOTOTAL) FROM MATERIAPRIMA_ORDEMPRODUCAO mp  WHERE mp.PRD_CODIGO  = pr.PRD_CODIGO )) -' +
          '  max((SELECT SUM(KAS_SALDO) FROM KARDEX_ALMOX_SALDO kas WHERE kas.EMP_CODIGO = pr.EMP_CODIGO AND kas.PRD_CODIGO = pr.PRD_CODIGO))' +
          ' as CQTDE ' +
//         '  (SELECT sum(iop2.IOP_QUANTIDADE) FROM ITEM_ORDEMPRODUCAO iop2 WHERE iop2.PRD_CODIGO = pr.PRD_CODIGO) as CQTDE ' +
         '    FROM  FTC0000 ft ' +
         '    JOIN PRD0000 pr ON  (pr.PRD_REFER = ft.PRD_REFER) ' +
         '    JOIN PRD_TIPO pt ON  (pr.PTI_CODIGO = pt.PTI_CODIGO) ' +
         '    JOIN ITEM_ORDEMPRODUCAO iop ON (iop.PRD_CODIGO = pr.PRD_CODIGO ) ' +
         '    JOIN ORDEMPRODUCAO op ON (op.OPR_CODIGO = iop.OPR_CODIGO) ' +
         '  WHERE (IOP.IOP_STATUS <> ''C'') ' +
         '    AND (IOP.IOP_STATUS <> ''F'') ' +
         '    AND (OP.EMP_CODIGO = ' + QuotedStr(DBInicio.Emp_Codigo) +  ') ' +
         '  GROUP BY 1,2,3,4 ' +
         '  ORDER BY pr.PRD_DESCRI ';
}
        SQLRelFalta.Open;
      end;
     if (not SQLRelFalta.IsEmpty) then
        begin
           LBL_00_EMPRESA.Caption  := dbInicio.Empresa.Razao;
           LBL_00_LTITULO1.Caption := 'RELAÇÃO DE MATÉRIA-PRIMA EM FALTA NA PRODUÇÃO';
           LBL_00_LTITULO2.Caption := '';
           ppRelFalta.DeviceType:='Screen';
           SqlCdsEstoque.DisableControls;
           SqlCdsOps.DisableControls;
           RBuilderPreview(ppRelFalta);
           SqlCdsEstoque.EnableControls;
           SqlCdsOps.EnableControls;
        end;

end;

end.
