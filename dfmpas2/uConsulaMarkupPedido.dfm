object FrmConsultaMarkupPedido: TFrmConsultaMarkupPedido
  Left = 507
  Top = 192
  Caption = 'Margens do Pedido'
  ClientHeight = 602
  ClientWidth = 1019
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object grpPedido: TGroupBox
    Left = 0
    Top = 0
    Width = 1019
    Height = 73
    Align = alTop
    Caption = 'Pedido'
    Enabled = False
    TabOrder = 0
    object lblPedido: TLabel
      Left = 112
      Top = 23
      Width = 35
      Height = 14
      Caption = 'Pedido:'
    end
    object lblEmissao: TLabel
      Left = 249
      Top = 23
      Width = 43
      Height = 14
      Caption = 'Emiss'#227'o:'
    end
    object Label1: TLabel
      Left = 395
      Top = 23
      Width = 50
      Height = 14
      Caption = 'Vendedor:'
    end
    object Label2: TLabel
      Left = 498
      Top = 48
      Width = 53
      Height = 14
      Caption = 'Vlr. Venda:'
    end
    object Label3: TLabel
      Left = 675
      Top = 47
      Width = 31
      Height = 14
      Caption = 'Custo:'
    end
    object Label4: TLabel
      Left = 827
      Top = 48
      Width = 51
      Height = 14
      Caption = 'Resultado:'
    end
    object Label5: TLabel
      Left = 665
      Top = 23
      Width = 38
      Height = 14
      Caption = 'Markup:'
    end
    object Label6: TLabel
      Left = 632
      Top = 80
      Width = 3
      Height = 14
    end
    object Label7: TLabel
      Left = 827
      Top = 22
      Width = 49
      Height = 14
      Caption = 'Margem:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 30
      Top = 47
      Width = 35
      Height = 14
      Caption = 'Cliente:'
    end
    object Label9: TLabel
      Left = 20
      Top = 23
      Width = 45
      Height = 14
      Caption = 'Empresa:'
    end
    object EdPedidoNumero: TEdit
      Left = 150
      Top = 19
      Width = 85
      Height = 22
      CharCase = ecUpperCase
      Color = 14145495
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      MaxLength = 8
      ParentFont = False
      TabOrder = 0
    end
    object DteEntrada: TDateEdit
      Left = 294
      Top = 19
      Width = 92
      Height = 21
      Color = 14145495
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      NumGlyphs = 2
      ParentFont = False
      YearDigits = dyFour
      TabOrder = 1
    end
    object edtVendedor: TEdit
      Left = 448
      Top = 19
      Width = 193
      Height = 22
      CharCase = ecUpperCase
      Color = 14145495
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      MaxLength = 8
      ParentFont = False
      TabOrder = 2
    end
    object CurValorProdutos: TCurrencyEdit
      Left = 568
      Top = 44
      Width = 73
      Height = 21
      AutoSize = False
      Color = 14145495
      DisplayFormat = ',0.00;-,0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
      ZeroEmpty = False
    end
    object CurCusto: TCurrencyEdit
      Left = 712
      Top = 44
      Width = 73
      Height = 21
      AutoSize = False
      Color = 14145495
      DisplayFormat = ',0.00;-,0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
      ZeroEmpty = False
    end
    object CurLucro: TCurrencyEdit
      Left = 878
      Top = 44
      Width = 73
      Height = 21
      AutoSize = False
      Color = 14145495
      DisplayFormat = ',0.00;-,0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
      ZeroEmpty = False
    end
    object CurMarkup: TCurrencyEdit
      Left = 712
      Top = 20
      Width = 73
      Height = 21
      AutoSize = False
      Color = 14145495
      DisplayFormat = ',0.00%;-,0.00%'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 6
      ZeroEmpty = False
    end
    object CurResultadoVenda: TCurrencyEdit
      Left = 878
      Top = 20
      Width = 73
      Height = 21
      AutoSize = False
      Color = 14145495
      DisplayFormat = ',0.00%;-,0.00%'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 7
      ZeroEmpty = False
    end
    object edtCliente: TEdit
      Left = 68
      Top = 43
      Width = 421
      Height = 22
      CharCase = ecUpperCase
      Color = 14145495
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      MaxLength = 8
      ParentFont = False
      TabOrder = 8
    end
    object edtEmpresa: TEdit
      Left = 68
      Top = 19
      Width = 37
      Height = 22
      CharCase = ecUpperCase
      Color = 14145495
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      MaxLength = 8
      ParentFont = False
      TabOrder = 9
    end
  end
  object grpPedidoItens: TGroupBox
    Left = 0
    Top = 73
    Width = 1019
    Height = 488
    Align = alClient
    Caption = 'Itens'
    TabOrder = 1
    object DbGradeItemPedido: TDBGrid
      Left = 2
      Top = 16
      Width = 1015
      Height = 470
      Align = alClient
      Color = 16776176
      DataSource = DsPedidoItem
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      PopupMenu = pmNota
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Arial'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'PRD_PRODSERV'
          Title.Caption = 'P/S'
          Width = 24
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRD_REFER'
          Title.Alignment = taCenter
          Title.Caption = 'Refer'#234'ncia'
          Width = 93
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Title.Alignment = taCenter
          Title.Caption = 'Descri'#231#227'o'
          Width = 213
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRF_QTDE'
          Title.Alignment = taCenter
          Title.Caption = 'Quantidade'
          Width = 66
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRF_PRECO_BRUTO'
          Title.Alignment = taCenter
          Title.Caption = 'Pre'#231'o Unit.'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCONTO'
          Title.Alignment = taCenter
          Title.Caption = 'Desconto'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRF_PRECO'
          Title.Alignment = taCenter
          Title.Caption = 'Pre'#231'o L'#237'quido'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRF_CUSTO'
          Title.Alignment = taCenter
          Title.Caption = 'Custo Unit.'
          Width = 67
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTAL'
          Title.Alignment = taCenter
          Title.Caption = 'Total'
          Width = 80
          Visible = True
        end
        item
          Color = clYellow
          Expanded = False
          FieldName = 'Lucro'
          Title.Alignment = taCenter
          Title.Caption = 'Resultado'
          Visible = True
        end
        item
          Color = clYellow
          Expanded = False
          FieldName = 'MarkupItem'
          Title.Alignment = taCenter
          Title.Caption = 'Margem Obtida'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRF_ITEMCOMIS'
          Title.Alignment = taCenter
          Title.Caption = '%Comiss'#227'o'
          Visible = True
        end>
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 561
    Width = 1019
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    DesignSize = (
      1019
      41)
    object Label10: TLabel
      Left = 2
      Top = -2
      Width = 367
      Height = 14
      Caption = 
        'Para realizar a manuten'#231#227'o dos custos clique com o bot'#227'o direito' +
        ' do  mouse'
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object lbTotal: TLabel
      Left = 720
      Top = 24
      Width = 29
      Height = 14
      Alignment = taRightJustify
      Caption = 'Total:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
    end
    object lbTotalDesconto: TLabel
      Left = 249
      Top = 25
      Width = 84
      Height = 14
      Alignment = taRightJustify
      Caption = 'Total Desconto:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
    end
    object lbDescontoMedio: TLabel
      Left = 451
      Top = 24
      Width = 104
      Height = 14
      Alignment = taRightJustify
      Caption = '% Desconto M'#233'dio:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
    end
    object Bit_Sair: TBitBtn
      Left = 886
      Top = 8
      Width = 85
      Height = 25
      Cursor = crHandPoint
      Anchors = [akRight, akBottom]
      Caption = '&Sair'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000C40E0000C40E00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333330
        0000333333333333777711111111000BB030377777777777337F1EEEEEEE0BBB
        B030373333333733337F1EEEEEEE0BBBB03037F333333733337F1EEEEEEE0BBB
        B03037F333333733337F1EEEEEEE0BBBB03037F333333733337F1EEEEEEE0BBB
        B03037F3333337F3337F1EEEEEEE0BBB003037F3333337F3377F1EEEEEEE0BBB
        B03037F3333337F3337F1EEEEEEE0BBBB03037F3333337F3337F1EEEEEEE0BBB
        B03037F3333337F3337F1EEEEEEE0BBBB03037F3333337F3337F1EEEEEEE0BBB
        B03037FFFFFF37FF337F11111111000BB030377777777777337F333333333330
        0000333333333333777733333333333333333333333333333333}
      NumGlyphs = 2
      TabOrder = 0
      TabStop = False
      OnClick = Bit_SairClick
    end
  end
  object DsPedidoItem: TDataSource
    DataSet = SqlCdsPedidoItem
    Left = 632
    Top = 152
  end
  object SqlCdsPedidoItem: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 
      'select'#13#10't1.ped_codigo,'#13#10't1.prf_registro,'#13#10't1.prd_refer,'#13#10'coalesc' +
      'e(t2.prd_descri,'#39#39')||'#39' '#39'||coalesce(t3.prg_descricao,'#39#39')||'#39' '#39'||co' +
      'alesce(t1.prf_compl_descri,'#39#39') AS DESCRICAO,'#13#10't2.prd_codigo,'#13#10't2' +
      '.prd_descri,'#13#10't1.prf_produto_agregado,'#13#10't1.prg_registro,'#13#10't1.prf' +
      '_compl_descri,'#13#10't1.amx_codigo_destino,'#13#10't1.prf_idescto1,'#13#10't1.prf' +
      '_idescto2,'#13#10't1.prf_qtde,'#13#10't1.prf_qtdefat,'#13#10#13#10't1.prf_acrescimo,'#13#10 +
      't1.prf_idescto1 - (t1.prf_idescto2 /100) as desconto,'#13#10't1.prf_pr' +
      'eco,'#13#10't1.prf_custo,'#13#10'case'#13#10'    when (0 > 0) then'#13#10'        0.00'#13#10 +
      '    else'#13#10'        0.00'#13#10'end as markup,'#13#10'(t1.prf_preco * t1.prf_q' +
      'tde) as total,'#13#10't1.prf_ipialiq,'#13#10't1.prf_itemcomis,'#13#10'case'#13#10'    wh' +
      'en ((select count(t6.pid_registro) from ped_it01_di t6 where t6.' +
      'prf_registro = t1.prf_registro) > 0) then'#13#10'        '#39'S'#39#13#10'    else' +
      #13#10'        '#39'N'#39#13#10'end as di,'#13#10't2.prd_pesoliq,'#13#10't2.prd_pesokg,'#13#10't1.p' +
      'rf_qtde_env_producao,'#13#10'COALESCE(t2.PRD_PRODSERV,'#39'P'#39') as  PRD_PRO' +
      'DSERV'#13#10'from'#13#10'ped_it01 t1'#13#10'join prd0000 t2 on (t2.prd_refer = t1.' +
      'prd_refer)'#13#10'left join prd_grade t3 on (t3.prg_registro = t1.prg_' +
      'registro)'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    OnCalcFields = SqlCdsPedidoItemCalcFields
    CommandText = 
      'select'#13#10't1.ped_codigo,'#13#10't1.prf_registro,'#13#10't1.prd_refer,'#13#10'coalesc' +
      'e(t2.prd_descri,'#39#39')||'#39' '#39'||coalesce(t3.prg_descricao,'#39#39')||'#39' '#39'||co' +
      'alesce(t1.prf_compl_descri,'#39#39') AS DESCRICAO,'#13#10't2.prd_codigo,'#13#10't2' +
      '.prd_descri,'#13#10't1.prf_produto_agregado,'#13#10't1.prg_registro,'#13#10't1.prf' +
      '_compl_descri,'#13#10't1.amx_codigo_destino,'#13#10't1.prf_idescto1,'#13#10't1.prf' +
      '_idescto2,'#13#10't1.prf_qtde,'#13#10't1.prf_qtdefat,'#13#10#13#10't1.prf_acrescimo,'#13#10 +
      't1.prf_idescto1 - (t1.prf_idescto2 /100) as desconto,'#13#10't1.prf_pr' +
      'eco,'#13#10't1.prf_custo,'#13#10'case'#13#10'    when (0 > 0) then'#13#10'        0.00'#13#10 +
      '    else'#13#10'        0.00'#13#10'end as markup,'#13#10'(t1.prf_preco * t1.prf_q' +
      'tde) as total,'#13#10't1.prf_ipialiq,'#13#10't1.prf_itemcomis,'#13#10'case'#13#10'    wh' +
      'en ((select count(t6.pid_registro) from ped_it01_di t6 where t6.' +
      'prf_registro = t1.prf_registro) > 0) then'#13#10'        '#39'S'#39#13#10'    else' +
      #13#10'        '#39'N'#39#13#10'end as di,'#13#10't2.prd_pesoliq,'#13#10't2.prd_pesokg,'#13#10't1.p' +
      'rf_qtde_env_producao,'#13#10'COALESCE(t2.PRD_PRODSERV,'#39'P'#39') as  PRD_PRO' +
      'DSERV'#13#10'from'#13#10'ped_it01 t1'#13#10'join prd0000 t2 on (t2.prd_refer = t1.' +
      'prd_refer)'#13#10'left join prd_grade t3 on (t3.prg_registro = t1.prg_' +
      'registro)'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 440
    Top = 200
    object SqlCdsPedidoItemPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      Size = 7
    end
    object SqlCdsPedidoItemPRF_REGISTRO: TIntegerField
      FieldName = 'PRF_REGISTRO'
      Required = True
    end
    object SqlCdsPedidoItemPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object SqlCdsPedidoItemDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 352
    end
    object SqlCdsPedidoItemPRF_QTDE: TFMTBCDField
      FieldName = 'PRF_QTDE'
      DisplayFormat = '###,###,##0.000'
      Precision = 15
      Size = 4
    end
    object SqlCdsPedidoItemPRF_QTDEFAT: TFMTBCDField
      FieldName = 'PRF_QTDEFAT'
      DisplayFormat = '###,###,##0.000'
      Precision = 15
      Size = 4
    end
    object SqlCdsPedidoItemDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      DisplayFormat = '###,##0.000'
      Precision = 15
      Size = 4
    end
    object SqlCdsPedidoItemPRF_PRECO: TFMTBCDField
      FieldName = 'PRF_PRECO'
      DisplayFormat = '###,###,##0.00#'
      Precision = 15
      Size = 5
    end
    object SqlCdsPedidoItemMARKUP: TFMTBCDField
      FieldName = 'MARKUP'
      DisplayFormat = '###,###,##0.00'
      Precision = 15
      Size = 2
    end
    object SqlCdsPedidoItemTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      DisplayFormat = '###,###,##0.00#'
      Precision = 15
      Size = 9
    end
    object SqlCdsPedidoItemPRF_IPIALIQ: TFMTBCDField
      FieldName = 'PRF_IPIALIQ'
      DisplayFormat = '##0.00%'
      Precision = 15
      Size = 4
    end
    object SqlCdsPedidoItemPRF_ITEMCOMIS: TFMTBCDField
      FieldName = 'PRF_ITEMCOMIS'
      DisplayFormat = '##0.000%'
      Precision = 15
      Size = 4
    end
    object SqlCdsPedidoItemDI: TStringField
      FieldName = 'DI'
      FixedChar = True
      Size = 1
    end
    object SqlCdsPedidoItemPRD_PESOLIQ: TFMTBCDField
      FieldName = 'PRD_PESOLIQ'
      Precision = 15
      Size = 4
    end
    object SqlCdsPedidoItemPRD_PESOKG: TFMTBCDField
      FieldName = 'PRD_PESOKG'
      Precision = 15
      Size = 4
    end
    object SqlCdsPedidoItemPRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      Required = True
      Size = 4
    end
    object SqlCdsPedidoItemPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 100
    end
    object SqlCdsPedidoItemPRF_PRODUTO_AGREGADO: TStringField
      FieldName = 'PRF_PRODUTO_AGREGADO'
      Size = 1
    end
    object SqlCdsPedidoItemPRG_REGISTRO: TIntegerField
      FieldName = 'PRG_REGISTRO'
    end
    object SqlCdsPedidoItemPRF_COMPL_DESCRI: TStringField
      FieldName = 'PRF_COMPL_DESCRI'
      Size = 150
    end
    object SqlCdsPedidoItemAMX_CODIGO_DESTINO: TStringField
      FieldName = 'AMX_CODIGO_DESTINO'
      Size = 4
    end
    object SqlCdsPedidoItemPRD_PRODSERV: TStringField
      Alignment = taCenter
      FieldName = 'PRD_PRODSERV'
      Size = 1
    end
    object SqlCdsPedidoItemPRF_ACRESCIMO: TFMTBCDField
      FieldName = 'PRF_ACRESCIMO'
      Precision = 15
      Size = 5
    end
    object SqlCdsPedidoItemPRF_QTDE_ENV_PRODUCAO: TFMTBCDField
      FieldName = 'PRF_QTDE_ENV_PRODUCAO'
      Precision = 15
      Size = 5
    end
    object SqlCdsPedidoItemPRF_CUSTO: TFMTBCDField
      FieldName = 'PRF_CUSTO'
      DisplayFormat = '###,###,##0.000'
      Precision = 15
      Size = 5
    end
    object SqlCdsPedidoItemCustoItem: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CustoItem'
      DisplayFormat = '###,###,##0.00#'
      Calculated = True
    end
    object SqlCdsPedidoItemMarkupItem: TFloatField
      FieldKind = fkCalculated
      FieldName = 'MarkupItem'
      DisplayFormat = '##0.00%'
      currency = True
      Calculated = True
    end
    object SqlCdsPedidoItemMargem: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Margem'
      DisplayFormat = '##0.00%'
      currency = True
      Calculated = True
    end
    object SqlCdsPedidoItemLucro: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Lucro'
      DisplayFormat = '###,###,##0.00#'
      Calculated = True
    end
    object SqlCdsPedidoItemPRF_IDESCTO1: TFloatField
      FieldName = 'PRF_IDESCTO1'
    end
    object SqlCdsPedidoItemPRF_IDESCTO2: TFloatField
      FieldName = 'PRF_IDESCTO2'
    end
    object SqlCdsPedidoItemprf_preco_bruto: TFMTBCDField
      FieldName = 'PRF_PRECO_BRUTO'
      ProviderFlags = []
      Precision = 15
      Size = 5
    end
  end
  object CdsPedido: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 
      'SELECT'#13#10' nf.NF_TOT_NOTA,  T1.EMP_CODIGO,'#13#10'    T1.ped_codigo,'#13#10'  ' +
      '  T1.ped_dtentrada,'#13#10'    T1.cli_codigo,'#13#10'    T2.cli_razao,'#13#10'    ' +
      'T2.cli_uf,'#13#10'    T1.rep_codigo,'#13#10'    T3.rep_nome,'#13#10'    (SELECT CA' +
      'ST(coalesce(SUM(T4.prf_qtde * T4.prf_preco),0) AS NUMERIC(18,4))' +
      ' FROM ped_it01 T4 WHERE T4.ped_codigo = T1.ped_codigo) AS VlLiqu' +
      'ido,'#13#10'    (SELECT CAST(coalesce(SUM(T4.prf_qtde * T4.prf_custo),' +
      '0) AS NUMERIC(18,4)) FROM ped_it01 T4 WHERE T4.ped_codigo = T1.p' +
      'ed_codigo) AS CUSTO ,'#13#10'    (SELECT CAST(coalesce(SUM(T4.prf_qtde' +
      ' * T4.prf_preco),0) AS NUMERIC(18,4)) FROM ped_it01 T4 WHERE T4.' +
      'ped_codigo = T1.ped_codigo) - (SELECT CAST(coalesce(SUM(T4.prf_q' +
      'tde * T4.prf_custo),0) AS NUMERIC(18,4)) FROM ped_it01 T4 WHERE ' +
      'T4.ped_codigo = T1.ped_codigo) AS LUCRO,'#13#10'    (SELECT CAST(coale' +
      'sce(SUM(T4.prf_qtde * (T4.prf_custo + ( CASE WHEN coalesce(T4.pr' +
      'f_margem_produto,0) > 0 THEN (T4.prf_custo * CAST(T4.prf_margem_' +
      'produto / 100 AS numeric(18,4))) ELSE 0 END ))),0) AS NUMERIC(18' +
      ',4)) FROM ped_it01 T4 WHERE T4.ped_codigo = T1.ped_codigo) AS VE' +
      'NDA_ESPERADA,'#13#10'    (SELECT CAST(coalesce(SUM(T4.prf_qtde * (T4.p' +
      'rf_custo + ( CASE WHEN coalesce(T4.prf_margem_produto,0) > 0 THE' +
      'N (T4.prf_custo * CAST(T4.prf_margem_produto / 100 AS numeric(18' +
      ',4))) ELSE 0 END ))),0) AS NUMERIC(18,4)) FROM ped_it01 T4 WHERE' +
      ' T4.ped_codigo = T1.ped_codigo) - (SELECT CAST(coalesce(SUM(T4.p' +
      'rf_qtde * T4.prf_custo),0) AS NUMERIC(18,4)) FROM ped_it01 T4 WH' +
      'ERE T4.ped_codigo = T1.ped_codigo) AS LUCRO_ESPERADO'#13#10'FROM ped00' +
      '00 T1'#13#10'JOIN cli0000 T2 ON (T2.cli_codigo = T1.cli_codigo)'#13#10'LEFT ' +
      'JOIN rep0000 T3 ON (T3.rep_codigo = T1.rep_codigo) left join NF0' +
      '001 NF ON (NF.PED_CODIGO = t1.PED_CODIGO AND NF.EMP_CODIGO = t1.' +
      'EMP_CODIGO AND nf_cancelada = '#39'N'#39' )'#13#10'   WHERE T1.ped_dtentrada b' +
      'etween '#39'01.01.2013'#39' AND '#39'01.04.2013'#39
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    OnCalcFields = CdsPedidoCalcFields
    CommandText = 
      'SELECT'#13#10' nf.NF_TOT_NOTA,  T1.EMP_CODIGO,'#13#10'    T1.ped_codigo,'#13#10'  ' +
      '  T1.ped_dtentrada,'#13#10'    T1.cli_codigo,'#13#10'    T2.cli_razao,'#13#10'    ' +
      'T2.cli_uf,'#13#10'    T1.rep_codigo,'#13#10'    T3.rep_nome,'#13#10'    (SELECT CA' +
      'ST(coalesce(SUM(T4.prf_qtde * T4.prf_preco),0) AS NUMERIC(18,4))' +
      ' FROM ped_it01 T4 WHERE T4.ped_codigo = T1.ped_codigo) AS VlLiqu' +
      'ido,'#13#10'    (SELECT CAST(coalesce(SUM(T4.prf_qtde * T4.prf_custo),' +
      '0) AS NUMERIC(18,4)) FROM ped_it01 T4 WHERE T4.ped_codigo = T1.p' +
      'ed_codigo) AS CUSTO ,'#13#10'    (SELECT CAST(coalesce(SUM(T4.prf_qtde' +
      ' * T4.prf_preco),0) AS NUMERIC(18,4)) FROM ped_it01 T4 WHERE T4.' +
      'ped_codigo = T1.ped_codigo) - (SELECT CAST(coalesce(SUM(T4.prf_q' +
      'tde * T4.prf_custo),0) AS NUMERIC(18,4)) FROM ped_it01 T4 WHERE ' +
      'T4.ped_codigo = T1.ped_codigo) AS LUCRO,'#13#10'    (SELECT CAST(coale' +
      'sce(SUM(T4.prf_qtde * (T4.prf_custo + ( CASE WHEN coalesce(T4.pr' +
      'f_margem_produto,0) > 0 THEN (T4.prf_custo * CAST(T4.prf_margem_' +
      'produto / 100 AS numeric(18,4))) ELSE 0 END ))),0) AS NUMERIC(18' +
      ',4)) FROM ped_it01 T4 WHERE T4.ped_codigo = T1.ped_codigo) AS VE' +
      'NDA_ESPERADA,'#13#10'    (SELECT CAST(coalesce(SUM(T4.prf_qtde * (T4.p' +
      'rf_custo + ( CASE WHEN coalesce(T4.prf_margem_produto,0) > 0 THE' +
      'N (T4.prf_custo * CAST(T4.prf_margem_produto / 100 AS numeric(18' +
      ',4))) ELSE 0 END ))),0) AS NUMERIC(18,4)) FROM ped_it01 T4 WHERE' +
      ' T4.ped_codigo = T1.ped_codigo) - (SELECT CAST(coalesce(SUM(T4.p' +
      'rf_qtde * T4.prf_custo),0) AS NUMERIC(18,4)) FROM ped_it01 T4 WH' +
      'ERE T4.ped_codigo = T1.ped_codigo) AS LUCRO_ESPERADO'#13#10'FROM ped00' +
      '00 T1'#13#10'JOIN cli0000 T2 ON (T2.cli_codigo = T1.cli_codigo)'#13#10'LEFT ' +
      'JOIN rep0000 T3 ON (T3.rep_codigo = T1.rep_codigo) left join NF0' +
      '001 NF ON (NF.PED_CODIGO = t1.PED_CODIGO AND NF.EMP_CODIGO = t1.' +
      'EMP_CODIGO AND nf_cancelada = '#39'N'#39' )'#13#10'   WHERE T1.ped_dtentrada b' +
      'etween '#39'01.01.2013'#39' AND '#39'01.04.2013'#39
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 500
    Top = 297
    object CdsPedidoPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      Required = True
      Size = 7
    end
    object CdsPedidoPED_DTENTRADA: TSQLTimeStampField
      FieldName = 'PED_DTENTRADA'
    end
    object CdsPedidoCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Size = 5
    end
    object CdsPedidoCLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      Size = 55
    end
    object CdsPedidoCLI_UF: TStringField
      FieldName = 'CLI_UF'
      Size = 2
    end
    object CdsPedidoREP_CODIGO: TStringField
      FieldName = 'REP_CODIGO'
      Size = 3
    end
    object CdsPedidoREP_NOME: TStringField
      FieldName = 'REP_NOME'
      Size = 35
    end
    object CdsPedidoVLLIQUIDO: TFMTBCDField
      FieldName = 'VLLIQUIDO'
      DisplayFormat = '###,###,##0.00'
      Precision = 15
      Size = 4
    end
    object CdsPedidoCUSTO: TFMTBCDField
      FieldName = 'CUSTO'
      DisplayFormat = '###,###,##0.00'
      Precision = 15
      Size = 4
    end
    object CdsPedidoLUCRO: TFMTBCDField
      FieldName = 'LUCRO'
      DisplayFormat = '###,###,##0.00'
      Precision = 15
      Size = 4
    end
    object CdsPedidoVENDA_ESPERADA: TFMTBCDField
      FieldName = 'VENDA_ESPERADA'
      DisplayFormat = '###,###,##0.00'
      Precision = 15
      Size = 4
    end
    object CdsPedidoLUCRO_ESPERADO: TFMTBCDField
      FieldName = 'LUCRO_ESPERADO'
      DisplayFormat = '###,###,##0.00'
      Precision = 15
      Size = 4
    end
    object CdsPedidoMARKUP: TFloatField
      FieldKind = fkCalculated
      FieldName = 'MARKUP'
      DisplayFormat = '##0.00%'
      currency = True
      Calculated = True
    end
    object CdsPedidoMARKUP_PREVISTO: TFloatField
      FieldKind = fkCalculated
      FieldName = 'MARKUP_PREVISTO'
      DisplayFormat = '##0.00%'
      currency = True
      Calculated = True
    end
    object CdsPedidoRV: TFloatField
      FieldKind = fkCalculated
      FieldName = 'RV'
      DisplayFormat = '##0.00%'
      currency = True
      Calculated = True
    end
    object CdsPedidoEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object CdsPedidoNF_TOT_NOTA: TFMTBCDField
      FieldName = 'NF_TOT_NOTA'
      Precision = 18
      Size = 5
    end
  end
  object dsPedido: TDataSource
    DataSet = CdsPedido
    Left = 668
    Top = 265
  end
  object pmNota: TPopupMenu
    Left = 800
    Top = 268
    object ManutenodeCustos1: TMenuItem
      Caption = 'Manuten'#231#227'o de Custos'
      OnClick = ManutenodeCustos1Click
    end
  end
end
