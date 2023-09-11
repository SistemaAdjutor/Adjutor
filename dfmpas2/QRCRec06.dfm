object RelLiquidFatur: TRelLiquidFatur
  Left = 0
  Top = 0
  Width = 816
  Height = 1056
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
    Height = 53
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
      140.229166666666700000
      1957.916666666667000000)
    BandType = rbPageHeader
    object LabelEmpresa: TQRLabel
      Left = 3
      Top = 1
      Width = 383
      Height = 18
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        47.625000000000000000
        7.937500000000000000
        2.645833333333333000
        1013.354166666667000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'LabelEmpresa'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object LTitulo1: TQRLabel
      Left = 3
      Top = 19
      Width = 250
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333330000
        7.937500000000000000
        50.270833333333330000
        661.458333333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'PREVIS'#195'O DE LIQUIDEZ DO FATURAMENTO'
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
      Left = 3
      Top = 35
      Width = 363
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        7.937500000000000000
        92.604166666666670000
        960.437500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
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
    object QRSysData2: TQRSysData
      Left = 700
      Top = 0
      Width = 35
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        1852.083333333333000000
        0.000000000000000000
        92.604166666666670000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
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
      Left = 704
      Top = 35
      Width = 31
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        1862.666666666667000000
        92.604166666666670000
        82.020833333333330000)
      Alignment = taRightJustify
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
    object QRLabel12: TQRLabel
      Left = 676
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
        1788.583333333333000000
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
  end
  object QRBand3: TQRBand
    Left = 38
    Top = 127
    Width = 740
    Height = 18
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
      47.625000000000000000
      1957.916666666667000000)
    BandType = rbDetail
    object QRDBText1: TQRDBText
      Left = 18
      Top = 2
      Width = 42
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        47.625000000000000000
        5.291666666666667000
        111.125000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TQReceber
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
    object QRDBText2: TQRDBText
      Left = 375
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
        992.187500000000000000
        5.291666666666667000
        150.812500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TQReceber
      DataField = 'FPC_DTEMIS'
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
      Left = 144
      Top = 2
      Width = 226
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        381.000000000000000000
        5.291666666666667000
        597.958333333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TQReceber
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
      Left = 670
      Top = 2
      Width = 68
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        1772.708333333333000000
        5.291666666666667000
        179.916666666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TQReceber
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
    object QRExpr1: TQRExpr
      Left = 436
      Top = 2
      Width = 85
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        1153.583333333333000000
        5.291666666666667000
        224.895833333333300000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      ResetAfterPrint = True
      Transparent = False
      WordWrap = True
      Expression = 'IF(TQReceber.FPC_STATUS = '#39'Cancelada'#39',0,TQReceber.FPC_VLPARC)'
      Mask = '#0,.00'
      FontSize = 8
    end
    object QRExpr4: TQRExpr
      Left = 549
      Top = 2
      Width = 85
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        1452.562500000000000000
        5.291666666666667000
        224.895833333333300000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      ResetAfterPrint = False
      Transparent = False
      WordWrap = True
      Expression = 'IF(TQReceber.FPC_STATUS = '#39'Cancelada'#39',0,TQReceber.FPC_VLPAGO)'
      Mask = '#0,.00'
      FontSize = 8
    end
    object QRExpr16: TQRExpr
      Left = 54
      Top = 2
      Width = 10
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        142.875000000000000000
        5.291666666666667000
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
      Expression = 'IF(TqReceber.FPC_NUMER = '#39#39','#39' '#39','#39'/'#39')'
      Mask = '#0,.00'
      FontSize = 8
    end
    object QRDBText4: TQRDBText
      Left = 59
      Top = 2
      Width = 19
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        156.104166666666700000
        5.291666666666667000
        50.270833333333330000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TQReceber
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
    object QRDBText5: TQRDBText
      Left = 84
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
        222.250000000000000000
        5.291666666666667000
        150.812500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TQReceber
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
  end
  object QRGroup1: TQRGroup
    Left = 38
    Top = 91
    Width = 740
    Height = 36
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
      95.250000000000000000
      1957.916666666667000000)
    Expression = 'COPY(TQReceber.FPC_VENCTO,4,2)+COPY(TQReceber.FPC_VENCTO,7,4)'
    FooterBand = QRBand5
    Master = Owner
    ReprintOnNewPage = False
    object QRExpr5: TQRExpr
      Left = 3
      Top = 2
      Width = 103
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
        272.520833333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Color = clWhite
      ParentFont = False
      ResetAfterPrint = False
      Transparent = False
      WordWrap = True
      Expression = 
        'IF(COPY(TQReceber.FPC_VENCTO,4,2) = '#39'01'#39','#39'Janeiro'#39',IF(COPY(TQRec' +
        'eber.FPC_VENCTO,4,2) = '#39'02'#39','#39'Fevereiro'#39',IF(COPY(TQReceber.FPC_VE' +
        'NCTO,4,2) = '#39'03'#39','#39'Mar'#231'o'#39',IF(COPY(TQReceber.FPC_VENCTO,4,2) = '#39'04' +
        #39','#39'Abril'#39',IF(COPY(TQReceber.FPC_VENCTO,4,2) = '#39'05'#39','#39'Maio'#39',IF(COP' +
        'Y(TQReceber.FPC_VENCTO,4,2) = '#39'06'#39','#39'Junho'#39',IF(COPY(TQReceber.FPC' +
        '_VENCTO,4,2) = '#39'07'#39','#39'Julho'#39',IF(COPY(TQReceber.FPC_VENCTO,4,2) = ' +
        #39'08'#39','#39'Agosto'#39',IF(COPY(TQReceber.FPC_VENCTO,4,2) = '#39'09'#39','#39'Setembro' +
        #39',IF(COPY(TQReceber.FPC_VENCTO,4,2) = '#39'10'#39','#39'Outubro'#39',IF(COPY(TQR' +
        'eceber.FPC_VENCTO,4,2) = '#39'11'#39','#39'Novembro'#39',IF(COPY(TQReceber.FPC_V' +
        'ENCTO,4,2) = '#39'12'#39','#39'Dezembro'#39','#39' '#39')))))))))))) + '#39' de '#39'+COPY(TQRec' +
        'eber.FPC_VENCTO,7,4)'
      FontSize = 8
    end
    object QRLabel2: TQRLabel
      Left = 85
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
        224.895833333333300000
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
    object QRLabel7: TQRLabel
      Left = 18
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
        47.625000000000000000
        47.625000000000000000
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
    object QRLabel10: TQRLabel
      Left = 436
      Top = 18
      Width = 85
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        1153.583333333333000000
        47.625000000000000000
        224.895833333333300000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'VL. T'#205'TULO'
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
      Left = 144
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
        381.000000000000000000
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
    object QRLabel15: TQRLabel
      Left = 549
      Top = 18
      Width = 85
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        1452.562500000000000000
        47.625000000000000000
        224.895833333333300000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'VL. RECEBIDO'
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
    object QRLabel16: TQRLabel
      Left = 670
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
        1772.708333333333000000
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
    object QRLabel17: TQRLabel
      Left = 375
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
        992.187500000000000000
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
    object QRShape2: TQRShape
      Left = 18
      Top = 33
      Width = 720
      Height = 1
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        2.645833333333333000
        47.625000000000000000
        87.312500000000000000
        1905.000000000000000000)
      Shape = qrsRectangle
    end
  end
  object QRBand5: TQRBand
    Left = 38
    Top = 145
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
    BandType = rbGroupFooter
    object QRLabel8: TQRLabel
      Left = 200
      Top = 3
      Width = 91
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        529.166666666666700000
        7.937500000000000000
        240.770833333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'TOTAL MENSAL:'
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
      Left = 436
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
        1153.583333333333000000
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
      Expression = 
        'SUM(IF(TQReceber.FPC_STATUS = '#39'Cancelada'#39',0,TQReceber.FPC_VLPARC' +
        '))'
      Mask = '#0.,00'
      FontSize = 8
    end
    object QRExpr9: TQRExpr
      Left = 549
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
        1452.562500000000000000
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
      Expression = 
        'SUM(IF(TQReceber.FPC_STATUS = '#39'Cancelada'#39',0,TQReceber.FPC_VLPAGO' +
        '))'
      Mask = '#0.,00'
      FontSize = 8
    end
    object QRShape1: TQRShape
      Left = 200
      Top = 2
      Width = 435
      Height = 1
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        2.645833333333333000
        529.166666666666700000
        5.291666666666667000
        1150.937500000000000000)
      Shape = qrsRectangle
    end
  end
  object QRBand4: TQRBand
    Left = 38
    Top = 167
    Width = 740
    Height = 22
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
      58.208333333333330000
      1957.916666666667000000)
    BandType = rbSummary
    object QRLabel13: TQRLabel
      Left = 3
      Top = 2
      Width = 82
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        7.937500000000000000
        5.291666666666667000
        216.958333333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'TOTAL GERAL:'
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
    object QRExpr2: TQRExpr
      Left = 436
      Top = 2
      Width = 85
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1153.583333333333000000
        5.291666666666667000
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
        'SUM(IF(TQReceber.FPC_STATUS = '#39'Cancelada'#39',0,TQReceber.FPC_VLPARC' +
        '))'
      Mask = '#0.,00'
      FontSize = 8
    end
    object QRExpr3: TQRExpr
      Left = 549
      Top = 2
      Width = 85
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        1452.562500000000000000
        5.291666666666667000
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
        'SUM(IF(TQReceber.FPC_STATUS = '#39'Cancelada'#39',0,TQReceber.FPC_VLPAGO' +
        '))'
      Mask = '#0.,00'
      FontSize = 8
    end
  end
  object TQReceber: TQuery
    DatabaseName = 'RwDbAdm'
    SQL.Strings = (
      
        'SELECT Fat_pc01.FAT_CODIGO, Fat_pc01.REP_CODIGO, Fat_pc01.FPC_DT' +
        'EMIS,'
      'Fat_pc01.FPC_NUMER, Fat_pc01.CCT_CODIGO, Fat_pc01.PCX_CODIGO, '
      'Fat_pc01.BAN_CODIGO, Fat_pc01.FPC_COBNUM, Fat_pc01.FPC_COBTIPO, '
      'Fat_pc01.FPC_STATUS, Fat_pc01.FPC_DESCTO, Fat_pc01.FPC_DTDESC, '
      'Fat_pc01.FPC_VENCTO, Fat_pc01.FPC_PAGTO, Fat_pc01.FPC_VLPARC,'
      'Fat_pc01.FPC_VLPAGO, Fat_pc01.FPC_OBS, Fat_pc01.FPC_SITPAG, '
      'Fat_pc01.EMP_CODIGO, Fat_pc01.CLI_CODIGO, '
      'Fat_pc01.FPC_IMPDUP, Cli0000.CLI_CODIGO, Cli0000.CLI_RAZAO'
      'FROM FAT_PC01 Fat_pc01'
      '   LEFT OUTER JOIN CLI0000 Cli0000'
      '   ON  (Fat_pc01.CLI_CODIGO = Cli0000.CLI_CODIGO)  '
      'ORDER BY Fat_pc01.FPC_DTEMIS')
    Left = 380
    Top = 3
    object TQReceberFAT_CODIGO: TStringField
      FieldName = 'FAT_CODIGO'
      Origin = 'FAT_PC01.FAT_CODIGO'
      Size = 6
    end
    object TQReceberFPC_DTEMIS: TDateTimeField
      FieldName = 'FPC_DTEMIS'
      Origin = 'FAT_PC01.FPC_DTEMIS'
    end
    object TQReceberFPC_NUMER: TStringField
      FieldName = 'FPC_NUMER'
      Origin = 'FAT_PC01.FPC_NUMER'
      Size = 2
    end
    object TQReceberCCT_CODIGO: TStringField
      FieldName = 'CCT_CODIGO'
      Origin = 'FAT_PC01.CCT_CODIGO'
      Size = 3
    end
    object TQReceberPCX_CODIGO: TStringField
      FieldName = 'PCX_CODIGO'
      Origin = 'FAT_PC01.PCX_CODIGO'
      Size = 3
    end
    object TQReceberBAN_CODIGO: TStringField
      FieldName = 'BAN_CODIGO'
      Origin = 'FAT_PC01.BAN_CODIGO'
      Size = 4
    end
    object TQReceberFPC_COBNUM: TStringField
      FieldName = 'FPC_COBNUM'
      Origin = 'FAT_PC01.FPC_COBNUM'
      Size = 13
    end
    object TQReceberFPC_COBTIPO: TStringField
      FieldName = 'FPC_COBTIPO'
      Origin = 'FAT_PC01.FPC_COBTIPO'
      Size = 2
    end
    object TQReceberFPC_STATUS: TStringField
      FieldName = 'FPC_STATUS'
      Origin = 'FAT_PC01.FPC_STATUS'
      Size = 12
    end
    object TQReceberFPC_DESCTO: TFloatField
      FieldName = 'FPC_DESCTO'
      Origin = 'FAT_PC01.FPC_DESCTO'
    end
    object TQReceberFPC_DTDESC: TDateTimeField
      FieldName = 'FPC_DTDESC'
      Origin = 'FAT_PC01.FPC_DTDESC'
    end
    object TQReceberFPC_VENCTO: TDateTimeField
      FieldName = 'FPC_VENCTO'
      Origin = 'FAT_PC01.FPC_VENCTO'
    end
    object TQReceberFPC_PAGTO: TDateTimeField
      FieldName = 'FPC_PAGTO'
      Origin = 'FAT_PC01.FPC_PAGTO'
    end
    object TQReceberFPC_VLPARC: TFloatField
      FieldName = 'FPC_VLPARC'
      Origin = 'FAT_PC01.FPC_VLPARC'
    end
    object TQReceberFPC_VLPAGO: TFloatField
      FieldName = 'FPC_VLPAGO'
      Origin = 'FAT_PC01.FPC_VLPAGO'
    end
    object TQReceberFPC_OBS: TStringField
      FieldName = 'FPC_OBS'
      Origin = 'FAT_PC01.FPC_OBS'
      Size = 50
    end
    object TQReceberFPC_SITPAG: TBooleanField
      FieldName = 'FPC_SITPAG'
      Origin = 'FAT_PC01.FPC_SITPAG'
    end
    object TQReceberFat_pc01CLI_CODIGO: TStringField
      FieldName = 'Fat_pc01.CLI_CODIGO'
      Origin = 'FAT_PC01.CLI_CODIGO'
      Size = 5
    end
    object TQReceberFPC_IMPDUP: TStringField
      FieldName = 'FPC_IMPDUP'
      Origin = 'FAT_PC01.FPC_IMPDUP'
      Size = 1
    end
    object TQReceberCli0000CLI_CODIGO: TStringField
      FieldName = 'Cli0000.CLI_CODIGO'
      Origin = 'CLI0000.CLI_CODIGO'
      Size = 5
    end
    object TQReceberCLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      Origin = 'CLI0000.CLI_RAZAO'
      Size = 45
    end
  end
  object QRTextFilter1: TQRTextFilter
    Left = 32
    Top = 16
  end
end
