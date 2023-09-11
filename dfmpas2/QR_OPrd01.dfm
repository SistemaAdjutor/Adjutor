object RelOrdemProd01: TRelOrdemProd01
  Left = -37
  Top = -48
  Width = 816
  Height = 1056
  Frame.Color = clBlack
  Frame.DrawTop = False
  Frame.DrawBottom = False
  Frame.DrawLeft = False
  Frame.DrawRight = False
  DataSet = TQOrdemItem
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
  SnapToGrid = True
  Units = MM
  Zoom = 100
  object QRBand1: TQRBand
    Left = 38
    Top = 38
    Width = 740
    Height = 127
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = True
    Frame.DrawLeft = False
    Frame.DrawRight = False
    AlignToBottom = False
    BeforePrint = QRBand1BeforePrint
    Color = clWhite
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      336.020833333333400000
      1957.916666666667000000)
    BandType = rbTitle
    object LabelEmpresa: TQRLabel
      Left = 9
      Top = 4
      Width = 104
      Height = 23
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        60.854166666666670000
        23.812500000000000000
        10.583333333333330000
        275.166666666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'LabelEmpresa'
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
    object QRShape1: TQRShape
      Left = 7
      Top = 27
      Width = 729
      Height = 1
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        2.645833333333333000
        18.520833333333330000
        71.437500000000000000
        1928.812500000000000000)
      Shape = qrsRectangle
    end
    object QRLabel1: TQRLabel
      Left = 226
      Top = 32
      Width = 222
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        597.958333333333300000
        84.666666666666670000
        587.375000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'FOLHA DE PESAGEM (PRODU'#199#195'O)'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRShape2: TQRShape
      Left = 7
      Top = 52
      Width = 729
      Height = 1
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        2.645833333333333000
        18.520833333333330000
        137.583333333333300000
        1928.812500000000000000)
      Shape = qrsRectangle
    end
    object QRLabel2: TQRLabel
      Left = 11
      Top = 57
      Width = 56
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        29.104166666666670000
        150.812500000000000000
        148.166666666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'PRODUTO :'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRLabel3: TQRLabel
      Left = 319
      Top = 57
      Width = 51
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        844.020833333333300000
        150.812500000000000000
        134.937500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Essencia :'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRLabel4: TQRLabel
      Left = 471
      Top = 57
      Width = 43
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1246.187500000000000000
        150.812500000000000000
        113.770833333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Volume :'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRLabel5: TQRLabel
      Left = 612
      Top = 57
      Width = 55
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1619.250000000000000000
        150.812500000000000000
        145.520833333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Ordem No.:'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRShape3: TQRShape
      Left = 7
      Top = 81
      Width = 729
      Height = 1
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        2.645833333333333000
        18.520833333333330000
        214.312500000000000000
        1928.812500000000000000)
      Shape = qrsRectangle
    end
    object QRLabel6: TQRLabel
      Left = 10
      Top = 85
      Width = 60
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        26.458333333333330000
        224.895833333333300000
        158.750000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'MAT. PRIMA'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRLabel7: TQRLabel
      Left = 100
      Top = 85
      Width = 44
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        264.583333333333300000
        224.895833333333300000
        116.416666666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'PESO Kg'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRLabel8: TQRLabel
      Left = 168
      Top = 85
      Width = 56
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        444.500000000000000000
        224.895833333333300000
        148.166666666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'N.N.F/LOTE'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRLabel9: TQRLabel
      Left = 251
      Top = 85
      Width = 133
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        664.104166666666700000
        224.895833333333300000
        351.895833333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'QUANTIDADE EM GRAMAS'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRLabel10: TQRLabel
      Left = 250
      Top = 104
      Width = 48
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        661.458333333333300000
        275.166666666666700000
        127.000000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'P. BRUTO'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRLabel11: TQRLabel
      Left = 349
      Top = 104
      Width = 30
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        923.395833333333300000
        275.166666666666700000
        79.375000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'TARA'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRLabel12: TQRLabel
      Left = 408
      Top = 85
      Width = 53
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1079.500000000000000000
        224.895833333333300000
        140.229166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'P. LIQUIDO'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRLabel13: TQRLabel
      Left = 491
      Top = 85
      Width = 119
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1299.104166666667000000
        224.895833333333300000
        314.854166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'ADI'#199#195'O DE MAT. PRIMA'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRLabel14: TQRLabel
      Left = 497
      Top = 104
      Width = 35
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1314.979166666667000000
        275.166666666666700000
        92.604166666666670000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'INICIAL'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRLabel15: TQRLabel
      Left = 577
      Top = 104
      Width = 30
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1526.645833333333000000
        275.166666666666700000
        79.375000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'FINAL'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRLabel16: TQRLabel
      Left = 656
      Top = 85
      Width = 32
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1735.666666666667000000
        224.895833333333300000
        84.666666666666670000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'VISTO'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRShape4: TQRShape
      Left = 84
      Top = 82
      Width = 1
      Height = 44
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        116.416666666666700000
        222.250000000000000000
        216.958333333333300000
        2.645833333333333000)
      Shape = qrsRectangle
    end
    object QRShape5: TQRShape
      Left = 160
      Top = 82
      Width = 1
      Height = 44
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        116.416666666666700000
        423.333333333333300000
        216.958333333333300000
        2.645833333333333000)
      Shape = qrsRectangle
    end
    object QRShape6: TQRShape
      Left = 241
      Top = 82
      Width = 1
      Height = 44
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        116.416666666666700000
        637.645833333333300000
        216.958333333333300000
        2.645833333333333000)
      Shape = qrsRectangle
    end
    object QRShape7: TQRShape
      Left = 401
      Top = 82
      Width = 1
      Height = 44
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        116.416666666666700000
        1060.979166666667000000
        216.958333333333300000
        2.645833333333333000)
      Shape = qrsRectangle
    end
    object QRShape8: TQRShape
      Left = 475
      Top = 82
      Width = 1
      Height = 44
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        116.416666666666700000
        1256.770833333333000000
        216.958333333333300000
        2.645833333333333000)
      Shape = qrsRectangle
    end
    object QRShape9: TQRShape
      Left = 630
      Top = 82
      Width = 1
      Height = 43
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        113.770833333333300000
        1666.875000000000000000
        216.958333333333300000
        2.645833333333333000)
      Shape = qrsRectangle
    end
    object QRShape10: TQRShape
      Left = 6
      Top = 82
      Width = 1
      Height = 44
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        116.416666666666700000
        15.875000000000000000
        216.958333333333300000
        2.645833333333333000)
      Shape = qrsRectangle
    end
    object QRShape11: TQRShape
      Left = 630
      Top = 82
      Width = 1
      Height = 44
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        116.416666666666700000
        1666.875000000000000000
        216.958333333333300000
        2.645833333333333000)
      Shape = qrsRectangle
    end
    object QRShape12: TQRShape
      Left = 734
      Top = 82
      Width = 1
      Height = 44
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        116.416666666666700000
        1942.041666666667000000
        216.958333333333300000
        2.645833333333333000)
      Shape = qrsRectangle
    end
    object QRShape24: TQRShape
      Left = 320
      Top = 102
      Width = 1
      Height = 24
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        63.500000000000000000
        846.666666666666700000
        269.875000000000000000
        2.645833333333333000)
      Shape = qrsRectangle
    end
    object QRShape25: TQRShape
      Left = 553
      Top = 102
      Width = 1
      Height = 24
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        63.500000000000000000
        1463.145833333333000000
        269.875000000000000000
        2.645833333333333000)
      Shape = qrsRectangle
    end
    object QRDBText2: TQRDBText
      Left = 76
      Top = 57
      Width = 36
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        201.083333333333300000
        150.812500000000000000
        95.250000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TQOrdemServ
      DataField = 'Osv0001.PRD_REFER'
      Font.Charset = ANSI_CHARSET
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
      Left = 112
      Top = 57
      Width = 205
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        296.333333333333300000
        150.812500000000000000
        542.395833333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TQOrdemServ
      DataField = 'PRD_DESCRI'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRDBText6: TQRDBText
      Left = 520
      Top = 57
      Width = 57
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1375.833333333333000000
        150.812500000000000000
        150.812500000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = TQOrdemServ
      DataField = 'OSV_QTDE'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      Mask = '#0.,000'
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRDBText7: TQRDBText
      Left = 670
      Top = 57
      Width = 57
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1772.708333333333000000
        150.812500000000000000
        150.812500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TQOrdemServ
      DataField = 'OSV_CODIGO'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRLabel17: TQRLabel
      Left = 580
      Top = 57
      Width = 17
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1534.583333333333000000
        150.812500000000000000
        44.979166666666670000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'Lt'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRDBText15: TQRDBText
      Left = 660
      Top = 32
      Width = 72
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1746.250000000000000000
        84.666666666666670000
        190.500000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TQOrdemServ
      DataField = 'OSV_EMISSAO'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
  end
  object QRBand2: TQRBand
    Left = 38
    Top = 165
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
    object QRShape13: TQRShape
      Left = 6
      Top = -1
      Width = 1
      Height = 22
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        58.208333333333330000
        15.875000000000000000
        -2.645833333333333000
        2.645833333333333000)
      Shape = qrsRectangle
    end
    object QRDBText1: TQRDBText
      Left = 10
      Top = 4
      Width = 69
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        26.458333333333330000
        10.583333333333330000
        182.562500000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TQOrdemItem
      DataField = 'PRD_REFER_ITENS'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRShape14: TQRShape
      Left = 84
      Top = -1
      Width = 1
      Height = 22
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        58.208333333333330000
        222.250000000000000000
        -2.645833333333333000
        2.645833333333333000)
      Shape = qrsRectangle
    end
    object QRShape16: TQRShape
      Left = 241
      Top = -1
      Width = 1
      Height = 22
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        58.208333333333330000
        637.645833333333300000
        -2.645833333333333000
        2.645833333333333000)
      Shape = qrsRectangle
    end
    object QRShape18: TQRShape
      Left = 320
      Top = -1
      Width = 1
      Height = 22
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        58.208333333333330000
        846.666666666666700000
        -2.645833333333333000
        2.645833333333333000)
      Shape = qrsRectangle
    end
    object QRShape19: TQRShape
      Left = 401
      Top = -1
      Width = 1
      Height = 22
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        58.208333333333330000
        1060.979166666667000000
        -2.645833333333333000
        2.645833333333333000)
      Shape = qrsRectangle
    end
    object QRShape20: TQRShape
      Left = 475
      Top = -1
      Width = 1
      Height = 22
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        58.208333333333330000
        1256.770833333333000000
        -2.645833333333333000
        2.645833333333333000)
      Shape = qrsRectangle
    end
    object QRShape21: TQRShape
      Left = 553
      Top = -1
      Width = 1
      Height = 22
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        58.208333333333330000
        1463.145833333333000000
        -2.645833333333333000
        2.645833333333333000)
      Shape = qrsRectangle
    end
    object QRShape22: TQRShape
      Left = 630
      Top = -1
      Width = 1
      Height = 22
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        58.208333333333330000
        1666.875000000000000000
        -2.645833333333333000
        2.645833333333333000)
      Shape = qrsRectangle
    end
    object QRShape23: TQRShape
      Left = 734
      Top = -1
      Width = 1
      Height = 22
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        58.208333333333330000
        1942.041666666667000000
        -2.645833333333333000
        2.645833333333333000)
      Shape = qrsRectangle
    end
    object QRShape15: TQRShape
      Left = 160
      Top = -1
      Width = 1
      Height = 22
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        58.208333333333330000
        423.333333333333300000
        -2.645833333333333000
        2.645833333333333000)
      Shape = qrsRectangle
    end
    object QRExpr2: TQRExpr
      Left = 86
      Top = 4
      Width = 70
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        227.541666666666700000
        10.583333333333330000
        185.208333333333300000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      Color = clWhite
      ParentFont = False
      ResetAfterPrint = False
      Transparent = False
      WordWrap = True
      Expression = 
        'IF(TQOrdemItem.OSI_QTDE1 > 0,TQOrdemItem.OSI_QTDE1 * TQOrdemItem' +
        '.OSI_UC / 1000,IF(TQOrdemItem.OSI_QTDE2 > 0,TQOrdemItem.OSI_QTDE' +
        '2 * TQOrdemItem.OSI_UC / 1000,IF(TQOrdemItem.OSI_QTDE3 > 0,TQOrd' +
        'emItem.OSI_QTDE3 * TQOrdemItem.OSI_UC / 1000,IF(TQOrdemItem.OSI_' +
        'QTDE4 > 0,TQOrdemItem.OSI_QTDE4 * TQOrdemItem.OSI_UC / 1000,IF(T' +
        'QOrdemItem.OSI_QTDE5 > 0,TQOrdemItem.OSI_QTDE5 * TQOrdemItem.OSI' +
        '_UC / 1000,TQOrdemItem.OSI_QTDE6 * TQOrdemItem.OSI_UC / 1000))))' +
        ')'
      Mask = '#0.,000'
      FontSize = 8
    end
  end
  object QRBand3: TQRBand
    Left = 38
    Top = 209
    Width = 740
    Height = 320
    Frame.Color = clBlack
    Frame.DrawTop = True
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    AlignToBottom = False
    Color = clWhite
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      846.666666666666700000
      1957.916666666667000000)
    BandType = rbPageFooter
    object QRDBText4: TQRDBText
      Left = 87
      Top = 3
      Width = 60
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        230.187500000000000000
        7.937500000000000000
        158.750000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = TQOrdemServ
      DataField = 'FTC_PROC1'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRDBText5: TQRDBText
      Left = 87
      Top = 16
      Width = 60
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        230.187500000000000000
        42.333333333333340000
        158.750000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = TQOrdemServ
      DataField = 'FTC_PROC2'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRDBText9: TQRDBText
      Left = 87
      Top = 28
      Width = 60
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        230.187500000000000000
        74.083333333333330000
        158.750000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = TQOrdemServ
      DataField = 'FTC_PROC3'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRDBText10: TQRDBText
      Left = 87
      Top = 40
      Width = 60
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        230.187500000000000000
        105.833333333333300000
        158.750000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = TQOrdemServ
      DataField = 'FTC_PROC4'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRDBText11: TQRDBText
      Left = 87
      Top = 52
      Width = 60
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        230.187500000000000000
        137.583333333333300000
        158.750000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = TQOrdemServ
      DataField = 'FTC_PROC5'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRDBText12: TQRDBText
      Left = 87
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
        230.187500000000000000
        169.333333333333300000
        158.750000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = TQOrdemServ
      DataField = 'FTC_PROC6'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRDBText13: TQRDBText
      Left = 87
      Top = 76
      Width = 60
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        230.187500000000000000
        201.083333333333300000
        158.750000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = TQOrdemServ
      DataField = 'FTC_PROC7'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRDBText14: TQRDBText
      Left = 87
      Top = 88
      Width = 60
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        230.187500000000000000
        232.833333333333300000
        158.750000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = TQOrdemServ
      DataField = 'FTC_PROC8'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRShape17: TQRShape
      Left = 2
      Top = 104
      Width = 735
      Height = 1
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        2.645833333333333000
        5.291666666666667000
        275.166666666666700000
        1944.687500000000000000)
      Shape = qrsRectangle
    end
    object QRLabel19: TQRLabel
      Left = 97
      Top = 108
      Width = 74
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        256.645833333333300000
        285.750000000000000000
        195.791666666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'N.Tq.PREPARO'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRLabel20: TQRLabel
      Left = 17
      Top = 108
      Width = 100
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        44.979166666666670000
        285.750000000000000000
        264.583333333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'N.Tq.ARMAZENADO'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRLabel21: TQRLabel
      Left = 211
      Top = 108
      Width = 86
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        558.270833333333300000
        285.750000000000000000
        227.541666666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'OBSERVA'#199#213'ES :'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRShape26: TQRShape
      Left = 299
      Top = 126
      Width = 438
      Height = 1
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        2.645833333333333000
        791.104166666666700000
        333.375000000000000000
        1158.875000000000000000)
      Shape = qrsRectangle
    end
    object QRShape27: TQRShape
      Left = 2
      Top = 147
      Width = 735
      Height = 1
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        2.645833333333333000
        5.291666666666667000
        388.937500000000000000
        1944.687500000000000000)
      Shape = qrsRectangle
    end
    object QRShape28: TQRShape
      Left = 2
      Top = 168
      Width = 735
      Height = 1
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        2.645833333333333000
        5.291666666666667000
        444.500000000000000000
        1944.687500000000000000)
      Shape = qrsRectangle
    end
    object QRShape29: TQRShape
      Left = 2
      Top = 188
      Width = 735
      Height = 1
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        2.645833333333333000
        5.291666666666667000
        497.416666666666700000
        1944.687500000000000000)
      Shape = qrsRectangle
    end
    object QRLabel22: TQRLabel
      Left = 161
      Top = 195
      Width = 104
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        425.979166666666700000
        515.937500000000000000
        275.166666666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'No. Lote Produzido = '
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRLabel23: TQRLabel
      Left = 377
      Top = 196
      Width = 22
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        997.479166666666700000
        518.583333333333300000
        58.208333333333330000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'ph ='
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRLabel24: TQRLabel
      Left = 493
      Top = 196
      Width = 61
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1304.395833333333000000
        518.583333333333300000
        161.395833333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Densidade ='
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRShape30: TQRShape
      Left = 2
      Top = 218
      Width = 735
      Height = 1
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        2.645833333333333000
        5.291666666666667000
        576.791666666666700000
        1944.687500000000000000)
      Shape = qrsRectangle
    end
    object QRLabel25: TQRLabel
      Left = 10
      Top = 223
      Width = 135
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        26.458333333333330000
        590.020833333333300000
        357.187500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'SA'#205'DA DO LABORAT'#211'RIO :'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRLabel26: TQRLabel
      Left = 11
      Top = 244
      Width = 33
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        29.104166666666670000
        645.583333333333300000
        87.312500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'DATA:'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRLabel27: TQRLabel
      Left = 137
      Top = 244
      Width = 34
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        362.479166666666700000
        645.583333333333300000
        89.958333333333330000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'HORA:'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRLabel28: TQRLabel
      Left = 251
      Top = 244
      Width = 35
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        664.104166666666700000
        645.583333333333300000
        92.604166666666670000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'VISTO:'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRShape31: TQRShape
      Left = 2
      Top = 264
      Width = 379
      Height = 1
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        2.645833333333333000
        5.291666666666667000
        698.500000000000000000
        1002.770833333333000000)
      Shape = qrsRectangle
    end
    object QRLabel29: TQRLabel
      Left = 10
      Top = 268
      Width = 162
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        26.458333333333330000
        709.083333333333300000
        428.625000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'RETORNO DO LABORAT'#211'RIO :'
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
    object QRLabel30: TQRLabel
      Left = 10
      Top = 287
      Width = 33
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        26.458333333333330000
        759.354166666666700000
        87.312500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'DATA:'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRLabel31: TQRLabel
      Left = 136
      Top = 287
      Width = 34
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        359.833333333333300000
        759.354166666666700000
        89.958333333333330000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'HORA:'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRLabel32: TQRLabel
      Left = 250
      Top = 287
      Width = 35
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        661.458333333333300000
        759.354166666666700000
        92.604166666666670000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'VISTO:'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRShape32: TQRShape
      Left = 382
      Top = 218
      Width = 1
      Height = 92
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        243.416666666666700000
        1010.708333333333000000
        576.791666666666700000
        2.645833333333333000)
      Shape = qrsRectangle
    end
    object QRLabel33: TQRLabel
      Left = 397
      Top = 228
      Width = 70
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1050.395833333333000000
        603.250000000000000000
        185.208333333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = '[   ]  Aprovado'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRLabel34: TQRLabel
      Left = 397
      Top = 271
      Width = 75
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1050.395833333333000000
        717.020833333333300000
        198.437500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = '[   ]  Reprovado'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRShape33: TQRShape
      Left = 483
      Top = 218
      Width = 1
      Height = 92
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        243.416666666666700000
        1277.937500000000000000
        576.791666666666700000
        2.645833333333333000)
      Shape = qrsRectangle
    end
    object QRLabel35: TQRLabel
      Left = 491
      Top = 225
      Width = 66
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1299.104166666667000000
        595.312500000000000000
        174.625000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Provid'#234'ncias:'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRShape34: TQRShape
      Left = 556
      Top = 242
      Width = 183
      Height = 1
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        2.645833333333333000
        1471.083333333333000000
        640.291666666666700000
        484.187500000000000000)
      Shape = qrsRectangle
    end
    object QRShape35: TQRShape
      Left = 485
      Top = 265
      Width = 253
      Height = 1
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        2.645833333333333000
        1283.229166666667000000
        701.145833333333300000
        669.395833333333300000)
      Shape = qrsRectangle
    end
    object QRShape36: TQRShape
      Left = 485
      Top = 287
      Width = 253
      Height = 1
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        2.645833333333333000
        1283.229166666667000000
        759.354166666666700000
        669.395833333333300000)
      Shape = qrsRectangle
    end
    object QRShape37: TQRShape
      Left = 92
      Top = 104
      Width = 1
      Height = 85
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        224.895833333333300000
        243.416666666666700000
        275.166666666666700000
        2.645833333333333000)
      Shape = qrsRectangle
    end
    object QRShape38: TQRShape
      Left = 207
      Top = 104
      Width = 1
      Height = 85
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        224.895833333333300000
        547.687500000000000000
        275.166666666666700000
        2.645833333333333000)
      Shape = qrsRectangle
    end
    object QRShape40: TQRShape
      Left = 2
      Top = 310
      Width = 735
      Height = 1
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        2.645833333333333000
        5.291666666666667000
        820.208333333333300000
        1944.687500000000000000)
      Shape = qrsRectangle
    end
  end
  object QRBand4: TQRBand
    Left = 38
    Top = 184
    Width = 740
    Height = 25
    Frame.Color = clBlack
    Frame.DrawTop = True
    Frame.DrawBottom = True
    Frame.DrawLeft = False
    Frame.DrawRight = False
    AlignToBottom = False
    Color = clWhite
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      66.145833333333330000
      1957.916666666667000000)
    BandType = rbSummary
    object QRLabel18: TQRLabel
      Left = 23
      Top = 6
      Width = 35
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        60.854166666666670000
        15.875000000000000000
        92.604166666666670000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'TOTAL'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
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
      Left = 166
      Top = 5
      Width = 70
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        439.208333333333300000
        13.229166666666670000
        185.208333333333300000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TQOrdemServ
      DataField = 'OSV_QTDE'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      Mask = '#0.,000'
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRShape39: TQRShape
      Left = 160
      Top = 0
      Width = 1
      Height = 25
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        66.145833333333330000
        423.333333333333300000
        0.000000000000000000
        2.645833333333333000)
      Shape = qrsRectangle
    end
    object QRExpr1: TQRExpr
      Left = 86
      Top = 4
      Width = 70
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        227.541666666666700000
        10.583333333333330000
        185.208333333333300000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      Color = clWhite
      ParentFont = False
      ResetAfterPrint = False
      Transparent = False
      WordWrap = True
      Expression = 
        'SUM(IF(TQOrdemItem.OSI_QTDE1 > 0,TQOrdemItem.OSI_QTDE1 * TQOrdem' +
        'Item.OSI_UC / 1000,IF(TQOrdemItem.OSI_QTDE2 > 0,TQOrdemItem.OSI_' +
        'QTDE2 * TQOrdemItem.OSI_UC / 1000,IF(TQOrdemItem.OSI_QTDE3 > 0,T' +
        'QOrdemItem.OSI_QTDE3 * TQOrdemItem.OSI_UC / 1000,IF(TQOrdemItem.' +
        'OSI_QTDE4 > 0,TQOrdemItem.OSI_QTDE4 * TQOrdemItem.OSI_UC / 1000,' +
        'TQOrdemItem.OSI_QTDE5 * TQOrdemItem.OSI_UC / 1000)))))'
      Mask = '#0.,000'
      FontSize = 8
    end
  end
  object TQOrdemServ: TQuery
    DatabaseName = 'RwDbAdm'
    SQL.Strings = (
      
        'SELECT OSV0001.OSV_CODIGO, OSV0001.OSV_EMISSAO, OSV0001.OSV_QTDE' +
        ', OSV0001.PRD_REFER, PRD0000.PRD_REFER, PRD0000.PRD_DESCRI, FTC0' +
        '000.PRD_REFER, FTC0000.FTC_PROC1, FTC0000.FTC_PROC2, FTC0000.FTC' +
        '_PROC3, FTC0000.FTC_PROC4, FTC0000.FTC_PROC5, FTC0000.FTC_PROC6,' +
        ' FTC0000.FTC_PROC7, FTC0000.FTC_PROC8, OSV0001.PED_CODIGO, OSV00' +
        '01.OSV_CONCLUSAO, OSV0001.OSV_PRDDESCRI, OSV0001.OSV_CLIRAZAO, O' +
        'SV0001.OSV_DCMOD1, OSV0001.OSV_DCMOD2, OSV0001.OSV_DCMOD3, OSV00' +
        '01.OSV_DCMOD4, OSV0001.OSV_DCMOD5, OSV0001.OSV_DCMOD6, OSV0001.O' +
        'SV_QTDE1, OSV0001.OSV_QTDE2, OSV0001.OSV_QTDE3, OSV0001.OSV_QTDE' +
        '4, OSV0001.OSV_QTDE5, OSV0001.OSV_QTDE6, FTC0000.FTC_TUP'
      'FROM OSV0001, PRD0000, FTC0000'
      'WHERE  (OSV0001.PRD_REFER = PRD0000.PRD_REFER)  '
      '   AND  (PRD0000.PRD_REFER = FTC0000.PRD_REFER)  ')
    Left = 56
    Top = 8
    object TQOrdemServOSV_CODIGO: TStringField
      FieldName = 'OSV_CODIGO'
      Origin = 'OSV0001.OSV_CODIGO'
      Size = 6
    end
    object TQOrdemServOSV_EMISSAO: TDateTimeField
      FieldName = 'OSV_EMISSAO'
      Origin = 'OSV0001.OSV_EMISSAO'
    end
    object TQOrdemServOsv0001PRD_REFER: TStringField
      FieldName = 'Osv0001.PRD_REFER'
      Origin = 'OSV0001.PRD_REFER'
      Size = 11
    end
    object TQOrdemServPRD0000PRD_REFER: TStringField
      FieldName = 'PRD0000.PRD_REFER'
      Origin = 'PRD0000.PRD_REFER'
      Size = 11
    end
    object TQOrdemServPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Origin = 'PRD0000.PRD_DESCRI'
      Size = 40
    end
    object TQOrdemServFTC0000PRD_REFER: TStringField
      FieldName = 'FTC0000.PRD_REFER'
      Origin = 'FTC0000.PRD_REFER'
      Size = 11
    end
    object TQOrdemServFTC_PROC1: TStringField
      FieldName = 'FTC_PROC1'
      Origin = 'FTC0000.FTC_PROC1'
      Size = 75
    end
    object TQOrdemServFTC_PROC2: TStringField
      FieldName = 'FTC_PROC2'
      Origin = 'FTC0000.FTC_PROC2'
      Size = 75
    end
    object TQOrdemServFTC_PROC3: TStringField
      FieldName = 'FTC_PROC3'
      Origin = 'FTC0000.FTC_PROC3'
      Size = 75
    end
    object TQOrdemServFTC_PROC4: TStringField
      FieldName = 'FTC_PROC4'
      Origin = 'FTC0000.FTC_PROC4'
      Size = 75
    end
    object TQOrdemServFTC_PROC5: TStringField
      FieldName = 'FTC_PROC5'
      Origin = 'FTC0000.FTC_PROC5'
      Size = 75
    end
    object TQOrdemServFTC_PROC6: TStringField
      FieldName = 'FTC_PROC6'
      Origin = 'FTC0000.FTC_PROC6'
      Size = 75
    end
    object TQOrdemServFTC_PROC7: TStringField
      FieldName = 'FTC_PROC7'
      Origin = 'FTC0000.FTC_PROC7'
      Size = 75
    end
    object TQOrdemServFTC_PROC8: TStringField
      FieldName = 'FTC_PROC8'
      Origin = 'FTC0000.FTC_PROC8'
      Size = 75
    end
    object TQOrdemServOSV_DCMOD1: TStringField
      FieldName = 'OSV_DCMOD1'
      Origin = 'OSV0001.OSV_DCMOD1'
      Size = 12
    end
    object TQOrdemServOSV_DCMOD2: TStringField
      FieldName = 'OSV_DCMOD2'
      Origin = 'OSV0001.OSV_DCMOD2'
      Size = 12
    end
    object TQOrdemServOSV_DCMOD3: TStringField
      FieldName = 'OSV_DCMOD3'
      Origin = 'OSV0001.OSV_DCMOD3'
      Size = 12
    end
    object TQOrdemServOSV_DCMOD4: TStringField
      FieldName = 'OSV_DCMOD4'
      Origin = 'OSV0001.OSV_DCMOD4'
      Size = 12
    end
    object TQOrdemServOSV_DCMOD5: TStringField
      FieldName = 'OSV_DCMOD5'
      Origin = 'OSV0001.OSV_DCMOD5'
      Size = 12
    end
    object TQOrdemServOSV_DCMOD6: TStringField
      FieldName = 'OSV_DCMOD6'
      Origin = 'OSV0001.OSV_DCMOD6'
      Size = 12
    end
    object TQOrdemServPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      Origin = 'OSV0001.PED_CODIGO'
      Size = 6
    end
    object TQOrdemServOSV_CONCLUSAO: TDateTimeField
      FieldName = 'OSV_CONCLUSAO'
      Origin = 'OSV0001.OSV_CONCLUSAO'
    end
    object TQOrdemServOSV_PRDDESCRI: TStringField
      FieldName = 'OSV_PRDDESCRI'
      Origin = 'OSV0001.OSV_PRDDESCRI'
      Size = 40
    end
    object TQOrdemServOSV_CLIRAZAO: TStringField
      FieldName = 'OSV_CLIRAZAO'
      Origin = 'OSV0001.OSV_CLIRAZAO'
      Size = 40
    end
    object TQOrdemServOSV_QTDE1: TFloatField
      FieldName = 'OSV_QTDE1'
      Origin = 'OSV0001.OSV_QTDE1'
    end
    object TQOrdemServOSV_QTDE2: TFloatField
      FieldName = 'OSV_QTDE2'
      Origin = 'OSV0001.OSV_QTDE2'
    end
    object TQOrdemServOSV_QTDE3: TFloatField
      FieldName = 'OSV_QTDE3'
      Origin = 'OSV0001.OSV_QTDE3'
    end
    object TQOrdemServOSV_QTDE4: TFloatField
      FieldName = 'OSV_QTDE4'
      Origin = 'OSV0001.OSV_QTDE4'
    end
    object TQOrdemServOSV_QTDE5: TFloatField
      FieldName = 'OSV_QTDE5'
      Origin = 'OSV0001.OSV_QTDE5'
    end
    object TQOrdemServOSV_QTDE6: TFloatField
      FieldName = 'OSV_QTDE6'
      Origin = 'OSV0001.OSV_QTDE6'
    end
    object TQOrdemServOSV_QTDE: TFloatField
      FieldName = 'OSV_QTDE'
      Origin = 'OSV0001.OSV_QTDE'
    end
    object TQOrdemServFTC_TUP: TFloatField
      FieldName = 'FTC_TUP'
      Origin = 'FTC0000.FTC_TUP'
    end
  end
  object TQOrdemItem: TQuery
    DatabaseName = 'RwDbAdm'
    SQL.Strings = (
      
        'SELECT OSV_CODIGO, PRD_REFER, PRD_REFER_ITENS, OSI_UC, OSI_QTDE1' +
        ', OSI_QTDE2, OSI_QTDE3, OSI_QTDE4, OSI_QTDE5, EMP_CODIGO, OSI_QT' +
        'DE6, OSI_PRDDESCRI'
      'FROM OSV_IT02')
    Left = 104
    Top = 8
    object TQOrdemItemOSV_CODIGO: TStringField
      FieldName = 'OSV_CODIGO'
      Origin = 'OSV_IT02.OSV_CODIGO'
      Size = 6
    end
    object TQOrdemItemPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Origin = 'OSV_IT02.PRD_REFER'
      Size = 11
    end
    object TQOrdemItemPRD_REFER_ITENS: TStringField
      FieldName = 'PRD_REFER_ITENS'
      Origin = 'OSV_IT02.PRD_REFER_ITENS'
      Size = 11
    end
    object TQOrdemItemOSI_UC: TFloatField
      FieldName = 'OSI_UC'
      Origin = 'OSV_IT02.OSI_UC'
    end
    object TQOrdemItemOSI_QTDE1: TFloatField
      FieldName = 'OSI_QTDE1'
      Origin = 'OSV_IT02.OSI_QTDE1'
    end
    object TQOrdemItemOSI_QTDE2: TFloatField
      FieldName = 'OSI_QTDE2'
      Origin = 'OSV_IT02.OSI_QTDE2'
    end
    object TQOrdemItemOSI_QTDE3: TFloatField
      FieldName = 'OSI_QTDE3'
      Origin = 'OSV_IT02.OSI_QTDE3'
    end
    object TQOrdemItemOSI_QTDE4: TFloatField
      FieldName = 'OSI_QTDE4'
      Origin = 'OSV_IT02.OSI_QTDE4'
    end
    object TQOrdemItemOSI_QTDE5: TFloatField
      FieldName = 'OSI_QTDE5'
      Origin = 'OSV_IT02.OSI_QTDE5'
    end
    object TQOrdemItemEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Origin = 'OSV_IT02.EMP_CODIGO'
      Size = 3
    end
    object TQOrdemItemOSI_QTDE6: TFloatField
      FieldName = 'OSI_QTDE6'
      Origin = 'OSV_IT02.OSI_QTDE6'
    end
    object TQOrdemItemOSI_PRDDESCRI: TStringField
      FieldName = 'OSI_PRDDESCRI'
      Origin = 'OSV_IT02.OSI_PRDDESCRI'
      Size = 40
    end
  end
  object QRTextFilter1: TQRTextFilter
    Left = 32
    Top = 16
  end
end
