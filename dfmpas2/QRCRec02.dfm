object RelConReceber02: TRelConReceber02
  Left = 0
  Top = 0
  Width = 816
  Height = 1056
  Frame.Color = clBlack
  Frame.DrawTop = False
  Frame.DrawBottom = False
  Frame.DrawLeft = False
  Frame.DrawRight = False
  DataSet = TbRecParcQR
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
  ReportTitle = 'Relat'#243'rio de contas '#224' receber'
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
      Top = 2
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
        5.291666666666667000
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
      Top = 22
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
        58.208333333333330000
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
      Left = 661
      Top = 2
      Width = 34
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        1748.895833333333000000
        5.291666666666667000
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
      Left = 698
      Top = 2
      Width = 39
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        1846.791666666667000000
        5.291666666666667000
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
        1759.479166666667000000
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
    Height = 35
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
      92.604166666666670000
      1957.916666666667000000)
    BandType = rbColumnHeader
    object QRLabel1: TQRLabel
      Left = 2
      Top = 18
      Width = 66
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        5.291666666666667000
        47.625000000000000000
        174.625000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'DUPLICATA'
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
      Left = 74
      Top = 18
      Width = 46
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        195.791666666666700000
        47.625000000000000000
        121.708333333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'VENCTO'
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
      Left = 134
      Top = 18
      Width = 50
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        354.541666666666700000
        47.625000000000000000
        132.291666666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'N.BANCO'
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
      Left = 205
      Top = 18
      Width = 49
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        542.395833333333300000
        47.625000000000000000
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
    object QRLabel8: TQRLabel
      Left = 558
      Top = 18
      Width = 56
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        1476.375000000000000000
        47.625000000000000000
        148.166666666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'RECEBIDO'
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
    object QRLabel9: TQRLabel
      Left = 620
      Top = 18
      Width = 48
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        1640.416666666667000000
        47.625000000000000000
        127.000000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'EMISS'#195'O'
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
      Left = 681
      Top = 18
      Width = 43
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        1801.812500000000000000
        47.625000000000000000
        113.770833333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'STATUS'
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
      Left = 454
      Top = 18
      Width = 63
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        1201.208333333333000000
        47.625000000000000000
        166.687500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'DO TITULO'
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
      Left = 454
      Top = 0
      Width = 38
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        1201.208333333333000000
        0.000000000000000000
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
    object QRLabel14: TQRLabel
      Left = 559
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
        1479.020833333333000000
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
  end
  object QRGroup1: TQRGroup
    Left = 38
    Top = 153
    Width = 740
    Height = 20
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
      52.916666666666670000
      1957.916666666667000000)
    Expression = 'TbRecParcQR.BAN_CODIGO'
    FooterBand = QRBand4
    Master = Owner
    ReprintOnNewPage = False
    object QRLabel13: TQRLabel
      Left = 131
      Top = 2
      Width = 52
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333330000
        346.604166666666700000
        5.291666666666667000
        137.583333333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'BANCO :'
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
    object QRDBText2: TQRDBText
      Left = 191
      Top = 2
      Width = 31
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333330000
        505.354166666666700000
        5.291666666666667000
        82.020833333333330000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TbRecParcQR
      DataField = 'BAN_CODIGO'
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
    object QRDBText3: TQRDBText
      Left = 227
      Top = 2
      Width = 84
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333330000
        600.604166666666700000
        5.291666666666667000
        222.250000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = TbBancoQR
      DataField = 'BAN_APELIDO'
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
  object QRBand4: TQRBand
    Left = 38
    Top = 192
    Width = 740
    Height = 20
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
      52.916666666666670000
      1957.916666666667000000)
    BandType = rbGroupFooter
    object QRLabel2: TQRLabel
      Left = 14
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
        37.041666666666670000
        5.291666666666667000
        214.312500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Total do Banco:'
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
    object QRExpr1: TQRExpr
      Left = 527
      Top = 1
      Width = 85
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1394.354166666667000000
        2.645833333333333000
        224.895833333333300000)
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
      Expression = 'SUM(TbRecParcQR.FPC_VLPAGO_CC)'
      Mask = '#0.,00'
      FontSize = 8
    end
    object QRExpr3: TQRExpr
      Left = 435
      Top = 1
      Width = 85
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1150.937500000000000000
        2.645833333333333000
        224.895833333333300000)
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
      Expression = 'SUM(TbRecParcQR.FPC_VLPARC_CC)'
      Mask = '#0.,00'
      FontSize = 8
    end
  end
  object QRBand3: TQRBand
    Left = 38
    Top = 173
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
    object QRDBText4: TQRDBText
      Left = 64
      Top = 2
      Width = 58
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        169.333333333333300000
        5.291666666666667000
        153.458333333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TbRecParcQR
      DataField = 'FPC_VENCTO'
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
      Left = 123
      Top = 2
      Width = 80
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        325.437500000000000000
        5.291666666666667000
        211.666666666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TbRecParcQR
      DataField = 'FPC_COBNUM'
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
      Left = 204
      Top = 2
      Width = 230
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        539.750000000000000000
        5.291666666666667000
        608.541666666666700000)
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
    object QRDBText9: TQRDBText
      Left = 618
      Top = 0
      Width = 58
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        1635.125000000000000000
        0.000000000000000000
        153.458333333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TbReceberQr
      DataField = 'FAT_DTEMIS'
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
    object QRDBText11: TQRDBText
      Left = 679
      Top = 0
      Width = 59
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        1796.520833333333000000
        0.000000000000000000
        156.104166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TbRecParcQR
      DataField = 'FPC_STATUS'
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
    object QRExpr7: TQRExpr
      Left = 435
      Top = 0
      Width = 85
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1150.937500000000000000
        0.000000000000000000
        224.895833333333300000)
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
        'IF(TbRecParcQR.FPC_STATUS='#39'Cancelada'#39',TbRecParcQR.FPC_STATUS, Tb' +
        'RecParcQR.FPC_VLPARC_CC)'
      Mask = '#0,.00'
      FontSize = 8
    end
    object QRExpr5: TQRExpr
      Left = 527
      Top = 0
      Width = 85
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1394.354166666667000000
        0.000000000000000000
        224.895833333333300000)
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
        'IF(TbRecParcQR.FPC_STATUS='#39'Cancelada'#39',TbRecParcQR.FPC_STATUS, Tb' +
        'RecParcQR.FPC_VLPAGO_CC)'
      Mask = '#0,.00'
      FontSize = 8
    end
    object QRDBText1: TQRDBText
      Left = 2
      Top = 1
      Width = 42
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
        111.125000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TbReceberQr
      DataField = 'FAT_CODIGO'
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
    object QRExpr6: TQRExpr
      Left = 38
      Top = 1
      Width = 10
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        100.541666666666700000
        2.645833333333333000
        26.458333333333330000)
      Alignment = taLeftJustify
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
      Expression = 'IF(TbRecParcQR.FPC_NUMER = '#39#39','#39' '#39','#39'/'#39')'
      Mask = '#0,.00'
      FontSize = 8
    end
    object QRDBText7: TQRDBText
      Left = 43
      Top = 1
      Width = 19
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        113.770833333333300000
        2.645833333333333000
        50.270833333333330000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TbRecParcQR
      DataField = 'FPC_NUMER'
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
  object QRBand5: TQRBand
    Left = 38
    Top = 212
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
    BandType = rbSummary
    object QRLabel3: TQRLabel
      Left = 14
      Top = 1
      Width = 64
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
        169.333333333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Total Geral:'
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
      Left = 522
      Top = 1
      Width = 90
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1381.125000000000000000
        2.645833333333333000
        238.125000000000000000)
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
      Expression = 'SUM(TbRecParcQR.FPC_VLPAGO_CC)'
      Mask = '#0.,00'
      FontSize = 8
    end
    object QRExpr4: TQRExpr
      Left = 430
      Top = 1
      Width = 90
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1137.708333333333000000
        2.645833333333333000
        238.125000000000000000)
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
      Expression = 'SUM(TbRecParcQR.FPC_VLPARC_CC)'
      Mask = '#0.,00'
      FontSize = 8
    end
  end
  object TbReceberQr: TTable
    DatabaseName = 'RwDbAdm'
    IndexFieldNames = 'FAT_CODIGO'
    MasterFields = 'FAT_CODIGO'
    MasterSource = DsRecParcelaQr
    TableName = 'FAT0000'
    Left = 188
    Top = 8
    object TbReceberQrFAT_CODIGO: TStringField
      FieldName = 'FAT_CODIGO'
      Required = True
      Size = 6
    end
    object TbReceberQrPCL_CODIGO: TStringField
      FieldName = 'PCL_CODIGO'
      Size = 2
    end
    object TbReceberQrCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Size = 5
    end
    object TbReceberQrREP_CODIGO: TStringField
      FieldName = 'REP_CODIGO'
      Size = 3
    end
    object TbReceberQrPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      Size = 6
    end
    object TbReceberQrFAT_QTDITEM: TFloatField
      FieldName = 'FAT_QTDITEM'
    end
    object TbReceberQrFAT_VL_LIQ: TFloatField
      FieldName = 'FAT_VL_LIQ'
    end
    object TbReceberQrFAT_VLFAT: TFloatField
      FieldName = 'FAT_VLFAT'
    end
    object TbReceberQrFAT_VLNCOMIS: TFloatField
      FieldName = 'FAT_VLNCOMIS'
    end
    object TbReceberQrFAT_DTEMIS: TDateTimeField
      FieldName = 'FAT_DTEMIS'
    end
    object TbReceberQrFAT_COMIS1: TFloatField
      FieldName = 'FAT_COMIS1'
    end
    object TbReceberQrFAT_COMIS2: TFloatField
      FieldName = 'FAT_COMIS2'
    end
    object TbReceberQrFAT_COMIS3: TFloatField
      FieldName = 'FAT_COMIS3'
    end
    object TbReceberQrFAT_OPERACAO: TStringField
      FieldName = 'FAT_OPERACAO'
      Size = 3
    end
    object TbReceberQrFAT_BASEICMS: TFloatField
      FieldName = 'FAT_BASEICMS'
    end
    object TbReceberQrFAT_ALIQUOTA: TFloatField
      FieldName = 'FAT_ALIQUOTA'
    end
    object TbReceberQrFAT_OBSLIVRO: TStringField
      FieldName = 'FAT_OBSLIVRO'
      Size = 35
    end
    object TbReceberQrFAT_OPERUF: TStringField
      FieldName = 'FAT_OPERUF'
      Size = 2
    end
    object TbReceberQrFAT_LIVRO: TBooleanField
      FieldName = 'FAT_LIVRO'
    end
    object TbReceberQrEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object TbReceberQrCCT_CODIGO: TStringField
      FieldName = 'CCT_CODIGO'
      Size = 3
    end
    object TbReceberQrPCX_CODIGO: TStringField
      FieldName = 'PCX_CODIGO'
      Size = 3
    end
    object TbReceberQrFAT_PREVISAO: TBooleanField
      FieldName = 'FAT_PREVISAO'
    end
    object TbReceberQrFAT_OBS: TStringField
      FieldName = 'FAT_OBS'
      Size = 50
    end
    object TbReceberQrFAT_VL_IPI: TFloatField
      FieldName = 'FAT_VL_IPI'
    end
    object TbReceberQrFAT_CANCELADA: TBooleanField
      FieldName = 'FAT_CANCELADA'
    end
    object TbReceberQrFAT_BASESUB: TFloatField
      FieldName = 'FAT_BASESUB'
    end
    object TbReceberQrFAT_ICMSRET: TFloatField
      FieldName = 'FAT_ICMSRET'
    end
    object TbReceberQrFAT_DESP_ACES: TFloatField
      FieldName = 'FAT_DESP_ACES'
    end
  end
  object TbRecParcQR: TTable
    OnCalcFields = TbRecParcQRCalcFields
    DatabaseName = 'RwDbAdm'
    IndexName = 'XBAN_CODI_FPC'
    TableName = 'FAT_PC01'
    Left = 256
    Top = 8
    object TbRecParcQRFAT_CODIGO: TStringField
      FieldName = 'FAT_CODIGO'
      Required = True
      Size = 6
    end
    object TbRecParcQRFPC_NUMER: TStringField
      FieldName = 'FPC_NUMER'
      Size = 2
    end
    object TbRecParcQRBAN_CODIGO: TStringField
      FieldName = 'BAN_CODIGO'
      Size = 4
    end
    object TbRecParcQRREP_CODIGO: TStringField
      FieldName = 'REP_CODIGO'
      Size = 3
    end
    object TbRecParcQRFPC_DTEMIS: TDateTimeField
      FieldName = 'FPC_DTEMIS'
    end
    object TbRecParcQRFPC_COBNUM: TStringField
      FieldName = 'FPC_COBNUM'
      Size = 13
    end
    object TbRecParcQRFPC_COBTIPO: TStringField
      FieldName = 'FPC_COBTIPO'
      Size = 2
    end
    object TbRecParcQRFPC_STATUS: TStringField
      FieldName = 'FPC_STATUS'
      Size = 12
    end
    object TbRecParcQRFPC_DESCTO: TFloatField
      FieldName = 'FPC_DESCTO'
    end
    object TbRecParcQRFPC_DTDESC: TDateTimeField
      FieldName = 'FPC_DTDESC'
    end
    object TbRecParcQRFPC_VENCTO: TDateTimeField
      FieldName = 'FPC_VENCTO'
    end
    object TbRecParcQRFPC_PAGTO: TDateTimeField
      FieldName = 'FPC_PAGTO'
    end
    object TbRecParcQRFPC_VLPARC: TFloatField
      FieldName = 'FPC_VLPARC'
    end
    object TbRecParcQRFPC_VLPAGO: TFloatField
      FieldName = 'FPC_VLPAGO'
    end
    object TbRecParcQRFPC_OBS: TStringField
      FieldName = 'FPC_OBS'
      Size = 50
    end
    object TbRecParcQRFPC_SITPAG: TBooleanField
      FieldName = 'FPC_SITPAG'
    end
    object TbRecParcQREMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object TbRecParcQRCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Size = 5
    end
    object TbRecParcQRFPC_IMPDUP: TStringField
      FieldName = 'FPC_IMPDUP'
      Size = 1
    end
    object TbRecParcQRFPC_VLPARC_CC: TFloatField
      FieldKind = fkCalculated
      FieldName = 'FPC_VLPARC_CC'
      Calculated = True
    end
    object TbRecParcQRFPC_VLPAGO_CC: TFloatField
      FieldKind = fkCalculated
      FieldName = 'FPC_VLPAGO_CC'
      Calculated = True
    end
    object TbRecParcQRCCT_CODIGO: TStringField
      FieldName = 'CCT_CODIGO'
      Size = 3
    end
    object TbRecParcQRPCX_CODIGO: TStringField
      FieldName = 'PCX_CODIGO'
      Size = 3
    end
  end
  object DsRecParcelaQr: TDataSource
    DataSet = TbRecParcQR
    Left = 284
    Top = 8
  end
  object DsReceberQR: TDataSource
    DataSet = TbReceberQr
    Left = 160
    Top = 8
  end
  object TbClienteQR: TTable
    DatabaseName = 'RwDbAdm'
    IndexFieldNames = 'CLI_CODIGO'
    MasterFields = 'CLI_CODIGO'
    MasterSource = DsReceberQR
    TableName = 'CLI0000'
    Left = 344
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
    object TbClienteQREMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
  end
  object DsClienteQR: TDataSource
    DataSet = TbClienteQR
    Left = 372
    Top = 8
  end
  object TbBancoQR: TTable
    DatabaseName = 'RwDbAdm'
    IndexFieldNames = 'BAN_CODIGO'
    MasterFields = 'BAN_CODIGO'
    MasterSource = DsRecParcelaQr
    TableName = 'BAN0000'
    Left = 432
    Top = 8
    object TbBancoQRBAN_CODIGO: TStringField
      FieldName = 'BAN_CODIGO'
      Required = True
      Size = 4
    end
    object TbBancoQRBAN_RAZAO: TStringField
      FieldName = 'BAN_RAZAO'
      Size = 45
    end
    object TbBancoQRBAN_CODAGE: TStringField
      FieldName = 'BAN_CODAGE'
      Size = 5
    end
    object TbBancoQRBAN_ENDERE: TStringField
      FieldName = 'BAN_ENDERE'
      Size = 40
    end
    object TbBancoQRBAN_CIDADE: TStringField
      FieldName = 'BAN_CIDADE'
      Size = 30
    end
    object TbBancoQRBAN_UF: TStringField
      FieldName = 'BAN_UF'
      Size = 2
    end
    object TbBancoQRBAN_FONE: TStringField
      FieldName = 'BAN_FONE'
      Size = 11
    end
    object TbBancoQRBAN_FAX: TStringField
      FieldName = 'BAN_FAX'
      Size = 11
    end
    object TbBancoQRBAN_CEP: TStringField
      FieldName = 'BAN_CEP'
      Size = 8
    end
    object TbBancoQRBAN_CONTATO: TStringField
      FieldName = 'BAN_CONTATO'
      Size = 30
    end
    object TbBancoQRBAN_JUROMES: TFloatField
      FieldName = 'BAN_JUROMES'
    end
    object TbBancoQRBAN_OBS: TStringField
      FieldName = 'BAN_OBS'
      Size = 200
    end
    object TbBancoQREMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object TbBancoQRBAN_DNAS_CONT: TDateTimeField
      FieldName = 'BAN_DNAS_CONT'
    end
    object TbBancoQRBAN_EMAIL: TStringField
      FieldName = 'BAN_EMAIL'
      Size = 35
    end
    object TbBancoQRBAN_HOME: TStringField
      FieldName = 'BAN_HOME'
      Size = 35
    end
    object TbBancoQRBAN_APELIDO: TStringField
      FieldName = 'BAN_APELIDO'
      Size = 14
    end
  end
  object DsBancoQR: TDataSource
    DataSet = TbBancoQR
    Left = 459
    Top = 8
  end
  object QRTextFilter1: TQRTextFilter
    Left = 32
    Top = 16
  end
end
