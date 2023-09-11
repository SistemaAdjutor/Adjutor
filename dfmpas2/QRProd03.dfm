object RelTabelaPreco: TRelTabelaPreco
  Left = 0
  Top = 0
  Width = 816
  Height = 1056
  Frame.Color = clBlack
  Frame.DrawTop = False
  Frame.DrawBottom = False
  Frame.DrawLeft = False
  Frame.DrawRight = False
  DataSet = TQProdutoQR
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
  ReportTitle = 'TABELA DE PRE'#199'OS'
  SnapToGrid = True
  Units = MM
  Zoom = 100
  object QRBand1: TQRBand
    Left = 38
    Top = 38
    Width = 740
    Height = 133
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
      351.895833333333300000
      1957.916666666667000000)
    BandType = rbPageHeader
    object LabelEmpresa: TQRLabel
      Left = 307
      Top = 4
      Width = 125
      Height = 23
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        60.854166666666670000
        812.270833333333400000
        10.583333333333330000
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
    object QRLabel8: TQRLabel
      Left = -75
      Top = 93
      Width = 166
      Height = 20
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        52.916666666666670000
        759.354166666666700000
        246.062500000000000000
        439.208333333333300000)
      Alignment = taCenter
      AlignToBand = True
      AutoSize = True
      AutoStretch = False
      Caption = 'TABELA DE PRE'#199'OS'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 12
    end
    object LabelEnd1: TQRLabel
      Left = 339
      Top = 28
      Width = 62
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        896.937500000000000000
        74.083333333333330000
        164.041666666666700000)
      Alignment = taCenter
      AlignToBand = True
      AutoSize = True
      AutoStretch = False
      Caption = 'LabelEnd1'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRDBText1: TQRDBText
      Left = 283
      Top = 69
      Width = 174
      Height = 19
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        50.270833333333330000
        748.770833333333400000
        182.562500000000000000
        460.375000000000000000)
      Alignment = taCenter
      AlignToBand = True
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = DataModulo.TbParametros
      DataField = 'PMT_CAB_TABPRECO'
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
    object LabelHome: TQRLabel
      Left = 0
      Top = 114
      Width = 66
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        0.000000000000000000
        301.625000000000000000
        174.625000000000000000)
      Alignment = taLeftJustify
      AlignToBand = True
      AutoSize = True
      AutoStretch = False
      Caption = 'LabelHome'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object LabelEmail: TQRLabel
      Left = -50
      Top = 114
      Width = 65
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1785.937500000000000000
        301.625000000000000000
        171.979166666666700000)
      Alignment = taRightJustify
      AlignToBand = True
      AutoSize = True
      AutoStretch = False
      Caption = 'LabelEmail'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
  end
  object QRBand2: TQRBand
    Left = 38
    Top = 171
    Width = 740
    Height = 24
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = True
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
      63.500000000000000000
      1957.916666666667000000)
    BandType = rbColumnHeader
    object QRLabel1: TQRLabel
      Left = 2
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
        5.291666666666667000
        5.291666666666667000
        182.562500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'REFER'#202'NCIA'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRLabel2: TQRLabel
      Left = 80
      Top = 2
      Width = 138
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        211.666666666666700000
        5.291666666666667000
        365.125000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'DESCRI'#199#195'O DO PRODUTO'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRLabel3: TQRLabel
      Left = 394
      Top = 2
      Width = 46
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1042.458333333333000000
        5.291666666666667000
        121.708333333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'MEDIDA'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRLabel4: TQRLabel
      Left = 464
      Top = 2
      Width = 95
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1227.666666666667000000
        5.291666666666667000
        251.354166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'PRE'#199'O UNIT'#193'RIO'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRLabel5: TQRLabel
      Left = 575
      Top = 2
      Width = 44
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1521.354166666667000000
        5.291666666666667000
        116.416666666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'PESO Kg'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRLabel6: TQRLabel
      Left = 632
      Top = 2
      Width = 72
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1672.166666666667000000
        5.291666666666667000
        190.500000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'EMBALAGEM'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRLabel7: TQRLabel
      Left = 720
      Top = 2
      Width = 16
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1905.000000000000000000
        5.291666666666667000
        42.333333333333330000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'IPI'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
  end
  object QRLabel12: TQRLabel
    Left = 692
    Top = 23
    Width = 42
    Height = 15
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    Size.Values = (
      39.687500000000000000
      1830.916666666667000000
      60.854166666666670000
      111.125000000000000000)
    Alignment = taLeftJustify
    AlignToBand = False
    AutoSize = True
    AutoStretch = False
    Caption = 'Folha N'#186
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    Transparent = False
    WordWrap = True
    FontSize = 8
  end
  object QRSysData2: TQRSysData
    Left = 739
    Top = 23
    Width = 39
    Height = 15
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    Size.Values = (
      39.687500000000000000
      1955.270833333333000000
      60.854166666666670000
      103.187500000000000000)
    Alignment = taRightJustify
    AlignToBand = False
    AutoSize = True
    Color = clWhite
    Data = qrsPageNumber
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    Transparent = False
    FontSize = 8
  end
  object QRGroup2: TQRGroup
    Left = 38
    Top = 195
    Width = 740
    Height = 26
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
    Font.Style = [fsBold]
    ForceNewColumn = False
    ForceNewPage = False
    ParentFont = False
    Size.Values = (
      68.791666666666670000
      1957.916666666667000000)
    Expression = 'TQProdutoQR.Prd_linha.LIN_CODIGO'
    Master = Owner
    ReprintOnNewPage = False
    object QRDBText10: TQRDBText
      Left = 128
      Top = 6
      Width = 62
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        338.666666666666700000
        15.875000000000000000
        164.041666666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = TQProdutoQR
      DataField = 'LIN_DESCRI'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
  end
  object QRBand3: TQRBand
    Left = 38
    Top = 221
    Width = 740
    Height = 19
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
      50.270833333333330000
      1957.916666666667000000)
    BandType = rbDetail
    object QRDBText6: TQRDBText
      Left = 564
      Top = 2
      Width = 57
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        1492.250000000000000000
        5.291666666666667000
        150.812500000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TQProdutoQR
      DataField = 'PRD_PESOKg'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      Mask = '#0.,00'
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRDBText5: TQRDBText
      Left = 457
      Top = 2
      Width = 94
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        1209.145833333333000000
        5.291666666666667000
        248.708333333333300000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TQProdutoQR
      DataField = 'PRD_PVENDA'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      Mask = '#0.,00'
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRDBText7: TQRDBText
      Left = 633
      Top = 2
      Width = 76
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        1674.812500000000000000
        5.291666666666667000
        201.083333333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TQProdutoQR
      DataField = 'PRD_EMBALA'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRDBText8: TQRDBText
      Left = 713
      Top = 2
      Width = 25
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        1886.479166666667000000
        5.291666666666667000
        66.145833333333330000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TQIPIQR
      DataField = 'IPI_ALIQ'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      Mask = '#0.,0'
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRDBText4: TQRDBText
      Left = 379
      Top = 2
      Width = 68
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        1002.770833333333000000
        5.291666666666667000
        179.916666666666700000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TQProdutoQR
      DataField = 'PRD_COMPL'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRDBText3: TQRDBText
      Left = 89
      Top = 2
      Width = 290
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        235.479166666666700000
        5.291666666666667000
        767.291666666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TQProdutoQR
      DataField = 'PRD_DESCRI'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRDBText2: TQRDBText
      Left = 3
      Top = 1
      Width = 59
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        7.937500000000000000
        2.645833333333333000
        156.104166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = TQProdutoQR
      DataField = 'PRD_REFER'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
  end
  object QRLabel11: TQRLabel
    Left = 38
    Top = 21
    Width = 104
    Height = 17
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    Size.Values = (
      44.979166666666670000
      100.541666666666700000
      55.562500000000000000
      275.166666666666700000)
    Alignment = taLeftJustify
    AlignToBand = False
    AutoSize = True
    AutoStretch = False
    Caption = 'Vig'#234'ncia a partir de : '
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    Transparent = False
    WordWrap = True
    FontSize = 8
  end
  object LabelDataVigencia: TQRLabel
    Left = 144
    Top = 21
    Width = 91
    Height = 17
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    Size.Values = (
      44.979166666666670000
      381.000000000000000000
      55.562500000000000000
      240.770833333333300000)
    Alignment = taLeftJustify
    AlignToBand = False
    AutoSize = True
    AutoStretch = False
    Caption = 'LabelDataVigencia'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    Transparent = False
    WordWrap = True
    FontSize = 8
  end
  object LabelEnd2: TQRLabel
    Left = 376
    Top = 86
    Width = 62
    Height = 17
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    Size.Values = (
      44.979166666666670000
      994.833333333333300000
      227.541666666666700000
      164.041666666666700000)
    Alignment = taCenter
    AlignToBand = True
    AutoSize = True
    AutoStretch = False
    Caption = 'LabelEnd2'
    Color = clWhite
    Transparent = False
    WordWrap = True
    FontSize = 10
  end
  object TQProdutoQR: TQuery
    DatabaseName = 'RwDbAdm'
    SQL.Strings = (
      
        'SELECT PRD0000.PRD_REFER, PRD0000.PRD_DESCRI, PRD0000.PRD_COMPL,' +
        ' PRD0000.PRD_PVENDA, PRD0000.PRD_PESOKg, PRD0000.PRD_EMBALA, PRD' +
        '0000.IPI_CODIGO, PRD0000.LIN_CODIGO, PRD0000.PRD_TABPRECO, Prd_l' +
        'inha.LIN_DESCRI, Prd_linha.LIN_CODIGO'
      'FROM PRD0000, PRD_LINHA'
      'WHERE  (PRD0000.LIN_CODIGO = Prd_linha.LIN_CODIGO)  '
      '   AND  (PRD0000.PRD_TABPRECO = '#39'S'#39') '
      'ORDER BY PRD0000.LIN_CODIGO, PRD0000.PRD_REFER')
    Left = 112
    Top = 8
    object TQProdutoQRPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Origin = 'PRD0000.PRD_REFER'
      Size = 11
    end
    object TQProdutoQRPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Origin = 'PRD0000.PRD_DESCRI'
      Size = 40
    end
    object TQProdutoQRPRD_COMPL: TStringField
      FieldName = 'PRD_COMPL'
      Origin = 'PRD0000.PRD_COMPL'
      Size = 15
    end
    object TQProdutoQRPRD_PVENDA: TFloatField
      FieldName = 'PRD_PVENDA'
      Origin = 'PRD0000.PRD_PVENDA'
    end
    object TQProdutoQRPRD_PESOKg: TFloatField
      FieldName = 'PRD_PESOKg'
      Origin = 'PRD0000.PRD_PESOKg'
    end
    object TQProdutoQRPRD_EMBALA: TStringField
      FieldName = 'PRD_EMBALA'
      Origin = 'PRD0000.PRD_EMBALA'
      Size = 10
    end
    object TQProdutoQRPRD_TABPRECO: TStringField
      FieldName = 'PRD_TABPRECO'
      Origin = 'PRD0000.PRD_TABPRECO'
      Size = 1
    end
    object TQProdutoQRIPI_CODIGO: TStringField
      FieldName = 'IPI_CODIGO'
      Origin = 'PRD0000.IPI_CODIGO'
      Size = 8
    end
    object TQProdutoQRLIN_DESCRI: TStringField
      FieldName = 'LIN_DESCRI'
      Origin = 'PRD_LINHA.LIN_DESCRI'
      Size = 30
    end
    object TQProdutoQRPrd_linhaLIN_CODIGO: TStringField
      FieldName = 'Prd_linha.LIN_CODIGO'
      Origin = 'PRD_LINHA.LIN_CODIGO'
      Size = 2
    end
    object TQProdutoQRPRD0000LIN_CODIGO: TStringField
      FieldName = 'PRD0000.LIN_CODIGO'
      Origin = 'PRD0000.LIN_CODIGO'
      Size = 2
    end
  end
  object DSProdutoQR: TDataSource
    DataSet = TQProdutoQR
    Left = 144
    Top = 8
  end
  object TQIPIQR: TQuery
    DatabaseName = 'RwDbAdm'
    SQL.Strings = (
      'SELECT IPI_CODIGO, IPI_ALIQ'
      'FROM IPI0000 '
      'where IPI_CODIGO= :IPI_CODIGO')
    Left = 240
    Top = 8
    ParamData = <
      item
        DataType = ftString
        Name = 'IPI_CODIGO'
        ParamType = ptUnknown
      end>
    object TQIPIQRIPI_ALIQ: TFloatField
      FieldName = 'IPI_ALIQ'
      Origin = 'IPI0000.IPI_ALIQ'
    end
    object TQIPIQRIPI_CODIGO: TStringField
      FieldName = 'IPI_CODIGO'
      Origin = 'IPI0000.IPI_CODIGO'
      Size = 8
    end
  end
  object TQLinhaPro: TQuery
    DatabaseName = 'RwDbAdm'
    SQL.Strings = (
      'SELECT LIN_CODIGO, LIN_DESCRI'
      'FROM PRD_LINHA '
      'WHERE LIN_CODIGO = :Lin_Codigo'
      'ORDER BY (PRD_LINHA.LIN_CODIGO);')
    Left = 320
    Top = 8
    ParamData = <
      item
        DataType = ftString
        Name = 'LIN_CODIGO'
        ParamType = ptUnknown
      end>
    object TQLinhaProLIN_DESCRI: TStringField
      FieldName = 'LIN_DESCRI'
      Origin = 'PRD_LINHA.LIN_DESCRI'
      Size = 30
    end
    object TQLinhaProLIN_CODIGO: TStringField
      FieldName = 'LIN_CODIGO'
      Size = 2
    end
  end
  object QRTextFilter1: TQRTextFilter
    Left = 32
    Top = 16
  end
end
