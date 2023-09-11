object RelatorioIRRF: TRelatorioIRRF
  Left = 0
  Top = 0
  Width = 816
  Height = 1056
  Frame.Color = clBlack
  Frame.DrawTop = False
  Frame.DrawBottom = False
  Frame.DrawLeft = False
  Frame.DrawRight = False
  DataSet = TbIRRFQR
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
    Height = 75
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
      198.437500000000000000
      1957.916666666667000000)
    BandType = rbTitle
    object LabelEmpresa: TQRLabel
      Left = 307
      Top = 8
      Width = 125
      Height = 23
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        60.854166666666670000
        812.270833333333300000
        21.166666666666670000
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
    object QRLabel2: TQRLabel
      Left = 292
      Top = 40
      Width = 156
      Height = 19
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        50.270833333333330000
        772.583333333333400000
        105.833333333333300000
        412.750000000000000000)
      Alignment = taCenter
      AlignToBand = True
      AutoSize = True
      AutoStretch = False
      Caption = 'RELAT'#211'RIO DE IRRF'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 12
    end
  end
  object QRBand2: TQRBand
    Left = 38
    Top = 113
    Width = 740
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
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    ForceNewColumn = False
    ForceNewPage = False
    ParentFont = False
    Size.Values = (
      105.833333333333300000
      1957.916666666667000000)
    BandType = rbTitle
    object QRLabel1: TQRLabel
      Left = 16
      Top = 8
      Width = 26
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        42.333333333333340000
        21.166666666666670000
        68.791666666666670000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'M'#202'S'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRLabel3: TQRLabel
      Left = 160
      Top = 8
      Width = 32
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        423.333333333333300000
        21.166666666666670000
        84.666666666666670000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'TETO'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRLabel4: TQRLabel
      Left = 280
      Top = 8
      Width = 44
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        740.833333333333300000
        21.166666666666670000
        116.416666666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'ALIQ. %'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRLabel5: TQRLabel
      Left = 408
      Top = 8
      Width = 62
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1079.500000000000000000
        21.166666666666670000
        164.041666666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'DUDU'#199#195'O'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRLabel6: TQRLabel
      Left = 496
      Top = 8
      Width = 73
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1312.333333333333000000
        21.166666666666670000
        193.145833333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'JURISDI'#199#195'O'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRLabel7: TQRLabel
      Left = 601
      Top = 16
      Width = 56
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1590.145833333333000000
        42.333333333333330000
        148.166666666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'JUROS %'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
  end
  object QRBand3: TQRBand
    Left = 38
    Top = 153
    Width = 740
    Height = 40
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    AlignToBottom = False
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Times New Roman'
    Font.Style = []
    ForceNewColumn = False
    ForceNewPage = False
    ParentFont = False
    Size.Values = (
      105.833333333333300000
      1957.916666666667000000)
    BandType = rbTitle
    object QRDBText1: TQRDBText
      Left = 16
      Top = 16
      Width = 40
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        42.333333333333340000
        42.333333333333340000
        105.833333333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = TbIRRFQR
      DataField = 'IR_MES'
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRDBText2: TQRDBText
      Left = 168
      Top = 16
      Width = 55
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        444.500000000000000000
        42.333333333333340000
        145.520833333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = TbIRRFQR
      DataField = 'IR_TETO1'
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRDBText3: TQRDBText
      Left = 288
      Top = 16
      Width = 51
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        762.000000000000000000
        42.333333333333340000
        134.937500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = TbIRRFQR
      DataField = 'IR_ALIQ1'
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRDBText4: TQRDBText
      Left = 416
      Top = 16
      Width = 55
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1100.666666666667000000
        42.333333333333330000
        145.520833333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = TbIRRFQR
      DataField = 'IR_DEDU1'
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRDBText5: TQRDBText
      Left = 520
      Top = 16
      Width = 53
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1375.833333333333000000
        42.333333333333330000
        140.229166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = TbIRRFQR
      DataField = 'IR_JURIDI'
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRDBText6: TQRDBText
      Left = 617
      Top = 16
      Width = 63
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1632.479166666667000000
        42.333333333333330000
        166.687500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = TbIRRFQR
      DataField = 'IR_DEPEND'
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
  end
  object TbIRRFQR: TTable
    DatabaseName = 'RwDbAdm'
    TableName = 'IRRF'
    Left = 120
    Top = 8
    object TbIRRFQRIR_MES: TStringField
      FieldName = 'IR_MES'
      Required = True
      Size = 7
    end
    object TbIRRFQRIR_TETO1: TFloatField
      FieldName = 'IR_TETO1'
    end
    object TbIRRFQRIR_TETO2: TFloatField
      FieldName = 'IR_TETO2'
    end
    object TbIRRFQRIR_TETO3: TFloatField
      FieldName = 'IR_TETO3'
    end
    object TbIRRFQRIR_ALIQ1: TFloatField
      FieldName = 'IR_ALIQ1'
    end
    object TbIRRFQRIR_ALIQ2: TFloatField
      FieldName = 'IR_ALIQ2'
    end
    object TbIRRFQRIR_ALIQ3: TFloatField
      FieldName = 'IR_ALIQ3'
    end
    object TbIRRFQRIR_DEDU1: TFloatField
      FieldName = 'IR_DEDU1'
    end
    object TbIRRFQRIR_DEDU2: TFloatField
      FieldName = 'IR_DEDU2'
    end
    object TbIRRFQRIR_DEDU3: TFloatField
      FieldName = 'IR_DEDU3'
    end
    object TbIRRFQRIR_JURIDI: TFloatField
      FieldName = 'IR_JURIDI'
    end
    object TbIRRFQRIR_DEPEND: TFloatField
      FieldName = 'IR_DEPEND'
    end
    object TbIRRFQREMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Size = 3
    end
  end
  object QRTextFilter1: TQRTextFilter
    Left = 32
    Top = 16
  end
end
