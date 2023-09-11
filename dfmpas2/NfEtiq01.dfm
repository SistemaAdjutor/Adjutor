object RelEtiqNota1: TRelEtiqNota1
  Left = 0
  Top = 0
  Width = 794
  Height = 1123
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
  Page.Columns = 2
  Page.Orientation = poPortrait
  Page.PaperSize = A4
  Page.Values = (
    100.000000000000000000
    2970.000000000000000000
    100.000000000000000000
    2100.000000000000000000
    50.000000000000000000
    50.000000000000000000
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
    Left = 19
    Top = 38
    Width = 378
    Height = 226
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
      597.958333333333400000
      1000.125000000000000000)
    BandType = rbDetail
    object QRDBText1: TQRDBText
      Left = 55
      Top = 38
      Width = 64
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        145.520833333333300000
        100.541666666666700000
        169.333333333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = TQNotaEtiq
      DataField = 'NF_NOMECLI'
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
    object QRDBText2: TQRDBText
      Left = 55
      Top = 62
      Width = 55
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        145.520833333333300000
        164.041666666666700000
        145.520833333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = TQNotaEtiq
      DataField = 'NF_ENDCLI'
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
      Left = 55
      Top = 86
      Width = 51
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        145.520833333333300000
        227.541666666666700000
        134.937500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = TQNotaEtiq
      DataField = 'NF_CIDCLI'
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
      Left = 280
      Top = 81
      Width = 54
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        740.833333333333300000
        214.312500000000000000
        142.875000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = TQNotaEtiq
      DataField = 'NF_ESTCLI'
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
      Left = 73
      Top = 116
      Width = 74
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        193.145833333333300000
        306.916666666666700000
        195.791666666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = TQNotaEtiq
      DataField = 'NF_TRP_NOME'
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
      Left = 56
      Top = 169
      Width = 47
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        148.166666666666700000
        447.145833333333300000
        124.354166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = TQNotaEtiq
      DataField = 'NF_QTDE'
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
    object QRDBText7: TQRDBText
      Left = 271
      Top = 169
      Width = 68
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        717.020833333333300000
        447.145833333333300000
        179.916666666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = TQNotaEtiq
      DataField = 'NF_PESOBRU'
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
  object TQNotaEtiq: TQuery
    DatabaseName = 'RwDbAdm'
    SQL.Strings = (
      
        'SELECT NF_NU_NOTA, NF_NOMECLI, NF_ENDCLI, NF_CIDCLI, NF_ESTCLI, ' +
        'NF_TRP_NOME, NF_QTDE, NF_PESOBRU'
      'FROM NF0000 Nf0000')
    Left = 90
    Top = 10
    object TQNotaEtiqNF_NU_NOTA: TStringField
      FieldName = 'NF_NU_NOTA'
      Origin = 'NF0000.NF_NU_NOTA'
      Size = 6
    end
    object TQNotaEtiqNF_NOMECLI: TStringField
      FieldName = 'NF_NOMECLI'
      Origin = 'NF0000.NF_NOMECLI'
      Size = 45
    end
    object TQNotaEtiqNF_ENDCLI: TStringField
      FieldName = 'NF_ENDCLI'
      Origin = 'NF0000.NF_ENDCLI'
      Size = 45
    end
    object TQNotaEtiqNF_CIDCLI: TStringField
      FieldName = 'NF_CIDCLI'
      Origin = 'NF0000.NF_CIDCLI'
      Size = 30
    end
    object TQNotaEtiqNF_ESTCLI: TStringField
      FieldName = 'NF_ESTCLI'
      Origin = 'NF0000.NF_ESTCLI'
      Size = 2
    end
    object TQNotaEtiqNF_TRP_NOME: TStringField
      FieldName = 'NF_TRP_NOME'
      Origin = 'NF0000.NF_TRP_NOME'
      Size = 40
    end
    object TQNotaEtiqNF_QTDE: TFloatField
      FieldName = 'NF_QTDE'
      Origin = 'NF0000.NF_QTDE'
    end
    object TQNotaEtiqNF_PESOBRU: TFloatField
      FieldName = 'NF_PESOBRU'
      Origin = 'NF0000.NF_PESOBRU'
    end
  end
end
