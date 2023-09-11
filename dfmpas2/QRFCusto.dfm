object RelFichaCusto: TRelFichaCusto
  Left = 0
  Top = 0
  Width = 794
  Height = 1123
  Frame.Color = clBlack
  Frame.DrawTop = False
  Frame.DrawBottom = False
  Frame.DrawLeft = False
  Frame.DrawRight = False
  DataSet = TQItensCusto
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
  SnapToGrid = True
  Units = MM
  Zoom = 100
  object QRBand1: TQRBand
    Left = 38
    Top = 38
    Width = 718
    Height = 112
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
      296.333333333333300000
      1899.708333333333000000)
    BandType = rbTitle
    object LabelEmpresa: TQRLabel
      Left = 10
      Top = 4
      Width = 84
      Height = 23
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        60.854166666666670000
        26.458333333333330000
        10.583333333333330000
        222.250000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'LabelEmpresa'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRSysData1: TQRSysData
      Left = 633
      Top = 4
      Width = 73
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1674.812500000000000000
        10.583333333333330000
        193.145833333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      Data = qrsDate
      Transparent = False
      FontSize = 10
    end
    object QRLabel1: TQRLabel
      Left = 10
      Top = 26
      Width = 217
      Height = 19
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        50.270833333333330000
        26.458333333333330000
        68.791666666666670000
        574.145833333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'Apura'#231#227'o do Pre'#231'o de Venda'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
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
      Top = 51
      Width = 70
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        29.104166666666670000
        134.937500000000000000
        185.208333333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Refer'#234'ncia :'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRDBText1: TQRDBText
      Left = 84
      Top = 51
      Width = 79
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        222.250000000000000000
        134.937500000000000000
        209.020833333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = TQProduto
      DataField = 'PRD_REFER'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRLabel3: TQRLabel
      Left = 168
      Top = 51
      Width = 17
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        444.500000000000000000
        134.937500000000000000
        44.979166666666670000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = '-'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRDBText2: TQRDBText
      Left = 188
      Top = 51
      Width = 348
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        497.416666666666700000
        134.937500000000000000
        920.750000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TQProduto
      DataField = 'PRD_DESCRI'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRLabel4: TQRLabel
      Left = 544
      Top = 51
      Width = 51
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1439.333333333333000000
        134.937500000000000000
        134.937500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Medida :'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRDBText3: TQRDBText
      Left = 598
      Top = 51
      Width = 81
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1582.208333333333000000
        134.937500000000000000
        214.312500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = TQProduto
      DataField = 'PRD_COMPL'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRShape1: TQRShape
      Left = 0
      Top = 72
      Width = 717
      Height = 1
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        2.645833333333333000
        0.000000000000000000
        190.500000000000000000
        1897.062500000000000000)
      Shape = qrsRectangle
    end
    object QRLabel5: TQRLabel
      Left = 6
      Top = 75
      Width = 67
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        15.875000000000000000
        198.437500000000000000
        177.270833333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'DATA PRE'#199'O'
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
    object QRLabel6: TQRLabel
      Left = 80
      Top = 75
      Width = 41
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        211.666666666666700000
        198.437500000000000000
        108.479166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'C'#211'DIGO'
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
    object QRLabel7: TQRLabel
      Left = 205
      Top = 75
      Width = 52
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        542.395833333333300000
        198.437500000000000000
        137.583333333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'MATERIAL'
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
    object QRLabel8: TQRLabel
      Left = 515
      Top = 75
      Width = 53
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1362.604166666667000000
        198.437500000000000000
        140.229166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'CONSUMO'
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
    object QRLabel9: TQRLabel
      Left = 594
      Top = 75
      Width = 35
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1571.625000000000000000
        198.437500000000000000
        92.604166666666670000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'PRE'#199'O'
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
    object QRLabel10: TQRLabel
      Left = 669
      Top = 75
      Width = 36
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1770.062500000000000000
        198.437500000000000000
        95.250000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'CUSTO'
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
    object QRLabel12: TQRLabel
      Left = 387
      Top = 75
      Width = 46
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1023.937500000000000000
        198.437500000000000000
        121.708333333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Consumo'
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
    object QRLabel13: TQRLabel
      Left = 387
      Top = 92
      Width = 40
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1023.937500000000000000
        243.416666666666700000
        105.833333333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Anterior'
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
      Left = 445
      Top = 75
      Width = 23
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1177.395833333333000000
        198.437500000000000000
        60.854166666666670000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Data'
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
      Left = 445
      Top = 92
      Width = 59
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1177.395833333333000000
        243.416666666666700000
        156.104166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Modifica'#231#227'o'
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
  object QRBand2: TQRBand
    Left = 38
    Top = 150
    Width = 718
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
      1899.708333333333000000)
    BandType = rbDetail
    object QRDBText4: TQRDBText
      Left = 8
      Top = 1
      Width = 60
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        21.166666666666670000
        2.645833333333333000
        158.750000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TQItensCusto
      DataField = 'PRD_DTPCUSTO'
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
    object QRDBText5: TQRDBText
      Left = 75
      Top = 1
      Width = 60
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        198.437500000000000000
        2.645833333333333000
        158.750000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TQItensCusto
      DataField = 'PRD_REFER_ITENS'
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
    object QRDBText6: TQRDBText
      Left = 140
      Top = 1
      Width = 240
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        370.416666666666700000
        2.645833333333333000
        635.000000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TQItensCusto
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
    object QRDBText7: TQRDBText
      Left = 511
      Top = 1
      Width = 60
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1352.020833333333000000
        2.645833333333333000
        158.750000000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TQItensCusto
      DataField = 'FTI_UC'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      Mask = '#0,.000'
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRDBText8: TQRDBText
      Left = 577
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
        1526.645833333333000000
        2.645833333333333000
        164.041666666666700000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TQItensCusto
      DataField = 'PRD_PCUSTO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      Mask = '#0,.000'
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRExpr1: TQRExpr
      Left = 646
      Top = 1
      Width = 65
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1709.208333333333000000
        2.645833333333333000
        171.979166666666700000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      Color = clWhite
      ParentFont = False
      ResetAfterPrint = False
      Transparent = False
      WordWrap = True
      Expression = 'TQItensCusto.FTI_UC * TQItensCusto.PRD_PCUSTO'
      Mask = '#0,.000'
      FontSize = 8
    end
    object QRShape2: TQRShape
      Left = 507
      Top = -1
      Width = 1
      Height = 19
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        50.270833333333330000
        1341.437500000000000000
        -2.645833333333333000
        2.645833333333333000)
      Shape = qrsRectangle
    end
    object QRShape3: TQRShape
      Left = 136
      Top = -1
      Width = 1
      Height = 19
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        50.270833333333330000
        359.833333333333300000
        -2.645833333333333000
        2.645833333333333000)
      Shape = qrsRectangle
    end
    object QRShape4: TQRShape
      Left = 70
      Top = -1
      Width = 1
      Height = 19
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        50.270833333333330000
        185.208333333333300000
        -2.645833333333333000
        2.645833333333333000)
      Shape = qrsRectangle
    end
    object QRShape6: TQRShape
      Left = 2
      Top = -1
      Width = 1
      Height = 19
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        50.270833333333330000
        5.291666666666667000
        -2.645833333333333000
        2.645833333333333000)
      Shape = qrsRectangle
    end
    object QRShape7: TQRShape
      Left = 573
      Top = -1
      Width = 1
      Height = 19
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        50.270833333333330000
        1516.062500000000000000
        -2.645833333333333000
        2.645833333333333000)
      Shape = qrsRectangle
    end
    object QRShape9: TQRShape
      Left = 642
      Top = -1
      Width = 1
      Height = 19
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        50.270833333333330000
        1698.625000000000000000
        -2.645833333333333000
        2.645833333333333000)
      Shape = qrsRectangle
    end
    object QRShape10: TQRShape
      Left = 714
      Top = -1
      Width = 1
      Height = 19
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        50.270833333333330000
        1889.125000000000000000
        -2.645833333333333000
        2.645833333333333000)
      Shape = qrsRectangle
    end
    object QRDBText10: TQRDBText
      Left = 385
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
        1018.645833333333000000
        2.645833333333333000
        145.520833333333300000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TQItensCusto
      DataField = 'FTI_UCMODIFIC'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      Mask = '#0,.000'
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRDBText11: TQRDBText
      Left = 443
      Top = 1
      Width = 60
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1172.104166666667000000
        2.645833333333333000
        158.750000000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TQItensCusto
      DataField = 'FTI_MODIFICADA'
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
    object QRShape11: TQRShape
      Left = 382
      Top = -1
      Width = 1
      Height = 19
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        50.270833333333330000
        1010.708333333333000000
        -2.645833333333333000
        2.645833333333333000)
      Shape = qrsRectangle
    end
  end
  object QRBand3: TQRBand
    Left = 38
    Top = 169
    Width = 718
    Height = 23
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
      60.854166666666670000
      1899.708333333333000000)
    BandType = rbSummary
    object QRExpr2: TQRExpr
      Left = 640
      Top = 3
      Width = 70
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1693.333333333333000000
        7.937500000000000000
        185.208333333333300000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      Color = clWhite
      ParentFont = False
      ResetAfterPrint = False
      Transparent = False
      WordWrap = True
      Expression = 'SUM(TQItensCusto.FTI_UC * TQItensCusto.PRD_PCUSTO)'
      Mask = '#0,.00'
      FontSize = 10
    end
    object QRLabel11: TQRLabel
      Left = 17
      Top = 3
      Width = 148
      Height = 18
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        47.625000000000000000
        44.979166666666670000
        7.937500000000000000
        391.583333333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'CUSTO DE MATERIAIS :'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
  end
  object ChildBand1: TQRChildBand
    Left = 38
    Top = 192
    Width = 718
    Height = 179
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
      473.604166666666700000
      1899.708333333333000000)
    ParentBand = QRBand3
    object QRLabel31: TQRLabel
      Left = 17
      Top = 2
      Width = 81
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        44.979166666666670000
        5.291666666666667000
        214.312500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'DESCONTO :'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRExpr10: TQRExpr
      Left = 238
      Top = 2
      Width = 63
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        629.708333333333300000
        5.291666666666667000
        166.687500000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      ResetAfterPrint = False
      Transparent = False
      WordWrap = True
      Expression = 
        'SUM(TQItensCusto.FTI_UC * TQItensCusto.PRD_PCUSTO) * TQItensCust' +
        'o.Desc_CC / 100'
      Mask = '#0,.00'
      FontSize = 10
    end
    object QRLabel32: TQRLabel
      Left = 17
      Top = 23
      Width = 104
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        44.979166666666670000
        60.854166666666670000
        275.166666666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'TOTAL LIQUIDO :'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRExpr11: TQRExpr
      Left = 238
      Top = 23
      Width = 63
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        629.708333333333300000
        60.854166666666670000
        166.687500000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      ResetAfterPrint = False
      Transparent = False
      WordWrap = True
      Expression = 
        'SUM(TQItensCusto.FTI_UC * TQItensCusto.PRD_PCUSTO) - SUM(TQItens' +
        'Custo.FTI_UC * TQItensCusto.PRD_PCUSTO) * TQItensCusto.Desc_CC /' +
        ' 100'
      Mask = '#0,.00'
      FontSize = 10
    end
    object QRLabel33: TQRLabel
      Left = 17
      Top = 43
      Width = 150
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        44.979166666666670000
        113.770833333333300000
        396.875000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'CUSTO M'#195'O-DE-OBRA :'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRExpr12: TQRExpr
      Left = 238
      Top = 43
      Width = 63
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        629.708333333333300000
        113.770833333333300000
        166.687500000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      ResetAfterPrint = False
      Transparent = False
      WordWrap = True
      Expression = 'TQItensCusto.FTC_TUP * TQItensCusto.Tup_CC'
      Mask = '#0,.00'
      FontSize = 10
    end
    object QRLabel34: TQRLabel
      Left = 17
      Top = 69
      Width = 183
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        44.979166666666670000
        182.562500000000000000
        484.187500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'M'#195'O-DE-OBRA+MATERIAIS  :'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRExpr13: TQRExpr
      Left = 238
      Top = 69
      Width = 63
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        629.708333333333300000
        182.562500000000000000
        166.687500000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      ResetAfterPrint = False
      Transparent = False
      WordWrap = True
      Expression = 
        'TQItensCusto.FTC_TUP * TQItensCusto.Tup_CC + SUM(TQItensCusto.FT' +
        'I_UC * TQItensCusto.PRD_PCUSTO) - SUM(TQItensCusto.FTI_UC * TQIt' +
        'ensCusto.PRD_PCUSTO) * TQItensCusto.Desc_CC / 100'
      Mask = '#0,.00'
      FontSize = 10
    end
    object QRLabel35: TQRLabel
      Left = 388
      Top = 69
      Width = 51
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1026.583333333333000000
        182.562500000000000000
        134.937500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'INDICE :'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRExpr14: TQRExpr
      Left = 439
      Top = 69
      Width = 50
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1161.520833333333000000
        182.562500000000000000
        132.291666666666700000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      ResetAfterPrint = False
      Transparent = False
      WordWrap = True
      Expression = 
        '100-(TQItensCusto.DF_CC + TQItensCusto.DV_CC + TQItensCusto.ICMS' +
        '_CC + TQItensCusto.FED_CC + TQItensCusto.DPG_CC + TQItensCusto.L' +
        'V_CC + TQItensCusto.FIN_CC + TQItensCusto.COMRP_CC + TQItensCust' +
        'o.COMSP_CC + TQItensCusto.COMGE_CC) '
      FontSize = 10
    end
    object QRLabel36: TQRLabel
      Left = 547
      Top = 69
      Width = 100
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1447.270833333333000000
        182.562500000000000000
        264.583333333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'PRE'#199'O VENDA:'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRExpr15: TQRExpr
      Left = 648
      Top = 69
      Width = 63
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1714.500000000000000000
        182.562500000000000000
        166.687500000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      ResetAfterPrint = False
      Transparent = False
      WordWrap = True
      Expression = 
        '(TQItensCusto.FTC_TUP * TQItensCusto.Tup_CC + SUM(TQItensCusto.F' +
        'TI_UC * TQItensCusto.PRD_PCUSTO) - SUM(TQItensCusto.FTI_UC * TQI' +
        'tensCusto.PRD_PCUSTO) * TQItensCusto.Desc_CC / 100) /(100- (TQIt' +
        'ensCusto.DF_CC + TQItensCusto.DV_CC + TQItensCusto.ICMS_CC + TQI' +
        'tensCusto.FED_CC + TQItensCusto.DPG_CC + TQItensCusto.LV_CC + TQ' +
        'ItensCusto.FIN_CC + TQItensCusto.COMRP_CC + TQItensCusto.COMSP_C' +
        'C + TQItensCusto.COMGE_CC  ))  * 100'
      Mask = '#0,.00'
      FontSize = 10
    end
    object QRLabel56: TQRLabel
      Left = 18
      Top = 104
      Width = 34
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        47.625000000000000000
        275.166666666666700000
        89.958333333333330000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'TUP :'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRLabel57: TQRLabel
      Left = 145
      Top = 104
      Width = 54
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        383.645833333333300000
        275.166666666666700000
        142.875000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'VL.TUP :'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRLabel58: TQRLabel
      Left = 303
      Top = 104
      Width = 82
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        801.687500000000000000
        275.166666666666700000
        216.958333333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'CUSTO TUP :'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRDBText33: TQRDBText
      Left = 52
      Top = 104
      Width = 60
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        137.583333333333300000
        275.166666666666700000
        158.750000000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TQItensCusto
      DataField = 'FTC_TUP'
      Mask = '#0,.00'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRDBText34: TQRDBText
      Left = 200
      Top = 104
      Width = 60
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        529.166666666666700000
        275.166666666666700000
        158.750000000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TQFatCustos
      DataField = 'VCT_TUP'
      Mask = '#0,.000'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRExpr23: TQRExpr
      Left = 385
      Top = 104
      Width = 60
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1018.645833333333000000
        275.166666666666700000
        158.750000000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      ResetAfterPrint = False
      Transparent = False
      WordWrap = True
      Expression = 'TQItensCusto.FTC_TUP * TQItensCusto.Tup_CC'
      Mask = '#0,.00'
      FontSize = 10
    end
    object QRShape8: TQRShape
      Left = 7
      Top = 124
      Width = 708
      Height = 1
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        2.645833333333333000
        18.520833333333330000
        328.083333333333300000
        1873.250000000000000000)
      Shape = qrsRectangle
    end
    object QRLabel59: TQRLabel
      Left = 18
      Top = 128
      Width = 34
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        47.625000000000000000
        338.666666666666700000
        89.958333333333330000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'D.F. :'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRLabel60: TQRLabel
      Left = 154
      Top = 128
      Width = 35
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        407.458333333333300000
        338.666666666666700000
        92.604166666666670000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'D.V. :'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRLabel61: TQRLabel
      Left = 294
      Top = 128
      Width = 41
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        777.875000000000000000
        338.666666666666700000
        108.479166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'ICMS :'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRLabel62: TQRLabel
      Left = 437
      Top = 128
      Width = 39
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1156.229166666667000000
        338.666666666666700000
        103.187500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'FED. :'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRLabel63: TQRLabel
      Left = 584
      Top = 128
      Width = 33
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1545.166666666667000000
        338.666666666666700000
        87.312500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'FIN. :'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRDBText35: TQRDBText
      Left = 209
      Top = 128
      Width = 45
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        552.979166666666700000
        338.666666666666700000
        119.062500000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TQFatCustos
      DataField = 'VCT_DV'
      Mask = '#0,.00'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRDBText36: TQRDBText
      Left = 349
      Top = 128
      Width = 45
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        923.395833333333300000
        338.666666666666700000
        119.062500000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TQFatCustos
      DataField = 'VCT_ICMS'
      Mask = '#0,.00'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRDBText37: TQRDBText
      Left = 495
      Top = 128
      Width = 45
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1309.687500000000000000
        338.666666666666700000
        119.062500000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TQFatCustos
      DataField = 'VCT_FED'
      Mask = '#0,.00'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRDBText38: TQRDBText
      Left = 633
      Top = 128
      Width = 45
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1674.812500000000000000
        338.666666666666700000
        119.062500000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TQFatCustos
      DataField = 'VCT_FIN'
      Mask = '#0,.00'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRLabel64: TQRLabel
      Left = 18
      Top = 152
      Width = 33
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        47.625000000000000000
        402.166666666666700000
        87.312500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'L.V. :'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRDBText39: TQRDBText
      Left = 66
      Top = 152
      Width = 45
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        174.625000000000000000
        402.166666666666700000
        119.062500000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TQFatCustos
      DataField = 'VCT_LV'
      Mask = '#0,.00'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRLabel65: TQRLabel
      Left = 154
      Top = 152
      Width = 40
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        407.458333333333300000
        402.166666666666700000
        105.833333333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'MKT  :'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRDBText40: TQRDBText
      Left = 209
      Top = 152
      Width = 45
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        552.979166666666700000
        402.166666666666700000
        119.062500000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TQFatCustos
      DataField = 'VCT_DPG'
      Mask = '#0,.00'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRLabel66: TQRLabel
      Left = 294
      Top = 152
      Width = 35
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        777.875000000000000000
        402.166666666666700000
        92.604166666666670000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'C.R. :'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRDBText41: TQRDBText
      Left = 349
      Top = 152
      Width = 45
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        923.395833333333300000
        402.166666666666700000
        119.062500000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TQFatCustos
      DataField = 'VCT_COMRP'
      Mask = '#0,.00'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRLabel67: TQRLabel
      Left = 437
      Top = 152
      Width = 35
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1156.229166666667000000
        402.166666666666700000
        92.604166666666670000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'C.S. :'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRDBText42: TQRDBText
      Left = 495
      Top = 152
      Width = 45
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1309.687500000000000000
        402.166666666666700000
        119.062500000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TQFatCustos
      DataField = 'VCT_COMSP'
      Mask = '#0,.00'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRLabel68: TQRLabel
      Left = 584
      Top = 152
      Width = 36
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1545.166666666667000000
        402.166666666666700000
        95.250000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'C.G. :'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRDBText43: TQRDBText
      Left = 633
      Top = 152
      Width = 45
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1674.812500000000000000
        402.166666666666700000
        119.062500000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TQFatCustos
      DataField = 'VCT_COMGE'
      Mask = '#0,.00'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRShape5: TQRShape
      Left = 7
      Top = 100
      Width = 708
      Height = 1
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        2.645833333333333000
        18.520833333333330000
        264.583333333333300000
        1873.250000000000000000)
      Shape = qrsRectangle
    end
    object QRDBText9: TQRDBText
      Left = 65
      Top = 128
      Width = 45
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        171.979166666666700000
        338.666666666666700000
        119.062500000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TQFatCustos
      DataField = 'VCT_DF'
      Mask = '#0,.00'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
  end
  object TQProduto: TQuery
    DatabaseName = 'RwDbAdm'
    SQL.Strings = (
      'SELECT PRD_DESCRI, PRD_REFER, PRD_COMPL'
      'FROM PRD0000 Prd0000')
    Left = 80
    Top = 8
    object TQProdutoPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Origin = 'PRD0000.PRD_DESCRI'
      Size = 40
    end
    object TQProdutoPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Origin = 'PRD0000.PRD_REFER'
      Size = 11
    end
    object TQProdutoPRD_COMPL: TStringField
      FieldName = 'PRD_COMPL'
      Origin = 'PRD0000.PRD_COMPL'
      Size = 15
    end
  end
  object TQItensCusto: TQuery
    OnCalcFields = TQItensCustoCalcFields
    DatabaseName = 'RwDbAdm'
    SQL.Strings = (
      
        'SELECT FTC_IT01.PRD_REFER, FTC_IT01.PRD_REFER_ITENS, FTC_IT01.FT' +
        'I_UC, FTC_IT01.FTI_MODE1, PRD0000.PRD_REFER, PRD0000.PRD_DESCRI,' +
        ' PRD0000.PRD_DTPCUSTO, PRD0000.PRD_PCUSTO, FTC0000.PRD_REFER, FT' +
        'C0000.FTC_TUP, FTC_IT01.FTI_MODIFICADA, FTC_IT01.FTI_UCMODIFIC'
      'FROM FTC_IT01, PRD0000, FTC0000'
      'WHERE  (FTC_IT01.PRD_REFER_ITENS = PRD0000.PRD_REFER)  '
      '   AND  (FTC_IT01.PRD_REFER = FTC0000.PRD_REFER)  ')
    Left = 129
    Top = 8
    object TQItensCustoFtc_it01PRD_REFER: TStringField
      FieldName = 'Ftc_it01.PRD_REFER'
      Origin = 'FTC_IT01.PRD_REFER'
      Size = 11
    end
    object TQItensCustoPRD_REFER_ITENS: TStringField
      FieldName = 'PRD_REFER_ITENS'
      Origin = 'FTC_IT01.PRD_REFER_ITENS'
      Size = 11
    end
    object TQItensCustoFTI_UC: TFloatField
      FieldName = 'FTI_UC'
      Origin = 'FTC_IT01.FTI_UC'
    end
    object TQItensCustoFTI_MODE1: TStringField
      FieldName = 'FTI_MODE1'
      Origin = 'FTC_IT01.FTI_MODE1'
      Size = 1
    end
    object TQItensCustoPrd0000PRD_REFER: TStringField
      FieldName = 'Prd0000.PRD_REFER'
      Origin = 'PRD0000.PRD_REFER'
      Size = 11
    end
    object TQItensCustoPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Origin = 'PRD0000.PRD_DESCRI'
      Size = 40
    end
    object TQItensCustoPRD_DTPCUSTO: TDateTimeField
      FieldName = 'PRD_DTPCUSTO'
      Origin = 'PRD0000.PRD_DTPCUSTO'
    end
    object TQItensCustoPRD_PCUSTO: TFloatField
      FieldName = 'PRD_PCUSTO'
      Origin = 'PRD0000.PRD_PCUSTO'
    end
    object TQItensCustoFTC0000PRD_REFER: TStringField
      FieldName = 'FTC0000.PRD_REFER'
      Origin = 'FTC0000.PRD_REFER'
      Size = 11
    end
    object TQItensCustoFTC_TUP: TFloatField
      FieldName = 'FTC_TUP'
      Origin = 'FTC0000.FTC_TUP'
    end
    object TQItensCustoTup_CC: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Tup_CC'
      Calculated = True
    end
    object TQItensCustoDF_CC: TFloatField
      FieldKind = fkCalculated
      FieldName = 'DF_CC'
      Calculated = True
    end
    object TQItensCustoDV_CC: TFloatField
      FieldKind = fkCalculated
      FieldName = 'DV_CC'
      Calculated = True
    end
    object TQItensCustoICMS_CC: TFloatField
      FieldKind = fkCalculated
      FieldName = 'ICMS_CC'
      Calculated = True
    end
    object TQItensCustoFED_CC: TFloatField
      FieldKind = fkCalculated
      FieldName = 'FED_CC'
      Calculated = True
    end
    object TQItensCustoDPG_CC: TFloatField
      FieldKind = fkCalculated
      FieldName = 'DPG_CC'
      Calculated = True
    end
    object TQItensCustoLV_CC: TFloatField
      FieldKind = fkCalculated
      FieldName = 'LV_CC'
      Calculated = True
    end
    object TQItensCustoFIN_CC: TFloatField
      FieldKind = fkCalculated
      FieldName = 'FIN_CC'
      Calculated = True
    end
    object TQItensCustoCOMRP_CC: TFloatField
      FieldKind = fkCalculated
      FieldName = 'COMRP_CC'
      Calculated = True
    end
    object TQItensCustoCOMSP_CC: TFloatField
      FieldKind = fkCalculated
      FieldName = 'COMSP_CC'
      Calculated = True
    end
    object TQItensCustoCOMGE_CC: TFloatField
      FieldKind = fkCalculated
      FieldName = 'COMGE_CC'
      Calculated = True
    end
    object TQItensCustoDesc_CC: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Desc_CC'
      Calculated = True
    end
    object TQItensCustoFTI_MODIFICADA: TDateTimeField
      FieldName = 'FTI_MODIFICADA'
      Origin = 'FTC_IT01.FTI_MODIFICADA'
    end
    object TQItensCustoFTI_UCMODIFIC: TFloatField
      FieldName = 'FTI_UCMODIFIC'
      Origin = 'FTC_IT01.FTI_UCMODIFIC'
    end
  end
  object TQFatCustos: TQuery
    DatabaseName = 'RwDbAdm'
    SQL.Strings = (
      
        'SELECT VCT_CLASSE, VCT_TUP, VCT_TMAQ, VCT_DF, VCT_DV, VCT_ICMS, ' +
        'VCT_FED, VCT_DPG, VCT_LV, VCT_FIN, VCT_COMRP, VCT_COMSP, VCT_COM' +
        'GE, VCT_DESC'
      'FROM VCT0000 ')
    Left = 176
    Top = 7
    object TQFatCustosVCT_CLASSE: TStringField
      FieldName = 'VCT_CLASSE'
      Origin = 'VCT0000.VCT_CLASSE'
      Size = 1
    end
    object TQFatCustosVCT_TUP: TFloatField
      FieldName = 'VCT_TUP'
      Origin = 'VCT0000.VCT_TUP'
    end
    object TQFatCustosVCT_TMAQ: TFloatField
      FieldName = 'VCT_TMAQ'
      Origin = 'VCT0000.VCT_TMAQ'
    end
    object TQFatCustosVCT_DF: TFloatField
      FieldName = 'VCT_DF'
      Origin = 'VCT0000.VCT_DF'
    end
    object TQFatCustosVCT_DV: TFloatField
      FieldName = 'VCT_DV'
      Origin = 'VCT0000.VCT_DV'
    end
    object TQFatCustosVCT_ICMS: TFloatField
      FieldName = 'VCT_ICMS'
      Origin = 'VCT0000.VCT_ICMS'
    end
    object TQFatCustosVCT_FED: TFloatField
      FieldName = 'VCT_FED'
      Origin = 'VCT0000.VCT_FED'
    end
    object TQFatCustosVCT_DPG: TFloatField
      FieldName = 'VCT_DPG'
      Origin = 'VCT0000.VCT_DPG'
    end
    object TQFatCustosVCT_LV: TFloatField
      FieldName = 'VCT_LV'
      Origin = 'VCT0000.VCT_LV'
    end
    object TQFatCustosVCT_FIN: TFloatField
      FieldName = 'VCT_FIN'
      Origin = 'VCT0000.VCT_FIN'
    end
    object TQFatCustosVCT_COMRP: TFloatField
      FieldName = 'VCT_COMRP'
      Origin = 'VCT0000.VCT_COMRP'
    end
    object TQFatCustosVCT_COMSP: TFloatField
      FieldName = 'VCT_COMSP'
      Origin = 'VCT0000.VCT_COMSP'
    end
    object TQFatCustosVCT_COMGE: TFloatField
      FieldName = 'VCT_COMGE'
      Origin = 'VCT0000.VCT_COMGE'
    end
    object TQFatCustosVCT_DESC: TFloatField
      FieldName = 'VCT_DESC'
      Origin = 'VCT0000.VCT_DESC'
    end
  end
  object DsQFatCustos: TDataSource
    DataSet = TQFatCustos
    Left = 209
    Top = 7
  end
  object QRTextFilter1: TQRTextFilter
    Left = 49
    Top = 8
  end
end
