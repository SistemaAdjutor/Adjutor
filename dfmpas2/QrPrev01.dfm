object RelPrevConsumo: TRelPrevConsumo
  Left = 0
  Top = 0
  Width = 816
  Height = 1056
  Frame.Color = clBlack
  Frame.DrawTop = False
  Frame.DrawBottom = False
  Frame.DrawLeft = False
  Frame.DrawRight = False
  BeforePrint = RelPrevConsumoBeforePrint
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Arial'
  Font.Style = []
  Functions.Strings = (
    'PAGENUMBER'
    'COLUMNNUMBER'
    'REPORTTITLE'
    'STRBANDPROD'
    'QRSTRINGSBAND2'
    'STRBANDCONS')
  Functions.DATA = (
    '0'
    '0'
    #39#39
    #39#39
    #39#39
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
  object PageHeaderBand1: TQRBand
    Left = 38
    Top = 38
    Width = 740
    Height = 41
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = True
    Frame.DrawLeft = False
    Frame.DrawRight = False
    AlignToBottom = False
    BeforePrint = PageHeaderBand1BeforePrint
    Color = clWhite
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      108.479166666666700000
      1957.916666666667000000)
    BandType = rbPageHeader
    object LabelEmpresa: TQRLabel
      Left = 3
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
        7.937500000000000000
        2.645833333333333000
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
    object LTitulo1: TQRLabel
      Left = 3
      Top = 22
      Width = 225
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        7.937500000000000000
        58.208333333333330000
        595.312500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'PREVIS'#195'O DE CONSUMO DE MATERIAL'
      Color = clWhite
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
    object QRSysData1: TQRSysData
      Left = 701
      Top = 22
      Width = 35
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        1854.729166666667000000
        58.208333333333330000
        92.604166666666670000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = True
      Color = clWhite
      Data = qrsDate
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      FontSize = 9
    end
    object QRLabel13: TQRLabel
      Left = 675
      Top = 1
      Width = 39
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        1785.937500000000000000
        2.645833333333333000
        103.187500000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'P'#225'g N'#186
      Color = clWhite
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
    object QRSysData2: TQRSysData
      Left = 690
      Top = 1
      Width = 45
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        1825.625000000000000000
        2.645833333333333000
        119.062500000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = True
      Color = clWhite
      Data = qrsPageNumber
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      FontSize = 9
    end
  end
  object StrBandProd: TQRStringsBand
    Left = 38
    Top = 101
    Width = 740
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
      1957.916666666667000000)
    Master = Owner
    PrintBefore = True
    object QRExpr4: TQRExpr
      Left = 562
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
        1486.958333333333000000
        2.645833333333333000
        171.979166666666700000)
      Alignment = taCenter
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
      ResetAfterPrint = False
      Transparent = False
      WordWrap = False
      Expression = 'COPY(STRBANDPROD,1,8)'
      FontSize = 9
    end
    object QRExpr6: TQRExpr
      Left = 106
      Top = 1
      Width = 350
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        280.458333333333300000
        2.645833333333333000
        926.041666666666700000)
      Alignment = taLeftJustify
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
      ResetAfterPrint = False
      Transparent = False
      WordWrap = False
      Expression = 'COPY(STRBANDPROD,12,45)'
      FontSize = 9
    end
    object QRExpr7: TQRExpr
      Left = 459
      Top = 1
      Width = 100
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1214.437500000000000000
        2.645833333333333000
        264.583333333333300000)
      Alignment = taLeftJustify
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
      ResetAfterPrint = False
      Transparent = False
      WordWrap = False
      Expression = 'COPY(STRBANDPROD,57,12)'
      FontSize = 9
    end
    object QRExpr8: TQRExpr
      Left = 3
      Top = 1
      Width = 100
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        7.937500000000000000
        2.645833333333333000
        264.583333333333300000)
      Alignment = taLeftJustify
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
      ResetAfterPrint = False
      Transparent = False
      WordWrap = False
      Expression = 'COPY(STRBANDPROD,69,11)'
      FontSize = 9
    end
  end
  object QRBand1: TQRBand
    Left = 38
    Top = 168
    Width = 740
    Height = 21
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
      55.562500000000000000
      1957.916666666667000000)
    BandType = rbDetail
    object QRDBText13: TQRDBText
      Left = 81
      Top = 2
      Width = 240
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        214.312500000000000000
        5.291666666666667000
        635.000000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = FormPrevConsGrid.SqlCdsItensConsumo
      DataField = 'PRD_DESCRI'
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
    object QRDBText12: TQRDBText
      Left = 9
      Top = 2
      Width = 70
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        23.812500000000000000
        5.291666666666667000
        185.208333333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = FormPrevConsGrid.SqlCdsItensConsumo
      DataField = 'PRD_REFER'
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
    object QRDBText14: TQRDBText
      Left = 325
      Top = 2
      Width = 28
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        859.895833333333400000
        5.291666666666667000
        74.083333333333330000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = FormPrevConsGrid.SqlCdsItensConsumo
      DataField = 'PSI_UND'
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
    object QRDBText11: TQRDBText
      Left = 357
      Top = 2
      Width = 70
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        944.562500000000000000
        5.291666666666667000
        185.208333333333300000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = FormPrevConsGrid.SqlCdsItensConsumo
      DataField = 'PSI_ESTFISICO'
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
    object QRDBText10: TQRDBText
      Left = 430
      Top = 2
      Width = 70
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        1137.708333333333000000
        5.291666666666667000
        185.208333333333300000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = FormPrevConsGrid.SqlCdsItensConsumo
      DataField = 'PSI_ESTANTEC'
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
    object QRDBText9: TQRDBText
      Left = 526
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
        1391.708333333333000000
        5.291666666666667000
        171.979166666666700000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = FormPrevConsGrid.SqlCdsItensConsumo
      DataField = 'PSI_CONSUMO'
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
    object QRDBText1: TQRDBText
      Left = 666
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
        1762.125000000000000000
        5.291666666666667000
        171.979166666666700000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = FormPrevConsGrid.SqlCdsItensConsumo
      DataField = 'PSI_FALTA'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Mask = '#0.,000'
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRDBText8: TQRDBText
      Left = 595
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
        1574.270833333333000000
        5.291666666666667000
        171.979166666666700000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = FormPrevConsGrid.SqlCdsItensConsumo
      DataField = 'PSI_CUSTO'
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
    object QRShape1: TQRShape
      Left = 521
      Top = -2
      Width = 1
      Height = 23
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        60.854166666666680000
        1378.479166666667000000
        -5.291666666666667000
        2.645833333333333000)
      Shape = qrsRectangle
    end
  end
  object QRBand2: TQRBand
    Left = 38
    Top = 189
    Width = 740
    Height = 21
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
      55.562500000000000000
      1957.916666666667000000)
    BandType = rbSummary
    object QRLabel2: TQRLabel
      Left = 459
      Top = 2
      Width = 132
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1214.437500000000000000
        5.291666666666667000
        349.250000000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'Custo total de material :'
      Color = clWhite
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
    object LbCusto: TQRLabel
      Left = 594
      Top = 2
      Width = 65
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1571.625000000000000000
        5.291666666666667000
        171.979166666666700000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'LbCusto'
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
  object QRBand3: TQRBand
    Left = 38
    Top = 79
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
    BandType = rbTitle
    object QRLabel1: TQRLabel
      Left = 562
      Top = 2
      Width = 65
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1486.958333333333000000
        5.291666666666667000
        171.979166666666700000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'QUANT.'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRLabel3: TQRLabel
      Left = 106
      Top = 2
      Width = 300
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        280.458333333333300000
        5.291666666666667000
        793.750000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'DESCRI'#199#195'O'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRLabel4: TQRLabel
      Left = 458
      Top = 2
      Width = 100
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1211.791666666667000000
        5.291666666666667000
        264.583333333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'VARIA'#199#195'O'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRLabel5: TQRLabel
      Left = 3
      Top = 2
      Width = 100
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        7.937500000000000000
        5.291666666666667000
        264.583333333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'REFER'#202'NCIA'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
  end
  object StrBandCons: TQRStringsBand
    Left = 38
    Top = 123
    Width = 740
    Height = 45
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
      119.062500000000000000
      1957.916666666667000000)
    Master = Owner
    PrintBefore = True
    object QRExpr1: TQRExpr
      Left = 5
      Top = 0
      Width = 324
      Height = 19
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        50.270833333333330000
        13.229166666666670000
        0.000000000000000000
        857.250000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Color = clWhite
      ParentFont = False
      ResetAfterPrint = False
      Transparent = False
      WordWrap = False
      Expression = 'COPY(STRBANDCONS,1,18)'
      FontSize = 11
    end
    object QRExpr2: TQRExpr
      Left = 9
      Top = 24
      Width = 70
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        23.812500000000000000
        63.500000000000000000
        185.208333333333300000)
      Alignment = taLeftJustify
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
      ResetAfterPrint = False
      Transparent = False
      WordWrap = False
      Expression = 'COPY(STRBANDCONS,20,10)'
      FontSize = 9
    end
    object QRExpr3: TQRExpr
      Left = 81
      Top = 24
      Width = 240
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        214.312500000000000000
        63.500000000000000000
        635.000000000000000000)
      Alignment = taLeftJustify
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
      ResetAfterPrint = False
      Transparent = False
      WordWrap = False
      Expression = 'COPY(STRBANDCONS,31,9)'
      FontSize = 9
    end
    object QRExpr5: TQRExpr
      Left = 325
      Top = 24
      Width = 28
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        859.895833333333400000
        63.500000000000000000
        74.083333333333330000)
      Alignment = taLeftJustify
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
      ResetAfterPrint = False
      Transparent = False
      WordWrap = False
      Expression = 'COPY(STRBANDCONS,41,3)'
      FontSize = 9
    end
    object QRExpr9: TQRExpr
      Left = 356
      Top = 24
      Width = 70
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        941.916666666666700000
        63.500000000000000000
        185.208333333333300000)
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
      ResetAfterPrint = False
      Transparent = False
      WordWrap = False
      Expression = 'COPY(STRBANDCONS,45,8)'
      FontSize = 9
    end
    object QRExpr10: TQRExpr
      Left = 429
      Top = 24
      Width = 91
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        1135.062500000000000000
        63.500000000000000000
        240.770833333333300000)
      Alignment = taLeftJustify
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
      ResetAfterPrint = False
      Transparent = False
      WordWrap = False
      Expression = 'COPY(STRBANDCONS,54,12)'
      FontSize = 9
    end
    object QRExpr11: TQRExpr
      Left = 524
      Top = 24
      Width = 67
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        1386.416666666667000000
        63.500000000000000000
        177.270833333333300000)
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
      ResetAfterPrint = False
      Transparent = False
      WordWrap = False
      Expression = 'COPY(STRBANDCONS,68,7)'
      FontSize = 9
    end
    object QRExpr12: TQRExpr
      Left = 597
      Top = 24
      Width = 65
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        1579.562500000000000000
        63.500000000000000000
        171.979166666666700000)
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
      ResetAfterPrint = False
      Transparent = False
      WordWrap = False
      Expression = 'COPY(STRBANDCONS,76,8)'
      FontSize = 9
    end
    object QRExpr13: TQRExpr
      Left = 667
      Top = 24
      Width = 65
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        1764.770833333333000000
        63.500000000000000000
        171.979166666666700000)
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
      ResetAfterPrint = False
      Transparent = False
      WordWrap = False
      Expression = 'COPY(STRBANDCONS,85,5)'
      FontSize = 9
    end
    object QRShape2: TQRShape
      Left = 521
      Top = 22
      Width = 1
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        55.562500000000000000
        1378.479166666667000000
        58.208333333333340000
        2.645833333333333000)
      Shape = qrsRectangle
    end
  end
  object QRTextFilter1: TQRTextFilter
    Left = 32
    Top = 16
  end
end
