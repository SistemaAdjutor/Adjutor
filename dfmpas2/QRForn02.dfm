object RelFornEtiq: TRelFornEtiq
  Left = 0
  Top = 0
  Width = 794
  Height = 1123
  Frame.Color = clBlack
  Frame.DrawTop = False
  Frame.DrawBottom = False
  Frame.DrawLeft = False
  Frame.DrawRight = False
  BeforePrint = RelFornEtiqBeforePrint
  DataSet = TQFornecQR
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
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
  Page.Columns = 2
  Page.Orientation = poPortrait
  Page.PaperSize = A4
  Page.Values = (
    0.000000000000000000
    2970.000000000000000000
    0.000000000000000000
    2100.000000000000000000
    40.000000000000000000
    0.000000000000000000
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
    Left = 15
    Top = 0
    Width = 389
    Height = 96
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
      254.000000000000000000
      1029.229166666667000000)
    BandType = rbDetail
    object QRDBText2: TQRDBText
      Left = 6
      Top = 11
      Width = 322
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        15.875000000000000000
        29.104166666666670000
        851.958333333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TQFornecQR
      DataField = 'FOR_RAZAO'
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
    object QRDBText3: TQRDBText
      Left = 6
      Top = 30
      Width = 322
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        15.875000000000000000
        79.375000000000000000
        851.958333333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TQFornecQR
      DataField = 'FOR_ENDERE'
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
    object QRDBText4: TQRDBText
      Left = 6
      Top = 47
      Width = 56
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        15.875000000000000000
        124.354166666666700000
        148.166666666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TQFornecQR
      DataField = 'FOR_CEP'
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
    object QRDBText5: TQRDBText
      Left = 65
      Top = 47
      Width = 220
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        171.979166666666700000
        124.354166666666700000
        582.083333333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TQFornecQR
      DataField = 'FOR_CIDADE'
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
    object QRDBText6: TQRDBText
      Left = 289
      Top = 47
      Width = 26
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        764.645833333333300000
        124.354166666666700000
        68.791666666666670000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TQFornecQR
      DataField = 'FOR_UF'
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
    object QRLabel1: TQRLabel
      Left = 10
      Top = 67
      Width = 27
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        26.458333333333330000
        177.270833333333300000
        71.437500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'ATT.:'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 8
    end
    object QRDBText7: TQRDBText
      Left = 38
      Top = 67
      Width = 162
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        100.541666666666700000
        177.270833333333300000
        428.625000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataSet = TQFornecQR
      DataField = 'FOR_CONTATO'
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
  object TQFornecQR: TQuery
    DatabaseName = 'RwDbAdm'
    SQL.Strings = (
      
        'SELECT FOR_CODIGO, FOR_RAZAO, CCT_CODIGO, FOR_ENDERE, FOR_CIDADE' +
        ', FOR_UF, FOR_CEP, FOR_CONTATO, FOR_FONE, FOR_FAX, FOR_EMAIL, FO' +
        'R_FONCONT, FOR_FAXCONT, FOR_OBS, FOR_CGC, FOR_INSC, FOR_HOME, FO' +
        'R_EMAILCONT, EMP_CODIGO'
      'FROM FOR0000 For0000')
    Left = 330
    Top = 105
    ParamData = <>
    object TQFornecQRFOR_CODIGO: TStringField
      FieldName = 'FOR_CODIGO'
      Origin = 'FOR0000.FOR_CODIGO'
      Size = 4
    end
    object TQFornecQRFOR_RAZAO: TStringField
      FieldName = 'FOR_RAZAO'
      Origin = 'FOR0000.FOR_RAZAO'
      Size = 40
    end
    object TQFornecQRCCT_CODIGO: TStringField
      FieldName = 'CCT_CODIGO'
      Origin = 'FOR0000.CCT_CODIGO'
      Size = 3
    end
    object TQFornecQRFOR_ENDERE: TStringField
      FieldName = 'FOR_ENDERE'
      Origin = 'FOR0000.FOR_ENDERE'
      Size = 40
    end
    object TQFornecQRFOR_CIDADE: TStringField
      FieldName = 'FOR_CIDADE'
      Origin = 'FOR0000.FOR_CIDADE'
      Size = 30
    end
    object TQFornecQRFOR_UF: TStringField
      FieldName = 'FOR_UF'
      Origin = 'FOR0000.FOR_UF'
      Size = 2
    end
    object TQFornecQRFOR_CEP: TStringField
      FieldName = 'FOR_CEP'
      Origin = 'FOR0000.FOR_CEP'
      Size = 8
    end
    object TQFornecQRFOR_CONTATO: TStringField
      FieldName = 'FOR_CONTATO'
      Origin = 'FOR0000.FOR_CONTATO'
    end
    object TQFornecQRFOR_FONE: TStringField
      FieldName = 'FOR_FONE'
      Origin = 'FOR0000.FOR_FONE'
      Size = 11
    end
    object TQFornecQRFOR_FAX: TStringField
      FieldName = 'FOR_FAX'
      Origin = 'FOR0000.FOR_FAX'
      Size = 11
    end
    object TQFornecQRFOR_EMAIL: TStringField
      FieldName = 'FOR_EMAIL'
      Origin = 'FOR0000.FOR_EMAIL'
      Size = 35
    end
    object TQFornecQRFOR_FONCONT: TStringField
      FieldName = 'FOR_FONCONT'
      Origin = 'FOR0000.FOR_FONCONT'
      Size = 11
    end
    object TQFornecQRFOR_FAXCONT: TStringField
      FieldName = 'FOR_FAXCONT'
      Origin = 'FOR0000.FOR_FAXCONT'
      Size = 11
    end
    object TQFornecQRFOR_OBS: TStringField
      FieldName = 'FOR_OBS'
      Origin = 'FOR0000.FOR_OBS'
      Size = 200
    end
    object TQFornecQRFOR_CGC: TStringField
      FieldName = 'FOR_CGC'
      Origin = 'FOR0000.FOR_CGC'
      Size = 14
    end
    object TQFornecQRFOR_INSC: TStringField
      FieldName = 'FOR_INSC'
      Origin = 'FOR0000.FOR_INSC'
      Size = 14
    end
    object TQFornecQRFOR_HOME: TStringField
      FieldName = 'FOR_HOME'
      Origin = 'FOR0000.FOR_HOME'
      Size = 35
    end
    object TQFornecQRFOR_EMAILCONT: TStringField
      FieldName = 'FOR_EMAILCONT'
      Origin = 'FOR0000.FOR_EMAILCONT'
      Size = 35
    end
    object TQFornecQREMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      Origin = 'FOR0000.EMP_CODIGO'
      Size = 3
    end
  end
end
