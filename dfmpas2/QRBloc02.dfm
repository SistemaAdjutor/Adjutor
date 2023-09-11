object RelBloquetoItau: TRelBloquetoItau
  Left = 0
  Top = 0
  Width = 816
  Height = 839
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
  Options = [FirstPageHeader, LastPageFooter]
  Page.Columns = 1
  Page.Orientation = poPortrait
  Page.PaperSize = Custom
  Page.Values = (
    100.100000000000000000
    2220.000000000000000000
    70.000000000000000000
    2159.000000000000000000
    100.200000000000000000
    100.200000000000000000
    0.000000000000000000)
  PrinterSettings.Copies = 1
  PrinterSettings.Duplex = False
  PrinterSettings.FirstPage = 0
  PrinterSettings.LastPage = 0
  PrinterSettings.OutputBin = First
  PrintIfEmpty = True
  ReportTitle = 'Bloqueto Itaú.'
  SnapToGrid = True
  Units = MM
  Zoom = 100
  object QRBand1: TQRBand
    Left = 38
    Top = 26
    Width = 740
    Height = 378
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
      1000.125000000000000000
      1957.916666666667000000)
    BandType = rbDetail
    object QRDBText2: TQRDBText
      Left = 17
      Top = 64
      Width = 82
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        44.979166666666670000
        169.333333333333300000
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
    object QRDBRichText1: TQRDBRichText
      Left = 12
      Top = 138
      Width = 313
      Height = 86
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        227.541666666666700000
        31.750000000000000000
        365.125000000000000000
        828.145833333333300000)
      Alignment = taLeftJustify
      AutoStretch = False
      Color = clWindow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      DataField = 'PMT_OBS_BLOC'
      DataSet = DataModulo.TbParametros
    end
    object QRDBText3: TQRDBText
      Left = 152
      Top = 64
      Width = 83
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        402.166666666666700000
        169.333333333333300000
        219.604166666666700000)
      Alignment = taRightJustify
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
      Left = 287
      Top = 63
      Width = 19
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        759.354166666666700000
        166.687500000000000000
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
      Left = 52
      Top = 227
      Width = 71
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        137.583333333333300000
        600.604166666666700000
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
      Left = 52
      Top = 244
      Width = 81
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        137.583333333333300000
        645.583333333333300000
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
    object QRDBText7: TQRDBText
      Left = 52
      Top = 260
      Width = 75
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        137.583333333333300000
        687.916666666666700000
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
      Left = 291
      Top = 258
      Width = 44
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        769.937500000000000000
        682.625000000000000000
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
      Left = 384
      Top = 257
      Width = 55
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1016.000000000000000000
        679.979166666666700000
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
    object QRDBText6: TQRDBText
      Left = 384
      Top = 241
      Width = 54
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1016.000000000000000000
        637.645833333333300000
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
    object QRDBText10: TQRDBText
      Left = 528
      Top = 85
      Width = 86
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1397.000000000000000000
        224.895833333333300000
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
    object QRDBText1: TQRDBText
      Left = 514
      Top = 11
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
        29.104166666666670000
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
    object QRLabel2: TQRLabel
      Left = 16
      Top = 119
      Width = 85
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        42.333333333333330000
        314.854166666666700000
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
      Left = 120
      Top = 119
      Width = 123
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        317.500000000000000000
        314.854166666666700000
        325.437500000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = TQBancoQR
      DataField = 'BAN_JUROMES_CC'
      Mask = '#0.,00'
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
      'FROM FAT_PC01')
    Left = 40
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
    object TQReceberQRBAN_CODIGO: TStringField
      FieldName = 'BAN_CODIGO'
      Origin = 'FAT_PC01.BAN_CODIGO'
      Size = 4
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
  end
  object TQDSReceberQR: TDataSource
    DataSet = TQReceberQR
    Left = 72
  end
  object TQClienteQR: TQuery
    DatabaseName = 'RwDbAdm'
    DataSource = TQDSReceberQR
    SQL.Strings = (
      
        'SELECT CLI_CODIGO, CLI_RAZAO, CLI_ENDERE, CLI_CIDADE, CLI_CEP, C' +
        'LI_CGC, CLI_UF'
      'FROM CLI0000 '
      '')
    Left = 126
    Top = 65535
    ParamData = <>
    object StringField1: TStringField
      FieldName = 'CLI_CODIGO'
      Origin = 'CLI0000.CLI_CODIGO'
      Size = 5
    end
    object StringField2: TStringField
      FieldName = 'CLI_RAZAO'
      Origin = 'CLI0000.CLI_RAZAO'
      Size = 45
    end
    object StringField3: TStringField
      FieldName = 'CLI_ENDERE'
      Origin = 'CLI0000.CLI_ENDERE'
      Size = 40
    end
    object StringField4: TStringField
      FieldName = 'CLI_CIDADE'
      Origin = 'CLI0000.CLI_CIDADE'
      Size = 30
    end
    object StringField5: TStringField
      FieldName = 'CLI_CEP'
      Origin = 'CLI0000.CLI_CEP'
      EditMask = '99999\-999;0;_'
      Size = 8
    end
    object StringField6: TStringField
      FieldName = 'CLI_CGC'
      Origin = 'CLI0000.CLI_CGC'
      EditMask = '99.999.999/9999-99;0;_'
      Size = 14
    end
    object StringField7: TStringField
      FieldName = 'CLI_UF'
      Origin = 'CLI0000.CLI_UF'
      Size = 2
    end
  end
  object TQBancoQR: TQuery
    OnCalcFields = TQBancoQRCalcFields
    DatabaseName = 'RwDbAdm'
    DataSource = TQDSReceberQR
    SQL.Strings = (
      'SELECT BAN_CODIGO, BAN_JUROMES, BAN_APELIDO'
      'FROM BAN0000')
    Left = 184
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
end
