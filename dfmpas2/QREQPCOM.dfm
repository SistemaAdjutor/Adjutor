object RelEquipCom: TRelEquipCom
  Left = 0
  Top = 0
  Width = 816
  Height = 1056
  Frame.Color = clBlack
  Frame.DrawTop = False
  Frame.DrawBottom = False
  Frame.DrawLeft = False
  Frame.DrawRight = False
  DataSet = TQTmpEquip
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
  Units = Native
  Zoom = 100
  object QRBand1: TQRBand
    Left = 38
    Top = 38
    Width = 740
    Height = 77
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
      203.729166666666700000
      1957.916666666667000000)
    BandType = rbPageHeader
    object LabelEmpresa: TQRLabel
      Left = 0
      Top = 2
      Width = 84
      Height = 18
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        47.625000000000000000
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
    object QRLabel10: TQRLabel
      Left = 2
      Top = 59
      Width = 61
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        5.291666666666667000
        156.104166666666700000
        161.395833333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Per'#237'odo de '
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
    object LabelDatas: TQRLabel
      Left = 66
      Top = 59
      Width = 61
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        174.625000000000000000
        156.104166666666700000
        161.395833333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'LabelDatas'
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
    object LabelQuinzena: TQRLabel
      Left = 662
      Top = 59
      Width = 73
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        1751.541666666667000000
        156.104166666666700000
        193.145833333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'LabelQuinzena'
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
    object LabelRepresentante: TQRLabel
      Left = 0
      Top = 40
      Width = 114
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        0.000000000000000000
        105.833333333333300000
        301.625000000000000000)
      Alignment = taLeftJustify
      AlignToBand = True
      AutoSize = True
      AutoStretch = False
      Caption = 'LabelRepresentante'
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
      Left = 1
      Top = 20
      Width = 311
      Height = 19
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        50.270833333333330000
        2.645833333333333000
        52.916666666666670000
        822.854166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'RELAT'#211'RIO DE COMISS'#213'ES DE VENDAS POR EQUIPE'
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
  object QRLabel13: TQRLabel
    Left = 706
    Top = 21
    Width = 34
    Height = 15
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    Size.Values = (
      39.687500000000000000
      1867.958333333333000000
      55.562500000000000000
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
  object QRSysData1: TQRSysData
    Left = 716
    Top = 21
    Width = 39
    Height = 15
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    Size.Values = (
      39.687500000000000000
      1894.416666666667000000
      55.562500000000000000
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
  object QRSysData2: TQRSysData
    Left = 40
    Top = 21
    Width = 31
    Height = 15
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    Size.Values = (
      39.687500000000000000
      105.833333333333300000
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
  object QRBand2: TQRBand
    Left = 38
    Top = 115
    Width = 740
    Height = 27
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
      71.437500000000000000
      1957.916666666667000000)
    BandType = rbColumnHeader
    object QRLabel1: TQRLabel
      Left = 2
      Top = 5
      Width = 28
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        5.291666666666667000
        13.229166666666670000
        74.083333333333330000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'COD'
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
    object QRLabel2: TQRLabel
      Left = 79
      Top = 5
      Width = 114
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        209.020833333333300000
        13.229166666666670000
        301.625000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'REPRESENTANTE'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRLabel3: TQRLabel
      Left = 422
      Top = 5
      Width = 103
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1116.541666666667000000
        13.229166666666670000
        272.520833333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'TOTAL VENDIDO'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRLabel4: TQRLabel
      Left = 575
      Top = 5
      Width = 91
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1521.354166666667000000
        13.229166666666670000
        240.770833333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'VL.COMISS'#195'O'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRLabel5: TQRLabel
      Left = 693
      Top = 5
      Width = 36
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1833.562500000000000000
        13.229166666666670000
        95.250000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'QTDE'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRLabel7: TQRLabel
      Left = 531
      Top = 5
      Width = 33
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1404.937500000000000000
        13.229166666666670000
        87.312500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'COM.'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRLabel6: TQRLabel
      Left = 33
      Top = 5
      Width = 27
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        87.312500000000000000
        13.229166666666670000
        71.437500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'GRP'
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
    object QRLabel8: TQRLabel
      Left = 351
      Top = 6
      Width = 29
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        928.687500000000000000
        15.875000000000000000
        76.729166666666670000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'SUP.'
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
    object QRLabel14: TQRLabel
      Left = 386
      Top = 6
      Width = 30
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1021.291666666667000000
        15.875000000000000000
        79.375000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'GER.'
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
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      58.208333333333330000
      1957.916666666667000000)
    BandType = rbDetail
    object QRDBText1: TQRDBText
      Left = 35
      Top = 3
      Width = 27
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        92.604166666666670000
        7.937500000000000000
        71.437500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TQTmpEquip
      DataField = 'Tmpequip.REP_CODIGO'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRDBText2: TQRDBText
      Left = 67
      Top = 3
      Width = 21
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        177.270833333333300000
        7.937500000000000000
        55.562500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TQTmpEquip
      DataField = 'REP_GRUPO'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRDBText3: TQRDBText
      Left = 157
      Top = 3
      Width = 268
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        415.395833333333300000
        7.937500000000000000
        709.083333333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TQTmpEquip
      DataField = 'REP_RAZAO'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRDBText4: TQRDBText
      Left = 425
      Top = 3
      Width = 95
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1124.479166666667000000
        7.937500000000000000
        251.354166666666700000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TQTmpEquip
      DataField = 'TMP_TOTVENDAS'
      Mask = '#0.,00'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRDBText6: TQRDBText
      Left = 666
      Top = 3
      Width = 65
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1762.125000000000000000
        7.937500000000000000
        171.979166666666700000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TQTmpEquip
      DataField = 'TMP_TOTLITROS'
      Mask = '#0.,'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRDBText5: TQRDBText
      Left = 566
      Top = 3
      Width = 95
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1497.541666666667000000
        7.937500000000000000
        251.354166666666700000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TQTmpEquip
      DataField = 'TMP_COMISSAO'
      Mask = '#0.,00'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRExpr1: TQRExpr
      Left = 530
      Top = 3
      Width = 28
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1402.291666666667000000
        7.937500000000000000
        74.083333333333330000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      ResetAfterPrint = False
      Transparent = False
      WordWrap = True
      Expression = 
        'IF(TQTmpEquip.TMP_COMISSAO >0,(TQTmpEquip.TMP_COMISSAO / TQTmpEq' +
        'uip.TMP_TOTVENDAS) * 100,0)'
      Mask = '#0.,00'
      FontSize = 10
    end
    object QRDBText7: TQRDBText
      Left = 352
      Top = 3
      Width = 27
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        931.333333333333500000
        7.937500000000000000
        71.437500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TQTmpEquip
      DataField = 'REP_SUPERVISAO'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRDBText8: TQRDBText
      Left = 387
      Top = 3
      Width = 27
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1023.937500000000000000
        7.937500000000000000
        71.437500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TQTmpEquip
      DataField = 'REP_GERENTE'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRDBText9: TQRDBText
      Left = 106
      Top = 3
      Width = 12
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        280.458333333333300000
        7.937500000000000000
        31.750000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TQTmpEquip
      DataField = 'REP_FUNCAO'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
  end
  object QRBand4: TQRBand
    Left = 38
    Top = 164
    Width = 740
    Height = 28
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
      74.083333333333330000
      1957.916666666667000000)
    BandType = rbSummary
    object QRLabel9: TQRLabel
      Left = 6
      Top = 8
      Width = 216
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        15.875000000000000000
        21.166666666666670000
        571.500000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Total de Vendas de toda a equipe'
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
    object QRExpr6: TQRExpr
      Left = 421
      Top = 8
      Width = 100
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1113.895833333333000000
        21.166666666666670000
        264.583333333333300000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Color = clWhite
      ParentFont = False
      ResetAfterPrint = True
      Transparent = False
      WordWrap = True
      Expression = 'SUM(TQTmpEquip.TMP_TOTVENDAS)'
      Mask = '#0.,00'
      FontSize = 10
    end
    object QRExpr7: TQRExpr
      Left = 562
      Top = 8
      Width = 100
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1486.958333333333000000
        21.166666666666670000
        264.583333333333300000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Color = clWhite
      ParentFont = False
      ResetAfterPrint = True
      Transparent = False
      WordWrap = True
      Expression = 'SUM(TQTmpEquip.TMP_COMISSAO)'
      Mask = '#0.,00'
      FontSize = 10
    end
    object QRExpr8: TQRExpr
      Left = 667
      Top = 8
      Width = 65
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1764.770833333333000000
        21.166666666666670000
        171.979166666666700000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Color = clWhite
      ParentFont = False
      ResetAfterPrint = True
      Transparent = False
      WordWrap = True
      Expression = 'SUM(TQTmpEquip.TMP_TOTLITROS)'
      Mask = '#0.,'
      FontSize = 10
    end
  end
  object ChildBand1: TQRChildBand
    Left = 38
    Top = 192
    Width = 740
    Height = 28
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
      74.083333333333330000
      1957.916666666667000000)
    ParentBand = QRBand4
    object QRExpr3: TQRExpr
      Left = 421
      Top = 3
      Width = 100
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1113.895833333333000000
        7.937500000000000000
        264.583333333333300000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      ResetAfterPrint = True
      Transparent = False
      WordWrap = True
      Expression = 'SUM(TQTmpEquip.TMP_TOTVENDAS) - SUM(TQTmpEquip.TMP_VENDAPROP)'
      Mask = '#0.,00'
      FontSize = 10
    end
    object QRExpr4: TQRExpr
      Left = 562
      Top = 3
      Width = 100
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1486.958333333333000000
        7.937500000000000000
        264.583333333333300000)
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
      Expression = 'SUM(TQTmpEquip.TMP_COMISSAO) - SUM(TQTmpEquip.TMP_COMPROP)'
      Mask = '#0.,00'
      FontSize = 10
    end
    object QRExpr5: TQRExpr
      Left = 667
      Top = 3
      Width = 65
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
        171.979166666666700000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      ResetAfterPrint = True
      Transparent = False
      WordWrap = True
      Expression = 'SUM(TQTmpEquip.TMP_TOTLITROS) - SUM(TQTmpEquip.TMP_LITROPROP)'
      Mask = '#0.,'
      FontSize = 10
    end
    object QRLabel12: TQRLabel
      Left = 216
      Top = 12
      Width = 212
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        571.500000000000000000
        31.750000000000000000
        560.916666666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Total de vendas dos supervisionados'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
  end
  object TQTmpEquip: TQuery
    DatabaseName = 'RwDbAdm'
    SQL.Strings = (
      
        'SELECT Tmpequip.REP_CODIGO, Tmpequip.TMP_TOTVENDAS, Tmpequip.TMP' +
        '_COMISSAO, Tmpequip.TMP_TOTLITROS, Rep0000.REP_CODIGO, Rep0000.R' +
        'EP_GRUPO, Rep0000.REP_FUNCAO, Tmpequip.TMP_VENDAPROP, Tmpequip.T' +
        'MP_COMPROP, Tmpequip.TMP_LITROPROP, Rep0000.REP_RAZAO, Rep0000.R' +
        'EP_SUPERVISAO, Rep0000.REP_GERENTE'
      'FROM TMPEQUIP Tmpequip, REP0000 Rep0000'
      'WHERE  (Tmpequip.REP_CODIGO = Rep0000.REP_CODIGO)  '
      
        'ORDER BY Rep0000.REP_GERENTE, Rep0000.REP_SUPERVISAO, Tmpequip.R' +
        'EP_CODIGO')
    Left = 88
    Top = 8
    object TQTmpEquipTmpequipREP_CODIGO: TStringField
      FieldName = 'Tmpequip.REP_CODIGO'
      Origin = 'TMPEQUIP.REP_CODIGO'
      Size = 3
    end
    object TQTmpEquipTMP_TOTVENDAS: TFloatField
      FieldName = 'TMP_TOTVENDAS'
      Origin = 'TMPEQUIP.TMP_TOTVENDAS'
    end
    object TQTmpEquipTMP_COMISSAO: TFloatField
      FieldName = 'TMP_COMISSAO'
      Origin = 'TMPEQUIP.TMP_COMISSAO'
    end
    object TQTmpEquipTMP_TOTLITROS: TFloatField
      FieldName = 'TMP_TOTLITROS'
      Origin = 'TMPEQUIP.TMP_TOTLITROS'
    end
    object TQTmpEquipRep0000REP_CODIGO: TStringField
      FieldName = 'Rep0000.REP_CODIGO'
      Origin = 'REP0000.REP_CODIGO'
      Size = 3
    end
    object TQTmpEquipREP_GRUPO: TStringField
      FieldName = 'REP_GRUPO'
      Origin = 'REP0000.REP_GRUPO'
      Size = 2
    end
    object TQTmpEquipREP_FUNCAO: TStringField
      FieldName = 'REP_FUNCAO'
      Origin = 'REP0000.REP_FUNCAO'
      Size = 1
    end
    object TQTmpEquipTMP_COMPROP: TFloatField
      FieldName = 'TMP_COMPROP'
      Origin = 'TMPEQUIP.TMP_COMPROP'
    end
    object TQTmpEquipTMP_VENDAPROP: TFloatField
      FieldName = 'TMP_VENDAPROP'
      Origin = 'TMPEQUIP.TMP_VENDAPROP'
    end
    object TQTmpEquipTMP_LITROPROP: TFloatField
      FieldName = 'TMP_LITROPROP'
      Origin = 'TMPEQUIP.TMP_LITROPROP'
    end
    object TQTmpEquipREP_RAZAO: TStringField
      FieldName = 'REP_RAZAO'
      Origin = 'REP0000.REP_RAZAO'
      Size = 40
    end
    object TQTmpEquipREP_SUPERVISAO: TStringField
      FieldName = 'REP_SUPERVISAO'
      Origin = 'RWDBADM.REP0000.REP_SUPERVISAO'
      Size = 3
    end
    object TQTmpEquipREP_GERENTE: TStringField
      FieldName = 'REP_GERENTE'
      Origin = 'RWDBADM.REP0000.REP_GERENTE'
      Size = 3
    end
  end
  object QRTextFilter1: TQRTextFilter
    Left = 32
    Top = 16
  end
end
