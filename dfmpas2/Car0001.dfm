object FormGImpCaract: TFormGImpCaract
  Left = 145
  Top = 99
  Width = 525
  Height = 431
  Caption = 'FICHA DO PRODUTO - [Imprimir]'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 28
    Top = 30
    Width = 67
    Height = 13
    Caption = 'Referr'#234'ncia'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 123
    Top = 30
    Width = 58
    Height = 13
    Caption = 'Descri'#231#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 442
    Top = 30
    Width = 53
    Height = 13
    Caption = 'N'#186' da NF'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 10
    Top = 5
    Width = 362
    Height = 16
    Caption = 'Selecione '#224' Esqueda os Produtos para Impress'#227'o...'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object CrtGr_Produtos: TDBCtrlGrid
    Left = 0
    Top = 45
    Width = 517
    Height = 322
    ColCount = 1
    DataSource = DsPrdTemp
    PanelHeight = 23
    PanelWidth = 501
    TabOrder = 0
    RowCount = 14
    object CkFCR_IMPRIMIR: TDBCheckBox
      Left = 6
      Top = 4
      Width = 16
      Height = 17
      DataField = 'FCR_IMPRIMIR'
      DataSource = DsPrdTemp
      TabOrder = 0
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object DbPRD_REFER: TDBEdit
      Left = 25
      Top = 2
      Width = 95
      Height = 19
      Ctl3D = False
      DataField = 'PRD_REFER'
      DataSource = DsPrdTemp
      Enabled = False
      ParentCtl3D = False
      TabOrder = 1
    end
    object DbPRD_DESCRI: TDBEdit
      Left = 120
      Top = 2
      Width = 320
      Height = 19
      Ctl3D = False
      DataField = 'PRD_DESCRI'
      DataSource = DsPrdTemp
      Enabled = False
      ParentCtl3D = False
      TabOrder = 2
    end
    object DbFCR_NFNUMER: TDBEdit
      Left = 440
      Top = 2
      Width = 58
      Height = 19
      Ctl3D = False
      DataField = 'FCR_NFNUMER'
      DataSource = DsPrdTemp
      Enabled = False
      ParentCtl3D = False
      TabOrder = 3
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 371
    Width = 517
    Height = 33
    Align = alBottom
    BevelInner = bvLowered
    BevelOuter = bvLowered
    Color = clTeal
    TabOrder = 1
    object Bit_Relatorio: TBitBtn
      Left = 4
      Top = 4
      Width = 510
      Height = 25
      Cursor = crHandPoint
      Caption = '&Imprimir "FICHA DO PRODUTO" para os Produtos Selecionados'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = Bit_RelatorioClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
        8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
        8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
        8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
    end
  end
  object Documento: TRichEdit
    Left = 15
    Top = 75
    Width = 100
    Height = 100
    Lines.Strings = (
      'Documento')
    ScrollBars = ssBoth
    TabOrder = 2
    Visible = False
  end
  object TbPrdTemp: TTable
    AfterInsert = TbPrdTempAfterInsert
    DatabaseName = 'RwDbAdm'
    TableName = 'PRD_TEMP'
    Left = 340
    Top = 20
    object TbPrdTempPRD_REFER: TStringField
      FieldName = 'PRD_REFER'
      Size = 11
    end
    object TbPrdTempPRD_DESCRI: TStringField
      FieldName = 'PRD_DESCRI'
      Size = 40
    end
    object TbPrdTempFCR_IMPRIMIR: TBooleanField
      FieldName = 'FCR_IMPRIMIR'
    end
    object TbPrdTempFCR_NFNUMER: TStringField
      FieldName = 'FCR_NFNUMER'
      Size = 6
    end
  end
  object DsPrdTemp: TDataSource
    DataSet = TbPrdTemp
    Left = 295
    Top = 20
  end
end
