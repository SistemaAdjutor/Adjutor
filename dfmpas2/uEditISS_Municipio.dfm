inherited frmEditISS_Municipio: TfrmEditISS_Municipio
  Caption = ''
  ClientHeight = 302
  ClientWidth = 476
  OnResize = FormResize
  ExplicitWidth = 492
  ExplicitHeight = 340
  PixelsPerInch = 96
  TextHeight = 13
  object Label6: TLabel [0]
    Left = 16
    Top = 46
    Width = 37
    Height = 13
    Caption = 'Cidade:'
  end
  object Label43: TLabel [1]
    Left = 358
    Top = 46
    Width = 17
    Height = 13
    Caption = 'UF:'
  end
  object SpeedButton5: TSpeedButton [2]
    Left = 407
    Top = 43
    Width = 22
    Height = 21
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      0400000000000001000000000000000000001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      33333333333FFFFFFFFF333333000000000033333377777777773333330FFFFF
      FFF03333337F333333373333330FFFFFFFF03333337F3FF3FFF73333330F00F0
      00F03333F37F773777373330330FFFFFFFF03337FF7F3F3FF3F73339030F0800
      F0F033377F7F737737373339900FFFFFFFF03FF7777F3FF3FFF70999990F00F0
      00007777777F7737777709999990FFF0FF0377777777FF37F3730999999908F0
      F033777777777337F73309999990FFF0033377777777FFF77333099999000000
      3333777777777777333333399033333333333337773333333333333903333333
      3333333773333333333333303333333333333337333333333333}
    NumGlyphs = 2
    ParentShowHint = False
    ShowHint = True
    OnClick = SpeedButton5Click
  end
  object Label15: TLabel [3]
    Left = 16
    Top = 16
    Width = 37
    Height = 13
    Caption = 'C'#243'digo:'
    FocusControl = cxDBTextEdit14
  end
  inherited pnUtil: TPanel
    Top = 270
    Width = 476
    ExplicitTop = 270
    ExplicitWidth = 476
    inherited btnOk: TSpeedButton
      Left = 176
      ExplicitLeft = 366
    end
    inherited btnCancelar: TSpeedButton
      Left = 325
      ExplicitLeft = 515
    end
  end
  object DbeCli_cidade: TDBEdit [5]
    Left = 55
    Top = 43
    Width = 294
    Height = 21
    TabStop = False
    CharCase = ecUpperCase
    Color = 14145495
    DataField = 'ISS_MUNICIPIO'
    DataSource = dsEditS
    ReadOnly = True
    TabOrder = 1
  end
  object DBECLIUF: TDBEdit [6]
    Left = 377
    Top = 43
    Width = 29
    Height = 21
    TabStop = False
    CharCase = ecUpperCase
    Color = clWhite
    DataField = 'ISS_UF'
    DataSource = dsEditS
    TabOrder = 2
  end
  object GroupBox2: TGroupBox [7]
    Left = 8
    Top = 70
    Width = 393
    Height = 161
    Caption = 'Al'#237'quota'
    TabOrder = 3
    object Label1: TLabel
      Left = 8
      Top = 21
      Width = 16
      Height = 13
      Caption = 'ISS'
      FocusControl = cxDBTextEdit1
    end
    object Label3: TLabel
      Left = 8
      Top = 64
      Width = 23
      Height = 13
      Caption = 'INSS'
      FocusControl = cxDBTextEdit3
    end
    object Label4: TLabel
      Left = 8
      Top = 108
      Width = 23
      Height = 13
      Caption = 'CSLL'
      FocusControl = cxDBTextEdit4
    end
    object Label5: TLabel
      Left = 227
      Top = 22
      Width = 11
      Height = 13
      Caption = 'IR'
      FocusControl = cxDBTextEdit5
    end
    object Label7: TLabel
      Left = 227
      Top = 65
      Width = 16
      Height = 13
      Caption = 'PIS'
      FocusControl = cxDBTextEdit6
    end
    object Label8: TLabel
      Left = 227
      Top = 109
      Width = 38
      Height = 13
      Caption = 'COFINS'
      FocusControl = cxDBTextEdit7
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 8
      Top = 38
      DataBinding.DataField = 'ISS_PGRC_ISS'
      DataBinding.DataSource = dsEditS
      TabOrder = 0
      Width = 121
    end
    object cxDBTextEdit3: TcxDBTextEdit
      Left = 8
      Top = 80
      DataBinding.DataField = 'ISS_PERCENT_INSS'
      DataBinding.DataSource = dsEditS
      TabOrder = 1
      Width = 121
    end
    object cxDBTextEdit4: TcxDBTextEdit
      Left = 8
      Top = 124
      DataBinding.DataField = 'ISS_PERCENT_CSLL'
      DataBinding.DataSource = dsEditS
      TabOrder = 2
      Width = 121
    end
    object cxDBTextEdit5: TcxDBTextEdit
      Left = 227
      Top = 39
      DataBinding.DataField = 'ISS_PERCENT_IR'
      DataBinding.DataSource = dsEditS
      TabOrder = 3
      Width = 121
    end
    object cxDBTextEdit6: TcxDBTextEdit
      Left = 227
      Top = 81
      DataBinding.DataField = 'ISS_PERCENT_PIS'
      DataBinding.DataSource = dsEditS
      TabOrder = 4
      Width = 121
    end
    object cxDBTextEdit7: TcxDBTextEdit
      Left = 227
      Top = 125
      DataBinding.DataField = 'ISS_PERCENT_COFINS'
      DataBinding.DataSource = dsEditS
      TabOrder = 5
      Width = 121
    end
  end
  object cxDBTextEdit14: TcxDBTextEdit [8]
    Left = 59
    Top = 13
    DataBinding.DataField = 'ISS_CODIGO'
    DataBinding.DataSource = dsEditS
    TabOrder = 4
    Width = 121
  end
  inherited coCalcula: TACBrCalculadora
    Left = 728
  end
  inherited ACBrEnterTab1: TACBrEnterTab
    Left = 688
  end
  inherited qAux: TSQLQuery
    Left = 442
    Top = 65533
  end
  inherited qEdit: TSQLQuery
    SQL.Strings = (
      'SELECT * FROM ISS0000 WHERE ISS_CODIGO=:ID')
    Left = 228
    Top = 65535
    object qEditISS_CODIGO: TStringField
      FieldName = 'ISS_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 4
    end
    object qEditISS_MUNICIPIO: TStringField
      DisplayWidth = 50
      FieldName = 'ISS_MUNICIPIO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object qEditISS_UF: TStringField
      FieldName = 'ISS_UF'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object qEditISS_PGRC_ISS: TFMTBCDField
      FieldName = 'ISS_PGRC_ISS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#0.00'
      Precision = 15
    end
    object qEditEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object qEditCID_CODIGO: TIntegerField
      FieldName = 'CID_CODIGO'
    end
    object qEditISS_PERCENT_INSS: TFMTBCDField
      FieldName = 'ISS_PERCENT_INSS'
      Precision = 18
      Size = 5
    end
    object qEditISS_PERCENT_CSLL: TFMTBCDField
      FieldName = 'ISS_PERCENT_CSLL'
      Precision = 18
      Size = 5
    end
    object qEditISS_PERCENT_IR: TFMTBCDField
      FieldName = 'ISS_PERCENT_IR'
      Precision = 18
      Size = 5
    end
    object qEditISS_PERCENT_PIS: TFMTBCDField
      FieldName = 'ISS_PERCENT_PIS'
      Precision = 18
      Size = 5
    end
    object qEditISS_PERCENT_COFINS: TFMTBCDField
      FieldName = 'ISS_PERCENT_COFINS'
      Precision = 18
      Size = 5
    end
  end
  inherited DspEdit: TDataSetProvider
    Left = 192
  end
  inherited CdsEdit: TClientDataSet
    Left = 255
    Top = 7
    object CdsEditISS_CODIGO: TStringField
      FieldName = 'ISS_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 4
    end
    object CdsEditISS_MUNICIPIO: TStringField
      DisplayLabel = 'Munic'#237'pio'
      DisplayWidth = 50
      FieldName = 'ISS_MUNICIPIO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object CdsEditISS_UF: TStringField
      DisplayLabel = 'UF'
      FieldName = 'ISS_UF'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object CdsEditISS_PGRC_ISS: TFMTBCDField
      DisplayLabel = 'ISS'
      FieldName = 'ISS_PGRC_ISS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '###,###,##0.000'
      Precision = 15
    end
    object CdsEditEMP_CODIGO: TStringField
      FieldName = 'EMP_CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 3
    end
    object CdsEditCID_CODIGO: TIntegerField
      FieldName = 'CID_CODIGO'
    end
    object CdsEditISS_PERCENT_INSS: TFMTBCDField
      DisplayLabel = 'INSS'
      FieldName = 'ISS_PERCENT_INSS'
      DisplayFormat = '###,###,##0.000'
      Precision = 18
      Size = 5
    end
    object CdsEditISS_PERCENT_CSLL: TFMTBCDField
      DisplayLabel = 'CSLL'
      FieldName = 'ISS_PERCENT_CSLL'
      DisplayFormat = '###,###,##0.000'
      Precision = 18
      Size = 5
    end
    object CdsEditISS_PERCENT_IR: TFMTBCDField
      DisplayLabel = 'IR'
      FieldName = 'ISS_PERCENT_IR'
      DisplayFormat = '###,###,##0.000'
      Precision = 18
      Size = 5
    end
    object CdsEditISS_PERCENT_PIS: TFMTBCDField
      DisplayLabel = 'PIS'
      FieldName = 'ISS_PERCENT_PIS'
      DisplayFormat = '###,###,##0.000'
      Precision = 18
      Size = 5
    end
    object CdsEditISS_PERCENT_COFINS: TFMTBCDField
      DisplayLabel = 'COFINS'
      FieldName = 'ISS_PERCENT_COFINS'
      DisplayFormat = '###,###,##0.000'
      Precision = 18
      Size = 5
    end
  end
  inherited dsEditS: TDataSource
    Left = 285
    Top = 7
  end
  inherited qAuditoria: TSQLQuery
    Left = 344
    Top = 239
  end
  inherited dspAuditoria: TDataSetProvider
    Left = 404
    Top = 239
  end
  inherited cdsAuditoria: TClientDataSet
    Left = 416
    Top = 183
  end
end
