object RelPedido01: TRelPedido01
  Left = 0
  Top = 0
  Width = 816
  Height = 1056
  Frame.Color = clBlack
  Frame.DrawTop = False
  Frame.DrawBottom = False
  Frame.DrawLeft = False
  Frame.DrawRight = False
  DataSet = TbPedidoQR
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
    150.000000000000000000
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
  PrinterSettings.OutputBin = First
  PrintIfEmpty = False
  ReportTitle = 'Relat'#243'rio de entrada de pedidos'
  SnapToGrid = True
  Units = MM
  Zoom = 100
  object QRBand1: TQRBand
    Left = 38
    Top = 38
    Width = 740
    Height = 60
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
      158.750000000000000000
      1957.916666666667000000)
    BandType = rbPageHeader
    object LabelEmpresa: TQRLabel
      Left = 0
      Top = 1
      Width = 84
      Height = 20
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        52.916666666666670000
        0.000000000000000000
        2.645833333333333000
        222.250000000000000000)
      Alignment = taLeftJustify
      AlignToBand = True
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
    object LTitulo1: TQRLabel
      Left = 0
      Top = 20
      Width = 38
      Height = 19
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        50.270833333333330000
        0.000000000000000000
        52.916666666666670000
        100.541666666666700000)
      Alignment = taLeftJustify
      AlignToBand = True
      AutoSize = True
      AutoStretch = False
      Caption = 'LTitulo1'
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
    object LTitulo2: TQRLabel
      Left = 0
      Top = 39
      Width = 38
      Height = 19
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        50.270833333333330000
        0.000000000000000000
        103.187500000000000000
        100.541666666666700000)
      Alignment = taLeftJustify
      AlignToBand = True
      AutoSize = True
      AutoStretch = False
      Caption = 'LTitulo2'
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
      Left = 658
      Top = 1
      Width = 34
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        1740.958333333333000000
        2.645833333333333000
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
    object QRSysData2: TQRSysData
      Left = 697
      Top = 1
      Width = 39
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        1844.145833333333000000
        2.645833333333333000
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
    object QRSysData1: TQRSysData
      Left = 665
      Top = 39
      Width = 31
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        1759.479166666667000000
        103.187500000000000000
        82.020833333333330000)
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
  end
  object QRBand2: TQRBand
    Left = 38
    Top = 98
    Width = 740
    Height = 22
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
      58.208333333333330000
      1957.916666666667000000)
    BandType = rbColumnHeader
    object QRLabel3: TQRLabel
      Left = 1
      Top = 2
      Width = 43
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        2.645833333333333000
        5.291666666666667000
        113.770833333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'PEDIDO'
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
      Left = 48
      Top = 2
      Width = 55
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        127.000000000000000000
        5.291666666666667000
        145.520833333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'ENTRADA'
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
      Left = 107
      Top = 2
      Width = 49
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        283.104166666666700000
        5.291666666666667000
        129.645833333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'CLIENTE'
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
      Left = 370
      Top = 2
      Width = 15
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        978.958333333333300000
        5.291666666666667000
        39.687500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'UF'
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
      Left = 435
      Top = 2
      Width = 38
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        1150.937500000000000000
        5.291666666666667000
        100.541666666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'VALOR'
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
    object QRLabel8: TQRLabel
      Left = 483
      Top = 2
      Width = 95
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        1277.937500000000000000
        5.291666666666667000
        251.354166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'REPRESENTANTE'
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
    object QRLabel1: TQRLabel
      Left = 662
      Top = 2
      Width = 34
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1751.541666666667000000
        5.291666666666667000
        89.958333333333330000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'SA'#205'DA'
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
    object QRLabel2: TQRLabel
      Left = 393
      Top = 2
      Width = 32
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1039.812500000000000000
        5.291666666666667000
        84.666666666666670000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'QTDE'
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
  object QRGroup1: TQRGroup
    Left = 38
    Top = 120
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
    Expression = 'COPY(TbPedidoQR.PED_DTENTRADA, 4, 2)'
    FooterBand = QRBand4
    Master = Owner
    ReprintOnNewPage = False
    object QRLabel9: TQRLabel
      Left = 8
      Top = 2
      Width = 30
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        21.166666666666670000
        5.291666666666667000
        79.375000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'M'#234's :'
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
    object QRExpr1: TQRExpr
      Left = 40
      Top = 2
      Width = 41
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        105.833333333333300000
        5.291666666666667000
        108.479166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      Color = clWhite
      ParentFont = False
      ResetAfterPrint = False
      Transparent = False
      WordWrap = True
      Expression = 'COPY(TbPedidoQR.PED_DTENTRADA, 4, 2)'
      FontSize = 9
    end
  end
  object QRBand3: TQRBand
    Left = 38
    Top = 140
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
    object QRDBText1: TQRDBText
      Left = 1
      Top = 2
      Width = 41
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        2.645833333333333000
        5.291666666666667000
        108.479166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TbPedidoQR
      DataField = 'PED_CODIGO'
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
    object QRDBText2: TQRDBText
      Left = 48
      Top = 2
      Width = 61
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        127.000000000000000000
        5.291666666666667000
        161.395833333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TbPedidoQR
      DataField = 'PED_DTENTRADA'
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
    object QRDBText3: TQRDBText
      Left = 422
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
        1116.541666666667000000
        5.291666666666667000
        150.812500000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TbPedidoQR
      DataField = 'PED_VLTOTAL'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      Mask = '#0.,00'
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRDBText4: TQRDBText
      Left = 484
      Top = 2
      Width = 174
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        1280.583333333333000000
        5.291666666666667000
        460.375000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TbRepresenQr
      DataField = 'REP_RAZAO'
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
    object QRDBText5: TQRDBText
      Left = 107
      Top = 2
      Width = 262
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        283.104166666666700000
        5.291666666666667000
        693.208333333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TbClienteQR
      DataField = 'CLI_RAZAO'
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
    object QRDBText6: TQRDBText
      Left = 370
      Top = 2
      Width = 18
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        978.958333333333300000
        5.291666666666667000
        47.625000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TbClienteQR
      DataField = 'CLI_UF'
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
    object QRDBText7: TQRDBText
      Left = 661
      Top = 0
      Width = 56
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1748.895833333333000000
        0.000000000000000000
        148.166666666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TbPedidoQR
      DataField = 'PED_DTSAIDA'
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
    object QRDBText8: TQRDBText
      Left = 388
      Top = 2
      Width = 34
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1026.583333333333000000
        5.291666666666667000
        89.958333333333330000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TbPedidoItenQR
      DataField = 'PRF_QTDE'
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
  object QRBand4: TQRBand
    Left = 38
    Top = 159
    Width = 740
    Height = 24
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
      63.500000000000000000
      1957.916666666667000000)
    BandType = rbGroupFooter
    object QRLabel11: TQRLabel
      Left = 8
      Top = 5
      Width = 73
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        21.166666666666670000
        13.229166666666670000
        193.145833333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Total do M'#234's :'
      Color = clWhite
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
    object QRExpr3: TQRExpr
      Left = 295
      Top = 3
      Width = 182
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        780.520833333333300000
        7.937500000000000000
        481.541666666666700000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      Color = clWhite
      ParentFont = False
      ResetAfterPrint = True
      Transparent = False
      WordWrap = True
      Expression = 'SUM(TbPedidoQR.PED_VLTOTAL)'
      Mask = '#0.,00'
      FontSize = 8
    end
  end
  object QRBand5: TQRBand
    Left = 38
    Top = 183
    Width = 740
    Height = 24
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
      63.500000000000000000
      1957.916666666667000000)
    BandType = rbSummary
    object QRLabel12: TQRLabel
      Left = 8
      Top = 5
      Width = 67
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        21.166666666666670000
        13.229166666666670000
        177.270833333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Total Geral :'
      Color = clWhite
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
    object QRExpr2: TQRExpr
      Left = 296
      Top = 3
      Width = 182
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        783.166666666666700000
        7.937500000000000000
        481.541666666666700000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      Color = clWhite
      ParentFont = False
      ResetAfterPrint = True
      Transparent = False
      WordWrap = True
      Expression = 'SUM(TbPedidoQR.PED_VLTOTAL)'
      Mask = '#0.,00'
      FontSize = 8
    end
  end
  object QRGroup2: TQRGroup
    Left = 38
    Top = 139
    Width = 740
    Height = 1
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
      2.645833333333333000
      1957.916666666667000000)
    Master = Owner
    ReprintOnNewPage = False
  end
  object TbClienteQR: TTable
    DatabaseName = 'RwDbAdm'
    IndexFieldNames = 'CLI_CODIGO'
    MasterFields = 'CLI_CODIGO'
    MasterSource = DspedidoQR
    TableName = 'CLI0000'
    Left = 232
    Top = 8
    object TbClienteQRCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Required = True
      Size = 5
    end
    object TbClienteQRCLI_UF: TStringField
      FieldName = 'CLI_UF'
      Size = 2
    end
    object TbClienteQREMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object TbClienteQRCLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      Size = 45
    end
  end
  object TbPedidoQR: TTable
    DatabaseName = 'RwDbAdm'
    IndexName = 'XPED_DTENTRADA'
    TableName = 'PED0000'
    Left = 344
    Top = 8
    object TbPedidoQRPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      Size = 6
    end
    object TbPedidoQRCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Size = 5
    end
    object TbPedidoQRREP_CODIGO: TStringField
      FieldName = 'REP_CODIGO'
      Size = 3
    end
    object TbPedidoQRPED_DTENTRADA: TDateTimeField
      FieldName = 'PED_DTENTRADA'
    end
    object TbPedidoQRPED_COMIS1: TFloatField
      FieldName = 'PED_COMIS1'
    end
    object TbPedidoQRPED_COMIS2: TFloatField
      FieldName = 'PED_COMIS2'
    end
    object TbPedidoQRPED_COMIS3: TFloatField
      FieldName = 'PED_COMIS3'
    end
    object TbPedidoQRPCL_CODIGO: TStringField
      FieldName = 'PCL_CODIGO'
      Size = 2
    end
    object TbPedidoQRPED_DESCTOVL: TFloatField
      FieldName = 'PED_DESCTOVL'
    end
    object TbPedidoQRPED_DESCTOPC: TFloatField
      FieldName = 'PED_DESCTOPC'
    end
    object TbPedidoQRTRP_CODIGO: TStringField
      FieldName = 'TRP_CODIGO'
      Size = 3
    end
    object TbPedidoQRPED_FRETE: TStringField
      FieldName = 'PED_FRETE'
      Size = 1
    end
    object TbPedidoQRPED_FRETE2: TStringField
      FieldName = 'PED_FRETE2'
      Size = 1
    end
    object TbPedidoQRTRP_REDESP: TStringField
      FieldName = 'TRP_REDESP'
      Size = 3
    end
    object TbPedidoQRPED_OBSNOTA: TStringField
      FieldName = 'PED_OBSNOTA'
      Size = 60
    end
    object TbPedidoQRPED_SITUACAO: TStringField
      FieldName = 'PED_SITUACAO'
      Size = 10
    end
    object TbPedidoQRPED_VLTOTAL: TFloatField
      FieldName = 'PED_VLTOTAL'
    end
    object TbPedidoQRPED_VLFATURADO: TFloatField
      FieldName = 'PED_VLFATURADO'
    end
    object TbPedidoQRPED_FATURAS: TStringField
      FieldName = 'PED_FATURAS'
    end
    object TbPedidoQRPED_SITCRED: TStringField
      FieldName = 'PED_SITCRED'
      Size = 10
    end
    object TbPedidoQRPED_OBSGERAL01: TStringField
      FieldName = 'PED_OBSGERAL01'
      Size = 80
    end
    object TbPedidoQRPED_OBSGERAL02: TStringField
      FieldName = 'PED_OBSGERAL02'
      Size = 80
    end
    object TbPedidoQRPED_OBSGERAL03: TStringField
      FieldName = 'PED_OBSGERAL03'
      Size = 80
    end
    object TbPedidoQRPED_DTLIM_ATD: TDateTimeField
      FieldName = 'PED_DTLIM_ATD'
    end
    object TbPedidoQRPED_DTSAIDA: TDateTimeField
      FieldName = 'PED_DTSAIDA'
    end
    object TbPedidoQRPED_PRIORIDADE: TStringField
      FieldName = 'PED_PRIORIDADE'
      Size = 10
    end
    object TbPedidoQREMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object TbPedidoQRPED_DTEMBARQUE: TDateTimeField
      FieldName = 'PED_DTEMBARQUE'
    end
    object TbPedidoQRPED_EXPEDICAO: TStringField
      FieldName = 'PED_EXPEDICAO'
      Size = 7
    end
  end
  object DspedidoQR: TDataSource
    DataSet = TbPedidoQR
    Left = 376
    Top = 8
  end
  object TbRepresenQr: TTable
    DatabaseName = 'RwDbAdm'
    IndexFieldNames = 'REP_CODIGO'
    MasterFields = 'REP_CODIGO'
    MasterSource = DspedidoQR
    TableName = 'REP0000'
    Left = 488
    Top = 8
    object TbRepresenQrREP_CODIGO: TStringField
      FieldName = 'REP_CODIGO'
      Required = True
      Size = 3
    end
    object TbRepresenQrREP_GRUPO: TStringField
      FieldName = 'REP_GRUPO'
      Size = 2
    end
    object TbRepresenQrREG_CODIGO: TStringField
      FieldName = 'REG_CODIGO'
      Size = 3
    end
    object TbRepresenQrREP_FUNCAO: TStringField
      FieldName = 'REP_FUNCAO'
      Size = 1
    end
    object TbRepresenQrREP_SUPERVISAO: TStringField
      FieldName = 'REP_SUPERVISAO'
      Size = 3
    end
    object TbRepresenQrREP_RAZAO: TStringField
      FieldName = 'REP_RAZAO'
      Size = 40
    end
    object TbRepresenQrREP_NOME: TStringField
      FieldName = 'REP_NOME'
      Size = 35
    end
    object TbRepresenQrREP_ENDERE: TStringField
      FieldName = 'REP_ENDERE'
      Size = 40
    end
    object TbRepresenQrREP_CIDADE: TStringField
      FieldName = 'REP_CIDADE'
      Size = 30
    end
    object TbRepresenQrREP_UF: TStringField
      FieldName = 'REP_UF'
      Size = 2
    end
    object TbRepresenQrREP_CEP: TStringField
      FieldName = 'REP_CEP'
      Size = 8
    end
    object TbRepresenQrREP_FONE: TStringField
      FieldName = 'REP_FONE'
      Size = 11
    end
    object TbRepresenQrREP_FAX: TStringField
      FieldName = 'REP_FAX'
      Size = 11
    end
    object TbRepresenQrREP_EMAIL: TStringField
      FieldName = 'REP_EMAIL'
      Size = 35
    end
    object TbRepresenQrREP_TIPO: TStringField
      FieldName = 'REP_TIPO'
      Size = 1
    end
    object TbRepresenQrREP_SITUACAO: TStringField
      FieldName = 'REP_SITUACAO'
      Size = 1
    end
    object TbRepresenQrREP_OBS: TMemoField
      FieldName = 'REP_OBS'
      BlobType = ftMemo
    end
    object TbRepresenQrREP_QUOTA: TFloatField
      FieldName = 'REP_QUOTA'
    end
    object TbRepresenQrREP_NDEPEND: TSmallintField
      FieldName = 'REP_NDEPEND'
    end
    object TbRepresenQrREP_DTNASC: TDateTimeField
      FieldName = 'REP_DTNASC'
    end
    object TbRepresenQrREP_INSC: TStringField
      FieldName = 'REP_INSC'
      Size = 14
    end
    object TbRepresenQrREP_CGC: TStringField
      FieldName = 'REP_CGC'
      Size = 14
    end
    object TbRepresenQrEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
  end
  object TbPedidoItenQR: TTable
    DatabaseName = 'RwDbAdm'
    IndexName = 'XPED_CODI_PRF'
    MasterFields = 'PED_CODIGO'
    MasterSource = DspedidoQR
    TableName = 'PED_IT01'
    Left = 432
    Top = 8
    object TbPedidoItenQRPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      Size = 6
    end
    object TbPedidoItenQRPRF_QTDE: TFloatField
      FieldName = 'PRF_QTDE'
    end
  end
  object QRTextFilter1: TQRTextFilter
    Left = 32
    Top = 16
  end
end
