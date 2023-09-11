object RelCelDiario: TRelCelDiario
  Left = 0
  Top = 0
  Width = 816
  Height = 1056
  Frame.Color = clBlack
  Frame.DrawTop = False
  Frame.DrawBottom = False
  Frame.DrawLeft = False
  Frame.DrawRight = False
  DataSet = TQMovCelulas
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
    150.000000000000000000
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
    Left = 57
    Top = 57
    Width = 722
    Height = 55
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
      145.520833333333300000
      1910.291666666667000000)
    BandType = rbPageHeader
    object LabelEmpresa: TQRLabel
      Left = 3
      Top = 3
      Width = 84
      Height = 19
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        50.270833333333330000
        7.937500000000000000
        7.937500000000000000
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
    object QRLabel6: TQRLabel
      Left = 650
      Top = 3
      Width = 34
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333330000
        1719.791666666667000000
        7.937500000000000000
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
      Left = 666
      Top = 3
      Width = 39
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333330000
        1762.125000000000000000
        7.937500000000000000
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
      Left = 641
      Top = 37
      Width = 35
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333330000
        1695.979166666667000000
        97.895833333333330000
        92.604166666666670000)
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
    object QRLabel11: TQRLabel
      Left = 3
      Top = 21
      Width = 183
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        7.937500000000000000
        55.562500000000000000
        484.187500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Relat'#243'rio An'#225'litico de Produ'#231#227'o'
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
    object QRLabel12: TQRLabel
      Left = 3
      Top = 37
      Width = 59
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333330000
        7.937500000000000000
        97.895833333333330000
        156.104166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'PER'#205'ODO:'
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
    object QRLb_Intervalo: TQRLabel
      Left = 64
      Top = 37
      Width = 47
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333330000
        169.333333333333300000
        97.895833333333330000
        124.354166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'intervalo'
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
  end
  object QRBand2: TQRBand
    Left = 57
    Top = 112
    Width = 722
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
      1910.291666666667000000)
    BandType = rbColumnHeader
    object QRLabel1: TQRLabel
      Left = 8
      Top = 2
      Width = 21
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        21.166666666666670000
        5.291666666666667000
        55.562500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'O.P.'
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
      Left = 61
      Top = 2
      Width = 23
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        161.395833333333300000
        5.291666666666667000
        60.854166666666670000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'REF.'
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
    object QRLabel4: TQRLabel
      Left = 312
      Top = 2
      Width = 24
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        825.500000000000000000
        5.291666666666667000
        63.500000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Qtde'
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
    object QRLabel2: TQRLabel
      Left = 340
      Top = 2
      Width = 43
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        899.583333333333300000
        5.291666666666667000
        113.770833333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Tup Unit.'
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
    object QRLabel16: TQRLabel
      Left = 394
      Top = 2
      Width = 45
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1042.458333333333000000
        5.291666666666667000
        119.062500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Tup Total'
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
    object QRLabel5: TQRLabel
      Left = 491
      Top = 2
      Width = 48
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1299.104166666667000000
        5.291666666666667000
        127.000000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'D.Entrada'
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
    object QRLabel7: TQRLabel
      Left = 544
      Top = 2
      Width = 62
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1439.333333333333000000
        5.291666666666667000
        164.041666666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'D.Conclus'#227'o'
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
    object QRLabel8: TQRLabel
      Left = 449
      Top = 2
      Width = 33
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1187.979166666667000000
        5.291666666666667000
        87.312500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Pedido'
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
    object QRLabel9: TQRLabel
      Left = 610
      Top = 2
      Width = 53
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1613.958333333333000000
        5.291666666666667000
        140.229166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Pre'#231'o Unit.'
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
      Left = 666
      Top = 2
      Width = 55
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1762.125000000000000000
        5.291666666666667000
        145.520833333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Pre'#231'o Total'
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
    object QRLabel15: TQRLabel
      Left = 126
      Top = 2
      Width = 50
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        333.375000000000000000
        5.291666666666667000
        132.291666666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Descri'#231#227'o'
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
  object QRGroup1: TQRGroup
    Left = 57
    Top = 132
    Width = 722
    Height = 20
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
      52.916666666666660000
      1910.291666666667000000)
    Expression = 'TQMovCelulas.Cel_mov03.CEL_CODIGO'
    FooterBand = BanResumida
    Master = Owner
    ReprintOnNewPage = False
    object QRLabel13: TQRLabel
      Left = 3
      Top = 1
      Width = 55
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333330000
        7.937500000000000000
        2.645833333333333000
        145.520833333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'C'#201'LULA :'
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
    object QRDBText2: TQRDBText
      Left = 65
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
        171.979166666666700000
        2.645833333333333000
        79.375000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TQMovCelulas
      DataField = 'Cel_me02.CEL_CODIGO'
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
    object QRDBText5: TQRDBText
      Left = 98
      Top = 1
      Width = 241
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        259.291666666666700000
        2.645833333333333000
        637.645833333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TQMovCelulas
      DataField = 'CEL_NOME'
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
  object BanDetailhada: TQRBand
    Left = 57
    Top = 152
    Width = 722
    Height = 17
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    AlignToBottom = False
    Color = clWhite
    ForceNewColumn = False
    ForceNewPage = False
    LinkBand = QRGroup1
    Size.Values = (
      44.979166666666670000
      1910.291666666667000000)
    BandType = rbDetail
    object QRDBText3: TQRDBText
      Left = 4
      Top = 0
      Width = 45
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        10.583333333333330000
        0.000000000000000000
        119.062500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TQMovCelulas
      DataField = 'OSV_CODIGO'
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
      Left = 51
      Top = 0
      Width = 70
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        134.937500000000000000
        0.000000000000000000
        185.208333333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TQMovCelulas
      DataField = 'PRD_REFER'
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
      Left = 339
      Top = 1
      Width = 40
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        896.937500000000000000
        2.645833333333333000
        105.833333333333300000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TQMovCelulas
      DataField = 'CEM_TUPTRAB'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      Mask = '#0,.'
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRExpr2: TQRExpr
      Left = 381
      Top = 0
      Width = 60
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1008.062500000000000000
        0.000000000000000000
        158.750000000000000000)
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
      Expression = 'SUM(TQMovCelulas.OSV_QTDE * TQMovCelulas.CEM_TUPTRAB)'
      Mask = '#0,.'
      FontSize = 8
    end
    object QRDBText7: TQRDBText
      Left = 490
      Top = 0
      Width = 60
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1296.458333333333000000
        0.000000000000000000
        158.750000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TQMovCelulas
      DataField = 'OSV_EMISSAO'
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
      Left = 552
      Top = 0
      Width = 60
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1460.500000000000000000
        0.000000000000000000
        158.750000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TQMovCelulas
      DataField = 'CEM_DTCONCLUIU'
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
      Left = 297
      Top = 0
      Width = 40
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        785.812500000000000000
        0.000000000000000000
        105.833333333333300000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TQMovCelulas
      DataField = 'OSV_QTDE'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      Mask = '#0,.'
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRDBText1: TQRDBText
      Left = 443
      Top = 0
      Width = 45
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1172.104166666667000000
        0.000000000000000000
        119.062500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TQMovCelulas
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
    object QRDBText10: TQRDBText
      Left = 614
      Top = 0
      Width = 45
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1624.541666666667000000
        0.000000000000000000
        119.062500000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TQMovCelulas
      DataField = 'CEM_PRECOUNIT'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      Mask = '#,##0.00'
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRExpr4: TQRExpr
      Left = 660
      Top = 0
      Width = 60
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1746.250000000000000000
        0.000000000000000000
        158.750000000000000000)
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
      Expression = 'TQMovCelulas.OSV_QTDE * TQMovCelulas.CEM_PRECOUNIT'
      Mask = '#,##0.00'
      FontSize = 8
    end
    object QRDBText11: TQRDBText
      Left = 123
      Top = 0
      Width = 173
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        325.437500000000000000
        0.000000000000000000
        457.729166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TQProduto
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
  end
  object BanResumida: TQRBand
    Left = 57
    Top = 169
    Width = 722
    Height = 21
    Frame.Color = clBlack
    Frame.DrawTop = True
    Frame.DrawBottom = True
    Frame.DrawLeft = False
    Frame.DrawRight = False
    AlignToBottom = False
    Color = clWhite
    ForceNewColumn = False
    ForceNewPage = False
    LinkBand = BanDetailhada
    Size.Values = (
      55.562500000000000000
      1910.291666666667000000)
    BandType = rbGroupFooter
    object QRExpr1: TQRExpr
      Left = 292
      Top = 2
      Width = 45
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        772.583333333333300000
        5.291666666666667000
        119.062500000000000000)
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
      Expression = 'SUM(TQMovCelulas.OSV_QTDE)'
      Mask = '#0,.'
      FontSize = 8
    end
    object QRExpr3: TQRExpr
      Left = 381
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
        1008.062500000000000000
        5.291666666666667000
        158.750000000000000000)
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
      Expression = 'SUM(TQMovCelulas.OSV_QTDE * TQMovCelulas.CEM_TUPTRAB)'
      Mask = '#0,.'
      FontSize = 8
    end
    object QRExpr5: TQRExpr
      Left = 660
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
        1746.250000000000000000
        5.291666666666667000
        158.750000000000000000)
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
      Expression = 'SUM(TQMovCelulas.OSV_QTDE * TQMovCelulas.CEM_PRECOUNIT)'
      Mask = '#,##0.00'
      FontSize = 8
    end
  end
  object QRBand3: TQRBand
    Left = 57
    Top = 190
    Width = 722
    Height = 21
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
      55.562500000000000000
      1910.291666666667000000)
    BandType = rbSummary
    object QRExpr6: TQRExpr
      Left = 292
      Top = 2
      Width = 45
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        772.583333333333300000
        5.291666666666667000
        119.062500000000000000)
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
      Expression = 'SUM(TQMovCelulas.OSV_QTDE)'
      Mask = '#0,.'
      FontSize = 8
    end
    object QRExpr7: TQRExpr
      Left = 381
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
        1008.062500000000000000
        5.291666666666667000
        158.750000000000000000)
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
      Expression = 'SUM(TQMovCelulas.OSV_QTDE * TQMovCelulas.CEM_TUPTRAB)'
      Mask = '#0,.'
      FontSize = 8
    end
    object QRExpr8: TQRExpr
      Left = 660
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
        1746.250000000000000000
        5.291666666666667000
        158.750000000000000000)
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
      Expression = 'SUM(TQMovCelulas.OSV_QTDE * TQMovCelulas.CEM_PRECOUNIT)'
      Mask = '#,##0.00'
      FontSize = 8
    end
    object QRLabel14: TQRLabel
      Left = 3
      Top = 2
      Width = 86
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333330000
        7.937500000000000000
        5.291666666666667000
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
  end
  object TQMovCelulas: TQuery
    DatabaseName = 'RwDbAdm'
    SQL.Strings = (
      
        'SELECT Cel_mov03.OSV_CODIGO, Cel_mov03.CEL_CODIGO, Cel_mov03.PRD' +
        '_REFER, Cel_mov03.CME_CODIGO, Cel_mov03.OSV_EMISSAO, Cel_mov03.O' +
        'SV_QTDE, Cel_mov03.PED_CODIGO, Cel_mov03.CEM_DTENTROU, Cel_mov03' +
        '.CEM_DTCONCLUIU, Cel_mov03.CEM_PRECOUNIT, Cel_mov03.CEM_TUPUNIT,' +
        ' Cel_mov03.CEM_CELAUX, Cel_mov03.CEM_TRABALHO, Cel_mov03.CEM_TUP' +
        'TRAB, Cel_me02.CME_CODIGO, Cel_me02.CME_DIASUTEIS, Cel_me02.CME_' +
        'TUPMETAMES, Cel_me02.CME_TUPACRECENT, Cel_me02.CME_TUPNEGATIVO, ' +
        'Cel_me02.CEL_CODIGO, Cel_me02.CME_TUPREALIZADO, Cel_me02.CME_FAT' +
        'URAMENTO, Cel_me02.CME_PERCPATICIPA, Cel0000.CEL_CODIGO, Cel0000' +
        '.CEL_NOME, Cel_mov03.VCT_TUP, Cel_mov03.CEM_SITUACAO'
      'FROM CEL_MOV03 Cel_mov03, CEL_ME02 Cel_me02, CEL0000 Cel0000'
      'WHERE  (Cel_mov03.CME_CODIGO = Cel_me02.CME_CODIGO)  '
      '   AND  (Cel_me02.CEL_CODIGO = Cel0000.CEL_CODIGO)  '
      'ORDER BY Cel_mov03.CEL_CODIGO')
    Left = 149
    Top = 10
    object TQMovCelulasOSV_CODIGO: TStringField
      FieldName = 'OSV_CODIGO'
      Origin = 'CEL_MOV03.OSV_CODIGO'
      Size = 6
    end
    object TQMovCelulasCel_mov03CEL_CODIGO: TStringField
      FieldName = 'Cel_mov03.CEL_CODIGO'
      Origin = 'CEL_MOV03.CEL_CODIGO'
      Size = 3
    end
    object TQMovCelulasPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Origin = 'CEL_MOV03.PRD_REFER'
      Size = 11
    end
    object TQMovCelulasCel_mov03CME_CODIGO: TStringField
      FieldName = 'Cel_mov03.CME_CODIGO'
      Origin = 'CEL_MOV03.CME_CODIGO'
      Size = 9
    end
    object TQMovCelulasOSV_EMISSAO: TDateTimeField
      FieldName = 'OSV_EMISSAO'
      Origin = 'CEL_MOV03.OSV_EMISSAO'
    end
    object TQMovCelulasOSV_QTDE: TFloatField
      FieldName = 'OSV_QTDE'
      Origin = 'CEL_MOV03.OSV_QTDE'
    end
    object TQMovCelulasPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      Origin = 'CEL_MOV03.PED_CODIGO'
      Size = 6
    end
    object TQMovCelulasCEM_DTENTROU: TDateTimeField
      FieldName = 'CEM_DTENTROU'
      Origin = 'CEL_MOV03.CEM_DTENTROU'
    end
    object TQMovCelulasCEM_DTCONCLUIU: TDateTimeField
      FieldName = 'CEM_DTCONCLUIU'
      Origin = 'CEL_MOV03.CEM_DTCONCLUIU'
    end
    object TQMovCelulasCEM_PRECOUNIT: TFloatField
      FieldName = 'CEM_PRECOUNIT'
      Origin = 'CEL_MOV03.CEM_PRECOUNIT'
    end
    object TQMovCelulasCEM_TUPUNIT: TFloatField
      FieldName = 'CEM_TUPUNIT'
      Origin = 'CEL_MOV03.CEM_TUPUNIT'
    end
    object TQMovCelulasCEM_CELAUX: TBooleanField
      FieldName = 'CEM_CELAUX'
      Origin = 'CEL_MOV03.CEM_CELAUX'
    end
    object TQMovCelulasCEM_TRABALHO: TStringField
      FieldName = 'CEM_TRABALHO'
      Origin = 'CEL_MOV03.CEM_TRABALHO'
      Size = 30
    end
    object TQMovCelulasCEM_TUPTRAB: TFloatField
      FieldName = 'CEM_TUPTRAB'
      Origin = 'CEL_MOV03.CEM_TUPTRAB'
    end
    object TQMovCelulasCel_me02CME_CODIGO: TStringField
      FieldName = 'Cel_me02.CME_CODIGO'
      Origin = 'CEL_ME02.CME_CODIGO'
      Size = 9
    end
    object TQMovCelulasCME_DIASUTEIS: TFloatField
      FieldName = 'CME_DIASUTEIS'
      Origin = 'CEL_ME02.CME_DIASUTEIS'
    end
    object TQMovCelulasCME_TUPMETAMES: TFloatField
      FieldName = 'CME_TUPMETAMES'
      Origin = 'CEL_ME02.CME_TUPMETAMES'
    end
    object TQMovCelulasCME_TUPACRECENT: TFloatField
      FieldName = 'CME_TUPACRECENT'
      Origin = 'CEL_ME02.CME_TUPACRECENT'
    end
    object TQMovCelulasCME_TUPNEGATIVO: TFloatField
      FieldName = 'CME_TUPNEGATIVO'
      Origin = 'CEL_ME02.CME_TUPNEGATIVO'
    end
    object TQMovCelulasCel_me02CEL_CODIGO: TStringField
      FieldName = 'Cel_me02.CEL_CODIGO'
      Origin = 'CEL_ME02.CEL_CODIGO'
      Size = 3
    end
    object TQMovCelulasCME_TUPREALIZADO: TFloatField
      FieldName = 'CME_TUPREALIZADO'
      Origin = 'CEL_ME02.CME_TUPREALIZADO'
    end
    object TQMovCelulasCME_FATURAMENTO: TFloatField
      FieldName = 'CME_FATURAMENTO'
      Origin = 'CEL_ME02.CME_FATURAMENTO'
    end
    object TQMovCelulasCME_PERCPATICIPA: TFloatField
      FieldName = 'CME_PERCPATICIPA'
      Origin = 'CEL_ME02.CME_PERCPATICIPA'
    end
    object TQMovCelulasCel0000CEL_CODIGO: TStringField
      FieldName = 'Cel0000.CEL_CODIGO'
      Origin = 'CEL0000.CEL_CODIGO'
      Size = 3
    end
    object TQMovCelulasCEL_NOME: TStringField
      FieldName = 'CEL_NOME'
      Origin = 'CEL0000.CEL_NOME'
      Size = 35
    end
    object TQMovCelulasVCT_TUP: TFloatField
      FieldName = 'VCT_TUP'
      Origin = 'CEL_MOV03.VCT_TUP'
    end
    object TQMovCelulasCEM_SITUACAO: TStringField
      FieldName = 'CEM_SITUACAO'
      Origin = 'CEL_MOV03.CEM_SITUACAO'
      Size = 1
    end
  end
  object TQProduto: TQuery
    DatabaseName = 'RwDbAdm'
    SQL.Strings = (
      'SELECT PRD_DESCRI, PRD_REFER'
      'FROM PRD0000 Prd0000')
    Left = 212
    Top = 10
    object TQProdutoPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Origin = 'PRD0000.PRD_DESCRI'
      Size = 40
    end
    object TQProdutoPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Origin = 'PRD0000.PRD_REFER'
      Size = 11
    end
  end
  object DsQMovCelulas: TDataSource
    DataSet = TQMovCelulas
    Left = 180
    Top = 10
  end
  object QRTextFilter1: TQRTextFilter
    Left = 80
    Top = 16
  end
end
