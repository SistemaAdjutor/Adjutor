object RelPedido02: TRelPedido02
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
    150.000000000000000000
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
  ReportTitle = 'Relat'#243'rio de entrada de pedidos por representantes'
  SnapToGrid = True
  Units = MM
  Zoom = 100
  object QRBand1: TQRBand
    Left = 38
    Top = 57
    Width = 740
    Height = 61
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
      161.395833333333300000
      1957.916666666667000000)
    BandType = rbPageHeader
    object LabelEmpresa: TQRLabel
      Left = 0
      Top = 1
      Width = 84
      Height = 19
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        50.270833333333330000
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
      Top = 40
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
        105.833333333333300000
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
      Left = 660
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
        1746.250000000000000000
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
      Left = 664
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
        1756.833333333333000000
        105.833333333333300000
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
    Top = 118
    Width = 740
    Height = 19
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
      50.270833333333330000
      1957.916666666667000000)
    BandType = rbColumnHeader
    object QRLabel3: TQRLabel
      Left = 6
      Top = 1
      Width = 32
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        15.875000000000000000
        2.645833333333333000
        84.666666666666670000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Pedido'
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
      Left = 54
      Top = 1
      Width = 48
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        142.875000000000000000
        2.645833333333333000
        127.000000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'D.Entrada'
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
      Left = 122
      Top = 1
      Width = 49
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        322.791666666666700000
        2.645833333333333000
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
    object QRLabel7: TQRLabel
      Left = 338
      Top = 1
      Width = 52
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        894.291666666666700000
        2.645833333333333000
        137.583333333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'VL.Liquido'
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
      Left = 675
      Top = 1
      Width = 42
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1785.937500000000000000
        2.645833333333333000
        111.125000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Ult.Sa'#237'da'
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
    object QRLabel11: TQRLabel
      Left = 555
      Top = 0
      Width = 74
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1468.437500000000000000
        0.000000000000000000
        195.791666666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Notas Faturadas'
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
    object QRLabel12: TQRLabel
      Left = 412
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
        1090.083333333333000000
        2.645833333333333000
        156.104166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Liq.Faturado'
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
      Left = 480
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
        1270.000000000000000000
        2.645833333333333000
        177.270833333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Faturado c/IPI'
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
    Top = 137
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
    Expression = 'COPY(TbPedidoQR.REP_CODIGO, 1, 3)'
    FooterBand = QRBand4
    Master = Owner
    ReprintOnNewPage = False
    object QRLabel9: TQRLabel
      Left = 4
      Top = 0
      Width = 47
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        10.583333333333330000
        0.000000000000000000
        124.354166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Repres. :'
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
    object QRDBText1: TQRDBText
      Left = 83
      Top = 1
      Width = 70
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        219.604166666666700000
        2.645833333333333000
        185.208333333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = TbRepresenQR
      DataField = 'REP_RAZAO'
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
    object QRDBText8: TQRDBText
      Left = 56
      Top = 1
      Width = 24
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333330000
        148.166666666666700000
        2.645833333333333000
        63.500000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TbRepresenQR
      DataField = 'REP_CODIGO'
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
  end
  object QRBand3: TQRBand
    Left = 38
    Top = 156
    Width = 740
    Height = 15
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
      39.687500000000000000
      1957.916666666667000000)
    BandType = rbDetail
    object QRDBText2: TQRDBText
      Left = 2
      Top = 1
      Width = 41
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        5.291666666666667000
        2.645833333333333000
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
    object QRDBText3: TQRDBText
      Left = 45
      Top = 1
      Width = 65
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        119.062500000000000000
        2.645833333333333000
        171.979166666666700000)
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
    object QRDBText4: TQRDBText
      Left = 111
      Top = 1
      Width = 183
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        293.687500000000000000
        2.645833333333333000
        484.187500000000000000)
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
    object QRDBText7: TQRDBText
      Left = 673
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
        1780.645833333333000000
        2.645833333333333000
        171.979166666666700000)
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
    object QRDBText9: TQRDBText
      Left = 397
      Top = 1
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
        2.645833333333333000
        198.437500000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TbPedidoQR
      DataField = 'PED_VLFATURADO'
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
    object QRDBText10: TQRDBText
      Left = 554
      Top = 1
      Width = 118
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1465.791666666667000000
        2.645833333333333000
        312.208333333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = True
      Color = clWhite
      DataSet = TbPedidoQR
      DataField = 'PED_FATURAS'
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
    object QRExpr3: TQRExpr
      Left = 318
      Top = 1
      Width = 75
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        841.375000000000000000
        2.645833333333333000
        198.437500000000000000)
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
      ResetAfterPrint = False
      Transparent = False
      WordWrap = True
      Expression = 
        '(IF(TbPedidoQR.PED_DESCTOPC>0,(TbPedidoQR.PED_VLTOTAL- TbPedidoQ' +
        'R.PED_VLTOTAL*TbPedidoQR.PED_DESCTOPC/100),(TbPedidoQR.PED_VLTOT' +
        'AL-TbPedidoQR.PED_DESCTOVL)))- TbPedidoQR.PED_VLFATURADO'
      Mask = '#0.,00'
      FontSize = 8
    end
    object QRDBText5: TQRDBText
      Left = 476
      Top = 1
      Width = 75
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1259.416666666667000000
        2.645833333333333000
        198.437500000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TbPedidoQR
      DataField = 'PED_VLFATBRUTO'
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
    object QRDBText6: TQRDBText
      Left = 297
      Top = 1
      Width = 18
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        785.812500000000000000
        2.645833333333333000
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
  end
  object QRBand4: TQRBand
    Left = 38
    Top = 171
    Width = 740
    Height = 18
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
      47.625000000000000000
      1957.916666666667000000)
    BandType = rbGroupFooter
    object QRLabel8: TQRLabel
      Left = 6
      Top = 2
      Width = 34
      Height = 14
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        37.041666666666670000
        15.875000000000000000
        5.291666666666667000
        89.958333333333330000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Total :'
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
    object QRExpr4: TQRExpr
      Left = 394
      Top = 3
      Width = 77
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        1042.458333333333000000
        7.937500000000000000
        203.729166666666700000)
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
      Master = Owner
      ParentFont = False
      ResetAfterPrint = True
      Transparent = False
      WordWrap = True
      Expression = 'SUM(TbPedidoQR.PED_VLFATURADO)'
      Mask = '#0.,00'
      FontSize = 8
    end
    object QRExpr6: TQRExpr
      Left = 473
      Top = 3
      Width = 77
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        1251.479166666667000000
        7.937500000000000000
        203.729166666666700000)
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
      Master = Owner
      ParentFont = False
      ResetAfterPrint = True
      Transparent = False
      WordWrap = True
      Expression = 'SUM(TbPedidoQR.PED_VLFATBRUTO)'
      Mask = '#0.,00'
      FontSize = 8
    end
    object QRExpr1: TQRExpr
      Left = 315
      Top = 1
      Width = 77
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        833.437500000000000000
        2.645833333333333000
        203.729166666666700000)
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
      ResetAfterPrint = False
      Transparent = False
      WordWrap = True
      Expression = 
        'SUM((IF(TbPedidoQR.PED_DESCTOPC>0,(TbPedidoQR.PED_VLTOTAL- TbPed' +
        'idoQR.PED_VLTOTAL*TbPedidoQR.PED_DESCTOPC/100),(TbPedidoQR.PED_V' +
        'LTOTAL-TbPedidoQR.PED_DESCTOVL)))- TbPedidoQR.PED_VLFATURADO)'
      Mask = '#0.,00'
      FontSize = 8
    end
  end
  object QRBand5: TQRBand
    Left = 38
    Top = 189
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
    BandType = rbSummary
    object QRLabel2: TQRLabel
      Left = 5
      Top = 3
      Width = 67
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        13.229166666666670000
        7.937500000000000000
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
    object QRExpr5: TQRExpr
      Left = 394
      Top = 3
      Width = 77
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        1042.458333333333000000
        7.937500000000000000
        203.729166666666700000)
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
      Master = Owner
      ParentFont = False
      ResetAfterPrint = True
      Transparent = False
      WordWrap = True
      Expression = 'SUM(TbPedidoQR.PED_VLFATURADO)'
      Mask = '#0.,00'
      FontSize = 8
    end
    object QRExpr7: TQRExpr
      Left = 473
      Top = 3
      Width = 77
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        1251.479166666667000000
        7.937500000000000000
        203.729166666666700000)
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
      Master = Owner
      ParentFont = False
      ResetAfterPrint = True
      Transparent = False
      WordWrap = True
      Expression = 'SUM(TbPedidoQR.PED_VLFATBRUTO)'
      Mask = '#0.,00'
      FontSize = 8
    end
    object QRExpr2: TQRExpr
      Left = 315
      Top = 1
      Width = 77
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        833.437500000000000000
        2.645833333333333000
        203.729166666666700000)
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
      ResetAfterPrint = False
      Transparent = False
      WordWrap = True
      Expression = 
        'SUM((IF(TbPedidoQR.PED_DESCTOPC>0,(TbPedidoQR.PED_VLTOTAL- TbPed' +
        'idoQR.PED_VLTOTAL*TbPedidoQR.PED_DESCTOPC/100),(TbPedidoQR.PED_V' +
        'LTOTAL-TbPedidoQR.PED_DESCTOVL)))- TbPedidoQR.PED_VLFATURADO)'
      Mask = '#0.,00'
      FontSize = 8
    end
  end
  object TbPedidoQR: TTable
    DatabaseName = 'RwDbAdm'
    IndexName = 'XREP_COD_PED'
    TableName = 'PED0000'
    Left = 304
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
    object TbPedidoQRPED_VLFATBRUTO: TFloatField
      FieldName = 'PED_VLFATBRUTO'
    end
  end
  object TbRepresenQR: TTable
    DatabaseName = 'RwDbAdm'
    IndexFieldNames = 'REP_CODIGO'
    MasterFields = 'REP_CODIGO'
    MasterSource = DsPedidoQR
    TableName = 'REP0000'
    Left = 456
    Top = 8
    object TbRepresenQRREP_CODIGO: TStringField
      FieldName = 'REP_CODIGO'
      Required = True
      Size = 3
    end
    object TbRepresenQRREP_GRUPO: TStringField
      FieldName = 'REP_GRUPO'
      Size = 2
    end
    object TbRepresenQRREG_CODIGO: TStringField
      FieldName = 'REG_CODIGO'
      Size = 3
    end
    object TbRepresenQRREP_FUNCAO: TStringField
      FieldName = 'REP_FUNCAO'
      Size = 1
    end
    object TbRepresenQRREP_SUPERVISAO: TStringField
      FieldName = 'REP_SUPERVISAO'
      Size = 3
    end
    object TbRepresenQRREP_RAZAO: TStringField
      FieldName = 'REP_RAZAO'
      Size = 40
    end
    object TbRepresenQRREP_NOME: TStringField
      FieldName = 'REP_NOME'
      Size = 35
    end
    object TbRepresenQRREP_ENDERE: TStringField
      FieldName = 'REP_ENDERE'
      Size = 40
    end
    object TbRepresenQRREP_CIDADE: TStringField
      FieldName = 'REP_CIDADE'
      Size = 30
    end
    object TbRepresenQRREP_UF: TStringField
      FieldName = 'REP_UF'
      Size = 2
    end
    object TbRepresenQRREP_CEP: TStringField
      FieldName = 'REP_CEP'
      Size = 8
    end
    object TbRepresenQRREP_FONE: TStringField
      FieldName = 'REP_FONE'
      Size = 11
    end
    object TbRepresenQRREP_FAX: TStringField
      FieldName = 'REP_FAX'
      Size = 11
    end
    object TbRepresenQRREP_EMAIL: TStringField
      FieldName = 'REP_EMAIL'
      Size = 35
    end
    object TbRepresenQRREP_TIPO: TStringField
      FieldName = 'REP_TIPO'
      Size = 1
    end
    object TbRepresenQRREP_SITUACAO: TStringField
      FieldName = 'REP_SITUACAO'
      Size = 1
    end
    object TbRepresenQRREP_OBS: TMemoField
      FieldName = 'REP_OBS'
      BlobType = ftMemo
    end
    object TbRepresenQRREP_QUOTA: TFloatField
      FieldName = 'REP_QUOTA'
    end
    object TbRepresenQRREP_NDEPEND: TSmallintField
      FieldName = 'REP_NDEPEND'
    end
    object TbRepresenQRREP_DTNASC: TDateTimeField
      FieldName = 'REP_DTNASC'
    end
    object TbRepresenQRREP_INSC: TStringField
      FieldName = 'REP_INSC'
      Size = 14
    end
    object TbRepresenQRREP_CGC: TStringField
      FieldName = 'REP_CGC'
      Size = 14
    end
    object TbRepresenQREMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
  end
  object TbClienteQR: TTable
    DatabaseName = 'RwDbAdm'
    IndexFieldNames = 'CLI_CODIGO'
    MasterFields = 'CLI_CODIGO'
    MasterSource = DsPedidoQR
    TableName = 'CLI0000'
    Left = 152
    Top = 8
    object TbClienteQRCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Required = True
      Size = 5
    end
    object TbClienteQRCLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      Size = 45
    end
    object TbClienteQRCLI_UF: TStringField
      FieldName = 'CLI_UF'
      Size = 2
    end
  end
  object DsPedidoQR: TDataSource
    DataSet = TbPedidoQR
    Left = 332
    Top = 8
  end
  object QRTextFilter1: TQRTextFilter
    Left = 32
    Top = 16
  end
end
