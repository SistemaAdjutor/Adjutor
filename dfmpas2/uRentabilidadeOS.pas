unit uRentabilidadeOS;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BaseDBForm, Data.DBXFirebird, Data.FMTBcd, Data.DB, Data.SqlExpr, ACBrEnterTab, ACBrBase, ACBrCalculadora, Vcl.StdCtrls, SgDbSeachComboUnit, Vcl.Buttons,
  Vcl.Mask, JvExMask, JvToolEdit, frxClass, frxDBSet, Vcl.ExtCtrls, frxExportPDF;

type
  TfrmRentabilidadeOS = class(TfrmBaseDB)
    EdClienteCodigo: TEdit;
    edCliente: TSgDbSearchCombo;
    Label1: TLabel;
    qCliente: TSQLQuery;
    edServicoCodigo: TEdit;
    edServico: TSgDbSearchCombo;
    Label2: TLabel;
    qServico: TSQLQuery;
    edProdutoRefer: TEdit;
    edProduto: TSgDbSearchCombo;
    Label3: TLabel;
    qProduto: TSQLQuery;
    gbPeriodo: TGroupBox;
    lblInicio: TLabel;
    lblFim: TLabel;
    dtInicial: TJvDateEdit;
    dtFinal: TJvDateEdit;
    Label4: TLabel;
    edOS: TEdit;
    btImprimir: TBitBtn;
    brFechar: TBitBtn;
    frxOS: TfrxReport;
    frxDBOS: TfrxDBDataset;
    Label5: TLabel;
    frxPDFExport1: TfrxPDFExport;
    chkPDF: TCheckBox;
    chkExcel: TCheckBox;
    edCarga: TEdit;
    dsAux: TDataSource;
    qAuxCAR_CODIGO: TStringField;
    qAuxCUSTO: TFloatField;
    qAuxPESOTOTAL: TFMTBCDField;
    qAuxPRD_UND: TStringField;
    qAuxTOTAL: TFMTBCDField;
    qAuxPED_CODIGO: TStringField;
    qAuxIOP_NORDEM: TStringField;
    qAuxPRD_REFER: TStringField;
    qAuxPRF_PRDDESCRI: TStringField;
    qAuxCLI_RAZAO: TStringField;
    qAuxSRV_NOME: TStringField;
    qAuxIOP_QUANTIDADE: TFMTBCDField;
    qAuxIOP_PESO: TFMTBCDField;
    qAuxPRF_QTDE_ENV_PRODUCAO: TFMTBCDField;
    qAuxIOP_PRECO: TFMTBCDField;
    qAuxVALORVENDA: TFMTBCDField;
    procedure edClienteSelect(Sender: TObject);
    procedure edServicoSelect(Sender: TObject);
    procedure edProdutoSelect(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
    procedure frxOSBeginDoc(Sender: TObject);
    procedure frxOSGetValue(const VarName: string; var Value: Variant);
    procedure brFecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qAuxBeforeScroll(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure EdClienteCodigoExit(Sender: TObject);
    procedure edServicoCodigoExit(Sender: TObject);
    procedure edProdutoReferExit(Sender: TObject);
    procedure chkPDFClick(Sender: TObject);
    procedure chkExcelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    var carga: string;
  end;

var
  frmRentabilidadeOS: TfrmRentabilidadeOS;

implementation

{$R *.dfm}

uses uteis, InicioDB, Animacao, Vcl.Clipbrd;

procedure TfrmRentabilidadeOS.brFecharClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmRentabilidadeOS.btImprimirClick(Sender: TObject);
var
  sql1, sql2, sql3, sql4, ArquivoAnexo: string;
  lista: TStringList;
  j : integer;
  gravar: TStringList;
  linha : string;
  SaveDialog: TSaveDialog;
  total, custo, pesoTotal: double;
begin
  inherited;

  fmAnimacao := TfmAnimacao.Create(application);
  fmAnimacao.Panel1.Caption :=  'Consultando a base de dados. Por favor, aguarde...';
  fmAnimacao.Panel1.Font.Color := clBlack;
  Application.ProcessMessages;
  fmAnimacao.Show;

  try
    try
        // com carga e não agrupado
        sql1 :=
          '  SELECT DISTINCT cl.cli_razao, pe.ped_codigo, iop.iop_nordem, '''' AS car_codigo, ' +
          '      (   SELECT ' +
//          '      sum( ( ci.cio_pv * ( (cast(datediff(minute from pp.pcp_dataini TO pp.pcp_datafim) AS float)/60) )) ' +
          '      sum( ( ci.cio_pv * cast((pp.PCP_TEMPO_GASTO*24) AS FLOAT)  )  ' +
          '      / ' +
          '      (CASE ' +
          '         WHEN (pp.car_codigo IS NULL AND  pp.pcp_tempo_gasto > 0) THEN ' +
          '           (SELECT sum( ' +
          '                        CASE ' +
          '                        WHEN pi7.prf_qtde_env_producao > 0 ' +
          '                          THEN iop7.iop_quantidade ' +
          '                          ELSE iop7.iop_quantidade * ' +
          '                                        CASE ' +
          '                                          WHEN iop7.iop_peso = 0 THEN 1 ' +
          '                                          ELSE iop7.iop_peso ' +
          '                                        END ' +
          '                        END ' +
          '                       ) ' +
          '                FROM  processos_producao pcp3 ' +
          '                  JOIN  item_ordemproducao iop7 ON   (pcp3.iop_codigo=iop7.iop_codigo) ' +
          '                  JOIN  ped_it01 pi7 ON (pi7.prf_registro=iop7.prf_registro) ' +
          '                WHERE pcp3.iop_codigo = iop2.iop_codigo ' +
          '                  AND  pcp3.pcp_tempo_gasto > 0 ' +
          '                  AND  pcp3.car_codigo IS NULL) ' +
          '         ELSE ' +
          '           (SELECT sum( ' +
          '              CASE ' +
          '                WHEN pi7.prf_qtde_env_producao > 0 THEN iop8.iop_quantidade ' +
          '                ELSE iop8.iop_quantidade * ' +
          '                                           CASE ' +
          '                                             WHEN iop8.iop_peso=0 THEN 1 ' +
          '                                             ELSE iop8.iop_peso ' +
          '                                           END ' +
          '              END  ) ' +
          '            FROM  processos_producao pcp2 ' +
          '              JOIN  item_ordemproducao iop8 ON (pcp2.iop_codigo=iop8.iop_codigo) ' +
          '              JOIN  ped_it01 pi7 ON (pi7.prf_registro=iop8.prf_registro) ' +
          '            WHERE pcp2.car_codigo =pp.car_codigo ' +
          '              AND  pcp2.pcp_tempo_gasto > 0 ) ' +
          '        END ) ' +
          '     ) AS custoint ' +
          '     FROM  item_ordemproducao iop2 ' +
          '       JOIN  processos_producao pp ON (iop2.iop_codigo = pp.iop_codigo) ' +
          '       JOIN  equipamento eq ON (eq.eqp_codigo = pp.eqp_codigo AND  eq.eqp_certificado IS NULL) ' +
          '       JOIN  custoindust ci ON (ci.set_codigo = eq.set_codigo  AND  ci.cio_mes = extract(month FROM nf.nf_emissao)  AND  ci.cio_ano = extract(year FROM nf.nf_emissao)) ' +
          '     WHERE iop2.iop_codigo = iop.iop_codigo ' +
          '       AND  eq.eqp_certificado IS NULL ' +
          '       AND  pp.pcp_tempo_gasto > 0 ' +
          '       AND IOP2.IOP_TEMCARGA = ''S'' ' +
          '       AND OPE.ope_temresultado = ''N'') AS custo, ' +
          '     CASE ' +
          '       WHEN prf_qtde_env_producao > 0 THEN iop.iop_quantidade ' +
          '       ELSE iop.iop_quantidade * iop.iop_peso ' +
          '     END AS pesototal, ' +
          '      pr.prd_und, ' +
          '      iop.iop_quantidade * iop.iop_preco AS total, ' +
          '      pe.ped_codigo, ' +
          '      iop.iop_nordem, ' +
          '      pr.prd_refer, ' +
          '      pi.prf_prddescri, ' +
          '      cl.cli_razao, ' +
          '      sv.srv_nome, ' +
          '      iop.iop_quantidade, ' +
          '      CASE ' +
          '     WHEN prf_qtde_env_producao > 0 THEN iop.iop_quantidade ' +
          '     ELSE iop.iop_peso ' +
          '      END AS iop_peso , ' +
          '      pi.prf_qtde_env_producao, ' +
          '      iop.iop_preco, ' +
          '      iop.iop_preco * iop.iop_quantidade valorvenda ' +
          '  FROM  item_ordemproducao iop ' +
          '  JOIN  ordemproducao op ON (op.opr_codigo = iop.opr_codigo) ' +
          '  JOIN  ped0000 pe ON (pe.ped_codigo = op.ped_codigo) ' +
          '  JOIN  cli0000 cl ON (cl.cli_codigo = op.cli_codigo) ' +
          '  JOIN  prd0000 pr ON (pr.prd_codigo = iop.prd_codigo) ' +
          '  JOIN  processos_producao pp ON (iop.iop_codigo = pp.iop_codigo AND  pp.pcp_tempo_gasto > 0) ' +
          '  JOIN  operacoes ope ON (ope.ope_codigo = pp.ope_codigo) ' +
          '  JOIN  equipamento eq ON (eq.eqp_codigo = pp.eqp_codigo) ' +
          '  JOIN  setor se ON (se.set_codigo = eq.set_codigo) ' +
          '  JOIN  processos po ON (po.pro_codigo = iop.pro_codigo) ' +
          '  JOIN  servico sv ON (sv.srv_codigo = po.srv_codigo) ' +
          '  JOIN  ped_it01 pi ON (pi.ped_codigo = op.ped_codigo AND  iop.prf_registro = pi.prf_registro) ' +
          '  JOIN  custoindust ci ON (ci.set_codigo = eq.set_codigo) ' +
          '  JOIN  NF0001 nf ON (nf.PED_CODIGO = pE.PED_CODIGO  and nf.NF_STATUS_NFE <> ''C'' )' +
          '  JOIN  NF_IT01 nfit on (nf.nf_notanumber = nfit.nf_it_notanumer and pi.prf_registro = nfit.prf_registro) ' +
          '  WHERE ' +
          '        iop.IOP_TEMCARGA = ''S'' ' +
          '  AND  (pp.pcp_status = ''F'')  ' +
          '  AND  (pp.pcp_tempo_gasto > 0) ' +
          '  AND  (eq.eqp_certificado IS NULL) ' +
          '  AND  (pp.pcp_dataini <> pp.pcp_datafim) ' +
          '  AND  (OPE.ope_temresultado = ''N'') ' +
          iif(edOS.Text = '' , '' , ' AND (iop.IOP_NORDEM CONTAINING ' + QuotedStr(edOS.Text)+ ')')  +
          iif(edCarga.Text = '' , '' , ' AND  (ca.CAR_CODIGO = ' + QuotedStr(edCarga.Text)+ ')') +
          iif(edProdutoRefer.Text = '' , '' , ' AND (pr.PRD_REFER = ' + QuotedStr(edProdutoRefer.Text)+ ')')  +
          iif(edServicoCodigo.Text = '' , '' , ' AND (sv.SRV_CODIGO = ' + edServicoCodigo.Text+ ')') +
          iif(EdClienteCodigo.Text = '' , '' , ' AND (cl.CLI_CODIGO = ' + QuotedStr(EdClienteCodigo.Text)+ ')') +
          iif((dtInicial.Date > 0) and (dtFinal.Date > 0) ,' AND (nf.NF_EMISSAO >= ' + DateToSQL(dtInicial.Date) + ') AND (nf.NF_EMISSAO <= ' + DateToSQL(dtFinal.Date)+ ')' , '') ;


        // sem carga e não agrupado
        sql2 :=
         ' UNION ALL ' +
         ' SELECT DISTINCT cl.CLI_RAZAO, pe.ped_codigo, iop.iop_nordem,  '''' as car_codigo,     ( ' +
         '   SELECT   ' +
//          '    sum( (ci.CIO_PV * ((CAST(datediff(MINUTE from pp.PCP_DATAINI to pp.PCP_DATAFIM) AS float)/60) )) ' +
         '    sum( ( ci.cio_pv * cast((pp.PCP_TEMPO_GASTO*24) AS FLOAT)  )  ' +
         '      / ' +
         '    ( SELECT SUM(CASE WHEN prf_qtde_env_producao > 0 THEN iop3.iop_quantidade ELSE iop3.iop_quantidade  * case when iop3.IOP_PESO = 0 THEN 1 ELSE iop3.IOP_PESO end end) ' +
         '            from item_ordemproducao iop3 ' +
         '               join ordemproducao op on (op.opr_codigo = iop3.opr_codigo) ' +
         '               join PROCESSOS_PRODUCAO pp on (iop3.iop_codigo = pp.iop_codigo) ' +
         '               join operacoes ope on (ope.ope_codigo = pp.ope_codigo) ' +
         '               JOIN PED_IT01 pi ON (pi.PED_CODIGO = op.PED_CODIGO AND IOP3.PRF_REGISTRO = pi.PRF_REGISTRO) ' +
         '                   WHERE iop3.iop_codigo=iop.iop_codigo and pp.pcp_tempo_gasto>0 ' +
         '    ) ' +
         '   )AS CustoInt ' +
         ' from item_ordemproducao iop2 ' +
         '   join ordemproducao op on (op.opr_codigo = iop2.opr_codigo) ' +
         '   join PROCESSOS_PRODUCAO pp on (iop2.iop_codigo = pp.iop_codigo) ' +
         '   join EQUIPAMENTO eq ON (eq.EQP_CODIGO = pp.EQP_CODIGO) ' +
         '   JOIN CUSTOINDUST ci ON (ci.SET_CODIGO = eq.SET_CODIGO AND ci.CIO_MES = EXTRACT(MONTH FROM nf.nf_emissao) AND ci.CIO_ANO = EXTRACT(YEAR FROM nf.nf_emissao)) ' +
         '       WHERE iop2.iop_codigo=iop.iop_codigo  AND IOP2.IOP_TEMCARGA = ''N''   )  AS Custo, ' +
         '       CASE WHEN prf_qtde_env_producao > 0 THEN iop.iop_quantidade ELSE iop.iop_quantidade  * iop.IOP_PESO END AS PesoTotal, ' +
         '       pr.PRD_UND, iop.IOP_QUANTIDADE * iop.IOP_PRECO AS Total,     pe.PED_CODIGO, iop.IOP_NORDEM, pr.PRD_REFER, pi.PRF_PRDDESCRI, cl.cli_razao, sv.srv_nome, ' +
         '        iop.IOP_QUANTIDADE,     CASE WHEN prf_qtde_env_producao > 0 THEN iop.iop_quantidade ELSE iop.IOP_PESO  end AS iop_peso , ' +
         '         pi.PRF_QTDE_ENV_PRODUCAO,     iop.IOP_PRECO,     iop.IOP_PRECO * iop.IOP_QUANTIDADE ValorVenda ' +
         '         from item_ordemproducao iop ' +
         '         join ordemproducao op on (op.opr_codigo = iop.opr_codigo) ' +
         '         join ped0000 pe on (pe.ped_codigo = op.ped_codigo) ' +
         '         join cli0000 cl on (cl.cli_codigo = op.cli_codigo) ' +
         '         join prd0000 pr on (pr.prd_codigo = iop.prd_codigo) ' +
         '         join PROCESSOS_PRODUCAO pp on (iop.iop_codigo = pp.iop_codigo) ' +
         '         join operacoes ope on (ope.ope_codigo = pp.ope_codigo) ' +
         '         LEFT join EQUIPAMENTO eq ON (eq.EQP_CODIGO = pp.EQP_CODIGO) ' +
         '         LEFT join SETOR se ON (se.SET_CODIGO = eq.SET_CODIGO) ' +
         '         join processos po ON (po.PRO_CODIGO = iop.PRO_CODIGO) ' +
         '         join servico sv on (sv.srv_codigo = po.srv_codigo) ' +
         '         JOIN PED_IT01 pi ON (pi.PED_CODIGO = op.PED_CODIGO AND IOP.PRF_REGISTRO = pi.PRF_REGISTRO) ' +
         '         LEFT JOIN CUSTOINDUST ci ON (ci.SET_CODIGO = eq.SET_CODIGO ) ' +
         '         JOIN  NF0001 nf ON (nf.PED_CODIGO = pE.PED_CODIGO  and nf.NF_STATUS_NFE <> ''C'' ) ' +
         '         JOIN  NF_IT01 nfit on (nf.nf_notanumber = nfit.nf_it_notanumer and pi.prf_registro = nfit.prf_registro) ' +
         '         WHERE  ' +
         '           NOT exists (SELECT iop5.IOP_NORDEM ' +
         '            FROM ' +
         '              item_ordemproducao iop5 ' +
         '            JOIN ordemproducao op ON	(op.opr_codigo = iop5.opr_codigo) '+
         '            JOIN PROCESSOS_PRODUCAO pp ON	(iop5.iop_codigo = pp.iop_codigo) ' +
         '            JOIN carga ca ON	(ca.car_codigo = pp.car_codigo) ' +
         '            WHERE iop5.IOP_NORDEM = iop.IOP_NORDEM) AND iop.IOP_TEMCARGA <> ''S'' ' +
         iif(edOS.Text = '' , '' , ' AND (iop.IOP_NORDEM CONTAINING ' + QuotedStr(edOS.Text)+ ')')  +
         iif(edProdutoRefer.Text = '' , '' , ' AND (pr.PRD_REFER = ' + QuotedStr(edProdutoRefer.Text)+ ')')  +
         iif(edServicoCodigo.Text = '' , '' , ' AND (sv.SRV_CODIGO = ' + edServicoCodigo.Text+ ')') +
         iif(EdClienteCodigo.Text = '' , '' , ' AND (cl.CLI_CODIGO = ' + QuotedStr(EdClienteCodigo.Text)+ ')')  +
         iif((dtInicial.Date > 0) and (dtFinal.Date > 0) ,' AND (nf.NF_EMISSAO >= ' + DateToSQL(dtInicial.Date) + ') AND (nf.NF_EMISSAO <= ' + DateToSQL(dtFinal.Date)+ ')' , '');

        // COM CARGA E AGRUPADO
        sql3 :=
          ' UNION ALL ' +
          '  SELECT DISTINCT cl.cli_razao, pe.ped_codigo, iop.iop_nordem, '''' AS car_codigo, ' +
          '      (   SELECT ' +
//           '      sum( ( ci.cio_pv * ( (cast(datediff(minute from pp.pcp_dataini TO pp.pcp_datafim) AS float)/60) )) ' +
          '      sum( ( ci.cio_pv * cast((pp.PCP_TEMPO_GASTO*24) AS FLOAT)  )  ' +
          '      / ' +
          '      (CASE ' +
          '         WHEN (pp.car_codigo IS NULL AND  pp.pcp_tempo_gasto > 0) THEN ' +
          '           (SELECT sum( ' +
          '                        CASE ' +
          '                        WHEN pi7.prf_qtde_env_producao > 0 ' +
          '                          THEN iop7.iop_quantidade ' +
          '                          ELSE iop7.iop_quantidade * ' +
          '                                        CASE ' +
          '                                          WHEN iop7.iop_peso = 0 THEN 1 ' +
          '                                          ELSE iop7.iop_peso ' +
          '                                        END ' +
          '                        END ' +
          '                       ) ' +
          '                FROM  processos_producao pcp3 ' +
          '                  JOIN  item_ordemproducao iop7 ON   (pcp3.iop_codigo=iop7.iop_codigo) ' +
          '                  JOIN  ped_it01 pi7 ON (pi7.prf_registro=iop7.prf_registro) ' +
          '                WHERE pcp3.iop_codigo = iop2.iop_codigo ' +
          '                  AND  pcp3.pcp_tempo_gasto > 0 ' +
          '                  AND  pcp3.car_codigo IS NULL) ' +
          '         ELSE ' +
          '           (SELECT sum( ' +
          '              CASE ' +
          '                WHEN pi7.prf_qtde_env_producao > 0 THEN iop8.iop_quantidade ' +
          '                ELSE iop8.iop_quantidade * ' +
          '                                           CASE ' +
          '                                             WHEN iop8.iop_peso=0 THEN 1 ' +
          '                                             ELSE iop8.iop_peso ' +
          '                                           END ' +
          '              END  ) ' +
          '            FROM  processos_producao pcp2 ' +
          '              JOIN  item_ordemproducao iop8 ON (pcp2.iop_codigo=iop8.iop_codigo) ' +
          '              JOIN  ped_it01 pi7 ON (pi7.prf_registro=iop8.prf_registro) ' +
          '            WHERE pcp2.car_codigo =pp.car_codigo ' +
          '              AND  pcp2.pcp_tempo_gasto > 0 ) ' +
          '        END ) ' +
          '     ) AS custoint ' +
          '     FROM  item_ordemproducao iop2 ' +
          '       JOIN  processos_producao pp ON (iop2.iop_codigo = pp.iop_codigo) ' +
          '       JOIN  equipamento eq ON (eq.eqp_codigo = pp.eqp_codigo AND  eq.eqp_certificado IS NULL) ' +
          '       JOIN  custoindust ci ON (ci.set_codigo = eq.set_codigo  AND  ci.cio_mes = extract(month FROM nf.nf_emissao)  AND  ci.cio_ano = extract(year FROM nf.nf_emissao)) ' +
          '     WHERE iop2.iop_codigo = iop.iop_codigo AND iop2.IOP_TEMCARGA = ''S'' ' +
          '       AND  eq.eqp_certificado IS NULL ' +
          '       AND  pp.pcp_tempo_gasto > 0 ' +
          '       AND OPE.ope_temresultado = ''N'') AS custo, ' +
          '     CASE ' +
          '       WHEN prf_qtde_env_producao > 0 THEN iop.iop_quantidade ' +
          '       ELSE iop.iop_quantidade * iop.iop_peso ' +
          '     END AS pesototal, ' +
          '      pr.prd_und, ' +
          '      iop.iop_quantidade * iop.iop_preco AS total, ' +
          '      pe.ped_codigo, ' +
          '      iop.iop_nordem, ' +
          '      pr.prd_refer, ' +
          '      pi.prf_prddescri, ' +
          '      cl.cli_razao, ' +
          '      sv.srv_nome, ' +
          '      iop.iop_quantidade, ' +
          '      CASE ' +
          '     WHEN prf_qtde_env_producao > 0 THEN iop.iop_quantidade ' +
          '     ELSE iop.iop_peso ' +
          '      END AS iop_peso , ' +
          '      pi.prf_qtde_env_producao, ' +
          '      iop.iop_preco, ' +
          '      iop.iop_preco * iop.iop_quantidade valorvenda ' +
          '  FROM  item_ordemproducao iop ' +
          '  JOIN  ordemproducao op ON (op.opr_codigo = iop.opr_codigo) ' +
          '  JOIN  ped0000 pe ON (pe.ped_codigo = op.ped_codigo) ' +
          '  JOIN  cli0000 cl ON (cl.cli_codigo = op.cli_codigo) ' +
          '  JOIN  prd0000 pr ON (pr.prd_codigo = iop.prd_codigo) ' +
          '  JOIN  processos_producao pp ON (iop.iop_codigo = pp.iop_codigo AND  pp.pcp_tempo_gasto > 0) ' +
          '  JOIN  operacoes ope ON (ope.ope_codigo = pp.ope_codigo) ' +
          '  JOIN  equipamento eq ON (eq.eqp_codigo = pp.eqp_codigo) ' +
          '  JOIN  setor se ON (se.set_codigo = eq.set_codigo) ' +
          '  JOIN  processos po ON (po.pro_codigo = iop.pro_codigo) ' +
          '  JOIN  servico sv ON (sv.srv_codigo = po.srv_codigo) ' +
          '  JOIN  ped_it01 pi ON (pi.ped_codigo = op.ped_codigo AND  iop.prf_registro = pi.prf_registro) ' +
          '  JOIN  custoindust ci ON (ci.set_codigo = eq.set_codigo) ' +
          '  JOIN  NF0001 nf ON (nf.PED_CODIGO = pE.PED_CODIGO_AGRUPADO  and nf.NF_STATUS_NFE <> ''C'' )' +
          '  WHERE ' +
          '        iop.IOP_TEMCARGA = ''S'' ' +
          '  AND  (pp.pcp_status = ''F'')  ' +
          '  AND  (pp.pcp_tempo_gasto > 0) ' +
          '  AND  (eq.eqp_certificado IS NULL) ' +
          '  AND  (pp.pcp_dataini <> pp.pcp_datafim) ' +
          '  AND  (OPE.ope_temresultado =''N'') ' +
          iif(edOS.Text = '' , '' , ' AND (iop.IOP_NORDEM CONTAINING ' + QuotedStr(edOS.Text)+ ')')  +
          iif(edCarga.Text = '' , '' , ' AND  (ca.CAR_CODIGO = ' + QuotedStr(edCarga.Text)+ ')') +
          iif(edProdutoRefer.Text = '' , '' , ' AND (pr.PRD_REFER = ' + QuotedStr(edProdutoRefer.Text)+ ')')  +
          iif(edServicoCodigo.Text = '' , '' , ' AND (sv.SRV_CODIGO = ' + edServicoCodigo.Text+ ')') +
          iif(EdClienteCodigo.Text = '' , '' , ' AND (cl.CLI_CODIGO = ' + QuotedStr(EdClienteCodigo.Text)+ ')') +
          iif((dtInicial.Date > 0) and (dtFinal.Date > 0) ,' AND (nf.NF_EMISSAO >= ' + DateToSQL(dtInicial.Date) + ') AND (nf.NF_EMISSAO <= ' + DateToSQL(dtFinal.Date)+ ')' , '') ;

        // sem carga e agrupado
        sql4 :=
         ' UNION ALL ' +
         ' SELECT DISTINCT cl.CLI_RAZAO, pe.ped_codigo, iop.iop_nordem,  '''' as car_codigo,     ' +
         '    ( SELECT         ' +
//         '     sum( (ci.CIO_PV * ((CAST(datediff(MINUTE from pp.PCP_DATAINI to pp.PCP_DATAFIM) AS float)/60) )) '+
         '     sum( ( ci.cio_pv * cast((pp.PCP_TEMPO_GASTO*24) AS FLOAT)  )  '+
         '     / ' +
         '    ( SELECT SUM(CASE WHEN prf_qtde_env_producao > 0 THEN iop3.iop_quantidade ELSE iop3.iop_quantidade  * case when iop3.IOP_PESO = 0 THEN 1 ELSE iop3.IOP_PESO end end) ' +
         '            from item_ordemproducao iop3 ' +
         '               join ordemproducao op on (op.opr_codigo = iop3.opr_codigo) ' +
         '               join PROCESSOS_PRODUCAO pp on (iop3.iop_codigo = pp.iop_codigo) ' +
         '               join operacoes ope on (ope.ope_codigo = pp.ope_codigo) ' +
         '               JOIN PED_IT01 pi ON (pi.PED_CODIGO = op.PED_CODIGO AND IOP3.PRF_REGISTRO = pi.PRF_REGISTRO) ' +
         '                   WHERE iop3.iop_codigo=iop.iop_codigo and pp.pcp_tempo_gasto>0 ' +
         '    ) ' +
         '   )AS CustoInt ' +
         ' from item_ordemproducao iop2 ' +
         '   join ordemproducao op on (op.opr_codigo = iop2.opr_codigo) ' +
         '   join PROCESSOS_PRODUCAO pp on (iop2.iop_codigo = pp.iop_codigo) ' +
         '   join EQUIPAMENTO eq ON (eq.EQP_CODIGO = pp.EQP_CODIGO) ' +
         '   JOIN CUSTOINDUST ci ON (ci.SET_CODIGO = eq.SET_CODIGO AND ci.CIO_MES = EXTRACT(MONTH FROM nf.nf_emissao) AND ci.CIO_ANO = EXTRACT(YEAR FROM nf.nf_emissao)) ' +
         '       WHERE iop2.iop_codigo=iop.iop_codigo   AND iop2.IOP_TEMCARGA = ''N''  )  AS Custo, ' +
         '       CASE WHEN prf_qtde_env_producao > 0 THEN iop.iop_quantidade ELSE iop.iop_quantidade  * iop.IOP_PESO END AS PesoTotal, ' +
         '       pr.PRD_UND, iop.IOP_QUANTIDADE * iop.IOP_PRECO AS Total,     pe.PED_CODIGO, iop.IOP_NORDEM, pr.PRD_REFER, pi.PRF_PRDDESCRI, cl.cli_razao, sv.srv_nome, ' +
         '        iop.IOP_QUANTIDADE,     CASE WHEN prf_qtde_env_producao > 0 THEN iop.iop_quantidade ELSE iop.IOP_PESO  end AS iop_peso , ' +
         '         pi.PRF_QTDE_ENV_PRODUCAO,     iop.IOP_PRECO,     iop.IOP_PRECO * iop.IOP_QUANTIDADE ValorVenda ' +
         '         from item_ordemproducao iop ' +
         '         join ordemproducao op on (op.opr_codigo = iop.opr_codigo) ' +
         '         join ped0000 pe on (pe.ped_codigo = op.ped_codigo) ' +
         '         join cli0000 cl on (cl.cli_codigo = op.cli_codigo) ' +
         '         join prd0000 pr on (pr.prd_codigo = iop.prd_codigo) ' +
         '         join PROCESSOS_PRODUCAO pp on (iop.iop_codigo = pp.iop_codigo) ' +
         '         join operacoes ope on (ope.ope_codigo = pp.ope_codigo) ' +
         '         LEFT join EQUIPAMENTO eq ON (eq.EQP_CODIGO = pp.EQP_CODIGO) ' +
         '         LEFT join SETOR se ON (se.SET_CODIGO = eq.SET_CODIGO) ' +
         '         join processos po ON (po.PRO_CODIGO = iop.PRO_CODIGO) ' +
         '         join servico sv on (sv.srv_codigo = po.srv_codigo) ' +
         '         JOIN PED_IT01 pi ON (pi.PED_CODIGO = op.PED_CODIGO AND IOP.PRF_REGISTRO = pi.PRF_REGISTRO) ' +
         '         LEFT JOIN CUSTOINDUST ci ON (ci.SET_CODIGO = eq.SET_CODIGO ) ' +
         '         JOIN MODL_PROCESSOS mo_po ON (mo_po.PRO_CODIGO = pr.PRO_CODIGO) ' +
         '         JOIN  NF0001 nf ON (nf.PED_CODIGO = pE.PED_CODIGO_AGRUPADO  and nf.NF_STATUS_NFE <> ''C'' ) ' +
         '         WHERE  ' +
         '           NOT exists (SELECT iop5.IOP_NORDEM ' +
         '            FROM ' +
         '              item_ordemproducao iop5 ' +
         '            JOIN ordemproducao op ON	(op.opr_codigo = iop5.opr_codigo) '+
         '            JOIN PROCESSOS_PRODUCAO pp ON	(iop5.iop_codigo = pp.iop_codigo) ' +
         '            WHERE iop5.IOP_NORDEM = iop.IOP_NORDEM AND iop5.IOP_TEMCARGA = ''S'') ' +
         iif(edOS.Text = '' , '' , ' AND (iop.IOP_NORDEM CONTAINING ' + QuotedStr(edOS.Text)+ ')')  +
         iif(edProdutoRefer.Text = '' , '' , ' AND (pr.PRD_REFER = ' + QuotedStr(edProdutoRefer.Text)+ ')')  +
         iif(edServicoCodigo.Text = '' , '' , ' AND (sv.SRV_CODIGO = ' + edServicoCodigo.Text+ ')') +
         iif(EdClienteCodigo.Text = '' , '' , ' AND (cl.CLI_CODIGO = ' + QuotedStr(EdClienteCodigo.Text)+ ')')  +
         iif((dtInicial.Date > 0) and (dtFinal.Date > 0) ,' AND (nf.NF_EMISSAO >= ' + DateToSQL(dtInicial.Date) + ') AND (nf.NF_EMISSAO <= ' + DateToSQL(dtFinal.Date)+ ')' , '') +
         ' ORDER BY 1,2,3 ';

      qAux.Close;
      qAux.SQL.Clear;
      qAux.SQL.Text := sql1 + sql2 + sql3 + sql4;
      if DBInicio.IsDesenvolvimento then
        CopyToClipBoard(qAux.SQL.Text);
      qAux.Open;
    Except
      on E: Exception do
        begin
          ShowMessage('Inconsistência na base de dados. ' + #13 +  #13 + e.Message);
          fmAnimacao.Close;
          exit;
        end;
    end;
  finally
    fmAnimacao.Close;
  end;
  if chkPDF.Checked then
  begin
    frxPDFExport1.ShowDialog  := True;
    frxOS.PrepareReport();
    frxOS.Export(frxPDFExport1);
    MessageDlg('Arquivo gravado com sucesso.', mtInformation, [mbOK], 0 );
  end
  else if chkExcel.Checked then
  begin
    lista := TStringList.Create;
    lista.Clear;
    lista.add('CLI_RAZAO');
    lista.add('IOP_NORDEM');
    lista.add('PRD_REFER');
    lista.add('PRF_PRDDESCRI');
    lista.add('SRV_NOME');
    lista.add('IOP_QUANTIDADE');
    lista.add('IOP_PESO');
    lista.add('PESOTOTAL');
    lista.add('IOP_PRECO');
    lista.add('PRD_UND');
    lista.add('TOTAL');
    lista.add('CUSTO');
    lista.add('LUCRO'); // *
    lista.add('PERCENTUAL'); // *

    // lista.add('PED_CODIGO');
    // lista.add('PRF_QTDE_ENV_PRODUCAO');
    // lista.add('VALORVENDA');

    // CriaCSV(dsAux, lista);


    gravar := TStringList.Create;
    SaveDialog := TSaveDialog.Create(Self);
    linha := '';
    for j := 0 to lista.Count -1 do
    begin
      if lista[j] = 'LUCRO' then
        linha := linha + 'Lucro'
      else
      if lista[j] = 'PERCENTUAL' then
        linha := linha + 'Percentual %'
      else
        linha := linha + dsAux.DataSet.FieldByName(lista[j]).DisplayLabel;
      if j <> lista.Count -1 then
        linha := linha + ';';
    end;
    gravar.add(linha);
    dsAux.DataSet.First;
    while not dsAux.DataSet.Eof do
    begin
      linha := '';
      for j := 0 to lista.Count -1 do
      begin
      if lista[j] = 'LUCRO' then
      begin
        total := dsAux.DataSet.FieldByName('TOTAL').Asfloat;
        custo := dsAux.DataSet.FieldByName('CUSTO').Asfloat;
        pesoTotal := dsAux.DataSet.FieldByName('PESOTOTAL').Asfloat;
        linha := linha + FloatToStr( total - (custo * pesoTotal)    )
      end
      else
      if lista[j] = 'PERCENTUAL' then
      begin
        total := dsAux.DataSet.FieldByName('TOTAL').Asfloat;
        custo := dsAux.DataSet.FieldByName('CUSTO').Asfloat;
        pesoTotal := dsAux.DataSet.FieldByName('PESOTOTAL').Asfloat;
        linha := linha + FloatToStr( (total - (custo * pesoTotal)) / total * 100  )
      end
      else
      if dsAux.DataSet.FieldByName(lista[j]).FieldName = 'CUSTO' then
        linha := linha + FloatToStr(dsAux.DataSet.FieldByName(lista[j]).Asfloat * dsAux.DataSet.FieldByName('PESOTOTAL').Asfloat )
      else
        linha := linha + dsAux.DataSet.FieldByName(lista[j]).AsString;
      if j <> lista.Count -1 then
        linha := linha + ';';
      end;
      gravar.add(linha);
      dsAux.DataSet.Next;
    end;

    SaveDialog.Filter := 'Dados Separados por Ponto e Vírgula |*.csv ';
    SaveDialog.title := 'Exportar Dados';
    SaveDialog.DefaultExt := '.csv';
    if SaveDialog.Execute then
    begin
      gravar.SaveToFile(SaveDialog.FileName);
      MessageDlg('Arquivo gravado com sucesso!', mtInformation, [mbOK], 0);
    end;



  end
  else
    frxOS.ShowReport();
end;

procedure TfrmRentabilidadeOS.chkExcelClick(Sender: TObject);
begin
  inherited;
  if chkExcel.Checked then
    chkPDF.Checked := False;
end;

procedure TfrmRentabilidadeOS.chkPDFClick(Sender: TObject);
begin
  inherited;
  if chkPDF.Checked then
    chkExcel.Checked := False;
end;

procedure TfrmRentabilidadeOS.EdClienteCodigoExit(Sender: TObject);
begin
  inherited;
  EdClienteCodigo.Text := strzero(EdClienteCodigo.Text, 5);
  edCliente.idRetorno := EdClienteCodigo.Text;
end;

procedure TfrmRentabilidadeOS.edClienteSelect(Sender: TObject);
begin
  inherited;
  if edCliente.idRetorno<>'' Then
    edClienteCodigo.Text := edCliente.idRetorno
  else
     edClienteCodigo.clear;
end;

procedure TfrmRentabilidadeOS.edServicoCodigoExit(Sender: TObject);
begin
  inherited;
  edServico.idRetorno := edServicoCodigo.Text;
end;

procedure TfrmRentabilidadeOS.edServicoSelect(Sender: TObject);
begin
  inherited;
  if edServico.idRetorno<>'' Then
    edServicoCodigo.Text := edServico.idRetorno
  else
     edServicoCodigo.clear;
end;

procedure TfrmRentabilidadeOS.edProdutoReferExit(Sender: TObject);
begin
  inherited;
  edProduto.idRetorno := edProdutoRefer.Text;

end;

procedure TfrmRentabilidadeOS.edProdutoSelect(Sender: TObject);
begin
  inherited;
  if edProduto.idRetorno<>'' Then
    edProdutoRefer.Text := edProduto.idRetorno
  else
     edProdutoRefer.clear;
end;

procedure TfrmRentabilidadeOS.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
  frmRentabilidadeOS := nil;
end;

procedure TfrmRentabilidadeOS.FormShow(Sender: TObject);
begin
  inherited;
  // edCliente.idRetorno := '00513';
  // dtInicial.Text := '01/01/2021';
  // dtFinal.Text := '05/01/2021';
end;

procedure TfrmRentabilidadeOS.frxOSBeginDoc(Sender: TObject);
begin
  inherited;
  TfrxPictureView(frxOS.FindObject('LogoEmpresa')).Picture.Assign(DBInicio.Empresa.LOGO);
end;

procedure TfrmRentabilidadeOS.frxOSGetValue(const VarName: string; var Value: Variant);
begin
  inherited;
  if (VarName  = 'EMPRESA') then
  begin
     Value := DBInicio.Empresa.RAZAO;
  end;
  if (VarName  = 'DATAI') then
  begin
    Value := dtInicial.Text;
  end;
  if (VarName  = 'DATAF') then
  begin
    Value := dtFinal.Text;
  end;

end;

procedure TfrmRentabilidadeOS.qAuxBeforeScroll(DataSet: TDataSet);
begin
  inherited;
  carga := qAux.FieldByName('car_codigo').AsString;
end;

end.
