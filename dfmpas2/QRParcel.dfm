object RelParcelas01: TRelParcelas01
  Left = 0
  Top = 0
  Width = 816
  Height = 1056
  Frame.Color = clBlack
  Frame.DrawTop = False
  Frame.DrawBottom = False
  Frame.DrawLeft = False
  Frame.DrawRight = False
  DataSet = DataModulo.TbParcelas
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
  ReportTitle = 'Relat'#243'rio Geral de Parcelas.'
  SnapToGrid = True
  Units = MM
  Zoom = 100
  object QRBand1: TQRBand
    Left = 38
    Top = 38
    Width = 740
    Height = 64
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
      169.333333333333300000
      1957.916666666667000000)
    BandType = rbPageHeader
    object LabelEmpresa: TQRLabel
      Left = 307
      Top = 10
      Width = 125
      Height = 23
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        60.854166666666670000
        812.270833333333300000
        26.458333333333330000
        330.729166666666700000)
      Alignment = taCenter
      AlignToBand = True
      AutoSize = True
      AutoStretch = False
      Caption = 'LabelEmpresa'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 14
    end
    object QRLabel1: TQRLabel
      Left = 237
      Top = 38
      Width = 266
      Height = 19
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        50.270833333333330000
        627.062500000000000000
        100.541666666666700000
        703.791666666666700000)
      Alignment = taCenter
      AlignToBand = True
      AutoSize = True
      AutoStretch = False
      Caption = 'RELAT'#211'RIO GERAL DE PARCELAS'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 12
    end
  end
  object QRBand2: TQRBand
    Left = 38
    Top = 102
    Width = 740
    Height = 40
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = True
    Frame.DrawLeft = False
    Frame.DrawRight = False
    AlignToBottom = False
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = []
    ForceNewColumn = False
    ForceNewPage = False
    ParentFont = False
    Size.Values = (
      105.833333333333300000
      1957.916666666667000000)
    BandType = rbColumnHeader
    object QRLabel2: TQRLabel
      Left = 5
      Top = 17
      Width = 38
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        13.229166666666670000
        44.979166666666670000
        100.541666666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'NOME'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRLabel6: TQRLabel
      Left = 251
      Top = 17
      Width = 81
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        664.104166666666700000
        44.979166666666670000
        214.312500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'N'#186' PARCELAS'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRLabel7: TQRLabel
      Left = 341
      Top = 0
      Width = 76
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        902.229166666666700000
        0.000000000000000000
        201.083333333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'DIAS ENTRE '
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRLabel8: TQRLabel
      Left = 433
      Top = 17
      Width = 65
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1145.645833333333000000
        44.979166666666670000
        171.979166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'CAR'#202'NCIA'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRLabel9: TQRLabel
      Left = 346
      Top = 18
      Width = 65
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333330000
        915.458333333333300000
        47.625000000000000000
        171.979166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'PARCELAS'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRLabel3: TQRLabel
      Left = 526
      Top = 17
      Width = 67
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1391.708333333333000000
        44.979166666666670000
        177.270833333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'DESCONTO'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRLabel4: TQRLabel
      Left = 618
      Top = 17
      Width = 47
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1635.125000000000000000
        44.979166666666670000
        124.354166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'MULTA'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRLabel5: TQRLabel
      Left = 693
      Top = 17
      Width = 39
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1833.562500000000000000
        44.979166666666670000
        103.187500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'JUROS'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
  end
  object QRBand3: TQRBand
    Left = 38
    Top = 142
    Width = 740
    Height = 22
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
      58.208333333333330000
      1957.916666666667000000)
    BandType = rbDetail
    object QRDBText1: TQRDBText
      Left = 4
      Top = 2
      Width = 231
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        10.583333333333330000
        5.291666666666667000
        611.187500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = DataModulo.TbParcelas
      DataField = 'PCL_NOME'
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRDBText5: TQRDBText
      Left = 239
      Top = 2
      Width = 92
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        632.354166666666700000
        5.291666666666667000
        243.416666666666700000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = DataModulo.TbParcelas
      DataField = 'PCL_NPARCELAS'
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRDBText6: TQRDBText
      Left = 345
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
        912.812500000000000000
        5.291666666666667000
        166.687500000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = DataModulo.TbParcelas
      DataField = 'PCL_DIASENTREP'
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRDBText7: TQRDBText
      Left = 430
      Top = 2
      Width = 68
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1137.708333333333000000
        5.291666666666667000
        179.916666666666700000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = DataModulo.TbParcelas
      DataField = 'PCL_CARENC_PRI'
      Mask = '#0.,00'
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRDBText2: TQRDBText
      Left = 522
      Top = 2
      Width = 71
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1381.125000000000000000
        5.291666666666667000
        187.854166666666700000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = DataModulo.TbParcelas
      DataField = 'PCL_DESCTO'
      Mask = '#0.,00'
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRDBText3: TQRDBText
      Left = 598
      Top = 2
      Width = 69
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1582.208333333333000000
        5.291666666666667000
        182.562500000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = DataModulo.TbParcelas
      DataField = 'PCL_MULTA'
      Mask = '#0.,00'
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRDBText4: TQRDBText
      Left = 672
      Top = 2
      Width = 60
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1778.000000000000000000
        5.291666666666667000
        158.750000000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = DataModulo.TbParcelas
      DataField = 'PCL_JUROS'
      Mask = '#0.,00'
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
  end
  object QRSysData1: TQRSysData
    Left = 39
    Top = 21
    Width = 31
    Height = 17
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    Size.Values = (
      44.979166666666670000
      103.187500000000000000
      55.562500000000000000
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
  object QRLabel10: TQRLabel
    Left = 698
    Top = 19
    Width = 34
    Height = 17
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    Size.Values = (
      44.979166666666670000
      1846.791666666667000000
      50.270833333333330000
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
    Left = 735
    Top = 19
    Width = 39
    Height = 17
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    Size.Values = (
      44.979166666666670000
      1944.687500000000000000
      50.270833333333330000
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
  object QRTextFilter1: TQRTextFilter
    Left = 32
    Top = 16
  end
end
