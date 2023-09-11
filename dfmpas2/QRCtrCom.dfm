object RelControleCom: TRelControleCom
  Left = 0
  Top = 0
  Width = 816
  Height = 1056
  Frame.Color = clBlack
  Frame.DrawTop = False
  Frame.DrawBottom = False
  Frame.DrawLeft = False
  Frame.DrawRight = False
  DataSet = CdsTmp_Rcom
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
    Height = 384
    Frame.Color = clBlack
    Frame.DrawTop = True
    Frame.DrawBottom = True
    Frame.DrawLeft = True
    Frame.DrawRight = True
    AlignToBottom = False
    BeforePrint = QRBand1BeforePrint
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Times New Roman'
    Font.Style = []
    ForceNewColumn = False
    ForceNewPage = True
    ParentFont = False
    Size.Values = (
      1016.000000000000000000
      1957.916666666667000000)
    BandType = rbDetail
    object LabelEmpresa: TQRLabel
      Left = 322
      Top = 2
      Width = 96
      Height = 23
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        60.854166666666670000
        851.958333333333400000
        5.291666666666667000
        254.000000000000000000)
      Alignment = taCenter
      AlignToBand = True
      AutoSize = True
      AutoStretch = False
      Caption = 'LabelEmpresa'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 11
    end
    object QRLabel2: TQRLabel
      Left = 253
      Top = 25
      Width = 233
      Height = 20
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        52.916666666666670000
        669.395833333333400000
        66.145833333333330000
        616.479166666666700000)
      Alignment = taCenter
      AlignToBand = True
      AutoSize = True
      AutoStretch = False
      Caption = 'CONTROLE DE COMISS'#213'ES - Pagamentos'
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
    object QRShape1: TQRShape
      Left = 0
      Top = 82
      Width = 740
      Height = 1
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        2.645833333333333000
        0.000000000000000000
        216.958333333333300000
        1957.916666666667000000)
      Shape = qrsRectangle
    end
    object QRLabel1: TQRLabel
      Left = 7
      Top = 66
      Width = 61
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        18.520833333333330000
        174.625000000000000000
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
    object QRLabel5: TQRLabel
      Left = 71
      Top = 89
      Width = 87
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        187.854166666666700000
        235.479166666666700000
        230.187500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'FATURAMENTO'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRLabel6: TQRLabel
      Left = 3
      Top = 121
      Width = 93
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        7.937500000000000000
        320.145833333333300000
        246.062500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'VENDAS(Produtos)'
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
    object QRDBText4: TQRDBText
      Left = 125
      Top = 121
      Width = 95
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        330.729166666666700000
        320.145833333333300000
        251.354166666666700000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = CdsTmp_Rcom
      DataField = 'RCOM_VENDAS'
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
    object QRShape2: TQRShape
      Left = 228
      Top = 83
      Width = 1
      Height = 250
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        661.458333333333400000
        603.250000000000000000
        219.604166666666700000
        2.645833333333333000)
      Shape = qrsRectangle
    end
    object QRLabel7: TQRLabel
      Left = 331
      Top = 89
      Width = 55
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        875.770833333333300000
        235.479166666666700000
        145.520833333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'CR'#201'DITOS'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRLabel8: TQRLabel
      Left = 234
      Top = 121
      Width = 120
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        619.125000000000000000
        320.145833333333300000
        317.500000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'COMISS'#213'ES  S/ VENDAS'
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
    object QRDBText5: TQRDBText
      Left = 375
      Top = 121
      Width = 115
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        992.187500000000000000
        320.145833333333300000
        304.270833333333400000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = CdsTmp_Rcom
      DataField = 'RCOM_COMISSOES'
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
    object QRShape3: TQRShape
      Left = 503
      Top = 82
      Width = 1
      Height = 88
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        232.833333333333400000
        1330.854166666667000000
        216.958333333333400000
        2.645833333333333000)
      Shape = qrsRectangle
    end
    object QRLabel9: TQRLabel
      Left = 235
      Top = 145
      Width = 102
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        621.770833333333300000
        383.645833333333300000
        269.875000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'OUTROS CREDITOS'
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
    object QRDBText6: TQRDBText
      Left = 385
      Top = 145
      Width = 105
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        1018.645833333333000000
        383.645833333333300000
        277.812500000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = CdsTmp_Rcom
      DataField = 'RCOM_CREDITOS'
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
    object QRLabel10: TQRLabel
      Left = 588
      Top = 88
      Width = 48
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        1555.750000000000000000
        232.833333333333300000
        127.000000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'D'#201'BITOS'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRLabel11: TQRLabel
      Left = 510
      Top = 121
      Width = 37
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        1349.375000000000000000
        320.145833333333300000
        97.895833333333330000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'I.R.R.F.'
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
      Left = 510
      Top = 145
      Width = 95
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        1349.375000000000000000
        383.645833333333300000
        251.354166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'OUTROS D'#201'BITOS'
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
    object QRDBText7: TQRDBText
      Left = 662
      Top = 121
      Width = 72
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        1751.541666666667000000
        320.145833333333300000
        190.500000000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = CdsTmp_Rcom
      DataField = 'RCOM_IRRF'
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
    object QRDBText8: TQRDBText
      Left = 636
      Top = 145
      Width = 97
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        1682.750000000000000000
        383.645833333333300000
        256.645833333333400000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = CdsTmp_Rcom
      DataField = 'RCOM_DEBITOS'
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
    object QRShape4: TQRShape
      Left = 1
      Top = 169
      Width = 738
      Height = 1
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        2.645833333333333000
        2.645833333333333000
        447.145833333333300000
        1952.625000000000000000)
      Shape = qrsRectangle
    end
    object QRLabel13: TQRLabel
      Left = 84
      Top = 175
      Width = 46
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        222.250000000000000000
        463.020833333333300000
        121.708333333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'RESUMO'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRLabel14: TQRLabel
      Left = 6
      Top = 196
      Width = 81
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        15.875000000000000000
        518.583333333333300000
        214.312500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Total de Creditos'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRLabel15: TQRLabel
      Left = 6
      Top = 217
      Width = 78
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        15.875000000000000000
        574.145833333333300000
        206.375000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Total de D'#233'bitos'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRLabel16: TQRLabel
      Left = 6
      Top = 250
      Width = 72
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        15.875000000000000000
        661.458333333333300000
        190.500000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'L'#237'quido '#224' Pagar'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRLabel17: TQRLabel
      Left = 232
      Top = 196
      Width = 280
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        613.833333333333300000
        518.583333333333300000
        740.833333333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Pedidos entregues conforme relat'#243'rios recebidos este m'#234's R$'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRDBText9: TQRDBText
      Left = 517
      Top = 196
      Width = 95
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        1367.895833333333000000
        518.583333333333300000
        251.354166666666700000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = CdsTmp_Rcom
      DataField = 'RCOM_VENDAS'
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
    object QRLabel21: TQRLabel
      Left = 232
      Top = 252
      Width = 94
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        613.833333333333300000
        666.750000000000000000
        248.708333333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'a importancia de R$'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRLabel22: TQRLabel
      Left = 440
      Top = 252
      Width = 217
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        1164.166666666667000000
        666.750000000000000000
        574.145833333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'como '#224' importancia l'#237'quida do  pagamento  das'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRLabel23: TQRLabel
      Left = 233
      Top = 275
      Width = 236
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        616.479166666666700000
        727.604166666666700000
        624.416666666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'comiss'#245'es sobre vendas efetuadas durante o m'#234's de '
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRShape6: TQRShape
      Left = 518
      Top = 287
      Width = 126
      Height = 1
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        2.645833333333333000
        1370.541666666667000000
        759.354166666666700000
        333.375000000000000000)
      Shape = qrsRectangle
    end
    object QRLabel24: TQRLabel
      Left = 648
      Top = 275
      Width = 11
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        1714.500000000000000000
        727.604166666666700000
        29.104166666666670000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'de'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRShape7: TQRShape
      Left = 667
      Top = 287
      Width = 50
      Height = 1
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        2.645833333333333000
        1764.770833333333000000
        759.354166666666700000
        132.291666666666700000)
      Shape = qrsRectangle
    end
    object QRShape8: TQRShape
      Left = 234
      Top = 313
      Width = 28
      Height = 1
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        2.645833333333333000
        619.125000000000000000
        828.145833333333300000
        74.083333333333330000)
      Shape = qrsRectangle
    end
    object QRLabel25: TQRLabel
      Left = 264
      Top = 299
      Width = 4
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        698.500000000000000000
        791.104166666666700000
        10.583333333333330000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = '/'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRShape9: TQRShape
      Left = 270
      Top = 313
      Width = 28
      Height = 1
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        2.645833333333333000
        714.375000000000000000
        828.145833333333300000
        74.083333333333330000)
      Shape = qrsRectangle
    end
    object QRLabel26: TQRLabel
      Left = 300
      Top = 299
      Width = 4
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        793.750000000000000000
        791.104166666666700000
        10.583333333333330000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = '/'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRShape10: TQRShape
      Left = 309
      Top = 313
      Width = 28
      Height = 1
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        2.645833333333333000
        817.562500000000000000
        828.145833333333300000
        74.083333333333330000)
      Shape = qrsRectangle
    end
    object QRLabel27: TQRLabel
      Left = 380
      Top = 301
      Width = 81
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        1005.416666666667000000
        796.395833333333300000
        214.312500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Ass. Vendedor'
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
    object QRShape11: TQRShape
      Left = 464
      Top = 313
      Width = 209
      Height = 1
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        2.645833333333333000
        1227.666666666667000000
        828.145833333333300000
        552.979166666666700000)
      Shape = qrsRectangle
    end
    object LabelRecibo: TQRLabel
      Left = 232
      Top = 217
      Width = 67
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        613.833333333333300000
        574.145833333333300000
        177.270833333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'LabelRecibo'
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
    object LabelRepresentante: TQRLabel
      Left = 316
      Top = 47
      Width = 107
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        836.083333333333400000
        124.354166666666700000
        283.104166666666700000)
      Alignment = taCenter
      AlignToBand = True
      AutoSize = True
      AutoStretch = False
      Caption = 'LabelRepresentante'
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
    object LabelEmpres: TQRLabel
      Left = 232
      Top = 234
      Width = 66
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        613.833333333333300000
        619.125000000000000000
        174.625000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'LabelEmpresa'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object LabelQuinzena: TQRLabel
      Left = 664
      Top = 66
      Width = 73
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333330000
        1756.833333333333000000
        174.625000000000000000
        193.145833333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'LabelQuinzena'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRShape12: TQRShape
      Left = 0
      Top = 355
      Width = 740
      Height = 26
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        68.791666666666670000
        0.000000000000000000
        939.270833333333300000
        1957.916666666667000000)
      Shape = qrsRectangle
    end
    object QRLabel3: TQRLabel
      Left = 219
      Top = 361
      Width = 301
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        579.437500000000000000
        955.145833333333300000
        796.395833333333300000)
      Alignment = taCenter
      AlignToBand = True
      AutoSize = True
      AutoStretch = False
      Caption = 'DISCRIMINA'#199#195'O DOS CR'#201'DITOS E D'#201'BITOS DO PER'#205'ODO'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRExpr1: TQRExpr
      Left = 128
      Top = 196
      Width = 89
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333330000
        338.666666666666700000
        518.583333333333300000
        235.479166666666700000)
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
      ParentFont = False
      ResetAfterPrint = True
      Transparent = False
      WordWrap = True
      Expression = 'CdsTmp_Rcom.RCOM_COMISSOES+CdsTmp_Rcom.RCOM_CREDITOS'
      Mask = '#0.,00'
      FontSize = 10
    end
    object QRExpr2: TQRExpr
      Left = 128
      Top = 217
      Width = 89
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333330000
        338.666666666666700000
        574.145833333333300000
        235.479166666666700000)
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
      ParentFont = False
      ResetAfterPrint = True
      Transparent = False
      WordWrap = True
      Expression = 'CdsTmp_Rcom.RCOM_DEBITOS+CdsTmp_Rcom.RCOM_IRRF'
      Mask = '#0.,00'
      FontSize = 10
    end
    object QRExpr3: TQRExpr
      Left = 128
      Top = 250
      Width = 87
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333330000
        338.666666666666700000
        661.458333333333300000
        230.187500000000000000)
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
      ParentFont = False
      ResetAfterPrint = True
      Transparent = False
      WordWrap = True
      Expression = 
        '(CdsCdsTmp_Rcom.RCOM_COMISSOES+CdsTmp_Rcom.RCOM_CREDITOS)-(CdsTm' +
        'p_Rcom.RCOM_DEBITOS+CdsTmp_Rcom.RCOM_IRRF)'
      Mask = '#0.,00'
      FontSize = 10
    end
    object LabelDatas: TQRLabel
      Left = 69
      Top = 66
      Width = 61
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        182.562500000000000000
        174.625000000000000000
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
    object QRExpr4: TQRExpr
      Left = 337
      Top = 252
      Width = 96
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333330000
        891.645833333333300000
        666.750000000000000000
        254.000000000000000000)
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
      ParentFont = False
      ResetAfterPrint = False
      Transparent = False
      WordWrap = True
      Expression = 
        '(CdsCdsTmp_Rcom.RCOM_COMISSOES+CdsTmp_Rcom.RCOM_CREDITOS)-(CdsTm' +
        'p_Rcom.RCOM_DEBITOS+CdsTmp_Rcom.RCOM_IRRF)'
      Mask = '#0.,00'
      FontSize = 10
    end
    object QRShape13: TQRShape
      Left = 1
      Top = 332
      Width = 738
      Height = 1
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        2.645833333333333000
        2.645833333333333000
        878.416666666666700000
        1952.625000000000000000)
      Shape = qrsRectangle
    end
    object QRLabel4: TQRLabel
      Left = 6
      Top = 337
      Width = 25
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        15.875000000000000000
        891.645833333333300000
        66.145833333333330000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'AG.:'
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
    object QRDBText1: TQRDBText
      Left = 32
      Top = 337
      Width = 86
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333330000
        84.666666666666670000
        891.645833333333300000
        227.541666666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = CdsTmp_Rcom
      DataField = 'REP_AGENCIA'
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
    object QRLabel18: TQRLabel
      Left = 123
      Top = 337
      Width = 48
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        325.437500000000000000
        891.645833333333300000
        127.000000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'CONTA:'
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
      Left = 172
      Top = 337
      Width = 74
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333330000
        455.083333333333300000
        891.645833333333300000
        195.791666666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = CdsTmp_Rcom
      DataField = 'REP_CONTA'
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
      Left = 250
      Top = 337
      Width = 175
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333330000
        661.458333333333300000
        891.645833333333300000
        463.020833333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = CdsTmp_Rcom
      DataField = 'REP_BANCO'
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
    object QRLabel19: TQRLabel
      Left = 431
      Top = 337
      Width = 53
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        1140.354166666667000000
        891.645833333333300000
        140.229166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'CREDOR:'
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
    object QRDBText10: TQRDBText
      Left = 485
      Top = 337
      Width = 210
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333330000
        1283.229166666667000000
        891.645833333333300000
        555.625000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = CdsTmp_Rcom
      DataField = 'REP_BANCOFAVOR'
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
  object QRSubDetail1: TQRSubDetail
    Left = 38
    Top = 422
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
    PrintBefore = False
    PrintIfEmpty = True
    object QRDBText11: TQRDBText
      Left = 8
      Top = 2
      Width = 66
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
        174.625000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = CdsTmp_Rcom
      DataField = 'EVE_DESCRI'
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
      Left = 191
      Top = 2
      Width = 67
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        505.354166666666700000
        5.291666666666667000
        177.270833333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = CdsTmp_Rcom
      DataField = 'ERP_COMPL'
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
    object QRDBText13: TQRDBText
      Left = 443
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
        1172.104166666667000000
        5.291666666666667000
        171.979166666666700000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = CdsTmp_Rcom
      DataField = 'ERP_VALOR'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      Mask = '#0.,00'
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRDBText14: TQRDBText
      Left = 514
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
        1359.958333333333000000
        5.291666666666667000
        185.208333333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = CdsTmp_Rcom
      DataField = 'EVE_TIPODC'
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
  object QRBand2: TQRBand
    Left = 38
    Top = 444
    Width = 740
    Height = 31
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
      82.020833333333330000
      1957.916666666667000000)
    BandType = rbPageFooter
    object LabelObservacao01: TQRLabel
      Left = 320
      Top = -1
      Width = 99
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        846.666666666666600000
        -2.645833333333333000
        261.937500000000000000)
      Alignment = taCenter
      AlignToBand = True
      AutoSize = True
      AutoStretch = False
      Caption = 'LabelObservacao01'
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
    object LabelObservacao02: TQRLabel
      Left = 320
      Top = 15
      Width = 99
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        846.666666666666600000
        39.687500000000000000
        261.937500000000000000)
      Alignment = taCenter
      AlignToBand = True
      AutoSize = True
      AutoStretch = False
      Caption = 'LabelObservacao02'
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
  object QRTextFilter1: TQRTextFilter
    Left = 32
    Top = 16
  end
  object CdsTmp_Rcom: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 192
    Top = 48
    object CdsTmp_RcomEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object CdsTmp_RcomREP_CODIGO: TStringField
      FieldName = 'REP_CODIGO'
      Size = 3
    end
    object CdsTmp_RcomREP_GRUPO: TStringField
      FieldName = 'REP_GRUPO'
      Size = 2
    end
    object CdsTmp_RcomREP_RAZAO: TStringField
      FieldName = 'REP_RAZAO'
      Size = 40
    end
    object CdsTmp_RcomREP_AGENCIA: TStringField
      FieldName = 'REP_AGENCIA'
      Size = 6
    end
    object CdsTmp_RcomREP_CONTA: TStringField
      FieldName = 'REP_CONTA'
      Size = 12
    end
    object CdsTmp_RcomREP_BANCO: TStringField
      FieldName = 'REP_BANCO'
      Size = 25
    end
    object CdsTmp_RcomREP_BANCOFAVOR: TStringField
      FieldName = 'REP_BANCOFAVOR'
      Size = 30
    end
    object CdsTmp_RcomREP_CGC: TStringField
      FieldName = 'REP_CGC'
      Size = 14
    end
    object CdsTmp_RcomREP_TIPO: TStringField
      FieldName = 'REP_TIPO'
      Size = 1
    end
    object CdsTmp_RcomRCOM_VENDAS: TCurrencyField
      FieldName = 'RCOM_VENDAS'
      DisplayFormat = '#,##0.00'
    end
    object CdsTmp_RcomRCOM_COMISSOES: TCurrencyField
      FieldName = 'RCOM_COMISSOES'
      DisplayFormat = '#,##0.00'
    end
    object CdsTmp_RcomRCOM_CREDITOS: TCurrencyField
      FieldName = 'RCOM_CREDITOS'
      DisplayFormat = '#,##0.00'
    end
    object CdsTmp_RcomRCOM_DEBITOS: TCurrencyField
      FieldName = 'RCOM_DEBITOS'
      DisplayFormat = '#,##0.00'
    end
    object CdsTmp_RcomRCOM_IRRF: TCurrencyField
      FieldName = 'RCOM_IRRF'
      DisplayFormat = '#,##0.00'
    end
  end
  object DsTmp_Rcom: TDataSource
    DataSet = CdsTmp_Rcom
    Left = 224
    Top = 48
  end
  object SqlCdsEventos: TSQLClientDataSet
    CommandText = 
      'SELECT'#13#10'E1.EMP_CODIGO,'#13#10'E1.REP_CODIGO,'#13#10'E1.EVE_CODIGO,'#13#10'E2.EVE_D' +
      'ESCRI,'#13#10'E1.ERP_VALOR,'#13#10'E1.ERP_TIPO,'#13#10'E1.ERP_DATA,'#13#10'E1.ERP_COMPL,' +
      #13#10'E1.ERP_CODIGO,'#13#10'E1.ERP_IMPOSTO'#13#10'FROM EVE_RP01 E1'#13#10'JOIN EVE0000' +
      ' E2 ON (E2.EVE_CODIGO = E1.EVE_CODIGO)'#13#10'WHERE ERP_DATA BETWEEN '#39 +
      '01/11/2004'#39' AND '#39'11/15/2004'#39#13#10'ORDER BY REP_CODIGO'#13#10
    Aggregates = <>
    Options = [poAllowCommandText]
    ObjectView = True
    Params = <>
    DBConnection = DataCadastros.SQLConnection1
    Left = 192
    Top = 80
    object SqlCdsEventosEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object SqlCdsEventosREP_CODIGO: TStringField
      FieldName = 'REP_CODIGO'
      Size = 3
    end
    object SqlCdsEventosEVE_CODIGO: TStringField
      FieldName = 'EVE_CODIGO'
      Size = 2
    end
    object SqlCdsEventosEVE_DESCRI: TStringField
      FieldName = 'EVE_DESCRI'
      Size = 25
    end
    object SqlCdsEventosERP_VALOR: TFMTBCDField
      FieldName = 'ERP_VALOR'
      Precision = 15
      Size = 8
    end
    object SqlCdsEventosERP_TIPO: TStringField
      FieldName = 'ERP_TIPO'
      Size = 1
    end
    object SqlCdsEventosERP_DATA: TSQLTimeStampField
      FieldName = 'ERP_DATA'
    end
    object SqlCdsEventosERP_COMPL: TStringField
      FieldName = 'ERP_COMPL'
      Size = 30
    end
    object SqlCdsEventosERP_CODIGO: TStringField
      FieldName = 'ERP_CODIGO'
      Required = True
      Size = 5
    end
    object SqlCdsEventosERP_IMPOSTO: TStringField
      FieldName = 'ERP_IMPOSTO'
      Size = 1
    end
  end
  object DsEventos: TDataSource
    DataSet = SqlCdsEventos
    Left = 224
    Top = 80
  end
end
