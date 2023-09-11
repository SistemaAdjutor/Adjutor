object RelconReceber00: TRelconReceber00
  Left = 0
  Top = 0
  Width = 794
  Height = 1123
  Frame.Color = clBlack
  Frame.DrawTop = False
  Frame.DrawBottom = False
  Frame.DrawLeft = False
  Frame.DrawRight = False
  DataSet = TbReceberQR
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
  Page.PaperSize = A4
  Page.Values = (
    100.000000000000000000
    2970.000000000000000000
    100.000000000000000000
    2100.000000000000000000
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
    Width = 718
    Height = 91
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
      240.770833333333300000
      1899.708333333333000000)
    BandType = rbPageHeader
    object LabelEmpresa: TQRLabel
      Left = 296
      Top = 11
      Width = 125
      Height = 23
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        60.854166666666670000
        783.166666666666700000
        29.104166666666670000
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
    object LTitulo1: TQRLabel
      Left = 336
      Top = 40
      Width = 46
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        889.000000000000000000
        105.833333333333300000
        121.708333333333300000)
      Alignment = taCenter
      AlignToBand = True
      AutoSize = True
      AutoStretch = False
      Caption = 'LTitulo1'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object LTitulo2: TQRLabel
      Left = 336
      Top = 64
      Width = 46
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        889.000000000000000000
        169.333333333333300000
        121.708333333333300000)
      Alignment = taCenter
      AlignToBand = True
      AutoSize = True
      AutoStretch = False
      Caption = 'LTitulo2'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
  end
  object QRBand2: TQRBand
    Left = 38
    Top = 129
    Width = 718
    Height = 40
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = True
    Frame.DrawLeft = False
    Frame.DrawRight = False
    AlignToBottom = False
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ForceNewColumn = False
    ForceNewPage = False
    ParentFont = False
    Size.Values = (
      105.833333333333300000
      1899.708333333333000000)
    BandType = rbColumnHeader
    object QRLabel1: TQRLabel
      Left = 5
      Top = 3
      Width = 29
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        13.229166666666670000
        7.937500000000000000
        76.729166666666670000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'DUPLI'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRLabel2: TQRLabel
      Left = 53
      Top = 3
      Width = 47
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        140.229166666666700000
        7.937500000000000000
        124.354166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'EMISSÃO'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRLabel3: TQRLabel
      Left = 121
      Top = 3
      Width = 37
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        320.145833333333300000
        7.937500000000000000
        97.895833333333330000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'PEDIDO'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRLabel4: TQRLabel
      Left = 190
      Top = 3
      Width = 41
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        502.708333333333300000
        7.937500000000000000
        108.479166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'CLIENTE'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRLabel5: TQRLabel
      Left = 333
      Top = 3
      Width = 30
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        881.062500000000000000
        7.937500000000000000
        79.375000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'REPR.'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRLabel6: TQRLabel
      Left = 421
      Top = 3
      Width = 38
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
        100.541666666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'VALOR'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRLabel7: TQRLabel
      Left = 501
      Top = 3
      Width = 32
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1325.562500000000000000
        7.937500000000000000
        84.666666666666670000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'VENC.'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRLabel8: TQRLabel
      Left = 613
      Top = 3
      Width = 42
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1621.895833333333000000
        7.937500000000000000
        111.125000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'STATUS'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
  end
  object QRGroup1: TQRGroup
    Left = 38
    Top = 169
    Width = 718
    Height = 40
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    AlignToBottom = False
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ForceNewColumn = False
    ForceNewPage = False
    ParentFont = False
    Size.Values = (
      105.833333333333300000
      1899.708333333333000000)
    Expression = 'COPY(TbBancoQrBAN_CODIGO, 1, 4)'
    Master = Owner
    ReprintOnNewPage = False
    object QRLabel9: TQRLabel
      Left = 8
      Top = 8
      Width = 42
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        21.166666666666670000
        21.166666666666670000
        111.125000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'BANCO:'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRDBText1: TQRDBText
      Left = 64
      Top = 8
      Width = 71
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        169.333333333333300000
        21.166666666666670000
        187.854166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = TbBancoQR
      DataField = 'BAN_CODIGO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRDBText2: TQRDBText
      Left = 152
      Top = 8
      Width = 75
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        402.166666666666700000
        21.166666666666670000
        198.437500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = TbBancoQR
      DataField = 'BAN_APELIDO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
  end
  object QRBand3: TQRBand
    Left = 38
    Top = 209
    Width = 718
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
    Size.Values = (
      63.500000000000000000
      1899.708333333333000000)
    BandType = rbDetail
    object QRDBText9: TQRDBText
      Left = 3
      Top = 4
      Width = 67
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        7.937500000000000000
        10.583333333333330000
        177.270833333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = TbReceberQR
      DataField = 'FAT_CODIGO'
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
    object QRDBText10: TQRDBText
      Left = 83
      Top = 4
      Width = 63
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        219.604166666666700000
        10.583333333333330000
        166.687500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = TbReceberQR
      DataField = 'FAT_DTEMIS'
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
    object QRDBText11: TQRDBText
      Left = 163
      Top = 4
      Width = 66
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        431.270833333333300000
        10.583333333333330000
        174.625000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = TbReceberQR
      DataField = 'PED_CODIGO'
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
    object QRDBText12: TQRDBText
      Left = 243
      Top = 4
      Width = 60
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        642.937500000000000000
        10.583333333333330000
        158.750000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = TbClienteQR
      DataField = 'CLI_RAZAO'
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
    object QRDBText13: TQRDBText
      Left = 331
      Top = 4
      Width = 66
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        875.770833333333300000
        10.583333333333330000
        174.625000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = TbReceberQR
      DataField = 'REP_CODIGO'
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
    object QRDBText14: TQRDBText
      Left = 411
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
        1087.437500000000000000
        10.583333333333330000
        185.208333333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = TbRecParcQR
      DataField = 'FPC_VLPAGO'
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
    object QRDBText15: TQRDBText
      Left = 491
      Top = 4
      Width = 68
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1299.104166666667000000
        10.583333333333330000
        179.916666666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = TbRecParcQR
      DataField = 'FPC_VENCTO'
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
    object QRDBText16: TQRDBText
      Left = 580
      Top = 4
      Width = 67
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1534.583333333333000000
        10.583333333333330000
        177.270833333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = TbRecParcQR
      DataField = 'FPC_STATUS'
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
  object TbReceberQR: TTable
    DatabaseName = 'RwDbAdm'
    IndexFieldNames = 'FAT_CODIGO'
    MasterSource = DsRecParceQR
    TableName = 'FAT0000'
    Left = 176
    Top = 8
    object TbReceberQRFAT_CODIGO: TStringField
      FieldName = 'FAT_CODIGO'
      Required = True
      Size = 6
    end
    object TbReceberQRPCL_CODIGO: TStringField
      FieldName = 'PCL_CODIGO'
      Size = 2
    end
    object TbReceberQRCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Size = 5
    end
    object TbReceberQRREP_CODIGO: TStringField
      FieldName = 'REP_CODIGO'
      Size = 3
    end
    object TbReceberQRPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      Size = 6
    end
    object TbReceberQRFAT_QTDITEM: TFloatField
      FieldName = 'FAT_QTDITEM'
    end
    object TbReceberQRFAT_VL_LIQ: TFloatField
      FieldName = 'FAT_VL_LIQ'
    end
    object TbReceberQRFAT_VLFAT: TFloatField
      FieldName = 'FAT_VLFAT'
    end
    object TbReceberQRFAT_VLNCOMIS: TFloatField
      FieldName = 'FAT_VLNCOMIS'
    end
    object TbReceberQRFAT_DTEMIS: TDateTimeField
      FieldName = 'FAT_DTEMIS'
    end
    object TbReceberQRFAT_COMIS1: TFloatField
      FieldName = 'FAT_COMIS1'
    end
    object TbReceberQRFAT_COMIS2: TFloatField
      FieldName = 'FAT_COMIS2'
    end
    object TbReceberQRFAT_COMIS3: TFloatField
      FieldName = 'FAT_COMIS3'
    end
    object TbReceberQRFAT_OBS: TStringField
      FieldName = 'FAT_OBS'
      Size = 100
    end
    object TbReceberQRFAT_OPERACAO: TStringField
      FieldName = 'FAT_OPERACAO'
      Size = 3
    end
    object TbReceberQRFAT_BASEICMS: TFloatField
      FieldName = 'FAT_BASEICMS'
    end
    object TbReceberQRFAT_ALIQUOTA: TFloatField
      FieldName = 'FAT_ALIQUOTA'
    end
    object TbReceberQRFAT_OBSLIVRO: TStringField
      FieldName = 'FAT_OBSLIVRO'
      Size = 35
    end
    object TbReceberQRFAT_OPERUF: TStringField
      FieldName = 'FAT_OPERUF'
      Size = 2
    end
    object TbReceberQRFAT_LIVRO: TBooleanField
      FieldName = 'FAT_LIVRO'
    end
    object TbReceberQREMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
  end
  object TbRecParcQR: TTable
    DatabaseName = 'RwDbAdm'
    IndexFieldNames = 'FPC_VENCTO'
    TableName = 'FAT_PC01'
    Left = 288
    Top = 8
    object TbRecParcQRREG: TAutoIncField
      FieldName = 'REG'
    end
    object TbRecParcQRFAT_CODIGO: TStringField
      FieldName = 'FAT_CODIGO'
      Required = True
      Size = 6
    end
    object TbRecParcQRFPC_NUMER: TStringField
      FieldName = 'FPC_NUMER'
      Size = 2
    end
    object TbRecParcQRBAN_CODIGO: TStringField
      FieldName = 'BAN_CODIGO'
      Size = 4
    end
    object TbRecParcQRFPC_COBNUM: TStringField
      FieldName = 'FPC_COBNUM'
      Size = 13
    end
    object TbRecParcQRFPC_COBTIPO: TStringField
      FieldName = 'FPC_COBTIPO'
      Size = 2
    end
    object TbRecParcQRFPC_STATUS: TStringField
      FieldName = 'FPC_STATUS'
      Size = 12
    end
    object TbRecParcQRFPC_DESCTO: TFloatField
      FieldName = 'FPC_DESCTO'
    end
    object TbRecParcQRFPC_DTDESC: TDateTimeField
      FieldName = 'FPC_DTDESC'
    end
    object TbRecParcQRFPC_VENCTO: TDateTimeField
      FieldName = 'FPC_VENCTO'
    end
    object TbRecParcQRFPC_PAGTO: TDateTimeField
      FieldName = 'FPC_PAGTO'
    end
    object TbRecParcQRFPC_VLPARC: TFloatField
      FieldName = 'FPC_VLPARC'
    end
    object TbRecParcQRFPC_VLPAGO: TFloatField
      FieldName = 'FPC_VLPAGO'
    end
    object TbRecParcQRFPC_OBS: TStringField
      FieldName = 'FPC_OBS'
      Size = 50
    end
    object TbRecParcQRFPC_SITPAG: TBooleanField
      FieldName = 'FPC_SITPAG'
    end
    object TbRecParcQREMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object TbRecParcQRCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Size = 5
    end
  end
  object TbClienteQR: TTable
    DatabaseName = 'RwDbAdm'
    IndexFieldNames = 'CLI_RAZAO'
    MasterFields = 'CLI_CODIGO'
    MasterSource = DsReceberQR
    TableName = 'CLI0000'
    Left = 392
    Top = 8
    object TbClienteQRCLI_CODIGO: TStringField
      FieldName = 'CLI_CODIGO'
      Required = True
      Size = 5
    end
    object TbClienteQRCLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      Size = 45
    end
    object TbClienteQRREG_CODIGO: TStringField
      FieldName = 'REG_CODIGO'
      Size = 3
    end
    object TbClienteQRCLI_ATIVIDADE: TStringField
      FieldName = 'CLI_ATIVIDADE'
      Size = 2
    end
    object TbClienteQRCLI_PORTE: TStringField
      FieldName = 'CLI_PORTE'
      Size = 1
    end
    object TbClienteQRCLI_ENDERE: TStringField
      FieldName = 'CLI_ENDERE'
      Size = 40
    end
    object TbClienteQRCLI_BAIRRO: TStringField
      FieldName = 'CLI_BAIRRO'
      Size = 25
    end
    object TbClienteQRCLI_CIDADE: TStringField
      FieldName = 'CLI_CIDADE'
      Size = 30
    end
    object TbClienteQRCLI_CEP: TStringField
      FieldName = 'CLI_CEP'
      Size = 8
    end
    object TbClienteQRCLI_CXPOST: TStringField
      FieldName = 'CLI_CXPOST'
      Size = 6
    end
    object TbClienteQRCLI_EMAIL: TStringField
      FieldName = 'CLI_EMAIL'
      Size = 35
    end
    object TbClienteQRCLI_HOME: TStringField
      FieldName = 'CLI_HOME'
      Size = 35
    end
    object TbClienteQRCLI_FONE: TStringField
      FieldName = 'CLI_FONE'
      Size = 11
    end
    object TbClienteQRCLI_FAX: TStringField
      FieldName = 'CLI_FAX'
      Size = 11
    end
    object TbClienteQRTRP_CODIGO: TStringField
      FieldName = 'TRP_CODIGO'
      Size = 3
    end
    object TbClienteQRCLI_INSC: TStringField
      FieldName = 'CLI_INSC'
      Size = 14
    end
    object TbClienteQRCLI_CGC: TStringField
      FieldName = 'CLI_CGC'
      Size = 14
    end
    object TbClienteQRCLI_PESSOA: TStringField
      FieldName = 'CLI_PESSOA'
      Size = 1
    end
    object TbClienteQRCLI_CONTATO: TStringField
      FieldName = 'CLI_CONTATO'
      Size = 25
    end
    object TbClienteQRCLI_FUNCONT: TStringField
      FieldName = 'CLI_FUNCONT'
      Size = 15
    end
    object TbClienteQRREP_CODIGO: TStringField
      FieldName = 'REP_CODIGO'
      Size = 3
    end
    object TbClienteQRCLI_DTINICIO: TDateTimeField
      FieldName = 'CLI_DTINICIO'
    end
    object TbClienteQRCLI_DTULTCOM: TDateTimeField
      FieldName = 'CLI_DTULTCOM'
    end
    object TbClienteQRCLI_ENDENTR: TStringField
      FieldName = 'CLI_ENDENTR'
      Size = 40
    end
    object TbClienteQRCLI_CIDENTR: TStringField
      FieldName = 'CLI_CIDENTR'
      Size = 30
    end
    object TbClienteQRCLI_CEPENTR: TStringField
      FieldName = 'CLI_CEPENTR'
      Size = 8
    end
    object TbClienteQRCLI_ENDFAT: TStringField
      FieldName = 'CLI_ENDFAT'
      Size = 40
    end
    object TbClienteQRCLI_CIDFAT: TStringField
      FieldName = 'CLI_CIDFAT'
      Size = 30
    end
    object TbClienteQRCLI_CEPFAT: TStringField
      FieldName = 'CLI_CEPFAT'
      Size = 8
    end
    object TbClienteQRCLI_OBS: TStringField
      FieldName = 'CLI_OBS'
      Size = 200
    end
    object TbClienteQRCLI_UF: TStringField
      FieldName = 'CLI_UF'
      Size = 2
    end
    object TbClienteQRCLI_UFENTR: TStringField
      FieldName = 'CLI_UFENTR'
      Size = 2
    end
    object TbClienteQRCLI_UFFAT: TStringField
      FieldName = 'CLI_UFFAT'
      Size = 2
    end
    object TbClienteQREMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
  end
  object TbBancoQR: TTable
    DatabaseName = 'RwDbAdm'
    IndexName = 'XBAN_CODI'
    MasterFields = 'BAN_CODIGO'
    MasterSource = DsRecParceQR
    TableName = 'BAN0000'
    Left = 496
    Top = 8
    object TbBancoQRBAN_CODIGO: TStringField
      FieldName = 'BAN_CODIGO'
      Required = True
      Size = 4
    end
    object TbBancoQRBAN_RAZAO: TStringField
      FieldName = 'BAN_RAZAO'
      Size = 45
    end
    object TbBancoQRBAN_APELIDO: TStringField
      FieldName = 'BAN_APELIDO'
    end
    object TbBancoQRBAN_CODAGE: TStringField
      FieldName = 'BAN_CODAGE'
      Size = 5
    end
    object TbBancoQRBAN_ENDERE: TStringField
      FieldName = 'BAN_ENDERE'
      Size = 40
    end
    object TbBancoQRBAN_CIDADE: TStringField
      FieldName = 'BAN_CIDADE'
      Size = 30
    end
    object TbBancoQRBAN_UF: TStringField
      FieldName = 'BAN_UF'
      Size = 2
    end
    object TbBancoQRBAN_FONE: TStringField
      FieldName = 'BAN_FONE'
      Size = 11
    end
    object TbBancoQRBAN_FAX: TStringField
      FieldName = 'BAN_FAX'
      Size = 11
    end
    object TbBancoQRBAN_CEP: TStringField
      FieldName = 'BAN_CEP'
      Size = 8
    end
    object TbBancoQRBAN_CONTATO: TStringField
      FieldName = 'BAN_CONTATO'
      Size = 30
    end
    object TbBancoQRBAN_JUROMES: TFloatField
      FieldName = 'BAN_JUROMES'
    end
    object TbBancoQRBAN_OBS: TStringField
      FieldName = 'BAN_OBS'
      Size = 200
    end
    object TbBancoQREMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
    object TbBancoQRBAN_DNAS_CONT: TDateTimeField
      FieldName = 'BAN_DNAS_CONT'
    end
    object TbBancoQRBAN_EMAIL: TStringField
      FieldName = 'BAN_EMAIL'
      Size = 35
    end
    object TbBancoQRBAN_HOME: TStringField
      FieldName = 'BAN_HOME'
      Size = 35
    end
  end
  object DsReceberQR: TDataSource
    DataSet = TbReceberQR
    Left = 208
    Top = 8
  end
  object DsRecParceQR: TDataSource
    DataSet = TbRecParcQR
    Left = 320
    Top = 8
  end
  object DsClienteQR: TDataSource
    DataSet = TbClienteQR
    Left = 424
    Top = 8
  end
end
