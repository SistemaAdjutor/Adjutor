object RelOrdemProd02: TRelOrdemProd02
  Left = -37
  Top = 0
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
    50.000000000000000000
    50.000000000000000000
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
    Left = 19
    Top = 38
    Width = 778
    Height = 126
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    AlignToBottom = False
    BeforePrint = QRBand1BeforePrint
    Color = clWhite
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      333.375000000000000000
      2058.458333333333000000)
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
      Left = 5
      Top = 27
      Width = 767
      Height = 1
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        2.645833333333333000
        13.229166666666670000
        71.437500000000000000
        2029.354166666667000000)
      Shape = qrsRectangle
    end
    object QRShape2: TQRShape
      Left = 5
      Top = 52
      Width = 768
      Height = 1
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        2.645833333333333000
        13.229166666666670000
        137.583333333333300000
        2032.000000000000000000)
      Shape = qrsRectangle
    end
    object QRLabel1: TQRLabel
      Left = 9
      Top = 32
      Width = 145
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        23.812500000000000000
        84.666666666666670000
        383.645833333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Ordem de Produ'#231#227'o No.:'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRDBText7: TQRDBText
      Left = 159
      Top = 32
      Width = 87
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        420.687500000000000000
        84.666666666666670000
        230.187500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TQOrdemServ
      DataField = 'OSV_CODIGO'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 10
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
    object QRDBText2: TQRDBText
      Left = 70
      Top = 56
      Width = 80
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        185.208333333333300000
        148.166666666666700000
        211.666666666666700000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TQOrdemServ
      DataField = 'Osv0001.PRD_REFER'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRDBText3: TQRDBText
      Left = 151
      Top = 59
      Width = 280
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        399.520833333333300000
        156.104166666666700000
        740.833333333333300000)
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
    object QRLabel4: TQRLabel
      Left = 450
      Top = 59
      Width = 43
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1190.625000000000000000
        156.104166666666700000
        113.770833333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'QUANT.:'
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
    object QRDBText6: TQRDBText
      Left = 495
      Top = 56
      Width = 71
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1309.687500000000000000
        148.166666666666700000
        187.854166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = TQOrdemServ
      DataField = 'OSV_QTDE'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRShape3: TQRShape
      Left = 5
      Top = 76
      Width = 768
      Height = 1
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        2.645833333333333000
        13.229166666666670000
        201.083333333333300000
        2032.000000000000000000)
      Shape = qrsRectangle
    end
    object QRLabel6: TQRLabel
      Left = 6
      Top = 80
      Width = 54
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        15.875000000000000000
        211.666666666666700000
        142.875000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'MAT. PRIMA'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 7
    end
    object QRLabel8: TQRLabel
      Left = 128
      Top = 80
      Width = 46
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        338.666666666666700000
        211.666666666666700000
        121.708333333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'MATERIAL'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 7
    end
    object QRShape4: TQRShape
      Left = 61
      Top = 77
      Width = 1
      Height = 44
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        116.416666666666700000
        161.395833333333300000
        203.729166666666700000
        2.645833333333333000)
      Shape = qrsRectangle
    end
    object QRShape7: TQRShape
      Left = 335
      Top = 77
      Width = 1
      Height = 44
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        116.416666666666700000
        886.354166666666700000
        203.729166666666700000
        2.645833333333333000)
      Shape = qrsRectangle
    end
    object QRShape8: TQRShape
      Left = 398
      Top = 77
      Width = 1
      Height = 44
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        116.416666666666700000
        1053.041666666667000000
        203.729166666666700000
        2.645833333333333000)
      Shape = qrsRectangle
    end
    object QRShape9: TQRShape
      Left = 587
      Top = 77
      Width = 1
      Height = 43
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        113.770833333333300000
        1553.104166666667000000
        203.729166666666700000
        2.645833333333333000)
      Shape = qrsRectangle
    end
    object QRShape11: TQRShape
      Left = 524
      Top = 77
      Width = 1
      Height = 44
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        116.416666666666700000
        1386.416666666667000000
        203.729166666666700000
        2.645833333333333000)
      Shape = qrsRectangle
    end
    object QRLabel3: TQRLabel
      Left = 184
      Top = 105
      Width = 88
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        486.833333333333300000
        277.812500000000000000
        232.833333333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'QUANTIDADE --->'
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
    object QRDBText1: TQRDBText
      Left = 337
      Top = 80
      Width = 60
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        891.645833333333300000
        211.666666666666700000
        158.750000000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TQOrdemServ
      DataField = 'OSV_DCMOD1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 7
    end
    object QRDBText4: TQRDBText
      Left = 400
      Top = 80
      Width = 60
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1058.333333333333000000
        211.666666666666700000
        158.750000000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TQOrdemServ
      DataField = 'OSV_DCMOD2'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 7
    end
    object QRShape5: TQRShape
      Left = 461
      Top = 77
      Width = 1
      Height = 44
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        116.416666666666700000
        1219.729166666667000000
        203.729166666666700000
        2.645833333333333000)
      Shape = qrsRectangle
    end
    object QRDBText5: TQRDBText
      Left = 463
      Top = 80
      Width = 60
      Height = 14
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        37.041666666666670000
        1225.020833333333000000
        211.666666666666700000
        158.750000000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TQOrdemServ
      DataField = 'OSV_DCMOD3'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 7
    end
    object QRDBText8: TQRDBText
      Left = 526
      Top = 80
      Width = 60
      Height = 14
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        37.041666666666670000
        1391.708333333333000000
        211.666666666666700000
        158.750000000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TQOrdemServ
      DataField = 'OSV_DCMOD4'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 7
    end
    object QRDBText9: TQRDBText
      Left = 589
      Top = 80
      Width = 60
      Height = 14
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        37.041666666666670000
        1558.395833333333000000
        211.666666666666700000
        158.750000000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TQOrdemServ
      DataField = 'OSV_DCMOD5'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 7
    end
    object QRShape10: TQRShape
      Left = 650
      Top = 77
      Width = 1
      Height = 43
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        113.770833333333300000
        1719.791666666667000000
        203.729166666666700000
        2.645833333333333000)
      Shape = qrsRectangle
    end
    object QRDBText10: TQRDBText
      Left = 651
      Top = 80
      Width = 60
      Height = 14
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        37.041666666666670000
        1722.437500000000000000
        211.666666666666700000
        158.750000000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TQOrdemServ
      DataField = 'OSV_DCMOD6'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 7
    end
    object QRShape12: TQRShape
      Left = 712
      Top = 77
      Width = 1
      Height = 43
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        113.770833333333300000
        1883.833333333333000000
        203.729166666666700000
        2.645833333333333000)
      Shape = qrsRectangle
    end
    object QRLabel5: TQRLabel
      Left = 726
      Top = 80
      Width = 35
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1920.875000000000000000
        211.666666666666700000
        92.604166666666670000)
      Alignment = taLeftJustify
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
    object QRDBText11: TQRDBText
      Left = 339
      Top = 105
      Width = 57
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        896.937500000000000000
        277.812500000000000000
        150.812500000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TQOrdemServ
      DataField = 'OSV_QTDE1'
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
      Left = 402
      Top = 105
      Width = 57
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1063.625000000000000000
        277.812500000000000000
        150.812500000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TQOrdemServ
      DataField = 'OSV_QTDE2'
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
      Left = 465
      Top = 105
      Width = 57
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1230.312500000000000000
        277.812500000000000000
        150.812500000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TQOrdemServ
      DataField = 'OSV_QTDE3'
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
      Left = 528
      Top = 105
      Width = 57
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1397.000000000000000000
        277.812500000000000000
        150.812500000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TQOrdemServ
      DataField = 'OSV_QTDE4'
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
      Left = 591
      Top = 105
      Width = 57
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1563.687500000000000000
        277.812500000000000000
        150.812500000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TQOrdemServ
      DataField = 'OSV_QTDE5'
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
    object QRDBText16: TQRDBText
      Left = 653
      Top = 105
      Width = 57
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1727.729166666667000000
        277.812500000000000000
        150.812500000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TQOrdemServ
      DataField = 'OSV_QTDE6'
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
    object QRShape6: TQRShape
      Left = 5
      Top = 123
      Width = 769
      Height = 1
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        2.645833333333333000
        13.229166666666670000
        325.437500000000000000
        2034.645833333333000000)
      Shape = qrsRectangle
    end
    object QRDBText19: TQRDBText
      Left = 714
      Top = 105
      Width = 57
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1889.125000000000000000
        277.812500000000000000
        150.812500000000000000)
      Alignment = taCenter
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
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRDBText20: TQRDBText
      Left = 694
      Top = 5
      Width = 72
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1836.208333333333000000
        13.229166666666670000
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
    object QRLabel7: TQRLabel
      Left = 657
      Top = 34
      Width = 35
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1738.312500000000000000
        89.958333333333330000
        92.604166666666670000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'T.U.P. :'
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
    object QRDBText21: TQRDBText
      Left = 695
      Top = 32
      Width = 57
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1838.854166666667000000
        84.666666666666670000
        150.812500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TQOrdemServ
      DataField = 'FTC_TUP'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRLabel9: TQRLabel
      Left = 621
      Top = 59
      Width = 72
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1643.062500000000000000
        156.104166666666700000
        190.500000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'T.U.P. TOTAL :'
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
    object QRLbTupTotal: TQRLabel
      Left = 695
      Top = 56
      Width = 75
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1838.854166666667000000
        148.166666666666700000
        198.437500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'QRLbTupTotal'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRLabel10: TQRLabel
      Left = 646
      Top = 7
      Width = 47
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1709.208333333333000000
        18.520833333333330000
        124.354166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Emiss'#227'o :'
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
    object QRShape13: TQRShape
      Left = 282
      Top = 77
      Width = 1
      Height = 44
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        116.416666666666700000
        746.125000000000000000
        203.729166666666700000
        2.645833333333333000)
      Shape = qrsRectangle
    end
    object QRLabel11: TQRLabel
      Left = 284
      Top = 80
      Width = 49
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        751.416666666666700000
        211.666666666666700000
        129.645833333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'CONSUMO'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 7
    end
    object QRLabel12: TQRLabel
      Left = 286
      Top = 94
      Width = 46
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        756.708333333333300000
        248.708333333333300000
        121.708333333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'UNIT'#193'RIO'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 7
    end
  end
  object QRBand2: TQRBand
    Left = 19
    Top = 164
    Width = 778
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
      2058.458333333333000000)
    BandType = rbDetail
    object QRDBText17: TQRDBText
      Left = 4
      Top = 1
      Width = 56
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
        148.166666666666700000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
      Color = clWhite
      DataSet = TQOrdemItem
      DataField = 'PRD_REFER_ITENS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 7
    end
    object QRDBText18: TQRDBText
      Left = 80
      Top = 1
      Width = 216
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
        571.500000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TQOrdemItem
      DataField = 'OSI_PRDDESCRI'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 7
    end
    object QRExpr2: TQRExpr
      Left = 713
      Top = 1
      Width = 55
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1886.479166666667000000
        2.645833333333333000
        145.520833333333300000)
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
        'TQOrdemItem.OSI_QTDE1 * TQOrdemItem.OSI_UC +TQOrdemItem.OSI_QTDE' +
        '2 * TQOrdemItem.OSI_UC +  TQOrdemItem.OSI_QTDE3 * TQOrdemItem.OS' +
        'I_UC +  TQOrdemItem.OSI_QTDE4 * TQOrdemItem.OSI_UC +   TQOrdemIt' +
        'em.OSI_QTDE5 * TQOrdemItem.OSI_UC + TQOrdemItem.OSI_QTDE6 * TQOr' +
        'demItem.OSI_UC'
      Mask = '#0.,000'
      FontSize = 8
    end
    object QRExpr1: TQRExpr
      Left = 341
      Top = 1
      Width = 55
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        902.229166666666700000
        2.645833333333333000
        145.520833333333300000)
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
        '.OSI_UC,'#39' '#39') '
      Mask = '#0.,000'
      FontSize = 8
    end
    object QRExpr3: TQRExpr
      Left = 403
      Top = 1
      Width = 55
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1066.270833333333000000
        2.645833333333333000
        145.520833333333300000)
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
        'IF(TQOrdemItem.OSI_QTDE2 > 0,TQOrdemItem.OSI_QTDE2 * TQOrdemItem' +
        '.OSI_UC,'#39' '#39') '
      Mask = '#0.,000'
      FontSize = 8
    end
    object QRExpr4: TQRExpr
      Left = 467
      Top = 1
      Width = 55
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1235.604166666667000000
        2.645833333333333000
        145.520833333333300000)
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
        'IF(TQOrdemItem.OSI_QTDE3 > 0,TQOrdemItem.OSI_QTDE3 * TQOrdemItem' +
        '.OSI_UC,'#39' '#39') '
      Mask = '#0.,000'
      FontSize = 8
    end
    object QRExpr5: TQRExpr
      Left = 530
      Top = 1
      Width = 55
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1402.291666666667000000
        2.645833333333333000
        145.520833333333300000)
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
        'IF(TQOrdemItem.OSI_QTDE4 > 0,TQOrdemItem.OSI_QTDE4 * TQOrdemItem' +
        '.OSI_UC,'#39' '#39') '
      Mask = '#0.,000'
      FontSize = 8
    end
    object QRExpr6: TQRExpr
      Left = 592
      Top = 1
      Width = 55
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1566.333333333333000000
        2.645833333333333000
        145.520833333333300000)
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
        'IF(TQOrdemItem.OSI_QTDE4 > 0,TQOrdemItem.OSI_QTDE4 * TQOrdemItem' +
        '.OSI_UC,'#39' '#39') '
      Mask = '#0.,000'
      FontSize = 8
    end
    object QRExpr7: TQRExpr
      Left = 655
      Top = 1
      Width = 55
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1733.020833333333000000
        2.645833333333333000
        145.520833333333300000)
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
        'IF(TQOrdemItem.OSI_QTDE5 > 0,TQOrdemItem.OSI_QTDE5 * TQOrdemItem' +
        '.OSI_UC,'#39' '#39') '
      Mask = '#0.,000'
      FontSize = 8
    end
    object QRDBText22: TQRDBText
      Left = 285
      Top = 1
      Width = 48
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        754.062500000000000000
        2.645833333333333000
        127.000000000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TQOrdemItem
      DataField = 'OSI_UC'
      Font.Charset = DEFAULT_CHARSET
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
  end
  object QRBand3: TQRBand
    Left = 19
    Top = 183
    Width = 778
    Height = 105
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
      277.812500000000000000
      2058.458333333333000000)
    BandType = rbSummary
    object QRLabel13: TQRLabel
      Left = 8
      Top = 10
      Width = 355
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        21.166666666666670000
        26.458333333333330000
        939.270833333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'ESTOQUE _____/_____/________   ______________________________'
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
    object QRLabel14: TQRLabel
      Left = 392
      Top = 10
      Width = 377
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1037.166666666667000000
        26.458333333333330000
        997.479166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 
        'DISTRIBUI'#199#195'O _____/_____/________   ____________________________' +
        '__'
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
    object QRLabel15: TQRLabel
      Left = 8
      Top = 35
      Width = 341
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        21.166666666666670000
        92.604166666666670000
        902.229166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'CORTE _____/_____/________   ______________________________'
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
    object QRLabel16: TQRLabel
      Left = 392
      Top = 35
      Width = 380
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1037.166666666667000000
        92.604166666666670000
        1005.416666666667000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'ACABAMENTO _____/_____/________   ______________________________'
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
    object QRLabel17: TQRLabel
      Left = 8
      Top = 57
      Width = 366
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        21.166666666666670000
        150.812500000000000000
        968.375000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'MONTAGEM _____/_____/________   ______________________________'
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
    object QRLabel18: TQRLabel
      Left = 392
      Top = 57
      Width = 364
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1037.166666666667000000
        150.812500000000000000
        963.083333333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'EXPEDI'#199#195'O _____/_____/________   ______________________________'
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
    object QRLabel19: TQRLabel
      Left = 8
      Top = 80
      Width = 367
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        21.166666666666670000
        211.666666666666700000
        971.020833333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 
        '[                             ] ________________________________' +
        '_____________'
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
    object QRLabel20: TQRLabel
      Left = 392
      Top = 80
      Width = 358
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1037.166666666667000000
        211.666666666666700000
        947.208333333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'GERENCIA _____/_____/________   ______________________________'
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
  end
  object TQOrdemServ: TQuery
    DatabaseName = 'RwDbAdm'
    SQL.Strings = (
      
        'SELECT OSV0001.OSV_CODIGO, OSV0001.OSV_EMISSAO, OSV0001.PRD_REFE' +
        'R, PRD0000.PRD_REFER, PRD0000.PRD_DESCRI, FTC0000.PRD_REFER, FTC' +
        '0000.FTC_PROC1, FTC0000.FTC_PROC2, FTC0000.FTC_PROC3, FTC0000.FT' +
        'C_PROC4, FTC0000.FTC_PROC5, FTC0000.FTC_PROC6, FTC0000.FTC_PROC7' +
        ', FTC0000.FTC_PROC8, OSV0001.PED_CODIGO, OSV0001.OSV_CONCLUSAO, ' +
        'OSV0001.OSV_PRDDESCRI, OSV0001.OSV_CLIRAZAO, OSV0001.OSV_DCMOD1,' +
        ' OSV0001.OSV_DCMOD2, OSV0001.OSV_DCMOD3, OSV0001.OSV_DCMOD4, OSV' +
        '0001.OSV_DCMOD5, OSV0001.OSV_DCMOD6, OSV0001.OSV_QTDE, OSV0001.O' +
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
