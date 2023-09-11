object RelDuplicata: TRelDuplicata
  Left = 0
  Top = 0
  Width = 816
  Height = 1248
  Frame.Color = clBlack
  Frame.DrawTop = False
  Frame.DrawBottom = False
  Frame.DrawLeft = False
  Frame.DrawRight = False
  DataSet = TQReceberParc02
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
  Options = []
  Page.Columns = 1
  Page.Orientation = poPortrait
  Page.PaperSize = Folio
  Page.Values = (
    0.000000000000000000
    3302.000000000000000000
    0.000000000000000000
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
  ReportTitle = 'Duplicatas a serem Impressas'
  SnapToGrid = True
  Units = MM
  Zoom = 100
  object QRBand1: TQRBand
    Left = 38
    Top = 0
    Width = 740
    Height = 578
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    AlignToBottom = False
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Times New Roman'
    Font.Style = []
    ForceNewColumn = False
    ForceNewPage = False
    ParentFont = False
    Size.Values = (
      1529.291666666667000000
      1957.916666666667000000)
    BandType = rbDetail
    object QRDBText1: TQRDBText
      Left = 566
      Top = 90
      Width = 97
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333330000
        1497.541666666667000000
        238.125000000000000000
        256.645833333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = TQReceber02
      DataField = 'FAT_OPERACAO'
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRDBText2: TQRDBText
      Left = 530
      Top = 110
      Width = 75
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333330000
        1402.291666666667000000
        291.041666666666700000
        198.437500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = TQReceberParc02
      DataField = 'FPC_DTEMIS'
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRDBText3: TQRDBText
      Left = 156
      Top = 168
      Width = 79
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        412.750000000000000000
        444.500000000000000000
        209.020833333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = TQReceberParc02
      DataField = 'FAT_CODIGO'
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRDBText4: TQRDBText
      Left = 288
      Top = 168
      Width = 76
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        762.000000000000000000
        444.500000000000000000
        201.083333333333300000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = TQReceberParc02
      DataField = 'FPC_VLPARC'
      Mask = '#0.,00'
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRDBText5: TQRDBText
      Left = 400
      Top = 168
      Width = 63
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333330000
        1058.333333333333000000
        444.500000000000000000
        166.687500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataField = 'QRDBText5'
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRDBText6: TQRDBText
      Left = 518
      Top = 168
      Width = 78
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333330000
        1370.541666666667000000
        444.500000000000000000
        206.375000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = TQReceberParc02
      DataField = 'FPC_VENCTO'
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRDBText7: TQRDBText
      Left = 192
      Top = 202
      Width = 76
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        508.000000000000000000
        534.458333333333300000
        201.083333333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = TQReceberParc02
      DataField = 'FPC_DESCTO'
      Mask = '#0.,00'
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRDBText8: TQRDBText
      Left = 508
      Top = 202
      Width = 76
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333330000
        1344.083333333333000000
        534.458333333333300000
        201.083333333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = TQReceberParc02
      DataField = 'FPC_DTDESC'
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRLabel1: TQRLabel
      Left = 216
      Top = 220
      Width = 74
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        571.500000000000000000
        582.083333333333300000
        195.791666666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'camp. codi'#231'oes'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRLabel2: TQRLabel
      Left = 508
      Top = 218
      Width = 64
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333330000
        1344.083333333333000000
        576.791666666666700000
        169.333333333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'camp. codigo'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRDBText9: TQRDBText
      Left = 226
      Top = 254
      Width = 69
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        597.958333333333300000
        672.041666666666700000
        182.562500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = TQCliente02
      DataField = 'CLI_RAZAO'
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRDBText10: TQRDBText
      Left = 226
      Top = 270
      Width = 73
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333330000
        597.958333333333300000
        714.375000000000000000
        193.145833333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = TQCliente02
      DataField = 'CLI_ENDERE'
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRDBText11: TQRDBText
      Left = 552
      Top = 268
      Width = 72
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333330000
        1460.500000000000000000
        709.083333333333300000
        190.500000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = TQCliente02
      DataField = 'CLI_BAIRRO'
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRDBText12: TQRDBText
      Left = 226
      Top = 286
      Width = 72
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333330000
        597.958333333333300000
        756.708333333333300000
        190.500000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = TQCliente02
      DataField = 'CLI_CIDADE'
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRDBText13: TQRDBText
      Left = 474
      Top = 286
      Width = 42
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333330000
        1254.125000000000000000
        756.708333333333300000
        111.125000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = TQCliente02
      DataField = 'CLI_UF'
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRDBText14: TQRDBText
      Left = 540
      Top = 286
      Width = 48
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333330000
        1428.750000000000000000
        756.708333333333300000
        127.000000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = TQCliente02
      DataField = 'CLI_CEP'
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRDBText15: TQRDBText
      Left = 664
      Top = 284
      Width = 58
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333330000
        1756.833333333333000000
        751.416666666666700000
        153.458333333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = TQCliente02
      DataField = 'CLI_FONE'
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRDBText16: TQRDBText
      Left = 226
      Top = 300
      Width = 51
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333330000
        597.958333333333300000
        793.750000000000000000
        134.937500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = TQCliente02
      DataField = 'CLI_CGC'
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRDBText17: TQRDBText
      Left = 588
      Top = 302
      Width = 53
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333330000
        1555.750000000000000000
        799.041666666666700000
        140.229166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = TQCliente02
      DataField = 'CLI_INSC'
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRDBText18: TQRDBText
      Left = 226
      Top = 336
      Width = 83
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333330000
        597.958333333333300000
        889.000000000000000000
        219.604166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = TQCliente02
      DataField = 'CLI_ENDENTR'
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRLabel3: TQRLabel
      Left = 226
      Top = 316
      Width = 89
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333330000
        597.958333333333300000
        836.083333333333300000
        235.479166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'camp. pra'#231'a pagto'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
  end
  object TQReceberParc02: TQuery
    DatabaseName = 'RwDbAdm'
    SQL.Strings = (
      
        'SELECT FAT_CODIGO, FPC_DTEMIS, FPC_DESCTO, FPC_DTDESC, FPC_VENCT' +
        'O, FPC_VLPARC, CLI_CODIGO'
      'FROM FAT_PC01 Fat_pc01')
    Left = 80
    Top = 8
    object TQReceberParc02FAT_CODIGO: TStringField
      FieldName = 'FAT_CODIGO'
      Origin = 'FAT_PC01.FAT_CODIGO'
      Size = 6
    end
    object TQReceberParc02FPC_DTEMIS: TDateTimeField
      FieldName = 'FPC_DTEMIS'
      Origin = 'FAT_PC01.FPC_DTEMIS'
    end
    object TQReceberParc02FPC_DESCTO: TFloatField
      FieldName = 'FPC_DESCTO'
      Origin = 'FAT_PC01.FPC_DESCTO'
    end
    object TQReceberParc02FPC_DTDESC: TDateTimeField
      FieldName = 'FPC_DTDESC'
      Origin = 'FAT_PC01.FPC_DTDESC'
    end
    object TQReceberParc02FPC_VENCTO: TDateTimeField
      FieldName = 'FPC_VENCTO'
      Origin = 'FAT_PC01.FPC_VENCTO'
    end
    object TQReceberParc02FPC_VLPARC: TFloatField
      FieldName = 'FPC_VLPARC'
      Origin = 'FAT_PC01.FPC_VLPARC'
    end
    object TQReceberParc02CLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Origin = 'FAT_PC01.CLI_CODIGO'
      Size = 5
    end
  end
  object TQCliente02: TQuery
    DatabaseName = 'RwDbAdm'
    DataSource = TQDSReceberParcQR
    SQL.Strings = (
      
        'SELECT CLI_CODIGO, CLI_RAZAO, CLI_ENDERE, CLI_BAIRRO, CLI_CIDADE' +
        ', CLI_CEP, CLI_FONE, CLI_INSC, CLI_CGC, CLI_ENDENTR, CLI_UF'
      'FROM CLI0000 Cli0000')
    Left = 176
    Top = 8
    object TQCliente02CLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Origin = 'CLI0000.CLI_CODIGO'
      Size = 5
    end
    object TQCliente02CLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      Origin = 'CLI0000.CLI_RAZAO'
      Size = 45
    end
    object TQCliente02CLI_ENDERE: TStringField
      FieldName = 'CLI_ENDERE'
      Origin = 'CLI0000.CLI_ENDERE'
      Size = 40
    end
    object TQCliente02CLI_BAIRRO: TStringField
      FieldName = 'CLI_BAIRRO'
      Origin = 'CLI0000.CLI_BAIRRO'
      Size = 25
    end
    object TQCliente02CLI_CIDADE: TStringField
      FieldName = 'CLI_CIDADE'
      Origin = 'CLI0000.CLI_CIDADE'
      Size = 30
    end
    object TQCliente02CLI_CEP: TStringField
      FieldName = 'CLI_CEP'
      Origin = 'CLI0000.CLI_CEP'
      EditMask = '99999\-999;0;_'
      Size = 8
    end
    object TQCliente02CLI_FONE: TStringField
      FieldName = 'CLI_FONE'
      Origin = 'CLI0000.CLI_FONE'
      EditMask = '\(999\)9999\-9999;0;_'
      Size = 11
    end
    object TQCliente02CLI_INSC: TStringField
      FieldName = 'CLI_INSC'
      Origin = 'CLI0000.CLI_INSC'
      Size = 18
    end
    object TQCliente02CLI_CGC: TStringField
      FieldName = 'CLI_CGC'
      Origin = 'CLI0000.CLI_CGC'
      EditMask = '99.999.999/9999-99;0;_'
      Size = 14
    end
    object TQCliente02CLI_UF: TStringField
      FieldName = 'CLI_UF'
      Origin = 'CLI0000.CLI_UF'
      Size = 2
    end
  end
  object TQReceber02: TQuery
    DatabaseName = 'RwDbAdm'
    DataSource = TQDSReceberParcQR
    SQL.Strings = (
      'SELECT FAT_CODIGO, FAT_OPERACAO, CLI_CODIGO'
      'FROM FAT0000 Fat0000')
    Left = 224
    Top = 8
    object TQReceber02FAT_CODIGO: TStringField
      FieldName = 'FAT_CODIGO'
      Origin = 'FAT0000.FAT_CODIGO'
      Size = 6
    end
    object TQReceber02FAT_OPERACAO: TStringField
      FieldName = 'FAT_OPERACAO'
      Origin = 'FAT0000.FAT_OPERACAO'
      Size = 3
    end
    object TQReceber02CLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Origin = 'FAT0000.CLI_CODIGO'
      Size = 5
    end
  end
  object TQDSReceberParcQR: TDataSource
    DataSet = TQReceberParc02
    Left = 112
    Top = 8
  end
end
