object RelProduto05: TRelProduto05
  Left = 0
  Top = 0
  Width = 1056
  Height = 816
  Frame.Color = clBlack
  Frame.DrawTop = False
  Frame.DrawBottom = False
  Frame.DrawLeft = False
  Frame.DrawRight = False
  DataSet = FormGImpProduto.TQProdutoQR
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
    150.000000000000000000
    2159.000000000000000000
    150.000000000000000000
    2794.000000000000000000
    220.000000000000000000
    150.000000000000000000
    0.000000000000000000)
  PrinterSettings.Copies = 1
  PrinterSettings.Duplex = False
  PrinterSettings.FirstPage = 2
  PrinterSettings.LastPage = 2
  PrinterSettings.OutputBin = Auto
  PrintIfEmpty = True
  SnapToGrid = True
  Units = MM
  Zoom = 100
  object QRBand1: TQRBand
    Left = 83
    Top = 57
    Width = 916
    Height = 57
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
      150.812500000000000000
      2423.583333333333000000)
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
      Width = 360
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
        952.500000000000000000)
      Alignment = taLeftJustify
      AlignToBand = True
      AutoSize = True
      AutoStretch = False
      Caption = 'RELAT'#211'RIO DE DESCRI'#199#195'O DAS VARIA'#199#213'ES DOS PRODUTOS'
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
      Left = 853
      Top = 38
      Width = 49
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333330000
        2256.895833333333000000
        100.541666666666700000
        129.645833333333300000)
      Alignment = taLeftJustify
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
    object QRLabel1: TQRLabel
      Left = 849
      Top = 1
      Width = 39
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333330000
        2246.312500000000000000
        2.645833333333333000
        103.187500000000000000)
      Alignment = taLeftJustify
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
      Left = 891
      Top = 1
      Width = 15
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333330000
        2357.437500000000000000
        2.645833333333333000
        39.687500000000000000)
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
    object QRLabel12: TQRLabel
      Left = 2
      Top = 38
      Width = 37
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        5.291666666666667000
        100.541666666666700000
        97.895833333333340000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Grupo :'
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
    object Lb_Tipo: TQRLabel
      Left = 42
      Top = 38
      Width = 39
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        111.125000000000000000
        100.541666666666700000
        103.187500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Lb_Tipo'
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
      Left = 193
      Top = 38
      Width = 65
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        510.645833333333300000
        100.541666666666700000
        171.979166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'SUB-GRUPO:'
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
    object Lb_Grupo: TQRLabel
      Left = 260
      Top = 38
      Width = 49
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        687.916666666666700000
        100.541666666666700000
        129.645833333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Lb_Grupo'
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
    Left = 83
    Top = 114
    Width = 916
    Height = 19
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = True
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
      2423.583333333333000000)
    BandType = rbColumnHeader
    object QRLabel3: TQRLabel
      Left = 3
      Top = 2
      Width = 20
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
        52.916666666666670000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'REF.'
      Color = clWhite
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
    object QRLabel4: TQRLabel
      Left = 72
      Top = 2
      Width = 53
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        190.500000000000000000
        5.291666666666667000
        140.229166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'DESCRI'#199#195'O'
      Color = clWhite
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
    object QRLabel5: TQRLabel
      Left = 497
      Top = 2
      Width = 56
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        1314.979166666667000000
        5.291666666666667000
        148.166666666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'VARIA'#199#195'O 3'
      Color = clWhite
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
    object QRLabel2: TQRLabel
      Left = 567
      Top = 2
      Width = 56
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        1500.187500000000000000
        5.291666666666667000
        148.166666666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'VARIA'#199#195'O 4'
      Color = clWhite
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
    object QRLabel6: TQRLabel
      Left = 637
      Top = 2
      Width = 56
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        1685.395833333333000000
        5.291666666666667000
        148.166666666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'VARIA'#199#195'O 5'
      Color = clWhite
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
    object QRLabel7: TQRLabel
      Left = 707
      Top = 2
      Width = 56
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        1870.604166666667000000
        5.291666666666667000
        148.166666666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'VARIA'#199#195'O 6'
      Color = clWhite
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
    object QRLabel8: TQRLabel
      Left = 777
      Top = 2
      Width = 56
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        2055.812500000000000000
        5.291666666666667000
        148.166666666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'VARIA'#199#195'O 7'
      Color = clWhite
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
    object QRLabel9: TQRLabel
      Left = 847
      Top = 2
      Width = 56
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        2241.020833333333000000
        5.291666666666667000
        148.166666666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'VARIA'#199#195'O 8'
      Color = clWhite
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
    object QRLabel10: TQRLabel
      Left = 357
      Top = 2
      Width = 56
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
        148.166666666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'VARIA'#199#195'O 1'
      Color = clWhite
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
    object QRLabel11: TQRLabel
      Left = 427
      Top = 2
      Width = 56
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        1129.770833333333000000
        5.291666666666667000
        148.166666666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'VARIA'#199#195'O 2'
      Color = clWhite
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
    object QRShape10: TQRShape
      Left = 352
      Top = 1
      Width = 1
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333330000
        931.333333333333300000
        2.645833333333333000
        2.645833333333333000)
      Shape = qrsRectangle
    end
    object QRShape11: TQRShape
      Left = 422
      Top = 1
      Width = 1
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333330000
        1116.541666666667000000
        2.645833333333333000
        2.645833333333333000)
      Shape = qrsRectangle
    end
    object QRShape12: TQRShape
      Left = 493
      Top = 1
      Width = 1
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333330000
        1304.395833333333000000
        2.645833333333333000
        2.645833333333333000)
      Shape = qrsRectangle
    end
    object QRShape13: TQRShape
      Left = 562
      Top = 1
      Width = 1
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333330000
        1486.958333333333000000
        2.645833333333333000
        2.645833333333333000)
      Shape = qrsRectangle
    end
    object QRShape14: TQRShape
      Left = 632
      Top = 1
      Width = 1
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333330000
        1672.166666666667000000
        2.645833333333333000
        2.645833333333333000)
      Shape = qrsRectangle
    end
    object QRShape15: TQRShape
      Left = 702
      Top = 1
      Width = 1
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333330000
        1857.375000000000000000
        2.645833333333333000
        2.645833333333333000)
      Shape = qrsRectangle
    end
    object QRShape16: TQRShape
      Left = 772
      Top = 1
      Width = 1
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333330000
        2042.583333333333000000
        2.645833333333333000
        2.645833333333333000)
      Shape = qrsRectangle
    end
    object QRShape17: TQRShape
      Left = 842
      Top = 1
      Width = 1
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333330000
        2227.791666666667000000
        2.645833333333333000
        2.645833333333333000)
      Shape = qrsRectangle
    end
    object QRShape18: TQRShape
      Left = 912
      Top = 1
      Width = 1
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333330000
        2413.000000000000000000
        2.645833333333333000
        2.645833333333333000)
      Shape = qrsRectangle
    end
  end
  object QRBand3: TQRBand
    Left = 83
    Top = 133
    Width = 916
    Height = 17
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = True
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
      2423.583333333333000000)
    BandType = rbDetail
    object QRDBText1: TQRDBText
      Left = 4
      Top = 2
      Width = 64
      Height = 13
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        34.395833333333330000
        10.583333333333330000
        5.291666666666667000
        169.333333333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = FormGImpProduto.TQProdutoQR
      DataField = 'PRD_REFER'
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
    object QRDBText2: TQRDBText
      Left = 71
      Top = 2
      Width = 278
      Height = 13
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        34.395833333333330000
        187.854166666666700000
        5.291666666666667000
        735.541666666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = FormGImpProduto.TQProdutoQR
      DataField = 'PRD_DESCRI'
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
    object QRDBText4: TQRDBText
      Left = 357
      Top = 2
      Width = 62
      Height = 13
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        34.395833333333330000
        944.562500000000000000
        5.291666666666667000
        164.041666666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = FormGImpProduto.TQProdutoQR
      DataField = 'PRD_DCVAR1'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 6
    end
    object QRDBText3: TQRDBText
      Left = 427
      Top = 2
      Width = 62
      Height = 13
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        34.395833333333330000
        1129.770833333333000000
        5.291666666666667000
        164.041666666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = FormGImpProduto.TQProdutoQR
      DataField = 'PRD_DCVAR2'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 6
    end
    object QRDBText5: TQRDBText
      Left = 497
      Top = 2
      Width = 62
      Height = 13
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        34.395833333333330000
        1314.979166666667000000
        5.291666666666667000
        164.041666666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = FormGImpProduto.TQProdutoQR
      DataField = 'PRD_DCVAR3'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 6
    end
    object QRDBText6: TQRDBText
      Left = 567
      Top = 2
      Width = 62
      Height = 13
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        34.395833333333330000
        1500.187500000000000000
        5.291666666666667000
        164.041666666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = FormGImpProduto.TQProdutoQR
      DataField = 'PRD_DCVAR4'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 6
    end
    object QRDBText7: TQRDBText
      Left = 637
      Top = 2
      Width = 62
      Height = 13
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        34.395833333333330000
        1685.395833333333000000
        5.291666666666667000
        164.041666666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = FormGImpProduto.TQProdutoQR
      DataField = 'PRD_DCVAR5'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 6
    end
    object QRDBText8: TQRDBText
      Left = 707
      Top = 2
      Width = 62
      Height = 13
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        34.395833333333330000
        1870.604166666667000000
        5.291666666666667000
        164.041666666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = FormGImpProduto.TQProdutoQR
      DataField = 'PRD_DCVAR6'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 6
    end
    object QRDBText9: TQRDBText
      Left = 777
      Top = 2
      Width = 62
      Height = 13
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        34.395833333333330000
        2055.812500000000000000
        5.291666666666667000
        164.041666666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = FormGImpProduto.TQProdutoQR
      DataField = 'PRD_DCVAR7'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 6
    end
    object QRDBText10: TQRDBText
      Left = 847
      Top = 2
      Width = 62
      Height = 13
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        34.395833333333330000
        2241.020833333333000000
        5.291666666666667000
        164.041666666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = FormGImpProduto.TQProdutoQR
      DataField = 'PRD_DCVAR8'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 6
    end
    object QRShape1: TQRShape
      Left = 352
      Top = 2
      Width = 1
      Height = 13
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        34.395833333333330000
        931.333333333333300000
        5.291666666666667000
        2.645833333333333000)
      Shape = qrsRectangle
    end
    object QRShape2: TQRShape
      Left = 422
      Top = 2
      Width = 1
      Height = 13
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        34.395833333333330000
        1116.541666666667000000
        5.291666666666667000
        2.645833333333333000)
      Shape = qrsRectangle
    end
    object QRShape3: TQRShape
      Left = 493
      Top = 2
      Width = 1
      Height = 13
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        34.395833333333330000
        1304.395833333333000000
        5.291666666666667000
        2.645833333333333000)
      Shape = qrsRectangle
    end
    object QRShape4: TQRShape
      Left = 562
      Top = 2
      Width = 1
      Height = 13
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        34.395833333333330000
        1486.958333333333000000
        5.291666666666667000
        2.645833333333333000)
      Shape = qrsRectangle
    end
    object QRShape5: TQRShape
      Left = 632
      Top = 2
      Width = 1
      Height = 13
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        34.395833333333330000
        1672.166666666667000000
        5.291666666666667000
        2.645833333333333000)
      Shape = qrsRectangle
    end
    object QRShape6: TQRShape
      Left = 702
      Top = 2
      Width = 1
      Height = 13
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        34.395833333333330000
        1857.375000000000000000
        5.291666666666667000
        2.645833333333333000)
      Shape = qrsRectangle
    end
    object QRShape7: TQRShape
      Left = 772
      Top = 2
      Width = 1
      Height = 13
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        34.395833333333330000
        2042.583333333333000000
        5.291666666666667000
        2.645833333333333000)
      Shape = qrsRectangle
    end
    object QRShape8: TQRShape
      Left = 842
      Top = 2
      Width = 1
      Height = 13
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        34.395833333333330000
        2227.791666666667000000
        5.291666666666667000
        2.645833333333333000)
      Shape = qrsRectangle
    end
    object QRShape9: TQRShape
      Left = 912
      Top = 2
      Width = 1
      Height = 13
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        34.395833333333330000
        2413.000000000000000000
        5.291666666666667000
        2.645833333333333000)
      Shape = qrsRectangle
    end
  end
  object QRTextFilter1: TQRTextFilter
    Left = 32
    Top = 16
  end
end
