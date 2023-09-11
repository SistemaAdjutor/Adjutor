object RelConReceber01: TRelConReceber01
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
      Top = 21
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
        55.562500000000000000
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
      Top = 41
      Width = 38
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        0.000000000000000000
        108.479166666666700000
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
    object QRLabel3: TQRLabel
      Left = 655
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
        1733.020833333333000000
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
      Left = 690
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
        1825.625000000000000000
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
      Left = 660
      Top = 41
      Width = 31
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        1746.250000000000000000
        108.479166666666700000
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
    Top = 117
    Width = 740
    Height = 32
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
      84.666666666666670000
      1957.916666666667000000)
    BandType = rbColumnHeader
    object QRLabel4: TQRLabel
      Left = 70
      Top = 16
      Width = 48
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        185.208333333333300000
        42.333333333333330000
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
    object QRLabel5: TQRLabel
      Left = 3
      Top = 16
      Width = 46
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        7.937500000000000000
        42.333333333333330000
        121.708333333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'FATURA'
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
      Left = 366
      Top = 3
      Width = 49
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        968.375000000000000000
        7.937500000000000000
        129.645833333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'VALOR '#192
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
      Left = 455
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
        1203.854166666667000000
        7.937500000000000000
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
      Left = 513
      Top = 16
      Width = 26
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        1357.312500000000000000
        42.333333333333330000
        68.791666666666670000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'PED.'
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
    object QRLabel10: TQRLabel
      Left = 568
      Top = 16
      Width = 39
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        1502.833333333333000000
        42.333333333333330000
        103.187500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'BANCO'
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
      Left = 128
      Top = 16
      Width = 49
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        338.666666666666700000
        42.333333333333330000
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
    object QRLabel13: TQRLabel
      Left = 446
      Top = 16
      Width = 56
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        1180.041666666667000000
        42.333333333333330000
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
    object QRLabel12: TQRLabel
      Left = 365
      Top = 16
      Width = 50
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        965.729166666666700000
        42.333333333333330000
        132.291666666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'RECEBER'
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
    object QRLabel18: TQRLabel
      Left = 685
      Top = 16
      Width = 43
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        1812.395833333333000000
        42.333333333333330000
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
    object QRLabel21: TQRLabel
      Left = 630
      Top = 16
      Width = 50
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        1666.875000000000000000
        42.333333333333330000
        132.291666666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'No.COBR.'
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
    Top = 149
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
    Expression = 'COPY(TbRecParcQR.FPC_VENCTO, 4, 2)'
    FooterBand = QRBand4
    Master = Owner
    ReprintOnNewPage = False
    object QRLabel14: TQRLabel
      Left = 163
      Top = 2
      Width = 30
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333330000
        431.270833333333300000
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
      Left = 194
      Top = 2
      Width = 191
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333330000
        513.291666666666700000
        5.291666666666667000
        505.354166666666700000)
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
      Expression = 'COPY(TbRecParcQR.FPC_VENCTO, 4, 2)'
      FontSize = 9
    end
  end
  object QRGroup2: TQRGroup
    Left = 38
    Top = 168
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
    Expression = 'TbRecParcQR.FPC_VENCTO'
    FooterBand = QRBand5
    Master = Owner
    ReprintOnNewPage = False
    object QRLabel15: TQRLabel
      Left = 163
      Top = 2
      Width = 71
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        431.270833333333300000
        5.291666666666667000
        187.854166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Vencimento :'
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
      Left = 234
      Top = 2
      Width = 65
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        619.125000000000000000
        5.291666666666667000
        171.979166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      Color = clWhite
      ParentFont = False
      ResetAfterPrint = False
      Transparent = False
      WordWrap = True
      Expression = 'TbRecParcQR.FPC_VENCTO'
      FontSize = 8
    end
  end
  object QRBand3: TQRBand
    Left = 38
    Top = 188
    Width = 740
    Height = 17
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
      44.979166666666670000
      1957.916666666667000000)
    BandType = rbDetail
    object QRDBText1: TQRDBText
      Left = 65
      Top = 1
      Width = 57
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        171.979166666666700000
        2.645833333333333000
        150.812500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TbReceberQR
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
    object QRDBText2: TQRDBText
      Left = 509
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
        1346.729166666667000000
        2.645833333333333000
        103.187500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TbReceberQR
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
    object QRDBText8: TQRDBText
      Left = 551
      Top = 1
      Width = 71
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        1457.854166666667000000
        2.645833333333333000
        187.854166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TbRecParcQR
      DataField = 'Ban_Apelido_LK'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 7
    end
    object QRDBText3: TQRDBText
      Left = 124
      Top = 1
      Width = 211
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        328.083333333333300000
        2.645833333333333000
        558.270833333333300000)
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
      Left = 686
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
        1815.041666666667000000
        2.645833333333333000
        137.583333333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TbRecParcQR
      DataField = 'FPC_STATUS'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 7
    end
    object QRExpr7: TQRExpr
      Left = 336
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
        889.000000000000000000
        2.645833333333333000
        224.895833333333300000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      ResetAfterPrint = False
      Transparent = False
      WordWrap = True
      Expression = 
        'IF(TbRecParcQR.FPC_STATUS='#39'Cancelada'#39',TbRecParcQR.FPC_STATUS, (T' +
        'bRecParcQR.FPC_VLPARC_CC-TbRecParcQR.FPC_VLPAGO_CC))'
      Mask = '#0,.00'
      FontSize = 8
    end
    object QRDBText4: TQRDBText
      Left = 623
      Top = 1
      Width = 62
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        1648.354166666667000000
        2.645833333333333000
        164.041666666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TbRecParcQR
      DataField = 'FPC_COBNUM'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 7
    end
    object QRExpr13: TQRExpr
      Left = 421
      Top = 1
      Width = 85
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        1113.895833333333000000
        2.645833333333333000
        224.895833333333300000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      ResetAfterPrint = False
      Transparent = False
      WordWrap = True
      Expression = 
        'IF(TbRecParcQR.FPC_STATUS='#39'Cancelada'#39',TbRecParcQR.FPC_STATUS, Tb' +
        'RecParcQR.FPC_VLPAGO_CC)'
      Mask = '#0,.00'
      FontSize = 8
    end
    object QRDBText5: TQRDBText
      Left = 3
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
        7.937500000000000000
        2.645833333333333000
        111.125000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TbReceberQR
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
    object QRExpr14: TQRExpr
      Left = 39
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
        103.187500000000000000
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
      Left = 44
      Top = 1
      Width = 16
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        116.416666666666700000
        2.645833333333333000
        42.333333333333330000)
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
  object QRBand4: TQRBand
    Left = 38
    Top = 224
    Width = 740
    Height = 17
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
      44.979166666666670000
      1957.916666666667000000)
    BandType = rbGroupFooter
    object QRLabel17: TQRLabel
      Left = 114
      Top = 1
      Width = 90
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        301.625000000000000000
        2.645833333333333000
        238.125000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'TOTAL DO M'#202'S :'
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
    object QRExpr4: TQRExpr
      Left = 421
      Top = 1
      Width = 85
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        1113.895833333333000000
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
    object QRExpr6: TQRExpr
      Left = 335
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
        886.354166666666700000
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
      Expression = 'SUM((TbRecParcQR.FPC_VLPARC_CC-TbRecParcQR.FPC_VLPAGO_CC))'
      Mask = '#0.,00'
      FontSize = 8
    end
    object QRLabel19: TQRLabel
      Left = 563
      Top = 1
      Width = 35
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1489.604166666667000000
        2.645833333333333000
        92.604166666666670000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'SOMA:'
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
    object QRExpr11: TQRExpr
      Left = 599
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
        1584.854166666667000000
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
      Expression = 
        'SUM((TbRecParcQR.FPC_VLPARC_CC-TbRecParcQR.FPC_VLPAGO_CC)) + SUM' +
        '(TbRecParcQR.FPC_VLPAGO_CC)'
      Mask = '#0,.00'
      FontSize = 8
    end
  end
  object QRBand5: TQRBand
    Left = 38
    Top = 205
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
    BandType = rbGroupFooter
    object QRLabel16: TQRLabel
      Left = 115
      Top = 3
      Width = 88
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        304.270833333333300000
        7.937500000000000000
        232.833333333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'TOTAL DO DIA :'
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
    object QRExpr3: TQRExpr
      Left = 421
      Top = 3
      Width = 85
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        1113.895833333333000000
        7.937500000000000000
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
    object QRExpr5: TQRExpr
      Left = 336
      Top = 3
      Width = 85
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        889.000000000000000000
        7.937500000000000000
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
      Expression = 'SUM((TbRecParcQR.FPC_VLPARC_CC-TbRecParcQR.FPC_VLPAGO_CC))'
      Mask = '#0.,00'
      FontSize = 8
    end
    object QRExpr10: TQRExpr
      Left = 599
      Top = 3
      Width = 90
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1584.854166666667000000
        7.937500000000000000
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
      Expression = 
        'SUM((TbRecParcQR.FPC_VLPARC_CC-TbRecParcQR.FPC_VLPAGO_CC)) + SUM' +
        '(TbRecParcQR.FPC_VLPAGO_CC)'
      Mask = '#0,.00'
      FontSize = 8
    end
    object QRLabel2: TQRLabel
      Left = 563
      Top = 3
      Width = 35
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1489.604166666667000000
        7.937500000000000000
        92.604166666666670000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'SOMA:'
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
    object QRRichText1: TQRRichText
      Left = 115
      Top = 2
      Width = 574
      Height = 1
      Frame.Color = clBlack
      Frame.DrawTop = True
      Frame.DrawBottom = True
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        2.645833333333333000
        304.270833333333300000
        5.291666666666667000
        1518.708333333333000000)
      Alignment = taLeftJustify
      AutoStretch = False
      Color = clWindow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
    end
  end
  object QRBand6: TQRBand
    Left = 38
    Top = 241
    Width = 740
    Height = 18
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
      47.625000000000000000
      1957.916666666667000000)
    BandType = rbSummary
    object QRLabel1: TQRLabel
      Left = 4
      Top = 1
      Width = 85
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        10.583333333333330000
        2.645833333333333000
        224.895833333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'TOTAL GERAL :'
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
    object QRExpr8: TQRExpr
      Left = 335
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
        886.354166666666700000
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
      Expression = 'SUM((TbRecParcQR.FPC_VLPARC_CC-TbRecParcQR.FPC_VLPAGO_CC))'
      Mask = '#0.,00'
      FontSize = 8
    end
    object QRExpr9: TQRExpr
      Left = 421
      Top = 1
      Width = 85
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        1113.895833333333000000
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
    object QRLabel20: TQRLabel
      Left = 563
      Top = 1
      Width = 35
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1489.604166666667000000
        2.645833333333333000
        92.604166666666670000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'SOMA:'
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
    object QRExpr12: TQRExpr
      Left = 599
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
        1584.854166666667000000
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
      Expression = 
        'SUM((TbRecParcQR.FPC_VLPARC_CC-TbRecParcQR.FPC_VLPAGO_CC)) + SUM' +
        '(TbRecParcQR.FPC_VLPAGO_CC)'
      Mask = '#0,.00'
      FontSize = 8
    end
  end
  object TbReceberQR: TTable
    DatabaseName = 'RwDbAdm'
    IndexName = 'XFAT_CODI'
    MasterFields = 'FAT_CODIGO'
    MasterSource = DsRecParcQR
    TableName = 'FAT0000'
    Left = 184
    Top = 8
    object TbReceberQRFAT_CODIGO: TStringField
      FieldName = 'FAT_CODIGO'
      Required = True
      Size = 6
    end
    object TbReceberQRPCL_CODIGO: TStringField
      FieldName = 'PCL_CODIGO'
      Size = 2
    end
    object TbReceberQRCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Size = 5
    end
    object TbReceberQRREP_CODIGO: TStringField
      FieldName = 'REP_CODIGO'
      Size = 3
    end
    object TbReceberQRPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      Size = 6
    end
    object TbReceberQRFAT_QTDITEM: TFloatField
      FieldName = 'FAT_QTDITEM'
    end
    object TbReceberQRFAT_VL_LIQ: TFloatField
      FieldName = 'FAT_VL_LIQ'
    end
    object TbReceberQRFAT_VLFAT: TFloatField
      FieldName = 'FAT_VLFAT'
    end
    object TbReceberQRFAT_VLNCOMIS: TFloatField
      FieldName = 'FAT_VLNCOMIS'
    end
    object TbReceberQRFAT_DTEMIS: TDateTimeField
      FieldName = 'FAT_DTEMIS'
    end
    object TbReceberQRFAT_COMIS1: TFloatField
      FieldName = 'FAT_COMIS1'
    end
    object TbReceberQRFAT_COMIS2: TFloatField
      FieldName = 'FAT_COMIS2'
    end
    object TbReceberQRFAT_COMIS3: TFloatField
      FieldName = 'FAT_COMIS3'
    end
    object TbReceberQRFAT_OPERACAO: TStringField
      FieldName = 'FAT_OPERACAO'
      Size = 3
    end
    object TbReceberQRFAT_BASEICMS: TFloatField
      FieldName = 'FAT_BASEICMS'
    end
    object TbReceberQRFAT_ALIQUOTA: TFloatField
      FieldName = 'FAT_ALIQUOTA'
    end
    object TbReceberQRFAT_OBSLIVRO: TStringField
      FieldName = 'FAT_OBSLIVRO'
      Size = 35
    end
    object TbReceberQRFAT_OPERUF: TStringField
      FieldName = 'FAT_OPERUF'
      Size = 2
    end
    object TbReceberQRFAT_LIVRO: TBooleanField
      FieldName = 'FAT_LIVRO'
    end
    object TbReceberQREMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object TbReceberQRCCT_CODIGO: TStringField
      FieldName = 'CCT_CODIGO'
      Size = 3
    end
    object TbReceberQRPCX_CODIGO: TStringField
      FieldName = 'PCX_CODIGO'
      Size = 3
    end
    object TbReceberQRFAT_PREVISAO: TBooleanField
      FieldName = 'FAT_PREVISAO'
    end
    object TbReceberQRFAT_OBS: TStringField
      FieldName = 'FAT_OBS'
      Size = 50
    end
    object TbReceberQRFAT_VL_IPI: TFloatField
      FieldName = 'FAT_VL_IPI'
    end
    object TbReceberQRFAT_CANCELADA: TBooleanField
      FieldName = 'FAT_CANCELADA'
    end
    object TbReceberQRFAT_BASESUB: TFloatField
      FieldName = 'FAT_BASESUB'
    end
    object TbReceberQRFAT_ICMSRET: TFloatField
      FieldName = 'FAT_ICMSRET'
    end
    object TbReceberQRFAT_DESP_ACES: TFloatField
      FieldName = 'FAT_DESP_ACES'
    end
  end
  object TbRecParcQR: TTable
    OnCalcFields = TbRecParcQRCalcFields
    DatabaseName = 'RwDbAdm'
    IndexFieldNames = 'FPC_VENCTO'
    TableName = 'FAT_PC01'
    Left = 272
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
    object TbRecParcQRBan_Apelido_LK: TStringField
      FieldKind = fkLookup
      FieldName = 'Ban_Apelido_LK'
      LookupDataSet = TbBancoQR
      LookupKeyFields = 'BAN_CODIGO'
      LookupResultField = 'BAN_APELIDO'
      KeyFields = 'BAN_CODIGO'
      Size = 14
      Lookup = True
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
  object DsRecParcQR: TDataSource
    DataSet = TbRecParcQR
    Left = 300
    Top = 8
  end
  object TbClienteQR: TTable
    DatabaseName = 'RwDbAdm'
    IndexFieldNames = 'CLI_CODIGO'
    MasterFields = 'CLI_CODIGO'
    MasterSource = DsReceberQR
    TableName = 'CLI0000'
    Left = 360
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
  object DsReceberQR: TDataSource
    DataSet = TbReceberQR
    Left = 212
    Top = 8
  end
  object TbBancoQR: TTable
    DatabaseName = 'RwDbAdm'
    TableName = 'BAN0000'
    Left = 400
    Top = 8
    object TbBancoQRBAN_CODIGO: TStringField
      FieldName = 'BAN_CODIGO'
      Required = True
      Size = 4
    end
    object TbBancoQRBAN_APELIDO: TStringField
      FieldName = 'BAN_APELIDO'
      Size = 14
    end
  end
  object QRTextFilter1: TQRTextFilter
    Left = 32
    Top = 16
  end
end
