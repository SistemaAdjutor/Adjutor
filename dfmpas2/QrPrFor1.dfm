object RelProdFornece: TRelProdFornece
  Left = 0
  Top = 0
  Width = 816
  Height = 1056
  Frame.Color = clBlack
  Frame.DrawTop = False
  Frame.DrawBottom = False
  Frame.DrawLeft = False
  Frame.DrawRight = False
  DataSet = QrProdForn
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Arial'
  Font.Style = []
  Functions.Strings = (
    'PAGENUMBER'
    'COLUMNNUMBER'
    'REPORTTITLE'
    'QRSTRINGSBAND1')
  Functions.DATA = (
    '0'
    '0'
    #39#39
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
      1957.916666666667000000)
    BandType = rbPageHeader
    object Lb_Empresa: TQRLabel
      Left = 2
      Top = 2
      Width = 74
      Height = 19
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        50.270833333333330000
        5.291666666666667000
        5.291666666666667000
        195.791666666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Lb_Empresa'
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
    object QRLabel2: TQRLabel
      Left = 2
      Top = 21
      Width = 294
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        5.291666666666667000
        55.562500000000000000
        777.875000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'RELAT'#211'RIO DE PRODUTOS POR FORNECEDORES'
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
      Left = 692
      Top = 2
      Width = 45
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        1830.916666666667000000
        5.291666666666667000
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
    object QRSysData2: TQRSysData
      Left = 665
      Top = 38
      Width = 35
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        1759.479166666667000000
        100.541666666666700000
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
    object QRLabel1: TQRLabel
      Left = 662
      Top = 2
      Width = 54
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        1751.541666666667000000
        5.291666666666667000
        142.875000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'P'#225'gina n'#186
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
    object QRLabel11: TQRLabel
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
    object QRLabel12: TQRLabel
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
    Left = 38
    Top = 114
    Width = 740
    Height = 21
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
      55.562500000000000000
      1957.916666666667000000)
    BandType = rbColumnHeader
    object QRLabel3: TQRLabel
      Left = 12
      Top = 2
      Width = 79
      Height = 18
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        47.625000000000000000
        31.750000000000000000
        5.291666666666667000
        209.020833333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'FORNECEDOR'
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
      Left = 358
      Top = 2
      Width = 31
      Height = 18
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        47.625000000000000000
        947.208333333333300000
        5.291666666666667000
        82.020833333333330000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'FONE'
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
    object QRLabel6: TQRLabel
      Left = 451
      Top = 2
      Width = 23
      Height = 18
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        47.625000000000000000
        1193.270833333333000000
        5.291666666666667000
        60.854166666666670000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'FAX'
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
    object QRLabel7: TQRLabel
      Left = 499
      Top = 2
      Width = 57
      Height = 18
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        47.625000000000000000
        1320.270833333333000000
        5.291666666666667000
        150.812500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'CONTATO'
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
      Left = 579
      Top = 2
      Width = 40
      Height = 18
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        47.625000000000000000
        1531.937500000000000000
        5.291666666666667000
        105.833333333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'E-MAIL'
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
    object CIDADE: TQRLabel
      Left = 233
      Top = 2
      Width = 43
      Height = 18
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        47.625000000000000000
        616.479166666666700000
        5.291666666666667000
        113.770833333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'CIDADE'
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
  object QRGroup1: TQRGroup
    Left = 38
    Top = 135
    Width = 740
    Height = 18
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
      47.625000000000000000
      1957.916666666667000000)
    Expression = 'QrProdForn.Prd0000.PRD_REFER'
    Master = Owner
    ReprintOnNewPage = False
    object QRDBText1: TQRDBText
      Left = 280
      Top = 2
      Width = 100
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        740.833333333333300000
        5.291666666666667000
        264.583333333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = QrProdForn
      DataField = 'Prd0000.PRD_REFER'
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
    object QRDBText8: TQRDBText
      Left = 2
      Top = 2
      Width = 247
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        5.291666666666667000
        5.291666666666667000
        653.520833333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = QrProdForn
      DataField = 'PRD_DESCRI'
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
      Left = 255
      Top = 2
      Width = 23
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        674.687500000000000000
        5.291666666666667000
        60.854166666666670000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'REF:'
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
  object QRBandDados: TQRBand
    Left = 38
    Top = 153
    Width = 740
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
    Size.Values = (
      44.979166666666670000
      1957.916666666667000000)
    BandType = rbDetail
    object Lb_Forn: TQRLabel
      Left = 43
      Top = 0
      Width = 189
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        113.770833333333300000
        0.000000000000000000
        500.062500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'Lb_Forn'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRDBText7: TQRDBText
      Left = 12
      Top = 2
      Width = 25
      Height = 13
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        34.395833333333330000
        31.750000000000000000
        5.291666666666667000
        66.145833333333330000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = QrFornec
      DataField = 'FOR_CODIGO'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'MS Serif'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = False
      FontSize = 7
    end
    object QRLabel10: TQRLabel
      Left = 36
      Top = 2
      Width = 5
      Height = 13
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        34.395833333333330000
        95.250000000000000000
        5.291666666666667000
        13.229166666666670000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = '-'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'MS Serif'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = False
      FontSize = 7
    end
    object QRDBText2: TQRDBText
      Left = 579
      Top = 1
      Width = 157
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333330000
        1531.937500000000000000
        2.645833333333333000
        415.395833333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = QrFornec
      DataField = 'FOR_EMAIL'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = False
      FontSize = 8
    end
    object QRDBText3: TQRDBText
      Left = 233
      Top = 2
      Width = 120
      Height = 13
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        34.395833333333330000
        616.479166666666700000
        5.291666666666667000
        317.500000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = QrFornec
      DataField = 'FOR_CIDADE'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'MS Serif'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = False
      FontSize = 7
    end
    object QRDBText4: TQRDBText
      Left = 499
      Top = 2
      Width = 75
      Height = 13
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        34.395833333333330000
        1320.270833333333000000
        5.291666666666667000
        198.437500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = QrFornec
      DataField = 'FOR_CONTATO'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'MS Serif'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = False
      FontSize = 7
    end
    object QRDBText5: TQRDBText
      Left = 358
      Top = 2
      Width = 65
      Height = 13
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        34.395833333333330000
        947.208333333333300000
        5.291666666666667000
        171.979166666666700000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = QrFornec
      DataField = 'FOR_FONE'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'MS Serif'
      Font.Style = []
      Mask = '\(999\)9999\-9999;0;_'
      ParentFont = False
      Transparent = False
      WordWrap = False
      FontSize = 7
    end
    object QRDBText6: TQRDBText
      Left = 428
      Top = 2
      Width = 65
      Height = 13
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        34.395833333333330000
        1132.416666666667000000
        5.291666666666667000
        171.979166666666700000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = QrFornec
      DataField = 'FOR_FAX'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'MS Serif'
      Font.Style = []
      Mask = '\(999\)9999\-9999;0;_'
      ParentFont = False
      Transparent = False
      WordWrap = False
      FontSize = 7
    end
    object Db_FOR_RAZAO: TQRDBText
      Left = 43
      Top = 2
      Width = 189
      Height = 13
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        34.395833333333330000
        113.770833333333300000
        5.291666666666667000
        500.062500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = QrFornec
      DataField = 'FOR_RAZAO'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'MS Serif'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = False
      FontSize = 7
    end
  end
  object QrProdForn: TQuery
    DatabaseName = 'RwDbAdm'
    SQL.Strings = (
      
        'SELECT Prd0000.PRD_REFER, Prd0000.PRD_DESCRI, For_prod.FOR_CODIG' +
        'O, For_prod.PRD_REFER, For_prod.EMP_CODIGO, Prd0000.PGR_CODIGO, ' +
        'Prd0000.PTI_CODIGO'
      'FROM PRD0000 Prd0000, FOR_PROD For_prod'
      'WHERE  (Prd0000.PRD_REFER = For_prod.PRD_REFER)  '
      'ORDER BY Prd0000.PRD_DESCRI')
    Left = 165
    Top = 20
    object QrProdFornPrd0000PRD_REFER: TStringField
      FieldName = 'Prd0000.PRD_REFER'
      Origin = 'PRD0000.PRD_REFER'
      Size = 11
    end
    object QrProdFornPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Origin = 'PRD0000.PRD_DESCRI'
      Size = 40
    end
    object QrProdFornFOR_CODIGO: TStringField
      FieldName = 'FOR_CODIGO'
      Origin = 'FOR_PROD.FOR_CODIGO'
      Size = 4
    end
    object QrProdFornFor_prodPRD_REFER: TStringField
      FieldName = 'For_prod.PRD_REFER'
      Origin = 'FOR_PROD.PRD_REFER'
      Size = 11
    end
    object QrProdFornEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Origin = 'FOR_PROD.EMP_CODIGO'
      Size = 3
    end
    object QrProdFornPGR_CODIGO: TStringField
      FieldName = 'PGR_CODIGO'
      Origin = 'PRD0000.PGR_CODIGO'
      Size = 3
    end
    object QrProdFornPTI_CODIGO: TStringField
      FieldName = 'PTI_CODIGO'
      Origin = 'PRD0000.PTI_CODIGO'
      Size = 3
    end
  end
  object QrFornec: TQuery
    DatabaseName = 'RwDbAdm'
    SQL.Strings = (
      
        'SELECT FOR_CODIGO, FOR_RAZAO, FOR_CIDADE, FOR_UF, FOR_CONTATO, F' +
        'OR_FONE, FOR_FAX, FOR_EMAIL'
      'FROM FOR0000 For0000'
      'ORDER BY FOR_CODIGO')
    Left = 260
    Top = 20
    object QrFornecFOR_CODIGO: TStringField
      FieldName = 'FOR_CODIGO'
      Origin = 'FOR0000.FOR_CODIGO'
      Size = 4
    end
    object QrFornecFOR_RAZAO: TStringField
      FieldName = 'FOR_RAZAO'
      Origin = 'FOR0000.FOR_RAZAO'
      Size = 40
    end
    object QrFornecFOR_CIDADE: TStringField
      FieldName = 'FOR_CIDADE'
      Origin = 'FOR0000.FOR_CIDADE'
      Size = 30
    end
    object QrFornecFOR_UF: TStringField
      FieldName = 'FOR_UF'
      Origin = 'FOR0000.FOR_UF'
      Size = 2
    end
    object QrFornecFOR_CONTATO: TStringField
      FieldName = 'FOR_CONTATO'
      Origin = 'FOR0000.FOR_CONTATO'
    end
    object QrFornecFOR_FONE: TStringField
      FieldName = 'FOR_FONE'
      Origin = 'FOR0000.FOR_FONE'
      EditMask = '\(999\)9999\-9999;0;_'
      Size = 11
    end
    object QrFornecFOR_FAX: TStringField
      FieldName = 'FOR_FAX'
      Origin = 'FOR0000.FOR_FAX'
      EditMask = '\(999\)9999\-9999;0;_'
      Size = 11
    end
    object QrFornecFOR_EMAIL: TStringField
      FieldName = 'FOR_EMAIL'
      Origin = 'FOR0000.FOR_EMAIL'
      Size = 35
    end
  end
  object DsQrProdForn: TDataSource
    DataSet = QrProdForn
    Left = 195
    Top = 20
  end
  object QRTextFilter1: TQRTextFilter
    Left = 32
    Top = 16
  end
end
