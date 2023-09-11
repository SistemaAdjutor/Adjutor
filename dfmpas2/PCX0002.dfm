object FrmProjetoObraNotaEntrada: TFrmProjetoObraNotaEntrada
  Left = 303
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Vincula'#231#227'o de Centro de Custo na Nota Fiscal de Entrada'
  ClientHeight = 607
  ClientWidth = 971
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 865
    Height = 110
    Caption = 'Nota Fiscal de Entrada'
    Enabled = False
    TabOrder = 0
    object Label8: TLabel
      Left = 16
      Top = 24
      Width = 80
      Height = 14
      Caption = 'N'#250'mero da Nota:'
    end
    object Label9: TLabel
      Left = 197
      Top = 24
      Width = 59
      Height = 14
      Alignment = taRightJustify
      Caption = 'Fornecedor:'
    end
    object Label10: TLabel
      Left = 53
      Top = 48
      Width = 43
      Height = 14
      Alignment = taRightJustify
      Caption = 'Emiss'#227'o:'
    end
    object Label11: TLabel
      Left = 216
      Top = 48
      Width = 40
      Height = 14
      Alignment = taRightJustify
      Caption = 'Entrada:'
    end
    object Label12: TLabel
      Left = 398
      Top = 48
      Width = 114
      Height = 14
      Alignment = taRightJustify
      Caption = 'Valor Total do Produtos:'
    end
    object Label13: TLabel
      Left = 661
      Top = 48
      Width = 93
      Height = 14
      Alignment = taRightJustify
      Caption = 'Valor Total da Nota:'
    end
    object Label14: TLabel
      Left = 33
      Top = 72
      Width = 63
      Height = 14
      Alignment = taRightJustify
      Caption = 'Observa'#231#227'o:'
    end
    object LblSituacao: TLabel
      Left = 757
      Top = 24
      Width = 67
      Height = 15
      Caption = 'LblSituacao'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label18: TLabel
      Left = 709
      Top = 24
      Width = 45
      Height = 14
      Alignment = taRightJustify
      Caption = 'Situa'#231#227'o:'
    end
    object DBEdit1: TDBEdit
      Left = 98
      Top = 21
      Width = 87
      Height = 22
      Color = 14145495
      DataField = 'ENF_NOTANUMBER'
      DataSource = DsNotaFiscal
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 258
      Top = 21
      Width = 47
      Height = 22
      Color = 14145495
      DataField = 'FOR_CODIGO'
      DataSource = DsNotaFiscal
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 308
      Top = 21
      Width = 309
      Height = 22
      Color = 14145495
      DataField = 'FOR_RAZAO'
      DataSource = DsNotaFiscal
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 98
      Top = 45
      Width = 87
      Height = 22
      Color = 14145495
      DataField = 'ENF_EMISSAO'
      DataSource = DsNotaFiscal
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 258
      Top = 45
      Width = 87
      Height = 22
      Color = 14145495
      DataField = 'ENF_ENTRADA'
      DataSource = DsNotaFiscal
      TabOrder = 4
    end
    object DBEdit6: TDBEdit
      Left = 514
      Top = 45
      Width = 103
      Height = 22
      Color = 14145495
      DataField = 'ENF_TOT_PROD'
      DataSource = DsNotaFiscal
      TabOrder = 5
    end
    object DBEdit7: TDBEdit
      Left = 756
      Top = 45
      Width = 103
      Height = 22
      Color = 14145495
      DataField = 'ENF_TOT_NOTA'
      DataSource = DsNotaFiscal
      TabOrder = 6
    end
    object DBMemo1: TDBMemo
      Left = 98
      Top = 70
      Width = 761
      Height = 35
      Color = 14145495
      DataField = 'ENF_OBS_NOTA'
      DataSource = DsNotaFiscal
      TabOrder = 7
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 112
    Width = 969
    Height = 209
    Caption = 'Produtos da Nota'
    TabOrder = 1
    object DbGradeNotaItem: TDBGrid
      Left = 2
      Top = 16
      Width = 965
      Height = 191
      Align = alClient
      Color = 16776176
      DataSource = DsNotaItem
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect]
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Arial'
      TitleFont.Style = []
      OnDrawColumnCell = DbGradeNotaItemDrawColumnCell
      OnDblClick = DbGradeNotaItemDblClick
      OnKeyPress = DbGradeNotaItemKeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'PRD_REFER'
          Title.Alignment = taCenter
          Title.Caption = 'Refer'#234'ncia'
          Width = 91
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRD_DESCRI'
          Title.Alignment = taCenter
          Title.Caption = 'Descri'#231#227'o'
          Width = 414
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ENF_QTDE'
          Title.Alignment = taCenter
          Title.Caption = 'Quantidade'
          Width = 84
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ENF_QTDE_LANCADO_PROJETO'
          Title.Alignment = taCenter
          Title.Caption = 'Qtde Lan'#231'ado'
          Width = 84
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cFaltaLancar'
          Title.Alignment = taCenter
          Title.Caption = 'Falta Lan'#231'ar'
          Width = 78
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ENF_PRECO'
          Title.Alignment = taCenter
          Title.Caption = 'Pre'#231'o'
          Width = 79
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CTotal'
          Title.Alignment = taCenter
          Title.Caption = 'Total'
          Width = 93
          Visible = True
        end>
    end
  end
  object GroupBox3: TGroupBox
    Left = 1
    Top = 328
    Width = 490
    Height = 277
    Caption = 'Especifica'#231#227'o de quantidade para o Centro de Custo '
    TabOrder = 2
    object Label1: TLabel
      Left = 5
      Top = 47
      Width = 81
      Height = 14
      Caption = 'Centro de Custo:'
    end
    object Label2: TLabel
      Left = 28
      Top = 74
      Width = 58
      Height = 14
      Caption = 'Quantidade:'
    end
    object Label3: TLabel
      Left = 176
      Top = 75
      Width = 54
      Height = 14
      Caption = 'Percentual:'
    end
    object Label4: TLabel
      Left = 139
      Top = 252
      Width = 71
      Height = 14
      Caption = 'Qtde Lan'#231'ado:'
    end
    object Label5: TLabel
      Left = 304
      Top = 252
      Width = 99
      Height = 14
      Caption = 'Percentual Lan'#231'ado:'
    end
    object Label6: TLabel
      Left = 46
      Top = 21
      Width = 40
      Height = 14
      Caption = 'Produto:'
    end
    object Label7: TLabel
      Left = 346
      Top = 21
      Width = 47
      Height = 14
      Caption = 'Total Item:'
    end
    object EdQuantidade: TCurrencyEdit
      Left = 88
      Top = 72
      Width = 82
      Height = 21
      AutoSize = False
      DecimalPlaces = 4
      DisplayFormat = '###,###,##0.0000'
      TabOrder = 3
      OnExit = EdQuantidadeExit
    end
    object EdPercentagem: TCurrencyEdit
      Left = 232
      Top = 72
      Width = 82
      Height = 21
      AutoSize = False
      DecimalPlaces = 4
      DisplayFormat = '###,###,##0.0000'
      TabOrder = 4
      OnExit = EdPercentagemExit
    end
    object DBGrid3: TDBGrid
      Left = 2
      Top = 100
      Width = 486
      Height = 141
      Color = 16776176
      DataSource = DsNotaItemProjeto
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit]
      PopupMenu = PopupMenuItemProjeto
      TabOrder = 6
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Arial'
      TitleFont.Style = []
      OnKeyDown = DBGrid3KeyDown
      Columns = <
        item
          Expanded = False
          FieldName = 'PCX_CODIGO'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'digo'
          Width = 42
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PCX_DESCRI'
          Title.Alignment = taCenter
          Title.Caption = 'Centro de Custo'
          Width = 260
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ENFPO_QTDE'
          Title.Alignment = taCenter
          Title.Caption = 'Quantidade'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ENFPO_PERCENTUAL'
          Title.Alignment = taCenter
          Title.Caption = 'Percentual'
          Width = 78
          Visible = True
        end>
    end
    object EdTotalLancado: TCurrencyEdit
      Left = 212
      Top = 249
      Width = 82
      Height = 21
      TabStop = False
      AutoSize = False
      Color = 14145495
      DecimalPlaces = 3
      DisplayFormat = '###,###,##0.000'
      ReadOnly = True
      TabOrder = 7
    end
    object EdTotalPercentualLancado: TCurrencyEdit
      Left = 404
      Top = 249
      Width = 82
      Height = 21
      TabStop = False
      AutoSize = False
      Color = 14145495
      DecimalPlaces = 4
      DisplayFormat = '###,###,##0.0000%'
      ReadOnly = True
      TabOrder = 8
    end
    object EdTotalProdutoItem: TCurrencyEdit
      Left = 396
      Top = 18
      Width = 82
      Height = 21
      TabStop = False
      AutoSize = False
      Color = 14145495
      DisplayFormat = '###,###,##0.00'
      ReadOnly = True
      TabOrder = 1
    end
    object Bit_Gravar: TBitBtn
      Left = 380
      Top = 70
      Width = 100
      Height = 25
      Cursor = crHandPoint
      Hint = '|Grava registro...'
      Caption = '&Gravar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000CE0E0000D80E00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        555555555555555555555555555555555555555555FF55555555555550055555
        55555555577FF5555555555500005555555555557777F5555555555500005555
        555555557777FF5555555550000005555555555777777F555555550000000555
        5555557777777FF5555557000500005555555777757777F55555700555500055
        55557775555777FF5555555555500005555555555557777F5555555555550005
        555555555555777FF5555555555550005555555555555777FF55555555555570
        05555555555555777FF5555555555557005555555555555777FF555555555555
        5000555555555555577755555555555555555555555555555555}
      NumGlyphs = 2
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = Bit_GravarClick
    end
    object EdProdutoItem: TEdit
      Left = 88
      Top = 18
      Width = 257
      Height = 22
      TabStop = False
      Color = 14145495
      ReadOnly = True
      TabOrder = 0
    end
    object CbProjetoObra: TcxLookupComboBox
      Left = 88
      Top = 44
      Properties.KeyFieldNames = 'PCX_CODIGO'
      Properties.ListColumns = <
        item
          Caption = 'C'#243'digo'
          HeaderAlignment = taCenter
          FieldName = 'PCX_CODIGO'
        end
        item
          Caption = 'Descri'#231#227'o'
          HeaderAlignment = taCenter
          FieldName = 'PCX_DESCRI'
        end>
      Properties.ListFieldIndex = 1
      Properties.ListSource = DsProjetoObra
      Style.BorderStyle = ebs3D
      TabOrder = 2
      Width = 393
    end
  end
  object BitPesquisar: TBitBtn
    Left = 870
    Top = 6
    Width = 100
    Height = 25
    Cursor = crHandPoint
    Caption = '&Pesquisar'
    NumGlyphs = 2
    TabOrder = 3
    TabStop = False
    OnClick = BitPesquisarClick
  end
  object BitFechar: TBitBtn
    Left = 870
    Top = 31
    Width = 100
    Height = 25
    Cursor = crHandPoint
    Caption = '&Fechar Nota'
    NumGlyphs = 2
    TabOrder = 4
    TabStop = False
    OnClick = BitFecharClick
  end
  object BitReabrir: TBitBtn
    Left = 871
    Top = 56
    Width = 100
    Height = 25
    Cursor = crHandPoint
    Caption = '&Reabrir Nota'
    NumGlyphs = 2
    TabOrder = 5
    TabStop = False
    OnClick = BitReabrirClick
  end
  object BitSair: TBitBtn
    Left = 871
    Top = 82
    Width = 100
    Height = 25
    Cursor = crHandPoint
    Caption = '&Sair'
    NumGlyphs = 2
    TabOrder = 6
    TabStop = False
    OnClick = BitSairClick
  end
  object GroupBox5: TGroupBox
    Left = 494
    Top = 328
    Width = 475
    Height = 276
    Caption = 'Contas '#224' Pagar - Rateio Financeiro por Centro de Custo'
    TabOrder = 7
    object Label15: TLabel
      Left = 208
      Top = 88
      Width = 66
      Height = 14
      Caption = 'PCX_CODIGO'
    end
    object Label16: TLabel
      Left = 208
      Top = 168
      Width = 62
      Height = 14
      Caption = 'PCX_DESCRI'
    end
    object Label17: TLabel
      Left = 84
      Top = 252
      Width = 99
      Height = 14
      Caption = 'Percentual Lan'#231'ado:'
    end
    object Label19: TLabel
      Left = 309
      Top = 250
      Width = 73
      Height = 14
      Caption = 'Valor Lan'#231'ado:'
    end
    object DBGrid4: TDBGrid
      Left = 2
      Top = 16
      Width = 471
      Height = 224
      Align = alTop
      Color = 16776176
      DataSource = DsContasPagar
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Arial'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'PCX_CODIGO'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'digo'
          Width = 44
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PCX_DESCRI'
          Title.Alignment = taCenter
          Title.Caption = 'Centro de Custo'
          Width = 228
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PERCENTUAL'
          Title.Alignment = taCenter
          Title.Caption = '%'
          Width = 63
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTAL'
          Title.Alignment = taCenter
          Title.Caption = 'Total R$'
          Width = 96
          Visible = True
        end>
    end
    object CurTotalObraPercente: TCurrencyEdit
      Left = 185
      Top = 249
      Width = 82
      Height = 21
      TabStop = False
      AutoSize = False
      Color = 14145495
      DecimalPlaces = 4
      DisplayFormat = '###,###,##0.0000%'
      ReadOnly = True
      TabOrder = 1
    end
    object CurTotalObraValor: TCurrencyEdit
      Left = 385
      Top = 247
      Width = 82
      Height = 21
      TabStop = False
      AutoSize = False
      Color = 14145495
      DisplayFormat = '###,###,##0.00'
      ReadOnly = True
      TabOrder = 2
    end
  end
  object SqlCdsNotaItem: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 
      'SELECT'#13#10'T1.enf_registro,'#13#10'T1.prd_refer,'#13#10'T1.prd_descri,'#13#10'T1.enf_' +
      'qtde,'#13#10'T1.enf_qtde_lancado_projeto,'#13#10'T1.enf_preco'#13#10'FROM'#13#10'enf_it0' +
      '1 T1'#13#10'WHERE T1.enf_it_notanumber = '#39#39' AND T1.for_codigo = '#39#39
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    OnCalcFields = SqlCdsNotaItemCalcFields
    CommandText = 
      'SELECT'#13#10'T1.enf_registro,'#13#10'T1.prd_refer,'#13#10'T1.prd_descri,'#13#10'T1.enf_' +
      'qtde,'#13#10'T1.enf_qtde_lancado_projeto,'#13#10'T1.enf_preco'#13#10'FROM'#13#10'enf_it0' +
      '1 T1'#13#10'WHERE T1.enf_it_notanumber = '#39#39' AND T1.for_codigo = '#39#39
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 168
    Top = 128
    object SqlCdsNotaItemENF_REGISTRO: TIntegerField
      FieldName = 'ENF_REGISTRO'
      Required = True
    end
    object SqlCdsNotaItemPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object SqlCdsNotaItemPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 80
    end
    object SqlCdsNotaItemENF_QTDE: TFMTBCDField
      FieldName = 'ENF_QTDE'
      DisplayFormat = '###,###,##0.00'
      currency = True
      Precision = 15
      Size = 4
    end
    object SqlCdsNotaItemENF_QTDE_LANCADO_PROJETO: TFMTBCDField
      FieldName = 'ENF_QTDE_LANCADO_PROJETO'
      DisplayFormat = '###,###,##0.00'
      currency = True
      Precision = 15
      Size = 4
    end
    object SqlCdsNotaItemENF_PRECO: TFMTBCDField
      FieldName = 'ENF_PRECO'
      DisplayFormat = '###,###,##0.00'
      currency = True
      Precision = 15
      Size = 5
    end
    object SqlCdsNotaItemCTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CTotal'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object SqlCdsNotaItemcFaltaLancar: TFloatField
      FieldKind = fkCalculated
      FieldName = 'cFaltaLancar'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
  end
  object DsNotaItem: TDataSource
    DataSet = SqlCdsNotaItem
    OnDataChange = DsNotaItemDataChange
    Left = 280
    Top = 128
  end
  object SqlCdsNotaFiscal: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 
      'SELECT'#13#10't1.enf_registro,'#13#10'T1.enf_notanumber,'#13#10't1.for_codigo,'#13#10't2' +
      '.for_razao,'#13#10't1.enf_fechado_projeto_obra,'#13#10't1.enf_emissao,'#13#10't1.e' +
      'nf_entrada,'#13#10't1.enf_tot_prod,'#13#10't1.enf_tot_nota,'#13#10't1.enf_obs_nota' +
      #13#10'FROM'#13#10'enf0001 T1'#13#10'left join for0000 t2 on (t2.for_codigo = t1.' +
      'for_codigo)'#13#10'WHERE T1.enf_registro = 124'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'SELECT'#13#10't1.enf_registro,'#13#10'T1.enf_notanumber,'#13#10't1.for_codigo,'#13#10't2' +
      '.for_razao,'#13#10't1.enf_fechado_projeto_obra,'#13#10't1.enf_emissao,'#13#10't1.e' +
      'nf_entrada,'#13#10't1.enf_tot_prod,'#13#10't1.enf_tot_nota,'#13#10't1.enf_obs_nota' +
      #13#10'FROM'#13#10'enf0001 T1'#13#10'left join for0000 t2 on (t2.for_codigo = t1.' +
      'for_codigo)'#13#10'WHERE T1.enf_registro = 124'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 168
    Top = 80
    object SqlCdsNotaFiscalENF_NOTANUMBER: TStringField
      FieldName = 'ENF_NOTANUMBER'
      Size = 6
    end
    object SqlCdsNotaFiscalFOR_CODIGO: TStringField
      FieldName = 'FOR_CODIGO'
      Size = 6
    end
    object SqlCdsNotaFiscalFOR_RAZAO: TStringField
      FieldName = 'FOR_RAZAO'
      Size = 40
    end
    object SqlCdsNotaFiscalENF_FECHADO_PROJETO_OBRA: TStringField
      FieldName = 'ENF_FECHADO_PROJETO_OBRA'
      FixedChar = True
      Size = 1
    end
    object SqlCdsNotaFiscalENF_EMISSAO: TDateField
      FieldName = 'ENF_EMISSAO'
    end
    object SqlCdsNotaFiscalENF_ENTRADA: TDateField
      FieldName = 'ENF_ENTRADA'
    end
    object SqlCdsNotaFiscalENF_TOT_PROD: TFMTBCDField
      FieldName = 'ENF_TOT_PROD'
      DisplayFormat = '###,###,##0.00'
      Precision = 15
      Size = 4
    end
    object SqlCdsNotaFiscalENF_TOT_NOTA: TFMTBCDField
      FieldName = 'ENF_TOT_NOTA'
      DisplayFormat = '###,###,##0.00'
      Precision = 15
      Size = 4
    end
    object SqlCdsNotaFiscalENF_OBS_NOTA: TStringField
      FieldName = 'ENF_OBS_NOTA'
      Size = 120
    end
    object SqlCdsNotaFiscalENF_REGISTRO: TIntegerField
      FieldName = 'ENF_REGISTRO'
      Required = True
    end
  end
  object DsNotaFiscal: TDataSource
    DataSet = SqlCdsNotaFiscal
    OnDataChange = DsNotaFiscalDataChange
    Left = 280
    Top = 80
  end
  object SqlCdsProjetoObra: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 
      'select'#13#10'*'#13#10'from'#13#10'pcx0000'#13#10'where PCX_TIPO = '#39'L'#39#13#10'order by'#13#10'pcx_de' +
      'scri'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'select'#13#10'*'#13#10'from'#13#10'pcx0000'#13#10'where PCX_TIPO = '#39'L'#39#13#10'order by'#13#10'pcx_de' +
      'scri'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 168
    Top = 176
  end
  object DsProjetoObra: TDataSource
    DataSet = SqlCdsProjetoObra
    Left = 280
    Top = 176
  end
  object SqlCdsNotaItemProjeto: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 
      'select'#13#10'T1.ENFPO_REGISTRO,'#13#10't1.pcx_codigo,'#13#10't2.pcx_descri,'#13#10't1.e' +
      'nfpo_qtde,'#13#10't1.enfpo_percentual'#13#10'from'#13#10'enf_it01_projeto_obra t1'#13 +
      #10'join pcx0000 t2 on (t2.pcx_codigo = t1.pcx_codigo)'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'select'#13#10'T1.ENFPO_REGISTRO,'#13#10't1.pcx_codigo,'#13#10't2.pcx_descri,'#13#10't1.e' +
      'nfpo_qtde,'#13#10't1.enfpo_percentual'#13#10'from'#13#10'enf_it01_projeto_obra t1'#13 +
      #10'join pcx0000 t2 on (t2.pcx_codigo = t1.pcx_codigo)'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 168
    Top = 224
    object SqlCdsNotaItemProjetoPCX_CODIGO: TStringField
      FieldName = 'PCX_CODIGO'
      Size = 3
    end
    object SqlCdsNotaItemProjetoPCX_DESCRI: TStringField
      FieldName = 'PCX_DESCRI'
      Size = 25
    end
    object SqlCdsNotaItemProjetoENFPO_QTDE: TFMTBCDField
      FieldName = 'ENFPO_QTDE'
      Precision = 15
      Size = 4
    end
    object SqlCdsNotaItemProjetoENFPO_PERCENTUAL: TFMTBCDField
      FieldName = 'ENFPO_PERCENTUAL'
      DisplayFormat = '##0.0000%'
      Precision = 15
      Size = 4
    end
    object SqlCdsNotaItemProjetoENFPO_REGISTRO: TIntegerField
      FieldName = 'ENFPO_REGISTRO'
      Required = True
    end
  end
  object DsNotaItemProjeto: TDataSource
    DataSet = SqlCdsNotaItemProjeto
    OnDataChange = DsNotaItemProjetoDataChange
    Left = 280
    Top = 224
  end
  object SqlCdsContasPagar: TSqlClientDataSet
    Aggregates = <>
    DataSet.CommandText = 
      'SELECT'#13#10'T2.pcx_codigo,'#13#10'T3.pcx_descri,'#13#10'SUM(T2.enfpo_percentual)' +
      ' as percentual,'#13#10'((SUM(T2.enfpo_percentual)/100) * (Select T1.pa' +
      'g_vlnota from PAG0000 T1 where PAG_NUMDOC = '#39'001458'#39' AND PAG_TIP' +
      'O = '#39'NF'#39' AND FOR_CODIGO = '#39'0002'#39')) AS TOTAL'#13#10'FROM'#13#10'ENF_IT01_PROJ' +
      'ETO_OBRA T2'#13#10'JOIN pcx0000 T3 ON (T3.pcx_codigo = T2.pcx_codigo)'#13 +
      #10'WHERE T2.enf_registro = 6'#13#10'group BY T2.pcx_codigo,T3.pcx_descri'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    CommandText = 
      'SELECT'#13#10'T2.pcx_codigo,'#13#10'T3.pcx_descri,'#13#10'SUM(T2.enfpo_percentual)' +
      ' as percentual,'#13#10'((SUM(T2.enfpo_percentual)/100) * (Select T1.pa' +
      'g_vlnota from PAG0000 T1 where PAG_NUMDOC = '#39'001458'#39' AND PAG_TIP' +
      'O = '#39'NF'#39' AND FOR_CODIGO = '#39'0002'#39')) AS TOTAL'#13#10'FROM'#13#10'ENF_IT01_PROJ' +
      'ETO_OBRA T2'#13#10'JOIN pcx0000 T3 ON (T3.pcx_codigo = T2.pcx_codigo)'#13 +
      #10'WHERE T2.enf_registro = 6'#13#10'group BY T2.pcx_codigo,T3.pcx_descri'
    Options = [poAllowCommandText]
    NoMetadata = False
    UpdateMode = upWhereAll
    Left = 168
    Top = 280
    object SqlCdsContasPagarPCX_CODIGO: TStringField
      FieldName = 'PCX_CODIGO'
      Size = 3
    end
    object SqlCdsContasPagarPCX_DESCRI: TStringField
      FieldName = 'PCX_DESCRI'
      Size = 25
    end
    object SqlCdsContasPagarPERCENTUAL: TFMTBCDField
      FieldName = 'PERCENTUAL'
      DisplayFormat = '##0.0000%'
      Precision = 15
      Size = 4
    end
    object SqlCdsContasPagarTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      DisplayFormat = '###,###,##0.00'
      Precision = 15
    end
  end
  object DsContasPagar: TDataSource
    DataSet = SqlCdsContasPagar
    Left = 280
    Top = 280
  end
  object PopupMenuItemProjeto: TPopupMenu
    Left = 377
    Top = 464
    object ExcluirItem1: TMenuItem
      Caption = 'Excluir Item'
      OnClick = ExcluirItem1Click
    end
  end
end
