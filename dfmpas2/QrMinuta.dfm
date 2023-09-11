object RelMinuta: TRelMinuta
  Left = 0
  Top = 0
  Width = 816
  Height = 1056
  Frame.Color = clBlack
  Frame.DrawTop = False
  Frame.DrawBottom = False
  Frame.DrawLeft = False
  Frame.DrawRight = False
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
    250.000000000000000000
    2794.000000000000000000
    250.000000000000000000
    2159.000000000000000000
    150.000000000000000000
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
    Left = 57
    Top = 94
    Width = 703
    Height = 888
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
      2349.500000000000000000
      1860.020833333333000000)
    BandType = rbPageHeader
    object QRDBText1: TQRDBText
      Left = 140
      Top = 58
      Width = 81
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        370.416666666666700000
        153.458333333333300000
        214.312500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = FormNFImprime.TbNFiscal
      DataField = 'NF_NOMECLI'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Courier'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRLabel2: TQRLabel
      Left = 261
      Top = 6
      Width = 145
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        690.562500000000000000
        15.875000000000000000
        383.645833333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'MINUTA DE DESPACHO'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Courier'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRLabel1: TQRLabel
      Left = 12
      Top = 35
      Width = 121
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        31.750000000000000000
        92.604166666666670000
        320.145833333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'REMETENTE     :'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Courier'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRLabel3: TQRLabel
      Left = 12
      Top = 58
      Width = 113
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        31.750000000000000000
        153.458333333333300000
        298.979166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'DESTINAT'#193'RIO :'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Courier'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object LabelEmpresa: TQRLabel
      Left = 140
      Top = 35
      Width = 97
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        370.416666666666700000
        92.604166666666670000
        256.645833333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'LABELEMPRESA'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Courier'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object LabEndereco: TQRLabel
      Left = 140
      Top = 78
      Width = 89
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        370.416666666666700000
        206.375000000000000000
        235.479166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'LabEndereco'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Courier'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object LabCidade: TQRLabel
      Left = 140
      Top = 99
      Width = 73
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        370.416666666666700000
        261.937500000000000000
        193.145833333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'LabCidade'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Courier'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object LabEstado: TQRLabel
      Left = 357
      Top = 99
      Width = 73
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        944.562500000000000000
        261.937500000000000000
        193.145833333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'LabEstado'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Courier'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRLabel4: TQRLabel
      Left = 12
      Top = 128
      Width = 81
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        31.750000000000000000
        338.666666666666700000
        214.312500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'QUANTIDADE'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Courier'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRLabel5: TQRLabel
      Left = 140
      Top = 128
      Width = 73
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        370.416666666666700000
        338.666666666666700000
        193.145833333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'DESCRI'#199#195'O'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Courier'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRLabel6: TQRLabel
      Left = 502
      Top = 128
      Width = 33
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1328.208333333333000000
        338.666666666666700000
        87.312500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'PESO'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Courier'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRDBText2: TQRDBText
      Left = 23
      Top = 147
      Width = 57
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        60.854166666666670000
        388.937500000000000000
        150.812500000000000000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = FormNFImprime.TbNFiscal
      DataField = 'NF_QTDE'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Courier'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRDBText3: TQRDBText
      Left = 140
      Top = 147
      Width = 81
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        370.416666666666700000
        388.937500000000000000
        214.312500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = FormNFImprime.TbNFiscal
      DataField = 'NF_ESPECIE'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Courier'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRDBText4: TQRDBText
      Left = 471
      Top = 147
      Width = 81
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1246.187500000000000000
        388.937500000000000000
        214.312500000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = FormNFImprime.TbNFiscal
      DataField = 'NF_PESOBRU'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Courier'
      Font.Style = []
      Mask = '#0.,000'
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRDBText5: TQRDBText
      Left = 140
      Top = 175
      Width = 97
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        370.416666666666700000
        463.020833333333300000
        256.645833333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = FormNFImprime.TbNFiscal
      DataField = 'NF_MINUTAOBS'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Courier'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRDBText6: TQRDBText
      Left = 140
      Top = 194
      Width = 97
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        370.416666666666700000
        513.291666666666700000
        256.645833333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = FormNFImprime.TbNFiscal
      DataField = 'NF_MINUTAVAL'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Courier'
      Font.Style = []
      Mask = 'R$  #0.,00'
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRShape1: TQRShape
      Left = 1
      Top = 119
      Width = 700
      Height = 1
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        2.645833333333333000
        2.645833333333333000
        314.854166666666700000
        1852.083333333333000000)
      Shape = qrsRectangle
    end
    object QRShape2: TQRShape
      Left = 0
      Top = 216
      Width = 700
      Height = 1
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        2.645833333333333000
        0.000000000000000000
        571.500000000000000000
        1852.083333333333000000)
      Shape = qrsRectangle
    end
    object QRDBText8: TQRDBText
      Left = 146
      Top = 222
      Width = 81
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        386.291666666666700000
        587.375000000000000000
        214.312500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = FormNFImprime.TbNFiscal
      DataField = 'NF_NU_NOTA'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Courier'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRDBText10: TQRDBText
      Left = 373
      Top = 222
      Width = 89
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        986.895833333333300000
        587.375000000000000000
        235.479166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = FormNFImprime.TbNFiscal
      DataField = 'NF_TOT_NOTA'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Courier'
      Font.Style = []
      Mask = 'R$  #0.,00'
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRDBText11: TQRDBText
      Left = 12
      Top = 246
      Width = 89
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        31.750000000000000000
        650.875000000000000000
        235.479166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = FormNFImprime.TbNFiscal
      DataField = 'NF_TRP_NOME'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Courier'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object LabFrete: TQRLabel
      Left = 12
      Top = 266
      Width = 65
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        31.750000000000000000
        703.791666666666700000
        171.979166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'LabFrete'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Courier'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRLabel7: TQRLabel
      Left = 400
      Top = 295
      Width = 185
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1058.333333333333000000
        780.520833333333300000
        489.479166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Assinatura do Recebedor'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Courier'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRShape3: TQRShape
      Left = 322
      Top = 290
      Width = 323
      Height = 1
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        2.645833333333333000
        851.958333333333300000
        767.291666666666700000
        854.604166666666700000)
      Shape = qrsRectangle
    end
    object QRSysData1: TQRSysData
      Left = 58
      Top = 298
      Width = 49
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        153.458333333333300000
        788.458333333333300000
        129.645833333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      Color = clWhite
      Data = qrsDate
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Courier'
      Font.Style = []
      ParentFont = False
      Transparent = False
      FontSize = 9
    end
    object QRLabel8: TQRLabel
      Left = 13
      Top = 298
      Width = 41
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        34.395833333333330000
        788.458333333333300000
        108.479166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'DATA:'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Courier'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRLabel9: TQRLabel
      Left = 12
      Top = 222
      Width = 129
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        31.750000000000000000
        587.375000000000000000
        341.312500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'NOTA FISCAL No.:'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Courier'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRLabel10: TQRLabel
      Left = 314
      Top = 222
      Width = 57
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        830.791666666666700000
        587.375000000000000000
        150.812500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'VALOR :'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Courier'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRLabel11: TQRLabel
      Left = 3
      Top = 406
      Width = 705
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        7.937500000000000000
        1074.208333333333000000
        1865.312500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 
        '- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ' +
        '- - - - - - - - - - - - '
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Courier'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRShape7: TQRShape
      Left = 1
      Top = 2
      Width = 700
      Height = 1
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        2.645833333333333000
        2.645833333333333000
        5.291666666666667000
        1852.083333333333000000)
      Shape = qrsRectangle
    end
    object QRShape8: TQRShape
      Left = 0
      Top = 352
      Width = 700
      Height = 1
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        2.645833333333333000
        0.000000000000000000
        931.333333333333300000
        1852.083333333333000000)
      Shape = qrsRectangle
    end
    object QRLabel28: TQRLabel
      Left = 640
      Top = 334
      Width = 49
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1693.333333333333000000
        883.708333333333300000
        129.645833333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = '1a.Via'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Courier'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
  end
  object QRBand2: TQRBand
    Left = 57
    Top = 982
    Width = 703
    Height = 10
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
      26.458333333333330000
      1860.020833333333000000)
    BandType = rbDetail
  end
  object QRDBText7: TQRDBText
    Left = 196
    Top = 649
    Width = 81
    Height = 17
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    Size.Values = (
      44.979166666666670000
      518.583333333333300000
      1717.145833333333000000
      214.312500000000000000)
    Alignment = taLeftJustify
    AlignToBand = False
    AutoSize = True
    AutoStretch = False
    Color = clWhite
    DataSet = FormNFImprime.TbNFiscal
    DataField = 'NF_NOMECLI'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Courier'
    Font.Style = []
    ParentFont = False
    Transparent = False
    WordWrap = True
    FontSize = 9
  end
  object QRLabel12: TQRLabel
    Left = 317
    Top = 597
    Width = 145
    Height = 17
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    Size.Values = (
      44.979166666666670000
      838.729166666666700000
      1579.562500000000000000
      383.645833333333300000)
    Alignment = taLeftJustify
    AlignToBand = False
    AutoSize = True
    AutoStretch = False
    Caption = 'MINUTA DE DESPACHO'
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Courier'
    Font.Style = []
    ParentFont = False
    Transparent = False
    WordWrap = True
    FontSize = 9
  end
  object QRLabel13: TQRLabel
    Left = 68
    Top = 626
    Width = 121
    Height = 17
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    Size.Values = (
      44.979166666666670000
      179.916666666666700000
      1656.291666666667000000
      320.145833333333300000)
    Alignment = taLeftJustify
    AlignToBand = False
    AutoSize = True
    AutoStretch = False
    Caption = 'REMETENTE     :'
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Courier'
    Font.Style = []
    ParentFont = False
    Transparent = False
    WordWrap = True
    FontSize = 9
  end
  object QRLabel14: TQRLabel
    Left = 68
    Top = 649
    Width = 113
    Height = 17
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    Size.Values = (
      44.979166666666670000
      179.916666666666700000
      1717.145833333333000000
      298.979166666666700000)
    Alignment = taLeftJustify
    AlignToBand = False
    AutoSize = True
    AutoStretch = False
    Caption = 'DESTINAT'#193'RIO :'
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Courier'
    Font.Style = []
    ParentFont = False
    Transparent = False
    WordWrap = True
    FontSize = 9
  end
  object LABELEMPRESA1: TQRLabel
    Left = 196
    Top = 626
    Width = 97
    Height = 17
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    Size.Values = (
      44.979166666666670000
      518.583333333333300000
      1656.291666666667000000
      256.645833333333300000)
    Alignment = taLeftJustify
    AlignToBand = False
    AutoSize = True
    AutoStretch = False
    Caption = 'LABELEMPRESA'
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Courier'
    Font.Style = []
    ParentFont = False
    Transparent = False
    WordWrap = True
    FontSize = 9
  end
  object LabEndereco1: TQRLabel
    Left = 196
    Top = 669
    Width = 89
    Height = 17
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    Size.Values = (
      44.979166666666670000
      518.583333333333300000
      1770.062500000000000000
      235.479166666666700000)
    Alignment = taLeftJustify
    AlignToBand = False
    AutoSize = True
    AutoStretch = False
    Caption = 'LabEndereco'
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Courier'
    Font.Style = []
    ParentFont = False
    Transparent = False
    WordWrap = True
    FontSize = 9
  end
  object LabCidade1: TQRLabel
    Left = 196
    Top = 690
    Width = 73
    Height = 17
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    Size.Values = (
      44.979166666666670000
      518.583333333333300000
      1825.625000000000000000
      193.145833333333300000)
    Alignment = taLeftJustify
    AlignToBand = False
    AutoSize = True
    AutoStretch = False
    Caption = 'LabCidade'
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Courier'
    Font.Style = []
    ParentFont = False
    Transparent = False
    WordWrap = True
    FontSize = 9
  end
  object LabEstado1: TQRLabel
    Left = 413
    Top = 690
    Width = 73
    Height = 17
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    Size.Values = (
      44.979166666666670000
      1092.729166666667000000
      1825.625000000000000000
      193.145833333333300000)
    Alignment = taLeftJustify
    AlignToBand = False
    AutoSize = True
    AutoStretch = False
    Caption = 'LabEstado'
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Courier'
    Font.Style = []
    ParentFont = False
    Transparent = False
    WordWrap = True
    FontSize = 9
  end
  object QRLabel19: TQRLabel
    Left = 73
    Top = 719
    Width = 81
    Height = 17
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    Size.Values = (
      44.979166666666670000
      193.145833333333300000
      1902.354166666667000000
      214.312500000000000000)
    Alignment = taLeftJustify
    AlignToBand = False
    AutoSize = True
    AutoStretch = False
    Caption = 'QUANTIDADE'
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Courier'
    Font.Style = []
    ParentFont = False
    Transparent = False
    WordWrap = True
    FontSize = 9
  end
  object QRLabel20: TQRLabel
    Left = 196
    Top = 719
    Width = 73
    Height = 17
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    Size.Values = (
      44.979166666666670000
      518.583333333333300000
      1902.354166666667000000
      193.145833333333300000)
    Alignment = taLeftJustify
    AlignToBand = False
    AutoSize = True
    AutoStretch = False
    Caption = 'DESCRI'#199#195'O'
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Courier'
    Font.Style = []
    ParentFont = False
    Transparent = False
    WordWrap = True
    FontSize = 9
  end
  object QRLabel21: TQRLabel
    Left = 558
    Top = 719
    Width = 33
    Height = 17
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    Size.Values = (
      44.979166666666670000
      1476.375000000000000000
      1902.354166666667000000
      87.312500000000000000)
    Alignment = taLeftJustify
    AlignToBand = False
    AutoSize = True
    AutoStretch = False
    Caption = 'PESO'
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Courier'
    Font.Style = []
    ParentFont = False
    Transparent = False
    WordWrap = True
    FontSize = 9
  end
  object QRDBText9: TQRDBText
    Left = 79
    Top = 738
    Width = 57
    Height = 17
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    Size.Values = (
      44.979166666666670000
      209.020833333333300000
      1952.625000000000000000
      150.812500000000000000)
    Alignment = taCenter
    AlignToBand = False
    AutoSize = True
    AutoStretch = False
    Color = clWhite
    DataSet = FormNFImprime.TbNFiscal
    DataField = 'NF_QTDE'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Courier'
    Font.Style = []
    ParentFont = False
    Transparent = False
    WordWrap = True
    FontSize = 9
  end
  object QRDBText12: TQRDBText
    Left = 196
    Top = 738
    Width = 81
    Height = 17
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    Size.Values = (
      44.979166666666670000
      518.583333333333300000
      1952.625000000000000000
      214.312500000000000000)
    Alignment = taLeftJustify
    AlignToBand = False
    AutoSize = True
    AutoStretch = False
    Color = clWhite
    DataSet = FormNFImprime.TbNFiscal
    DataField = 'NF_ESPECIE'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Courier'
    Font.Style = []
    ParentFont = False
    Transparent = False
    WordWrap = True
    FontSize = 9
  end
  object QRDBText13: TQRDBText
    Left = 527
    Top = 738
    Width = 81
    Height = 17
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    Size.Values = (
      44.979166666666670000
      1394.354166666667000000
      1952.625000000000000000
      214.312500000000000000)
    Alignment = taRightJustify
    AlignToBand = False
    AutoSize = True
    AutoStretch = False
    Color = clWhite
    DataSet = FormNFImprime.TbNFiscal
    DataField = 'NF_PESOBRU'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Courier'
    Font.Style = []
    Mask = '#0.,000'
    ParentFont = False
    Transparent = False
    WordWrap = True
    FontSize = 9
  end
  object QRDBText14: TQRDBText
    Left = 196
    Top = 766
    Width = 97
    Height = 17
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    Size.Values = (
      44.979166666666670000
      518.583333333333300000
      2026.708333333333000000
      256.645833333333300000)
    Alignment = taLeftJustify
    AlignToBand = False
    AutoSize = True
    AutoStretch = False
    Color = clWhite
    DataSet = FormNFImprime.TbNFiscal
    DataField = 'NF_MINUTAOBS'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Courier'
    Font.Style = []
    ParentFont = False
    Transparent = False
    WordWrap = True
    FontSize = 9
  end
  object QRDBText15: TQRDBText
    Left = 196
    Top = 785
    Width = 97
    Height = 17
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    Size.Values = (
      44.979166666666670000
      518.583333333333300000
      2076.979166666667000000
      256.645833333333300000)
    Alignment = taLeftJustify
    AlignToBand = False
    AutoSize = True
    AutoStretch = False
    Color = clWhite
    DataSet = FormNFImprime.TbNFiscal
    DataField = 'NF_MINUTAVAL'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Courier'
    Font.Style = []
    Mask = 'R$  #0.,00'
    ParentFont = False
    Transparent = False
    WordWrap = True
    FontSize = 9
  end
  object QRShape4: TQRShape
    Left = 57
    Top = 710
    Width = 700
    Height = 1
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    Size.Values = (
      2.645833333333333000
      150.812500000000000000
      1878.541666666667000000
      1852.083333333333000000)
    Shape = qrsRectangle
  end
  object QRShape5: TQRShape
    Left = 61
    Top = 807
    Width = 700
    Height = 1
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    Size.Values = (
      2.645833333333333000
      161.395833333333300000
      2135.187500000000000000
      1852.083333333333000000)
    Shape = qrsRectangle
  end
  object QRDBText16: TQRDBText
    Left = 203
    Top = 813
    Width = 81
    Height = 17
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    Size.Values = (
      44.979166666666670000
      537.104166666666700000
      2151.062500000000000000
      214.312500000000000000)
    Alignment = taLeftJustify
    AlignToBand = False
    AutoSize = True
    AutoStretch = False
    Color = clWhite
    DataSet = FormNFImprime.TbNFiscal
    DataField = 'NF_NU_NOTA'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Courier'
    Font.Style = []
    ParentFont = False
    Transparent = False
    WordWrap = True
    FontSize = 9
  end
  object QRDBText17: TQRDBText
    Left = 429
    Top = 813
    Width = 89
    Height = 17
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    Size.Values = (
      44.979166666666670000
      1135.062500000000000000
      2151.062500000000000000
      235.479166666666700000)
    Alignment = taLeftJustify
    AlignToBand = False
    AutoSize = True
    AutoStretch = False
    Color = clWhite
    DataSet = FormNFImprime.TbNFiscal
    DataField = 'NF_TOT_NOTA'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Courier'
    Font.Style = []
    Mask = 'R$  #0.,00'
    ParentFont = False
    Transparent = False
    WordWrap = True
    FontSize = 9
  end
  object QRDBText18: TQRDBText
    Left = 68
    Top = 837
    Width = 89
    Height = 17
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    Size.Values = (
      44.979166666666670000
      179.916666666666700000
      2214.562500000000000000
      235.479166666666700000)
    Alignment = taLeftJustify
    AlignToBand = False
    AutoSize = True
    AutoStretch = False
    Color = clWhite
    DataSet = FormNFImprime.TbNFiscal
    DataField = 'NF_TRP_NOME'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Courier'
    Font.Style = []
    ParentFont = False
    Transparent = False
    WordWrap = True
    FontSize = 9
  end
  object LabFrete1: TQRLabel
    Left = 68
    Top = 857
    Width = 65
    Height = 17
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    Size.Values = (
      44.979166666666670000
      179.916666666666700000
      2267.479166666667000000
      171.979166666666700000)
    Alignment = taLeftJustify
    AlignToBand = False
    AutoSize = True
    AutoStretch = False
    Caption = 'LabFrete'
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Courier'
    Font.Style = []
    ParentFont = False
    Transparent = False
    WordWrap = True
    FontSize = 9
  end
  object QRLabel23: TQRLabel
    Left = 456
    Top = 886
    Width = 185
    Height = 17
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    Size.Values = (
      44.979166666666670000
      1206.500000000000000000
      2344.208333333333000000
      489.479166666666700000)
    Alignment = taLeftJustify
    AlignToBand = False
    AutoSize = True
    AutoStretch = False
    Caption = 'Assinatura do Recebedor'
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Courier'
    Font.Style = []
    ParentFont = False
    Transparent = False
    WordWrap = True
    FontSize = 9
  end
  object QRShape6: TQRShape
    Left = 378
    Top = 881
    Width = 323
    Height = 1
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    Size.Values = (
      2.645833333333333000
      1000.125000000000000000
      2330.979166666667000000
      854.604166666666700000)
    Shape = qrsRectangle
  end
  object QRSysData2: TQRSysData
    Left = 114
    Top = 889
    Width = 49
    Height = 17
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    Size.Values = (
      44.979166666666670000
      301.625000000000000000
      2352.145833333333000000
      129.645833333333300000)
    Alignment = taLeftJustify
    AlignToBand = False
    AutoSize = True
    Color = clWhite
    Data = qrsDate
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Courier'
    Font.Style = []
    ParentFont = False
    Transparent = False
    FontSize = 9
  end
  object QRLabel24: TQRLabel
    Left = 69
    Top = 889
    Width = 41
    Height = 17
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    Size.Values = (
      44.979166666666670000
      182.562500000000000000
      2352.145833333333000000
      108.479166666666700000)
    Alignment = taLeftJustify
    AlignToBand = False
    AutoSize = True
    AutoStretch = False
    Caption = 'DATA:'
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Courier'
    Font.Style = []
    ParentFont = False
    Transparent = False
    WordWrap = True
    FontSize = 9
  end
  object QRLabel25: TQRLabel
    Left = 68
    Top = 813
    Width = 129
    Height = 17
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    Size.Values = (
      44.979166666666670000
      179.916666666666700000
      2151.062500000000000000
      341.312500000000000000)
    Alignment = taLeftJustify
    AlignToBand = False
    AutoSize = True
    AutoStretch = False
    Caption = 'NOTA FISCAL No.:'
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Courier'
    Font.Style = []
    ParentFont = False
    Transparent = False
    WordWrap = True
    FontSize = 9
  end
  object QRLabel26: TQRLabel
    Left = 370
    Top = 813
    Width = 57
    Height = 17
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    Size.Values = (
      44.979166666666670000
      978.958333333333300000
      2151.062500000000000000
      150.812500000000000000)
    Alignment = taLeftJustify
    AlignToBand = False
    AutoSize = True
    AutoStretch = False
    Caption = 'VALOR :'
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Courier'
    Font.Style = []
    ParentFont = False
    Transparent = False
    WordWrap = True
    FontSize = 9
  end
  object QRShape9: TQRShape
    Left = 57
    Top = 593
    Width = 700
    Height = 1
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    Size.Values = (
      2.645833333333333000
      150.812500000000000000
      1568.979166666667000000
      1852.083333333333000000)
    Shape = qrsRectangle
  end
  object QRShape11: TQRShape
    Left = 60
    Top = 943
    Width = 700
    Height = 1
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    Size.Values = (
      2.645833333333333000
      158.750000000000000000
      2495.020833333333000000
      1852.083333333333000000)
    Shape = qrsRectangle
  end
  object QRLabel29: TQRLabel
    Left = 695
    Top = 925
    Width = 49
    Height = 17
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    Size.Values = (
      44.979166666666670000
      1838.854166666667000000
      2447.395833333333000000
      129.645833333333300000)
    Alignment = taLeftJustify
    AlignToBand = False
    AutoSize = True
    AutoStretch = False
    Caption = '2a.Via'
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Courier'
    Font.Style = []
    ParentFont = False
    Transparent = False
    WordWrap = True
    FontSize = 9
  end
  object QRTextFilter1: TQRTextFilter
    Left = 32
    Top = 16
  end
end
