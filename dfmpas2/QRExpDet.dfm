object RelExpDetalhe: TRelExpDetalhe
  Left = 0
  Top = 0
  Width = 1056
  Height = 816
  Frame.Color = clBlack
  Frame.DrawTop = False
  Frame.DrawBottom = False
  Frame.DrawLeft = False
  Frame.DrawRight = False
  DataSet = TQReceber
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
  Page.Orientation = poLandscape
  Page.PaperSize = Letter
  Page.Values = (
    100.000000000000000000
    2159.000000000000000000
    150.000000000000000000
    2794.000000000000000000
    100.000000000000000000
    150.000000000000000000
    0.000000000000000000)
  PrinterSettings.Copies = 1
  PrinterSettings.Duplex = False
  PrinterSettings.FirstPage = 0
  PrinterSettings.LastPage = 0
  PrinterSettings.OutputBin = Auto
  PrintIfEmpty = True
  ReportTitle = 'Controle de Expedi'#231#227'o de Mercadorias.'
  SnapToGrid = True
  Units = MM
  Zoom = 100
  object QRBand1: TQRBand
    Left = 38
    Top = 57
    Width = 962
    Height = 41
    Frame.Color = clBlack
    Frame.DrawTop = True
    Frame.DrawBottom = True
    Frame.DrawLeft = False
    Frame.DrawRight = False
    AlignToBottom = False
    BeforePrint = QRBand1BeforePrint
    Color = clWhite
    ForceNewColumn = False
    ForceNewPage = True
    Size.Values = (
      108.479166666666700000
      2545.291666666667000000)
    BandType = rbPageHeader
    object LabelEmpresa: TQRLabel
      Left = -36
      Top = 3
      Width = 88
      Height = 20
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        52.916666666666670000
        1156.229166666667000000
        7.937500000000000000
        232.833333333333300000)
      Alignment = taCenter
      AlignToBand = True
      AutoSize = True
      AutoStretch = False
      Caption = 'LabelEmpresa'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 12
    end
    object QRLabel2: TQRLabel
      Left = -138
      Top = 23
      Width = 291
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        886.354166666666700000
        60.854166666666670000
        769.937500000000000000)
      Alignment = taCenter
      AlignToBand = True
      AutoSize = True
      AutoStretch = False
      Caption = 'FATURAMENTO DE PEDIDOS DETALHADO (Itens)'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
  end
  object QRBand3: TQRBand
    Left = 38
    Top = 98
    Width = 962
    Height = 21
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = True
    Frame.DrawRight = True
    AlignToBottom = False
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ForceNewColumn = False
    ForceNewPage = False
    ParentFont = False
    Size.Values = (
      55.562500000000000000
      2545.291666666667000000)
    BandType = rbColumnHeader
    object QRLabel1: TQRLabel
      Left = 10
      Top = 3
      Width = 20
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        26.458333333333330000
        7.937500000000000000
        52.916666666666670000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'N.F.'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRLabel3: TQRLabel
      Left = 57
      Top = 3
      Width = 47
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        150.812500000000000000
        7.937500000000000000
        124.354166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'EMISS'#195'O'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRLabel4: TQRLabel
      Left = 117
      Top = 3
      Width = 41
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        309.562500000000000000
        7.937500000000000000
        108.479166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'CLIENTE'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRLabel5: TQRLabel
      Left = 339
      Top = 3
      Width = 14
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        896.937500000000000000
        7.937500000000000000
        37.041666666666670000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'UF'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRLabel6: TQRLabel
      Left = 364
      Top = 3
      Width = 38
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        963.083333333333300000
        7.937500000000000000
        100.541666666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'CIDADE'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRLabel7: TQRLabel
      Left = 579
      Top = 3
      Width = 101
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        1531.937500000000000000
        7.937500000000000000
        267.229166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'TRANSPORTADORA'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRLabel8: TQRLabel
      Left = 831
      Top = 3
      Width = 33
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        2198.687500000000000000
        7.937500000000000000
        87.312500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'SA'#205'DA'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRLabel9: TQRLabel
      Left = 918
      Top = 3
      Width = 38
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        2428.875000000000000000
        7.937500000000000000
        100.541666666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'VALOR'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRShape1: TQRShape
      Left = 51
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
        134.937500000000000000
        -2.645833333333333000
        2.645833333333333000)
      Shape = qrsRectangle
    end
    object QRShape2: TQRShape
      Left = 111
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
        293.687500000000000000
        -2.645833333333333000
        2.645833333333333000)
      Shape = qrsRectangle
    end
    object QRShape3: TQRShape
      Left = 334
      Top = 0
      Width = 1
      Height = 22
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        58.208333333333330000
        883.708333333333300000
        0.000000000000000000
        2.645833333333333000)
      Shape = qrsRectangle
    end
    object QRShape4: TQRShape
      Left = 359
      Top = 0
      Width = 1
      Height = 22
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        58.208333333333330000
        949.854166666666700000
        0.000000000000000000
        2.645833333333333000)
      Shape = qrsRectangle
    end
    object QRShape5: TQRShape
      Left = 573
      Top = 0
      Width = 1
      Height = 22
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        58.208333333333330000
        1516.062500000000000000
        0.000000000000000000
        2.645833333333333000)
      Shape = qrsRectangle
    end
    object QRShape6: TQRShape
      Left = 817
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
        2161.645833333333000000
        -2.645833333333333000
        2.645833333333333000)
      Shape = qrsRectangle
    end
    object QRShape7: TQRShape
      Left = 879
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
        2325.687500000000000000
        -2.645833333333333000
        2.645833333333333000)
      Shape = qrsRectangle
    end
    object QRShape9: TQRShape
      Left = 525
      Top = 0
      Width = 1
      Height = 22
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        58.208333333333330000
        1389.062500000000000000
        0.000000000000000000
        2.645833333333333000)
      Shape = qrsRectangle
    end
    object QRLabel10: TQRLabel
      Left = 530
      Top = 3
      Width = 37
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        1402.291666666667000000
        7.937500000000000000
        97.895833333333330000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'PEDIDO'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
  end
  object QRSysData2: TQRSysData
    Left = 40
    Top = 40
    Width = 31
    Height = 15
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    Size.Values = (
      39.687500000000000000
      105.833333333333300000
      105.833333333333300000
      82.020833333333340000)
    Alignment = taLeftJustify
    AlignToBand = False
    AutoSize = True
    Color = clWhite
    Data = qrsDate
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    Transparent = False
    FontSize = 8
  end
  object QRLabel11: TQRLabel
    Left = 920
    Top = 40
    Width = 34
    Height = 15
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    Size.Values = (
      39.687500000000000000
      2434.166666666667000000
      105.833333333333300000
      89.958333333333330000)
    Alignment = taLeftJustify
    AlignToBand = False
    AutoSize = True
    AutoStretch = False
    Caption = 'P'#225'g N'#186
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
  object QRSysData1: TQRSysData
    Left = 985
    Top = 41
    Width = 13
    Height = 15
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    Size.Values = (
      39.687500000000000000
      2606.145833333333000000
      108.479166666666700000
      34.395833333333330000)
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
    Top = 119
    Width = 962
    Height = 24
    Frame.Color = clBlack
    Frame.DrawTop = True
    Frame.DrawBottom = True
    Frame.DrawLeft = True
    Frame.DrawRight = True
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
      2545.291666666667000000)
    Expression = 'TQReceber.FAT_IT02.FAT_CODIGO'
    Master = Owner
    ReprintOnNewPage = False
    object QRDBText1: TQRDBText
      Left = 6
      Top = 5
      Width = 43
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        15.875000000000000000
        13.229166666666670000
        113.770833333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TQReceber
      DataField = 'FAT0000.FAT_CODIGO'
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRDBText30: TQRDBText
      Left = 54
      Top = 5
      Width = 55
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        142.875000000000000000
        13.229166666666670000
        145.520833333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TQReceber
      DataField = 'FAT_DTEMIS'
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRDBText31: TQRDBText
      Left = 117
      Top = 5
      Width = 217
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        309.562500000000000000
        13.229166666666670000
        574.145833333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TQReceber
      DataField = 'CLI_RAZAO'
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRDBText32: TQRDBText
      Left = 365
      Top = 5
      Width = 159
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        965.729166666666700000
        13.229166666666670000
        420.687500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TQReceber
      DataField = 'CLI_CIDADE'
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRDBText33: TQRDBText
      Left = 337
      Top = 5
      Width = 24
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        891.645833333333300000
        13.229166666666670000
        63.500000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TQReceber
      DataField = 'CLI_UF'
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRDBText34: TQRDBText
      Left = 579
      Top = 5
      Width = 235
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        1531.937500000000000000
        13.229166666666670000
        621.770833333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TQPedido
      DataField = 'TRP_RAZAO'
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRDBText35: TQRDBText
      Left = 822
      Top = 5
      Width = 56
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        2174.875000000000000000
        13.229166666666670000
        148.166666666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TQPedido
      DataField = 'PED_DTSAIDA'
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRDBText36: TQRDBText
      Left = 895
      Top = 5
      Width = 61
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        2368.020833333333000000
        13.229166666666670000
        161.395833333333300000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TQReceber
      DataField = 'FAT_VLFAT'
      Mask = '#0.,00'
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRDBText3: TQRDBText
      Left = 532
      Top = 4
      Width = 39
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        1407.583333333333000000
        10.583333333333330000
        103.187500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TQReceber
      DataField = 'PED_CODIGO'
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
  end
  object QRBand5: TQRBand
    Left = 38
    Top = 143
    Width = 962
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
      2545.291666666667000000)
    BandType = rbDetail
    object QRDBText6: TQRDBText
      Left = 88
      Top = 1
      Width = 222
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        232.833333333333300000
        2.645833333333333000
        587.375000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TQReceber
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
      Left = 5
      Top = 1
      Width = 76
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        13.229166666666670000
        2.645833333333333000
        201.083333333333300000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TQReceber
      DataField = 'PRD0000.PRD_REFER'
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
      Left = 324
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
        857.250000000000000000
        2.645833333333333000
        127.000000000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = TQReceber
      DataField = 'FIT_QTDE'
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
    object QRDBText9: TQRDBText
      Left = 380
      Top = 1
      Width = 55
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        1005.416666666667000000
        2.645833333333333000
        145.520833333333300000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = TQReceber
      DataField = 'FIT_PRECO'
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
  end
  object DSQReceber: TDataSource
    DataSet = TQReceber
    Left = 96
    Top = 16
  end
  object TQReceber: TQuery
    DatabaseName = 'RwDbAdm'
    SQL.Strings = (
      
        'SELECT FAT0000.FAT_CODIGO, FAT0000.FAT_VLFAT, FAT0000.FAT_DTEMIS' +
        ', FAT0000.PED_CODIGO, FAT0000.CLI_CODIGO, CLI0000.CLI_CODIGO, CL' +
        'I0000.CLI_RAZAO, CLI0000.CLI_CIDADE, CLI0000.CLI_UF, Fat_it02.FA' +
        'T_CODIGO, Fat_it02.PRD_REFER, Fat_it02.FIT_QTDE, Fat_it02.FIT_PR' +
        'ECO, Prd0000.PRD_DESCRI, Prd0000.PRD_REFER'
      'FROM FAT0000, CLI0000, FAT_IT02, PRD0000'
      'WHERE  (FAT0000.CLI_CODIGO = CLI0000.CLI_CODIGO)  '
      '   AND  (FAT0000.FAT_CODIGO = Fat_it02.FAT_CODIGO)  '
      '   AND  (Fat_it02.PRD_REFER = Prd0000.PRD_REFER)  ')
    Left = 64
    Top = 16
    object TQReceberFAT0000FAT_CODIGO: TStringField
      FieldName = 'FAT0000.FAT_CODIGO'
      Origin = 'FAT0000.FAT_CODIGO'
      Size = 6
    end
    object TQReceberFAT_VLFAT: TFloatField
      FieldName = 'FAT_VLFAT'
      Origin = 'FAT0000.FAT_VLFAT'
    end
    object TQReceberFAT_DTEMIS: TDateTimeField
      FieldName = 'FAT_DTEMIS'
      Origin = 'FAT0000.FAT_DTEMIS'
    end
    object TQReceberPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      Origin = 'FAT0000.PED_CODIGO'
      Size = 6
    end
    object TQReceberFAT0000CLI_CODIGO: TStringField
      FieldName = 'FAT0000.CLI_CODIGO'
      Origin = 'FAT0000.CLI_CODIGO'
      Size = 5
    end
    object TQReceberCLI0000CLI_CODIGO: TStringField
      FieldName = 'CLI0000.CLI_CODIGO'
      Origin = 'CLI0000.CLI_CODIGO'
      Size = 5
    end
    object TQReceberCLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      Origin = 'CLI0000.CLI_RAZAO'
      Size = 45
    end
    object TQReceberCLI_CIDADE: TStringField
      FieldName = 'CLI_CIDADE'
      Origin = 'CLI0000.CLI_CIDADE'
      Size = 30
    end
    object TQReceberCLI_UF: TStringField
      FieldName = 'CLI_UF'
      Origin = 'CLI0000.CLI_UF'
      Size = 2
    end
    object TQReceberFAT_IT02FAT_CODIGO: TStringField
      FieldName = 'FAT_IT02.FAT_CODIGO'
      Origin = 'FAT_IT02.FAT_CODIGO'
      Size = 6
    end
    object TQReceberFAT_IT02PRD_REFER: TStringField
      FieldName = 'FAT_IT02.PRD_REFER'
      Origin = 'FAT_IT02.PRD_REFER'
      Size = 11
    end
    object TQReceberFIT_QTDE: TFloatField
      FieldName = 'FIT_QTDE'
      Origin = 'FAT_IT02.FIT_QTDE'
    end
    object TQReceberFIT_PRECO: TFloatField
      FieldName = 'FIT_PRECO'
      Origin = 'FAT_IT02.FIT_PRECO'
    end
    object TQReceberPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Origin = 'PRD0000.PRD_DESCRI'
      Size = 40
    end
    object TQReceberPRD0000PRD_REFER: TStringField
      FieldName = 'PRD0000.PRD_REFER'
      Origin = 'PRD0000.PRD_REFER'
      Size = 11
    end
  end
  object TQPedido: TQuery
    DatabaseName = 'RwDbAdm'
    SQL.Strings = (
      
        'SELECT PED0000.PED_DTSAIDA, PED0000.PED_CODIGO, PED0000.TRP_CODI' +
        'GO, Trp0000.TRP_CODIGO, Trp0000.TRP_RAZAO'
      'FROM PED0000, TRP0000 Trp0000'
      'WHERE  (PED0000.TRP_CODIGO = Trp0000.TRP_CODIGO)  ')
    Left = 176
    Top = 16
    object TQPedidoPED_DTSAIDA: TDateTimeField
      FieldName = 'PED_DTSAIDA'
      Origin = 'PED0000.PED_DTSAIDA'
    end
    object TQPedidoPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      Origin = 'PED0000.PED_CODIGO'
      Size = 6
    end
    object TQPedidoPED0000TRP_CODIGO: TStringField
      FieldName = 'PED0000.TRP_CODIGO'
      Origin = 'PED0000.TRP_CODIGO'
      Size = 3
    end
    object TQPedidoTrp0000TRP_CODIGO: TStringField
      FieldName = 'Trp0000.TRP_CODIGO'
      Origin = 'TRP0000.TRP_CODIGO'
      Size = 3
    end
    object TQPedidoTRP_RAZAO: TStringField
      FieldName = 'TRP_RAZAO'
      Origin = 'TRP0000.TRP_RAZAO'
      Size = 45
    end
  end
  object DSQPedido: TDataSource
    DataSet = TQPedido
    Left = 208
    Top = 16
  end
  object QRTextFilter1: TQRTextFilter
    Left = 32
    Top = 16
  end
end
