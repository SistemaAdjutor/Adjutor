inherited frmConfirmaDemanda: TfrmConfirmaDemanda
  Caption = 'frmConfirmaDemanda'
  ClientHeight = 331
  ClientWidth = 684
  Position = poOwnerFormCenter
  OnKeyPress = FormKeyPress
  ExplicitWidth = 692
  ExplicitHeight = 358
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnUtil: TPanel
    Top = 299
    Width = 684
    ExplicitTop = 299
    ExplicitWidth = 585
    inherited btnOk: TSpeedButton
      Left = 436
      Caption = 'Confirma'
      ExplicitLeft = 396
    end
    inherited btnCancelar: TSpeedButton
      Left = 561
      Caption = 'Abandonar'
      ExplicitLeft = 521
    end
  end
  object cxGrid1: TcxGrid [1]
    Left = 0
    Top = 0
    Width = 684
    Height = 299
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 585
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsItens
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1Tipo: TcxGridDBColumn
        DataBinding.FieldName = 'Tipo'
        Width = 108
      end
      object cxGrid1DBTableView1PRD_REFER: TcxGridDBColumn
        Caption = 'Refer'#234'ncia'
        DataBinding.FieldName = 'PRD_REFER'
        VisibleForCustomization = False
      end
      object cxGrid1DBTableView1DESCRICAO: TcxGridDBColumn
        Caption = 'Descri'#231#227'o'
        DataBinding.FieldName = 'DESCRICAO'
        VisibleForCustomization = False
        Width = 188
      end
      object cxGrid1DBTableView1PRD_UND: TcxGridDBColumn
        Caption = 'Unidade'
        DataBinding.FieldName = 'PRD_UND'
        VisibleForCustomization = False
        Width = 59
      end
      object cxGrid1DBTableView1PRF_QTDE: TcxGridDBColumn
        Caption = 'Quantidade'
        DataBinding.FieldName = 'PRF_QTDE'
        VisibleForCustomization = False
      end
      object cxGrid1DBTableView1PTI_SIGLA: TcxGridDBColumn
        Caption = 'Sigla'
        DataBinding.FieldName = 'PTI_SIGLA'
        VisibleForCustomization = False
        Width = 64
      end
      object cxGrid1DBTableView1REGISTRO_SEQ: TcxGridDBColumn
        DataBinding.FieldName = 'REGISTRO_SEQ'
        Visible = False
        VisibleForCustomization = False
      end
      object cxGrid1DBTableView1PRD_CODIGO: TcxGridDBColumn
        DataBinding.FieldName = 'PRD_CODIGO'
        Visible = False
        VisibleForCustomization = False
      end
      object cxGrid1DBTableView1ITT_REGISTRO: TcxGridDBColumn
        DataBinding.FieldName = 'ITT_REGISTRO'
        Visible = False
        VisibleForCustomization = False
      end
      object cxGrid1DBTableView1PRF_TABPRECO: TcxGridDBColumn
        DataBinding.FieldName = 'PRF_TABPRECO'
        Visible = False
        VisibleForCustomization = False
      end
      object cxGrid1DBTableView1PRDL_REGISTRO: TcxGridDBColumn
        DataBinding.FieldName = 'PRDL_REGISTRO'
        Visible = False
        VisibleForCustomization = False
      end
      object cxGrid1DBTableView1AMX_CODIGO_DESTINO: TcxGridDBColumn
        DataBinding.FieldName = 'AMX_CODIGO_DESTINO'
        Visible = False
        VisibleForCustomization = False
      end
      object cxGrid1DBTableView1PED_CODIGO: TcxGridDBColumn
        DataBinding.FieldName = 'PED_CODIGO'
        Visible = False
        VisibleForCustomization = False
      end
      object cxGrid1DBTableView1PRF_REGISTRO: TcxGridDBColumn
        DataBinding.FieldName = 'PRF_REGISTRO'
        Visible = False
        VisibleForCustomization = False
      end
      object cxGrid1DBTableView1PRDD_SIGLA: TcxGridDBColumn
        DataBinding.FieldName = 'PRDD_SIGLA'
        Visible = False
        VisibleForCustomization = False
      end
      object cxGrid1DBTableView1PRD_DESCRI: TcxGridDBColumn
        DataBinding.FieldName = 'PRD_DESCRI'
        Visible = False
        VisibleForCustomization = False
      end
      object cxGrid1DBTableView1PRDD_REGISTRO: TcxGridDBColumn
        DataBinding.FieldName = 'PRDD_REGISTRO'
        Visible = False
        VisibleForCustomization = False
      end
      object cxGrid1DBTableView1PRDCO_CODIGO_ORIGINAL: TcxGridDBColumn
        DataBinding.FieldName = 'PRDCO_CODIGO_ORIGINAL'
        Visible = False
        VisibleForCustomization = False
      end
      object cxGrid1DBTableView1PRF_PRODUTO_AGREGADO: TcxGridDBColumn
        DataBinding.FieldName = 'PRF_PRODUTO_AGREGADO'
        Visible = False
        VisibleForCustomization = False
      end
      object cxGrid1DBTableView1PRG_REGISTRO: TcxGridDBColumn
        DataBinding.FieldName = 'PRG_REGISTRO'
        Visible = False
        VisibleForCustomization = False
      end
      object cxGrid1DBTableView1PRF_COMPL_DESCRI: TcxGridDBColumn
        DataBinding.FieldName = 'PRF_COMPL_DESCRI'
        Visible = False
        VisibleForCustomization = False
      end
      object cxGrid1DBTableView1PRF_IDESCTO1: TcxGridDBColumn
        DataBinding.FieldName = 'PRF_IDESCTO1'
        Visible = False
        VisibleForCustomization = False
      end
      object cxGrid1DBTableView1PRF_IDESCTO2: TcxGridDBColumn
        DataBinding.FieldName = 'PRF_IDESCTO2'
        Visible = False
        VisibleForCustomization = False
      end
      object cxGrid1DBTableView1PRF_VALOR_ST: TcxGridDBColumn
        DataBinding.FieldName = 'PRF_VALOR_ST'
        Visible = False
        VisibleForCustomization = False
      end
      object cxGrid1DBTableView1PRF_QTDEFAT: TcxGridDBColumn
        DataBinding.FieldName = 'PRF_QTDEFAT'
        Visible = False
        VisibleForCustomization = False
      end
      object cxGrid1DBTableView1PRF_ACRESCIMO: TcxGridDBColumn
        DataBinding.FieldName = 'PRF_ACRESCIMO'
        Visible = False
        VisibleForCustomization = False
      end
      object cxGrid1DBTableView1PRF_PRECO_BRUTO: TcxGridDBColumn
        DataBinding.FieldName = 'PRF_PRECO_BRUTO'
        Visible = False
        VisibleForCustomization = False
      end
      object cxGrid1DBTableView1DESCONTO: TcxGridDBColumn
        DataBinding.FieldName = 'DESCONTO'
        Visible = False
        VisibleForCustomization = False
      end
      object cxGrid1DBTableView1PRF_PRECO: TcxGridDBColumn
        DataBinding.FieldName = 'PRF_PRECO'
        Visible = False
        VisibleForCustomization = False
      end
      object cxGrid1DBTableView1PRF_CUSTO: TcxGridDBColumn
        DataBinding.FieldName = 'PRF_CUSTO'
        Visible = False
        VisibleForCustomization = False
      end
      object cxGrid1DBTableView1MARKUP: TcxGridDBColumn
        DataBinding.FieldName = 'MARKUP'
        Visible = False
        VisibleForCustomization = False
      end
      object cxGrid1DBTableView1TOTAL: TcxGridDBColumn
        DataBinding.FieldName = 'TOTAL'
        Visible = False
        VisibleForCustomization = False
      end
      object cxGrid1DBTableView1QTDEKIT: TcxGridDBColumn
        DataBinding.FieldName = 'QTDEKIT'
        Visible = False
        VisibleForCustomization = False
      end
      object cxGrid1DBTableView1PRF_IPIALIQ: TcxGridDBColumn
        DataBinding.FieldName = 'PRF_IPIALIQ'
        Visible = False
        VisibleForCustomization = False
      end
      object cxGrid1DBTableView1PRF_ITEMCOMIS: TcxGridDBColumn
        DataBinding.FieldName = 'PRF_ITEMCOMIS'
        Visible = False
        VisibleForCustomization = False
      end
      object cxGrid1DBTableView1PRF_B2B_PEDIDO_COMPRA: TcxGridDBColumn
        DataBinding.FieldName = 'PRF_B2B_PEDIDO_COMPRA'
        Visible = False
        VisibleForCustomization = False
      end
      object cxGrid1DBTableView1PRF_B2B_ITEM_PEDIDO_COMPRA: TcxGridDBColumn
        DataBinding.FieldName = 'PRF_B2B_ITEM_PEDIDO_COMPRA'
        Visible = False
        VisibleForCustomization = False
      end
      object cxGrid1DBTableView1DI: TcxGridDBColumn
        DataBinding.FieldName = 'DI'
        Visible = False
        VisibleForCustomization = False
      end
      object cxGrid1DBTableView1PRD_PESOLIQ: TcxGridDBColumn
        DataBinding.FieldName = 'PRD_PESOLIQ'
        Visible = False
        VisibleForCustomization = False
      end
      object cxGrid1DBTableView1PRD_PESOKG: TcxGridDBColumn
        DataBinding.FieldName = 'PRD_PESOKG'
        Visible = False
        VisibleForCustomization = False
      end
      object cxGrid1DBTableView1PRD_ORIGEM: TcxGridDBColumn
        DataBinding.FieldName = 'PRD_ORIGEM'
        Visible = False
        VisibleForCustomization = False
      end
      object cxGrid1DBTableView1PRF_QTDE_ENV_PRODUCAO: TcxGridDBColumn
        DataBinding.FieldName = 'PRF_QTDE_ENV_PRODUCAO'
        Visible = False
        VisibleForCustomization = False
      end
      object cxGrid1DBTableView1PRG_DESCRICAO: TcxGridDBColumn
        DataBinding.FieldName = 'PRG_DESCRICAO'
        Visible = False
        VisibleForCustomization = False
      end
      object cxGrid1DBTableView1PRD_PRODSERV: TcxGridDBColumn
        DataBinding.FieldName = 'PRD_PRODSERV'
        Visible = False
        VisibleForCustomization = False
      end
      object cxGrid1DBTableView1ID_DIRETIVAS: TcxGridDBColumn
        DataBinding.FieldName = 'ID_DIRETIVAS'
        Visible = False
        VisibleForCustomization = False
      end
      object cxGrid1DBTableView1USOU_VERBA: TcxGridDBColumn
        DataBinding.FieldName = 'USOU_VERBA'
        Visible = False
        VisibleForCustomization = False
      end
      object cxGrid1DBTableView1VALOR_VERBA: TcxGridDBColumn
        DataBinding.FieldName = 'VALOR_VERBA'
        Visible = False
        VisibleForCustomization = False
      end
      object cxGrid1DBTableView1PRF_REGISTRO_VINCULADO: TcxGridDBColumn
        DataBinding.FieldName = 'PRF_REGISTRO_VINCULADO'
        Visible = False
        VisibleForCustomization = False
      end
      object cxGrid1DBTableView1NCM_CODIGO: TcxGridDBColumn
        DataBinding.FieldName = 'NCM_CODIGO'
        Visible = False
        VisibleForCustomization = False
      end
      object cxGrid1DBTableView1PRF_PRAZO_DIAS: TcxGridDBColumn
        DataBinding.FieldName = 'PRF_PRAZO_DIAS'
        Visible = False
        VisibleForCustomization = False
      end
      object cxGrid1DBTableView1PRF_PESOKG: TcxGridDBColumn
        DataBinding.FieldName = 'PRF_PESOKG'
        Visible = False
        VisibleForCustomization = False
      end
      object cxGrid1DBTableView1PRF_MARGEM_PRODUTO: TcxGridDBColumn
        DataBinding.FieldName = 'PRF_MARGEM_PRODUTO'
        Visible = False
        VisibleForCustomization = False
      end
      object cxGrid1DBTableView1PRF_ICMSALIQ: TcxGridDBColumn
        DataBinding.FieldName = 'PRF_ICMSALIQ'
        Visible = False
        VisibleForCustomization = False
      end
      object cxGrid1DBTableView1PRF_VALOR_ICMS: TcxGridDBColumn
        DataBinding.FieldName = 'PRF_VALOR_ICMS'
        Visible = False
        VisibleForCustomization = False
      end
      object cxGrid1DBTableView1PRF_QTDEPEND: TcxGridDBColumn
        DataBinding.FieldName = 'PRF_QTDEPEND'
        Visible = False
        VisibleForCustomization = False
      end
      object cxGrid1DBTableView1PRF_PRODUTO_SEMVALOR: TcxGridDBColumn
        DataBinding.FieldName = 'PRF_PRODUTO_SEMVALOR'
        Visible = False
        VisibleForCustomization = False
      end
      object cxGrid1DBTableView1KIT_VIRTUAL: TcxGridDBColumn
        DataBinding.FieldName = 'KIT_VIRTUAL'
        Visible = False
        VisibleForCustomization = False
      end
      object cxGrid1DBTableView1PED_TIPOPECA_TERM: TcxGridDBColumn
        DataBinding.FieldName = 'PED_TIPOPECA_TERM'
        Visible = False
        VisibleForCustomization = False
      end
      object cxGrid1DBTableView1PED_MATERIAL_TERM: TcxGridDBColumn
        DataBinding.FieldName = 'PED_MATERIAL_TERM'
        Visible = False
        VisibleForCustomization = False
      end
      object cxGrid1DBTableView1PED_DUREZASUPERFICIAL_TERM: TcxGridDBColumn
        DataBinding.FieldName = 'PED_DUREZASUPERFICIAL_TERM'
        Visible = False
        VisibleForCustomization = False
      end
      object cxGrid1DBTableView1PED_DUREZANUCLEO_TERM: TcxGridDBColumn
        DataBinding.FieldName = 'PED_DUREZANUCLEO_TERM'
        Visible = False
        VisibleForCustomization = False
      end
      object cxGrid1DBTableView1PED_PROFUNDIDADE_TERM: TcxGridDBColumn
        DataBinding.FieldName = 'PED_PROFUNDIDADE_TERM'
        Visible = False
        VisibleForCustomization = False
      end
      object cxGrid1DBTableView1PED_TAMANHOGRAO_TERM: TcxGridDBColumn
        DataBinding.FieldName = 'PED_TAMANHOGRAO_TERM'
        Visible = False
        VisibleForCustomization = False
      end
      object cxGrid1DBTableView1PED_EHT_TERM: TcxGridDBColumn
        DataBinding.FieldName = 'PED_EHT_TERM'
        Visible = False
        VisibleForCustomization = False
      end
      object cxGrid1DBTableView1PED_DESENHO_TERM: TcxGridDBColumn
        DataBinding.FieldName = 'PED_DESENHO_TERM'
        Visible = False
        VisibleForCustomization = False
      end
      object cxGrid1DBTableView1PRF_QUANT_TRIB: TcxGridDBColumn
        DataBinding.FieldName = 'PRF_QUANT_TRIB'
        Visible = False
        VisibleForCustomization = False
      end
      object cxGrid1DBTableView1PRD_UND_TRIB: TcxGridDBColumn
        DataBinding.FieldName = 'PRD_UND_TRIB'
        Visible = False
        VisibleForCustomization = False
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  inherited cdsEdit: TFDQuery
    SQL.Strings = (
      
        'select cast(CASE PRF_PRODUTO_AGREGADO           WHEN '#39'N'#39' THEN PR' +
        'F_REGISTRO          WHEN '#39'S'#39' THEN t1.prf_registro_vinculado|| '#39'.' +
        #39' ||  PRF_REGISTRO    END AS NUMERIC(14,10)) registro_seq,   t2.' +
        'PRD_CODIGO,t1.ITT_REGISTRO,t1.PRF_TABPRECO,       t1.PRDL_REGIST' +
        'RO,       t1.AMX_CODIGO_DESTINO,       t1.ped_codigo,        t1.' +
        'prf_registro,        t1.prd_refer,        t4.prdd_sigla,  T1.PRF' +
        '_PRDDESCRI  AS DESCRICAO,       t1.prf_qtde,        t2.prd_codig' +
        'o,       t2.prd_descri,        t1.PRDD_REGISTRO,       t1.PRDCO_' +
        'CODIGO_ORIGINAL,       COALESCE(t1.PRD_UND,t2.PRD_UND) AS PRD_UN' +
        'D,       t1.prf_produto_agregado,        t1.prg_registro,       ' +
        ' t1.prf_compl_descri,        t1.amx_codigo_destino,        t1.pr' +
        'f_idescto1,        t1.prf_idescto2,        t1.PRF_VALOR_ST,     ' +
        '   t1.prf_qtdefat,        t1.prf_acrescimo,        t1.prf_preco_' +
        'bruto,        case when (t1.prf_preco_bruto > t1.prf_preco)     ' +
        '        then (t1.prf_preco_bruto - t1.prf_preco)             els' +
        'e 0.00        end as desconto,       '
      
        't1.prf_preco, t1.prf_custo,        0.00 as markup,  CASE PRF_PRO' +
        'DUTO_AGREGADO WHEN '#39'N'#39' THEN cast(cast(t1.PRF_QTDE as numeric(15,' +
        '3)) * cast(t1.PRF_PRECO as numeric(15,5)) as numeric(18,2))     ' +
        '                                                                ' +
        '          ELSE cast(cast(t1.PRF_QTDE as numeric(15,3)) * cast(t1' +
        '.PRF_PRECO as numeric(15,5)) as numeric(18,2))*(SELECT PRF_QTDE ' +
        'FROM PED_IT01 it2 WHERE it2.PRF_REGISTRO = t1.PRF_REGISTRO_VINCU' +
        'LADO) END AS TOTAL,  (SELECT PRF_QTDE FROM PED_IT01 it2 WHERE it' +
        '2.PRF_REGISTRO = t1.PRF_REGISTRO_VINCULADO) as QtdeKit,        t' +
        '1.prf_ipialiq,        t1.prf_itemcomis,        t1.PRF_B2B_PEDIDO' +
        '_COMPRA,       t1.PRF_B2B_ITEM_PEDIDO_COMPRA,       case        ' +
        '     when ((select count(t6.pid_registro) from ped_it01_di t6 wh' +
        'ere t6.prf_registro = t1.prf_registro) > 0) then             '#39'S'#39 +
        '             else             '#39'N'#39'        end as di,        t2.pr' +
        'd_pesoliq,        t2.prd_pesokg,       T2.PRD_ORIGEM,       t1.p' +
        'rf_qtde_env_producao,       t3.PRG_DESCRICAO,       t5.pti_sigla'
      
        ',       COALESCE(t2.PRD_PRODSERV,'#39'P'#39') as  PRD_PRODSERV, ID_DIRET' +
        'IVAS,Usou_Verba, Valor_Verba,       t1.prf_registro_vinculado,  ' +
        '    '
      
        ' COALESCE(t1.NCM_CODIGO,t2.ipi_codigo) AS NCM_CODIGO, PRF_PRAZO_' +
        'DIAS,  (CASE WHEN PRF_PESOKG = 0 THEN PRD_PESOliq ELSE PRF_PESOK' +
        'G END)  as PRF_PESOKG,       '
      
        'PRF_MARGEM_PRODUTO, PRF_ICMSALIQ, PRF_VALOR_ICMS, COALESCE(prf_q' +
        'tdePend,0) AS prf_qtdePend ,      PRF_PRODUTO_SEMVALOR,  (SELECT' +
        ' CAST(COUNT(1) AS INTEGER) '
      
        'FROM PED_IT01 it2 WHERE T1.PRF_REGISTRO = IT2.PRF_REGISTRO_VINCU' +
        'LADO)  KIT_VIRTUAL,  PED_TIPOPECA_TERM, PED_MATERIAL_TERM , PED_' +
        'DUREZASUPERFICIAL_TERM, '
      
        'PED_DUREZANUCLEO_TERM , PED_PROFUNDIDADE_TERM ,  PED_TAMANHOGRAO' +
        '_TERM, PED_EHT_TERM , PED_DESENHO_TERM,   PRF_QUANT_TRIB, T2.PRD' +
        '_UND_TRIB '
      'from  ped_it01 t1  '
      
        'join  prd0000 t2 on t2.prd_codigo = t1.prd_codigo       left joi' +
        'n prd_grade t3 on (t3.prg_registro = t1.prg_registro)       '
      
        'left join prd_diretiva t4 on (t4.prdd_registro = t1.prdd_registr' +
        'o)       left join PRD_TIPO T5 on (t5.pti_codigo = t2.pti_codigo' +
        ')  '
      
        'where t1.ped_codigo = '#39'005907'#39'  AND t1.EMP_CODIGO = '#39'001'#39'  ORDER' +
        ' BY 1')
    Left = 371
    Top = 0
    object cdsEditREGISTRO_SEQ: TFMTBCDField
      FieldName = 'REGISTRO_SEQ'
      Origin = 'REGISTRO_SEQ'
      Precision = 18
      Size = 10
    end
    object cdsEditPRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      Origin = 'PRD_CODIGO'
      Required = True
      Size = 5
    end
    object cdsEditITT_REGISTRO: TIntegerField
      FieldName = 'ITT_REGISTRO'
      Origin = 'ITT_REGISTRO'
    end
    object cdsEditPRF_TABPRECO: TStringField
      FieldName = 'PRF_TABPRECO'
      Origin = 'PRF_TABPRECO'
      Size = 2
    end
    object cdsEditPRDL_REGISTRO: TIntegerField
      FieldName = 'PRDL_REGISTRO'
      Origin = 'PRDL_REGISTRO'
    end
    object cdsEditAMX_CODIGO_DESTINO: TStringField
      FieldName = 'AMX_CODIGO_DESTINO'
      Origin = 'AMX_CODIGO_DESTINO'
      Size = 4
    end
    object cdsEditPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      Origin = 'PED_CODIGO'
      Size = 7
    end
    object cdsEditPRF_REGISTRO: TIntegerField
      FieldName = 'PRF_REGISTRO'
      Origin = 'PRF_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsEditPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Origin = 'PRD_REFER'
    end
    object cdsEditPRDD_SIGLA: TStringField
      FieldName = 'PRDD_SIGLA'
      Origin = 'PRDD_SIGLA'
      Size = 5
    end
    object cdsEditDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 100
    end
    object cdsEditPRF_QTDE: TFMTBCDField
      FieldName = 'PRF_QTDE'
      Origin = 'PRF_QTDE'
      Precision = 18
      Size = 5
    end
    object cdsEditPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Origin = 'PRD_DESCRI'
      Size = 100
    end
    object cdsEditPRDD_REGISTRO: TIntegerField
      FieldName = 'PRDD_REGISTRO'
      Origin = 'PRDD_REGISTRO'
    end
    object cdsEditPRDCO_CODIGO_ORIGINAL: TStringField
      FieldName = 'PRDCO_CODIGO_ORIGINAL'
      Origin = 'PRDCO_CODIGO_ORIGINAL'
      Size = 60
    end
    object cdsEditPRD_UND: TStringField
      FieldName = 'PRD_UND'
      Origin = 'PRD_UND'
      Size = 6
    end
    object cdsEditPRF_PRODUTO_AGREGADO: TStringField
      FieldName = 'PRF_PRODUTO_AGREGADO'
      Origin = 'PRF_PRODUTO_AGREGADO'
      Size = 1
    end
    object cdsEditPRG_REGISTRO: TIntegerField
      FieldName = 'PRG_REGISTRO'
      Origin = 'PRG_REGISTRO'
    end
    object cdsEditPRF_COMPL_DESCRI: TStringField
      FieldName = 'PRF_COMPL_DESCRI'
      Origin = 'PRF_COMPL_DESCRI'
      Size = 500
    end
    object cdsEditAMX_CODIGO_DESTINO_1: TStringField
      FieldName = 'AMX_CODIGO_DESTINO_1'
      Origin = 'AMX_CODIGO_DESTINO'
      Size = 4
    end
    object cdsEditPRF_IDESCTO1: TFloatField
      FieldName = 'PRF_IDESCTO1'
      Origin = 'PRF_IDESCTO1'
    end
    object cdsEditPRF_IDESCTO2: TFloatField
      FieldName = 'PRF_IDESCTO2'
      Origin = 'PRF_IDESCTO2'
    end
    object cdsEditPRF_VALOR_ST: TFMTBCDField
      FieldName = 'PRF_VALOR_ST'
      Origin = 'PRF_VALOR_ST'
      Precision = 18
      Size = 5
    end
    object cdsEditPRF_QTDEFAT: TFMTBCDField
      FieldName = 'PRF_QTDEFAT'
      Origin = 'PRF_QTDEFAT'
      Precision = 18
      Size = 5
    end
    object cdsEditPRF_ACRESCIMO: TBCDField
      FieldName = 'PRF_ACRESCIMO'
      Origin = 'PRF_ACRESCIMO'
      Precision = 18
      Size = 2
    end
    object cdsEditPRF_PRECO_BRUTO: TFMTBCDField
      FieldName = 'PRF_PRECO_BRUTO'
      Origin = 'PRF_PRECO_BRUTO'
      Precision = 18
      Size = 5
    end
    object cdsEditDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      Precision = 18
      Size = 5
    end
    object cdsEditPRF_PRECO: TFMTBCDField
      FieldName = 'PRF_PRECO'
      Origin = 'PRF_PRECO'
      Precision = 18
      Size = 5
    end
    object cdsEditPRF_CUSTO: TFMTBCDField
      FieldName = 'PRF_CUSTO'
      Origin = 'PRF_CUSTO'
      Precision = 18
      Size = 5
    end
    object cdsEditMARKUP: TBCDField
      FieldName = 'MARKUP'
      Origin = 'MARKUP'
      Required = True
      Precision = 18
      Size = 2
    end
    object cdsEditTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      Precision = 18
      Size = 7
    end
    object cdsEditQTDEKIT: TFMTBCDField
      FieldName = 'QTDEKIT'
      Origin = 'QTDEKIT'
      Precision = 18
      Size = 5
    end
    object cdsEditPRF_IPIALIQ: TFMTBCDField
      FieldName = 'PRF_IPIALIQ'
      Origin = 'PRF_IPIALIQ'
      Precision = 18
      Size = 5
    end
    object cdsEditPRF_ITEMCOMIS: TFMTBCDField
      FieldName = 'PRF_ITEMCOMIS'
      Origin = 'PRF_ITEMCOMIS'
      Precision = 18
      Size = 5
    end
    object cdsEditPRF_B2B_PEDIDO_COMPRA: TStringField
      FieldName = 'PRF_B2B_PEDIDO_COMPRA'
      Origin = 'PRF_B2B_PEDIDO_COMPRA'
      Size = 15
    end
    object cdsEditPRF_B2B_ITEM_PEDIDO_COMPRA: TIntegerField
      FieldName = 'PRF_B2B_ITEM_PEDIDO_COMPRA'
      Origin = 'PRF_B2B_ITEM_PEDIDO_COMPRA'
    end
    object cdsEditDI: TStringField
      FieldName = 'DI'
      Origin = 'DI'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsEditPRD_PESOLIQ: TFMTBCDField
      FieldName = 'PRD_PESOLIQ'
      Origin = 'PRD_PESOLIQ'
      Precision = 18
      Size = 5
    end
    object cdsEditPRD_PESOKG: TFMTBCDField
      FieldName = 'PRD_PESOKG'
      Origin = 'PRD_PESOKG'
      Precision = 18
      Size = 5
    end
    object cdsEditPRD_ORIGEM: TIntegerField
      FieldName = 'PRD_ORIGEM'
      Origin = 'PRD_ORIGEM'
    end
    object cdsEditPRF_QTDE_ENV_PRODUCAO: TFMTBCDField
      FieldName = 'PRF_QTDE_ENV_PRODUCAO'
      Origin = 'PRF_QTDE_ENV_PRODUCAO'
      Precision = 18
      Size = 5
    end
    object cdsEditPRG_DESCRICAO: TStringField
      FieldName = 'PRG_DESCRICAO'
      Origin = 'PRG_DESCRICAO'
      Size = 100
    end
    object cdsEditPTI_SIGLA: TStringField
      FieldName = 'PTI_SIGLA'
      Origin = 'PTI_SIGLA'
      Size = 2
    end
    object cdsEditPRD_PRODSERV: TStringField
      FieldName = 'PRD_PRODSERV'
      Origin = 'PRD_PRODSERV'
      Size = 1
    end
    object cdsEditID_DIRETIVAS: TIntegerField
      FieldName = 'ID_DIRETIVAS'
      Origin = 'ID_DIRETIVAS'
    end
    object cdsEditUSOU_VERBA: TStringField
      FieldName = 'USOU_VERBA'
      Origin = 'USOU_VERBA'
      FixedChar = True
      Size = 1
    end
    object cdsEditVALOR_VERBA: TFMTBCDField
      FieldName = 'VALOR_VERBA'
      Origin = 'VALOR_VERBA'
      Precision = 18
      Size = 5
    end
    object cdsEditPRF_REGISTRO_VINCULADO: TIntegerField
      FieldName = 'PRF_REGISTRO_VINCULADO'
      Origin = 'PRF_REGISTRO_VINCULADO'
    end
    object cdsEditNCM_CODIGO: TStringField
      FieldName = 'NCM_CODIGO'
      Origin = 'NCM_CODIGO'
      Size = 8
    end
    object cdsEditPRF_PRAZO_DIAS: TIntegerField
      FieldName = 'PRF_PRAZO_DIAS'
      Origin = 'PRF_PRAZO_DIAS'
    end
    object cdsEditPRF_PESOKG: TFMTBCDField
      FieldName = 'PRF_PESOKG'
      Origin = 'PRF_PESOKG'
      Precision = 18
      Size = 5
    end
    object cdsEditPRF_MARGEM_PRODUTO: TFMTBCDField
      FieldName = 'PRF_MARGEM_PRODUTO'
      Origin = 'PRF_MARGEM_PRODUTO'
      Precision = 18
      Size = 5
    end
    object cdsEditPRF_ICMSALIQ: TFMTBCDField
      FieldName = 'PRF_ICMSALIQ'
      Origin = 'PRF_ICMSALIQ'
      Precision = 18
      Size = 5
    end
    object cdsEditPRF_VALOR_ICMS: TFMTBCDField
      FieldName = 'PRF_VALOR_ICMS'
      Origin = 'PRF_VALOR_ICMS'
      Precision = 18
      Size = 5
    end
    object cdsEditPRF_QTDEPEND: TFMTBCDField
      FieldName = 'PRF_QTDEPEND'
      Origin = 'PRF_QTDEPEND'
      Precision = 18
      Size = 5
    end
    object cdsEditPRF_PRODUTO_SEMVALOR: TStringField
      FieldName = 'PRF_PRODUTO_SEMVALOR'
      Origin = 'PRF_PRODUTO_SEMVALOR'
      Size = 1
    end
    object cdsEditKIT_VIRTUAL: TIntegerField
      FieldName = 'KIT_VIRTUAL'
      Origin = 'KIT_VIRTUAL'
    end
    object cdsEditPED_TIPOPECA_TERM: TStringField
      FieldName = 'PED_TIPOPECA_TERM'
      Origin = 'PED_TIPOPECA_TERM'
      Size = 30
    end
    object cdsEditPED_MATERIAL_TERM: TStringField
      FieldName = 'PED_MATERIAL_TERM'
      Origin = 'PED_MATERIAL_TERM'
      Size = 15
    end
    object cdsEditPED_DUREZASUPERFICIAL_TERM: TStringField
      FieldName = 'PED_DUREZASUPERFICIAL_TERM'
      Origin = 'PED_DUREZASUPERFICIAL_TERM'
      Size = 30
    end
    object cdsEditPED_DUREZANUCLEO_TERM: TStringField
      FieldName = 'PED_DUREZANUCLEO_TERM'
      Origin = 'PED_DUREZANUCLEO_TERM'
      Size = 30
    end
    object cdsEditPED_PROFUNDIDADE_TERM: TStringField
      FieldName = 'PED_PROFUNDIDADE_TERM'
      Origin = 'PED_PROFUNDIDADE_TERM'
      Size = 35
    end
    object cdsEditPED_TAMANHOGRAO_TERM: TStringField
      FieldName = 'PED_TAMANHOGRAO_TERM'
      Origin = 'PED_TAMANHOGRAO_TERM'
    end
    object cdsEditPED_EHT_TERM: TStringField
      FieldName = 'PED_EHT_TERM'
      Origin = 'PED_EHT_TERM'
      Size = 24
    end
    object cdsEditPED_DESENHO_TERM: TStringField
      FieldName = 'PED_DESENHO_TERM'
      Origin = 'PED_DESENHO_TERM'
    end
    object cdsEditPRF_QUANT_TRIB: TFMTBCDField
      FieldName = 'PRF_QUANT_TRIB'
      Origin = 'PRF_QUANT_TRIB'
      Precision = 18
      Size = 5
    end
    object cdsEditPRD_UND_TRIB: TStringField
      FieldName = 'PRD_UND_TRIB'
      Origin = 'PRD_UND_TRIB'
      Size = 6
    end
  end
  inherited JvValidators1: TJvValidators
    Left = 113
    Top = 178
  end
  inherited JvValidationSummary1: TJvValidationSummary
    Left = 96
    Top = 136
  end
  inherited JvErrorIndicator1: TJvErrorIndicator
    Left = 129
    Top = 186
  end
  object FDMemTable1: TFDMemTable
    OnCalcFields = FDMemTable1CalcFields
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    FormatOptions.AssignedValues = [fvMaxBcdPrecision, fvMaxBcdScale]
    FormatOptions.MaxBcdPrecision = 2147483647
    FormatOptions.MaxBcdScale = 2147483647
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    StoreDefs = True
    Left = 424
    Top = 80
    object FDMemTable1REGISTRO_SEQ: TFMTBCDField
      FieldName = 'REGISTRO_SEQ'
      Origin = 'REGISTRO_SEQ'
      Precision = 18
      Size = 10
    end
    object FDMemTable1PRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      Origin = 'PRD_CODIGO'
      Required = True
      Size = 5
    end
    object FDMemTable1ITT_REGISTRO: TIntegerField
      FieldName = 'ITT_REGISTRO'
      Origin = 'ITT_REGISTRO'
    end
    object FDMemTable1PRF_TABPRECO: TStringField
      FieldName = 'PRF_TABPRECO'
      Origin = 'PRF_TABPRECO'
      Size = 2
    end
    object FDMemTable1PRDL_REGISTRO: TIntegerField
      FieldName = 'PRDL_REGISTRO'
      Origin = 'PRDL_REGISTRO'
    end
    object FDMemTable1AMX_CODIGO_DESTINO: TStringField
      FieldName = 'AMX_CODIGO_DESTINO'
      Origin = 'AMX_CODIGO_DESTINO'
      Size = 4
    end
    object FDMemTable1PED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      Origin = 'PED_CODIGO'
      Size = 7
    end
    object FDMemTable1PRF_REGISTRO: TIntegerField
      FieldName = 'PRF_REGISTRO'
      Origin = 'PRF_REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDMemTable1PRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Origin = 'PRD_REFER'
    end
    object FDMemTable1PRDD_SIGLA: TStringField
      FieldName = 'PRDD_SIGLA'
      Origin = 'PRDD_SIGLA'
      Size = 5
    end
    object FDMemTable1DESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 100
    end
    object FDMemTable1PRF_QTDE: TFMTBCDField
      FieldName = 'PRF_QTDE'
      Origin = 'PRF_QTDE'
      Precision = 18
      Size = 5
    end
    object FDMemTable1PRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Origin = 'PRD_DESCRI'
      Size = 100
    end
    object FDMemTable1PRDD_REGISTRO: TIntegerField
      FieldName = 'PRDD_REGISTRO'
      Origin = 'PRDD_REGISTRO'
    end
    object FDMemTable1PRDCO_CODIGO_ORIGINAL: TStringField
      FieldName = 'PRDCO_CODIGO_ORIGINAL'
      Origin = 'PRDCO_CODIGO_ORIGINAL'
      Size = 60
    end
    object FDMemTable1PRD_UND: TStringField
      FieldName = 'PRD_UND'
      Origin = 'PRD_UND'
      Size = 6
    end
    object FDMemTable1PRF_PRODUTO_AGREGADO: TStringField
      FieldName = 'PRF_PRODUTO_AGREGADO'
      Origin = 'PRF_PRODUTO_AGREGADO'
      Size = 1
    end
    object FDMemTable1PRG_REGISTRO: TIntegerField
      FieldName = 'PRG_REGISTRO'
      Origin = 'PRG_REGISTRO'
    end
    object FDMemTable1PRF_COMPL_DESCRI: TStringField
      FieldName = 'PRF_COMPL_DESCRI'
      Origin = 'PRF_COMPL_DESCRI'
      Size = 500
    end
    object FDMemTable1AMX_CODIGO_DESTINO_1: TStringField
      FieldName = 'AMX_CODIGO_DESTINO_1'
      Origin = 'AMX_CODIGO_DESTINO'
      Size = 4
    end
    object FDMemTable1PRF_IDESCTO1: TFloatField
      FieldName = 'PRF_IDESCTO1'
      Origin = 'PRF_IDESCTO1'
    end
    object FDMemTable1PRF_IDESCTO2: TFloatField
      FieldName = 'PRF_IDESCTO2'
      Origin = 'PRF_IDESCTO2'
    end
    object FDMemTable1PRF_VALOR_ST: TFMTBCDField
      FieldName = 'PRF_VALOR_ST'
      Origin = 'PRF_VALOR_ST'
      Precision = 18
      Size = 5
    end
    object FDMemTable1PRF_QTDEFAT: TFMTBCDField
      FieldName = 'PRF_QTDEFAT'
      Origin = 'PRF_QTDEFAT'
      Precision = 18
      Size = 5
    end
    object FDMemTable1PRF_ACRESCIMO: TBCDField
      FieldName = 'PRF_ACRESCIMO'
      Origin = 'PRF_ACRESCIMO'
      Precision = 18
      Size = 2
    end
    object FDMemTable1PRF_PRECO_BRUTO: TFMTBCDField
      FieldName = 'PRF_PRECO_BRUTO'
      Origin = 'PRF_PRECO_BRUTO'
      Precision = 18
      Size = 5
    end
    object FDMemTable1DESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      Precision = 18
      Size = 5
    end
    object FDMemTable1PRF_PRECO: TFMTBCDField
      FieldName = 'PRF_PRECO'
      Origin = 'PRF_PRECO'
      Precision = 18
      Size = 5
    end
    object FDMemTable1PRF_CUSTO: TFMTBCDField
      FieldName = 'PRF_CUSTO'
      Origin = 'PRF_CUSTO'
      Precision = 18
      Size = 5
    end
    object FDMemTable1MARKUP: TBCDField
      FieldName = 'MARKUP'
      Origin = 'MARKUP'
      Required = True
      Precision = 18
      Size = 2
    end
    object FDMemTable1TOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      Precision = 18
      Size = 7
    end
    object FDMemTable1QTDEKIT: TFMTBCDField
      FieldName = 'QTDEKIT'
      Origin = 'QTDEKIT'
      Precision = 18
      Size = 5
    end
    object FDMemTable1PRF_IPIALIQ: TFMTBCDField
      FieldName = 'PRF_IPIALIQ'
      Origin = 'PRF_IPIALIQ'
      Precision = 18
      Size = 5
    end
    object FDMemTable1PRF_ITEMCOMIS: TFMTBCDField
      FieldName = 'PRF_ITEMCOMIS'
      Origin = 'PRF_ITEMCOMIS'
      Precision = 18
      Size = 5
    end
    object FDMemTable1PRF_B2B_PEDIDO_COMPRA: TStringField
      FieldName = 'PRF_B2B_PEDIDO_COMPRA'
      Origin = 'PRF_B2B_PEDIDO_COMPRA'
      Size = 15
    end
    object FDMemTable1PRF_B2B_ITEM_PEDIDO_COMPRA: TIntegerField
      FieldName = 'PRF_B2B_ITEM_PEDIDO_COMPRA'
      Origin = 'PRF_B2B_ITEM_PEDIDO_COMPRA'
    end
    object FDMemTable1DI: TStringField
      FieldName = 'DI'
      Origin = 'DI'
      Required = True
      FixedChar = True
      Size = 1
    end
    object FDMemTable1PRD_PESOLIQ: TFMTBCDField
      FieldName = 'PRD_PESOLIQ'
      Origin = 'PRD_PESOLIQ'
      Precision = 18
      Size = 5
    end
    object FDMemTable1PRD_PESOKG: TFMTBCDField
      FieldName = 'PRD_PESOKG'
      Origin = 'PRD_PESOKG'
      Precision = 18
      Size = 5
    end
    object FDMemTable1PRD_ORIGEM: TIntegerField
      FieldName = 'PRD_ORIGEM'
      Origin = 'PRD_ORIGEM'
    end
    object FDMemTable1PRF_QTDE_ENV_PRODUCAO: TFMTBCDField
      FieldName = 'PRF_QTDE_ENV_PRODUCAO'
      Origin = 'PRF_QTDE_ENV_PRODUCAO'
      Precision = 18
      Size = 5
    end
    object FDMemTable1PRG_DESCRICAO: TStringField
      FieldName = 'PRG_DESCRICAO'
      Origin = 'PRG_DESCRICAO'
      Size = 100
    end
    object FDMemTable1PTI_SIGLA: TStringField
      FieldName = 'PTI_SIGLA'
      Origin = 'PTI_SIGLA'
      Size = 2
    end
    object FDMemTable1PRD_PRODSERV: TStringField
      FieldName = 'PRD_PRODSERV'
      Origin = 'PRD_PRODSERV'
      Size = 1
    end
    object FDMemTable1ID_DIRETIVAS: TIntegerField
      FieldName = 'ID_DIRETIVAS'
      Origin = 'ID_DIRETIVAS'
    end
    object FDMemTable1USOU_VERBA: TStringField
      FieldName = 'USOU_VERBA'
      Origin = 'USOU_VERBA'
      FixedChar = True
      Size = 1
    end
    object FDMemTable1VALOR_VERBA: TFMTBCDField
      FieldName = 'VALOR_VERBA'
      Origin = 'VALOR_VERBA'
      Precision = 18
      Size = 5
    end
    object FDMemTable1PRF_REGISTRO_VINCULADO: TIntegerField
      FieldName = 'PRF_REGISTRO_VINCULADO'
      Origin = 'PRF_REGISTRO_VINCULADO'
    end
    object FDMemTable1NCM_CODIGO: TStringField
      FieldName = 'NCM_CODIGO'
      Origin = 'NCM_CODIGO'
      Size = 8
    end
    object FDMemTable1PRF_PRAZO_DIAS: TIntegerField
      FieldName = 'PRF_PRAZO_DIAS'
      Origin = 'PRF_PRAZO_DIAS'
    end
    object FDMemTable1PRF_PESOKG: TFMTBCDField
      FieldName = 'PRF_PESOKG'
      Origin = 'PRF_PESOKG'
      Precision = 18
      Size = 5
    end
    object FDMemTable1PRF_MARGEM_PRODUTO: TFMTBCDField
      FieldName = 'PRF_MARGEM_PRODUTO'
      Origin = 'PRF_MARGEM_PRODUTO'
      Precision = 18
      Size = 5
    end
    object FDMemTable1PRF_ICMSALIQ: TFMTBCDField
      FieldName = 'PRF_ICMSALIQ'
      Origin = 'PRF_ICMSALIQ'
      Precision = 18
      Size = 5
    end
    object FDMemTable1PRF_VALOR_ICMS: TFMTBCDField
      FieldName = 'PRF_VALOR_ICMS'
      Origin = 'PRF_VALOR_ICMS'
      Precision = 18
      Size = 5
    end
    object FDMemTable1PRF_QTDEPEND: TFMTBCDField
      FieldName = 'PRF_QTDEPEND'
      Origin = 'PRF_QTDEPEND'
      Precision = 18
      Size = 5
    end
    object FDMemTable1PRF_PRODUTO_SEMVALOR: TStringField
      FieldName = 'PRF_PRODUTO_SEMVALOR'
      Origin = 'PRF_PRODUTO_SEMVALOR'
      Size = 1
    end
    object FDMemTable1KIT_VIRTUAL: TIntegerField
      FieldName = 'KIT_VIRTUAL'
      Origin = 'KIT_VIRTUAL'
    end
    object FDMemTable1PED_TIPOPECA_TERM: TStringField
      FieldName = 'PED_TIPOPECA_TERM'
      Origin = 'PED_TIPOPECA_TERM'
      Size = 30
    end
    object FDMemTable1PED_MATERIAL_TERM: TStringField
      FieldName = 'PED_MATERIAL_TERM'
      Origin = 'PED_MATERIAL_TERM'
      Size = 15
    end
    object FDMemTable1PED_DUREZASUPERFICIAL_TERM: TStringField
      FieldName = 'PED_DUREZASUPERFICIAL_TERM'
      Origin = 'PED_DUREZASUPERFICIAL_TERM'
      Size = 30
    end
    object FDMemTable1PED_DUREZANUCLEO_TERM: TStringField
      FieldName = 'PED_DUREZANUCLEO_TERM'
      Origin = 'PED_DUREZANUCLEO_TERM'
      Size = 30
    end
    object FDMemTable1PED_PROFUNDIDADE_TERM: TStringField
      FieldName = 'PED_PROFUNDIDADE_TERM'
      Origin = 'PED_PROFUNDIDADE_TERM'
      Size = 35
    end
    object FDMemTable1PED_TAMANHOGRAO_TERM: TStringField
      FieldName = 'PED_TAMANHOGRAO_TERM'
      Origin = 'PED_TAMANHOGRAO_TERM'
    end
    object FDMemTable1PED_EHT_TERM: TStringField
      FieldName = 'PED_EHT_TERM'
      Origin = 'PED_EHT_TERM'
      Size = 24
    end
    object FDMemTable1PED_DESENHO_TERM: TStringField
      FieldName = 'PED_DESENHO_TERM'
      Origin = 'PED_DESENHO_TERM'
    end
    object FDMemTable1PRF_QUANT_TRIB: TFMTBCDField
      FieldName = 'PRF_QUANT_TRIB'
      Origin = 'PRF_QUANT_TRIB'
      Precision = 18
      Size = 5
    end
    object FDMemTable1PRD_UND_TRIB: TStringField
      FieldName = 'PRD_UND_TRIB'
      Origin = 'PRD_UND_TRIB'
      Size = 6
    end
    object FDMemTable1Tipo: TStringField
      FieldKind = fkCalculated
      FieldName = 'Tipo'
      Size = 100
      Calculated = True
    end
  end
  object dsItens: TDataSource
    DataSet = FDMemTable1
    Left = 472
    Top = 39
  end
end
