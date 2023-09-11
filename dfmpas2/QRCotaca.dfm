object Relcotacao01: TRelcotacao01
  Left = 0
  Top = 0
  Width = 816
  Height = 1056
  Frame.Color = clBlack
  Frame.DrawTop = False
  Frame.DrawBottom = False
  Frame.DrawLeft = False
  Frame.DrawRight = False
  DataSet = TbCotacaoItenQR
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Arial'
  Font.Style = []
  Functions.Strings = (
    'PAGENUMBER'
    'COLUMNNUMBER'
    'REPORTTITLE')
  Functions.DATA = (
    '0'
    '0'
    #39#39)
  Options = [FirstPageHeader, LastPageFooter]
  Page.Columns = 1
  Page.Orientation = poPortrait
  Page.PaperSize = Letter
  Page.Values = (
    100.000000000000000000
    2794.000000000000000000
    100.000000000000000000
    2159.000000000000000000
    100.000000000000000000
    100.000000000000000000
    0.000000000000000000)
  PrinterSettings.Copies = 1
  PrinterSettings.Duplex = False
  PrinterSettings.FirstPage = 0
  PrinterSettings.LastPage = 0
  PrinterSettings.OutputBin = Auto
  PrintIfEmpty = True
  ReportTitle = 'Relat'#243'rio de Cota'#231#227'o de Pre'#231'os.'
  SnapToGrid = True
  Units = MM
  Zoom = 100
  object QRBand1: TQRBand
    Left = 38
    Top = 38
    Width = 740
    Height = 59
    Frame.Color = clBlack
    Frame.DrawTop = True
    Frame.DrawBottom = True
    Frame.DrawLeft = False
    Frame.DrawRight = False
    AlignToBottom = False
    BeforePrint = QRBand1BeforePrint
    Color = clWhite
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      156.104166666666700000
      1957.916666666667000000)
    BandType = rbPageHeader
    object LabelEmpresa: TQRLabel
      Left = -55
      Top = 8
      Width = 125
      Height = 23
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        60.854166666666670000
        812.270833333333300000
        21.166666666666670000
        330.729166666666700000)
      Alignment = taCenter
      AlignToBand = True
      AutoSize = True
      AutoStretch = False
      Caption = 'LabelEmpresa'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 14
    end
    object QRLabel1: TQRLabel
      Left = -105
      Top = 32
      Width = 226
      Height = 19
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        50.270833333333330000
        679.979166666666700000
        84.666666666666670000
        597.958333333333300000)
      Alignment = taCenter
      AlignToBand = True
      AutoSize = True
      AutoStretch = False
      Caption = 'Relat'#243'rio de Cota'#231#227'o de Pre'#231'os'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 12
    end
  end
  object QRBand2: TQRBand
    Left = 38
    Top = 97
    Width = 740
    Height = 21
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = True
    Frame.DrawLeft = False
    Frame.DrawRight = False
    AlignToBottom = False
    Color = clWhite
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      55.562500000000000000
      1957.916666666667000000)
    BandType = rbColumnHeader
    object QRLabel2: TQRLabel
      Left = 1
      Top = 2
      Width = 69
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        2.645833333333333000
        5.291666666666667000
        182.562500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'REFERENCIA'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRLabel3: TQRLabel
      Left = 81
      Top = 2
      Width = 62
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        214.312500000000000000
        5.291666666666667000
        164.041666666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'DESCRI'#199#195'O'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRLabel4: TQRLabel
      Left = 389
      Top = 2
      Width = 76
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1029.229166666667000000
        5.291666666666667000
        201.083333333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'QUANTIDADE'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRLabel5: TQRLabel
      Left = 524
      Top = 2
      Width = 37
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1386.416666666667000000
        5.291666666666667000
        97.895833333333330000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'PRE'#199'O'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRLabel6: TQRLabel
      Left = 627
      Top = 2
      Width = 40
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1658.937500000000000000
        5.291666666666667000
        105.833333333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'TOTAL'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRLabel7: TQRLabel
      Left = 686
      Top = 2
      Width = 36
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1815.041666666667000000
        5.291666666666667000
        95.250000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'IPI (%)'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
  end
  object QRGroup2: TQRGroup
    Left = 38
    Top = 118
    Width = 740
    Height = 21
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    AlignToBottom = False
    Color = clWhite
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      55.562500000000000000
      1957.916666666667000000)
    Master = Owner
    ReprintOnNewPage = False
    object QRDBText10: TQRDBText
      Left = 4
      Top = 1
      Width = 61
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        10.583333333333330000
        2.645833333333333000
        161.395833333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TbCotacaoItenQR
      DataField = 'COT_CODIGO'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRDBText11: TQRDBText
      Left = 80
      Top = 3
      Width = 72
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        211.666666666666700000
        7.937500000000000000
        190.500000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = TbFornecQR
      DataField = 'FOR_RAZAO'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
  end
  object QRBand3: TQRBand
    Left = 38
    Top = 145
    Width = 740
    Height = 19
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    AlignToBottom = False
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Times New Roman'
    Font.Style = []
    ForceNewColumn = False
    ForceNewPage = False
    ParentFont = False
    Size.Values = (
      50.270833333333330000
      1957.916666666667000000)
    BandType = rbGroupFooter
    object QRDBText1: TQRDBText
      Left = 14
      Top = 1
      Width = 63
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        37.041666666666670000
        2.645833333333333000
        166.687500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = TbCotacaoItenQR
      DataField = 'PRD_REFER'
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRDBText2: TQRDBText
      Left = 80
      Top = 1
      Width = 67
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        211.666666666666700000
        2.645833333333333000
        177.270833333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = TbProdutoQR
      DataField = 'PRD_DESCRI'
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRDBText3: TQRDBText
      Left = 408
      Top = 1
      Width = 57
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1079.500000000000000000
        2.645833333333333000
        150.812500000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = TbCotacaoItenQR
      DataField = 'CIT_QTDE'
      Mask = '#0.,00'
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRDBText4: TQRDBText
      Left = 500
      Top = 1
      Width = 62
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1322.916666666667000000
        2.645833333333333000
        164.041666666666700000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = TbCotacaoItenQR
      DataField = 'CIT_PRECO'
      Mask = '#0.,00'
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRDBText6: TQRDBText
      Left = 683
      Top = 1
      Width = 41
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1807.104166666667000000
        2.645833333333333000
        108.479166666666700000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = TbCotacaoItenQR
      DataField = 'CIT_IPI'
      Mask = '#0.,00'
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRExpr1: TQRExpr
      Left = 569
      Top = 0
      Width = 97
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        1505.479166666667000000
        0.000000000000000000
        256.645833333333300000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      ResetAfterPrint = False
      Transparent = False
      WordWrap = True
      Expression = 'TbCotacaoItenQR.CIT_QTDE * TbCotacaoItenQR.CIT_PRECO'
      Mask = '#0.,00'
      FontSize = 8
    end
  end
  object QRGroup1: TQRGroup
    Left = 38
    Top = 139
    Width = 740
    Height = 6
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    AlignToBottom = False
    Color = clWhite
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      15.875000000000000000
      1957.916666666667000000)
    FooterBand = QRBand3
    Master = Owner
    ReprintOnNewPage = False
  end
  object TbCotacaoItenQR: TTable
    DatabaseName = 'RwDbAdm'
    Exclusive = True
    IndexName = 'XCOT_CODI_CIT'
    TableName = 'COT_IT01'
    Left = 40
    Top = 8
    object TbCotacaoItenQRCIT_REG: TAutoIncField
      FieldName = 'CIT_REG'
    end
    object TbCotacaoItenQRCOT_CODIGO: TStringField
      FieldName = 'COT_CODIGO'
      Size = 5
    end
    object TbCotacaoItenQRPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object TbCotacaoItenQRCIT_QTDE: TFloatField
      FieldName = 'CIT_QTDE'
    end
    object TbCotacaoItenQRCIT_PRECO: TFloatField
      FieldName = 'CIT_PRECO'
    end
    object TbCotacaoItenQRCIT_IPI: TFloatField
      FieldName = 'CIT_IPI'
    end
    object TbCotacaoItenQREMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
  end
  object DscotacaoItenQR: TDataSource
    DataSet = TbCotacaoItenQR
    Left = 68
    Top = 8
  end
  object TbProdutoQR: TTable
    DatabaseName = 'RwDbAdm'
    IndexFieldNames = 'PRD_REFER'
    MasterFields = 'PRD_REFER'
    MasterSource = DscotacaoItenQR
    TableName = 'PRD0000'
    Left = 256
    Top = 8
    object TbProdutoQRPRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      Required = True
      Size = 4
    end
    object TbProdutoQRPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 40
    end
    object TbProdutoQRPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object TbProdutoQRPRD_UND: TStringField
      FieldName = 'PRD_UND'
      Size = 3
    end
    object TbProdutoQRPRD_EMBALA: TStringField
      FieldName = 'PRD_EMBALA'
      Size = 10
    end
    object TbProdutoQRPGR_CODIGO: TStringField
      FieldName = 'PGR_CODIGO'
      Size = 3
    end
    object TbProdutoQRPTI_CODIGO: TStringField
      FieldName = 'PTI_CODIGO'
      Size = 3
    end
    object TbProdutoQRIPI_CODIGO: TStringField
      FieldName = 'IPI_CODIGO'
      Size = 8
    end
    object TbProdutoQRPRD_ALIQICM: TFloatField
      FieldName = 'PRD_ALIQICM'
    end
    object TbProdutoQRLIN_CODIGO: TStringField
      FieldName = 'LIN_CODIGO'
      Size = 2
    end
    object TbProdutoQRPRD_COMPL: TStringField
      FieldName = 'PRD_COMPL'
      Size = 15
    end
    object TbProdutoQRPRD_CARACT: TMemoField
      FieldName = 'PRD_CARACT'
      BlobType = ftMemo
    end
    object TbProdutoQRPRD_MINIMO: TFloatField
      FieldName = 'PRD_MINIMO'
    end
    object TbProdutoQRPRD_PCUSTO: TFloatField
      FieldName = 'PRD_PCUSTO'
    end
    object TbProdutoQRPRD_PVENDA: TFloatField
      FieldName = 'PRD_PVENDA'
    end
    object TbProdutoQRPRD_PMEDIO: TFloatField
      FieldName = 'PRD_PMEDIO'
    end
    object TbProdutoQRPRD_ESTOQUE: TFloatField
      FieldName = 'PRD_ESTOQUE'
    end
    object TbProdutoQRPRD_SAIDA: TFloatField
      FieldName = 'PRD_SAIDA'
    end
    object TbProdutoQRPRD_PENDENTE: TFloatField
      FieldName = 'PRD_PENDENTE'
    end
    object TbProdutoQRFOR_CODIGO: TStringField
      FieldName = 'FOR_CODIGO'
      Size = 4
    end
    object TbProdutoQRPRD_ENTRADA: TFloatField
      FieldName = 'PRD_ENTRADA'
    end
    object TbProdutoQRPRD_MAXIMO: TFloatField
      FieldName = 'PRD_MAXIMO'
    end
    object TbProdutoQRPRD_ICMSUBS: TFloatField
      FieldName = 'PRD_ICMSUBS'
    end
    object TbProdutoQRPRD_UTILCONV: TBooleanField
      FieldName = 'PRD_UTILCONV'
    end
    object TbProdutoQRPRD_UNDCOMP: TStringField
      FieldName = 'PRD_UNDCOMP'
      Size = 3
    end
    object TbProdutoQRPRD_PESOKg: TFloatField
      FieldName = 'PRD_PESOKg'
    end
    object TbProdutoQRPRD_FATORC: TFloatField
      FieldName = 'PRD_FATORC'
    end
    object TbProdutoQRPRD_DIVMULT: TStringField
      FieldName = 'PRD_DIVMULT'
      Size = 1
    end
    object TbProdutoQREMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object TbProdutoQRPRD_DTPCUSTO: TDateTimeField
      FieldName = 'PRD_DTPCUSTO'
    end
  end
  object TbFornecQR: TTable
    DatabaseName = 'RwDbAdm'
    IndexFieldNames = 'FOR_CODIGO'
    MasterFields = 'FOR_CODIGO'
    MasterSource = DsCotacao
    TableName = 'FOR0000'
    Left = 352
    Top = 8
    object TbFornecQRFOR_CODIGO: TStringField
      FieldName = 'FOR_CODIGO'
      Size = 4
    end
    object TbFornecQRFOR_RAZAO: TStringField
      FieldName = 'FOR_RAZAO'
      Size = 40
    end
    object TbFornecQRFOR_ENDERE: TStringField
      FieldName = 'FOR_ENDERE'
      Size = 40
    end
    object TbFornecQRFOR_CIDADE: TStringField
      FieldName = 'FOR_CIDADE'
      Size = 30
    end
    object TbFornecQRFOR_UF: TStringField
      FieldName = 'FOR_UF'
      Size = 2
    end
    object TbFornecQRFOR_CEP: TStringField
      FieldName = 'FOR_CEP'
      Size = 8
    end
    object TbFornecQRFOR_CONTATO: TStringField
      FieldName = 'FOR_CONTATO'
    end
    object TbFornecQRFOR_FONE: TStringField
      FieldName = 'FOR_FONE'
      Size = 11
    end
    object TbFornecQRFOR_FAX: TStringField
      FieldName = 'FOR_FAX'
      Size = 11
    end
    object TbFornecQRFOR_EMAIL: TStringField
      FieldName = 'FOR_EMAIL'
      Size = 35
    end
    object TbFornecQRFOR_FONCONT: TStringField
      FieldName = 'FOR_FONCONT'
      Size = 11
    end
    object TbFornecQRFOR_FAXCONT: TStringField
      FieldName = 'FOR_FAXCONT'
      Size = 11
    end
    object TbFornecQRFOR_OBS: TStringField
      FieldName = 'FOR_OBS'
      Size = 200
    end
    object TbFornecQREMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object TbFornecQRFOR_CGC: TStringField
      FieldName = 'FOR_CGC'
      Size = 14
    end
    object TbFornecQRFOR_INSC: TStringField
      FieldName = 'FOR_INSC'
      Size = 14
    end
    object TbFornecQRFOR_HOME: TStringField
      FieldName = 'FOR_HOME'
      Size = 35
    end
    object TbFornecQRFOR_EMAILCONT: TStringField
      FieldName = 'FOR_EMAILCONT'
      Size = 35
    end
  end
  object DsProdutoQR: TDataSource
    DataSet = TbProdutoQR
    Left = 284
    Top = 8
  end
  object TbCotacaoQR: TTable
    DatabaseName = 'RwDbAdm'
    IndexFieldNames = 'COT_CODIGO'
    MasterFields = 'COT_CODIGO'
    MasterSource = DscotacaoItenQR
    TableName = 'COT0000'
    Left = 160
    Top = 8
    object TbCotacaoQRCOT_CODIGO: TStringField
      FieldName = 'COT_CODIGO'
      Size = 5
    end
    object TbCotacaoQRFOR_CODIGO: TStringField
      FieldName = 'FOR_CODIGO'
      Size = 4
    end
    object TbCotacaoQRCOT_DATA: TDateTimeField
      FieldName = 'COT_DATA'
    end
    object TbCotacaoQRCOT_FRETE: TStringField
      FieldName = 'COT_FRETE'
      Size = 3
    end
    object TbCotacaoQRCOT_ICMS: TFloatField
      FieldName = 'COT_ICMS'
    end
    object TbCotacaoQRCOT_IPI: TFloatField
      FieldName = 'COT_IPI'
    end
    object TbCotacaoQRCOT_PRAZOPGTO: TStringField
      FieldName = 'COT_PRAZOPGTO'
      Size = 30
    end
    object TbCotacaoQRCOT_ENTREGA: TDateTimeField
      FieldName = 'COT_ENTREGA'
    end
    object TbCotacaoQRCOT_DESCTO: TFloatField
      FieldName = 'COT_DESCTO'
    end
    object TbCotacaoQRCOT_OBS: TMemoField
      FieldName = 'COT_OBS'
      BlobType = ftMemo
    end
    object TbCotacaoQRCOT_TOTAL: TFloatField
      FieldName = 'COT_TOTAL'
    end
    object TbCotacaoQRCOT_STATUS: TStringField
      FieldName = 'COT_STATUS'
      Size = 1
    end
    object TbCotacaoQREMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
  end
  object DsCotacao: TDataSource
    DataSet = TbCotacaoQR
    Left = 188
    Top = 8
  end
  object DsFornecQR: TDataSource
    DataSet = TbFornecQR
    Left = 380
    Top = 8
  end
  object QRTextFilter1: TQRTextFilter
    Left = 32
    Top = 16
  end
end
