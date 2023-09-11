object RelConPagar04: TRelConPagar04
  Left = 0
  Top = 0
  Width = 816
  Height = 1056
  Frame.Color = clBlack
  Frame.DrawTop = False
  Frame.DrawBottom = False
  Frame.DrawLeft = False
  Frame.DrawRight = False
  DataSet = TQPagarQr
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
    200.000000000000000000
    150.000000000000000000
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
    Left = 76
    Top = 57
    Width = 684
    Height = 58
    Frame.Color = clBlack
    Frame.DrawTop = True
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    AlignToBottom = False
    BeforePrint = QRBand1BeforePrint
    Color = clWhite
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      153.458333333333300000
      1809.750000000000000000)
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
      Width = 35
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
        92.604166666666670000)
      Alignment = taLeftJustify
      AlignToBand = True
      AutoSize = True
      AutoStretch = False
      Caption = 'Ltitulo1'
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
      Top = 38
      Width = 35
      Height = 19
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        50.270833333333330000
        0.000000000000000000
        100.541666666666700000
        92.604166666666670000)
      Alignment = taLeftJustify
      AlignToBand = True
      AutoSize = True
      AutoStretch = False
      Caption = 'Ltitulo2'
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
      Left = 604
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
        1598.083333333333000000
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
      Left = 640
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
        1693.333333333333000000
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
      Left = 614
      Top = 38
      Width = 31
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        1624.541666666667000000
        100.541666666666700000
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
  object QRGroup1: TQRGroup
    Left = 76
    Top = 134
    Width = 684
    Height = 19
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
      50.270833333333330000
      1809.750000000000000000)
    Expression = 'TQPagarQr.CEC_CODIGO'
    FooterBand = QRBand4
    Master = Owner
    ReprintOnNewPage = False
    object QRDBText1: TQRDBText
      Left = 110
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
        291.041666666666700000
        0.000000000000000000
        195.791666666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = TQPagarQr
      DataField = 'CEC_DESCRI'
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
    object QRDBText6: TQRDBText
      Left = 76
      Top = 0
      Width = 30
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        201.083333333333300000
        0.000000000000000000
        79.375000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TQPagarQr
      DataField = 'CEC_CODIGO'
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
  object QRGroup2: TQRGroup
    Left = 76
    Top = 153
    Width = 684
    Height = 21
    Frame.Color = clBlack
    Frame.DrawTop = True
    Frame.DrawBottom = True
    Frame.DrawLeft = False
    Frame.DrawRight = False
    AlignToBottom = False
    Color = clWhite
    Enabled = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      55.562500000000000000
      1809.750000000000000000)
    Expression = 'TQPagarQr.Pag_pc01.CCT_CODIGO'
    FooterBand = QRBand3
    Master = Owner
    ReprintOnNewPage = False
  end
  object QRBand2: TQRBand
    Left = 76
    Top = 174
    Width = 684
    Height = 21
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    AlignToBottom = False
    Color = clWhite
    Enabled = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      55.562500000000000000
      1809.750000000000000000)
    BandType = rbDetail
    object QRDBText4: TQRDBText
      Left = 232
      Top = 2
      Width = 78
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        613.833333333333300000
        5.291666666666667000
        206.375000000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = TQPagarQr
      DataField = 'PPC_VLPARC'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = []
      Mask = '#0.,00'
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
  end
  object QRBand3: TQRBand
    Left = 76
    Top = 195
    Width = 684
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
      1809.750000000000000000)
    BandType = rbGroupFooter
    object QRDBText5: TQRDBText
      Left = 67
      Top = 1
      Width = 30
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        177.270833333333300000
        2.645833333333333000
        79.375000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TQPagarQr
      DataField = 'Pag_pc01.CCT_CODIGO'
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
    object QRDBText2: TQRDBText
      Left = 102
      Top = 1
      Width = 280
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        269.875000000000000000
        2.645833333333333000
        740.833333333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TQPagarQr
      DataField = 'CCT_DESCRI'
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
    object QRDBText3: TQRDBText
      Left = 352
      Top = 1
      Width = 95
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        931.333333333333300000
        2.645833333333333000
        251.354166666666700000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TQPagarQr
      DataField = 'CCT_PROVISAO'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = []
      Mask = '#0.,00'
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRExpr4: TQRExpr
      Left = 462
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
        1222.375000000000000000
        5.291666666666667000
        251.354166666666700000)
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
      Expression = 'SUM((TQPagarQr.PPC_VLPARC - TQPagarQr.PPC_VLPAGO))'
      Mask = '#0.,00'
      FontSize = 8
    end
    object QRExpr2: TQRExpr
      Left = 564
      Top = 2
      Width = 95
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333330000
        1492.250000000000000000
        5.291666666666667000
        251.354166666666700000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = []
      Color = clWhite
      Master = Owner
      ParentFont = False
      ResetAfterPrint = True
      Transparent = False
      WordWrap = True
      Expression = 'SUM(TQPagarQr.PPC_VLPAGO)'
      Mask = '#0.,00'
      FontSize = 10
    end
  end
  object QRBand4: TQRBand
    Left = 76
    Top = 215
    Width = 684
    Height = 20
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
      52.916666666666670000
      1809.750000000000000000)
    BandType = rbGroupFooter
    object QRLabel1: TQRLabel
      Left = 90
      Top = 1
      Width = 46
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        238.125000000000000000
        2.645833333333333000
        121.708333333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'TOTAL '
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
    object QRExpr1: TQRExpr
      Left = 462
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
        1222.375000000000000000
        5.291666666666667000
        251.354166666666700000)
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
      Expression = 'SUM((TQPagarQr.PPC_VLPARC - TQPagarQr.PPC_VLPAGO))'
      Mask = '#0.,00'
      FontSize = 8
    end
    object QRExpr3: TQRExpr
      Left = 564
      Top = 2
      Width = 95
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333330000
        1492.250000000000000000
        5.291666666666667000
        251.354166666666700000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = []
      Color = clWhite
      Master = Owner
      ParentFont = False
      ResetAfterPrint = True
      Transparent = False
      WordWrap = True
      Expression = 'SUM(TQPagarQr.PPC_VLPAGO)'
      Mask = '#0.,00'
      FontSize = 10
    end
  end
  object QRBand5: TQRBand
    Left = 76
    Top = 235
    Width = 684
    Height = 20
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
      52.916666666666670000
      1809.750000000000000000)
    BandType = rbSummary
    object QRLabel2: TQRLabel
      Left = 34
      Top = 1
      Width = 86
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        89.958333333333330000
        2.645833333333333000
        227.541666666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'TOTAL GERAL'
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
    object QRExpr5: TQRExpr
      Left = 462
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
        1222.375000000000000000
        5.291666666666667000
        251.354166666666700000)
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
      Expression = 'SUM((TQPagarQr.PPC_VLPARC - TQPagarQr.PPC_VLPAGO))'
      Mask = '#0.,00'
      FontSize = 8
    end
    object QRExpr6: TQRExpr
      Left = 564
      Top = 2
      Width = 95
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333330000
        1492.250000000000000000
        5.291666666666667000
        251.354166666666700000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = []
      Color = clWhite
      Master = Owner
      ParentFont = False
      ResetAfterPrint = True
      Transparent = False
      WordWrap = True
      Expression = 'SUM(TQPagarQr.PPC_VLPAGO)'
      Mask = '#0.,00'
      FontSize = 10
    end
  end
  object QRBand6: TQRBand
    Left = 76
    Top = 115
    Width = 684
    Height = 19
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
      50.270833333333330000
      1809.750000000000000000)
    BandType = rbColumnHeader
    object QRLabel3: TQRLabel
      Left = 383
      Top = 1
      Width = 63
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1013.354166666667000000
        2.645833333333333000
        166.687500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'PROVIS'#195'O'
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
    object QRLabel4: TQRLabel
      Left = 478
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
        1264.708333333333000000
        2.645833333333333000
        206.375000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'VL. '#192' PAGAR'
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
    object QRLabel5: TQRLabel
      Left = 603
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
        1595.437500000000000000
        2.645833333333333000
        148.166666666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'VL. PAGO'
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
    object QRLabel6: TQRLabel
      Left = 85
      Top = 1
      Width = 195
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        224.895833333333300000
        2.645833333333333000
        515.937500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'CONTAS DO CENTRO DE CUSTOS'
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
  object TQPagarQr: TQuery
    DatabaseName = 'RwDbAdm'
    SQL.Strings = (
      
        'SELECT Pag_pc01.PAG_CODIGO, Pag_pc01.PPC_VENCTO, Pag_pc01.PPC_PA' +
        'GTO, Pag_pc01.PPC_VLPARC, Pag_pc01.PPC_VLPAGO, Pag_pc01.CCT_CODI' +
        'GO, Pag0000.PAG_CODIGO, Pag0000.PAG_DTEMIS, Pag0000.CCT_CODIGO, ' +
        'Cct_0000.CCT_CODIGO, Cct_0000.CCT_DESCRI, Cec_0000.CEC_CODIGO, C' +
        'ec_0000.CEC_DESCRI, Cct_0000.CCT_PROVISAO'
      
        'FROM PAG_PC01 Pag_pc01, PAG0000 Pag0000, CCT_0000 Cct_0000, CEC_' +
        '0000 Cec_0000'
      'WHERE  (Pag_pc01.PAG_CODIGO = Pag0000.PAG_CODIGO)  '
      '   AND  (Pag0000.CCT_CODIGO = Cct_0000.CCT_CODIGO)  '
      '   AND  (Cct_0000.CEC_CODIGO = Cec_0000.CEC_CODIGO)  '
      'ORDER BY Cec_0000.CEC_CODIGO, Pag_pc01.CCT_CODIGO')
    Left = 97
    Top = 8
    object TQPagarQrPag_pc01PAG_CODIGO: TStringField
      FieldName = 'Pag_pc01.PAG_CODIGO'
      Origin = 'PAG_PC01.PAG_CODIGO'
      Size = 5
    end
    object TQPagarQrPPC_VENCTO: TDateTimeField
      FieldName = 'PPC_VENCTO'
      Origin = 'PAG_PC01.PPC_VENCTO'
    end
    object TQPagarQrPPC_PAGTO: TDateTimeField
      FieldName = 'PPC_PAGTO'
      Origin = 'PAG_PC01.PPC_PAGTO'
    end
    object TQPagarQrPPC_VLPARC: TFloatField
      FieldName = 'PPC_VLPARC'
      Origin = 'PAG_PC01.PPC_VLPARC'
    end
    object TQPagarQrPPC_VLPAGO: TFloatField
      FieldName = 'PPC_VLPAGO'
      Origin = 'PAG_PC01.PPC_VLPAGO'
    end
    object TQPagarQrPag_pc01CCT_CODIGO: TStringField
      FieldName = 'Pag_pc01.CCT_CODIGO'
      Origin = 'PAG_PC01.CCT_CODIGO'
      Size = 3
    end
    object TQPagarQrPag0000PAG_CODIGO: TStringField
      FieldName = 'Pag0000.PAG_CODIGO'
      Origin = 'PAG0000.PAG_CODIGO'
      Size = 5
    end
    object TQPagarQrPAG_DTEMIS: TDateTimeField
      FieldName = 'PAG_DTEMIS'
      Origin = 'PAG0000.PAG_DTEMIS'
    end
    object TQPagarQrPag0000CCT_CODIGO: TStringField
      FieldName = 'Pag0000.CCT_CODIGO'
      Origin = 'PAG0000.CCT_CODIGO'
      Size = 3
    end
    object TQPagarQrCct_0000CCT_CODIGO: TStringField
      FieldName = 'Cct_0000.CCT_CODIGO'
      Origin = 'CCT_0000.CCT_CODIGO'
      Size = 3
    end
    object TQPagarQrCCT_DESCRI: TStringField
      FieldName = 'CCT_DESCRI'
      Origin = 'CCT_0000.CCT_DESCRI'
      Size = 35
    end
    object TQPagarQrCEC_CODIGO: TStringField
      FieldName = 'CEC_CODIGO'
      Origin = 'CEC_0000.CEC_CODIGO'
      Size = 3
    end
    object TQPagarQrCEC_DESCRI: TStringField
      FieldName = 'CEC_DESCRI'
      Origin = 'CEC_0000.CEC_DESCRI'
      Size = 35
    end
    object TQPagarQrCCT_PROVISAO: TFloatField
      FieldName = 'CCT_PROVISAO'
      Origin = 'CCT_0000.CCT_PROVISAO'
    end
  end
  object DsQPagarQr: TDataSource
    DataSet = TQPagarQr
    Left = 129
    Top = 8
  end
  object QRTextFilter1: TQRTextFilter
    Left = 32
    Top = 16
  end
end
