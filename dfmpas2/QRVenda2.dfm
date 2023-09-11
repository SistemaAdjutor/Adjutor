object RelEstati02: TRelEstati02
  Left = 0
  Top = 0
  Width = 794
  Height = 1123
  Frame.Color = clBlack
  Frame.DrawTop = False
  Frame.DrawBottom = False
  Frame.DrawLeft = False
  Frame.DrawRight = False
  DataSet = TQRecItens
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
  Page.PaperSize = A4
  Page.Values = (
    100.000000000000000000
    2970.000000000000000000
    100.000000000000000000
    2100.000000000000000000
    100.000000000000000000
    100.000000000000000000
    0.000000000000000000)
  PrinterSettings.Copies = 1
  PrinterSettings.Duplex = False
  PrinterSettings.FirstPage = 0
  PrinterSettings.LastPage = 0
  PrinterSettings.OutputBin = Auto
  PrintIfEmpty = True
  ReportTitle = 'Est'#225'tistica de Vendas por Valor'
  SnapToGrid = True
  Units = MM
  Zoom = 100
  object QRBand1: TQRBand
    Left = 38
    Top = 38
    Width = 718
    Height = 85
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
      224.895833333333300000
      1899.708333333333000000)
    BandType = rbTitle
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
        783.166666666666700000
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
    object QRLabel2: TQRLabel
      Left = -131
      Top = 40
      Width = 278
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        582.083333333333400000
        105.833333333333300000
        735.541666666666700000)
      Alignment = taCenter
      AlignToBand = True
      AutoSize = True
      AutoStretch = False
      Caption = 'EST'#193'TISTICA DE VENDAS POR ( VALOR R$ )'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRLabel3: TQRLabel
      Left = 208
      Top = 64
      Width = 152
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        550.333333333333300000
        169.333333333333300000
        402.166666666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'VENDA DE PRODUTOS -'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object LabelInicial: TQRLabel
      Left = 361
      Top = 64
      Width = 65
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        955.145833333333300000
        169.333333333333300000
        171.979166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'LabelInicial'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRLabel14: TQRLabel
      Left = 432
      Top = 64
      Width = 8
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1143.000000000000000000
        169.333333333333300000
        21.166666666666670000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'a'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object LabelFinal: TQRLabel
      Left = 444
      Top = 64
      Width = 60
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1174.750000000000000000
        169.333333333333300000
        158.750000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'LabelFinal'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
  end
  object QRGroup1: TQRGroup
    Left = 38
    Top = 166
    Width = 718
    Height = 0
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    AlignToBottom = False
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Times New Roman'
    Font.Style = []
    ForceNewColumn = False
    ForceNewPage = False
    ParentFont = False
    Size.Values = (
      0.000000000000000000
      1899.708333333333000000)
    Expression = 'TQRecItens.PRD_CODIGO'
    FooterBand = QRBand4
    Master = Owner
    ReprintOnNewPage = False
  end
  object QRBand4: TQRBand
    Left = 38
    Top = 166
    Width = 718
    Height = 22
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
      58.208333333333330000
      1899.708333333333000000)
    BandType = rbGroupFooter
    object QRDBText3: TQRDBText
      Left = 39
      Top = 3
      Width = 52
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        103.187500000000000000
        7.937500000000000000
        137.583333333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TQRecItens
      DataField = 'PRD_CODIGO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRDBText4: TQRDBText
      Left = 99
      Top = 3
      Width = 218
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        261.937500000000000000
        7.937500000000000000
        576.791666666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TQRecItens
      DataField = 'PRD_DESCRI'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRExpr6: TQRExpr
      Left = 334
      Top = 3
      Width = 80
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333330000
        883.708333333333300000
        7.937500000000000000
        211.666666666666700000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      Color = clWhite
      ParentFont = False
      ResetAfterPrint = True
      Transparent = False
      WordWrap = True
      Expression = 'SUM(TQRecItens.FIT_QTDE)'
      Mask = '#0.,00'
      FontSize = 9
    end
    object QRExpr7: TQRExpr
      Left = 549
      Top = 3
      Width = 81
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1452.562500000000000000
        7.937500000000000000
        214.312500000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      Color = clWhite
      ParentFont = False
      ResetAfterPrint = True
      Transparent = False
      WordWrap = True
      Expression = 'SUM(TQRecItens.FIT_QTDE * TQRecItens.FIT_PRECO)'
      Mask = '#0.,00'
      FontSize = 9
    end
    object QRExpr8: TQRExpr
      Left = 679
      Top = 3
      Width = 37
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333330000
        1796.520833333333000000
        7.937500000000000000
        97.895833333333330000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      Color = clWhite
      ParentFont = False
      ResetAfterPrint = False
      Transparent = False
      WordWrap = True
      Mask = '#0.,00'
      FontSize = 9
    end
    object QRDBText1: TQRDBText
      Left = 480
      Top = 0
      Width = 61
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1270.000000000000000000
        0.000000000000000000
        161.395833333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataField = 'FIT_QTDE'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
  end
  object QRBand5: TQRBand
    Left = 38
    Top = 188
    Width = 718
    Height = 20
    Frame.Color = clBlack
    Frame.DrawTop = True
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    AlignToBottom = False
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Times New Roman'
    Font.Style = []
    ForceNewColumn = False
    ForceNewPage = False
    ParentFont = False
    Size.Values = (
      52.916666666666670000
      1899.708333333333000000)
    BandType = rbSummary
    object QRLabel12: TQRLabel
      Left = 14
      Top = 1
      Width = 36
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
        95.250000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Total :'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRExpr4: TQRExpr
      Left = 322
      Top = 1
      Width = 92
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        851.958333333333300000
        2.645833333333333000
        243.416666666666700000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Times New Roman'
      Font.Style = []
      Color = clWhite
      ParentFont = False
      ResetAfterPrint = True
      Transparent = False
      WordWrap = True
      Expression = 'SUM(TQRecItens.FIT_QTDE)'
      Mask = '#0.,00'
      FontSize = 9
    end
    object QRExpr5: TQRExpr
      Left = 552
      Top = 1
      Width = 78
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1460.500000000000000000
        2.645833333333333000
        206.375000000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Times New Roman'
      Font.Style = []
      Color = clWhite
      ParentFont = False
      ResetAfterPrint = True
      Transparent = False
      WordWrap = True
      Expression = 'SUM(TQRecItens.FIT_QTDE * TQRecItens.FIT_PRECO)'
      Mask = '#0.,00'
      FontSize = 9
    end
  end
  object QRBand2: TQRBand
    Left = 38
    Top = 123
    Width = 718
    Height = 43
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = True
    Frame.DrawLeft = False
    Frame.DrawRight = False
    AlignToBottom = False
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Times New Roman'
    Font.Style = []
    ForceNewColumn = False
    ForceNewPage = False
    ParentFont = False
    Size.Values = (
      113.770833333333300000
      1899.708333333333000000)
    BandType = rbColumnHeader
    object QRLabel1: TQRLabel
      Left = 39
      Top = 8
      Width = 49
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        103.187500000000000000
        21.166666666666670000
        129.645833333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'C'#211'DIGO'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRLabel4: TQRLabel
      Left = 99
      Top = 8
      Width = 69
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        261.937500000000000000
        21.166666666666670000
        182.562500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'DESCRI'#199#195'O'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRLabel5: TQRLabel
      Left = 331
      Top = 8
      Width = 83
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        875.770833333333300000
        21.166666666666670000
        219.604166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'QUANTIDADE'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRLabel7: TQRLabel
      Left = 460
      Top = 8
      Width = 80
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1217.083333333333000000
        21.166666666666670000
        211.666666666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'PERCENTUAL'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRLabel8: TQRLabel
      Left = 587
      Top = 8
      Width = 42
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1553.104166666667000000
        21.166666666666670000
        111.125000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'VALOR'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRLabel9: TQRLabel
      Left = 459
      Top = 24
      Width = 83
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1214.437500000000000000
        63.500000000000000000
        219.604166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'QUANTIDADE'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRLabel10: TQRLabel
      Left = 651
      Top = 9
      Width = 80
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333330000
        1722.437500000000000000
        23.812500000000000000
        211.666666666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'PERCENTUAL'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRLabel11: TQRLabel
      Left = 670
      Top = 25
      Width = 42
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333330000
        1772.708333333333000000
        66.145833333333330000
        111.125000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'VALOR'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
  end
  object TQRecItens: TQuery
    DatabaseName = 'RwDbAdm'
    SQL.Strings = (
      
        'SELECT DISTINCT FAT_IT02.PRD_CODIGO, FAT_IT02.PRD_REFER, FAT_IT0' +
        '2.FIT_QTDE, FAT_IT02.FIT_PRECO, PRD0000.PRD_DESCRI, PRD0000.PRD_' +
        'REFER, FAT_IT02.FAT_CODIGO, FAT0000.FAT_CODIGO, FAT0000.FAT_DTEM' +
        'IS'
      'FROM FAT_IT02, PRD0000, FAT0000'
      'WHERE  (FAT_IT02.PRD_REFER = PRD0000.PRD_REFER)  '
      '   AND  (FAT_IT02.FAT_CODIGO = FAT0000.FAT_CODIGO)  '
      'ORDER BY FAT_IT02.PRD_CODIGO DESC')
    Left = 120
    object TQRecItensPRD_CODIGO: TStringField
      FieldName = 'PRD_CODIGO'
      Origin = 'FAT_IT02.PRD_CODIGO'
      Size = 4
    end
    object TQRecItensFAT_IT02PRD_REFER: TStringField
      FieldName = 'FAT_IT02.PRD_REFER'
      Origin = 'FAT_IT02.PRD_REFER'
      Size = 11
    end
    object TQRecItensFIT_QTDE: TFloatField
      FieldName = 'FIT_QTDE'
      Origin = 'FAT_IT02.FIT_QTDE'
    end
    object TQRecItensFIT_PRECO: TFloatField
      FieldName = 'FIT_PRECO'
      Origin = 'FAT_IT02.FIT_PRECO'
    end
    object TQRecItensPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Origin = 'PRD0000.PRD_DESCRI'
      Size = 40
    end
    object TQRecItensPRD0000PRD_REFER: TStringField
      FieldName = 'PRD0000.PRD_REFER'
      Origin = 'PRD0000.PRD_REFER'
      Size = 11
    end
    object TQRecItensFAT_IT02FAT_CODIGO: TStringField
      FieldName = 'FAT_IT02.FAT_CODIGO'
      Origin = 'FAT_IT02.FAT_CODIGO'
      Size = 6
    end
    object TQRecItensFat0000FAT_CODIGO: TStringField
      FieldName = 'Fat0000.FAT_CODIGO'
      Origin = 'FAT0000.FAT_CODIGO'
      Size = 6
    end
    object TQRecItensFAT_DTEMIS: TDateTimeField
      FieldName = 'FAT_DTEMIS'
      Origin = 'FAT0000.FAT_DTEMIS'
    end
  end
  object DataSource1: TDataSource
    Left = 152
  end
  object QRTextFilter1: TQRTextFilter
    Left = 32
    Top = 16
  end
end
