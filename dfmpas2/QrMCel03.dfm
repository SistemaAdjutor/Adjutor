object RelComissCel: TRelComissCel
  Left = -37
  Top = 0
  Width = 816
  Height = 1056
  Frame.Color = clBlack
  Frame.DrawTop = False
  Frame.DrawBottom = False
  Frame.DrawLeft = False
  Frame.DrawRight = False
  DataSet = TqComiss
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
  PrinterSettings.OutputBin = Auto
  PrintIfEmpty = True
  SnapToGrid = True
  Units = MM
  Zoom = 100
  object QRBand1: TQRBand
    Left = 38
    Top = 57
    Width = 740
    Height = 56
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
      148.166666666666700000
      1957.916666666667000000)
    BandType = rbPageHeader
    object LabelEmpresa: TQRLabel
      Left = 3
      Top = 3
      Width = 92
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
        243.416666666666700000)
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
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRLabel6: TQRLabel
      Left = 679
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
        1796.520833333333000000
        7.937500000000000000
        89.958333333333330000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
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
    object QRSysData1: TQRSysData
      Left = 671
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
        1775.354166666667000000
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
      Width = 252
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
        666.750000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Relat'#243'rio Mensal de Comiss'#227'o Participativa'
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
      Width = 29
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
        76.729166666666670000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'M'#202'S:'
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
      Left = 38
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
        100.541666666666700000
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
    object QRSysData2: TQRSysData
      Left = 715
      Top = 3
      Width = 19
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333330000
        1891.770833333333000000
        7.937500000000000000
        50.270833333333330000)
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
  end
  object QRGroup1: TQRGroup
    Left = 38
    Top = 113
    Width = 740
    Height = 64
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
      169.333333333333300000
      1957.916666666667000000)
    Expression = 'TqComiss.Cel_tmp05.CEL_CODIGO'
    FooterBand = BanResumida
    Master = Owner
    ReprintOnNewPage = False
    object QRDBText4: TQRDBText
      Left = 27
      Top = 3
      Width = 115
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        71.437500000000000000
        7.937500000000000000
        304.270833333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TqComiss
      DataField = 'CEL_NOME'
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
    object QRDBText11: TQRDBText
      Left = 3
      Top = 3
      Width = 23
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        7.937500000000000000
        7.937500000000000000
        60.854166666666670000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataField = 'Cel_tmp05.CEL_CODIGO'
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
    object QRLabel2: TQRLabel
      Left = 30
      Top = 44
      Width = 80
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333330000
        79.375000000000000000
        116.416666666666700000
        211.666666666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'INTEGRANTES'
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
    object QRLabel1: TQRLabel
      Left = 145
      Top = 3
      Width = 90
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333330000
        383.645833333333300000
        7.937500000000000000
        238.125000000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      BiDiMode = bdRightToLeft
      ParentBiDiMode = False
      Caption = 'TUP Previsto:'
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
    object QRDBText6: TQRDBText
      Left = 237
      Top = 3
      Width = 70
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        627.062500000000000000
        7.937500000000000000
        185.208333333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TqComiss
      DataField = 'CTP_PREVISTO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Mask = '#0,.'
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRLabel3: TQRLabel
      Left = 145
      Top = 19
      Width = 90
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333330000
        383.645833333333300000
        50.270833333333330000
        238.125000000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      BiDiMode = bdRightToLeft
      ParentBiDiMode = False
      Caption = 'TUP Realizado:'
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
    object QRDBText12: TQRDBText
      Left = 237
      Top = 19
      Width = 70
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        627.062500000000000000
        50.270833333333330000
        185.208333333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TqComiss
      DataField = 'CTP_REALIZADO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Mask = '#0,.'
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRLabel4: TQRLabel
      Left = 330
      Top = 3
      Width = 120
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333330000
        873.125000000000000000
        7.937500000000000000
        317.500000000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      BiDiMode = bdRightToLeft
      ParentBiDiMode = False
      Caption = 'Comiss'#227'o do Grupo:'
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
    object QRExpr1: TQRExpr
      Left = 452
      Top = 3
      Width = 70
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1195.916666666667000000
        7.937500000000000000
        185.208333333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Color = clWhite
      ParentFont = False
      ResetAfterPrint = False
      Transparent = False
      WordWrap = True
      Expression = 'TqComiss.CTP_COMISSAO*80 / 100'
      Mask = '#,##0.00'
      FontSize = 9
    end
    object QRLabel5: TQRLabel
      Left = 330
      Top = 19
      Width = 120
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333330000
        873.125000000000000000
        50.270833333333330000
        317.500000000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      BiDiMode = bdRightToLeft
      ParentBiDiMode = False
      Caption = 'Comiss'#227'o Aux.:'
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
    object QRExpr2: TQRExpr
      Left = 452
      Top = 19
      Width = 70
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1195.916666666667000000
        50.270833333333330000
        185.208333333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Color = clWhite
      ParentFont = False
      ResetAfterPrint = False
      Transparent = False
      WordWrap = True
      Expression = 'TqComiss.CTP_COMISSAO*20 / 100'
      Mask = '#,##0.00'
      FontSize = 9
    end
    object QRLabel7: TQRLabel
      Left = 310
      Top = 44
      Width = 30
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333330000
        820.208333333333300000
        116.416666666666700000
        79.375000000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'DIAS'
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
    object QRLabel8: TQRLabel
      Left = 385
      Top = 44
      Width = 65
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333330000
        1018.645833333333000000
        116.416666666666700000
        171.979166666666700000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'COMISS'#195'O'
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
    object QRLabel9: TQRLabel
      Left = 185
      Top = 44
      Width = 70
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333330000
        489.479166666666700000
        116.416666666666700000
        185.208333333333300000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'TUP DI'#193'RIO'
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
    object QRExpr4: TQRExpr
      Left = 667
      Top = 3
      Width = 70
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1764.770833333333000000
        7.937500000000000000
        185.208333333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Color = clWhite
      ParentFont = False
      ResetAfterPrint = False
      Transparent = False
      WordWrap = True
      Expression = 'TqComiss.CTP_COMISSAO'
      Mask = '#,##0.00'
      FontSize = 9
    end
    object QRLabel14: TQRLabel
      Left = 542
      Top = 3
      Width = 123
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333330000
        1434.041666666667000000
        7.937500000000000000
        325.437500000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      BiDiMode = bdRightToLeft
      ParentBiDiMode = False
      Caption = 'Total das Comiss'#245'es:'
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
    object QRShape1: TQRShape
      Left = 30
      Top = 59
      Width = 421
      Height = 1
      Frame.Color = clBlack
      Frame.DrawTop = True
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = True
      Size.Values = (
        2.645833333333333000
        79.375000000000000000
        156.104166666666700000
        1113.895833333333000000)
      Shape = qrsRectangle
    end
    object QRShape2: TQRShape
      Left = 30
      Top = 42
      Width = 421
      Height = 1
      Frame.Color = clBlack
      Frame.DrawTop = True
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = True
      Size.Values = (
        2.645833333333333000
        79.375000000000000000
        111.125000000000000000
        1113.895833333333000000)
      Shape = qrsRectangle
    end
    object QRShape3: TQRShape
      Left = 0
      Top = 37
      Width = 740
      Height = 1
      Frame.Color = clBlack
      Frame.DrawTop = True
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = True
      Size.Values = (
        2.645833333333333000
        0.000000000000000000
        97.895833333333330000
        1957.916666666667000000)
      Shape = qrsRectangle
    end
  end
  object BanResumida: TQRBand
    Left = 38
    Top = 197
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
    LinkBand = BanDetailhada
    Size.Values = (
      63.500000000000000000
      1957.916666666667000000)
    BandType = rbGroupFooter
    object QRExpr5: TQRExpr
      Left = 385
      Top = 4
      Width = 65
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1018.645833333333000000
        10.583333333333330000
        171.979166666666700000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      Color = clWhite
      ParentFont = False
      ResetAfterPrint = True
      Transparent = False
      WordWrap = True
      Expression = 
        'SUM((TqComiss.CTP_COMISSAO*80 / 100) / TqComiss.CME_TOT_DIAS_COM' +
        'P*TqComiss.MEC_DIAS)'
      Mask = '#,##0.00'
      FontSize = 10
    end
    object QRExpr7: TQRExpr
      Left = 185
      Top = 4
      Width = 70
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        489.479166666666700000
        10.583333333333330000
        185.208333333333300000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      Color = clWhite
      ParentFont = False
      ResetAfterPrint = True
      Transparent = False
      WordWrap = True
      Expression = 'SUM(TqComiss.CCP_TUPDIARIO)'
      Mask = '#0,.'
      FontSize = 10
    end
    object QRLabel13: TQRLabel
      Left = 30
      Top = 4
      Width = 80
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333330000
        79.375000000000000000
        10.583333333333330000
        211.666666666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'TOTAIS'
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
    object QRShape4: TQRShape
      Left = 30
      Top = 2
      Width = 421
      Height = 1
      Frame.Color = clBlack
      Frame.DrawTop = True
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = True
      Size.Values = (
        2.645833333333333000
        79.375000000000000000
        5.291666666666667000
        1113.895833333333000000)
      Shape = qrsRectangle
    end
    object QRShape5: TQRShape
      Left = 30
      Top = 19
      Width = 421
      Height = 1
      Frame.Color = clBlack
      Frame.DrawTop = True
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = True
      Size.Values = (
        2.645833333333333000
        79.375000000000000000
        50.270833333333330000
        1113.895833333333000000)
      Shape = qrsRectangle
    end
  end
  object BanDetailhada: TQRBand
    Left = 38
    Top = 177
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
    LinkBand = QRGroup1
    Size.Values = (
      52.916666666666670000
      1957.916666666667000000)
    BandType = rbDetail
    object QRDBText5: TQRDBText
      Left = 30
      Top = 1
      Width = 147
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        79.375000000000000000
        2.645833333333333000
        388.937500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TqComiss
      DataField = 'CCP_NOME'
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
    object QRDBText13: TQRDBText
      Left = 310
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
        820.208333333333300000
        2.645833333333333000
        79.375000000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TqComiss
      DataField = 'MEC_DIAS'
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
    object QRExpr3: TQRExpr
      Left = 385
      Top = 1
      Width = 65
      Height = 18
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        47.625000000000000000
        1018.645833333333000000
        2.645833333333333000
        171.979166666666700000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      Color = clWhite
      ParentFont = False
      ResetAfterPrint = False
      Transparent = False
      WordWrap = True
      Expression = 
        '(TqComiss.CTP_COMISSAO*80 / 100) / TqComiss.CME_TOT_DIAS_COMP*Tq' +
        'Comiss.MEC_DIAS'
      Mask = '#,##0.00'
      FontSize = 10
    end
    object QRDBText1: TQRDBText
      Left = 185
      Top = 1
      Width = 70
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        489.479166666666700000
        2.645833333333333000
        185.208333333333300000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TqComiss
      DataField = 'CCP_TUPDIARIO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      Mask = '#0,.'
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
  end
  object QRBand4: TQRBand
    Left = 38
    Top = 221
    Width = 740
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
    LinkBand = BanResumida
    Size.Values = (
      52.916666666666670000
      1957.916666666667000000)
    BandType = rbSummary
    object QRExpr6: TQRExpr
      Left = 668
      Top = 2
      Width = 70
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1767.416666666667000000
        5.291666666666667000
        185.208333333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Color = clWhite
      ParentFont = False
      ResetAfterPrint = True
      Transparent = False
      WordWrap = True
      Expression = 
        'SUM((TqComiss.CTP_COMISSAO*20 / 100) / TqComiss.CME_TOT_DIAS_COM' +
        'P*TqComiss.MEC_DIAS)'
      Mask = '#,##0.00'
      FontSize = 9
    end
    object QRLabel10: TQRLabel
      Left = 444
      Top = 3
      Width = 222
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333330000
        1174.750000000000000000
        7.937500000000000000
        587.375000000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      BiDiMode = bdRightToLeftNoAlign
      ParentBiDiMode = False
      Caption = 'TOTAL DAS COMISS'#213'ESO AUXILIARES:'
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
  object TqComiss: TQuery
    DatabaseName = 'RwDbAdm'
    SQL.Strings = (
      
        'SELECT Cel_tmp05.CME_CODIGO, Cel_tmp05.CTP_REALIZADO, Cel_tmp05.' +
        'CTP_PREVISTO, Cel_tmp05.CTP_DIFERENCA, Cel_tmp05.CTP_DIASUTEIS, ' +
        'Cel_tmp05.CTP_PERC_REALI, Cel_tmp05.CTP_COMISSAO, Cel_tmp05.CTP_' +
        'FATURAMENTO, Cel_tmp05.CTP_TUPDIA, Cel_tmp05.CTP_TUPFATUR, Cel_t' +
        'mp05.CEL_CODIGO, Cel_tmp05.CEL_NOME, Cel_tmp05.CME_TOT_DIAS_COMP' +
        ', Cel_mtc04.CME_CODIGO, Cel_mtc04.CCP_CODIGO, Cel_mtc04.CEL_CODI' +
        'GO, Cel_mtc04.MEC_TUPDIARIO, Cel_mtc04.MEC_DIAS, Cel_cp01.CCP_CO' +
        'DIGO, Cel_cp01.CCP_NOME, Cel_cp01.CCP_FUNCAO, Cel_cp01.CCP_TUPDI' +
        'ARIO, Cel_cp01.CEL_CODIGO'
      'FROM CEL_TMP05 Cel_tmp05, CEL_MTC04 Cel_mtc04, CEL_CP01 Cel_cp01')
    Left = 360
    Top = 15
    object TqComissCel_tmp05CME_CODIGO: TStringField
      FieldName = 'Cel_tmp05.CME_CODIGO'
      Origin = 'CEL_TMP05.CME_CODIGO'
      Size = 9
    end
    object TqComissCTP_REALIZADO: TFloatField
      FieldName = 'CTP_REALIZADO'
      Origin = 'CEL_TMP05.CTP_REALIZADO'
    end
    object TqComissCTP_PREVISTO: TFloatField
      FieldName = 'CTP_PREVISTO'
      Origin = 'CEL_TMP05.CTP_PREVISTO'
    end
    object TqComissCTP_DIFERENCA: TFloatField
      FieldName = 'CTP_DIFERENCA'
      Origin = 'CEL_TMP05.CTP_DIFERENCA'
    end
    object TqComissCTP_DIASUTEIS: TFloatField
      FieldName = 'CTP_DIASUTEIS'
      Origin = 'CEL_TMP05.CTP_DIASUTEIS'
    end
    object TqComissCTP_PERC_REALI: TFloatField
      FieldName = 'CTP_PERC_REALI'
      Origin = 'CEL_TMP05.CTP_PERC_REALI'
    end
    object TqComissCTP_COMISSAO: TFloatField
      FieldName = 'CTP_COMISSAO'
      Origin = 'CEL_TMP05.CTP_COMISSAO'
    end
    object TqComissCTP_FATURAMENTO: TFloatField
      FieldName = 'CTP_FATURAMENTO'
      Origin = 'CEL_TMP05.CTP_FATURAMENTO'
    end
    object TqComissCTP_TUPDIA: TFloatField
      FieldName = 'CTP_TUPDIA'
      Origin = 'CEL_TMP05.CTP_TUPDIA'
    end
    object TqComissCTP_TUPFATUR: TFloatField
      FieldName = 'CTP_TUPFATUR'
      Origin = 'CEL_TMP05.CTP_TUPFATUR'
    end
    object TqComissCel_tmp05CEL_CODIGO: TStringField
      FieldName = 'Cel_tmp05.CEL_CODIGO'
      Origin = 'CEL_TMP05.CEL_CODIGO'
      Size = 3
    end
    object TqComissCEL_NOME: TStringField
      FieldName = 'CEL_NOME'
      Origin = 'CEL_TMP05.CEL_NOME'
      Size = 35
    end
    object TqComissCME_TOT_DIAS_COMP: TFloatField
      FieldName = 'CME_TOT_DIAS_COMP'
      Origin = 'CEL_TMP05.CME_TOT_DIAS_COMP'
    end
    object TqComissCel_mtc04CME_CODIGO: TStringField
      FieldName = 'Cel_mtc04.CME_CODIGO'
      Origin = 'CEL_MTC04.CME_CODIGO'
      Size = 9
    end
    object TqComissCel_mtc04CCP_CODIGO: TStringField
      FieldName = 'Cel_mtc04.CCP_CODIGO'
      Origin = 'CEL_MTC04.CCP_CODIGO'
      Size = 4
    end
    object TqComissCel_mtc04CEL_CODIGO: TStringField
      FieldName = 'Cel_mtc04.CEL_CODIGO'
      Origin = 'CEL_MTC04.CEL_CODIGO'
      Size = 3
    end
    object TqComissMEC_TUPDIARIO: TFloatField
      FieldName = 'MEC_TUPDIARIO'
      Origin = 'CEL_MTC04.MEC_TUPDIARIO'
    end
    object TqComissMEC_DIAS: TFloatField
      FieldName = 'MEC_DIAS'
      Origin = 'CEL_MTC04.MEC_DIAS'
    end
    object TqComissCel_cp01CCP_CODIGO: TStringField
      FieldName = 'Cel_cp01.CCP_CODIGO'
      Origin = 'CEL_CP01.CCP_CODIGO'
      Size = 4
    end
    object TqComissCCP_NOME: TStringField
      FieldName = 'CCP_NOME'
      Origin = 'CEL_CP01.CCP_NOME'
      Size = 30
    end
    object TqComissCCP_FUNCAO: TStringField
      FieldName = 'CCP_FUNCAO'
      Origin = 'CEL_CP01.CCP_FUNCAO'
      Size = 18
    end
    object TqComissCCP_TUPDIARIO: TFloatField
      FieldName = 'CCP_TUPDIARIO'
      Origin = 'CEL_CP01.CCP_TUPDIARIO'
    end
    object TqComissCel_cp01CEL_CODIGO: TStringField
      FieldName = 'Cel_cp01.CEL_CODIGO'
      Origin = 'CEL_CP01.CEL_CODIGO'
      Size = 3
    end
  end
  object QRTextFilter1: TQRTextFilter
    Left = 32
    Top = 16
  end
end
