object RelBloquetoBanestado: TRelBloquetoBanestado
  Tag = 1
  Left = 0
  Top = 0
  Width = 756
  Height = 680
  Frame.Color = clBlack
  Frame.DrawTop = False
  Frame.DrawBottom = False
  Frame.DrawLeft = False
  Frame.DrawRight = False
  DataSet = TQReceberQR
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
  Page.PaperSize = Custom
  Page.Values = (
    0.000000000000000000
    1800.000000000000000000
    70.000000000000000000
    2000.000000000000000000
    100.200000000000000000
    100.200000000000000000
    0.000000000000000000)
  PrinterSettings.Copies = 1
  PrinterSettings.Duplex = False
  PrinterSettings.FirstPage = 0
  PrinterSettings.LastPage = 0
  PrinterSettings.OutputBin = Auto
  PrintIfEmpty = True
  ReportTitle = 'Bloqueto Banestado.'
  SnapToGrid = True
  Units = MM
  Zoom = 100
  object QRBand1: TQRBand
    Left = 38
    Top = 26
    Width = 680
    Height = 385
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
      1018.600000000000000000
      1799.166666666667000000)
    BandType = rbDetail
    object QRDBText1: TQRDBText
      Left = 514
      Top = 29
      Width = 87
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1359.958333333333000000
        76.729166666666670000
        230.187500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = TQReceberQR
      DataField = 'FPC_VENCTO'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRDBText2: TQRDBText
      Left = 20
      Top = 84
      Width = 82
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        52.916666666666670000
        222.250000000000000000
        216.958333333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = TQReceberQR
      DataField = 'FPC_DTEMIS'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRDBText3: TQRDBText
      Left = 136
      Top = 84
      Width = 83
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        359.833333333333300000
        222.250000000000000000
        219.604166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = TQReceberQR
      DataField = 'FAT_CODIGO'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRLabel1: TQRLabel
      Left = 253
      Top = 83
      Width = 19
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        669.395833333333300000
        219.604166666666700000
        50.270833333333330000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'DP'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRDBText4: TQRDBText
      Left = 48
      Top = 231
      Width = 71
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        127.000000000000000000
        611.187500000000000000
        187.854166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = TQClienteQR
      DataField = 'CLI_RAZAO'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRDBText5: TQRDBText
      Left = 48
      Top = 248
      Width = 81
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        127.000000000000000000
        656.166666666666700000
        214.312500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = TQClienteQR
      DataField = 'CLI_ENDERE'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRDBText6: TQRDBText
      Left = 380
      Top = 245
      Width = 54
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1005.416666666667000000
        648.229166666666700000
        142.875000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = TQClienteQR
      DataField = 'CLI_CEP'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRDBText7: TQRDBText
      Left = 48
      Top = 264
      Width = 75
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        127.000000000000000000
        698.500000000000000000
        198.437500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = TQClienteQR
      DataField = 'CLI_CIDADE'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRDBText8: TQRDBText
      Left = 295
      Top = 264
      Width = 44
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        780.520833333333300000
        698.500000000000000000
        116.416666666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = TQClienteQR
      DataField = 'CLI_UF'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRDBText9: TQRDBText
      Left = 380
      Top = 261
      Width = 55
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1005.416666666667000000
        690.562500000000000000
        145.520833333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = TQClienteQR
      DataField = 'CLI_CGC'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRDBText10: TQRDBText
      Left = 531
      Top = 103
      Width = 86
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1404.937500000000000000
        272.520833333333300000
        227.541666666666700000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = TQReceberQR
      DataField = 'FPC_VLPARC'
      Mask = '#0.,00'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRLabel2: TQRLabel
      Left = 24
      Top = 126
      Width = 85
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        63.500000000000000000
        333.375000000000000000
        224.895833333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Mora diaria R$'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRDBText11: TQRDBText
      Left = 144
      Top = 127
      Width = 83
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        381.000000000000000000
        336.020833333333300000
        219.604166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TQBancoQR
      DataField = 'BAN_JUROMES_CC'
      Mask = '#0.,00'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRDBText12: TQRDBText
      Left = 24
      Top = 144
      Width = 113
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        63.500000000000000000
        381.000000000000000000
        298.979166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = DataModulo.TbParametros
      DataField = 'PMT_OBS_BLOQ1'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRDBText13: TQRDBText
      Left = 24
      Top = 160
      Width = 113
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        63.500000000000000000
        423.333333333333300000
        298.979166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = DataModulo.TbParametros
      DataField = 'PMT_OBS_BLOQ2'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRDBText14: TQRDBText
      Left = 24
      Top = 176
      Width = 113
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        63.500000000000000000
        465.666666666666700000
        298.979166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = DataModulo.TbParametros
      DataField = 'PMT_OBS_BLOQ3'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRDBText15: TQRDBText
      Left = 20
      Top = 28
      Width = 113
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        52.916666666666670000
        74.083333333333330000
        298.979166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = DataModulo.TbParametros
      DataField = 'PMT_LOC_PAGTO'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
  end
  object TQReceberQR: TQuery
    DatabaseName = 'RwDbAdm'
    SQL.Strings = (
      
        'SELECT FAT_CODIGO, FPC_DTEMIS, BAN_CODIGO, FPC_VENCTO, FPC_VLPAR' +
        'C, CLI_CODIGO'
      'FROM FAT_PC01 '
      'ORDER BY FPC_DTEMIS, BAN_CODIGO')
    Left = 72
    ParamData = <>
    object TQReceberQRFAT_CODIGO: TStringField
      FieldName = 'FAT_CODIGO'
      Origin = 'FAT_PC01.FAT_CODIGO'
      Size = 6
    end
    object TQReceberQRFPC_DTEMIS: TDateTimeField
      FieldName = 'FPC_DTEMIS'
      Origin = 'FAT_PC01.FPC_DTEMIS'
    end
    object TQReceberQRFPC_VENCTO: TDateTimeField
      FieldName = 'FPC_VENCTO'
      Origin = 'FAT_PC01.FPC_VENCTO'
    end
    object TQReceberQRFPC_VLPARC: TFloatField
      FieldName = 'FPC_VLPARC'
      Origin = 'FAT_PC01.FPC_VLPARC'
    end
    object TQReceberQRCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Origin = 'FAT_PC01.CLI_CODIGO'
      Size = 5
    end
    object TQReceberQRBAN_CODIGO: TStringField
      FieldName = 'BAN_CODIGO'
      Origin = 'FAT_PC01.BAN_CODIGO'
      Size = 4
    end
  end
  object TQClienteQR: TQuery
    DatabaseName = 'RwDbAdm'
    DataSource = TQDsReceberQR
    SQL.Strings = (
      
        'SELECT CLI_CODIGO, CLI_RAZAO, CLI_ENDERE, CLI_CIDADE, CLI_CEP, C' +
        'LI_CGC, CLI_UF'
      'FROM CLI0000 '
      '')
    Left = 157
    Top = 1
    ParamData = <>
    object TQClienteQRCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Origin = 'CLI0000.CLI_CODIGO'
      Size = 5
    end
    object TQClienteQRCLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      Origin = 'CLI0000.CLI_RAZAO'
      Size = 45
    end
    object TQClienteQRCLI_ENDERE: TStringField
      FieldName = 'CLI_ENDERE'
      Origin = 'CLI0000.CLI_ENDERE'
      Size = 40
    end
    object TQClienteQRCLI_CIDADE: TStringField
      FieldName = 'CLI_CIDADE'
      Origin = 'CLI0000.CLI_CIDADE'
      Size = 30
    end
    object TQClienteQRCLI_CEP: TStringField
      FieldName = 'CLI_CEP'
      Origin = 'CLI0000.CLI_CEP'
      EditMask = '99999\-999;0;_'
      Size = 8
    end
    object TQClienteQRCLI_CGC: TStringField
      FieldName = 'CLI_CGC'
      Origin = 'CLI0000.CLI_CGC'
      EditMask = '99.999.999/9999-99;0;_'
      Size = 14
    end
    object TQClienteQRCLI_UF: TStringField
      FieldName = 'CLI_UF'
      Origin = 'CLI0000.CLI_UF'
      Size = 2
    end
  end
  object TQBancoQR: TQuery
    OnCalcFields = TQBancoQRCalcFields
    DatabaseName = 'RwDbAdm'
    DataSource = TQDsReceberQR
    SQL.Strings = (
      'SELECT BAN_CODIGO, BAN_JUROMES, BAN_APELIDO'
      'FROM BAN0000')
    Left = 190
    Top = 1
    ParamData = <>
    object TQBancoQRBAN_CODIGO: TStringField
      FieldName = 'BAN_CODIGO'
      Origin = 'BAN0000.BAN_CODIGO'
      Size = 4
    end
    object TQBancoQRBAN_JUROMES: TFloatField
      FieldName = 'BAN_JUROMES'
      Origin = 'BAN0000.BAN_JUROMES'
    end
    object TQBancoQRBAN_APELIDO: TStringField
      FieldName = 'BAN_APELIDO'
      Origin = 'BAN0000.BAN_APELIDO'
    end
    object TQBancoQRBAN_JUROMES_CC: TFloatField
      FieldKind = fkCalculated
      FieldName = 'BAN_JUROMES_CC'
      Calculated = True
    end
  end
  object TQDsReceberQR: TDataSource
    DataSet = TQReceberQR
    Left = 102
  end
end
