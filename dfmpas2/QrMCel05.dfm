object RelCelRecibo: TRelCelRecibo
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
    150.000000000000000000
    2794.000000000000000000
    150.000000000000000000
    2159.000000000000000000
    150.000000000000000000
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
    Left = 57
    Top = 57
    Width = 722
    Height = 48
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
      127.000000000000000000
      1910.291666666667000000)
    BandType = rbPageHeader
    object LabelEmpresa: TQRLabel
      Left = 3
      Top = 3
      Width = 84
      Height = 19
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        50.270833333333330000
        7.937500000000000000
        7.937500000000000000
        222.250000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
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
    object QRLabelTitu1: TQRLabel
      Left = 3
      Top = 20
      Width = 283
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        7.937500000000000000
        52.916666666666660000
        748.770833333333400000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Relat'#243'rio da Situa'#231#227'o das Entregas de Produ'#231#227'o'
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
  end
  object QRBand2: TQRBand
    Left = 57
    Top = 105
    Width = 722
    Height = 23
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
      60.854166666666680000
      1910.291666666667000000)
    BandType = rbColumnHeader
  end
  object QRGroup1: TQRGroup
    Left = 57
    Top = 128
    Width = 722
    Height = 18
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    AlignToBottom = False
    Color = clWhite
    Enabled = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      47.625000000000000000
      1910.291666666667000000)
    Expression = 'TQMovRecibo.Cel0000.CEL_CODIGO'
    Master = Owner
    ReprintOnNewPage = False
  end
  object QRBand3: TQRBand
    Left = 57
    Top = 146
    Width = 722
    Height = 32
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
      84.666666666666670000
      1910.291666666667000000)
    BandType = rbDetail
    object QRDBText1: TQRDBText
      Left = 7
      Top = 2
      Width = 82
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        18.520833333333340000
        5.291666666666667000
        216.958333333333400000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataField = 'PRD_REFER'
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
    object QRDBText2: TQRDBText
      Left = 92
      Top = 2
      Width = 225
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        243.416666666666700000
        5.291666666666667000
        595.312500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      DataField = 'OSV_PRDDESCRI'
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
  object QRTextFilter1: TQRTextFilter
    Left = 80
    Top = 16
  end
  object TQMovRecibo: TQuery
    DatabaseName = 'RwDbAdm'
    SQL.Strings = (
      
        'SELECT Cel_mov03.PRD_REFER, Cel_mov03.OSV_QTDE, Cel_mov03.OSV_QT' +
        'DECONC, Cel_mov03.OSV_QTDEDEFE, Cel_mov03.OSV_VALORPECA, Cel_mov' +
        '03.OSV_VALORDEFE, Cel_mov03.CEM_DTENTROU, Cel_mov03.CEM_DTCONCLU' +
        'IU, Cel_mov03.OSV_CODIGO, Osv0001.OSV_CODIGO, Cel_mov03.CEL_CODI' +
        'GO, Osv0001.OSV_PRDDESCRI, Cel0000.CEL_CODIGO, Cel0000.CEL_NOME'
      'FROM CEL_MOV03 Cel_mov03, CEL0000 Cel0000, OSV0001 Osv0001'
      'WHERE  (Cel0000.CEL_CODIGO = Cel_mov03.CEL_CODIGO)  '
      '   AND  (Cel_mov03.OSV_CODIGO = Osv0001.OSV_CODIGO)  '
      'ORDER BY Cel_mov03.CEL_CODIGO')
    Left = 136
    Top = 16
    object TQMovReciboPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Origin = 'RWDBADM.CEL_MOV03.PRD_REFER'
      Size = 11
    end
    object TQMovReciboOSV_QTDE: TFloatField
      FieldName = 'OSV_QTDE'
      Origin = 'RWDBADM.CEL_MOV03.OSV_QTDE'
    end
    object TQMovReciboOSV_QTDECONC: TFloatField
      FieldName = 'OSV_QTDECONC'
      Origin = 'RWDBADM.CEL_MOV03.OSV_QTDECONC'
    end
    object TQMovReciboOSV_QTDEDEFE: TFloatField
      FieldName = 'OSV_QTDEDEFE'
      Origin = 'RWDBADM.CEL_MOV03.OSV_QTDEDEFE'
    end
    object TQMovReciboOSV_VALORPECA: TFloatField
      FieldName = 'OSV_VALORPECA'
      Origin = 'RWDBADM.CEL_MOV03.OSV_VALORPECA'
    end
    object TQMovReciboOSV_VALORDEFE: TFloatField
      FieldName = 'OSV_VALORDEFE'
      Origin = 'RWDBADM.CEL_MOV03.OSV_VALORDEFE'
    end
    object TQMovReciboCEM_DTENTROU: TDateTimeField
      FieldName = 'CEM_DTENTROU'
      Origin = 'RWDBADM.CEL_MOV03.CEM_DTENTROU'
    end
    object TQMovReciboCEM_DTCONCLUIU: TDateTimeField
      FieldName = 'CEM_DTCONCLUIU'
      Origin = 'RWDBADM.CEL_MOV03.CEM_DTCONCLUIU'
    end
    object TQMovReciboCel_mov03OSV_CODIGO: TStringField
      FieldName = 'Cel_mov03.OSV_CODIGO'
      Origin = 'RWDBADM.CEL_MOV03.OSV_CODIGO'
      Size = 6
    end
    object TQMovReciboOsv0001OSV_CODIGO: TStringField
      FieldName = 'Osv0001.OSV_CODIGO'
      Origin = 'RWDBADM.OSV0001.OSV_CODIGO'
      Size = 6
    end
    object TQMovReciboCel_mov03CEL_CODIGO: TStringField
      FieldName = 'Cel_mov03.CEL_CODIGO'
      Origin = 'RWDBADM.CEL_MOV03.CEL_CODIGO'
      Size = 3
    end
    object TQMovReciboOSV_PRDDESCRI: TStringField
      FieldName = 'OSV_PRDDESCRI'
      Origin = 'RWDBADM.OSV0001.OSV_PRDDESCRI'
      Size = 40
    end
    object TQMovReciboCel0000CEL_CODIGO: TStringField
      FieldName = 'Cel0000.CEL_CODIGO'
      Origin = 'RWDBADM.CEL0000.CEL_CODIGO'
      Size = 3
    end
    object TQMovReciboCEL_NOME: TStringField
      FieldName = 'CEL_NOME'
      Origin = 'RWDBADM.CEL0000.CEL_NOME'
      Size = 35
    end
  end
end
